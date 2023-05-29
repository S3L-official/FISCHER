; ModuleID = '../examples/cassiers-tifs2020.inline-15.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 15, align 4
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
  %scevgep.11 = getelementptr i8, i8* %from, i64 11
  %11 = load i8, i8* %scevgep.11, align 1
  %call.11 = call zeroext i8 %f(i8 zeroext %11)
  %scevgep2.11 = getelementptr i8, i8* %to, i64 11
  store i8 %call.11, i8* %scevgep2.11, align 1
  %scevgep.12 = getelementptr i8, i8* %from, i64 12
  %12 = load i8, i8* %scevgep.12, align 1
  %call.12 = call zeroext i8 %f(i8 zeroext %12)
  %scevgep2.12 = getelementptr i8, i8* %to, i64 12
  store i8 %call.12, i8* %scevgep2.12, align 1
  %scevgep.13 = getelementptr i8, i8* %from, i64 13
  %13 = load i8, i8* %scevgep.13, align 1
  %call.13 = call zeroext i8 %f(i8 zeroext %13)
  %scevgep2.13 = getelementptr i8, i8* %to, i64 13
  store i8 %call.13, i8* %scevgep2.13, align 1
  %scevgep.14 = getelementptr i8, i8* %from, i64 14
  %14 = load i8, i8* %scevgep.14, align 1
  %call.14 = call zeroext i8 %f(i8 zeroext %14)
  %scevgep2.14 = getelementptr i8, i8* %to, i64 14
  store i8 %call.14, i8* %scevgep2.14, align 1
  %scevgep.15 = getelementptr i8, i8* %from, i64 15
  %15 = load i8, i8* %scevgep.15, align 1
  %call.15 = call zeroext i8 %f(i8 zeroext %15)
  %scevgep2.15 = getelementptr i8, i8* %to, i64 15
  store i8 %call.15, i8* %scevgep2.15, align 1
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
  %scevgep.11 = getelementptr i8, i8* %a, i64 11
  %11 = load i8, i8* %scevgep.11, align 1
  %call.11 = call zeroext i8 %f(i8 zeroext %11)
  %conv.11 = zext i8 %call.11 to i32
  %conv1.11 = zext i8 %conv2.10 to i32
  %xor.11 = xor i32 %conv1.11, %conv.11
  %conv2.11 = trunc i32 %xor.11 to i8
  %scevgep.12 = getelementptr i8, i8* %a, i64 12
  %12 = load i8, i8* %scevgep.12, align 1
  %call.12 = call zeroext i8 %f(i8 zeroext %12)
  %conv.12 = zext i8 %call.12 to i32
  %conv1.12 = zext i8 %conv2.11 to i32
  %xor.12 = xor i32 %conv1.12, %conv.12
  %conv2.12 = trunc i32 %xor.12 to i8
  %scevgep.13 = getelementptr i8, i8* %a, i64 13
  %13 = load i8, i8* %scevgep.13, align 1
  %call.13 = call zeroext i8 %f(i8 zeroext %13)
  %conv.13 = zext i8 %call.13 to i32
  %conv1.13 = zext i8 %conv2.12 to i32
  %xor.13 = xor i32 %conv1.13, %conv.13
  %conv2.13 = trunc i32 %xor.13 to i8
  %scevgep.14 = getelementptr i8, i8* %a, i64 14
  %14 = load i8, i8* %scevgep.14, align 1
  %call.14 = call zeroext i8 %f(i8 zeroext %14)
  %conv.14 = zext i8 %call.14 to i32
  %conv1.14 = zext i8 %conv2.13 to i32
  %xor.14 = xor i32 %conv1.14, %conv.14
  %conv2.14 = trunc i32 %xor.14 to i8
  %scevgep.15 = getelementptr i8, i8* %a, i64 15
  %15 = load i8, i8* %scevgep.15, align 1
  %call.15 = call zeroext i8 %f(i8 zeroext %15)
  %conv.15 = zext i8 %call.15 to i32
  %conv1.15 = zext i8 %conv2.14 to i32
  %xor.15 = xor i32 %conv1.15, %conv.15
  %conv2.15 = trunc i32 %xor.15 to i8
  ret i8 %conv2.15
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
  %scevgep.11 = getelementptr i8, i8* %a, i64 11
  %11 = load i8, i8* %scevgep.11, align 1
  %conv.i.11 = zext i8 %11 to i32
  %conv1.i.11 = zext i8 %conv2.i.10 to i32
  %xor.i.11 = xor i32 %conv1.i.11, %conv.i.11
  %conv2.i.11 = trunc i32 %xor.i.11 to i8
  %scevgep.12 = getelementptr i8, i8* %a, i64 12
  %12 = load i8, i8* %scevgep.12, align 1
  %conv.i.12 = zext i8 %12 to i32
  %conv1.i.12 = zext i8 %conv2.i.11 to i32
  %xor.i.12 = xor i32 %conv1.i.12, %conv.i.12
  %conv2.i.12 = trunc i32 %xor.i.12 to i8
  %scevgep.13 = getelementptr i8, i8* %a, i64 13
  %13 = load i8, i8* %scevgep.13, align 1
  %conv.i.13 = zext i8 %13 to i32
  %conv1.i.13 = zext i8 %conv2.i.12 to i32
  %xor.i.13 = xor i32 %conv1.i.13, %conv.i.13
  %conv2.i.13 = trunc i32 %xor.i.13 to i8
  %scevgep.14 = getelementptr i8, i8* %a, i64 14
  %14 = load i8, i8* %scevgep.14, align 1
  %conv.i.14 = zext i8 %14 to i32
  %conv1.i.14 = zext i8 %conv2.i.13 to i32
  %xor.i.14 = xor i32 %conv1.i.14, %conv.i.14
  %conv2.i.14 = trunc i32 %xor.i.14 to i8
  %scevgep.15 = getelementptr i8, i8* %a, i64 15
  %15 = load i8, i8* %scevgep.15, align 1
  %conv.i.15 = zext i8 %15 to i32
  %conv1.i.15 = zext i8 %conv2.i.14 to i32
  %xor.i.15 = xor i32 %conv1.i.15, %conv.i.15
  %conv2.i.15 = trunc i32 %xor.i.15 to i8
  ret i8 %conv2.i.15
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [16 x [16 x i8]], align 16
  %s = alloca [16 x [16 x i8]], align 16
  %p0 = alloca [16 x [16 x i8]], align 16
  %p1 = alloca [16 x [16 x i8]], align 16
  %z = alloca [16 x [16 x i8]], align 16
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
  %scevgep74.11 = getelementptr i8, i8* %a, i64 11
  %11 = load i8, i8* %scevgep74.11, align 1
  %conv.i.i.11 = zext i8 %11 to i32
  %conv1.i.i.11 = zext i8 %conv2.i.i.10 to i32
  %xor.i.i.11 = xor i32 %conv1.i.i.11, %conv.i.i.11
  %conv2.i.i.11 = trunc i32 %xor.i.i.11 to i8
  %scevgep74.12 = getelementptr i8, i8* %a, i64 12
  %12 = load i8, i8* %scevgep74.12, align 1
  %conv.i.i.12 = zext i8 %12 to i32
  %conv1.i.i.12 = zext i8 %conv2.i.i.11 to i32
  %xor.i.i.12 = xor i32 %conv1.i.i.12, %conv.i.i.12
  %conv2.i.i.12 = trunc i32 %xor.i.i.12 to i8
  %scevgep74.13 = getelementptr i8, i8* %a, i64 13
  %13 = load i8, i8* %scevgep74.13, align 1
  %conv.i.i.13 = zext i8 %13 to i32
  %conv1.i.i.13 = zext i8 %conv2.i.i.12 to i32
  %xor.i.i.13 = xor i32 %conv1.i.i.13, %conv.i.i.13
  %conv2.i.i.13 = trunc i32 %xor.i.i.13 to i8
  %scevgep74.14 = getelementptr i8, i8* %a, i64 14
  %14 = load i8, i8* %scevgep74.14, align 1
  %conv.i.i.14 = zext i8 %14 to i32
  %conv1.i.i.14 = zext i8 %conv2.i.i.13 to i32
  %xor.i.i.14 = xor i32 %conv1.i.i.14, %conv.i.i.14
  %conv2.i.i.14 = trunc i32 %xor.i.i.14 to i8
  %scevgep74.15 = getelementptr i8, i8* %a, i64 15
  %15 = load i8, i8* %scevgep74.15, align 1
  %conv.i.i.15 = zext i8 %15 to i32
  %conv1.i.i.15 = zext i8 %conv2.i.i.14 to i32
  %xor.i.i.15 = xor i32 %conv1.i.i.15, %conv.i.i.15
  %conv2.i.i.15 = trunc i32 %xor.i.i.15 to i8
  %conv3 = zext i8 %conv2.i.i.15 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %16 = load i8, i8* %b, align 1
  %scevgep70.1 = getelementptr i8, i8* %b, i64 1
  %17 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i155.1 = zext i8 %17 to i32
  %conv1.i.i156.1 = zext i8 %16 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep70.2 = getelementptr i8, i8* %b, i64 2
  %18 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i155.2 = zext i8 %18 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %scevgep70.3 = getelementptr i8, i8* %b, i64 3
  %19 = load i8, i8* %scevgep70.3, align 1
  %conv.i.i155.3 = zext i8 %19 to i32
  %conv1.i.i156.3 = zext i8 %conv2.i.i158.2 to i32
  %xor.i.i157.3 = xor i32 %conv1.i.i156.3, %conv.i.i155.3
  %conv2.i.i158.3 = trunc i32 %xor.i.i157.3 to i8
  %scevgep70.4 = getelementptr i8, i8* %b, i64 4
  %20 = load i8, i8* %scevgep70.4, align 1
  %conv.i.i155.4 = zext i8 %20 to i32
  %conv1.i.i156.4 = zext i8 %conv2.i.i158.3 to i32
  %xor.i.i157.4 = xor i32 %conv1.i.i156.4, %conv.i.i155.4
  %conv2.i.i158.4 = trunc i32 %xor.i.i157.4 to i8
  %scevgep70.5 = getelementptr i8, i8* %b, i64 5
  %21 = load i8, i8* %scevgep70.5, align 1
  %conv.i.i155.5 = zext i8 %21 to i32
  %conv1.i.i156.5 = zext i8 %conv2.i.i158.4 to i32
  %xor.i.i157.5 = xor i32 %conv1.i.i156.5, %conv.i.i155.5
  %conv2.i.i158.5 = trunc i32 %xor.i.i157.5 to i8
  %scevgep70.6 = getelementptr i8, i8* %b, i64 6
  %22 = load i8, i8* %scevgep70.6, align 1
  %conv.i.i155.6 = zext i8 %22 to i32
  %conv1.i.i156.6 = zext i8 %conv2.i.i158.5 to i32
  %xor.i.i157.6 = xor i32 %conv1.i.i156.6, %conv.i.i155.6
  %conv2.i.i158.6 = trunc i32 %xor.i.i157.6 to i8
  %scevgep70.7 = getelementptr i8, i8* %b, i64 7
  %23 = load i8, i8* %scevgep70.7, align 1
  %conv.i.i155.7 = zext i8 %23 to i32
  %conv1.i.i156.7 = zext i8 %conv2.i.i158.6 to i32
  %xor.i.i157.7 = xor i32 %conv1.i.i156.7, %conv.i.i155.7
  %conv2.i.i158.7 = trunc i32 %xor.i.i157.7 to i8
  %scevgep70.8 = getelementptr i8, i8* %b, i64 8
  %24 = load i8, i8* %scevgep70.8, align 1
  %conv.i.i155.8 = zext i8 %24 to i32
  %conv1.i.i156.8 = zext i8 %conv2.i.i158.7 to i32
  %xor.i.i157.8 = xor i32 %conv1.i.i156.8, %conv.i.i155.8
  %conv2.i.i158.8 = trunc i32 %xor.i.i157.8 to i8
  %scevgep70.9 = getelementptr i8, i8* %b, i64 9
  %25 = load i8, i8* %scevgep70.9, align 1
  %conv.i.i155.9 = zext i8 %25 to i32
  %conv1.i.i156.9 = zext i8 %conv2.i.i158.8 to i32
  %xor.i.i157.9 = xor i32 %conv1.i.i156.9, %conv.i.i155.9
  %conv2.i.i158.9 = trunc i32 %xor.i.i157.9 to i8
  %scevgep70.10 = getelementptr i8, i8* %b, i64 10
  %26 = load i8, i8* %scevgep70.10, align 1
  %conv.i.i155.10 = zext i8 %26 to i32
  %conv1.i.i156.10 = zext i8 %conv2.i.i158.9 to i32
  %xor.i.i157.10 = xor i32 %conv1.i.i156.10, %conv.i.i155.10
  %conv2.i.i158.10 = trunc i32 %xor.i.i157.10 to i8
  %scevgep70.11 = getelementptr i8, i8* %b, i64 11
  %27 = load i8, i8* %scevgep70.11, align 1
  %conv.i.i155.11 = zext i8 %27 to i32
  %conv1.i.i156.11 = zext i8 %conv2.i.i158.10 to i32
  %xor.i.i157.11 = xor i32 %conv1.i.i156.11, %conv.i.i155.11
  %conv2.i.i158.11 = trunc i32 %xor.i.i157.11 to i8
  %scevgep70.12 = getelementptr i8, i8* %b, i64 12
  %28 = load i8, i8* %scevgep70.12, align 1
  %conv.i.i155.12 = zext i8 %28 to i32
  %conv1.i.i156.12 = zext i8 %conv2.i.i158.11 to i32
  %xor.i.i157.12 = xor i32 %conv1.i.i156.12, %conv.i.i155.12
  %conv2.i.i158.12 = trunc i32 %xor.i.i157.12 to i8
  %scevgep70.13 = getelementptr i8, i8* %b, i64 13
  %29 = load i8, i8* %scevgep70.13, align 1
  %conv.i.i155.13 = zext i8 %29 to i32
  %conv1.i.i156.13 = zext i8 %conv2.i.i158.12 to i32
  %xor.i.i157.13 = xor i32 %conv1.i.i156.13, %conv.i.i155.13
  %conv2.i.i158.13 = trunc i32 %xor.i.i157.13 to i8
  %scevgep70.14 = getelementptr i8, i8* %b, i64 14
  %30 = load i8, i8* %scevgep70.14, align 1
  %conv.i.i155.14 = zext i8 %30 to i32
  %conv1.i.i156.14 = zext i8 %conv2.i.i158.13 to i32
  %xor.i.i157.14 = xor i32 %conv1.i.i156.14, %conv.i.i155.14
  %conv2.i.i158.14 = trunc i32 %xor.i.i157.14 to i8
  %scevgep70.15 = getelementptr i8, i8* %b, i64 15
  %31 = load i8, i8* %scevgep70.15, align 1
  %conv.i.i155.15 = zext i8 %31 to i32
  %conv1.i.i156.15 = zext i8 %conv2.i.i158.14 to i32
  %xor.i.i157.15 = xor i32 %conv1.i.i156.15, %conv.i.i155.15
  %conv2.i.i158.15 = trunc i32 %xor.i.i157.15 to i8
  %conv7 = zext i8 %conv2.i.i158.15 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep54 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep5455 = bitcast i8* %scevgep54 to [16 x [16 x i8]]*
  %scevgep61 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [16 x [16 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep54, align 1
  %32 = load i8, i8* %scevgep54, align 1
  store i8 %32, i8* %scevgep61, align 1
  %scevgep59 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %33 = bitcast i8* %scevgep59 to [16 x [16 x i8]]*
  %scevgep66 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep6162, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep66 to [16 x [16 x i8]]*
  %call16.1631 = call zeroext i8 (...) @rand()
  store i8 %call16.1631, i8* %scevgep59, align 1
  %35 = load i8, i8* %scevgep59, align 1
  store i8 %35, i8* %scevgep66, align 1
  %scevgep59.1632 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 1
  %36 = bitcast i8* %scevgep59.1632 to [16 x [16 x i8]]*
  %scevgep66.1633 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 1, i64 0
  %37 = bitcast i8* %scevgep66.1633 to [16 x [16 x i8]]*
  %call16.2635 = call zeroext i8 (...) @rand()
  store i8 %call16.2635, i8* %scevgep59.1632, align 1
  %38 = load i8, i8* %scevgep59.1632, align 1
  store i8 %38, i8* %scevgep66.1633, align 1
  %scevgep59.2636 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 1
  %39 = bitcast i8* %scevgep59.2636 to [16 x [16 x i8]]*
  %scevgep66.2637 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 1, i64 0
  %40 = bitcast i8* %scevgep66.2637 to [16 x [16 x i8]]*
  %call16.3639 = call zeroext i8 (...) @rand()
  store i8 %call16.3639, i8* %scevgep59.2636, align 1
  %41 = load i8, i8* %scevgep59.2636, align 1
  store i8 %41, i8* %scevgep66.2637, align 1
  %scevgep59.3640 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 1
  %42 = bitcast i8* %scevgep59.3640 to [16 x [16 x i8]]*
  %scevgep66.3641 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep66.3641 to [16 x [16 x i8]]*
  %call16.4643 = call zeroext i8 (...) @rand()
  store i8 %call16.4643, i8* %scevgep59.3640, align 1
  %44 = load i8, i8* %scevgep59.3640, align 1
  store i8 %44, i8* %scevgep66.3641, align 1
  %scevgep59.4644 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 1
  %45 = bitcast i8* %scevgep59.4644 to [16 x [16 x i8]]*
  %scevgep66.4645 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep66.4645 to [16 x [16 x i8]]*
  %call16.5647 = call zeroext i8 (...) @rand()
  store i8 %call16.5647, i8* %scevgep59.4644, align 1
  %47 = load i8, i8* %scevgep59.4644, align 1
  store i8 %47, i8* %scevgep66.4645, align 1
  %scevgep59.5648 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 1
  %48 = bitcast i8* %scevgep59.5648 to [16 x [16 x i8]]*
  %scevgep66.5649 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep66.5649 to [16 x [16 x i8]]*
  %call16.6651 = call zeroext i8 (...) @rand()
  store i8 %call16.6651, i8* %scevgep59.5648, align 1
  %50 = load i8, i8* %scevgep59.5648, align 1
  store i8 %50, i8* %scevgep66.5649, align 1
  %scevgep59.6652 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %48, i64 0, i64 0, i64 1
  %51 = bitcast i8* %scevgep59.6652 to [16 x [16 x i8]]*
  %scevgep66.6653 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %49, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep66.6653 to [16 x [16 x i8]]*
  %call16.7655 = call zeroext i8 (...) @rand()
  store i8 %call16.7655, i8* %scevgep59.6652, align 1
  %53 = load i8, i8* %scevgep59.6652, align 1
  store i8 %53, i8* %scevgep66.6653, align 1
  %scevgep59.7656 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %51, i64 0, i64 0, i64 1
  %54 = bitcast i8* %scevgep59.7656 to [16 x [16 x i8]]*
  %scevgep66.7657 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %52, i64 0, i64 1, i64 0
  %55 = bitcast i8* %scevgep66.7657 to [16 x [16 x i8]]*
  %call16.8659 = call zeroext i8 (...) @rand()
  store i8 %call16.8659, i8* %scevgep59.7656, align 1
  %56 = load i8, i8* %scevgep59.7656, align 1
  store i8 %56, i8* %scevgep66.7657, align 1
  %scevgep59.8660 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %54, i64 0, i64 0, i64 1
  %57 = bitcast i8* %scevgep59.8660 to [16 x [16 x i8]]*
  %scevgep66.8661 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %55, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep66.8661 to [16 x [16 x i8]]*
  %call16.9663 = call zeroext i8 (...) @rand()
  store i8 %call16.9663, i8* %scevgep59.8660, align 1
  %59 = load i8, i8* %scevgep59.8660, align 1
  store i8 %59, i8* %scevgep66.8661, align 1
  %scevgep59.9664 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %57, i64 0, i64 0, i64 1
  %60 = bitcast i8* %scevgep59.9664 to [16 x [16 x i8]]*
  %scevgep66.9665 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %58, i64 0, i64 1, i64 0
  %61 = bitcast i8* %scevgep66.9665 to [16 x [16 x i8]]*
  %call16.10667 = call zeroext i8 (...) @rand()
  store i8 %call16.10667, i8* %scevgep59.9664, align 1
  %62 = load i8, i8* %scevgep59.9664, align 1
  store i8 %62, i8* %scevgep66.9665, align 1
  %scevgep59.10668 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %60, i64 0, i64 0, i64 1
  %63 = bitcast i8* %scevgep59.10668 to [16 x [16 x i8]]*
  %scevgep66.10669 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %61, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep66.10669 to [16 x [16 x i8]]*
  %call16.11671 = call zeroext i8 (...) @rand()
  store i8 %call16.11671, i8* %scevgep59.10668, align 1
  %65 = load i8, i8* %scevgep59.10668, align 1
  store i8 %65, i8* %scevgep66.10669, align 1
  %scevgep59.11672 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %63, i64 0, i64 0, i64 1
  %66 = bitcast i8* %scevgep59.11672 to [16 x [16 x i8]]*
  %scevgep66.11673 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep66.11673 to [16 x [16 x i8]]*
  %call16.12675 = call zeroext i8 (...) @rand()
  store i8 %call16.12675, i8* %scevgep59.11672, align 1
  %68 = load i8, i8* %scevgep59.11672, align 1
  store i8 %68, i8* %scevgep66.11673, align 1
  %scevgep59.12676 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %66, i64 0, i64 0, i64 1
  %69 = bitcast i8* %scevgep59.12676 to [16 x [16 x i8]]*
  %scevgep66.12677 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %67, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep66.12677 to [16 x [16 x i8]]*
  %call16.13679 = call zeroext i8 (...) @rand()
  store i8 %call16.13679, i8* %scevgep59.12676, align 1
  %71 = load i8, i8* %scevgep59.12676, align 1
  store i8 %71, i8* %scevgep66.12677, align 1
  %scevgep59.13680 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %69, i64 0, i64 0, i64 1
  %scevgep66.13681 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %70, i64 0, i64 1, i64 0
  %call16.14683 = call zeroext i8 (...) @rand()
  store i8 %call16.14683, i8* %scevgep59.13680, align 1
  %72 = load i8, i8* %scevgep59.13680, align 1
  store i8 %72, i8* %scevgep66.13681, align 1
  %scevgep57 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep5455, i64 0, i64 1, i64 1
  %73 = bitcast i8* %scevgep57 to [16 x [16 x i8]]*
  %scevgep64 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep6162, i64 0, i64 1, i64 1
  %74 = bitcast i8* %scevgep64 to [16 x [16 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep57, align 1
  %75 = load i8, i8* %scevgep57, align 1
  store i8 %75, i8* %scevgep64, align 1
  %scevgep59.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %73, i64 0, i64 0, i64 1
  %76 = bitcast i8* %scevgep59.1 to [16 x [16 x i8]]*
  %scevgep66.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %74, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep66.1 to [16 x [16 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep59.1, align 1
  %78 = load i8, i8* %scevgep59.1, align 1
  store i8 %78, i8* %scevgep66.1, align 1
  %scevgep59.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %76, i64 0, i64 0, i64 1
  %79 = bitcast i8* %scevgep59.1.1 to [16 x [16 x i8]]*
  %scevgep66.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %77, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep66.1.1 to [16 x [16 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep59.1.1, align 1
  %81 = load i8, i8* %scevgep59.1.1, align 1
  store i8 %81, i8* %scevgep66.1.1, align 1
  %scevgep59.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %79, i64 0, i64 0, i64 1
  %82 = bitcast i8* %scevgep59.1.2 to [16 x [16 x i8]]*
  %scevgep66.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %80, i64 0, i64 1, i64 0
  %83 = bitcast i8* %scevgep66.1.2 to [16 x [16 x i8]]*
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep59.1.2, align 1
  %84 = load i8, i8* %scevgep59.1.2, align 1
  store i8 %84, i8* %scevgep66.1.2, align 1
  %scevgep59.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %82, i64 0, i64 0, i64 1
  %85 = bitcast i8* %scevgep59.1.3 to [16 x [16 x i8]]*
  %scevgep66.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %83, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep66.1.3 to [16 x [16 x i8]]*
  %call16.1.4 = call zeroext i8 (...) @rand()
  store i8 %call16.1.4, i8* %scevgep59.1.3, align 1
  %87 = load i8, i8* %scevgep59.1.3, align 1
  store i8 %87, i8* %scevgep66.1.3, align 1
  %scevgep59.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %85, i64 0, i64 0, i64 1
  %88 = bitcast i8* %scevgep59.1.4 to [16 x [16 x i8]]*
  %scevgep66.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %86, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep66.1.4 to [16 x [16 x i8]]*
  %call16.1.5 = call zeroext i8 (...) @rand()
  store i8 %call16.1.5, i8* %scevgep59.1.4, align 1
  %90 = load i8, i8* %scevgep59.1.4, align 1
  store i8 %90, i8* %scevgep66.1.4, align 1
  %scevgep59.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %88, i64 0, i64 0, i64 1
  %91 = bitcast i8* %scevgep59.1.5 to [16 x [16 x i8]]*
  %scevgep66.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %89, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep66.1.5 to [16 x [16 x i8]]*
  %call16.1.6 = call zeroext i8 (...) @rand()
  store i8 %call16.1.6, i8* %scevgep59.1.5, align 1
  %93 = load i8, i8* %scevgep59.1.5, align 1
  store i8 %93, i8* %scevgep66.1.5, align 1
  %scevgep59.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %91, i64 0, i64 0, i64 1
  %94 = bitcast i8* %scevgep59.1.6 to [16 x [16 x i8]]*
  %scevgep66.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %92, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep66.1.6 to [16 x [16 x i8]]*
  %call16.1.7 = call zeroext i8 (...) @rand()
  store i8 %call16.1.7, i8* %scevgep59.1.6, align 1
  %96 = load i8, i8* %scevgep59.1.6, align 1
  store i8 %96, i8* %scevgep66.1.6, align 1
  %scevgep59.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %94, i64 0, i64 0, i64 1
  %97 = bitcast i8* %scevgep59.1.7 to [16 x [16 x i8]]*
  %scevgep66.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %95, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep66.1.7 to [16 x [16 x i8]]*
  %call16.1.8 = call zeroext i8 (...) @rand()
  store i8 %call16.1.8, i8* %scevgep59.1.7, align 1
  %99 = load i8, i8* %scevgep59.1.7, align 1
  store i8 %99, i8* %scevgep66.1.7, align 1
  %scevgep59.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 1
  %100 = bitcast i8* %scevgep59.1.8 to [16 x [16 x i8]]*
  %scevgep66.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %98, i64 0, i64 1, i64 0
  %101 = bitcast i8* %scevgep66.1.8 to [16 x [16 x i8]]*
  %call16.1.9 = call zeroext i8 (...) @rand()
  store i8 %call16.1.9, i8* %scevgep59.1.8, align 1
  %102 = load i8, i8* %scevgep59.1.8, align 1
  store i8 %102, i8* %scevgep66.1.8, align 1
  %scevgep59.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %100, i64 0, i64 0, i64 1
  %103 = bitcast i8* %scevgep59.1.9 to [16 x [16 x i8]]*
  %scevgep66.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %101, i64 0, i64 1, i64 0
  %104 = bitcast i8* %scevgep66.1.9 to [16 x [16 x i8]]*
  %call16.1.10 = call zeroext i8 (...) @rand()
  store i8 %call16.1.10, i8* %scevgep59.1.9, align 1
  %105 = load i8, i8* %scevgep59.1.9, align 1
  store i8 %105, i8* %scevgep66.1.9, align 1
  %scevgep59.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %103, i64 0, i64 0, i64 1
  %106 = bitcast i8* %scevgep59.1.10 to [16 x [16 x i8]]*
  %scevgep66.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %104, i64 0, i64 1, i64 0
  %107 = bitcast i8* %scevgep66.1.10 to [16 x [16 x i8]]*
  %call16.1.11 = call zeroext i8 (...) @rand()
  store i8 %call16.1.11, i8* %scevgep59.1.10, align 1
  %108 = load i8, i8* %scevgep59.1.10, align 1
  store i8 %108, i8* %scevgep66.1.10, align 1
  %scevgep59.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %106, i64 0, i64 0, i64 1
  %109 = bitcast i8* %scevgep59.1.11 to [16 x [16 x i8]]*
  %scevgep66.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %107, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep66.1.11 to [16 x [16 x i8]]*
  %call16.1.12 = call zeroext i8 (...) @rand()
  store i8 %call16.1.12, i8* %scevgep59.1.11, align 1
  %111 = load i8, i8* %scevgep59.1.11, align 1
  store i8 %111, i8* %scevgep66.1.11, align 1
  %scevgep59.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %109, i64 0, i64 0, i64 1
  %scevgep66.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %110, i64 0, i64 1, i64 0
  %call16.1.13 = call zeroext i8 (...) @rand()
  store i8 %call16.1.13, i8* %scevgep59.1.12, align 1
  %112 = load i8, i8* %scevgep59.1.12, align 1
  store i8 %112, i8* %scevgep66.1.12, align 1
  %scevgep57.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %73, i64 0, i64 1, i64 1
  %113 = bitcast i8* %scevgep57.1 to [16 x [16 x i8]]*
  %scevgep64.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %74, i64 0, i64 1, i64 1
  %114 = bitcast i8* %scevgep64.1 to [16 x [16 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep57.1, align 1
  %115 = load i8, i8* %scevgep57.1, align 1
  store i8 %115, i8* %scevgep64.1, align 1
  %scevgep59.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %113, i64 0, i64 0, i64 1
  %116 = bitcast i8* %scevgep59.2 to [16 x [16 x i8]]*
  %scevgep66.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %114, i64 0, i64 1, i64 0
  %117 = bitcast i8* %scevgep66.2 to [16 x [16 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep59.2, align 1
  %118 = load i8, i8* %scevgep59.2, align 1
  store i8 %118, i8* %scevgep66.2, align 1
  %scevgep59.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %116, i64 0, i64 0, i64 1
  %119 = bitcast i8* %scevgep59.2.1 to [16 x [16 x i8]]*
  %scevgep66.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %117, i64 0, i64 1, i64 0
  %120 = bitcast i8* %scevgep66.2.1 to [16 x [16 x i8]]*
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep59.2.1, align 1
  %121 = load i8, i8* %scevgep59.2.1, align 1
  store i8 %121, i8* %scevgep66.2.1, align 1
  %scevgep59.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %119, i64 0, i64 0, i64 1
  %122 = bitcast i8* %scevgep59.2.2 to [16 x [16 x i8]]*
  %scevgep66.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %120, i64 0, i64 1, i64 0
  %123 = bitcast i8* %scevgep66.2.2 to [16 x [16 x i8]]*
  %call16.2.3 = call zeroext i8 (...) @rand()
  store i8 %call16.2.3, i8* %scevgep59.2.2, align 1
  %124 = load i8, i8* %scevgep59.2.2, align 1
  store i8 %124, i8* %scevgep66.2.2, align 1
  %scevgep59.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %122, i64 0, i64 0, i64 1
  %125 = bitcast i8* %scevgep59.2.3 to [16 x [16 x i8]]*
  %scevgep66.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %123, i64 0, i64 1, i64 0
  %126 = bitcast i8* %scevgep66.2.3 to [16 x [16 x i8]]*
  %call16.2.4 = call zeroext i8 (...) @rand()
  store i8 %call16.2.4, i8* %scevgep59.2.3, align 1
  %127 = load i8, i8* %scevgep59.2.3, align 1
  store i8 %127, i8* %scevgep66.2.3, align 1
  %scevgep59.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %125, i64 0, i64 0, i64 1
  %128 = bitcast i8* %scevgep59.2.4 to [16 x [16 x i8]]*
  %scevgep66.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %126, i64 0, i64 1, i64 0
  %129 = bitcast i8* %scevgep66.2.4 to [16 x [16 x i8]]*
  %call16.2.5 = call zeroext i8 (...) @rand()
  store i8 %call16.2.5, i8* %scevgep59.2.4, align 1
  %130 = load i8, i8* %scevgep59.2.4, align 1
  store i8 %130, i8* %scevgep66.2.4, align 1
  %scevgep59.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %128, i64 0, i64 0, i64 1
  %131 = bitcast i8* %scevgep59.2.5 to [16 x [16 x i8]]*
  %scevgep66.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %129, i64 0, i64 1, i64 0
  %132 = bitcast i8* %scevgep66.2.5 to [16 x [16 x i8]]*
  %call16.2.6 = call zeroext i8 (...) @rand()
  store i8 %call16.2.6, i8* %scevgep59.2.5, align 1
  %133 = load i8, i8* %scevgep59.2.5, align 1
  store i8 %133, i8* %scevgep66.2.5, align 1
  %scevgep59.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %131, i64 0, i64 0, i64 1
  %134 = bitcast i8* %scevgep59.2.6 to [16 x [16 x i8]]*
  %scevgep66.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %132, i64 0, i64 1, i64 0
  %135 = bitcast i8* %scevgep66.2.6 to [16 x [16 x i8]]*
  %call16.2.7 = call zeroext i8 (...) @rand()
  store i8 %call16.2.7, i8* %scevgep59.2.6, align 1
  %136 = load i8, i8* %scevgep59.2.6, align 1
  store i8 %136, i8* %scevgep66.2.6, align 1
  %scevgep59.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %134, i64 0, i64 0, i64 1
  %137 = bitcast i8* %scevgep59.2.7 to [16 x [16 x i8]]*
  %scevgep66.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %135, i64 0, i64 1, i64 0
  %138 = bitcast i8* %scevgep66.2.7 to [16 x [16 x i8]]*
  %call16.2.8 = call zeroext i8 (...) @rand()
  store i8 %call16.2.8, i8* %scevgep59.2.7, align 1
  %139 = load i8, i8* %scevgep59.2.7, align 1
  store i8 %139, i8* %scevgep66.2.7, align 1
  %scevgep59.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %137, i64 0, i64 0, i64 1
  %140 = bitcast i8* %scevgep59.2.8 to [16 x [16 x i8]]*
  %scevgep66.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %138, i64 0, i64 1, i64 0
  %141 = bitcast i8* %scevgep66.2.8 to [16 x [16 x i8]]*
  %call16.2.9 = call zeroext i8 (...) @rand()
  store i8 %call16.2.9, i8* %scevgep59.2.8, align 1
  %142 = load i8, i8* %scevgep59.2.8, align 1
  store i8 %142, i8* %scevgep66.2.8, align 1
  %scevgep59.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %140, i64 0, i64 0, i64 1
  %143 = bitcast i8* %scevgep59.2.9 to [16 x [16 x i8]]*
  %scevgep66.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %141, i64 0, i64 1, i64 0
  %144 = bitcast i8* %scevgep66.2.9 to [16 x [16 x i8]]*
  %call16.2.10 = call zeroext i8 (...) @rand()
  store i8 %call16.2.10, i8* %scevgep59.2.9, align 1
  %145 = load i8, i8* %scevgep59.2.9, align 1
  store i8 %145, i8* %scevgep66.2.9, align 1
  %scevgep59.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %143, i64 0, i64 0, i64 1
  %146 = bitcast i8* %scevgep59.2.10 to [16 x [16 x i8]]*
  %scevgep66.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %144, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep66.2.10 to [16 x [16 x i8]]*
  %call16.2.11 = call zeroext i8 (...) @rand()
  store i8 %call16.2.11, i8* %scevgep59.2.10, align 1
  %148 = load i8, i8* %scevgep59.2.10, align 1
  store i8 %148, i8* %scevgep66.2.10, align 1
  %scevgep59.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %146, i64 0, i64 0, i64 1
  %scevgep66.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %147, i64 0, i64 1, i64 0
  %call16.2.12 = call zeroext i8 (...) @rand()
  store i8 %call16.2.12, i8* %scevgep59.2.11, align 1
  %149 = load i8, i8* %scevgep59.2.11, align 1
  store i8 %149, i8* %scevgep66.2.11, align 1
  %scevgep57.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %113, i64 0, i64 1, i64 1
  %150 = bitcast i8* %scevgep57.2 to [16 x [16 x i8]]*
  %scevgep64.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %114, i64 0, i64 1, i64 1
  %151 = bitcast i8* %scevgep64.2 to [16 x [16 x i8]]*
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep57.2, align 1
  %152 = load i8, i8* %scevgep57.2, align 1
  store i8 %152, i8* %scevgep64.2, align 1
  %scevgep59.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %150, i64 0, i64 0, i64 1
  %153 = bitcast i8* %scevgep59.3 to [16 x [16 x i8]]*
  %scevgep66.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %151, i64 0, i64 1, i64 0
  %154 = bitcast i8* %scevgep66.3 to [16 x [16 x i8]]*
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep59.3, align 1
  %155 = load i8, i8* %scevgep59.3, align 1
  store i8 %155, i8* %scevgep66.3, align 1
  %scevgep59.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %153, i64 0, i64 0, i64 1
  %156 = bitcast i8* %scevgep59.3.1 to [16 x [16 x i8]]*
  %scevgep66.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %154, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep66.3.1 to [16 x [16 x i8]]*
  %call16.3.2 = call zeroext i8 (...) @rand()
  store i8 %call16.3.2, i8* %scevgep59.3.1, align 1
  %158 = load i8, i8* %scevgep59.3.1, align 1
  store i8 %158, i8* %scevgep66.3.1, align 1
  %scevgep59.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %156, i64 0, i64 0, i64 1
  %159 = bitcast i8* %scevgep59.3.2 to [16 x [16 x i8]]*
  %scevgep66.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %157, i64 0, i64 1, i64 0
  %160 = bitcast i8* %scevgep66.3.2 to [16 x [16 x i8]]*
  %call16.3.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3.3, i8* %scevgep59.3.2, align 1
  %161 = load i8, i8* %scevgep59.3.2, align 1
  store i8 %161, i8* %scevgep66.3.2, align 1
  %scevgep59.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %159, i64 0, i64 0, i64 1
  %162 = bitcast i8* %scevgep59.3.3 to [16 x [16 x i8]]*
  %scevgep66.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %160, i64 0, i64 1, i64 0
  %163 = bitcast i8* %scevgep66.3.3 to [16 x [16 x i8]]*
  %call16.3.4 = call zeroext i8 (...) @rand()
  store i8 %call16.3.4, i8* %scevgep59.3.3, align 1
  %164 = load i8, i8* %scevgep59.3.3, align 1
  store i8 %164, i8* %scevgep66.3.3, align 1
  %scevgep59.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %162, i64 0, i64 0, i64 1
  %165 = bitcast i8* %scevgep59.3.4 to [16 x [16 x i8]]*
  %scevgep66.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 1, i64 0
  %166 = bitcast i8* %scevgep66.3.4 to [16 x [16 x i8]]*
  %call16.3.5 = call zeroext i8 (...) @rand()
  store i8 %call16.3.5, i8* %scevgep59.3.4, align 1
  %167 = load i8, i8* %scevgep59.3.4, align 1
  store i8 %167, i8* %scevgep66.3.4, align 1
  %scevgep59.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %165, i64 0, i64 0, i64 1
  %168 = bitcast i8* %scevgep59.3.5 to [16 x [16 x i8]]*
  %scevgep66.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %166, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep66.3.5 to [16 x [16 x i8]]*
  %call16.3.6 = call zeroext i8 (...) @rand()
  store i8 %call16.3.6, i8* %scevgep59.3.5, align 1
  %170 = load i8, i8* %scevgep59.3.5, align 1
  store i8 %170, i8* %scevgep66.3.5, align 1
  %scevgep59.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %168, i64 0, i64 0, i64 1
  %171 = bitcast i8* %scevgep59.3.6 to [16 x [16 x i8]]*
  %scevgep66.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %169, i64 0, i64 1, i64 0
  %172 = bitcast i8* %scevgep66.3.6 to [16 x [16 x i8]]*
  %call16.3.7 = call zeroext i8 (...) @rand()
  store i8 %call16.3.7, i8* %scevgep59.3.6, align 1
  %173 = load i8, i8* %scevgep59.3.6, align 1
  store i8 %173, i8* %scevgep66.3.6, align 1
  %scevgep59.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %171, i64 0, i64 0, i64 1
  %174 = bitcast i8* %scevgep59.3.7 to [16 x [16 x i8]]*
  %scevgep66.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %172, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep66.3.7 to [16 x [16 x i8]]*
  %call16.3.8 = call zeroext i8 (...) @rand()
  store i8 %call16.3.8, i8* %scevgep59.3.7, align 1
  %176 = load i8, i8* %scevgep59.3.7, align 1
  store i8 %176, i8* %scevgep66.3.7, align 1
  %scevgep59.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %174, i64 0, i64 0, i64 1
  %177 = bitcast i8* %scevgep59.3.8 to [16 x [16 x i8]]*
  %scevgep66.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %175, i64 0, i64 1, i64 0
  %178 = bitcast i8* %scevgep66.3.8 to [16 x [16 x i8]]*
  %call16.3.9 = call zeroext i8 (...) @rand()
  store i8 %call16.3.9, i8* %scevgep59.3.8, align 1
  %179 = load i8, i8* %scevgep59.3.8, align 1
  store i8 %179, i8* %scevgep66.3.8, align 1
  %scevgep59.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %177, i64 0, i64 0, i64 1
  %180 = bitcast i8* %scevgep59.3.9 to [16 x [16 x i8]]*
  %scevgep66.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %178, i64 0, i64 1, i64 0
  %181 = bitcast i8* %scevgep66.3.9 to [16 x [16 x i8]]*
  %call16.3.10 = call zeroext i8 (...) @rand()
  store i8 %call16.3.10, i8* %scevgep59.3.9, align 1
  %182 = load i8, i8* %scevgep59.3.9, align 1
  store i8 %182, i8* %scevgep66.3.9, align 1
  %scevgep59.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %180, i64 0, i64 0, i64 1
  %scevgep66.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %181, i64 0, i64 1, i64 0
  %call16.3.11 = call zeroext i8 (...) @rand()
  store i8 %call16.3.11, i8* %scevgep59.3.10, align 1
  %183 = load i8, i8* %scevgep59.3.10, align 1
  store i8 %183, i8* %scevgep66.3.10, align 1
  %scevgep57.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %150, i64 0, i64 1, i64 1
  %184 = bitcast i8* %scevgep57.3 to [16 x [16 x i8]]*
  %scevgep64.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %151, i64 0, i64 1, i64 1
  %185 = bitcast i8* %scevgep64.3 to [16 x [16 x i8]]*
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep57.3, align 1
  %186 = load i8, i8* %scevgep57.3, align 1
  store i8 %186, i8* %scevgep64.3, align 1
  %scevgep59.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %184, i64 0, i64 0, i64 1
  %187 = bitcast i8* %scevgep59.4 to [16 x [16 x i8]]*
  %scevgep66.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %185, i64 0, i64 1, i64 0
  %188 = bitcast i8* %scevgep66.4 to [16 x [16 x i8]]*
  %call16.4.1 = call zeroext i8 (...) @rand()
  store i8 %call16.4.1, i8* %scevgep59.4, align 1
  %189 = load i8, i8* %scevgep59.4, align 1
  store i8 %189, i8* %scevgep66.4, align 1
  %scevgep59.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %187, i64 0, i64 0, i64 1
  %190 = bitcast i8* %scevgep59.4.1 to [16 x [16 x i8]]*
  %scevgep66.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %188, i64 0, i64 1, i64 0
  %191 = bitcast i8* %scevgep66.4.1 to [16 x [16 x i8]]*
  %call16.4.2 = call zeroext i8 (...) @rand()
  store i8 %call16.4.2, i8* %scevgep59.4.1, align 1
  %192 = load i8, i8* %scevgep59.4.1, align 1
  store i8 %192, i8* %scevgep66.4.1, align 1
  %scevgep59.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %190, i64 0, i64 0, i64 1
  %193 = bitcast i8* %scevgep59.4.2 to [16 x [16 x i8]]*
  %scevgep66.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %191, i64 0, i64 1, i64 0
  %194 = bitcast i8* %scevgep66.4.2 to [16 x [16 x i8]]*
  %call16.4.3 = call zeroext i8 (...) @rand()
  store i8 %call16.4.3, i8* %scevgep59.4.2, align 1
  %195 = load i8, i8* %scevgep59.4.2, align 1
  store i8 %195, i8* %scevgep66.4.2, align 1
  %scevgep59.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %193, i64 0, i64 0, i64 1
  %196 = bitcast i8* %scevgep59.4.3 to [16 x [16 x i8]]*
  %scevgep66.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %194, i64 0, i64 1, i64 0
  %197 = bitcast i8* %scevgep66.4.3 to [16 x [16 x i8]]*
  %call16.4.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4.4, i8* %scevgep59.4.3, align 1
  %198 = load i8, i8* %scevgep59.4.3, align 1
  store i8 %198, i8* %scevgep66.4.3, align 1
  %scevgep59.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 1
  %199 = bitcast i8* %scevgep59.4.4 to [16 x [16 x i8]]*
  %scevgep66.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %197, i64 0, i64 1, i64 0
  %200 = bitcast i8* %scevgep66.4.4 to [16 x [16 x i8]]*
  %call16.4.5 = call zeroext i8 (...) @rand()
  store i8 %call16.4.5, i8* %scevgep59.4.4, align 1
  %201 = load i8, i8* %scevgep59.4.4, align 1
  store i8 %201, i8* %scevgep66.4.4, align 1
  %scevgep59.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %199, i64 0, i64 0, i64 1
  %202 = bitcast i8* %scevgep59.4.5 to [16 x [16 x i8]]*
  %scevgep66.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %200, i64 0, i64 1, i64 0
  %203 = bitcast i8* %scevgep66.4.5 to [16 x [16 x i8]]*
  %call16.4.6 = call zeroext i8 (...) @rand()
  store i8 %call16.4.6, i8* %scevgep59.4.5, align 1
  %204 = load i8, i8* %scevgep59.4.5, align 1
  store i8 %204, i8* %scevgep66.4.5, align 1
  %scevgep59.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %202, i64 0, i64 0, i64 1
  %205 = bitcast i8* %scevgep59.4.6 to [16 x [16 x i8]]*
  %scevgep66.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %203, i64 0, i64 1, i64 0
  %206 = bitcast i8* %scevgep66.4.6 to [16 x [16 x i8]]*
  %call16.4.7 = call zeroext i8 (...) @rand()
  store i8 %call16.4.7, i8* %scevgep59.4.6, align 1
  %207 = load i8, i8* %scevgep59.4.6, align 1
  store i8 %207, i8* %scevgep66.4.6, align 1
  %scevgep59.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %205, i64 0, i64 0, i64 1
  %208 = bitcast i8* %scevgep59.4.7 to [16 x [16 x i8]]*
  %scevgep66.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %206, i64 0, i64 1, i64 0
  %209 = bitcast i8* %scevgep66.4.7 to [16 x [16 x i8]]*
  %call16.4.8 = call zeroext i8 (...) @rand()
  store i8 %call16.4.8, i8* %scevgep59.4.7, align 1
  %210 = load i8, i8* %scevgep59.4.7, align 1
  store i8 %210, i8* %scevgep66.4.7, align 1
  %scevgep59.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %208, i64 0, i64 0, i64 1
  %211 = bitcast i8* %scevgep59.4.8 to [16 x [16 x i8]]*
  %scevgep66.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %209, i64 0, i64 1, i64 0
  %212 = bitcast i8* %scevgep66.4.8 to [16 x [16 x i8]]*
  %call16.4.9 = call zeroext i8 (...) @rand()
  store i8 %call16.4.9, i8* %scevgep59.4.8, align 1
  %213 = load i8, i8* %scevgep59.4.8, align 1
  store i8 %213, i8* %scevgep66.4.8, align 1
  %scevgep59.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %211, i64 0, i64 0, i64 1
  %scevgep66.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %212, i64 0, i64 1, i64 0
  %call16.4.10 = call zeroext i8 (...) @rand()
  store i8 %call16.4.10, i8* %scevgep59.4.9, align 1
  %214 = load i8, i8* %scevgep59.4.9, align 1
  store i8 %214, i8* %scevgep66.4.9, align 1
  %scevgep57.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %184, i64 0, i64 1, i64 1
  %215 = bitcast i8* %scevgep57.4 to [16 x [16 x i8]]*
  %scevgep64.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %185, i64 0, i64 1, i64 1
  %216 = bitcast i8* %scevgep64.4 to [16 x [16 x i8]]*
  %call16.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5, i8* %scevgep57.4, align 1
  %217 = load i8, i8* %scevgep57.4, align 1
  store i8 %217, i8* %scevgep64.4, align 1
  %scevgep59.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %215, i64 0, i64 0, i64 1
  %218 = bitcast i8* %scevgep59.5 to [16 x [16 x i8]]*
  %scevgep66.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %216, i64 0, i64 1, i64 0
  %219 = bitcast i8* %scevgep66.5 to [16 x [16 x i8]]*
  %call16.5.1 = call zeroext i8 (...) @rand()
  store i8 %call16.5.1, i8* %scevgep59.5, align 1
  %220 = load i8, i8* %scevgep59.5, align 1
  store i8 %220, i8* %scevgep66.5, align 1
  %scevgep59.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %218, i64 0, i64 0, i64 1
  %221 = bitcast i8* %scevgep59.5.1 to [16 x [16 x i8]]*
  %scevgep66.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %219, i64 0, i64 1, i64 0
  %222 = bitcast i8* %scevgep66.5.1 to [16 x [16 x i8]]*
  %call16.5.2 = call zeroext i8 (...) @rand()
  store i8 %call16.5.2, i8* %scevgep59.5.1, align 1
  %223 = load i8, i8* %scevgep59.5.1, align 1
  store i8 %223, i8* %scevgep66.5.1, align 1
  %scevgep59.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %221, i64 0, i64 0, i64 1
  %224 = bitcast i8* %scevgep59.5.2 to [16 x [16 x i8]]*
  %scevgep66.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %222, i64 0, i64 1, i64 0
  %225 = bitcast i8* %scevgep66.5.2 to [16 x [16 x i8]]*
  %call16.5.3 = call zeroext i8 (...) @rand()
  store i8 %call16.5.3, i8* %scevgep59.5.2, align 1
  %226 = load i8, i8* %scevgep59.5.2, align 1
  store i8 %226, i8* %scevgep66.5.2, align 1
  %scevgep59.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %224, i64 0, i64 0, i64 1
  %227 = bitcast i8* %scevgep59.5.3 to [16 x [16 x i8]]*
  %scevgep66.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %225, i64 0, i64 1, i64 0
  %228 = bitcast i8* %scevgep66.5.3 to [16 x [16 x i8]]*
  %call16.5.4 = call zeroext i8 (...) @rand()
  store i8 %call16.5.4, i8* %scevgep59.5.3, align 1
  %229 = load i8, i8* %scevgep59.5.3, align 1
  store i8 %229, i8* %scevgep66.5.3, align 1
  %scevgep59.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %227, i64 0, i64 0, i64 1
  %230 = bitcast i8* %scevgep59.5.4 to [16 x [16 x i8]]*
  %scevgep66.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %228, i64 0, i64 1, i64 0
  %231 = bitcast i8* %scevgep66.5.4 to [16 x [16 x i8]]*
  %call16.5.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5.5, i8* %scevgep59.5.4, align 1
  %232 = load i8, i8* %scevgep59.5.4, align 1
  store i8 %232, i8* %scevgep66.5.4, align 1
  %scevgep59.5.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %230, i64 0, i64 0, i64 1
  %233 = bitcast i8* %scevgep59.5.5 to [16 x [16 x i8]]*
  %scevgep66.5.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %231, i64 0, i64 1, i64 0
  %234 = bitcast i8* %scevgep66.5.5 to [16 x [16 x i8]]*
  %call16.5.6 = call zeroext i8 (...) @rand()
  store i8 %call16.5.6, i8* %scevgep59.5.5, align 1
  %235 = load i8, i8* %scevgep59.5.5, align 1
  store i8 %235, i8* %scevgep66.5.5, align 1
  %scevgep59.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %233, i64 0, i64 0, i64 1
  %236 = bitcast i8* %scevgep59.5.6 to [16 x [16 x i8]]*
  %scevgep66.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %234, i64 0, i64 1, i64 0
  %237 = bitcast i8* %scevgep66.5.6 to [16 x [16 x i8]]*
  %call16.5.7 = call zeroext i8 (...) @rand()
  store i8 %call16.5.7, i8* %scevgep59.5.6, align 1
  %238 = load i8, i8* %scevgep59.5.6, align 1
  store i8 %238, i8* %scevgep66.5.6, align 1
  %scevgep59.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %236, i64 0, i64 0, i64 1
  %239 = bitcast i8* %scevgep59.5.7 to [16 x [16 x i8]]*
  %scevgep66.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %237, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep66.5.7 to [16 x [16 x i8]]*
  %call16.5.8 = call zeroext i8 (...) @rand()
  store i8 %call16.5.8, i8* %scevgep59.5.7, align 1
  %241 = load i8, i8* %scevgep59.5.7, align 1
  store i8 %241, i8* %scevgep66.5.7, align 1
  %scevgep59.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %239, i64 0, i64 0, i64 1
  %scevgep66.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %240, i64 0, i64 1, i64 0
  %call16.5.9 = call zeroext i8 (...) @rand()
  store i8 %call16.5.9, i8* %scevgep59.5.8, align 1
  %242 = load i8, i8* %scevgep59.5.8, align 1
  store i8 %242, i8* %scevgep66.5.8, align 1
  %scevgep57.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %215, i64 0, i64 1, i64 1
  %243 = bitcast i8* %scevgep57.5 to [16 x [16 x i8]]*
  %scevgep64.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %216, i64 0, i64 1, i64 1
  %244 = bitcast i8* %scevgep64.5 to [16 x [16 x i8]]*
  %call16.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6, i8* %scevgep57.5, align 1
  %245 = load i8, i8* %scevgep57.5, align 1
  store i8 %245, i8* %scevgep64.5, align 1
  %scevgep59.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %243, i64 0, i64 0, i64 1
  %246 = bitcast i8* %scevgep59.6 to [16 x [16 x i8]]*
  %scevgep66.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %244, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep66.6 to [16 x [16 x i8]]*
  %call16.6.1 = call zeroext i8 (...) @rand()
  store i8 %call16.6.1, i8* %scevgep59.6, align 1
  %248 = load i8, i8* %scevgep59.6, align 1
  store i8 %248, i8* %scevgep66.6, align 1
  %scevgep59.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %246, i64 0, i64 0, i64 1
  %249 = bitcast i8* %scevgep59.6.1 to [16 x [16 x i8]]*
  %scevgep66.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %247, i64 0, i64 1, i64 0
  %250 = bitcast i8* %scevgep66.6.1 to [16 x [16 x i8]]*
  %call16.6.2 = call zeroext i8 (...) @rand()
  store i8 %call16.6.2, i8* %scevgep59.6.1, align 1
  %251 = load i8, i8* %scevgep59.6.1, align 1
  store i8 %251, i8* %scevgep66.6.1, align 1
  %scevgep59.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %249, i64 0, i64 0, i64 1
  %252 = bitcast i8* %scevgep59.6.2 to [16 x [16 x i8]]*
  %scevgep66.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %250, i64 0, i64 1, i64 0
  %253 = bitcast i8* %scevgep66.6.2 to [16 x [16 x i8]]*
  %call16.6.3 = call zeroext i8 (...) @rand()
  store i8 %call16.6.3, i8* %scevgep59.6.2, align 1
  %254 = load i8, i8* %scevgep59.6.2, align 1
  store i8 %254, i8* %scevgep66.6.2, align 1
  %scevgep59.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %252, i64 0, i64 0, i64 1
  %255 = bitcast i8* %scevgep59.6.3 to [16 x [16 x i8]]*
  %scevgep66.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %253, i64 0, i64 1, i64 0
  %256 = bitcast i8* %scevgep66.6.3 to [16 x [16 x i8]]*
  %call16.6.4 = call zeroext i8 (...) @rand()
  store i8 %call16.6.4, i8* %scevgep59.6.3, align 1
  %257 = load i8, i8* %scevgep59.6.3, align 1
  store i8 %257, i8* %scevgep66.6.3, align 1
  %scevgep59.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %255, i64 0, i64 0, i64 1
  %258 = bitcast i8* %scevgep59.6.4 to [16 x [16 x i8]]*
  %scevgep66.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %256, i64 0, i64 1, i64 0
  %259 = bitcast i8* %scevgep66.6.4 to [16 x [16 x i8]]*
  %call16.6.5 = call zeroext i8 (...) @rand()
  store i8 %call16.6.5, i8* %scevgep59.6.4, align 1
  %260 = load i8, i8* %scevgep59.6.4, align 1
  store i8 %260, i8* %scevgep66.6.4, align 1
  %scevgep59.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %258, i64 0, i64 0, i64 1
  %261 = bitcast i8* %scevgep59.6.5 to [16 x [16 x i8]]*
  %scevgep66.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %259, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep66.6.5 to [16 x [16 x i8]]*
  %call16.6.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6.6, i8* %scevgep59.6.5, align 1
  %263 = load i8, i8* %scevgep59.6.5, align 1
  store i8 %263, i8* %scevgep66.6.5, align 1
  %scevgep59.6.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %261, i64 0, i64 0, i64 1
  %264 = bitcast i8* %scevgep59.6.6 to [16 x [16 x i8]]*
  %scevgep66.6.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep66.6.6 to [16 x [16 x i8]]*
  %call16.6.7 = call zeroext i8 (...) @rand()
  store i8 %call16.6.7, i8* %scevgep59.6.6, align 1
  %266 = load i8, i8* %scevgep59.6.6, align 1
  store i8 %266, i8* %scevgep66.6.6, align 1
  %scevgep59.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %264, i64 0, i64 0, i64 1
  %scevgep66.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %265, i64 0, i64 1, i64 0
  %call16.6.8 = call zeroext i8 (...) @rand()
  store i8 %call16.6.8, i8* %scevgep59.6.7, align 1
  %267 = load i8, i8* %scevgep59.6.7, align 1
  store i8 %267, i8* %scevgep66.6.7, align 1
  %scevgep57.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %243, i64 0, i64 1, i64 1
  %268 = bitcast i8* %scevgep57.6 to [16 x [16 x i8]]*
  %scevgep64.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %244, i64 0, i64 1, i64 1
  %269 = bitcast i8* %scevgep64.6 to [16 x [16 x i8]]*
  %call16.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7, i8* %scevgep57.6, align 1
  %270 = load i8, i8* %scevgep57.6, align 1
  store i8 %270, i8* %scevgep64.6, align 1
  %scevgep59.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %268, i64 0, i64 0, i64 1
  %271 = bitcast i8* %scevgep59.7 to [16 x [16 x i8]]*
  %scevgep66.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %269, i64 0, i64 1, i64 0
  %272 = bitcast i8* %scevgep66.7 to [16 x [16 x i8]]*
  %call16.7.1 = call zeroext i8 (...) @rand()
  store i8 %call16.7.1, i8* %scevgep59.7, align 1
  %273 = load i8, i8* %scevgep59.7, align 1
  store i8 %273, i8* %scevgep66.7, align 1
  %scevgep59.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %271, i64 0, i64 0, i64 1
  %274 = bitcast i8* %scevgep59.7.1 to [16 x [16 x i8]]*
  %scevgep66.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %272, i64 0, i64 1, i64 0
  %275 = bitcast i8* %scevgep66.7.1 to [16 x [16 x i8]]*
  %call16.7.2 = call zeroext i8 (...) @rand()
  store i8 %call16.7.2, i8* %scevgep59.7.1, align 1
  %276 = load i8, i8* %scevgep59.7.1, align 1
  store i8 %276, i8* %scevgep66.7.1, align 1
  %scevgep59.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %274, i64 0, i64 0, i64 1
  %277 = bitcast i8* %scevgep59.7.2 to [16 x [16 x i8]]*
  %scevgep66.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %275, i64 0, i64 1, i64 0
  %278 = bitcast i8* %scevgep66.7.2 to [16 x [16 x i8]]*
  %call16.7.3 = call zeroext i8 (...) @rand()
  store i8 %call16.7.3, i8* %scevgep59.7.2, align 1
  %279 = load i8, i8* %scevgep59.7.2, align 1
  store i8 %279, i8* %scevgep66.7.2, align 1
  %scevgep59.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %277, i64 0, i64 0, i64 1
  %280 = bitcast i8* %scevgep59.7.3 to [16 x [16 x i8]]*
  %scevgep66.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %278, i64 0, i64 1, i64 0
  %281 = bitcast i8* %scevgep66.7.3 to [16 x [16 x i8]]*
  %call16.7.4 = call zeroext i8 (...) @rand()
  store i8 %call16.7.4, i8* %scevgep59.7.3, align 1
  %282 = load i8, i8* %scevgep59.7.3, align 1
  store i8 %282, i8* %scevgep66.7.3, align 1
  %scevgep59.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %280, i64 0, i64 0, i64 1
  %283 = bitcast i8* %scevgep59.7.4 to [16 x [16 x i8]]*
  %scevgep66.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %281, i64 0, i64 1, i64 0
  %284 = bitcast i8* %scevgep66.7.4 to [16 x [16 x i8]]*
  %call16.7.5 = call zeroext i8 (...) @rand()
  store i8 %call16.7.5, i8* %scevgep59.7.4, align 1
  %285 = load i8, i8* %scevgep59.7.4, align 1
  store i8 %285, i8* %scevgep66.7.4, align 1
  %scevgep59.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %283, i64 0, i64 0, i64 1
  %286 = bitcast i8* %scevgep59.7.5 to [16 x [16 x i8]]*
  %scevgep66.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %284, i64 0, i64 1, i64 0
  %287 = bitcast i8* %scevgep66.7.5 to [16 x [16 x i8]]*
  %call16.7.6 = call zeroext i8 (...) @rand()
  store i8 %call16.7.6, i8* %scevgep59.7.5, align 1
  %288 = load i8, i8* %scevgep59.7.5, align 1
  store i8 %288, i8* %scevgep66.7.5, align 1
  %scevgep59.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %286, i64 0, i64 0, i64 1
  %scevgep66.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %287, i64 0, i64 1, i64 0
  %call16.7.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7.7, i8* %scevgep59.7.6, align 1
  %289 = load i8, i8* %scevgep59.7.6, align 1
  store i8 %289, i8* %scevgep66.7.6, align 1
  %scevgep57.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %268, i64 0, i64 1, i64 1
  %290 = bitcast i8* %scevgep57.7 to [16 x [16 x i8]]*
  %scevgep64.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %269, i64 0, i64 1, i64 1
  %291 = bitcast i8* %scevgep64.7 to [16 x [16 x i8]]*
  %call16.8 = call zeroext i8 (...) @rand()
  store i8 %call16.8, i8* %scevgep57.7, align 1
  %292 = load i8, i8* %scevgep57.7, align 1
  store i8 %292, i8* %scevgep64.7, align 1
  %scevgep59.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %290, i64 0, i64 0, i64 1
  %293 = bitcast i8* %scevgep59.8 to [16 x [16 x i8]]*
  %scevgep66.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %291, i64 0, i64 1, i64 0
  %294 = bitcast i8* %scevgep66.8 to [16 x [16 x i8]]*
  %call16.8.1 = call zeroext i8 (...) @rand()
  store i8 %call16.8.1, i8* %scevgep59.8, align 1
  %295 = load i8, i8* %scevgep59.8, align 1
  store i8 %295, i8* %scevgep66.8, align 1
  %scevgep59.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %293, i64 0, i64 0, i64 1
  %296 = bitcast i8* %scevgep59.8.1 to [16 x [16 x i8]]*
  %scevgep66.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %294, i64 0, i64 1, i64 0
  %297 = bitcast i8* %scevgep66.8.1 to [16 x [16 x i8]]*
  %call16.8.2 = call zeroext i8 (...) @rand()
  store i8 %call16.8.2, i8* %scevgep59.8.1, align 1
  %298 = load i8, i8* %scevgep59.8.1, align 1
  store i8 %298, i8* %scevgep66.8.1, align 1
  %scevgep59.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %296, i64 0, i64 0, i64 1
  %299 = bitcast i8* %scevgep59.8.2 to [16 x [16 x i8]]*
  %scevgep66.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %297, i64 0, i64 1, i64 0
  %300 = bitcast i8* %scevgep66.8.2 to [16 x [16 x i8]]*
  %call16.8.3 = call zeroext i8 (...) @rand()
  store i8 %call16.8.3, i8* %scevgep59.8.2, align 1
  %301 = load i8, i8* %scevgep59.8.2, align 1
  store i8 %301, i8* %scevgep66.8.2, align 1
  %scevgep59.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %299, i64 0, i64 0, i64 1
  %302 = bitcast i8* %scevgep59.8.3 to [16 x [16 x i8]]*
  %scevgep66.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %300, i64 0, i64 1, i64 0
  %303 = bitcast i8* %scevgep66.8.3 to [16 x [16 x i8]]*
  %call16.8.4 = call zeroext i8 (...) @rand()
  store i8 %call16.8.4, i8* %scevgep59.8.3, align 1
  %304 = load i8, i8* %scevgep59.8.3, align 1
  store i8 %304, i8* %scevgep66.8.3, align 1
  %scevgep59.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %302, i64 0, i64 0, i64 1
  %305 = bitcast i8* %scevgep59.8.4 to [16 x [16 x i8]]*
  %scevgep66.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %303, i64 0, i64 1, i64 0
  %306 = bitcast i8* %scevgep66.8.4 to [16 x [16 x i8]]*
  %call16.8.5 = call zeroext i8 (...) @rand()
  store i8 %call16.8.5, i8* %scevgep59.8.4, align 1
  %307 = load i8, i8* %scevgep59.8.4, align 1
  store i8 %307, i8* %scevgep66.8.4, align 1
  %scevgep59.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %305, i64 0, i64 0, i64 1
  %scevgep66.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %306, i64 0, i64 1, i64 0
  %call16.8.6 = call zeroext i8 (...) @rand()
  store i8 %call16.8.6, i8* %scevgep59.8.5, align 1
  %308 = load i8, i8* %scevgep59.8.5, align 1
  store i8 %308, i8* %scevgep66.8.5, align 1
  %scevgep57.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %290, i64 0, i64 1, i64 1
  %309 = bitcast i8* %scevgep57.8 to [16 x [16 x i8]]*
  %scevgep64.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %291, i64 0, i64 1, i64 1
  %310 = bitcast i8* %scevgep64.8 to [16 x [16 x i8]]*
  %call16.9 = call zeroext i8 (...) @rand()
  store i8 %call16.9, i8* %scevgep57.8, align 1
  %311 = load i8, i8* %scevgep57.8, align 1
  store i8 %311, i8* %scevgep64.8, align 1
  %scevgep59.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %309, i64 0, i64 0, i64 1
  %312 = bitcast i8* %scevgep59.9 to [16 x [16 x i8]]*
  %scevgep66.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %310, i64 0, i64 1, i64 0
  %313 = bitcast i8* %scevgep66.9 to [16 x [16 x i8]]*
  %call16.9.1 = call zeroext i8 (...) @rand()
  store i8 %call16.9.1, i8* %scevgep59.9, align 1
  %314 = load i8, i8* %scevgep59.9, align 1
  store i8 %314, i8* %scevgep66.9, align 1
  %scevgep59.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %312, i64 0, i64 0, i64 1
  %315 = bitcast i8* %scevgep59.9.1 to [16 x [16 x i8]]*
  %scevgep66.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %313, i64 0, i64 1, i64 0
  %316 = bitcast i8* %scevgep66.9.1 to [16 x [16 x i8]]*
  %call16.9.2 = call zeroext i8 (...) @rand()
  store i8 %call16.9.2, i8* %scevgep59.9.1, align 1
  %317 = load i8, i8* %scevgep59.9.1, align 1
  store i8 %317, i8* %scevgep66.9.1, align 1
  %scevgep59.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %315, i64 0, i64 0, i64 1
  %318 = bitcast i8* %scevgep59.9.2 to [16 x [16 x i8]]*
  %scevgep66.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %316, i64 0, i64 1, i64 0
  %319 = bitcast i8* %scevgep66.9.2 to [16 x [16 x i8]]*
  %call16.9.3 = call zeroext i8 (...) @rand()
  store i8 %call16.9.3, i8* %scevgep59.9.2, align 1
  %320 = load i8, i8* %scevgep59.9.2, align 1
  store i8 %320, i8* %scevgep66.9.2, align 1
  %scevgep59.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %318, i64 0, i64 0, i64 1
  %321 = bitcast i8* %scevgep59.9.3 to [16 x [16 x i8]]*
  %scevgep66.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %319, i64 0, i64 1, i64 0
  %322 = bitcast i8* %scevgep66.9.3 to [16 x [16 x i8]]*
  %call16.9.4 = call zeroext i8 (...) @rand()
  store i8 %call16.9.4, i8* %scevgep59.9.3, align 1
  %323 = load i8, i8* %scevgep59.9.3, align 1
  store i8 %323, i8* %scevgep66.9.3, align 1
  %scevgep59.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %321, i64 0, i64 0, i64 1
  %scevgep66.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %322, i64 0, i64 1, i64 0
  %call16.9.5 = call zeroext i8 (...) @rand()
  store i8 %call16.9.5, i8* %scevgep59.9.4, align 1
  %324 = load i8, i8* %scevgep59.9.4, align 1
  store i8 %324, i8* %scevgep66.9.4, align 1
  %scevgep57.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %309, i64 0, i64 1, i64 1
  %325 = bitcast i8* %scevgep57.9 to [16 x [16 x i8]]*
  %scevgep64.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %310, i64 0, i64 1, i64 1
  %326 = bitcast i8* %scevgep64.9 to [16 x [16 x i8]]*
  %call16.10 = call zeroext i8 (...) @rand()
  store i8 %call16.10, i8* %scevgep57.9, align 1
  %327 = load i8, i8* %scevgep57.9, align 1
  store i8 %327, i8* %scevgep64.9, align 1
  %scevgep59.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %325, i64 0, i64 0, i64 1
  %328 = bitcast i8* %scevgep59.10 to [16 x [16 x i8]]*
  %scevgep66.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %326, i64 0, i64 1, i64 0
  %329 = bitcast i8* %scevgep66.10 to [16 x [16 x i8]]*
  %call16.10.1 = call zeroext i8 (...) @rand()
  store i8 %call16.10.1, i8* %scevgep59.10, align 1
  %330 = load i8, i8* %scevgep59.10, align 1
  store i8 %330, i8* %scevgep66.10, align 1
  %scevgep59.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 1
  %331 = bitcast i8* %scevgep59.10.1 to [16 x [16 x i8]]*
  %scevgep66.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %329, i64 0, i64 1, i64 0
  %332 = bitcast i8* %scevgep66.10.1 to [16 x [16 x i8]]*
  %call16.10.2 = call zeroext i8 (...) @rand()
  store i8 %call16.10.2, i8* %scevgep59.10.1, align 1
  %333 = load i8, i8* %scevgep59.10.1, align 1
  store i8 %333, i8* %scevgep66.10.1, align 1
  %scevgep59.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %331, i64 0, i64 0, i64 1
  %334 = bitcast i8* %scevgep59.10.2 to [16 x [16 x i8]]*
  %scevgep66.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %332, i64 0, i64 1, i64 0
  %335 = bitcast i8* %scevgep66.10.2 to [16 x [16 x i8]]*
  %call16.10.3 = call zeroext i8 (...) @rand()
  store i8 %call16.10.3, i8* %scevgep59.10.2, align 1
  %336 = load i8, i8* %scevgep59.10.2, align 1
  store i8 %336, i8* %scevgep66.10.2, align 1
  %scevgep59.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %334, i64 0, i64 0, i64 1
  %scevgep66.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %335, i64 0, i64 1, i64 0
  %call16.10.4 = call zeroext i8 (...) @rand()
  store i8 %call16.10.4, i8* %scevgep59.10.3, align 1
  %337 = load i8, i8* %scevgep59.10.3, align 1
  store i8 %337, i8* %scevgep66.10.3, align 1
  %scevgep57.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %325, i64 0, i64 1, i64 1
  %338 = bitcast i8* %scevgep57.10 to [16 x [16 x i8]]*
  %scevgep64.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %326, i64 0, i64 1, i64 1
  %339 = bitcast i8* %scevgep64.10 to [16 x [16 x i8]]*
  %call16.11 = call zeroext i8 (...) @rand()
  store i8 %call16.11, i8* %scevgep57.10, align 1
  %340 = load i8, i8* %scevgep57.10, align 1
  store i8 %340, i8* %scevgep64.10, align 1
  %scevgep59.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %338, i64 0, i64 0, i64 1
  %341 = bitcast i8* %scevgep59.11 to [16 x [16 x i8]]*
  %scevgep66.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %339, i64 0, i64 1, i64 0
  %342 = bitcast i8* %scevgep66.11 to [16 x [16 x i8]]*
  %call16.11.1 = call zeroext i8 (...) @rand()
  store i8 %call16.11.1, i8* %scevgep59.11, align 1
  %343 = load i8, i8* %scevgep59.11, align 1
  store i8 %343, i8* %scevgep66.11, align 1
  %scevgep59.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %341, i64 0, i64 0, i64 1
  %344 = bitcast i8* %scevgep59.11.1 to [16 x [16 x i8]]*
  %scevgep66.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %342, i64 0, i64 1, i64 0
  %345 = bitcast i8* %scevgep66.11.1 to [16 x [16 x i8]]*
  %call16.11.2 = call zeroext i8 (...) @rand()
  store i8 %call16.11.2, i8* %scevgep59.11.1, align 1
  %346 = load i8, i8* %scevgep59.11.1, align 1
  store i8 %346, i8* %scevgep66.11.1, align 1
  %scevgep59.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %344, i64 0, i64 0, i64 1
  %scevgep66.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %345, i64 0, i64 1, i64 0
  %call16.11.3 = call zeroext i8 (...) @rand()
  store i8 %call16.11.3, i8* %scevgep59.11.2, align 1
  %347 = load i8, i8* %scevgep59.11.2, align 1
  store i8 %347, i8* %scevgep66.11.2, align 1
  %scevgep57.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %338, i64 0, i64 1, i64 1
  %348 = bitcast i8* %scevgep57.11 to [16 x [16 x i8]]*
  %scevgep64.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %339, i64 0, i64 1, i64 1
  %349 = bitcast i8* %scevgep64.11 to [16 x [16 x i8]]*
  %call16.12 = call zeroext i8 (...) @rand()
  store i8 %call16.12, i8* %scevgep57.11, align 1
  %350 = load i8, i8* %scevgep57.11, align 1
  store i8 %350, i8* %scevgep64.11, align 1
  %scevgep59.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %348, i64 0, i64 0, i64 1
  %351 = bitcast i8* %scevgep59.12 to [16 x [16 x i8]]*
  %scevgep66.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %349, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep66.12 to [16 x [16 x i8]]*
  %call16.12.1 = call zeroext i8 (...) @rand()
  store i8 %call16.12.1, i8* %scevgep59.12, align 1
  %353 = load i8, i8* %scevgep59.12, align 1
  store i8 %353, i8* %scevgep66.12, align 1
  %scevgep59.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %351, i64 0, i64 0, i64 1
  %scevgep66.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %352, i64 0, i64 1, i64 0
  %call16.12.2 = call zeroext i8 (...) @rand()
  store i8 %call16.12.2, i8* %scevgep59.12.1, align 1
  %354 = load i8, i8* %scevgep59.12.1, align 1
  store i8 %354, i8* %scevgep66.12.1, align 1
  %scevgep57.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %348, i64 0, i64 1, i64 1
  %355 = bitcast i8* %scevgep57.12 to [16 x [16 x i8]]*
  %scevgep64.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %349, i64 0, i64 1, i64 1
  %356 = bitcast i8* %scevgep64.12 to [16 x [16 x i8]]*
  %call16.13 = call zeroext i8 (...) @rand()
  store i8 %call16.13, i8* %scevgep57.12, align 1
  %357 = load i8, i8* %scevgep57.12, align 1
  store i8 %357, i8* %scevgep64.12, align 1
  %scevgep59.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %355, i64 0, i64 0, i64 1
  %scevgep66.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %356, i64 0, i64 1, i64 0
  %call16.13.1 = call zeroext i8 (...) @rand()
  store i8 %call16.13.1, i8* %scevgep59.13, align 1
  %358 = load i8, i8* %scevgep59.13, align 1
  store i8 %358, i8* %scevgep66.13, align 1
  %scevgep57.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %355, i64 0, i64 1, i64 1
  %scevgep64.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %356, i64 0, i64 1, i64 1
  %call16.14 = call zeroext i8 (...) @rand()
  store i8 %call16.14, i8* %scevgep57.13, align 1
  %359 = load i8, i8* %scevgep57.13, align 1
  store i8 %359, i8* %scevgep64.13, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %360 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %360 to i32
  %scevgep34.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %361 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %361 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %362 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %362 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %363 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %363)
  %scevgep42.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %364 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 1
  %365 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %364, i8 zeroext %365)
  %scevgep46.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 1
  %366 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %366 to i32
  %scevgep47.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 1
  %367 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %367 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %368 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %368 to i32
  %scevgep34.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 2
  %369 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %369 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %370 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %370 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 2
  %371 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %371)
  %scevgep42.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %372 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 2
  %373 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373)
  %scevgep46.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 2
  %374 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %374 to i32
  %scevgep47.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 2
  %375 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %375 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %b, i64 3
  %376 = load i8, i8* %scevgep31.3, align 1
  %conv44.3 = zext i8 %376 to i32
  %scevgep34.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 3
  %377 = load i8, i8* %scevgep34.3, align 1
  %conv49.3 = zext i8 %377 to i32
  %xor.3 = xor i32 %conv44.3, %conv49.3
  %conv50.3 = trunc i32 %xor.3 to i8
  %scevgep38.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 3
  store i8 %conv50.3, i8* %scevgep38.3, align 1
  %378 = load i8, i8* %a, align 1
  %conv57.3 = zext i8 %378 to i32
  %xor58.3 = xor i32 %conv57.3, 1
  %conv59.3 = trunc i32 %xor58.3 to i8
  %scevgep35.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 3
  %379 = load i8, i8* %scevgep35.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %conv59.3, i8 zeroext %379)
  %scevgep42.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 3
  store i8 %call64.3, i8* %scevgep42.3, align 1
  %380 = load i8, i8* %a, align 1
  %scevgep39.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 3
  %381 = load i8, i8* %scevgep39.3, align 1
  %call75.3 = call zeroext i8 @mult(i8 zeroext %380, i8 zeroext %381)
  %scevgep46.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 3
  store i8 %call75.3, i8* %scevgep46.3, align 1
  %scevgep43.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 3
  %382 = load i8, i8* %scevgep43.3, align 1
  %conv84.3 = zext i8 %382 to i32
  %scevgep47.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 3
  %383 = load i8, i8* %scevgep47.3, align 1
  %conv89.3 = zext i8 %383 to i32
  %xor90.3 = xor i32 %conv84.3, %conv89.3
  %conv91.3 = trunc i32 %xor90.3 to i8
  %scevgep50.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %conv91.3, i8* %scevgep50.3, align 1
  %scevgep31.4 = getelementptr i8, i8* %b, i64 4
  %384 = load i8, i8* %scevgep31.4, align 1
  %conv44.4 = zext i8 %384 to i32
  %scevgep34.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 4
  %385 = load i8, i8* %scevgep34.4, align 1
  %conv49.4 = zext i8 %385 to i32
  %xor.4 = xor i32 %conv44.4, %conv49.4
  %conv50.4 = trunc i32 %xor.4 to i8
  %scevgep38.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 4
  store i8 %conv50.4, i8* %scevgep38.4, align 1
  %386 = load i8, i8* %a, align 1
  %conv57.4 = zext i8 %386 to i32
  %xor58.4 = xor i32 %conv57.4, 1
  %conv59.4 = trunc i32 %xor58.4 to i8
  %scevgep35.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 4
  %387 = load i8, i8* %scevgep35.4, align 1
  %call64.4 = call zeroext i8 @mult(i8 zeroext %conv59.4, i8 zeroext %387)
  %scevgep42.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 4
  store i8 %call64.4, i8* %scevgep42.4, align 1
  %388 = load i8, i8* %a, align 1
  %scevgep39.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 4
  %389 = load i8, i8* %scevgep39.4, align 1
  %call75.4 = call zeroext i8 @mult(i8 zeroext %388, i8 zeroext %389)
  %scevgep46.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 4
  store i8 %call75.4, i8* %scevgep46.4, align 1
  %scevgep43.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 4
  %390 = load i8, i8* %scevgep43.4, align 1
  %conv84.4 = zext i8 %390 to i32
  %scevgep47.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 4
  %391 = load i8, i8* %scevgep47.4, align 1
  %conv89.4 = zext i8 %391 to i32
  %xor90.4 = xor i32 %conv84.4, %conv89.4
  %conv91.4 = trunc i32 %xor90.4 to i8
  %scevgep50.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 4
  store i8 %conv91.4, i8* %scevgep50.4, align 1
  %scevgep31.5 = getelementptr i8, i8* %b, i64 5
  %392 = load i8, i8* %scevgep31.5, align 1
  %conv44.5 = zext i8 %392 to i32
  %scevgep34.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 5
  %393 = load i8, i8* %scevgep34.5, align 1
  %conv49.5 = zext i8 %393 to i32
  %xor.5 = xor i32 %conv44.5, %conv49.5
  %conv50.5 = trunc i32 %xor.5 to i8
  %scevgep38.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 5
  store i8 %conv50.5, i8* %scevgep38.5, align 1
  %394 = load i8, i8* %a, align 1
  %conv57.5 = zext i8 %394 to i32
  %xor58.5 = xor i32 %conv57.5, 1
  %conv59.5 = trunc i32 %xor58.5 to i8
  %scevgep35.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 5
  %395 = load i8, i8* %scevgep35.5, align 1
  %call64.5 = call zeroext i8 @mult(i8 zeroext %conv59.5, i8 zeroext %395)
  %scevgep42.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 5
  store i8 %call64.5, i8* %scevgep42.5, align 1
  %396 = load i8, i8* %a, align 1
  %scevgep39.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 5
  %397 = load i8, i8* %scevgep39.5, align 1
  %call75.5 = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %397)
  %scevgep46.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 5
  store i8 %call75.5, i8* %scevgep46.5, align 1
  %scevgep43.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 5
  %398 = load i8, i8* %scevgep43.5, align 1
  %conv84.5 = zext i8 %398 to i32
  %scevgep47.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 5
  %399 = load i8, i8* %scevgep47.5, align 1
  %conv89.5 = zext i8 %399 to i32
  %xor90.5 = xor i32 %conv84.5, %conv89.5
  %conv91.5 = trunc i32 %xor90.5 to i8
  %scevgep50.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 5
  store i8 %conv91.5, i8* %scevgep50.5, align 1
  %scevgep31.6 = getelementptr i8, i8* %b, i64 6
  %400 = load i8, i8* %scevgep31.6, align 1
  %conv44.6 = zext i8 %400 to i32
  %scevgep34.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 6
  %401 = load i8, i8* %scevgep34.6, align 1
  %conv49.6 = zext i8 %401 to i32
  %xor.6 = xor i32 %conv44.6, %conv49.6
  %conv50.6 = trunc i32 %xor.6 to i8
  %scevgep38.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 6
  store i8 %conv50.6, i8* %scevgep38.6, align 1
  %402 = load i8, i8* %a, align 1
  %conv57.6 = zext i8 %402 to i32
  %xor58.6 = xor i32 %conv57.6, 1
  %conv59.6 = trunc i32 %xor58.6 to i8
  %scevgep35.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 6
  %403 = load i8, i8* %scevgep35.6, align 1
  %call64.6 = call zeroext i8 @mult(i8 zeroext %conv59.6, i8 zeroext %403)
  %scevgep42.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 6
  store i8 %call64.6, i8* %scevgep42.6, align 1
  %404 = load i8, i8* %a, align 1
  %scevgep39.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 6
  %405 = load i8, i8* %scevgep39.6, align 1
  %call75.6 = call zeroext i8 @mult(i8 zeroext %404, i8 zeroext %405)
  %scevgep46.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 6
  store i8 %call75.6, i8* %scevgep46.6, align 1
  %scevgep43.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 6
  %406 = load i8, i8* %scevgep43.6, align 1
  %conv84.6 = zext i8 %406 to i32
  %scevgep47.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 6
  %407 = load i8, i8* %scevgep47.6, align 1
  %conv89.6 = zext i8 %407 to i32
  %xor90.6 = xor i32 %conv84.6, %conv89.6
  %conv91.6 = trunc i32 %xor90.6 to i8
  %scevgep50.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 6
  store i8 %conv91.6, i8* %scevgep50.6, align 1
  %scevgep31.7 = getelementptr i8, i8* %b, i64 7
  %408 = load i8, i8* %scevgep31.7, align 1
  %conv44.7 = zext i8 %408 to i32
  %scevgep34.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 7
  %409 = load i8, i8* %scevgep34.7, align 1
  %conv49.7 = zext i8 %409 to i32
  %xor.7 = xor i32 %conv44.7, %conv49.7
  %conv50.7 = trunc i32 %xor.7 to i8
  %scevgep38.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 7
  store i8 %conv50.7, i8* %scevgep38.7, align 1
  %410 = load i8, i8* %a, align 1
  %conv57.7 = zext i8 %410 to i32
  %xor58.7 = xor i32 %conv57.7, 1
  %conv59.7 = trunc i32 %xor58.7 to i8
  %scevgep35.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 7
  %411 = load i8, i8* %scevgep35.7, align 1
  %call64.7 = call zeroext i8 @mult(i8 zeroext %conv59.7, i8 zeroext %411)
  %scevgep42.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 7
  store i8 %call64.7, i8* %scevgep42.7, align 1
  %412 = load i8, i8* %a, align 1
  %scevgep39.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 7
  %413 = load i8, i8* %scevgep39.7, align 1
  %call75.7 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413)
  %scevgep46.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 7
  store i8 %call75.7, i8* %scevgep46.7, align 1
  %scevgep43.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 7
  %414 = load i8, i8* %scevgep43.7, align 1
  %conv84.7 = zext i8 %414 to i32
  %scevgep47.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 7
  %415 = load i8, i8* %scevgep47.7, align 1
  %conv89.7 = zext i8 %415 to i32
  %xor90.7 = xor i32 %conv84.7, %conv89.7
  %conv91.7 = trunc i32 %xor90.7 to i8
  %scevgep50.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 7
  store i8 %conv91.7, i8* %scevgep50.7, align 1
  %scevgep31.8 = getelementptr i8, i8* %b, i64 8
  %416 = load i8, i8* %scevgep31.8, align 1
  %conv44.8 = zext i8 %416 to i32
  %scevgep34.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 8
  %417 = load i8, i8* %scevgep34.8, align 1
  %conv49.8 = zext i8 %417 to i32
  %xor.8 = xor i32 %conv44.8, %conv49.8
  %conv50.8 = trunc i32 %xor.8 to i8
  %scevgep38.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 8
  store i8 %conv50.8, i8* %scevgep38.8, align 1
  %418 = load i8, i8* %a, align 1
  %conv57.8 = zext i8 %418 to i32
  %xor58.8 = xor i32 %conv57.8, 1
  %conv59.8 = trunc i32 %xor58.8 to i8
  %scevgep35.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 8
  %419 = load i8, i8* %scevgep35.8, align 1
  %call64.8 = call zeroext i8 @mult(i8 zeroext %conv59.8, i8 zeroext %419)
  %scevgep42.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 8
  store i8 %call64.8, i8* %scevgep42.8, align 1
  %420 = load i8, i8* %a, align 1
  %scevgep39.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 8
  %421 = load i8, i8* %scevgep39.8, align 1
  %call75.8 = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421)
  %scevgep46.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 8
  store i8 %call75.8, i8* %scevgep46.8, align 1
  %scevgep43.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 8
  %422 = load i8, i8* %scevgep43.8, align 1
  %conv84.8 = zext i8 %422 to i32
  %scevgep47.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 8
  %423 = load i8, i8* %scevgep47.8, align 1
  %conv89.8 = zext i8 %423 to i32
  %xor90.8 = xor i32 %conv84.8, %conv89.8
  %conv91.8 = trunc i32 %xor90.8 to i8
  %scevgep50.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 8
  store i8 %conv91.8, i8* %scevgep50.8, align 1
  %scevgep31.9 = getelementptr i8, i8* %b, i64 9
  %424 = load i8, i8* %scevgep31.9, align 1
  %conv44.9 = zext i8 %424 to i32
  %scevgep34.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 9
  %425 = load i8, i8* %scevgep34.9, align 1
  %conv49.9 = zext i8 %425 to i32
  %xor.9 = xor i32 %conv44.9, %conv49.9
  %conv50.9 = trunc i32 %xor.9 to i8
  %scevgep38.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 9
  store i8 %conv50.9, i8* %scevgep38.9, align 1
  %426 = load i8, i8* %a, align 1
  %conv57.9 = zext i8 %426 to i32
  %xor58.9 = xor i32 %conv57.9, 1
  %conv59.9 = trunc i32 %xor58.9 to i8
  %scevgep35.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 9
  %427 = load i8, i8* %scevgep35.9, align 1
  %call64.9 = call zeroext i8 @mult(i8 zeroext %conv59.9, i8 zeroext %427)
  %scevgep42.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 9
  store i8 %call64.9, i8* %scevgep42.9, align 1
  %428 = load i8, i8* %a, align 1
  %scevgep39.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 9
  %429 = load i8, i8* %scevgep39.9, align 1
  %call75.9 = call zeroext i8 @mult(i8 zeroext %428, i8 zeroext %429)
  %scevgep46.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 9
  store i8 %call75.9, i8* %scevgep46.9, align 1
  %scevgep43.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 9
  %430 = load i8, i8* %scevgep43.9, align 1
  %conv84.9 = zext i8 %430 to i32
  %scevgep47.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 9
  %431 = load i8, i8* %scevgep47.9, align 1
  %conv89.9 = zext i8 %431 to i32
  %xor90.9 = xor i32 %conv84.9, %conv89.9
  %conv91.9 = trunc i32 %xor90.9 to i8
  %scevgep50.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 9
  store i8 %conv91.9, i8* %scevgep50.9, align 1
  %scevgep31.10 = getelementptr i8, i8* %b, i64 10
  %432 = load i8, i8* %scevgep31.10, align 1
  %conv44.10 = zext i8 %432 to i32
  %scevgep34.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 10
  %433 = load i8, i8* %scevgep34.10, align 1
  %conv49.10 = zext i8 %433 to i32
  %xor.10 = xor i32 %conv44.10, %conv49.10
  %conv50.10 = trunc i32 %xor.10 to i8
  %scevgep38.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 10
  store i8 %conv50.10, i8* %scevgep38.10, align 1
  %434 = load i8, i8* %a, align 1
  %conv57.10 = zext i8 %434 to i32
  %xor58.10 = xor i32 %conv57.10, 1
  %conv59.10 = trunc i32 %xor58.10 to i8
  %scevgep35.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 10
  %435 = load i8, i8* %scevgep35.10, align 1
  %call64.10 = call zeroext i8 @mult(i8 zeroext %conv59.10, i8 zeroext %435)
  %scevgep42.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 10
  store i8 %call64.10, i8* %scevgep42.10, align 1
  %436 = load i8, i8* %a, align 1
  %scevgep39.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 10
  %437 = load i8, i8* %scevgep39.10, align 1
  %call75.10 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437)
  %scevgep46.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 10
  store i8 %call75.10, i8* %scevgep46.10, align 1
  %scevgep43.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 10
  %438 = load i8, i8* %scevgep43.10, align 1
  %conv84.10 = zext i8 %438 to i32
  %scevgep47.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 10
  %439 = load i8, i8* %scevgep47.10, align 1
  %conv89.10 = zext i8 %439 to i32
  %xor90.10 = xor i32 %conv84.10, %conv89.10
  %conv91.10 = trunc i32 %xor90.10 to i8
  %scevgep50.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 10
  store i8 %conv91.10, i8* %scevgep50.10, align 1
  %scevgep31.11 = getelementptr i8, i8* %b, i64 11
  %440 = load i8, i8* %scevgep31.11, align 1
  %conv44.11 = zext i8 %440 to i32
  %scevgep34.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 11
  %441 = load i8, i8* %scevgep34.11, align 1
  %conv49.11 = zext i8 %441 to i32
  %xor.11 = xor i32 %conv44.11, %conv49.11
  %conv50.11 = trunc i32 %xor.11 to i8
  %scevgep38.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 11
  store i8 %conv50.11, i8* %scevgep38.11, align 1
  %442 = load i8, i8* %a, align 1
  %conv57.11 = zext i8 %442 to i32
  %xor58.11 = xor i32 %conv57.11, 1
  %conv59.11 = trunc i32 %xor58.11 to i8
  %scevgep35.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 11
  %443 = load i8, i8* %scevgep35.11, align 1
  %call64.11 = call zeroext i8 @mult(i8 zeroext %conv59.11, i8 zeroext %443)
  %scevgep42.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 11
  store i8 %call64.11, i8* %scevgep42.11, align 1
  %444 = load i8, i8* %a, align 1
  %scevgep39.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 11
  %445 = load i8, i8* %scevgep39.11, align 1
  %call75.11 = call zeroext i8 @mult(i8 zeroext %444, i8 zeroext %445)
  %scevgep46.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 11
  store i8 %call75.11, i8* %scevgep46.11, align 1
  %scevgep43.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 11
  %446 = load i8, i8* %scevgep43.11, align 1
  %conv84.11 = zext i8 %446 to i32
  %scevgep47.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 11
  %447 = load i8, i8* %scevgep47.11, align 1
  %conv89.11 = zext i8 %447 to i32
  %xor90.11 = xor i32 %conv84.11, %conv89.11
  %conv91.11 = trunc i32 %xor90.11 to i8
  %scevgep50.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 11
  store i8 %conv91.11, i8* %scevgep50.11, align 1
  %scevgep31.12 = getelementptr i8, i8* %b, i64 12
  %448 = load i8, i8* %scevgep31.12, align 1
  %conv44.12 = zext i8 %448 to i32
  %scevgep34.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 12
  %449 = load i8, i8* %scevgep34.12, align 1
  %conv49.12 = zext i8 %449 to i32
  %xor.12 = xor i32 %conv44.12, %conv49.12
  %conv50.12 = trunc i32 %xor.12 to i8
  %scevgep38.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 12
  store i8 %conv50.12, i8* %scevgep38.12, align 1
  %450 = load i8, i8* %a, align 1
  %conv57.12 = zext i8 %450 to i32
  %xor58.12 = xor i32 %conv57.12, 1
  %conv59.12 = trunc i32 %xor58.12 to i8
  %scevgep35.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 12
  %451 = load i8, i8* %scevgep35.12, align 1
  %call64.12 = call zeroext i8 @mult(i8 zeroext %conv59.12, i8 zeroext %451)
  %scevgep42.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 12
  store i8 %call64.12, i8* %scevgep42.12, align 1
  %452 = load i8, i8* %a, align 1
  %scevgep39.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 12
  %453 = load i8, i8* %scevgep39.12, align 1
  %call75.12 = call zeroext i8 @mult(i8 zeroext %452, i8 zeroext %453)
  %scevgep46.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 12
  store i8 %call75.12, i8* %scevgep46.12, align 1
  %scevgep43.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 12
  %454 = load i8, i8* %scevgep43.12, align 1
  %conv84.12 = zext i8 %454 to i32
  %scevgep47.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 12
  %455 = load i8, i8* %scevgep47.12, align 1
  %conv89.12 = zext i8 %455 to i32
  %xor90.12 = xor i32 %conv84.12, %conv89.12
  %conv91.12 = trunc i32 %xor90.12 to i8
  %scevgep50.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 12
  store i8 %conv91.12, i8* %scevgep50.12, align 1
  %scevgep31.13 = getelementptr i8, i8* %b, i64 13
  %456 = load i8, i8* %scevgep31.13, align 1
  %conv44.13 = zext i8 %456 to i32
  %scevgep34.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 13
  %457 = load i8, i8* %scevgep34.13, align 1
  %conv49.13 = zext i8 %457 to i32
  %xor.13 = xor i32 %conv44.13, %conv49.13
  %conv50.13 = trunc i32 %xor.13 to i8
  %scevgep38.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 13
  store i8 %conv50.13, i8* %scevgep38.13, align 1
  %458 = load i8, i8* %a, align 1
  %conv57.13 = zext i8 %458 to i32
  %xor58.13 = xor i32 %conv57.13, 1
  %conv59.13 = trunc i32 %xor58.13 to i8
  %scevgep35.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 13
  %459 = load i8, i8* %scevgep35.13, align 1
  %call64.13 = call zeroext i8 @mult(i8 zeroext %conv59.13, i8 zeroext %459)
  %scevgep42.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 13
  store i8 %call64.13, i8* %scevgep42.13, align 1
  %460 = load i8, i8* %a, align 1
  %scevgep39.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 13
  %461 = load i8, i8* %scevgep39.13, align 1
  %call75.13 = call zeroext i8 @mult(i8 zeroext %460, i8 zeroext %461)
  %scevgep46.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 13
  store i8 %call75.13, i8* %scevgep46.13, align 1
  %scevgep43.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 13
  %462 = load i8, i8* %scevgep43.13, align 1
  %conv84.13 = zext i8 %462 to i32
  %scevgep47.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 13
  %463 = load i8, i8* %scevgep47.13, align 1
  %conv89.13 = zext i8 %463 to i32
  %xor90.13 = xor i32 %conv84.13, %conv89.13
  %conv91.13 = trunc i32 %xor90.13 to i8
  %scevgep50.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 13
  store i8 %conv91.13, i8* %scevgep50.13, align 1
  %scevgep31.14 = getelementptr i8, i8* %b, i64 14
  %464 = load i8, i8* %scevgep31.14, align 1
  %conv44.14 = zext i8 %464 to i32
  %scevgep34.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 14
  %465 = load i8, i8* %scevgep34.14, align 1
  %conv49.14 = zext i8 %465 to i32
  %xor.14 = xor i32 %conv44.14, %conv49.14
  %conv50.14 = trunc i32 %xor.14 to i8
  %scevgep38.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 14
  store i8 %conv50.14, i8* %scevgep38.14, align 1
  %466 = load i8, i8* %a, align 1
  %conv57.14 = zext i8 %466 to i32
  %xor58.14 = xor i32 %conv57.14, 1
  %conv59.14 = trunc i32 %xor58.14 to i8
  %scevgep35.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 14
  %467 = load i8, i8* %scevgep35.14, align 1
  %call64.14 = call zeroext i8 @mult(i8 zeroext %conv59.14, i8 zeroext %467)
  %scevgep42.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 14
  store i8 %call64.14, i8* %scevgep42.14, align 1
  %468 = load i8, i8* %a, align 1
  %scevgep39.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 14
  %469 = load i8, i8* %scevgep39.14, align 1
  %call75.14 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %469)
  %scevgep46.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 14
  store i8 %call75.14, i8* %scevgep46.14, align 1
  %scevgep43.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 14
  %470 = load i8, i8* %scevgep43.14, align 1
  %conv84.14 = zext i8 %470 to i32
  %scevgep47.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 14
  %471 = load i8, i8* %scevgep47.14, align 1
  %conv89.14 = zext i8 %471 to i32
  %xor90.14 = xor i32 %conv84.14, %conv89.14
  %conv91.14 = trunc i32 %xor90.14 to i8
  %scevgep50.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 14
  store i8 %conv91.14, i8* %scevgep50.14, align 1
  %scevgep31.15 = getelementptr i8, i8* %b, i64 15
  %472 = load i8, i8* %scevgep31.15, align 1
  %conv44.15 = zext i8 %472 to i32
  %scevgep34.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 15
  %473 = load i8, i8* %scevgep34.15, align 1
  %conv49.15 = zext i8 %473 to i32
  %xor.15 = xor i32 %conv44.15, %conv49.15
  %conv50.15 = trunc i32 %xor.15 to i8
  %scevgep38.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 15
  store i8 %conv50.15, i8* %scevgep38.15, align 1
  %474 = load i8, i8* %a, align 1
  %conv57.15 = zext i8 %474 to i32
  %xor58.15 = xor i32 %conv57.15, 1
  %conv59.15 = trunc i32 %xor58.15 to i8
  %scevgep35.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 15
  %475 = load i8, i8* %scevgep35.15, align 1
  %call64.15 = call zeroext i8 @mult(i8 zeroext %conv59.15, i8 zeroext %475)
  %scevgep42.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 15
  store i8 %call64.15, i8* %scevgep42.15, align 1
  %476 = load i8, i8* %a, align 1
  %scevgep39.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 0, i64 15
  %477 = load i8, i8* %scevgep39.15, align 1
  %call75.15 = call zeroext i8 @mult(i8 zeroext %476, i8 zeroext %477)
  %scevgep46.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 15
  store i8 %call75.15, i8* %scevgep46.15, align 1
  %scevgep43.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 0, i64 15
  %478 = load i8, i8* %scevgep43.15, align 1
  %conv84.15 = zext i8 %478 to i32
  %scevgep47.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 0, i64 15
  %479 = load i8, i8* %scevgep47.15, align 1
  %conv89.15 = zext i8 %479 to i32
  %xor90.15 = xor i32 %conv84.15, %conv89.15
  %conv91.15 = trunc i32 %xor90.15 to i8
  %scevgep50.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 15
  store i8 %conv91.15, i8* %scevgep50.15, align 1
  %scevgep33 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1, i64 0
  %480 = bitcast i8* %scevgep33 to [16 x [16 x i8]]*
  %scevgep37 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 1, i64 0
  %481 = bitcast i8* %scevgep37 to [16 x [16 x i8]]*
  %scevgep41 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 1, i64 0
  %482 = bitcast i8* %scevgep41 to [16 x [16 x i8]]*
  %scevgep45 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 1, i64 0
  %483 = bitcast i8* %scevgep45 to [16 x [16 x i8]]*
  %scevgep49 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 1, i64 0
  %484 = bitcast i8* %scevgep49 to [16 x [16 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %485 = load i8, i8* %b, align 1
  %conv44.1228 = zext i8 %485 to i32
  %scevgep34.1229 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 0
  %486 = load i8, i8* %scevgep34.1229, align 1
  %conv49.1230 = zext i8 %486 to i32
  %xor.1231 = xor i32 %conv44.1228, %conv49.1230
  %conv50.1232 = trunc i32 %xor.1231 to i8
  %scevgep38.1233 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 0
  store i8 %conv50.1232, i8* %scevgep38.1233, align 1
  %487 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1234 = zext i8 %487 to i32
  %xor58.1235 = xor i32 %conv57.1234, 1
  %conv59.1236 = trunc i32 %xor58.1235 to i8
  %scevgep35.1237 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 0
  %488 = load i8, i8* %scevgep35.1237, align 1
  %call64.1238 = call zeroext i8 @mult(i8 zeroext %conv59.1236, i8 zeroext %488)
  %scevgep42.1239 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 0
  store i8 %call64.1238, i8* %scevgep42.1239, align 1
  %489 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1240 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 0
  %490 = load i8, i8* %scevgep39.1240, align 1
  %call75.1241 = call zeroext i8 @mult(i8 zeroext %489, i8 zeroext %490)
  %scevgep46.1242 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 0
  store i8 %call75.1241, i8* %scevgep46.1242, align 1
  %scevgep43.1243 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 0
  %491 = load i8, i8* %scevgep43.1243, align 1
  %conv84.1244 = zext i8 %491 to i32
  %scevgep47.1245 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 0
  %492 = load i8, i8* %scevgep47.1245, align 1
  %conv89.1246 = zext i8 %492 to i32
  %xor90.1247 = xor i32 %conv84.1244, %conv89.1246
  %conv91.1248 = trunc i32 %xor90.1247 to i8
  %scevgep50.1249 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 0
  store i8 %conv91.1248, i8* %scevgep50.1249, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %493 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %493 to i32
  %scevgep34.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 2
  %494 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %494 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %495 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %495 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 2
  %496 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %496)
  %scevgep42.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %497 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 2
  %498 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %497, i8 zeroext %498)
  %scevgep46.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 2
  %499 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %499 to i32
  %scevgep47.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 2
  %500 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %500 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep31.3.1 = getelementptr i8, i8* %b, i64 3
  %501 = load i8, i8* %scevgep31.3.1, align 1
  %conv44.3.1 = zext i8 %501 to i32
  %scevgep34.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 3
  %502 = load i8, i8* %scevgep34.3.1, align 1
  %conv49.3.1 = zext i8 %502 to i32
  %xor.3.1 = xor i32 %conv44.3.1, %conv49.3.1
  %conv50.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep38.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 3
  store i8 %conv50.3.1, i8* %scevgep38.3.1, align 1
  %503 = load i8, i8* %arrayidx56.1, align 1
  %conv57.3.1 = zext i8 %503 to i32
  %xor58.3.1 = xor i32 %conv57.3.1, 1
  %conv59.3.1 = trunc i32 %xor58.3.1 to i8
  %scevgep35.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 3
  %504 = load i8, i8* %scevgep35.3.1, align 1
  %call64.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.3.1, i8 zeroext %504)
  %scevgep42.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 3
  store i8 %call64.3.1, i8* %scevgep42.3.1, align 1
  %505 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 3
  %506 = load i8, i8* %scevgep39.3.1, align 1
  %call75.3.1 = call zeroext i8 @mult(i8 zeroext %505, i8 zeroext %506)
  %scevgep46.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 3
  store i8 %call75.3.1, i8* %scevgep46.3.1, align 1
  %scevgep43.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 3
  %507 = load i8, i8* %scevgep43.3.1, align 1
  %conv84.3.1 = zext i8 %507 to i32
  %scevgep47.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 3
  %508 = load i8, i8* %scevgep47.3.1, align 1
  %conv89.3.1 = zext i8 %508 to i32
  %xor90.3.1 = xor i32 %conv84.3.1, %conv89.3.1
  %conv91.3.1 = trunc i32 %xor90.3.1 to i8
  %scevgep50.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 3
  store i8 %conv91.3.1, i8* %scevgep50.3.1, align 1
  %scevgep31.4.1 = getelementptr i8, i8* %b, i64 4
  %509 = load i8, i8* %scevgep31.4.1, align 1
  %conv44.4.1 = zext i8 %509 to i32
  %scevgep34.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 4
  %510 = load i8, i8* %scevgep34.4.1, align 1
  %conv49.4.1 = zext i8 %510 to i32
  %xor.4.1 = xor i32 %conv44.4.1, %conv49.4.1
  %conv50.4.1 = trunc i32 %xor.4.1 to i8
  %scevgep38.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 4
  store i8 %conv50.4.1, i8* %scevgep38.4.1, align 1
  %511 = load i8, i8* %arrayidx56.1, align 1
  %conv57.4.1 = zext i8 %511 to i32
  %xor58.4.1 = xor i32 %conv57.4.1, 1
  %conv59.4.1 = trunc i32 %xor58.4.1 to i8
  %scevgep35.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 4
  %512 = load i8, i8* %scevgep35.4.1, align 1
  %call64.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.4.1, i8 zeroext %512)
  %scevgep42.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 4
  store i8 %call64.4.1, i8* %scevgep42.4.1, align 1
  %513 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 4
  %514 = load i8, i8* %scevgep39.4.1, align 1
  %call75.4.1 = call zeroext i8 @mult(i8 zeroext %513, i8 zeroext %514)
  %scevgep46.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 4
  store i8 %call75.4.1, i8* %scevgep46.4.1, align 1
  %scevgep43.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 4
  %515 = load i8, i8* %scevgep43.4.1, align 1
  %conv84.4.1 = zext i8 %515 to i32
  %scevgep47.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 4
  %516 = load i8, i8* %scevgep47.4.1, align 1
  %conv89.4.1 = zext i8 %516 to i32
  %xor90.4.1 = xor i32 %conv84.4.1, %conv89.4.1
  %conv91.4.1 = trunc i32 %xor90.4.1 to i8
  %scevgep50.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 4
  store i8 %conv91.4.1, i8* %scevgep50.4.1, align 1
  %scevgep31.5.1 = getelementptr i8, i8* %b, i64 5
  %517 = load i8, i8* %scevgep31.5.1, align 1
  %conv44.5.1 = zext i8 %517 to i32
  %scevgep34.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 5
  %518 = load i8, i8* %scevgep34.5.1, align 1
  %conv49.5.1 = zext i8 %518 to i32
  %xor.5.1 = xor i32 %conv44.5.1, %conv49.5.1
  %conv50.5.1 = trunc i32 %xor.5.1 to i8
  %scevgep38.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 5
  store i8 %conv50.5.1, i8* %scevgep38.5.1, align 1
  %519 = load i8, i8* %arrayidx56.1, align 1
  %conv57.5.1 = zext i8 %519 to i32
  %xor58.5.1 = xor i32 %conv57.5.1, 1
  %conv59.5.1 = trunc i32 %xor58.5.1 to i8
  %scevgep35.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 5
  %520 = load i8, i8* %scevgep35.5.1, align 1
  %call64.5.1 = call zeroext i8 @mult(i8 zeroext %conv59.5.1, i8 zeroext %520)
  %scevgep42.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 5
  store i8 %call64.5.1, i8* %scevgep42.5.1, align 1
  %521 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 5
  %522 = load i8, i8* %scevgep39.5.1, align 1
  %call75.5.1 = call zeroext i8 @mult(i8 zeroext %521, i8 zeroext %522)
  %scevgep46.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 5
  store i8 %call75.5.1, i8* %scevgep46.5.1, align 1
  %scevgep43.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 5
  %523 = load i8, i8* %scevgep43.5.1, align 1
  %conv84.5.1 = zext i8 %523 to i32
  %scevgep47.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 5
  %524 = load i8, i8* %scevgep47.5.1, align 1
  %conv89.5.1 = zext i8 %524 to i32
  %xor90.5.1 = xor i32 %conv84.5.1, %conv89.5.1
  %conv91.5.1 = trunc i32 %xor90.5.1 to i8
  %scevgep50.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 5
  store i8 %conv91.5.1, i8* %scevgep50.5.1, align 1
  %scevgep31.6.1 = getelementptr i8, i8* %b, i64 6
  %525 = load i8, i8* %scevgep31.6.1, align 1
  %conv44.6.1 = zext i8 %525 to i32
  %scevgep34.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 6
  %526 = load i8, i8* %scevgep34.6.1, align 1
  %conv49.6.1 = zext i8 %526 to i32
  %xor.6.1 = xor i32 %conv44.6.1, %conv49.6.1
  %conv50.6.1 = trunc i32 %xor.6.1 to i8
  %scevgep38.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 6
  store i8 %conv50.6.1, i8* %scevgep38.6.1, align 1
  %527 = load i8, i8* %arrayidx56.1, align 1
  %conv57.6.1 = zext i8 %527 to i32
  %xor58.6.1 = xor i32 %conv57.6.1, 1
  %conv59.6.1 = trunc i32 %xor58.6.1 to i8
  %scevgep35.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 6
  %528 = load i8, i8* %scevgep35.6.1, align 1
  %call64.6.1 = call zeroext i8 @mult(i8 zeroext %conv59.6.1, i8 zeroext %528)
  %scevgep42.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 6
  store i8 %call64.6.1, i8* %scevgep42.6.1, align 1
  %529 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 6
  %530 = load i8, i8* %scevgep39.6.1, align 1
  %call75.6.1 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530)
  %scevgep46.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 6
  store i8 %call75.6.1, i8* %scevgep46.6.1, align 1
  %scevgep43.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 6
  %531 = load i8, i8* %scevgep43.6.1, align 1
  %conv84.6.1 = zext i8 %531 to i32
  %scevgep47.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 6
  %532 = load i8, i8* %scevgep47.6.1, align 1
  %conv89.6.1 = zext i8 %532 to i32
  %xor90.6.1 = xor i32 %conv84.6.1, %conv89.6.1
  %conv91.6.1 = trunc i32 %xor90.6.1 to i8
  %scevgep50.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 6
  store i8 %conv91.6.1, i8* %scevgep50.6.1, align 1
  %scevgep31.7.1 = getelementptr i8, i8* %b, i64 7
  %533 = load i8, i8* %scevgep31.7.1, align 1
  %conv44.7.1 = zext i8 %533 to i32
  %scevgep34.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 7
  %534 = load i8, i8* %scevgep34.7.1, align 1
  %conv49.7.1 = zext i8 %534 to i32
  %xor.7.1 = xor i32 %conv44.7.1, %conv49.7.1
  %conv50.7.1 = trunc i32 %xor.7.1 to i8
  %scevgep38.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 7
  store i8 %conv50.7.1, i8* %scevgep38.7.1, align 1
  %535 = load i8, i8* %arrayidx56.1, align 1
  %conv57.7.1 = zext i8 %535 to i32
  %xor58.7.1 = xor i32 %conv57.7.1, 1
  %conv59.7.1 = trunc i32 %xor58.7.1 to i8
  %scevgep35.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 7
  %536 = load i8, i8* %scevgep35.7.1, align 1
  %call64.7.1 = call zeroext i8 @mult(i8 zeroext %conv59.7.1, i8 zeroext %536)
  %scevgep42.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 7
  store i8 %call64.7.1, i8* %scevgep42.7.1, align 1
  %537 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 7
  %538 = load i8, i8* %scevgep39.7.1, align 1
  %call75.7.1 = call zeroext i8 @mult(i8 zeroext %537, i8 zeroext %538)
  %scevgep46.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 7
  store i8 %call75.7.1, i8* %scevgep46.7.1, align 1
  %scevgep43.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 7
  %539 = load i8, i8* %scevgep43.7.1, align 1
  %conv84.7.1 = zext i8 %539 to i32
  %scevgep47.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 7
  %540 = load i8, i8* %scevgep47.7.1, align 1
  %conv89.7.1 = zext i8 %540 to i32
  %xor90.7.1 = xor i32 %conv84.7.1, %conv89.7.1
  %conv91.7.1 = trunc i32 %xor90.7.1 to i8
  %scevgep50.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 7
  store i8 %conv91.7.1, i8* %scevgep50.7.1, align 1
  %scevgep31.8.1 = getelementptr i8, i8* %b, i64 8
  %541 = load i8, i8* %scevgep31.8.1, align 1
  %conv44.8.1 = zext i8 %541 to i32
  %scevgep34.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 8
  %542 = load i8, i8* %scevgep34.8.1, align 1
  %conv49.8.1 = zext i8 %542 to i32
  %xor.8.1 = xor i32 %conv44.8.1, %conv49.8.1
  %conv50.8.1 = trunc i32 %xor.8.1 to i8
  %scevgep38.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 8
  store i8 %conv50.8.1, i8* %scevgep38.8.1, align 1
  %543 = load i8, i8* %arrayidx56.1, align 1
  %conv57.8.1 = zext i8 %543 to i32
  %xor58.8.1 = xor i32 %conv57.8.1, 1
  %conv59.8.1 = trunc i32 %xor58.8.1 to i8
  %scevgep35.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 8
  %544 = load i8, i8* %scevgep35.8.1, align 1
  %call64.8.1 = call zeroext i8 @mult(i8 zeroext %conv59.8.1, i8 zeroext %544)
  %scevgep42.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 8
  store i8 %call64.8.1, i8* %scevgep42.8.1, align 1
  %545 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 8
  %546 = load i8, i8* %scevgep39.8.1, align 1
  %call75.8.1 = call zeroext i8 @mult(i8 zeroext %545, i8 zeroext %546)
  %scevgep46.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 8
  store i8 %call75.8.1, i8* %scevgep46.8.1, align 1
  %scevgep43.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 8
  %547 = load i8, i8* %scevgep43.8.1, align 1
  %conv84.8.1 = zext i8 %547 to i32
  %scevgep47.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 8
  %548 = load i8, i8* %scevgep47.8.1, align 1
  %conv89.8.1 = zext i8 %548 to i32
  %xor90.8.1 = xor i32 %conv84.8.1, %conv89.8.1
  %conv91.8.1 = trunc i32 %xor90.8.1 to i8
  %scevgep50.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 8
  store i8 %conv91.8.1, i8* %scevgep50.8.1, align 1
  %scevgep31.9.1 = getelementptr i8, i8* %b, i64 9
  %549 = load i8, i8* %scevgep31.9.1, align 1
  %conv44.9.1 = zext i8 %549 to i32
  %scevgep34.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 9
  %550 = load i8, i8* %scevgep34.9.1, align 1
  %conv49.9.1 = zext i8 %550 to i32
  %xor.9.1 = xor i32 %conv44.9.1, %conv49.9.1
  %conv50.9.1 = trunc i32 %xor.9.1 to i8
  %scevgep38.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 9
  store i8 %conv50.9.1, i8* %scevgep38.9.1, align 1
  %551 = load i8, i8* %arrayidx56.1, align 1
  %conv57.9.1 = zext i8 %551 to i32
  %xor58.9.1 = xor i32 %conv57.9.1, 1
  %conv59.9.1 = trunc i32 %xor58.9.1 to i8
  %scevgep35.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 9
  %552 = load i8, i8* %scevgep35.9.1, align 1
  %call64.9.1 = call zeroext i8 @mult(i8 zeroext %conv59.9.1, i8 zeroext %552)
  %scevgep42.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 9
  store i8 %call64.9.1, i8* %scevgep42.9.1, align 1
  %553 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 9
  %554 = load i8, i8* %scevgep39.9.1, align 1
  %call75.9.1 = call zeroext i8 @mult(i8 zeroext %553, i8 zeroext %554)
  %scevgep46.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 9
  store i8 %call75.9.1, i8* %scevgep46.9.1, align 1
  %scevgep43.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 9
  %555 = load i8, i8* %scevgep43.9.1, align 1
  %conv84.9.1 = zext i8 %555 to i32
  %scevgep47.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 9
  %556 = load i8, i8* %scevgep47.9.1, align 1
  %conv89.9.1 = zext i8 %556 to i32
  %xor90.9.1 = xor i32 %conv84.9.1, %conv89.9.1
  %conv91.9.1 = trunc i32 %xor90.9.1 to i8
  %scevgep50.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 9
  store i8 %conv91.9.1, i8* %scevgep50.9.1, align 1
  %scevgep31.10.1 = getelementptr i8, i8* %b, i64 10
  %557 = load i8, i8* %scevgep31.10.1, align 1
  %conv44.10.1 = zext i8 %557 to i32
  %scevgep34.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 10
  %558 = load i8, i8* %scevgep34.10.1, align 1
  %conv49.10.1 = zext i8 %558 to i32
  %xor.10.1 = xor i32 %conv44.10.1, %conv49.10.1
  %conv50.10.1 = trunc i32 %xor.10.1 to i8
  %scevgep38.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 10
  store i8 %conv50.10.1, i8* %scevgep38.10.1, align 1
  %559 = load i8, i8* %arrayidx56.1, align 1
  %conv57.10.1 = zext i8 %559 to i32
  %xor58.10.1 = xor i32 %conv57.10.1, 1
  %conv59.10.1 = trunc i32 %xor58.10.1 to i8
  %scevgep35.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 10
  %560 = load i8, i8* %scevgep35.10.1, align 1
  %call64.10.1 = call zeroext i8 @mult(i8 zeroext %conv59.10.1, i8 zeroext %560)
  %scevgep42.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 10
  store i8 %call64.10.1, i8* %scevgep42.10.1, align 1
  %561 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 10
  %562 = load i8, i8* %scevgep39.10.1, align 1
  %call75.10.1 = call zeroext i8 @mult(i8 zeroext %561, i8 zeroext %562)
  %scevgep46.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 10
  store i8 %call75.10.1, i8* %scevgep46.10.1, align 1
  %scevgep43.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 10
  %563 = load i8, i8* %scevgep43.10.1, align 1
  %conv84.10.1 = zext i8 %563 to i32
  %scevgep47.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 10
  %564 = load i8, i8* %scevgep47.10.1, align 1
  %conv89.10.1 = zext i8 %564 to i32
  %xor90.10.1 = xor i32 %conv84.10.1, %conv89.10.1
  %conv91.10.1 = trunc i32 %xor90.10.1 to i8
  %scevgep50.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 10
  store i8 %conv91.10.1, i8* %scevgep50.10.1, align 1
  %scevgep31.11.1 = getelementptr i8, i8* %b, i64 11
  %565 = load i8, i8* %scevgep31.11.1, align 1
  %conv44.11.1 = zext i8 %565 to i32
  %scevgep34.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 11
  %566 = load i8, i8* %scevgep34.11.1, align 1
  %conv49.11.1 = zext i8 %566 to i32
  %xor.11.1 = xor i32 %conv44.11.1, %conv49.11.1
  %conv50.11.1 = trunc i32 %xor.11.1 to i8
  %scevgep38.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 11
  store i8 %conv50.11.1, i8* %scevgep38.11.1, align 1
  %567 = load i8, i8* %arrayidx56.1, align 1
  %conv57.11.1 = zext i8 %567 to i32
  %xor58.11.1 = xor i32 %conv57.11.1, 1
  %conv59.11.1 = trunc i32 %xor58.11.1 to i8
  %scevgep35.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 11
  %568 = load i8, i8* %scevgep35.11.1, align 1
  %call64.11.1 = call zeroext i8 @mult(i8 zeroext %conv59.11.1, i8 zeroext %568)
  %scevgep42.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 11
  store i8 %call64.11.1, i8* %scevgep42.11.1, align 1
  %569 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 11
  %570 = load i8, i8* %scevgep39.11.1, align 1
  %call75.11.1 = call zeroext i8 @mult(i8 zeroext %569, i8 zeroext %570)
  %scevgep46.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 11
  store i8 %call75.11.1, i8* %scevgep46.11.1, align 1
  %scevgep43.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 11
  %571 = load i8, i8* %scevgep43.11.1, align 1
  %conv84.11.1 = zext i8 %571 to i32
  %scevgep47.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 11
  %572 = load i8, i8* %scevgep47.11.1, align 1
  %conv89.11.1 = zext i8 %572 to i32
  %xor90.11.1 = xor i32 %conv84.11.1, %conv89.11.1
  %conv91.11.1 = trunc i32 %xor90.11.1 to i8
  %scevgep50.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 11
  store i8 %conv91.11.1, i8* %scevgep50.11.1, align 1
  %scevgep31.12.1 = getelementptr i8, i8* %b, i64 12
  %573 = load i8, i8* %scevgep31.12.1, align 1
  %conv44.12.1 = zext i8 %573 to i32
  %scevgep34.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 12
  %574 = load i8, i8* %scevgep34.12.1, align 1
  %conv49.12.1 = zext i8 %574 to i32
  %xor.12.1 = xor i32 %conv44.12.1, %conv49.12.1
  %conv50.12.1 = trunc i32 %xor.12.1 to i8
  %scevgep38.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 12
  store i8 %conv50.12.1, i8* %scevgep38.12.1, align 1
  %575 = load i8, i8* %arrayidx56.1, align 1
  %conv57.12.1 = zext i8 %575 to i32
  %xor58.12.1 = xor i32 %conv57.12.1, 1
  %conv59.12.1 = trunc i32 %xor58.12.1 to i8
  %scevgep35.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 12
  %576 = load i8, i8* %scevgep35.12.1, align 1
  %call64.12.1 = call zeroext i8 @mult(i8 zeroext %conv59.12.1, i8 zeroext %576)
  %scevgep42.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 12
  store i8 %call64.12.1, i8* %scevgep42.12.1, align 1
  %577 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 12
  %578 = load i8, i8* %scevgep39.12.1, align 1
  %call75.12.1 = call zeroext i8 @mult(i8 zeroext %577, i8 zeroext %578)
  %scevgep46.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 12
  store i8 %call75.12.1, i8* %scevgep46.12.1, align 1
  %scevgep43.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 12
  %579 = load i8, i8* %scevgep43.12.1, align 1
  %conv84.12.1 = zext i8 %579 to i32
  %scevgep47.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 12
  %580 = load i8, i8* %scevgep47.12.1, align 1
  %conv89.12.1 = zext i8 %580 to i32
  %xor90.12.1 = xor i32 %conv84.12.1, %conv89.12.1
  %conv91.12.1 = trunc i32 %xor90.12.1 to i8
  %scevgep50.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 12
  store i8 %conv91.12.1, i8* %scevgep50.12.1, align 1
  %scevgep31.13.1 = getelementptr i8, i8* %b, i64 13
  %581 = load i8, i8* %scevgep31.13.1, align 1
  %conv44.13.1 = zext i8 %581 to i32
  %scevgep34.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 13
  %582 = load i8, i8* %scevgep34.13.1, align 1
  %conv49.13.1 = zext i8 %582 to i32
  %xor.13.1 = xor i32 %conv44.13.1, %conv49.13.1
  %conv50.13.1 = trunc i32 %xor.13.1 to i8
  %scevgep38.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 13
  store i8 %conv50.13.1, i8* %scevgep38.13.1, align 1
  %583 = load i8, i8* %arrayidx56.1, align 1
  %conv57.13.1 = zext i8 %583 to i32
  %xor58.13.1 = xor i32 %conv57.13.1, 1
  %conv59.13.1 = trunc i32 %xor58.13.1 to i8
  %scevgep35.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 13
  %584 = load i8, i8* %scevgep35.13.1, align 1
  %call64.13.1 = call zeroext i8 @mult(i8 zeroext %conv59.13.1, i8 zeroext %584)
  %scevgep42.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 13
  store i8 %call64.13.1, i8* %scevgep42.13.1, align 1
  %585 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 13
  %586 = load i8, i8* %scevgep39.13.1, align 1
  %call75.13.1 = call zeroext i8 @mult(i8 zeroext %585, i8 zeroext %586)
  %scevgep46.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 13
  store i8 %call75.13.1, i8* %scevgep46.13.1, align 1
  %scevgep43.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 13
  %587 = load i8, i8* %scevgep43.13.1, align 1
  %conv84.13.1 = zext i8 %587 to i32
  %scevgep47.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 13
  %588 = load i8, i8* %scevgep47.13.1, align 1
  %conv89.13.1 = zext i8 %588 to i32
  %xor90.13.1 = xor i32 %conv84.13.1, %conv89.13.1
  %conv91.13.1 = trunc i32 %xor90.13.1 to i8
  %scevgep50.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 13
  store i8 %conv91.13.1, i8* %scevgep50.13.1, align 1
  %scevgep31.14.1 = getelementptr i8, i8* %b, i64 14
  %589 = load i8, i8* %scevgep31.14.1, align 1
  %conv44.14.1 = zext i8 %589 to i32
  %scevgep34.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 14
  %590 = load i8, i8* %scevgep34.14.1, align 1
  %conv49.14.1 = zext i8 %590 to i32
  %xor.14.1 = xor i32 %conv44.14.1, %conv49.14.1
  %conv50.14.1 = trunc i32 %xor.14.1 to i8
  %scevgep38.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 14
  store i8 %conv50.14.1, i8* %scevgep38.14.1, align 1
  %591 = load i8, i8* %arrayidx56.1, align 1
  %conv57.14.1 = zext i8 %591 to i32
  %xor58.14.1 = xor i32 %conv57.14.1, 1
  %conv59.14.1 = trunc i32 %xor58.14.1 to i8
  %scevgep35.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 14
  %592 = load i8, i8* %scevgep35.14.1, align 1
  %call64.14.1 = call zeroext i8 @mult(i8 zeroext %conv59.14.1, i8 zeroext %592)
  %scevgep42.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 14
  store i8 %call64.14.1, i8* %scevgep42.14.1, align 1
  %593 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 14
  %594 = load i8, i8* %scevgep39.14.1, align 1
  %call75.14.1 = call zeroext i8 @mult(i8 zeroext %593, i8 zeroext %594)
  %scevgep46.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 14
  store i8 %call75.14.1, i8* %scevgep46.14.1, align 1
  %scevgep43.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 14
  %595 = load i8, i8* %scevgep43.14.1, align 1
  %conv84.14.1 = zext i8 %595 to i32
  %scevgep47.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 14
  %596 = load i8, i8* %scevgep47.14.1, align 1
  %conv89.14.1 = zext i8 %596 to i32
  %xor90.14.1 = xor i32 %conv84.14.1, %conv89.14.1
  %conv91.14.1 = trunc i32 %xor90.14.1 to i8
  %scevgep50.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 14
  store i8 %conv91.14.1, i8* %scevgep50.14.1, align 1
  %scevgep31.15.1 = getelementptr i8, i8* %b, i64 15
  %597 = load i8, i8* %scevgep31.15.1, align 1
  %conv44.15.1 = zext i8 %597 to i32
  %scevgep34.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 15
  %598 = load i8, i8* %scevgep34.15.1, align 1
  %conv49.15.1 = zext i8 %598 to i32
  %xor.15.1 = xor i32 %conv44.15.1, %conv49.15.1
  %conv50.15.1 = trunc i32 %xor.15.1 to i8
  %scevgep38.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 15
  store i8 %conv50.15.1, i8* %scevgep38.15.1, align 1
  %599 = load i8, i8* %arrayidx56.1, align 1
  %conv57.15.1 = zext i8 %599 to i32
  %xor58.15.1 = xor i32 %conv57.15.1, 1
  %conv59.15.1 = trunc i32 %xor58.15.1 to i8
  %scevgep35.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 0, i64 15
  %600 = load i8, i8* %scevgep35.15.1, align 1
  %call64.15.1 = call zeroext i8 @mult(i8 zeroext %conv59.15.1, i8 zeroext %600)
  %scevgep42.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 15
  store i8 %call64.15.1, i8* %scevgep42.15.1, align 1
  %601 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 0, i64 15
  %602 = load i8, i8* %scevgep39.15.1, align 1
  %call75.15.1 = call zeroext i8 @mult(i8 zeroext %601, i8 zeroext %602)
  %scevgep46.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 15
  store i8 %call75.15.1, i8* %scevgep46.15.1, align 1
  %scevgep43.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 15
  %603 = load i8, i8* %scevgep43.15.1, align 1
  %conv84.15.1 = zext i8 %603 to i32
  %scevgep47.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 0, i64 15
  %604 = load i8, i8* %scevgep47.15.1, align 1
  %conv89.15.1 = zext i8 %604 to i32
  %xor90.15.1 = xor i32 %conv84.15.1, %conv89.15.1
  %conv91.15.1 = trunc i32 %xor90.15.1 to i8
  %scevgep50.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 0, i64 15
  store i8 %conv91.15.1, i8* %scevgep50.15.1, align 1
  %scevgep33.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %480, i64 0, i64 1, i64 0
  %605 = bitcast i8* %scevgep33.1 to [16 x [16 x i8]]*
  %scevgep37.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %481, i64 0, i64 1, i64 0
  %606 = bitcast i8* %scevgep37.1 to [16 x [16 x i8]]*
  %scevgep41.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 1, i64 0
  %607 = bitcast i8* %scevgep41.1 to [16 x [16 x i8]]*
  %scevgep45.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 1, i64 0
  %608 = bitcast i8* %scevgep45.1 to [16 x [16 x i8]]*
  %scevgep49.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %484, i64 0, i64 1, i64 0
  %609 = bitcast i8* %scevgep49.1 to [16 x [16 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %610 = load i8, i8* %b, align 1
  %conv44.2255 = zext i8 %610 to i32
  %scevgep34.2256 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 0
  %611 = load i8, i8* %scevgep34.2256, align 1
  %conv49.2257 = zext i8 %611 to i32
  %xor.2258 = xor i32 %conv44.2255, %conv49.2257
  %conv50.2259 = trunc i32 %xor.2258 to i8
  %scevgep38.2260 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 0
  store i8 %conv50.2259, i8* %scevgep38.2260, align 1
  %612 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2261 = zext i8 %612 to i32
  %xor58.2262 = xor i32 %conv57.2261, 1
  %conv59.2263 = trunc i32 %xor58.2262 to i8
  %scevgep35.2264 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 0
  %613 = load i8, i8* %scevgep35.2264, align 1
  %call64.2265 = call zeroext i8 @mult(i8 zeroext %conv59.2263, i8 zeroext %613)
  %scevgep42.2266 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 0
  store i8 %call64.2265, i8* %scevgep42.2266, align 1
  %614 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2267 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 0
  %615 = load i8, i8* %scevgep39.2267, align 1
  %call75.2268 = call zeroext i8 @mult(i8 zeroext %614, i8 zeroext %615)
  %scevgep46.2269 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 0
  store i8 %call75.2268, i8* %scevgep46.2269, align 1
  %scevgep43.2270 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 0
  %616 = load i8, i8* %scevgep43.2270, align 1
  %conv84.2271 = zext i8 %616 to i32
  %scevgep47.2272 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 0
  %617 = load i8, i8* %scevgep47.2272, align 1
  %conv89.2273 = zext i8 %617 to i32
  %xor90.2274 = xor i32 %conv84.2271, %conv89.2273
  %conv91.2275 = trunc i32 %xor90.2274 to i8
  %scevgep50.2276 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 0
  store i8 %conv91.2275, i8* %scevgep50.2276, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %618 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %618 to i32
  %scevgep34.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 1
  %619 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %619 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %620 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %620 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 1
  %621 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %621)
  %scevgep42.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %622 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 1
  %623 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %622, i8 zeroext %623)
  %scevgep46.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 1
  %624 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %624 to i32
  %scevgep47.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 1
  %625 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %625 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %scevgep31.3.2 = getelementptr i8, i8* %b, i64 3
  %626 = load i8, i8* %scevgep31.3.2, align 1
  %conv44.3.2 = zext i8 %626 to i32
  %scevgep34.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 3
  %627 = load i8, i8* %scevgep34.3.2, align 1
  %conv49.3.2 = zext i8 %627 to i32
  %xor.3.2 = xor i32 %conv44.3.2, %conv49.3.2
  %conv50.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep38.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 3
  store i8 %conv50.3.2, i8* %scevgep38.3.2, align 1
  %628 = load i8, i8* %arrayidx56.2, align 1
  %conv57.3.2 = zext i8 %628 to i32
  %xor58.3.2 = xor i32 %conv57.3.2, 1
  %conv59.3.2 = trunc i32 %xor58.3.2 to i8
  %scevgep35.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 3
  %629 = load i8, i8* %scevgep35.3.2, align 1
  %call64.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.3.2, i8 zeroext %629)
  %scevgep42.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 3
  store i8 %call64.3.2, i8* %scevgep42.3.2, align 1
  %630 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 3
  %631 = load i8, i8* %scevgep39.3.2, align 1
  %call75.3.2 = call zeroext i8 @mult(i8 zeroext %630, i8 zeroext %631)
  %scevgep46.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 3
  store i8 %call75.3.2, i8* %scevgep46.3.2, align 1
  %scevgep43.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 3
  %632 = load i8, i8* %scevgep43.3.2, align 1
  %conv84.3.2 = zext i8 %632 to i32
  %scevgep47.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 3
  %633 = load i8, i8* %scevgep47.3.2, align 1
  %conv89.3.2 = zext i8 %633 to i32
  %xor90.3.2 = xor i32 %conv84.3.2, %conv89.3.2
  %conv91.3.2 = trunc i32 %xor90.3.2 to i8
  %scevgep50.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 3
  store i8 %conv91.3.2, i8* %scevgep50.3.2, align 1
  %scevgep31.4.2 = getelementptr i8, i8* %b, i64 4
  %634 = load i8, i8* %scevgep31.4.2, align 1
  %conv44.4.2 = zext i8 %634 to i32
  %scevgep34.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 4
  %635 = load i8, i8* %scevgep34.4.2, align 1
  %conv49.4.2 = zext i8 %635 to i32
  %xor.4.2 = xor i32 %conv44.4.2, %conv49.4.2
  %conv50.4.2 = trunc i32 %xor.4.2 to i8
  %scevgep38.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 4
  store i8 %conv50.4.2, i8* %scevgep38.4.2, align 1
  %636 = load i8, i8* %arrayidx56.2, align 1
  %conv57.4.2 = zext i8 %636 to i32
  %xor58.4.2 = xor i32 %conv57.4.2, 1
  %conv59.4.2 = trunc i32 %xor58.4.2 to i8
  %scevgep35.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 4
  %637 = load i8, i8* %scevgep35.4.2, align 1
  %call64.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.4.2, i8 zeroext %637)
  %scevgep42.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 4
  store i8 %call64.4.2, i8* %scevgep42.4.2, align 1
  %638 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 4
  %639 = load i8, i8* %scevgep39.4.2, align 1
  %call75.4.2 = call zeroext i8 @mult(i8 zeroext %638, i8 zeroext %639)
  %scevgep46.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 4
  store i8 %call75.4.2, i8* %scevgep46.4.2, align 1
  %scevgep43.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 4
  %640 = load i8, i8* %scevgep43.4.2, align 1
  %conv84.4.2 = zext i8 %640 to i32
  %scevgep47.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 4
  %641 = load i8, i8* %scevgep47.4.2, align 1
  %conv89.4.2 = zext i8 %641 to i32
  %xor90.4.2 = xor i32 %conv84.4.2, %conv89.4.2
  %conv91.4.2 = trunc i32 %xor90.4.2 to i8
  %scevgep50.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 4
  store i8 %conv91.4.2, i8* %scevgep50.4.2, align 1
  %scevgep31.5.2 = getelementptr i8, i8* %b, i64 5
  %642 = load i8, i8* %scevgep31.5.2, align 1
  %conv44.5.2 = zext i8 %642 to i32
  %scevgep34.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 5
  %643 = load i8, i8* %scevgep34.5.2, align 1
  %conv49.5.2 = zext i8 %643 to i32
  %xor.5.2 = xor i32 %conv44.5.2, %conv49.5.2
  %conv50.5.2 = trunc i32 %xor.5.2 to i8
  %scevgep38.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 5
  store i8 %conv50.5.2, i8* %scevgep38.5.2, align 1
  %644 = load i8, i8* %arrayidx56.2, align 1
  %conv57.5.2 = zext i8 %644 to i32
  %xor58.5.2 = xor i32 %conv57.5.2, 1
  %conv59.5.2 = trunc i32 %xor58.5.2 to i8
  %scevgep35.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 5
  %645 = load i8, i8* %scevgep35.5.2, align 1
  %call64.5.2 = call zeroext i8 @mult(i8 zeroext %conv59.5.2, i8 zeroext %645)
  %scevgep42.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 5
  store i8 %call64.5.2, i8* %scevgep42.5.2, align 1
  %646 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 5
  %647 = load i8, i8* %scevgep39.5.2, align 1
  %call75.5.2 = call zeroext i8 @mult(i8 zeroext %646, i8 zeroext %647)
  %scevgep46.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 5
  store i8 %call75.5.2, i8* %scevgep46.5.2, align 1
  %scevgep43.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 5
  %648 = load i8, i8* %scevgep43.5.2, align 1
  %conv84.5.2 = zext i8 %648 to i32
  %scevgep47.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 5
  %649 = load i8, i8* %scevgep47.5.2, align 1
  %conv89.5.2 = zext i8 %649 to i32
  %xor90.5.2 = xor i32 %conv84.5.2, %conv89.5.2
  %conv91.5.2 = trunc i32 %xor90.5.2 to i8
  %scevgep50.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 5
  store i8 %conv91.5.2, i8* %scevgep50.5.2, align 1
  %scevgep31.6.2 = getelementptr i8, i8* %b, i64 6
  %650 = load i8, i8* %scevgep31.6.2, align 1
  %conv44.6.2 = zext i8 %650 to i32
  %scevgep34.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 6
  %651 = load i8, i8* %scevgep34.6.2, align 1
  %conv49.6.2 = zext i8 %651 to i32
  %xor.6.2 = xor i32 %conv44.6.2, %conv49.6.2
  %conv50.6.2 = trunc i32 %xor.6.2 to i8
  %scevgep38.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 6
  store i8 %conv50.6.2, i8* %scevgep38.6.2, align 1
  %652 = load i8, i8* %arrayidx56.2, align 1
  %conv57.6.2 = zext i8 %652 to i32
  %xor58.6.2 = xor i32 %conv57.6.2, 1
  %conv59.6.2 = trunc i32 %xor58.6.2 to i8
  %scevgep35.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 6
  %653 = load i8, i8* %scevgep35.6.2, align 1
  %call64.6.2 = call zeroext i8 @mult(i8 zeroext %conv59.6.2, i8 zeroext %653)
  %scevgep42.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 6
  store i8 %call64.6.2, i8* %scevgep42.6.2, align 1
  %654 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 6
  %655 = load i8, i8* %scevgep39.6.2, align 1
  %call75.6.2 = call zeroext i8 @mult(i8 zeroext %654, i8 zeroext %655)
  %scevgep46.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 6
  store i8 %call75.6.2, i8* %scevgep46.6.2, align 1
  %scevgep43.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 6
  %656 = load i8, i8* %scevgep43.6.2, align 1
  %conv84.6.2 = zext i8 %656 to i32
  %scevgep47.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 6
  %657 = load i8, i8* %scevgep47.6.2, align 1
  %conv89.6.2 = zext i8 %657 to i32
  %xor90.6.2 = xor i32 %conv84.6.2, %conv89.6.2
  %conv91.6.2 = trunc i32 %xor90.6.2 to i8
  %scevgep50.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 6
  store i8 %conv91.6.2, i8* %scevgep50.6.2, align 1
  %scevgep31.7.2 = getelementptr i8, i8* %b, i64 7
  %658 = load i8, i8* %scevgep31.7.2, align 1
  %conv44.7.2 = zext i8 %658 to i32
  %scevgep34.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 7
  %659 = load i8, i8* %scevgep34.7.2, align 1
  %conv49.7.2 = zext i8 %659 to i32
  %xor.7.2 = xor i32 %conv44.7.2, %conv49.7.2
  %conv50.7.2 = trunc i32 %xor.7.2 to i8
  %scevgep38.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 7
  store i8 %conv50.7.2, i8* %scevgep38.7.2, align 1
  %660 = load i8, i8* %arrayidx56.2, align 1
  %conv57.7.2 = zext i8 %660 to i32
  %xor58.7.2 = xor i32 %conv57.7.2, 1
  %conv59.7.2 = trunc i32 %xor58.7.2 to i8
  %scevgep35.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 7
  %661 = load i8, i8* %scevgep35.7.2, align 1
  %call64.7.2 = call zeroext i8 @mult(i8 zeroext %conv59.7.2, i8 zeroext %661)
  %scevgep42.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 7
  store i8 %call64.7.2, i8* %scevgep42.7.2, align 1
  %662 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 7
  %663 = load i8, i8* %scevgep39.7.2, align 1
  %call75.7.2 = call zeroext i8 @mult(i8 zeroext %662, i8 zeroext %663)
  %scevgep46.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 7
  store i8 %call75.7.2, i8* %scevgep46.7.2, align 1
  %scevgep43.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 7
  %664 = load i8, i8* %scevgep43.7.2, align 1
  %conv84.7.2 = zext i8 %664 to i32
  %scevgep47.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 7
  %665 = load i8, i8* %scevgep47.7.2, align 1
  %conv89.7.2 = zext i8 %665 to i32
  %xor90.7.2 = xor i32 %conv84.7.2, %conv89.7.2
  %conv91.7.2 = trunc i32 %xor90.7.2 to i8
  %scevgep50.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 7
  store i8 %conv91.7.2, i8* %scevgep50.7.2, align 1
  %scevgep31.8.2 = getelementptr i8, i8* %b, i64 8
  %666 = load i8, i8* %scevgep31.8.2, align 1
  %conv44.8.2 = zext i8 %666 to i32
  %scevgep34.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 8
  %667 = load i8, i8* %scevgep34.8.2, align 1
  %conv49.8.2 = zext i8 %667 to i32
  %xor.8.2 = xor i32 %conv44.8.2, %conv49.8.2
  %conv50.8.2 = trunc i32 %xor.8.2 to i8
  %scevgep38.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 8
  store i8 %conv50.8.2, i8* %scevgep38.8.2, align 1
  %668 = load i8, i8* %arrayidx56.2, align 1
  %conv57.8.2 = zext i8 %668 to i32
  %xor58.8.2 = xor i32 %conv57.8.2, 1
  %conv59.8.2 = trunc i32 %xor58.8.2 to i8
  %scevgep35.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 8
  %669 = load i8, i8* %scevgep35.8.2, align 1
  %call64.8.2 = call zeroext i8 @mult(i8 zeroext %conv59.8.2, i8 zeroext %669)
  %scevgep42.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 8
  store i8 %call64.8.2, i8* %scevgep42.8.2, align 1
  %670 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 8
  %671 = load i8, i8* %scevgep39.8.2, align 1
  %call75.8.2 = call zeroext i8 @mult(i8 zeroext %670, i8 zeroext %671)
  %scevgep46.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 8
  store i8 %call75.8.2, i8* %scevgep46.8.2, align 1
  %scevgep43.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 8
  %672 = load i8, i8* %scevgep43.8.2, align 1
  %conv84.8.2 = zext i8 %672 to i32
  %scevgep47.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 8
  %673 = load i8, i8* %scevgep47.8.2, align 1
  %conv89.8.2 = zext i8 %673 to i32
  %xor90.8.2 = xor i32 %conv84.8.2, %conv89.8.2
  %conv91.8.2 = trunc i32 %xor90.8.2 to i8
  %scevgep50.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 8
  store i8 %conv91.8.2, i8* %scevgep50.8.2, align 1
  %scevgep31.9.2 = getelementptr i8, i8* %b, i64 9
  %674 = load i8, i8* %scevgep31.9.2, align 1
  %conv44.9.2 = zext i8 %674 to i32
  %scevgep34.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 9
  %675 = load i8, i8* %scevgep34.9.2, align 1
  %conv49.9.2 = zext i8 %675 to i32
  %xor.9.2 = xor i32 %conv44.9.2, %conv49.9.2
  %conv50.9.2 = trunc i32 %xor.9.2 to i8
  %scevgep38.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 9
  store i8 %conv50.9.2, i8* %scevgep38.9.2, align 1
  %676 = load i8, i8* %arrayidx56.2, align 1
  %conv57.9.2 = zext i8 %676 to i32
  %xor58.9.2 = xor i32 %conv57.9.2, 1
  %conv59.9.2 = trunc i32 %xor58.9.2 to i8
  %scevgep35.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 9
  %677 = load i8, i8* %scevgep35.9.2, align 1
  %call64.9.2 = call zeroext i8 @mult(i8 zeroext %conv59.9.2, i8 zeroext %677)
  %scevgep42.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 9
  store i8 %call64.9.2, i8* %scevgep42.9.2, align 1
  %678 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 9
  %679 = load i8, i8* %scevgep39.9.2, align 1
  %call75.9.2 = call zeroext i8 @mult(i8 zeroext %678, i8 zeroext %679)
  %scevgep46.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 9
  store i8 %call75.9.2, i8* %scevgep46.9.2, align 1
  %scevgep43.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 9
  %680 = load i8, i8* %scevgep43.9.2, align 1
  %conv84.9.2 = zext i8 %680 to i32
  %scevgep47.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 9
  %681 = load i8, i8* %scevgep47.9.2, align 1
  %conv89.9.2 = zext i8 %681 to i32
  %xor90.9.2 = xor i32 %conv84.9.2, %conv89.9.2
  %conv91.9.2 = trunc i32 %xor90.9.2 to i8
  %scevgep50.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 9
  store i8 %conv91.9.2, i8* %scevgep50.9.2, align 1
  %scevgep31.10.2 = getelementptr i8, i8* %b, i64 10
  %682 = load i8, i8* %scevgep31.10.2, align 1
  %conv44.10.2 = zext i8 %682 to i32
  %scevgep34.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 10
  %683 = load i8, i8* %scevgep34.10.2, align 1
  %conv49.10.2 = zext i8 %683 to i32
  %xor.10.2 = xor i32 %conv44.10.2, %conv49.10.2
  %conv50.10.2 = trunc i32 %xor.10.2 to i8
  %scevgep38.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 10
  store i8 %conv50.10.2, i8* %scevgep38.10.2, align 1
  %684 = load i8, i8* %arrayidx56.2, align 1
  %conv57.10.2 = zext i8 %684 to i32
  %xor58.10.2 = xor i32 %conv57.10.2, 1
  %conv59.10.2 = trunc i32 %xor58.10.2 to i8
  %scevgep35.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 10
  %685 = load i8, i8* %scevgep35.10.2, align 1
  %call64.10.2 = call zeroext i8 @mult(i8 zeroext %conv59.10.2, i8 zeroext %685)
  %scevgep42.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 10
  store i8 %call64.10.2, i8* %scevgep42.10.2, align 1
  %686 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 10
  %687 = load i8, i8* %scevgep39.10.2, align 1
  %call75.10.2 = call zeroext i8 @mult(i8 zeroext %686, i8 zeroext %687)
  %scevgep46.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 10
  store i8 %call75.10.2, i8* %scevgep46.10.2, align 1
  %scevgep43.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 10
  %688 = load i8, i8* %scevgep43.10.2, align 1
  %conv84.10.2 = zext i8 %688 to i32
  %scevgep47.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 10
  %689 = load i8, i8* %scevgep47.10.2, align 1
  %conv89.10.2 = zext i8 %689 to i32
  %xor90.10.2 = xor i32 %conv84.10.2, %conv89.10.2
  %conv91.10.2 = trunc i32 %xor90.10.2 to i8
  %scevgep50.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 10
  store i8 %conv91.10.2, i8* %scevgep50.10.2, align 1
  %scevgep31.11.2 = getelementptr i8, i8* %b, i64 11
  %690 = load i8, i8* %scevgep31.11.2, align 1
  %conv44.11.2 = zext i8 %690 to i32
  %scevgep34.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 11
  %691 = load i8, i8* %scevgep34.11.2, align 1
  %conv49.11.2 = zext i8 %691 to i32
  %xor.11.2 = xor i32 %conv44.11.2, %conv49.11.2
  %conv50.11.2 = trunc i32 %xor.11.2 to i8
  %scevgep38.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 11
  store i8 %conv50.11.2, i8* %scevgep38.11.2, align 1
  %692 = load i8, i8* %arrayidx56.2, align 1
  %conv57.11.2 = zext i8 %692 to i32
  %xor58.11.2 = xor i32 %conv57.11.2, 1
  %conv59.11.2 = trunc i32 %xor58.11.2 to i8
  %scevgep35.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 11
  %693 = load i8, i8* %scevgep35.11.2, align 1
  %call64.11.2 = call zeroext i8 @mult(i8 zeroext %conv59.11.2, i8 zeroext %693)
  %scevgep42.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 11
  store i8 %call64.11.2, i8* %scevgep42.11.2, align 1
  %694 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 11
  %695 = load i8, i8* %scevgep39.11.2, align 1
  %call75.11.2 = call zeroext i8 @mult(i8 zeroext %694, i8 zeroext %695)
  %scevgep46.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 11
  store i8 %call75.11.2, i8* %scevgep46.11.2, align 1
  %scevgep43.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 11
  %696 = load i8, i8* %scevgep43.11.2, align 1
  %conv84.11.2 = zext i8 %696 to i32
  %scevgep47.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 11
  %697 = load i8, i8* %scevgep47.11.2, align 1
  %conv89.11.2 = zext i8 %697 to i32
  %xor90.11.2 = xor i32 %conv84.11.2, %conv89.11.2
  %conv91.11.2 = trunc i32 %xor90.11.2 to i8
  %scevgep50.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 11
  store i8 %conv91.11.2, i8* %scevgep50.11.2, align 1
  %scevgep31.12.2 = getelementptr i8, i8* %b, i64 12
  %698 = load i8, i8* %scevgep31.12.2, align 1
  %conv44.12.2 = zext i8 %698 to i32
  %scevgep34.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 12
  %699 = load i8, i8* %scevgep34.12.2, align 1
  %conv49.12.2 = zext i8 %699 to i32
  %xor.12.2 = xor i32 %conv44.12.2, %conv49.12.2
  %conv50.12.2 = trunc i32 %xor.12.2 to i8
  %scevgep38.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 12
  store i8 %conv50.12.2, i8* %scevgep38.12.2, align 1
  %700 = load i8, i8* %arrayidx56.2, align 1
  %conv57.12.2 = zext i8 %700 to i32
  %xor58.12.2 = xor i32 %conv57.12.2, 1
  %conv59.12.2 = trunc i32 %xor58.12.2 to i8
  %scevgep35.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 12
  %701 = load i8, i8* %scevgep35.12.2, align 1
  %call64.12.2 = call zeroext i8 @mult(i8 zeroext %conv59.12.2, i8 zeroext %701)
  %scevgep42.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 12
  store i8 %call64.12.2, i8* %scevgep42.12.2, align 1
  %702 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 12
  %703 = load i8, i8* %scevgep39.12.2, align 1
  %call75.12.2 = call zeroext i8 @mult(i8 zeroext %702, i8 zeroext %703)
  %scevgep46.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 12
  store i8 %call75.12.2, i8* %scevgep46.12.2, align 1
  %scevgep43.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 12
  %704 = load i8, i8* %scevgep43.12.2, align 1
  %conv84.12.2 = zext i8 %704 to i32
  %scevgep47.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 12
  %705 = load i8, i8* %scevgep47.12.2, align 1
  %conv89.12.2 = zext i8 %705 to i32
  %xor90.12.2 = xor i32 %conv84.12.2, %conv89.12.2
  %conv91.12.2 = trunc i32 %xor90.12.2 to i8
  %scevgep50.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 12
  store i8 %conv91.12.2, i8* %scevgep50.12.2, align 1
  %scevgep31.13.2 = getelementptr i8, i8* %b, i64 13
  %706 = load i8, i8* %scevgep31.13.2, align 1
  %conv44.13.2 = zext i8 %706 to i32
  %scevgep34.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 13
  %707 = load i8, i8* %scevgep34.13.2, align 1
  %conv49.13.2 = zext i8 %707 to i32
  %xor.13.2 = xor i32 %conv44.13.2, %conv49.13.2
  %conv50.13.2 = trunc i32 %xor.13.2 to i8
  %scevgep38.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 13
  store i8 %conv50.13.2, i8* %scevgep38.13.2, align 1
  %708 = load i8, i8* %arrayidx56.2, align 1
  %conv57.13.2 = zext i8 %708 to i32
  %xor58.13.2 = xor i32 %conv57.13.2, 1
  %conv59.13.2 = trunc i32 %xor58.13.2 to i8
  %scevgep35.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 13
  %709 = load i8, i8* %scevgep35.13.2, align 1
  %call64.13.2 = call zeroext i8 @mult(i8 zeroext %conv59.13.2, i8 zeroext %709)
  %scevgep42.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 13
  store i8 %call64.13.2, i8* %scevgep42.13.2, align 1
  %710 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 13
  %711 = load i8, i8* %scevgep39.13.2, align 1
  %call75.13.2 = call zeroext i8 @mult(i8 zeroext %710, i8 zeroext %711)
  %scevgep46.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 13
  store i8 %call75.13.2, i8* %scevgep46.13.2, align 1
  %scevgep43.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 13
  %712 = load i8, i8* %scevgep43.13.2, align 1
  %conv84.13.2 = zext i8 %712 to i32
  %scevgep47.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 13
  %713 = load i8, i8* %scevgep47.13.2, align 1
  %conv89.13.2 = zext i8 %713 to i32
  %xor90.13.2 = xor i32 %conv84.13.2, %conv89.13.2
  %conv91.13.2 = trunc i32 %xor90.13.2 to i8
  %scevgep50.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 13
  store i8 %conv91.13.2, i8* %scevgep50.13.2, align 1
  %scevgep31.14.2 = getelementptr i8, i8* %b, i64 14
  %714 = load i8, i8* %scevgep31.14.2, align 1
  %conv44.14.2 = zext i8 %714 to i32
  %scevgep34.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 14
  %715 = load i8, i8* %scevgep34.14.2, align 1
  %conv49.14.2 = zext i8 %715 to i32
  %xor.14.2 = xor i32 %conv44.14.2, %conv49.14.2
  %conv50.14.2 = trunc i32 %xor.14.2 to i8
  %scevgep38.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 14
  store i8 %conv50.14.2, i8* %scevgep38.14.2, align 1
  %716 = load i8, i8* %arrayidx56.2, align 1
  %conv57.14.2 = zext i8 %716 to i32
  %xor58.14.2 = xor i32 %conv57.14.2, 1
  %conv59.14.2 = trunc i32 %xor58.14.2 to i8
  %scevgep35.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 14
  %717 = load i8, i8* %scevgep35.14.2, align 1
  %call64.14.2 = call zeroext i8 @mult(i8 zeroext %conv59.14.2, i8 zeroext %717)
  %scevgep42.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 14
  store i8 %call64.14.2, i8* %scevgep42.14.2, align 1
  %718 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 14
  %719 = load i8, i8* %scevgep39.14.2, align 1
  %call75.14.2 = call zeroext i8 @mult(i8 zeroext %718, i8 zeroext %719)
  %scevgep46.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 14
  store i8 %call75.14.2, i8* %scevgep46.14.2, align 1
  %scevgep43.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 14
  %720 = load i8, i8* %scevgep43.14.2, align 1
  %conv84.14.2 = zext i8 %720 to i32
  %scevgep47.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 14
  %721 = load i8, i8* %scevgep47.14.2, align 1
  %conv89.14.2 = zext i8 %721 to i32
  %xor90.14.2 = xor i32 %conv84.14.2, %conv89.14.2
  %conv91.14.2 = trunc i32 %xor90.14.2 to i8
  %scevgep50.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 14
  store i8 %conv91.14.2, i8* %scevgep50.14.2, align 1
  %scevgep31.15.2 = getelementptr i8, i8* %b, i64 15
  %722 = load i8, i8* %scevgep31.15.2, align 1
  %conv44.15.2 = zext i8 %722 to i32
  %scevgep34.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 15
  %723 = load i8, i8* %scevgep34.15.2, align 1
  %conv49.15.2 = zext i8 %723 to i32
  %xor.15.2 = xor i32 %conv44.15.2, %conv49.15.2
  %conv50.15.2 = trunc i32 %xor.15.2 to i8
  %scevgep38.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 15
  store i8 %conv50.15.2, i8* %scevgep38.15.2, align 1
  %724 = load i8, i8* %arrayidx56.2, align 1
  %conv57.15.2 = zext i8 %724 to i32
  %xor58.15.2 = xor i32 %conv57.15.2, 1
  %conv59.15.2 = trunc i32 %xor58.15.2 to i8
  %scevgep35.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 15
  %725 = load i8, i8* %scevgep35.15.2, align 1
  %call64.15.2 = call zeroext i8 @mult(i8 zeroext %conv59.15.2, i8 zeroext %725)
  %scevgep42.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 15
  store i8 %call64.15.2, i8* %scevgep42.15.2, align 1
  %726 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 15
  %727 = load i8, i8* %scevgep39.15.2, align 1
  %call75.15.2 = call zeroext i8 @mult(i8 zeroext %726, i8 zeroext %727)
  %scevgep46.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 15
  store i8 %call75.15.2, i8* %scevgep46.15.2, align 1
  %scevgep43.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 0, i64 15
  %728 = load i8, i8* %scevgep43.15.2, align 1
  %conv84.15.2 = zext i8 %728 to i32
  %scevgep47.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 0, i64 15
  %729 = load i8, i8* %scevgep47.15.2, align 1
  %conv89.15.2 = zext i8 %729 to i32
  %xor90.15.2 = xor i32 %conv84.15.2, %conv89.15.2
  %conv91.15.2 = trunc i32 %xor90.15.2 to i8
  %scevgep50.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 0, i64 15
  store i8 %conv91.15.2, i8* %scevgep50.15.2, align 1
  %scevgep33.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 1, i64 0
  %730 = bitcast i8* %scevgep33.2 to [16 x [16 x i8]]*
  %scevgep37.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 1, i64 0
  %731 = bitcast i8* %scevgep37.2 to [16 x [16 x i8]]*
  %scevgep41.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 1, i64 0
  %732 = bitcast i8* %scevgep41.2 to [16 x [16 x i8]]*
  %scevgep45.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %608, i64 0, i64 1, i64 0
  %733 = bitcast i8* %scevgep45.2 to [16 x [16 x i8]]*
  %scevgep49.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %609, i64 0, i64 1, i64 0
  %734 = bitcast i8* %scevgep49.2 to [16 x [16 x i8]]*
  %arrayidx56.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx70.3 = getelementptr inbounds i8, i8* %a, i64 3
  %735 = load i8, i8* %b, align 1
  %conv44.3282 = zext i8 %735 to i32
  %scevgep34.3283 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 0
  %736 = load i8, i8* %scevgep34.3283, align 1
  %conv49.3284 = zext i8 %736 to i32
  %xor.3285 = xor i32 %conv44.3282, %conv49.3284
  %conv50.3286 = trunc i32 %xor.3285 to i8
  %scevgep38.3287 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 0
  store i8 %conv50.3286, i8* %scevgep38.3287, align 1
  %737 = load i8, i8* %arrayidx56.3, align 1
  %conv57.3288 = zext i8 %737 to i32
  %xor58.3289 = xor i32 %conv57.3288, 1
  %conv59.3290 = trunc i32 %xor58.3289 to i8
  %scevgep35.3291 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 0
  %738 = load i8, i8* %scevgep35.3291, align 1
  %call64.3292 = call zeroext i8 @mult(i8 zeroext %conv59.3290, i8 zeroext %738)
  %scevgep42.3293 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 0
  store i8 %call64.3292, i8* %scevgep42.3293, align 1
  %739 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.3294 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 0
  %740 = load i8, i8* %scevgep39.3294, align 1
  %call75.3295 = call zeroext i8 @mult(i8 zeroext %739, i8 zeroext %740)
  %scevgep46.3296 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 0
  store i8 %call75.3295, i8* %scevgep46.3296, align 1
  %scevgep43.3297 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 0
  %741 = load i8, i8* %scevgep43.3297, align 1
  %conv84.3298 = zext i8 %741 to i32
  %scevgep47.3299 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 0
  %742 = load i8, i8* %scevgep47.3299, align 1
  %conv89.3300 = zext i8 %742 to i32
  %xor90.3301 = xor i32 %conv84.3298, %conv89.3300
  %conv91.3302 = trunc i32 %xor90.3301 to i8
  %scevgep50.3303 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 0
  store i8 %conv91.3302, i8* %scevgep50.3303, align 1
  %scevgep31.1.3 = getelementptr i8, i8* %b, i64 1
  %743 = load i8, i8* %scevgep31.1.3, align 1
  %conv44.1.3 = zext i8 %743 to i32
  %scevgep34.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 1
  %744 = load i8, i8* %scevgep34.1.3, align 1
  %conv49.1.3 = zext i8 %744 to i32
  %xor.1.3 = xor i32 %conv44.1.3, %conv49.1.3
  %conv50.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep38.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 1
  store i8 %conv50.1.3, i8* %scevgep38.1.3, align 1
  %745 = load i8, i8* %arrayidx56.3, align 1
  %conv57.1.3 = zext i8 %745 to i32
  %xor58.1.3 = xor i32 %conv57.1.3, 1
  %conv59.1.3 = trunc i32 %xor58.1.3 to i8
  %scevgep35.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 1
  %746 = load i8, i8* %scevgep35.1.3, align 1
  %call64.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.1.3, i8 zeroext %746)
  %scevgep42.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 1
  store i8 %call64.1.3, i8* %scevgep42.1.3, align 1
  %747 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 1
  %748 = load i8, i8* %scevgep39.1.3, align 1
  %call75.1.3 = call zeroext i8 @mult(i8 zeroext %747, i8 zeroext %748)
  %scevgep46.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 1
  store i8 %call75.1.3, i8* %scevgep46.1.3, align 1
  %scevgep43.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 1
  %749 = load i8, i8* %scevgep43.1.3, align 1
  %conv84.1.3 = zext i8 %749 to i32
  %scevgep47.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 1
  %750 = load i8, i8* %scevgep47.1.3, align 1
  %conv89.1.3 = zext i8 %750 to i32
  %xor90.1.3 = xor i32 %conv84.1.3, %conv89.1.3
  %conv91.1.3 = trunc i32 %xor90.1.3 to i8
  %scevgep50.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 1
  store i8 %conv91.1.3, i8* %scevgep50.1.3, align 1
  %scevgep31.2.3 = getelementptr i8, i8* %b, i64 2
  %751 = load i8, i8* %scevgep31.2.3, align 1
  %conv44.2.3 = zext i8 %751 to i32
  %scevgep34.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 2
  %752 = load i8, i8* %scevgep34.2.3, align 1
  %conv49.2.3 = zext i8 %752 to i32
  %xor.2.3 = xor i32 %conv44.2.3, %conv49.2.3
  %conv50.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep38.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 2
  store i8 %conv50.2.3, i8* %scevgep38.2.3, align 1
  %753 = load i8, i8* %arrayidx56.3, align 1
  %conv57.2.3 = zext i8 %753 to i32
  %xor58.2.3 = xor i32 %conv57.2.3, 1
  %conv59.2.3 = trunc i32 %xor58.2.3 to i8
  %scevgep35.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 2
  %754 = load i8, i8* %scevgep35.2.3, align 1
  %call64.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.2.3, i8 zeroext %754)
  %scevgep42.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 2
  store i8 %call64.2.3, i8* %scevgep42.2.3, align 1
  %755 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 2
  %756 = load i8, i8* %scevgep39.2.3, align 1
  %call75.2.3 = call zeroext i8 @mult(i8 zeroext %755, i8 zeroext %756)
  %scevgep46.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 2
  store i8 %call75.2.3, i8* %scevgep46.2.3, align 1
  %scevgep43.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 2
  %757 = load i8, i8* %scevgep43.2.3, align 1
  %conv84.2.3 = zext i8 %757 to i32
  %scevgep47.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 2
  %758 = load i8, i8* %scevgep47.2.3, align 1
  %conv89.2.3 = zext i8 %758 to i32
  %xor90.2.3 = xor i32 %conv84.2.3, %conv89.2.3
  %conv91.2.3 = trunc i32 %xor90.2.3 to i8
  %scevgep50.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 2
  store i8 %conv91.2.3, i8* %scevgep50.2.3, align 1
  %scevgep31.4.3 = getelementptr i8, i8* %b, i64 4
  %759 = load i8, i8* %scevgep31.4.3, align 1
  %conv44.4.3 = zext i8 %759 to i32
  %scevgep34.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 4
  %760 = load i8, i8* %scevgep34.4.3, align 1
  %conv49.4.3 = zext i8 %760 to i32
  %xor.4.3 = xor i32 %conv44.4.3, %conv49.4.3
  %conv50.4.3 = trunc i32 %xor.4.3 to i8
  %scevgep38.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 4
  store i8 %conv50.4.3, i8* %scevgep38.4.3, align 1
  %761 = load i8, i8* %arrayidx56.3, align 1
  %conv57.4.3 = zext i8 %761 to i32
  %xor58.4.3 = xor i32 %conv57.4.3, 1
  %conv59.4.3 = trunc i32 %xor58.4.3 to i8
  %scevgep35.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 4
  %762 = load i8, i8* %scevgep35.4.3, align 1
  %call64.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.4.3, i8 zeroext %762)
  %scevgep42.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 4
  store i8 %call64.4.3, i8* %scevgep42.4.3, align 1
  %763 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 4
  %764 = load i8, i8* %scevgep39.4.3, align 1
  %call75.4.3 = call zeroext i8 @mult(i8 zeroext %763, i8 zeroext %764)
  %scevgep46.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 4
  store i8 %call75.4.3, i8* %scevgep46.4.3, align 1
  %scevgep43.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 4
  %765 = load i8, i8* %scevgep43.4.3, align 1
  %conv84.4.3 = zext i8 %765 to i32
  %scevgep47.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 4
  %766 = load i8, i8* %scevgep47.4.3, align 1
  %conv89.4.3 = zext i8 %766 to i32
  %xor90.4.3 = xor i32 %conv84.4.3, %conv89.4.3
  %conv91.4.3 = trunc i32 %xor90.4.3 to i8
  %scevgep50.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 4
  store i8 %conv91.4.3, i8* %scevgep50.4.3, align 1
  %scevgep31.5.3 = getelementptr i8, i8* %b, i64 5
  %767 = load i8, i8* %scevgep31.5.3, align 1
  %conv44.5.3 = zext i8 %767 to i32
  %scevgep34.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 5
  %768 = load i8, i8* %scevgep34.5.3, align 1
  %conv49.5.3 = zext i8 %768 to i32
  %xor.5.3 = xor i32 %conv44.5.3, %conv49.5.3
  %conv50.5.3 = trunc i32 %xor.5.3 to i8
  %scevgep38.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 5
  store i8 %conv50.5.3, i8* %scevgep38.5.3, align 1
  %769 = load i8, i8* %arrayidx56.3, align 1
  %conv57.5.3 = zext i8 %769 to i32
  %xor58.5.3 = xor i32 %conv57.5.3, 1
  %conv59.5.3 = trunc i32 %xor58.5.3 to i8
  %scevgep35.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 5
  %770 = load i8, i8* %scevgep35.5.3, align 1
  %call64.5.3 = call zeroext i8 @mult(i8 zeroext %conv59.5.3, i8 zeroext %770)
  %scevgep42.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 5
  store i8 %call64.5.3, i8* %scevgep42.5.3, align 1
  %771 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 5
  %772 = load i8, i8* %scevgep39.5.3, align 1
  %call75.5.3 = call zeroext i8 @mult(i8 zeroext %771, i8 zeroext %772)
  %scevgep46.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 5
  store i8 %call75.5.3, i8* %scevgep46.5.3, align 1
  %scevgep43.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 5
  %773 = load i8, i8* %scevgep43.5.3, align 1
  %conv84.5.3 = zext i8 %773 to i32
  %scevgep47.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 5
  %774 = load i8, i8* %scevgep47.5.3, align 1
  %conv89.5.3 = zext i8 %774 to i32
  %xor90.5.3 = xor i32 %conv84.5.3, %conv89.5.3
  %conv91.5.3 = trunc i32 %xor90.5.3 to i8
  %scevgep50.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 5
  store i8 %conv91.5.3, i8* %scevgep50.5.3, align 1
  %scevgep31.6.3 = getelementptr i8, i8* %b, i64 6
  %775 = load i8, i8* %scevgep31.6.3, align 1
  %conv44.6.3 = zext i8 %775 to i32
  %scevgep34.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 6
  %776 = load i8, i8* %scevgep34.6.3, align 1
  %conv49.6.3 = zext i8 %776 to i32
  %xor.6.3 = xor i32 %conv44.6.3, %conv49.6.3
  %conv50.6.3 = trunc i32 %xor.6.3 to i8
  %scevgep38.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 6
  store i8 %conv50.6.3, i8* %scevgep38.6.3, align 1
  %777 = load i8, i8* %arrayidx56.3, align 1
  %conv57.6.3 = zext i8 %777 to i32
  %xor58.6.3 = xor i32 %conv57.6.3, 1
  %conv59.6.3 = trunc i32 %xor58.6.3 to i8
  %scevgep35.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 6
  %778 = load i8, i8* %scevgep35.6.3, align 1
  %call64.6.3 = call zeroext i8 @mult(i8 zeroext %conv59.6.3, i8 zeroext %778)
  %scevgep42.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 6
  store i8 %call64.6.3, i8* %scevgep42.6.3, align 1
  %779 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 6
  %780 = load i8, i8* %scevgep39.6.3, align 1
  %call75.6.3 = call zeroext i8 @mult(i8 zeroext %779, i8 zeroext %780)
  %scevgep46.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 6
  store i8 %call75.6.3, i8* %scevgep46.6.3, align 1
  %scevgep43.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 6
  %781 = load i8, i8* %scevgep43.6.3, align 1
  %conv84.6.3 = zext i8 %781 to i32
  %scevgep47.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 6
  %782 = load i8, i8* %scevgep47.6.3, align 1
  %conv89.6.3 = zext i8 %782 to i32
  %xor90.6.3 = xor i32 %conv84.6.3, %conv89.6.3
  %conv91.6.3 = trunc i32 %xor90.6.3 to i8
  %scevgep50.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 6
  store i8 %conv91.6.3, i8* %scevgep50.6.3, align 1
  %scevgep31.7.3 = getelementptr i8, i8* %b, i64 7
  %783 = load i8, i8* %scevgep31.7.3, align 1
  %conv44.7.3 = zext i8 %783 to i32
  %scevgep34.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 7
  %784 = load i8, i8* %scevgep34.7.3, align 1
  %conv49.7.3 = zext i8 %784 to i32
  %xor.7.3 = xor i32 %conv44.7.3, %conv49.7.3
  %conv50.7.3 = trunc i32 %xor.7.3 to i8
  %scevgep38.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 7
  store i8 %conv50.7.3, i8* %scevgep38.7.3, align 1
  %785 = load i8, i8* %arrayidx56.3, align 1
  %conv57.7.3 = zext i8 %785 to i32
  %xor58.7.3 = xor i32 %conv57.7.3, 1
  %conv59.7.3 = trunc i32 %xor58.7.3 to i8
  %scevgep35.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 7
  %786 = load i8, i8* %scevgep35.7.3, align 1
  %call64.7.3 = call zeroext i8 @mult(i8 zeroext %conv59.7.3, i8 zeroext %786)
  %scevgep42.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 7
  store i8 %call64.7.3, i8* %scevgep42.7.3, align 1
  %787 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 7
  %788 = load i8, i8* %scevgep39.7.3, align 1
  %call75.7.3 = call zeroext i8 @mult(i8 zeroext %787, i8 zeroext %788)
  %scevgep46.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 7
  store i8 %call75.7.3, i8* %scevgep46.7.3, align 1
  %scevgep43.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 7
  %789 = load i8, i8* %scevgep43.7.3, align 1
  %conv84.7.3 = zext i8 %789 to i32
  %scevgep47.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 7
  %790 = load i8, i8* %scevgep47.7.3, align 1
  %conv89.7.3 = zext i8 %790 to i32
  %xor90.7.3 = xor i32 %conv84.7.3, %conv89.7.3
  %conv91.7.3 = trunc i32 %xor90.7.3 to i8
  %scevgep50.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 7
  store i8 %conv91.7.3, i8* %scevgep50.7.3, align 1
  %scevgep31.8.3 = getelementptr i8, i8* %b, i64 8
  %791 = load i8, i8* %scevgep31.8.3, align 1
  %conv44.8.3 = zext i8 %791 to i32
  %scevgep34.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 8
  %792 = load i8, i8* %scevgep34.8.3, align 1
  %conv49.8.3 = zext i8 %792 to i32
  %xor.8.3 = xor i32 %conv44.8.3, %conv49.8.3
  %conv50.8.3 = trunc i32 %xor.8.3 to i8
  %scevgep38.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 8
  store i8 %conv50.8.3, i8* %scevgep38.8.3, align 1
  %793 = load i8, i8* %arrayidx56.3, align 1
  %conv57.8.3 = zext i8 %793 to i32
  %xor58.8.3 = xor i32 %conv57.8.3, 1
  %conv59.8.3 = trunc i32 %xor58.8.3 to i8
  %scevgep35.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 8
  %794 = load i8, i8* %scevgep35.8.3, align 1
  %call64.8.3 = call zeroext i8 @mult(i8 zeroext %conv59.8.3, i8 zeroext %794)
  %scevgep42.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 8
  store i8 %call64.8.3, i8* %scevgep42.8.3, align 1
  %795 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 8
  %796 = load i8, i8* %scevgep39.8.3, align 1
  %call75.8.3 = call zeroext i8 @mult(i8 zeroext %795, i8 zeroext %796)
  %scevgep46.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 8
  store i8 %call75.8.3, i8* %scevgep46.8.3, align 1
  %scevgep43.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 8
  %797 = load i8, i8* %scevgep43.8.3, align 1
  %conv84.8.3 = zext i8 %797 to i32
  %scevgep47.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 8
  %798 = load i8, i8* %scevgep47.8.3, align 1
  %conv89.8.3 = zext i8 %798 to i32
  %xor90.8.3 = xor i32 %conv84.8.3, %conv89.8.3
  %conv91.8.3 = trunc i32 %xor90.8.3 to i8
  %scevgep50.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 8
  store i8 %conv91.8.3, i8* %scevgep50.8.3, align 1
  %scevgep31.9.3 = getelementptr i8, i8* %b, i64 9
  %799 = load i8, i8* %scevgep31.9.3, align 1
  %conv44.9.3 = zext i8 %799 to i32
  %scevgep34.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 9
  %800 = load i8, i8* %scevgep34.9.3, align 1
  %conv49.9.3 = zext i8 %800 to i32
  %xor.9.3 = xor i32 %conv44.9.3, %conv49.9.3
  %conv50.9.3 = trunc i32 %xor.9.3 to i8
  %scevgep38.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 9
  store i8 %conv50.9.3, i8* %scevgep38.9.3, align 1
  %801 = load i8, i8* %arrayidx56.3, align 1
  %conv57.9.3 = zext i8 %801 to i32
  %xor58.9.3 = xor i32 %conv57.9.3, 1
  %conv59.9.3 = trunc i32 %xor58.9.3 to i8
  %scevgep35.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 9
  %802 = load i8, i8* %scevgep35.9.3, align 1
  %call64.9.3 = call zeroext i8 @mult(i8 zeroext %conv59.9.3, i8 zeroext %802)
  %scevgep42.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 9
  store i8 %call64.9.3, i8* %scevgep42.9.3, align 1
  %803 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 9
  %804 = load i8, i8* %scevgep39.9.3, align 1
  %call75.9.3 = call zeroext i8 @mult(i8 zeroext %803, i8 zeroext %804)
  %scevgep46.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 9
  store i8 %call75.9.3, i8* %scevgep46.9.3, align 1
  %scevgep43.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 9
  %805 = load i8, i8* %scevgep43.9.3, align 1
  %conv84.9.3 = zext i8 %805 to i32
  %scevgep47.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 9
  %806 = load i8, i8* %scevgep47.9.3, align 1
  %conv89.9.3 = zext i8 %806 to i32
  %xor90.9.3 = xor i32 %conv84.9.3, %conv89.9.3
  %conv91.9.3 = trunc i32 %xor90.9.3 to i8
  %scevgep50.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 9
  store i8 %conv91.9.3, i8* %scevgep50.9.3, align 1
  %scevgep31.10.3 = getelementptr i8, i8* %b, i64 10
  %807 = load i8, i8* %scevgep31.10.3, align 1
  %conv44.10.3 = zext i8 %807 to i32
  %scevgep34.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 10
  %808 = load i8, i8* %scevgep34.10.3, align 1
  %conv49.10.3 = zext i8 %808 to i32
  %xor.10.3 = xor i32 %conv44.10.3, %conv49.10.3
  %conv50.10.3 = trunc i32 %xor.10.3 to i8
  %scevgep38.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 10
  store i8 %conv50.10.3, i8* %scevgep38.10.3, align 1
  %809 = load i8, i8* %arrayidx56.3, align 1
  %conv57.10.3 = zext i8 %809 to i32
  %xor58.10.3 = xor i32 %conv57.10.3, 1
  %conv59.10.3 = trunc i32 %xor58.10.3 to i8
  %scevgep35.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 10
  %810 = load i8, i8* %scevgep35.10.3, align 1
  %call64.10.3 = call zeroext i8 @mult(i8 zeroext %conv59.10.3, i8 zeroext %810)
  %scevgep42.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 10
  store i8 %call64.10.3, i8* %scevgep42.10.3, align 1
  %811 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 10
  %812 = load i8, i8* %scevgep39.10.3, align 1
  %call75.10.3 = call zeroext i8 @mult(i8 zeroext %811, i8 zeroext %812)
  %scevgep46.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 10
  store i8 %call75.10.3, i8* %scevgep46.10.3, align 1
  %scevgep43.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 10
  %813 = load i8, i8* %scevgep43.10.3, align 1
  %conv84.10.3 = zext i8 %813 to i32
  %scevgep47.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 10
  %814 = load i8, i8* %scevgep47.10.3, align 1
  %conv89.10.3 = zext i8 %814 to i32
  %xor90.10.3 = xor i32 %conv84.10.3, %conv89.10.3
  %conv91.10.3 = trunc i32 %xor90.10.3 to i8
  %scevgep50.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 10
  store i8 %conv91.10.3, i8* %scevgep50.10.3, align 1
  %scevgep31.11.3 = getelementptr i8, i8* %b, i64 11
  %815 = load i8, i8* %scevgep31.11.3, align 1
  %conv44.11.3 = zext i8 %815 to i32
  %scevgep34.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 11
  %816 = load i8, i8* %scevgep34.11.3, align 1
  %conv49.11.3 = zext i8 %816 to i32
  %xor.11.3 = xor i32 %conv44.11.3, %conv49.11.3
  %conv50.11.3 = trunc i32 %xor.11.3 to i8
  %scevgep38.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 11
  store i8 %conv50.11.3, i8* %scevgep38.11.3, align 1
  %817 = load i8, i8* %arrayidx56.3, align 1
  %conv57.11.3 = zext i8 %817 to i32
  %xor58.11.3 = xor i32 %conv57.11.3, 1
  %conv59.11.3 = trunc i32 %xor58.11.3 to i8
  %scevgep35.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 11
  %818 = load i8, i8* %scevgep35.11.3, align 1
  %call64.11.3 = call zeroext i8 @mult(i8 zeroext %conv59.11.3, i8 zeroext %818)
  %scevgep42.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 11
  store i8 %call64.11.3, i8* %scevgep42.11.3, align 1
  %819 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 11
  %820 = load i8, i8* %scevgep39.11.3, align 1
  %call75.11.3 = call zeroext i8 @mult(i8 zeroext %819, i8 zeroext %820)
  %scevgep46.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 11
  store i8 %call75.11.3, i8* %scevgep46.11.3, align 1
  %scevgep43.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 11
  %821 = load i8, i8* %scevgep43.11.3, align 1
  %conv84.11.3 = zext i8 %821 to i32
  %scevgep47.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 11
  %822 = load i8, i8* %scevgep47.11.3, align 1
  %conv89.11.3 = zext i8 %822 to i32
  %xor90.11.3 = xor i32 %conv84.11.3, %conv89.11.3
  %conv91.11.3 = trunc i32 %xor90.11.3 to i8
  %scevgep50.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 11
  store i8 %conv91.11.3, i8* %scevgep50.11.3, align 1
  %scevgep31.12.3 = getelementptr i8, i8* %b, i64 12
  %823 = load i8, i8* %scevgep31.12.3, align 1
  %conv44.12.3 = zext i8 %823 to i32
  %scevgep34.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 12
  %824 = load i8, i8* %scevgep34.12.3, align 1
  %conv49.12.3 = zext i8 %824 to i32
  %xor.12.3 = xor i32 %conv44.12.3, %conv49.12.3
  %conv50.12.3 = trunc i32 %xor.12.3 to i8
  %scevgep38.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 12
  store i8 %conv50.12.3, i8* %scevgep38.12.3, align 1
  %825 = load i8, i8* %arrayidx56.3, align 1
  %conv57.12.3 = zext i8 %825 to i32
  %xor58.12.3 = xor i32 %conv57.12.3, 1
  %conv59.12.3 = trunc i32 %xor58.12.3 to i8
  %scevgep35.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 12
  %826 = load i8, i8* %scevgep35.12.3, align 1
  %call64.12.3 = call zeroext i8 @mult(i8 zeroext %conv59.12.3, i8 zeroext %826)
  %scevgep42.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 12
  store i8 %call64.12.3, i8* %scevgep42.12.3, align 1
  %827 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 12
  %828 = load i8, i8* %scevgep39.12.3, align 1
  %call75.12.3 = call zeroext i8 @mult(i8 zeroext %827, i8 zeroext %828)
  %scevgep46.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 12
  store i8 %call75.12.3, i8* %scevgep46.12.3, align 1
  %scevgep43.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 12
  %829 = load i8, i8* %scevgep43.12.3, align 1
  %conv84.12.3 = zext i8 %829 to i32
  %scevgep47.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 12
  %830 = load i8, i8* %scevgep47.12.3, align 1
  %conv89.12.3 = zext i8 %830 to i32
  %xor90.12.3 = xor i32 %conv84.12.3, %conv89.12.3
  %conv91.12.3 = trunc i32 %xor90.12.3 to i8
  %scevgep50.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 12
  store i8 %conv91.12.3, i8* %scevgep50.12.3, align 1
  %scevgep31.13.3 = getelementptr i8, i8* %b, i64 13
  %831 = load i8, i8* %scevgep31.13.3, align 1
  %conv44.13.3 = zext i8 %831 to i32
  %scevgep34.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 13
  %832 = load i8, i8* %scevgep34.13.3, align 1
  %conv49.13.3 = zext i8 %832 to i32
  %xor.13.3 = xor i32 %conv44.13.3, %conv49.13.3
  %conv50.13.3 = trunc i32 %xor.13.3 to i8
  %scevgep38.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 13
  store i8 %conv50.13.3, i8* %scevgep38.13.3, align 1
  %833 = load i8, i8* %arrayidx56.3, align 1
  %conv57.13.3 = zext i8 %833 to i32
  %xor58.13.3 = xor i32 %conv57.13.3, 1
  %conv59.13.3 = trunc i32 %xor58.13.3 to i8
  %scevgep35.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 13
  %834 = load i8, i8* %scevgep35.13.3, align 1
  %call64.13.3 = call zeroext i8 @mult(i8 zeroext %conv59.13.3, i8 zeroext %834)
  %scevgep42.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 13
  store i8 %call64.13.3, i8* %scevgep42.13.3, align 1
  %835 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 13
  %836 = load i8, i8* %scevgep39.13.3, align 1
  %call75.13.3 = call zeroext i8 @mult(i8 zeroext %835, i8 zeroext %836)
  %scevgep46.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 13
  store i8 %call75.13.3, i8* %scevgep46.13.3, align 1
  %scevgep43.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 13
  %837 = load i8, i8* %scevgep43.13.3, align 1
  %conv84.13.3 = zext i8 %837 to i32
  %scevgep47.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 13
  %838 = load i8, i8* %scevgep47.13.3, align 1
  %conv89.13.3 = zext i8 %838 to i32
  %xor90.13.3 = xor i32 %conv84.13.3, %conv89.13.3
  %conv91.13.3 = trunc i32 %xor90.13.3 to i8
  %scevgep50.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 13
  store i8 %conv91.13.3, i8* %scevgep50.13.3, align 1
  %scevgep31.14.3 = getelementptr i8, i8* %b, i64 14
  %839 = load i8, i8* %scevgep31.14.3, align 1
  %conv44.14.3 = zext i8 %839 to i32
  %scevgep34.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 14
  %840 = load i8, i8* %scevgep34.14.3, align 1
  %conv49.14.3 = zext i8 %840 to i32
  %xor.14.3 = xor i32 %conv44.14.3, %conv49.14.3
  %conv50.14.3 = trunc i32 %xor.14.3 to i8
  %scevgep38.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 14
  store i8 %conv50.14.3, i8* %scevgep38.14.3, align 1
  %841 = load i8, i8* %arrayidx56.3, align 1
  %conv57.14.3 = zext i8 %841 to i32
  %xor58.14.3 = xor i32 %conv57.14.3, 1
  %conv59.14.3 = trunc i32 %xor58.14.3 to i8
  %scevgep35.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 14
  %842 = load i8, i8* %scevgep35.14.3, align 1
  %call64.14.3 = call zeroext i8 @mult(i8 zeroext %conv59.14.3, i8 zeroext %842)
  %scevgep42.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 14
  store i8 %call64.14.3, i8* %scevgep42.14.3, align 1
  %843 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 14
  %844 = load i8, i8* %scevgep39.14.3, align 1
  %call75.14.3 = call zeroext i8 @mult(i8 zeroext %843, i8 zeroext %844)
  %scevgep46.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 14
  store i8 %call75.14.3, i8* %scevgep46.14.3, align 1
  %scevgep43.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 14
  %845 = load i8, i8* %scevgep43.14.3, align 1
  %conv84.14.3 = zext i8 %845 to i32
  %scevgep47.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 14
  %846 = load i8, i8* %scevgep47.14.3, align 1
  %conv89.14.3 = zext i8 %846 to i32
  %xor90.14.3 = xor i32 %conv84.14.3, %conv89.14.3
  %conv91.14.3 = trunc i32 %xor90.14.3 to i8
  %scevgep50.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 14
  store i8 %conv91.14.3, i8* %scevgep50.14.3, align 1
  %scevgep31.15.3 = getelementptr i8, i8* %b, i64 15
  %847 = load i8, i8* %scevgep31.15.3, align 1
  %conv44.15.3 = zext i8 %847 to i32
  %scevgep34.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 15
  %848 = load i8, i8* %scevgep34.15.3, align 1
  %conv49.15.3 = zext i8 %848 to i32
  %xor.15.3 = xor i32 %conv44.15.3, %conv49.15.3
  %conv50.15.3 = trunc i32 %xor.15.3 to i8
  %scevgep38.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 15
  store i8 %conv50.15.3, i8* %scevgep38.15.3, align 1
  %849 = load i8, i8* %arrayidx56.3, align 1
  %conv57.15.3 = zext i8 %849 to i32
  %xor58.15.3 = xor i32 %conv57.15.3, 1
  %conv59.15.3 = trunc i32 %xor58.15.3 to i8
  %scevgep35.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 0, i64 15
  %850 = load i8, i8* %scevgep35.15.3, align 1
  %call64.15.3 = call zeroext i8 @mult(i8 zeroext %conv59.15.3, i8 zeroext %850)
  %scevgep42.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 15
  store i8 %call64.15.3, i8* %scevgep42.15.3, align 1
  %851 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 0, i64 15
  %852 = load i8, i8* %scevgep39.15.3, align 1
  %call75.15.3 = call zeroext i8 @mult(i8 zeroext %851, i8 zeroext %852)
  %scevgep46.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 15
  store i8 %call75.15.3, i8* %scevgep46.15.3, align 1
  %scevgep43.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 0, i64 15
  %853 = load i8, i8* %scevgep43.15.3, align 1
  %conv84.15.3 = zext i8 %853 to i32
  %scevgep47.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 15
  %854 = load i8, i8* %scevgep47.15.3, align 1
  %conv89.15.3 = zext i8 %854 to i32
  %xor90.15.3 = xor i32 %conv84.15.3, %conv89.15.3
  %conv91.15.3 = trunc i32 %xor90.15.3 to i8
  %scevgep50.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 0, i64 15
  store i8 %conv91.15.3, i8* %scevgep50.15.3, align 1
  %scevgep33.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %730, i64 0, i64 1, i64 0
  %855 = bitcast i8* %scevgep33.3 to [16 x [16 x i8]]*
  %scevgep37.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %731, i64 0, i64 1, i64 0
  %856 = bitcast i8* %scevgep37.3 to [16 x [16 x i8]]*
  %scevgep41.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %732, i64 0, i64 1, i64 0
  %857 = bitcast i8* %scevgep41.3 to [16 x [16 x i8]]*
  %scevgep45.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 1, i64 0
  %858 = bitcast i8* %scevgep45.3 to [16 x [16 x i8]]*
  %scevgep49.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 1, i64 0
  %859 = bitcast i8* %scevgep49.3 to [16 x [16 x i8]]*
  %arrayidx56.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx70.4 = getelementptr inbounds i8, i8* %a, i64 4
  %860 = load i8, i8* %b, align 1
  %conv44.4309 = zext i8 %860 to i32
  %scevgep34.4310 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 0
  %861 = load i8, i8* %scevgep34.4310, align 1
  %conv49.4311 = zext i8 %861 to i32
  %xor.4312 = xor i32 %conv44.4309, %conv49.4311
  %conv50.4313 = trunc i32 %xor.4312 to i8
  %scevgep38.4314 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 0
  store i8 %conv50.4313, i8* %scevgep38.4314, align 1
  %862 = load i8, i8* %arrayidx56.4, align 1
  %conv57.4315 = zext i8 %862 to i32
  %xor58.4316 = xor i32 %conv57.4315, 1
  %conv59.4317 = trunc i32 %xor58.4316 to i8
  %scevgep35.4318 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 0
  %863 = load i8, i8* %scevgep35.4318, align 1
  %call64.4319 = call zeroext i8 @mult(i8 zeroext %conv59.4317, i8 zeroext %863)
  %scevgep42.4320 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 0
  store i8 %call64.4319, i8* %scevgep42.4320, align 1
  %864 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.4321 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 0
  %865 = load i8, i8* %scevgep39.4321, align 1
  %call75.4322 = call zeroext i8 @mult(i8 zeroext %864, i8 zeroext %865)
  %scevgep46.4323 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 0
  store i8 %call75.4322, i8* %scevgep46.4323, align 1
  %scevgep43.4324 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 0
  %866 = load i8, i8* %scevgep43.4324, align 1
  %conv84.4325 = zext i8 %866 to i32
  %scevgep47.4326 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 0
  %867 = load i8, i8* %scevgep47.4326, align 1
  %conv89.4327 = zext i8 %867 to i32
  %xor90.4328 = xor i32 %conv84.4325, %conv89.4327
  %conv91.4329 = trunc i32 %xor90.4328 to i8
  %scevgep50.4330 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 0
  store i8 %conv91.4329, i8* %scevgep50.4330, align 1
  %scevgep31.1.4 = getelementptr i8, i8* %b, i64 1
  %868 = load i8, i8* %scevgep31.1.4, align 1
  %conv44.1.4 = zext i8 %868 to i32
  %scevgep34.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 1
  %869 = load i8, i8* %scevgep34.1.4, align 1
  %conv49.1.4 = zext i8 %869 to i32
  %xor.1.4 = xor i32 %conv44.1.4, %conv49.1.4
  %conv50.1.4 = trunc i32 %xor.1.4 to i8
  %scevgep38.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 1
  store i8 %conv50.1.4, i8* %scevgep38.1.4, align 1
  %870 = load i8, i8* %arrayidx56.4, align 1
  %conv57.1.4 = zext i8 %870 to i32
  %xor58.1.4 = xor i32 %conv57.1.4, 1
  %conv59.1.4 = trunc i32 %xor58.1.4 to i8
  %scevgep35.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 1
  %871 = load i8, i8* %scevgep35.1.4, align 1
  %call64.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.1.4, i8 zeroext %871)
  %scevgep42.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 1
  store i8 %call64.1.4, i8* %scevgep42.1.4, align 1
  %872 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 1
  %873 = load i8, i8* %scevgep39.1.4, align 1
  %call75.1.4 = call zeroext i8 @mult(i8 zeroext %872, i8 zeroext %873)
  %scevgep46.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 1
  store i8 %call75.1.4, i8* %scevgep46.1.4, align 1
  %scevgep43.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 1
  %874 = load i8, i8* %scevgep43.1.4, align 1
  %conv84.1.4 = zext i8 %874 to i32
  %scevgep47.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 1
  %875 = load i8, i8* %scevgep47.1.4, align 1
  %conv89.1.4 = zext i8 %875 to i32
  %xor90.1.4 = xor i32 %conv84.1.4, %conv89.1.4
  %conv91.1.4 = trunc i32 %xor90.1.4 to i8
  %scevgep50.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 1
  store i8 %conv91.1.4, i8* %scevgep50.1.4, align 1
  %scevgep31.2.4 = getelementptr i8, i8* %b, i64 2
  %876 = load i8, i8* %scevgep31.2.4, align 1
  %conv44.2.4 = zext i8 %876 to i32
  %scevgep34.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 2
  %877 = load i8, i8* %scevgep34.2.4, align 1
  %conv49.2.4 = zext i8 %877 to i32
  %xor.2.4 = xor i32 %conv44.2.4, %conv49.2.4
  %conv50.2.4 = trunc i32 %xor.2.4 to i8
  %scevgep38.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 2
  store i8 %conv50.2.4, i8* %scevgep38.2.4, align 1
  %878 = load i8, i8* %arrayidx56.4, align 1
  %conv57.2.4 = zext i8 %878 to i32
  %xor58.2.4 = xor i32 %conv57.2.4, 1
  %conv59.2.4 = trunc i32 %xor58.2.4 to i8
  %scevgep35.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 2
  %879 = load i8, i8* %scevgep35.2.4, align 1
  %call64.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.2.4, i8 zeroext %879)
  %scevgep42.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 2
  store i8 %call64.2.4, i8* %scevgep42.2.4, align 1
  %880 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 2
  %881 = load i8, i8* %scevgep39.2.4, align 1
  %call75.2.4 = call zeroext i8 @mult(i8 zeroext %880, i8 zeroext %881)
  %scevgep46.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 2
  store i8 %call75.2.4, i8* %scevgep46.2.4, align 1
  %scevgep43.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 2
  %882 = load i8, i8* %scevgep43.2.4, align 1
  %conv84.2.4 = zext i8 %882 to i32
  %scevgep47.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 2
  %883 = load i8, i8* %scevgep47.2.4, align 1
  %conv89.2.4 = zext i8 %883 to i32
  %xor90.2.4 = xor i32 %conv84.2.4, %conv89.2.4
  %conv91.2.4 = trunc i32 %xor90.2.4 to i8
  %scevgep50.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 2
  store i8 %conv91.2.4, i8* %scevgep50.2.4, align 1
  %scevgep31.3.4 = getelementptr i8, i8* %b, i64 3
  %884 = load i8, i8* %scevgep31.3.4, align 1
  %conv44.3.4 = zext i8 %884 to i32
  %scevgep34.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 3
  %885 = load i8, i8* %scevgep34.3.4, align 1
  %conv49.3.4 = zext i8 %885 to i32
  %xor.3.4 = xor i32 %conv44.3.4, %conv49.3.4
  %conv50.3.4 = trunc i32 %xor.3.4 to i8
  %scevgep38.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 3
  store i8 %conv50.3.4, i8* %scevgep38.3.4, align 1
  %886 = load i8, i8* %arrayidx56.4, align 1
  %conv57.3.4 = zext i8 %886 to i32
  %xor58.3.4 = xor i32 %conv57.3.4, 1
  %conv59.3.4 = trunc i32 %xor58.3.4 to i8
  %scevgep35.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 3
  %887 = load i8, i8* %scevgep35.3.4, align 1
  %call64.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.3.4, i8 zeroext %887)
  %scevgep42.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 3
  store i8 %call64.3.4, i8* %scevgep42.3.4, align 1
  %888 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 3
  %889 = load i8, i8* %scevgep39.3.4, align 1
  %call75.3.4 = call zeroext i8 @mult(i8 zeroext %888, i8 zeroext %889)
  %scevgep46.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 3
  store i8 %call75.3.4, i8* %scevgep46.3.4, align 1
  %scevgep43.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 3
  %890 = load i8, i8* %scevgep43.3.4, align 1
  %conv84.3.4 = zext i8 %890 to i32
  %scevgep47.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 3
  %891 = load i8, i8* %scevgep47.3.4, align 1
  %conv89.3.4 = zext i8 %891 to i32
  %xor90.3.4 = xor i32 %conv84.3.4, %conv89.3.4
  %conv91.3.4 = trunc i32 %xor90.3.4 to i8
  %scevgep50.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 3
  store i8 %conv91.3.4, i8* %scevgep50.3.4, align 1
  %scevgep31.5.4 = getelementptr i8, i8* %b, i64 5
  %892 = load i8, i8* %scevgep31.5.4, align 1
  %conv44.5.4 = zext i8 %892 to i32
  %scevgep34.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 5
  %893 = load i8, i8* %scevgep34.5.4, align 1
  %conv49.5.4 = zext i8 %893 to i32
  %xor.5.4 = xor i32 %conv44.5.4, %conv49.5.4
  %conv50.5.4 = trunc i32 %xor.5.4 to i8
  %scevgep38.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 5
  store i8 %conv50.5.4, i8* %scevgep38.5.4, align 1
  %894 = load i8, i8* %arrayidx56.4, align 1
  %conv57.5.4 = zext i8 %894 to i32
  %xor58.5.4 = xor i32 %conv57.5.4, 1
  %conv59.5.4 = trunc i32 %xor58.5.4 to i8
  %scevgep35.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 5
  %895 = load i8, i8* %scevgep35.5.4, align 1
  %call64.5.4 = call zeroext i8 @mult(i8 zeroext %conv59.5.4, i8 zeroext %895)
  %scevgep42.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 5
  store i8 %call64.5.4, i8* %scevgep42.5.4, align 1
  %896 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 5
  %897 = load i8, i8* %scevgep39.5.4, align 1
  %call75.5.4 = call zeroext i8 @mult(i8 zeroext %896, i8 zeroext %897)
  %scevgep46.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 5
  store i8 %call75.5.4, i8* %scevgep46.5.4, align 1
  %scevgep43.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 5
  %898 = load i8, i8* %scevgep43.5.4, align 1
  %conv84.5.4 = zext i8 %898 to i32
  %scevgep47.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 5
  %899 = load i8, i8* %scevgep47.5.4, align 1
  %conv89.5.4 = zext i8 %899 to i32
  %xor90.5.4 = xor i32 %conv84.5.4, %conv89.5.4
  %conv91.5.4 = trunc i32 %xor90.5.4 to i8
  %scevgep50.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 5
  store i8 %conv91.5.4, i8* %scevgep50.5.4, align 1
  %scevgep31.6.4 = getelementptr i8, i8* %b, i64 6
  %900 = load i8, i8* %scevgep31.6.4, align 1
  %conv44.6.4 = zext i8 %900 to i32
  %scevgep34.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 6
  %901 = load i8, i8* %scevgep34.6.4, align 1
  %conv49.6.4 = zext i8 %901 to i32
  %xor.6.4 = xor i32 %conv44.6.4, %conv49.6.4
  %conv50.6.4 = trunc i32 %xor.6.4 to i8
  %scevgep38.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 6
  store i8 %conv50.6.4, i8* %scevgep38.6.4, align 1
  %902 = load i8, i8* %arrayidx56.4, align 1
  %conv57.6.4 = zext i8 %902 to i32
  %xor58.6.4 = xor i32 %conv57.6.4, 1
  %conv59.6.4 = trunc i32 %xor58.6.4 to i8
  %scevgep35.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 6
  %903 = load i8, i8* %scevgep35.6.4, align 1
  %call64.6.4 = call zeroext i8 @mult(i8 zeroext %conv59.6.4, i8 zeroext %903)
  %scevgep42.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 6
  store i8 %call64.6.4, i8* %scevgep42.6.4, align 1
  %904 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 6
  %905 = load i8, i8* %scevgep39.6.4, align 1
  %call75.6.4 = call zeroext i8 @mult(i8 zeroext %904, i8 zeroext %905)
  %scevgep46.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 6
  store i8 %call75.6.4, i8* %scevgep46.6.4, align 1
  %scevgep43.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 6
  %906 = load i8, i8* %scevgep43.6.4, align 1
  %conv84.6.4 = zext i8 %906 to i32
  %scevgep47.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 6
  %907 = load i8, i8* %scevgep47.6.4, align 1
  %conv89.6.4 = zext i8 %907 to i32
  %xor90.6.4 = xor i32 %conv84.6.4, %conv89.6.4
  %conv91.6.4 = trunc i32 %xor90.6.4 to i8
  %scevgep50.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 6
  store i8 %conv91.6.4, i8* %scevgep50.6.4, align 1
  %scevgep31.7.4 = getelementptr i8, i8* %b, i64 7
  %908 = load i8, i8* %scevgep31.7.4, align 1
  %conv44.7.4 = zext i8 %908 to i32
  %scevgep34.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 7
  %909 = load i8, i8* %scevgep34.7.4, align 1
  %conv49.7.4 = zext i8 %909 to i32
  %xor.7.4 = xor i32 %conv44.7.4, %conv49.7.4
  %conv50.7.4 = trunc i32 %xor.7.4 to i8
  %scevgep38.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 7
  store i8 %conv50.7.4, i8* %scevgep38.7.4, align 1
  %910 = load i8, i8* %arrayidx56.4, align 1
  %conv57.7.4 = zext i8 %910 to i32
  %xor58.7.4 = xor i32 %conv57.7.4, 1
  %conv59.7.4 = trunc i32 %xor58.7.4 to i8
  %scevgep35.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 7
  %911 = load i8, i8* %scevgep35.7.4, align 1
  %call64.7.4 = call zeroext i8 @mult(i8 zeroext %conv59.7.4, i8 zeroext %911)
  %scevgep42.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 7
  store i8 %call64.7.4, i8* %scevgep42.7.4, align 1
  %912 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 7
  %913 = load i8, i8* %scevgep39.7.4, align 1
  %call75.7.4 = call zeroext i8 @mult(i8 zeroext %912, i8 zeroext %913)
  %scevgep46.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 7
  store i8 %call75.7.4, i8* %scevgep46.7.4, align 1
  %scevgep43.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 7
  %914 = load i8, i8* %scevgep43.7.4, align 1
  %conv84.7.4 = zext i8 %914 to i32
  %scevgep47.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 7
  %915 = load i8, i8* %scevgep47.7.4, align 1
  %conv89.7.4 = zext i8 %915 to i32
  %xor90.7.4 = xor i32 %conv84.7.4, %conv89.7.4
  %conv91.7.4 = trunc i32 %xor90.7.4 to i8
  %scevgep50.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 7
  store i8 %conv91.7.4, i8* %scevgep50.7.4, align 1
  %scevgep31.8.4 = getelementptr i8, i8* %b, i64 8
  %916 = load i8, i8* %scevgep31.8.4, align 1
  %conv44.8.4 = zext i8 %916 to i32
  %scevgep34.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 8
  %917 = load i8, i8* %scevgep34.8.4, align 1
  %conv49.8.4 = zext i8 %917 to i32
  %xor.8.4 = xor i32 %conv44.8.4, %conv49.8.4
  %conv50.8.4 = trunc i32 %xor.8.4 to i8
  %scevgep38.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 8
  store i8 %conv50.8.4, i8* %scevgep38.8.4, align 1
  %918 = load i8, i8* %arrayidx56.4, align 1
  %conv57.8.4 = zext i8 %918 to i32
  %xor58.8.4 = xor i32 %conv57.8.4, 1
  %conv59.8.4 = trunc i32 %xor58.8.4 to i8
  %scevgep35.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 8
  %919 = load i8, i8* %scevgep35.8.4, align 1
  %call64.8.4 = call zeroext i8 @mult(i8 zeroext %conv59.8.4, i8 zeroext %919)
  %scevgep42.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 8
  store i8 %call64.8.4, i8* %scevgep42.8.4, align 1
  %920 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 8
  %921 = load i8, i8* %scevgep39.8.4, align 1
  %call75.8.4 = call zeroext i8 @mult(i8 zeroext %920, i8 zeroext %921)
  %scevgep46.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 8
  store i8 %call75.8.4, i8* %scevgep46.8.4, align 1
  %scevgep43.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 8
  %922 = load i8, i8* %scevgep43.8.4, align 1
  %conv84.8.4 = zext i8 %922 to i32
  %scevgep47.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 8
  %923 = load i8, i8* %scevgep47.8.4, align 1
  %conv89.8.4 = zext i8 %923 to i32
  %xor90.8.4 = xor i32 %conv84.8.4, %conv89.8.4
  %conv91.8.4 = trunc i32 %xor90.8.4 to i8
  %scevgep50.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 8
  store i8 %conv91.8.4, i8* %scevgep50.8.4, align 1
  %scevgep31.9.4 = getelementptr i8, i8* %b, i64 9
  %924 = load i8, i8* %scevgep31.9.4, align 1
  %conv44.9.4 = zext i8 %924 to i32
  %scevgep34.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 9
  %925 = load i8, i8* %scevgep34.9.4, align 1
  %conv49.9.4 = zext i8 %925 to i32
  %xor.9.4 = xor i32 %conv44.9.4, %conv49.9.4
  %conv50.9.4 = trunc i32 %xor.9.4 to i8
  %scevgep38.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 9
  store i8 %conv50.9.4, i8* %scevgep38.9.4, align 1
  %926 = load i8, i8* %arrayidx56.4, align 1
  %conv57.9.4 = zext i8 %926 to i32
  %xor58.9.4 = xor i32 %conv57.9.4, 1
  %conv59.9.4 = trunc i32 %xor58.9.4 to i8
  %scevgep35.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 9
  %927 = load i8, i8* %scevgep35.9.4, align 1
  %call64.9.4 = call zeroext i8 @mult(i8 zeroext %conv59.9.4, i8 zeroext %927)
  %scevgep42.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 9
  store i8 %call64.9.4, i8* %scevgep42.9.4, align 1
  %928 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 9
  %929 = load i8, i8* %scevgep39.9.4, align 1
  %call75.9.4 = call zeroext i8 @mult(i8 zeroext %928, i8 zeroext %929)
  %scevgep46.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 9
  store i8 %call75.9.4, i8* %scevgep46.9.4, align 1
  %scevgep43.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 9
  %930 = load i8, i8* %scevgep43.9.4, align 1
  %conv84.9.4 = zext i8 %930 to i32
  %scevgep47.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 9
  %931 = load i8, i8* %scevgep47.9.4, align 1
  %conv89.9.4 = zext i8 %931 to i32
  %xor90.9.4 = xor i32 %conv84.9.4, %conv89.9.4
  %conv91.9.4 = trunc i32 %xor90.9.4 to i8
  %scevgep50.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 9
  store i8 %conv91.9.4, i8* %scevgep50.9.4, align 1
  %scevgep31.10.4 = getelementptr i8, i8* %b, i64 10
  %932 = load i8, i8* %scevgep31.10.4, align 1
  %conv44.10.4 = zext i8 %932 to i32
  %scevgep34.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 10
  %933 = load i8, i8* %scevgep34.10.4, align 1
  %conv49.10.4 = zext i8 %933 to i32
  %xor.10.4 = xor i32 %conv44.10.4, %conv49.10.4
  %conv50.10.4 = trunc i32 %xor.10.4 to i8
  %scevgep38.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 10
  store i8 %conv50.10.4, i8* %scevgep38.10.4, align 1
  %934 = load i8, i8* %arrayidx56.4, align 1
  %conv57.10.4 = zext i8 %934 to i32
  %xor58.10.4 = xor i32 %conv57.10.4, 1
  %conv59.10.4 = trunc i32 %xor58.10.4 to i8
  %scevgep35.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 10
  %935 = load i8, i8* %scevgep35.10.4, align 1
  %call64.10.4 = call zeroext i8 @mult(i8 zeroext %conv59.10.4, i8 zeroext %935)
  %scevgep42.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 10
  store i8 %call64.10.4, i8* %scevgep42.10.4, align 1
  %936 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 10
  %937 = load i8, i8* %scevgep39.10.4, align 1
  %call75.10.4 = call zeroext i8 @mult(i8 zeroext %936, i8 zeroext %937)
  %scevgep46.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 10
  store i8 %call75.10.4, i8* %scevgep46.10.4, align 1
  %scevgep43.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 10
  %938 = load i8, i8* %scevgep43.10.4, align 1
  %conv84.10.4 = zext i8 %938 to i32
  %scevgep47.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 10
  %939 = load i8, i8* %scevgep47.10.4, align 1
  %conv89.10.4 = zext i8 %939 to i32
  %xor90.10.4 = xor i32 %conv84.10.4, %conv89.10.4
  %conv91.10.4 = trunc i32 %xor90.10.4 to i8
  %scevgep50.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 10
  store i8 %conv91.10.4, i8* %scevgep50.10.4, align 1
  %scevgep31.11.4 = getelementptr i8, i8* %b, i64 11
  %940 = load i8, i8* %scevgep31.11.4, align 1
  %conv44.11.4 = zext i8 %940 to i32
  %scevgep34.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 11
  %941 = load i8, i8* %scevgep34.11.4, align 1
  %conv49.11.4 = zext i8 %941 to i32
  %xor.11.4 = xor i32 %conv44.11.4, %conv49.11.4
  %conv50.11.4 = trunc i32 %xor.11.4 to i8
  %scevgep38.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 11
  store i8 %conv50.11.4, i8* %scevgep38.11.4, align 1
  %942 = load i8, i8* %arrayidx56.4, align 1
  %conv57.11.4 = zext i8 %942 to i32
  %xor58.11.4 = xor i32 %conv57.11.4, 1
  %conv59.11.4 = trunc i32 %xor58.11.4 to i8
  %scevgep35.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 11
  %943 = load i8, i8* %scevgep35.11.4, align 1
  %call64.11.4 = call zeroext i8 @mult(i8 zeroext %conv59.11.4, i8 zeroext %943)
  %scevgep42.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 11
  store i8 %call64.11.4, i8* %scevgep42.11.4, align 1
  %944 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 11
  %945 = load i8, i8* %scevgep39.11.4, align 1
  %call75.11.4 = call zeroext i8 @mult(i8 zeroext %944, i8 zeroext %945)
  %scevgep46.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 11
  store i8 %call75.11.4, i8* %scevgep46.11.4, align 1
  %scevgep43.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 11
  %946 = load i8, i8* %scevgep43.11.4, align 1
  %conv84.11.4 = zext i8 %946 to i32
  %scevgep47.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 11
  %947 = load i8, i8* %scevgep47.11.4, align 1
  %conv89.11.4 = zext i8 %947 to i32
  %xor90.11.4 = xor i32 %conv84.11.4, %conv89.11.4
  %conv91.11.4 = trunc i32 %xor90.11.4 to i8
  %scevgep50.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 11
  store i8 %conv91.11.4, i8* %scevgep50.11.4, align 1
  %scevgep31.12.4 = getelementptr i8, i8* %b, i64 12
  %948 = load i8, i8* %scevgep31.12.4, align 1
  %conv44.12.4 = zext i8 %948 to i32
  %scevgep34.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 12
  %949 = load i8, i8* %scevgep34.12.4, align 1
  %conv49.12.4 = zext i8 %949 to i32
  %xor.12.4 = xor i32 %conv44.12.4, %conv49.12.4
  %conv50.12.4 = trunc i32 %xor.12.4 to i8
  %scevgep38.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 12
  store i8 %conv50.12.4, i8* %scevgep38.12.4, align 1
  %950 = load i8, i8* %arrayidx56.4, align 1
  %conv57.12.4 = zext i8 %950 to i32
  %xor58.12.4 = xor i32 %conv57.12.4, 1
  %conv59.12.4 = trunc i32 %xor58.12.4 to i8
  %scevgep35.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 12
  %951 = load i8, i8* %scevgep35.12.4, align 1
  %call64.12.4 = call zeroext i8 @mult(i8 zeroext %conv59.12.4, i8 zeroext %951)
  %scevgep42.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 12
  store i8 %call64.12.4, i8* %scevgep42.12.4, align 1
  %952 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 12
  %953 = load i8, i8* %scevgep39.12.4, align 1
  %call75.12.4 = call zeroext i8 @mult(i8 zeroext %952, i8 zeroext %953)
  %scevgep46.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 12
  store i8 %call75.12.4, i8* %scevgep46.12.4, align 1
  %scevgep43.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 12
  %954 = load i8, i8* %scevgep43.12.4, align 1
  %conv84.12.4 = zext i8 %954 to i32
  %scevgep47.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 12
  %955 = load i8, i8* %scevgep47.12.4, align 1
  %conv89.12.4 = zext i8 %955 to i32
  %xor90.12.4 = xor i32 %conv84.12.4, %conv89.12.4
  %conv91.12.4 = trunc i32 %xor90.12.4 to i8
  %scevgep50.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 12
  store i8 %conv91.12.4, i8* %scevgep50.12.4, align 1
  %scevgep31.13.4 = getelementptr i8, i8* %b, i64 13
  %956 = load i8, i8* %scevgep31.13.4, align 1
  %conv44.13.4 = zext i8 %956 to i32
  %scevgep34.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 13
  %957 = load i8, i8* %scevgep34.13.4, align 1
  %conv49.13.4 = zext i8 %957 to i32
  %xor.13.4 = xor i32 %conv44.13.4, %conv49.13.4
  %conv50.13.4 = trunc i32 %xor.13.4 to i8
  %scevgep38.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 13
  store i8 %conv50.13.4, i8* %scevgep38.13.4, align 1
  %958 = load i8, i8* %arrayidx56.4, align 1
  %conv57.13.4 = zext i8 %958 to i32
  %xor58.13.4 = xor i32 %conv57.13.4, 1
  %conv59.13.4 = trunc i32 %xor58.13.4 to i8
  %scevgep35.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 13
  %959 = load i8, i8* %scevgep35.13.4, align 1
  %call64.13.4 = call zeroext i8 @mult(i8 zeroext %conv59.13.4, i8 zeroext %959)
  %scevgep42.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 13
  store i8 %call64.13.4, i8* %scevgep42.13.4, align 1
  %960 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 13
  %961 = load i8, i8* %scevgep39.13.4, align 1
  %call75.13.4 = call zeroext i8 @mult(i8 zeroext %960, i8 zeroext %961)
  %scevgep46.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 13
  store i8 %call75.13.4, i8* %scevgep46.13.4, align 1
  %scevgep43.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 13
  %962 = load i8, i8* %scevgep43.13.4, align 1
  %conv84.13.4 = zext i8 %962 to i32
  %scevgep47.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 13
  %963 = load i8, i8* %scevgep47.13.4, align 1
  %conv89.13.4 = zext i8 %963 to i32
  %xor90.13.4 = xor i32 %conv84.13.4, %conv89.13.4
  %conv91.13.4 = trunc i32 %xor90.13.4 to i8
  %scevgep50.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 13
  store i8 %conv91.13.4, i8* %scevgep50.13.4, align 1
  %scevgep31.14.4 = getelementptr i8, i8* %b, i64 14
  %964 = load i8, i8* %scevgep31.14.4, align 1
  %conv44.14.4 = zext i8 %964 to i32
  %scevgep34.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 14
  %965 = load i8, i8* %scevgep34.14.4, align 1
  %conv49.14.4 = zext i8 %965 to i32
  %xor.14.4 = xor i32 %conv44.14.4, %conv49.14.4
  %conv50.14.4 = trunc i32 %xor.14.4 to i8
  %scevgep38.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 14
  store i8 %conv50.14.4, i8* %scevgep38.14.4, align 1
  %966 = load i8, i8* %arrayidx56.4, align 1
  %conv57.14.4 = zext i8 %966 to i32
  %xor58.14.4 = xor i32 %conv57.14.4, 1
  %conv59.14.4 = trunc i32 %xor58.14.4 to i8
  %scevgep35.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 14
  %967 = load i8, i8* %scevgep35.14.4, align 1
  %call64.14.4 = call zeroext i8 @mult(i8 zeroext %conv59.14.4, i8 zeroext %967)
  %scevgep42.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 14
  store i8 %call64.14.4, i8* %scevgep42.14.4, align 1
  %968 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 14
  %969 = load i8, i8* %scevgep39.14.4, align 1
  %call75.14.4 = call zeroext i8 @mult(i8 zeroext %968, i8 zeroext %969)
  %scevgep46.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 14
  store i8 %call75.14.4, i8* %scevgep46.14.4, align 1
  %scevgep43.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 14
  %970 = load i8, i8* %scevgep43.14.4, align 1
  %conv84.14.4 = zext i8 %970 to i32
  %scevgep47.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 14
  %971 = load i8, i8* %scevgep47.14.4, align 1
  %conv89.14.4 = zext i8 %971 to i32
  %xor90.14.4 = xor i32 %conv84.14.4, %conv89.14.4
  %conv91.14.4 = trunc i32 %xor90.14.4 to i8
  %scevgep50.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 14
  store i8 %conv91.14.4, i8* %scevgep50.14.4, align 1
  %scevgep31.15.4 = getelementptr i8, i8* %b, i64 15
  %972 = load i8, i8* %scevgep31.15.4, align 1
  %conv44.15.4 = zext i8 %972 to i32
  %scevgep34.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 15
  %973 = load i8, i8* %scevgep34.15.4, align 1
  %conv49.15.4 = zext i8 %973 to i32
  %xor.15.4 = xor i32 %conv44.15.4, %conv49.15.4
  %conv50.15.4 = trunc i32 %xor.15.4 to i8
  %scevgep38.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 15
  store i8 %conv50.15.4, i8* %scevgep38.15.4, align 1
  %974 = load i8, i8* %arrayidx56.4, align 1
  %conv57.15.4 = zext i8 %974 to i32
  %xor58.15.4 = xor i32 %conv57.15.4, 1
  %conv59.15.4 = trunc i32 %xor58.15.4 to i8
  %scevgep35.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 0, i64 15
  %975 = load i8, i8* %scevgep35.15.4, align 1
  %call64.15.4 = call zeroext i8 @mult(i8 zeroext %conv59.15.4, i8 zeroext %975)
  %scevgep42.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 15
  store i8 %call64.15.4, i8* %scevgep42.15.4, align 1
  %976 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 0, i64 15
  %977 = load i8, i8* %scevgep39.15.4, align 1
  %call75.15.4 = call zeroext i8 @mult(i8 zeroext %976, i8 zeroext %977)
  %scevgep46.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 15
  store i8 %call75.15.4, i8* %scevgep46.15.4, align 1
  %scevgep43.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 0, i64 15
  %978 = load i8, i8* %scevgep43.15.4, align 1
  %conv84.15.4 = zext i8 %978 to i32
  %scevgep47.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 0, i64 15
  %979 = load i8, i8* %scevgep47.15.4, align 1
  %conv89.15.4 = zext i8 %979 to i32
  %xor90.15.4 = xor i32 %conv84.15.4, %conv89.15.4
  %conv91.15.4 = trunc i32 %xor90.15.4 to i8
  %scevgep50.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 0, i64 15
  store i8 %conv91.15.4, i8* %scevgep50.15.4, align 1
  %scevgep33.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %855, i64 0, i64 1, i64 0
  %980 = bitcast i8* %scevgep33.4 to [16 x [16 x i8]]*
  %scevgep37.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %856, i64 0, i64 1, i64 0
  %981 = bitcast i8* %scevgep37.4 to [16 x [16 x i8]]*
  %scevgep41.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %857, i64 0, i64 1, i64 0
  %982 = bitcast i8* %scevgep41.4 to [16 x [16 x i8]]*
  %scevgep45.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %858, i64 0, i64 1, i64 0
  %983 = bitcast i8* %scevgep45.4 to [16 x [16 x i8]]*
  %scevgep49.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %859, i64 0, i64 1, i64 0
  %984 = bitcast i8* %scevgep49.4 to [16 x [16 x i8]]*
  %arrayidx56.5 = getelementptr inbounds i8, i8* %a, i64 5
  %arrayidx70.5 = getelementptr inbounds i8, i8* %a, i64 5
  %985 = load i8, i8* %b, align 1
  %conv44.5336 = zext i8 %985 to i32
  %scevgep34.5337 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 0
  %986 = load i8, i8* %scevgep34.5337, align 1
  %conv49.5338 = zext i8 %986 to i32
  %xor.5339 = xor i32 %conv44.5336, %conv49.5338
  %conv50.5340 = trunc i32 %xor.5339 to i8
  %scevgep38.5341 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 0
  store i8 %conv50.5340, i8* %scevgep38.5341, align 1
  %987 = load i8, i8* %arrayidx56.5, align 1
  %conv57.5342 = zext i8 %987 to i32
  %xor58.5343 = xor i32 %conv57.5342, 1
  %conv59.5344 = trunc i32 %xor58.5343 to i8
  %scevgep35.5345 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 0
  %988 = load i8, i8* %scevgep35.5345, align 1
  %call64.5346 = call zeroext i8 @mult(i8 zeroext %conv59.5344, i8 zeroext %988)
  %scevgep42.5347 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 0
  store i8 %call64.5346, i8* %scevgep42.5347, align 1
  %989 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.5348 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 0
  %990 = load i8, i8* %scevgep39.5348, align 1
  %call75.5349 = call zeroext i8 @mult(i8 zeroext %989, i8 zeroext %990)
  %scevgep46.5350 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 0
  store i8 %call75.5349, i8* %scevgep46.5350, align 1
  %scevgep43.5351 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 0
  %991 = load i8, i8* %scevgep43.5351, align 1
  %conv84.5352 = zext i8 %991 to i32
  %scevgep47.5353 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 0
  %992 = load i8, i8* %scevgep47.5353, align 1
  %conv89.5354 = zext i8 %992 to i32
  %xor90.5355 = xor i32 %conv84.5352, %conv89.5354
  %conv91.5356 = trunc i32 %xor90.5355 to i8
  %scevgep50.5357 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 0
  store i8 %conv91.5356, i8* %scevgep50.5357, align 1
  %scevgep31.1.5 = getelementptr i8, i8* %b, i64 1
  %993 = load i8, i8* %scevgep31.1.5, align 1
  %conv44.1.5 = zext i8 %993 to i32
  %scevgep34.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 1
  %994 = load i8, i8* %scevgep34.1.5, align 1
  %conv49.1.5 = zext i8 %994 to i32
  %xor.1.5 = xor i32 %conv44.1.5, %conv49.1.5
  %conv50.1.5 = trunc i32 %xor.1.5 to i8
  %scevgep38.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 1
  store i8 %conv50.1.5, i8* %scevgep38.1.5, align 1
  %995 = load i8, i8* %arrayidx56.5, align 1
  %conv57.1.5 = zext i8 %995 to i32
  %xor58.1.5 = xor i32 %conv57.1.5, 1
  %conv59.1.5 = trunc i32 %xor58.1.5 to i8
  %scevgep35.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 1
  %996 = load i8, i8* %scevgep35.1.5, align 1
  %call64.1.5 = call zeroext i8 @mult(i8 zeroext %conv59.1.5, i8 zeroext %996)
  %scevgep42.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 1
  store i8 %call64.1.5, i8* %scevgep42.1.5, align 1
  %997 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 1
  %998 = load i8, i8* %scevgep39.1.5, align 1
  %call75.1.5 = call zeroext i8 @mult(i8 zeroext %997, i8 zeroext %998)
  %scevgep46.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 1
  store i8 %call75.1.5, i8* %scevgep46.1.5, align 1
  %scevgep43.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 1
  %999 = load i8, i8* %scevgep43.1.5, align 1
  %conv84.1.5 = zext i8 %999 to i32
  %scevgep47.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 1
  %1000 = load i8, i8* %scevgep47.1.5, align 1
  %conv89.1.5 = zext i8 %1000 to i32
  %xor90.1.5 = xor i32 %conv84.1.5, %conv89.1.5
  %conv91.1.5 = trunc i32 %xor90.1.5 to i8
  %scevgep50.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 1
  store i8 %conv91.1.5, i8* %scevgep50.1.5, align 1
  %scevgep31.2.5 = getelementptr i8, i8* %b, i64 2
  %1001 = load i8, i8* %scevgep31.2.5, align 1
  %conv44.2.5 = zext i8 %1001 to i32
  %scevgep34.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 2
  %1002 = load i8, i8* %scevgep34.2.5, align 1
  %conv49.2.5 = zext i8 %1002 to i32
  %xor.2.5 = xor i32 %conv44.2.5, %conv49.2.5
  %conv50.2.5 = trunc i32 %xor.2.5 to i8
  %scevgep38.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 2
  store i8 %conv50.2.5, i8* %scevgep38.2.5, align 1
  %1003 = load i8, i8* %arrayidx56.5, align 1
  %conv57.2.5 = zext i8 %1003 to i32
  %xor58.2.5 = xor i32 %conv57.2.5, 1
  %conv59.2.5 = trunc i32 %xor58.2.5 to i8
  %scevgep35.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 2
  %1004 = load i8, i8* %scevgep35.2.5, align 1
  %call64.2.5 = call zeroext i8 @mult(i8 zeroext %conv59.2.5, i8 zeroext %1004)
  %scevgep42.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 2
  store i8 %call64.2.5, i8* %scevgep42.2.5, align 1
  %1005 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 2
  %1006 = load i8, i8* %scevgep39.2.5, align 1
  %call75.2.5 = call zeroext i8 @mult(i8 zeroext %1005, i8 zeroext %1006)
  %scevgep46.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 2
  store i8 %call75.2.5, i8* %scevgep46.2.5, align 1
  %scevgep43.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 2
  %1007 = load i8, i8* %scevgep43.2.5, align 1
  %conv84.2.5 = zext i8 %1007 to i32
  %scevgep47.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 2
  %1008 = load i8, i8* %scevgep47.2.5, align 1
  %conv89.2.5 = zext i8 %1008 to i32
  %xor90.2.5 = xor i32 %conv84.2.5, %conv89.2.5
  %conv91.2.5 = trunc i32 %xor90.2.5 to i8
  %scevgep50.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 2
  store i8 %conv91.2.5, i8* %scevgep50.2.5, align 1
  %scevgep31.3.5 = getelementptr i8, i8* %b, i64 3
  %1009 = load i8, i8* %scevgep31.3.5, align 1
  %conv44.3.5 = zext i8 %1009 to i32
  %scevgep34.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 3
  %1010 = load i8, i8* %scevgep34.3.5, align 1
  %conv49.3.5 = zext i8 %1010 to i32
  %xor.3.5 = xor i32 %conv44.3.5, %conv49.3.5
  %conv50.3.5 = trunc i32 %xor.3.5 to i8
  %scevgep38.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 3
  store i8 %conv50.3.5, i8* %scevgep38.3.5, align 1
  %1011 = load i8, i8* %arrayidx56.5, align 1
  %conv57.3.5 = zext i8 %1011 to i32
  %xor58.3.5 = xor i32 %conv57.3.5, 1
  %conv59.3.5 = trunc i32 %xor58.3.5 to i8
  %scevgep35.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 3
  %1012 = load i8, i8* %scevgep35.3.5, align 1
  %call64.3.5 = call zeroext i8 @mult(i8 zeroext %conv59.3.5, i8 zeroext %1012)
  %scevgep42.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 3
  store i8 %call64.3.5, i8* %scevgep42.3.5, align 1
  %1013 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 3
  %1014 = load i8, i8* %scevgep39.3.5, align 1
  %call75.3.5 = call zeroext i8 @mult(i8 zeroext %1013, i8 zeroext %1014)
  %scevgep46.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 3
  store i8 %call75.3.5, i8* %scevgep46.3.5, align 1
  %scevgep43.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 3
  %1015 = load i8, i8* %scevgep43.3.5, align 1
  %conv84.3.5 = zext i8 %1015 to i32
  %scevgep47.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 3
  %1016 = load i8, i8* %scevgep47.3.5, align 1
  %conv89.3.5 = zext i8 %1016 to i32
  %xor90.3.5 = xor i32 %conv84.3.5, %conv89.3.5
  %conv91.3.5 = trunc i32 %xor90.3.5 to i8
  %scevgep50.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 3
  store i8 %conv91.3.5, i8* %scevgep50.3.5, align 1
  %scevgep31.4.5 = getelementptr i8, i8* %b, i64 4
  %1017 = load i8, i8* %scevgep31.4.5, align 1
  %conv44.4.5 = zext i8 %1017 to i32
  %scevgep34.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 4
  %1018 = load i8, i8* %scevgep34.4.5, align 1
  %conv49.4.5 = zext i8 %1018 to i32
  %xor.4.5 = xor i32 %conv44.4.5, %conv49.4.5
  %conv50.4.5 = trunc i32 %xor.4.5 to i8
  %scevgep38.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 4
  store i8 %conv50.4.5, i8* %scevgep38.4.5, align 1
  %1019 = load i8, i8* %arrayidx56.5, align 1
  %conv57.4.5 = zext i8 %1019 to i32
  %xor58.4.5 = xor i32 %conv57.4.5, 1
  %conv59.4.5 = trunc i32 %xor58.4.5 to i8
  %scevgep35.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 4
  %1020 = load i8, i8* %scevgep35.4.5, align 1
  %call64.4.5 = call zeroext i8 @mult(i8 zeroext %conv59.4.5, i8 zeroext %1020)
  %scevgep42.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 4
  store i8 %call64.4.5, i8* %scevgep42.4.5, align 1
  %1021 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 4
  %1022 = load i8, i8* %scevgep39.4.5, align 1
  %call75.4.5 = call zeroext i8 @mult(i8 zeroext %1021, i8 zeroext %1022)
  %scevgep46.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 4
  store i8 %call75.4.5, i8* %scevgep46.4.5, align 1
  %scevgep43.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 4
  %1023 = load i8, i8* %scevgep43.4.5, align 1
  %conv84.4.5 = zext i8 %1023 to i32
  %scevgep47.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 4
  %1024 = load i8, i8* %scevgep47.4.5, align 1
  %conv89.4.5 = zext i8 %1024 to i32
  %xor90.4.5 = xor i32 %conv84.4.5, %conv89.4.5
  %conv91.4.5 = trunc i32 %xor90.4.5 to i8
  %scevgep50.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 4
  store i8 %conv91.4.5, i8* %scevgep50.4.5, align 1
  %scevgep31.6.5 = getelementptr i8, i8* %b, i64 6
  %1025 = load i8, i8* %scevgep31.6.5, align 1
  %conv44.6.5 = zext i8 %1025 to i32
  %scevgep34.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 6
  %1026 = load i8, i8* %scevgep34.6.5, align 1
  %conv49.6.5 = zext i8 %1026 to i32
  %xor.6.5 = xor i32 %conv44.6.5, %conv49.6.5
  %conv50.6.5 = trunc i32 %xor.6.5 to i8
  %scevgep38.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 6
  store i8 %conv50.6.5, i8* %scevgep38.6.5, align 1
  %1027 = load i8, i8* %arrayidx56.5, align 1
  %conv57.6.5 = zext i8 %1027 to i32
  %xor58.6.5 = xor i32 %conv57.6.5, 1
  %conv59.6.5 = trunc i32 %xor58.6.5 to i8
  %scevgep35.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 6
  %1028 = load i8, i8* %scevgep35.6.5, align 1
  %call64.6.5 = call zeroext i8 @mult(i8 zeroext %conv59.6.5, i8 zeroext %1028)
  %scevgep42.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 6
  store i8 %call64.6.5, i8* %scevgep42.6.5, align 1
  %1029 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 6
  %1030 = load i8, i8* %scevgep39.6.5, align 1
  %call75.6.5 = call zeroext i8 @mult(i8 zeroext %1029, i8 zeroext %1030)
  %scevgep46.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 6
  store i8 %call75.6.5, i8* %scevgep46.6.5, align 1
  %scevgep43.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 6
  %1031 = load i8, i8* %scevgep43.6.5, align 1
  %conv84.6.5 = zext i8 %1031 to i32
  %scevgep47.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 6
  %1032 = load i8, i8* %scevgep47.6.5, align 1
  %conv89.6.5 = zext i8 %1032 to i32
  %xor90.6.5 = xor i32 %conv84.6.5, %conv89.6.5
  %conv91.6.5 = trunc i32 %xor90.6.5 to i8
  %scevgep50.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 6
  store i8 %conv91.6.5, i8* %scevgep50.6.5, align 1
  %scevgep31.7.5 = getelementptr i8, i8* %b, i64 7
  %1033 = load i8, i8* %scevgep31.7.5, align 1
  %conv44.7.5 = zext i8 %1033 to i32
  %scevgep34.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 7
  %1034 = load i8, i8* %scevgep34.7.5, align 1
  %conv49.7.5 = zext i8 %1034 to i32
  %xor.7.5 = xor i32 %conv44.7.5, %conv49.7.5
  %conv50.7.5 = trunc i32 %xor.7.5 to i8
  %scevgep38.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 7
  store i8 %conv50.7.5, i8* %scevgep38.7.5, align 1
  %1035 = load i8, i8* %arrayidx56.5, align 1
  %conv57.7.5 = zext i8 %1035 to i32
  %xor58.7.5 = xor i32 %conv57.7.5, 1
  %conv59.7.5 = trunc i32 %xor58.7.5 to i8
  %scevgep35.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 7
  %1036 = load i8, i8* %scevgep35.7.5, align 1
  %call64.7.5 = call zeroext i8 @mult(i8 zeroext %conv59.7.5, i8 zeroext %1036)
  %scevgep42.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 7
  store i8 %call64.7.5, i8* %scevgep42.7.5, align 1
  %1037 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 7
  %1038 = load i8, i8* %scevgep39.7.5, align 1
  %call75.7.5 = call zeroext i8 @mult(i8 zeroext %1037, i8 zeroext %1038)
  %scevgep46.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 7
  store i8 %call75.7.5, i8* %scevgep46.7.5, align 1
  %scevgep43.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 7
  %1039 = load i8, i8* %scevgep43.7.5, align 1
  %conv84.7.5 = zext i8 %1039 to i32
  %scevgep47.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 7
  %1040 = load i8, i8* %scevgep47.7.5, align 1
  %conv89.7.5 = zext i8 %1040 to i32
  %xor90.7.5 = xor i32 %conv84.7.5, %conv89.7.5
  %conv91.7.5 = trunc i32 %xor90.7.5 to i8
  %scevgep50.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 7
  store i8 %conv91.7.5, i8* %scevgep50.7.5, align 1
  %scevgep31.8.5 = getelementptr i8, i8* %b, i64 8
  %1041 = load i8, i8* %scevgep31.8.5, align 1
  %conv44.8.5 = zext i8 %1041 to i32
  %scevgep34.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 8
  %1042 = load i8, i8* %scevgep34.8.5, align 1
  %conv49.8.5 = zext i8 %1042 to i32
  %xor.8.5 = xor i32 %conv44.8.5, %conv49.8.5
  %conv50.8.5 = trunc i32 %xor.8.5 to i8
  %scevgep38.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 8
  store i8 %conv50.8.5, i8* %scevgep38.8.5, align 1
  %1043 = load i8, i8* %arrayidx56.5, align 1
  %conv57.8.5 = zext i8 %1043 to i32
  %xor58.8.5 = xor i32 %conv57.8.5, 1
  %conv59.8.5 = trunc i32 %xor58.8.5 to i8
  %scevgep35.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 8
  %1044 = load i8, i8* %scevgep35.8.5, align 1
  %call64.8.5 = call zeroext i8 @mult(i8 zeroext %conv59.8.5, i8 zeroext %1044)
  %scevgep42.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 8
  store i8 %call64.8.5, i8* %scevgep42.8.5, align 1
  %1045 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 8
  %1046 = load i8, i8* %scevgep39.8.5, align 1
  %call75.8.5 = call zeroext i8 @mult(i8 zeroext %1045, i8 zeroext %1046)
  %scevgep46.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 8
  store i8 %call75.8.5, i8* %scevgep46.8.5, align 1
  %scevgep43.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 8
  %1047 = load i8, i8* %scevgep43.8.5, align 1
  %conv84.8.5 = zext i8 %1047 to i32
  %scevgep47.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 8
  %1048 = load i8, i8* %scevgep47.8.5, align 1
  %conv89.8.5 = zext i8 %1048 to i32
  %xor90.8.5 = xor i32 %conv84.8.5, %conv89.8.5
  %conv91.8.5 = trunc i32 %xor90.8.5 to i8
  %scevgep50.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 8
  store i8 %conv91.8.5, i8* %scevgep50.8.5, align 1
  %scevgep31.9.5 = getelementptr i8, i8* %b, i64 9
  %1049 = load i8, i8* %scevgep31.9.5, align 1
  %conv44.9.5 = zext i8 %1049 to i32
  %scevgep34.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 9
  %1050 = load i8, i8* %scevgep34.9.5, align 1
  %conv49.9.5 = zext i8 %1050 to i32
  %xor.9.5 = xor i32 %conv44.9.5, %conv49.9.5
  %conv50.9.5 = trunc i32 %xor.9.5 to i8
  %scevgep38.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 9
  store i8 %conv50.9.5, i8* %scevgep38.9.5, align 1
  %1051 = load i8, i8* %arrayidx56.5, align 1
  %conv57.9.5 = zext i8 %1051 to i32
  %xor58.9.5 = xor i32 %conv57.9.5, 1
  %conv59.9.5 = trunc i32 %xor58.9.5 to i8
  %scevgep35.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 9
  %1052 = load i8, i8* %scevgep35.9.5, align 1
  %call64.9.5 = call zeroext i8 @mult(i8 zeroext %conv59.9.5, i8 zeroext %1052)
  %scevgep42.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 9
  store i8 %call64.9.5, i8* %scevgep42.9.5, align 1
  %1053 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 9
  %1054 = load i8, i8* %scevgep39.9.5, align 1
  %call75.9.5 = call zeroext i8 @mult(i8 zeroext %1053, i8 zeroext %1054)
  %scevgep46.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 9
  store i8 %call75.9.5, i8* %scevgep46.9.5, align 1
  %scevgep43.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 9
  %1055 = load i8, i8* %scevgep43.9.5, align 1
  %conv84.9.5 = zext i8 %1055 to i32
  %scevgep47.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 9
  %1056 = load i8, i8* %scevgep47.9.5, align 1
  %conv89.9.5 = zext i8 %1056 to i32
  %xor90.9.5 = xor i32 %conv84.9.5, %conv89.9.5
  %conv91.9.5 = trunc i32 %xor90.9.5 to i8
  %scevgep50.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 9
  store i8 %conv91.9.5, i8* %scevgep50.9.5, align 1
  %scevgep31.10.5 = getelementptr i8, i8* %b, i64 10
  %1057 = load i8, i8* %scevgep31.10.5, align 1
  %conv44.10.5 = zext i8 %1057 to i32
  %scevgep34.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 10
  %1058 = load i8, i8* %scevgep34.10.5, align 1
  %conv49.10.5 = zext i8 %1058 to i32
  %xor.10.5 = xor i32 %conv44.10.5, %conv49.10.5
  %conv50.10.5 = trunc i32 %xor.10.5 to i8
  %scevgep38.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 10
  store i8 %conv50.10.5, i8* %scevgep38.10.5, align 1
  %1059 = load i8, i8* %arrayidx56.5, align 1
  %conv57.10.5 = zext i8 %1059 to i32
  %xor58.10.5 = xor i32 %conv57.10.5, 1
  %conv59.10.5 = trunc i32 %xor58.10.5 to i8
  %scevgep35.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 10
  %1060 = load i8, i8* %scevgep35.10.5, align 1
  %call64.10.5 = call zeroext i8 @mult(i8 zeroext %conv59.10.5, i8 zeroext %1060)
  %scevgep42.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 10
  store i8 %call64.10.5, i8* %scevgep42.10.5, align 1
  %1061 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 10
  %1062 = load i8, i8* %scevgep39.10.5, align 1
  %call75.10.5 = call zeroext i8 @mult(i8 zeroext %1061, i8 zeroext %1062)
  %scevgep46.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 10
  store i8 %call75.10.5, i8* %scevgep46.10.5, align 1
  %scevgep43.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 10
  %1063 = load i8, i8* %scevgep43.10.5, align 1
  %conv84.10.5 = zext i8 %1063 to i32
  %scevgep47.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 10
  %1064 = load i8, i8* %scevgep47.10.5, align 1
  %conv89.10.5 = zext i8 %1064 to i32
  %xor90.10.5 = xor i32 %conv84.10.5, %conv89.10.5
  %conv91.10.5 = trunc i32 %xor90.10.5 to i8
  %scevgep50.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 10
  store i8 %conv91.10.5, i8* %scevgep50.10.5, align 1
  %scevgep31.11.5 = getelementptr i8, i8* %b, i64 11
  %1065 = load i8, i8* %scevgep31.11.5, align 1
  %conv44.11.5 = zext i8 %1065 to i32
  %scevgep34.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 11
  %1066 = load i8, i8* %scevgep34.11.5, align 1
  %conv49.11.5 = zext i8 %1066 to i32
  %xor.11.5 = xor i32 %conv44.11.5, %conv49.11.5
  %conv50.11.5 = trunc i32 %xor.11.5 to i8
  %scevgep38.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 11
  store i8 %conv50.11.5, i8* %scevgep38.11.5, align 1
  %1067 = load i8, i8* %arrayidx56.5, align 1
  %conv57.11.5 = zext i8 %1067 to i32
  %xor58.11.5 = xor i32 %conv57.11.5, 1
  %conv59.11.5 = trunc i32 %xor58.11.5 to i8
  %scevgep35.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 11
  %1068 = load i8, i8* %scevgep35.11.5, align 1
  %call64.11.5 = call zeroext i8 @mult(i8 zeroext %conv59.11.5, i8 zeroext %1068)
  %scevgep42.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 11
  store i8 %call64.11.5, i8* %scevgep42.11.5, align 1
  %1069 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 11
  %1070 = load i8, i8* %scevgep39.11.5, align 1
  %call75.11.5 = call zeroext i8 @mult(i8 zeroext %1069, i8 zeroext %1070)
  %scevgep46.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 11
  store i8 %call75.11.5, i8* %scevgep46.11.5, align 1
  %scevgep43.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 11
  %1071 = load i8, i8* %scevgep43.11.5, align 1
  %conv84.11.5 = zext i8 %1071 to i32
  %scevgep47.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 11
  %1072 = load i8, i8* %scevgep47.11.5, align 1
  %conv89.11.5 = zext i8 %1072 to i32
  %xor90.11.5 = xor i32 %conv84.11.5, %conv89.11.5
  %conv91.11.5 = trunc i32 %xor90.11.5 to i8
  %scevgep50.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 11
  store i8 %conv91.11.5, i8* %scevgep50.11.5, align 1
  %scevgep31.12.5 = getelementptr i8, i8* %b, i64 12
  %1073 = load i8, i8* %scevgep31.12.5, align 1
  %conv44.12.5 = zext i8 %1073 to i32
  %scevgep34.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 12
  %1074 = load i8, i8* %scevgep34.12.5, align 1
  %conv49.12.5 = zext i8 %1074 to i32
  %xor.12.5 = xor i32 %conv44.12.5, %conv49.12.5
  %conv50.12.5 = trunc i32 %xor.12.5 to i8
  %scevgep38.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 12
  store i8 %conv50.12.5, i8* %scevgep38.12.5, align 1
  %1075 = load i8, i8* %arrayidx56.5, align 1
  %conv57.12.5 = zext i8 %1075 to i32
  %xor58.12.5 = xor i32 %conv57.12.5, 1
  %conv59.12.5 = trunc i32 %xor58.12.5 to i8
  %scevgep35.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 12
  %1076 = load i8, i8* %scevgep35.12.5, align 1
  %call64.12.5 = call zeroext i8 @mult(i8 zeroext %conv59.12.5, i8 zeroext %1076)
  %scevgep42.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 12
  store i8 %call64.12.5, i8* %scevgep42.12.5, align 1
  %1077 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 12
  %1078 = load i8, i8* %scevgep39.12.5, align 1
  %call75.12.5 = call zeroext i8 @mult(i8 zeroext %1077, i8 zeroext %1078)
  %scevgep46.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 12
  store i8 %call75.12.5, i8* %scevgep46.12.5, align 1
  %scevgep43.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 12
  %1079 = load i8, i8* %scevgep43.12.5, align 1
  %conv84.12.5 = zext i8 %1079 to i32
  %scevgep47.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 12
  %1080 = load i8, i8* %scevgep47.12.5, align 1
  %conv89.12.5 = zext i8 %1080 to i32
  %xor90.12.5 = xor i32 %conv84.12.5, %conv89.12.5
  %conv91.12.5 = trunc i32 %xor90.12.5 to i8
  %scevgep50.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 12
  store i8 %conv91.12.5, i8* %scevgep50.12.5, align 1
  %scevgep31.13.5 = getelementptr i8, i8* %b, i64 13
  %1081 = load i8, i8* %scevgep31.13.5, align 1
  %conv44.13.5 = zext i8 %1081 to i32
  %scevgep34.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 13
  %1082 = load i8, i8* %scevgep34.13.5, align 1
  %conv49.13.5 = zext i8 %1082 to i32
  %xor.13.5 = xor i32 %conv44.13.5, %conv49.13.5
  %conv50.13.5 = trunc i32 %xor.13.5 to i8
  %scevgep38.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 13
  store i8 %conv50.13.5, i8* %scevgep38.13.5, align 1
  %1083 = load i8, i8* %arrayidx56.5, align 1
  %conv57.13.5 = zext i8 %1083 to i32
  %xor58.13.5 = xor i32 %conv57.13.5, 1
  %conv59.13.5 = trunc i32 %xor58.13.5 to i8
  %scevgep35.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 13
  %1084 = load i8, i8* %scevgep35.13.5, align 1
  %call64.13.5 = call zeroext i8 @mult(i8 zeroext %conv59.13.5, i8 zeroext %1084)
  %scevgep42.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 13
  store i8 %call64.13.5, i8* %scevgep42.13.5, align 1
  %1085 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 13
  %1086 = load i8, i8* %scevgep39.13.5, align 1
  %call75.13.5 = call zeroext i8 @mult(i8 zeroext %1085, i8 zeroext %1086)
  %scevgep46.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 13
  store i8 %call75.13.5, i8* %scevgep46.13.5, align 1
  %scevgep43.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 13
  %1087 = load i8, i8* %scevgep43.13.5, align 1
  %conv84.13.5 = zext i8 %1087 to i32
  %scevgep47.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 13
  %1088 = load i8, i8* %scevgep47.13.5, align 1
  %conv89.13.5 = zext i8 %1088 to i32
  %xor90.13.5 = xor i32 %conv84.13.5, %conv89.13.5
  %conv91.13.5 = trunc i32 %xor90.13.5 to i8
  %scevgep50.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 13
  store i8 %conv91.13.5, i8* %scevgep50.13.5, align 1
  %scevgep31.14.5 = getelementptr i8, i8* %b, i64 14
  %1089 = load i8, i8* %scevgep31.14.5, align 1
  %conv44.14.5 = zext i8 %1089 to i32
  %scevgep34.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 14
  %1090 = load i8, i8* %scevgep34.14.5, align 1
  %conv49.14.5 = zext i8 %1090 to i32
  %xor.14.5 = xor i32 %conv44.14.5, %conv49.14.5
  %conv50.14.5 = trunc i32 %xor.14.5 to i8
  %scevgep38.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 14
  store i8 %conv50.14.5, i8* %scevgep38.14.5, align 1
  %1091 = load i8, i8* %arrayidx56.5, align 1
  %conv57.14.5 = zext i8 %1091 to i32
  %xor58.14.5 = xor i32 %conv57.14.5, 1
  %conv59.14.5 = trunc i32 %xor58.14.5 to i8
  %scevgep35.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 14
  %1092 = load i8, i8* %scevgep35.14.5, align 1
  %call64.14.5 = call zeroext i8 @mult(i8 zeroext %conv59.14.5, i8 zeroext %1092)
  %scevgep42.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 14
  store i8 %call64.14.5, i8* %scevgep42.14.5, align 1
  %1093 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 14
  %1094 = load i8, i8* %scevgep39.14.5, align 1
  %call75.14.5 = call zeroext i8 @mult(i8 zeroext %1093, i8 zeroext %1094)
  %scevgep46.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 14
  store i8 %call75.14.5, i8* %scevgep46.14.5, align 1
  %scevgep43.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 14
  %1095 = load i8, i8* %scevgep43.14.5, align 1
  %conv84.14.5 = zext i8 %1095 to i32
  %scevgep47.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 14
  %1096 = load i8, i8* %scevgep47.14.5, align 1
  %conv89.14.5 = zext i8 %1096 to i32
  %xor90.14.5 = xor i32 %conv84.14.5, %conv89.14.5
  %conv91.14.5 = trunc i32 %xor90.14.5 to i8
  %scevgep50.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 14
  store i8 %conv91.14.5, i8* %scevgep50.14.5, align 1
  %scevgep31.15.5 = getelementptr i8, i8* %b, i64 15
  %1097 = load i8, i8* %scevgep31.15.5, align 1
  %conv44.15.5 = zext i8 %1097 to i32
  %scevgep34.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 15
  %1098 = load i8, i8* %scevgep34.15.5, align 1
  %conv49.15.5 = zext i8 %1098 to i32
  %xor.15.5 = xor i32 %conv44.15.5, %conv49.15.5
  %conv50.15.5 = trunc i32 %xor.15.5 to i8
  %scevgep38.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 15
  store i8 %conv50.15.5, i8* %scevgep38.15.5, align 1
  %1099 = load i8, i8* %arrayidx56.5, align 1
  %conv57.15.5 = zext i8 %1099 to i32
  %xor58.15.5 = xor i32 %conv57.15.5, 1
  %conv59.15.5 = trunc i32 %xor58.15.5 to i8
  %scevgep35.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 0, i64 15
  %1100 = load i8, i8* %scevgep35.15.5, align 1
  %call64.15.5 = call zeroext i8 @mult(i8 zeroext %conv59.15.5, i8 zeroext %1100)
  %scevgep42.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 15
  store i8 %call64.15.5, i8* %scevgep42.15.5, align 1
  %1101 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 0, i64 15
  %1102 = load i8, i8* %scevgep39.15.5, align 1
  %call75.15.5 = call zeroext i8 @mult(i8 zeroext %1101, i8 zeroext %1102)
  %scevgep46.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 15
  store i8 %call75.15.5, i8* %scevgep46.15.5, align 1
  %scevgep43.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 0, i64 15
  %1103 = load i8, i8* %scevgep43.15.5, align 1
  %conv84.15.5 = zext i8 %1103 to i32
  %scevgep47.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 0, i64 15
  %1104 = load i8, i8* %scevgep47.15.5, align 1
  %conv89.15.5 = zext i8 %1104 to i32
  %xor90.15.5 = xor i32 %conv84.15.5, %conv89.15.5
  %conv91.15.5 = trunc i32 %xor90.15.5 to i8
  %scevgep50.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 0, i64 15
  store i8 %conv91.15.5, i8* %scevgep50.15.5, align 1
  %scevgep33.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %980, i64 0, i64 1, i64 0
  %1105 = bitcast i8* %scevgep33.5 to [16 x [16 x i8]]*
  %scevgep37.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %981, i64 0, i64 1, i64 0
  %1106 = bitcast i8* %scevgep37.5 to [16 x [16 x i8]]*
  %scevgep41.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %982, i64 0, i64 1, i64 0
  %1107 = bitcast i8* %scevgep41.5 to [16 x [16 x i8]]*
  %scevgep45.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %983, i64 0, i64 1, i64 0
  %1108 = bitcast i8* %scevgep45.5 to [16 x [16 x i8]]*
  %scevgep49.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %984, i64 0, i64 1, i64 0
  %1109 = bitcast i8* %scevgep49.5 to [16 x [16 x i8]]*
  %arrayidx56.6 = getelementptr inbounds i8, i8* %a, i64 6
  %arrayidx70.6 = getelementptr inbounds i8, i8* %a, i64 6
  %1110 = load i8, i8* %b, align 1
  %conv44.6363 = zext i8 %1110 to i32
  %scevgep34.6364 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 0
  %1111 = load i8, i8* %scevgep34.6364, align 1
  %conv49.6365 = zext i8 %1111 to i32
  %xor.6366 = xor i32 %conv44.6363, %conv49.6365
  %conv50.6367 = trunc i32 %xor.6366 to i8
  %scevgep38.6368 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 0
  store i8 %conv50.6367, i8* %scevgep38.6368, align 1
  %1112 = load i8, i8* %arrayidx56.6, align 1
  %conv57.6369 = zext i8 %1112 to i32
  %xor58.6370 = xor i32 %conv57.6369, 1
  %conv59.6371 = trunc i32 %xor58.6370 to i8
  %scevgep35.6372 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 0
  %1113 = load i8, i8* %scevgep35.6372, align 1
  %call64.6373 = call zeroext i8 @mult(i8 zeroext %conv59.6371, i8 zeroext %1113)
  %scevgep42.6374 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 0
  store i8 %call64.6373, i8* %scevgep42.6374, align 1
  %1114 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.6375 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 0
  %1115 = load i8, i8* %scevgep39.6375, align 1
  %call75.6376 = call zeroext i8 @mult(i8 zeroext %1114, i8 zeroext %1115)
  %scevgep46.6377 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 0
  store i8 %call75.6376, i8* %scevgep46.6377, align 1
  %scevgep43.6378 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 0
  %1116 = load i8, i8* %scevgep43.6378, align 1
  %conv84.6379 = zext i8 %1116 to i32
  %scevgep47.6380 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 0
  %1117 = load i8, i8* %scevgep47.6380, align 1
  %conv89.6381 = zext i8 %1117 to i32
  %xor90.6382 = xor i32 %conv84.6379, %conv89.6381
  %conv91.6383 = trunc i32 %xor90.6382 to i8
  %scevgep50.6384 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 0
  store i8 %conv91.6383, i8* %scevgep50.6384, align 1
  %scevgep31.1.6 = getelementptr i8, i8* %b, i64 1
  %1118 = load i8, i8* %scevgep31.1.6, align 1
  %conv44.1.6 = zext i8 %1118 to i32
  %scevgep34.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 1
  %1119 = load i8, i8* %scevgep34.1.6, align 1
  %conv49.1.6 = zext i8 %1119 to i32
  %xor.1.6 = xor i32 %conv44.1.6, %conv49.1.6
  %conv50.1.6 = trunc i32 %xor.1.6 to i8
  %scevgep38.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 1
  store i8 %conv50.1.6, i8* %scevgep38.1.6, align 1
  %1120 = load i8, i8* %arrayidx56.6, align 1
  %conv57.1.6 = zext i8 %1120 to i32
  %xor58.1.6 = xor i32 %conv57.1.6, 1
  %conv59.1.6 = trunc i32 %xor58.1.6 to i8
  %scevgep35.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 1
  %1121 = load i8, i8* %scevgep35.1.6, align 1
  %call64.1.6 = call zeroext i8 @mult(i8 zeroext %conv59.1.6, i8 zeroext %1121)
  %scevgep42.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 1
  store i8 %call64.1.6, i8* %scevgep42.1.6, align 1
  %1122 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 1
  %1123 = load i8, i8* %scevgep39.1.6, align 1
  %call75.1.6 = call zeroext i8 @mult(i8 zeroext %1122, i8 zeroext %1123)
  %scevgep46.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 1
  store i8 %call75.1.6, i8* %scevgep46.1.6, align 1
  %scevgep43.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 1
  %1124 = load i8, i8* %scevgep43.1.6, align 1
  %conv84.1.6 = zext i8 %1124 to i32
  %scevgep47.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 1
  %1125 = load i8, i8* %scevgep47.1.6, align 1
  %conv89.1.6 = zext i8 %1125 to i32
  %xor90.1.6 = xor i32 %conv84.1.6, %conv89.1.6
  %conv91.1.6 = trunc i32 %xor90.1.6 to i8
  %scevgep50.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 1
  store i8 %conv91.1.6, i8* %scevgep50.1.6, align 1
  %scevgep31.2.6 = getelementptr i8, i8* %b, i64 2
  %1126 = load i8, i8* %scevgep31.2.6, align 1
  %conv44.2.6 = zext i8 %1126 to i32
  %scevgep34.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 2
  %1127 = load i8, i8* %scevgep34.2.6, align 1
  %conv49.2.6 = zext i8 %1127 to i32
  %xor.2.6 = xor i32 %conv44.2.6, %conv49.2.6
  %conv50.2.6 = trunc i32 %xor.2.6 to i8
  %scevgep38.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 2
  store i8 %conv50.2.6, i8* %scevgep38.2.6, align 1
  %1128 = load i8, i8* %arrayidx56.6, align 1
  %conv57.2.6 = zext i8 %1128 to i32
  %xor58.2.6 = xor i32 %conv57.2.6, 1
  %conv59.2.6 = trunc i32 %xor58.2.6 to i8
  %scevgep35.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 2
  %1129 = load i8, i8* %scevgep35.2.6, align 1
  %call64.2.6 = call zeroext i8 @mult(i8 zeroext %conv59.2.6, i8 zeroext %1129)
  %scevgep42.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 2
  store i8 %call64.2.6, i8* %scevgep42.2.6, align 1
  %1130 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 2
  %1131 = load i8, i8* %scevgep39.2.6, align 1
  %call75.2.6 = call zeroext i8 @mult(i8 zeroext %1130, i8 zeroext %1131)
  %scevgep46.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 2
  store i8 %call75.2.6, i8* %scevgep46.2.6, align 1
  %scevgep43.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 2
  %1132 = load i8, i8* %scevgep43.2.6, align 1
  %conv84.2.6 = zext i8 %1132 to i32
  %scevgep47.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 2
  %1133 = load i8, i8* %scevgep47.2.6, align 1
  %conv89.2.6 = zext i8 %1133 to i32
  %xor90.2.6 = xor i32 %conv84.2.6, %conv89.2.6
  %conv91.2.6 = trunc i32 %xor90.2.6 to i8
  %scevgep50.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 2
  store i8 %conv91.2.6, i8* %scevgep50.2.6, align 1
  %scevgep31.3.6 = getelementptr i8, i8* %b, i64 3
  %1134 = load i8, i8* %scevgep31.3.6, align 1
  %conv44.3.6 = zext i8 %1134 to i32
  %scevgep34.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 3
  %1135 = load i8, i8* %scevgep34.3.6, align 1
  %conv49.3.6 = zext i8 %1135 to i32
  %xor.3.6 = xor i32 %conv44.3.6, %conv49.3.6
  %conv50.3.6 = trunc i32 %xor.3.6 to i8
  %scevgep38.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 3
  store i8 %conv50.3.6, i8* %scevgep38.3.6, align 1
  %1136 = load i8, i8* %arrayidx56.6, align 1
  %conv57.3.6 = zext i8 %1136 to i32
  %xor58.3.6 = xor i32 %conv57.3.6, 1
  %conv59.3.6 = trunc i32 %xor58.3.6 to i8
  %scevgep35.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 3
  %1137 = load i8, i8* %scevgep35.3.6, align 1
  %call64.3.6 = call zeroext i8 @mult(i8 zeroext %conv59.3.6, i8 zeroext %1137)
  %scevgep42.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 3
  store i8 %call64.3.6, i8* %scevgep42.3.6, align 1
  %1138 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 3
  %1139 = load i8, i8* %scevgep39.3.6, align 1
  %call75.3.6 = call zeroext i8 @mult(i8 zeroext %1138, i8 zeroext %1139)
  %scevgep46.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 3
  store i8 %call75.3.6, i8* %scevgep46.3.6, align 1
  %scevgep43.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 3
  %1140 = load i8, i8* %scevgep43.3.6, align 1
  %conv84.3.6 = zext i8 %1140 to i32
  %scevgep47.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 3
  %1141 = load i8, i8* %scevgep47.3.6, align 1
  %conv89.3.6 = zext i8 %1141 to i32
  %xor90.3.6 = xor i32 %conv84.3.6, %conv89.3.6
  %conv91.3.6 = trunc i32 %xor90.3.6 to i8
  %scevgep50.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 3
  store i8 %conv91.3.6, i8* %scevgep50.3.6, align 1
  %scevgep31.4.6 = getelementptr i8, i8* %b, i64 4
  %1142 = load i8, i8* %scevgep31.4.6, align 1
  %conv44.4.6 = zext i8 %1142 to i32
  %scevgep34.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 4
  %1143 = load i8, i8* %scevgep34.4.6, align 1
  %conv49.4.6 = zext i8 %1143 to i32
  %xor.4.6 = xor i32 %conv44.4.6, %conv49.4.6
  %conv50.4.6 = trunc i32 %xor.4.6 to i8
  %scevgep38.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 4
  store i8 %conv50.4.6, i8* %scevgep38.4.6, align 1
  %1144 = load i8, i8* %arrayidx56.6, align 1
  %conv57.4.6 = zext i8 %1144 to i32
  %xor58.4.6 = xor i32 %conv57.4.6, 1
  %conv59.4.6 = trunc i32 %xor58.4.6 to i8
  %scevgep35.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 4
  %1145 = load i8, i8* %scevgep35.4.6, align 1
  %call64.4.6 = call zeroext i8 @mult(i8 zeroext %conv59.4.6, i8 zeroext %1145)
  %scevgep42.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 4
  store i8 %call64.4.6, i8* %scevgep42.4.6, align 1
  %1146 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 4
  %1147 = load i8, i8* %scevgep39.4.6, align 1
  %call75.4.6 = call zeroext i8 @mult(i8 zeroext %1146, i8 zeroext %1147)
  %scevgep46.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 4
  store i8 %call75.4.6, i8* %scevgep46.4.6, align 1
  %scevgep43.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 4
  %1148 = load i8, i8* %scevgep43.4.6, align 1
  %conv84.4.6 = zext i8 %1148 to i32
  %scevgep47.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 4
  %1149 = load i8, i8* %scevgep47.4.6, align 1
  %conv89.4.6 = zext i8 %1149 to i32
  %xor90.4.6 = xor i32 %conv84.4.6, %conv89.4.6
  %conv91.4.6 = trunc i32 %xor90.4.6 to i8
  %scevgep50.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 4
  store i8 %conv91.4.6, i8* %scevgep50.4.6, align 1
  %scevgep31.5.6 = getelementptr i8, i8* %b, i64 5
  %1150 = load i8, i8* %scevgep31.5.6, align 1
  %conv44.5.6 = zext i8 %1150 to i32
  %scevgep34.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 5
  %1151 = load i8, i8* %scevgep34.5.6, align 1
  %conv49.5.6 = zext i8 %1151 to i32
  %xor.5.6 = xor i32 %conv44.5.6, %conv49.5.6
  %conv50.5.6 = trunc i32 %xor.5.6 to i8
  %scevgep38.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 5
  store i8 %conv50.5.6, i8* %scevgep38.5.6, align 1
  %1152 = load i8, i8* %arrayidx56.6, align 1
  %conv57.5.6 = zext i8 %1152 to i32
  %xor58.5.6 = xor i32 %conv57.5.6, 1
  %conv59.5.6 = trunc i32 %xor58.5.6 to i8
  %scevgep35.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 5
  %1153 = load i8, i8* %scevgep35.5.6, align 1
  %call64.5.6 = call zeroext i8 @mult(i8 zeroext %conv59.5.6, i8 zeroext %1153)
  %scevgep42.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 5
  store i8 %call64.5.6, i8* %scevgep42.5.6, align 1
  %1154 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 5
  %1155 = load i8, i8* %scevgep39.5.6, align 1
  %call75.5.6 = call zeroext i8 @mult(i8 zeroext %1154, i8 zeroext %1155)
  %scevgep46.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 5
  store i8 %call75.5.6, i8* %scevgep46.5.6, align 1
  %scevgep43.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 5
  %1156 = load i8, i8* %scevgep43.5.6, align 1
  %conv84.5.6 = zext i8 %1156 to i32
  %scevgep47.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 5
  %1157 = load i8, i8* %scevgep47.5.6, align 1
  %conv89.5.6 = zext i8 %1157 to i32
  %xor90.5.6 = xor i32 %conv84.5.6, %conv89.5.6
  %conv91.5.6 = trunc i32 %xor90.5.6 to i8
  %scevgep50.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 5
  store i8 %conv91.5.6, i8* %scevgep50.5.6, align 1
  %scevgep31.7.6 = getelementptr i8, i8* %b, i64 7
  %1158 = load i8, i8* %scevgep31.7.6, align 1
  %conv44.7.6 = zext i8 %1158 to i32
  %scevgep34.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 7
  %1159 = load i8, i8* %scevgep34.7.6, align 1
  %conv49.7.6 = zext i8 %1159 to i32
  %xor.7.6 = xor i32 %conv44.7.6, %conv49.7.6
  %conv50.7.6 = trunc i32 %xor.7.6 to i8
  %scevgep38.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 7
  store i8 %conv50.7.6, i8* %scevgep38.7.6, align 1
  %1160 = load i8, i8* %arrayidx56.6, align 1
  %conv57.7.6 = zext i8 %1160 to i32
  %xor58.7.6 = xor i32 %conv57.7.6, 1
  %conv59.7.6 = trunc i32 %xor58.7.6 to i8
  %scevgep35.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 7
  %1161 = load i8, i8* %scevgep35.7.6, align 1
  %call64.7.6 = call zeroext i8 @mult(i8 zeroext %conv59.7.6, i8 zeroext %1161)
  %scevgep42.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 7
  store i8 %call64.7.6, i8* %scevgep42.7.6, align 1
  %1162 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 7
  %1163 = load i8, i8* %scevgep39.7.6, align 1
  %call75.7.6 = call zeroext i8 @mult(i8 zeroext %1162, i8 zeroext %1163)
  %scevgep46.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 7
  store i8 %call75.7.6, i8* %scevgep46.7.6, align 1
  %scevgep43.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 7
  %1164 = load i8, i8* %scevgep43.7.6, align 1
  %conv84.7.6 = zext i8 %1164 to i32
  %scevgep47.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 7
  %1165 = load i8, i8* %scevgep47.7.6, align 1
  %conv89.7.6 = zext i8 %1165 to i32
  %xor90.7.6 = xor i32 %conv84.7.6, %conv89.7.6
  %conv91.7.6 = trunc i32 %xor90.7.6 to i8
  %scevgep50.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 7
  store i8 %conv91.7.6, i8* %scevgep50.7.6, align 1
  %scevgep31.8.6 = getelementptr i8, i8* %b, i64 8
  %1166 = load i8, i8* %scevgep31.8.6, align 1
  %conv44.8.6 = zext i8 %1166 to i32
  %scevgep34.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 8
  %1167 = load i8, i8* %scevgep34.8.6, align 1
  %conv49.8.6 = zext i8 %1167 to i32
  %xor.8.6 = xor i32 %conv44.8.6, %conv49.8.6
  %conv50.8.6 = trunc i32 %xor.8.6 to i8
  %scevgep38.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 8
  store i8 %conv50.8.6, i8* %scevgep38.8.6, align 1
  %1168 = load i8, i8* %arrayidx56.6, align 1
  %conv57.8.6 = zext i8 %1168 to i32
  %xor58.8.6 = xor i32 %conv57.8.6, 1
  %conv59.8.6 = trunc i32 %xor58.8.6 to i8
  %scevgep35.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 8
  %1169 = load i8, i8* %scevgep35.8.6, align 1
  %call64.8.6 = call zeroext i8 @mult(i8 zeroext %conv59.8.6, i8 zeroext %1169)
  %scevgep42.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 8
  store i8 %call64.8.6, i8* %scevgep42.8.6, align 1
  %1170 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 8
  %1171 = load i8, i8* %scevgep39.8.6, align 1
  %call75.8.6 = call zeroext i8 @mult(i8 zeroext %1170, i8 zeroext %1171)
  %scevgep46.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 8
  store i8 %call75.8.6, i8* %scevgep46.8.6, align 1
  %scevgep43.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 8
  %1172 = load i8, i8* %scevgep43.8.6, align 1
  %conv84.8.6 = zext i8 %1172 to i32
  %scevgep47.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 8
  %1173 = load i8, i8* %scevgep47.8.6, align 1
  %conv89.8.6 = zext i8 %1173 to i32
  %xor90.8.6 = xor i32 %conv84.8.6, %conv89.8.6
  %conv91.8.6 = trunc i32 %xor90.8.6 to i8
  %scevgep50.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 8
  store i8 %conv91.8.6, i8* %scevgep50.8.6, align 1
  %scevgep31.9.6 = getelementptr i8, i8* %b, i64 9
  %1174 = load i8, i8* %scevgep31.9.6, align 1
  %conv44.9.6 = zext i8 %1174 to i32
  %scevgep34.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 9
  %1175 = load i8, i8* %scevgep34.9.6, align 1
  %conv49.9.6 = zext i8 %1175 to i32
  %xor.9.6 = xor i32 %conv44.9.6, %conv49.9.6
  %conv50.9.6 = trunc i32 %xor.9.6 to i8
  %scevgep38.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 9
  store i8 %conv50.9.6, i8* %scevgep38.9.6, align 1
  %1176 = load i8, i8* %arrayidx56.6, align 1
  %conv57.9.6 = zext i8 %1176 to i32
  %xor58.9.6 = xor i32 %conv57.9.6, 1
  %conv59.9.6 = trunc i32 %xor58.9.6 to i8
  %scevgep35.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 9
  %1177 = load i8, i8* %scevgep35.9.6, align 1
  %call64.9.6 = call zeroext i8 @mult(i8 zeroext %conv59.9.6, i8 zeroext %1177)
  %scevgep42.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 9
  store i8 %call64.9.6, i8* %scevgep42.9.6, align 1
  %1178 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 9
  %1179 = load i8, i8* %scevgep39.9.6, align 1
  %call75.9.6 = call zeroext i8 @mult(i8 zeroext %1178, i8 zeroext %1179)
  %scevgep46.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 9
  store i8 %call75.9.6, i8* %scevgep46.9.6, align 1
  %scevgep43.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 9
  %1180 = load i8, i8* %scevgep43.9.6, align 1
  %conv84.9.6 = zext i8 %1180 to i32
  %scevgep47.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 9
  %1181 = load i8, i8* %scevgep47.9.6, align 1
  %conv89.9.6 = zext i8 %1181 to i32
  %xor90.9.6 = xor i32 %conv84.9.6, %conv89.9.6
  %conv91.9.6 = trunc i32 %xor90.9.6 to i8
  %scevgep50.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 9
  store i8 %conv91.9.6, i8* %scevgep50.9.6, align 1
  %scevgep31.10.6 = getelementptr i8, i8* %b, i64 10
  %1182 = load i8, i8* %scevgep31.10.6, align 1
  %conv44.10.6 = zext i8 %1182 to i32
  %scevgep34.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 10
  %1183 = load i8, i8* %scevgep34.10.6, align 1
  %conv49.10.6 = zext i8 %1183 to i32
  %xor.10.6 = xor i32 %conv44.10.6, %conv49.10.6
  %conv50.10.6 = trunc i32 %xor.10.6 to i8
  %scevgep38.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 10
  store i8 %conv50.10.6, i8* %scevgep38.10.6, align 1
  %1184 = load i8, i8* %arrayidx56.6, align 1
  %conv57.10.6 = zext i8 %1184 to i32
  %xor58.10.6 = xor i32 %conv57.10.6, 1
  %conv59.10.6 = trunc i32 %xor58.10.6 to i8
  %scevgep35.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 10
  %1185 = load i8, i8* %scevgep35.10.6, align 1
  %call64.10.6 = call zeroext i8 @mult(i8 zeroext %conv59.10.6, i8 zeroext %1185)
  %scevgep42.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 10
  store i8 %call64.10.6, i8* %scevgep42.10.6, align 1
  %1186 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 10
  %1187 = load i8, i8* %scevgep39.10.6, align 1
  %call75.10.6 = call zeroext i8 @mult(i8 zeroext %1186, i8 zeroext %1187)
  %scevgep46.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 10
  store i8 %call75.10.6, i8* %scevgep46.10.6, align 1
  %scevgep43.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 10
  %1188 = load i8, i8* %scevgep43.10.6, align 1
  %conv84.10.6 = zext i8 %1188 to i32
  %scevgep47.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 10
  %1189 = load i8, i8* %scevgep47.10.6, align 1
  %conv89.10.6 = zext i8 %1189 to i32
  %xor90.10.6 = xor i32 %conv84.10.6, %conv89.10.6
  %conv91.10.6 = trunc i32 %xor90.10.6 to i8
  %scevgep50.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 10
  store i8 %conv91.10.6, i8* %scevgep50.10.6, align 1
  %scevgep31.11.6 = getelementptr i8, i8* %b, i64 11
  %1190 = load i8, i8* %scevgep31.11.6, align 1
  %conv44.11.6 = zext i8 %1190 to i32
  %scevgep34.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 11
  %1191 = load i8, i8* %scevgep34.11.6, align 1
  %conv49.11.6 = zext i8 %1191 to i32
  %xor.11.6 = xor i32 %conv44.11.6, %conv49.11.6
  %conv50.11.6 = trunc i32 %xor.11.6 to i8
  %scevgep38.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 11
  store i8 %conv50.11.6, i8* %scevgep38.11.6, align 1
  %1192 = load i8, i8* %arrayidx56.6, align 1
  %conv57.11.6 = zext i8 %1192 to i32
  %xor58.11.6 = xor i32 %conv57.11.6, 1
  %conv59.11.6 = trunc i32 %xor58.11.6 to i8
  %scevgep35.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 11
  %1193 = load i8, i8* %scevgep35.11.6, align 1
  %call64.11.6 = call zeroext i8 @mult(i8 zeroext %conv59.11.6, i8 zeroext %1193)
  %scevgep42.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 11
  store i8 %call64.11.6, i8* %scevgep42.11.6, align 1
  %1194 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 11
  %1195 = load i8, i8* %scevgep39.11.6, align 1
  %call75.11.6 = call zeroext i8 @mult(i8 zeroext %1194, i8 zeroext %1195)
  %scevgep46.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 11
  store i8 %call75.11.6, i8* %scevgep46.11.6, align 1
  %scevgep43.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 11
  %1196 = load i8, i8* %scevgep43.11.6, align 1
  %conv84.11.6 = zext i8 %1196 to i32
  %scevgep47.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 11
  %1197 = load i8, i8* %scevgep47.11.6, align 1
  %conv89.11.6 = zext i8 %1197 to i32
  %xor90.11.6 = xor i32 %conv84.11.6, %conv89.11.6
  %conv91.11.6 = trunc i32 %xor90.11.6 to i8
  %scevgep50.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 11
  store i8 %conv91.11.6, i8* %scevgep50.11.6, align 1
  %scevgep31.12.6 = getelementptr i8, i8* %b, i64 12
  %1198 = load i8, i8* %scevgep31.12.6, align 1
  %conv44.12.6 = zext i8 %1198 to i32
  %scevgep34.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 12
  %1199 = load i8, i8* %scevgep34.12.6, align 1
  %conv49.12.6 = zext i8 %1199 to i32
  %xor.12.6 = xor i32 %conv44.12.6, %conv49.12.6
  %conv50.12.6 = trunc i32 %xor.12.6 to i8
  %scevgep38.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 12
  store i8 %conv50.12.6, i8* %scevgep38.12.6, align 1
  %1200 = load i8, i8* %arrayidx56.6, align 1
  %conv57.12.6 = zext i8 %1200 to i32
  %xor58.12.6 = xor i32 %conv57.12.6, 1
  %conv59.12.6 = trunc i32 %xor58.12.6 to i8
  %scevgep35.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 12
  %1201 = load i8, i8* %scevgep35.12.6, align 1
  %call64.12.6 = call zeroext i8 @mult(i8 zeroext %conv59.12.6, i8 zeroext %1201)
  %scevgep42.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 12
  store i8 %call64.12.6, i8* %scevgep42.12.6, align 1
  %1202 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 12
  %1203 = load i8, i8* %scevgep39.12.6, align 1
  %call75.12.6 = call zeroext i8 @mult(i8 zeroext %1202, i8 zeroext %1203)
  %scevgep46.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 12
  store i8 %call75.12.6, i8* %scevgep46.12.6, align 1
  %scevgep43.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 12
  %1204 = load i8, i8* %scevgep43.12.6, align 1
  %conv84.12.6 = zext i8 %1204 to i32
  %scevgep47.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 12
  %1205 = load i8, i8* %scevgep47.12.6, align 1
  %conv89.12.6 = zext i8 %1205 to i32
  %xor90.12.6 = xor i32 %conv84.12.6, %conv89.12.6
  %conv91.12.6 = trunc i32 %xor90.12.6 to i8
  %scevgep50.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 12
  store i8 %conv91.12.6, i8* %scevgep50.12.6, align 1
  %scevgep31.13.6 = getelementptr i8, i8* %b, i64 13
  %1206 = load i8, i8* %scevgep31.13.6, align 1
  %conv44.13.6 = zext i8 %1206 to i32
  %scevgep34.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 13
  %1207 = load i8, i8* %scevgep34.13.6, align 1
  %conv49.13.6 = zext i8 %1207 to i32
  %xor.13.6 = xor i32 %conv44.13.6, %conv49.13.6
  %conv50.13.6 = trunc i32 %xor.13.6 to i8
  %scevgep38.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 13
  store i8 %conv50.13.6, i8* %scevgep38.13.6, align 1
  %1208 = load i8, i8* %arrayidx56.6, align 1
  %conv57.13.6 = zext i8 %1208 to i32
  %xor58.13.6 = xor i32 %conv57.13.6, 1
  %conv59.13.6 = trunc i32 %xor58.13.6 to i8
  %scevgep35.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 13
  %1209 = load i8, i8* %scevgep35.13.6, align 1
  %call64.13.6 = call zeroext i8 @mult(i8 zeroext %conv59.13.6, i8 zeroext %1209)
  %scevgep42.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 13
  store i8 %call64.13.6, i8* %scevgep42.13.6, align 1
  %1210 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 13
  %1211 = load i8, i8* %scevgep39.13.6, align 1
  %call75.13.6 = call zeroext i8 @mult(i8 zeroext %1210, i8 zeroext %1211)
  %scevgep46.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 13
  store i8 %call75.13.6, i8* %scevgep46.13.6, align 1
  %scevgep43.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 13
  %1212 = load i8, i8* %scevgep43.13.6, align 1
  %conv84.13.6 = zext i8 %1212 to i32
  %scevgep47.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 13
  %1213 = load i8, i8* %scevgep47.13.6, align 1
  %conv89.13.6 = zext i8 %1213 to i32
  %xor90.13.6 = xor i32 %conv84.13.6, %conv89.13.6
  %conv91.13.6 = trunc i32 %xor90.13.6 to i8
  %scevgep50.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 13
  store i8 %conv91.13.6, i8* %scevgep50.13.6, align 1
  %scevgep31.14.6 = getelementptr i8, i8* %b, i64 14
  %1214 = load i8, i8* %scevgep31.14.6, align 1
  %conv44.14.6 = zext i8 %1214 to i32
  %scevgep34.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 14
  %1215 = load i8, i8* %scevgep34.14.6, align 1
  %conv49.14.6 = zext i8 %1215 to i32
  %xor.14.6 = xor i32 %conv44.14.6, %conv49.14.6
  %conv50.14.6 = trunc i32 %xor.14.6 to i8
  %scevgep38.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 14
  store i8 %conv50.14.6, i8* %scevgep38.14.6, align 1
  %1216 = load i8, i8* %arrayidx56.6, align 1
  %conv57.14.6 = zext i8 %1216 to i32
  %xor58.14.6 = xor i32 %conv57.14.6, 1
  %conv59.14.6 = trunc i32 %xor58.14.6 to i8
  %scevgep35.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 14
  %1217 = load i8, i8* %scevgep35.14.6, align 1
  %call64.14.6 = call zeroext i8 @mult(i8 zeroext %conv59.14.6, i8 zeroext %1217)
  %scevgep42.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 14
  store i8 %call64.14.6, i8* %scevgep42.14.6, align 1
  %1218 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 14
  %1219 = load i8, i8* %scevgep39.14.6, align 1
  %call75.14.6 = call zeroext i8 @mult(i8 zeroext %1218, i8 zeroext %1219)
  %scevgep46.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 14
  store i8 %call75.14.6, i8* %scevgep46.14.6, align 1
  %scevgep43.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 14
  %1220 = load i8, i8* %scevgep43.14.6, align 1
  %conv84.14.6 = zext i8 %1220 to i32
  %scevgep47.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 14
  %1221 = load i8, i8* %scevgep47.14.6, align 1
  %conv89.14.6 = zext i8 %1221 to i32
  %xor90.14.6 = xor i32 %conv84.14.6, %conv89.14.6
  %conv91.14.6 = trunc i32 %xor90.14.6 to i8
  %scevgep50.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 14
  store i8 %conv91.14.6, i8* %scevgep50.14.6, align 1
  %scevgep31.15.6 = getelementptr i8, i8* %b, i64 15
  %1222 = load i8, i8* %scevgep31.15.6, align 1
  %conv44.15.6 = zext i8 %1222 to i32
  %scevgep34.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 15
  %1223 = load i8, i8* %scevgep34.15.6, align 1
  %conv49.15.6 = zext i8 %1223 to i32
  %xor.15.6 = xor i32 %conv44.15.6, %conv49.15.6
  %conv50.15.6 = trunc i32 %xor.15.6 to i8
  %scevgep38.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 15
  store i8 %conv50.15.6, i8* %scevgep38.15.6, align 1
  %1224 = load i8, i8* %arrayidx56.6, align 1
  %conv57.15.6 = zext i8 %1224 to i32
  %xor58.15.6 = xor i32 %conv57.15.6, 1
  %conv59.15.6 = trunc i32 %xor58.15.6 to i8
  %scevgep35.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 0, i64 15
  %1225 = load i8, i8* %scevgep35.15.6, align 1
  %call64.15.6 = call zeroext i8 @mult(i8 zeroext %conv59.15.6, i8 zeroext %1225)
  %scevgep42.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 15
  store i8 %call64.15.6, i8* %scevgep42.15.6, align 1
  %1226 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 0, i64 15
  %1227 = load i8, i8* %scevgep39.15.6, align 1
  %call75.15.6 = call zeroext i8 @mult(i8 zeroext %1226, i8 zeroext %1227)
  %scevgep46.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 15
  store i8 %call75.15.6, i8* %scevgep46.15.6, align 1
  %scevgep43.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 0, i64 15
  %1228 = load i8, i8* %scevgep43.15.6, align 1
  %conv84.15.6 = zext i8 %1228 to i32
  %scevgep47.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 0, i64 15
  %1229 = load i8, i8* %scevgep47.15.6, align 1
  %conv89.15.6 = zext i8 %1229 to i32
  %xor90.15.6 = xor i32 %conv84.15.6, %conv89.15.6
  %conv91.15.6 = trunc i32 %xor90.15.6 to i8
  %scevgep50.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 0, i64 15
  store i8 %conv91.15.6, i8* %scevgep50.15.6, align 1
  %scevgep33.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1105, i64 0, i64 1, i64 0
  %1230 = bitcast i8* %scevgep33.6 to [16 x [16 x i8]]*
  %scevgep37.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1106, i64 0, i64 1, i64 0
  %1231 = bitcast i8* %scevgep37.6 to [16 x [16 x i8]]*
  %scevgep41.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1107, i64 0, i64 1, i64 0
  %1232 = bitcast i8* %scevgep41.6 to [16 x [16 x i8]]*
  %scevgep45.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1108, i64 0, i64 1, i64 0
  %1233 = bitcast i8* %scevgep45.6 to [16 x [16 x i8]]*
  %scevgep49.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1109, i64 0, i64 1, i64 0
  %1234 = bitcast i8* %scevgep49.6 to [16 x [16 x i8]]*
  %arrayidx56.7 = getelementptr inbounds i8, i8* %a, i64 7
  %arrayidx70.7 = getelementptr inbounds i8, i8* %a, i64 7
  %1235 = load i8, i8* %b, align 1
  %conv44.7390 = zext i8 %1235 to i32
  %scevgep34.7391 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 0
  %1236 = load i8, i8* %scevgep34.7391, align 1
  %conv49.7392 = zext i8 %1236 to i32
  %xor.7393 = xor i32 %conv44.7390, %conv49.7392
  %conv50.7394 = trunc i32 %xor.7393 to i8
  %scevgep38.7395 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 0
  store i8 %conv50.7394, i8* %scevgep38.7395, align 1
  %1237 = load i8, i8* %arrayidx56.7, align 1
  %conv57.7396 = zext i8 %1237 to i32
  %xor58.7397 = xor i32 %conv57.7396, 1
  %conv59.7398 = trunc i32 %xor58.7397 to i8
  %scevgep35.7399 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 0
  %1238 = load i8, i8* %scevgep35.7399, align 1
  %call64.7400 = call zeroext i8 @mult(i8 zeroext %conv59.7398, i8 zeroext %1238)
  %scevgep42.7401 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 0
  store i8 %call64.7400, i8* %scevgep42.7401, align 1
  %1239 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.7402 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 0
  %1240 = load i8, i8* %scevgep39.7402, align 1
  %call75.7403 = call zeroext i8 @mult(i8 zeroext %1239, i8 zeroext %1240)
  %scevgep46.7404 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 0
  store i8 %call75.7403, i8* %scevgep46.7404, align 1
  %scevgep43.7405 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 0
  %1241 = load i8, i8* %scevgep43.7405, align 1
  %conv84.7406 = zext i8 %1241 to i32
  %scevgep47.7407 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 0
  %1242 = load i8, i8* %scevgep47.7407, align 1
  %conv89.7408 = zext i8 %1242 to i32
  %xor90.7409 = xor i32 %conv84.7406, %conv89.7408
  %conv91.7410 = trunc i32 %xor90.7409 to i8
  %scevgep50.7411 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 0
  store i8 %conv91.7410, i8* %scevgep50.7411, align 1
  %scevgep31.1.7 = getelementptr i8, i8* %b, i64 1
  %1243 = load i8, i8* %scevgep31.1.7, align 1
  %conv44.1.7 = zext i8 %1243 to i32
  %scevgep34.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 1
  %1244 = load i8, i8* %scevgep34.1.7, align 1
  %conv49.1.7 = zext i8 %1244 to i32
  %xor.1.7 = xor i32 %conv44.1.7, %conv49.1.7
  %conv50.1.7 = trunc i32 %xor.1.7 to i8
  %scevgep38.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 1
  store i8 %conv50.1.7, i8* %scevgep38.1.7, align 1
  %1245 = load i8, i8* %arrayidx56.7, align 1
  %conv57.1.7 = zext i8 %1245 to i32
  %xor58.1.7 = xor i32 %conv57.1.7, 1
  %conv59.1.7 = trunc i32 %xor58.1.7 to i8
  %scevgep35.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 1
  %1246 = load i8, i8* %scevgep35.1.7, align 1
  %call64.1.7 = call zeroext i8 @mult(i8 zeroext %conv59.1.7, i8 zeroext %1246)
  %scevgep42.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 1
  store i8 %call64.1.7, i8* %scevgep42.1.7, align 1
  %1247 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 1
  %1248 = load i8, i8* %scevgep39.1.7, align 1
  %call75.1.7 = call zeroext i8 @mult(i8 zeroext %1247, i8 zeroext %1248)
  %scevgep46.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 1
  store i8 %call75.1.7, i8* %scevgep46.1.7, align 1
  %scevgep43.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 1
  %1249 = load i8, i8* %scevgep43.1.7, align 1
  %conv84.1.7 = zext i8 %1249 to i32
  %scevgep47.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 1
  %1250 = load i8, i8* %scevgep47.1.7, align 1
  %conv89.1.7 = zext i8 %1250 to i32
  %xor90.1.7 = xor i32 %conv84.1.7, %conv89.1.7
  %conv91.1.7 = trunc i32 %xor90.1.7 to i8
  %scevgep50.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 1
  store i8 %conv91.1.7, i8* %scevgep50.1.7, align 1
  %scevgep31.2.7 = getelementptr i8, i8* %b, i64 2
  %1251 = load i8, i8* %scevgep31.2.7, align 1
  %conv44.2.7 = zext i8 %1251 to i32
  %scevgep34.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 2
  %1252 = load i8, i8* %scevgep34.2.7, align 1
  %conv49.2.7 = zext i8 %1252 to i32
  %xor.2.7 = xor i32 %conv44.2.7, %conv49.2.7
  %conv50.2.7 = trunc i32 %xor.2.7 to i8
  %scevgep38.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 2
  store i8 %conv50.2.7, i8* %scevgep38.2.7, align 1
  %1253 = load i8, i8* %arrayidx56.7, align 1
  %conv57.2.7 = zext i8 %1253 to i32
  %xor58.2.7 = xor i32 %conv57.2.7, 1
  %conv59.2.7 = trunc i32 %xor58.2.7 to i8
  %scevgep35.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 2
  %1254 = load i8, i8* %scevgep35.2.7, align 1
  %call64.2.7 = call zeroext i8 @mult(i8 zeroext %conv59.2.7, i8 zeroext %1254)
  %scevgep42.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 2
  store i8 %call64.2.7, i8* %scevgep42.2.7, align 1
  %1255 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 2
  %1256 = load i8, i8* %scevgep39.2.7, align 1
  %call75.2.7 = call zeroext i8 @mult(i8 zeroext %1255, i8 zeroext %1256)
  %scevgep46.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 2
  store i8 %call75.2.7, i8* %scevgep46.2.7, align 1
  %scevgep43.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 2
  %1257 = load i8, i8* %scevgep43.2.7, align 1
  %conv84.2.7 = zext i8 %1257 to i32
  %scevgep47.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 2
  %1258 = load i8, i8* %scevgep47.2.7, align 1
  %conv89.2.7 = zext i8 %1258 to i32
  %xor90.2.7 = xor i32 %conv84.2.7, %conv89.2.7
  %conv91.2.7 = trunc i32 %xor90.2.7 to i8
  %scevgep50.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 2
  store i8 %conv91.2.7, i8* %scevgep50.2.7, align 1
  %scevgep31.3.7 = getelementptr i8, i8* %b, i64 3
  %1259 = load i8, i8* %scevgep31.3.7, align 1
  %conv44.3.7 = zext i8 %1259 to i32
  %scevgep34.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 3
  %1260 = load i8, i8* %scevgep34.3.7, align 1
  %conv49.3.7 = zext i8 %1260 to i32
  %xor.3.7 = xor i32 %conv44.3.7, %conv49.3.7
  %conv50.3.7 = trunc i32 %xor.3.7 to i8
  %scevgep38.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 3
  store i8 %conv50.3.7, i8* %scevgep38.3.7, align 1
  %1261 = load i8, i8* %arrayidx56.7, align 1
  %conv57.3.7 = zext i8 %1261 to i32
  %xor58.3.7 = xor i32 %conv57.3.7, 1
  %conv59.3.7 = trunc i32 %xor58.3.7 to i8
  %scevgep35.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 3
  %1262 = load i8, i8* %scevgep35.3.7, align 1
  %call64.3.7 = call zeroext i8 @mult(i8 zeroext %conv59.3.7, i8 zeroext %1262)
  %scevgep42.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 3
  store i8 %call64.3.7, i8* %scevgep42.3.7, align 1
  %1263 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 3
  %1264 = load i8, i8* %scevgep39.3.7, align 1
  %call75.3.7 = call zeroext i8 @mult(i8 zeroext %1263, i8 zeroext %1264)
  %scevgep46.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 3
  store i8 %call75.3.7, i8* %scevgep46.3.7, align 1
  %scevgep43.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 3
  %1265 = load i8, i8* %scevgep43.3.7, align 1
  %conv84.3.7 = zext i8 %1265 to i32
  %scevgep47.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 3
  %1266 = load i8, i8* %scevgep47.3.7, align 1
  %conv89.3.7 = zext i8 %1266 to i32
  %xor90.3.7 = xor i32 %conv84.3.7, %conv89.3.7
  %conv91.3.7 = trunc i32 %xor90.3.7 to i8
  %scevgep50.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 3
  store i8 %conv91.3.7, i8* %scevgep50.3.7, align 1
  %scevgep31.4.7 = getelementptr i8, i8* %b, i64 4
  %1267 = load i8, i8* %scevgep31.4.7, align 1
  %conv44.4.7 = zext i8 %1267 to i32
  %scevgep34.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 4
  %1268 = load i8, i8* %scevgep34.4.7, align 1
  %conv49.4.7 = zext i8 %1268 to i32
  %xor.4.7 = xor i32 %conv44.4.7, %conv49.4.7
  %conv50.4.7 = trunc i32 %xor.4.7 to i8
  %scevgep38.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 4
  store i8 %conv50.4.7, i8* %scevgep38.4.7, align 1
  %1269 = load i8, i8* %arrayidx56.7, align 1
  %conv57.4.7 = zext i8 %1269 to i32
  %xor58.4.7 = xor i32 %conv57.4.7, 1
  %conv59.4.7 = trunc i32 %xor58.4.7 to i8
  %scevgep35.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 4
  %1270 = load i8, i8* %scevgep35.4.7, align 1
  %call64.4.7 = call zeroext i8 @mult(i8 zeroext %conv59.4.7, i8 zeroext %1270)
  %scevgep42.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 4
  store i8 %call64.4.7, i8* %scevgep42.4.7, align 1
  %1271 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 4
  %1272 = load i8, i8* %scevgep39.4.7, align 1
  %call75.4.7 = call zeroext i8 @mult(i8 zeroext %1271, i8 zeroext %1272)
  %scevgep46.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 4
  store i8 %call75.4.7, i8* %scevgep46.4.7, align 1
  %scevgep43.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 4
  %1273 = load i8, i8* %scevgep43.4.7, align 1
  %conv84.4.7 = zext i8 %1273 to i32
  %scevgep47.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 4
  %1274 = load i8, i8* %scevgep47.4.7, align 1
  %conv89.4.7 = zext i8 %1274 to i32
  %xor90.4.7 = xor i32 %conv84.4.7, %conv89.4.7
  %conv91.4.7 = trunc i32 %xor90.4.7 to i8
  %scevgep50.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 4
  store i8 %conv91.4.7, i8* %scevgep50.4.7, align 1
  %scevgep31.5.7 = getelementptr i8, i8* %b, i64 5
  %1275 = load i8, i8* %scevgep31.5.7, align 1
  %conv44.5.7 = zext i8 %1275 to i32
  %scevgep34.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 5
  %1276 = load i8, i8* %scevgep34.5.7, align 1
  %conv49.5.7 = zext i8 %1276 to i32
  %xor.5.7 = xor i32 %conv44.5.7, %conv49.5.7
  %conv50.5.7 = trunc i32 %xor.5.7 to i8
  %scevgep38.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 5
  store i8 %conv50.5.7, i8* %scevgep38.5.7, align 1
  %1277 = load i8, i8* %arrayidx56.7, align 1
  %conv57.5.7 = zext i8 %1277 to i32
  %xor58.5.7 = xor i32 %conv57.5.7, 1
  %conv59.5.7 = trunc i32 %xor58.5.7 to i8
  %scevgep35.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 5
  %1278 = load i8, i8* %scevgep35.5.7, align 1
  %call64.5.7 = call zeroext i8 @mult(i8 zeroext %conv59.5.7, i8 zeroext %1278)
  %scevgep42.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 5
  store i8 %call64.5.7, i8* %scevgep42.5.7, align 1
  %1279 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 5
  %1280 = load i8, i8* %scevgep39.5.7, align 1
  %call75.5.7 = call zeroext i8 @mult(i8 zeroext %1279, i8 zeroext %1280)
  %scevgep46.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 5
  store i8 %call75.5.7, i8* %scevgep46.5.7, align 1
  %scevgep43.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 5
  %1281 = load i8, i8* %scevgep43.5.7, align 1
  %conv84.5.7 = zext i8 %1281 to i32
  %scevgep47.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 5
  %1282 = load i8, i8* %scevgep47.5.7, align 1
  %conv89.5.7 = zext i8 %1282 to i32
  %xor90.5.7 = xor i32 %conv84.5.7, %conv89.5.7
  %conv91.5.7 = trunc i32 %xor90.5.7 to i8
  %scevgep50.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 5
  store i8 %conv91.5.7, i8* %scevgep50.5.7, align 1
  %scevgep31.6.7 = getelementptr i8, i8* %b, i64 6
  %1283 = load i8, i8* %scevgep31.6.7, align 1
  %conv44.6.7 = zext i8 %1283 to i32
  %scevgep34.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 6
  %1284 = load i8, i8* %scevgep34.6.7, align 1
  %conv49.6.7 = zext i8 %1284 to i32
  %xor.6.7 = xor i32 %conv44.6.7, %conv49.6.7
  %conv50.6.7 = trunc i32 %xor.6.7 to i8
  %scevgep38.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 6
  store i8 %conv50.6.7, i8* %scevgep38.6.7, align 1
  %1285 = load i8, i8* %arrayidx56.7, align 1
  %conv57.6.7 = zext i8 %1285 to i32
  %xor58.6.7 = xor i32 %conv57.6.7, 1
  %conv59.6.7 = trunc i32 %xor58.6.7 to i8
  %scevgep35.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 6
  %1286 = load i8, i8* %scevgep35.6.7, align 1
  %call64.6.7 = call zeroext i8 @mult(i8 zeroext %conv59.6.7, i8 zeroext %1286)
  %scevgep42.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 6
  store i8 %call64.6.7, i8* %scevgep42.6.7, align 1
  %1287 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 6
  %1288 = load i8, i8* %scevgep39.6.7, align 1
  %call75.6.7 = call zeroext i8 @mult(i8 zeroext %1287, i8 zeroext %1288)
  %scevgep46.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 6
  store i8 %call75.6.7, i8* %scevgep46.6.7, align 1
  %scevgep43.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 6
  %1289 = load i8, i8* %scevgep43.6.7, align 1
  %conv84.6.7 = zext i8 %1289 to i32
  %scevgep47.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 6
  %1290 = load i8, i8* %scevgep47.6.7, align 1
  %conv89.6.7 = zext i8 %1290 to i32
  %xor90.6.7 = xor i32 %conv84.6.7, %conv89.6.7
  %conv91.6.7 = trunc i32 %xor90.6.7 to i8
  %scevgep50.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 6
  store i8 %conv91.6.7, i8* %scevgep50.6.7, align 1
  %scevgep31.8.7 = getelementptr i8, i8* %b, i64 8
  %1291 = load i8, i8* %scevgep31.8.7, align 1
  %conv44.8.7 = zext i8 %1291 to i32
  %scevgep34.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 8
  %1292 = load i8, i8* %scevgep34.8.7, align 1
  %conv49.8.7 = zext i8 %1292 to i32
  %xor.8.7 = xor i32 %conv44.8.7, %conv49.8.7
  %conv50.8.7 = trunc i32 %xor.8.7 to i8
  %scevgep38.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 8
  store i8 %conv50.8.7, i8* %scevgep38.8.7, align 1
  %1293 = load i8, i8* %arrayidx56.7, align 1
  %conv57.8.7 = zext i8 %1293 to i32
  %xor58.8.7 = xor i32 %conv57.8.7, 1
  %conv59.8.7 = trunc i32 %xor58.8.7 to i8
  %scevgep35.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 8
  %1294 = load i8, i8* %scevgep35.8.7, align 1
  %call64.8.7 = call zeroext i8 @mult(i8 zeroext %conv59.8.7, i8 zeroext %1294)
  %scevgep42.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 8
  store i8 %call64.8.7, i8* %scevgep42.8.7, align 1
  %1295 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 8
  %1296 = load i8, i8* %scevgep39.8.7, align 1
  %call75.8.7 = call zeroext i8 @mult(i8 zeroext %1295, i8 zeroext %1296)
  %scevgep46.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 8
  store i8 %call75.8.7, i8* %scevgep46.8.7, align 1
  %scevgep43.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 8
  %1297 = load i8, i8* %scevgep43.8.7, align 1
  %conv84.8.7 = zext i8 %1297 to i32
  %scevgep47.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 8
  %1298 = load i8, i8* %scevgep47.8.7, align 1
  %conv89.8.7 = zext i8 %1298 to i32
  %xor90.8.7 = xor i32 %conv84.8.7, %conv89.8.7
  %conv91.8.7 = trunc i32 %xor90.8.7 to i8
  %scevgep50.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 8
  store i8 %conv91.8.7, i8* %scevgep50.8.7, align 1
  %scevgep31.9.7 = getelementptr i8, i8* %b, i64 9
  %1299 = load i8, i8* %scevgep31.9.7, align 1
  %conv44.9.7 = zext i8 %1299 to i32
  %scevgep34.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 9
  %1300 = load i8, i8* %scevgep34.9.7, align 1
  %conv49.9.7 = zext i8 %1300 to i32
  %xor.9.7 = xor i32 %conv44.9.7, %conv49.9.7
  %conv50.9.7 = trunc i32 %xor.9.7 to i8
  %scevgep38.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 9
  store i8 %conv50.9.7, i8* %scevgep38.9.7, align 1
  %1301 = load i8, i8* %arrayidx56.7, align 1
  %conv57.9.7 = zext i8 %1301 to i32
  %xor58.9.7 = xor i32 %conv57.9.7, 1
  %conv59.9.7 = trunc i32 %xor58.9.7 to i8
  %scevgep35.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 9
  %1302 = load i8, i8* %scevgep35.9.7, align 1
  %call64.9.7 = call zeroext i8 @mult(i8 zeroext %conv59.9.7, i8 zeroext %1302)
  %scevgep42.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 9
  store i8 %call64.9.7, i8* %scevgep42.9.7, align 1
  %1303 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 9
  %1304 = load i8, i8* %scevgep39.9.7, align 1
  %call75.9.7 = call zeroext i8 @mult(i8 zeroext %1303, i8 zeroext %1304)
  %scevgep46.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 9
  store i8 %call75.9.7, i8* %scevgep46.9.7, align 1
  %scevgep43.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 9
  %1305 = load i8, i8* %scevgep43.9.7, align 1
  %conv84.9.7 = zext i8 %1305 to i32
  %scevgep47.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 9
  %1306 = load i8, i8* %scevgep47.9.7, align 1
  %conv89.9.7 = zext i8 %1306 to i32
  %xor90.9.7 = xor i32 %conv84.9.7, %conv89.9.7
  %conv91.9.7 = trunc i32 %xor90.9.7 to i8
  %scevgep50.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 9
  store i8 %conv91.9.7, i8* %scevgep50.9.7, align 1
  %scevgep31.10.7 = getelementptr i8, i8* %b, i64 10
  %1307 = load i8, i8* %scevgep31.10.7, align 1
  %conv44.10.7 = zext i8 %1307 to i32
  %scevgep34.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 10
  %1308 = load i8, i8* %scevgep34.10.7, align 1
  %conv49.10.7 = zext i8 %1308 to i32
  %xor.10.7 = xor i32 %conv44.10.7, %conv49.10.7
  %conv50.10.7 = trunc i32 %xor.10.7 to i8
  %scevgep38.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 10
  store i8 %conv50.10.7, i8* %scevgep38.10.7, align 1
  %1309 = load i8, i8* %arrayidx56.7, align 1
  %conv57.10.7 = zext i8 %1309 to i32
  %xor58.10.7 = xor i32 %conv57.10.7, 1
  %conv59.10.7 = trunc i32 %xor58.10.7 to i8
  %scevgep35.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 10
  %1310 = load i8, i8* %scevgep35.10.7, align 1
  %call64.10.7 = call zeroext i8 @mult(i8 zeroext %conv59.10.7, i8 zeroext %1310)
  %scevgep42.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 10
  store i8 %call64.10.7, i8* %scevgep42.10.7, align 1
  %1311 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 10
  %1312 = load i8, i8* %scevgep39.10.7, align 1
  %call75.10.7 = call zeroext i8 @mult(i8 zeroext %1311, i8 zeroext %1312)
  %scevgep46.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 10
  store i8 %call75.10.7, i8* %scevgep46.10.7, align 1
  %scevgep43.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 10
  %1313 = load i8, i8* %scevgep43.10.7, align 1
  %conv84.10.7 = zext i8 %1313 to i32
  %scevgep47.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 10
  %1314 = load i8, i8* %scevgep47.10.7, align 1
  %conv89.10.7 = zext i8 %1314 to i32
  %xor90.10.7 = xor i32 %conv84.10.7, %conv89.10.7
  %conv91.10.7 = trunc i32 %xor90.10.7 to i8
  %scevgep50.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 10
  store i8 %conv91.10.7, i8* %scevgep50.10.7, align 1
  %scevgep31.11.7 = getelementptr i8, i8* %b, i64 11
  %1315 = load i8, i8* %scevgep31.11.7, align 1
  %conv44.11.7 = zext i8 %1315 to i32
  %scevgep34.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 11
  %1316 = load i8, i8* %scevgep34.11.7, align 1
  %conv49.11.7 = zext i8 %1316 to i32
  %xor.11.7 = xor i32 %conv44.11.7, %conv49.11.7
  %conv50.11.7 = trunc i32 %xor.11.7 to i8
  %scevgep38.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 11
  store i8 %conv50.11.7, i8* %scevgep38.11.7, align 1
  %1317 = load i8, i8* %arrayidx56.7, align 1
  %conv57.11.7 = zext i8 %1317 to i32
  %xor58.11.7 = xor i32 %conv57.11.7, 1
  %conv59.11.7 = trunc i32 %xor58.11.7 to i8
  %scevgep35.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 11
  %1318 = load i8, i8* %scevgep35.11.7, align 1
  %call64.11.7 = call zeroext i8 @mult(i8 zeroext %conv59.11.7, i8 zeroext %1318)
  %scevgep42.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 11
  store i8 %call64.11.7, i8* %scevgep42.11.7, align 1
  %1319 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 11
  %1320 = load i8, i8* %scevgep39.11.7, align 1
  %call75.11.7 = call zeroext i8 @mult(i8 zeroext %1319, i8 zeroext %1320)
  %scevgep46.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 11
  store i8 %call75.11.7, i8* %scevgep46.11.7, align 1
  %scevgep43.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 11
  %1321 = load i8, i8* %scevgep43.11.7, align 1
  %conv84.11.7 = zext i8 %1321 to i32
  %scevgep47.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 11
  %1322 = load i8, i8* %scevgep47.11.7, align 1
  %conv89.11.7 = zext i8 %1322 to i32
  %xor90.11.7 = xor i32 %conv84.11.7, %conv89.11.7
  %conv91.11.7 = trunc i32 %xor90.11.7 to i8
  %scevgep50.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 11
  store i8 %conv91.11.7, i8* %scevgep50.11.7, align 1
  %scevgep31.12.7 = getelementptr i8, i8* %b, i64 12
  %1323 = load i8, i8* %scevgep31.12.7, align 1
  %conv44.12.7 = zext i8 %1323 to i32
  %scevgep34.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 12
  %1324 = load i8, i8* %scevgep34.12.7, align 1
  %conv49.12.7 = zext i8 %1324 to i32
  %xor.12.7 = xor i32 %conv44.12.7, %conv49.12.7
  %conv50.12.7 = trunc i32 %xor.12.7 to i8
  %scevgep38.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 12
  store i8 %conv50.12.7, i8* %scevgep38.12.7, align 1
  %1325 = load i8, i8* %arrayidx56.7, align 1
  %conv57.12.7 = zext i8 %1325 to i32
  %xor58.12.7 = xor i32 %conv57.12.7, 1
  %conv59.12.7 = trunc i32 %xor58.12.7 to i8
  %scevgep35.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 12
  %1326 = load i8, i8* %scevgep35.12.7, align 1
  %call64.12.7 = call zeroext i8 @mult(i8 zeroext %conv59.12.7, i8 zeroext %1326)
  %scevgep42.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 12
  store i8 %call64.12.7, i8* %scevgep42.12.7, align 1
  %1327 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 12
  %1328 = load i8, i8* %scevgep39.12.7, align 1
  %call75.12.7 = call zeroext i8 @mult(i8 zeroext %1327, i8 zeroext %1328)
  %scevgep46.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 12
  store i8 %call75.12.7, i8* %scevgep46.12.7, align 1
  %scevgep43.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 12
  %1329 = load i8, i8* %scevgep43.12.7, align 1
  %conv84.12.7 = zext i8 %1329 to i32
  %scevgep47.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 12
  %1330 = load i8, i8* %scevgep47.12.7, align 1
  %conv89.12.7 = zext i8 %1330 to i32
  %xor90.12.7 = xor i32 %conv84.12.7, %conv89.12.7
  %conv91.12.7 = trunc i32 %xor90.12.7 to i8
  %scevgep50.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 12
  store i8 %conv91.12.7, i8* %scevgep50.12.7, align 1
  %scevgep31.13.7 = getelementptr i8, i8* %b, i64 13
  %1331 = load i8, i8* %scevgep31.13.7, align 1
  %conv44.13.7 = zext i8 %1331 to i32
  %scevgep34.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 13
  %1332 = load i8, i8* %scevgep34.13.7, align 1
  %conv49.13.7 = zext i8 %1332 to i32
  %xor.13.7 = xor i32 %conv44.13.7, %conv49.13.7
  %conv50.13.7 = trunc i32 %xor.13.7 to i8
  %scevgep38.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 13
  store i8 %conv50.13.7, i8* %scevgep38.13.7, align 1
  %1333 = load i8, i8* %arrayidx56.7, align 1
  %conv57.13.7 = zext i8 %1333 to i32
  %xor58.13.7 = xor i32 %conv57.13.7, 1
  %conv59.13.7 = trunc i32 %xor58.13.7 to i8
  %scevgep35.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 13
  %1334 = load i8, i8* %scevgep35.13.7, align 1
  %call64.13.7 = call zeroext i8 @mult(i8 zeroext %conv59.13.7, i8 zeroext %1334)
  %scevgep42.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 13
  store i8 %call64.13.7, i8* %scevgep42.13.7, align 1
  %1335 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 13
  %1336 = load i8, i8* %scevgep39.13.7, align 1
  %call75.13.7 = call zeroext i8 @mult(i8 zeroext %1335, i8 zeroext %1336)
  %scevgep46.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 13
  store i8 %call75.13.7, i8* %scevgep46.13.7, align 1
  %scevgep43.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 13
  %1337 = load i8, i8* %scevgep43.13.7, align 1
  %conv84.13.7 = zext i8 %1337 to i32
  %scevgep47.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 13
  %1338 = load i8, i8* %scevgep47.13.7, align 1
  %conv89.13.7 = zext i8 %1338 to i32
  %xor90.13.7 = xor i32 %conv84.13.7, %conv89.13.7
  %conv91.13.7 = trunc i32 %xor90.13.7 to i8
  %scevgep50.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 13
  store i8 %conv91.13.7, i8* %scevgep50.13.7, align 1
  %scevgep31.14.7 = getelementptr i8, i8* %b, i64 14
  %1339 = load i8, i8* %scevgep31.14.7, align 1
  %conv44.14.7 = zext i8 %1339 to i32
  %scevgep34.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 14
  %1340 = load i8, i8* %scevgep34.14.7, align 1
  %conv49.14.7 = zext i8 %1340 to i32
  %xor.14.7 = xor i32 %conv44.14.7, %conv49.14.7
  %conv50.14.7 = trunc i32 %xor.14.7 to i8
  %scevgep38.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 14
  store i8 %conv50.14.7, i8* %scevgep38.14.7, align 1
  %1341 = load i8, i8* %arrayidx56.7, align 1
  %conv57.14.7 = zext i8 %1341 to i32
  %xor58.14.7 = xor i32 %conv57.14.7, 1
  %conv59.14.7 = trunc i32 %xor58.14.7 to i8
  %scevgep35.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 14
  %1342 = load i8, i8* %scevgep35.14.7, align 1
  %call64.14.7 = call zeroext i8 @mult(i8 zeroext %conv59.14.7, i8 zeroext %1342)
  %scevgep42.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 14
  store i8 %call64.14.7, i8* %scevgep42.14.7, align 1
  %1343 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 14
  %1344 = load i8, i8* %scevgep39.14.7, align 1
  %call75.14.7 = call zeroext i8 @mult(i8 zeroext %1343, i8 zeroext %1344)
  %scevgep46.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 14
  store i8 %call75.14.7, i8* %scevgep46.14.7, align 1
  %scevgep43.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 14
  %1345 = load i8, i8* %scevgep43.14.7, align 1
  %conv84.14.7 = zext i8 %1345 to i32
  %scevgep47.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 14
  %1346 = load i8, i8* %scevgep47.14.7, align 1
  %conv89.14.7 = zext i8 %1346 to i32
  %xor90.14.7 = xor i32 %conv84.14.7, %conv89.14.7
  %conv91.14.7 = trunc i32 %xor90.14.7 to i8
  %scevgep50.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 14
  store i8 %conv91.14.7, i8* %scevgep50.14.7, align 1
  %scevgep31.15.7 = getelementptr i8, i8* %b, i64 15
  %1347 = load i8, i8* %scevgep31.15.7, align 1
  %conv44.15.7 = zext i8 %1347 to i32
  %scevgep34.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 15
  %1348 = load i8, i8* %scevgep34.15.7, align 1
  %conv49.15.7 = zext i8 %1348 to i32
  %xor.15.7 = xor i32 %conv44.15.7, %conv49.15.7
  %conv50.15.7 = trunc i32 %xor.15.7 to i8
  %scevgep38.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 15
  store i8 %conv50.15.7, i8* %scevgep38.15.7, align 1
  %1349 = load i8, i8* %arrayidx56.7, align 1
  %conv57.15.7 = zext i8 %1349 to i32
  %xor58.15.7 = xor i32 %conv57.15.7, 1
  %conv59.15.7 = trunc i32 %xor58.15.7 to i8
  %scevgep35.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 0, i64 15
  %1350 = load i8, i8* %scevgep35.15.7, align 1
  %call64.15.7 = call zeroext i8 @mult(i8 zeroext %conv59.15.7, i8 zeroext %1350)
  %scevgep42.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 15
  store i8 %call64.15.7, i8* %scevgep42.15.7, align 1
  %1351 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 0, i64 15
  %1352 = load i8, i8* %scevgep39.15.7, align 1
  %call75.15.7 = call zeroext i8 @mult(i8 zeroext %1351, i8 zeroext %1352)
  %scevgep46.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 15
  store i8 %call75.15.7, i8* %scevgep46.15.7, align 1
  %scevgep43.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 0, i64 15
  %1353 = load i8, i8* %scevgep43.15.7, align 1
  %conv84.15.7 = zext i8 %1353 to i32
  %scevgep47.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 0, i64 15
  %1354 = load i8, i8* %scevgep47.15.7, align 1
  %conv89.15.7 = zext i8 %1354 to i32
  %xor90.15.7 = xor i32 %conv84.15.7, %conv89.15.7
  %conv91.15.7 = trunc i32 %xor90.15.7 to i8
  %scevgep50.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 0, i64 15
  store i8 %conv91.15.7, i8* %scevgep50.15.7, align 1
  %scevgep33.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1230, i64 0, i64 1, i64 0
  %1355 = bitcast i8* %scevgep33.7 to [16 x [16 x i8]]*
  %scevgep37.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 1, i64 0
  %1356 = bitcast i8* %scevgep37.7 to [16 x [16 x i8]]*
  %scevgep41.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1232, i64 0, i64 1, i64 0
  %1357 = bitcast i8* %scevgep41.7 to [16 x [16 x i8]]*
  %scevgep45.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1233, i64 0, i64 1, i64 0
  %1358 = bitcast i8* %scevgep45.7 to [16 x [16 x i8]]*
  %scevgep49.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 1, i64 0
  %1359 = bitcast i8* %scevgep49.7 to [16 x [16 x i8]]*
  %arrayidx56.8 = getelementptr inbounds i8, i8* %a, i64 8
  %arrayidx70.8 = getelementptr inbounds i8, i8* %a, i64 8
  %1360 = load i8, i8* %b, align 1
  %conv44.8417 = zext i8 %1360 to i32
  %scevgep34.8418 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 0
  %1361 = load i8, i8* %scevgep34.8418, align 1
  %conv49.8419 = zext i8 %1361 to i32
  %xor.8420 = xor i32 %conv44.8417, %conv49.8419
  %conv50.8421 = trunc i32 %xor.8420 to i8
  %scevgep38.8422 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 0
  store i8 %conv50.8421, i8* %scevgep38.8422, align 1
  %1362 = load i8, i8* %arrayidx56.8, align 1
  %conv57.8423 = zext i8 %1362 to i32
  %xor58.8424 = xor i32 %conv57.8423, 1
  %conv59.8425 = trunc i32 %xor58.8424 to i8
  %scevgep35.8426 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 0
  %1363 = load i8, i8* %scevgep35.8426, align 1
  %call64.8427 = call zeroext i8 @mult(i8 zeroext %conv59.8425, i8 zeroext %1363)
  %scevgep42.8428 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 0
  store i8 %call64.8427, i8* %scevgep42.8428, align 1
  %1364 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.8429 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 0
  %1365 = load i8, i8* %scevgep39.8429, align 1
  %call75.8430 = call zeroext i8 @mult(i8 zeroext %1364, i8 zeroext %1365)
  %scevgep46.8431 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 0
  store i8 %call75.8430, i8* %scevgep46.8431, align 1
  %scevgep43.8432 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 0
  %1366 = load i8, i8* %scevgep43.8432, align 1
  %conv84.8433 = zext i8 %1366 to i32
  %scevgep47.8434 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 0
  %1367 = load i8, i8* %scevgep47.8434, align 1
  %conv89.8435 = zext i8 %1367 to i32
  %xor90.8436 = xor i32 %conv84.8433, %conv89.8435
  %conv91.8437 = trunc i32 %xor90.8436 to i8
  %scevgep50.8438 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 0
  store i8 %conv91.8437, i8* %scevgep50.8438, align 1
  %scevgep31.1.8 = getelementptr i8, i8* %b, i64 1
  %1368 = load i8, i8* %scevgep31.1.8, align 1
  %conv44.1.8 = zext i8 %1368 to i32
  %scevgep34.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 1
  %1369 = load i8, i8* %scevgep34.1.8, align 1
  %conv49.1.8 = zext i8 %1369 to i32
  %xor.1.8 = xor i32 %conv44.1.8, %conv49.1.8
  %conv50.1.8 = trunc i32 %xor.1.8 to i8
  %scevgep38.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 1
  store i8 %conv50.1.8, i8* %scevgep38.1.8, align 1
  %1370 = load i8, i8* %arrayidx56.8, align 1
  %conv57.1.8 = zext i8 %1370 to i32
  %xor58.1.8 = xor i32 %conv57.1.8, 1
  %conv59.1.8 = trunc i32 %xor58.1.8 to i8
  %scevgep35.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 1
  %1371 = load i8, i8* %scevgep35.1.8, align 1
  %call64.1.8 = call zeroext i8 @mult(i8 zeroext %conv59.1.8, i8 zeroext %1371)
  %scevgep42.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 1
  store i8 %call64.1.8, i8* %scevgep42.1.8, align 1
  %1372 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 1
  %1373 = load i8, i8* %scevgep39.1.8, align 1
  %call75.1.8 = call zeroext i8 @mult(i8 zeroext %1372, i8 zeroext %1373)
  %scevgep46.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 1
  store i8 %call75.1.8, i8* %scevgep46.1.8, align 1
  %scevgep43.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 1
  %1374 = load i8, i8* %scevgep43.1.8, align 1
  %conv84.1.8 = zext i8 %1374 to i32
  %scevgep47.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 1
  %1375 = load i8, i8* %scevgep47.1.8, align 1
  %conv89.1.8 = zext i8 %1375 to i32
  %xor90.1.8 = xor i32 %conv84.1.8, %conv89.1.8
  %conv91.1.8 = trunc i32 %xor90.1.8 to i8
  %scevgep50.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 1
  store i8 %conv91.1.8, i8* %scevgep50.1.8, align 1
  %scevgep31.2.8 = getelementptr i8, i8* %b, i64 2
  %1376 = load i8, i8* %scevgep31.2.8, align 1
  %conv44.2.8 = zext i8 %1376 to i32
  %scevgep34.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 2
  %1377 = load i8, i8* %scevgep34.2.8, align 1
  %conv49.2.8 = zext i8 %1377 to i32
  %xor.2.8 = xor i32 %conv44.2.8, %conv49.2.8
  %conv50.2.8 = trunc i32 %xor.2.8 to i8
  %scevgep38.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 2
  store i8 %conv50.2.8, i8* %scevgep38.2.8, align 1
  %1378 = load i8, i8* %arrayidx56.8, align 1
  %conv57.2.8 = zext i8 %1378 to i32
  %xor58.2.8 = xor i32 %conv57.2.8, 1
  %conv59.2.8 = trunc i32 %xor58.2.8 to i8
  %scevgep35.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 2
  %1379 = load i8, i8* %scevgep35.2.8, align 1
  %call64.2.8 = call zeroext i8 @mult(i8 zeroext %conv59.2.8, i8 zeroext %1379)
  %scevgep42.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 2
  store i8 %call64.2.8, i8* %scevgep42.2.8, align 1
  %1380 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 2
  %1381 = load i8, i8* %scevgep39.2.8, align 1
  %call75.2.8 = call zeroext i8 @mult(i8 zeroext %1380, i8 zeroext %1381)
  %scevgep46.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 2
  store i8 %call75.2.8, i8* %scevgep46.2.8, align 1
  %scevgep43.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 2
  %1382 = load i8, i8* %scevgep43.2.8, align 1
  %conv84.2.8 = zext i8 %1382 to i32
  %scevgep47.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 2
  %1383 = load i8, i8* %scevgep47.2.8, align 1
  %conv89.2.8 = zext i8 %1383 to i32
  %xor90.2.8 = xor i32 %conv84.2.8, %conv89.2.8
  %conv91.2.8 = trunc i32 %xor90.2.8 to i8
  %scevgep50.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 2
  store i8 %conv91.2.8, i8* %scevgep50.2.8, align 1
  %scevgep31.3.8 = getelementptr i8, i8* %b, i64 3
  %1384 = load i8, i8* %scevgep31.3.8, align 1
  %conv44.3.8 = zext i8 %1384 to i32
  %scevgep34.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 3
  %1385 = load i8, i8* %scevgep34.3.8, align 1
  %conv49.3.8 = zext i8 %1385 to i32
  %xor.3.8 = xor i32 %conv44.3.8, %conv49.3.8
  %conv50.3.8 = trunc i32 %xor.3.8 to i8
  %scevgep38.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 3
  store i8 %conv50.3.8, i8* %scevgep38.3.8, align 1
  %1386 = load i8, i8* %arrayidx56.8, align 1
  %conv57.3.8 = zext i8 %1386 to i32
  %xor58.3.8 = xor i32 %conv57.3.8, 1
  %conv59.3.8 = trunc i32 %xor58.3.8 to i8
  %scevgep35.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 3
  %1387 = load i8, i8* %scevgep35.3.8, align 1
  %call64.3.8 = call zeroext i8 @mult(i8 zeroext %conv59.3.8, i8 zeroext %1387)
  %scevgep42.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 3
  store i8 %call64.3.8, i8* %scevgep42.3.8, align 1
  %1388 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 3
  %1389 = load i8, i8* %scevgep39.3.8, align 1
  %call75.3.8 = call zeroext i8 @mult(i8 zeroext %1388, i8 zeroext %1389)
  %scevgep46.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 3
  store i8 %call75.3.8, i8* %scevgep46.3.8, align 1
  %scevgep43.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 3
  %1390 = load i8, i8* %scevgep43.3.8, align 1
  %conv84.3.8 = zext i8 %1390 to i32
  %scevgep47.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 3
  %1391 = load i8, i8* %scevgep47.3.8, align 1
  %conv89.3.8 = zext i8 %1391 to i32
  %xor90.3.8 = xor i32 %conv84.3.8, %conv89.3.8
  %conv91.3.8 = trunc i32 %xor90.3.8 to i8
  %scevgep50.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 3
  store i8 %conv91.3.8, i8* %scevgep50.3.8, align 1
  %scevgep31.4.8 = getelementptr i8, i8* %b, i64 4
  %1392 = load i8, i8* %scevgep31.4.8, align 1
  %conv44.4.8 = zext i8 %1392 to i32
  %scevgep34.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 4
  %1393 = load i8, i8* %scevgep34.4.8, align 1
  %conv49.4.8 = zext i8 %1393 to i32
  %xor.4.8 = xor i32 %conv44.4.8, %conv49.4.8
  %conv50.4.8 = trunc i32 %xor.4.8 to i8
  %scevgep38.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 4
  store i8 %conv50.4.8, i8* %scevgep38.4.8, align 1
  %1394 = load i8, i8* %arrayidx56.8, align 1
  %conv57.4.8 = zext i8 %1394 to i32
  %xor58.4.8 = xor i32 %conv57.4.8, 1
  %conv59.4.8 = trunc i32 %xor58.4.8 to i8
  %scevgep35.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 4
  %1395 = load i8, i8* %scevgep35.4.8, align 1
  %call64.4.8 = call zeroext i8 @mult(i8 zeroext %conv59.4.8, i8 zeroext %1395)
  %scevgep42.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 4
  store i8 %call64.4.8, i8* %scevgep42.4.8, align 1
  %1396 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 4
  %1397 = load i8, i8* %scevgep39.4.8, align 1
  %call75.4.8 = call zeroext i8 @mult(i8 zeroext %1396, i8 zeroext %1397)
  %scevgep46.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 4
  store i8 %call75.4.8, i8* %scevgep46.4.8, align 1
  %scevgep43.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 4
  %1398 = load i8, i8* %scevgep43.4.8, align 1
  %conv84.4.8 = zext i8 %1398 to i32
  %scevgep47.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 4
  %1399 = load i8, i8* %scevgep47.4.8, align 1
  %conv89.4.8 = zext i8 %1399 to i32
  %xor90.4.8 = xor i32 %conv84.4.8, %conv89.4.8
  %conv91.4.8 = trunc i32 %xor90.4.8 to i8
  %scevgep50.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 4
  store i8 %conv91.4.8, i8* %scevgep50.4.8, align 1
  %scevgep31.5.8 = getelementptr i8, i8* %b, i64 5
  %1400 = load i8, i8* %scevgep31.5.8, align 1
  %conv44.5.8 = zext i8 %1400 to i32
  %scevgep34.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 5
  %1401 = load i8, i8* %scevgep34.5.8, align 1
  %conv49.5.8 = zext i8 %1401 to i32
  %xor.5.8 = xor i32 %conv44.5.8, %conv49.5.8
  %conv50.5.8 = trunc i32 %xor.5.8 to i8
  %scevgep38.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 5
  store i8 %conv50.5.8, i8* %scevgep38.5.8, align 1
  %1402 = load i8, i8* %arrayidx56.8, align 1
  %conv57.5.8 = zext i8 %1402 to i32
  %xor58.5.8 = xor i32 %conv57.5.8, 1
  %conv59.5.8 = trunc i32 %xor58.5.8 to i8
  %scevgep35.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 5
  %1403 = load i8, i8* %scevgep35.5.8, align 1
  %call64.5.8 = call zeroext i8 @mult(i8 zeroext %conv59.5.8, i8 zeroext %1403)
  %scevgep42.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 5
  store i8 %call64.5.8, i8* %scevgep42.5.8, align 1
  %1404 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 5
  %1405 = load i8, i8* %scevgep39.5.8, align 1
  %call75.5.8 = call zeroext i8 @mult(i8 zeroext %1404, i8 zeroext %1405)
  %scevgep46.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 5
  store i8 %call75.5.8, i8* %scevgep46.5.8, align 1
  %scevgep43.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 5
  %1406 = load i8, i8* %scevgep43.5.8, align 1
  %conv84.5.8 = zext i8 %1406 to i32
  %scevgep47.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 5
  %1407 = load i8, i8* %scevgep47.5.8, align 1
  %conv89.5.8 = zext i8 %1407 to i32
  %xor90.5.8 = xor i32 %conv84.5.8, %conv89.5.8
  %conv91.5.8 = trunc i32 %xor90.5.8 to i8
  %scevgep50.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 5
  store i8 %conv91.5.8, i8* %scevgep50.5.8, align 1
  %scevgep31.6.8 = getelementptr i8, i8* %b, i64 6
  %1408 = load i8, i8* %scevgep31.6.8, align 1
  %conv44.6.8 = zext i8 %1408 to i32
  %scevgep34.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 6
  %1409 = load i8, i8* %scevgep34.6.8, align 1
  %conv49.6.8 = zext i8 %1409 to i32
  %xor.6.8 = xor i32 %conv44.6.8, %conv49.6.8
  %conv50.6.8 = trunc i32 %xor.6.8 to i8
  %scevgep38.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 6
  store i8 %conv50.6.8, i8* %scevgep38.6.8, align 1
  %1410 = load i8, i8* %arrayidx56.8, align 1
  %conv57.6.8 = zext i8 %1410 to i32
  %xor58.6.8 = xor i32 %conv57.6.8, 1
  %conv59.6.8 = trunc i32 %xor58.6.8 to i8
  %scevgep35.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 6
  %1411 = load i8, i8* %scevgep35.6.8, align 1
  %call64.6.8 = call zeroext i8 @mult(i8 zeroext %conv59.6.8, i8 zeroext %1411)
  %scevgep42.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 6
  store i8 %call64.6.8, i8* %scevgep42.6.8, align 1
  %1412 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 6
  %1413 = load i8, i8* %scevgep39.6.8, align 1
  %call75.6.8 = call zeroext i8 @mult(i8 zeroext %1412, i8 zeroext %1413)
  %scevgep46.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 6
  store i8 %call75.6.8, i8* %scevgep46.6.8, align 1
  %scevgep43.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 6
  %1414 = load i8, i8* %scevgep43.6.8, align 1
  %conv84.6.8 = zext i8 %1414 to i32
  %scevgep47.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 6
  %1415 = load i8, i8* %scevgep47.6.8, align 1
  %conv89.6.8 = zext i8 %1415 to i32
  %xor90.6.8 = xor i32 %conv84.6.8, %conv89.6.8
  %conv91.6.8 = trunc i32 %xor90.6.8 to i8
  %scevgep50.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 6
  store i8 %conv91.6.8, i8* %scevgep50.6.8, align 1
  %scevgep31.7.8 = getelementptr i8, i8* %b, i64 7
  %1416 = load i8, i8* %scevgep31.7.8, align 1
  %conv44.7.8 = zext i8 %1416 to i32
  %scevgep34.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 7
  %1417 = load i8, i8* %scevgep34.7.8, align 1
  %conv49.7.8 = zext i8 %1417 to i32
  %xor.7.8 = xor i32 %conv44.7.8, %conv49.7.8
  %conv50.7.8 = trunc i32 %xor.7.8 to i8
  %scevgep38.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 7
  store i8 %conv50.7.8, i8* %scevgep38.7.8, align 1
  %1418 = load i8, i8* %arrayidx56.8, align 1
  %conv57.7.8 = zext i8 %1418 to i32
  %xor58.7.8 = xor i32 %conv57.7.8, 1
  %conv59.7.8 = trunc i32 %xor58.7.8 to i8
  %scevgep35.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 7
  %1419 = load i8, i8* %scevgep35.7.8, align 1
  %call64.7.8 = call zeroext i8 @mult(i8 zeroext %conv59.7.8, i8 zeroext %1419)
  %scevgep42.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 7
  store i8 %call64.7.8, i8* %scevgep42.7.8, align 1
  %1420 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 7
  %1421 = load i8, i8* %scevgep39.7.8, align 1
  %call75.7.8 = call zeroext i8 @mult(i8 zeroext %1420, i8 zeroext %1421)
  %scevgep46.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 7
  store i8 %call75.7.8, i8* %scevgep46.7.8, align 1
  %scevgep43.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 7
  %1422 = load i8, i8* %scevgep43.7.8, align 1
  %conv84.7.8 = zext i8 %1422 to i32
  %scevgep47.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 7
  %1423 = load i8, i8* %scevgep47.7.8, align 1
  %conv89.7.8 = zext i8 %1423 to i32
  %xor90.7.8 = xor i32 %conv84.7.8, %conv89.7.8
  %conv91.7.8 = trunc i32 %xor90.7.8 to i8
  %scevgep50.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 7
  store i8 %conv91.7.8, i8* %scevgep50.7.8, align 1
  %scevgep31.9.8 = getelementptr i8, i8* %b, i64 9
  %1424 = load i8, i8* %scevgep31.9.8, align 1
  %conv44.9.8 = zext i8 %1424 to i32
  %scevgep34.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 9
  %1425 = load i8, i8* %scevgep34.9.8, align 1
  %conv49.9.8 = zext i8 %1425 to i32
  %xor.9.8 = xor i32 %conv44.9.8, %conv49.9.8
  %conv50.9.8 = trunc i32 %xor.9.8 to i8
  %scevgep38.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 9
  store i8 %conv50.9.8, i8* %scevgep38.9.8, align 1
  %1426 = load i8, i8* %arrayidx56.8, align 1
  %conv57.9.8 = zext i8 %1426 to i32
  %xor58.9.8 = xor i32 %conv57.9.8, 1
  %conv59.9.8 = trunc i32 %xor58.9.8 to i8
  %scevgep35.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 9
  %1427 = load i8, i8* %scevgep35.9.8, align 1
  %call64.9.8 = call zeroext i8 @mult(i8 zeroext %conv59.9.8, i8 zeroext %1427)
  %scevgep42.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 9
  store i8 %call64.9.8, i8* %scevgep42.9.8, align 1
  %1428 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 9
  %1429 = load i8, i8* %scevgep39.9.8, align 1
  %call75.9.8 = call zeroext i8 @mult(i8 zeroext %1428, i8 zeroext %1429)
  %scevgep46.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 9
  store i8 %call75.9.8, i8* %scevgep46.9.8, align 1
  %scevgep43.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 9
  %1430 = load i8, i8* %scevgep43.9.8, align 1
  %conv84.9.8 = zext i8 %1430 to i32
  %scevgep47.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 9
  %1431 = load i8, i8* %scevgep47.9.8, align 1
  %conv89.9.8 = zext i8 %1431 to i32
  %xor90.9.8 = xor i32 %conv84.9.8, %conv89.9.8
  %conv91.9.8 = trunc i32 %xor90.9.8 to i8
  %scevgep50.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 9
  store i8 %conv91.9.8, i8* %scevgep50.9.8, align 1
  %scevgep31.10.8 = getelementptr i8, i8* %b, i64 10
  %1432 = load i8, i8* %scevgep31.10.8, align 1
  %conv44.10.8 = zext i8 %1432 to i32
  %scevgep34.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 10
  %1433 = load i8, i8* %scevgep34.10.8, align 1
  %conv49.10.8 = zext i8 %1433 to i32
  %xor.10.8 = xor i32 %conv44.10.8, %conv49.10.8
  %conv50.10.8 = trunc i32 %xor.10.8 to i8
  %scevgep38.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 10
  store i8 %conv50.10.8, i8* %scevgep38.10.8, align 1
  %1434 = load i8, i8* %arrayidx56.8, align 1
  %conv57.10.8 = zext i8 %1434 to i32
  %xor58.10.8 = xor i32 %conv57.10.8, 1
  %conv59.10.8 = trunc i32 %xor58.10.8 to i8
  %scevgep35.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 10
  %1435 = load i8, i8* %scevgep35.10.8, align 1
  %call64.10.8 = call zeroext i8 @mult(i8 zeroext %conv59.10.8, i8 zeroext %1435)
  %scevgep42.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 10
  store i8 %call64.10.8, i8* %scevgep42.10.8, align 1
  %1436 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 10
  %1437 = load i8, i8* %scevgep39.10.8, align 1
  %call75.10.8 = call zeroext i8 @mult(i8 zeroext %1436, i8 zeroext %1437)
  %scevgep46.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 10
  store i8 %call75.10.8, i8* %scevgep46.10.8, align 1
  %scevgep43.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 10
  %1438 = load i8, i8* %scevgep43.10.8, align 1
  %conv84.10.8 = zext i8 %1438 to i32
  %scevgep47.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 10
  %1439 = load i8, i8* %scevgep47.10.8, align 1
  %conv89.10.8 = zext i8 %1439 to i32
  %xor90.10.8 = xor i32 %conv84.10.8, %conv89.10.8
  %conv91.10.8 = trunc i32 %xor90.10.8 to i8
  %scevgep50.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 10
  store i8 %conv91.10.8, i8* %scevgep50.10.8, align 1
  %scevgep31.11.8 = getelementptr i8, i8* %b, i64 11
  %1440 = load i8, i8* %scevgep31.11.8, align 1
  %conv44.11.8 = zext i8 %1440 to i32
  %scevgep34.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 11
  %1441 = load i8, i8* %scevgep34.11.8, align 1
  %conv49.11.8 = zext i8 %1441 to i32
  %xor.11.8 = xor i32 %conv44.11.8, %conv49.11.8
  %conv50.11.8 = trunc i32 %xor.11.8 to i8
  %scevgep38.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 11
  store i8 %conv50.11.8, i8* %scevgep38.11.8, align 1
  %1442 = load i8, i8* %arrayidx56.8, align 1
  %conv57.11.8 = zext i8 %1442 to i32
  %xor58.11.8 = xor i32 %conv57.11.8, 1
  %conv59.11.8 = trunc i32 %xor58.11.8 to i8
  %scevgep35.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 11
  %1443 = load i8, i8* %scevgep35.11.8, align 1
  %call64.11.8 = call zeroext i8 @mult(i8 zeroext %conv59.11.8, i8 zeroext %1443)
  %scevgep42.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 11
  store i8 %call64.11.8, i8* %scevgep42.11.8, align 1
  %1444 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 11
  %1445 = load i8, i8* %scevgep39.11.8, align 1
  %call75.11.8 = call zeroext i8 @mult(i8 zeroext %1444, i8 zeroext %1445)
  %scevgep46.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 11
  store i8 %call75.11.8, i8* %scevgep46.11.8, align 1
  %scevgep43.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 11
  %1446 = load i8, i8* %scevgep43.11.8, align 1
  %conv84.11.8 = zext i8 %1446 to i32
  %scevgep47.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 11
  %1447 = load i8, i8* %scevgep47.11.8, align 1
  %conv89.11.8 = zext i8 %1447 to i32
  %xor90.11.8 = xor i32 %conv84.11.8, %conv89.11.8
  %conv91.11.8 = trunc i32 %xor90.11.8 to i8
  %scevgep50.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 11
  store i8 %conv91.11.8, i8* %scevgep50.11.8, align 1
  %scevgep31.12.8 = getelementptr i8, i8* %b, i64 12
  %1448 = load i8, i8* %scevgep31.12.8, align 1
  %conv44.12.8 = zext i8 %1448 to i32
  %scevgep34.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 12
  %1449 = load i8, i8* %scevgep34.12.8, align 1
  %conv49.12.8 = zext i8 %1449 to i32
  %xor.12.8 = xor i32 %conv44.12.8, %conv49.12.8
  %conv50.12.8 = trunc i32 %xor.12.8 to i8
  %scevgep38.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 12
  store i8 %conv50.12.8, i8* %scevgep38.12.8, align 1
  %1450 = load i8, i8* %arrayidx56.8, align 1
  %conv57.12.8 = zext i8 %1450 to i32
  %xor58.12.8 = xor i32 %conv57.12.8, 1
  %conv59.12.8 = trunc i32 %xor58.12.8 to i8
  %scevgep35.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 12
  %1451 = load i8, i8* %scevgep35.12.8, align 1
  %call64.12.8 = call zeroext i8 @mult(i8 zeroext %conv59.12.8, i8 zeroext %1451)
  %scevgep42.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 12
  store i8 %call64.12.8, i8* %scevgep42.12.8, align 1
  %1452 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 12
  %1453 = load i8, i8* %scevgep39.12.8, align 1
  %call75.12.8 = call zeroext i8 @mult(i8 zeroext %1452, i8 zeroext %1453)
  %scevgep46.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 12
  store i8 %call75.12.8, i8* %scevgep46.12.8, align 1
  %scevgep43.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 12
  %1454 = load i8, i8* %scevgep43.12.8, align 1
  %conv84.12.8 = zext i8 %1454 to i32
  %scevgep47.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 12
  %1455 = load i8, i8* %scevgep47.12.8, align 1
  %conv89.12.8 = zext i8 %1455 to i32
  %xor90.12.8 = xor i32 %conv84.12.8, %conv89.12.8
  %conv91.12.8 = trunc i32 %xor90.12.8 to i8
  %scevgep50.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 12
  store i8 %conv91.12.8, i8* %scevgep50.12.8, align 1
  %scevgep31.13.8 = getelementptr i8, i8* %b, i64 13
  %1456 = load i8, i8* %scevgep31.13.8, align 1
  %conv44.13.8 = zext i8 %1456 to i32
  %scevgep34.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 13
  %1457 = load i8, i8* %scevgep34.13.8, align 1
  %conv49.13.8 = zext i8 %1457 to i32
  %xor.13.8 = xor i32 %conv44.13.8, %conv49.13.8
  %conv50.13.8 = trunc i32 %xor.13.8 to i8
  %scevgep38.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 13
  store i8 %conv50.13.8, i8* %scevgep38.13.8, align 1
  %1458 = load i8, i8* %arrayidx56.8, align 1
  %conv57.13.8 = zext i8 %1458 to i32
  %xor58.13.8 = xor i32 %conv57.13.8, 1
  %conv59.13.8 = trunc i32 %xor58.13.8 to i8
  %scevgep35.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 13
  %1459 = load i8, i8* %scevgep35.13.8, align 1
  %call64.13.8 = call zeroext i8 @mult(i8 zeroext %conv59.13.8, i8 zeroext %1459)
  %scevgep42.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 13
  store i8 %call64.13.8, i8* %scevgep42.13.8, align 1
  %1460 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 13
  %1461 = load i8, i8* %scevgep39.13.8, align 1
  %call75.13.8 = call zeroext i8 @mult(i8 zeroext %1460, i8 zeroext %1461)
  %scevgep46.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 13
  store i8 %call75.13.8, i8* %scevgep46.13.8, align 1
  %scevgep43.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 13
  %1462 = load i8, i8* %scevgep43.13.8, align 1
  %conv84.13.8 = zext i8 %1462 to i32
  %scevgep47.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 13
  %1463 = load i8, i8* %scevgep47.13.8, align 1
  %conv89.13.8 = zext i8 %1463 to i32
  %xor90.13.8 = xor i32 %conv84.13.8, %conv89.13.8
  %conv91.13.8 = trunc i32 %xor90.13.8 to i8
  %scevgep50.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 13
  store i8 %conv91.13.8, i8* %scevgep50.13.8, align 1
  %scevgep31.14.8 = getelementptr i8, i8* %b, i64 14
  %1464 = load i8, i8* %scevgep31.14.8, align 1
  %conv44.14.8 = zext i8 %1464 to i32
  %scevgep34.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 14
  %1465 = load i8, i8* %scevgep34.14.8, align 1
  %conv49.14.8 = zext i8 %1465 to i32
  %xor.14.8 = xor i32 %conv44.14.8, %conv49.14.8
  %conv50.14.8 = trunc i32 %xor.14.8 to i8
  %scevgep38.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 14
  store i8 %conv50.14.8, i8* %scevgep38.14.8, align 1
  %1466 = load i8, i8* %arrayidx56.8, align 1
  %conv57.14.8 = zext i8 %1466 to i32
  %xor58.14.8 = xor i32 %conv57.14.8, 1
  %conv59.14.8 = trunc i32 %xor58.14.8 to i8
  %scevgep35.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 14
  %1467 = load i8, i8* %scevgep35.14.8, align 1
  %call64.14.8 = call zeroext i8 @mult(i8 zeroext %conv59.14.8, i8 zeroext %1467)
  %scevgep42.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 14
  store i8 %call64.14.8, i8* %scevgep42.14.8, align 1
  %1468 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 14
  %1469 = load i8, i8* %scevgep39.14.8, align 1
  %call75.14.8 = call zeroext i8 @mult(i8 zeroext %1468, i8 zeroext %1469)
  %scevgep46.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 14
  store i8 %call75.14.8, i8* %scevgep46.14.8, align 1
  %scevgep43.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 14
  %1470 = load i8, i8* %scevgep43.14.8, align 1
  %conv84.14.8 = zext i8 %1470 to i32
  %scevgep47.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 14
  %1471 = load i8, i8* %scevgep47.14.8, align 1
  %conv89.14.8 = zext i8 %1471 to i32
  %xor90.14.8 = xor i32 %conv84.14.8, %conv89.14.8
  %conv91.14.8 = trunc i32 %xor90.14.8 to i8
  %scevgep50.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 14
  store i8 %conv91.14.8, i8* %scevgep50.14.8, align 1
  %scevgep31.15.8 = getelementptr i8, i8* %b, i64 15
  %1472 = load i8, i8* %scevgep31.15.8, align 1
  %conv44.15.8 = zext i8 %1472 to i32
  %scevgep34.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 15
  %1473 = load i8, i8* %scevgep34.15.8, align 1
  %conv49.15.8 = zext i8 %1473 to i32
  %xor.15.8 = xor i32 %conv44.15.8, %conv49.15.8
  %conv50.15.8 = trunc i32 %xor.15.8 to i8
  %scevgep38.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 15
  store i8 %conv50.15.8, i8* %scevgep38.15.8, align 1
  %1474 = load i8, i8* %arrayidx56.8, align 1
  %conv57.15.8 = zext i8 %1474 to i32
  %xor58.15.8 = xor i32 %conv57.15.8, 1
  %conv59.15.8 = trunc i32 %xor58.15.8 to i8
  %scevgep35.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 0, i64 15
  %1475 = load i8, i8* %scevgep35.15.8, align 1
  %call64.15.8 = call zeroext i8 @mult(i8 zeroext %conv59.15.8, i8 zeroext %1475)
  %scevgep42.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 15
  store i8 %call64.15.8, i8* %scevgep42.15.8, align 1
  %1476 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 0, i64 15
  %1477 = load i8, i8* %scevgep39.15.8, align 1
  %call75.15.8 = call zeroext i8 @mult(i8 zeroext %1476, i8 zeroext %1477)
  %scevgep46.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 15
  store i8 %call75.15.8, i8* %scevgep46.15.8, align 1
  %scevgep43.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 0, i64 15
  %1478 = load i8, i8* %scevgep43.15.8, align 1
  %conv84.15.8 = zext i8 %1478 to i32
  %scevgep47.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 0, i64 15
  %1479 = load i8, i8* %scevgep47.15.8, align 1
  %conv89.15.8 = zext i8 %1479 to i32
  %xor90.15.8 = xor i32 %conv84.15.8, %conv89.15.8
  %conv91.15.8 = trunc i32 %xor90.15.8 to i8
  %scevgep50.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 0, i64 15
  store i8 %conv91.15.8, i8* %scevgep50.15.8, align 1
  %scevgep33.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1355, i64 0, i64 1, i64 0
  %1480 = bitcast i8* %scevgep33.8 to [16 x [16 x i8]]*
  %scevgep37.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1356, i64 0, i64 1, i64 0
  %1481 = bitcast i8* %scevgep37.8 to [16 x [16 x i8]]*
  %scevgep41.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1357, i64 0, i64 1, i64 0
  %1482 = bitcast i8* %scevgep41.8 to [16 x [16 x i8]]*
  %scevgep45.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1358, i64 0, i64 1, i64 0
  %1483 = bitcast i8* %scevgep45.8 to [16 x [16 x i8]]*
  %scevgep49.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1359, i64 0, i64 1, i64 0
  %1484 = bitcast i8* %scevgep49.8 to [16 x [16 x i8]]*
  %arrayidx56.9 = getelementptr inbounds i8, i8* %a, i64 9
  %arrayidx70.9 = getelementptr inbounds i8, i8* %a, i64 9
  %1485 = load i8, i8* %b, align 1
  %conv44.9444 = zext i8 %1485 to i32
  %scevgep34.9445 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 0
  %1486 = load i8, i8* %scevgep34.9445, align 1
  %conv49.9446 = zext i8 %1486 to i32
  %xor.9447 = xor i32 %conv44.9444, %conv49.9446
  %conv50.9448 = trunc i32 %xor.9447 to i8
  %scevgep38.9449 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 0
  store i8 %conv50.9448, i8* %scevgep38.9449, align 1
  %1487 = load i8, i8* %arrayidx56.9, align 1
  %conv57.9450 = zext i8 %1487 to i32
  %xor58.9451 = xor i32 %conv57.9450, 1
  %conv59.9452 = trunc i32 %xor58.9451 to i8
  %scevgep35.9453 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 0
  %1488 = load i8, i8* %scevgep35.9453, align 1
  %call64.9454 = call zeroext i8 @mult(i8 zeroext %conv59.9452, i8 zeroext %1488)
  %scevgep42.9455 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 0
  store i8 %call64.9454, i8* %scevgep42.9455, align 1
  %1489 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.9456 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 0
  %1490 = load i8, i8* %scevgep39.9456, align 1
  %call75.9457 = call zeroext i8 @mult(i8 zeroext %1489, i8 zeroext %1490)
  %scevgep46.9458 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 0
  store i8 %call75.9457, i8* %scevgep46.9458, align 1
  %scevgep43.9459 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 0
  %1491 = load i8, i8* %scevgep43.9459, align 1
  %conv84.9460 = zext i8 %1491 to i32
  %scevgep47.9461 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 0
  %1492 = load i8, i8* %scevgep47.9461, align 1
  %conv89.9462 = zext i8 %1492 to i32
  %xor90.9463 = xor i32 %conv84.9460, %conv89.9462
  %conv91.9464 = trunc i32 %xor90.9463 to i8
  %scevgep50.9465 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 0
  store i8 %conv91.9464, i8* %scevgep50.9465, align 1
  %scevgep31.1.9 = getelementptr i8, i8* %b, i64 1
  %1493 = load i8, i8* %scevgep31.1.9, align 1
  %conv44.1.9 = zext i8 %1493 to i32
  %scevgep34.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 1
  %1494 = load i8, i8* %scevgep34.1.9, align 1
  %conv49.1.9 = zext i8 %1494 to i32
  %xor.1.9 = xor i32 %conv44.1.9, %conv49.1.9
  %conv50.1.9 = trunc i32 %xor.1.9 to i8
  %scevgep38.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 1
  store i8 %conv50.1.9, i8* %scevgep38.1.9, align 1
  %1495 = load i8, i8* %arrayidx56.9, align 1
  %conv57.1.9 = zext i8 %1495 to i32
  %xor58.1.9 = xor i32 %conv57.1.9, 1
  %conv59.1.9 = trunc i32 %xor58.1.9 to i8
  %scevgep35.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 1
  %1496 = load i8, i8* %scevgep35.1.9, align 1
  %call64.1.9 = call zeroext i8 @mult(i8 zeroext %conv59.1.9, i8 zeroext %1496)
  %scevgep42.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 1
  store i8 %call64.1.9, i8* %scevgep42.1.9, align 1
  %1497 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 1
  %1498 = load i8, i8* %scevgep39.1.9, align 1
  %call75.1.9 = call zeroext i8 @mult(i8 zeroext %1497, i8 zeroext %1498)
  %scevgep46.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 1
  store i8 %call75.1.9, i8* %scevgep46.1.9, align 1
  %scevgep43.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 1
  %1499 = load i8, i8* %scevgep43.1.9, align 1
  %conv84.1.9 = zext i8 %1499 to i32
  %scevgep47.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 1
  %1500 = load i8, i8* %scevgep47.1.9, align 1
  %conv89.1.9 = zext i8 %1500 to i32
  %xor90.1.9 = xor i32 %conv84.1.9, %conv89.1.9
  %conv91.1.9 = trunc i32 %xor90.1.9 to i8
  %scevgep50.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 1
  store i8 %conv91.1.9, i8* %scevgep50.1.9, align 1
  %scevgep31.2.9 = getelementptr i8, i8* %b, i64 2
  %1501 = load i8, i8* %scevgep31.2.9, align 1
  %conv44.2.9 = zext i8 %1501 to i32
  %scevgep34.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 2
  %1502 = load i8, i8* %scevgep34.2.9, align 1
  %conv49.2.9 = zext i8 %1502 to i32
  %xor.2.9 = xor i32 %conv44.2.9, %conv49.2.9
  %conv50.2.9 = trunc i32 %xor.2.9 to i8
  %scevgep38.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 2
  store i8 %conv50.2.9, i8* %scevgep38.2.9, align 1
  %1503 = load i8, i8* %arrayidx56.9, align 1
  %conv57.2.9 = zext i8 %1503 to i32
  %xor58.2.9 = xor i32 %conv57.2.9, 1
  %conv59.2.9 = trunc i32 %xor58.2.9 to i8
  %scevgep35.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 2
  %1504 = load i8, i8* %scevgep35.2.9, align 1
  %call64.2.9 = call zeroext i8 @mult(i8 zeroext %conv59.2.9, i8 zeroext %1504)
  %scevgep42.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 2
  store i8 %call64.2.9, i8* %scevgep42.2.9, align 1
  %1505 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 2
  %1506 = load i8, i8* %scevgep39.2.9, align 1
  %call75.2.9 = call zeroext i8 @mult(i8 zeroext %1505, i8 zeroext %1506)
  %scevgep46.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 2
  store i8 %call75.2.9, i8* %scevgep46.2.9, align 1
  %scevgep43.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 2
  %1507 = load i8, i8* %scevgep43.2.9, align 1
  %conv84.2.9 = zext i8 %1507 to i32
  %scevgep47.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 2
  %1508 = load i8, i8* %scevgep47.2.9, align 1
  %conv89.2.9 = zext i8 %1508 to i32
  %xor90.2.9 = xor i32 %conv84.2.9, %conv89.2.9
  %conv91.2.9 = trunc i32 %xor90.2.9 to i8
  %scevgep50.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 2
  store i8 %conv91.2.9, i8* %scevgep50.2.9, align 1
  %scevgep31.3.9 = getelementptr i8, i8* %b, i64 3
  %1509 = load i8, i8* %scevgep31.3.9, align 1
  %conv44.3.9 = zext i8 %1509 to i32
  %scevgep34.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 3
  %1510 = load i8, i8* %scevgep34.3.9, align 1
  %conv49.3.9 = zext i8 %1510 to i32
  %xor.3.9 = xor i32 %conv44.3.9, %conv49.3.9
  %conv50.3.9 = trunc i32 %xor.3.9 to i8
  %scevgep38.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 3
  store i8 %conv50.3.9, i8* %scevgep38.3.9, align 1
  %1511 = load i8, i8* %arrayidx56.9, align 1
  %conv57.3.9 = zext i8 %1511 to i32
  %xor58.3.9 = xor i32 %conv57.3.9, 1
  %conv59.3.9 = trunc i32 %xor58.3.9 to i8
  %scevgep35.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 3
  %1512 = load i8, i8* %scevgep35.3.9, align 1
  %call64.3.9 = call zeroext i8 @mult(i8 zeroext %conv59.3.9, i8 zeroext %1512)
  %scevgep42.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 3
  store i8 %call64.3.9, i8* %scevgep42.3.9, align 1
  %1513 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 3
  %1514 = load i8, i8* %scevgep39.3.9, align 1
  %call75.3.9 = call zeroext i8 @mult(i8 zeroext %1513, i8 zeroext %1514)
  %scevgep46.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 3
  store i8 %call75.3.9, i8* %scevgep46.3.9, align 1
  %scevgep43.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 3
  %1515 = load i8, i8* %scevgep43.3.9, align 1
  %conv84.3.9 = zext i8 %1515 to i32
  %scevgep47.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 3
  %1516 = load i8, i8* %scevgep47.3.9, align 1
  %conv89.3.9 = zext i8 %1516 to i32
  %xor90.3.9 = xor i32 %conv84.3.9, %conv89.3.9
  %conv91.3.9 = trunc i32 %xor90.3.9 to i8
  %scevgep50.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 3
  store i8 %conv91.3.9, i8* %scevgep50.3.9, align 1
  %scevgep31.4.9 = getelementptr i8, i8* %b, i64 4
  %1517 = load i8, i8* %scevgep31.4.9, align 1
  %conv44.4.9 = zext i8 %1517 to i32
  %scevgep34.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 4
  %1518 = load i8, i8* %scevgep34.4.9, align 1
  %conv49.4.9 = zext i8 %1518 to i32
  %xor.4.9 = xor i32 %conv44.4.9, %conv49.4.9
  %conv50.4.9 = trunc i32 %xor.4.9 to i8
  %scevgep38.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 4
  store i8 %conv50.4.9, i8* %scevgep38.4.9, align 1
  %1519 = load i8, i8* %arrayidx56.9, align 1
  %conv57.4.9 = zext i8 %1519 to i32
  %xor58.4.9 = xor i32 %conv57.4.9, 1
  %conv59.4.9 = trunc i32 %xor58.4.9 to i8
  %scevgep35.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 4
  %1520 = load i8, i8* %scevgep35.4.9, align 1
  %call64.4.9 = call zeroext i8 @mult(i8 zeroext %conv59.4.9, i8 zeroext %1520)
  %scevgep42.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 4
  store i8 %call64.4.9, i8* %scevgep42.4.9, align 1
  %1521 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 4
  %1522 = load i8, i8* %scevgep39.4.9, align 1
  %call75.4.9 = call zeroext i8 @mult(i8 zeroext %1521, i8 zeroext %1522)
  %scevgep46.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 4
  store i8 %call75.4.9, i8* %scevgep46.4.9, align 1
  %scevgep43.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 4
  %1523 = load i8, i8* %scevgep43.4.9, align 1
  %conv84.4.9 = zext i8 %1523 to i32
  %scevgep47.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 4
  %1524 = load i8, i8* %scevgep47.4.9, align 1
  %conv89.4.9 = zext i8 %1524 to i32
  %xor90.4.9 = xor i32 %conv84.4.9, %conv89.4.9
  %conv91.4.9 = trunc i32 %xor90.4.9 to i8
  %scevgep50.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 4
  store i8 %conv91.4.9, i8* %scevgep50.4.9, align 1
  %scevgep31.5.9 = getelementptr i8, i8* %b, i64 5
  %1525 = load i8, i8* %scevgep31.5.9, align 1
  %conv44.5.9 = zext i8 %1525 to i32
  %scevgep34.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 5
  %1526 = load i8, i8* %scevgep34.5.9, align 1
  %conv49.5.9 = zext i8 %1526 to i32
  %xor.5.9 = xor i32 %conv44.5.9, %conv49.5.9
  %conv50.5.9 = trunc i32 %xor.5.9 to i8
  %scevgep38.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 5
  store i8 %conv50.5.9, i8* %scevgep38.5.9, align 1
  %1527 = load i8, i8* %arrayidx56.9, align 1
  %conv57.5.9 = zext i8 %1527 to i32
  %xor58.5.9 = xor i32 %conv57.5.9, 1
  %conv59.5.9 = trunc i32 %xor58.5.9 to i8
  %scevgep35.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 5
  %1528 = load i8, i8* %scevgep35.5.9, align 1
  %call64.5.9 = call zeroext i8 @mult(i8 zeroext %conv59.5.9, i8 zeroext %1528)
  %scevgep42.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 5
  store i8 %call64.5.9, i8* %scevgep42.5.9, align 1
  %1529 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 5
  %1530 = load i8, i8* %scevgep39.5.9, align 1
  %call75.5.9 = call zeroext i8 @mult(i8 zeroext %1529, i8 zeroext %1530)
  %scevgep46.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 5
  store i8 %call75.5.9, i8* %scevgep46.5.9, align 1
  %scevgep43.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 5
  %1531 = load i8, i8* %scevgep43.5.9, align 1
  %conv84.5.9 = zext i8 %1531 to i32
  %scevgep47.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 5
  %1532 = load i8, i8* %scevgep47.5.9, align 1
  %conv89.5.9 = zext i8 %1532 to i32
  %xor90.5.9 = xor i32 %conv84.5.9, %conv89.5.9
  %conv91.5.9 = trunc i32 %xor90.5.9 to i8
  %scevgep50.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 5
  store i8 %conv91.5.9, i8* %scevgep50.5.9, align 1
  %scevgep31.6.9 = getelementptr i8, i8* %b, i64 6
  %1533 = load i8, i8* %scevgep31.6.9, align 1
  %conv44.6.9 = zext i8 %1533 to i32
  %scevgep34.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 6
  %1534 = load i8, i8* %scevgep34.6.9, align 1
  %conv49.6.9 = zext i8 %1534 to i32
  %xor.6.9 = xor i32 %conv44.6.9, %conv49.6.9
  %conv50.6.9 = trunc i32 %xor.6.9 to i8
  %scevgep38.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 6
  store i8 %conv50.6.9, i8* %scevgep38.6.9, align 1
  %1535 = load i8, i8* %arrayidx56.9, align 1
  %conv57.6.9 = zext i8 %1535 to i32
  %xor58.6.9 = xor i32 %conv57.6.9, 1
  %conv59.6.9 = trunc i32 %xor58.6.9 to i8
  %scevgep35.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 6
  %1536 = load i8, i8* %scevgep35.6.9, align 1
  %call64.6.9 = call zeroext i8 @mult(i8 zeroext %conv59.6.9, i8 zeroext %1536)
  %scevgep42.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 6
  store i8 %call64.6.9, i8* %scevgep42.6.9, align 1
  %1537 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 6
  %1538 = load i8, i8* %scevgep39.6.9, align 1
  %call75.6.9 = call zeroext i8 @mult(i8 zeroext %1537, i8 zeroext %1538)
  %scevgep46.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 6
  store i8 %call75.6.9, i8* %scevgep46.6.9, align 1
  %scevgep43.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 6
  %1539 = load i8, i8* %scevgep43.6.9, align 1
  %conv84.6.9 = zext i8 %1539 to i32
  %scevgep47.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 6
  %1540 = load i8, i8* %scevgep47.6.9, align 1
  %conv89.6.9 = zext i8 %1540 to i32
  %xor90.6.9 = xor i32 %conv84.6.9, %conv89.6.9
  %conv91.6.9 = trunc i32 %xor90.6.9 to i8
  %scevgep50.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 6
  store i8 %conv91.6.9, i8* %scevgep50.6.9, align 1
  %scevgep31.7.9 = getelementptr i8, i8* %b, i64 7
  %1541 = load i8, i8* %scevgep31.7.9, align 1
  %conv44.7.9 = zext i8 %1541 to i32
  %scevgep34.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 7
  %1542 = load i8, i8* %scevgep34.7.9, align 1
  %conv49.7.9 = zext i8 %1542 to i32
  %xor.7.9 = xor i32 %conv44.7.9, %conv49.7.9
  %conv50.7.9 = trunc i32 %xor.7.9 to i8
  %scevgep38.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 7
  store i8 %conv50.7.9, i8* %scevgep38.7.9, align 1
  %1543 = load i8, i8* %arrayidx56.9, align 1
  %conv57.7.9 = zext i8 %1543 to i32
  %xor58.7.9 = xor i32 %conv57.7.9, 1
  %conv59.7.9 = trunc i32 %xor58.7.9 to i8
  %scevgep35.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 7
  %1544 = load i8, i8* %scevgep35.7.9, align 1
  %call64.7.9 = call zeroext i8 @mult(i8 zeroext %conv59.7.9, i8 zeroext %1544)
  %scevgep42.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 7
  store i8 %call64.7.9, i8* %scevgep42.7.9, align 1
  %1545 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 7
  %1546 = load i8, i8* %scevgep39.7.9, align 1
  %call75.7.9 = call zeroext i8 @mult(i8 zeroext %1545, i8 zeroext %1546)
  %scevgep46.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 7
  store i8 %call75.7.9, i8* %scevgep46.7.9, align 1
  %scevgep43.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 7
  %1547 = load i8, i8* %scevgep43.7.9, align 1
  %conv84.7.9 = zext i8 %1547 to i32
  %scevgep47.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 7
  %1548 = load i8, i8* %scevgep47.7.9, align 1
  %conv89.7.9 = zext i8 %1548 to i32
  %xor90.7.9 = xor i32 %conv84.7.9, %conv89.7.9
  %conv91.7.9 = trunc i32 %xor90.7.9 to i8
  %scevgep50.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 7
  store i8 %conv91.7.9, i8* %scevgep50.7.9, align 1
  %scevgep31.8.9 = getelementptr i8, i8* %b, i64 8
  %1549 = load i8, i8* %scevgep31.8.9, align 1
  %conv44.8.9 = zext i8 %1549 to i32
  %scevgep34.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 8
  %1550 = load i8, i8* %scevgep34.8.9, align 1
  %conv49.8.9 = zext i8 %1550 to i32
  %xor.8.9 = xor i32 %conv44.8.9, %conv49.8.9
  %conv50.8.9 = trunc i32 %xor.8.9 to i8
  %scevgep38.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 8
  store i8 %conv50.8.9, i8* %scevgep38.8.9, align 1
  %1551 = load i8, i8* %arrayidx56.9, align 1
  %conv57.8.9 = zext i8 %1551 to i32
  %xor58.8.9 = xor i32 %conv57.8.9, 1
  %conv59.8.9 = trunc i32 %xor58.8.9 to i8
  %scevgep35.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 8
  %1552 = load i8, i8* %scevgep35.8.9, align 1
  %call64.8.9 = call zeroext i8 @mult(i8 zeroext %conv59.8.9, i8 zeroext %1552)
  %scevgep42.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 8
  store i8 %call64.8.9, i8* %scevgep42.8.9, align 1
  %1553 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 8
  %1554 = load i8, i8* %scevgep39.8.9, align 1
  %call75.8.9 = call zeroext i8 @mult(i8 zeroext %1553, i8 zeroext %1554)
  %scevgep46.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 8
  store i8 %call75.8.9, i8* %scevgep46.8.9, align 1
  %scevgep43.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 8
  %1555 = load i8, i8* %scevgep43.8.9, align 1
  %conv84.8.9 = zext i8 %1555 to i32
  %scevgep47.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 8
  %1556 = load i8, i8* %scevgep47.8.9, align 1
  %conv89.8.9 = zext i8 %1556 to i32
  %xor90.8.9 = xor i32 %conv84.8.9, %conv89.8.9
  %conv91.8.9 = trunc i32 %xor90.8.9 to i8
  %scevgep50.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 8
  store i8 %conv91.8.9, i8* %scevgep50.8.9, align 1
  %scevgep31.10.9 = getelementptr i8, i8* %b, i64 10
  %1557 = load i8, i8* %scevgep31.10.9, align 1
  %conv44.10.9 = zext i8 %1557 to i32
  %scevgep34.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 10
  %1558 = load i8, i8* %scevgep34.10.9, align 1
  %conv49.10.9 = zext i8 %1558 to i32
  %xor.10.9 = xor i32 %conv44.10.9, %conv49.10.9
  %conv50.10.9 = trunc i32 %xor.10.9 to i8
  %scevgep38.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 10
  store i8 %conv50.10.9, i8* %scevgep38.10.9, align 1
  %1559 = load i8, i8* %arrayidx56.9, align 1
  %conv57.10.9 = zext i8 %1559 to i32
  %xor58.10.9 = xor i32 %conv57.10.9, 1
  %conv59.10.9 = trunc i32 %xor58.10.9 to i8
  %scevgep35.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 10
  %1560 = load i8, i8* %scevgep35.10.9, align 1
  %call64.10.9 = call zeroext i8 @mult(i8 zeroext %conv59.10.9, i8 zeroext %1560)
  %scevgep42.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 10
  store i8 %call64.10.9, i8* %scevgep42.10.9, align 1
  %1561 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 10
  %1562 = load i8, i8* %scevgep39.10.9, align 1
  %call75.10.9 = call zeroext i8 @mult(i8 zeroext %1561, i8 zeroext %1562)
  %scevgep46.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 10
  store i8 %call75.10.9, i8* %scevgep46.10.9, align 1
  %scevgep43.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 10
  %1563 = load i8, i8* %scevgep43.10.9, align 1
  %conv84.10.9 = zext i8 %1563 to i32
  %scevgep47.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 10
  %1564 = load i8, i8* %scevgep47.10.9, align 1
  %conv89.10.9 = zext i8 %1564 to i32
  %xor90.10.9 = xor i32 %conv84.10.9, %conv89.10.9
  %conv91.10.9 = trunc i32 %xor90.10.9 to i8
  %scevgep50.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 10
  store i8 %conv91.10.9, i8* %scevgep50.10.9, align 1
  %scevgep31.11.9 = getelementptr i8, i8* %b, i64 11
  %1565 = load i8, i8* %scevgep31.11.9, align 1
  %conv44.11.9 = zext i8 %1565 to i32
  %scevgep34.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 11
  %1566 = load i8, i8* %scevgep34.11.9, align 1
  %conv49.11.9 = zext i8 %1566 to i32
  %xor.11.9 = xor i32 %conv44.11.9, %conv49.11.9
  %conv50.11.9 = trunc i32 %xor.11.9 to i8
  %scevgep38.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 11
  store i8 %conv50.11.9, i8* %scevgep38.11.9, align 1
  %1567 = load i8, i8* %arrayidx56.9, align 1
  %conv57.11.9 = zext i8 %1567 to i32
  %xor58.11.9 = xor i32 %conv57.11.9, 1
  %conv59.11.9 = trunc i32 %xor58.11.9 to i8
  %scevgep35.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 11
  %1568 = load i8, i8* %scevgep35.11.9, align 1
  %call64.11.9 = call zeroext i8 @mult(i8 zeroext %conv59.11.9, i8 zeroext %1568)
  %scevgep42.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 11
  store i8 %call64.11.9, i8* %scevgep42.11.9, align 1
  %1569 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 11
  %1570 = load i8, i8* %scevgep39.11.9, align 1
  %call75.11.9 = call zeroext i8 @mult(i8 zeroext %1569, i8 zeroext %1570)
  %scevgep46.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 11
  store i8 %call75.11.9, i8* %scevgep46.11.9, align 1
  %scevgep43.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 11
  %1571 = load i8, i8* %scevgep43.11.9, align 1
  %conv84.11.9 = zext i8 %1571 to i32
  %scevgep47.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 11
  %1572 = load i8, i8* %scevgep47.11.9, align 1
  %conv89.11.9 = zext i8 %1572 to i32
  %xor90.11.9 = xor i32 %conv84.11.9, %conv89.11.9
  %conv91.11.9 = trunc i32 %xor90.11.9 to i8
  %scevgep50.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 11
  store i8 %conv91.11.9, i8* %scevgep50.11.9, align 1
  %scevgep31.12.9 = getelementptr i8, i8* %b, i64 12
  %1573 = load i8, i8* %scevgep31.12.9, align 1
  %conv44.12.9 = zext i8 %1573 to i32
  %scevgep34.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 12
  %1574 = load i8, i8* %scevgep34.12.9, align 1
  %conv49.12.9 = zext i8 %1574 to i32
  %xor.12.9 = xor i32 %conv44.12.9, %conv49.12.9
  %conv50.12.9 = trunc i32 %xor.12.9 to i8
  %scevgep38.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 12
  store i8 %conv50.12.9, i8* %scevgep38.12.9, align 1
  %1575 = load i8, i8* %arrayidx56.9, align 1
  %conv57.12.9 = zext i8 %1575 to i32
  %xor58.12.9 = xor i32 %conv57.12.9, 1
  %conv59.12.9 = trunc i32 %xor58.12.9 to i8
  %scevgep35.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 12
  %1576 = load i8, i8* %scevgep35.12.9, align 1
  %call64.12.9 = call zeroext i8 @mult(i8 zeroext %conv59.12.9, i8 zeroext %1576)
  %scevgep42.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 12
  store i8 %call64.12.9, i8* %scevgep42.12.9, align 1
  %1577 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 12
  %1578 = load i8, i8* %scevgep39.12.9, align 1
  %call75.12.9 = call zeroext i8 @mult(i8 zeroext %1577, i8 zeroext %1578)
  %scevgep46.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 12
  store i8 %call75.12.9, i8* %scevgep46.12.9, align 1
  %scevgep43.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 12
  %1579 = load i8, i8* %scevgep43.12.9, align 1
  %conv84.12.9 = zext i8 %1579 to i32
  %scevgep47.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 12
  %1580 = load i8, i8* %scevgep47.12.9, align 1
  %conv89.12.9 = zext i8 %1580 to i32
  %xor90.12.9 = xor i32 %conv84.12.9, %conv89.12.9
  %conv91.12.9 = trunc i32 %xor90.12.9 to i8
  %scevgep50.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 12
  store i8 %conv91.12.9, i8* %scevgep50.12.9, align 1
  %scevgep31.13.9 = getelementptr i8, i8* %b, i64 13
  %1581 = load i8, i8* %scevgep31.13.9, align 1
  %conv44.13.9 = zext i8 %1581 to i32
  %scevgep34.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 13
  %1582 = load i8, i8* %scevgep34.13.9, align 1
  %conv49.13.9 = zext i8 %1582 to i32
  %xor.13.9 = xor i32 %conv44.13.9, %conv49.13.9
  %conv50.13.9 = trunc i32 %xor.13.9 to i8
  %scevgep38.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 13
  store i8 %conv50.13.9, i8* %scevgep38.13.9, align 1
  %1583 = load i8, i8* %arrayidx56.9, align 1
  %conv57.13.9 = zext i8 %1583 to i32
  %xor58.13.9 = xor i32 %conv57.13.9, 1
  %conv59.13.9 = trunc i32 %xor58.13.9 to i8
  %scevgep35.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 13
  %1584 = load i8, i8* %scevgep35.13.9, align 1
  %call64.13.9 = call zeroext i8 @mult(i8 zeroext %conv59.13.9, i8 zeroext %1584)
  %scevgep42.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 13
  store i8 %call64.13.9, i8* %scevgep42.13.9, align 1
  %1585 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 13
  %1586 = load i8, i8* %scevgep39.13.9, align 1
  %call75.13.9 = call zeroext i8 @mult(i8 zeroext %1585, i8 zeroext %1586)
  %scevgep46.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 13
  store i8 %call75.13.9, i8* %scevgep46.13.9, align 1
  %scevgep43.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 13
  %1587 = load i8, i8* %scevgep43.13.9, align 1
  %conv84.13.9 = zext i8 %1587 to i32
  %scevgep47.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 13
  %1588 = load i8, i8* %scevgep47.13.9, align 1
  %conv89.13.9 = zext i8 %1588 to i32
  %xor90.13.9 = xor i32 %conv84.13.9, %conv89.13.9
  %conv91.13.9 = trunc i32 %xor90.13.9 to i8
  %scevgep50.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 13
  store i8 %conv91.13.9, i8* %scevgep50.13.9, align 1
  %scevgep31.14.9 = getelementptr i8, i8* %b, i64 14
  %1589 = load i8, i8* %scevgep31.14.9, align 1
  %conv44.14.9 = zext i8 %1589 to i32
  %scevgep34.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 14
  %1590 = load i8, i8* %scevgep34.14.9, align 1
  %conv49.14.9 = zext i8 %1590 to i32
  %xor.14.9 = xor i32 %conv44.14.9, %conv49.14.9
  %conv50.14.9 = trunc i32 %xor.14.9 to i8
  %scevgep38.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 14
  store i8 %conv50.14.9, i8* %scevgep38.14.9, align 1
  %1591 = load i8, i8* %arrayidx56.9, align 1
  %conv57.14.9 = zext i8 %1591 to i32
  %xor58.14.9 = xor i32 %conv57.14.9, 1
  %conv59.14.9 = trunc i32 %xor58.14.9 to i8
  %scevgep35.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 14
  %1592 = load i8, i8* %scevgep35.14.9, align 1
  %call64.14.9 = call zeroext i8 @mult(i8 zeroext %conv59.14.9, i8 zeroext %1592)
  %scevgep42.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 14
  store i8 %call64.14.9, i8* %scevgep42.14.9, align 1
  %1593 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 14
  %1594 = load i8, i8* %scevgep39.14.9, align 1
  %call75.14.9 = call zeroext i8 @mult(i8 zeroext %1593, i8 zeroext %1594)
  %scevgep46.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 14
  store i8 %call75.14.9, i8* %scevgep46.14.9, align 1
  %scevgep43.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 14
  %1595 = load i8, i8* %scevgep43.14.9, align 1
  %conv84.14.9 = zext i8 %1595 to i32
  %scevgep47.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 14
  %1596 = load i8, i8* %scevgep47.14.9, align 1
  %conv89.14.9 = zext i8 %1596 to i32
  %xor90.14.9 = xor i32 %conv84.14.9, %conv89.14.9
  %conv91.14.9 = trunc i32 %xor90.14.9 to i8
  %scevgep50.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 14
  store i8 %conv91.14.9, i8* %scevgep50.14.9, align 1
  %scevgep31.15.9 = getelementptr i8, i8* %b, i64 15
  %1597 = load i8, i8* %scevgep31.15.9, align 1
  %conv44.15.9 = zext i8 %1597 to i32
  %scevgep34.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 15
  %1598 = load i8, i8* %scevgep34.15.9, align 1
  %conv49.15.9 = zext i8 %1598 to i32
  %xor.15.9 = xor i32 %conv44.15.9, %conv49.15.9
  %conv50.15.9 = trunc i32 %xor.15.9 to i8
  %scevgep38.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 15
  store i8 %conv50.15.9, i8* %scevgep38.15.9, align 1
  %1599 = load i8, i8* %arrayidx56.9, align 1
  %conv57.15.9 = zext i8 %1599 to i32
  %xor58.15.9 = xor i32 %conv57.15.9, 1
  %conv59.15.9 = trunc i32 %xor58.15.9 to i8
  %scevgep35.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 0, i64 15
  %1600 = load i8, i8* %scevgep35.15.9, align 1
  %call64.15.9 = call zeroext i8 @mult(i8 zeroext %conv59.15.9, i8 zeroext %1600)
  %scevgep42.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 15
  store i8 %call64.15.9, i8* %scevgep42.15.9, align 1
  %1601 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 0, i64 15
  %1602 = load i8, i8* %scevgep39.15.9, align 1
  %call75.15.9 = call zeroext i8 @mult(i8 zeroext %1601, i8 zeroext %1602)
  %scevgep46.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 15
  store i8 %call75.15.9, i8* %scevgep46.15.9, align 1
  %scevgep43.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 0, i64 15
  %1603 = load i8, i8* %scevgep43.15.9, align 1
  %conv84.15.9 = zext i8 %1603 to i32
  %scevgep47.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 0, i64 15
  %1604 = load i8, i8* %scevgep47.15.9, align 1
  %conv89.15.9 = zext i8 %1604 to i32
  %xor90.15.9 = xor i32 %conv84.15.9, %conv89.15.9
  %conv91.15.9 = trunc i32 %xor90.15.9 to i8
  %scevgep50.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 0, i64 15
  store i8 %conv91.15.9, i8* %scevgep50.15.9, align 1
  %scevgep33.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1480, i64 0, i64 1, i64 0
  %1605 = bitcast i8* %scevgep33.9 to [16 x [16 x i8]]*
  %scevgep37.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1481, i64 0, i64 1, i64 0
  %1606 = bitcast i8* %scevgep37.9 to [16 x [16 x i8]]*
  %scevgep41.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1482, i64 0, i64 1, i64 0
  %1607 = bitcast i8* %scevgep41.9 to [16 x [16 x i8]]*
  %scevgep45.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1483, i64 0, i64 1, i64 0
  %1608 = bitcast i8* %scevgep45.9 to [16 x [16 x i8]]*
  %scevgep49.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1484, i64 0, i64 1, i64 0
  %1609 = bitcast i8* %scevgep49.9 to [16 x [16 x i8]]*
  %arrayidx56.10 = getelementptr inbounds i8, i8* %a, i64 10
  %arrayidx70.10 = getelementptr inbounds i8, i8* %a, i64 10
  %1610 = load i8, i8* %b, align 1
  %conv44.10471 = zext i8 %1610 to i32
  %scevgep34.10472 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 0
  %1611 = load i8, i8* %scevgep34.10472, align 1
  %conv49.10473 = zext i8 %1611 to i32
  %xor.10474 = xor i32 %conv44.10471, %conv49.10473
  %conv50.10475 = trunc i32 %xor.10474 to i8
  %scevgep38.10476 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 0
  store i8 %conv50.10475, i8* %scevgep38.10476, align 1
  %1612 = load i8, i8* %arrayidx56.10, align 1
  %conv57.10477 = zext i8 %1612 to i32
  %xor58.10478 = xor i32 %conv57.10477, 1
  %conv59.10479 = trunc i32 %xor58.10478 to i8
  %scevgep35.10480 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 0
  %1613 = load i8, i8* %scevgep35.10480, align 1
  %call64.10481 = call zeroext i8 @mult(i8 zeroext %conv59.10479, i8 zeroext %1613)
  %scevgep42.10482 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 0
  store i8 %call64.10481, i8* %scevgep42.10482, align 1
  %1614 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.10483 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 0
  %1615 = load i8, i8* %scevgep39.10483, align 1
  %call75.10484 = call zeroext i8 @mult(i8 zeroext %1614, i8 zeroext %1615)
  %scevgep46.10485 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 0
  store i8 %call75.10484, i8* %scevgep46.10485, align 1
  %scevgep43.10486 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 0
  %1616 = load i8, i8* %scevgep43.10486, align 1
  %conv84.10487 = zext i8 %1616 to i32
  %scevgep47.10488 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 0
  %1617 = load i8, i8* %scevgep47.10488, align 1
  %conv89.10489 = zext i8 %1617 to i32
  %xor90.10490 = xor i32 %conv84.10487, %conv89.10489
  %conv91.10491 = trunc i32 %xor90.10490 to i8
  %scevgep50.10492 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 0
  store i8 %conv91.10491, i8* %scevgep50.10492, align 1
  %scevgep31.1.10 = getelementptr i8, i8* %b, i64 1
  %1618 = load i8, i8* %scevgep31.1.10, align 1
  %conv44.1.10 = zext i8 %1618 to i32
  %scevgep34.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 1
  %1619 = load i8, i8* %scevgep34.1.10, align 1
  %conv49.1.10 = zext i8 %1619 to i32
  %xor.1.10 = xor i32 %conv44.1.10, %conv49.1.10
  %conv50.1.10 = trunc i32 %xor.1.10 to i8
  %scevgep38.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 1
  store i8 %conv50.1.10, i8* %scevgep38.1.10, align 1
  %1620 = load i8, i8* %arrayidx56.10, align 1
  %conv57.1.10 = zext i8 %1620 to i32
  %xor58.1.10 = xor i32 %conv57.1.10, 1
  %conv59.1.10 = trunc i32 %xor58.1.10 to i8
  %scevgep35.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 1
  %1621 = load i8, i8* %scevgep35.1.10, align 1
  %call64.1.10 = call zeroext i8 @mult(i8 zeroext %conv59.1.10, i8 zeroext %1621)
  %scevgep42.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 1
  store i8 %call64.1.10, i8* %scevgep42.1.10, align 1
  %1622 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 1
  %1623 = load i8, i8* %scevgep39.1.10, align 1
  %call75.1.10 = call zeroext i8 @mult(i8 zeroext %1622, i8 zeroext %1623)
  %scevgep46.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 1
  store i8 %call75.1.10, i8* %scevgep46.1.10, align 1
  %scevgep43.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 1
  %1624 = load i8, i8* %scevgep43.1.10, align 1
  %conv84.1.10 = zext i8 %1624 to i32
  %scevgep47.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 1
  %1625 = load i8, i8* %scevgep47.1.10, align 1
  %conv89.1.10 = zext i8 %1625 to i32
  %xor90.1.10 = xor i32 %conv84.1.10, %conv89.1.10
  %conv91.1.10 = trunc i32 %xor90.1.10 to i8
  %scevgep50.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 1
  store i8 %conv91.1.10, i8* %scevgep50.1.10, align 1
  %scevgep31.2.10 = getelementptr i8, i8* %b, i64 2
  %1626 = load i8, i8* %scevgep31.2.10, align 1
  %conv44.2.10 = zext i8 %1626 to i32
  %scevgep34.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 2
  %1627 = load i8, i8* %scevgep34.2.10, align 1
  %conv49.2.10 = zext i8 %1627 to i32
  %xor.2.10 = xor i32 %conv44.2.10, %conv49.2.10
  %conv50.2.10 = trunc i32 %xor.2.10 to i8
  %scevgep38.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 2
  store i8 %conv50.2.10, i8* %scevgep38.2.10, align 1
  %1628 = load i8, i8* %arrayidx56.10, align 1
  %conv57.2.10 = zext i8 %1628 to i32
  %xor58.2.10 = xor i32 %conv57.2.10, 1
  %conv59.2.10 = trunc i32 %xor58.2.10 to i8
  %scevgep35.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 2
  %1629 = load i8, i8* %scevgep35.2.10, align 1
  %call64.2.10 = call zeroext i8 @mult(i8 zeroext %conv59.2.10, i8 zeroext %1629)
  %scevgep42.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 2
  store i8 %call64.2.10, i8* %scevgep42.2.10, align 1
  %1630 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 2
  %1631 = load i8, i8* %scevgep39.2.10, align 1
  %call75.2.10 = call zeroext i8 @mult(i8 zeroext %1630, i8 zeroext %1631)
  %scevgep46.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 2
  store i8 %call75.2.10, i8* %scevgep46.2.10, align 1
  %scevgep43.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 2
  %1632 = load i8, i8* %scevgep43.2.10, align 1
  %conv84.2.10 = zext i8 %1632 to i32
  %scevgep47.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 2
  %1633 = load i8, i8* %scevgep47.2.10, align 1
  %conv89.2.10 = zext i8 %1633 to i32
  %xor90.2.10 = xor i32 %conv84.2.10, %conv89.2.10
  %conv91.2.10 = trunc i32 %xor90.2.10 to i8
  %scevgep50.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 2
  store i8 %conv91.2.10, i8* %scevgep50.2.10, align 1
  %scevgep31.3.10 = getelementptr i8, i8* %b, i64 3
  %1634 = load i8, i8* %scevgep31.3.10, align 1
  %conv44.3.10 = zext i8 %1634 to i32
  %scevgep34.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 3
  %1635 = load i8, i8* %scevgep34.3.10, align 1
  %conv49.3.10 = zext i8 %1635 to i32
  %xor.3.10 = xor i32 %conv44.3.10, %conv49.3.10
  %conv50.3.10 = trunc i32 %xor.3.10 to i8
  %scevgep38.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 3
  store i8 %conv50.3.10, i8* %scevgep38.3.10, align 1
  %1636 = load i8, i8* %arrayidx56.10, align 1
  %conv57.3.10 = zext i8 %1636 to i32
  %xor58.3.10 = xor i32 %conv57.3.10, 1
  %conv59.3.10 = trunc i32 %xor58.3.10 to i8
  %scevgep35.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 3
  %1637 = load i8, i8* %scevgep35.3.10, align 1
  %call64.3.10 = call zeroext i8 @mult(i8 zeroext %conv59.3.10, i8 zeroext %1637)
  %scevgep42.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 3
  store i8 %call64.3.10, i8* %scevgep42.3.10, align 1
  %1638 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 3
  %1639 = load i8, i8* %scevgep39.3.10, align 1
  %call75.3.10 = call zeroext i8 @mult(i8 zeroext %1638, i8 zeroext %1639)
  %scevgep46.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 3
  store i8 %call75.3.10, i8* %scevgep46.3.10, align 1
  %scevgep43.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 3
  %1640 = load i8, i8* %scevgep43.3.10, align 1
  %conv84.3.10 = zext i8 %1640 to i32
  %scevgep47.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 3
  %1641 = load i8, i8* %scevgep47.3.10, align 1
  %conv89.3.10 = zext i8 %1641 to i32
  %xor90.3.10 = xor i32 %conv84.3.10, %conv89.3.10
  %conv91.3.10 = trunc i32 %xor90.3.10 to i8
  %scevgep50.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 3
  store i8 %conv91.3.10, i8* %scevgep50.3.10, align 1
  %scevgep31.4.10 = getelementptr i8, i8* %b, i64 4
  %1642 = load i8, i8* %scevgep31.4.10, align 1
  %conv44.4.10 = zext i8 %1642 to i32
  %scevgep34.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 4
  %1643 = load i8, i8* %scevgep34.4.10, align 1
  %conv49.4.10 = zext i8 %1643 to i32
  %xor.4.10 = xor i32 %conv44.4.10, %conv49.4.10
  %conv50.4.10 = trunc i32 %xor.4.10 to i8
  %scevgep38.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 4
  store i8 %conv50.4.10, i8* %scevgep38.4.10, align 1
  %1644 = load i8, i8* %arrayidx56.10, align 1
  %conv57.4.10 = zext i8 %1644 to i32
  %xor58.4.10 = xor i32 %conv57.4.10, 1
  %conv59.4.10 = trunc i32 %xor58.4.10 to i8
  %scevgep35.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 4
  %1645 = load i8, i8* %scevgep35.4.10, align 1
  %call64.4.10 = call zeroext i8 @mult(i8 zeroext %conv59.4.10, i8 zeroext %1645)
  %scevgep42.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 4
  store i8 %call64.4.10, i8* %scevgep42.4.10, align 1
  %1646 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 4
  %1647 = load i8, i8* %scevgep39.4.10, align 1
  %call75.4.10 = call zeroext i8 @mult(i8 zeroext %1646, i8 zeroext %1647)
  %scevgep46.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 4
  store i8 %call75.4.10, i8* %scevgep46.4.10, align 1
  %scevgep43.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 4
  %1648 = load i8, i8* %scevgep43.4.10, align 1
  %conv84.4.10 = zext i8 %1648 to i32
  %scevgep47.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 4
  %1649 = load i8, i8* %scevgep47.4.10, align 1
  %conv89.4.10 = zext i8 %1649 to i32
  %xor90.4.10 = xor i32 %conv84.4.10, %conv89.4.10
  %conv91.4.10 = trunc i32 %xor90.4.10 to i8
  %scevgep50.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 4
  store i8 %conv91.4.10, i8* %scevgep50.4.10, align 1
  %scevgep31.5.10 = getelementptr i8, i8* %b, i64 5
  %1650 = load i8, i8* %scevgep31.5.10, align 1
  %conv44.5.10 = zext i8 %1650 to i32
  %scevgep34.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 5
  %1651 = load i8, i8* %scevgep34.5.10, align 1
  %conv49.5.10 = zext i8 %1651 to i32
  %xor.5.10 = xor i32 %conv44.5.10, %conv49.5.10
  %conv50.5.10 = trunc i32 %xor.5.10 to i8
  %scevgep38.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 5
  store i8 %conv50.5.10, i8* %scevgep38.5.10, align 1
  %1652 = load i8, i8* %arrayidx56.10, align 1
  %conv57.5.10 = zext i8 %1652 to i32
  %xor58.5.10 = xor i32 %conv57.5.10, 1
  %conv59.5.10 = trunc i32 %xor58.5.10 to i8
  %scevgep35.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 5
  %1653 = load i8, i8* %scevgep35.5.10, align 1
  %call64.5.10 = call zeroext i8 @mult(i8 zeroext %conv59.5.10, i8 zeroext %1653)
  %scevgep42.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 5
  store i8 %call64.5.10, i8* %scevgep42.5.10, align 1
  %1654 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 5
  %1655 = load i8, i8* %scevgep39.5.10, align 1
  %call75.5.10 = call zeroext i8 @mult(i8 zeroext %1654, i8 zeroext %1655)
  %scevgep46.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 5
  store i8 %call75.5.10, i8* %scevgep46.5.10, align 1
  %scevgep43.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 5
  %1656 = load i8, i8* %scevgep43.5.10, align 1
  %conv84.5.10 = zext i8 %1656 to i32
  %scevgep47.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 5
  %1657 = load i8, i8* %scevgep47.5.10, align 1
  %conv89.5.10 = zext i8 %1657 to i32
  %xor90.5.10 = xor i32 %conv84.5.10, %conv89.5.10
  %conv91.5.10 = trunc i32 %xor90.5.10 to i8
  %scevgep50.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 5
  store i8 %conv91.5.10, i8* %scevgep50.5.10, align 1
  %scevgep31.6.10 = getelementptr i8, i8* %b, i64 6
  %1658 = load i8, i8* %scevgep31.6.10, align 1
  %conv44.6.10 = zext i8 %1658 to i32
  %scevgep34.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 6
  %1659 = load i8, i8* %scevgep34.6.10, align 1
  %conv49.6.10 = zext i8 %1659 to i32
  %xor.6.10 = xor i32 %conv44.6.10, %conv49.6.10
  %conv50.6.10 = trunc i32 %xor.6.10 to i8
  %scevgep38.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 6
  store i8 %conv50.6.10, i8* %scevgep38.6.10, align 1
  %1660 = load i8, i8* %arrayidx56.10, align 1
  %conv57.6.10 = zext i8 %1660 to i32
  %xor58.6.10 = xor i32 %conv57.6.10, 1
  %conv59.6.10 = trunc i32 %xor58.6.10 to i8
  %scevgep35.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 6
  %1661 = load i8, i8* %scevgep35.6.10, align 1
  %call64.6.10 = call zeroext i8 @mult(i8 zeroext %conv59.6.10, i8 zeroext %1661)
  %scevgep42.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 6
  store i8 %call64.6.10, i8* %scevgep42.6.10, align 1
  %1662 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 6
  %1663 = load i8, i8* %scevgep39.6.10, align 1
  %call75.6.10 = call zeroext i8 @mult(i8 zeroext %1662, i8 zeroext %1663)
  %scevgep46.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 6
  store i8 %call75.6.10, i8* %scevgep46.6.10, align 1
  %scevgep43.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 6
  %1664 = load i8, i8* %scevgep43.6.10, align 1
  %conv84.6.10 = zext i8 %1664 to i32
  %scevgep47.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 6
  %1665 = load i8, i8* %scevgep47.6.10, align 1
  %conv89.6.10 = zext i8 %1665 to i32
  %xor90.6.10 = xor i32 %conv84.6.10, %conv89.6.10
  %conv91.6.10 = trunc i32 %xor90.6.10 to i8
  %scevgep50.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 6
  store i8 %conv91.6.10, i8* %scevgep50.6.10, align 1
  %scevgep31.7.10 = getelementptr i8, i8* %b, i64 7
  %1666 = load i8, i8* %scevgep31.7.10, align 1
  %conv44.7.10 = zext i8 %1666 to i32
  %scevgep34.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 7
  %1667 = load i8, i8* %scevgep34.7.10, align 1
  %conv49.7.10 = zext i8 %1667 to i32
  %xor.7.10 = xor i32 %conv44.7.10, %conv49.7.10
  %conv50.7.10 = trunc i32 %xor.7.10 to i8
  %scevgep38.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 7
  store i8 %conv50.7.10, i8* %scevgep38.7.10, align 1
  %1668 = load i8, i8* %arrayidx56.10, align 1
  %conv57.7.10 = zext i8 %1668 to i32
  %xor58.7.10 = xor i32 %conv57.7.10, 1
  %conv59.7.10 = trunc i32 %xor58.7.10 to i8
  %scevgep35.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 7
  %1669 = load i8, i8* %scevgep35.7.10, align 1
  %call64.7.10 = call zeroext i8 @mult(i8 zeroext %conv59.7.10, i8 zeroext %1669)
  %scevgep42.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 7
  store i8 %call64.7.10, i8* %scevgep42.7.10, align 1
  %1670 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 7
  %1671 = load i8, i8* %scevgep39.7.10, align 1
  %call75.7.10 = call zeroext i8 @mult(i8 zeroext %1670, i8 zeroext %1671)
  %scevgep46.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 7
  store i8 %call75.7.10, i8* %scevgep46.7.10, align 1
  %scevgep43.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 7
  %1672 = load i8, i8* %scevgep43.7.10, align 1
  %conv84.7.10 = zext i8 %1672 to i32
  %scevgep47.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 7
  %1673 = load i8, i8* %scevgep47.7.10, align 1
  %conv89.7.10 = zext i8 %1673 to i32
  %xor90.7.10 = xor i32 %conv84.7.10, %conv89.7.10
  %conv91.7.10 = trunc i32 %xor90.7.10 to i8
  %scevgep50.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 7
  store i8 %conv91.7.10, i8* %scevgep50.7.10, align 1
  %scevgep31.8.10 = getelementptr i8, i8* %b, i64 8
  %1674 = load i8, i8* %scevgep31.8.10, align 1
  %conv44.8.10 = zext i8 %1674 to i32
  %scevgep34.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 8
  %1675 = load i8, i8* %scevgep34.8.10, align 1
  %conv49.8.10 = zext i8 %1675 to i32
  %xor.8.10 = xor i32 %conv44.8.10, %conv49.8.10
  %conv50.8.10 = trunc i32 %xor.8.10 to i8
  %scevgep38.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 8
  store i8 %conv50.8.10, i8* %scevgep38.8.10, align 1
  %1676 = load i8, i8* %arrayidx56.10, align 1
  %conv57.8.10 = zext i8 %1676 to i32
  %xor58.8.10 = xor i32 %conv57.8.10, 1
  %conv59.8.10 = trunc i32 %xor58.8.10 to i8
  %scevgep35.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 8
  %1677 = load i8, i8* %scevgep35.8.10, align 1
  %call64.8.10 = call zeroext i8 @mult(i8 zeroext %conv59.8.10, i8 zeroext %1677)
  %scevgep42.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 8
  store i8 %call64.8.10, i8* %scevgep42.8.10, align 1
  %1678 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 8
  %1679 = load i8, i8* %scevgep39.8.10, align 1
  %call75.8.10 = call zeroext i8 @mult(i8 zeroext %1678, i8 zeroext %1679)
  %scevgep46.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 8
  store i8 %call75.8.10, i8* %scevgep46.8.10, align 1
  %scevgep43.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 8
  %1680 = load i8, i8* %scevgep43.8.10, align 1
  %conv84.8.10 = zext i8 %1680 to i32
  %scevgep47.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 8
  %1681 = load i8, i8* %scevgep47.8.10, align 1
  %conv89.8.10 = zext i8 %1681 to i32
  %xor90.8.10 = xor i32 %conv84.8.10, %conv89.8.10
  %conv91.8.10 = trunc i32 %xor90.8.10 to i8
  %scevgep50.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 8
  store i8 %conv91.8.10, i8* %scevgep50.8.10, align 1
  %scevgep31.9.10 = getelementptr i8, i8* %b, i64 9
  %1682 = load i8, i8* %scevgep31.9.10, align 1
  %conv44.9.10 = zext i8 %1682 to i32
  %scevgep34.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 9
  %1683 = load i8, i8* %scevgep34.9.10, align 1
  %conv49.9.10 = zext i8 %1683 to i32
  %xor.9.10 = xor i32 %conv44.9.10, %conv49.9.10
  %conv50.9.10 = trunc i32 %xor.9.10 to i8
  %scevgep38.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 9
  store i8 %conv50.9.10, i8* %scevgep38.9.10, align 1
  %1684 = load i8, i8* %arrayidx56.10, align 1
  %conv57.9.10 = zext i8 %1684 to i32
  %xor58.9.10 = xor i32 %conv57.9.10, 1
  %conv59.9.10 = trunc i32 %xor58.9.10 to i8
  %scevgep35.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 9
  %1685 = load i8, i8* %scevgep35.9.10, align 1
  %call64.9.10 = call zeroext i8 @mult(i8 zeroext %conv59.9.10, i8 zeroext %1685)
  %scevgep42.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 9
  store i8 %call64.9.10, i8* %scevgep42.9.10, align 1
  %1686 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 9
  %1687 = load i8, i8* %scevgep39.9.10, align 1
  %call75.9.10 = call zeroext i8 @mult(i8 zeroext %1686, i8 zeroext %1687)
  %scevgep46.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 9
  store i8 %call75.9.10, i8* %scevgep46.9.10, align 1
  %scevgep43.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 9
  %1688 = load i8, i8* %scevgep43.9.10, align 1
  %conv84.9.10 = zext i8 %1688 to i32
  %scevgep47.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 9
  %1689 = load i8, i8* %scevgep47.9.10, align 1
  %conv89.9.10 = zext i8 %1689 to i32
  %xor90.9.10 = xor i32 %conv84.9.10, %conv89.9.10
  %conv91.9.10 = trunc i32 %xor90.9.10 to i8
  %scevgep50.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 9
  store i8 %conv91.9.10, i8* %scevgep50.9.10, align 1
  %scevgep31.11.10 = getelementptr i8, i8* %b, i64 11
  %1690 = load i8, i8* %scevgep31.11.10, align 1
  %conv44.11.10 = zext i8 %1690 to i32
  %scevgep34.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 11
  %1691 = load i8, i8* %scevgep34.11.10, align 1
  %conv49.11.10 = zext i8 %1691 to i32
  %xor.11.10 = xor i32 %conv44.11.10, %conv49.11.10
  %conv50.11.10 = trunc i32 %xor.11.10 to i8
  %scevgep38.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 11
  store i8 %conv50.11.10, i8* %scevgep38.11.10, align 1
  %1692 = load i8, i8* %arrayidx56.10, align 1
  %conv57.11.10 = zext i8 %1692 to i32
  %xor58.11.10 = xor i32 %conv57.11.10, 1
  %conv59.11.10 = trunc i32 %xor58.11.10 to i8
  %scevgep35.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 11
  %1693 = load i8, i8* %scevgep35.11.10, align 1
  %call64.11.10 = call zeroext i8 @mult(i8 zeroext %conv59.11.10, i8 zeroext %1693)
  %scevgep42.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 11
  store i8 %call64.11.10, i8* %scevgep42.11.10, align 1
  %1694 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 11
  %1695 = load i8, i8* %scevgep39.11.10, align 1
  %call75.11.10 = call zeroext i8 @mult(i8 zeroext %1694, i8 zeroext %1695)
  %scevgep46.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 11
  store i8 %call75.11.10, i8* %scevgep46.11.10, align 1
  %scevgep43.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 11
  %1696 = load i8, i8* %scevgep43.11.10, align 1
  %conv84.11.10 = zext i8 %1696 to i32
  %scevgep47.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 11
  %1697 = load i8, i8* %scevgep47.11.10, align 1
  %conv89.11.10 = zext i8 %1697 to i32
  %xor90.11.10 = xor i32 %conv84.11.10, %conv89.11.10
  %conv91.11.10 = trunc i32 %xor90.11.10 to i8
  %scevgep50.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 11
  store i8 %conv91.11.10, i8* %scevgep50.11.10, align 1
  %scevgep31.12.10 = getelementptr i8, i8* %b, i64 12
  %1698 = load i8, i8* %scevgep31.12.10, align 1
  %conv44.12.10 = zext i8 %1698 to i32
  %scevgep34.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 12
  %1699 = load i8, i8* %scevgep34.12.10, align 1
  %conv49.12.10 = zext i8 %1699 to i32
  %xor.12.10 = xor i32 %conv44.12.10, %conv49.12.10
  %conv50.12.10 = trunc i32 %xor.12.10 to i8
  %scevgep38.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 12
  store i8 %conv50.12.10, i8* %scevgep38.12.10, align 1
  %1700 = load i8, i8* %arrayidx56.10, align 1
  %conv57.12.10 = zext i8 %1700 to i32
  %xor58.12.10 = xor i32 %conv57.12.10, 1
  %conv59.12.10 = trunc i32 %xor58.12.10 to i8
  %scevgep35.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 12
  %1701 = load i8, i8* %scevgep35.12.10, align 1
  %call64.12.10 = call zeroext i8 @mult(i8 zeroext %conv59.12.10, i8 zeroext %1701)
  %scevgep42.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 12
  store i8 %call64.12.10, i8* %scevgep42.12.10, align 1
  %1702 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 12
  %1703 = load i8, i8* %scevgep39.12.10, align 1
  %call75.12.10 = call zeroext i8 @mult(i8 zeroext %1702, i8 zeroext %1703)
  %scevgep46.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 12
  store i8 %call75.12.10, i8* %scevgep46.12.10, align 1
  %scevgep43.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 12
  %1704 = load i8, i8* %scevgep43.12.10, align 1
  %conv84.12.10 = zext i8 %1704 to i32
  %scevgep47.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 12
  %1705 = load i8, i8* %scevgep47.12.10, align 1
  %conv89.12.10 = zext i8 %1705 to i32
  %xor90.12.10 = xor i32 %conv84.12.10, %conv89.12.10
  %conv91.12.10 = trunc i32 %xor90.12.10 to i8
  %scevgep50.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 12
  store i8 %conv91.12.10, i8* %scevgep50.12.10, align 1
  %scevgep31.13.10 = getelementptr i8, i8* %b, i64 13
  %1706 = load i8, i8* %scevgep31.13.10, align 1
  %conv44.13.10 = zext i8 %1706 to i32
  %scevgep34.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 13
  %1707 = load i8, i8* %scevgep34.13.10, align 1
  %conv49.13.10 = zext i8 %1707 to i32
  %xor.13.10 = xor i32 %conv44.13.10, %conv49.13.10
  %conv50.13.10 = trunc i32 %xor.13.10 to i8
  %scevgep38.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 13
  store i8 %conv50.13.10, i8* %scevgep38.13.10, align 1
  %1708 = load i8, i8* %arrayidx56.10, align 1
  %conv57.13.10 = zext i8 %1708 to i32
  %xor58.13.10 = xor i32 %conv57.13.10, 1
  %conv59.13.10 = trunc i32 %xor58.13.10 to i8
  %scevgep35.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 13
  %1709 = load i8, i8* %scevgep35.13.10, align 1
  %call64.13.10 = call zeroext i8 @mult(i8 zeroext %conv59.13.10, i8 zeroext %1709)
  %scevgep42.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 13
  store i8 %call64.13.10, i8* %scevgep42.13.10, align 1
  %1710 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 13
  %1711 = load i8, i8* %scevgep39.13.10, align 1
  %call75.13.10 = call zeroext i8 @mult(i8 zeroext %1710, i8 zeroext %1711)
  %scevgep46.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 13
  store i8 %call75.13.10, i8* %scevgep46.13.10, align 1
  %scevgep43.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 13
  %1712 = load i8, i8* %scevgep43.13.10, align 1
  %conv84.13.10 = zext i8 %1712 to i32
  %scevgep47.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 13
  %1713 = load i8, i8* %scevgep47.13.10, align 1
  %conv89.13.10 = zext i8 %1713 to i32
  %xor90.13.10 = xor i32 %conv84.13.10, %conv89.13.10
  %conv91.13.10 = trunc i32 %xor90.13.10 to i8
  %scevgep50.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 13
  store i8 %conv91.13.10, i8* %scevgep50.13.10, align 1
  %scevgep31.14.10 = getelementptr i8, i8* %b, i64 14
  %1714 = load i8, i8* %scevgep31.14.10, align 1
  %conv44.14.10 = zext i8 %1714 to i32
  %scevgep34.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 14
  %1715 = load i8, i8* %scevgep34.14.10, align 1
  %conv49.14.10 = zext i8 %1715 to i32
  %xor.14.10 = xor i32 %conv44.14.10, %conv49.14.10
  %conv50.14.10 = trunc i32 %xor.14.10 to i8
  %scevgep38.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 14
  store i8 %conv50.14.10, i8* %scevgep38.14.10, align 1
  %1716 = load i8, i8* %arrayidx56.10, align 1
  %conv57.14.10 = zext i8 %1716 to i32
  %xor58.14.10 = xor i32 %conv57.14.10, 1
  %conv59.14.10 = trunc i32 %xor58.14.10 to i8
  %scevgep35.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 14
  %1717 = load i8, i8* %scevgep35.14.10, align 1
  %call64.14.10 = call zeroext i8 @mult(i8 zeroext %conv59.14.10, i8 zeroext %1717)
  %scevgep42.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 14
  store i8 %call64.14.10, i8* %scevgep42.14.10, align 1
  %1718 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 14
  %1719 = load i8, i8* %scevgep39.14.10, align 1
  %call75.14.10 = call zeroext i8 @mult(i8 zeroext %1718, i8 zeroext %1719)
  %scevgep46.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 14
  store i8 %call75.14.10, i8* %scevgep46.14.10, align 1
  %scevgep43.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 14
  %1720 = load i8, i8* %scevgep43.14.10, align 1
  %conv84.14.10 = zext i8 %1720 to i32
  %scevgep47.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 14
  %1721 = load i8, i8* %scevgep47.14.10, align 1
  %conv89.14.10 = zext i8 %1721 to i32
  %xor90.14.10 = xor i32 %conv84.14.10, %conv89.14.10
  %conv91.14.10 = trunc i32 %xor90.14.10 to i8
  %scevgep50.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 14
  store i8 %conv91.14.10, i8* %scevgep50.14.10, align 1
  %scevgep31.15.10 = getelementptr i8, i8* %b, i64 15
  %1722 = load i8, i8* %scevgep31.15.10, align 1
  %conv44.15.10 = zext i8 %1722 to i32
  %scevgep34.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 15
  %1723 = load i8, i8* %scevgep34.15.10, align 1
  %conv49.15.10 = zext i8 %1723 to i32
  %xor.15.10 = xor i32 %conv44.15.10, %conv49.15.10
  %conv50.15.10 = trunc i32 %xor.15.10 to i8
  %scevgep38.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 15
  store i8 %conv50.15.10, i8* %scevgep38.15.10, align 1
  %1724 = load i8, i8* %arrayidx56.10, align 1
  %conv57.15.10 = zext i8 %1724 to i32
  %xor58.15.10 = xor i32 %conv57.15.10, 1
  %conv59.15.10 = trunc i32 %xor58.15.10 to i8
  %scevgep35.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 0, i64 15
  %1725 = load i8, i8* %scevgep35.15.10, align 1
  %call64.15.10 = call zeroext i8 @mult(i8 zeroext %conv59.15.10, i8 zeroext %1725)
  %scevgep42.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 15
  store i8 %call64.15.10, i8* %scevgep42.15.10, align 1
  %1726 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 0, i64 15
  %1727 = load i8, i8* %scevgep39.15.10, align 1
  %call75.15.10 = call zeroext i8 @mult(i8 zeroext %1726, i8 zeroext %1727)
  %scevgep46.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 15
  store i8 %call75.15.10, i8* %scevgep46.15.10, align 1
  %scevgep43.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 0, i64 15
  %1728 = load i8, i8* %scevgep43.15.10, align 1
  %conv84.15.10 = zext i8 %1728 to i32
  %scevgep47.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 0, i64 15
  %1729 = load i8, i8* %scevgep47.15.10, align 1
  %conv89.15.10 = zext i8 %1729 to i32
  %xor90.15.10 = xor i32 %conv84.15.10, %conv89.15.10
  %conv91.15.10 = trunc i32 %xor90.15.10 to i8
  %scevgep50.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 0, i64 15
  store i8 %conv91.15.10, i8* %scevgep50.15.10, align 1
  %scevgep33.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1605, i64 0, i64 1, i64 0
  %1730 = bitcast i8* %scevgep33.10 to [16 x [16 x i8]]*
  %scevgep37.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1606, i64 0, i64 1, i64 0
  %1731 = bitcast i8* %scevgep37.10 to [16 x [16 x i8]]*
  %scevgep41.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1607, i64 0, i64 1, i64 0
  %1732 = bitcast i8* %scevgep41.10 to [16 x [16 x i8]]*
  %scevgep45.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1608, i64 0, i64 1, i64 0
  %1733 = bitcast i8* %scevgep45.10 to [16 x [16 x i8]]*
  %scevgep49.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1609, i64 0, i64 1, i64 0
  %1734 = bitcast i8* %scevgep49.10 to [16 x [16 x i8]]*
  %arrayidx56.11 = getelementptr inbounds i8, i8* %a, i64 11
  %arrayidx70.11 = getelementptr inbounds i8, i8* %a, i64 11
  %1735 = load i8, i8* %b, align 1
  %conv44.11498 = zext i8 %1735 to i32
  %scevgep34.11499 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 0
  %1736 = load i8, i8* %scevgep34.11499, align 1
  %conv49.11500 = zext i8 %1736 to i32
  %xor.11501 = xor i32 %conv44.11498, %conv49.11500
  %conv50.11502 = trunc i32 %xor.11501 to i8
  %scevgep38.11503 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 0
  store i8 %conv50.11502, i8* %scevgep38.11503, align 1
  %1737 = load i8, i8* %arrayidx56.11, align 1
  %conv57.11504 = zext i8 %1737 to i32
  %xor58.11505 = xor i32 %conv57.11504, 1
  %conv59.11506 = trunc i32 %xor58.11505 to i8
  %scevgep35.11507 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 0
  %1738 = load i8, i8* %scevgep35.11507, align 1
  %call64.11508 = call zeroext i8 @mult(i8 zeroext %conv59.11506, i8 zeroext %1738)
  %scevgep42.11509 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 0
  store i8 %call64.11508, i8* %scevgep42.11509, align 1
  %1739 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.11510 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 0
  %1740 = load i8, i8* %scevgep39.11510, align 1
  %call75.11511 = call zeroext i8 @mult(i8 zeroext %1739, i8 zeroext %1740)
  %scevgep46.11512 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 0
  store i8 %call75.11511, i8* %scevgep46.11512, align 1
  %scevgep43.11513 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 0
  %1741 = load i8, i8* %scevgep43.11513, align 1
  %conv84.11514 = zext i8 %1741 to i32
  %scevgep47.11515 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 0
  %1742 = load i8, i8* %scevgep47.11515, align 1
  %conv89.11516 = zext i8 %1742 to i32
  %xor90.11517 = xor i32 %conv84.11514, %conv89.11516
  %conv91.11518 = trunc i32 %xor90.11517 to i8
  %scevgep50.11519 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 0
  store i8 %conv91.11518, i8* %scevgep50.11519, align 1
  %scevgep31.1.11 = getelementptr i8, i8* %b, i64 1
  %1743 = load i8, i8* %scevgep31.1.11, align 1
  %conv44.1.11 = zext i8 %1743 to i32
  %scevgep34.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 1
  %1744 = load i8, i8* %scevgep34.1.11, align 1
  %conv49.1.11 = zext i8 %1744 to i32
  %xor.1.11 = xor i32 %conv44.1.11, %conv49.1.11
  %conv50.1.11 = trunc i32 %xor.1.11 to i8
  %scevgep38.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 1
  store i8 %conv50.1.11, i8* %scevgep38.1.11, align 1
  %1745 = load i8, i8* %arrayidx56.11, align 1
  %conv57.1.11 = zext i8 %1745 to i32
  %xor58.1.11 = xor i32 %conv57.1.11, 1
  %conv59.1.11 = trunc i32 %xor58.1.11 to i8
  %scevgep35.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 1
  %1746 = load i8, i8* %scevgep35.1.11, align 1
  %call64.1.11 = call zeroext i8 @mult(i8 zeroext %conv59.1.11, i8 zeroext %1746)
  %scevgep42.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 1
  store i8 %call64.1.11, i8* %scevgep42.1.11, align 1
  %1747 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 1
  %1748 = load i8, i8* %scevgep39.1.11, align 1
  %call75.1.11 = call zeroext i8 @mult(i8 zeroext %1747, i8 zeroext %1748)
  %scevgep46.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 1
  store i8 %call75.1.11, i8* %scevgep46.1.11, align 1
  %scevgep43.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 1
  %1749 = load i8, i8* %scevgep43.1.11, align 1
  %conv84.1.11 = zext i8 %1749 to i32
  %scevgep47.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 1
  %1750 = load i8, i8* %scevgep47.1.11, align 1
  %conv89.1.11 = zext i8 %1750 to i32
  %xor90.1.11 = xor i32 %conv84.1.11, %conv89.1.11
  %conv91.1.11 = trunc i32 %xor90.1.11 to i8
  %scevgep50.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 1
  store i8 %conv91.1.11, i8* %scevgep50.1.11, align 1
  %scevgep31.2.11 = getelementptr i8, i8* %b, i64 2
  %1751 = load i8, i8* %scevgep31.2.11, align 1
  %conv44.2.11 = zext i8 %1751 to i32
  %scevgep34.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 2
  %1752 = load i8, i8* %scevgep34.2.11, align 1
  %conv49.2.11 = zext i8 %1752 to i32
  %xor.2.11 = xor i32 %conv44.2.11, %conv49.2.11
  %conv50.2.11 = trunc i32 %xor.2.11 to i8
  %scevgep38.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 2
  store i8 %conv50.2.11, i8* %scevgep38.2.11, align 1
  %1753 = load i8, i8* %arrayidx56.11, align 1
  %conv57.2.11 = zext i8 %1753 to i32
  %xor58.2.11 = xor i32 %conv57.2.11, 1
  %conv59.2.11 = trunc i32 %xor58.2.11 to i8
  %scevgep35.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 2
  %1754 = load i8, i8* %scevgep35.2.11, align 1
  %call64.2.11 = call zeroext i8 @mult(i8 zeroext %conv59.2.11, i8 zeroext %1754)
  %scevgep42.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 2
  store i8 %call64.2.11, i8* %scevgep42.2.11, align 1
  %1755 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 2
  %1756 = load i8, i8* %scevgep39.2.11, align 1
  %call75.2.11 = call zeroext i8 @mult(i8 zeroext %1755, i8 zeroext %1756)
  %scevgep46.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 2
  store i8 %call75.2.11, i8* %scevgep46.2.11, align 1
  %scevgep43.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 2
  %1757 = load i8, i8* %scevgep43.2.11, align 1
  %conv84.2.11 = zext i8 %1757 to i32
  %scevgep47.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 2
  %1758 = load i8, i8* %scevgep47.2.11, align 1
  %conv89.2.11 = zext i8 %1758 to i32
  %xor90.2.11 = xor i32 %conv84.2.11, %conv89.2.11
  %conv91.2.11 = trunc i32 %xor90.2.11 to i8
  %scevgep50.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 2
  store i8 %conv91.2.11, i8* %scevgep50.2.11, align 1
  %scevgep31.3.11 = getelementptr i8, i8* %b, i64 3
  %1759 = load i8, i8* %scevgep31.3.11, align 1
  %conv44.3.11 = zext i8 %1759 to i32
  %scevgep34.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 3
  %1760 = load i8, i8* %scevgep34.3.11, align 1
  %conv49.3.11 = zext i8 %1760 to i32
  %xor.3.11 = xor i32 %conv44.3.11, %conv49.3.11
  %conv50.3.11 = trunc i32 %xor.3.11 to i8
  %scevgep38.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 3
  store i8 %conv50.3.11, i8* %scevgep38.3.11, align 1
  %1761 = load i8, i8* %arrayidx56.11, align 1
  %conv57.3.11 = zext i8 %1761 to i32
  %xor58.3.11 = xor i32 %conv57.3.11, 1
  %conv59.3.11 = trunc i32 %xor58.3.11 to i8
  %scevgep35.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 3
  %1762 = load i8, i8* %scevgep35.3.11, align 1
  %call64.3.11 = call zeroext i8 @mult(i8 zeroext %conv59.3.11, i8 zeroext %1762)
  %scevgep42.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 3
  store i8 %call64.3.11, i8* %scevgep42.3.11, align 1
  %1763 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 3
  %1764 = load i8, i8* %scevgep39.3.11, align 1
  %call75.3.11 = call zeroext i8 @mult(i8 zeroext %1763, i8 zeroext %1764)
  %scevgep46.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 3
  store i8 %call75.3.11, i8* %scevgep46.3.11, align 1
  %scevgep43.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 3
  %1765 = load i8, i8* %scevgep43.3.11, align 1
  %conv84.3.11 = zext i8 %1765 to i32
  %scevgep47.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 3
  %1766 = load i8, i8* %scevgep47.3.11, align 1
  %conv89.3.11 = zext i8 %1766 to i32
  %xor90.3.11 = xor i32 %conv84.3.11, %conv89.3.11
  %conv91.3.11 = trunc i32 %xor90.3.11 to i8
  %scevgep50.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 3
  store i8 %conv91.3.11, i8* %scevgep50.3.11, align 1
  %scevgep31.4.11 = getelementptr i8, i8* %b, i64 4
  %1767 = load i8, i8* %scevgep31.4.11, align 1
  %conv44.4.11 = zext i8 %1767 to i32
  %scevgep34.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 4
  %1768 = load i8, i8* %scevgep34.4.11, align 1
  %conv49.4.11 = zext i8 %1768 to i32
  %xor.4.11 = xor i32 %conv44.4.11, %conv49.4.11
  %conv50.4.11 = trunc i32 %xor.4.11 to i8
  %scevgep38.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 4
  store i8 %conv50.4.11, i8* %scevgep38.4.11, align 1
  %1769 = load i8, i8* %arrayidx56.11, align 1
  %conv57.4.11 = zext i8 %1769 to i32
  %xor58.4.11 = xor i32 %conv57.4.11, 1
  %conv59.4.11 = trunc i32 %xor58.4.11 to i8
  %scevgep35.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 4
  %1770 = load i8, i8* %scevgep35.4.11, align 1
  %call64.4.11 = call zeroext i8 @mult(i8 zeroext %conv59.4.11, i8 zeroext %1770)
  %scevgep42.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 4
  store i8 %call64.4.11, i8* %scevgep42.4.11, align 1
  %1771 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 4
  %1772 = load i8, i8* %scevgep39.4.11, align 1
  %call75.4.11 = call zeroext i8 @mult(i8 zeroext %1771, i8 zeroext %1772)
  %scevgep46.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 4
  store i8 %call75.4.11, i8* %scevgep46.4.11, align 1
  %scevgep43.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 4
  %1773 = load i8, i8* %scevgep43.4.11, align 1
  %conv84.4.11 = zext i8 %1773 to i32
  %scevgep47.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 4
  %1774 = load i8, i8* %scevgep47.4.11, align 1
  %conv89.4.11 = zext i8 %1774 to i32
  %xor90.4.11 = xor i32 %conv84.4.11, %conv89.4.11
  %conv91.4.11 = trunc i32 %xor90.4.11 to i8
  %scevgep50.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 4
  store i8 %conv91.4.11, i8* %scevgep50.4.11, align 1
  %scevgep31.5.11 = getelementptr i8, i8* %b, i64 5
  %1775 = load i8, i8* %scevgep31.5.11, align 1
  %conv44.5.11 = zext i8 %1775 to i32
  %scevgep34.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 5
  %1776 = load i8, i8* %scevgep34.5.11, align 1
  %conv49.5.11 = zext i8 %1776 to i32
  %xor.5.11 = xor i32 %conv44.5.11, %conv49.5.11
  %conv50.5.11 = trunc i32 %xor.5.11 to i8
  %scevgep38.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 5
  store i8 %conv50.5.11, i8* %scevgep38.5.11, align 1
  %1777 = load i8, i8* %arrayidx56.11, align 1
  %conv57.5.11 = zext i8 %1777 to i32
  %xor58.5.11 = xor i32 %conv57.5.11, 1
  %conv59.5.11 = trunc i32 %xor58.5.11 to i8
  %scevgep35.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 5
  %1778 = load i8, i8* %scevgep35.5.11, align 1
  %call64.5.11 = call zeroext i8 @mult(i8 zeroext %conv59.5.11, i8 zeroext %1778)
  %scevgep42.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 5
  store i8 %call64.5.11, i8* %scevgep42.5.11, align 1
  %1779 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 5
  %1780 = load i8, i8* %scevgep39.5.11, align 1
  %call75.5.11 = call zeroext i8 @mult(i8 zeroext %1779, i8 zeroext %1780)
  %scevgep46.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 5
  store i8 %call75.5.11, i8* %scevgep46.5.11, align 1
  %scevgep43.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 5
  %1781 = load i8, i8* %scevgep43.5.11, align 1
  %conv84.5.11 = zext i8 %1781 to i32
  %scevgep47.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 5
  %1782 = load i8, i8* %scevgep47.5.11, align 1
  %conv89.5.11 = zext i8 %1782 to i32
  %xor90.5.11 = xor i32 %conv84.5.11, %conv89.5.11
  %conv91.5.11 = trunc i32 %xor90.5.11 to i8
  %scevgep50.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 5
  store i8 %conv91.5.11, i8* %scevgep50.5.11, align 1
  %scevgep31.6.11 = getelementptr i8, i8* %b, i64 6
  %1783 = load i8, i8* %scevgep31.6.11, align 1
  %conv44.6.11 = zext i8 %1783 to i32
  %scevgep34.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 6
  %1784 = load i8, i8* %scevgep34.6.11, align 1
  %conv49.6.11 = zext i8 %1784 to i32
  %xor.6.11 = xor i32 %conv44.6.11, %conv49.6.11
  %conv50.6.11 = trunc i32 %xor.6.11 to i8
  %scevgep38.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 6
  store i8 %conv50.6.11, i8* %scevgep38.6.11, align 1
  %1785 = load i8, i8* %arrayidx56.11, align 1
  %conv57.6.11 = zext i8 %1785 to i32
  %xor58.6.11 = xor i32 %conv57.6.11, 1
  %conv59.6.11 = trunc i32 %xor58.6.11 to i8
  %scevgep35.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 6
  %1786 = load i8, i8* %scevgep35.6.11, align 1
  %call64.6.11 = call zeroext i8 @mult(i8 zeroext %conv59.6.11, i8 zeroext %1786)
  %scevgep42.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 6
  store i8 %call64.6.11, i8* %scevgep42.6.11, align 1
  %1787 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 6
  %1788 = load i8, i8* %scevgep39.6.11, align 1
  %call75.6.11 = call zeroext i8 @mult(i8 zeroext %1787, i8 zeroext %1788)
  %scevgep46.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 6
  store i8 %call75.6.11, i8* %scevgep46.6.11, align 1
  %scevgep43.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 6
  %1789 = load i8, i8* %scevgep43.6.11, align 1
  %conv84.6.11 = zext i8 %1789 to i32
  %scevgep47.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 6
  %1790 = load i8, i8* %scevgep47.6.11, align 1
  %conv89.6.11 = zext i8 %1790 to i32
  %xor90.6.11 = xor i32 %conv84.6.11, %conv89.6.11
  %conv91.6.11 = trunc i32 %xor90.6.11 to i8
  %scevgep50.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 6
  store i8 %conv91.6.11, i8* %scevgep50.6.11, align 1
  %scevgep31.7.11 = getelementptr i8, i8* %b, i64 7
  %1791 = load i8, i8* %scevgep31.7.11, align 1
  %conv44.7.11 = zext i8 %1791 to i32
  %scevgep34.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 7
  %1792 = load i8, i8* %scevgep34.7.11, align 1
  %conv49.7.11 = zext i8 %1792 to i32
  %xor.7.11 = xor i32 %conv44.7.11, %conv49.7.11
  %conv50.7.11 = trunc i32 %xor.7.11 to i8
  %scevgep38.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 7
  store i8 %conv50.7.11, i8* %scevgep38.7.11, align 1
  %1793 = load i8, i8* %arrayidx56.11, align 1
  %conv57.7.11 = zext i8 %1793 to i32
  %xor58.7.11 = xor i32 %conv57.7.11, 1
  %conv59.7.11 = trunc i32 %xor58.7.11 to i8
  %scevgep35.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 7
  %1794 = load i8, i8* %scevgep35.7.11, align 1
  %call64.7.11 = call zeroext i8 @mult(i8 zeroext %conv59.7.11, i8 zeroext %1794)
  %scevgep42.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 7
  store i8 %call64.7.11, i8* %scevgep42.7.11, align 1
  %1795 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 7
  %1796 = load i8, i8* %scevgep39.7.11, align 1
  %call75.7.11 = call zeroext i8 @mult(i8 zeroext %1795, i8 zeroext %1796)
  %scevgep46.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 7
  store i8 %call75.7.11, i8* %scevgep46.7.11, align 1
  %scevgep43.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 7
  %1797 = load i8, i8* %scevgep43.7.11, align 1
  %conv84.7.11 = zext i8 %1797 to i32
  %scevgep47.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 7
  %1798 = load i8, i8* %scevgep47.7.11, align 1
  %conv89.7.11 = zext i8 %1798 to i32
  %xor90.7.11 = xor i32 %conv84.7.11, %conv89.7.11
  %conv91.7.11 = trunc i32 %xor90.7.11 to i8
  %scevgep50.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 7
  store i8 %conv91.7.11, i8* %scevgep50.7.11, align 1
  %scevgep31.8.11 = getelementptr i8, i8* %b, i64 8
  %1799 = load i8, i8* %scevgep31.8.11, align 1
  %conv44.8.11 = zext i8 %1799 to i32
  %scevgep34.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 8
  %1800 = load i8, i8* %scevgep34.8.11, align 1
  %conv49.8.11 = zext i8 %1800 to i32
  %xor.8.11 = xor i32 %conv44.8.11, %conv49.8.11
  %conv50.8.11 = trunc i32 %xor.8.11 to i8
  %scevgep38.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 8
  store i8 %conv50.8.11, i8* %scevgep38.8.11, align 1
  %1801 = load i8, i8* %arrayidx56.11, align 1
  %conv57.8.11 = zext i8 %1801 to i32
  %xor58.8.11 = xor i32 %conv57.8.11, 1
  %conv59.8.11 = trunc i32 %xor58.8.11 to i8
  %scevgep35.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 8
  %1802 = load i8, i8* %scevgep35.8.11, align 1
  %call64.8.11 = call zeroext i8 @mult(i8 zeroext %conv59.8.11, i8 zeroext %1802)
  %scevgep42.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 8
  store i8 %call64.8.11, i8* %scevgep42.8.11, align 1
  %1803 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 8
  %1804 = load i8, i8* %scevgep39.8.11, align 1
  %call75.8.11 = call zeroext i8 @mult(i8 zeroext %1803, i8 zeroext %1804)
  %scevgep46.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 8
  store i8 %call75.8.11, i8* %scevgep46.8.11, align 1
  %scevgep43.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 8
  %1805 = load i8, i8* %scevgep43.8.11, align 1
  %conv84.8.11 = zext i8 %1805 to i32
  %scevgep47.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 8
  %1806 = load i8, i8* %scevgep47.8.11, align 1
  %conv89.8.11 = zext i8 %1806 to i32
  %xor90.8.11 = xor i32 %conv84.8.11, %conv89.8.11
  %conv91.8.11 = trunc i32 %xor90.8.11 to i8
  %scevgep50.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 8
  store i8 %conv91.8.11, i8* %scevgep50.8.11, align 1
  %scevgep31.9.11 = getelementptr i8, i8* %b, i64 9
  %1807 = load i8, i8* %scevgep31.9.11, align 1
  %conv44.9.11 = zext i8 %1807 to i32
  %scevgep34.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 9
  %1808 = load i8, i8* %scevgep34.9.11, align 1
  %conv49.9.11 = zext i8 %1808 to i32
  %xor.9.11 = xor i32 %conv44.9.11, %conv49.9.11
  %conv50.9.11 = trunc i32 %xor.9.11 to i8
  %scevgep38.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 9
  store i8 %conv50.9.11, i8* %scevgep38.9.11, align 1
  %1809 = load i8, i8* %arrayidx56.11, align 1
  %conv57.9.11 = zext i8 %1809 to i32
  %xor58.9.11 = xor i32 %conv57.9.11, 1
  %conv59.9.11 = trunc i32 %xor58.9.11 to i8
  %scevgep35.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 9
  %1810 = load i8, i8* %scevgep35.9.11, align 1
  %call64.9.11 = call zeroext i8 @mult(i8 zeroext %conv59.9.11, i8 zeroext %1810)
  %scevgep42.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 9
  store i8 %call64.9.11, i8* %scevgep42.9.11, align 1
  %1811 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 9
  %1812 = load i8, i8* %scevgep39.9.11, align 1
  %call75.9.11 = call zeroext i8 @mult(i8 zeroext %1811, i8 zeroext %1812)
  %scevgep46.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 9
  store i8 %call75.9.11, i8* %scevgep46.9.11, align 1
  %scevgep43.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 9
  %1813 = load i8, i8* %scevgep43.9.11, align 1
  %conv84.9.11 = zext i8 %1813 to i32
  %scevgep47.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 9
  %1814 = load i8, i8* %scevgep47.9.11, align 1
  %conv89.9.11 = zext i8 %1814 to i32
  %xor90.9.11 = xor i32 %conv84.9.11, %conv89.9.11
  %conv91.9.11 = trunc i32 %xor90.9.11 to i8
  %scevgep50.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 9
  store i8 %conv91.9.11, i8* %scevgep50.9.11, align 1
  %scevgep31.10.11 = getelementptr i8, i8* %b, i64 10
  %1815 = load i8, i8* %scevgep31.10.11, align 1
  %conv44.10.11 = zext i8 %1815 to i32
  %scevgep34.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 10
  %1816 = load i8, i8* %scevgep34.10.11, align 1
  %conv49.10.11 = zext i8 %1816 to i32
  %xor.10.11 = xor i32 %conv44.10.11, %conv49.10.11
  %conv50.10.11 = trunc i32 %xor.10.11 to i8
  %scevgep38.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 10
  store i8 %conv50.10.11, i8* %scevgep38.10.11, align 1
  %1817 = load i8, i8* %arrayidx56.11, align 1
  %conv57.10.11 = zext i8 %1817 to i32
  %xor58.10.11 = xor i32 %conv57.10.11, 1
  %conv59.10.11 = trunc i32 %xor58.10.11 to i8
  %scevgep35.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 10
  %1818 = load i8, i8* %scevgep35.10.11, align 1
  %call64.10.11 = call zeroext i8 @mult(i8 zeroext %conv59.10.11, i8 zeroext %1818)
  %scevgep42.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 10
  store i8 %call64.10.11, i8* %scevgep42.10.11, align 1
  %1819 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 10
  %1820 = load i8, i8* %scevgep39.10.11, align 1
  %call75.10.11 = call zeroext i8 @mult(i8 zeroext %1819, i8 zeroext %1820)
  %scevgep46.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 10
  store i8 %call75.10.11, i8* %scevgep46.10.11, align 1
  %scevgep43.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 10
  %1821 = load i8, i8* %scevgep43.10.11, align 1
  %conv84.10.11 = zext i8 %1821 to i32
  %scevgep47.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 10
  %1822 = load i8, i8* %scevgep47.10.11, align 1
  %conv89.10.11 = zext i8 %1822 to i32
  %xor90.10.11 = xor i32 %conv84.10.11, %conv89.10.11
  %conv91.10.11 = trunc i32 %xor90.10.11 to i8
  %scevgep50.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 10
  store i8 %conv91.10.11, i8* %scevgep50.10.11, align 1
  %scevgep31.12.11 = getelementptr i8, i8* %b, i64 12
  %1823 = load i8, i8* %scevgep31.12.11, align 1
  %conv44.12.11 = zext i8 %1823 to i32
  %scevgep34.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 12
  %1824 = load i8, i8* %scevgep34.12.11, align 1
  %conv49.12.11 = zext i8 %1824 to i32
  %xor.12.11 = xor i32 %conv44.12.11, %conv49.12.11
  %conv50.12.11 = trunc i32 %xor.12.11 to i8
  %scevgep38.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 12
  store i8 %conv50.12.11, i8* %scevgep38.12.11, align 1
  %1825 = load i8, i8* %arrayidx56.11, align 1
  %conv57.12.11 = zext i8 %1825 to i32
  %xor58.12.11 = xor i32 %conv57.12.11, 1
  %conv59.12.11 = trunc i32 %xor58.12.11 to i8
  %scevgep35.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 12
  %1826 = load i8, i8* %scevgep35.12.11, align 1
  %call64.12.11 = call zeroext i8 @mult(i8 zeroext %conv59.12.11, i8 zeroext %1826)
  %scevgep42.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 12
  store i8 %call64.12.11, i8* %scevgep42.12.11, align 1
  %1827 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 12
  %1828 = load i8, i8* %scevgep39.12.11, align 1
  %call75.12.11 = call zeroext i8 @mult(i8 zeroext %1827, i8 zeroext %1828)
  %scevgep46.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 12
  store i8 %call75.12.11, i8* %scevgep46.12.11, align 1
  %scevgep43.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 12
  %1829 = load i8, i8* %scevgep43.12.11, align 1
  %conv84.12.11 = zext i8 %1829 to i32
  %scevgep47.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 12
  %1830 = load i8, i8* %scevgep47.12.11, align 1
  %conv89.12.11 = zext i8 %1830 to i32
  %xor90.12.11 = xor i32 %conv84.12.11, %conv89.12.11
  %conv91.12.11 = trunc i32 %xor90.12.11 to i8
  %scevgep50.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 12
  store i8 %conv91.12.11, i8* %scevgep50.12.11, align 1
  %scevgep31.13.11 = getelementptr i8, i8* %b, i64 13
  %1831 = load i8, i8* %scevgep31.13.11, align 1
  %conv44.13.11 = zext i8 %1831 to i32
  %scevgep34.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 13
  %1832 = load i8, i8* %scevgep34.13.11, align 1
  %conv49.13.11 = zext i8 %1832 to i32
  %xor.13.11 = xor i32 %conv44.13.11, %conv49.13.11
  %conv50.13.11 = trunc i32 %xor.13.11 to i8
  %scevgep38.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 13
  store i8 %conv50.13.11, i8* %scevgep38.13.11, align 1
  %1833 = load i8, i8* %arrayidx56.11, align 1
  %conv57.13.11 = zext i8 %1833 to i32
  %xor58.13.11 = xor i32 %conv57.13.11, 1
  %conv59.13.11 = trunc i32 %xor58.13.11 to i8
  %scevgep35.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 13
  %1834 = load i8, i8* %scevgep35.13.11, align 1
  %call64.13.11 = call zeroext i8 @mult(i8 zeroext %conv59.13.11, i8 zeroext %1834)
  %scevgep42.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 13
  store i8 %call64.13.11, i8* %scevgep42.13.11, align 1
  %1835 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 13
  %1836 = load i8, i8* %scevgep39.13.11, align 1
  %call75.13.11 = call zeroext i8 @mult(i8 zeroext %1835, i8 zeroext %1836)
  %scevgep46.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 13
  store i8 %call75.13.11, i8* %scevgep46.13.11, align 1
  %scevgep43.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 13
  %1837 = load i8, i8* %scevgep43.13.11, align 1
  %conv84.13.11 = zext i8 %1837 to i32
  %scevgep47.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 13
  %1838 = load i8, i8* %scevgep47.13.11, align 1
  %conv89.13.11 = zext i8 %1838 to i32
  %xor90.13.11 = xor i32 %conv84.13.11, %conv89.13.11
  %conv91.13.11 = trunc i32 %xor90.13.11 to i8
  %scevgep50.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 13
  store i8 %conv91.13.11, i8* %scevgep50.13.11, align 1
  %scevgep31.14.11 = getelementptr i8, i8* %b, i64 14
  %1839 = load i8, i8* %scevgep31.14.11, align 1
  %conv44.14.11 = zext i8 %1839 to i32
  %scevgep34.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 14
  %1840 = load i8, i8* %scevgep34.14.11, align 1
  %conv49.14.11 = zext i8 %1840 to i32
  %xor.14.11 = xor i32 %conv44.14.11, %conv49.14.11
  %conv50.14.11 = trunc i32 %xor.14.11 to i8
  %scevgep38.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 14
  store i8 %conv50.14.11, i8* %scevgep38.14.11, align 1
  %1841 = load i8, i8* %arrayidx56.11, align 1
  %conv57.14.11 = zext i8 %1841 to i32
  %xor58.14.11 = xor i32 %conv57.14.11, 1
  %conv59.14.11 = trunc i32 %xor58.14.11 to i8
  %scevgep35.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 14
  %1842 = load i8, i8* %scevgep35.14.11, align 1
  %call64.14.11 = call zeroext i8 @mult(i8 zeroext %conv59.14.11, i8 zeroext %1842)
  %scevgep42.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 14
  store i8 %call64.14.11, i8* %scevgep42.14.11, align 1
  %1843 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 14
  %1844 = load i8, i8* %scevgep39.14.11, align 1
  %call75.14.11 = call zeroext i8 @mult(i8 zeroext %1843, i8 zeroext %1844)
  %scevgep46.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 14
  store i8 %call75.14.11, i8* %scevgep46.14.11, align 1
  %scevgep43.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 14
  %1845 = load i8, i8* %scevgep43.14.11, align 1
  %conv84.14.11 = zext i8 %1845 to i32
  %scevgep47.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 14
  %1846 = load i8, i8* %scevgep47.14.11, align 1
  %conv89.14.11 = zext i8 %1846 to i32
  %xor90.14.11 = xor i32 %conv84.14.11, %conv89.14.11
  %conv91.14.11 = trunc i32 %xor90.14.11 to i8
  %scevgep50.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 14
  store i8 %conv91.14.11, i8* %scevgep50.14.11, align 1
  %scevgep31.15.11 = getelementptr i8, i8* %b, i64 15
  %1847 = load i8, i8* %scevgep31.15.11, align 1
  %conv44.15.11 = zext i8 %1847 to i32
  %scevgep34.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 15
  %1848 = load i8, i8* %scevgep34.15.11, align 1
  %conv49.15.11 = zext i8 %1848 to i32
  %xor.15.11 = xor i32 %conv44.15.11, %conv49.15.11
  %conv50.15.11 = trunc i32 %xor.15.11 to i8
  %scevgep38.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 15
  store i8 %conv50.15.11, i8* %scevgep38.15.11, align 1
  %1849 = load i8, i8* %arrayidx56.11, align 1
  %conv57.15.11 = zext i8 %1849 to i32
  %xor58.15.11 = xor i32 %conv57.15.11, 1
  %conv59.15.11 = trunc i32 %xor58.15.11 to i8
  %scevgep35.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 0, i64 15
  %1850 = load i8, i8* %scevgep35.15.11, align 1
  %call64.15.11 = call zeroext i8 @mult(i8 zeroext %conv59.15.11, i8 zeroext %1850)
  %scevgep42.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 15
  store i8 %call64.15.11, i8* %scevgep42.15.11, align 1
  %1851 = load i8, i8* %arrayidx70.11, align 1
  %scevgep39.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 0, i64 15
  %1852 = load i8, i8* %scevgep39.15.11, align 1
  %call75.15.11 = call zeroext i8 @mult(i8 zeroext %1851, i8 zeroext %1852)
  %scevgep46.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 15
  store i8 %call75.15.11, i8* %scevgep46.15.11, align 1
  %scevgep43.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 0, i64 15
  %1853 = load i8, i8* %scevgep43.15.11, align 1
  %conv84.15.11 = zext i8 %1853 to i32
  %scevgep47.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 0, i64 15
  %1854 = load i8, i8* %scevgep47.15.11, align 1
  %conv89.15.11 = zext i8 %1854 to i32
  %xor90.15.11 = xor i32 %conv84.15.11, %conv89.15.11
  %conv91.15.11 = trunc i32 %xor90.15.11 to i8
  %scevgep50.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 0, i64 15
  store i8 %conv91.15.11, i8* %scevgep50.15.11, align 1
  %scevgep33.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1730, i64 0, i64 1, i64 0
  %1855 = bitcast i8* %scevgep33.11 to [16 x [16 x i8]]*
  %scevgep37.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1731, i64 0, i64 1, i64 0
  %1856 = bitcast i8* %scevgep37.11 to [16 x [16 x i8]]*
  %scevgep41.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1732, i64 0, i64 1, i64 0
  %1857 = bitcast i8* %scevgep41.11 to [16 x [16 x i8]]*
  %scevgep45.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1733, i64 0, i64 1, i64 0
  %1858 = bitcast i8* %scevgep45.11 to [16 x [16 x i8]]*
  %scevgep49.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1734, i64 0, i64 1, i64 0
  %1859 = bitcast i8* %scevgep49.11 to [16 x [16 x i8]]*
  %arrayidx56.12 = getelementptr inbounds i8, i8* %a, i64 12
  %arrayidx70.12 = getelementptr inbounds i8, i8* %a, i64 12
  %1860 = load i8, i8* %b, align 1
  %conv44.12525 = zext i8 %1860 to i32
  %scevgep34.12526 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 0
  %1861 = load i8, i8* %scevgep34.12526, align 1
  %conv49.12527 = zext i8 %1861 to i32
  %xor.12528 = xor i32 %conv44.12525, %conv49.12527
  %conv50.12529 = trunc i32 %xor.12528 to i8
  %scevgep38.12530 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 0
  store i8 %conv50.12529, i8* %scevgep38.12530, align 1
  %1862 = load i8, i8* %arrayidx56.12, align 1
  %conv57.12531 = zext i8 %1862 to i32
  %xor58.12532 = xor i32 %conv57.12531, 1
  %conv59.12533 = trunc i32 %xor58.12532 to i8
  %scevgep35.12534 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 0
  %1863 = load i8, i8* %scevgep35.12534, align 1
  %call64.12535 = call zeroext i8 @mult(i8 zeroext %conv59.12533, i8 zeroext %1863)
  %scevgep42.12536 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 0
  store i8 %call64.12535, i8* %scevgep42.12536, align 1
  %1864 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.12537 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 0
  %1865 = load i8, i8* %scevgep39.12537, align 1
  %call75.12538 = call zeroext i8 @mult(i8 zeroext %1864, i8 zeroext %1865)
  %scevgep46.12539 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 0
  store i8 %call75.12538, i8* %scevgep46.12539, align 1
  %scevgep43.12540 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 0
  %1866 = load i8, i8* %scevgep43.12540, align 1
  %conv84.12541 = zext i8 %1866 to i32
  %scevgep47.12542 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 0
  %1867 = load i8, i8* %scevgep47.12542, align 1
  %conv89.12543 = zext i8 %1867 to i32
  %xor90.12544 = xor i32 %conv84.12541, %conv89.12543
  %conv91.12545 = trunc i32 %xor90.12544 to i8
  %scevgep50.12546 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 0
  store i8 %conv91.12545, i8* %scevgep50.12546, align 1
  %scevgep31.1.12 = getelementptr i8, i8* %b, i64 1
  %1868 = load i8, i8* %scevgep31.1.12, align 1
  %conv44.1.12 = zext i8 %1868 to i32
  %scevgep34.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 1
  %1869 = load i8, i8* %scevgep34.1.12, align 1
  %conv49.1.12 = zext i8 %1869 to i32
  %xor.1.12 = xor i32 %conv44.1.12, %conv49.1.12
  %conv50.1.12 = trunc i32 %xor.1.12 to i8
  %scevgep38.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 1
  store i8 %conv50.1.12, i8* %scevgep38.1.12, align 1
  %1870 = load i8, i8* %arrayidx56.12, align 1
  %conv57.1.12 = zext i8 %1870 to i32
  %xor58.1.12 = xor i32 %conv57.1.12, 1
  %conv59.1.12 = trunc i32 %xor58.1.12 to i8
  %scevgep35.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 1
  %1871 = load i8, i8* %scevgep35.1.12, align 1
  %call64.1.12 = call zeroext i8 @mult(i8 zeroext %conv59.1.12, i8 zeroext %1871)
  %scevgep42.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 1
  store i8 %call64.1.12, i8* %scevgep42.1.12, align 1
  %1872 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 1
  %1873 = load i8, i8* %scevgep39.1.12, align 1
  %call75.1.12 = call zeroext i8 @mult(i8 zeroext %1872, i8 zeroext %1873)
  %scevgep46.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 1
  store i8 %call75.1.12, i8* %scevgep46.1.12, align 1
  %scevgep43.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 1
  %1874 = load i8, i8* %scevgep43.1.12, align 1
  %conv84.1.12 = zext i8 %1874 to i32
  %scevgep47.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 1
  %1875 = load i8, i8* %scevgep47.1.12, align 1
  %conv89.1.12 = zext i8 %1875 to i32
  %xor90.1.12 = xor i32 %conv84.1.12, %conv89.1.12
  %conv91.1.12 = trunc i32 %xor90.1.12 to i8
  %scevgep50.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 1
  store i8 %conv91.1.12, i8* %scevgep50.1.12, align 1
  %scevgep31.2.12 = getelementptr i8, i8* %b, i64 2
  %1876 = load i8, i8* %scevgep31.2.12, align 1
  %conv44.2.12 = zext i8 %1876 to i32
  %scevgep34.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 2
  %1877 = load i8, i8* %scevgep34.2.12, align 1
  %conv49.2.12 = zext i8 %1877 to i32
  %xor.2.12 = xor i32 %conv44.2.12, %conv49.2.12
  %conv50.2.12 = trunc i32 %xor.2.12 to i8
  %scevgep38.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 2
  store i8 %conv50.2.12, i8* %scevgep38.2.12, align 1
  %1878 = load i8, i8* %arrayidx56.12, align 1
  %conv57.2.12 = zext i8 %1878 to i32
  %xor58.2.12 = xor i32 %conv57.2.12, 1
  %conv59.2.12 = trunc i32 %xor58.2.12 to i8
  %scevgep35.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 2
  %1879 = load i8, i8* %scevgep35.2.12, align 1
  %call64.2.12 = call zeroext i8 @mult(i8 zeroext %conv59.2.12, i8 zeroext %1879)
  %scevgep42.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 2
  store i8 %call64.2.12, i8* %scevgep42.2.12, align 1
  %1880 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 2
  %1881 = load i8, i8* %scevgep39.2.12, align 1
  %call75.2.12 = call zeroext i8 @mult(i8 zeroext %1880, i8 zeroext %1881)
  %scevgep46.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 2
  store i8 %call75.2.12, i8* %scevgep46.2.12, align 1
  %scevgep43.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 2
  %1882 = load i8, i8* %scevgep43.2.12, align 1
  %conv84.2.12 = zext i8 %1882 to i32
  %scevgep47.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 2
  %1883 = load i8, i8* %scevgep47.2.12, align 1
  %conv89.2.12 = zext i8 %1883 to i32
  %xor90.2.12 = xor i32 %conv84.2.12, %conv89.2.12
  %conv91.2.12 = trunc i32 %xor90.2.12 to i8
  %scevgep50.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 2
  store i8 %conv91.2.12, i8* %scevgep50.2.12, align 1
  %scevgep31.3.12 = getelementptr i8, i8* %b, i64 3
  %1884 = load i8, i8* %scevgep31.3.12, align 1
  %conv44.3.12 = zext i8 %1884 to i32
  %scevgep34.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 3
  %1885 = load i8, i8* %scevgep34.3.12, align 1
  %conv49.3.12 = zext i8 %1885 to i32
  %xor.3.12 = xor i32 %conv44.3.12, %conv49.3.12
  %conv50.3.12 = trunc i32 %xor.3.12 to i8
  %scevgep38.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 3
  store i8 %conv50.3.12, i8* %scevgep38.3.12, align 1
  %1886 = load i8, i8* %arrayidx56.12, align 1
  %conv57.3.12 = zext i8 %1886 to i32
  %xor58.3.12 = xor i32 %conv57.3.12, 1
  %conv59.3.12 = trunc i32 %xor58.3.12 to i8
  %scevgep35.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 3
  %1887 = load i8, i8* %scevgep35.3.12, align 1
  %call64.3.12 = call zeroext i8 @mult(i8 zeroext %conv59.3.12, i8 zeroext %1887)
  %scevgep42.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 3
  store i8 %call64.3.12, i8* %scevgep42.3.12, align 1
  %1888 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 3
  %1889 = load i8, i8* %scevgep39.3.12, align 1
  %call75.3.12 = call zeroext i8 @mult(i8 zeroext %1888, i8 zeroext %1889)
  %scevgep46.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 3
  store i8 %call75.3.12, i8* %scevgep46.3.12, align 1
  %scevgep43.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 3
  %1890 = load i8, i8* %scevgep43.3.12, align 1
  %conv84.3.12 = zext i8 %1890 to i32
  %scevgep47.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 3
  %1891 = load i8, i8* %scevgep47.3.12, align 1
  %conv89.3.12 = zext i8 %1891 to i32
  %xor90.3.12 = xor i32 %conv84.3.12, %conv89.3.12
  %conv91.3.12 = trunc i32 %xor90.3.12 to i8
  %scevgep50.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 3
  store i8 %conv91.3.12, i8* %scevgep50.3.12, align 1
  %scevgep31.4.12 = getelementptr i8, i8* %b, i64 4
  %1892 = load i8, i8* %scevgep31.4.12, align 1
  %conv44.4.12 = zext i8 %1892 to i32
  %scevgep34.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 4
  %1893 = load i8, i8* %scevgep34.4.12, align 1
  %conv49.4.12 = zext i8 %1893 to i32
  %xor.4.12 = xor i32 %conv44.4.12, %conv49.4.12
  %conv50.4.12 = trunc i32 %xor.4.12 to i8
  %scevgep38.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 4
  store i8 %conv50.4.12, i8* %scevgep38.4.12, align 1
  %1894 = load i8, i8* %arrayidx56.12, align 1
  %conv57.4.12 = zext i8 %1894 to i32
  %xor58.4.12 = xor i32 %conv57.4.12, 1
  %conv59.4.12 = trunc i32 %xor58.4.12 to i8
  %scevgep35.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 4
  %1895 = load i8, i8* %scevgep35.4.12, align 1
  %call64.4.12 = call zeroext i8 @mult(i8 zeroext %conv59.4.12, i8 zeroext %1895)
  %scevgep42.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 4
  store i8 %call64.4.12, i8* %scevgep42.4.12, align 1
  %1896 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 4
  %1897 = load i8, i8* %scevgep39.4.12, align 1
  %call75.4.12 = call zeroext i8 @mult(i8 zeroext %1896, i8 zeroext %1897)
  %scevgep46.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 4
  store i8 %call75.4.12, i8* %scevgep46.4.12, align 1
  %scevgep43.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 4
  %1898 = load i8, i8* %scevgep43.4.12, align 1
  %conv84.4.12 = zext i8 %1898 to i32
  %scevgep47.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 4
  %1899 = load i8, i8* %scevgep47.4.12, align 1
  %conv89.4.12 = zext i8 %1899 to i32
  %xor90.4.12 = xor i32 %conv84.4.12, %conv89.4.12
  %conv91.4.12 = trunc i32 %xor90.4.12 to i8
  %scevgep50.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 4
  store i8 %conv91.4.12, i8* %scevgep50.4.12, align 1
  %scevgep31.5.12 = getelementptr i8, i8* %b, i64 5
  %1900 = load i8, i8* %scevgep31.5.12, align 1
  %conv44.5.12 = zext i8 %1900 to i32
  %scevgep34.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 5
  %1901 = load i8, i8* %scevgep34.5.12, align 1
  %conv49.5.12 = zext i8 %1901 to i32
  %xor.5.12 = xor i32 %conv44.5.12, %conv49.5.12
  %conv50.5.12 = trunc i32 %xor.5.12 to i8
  %scevgep38.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 5
  store i8 %conv50.5.12, i8* %scevgep38.5.12, align 1
  %1902 = load i8, i8* %arrayidx56.12, align 1
  %conv57.5.12 = zext i8 %1902 to i32
  %xor58.5.12 = xor i32 %conv57.5.12, 1
  %conv59.5.12 = trunc i32 %xor58.5.12 to i8
  %scevgep35.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 5
  %1903 = load i8, i8* %scevgep35.5.12, align 1
  %call64.5.12 = call zeroext i8 @mult(i8 zeroext %conv59.5.12, i8 zeroext %1903)
  %scevgep42.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 5
  store i8 %call64.5.12, i8* %scevgep42.5.12, align 1
  %1904 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 5
  %1905 = load i8, i8* %scevgep39.5.12, align 1
  %call75.5.12 = call zeroext i8 @mult(i8 zeroext %1904, i8 zeroext %1905)
  %scevgep46.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 5
  store i8 %call75.5.12, i8* %scevgep46.5.12, align 1
  %scevgep43.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 5
  %1906 = load i8, i8* %scevgep43.5.12, align 1
  %conv84.5.12 = zext i8 %1906 to i32
  %scevgep47.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 5
  %1907 = load i8, i8* %scevgep47.5.12, align 1
  %conv89.5.12 = zext i8 %1907 to i32
  %xor90.5.12 = xor i32 %conv84.5.12, %conv89.5.12
  %conv91.5.12 = trunc i32 %xor90.5.12 to i8
  %scevgep50.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 5
  store i8 %conv91.5.12, i8* %scevgep50.5.12, align 1
  %scevgep31.6.12 = getelementptr i8, i8* %b, i64 6
  %1908 = load i8, i8* %scevgep31.6.12, align 1
  %conv44.6.12 = zext i8 %1908 to i32
  %scevgep34.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 6
  %1909 = load i8, i8* %scevgep34.6.12, align 1
  %conv49.6.12 = zext i8 %1909 to i32
  %xor.6.12 = xor i32 %conv44.6.12, %conv49.6.12
  %conv50.6.12 = trunc i32 %xor.6.12 to i8
  %scevgep38.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 6
  store i8 %conv50.6.12, i8* %scevgep38.6.12, align 1
  %1910 = load i8, i8* %arrayidx56.12, align 1
  %conv57.6.12 = zext i8 %1910 to i32
  %xor58.6.12 = xor i32 %conv57.6.12, 1
  %conv59.6.12 = trunc i32 %xor58.6.12 to i8
  %scevgep35.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 6
  %1911 = load i8, i8* %scevgep35.6.12, align 1
  %call64.6.12 = call zeroext i8 @mult(i8 zeroext %conv59.6.12, i8 zeroext %1911)
  %scevgep42.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 6
  store i8 %call64.6.12, i8* %scevgep42.6.12, align 1
  %1912 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 6
  %1913 = load i8, i8* %scevgep39.6.12, align 1
  %call75.6.12 = call zeroext i8 @mult(i8 zeroext %1912, i8 zeroext %1913)
  %scevgep46.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 6
  store i8 %call75.6.12, i8* %scevgep46.6.12, align 1
  %scevgep43.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 6
  %1914 = load i8, i8* %scevgep43.6.12, align 1
  %conv84.6.12 = zext i8 %1914 to i32
  %scevgep47.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 6
  %1915 = load i8, i8* %scevgep47.6.12, align 1
  %conv89.6.12 = zext i8 %1915 to i32
  %xor90.6.12 = xor i32 %conv84.6.12, %conv89.6.12
  %conv91.6.12 = trunc i32 %xor90.6.12 to i8
  %scevgep50.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 6
  store i8 %conv91.6.12, i8* %scevgep50.6.12, align 1
  %scevgep31.7.12 = getelementptr i8, i8* %b, i64 7
  %1916 = load i8, i8* %scevgep31.7.12, align 1
  %conv44.7.12 = zext i8 %1916 to i32
  %scevgep34.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 7
  %1917 = load i8, i8* %scevgep34.7.12, align 1
  %conv49.7.12 = zext i8 %1917 to i32
  %xor.7.12 = xor i32 %conv44.7.12, %conv49.7.12
  %conv50.7.12 = trunc i32 %xor.7.12 to i8
  %scevgep38.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 7
  store i8 %conv50.7.12, i8* %scevgep38.7.12, align 1
  %1918 = load i8, i8* %arrayidx56.12, align 1
  %conv57.7.12 = zext i8 %1918 to i32
  %xor58.7.12 = xor i32 %conv57.7.12, 1
  %conv59.7.12 = trunc i32 %xor58.7.12 to i8
  %scevgep35.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 7
  %1919 = load i8, i8* %scevgep35.7.12, align 1
  %call64.7.12 = call zeroext i8 @mult(i8 zeroext %conv59.7.12, i8 zeroext %1919)
  %scevgep42.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 7
  store i8 %call64.7.12, i8* %scevgep42.7.12, align 1
  %1920 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 7
  %1921 = load i8, i8* %scevgep39.7.12, align 1
  %call75.7.12 = call zeroext i8 @mult(i8 zeroext %1920, i8 zeroext %1921)
  %scevgep46.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 7
  store i8 %call75.7.12, i8* %scevgep46.7.12, align 1
  %scevgep43.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 7
  %1922 = load i8, i8* %scevgep43.7.12, align 1
  %conv84.7.12 = zext i8 %1922 to i32
  %scevgep47.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 7
  %1923 = load i8, i8* %scevgep47.7.12, align 1
  %conv89.7.12 = zext i8 %1923 to i32
  %xor90.7.12 = xor i32 %conv84.7.12, %conv89.7.12
  %conv91.7.12 = trunc i32 %xor90.7.12 to i8
  %scevgep50.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 7
  store i8 %conv91.7.12, i8* %scevgep50.7.12, align 1
  %scevgep31.8.12 = getelementptr i8, i8* %b, i64 8
  %1924 = load i8, i8* %scevgep31.8.12, align 1
  %conv44.8.12 = zext i8 %1924 to i32
  %scevgep34.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 8
  %1925 = load i8, i8* %scevgep34.8.12, align 1
  %conv49.8.12 = zext i8 %1925 to i32
  %xor.8.12 = xor i32 %conv44.8.12, %conv49.8.12
  %conv50.8.12 = trunc i32 %xor.8.12 to i8
  %scevgep38.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 8
  store i8 %conv50.8.12, i8* %scevgep38.8.12, align 1
  %1926 = load i8, i8* %arrayidx56.12, align 1
  %conv57.8.12 = zext i8 %1926 to i32
  %xor58.8.12 = xor i32 %conv57.8.12, 1
  %conv59.8.12 = trunc i32 %xor58.8.12 to i8
  %scevgep35.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 8
  %1927 = load i8, i8* %scevgep35.8.12, align 1
  %call64.8.12 = call zeroext i8 @mult(i8 zeroext %conv59.8.12, i8 zeroext %1927)
  %scevgep42.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 8
  store i8 %call64.8.12, i8* %scevgep42.8.12, align 1
  %1928 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 8
  %1929 = load i8, i8* %scevgep39.8.12, align 1
  %call75.8.12 = call zeroext i8 @mult(i8 zeroext %1928, i8 zeroext %1929)
  %scevgep46.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 8
  store i8 %call75.8.12, i8* %scevgep46.8.12, align 1
  %scevgep43.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 8
  %1930 = load i8, i8* %scevgep43.8.12, align 1
  %conv84.8.12 = zext i8 %1930 to i32
  %scevgep47.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 8
  %1931 = load i8, i8* %scevgep47.8.12, align 1
  %conv89.8.12 = zext i8 %1931 to i32
  %xor90.8.12 = xor i32 %conv84.8.12, %conv89.8.12
  %conv91.8.12 = trunc i32 %xor90.8.12 to i8
  %scevgep50.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 8
  store i8 %conv91.8.12, i8* %scevgep50.8.12, align 1
  %scevgep31.9.12 = getelementptr i8, i8* %b, i64 9
  %1932 = load i8, i8* %scevgep31.9.12, align 1
  %conv44.9.12 = zext i8 %1932 to i32
  %scevgep34.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 9
  %1933 = load i8, i8* %scevgep34.9.12, align 1
  %conv49.9.12 = zext i8 %1933 to i32
  %xor.9.12 = xor i32 %conv44.9.12, %conv49.9.12
  %conv50.9.12 = trunc i32 %xor.9.12 to i8
  %scevgep38.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 9
  store i8 %conv50.9.12, i8* %scevgep38.9.12, align 1
  %1934 = load i8, i8* %arrayidx56.12, align 1
  %conv57.9.12 = zext i8 %1934 to i32
  %xor58.9.12 = xor i32 %conv57.9.12, 1
  %conv59.9.12 = trunc i32 %xor58.9.12 to i8
  %scevgep35.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 9
  %1935 = load i8, i8* %scevgep35.9.12, align 1
  %call64.9.12 = call zeroext i8 @mult(i8 zeroext %conv59.9.12, i8 zeroext %1935)
  %scevgep42.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 9
  store i8 %call64.9.12, i8* %scevgep42.9.12, align 1
  %1936 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 9
  %1937 = load i8, i8* %scevgep39.9.12, align 1
  %call75.9.12 = call zeroext i8 @mult(i8 zeroext %1936, i8 zeroext %1937)
  %scevgep46.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 9
  store i8 %call75.9.12, i8* %scevgep46.9.12, align 1
  %scevgep43.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 9
  %1938 = load i8, i8* %scevgep43.9.12, align 1
  %conv84.9.12 = zext i8 %1938 to i32
  %scevgep47.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 9
  %1939 = load i8, i8* %scevgep47.9.12, align 1
  %conv89.9.12 = zext i8 %1939 to i32
  %xor90.9.12 = xor i32 %conv84.9.12, %conv89.9.12
  %conv91.9.12 = trunc i32 %xor90.9.12 to i8
  %scevgep50.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 9
  store i8 %conv91.9.12, i8* %scevgep50.9.12, align 1
  %scevgep31.10.12 = getelementptr i8, i8* %b, i64 10
  %1940 = load i8, i8* %scevgep31.10.12, align 1
  %conv44.10.12 = zext i8 %1940 to i32
  %scevgep34.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 10
  %1941 = load i8, i8* %scevgep34.10.12, align 1
  %conv49.10.12 = zext i8 %1941 to i32
  %xor.10.12 = xor i32 %conv44.10.12, %conv49.10.12
  %conv50.10.12 = trunc i32 %xor.10.12 to i8
  %scevgep38.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 10
  store i8 %conv50.10.12, i8* %scevgep38.10.12, align 1
  %1942 = load i8, i8* %arrayidx56.12, align 1
  %conv57.10.12 = zext i8 %1942 to i32
  %xor58.10.12 = xor i32 %conv57.10.12, 1
  %conv59.10.12 = trunc i32 %xor58.10.12 to i8
  %scevgep35.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 10
  %1943 = load i8, i8* %scevgep35.10.12, align 1
  %call64.10.12 = call zeroext i8 @mult(i8 zeroext %conv59.10.12, i8 zeroext %1943)
  %scevgep42.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 10
  store i8 %call64.10.12, i8* %scevgep42.10.12, align 1
  %1944 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 10
  %1945 = load i8, i8* %scevgep39.10.12, align 1
  %call75.10.12 = call zeroext i8 @mult(i8 zeroext %1944, i8 zeroext %1945)
  %scevgep46.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 10
  store i8 %call75.10.12, i8* %scevgep46.10.12, align 1
  %scevgep43.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 10
  %1946 = load i8, i8* %scevgep43.10.12, align 1
  %conv84.10.12 = zext i8 %1946 to i32
  %scevgep47.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 10
  %1947 = load i8, i8* %scevgep47.10.12, align 1
  %conv89.10.12 = zext i8 %1947 to i32
  %xor90.10.12 = xor i32 %conv84.10.12, %conv89.10.12
  %conv91.10.12 = trunc i32 %xor90.10.12 to i8
  %scevgep50.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 10
  store i8 %conv91.10.12, i8* %scevgep50.10.12, align 1
  %scevgep31.11.12 = getelementptr i8, i8* %b, i64 11
  %1948 = load i8, i8* %scevgep31.11.12, align 1
  %conv44.11.12 = zext i8 %1948 to i32
  %scevgep34.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 11
  %1949 = load i8, i8* %scevgep34.11.12, align 1
  %conv49.11.12 = zext i8 %1949 to i32
  %xor.11.12 = xor i32 %conv44.11.12, %conv49.11.12
  %conv50.11.12 = trunc i32 %xor.11.12 to i8
  %scevgep38.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 11
  store i8 %conv50.11.12, i8* %scevgep38.11.12, align 1
  %1950 = load i8, i8* %arrayidx56.12, align 1
  %conv57.11.12 = zext i8 %1950 to i32
  %xor58.11.12 = xor i32 %conv57.11.12, 1
  %conv59.11.12 = trunc i32 %xor58.11.12 to i8
  %scevgep35.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 11
  %1951 = load i8, i8* %scevgep35.11.12, align 1
  %call64.11.12 = call zeroext i8 @mult(i8 zeroext %conv59.11.12, i8 zeroext %1951)
  %scevgep42.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 11
  store i8 %call64.11.12, i8* %scevgep42.11.12, align 1
  %1952 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 11
  %1953 = load i8, i8* %scevgep39.11.12, align 1
  %call75.11.12 = call zeroext i8 @mult(i8 zeroext %1952, i8 zeroext %1953)
  %scevgep46.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 11
  store i8 %call75.11.12, i8* %scevgep46.11.12, align 1
  %scevgep43.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 11
  %1954 = load i8, i8* %scevgep43.11.12, align 1
  %conv84.11.12 = zext i8 %1954 to i32
  %scevgep47.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 11
  %1955 = load i8, i8* %scevgep47.11.12, align 1
  %conv89.11.12 = zext i8 %1955 to i32
  %xor90.11.12 = xor i32 %conv84.11.12, %conv89.11.12
  %conv91.11.12 = trunc i32 %xor90.11.12 to i8
  %scevgep50.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 11
  store i8 %conv91.11.12, i8* %scevgep50.11.12, align 1
  %scevgep31.13.12 = getelementptr i8, i8* %b, i64 13
  %1956 = load i8, i8* %scevgep31.13.12, align 1
  %conv44.13.12 = zext i8 %1956 to i32
  %scevgep34.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 13
  %1957 = load i8, i8* %scevgep34.13.12, align 1
  %conv49.13.12 = zext i8 %1957 to i32
  %xor.13.12 = xor i32 %conv44.13.12, %conv49.13.12
  %conv50.13.12 = trunc i32 %xor.13.12 to i8
  %scevgep38.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 13
  store i8 %conv50.13.12, i8* %scevgep38.13.12, align 1
  %1958 = load i8, i8* %arrayidx56.12, align 1
  %conv57.13.12 = zext i8 %1958 to i32
  %xor58.13.12 = xor i32 %conv57.13.12, 1
  %conv59.13.12 = trunc i32 %xor58.13.12 to i8
  %scevgep35.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 13
  %1959 = load i8, i8* %scevgep35.13.12, align 1
  %call64.13.12 = call zeroext i8 @mult(i8 zeroext %conv59.13.12, i8 zeroext %1959)
  %scevgep42.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 13
  store i8 %call64.13.12, i8* %scevgep42.13.12, align 1
  %1960 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 13
  %1961 = load i8, i8* %scevgep39.13.12, align 1
  %call75.13.12 = call zeroext i8 @mult(i8 zeroext %1960, i8 zeroext %1961)
  %scevgep46.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 13
  store i8 %call75.13.12, i8* %scevgep46.13.12, align 1
  %scevgep43.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 13
  %1962 = load i8, i8* %scevgep43.13.12, align 1
  %conv84.13.12 = zext i8 %1962 to i32
  %scevgep47.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 13
  %1963 = load i8, i8* %scevgep47.13.12, align 1
  %conv89.13.12 = zext i8 %1963 to i32
  %xor90.13.12 = xor i32 %conv84.13.12, %conv89.13.12
  %conv91.13.12 = trunc i32 %xor90.13.12 to i8
  %scevgep50.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 13
  store i8 %conv91.13.12, i8* %scevgep50.13.12, align 1
  %scevgep31.14.12 = getelementptr i8, i8* %b, i64 14
  %1964 = load i8, i8* %scevgep31.14.12, align 1
  %conv44.14.12 = zext i8 %1964 to i32
  %scevgep34.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 14
  %1965 = load i8, i8* %scevgep34.14.12, align 1
  %conv49.14.12 = zext i8 %1965 to i32
  %xor.14.12 = xor i32 %conv44.14.12, %conv49.14.12
  %conv50.14.12 = trunc i32 %xor.14.12 to i8
  %scevgep38.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 14
  store i8 %conv50.14.12, i8* %scevgep38.14.12, align 1
  %1966 = load i8, i8* %arrayidx56.12, align 1
  %conv57.14.12 = zext i8 %1966 to i32
  %xor58.14.12 = xor i32 %conv57.14.12, 1
  %conv59.14.12 = trunc i32 %xor58.14.12 to i8
  %scevgep35.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 14
  %1967 = load i8, i8* %scevgep35.14.12, align 1
  %call64.14.12 = call zeroext i8 @mult(i8 zeroext %conv59.14.12, i8 zeroext %1967)
  %scevgep42.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 14
  store i8 %call64.14.12, i8* %scevgep42.14.12, align 1
  %1968 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 14
  %1969 = load i8, i8* %scevgep39.14.12, align 1
  %call75.14.12 = call zeroext i8 @mult(i8 zeroext %1968, i8 zeroext %1969)
  %scevgep46.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 14
  store i8 %call75.14.12, i8* %scevgep46.14.12, align 1
  %scevgep43.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 14
  %1970 = load i8, i8* %scevgep43.14.12, align 1
  %conv84.14.12 = zext i8 %1970 to i32
  %scevgep47.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 14
  %1971 = load i8, i8* %scevgep47.14.12, align 1
  %conv89.14.12 = zext i8 %1971 to i32
  %xor90.14.12 = xor i32 %conv84.14.12, %conv89.14.12
  %conv91.14.12 = trunc i32 %xor90.14.12 to i8
  %scevgep50.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 14
  store i8 %conv91.14.12, i8* %scevgep50.14.12, align 1
  %scevgep31.15.12 = getelementptr i8, i8* %b, i64 15
  %1972 = load i8, i8* %scevgep31.15.12, align 1
  %conv44.15.12 = zext i8 %1972 to i32
  %scevgep34.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 15
  %1973 = load i8, i8* %scevgep34.15.12, align 1
  %conv49.15.12 = zext i8 %1973 to i32
  %xor.15.12 = xor i32 %conv44.15.12, %conv49.15.12
  %conv50.15.12 = trunc i32 %xor.15.12 to i8
  %scevgep38.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 15
  store i8 %conv50.15.12, i8* %scevgep38.15.12, align 1
  %1974 = load i8, i8* %arrayidx56.12, align 1
  %conv57.15.12 = zext i8 %1974 to i32
  %xor58.15.12 = xor i32 %conv57.15.12, 1
  %conv59.15.12 = trunc i32 %xor58.15.12 to i8
  %scevgep35.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 0, i64 15
  %1975 = load i8, i8* %scevgep35.15.12, align 1
  %call64.15.12 = call zeroext i8 @mult(i8 zeroext %conv59.15.12, i8 zeroext %1975)
  %scevgep42.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 15
  store i8 %call64.15.12, i8* %scevgep42.15.12, align 1
  %1976 = load i8, i8* %arrayidx70.12, align 1
  %scevgep39.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 0, i64 15
  %1977 = load i8, i8* %scevgep39.15.12, align 1
  %call75.15.12 = call zeroext i8 @mult(i8 zeroext %1976, i8 zeroext %1977)
  %scevgep46.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 15
  store i8 %call75.15.12, i8* %scevgep46.15.12, align 1
  %scevgep43.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 0, i64 15
  %1978 = load i8, i8* %scevgep43.15.12, align 1
  %conv84.15.12 = zext i8 %1978 to i32
  %scevgep47.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 0, i64 15
  %1979 = load i8, i8* %scevgep47.15.12, align 1
  %conv89.15.12 = zext i8 %1979 to i32
  %xor90.15.12 = xor i32 %conv84.15.12, %conv89.15.12
  %conv91.15.12 = trunc i32 %xor90.15.12 to i8
  %scevgep50.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 0, i64 15
  store i8 %conv91.15.12, i8* %scevgep50.15.12, align 1
  %scevgep33.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1855, i64 0, i64 1, i64 0
  %1980 = bitcast i8* %scevgep33.12 to [16 x [16 x i8]]*
  %scevgep37.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1856, i64 0, i64 1, i64 0
  %1981 = bitcast i8* %scevgep37.12 to [16 x [16 x i8]]*
  %scevgep41.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1857, i64 0, i64 1, i64 0
  %1982 = bitcast i8* %scevgep41.12 to [16 x [16 x i8]]*
  %scevgep45.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1858, i64 0, i64 1, i64 0
  %1983 = bitcast i8* %scevgep45.12 to [16 x [16 x i8]]*
  %scevgep49.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1859, i64 0, i64 1, i64 0
  %1984 = bitcast i8* %scevgep49.12 to [16 x [16 x i8]]*
  %arrayidx56.13 = getelementptr inbounds i8, i8* %a, i64 13
  %arrayidx70.13 = getelementptr inbounds i8, i8* %a, i64 13
  %1985 = load i8, i8* %b, align 1
  %conv44.13552 = zext i8 %1985 to i32
  %scevgep34.13553 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 0
  %1986 = load i8, i8* %scevgep34.13553, align 1
  %conv49.13554 = zext i8 %1986 to i32
  %xor.13555 = xor i32 %conv44.13552, %conv49.13554
  %conv50.13556 = trunc i32 %xor.13555 to i8
  %scevgep38.13557 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 0
  store i8 %conv50.13556, i8* %scevgep38.13557, align 1
  %1987 = load i8, i8* %arrayidx56.13, align 1
  %conv57.13558 = zext i8 %1987 to i32
  %xor58.13559 = xor i32 %conv57.13558, 1
  %conv59.13560 = trunc i32 %xor58.13559 to i8
  %scevgep35.13561 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 0
  %1988 = load i8, i8* %scevgep35.13561, align 1
  %call64.13562 = call zeroext i8 @mult(i8 zeroext %conv59.13560, i8 zeroext %1988)
  %scevgep42.13563 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 0
  store i8 %call64.13562, i8* %scevgep42.13563, align 1
  %1989 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.13564 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 0
  %1990 = load i8, i8* %scevgep39.13564, align 1
  %call75.13565 = call zeroext i8 @mult(i8 zeroext %1989, i8 zeroext %1990)
  %scevgep46.13566 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 0
  store i8 %call75.13565, i8* %scevgep46.13566, align 1
  %scevgep43.13567 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 0
  %1991 = load i8, i8* %scevgep43.13567, align 1
  %conv84.13568 = zext i8 %1991 to i32
  %scevgep47.13569 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 0
  %1992 = load i8, i8* %scevgep47.13569, align 1
  %conv89.13570 = zext i8 %1992 to i32
  %xor90.13571 = xor i32 %conv84.13568, %conv89.13570
  %conv91.13572 = trunc i32 %xor90.13571 to i8
  %scevgep50.13573 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 0
  store i8 %conv91.13572, i8* %scevgep50.13573, align 1
  %scevgep31.1.13 = getelementptr i8, i8* %b, i64 1
  %1993 = load i8, i8* %scevgep31.1.13, align 1
  %conv44.1.13 = zext i8 %1993 to i32
  %scevgep34.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 1
  %1994 = load i8, i8* %scevgep34.1.13, align 1
  %conv49.1.13 = zext i8 %1994 to i32
  %xor.1.13 = xor i32 %conv44.1.13, %conv49.1.13
  %conv50.1.13 = trunc i32 %xor.1.13 to i8
  %scevgep38.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 1
  store i8 %conv50.1.13, i8* %scevgep38.1.13, align 1
  %1995 = load i8, i8* %arrayidx56.13, align 1
  %conv57.1.13 = zext i8 %1995 to i32
  %xor58.1.13 = xor i32 %conv57.1.13, 1
  %conv59.1.13 = trunc i32 %xor58.1.13 to i8
  %scevgep35.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 1
  %1996 = load i8, i8* %scevgep35.1.13, align 1
  %call64.1.13 = call zeroext i8 @mult(i8 zeroext %conv59.1.13, i8 zeroext %1996)
  %scevgep42.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 1
  store i8 %call64.1.13, i8* %scevgep42.1.13, align 1
  %1997 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 1
  %1998 = load i8, i8* %scevgep39.1.13, align 1
  %call75.1.13 = call zeroext i8 @mult(i8 zeroext %1997, i8 zeroext %1998)
  %scevgep46.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 1
  store i8 %call75.1.13, i8* %scevgep46.1.13, align 1
  %scevgep43.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 1
  %1999 = load i8, i8* %scevgep43.1.13, align 1
  %conv84.1.13 = zext i8 %1999 to i32
  %scevgep47.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 1
  %2000 = load i8, i8* %scevgep47.1.13, align 1
  %conv89.1.13 = zext i8 %2000 to i32
  %xor90.1.13 = xor i32 %conv84.1.13, %conv89.1.13
  %conv91.1.13 = trunc i32 %xor90.1.13 to i8
  %scevgep50.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 1
  store i8 %conv91.1.13, i8* %scevgep50.1.13, align 1
  %scevgep31.2.13 = getelementptr i8, i8* %b, i64 2
  %2001 = load i8, i8* %scevgep31.2.13, align 1
  %conv44.2.13 = zext i8 %2001 to i32
  %scevgep34.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 2
  %2002 = load i8, i8* %scevgep34.2.13, align 1
  %conv49.2.13 = zext i8 %2002 to i32
  %xor.2.13 = xor i32 %conv44.2.13, %conv49.2.13
  %conv50.2.13 = trunc i32 %xor.2.13 to i8
  %scevgep38.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 2
  store i8 %conv50.2.13, i8* %scevgep38.2.13, align 1
  %2003 = load i8, i8* %arrayidx56.13, align 1
  %conv57.2.13 = zext i8 %2003 to i32
  %xor58.2.13 = xor i32 %conv57.2.13, 1
  %conv59.2.13 = trunc i32 %xor58.2.13 to i8
  %scevgep35.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 2
  %2004 = load i8, i8* %scevgep35.2.13, align 1
  %call64.2.13 = call zeroext i8 @mult(i8 zeroext %conv59.2.13, i8 zeroext %2004)
  %scevgep42.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 2
  store i8 %call64.2.13, i8* %scevgep42.2.13, align 1
  %2005 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 2
  %2006 = load i8, i8* %scevgep39.2.13, align 1
  %call75.2.13 = call zeroext i8 @mult(i8 zeroext %2005, i8 zeroext %2006)
  %scevgep46.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 2
  store i8 %call75.2.13, i8* %scevgep46.2.13, align 1
  %scevgep43.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 2
  %2007 = load i8, i8* %scevgep43.2.13, align 1
  %conv84.2.13 = zext i8 %2007 to i32
  %scevgep47.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 2
  %2008 = load i8, i8* %scevgep47.2.13, align 1
  %conv89.2.13 = zext i8 %2008 to i32
  %xor90.2.13 = xor i32 %conv84.2.13, %conv89.2.13
  %conv91.2.13 = trunc i32 %xor90.2.13 to i8
  %scevgep50.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 2
  store i8 %conv91.2.13, i8* %scevgep50.2.13, align 1
  %scevgep31.3.13 = getelementptr i8, i8* %b, i64 3
  %2009 = load i8, i8* %scevgep31.3.13, align 1
  %conv44.3.13 = zext i8 %2009 to i32
  %scevgep34.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 3
  %2010 = load i8, i8* %scevgep34.3.13, align 1
  %conv49.3.13 = zext i8 %2010 to i32
  %xor.3.13 = xor i32 %conv44.3.13, %conv49.3.13
  %conv50.3.13 = trunc i32 %xor.3.13 to i8
  %scevgep38.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 3
  store i8 %conv50.3.13, i8* %scevgep38.3.13, align 1
  %2011 = load i8, i8* %arrayidx56.13, align 1
  %conv57.3.13 = zext i8 %2011 to i32
  %xor58.3.13 = xor i32 %conv57.3.13, 1
  %conv59.3.13 = trunc i32 %xor58.3.13 to i8
  %scevgep35.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 3
  %2012 = load i8, i8* %scevgep35.3.13, align 1
  %call64.3.13 = call zeroext i8 @mult(i8 zeroext %conv59.3.13, i8 zeroext %2012)
  %scevgep42.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 3
  store i8 %call64.3.13, i8* %scevgep42.3.13, align 1
  %2013 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 3
  %2014 = load i8, i8* %scevgep39.3.13, align 1
  %call75.3.13 = call zeroext i8 @mult(i8 zeroext %2013, i8 zeroext %2014)
  %scevgep46.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 3
  store i8 %call75.3.13, i8* %scevgep46.3.13, align 1
  %scevgep43.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 3
  %2015 = load i8, i8* %scevgep43.3.13, align 1
  %conv84.3.13 = zext i8 %2015 to i32
  %scevgep47.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 3
  %2016 = load i8, i8* %scevgep47.3.13, align 1
  %conv89.3.13 = zext i8 %2016 to i32
  %xor90.3.13 = xor i32 %conv84.3.13, %conv89.3.13
  %conv91.3.13 = trunc i32 %xor90.3.13 to i8
  %scevgep50.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 3
  store i8 %conv91.3.13, i8* %scevgep50.3.13, align 1
  %scevgep31.4.13 = getelementptr i8, i8* %b, i64 4
  %2017 = load i8, i8* %scevgep31.4.13, align 1
  %conv44.4.13 = zext i8 %2017 to i32
  %scevgep34.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 4
  %2018 = load i8, i8* %scevgep34.4.13, align 1
  %conv49.4.13 = zext i8 %2018 to i32
  %xor.4.13 = xor i32 %conv44.4.13, %conv49.4.13
  %conv50.4.13 = trunc i32 %xor.4.13 to i8
  %scevgep38.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 4
  store i8 %conv50.4.13, i8* %scevgep38.4.13, align 1
  %2019 = load i8, i8* %arrayidx56.13, align 1
  %conv57.4.13 = zext i8 %2019 to i32
  %xor58.4.13 = xor i32 %conv57.4.13, 1
  %conv59.4.13 = trunc i32 %xor58.4.13 to i8
  %scevgep35.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 4
  %2020 = load i8, i8* %scevgep35.4.13, align 1
  %call64.4.13 = call zeroext i8 @mult(i8 zeroext %conv59.4.13, i8 zeroext %2020)
  %scevgep42.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 4
  store i8 %call64.4.13, i8* %scevgep42.4.13, align 1
  %2021 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 4
  %2022 = load i8, i8* %scevgep39.4.13, align 1
  %call75.4.13 = call zeroext i8 @mult(i8 zeroext %2021, i8 zeroext %2022)
  %scevgep46.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 4
  store i8 %call75.4.13, i8* %scevgep46.4.13, align 1
  %scevgep43.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 4
  %2023 = load i8, i8* %scevgep43.4.13, align 1
  %conv84.4.13 = zext i8 %2023 to i32
  %scevgep47.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 4
  %2024 = load i8, i8* %scevgep47.4.13, align 1
  %conv89.4.13 = zext i8 %2024 to i32
  %xor90.4.13 = xor i32 %conv84.4.13, %conv89.4.13
  %conv91.4.13 = trunc i32 %xor90.4.13 to i8
  %scevgep50.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 4
  store i8 %conv91.4.13, i8* %scevgep50.4.13, align 1
  %scevgep31.5.13 = getelementptr i8, i8* %b, i64 5
  %2025 = load i8, i8* %scevgep31.5.13, align 1
  %conv44.5.13 = zext i8 %2025 to i32
  %scevgep34.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 5
  %2026 = load i8, i8* %scevgep34.5.13, align 1
  %conv49.5.13 = zext i8 %2026 to i32
  %xor.5.13 = xor i32 %conv44.5.13, %conv49.5.13
  %conv50.5.13 = trunc i32 %xor.5.13 to i8
  %scevgep38.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 5
  store i8 %conv50.5.13, i8* %scevgep38.5.13, align 1
  %2027 = load i8, i8* %arrayidx56.13, align 1
  %conv57.5.13 = zext i8 %2027 to i32
  %xor58.5.13 = xor i32 %conv57.5.13, 1
  %conv59.5.13 = trunc i32 %xor58.5.13 to i8
  %scevgep35.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 5
  %2028 = load i8, i8* %scevgep35.5.13, align 1
  %call64.5.13 = call zeroext i8 @mult(i8 zeroext %conv59.5.13, i8 zeroext %2028)
  %scevgep42.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 5
  store i8 %call64.5.13, i8* %scevgep42.5.13, align 1
  %2029 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 5
  %2030 = load i8, i8* %scevgep39.5.13, align 1
  %call75.5.13 = call zeroext i8 @mult(i8 zeroext %2029, i8 zeroext %2030)
  %scevgep46.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 5
  store i8 %call75.5.13, i8* %scevgep46.5.13, align 1
  %scevgep43.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 5
  %2031 = load i8, i8* %scevgep43.5.13, align 1
  %conv84.5.13 = zext i8 %2031 to i32
  %scevgep47.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 5
  %2032 = load i8, i8* %scevgep47.5.13, align 1
  %conv89.5.13 = zext i8 %2032 to i32
  %xor90.5.13 = xor i32 %conv84.5.13, %conv89.5.13
  %conv91.5.13 = trunc i32 %xor90.5.13 to i8
  %scevgep50.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 5
  store i8 %conv91.5.13, i8* %scevgep50.5.13, align 1
  %scevgep31.6.13 = getelementptr i8, i8* %b, i64 6
  %2033 = load i8, i8* %scevgep31.6.13, align 1
  %conv44.6.13 = zext i8 %2033 to i32
  %scevgep34.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 6
  %2034 = load i8, i8* %scevgep34.6.13, align 1
  %conv49.6.13 = zext i8 %2034 to i32
  %xor.6.13 = xor i32 %conv44.6.13, %conv49.6.13
  %conv50.6.13 = trunc i32 %xor.6.13 to i8
  %scevgep38.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 6
  store i8 %conv50.6.13, i8* %scevgep38.6.13, align 1
  %2035 = load i8, i8* %arrayidx56.13, align 1
  %conv57.6.13 = zext i8 %2035 to i32
  %xor58.6.13 = xor i32 %conv57.6.13, 1
  %conv59.6.13 = trunc i32 %xor58.6.13 to i8
  %scevgep35.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 6
  %2036 = load i8, i8* %scevgep35.6.13, align 1
  %call64.6.13 = call zeroext i8 @mult(i8 zeroext %conv59.6.13, i8 zeroext %2036)
  %scevgep42.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 6
  store i8 %call64.6.13, i8* %scevgep42.6.13, align 1
  %2037 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 6
  %2038 = load i8, i8* %scevgep39.6.13, align 1
  %call75.6.13 = call zeroext i8 @mult(i8 zeroext %2037, i8 zeroext %2038)
  %scevgep46.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 6
  store i8 %call75.6.13, i8* %scevgep46.6.13, align 1
  %scevgep43.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 6
  %2039 = load i8, i8* %scevgep43.6.13, align 1
  %conv84.6.13 = zext i8 %2039 to i32
  %scevgep47.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 6
  %2040 = load i8, i8* %scevgep47.6.13, align 1
  %conv89.6.13 = zext i8 %2040 to i32
  %xor90.6.13 = xor i32 %conv84.6.13, %conv89.6.13
  %conv91.6.13 = trunc i32 %xor90.6.13 to i8
  %scevgep50.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 6
  store i8 %conv91.6.13, i8* %scevgep50.6.13, align 1
  %scevgep31.7.13 = getelementptr i8, i8* %b, i64 7
  %2041 = load i8, i8* %scevgep31.7.13, align 1
  %conv44.7.13 = zext i8 %2041 to i32
  %scevgep34.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 7
  %2042 = load i8, i8* %scevgep34.7.13, align 1
  %conv49.7.13 = zext i8 %2042 to i32
  %xor.7.13 = xor i32 %conv44.7.13, %conv49.7.13
  %conv50.7.13 = trunc i32 %xor.7.13 to i8
  %scevgep38.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 7
  store i8 %conv50.7.13, i8* %scevgep38.7.13, align 1
  %2043 = load i8, i8* %arrayidx56.13, align 1
  %conv57.7.13 = zext i8 %2043 to i32
  %xor58.7.13 = xor i32 %conv57.7.13, 1
  %conv59.7.13 = trunc i32 %xor58.7.13 to i8
  %scevgep35.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 7
  %2044 = load i8, i8* %scevgep35.7.13, align 1
  %call64.7.13 = call zeroext i8 @mult(i8 zeroext %conv59.7.13, i8 zeroext %2044)
  %scevgep42.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 7
  store i8 %call64.7.13, i8* %scevgep42.7.13, align 1
  %2045 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 7
  %2046 = load i8, i8* %scevgep39.7.13, align 1
  %call75.7.13 = call zeroext i8 @mult(i8 zeroext %2045, i8 zeroext %2046)
  %scevgep46.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 7
  store i8 %call75.7.13, i8* %scevgep46.7.13, align 1
  %scevgep43.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 7
  %2047 = load i8, i8* %scevgep43.7.13, align 1
  %conv84.7.13 = zext i8 %2047 to i32
  %scevgep47.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 7
  %2048 = load i8, i8* %scevgep47.7.13, align 1
  %conv89.7.13 = zext i8 %2048 to i32
  %xor90.7.13 = xor i32 %conv84.7.13, %conv89.7.13
  %conv91.7.13 = trunc i32 %xor90.7.13 to i8
  %scevgep50.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 7
  store i8 %conv91.7.13, i8* %scevgep50.7.13, align 1
  %scevgep31.8.13 = getelementptr i8, i8* %b, i64 8
  %2049 = load i8, i8* %scevgep31.8.13, align 1
  %conv44.8.13 = zext i8 %2049 to i32
  %scevgep34.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 8
  %2050 = load i8, i8* %scevgep34.8.13, align 1
  %conv49.8.13 = zext i8 %2050 to i32
  %xor.8.13 = xor i32 %conv44.8.13, %conv49.8.13
  %conv50.8.13 = trunc i32 %xor.8.13 to i8
  %scevgep38.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 8
  store i8 %conv50.8.13, i8* %scevgep38.8.13, align 1
  %2051 = load i8, i8* %arrayidx56.13, align 1
  %conv57.8.13 = zext i8 %2051 to i32
  %xor58.8.13 = xor i32 %conv57.8.13, 1
  %conv59.8.13 = trunc i32 %xor58.8.13 to i8
  %scevgep35.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 8
  %2052 = load i8, i8* %scevgep35.8.13, align 1
  %call64.8.13 = call zeroext i8 @mult(i8 zeroext %conv59.8.13, i8 zeroext %2052)
  %scevgep42.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 8
  store i8 %call64.8.13, i8* %scevgep42.8.13, align 1
  %2053 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 8
  %2054 = load i8, i8* %scevgep39.8.13, align 1
  %call75.8.13 = call zeroext i8 @mult(i8 zeroext %2053, i8 zeroext %2054)
  %scevgep46.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 8
  store i8 %call75.8.13, i8* %scevgep46.8.13, align 1
  %scevgep43.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 8
  %2055 = load i8, i8* %scevgep43.8.13, align 1
  %conv84.8.13 = zext i8 %2055 to i32
  %scevgep47.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 8
  %2056 = load i8, i8* %scevgep47.8.13, align 1
  %conv89.8.13 = zext i8 %2056 to i32
  %xor90.8.13 = xor i32 %conv84.8.13, %conv89.8.13
  %conv91.8.13 = trunc i32 %xor90.8.13 to i8
  %scevgep50.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 8
  store i8 %conv91.8.13, i8* %scevgep50.8.13, align 1
  %scevgep31.9.13 = getelementptr i8, i8* %b, i64 9
  %2057 = load i8, i8* %scevgep31.9.13, align 1
  %conv44.9.13 = zext i8 %2057 to i32
  %scevgep34.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 9
  %2058 = load i8, i8* %scevgep34.9.13, align 1
  %conv49.9.13 = zext i8 %2058 to i32
  %xor.9.13 = xor i32 %conv44.9.13, %conv49.9.13
  %conv50.9.13 = trunc i32 %xor.9.13 to i8
  %scevgep38.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 9
  store i8 %conv50.9.13, i8* %scevgep38.9.13, align 1
  %2059 = load i8, i8* %arrayidx56.13, align 1
  %conv57.9.13 = zext i8 %2059 to i32
  %xor58.9.13 = xor i32 %conv57.9.13, 1
  %conv59.9.13 = trunc i32 %xor58.9.13 to i8
  %scevgep35.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 9
  %2060 = load i8, i8* %scevgep35.9.13, align 1
  %call64.9.13 = call zeroext i8 @mult(i8 zeroext %conv59.9.13, i8 zeroext %2060)
  %scevgep42.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 9
  store i8 %call64.9.13, i8* %scevgep42.9.13, align 1
  %2061 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 9
  %2062 = load i8, i8* %scevgep39.9.13, align 1
  %call75.9.13 = call zeroext i8 @mult(i8 zeroext %2061, i8 zeroext %2062)
  %scevgep46.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 9
  store i8 %call75.9.13, i8* %scevgep46.9.13, align 1
  %scevgep43.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 9
  %2063 = load i8, i8* %scevgep43.9.13, align 1
  %conv84.9.13 = zext i8 %2063 to i32
  %scevgep47.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 9
  %2064 = load i8, i8* %scevgep47.9.13, align 1
  %conv89.9.13 = zext i8 %2064 to i32
  %xor90.9.13 = xor i32 %conv84.9.13, %conv89.9.13
  %conv91.9.13 = trunc i32 %xor90.9.13 to i8
  %scevgep50.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 9
  store i8 %conv91.9.13, i8* %scevgep50.9.13, align 1
  %scevgep31.10.13 = getelementptr i8, i8* %b, i64 10
  %2065 = load i8, i8* %scevgep31.10.13, align 1
  %conv44.10.13 = zext i8 %2065 to i32
  %scevgep34.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 10
  %2066 = load i8, i8* %scevgep34.10.13, align 1
  %conv49.10.13 = zext i8 %2066 to i32
  %xor.10.13 = xor i32 %conv44.10.13, %conv49.10.13
  %conv50.10.13 = trunc i32 %xor.10.13 to i8
  %scevgep38.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 10
  store i8 %conv50.10.13, i8* %scevgep38.10.13, align 1
  %2067 = load i8, i8* %arrayidx56.13, align 1
  %conv57.10.13 = zext i8 %2067 to i32
  %xor58.10.13 = xor i32 %conv57.10.13, 1
  %conv59.10.13 = trunc i32 %xor58.10.13 to i8
  %scevgep35.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 10
  %2068 = load i8, i8* %scevgep35.10.13, align 1
  %call64.10.13 = call zeroext i8 @mult(i8 zeroext %conv59.10.13, i8 zeroext %2068)
  %scevgep42.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 10
  store i8 %call64.10.13, i8* %scevgep42.10.13, align 1
  %2069 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 10
  %2070 = load i8, i8* %scevgep39.10.13, align 1
  %call75.10.13 = call zeroext i8 @mult(i8 zeroext %2069, i8 zeroext %2070)
  %scevgep46.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 10
  store i8 %call75.10.13, i8* %scevgep46.10.13, align 1
  %scevgep43.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 10
  %2071 = load i8, i8* %scevgep43.10.13, align 1
  %conv84.10.13 = zext i8 %2071 to i32
  %scevgep47.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 10
  %2072 = load i8, i8* %scevgep47.10.13, align 1
  %conv89.10.13 = zext i8 %2072 to i32
  %xor90.10.13 = xor i32 %conv84.10.13, %conv89.10.13
  %conv91.10.13 = trunc i32 %xor90.10.13 to i8
  %scevgep50.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 10
  store i8 %conv91.10.13, i8* %scevgep50.10.13, align 1
  %scevgep31.11.13 = getelementptr i8, i8* %b, i64 11
  %2073 = load i8, i8* %scevgep31.11.13, align 1
  %conv44.11.13 = zext i8 %2073 to i32
  %scevgep34.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 11
  %2074 = load i8, i8* %scevgep34.11.13, align 1
  %conv49.11.13 = zext i8 %2074 to i32
  %xor.11.13 = xor i32 %conv44.11.13, %conv49.11.13
  %conv50.11.13 = trunc i32 %xor.11.13 to i8
  %scevgep38.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 11
  store i8 %conv50.11.13, i8* %scevgep38.11.13, align 1
  %2075 = load i8, i8* %arrayidx56.13, align 1
  %conv57.11.13 = zext i8 %2075 to i32
  %xor58.11.13 = xor i32 %conv57.11.13, 1
  %conv59.11.13 = trunc i32 %xor58.11.13 to i8
  %scevgep35.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 11
  %2076 = load i8, i8* %scevgep35.11.13, align 1
  %call64.11.13 = call zeroext i8 @mult(i8 zeroext %conv59.11.13, i8 zeroext %2076)
  %scevgep42.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 11
  store i8 %call64.11.13, i8* %scevgep42.11.13, align 1
  %2077 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 11
  %2078 = load i8, i8* %scevgep39.11.13, align 1
  %call75.11.13 = call zeroext i8 @mult(i8 zeroext %2077, i8 zeroext %2078)
  %scevgep46.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 11
  store i8 %call75.11.13, i8* %scevgep46.11.13, align 1
  %scevgep43.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 11
  %2079 = load i8, i8* %scevgep43.11.13, align 1
  %conv84.11.13 = zext i8 %2079 to i32
  %scevgep47.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 11
  %2080 = load i8, i8* %scevgep47.11.13, align 1
  %conv89.11.13 = zext i8 %2080 to i32
  %xor90.11.13 = xor i32 %conv84.11.13, %conv89.11.13
  %conv91.11.13 = trunc i32 %xor90.11.13 to i8
  %scevgep50.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 11
  store i8 %conv91.11.13, i8* %scevgep50.11.13, align 1
  %scevgep31.12.13 = getelementptr i8, i8* %b, i64 12
  %2081 = load i8, i8* %scevgep31.12.13, align 1
  %conv44.12.13 = zext i8 %2081 to i32
  %scevgep34.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 12
  %2082 = load i8, i8* %scevgep34.12.13, align 1
  %conv49.12.13 = zext i8 %2082 to i32
  %xor.12.13 = xor i32 %conv44.12.13, %conv49.12.13
  %conv50.12.13 = trunc i32 %xor.12.13 to i8
  %scevgep38.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 12
  store i8 %conv50.12.13, i8* %scevgep38.12.13, align 1
  %2083 = load i8, i8* %arrayidx56.13, align 1
  %conv57.12.13 = zext i8 %2083 to i32
  %xor58.12.13 = xor i32 %conv57.12.13, 1
  %conv59.12.13 = trunc i32 %xor58.12.13 to i8
  %scevgep35.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 12
  %2084 = load i8, i8* %scevgep35.12.13, align 1
  %call64.12.13 = call zeroext i8 @mult(i8 zeroext %conv59.12.13, i8 zeroext %2084)
  %scevgep42.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 12
  store i8 %call64.12.13, i8* %scevgep42.12.13, align 1
  %2085 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 12
  %2086 = load i8, i8* %scevgep39.12.13, align 1
  %call75.12.13 = call zeroext i8 @mult(i8 zeroext %2085, i8 zeroext %2086)
  %scevgep46.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 12
  store i8 %call75.12.13, i8* %scevgep46.12.13, align 1
  %scevgep43.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 12
  %2087 = load i8, i8* %scevgep43.12.13, align 1
  %conv84.12.13 = zext i8 %2087 to i32
  %scevgep47.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 12
  %2088 = load i8, i8* %scevgep47.12.13, align 1
  %conv89.12.13 = zext i8 %2088 to i32
  %xor90.12.13 = xor i32 %conv84.12.13, %conv89.12.13
  %conv91.12.13 = trunc i32 %xor90.12.13 to i8
  %scevgep50.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 12
  store i8 %conv91.12.13, i8* %scevgep50.12.13, align 1
  %scevgep31.14.13 = getelementptr i8, i8* %b, i64 14
  %2089 = load i8, i8* %scevgep31.14.13, align 1
  %conv44.14.13 = zext i8 %2089 to i32
  %scevgep34.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 14
  %2090 = load i8, i8* %scevgep34.14.13, align 1
  %conv49.14.13 = zext i8 %2090 to i32
  %xor.14.13 = xor i32 %conv44.14.13, %conv49.14.13
  %conv50.14.13 = trunc i32 %xor.14.13 to i8
  %scevgep38.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 14
  store i8 %conv50.14.13, i8* %scevgep38.14.13, align 1
  %2091 = load i8, i8* %arrayidx56.13, align 1
  %conv57.14.13 = zext i8 %2091 to i32
  %xor58.14.13 = xor i32 %conv57.14.13, 1
  %conv59.14.13 = trunc i32 %xor58.14.13 to i8
  %scevgep35.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 14
  %2092 = load i8, i8* %scevgep35.14.13, align 1
  %call64.14.13 = call zeroext i8 @mult(i8 zeroext %conv59.14.13, i8 zeroext %2092)
  %scevgep42.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 14
  store i8 %call64.14.13, i8* %scevgep42.14.13, align 1
  %2093 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 14
  %2094 = load i8, i8* %scevgep39.14.13, align 1
  %call75.14.13 = call zeroext i8 @mult(i8 zeroext %2093, i8 zeroext %2094)
  %scevgep46.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 14
  store i8 %call75.14.13, i8* %scevgep46.14.13, align 1
  %scevgep43.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 14
  %2095 = load i8, i8* %scevgep43.14.13, align 1
  %conv84.14.13 = zext i8 %2095 to i32
  %scevgep47.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 14
  %2096 = load i8, i8* %scevgep47.14.13, align 1
  %conv89.14.13 = zext i8 %2096 to i32
  %xor90.14.13 = xor i32 %conv84.14.13, %conv89.14.13
  %conv91.14.13 = trunc i32 %xor90.14.13 to i8
  %scevgep50.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 14
  store i8 %conv91.14.13, i8* %scevgep50.14.13, align 1
  %scevgep31.15.13 = getelementptr i8, i8* %b, i64 15
  %2097 = load i8, i8* %scevgep31.15.13, align 1
  %conv44.15.13 = zext i8 %2097 to i32
  %scevgep34.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 15
  %2098 = load i8, i8* %scevgep34.15.13, align 1
  %conv49.15.13 = zext i8 %2098 to i32
  %xor.15.13 = xor i32 %conv44.15.13, %conv49.15.13
  %conv50.15.13 = trunc i32 %xor.15.13 to i8
  %scevgep38.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 15
  store i8 %conv50.15.13, i8* %scevgep38.15.13, align 1
  %2099 = load i8, i8* %arrayidx56.13, align 1
  %conv57.15.13 = zext i8 %2099 to i32
  %xor58.15.13 = xor i32 %conv57.15.13, 1
  %conv59.15.13 = trunc i32 %xor58.15.13 to i8
  %scevgep35.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 0, i64 15
  %2100 = load i8, i8* %scevgep35.15.13, align 1
  %call64.15.13 = call zeroext i8 @mult(i8 zeroext %conv59.15.13, i8 zeroext %2100)
  %scevgep42.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 15
  store i8 %call64.15.13, i8* %scevgep42.15.13, align 1
  %2101 = load i8, i8* %arrayidx70.13, align 1
  %scevgep39.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 0, i64 15
  %2102 = load i8, i8* %scevgep39.15.13, align 1
  %call75.15.13 = call zeroext i8 @mult(i8 zeroext %2101, i8 zeroext %2102)
  %scevgep46.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 15
  store i8 %call75.15.13, i8* %scevgep46.15.13, align 1
  %scevgep43.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 0, i64 15
  %2103 = load i8, i8* %scevgep43.15.13, align 1
  %conv84.15.13 = zext i8 %2103 to i32
  %scevgep47.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 0, i64 15
  %2104 = load i8, i8* %scevgep47.15.13, align 1
  %conv89.15.13 = zext i8 %2104 to i32
  %xor90.15.13 = xor i32 %conv84.15.13, %conv89.15.13
  %conv91.15.13 = trunc i32 %xor90.15.13 to i8
  %scevgep50.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 0, i64 15
  store i8 %conv91.15.13, i8* %scevgep50.15.13, align 1
  %scevgep33.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1980, i64 0, i64 1, i64 0
  %2105 = bitcast i8* %scevgep33.13 to [16 x [16 x i8]]*
  %scevgep37.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1981, i64 0, i64 1, i64 0
  %2106 = bitcast i8* %scevgep37.13 to [16 x [16 x i8]]*
  %scevgep41.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1982, i64 0, i64 1, i64 0
  %2107 = bitcast i8* %scevgep41.13 to [16 x [16 x i8]]*
  %scevgep45.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1983, i64 0, i64 1, i64 0
  %2108 = bitcast i8* %scevgep45.13 to [16 x [16 x i8]]*
  %scevgep49.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1984, i64 0, i64 1, i64 0
  %2109 = bitcast i8* %scevgep49.13 to [16 x [16 x i8]]*
  %arrayidx56.14 = getelementptr inbounds i8, i8* %a, i64 14
  %arrayidx70.14 = getelementptr inbounds i8, i8* %a, i64 14
  %2110 = load i8, i8* %b, align 1
  %conv44.14579 = zext i8 %2110 to i32
  %scevgep34.14580 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 0
  %2111 = load i8, i8* %scevgep34.14580, align 1
  %conv49.14581 = zext i8 %2111 to i32
  %xor.14582 = xor i32 %conv44.14579, %conv49.14581
  %conv50.14583 = trunc i32 %xor.14582 to i8
  %scevgep38.14584 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 0
  store i8 %conv50.14583, i8* %scevgep38.14584, align 1
  %2112 = load i8, i8* %arrayidx56.14, align 1
  %conv57.14585 = zext i8 %2112 to i32
  %xor58.14586 = xor i32 %conv57.14585, 1
  %conv59.14587 = trunc i32 %xor58.14586 to i8
  %scevgep35.14588 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 0
  %2113 = load i8, i8* %scevgep35.14588, align 1
  %call64.14589 = call zeroext i8 @mult(i8 zeroext %conv59.14587, i8 zeroext %2113)
  %scevgep42.14590 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 0
  store i8 %call64.14589, i8* %scevgep42.14590, align 1
  %2114 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.14591 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 0
  %2115 = load i8, i8* %scevgep39.14591, align 1
  %call75.14592 = call zeroext i8 @mult(i8 zeroext %2114, i8 zeroext %2115)
  %scevgep46.14593 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 0
  store i8 %call75.14592, i8* %scevgep46.14593, align 1
  %scevgep43.14594 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 0
  %2116 = load i8, i8* %scevgep43.14594, align 1
  %conv84.14595 = zext i8 %2116 to i32
  %scevgep47.14596 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 0
  %2117 = load i8, i8* %scevgep47.14596, align 1
  %conv89.14597 = zext i8 %2117 to i32
  %xor90.14598 = xor i32 %conv84.14595, %conv89.14597
  %conv91.14599 = trunc i32 %xor90.14598 to i8
  %scevgep50.14600 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 0
  store i8 %conv91.14599, i8* %scevgep50.14600, align 1
  %scevgep31.1.14 = getelementptr i8, i8* %b, i64 1
  %2118 = load i8, i8* %scevgep31.1.14, align 1
  %conv44.1.14 = zext i8 %2118 to i32
  %scevgep34.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 1
  %2119 = load i8, i8* %scevgep34.1.14, align 1
  %conv49.1.14 = zext i8 %2119 to i32
  %xor.1.14 = xor i32 %conv44.1.14, %conv49.1.14
  %conv50.1.14 = trunc i32 %xor.1.14 to i8
  %scevgep38.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 1
  store i8 %conv50.1.14, i8* %scevgep38.1.14, align 1
  %2120 = load i8, i8* %arrayidx56.14, align 1
  %conv57.1.14 = zext i8 %2120 to i32
  %xor58.1.14 = xor i32 %conv57.1.14, 1
  %conv59.1.14 = trunc i32 %xor58.1.14 to i8
  %scevgep35.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 1
  %2121 = load i8, i8* %scevgep35.1.14, align 1
  %call64.1.14 = call zeroext i8 @mult(i8 zeroext %conv59.1.14, i8 zeroext %2121)
  %scevgep42.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 1
  store i8 %call64.1.14, i8* %scevgep42.1.14, align 1
  %2122 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 1
  %2123 = load i8, i8* %scevgep39.1.14, align 1
  %call75.1.14 = call zeroext i8 @mult(i8 zeroext %2122, i8 zeroext %2123)
  %scevgep46.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 1
  store i8 %call75.1.14, i8* %scevgep46.1.14, align 1
  %scevgep43.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 1
  %2124 = load i8, i8* %scevgep43.1.14, align 1
  %conv84.1.14 = zext i8 %2124 to i32
  %scevgep47.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 1
  %2125 = load i8, i8* %scevgep47.1.14, align 1
  %conv89.1.14 = zext i8 %2125 to i32
  %xor90.1.14 = xor i32 %conv84.1.14, %conv89.1.14
  %conv91.1.14 = trunc i32 %xor90.1.14 to i8
  %scevgep50.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 1
  store i8 %conv91.1.14, i8* %scevgep50.1.14, align 1
  %scevgep31.2.14 = getelementptr i8, i8* %b, i64 2
  %2126 = load i8, i8* %scevgep31.2.14, align 1
  %conv44.2.14 = zext i8 %2126 to i32
  %scevgep34.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 2
  %2127 = load i8, i8* %scevgep34.2.14, align 1
  %conv49.2.14 = zext i8 %2127 to i32
  %xor.2.14 = xor i32 %conv44.2.14, %conv49.2.14
  %conv50.2.14 = trunc i32 %xor.2.14 to i8
  %scevgep38.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 2
  store i8 %conv50.2.14, i8* %scevgep38.2.14, align 1
  %2128 = load i8, i8* %arrayidx56.14, align 1
  %conv57.2.14 = zext i8 %2128 to i32
  %xor58.2.14 = xor i32 %conv57.2.14, 1
  %conv59.2.14 = trunc i32 %xor58.2.14 to i8
  %scevgep35.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 2
  %2129 = load i8, i8* %scevgep35.2.14, align 1
  %call64.2.14 = call zeroext i8 @mult(i8 zeroext %conv59.2.14, i8 zeroext %2129)
  %scevgep42.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 2
  store i8 %call64.2.14, i8* %scevgep42.2.14, align 1
  %2130 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 2
  %2131 = load i8, i8* %scevgep39.2.14, align 1
  %call75.2.14 = call zeroext i8 @mult(i8 zeroext %2130, i8 zeroext %2131)
  %scevgep46.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 2
  store i8 %call75.2.14, i8* %scevgep46.2.14, align 1
  %scevgep43.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 2
  %2132 = load i8, i8* %scevgep43.2.14, align 1
  %conv84.2.14 = zext i8 %2132 to i32
  %scevgep47.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 2
  %2133 = load i8, i8* %scevgep47.2.14, align 1
  %conv89.2.14 = zext i8 %2133 to i32
  %xor90.2.14 = xor i32 %conv84.2.14, %conv89.2.14
  %conv91.2.14 = trunc i32 %xor90.2.14 to i8
  %scevgep50.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 2
  store i8 %conv91.2.14, i8* %scevgep50.2.14, align 1
  %scevgep31.3.14 = getelementptr i8, i8* %b, i64 3
  %2134 = load i8, i8* %scevgep31.3.14, align 1
  %conv44.3.14 = zext i8 %2134 to i32
  %scevgep34.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 3
  %2135 = load i8, i8* %scevgep34.3.14, align 1
  %conv49.3.14 = zext i8 %2135 to i32
  %xor.3.14 = xor i32 %conv44.3.14, %conv49.3.14
  %conv50.3.14 = trunc i32 %xor.3.14 to i8
  %scevgep38.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 3
  store i8 %conv50.3.14, i8* %scevgep38.3.14, align 1
  %2136 = load i8, i8* %arrayidx56.14, align 1
  %conv57.3.14 = zext i8 %2136 to i32
  %xor58.3.14 = xor i32 %conv57.3.14, 1
  %conv59.3.14 = trunc i32 %xor58.3.14 to i8
  %scevgep35.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 3
  %2137 = load i8, i8* %scevgep35.3.14, align 1
  %call64.3.14 = call zeroext i8 @mult(i8 zeroext %conv59.3.14, i8 zeroext %2137)
  %scevgep42.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 3
  store i8 %call64.3.14, i8* %scevgep42.3.14, align 1
  %2138 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 3
  %2139 = load i8, i8* %scevgep39.3.14, align 1
  %call75.3.14 = call zeroext i8 @mult(i8 zeroext %2138, i8 zeroext %2139)
  %scevgep46.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 3
  store i8 %call75.3.14, i8* %scevgep46.3.14, align 1
  %scevgep43.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 3
  %2140 = load i8, i8* %scevgep43.3.14, align 1
  %conv84.3.14 = zext i8 %2140 to i32
  %scevgep47.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 3
  %2141 = load i8, i8* %scevgep47.3.14, align 1
  %conv89.3.14 = zext i8 %2141 to i32
  %xor90.3.14 = xor i32 %conv84.3.14, %conv89.3.14
  %conv91.3.14 = trunc i32 %xor90.3.14 to i8
  %scevgep50.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 3
  store i8 %conv91.3.14, i8* %scevgep50.3.14, align 1
  %scevgep31.4.14 = getelementptr i8, i8* %b, i64 4
  %2142 = load i8, i8* %scevgep31.4.14, align 1
  %conv44.4.14 = zext i8 %2142 to i32
  %scevgep34.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 4
  %2143 = load i8, i8* %scevgep34.4.14, align 1
  %conv49.4.14 = zext i8 %2143 to i32
  %xor.4.14 = xor i32 %conv44.4.14, %conv49.4.14
  %conv50.4.14 = trunc i32 %xor.4.14 to i8
  %scevgep38.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 4
  store i8 %conv50.4.14, i8* %scevgep38.4.14, align 1
  %2144 = load i8, i8* %arrayidx56.14, align 1
  %conv57.4.14 = zext i8 %2144 to i32
  %xor58.4.14 = xor i32 %conv57.4.14, 1
  %conv59.4.14 = trunc i32 %xor58.4.14 to i8
  %scevgep35.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 4
  %2145 = load i8, i8* %scevgep35.4.14, align 1
  %call64.4.14 = call zeroext i8 @mult(i8 zeroext %conv59.4.14, i8 zeroext %2145)
  %scevgep42.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 4
  store i8 %call64.4.14, i8* %scevgep42.4.14, align 1
  %2146 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 4
  %2147 = load i8, i8* %scevgep39.4.14, align 1
  %call75.4.14 = call zeroext i8 @mult(i8 zeroext %2146, i8 zeroext %2147)
  %scevgep46.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 4
  store i8 %call75.4.14, i8* %scevgep46.4.14, align 1
  %scevgep43.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 4
  %2148 = load i8, i8* %scevgep43.4.14, align 1
  %conv84.4.14 = zext i8 %2148 to i32
  %scevgep47.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 4
  %2149 = load i8, i8* %scevgep47.4.14, align 1
  %conv89.4.14 = zext i8 %2149 to i32
  %xor90.4.14 = xor i32 %conv84.4.14, %conv89.4.14
  %conv91.4.14 = trunc i32 %xor90.4.14 to i8
  %scevgep50.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 4
  store i8 %conv91.4.14, i8* %scevgep50.4.14, align 1
  %scevgep31.5.14 = getelementptr i8, i8* %b, i64 5
  %2150 = load i8, i8* %scevgep31.5.14, align 1
  %conv44.5.14 = zext i8 %2150 to i32
  %scevgep34.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 5
  %2151 = load i8, i8* %scevgep34.5.14, align 1
  %conv49.5.14 = zext i8 %2151 to i32
  %xor.5.14 = xor i32 %conv44.5.14, %conv49.5.14
  %conv50.5.14 = trunc i32 %xor.5.14 to i8
  %scevgep38.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 5
  store i8 %conv50.5.14, i8* %scevgep38.5.14, align 1
  %2152 = load i8, i8* %arrayidx56.14, align 1
  %conv57.5.14 = zext i8 %2152 to i32
  %xor58.5.14 = xor i32 %conv57.5.14, 1
  %conv59.5.14 = trunc i32 %xor58.5.14 to i8
  %scevgep35.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 5
  %2153 = load i8, i8* %scevgep35.5.14, align 1
  %call64.5.14 = call zeroext i8 @mult(i8 zeroext %conv59.5.14, i8 zeroext %2153)
  %scevgep42.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 5
  store i8 %call64.5.14, i8* %scevgep42.5.14, align 1
  %2154 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 5
  %2155 = load i8, i8* %scevgep39.5.14, align 1
  %call75.5.14 = call zeroext i8 @mult(i8 zeroext %2154, i8 zeroext %2155)
  %scevgep46.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 5
  store i8 %call75.5.14, i8* %scevgep46.5.14, align 1
  %scevgep43.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 5
  %2156 = load i8, i8* %scevgep43.5.14, align 1
  %conv84.5.14 = zext i8 %2156 to i32
  %scevgep47.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 5
  %2157 = load i8, i8* %scevgep47.5.14, align 1
  %conv89.5.14 = zext i8 %2157 to i32
  %xor90.5.14 = xor i32 %conv84.5.14, %conv89.5.14
  %conv91.5.14 = trunc i32 %xor90.5.14 to i8
  %scevgep50.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 5
  store i8 %conv91.5.14, i8* %scevgep50.5.14, align 1
  %scevgep31.6.14 = getelementptr i8, i8* %b, i64 6
  %2158 = load i8, i8* %scevgep31.6.14, align 1
  %conv44.6.14 = zext i8 %2158 to i32
  %scevgep34.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 6
  %2159 = load i8, i8* %scevgep34.6.14, align 1
  %conv49.6.14 = zext i8 %2159 to i32
  %xor.6.14 = xor i32 %conv44.6.14, %conv49.6.14
  %conv50.6.14 = trunc i32 %xor.6.14 to i8
  %scevgep38.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 6
  store i8 %conv50.6.14, i8* %scevgep38.6.14, align 1
  %2160 = load i8, i8* %arrayidx56.14, align 1
  %conv57.6.14 = zext i8 %2160 to i32
  %xor58.6.14 = xor i32 %conv57.6.14, 1
  %conv59.6.14 = trunc i32 %xor58.6.14 to i8
  %scevgep35.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 6
  %2161 = load i8, i8* %scevgep35.6.14, align 1
  %call64.6.14 = call zeroext i8 @mult(i8 zeroext %conv59.6.14, i8 zeroext %2161)
  %scevgep42.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 6
  store i8 %call64.6.14, i8* %scevgep42.6.14, align 1
  %2162 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 6
  %2163 = load i8, i8* %scevgep39.6.14, align 1
  %call75.6.14 = call zeroext i8 @mult(i8 zeroext %2162, i8 zeroext %2163)
  %scevgep46.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 6
  store i8 %call75.6.14, i8* %scevgep46.6.14, align 1
  %scevgep43.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 6
  %2164 = load i8, i8* %scevgep43.6.14, align 1
  %conv84.6.14 = zext i8 %2164 to i32
  %scevgep47.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 6
  %2165 = load i8, i8* %scevgep47.6.14, align 1
  %conv89.6.14 = zext i8 %2165 to i32
  %xor90.6.14 = xor i32 %conv84.6.14, %conv89.6.14
  %conv91.6.14 = trunc i32 %xor90.6.14 to i8
  %scevgep50.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 6
  store i8 %conv91.6.14, i8* %scevgep50.6.14, align 1
  %scevgep31.7.14 = getelementptr i8, i8* %b, i64 7
  %2166 = load i8, i8* %scevgep31.7.14, align 1
  %conv44.7.14 = zext i8 %2166 to i32
  %scevgep34.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 7
  %2167 = load i8, i8* %scevgep34.7.14, align 1
  %conv49.7.14 = zext i8 %2167 to i32
  %xor.7.14 = xor i32 %conv44.7.14, %conv49.7.14
  %conv50.7.14 = trunc i32 %xor.7.14 to i8
  %scevgep38.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 7
  store i8 %conv50.7.14, i8* %scevgep38.7.14, align 1
  %2168 = load i8, i8* %arrayidx56.14, align 1
  %conv57.7.14 = zext i8 %2168 to i32
  %xor58.7.14 = xor i32 %conv57.7.14, 1
  %conv59.7.14 = trunc i32 %xor58.7.14 to i8
  %scevgep35.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 7
  %2169 = load i8, i8* %scevgep35.7.14, align 1
  %call64.7.14 = call zeroext i8 @mult(i8 zeroext %conv59.7.14, i8 zeroext %2169)
  %scevgep42.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 7
  store i8 %call64.7.14, i8* %scevgep42.7.14, align 1
  %2170 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 7
  %2171 = load i8, i8* %scevgep39.7.14, align 1
  %call75.7.14 = call zeroext i8 @mult(i8 zeroext %2170, i8 zeroext %2171)
  %scevgep46.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 7
  store i8 %call75.7.14, i8* %scevgep46.7.14, align 1
  %scevgep43.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 7
  %2172 = load i8, i8* %scevgep43.7.14, align 1
  %conv84.7.14 = zext i8 %2172 to i32
  %scevgep47.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 7
  %2173 = load i8, i8* %scevgep47.7.14, align 1
  %conv89.7.14 = zext i8 %2173 to i32
  %xor90.7.14 = xor i32 %conv84.7.14, %conv89.7.14
  %conv91.7.14 = trunc i32 %xor90.7.14 to i8
  %scevgep50.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 7
  store i8 %conv91.7.14, i8* %scevgep50.7.14, align 1
  %scevgep31.8.14 = getelementptr i8, i8* %b, i64 8
  %2174 = load i8, i8* %scevgep31.8.14, align 1
  %conv44.8.14 = zext i8 %2174 to i32
  %scevgep34.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 8
  %2175 = load i8, i8* %scevgep34.8.14, align 1
  %conv49.8.14 = zext i8 %2175 to i32
  %xor.8.14 = xor i32 %conv44.8.14, %conv49.8.14
  %conv50.8.14 = trunc i32 %xor.8.14 to i8
  %scevgep38.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 8
  store i8 %conv50.8.14, i8* %scevgep38.8.14, align 1
  %2176 = load i8, i8* %arrayidx56.14, align 1
  %conv57.8.14 = zext i8 %2176 to i32
  %xor58.8.14 = xor i32 %conv57.8.14, 1
  %conv59.8.14 = trunc i32 %xor58.8.14 to i8
  %scevgep35.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 8
  %2177 = load i8, i8* %scevgep35.8.14, align 1
  %call64.8.14 = call zeroext i8 @mult(i8 zeroext %conv59.8.14, i8 zeroext %2177)
  %scevgep42.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 8
  store i8 %call64.8.14, i8* %scevgep42.8.14, align 1
  %2178 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 8
  %2179 = load i8, i8* %scevgep39.8.14, align 1
  %call75.8.14 = call zeroext i8 @mult(i8 zeroext %2178, i8 zeroext %2179)
  %scevgep46.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 8
  store i8 %call75.8.14, i8* %scevgep46.8.14, align 1
  %scevgep43.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 8
  %2180 = load i8, i8* %scevgep43.8.14, align 1
  %conv84.8.14 = zext i8 %2180 to i32
  %scevgep47.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 8
  %2181 = load i8, i8* %scevgep47.8.14, align 1
  %conv89.8.14 = zext i8 %2181 to i32
  %xor90.8.14 = xor i32 %conv84.8.14, %conv89.8.14
  %conv91.8.14 = trunc i32 %xor90.8.14 to i8
  %scevgep50.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 8
  store i8 %conv91.8.14, i8* %scevgep50.8.14, align 1
  %scevgep31.9.14 = getelementptr i8, i8* %b, i64 9
  %2182 = load i8, i8* %scevgep31.9.14, align 1
  %conv44.9.14 = zext i8 %2182 to i32
  %scevgep34.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 9
  %2183 = load i8, i8* %scevgep34.9.14, align 1
  %conv49.9.14 = zext i8 %2183 to i32
  %xor.9.14 = xor i32 %conv44.9.14, %conv49.9.14
  %conv50.9.14 = trunc i32 %xor.9.14 to i8
  %scevgep38.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 9
  store i8 %conv50.9.14, i8* %scevgep38.9.14, align 1
  %2184 = load i8, i8* %arrayidx56.14, align 1
  %conv57.9.14 = zext i8 %2184 to i32
  %xor58.9.14 = xor i32 %conv57.9.14, 1
  %conv59.9.14 = trunc i32 %xor58.9.14 to i8
  %scevgep35.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 9
  %2185 = load i8, i8* %scevgep35.9.14, align 1
  %call64.9.14 = call zeroext i8 @mult(i8 zeroext %conv59.9.14, i8 zeroext %2185)
  %scevgep42.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 9
  store i8 %call64.9.14, i8* %scevgep42.9.14, align 1
  %2186 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 9
  %2187 = load i8, i8* %scevgep39.9.14, align 1
  %call75.9.14 = call zeroext i8 @mult(i8 zeroext %2186, i8 zeroext %2187)
  %scevgep46.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 9
  store i8 %call75.9.14, i8* %scevgep46.9.14, align 1
  %scevgep43.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 9
  %2188 = load i8, i8* %scevgep43.9.14, align 1
  %conv84.9.14 = zext i8 %2188 to i32
  %scevgep47.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 9
  %2189 = load i8, i8* %scevgep47.9.14, align 1
  %conv89.9.14 = zext i8 %2189 to i32
  %xor90.9.14 = xor i32 %conv84.9.14, %conv89.9.14
  %conv91.9.14 = trunc i32 %xor90.9.14 to i8
  %scevgep50.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 9
  store i8 %conv91.9.14, i8* %scevgep50.9.14, align 1
  %scevgep31.10.14 = getelementptr i8, i8* %b, i64 10
  %2190 = load i8, i8* %scevgep31.10.14, align 1
  %conv44.10.14 = zext i8 %2190 to i32
  %scevgep34.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 10
  %2191 = load i8, i8* %scevgep34.10.14, align 1
  %conv49.10.14 = zext i8 %2191 to i32
  %xor.10.14 = xor i32 %conv44.10.14, %conv49.10.14
  %conv50.10.14 = trunc i32 %xor.10.14 to i8
  %scevgep38.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 10
  store i8 %conv50.10.14, i8* %scevgep38.10.14, align 1
  %2192 = load i8, i8* %arrayidx56.14, align 1
  %conv57.10.14 = zext i8 %2192 to i32
  %xor58.10.14 = xor i32 %conv57.10.14, 1
  %conv59.10.14 = trunc i32 %xor58.10.14 to i8
  %scevgep35.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 10
  %2193 = load i8, i8* %scevgep35.10.14, align 1
  %call64.10.14 = call zeroext i8 @mult(i8 zeroext %conv59.10.14, i8 zeroext %2193)
  %scevgep42.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 10
  store i8 %call64.10.14, i8* %scevgep42.10.14, align 1
  %2194 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 10
  %2195 = load i8, i8* %scevgep39.10.14, align 1
  %call75.10.14 = call zeroext i8 @mult(i8 zeroext %2194, i8 zeroext %2195)
  %scevgep46.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 10
  store i8 %call75.10.14, i8* %scevgep46.10.14, align 1
  %scevgep43.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 10
  %2196 = load i8, i8* %scevgep43.10.14, align 1
  %conv84.10.14 = zext i8 %2196 to i32
  %scevgep47.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 10
  %2197 = load i8, i8* %scevgep47.10.14, align 1
  %conv89.10.14 = zext i8 %2197 to i32
  %xor90.10.14 = xor i32 %conv84.10.14, %conv89.10.14
  %conv91.10.14 = trunc i32 %xor90.10.14 to i8
  %scevgep50.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 10
  store i8 %conv91.10.14, i8* %scevgep50.10.14, align 1
  %scevgep31.11.14 = getelementptr i8, i8* %b, i64 11
  %2198 = load i8, i8* %scevgep31.11.14, align 1
  %conv44.11.14 = zext i8 %2198 to i32
  %scevgep34.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 11
  %2199 = load i8, i8* %scevgep34.11.14, align 1
  %conv49.11.14 = zext i8 %2199 to i32
  %xor.11.14 = xor i32 %conv44.11.14, %conv49.11.14
  %conv50.11.14 = trunc i32 %xor.11.14 to i8
  %scevgep38.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 11
  store i8 %conv50.11.14, i8* %scevgep38.11.14, align 1
  %2200 = load i8, i8* %arrayidx56.14, align 1
  %conv57.11.14 = zext i8 %2200 to i32
  %xor58.11.14 = xor i32 %conv57.11.14, 1
  %conv59.11.14 = trunc i32 %xor58.11.14 to i8
  %scevgep35.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 11
  %2201 = load i8, i8* %scevgep35.11.14, align 1
  %call64.11.14 = call zeroext i8 @mult(i8 zeroext %conv59.11.14, i8 zeroext %2201)
  %scevgep42.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 11
  store i8 %call64.11.14, i8* %scevgep42.11.14, align 1
  %2202 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 11
  %2203 = load i8, i8* %scevgep39.11.14, align 1
  %call75.11.14 = call zeroext i8 @mult(i8 zeroext %2202, i8 zeroext %2203)
  %scevgep46.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 11
  store i8 %call75.11.14, i8* %scevgep46.11.14, align 1
  %scevgep43.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 11
  %2204 = load i8, i8* %scevgep43.11.14, align 1
  %conv84.11.14 = zext i8 %2204 to i32
  %scevgep47.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 11
  %2205 = load i8, i8* %scevgep47.11.14, align 1
  %conv89.11.14 = zext i8 %2205 to i32
  %xor90.11.14 = xor i32 %conv84.11.14, %conv89.11.14
  %conv91.11.14 = trunc i32 %xor90.11.14 to i8
  %scevgep50.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 11
  store i8 %conv91.11.14, i8* %scevgep50.11.14, align 1
  %scevgep31.12.14 = getelementptr i8, i8* %b, i64 12
  %2206 = load i8, i8* %scevgep31.12.14, align 1
  %conv44.12.14 = zext i8 %2206 to i32
  %scevgep34.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 12
  %2207 = load i8, i8* %scevgep34.12.14, align 1
  %conv49.12.14 = zext i8 %2207 to i32
  %xor.12.14 = xor i32 %conv44.12.14, %conv49.12.14
  %conv50.12.14 = trunc i32 %xor.12.14 to i8
  %scevgep38.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 12
  store i8 %conv50.12.14, i8* %scevgep38.12.14, align 1
  %2208 = load i8, i8* %arrayidx56.14, align 1
  %conv57.12.14 = zext i8 %2208 to i32
  %xor58.12.14 = xor i32 %conv57.12.14, 1
  %conv59.12.14 = trunc i32 %xor58.12.14 to i8
  %scevgep35.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 12
  %2209 = load i8, i8* %scevgep35.12.14, align 1
  %call64.12.14 = call zeroext i8 @mult(i8 zeroext %conv59.12.14, i8 zeroext %2209)
  %scevgep42.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 12
  store i8 %call64.12.14, i8* %scevgep42.12.14, align 1
  %2210 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 12
  %2211 = load i8, i8* %scevgep39.12.14, align 1
  %call75.12.14 = call zeroext i8 @mult(i8 zeroext %2210, i8 zeroext %2211)
  %scevgep46.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 12
  store i8 %call75.12.14, i8* %scevgep46.12.14, align 1
  %scevgep43.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 12
  %2212 = load i8, i8* %scevgep43.12.14, align 1
  %conv84.12.14 = zext i8 %2212 to i32
  %scevgep47.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 12
  %2213 = load i8, i8* %scevgep47.12.14, align 1
  %conv89.12.14 = zext i8 %2213 to i32
  %xor90.12.14 = xor i32 %conv84.12.14, %conv89.12.14
  %conv91.12.14 = trunc i32 %xor90.12.14 to i8
  %scevgep50.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 12
  store i8 %conv91.12.14, i8* %scevgep50.12.14, align 1
  %scevgep31.13.14 = getelementptr i8, i8* %b, i64 13
  %2214 = load i8, i8* %scevgep31.13.14, align 1
  %conv44.13.14 = zext i8 %2214 to i32
  %scevgep34.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 13
  %2215 = load i8, i8* %scevgep34.13.14, align 1
  %conv49.13.14 = zext i8 %2215 to i32
  %xor.13.14 = xor i32 %conv44.13.14, %conv49.13.14
  %conv50.13.14 = trunc i32 %xor.13.14 to i8
  %scevgep38.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 13
  store i8 %conv50.13.14, i8* %scevgep38.13.14, align 1
  %2216 = load i8, i8* %arrayidx56.14, align 1
  %conv57.13.14 = zext i8 %2216 to i32
  %xor58.13.14 = xor i32 %conv57.13.14, 1
  %conv59.13.14 = trunc i32 %xor58.13.14 to i8
  %scevgep35.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 13
  %2217 = load i8, i8* %scevgep35.13.14, align 1
  %call64.13.14 = call zeroext i8 @mult(i8 zeroext %conv59.13.14, i8 zeroext %2217)
  %scevgep42.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 13
  store i8 %call64.13.14, i8* %scevgep42.13.14, align 1
  %2218 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 13
  %2219 = load i8, i8* %scevgep39.13.14, align 1
  %call75.13.14 = call zeroext i8 @mult(i8 zeroext %2218, i8 zeroext %2219)
  %scevgep46.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 13
  store i8 %call75.13.14, i8* %scevgep46.13.14, align 1
  %scevgep43.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 13
  %2220 = load i8, i8* %scevgep43.13.14, align 1
  %conv84.13.14 = zext i8 %2220 to i32
  %scevgep47.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 13
  %2221 = load i8, i8* %scevgep47.13.14, align 1
  %conv89.13.14 = zext i8 %2221 to i32
  %xor90.13.14 = xor i32 %conv84.13.14, %conv89.13.14
  %conv91.13.14 = trunc i32 %xor90.13.14 to i8
  %scevgep50.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 13
  store i8 %conv91.13.14, i8* %scevgep50.13.14, align 1
  %scevgep31.15.14 = getelementptr i8, i8* %b, i64 15
  %2222 = load i8, i8* %scevgep31.15.14, align 1
  %conv44.15.14 = zext i8 %2222 to i32
  %scevgep34.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 15
  %2223 = load i8, i8* %scevgep34.15.14, align 1
  %conv49.15.14 = zext i8 %2223 to i32
  %xor.15.14 = xor i32 %conv44.15.14, %conv49.15.14
  %conv50.15.14 = trunc i32 %xor.15.14 to i8
  %scevgep38.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 15
  store i8 %conv50.15.14, i8* %scevgep38.15.14, align 1
  %2224 = load i8, i8* %arrayidx56.14, align 1
  %conv57.15.14 = zext i8 %2224 to i32
  %xor58.15.14 = xor i32 %conv57.15.14, 1
  %conv59.15.14 = trunc i32 %xor58.15.14 to i8
  %scevgep35.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 0, i64 15
  %2225 = load i8, i8* %scevgep35.15.14, align 1
  %call64.15.14 = call zeroext i8 @mult(i8 zeroext %conv59.15.14, i8 zeroext %2225)
  %scevgep42.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 15
  store i8 %call64.15.14, i8* %scevgep42.15.14, align 1
  %2226 = load i8, i8* %arrayidx70.14, align 1
  %scevgep39.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 0, i64 15
  %2227 = load i8, i8* %scevgep39.15.14, align 1
  %call75.15.14 = call zeroext i8 @mult(i8 zeroext %2226, i8 zeroext %2227)
  %scevgep46.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 15
  store i8 %call75.15.14, i8* %scevgep46.15.14, align 1
  %scevgep43.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 0, i64 15
  %2228 = load i8, i8* %scevgep43.15.14, align 1
  %conv84.15.14 = zext i8 %2228 to i32
  %scevgep47.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 0, i64 15
  %2229 = load i8, i8* %scevgep47.15.14, align 1
  %conv89.15.14 = zext i8 %2229 to i32
  %xor90.15.14 = xor i32 %conv84.15.14, %conv89.15.14
  %conv91.15.14 = trunc i32 %xor90.15.14 to i8
  %scevgep50.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 0, i64 15
  store i8 %conv91.15.14, i8* %scevgep50.15.14, align 1
  %scevgep33.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2105, i64 0, i64 1, i64 0
  %2230 = bitcast i8* %scevgep33.14 to [16 x [16 x i8]]*
  %scevgep37.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2106, i64 0, i64 1, i64 0
  %2231 = bitcast i8* %scevgep37.14 to [16 x [16 x i8]]*
  %scevgep41.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2107, i64 0, i64 1, i64 0
  %2232 = bitcast i8* %scevgep41.14 to [16 x [16 x i8]]*
  %scevgep45.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2108, i64 0, i64 1, i64 0
  %2233 = bitcast i8* %scevgep45.14 to [16 x [16 x i8]]*
  %scevgep49.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2109, i64 0, i64 1, i64 0
  %2234 = bitcast i8* %scevgep49.14 to [16 x [16 x i8]]*
  %arrayidx56.15 = getelementptr inbounds i8, i8* %a, i64 15
  %arrayidx70.15 = getelementptr inbounds i8, i8* %a, i64 15
  %2235 = load i8, i8* %b, align 1
  %conv44.15606 = zext i8 %2235 to i32
  %scevgep34.15607 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 0
  %2236 = load i8, i8* %scevgep34.15607, align 1
  %conv49.15608 = zext i8 %2236 to i32
  %xor.15609 = xor i32 %conv44.15606, %conv49.15608
  %conv50.15610 = trunc i32 %xor.15609 to i8
  %scevgep38.15611 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 0
  store i8 %conv50.15610, i8* %scevgep38.15611, align 1
  %2237 = load i8, i8* %arrayidx56.15, align 1
  %conv57.15612 = zext i8 %2237 to i32
  %xor58.15613 = xor i32 %conv57.15612, 1
  %conv59.15614 = trunc i32 %xor58.15613 to i8
  %scevgep35.15615 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 0
  %2238 = load i8, i8* %scevgep35.15615, align 1
  %call64.15616 = call zeroext i8 @mult(i8 zeroext %conv59.15614, i8 zeroext %2238)
  %scevgep42.15617 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 0
  store i8 %call64.15616, i8* %scevgep42.15617, align 1
  %2239 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.15618 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 0
  %2240 = load i8, i8* %scevgep39.15618, align 1
  %call75.15619 = call zeroext i8 @mult(i8 zeroext %2239, i8 zeroext %2240)
  %scevgep46.15620 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 0
  store i8 %call75.15619, i8* %scevgep46.15620, align 1
  %scevgep43.15621 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 0
  %2241 = load i8, i8* %scevgep43.15621, align 1
  %conv84.15622 = zext i8 %2241 to i32
  %scevgep47.15623 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 0
  %2242 = load i8, i8* %scevgep47.15623, align 1
  %conv89.15624 = zext i8 %2242 to i32
  %xor90.15625 = xor i32 %conv84.15622, %conv89.15624
  %conv91.15626 = trunc i32 %xor90.15625 to i8
  %scevgep50.15627 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 0
  store i8 %conv91.15626, i8* %scevgep50.15627, align 1
  %scevgep31.1.15 = getelementptr i8, i8* %b, i64 1
  %2243 = load i8, i8* %scevgep31.1.15, align 1
  %conv44.1.15 = zext i8 %2243 to i32
  %scevgep34.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 1
  %2244 = load i8, i8* %scevgep34.1.15, align 1
  %conv49.1.15 = zext i8 %2244 to i32
  %xor.1.15 = xor i32 %conv44.1.15, %conv49.1.15
  %conv50.1.15 = trunc i32 %xor.1.15 to i8
  %scevgep38.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 1
  store i8 %conv50.1.15, i8* %scevgep38.1.15, align 1
  %2245 = load i8, i8* %arrayidx56.15, align 1
  %conv57.1.15 = zext i8 %2245 to i32
  %xor58.1.15 = xor i32 %conv57.1.15, 1
  %conv59.1.15 = trunc i32 %xor58.1.15 to i8
  %scevgep35.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 1
  %2246 = load i8, i8* %scevgep35.1.15, align 1
  %call64.1.15 = call zeroext i8 @mult(i8 zeroext %conv59.1.15, i8 zeroext %2246)
  %scevgep42.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 1
  store i8 %call64.1.15, i8* %scevgep42.1.15, align 1
  %2247 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 1
  %2248 = load i8, i8* %scevgep39.1.15, align 1
  %call75.1.15 = call zeroext i8 @mult(i8 zeroext %2247, i8 zeroext %2248)
  %scevgep46.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 1
  store i8 %call75.1.15, i8* %scevgep46.1.15, align 1
  %scevgep43.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 1
  %2249 = load i8, i8* %scevgep43.1.15, align 1
  %conv84.1.15 = zext i8 %2249 to i32
  %scevgep47.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 1
  %2250 = load i8, i8* %scevgep47.1.15, align 1
  %conv89.1.15 = zext i8 %2250 to i32
  %xor90.1.15 = xor i32 %conv84.1.15, %conv89.1.15
  %conv91.1.15 = trunc i32 %xor90.1.15 to i8
  %scevgep50.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 1
  store i8 %conv91.1.15, i8* %scevgep50.1.15, align 1
  %scevgep31.2.15 = getelementptr i8, i8* %b, i64 2
  %2251 = load i8, i8* %scevgep31.2.15, align 1
  %conv44.2.15 = zext i8 %2251 to i32
  %scevgep34.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 2
  %2252 = load i8, i8* %scevgep34.2.15, align 1
  %conv49.2.15 = zext i8 %2252 to i32
  %xor.2.15 = xor i32 %conv44.2.15, %conv49.2.15
  %conv50.2.15 = trunc i32 %xor.2.15 to i8
  %scevgep38.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 2
  store i8 %conv50.2.15, i8* %scevgep38.2.15, align 1
  %2253 = load i8, i8* %arrayidx56.15, align 1
  %conv57.2.15 = zext i8 %2253 to i32
  %xor58.2.15 = xor i32 %conv57.2.15, 1
  %conv59.2.15 = trunc i32 %xor58.2.15 to i8
  %scevgep35.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 2
  %2254 = load i8, i8* %scevgep35.2.15, align 1
  %call64.2.15 = call zeroext i8 @mult(i8 zeroext %conv59.2.15, i8 zeroext %2254)
  %scevgep42.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 2
  store i8 %call64.2.15, i8* %scevgep42.2.15, align 1
  %2255 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 2
  %2256 = load i8, i8* %scevgep39.2.15, align 1
  %call75.2.15 = call zeroext i8 @mult(i8 zeroext %2255, i8 zeroext %2256)
  %scevgep46.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 2
  store i8 %call75.2.15, i8* %scevgep46.2.15, align 1
  %scevgep43.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 2
  %2257 = load i8, i8* %scevgep43.2.15, align 1
  %conv84.2.15 = zext i8 %2257 to i32
  %scevgep47.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 2
  %2258 = load i8, i8* %scevgep47.2.15, align 1
  %conv89.2.15 = zext i8 %2258 to i32
  %xor90.2.15 = xor i32 %conv84.2.15, %conv89.2.15
  %conv91.2.15 = trunc i32 %xor90.2.15 to i8
  %scevgep50.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 2
  store i8 %conv91.2.15, i8* %scevgep50.2.15, align 1
  %scevgep31.3.15 = getelementptr i8, i8* %b, i64 3
  %2259 = load i8, i8* %scevgep31.3.15, align 1
  %conv44.3.15 = zext i8 %2259 to i32
  %scevgep34.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 3
  %2260 = load i8, i8* %scevgep34.3.15, align 1
  %conv49.3.15 = zext i8 %2260 to i32
  %xor.3.15 = xor i32 %conv44.3.15, %conv49.3.15
  %conv50.3.15 = trunc i32 %xor.3.15 to i8
  %scevgep38.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 3
  store i8 %conv50.3.15, i8* %scevgep38.3.15, align 1
  %2261 = load i8, i8* %arrayidx56.15, align 1
  %conv57.3.15 = zext i8 %2261 to i32
  %xor58.3.15 = xor i32 %conv57.3.15, 1
  %conv59.3.15 = trunc i32 %xor58.3.15 to i8
  %scevgep35.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 3
  %2262 = load i8, i8* %scevgep35.3.15, align 1
  %call64.3.15 = call zeroext i8 @mult(i8 zeroext %conv59.3.15, i8 zeroext %2262)
  %scevgep42.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 3
  store i8 %call64.3.15, i8* %scevgep42.3.15, align 1
  %2263 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 3
  %2264 = load i8, i8* %scevgep39.3.15, align 1
  %call75.3.15 = call zeroext i8 @mult(i8 zeroext %2263, i8 zeroext %2264)
  %scevgep46.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 3
  store i8 %call75.3.15, i8* %scevgep46.3.15, align 1
  %scevgep43.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 3
  %2265 = load i8, i8* %scevgep43.3.15, align 1
  %conv84.3.15 = zext i8 %2265 to i32
  %scevgep47.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 3
  %2266 = load i8, i8* %scevgep47.3.15, align 1
  %conv89.3.15 = zext i8 %2266 to i32
  %xor90.3.15 = xor i32 %conv84.3.15, %conv89.3.15
  %conv91.3.15 = trunc i32 %xor90.3.15 to i8
  %scevgep50.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 3
  store i8 %conv91.3.15, i8* %scevgep50.3.15, align 1
  %scevgep31.4.15 = getelementptr i8, i8* %b, i64 4
  %2267 = load i8, i8* %scevgep31.4.15, align 1
  %conv44.4.15 = zext i8 %2267 to i32
  %scevgep34.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 4
  %2268 = load i8, i8* %scevgep34.4.15, align 1
  %conv49.4.15 = zext i8 %2268 to i32
  %xor.4.15 = xor i32 %conv44.4.15, %conv49.4.15
  %conv50.4.15 = trunc i32 %xor.4.15 to i8
  %scevgep38.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 4
  store i8 %conv50.4.15, i8* %scevgep38.4.15, align 1
  %2269 = load i8, i8* %arrayidx56.15, align 1
  %conv57.4.15 = zext i8 %2269 to i32
  %xor58.4.15 = xor i32 %conv57.4.15, 1
  %conv59.4.15 = trunc i32 %xor58.4.15 to i8
  %scevgep35.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 4
  %2270 = load i8, i8* %scevgep35.4.15, align 1
  %call64.4.15 = call zeroext i8 @mult(i8 zeroext %conv59.4.15, i8 zeroext %2270)
  %scevgep42.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 4
  store i8 %call64.4.15, i8* %scevgep42.4.15, align 1
  %2271 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 4
  %2272 = load i8, i8* %scevgep39.4.15, align 1
  %call75.4.15 = call zeroext i8 @mult(i8 zeroext %2271, i8 zeroext %2272)
  %scevgep46.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 4
  store i8 %call75.4.15, i8* %scevgep46.4.15, align 1
  %scevgep43.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 4
  %2273 = load i8, i8* %scevgep43.4.15, align 1
  %conv84.4.15 = zext i8 %2273 to i32
  %scevgep47.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 4
  %2274 = load i8, i8* %scevgep47.4.15, align 1
  %conv89.4.15 = zext i8 %2274 to i32
  %xor90.4.15 = xor i32 %conv84.4.15, %conv89.4.15
  %conv91.4.15 = trunc i32 %xor90.4.15 to i8
  %scevgep50.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 4
  store i8 %conv91.4.15, i8* %scevgep50.4.15, align 1
  %scevgep31.5.15 = getelementptr i8, i8* %b, i64 5
  %2275 = load i8, i8* %scevgep31.5.15, align 1
  %conv44.5.15 = zext i8 %2275 to i32
  %scevgep34.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 5
  %2276 = load i8, i8* %scevgep34.5.15, align 1
  %conv49.5.15 = zext i8 %2276 to i32
  %xor.5.15 = xor i32 %conv44.5.15, %conv49.5.15
  %conv50.5.15 = trunc i32 %xor.5.15 to i8
  %scevgep38.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 5
  store i8 %conv50.5.15, i8* %scevgep38.5.15, align 1
  %2277 = load i8, i8* %arrayidx56.15, align 1
  %conv57.5.15 = zext i8 %2277 to i32
  %xor58.5.15 = xor i32 %conv57.5.15, 1
  %conv59.5.15 = trunc i32 %xor58.5.15 to i8
  %scevgep35.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 5
  %2278 = load i8, i8* %scevgep35.5.15, align 1
  %call64.5.15 = call zeroext i8 @mult(i8 zeroext %conv59.5.15, i8 zeroext %2278)
  %scevgep42.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 5
  store i8 %call64.5.15, i8* %scevgep42.5.15, align 1
  %2279 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 5
  %2280 = load i8, i8* %scevgep39.5.15, align 1
  %call75.5.15 = call zeroext i8 @mult(i8 zeroext %2279, i8 zeroext %2280)
  %scevgep46.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 5
  store i8 %call75.5.15, i8* %scevgep46.5.15, align 1
  %scevgep43.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 5
  %2281 = load i8, i8* %scevgep43.5.15, align 1
  %conv84.5.15 = zext i8 %2281 to i32
  %scevgep47.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 5
  %2282 = load i8, i8* %scevgep47.5.15, align 1
  %conv89.5.15 = zext i8 %2282 to i32
  %xor90.5.15 = xor i32 %conv84.5.15, %conv89.5.15
  %conv91.5.15 = trunc i32 %xor90.5.15 to i8
  %scevgep50.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 5
  store i8 %conv91.5.15, i8* %scevgep50.5.15, align 1
  %scevgep31.6.15 = getelementptr i8, i8* %b, i64 6
  %2283 = load i8, i8* %scevgep31.6.15, align 1
  %conv44.6.15 = zext i8 %2283 to i32
  %scevgep34.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 6
  %2284 = load i8, i8* %scevgep34.6.15, align 1
  %conv49.6.15 = zext i8 %2284 to i32
  %xor.6.15 = xor i32 %conv44.6.15, %conv49.6.15
  %conv50.6.15 = trunc i32 %xor.6.15 to i8
  %scevgep38.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 6
  store i8 %conv50.6.15, i8* %scevgep38.6.15, align 1
  %2285 = load i8, i8* %arrayidx56.15, align 1
  %conv57.6.15 = zext i8 %2285 to i32
  %xor58.6.15 = xor i32 %conv57.6.15, 1
  %conv59.6.15 = trunc i32 %xor58.6.15 to i8
  %scevgep35.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 6
  %2286 = load i8, i8* %scevgep35.6.15, align 1
  %call64.6.15 = call zeroext i8 @mult(i8 zeroext %conv59.6.15, i8 zeroext %2286)
  %scevgep42.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 6
  store i8 %call64.6.15, i8* %scevgep42.6.15, align 1
  %2287 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 6
  %2288 = load i8, i8* %scevgep39.6.15, align 1
  %call75.6.15 = call zeroext i8 @mult(i8 zeroext %2287, i8 zeroext %2288)
  %scevgep46.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 6
  store i8 %call75.6.15, i8* %scevgep46.6.15, align 1
  %scevgep43.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 6
  %2289 = load i8, i8* %scevgep43.6.15, align 1
  %conv84.6.15 = zext i8 %2289 to i32
  %scevgep47.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 6
  %2290 = load i8, i8* %scevgep47.6.15, align 1
  %conv89.6.15 = zext i8 %2290 to i32
  %xor90.6.15 = xor i32 %conv84.6.15, %conv89.6.15
  %conv91.6.15 = trunc i32 %xor90.6.15 to i8
  %scevgep50.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 6
  store i8 %conv91.6.15, i8* %scevgep50.6.15, align 1
  %scevgep31.7.15 = getelementptr i8, i8* %b, i64 7
  %2291 = load i8, i8* %scevgep31.7.15, align 1
  %conv44.7.15 = zext i8 %2291 to i32
  %scevgep34.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 7
  %2292 = load i8, i8* %scevgep34.7.15, align 1
  %conv49.7.15 = zext i8 %2292 to i32
  %xor.7.15 = xor i32 %conv44.7.15, %conv49.7.15
  %conv50.7.15 = trunc i32 %xor.7.15 to i8
  %scevgep38.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 7
  store i8 %conv50.7.15, i8* %scevgep38.7.15, align 1
  %2293 = load i8, i8* %arrayidx56.15, align 1
  %conv57.7.15 = zext i8 %2293 to i32
  %xor58.7.15 = xor i32 %conv57.7.15, 1
  %conv59.7.15 = trunc i32 %xor58.7.15 to i8
  %scevgep35.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 7
  %2294 = load i8, i8* %scevgep35.7.15, align 1
  %call64.7.15 = call zeroext i8 @mult(i8 zeroext %conv59.7.15, i8 zeroext %2294)
  %scevgep42.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 7
  store i8 %call64.7.15, i8* %scevgep42.7.15, align 1
  %2295 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 7
  %2296 = load i8, i8* %scevgep39.7.15, align 1
  %call75.7.15 = call zeroext i8 @mult(i8 zeroext %2295, i8 zeroext %2296)
  %scevgep46.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 7
  store i8 %call75.7.15, i8* %scevgep46.7.15, align 1
  %scevgep43.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 7
  %2297 = load i8, i8* %scevgep43.7.15, align 1
  %conv84.7.15 = zext i8 %2297 to i32
  %scevgep47.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 7
  %2298 = load i8, i8* %scevgep47.7.15, align 1
  %conv89.7.15 = zext i8 %2298 to i32
  %xor90.7.15 = xor i32 %conv84.7.15, %conv89.7.15
  %conv91.7.15 = trunc i32 %xor90.7.15 to i8
  %scevgep50.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 7
  store i8 %conv91.7.15, i8* %scevgep50.7.15, align 1
  %scevgep31.8.15 = getelementptr i8, i8* %b, i64 8
  %2299 = load i8, i8* %scevgep31.8.15, align 1
  %conv44.8.15 = zext i8 %2299 to i32
  %scevgep34.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 8
  %2300 = load i8, i8* %scevgep34.8.15, align 1
  %conv49.8.15 = zext i8 %2300 to i32
  %xor.8.15 = xor i32 %conv44.8.15, %conv49.8.15
  %conv50.8.15 = trunc i32 %xor.8.15 to i8
  %scevgep38.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 8
  store i8 %conv50.8.15, i8* %scevgep38.8.15, align 1
  %2301 = load i8, i8* %arrayidx56.15, align 1
  %conv57.8.15 = zext i8 %2301 to i32
  %xor58.8.15 = xor i32 %conv57.8.15, 1
  %conv59.8.15 = trunc i32 %xor58.8.15 to i8
  %scevgep35.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 8
  %2302 = load i8, i8* %scevgep35.8.15, align 1
  %call64.8.15 = call zeroext i8 @mult(i8 zeroext %conv59.8.15, i8 zeroext %2302)
  %scevgep42.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 8
  store i8 %call64.8.15, i8* %scevgep42.8.15, align 1
  %2303 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 8
  %2304 = load i8, i8* %scevgep39.8.15, align 1
  %call75.8.15 = call zeroext i8 @mult(i8 zeroext %2303, i8 zeroext %2304)
  %scevgep46.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 8
  store i8 %call75.8.15, i8* %scevgep46.8.15, align 1
  %scevgep43.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 8
  %2305 = load i8, i8* %scevgep43.8.15, align 1
  %conv84.8.15 = zext i8 %2305 to i32
  %scevgep47.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 8
  %2306 = load i8, i8* %scevgep47.8.15, align 1
  %conv89.8.15 = zext i8 %2306 to i32
  %xor90.8.15 = xor i32 %conv84.8.15, %conv89.8.15
  %conv91.8.15 = trunc i32 %xor90.8.15 to i8
  %scevgep50.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 8
  store i8 %conv91.8.15, i8* %scevgep50.8.15, align 1
  %scevgep31.9.15 = getelementptr i8, i8* %b, i64 9
  %2307 = load i8, i8* %scevgep31.9.15, align 1
  %conv44.9.15 = zext i8 %2307 to i32
  %scevgep34.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 9
  %2308 = load i8, i8* %scevgep34.9.15, align 1
  %conv49.9.15 = zext i8 %2308 to i32
  %xor.9.15 = xor i32 %conv44.9.15, %conv49.9.15
  %conv50.9.15 = trunc i32 %xor.9.15 to i8
  %scevgep38.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 9
  store i8 %conv50.9.15, i8* %scevgep38.9.15, align 1
  %2309 = load i8, i8* %arrayidx56.15, align 1
  %conv57.9.15 = zext i8 %2309 to i32
  %xor58.9.15 = xor i32 %conv57.9.15, 1
  %conv59.9.15 = trunc i32 %xor58.9.15 to i8
  %scevgep35.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 9
  %2310 = load i8, i8* %scevgep35.9.15, align 1
  %call64.9.15 = call zeroext i8 @mult(i8 zeroext %conv59.9.15, i8 zeroext %2310)
  %scevgep42.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 9
  store i8 %call64.9.15, i8* %scevgep42.9.15, align 1
  %2311 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 9
  %2312 = load i8, i8* %scevgep39.9.15, align 1
  %call75.9.15 = call zeroext i8 @mult(i8 zeroext %2311, i8 zeroext %2312)
  %scevgep46.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 9
  store i8 %call75.9.15, i8* %scevgep46.9.15, align 1
  %scevgep43.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 9
  %2313 = load i8, i8* %scevgep43.9.15, align 1
  %conv84.9.15 = zext i8 %2313 to i32
  %scevgep47.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 9
  %2314 = load i8, i8* %scevgep47.9.15, align 1
  %conv89.9.15 = zext i8 %2314 to i32
  %xor90.9.15 = xor i32 %conv84.9.15, %conv89.9.15
  %conv91.9.15 = trunc i32 %xor90.9.15 to i8
  %scevgep50.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 9
  store i8 %conv91.9.15, i8* %scevgep50.9.15, align 1
  %scevgep31.10.15 = getelementptr i8, i8* %b, i64 10
  %2315 = load i8, i8* %scevgep31.10.15, align 1
  %conv44.10.15 = zext i8 %2315 to i32
  %scevgep34.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 10
  %2316 = load i8, i8* %scevgep34.10.15, align 1
  %conv49.10.15 = zext i8 %2316 to i32
  %xor.10.15 = xor i32 %conv44.10.15, %conv49.10.15
  %conv50.10.15 = trunc i32 %xor.10.15 to i8
  %scevgep38.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 10
  store i8 %conv50.10.15, i8* %scevgep38.10.15, align 1
  %2317 = load i8, i8* %arrayidx56.15, align 1
  %conv57.10.15 = zext i8 %2317 to i32
  %xor58.10.15 = xor i32 %conv57.10.15, 1
  %conv59.10.15 = trunc i32 %xor58.10.15 to i8
  %scevgep35.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 10
  %2318 = load i8, i8* %scevgep35.10.15, align 1
  %call64.10.15 = call zeroext i8 @mult(i8 zeroext %conv59.10.15, i8 zeroext %2318)
  %scevgep42.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 10
  store i8 %call64.10.15, i8* %scevgep42.10.15, align 1
  %2319 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 10
  %2320 = load i8, i8* %scevgep39.10.15, align 1
  %call75.10.15 = call zeroext i8 @mult(i8 zeroext %2319, i8 zeroext %2320)
  %scevgep46.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 10
  store i8 %call75.10.15, i8* %scevgep46.10.15, align 1
  %scevgep43.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 10
  %2321 = load i8, i8* %scevgep43.10.15, align 1
  %conv84.10.15 = zext i8 %2321 to i32
  %scevgep47.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 10
  %2322 = load i8, i8* %scevgep47.10.15, align 1
  %conv89.10.15 = zext i8 %2322 to i32
  %xor90.10.15 = xor i32 %conv84.10.15, %conv89.10.15
  %conv91.10.15 = trunc i32 %xor90.10.15 to i8
  %scevgep50.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 10
  store i8 %conv91.10.15, i8* %scevgep50.10.15, align 1
  %scevgep31.11.15 = getelementptr i8, i8* %b, i64 11
  %2323 = load i8, i8* %scevgep31.11.15, align 1
  %conv44.11.15 = zext i8 %2323 to i32
  %scevgep34.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 11
  %2324 = load i8, i8* %scevgep34.11.15, align 1
  %conv49.11.15 = zext i8 %2324 to i32
  %xor.11.15 = xor i32 %conv44.11.15, %conv49.11.15
  %conv50.11.15 = trunc i32 %xor.11.15 to i8
  %scevgep38.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 11
  store i8 %conv50.11.15, i8* %scevgep38.11.15, align 1
  %2325 = load i8, i8* %arrayidx56.15, align 1
  %conv57.11.15 = zext i8 %2325 to i32
  %xor58.11.15 = xor i32 %conv57.11.15, 1
  %conv59.11.15 = trunc i32 %xor58.11.15 to i8
  %scevgep35.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 11
  %2326 = load i8, i8* %scevgep35.11.15, align 1
  %call64.11.15 = call zeroext i8 @mult(i8 zeroext %conv59.11.15, i8 zeroext %2326)
  %scevgep42.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 11
  store i8 %call64.11.15, i8* %scevgep42.11.15, align 1
  %2327 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 11
  %2328 = load i8, i8* %scevgep39.11.15, align 1
  %call75.11.15 = call zeroext i8 @mult(i8 zeroext %2327, i8 zeroext %2328)
  %scevgep46.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 11
  store i8 %call75.11.15, i8* %scevgep46.11.15, align 1
  %scevgep43.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 11
  %2329 = load i8, i8* %scevgep43.11.15, align 1
  %conv84.11.15 = zext i8 %2329 to i32
  %scevgep47.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 11
  %2330 = load i8, i8* %scevgep47.11.15, align 1
  %conv89.11.15 = zext i8 %2330 to i32
  %xor90.11.15 = xor i32 %conv84.11.15, %conv89.11.15
  %conv91.11.15 = trunc i32 %xor90.11.15 to i8
  %scevgep50.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 11
  store i8 %conv91.11.15, i8* %scevgep50.11.15, align 1
  %scevgep31.12.15 = getelementptr i8, i8* %b, i64 12
  %2331 = load i8, i8* %scevgep31.12.15, align 1
  %conv44.12.15 = zext i8 %2331 to i32
  %scevgep34.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 12
  %2332 = load i8, i8* %scevgep34.12.15, align 1
  %conv49.12.15 = zext i8 %2332 to i32
  %xor.12.15 = xor i32 %conv44.12.15, %conv49.12.15
  %conv50.12.15 = trunc i32 %xor.12.15 to i8
  %scevgep38.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 12
  store i8 %conv50.12.15, i8* %scevgep38.12.15, align 1
  %2333 = load i8, i8* %arrayidx56.15, align 1
  %conv57.12.15 = zext i8 %2333 to i32
  %xor58.12.15 = xor i32 %conv57.12.15, 1
  %conv59.12.15 = trunc i32 %xor58.12.15 to i8
  %scevgep35.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 12
  %2334 = load i8, i8* %scevgep35.12.15, align 1
  %call64.12.15 = call zeroext i8 @mult(i8 zeroext %conv59.12.15, i8 zeroext %2334)
  %scevgep42.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 12
  store i8 %call64.12.15, i8* %scevgep42.12.15, align 1
  %2335 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 12
  %2336 = load i8, i8* %scevgep39.12.15, align 1
  %call75.12.15 = call zeroext i8 @mult(i8 zeroext %2335, i8 zeroext %2336)
  %scevgep46.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 12
  store i8 %call75.12.15, i8* %scevgep46.12.15, align 1
  %scevgep43.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 12
  %2337 = load i8, i8* %scevgep43.12.15, align 1
  %conv84.12.15 = zext i8 %2337 to i32
  %scevgep47.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 12
  %2338 = load i8, i8* %scevgep47.12.15, align 1
  %conv89.12.15 = zext i8 %2338 to i32
  %xor90.12.15 = xor i32 %conv84.12.15, %conv89.12.15
  %conv91.12.15 = trunc i32 %xor90.12.15 to i8
  %scevgep50.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 12
  store i8 %conv91.12.15, i8* %scevgep50.12.15, align 1
  %scevgep31.13.15 = getelementptr i8, i8* %b, i64 13
  %2339 = load i8, i8* %scevgep31.13.15, align 1
  %conv44.13.15 = zext i8 %2339 to i32
  %scevgep34.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 13
  %2340 = load i8, i8* %scevgep34.13.15, align 1
  %conv49.13.15 = zext i8 %2340 to i32
  %xor.13.15 = xor i32 %conv44.13.15, %conv49.13.15
  %conv50.13.15 = trunc i32 %xor.13.15 to i8
  %scevgep38.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 13
  store i8 %conv50.13.15, i8* %scevgep38.13.15, align 1
  %2341 = load i8, i8* %arrayidx56.15, align 1
  %conv57.13.15 = zext i8 %2341 to i32
  %xor58.13.15 = xor i32 %conv57.13.15, 1
  %conv59.13.15 = trunc i32 %xor58.13.15 to i8
  %scevgep35.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 13
  %2342 = load i8, i8* %scevgep35.13.15, align 1
  %call64.13.15 = call zeroext i8 @mult(i8 zeroext %conv59.13.15, i8 zeroext %2342)
  %scevgep42.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 13
  store i8 %call64.13.15, i8* %scevgep42.13.15, align 1
  %2343 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 13
  %2344 = load i8, i8* %scevgep39.13.15, align 1
  %call75.13.15 = call zeroext i8 @mult(i8 zeroext %2343, i8 zeroext %2344)
  %scevgep46.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 13
  store i8 %call75.13.15, i8* %scevgep46.13.15, align 1
  %scevgep43.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 13
  %2345 = load i8, i8* %scevgep43.13.15, align 1
  %conv84.13.15 = zext i8 %2345 to i32
  %scevgep47.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 13
  %2346 = load i8, i8* %scevgep47.13.15, align 1
  %conv89.13.15 = zext i8 %2346 to i32
  %xor90.13.15 = xor i32 %conv84.13.15, %conv89.13.15
  %conv91.13.15 = trunc i32 %xor90.13.15 to i8
  %scevgep50.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 13
  store i8 %conv91.13.15, i8* %scevgep50.13.15, align 1
  %scevgep31.14.15 = getelementptr i8, i8* %b, i64 14
  %2347 = load i8, i8* %scevgep31.14.15, align 1
  %conv44.14.15 = zext i8 %2347 to i32
  %scevgep34.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 14
  %2348 = load i8, i8* %scevgep34.14.15, align 1
  %conv49.14.15 = zext i8 %2348 to i32
  %xor.14.15 = xor i32 %conv44.14.15, %conv49.14.15
  %conv50.14.15 = trunc i32 %xor.14.15 to i8
  %scevgep38.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 14
  store i8 %conv50.14.15, i8* %scevgep38.14.15, align 1
  %2349 = load i8, i8* %arrayidx56.15, align 1
  %conv57.14.15 = zext i8 %2349 to i32
  %xor58.14.15 = xor i32 %conv57.14.15, 1
  %conv59.14.15 = trunc i32 %xor58.14.15 to i8
  %scevgep35.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2230, i64 0, i64 0, i64 14
  %2350 = load i8, i8* %scevgep35.14.15, align 1
  %call64.14.15 = call zeroext i8 @mult(i8 zeroext %conv59.14.15, i8 zeroext %2350)
  %scevgep42.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 14
  store i8 %call64.14.15, i8* %scevgep42.14.15, align 1
  %2351 = load i8, i8* %arrayidx70.15, align 1
  %scevgep39.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2231, i64 0, i64 0, i64 14
  %2352 = load i8, i8* %scevgep39.14.15, align 1
  %call75.14.15 = call zeroext i8 @mult(i8 zeroext %2351, i8 zeroext %2352)
  %scevgep46.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 14
  store i8 %call75.14.15, i8* %scevgep46.14.15, align 1
  %scevgep43.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2232, i64 0, i64 0, i64 14
  %2353 = load i8, i8* %scevgep43.14.15, align 1
  %conv84.14.15 = zext i8 %2353 to i32
  %scevgep47.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2233, i64 0, i64 0, i64 14
  %2354 = load i8, i8* %scevgep47.14.15, align 1
  %conv89.14.15 = zext i8 %2354 to i32
  %xor90.14.15 = xor i32 %conv84.14.15, %conv89.14.15
  %conv91.14.15 = trunc i32 %xor90.14.15 to i8
  %scevgep50.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2234, i64 0, i64 0, i64 14
  store i8 %conv91.14.15, i8* %scevgep50.14.15, align 1
  %2355 = load i8, i8* %a, align 1
  %2356 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %2355, i8 zeroext %2356)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 1
  %2357 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %2357 to i32
  %2358 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %2358 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 2
  %2359 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %2359 to i32
  %2360 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %2360 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 3
  %2361 = load i8, i8* %scevgep22.3, align 1
  %conv126.3 = zext i8 %2361 to i32
  %2362 = load i8, i8* %c, align 1
  %conv129.3 = zext i8 %2362 to i32
  %xor130.3 = xor i32 %conv129.3, %conv126.3
  %conv131.3 = trunc i32 %xor130.3 to i8
  store i8 %conv131.3, i8* %c, align 1
  %scevgep22.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 4
  %2363 = load i8, i8* %scevgep22.4, align 1
  %conv126.4 = zext i8 %2363 to i32
  %2364 = load i8, i8* %c, align 1
  %conv129.4 = zext i8 %2364 to i32
  %xor130.4 = xor i32 %conv129.4, %conv126.4
  %conv131.4 = trunc i32 %xor130.4 to i8
  store i8 %conv131.4, i8* %c, align 1
  %scevgep22.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 5
  %2365 = load i8, i8* %scevgep22.5, align 1
  %conv126.5 = zext i8 %2365 to i32
  %2366 = load i8, i8* %c, align 1
  %conv129.5 = zext i8 %2366 to i32
  %xor130.5 = xor i32 %conv129.5, %conv126.5
  %conv131.5 = trunc i32 %xor130.5 to i8
  store i8 %conv131.5, i8* %c, align 1
  %scevgep22.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 6
  %2367 = load i8, i8* %scevgep22.6, align 1
  %conv126.6 = zext i8 %2367 to i32
  %2368 = load i8, i8* %c, align 1
  %conv129.6 = zext i8 %2368 to i32
  %xor130.6 = xor i32 %conv129.6, %conv126.6
  %conv131.6 = trunc i32 %xor130.6 to i8
  store i8 %conv131.6, i8* %c, align 1
  %scevgep22.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 7
  %2369 = load i8, i8* %scevgep22.7, align 1
  %conv126.7 = zext i8 %2369 to i32
  %2370 = load i8, i8* %c, align 1
  %conv129.7 = zext i8 %2370 to i32
  %xor130.7 = xor i32 %conv129.7, %conv126.7
  %conv131.7 = trunc i32 %xor130.7 to i8
  store i8 %conv131.7, i8* %c, align 1
  %scevgep22.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 8
  %2371 = load i8, i8* %scevgep22.8, align 1
  %conv126.8 = zext i8 %2371 to i32
  %2372 = load i8, i8* %c, align 1
  %conv129.8 = zext i8 %2372 to i32
  %xor130.8 = xor i32 %conv129.8, %conv126.8
  %conv131.8 = trunc i32 %xor130.8 to i8
  store i8 %conv131.8, i8* %c, align 1
  %scevgep22.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 9
  %2373 = load i8, i8* %scevgep22.9, align 1
  %conv126.9 = zext i8 %2373 to i32
  %2374 = load i8, i8* %c, align 1
  %conv129.9 = zext i8 %2374 to i32
  %xor130.9 = xor i32 %conv129.9, %conv126.9
  %conv131.9 = trunc i32 %xor130.9 to i8
  store i8 %conv131.9, i8* %c, align 1
  %scevgep22.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 10
  %2375 = load i8, i8* %scevgep22.10, align 1
  %conv126.10 = zext i8 %2375 to i32
  %2376 = load i8, i8* %c, align 1
  %conv129.10 = zext i8 %2376 to i32
  %xor130.10 = xor i32 %conv129.10, %conv126.10
  %conv131.10 = trunc i32 %xor130.10 to i8
  store i8 %conv131.10, i8* %c, align 1
  %scevgep22.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 11
  %2377 = load i8, i8* %scevgep22.11, align 1
  %conv126.11 = zext i8 %2377 to i32
  %2378 = load i8, i8* %c, align 1
  %conv129.11 = zext i8 %2378 to i32
  %xor130.11 = xor i32 %conv129.11, %conv126.11
  %conv131.11 = trunc i32 %xor130.11 to i8
  store i8 %conv131.11, i8* %c, align 1
  %scevgep22.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 12
  %2379 = load i8, i8* %scevgep22.12, align 1
  %conv126.12 = zext i8 %2379 to i32
  %2380 = load i8, i8* %c, align 1
  %conv129.12 = zext i8 %2380 to i32
  %xor130.12 = xor i32 %conv129.12, %conv126.12
  %conv131.12 = trunc i32 %xor130.12 to i8
  store i8 %conv131.12, i8* %c, align 1
  %scevgep22.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 13
  %2381 = load i8, i8* %scevgep22.13, align 1
  %conv126.13 = zext i8 %2381 to i32
  %2382 = load i8, i8* %c, align 1
  %conv129.13 = zext i8 %2382 to i32
  %xor130.13 = xor i32 %conv129.13, %conv126.13
  %conv131.13 = trunc i32 %xor130.13 to i8
  store i8 %conv131.13, i8* %c, align 1
  %scevgep22.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 14
  %2383 = load i8, i8* %scevgep22.14, align 1
  %conv126.14 = zext i8 %2383 to i32
  %2384 = load i8, i8* %c, align 1
  %conv129.14 = zext i8 %2384 to i32
  %xor130.14 = xor i32 %conv129.14, %conv126.14
  %conv131.14 = trunc i32 %xor130.14 to i8
  store i8 %conv131.14, i8* %c, align 1
  %scevgep22.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 0, i64 15
  %2385 = load i8, i8* %scevgep22.15, align 1
  %conv126.15 = zext i8 %2385 to i32
  %2386 = load i8, i8* %c, align 1
  %conv129.15 = zext i8 %2386 to i32
  %xor130.15 = xor i32 %conv129.15, %conv126.15
  %conv131.15 = trunc i32 %xor130.15 to i8
  store i8 %conv131.15, i8* %c, align 1
  %scevgep21 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 1, i64 0
  %2387 = bitcast i8* %scevgep21 to [16 x [16 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %2388 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %2389 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %2388, i8 zeroext %2389)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.178 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 0
  %2390 = load i8, i8* %scevgep22.178, align 1
  %conv126.179 = zext i8 %2390 to i32
  %2391 = load i8, i8* %arrayidx128.1, align 1
  %conv129.180 = zext i8 %2391 to i32
  %xor130.181 = xor i32 %conv129.180, %conv126.179
  %conv131.182 = trunc i32 %xor130.181 to i8
  store i8 %conv131.182, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 2
  %2392 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %2392 to i32
  %2393 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %2393 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep22.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 3
  %2394 = load i8, i8* %scevgep22.3.1, align 1
  %conv126.3.1 = zext i8 %2394 to i32
  %2395 = load i8, i8* %arrayidx128.1, align 1
  %conv129.3.1 = zext i8 %2395 to i32
  %xor130.3.1 = xor i32 %conv129.3.1, %conv126.3.1
  %conv131.3.1 = trunc i32 %xor130.3.1 to i8
  store i8 %conv131.3.1, i8* %arrayidx128.1, align 1
  %scevgep22.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 4
  %2396 = load i8, i8* %scevgep22.4.1, align 1
  %conv126.4.1 = zext i8 %2396 to i32
  %2397 = load i8, i8* %arrayidx128.1, align 1
  %conv129.4.1 = zext i8 %2397 to i32
  %xor130.4.1 = xor i32 %conv129.4.1, %conv126.4.1
  %conv131.4.1 = trunc i32 %xor130.4.1 to i8
  store i8 %conv131.4.1, i8* %arrayidx128.1, align 1
  %scevgep22.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 5
  %2398 = load i8, i8* %scevgep22.5.1, align 1
  %conv126.5.1 = zext i8 %2398 to i32
  %2399 = load i8, i8* %arrayidx128.1, align 1
  %conv129.5.1 = zext i8 %2399 to i32
  %xor130.5.1 = xor i32 %conv129.5.1, %conv126.5.1
  %conv131.5.1 = trunc i32 %xor130.5.1 to i8
  store i8 %conv131.5.1, i8* %arrayidx128.1, align 1
  %scevgep22.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 6
  %2400 = load i8, i8* %scevgep22.6.1, align 1
  %conv126.6.1 = zext i8 %2400 to i32
  %2401 = load i8, i8* %arrayidx128.1, align 1
  %conv129.6.1 = zext i8 %2401 to i32
  %xor130.6.1 = xor i32 %conv129.6.1, %conv126.6.1
  %conv131.6.1 = trunc i32 %xor130.6.1 to i8
  store i8 %conv131.6.1, i8* %arrayidx128.1, align 1
  %scevgep22.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 7
  %2402 = load i8, i8* %scevgep22.7.1, align 1
  %conv126.7.1 = zext i8 %2402 to i32
  %2403 = load i8, i8* %arrayidx128.1, align 1
  %conv129.7.1 = zext i8 %2403 to i32
  %xor130.7.1 = xor i32 %conv129.7.1, %conv126.7.1
  %conv131.7.1 = trunc i32 %xor130.7.1 to i8
  store i8 %conv131.7.1, i8* %arrayidx128.1, align 1
  %scevgep22.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 8
  %2404 = load i8, i8* %scevgep22.8.1, align 1
  %conv126.8.1 = zext i8 %2404 to i32
  %2405 = load i8, i8* %arrayidx128.1, align 1
  %conv129.8.1 = zext i8 %2405 to i32
  %xor130.8.1 = xor i32 %conv129.8.1, %conv126.8.1
  %conv131.8.1 = trunc i32 %xor130.8.1 to i8
  store i8 %conv131.8.1, i8* %arrayidx128.1, align 1
  %scevgep22.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 9
  %2406 = load i8, i8* %scevgep22.9.1, align 1
  %conv126.9.1 = zext i8 %2406 to i32
  %2407 = load i8, i8* %arrayidx128.1, align 1
  %conv129.9.1 = zext i8 %2407 to i32
  %xor130.9.1 = xor i32 %conv129.9.1, %conv126.9.1
  %conv131.9.1 = trunc i32 %xor130.9.1 to i8
  store i8 %conv131.9.1, i8* %arrayidx128.1, align 1
  %scevgep22.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 10
  %2408 = load i8, i8* %scevgep22.10.1, align 1
  %conv126.10.1 = zext i8 %2408 to i32
  %2409 = load i8, i8* %arrayidx128.1, align 1
  %conv129.10.1 = zext i8 %2409 to i32
  %xor130.10.1 = xor i32 %conv129.10.1, %conv126.10.1
  %conv131.10.1 = trunc i32 %xor130.10.1 to i8
  store i8 %conv131.10.1, i8* %arrayidx128.1, align 1
  %scevgep22.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 11
  %2410 = load i8, i8* %scevgep22.11.1, align 1
  %conv126.11.1 = zext i8 %2410 to i32
  %2411 = load i8, i8* %arrayidx128.1, align 1
  %conv129.11.1 = zext i8 %2411 to i32
  %xor130.11.1 = xor i32 %conv129.11.1, %conv126.11.1
  %conv131.11.1 = trunc i32 %xor130.11.1 to i8
  store i8 %conv131.11.1, i8* %arrayidx128.1, align 1
  %scevgep22.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 12
  %2412 = load i8, i8* %scevgep22.12.1, align 1
  %conv126.12.1 = zext i8 %2412 to i32
  %2413 = load i8, i8* %arrayidx128.1, align 1
  %conv129.12.1 = zext i8 %2413 to i32
  %xor130.12.1 = xor i32 %conv129.12.1, %conv126.12.1
  %conv131.12.1 = trunc i32 %xor130.12.1 to i8
  store i8 %conv131.12.1, i8* %arrayidx128.1, align 1
  %scevgep22.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 13
  %2414 = load i8, i8* %scevgep22.13.1, align 1
  %conv126.13.1 = zext i8 %2414 to i32
  %2415 = load i8, i8* %arrayidx128.1, align 1
  %conv129.13.1 = zext i8 %2415 to i32
  %xor130.13.1 = xor i32 %conv129.13.1, %conv126.13.1
  %conv131.13.1 = trunc i32 %xor130.13.1 to i8
  store i8 %conv131.13.1, i8* %arrayidx128.1, align 1
  %scevgep22.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 14
  %2416 = load i8, i8* %scevgep22.14.1, align 1
  %conv126.14.1 = zext i8 %2416 to i32
  %2417 = load i8, i8* %arrayidx128.1, align 1
  %conv129.14.1 = zext i8 %2417 to i32
  %xor130.14.1 = xor i32 %conv129.14.1, %conv126.14.1
  %conv131.14.1 = trunc i32 %xor130.14.1 to i8
  store i8 %conv131.14.1, i8* %arrayidx128.1, align 1
  %scevgep22.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 0, i64 15
  %2418 = load i8, i8* %scevgep22.15.1, align 1
  %conv126.15.1 = zext i8 %2418 to i32
  %2419 = load i8, i8* %arrayidx128.1, align 1
  %conv129.15.1 = zext i8 %2419 to i32
  %xor130.15.1 = xor i32 %conv129.15.1, %conv126.15.1
  %conv131.15.1 = trunc i32 %xor130.15.1 to i8
  store i8 %conv131.15.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2387, i64 0, i64 1, i64 0
  %2420 = bitcast i8* %scevgep21.1 to [16 x [16 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %2421 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %2422 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %2421, i8 zeroext %2422)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.288 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 0
  %2423 = load i8, i8* %scevgep22.288, align 1
  %conv126.289 = zext i8 %2423 to i32
  %2424 = load i8, i8* %arrayidx128.2, align 1
  %conv129.290 = zext i8 %2424 to i32
  %xor130.291 = xor i32 %conv129.290, %conv126.289
  %conv131.292 = trunc i32 %xor130.291 to i8
  store i8 %conv131.292, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 1
  %2425 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %2425 to i32
  %2426 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %2426 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %scevgep22.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 3
  %2427 = load i8, i8* %scevgep22.3.2, align 1
  %conv126.3.2 = zext i8 %2427 to i32
  %2428 = load i8, i8* %arrayidx128.2, align 1
  %conv129.3.2 = zext i8 %2428 to i32
  %xor130.3.2 = xor i32 %conv129.3.2, %conv126.3.2
  %conv131.3.2 = trunc i32 %xor130.3.2 to i8
  store i8 %conv131.3.2, i8* %arrayidx128.2, align 1
  %scevgep22.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 4
  %2429 = load i8, i8* %scevgep22.4.2, align 1
  %conv126.4.2 = zext i8 %2429 to i32
  %2430 = load i8, i8* %arrayidx128.2, align 1
  %conv129.4.2 = zext i8 %2430 to i32
  %xor130.4.2 = xor i32 %conv129.4.2, %conv126.4.2
  %conv131.4.2 = trunc i32 %xor130.4.2 to i8
  store i8 %conv131.4.2, i8* %arrayidx128.2, align 1
  %scevgep22.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 5
  %2431 = load i8, i8* %scevgep22.5.2, align 1
  %conv126.5.2 = zext i8 %2431 to i32
  %2432 = load i8, i8* %arrayidx128.2, align 1
  %conv129.5.2 = zext i8 %2432 to i32
  %xor130.5.2 = xor i32 %conv129.5.2, %conv126.5.2
  %conv131.5.2 = trunc i32 %xor130.5.2 to i8
  store i8 %conv131.5.2, i8* %arrayidx128.2, align 1
  %scevgep22.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 6
  %2433 = load i8, i8* %scevgep22.6.2, align 1
  %conv126.6.2 = zext i8 %2433 to i32
  %2434 = load i8, i8* %arrayidx128.2, align 1
  %conv129.6.2 = zext i8 %2434 to i32
  %xor130.6.2 = xor i32 %conv129.6.2, %conv126.6.2
  %conv131.6.2 = trunc i32 %xor130.6.2 to i8
  store i8 %conv131.6.2, i8* %arrayidx128.2, align 1
  %scevgep22.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 7
  %2435 = load i8, i8* %scevgep22.7.2, align 1
  %conv126.7.2 = zext i8 %2435 to i32
  %2436 = load i8, i8* %arrayidx128.2, align 1
  %conv129.7.2 = zext i8 %2436 to i32
  %xor130.7.2 = xor i32 %conv129.7.2, %conv126.7.2
  %conv131.7.2 = trunc i32 %xor130.7.2 to i8
  store i8 %conv131.7.2, i8* %arrayidx128.2, align 1
  %scevgep22.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 8
  %2437 = load i8, i8* %scevgep22.8.2, align 1
  %conv126.8.2 = zext i8 %2437 to i32
  %2438 = load i8, i8* %arrayidx128.2, align 1
  %conv129.8.2 = zext i8 %2438 to i32
  %xor130.8.2 = xor i32 %conv129.8.2, %conv126.8.2
  %conv131.8.2 = trunc i32 %xor130.8.2 to i8
  store i8 %conv131.8.2, i8* %arrayidx128.2, align 1
  %scevgep22.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 9
  %2439 = load i8, i8* %scevgep22.9.2, align 1
  %conv126.9.2 = zext i8 %2439 to i32
  %2440 = load i8, i8* %arrayidx128.2, align 1
  %conv129.9.2 = zext i8 %2440 to i32
  %xor130.9.2 = xor i32 %conv129.9.2, %conv126.9.2
  %conv131.9.2 = trunc i32 %xor130.9.2 to i8
  store i8 %conv131.9.2, i8* %arrayidx128.2, align 1
  %scevgep22.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 10
  %2441 = load i8, i8* %scevgep22.10.2, align 1
  %conv126.10.2 = zext i8 %2441 to i32
  %2442 = load i8, i8* %arrayidx128.2, align 1
  %conv129.10.2 = zext i8 %2442 to i32
  %xor130.10.2 = xor i32 %conv129.10.2, %conv126.10.2
  %conv131.10.2 = trunc i32 %xor130.10.2 to i8
  store i8 %conv131.10.2, i8* %arrayidx128.2, align 1
  %scevgep22.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 11
  %2443 = load i8, i8* %scevgep22.11.2, align 1
  %conv126.11.2 = zext i8 %2443 to i32
  %2444 = load i8, i8* %arrayidx128.2, align 1
  %conv129.11.2 = zext i8 %2444 to i32
  %xor130.11.2 = xor i32 %conv129.11.2, %conv126.11.2
  %conv131.11.2 = trunc i32 %xor130.11.2 to i8
  store i8 %conv131.11.2, i8* %arrayidx128.2, align 1
  %scevgep22.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 12
  %2445 = load i8, i8* %scevgep22.12.2, align 1
  %conv126.12.2 = zext i8 %2445 to i32
  %2446 = load i8, i8* %arrayidx128.2, align 1
  %conv129.12.2 = zext i8 %2446 to i32
  %xor130.12.2 = xor i32 %conv129.12.2, %conv126.12.2
  %conv131.12.2 = trunc i32 %xor130.12.2 to i8
  store i8 %conv131.12.2, i8* %arrayidx128.2, align 1
  %scevgep22.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 13
  %2447 = load i8, i8* %scevgep22.13.2, align 1
  %conv126.13.2 = zext i8 %2447 to i32
  %2448 = load i8, i8* %arrayidx128.2, align 1
  %conv129.13.2 = zext i8 %2448 to i32
  %xor130.13.2 = xor i32 %conv129.13.2, %conv126.13.2
  %conv131.13.2 = trunc i32 %xor130.13.2 to i8
  store i8 %conv131.13.2, i8* %arrayidx128.2, align 1
  %scevgep22.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 14
  %2449 = load i8, i8* %scevgep22.14.2, align 1
  %conv126.14.2 = zext i8 %2449 to i32
  %2450 = load i8, i8* %arrayidx128.2, align 1
  %conv129.14.2 = zext i8 %2450 to i32
  %xor130.14.2 = xor i32 %conv129.14.2, %conv126.14.2
  %conv131.14.2 = trunc i32 %xor130.14.2 to i8
  store i8 %conv131.14.2, i8* %arrayidx128.2, align 1
  %scevgep22.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 0, i64 15
  %2451 = load i8, i8* %scevgep22.15.2, align 1
  %conv126.15.2 = zext i8 %2451 to i32
  %2452 = load i8, i8* %arrayidx128.2, align 1
  %conv129.15.2 = zext i8 %2452 to i32
  %xor130.15.2 = xor i32 %conv129.15.2, %conv126.15.2
  %conv131.15.2 = trunc i32 %xor130.15.2 to i8
  store i8 %conv131.15.2, i8* %arrayidx128.2, align 1
  %scevgep21.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2420, i64 0, i64 1, i64 0
  %2453 = bitcast i8* %scevgep21.2 to [16 x [16 x i8]]*
  %arrayidx108.3 = getelementptr inbounds i8, i8* %a, i64 3
  %2454 = load i8, i8* %arrayidx108.3, align 1
  %arrayidx110.3 = getelementptr inbounds i8, i8* %b, i64 3
  %2455 = load i8, i8* %arrayidx110.3, align 1
  %call111.3 = call zeroext i8 @mult(i8 zeroext %2454, i8 zeroext %2455)
  %arrayidx113.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call111.3, i8* %arrayidx113.3, align 1
  %arrayidx128.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.398 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 0
  %2456 = load i8, i8* %scevgep22.398, align 1
  %conv126.399 = zext i8 %2456 to i32
  %2457 = load i8, i8* %arrayidx128.3, align 1
  %conv129.3100 = zext i8 %2457 to i32
  %xor130.3101 = xor i32 %conv129.3100, %conv126.399
  %conv131.3102 = trunc i32 %xor130.3101 to i8
  store i8 %conv131.3102, i8* %arrayidx128.3, align 1
  %scevgep22.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 1
  %2458 = load i8, i8* %scevgep22.1.3, align 1
  %conv126.1.3 = zext i8 %2458 to i32
  %2459 = load i8, i8* %arrayidx128.3, align 1
  %conv129.1.3 = zext i8 %2459 to i32
  %xor130.1.3 = xor i32 %conv129.1.3, %conv126.1.3
  %conv131.1.3 = trunc i32 %xor130.1.3 to i8
  store i8 %conv131.1.3, i8* %arrayidx128.3, align 1
  %scevgep22.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 2
  %2460 = load i8, i8* %scevgep22.2.3, align 1
  %conv126.2.3 = zext i8 %2460 to i32
  %2461 = load i8, i8* %arrayidx128.3, align 1
  %conv129.2.3 = zext i8 %2461 to i32
  %xor130.2.3 = xor i32 %conv129.2.3, %conv126.2.3
  %conv131.2.3 = trunc i32 %xor130.2.3 to i8
  store i8 %conv131.2.3, i8* %arrayidx128.3, align 1
  %scevgep22.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 4
  %2462 = load i8, i8* %scevgep22.4.3, align 1
  %conv126.4.3 = zext i8 %2462 to i32
  %2463 = load i8, i8* %arrayidx128.3, align 1
  %conv129.4.3 = zext i8 %2463 to i32
  %xor130.4.3 = xor i32 %conv129.4.3, %conv126.4.3
  %conv131.4.3 = trunc i32 %xor130.4.3 to i8
  store i8 %conv131.4.3, i8* %arrayidx128.3, align 1
  %scevgep22.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 5
  %2464 = load i8, i8* %scevgep22.5.3, align 1
  %conv126.5.3 = zext i8 %2464 to i32
  %2465 = load i8, i8* %arrayidx128.3, align 1
  %conv129.5.3 = zext i8 %2465 to i32
  %xor130.5.3 = xor i32 %conv129.5.3, %conv126.5.3
  %conv131.5.3 = trunc i32 %xor130.5.3 to i8
  store i8 %conv131.5.3, i8* %arrayidx128.3, align 1
  %scevgep22.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 6
  %2466 = load i8, i8* %scevgep22.6.3, align 1
  %conv126.6.3 = zext i8 %2466 to i32
  %2467 = load i8, i8* %arrayidx128.3, align 1
  %conv129.6.3 = zext i8 %2467 to i32
  %xor130.6.3 = xor i32 %conv129.6.3, %conv126.6.3
  %conv131.6.3 = trunc i32 %xor130.6.3 to i8
  store i8 %conv131.6.3, i8* %arrayidx128.3, align 1
  %scevgep22.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 7
  %2468 = load i8, i8* %scevgep22.7.3, align 1
  %conv126.7.3 = zext i8 %2468 to i32
  %2469 = load i8, i8* %arrayidx128.3, align 1
  %conv129.7.3 = zext i8 %2469 to i32
  %xor130.7.3 = xor i32 %conv129.7.3, %conv126.7.3
  %conv131.7.3 = trunc i32 %xor130.7.3 to i8
  store i8 %conv131.7.3, i8* %arrayidx128.3, align 1
  %scevgep22.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 8
  %2470 = load i8, i8* %scevgep22.8.3, align 1
  %conv126.8.3 = zext i8 %2470 to i32
  %2471 = load i8, i8* %arrayidx128.3, align 1
  %conv129.8.3 = zext i8 %2471 to i32
  %xor130.8.3 = xor i32 %conv129.8.3, %conv126.8.3
  %conv131.8.3 = trunc i32 %xor130.8.3 to i8
  store i8 %conv131.8.3, i8* %arrayidx128.3, align 1
  %scevgep22.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 9
  %2472 = load i8, i8* %scevgep22.9.3, align 1
  %conv126.9.3 = zext i8 %2472 to i32
  %2473 = load i8, i8* %arrayidx128.3, align 1
  %conv129.9.3 = zext i8 %2473 to i32
  %xor130.9.3 = xor i32 %conv129.9.3, %conv126.9.3
  %conv131.9.3 = trunc i32 %xor130.9.3 to i8
  store i8 %conv131.9.3, i8* %arrayidx128.3, align 1
  %scevgep22.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 10
  %2474 = load i8, i8* %scevgep22.10.3, align 1
  %conv126.10.3 = zext i8 %2474 to i32
  %2475 = load i8, i8* %arrayidx128.3, align 1
  %conv129.10.3 = zext i8 %2475 to i32
  %xor130.10.3 = xor i32 %conv129.10.3, %conv126.10.3
  %conv131.10.3 = trunc i32 %xor130.10.3 to i8
  store i8 %conv131.10.3, i8* %arrayidx128.3, align 1
  %scevgep22.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 11
  %2476 = load i8, i8* %scevgep22.11.3, align 1
  %conv126.11.3 = zext i8 %2476 to i32
  %2477 = load i8, i8* %arrayidx128.3, align 1
  %conv129.11.3 = zext i8 %2477 to i32
  %xor130.11.3 = xor i32 %conv129.11.3, %conv126.11.3
  %conv131.11.3 = trunc i32 %xor130.11.3 to i8
  store i8 %conv131.11.3, i8* %arrayidx128.3, align 1
  %scevgep22.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 12
  %2478 = load i8, i8* %scevgep22.12.3, align 1
  %conv126.12.3 = zext i8 %2478 to i32
  %2479 = load i8, i8* %arrayidx128.3, align 1
  %conv129.12.3 = zext i8 %2479 to i32
  %xor130.12.3 = xor i32 %conv129.12.3, %conv126.12.3
  %conv131.12.3 = trunc i32 %xor130.12.3 to i8
  store i8 %conv131.12.3, i8* %arrayidx128.3, align 1
  %scevgep22.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 13
  %2480 = load i8, i8* %scevgep22.13.3, align 1
  %conv126.13.3 = zext i8 %2480 to i32
  %2481 = load i8, i8* %arrayidx128.3, align 1
  %conv129.13.3 = zext i8 %2481 to i32
  %xor130.13.3 = xor i32 %conv129.13.3, %conv126.13.3
  %conv131.13.3 = trunc i32 %xor130.13.3 to i8
  store i8 %conv131.13.3, i8* %arrayidx128.3, align 1
  %scevgep22.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 14
  %2482 = load i8, i8* %scevgep22.14.3, align 1
  %conv126.14.3 = zext i8 %2482 to i32
  %2483 = load i8, i8* %arrayidx128.3, align 1
  %conv129.14.3 = zext i8 %2483 to i32
  %xor130.14.3 = xor i32 %conv129.14.3, %conv126.14.3
  %conv131.14.3 = trunc i32 %xor130.14.3 to i8
  store i8 %conv131.14.3, i8* %arrayidx128.3, align 1
  %scevgep22.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 0, i64 15
  %2484 = load i8, i8* %scevgep22.15.3, align 1
  %conv126.15.3 = zext i8 %2484 to i32
  %2485 = load i8, i8* %arrayidx128.3, align 1
  %conv129.15.3 = zext i8 %2485 to i32
  %xor130.15.3 = xor i32 %conv129.15.3, %conv126.15.3
  %conv131.15.3 = trunc i32 %xor130.15.3 to i8
  store i8 %conv131.15.3, i8* %arrayidx128.3, align 1
  %scevgep21.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2453, i64 0, i64 1, i64 0
  %2486 = bitcast i8* %scevgep21.3 to [16 x [16 x i8]]*
  %arrayidx108.4 = getelementptr inbounds i8, i8* %a, i64 4
  %2487 = load i8, i8* %arrayidx108.4, align 1
  %arrayidx110.4 = getelementptr inbounds i8, i8* %b, i64 4
  %2488 = load i8, i8* %arrayidx110.4, align 1
  %call111.4 = call zeroext i8 @mult(i8 zeroext %2487, i8 zeroext %2488)
  %arrayidx113.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call111.4, i8* %arrayidx113.4, align 1
  %arrayidx128.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep22.4108 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 0
  %2489 = load i8, i8* %scevgep22.4108, align 1
  %conv126.4109 = zext i8 %2489 to i32
  %2490 = load i8, i8* %arrayidx128.4, align 1
  %conv129.4110 = zext i8 %2490 to i32
  %xor130.4111 = xor i32 %conv129.4110, %conv126.4109
  %conv131.4112 = trunc i32 %xor130.4111 to i8
  store i8 %conv131.4112, i8* %arrayidx128.4, align 1
  %scevgep22.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 1
  %2491 = load i8, i8* %scevgep22.1.4, align 1
  %conv126.1.4 = zext i8 %2491 to i32
  %2492 = load i8, i8* %arrayidx128.4, align 1
  %conv129.1.4 = zext i8 %2492 to i32
  %xor130.1.4 = xor i32 %conv129.1.4, %conv126.1.4
  %conv131.1.4 = trunc i32 %xor130.1.4 to i8
  store i8 %conv131.1.4, i8* %arrayidx128.4, align 1
  %scevgep22.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 2
  %2493 = load i8, i8* %scevgep22.2.4, align 1
  %conv126.2.4 = zext i8 %2493 to i32
  %2494 = load i8, i8* %arrayidx128.4, align 1
  %conv129.2.4 = zext i8 %2494 to i32
  %xor130.2.4 = xor i32 %conv129.2.4, %conv126.2.4
  %conv131.2.4 = trunc i32 %xor130.2.4 to i8
  store i8 %conv131.2.4, i8* %arrayidx128.4, align 1
  %scevgep22.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 3
  %2495 = load i8, i8* %scevgep22.3.4, align 1
  %conv126.3.4 = zext i8 %2495 to i32
  %2496 = load i8, i8* %arrayidx128.4, align 1
  %conv129.3.4 = zext i8 %2496 to i32
  %xor130.3.4 = xor i32 %conv129.3.4, %conv126.3.4
  %conv131.3.4 = trunc i32 %xor130.3.4 to i8
  store i8 %conv131.3.4, i8* %arrayidx128.4, align 1
  %scevgep22.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 5
  %2497 = load i8, i8* %scevgep22.5.4, align 1
  %conv126.5.4 = zext i8 %2497 to i32
  %2498 = load i8, i8* %arrayidx128.4, align 1
  %conv129.5.4 = zext i8 %2498 to i32
  %xor130.5.4 = xor i32 %conv129.5.4, %conv126.5.4
  %conv131.5.4 = trunc i32 %xor130.5.4 to i8
  store i8 %conv131.5.4, i8* %arrayidx128.4, align 1
  %scevgep22.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 6
  %2499 = load i8, i8* %scevgep22.6.4, align 1
  %conv126.6.4 = zext i8 %2499 to i32
  %2500 = load i8, i8* %arrayidx128.4, align 1
  %conv129.6.4 = zext i8 %2500 to i32
  %xor130.6.4 = xor i32 %conv129.6.4, %conv126.6.4
  %conv131.6.4 = trunc i32 %xor130.6.4 to i8
  store i8 %conv131.6.4, i8* %arrayidx128.4, align 1
  %scevgep22.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 7
  %2501 = load i8, i8* %scevgep22.7.4, align 1
  %conv126.7.4 = zext i8 %2501 to i32
  %2502 = load i8, i8* %arrayidx128.4, align 1
  %conv129.7.4 = zext i8 %2502 to i32
  %xor130.7.4 = xor i32 %conv129.7.4, %conv126.7.4
  %conv131.7.4 = trunc i32 %xor130.7.4 to i8
  store i8 %conv131.7.4, i8* %arrayidx128.4, align 1
  %scevgep22.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 8
  %2503 = load i8, i8* %scevgep22.8.4, align 1
  %conv126.8.4 = zext i8 %2503 to i32
  %2504 = load i8, i8* %arrayidx128.4, align 1
  %conv129.8.4 = zext i8 %2504 to i32
  %xor130.8.4 = xor i32 %conv129.8.4, %conv126.8.4
  %conv131.8.4 = trunc i32 %xor130.8.4 to i8
  store i8 %conv131.8.4, i8* %arrayidx128.4, align 1
  %scevgep22.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 9
  %2505 = load i8, i8* %scevgep22.9.4, align 1
  %conv126.9.4 = zext i8 %2505 to i32
  %2506 = load i8, i8* %arrayidx128.4, align 1
  %conv129.9.4 = zext i8 %2506 to i32
  %xor130.9.4 = xor i32 %conv129.9.4, %conv126.9.4
  %conv131.9.4 = trunc i32 %xor130.9.4 to i8
  store i8 %conv131.9.4, i8* %arrayidx128.4, align 1
  %scevgep22.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 10
  %2507 = load i8, i8* %scevgep22.10.4, align 1
  %conv126.10.4 = zext i8 %2507 to i32
  %2508 = load i8, i8* %arrayidx128.4, align 1
  %conv129.10.4 = zext i8 %2508 to i32
  %xor130.10.4 = xor i32 %conv129.10.4, %conv126.10.4
  %conv131.10.4 = trunc i32 %xor130.10.4 to i8
  store i8 %conv131.10.4, i8* %arrayidx128.4, align 1
  %scevgep22.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 11
  %2509 = load i8, i8* %scevgep22.11.4, align 1
  %conv126.11.4 = zext i8 %2509 to i32
  %2510 = load i8, i8* %arrayidx128.4, align 1
  %conv129.11.4 = zext i8 %2510 to i32
  %xor130.11.4 = xor i32 %conv129.11.4, %conv126.11.4
  %conv131.11.4 = trunc i32 %xor130.11.4 to i8
  store i8 %conv131.11.4, i8* %arrayidx128.4, align 1
  %scevgep22.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 12
  %2511 = load i8, i8* %scevgep22.12.4, align 1
  %conv126.12.4 = zext i8 %2511 to i32
  %2512 = load i8, i8* %arrayidx128.4, align 1
  %conv129.12.4 = zext i8 %2512 to i32
  %xor130.12.4 = xor i32 %conv129.12.4, %conv126.12.4
  %conv131.12.4 = trunc i32 %xor130.12.4 to i8
  store i8 %conv131.12.4, i8* %arrayidx128.4, align 1
  %scevgep22.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 13
  %2513 = load i8, i8* %scevgep22.13.4, align 1
  %conv126.13.4 = zext i8 %2513 to i32
  %2514 = load i8, i8* %arrayidx128.4, align 1
  %conv129.13.4 = zext i8 %2514 to i32
  %xor130.13.4 = xor i32 %conv129.13.4, %conv126.13.4
  %conv131.13.4 = trunc i32 %xor130.13.4 to i8
  store i8 %conv131.13.4, i8* %arrayidx128.4, align 1
  %scevgep22.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 14
  %2515 = load i8, i8* %scevgep22.14.4, align 1
  %conv126.14.4 = zext i8 %2515 to i32
  %2516 = load i8, i8* %arrayidx128.4, align 1
  %conv129.14.4 = zext i8 %2516 to i32
  %xor130.14.4 = xor i32 %conv129.14.4, %conv126.14.4
  %conv131.14.4 = trunc i32 %xor130.14.4 to i8
  store i8 %conv131.14.4, i8* %arrayidx128.4, align 1
  %scevgep22.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 0, i64 15
  %2517 = load i8, i8* %scevgep22.15.4, align 1
  %conv126.15.4 = zext i8 %2517 to i32
  %2518 = load i8, i8* %arrayidx128.4, align 1
  %conv129.15.4 = zext i8 %2518 to i32
  %xor130.15.4 = xor i32 %conv129.15.4, %conv126.15.4
  %conv131.15.4 = trunc i32 %xor130.15.4 to i8
  store i8 %conv131.15.4, i8* %arrayidx128.4, align 1
  %scevgep21.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2486, i64 0, i64 1, i64 0
  %2519 = bitcast i8* %scevgep21.4 to [16 x [16 x i8]]*
  %arrayidx108.5 = getelementptr inbounds i8, i8* %a, i64 5
  %2520 = load i8, i8* %arrayidx108.5, align 1
  %arrayidx110.5 = getelementptr inbounds i8, i8* %b, i64 5
  %2521 = load i8, i8* %arrayidx110.5, align 1
  %call111.5 = call zeroext i8 @mult(i8 zeroext %2520, i8 zeroext %2521)
  %arrayidx113.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call111.5, i8* %arrayidx113.5, align 1
  %arrayidx128.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep22.5118 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 0
  %2522 = load i8, i8* %scevgep22.5118, align 1
  %conv126.5119 = zext i8 %2522 to i32
  %2523 = load i8, i8* %arrayidx128.5, align 1
  %conv129.5120 = zext i8 %2523 to i32
  %xor130.5121 = xor i32 %conv129.5120, %conv126.5119
  %conv131.5122 = trunc i32 %xor130.5121 to i8
  store i8 %conv131.5122, i8* %arrayidx128.5, align 1
  %scevgep22.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 1
  %2524 = load i8, i8* %scevgep22.1.5, align 1
  %conv126.1.5 = zext i8 %2524 to i32
  %2525 = load i8, i8* %arrayidx128.5, align 1
  %conv129.1.5 = zext i8 %2525 to i32
  %xor130.1.5 = xor i32 %conv129.1.5, %conv126.1.5
  %conv131.1.5 = trunc i32 %xor130.1.5 to i8
  store i8 %conv131.1.5, i8* %arrayidx128.5, align 1
  %scevgep22.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 2
  %2526 = load i8, i8* %scevgep22.2.5, align 1
  %conv126.2.5 = zext i8 %2526 to i32
  %2527 = load i8, i8* %arrayidx128.5, align 1
  %conv129.2.5 = zext i8 %2527 to i32
  %xor130.2.5 = xor i32 %conv129.2.5, %conv126.2.5
  %conv131.2.5 = trunc i32 %xor130.2.5 to i8
  store i8 %conv131.2.5, i8* %arrayidx128.5, align 1
  %scevgep22.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 3
  %2528 = load i8, i8* %scevgep22.3.5, align 1
  %conv126.3.5 = zext i8 %2528 to i32
  %2529 = load i8, i8* %arrayidx128.5, align 1
  %conv129.3.5 = zext i8 %2529 to i32
  %xor130.3.5 = xor i32 %conv129.3.5, %conv126.3.5
  %conv131.3.5 = trunc i32 %xor130.3.5 to i8
  store i8 %conv131.3.5, i8* %arrayidx128.5, align 1
  %scevgep22.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 4
  %2530 = load i8, i8* %scevgep22.4.5, align 1
  %conv126.4.5 = zext i8 %2530 to i32
  %2531 = load i8, i8* %arrayidx128.5, align 1
  %conv129.4.5 = zext i8 %2531 to i32
  %xor130.4.5 = xor i32 %conv129.4.5, %conv126.4.5
  %conv131.4.5 = trunc i32 %xor130.4.5 to i8
  store i8 %conv131.4.5, i8* %arrayidx128.5, align 1
  %scevgep22.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 6
  %2532 = load i8, i8* %scevgep22.6.5, align 1
  %conv126.6.5 = zext i8 %2532 to i32
  %2533 = load i8, i8* %arrayidx128.5, align 1
  %conv129.6.5 = zext i8 %2533 to i32
  %xor130.6.5 = xor i32 %conv129.6.5, %conv126.6.5
  %conv131.6.5 = trunc i32 %xor130.6.5 to i8
  store i8 %conv131.6.5, i8* %arrayidx128.5, align 1
  %scevgep22.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 7
  %2534 = load i8, i8* %scevgep22.7.5, align 1
  %conv126.7.5 = zext i8 %2534 to i32
  %2535 = load i8, i8* %arrayidx128.5, align 1
  %conv129.7.5 = zext i8 %2535 to i32
  %xor130.7.5 = xor i32 %conv129.7.5, %conv126.7.5
  %conv131.7.5 = trunc i32 %xor130.7.5 to i8
  store i8 %conv131.7.5, i8* %arrayidx128.5, align 1
  %scevgep22.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 8
  %2536 = load i8, i8* %scevgep22.8.5, align 1
  %conv126.8.5 = zext i8 %2536 to i32
  %2537 = load i8, i8* %arrayidx128.5, align 1
  %conv129.8.5 = zext i8 %2537 to i32
  %xor130.8.5 = xor i32 %conv129.8.5, %conv126.8.5
  %conv131.8.5 = trunc i32 %xor130.8.5 to i8
  store i8 %conv131.8.5, i8* %arrayidx128.5, align 1
  %scevgep22.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 9
  %2538 = load i8, i8* %scevgep22.9.5, align 1
  %conv126.9.5 = zext i8 %2538 to i32
  %2539 = load i8, i8* %arrayidx128.5, align 1
  %conv129.9.5 = zext i8 %2539 to i32
  %xor130.9.5 = xor i32 %conv129.9.5, %conv126.9.5
  %conv131.9.5 = trunc i32 %xor130.9.5 to i8
  store i8 %conv131.9.5, i8* %arrayidx128.5, align 1
  %scevgep22.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 10
  %2540 = load i8, i8* %scevgep22.10.5, align 1
  %conv126.10.5 = zext i8 %2540 to i32
  %2541 = load i8, i8* %arrayidx128.5, align 1
  %conv129.10.5 = zext i8 %2541 to i32
  %xor130.10.5 = xor i32 %conv129.10.5, %conv126.10.5
  %conv131.10.5 = trunc i32 %xor130.10.5 to i8
  store i8 %conv131.10.5, i8* %arrayidx128.5, align 1
  %scevgep22.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 11
  %2542 = load i8, i8* %scevgep22.11.5, align 1
  %conv126.11.5 = zext i8 %2542 to i32
  %2543 = load i8, i8* %arrayidx128.5, align 1
  %conv129.11.5 = zext i8 %2543 to i32
  %xor130.11.5 = xor i32 %conv129.11.5, %conv126.11.5
  %conv131.11.5 = trunc i32 %xor130.11.5 to i8
  store i8 %conv131.11.5, i8* %arrayidx128.5, align 1
  %scevgep22.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 12
  %2544 = load i8, i8* %scevgep22.12.5, align 1
  %conv126.12.5 = zext i8 %2544 to i32
  %2545 = load i8, i8* %arrayidx128.5, align 1
  %conv129.12.5 = zext i8 %2545 to i32
  %xor130.12.5 = xor i32 %conv129.12.5, %conv126.12.5
  %conv131.12.5 = trunc i32 %xor130.12.5 to i8
  store i8 %conv131.12.5, i8* %arrayidx128.5, align 1
  %scevgep22.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 13
  %2546 = load i8, i8* %scevgep22.13.5, align 1
  %conv126.13.5 = zext i8 %2546 to i32
  %2547 = load i8, i8* %arrayidx128.5, align 1
  %conv129.13.5 = zext i8 %2547 to i32
  %xor130.13.5 = xor i32 %conv129.13.5, %conv126.13.5
  %conv131.13.5 = trunc i32 %xor130.13.5 to i8
  store i8 %conv131.13.5, i8* %arrayidx128.5, align 1
  %scevgep22.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 14
  %2548 = load i8, i8* %scevgep22.14.5, align 1
  %conv126.14.5 = zext i8 %2548 to i32
  %2549 = load i8, i8* %arrayidx128.5, align 1
  %conv129.14.5 = zext i8 %2549 to i32
  %xor130.14.5 = xor i32 %conv129.14.5, %conv126.14.5
  %conv131.14.5 = trunc i32 %xor130.14.5 to i8
  store i8 %conv131.14.5, i8* %arrayidx128.5, align 1
  %scevgep22.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 0, i64 15
  %2550 = load i8, i8* %scevgep22.15.5, align 1
  %conv126.15.5 = zext i8 %2550 to i32
  %2551 = load i8, i8* %arrayidx128.5, align 1
  %conv129.15.5 = zext i8 %2551 to i32
  %xor130.15.5 = xor i32 %conv129.15.5, %conv126.15.5
  %conv131.15.5 = trunc i32 %xor130.15.5 to i8
  store i8 %conv131.15.5, i8* %arrayidx128.5, align 1
  %scevgep21.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2519, i64 0, i64 1, i64 0
  %2552 = bitcast i8* %scevgep21.5 to [16 x [16 x i8]]*
  %arrayidx108.6 = getelementptr inbounds i8, i8* %a, i64 6
  %2553 = load i8, i8* %arrayidx108.6, align 1
  %arrayidx110.6 = getelementptr inbounds i8, i8* %b, i64 6
  %2554 = load i8, i8* %arrayidx110.6, align 1
  %call111.6 = call zeroext i8 @mult(i8 zeroext %2553, i8 zeroext %2554)
  %arrayidx113.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %call111.6, i8* %arrayidx113.6, align 1
  %arrayidx128.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep22.6128 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 0
  %2555 = load i8, i8* %scevgep22.6128, align 1
  %conv126.6129 = zext i8 %2555 to i32
  %2556 = load i8, i8* %arrayidx128.6, align 1
  %conv129.6130 = zext i8 %2556 to i32
  %xor130.6131 = xor i32 %conv129.6130, %conv126.6129
  %conv131.6132 = trunc i32 %xor130.6131 to i8
  store i8 %conv131.6132, i8* %arrayidx128.6, align 1
  %scevgep22.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 1
  %2557 = load i8, i8* %scevgep22.1.6, align 1
  %conv126.1.6 = zext i8 %2557 to i32
  %2558 = load i8, i8* %arrayidx128.6, align 1
  %conv129.1.6 = zext i8 %2558 to i32
  %xor130.1.6 = xor i32 %conv129.1.6, %conv126.1.6
  %conv131.1.6 = trunc i32 %xor130.1.6 to i8
  store i8 %conv131.1.6, i8* %arrayidx128.6, align 1
  %scevgep22.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 2
  %2559 = load i8, i8* %scevgep22.2.6, align 1
  %conv126.2.6 = zext i8 %2559 to i32
  %2560 = load i8, i8* %arrayidx128.6, align 1
  %conv129.2.6 = zext i8 %2560 to i32
  %xor130.2.6 = xor i32 %conv129.2.6, %conv126.2.6
  %conv131.2.6 = trunc i32 %xor130.2.6 to i8
  store i8 %conv131.2.6, i8* %arrayidx128.6, align 1
  %scevgep22.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 3
  %2561 = load i8, i8* %scevgep22.3.6, align 1
  %conv126.3.6 = zext i8 %2561 to i32
  %2562 = load i8, i8* %arrayidx128.6, align 1
  %conv129.3.6 = zext i8 %2562 to i32
  %xor130.3.6 = xor i32 %conv129.3.6, %conv126.3.6
  %conv131.3.6 = trunc i32 %xor130.3.6 to i8
  store i8 %conv131.3.6, i8* %arrayidx128.6, align 1
  %scevgep22.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 4
  %2563 = load i8, i8* %scevgep22.4.6, align 1
  %conv126.4.6 = zext i8 %2563 to i32
  %2564 = load i8, i8* %arrayidx128.6, align 1
  %conv129.4.6 = zext i8 %2564 to i32
  %xor130.4.6 = xor i32 %conv129.4.6, %conv126.4.6
  %conv131.4.6 = trunc i32 %xor130.4.6 to i8
  store i8 %conv131.4.6, i8* %arrayidx128.6, align 1
  %scevgep22.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 5
  %2565 = load i8, i8* %scevgep22.5.6, align 1
  %conv126.5.6 = zext i8 %2565 to i32
  %2566 = load i8, i8* %arrayidx128.6, align 1
  %conv129.5.6 = zext i8 %2566 to i32
  %xor130.5.6 = xor i32 %conv129.5.6, %conv126.5.6
  %conv131.5.6 = trunc i32 %xor130.5.6 to i8
  store i8 %conv131.5.6, i8* %arrayidx128.6, align 1
  %scevgep22.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 7
  %2567 = load i8, i8* %scevgep22.7.6, align 1
  %conv126.7.6 = zext i8 %2567 to i32
  %2568 = load i8, i8* %arrayidx128.6, align 1
  %conv129.7.6 = zext i8 %2568 to i32
  %xor130.7.6 = xor i32 %conv129.7.6, %conv126.7.6
  %conv131.7.6 = trunc i32 %xor130.7.6 to i8
  store i8 %conv131.7.6, i8* %arrayidx128.6, align 1
  %scevgep22.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 8
  %2569 = load i8, i8* %scevgep22.8.6, align 1
  %conv126.8.6 = zext i8 %2569 to i32
  %2570 = load i8, i8* %arrayidx128.6, align 1
  %conv129.8.6 = zext i8 %2570 to i32
  %xor130.8.6 = xor i32 %conv129.8.6, %conv126.8.6
  %conv131.8.6 = trunc i32 %xor130.8.6 to i8
  store i8 %conv131.8.6, i8* %arrayidx128.6, align 1
  %scevgep22.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 9
  %2571 = load i8, i8* %scevgep22.9.6, align 1
  %conv126.9.6 = zext i8 %2571 to i32
  %2572 = load i8, i8* %arrayidx128.6, align 1
  %conv129.9.6 = zext i8 %2572 to i32
  %xor130.9.6 = xor i32 %conv129.9.6, %conv126.9.6
  %conv131.9.6 = trunc i32 %xor130.9.6 to i8
  store i8 %conv131.9.6, i8* %arrayidx128.6, align 1
  %scevgep22.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 10
  %2573 = load i8, i8* %scevgep22.10.6, align 1
  %conv126.10.6 = zext i8 %2573 to i32
  %2574 = load i8, i8* %arrayidx128.6, align 1
  %conv129.10.6 = zext i8 %2574 to i32
  %xor130.10.6 = xor i32 %conv129.10.6, %conv126.10.6
  %conv131.10.6 = trunc i32 %xor130.10.6 to i8
  store i8 %conv131.10.6, i8* %arrayidx128.6, align 1
  %scevgep22.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 11
  %2575 = load i8, i8* %scevgep22.11.6, align 1
  %conv126.11.6 = zext i8 %2575 to i32
  %2576 = load i8, i8* %arrayidx128.6, align 1
  %conv129.11.6 = zext i8 %2576 to i32
  %xor130.11.6 = xor i32 %conv129.11.6, %conv126.11.6
  %conv131.11.6 = trunc i32 %xor130.11.6 to i8
  store i8 %conv131.11.6, i8* %arrayidx128.6, align 1
  %scevgep22.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 12
  %2577 = load i8, i8* %scevgep22.12.6, align 1
  %conv126.12.6 = zext i8 %2577 to i32
  %2578 = load i8, i8* %arrayidx128.6, align 1
  %conv129.12.6 = zext i8 %2578 to i32
  %xor130.12.6 = xor i32 %conv129.12.6, %conv126.12.6
  %conv131.12.6 = trunc i32 %xor130.12.6 to i8
  store i8 %conv131.12.6, i8* %arrayidx128.6, align 1
  %scevgep22.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 13
  %2579 = load i8, i8* %scevgep22.13.6, align 1
  %conv126.13.6 = zext i8 %2579 to i32
  %2580 = load i8, i8* %arrayidx128.6, align 1
  %conv129.13.6 = zext i8 %2580 to i32
  %xor130.13.6 = xor i32 %conv129.13.6, %conv126.13.6
  %conv131.13.6 = trunc i32 %xor130.13.6 to i8
  store i8 %conv131.13.6, i8* %arrayidx128.6, align 1
  %scevgep22.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 14
  %2581 = load i8, i8* %scevgep22.14.6, align 1
  %conv126.14.6 = zext i8 %2581 to i32
  %2582 = load i8, i8* %arrayidx128.6, align 1
  %conv129.14.6 = zext i8 %2582 to i32
  %xor130.14.6 = xor i32 %conv129.14.6, %conv126.14.6
  %conv131.14.6 = trunc i32 %xor130.14.6 to i8
  store i8 %conv131.14.6, i8* %arrayidx128.6, align 1
  %scevgep22.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 0, i64 15
  %2583 = load i8, i8* %scevgep22.15.6, align 1
  %conv126.15.6 = zext i8 %2583 to i32
  %2584 = load i8, i8* %arrayidx128.6, align 1
  %conv129.15.6 = zext i8 %2584 to i32
  %xor130.15.6 = xor i32 %conv129.15.6, %conv126.15.6
  %conv131.15.6 = trunc i32 %xor130.15.6 to i8
  store i8 %conv131.15.6, i8* %arrayidx128.6, align 1
  %scevgep21.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2552, i64 0, i64 1, i64 0
  %2585 = bitcast i8* %scevgep21.6 to [16 x [16 x i8]]*
  %arrayidx108.7 = getelementptr inbounds i8, i8* %a, i64 7
  %2586 = load i8, i8* %arrayidx108.7, align 1
  %arrayidx110.7 = getelementptr inbounds i8, i8* %b, i64 7
  %2587 = load i8, i8* %arrayidx110.7, align 1
  %call111.7 = call zeroext i8 @mult(i8 zeroext %2586, i8 zeroext %2587)
  %arrayidx113.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %call111.7, i8* %arrayidx113.7, align 1
  %arrayidx128.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep22.7138 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 0
  %2588 = load i8, i8* %scevgep22.7138, align 1
  %conv126.7139 = zext i8 %2588 to i32
  %2589 = load i8, i8* %arrayidx128.7, align 1
  %conv129.7140 = zext i8 %2589 to i32
  %xor130.7141 = xor i32 %conv129.7140, %conv126.7139
  %conv131.7142 = trunc i32 %xor130.7141 to i8
  store i8 %conv131.7142, i8* %arrayidx128.7, align 1
  %scevgep22.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 1
  %2590 = load i8, i8* %scevgep22.1.7, align 1
  %conv126.1.7 = zext i8 %2590 to i32
  %2591 = load i8, i8* %arrayidx128.7, align 1
  %conv129.1.7 = zext i8 %2591 to i32
  %xor130.1.7 = xor i32 %conv129.1.7, %conv126.1.7
  %conv131.1.7 = trunc i32 %xor130.1.7 to i8
  store i8 %conv131.1.7, i8* %arrayidx128.7, align 1
  %scevgep22.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 2
  %2592 = load i8, i8* %scevgep22.2.7, align 1
  %conv126.2.7 = zext i8 %2592 to i32
  %2593 = load i8, i8* %arrayidx128.7, align 1
  %conv129.2.7 = zext i8 %2593 to i32
  %xor130.2.7 = xor i32 %conv129.2.7, %conv126.2.7
  %conv131.2.7 = trunc i32 %xor130.2.7 to i8
  store i8 %conv131.2.7, i8* %arrayidx128.7, align 1
  %scevgep22.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 3
  %2594 = load i8, i8* %scevgep22.3.7, align 1
  %conv126.3.7 = zext i8 %2594 to i32
  %2595 = load i8, i8* %arrayidx128.7, align 1
  %conv129.3.7 = zext i8 %2595 to i32
  %xor130.3.7 = xor i32 %conv129.3.7, %conv126.3.7
  %conv131.3.7 = trunc i32 %xor130.3.7 to i8
  store i8 %conv131.3.7, i8* %arrayidx128.7, align 1
  %scevgep22.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 4
  %2596 = load i8, i8* %scevgep22.4.7, align 1
  %conv126.4.7 = zext i8 %2596 to i32
  %2597 = load i8, i8* %arrayidx128.7, align 1
  %conv129.4.7 = zext i8 %2597 to i32
  %xor130.4.7 = xor i32 %conv129.4.7, %conv126.4.7
  %conv131.4.7 = trunc i32 %xor130.4.7 to i8
  store i8 %conv131.4.7, i8* %arrayidx128.7, align 1
  %scevgep22.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 5
  %2598 = load i8, i8* %scevgep22.5.7, align 1
  %conv126.5.7 = zext i8 %2598 to i32
  %2599 = load i8, i8* %arrayidx128.7, align 1
  %conv129.5.7 = zext i8 %2599 to i32
  %xor130.5.7 = xor i32 %conv129.5.7, %conv126.5.7
  %conv131.5.7 = trunc i32 %xor130.5.7 to i8
  store i8 %conv131.5.7, i8* %arrayidx128.7, align 1
  %scevgep22.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 6
  %2600 = load i8, i8* %scevgep22.6.7, align 1
  %conv126.6.7 = zext i8 %2600 to i32
  %2601 = load i8, i8* %arrayidx128.7, align 1
  %conv129.6.7 = zext i8 %2601 to i32
  %xor130.6.7 = xor i32 %conv129.6.7, %conv126.6.7
  %conv131.6.7 = trunc i32 %xor130.6.7 to i8
  store i8 %conv131.6.7, i8* %arrayidx128.7, align 1
  %scevgep22.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 8
  %2602 = load i8, i8* %scevgep22.8.7, align 1
  %conv126.8.7 = zext i8 %2602 to i32
  %2603 = load i8, i8* %arrayidx128.7, align 1
  %conv129.8.7 = zext i8 %2603 to i32
  %xor130.8.7 = xor i32 %conv129.8.7, %conv126.8.7
  %conv131.8.7 = trunc i32 %xor130.8.7 to i8
  store i8 %conv131.8.7, i8* %arrayidx128.7, align 1
  %scevgep22.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 9
  %2604 = load i8, i8* %scevgep22.9.7, align 1
  %conv126.9.7 = zext i8 %2604 to i32
  %2605 = load i8, i8* %arrayidx128.7, align 1
  %conv129.9.7 = zext i8 %2605 to i32
  %xor130.9.7 = xor i32 %conv129.9.7, %conv126.9.7
  %conv131.9.7 = trunc i32 %xor130.9.7 to i8
  store i8 %conv131.9.7, i8* %arrayidx128.7, align 1
  %scevgep22.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 10
  %2606 = load i8, i8* %scevgep22.10.7, align 1
  %conv126.10.7 = zext i8 %2606 to i32
  %2607 = load i8, i8* %arrayidx128.7, align 1
  %conv129.10.7 = zext i8 %2607 to i32
  %xor130.10.7 = xor i32 %conv129.10.7, %conv126.10.7
  %conv131.10.7 = trunc i32 %xor130.10.7 to i8
  store i8 %conv131.10.7, i8* %arrayidx128.7, align 1
  %scevgep22.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 11
  %2608 = load i8, i8* %scevgep22.11.7, align 1
  %conv126.11.7 = zext i8 %2608 to i32
  %2609 = load i8, i8* %arrayidx128.7, align 1
  %conv129.11.7 = zext i8 %2609 to i32
  %xor130.11.7 = xor i32 %conv129.11.7, %conv126.11.7
  %conv131.11.7 = trunc i32 %xor130.11.7 to i8
  store i8 %conv131.11.7, i8* %arrayidx128.7, align 1
  %scevgep22.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 12
  %2610 = load i8, i8* %scevgep22.12.7, align 1
  %conv126.12.7 = zext i8 %2610 to i32
  %2611 = load i8, i8* %arrayidx128.7, align 1
  %conv129.12.7 = zext i8 %2611 to i32
  %xor130.12.7 = xor i32 %conv129.12.7, %conv126.12.7
  %conv131.12.7 = trunc i32 %xor130.12.7 to i8
  store i8 %conv131.12.7, i8* %arrayidx128.7, align 1
  %scevgep22.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 13
  %2612 = load i8, i8* %scevgep22.13.7, align 1
  %conv126.13.7 = zext i8 %2612 to i32
  %2613 = load i8, i8* %arrayidx128.7, align 1
  %conv129.13.7 = zext i8 %2613 to i32
  %xor130.13.7 = xor i32 %conv129.13.7, %conv126.13.7
  %conv131.13.7 = trunc i32 %xor130.13.7 to i8
  store i8 %conv131.13.7, i8* %arrayidx128.7, align 1
  %scevgep22.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 14
  %2614 = load i8, i8* %scevgep22.14.7, align 1
  %conv126.14.7 = zext i8 %2614 to i32
  %2615 = load i8, i8* %arrayidx128.7, align 1
  %conv129.14.7 = zext i8 %2615 to i32
  %xor130.14.7 = xor i32 %conv129.14.7, %conv126.14.7
  %conv131.14.7 = trunc i32 %xor130.14.7 to i8
  store i8 %conv131.14.7, i8* %arrayidx128.7, align 1
  %scevgep22.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 0, i64 15
  %2616 = load i8, i8* %scevgep22.15.7, align 1
  %conv126.15.7 = zext i8 %2616 to i32
  %2617 = load i8, i8* %arrayidx128.7, align 1
  %conv129.15.7 = zext i8 %2617 to i32
  %xor130.15.7 = xor i32 %conv129.15.7, %conv126.15.7
  %conv131.15.7 = trunc i32 %xor130.15.7 to i8
  store i8 %conv131.15.7, i8* %arrayidx128.7, align 1
  %scevgep21.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2585, i64 0, i64 1, i64 0
  %2618 = bitcast i8* %scevgep21.7 to [16 x [16 x i8]]*
  %arrayidx108.8 = getelementptr inbounds i8, i8* %a, i64 8
  %2619 = load i8, i8* %arrayidx108.8, align 1
  %arrayidx110.8 = getelementptr inbounds i8, i8* %b, i64 8
  %2620 = load i8, i8* %arrayidx110.8, align 1
  %call111.8 = call zeroext i8 @mult(i8 zeroext %2619, i8 zeroext %2620)
  %arrayidx113.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %call111.8, i8* %arrayidx113.8, align 1
  %arrayidx128.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep22.8148 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 0
  %2621 = load i8, i8* %scevgep22.8148, align 1
  %conv126.8149 = zext i8 %2621 to i32
  %2622 = load i8, i8* %arrayidx128.8, align 1
  %conv129.8150 = zext i8 %2622 to i32
  %xor130.8151 = xor i32 %conv129.8150, %conv126.8149
  %conv131.8152 = trunc i32 %xor130.8151 to i8
  store i8 %conv131.8152, i8* %arrayidx128.8, align 1
  %scevgep22.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 1
  %2623 = load i8, i8* %scevgep22.1.8, align 1
  %conv126.1.8 = zext i8 %2623 to i32
  %2624 = load i8, i8* %arrayidx128.8, align 1
  %conv129.1.8 = zext i8 %2624 to i32
  %xor130.1.8 = xor i32 %conv129.1.8, %conv126.1.8
  %conv131.1.8 = trunc i32 %xor130.1.8 to i8
  store i8 %conv131.1.8, i8* %arrayidx128.8, align 1
  %scevgep22.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 2
  %2625 = load i8, i8* %scevgep22.2.8, align 1
  %conv126.2.8 = zext i8 %2625 to i32
  %2626 = load i8, i8* %arrayidx128.8, align 1
  %conv129.2.8 = zext i8 %2626 to i32
  %xor130.2.8 = xor i32 %conv129.2.8, %conv126.2.8
  %conv131.2.8 = trunc i32 %xor130.2.8 to i8
  store i8 %conv131.2.8, i8* %arrayidx128.8, align 1
  %scevgep22.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 3
  %2627 = load i8, i8* %scevgep22.3.8, align 1
  %conv126.3.8 = zext i8 %2627 to i32
  %2628 = load i8, i8* %arrayidx128.8, align 1
  %conv129.3.8 = zext i8 %2628 to i32
  %xor130.3.8 = xor i32 %conv129.3.8, %conv126.3.8
  %conv131.3.8 = trunc i32 %xor130.3.8 to i8
  store i8 %conv131.3.8, i8* %arrayidx128.8, align 1
  %scevgep22.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 4
  %2629 = load i8, i8* %scevgep22.4.8, align 1
  %conv126.4.8 = zext i8 %2629 to i32
  %2630 = load i8, i8* %arrayidx128.8, align 1
  %conv129.4.8 = zext i8 %2630 to i32
  %xor130.4.8 = xor i32 %conv129.4.8, %conv126.4.8
  %conv131.4.8 = trunc i32 %xor130.4.8 to i8
  store i8 %conv131.4.8, i8* %arrayidx128.8, align 1
  %scevgep22.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 5
  %2631 = load i8, i8* %scevgep22.5.8, align 1
  %conv126.5.8 = zext i8 %2631 to i32
  %2632 = load i8, i8* %arrayidx128.8, align 1
  %conv129.5.8 = zext i8 %2632 to i32
  %xor130.5.8 = xor i32 %conv129.5.8, %conv126.5.8
  %conv131.5.8 = trunc i32 %xor130.5.8 to i8
  store i8 %conv131.5.8, i8* %arrayidx128.8, align 1
  %scevgep22.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 6
  %2633 = load i8, i8* %scevgep22.6.8, align 1
  %conv126.6.8 = zext i8 %2633 to i32
  %2634 = load i8, i8* %arrayidx128.8, align 1
  %conv129.6.8 = zext i8 %2634 to i32
  %xor130.6.8 = xor i32 %conv129.6.8, %conv126.6.8
  %conv131.6.8 = trunc i32 %xor130.6.8 to i8
  store i8 %conv131.6.8, i8* %arrayidx128.8, align 1
  %scevgep22.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 7
  %2635 = load i8, i8* %scevgep22.7.8, align 1
  %conv126.7.8 = zext i8 %2635 to i32
  %2636 = load i8, i8* %arrayidx128.8, align 1
  %conv129.7.8 = zext i8 %2636 to i32
  %xor130.7.8 = xor i32 %conv129.7.8, %conv126.7.8
  %conv131.7.8 = trunc i32 %xor130.7.8 to i8
  store i8 %conv131.7.8, i8* %arrayidx128.8, align 1
  %scevgep22.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 9
  %2637 = load i8, i8* %scevgep22.9.8, align 1
  %conv126.9.8 = zext i8 %2637 to i32
  %2638 = load i8, i8* %arrayidx128.8, align 1
  %conv129.9.8 = zext i8 %2638 to i32
  %xor130.9.8 = xor i32 %conv129.9.8, %conv126.9.8
  %conv131.9.8 = trunc i32 %xor130.9.8 to i8
  store i8 %conv131.9.8, i8* %arrayidx128.8, align 1
  %scevgep22.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 10
  %2639 = load i8, i8* %scevgep22.10.8, align 1
  %conv126.10.8 = zext i8 %2639 to i32
  %2640 = load i8, i8* %arrayidx128.8, align 1
  %conv129.10.8 = zext i8 %2640 to i32
  %xor130.10.8 = xor i32 %conv129.10.8, %conv126.10.8
  %conv131.10.8 = trunc i32 %xor130.10.8 to i8
  store i8 %conv131.10.8, i8* %arrayidx128.8, align 1
  %scevgep22.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 11
  %2641 = load i8, i8* %scevgep22.11.8, align 1
  %conv126.11.8 = zext i8 %2641 to i32
  %2642 = load i8, i8* %arrayidx128.8, align 1
  %conv129.11.8 = zext i8 %2642 to i32
  %xor130.11.8 = xor i32 %conv129.11.8, %conv126.11.8
  %conv131.11.8 = trunc i32 %xor130.11.8 to i8
  store i8 %conv131.11.8, i8* %arrayidx128.8, align 1
  %scevgep22.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 12
  %2643 = load i8, i8* %scevgep22.12.8, align 1
  %conv126.12.8 = zext i8 %2643 to i32
  %2644 = load i8, i8* %arrayidx128.8, align 1
  %conv129.12.8 = zext i8 %2644 to i32
  %xor130.12.8 = xor i32 %conv129.12.8, %conv126.12.8
  %conv131.12.8 = trunc i32 %xor130.12.8 to i8
  store i8 %conv131.12.8, i8* %arrayidx128.8, align 1
  %scevgep22.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 13
  %2645 = load i8, i8* %scevgep22.13.8, align 1
  %conv126.13.8 = zext i8 %2645 to i32
  %2646 = load i8, i8* %arrayidx128.8, align 1
  %conv129.13.8 = zext i8 %2646 to i32
  %xor130.13.8 = xor i32 %conv129.13.8, %conv126.13.8
  %conv131.13.8 = trunc i32 %xor130.13.8 to i8
  store i8 %conv131.13.8, i8* %arrayidx128.8, align 1
  %scevgep22.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 14
  %2647 = load i8, i8* %scevgep22.14.8, align 1
  %conv126.14.8 = zext i8 %2647 to i32
  %2648 = load i8, i8* %arrayidx128.8, align 1
  %conv129.14.8 = zext i8 %2648 to i32
  %xor130.14.8 = xor i32 %conv129.14.8, %conv126.14.8
  %conv131.14.8 = trunc i32 %xor130.14.8 to i8
  store i8 %conv131.14.8, i8* %arrayidx128.8, align 1
  %scevgep22.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 0, i64 15
  %2649 = load i8, i8* %scevgep22.15.8, align 1
  %conv126.15.8 = zext i8 %2649 to i32
  %2650 = load i8, i8* %arrayidx128.8, align 1
  %conv129.15.8 = zext i8 %2650 to i32
  %xor130.15.8 = xor i32 %conv129.15.8, %conv126.15.8
  %conv131.15.8 = trunc i32 %xor130.15.8 to i8
  store i8 %conv131.15.8, i8* %arrayidx128.8, align 1
  %scevgep21.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2618, i64 0, i64 1, i64 0
  %2651 = bitcast i8* %scevgep21.8 to [16 x [16 x i8]]*
  %arrayidx108.9 = getelementptr inbounds i8, i8* %a, i64 9
  %2652 = load i8, i8* %arrayidx108.9, align 1
  %arrayidx110.9 = getelementptr inbounds i8, i8* %b, i64 9
  %2653 = load i8, i8* %arrayidx110.9, align 1
  %call111.9 = call zeroext i8 @mult(i8 zeroext %2652, i8 zeroext %2653)
  %arrayidx113.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %call111.9, i8* %arrayidx113.9, align 1
  %arrayidx128.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep22.9158 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 0
  %2654 = load i8, i8* %scevgep22.9158, align 1
  %conv126.9159 = zext i8 %2654 to i32
  %2655 = load i8, i8* %arrayidx128.9, align 1
  %conv129.9160 = zext i8 %2655 to i32
  %xor130.9161 = xor i32 %conv129.9160, %conv126.9159
  %conv131.9162 = trunc i32 %xor130.9161 to i8
  store i8 %conv131.9162, i8* %arrayidx128.9, align 1
  %scevgep22.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 1
  %2656 = load i8, i8* %scevgep22.1.9, align 1
  %conv126.1.9 = zext i8 %2656 to i32
  %2657 = load i8, i8* %arrayidx128.9, align 1
  %conv129.1.9 = zext i8 %2657 to i32
  %xor130.1.9 = xor i32 %conv129.1.9, %conv126.1.9
  %conv131.1.9 = trunc i32 %xor130.1.9 to i8
  store i8 %conv131.1.9, i8* %arrayidx128.9, align 1
  %scevgep22.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 2
  %2658 = load i8, i8* %scevgep22.2.9, align 1
  %conv126.2.9 = zext i8 %2658 to i32
  %2659 = load i8, i8* %arrayidx128.9, align 1
  %conv129.2.9 = zext i8 %2659 to i32
  %xor130.2.9 = xor i32 %conv129.2.9, %conv126.2.9
  %conv131.2.9 = trunc i32 %xor130.2.9 to i8
  store i8 %conv131.2.9, i8* %arrayidx128.9, align 1
  %scevgep22.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 3
  %2660 = load i8, i8* %scevgep22.3.9, align 1
  %conv126.3.9 = zext i8 %2660 to i32
  %2661 = load i8, i8* %arrayidx128.9, align 1
  %conv129.3.9 = zext i8 %2661 to i32
  %xor130.3.9 = xor i32 %conv129.3.9, %conv126.3.9
  %conv131.3.9 = trunc i32 %xor130.3.9 to i8
  store i8 %conv131.3.9, i8* %arrayidx128.9, align 1
  %scevgep22.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 4
  %2662 = load i8, i8* %scevgep22.4.9, align 1
  %conv126.4.9 = zext i8 %2662 to i32
  %2663 = load i8, i8* %arrayidx128.9, align 1
  %conv129.4.9 = zext i8 %2663 to i32
  %xor130.4.9 = xor i32 %conv129.4.9, %conv126.4.9
  %conv131.4.9 = trunc i32 %xor130.4.9 to i8
  store i8 %conv131.4.9, i8* %arrayidx128.9, align 1
  %scevgep22.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 5
  %2664 = load i8, i8* %scevgep22.5.9, align 1
  %conv126.5.9 = zext i8 %2664 to i32
  %2665 = load i8, i8* %arrayidx128.9, align 1
  %conv129.5.9 = zext i8 %2665 to i32
  %xor130.5.9 = xor i32 %conv129.5.9, %conv126.5.9
  %conv131.5.9 = trunc i32 %xor130.5.9 to i8
  store i8 %conv131.5.9, i8* %arrayidx128.9, align 1
  %scevgep22.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 6
  %2666 = load i8, i8* %scevgep22.6.9, align 1
  %conv126.6.9 = zext i8 %2666 to i32
  %2667 = load i8, i8* %arrayidx128.9, align 1
  %conv129.6.9 = zext i8 %2667 to i32
  %xor130.6.9 = xor i32 %conv129.6.9, %conv126.6.9
  %conv131.6.9 = trunc i32 %xor130.6.9 to i8
  store i8 %conv131.6.9, i8* %arrayidx128.9, align 1
  %scevgep22.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 7
  %2668 = load i8, i8* %scevgep22.7.9, align 1
  %conv126.7.9 = zext i8 %2668 to i32
  %2669 = load i8, i8* %arrayidx128.9, align 1
  %conv129.7.9 = zext i8 %2669 to i32
  %xor130.7.9 = xor i32 %conv129.7.9, %conv126.7.9
  %conv131.7.9 = trunc i32 %xor130.7.9 to i8
  store i8 %conv131.7.9, i8* %arrayidx128.9, align 1
  %scevgep22.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 8
  %2670 = load i8, i8* %scevgep22.8.9, align 1
  %conv126.8.9 = zext i8 %2670 to i32
  %2671 = load i8, i8* %arrayidx128.9, align 1
  %conv129.8.9 = zext i8 %2671 to i32
  %xor130.8.9 = xor i32 %conv129.8.9, %conv126.8.9
  %conv131.8.9 = trunc i32 %xor130.8.9 to i8
  store i8 %conv131.8.9, i8* %arrayidx128.9, align 1
  %scevgep22.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 10
  %2672 = load i8, i8* %scevgep22.10.9, align 1
  %conv126.10.9 = zext i8 %2672 to i32
  %2673 = load i8, i8* %arrayidx128.9, align 1
  %conv129.10.9 = zext i8 %2673 to i32
  %xor130.10.9 = xor i32 %conv129.10.9, %conv126.10.9
  %conv131.10.9 = trunc i32 %xor130.10.9 to i8
  store i8 %conv131.10.9, i8* %arrayidx128.9, align 1
  %scevgep22.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 11
  %2674 = load i8, i8* %scevgep22.11.9, align 1
  %conv126.11.9 = zext i8 %2674 to i32
  %2675 = load i8, i8* %arrayidx128.9, align 1
  %conv129.11.9 = zext i8 %2675 to i32
  %xor130.11.9 = xor i32 %conv129.11.9, %conv126.11.9
  %conv131.11.9 = trunc i32 %xor130.11.9 to i8
  store i8 %conv131.11.9, i8* %arrayidx128.9, align 1
  %scevgep22.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 12
  %2676 = load i8, i8* %scevgep22.12.9, align 1
  %conv126.12.9 = zext i8 %2676 to i32
  %2677 = load i8, i8* %arrayidx128.9, align 1
  %conv129.12.9 = zext i8 %2677 to i32
  %xor130.12.9 = xor i32 %conv129.12.9, %conv126.12.9
  %conv131.12.9 = trunc i32 %xor130.12.9 to i8
  store i8 %conv131.12.9, i8* %arrayidx128.9, align 1
  %scevgep22.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 13
  %2678 = load i8, i8* %scevgep22.13.9, align 1
  %conv126.13.9 = zext i8 %2678 to i32
  %2679 = load i8, i8* %arrayidx128.9, align 1
  %conv129.13.9 = zext i8 %2679 to i32
  %xor130.13.9 = xor i32 %conv129.13.9, %conv126.13.9
  %conv131.13.9 = trunc i32 %xor130.13.9 to i8
  store i8 %conv131.13.9, i8* %arrayidx128.9, align 1
  %scevgep22.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 14
  %2680 = load i8, i8* %scevgep22.14.9, align 1
  %conv126.14.9 = zext i8 %2680 to i32
  %2681 = load i8, i8* %arrayidx128.9, align 1
  %conv129.14.9 = zext i8 %2681 to i32
  %xor130.14.9 = xor i32 %conv129.14.9, %conv126.14.9
  %conv131.14.9 = trunc i32 %xor130.14.9 to i8
  store i8 %conv131.14.9, i8* %arrayidx128.9, align 1
  %scevgep22.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 0, i64 15
  %2682 = load i8, i8* %scevgep22.15.9, align 1
  %conv126.15.9 = zext i8 %2682 to i32
  %2683 = load i8, i8* %arrayidx128.9, align 1
  %conv129.15.9 = zext i8 %2683 to i32
  %xor130.15.9 = xor i32 %conv129.15.9, %conv126.15.9
  %conv131.15.9 = trunc i32 %xor130.15.9 to i8
  store i8 %conv131.15.9, i8* %arrayidx128.9, align 1
  %scevgep21.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2651, i64 0, i64 1, i64 0
  %2684 = bitcast i8* %scevgep21.9 to [16 x [16 x i8]]*
  %arrayidx108.10 = getelementptr inbounds i8, i8* %a, i64 10
  %2685 = load i8, i8* %arrayidx108.10, align 1
  %arrayidx110.10 = getelementptr inbounds i8, i8* %b, i64 10
  %2686 = load i8, i8* %arrayidx110.10, align 1
  %call111.10 = call zeroext i8 @mult(i8 zeroext %2685, i8 zeroext %2686)
  %arrayidx113.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %call111.10, i8* %arrayidx113.10, align 1
  %arrayidx128.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep22.10168 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 0
  %2687 = load i8, i8* %scevgep22.10168, align 1
  %conv126.10169 = zext i8 %2687 to i32
  %2688 = load i8, i8* %arrayidx128.10, align 1
  %conv129.10170 = zext i8 %2688 to i32
  %xor130.10171 = xor i32 %conv129.10170, %conv126.10169
  %conv131.10172 = trunc i32 %xor130.10171 to i8
  store i8 %conv131.10172, i8* %arrayidx128.10, align 1
  %scevgep22.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 1
  %2689 = load i8, i8* %scevgep22.1.10, align 1
  %conv126.1.10 = zext i8 %2689 to i32
  %2690 = load i8, i8* %arrayidx128.10, align 1
  %conv129.1.10 = zext i8 %2690 to i32
  %xor130.1.10 = xor i32 %conv129.1.10, %conv126.1.10
  %conv131.1.10 = trunc i32 %xor130.1.10 to i8
  store i8 %conv131.1.10, i8* %arrayidx128.10, align 1
  %scevgep22.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 2
  %2691 = load i8, i8* %scevgep22.2.10, align 1
  %conv126.2.10 = zext i8 %2691 to i32
  %2692 = load i8, i8* %arrayidx128.10, align 1
  %conv129.2.10 = zext i8 %2692 to i32
  %xor130.2.10 = xor i32 %conv129.2.10, %conv126.2.10
  %conv131.2.10 = trunc i32 %xor130.2.10 to i8
  store i8 %conv131.2.10, i8* %arrayidx128.10, align 1
  %scevgep22.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 3
  %2693 = load i8, i8* %scevgep22.3.10, align 1
  %conv126.3.10 = zext i8 %2693 to i32
  %2694 = load i8, i8* %arrayidx128.10, align 1
  %conv129.3.10 = zext i8 %2694 to i32
  %xor130.3.10 = xor i32 %conv129.3.10, %conv126.3.10
  %conv131.3.10 = trunc i32 %xor130.3.10 to i8
  store i8 %conv131.3.10, i8* %arrayidx128.10, align 1
  %scevgep22.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 4
  %2695 = load i8, i8* %scevgep22.4.10, align 1
  %conv126.4.10 = zext i8 %2695 to i32
  %2696 = load i8, i8* %arrayidx128.10, align 1
  %conv129.4.10 = zext i8 %2696 to i32
  %xor130.4.10 = xor i32 %conv129.4.10, %conv126.4.10
  %conv131.4.10 = trunc i32 %xor130.4.10 to i8
  store i8 %conv131.4.10, i8* %arrayidx128.10, align 1
  %scevgep22.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 5
  %2697 = load i8, i8* %scevgep22.5.10, align 1
  %conv126.5.10 = zext i8 %2697 to i32
  %2698 = load i8, i8* %arrayidx128.10, align 1
  %conv129.5.10 = zext i8 %2698 to i32
  %xor130.5.10 = xor i32 %conv129.5.10, %conv126.5.10
  %conv131.5.10 = trunc i32 %xor130.5.10 to i8
  store i8 %conv131.5.10, i8* %arrayidx128.10, align 1
  %scevgep22.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 6
  %2699 = load i8, i8* %scevgep22.6.10, align 1
  %conv126.6.10 = zext i8 %2699 to i32
  %2700 = load i8, i8* %arrayidx128.10, align 1
  %conv129.6.10 = zext i8 %2700 to i32
  %xor130.6.10 = xor i32 %conv129.6.10, %conv126.6.10
  %conv131.6.10 = trunc i32 %xor130.6.10 to i8
  store i8 %conv131.6.10, i8* %arrayidx128.10, align 1
  %scevgep22.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 7
  %2701 = load i8, i8* %scevgep22.7.10, align 1
  %conv126.7.10 = zext i8 %2701 to i32
  %2702 = load i8, i8* %arrayidx128.10, align 1
  %conv129.7.10 = zext i8 %2702 to i32
  %xor130.7.10 = xor i32 %conv129.7.10, %conv126.7.10
  %conv131.7.10 = trunc i32 %xor130.7.10 to i8
  store i8 %conv131.7.10, i8* %arrayidx128.10, align 1
  %scevgep22.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 8
  %2703 = load i8, i8* %scevgep22.8.10, align 1
  %conv126.8.10 = zext i8 %2703 to i32
  %2704 = load i8, i8* %arrayidx128.10, align 1
  %conv129.8.10 = zext i8 %2704 to i32
  %xor130.8.10 = xor i32 %conv129.8.10, %conv126.8.10
  %conv131.8.10 = trunc i32 %xor130.8.10 to i8
  store i8 %conv131.8.10, i8* %arrayidx128.10, align 1
  %scevgep22.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 9
  %2705 = load i8, i8* %scevgep22.9.10, align 1
  %conv126.9.10 = zext i8 %2705 to i32
  %2706 = load i8, i8* %arrayidx128.10, align 1
  %conv129.9.10 = zext i8 %2706 to i32
  %xor130.9.10 = xor i32 %conv129.9.10, %conv126.9.10
  %conv131.9.10 = trunc i32 %xor130.9.10 to i8
  store i8 %conv131.9.10, i8* %arrayidx128.10, align 1
  %scevgep22.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 11
  %2707 = load i8, i8* %scevgep22.11.10, align 1
  %conv126.11.10 = zext i8 %2707 to i32
  %2708 = load i8, i8* %arrayidx128.10, align 1
  %conv129.11.10 = zext i8 %2708 to i32
  %xor130.11.10 = xor i32 %conv129.11.10, %conv126.11.10
  %conv131.11.10 = trunc i32 %xor130.11.10 to i8
  store i8 %conv131.11.10, i8* %arrayidx128.10, align 1
  %scevgep22.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 12
  %2709 = load i8, i8* %scevgep22.12.10, align 1
  %conv126.12.10 = zext i8 %2709 to i32
  %2710 = load i8, i8* %arrayidx128.10, align 1
  %conv129.12.10 = zext i8 %2710 to i32
  %xor130.12.10 = xor i32 %conv129.12.10, %conv126.12.10
  %conv131.12.10 = trunc i32 %xor130.12.10 to i8
  store i8 %conv131.12.10, i8* %arrayidx128.10, align 1
  %scevgep22.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 13
  %2711 = load i8, i8* %scevgep22.13.10, align 1
  %conv126.13.10 = zext i8 %2711 to i32
  %2712 = load i8, i8* %arrayidx128.10, align 1
  %conv129.13.10 = zext i8 %2712 to i32
  %xor130.13.10 = xor i32 %conv129.13.10, %conv126.13.10
  %conv131.13.10 = trunc i32 %xor130.13.10 to i8
  store i8 %conv131.13.10, i8* %arrayidx128.10, align 1
  %scevgep22.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 14
  %2713 = load i8, i8* %scevgep22.14.10, align 1
  %conv126.14.10 = zext i8 %2713 to i32
  %2714 = load i8, i8* %arrayidx128.10, align 1
  %conv129.14.10 = zext i8 %2714 to i32
  %xor130.14.10 = xor i32 %conv129.14.10, %conv126.14.10
  %conv131.14.10 = trunc i32 %xor130.14.10 to i8
  store i8 %conv131.14.10, i8* %arrayidx128.10, align 1
  %scevgep22.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 0, i64 15
  %2715 = load i8, i8* %scevgep22.15.10, align 1
  %conv126.15.10 = zext i8 %2715 to i32
  %2716 = load i8, i8* %arrayidx128.10, align 1
  %conv129.15.10 = zext i8 %2716 to i32
  %xor130.15.10 = xor i32 %conv129.15.10, %conv126.15.10
  %conv131.15.10 = trunc i32 %xor130.15.10 to i8
  store i8 %conv131.15.10, i8* %arrayidx128.10, align 1
  %scevgep21.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2684, i64 0, i64 1, i64 0
  %2717 = bitcast i8* %scevgep21.10 to [16 x [16 x i8]]*
  %arrayidx108.11 = getelementptr inbounds i8, i8* %a, i64 11
  %2718 = load i8, i8* %arrayidx108.11, align 1
  %arrayidx110.11 = getelementptr inbounds i8, i8* %b, i64 11
  %2719 = load i8, i8* %arrayidx110.11, align 1
  %call111.11 = call zeroext i8 @mult(i8 zeroext %2718, i8 zeroext %2719)
  %arrayidx113.11 = getelementptr inbounds i8, i8* %c, i64 11
  store i8 %call111.11, i8* %arrayidx113.11, align 1
  %arrayidx128.11 = getelementptr inbounds i8, i8* %c, i64 11
  %scevgep22.11178 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 0
  %2720 = load i8, i8* %scevgep22.11178, align 1
  %conv126.11179 = zext i8 %2720 to i32
  %2721 = load i8, i8* %arrayidx128.11, align 1
  %conv129.11180 = zext i8 %2721 to i32
  %xor130.11181 = xor i32 %conv129.11180, %conv126.11179
  %conv131.11182 = trunc i32 %xor130.11181 to i8
  store i8 %conv131.11182, i8* %arrayidx128.11, align 1
  %scevgep22.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 1
  %2722 = load i8, i8* %scevgep22.1.11, align 1
  %conv126.1.11 = zext i8 %2722 to i32
  %2723 = load i8, i8* %arrayidx128.11, align 1
  %conv129.1.11 = zext i8 %2723 to i32
  %xor130.1.11 = xor i32 %conv129.1.11, %conv126.1.11
  %conv131.1.11 = trunc i32 %xor130.1.11 to i8
  store i8 %conv131.1.11, i8* %arrayidx128.11, align 1
  %scevgep22.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 2
  %2724 = load i8, i8* %scevgep22.2.11, align 1
  %conv126.2.11 = zext i8 %2724 to i32
  %2725 = load i8, i8* %arrayidx128.11, align 1
  %conv129.2.11 = zext i8 %2725 to i32
  %xor130.2.11 = xor i32 %conv129.2.11, %conv126.2.11
  %conv131.2.11 = trunc i32 %xor130.2.11 to i8
  store i8 %conv131.2.11, i8* %arrayidx128.11, align 1
  %scevgep22.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 3
  %2726 = load i8, i8* %scevgep22.3.11, align 1
  %conv126.3.11 = zext i8 %2726 to i32
  %2727 = load i8, i8* %arrayidx128.11, align 1
  %conv129.3.11 = zext i8 %2727 to i32
  %xor130.3.11 = xor i32 %conv129.3.11, %conv126.3.11
  %conv131.3.11 = trunc i32 %xor130.3.11 to i8
  store i8 %conv131.3.11, i8* %arrayidx128.11, align 1
  %scevgep22.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 4
  %2728 = load i8, i8* %scevgep22.4.11, align 1
  %conv126.4.11 = zext i8 %2728 to i32
  %2729 = load i8, i8* %arrayidx128.11, align 1
  %conv129.4.11 = zext i8 %2729 to i32
  %xor130.4.11 = xor i32 %conv129.4.11, %conv126.4.11
  %conv131.4.11 = trunc i32 %xor130.4.11 to i8
  store i8 %conv131.4.11, i8* %arrayidx128.11, align 1
  %scevgep22.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 5
  %2730 = load i8, i8* %scevgep22.5.11, align 1
  %conv126.5.11 = zext i8 %2730 to i32
  %2731 = load i8, i8* %arrayidx128.11, align 1
  %conv129.5.11 = zext i8 %2731 to i32
  %xor130.5.11 = xor i32 %conv129.5.11, %conv126.5.11
  %conv131.5.11 = trunc i32 %xor130.5.11 to i8
  store i8 %conv131.5.11, i8* %arrayidx128.11, align 1
  %scevgep22.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 6
  %2732 = load i8, i8* %scevgep22.6.11, align 1
  %conv126.6.11 = zext i8 %2732 to i32
  %2733 = load i8, i8* %arrayidx128.11, align 1
  %conv129.6.11 = zext i8 %2733 to i32
  %xor130.6.11 = xor i32 %conv129.6.11, %conv126.6.11
  %conv131.6.11 = trunc i32 %xor130.6.11 to i8
  store i8 %conv131.6.11, i8* %arrayidx128.11, align 1
  %scevgep22.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 7
  %2734 = load i8, i8* %scevgep22.7.11, align 1
  %conv126.7.11 = zext i8 %2734 to i32
  %2735 = load i8, i8* %arrayidx128.11, align 1
  %conv129.7.11 = zext i8 %2735 to i32
  %xor130.7.11 = xor i32 %conv129.7.11, %conv126.7.11
  %conv131.7.11 = trunc i32 %xor130.7.11 to i8
  store i8 %conv131.7.11, i8* %arrayidx128.11, align 1
  %scevgep22.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 8
  %2736 = load i8, i8* %scevgep22.8.11, align 1
  %conv126.8.11 = zext i8 %2736 to i32
  %2737 = load i8, i8* %arrayidx128.11, align 1
  %conv129.8.11 = zext i8 %2737 to i32
  %xor130.8.11 = xor i32 %conv129.8.11, %conv126.8.11
  %conv131.8.11 = trunc i32 %xor130.8.11 to i8
  store i8 %conv131.8.11, i8* %arrayidx128.11, align 1
  %scevgep22.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 9
  %2738 = load i8, i8* %scevgep22.9.11, align 1
  %conv126.9.11 = zext i8 %2738 to i32
  %2739 = load i8, i8* %arrayidx128.11, align 1
  %conv129.9.11 = zext i8 %2739 to i32
  %xor130.9.11 = xor i32 %conv129.9.11, %conv126.9.11
  %conv131.9.11 = trunc i32 %xor130.9.11 to i8
  store i8 %conv131.9.11, i8* %arrayidx128.11, align 1
  %scevgep22.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 10
  %2740 = load i8, i8* %scevgep22.10.11, align 1
  %conv126.10.11 = zext i8 %2740 to i32
  %2741 = load i8, i8* %arrayidx128.11, align 1
  %conv129.10.11 = zext i8 %2741 to i32
  %xor130.10.11 = xor i32 %conv129.10.11, %conv126.10.11
  %conv131.10.11 = trunc i32 %xor130.10.11 to i8
  store i8 %conv131.10.11, i8* %arrayidx128.11, align 1
  %scevgep22.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 12
  %2742 = load i8, i8* %scevgep22.12.11, align 1
  %conv126.12.11 = zext i8 %2742 to i32
  %2743 = load i8, i8* %arrayidx128.11, align 1
  %conv129.12.11 = zext i8 %2743 to i32
  %xor130.12.11 = xor i32 %conv129.12.11, %conv126.12.11
  %conv131.12.11 = trunc i32 %xor130.12.11 to i8
  store i8 %conv131.12.11, i8* %arrayidx128.11, align 1
  %scevgep22.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 13
  %2744 = load i8, i8* %scevgep22.13.11, align 1
  %conv126.13.11 = zext i8 %2744 to i32
  %2745 = load i8, i8* %arrayidx128.11, align 1
  %conv129.13.11 = zext i8 %2745 to i32
  %xor130.13.11 = xor i32 %conv129.13.11, %conv126.13.11
  %conv131.13.11 = trunc i32 %xor130.13.11 to i8
  store i8 %conv131.13.11, i8* %arrayidx128.11, align 1
  %scevgep22.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 14
  %2746 = load i8, i8* %scevgep22.14.11, align 1
  %conv126.14.11 = zext i8 %2746 to i32
  %2747 = load i8, i8* %arrayidx128.11, align 1
  %conv129.14.11 = zext i8 %2747 to i32
  %xor130.14.11 = xor i32 %conv129.14.11, %conv126.14.11
  %conv131.14.11 = trunc i32 %xor130.14.11 to i8
  store i8 %conv131.14.11, i8* %arrayidx128.11, align 1
  %scevgep22.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 0, i64 15
  %2748 = load i8, i8* %scevgep22.15.11, align 1
  %conv126.15.11 = zext i8 %2748 to i32
  %2749 = load i8, i8* %arrayidx128.11, align 1
  %conv129.15.11 = zext i8 %2749 to i32
  %xor130.15.11 = xor i32 %conv129.15.11, %conv126.15.11
  %conv131.15.11 = trunc i32 %xor130.15.11 to i8
  store i8 %conv131.15.11, i8* %arrayidx128.11, align 1
  %scevgep21.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2717, i64 0, i64 1, i64 0
  %2750 = bitcast i8* %scevgep21.11 to [16 x [16 x i8]]*
  %arrayidx108.12 = getelementptr inbounds i8, i8* %a, i64 12
  %2751 = load i8, i8* %arrayidx108.12, align 1
  %arrayidx110.12 = getelementptr inbounds i8, i8* %b, i64 12
  %2752 = load i8, i8* %arrayidx110.12, align 1
  %call111.12 = call zeroext i8 @mult(i8 zeroext %2751, i8 zeroext %2752)
  %arrayidx113.12 = getelementptr inbounds i8, i8* %c, i64 12
  store i8 %call111.12, i8* %arrayidx113.12, align 1
  %arrayidx128.12 = getelementptr inbounds i8, i8* %c, i64 12
  %scevgep22.12188 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 0
  %2753 = load i8, i8* %scevgep22.12188, align 1
  %conv126.12189 = zext i8 %2753 to i32
  %2754 = load i8, i8* %arrayidx128.12, align 1
  %conv129.12190 = zext i8 %2754 to i32
  %xor130.12191 = xor i32 %conv129.12190, %conv126.12189
  %conv131.12192 = trunc i32 %xor130.12191 to i8
  store i8 %conv131.12192, i8* %arrayidx128.12, align 1
  %scevgep22.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 1
  %2755 = load i8, i8* %scevgep22.1.12, align 1
  %conv126.1.12 = zext i8 %2755 to i32
  %2756 = load i8, i8* %arrayidx128.12, align 1
  %conv129.1.12 = zext i8 %2756 to i32
  %xor130.1.12 = xor i32 %conv129.1.12, %conv126.1.12
  %conv131.1.12 = trunc i32 %xor130.1.12 to i8
  store i8 %conv131.1.12, i8* %arrayidx128.12, align 1
  %scevgep22.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 2
  %2757 = load i8, i8* %scevgep22.2.12, align 1
  %conv126.2.12 = zext i8 %2757 to i32
  %2758 = load i8, i8* %arrayidx128.12, align 1
  %conv129.2.12 = zext i8 %2758 to i32
  %xor130.2.12 = xor i32 %conv129.2.12, %conv126.2.12
  %conv131.2.12 = trunc i32 %xor130.2.12 to i8
  store i8 %conv131.2.12, i8* %arrayidx128.12, align 1
  %scevgep22.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 3
  %2759 = load i8, i8* %scevgep22.3.12, align 1
  %conv126.3.12 = zext i8 %2759 to i32
  %2760 = load i8, i8* %arrayidx128.12, align 1
  %conv129.3.12 = zext i8 %2760 to i32
  %xor130.3.12 = xor i32 %conv129.3.12, %conv126.3.12
  %conv131.3.12 = trunc i32 %xor130.3.12 to i8
  store i8 %conv131.3.12, i8* %arrayidx128.12, align 1
  %scevgep22.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 4
  %2761 = load i8, i8* %scevgep22.4.12, align 1
  %conv126.4.12 = zext i8 %2761 to i32
  %2762 = load i8, i8* %arrayidx128.12, align 1
  %conv129.4.12 = zext i8 %2762 to i32
  %xor130.4.12 = xor i32 %conv129.4.12, %conv126.4.12
  %conv131.4.12 = trunc i32 %xor130.4.12 to i8
  store i8 %conv131.4.12, i8* %arrayidx128.12, align 1
  %scevgep22.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 5
  %2763 = load i8, i8* %scevgep22.5.12, align 1
  %conv126.5.12 = zext i8 %2763 to i32
  %2764 = load i8, i8* %arrayidx128.12, align 1
  %conv129.5.12 = zext i8 %2764 to i32
  %xor130.5.12 = xor i32 %conv129.5.12, %conv126.5.12
  %conv131.5.12 = trunc i32 %xor130.5.12 to i8
  store i8 %conv131.5.12, i8* %arrayidx128.12, align 1
  %scevgep22.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 6
  %2765 = load i8, i8* %scevgep22.6.12, align 1
  %conv126.6.12 = zext i8 %2765 to i32
  %2766 = load i8, i8* %arrayidx128.12, align 1
  %conv129.6.12 = zext i8 %2766 to i32
  %xor130.6.12 = xor i32 %conv129.6.12, %conv126.6.12
  %conv131.6.12 = trunc i32 %xor130.6.12 to i8
  store i8 %conv131.6.12, i8* %arrayidx128.12, align 1
  %scevgep22.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 7
  %2767 = load i8, i8* %scevgep22.7.12, align 1
  %conv126.7.12 = zext i8 %2767 to i32
  %2768 = load i8, i8* %arrayidx128.12, align 1
  %conv129.7.12 = zext i8 %2768 to i32
  %xor130.7.12 = xor i32 %conv129.7.12, %conv126.7.12
  %conv131.7.12 = trunc i32 %xor130.7.12 to i8
  store i8 %conv131.7.12, i8* %arrayidx128.12, align 1
  %scevgep22.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 8
  %2769 = load i8, i8* %scevgep22.8.12, align 1
  %conv126.8.12 = zext i8 %2769 to i32
  %2770 = load i8, i8* %arrayidx128.12, align 1
  %conv129.8.12 = zext i8 %2770 to i32
  %xor130.8.12 = xor i32 %conv129.8.12, %conv126.8.12
  %conv131.8.12 = trunc i32 %xor130.8.12 to i8
  store i8 %conv131.8.12, i8* %arrayidx128.12, align 1
  %scevgep22.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 9
  %2771 = load i8, i8* %scevgep22.9.12, align 1
  %conv126.9.12 = zext i8 %2771 to i32
  %2772 = load i8, i8* %arrayidx128.12, align 1
  %conv129.9.12 = zext i8 %2772 to i32
  %xor130.9.12 = xor i32 %conv129.9.12, %conv126.9.12
  %conv131.9.12 = trunc i32 %xor130.9.12 to i8
  store i8 %conv131.9.12, i8* %arrayidx128.12, align 1
  %scevgep22.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 10
  %2773 = load i8, i8* %scevgep22.10.12, align 1
  %conv126.10.12 = zext i8 %2773 to i32
  %2774 = load i8, i8* %arrayidx128.12, align 1
  %conv129.10.12 = zext i8 %2774 to i32
  %xor130.10.12 = xor i32 %conv129.10.12, %conv126.10.12
  %conv131.10.12 = trunc i32 %xor130.10.12 to i8
  store i8 %conv131.10.12, i8* %arrayidx128.12, align 1
  %scevgep22.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 11
  %2775 = load i8, i8* %scevgep22.11.12, align 1
  %conv126.11.12 = zext i8 %2775 to i32
  %2776 = load i8, i8* %arrayidx128.12, align 1
  %conv129.11.12 = zext i8 %2776 to i32
  %xor130.11.12 = xor i32 %conv129.11.12, %conv126.11.12
  %conv131.11.12 = trunc i32 %xor130.11.12 to i8
  store i8 %conv131.11.12, i8* %arrayidx128.12, align 1
  %scevgep22.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 13
  %2777 = load i8, i8* %scevgep22.13.12, align 1
  %conv126.13.12 = zext i8 %2777 to i32
  %2778 = load i8, i8* %arrayidx128.12, align 1
  %conv129.13.12 = zext i8 %2778 to i32
  %xor130.13.12 = xor i32 %conv129.13.12, %conv126.13.12
  %conv131.13.12 = trunc i32 %xor130.13.12 to i8
  store i8 %conv131.13.12, i8* %arrayidx128.12, align 1
  %scevgep22.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 14
  %2779 = load i8, i8* %scevgep22.14.12, align 1
  %conv126.14.12 = zext i8 %2779 to i32
  %2780 = load i8, i8* %arrayidx128.12, align 1
  %conv129.14.12 = zext i8 %2780 to i32
  %xor130.14.12 = xor i32 %conv129.14.12, %conv126.14.12
  %conv131.14.12 = trunc i32 %xor130.14.12 to i8
  store i8 %conv131.14.12, i8* %arrayidx128.12, align 1
  %scevgep22.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 0, i64 15
  %2781 = load i8, i8* %scevgep22.15.12, align 1
  %conv126.15.12 = zext i8 %2781 to i32
  %2782 = load i8, i8* %arrayidx128.12, align 1
  %conv129.15.12 = zext i8 %2782 to i32
  %xor130.15.12 = xor i32 %conv129.15.12, %conv126.15.12
  %conv131.15.12 = trunc i32 %xor130.15.12 to i8
  store i8 %conv131.15.12, i8* %arrayidx128.12, align 1
  %scevgep21.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2750, i64 0, i64 1, i64 0
  %2783 = bitcast i8* %scevgep21.12 to [16 x [16 x i8]]*
  %arrayidx108.13 = getelementptr inbounds i8, i8* %a, i64 13
  %2784 = load i8, i8* %arrayidx108.13, align 1
  %arrayidx110.13 = getelementptr inbounds i8, i8* %b, i64 13
  %2785 = load i8, i8* %arrayidx110.13, align 1
  %call111.13 = call zeroext i8 @mult(i8 zeroext %2784, i8 zeroext %2785)
  %arrayidx113.13 = getelementptr inbounds i8, i8* %c, i64 13
  store i8 %call111.13, i8* %arrayidx113.13, align 1
  %arrayidx128.13 = getelementptr inbounds i8, i8* %c, i64 13
  %scevgep22.13198 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 0
  %2786 = load i8, i8* %scevgep22.13198, align 1
  %conv126.13199 = zext i8 %2786 to i32
  %2787 = load i8, i8* %arrayidx128.13, align 1
  %conv129.13200 = zext i8 %2787 to i32
  %xor130.13201 = xor i32 %conv129.13200, %conv126.13199
  %conv131.13202 = trunc i32 %xor130.13201 to i8
  store i8 %conv131.13202, i8* %arrayidx128.13, align 1
  %scevgep22.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 1
  %2788 = load i8, i8* %scevgep22.1.13, align 1
  %conv126.1.13 = zext i8 %2788 to i32
  %2789 = load i8, i8* %arrayidx128.13, align 1
  %conv129.1.13 = zext i8 %2789 to i32
  %xor130.1.13 = xor i32 %conv129.1.13, %conv126.1.13
  %conv131.1.13 = trunc i32 %xor130.1.13 to i8
  store i8 %conv131.1.13, i8* %arrayidx128.13, align 1
  %scevgep22.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 2
  %2790 = load i8, i8* %scevgep22.2.13, align 1
  %conv126.2.13 = zext i8 %2790 to i32
  %2791 = load i8, i8* %arrayidx128.13, align 1
  %conv129.2.13 = zext i8 %2791 to i32
  %xor130.2.13 = xor i32 %conv129.2.13, %conv126.2.13
  %conv131.2.13 = trunc i32 %xor130.2.13 to i8
  store i8 %conv131.2.13, i8* %arrayidx128.13, align 1
  %scevgep22.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 3
  %2792 = load i8, i8* %scevgep22.3.13, align 1
  %conv126.3.13 = zext i8 %2792 to i32
  %2793 = load i8, i8* %arrayidx128.13, align 1
  %conv129.3.13 = zext i8 %2793 to i32
  %xor130.3.13 = xor i32 %conv129.3.13, %conv126.3.13
  %conv131.3.13 = trunc i32 %xor130.3.13 to i8
  store i8 %conv131.3.13, i8* %arrayidx128.13, align 1
  %scevgep22.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 4
  %2794 = load i8, i8* %scevgep22.4.13, align 1
  %conv126.4.13 = zext i8 %2794 to i32
  %2795 = load i8, i8* %arrayidx128.13, align 1
  %conv129.4.13 = zext i8 %2795 to i32
  %xor130.4.13 = xor i32 %conv129.4.13, %conv126.4.13
  %conv131.4.13 = trunc i32 %xor130.4.13 to i8
  store i8 %conv131.4.13, i8* %arrayidx128.13, align 1
  %scevgep22.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 5
  %2796 = load i8, i8* %scevgep22.5.13, align 1
  %conv126.5.13 = zext i8 %2796 to i32
  %2797 = load i8, i8* %arrayidx128.13, align 1
  %conv129.5.13 = zext i8 %2797 to i32
  %xor130.5.13 = xor i32 %conv129.5.13, %conv126.5.13
  %conv131.5.13 = trunc i32 %xor130.5.13 to i8
  store i8 %conv131.5.13, i8* %arrayidx128.13, align 1
  %scevgep22.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 6
  %2798 = load i8, i8* %scevgep22.6.13, align 1
  %conv126.6.13 = zext i8 %2798 to i32
  %2799 = load i8, i8* %arrayidx128.13, align 1
  %conv129.6.13 = zext i8 %2799 to i32
  %xor130.6.13 = xor i32 %conv129.6.13, %conv126.6.13
  %conv131.6.13 = trunc i32 %xor130.6.13 to i8
  store i8 %conv131.6.13, i8* %arrayidx128.13, align 1
  %scevgep22.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 7
  %2800 = load i8, i8* %scevgep22.7.13, align 1
  %conv126.7.13 = zext i8 %2800 to i32
  %2801 = load i8, i8* %arrayidx128.13, align 1
  %conv129.7.13 = zext i8 %2801 to i32
  %xor130.7.13 = xor i32 %conv129.7.13, %conv126.7.13
  %conv131.7.13 = trunc i32 %xor130.7.13 to i8
  store i8 %conv131.7.13, i8* %arrayidx128.13, align 1
  %scevgep22.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 8
  %2802 = load i8, i8* %scevgep22.8.13, align 1
  %conv126.8.13 = zext i8 %2802 to i32
  %2803 = load i8, i8* %arrayidx128.13, align 1
  %conv129.8.13 = zext i8 %2803 to i32
  %xor130.8.13 = xor i32 %conv129.8.13, %conv126.8.13
  %conv131.8.13 = trunc i32 %xor130.8.13 to i8
  store i8 %conv131.8.13, i8* %arrayidx128.13, align 1
  %scevgep22.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 9
  %2804 = load i8, i8* %scevgep22.9.13, align 1
  %conv126.9.13 = zext i8 %2804 to i32
  %2805 = load i8, i8* %arrayidx128.13, align 1
  %conv129.9.13 = zext i8 %2805 to i32
  %xor130.9.13 = xor i32 %conv129.9.13, %conv126.9.13
  %conv131.9.13 = trunc i32 %xor130.9.13 to i8
  store i8 %conv131.9.13, i8* %arrayidx128.13, align 1
  %scevgep22.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 10
  %2806 = load i8, i8* %scevgep22.10.13, align 1
  %conv126.10.13 = zext i8 %2806 to i32
  %2807 = load i8, i8* %arrayidx128.13, align 1
  %conv129.10.13 = zext i8 %2807 to i32
  %xor130.10.13 = xor i32 %conv129.10.13, %conv126.10.13
  %conv131.10.13 = trunc i32 %xor130.10.13 to i8
  store i8 %conv131.10.13, i8* %arrayidx128.13, align 1
  %scevgep22.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 11
  %2808 = load i8, i8* %scevgep22.11.13, align 1
  %conv126.11.13 = zext i8 %2808 to i32
  %2809 = load i8, i8* %arrayidx128.13, align 1
  %conv129.11.13 = zext i8 %2809 to i32
  %xor130.11.13 = xor i32 %conv129.11.13, %conv126.11.13
  %conv131.11.13 = trunc i32 %xor130.11.13 to i8
  store i8 %conv131.11.13, i8* %arrayidx128.13, align 1
  %scevgep22.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 12
  %2810 = load i8, i8* %scevgep22.12.13, align 1
  %conv126.12.13 = zext i8 %2810 to i32
  %2811 = load i8, i8* %arrayidx128.13, align 1
  %conv129.12.13 = zext i8 %2811 to i32
  %xor130.12.13 = xor i32 %conv129.12.13, %conv126.12.13
  %conv131.12.13 = trunc i32 %xor130.12.13 to i8
  store i8 %conv131.12.13, i8* %arrayidx128.13, align 1
  %scevgep22.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 14
  %2812 = load i8, i8* %scevgep22.14.13, align 1
  %conv126.14.13 = zext i8 %2812 to i32
  %2813 = load i8, i8* %arrayidx128.13, align 1
  %conv129.14.13 = zext i8 %2813 to i32
  %xor130.14.13 = xor i32 %conv129.14.13, %conv126.14.13
  %conv131.14.13 = trunc i32 %xor130.14.13 to i8
  store i8 %conv131.14.13, i8* %arrayidx128.13, align 1
  %scevgep22.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 0, i64 15
  %2814 = load i8, i8* %scevgep22.15.13, align 1
  %conv126.15.13 = zext i8 %2814 to i32
  %2815 = load i8, i8* %arrayidx128.13, align 1
  %conv129.15.13 = zext i8 %2815 to i32
  %xor130.15.13 = xor i32 %conv129.15.13, %conv126.15.13
  %conv131.15.13 = trunc i32 %xor130.15.13 to i8
  store i8 %conv131.15.13, i8* %arrayidx128.13, align 1
  %scevgep21.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2783, i64 0, i64 1, i64 0
  %2816 = bitcast i8* %scevgep21.13 to [16 x [16 x i8]]*
  %arrayidx108.14 = getelementptr inbounds i8, i8* %a, i64 14
  %2817 = load i8, i8* %arrayidx108.14, align 1
  %arrayidx110.14 = getelementptr inbounds i8, i8* %b, i64 14
  %2818 = load i8, i8* %arrayidx110.14, align 1
  %call111.14 = call zeroext i8 @mult(i8 zeroext %2817, i8 zeroext %2818)
  %arrayidx113.14 = getelementptr inbounds i8, i8* %c, i64 14
  store i8 %call111.14, i8* %arrayidx113.14, align 1
  %arrayidx128.14 = getelementptr inbounds i8, i8* %c, i64 14
  %scevgep22.14208 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 0
  %2819 = load i8, i8* %scevgep22.14208, align 1
  %conv126.14209 = zext i8 %2819 to i32
  %2820 = load i8, i8* %arrayidx128.14, align 1
  %conv129.14210 = zext i8 %2820 to i32
  %xor130.14211 = xor i32 %conv129.14210, %conv126.14209
  %conv131.14212 = trunc i32 %xor130.14211 to i8
  store i8 %conv131.14212, i8* %arrayidx128.14, align 1
  %scevgep22.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 1
  %2821 = load i8, i8* %scevgep22.1.14, align 1
  %conv126.1.14 = zext i8 %2821 to i32
  %2822 = load i8, i8* %arrayidx128.14, align 1
  %conv129.1.14 = zext i8 %2822 to i32
  %xor130.1.14 = xor i32 %conv129.1.14, %conv126.1.14
  %conv131.1.14 = trunc i32 %xor130.1.14 to i8
  store i8 %conv131.1.14, i8* %arrayidx128.14, align 1
  %scevgep22.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 2
  %2823 = load i8, i8* %scevgep22.2.14, align 1
  %conv126.2.14 = zext i8 %2823 to i32
  %2824 = load i8, i8* %arrayidx128.14, align 1
  %conv129.2.14 = zext i8 %2824 to i32
  %xor130.2.14 = xor i32 %conv129.2.14, %conv126.2.14
  %conv131.2.14 = trunc i32 %xor130.2.14 to i8
  store i8 %conv131.2.14, i8* %arrayidx128.14, align 1
  %scevgep22.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 3
  %2825 = load i8, i8* %scevgep22.3.14, align 1
  %conv126.3.14 = zext i8 %2825 to i32
  %2826 = load i8, i8* %arrayidx128.14, align 1
  %conv129.3.14 = zext i8 %2826 to i32
  %xor130.3.14 = xor i32 %conv129.3.14, %conv126.3.14
  %conv131.3.14 = trunc i32 %xor130.3.14 to i8
  store i8 %conv131.3.14, i8* %arrayidx128.14, align 1
  %scevgep22.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 4
  %2827 = load i8, i8* %scevgep22.4.14, align 1
  %conv126.4.14 = zext i8 %2827 to i32
  %2828 = load i8, i8* %arrayidx128.14, align 1
  %conv129.4.14 = zext i8 %2828 to i32
  %xor130.4.14 = xor i32 %conv129.4.14, %conv126.4.14
  %conv131.4.14 = trunc i32 %xor130.4.14 to i8
  store i8 %conv131.4.14, i8* %arrayidx128.14, align 1
  %scevgep22.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 5
  %2829 = load i8, i8* %scevgep22.5.14, align 1
  %conv126.5.14 = zext i8 %2829 to i32
  %2830 = load i8, i8* %arrayidx128.14, align 1
  %conv129.5.14 = zext i8 %2830 to i32
  %xor130.5.14 = xor i32 %conv129.5.14, %conv126.5.14
  %conv131.5.14 = trunc i32 %xor130.5.14 to i8
  store i8 %conv131.5.14, i8* %arrayidx128.14, align 1
  %scevgep22.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 6
  %2831 = load i8, i8* %scevgep22.6.14, align 1
  %conv126.6.14 = zext i8 %2831 to i32
  %2832 = load i8, i8* %arrayidx128.14, align 1
  %conv129.6.14 = zext i8 %2832 to i32
  %xor130.6.14 = xor i32 %conv129.6.14, %conv126.6.14
  %conv131.6.14 = trunc i32 %xor130.6.14 to i8
  store i8 %conv131.6.14, i8* %arrayidx128.14, align 1
  %scevgep22.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 7
  %2833 = load i8, i8* %scevgep22.7.14, align 1
  %conv126.7.14 = zext i8 %2833 to i32
  %2834 = load i8, i8* %arrayidx128.14, align 1
  %conv129.7.14 = zext i8 %2834 to i32
  %xor130.7.14 = xor i32 %conv129.7.14, %conv126.7.14
  %conv131.7.14 = trunc i32 %xor130.7.14 to i8
  store i8 %conv131.7.14, i8* %arrayidx128.14, align 1
  %scevgep22.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 8
  %2835 = load i8, i8* %scevgep22.8.14, align 1
  %conv126.8.14 = zext i8 %2835 to i32
  %2836 = load i8, i8* %arrayidx128.14, align 1
  %conv129.8.14 = zext i8 %2836 to i32
  %xor130.8.14 = xor i32 %conv129.8.14, %conv126.8.14
  %conv131.8.14 = trunc i32 %xor130.8.14 to i8
  store i8 %conv131.8.14, i8* %arrayidx128.14, align 1
  %scevgep22.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 9
  %2837 = load i8, i8* %scevgep22.9.14, align 1
  %conv126.9.14 = zext i8 %2837 to i32
  %2838 = load i8, i8* %arrayidx128.14, align 1
  %conv129.9.14 = zext i8 %2838 to i32
  %xor130.9.14 = xor i32 %conv129.9.14, %conv126.9.14
  %conv131.9.14 = trunc i32 %xor130.9.14 to i8
  store i8 %conv131.9.14, i8* %arrayidx128.14, align 1
  %scevgep22.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 10
  %2839 = load i8, i8* %scevgep22.10.14, align 1
  %conv126.10.14 = zext i8 %2839 to i32
  %2840 = load i8, i8* %arrayidx128.14, align 1
  %conv129.10.14 = zext i8 %2840 to i32
  %xor130.10.14 = xor i32 %conv129.10.14, %conv126.10.14
  %conv131.10.14 = trunc i32 %xor130.10.14 to i8
  store i8 %conv131.10.14, i8* %arrayidx128.14, align 1
  %scevgep22.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 11
  %2841 = load i8, i8* %scevgep22.11.14, align 1
  %conv126.11.14 = zext i8 %2841 to i32
  %2842 = load i8, i8* %arrayidx128.14, align 1
  %conv129.11.14 = zext i8 %2842 to i32
  %xor130.11.14 = xor i32 %conv129.11.14, %conv126.11.14
  %conv131.11.14 = trunc i32 %xor130.11.14 to i8
  store i8 %conv131.11.14, i8* %arrayidx128.14, align 1
  %scevgep22.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 12
  %2843 = load i8, i8* %scevgep22.12.14, align 1
  %conv126.12.14 = zext i8 %2843 to i32
  %2844 = load i8, i8* %arrayidx128.14, align 1
  %conv129.12.14 = zext i8 %2844 to i32
  %xor130.12.14 = xor i32 %conv129.12.14, %conv126.12.14
  %conv131.12.14 = trunc i32 %xor130.12.14 to i8
  store i8 %conv131.12.14, i8* %arrayidx128.14, align 1
  %scevgep22.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 13
  %2845 = load i8, i8* %scevgep22.13.14, align 1
  %conv126.13.14 = zext i8 %2845 to i32
  %2846 = load i8, i8* %arrayidx128.14, align 1
  %conv129.13.14 = zext i8 %2846 to i32
  %xor130.13.14 = xor i32 %conv129.13.14, %conv126.13.14
  %conv131.13.14 = trunc i32 %xor130.13.14 to i8
  store i8 %conv131.13.14, i8* %arrayidx128.14, align 1
  %scevgep22.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 0, i64 15
  %2847 = load i8, i8* %scevgep22.15.14, align 1
  %conv126.15.14 = zext i8 %2847 to i32
  %2848 = load i8, i8* %arrayidx128.14, align 1
  %conv129.15.14 = zext i8 %2848 to i32
  %xor130.15.14 = xor i32 %conv129.15.14, %conv126.15.14
  %conv131.15.14 = trunc i32 %xor130.15.14 to i8
  store i8 %conv131.15.14, i8* %arrayidx128.14, align 1
  %scevgep21.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2816, i64 0, i64 1, i64 0
  %2849 = bitcast i8* %scevgep21.14 to [16 x [16 x i8]]*
  %arrayidx108.15 = getelementptr inbounds i8, i8* %a, i64 15
  %2850 = load i8, i8* %arrayidx108.15, align 1
  %arrayidx110.15 = getelementptr inbounds i8, i8* %b, i64 15
  %2851 = load i8, i8* %arrayidx110.15, align 1
  %call111.15 = call zeroext i8 @mult(i8 zeroext %2850, i8 zeroext %2851)
  %arrayidx113.15 = getelementptr inbounds i8, i8* %c, i64 15
  store i8 %call111.15, i8* %arrayidx113.15, align 1
  %arrayidx128.15 = getelementptr inbounds i8, i8* %c, i64 15
  %scevgep22.15218 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 0
  %2852 = load i8, i8* %scevgep22.15218, align 1
  %conv126.15219 = zext i8 %2852 to i32
  %2853 = load i8, i8* %arrayidx128.15, align 1
  %conv129.15220 = zext i8 %2853 to i32
  %xor130.15221 = xor i32 %conv129.15220, %conv126.15219
  %conv131.15222 = trunc i32 %xor130.15221 to i8
  store i8 %conv131.15222, i8* %arrayidx128.15, align 1
  %scevgep22.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 1
  %2854 = load i8, i8* %scevgep22.1.15, align 1
  %conv126.1.15 = zext i8 %2854 to i32
  %2855 = load i8, i8* %arrayidx128.15, align 1
  %conv129.1.15 = zext i8 %2855 to i32
  %xor130.1.15 = xor i32 %conv129.1.15, %conv126.1.15
  %conv131.1.15 = trunc i32 %xor130.1.15 to i8
  store i8 %conv131.1.15, i8* %arrayidx128.15, align 1
  %scevgep22.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 2
  %2856 = load i8, i8* %scevgep22.2.15, align 1
  %conv126.2.15 = zext i8 %2856 to i32
  %2857 = load i8, i8* %arrayidx128.15, align 1
  %conv129.2.15 = zext i8 %2857 to i32
  %xor130.2.15 = xor i32 %conv129.2.15, %conv126.2.15
  %conv131.2.15 = trunc i32 %xor130.2.15 to i8
  store i8 %conv131.2.15, i8* %arrayidx128.15, align 1
  %scevgep22.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 3
  %2858 = load i8, i8* %scevgep22.3.15, align 1
  %conv126.3.15 = zext i8 %2858 to i32
  %2859 = load i8, i8* %arrayidx128.15, align 1
  %conv129.3.15 = zext i8 %2859 to i32
  %xor130.3.15 = xor i32 %conv129.3.15, %conv126.3.15
  %conv131.3.15 = trunc i32 %xor130.3.15 to i8
  store i8 %conv131.3.15, i8* %arrayidx128.15, align 1
  %scevgep22.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 4
  %2860 = load i8, i8* %scevgep22.4.15, align 1
  %conv126.4.15 = zext i8 %2860 to i32
  %2861 = load i8, i8* %arrayidx128.15, align 1
  %conv129.4.15 = zext i8 %2861 to i32
  %xor130.4.15 = xor i32 %conv129.4.15, %conv126.4.15
  %conv131.4.15 = trunc i32 %xor130.4.15 to i8
  store i8 %conv131.4.15, i8* %arrayidx128.15, align 1
  %scevgep22.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 5
  %2862 = load i8, i8* %scevgep22.5.15, align 1
  %conv126.5.15 = zext i8 %2862 to i32
  %2863 = load i8, i8* %arrayidx128.15, align 1
  %conv129.5.15 = zext i8 %2863 to i32
  %xor130.5.15 = xor i32 %conv129.5.15, %conv126.5.15
  %conv131.5.15 = trunc i32 %xor130.5.15 to i8
  store i8 %conv131.5.15, i8* %arrayidx128.15, align 1
  %scevgep22.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 6
  %2864 = load i8, i8* %scevgep22.6.15, align 1
  %conv126.6.15 = zext i8 %2864 to i32
  %2865 = load i8, i8* %arrayidx128.15, align 1
  %conv129.6.15 = zext i8 %2865 to i32
  %xor130.6.15 = xor i32 %conv129.6.15, %conv126.6.15
  %conv131.6.15 = trunc i32 %xor130.6.15 to i8
  store i8 %conv131.6.15, i8* %arrayidx128.15, align 1
  %scevgep22.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 7
  %2866 = load i8, i8* %scevgep22.7.15, align 1
  %conv126.7.15 = zext i8 %2866 to i32
  %2867 = load i8, i8* %arrayidx128.15, align 1
  %conv129.7.15 = zext i8 %2867 to i32
  %xor130.7.15 = xor i32 %conv129.7.15, %conv126.7.15
  %conv131.7.15 = trunc i32 %xor130.7.15 to i8
  store i8 %conv131.7.15, i8* %arrayidx128.15, align 1
  %scevgep22.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 8
  %2868 = load i8, i8* %scevgep22.8.15, align 1
  %conv126.8.15 = zext i8 %2868 to i32
  %2869 = load i8, i8* %arrayidx128.15, align 1
  %conv129.8.15 = zext i8 %2869 to i32
  %xor130.8.15 = xor i32 %conv129.8.15, %conv126.8.15
  %conv131.8.15 = trunc i32 %xor130.8.15 to i8
  store i8 %conv131.8.15, i8* %arrayidx128.15, align 1
  %scevgep22.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 9
  %2870 = load i8, i8* %scevgep22.9.15, align 1
  %conv126.9.15 = zext i8 %2870 to i32
  %2871 = load i8, i8* %arrayidx128.15, align 1
  %conv129.9.15 = zext i8 %2871 to i32
  %xor130.9.15 = xor i32 %conv129.9.15, %conv126.9.15
  %conv131.9.15 = trunc i32 %xor130.9.15 to i8
  store i8 %conv131.9.15, i8* %arrayidx128.15, align 1
  %scevgep22.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 10
  %2872 = load i8, i8* %scevgep22.10.15, align 1
  %conv126.10.15 = zext i8 %2872 to i32
  %2873 = load i8, i8* %arrayidx128.15, align 1
  %conv129.10.15 = zext i8 %2873 to i32
  %xor130.10.15 = xor i32 %conv129.10.15, %conv126.10.15
  %conv131.10.15 = trunc i32 %xor130.10.15 to i8
  store i8 %conv131.10.15, i8* %arrayidx128.15, align 1
  %scevgep22.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 11
  %2874 = load i8, i8* %scevgep22.11.15, align 1
  %conv126.11.15 = zext i8 %2874 to i32
  %2875 = load i8, i8* %arrayidx128.15, align 1
  %conv129.11.15 = zext i8 %2875 to i32
  %xor130.11.15 = xor i32 %conv129.11.15, %conv126.11.15
  %conv131.11.15 = trunc i32 %xor130.11.15 to i8
  store i8 %conv131.11.15, i8* %arrayidx128.15, align 1
  %scevgep22.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 12
  %2876 = load i8, i8* %scevgep22.12.15, align 1
  %conv126.12.15 = zext i8 %2876 to i32
  %2877 = load i8, i8* %arrayidx128.15, align 1
  %conv129.12.15 = zext i8 %2877 to i32
  %xor130.12.15 = xor i32 %conv129.12.15, %conv126.12.15
  %conv131.12.15 = trunc i32 %xor130.12.15 to i8
  store i8 %conv131.12.15, i8* %arrayidx128.15, align 1
  %scevgep22.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 13
  %2878 = load i8, i8* %scevgep22.13.15, align 1
  %conv126.13.15 = zext i8 %2878 to i32
  %2879 = load i8, i8* %arrayidx128.15, align 1
  %conv129.13.15 = zext i8 %2879 to i32
  %xor130.13.15 = xor i32 %conv129.13.15, %conv126.13.15
  %conv131.13.15 = trunc i32 %xor130.13.15 to i8
  store i8 %conv131.13.15, i8* %arrayidx128.15, align 1
  %scevgep22.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %2849, i64 0, i64 0, i64 14
  %2880 = load i8, i8* %scevgep22.14.15, align 1
  %conv126.14.15 = zext i8 %2880 to i32
  %2881 = load i8, i8* %arrayidx128.15, align 1
  %conv129.14.15 = zext i8 %2881 to i32
  %xor130.14.15 = xor i32 %conv129.14.15, %conv126.14.15
  %conv131.14.15 = trunc i32 %xor130.14.15 to i8
  store i8 %conv131.14.15, i8* %arrayidx128.15, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %2882 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %2883 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %2883 to i32
  %conv1.i.i173.1 = zext i8 %2882 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %2884 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %2884 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %2885 = load i8, i8* %scevgep.3, align 1
  %conv.i.i172.3 = zext i8 %2885 to i32
  %conv1.i.i173.3 = zext i8 %conv2.i.i175.2 to i32
  %xor.i.i174.3 = xor i32 %conv1.i.i173.3, %conv.i.i172.3
  %conv2.i.i175.3 = trunc i32 %xor.i.i174.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %2886 = load i8, i8* %scevgep.4, align 1
  %conv.i.i172.4 = zext i8 %2886 to i32
  %conv1.i.i173.4 = zext i8 %conv2.i.i175.3 to i32
  %xor.i.i174.4 = xor i32 %conv1.i.i173.4, %conv.i.i172.4
  %conv2.i.i175.4 = trunc i32 %xor.i.i174.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %2887 = load i8, i8* %scevgep.5, align 1
  %conv.i.i172.5 = zext i8 %2887 to i32
  %conv1.i.i173.5 = zext i8 %conv2.i.i175.4 to i32
  %xor.i.i174.5 = xor i32 %conv1.i.i173.5, %conv.i.i172.5
  %conv2.i.i175.5 = trunc i32 %xor.i.i174.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %2888 = load i8, i8* %scevgep.6, align 1
  %conv.i.i172.6 = zext i8 %2888 to i32
  %conv1.i.i173.6 = zext i8 %conv2.i.i175.5 to i32
  %xor.i.i174.6 = xor i32 %conv1.i.i173.6, %conv.i.i172.6
  %conv2.i.i175.6 = trunc i32 %xor.i.i174.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %2889 = load i8, i8* %scevgep.7, align 1
  %conv.i.i172.7 = zext i8 %2889 to i32
  %conv1.i.i173.7 = zext i8 %conv2.i.i175.6 to i32
  %xor.i.i174.7 = xor i32 %conv1.i.i173.7, %conv.i.i172.7
  %conv2.i.i175.7 = trunc i32 %xor.i.i174.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %2890 = load i8, i8* %scevgep.8, align 1
  %conv.i.i172.8 = zext i8 %2890 to i32
  %conv1.i.i173.8 = zext i8 %conv2.i.i175.7 to i32
  %xor.i.i174.8 = xor i32 %conv1.i.i173.8, %conv.i.i172.8
  %conv2.i.i175.8 = trunc i32 %xor.i.i174.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %2891 = load i8, i8* %scevgep.9, align 1
  %conv.i.i172.9 = zext i8 %2891 to i32
  %conv1.i.i173.9 = zext i8 %conv2.i.i175.8 to i32
  %xor.i.i174.9 = xor i32 %conv1.i.i173.9, %conv.i.i172.9
  %conv2.i.i175.9 = trunc i32 %xor.i.i174.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %2892 = load i8, i8* %scevgep.10, align 1
  %conv.i.i172.10 = zext i8 %2892 to i32
  %conv1.i.i173.10 = zext i8 %conv2.i.i175.9 to i32
  %xor.i.i174.10 = xor i32 %conv1.i.i173.10, %conv.i.i172.10
  %conv2.i.i175.10 = trunc i32 %xor.i.i174.10 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  %2893 = load i8, i8* %scevgep.11, align 1
  %conv.i.i172.11 = zext i8 %2893 to i32
  %conv1.i.i173.11 = zext i8 %conv2.i.i175.10 to i32
  %xor.i.i174.11 = xor i32 %conv1.i.i173.11, %conv.i.i172.11
  %conv2.i.i175.11 = trunc i32 %xor.i.i174.11 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  %2894 = load i8, i8* %scevgep.12, align 1
  %conv.i.i172.12 = zext i8 %2894 to i32
  %conv1.i.i173.12 = zext i8 %conv2.i.i175.11 to i32
  %xor.i.i174.12 = xor i32 %conv1.i.i173.12, %conv.i.i172.12
  %conv2.i.i175.12 = trunc i32 %xor.i.i174.12 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  %2895 = load i8, i8* %scevgep.13, align 1
  %conv.i.i172.13 = zext i8 %2895 to i32
  %conv1.i.i173.13 = zext i8 %conv2.i.i175.12 to i32
  %xor.i.i174.13 = xor i32 %conv1.i.i173.13, %conv.i.i172.13
  %conv2.i.i175.13 = trunc i32 %xor.i.i174.13 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  %2896 = load i8, i8* %scevgep.14, align 1
  %conv.i.i172.14 = zext i8 %2896 to i32
  %conv1.i.i173.14 = zext i8 %conv2.i.i175.13 to i32
  %xor.i.i174.14 = xor i32 %conv1.i.i173.14, %conv.i.i172.14
  %conv2.i.i175.14 = trunc i32 %xor.i.i174.14 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  %2897 = load i8, i8* %scevgep.15, align 1
  %conv.i.i172.15 = zext i8 %2897 to i32
  %conv1.i.i173.15 = zext i8 %conv2.i.i175.14 to i32
  %xor.i.i174.15 = xor i32 %conv1.i.i173.15, %conv.i.i172.15
  %conv2.i.i175.15 = trunc i32 %xor.i.i174.15 to i8
  %conv142 = zext i8 %conv2.i.i175.15 to i32
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
