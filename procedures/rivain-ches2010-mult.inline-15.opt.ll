; ModuleID = '../examples/rivain-ches2010-mult.inline-15.ll'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 15, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [35 x i8] c"../examples/rivain-ches2010-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 29 }], section "llvm.metadata"

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
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep50.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep50.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep50.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep50.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep50.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep50.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep50.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep50.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep50.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep50.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep50.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep50.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep50.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep50.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep50.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep50.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep50.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep50.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep50.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep50.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %scevgep50.11 = getelementptr i8, i8* %a, i64 11
  %11 = load i8, i8* %scevgep50.11, align 1
  %conv.i.i.11 = zext i8 %11 to i32
  %conv1.i.i.11 = zext i8 %conv2.i.i.10 to i32
  %xor.i.i.11 = xor i32 %conv1.i.i.11, %conv.i.i.11
  %conv2.i.i.11 = trunc i32 %xor.i.i.11 to i8
  %scevgep50.12 = getelementptr i8, i8* %a, i64 12
  %12 = load i8, i8* %scevgep50.12, align 1
  %conv.i.i.12 = zext i8 %12 to i32
  %conv1.i.i.12 = zext i8 %conv2.i.i.11 to i32
  %xor.i.i.12 = xor i32 %conv1.i.i.12, %conv.i.i.12
  %conv2.i.i.12 = trunc i32 %xor.i.i.12 to i8
  %scevgep50.13 = getelementptr i8, i8* %a, i64 13
  %13 = load i8, i8* %scevgep50.13, align 1
  %conv.i.i.13 = zext i8 %13 to i32
  %conv1.i.i.13 = zext i8 %conv2.i.i.12 to i32
  %xor.i.i.13 = xor i32 %conv1.i.i.13, %conv.i.i.13
  %conv2.i.i.13 = trunc i32 %xor.i.i.13 to i8
  %scevgep50.14 = getelementptr i8, i8* %a, i64 14
  %14 = load i8, i8* %scevgep50.14, align 1
  %conv.i.i.14 = zext i8 %14 to i32
  %conv1.i.i.14 = zext i8 %conv2.i.i.13 to i32
  %xor.i.i.14 = xor i32 %conv1.i.i.14, %conv.i.i.14
  %conv2.i.i.14 = trunc i32 %xor.i.i.14 to i8
  %scevgep50.15 = getelementptr i8, i8* %a, i64 15
  %15 = load i8, i8* %scevgep50.15, align 1
  %conv.i.i.15 = zext i8 %15 to i32
  %conv1.i.i.15 = zext i8 %conv2.i.i.14 to i32
  %xor.i.i.15 = xor i32 %conv1.i.i.15, %conv.i.i.15
  %conv2.i.i.15 = trunc i32 %xor.i.i.15 to i8
  %conv3 = zext i8 %conv2.i.i.15 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %16 = load i8, i8* %b, align 1
  %scevgep46.1 = getelementptr i8, i8* %b, i64 1
  %17 = load i8, i8* %scevgep46.1, align 1
  %conv.i.i96.1 = zext i8 %17 to i32
  %conv1.i.i97.1 = zext i8 %16 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep46.2 = getelementptr i8, i8* %b, i64 2
  %18 = load i8, i8* %scevgep46.2, align 1
  %conv.i.i96.2 = zext i8 %18 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %scevgep46.3 = getelementptr i8, i8* %b, i64 3
  %19 = load i8, i8* %scevgep46.3, align 1
  %conv.i.i96.3 = zext i8 %19 to i32
  %conv1.i.i97.3 = zext i8 %conv2.i.i99.2 to i32
  %xor.i.i98.3 = xor i32 %conv1.i.i97.3, %conv.i.i96.3
  %conv2.i.i99.3 = trunc i32 %xor.i.i98.3 to i8
  %scevgep46.4 = getelementptr i8, i8* %b, i64 4
  %20 = load i8, i8* %scevgep46.4, align 1
  %conv.i.i96.4 = zext i8 %20 to i32
  %conv1.i.i97.4 = zext i8 %conv2.i.i99.3 to i32
  %xor.i.i98.4 = xor i32 %conv1.i.i97.4, %conv.i.i96.4
  %conv2.i.i99.4 = trunc i32 %xor.i.i98.4 to i8
  %scevgep46.5 = getelementptr i8, i8* %b, i64 5
  %21 = load i8, i8* %scevgep46.5, align 1
  %conv.i.i96.5 = zext i8 %21 to i32
  %conv1.i.i97.5 = zext i8 %conv2.i.i99.4 to i32
  %xor.i.i98.5 = xor i32 %conv1.i.i97.5, %conv.i.i96.5
  %conv2.i.i99.5 = trunc i32 %xor.i.i98.5 to i8
  %scevgep46.6 = getelementptr i8, i8* %b, i64 6
  %22 = load i8, i8* %scevgep46.6, align 1
  %conv.i.i96.6 = zext i8 %22 to i32
  %conv1.i.i97.6 = zext i8 %conv2.i.i99.5 to i32
  %xor.i.i98.6 = xor i32 %conv1.i.i97.6, %conv.i.i96.6
  %conv2.i.i99.6 = trunc i32 %xor.i.i98.6 to i8
  %scevgep46.7 = getelementptr i8, i8* %b, i64 7
  %23 = load i8, i8* %scevgep46.7, align 1
  %conv.i.i96.7 = zext i8 %23 to i32
  %conv1.i.i97.7 = zext i8 %conv2.i.i99.6 to i32
  %xor.i.i98.7 = xor i32 %conv1.i.i97.7, %conv.i.i96.7
  %conv2.i.i99.7 = trunc i32 %xor.i.i98.7 to i8
  %scevgep46.8 = getelementptr i8, i8* %b, i64 8
  %24 = load i8, i8* %scevgep46.8, align 1
  %conv.i.i96.8 = zext i8 %24 to i32
  %conv1.i.i97.8 = zext i8 %conv2.i.i99.7 to i32
  %xor.i.i98.8 = xor i32 %conv1.i.i97.8, %conv.i.i96.8
  %conv2.i.i99.8 = trunc i32 %xor.i.i98.8 to i8
  %scevgep46.9 = getelementptr i8, i8* %b, i64 9
  %25 = load i8, i8* %scevgep46.9, align 1
  %conv.i.i96.9 = zext i8 %25 to i32
  %conv1.i.i97.9 = zext i8 %conv2.i.i99.8 to i32
  %xor.i.i98.9 = xor i32 %conv1.i.i97.9, %conv.i.i96.9
  %conv2.i.i99.9 = trunc i32 %xor.i.i98.9 to i8
  %scevgep46.10 = getelementptr i8, i8* %b, i64 10
  %26 = load i8, i8* %scevgep46.10, align 1
  %conv.i.i96.10 = zext i8 %26 to i32
  %conv1.i.i97.10 = zext i8 %conv2.i.i99.9 to i32
  %xor.i.i98.10 = xor i32 %conv1.i.i97.10, %conv.i.i96.10
  %conv2.i.i99.10 = trunc i32 %xor.i.i98.10 to i8
  %scevgep46.11 = getelementptr i8, i8* %b, i64 11
  %27 = load i8, i8* %scevgep46.11, align 1
  %conv.i.i96.11 = zext i8 %27 to i32
  %conv1.i.i97.11 = zext i8 %conv2.i.i99.10 to i32
  %xor.i.i98.11 = xor i32 %conv1.i.i97.11, %conv.i.i96.11
  %conv2.i.i99.11 = trunc i32 %xor.i.i98.11 to i8
  %scevgep46.12 = getelementptr i8, i8* %b, i64 12
  %28 = load i8, i8* %scevgep46.12, align 1
  %conv.i.i96.12 = zext i8 %28 to i32
  %conv1.i.i97.12 = zext i8 %conv2.i.i99.11 to i32
  %xor.i.i98.12 = xor i32 %conv1.i.i97.12, %conv.i.i96.12
  %conv2.i.i99.12 = trunc i32 %xor.i.i98.12 to i8
  %scevgep46.13 = getelementptr i8, i8* %b, i64 13
  %29 = load i8, i8* %scevgep46.13, align 1
  %conv.i.i96.13 = zext i8 %29 to i32
  %conv1.i.i97.13 = zext i8 %conv2.i.i99.12 to i32
  %xor.i.i98.13 = xor i32 %conv1.i.i97.13, %conv.i.i96.13
  %conv2.i.i99.13 = trunc i32 %xor.i.i98.13 to i8
  %scevgep46.14 = getelementptr i8, i8* %b, i64 14
  %30 = load i8, i8* %scevgep46.14, align 1
  %conv.i.i96.14 = zext i8 %30 to i32
  %conv1.i.i97.14 = zext i8 %conv2.i.i99.13 to i32
  %xor.i.i98.14 = xor i32 %conv1.i.i97.14, %conv.i.i96.14
  %conv2.i.i99.14 = trunc i32 %xor.i.i98.14 to i8
  %scevgep46.15 = getelementptr i8, i8* %b, i64 15
  %31 = load i8, i8* %scevgep46.15, align 1
  %conv.i.i96.15 = zext i8 %31 to i32
  %conv1.i.i97.15 = zext i8 %conv2.i.i99.14 to i32
  %xor.i.i98.15 = xor i32 %conv1.i.i97.15, %conv.i.i96.15
  %conv2.i.i99.15 = trunc i32 %xor.i.i98.15 to i8
  %conv7 = zext i8 %conv2.i.i99.15 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [16 x [16 x i8]]*
  %scevgep36 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep3637 = bitcast i8* %scevgep36 to [16 x [16 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep23, align 1
  %32 = load i8, i8* %scevgep23, align 1
  %conv23 = zext i8 %32 to i32
  %33 = load i8, i8* %a, align 1
  %scevgep34 = getelementptr i8, i8* %b, i64 1
  %34 = load i8, i8* %scevgep34, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep35 = getelementptr i8, i8* %a, i64 1
  %35 = load i8, i8* %scevgep35, align 1
  %36 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  store i8 %conv37, i8* %scevgep36, align 1
  %scevgep28 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %37 = bitcast i8* %scevgep28 to [16 x [16 x i8]]*
  %scevgep41 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep3637, i64 0, i64 1, i64 0
  %38 = bitcast i8* %scevgep41 to [16 x [16 x i8]]*
  %call16.1202 = call zeroext i8 (...) @rand()
  store i8 %call16.1202, i8* %scevgep28, align 1
  %39 = load i8, i8* %scevgep28, align 1
  %conv23.1203 = zext i8 %39 to i32
  %40 = load i8, i8* %a, align 1
  %scevgep34.1204 = getelementptr i8, i8* %b, i64 2
  %41 = load i8, i8* %scevgep34.1204, align 1
  %call28.1205 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  %conv29.1206 = zext i8 %call28.1205 to i32
  %xor.1207 = xor i32 %conv23.1203, %conv29.1206
  %scevgep35.1208 = getelementptr i8, i8* %a, i64 2
  %42 = load i8, i8* %scevgep35.1208, align 1
  %43 = load i8, i8* %b, align 1
  %call34.1209 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %conv35.1210 = zext i8 %call34.1209 to i32
  %xor36.1211 = xor i32 %xor.1207, %conv35.1210
  %conv37.1212 = trunc i32 %xor36.1211 to i8
  store i8 %conv37.1212, i8* %scevgep41, align 1
  %scevgep28.1213 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 1
  %44 = bitcast i8* %scevgep28.1213 to [16 x [16 x i8]]*
  %scevgep41.1214 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep41.1214 to [16 x [16 x i8]]*
  %call16.2216 = call zeroext i8 (...) @rand()
  store i8 %call16.2216, i8* %scevgep28.1213, align 1
  %46 = load i8, i8* %scevgep28.1213, align 1
  %conv23.2217 = zext i8 %46 to i32
  %47 = load i8, i8* %a, align 1
  %scevgep34.2218 = getelementptr i8, i8* %b, i64 3
  %48 = load i8, i8* %scevgep34.2218, align 1
  %call28.2219 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48)
  %conv29.2220 = zext i8 %call28.2219 to i32
  %xor.2221 = xor i32 %conv23.2217, %conv29.2220
  %scevgep35.2222 = getelementptr i8, i8* %a, i64 3
  %49 = load i8, i8* %scevgep35.2222, align 1
  %50 = load i8, i8* %b, align 1
  %call34.2223 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %conv35.2224 = zext i8 %call34.2223 to i32
  %xor36.2225 = xor i32 %xor.2221, %conv35.2224
  %conv37.2226 = trunc i32 %xor36.2225 to i8
  store i8 %conv37.2226, i8* %scevgep41.1214, align 1
  %scevgep28.2227 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 1
  %51 = bitcast i8* %scevgep28.2227 to [16 x [16 x i8]]*
  %scevgep41.2228 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep41.2228 to [16 x [16 x i8]]*
  %call16.3230 = call zeroext i8 (...) @rand()
  store i8 %call16.3230, i8* %scevgep28.2227, align 1
  %53 = load i8, i8* %scevgep28.2227, align 1
  %conv23.3231 = zext i8 %53 to i32
  %54 = load i8, i8* %a, align 1
  %scevgep34.3232 = getelementptr i8, i8* %b, i64 4
  %55 = load i8, i8* %scevgep34.3232, align 1
  %call28.3233 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55)
  %conv29.3234 = zext i8 %call28.3233 to i32
  %xor.3235 = xor i32 %conv23.3231, %conv29.3234
  %scevgep35.3236 = getelementptr i8, i8* %a, i64 4
  %56 = load i8, i8* %scevgep35.3236, align 1
  %57 = load i8, i8* %b, align 1
  %call34.3237 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57)
  %conv35.3238 = zext i8 %call34.3237 to i32
  %xor36.3239 = xor i32 %xor.3235, %conv35.3238
  %conv37.3240 = trunc i32 %xor36.3239 to i8
  store i8 %conv37.3240, i8* %scevgep41.2228, align 1
  %scevgep28.3241 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %51, i64 0, i64 0, i64 1
  %58 = bitcast i8* %scevgep28.3241 to [16 x [16 x i8]]*
  %scevgep41.3242 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %52, i64 0, i64 1, i64 0
  %59 = bitcast i8* %scevgep41.3242 to [16 x [16 x i8]]*
  %call16.4244 = call zeroext i8 (...) @rand()
  store i8 %call16.4244, i8* %scevgep28.3241, align 1
  %60 = load i8, i8* %scevgep28.3241, align 1
  %conv23.4245 = zext i8 %60 to i32
  %61 = load i8, i8* %a, align 1
  %scevgep34.4246 = getelementptr i8, i8* %b, i64 5
  %62 = load i8, i8* %scevgep34.4246, align 1
  %call28.4247 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62)
  %conv29.4248 = zext i8 %call28.4247 to i32
  %xor.4249 = xor i32 %conv23.4245, %conv29.4248
  %scevgep35.4250 = getelementptr i8, i8* %a, i64 5
  %63 = load i8, i8* %scevgep35.4250, align 1
  %64 = load i8, i8* %b, align 1
  %call34.4251 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %conv35.4252 = zext i8 %call34.4251 to i32
  %xor36.4253 = xor i32 %xor.4249, %conv35.4252
  %conv37.4254 = trunc i32 %xor36.4253 to i8
  store i8 %conv37.4254, i8* %scevgep41.3242, align 1
  %scevgep28.4255 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %58, i64 0, i64 0, i64 1
  %65 = bitcast i8* %scevgep28.4255 to [16 x [16 x i8]]*
  %scevgep41.4256 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %59, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep41.4256 to [16 x [16 x i8]]*
  %call16.5258 = call zeroext i8 (...) @rand()
  store i8 %call16.5258, i8* %scevgep28.4255, align 1
  %67 = load i8, i8* %scevgep28.4255, align 1
  %conv23.5259 = zext i8 %67 to i32
  %68 = load i8, i8* %a, align 1
  %scevgep34.5260 = getelementptr i8, i8* %b, i64 6
  %69 = load i8, i8* %scevgep34.5260, align 1
  %call28.5261 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69)
  %conv29.5262 = zext i8 %call28.5261 to i32
  %xor.5263 = xor i32 %conv23.5259, %conv29.5262
  %scevgep35.5264 = getelementptr i8, i8* %a, i64 6
  %70 = load i8, i8* %scevgep35.5264, align 1
  %71 = load i8, i8* %b, align 1
  %call34.5265 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  %conv35.5266 = zext i8 %call34.5265 to i32
  %xor36.5267 = xor i32 %xor.5263, %conv35.5266
  %conv37.5268 = trunc i32 %xor36.5267 to i8
  store i8 %conv37.5268, i8* %scevgep41.4256, align 1
  %scevgep28.5269 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %65, i64 0, i64 0, i64 1
  %72 = bitcast i8* %scevgep28.5269 to [16 x [16 x i8]]*
  %scevgep41.5270 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %66, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep41.5270 to [16 x [16 x i8]]*
  %call16.6272 = call zeroext i8 (...) @rand()
  store i8 %call16.6272, i8* %scevgep28.5269, align 1
  %74 = load i8, i8* %scevgep28.5269, align 1
  %conv23.6273 = zext i8 %74 to i32
  %75 = load i8, i8* %a, align 1
  %scevgep34.6274 = getelementptr i8, i8* %b, i64 7
  %76 = load i8, i8* %scevgep34.6274, align 1
  %call28.6275 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76)
  %conv29.6276 = zext i8 %call28.6275 to i32
  %xor.6277 = xor i32 %conv23.6273, %conv29.6276
  %scevgep35.6278 = getelementptr i8, i8* %a, i64 7
  %77 = load i8, i8* %scevgep35.6278, align 1
  %78 = load i8, i8* %b, align 1
  %call34.6279 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78)
  %conv35.6280 = zext i8 %call34.6279 to i32
  %xor36.6281 = xor i32 %xor.6277, %conv35.6280
  %conv37.6282 = trunc i32 %xor36.6281 to i8
  store i8 %conv37.6282, i8* %scevgep41.5270, align 1
  %scevgep28.6283 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %72, i64 0, i64 0, i64 1
  %79 = bitcast i8* %scevgep28.6283 to [16 x [16 x i8]]*
  %scevgep41.6284 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %73, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep41.6284 to [16 x [16 x i8]]*
  %call16.7286 = call zeroext i8 (...) @rand()
  store i8 %call16.7286, i8* %scevgep28.6283, align 1
  %81 = load i8, i8* %scevgep28.6283, align 1
  %conv23.7287 = zext i8 %81 to i32
  %82 = load i8, i8* %a, align 1
  %scevgep34.7288 = getelementptr i8, i8* %b, i64 8
  %83 = load i8, i8* %scevgep34.7288, align 1
  %call28.7289 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83)
  %conv29.7290 = zext i8 %call28.7289 to i32
  %xor.7291 = xor i32 %conv23.7287, %conv29.7290
  %scevgep35.7292 = getelementptr i8, i8* %a, i64 8
  %84 = load i8, i8* %scevgep35.7292, align 1
  %85 = load i8, i8* %b, align 1
  %call34.7293 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85)
  %conv35.7294 = zext i8 %call34.7293 to i32
  %xor36.7295 = xor i32 %xor.7291, %conv35.7294
  %conv37.7296 = trunc i32 %xor36.7295 to i8
  store i8 %conv37.7296, i8* %scevgep41.6284, align 1
  %scevgep28.7297 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %79, i64 0, i64 0, i64 1
  %86 = bitcast i8* %scevgep28.7297 to [16 x [16 x i8]]*
  %scevgep41.7298 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %80, i64 0, i64 1, i64 0
  %87 = bitcast i8* %scevgep41.7298 to [16 x [16 x i8]]*
  %call16.8300 = call zeroext i8 (...) @rand()
  store i8 %call16.8300, i8* %scevgep28.7297, align 1
  %88 = load i8, i8* %scevgep28.7297, align 1
  %conv23.8301 = zext i8 %88 to i32
  %89 = load i8, i8* %a, align 1
  %scevgep34.8302 = getelementptr i8, i8* %b, i64 9
  %90 = load i8, i8* %scevgep34.8302, align 1
  %call28.8303 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90)
  %conv29.8304 = zext i8 %call28.8303 to i32
  %xor.8305 = xor i32 %conv23.8301, %conv29.8304
  %scevgep35.8306 = getelementptr i8, i8* %a, i64 9
  %91 = load i8, i8* %scevgep35.8306, align 1
  %92 = load i8, i8* %b, align 1
  %call34.8307 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %conv35.8308 = zext i8 %call34.8307 to i32
  %xor36.8309 = xor i32 %xor.8305, %conv35.8308
  %conv37.8310 = trunc i32 %xor36.8309 to i8
  store i8 %conv37.8310, i8* %scevgep41.7298, align 1
  %scevgep28.8311 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %86, i64 0, i64 0, i64 1
  %93 = bitcast i8* %scevgep28.8311 to [16 x [16 x i8]]*
  %scevgep41.8312 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %87, i64 0, i64 1, i64 0
  %94 = bitcast i8* %scevgep41.8312 to [16 x [16 x i8]]*
  %call16.9314 = call zeroext i8 (...) @rand()
  store i8 %call16.9314, i8* %scevgep28.8311, align 1
  %95 = load i8, i8* %scevgep28.8311, align 1
  %conv23.9315 = zext i8 %95 to i32
  %96 = load i8, i8* %a, align 1
  %scevgep34.9316 = getelementptr i8, i8* %b, i64 10
  %97 = load i8, i8* %scevgep34.9316, align 1
  %call28.9317 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97)
  %conv29.9318 = zext i8 %call28.9317 to i32
  %xor.9319 = xor i32 %conv23.9315, %conv29.9318
  %scevgep35.9320 = getelementptr i8, i8* %a, i64 10
  %98 = load i8, i8* %scevgep35.9320, align 1
  %99 = load i8, i8* %b, align 1
  %call34.9321 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99)
  %conv35.9322 = zext i8 %call34.9321 to i32
  %xor36.9323 = xor i32 %xor.9319, %conv35.9322
  %conv37.9324 = trunc i32 %xor36.9323 to i8
  store i8 %conv37.9324, i8* %scevgep41.8312, align 1
  %scevgep28.9325 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %93, i64 0, i64 0, i64 1
  %100 = bitcast i8* %scevgep28.9325 to [16 x [16 x i8]]*
  %scevgep41.9326 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %94, i64 0, i64 1, i64 0
  %101 = bitcast i8* %scevgep41.9326 to [16 x [16 x i8]]*
  %call16.10328 = call zeroext i8 (...) @rand()
  store i8 %call16.10328, i8* %scevgep28.9325, align 1
  %102 = load i8, i8* %scevgep28.9325, align 1
  %conv23.10329 = zext i8 %102 to i32
  %103 = load i8, i8* %a, align 1
  %scevgep34.10330 = getelementptr i8, i8* %b, i64 11
  %104 = load i8, i8* %scevgep34.10330, align 1
  %call28.10331 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104)
  %conv29.10332 = zext i8 %call28.10331 to i32
  %xor.10333 = xor i32 %conv23.10329, %conv29.10332
  %scevgep35.10334 = getelementptr i8, i8* %a, i64 11
  %105 = load i8, i8* %scevgep35.10334, align 1
  %106 = load i8, i8* %b, align 1
  %call34.10335 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106)
  %conv35.10336 = zext i8 %call34.10335 to i32
  %xor36.10337 = xor i32 %xor.10333, %conv35.10336
  %conv37.10338 = trunc i32 %xor36.10337 to i8
  store i8 %conv37.10338, i8* %scevgep41.9326, align 1
  %scevgep28.10339 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %100, i64 0, i64 0, i64 1
  %107 = bitcast i8* %scevgep28.10339 to [16 x [16 x i8]]*
  %scevgep41.10340 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %101, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep41.10340 to [16 x [16 x i8]]*
  %call16.11342 = call zeroext i8 (...) @rand()
  store i8 %call16.11342, i8* %scevgep28.10339, align 1
  %109 = load i8, i8* %scevgep28.10339, align 1
  %conv23.11343 = zext i8 %109 to i32
  %110 = load i8, i8* %a, align 1
  %scevgep34.11344 = getelementptr i8, i8* %b, i64 12
  %111 = load i8, i8* %scevgep34.11344, align 1
  %call28.11345 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111)
  %conv29.11346 = zext i8 %call28.11345 to i32
  %xor.11347 = xor i32 %conv23.11343, %conv29.11346
  %scevgep35.11348 = getelementptr i8, i8* %a, i64 12
  %112 = load i8, i8* %scevgep35.11348, align 1
  %113 = load i8, i8* %b, align 1
  %call34.11349 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113)
  %conv35.11350 = zext i8 %call34.11349 to i32
  %xor36.11351 = xor i32 %xor.11347, %conv35.11350
  %conv37.11352 = trunc i32 %xor36.11351 to i8
  store i8 %conv37.11352, i8* %scevgep41.10340, align 1
  %scevgep28.11353 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %107, i64 0, i64 0, i64 1
  %114 = bitcast i8* %scevgep28.11353 to [16 x [16 x i8]]*
  %scevgep41.11354 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %108, i64 0, i64 1, i64 0
  %115 = bitcast i8* %scevgep41.11354 to [16 x [16 x i8]]*
  %call16.12356 = call zeroext i8 (...) @rand()
  store i8 %call16.12356, i8* %scevgep28.11353, align 1
  %116 = load i8, i8* %scevgep28.11353, align 1
  %conv23.12357 = zext i8 %116 to i32
  %117 = load i8, i8* %a, align 1
  %scevgep34.12358 = getelementptr i8, i8* %b, i64 13
  %118 = load i8, i8* %scevgep34.12358, align 1
  %call28.12359 = call zeroext i8 @mult(i8 zeroext %117, i8 zeroext %118)
  %conv29.12360 = zext i8 %call28.12359 to i32
  %xor.12361 = xor i32 %conv23.12357, %conv29.12360
  %scevgep35.12362 = getelementptr i8, i8* %a, i64 13
  %119 = load i8, i8* %scevgep35.12362, align 1
  %120 = load i8, i8* %b, align 1
  %call34.12363 = call zeroext i8 @mult(i8 zeroext %119, i8 zeroext %120)
  %conv35.12364 = zext i8 %call34.12363 to i32
  %xor36.12365 = xor i32 %xor.12361, %conv35.12364
  %conv37.12366 = trunc i32 %xor36.12365 to i8
  store i8 %conv37.12366, i8* %scevgep41.11354, align 1
  %scevgep28.12367 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %114, i64 0, i64 0, i64 1
  %121 = bitcast i8* %scevgep28.12367 to [16 x [16 x i8]]*
  %scevgep41.12368 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %115, i64 0, i64 1, i64 0
  %122 = bitcast i8* %scevgep41.12368 to [16 x [16 x i8]]*
  %call16.13370 = call zeroext i8 (...) @rand()
  store i8 %call16.13370, i8* %scevgep28.12367, align 1
  %123 = load i8, i8* %scevgep28.12367, align 1
  %conv23.13371 = zext i8 %123 to i32
  %124 = load i8, i8* %a, align 1
  %scevgep34.13372 = getelementptr i8, i8* %b, i64 14
  %125 = load i8, i8* %scevgep34.13372, align 1
  %call28.13373 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125)
  %conv29.13374 = zext i8 %call28.13373 to i32
  %xor.13375 = xor i32 %conv23.13371, %conv29.13374
  %scevgep35.13376 = getelementptr i8, i8* %a, i64 14
  %126 = load i8, i8* %scevgep35.13376, align 1
  %127 = load i8, i8* %b, align 1
  %call34.13377 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127)
  %conv35.13378 = zext i8 %call34.13377 to i32
  %xor36.13379 = xor i32 %xor.13375, %conv35.13378
  %conv37.13380 = trunc i32 %xor36.13379 to i8
  store i8 %conv37.13380, i8* %scevgep41.12368, align 1
  %scevgep28.13381 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %121, i64 0, i64 0, i64 1
  %scevgep41.13382 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %122, i64 0, i64 1, i64 0
  %call16.14384 = call zeroext i8 (...) @rand()
  store i8 %call16.14384, i8* %scevgep28.13381, align 1
  %128 = load i8, i8* %scevgep28.13381, align 1
  %conv23.14385 = zext i8 %128 to i32
  %129 = load i8, i8* %a, align 1
  %scevgep34.14386 = getelementptr i8, i8* %b, i64 15
  %130 = load i8, i8* %scevgep34.14386, align 1
  %call28.14387 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130)
  %conv29.14388 = zext i8 %call28.14387 to i32
  %xor.14389 = xor i32 %conv23.14385, %conv29.14388
  %scevgep35.14390 = getelementptr i8, i8* %a, i64 15
  %131 = load i8, i8* %scevgep35.14390, align 1
  %132 = load i8, i8* %b, align 1
  %call34.14391 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132)
  %conv35.14392 = zext i8 %call34.14391 to i32
  %xor36.14393 = xor i32 %xor.14389, %conv35.14392
  %conv37.14394 = trunc i32 %xor36.14393 to i8
  store i8 %conv37.14394, i8* %scevgep41.13382, align 1
  %scevgep26 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %133 = bitcast i8* %scevgep26 to [16 x [16 x i8]]*
  %scevgep39 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep3637, i64 0, i64 1, i64 1
  %134 = bitcast i8* %scevgep39 to [16 x [16 x i8]]*
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep26, align 1
  %135 = load i8, i8* %scevgep26, align 1
  %conv23.1 = zext i8 %135 to i32
  %136 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1 = getelementptr i8, i8* %b, i64 2
  %137 = load i8, i8* %scevgep34.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep35.1 = getelementptr i8, i8* %a, i64 2
  %138 = load i8, i8* %scevgep35.1, align 1
  %139 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %138, i8 zeroext %139)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  store i8 %conv37.1, i8* %scevgep39, align 1
  %scevgep28.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %133, i64 0, i64 0, i64 1
  %140 = bitcast i8* %scevgep28.1 to [16 x [16 x i8]]*
  %scevgep41.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %134, i64 0, i64 1, i64 0
  %141 = bitcast i8* %scevgep41.1 to [16 x [16 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep28.1, align 1
  %142 = load i8, i8* %scevgep28.1, align 1
  %conv23.1.1 = zext i8 %142 to i32
  %143 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.1 = getelementptr i8, i8* %b, i64 3
  %144 = load i8, i8* %scevgep34.1.1, align 1
  %call28.1.1 = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144)
  %conv29.1.1 = zext i8 %call28.1.1 to i32
  %xor.1.1 = xor i32 %conv23.1.1, %conv29.1.1
  %scevgep35.1.1 = getelementptr i8, i8* %a, i64 3
  %145 = load i8, i8* %scevgep35.1.1, align 1
  %146 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.1 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %conv35.1.1 = zext i8 %call34.1.1 to i32
  %xor36.1.1 = xor i32 %xor.1.1, %conv35.1.1
  %conv37.1.1 = trunc i32 %xor36.1.1 to i8
  store i8 %conv37.1.1, i8* %scevgep41.1, align 1
  %scevgep28.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %140, i64 0, i64 0, i64 1
  %147 = bitcast i8* %scevgep28.1.1 to [16 x [16 x i8]]*
  %scevgep41.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %141, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep41.1.1 to [16 x [16 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep28.1.1, align 1
  %149 = load i8, i8* %scevgep28.1.1, align 1
  %conv23.1.2 = zext i8 %149 to i32
  %150 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.2 = getelementptr i8, i8* %b, i64 4
  %151 = load i8, i8* %scevgep34.1.2, align 1
  %call28.1.2 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %151)
  %conv29.1.2 = zext i8 %call28.1.2 to i32
  %xor.1.2 = xor i32 %conv23.1.2, %conv29.1.2
  %scevgep35.1.2 = getelementptr i8, i8* %a, i64 4
  %152 = load i8, i8* %scevgep35.1.2, align 1
  %153 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.2 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153)
  %conv35.1.2 = zext i8 %call34.1.2 to i32
  %xor36.1.2 = xor i32 %xor.1.2, %conv35.1.2
  %conv37.1.2 = trunc i32 %xor36.1.2 to i8
  store i8 %conv37.1.2, i8* %scevgep41.1.1, align 1
  %scevgep28.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %147, i64 0, i64 0, i64 1
  %154 = bitcast i8* %scevgep28.1.2 to [16 x [16 x i8]]*
  %scevgep41.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %148, i64 0, i64 1, i64 0
  %155 = bitcast i8* %scevgep41.1.2 to [16 x [16 x i8]]*
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep28.1.2, align 1
  %156 = load i8, i8* %scevgep28.1.2, align 1
  %conv23.1.3 = zext i8 %156 to i32
  %157 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.3 = getelementptr i8, i8* %b, i64 5
  %158 = load i8, i8* %scevgep34.1.3, align 1
  %call28.1.3 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158)
  %conv29.1.3 = zext i8 %call28.1.3 to i32
  %xor.1.3 = xor i32 %conv23.1.3, %conv29.1.3
  %scevgep35.1.3 = getelementptr i8, i8* %a, i64 5
  %159 = load i8, i8* %scevgep35.1.3, align 1
  %160 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.3 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160)
  %conv35.1.3 = zext i8 %call34.1.3 to i32
  %xor36.1.3 = xor i32 %xor.1.3, %conv35.1.3
  %conv37.1.3 = trunc i32 %xor36.1.3 to i8
  store i8 %conv37.1.3, i8* %scevgep41.1.2, align 1
  %scevgep28.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %154, i64 0, i64 0, i64 1
  %161 = bitcast i8* %scevgep28.1.3 to [16 x [16 x i8]]*
  %scevgep41.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %155, i64 0, i64 1, i64 0
  %162 = bitcast i8* %scevgep41.1.3 to [16 x [16 x i8]]*
  %call16.1.4 = call zeroext i8 (...) @rand()
  store i8 %call16.1.4, i8* %scevgep28.1.3, align 1
  %163 = load i8, i8* %scevgep28.1.3, align 1
  %conv23.1.4 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.4 = getelementptr i8, i8* %b, i64 6
  %165 = load i8, i8* %scevgep34.1.4, align 1
  %call28.1.4 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165)
  %conv29.1.4 = zext i8 %call28.1.4 to i32
  %xor.1.4 = xor i32 %conv23.1.4, %conv29.1.4
  %scevgep35.1.4 = getelementptr i8, i8* %a, i64 6
  %166 = load i8, i8* %scevgep35.1.4, align 1
  %167 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.4 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167)
  %conv35.1.4 = zext i8 %call34.1.4 to i32
  %xor36.1.4 = xor i32 %xor.1.4, %conv35.1.4
  %conv37.1.4 = trunc i32 %xor36.1.4 to i8
  store i8 %conv37.1.4, i8* %scevgep41.1.3, align 1
  %scevgep28.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %161, i64 0, i64 0, i64 1
  %168 = bitcast i8* %scevgep28.1.4 to [16 x [16 x i8]]*
  %scevgep41.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %162, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep41.1.4 to [16 x [16 x i8]]*
  %call16.1.5 = call zeroext i8 (...) @rand()
  store i8 %call16.1.5, i8* %scevgep28.1.4, align 1
  %170 = load i8, i8* %scevgep28.1.4, align 1
  %conv23.1.5 = zext i8 %170 to i32
  %171 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.5 = getelementptr i8, i8* %b, i64 7
  %172 = load i8, i8* %scevgep34.1.5, align 1
  %call28.1.5 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172)
  %conv29.1.5 = zext i8 %call28.1.5 to i32
  %xor.1.5 = xor i32 %conv23.1.5, %conv29.1.5
  %scevgep35.1.5 = getelementptr i8, i8* %a, i64 7
  %173 = load i8, i8* %scevgep35.1.5, align 1
  %174 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.5 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174)
  %conv35.1.5 = zext i8 %call34.1.5 to i32
  %xor36.1.5 = xor i32 %xor.1.5, %conv35.1.5
  %conv37.1.5 = trunc i32 %xor36.1.5 to i8
  store i8 %conv37.1.5, i8* %scevgep41.1.4, align 1
  %scevgep28.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %168, i64 0, i64 0, i64 1
  %175 = bitcast i8* %scevgep28.1.5 to [16 x [16 x i8]]*
  %scevgep41.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %169, i64 0, i64 1, i64 0
  %176 = bitcast i8* %scevgep41.1.5 to [16 x [16 x i8]]*
  %call16.1.6 = call zeroext i8 (...) @rand()
  store i8 %call16.1.6, i8* %scevgep28.1.5, align 1
  %177 = load i8, i8* %scevgep28.1.5, align 1
  %conv23.1.6 = zext i8 %177 to i32
  %178 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.6 = getelementptr i8, i8* %b, i64 8
  %179 = load i8, i8* %scevgep34.1.6, align 1
  %call28.1.6 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179)
  %conv29.1.6 = zext i8 %call28.1.6 to i32
  %xor.1.6 = xor i32 %conv23.1.6, %conv29.1.6
  %scevgep35.1.6 = getelementptr i8, i8* %a, i64 8
  %180 = load i8, i8* %scevgep35.1.6, align 1
  %181 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.6 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181)
  %conv35.1.6 = zext i8 %call34.1.6 to i32
  %xor36.1.6 = xor i32 %xor.1.6, %conv35.1.6
  %conv37.1.6 = trunc i32 %xor36.1.6 to i8
  store i8 %conv37.1.6, i8* %scevgep41.1.5, align 1
  %scevgep28.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %175, i64 0, i64 0, i64 1
  %182 = bitcast i8* %scevgep28.1.6 to [16 x [16 x i8]]*
  %scevgep41.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %176, i64 0, i64 1, i64 0
  %183 = bitcast i8* %scevgep41.1.6 to [16 x [16 x i8]]*
  %call16.1.7 = call zeroext i8 (...) @rand()
  store i8 %call16.1.7, i8* %scevgep28.1.6, align 1
  %184 = load i8, i8* %scevgep28.1.6, align 1
  %conv23.1.7 = zext i8 %184 to i32
  %185 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.7 = getelementptr i8, i8* %b, i64 9
  %186 = load i8, i8* %scevgep34.1.7, align 1
  %call28.1.7 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186)
  %conv29.1.7 = zext i8 %call28.1.7 to i32
  %xor.1.7 = xor i32 %conv23.1.7, %conv29.1.7
  %scevgep35.1.7 = getelementptr i8, i8* %a, i64 9
  %187 = load i8, i8* %scevgep35.1.7, align 1
  %188 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.7 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188)
  %conv35.1.7 = zext i8 %call34.1.7 to i32
  %xor36.1.7 = xor i32 %xor.1.7, %conv35.1.7
  %conv37.1.7 = trunc i32 %xor36.1.7 to i8
  store i8 %conv37.1.7, i8* %scevgep41.1.6, align 1
  %scevgep28.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %182, i64 0, i64 0, i64 1
  %189 = bitcast i8* %scevgep28.1.7 to [16 x [16 x i8]]*
  %scevgep41.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %183, i64 0, i64 1, i64 0
  %190 = bitcast i8* %scevgep41.1.7 to [16 x [16 x i8]]*
  %call16.1.8 = call zeroext i8 (...) @rand()
  store i8 %call16.1.8, i8* %scevgep28.1.7, align 1
  %191 = load i8, i8* %scevgep28.1.7, align 1
  %conv23.1.8 = zext i8 %191 to i32
  %192 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.8 = getelementptr i8, i8* %b, i64 10
  %193 = load i8, i8* %scevgep34.1.8, align 1
  %call28.1.8 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193)
  %conv29.1.8 = zext i8 %call28.1.8 to i32
  %xor.1.8 = xor i32 %conv23.1.8, %conv29.1.8
  %scevgep35.1.8 = getelementptr i8, i8* %a, i64 10
  %194 = load i8, i8* %scevgep35.1.8, align 1
  %195 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.8 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %195)
  %conv35.1.8 = zext i8 %call34.1.8 to i32
  %xor36.1.8 = xor i32 %xor.1.8, %conv35.1.8
  %conv37.1.8 = trunc i32 %xor36.1.8 to i8
  store i8 %conv37.1.8, i8* %scevgep41.1.7, align 1
  %scevgep28.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %189, i64 0, i64 0, i64 1
  %196 = bitcast i8* %scevgep28.1.8 to [16 x [16 x i8]]*
  %scevgep41.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %190, i64 0, i64 1, i64 0
  %197 = bitcast i8* %scevgep41.1.8 to [16 x [16 x i8]]*
  %call16.1.9 = call zeroext i8 (...) @rand()
  store i8 %call16.1.9, i8* %scevgep28.1.8, align 1
  %198 = load i8, i8* %scevgep28.1.8, align 1
  %conv23.1.9 = zext i8 %198 to i32
  %199 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.9 = getelementptr i8, i8* %b, i64 11
  %200 = load i8, i8* %scevgep34.1.9, align 1
  %call28.1.9 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200)
  %conv29.1.9 = zext i8 %call28.1.9 to i32
  %xor.1.9 = xor i32 %conv23.1.9, %conv29.1.9
  %scevgep35.1.9 = getelementptr i8, i8* %a, i64 11
  %201 = load i8, i8* %scevgep35.1.9, align 1
  %202 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.9 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202)
  %conv35.1.9 = zext i8 %call34.1.9 to i32
  %xor36.1.9 = xor i32 %xor.1.9, %conv35.1.9
  %conv37.1.9 = trunc i32 %xor36.1.9 to i8
  store i8 %conv37.1.9, i8* %scevgep41.1.8, align 1
  %scevgep28.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 1
  %203 = bitcast i8* %scevgep28.1.9 to [16 x [16 x i8]]*
  %scevgep41.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %197, i64 0, i64 1, i64 0
  %204 = bitcast i8* %scevgep41.1.9 to [16 x [16 x i8]]*
  %call16.1.10 = call zeroext i8 (...) @rand()
  store i8 %call16.1.10, i8* %scevgep28.1.9, align 1
  %205 = load i8, i8* %scevgep28.1.9, align 1
  %conv23.1.10 = zext i8 %205 to i32
  %206 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.10 = getelementptr i8, i8* %b, i64 12
  %207 = load i8, i8* %scevgep34.1.10, align 1
  %call28.1.10 = call zeroext i8 @mult(i8 zeroext %206, i8 zeroext %207)
  %conv29.1.10 = zext i8 %call28.1.10 to i32
  %xor.1.10 = xor i32 %conv23.1.10, %conv29.1.10
  %scevgep35.1.10 = getelementptr i8, i8* %a, i64 12
  %208 = load i8, i8* %scevgep35.1.10, align 1
  %209 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.10 = call zeroext i8 @mult(i8 zeroext %208, i8 zeroext %209)
  %conv35.1.10 = zext i8 %call34.1.10 to i32
  %xor36.1.10 = xor i32 %xor.1.10, %conv35.1.10
  %conv37.1.10 = trunc i32 %xor36.1.10 to i8
  store i8 %conv37.1.10, i8* %scevgep41.1.9, align 1
  %scevgep28.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %203, i64 0, i64 0, i64 1
  %210 = bitcast i8* %scevgep28.1.10 to [16 x [16 x i8]]*
  %scevgep41.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %204, i64 0, i64 1, i64 0
  %211 = bitcast i8* %scevgep41.1.10 to [16 x [16 x i8]]*
  %call16.1.11 = call zeroext i8 (...) @rand()
  store i8 %call16.1.11, i8* %scevgep28.1.10, align 1
  %212 = load i8, i8* %scevgep28.1.10, align 1
  %conv23.1.11 = zext i8 %212 to i32
  %213 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.11 = getelementptr i8, i8* %b, i64 13
  %214 = load i8, i8* %scevgep34.1.11, align 1
  %call28.1.11 = call zeroext i8 @mult(i8 zeroext %213, i8 zeroext %214)
  %conv29.1.11 = zext i8 %call28.1.11 to i32
  %xor.1.11 = xor i32 %conv23.1.11, %conv29.1.11
  %scevgep35.1.11 = getelementptr i8, i8* %a, i64 13
  %215 = load i8, i8* %scevgep35.1.11, align 1
  %216 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.11 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %216)
  %conv35.1.11 = zext i8 %call34.1.11 to i32
  %xor36.1.11 = xor i32 %xor.1.11, %conv35.1.11
  %conv37.1.11 = trunc i32 %xor36.1.11 to i8
  store i8 %conv37.1.11, i8* %scevgep41.1.10, align 1
  %scevgep28.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %210, i64 0, i64 0, i64 1
  %217 = bitcast i8* %scevgep28.1.11 to [16 x [16 x i8]]*
  %scevgep41.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %211, i64 0, i64 1, i64 0
  %218 = bitcast i8* %scevgep41.1.11 to [16 x [16 x i8]]*
  %call16.1.12 = call zeroext i8 (...) @rand()
  store i8 %call16.1.12, i8* %scevgep28.1.11, align 1
  %219 = load i8, i8* %scevgep28.1.11, align 1
  %conv23.1.12 = zext i8 %219 to i32
  %220 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.12 = getelementptr i8, i8* %b, i64 14
  %221 = load i8, i8* %scevgep34.1.12, align 1
  %call28.1.12 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221)
  %conv29.1.12 = zext i8 %call28.1.12 to i32
  %xor.1.12 = xor i32 %conv23.1.12, %conv29.1.12
  %scevgep35.1.12 = getelementptr i8, i8* %a, i64 14
  %222 = load i8, i8* %scevgep35.1.12, align 1
  %223 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.12 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223)
  %conv35.1.12 = zext i8 %call34.1.12 to i32
  %xor36.1.12 = xor i32 %xor.1.12, %conv35.1.12
  %conv37.1.12 = trunc i32 %xor36.1.12 to i8
  store i8 %conv37.1.12, i8* %scevgep41.1.11, align 1
  %scevgep28.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %217, i64 0, i64 0, i64 1
  %scevgep41.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %218, i64 0, i64 1, i64 0
  %call16.1.13 = call zeroext i8 (...) @rand()
  store i8 %call16.1.13, i8* %scevgep28.1.12, align 1
  %224 = load i8, i8* %scevgep28.1.12, align 1
  %conv23.1.13 = zext i8 %224 to i32
  %225 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.13 = getelementptr i8, i8* %b, i64 15
  %226 = load i8, i8* %scevgep34.1.13, align 1
  %call28.1.13 = call zeroext i8 @mult(i8 zeroext %225, i8 zeroext %226)
  %conv29.1.13 = zext i8 %call28.1.13 to i32
  %xor.1.13 = xor i32 %conv23.1.13, %conv29.1.13
  %scevgep35.1.13 = getelementptr i8, i8* %a, i64 15
  %227 = load i8, i8* %scevgep35.1.13, align 1
  %228 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.13 = call zeroext i8 @mult(i8 zeroext %227, i8 zeroext %228)
  %conv35.1.13 = zext i8 %call34.1.13 to i32
  %xor36.1.13 = xor i32 %xor.1.13, %conv35.1.13
  %conv37.1.13 = trunc i32 %xor36.1.13 to i8
  store i8 %conv37.1.13, i8* %scevgep41.1.12, align 1
  %scevgep26.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %133, i64 0, i64 1, i64 1
  %229 = bitcast i8* %scevgep26.1 to [16 x [16 x i8]]*
  %scevgep39.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %134, i64 0, i64 1, i64 1
  %230 = bitcast i8* %scevgep39.1 to [16 x [16 x i8]]*
  %arrayidx25.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep26.1, align 1
  %231 = load i8, i8* %scevgep26.1, align 1
  %conv23.2 = zext i8 %231 to i32
  %232 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2 = getelementptr i8, i8* %b, i64 3
  %233 = load i8, i8* %scevgep34.2, align 1
  %call28.2 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233)
  %conv29.2 = zext i8 %call28.2 to i32
  %xor.2 = xor i32 %conv23.2, %conv29.2
  %scevgep35.2 = getelementptr i8, i8* %a, i64 3
  %234 = load i8, i8* %scevgep35.2, align 1
  %235 = load i8, i8* %arrayidx33.2, align 1
  %call34.2 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235)
  %conv35.2 = zext i8 %call34.2 to i32
  %xor36.2 = xor i32 %xor.2, %conv35.2
  %conv37.2 = trunc i32 %xor36.2 to i8
  store i8 %conv37.2, i8* %scevgep39.1, align 1
  %scevgep28.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 1
  %236 = bitcast i8* %scevgep28.2 to [16 x [16 x i8]]*
  %scevgep41.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %230, i64 0, i64 1, i64 0
  %237 = bitcast i8* %scevgep41.2 to [16 x [16 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep28.2, align 1
  %238 = load i8, i8* %scevgep28.2, align 1
  %conv23.2.1 = zext i8 %238 to i32
  %239 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.1 = getelementptr i8, i8* %b, i64 4
  %240 = load i8, i8* %scevgep34.2.1, align 1
  %call28.2.1 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240)
  %conv29.2.1 = zext i8 %call28.2.1 to i32
  %xor.2.1 = xor i32 %conv23.2.1, %conv29.2.1
  %scevgep35.2.1 = getelementptr i8, i8* %a, i64 4
  %241 = load i8, i8* %scevgep35.2.1, align 1
  %242 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.1 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242)
  %conv35.2.1 = zext i8 %call34.2.1 to i32
  %xor36.2.1 = xor i32 %xor.2.1, %conv35.2.1
  %conv37.2.1 = trunc i32 %xor36.2.1 to i8
  store i8 %conv37.2.1, i8* %scevgep41.2, align 1
  %scevgep28.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %236, i64 0, i64 0, i64 1
  %243 = bitcast i8* %scevgep28.2.1 to [16 x [16 x i8]]*
  %scevgep41.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %237, i64 0, i64 1, i64 0
  %244 = bitcast i8* %scevgep41.2.1 to [16 x [16 x i8]]*
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep28.2.1, align 1
  %245 = load i8, i8* %scevgep28.2.1, align 1
  %conv23.2.2 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.2 = getelementptr i8, i8* %b, i64 5
  %247 = load i8, i8* %scevgep34.2.2, align 1
  %call28.2.2 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247)
  %conv29.2.2 = zext i8 %call28.2.2 to i32
  %xor.2.2 = xor i32 %conv23.2.2, %conv29.2.2
  %scevgep35.2.2 = getelementptr i8, i8* %a, i64 5
  %248 = load i8, i8* %scevgep35.2.2, align 1
  %249 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.2 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249)
  %conv35.2.2 = zext i8 %call34.2.2 to i32
  %xor36.2.2 = xor i32 %xor.2.2, %conv35.2.2
  %conv37.2.2 = trunc i32 %xor36.2.2 to i8
  store i8 %conv37.2.2, i8* %scevgep41.2.1, align 1
  %scevgep28.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %243, i64 0, i64 0, i64 1
  %250 = bitcast i8* %scevgep28.2.2 to [16 x [16 x i8]]*
  %scevgep41.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %244, i64 0, i64 1, i64 0
  %251 = bitcast i8* %scevgep41.2.2 to [16 x [16 x i8]]*
  %call16.2.3 = call zeroext i8 (...) @rand()
  store i8 %call16.2.3, i8* %scevgep28.2.2, align 1
  %252 = load i8, i8* %scevgep28.2.2, align 1
  %conv23.2.3 = zext i8 %252 to i32
  %253 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.3 = getelementptr i8, i8* %b, i64 6
  %254 = load i8, i8* %scevgep34.2.3, align 1
  %call28.2.3 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254)
  %conv29.2.3 = zext i8 %call28.2.3 to i32
  %xor.2.3 = xor i32 %conv23.2.3, %conv29.2.3
  %scevgep35.2.3 = getelementptr i8, i8* %a, i64 6
  %255 = load i8, i8* %scevgep35.2.3, align 1
  %256 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.3 = call zeroext i8 @mult(i8 zeroext %255, i8 zeroext %256)
  %conv35.2.3 = zext i8 %call34.2.3 to i32
  %xor36.2.3 = xor i32 %xor.2.3, %conv35.2.3
  %conv37.2.3 = trunc i32 %xor36.2.3 to i8
  store i8 %conv37.2.3, i8* %scevgep41.2.2, align 1
  %scevgep28.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %250, i64 0, i64 0, i64 1
  %257 = bitcast i8* %scevgep28.2.3 to [16 x [16 x i8]]*
  %scevgep41.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %251, i64 0, i64 1, i64 0
  %258 = bitcast i8* %scevgep41.2.3 to [16 x [16 x i8]]*
  %call16.2.4 = call zeroext i8 (...) @rand()
  store i8 %call16.2.4, i8* %scevgep28.2.3, align 1
  %259 = load i8, i8* %scevgep28.2.3, align 1
  %conv23.2.4 = zext i8 %259 to i32
  %260 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.4 = getelementptr i8, i8* %b, i64 7
  %261 = load i8, i8* %scevgep34.2.4, align 1
  %call28.2.4 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261)
  %conv29.2.4 = zext i8 %call28.2.4 to i32
  %xor.2.4 = xor i32 %conv23.2.4, %conv29.2.4
  %scevgep35.2.4 = getelementptr i8, i8* %a, i64 7
  %262 = load i8, i8* %scevgep35.2.4, align 1
  %263 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.4 = call zeroext i8 @mult(i8 zeroext %262, i8 zeroext %263)
  %conv35.2.4 = zext i8 %call34.2.4 to i32
  %xor36.2.4 = xor i32 %xor.2.4, %conv35.2.4
  %conv37.2.4 = trunc i32 %xor36.2.4 to i8
  store i8 %conv37.2.4, i8* %scevgep41.2.3, align 1
  %scevgep28.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %257, i64 0, i64 0, i64 1
  %264 = bitcast i8* %scevgep28.2.4 to [16 x [16 x i8]]*
  %scevgep41.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %258, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep41.2.4 to [16 x [16 x i8]]*
  %call16.2.5 = call zeroext i8 (...) @rand()
  store i8 %call16.2.5, i8* %scevgep28.2.4, align 1
  %266 = load i8, i8* %scevgep28.2.4, align 1
  %conv23.2.5 = zext i8 %266 to i32
  %267 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.5 = getelementptr i8, i8* %b, i64 8
  %268 = load i8, i8* %scevgep34.2.5, align 1
  %call28.2.5 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268)
  %conv29.2.5 = zext i8 %call28.2.5 to i32
  %xor.2.5 = xor i32 %conv23.2.5, %conv29.2.5
  %scevgep35.2.5 = getelementptr i8, i8* %a, i64 8
  %269 = load i8, i8* %scevgep35.2.5, align 1
  %270 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.5 = call zeroext i8 @mult(i8 zeroext %269, i8 zeroext %270)
  %conv35.2.5 = zext i8 %call34.2.5 to i32
  %xor36.2.5 = xor i32 %xor.2.5, %conv35.2.5
  %conv37.2.5 = trunc i32 %xor36.2.5 to i8
  store i8 %conv37.2.5, i8* %scevgep41.2.4, align 1
  %scevgep28.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %264, i64 0, i64 0, i64 1
  %271 = bitcast i8* %scevgep28.2.5 to [16 x [16 x i8]]*
  %scevgep41.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %265, i64 0, i64 1, i64 0
  %272 = bitcast i8* %scevgep41.2.5 to [16 x [16 x i8]]*
  %call16.2.6 = call zeroext i8 (...) @rand()
  store i8 %call16.2.6, i8* %scevgep28.2.5, align 1
  %273 = load i8, i8* %scevgep28.2.5, align 1
  %conv23.2.6 = zext i8 %273 to i32
  %274 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.6 = getelementptr i8, i8* %b, i64 9
  %275 = load i8, i8* %scevgep34.2.6, align 1
  %call28.2.6 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275)
  %conv29.2.6 = zext i8 %call28.2.6 to i32
  %xor.2.6 = xor i32 %conv23.2.6, %conv29.2.6
  %scevgep35.2.6 = getelementptr i8, i8* %a, i64 9
  %276 = load i8, i8* %scevgep35.2.6, align 1
  %277 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.6 = call zeroext i8 @mult(i8 zeroext %276, i8 zeroext %277)
  %conv35.2.6 = zext i8 %call34.2.6 to i32
  %xor36.2.6 = xor i32 %xor.2.6, %conv35.2.6
  %conv37.2.6 = trunc i32 %xor36.2.6 to i8
  store i8 %conv37.2.6, i8* %scevgep41.2.5, align 1
  %scevgep28.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %271, i64 0, i64 0, i64 1
  %278 = bitcast i8* %scevgep28.2.6 to [16 x [16 x i8]]*
  %scevgep41.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %272, i64 0, i64 1, i64 0
  %279 = bitcast i8* %scevgep41.2.6 to [16 x [16 x i8]]*
  %call16.2.7 = call zeroext i8 (...) @rand()
  store i8 %call16.2.7, i8* %scevgep28.2.6, align 1
  %280 = load i8, i8* %scevgep28.2.6, align 1
  %conv23.2.7 = zext i8 %280 to i32
  %281 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.7 = getelementptr i8, i8* %b, i64 10
  %282 = load i8, i8* %scevgep34.2.7, align 1
  %call28.2.7 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282)
  %conv29.2.7 = zext i8 %call28.2.7 to i32
  %xor.2.7 = xor i32 %conv23.2.7, %conv29.2.7
  %scevgep35.2.7 = getelementptr i8, i8* %a, i64 10
  %283 = load i8, i8* %scevgep35.2.7, align 1
  %284 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.7 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284)
  %conv35.2.7 = zext i8 %call34.2.7 to i32
  %xor36.2.7 = xor i32 %xor.2.7, %conv35.2.7
  %conv37.2.7 = trunc i32 %xor36.2.7 to i8
  store i8 %conv37.2.7, i8* %scevgep41.2.6, align 1
  %scevgep28.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %278, i64 0, i64 0, i64 1
  %285 = bitcast i8* %scevgep28.2.7 to [16 x [16 x i8]]*
  %scevgep41.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %279, i64 0, i64 1, i64 0
  %286 = bitcast i8* %scevgep41.2.7 to [16 x [16 x i8]]*
  %call16.2.8 = call zeroext i8 (...) @rand()
  store i8 %call16.2.8, i8* %scevgep28.2.7, align 1
  %287 = load i8, i8* %scevgep28.2.7, align 1
  %conv23.2.8 = zext i8 %287 to i32
  %288 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.8 = getelementptr i8, i8* %b, i64 11
  %289 = load i8, i8* %scevgep34.2.8, align 1
  %call28.2.8 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %289)
  %conv29.2.8 = zext i8 %call28.2.8 to i32
  %xor.2.8 = xor i32 %conv23.2.8, %conv29.2.8
  %scevgep35.2.8 = getelementptr i8, i8* %a, i64 11
  %290 = load i8, i8* %scevgep35.2.8, align 1
  %291 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.8 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %291)
  %conv35.2.8 = zext i8 %call34.2.8 to i32
  %xor36.2.8 = xor i32 %xor.2.8, %conv35.2.8
  %conv37.2.8 = trunc i32 %xor36.2.8 to i8
  store i8 %conv37.2.8, i8* %scevgep41.2.7, align 1
  %scevgep28.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %285, i64 0, i64 0, i64 1
  %292 = bitcast i8* %scevgep28.2.8 to [16 x [16 x i8]]*
  %scevgep41.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %286, i64 0, i64 1, i64 0
  %293 = bitcast i8* %scevgep41.2.8 to [16 x [16 x i8]]*
  %call16.2.9 = call zeroext i8 (...) @rand()
  store i8 %call16.2.9, i8* %scevgep28.2.8, align 1
  %294 = load i8, i8* %scevgep28.2.8, align 1
  %conv23.2.9 = zext i8 %294 to i32
  %295 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.9 = getelementptr i8, i8* %b, i64 12
  %296 = load i8, i8* %scevgep34.2.9, align 1
  %call28.2.9 = call zeroext i8 @mult(i8 zeroext %295, i8 zeroext %296)
  %conv29.2.9 = zext i8 %call28.2.9 to i32
  %xor.2.9 = xor i32 %conv23.2.9, %conv29.2.9
  %scevgep35.2.9 = getelementptr i8, i8* %a, i64 12
  %297 = load i8, i8* %scevgep35.2.9, align 1
  %298 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.9 = call zeroext i8 @mult(i8 zeroext %297, i8 zeroext %298)
  %conv35.2.9 = zext i8 %call34.2.9 to i32
  %xor36.2.9 = xor i32 %xor.2.9, %conv35.2.9
  %conv37.2.9 = trunc i32 %xor36.2.9 to i8
  store i8 %conv37.2.9, i8* %scevgep41.2.8, align 1
  %scevgep28.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %292, i64 0, i64 0, i64 1
  %299 = bitcast i8* %scevgep28.2.9 to [16 x [16 x i8]]*
  %scevgep41.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %293, i64 0, i64 1, i64 0
  %300 = bitcast i8* %scevgep41.2.9 to [16 x [16 x i8]]*
  %call16.2.10 = call zeroext i8 (...) @rand()
  store i8 %call16.2.10, i8* %scevgep28.2.9, align 1
  %301 = load i8, i8* %scevgep28.2.9, align 1
  %conv23.2.10 = zext i8 %301 to i32
  %302 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.10 = getelementptr i8, i8* %b, i64 13
  %303 = load i8, i8* %scevgep34.2.10, align 1
  %call28.2.10 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303)
  %conv29.2.10 = zext i8 %call28.2.10 to i32
  %xor.2.10 = xor i32 %conv23.2.10, %conv29.2.10
  %scevgep35.2.10 = getelementptr i8, i8* %a, i64 13
  %304 = load i8, i8* %scevgep35.2.10, align 1
  %305 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.10 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305)
  %conv35.2.10 = zext i8 %call34.2.10 to i32
  %xor36.2.10 = xor i32 %xor.2.10, %conv35.2.10
  %conv37.2.10 = trunc i32 %xor36.2.10 to i8
  store i8 %conv37.2.10, i8* %scevgep41.2.9, align 1
  %scevgep28.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %299, i64 0, i64 0, i64 1
  %306 = bitcast i8* %scevgep28.2.10 to [16 x [16 x i8]]*
  %scevgep41.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %300, i64 0, i64 1, i64 0
  %307 = bitcast i8* %scevgep41.2.10 to [16 x [16 x i8]]*
  %call16.2.11 = call zeroext i8 (...) @rand()
  store i8 %call16.2.11, i8* %scevgep28.2.10, align 1
  %308 = load i8, i8* %scevgep28.2.10, align 1
  %conv23.2.11 = zext i8 %308 to i32
  %309 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.11 = getelementptr i8, i8* %b, i64 14
  %310 = load i8, i8* %scevgep34.2.11, align 1
  %call28.2.11 = call zeroext i8 @mult(i8 zeroext %309, i8 zeroext %310)
  %conv29.2.11 = zext i8 %call28.2.11 to i32
  %xor.2.11 = xor i32 %conv23.2.11, %conv29.2.11
  %scevgep35.2.11 = getelementptr i8, i8* %a, i64 14
  %311 = load i8, i8* %scevgep35.2.11, align 1
  %312 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.11 = call zeroext i8 @mult(i8 zeroext %311, i8 zeroext %312)
  %conv35.2.11 = zext i8 %call34.2.11 to i32
  %xor36.2.11 = xor i32 %xor.2.11, %conv35.2.11
  %conv37.2.11 = trunc i32 %xor36.2.11 to i8
  store i8 %conv37.2.11, i8* %scevgep41.2.10, align 1
  %scevgep28.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %306, i64 0, i64 0, i64 1
  %scevgep41.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %307, i64 0, i64 1, i64 0
  %call16.2.12 = call zeroext i8 (...) @rand()
  store i8 %call16.2.12, i8* %scevgep28.2.11, align 1
  %313 = load i8, i8* %scevgep28.2.11, align 1
  %conv23.2.12 = zext i8 %313 to i32
  %314 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.12 = getelementptr i8, i8* %b, i64 15
  %315 = load i8, i8* %scevgep34.2.12, align 1
  %call28.2.12 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315)
  %conv29.2.12 = zext i8 %call28.2.12 to i32
  %xor.2.12 = xor i32 %conv23.2.12, %conv29.2.12
  %scevgep35.2.12 = getelementptr i8, i8* %a, i64 15
  %316 = load i8, i8* %scevgep35.2.12, align 1
  %317 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.12 = call zeroext i8 @mult(i8 zeroext %316, i8 zeroext %317)
  %conv35.2.12 = zext i8 %call34.2.12 to i32
  %xor36.2.12 = xor i32 %xor.2.12, %conv35.2.12
  %conv37.2.12 = trunc i32 %xor36.2.12 to i8
  store i8 %conv37.2.12, i8* %scevgep41.2.11, align 1
  %scevgep26.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 1, i64 1
  %318 = bitcast i8* %scevgep26.2 to [16 x [16 x i8]]*
  %scevgep39.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %230, i64 0, i64 1, i64 1
  %319 = bitcast i8* %scevgep39.2 to [16 x [16 x i8]]*
  %arrayidx25.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep26.2, align 1
  %320 = load i8, i8* %scevgep26.2, align 1
  %conv23.3 = zext i8 %320 to i32
  %321 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3 = getelementptr i8, i8* %b, i64 4
  %322 = load i8, i8* %scevgep34.3, align 1
  %call28.3 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322)
  %conv29.3 = zext i8 %call28.3 to i32
  %xor.3 = xor i32 %conv23.3, %conv29.3
  %scevgep35.3 = getelementptr i8, i8* %a, i64 4
  %323 = load i8, i8* %scevgep35.3, align 1
  %324 = load i8, i8* %arrayidx33.3, align 1
  %call34.3 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %324)
  %conv35.3 = zext i8 %call34.3 to i32
  %xor36.3 = xor i32 %xor.3, %conv35.3
  %conv37.3 = trunc i32 %xor36.3 to i8
  store i8 %conv37.3, i8* %scevgep39.2, align 1
  %scevgep28.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %318, i64 0, i64 0, i64 1
  %325 = bitcast i8* %scevgep28.3 to [16 x [16 x i8]]*
  %scevgep41.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %319, i64 0, i64 1, i64 0
  %326 = bitcast i8* %scevgep41.3 to [16 x [16 x i8]]*
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep28.3, align 1
  %327 = load i8, i8* %scevgep28.3, align 1
  %conv23.3.1 = zext i8 %327 to i32
  %328 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.1 = getelementptr i8, i8* %b, i64 5
  %329 = load i8, i8* %scevgep34.3.1, align 1
  %call28.3.1 = call zeroext i8 @mult(i8 zeroext %328, i8 zeroext %329)
  %conv29.3.1 = zext i8 %call28.3.1 to i32
  %xor.3.1 = xor i32 %conv23.3.1, %conv29.3.1
  %scevgep35.3.1 = getelementptr i8, i8* %a, i64 5
  %330 = load i8, i8* %scevgep35.3.1, align 1
  %331 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.1 = call zeroext i8 @mult(i8 zeroext %330, i8 zeroext %331)
  %conv35.3.1 = zext i8 %call34.3.1 to i32
  %xor36.3.1 = xor i32 %xor.3.1, %conv35.3.1
  %conv37.3.1 = trunc i32 %xor36.3.1 to i8
  store i8 %conv37.3.1, i8* %scevgep41.3, align 1
  %scevgep28.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %325, i64 0, i64 0, i64 1
  %332 = bitcast i8* %scevgep28.3.1 to [16 x [16 x i8]]*
  %scevgep41.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %326, i64 0, i64 1, i64 0
  %333 = bitcast i8* %scevgep41.3.1 to [16 x [16 x i8]]*
  %call16.3.2 = call zeroext i8 (...) @rand()
  store i8 %call16.3.2, i8* %scevgep28.3.1, align 1
  %334 = load i8, i8* %scevgep28.3.1, align 1
  %conv23.3.2 = zext i8 %334 to i32
  %335 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.2 = getelementptr i8, i8* %b, i64 6
  %336 = load i8, i8* %scevgep34.3.2, align 1
  %call28.3.2 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336)
  %conv29.3.2 = zext i8 %call28.3.2 to i32
  %xor.3.2 = xor i32 %conv23.3.2, %conv29.3.2
  %scevgep35.3.2 = getelementptr i8, i8* %a, i64 6
  %337 = load i8, i8* %scevgep35.3.2, align 1
  %338 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.2 = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338)
  %conv35.3.2 = zext i8 %call34.3.2 to i32
  %xor36.3.2 = xor i32 %xor.3.2, %conv35.3.2
  %conv37.3.2 = trunc i32 %xor36.3.2 to i8
  store i8 %conv37.3.2, i8* %scevgep41.3.1, align 1
  %scevgep28.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %332, i64 0, i64 0, i64 1
  %339 = bitcast i8* %scevgep28.3.2 to [16 x [16 x i8]]*
  %scevgep41.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %333, i64 0, i64 1, i64 0
  %340 = bitcast i8* %scevgep41.3.2 to [16 x [16 x i8]]*
  %call16.3.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3.3, i8* %scevgep28.3.2, align 1
  %341 = load i8, i8* %scevgep28.3.2, align 1
  %conv23.3.3 = zext i8 %341 to i32
  %342 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.3 = getelementptr i8, i8* %b, i64 7
  %343 = load i8, i8* %scevgep34.3.3, align 1
  %call28.3.3 = call zeroext i8 @mult(i8 zeroext %342, i8 zeroext %343)
  %conv29.3.3 = zext i8 %call28.3.3 to i32
  %xor.3.3 = xor i32 %conv23.3.3, %conv29.3.3
  %scevgep35.3.3 = getelementptr i8, i8* %a, i64 7
  %344 = load i8, i8* %scevgep35.3.3, align 1
  %345 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.3 = call zeroext i8 @mult(i8 zeroext %344, i8 zeroext %345)
  %conv35.3.3 = zext i8 %call34.3.3 to i32
  %xor36.3.3 = xor i32 %xor.3.3, %conv35.3.3
  %conv37.3.3 = trunc i32 %xor36.3.3 to i8
  store i8 %conv37.3.3, i8* %scevgep41.3.2, align 1
  %scevgep28.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %339, i64 0, i64 0, i64 1
  %346 = bitcast i8* %scevgep28.3.3 to [16 x [16 x i8]]*
  %scevgep41.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %340, i64 0, i64 1, i64 0
  %347 = bitcast i8* %scevgep41.3.3 to [16 x [16 x i8]]*
  %call16.3.4 = call zeroext i8 (...) @rand()
  store i8 %call16.3.4, i8* %scevgep28.3.3, align 1
  %348 = load i8, i8* %scevgep28.3.3, align 1
  %conv23.3.4 = zext i8 %348 to i32
  %349 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.4 = getelementptr i8, i8* %b, i64 8
  %350 = load i8, i8* %scevgep34.3.4, align 1
  %call28.3.4 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350)
  %conv29.3.4 = zext i8 %call28.3.4 to i32
  %xor.3.4 = xor i32 %conv23.3.4, %conv29.3.4
  %scevgep35.3.4 = getelementptr i8, i8* %a, i64 8
  %351 = load i8, i8* %scevgep35.3.4, align 1
  %352 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.4 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352)
  %conv35.3.4 = zext i8 %call34.3.4 to i32
  %xor36.3.4 = xor i32 %xor.3.4, %conv35.3.4
  %conv37.3.4 = trunc i32 %xor36.3.4 to i8
  store i8 %conv37.3.4, i8* %scevgep41.3.3, align 1
  %scevgep28.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %346, i64 0, i64 0, i64 1
  %353 = bitcast i8* %scevgep28.3.4 to [16 x [16 x i8]]*
  %scevgep41.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %347, i64 0, i64 1, i64 0
  %354 = bitcast i8* %scevgep41.3.4 to [16 x [16 x i8]]*
  %call16.3.5 = call zeroext i8 (...) @rand()
  store i8 %call16.3.5, i8* %scevgep28.3.4, align 1
  %355 = load i8, i8* %scevgep28.3.4, align 1
  %conv23.3.5 = zext i8 %355 to i32
  %356 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.5 = getelementptr i8, i8* %b, i64 9
  %357 = load i8, i8* %scevgep34.3.5, align 1
  %call28.3.5 = call zeroext i8 @mult(i8 zeroext %356, i8 zeroext %357)
  %conv29.3.5 = zext i8 %call28.3.5 to i32
  %xor.3.5 = xor i32 %conv23.3.5, %conv29.3.5
  %scevgep35.3.5 = getelementptr i8, i8* %a, i64 9
  %358 = load i8, i8* %scevgep35.3.5, align 1
  %359 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.5 = call zeroext i8 @mult(i8 zeroext %358, i8 zeroext %359)
  %conv35.3.5 = zext i8 %call34.3.5 to i32
  %xor36.3.5 = xor i32 %xor.3.5, %conv35.3.5
  %conv37.3.5 = trunc i32 %xor36.3.5 to i8
  store i8 %conv37.3.5, i8* %scevgep41.3.4, align 1
  %scevgep28.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %353, i64 0, i64 0, i64 1
  %360 = bitcast i8* %scevgep28.3.5 to [16 x [16 x i8]]*
  %scevgep41.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %354, i64 0, i64 1, i64 0
  %361 = bitcast i8* %scevgep41.3.5 to [16 x [16 x i8]]*
  %call16.3.6 = call zeroext i8 (...) @rand()
  store i8 %call16.3.6, i8* %scevgep28.3.5, align 1
  %362 = load i8, i8* %scevgep28.3.5, align 1
  %conv23.3.6 = zext i8 %362 to i32
  %363 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.6 = getelementptr i8, i8* %b, i64 10
  %364 = load i8, i8* %scevgep34.3.6, align 1
  %call28.3.6 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364)
  %conv29.3.6 = zext i8 %call28.3.6 to i32
  %xor.3.6 = xor i32 %conv23.3.6, %conv29.3.6
  %scevgep35.3.6 = getelementptr i8, i8* %a, i64 10
  %365 = load i8, i8* %scevgep35.3.6, align 1
  %366 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.6 = call zeroext i8 @mult(i8 zeroext %365, i8 zeroext %366)
  %conv35.3.6 = zext i8 %call34.3.6 to i32
  %xor36.3.6 = xor i32 %xor.3.6, %conv35.3.6
  %conv37.3.6 = trunc i32 %xor36.3.6 to i8
  store i8 %conv37.3.6, i8* %scevgep41.3.5, align 1
  %scevgep28.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %360, i64 0, i64 0, i64 1
  %367 = bitcast i8* %scevgep28.3.6 to [16 x [16 x i8]]*
  %scevgep41.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 1, i64 0
  %368 = bitcast i8* %scevgep41.3.6 to [16 x [16 x i8]]*
  %call16.3.7 = call zeroext i8 (...) @rand()
  store i8 %call16.3.7, i8* %scevgep28.3.6, align 1
  %369 = load i8, i8* %scevgep28.3.6, align 1
  %conv23.3.7 = zext i8 %369 to i32
  %370 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.7 = getelementptr i8, i8* %b, i64 11
  %371 = load i8, i8* %scevgep34.3.7, align 1
  %call28.3.7 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371)
  %conv29.3.7 = zext i8 %call28.3.7 to i32
  %xor.3.7 = xor i32 %conv23.3.7, %conv29.3.7
  %scevgep35.3.7 = getelementptr i8, i8* %a, i64 11
  %372 = load i8, i8* %scevgep35.3.7, align 1
  %373 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.7 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373)
  %conv35.3.7 = zext i8 %call34.3.7 to i32
  %xor36.3.7 = xor i32 %xor.3.7, %conv35.3.7
  %conv37.3.7 = trunc i32 %xor36.3.7 to i8
  store i8 %conv37.3.7, i8* %scevgep41.3.6, align 1
  %scevgep28.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %367, i64 0, i64 0, i64 1
  %374 = bitcast i8* %scevgep28.3.7 to [16 x [16 x i8]]*
  %scevgep41.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %368, i64 0, i64 1, i64 0
  %375 = bitcast i8* %scevgep41.3.7 to [16 x [16 x i8]]*
  %call16.3.8 = call zeroext i8 (...) @rand()
  store i8 %call16.3.8, i8* %scevgep28.3.7, align 1
  %376 = load i8, i8* %scevgep28.3.7, align 1
  %conv23.3.8 = zext i8 %376 to i32
  %377 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.8 = getelementptr i8, i8* %b, i64 12
  %378 = load i8, i8* %scevgep34.3.8, align 1
  %call28.3.8 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378)
  %conv29.3.8 = zext i8 %call28.3.8 to i32
  %xor.3.8 = xor i32 %conv23.3.8, %conv29.3.8
  %scevgep35.3.8 = getelementptr i8, i8* %a, i64 12
  %379 = load i8, i8* %scevgep35.3.8, align 1
  %380 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.8 = call zeroext i8 @mult(i8 zeroext %379, i8 zeroext %380)
  %conv35.3.8 = zext i8 %call34.3.8 to i32
  %xor36.3.8 = xor i32 %xor.3.8, %conv35.3.8
  %conv37.3.8 = trunc i32 %xor36.3.8 to i8
  store i8 %conv37.3.8, i8* %scevgep41.3.7, align 1
  %scevgep28.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %374, i64 0, i64 0, i64 1
  %381 = bitcast i8* %scevgep28.3.8 to [16 x [16 x i8]]*
  %scevgep41.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %375, i64 0, i64 1, i64 0
  %382 = bitcast i8* %scevgep41.3.8 to [16 x [16 x i8]]*
  %call16.3.9 = call zeroext i8 (...) @rand()
  store i8 %call16.3.9, i8* %scevgep28.3.8, align 1
  %383 = load i8, i8* %scevgep28.3.8, align 1
  %conv23.3.9 = zext i8 %383 to i32
  %384 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.9 = getelementptr i8, i8* %b, i64 13
  %385 = load i8, i8* %scevgep34.3.9, align 1
  %call28.3.9 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %385)
  %conv29.3.9 = zext i8 %call28.3.9 to i32
  %xor.3.9 = xor i32 %conv23.3.9, %conv29.3.9
  %scevgep35.3.9 = getelementptr i8, i8* %a, i64 13
  %386 = load i8, i8* %scevgep35.3.9, align 1
  %387 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.9 = call zeroext i8 @mult(i8 zeroext %386, i8 zeroext %387)
  %conv35.3.9 = zext i8 %call34.3.9 to i32
  %xor36.3.9 = xor i32 %xor.3.9, %conv35.3.9
  %conv37.3.9 = trunc i32 %xor36.3.9 to i8
  store i8 %conv37.3.9, i8* %scevgep41.3.8, align 1
  %scevgep28.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %381, i64 0, i64 0, i64 1
  %388 = bitcast i8* %scevgep28.3.9 to [16 x [16 x i8]]*
  %scevgep41.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %382, i64 0, i64 1, i64 0
  %389 = bitcast i8* %scevgep41.3.9 to [16 x [16 x i8]]*
  %call16.3.10 = call zeroext i8 (...) @rand()
  store i8 %call16.3.10, i8* %scevgep28.3.9, align 1
  %390 = load i8, i8* %scevgep28.3.9, align 1
  %conv23.3.10 = zext i8 %390 to i32
  %391 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.10 = getelementptr i8, i8* %b, i64 14
  %392 = load i8, i8* %scevgep34.3.10, align 1
  %call28.3.10 = call zeroext i8 @mult(i8 zeroext %391, i8 zeroext %392)
  %conv29.3.10 = zext i8 %call28.3.10 to i32
  %xor.3.10 = xor i32 %conv23.3.10, %conv29.3.10
  %scevgep35.3.10 = getelementptr i8, i8* %a, i64 14
  %393 = load i8, i8* %scevgep35.3.10, align 1
  %394 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.10 = call zeroext i8 @mult(i8 zeroext %393, i8 zeroext %394)
  %conv35.3.10 = zext i8 %call34.3.10 to i32
  %xor36.3.10 = xor i32 %xor.3.10, %conv35.3.10
  %conv37.3.10 = trunc i32 %xor36.3.10 to i8
  store i8 %conv37.3.10, i8* %scevgep41.3.9, align 1
  %scevgep28.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %388, i64 0, i64 0, i64 1
  %scevgep41.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %389, i64 0, i64 1, i64 0
  %call16.3.11 = call zeroext i8 (...) @rand()
  store i8 %call16.3.11, i8* %scevgep28.3.10, align 1
  %395 = load i8, i8* %scevgep28.3.10, align 1
  %conv23.3.11 = zext i8 %395 to i32
  %396 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.11 = getelementptr i8, i8* %b, i64 15
  %397 = load i8, i8* %scevgep34.3.11, align 1
  %call28.3.11 = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %397)
  %conv29.3.11 = zext i8 %call28.3.11 to i32
  %xor.3.11 = xor i32 %conv23.3.11, %conv29.3.11
  %scevgep35.3.11 = getelementptr i8, i8* %a, i64 15
  %398 = load i8, i8* %scevgep35.3.11, align 1
  %399 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.11 = call zeroext i8 @mult(i8 zeroext %398, i8 zeroext %399)
  %conv35.3.11 = zext i8 %call34.3.11 to i32
  %xor36.3.11 = xor i32 %xor.3.11, %conv35.3.11
  %conv37.3.11 = trunc i32 %xor36.3.11 to i8
  store i8 %conv37.3.11, i8* %scevgep41.3.10, align 1
  %scevgep26.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %318, i64 0, i64 1, i64 1
  %400 = bitcast i8* %scevgep26.3 to [16 x [16 x i8]]*
  %scevgep39.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %319, i64 0, i64 1, i64 1
  %401 = bitcast i8* %scevgep39.3 to [16 x [16 x i8]]*
  %arrayidx25.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx33.4 = getelementptr inbounds i8, i8* %b, i64 4
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep26.3, align 1
  %402 = load i8, i8* %scevgep26.3, align 1
  %conv23.4 = zext i8 %402 to i32
  %403 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4 = getelementptr i8, i8* %b, i64 5
  %404 = load i8, i8* %scevgep34.4, align 1
  %call28.4 = call zeroext i8 @mult(i8 zeroext %403, i8 zeroext %404)
  %conv29.4 = zext i8 %call28.4 to i32
  %xor.4 = xor i32 %conv23.4, %conv29.4
  %scevgep35.4 = getelementptr i8, i8* %a, i64 5
  %405 = load i8, i8* %scevgep35.4, align 1
  %406 = load i8, i8* %arrayidx33.4, align 1
  %call34.4 = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406)
  %conv35.4 = zext i8 %call34.4 to i32
  %xor36.4 = xor i32 %xor.4, %conv35.4
  %conv37.4 = trunc i32 %xor36.4 to i8
  store i8 %conv37.4, i8* %scevgep39.3, align 1
  %scevgep28.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %400, i64 0, i64 0, i64 1
  %407 = bitcast i8* %scevgep28.4 to [16 x [16 x i8]]*
  %scevgep41.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %401, i64 0, i64 1, i64 0
  %408 = bitcast i8* %scevgep41.4 to [16 x [16 x i8]]*
  %call16.4.1 = call zeroext i8 (...) @rand()
  store i8 %call16.4.1, i8* %scevgep28.4, align 1
  %409 = load i8, i8* %scevgep28.4, align 1
  %conv23.4.1 = zext i8 %409 to i32
  %410 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.1 = getelementptr i8, i8* %b, i64 6
  %411 = load i8, i8* %scevgep34.4.1, align 1
  %call28.4.1 = call zeroext i8 @mult(i8 zeroext %410, i8 zeroext %411)
  %conv29.4.1 = zext i8 %call28.4.1 to i32
  %xor.4.1 = xor i32 %conv23.4.1, %conv29.4.1
  %scevgep35.4.1 = getelementptr i8, i8* %a, i64 6
  %412 = load i8, i8* %scevgep35.4.1, align 1
  %413 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.1 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413)
  %conv35.4.1 = zext i8 %call34.4.1 to i32
  %xor36.4.1 = xor i32 %xor.4.1, %conv35.4.1
  %conv37.4.1 = trunc i32 %xor36.4.1 to i8
  store i8 %conv37.4.1, i8* %scevgep41.4, align 1
  %scevgep28.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %407, i64 0, i64 0, i64 1
  %414 = bitcast i8* %scevgep28.4.1 to [16 x [16 x i8]]*
  %scevgep41.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %408, i64 0, i64 1, i64 0
  %415 = bitcast i8* %scevgep41.4.1 to [16 x [16 x i8]]*
  %call16.4.2 = call zeroext i8 (...) @rand()
  store i8 %call16.4.2, i8* %scevgep28.4.1, align 1
  %416 = load i8, i8* %scevgep28.4.1, align 1
  %conv23.4.2 = zext i8 %416 to i32
  %417 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.2 = getelementptr i8, i8* %b, i64 7
  %418 = load i8, i8* %scevgep34.4.2, align 1
  %call28.4.2 = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418)
  %conv29.4.2 = zext i8 %call28.4.2 to i32
  %xor.4.2 = xor i32 %conv23.4.2, %conv29.4.2
  %scevgep35.4.2 = getelementptr i8, i8* %a, i64 7
  %419 = load i8, i8* %scevgep35.4.2, align 1
  %420 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.2 = call zeroext i8 @mult(i8 zeroext %419, i8 zeroext %420)
  %conv35.4.2 = zext i8 %call34.4.2 to i32
  %xor36.4.2 = xor i32 %xor.4.2, %conv35.4.2
  %conv37.4.2 = trunc i32 %xor36.4.2 to i8
  store i8 %conv37.4.2, i8* %scevgep41.4.1, align 1
  %scevgep28.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %414, i64 0, i64 0, i64 1
  %421 = bitcast i8* %scevgep28.4.2 to [16 x [16 x i8]]*
  %scevgep41.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %415, i64 0, i64 1, i64 0
  %422 = bitcast i8* %scevgep41.4.2 to [16 x [16 x i8]]*
  %call16.4.3 = call zeroext i8 (...) @rand()
  store i8 %call16.4.3, i8* %scevgep28.4.2, align 1
  %423 = load i8, i8* %scevgep28.4.2, align 1
  %conv23.4.3 = zext i8 %423 to i32
  %424 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.3 = getelementptr i8, i8* %b, i64 8
  %425 = load i8, i8* %scevgep34.4.3, align 1
  %call28.4.3 = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425)
  %conv29.4.3 = zext i8 %call28.4.3 to i32
  %xor.4.3 = xor i32 %conv23.4.3, %conv29.4.3
  %scevgep35.4.3 = getelementptr i8, i8* %a, i64 8
  %426 = load i8, i8* %scevgep35.4.3, align 1
  %427 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.3 = call zeroext i8 @mult(i8 zeroext %426, i8 zeroext %427)
  %conv35.4.3 = zext i8 %call34.4.3 to i32
  %xor36.4.3 = xor i32 %xor.4.3, %conv35.4.3
  %conv37.4.3 = trunc i32 %xor36.4.3 to i8
  store i8 %conv37.4.3, i8* %scevgep41.4.2, align 1
  %scevgep28.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %421, i64 0, i64 0, i64 1
  %428 = bitcast i8* %scevgep28.4.3 to [16 x [16 x i8]]*
  %scevgep41.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %422, i64 0, i64 1, i64 0
  %429 = bitcast i8* %scevgep41.4.3 to [16 x [16 x i8]]*
  %call16.4.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4.4, i8* %scevgep28.4.3, align 1
  %430 = load i8, i8* %scevgep28.4.3, align 1
  %conv23.4.4 = zext i8 %430 to i32
  %431 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.4 = getelementptr i8, i8* %b, i64 9
  %432 = load i8, i8* %scevgep34.4.4, align 1
  %call28.4.4 = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432)
  %conv29.4.4 = zext i8 %call28.4.4 to i32
  %xor.4.4 = xor i32 %conv23.4.4, %conv29.4.4
  %scevgep35.4.4 = getelementptr i8, i8* %a, i64 9
  %433 = load i8, i8* %scevgep35.4.4, align 1
  %434 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.4 = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434)
  %conv35.4.4 = zext i8 %call34.4.4 to i32
  %xor36.4.4 = xor i32 %xor.4.4, %conv35.4.4
  %conv37.4.4 = trunc i32 %xor36.4.4 to i8
  store i8 %conv37.4.4, i8* %scevgep41.4.3, align 1
  %scevgep28.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %428, i64 0, i64 0, i64 1
  %435 = bitcast i8* %scevgep28.4.4 to [16 x [16 x i8]]*
  %scevgep41.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %429, i64 0, i64 1, i64 0
  %436 = bitcast i8* %scevgep41.4.4 to [16 x [16 x i8]]*
  %call16.4.5 = call zeroext i8 (...) @rand()
  store i8 %call16.4.5, i8* %scevgep28.4.4, align 1
  %437 = load i8, i8* %scevgep28.4.4, align 1
  %conv23.4.5 = zext i8 %437 to i32
  %438 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.5 = getelementptr i8, i8* %b, i64 10
  %439 = load i8, i8* %scevgep34.4.5, align 1
  %call28.4.5 = call zeroext i8 @mult(i8 zeroext %438, i8 zeroext %439)
  %conv29.4.5 = zext i8 %call28.4.5 to i32
  %xor.4.5 = xor i32 %conv23.4.5, %conv29.4.5
  %scevgep35.4.5 = getelementptr i8, i8* %a, i64 10
  %440 = load i8, i8* %scevgep35.4.5, align 1
  %441 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.5 = call zeroext i8 @mult(i8 zeroext %440, i8 zeroext %441)
  %conv35.4.5 = zext i8 %call34.4.5 to i32
  %xor36.4.5 = xor i32 %xor.4.5, %conv35.4.5
  %conv37.4.5 = trunc i32 %xor36.4.5 to i8
  store i8 %conv37.4.5, i8* %scevgep41.4.4, align 1
  %scevgep28.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %435, i64 0, i64 0, i64 1
  %442 = bitcast i8* %scevgep28.4.5 to [16 x [16 x i8]]*
  %scevgep41.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %436, i64 0, i64 1, i64 0
  %443 = bitcast i8* %scevgep41.4.5 to [16 x [16 x i8]]*
  %call16.4.6 = call zeroext i8 (...) @rand()
  store i8 %call16.4.6, i8* %scevgep28.4.5, align 1
  %444 = load i8, i8* %scevgep28.4.5, align 1
  %conv23.4.6 = zext i8 %444 to i32
  %445 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.6 = getelementptr i8, i8* %b, i64 11
  %446 = load i8, i8* %scevgep34.4.6, align 1
  %call28.4.6 = call zeroext i8 @mult(i8 zeroext %445, i8 zeroext %446)
  %conv29.4.6 = zext i8 %call28.4.6 to i32
  %xor.4.6 = xor i32 %conv23.4.6, %conv29.4.6
  %scevgep35.4.6 = getelementptr i8, i8* %a, i64 11
  %447 = load i8, i8* %scevgep35.4.6, align 1
  %448 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.6 = call zeroext i8 @mult(i8 zeroext %447, i8 zeroext %448)
  %conv35.4.6 = zext i8 %call34.4.6 to i32
  %xor36.4.6 = xor i32 %xor.4.6, %conv35.4.6
  %conv37.4.6 = trunc i32 %xor36.4.6 to i8
  store i8 %conv37.4.6, i8* %scevgep41.4.5, align 1
  %scevgep28.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %442, i64 0, i64 0, i64 1
  %449 = bitcast i8* %scevgep28.4.6 to [16 x [16 x i8]]*
  %scevgep41.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %443, i64 0, i64 1, i64 0
  %450 = bitcast i8* %scevgep41.4.6 to [16 x [16 x i8]]*
  %call16.4.7 = call zeroext i8 (...) @rand()
  store i8 %call16.4.7, i8* %scevgep28.4.6, align 1
  %451 = load i8, i8* %scevgep28.4.6, align 1
  %conv23.4.7 = zext i8 %451 to i32
  %452 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.7 = getelementptr i8, i8* %b, i64 12
  %453 = load i8, i8* %scevgep34.4.7, align 1
  %call28.4.7 = call zeroext i8 @mult(i8 zeroext %452, i8 zeroext %453)
  %conv29.4.7 = zext i8 %call28.4.7 to i32
  %xor.4.7 = xor i32 %conv23.4.7, %conv29.4.7
  %scevgep35.4.7 = getelementptr i8, i8* %a, i64 12
  %454 = load i8, i8* %scevgep35.4.7, align 1
  %455 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.7 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455)
  %conv35.4.7 = zext i8 %call34.4.7 to i32
  %xor36.4.7 = xor i32 %xor.4.7, %conv35.4.7
  %conv37.4.7 = trunc i32 %xor36.4.7 to i8
  store i8 %conv37.4.7, i8* %scevgep41.4.6, align 1
  %scevgep28.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %449, i64 0, i64 0, i64 1
  %456 = bitcast i8* %scevgep28.4.7 to [16 x [16 x i8]]*
  %scevgep41.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %450, i64 0, i64 1, i64 0
  %457 = bitcast i8* %scevgep41.4.7 to [16 x [16 x i8]]*
  %call16.4.8 = call zeroext i8 (...) @rand()
  store i8 %call16.4.8, i8* %scevgep28.4.7, align 1
  %458 = load i8, i8* %scevgep28.4.7, align 1
  %conv23.4.8 = zext i8 %458 to i32
  %459 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.8 = getelementptr i8, i8* %b, i64 13
  %460 = load i8, i8* %scevgep34.4.8, align 1
  %call28.4.8 = call zeroext i8 @mult(i8 zeroext %459, i8 zeroext %460)
  %conv29.4.8 = zext i8 %call28.4.8 to i32
  %xor.4.8 = xor i32 %conv23.4.8, %conv29.4.8
  %scevgep35.4.8 = getelementptr i8, i8* %a, i64 13
  %461 = load i8, i8* %scevgep35.4.8, align 1
  %462 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.8 = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462)
  %conv35.4.8 = zext i8 %call34.4.8 to i32
  %xor36.4.8 = xor i32 %xor.4.8, %conv35.4.8
  %conv37.4.8 = trunc i32 %xor36.4.8 to i8
  store i8 %conv37.4.8, i8* %scevgep41.4.7, align 1
  %scevgep28.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %456, i64 0, i64 0, i64 1
  %463 = bitcast i8* %scevgep28.4.8 to [16 x [16 x i8]]*
  %scevgep41.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %457, i64 0, i64 1, i64 0
  %464 = bitcast i8* %scevgep41.4.8 to [16 x [16 x i8]]*
  %call16.4.9 = call zeroext i8 (...) @rand()
  store i8 %call16.4.9, i8* %scevgep28.4.8, align 1
  %465 = load i8, i8* %scevgep28.4.8, align 1
  %conv23.4.9 = zext i8 %465 to i32
  %466 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.9 = getelementptr i8, i8* %b, i64 14
  %467 = load i8, i8* %scevgep34.4.9, align 1
  %call28.4.9 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467)
  %conv29.4.9 = zext i8 %call28.4.9 to i32
  %xor.4.9 = xor i32 %conv23.4.9, %conv29.4.9
  %scevgep35.4.9 = getelementptr i8, i8* %a, i64 14
  %468 = load i8, i8* %scevgep35.4.9, align 1
  %469 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.9 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %469)
  %conv35.4.9 = zext i8 %call34.4.9 to i32
  %xor36.4.9 = xor i32 %xor.4.9, %conv35.4.9
  %conv37.4.9 = trunc i32 %xor36.4.9 to i8
  store i8 %conv37.4.9, i8* %scevgep41.4.8, align 1
  %scevgep28.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %463, i64 0, i64 0, i64 1
  %scevgep41.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %464, i64 0, i64 1, i64 0
  %call16.4.10 = call zeroext i8 (...) @rand()
  store i8 %call16.4.10, i8* %scevgep28.4.9, align 1
  %470 = load i8, i8* %scevgep28.4.9, align 1
  %conv23.4.10 = zext i8 %470 to i32
  %471 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.10 = getelementptr i8, i8* %b, i64 15
  %472 = load i8, i8* %scevgep34.4.10, align 1
  %call28.4.10 = call zeroext i8 @mult(i8 zeroext %471, i8 zeroext %472)
  %conv29.4.10 = zext i8 %call28.4.10 to i32
  %xor.4.10 = xor i32 %conv23.4.10, %conv29.4.10
  %scevgep35.4.10 = getelementptr i8, i8* %a, i64 15
  %473 = load i8, i8* %scevgep35.4.10, align 1
  %474 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.10 = call zeroext i8 @mult(i8 zeroext %473, i8 zeroext %474)
  %conv35.4.10 = zext i8 %call34.4.10 to i32
  %xor36.4.10 = xor i32 %xor.4.10, %conv35.4.10
  %conv37.4.10 = trunc i32 %xor36.4.10 to i8
  store i8 %conv37.4.10, i8* %scevgep41.4.9, align 1
  %scevgep26.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %400, i64 0, i64 1, i64 1
  %475 = bitcast i8* %scevgep26.4 to [16 x [16 x i8]]*
  %scevgep39.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %401, i64 0, i64 1, i64 1
  %476 = bitcast i8* %scevgep39.4 to [16 x [16 x i8]]*
  %arrayidx25.5 = getelementptr inbounds i8, i8* %a, i64 5
  %arrayidx33.5 = getelementptr inbounds i8, i8* %b, i64 5
  %call16.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5, i8* %scevgep26.4, align 1
  %477 = load i8, i8* %scevgep26.4, align 1
  %conv23.5 = zext i8 %477 to i32
  %478 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5 = getelementptr i8, i8* %b, i64 6
  %479 = load i8, i8* %scevgep34.5, align 1
  %call28.5 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479)
  %conv29.5 = zext i8 %call28.5 to i32
  %xor.5 = xor i32 %conv23.5, %conv29.5
  %scevgep35.5 = getelementptr i8, i8* %a, i64 6
  %480 = load i8, i8* %scevgep35.5, align 1
  %481 = load i8, i8* %arrayidx33.5, align 1
  %call34.5 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481)
  %conv35.5 = zext i8 %call34.5 to i32
  %xor36.5 = xor i32 %xor.5, %conv35.5
  %conv37.5 = trunc i32 %xor36.5 to i8
  store i8 %conv37.5, i8* %scevgep39.4, align 1
  %scevgep28.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %475, i64 0, i64 0, i64 1
  %482 = bitcast i8* %scevgep28.5 to [16 x [16 x i8]]*
  %scevgep41.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %476, i64 0, i64 1, i64 0
  %483 = bitcast i8* %scevgep41.5 to [16 x [16 x i8]]*
  %call16.5.1 = call zeroext i8 (...) @rand()
  store i8 %call16.5.1, i8* %scevgep28.5, align 1
  %484 = load i8, i8* %scevgep28.5, align 1
  %conv23.5.1 = zext i8 %484 to i32
  %485 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.1 = getelementptr i8, i8* %b, i64 7
  %486 = load i8, i8* %scevgep34.5.1, align 1
  %call28.5.1 = call zeroext i8 @mult(i8 zeroext %485, i8 zeroext %486)
  %conv29.5.1 = zext i8 %call28.5.1 to i32
  %xor.5.1 = xor i32 %conv23.5.1, %conv29.5.1
  %scevgep35.5.1 = getelementptr i8, i8* %a, i64 7
  %487 = load i8, i8* %scevgep35.5.1, align 1
  %488 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.1 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488)
  %conv35.5.1 = zext i8 %call34.5.1 to i32
  %xor36.5.1 = xor i32 %xor.5.1, %conv35.5.1
  %conv37.5.1 = trunc i32 %xor36.5.1 to i8
  store i8 %conv37.5.1, i8* %scevgep41.5, align 1
  %scevgep28.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %482, i64 0, i64 0, i64 1
  %489 = bitcast i8* %scevgep28.5.1 to [16 x [16 x i8]]*
  %scevgep41.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %483, i64 0, i64 1, i64 0
  %490 = bitcast i8* %scevgep41.5.1 to [16 x [16 x i8]]*
  %call16.5.2 = call zeroext i8 (...) @rand()
  store i8 %call16.5.2, i8* %scevgep28.5.1, align 1
  %491 = load i8, i8* %scevgep28.5.1, align 1
  %conv23.5.2 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.2 = getelementptr i8, i8* %b, i64 8
  %493 = load i8, i8* %scevgep34.5.2, align 1
  %call28.5.2 = call zeroext i8 @mult(i8 zeroext %492, i8 zeroext %493)
  %conv29.5.2 = zext i8 %call28.5.2 to i32
  %xor.5.2 = xor i32 %conv23.5.2, %conv29.5.2
  %scevgep35.5.2 = getelementptr i8, i8* %a, i64 8
  %494 = load i8, i8* %scevgep35.5.2, align 1
  %495 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.2 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495)
  %conv35.5.2 = zext i8 %call34.5.2 to i32
  %xor36.5.2 = xor i32 %xor.5.2, %conv35.5.2
  %conv37.5.2 = trunc i32 %xor36.5.2 to i8
  store i8 %conv37.5.2, i8* %scevgep41.5.1, align 1
  %scevgep28.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %489, i64 0, i64 0, i64 1
  %496 = bitcast i8* %scevgep28.5.2 to [16 x [16 x i8]]*
  %scevgep41.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %490, i64 0, i64 1, i64 0
  %497 = bitcast i8* %scevgep41.5.2 to [16 x [16 x i8]]*
  %call16.5.3 = call zeroext i8 (...) @rand()
  store i8 %call16.5.3, i8* %scevgep28.5.2, align 1
  %498 = load i8, i8* %scevgep28.5.2, align 1
  %conv23.5.3 = zext i8 %498 to i32
  %499 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.3 = getelementptr i8, i8* %b, i64 9
  %500 = load i8, i8* %scevgep34.5.3, align 1
  %call28.5.3 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500)
  %conv29.5.3 = zext i8 %call28.5.3 to i32
  %xor.5.3 = xor i32 %conv23.5.3, %conv29.5.3
  %scevgep35.5.3 = getelementptr i8, i8* %a, i64 9
  %501 = load i8, i8* %scevgep35.5.3, align 1
  %502 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.3 = call zeroext i8 @mult(i8 zeroext %501, i8 zeroext %502)
  %conv35.5.3 = zext i8 %call34.5.3 to i32
  %xor36.5.3 = xor i32 %xor.5.3, %conv35.5.3
  %conv37.5.3 = trunc i32 %xor36.5.3 to i8
  store i8 %conv37.5.3, i8* %scevgep41.5.2, align 1
  %scevgep28.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %496, i64 0, i64 0, i64 1
  %503 = bitcast i8* %scevgep28.5.3 to [16 x [16 x i8]]*
  %scevgep41.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %497, i64 0, i64 1, i64 0
  %504 = bitcast i8* %scevgep41.5.3 to [16 x [16 x i8]]*
  %call16.5.4 = call zeroext i8 (...) @rand()
  store i8 %call16.5.4, i8* %scevgep28.5.3, align 1
  %505 = load i8, i8* %scevgep28.5.3, align 1
  %conv23.5.4 = zext i8 %505 to i32
  %506 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.4 = getelementptr i8, i8* %b, i64 10
  %507 = load i8, i8* %scevgep34.5.4, align 1
  %call28.5.4 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507)
  %conv29.5.4 = zext i8 %call28.5.4 to i32
  %xor.5.4 = xor i32 %conv23.5.4, %conv29.5.4
  %scevgep35.5.4 = getelementptr i8, i8* %a, i64 10
  %508 = load i8, i8* %scevgep35.5.4, align 1
  %509 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.4 = call zeroext i8 @mult(i8 zeroext %508, i8 zeroext %509)
  %conv35.5.4 = zext i8 %call34.5.4 to i32
  %xor36.5.4 = xor i32 %xor.5.4, %conv35.5.4
  %conv37.5.4 = trunc i32 %xor36.5.4 to i8
  store i8 %conv37.5.4, i8* %scevgep41.5.3, align 1
  %scevgep28.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %503, i64 0, i64 0, i64 1
  %510 = bitcast i8* %scevgep28.5.4 to [16 x [16 x i8]]*
  %scevgep41.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %504, i64 0, i64 1, i64 0
  %511 = bitcast i8* %scevgep41.5.4 to [16 x [16 x i8]]*
  %call16.5.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5.5, i8* %scevgep28.5.4, align 1
  %512 = load i8, i8* %scevgep28.5.4, align 1
  %conv23.5.5 = zext i8 %512 to i32
  %513 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.5 = getelementptr i8, i8* %b, i64 11
  %514 = load i8, i8* %scevgep34.5.5, align 1
  %call28.5.5 = call zeroext i8 @mult(i8 zeroext %513, i8 zeroext %514)
  %conv29.5.5 = zext i8 %call28.5.5 to i32
  %xor.5.5 = xor i32 %conv23.5.5, %conv29.5.5
  %scevgep35.5.5 = getelementptr i8, i8* %a, i64 11
  %515 = load i8, i8* %scevgep35.5.5, align 1
  %516 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.5 = call zeroext i8 @mult(i8 zeroext %515, i8 zeroext %516)
  %conv35.5.5 = zext i8 %call34.5.5 to i32
  %xor36.5.5 = xor i32 %xor.5.5, %conv35.5.5
  %conv37.5.5 = trunc i32 %xor36.5.5 to i8
  store i8 %conv37.5.5, i8* %scevgep41.5.4, align 1
  %scevgep28.5.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %510, i64 0, i64 0, i64 1
  %517 = bitcast i8* %scevgep28.5.5 to [16 x [16 x i8]]*
  %scevgep41.5.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %511, i64 0, i64 1, i64 0
  %518 = bitcast i8* %scevgep41.5.5 to [16 x [16 x i8]]*
  %call16.5.6 = call zeroext i8 (...) @rand()
  store i8 %call16.5.6, i8* %scevgep28.5.5, align 1
  %519 = load i8, i8* %scevgep28.5.5, align 1
  %conv23.5.6 = zext i8 %519 to i32
  %520 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.6 = getelementptr i8, i8* %b, i64 12
  %521 = load i8, i8* %scevgep34.5.6, align 1
  %call28.5.6 = call zeroext i8 @mult(i8 zeroext %520, i8 zeroext %521)
  %conv29.5.6 = zext i8 %call28.5.6 to i32
  %xor.5.6 = xor i32 %conv23.5.6, %conv29.5.6
  %scevgep35.5.6 = getelementptr i8, i8* %a, i64 12
  %522 = load i8, i8* %scevgep35.5.6, align 1
  %523 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.6 = call zeroext i8 @mult(i8 zeroext %522, i8 zeroext %523)
  %conv35.5.6 = zext i8 %call34.5.6 to i32
  %xor36.5.6 = xor i32 %xor.5.6, %conv35.5.6
  %conv37.5.6 = trunc i32 %xor36.5.6 to i8
  store i8 %conv37.5.6, i8* %scevgep41.5.5, align 1
  %scevgep28.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %517, i64 0, i64 0, i64 1
  %524 = bitcast i8* %scevgep28.5.6 to [16 x [16 x i8]]*
  %scevgep41.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %518, i64 0, i64 1, i64 0
  %525 = bitcast i8* %scevgep41.5.6 to [16 x [16 x i8]]*
  %call16.5.7 = call zeroext i8 (...) @rand()
  store i8 %call16.5.7, i8* %scevgep28.5.6, align 1
  %526 = load i8, i8* %scevgep28.5.6, align 1
  %conv23.5.7 = zext i8 %526 to i32
  %527 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.7 = getelementptr i8, i8* %b, i64 13
  %528 = load i8, i8* %scevgep34.5.7, align 1
  %call28.5.7 = call zeroext i8 @mult(i8 zeroext %527, i8 zeroext %528)
  %conv29.5.7 = zext i8 %call28.5.7 to i32
  %xor.5.7 = xor i32 %conv23.5.7, %conv29.5.7
  %scevgep35.5.7 = getelementptr i8, i8* %a, i64 13
  %529 = load i8, i8* %scevgep35.5.7, align 1
  %530 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.7 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530)
  %conv35.5.7 = zext i8 %call34.5.7 to i32
  %xor36.5.7 = xor i32 %xor.5.7, %conv35.5.7
  %conv37.5.7 = trunc i32 %xor36.5.7 to i8
  store i8 %conv37.5.7, i8* %scevgep41.5.6, align 1
  %scevgep28.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %524, i64 0, i64 0, i64 1
  %531 = bitcast i8* %scevgep28.5.7 to [16 x [16 x i8]]*
  %scevgep41.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %525, i64 0, i64 1, i64 0
  %532 = bitcast i8* %scevgep41.5.7 to [16 x [16 x i8]]*
  %call16.5.8 = call zeroext i8 (...) @rand()
  store i8 %call16.5.8, i8* %scevgep28.5.7, align 1
  %533 = load i8, i8* %scevgep28.5.7, align 1
  %conv23.5.8 = zext i8 %533 to i32
  %534 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.8 = getelementptr i8, i8* %b, i64 14
  %535 = load i8, i8* %scevgep34.5.8, align 1
  %call28.5.8 = call zeroext i8 @mult(i8 zeroext %534, i8 zeroext %535)
  %conv29.5.8 = zext i8 %call28.5.8 to i32
  %xor.5.8 = xor i32 %conv23.5.8, %conv29.5.8
  %scevgep35.5.8 = getelementptr i8, i8* %a, i64 14
  %536 = load i8, i8* %scevgep35.5.8, align 1
  %537 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.8 = call zeroext i8 @mult(i8 zeroext %536, i8 zeroext %537)
  %conv35.5.8 = zext i8 %call34.5.8 to i32
  %xor36.5.8 = xor i32 %xor.5.8, %conv35.5.8
  %conv37.5.8 = trunc i32 %xor36.5.8 to i8
  store i8 %conv37.5.8, i8* %scevgep41.5.7, align 1
  %scevgep28.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %531, i64 0, i64 0, i64 1
  %scevgep41.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %532, i64 0, i64 1, i64 0
  %call16.5.9 = call zeroext i8 (...) @rand()
  store i8 %call16.5.9, i8* %scevgep28.5.8, align 1
  %538 = load i8, i8* %scevgep28.5.8, align 1
  %conv23.5.9 = zext i8 %538 to i32
  %539 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.9 = getelementptr i8, i8* %b, i64 15
  %540 = load i8, i8* %scevgep34.5.9, align 1
  %call28.5.9 = call zeroext i8 @mult(i8 zeroext %539, i8 zeroext %540)
  %conv29.5.9 = zext i8 %call28.5.9 to i32
  %xor.5.9 = xor i32 %conv23.5.9, %conv29.5.9
  %scevgep35.5.9 = getelementptr i8, i8* %a, i64 15
  %541 = load i8, i8* %scevgep35.5.9, align 1
  %542 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.9 = call zeroext i8 @mult(i8 zeroext %541, i8 zeroext %542)
  %conv35.5.9 = zext i8 %call34.5.9 to i32
  %xor36.5.9 = xor i32 %xor.5.9, %conv35.5.9
  %conv37.5.9 = trunc i32 %xor36.5.9 to i8
  store i8 %conv37.5.9, i8* %scevgep41.5.8, align 1
  %scevgep26.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %475, i64 0, i64 1, i64 1
  %543 = bitcast i8* %scevgep26.5 to [16 x [16 x i8]]*
  %scevgep39.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %476, i64 0, i64 1, i64 1
  %544 = bitcast i8* %scevgep39.5 to [16 x [16 x i8]]*
  %arrayidx25.6 = getelementptr inbounds i8, i8* %a, i64 6
  %arrayidx33.6 = getelementptr inbounds i8, i8* %b, i64 6
  %call16.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6, i8* %scevgep26.5, align 1
  %545 = load i8, i8* %scevgep26.5, align 1
  %conv23.6 = zext i8 %545 to i32
  %546 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6 = getelementptr i8, i8* %b, i64 7
  %547 = load i8, i8* %scevgep34.6, align 1
  %call28.6 = call zeroext i8 @mult(i8 zeroext %546, i8 zeroext %547)
  %conv29.6 = zext i8 %call28.6 to i32
  %xor.6 = xor i32 %conv23.6, %conv29.6
  %scevgep35.6 = getelementptr i8, i8* %a, i64 7
  %548 = load i8, i8* %scevgep35.6, align 1
  %549 = load i8, i8* %arrayidx33.6, align 1
  %call34.6 = call zeroext i8 @mult(i8 zeroext %548, i8 zeroext %549)
  %conv35.6 = zext i8 %call34.6 to i32
  %xor36.6 = xor i32 %xor.6, %conv35.6
  %conv37.6 = trunc i32 %xor36.6 to i8
  store i8 %conv37.6, i8* %scevgep39.5, align 1
  %scevgep28.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %543, i64 0, i64 0, i64 1
  %550 = bitcast i8* %scevgep28.6 to [16 x [16 x i8]]*
  %scevgep41.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %544, i64 0, i64 1, i64 0
  %551 = bitcast i8* %scevgep41.6 to [16 x [16 x i8]]*
  %call16.6.1 = call zeroext i8 (...) @rand()
  store i8 %call16.6.1, i8* %scevgep28.6, align 1
  %552 = load i8, i8* %scevgep28.6, align 1
  %conv23.6.1 = zext i8 %552 to i32
  %553 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.1 = getelementptr i8, i8* %b, i64 8
  %554 = load i8, i8* %scevgep34.6.1, align 1
  %call28.6.1 = call zeroext i8 @mult(i8 zeroext %553, i8 zeroext %554)
  %conv29.6.1 = zext i8 %call28.6.1 to i32
  %xor.6.1 = xor i32 %conv23.6.1, %conv29.6.1
  %scevgep35.6.1 = getelementptr i8, i8* %a, i64 8
  %555 = load i8, i8* %scevgep35.6.1, align 1
  %556 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.1 = call zeroext i8 @mult(i8 zeroext %555, i8 zeroext %556)
  %conv35.6.1 = zext i8 %call34.6.1 to i32
  %xor36.6.1 = xor i32 %xor.6.1, %conv35.6.1
  %conv37.6.1 = trunc i32 %xor36.6.1 to i8
  store i8 %conv37.6.1, i8* %scevgep41.6, align 1
  %scevgep28.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %550, i64 0, i64 0, i64 1
  %557 = bitcast i8* %scevgep28.6.1 to [16 x [16 x i8]]*
  %scevgep41.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %551, i64 0, i64 1, i64 0
  %558 = bitcast i8* %scevgep41.6.1 to [16 x [16 x i8]]*
  %call16.6.2 = call zeroext i8 (...) @rand()
  store i8 %call16.6.2, i8* %scevgep28.6.1, align 1
  %559 = load i8, i8* %scevgep28.6.1, align 1
  %conv23.6.2 = zext i8 %559 to i32
  %560 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.2 = getelementptr i8, i8* %b, i64 9
  %561 = load i8, i8* %scevgep34.6.2, align 1
  %call28.6.2 = call zeroext i8 @mult(i8 zeroext %560, i8 zeroext %561)
  %conv29.6.2 = zext i8 %call28.6.2 to i32
  %xor.6.2 = xor i32 %conv23.6.2, %conv29.6.2
  %scevgep35.6.2 = getelementptr i8, i8* %a, i64 9
  %562 = load i8, i8* %scevgep35.6.2, align 1
  %563 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.2 = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563)
  %conv35.6.2 = zext i8 %call34.6.2 to i32
  %xor36.6.2 = xor i32 %xor.6.2, %conv35.6.2
  %conv37.6.2 = trunc i32 %xor36.6.2 to i8
  store i8 %conv37.6.2, i8* %scevgep41.6.1, align 1
  %scevgep28.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %557, i64 0, i64 0, i64 1
  %564 = bitcast i8* %scevgep28.6.2 to [16 x [16 x i8]]*
  %scevgep41.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %558, i64 0, i64 1, i64 0
  %565 = bitcast i8* %scevgep41.6.2 to [16 x [16 x i8]]*
  %call16.6.3 = call zeroext i8 (...) @rand()
  store i8 %call16.6.3, i8* %scevgep28.6.2, align 1
  %566 = load i8, i8* %scevgep28.6.2, align 1
  %conv23.6.3 = zext i8 %566 to i32
  %567 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.3 = getelementptr i8, i8* %b, i64 10
  %568 = load i8, i8* %scevgep34.6.3, align 1
  %call28.6.3 = call zeroext i8 @mult(i8 zeroext %567, i8 zeroext %568)
  %conv29.6.3 = zext i8 %call28.6.3 to i32
  %xor.6.3 = xor i32 %conv23.6.3, %conv29.6.3
  %scevgep35.6.3 = getelementptr i8, i8* %a, i64 10
  %569 = load i8, i8* %scevgep35.6.3, align 1
  %570 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.3 = call zeroext i8 @mult(i8 zeroext %569, i8 zeroext %570)
  %conv35.6.3 = zext i8 %call34.6.3 to i32
  %xor36.6.3 = xor i32 %xor.6.3, %conv35.6.3
  %conv37.6.3 = trunc i32 %xor36.6.3 to i8
  store i8 %conv37.6.3, i8* %scevgep41.6.2, align 1
  %scevgep28.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %564, i64 0, i64 0, i64 1
  %571 = bitcast i8* %scevgep28.6.3 to [16 x [16 x i8]]*
  %scevgep41.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %565, i64 0, i64 1, i64 0
  %572 = bitcast i8* %scevgep41.6.3 to [16 x [16 x i8]]*
  %call16.6.4 = call zeroext i8 (...) @rand()
  store i8 %call16.6.4, i8* %scevgep28.6.3, align 1
  %573 = load i8, i8* %scevgep28.6.3, align 1
  %conv23.6.4 = zext i8 %573 to i32
  %574 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.4 = getelementptr i8, i8* %b, i64 11
  %575 = load i8, i8* %scevgep34.6.4, align 1
  %call28.6.4 = call zeroext i8 @mult(i8 zeroext %574, i8 zeroext %575)
  %conv29.6.4 = zext i8 %call28.6.4 to i32
  %xor.6.4 = xor i32 %conv23.6.4, %conv29.6.4
  %scevgep35.6.4 = getelementptr i8, i8* %a, i64 11
  %576 = load i8, i8* %scevgep35.6.4, align 1
  %577 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.4 = call zeroext i8 @mult(i8 zeroext %576, i8 zeroext %577)
  %conv35.6.4 = zext i8 %call34.6.4 to i32
  %xor36.6.4 = xor i32 %xor.6.4, %conv35.6.4
  %conv37.6.4 = trunc i32 %xor36.6.4 to i8
  store i8 %conv37.6.4, i8* %scevgep41.6.3, align 1
  %scevgep28.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %571, i64 0, i64 0, i64 1
  %578 = bitcast i8* %scevgep28.6.4 to [16 x [16 x i8]]*
  %scevgep41.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %572, i64 0, i64 1, i64 0
  %579 = bitcast i8* %scevgep41.6.4 to [16 x [16 x i8]]*
  %call16.6.5 = call zeroext i8 (...) @rand()
  store i8 %call16.6.5, i8* %scevgep28.6.4, align 1
  %580 = load i8, i8* %scevgep28.6.4, align 1
  %conv23.6.5 = zext i8 %580 to i32
  %581 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.5 = getelementptr i8, i8* %b, i64 12
  %582 = load i8, i8* %scevgep34.6.5, align 1
  %call28.6.5 = call zeroext i8 @mult(i8 zeroext %581, i8 zeroext %582)
  %conv29.6.5 = zext i8 %call28.6.5 to i32
  %xor.6.5 = xor i32 %conv23.6.5, %conv29.6.5
  %scevgep35.6.5 = getelementptr i8, i8* %a, i64 12
  %583 = load i8, i8* %scevgep35.6.5, align 1
  %584 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.5 = call zeroext i8 @mult(i8 zeroext %583, i8 zeroext %584)
  %conv35.6.5 = zext i8 %call34.6.5 to i32
  %xor36.6.5 = xor i32 %xor.6.5, %conv35.6.5
  %conv37.6.5 = trunc i32 %xor36.6.5 to i8
  store i8 %conv37.6.5, i8* %scevgep41.6.4, align 1
  %scevgep28.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %578, i64 0, i64 0, i64 1
  %585 = bitcast i8* %scevgep28.6.5 to [16 x [16 x i8]]*
  %scevgep41.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %579, i64 0, i64 1, i64 0
  %586 = bitcast i8* %scevgep41.6.5 to [16 x [16 x i8]]*
  %call16.6.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6.6, i8* %scevgep28.6.5, align 1
  %587 = load i8, i8* %scevgep28.6.5, align 1
  %conv23.6.6 = zext i8 %587 to i32
  %588 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.6 = getelementptr i8, i8* %b, i64 13
  %589 = load i8, i8* %scevgep34.6.6, align 1
  %call28.6.6 = call zeroext i8 @mult(i8 zeroext %588, i8 zeroext %589)
  %conv29.6.6 = zext i8 %call28.6.6 to i32
  %xor.6.6 = xor i32 %conv23.6.6, %conv29.6.6
  %scevgep35.6.6 = getelementptr i8, i8* %a, i64 13
  %590 = load i8, i8* %scevgep35.6.6, align 1
  %591 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.6 = call zeroext i8 @mult(i8 zeroext %590, i8 zeroext %591)
  %conv35.6.6 = zext i8 %call34.6.6 to i32
  %xor36.6.6 = xor i32 %xor.6.6, %conv35.6.6
  %conv37.6.6 = trunc i32 %xor36.6.6 to i8
  store i8 %conv37.6.6, i8* %scevgep41.6.5, align 1
  %scevgep28.6.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %585, i64 0, i64 0, i64 1
  %592 = bitcast i8* %scevgep28.6.6 to [16 x [16 x i8]]*
  %scevgep41.6.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %586, i64 0, i64 1, i64 0
  %593 = bitcast i8* %scevgep41.6.6 to [16 x [16 x i8]]*
  %call16.6.7 = call zeroext i8 (...) @rand()
  store i8 %call16.6.7, i8* %scevgep28.6.6, align 1
  %594 = load i8, i8* %scevgep28.6.6, align 1
  %conv23.6.7 = zext i8 %594 to i32
  %595 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.7 = getelementptr i8, i8* %b, i64 14
  %596 = load i8, i8* %scevgep34.6.7, align 1
  %call28.6.7 = call zeroext i8 @mult(i8 zeroext %595, i8 zeroext %596)
  %conv29.6.7 = zext i8 %call28.6.7 to i32
  %xor.6.7 = xor i32 %conv23.6.7, %conv29.6.7
  %scevgep35.6.7 = getelementptr i8, i8* %a, i64 14
  %597 = load i8, i8* %scevgep35.6.7, align 1
  %598 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.7 = call zeroext i8 @mult(i8 zeroext %597, i8 zeroext %598)
  %conv35.6.7 = zext i8 %call34.6.7 to i32
  %xor36.6.7 = xor i32 %xor.6.7, %conv35.6.7
  %conv37.6.7 = trunc i32 %xor36.6.7 to i8
  store i8 %conv37.6.7, i8* %scevgep41.6.6, align 1
  %scevgep28.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %592, i64 0, i64 0, i64 1
  %scevgep41.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %593, i64 0, i64 1, i64 0
  %call16.6.8 = call zeroext i8 (...) @rand()
  store i8 %call16.6.8, i8* %scevgep28.6.7, align 1
  %599 = load i8, i8* %scevgep28.6.7, align 1
  %conv23.6.8 = zext i8 %599 to i32
  %600 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.8 = getelementptr i8, i8* %b, i64 15
  %601 = load i8, i8* %scevgep34.6.8, align 1
  %call28.6.8 = call zeroext i8 @mult(i8 zeroext %600, i8 zeroext %601)
  %conv29.6.8 = zext i8 %call28.6.8 to i32
  %xor.6.8 = xor i32 %conv23.6.8, %conv29.6.8
  %scevgep35.6.8 = getelementptr i8, i8* %a, i64 15
  %602 = load i8, i8* %scevgep35.6.8, align 1
  %603 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.8 = call zeroext i8 @mult(i8 zeroext %602, i8 zeroext %603)
  %conv35.6.8 = zext i8 %call34.6.8 to i32
  %xor36.6.8 = xor i32 %xor.6.8, %conv35.6.8
  %conv37.6.8 = trunc i32 %xor36.6.8 to i8
  store i8 %conv37.6.8, i8* %scevgep41.6.7, align 1
  %scevgep26.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %543, i64 0, i64 1, i64 1
  %604 = bitcast i8* %scevgep26.6 to [16 x [16 x i8]]*
  %scevgep39.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %544, i64 0, i64 1, i64 1
  %605 = bitcast i8* %scevgep39.6 to [16 x [16 x i8]]*
  %arrayidx25.7 = getelementptr inbounds i8, i8* %a, i64 7
  %arrayidx33.7 = getelementptr inbounds i8, i8* %b, i64 7
  %call16.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7, i8* %scevgep26.6, align 1
  %606 = load i8, i8* %scevgep26.6, align 1
  %conv23.7 = zext i8 %606 to i32
  %607 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7 = getelementptr i8, i8* %b, i64 8
  %608 = load i8, i8* %scevgep34.7, align 1
  %call28.7 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %608)
  %conv29.7 = zext i8 %call28.7 to i32
  %xor.7 = xor i32 %conv23.7, %conv29.7
  %scevgep35.7 = getelementptr i8, i8* %a, i64 8
  %609 = load i8, i8* %scevgep35.7, align 1
  %610 = load i8, i8* %arrayidx33.7, align 1
  %call34.7 = call zeroext i8 @mult(i8 zeroext %609, i8 zeroext %610)
  %conv35.7 = zext i8 %call34.7 to i32
  %xor36.7 = xor i32 %xor.7, %conv35.7
  %conv37.7 = trunc i32 %xor36.7 to i8
  store i8 %conv37.7, i8* %scevgep39.6, align 1
  %scevgep28.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %604, i64 0, i64 0, i64 1
  %611 = bitcast i8* %scevgep28.7 to [16 x [16 x i8]]*
  %scevgep41.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 1, i64 0
  %612 = bitcast i8* %scevgep41.7 to [16 x [16 x i8]]*
  %call16.7.1 = call zeroext i8 (...) @rand()
  store i8 %call16.7.1, i8* %scevgep28.7, align 1
  %613 = load i8, i8* %scevgep28.7, align 1
  %conv23.7.1 = zext i8 %613 to i32
  %614 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.1 = getelementptr i8, i8* %b, i64 9
  %615 = load i8, i8* %scevgep34.7.1, align 1
  %call28.7.1 = call zeroext i8 @mult(i8 zeroext %614, i8 zeroext %615)
  %conv29.7.1 = zext i8 %call28.7.1 to i32
  %xor.7.1 = xor i32 %conv23.7.1, %conv29.7.1
  %scevgep35.7.1 = getelementptr i8, i8* %a, i64 9
  %616 = load i8, i8* %scevgep35.7.1, align 1
  %617 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.1 = call zeroext i8 @mult(i8 zeroext %616, i8 zeroext %617)
  %conv35.7.1 = zext i8 %call34.7.1 to i32
  %xor36.7.1 = xor i32 %xor.7.1, %conv35.7.1
  %conv37.7.1 = trunc i32 %xor36.7.1 to i8
  store i8 %conv37.7.1, i8* %scevgep41.7, align 1
  %scevgep28.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %611, i64 0, i64 0, i64 1
  %618 = bitcast i8* %scevgep28.7.1 to [16 x [16 x i8]]*
  %scevgep41.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %612, i64 0, i64 1, i64 0
  %619 = bitcast i8* %scevgep41.7.1 to [16 x [16 x i8]]*
  %call16.7.2 = call zeroext i8 (...) @rand()
  store i8 %call16.7.2, i8* %scevgep28.7.1, align 1
  %620 = load i8, i8* %scevgep28.7.1, align 1
  %conv23.7.2 = zext i8 %620 to i32
  %621 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.2 = getelementptr i8, i8* %b, i64 10
  %622 = load i8, i8* %scevgep34.7.2, align 1
  %call28.7.2 = call zeroext i8 @mult(i8 zeroext %621, i8 zeroext %622)
  %conv29.7.2 = zext i8 %call28.7.2 to i32
  %xor.7.2 = xor i32 %conv23.7.2, %conv29.7.2
  %scevgep35.7.2 = getelementptr i8, i8* %a, i64 10
  %623 = load i8, i8* %scevgep35.7.2, align 1
  %624 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.2 = call zeroext i8 @mult(i8 zeroext %623, i8 zeroext %624)
  %conv35.7.2 = zext i8 %call34.7.2 to i32
  %xor36.7.2 = xor i32 %xor.7.2, %conv35.7.2
  %conv37.7.2 = trunc i32 %xor36.7.2 to i8
  store i8 %conv37.7.2, i8* %scevgep41.7.1, align 1
  %scevgep28.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %618, i64 0, i64 0, i64 1
  %625 = bitcast i8* %scevgep28.7.2 to [16 x [16 x i8]]*
  %scevgep41.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %619, i64 0, i64 1, i64 0
  %626 = bitcast i8* %scevgep41.7.2 to [16 x [16 x i8]]*
  %call16.7.3 = call zeroext i8 (...) @rand()
  store i8 %call16.7.3, i8* %scevgep28.7.2, align 1
  %627 = load i8, i8* %scevgep28.7.2, align 1
  %conv23.7.3 = zext i8 %627 to i32
  %628 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.3 = getelementptr i8, i8* %b, i64 11
  %629 = load i8, i8* %scevgep34.7.3, align 1
  %call28.7.3 = call zeroext i8 @mult(i8 zeroext %628, i8 zeroext %629)
  %conv29.7.3 = zext i8 %call28.7.3 to i32
  %xor.7.3 = xor i32 %conv23.7.3, %conv29.7.3
  %scevgep35.7.3 = getelementptr i8, i8* %a, i64 11
  %630 = load i8, i8* %scevgep35.7.3, align 1
  %631 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.3 = call zeroext i8 @mult(i8 zeroext %630, i8 zeroext %631)
  %conv35.7.3 = zext i8 %call34.7.3 to i32
  %xor36.7.3 = xor i32 %xor.7.3, %conv35.7.3
  %conv37.7.3 = trunc i32 %xor36.7.3 to i8
  store i8 %conv37.7.3, i8* %scevgep41.7.2, align 1
  %scevgep28.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %625, i64 0, i64 0, i64 1
  %632 = bitcast i8* %scevgep28.7.3 to [16 x [16 x i8]]*
  %scevgep41.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %626, i64 0, i64 1, i64 0
  %633 = bitcast i8* %scevgep41.7.3 to [16 x [16 x i8]]*
  %call16.7.4 = call zeroext i8 (...) @rand()
  store i8 %call16.7.4, i8* %scevgep28.7.3, align 1
  %634 = load i8, i8* %scevgep28.7.3, align 1
  %conv23.7.4 = zext i8 %634 to i32
  %635 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.4 = getelementptr i8, i8* %b, i64 12
  %636 = load i8, i8* %scevgep34.7.4, align 1
  %call28.7.4 = call zeroext i8 @mult(i8 zeroext %635, i8 zeroext %636)
  %conv29.7.4 = zext i8 %call28.7.4 to i32
  %xor.7.4 = xor i32 %conv23.7.4, %conv29.7.4
  %scevgep35.7.4 = getelementptr i8, i8* %a, i64 12
  %637 = load i8, i8* %scevgep35.7.4, align 1
  %638 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.4 = call zeroext i8 @mult(i8 zeroext %637, i8 zeroext %638)
  %conv35.7.4 = zext i8 %call34.7.4 to i32
  %xor36.7.4 = xor i32 %xor.7.4, %conv35.7.4
  %conv37.7.4 = trunc i32 %xor36.7.4 to i8
  store i8 %conv37.7.4, i8* %scevgep41.7.3, align 1
  %scevgep28.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %632, i64 0, i64 0, i64 1
  %639 = bitcast i8* %scevgep28.7.4 to [16 x [16 x i8]]*
  %scevgep41.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %633, i64 0, i64 1, i64 0
  %640 = bitcast i8* %scevgep41.7.4 to [16 x [16 x i8]]*
  %call16.7.5 = call zeroext i8 (...) @rand()
  store i8 %call16.7.5, i8* %scevgep28.7.4, align 1
  %641 = load i8, i8* %scevgep28.7.4, align 1
  %conv23.7.5 = zext i8 %641 to i32
  %642 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.5 = getelementptr i8, i8* %b, i64 13
  %643 = load i8, i8* %scevgep34.7.5, align 1
  %call28.7.5 = call zeroext i8 @mult(i8 zeroext %642, i8 zeroext %643)
  %conv29.7.5 = zext i8 %call28.7.5 to i32
  %xor.7.5 = xor i32 %conv23.7.5, %conv29.7.5
  %scevgep35.7.5 = getelementptr i8, i8* %a, i64 13
  %644 = load i8, i8* %scevgep35.7.5, align 1
  %645 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.5 = call zeroext i8 @mult(i8 zeroext %644, i8 zeroext %645)
  %conv35.7.5 = zext i8 %call34.7.5 to i32
  %xor36.7.5 = xor i32 %xor.7.5, %conv35.7.5
  %conv37.7.5 = trunc i32 %xor36.7.5 to i8
  store i8 %conv37.7.5, i8* %scevgep41.7.4, align 1
  %scevgep28.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %639, i64 0, i64 0, i64 1
  %646 = bitcast i8* %scevgep28.7.5 to [16 x [16 x i8]]*
  %scevgep41.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %640, i64 0, i64 1, i64 0
  %647 = bitcast i8* %scevgep41.7.5 to [16 x [16 x i8]]*
  %call16.7.6 = call zeroext i8 (...) @rand()
  store i8 %call16.7.6, i8* %scevgep28.7.5, align 1
  %648 = load i8, i8* %scevgep28.7.5, align 1
  %conv23.7.6 = zext i8 %648 to i32
  %649 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.6 = getelementptr i8, i8* %b, i64 14
  %650 = load i8, i8* %scevgep34.7.6, align 1
  %call28.7.6 = call zeroext i8 @mult(i8 zeroext %649, i8 zeroext %650)
  %conv29.7.6 = zext i8 %call28.7.6 to i32
  %xor.7.6 = xor i32 %conv23.7.6, %conv29.7.6
  %scevgep35.7.6 = getelementptr i8, i8* %a, i64 14
  %651 = load i8, i8* %scevgep35.7.6, align 1
  %652 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.6 = call zeroext i8 @mult(i8 zeroext %651, i8 zeroext %652)
  %conv35.7.6 = zext i8 %call34.7.6 to i32
  %xor36.7.6 = xor i32 %xor.7.6, %conv35.7.6
  %conv37.7.6 = trunc i32 %xor36.7.6 to i8
  store i8 %conv37.7.6, i8* %scevgep41.7.5, align 1
  %scevgep28.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %646, i64 0, i64 0, i64 1
  %scevgep41.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %647, i64 0, i64 1, i64 0
  %call16.7.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7.7, i8* %scevgep28.7.6, align 1
  %653 = load i8, i8* %scevgep28.7.6, align 1
  %conv23.7.7 = zext i8 %653 to i32
  %654 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.7 = getelementptr i8, i8* %b, i64 15
  %655 = load i8, i8* %scevgep34.7.7, align 1
  %call28.7.7 = call zeroext i8 @mult(i8 zeroext %654, i8 zeroext %655)
  %conv29.7.7 = zext i8 %call28.7.7 to i32
  %xor.7.7 = xor i32 %conv23.7.7, %conv29.7.7
  %scevgep35.7.7 = getelementptr i8, i8* %a, i64 15
  %656 = load i8, i8* %scevgep35.7.7, align 1
  %657 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.7 = call zeroext i8 @mult(i8 zeroext %656, i8 zeroext %657)
  %conv35.7.7 = zext i8 %call34.7.7 to i32
  %xor36.7.7 = xor i32 %xor.7.7, %conv35.7.7
  %conv37.7.7 = trunc i32 %xor36.7.7 to i8
  store i8 %conv37.7.7, i8* %scevgep41.7.6, align 1
  %scevgep26.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %604, i64 0, i64 1, i64 1
  %658 = bitcast i8* %scevgep26.7 to [16 x [16 x i8]]*
  %scevgep39.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 1, i64 1
  %659 = bitcast i8* %scevgep39.7 to [16 x [16 x i8]]*
  %arrayidx25.8 = getelementptr inbounds i8, i8* %a, i64 8
  %arrayidx33.8 = getelementptr inbounds i8, i8* %b, i64 8
  %call16.8 = call zeroext i8 (...) @rand()
  store i8 %call16.8, i8* %scevgep26.7, align 1
  %660 = load i8, i8* %scevgep26.7, align 1
  %conv23.8 = zext i8 %660 to i32
  %661 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8 = getelementptr i8, i8* %b, i64 9
  %662 = load i8, i8* %scevgep34.8, align 1
  %call28.8 = call zeroext i8 @mult(i8 zeroext %661, i8 zeroext %662)
  %conv29.8 = zext i8 %call28.8 to i32
  %xor.8 = xor i32 %conv23.8, %conv29.8
  %scevgep35.8 = getelementptr i8, i8* %a, i64 9
  %663 = load i8, i8* %scevgep35.8, align 1
  %664 = load i8, i8* %arrayidx33.8, align 1
  %call34.8 = call zeroext i8 @mult(i8 zeroext %663, i8 zeroext %664)
  %conv35.8 = zext i8 %call34.8 to i32
  %xor36.8 = xor i32 %xor.8, %conv35.8
  %conv37.8 = trunc i32 %xor36.8 to i8
  store i8 %conv37.8, i8* %scevgep39.7, align 1
  %scevgep28.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %658, i64 0, i64 0, i64 1
  %665 = bitcast i8* %scevgep28.8 to [16 x [16 x i8]]*
  %scevgep41.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %659, i64 0, i64 1, i64 0
  %666 = bitcast i8* %scevgep41.8 to [16 x [16 x i8]]*
  %call16.8.1 = call zeroext i8 (...) @rand()
  store i8 %call16.8.1, i8* %scevgep28.8, align 1
  %667 = load i8, i8* %scevgep28.8, align 1
  %conv23.8.1 = zext i8 %667 to i32
  %668 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.1 = getelementptr i8, i8* %b, i64 10
  %669 = load i8, i8* %scevgep34.8.1, align 1
  %call28.8.1 = call zeroext i8 @mult(i8 zeroext %668, i8 zeroext %669)
  %conv29.8.1 = zext i8 %call28.8.1 to i32
  %xor.8.1 = xor i32 %conv23.8.1, %conv29.8.1
  %scevgep35.8.1 = getelementptr i8, i8* %a, i64 10
  %670 = load i8, i8* %scevgep35.8.1, align 1
  %671 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.1 = call zeroext i8 @mult(i8 zeroext %670, i8 zeroext %671)
  %conv35.8.1 = zext i8 %call34.8.1 to i32
  %xor36.8.1 = xor i32 %xor.8.1, %conv35.8.1
  %conv37.8.1 = trunc i32 %xor36.8.1 to i8
  store i8 %conv37.8.1, i8* %scevgep41.8, align 1
  %scevgep28.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %665, i64 0, i64 0, i64 1
  %672 = bitcast i8* %scevgep28.8.1 to [16 x [16 x i8]]*
  %scevgep41.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %666, i64 0, i64 1, i64 0
  %673 = bitcast i8* %scevgep41.8.1 to [16 x [16 x i8]]*
  %call16.8.2 = call zeroext i8 (...) @rand()
  store i8 %call16.8.2, i8* %scevgep28.8.1, align 1
  %674 = load i8, i8* %scevgep28.8.1, align 1
  %conv23.8.2 = zext i8 %674 to i32
  %675 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.2 = getelementptr i8, i8* %b, i64 11
  %676 = load i8, i8* %scevgep34.8.2, align 1
  %call28.8.2 = call zeroext i8 @mult(i8 zeroext %675, i8 zeroext %676)
  %conv29.8.2 = zext i8 %call28.8.2 to i32
  %xor.8.2 = xor i32 %conv23.8.2, %conv29.8.2
  %scevgep35.8.2 = getelementptr i8, i8* %a, i64 11
  %677 = load i8, i8* %scevgep35.8.2, align 1
  %678 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.2 = call zeroext i8 @mult(i8 zeroext %677, i8 zeroext %678)
  %conv35.8.2 = zext i8 %call34.8.2 to i32
  %xor36.8.2 = xor i32 %xor.8.2, %conv35.8.2
  %conv37.8.2 = trunc i32 %xor36.8.2 to i8
  store i8 %conv37.8.2, i8* %scevgep41.8.1, align 1
  %scevgep28.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %672, i64 0, i64 0, i64 1
  %679 = bitcast i8* %scevgep28.8.2 to [16 x [16 x i8]]*
  %scevgep41.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %673, i64 0, i64 1, i64 0
  %680 = bitcast i8* %scevgep41.8.2 to [16 x [16 x i8]]*
  %call16.8.3 = call zeroext i8 (...) @rand()
  store i8 %call16.8.3, i8* %scevgep28.8.2, align 1
  %681 = load i8, i8* %scevgep28.8.2, align 1
  %conv23.8.3 = zext i8 %681 to i32
  %682 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.3 = getelementptr i8, i8* %b, i64 12
  %683 = load i8, i8* %scevgep34.8.3, align 1
  %call28.8.3 = call zeroext i8 @mult(i8 zeroext %682, i8 zeroext %683)
  %conv29.8.3 = zext i8 %call28.8.3 to i32
  %xor.8.3 = xor i32 %conv23.8.3, %conv29.8.3
  %scevgep35.8.3 = getelementptr i8, i8* %a, i64 12
  %684 = load i8, i8* %scevgep35.8.3, align 1
  %685 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.3 = call zeroext i8 @mult(i8 zeroext %684, i8 zeroext %685)
  %conv35.8.3 = zext i8 %call34.8.3 to i32
  %xor36.8.3 = xor i32 %xor.8.3, %conv35.8.3
  %conv37.8.3 = trunc i32 %xor36.8.3 to i8
  store i8 %conv37.8.3, i8* %scevgep41.8.2, align 1
  %scevgep28.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %679, i64 0, i64 0, i64 1
  %686 = bitcast i8* %scevgep28.8.3 to [16 x [16 x i8]]*
  %scevgep41.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %680, i64 0, i64 1, i64 0
  %687 = bitcast i8* %scevgep41.8.3 to [16 x [16 x i8]]*
  %call16.8.4 = call zeroext i8 (...) @rand()
  store i8 %call16.8.4, i8* %scevgep28.8.3, align 1
  %688 = load i8, i8* %scevgep28.8.3, align 1
  %conv23.8.4 = zext i8 %688 to i32
  %689 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.4 = getelementptr i8, i8* %b, i64 13
  %690 = load i8, i8* %scevgep34.8.4, align 1
  %call28.8.4 = call zeroext i8 @mult(i8 zeroext %689, i8 zeroext %690)
  %conv29.8.4 = zext i8 %call28.8.4 to i32
  %xor.8.4 = xor i32 %conv23.8.4, %conv29.8.4
  %scevgep35.8.4 = getelementptr i8, i8* %a, i64 13
  %691 = load i8, i8* %scevgep35.8.4, align 1
  %692 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.4 = call zeroext i8 @mult(i8 zeroext %691, i8 zeroext %692)
  %conv35.8.4 = zext i8 %call34.8.4 to i32
  %xor36.8.4 = xor i32 %xor.8.4, %conv35.8.4
  %conv37.8.4 = trunc i32 %xor36.8.4 to i8
  store i8 %conv37.8.4, i8* %scevgep41.8.3, align 1
  %scevgep28.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %686, i64 0, i64 0, i64 1
  %693 = bitcast i8* %scevgep28.8.4 to [16 x [16 x i8]]*
  %scevgep41.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %687, i64 0, i64 1, i64 0
  %694 = bitcast i8* %scevgep41.8.4 to [16 x [16 x i8]]*
  %call16.8.5 = call zeroext i8 (...) @rand()
  store i8 %call16.8.5, i8* %scevgep28.8.4, align 1
  %695 = load i8, i8* %scevgep28.8.4, align 1
  %conv23.8.5 = zext i8 %695 to i32
  %696 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.5 = getelementptr i8, i8* %b, i64 14
  %697 = load i8, i8* %scevgep34.8.5, align 1
  %call28.8.5 = call zeroext i8 @mult(i8 zeroext %696, i8 zeroext %697)
  %conv29.8.5 = zext i8 %call28.8.5 to i32
  %xor.8.5 = xor i32 %conv23.8.5, %conv29.8.5
  %scevgep35.8.5 = getelementptr i8, i8* %a, i64 14
  %698 = load i8, i8* %scevgep35.8.5, align 1
  %699 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.5 = call zeroext i8 @mult(i8 zeroext %698, i8 zeroext %699)
  %conv35.8.5 = zext i8 %call34.8.5 to i32
  %xor36.8.5 = xor i32 %xor.8.5, %conv35.8.5
  %conv37.8.5 = trunc i32 %xor36.8.5 to i8
  store i8 %conv37.8.5, i8* %scevgep41.8.4, align 1
  %scevgep28.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %693, i64 0, i64 0, i64 1
  %scevgep41.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %694, i64 0, i64 1, i64 0
  %call16.8.6 = call zeroext i8 (...) @rand()
  store i8 %call16.8.6, i8* %scevgep28.8.5, align 1
  %700 = load i8, i8* %scevgep28.8.5, align 1
  %conv23.8.6 = zext i8 %700 to i32
  %701 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.6 = getelementptr i8, i8* %b, i64 15
  %702 = load i8, i8* %scevgep34.8.6, align 1
  %call28.8.6 = call zeroext i8 @mult(i8 zeroext %701, i8 zeroext %702)
  %conv29.8.6 = zext i8 %call28.8.6 to i32
  %xor.8.6 = xor i32 %conv23.8.6, %conv29.8.6
  %scevgep35.8.6 = getelementptr i8, i8* %a, i64 15
  %703 = load i8, i8* %scevgep35.8.6, align 1
  %704 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.6 = call zeroext i8 @mult(i8 zeroext %703, i8 zeroext %704)
  %conv35.8.6 = zext i8 %call34.8.6 to i32
  %xor36.8.6 = xor i32 %xor.8.6, %conv35.8.6
  %conv37.8.6 = trunc i32 %xor36.8.6 to i8
  store i8 %conv37.8.6, i8* %scevgep41.8.5, align 1
  %scevgep26.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %658, i64 0, i64 1, i64 1
  %705 = bitcast i8* %scevgep26.8 to [16 x [16 x i8]]*
  %scevgep39.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %659, i64 0, i64 1, i64 1
  %706 = bitcast i8* %scevgep39.8 to [16 x [16 x i8]]*
  %arrayidx25.9 = getelementptr inbounds i8, i8* %a, i64 9
  %arrayidx33.9 = getelementptr inbounds i8, i8* %b, i64 9
  %call16.9 = call zeroext i8 (...) @rand()
  store i8 %call16.9, i8* %scevgep26.8, align 1
  %707 = load i8, i8* %scevgep26.8, align 1
  %conv23.9 = zext i8 %707 to i32
  %708 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9 = getelementptr i8, i8* %b, i64 10
  %709 = load i8, i8* %scevgep34.9, align 1
  %call28.9 = call zeroext i8 @mult(i8 zeroext %708, i8 zeroext %709)
  %conv29.9 = zext i8 %call28.9 to i32
  %xor.9 = xor i32 %conv23.9, %conv29.9
  %scevgep35.9 = getelementptr i8, i8* %a, i64 10
  %710 = load i8, i8* %scevgep35.9, align 1
  %711 = load i8, i8* %arrayidx33.9, align 1
  %call34.9 = call zeroext i8 @mult(i8 zeroext %710, i8 zeroext %711)
  %conv35.9 = zext i8 %call34.9 to i32
  %xor36.9 = xor i32 %xor.9, %conv35.9
  %conv37.9 = trunc i32 %xor36.9 to i8
  store i8 %conv37.9, i8* %scevgep39.8, align 1
  %scevgep28.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %705, i64 0, i64 0, i64 1
  %712 = bitcast i8* %scevgep28.9 to [16 x [16 x i8]]*
  %scevgep41.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %706, i64 0, i64 1, i64 0
  %713 = bitcast i8* %scevgep41.9 to [16 x [16 x i8]]*
  %call16.9.1 = call zeroext i8 (...) @rand()
  store i8 %call16.9.1, i8* %scevgep28.9, align 1
  %714 = load i8, i8* %scevgep28.9, align 1
  %conv23.9.1 = zext i8 %714 to i32
  %715 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.1 = getelementptr i8, i8* %b, i64 11
  %716 = load i8, i8* %scevgep34.9.1, align 1
  %call28.9.1 = call zeroext i8 @mult(i8 zeroext %715, i8 zeroext %716)
  %conv29.9.1 = zext i8 %call28.9.1 to i32
  %xor.9.1 = xor i32 %conv23.9.1, %conv29.9.1
  %scevgep35.9.1 = getelementptr i8, i8* %a, i64 11
  %717 = load i8, i8* %scevgep35.9.1, align 1
  %718 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.1 = call zeroext i8 @mult(i8 zeroext %717, i8 zeroext %718)
  %conv35.9.1 = zext i8 %call34.9.1 to i32
  %xor36.9.1 = xor i32 %xor.9.1, %conv35.9.1
  %conv37.9.1 = trunc i32 %xor36.9.1 to i8
  store i8 %conv37.9.1, i8* %scevgep41.9, align 1
  %scevgep28.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %712, i64 0, i64 0, i64 1
  %719 = bitcast i8* %scevgep28.9.1 to [16 x [16 x i8]]*
  %scevgep41.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %713, i64 0, i64 1, i64 0
  %720 = bitcast i8* %scevgep41.9.1 to [16 x [16 x i8]]*
  %call16.9.2 = call zeroext i8 (...) @rand()
  store i8 %call16.9.2, i8* %scevgep28.9.1, align 1
  %721 = load i8, i8* %scevgep28.9.1, align 1
  %conv23.9.2 = zext i8 %721 to i32
  %722 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.2 = getelementptr i8, i8* %b, i64 12
  %723 = load i8, i8* %scevgep34.9.2, align 1
  %call28.9.2 = call zeroext i8 @mult(i8 zeroext %722, i8 zeroext %723)
  %conv29.9.2 = zext i8 %call28.9.2 to i32
  %xor.9.2 = xor i32 %conv23.9.2, %conv29.9.2
  %scevgep35.9.2 = getelementptr i8, i8* %a, i64 12
  %724 = load i8, i8* %scevgep35.9.2, align 1
  %725 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.2 = call zeroext i8 @mult(i8 zeroext %724, i8 zeroext %725)
  %conv35.9.2 = zext i8 %call34.9.2 to i32
  %xor36.9.2 = xor i32 %xor.9.2, %conv35.9.2
  %conv37.9.2 = trunc i32 %xor36.9.2 to i8
  store i8 %conv37.9.2, i8* %scevgep41.9.1, align 1
  %scevgep28.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %719, i64 0, i64 0, i64 1
  %726 = bitcast i8* %scevgep28.9.2 to [16 x [16 x i8]]*
  %scevgep41.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 1, i64 0
  %727 = bitcast i8* %scevgep41.9.2 to [16 x [16 x i8]]*
  %call16.9.3 = call zeroext i8 (...) @rand()
  store i8 %call16.9.3, i8* %scevgep28.9.2, align 1
  %728 = load i8, i8* %scevgep28.9.2, align 1
  %conv23.9.3 = zext i8 %728 to i32
  %729 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.3 = getelementptr i8, i8* %b, i64 13
  %730 = load i8, i8* %scevgep34.9.3, align 1
  %call28.9.3 = call zeroext i8 @mult(i8 zeroext %729, i8 zeroext %730)
  %conv29.9.3 = zext i8 %call28.9.3 to i32
  %xor.9.3 = xor i32 %conv23.9.3, %conv29.9.3
  %scevgep35.9.3 = getelementptr i8, i8* %a, i64 13
  %731 = load i8, i8* %scevgep35.9.3, align 1
  %732 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.3 = call zeroext i8 @mult(i8 zeroext %731, i8 zeroext %732)
  %conv35.9.3 = zext i8 %call34.9.3 to i32
  %xor36.9.3 = xor i32 %xor.9.3, %conv35.9.3
  %conv37.9.3 = trunc i32 %xor36.9.3 to i8
  store i8 %conv37.9.3, i8* %scevgep41.9.2, align 1
  %scevgep28.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %726, i64 0, i64 0, i64 1
  %733 = bitcast i8* %scevgep28.9.3 to [16 x [16 x i8]]*
  %scevgep41.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %727, i64 0, i64 1, i64 0
  %734 = bitcast i8* %scevgep41.9.3 to [16 x [16 x i8]]*
  %call16.9.4 = call zeroext i8 (...) @rand()
  store i8 %call16.9.4, i8* %scevgep28.9.3, align 1
  %735 = load i8, i8* %scevgep28.9.3, align 1
  %conv23.9.4 = zext i8 %735 to i32
  %736 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.4 = getelementptr i8, i8* %b, i64 14
  %737 = load i8, i8* %scevgep34.9.4, align 1
  %call28.9.4 = call zeroext i8 @mult(i8 zeroext %736, i8 zeroext %737)
  %conv29.9.4 = zext i8 %call28.9.4 to i32
  %xor.9.4 = xor i32 %conv23.9.4, %conv29.9.4
  %scevgep35.9.4 = getelementptr i8, i8* %a, i64 14
  %738 = load i8, i8* %scevgep35.9.4, align 1
  %739 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.4 = call zeroext i8 @mult(i8 zeroext %738, i8 zeroext %739)
  %conv35.9.4 = zext i8 %call34.9.4 to i32
  %xor36.9.4 = xor i32 %xor.9.4, %conv35.9.4
  %conv37.9.4 = trunc i32 %xor36.9.4 to i8
  store i8 %conv37.9.4, i8* %scevgep41.9.3, align 1
  %scevgep28.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %733, i64 0, i64 0, i64 1
  %scevgep41.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %734, i64 0, i64 1, i64 0
  %call16.9.5 = call zeroext i8 (...) @rand()
  store i8 %call16.9.5, i8* %scevgep28.9.4, align 1
  %740 = load i8, i8* %scevgep28.9.4, align 1
  %conv23.9.5 = zext i8 %740 to i32
  %741 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.5 = getelementptr i8, i8* %b, i64 15
  %742 = load i8, i8* %scevgep34.9.5, align 1
  %call28.9.5 = call zeroext i8 @mult(i8 zeroext %741, i8 zeroext %742)
  %conv29.9.5 = zext i8 %call28.9.5 to i32
  %xor.9.5 = xor i32 %conv23.9.5, %conv29.9.5
  %scevgep35.9.5 = getelementptr i8, i8* %a, i64 15
  %743 = load i8, i8* %scevgep35.9.5, align 1
  %744 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.5 = call zeroext i8 @mult(i8 zeroext %743, i8 zeroext %744)
  %conv35.9.5 = zext i8 %call34.9.5 to i32
  %xor36.9.5 = xor i32 %xor.9.5, %conv35.9.5
  %conv37.9.5 = trunc i32 %xor36.9.5 to i8
  store i8 %conv37.9.5, i8* %scevgep41.9.4, align 1
  %scevgep26.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %705, i64 0, i64 1, i64 1
  %745 = bitcast i8* %scevgep26.9 to [16 x [16 x i8]]*
  %scevgep39.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %706, i64 0, i64 1, i64 1
  %746 = bitcast i8* %scevgep39.9 to [16 x [16 x i8]]*
  %arrayidx25.10 = getelementptr inbounds i8, i8* %a, i64 10
  %arrayidx33.10 = getelementptr inbounds i8, i8* %b, i64 10
  %call16.10 = call zeroext i8 (...) @rand()
  store i8 %call16.10, i8* %scevgep26.9, align 1
  %747 = load i8, i8* %scevgep26.9, align 1
  %conv23.10 = zext i8 %747 to i32
  %748 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10 = getelementptr i8, i8* %b, i64 11
  %749 = load i8, i8* %scevgep34.10, align 1
  %call28.10 = call zeroext i8 @mult(i8 zeroext %748, i8 zeroext %749)
  %conv29.10 = zext i8 %call28.10 to i32
  %xor.10 = xor i32 %conv23.10, %conv29.10
  %scevgep35.10 = getelementptr i8, i8* %a, i64 11
  %750 = load i8, i8* %scevgep35.10, align 1
  %751 = load i8, i8* %arrayidx33.10, align 1
  %call34.10 = call zeroext i8 @mult(i8 zeroext %750, i8 zeroext %751)
  %conv35.10 = zext i8 %call34.10 to i32
  %xor36.10 = xor i32 %xor.10, %conv35.10
  %conv37.10 = trunc i32 %xor36.10 to i8
  store i8 %conv37.10, i8* %scevgep39.9, align 1
  %scevgep28.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %745, i64 0, i64 0, i64 1
  %752 = bitcast i8* %scevgep28.10 to [16 x [16 x i8]]*
  %scevgep41.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %746, i64 0, i64 1, i64 0
  %753 = bitcast i8* %scevgep41.10 to [16 x [16 x i8]]*
  %call16.10.1 = call zeroext i8 (...) @rand()
  store i8 %call16.10.1, i8* %scevgep28.10, align 1
  %754 = load i8, i8* %scevgep28.10, align 1
  %conv23.10.1 = zext i8 %754 to i32
  %755 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.1 = getelementptr i8, i8* %b, i64 12
  %756 = load i8, i8* %scevgep34.10.1, align 1
  %call28.10.1 = call zeroext i8 @mult(i8 zeroext %755, i8 zeroext %756)
  %conv29.10.1 = zext i8 %call28.10.1 to i32
  %xor.10.1 = xor i32 %conv23.10.1, %conv29.10.1
  %scevgep35.10.1 = getelementptr i8, i8* %a, i64 12
  %757 = load i8, i8* %scevgep35.10.1, align 1
  %758 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.1 = call zeroext i8 @mult(i8 zeroext %757, i8 zeroext %758)
  %conv35.10.1 = zext i8 %call34.10.1 to i32
  %xor36.10.1 = xor i32 %xor.10.1, %conv35.10.1
  %conv37.10.1 = trunc i32 %xor36.10.1 to i8
  store i8 %conv37.10.1, i8* %scevgep41.10, align 1
  %scevgep28.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %752, i64 0, i64 0, i64 1
  %759 = bitcast i8* %scevgep28.10.1 to [16 x [16 x i8]]*
  %scevgep41.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %753, i64 0, i64 1, i64 0
  %760 = bitcast i8* %scevgep41.10.1 to [16 x [16 x i8]]*
  %call16.10.2 = call zeroext i8 (...) @rand()
  store i8 %call16.10.2, i8* %scevgep28.10.1, align 1
  %761 = load i8, i8* %scevgep28.10.1, align 1
  %conv23.10.2 = zext i8 %761 to i32
  %762 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.2 = getelementptr i8, i8* %b, i64 13
  %763 = load i8, i8* %scevgep34.10.2, align 1
  %call28.10.2 = call zeroext i8 @mult(i8 zeroext %762, i8 zeroext %763)
  %conv29.10.2 = zext i8 %call28.10.2 to i32
  %xor.10.2 = xor i32 %conv23.10.2, %conv29.10.2
  %scevgep35.10.2 = getelementptr i8, i8* %a, i64 13
  %764 = load i8, i8* %scevgep35.10.2, align 1
  %765 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.2 = call zeroext i8 @mult(i8 zeroext %764, i8 zeroext %765)
  %conv35.10.2 = zext i8 %call34.10.2 to i32
  %xor36.10.2 = xor i32 %xor.10.2, %conv35.10.2
  %conv37.10.2 = trunc i32 %xor36.10.2 to i8
  store i8 %conv37.10.2, i8* %scevgep41.10.1, align 1
  %scevgep28.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %759, i64 0, i64 0, i64 1
  %766 = bitcast i8* %scevgep28.10.2 to [16 x [16 x i8]]*
  %scevgep41.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %760, i64 0, i64 1, i64 0
  %767 = bitcast i8* %scevgep41.10.2 to [16 x [16 x i8]]*
  %call16.10.3 = call zeroext i8 (...) @rand()
  store i8 %call16.10.3, i8* %scevgep28.10.2, align 1
  %768 = load i8, i8* %scevgep28.10.2, align 1
  %conv23.10.3 = zext i8 %768 to i32
  %769 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.3 = getelementptr i8, i8* %b, i64 14
  %770 = load i8, i8* %scevgep34.10.3, align 1
  %call28.10.3 = call zeroext i8 @mult(i8 zeroext %769, i8 zeroext %770)
  %conv29.10.3 = zext i8 %call28.10.3 to i32
  %xor.10.3 = xor i32 %conv23.10.3, %conv29.10.3
  %scevgep35.10.3 = getelementptr i8, i8* %a, i64 14
  %771 = load i8, i8* %scevgep35.10.3, align 1
  %772 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.3 = call zeroext i8 @mult(i8 zeroext %771, i8 zeroext %772)
  %conv35.10.3 = zext i8 %call34.10.3 to i32
  %xor36.10.3 = xor i32 %xor.10.3, %conv35.10.3
  %conv37.10.3 = trunc i32 %xor36.10.3 to i8
  store i8 %conv37.10.3, i8* %scevgep41.10.2, align 1
  %scevgep28.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %766, i64 0, i64 0, i64 1
  %scevgep41.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %767, i64 0, i64 1, i64 0
  %call16.10.4 = call zeroext i8 (...) @rand()
  store i8 %call16.10.4, i8* %scevgep28.10.3, align 1
  %773 = load i8, i8* %scevgep28.10.3, align 1
  %conv23.10.4 = zext i8 %773 to i32
  %774 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.4 = getelementptr i8, i8* %b, i64 15
  %775 = load i8, i8* %scevgep34.10.4, align 1
  %call28.10.4 = call zeroext i8 @mult(i8 zeroext %774, i8 zeroext %775)
  %conv29.10.4 = zext i8 %call28.10.4 to i32
  %xor.10.4 = xor i32 %conv23.10.4, %conv29.10.4
  %scevgep35.10.4 = getelementptr i8, i8* %a, i64 15
  %776 = load i8, i8* %scevgep35.10.4, align 1
  %777 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.4 = call zeroext i8 @mult(i8 zeroext %776, i8 zeroext %777)
  %conv35.10.4 = zext i8 %call34.10.4 to i32
  %xor36.10.4 = xor i32 %xor.10.4, %conv35.10.4
  %conv37.10.4 = trunc i32 %xor36.10.4 to i8
  store i8 %conv37.10.4, i8* %scevgep41.10.3, align 1
  %scevgep26.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %745, i64 0, i64 1, i64 1
  %778 = bitcast i8* %scevgep26.10 to [16 x [16 x i8]]*
  %scevgep39.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %746, i64 0, i64 1, i64 1
  %779 = bitcast i8* %scevgep39.10 to [16 x [16 x i8]]*
  %arrayidx25.11 = getelementptr inbounds i8, i8* %a, i64 11
  %arrayidx33.11 = getelementptr inbounds i8, i8* %b, i64 11
  %call16.11 = call zeroext i8 (...) @rand()
  store i8 %call16.11, i8* %scevgep26.10, align 1
  %780 = load i8, i8* %scevgep26.10, align 1
  %conv23.11 = zext i8 %780 to i32
  %781 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11 = getelementptr i8, i8* %b, i64 12
  %782 = load i8, i8* %scevgep34.11, align 1
  %call28.11 = call zeroext i8 @mult(i8 zeroext %781, i8 zeroext %782)
  %conv29.11 = zext i8 %call28.11 to i32
  %xor.11 = xor i32 %conv23.11, %conv29.11
  %scevgep35.11 = getelementptr i8, i8* %a, i64 12
  %783 = load i8, i8* %scevgep35.11, align 1
  %784 = load i8, i8* %arrayidx33.11, align 1
  %call34.11 = call zeroext i8 @mult(i8 zeroext %783, i8 zeroext %784)
  %conv35.11 = zext i8 %call34.11 to i32
  %xor36.11 = xor i32 %xor.11, %conv35.11
  %conv37.11 = trunc i32 %xor36.11 to i8
  store i8 %conv37.11, i8* %scevgep39.10, align 1
  %scevgep28.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %778, i64 0, i64 0, i64 1
  %785 = bitcast i8* %scevgep28.11 to [16 x [16 x i8]]*
  %scevgep41.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %779, i64 0, i64 1, i64 0
  %786 = bitcast i8* %scevgep41.11 to [16 x [16 x i8]]*
  %call16.11.1 = call zeroext i8 (...) @rand()
  store i8 %call16.11.1, i8* %scevgep28.11, align 1
  %787 = load i8, i8* %scevgep28.11, align 1
  %conv23.11.1 = zext i8 %787 to i32
  %788 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.1 = getelementptr i8, i8* %b, i64 13
  %789 = load i8, i8* %scevgep34.11.1, align 1
  %call28.11.1 = call zeroext i8 @mult(i8 zeroext %788, i8 zeroext %789)
  %conv29.11.1 = zext i8 %call28.11.1 to i32
  %xor.11.1 = xor i32 %conv23.11.1, %conv29.11.1
  %scevgep35.11.1 = getelementptr i8, i8* %a, i64 13
  %790 = load i8, i8* %scevgep35.11.1, align 1
  %791 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.1 = call zeroext i8 @mult(i8 zeroext %790, i8 zeroext %791)
  %conv35.11.1 = zext i8 %call34.11.1 to i32
  %xor36.11.1 = xor i32 %xor.11.1, %conv35.11.1
  %conv37.11.1 = trunc i32 %xor36.11.1 to i8
  store i8 %conv37.11.1, i8* %scevgep41.11, align 1
  %scevgep28.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %785, i64 0, i64 0, i64 1
  %792 = bitcast i8* %scevgep28.11.1 to [16 x [16 x i8]]*
  %scevgep41.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %786, i64 0, i64 1, i64 0
  %793 = bitcast i8* %scevgep41.11.1 to [16 x [16 x i8]]*
  %call16.11.2 = call zeroext i8 (...) @rand()
  store i8 %call16.11.2, i8* %scevgep28.11.1, align 1
  %794 = load i8, i8* %scevgep28.11.1, align 1
  %conv23.11.2 = zext i8 %794 to i32
  %795 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.2 = getelementptr i8, i8* %b, i64 14
  %796 = load i8, i8* %scevgep34.11.2, align 1
  %call28.11.2 = call zeroext i8 @mult(i8 zeroext %795, i8 zeroext %796)
  %conv29.11.2 = zext i8 %call28.11.2 to i32
  %xor.11.2 = xor i32 %conv23.11.2, %conv29.11.2
  %scevgep35.11.2 = getelementptr i8, i8* %a, i64 14
  %797 = load i8, i8* %scevgep35.11.2, align 1
  %798 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.2 = call zeroext i8 @mult(i8 zeroext %797, i8 zeroext %798)
  %conv35.11.2 = zext i8 %call34.11.2 to i32
  %xor36.11.2 = xor i32 %xor.11.2, %conv35.11.2
  %conv37.11.2 = trunc i32 %xor36.11.2 to i8
  store i8 %conv37.11.2, i8* %scevgep41.11.1, align 1
  %scevgep28.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %792, i64 0, i64 0, i64 1
  %scevgep41.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %793, i64 0, i64 1, i64 0
  %call16.11.3 = call zeroext i8 (...) @rand()
  store i8 %call16.11.3, i8* %scevgep28.11.2, align 1
  %799 = load i8, i8* %scevgep28.11.2, align 1
  %conv23.11.3 = zext i8 %799 to i32
  %800 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.3 = getelementptr i8, i8* %b, i64 15
  %801 = load i8, i8* %scevgep34.11.3, align 1
  %call28.11.3 = call zeroext i8 @mult(i8 zeroext %800, i8 zeroext %801)
  %conv29.11.3 = zext i8 %call28.11.3 to i32
  %xor.11.3 = xor i32 %conv23.11.3, %conv29.11.3
  %scevgep35.11.3 = getelementptr i8, i8* %a, i64 15
  %802 = load i8, i8* %scevgep35.11.3, align 1
  %803 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.3 = call zeroext i8 @mult(i8 zeroext %802, i8 zeroext %803)
  %conv35.11.3 = zext i8 %call34.11.3 to i32
  %xor36.11.3 = xor i32 %xor.11.3, %conv35.11.3
  %conv37.11.3 = trunc i32 %xor36.11.3 to i8
  store i8 %conv37.11.3, i8* %scevgep41.11.2, align 1
  %scevgep26.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %778, i64 0, i64 1, i64 1
  %804 = bitcast i8* %scevgep26.11 to [16 x [16 x i8]]*
  %scevgep39.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %779, i64 0, i64 1, i64 1
  %805 = bitcast i8* %scevgep39.11 to [16 x [16 x i8]]*
  %arrayidx25.12 = getelementptr inbounds i8, i8* %a, i64 12
  %arrayidx33.12 = getelementptr inbounds i8, i8* %b, i64 12
  %call16.12 = call zeroext i8 (...) @rand()
  store i8 %call16.12, i8* %scevgep26.11, align 1
  %806 = load i8, i8* %scevgep26.11, align 1
  %conv23.12 = zext i8 %806 to i32
  %807 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12 = getelementptr i8, i8* %b, i64 13
  %808 = load i8, i8* %scevgep34.12, align 1
  %call28.12 = call zeroext i8 @mult(i8 zeroext %807, i8 zeroext %808)
  %conv29.12 = zext i8 %call28.12 to i32
  %xor.12 = xor i32 %conv23.12, %conv29.12
  %scevgep35.12 = getelementptr i8, i8* %a, i64 13
  %809 = load i8, i8* %scevgep35.12, align 1
  %810 = load i8, i8* %arrayidx33.12, align 1
  %call34.12 = call zeroext i8 @mult(i8 zeroext %809, i8 zeroext %810)
  %conv35.12 = zext i8 %call34.12 to i32
  %xor36.12 = xor i32 %xor.12, %conv35.12
  %conv37.12 = trunc i32 %xor36.12 to i8
  store i8 %conv37.12, i8* %scevgep39.11, align 1
  %scevgep28.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %804, i64 0, i64 0, i64 1
  %811 = bitcast i8* %scevgep28.12 to [16 x [16 x i8]]*
  %scevgep41.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %805, i64 0, i64 1, i64 0
  %812 = bitcast i8* %scevgep41.12 to [16 x [16 x i8]]*
  %call16.12.1 = call zeroext i8 (...) @rand()
  store i8 %call16.12.1, i8* %scevgep28.12, align 1
  %813 = load i8, i8* %scevgep28.12, align 1
  %conv23.12.1 = zext i8 %813 to i32
  %814 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.1 = getelementptr i8, i8* %b, i64 14
  %815 = load i8, i8* %scevgep34.12.1, align 1
  %call28.12.1 = call zeroext i8 @mult(i8 zeroext %814, i8 zeroext %815)
  %conv29.12.1 = zext i8 %call28.12.1 to i32
  %xor.12.1 = xor i32 %conv23.12.1, %conv29.12.1
  %scevgep35.12.1 = getelementptr i8, i8* %a, i64 14
  %816 = load i8, i8* %scevgep35.12.1, align 1
  %817 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.1 = call zeroext i8 @mult(i8 zeroext %816, i8 zeroext %817)
  %conv35.12.1 = zext i8 %call34.12.1 to i32
  %xor36.12.1 = xor i32 %xor.12.1, %conv35.12.1
  %conv37.12.1 = trunc i32 %xor36.12.1 to i8
  store i8 %conv37.12.1, i8* %scevgep41.12, align 1
  %scevgep28.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %811, i64 0, i64 0, i64 1
  %scevgep41.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %812, i64 0, i64 1, i64 0
  %call16.12.2 = call zeroext i8 (...) @rand()
  store i8 %call16.12.2, i8* %scevgep28.12.1, align 1
  %818 = load i8, i8* %scevgep28.12.1, align 1
  %conv23.12.2 = zext i8 %818 to i32
  %819 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.2 = getelementptr i8, i8* %b, i64 15
  %820 = load i8, i8* %scevgep34.12.2, align 1
  %call28.12.2 = call zeroext i8 @mult(i8 zeroext %819, i8 zeroext %820)
  %conv29.12.2 = zext i8 %call28.12.2 to i32
  %xor.12.2 = xor i32 %conv23.12.2, %conv29.12.2
  %scevgep35.12.2 = getelementptr i8, i8* %a, i64 15
  %821 = load i8, i8* %scevgep35.12.2, align 1
  %822 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.2 = call zeroext i8 @mult(i8 zeroext %821, i8 zeroext %822)
  %conv35.12.2 = zext i8 %call34.12.2 to i32
  %xor36.12.2 = xor i32 %xor.12.2, %conv35.12.2
  %conv37.12.2 = trunc i32 %xor36.12.2 to i8
  store i8 %conv37.12.2, i8* %scevgep41.12.1, align 1
  %scevgep26.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %804, i64 0, i64 1, i64 1
  %823 = bitcast i8* %scevgep26.12 to [16 x [16 x i8]]*
  %scevgep39.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %805, i64 0, i64 1, i64 1
  %824 = bitcast i8* %scevgep39.12 to [16 x [16 x i8]]*
  %arrayidx25.13 = getelementptr inbounds i8, i8* %a, i64 13
  %arrayidx33.13 = getelementptr inbounds i8, i8* %b, i64 13
  %call16.13 = call zeroext i8 (...) @rand()
  store i8 %call16.13, i8* %scevgep26.12, align 1
  %825 = load i8, i8* %scevgep26.12, align 1
  %conv23.13 = zext i8 %825 to i32
  %826 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13 = getelementptr i8, i8* %b, i64 14
  %827 = load i8, i8* %scevgep34.13, align 1
  %call28.13 = call zeroext i8 @mult(i8 zeroext %826, i8 zeroext %827)
  %conv29.13 = zext i8 %call28.13 to i32
  %xor.13 = xor i32 %conv23.13, %conv29.13
  %scevgep35.13 = getelementptr i8, i8* %a, i64 14
  %828 = load i8, i8* %scevgep35.13, align 1
  %829 = load i8, i8* %arrayidx33.13, align 1
  %call34.13 = call zeroext i8 @mult(i8 zeroext %828, i8 zeroext %829)
  %conv35.13 = zext i8 %call34.13 to i32
  %xor36.13 = xor i32 %xor.13, %conv35.13
  %conv37.13 = trunc i32 %xor36.13 to i8
  store i8 %conv37.13, i8* %scevgep39.12, align 1
  %scevgep28.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %823, i64 0, i64 0, i64 1
  %scevgep41.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %824, i64 0, i64 1, i64 0
  %call16.13.1 = call zeroext i8 (...) @rand()
  store i8 %call16.13.1, i8* %scevgep28.13, align 1
  %830 = load i8, i8* %scevgep28.13, align 1
  %conv23.13.1 = zext i8 %830 to i32
  %831 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.1 = getelementptr i8, i8* %b, i64 15
  %832 = load i8, i8* %scevgep34.13.1, align 1
  %call28.13.1 = call zeroext i8 @mult(i8 zeroext %831, i8 zeroext %832)
  %conv29.13.1 = zext i8 %call28.13.1 to i32
  %xor.13.1 = xor i32 %conv23.13.1, %conv29.13.1
  %scevgep35.13.1 = getelementptr i8, i8* %a, i64 15
  %833 = load i8, i8* %scevgep35.13.1, align 1
  %834 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.1 = call zeroext i8 @mult(i8 zeroext %833, i8 zeroext %834)
  %conv35.13.1 = zext i8 %call34.13.1 to i32
  %xor36.13.1 = xor i32 %xor.13.1, %conv35.13.1
  %conv37.13.1 = trunc i32 %xor36.13.1 to i8
  store i8 %conv37.13.1, i8* %scevgep41.13, align 1
  %scevgep26.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %823, i64 0, i64 1, i64 1
  %scevgep39.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %824, i64 0, i64 1, i64 1
  %arrayidx25.14 = getelementptr inbounds i8, i8* %a, i64 14
  %arrayidx33.14 = getelementptr inbounds i8, i8* %b, i64 14
  %call16.14 = call zeroext i8 (...) @rand()
  store i8 %call16.14, i8* %scevgep26.13, align 1
  %835 = load i8, i8* %scevgep26.13, align 1
  %conv23.14 = zext i8 %835 to i32
  %836 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14 = getelementptr i8, i8* %b, i64 15
  %837 = load i8, i8* %scevgep34.14, align 1
  %call28.14 = call zeroext i8 @mult(i8 zeroext %836, i8 zeroext %837)
  %conv29.14 = zext i8 %call28.14 to i32
  %xor.14 = xor i32 %conv23.14, %conv29.14
  %scevgep35.14 = getelementptr i8, i8* %a, i64 15
  %838 = load i8, i8* %scevgep35.14, align 1
  %839 = load i8, i8* %arrayidx33.14, align 1
  %call34.14 = call zeroext i8 @mult(i8 zeroext %838, i8 zeroext %839)
  %conv35.14 = zext i8 %call34.14 to i32
  %xor36.14 = xor i32 %xor.14, %conv35.14
  %conv37.14 = trunc i32 %xor36.14 to i8
  store i8 %conv37.14, i8* %scevgep39.13, align 1
  %840 = load i8, i8* %a, align 1
  %841 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %840, i8 zeroext %841)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %842 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %842 to i32
  %843 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %843 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 2
  %844 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %844 to i32
  %845 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %845 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 3
  %846 = load i8, i8* %scevgep20.3, align 1
  %conv68.3 = zext i8 %846 to i32
  %847 = load i8, i8* %c, align 1
  %conv71.3 = zext i8 %847 to i32
  %xor72.3 = xor i32 %conv71.3, %conv68.3
  %conv73.3 = trunc i32 %xor72.3 to i8
  store i8 %conv73.3, i8* %c, align 1
  %scevgep20.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 4
  %848 = load i8, i8* %scevgep20.4, align 1
  %conv68.4 = zext i8 %848 to i32
  %849 = load i8, i8* %c, align 1
  %conv71.4 = zext i8 %849 to i32
  %xor72.4 = xor i32 %conv71.4, %conv68.4
  %conv73.4 = trunc i32 %xor72.4 to i8
  store i8 %conv73.4, i8* %c, align 1
  %scevgep20.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 5
  %850 = load i8, i8* %scevgep20.5, align 1
  %conv68.5 = zext i8 %850 to i32
  %851 = load i8, i8* %c, align 1
  %conv71.5 = zext i8 %851 to i32
  %xor72.5 = xor i32 %conv71.5, %conv68.5
  %conv73.5 = trunc i32 %xor72.5 to i8
  store i8 %conv73.5, i8* %c, align 1
  %scevgep20.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 6
  %852 = load i8, i8* %scevgep20.6, align 1
  %conv68.6 = zext i8 %852 to i32
  %853 = load i8, i8* %c, align 1
  %conv71.6 = zext i8 %853 to i32
  %xor72.6 = xor i32 %conv71.6, %conv68.6
  %conv73.6 = trunc i32 %xor72.6 to i8
  store i8 %conv73.6, i8* %c, align 1
  %scevgep20.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 7
  %854 = load i8, i8* %scevgep20.7, align 1
  %conv68.7 = zext i8 %854 to i32
  %855 = load i8, i8* %c, align 1
  %conv71.7 = zext i8 %855 to i32
  %xor72.7 = xor i32 %conv71.7, %conv68.7
  %conv73.7 = trunc i32 %xor72.7 to i8
  store i8 %conv73.7, i8* %c, align 1
  %scevgep20.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 8
  %856 = load i8, i8* %scevgep20.8, align 1
  %conv68.8 = zext i8 %856 to i32
  %857 = load i8, i8* %c, align 1
  %conv71.8 = zext i8 %857 to i32
  %xor72.8 = xor i32 %conv71.8, %conv68.8
  %conv73.8 = trunc i32 %xor72.8 to i8
  store i8 %conv73.8, i8* %c, align 1
  %scevgep20.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 9
  %858 = load i8, i8* %scevgep20.9, align 1
  %conv68.9 = zext i8 %858 to i32
  %859 = load i8, i8* %c, align 1
  %conv71.9 = zext i8 %859 to i32
  %xor72.9 = xor i32 %conv71.9, %conv68.9
  %conv73.9 = trunc i32 %xor72.9 to i8
  store i8 %conv73.9, i8* %c, align 1
  %scevgep20.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 10
  %860 = load i8, i8* %scevgep20.10, align 1
  %conv68.10 = zext i8 %860 to i32
  %861 = load i8, i8* %c, align 1
  %conv71.10 = zext i8 %861 to i32
  %xor72.10 = xor i32 %conv71.10, %conv68.10
  %conv73.10 = trunc i32 %xor72.10 to i8
  store i8 %conv73.10, i8* %c, align 1
  %scevgep20.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 11
  %862 = load i8, i8* %scevgep20.11, align 1
  %conv68.11 = zext i8 %862 to i32
  %863 = load i8, i8* %c, align 1
  %conv71.11 = zext i8 %863 to i32
  %xor72.11 = xor i32 %conv71.11, %conv68.11
  %conv73.11 = trunc i32 %xor72.11 to i8
  store i8 %conv73.11, i8* %c, align 1
  %scevgep20.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 12
  %864 = load i8, i8* %scevgep20.12, align 1
  %conv68.12 = zext i8 %864 to i32
  %865 = load i8, i8* %c, align 1
  %conv71.12 = zext i8 %865 to i32
  %xor72.12 = xor i32 %conv71.12, %conv68.12
  %conv73.12 = trunc i32 %xor72.12 to i8
  store i8 %conv73.12, i8* %c, align 1
  %scevgep20.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 13
  %866 = load i8, i8* %scevgep20.13, align 1
  %conv68.13 = zext i8 %866 to i32
  %867 = load i8, i8* %c, align 1
  %conv71.13 = zext i8 %867 to i32
  %xor72.13 = xor i32 %conv71.13, %conv68.13
  %conv73.13 = trunc i32 %xor72.13 to i8
  store i8 %conv73.13, i8* %c, align 1
  %scevgep20.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 14
  %868 = load i8, i8* %scevgep20.14, align 1
  %conv68.14 = zext i8 %868 to i32
  %869 = load i8, i8* %c, align 1
  %conv71.14 = zext i8 %869 to i32
  %xor72.14 = xor i32 %conv71.14, %conv68.14
  %conv73.14 = trunc i32 %xor72.14 to i8
  store i8 %conv73.14, i8* %c, align 1
  %scevgep20.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 15
  %870 = load i8, i8* %scevgep20.15, align 1
  %conv68.15 = zext i8 %870 to i32
  %871 = load i8, i8* %c, align 1
  %conv71.15 = zext i8 %871 to i32
  %xor72.15 = xor i32 %conv71.15, %conv68.15
  %conv73.15 = trunc i32 %xor72.15 to i8
  store i8 %conv73.15, i8* %c, align 1
  %scevgep19 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1, i64 0
  %872 = bitcast i8* %scevgep19 to [16 x [16 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %873 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %874 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %873, i8 zeroext %874)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.154 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 0
  %875 = load i8, i8* %scevgep20.154, align 1
  %conv68.155 = zext i8 %875 to i32
  %876 = load i8, i8* %arrayidx70.1, align 1
  %conv71.156 = zext i8 %876 to i32
  %xor72.157 = xor i32 %conv71.156, %conv68.155
  %conv73.158 = trunc i32 %xor72.157 to i8
  store i8 %conv73.158, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 2
  %877 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %877 to i32
  %878 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %878 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep20.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 3
  %879 = load i8, i8* %scevgep20.3.1, align 1
  %conv68.3.1 = zext i8 %879 to i32
  %880 = load i8, i8* %arrayidx70.1, align 1
  %conv71.3.1 = zext i8 %880 to i32
  %xor72.3.1 = xor i32 %conv71.3.1, %conv68.3.1
  %conv73.3.1 = trunc i32 %xor72.3.1 to i8
  store i8 %conv73.3.1, i8* %arrayidx70.1, align 1
  %scevgep20.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 4
  %881 = load i8, i8* %scevgep20.4.1, align 1
  %conv68.4.1 = zext i8 %881 to i32
  %882 = load i8, i8* %arrayidx70.1, align 1
  %conv71.4.1 = zext i8 %882 to i32
  %xor72.4.1 = xor i32 %conv71.4.1, %conv68.4.1
  %conv73.4.1 = trunc i32 %xor72.4.1 to i8
  store i8 %conv73.4.1, i8* %arrayidx70.1, align 1
  %scevgep20.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 5
  %883 = load i8, i8* %scevgep20.5.1, align 1
  %conv68.5.1 = zext i8 %883 to i32
  %884 = load i8, i8* %arrayidx70.1, align 1
  %conv71.5.1 = zext i8 %884 to i32
  %xor72.5.1 = xor i32 %conv71.5.1, %conv68.5.1
  %conv73.5.1 = trunc i32 %xor72.5.1 to i8
  store i8 %conv73.5.1, i8* %arrayidx70.1, align 1
  %scevgep20.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 6
  %885 = load i8, i8* %scevgep20.6.1, align 1
  %conv68.6.1 = zext i8 %885 to i32
  %886 = load i8, i8* %arrayidx70.1, align 1
  %conv71.6.1 = zext i8 %886 to i32
  %xor72.6.1 = xor i32 %conv71.6.1, %conv68.6.1
  %conv73.6.1 = trunc i32 %xor72.6.1 to i8
  store i8 %conv73.6.1, i8* %arrayidx70.1, align 1
  %scevgep20.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 7
  %887 = load i8, i8* %scevgep20.7.1, align 1
  %conv68.7.1 = zext i8 %887 to i32
  %888 = load i8, i8* %arrayidx70.1, align 1
  %conv71.7.1 = zext i8 %888 to i32
  %xor72.7.1 = xor i32 %conv71.7.1, %conv68.7.1
  %conv73.7.1 = trunc i32 %xor72.7.1 to i8
  store i8 %conv73.7.1, i8* %arrayidx70.1, align 1
  %scevgep20.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 8
  %889 = load i8, i8* %scevgep20.8.1, align 1
  %conv68.8.1 = zext i8 %889 to i32
  %890 = load i8, i8* %arrayidx70.1, align 1
  %conv71.8.1 = zext i8 %890 to i32
  %xor72.8.1 = xor i32 %conv71.8.1, %conv68.8.1
  %conv73.8.1 = trunc i32 %xor72.8.1 to i8
  store i8 %conv73.8.1, i8* %arrayidx70.1, align 1
  %scevgep20.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 9
  %891 = load i8, i8* %scevgep20.9.1, align 1
  %conv68.9.1 = zext i8 %891 to i32
  %892 = load i8, i8* %arrayidx70.1, align 1
  %conv71.9.1 = zext i8 %892 to i32
  %xor72.9.1 = xor i32 %conv71.9.1, %conv68.9.1
  %conv73.9.1 = trunc i32 %xor72.9.1 to i8
  store i8 %conv73.9.1, i8* %arrayidx70.1, align 1
  %scevgep20.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 10
  %893 = load i8, i8* %scevgep20.10.1, align 1
  %conv68.10.1 = zext i8 %893 to i32
  %894 = load i8, i8* %arrayidx70.1, align 1
  %conv71.10.1 = zext i8 %894 to i32
  %xor72.10.1 = xor i32 %conv71.10.1, %conv68.10.1
  %conv73.10.1 = trunc i32 %xor72.10.1 to i8
  store i8 %conv73.10.1, i8* %arrayidx70.1, align 1
  %scevgep20.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 11
  %895 = load i8, i8* %scevgep20.11.1, align 1
  %conv68.11.1 = zext i8 %895 to i32
  %896 = load i8, i8* %arrayidx70.1, align 1
  %conv71.11.1 = zext i8 %896 to i32
  %xor72.11.1 = xor i32 %conv71.11.1, %conv68.11.1
  %conv73.11.1 = trunc i32 %xor72.11.1 to i8
  store i8 %conv73.11.1, i8* %arrayidx70.1, align 1
  %scevgep20.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 12
  %897 = load i8, i8* %scevgep20.12.1, align 1
  %conv68.12.1 = zext i8 %897 to i32
  %898 = load i8, i8* %arrayidx70.1, align 1
  %conv71.12.1 = zext i8 %898 to i32
  %xor72.12.1 = xor i32 %conv71.12.1, %conv68.12.1
  %conv73.12.1 = trunc i32 %xor72.12.1 to i8
  store i8 %conv73.12.1, i8* %arrayidx70.1, align 1
  %scevgep20.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 13
  %899 = load i8, i8* %scevgep20.13.1, align 1
  %conv68.13.1 = zext i8 %899 to i32
  %900 = load i8, i8* %arrayidx70.1, align 1
  %conv71.13.1 = zext i8 %900 to i32
  %xor72.13.1 = xor i32 %conv71.13.1, %conv68.13.1
  %conv73.13.1 = trunc i32 %xor72.13.1 to i8
  store i8 %conv73.13.1, i8* %arrayidx70.1, align 1
  %scevgep20.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 14
  %901 = load i8, i8* %scevgep20.14.1, align 1
  %conv68.14.1 = zext i8 %901 to i32
  %902 = load i8, i8* %arrayidx70.1, align 1
  %conv71.14.1 = zext i8 %902 to i32
  %xor72.14.1 = xor i32 %conv71.14.1, %conv68.14.1
  %conv73.14.1 = trunc i32 %xor72.14.1 to i8
  store i8 %conv73.14.1, i8* %arrayidx70.1, align 1
  %scevgep20.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 0, i64 15
  %903 = load i8, i8* %scevgep20.15.1, align 1
  %conv68.15.1 = zext i8 %903 to i32
  %904 = load i8, i8* %arrayidx70.1, align 1
  %conv71.15.1 = zext i8 %904 to i32
  %xor72.15.1 = xor i32 %conv71.15.1, %conv68.15.1
  %conv73.15.1 = trunc i32 %xor72.15.1 to i8
  store i8 %conv73.15.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %872, i64 0, i64 1, i64 0
  %905 = bitcast i8* %scevgep19.1 to [16 x [16 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %906 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %907 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %906, i8 zeroext %907)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.264 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 0
  %908 = load i8, i8* %scevgep20.264, align 1
  %conv68.265 = zext i8 %908 to i32
  %909 = load i8, i8* %arrayidx70.2, align 1
  %conv71.266 = zext i8 %909 to i32
  %xor72.267 = xor i32 %conv71.266, %conv68.265
  %conv73.268 = trunc i32 %xor72.267 to i8
  store i8 %conv73.268, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 1
  %910 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %910 to i32
  %911 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %911 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %scevgep20.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 3
  %912 = load i8, i8* %scevgep20.3.2, align 1
  %conv68.3.2 = zext i8 %912 to i32
  %913 = load i8, i8* %arrayidx70.2, align 1
  %conv71.3.2 = zext i8 %913 to i32
  %xor72.3.2 = xor i32 %conv71.3.2, %conv68.3.2
  %conv73.3.2 = trunc i32 %xor72.3.2 to i8
  store i8 %conv73.3.2, i8* %arrayidx70.2, align 1
  %scevgep20.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 4
  %914 = load i8, i8* %scevgep20.4.2, align 1
  %conv68.4.2 = zext i8 %914 to i32
  %915 = load i8, i8* %arrayidx70.2, align 1
  %conv71.4.2 = zext i8 %915 to i32
  %xor72.4.2 = xor i32 %conv71.4.2, %conv68.4.2
  %conv73.4.2 = trunc i32 %xor72.4.2 to i8
  store i8 %conv73.4.2, i8* %arrayidx70.2, align 1
  %scevgep20.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 5
  %916 = load i8, i8* %scevgep20.5.2, align 1
  %conv68.5.2 = zext i8 %916 to i32
  %917 = load i8, i8* %arrayidx70.2, align 1
  %conv71.5.2 = zext i8 %917 to i32
  %xor72.5.2 = xor i32 %conv71.5.2, %conv68.5.2
  %conv73.5.2 = trunc i32 %xor72.5.2 to i8
  store i8 %conv73.5.2, i8* %arrayidx70.2, align 1
  %scevgep20.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 6
  %918 = load i8, i8* %scevgep20.6.2, align 1
  %conv68.6.2 = zext i8 %918 to i32
  %919 = load i8, i8* %arrayidx70.2, align 1
  %conv71.6.2 = zext i8 %919 to i32
  %xor72.6.2 = xor i32 %conv71.6.2, %conv68.6.2
  %conv73.6.2 = trunc i32 %xor72.6.2 to i8
  store i8 %conv73.6.2, i8* %arrayidx70.2, align 1
  %scevgep20.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 7
  %920 = load i8, i8* %scevgep20.7.2, align 1
  %conv68.7.2 = zext i8 %920 to i32
  %921 = load i8, i8* %arrayidx70.2, align 1
  %conv71.7.2 = zext i8 %921 to i32
  %xor72.7.2 = xor i32 %conv71.7.2, %conv68.7.2
  %conv73.7.2 = trunc i32 %xor72.7.2 to i8
  store i8 %conv73.7.2, i8* %arrayidx70.2, align 1
  %scevgep20.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 8
  %922 = load i8, i8* %scevgep20.8.2, align 1
  %conv68.8.2 = zext i8 %922 to i32
  %923 = load i8, i8* %arrayidx70.2, align 1
  %conv71.8.2 = zext i8 %923 to i32
  %xor72.8.2 = xor i32 %conv71.8.2, %conv68.8.2
  %conv73.8.2 = trunc i32 %xor72.8.2 to i8
  store i8 %conv73.8.2, i8* %arrayidx70.2, align 1
  %scevgep20.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 9
  %924 = load i8, i8* %scevgep20.9.2, align 1
  %conv68.9.2 = zext i8 %924 to i32
  %925 = load i8, i8* %arrayidx70.2, align 1
  %conv71.9.2 = zext i8 %925 to i32
  %xor72.9.2 = xor i32 %conv71.9.2, %conv68.9.2
  %conv73.9.2 = trunc i32 %xor72.9.2 to i8
  store i8 %conv73.9.2, i8* %arrayidx70.2, align 1
  %scevgep20.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 10
  %926 = load i8, i8* %scevgep20.10.2, align 1
  %conv68.10.2 = zext i8 %926 to i32
  %927 = load i8, i8* %arrayidx70.2, align 1
  %conv71.10.2 = zext i8 %927 to i32
  %xor72.10.2 = xor i32 %conv71.10.2, %conv68.10.2
  %conv73.10.2 = trunc i32 %xor72.10.2 to i8
  store i8 %conv73.10.2, i8* %arrayidx70.2, align 1
  %scevgep20.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 11
  %928 = load i8, i8* %scevgep20.11.2, align 1
  %conv68.11.2 = zext i8 %928 to i32
  %929 = load i8, i8* %arrayidx70.2, align 1
  %conv71.11.2 = zext i8 %929 to i32
  %xor72.11.2 = xor i32 %conv71.11.2, %conv68.11.2
  %conv73.11.2 = trunc i32 %xor72.11.2 to i8
  store i8 %conv73.11.2, i8* %arrayidx70.2, align 1
  %scevgep20.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 12
  %930 = load i8, i8* %scevgep20.12.2, align 1
  %conv68.12.2 = zext i8 %930 to i32
  %931 = load i8, i8* %arrayidx70.2, align 1
  %conv71.12.2 = zext i8 %931 to i32
  %xor72.12.2 = xor i32 %conv71.12.2, %conv68.12.2
  %conv73.12.2 = trunc i32 %xor72.12.2 to i8
  store i8 %conv73.12.2, i8* %arrayidx70.2, align 1
  %scevgep20.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 13
  %932 = load i8, i8* %scevgep20.13.2, align 1
  %conv68.13.2 = zext i8 %932 to i32
  %933 = load i8, i8* %arrayidx70.2, align 1
  %conv71.13.2 = zext i8 %933 to i32
  %xor72.13.2 = xor i32 %conv71.13.2, %conv68.13.2
  %conv73.13.2 = trunc i32 %xor72.13.2 to i8
  store i8 %conv73.13.2, i8* %arrayidx70.2, align 1
  %scevgep20.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 14
  %934 = load i8, i8* %scevgep20.14.2, align 1
  %conv68.14.2 = zext i8 %934 to i32
  %935 = load i8, i8* %arrayidx70.2, align 1
  %conv71.14.2 = zext i8 %935 to i32
  %xor72.14.2 = xor i32 %conv71.14.2, %conv68.14.2
  %conv73.14.2 = trunc i32 %xor72.14.2 to i8
  store i8 %conv73.14.2, i8* %arrayidx70.2, align 1
  %scevgep20.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 0, i64 15
  %936 = load i8, i8* %scevgep20.15.2, align 1
  %conv68.15.2 = zext i8 %936 to i32
  %937 = load i8, i8* %arrayidx70.2, align 1
  %conv71.15.2 = zext i8 %937 to i32
  %xor72.15.2 = xor i32 %conv71.15.2, %conv68.15.2
  %conv73.15.2 = trunc i32 %xor72.15.2 to i8
  store i8 %conv73.15.2, i8* %arrayidx70.2, align 1
  %scevgep19.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %905, i64 0, i64 1, i64 0
  %938 = bitcast i8* %scevgep19.2 to [16 x [16 x i8]]*
  %arrayidx51.3 = getelementptr inbounds i8, i8* %a, i64 3
  %939 = load i8, i8* %arrayidx51.3, align 1
  %arrayidx53.3 = getelementptr inbounds i8, i8* %b, i64 3
  %940 = load i8, i8* %arrayidx53.3, align 1
  %call54.3 = call zeroext i8 @mult(i8 zeroext %939, i8 zeroext %940)
  %arrayidx56.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call54.3, i8* %arrayidx56.3, align 1
  %arrayidx70.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.374 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 0
  %941 = load i8, i8* %scevgep20.374, align 1
  %conv68.375 = zext i8 %941 to i32
  %942 = load i8, i8* %arrayidx70.3, align 1
  %conv71.376 = zext i8 %942 to i32
  %xor72.377 = xor i32 %conv71.376, %conv68.375
  %conv73.378 = trunc i32 %xor72.377 to i8
  store i8 %conv73.378, i8* %arrayidx70.3, align 1
  %scevgep20.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 1
  %943 = load i8, i8* %scevgep20.1.3, align 1
  %conv68.1.3 = zext i8 %943 to i32
  %944 = load i8, i8* %arrayidx70.3, align 1
  %conv71.1.3 = zext i8 %944 to i32
  %xor72.1.3 = xor i32 %conv71.1.3, %conv68.1.3
  %conv73.1.3 = trunc i32 %xor72.1.3 to i8
  store i8 %conv73.1.3, i8* %arrayidx70.3, align 1
  %scevgep20.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 2
  %945 = load i8, i8* %scevgep20.2.3, align 1
  %conv68.2.3 = zext i8 %945 to i32
  %946 = load i8, i8* %arrayidx70.3, align 1
  %conv71.2.3 = zext i8 %946 to i32
  %xor72.2.3 = xor i32 %conv71.2.3, %conv68.2.3
  %conv73.2.3 = trunc i32 %xor72.2.3 to i8
  store i8 %conv73.2.3, i8* %arrayidx70.3, align 1
  %scevgep20.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 4
  %947 = load i8, i8* %scevgep20.4.3, align 1
  %conv68.4.3 = zext i8 %947 to i32
  %948 = load i8, i8* %arrayidx70.3, align 1
  %conv71.4.3 = zext i8 %948 to i32
  %xor72.4.3 = xor i32 %conv71.4.3, %conv68.4.3
  %conv73.4.3 = trunc i32 %xor72.4.3 to i8
  store i8 %conv73.4.3, i8* %arrayidx70.3, align 1
  %scevgep20.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 5
  %949 = load i8, i8* %scevgep20.5.3, align 1
  %conv68.5.3 = zext i8 %949 to i32
  %950 = load i8, i8* %arrayidx70.3, align 1
  %conv71.5.3 = zext i8 %950 to i32
  %xor72.5.3 = xor i32 %conv71.5.3, %conv68.5.3
  %conv73.5.3 = trunc i32 %xor72.5.3 to i8
  store i8 %conv73.5.3, i8* %arrayidx70.3, align 1
  %scevgep20.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 6
  %951 = load i8, i8* %scevgep20.6.3, align 1
  %conv68.6.3 = zext i8 %951 to i32
  %952 = load i8, i8* %arrayidx70.3, align 1
  %conv71.6.3 = zext i8 %952 to i32
  %xor72.6.3 = xor i32 %conv71.6.3, %conv68.6.3
  %conv73.6.3 = trunc i32 %xor72.6.3 to i8
  store i8 %conv73.6.3, i8* %arrayidx70.3, align 1
  %scevgep20.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 7
  %953 = load i8, i8* %scevgep20.7.3, align 1
  %conv68.7.3 = zext i8 %953 to i32
  %954 = load i8, i8* %arrayidx70.3, align 1
  %conv71.7.3 = zext i8 %954 to i32
  %xor72.7.3 = xor i32 %conv71.7.3, %conv68.7.3
  %conv73.7.3 = trunc i32 %xor72.7.3 to i8
  store i8 %conv73.7.3, i8* %arrayidx70.3, align 1
  %scevgep20.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 8
  %955 = load i8, i8* %scevgep20.8.3, align 1
  %conv68.8.3 = zext i8 %955 to i32
  %956 = load i8, i8* %arrayidx70.3, align 1
  %conv71.8.3 = zext i8 %956 to i32
  %xor72.8.3 = xor i32 %conv71.8.3, %conv68.8.3
  %conv73.8.3 = trunc i32 %xor72.8.3 to i8
  store i8 %conv73.8.3, i8* %arrayidx70.3, align 1
  %scevgep20.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 9
  %957 = load i8, i8* %scevgep20.9.3, align 1
  %conv68.9.3 = zext i8 %957 to i32
  %958 = load i8, i8* %arrayidx70.3, align 1
  %conv71.9.3 = zext i8 %958 to i32
  %xor72.9.3 = xor i32 %conv71.9.3, %conv68.9.3
  %conv73.9.3 = trunc i32 %xor72.9.3 to i8
  store i8 %conv73.9.3, i8* %arrayidx70.3, align 1
  %scevgep20.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 10
  %959 = load i8, i8* %scevgep20.10.3, align 1
  %conv68.10.3 = zext i8 %959 to i32
  %960 = load i8, i8* %arrayidx70.3, align 1
  %conv71.10.3 = zext i8 %960 to i32
  %xor72.10.3 = xor i32 %conv71.10.3, %conv68.10.3
  %conv73.10.3 = trunc i32 %xor72.10.3 to i8
  store i8 %conv73.10.3, i8* %arrayidx70.3, align 1
  %scevgep20.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 11
  %961 = load i8, i8* %scevgep20.11.3, align 1
  %conv68.11.3 = zext i8 %961 to i32
  %962 = load i8, i8* %arrayidx70.3, align 1
  %conv71.11.3 = zext i8 %962 to i32
  %xor72.11.3 = xor i32 %conv71.11.3, %conv68.11.3
  %conv73.11.3 = trunc i32 %xor72.11.3 to i8
  store i8 %conv73.11.3, i8* %arrayidx70.3, align 1
  %scevgep20.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 12
  %963 = load i8, i8* %scevgep20.12.3, align 1
  %conv68.12.3 = zext i8 %963 to i32
  %964 = load i8, i8* %arrayidx70.3, align 1
  %conv71.12.3 = zext i8 %964 to i32
  %xor72.12.3 = xor i32 %conv71.12.3, %conv68.12.3
  %conv73.12.3 = trunc i32 %xor72.12.3 to i8
  store i8 %conv73.12.3, i8* %arrayidx70.3, align 1
  %scevgep20.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 13
  %965 = load i8, i8* %scevgep20.13.3, align 1
  %conv68.13.3 = zext i8 %965 to i32
  %966 = load i8, i8* %arrayidx70.3, align 1
  %conv71.13.3 = zext i8 %966 to i32
  %xor72.13.3 = xor i32 %conv71.13.3, %conv68.13.3
  %conv73.13.3 = trunc i32 %xor72.13.3 to i8
  store i8 %conv73.13.3, i8* %arrayidx70.3, align 1
  %scevgep20.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 14
  %967 = load i8, i8* %scevgep20.14.3, align 1
  %conv68.14.3 = zext i8 %967 to i32
  %968 = load i8, i8* %arrayidx70.3, align 1
  %conv71.14.3 = zext i8 %968 to i32
  %xor72.14.3 = xor i32 %conv71.14.3, %conv68.14.3
  %conv73.14.3 = trunc i32 %xor72.14.3 to i8
  store i8 %conv73.14.3, i8* %arrayidx70.3, align 1
  %scevgep20.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 0, i64 15
  %969 = load i8, i8* %scevgep20.15.3, align 1
  %conv68.15.3 = zext i8 %969 to i32
  %970 = load i8, i8* %arrayidx70.3, align 1
  %conv71.15.3 = zext i8 %970 to i32
  %xor72.15.3 = xor i32 %conv71.15.3, %conv68.15.3
  %conv73.15.3 = trunc i32 %xor72.15.3 to i8
  store i8 %conv73.15.3, i8* %arrayidx70.3, align 1
  %scevgep19.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %938, i64 0, i64 1, i64 0
  %971 = bitcast i8* %scevgep19.3 to [16 x [16 x i8]]*
  %arrayidx51.4 = getelementptr inbounds i8, i8* %a, i64 4
  %972 = load i8, i8* %arrayidx51.4, align 1
  %arrayidx53.4 = getelementptr inbounds i8, i8* %b, i64 4
  %973 = load i8, i8* %arrayidx53.4, align 1
  %call54.4 = call zeroext i8 @mult(i8 zeroext %972, i8 zeroext %973)
  %arrayidx56.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call54.4, i8* %arrayidx56.4, align 1
  %arrayidx70.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep20.484 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 0
  %974 = load i8, i8* %scevgep20.484, align 1
  %conv68.485 = zext i8 %974 to i32
  %975 = load i8, i8* %arrayidx70.4, align 1
  %conv71.486 = zext i8 %975 to i32
  %xor72.487 = xor i32 %conv71.486, %conv68.485
  %conv73.488 = trunc i32 %xor72.487 to i8
  store i8 %conv73.488, i8* %arrayidx70.4, align 1
  %scevgep20.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 1
  %976 = load i8, i8* %scevgep20.1.4, align 1
  %conv68.1.4 = zext i8 %976 to i32
  %977 = load i8, i8* %arrayidx70.4, align 1
  %conv71.1.4 = zext i8 %977 to i32
  %xor72.1.4 = xor i32 %conv71.1.4, %conv68.1.4
  %conv73.1.4 = trunc i32 %xor72.1.4 to i8
  store i8 %conv73.1.4, i8* %arrayidx70.4, align 1
  %scevgep20.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 2
  %978 = load i8, i8* %scevgep20.2.4, align 1
  %conv68.2.4 = zext i8 %978 to i32
  %979 = load i8, i8* %arrayidx70.4, align 1
  %conv71.2.4 = zext i8 %979 to i32
  %xor72.2.4 = xor i32 %conv71.2.4, %conv68.2.4
  %conv73.2.4 = trunc i32 %xor72.2.4 to i8
  store i8 %conv73.2.4, i8* %arrayidx70.4, align 1
  %scevgep20.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 3
  %980 = load i8, i8* %scevgep20.3.4, align 1
  %conv68.3.4 = zext i8 %980 to i32
  %981 = load i8, i8* %arrayidx70.4, align 1
  %conv71.3.4 = zext i8 %981 to i32
  %xor72.3.4 = xor i32 %conv71.3.4, %conv68.3.4
  %conv73.3.4 = trunc i32 %xor72.3.4 to i8
  store i8 %conv73.3.4, i8* %arrayidx70.4, align 1
  %scevgep20.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 5
  %982 = load i8, i8* %scevgep20.5.4, align 1
  %conv68.5.4 = zext i8 %982 to i32
  %983 = load i8, i8* %arrayidx70.4, align 1
  %conv71.5.4 = zext i8 %983 to i32
  %xor72.5.4 = xor i32 %conv71.5.4, %conv68.5.4
  %conv73.5.4 = trunc i32 %xor72.5.4 to i8
  store i8 %conv73.5.4, i8* %arrayidx70.4, align 1
  %scevgep20.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 6
  %984 = load i8, i8* %scevgep20.6.4, align 1
  %conv68.6.4 = zext i8 %984 to i32
  %985 = load i8, i8* %arrayidx70.4, align 1
  %conv71.6.4 = zext i8 %985 to i32
  %xor72.6.4 = xor i32 %conv71.6.4, %conv68.6.4
  %conv73.6.4 = trunc i32 %xor72.6.4 to i8
  store i8 %conv73.6.4, i8* %arrayidx70.4, align 1
  %scevgep20.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 7
  %986 = load i8, i8* %scevgep20.7.4, align 1
  %conv68.7.4 = zext i8 %986 to i32
  %987 = load i8, i8* %arrayidx70.4, align 1
  %conv71.7.4 = zext i8 %987 to i32
  %xor72.7.4 = xor i32 %conv71.7.4, %conv68.7.4
  %conv73.7.4 = trunc i32 %xor72.7.4 to i8
  store i8 %conv73.7.4, i8* %arrayidx70.4, align 1
  %scevgep20.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 8
  %988 = load i8, i8* %scevgep20.8.4, align 1
  %conv68.8.4 = zext i8 %988 to i32
  %989 = load i8, i8* %arrayidx70.4, align 1
  %conv71.8.4 = zext i8 %989 to i32
  %xor72.8.4 = xor i32 %conv71.8.4, %conv68.8.4
  %conv73.8.4 = trunc i32 %xor72.8.4 to i8
  store i8 %conv73.8.4, i8* %arrayidx70.4, align 1
  %scevgep20.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 9
  %990 = load i8, i8* %scevgep20.9.4, align 1
  %conv68.9.4 = zext i8 %990 to i32
  %991 = load i8, i8* %arrayidx70.4, align 1
  %conv71.9.4 = zext i8 %991 to i32
  %xor72.9.4 = xor i32 %conv71.9.4, %conv68.9.4
  %conv73.9.4 = trunc i32 %xor72.9.4 to i8
  store i8 %conv73.9.4, i8* %arrayidx70.4, align 1
  %scevgep20.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 10
  %992 = load i8, i8* %scevgep20.10.4, align 1
  %conv68.10.4 = zext i8 %992 to i32
  %993 = load i8, i8* %arrayidx70.4, align 1
  %conv71.10.4 = zext i8 %993 to i32
  %xor72.10.4 = xor i32 %conv71.10.4, %conv68.10.4
  %conv73.10.4 = trunc i32 %xor72.10.4 to i8
  store i8 %conv73.10.4, i8* %arrayidx70.4, align 1
  %scevgep20.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 11
  %994 = load i8, i8* %scevgep20.11.4, align 1
  %conv68.11.4 = zext i8 %994 to i32
  %995 = load i8, i8* %arrayidx70.4, align 1
  %conv71.11.4 = zext i8 %995 to i32
  %xor72.11.4 = xor i32 %conv71.11.4, %conv68.11.4
  %conv73.11.4 = trunc i32 %xor72.11.4 to i8
  store i8 %conv73.11.4, i8* %arrayidx70.4, align 1
  %scevgep20.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 12
  %996 = load i8, i8* %scevgep20.12.4, align 1
  %conv68.12.4 = zext i8 %996 to i32
  %997 = load i8, i8* %arrayidx70.4, align 1
  %conv71.12.4 = zext i8 %997 to i32
  %xor72.12.4 = xor i32 %conv71.12.4, %conv68.12.4
  %conv73.12.4 = trunc i32 %xor72.12.4 to i8
  store i8 %conv73.12.4, i8* %arrayidx70.4, align 1
  %scevgep20.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 13
  %998 = load i8, i8* %scevgep20.13.4, align 1
  %conv68.13.4 = zext i8 %998 to i32
  %999 = load i8, i8* %arrayidx70.4, align 1
  %conv71.13.4 = zext i8 %999 to i32
  %xor72.13.4 = xor i32 %conv71.13.4, %conv68.13.4
  %conv73.13.4 = trunc i32 %xor72.13.4 to i8
  store i8 %conv73.13.4, i8* %arrayidx70.4, align 1
  %scevgep20.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 14
  %1000 = load i8, i8* %scevgep20.14.4, align 1
  %conv68.14.4 = zext i8 %1000 to i32
  %1001 = load i8, i8* %arrayidx70.4, align 1
  %conv71.14.4 = zext i8 %1001 to i32
  %xor72.14.4 = xor i32 %conv71.14.4, %conv68.14.4
  %conv73.14.4 = trunc i32 %xor72.14.4 to i8
  store i8 %conv73.14.4, i8* %arrayidx70.4, align 1
  %scevgep20.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 0, i64 15
  %1002 = load i8, i8* %scevgep20.15.4, align 1
  %conv68.15.4 = zext i8 %1002 to i32
  %1003 = load i8, i8* %arrayidx70.4, align 1
  %conv71.15.4 = zext i8 %1003 to i32
  %xor72.15.4 = xor i32 %conv71.15.4, %conv68.15.4
  %conv73.15.4 = trunc i32 %xor72.15.4 to i8
  store i8 %conv73.15.4, i8* %arrayidx70.4, align 1
  %scevgep19.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %971, i64 0, i64 1, i64 0
  %1004 = bitcast i8* %scevgep19.4 to [16 x [16 x i8]]*
  %arrayidx51.5 = getelementptr inbounds i8, i8* %a, i64 5
  %1005 = load i8, i8* %arrayidx51.5, align 1
  %arrayidx53.5 = getelementptr inbounds i8, i8* %b, i64 5
  %1006 = load i8, i8* %arrayidx53.5, align 1
  %call54.5 = call zeroext i8 @mult(i8 zeroext %1005, i8 zeroext %1006)
  %arrayidx56.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call54.5, i8* %arrayidx56.5, align 1
  %arrayidx70.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep20.594 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 0
  %1007 = load i8, i8* %scevgep20.594, align 1
  %conv68.595 = zext i8 %1007 to i32
  %1008 = load i8, i8* %arrayidx70.5, align 1
  %conv71.596 = zext i8 %1008 to i32
  %xor72.597 = xor i32 %conv71.596, %conv68.595
  %conv73.598 = trunc i32 %xor72.597 to i8
  store i8 %conv73.598, i8* %arrayidx70.5, align 1
  %scevgep20.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 1
  %1009 = load i8, i8* %scevgep20.1.5, align 1
  %conv68.1.5 = zext i8 %1009 to i32
  %1010 = load i8, i8* %arrayidx70.5, align 1
  %conv71.1.5 = zext i8 %1010 to i32
  %xor72.1.5 = xor i32 %conv71.1.5, %conv68.1.5
  %conv73.1.5 = trunc i32 %xor72.1.5 to i8
  store i8 %conv73.1.5, i8* %arrayidx70.5, align 1
  %scevgep20.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 2
  %1011 = load i8, i8* %scevgep20.2.5, align 1
  %conv68.2.5 = zext i8 %1011 to i32
  %1012 = load i8, i8* %arrayidx70.5, align 1
  %conv71.2.5 = zext i8 %1012 to i32
  %xor72.2.5 = xor i32 %conv71.2.5, %conv68.2.5
  %conv73.2.5 = trunc i32 %xor72.2.5 to i8
  store i8 %conv73.2.5, i8* %arrayidx70.5, align 1
  %scevgep20.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 3
  %1013 = load i8, i8* %scevgep20.3.5, align 1
  %conv68.3.5 = zext i8 %1013 to i32
  %1014 = load i8, i8* %arrayidx70.5, align 1
  %conv71.3.5 = zext i8 %1014 to i32
  %xor72.3.5 = xor i32 %conv71.3.5, %conv68.3.5
  %conv73.3.5 = trunc i32 %xor72.3.5 to i8
  store i8 %conv73.3.5, i8* %arrayidx70.5, align 1
  %scevgep20.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 4
  %1015 = load i8, i8* %scevgep20.4.5, align 1
  %conv68.4.5 = zext i8 %1015 to i32
  %1016 = load i8, i8* %arrayidx70.5, align 1
  %conv71.4.5 = zext i8 %1016 to i32
  %xor72.4.5 = xor i32 %conv71.4.5, %conv68.4.5
  %conv73.4.5 = trunc i32 %xor72.4.5 to i8
  store i8 %conv73.4.5, i8* %arrayidx70.5, align 1
  %scevgep20.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 6
  %1017 = load i8, i8* %scevgep20.6.5, align 1
  %conv68.6.5 = zext i8 %1017 to i32
  %1018 = load i8, i8* %arrayidx70.5, align 1
  %conv71.6.5 = zext i8 %1018 to i32
  %xor72.6.5 = xor i32 %conv71.6.5, %conv68.6.5
  %conv73.6.5 = trunc i32 %xor72.6.5 to i8
  store i8 %conv73.6.5, i8* %arrayidx70.5, align 1
  %scevgep20.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 7
  %1019 = load i8, i8* %scevgep20.7.5, align 1
  %conv68.7.5 = zext i8 %1019 to i32
  %1020 = load i8, i8* %arrayidx70.5, align 1
  %conv71.7.5 = zext i8 %1020 to i32
  %xor72.7.5 = xor i32 %conv71.7.5, %conv68.7.5
  %conv73.7.5 = trunc i32 %xor72.7.5 to i8
  store i8 %conv73.7.5, i8* %arrayidx70.5, align 1
  %scevgep20.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 8
  %1021 = load i8, i8* %scevgep20.8.5, align 1
  %conv68.8.5 = zext i8 %1021 to i32
  %1022 = load i8, i8* %arrayidx70.5, align 1
  %conv71.8.5 = zext i8 %1022 to i32
  %xor72.8.5 = xor i32 %conv71.8.5, %conv68.8.5
  %conv73.8.5 = trunc i32 %xor72.8.5 to i8
  store i8 %conv73.8.5, i8* %arrayidx70.5, align 1
  %scevgep20.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 9
  %1023 = load i8, i8* %scevgep20.9.5, align 1
  %conv68.9.5 = zext i8 %1023 to i32
  %1024 = load i8, i8* %arrayidx70.5, align 1
  %conv71.9.5 = zext i8 %1024 to i32
  %xor72.9.5 = xor i32 %conv71.9.5, %conv68.9.5
  %conv73.9.5 = trunc i32 %xor72.9.5 to i8
  store i8 %conv73.9.5, i8* %arrayidx70.5, align 1
  %scevgep20.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 10
  %1025 = load i8, i8* %scevgep20.10.5, align 1
  %conv68.10.5 = zext i8 %1025 to i32
  %1026 = load i8, i8* %arrayidx70.5, align 1
  %conv71.10.5 = zext i8 %1026 to i32
  %xor72.10.5 = xor i32 %conv71.10.5, %conv68.10.5
  %conv73.10.5 = trunc i32 %xor72.10.5 to i8
  store i8 %conv73.10.5, i8* %arrayidx70.5, align 1
  %scevgep20.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 11
  %1027 = load i8, i8* %scevgep20.11.5, align 1
  %conv68.11.5 = zext i8 %1027 to i32
  %1028 = load i8, i8* %arrayidx70.5, align 1
  %conv71.11.5 = zext i8 %1028 to i32
  %xor72.11.5 = xor i32 %conv71.11.5, %conv68.11.5
  %conv73.11.5 = trunc i32 %xor72.11.5 to i8
  store i8 %conv73.11.5, i8* %arrayidx70.5, align 1
  %scevgep20.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 12
  %1029 = load i8, i8* %scevgep20.12.5, align 1
  %conv68.12.5 = zext i8 %1029 to i32
  %1030 = load i8, i8* %arrayidx70.5, align 1
  %conv71.12.5 = zext i8 %1030 to i32
  %xor72.12.5 = xor i32 %conv71.12.5, %conv68.12.5
  %conv73.12.5 = trunc i32 %xor72.12.5 to i8
  store i8 %conv73.12.5, i8* %arrayidx70.5, align 1
  %scevgep20.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 13
  %1031 = load i8, i8* %scevgep20.13.5, align 1
  %conv68.13.5 = zext i8 %1031 to i32
  %1032 = load i8, i8* %arrayidx70.5, align 1
  %conv71.13.5 = zext i8 %1032 to i32
  %xor72.13.5 = xor i32 %conv71.13.5, %conv68.13.5
  %conv73.13.5 = trunc i32 %xor72.13.5 to i8
  store i8 %conv73.13.5, i8* %arrayidx70.5, align 1
  %scevgep20.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 14
  %1033 = load i8, i8* %scevgep20.14.5, align 1
  %conv68.14.5 = zext i8 %1033 to i32
  %1034 = load i8, i8* %arrayidx70.5, align 1
  %conv71.14.5 = zext i8 %1034 to i32
  %xor72.14.5 = xor i32 %conv71.14.5, %conv68.14.5
  %conv73.14.5 = trunc i32 %xor72.14.5 to i8
  store i8 %conv73.14.5, i8* %arrayidx70.5, align 1
  %scevgep20.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 0, i64 15
  %1035 = load i8, i8* %scevgep20.15.5, align 1
  %conv68.15.5 = zext i8 %1035 to i32
  %1036 = load i8, i8* %arrayidx70.5, align 1
  %conv71.15.5 = zext i8 %1036 to i32
  %xor72.15.5 = xor i32 %conv71.15.5, %conv68.15.5
  %conv73.15.5 = trunc i32 %xor72.15.5 to i8
  store i8 %conv73.15.5, i8* %arrayidx70.5, align 1
  %scevgep19.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1004, i64 0, i64 1, i64 0
  %1037 = bitcast i8* %scevgep19.5 to [16 x [16 x i8]]*
  %arrayidx51.6 = getelementptr inbounds i8, i8* %a, i64 6
  %1038 = load i8, i8* %arrayidx51.6, align 1
  %arrayidx53.6 = getelementptr inbounds i8, i8* %b, i64 6
  %1039 = load i8, i8* %arrayidx53.6, align 1
  %call54.6 = call zeroext i8 @mult(i8 zeroext %1038, i8 zeroext %1039)
  %arrayidx56.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %call54.6, i8* %arrayidx56.6, align 1
  %arrayidx70.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep20.6104 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 0
  %1040 = load i8, i8* %scevgep20.6104, align 1
  %conv68.6105 = zext i8 %1040 to i32
  %1041 = load i8, i8* %arrayidx70.6, align 1
  %conv71.6106 = zext i8 %1041 to i32
  %xor72.6107 = xor i32 %conv71.6106, %conv68.6105
  %conv73.6108 = trunc i32 %xor72.6107 to i8
  store i8 %conv73.6108, i8* %arrayidx70.6, align 1
  %scevgep20.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 1
  %1042 = load i8, i8* %scevgep20.1.6, align 1
  %conv68.1.6 = zext i8 %1042 to i32
  %1043 = load i8, i8* %arrayidx70.6, align 1
  %conv71.1.6 = zext i8 %1043 to i32
  %xor72.1.6 = xor i32 %conv71.1.6, %conv68.1.6
  %conv73.1.6 = trunc i32 %xor72.1.6 to i8
  store i8 %conv73.1.6, i8* %arrayidx70.6, align 1
  %scevgep20.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 2
  %1044 = load i8, i8* %scevgep20.2.6, align 1
  %conv68.2.6 = zext i8 %1044 to i32
  %1045 = load i8, i8* %arrayidx70.6, align 1
  %conv71.2.6 = zext i8 %1045 to i32
  %xor72.2.6 = xor i32 %conv71.2.6, %conv68.2.6
  %conv73.2.6 = trunc i32 %xor72.2.6 to i8
  store i8 %conv73.2.6, i8* %arrayidx70.6, align 1
  %scevgep20.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 3
  %1046 = load i8, i8* %scevgep20.3.6, align 1
  %conv68.3.6 = zext i8 %1046 to i32
  %1047 = load i8, i8* %arrayidx70.6, align 1
  %conv71.3.6 = zext i8 %1047 to i32
  %xor72.3.6 = xor i32 %conv71.3.6, %conv68.3.6
  %conv73.3.6 = trunc i32 %xor72.3.6 to i8
  store i8 %conv73.3.6, i8* %arrayidx70.6, align 1
  %scevgep20.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 4
  %1048 = load i8, i8* %scevgep20.4.6, align 1
  %conv68.4.6 = zext i8 %1048 to i32
  %1049 = load i8, i8* %arrayidx70.6, align 1
  %conv71.4.6 = zext i8 %1049 to i32
  %xor72.4.6 = xor i32 %conv71.4.6, %conv68.4.6
  %conv73.4.6 = trunc i32 %xor72.4.6 to i8
  store i8 %conv73.4.6, i8* %arrayidx70.6, align 1
  %scevgep20.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 5
  %1050 = load i8, i8* %scevgep20.5.6, align 1
  %conv68.5.6 = zext i8 %1050 to i32
  %1051 = load i8, i8* %arrayidx70.6, align 1
  %conv71.5.6 = zext i8 %1051 to i32
  %xor72.5.6 = xor i32 %conv71.5.6, %conv68.5.6
  %conv73.5.6 = trunc i32 %xor72.5.6 to i8
  store i8 %conv73.5.6, i8* %arrayidx70.6, align 1
  %scevgep20.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 7
  %1052 = load i8, i8* %scevgep20.7.6, align 1
  %conv68.7.6 = zext i8 %1052 to i32
  %1053 = load i8, i8* %arrayidx70.6, align 1
  %conv71.7.6 = zext i8 %1053 to i32
  %xor72.7.6 = xor i32 %conv71.7.6, %conv68.7.6
  %conv73.7.6 = trunc i32 %xor72.7.6 to i8
  store i8 %conv73.7.6, i8* %arrayidx70.6, align 1
  %scevgep20.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 8
  %1054 = load i8, i8* %scevgep20.8.6, align 1
  %conv68.8.6 = zext i8 %1054 to i32
  %1055 = load i8, i8* %arrayidx70.6, align 1
  %conv71.8.6 = zext i8 %1055 to i32
  %xor72.8.6 = xor i32 %conv71.8.6, %conv68.8.6
  %conv73.8.6 = trunc i32 %xor72.8.6 to i8
  store i8 %conv73.8.6, i8* %arrayidx70.6, align 1
  %scevgep20.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 9
  %1056 = load i8, i8* %scevgep20.9.6, align 1
  %conv68.9.6 = zext i8 %1056 to i32
  %1057 = load i8, i8* %arrayidx70.6, align 1
  %conv71.9.6 = zext i8 %1057 to i32
  %xor72.9.6 = xor i32 %conv71.9.6, %conv68.9.6
  %conv73.9.6 = trunc i32 %xor72.9.6 to i8
  store i8 %conv73.9.6, i8* %arrayidx70.6, align 1
  %scevgep20.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 10
  %1058 = load i8, i8* %scevgep20.10.6, align 1
  %conv68.10.6 = zext i8 %1058 to i32
  %1059 = load i8, i8* %arrayidx70.6, align 1
  %conv71.10.6 = zext i8 %1059 to i32
  %xor72.10.6 = xor i32 %conv71.10.6, %conv68.10.6
  %conv73.10.6 = trunc i32 %xor72.10.6 to i8
  store i8 %conv73.10.6, i8* %arrayidx70.6, align 1
  %scevgep20.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 11
  %1060 = load i8, i8* %scevgep20.11.6, align 1
  %conv68.11.6 = zext i8 %1060 to i32
  %1061 = load i8, i8* %arrayidx70.6, align 1
  %conv71.11.6 = zext i8 %1061 to i32
  %xor72.11.6 = xor i32 %conv71.11.6, %conv68.11.6
  %conv73.11.6 = trunc i32 %xor72.11.6 to i8
  store i8 %conv73.11.6, i8* %arrayidx70.6, align 1
  %scevgep20.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 12
  %1062 = load i8, i8* %scevgep20.12.6, align 1
  %conv68.12.6 = zext i8 %1062 to i32
  %1063 = load i8, i8* %arrayidx70.6, align 1
  %conv71.12.6 = zext i8 %1063 to i32
  %xor72.12.6 = xor i32 %conv71.12.6, %conv68.12.6
  %conv73.12.6 = trunc i32 %xor72.12.6 to i8
  store i8 %conv73.12.6, i8* %arrayidx70.6, align 1
  %scevgep20.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 13
  %1064 = load i8, i8* %scevgep20.13.6, align 1
  %conv68.13.6 = zext i8 %1064 to i32
  %1065 = load i8, i8* %arrayidx70.6, align 1
  %conv71.13.6 = zext i8 %1065 to i32
  %xor72.13.6 = xor i32 %conv71.13.6, %conv68.13.6
  %conv73.13.6 = trunc i32 %xor72.13.6 to i8
  store i8 %conv73.13.6, i8* %arrayidx70.6, align 1
  %scevgep20.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 14
  %1066 = load i8, i8* %scevgep20.14.6, align 1
  %conv68.14.6 = zext i8 %1066 to i32
  %1067 = load i8, i8* %arrayidx70.6, align 1
  %conv71.14.6 = zext i8 %1067 to i32
  %xor72.14.6 = xor i32 %conv71.14.6, %conv68.14.6
  %conv73.14.6 = trunc i32 %xor72.14.6 to i8
  store i8 %conv73.14.6, i8* %arrayidx70.6, align 1
  %scevgep20.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 0, i64 15
  %1068 = load i8, i8* %scevgep20.15.6, align 1
  %conv68.15.6 = zext i8 %1068 to i32
  %1069 = load i8, i8* %arrayidx70.6, align 1
  %conv71.15.6 = zext i8 %1069 to i32
  %xor72.15.6 = xor i32 %conv71.15.6, %conv68.15.6
  %conv73.15.6 = trunc i32 %xor72.15.6 to i8
  store i8 %conv73.15.6, i8* %arrayidx70.6, align 1
  %scevgep19.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1037, i64 0, i64 1, i64 0
  %1070 = bitcast i8* %scevgep19.6 to [16 x [16 x i8]]*
  %arrayidx51.7 = getelementptr inbounds i8, i8* %a, i64 7
  %1071 = load i8, i8* %arrayidx51.7, align 1
  %arrayidx53.7 = getelementptr inbounds i8, i8* %b, i64 7
  %1072 = load i8, i8* %arrayidx53.7, align 1
  %call54.7 = call zeroext i8 @mult(i8 zeroext %1071, i8 zeroext %1072)
  %arrayidx56.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %call54.7, i8* %arrayidx56.7, align 1
  %arrayidx70.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep20.7114 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 0
  %1073 = load i8, i8* %scevgep20.7114, align 1
  %conv68.7115 = zext i8 %1073 to i32
  %1074 = load i8, i8* %arrayidx70.7, align 1
  %conv71.7116 = zext i8 %1074 to i32
  %xor72.7117 = xor i32 %conv71.7116, %conv68.7115
  %conv73.7118 = trunc i32 %xor72.7117 to i8
  store i8 %conv73.7118, i8* %arrayidx70.7, align 1
  %scevgep20.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 1
  %1075 = load i8, i8* %scevgep20.1.7, align 1
  %conv68.1.7 = zext i8 %1075 to i32
  %1076 = load i8, i8* %arrayidx70.7, align 1
  %conv71.1.7 = zext i8 %1076 to i32
  %xor72.1.7 = xor i32 %conv71.1.7, %conv68.1.7
  %conv73.1.7 = trunc i32 %xor72.1.7 to i8
  store i8 %conv73.1.7, i8* %arrayidx70.7, align 1
  %scevgep20.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 2
  %1077 = load i8, i8* %scevgep20.2.7, align 1
  %conv68.2.7 = zext i8 %1077 to i32
  %1078 = load i8, i8* %arrayidx70.7, align 1
  %conv71.2.7 = zext i8 %1078 to i32
  %xor72.2.7 = xor i32 %conv71.2.7, %conv68.2.7
  %conv73.2.7 = trunc i32 %xor72.2.7 to i8
  store i8 %conv73.2.7, i8* %arrayidx70.7, align 1
  %scevgep20.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 3
  %1079 = load i8, i8* %scevgep20.3.7, align 1
  %conv68.3.7 = zext i8 %1079 to i32
  %1080 = load i8, i8* %arrayidx70.7, align 1
  %conv71.3.7 = zext i8 %1080 to i32
  %xor72.3.7 = xor i32 %conv71.3.7, %conv68.3.7
  %conv73.3.7 = trunc i32 %xor72.3.7 to i8
  store i8 %conv73.3.7, i8* %arrayidx70.7, align 1
  %scevgep20.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 4
  %1081 = load i8, i8* %scevgep20.4.7, align 1
  %conv68.4.7 = zext i8 %1081 to i32
  %1082 = load i8, i8* %arrayidx70.7, align 1
  %conv71.4.7 = zext i8 %1082 to i32
  %xor72.4.7 = xor i32 %conv71.4.7, %conv68.4.7
  %conv73.4.7 = trunc i32 %xor72.4.7 to i8
  store i8 %conv73.4.7, i8* %arrayidx70.7, align 1
  %scevgep20.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 5
  %1083 = load i8, i8* %scevgep20.5.7, align 1
  %conv68.5.7 = zext i8 %1083 to i32
  %1084 = load i8, i8* %arrayidx70.7, align 1
  %conv71.5.7 = zext i8 %1084 to i32
  %xor72.5.7 = xor i32 %conv71.5.7, %conv68.5.7
  %conv73.5.7 = trunc i32 %xor72.5.7 to i8
  store i8 %conv73.5.7, i8* %arrayidx70.7, align 1
  %scevgep20.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 6
  %1085 = load i8, i8* %scevgep20.6.7, align 1
  %conv68.6.7 = zext i8 %1085 to i32
  %1086 = load i8, i8* %arrayidx70.7, align 1
  %conv71.6.7 = zext i8 %1086 to i32
  %xor72.6.7 = xor i32 %conv71.6.7, %conv68.6.7
  %conv73.6.7 = trunc i32 %xor72.6.7 to i8
  store i8 %conv73.6.7, i8* %arrayidx70.7, align 1
  %scevgep20.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 8
  %1087 = load i8, i8* %scevgep20.8.7, align 1
  %conv68.8.7 = zext i8 %1087 to i32
  %1088 = load i8, i8* %arrayidx70.7, align 1
  %conv71.8.7 = zext i8 %1088 to i32
  %xor72.8.7 = xor i32 %conv71.8.7, %conv68.8.7
  %conv73.8.7 = trunc i32 %xor72.8.7 to i8
  store i8 %conv73.8.7, i8* %arrayidx70.7, align 1
  %scevgep20.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 9
  %1089 = load i8, i8* %scevgep20.9.7, align 1
  %conv68.9.7 = zext i8 %1089 to i32
  %1090 = load i8, i8* %arrayidx70.7, align 1
  %conv71.9.7 = zext i8 %1090 to i32
  %xor72.9.7 = xor i32 %conv71.9.7, %conv68.9.7
  %conv73.9.7 = trunc i32 %xor72.9.7 to i8
  store i8 %conv73.9.7, i8* %arrayidx70.7, align 1
  %scevgep20.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 10
  %1091 = load i8, i8* %scevgep20.10.7, align 1
  %conv68.10.7 = zext i8 %1091 to i32
  %1092 = load i8, i8* %arrayidx70.7, align 1
  %conv71.10.7 = zext i8 %1092 to i32
  %xor72.10.7 = xor i32 %conv71.10.7, %conv68.10.7
  %conv73.10.7 = trunc i32 %xor72.10.7 to i8
  store i8 %conv73.10.7, i8* %arrayidx70.7, align 1
  %scevgep20.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 11
  %1093 = load i8, i8* %scevgep20.11.7, align 1
  %conv68.11.7 = zext i8 %1093 to i32
  %1094 = load i8, i8* %arrayidx70.7, align 1
  %conv71.11.7 = zext i8 %1094 to i32
  %xor72.11.7 = xor i32 %conv71.11.7, %conv68.11.7
  %conv73.11.7 = trunc i32 %xor72.11.7 to i8
  store i8 %conv73.11.7, i8* %arrayidx70.7, align 1
  %scevgep20.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 12
  %1095 = load i8, i8* %scevgep20.12.7, align 1
  %conv68.12.7 = zext i8 %1095 to i32
  %1096 = load i8, i8* %arrayidx70.7, align 1
  %conv71.12.7 = zext i8 %1096 to i32
  %xor72.12.7 = xor i32 %conv71.12.7, %conv68.12.7
  %conv73.12.7 = trunc i32 %xor72.12.7 to i8
  store i8 %conv73.12.7, i8* %arrayidx70.7, align 1
  %scevgep20.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 13
  %1097 = load i8, i8* %scevgep20.13.7, align 1
  %conv68.13.7 = zext i8 %1097 to i32
  %1098 = load i8, i8* %arrayidx70.7, align 1
  %conv71.13.7 = zext i8 %1098 to i32
  %xor72.13.7 = xor i32 %conv71.13.7, %conv68.13.7
  %conv73.13.7 = trunc i32 %xor72.13.7 to i8
  store i8 %conv73.13.7, i8* %arrayidx70.7, align 1
  %scevgep20.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 14
  %1099 = load i8, i8* %scevgep20.14.7, align 1
  %conv68.14.7 = zext i8 %1099 to i32
  %1100 = load i8, i8* %arrayidx70.7, align 1
  %conv71.14.7 = zext i8 %1100 to i32
  %xor72.14.7 = xor i32 %conv71.14.7, %conv68.14.7
  %conv73.14.7 = trunc i32 %xor72.14.7 to i8
  store i8 %conv73.14.7, i8* %arrayidx70.7, align 1
  %scevgep20.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 0, i64 15
  %1101 = load i8, i8* %scevgep20.15.7, align 1
  %conv68.15.7 = zext i8 %1101 to i32
  %1102 = load i8, i8* %arrayidx70.7, align 1
  %conv71.15.7 = zext i8 %1102 to i32
  %xor72.15.7 = xor i32 %conv71.15.7, %conv68.15.7
  %conv73.15.7 = trunc i32 %xor72.15.7 to i8
  store i8 %conv73.15.7, i8* %arrayidx70.7, align 1
  %scevgep19.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1070, i64 0, i64 1, i64 0
  %1103 = bitcast i8* %scevgep19.7 to [16 x [16 x i8]]*
  %arrayidx51.8 = getelementptr inbounds i8, i8* %a, i64 8
  %1104 = load i8, i8* %arrayidx51.8, align 1
  %arrayidx53.8 = getelementptr inbounds i8, i8* %b, i64 8
  %1105 = load i8, i8* %arrayidx53.8, align 1
  %call54.8 = call zeroext i8 @mult(i8 zeroext %1104, i8 zeroext %1105)
  %arrayidx56.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %call54.8, i8* %arrayidx56.8, align 1
  %arrayidx70.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep20.8124 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 0
  %1106 = load i8, i8* %scevgep20.8124, align 1
  %conv68.8125 = zext i8 %1106 to i32
  %1107 = load i8, i8* %arrayidx70.8, align 1
  %conv71.8126 = zext i8 %1107 to i32
  %xor72.8127 = xor i32 %conv71.8126, %conv68.8125
  %conv73.8128 = trunc i32 %xor72.8127 to i8
  store i8 %conv73.8128, i8* %arrayidx70.8, align 1
  %scevgep20.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 1
  %1108 = load i8, i8* %scevgep20.1.8, align 1
  %conv68.1.8 = zext i8 %1108 to i32
  %1109 = load i8, i8* %arrayidx70.8, align 1
  %conv71.1.8 = zext i8 %1109 to i32
  %xor72.1.8 = xor i32 %conv71.1.8, %conv68.1.8
  %conv73.1.8 = trunc i32 %xor72.1.8 to i8
  store i8 %conv73.1.8, i8* %arrayidx70.8, align 1
  %scevgep20.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 2
  %1110 = load i8, i8* %scevgep20.2.8, align 1
  %conv68.2.8 = zext i8 %1110 to i32
  %1111 = load i8, i8* %arrayidx70.8, align 1
  %conv71.2.8 = zext i8 %1111 to i32
  %xor72.2.8 = xor i32 %conv71.2.8, %conv68.2.8
  %conv73.2.8 = trunc i32 %xor72.2.8 to i8
  store i8 %conv73.2.8, i8* %arrayidx70.8, align 1
  %scevgep20.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 3
  %1112 = load i8, i8* %scevgep20.3.8, align 1
  %conv68.3.8 = zext i8 %1112 to i32
  %1113 = load i8, i8* %arrayidx70.8, align 1
  %conv71.3.8 = zext i8 %1113 to i32
  %xor72.3.8 = xor i32 %conv71.3.8, %conv68.3.8
  %conv73.3.8 = trunc i32 %xor72.3.8 to i8
  store i8 %conv73.3.8, i8* %arrayidx70.8, align 1
  %scevgep20.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 4
  %1114 = load i8, i8* %scevgep20.4.8, align 1
  %conv68.4.8 = zext i8 %1114 to i32
  %1115 = load i8, i8* %arrayidx70.8, align 1
  %conv71.4.8 = zext i8 %1115 to i32
  %xor72.4.8 = xor i32 %conv71.4.8, %conv68.4.8
  %conv73.4.8 = trunc i32 %xor72.4.8 to i8
  store i8 %conv73.4.8, i8* %arrayidx70.8, align 1
  %scevgep20.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 5
  %1116 = load i8, i8* %scevgep20.5.8, align 1
  %conv68.5.8 = zext i8 %1116 to i32
  %1117 = load i8, i8* %arrayidx70.8, align 1
  %conv71.5.8 = zext i8 %1117 to i32
  %xor72.5.8 = xor i32 %conv71.5.8, %conv68.5.8
  %conv73.5.8 = trunc i32 %xor72.5.8 to i8
  store i8 %conv73.5.8, i8* %arrayidx70.8, align 1
  %scevgep20.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 6
  %1118 = load i8, i8* %scevgep20.6.8, align 1
  %conv68.6.8 = zext i8 %1118 to i32
  %1119 = load i8, i8* %arrayidx70.8, align 1
  %conv71.6.8 = zext i8 %1119 to i32
  %xor72.6.8 = xor i32 %conv71.6.8, %conv68.6.8
  %conv73.6.8 = trunc i32 %xor72.6.8 to i8
  store i8 %conv73.6.8, i8* %arrayidx70.8, align 1
  %scevgep20.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 7
  %1120 = load i8, i8* %scevgep20.7.8, align 1
  %conv68.7.8 = zext i8 %1120 to i32
  %1121 = load i8, i8* %arrayidx70.8, align 1
  %conv71.7.8 = zext i8 %1121 to i32
  %xor72.7.8 = xor i32 %conv71.7.8, %conv68.7.8
  %conv73.7.8 = trunc i32 %xor72.7.8 to i8
  store i8 %conv73.7.8, i8* %arrayidx70.8, align 1
  %scevgep20.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 9
  %1122 = load i8, i8* %scevgep20.9.8, align 1
  %conv68.9.8 = zext i8 %1122 to i32
  %1123 = load i8, i8* %arrayidx70.8, align 1
  %conv71.9.8 = zext i8 %1123 to i32
  %xor72.9.8 = xor i32 %conv71.9.8, %conv68.9.8
  %conv73.9.8 = trunc i32 %xor72.9.8 to i8
  store i8 %conv73.9.8, i8* %arrayidx70.8, align 1
  %scevgep20.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 10
  %1124 = load i8, i8* %scevgep20.10.8, align 1
  %conv68.10.8 = zext i8 %1124 to i32
  %1125 = load i8, i8* %arrayidx70.8, align 1
  %conv71.10.8 = zext i8 %1125 to i32
  %xor72.10.8 = xor i32 %conv71.10.8, %conv68.10.8
  %conv73.10.8 = trunc i32 %xor72.10.8 to i8
  store i8 %conv73.10.8, i8* %arrayidx70.8, align 1
  %scevgep20.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 11
  %1126 = load i8, i8* %scevgep20.11.8, align 1
  %conv68.11.8 = zext i8 %1126 to i32
  %1127 = load i8, i8* %arrayidx70.8, align 1
  %conv71.11.8 = zext i8 %1127 to i32
  %xor72.11.8 = xor i32 %conv71.11.8, %conv68.11.8
  %conv73.11.8 = trunc i32 %xor72.11.8 to i8
  store i8 %conv73.11.8, i8* %arrayidx70.8, align 1
  %scevgep20.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 12
  %1128 = load i8, i8* %scevgep20.12.8, align 1
  %conv68.12.8 = zext i8 %1128 to i32
  %1129 = load i8, i8* %arrayidx70.8, align 1
  %conv71.12.8 = zext i8 %1129 to i32
  %xor72.12.8 = xor i32 %conv71.12.8, %conv68.12.8
  %conv73.12.8 = trunc i32 %xor72.12.8 to i8
  store i8 %conv73.12.8, i8* %arrayidx70.8, align 1
  %scevgep20.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 13
  %1130 = load i8, i8* %scevgep20.13.8, align 1
  %conv68.13.8 = zext i8 %1130 to i32
  %1131 = load i8, i8* %arrayidx70.8, align 1
  %conv71.13.8 = zext i8 %1131 to i32
  %xor72.13.8 = xor i32 %conv71.13.8, %conv68.13.8
  %conv73.13.8 = trunc i32 %xor72.13.8 to i8
  store i8 %conv73.13.8, i8* %arrayidx70.8, align 1
  %scevgep20.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 14
  %1132 = load i8, i8* %scevgep20.14.8, align 1
  %conv68.14.8 = zext i8 %1132 to i32
  %1133 = load i8, i8* %arrayidx70.8, align 1
  %conv71.14.8 = zext i8 %1133 to i32
  %xor72.14.8 = xor i32 %conv71.14.8, %conv68.14.8
  %conv73.14.8 = trunc i32 %xor72.14.8 to i8
  store i8 %conv73.14.8, i8* %arrayidx70.8, align 1
  %scevgep20.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 0, i64 15
  %1134 = load i8, i8* %scevgep20.15.8, align 1
  %conv68.15.8 = zext i8 %1134 to i32
  %1135 = load i8, i8* %arrayidx70.8, align 1
  %conv71.15.8 = zext i8 %1135 to i32
  %xor72.15.8 = xor i32 %conv71.15.8, %conv68.15.8
  %conv73.15.8 = trunc i32 %xor72.15.8 to i8
  store i8 %conv73.15.8, i8* %arrayidx70.8, align 1
  %scevgep19.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1103, i64 0, i64 1, i64 0
  %1136 = bitcast i8* %scevgep19.8 to [16 x [16 x i8]]*
  %arrayidx51.9 = getelementptr inbounds i8, i8* %a, i64 9
  %1137 = load i8, i8* %arrayidx51.9, align 1
  %arrayidx53.9 = getelementptr inbounds i8, i8* %b, i64 9
  %1138 = load i8, i8* %arrayidx53.9, align 1
  %call54.9 = call zeroext i8 @mult(i8 zeroext %1137, i8 zeroext %1138)
  %arrayidx56.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %call54.9, i8* %arrayidx56.9, align 1
  %arrayidx70.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep20.9134 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 0
  %1139 = load i8, i8* %scevgep20.9134, align 1
  %conv68.9135 = zext i8 %1139 to i32
  %1140 = load i8, i8* %arrayidx70.9, align 1
  %conv71.9136 = zext i8 %1140 to i32
  %xor72.9137 = xor i32 %conv71.9136, %conv68.9135
  %conv73.9138 = trunc i32 %xor72.9137 to i8
  store i8 %conv73.9138, i8* %arrayidx70.9, align 1
  %scevgep20.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 1
  %1141 = load i8, i8* %scevgep20.1.9, align 1
  %conv68.1.9 = zext i8 %1141 to i32
  %1142 = load i8, i8* %arrayidx70.9, align 1
  %conv71.1.9 = zext i8 %1142 to i32
  %xor72.1.9 = xor i32 %conv71.1.9, %conv68.1.9
  %conv73.1.9 = trunc i32 %xor72.1.9 to i8
  store i8 %conv73.1.9, i8* %arrayidx70.9, align 1
  %scevgep20.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 2
  %1143 = load i8, i8* %scevgep20.2.9, align 1
  %conv68.2.9 = zext i8 %1143 to i32
  %1144 = load i8, i8* %arrayidx70.9, align 1
  %conv71.2.9 = zext i8 %1144 to i32
  %xor72.2.9 = xor i32 %conv71.2.9, %conv68.2.9
  %conv73.2.9 = trunc i32 %xor72.2.9 to i8
  store i8 %conv73.2.9, i8* %arrayidx70.9, align 1
  %scevgep20.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 3
  %1145 = load i8, i8* %scevgep20.3.9, align 1
  %conv68.3.9 = zext i8 %1145 to i32
  %1146 = load i8, i8* %arrayidx70.9, align 1
  %conv71.3.9 = zext i8 %1146 to i32
  %xor72.3.9 = xor i32 %conv71.3.9, %conv68.3.9
  %conv73.3.9 = trunc i32 %xor72.3.9 to i8
  store i8 %conv73.3.9, i8* %arrayidx70.9, align 1
  %scevgep20.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 4
  %1147 = load i8, i8* %scevgep20.4.9, align 1
  %conv68.4.9 = zext i8 %1147 to i32
  %1148 = load i8, i8* %arrayidx70.9, align 1
  %conv71.4.9 = zext i8 %1148 to i32
  %xor72.4.9 = xor i32 %conv71.4.9, %conv68.4.9
  %conv73.4.9 = trunc i32 %xor72.4.9 to i8
  store i8 %conv73.4.9, i8* %arrayidx70.9, align 1
  %scevgep20.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 5
  %1149 = load i8, i8* %scevgep20.5.9, align 1
  %conv68.5.9 = zext i8 %1149 to i32
  %1150 = load i8, i8* %arrayidx70.9, align 1
  %conv71.5.9 = zext i8 %1150 to i32
  %xor72.5.9 = xor i32 %conv71.5.9, %conv68.5.9
  %conv73.5.9 = trunc i32 %xor72.5.9 to i8
  store i8 %conv73.5.9, i8* %arrayidx70.9, align 1
  %scevgep20.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 6
  %1151 = load i8, i8* %scevgep20.6.9, align 1
  %conv68.6.9 = zext i8 %1151 to i32
  %1152 = load i8, i8* %arrayidx70.9, align 1
  %conv71.6.9 = zext i8 %1152 to i32
  %xor72.6.9 = xor i32 %conv71.6.9, %conv68.6.9
  %conv73.6.9 = trunc i32 %xor72.6.9 to i8
  store i8 %conv73.6.9, i8* %arrayidx70.9, align 1
  %scevgep20.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 7
  %1153 = load i8, i8* %scevgep20.7.9, align 1
  %conv68.7.9 = zext i8 %1153 to i32
  %1154 = load i8, i8* %arrayidx70.9, align 1
  %conv71.7.9 = zext i8 %1154 to i32
  %xor72.7.9 = xor i32 %conv71.7.9, %conv68.7.9
  %conv73.7.9 = trunc i32 %xor72.7.9 to i8
  store i8 %conv73.7.9, i8* %arrayidx70.9, align 1
  %scevgep20.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 8
  %1155 = load i8, i8* %scevgep20.8.9, align 1
  %conv68.8.9 = zext i8 %1155 to i32
  %1156 = load i8, i8* %arrayidx70.9, align 1
  %conv71.8.9 = zext i8 %1156 to i32
  %xor72.8.9 = xor i32 %conv71.8.9, %conv68.8.9
  %conv73.8.9 = trunc i32 %xor72.8.9 to i8
  store i8 %conv73.8.9, i8* %arrayidx70.9, align 1
  %scevgep20.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 10
  %1157 = load i8, i8* %scevgep20.10.9, align 1
  %conv68.10.9 = zext i8 %1157 to i32
  %1158 = load i8, i8* %arrayidx70.9, align 1
  %conv71.10.9 = zext i8 %1158 to i32
  %xor72.10.9 = xor i32 %conv71.10.9, %conv68.10.9
  %conv73.10.9 = trunc i32 %xor72.10.9 to i8
  store i8 %conv73.10.9, i8* %arrayidx70.9, align 1
  %scevgep20.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 11
  %1159 = load i8, i8* %scevgep20.11.9, align 1
  %conv68.11.9 = zext i8 %1159 to i32
  %1160 = load i8, i8* %arrayidx70.9, align 1
  %conv71.11.9 = zext i8 %1160 to i32
  %xor72.11.9 = xor i32 %conv71.11.9, %conv68.11.9
  %conv73.11.9 = trunc i32 %xor72.11.9 to i8
  store i8 %conv73.11.9, i8* %arrayidx70.9, align 1
  %scevgep20.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 12
  %1161 = load i8, i8* %scevgep20.12.9, align 1
  %conv68.12.9 = zext i8 %1161 to i32
  %1162 = load i8, i8* %arrayidx70.9, align 1
  %conv71.12.9 = zext i8 %1162 to i32
  %xor72.12.9 = xor i32 %conv71.12.9, %conv68.12.9
  %conv73.12.9 = trunc i32 %xor72.12.9 to i8
  store i8 %conv73.12.9, i8* %arrayidx70.9, align 1
  %scevgep20.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 13
  %1163 = load i8, i8* %scevgep20.13.9, align 1
  %conv68.13.9 = zext i8 %1163 to i32
  %1164 = load i8, i8* %arrayidx70.9, align 1
  %conv71.13.9 = zext i8 %1164 to i32
  %xor72.13.9 = xor i32 %conv71.13.9, %conv68.13.9
  %conv73.13.9 = trunc i32 %xor72.13.9 to i8
  store i8 %conv73.13.9, i8* %arrayidx70.9, align 1
  %scevgep20.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 14
  %1165 = load i8, i8* %scevgep20.14.9, align 1
  %conv68.14.9 = zext i8 %1165 to i32
  %1166 = load i8, i8* %arrayidx70.9, align 1
  %conv71.14.9 = zext i8 %1166 to i32
  %xor72.14.9 = xor i32 %conv71.14.9, %conv68.14.9
  %conv73.14.9 = trunc i32 %xor72.14.9 to i8
  store i8 %conv73.14.9, i8* %arrayidx70.9, align 1
  %scevgep20.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 0, i64 15
  %1167 = load i8, i8* %scevgep20.15.9, align 1
  %conv68.15.9 = zext i8 %1167 to i32
  %1168 = load i8, i8* %arrayidx70.9, align 1
  %conv71.15.9 = zext i8 %1168 to i32
  %xor72.15.9 = xor i32 %conv71.15.9, %conv68.15.9
  %conv73.15.9 = trunc i32 %xor72.15.9 to i8
  store i8 %conv73.15.9, i8* %arrayidx70.9, align 1
  %scevgep19.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1136, i64 0, i64 1, i64 0
  %1169 = bitcast i8* %scevgep19.9 to [16 x [16 x i8]]*
  %arrayidx51.10 = getelementptr inbounds i8, i8* %a, i64 10
  %1170 = load i8, i8* %arrayidx51.10, align 1
  %arrayidx53.10 = getelementptr inbounds i8, i8* %b, i64 10
  %1171 = load i8, i8* %arrayidx53.10, align 1
  %call54.10 = call zeroext i8 @mult(i8 zeroext %1170, i8 zeroext %1171)
  %arrayidx56.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %call54.10, i8* %arrayidx56.10, align 1
  %arrayidx70.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep20.10144 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 0
  %1172 = load i8, i8* %scevgep20.10144, align 1
  %conv68.10145 = zext i8 %1172 to i32
  %1173 = load i8, i8* %arrayidx70.10, align 1
  %conv71.10146 = zext i8 %1173 to i32
  %xor72.10147 = xor i32 %conv71.10146, %conv68.10145
  %conv73.10148 = trunc i32 %xor72.10147 to i8
  store i8 %conv73.10148, i8* %arrayidx70.10, align 1
  %scevgep20.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 1
  %1174 = load i8, i8* %scevgep20.1.10, align 1
  %conv68.1.10 = zext i8 %1174 to i32
  %1175 = load i8, i8* %arrayidx70.10, align 1
  %conv71.1.10 = zext i8 %1175 to i32
  %xor72.1.10 = xor i32 %conv71.1.10, %conv68.1.10
  %conv73.1.10 = trunc i32 %xor72.1.10 to i8
  store i8 %conv73.1.10, i8* %arrayidx70.10, align 1
  %scevgep20.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 2
  %1176 = load i8, i8* %scevgep20.2.10, align 1
  %conv68.2.10 = zext i8 %1176 to i32
  %1177 = load i8, i8* %arrayidx70.10, align 1
  %conv71.2.10 = zext i8 %1177 to i32
  %xor72.2.10 = xor i32 %conv71.2.10, %conv68.2.10
  %conv73.2.10 = trunc i32 %xor72.2.10 to i8
  store i8 %conv73.2.10, i8* %arrayidx70.10, align 1
  %scevgep20.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 3
  %1178 = load i8, i8* %scevgep20.3.10, align 1
  %conv68.3.10 = zext i8 %1178 to i32
  %1179 = load i8, i8* %arrayidx70.10, align 1
  %conv71.3.10 = zext i8 %1179 to i32
  %xor72.3.10 = xor i32 %conv71.3.10, %conv68.3.10
  %conv73.3.10 = trunc i32 %xor72.3.10 to i8
  store i8 %conv73.3.10, i8* %arrayidx70.10, align 1
  %scevgep20.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 4
  %1180 = load i8, i8* %scevgep20.4.10, align 1
  %conv68.4.10 = zext i8 %1180 to i32
  %1181 = load i8, i8* %arrayidx70.10, align 1
  %conv71.4.10 = zext i8 %1181 to i32
  %xor72.4.10 = xor i32 %conv71.4.10, %conv68.4.10
  %conv73.4.10 = trunc i32 %xor72.4.10 to i8
  store i8 %conv73.4.10, i8* %arrayidx70.10, align 1
  %scevgep20.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 5
  %1182 = load i8, i8* %scevgep20.5.10, align 1
  %conv68.5.10 = zext i8 %1182 to i32
  %1183 = load i8, i8* %arrayidx70.10, align 1
  %conv71.5.10 = zext i8 %1183 to i32
  %xor72.5.10 = xor i32 %conv71.5.10, %conv68.5.10
  %conv73.5.10 = trunc i32 %xor72.5.10 to i8
  store i8 %conv73.5.10, i8* %arrayidx70.10, align 1
  %scevgep20.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 6
  %1184 = load i8, i8* %scevgep20.6.10, align 1
  %conv68.6.10 = zext i8 %1184 to i32
  %1185 = load i8, i8* %arrayidx70.10, align 1
  %conv71.6.10 = zext i8 %1185 to i32
  %xor72.6.10 = xor i32 %conv71.6.10, %conv68.6.10
  %conv73.6.10 = trunc i32 %xor72.6.10 to i8
  store i8 %conv73.6.10, i8* %arrayidx70.10, align 1
  %scevgep20.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 7
  %1186 = load i8, i8* %scevgep20.7.10, align 1
  %conv68.7.10 = zext i8 %1186 to i32
  %1187 = load i8, i8* %arrayidx70.10, align 1
  %conv71.7.10 = zext i8 %1187 to i32
  %xor72.7.10 = xor i32 %conv71.7.10, %conv68.7.10
  %conv73.7.10 = trunc i32 %xor72.7.10 to i8
  store i8 %conv73.7.10, i8* %arrayidx70.10, align 1
  %scevgep20.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 8
  %1188 = load i8, i8* %scevgep20.8.10, align 1
  %conv68.8.10 = zext i8 %1188 to i32
  %1189 = load i8, i8* %arrayidx70.10, align 1
  %conv71.8.10 = zext i8 %1189 to i32
  %xor72.8.10 = xor i32 %conv71.8.10, %conv68.8.10
  %conv73.8.10 = trunc i32 %xor72.8.10 to i8
  store i8 %conv73.8.10, i8* %arrayidx70.10, align 1
  %scevgep20.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 9
  %1190 = load i8, i8* %scevgep20.9.10, align 1
  %conv68.9.10 = zext i8 %1190 to i32
  %1191 = load i8, i8* %arrayidx70.10, align 1
  %conv71.9.10 = zext i8 %1191 to i32
  %xor72.9.10 = xor i32 %conv71.9.10, %conv68.9.10
  %conv73.9.10 = trunc i32 %xor72.9.10 to i8
  store i8 %conv73.9.10, i8* %arrayidx70.10, align 1
  %scevgep20.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 11
  %1192 = load i8, i8* %scevgep20.11.10, align 1
  %conv68.11.10 = zext i8 %1192 to i32
  %1193 = load i8, i8* %arrayidx70.10, align 1
  %conv71.11.10 = zext i8 %1193 to i32
  %xor72.11.10 = xor i32 %conv71.11.10, %conv68.11.10
  %conv73.11.10 = trunc i32 %xor72.11.10 to i8
  store i8 %conv73.11.10, i8* %arrayidx70.10, align 1
  %scevgep20.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 12
  %1194 = load i8, i8* %scevgep20.12.10, align 1
  %conv68.12.10 = zext i8 %1194 to i32
  %1195 = load i8, i8* %arrayidx70.10, align 1
  %conv71.12.10 = zext i8 %1195 to i32
  %xor72.12.10 = xor i32 %conv71.12.10, %conv68.12.10
  %conv73.12.10 = trunc i32 %xor72.12.10 to i8
  store i8 %conv73.12.10, i8* %arrayidx70.10, align 1
  %scevgep20.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 13
  %1196 = load i8, i8* %scevgep20.13.10, align 1
  %conv68.13.10 = zext i8 %1196 to i32
  %1197 = load i8, i8* %arrayidx70.10, align 1
  %conv71.13.10 = zext i8 %1197 to i32
  %xor72.13.10 = xor i32 %conv71.13.10, %conv68.13.10
  %conv73.13.10 = trunc i32 %xor72.13.10 to i8
  store i8 %conv73.13.10, i8* %arrayidx70.10, align 1
  %scevgep20.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 14
  %1198 = load i8, i8* %scevgep20.14.10, align 1
  %conv68.14.10 = zext i8 %1198 to i32
  %1199 = load i8, i8* %arrayidx70.10, align 1
  %conv71.14.10 = zext i8 %1199 to i32
  %xor72.14.10 = xor i32 %conv71.14.10, %conv68.14.10
  %conv73.14.10 = trunc i32 %xor72.14.10 to i8
  store i8 %conv73.14.10, i8* %arrayidx70.10, align 1
  %scevgep20.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 0, i64 15
  %1200 = load i8, i8* %scevgep20.15.10, align 1
  %conv68.15.10 = zext i8 %1200 to i32
  %1201 = load i8, i8* %arrayidx70.10, align 1
  %conv71.15.10 = zext i8 %1201 to i32
  %xor72.15.10 = xor i32 %conv71.15.10, %conv68.15.10
  %conv73.15.10 = trunc i32 %xor72.15.10 to i8
  store i8 %conv73.15.10, i8* %arrayidx70.10, align 1
  %scevgep19.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1169, i64 0, i64 1, i64 0
  %1202 = bitcast i8* %scevgep19.10 to [16 x [16 x i8]]*
  %arrayidx51.11 = getelementptr inbounds i8, i8* %a, i64 11
  %1203 = load i8, i8* %arrayidx51.11, align 1
  %arrayidx53.11 = getelementptr inbounds i8, i8* %b, i64 11
  %1204 = load i8, i8* %arrayidx53.11, align 1
  %call54.11 = call zeroext i8 @mult(i8 zeroext %1203, i8 zeroext %1204)
  %arrayidx56.11 = getelementptr inbounds i8, i8* %c, i64 11
  store i8 %call54.11, i8* %arrayidx56.11, align 1
  %arrayidx70.11 = getelementptr inbounds i8, i8* %c, i64 11
  %scevgep20.11154 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 0
  %1205 = load i8, i8* %scevgep20.11154, align 1
  %conv68.11155 = zext i8 %1205 to i32
  %1206 = load i8, i8* %arrayidx70.11, align 1
  %conv71.11156 = zext i8 %1206 to i32
  %xor72.11157 = xor i32 %conv71.11156, %conv68.11155
  %conv73.11158 = trunc i32 %xor72.11157 to i8
  store i8 %conv73.11158, i8* %arrayidx70.11, align 1
  %scevgep20.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 1
  %1207 = load i8, i8* %scevgep20.1.11, align 1
  %conv68.1.11 = zext i8 %1207 to i32
  %1208 = load i8, i8* %arrayidx70.11, align 1
  %conv71.1.11 = zext i8 %1208 to i32
  %xor72.1.11 = xor i32 %conv71.1.11, %conv68.1.11
  %conv73.1.11 = trunc i32 %xor72.1.11 to i8
  store i8 %conv73.1.11, i8* %arrayidx70.11, align 1
  %scevgep20.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 2
  %1209 = load i8, i8* %scevgep20.2.11, align 1
  %conv68.2.11 = zext i8 %1209 to i32
  %1210 = load i8, i8* %arrayidx70.11, align 1
  %conv71.2.11 = zext i8 %1210 to i32
  %xor72.2.11 = xor i32 %conv71.2.11, %conv68.2.11
  %conv73.2.11 = trunc i32 %xor72.2.11 to i8
  store i8 %conv73.2.11, i8* %arrayidx70.11, align 1
  %scevgep20.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 3
  %1211 = load i8, i8* %scevgep20.3.11, align 1
  %conv68.3.11 = zext i8 %1211 to i32
  %1212 = load i8, i8* %arrayidx70.11, align 1
  %conv71.3.11 = zext i8 %1212 to i32
  %xor72.3.11 = xor i32 %conv71.3.11, %conv68.3.11
  %conv73.3.11 = trunc i32 %xor72.3.11 to i8
  store i8 %conv73.3.11, i8* %arrayidx70.11, align 1
  %scevgep20.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 4
  %1213 = load i8, i8* %scevgep20.4.11, align 1
  %conv68.4.11 = zext i8 %1213 to i32
  %1214 = load i8, i8* %arrayidx70.11, align 1
  %conv71.4.11 = zext i8 %1214 to i32
  %xor72.4.11 = xor i32 %conv71.4.11, %conv68.4.11
  %conv73.4.11 = trunc i32 %xor72.4.11 to i8
  store i8 %conv73.4.11, i8* %arrayidx70.11, align 1
  %scevgep20.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 5
  %1215 = load i8, i8* %scevgep20.5.11, align 1
  %conv68.5.11 = zext i8 %1215 to i32
  %1216 = load i8, i8* %arrayidx70.11, align 1
  %conv71.5.11 = zext i8 %1216 to i32
  %xor72.5.11 = xor i32 %conv71.5.11, %conv68.5.11
  %conv73.5.11 = trunc i32 %xor72.5.11 to i8
  store i8 %conv73.5.11, i8* %arrayidx70.11, align 1
  %scevgep20.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 6
  %1217 = load i8, i8* %scevgep20.6.11, align 1
  %conv68.6.11 = zext i8 %1217 to i32
  %1218 = load i8, i8* %arrayidx70.11, align 1
  %conv71.6.11 = zext i8 %1218 to i32
  %xor72.6.11 = xor i32 %conv71.6.11, %conv68.6.11
  %conv73.6.11 = trunc i32 %xor72.6.11 to i8
  store i8 %conv73.6.11, i8* %arrayidx70.11, align 1
  %scevgep20.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 7
  %1219 = load i8, i8* %scevgep20.7.11, align 1
  %conv68.7.11 = zext i8 %1219 to i32
  %1220 = load i8, i8* %arrayidx70.11, align 1
  %conv71.7.11 = zext i8 %1220 to i32
  %xor72.7.11 = xor i32 %conv71.7.11, %conv68.7.11
  %conv73.7.11 = trunc i32 %xor72.7.11 to i8
  store i8 %conv73.7.11, i8* %arrayidx70.11, align 1
  %scevgep20.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 8
  %1221 = load i8, i8* %scevgep20.8.11, align 1
  %conv68.8.11 = zext i8 %1221 to i32
  %1222 = load i8, i8* %arrayidx70.11, align 1
  %conv71.8.11 = zext i8 %1222 to i32
  %xor72.8.11 = xor i32 %conv71.8.11, %conv68.8.11
  %conv73.8.11 = trunc i32 %xor72.8.11 to i8
  store i8 %conv73.8.11, i8* %arrayidx70.11, align 1
  %scevgep20.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 9
  %1223 = load i8, i8* %scevgep20.9.11, align 1
  %conv68.9.11 = zext i8 %1223 to i32
  %1224 = load i8, i8* %arrayidx70.11, align 1
  %conv71.9.11 = zext i8 %1224 to i32
  %xor72.9.11 = xor i32 %conv71.9.11, %conv68.9.11
  %conv73.9.11 = trunc i32 %xor72.9.11 to i8
  store i8 %conv73.9.11, i8* %arrayidx70.11, align 1
  %scevgep20.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 10
  %1225 = load i8, i8* %scevgep20.10.11, align 1
  %conv68.10.11 = zext i8 %1225 to i32
  %1226 = load i8, i8* %arrayidx70.11, align 1
  %conv71.10.11 = zext i8 %1226 to i32
  %xor72.10.11 = xor i32 %conv71.10.11, %conv68.10.11
  %conv73.10.11 = trunc i32 %xor72.10.11 to i8
  store i8 %conv73.10.11, i8* %arrayidx70.11, align 1
  %scevgep20.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 12
  %1227 = load i8, i8* %scevgep20.12.11, align 1
  %conv68.12.11 = zext i8 %1227 to i32
  %1228 = load i8, i8* %arrayidx70.11, align 1
  %conv71.12.11 = zext i8 %1228 to i32
  %xor72.12.11 = xor i32 %conv71.12.11, %conv68.12.11
  %conv73.12.11 = trunc i32 %xor72.12.11 to i8
  store i8 %conv73.12.11, i8* %arrayidx70.11, align 1
  %scevgep20.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 13
  %1229 = load i8, i8* %scevgep20.13.11, align 1
  %conv68.13.11 = zext i8 %1229 to i32
  %1230 = load i8, i8* %arrayidx70.11, align 1
  %conv71.13.11 = zext i8 %1230 to i32
  %xor72.13.11 = xor i32 %conv71.13.11, %conv68.13.11
  %conv73.13.11 = trunc i32 %xor72.13.11 to i8
  store i8 %conv73.13.11, i8* %arrayidx70.11, align 1
  %scevgep20.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 14
  %1231 = load i8, i8* %scevgep20.14.11, align 1
  %conv68.14.11 = zext i8 %1231 to i32
  %1232 = load i8, i8* %arrayidx70.11, align 1
  %conv71.14.11 = zext i8 %1232 to i32
  %xor72.14.11 = xor i32 %conv71.14.11, %conv68.14.11
  %conv73.14.11 = trunc i32 %xor72.14.11 to i8
  store i8 %conv73.14.11, i8* %arrayidx70.11, align 1
  %scevgep20.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 0, i64 15
  %1233 = load i8, i8* %scevgep20.15.11, align 1
  %conv68.15.11 = zext i8 %1233 to i32
  %1234 = load i8, i8* %arrayidx70.11, align 1
  %conv71.15.11 = zext i8 %1234 to i32
  %xor72.15.11 = xor i32 %conv71.15.11, %conv68.15.11
  %conv73.15.11 = trunc i32 %xor72.15.11 to i8
  store i8 %conv73.15.11, i8* %arrayidx70.11, align 1
  %scevgep19.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1202, i64 0, i64 1, i64 0
  %1235 = bitcast i8* %scevgep19.11 to [16 x [16 x i8]]*
  %arrayidx51.12 = getelementptr inbounds i8, i8* %a, i64 12
  %1236 = load i8, i8* %arrayidx51.12, align 1
  %arrayidx53.12 = getelementptr inbounds i8, i8* %b, i64 12
  %1237 = load i8, i8* %arrayidx53.12, align 1
  %call54.12 = call zeroext i8 @mult(i8 zeroext %1236, i8 zeroext %1237)
  %arrayidx56.12 = getelementptr inbounds i8, i8* %c, i64 12
  store i8 %call54.12, i8* %arrayidx56.12, align 1
  %arrayidx70.12 = getelementptr inbounds i8, i8* %c, i64 12
  %scevgep20.12164 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 0
  %1238 = load i8, i8* %scevgep20.12164, align 1
  %conv68.12165 = zext i8 %1238 to i32
  %1239 = load i8, i8* %arrayidx70.12, align 1
  %conv71.12166 = zext i8 %1239 to i32
  %xor72.12167 = xor i32 %conv71.12166, %conv68.12165
  %conv73.12168 = trunc i32 %xor72.12167 to i8
  store i8 %conv73.12168, i8* %arrayidx70.12, align 1
  %scevgep20.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 1
  %1240 = load i8, i8* %scevgep20.1.12, align 1
  %conv68.1.12 = zext i8 %1240 to i32
  %1241 = load i8, i8* %arrayidx70.12, align 1
  %conv71.1.12 = zext i8 %1241 to i32
  %xor72.1.12 = xor i32 %conv71.1.12, %conv68.1.12
  %conv73.1.12 = trunc i32 %xor72.1.12 to i8
  store i8 %conv73.1.12, i8* %arrayidx70.12, align 1
  %scevgep20.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 2
  %1242 = load i8, i8* %scevgep20.2.12, align 1
  %conv68.2.12 = zext i8 %1242 to i32
  %1243 = load i8, i8* %arrayidx70.12, align 1
  %conv71.2.12 = zext i8 %1243 to i32
  %xor72.2.12 = xor i32 %conv71.2.12, %conv68.2.12
  %conv73.2.12 = trunc i32 %xor72.2.12 to i8
  store i8 %conv73.2.12, i8* %arrayidx70.12, align 1
  %scevgep20.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 3
  %1244 = load i8, i8* %scevgep20.3.12, align 1
  %conv68.3.12 = zext i8 %1244 to i32
  %1245 = load i8, i8* %arrayidx70.12, align 1
  %conv71.3.12 = zext i8 %1245 to i32
  %xor72.3.12 = xor i32 %conv71.3.12, %conv68.3.12
  %conv73.3.12 = trunc i32 %xor72.3.12 to i8
  store i8 %conv73.3.12, i8* %arrayidx70.12, align 1
  %scevgep20.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 4
  %1246 = load i8, i8* %scevgep20.4.12, align 1
  %conv68.4.12 = zext i8 %1246 to i32
  %1247 = load i8, i8* %arrayidx70.12, align 1
  %conv71.4.12 = zext i8 %1247 to i32
  %xor72.4.12 = xor i32 %conv71.4.12, %conv68.4.12
  %conv73.4.12 = trunc i32 %xor72.4.12 to i8
  store i8 %conv73.4.12, i8* %arrayidx70.12, align 1
  %scevgep20.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 5
  %1248 = load i8, i8* %scevgep20.5.12, align 1
  %conv68.5.12 = zext i8 %1248 to i32
  %1249 = load i8, i8* %arrayidx70.12, align 1
  %conv71.5.12 = zext i8 %1249 to i32
  %xor72.5.12 = xor i32 %conv71.5.12, %conv68.5.12
  %conv73.5.12 = trunc i32 %xor72.5.12 to i8
  store i8 %conv73.5.12, i8* %arrayidx70.12, align 1
  %scevgep20.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 6
  %1250 = load i8, i8* %scevgep20.6.12, align 1
  %conv68.6.12 = zext i8 %1250 to i32
  %1251 = load i8, i8* %arrayidx70.12, align 1
  %conv71.6.12 = zext i8 %1251 to i32
  %xor72.6.12 = xor i32 %conv71.6.12, %conv68.6.12
  %conv73.6.12 = trunc i32 %xor72.6.12 to i8
  store i8 %conv73.6.12, i8* %arrayidx70.12, align 1
  %scevgep20.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 7
  %1252 = load i8, i8* %scevgep20.7.12, align 1
  %conv68.7.12 = zext i8 %1252 to i32
  %1253 = load i8, i8* %arrayidx70.12, align 1
  %conv71.7.12 = zext i8 %1253 to i32
  %xor72.7.12 = xor i32 %conv71.7.12, %conv68.7.12
  %conv73.7.12 = trunc i32 %xor72.7.12 to i8
  store i8 %conv73.7.12, i8* %arrayidx70.12, align 1
  %scevgep20.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 8
  %1254 = load i8, i8* %scevgep20.8.12, align 1
  %conv68.8.12 = zext i8 %1254 to i32
  %1255 = load i8, i8* %arrayidx70.12, align 1
  %conv71.8.12 = zext i8 %1255 to i32
  %xor72.8.12 = xor i32 %conv71.8.12, %conv68.8.12
  %conv73.8.12 = trunc i32 %xor72.8.12 to i8
  store i8 %conv73.8.12, i8* %arrayidx70.12, align 1
  %scevgep20.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 9
  %1256 = load i8, i8* %scevgep20.9.12, align 1
  %conv68.9.12 = zext i8 %1256 to i32
  %1257 = load i8, i8* %arrayidx70.12, align 1
  %conv71.9.12 = zext i8 %1257 to i32
  %xor72.9.12 = xor i32 %conv71.9.12, %conv68.9.12
  %conv73.9.12 = trunc i32 %xor72.9.12 to i8
  store i8 %conv73.9.12, i8* %arrayidx70.12, align 1
  %scevgep20.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 10
  %1258 = load i8, i8* %scevgep20.10.12, align 1
  %conv68.10.12 = zext i8 %1258 to i32
  %1259 = load i8, i8* %arrayidx70.12, align 1
  %conv71.10.12 = zext i8 %1259 to i32
  %xor72.10.12 = xor i32 %conv71.10.12, %conv68.10.12
  %conv73.10.12 = trunc i32 %xor72.10.12 to i8
  store i8 %conv73.10.12, i8* %arrayidx70.12, align 1
  %scevgep20.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 11
  %1260 = load i8, i8* %scevgep20.11.12, align 1
  %conv68.11.12 = zext i8 %1260 to i32
  %1261 = load i8, i8* %arrayidx70.12, align 1
  %conv71.11.12 = zext i8 %1261 to i32
  %xor72.11.12 = xor i32 %conv71.11.12, %conv68.11.12
  %conv73.11.12 = trunc i32 %xor72.11.12 to i8
  store i8 %conv73.11.12, i8* %arrayidx70.12, align 1
  %scevgep20.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 13
  %1262 = load i8, i8* %scevgep20.13.12, align 1
  %conv68.13.12 = zext i8 %1262 to i32
  %1263 = load i8, i8* %arrayidx70.12, align 1
  %conv71.13.12 = zext i8 %1263 to i32
  %xor72.13.12 = xor i32 %conv71.13.12, %conv68.13.12
  %conv73.13.12 = trunc i32 %xor72.13.12 to i8
  store i8 %conv73.13.12, i8* %arrayidx70.12, align 1
  %scevgep20.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 14
  %1264 = load i8, i8* %scevgep20.14.12, align 1
  %conv68.14.12 = zext i8 %1264 to i32
  %1265 = load i8, i8* %arrayidx70.12, align 1
  %conv71.14.12 = zext i8 %1265 to i32
  %xor72.14.12 = xor i32 %conv71.14.12, %conv68.14.12
  %conv73.14.12 = trunc i32 %xor72.14.12 to i8
  store i8 %conv73.14.12, i8* %arrayidx70.12, align 1
  %scevgep20.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 0, i64 15
  %1266 = load i8, i8* %scevgep20.15.12, align 1
  %conv68.15.12 = zext i8 %1266 to i32
  %1267 = load i8, i8* %arrayidx70.12, align 1
  %conv71.15.12 = zext i8 %1267 to i32
  %xor72.15.12 = xor i32 %conv71.15.12, %conv68.15.12
  %conv73.15.12 = trunc i32 %xor72.15.12 to i8
  store i8 %conv73.15.12, i8* %arrayidx70.12, align 1
  %scevgep19.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1235, i64 0, i64 1, i64 0
  %1268 = bitcast i8* %scevgep19.12 to [16 x [16 x i8]]*
  %arrayidx51.13 = getelementptr inbounds i8, i8* %a, i64 13
  %1269 = load i8, i8* %arrayidx51.13, align 1
  %arrayidx53.13 = getelementptr inbounds i8, i8* %b, i64 13
  %1270 = load i8, i8* %arrayidx53.13, align 1
  %call54.13 = call zeroext i8 @mult(i8 zeroext %1269, i8 zeroext %1270)
  %arrayidx56.13 = getelementptr inbounds i8, i8* %c, i64 13
  store i8 %call54.13, i8* %arrayidx56.13, align 1
  %arrayidx70.13 = getelementptr inbounds i8, i8* %c, i64 13
  %scevgep20.13174 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 0
  %1271 = load i8, i8* %scevgep20.13174, align 1
  %conv68.13175 = zext i8 %1271 to i32
  %1272 = load i8, i8* %arrayidx70.13, align 1
  %conv71.13176 = zext i8 %1272 to i32
  %xor72.13177 = xor i32 %conv71.13176, %conv68.13175
  %conv73.13178 = trunc i32 %xor72.13177 to i8
  store i8 %conv73.13178, i8* %arrayidx70.13, align 1
  %scevgep20.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 1
  %1273 = load i8, i8* %scevgep20.1.13, align 1
  %conv68.1.13 = zext i8 %1273 to i32
  %1274 = load i8, i8* %arrayidx70.13, align 1
  %conv71.1.13 = zext i8 %1274 to i32
  %xor72.1.13 = xor i32 %conv71.1.13, %conv68.1.13
  %conv73.1.13 = trunc i32 %xor72.1.13 to i8
  store i8 %conv73.1.13, i8* %arrayidx70.13, align 1
  %scevgep20.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 2
  %1275 = load i8, i8* %scevgep20.2.13, align 1
  %conv68.2.13 = zext i8 %1275 to i32
  %1276 = load i8, i8* %arrayidx70.13, align 1
  %conv71.2.13 = zext i8 %1276 to i32
  %xor72.2.13 = xor i32 %conv71.2.13, %conv68.2.13
  %conv73.2.13 = trunc i32 %xor72.2.13 to i8
  store i8 %conv73.2.13, i8* %arrayidx70.13, align 1
  %scevgep20.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 3
  %1277 = load i8, i8* %scevgep20.3.13, align 1
  %conv68.3.13 = zext i8 %1277 to i32
  %1278 = load i8, i8* %arrayidx70.13, align 1
  %conv71.3.13 = zext i8 %1278 to i32
  %xor72.3.13 = xor i32 %conv71.3.13, %conv68.3.13
  %conv73.3.13 = trunc i32 %xor72.3.13 to i8
  store i8 %conv73.3.13, i8* %arrayidx70.13, align 1
  %scevgep20.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 4
  %1279 = load i8, i8* %scevgep20.4.13, align 1
  %conv68.4.13 = zext i8 %1279 to i32
  %1280 = load i8, i8* %arrayidx70.13, align 1
  %conv71.4.13 = zext i8 %1280 to i32
  %xor72.4.13 = xor i32 %conv71.4.13, %conv68.4.13
  %conv73.4.13 = trunc i32 %xor72.4.13 to i8
  store i8 %conv73.4.13, i8* %arrayidx70.13, align 1
  %scevgep20.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 5
  %1281 = load i8, i8* %scevgep20.5.13, align 1
  %conv68.5.13 = zext i8 %1281 to i32
  %1282 = load i8, i8* %arrayidx70.13, align 1
  %conv71.5.13 = zext i8 %1282 to i32
  %xor72.5.13 = xor i32 %conv71.5.13, %conv68.5.13
  %conv73.5.13 = trunc i32 %xor72.5.13 to i8
  store i8 %conv73.5.13, i8* %arrayidx70.13, align 1
  %scevgep20.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 6
  %1283 = load i8, i8* %scevgep20.6.13, align 1
  %conv68.6.13 = zext i8 %1283 to i32
  %1284 = load i8, i8* %arrayidx70.13, align 1
  %conv71.6.13 = zext i8 %1284 to i32
  %xor72.6.13 = xor i32 %conv71.6.13, %conv68.6.13
  %conv73.6.13 = trunc i32 %xor72.6.13 to i8
  store i8 %conv73.6.13, i8* %arrayidx70.13, align 1
  %scevgep20.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 7
  %1285 = load i8, i8* %scevgep20.7.13, align 1
  %conv68.7.13 = zext i8 %1285 to i32
  %1286 = load i8, i8* %arrayidx70.13, align 1
  %conv71.7.13 = zext i8 %1286 to i32
  %xor72.7.13 = xor i32 %conv71.7.13, %conv68.7.13
  %conv73.7.13 = trunc i32 %xor72.7.13 to i8
  store i8 %conv73.7.13, i8* %arrayidx70.13, align 1
  %scevgep20.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 8
  %1287 = load i8, i8* %scevgep20.8.13, align 1
  %conv68.8.13 = zext i8 %1287 to i32
  %1288 = load i8, i8* %arrayidx70.13, align 1
  %conv71.8.13 = zext i8 %1288 to i32
  %xor72.8.13 = xor i32 %conv71.8.13, %conv68.8.13
  %conv73.8.13 = trunc i32 %xor72.8.13 to i8
  store i8 %conv73.8.13, i8* %arrayidx70.13, align 1
  %scevgep20.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 9
  %1289 = load i8, i8* %scevgep20.9.13, align 1
  %conv68.9.13 = zext i8 %1289 to i32
  %1290 = load i8, i8* %arrayidx70.13, align 1
  %conv71.9.13 = zext i8 %1290 to i32
  %xor72.9.13 = xor i32 %conv71.9.13, %conv68.9.13
  %conv73.9.13 = trunc i32 %xor72.9.13 to i8
  store i8 %conv73.9.13, i8* %arrayidx70.13, align 1
  %scevgep20.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 10
  %1291 = load i8, i8* %scevgep20.10.13, align 1
  %conv68.10.13 = zext i8 %1291 to i32
  %1292 = load i8, i8* %arrayidx70.13, align 1
  %conv71.10.13 = zext i8 %1292 to i32
  %xor72.10.13 = xor i32 %conv71.10.13, %conv68.10.13
  %conv73.10.13 = trunc i32 %xor72.10.13 to i8
  store i8 %conv73.10.13, i8* %arrayidx70.13, align 1
  %scevgep20.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 11
  %1293 = load i8, i8* %scevgep20.11.13, align 1
  %conv68.11.13 = zext i8 %1293 to i32
  %1294 = load i8, i8* %arrayidx70.13, align 1
  %conv71.11.13 = zext i8 %1294 to i32
  %xor72.11.13 = xor i32 %conv71.11.13, %conv68.11.13
  %conv73.11.13 = trunc i32 %xor72.11.13 to i8
  store i8 %conv73.11.13, i8* %arrayidx70.13, align 1
  %scevgep20.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 12
  %1295 = load i8, i8* %scevgep20.12.13, align 1
  %conv68.12.13 = zext i8 %1295 to i32
  %1296 = load i8, i8* %arrayidx70.13, align 1
  %conv71.12.13 = zext i8 %1296 to i32
  %xor72.12.13 = xor i32 %conv71.12.13, %conv68.12.13
  %conv73.12.13 = trunc i32 %xor72.12.13 to i8
  store i8 %conv73.12.13, i8* %arrayidx70.13, align 1
  %scevgep20.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 14
  %1297 = load i8, i8* %scevgep20.14.13, align 1
  %conv68.14.13 = zext i8 %1297 to i32
  %1298 = load i8, i8* %arrayidx70.13, align 1
  %conv71.14.13 = zext i8 %1298 to i32
  %xor72.14.13 = xor i32 %conv71.14.13, %conv68.14.13
  %conv73.14.13 = trunc i32 %xor72.14.13 to i8
  store i8 %conv73.14.13, i8* %arrayidx70.13, align 1
  %scevgep20.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 0, i64 15
  %1299 = load i8, i8* %scevgep20.15.13, align 1
  %conv68.15.13 = zext i8 %1299 to i32
  %1300 = load i8, i8* %arrayidx70.13, align 1
  %conv71.15.13 = zext i8 %1300 to i32
  %xor72.15.13 = xor i32 %conv71.15.13, %conv68.15.13
  %conv73.15.13 = trunc i32 %xor72.15.13 to i8
  store i8 %conv73.15.13, i8* %arrayidx70.13, align 1
  %scevgep19.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1268, i64 0, i64 1, i64 0
  %1301 = bitcast i8* %scevgep19.13 to [16 x [16 x i8]]*
  %arrayidx51.14 = getelementptr inbounds i8, i8* %a, i64 14
  %1302 = load i8, i8* %arrayidx51.14, align 1
  %arrayidx53.14 = getelementptr inbounds i8, i8* %b, i64 14
  %1303 = load i8, i8* %arrayidx53.14, align 1
  %call54.14 = call zeroext i8 @mult(i8 zeroext %1302, i8 zeroext %1303)
  %arrayidx56.14 = getelementptr inbounds i8, i8* %c, i64 14
  store i8 %call54.14, i8* %arrayidx56.14, align 1
  %arrayidx70.14 = getelementptr inbounds i8, i8* %c, i64 14
  %scevgep20.14184 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 0
  %1304 = load i8, i8* %scevgep20.14184, align 1
  %conv68.14185 = zext i8 %1304 to i32
  %1305 = load i8, i8* %arrayidx70.14, align 1
  %conv71.14186 = zext i8 %1305 to i32
  %xor72.14187 = xor i32 %conv71.14186, %conv68.14185
  %conv73.14188 = trunc i32 %xor72.14187 to i8
  store i8 %conv73.14188, i8* %arrayidx70.14, align 1
  %scevgep20.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 1
  %1306 = load i8, i8* %scevgep20.1.14, align 1
  %conv68.1.14 = zext i8 %1306 to i32
  %1307 = load i8, i8* %arrayidx70.14, align 1
  %conv71.1.14 = zext i8 %1307 to i32
  %xor72.1.14 = xor i32 %conv71.1.14, %conv68.1.14
  %conv73.1.14 = trunc i32 %xor72.1.14 to i8
  store i8 %conv73.1.14, i8* %arrayidx70.14, align 1
  %scevgep20.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 2
  %1308 = load i8, i8* %scevgep20.2.14, align 1
  %conv68.2.14 = zext i8 %1308 to i32
  %1309 = load i8, i8* %arrayidx70.14, align 1
  %conv71.2.14 = zext i8 %1309 to i32
  %xor72.2.14 = xor i32 %conv71.2.14, %conv68.2.14
  %conv73.2.14 = trunc i32 %xor72.2.14 to i8
  store i8 %conv73.2.14, i8* %arrayidx70.14, align 1
  %scevgep20.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 3
  %1310 = load i8, i8* %scevgep20.3.14, align 1
  %conv68.3.14 = zext i8 %1310 to i32
  %1311 = load i8, i8* %arrayidx70.14, align 1
  %conv71.3.14 = zext i8 %1311 to i32
  %xor72.3.14 = xor i32 %conv71.3.14, %conv68.3.14
  %conv73.3.14 = trunc i32 %xor72.3.14 to i8
  store i8 %conv73.3.14, i8* %arrayidx70.14, align 1
  %scevgep20.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 4
  %1312 = load i8, i8* %scevgep20.4.14, align 1
  %conv68.4.14 = zext i8 %1312 to i32
  %1313 = load i8, i8* %arrayidx70.14, align 1
  %conv71.4.14 = zext i8 %1313 to i32
  %xor72.4.14 = xor i32 %conv71.4.14, %conv68.4.14
  %conv73.4.14 = trunc i32 %xor72.4.14 to i8
  store i8 %conv73.4.14, i8* %arrayidx70.14, align 1
  %scevgep20.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 5
  %1314 = load i8, i8* %scevgep20.5.14, align 1
  %conv68.5.14 = zext i8 %1314 to i32
  %1315 = load i8, i8* %arrayidx70.14, align 1
  %conv71.5.14 = zext i8 %1315 to i32
  %xor72.5.14 = xor i32 %conv71.5.14, %conv68.5.14
  %conv73.5.14 = trunc i32 %xor72.5.14 to i8
  store i8 %conv73.5.14, i8* %arrayidx70.14, align 1
  %scevgep20.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 6
  %1316 = load i8, i8* %scevgep20.6.14, align 1
  %conv68.6.14 = zext i8 %1316 to i32
  %1317 = load i8, i8* %arrayidx70.14, align 1
  %conv71.6.14 = zext i8 %1317 to i32
  %xor72.6.14 = xor i32 %conv71.6.14, %conv68.6.14
  %conv73.6.14 = trunc i32 %xor72.6.14 to i8
  store i8 %conv73.6.14, i8* %arrayidx70.14, align 1
  %scevgep20.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 7
  %1318 = load i8, i8* %scevgep20.7.14, align 1
  %conv68.7.14 = zext i8 %1318 to i32
  %1319 = load i8, i8* %arrayidx70.14, align 1
  %conv71.7.14 = zext i8 %1319 to i32
  %xor72.7.14 = xor i32 %conv71.7.14, %conv68.7.14
  %conv73.7.14 = trunc i32 %xor72.7.14 to i8
  store i8 %conv73.7.14, i8* %arrayidx70.14, align 1
  %scevgep20.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 8
  %1320 = load i8, i8* %scevgep20.8.14, align 1
  %conv68.8.14 = zext i8 %1320 to i32
  %1321 = load i8, i8* %arrayidx70.14, align 1
  %conv71.8.14 = zext i8 %1321 to i32
  %xor72.8.14 = xor i32 %conv71.8.14, %conv68.8.14
  %conv73.8.14 = trunc i32 %xor72.8.14 to i8
  store i8 %conv73.8.14, i8* %arrayidx70.14, align 1
  %scevgep20.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 9
  %1322 = load i8, i8* %scevgep20.9.14, align 1
  %conv68.9.14 = zext i8 %1322 to i32
  %1323 = load i8, i8* %arrayidx70.14, align 1
  %conv71.9.14 = zext i8 %1323 to i32
  %xor72.9.14 = xor i32 %conv71.9.14, %conv68.9.14
  %conv73.9.14 = trunc i32 %xor72.9.14 to i8
  store i8 %conv73.9.14, i8* %arrayidx70.14, align 1
  %scevgep20.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 10
  %1324 = load i8, i8* %scevgep20.10.14, align 1
  %conv68.10.14 = zext i8 %1324 to i32
  %1325 = load i8, i8* %arrayidx70.14, align 1
  %conv71.10.14 = zext i8 %1325 to i32
  %xor72.10.14 = xor i32 %conv71.10.14, %conv68.10.14
  %conv73.10.14 = trunc i32 %xor72.10.14 to i8
  store i8 %conv73.10.14, i8* %arrayidx70.14, align 1
  %scevgep20.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 11
  %1326 = load i8, i8* %scevgep20.11.14, align 1
  %conv68.11.14 = zext i8 %1326 to i32
  %1327 = load i8, i8* %arrayidx70.14, align 1
  %conv71.11.14 = zext i8 %1327 to i32
  %xor72.11.14 = xor i32 %conv71.11.14, %conv68.11.14
  %conv73.11.14 = trunc i32 %xor72.11.14 to i8
  store i8 %conv73.11.14, i8* %arrayidx70.14, align 1
  %scevgep20.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 12
  %1328 = load i8, i8* %scevgep20.12.14, align 1
  %conv68.12.14 = zext i8 %1328 to i32
  %1329 = load i8, i8* %arrayidx70.14, align 1
  %conv71.12.14 = zext i8 %1329 to i32
  %xor72.12.14 = xor i32 %conv71.12.14, %conv68.12.14
  %conv73.12.14 = trunc i32 %xor72.12.14 to i8
  store i8 %conv73.12.14, i8* %arrayidx70.14, align 1
  %scevgep20.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 13
  %1330 = load i8, i8* %scevgep20.13.14, align 1
  %conv68.13.14 = zext i8 %1330 to i32
  %1331 = load i8, i8* %arrayidx70.14, align 1
  %conv71.13.14 = zext i8 %1331 to i32
  %xor72.13.14 = xor i32 %conv71.13.14, %conv68.13.14
  %conv73.13.14 = trunc i32 %xor72.13.14 to i8
  store i8 %conv73.13.14, i8* %arrayidx70.14, align 1
  %scevgep20.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 0, i64 15
  %1332 = load i8, i8* %scevgep20.15.14, align 1
  %conv68.15.14 = zext i8 %1332 to i32
  %1333 = load i8, i8* %arrayidx70.14, align 1
  %conv71.15.14 = zext i8 %1333 to i32
  %xor72.15.14 = xor i32 %conv71.15.14, %conv68.15.14
  %conv73.15.14 = trunc i32 %xor72.15.14 to i8
  store i8 %conv73.15.14, i8* %arrayidx70.14, align 1
  %scevgep19.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1301, i64 0, i64 1, i64 0
  %1334 = bitcast i8* %scevgep19.14 to [16 x [16 x i8]]*
  %arrayidx51.15 = getelementptr inbounds i8, i8* %a, i64 15
  %1335 = load i8, i8* %arrayidx51.15, align 1
  %arrayidx53.15 = getelementptr inbounds i8, i8* %b, i64 15
  %1336 = load i8, i8* %arrayidx53.15, align 1
  %call54.15 = call zeroext i8 @mult(i8 zeroext %1335, i8 zeroext %1336)
  %arrayidx56.15 = getelementptr inbounds i8, i8* %c, i64 15
  store i8 %call54.15, i8* %arrayidx56.15, align 1
  %arrayidx70.15 = getelementptr inbounds i8, i8* %c, i64 15
  %scevgep20.15194 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 0
  %1337 = load i8, i8* %scevgep20.15194, align 1
  %conv68.15195 = zext i8 %1337 to i32
  %1338 = load i8, i8* %arrayidx70.15, align 1
  %conv71.15196 = zext i8 %1338 to i32
  %xor72.15197 = xor i32 %conv71.15196, %conv68.15195
  %conv73.15198 = trunc i32 %xor72.15197 to i8
  store i8 %conv73.15198, i8* %arrayidx70.15, align 1
  %scevgep20.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 1
  %1339 = load i8, i8* %scevgep20.1.15, align 1
  %conv68.1.15 = zext i8 %1339 to i32
  %1340 = load i8, i8* %arrayidx70.15, align 1
  %conv71.1.15 = zext i8 %1340 to i32
  %xor72.1.15 = xor i32 %conv71.1.15, %conv68.1.15
  %conv73.1.15 = trunc i32 %xor72.1.15 to i8
  store i8 %conv73.1.15, i8* %arrayidx70.15, align 1
  %scevgep20.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 2
  %1341 = load i8, i8* %scevgep20.2.15, align 1
  %conv68.2.15 = zext i8 %1341 to i32
  %1342 = load i8, i8* %arrayidx70.15, align 1
  %conv71.2.15 = zext i8 %1342 to i32
  %xor72.2.15 = xor i32 %conv71.2.15, %conv68.2.15
  %conv73.2.15 = trunc i32 %xor72.2.15 to i8
  store i8 %conv73.2.15, i8* %arrayidx70.15, align 1
  %scevgep20.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 3
  %1343 = load i8, i8* %scevgep20.3.15, align 1
  %conv68.3.15 = zext i8 %1343 to i32
  %1344 = load i8, i8* %arrayidx70.15, align 1
  %conv71.3.15 = zext i8 %1344 to i32
  %xor72.3.15 = xor i32 %conv71.3.15, %conv68.3.15
  %conv73.3.15 = trunc i32 %xor72.3.15 to i8
  store i8 %conv73.3.15, i8* %arrayidx70.15, align 1
  %scevgep20.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 4
  %1345 = load i8, i8* %scevgep20.4.15, align 1
  %conv68.4.15 = zext i8 %1345 to i32
  %1346 = load i8, i8* %arrayidx70.15, align 1
  %conv71.4.15 = zext i8 %1346 to i32
  %xor72.4.15 = xor i32 %conv71.4.15, %conv68.4.15
  %conv73.4.15 = trunc i32 %xor72.4.15 to i8
  store i8 %conv73.4.15, i8* %arrayidx70.15, align 1
  %scevgep20.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 5
  %1347 = load i8, i8* %scevgep20.5.15, align 1
  %conv68.5.15 = zext i8 %1347 to i32
  %1348 = load i8, i8* %arrayidx70.15, align 1
  %conv71.5.15 = zext i8 %1348 to i32
  %xor72.5.15 = xor i32 %conv71.5.15, %conv68.5.15
  %conv73.5.15 = trunc i32 %xor72.5.15 to i8
  store i8 %conv73.5.15, i8* %arrayidx70.15, align 1
  %scevgep20.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 6
  %1349 = load i8, i8* %scevgep20.6.15, align 1
  %conv68.6.15 = zext i8 %1349 to i32
  %1350 = load i8, i8* %arrayidx70.15, align 1
  %conv71.6.15 = zext i8 %1350 to i32
  %xor72.6.15 = xor i32 %conv71.6.15, %conv68.6.15
  %conv73.6.15 = trunc i32 %xor72.6.15 to i8
  store i8 %conv73.6.15, i8* %arrayidx70.15, align 1
  %scevgep20.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 7
  %1351 = load i8, i8* %scevgep20.7.15, align 1
  %conv68.7.15 = zext i8 %1351 to i32
  %1352 = load i8, i8* %arrayidx70.15, align 1
  %conv71.7.15 = zext i8 %1352 to i32
  %xor72.7.15 = xor i32 %conv71.7.15, %conv68.7.15
  %conv73.7.15 = trunc i32 %xor72.7.15 to i8
  store i8 %conv73.7.15, i8* %arrayidx70.15, align 1
  %scevgep20.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 8
  %1353 = load i8, i8* %scevgep20.8.15, align 1
  %conv68.8.15 = zext i8 %1353 to i32
  %1354 = load i8, i8* %arrayidx70.15, align 1
  %conv71.8.15 = zext i8 %1354 to i32
  %xor72.8.15 = xor i32 %conv71.8.15, %conv68.8.15
  %conv73.8.15 = trunc i32 %xor72.8.15 to i8
  store i8 %conv73.8.15, i8* %arrayidx70.15, align 1
  %scevgep20.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 9
  %1355 = load i8, i8* %scevgep20.9.15, align 1
  %conv68.9.15 = zext i8 %1355 to i32
  %1356 = load i8, i8* %arrayidx70.15, align 1
  %conv71.9.15 = zext i8 %1356 to i32
  %xor72.9.15 = xor i32 %conv71.9.15, %conv68.9.15
  %conv73.9.15 = trunc i32 %xor72.9.15 to i8
  store i8 %conv73.9.15, i8* %arrayidx70.15, align 1
  %scevgep20.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 10
  %1357 = load i8, i8* %scevgep20.10.15, align 1
  %conv68.10.15 = zext i8 %1357 to i32
  %1358 = load i8, i8* %arrayidx70.15, align 1
  %conv71.10.15 = zext i8 %1358 to i32
  %xor72.10.15 = xor i32 %conv71.10.15, %conv68.10.15
  %conv73.10.15 = trunc i32 %xor72.10.15 to i8
  store i8 %conv73.10.15, i8* %arrayidx70.15, align 1
  %scevgep20.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 11
  %1359 = load i8, i8* %scevgep20.11.15, align 1
  %conv68.11.15 = zext i8 %1359 to i32
  %1360 = load i8, i8* %arrayidx70.15, align 1
  %conv71.11.15 = zext i8 %1360 to i32
  %xor72.11.15 = xor i32 %conv71.11.15, %conv68.11.15
  %conv73.11.15 = trunc i32 %xor72.11.15 to i8
  store i8 %conv73.11.15, i8* %arrayidx70.15, align 1
  %scevgep20.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 12
  %1361 = load i8, i8* %scevgep20.12.15, align 1
  %conv68.12.15 = zext i8 %1361 to i32
  %1362 = load i8, i8* %arrayidx70.15, align 1
  %conv71.12.15 = zext i8 %1362 to i32
  %xor72.12.15 = xor i32 %conv71.12.15, %conv68.12.15
  %conv73.12.15 = trunc i32 %xor72.12.15 to i8
  store i8 %conv73.12.15, i8* %arrayidx70.15, align 1
  %scevgep20.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 13
  %1363 = load i8, i8* %scevgep20.13.15, align 1
  %conv68.13.15 = zext i8 %1363 to i32
  %1364 = load i8, i8* %arrayidx70.15, align 1
  %conv71.13.15 = zext i8 %1364 to i32
  %xor72.13.15 = xor i32 %conv71.13.15, %conv68.13.15
  %conv73.13.15 = trunc i32 %xor72.13.15 to i8
  store i8 %conv73.13.15, i8* %arrayidx70.15, align 1
  %scevgep20.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1334, i64 0, i64 0, i64 14
  %1365 = load i8, i8* %scevgep20.14.15, align 1
  %conv68.14.15 = zext i8 %1365 to i32
  %1366 = load i8, i8* %arrayidx70.15, align 1
  %conv71.14.15 = zext i8 %1366 to i32
  %xor72.14.15 = xor i32 %conv71.14.15, %conv68.14.15
  %conv73.14.15 = trunc i32 %xor72.14.15 to i8
  store i8 %conv73.14.15, i8* %arrayidx70.15, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %1367 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %1368 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %1368 to i32
  %conv1.i.i114.1 = zext i8 %1367 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %1369 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %1369 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %1370 = load i8, i8* %scevgep.3, align 1
  %conv.i.i113.3 = zext i8 %1370 to i32
  %conv1.i.i114.3 = zext i8 %conv2.i.i116.2 to i32
  %xor.i.i115.3 = xor i32 %conv1.i.i114.3, %conv.i.i113.3
  %conv2.i.i116.3 = trunc i32 %xor.i.i115.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %1371 = load i8, i8* %scevgep.4, align 1
  %conv.i.i113.4 = zext i8 %1371 to i32
  %conv1.i.i114.4 = zext i8 %conv2.i.i116.3 to i32
  %xor.i.i115.4 = xor i32 %conv1.i.i114.4, %conv.i.i113.4
  %conv2.i.i116.4 = trunc i32 %xor.i.i115.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %1372 = load i8, i8* %scevgep.5, align 1
  %conv.i.i113.5 = zext i8 %1372 to i32
  %conv1.i.i114.5 = zext i8 %conv2.i.i116.4 to i32
  %xor.i.i115.5 = xor i32 %conv1.i.i114.5, %conv.i.i113.5
  %conv2.i.i116.5 = trunc i32 %xor.i.i115.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %1373 = load i8, i8* %scevgep.6, align 1
  %conv.i.i113.6 = zext i8 %1373 to i32
  %conv1.i.i114.6 = zext i8 %conv2.i.i116.5 to i32
  %xor.i.i115.6 = xor i32 %conv1.i.i114.6, %conv.i.i113.6
  %conv2.i.i116.6 = trunc i32 %xor.i.i115.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %1374 = load i8, i8* %scevgep.7, align 1
  %conv.i.i113.7 = zext i8 %1374 to i32
  %conv1.i.i114.7 = zext i8 %conv2.i.i116.6 to i32
  %xor.i.i115.7 = xor i32 %conv1.i.i114.7, %conv.i.i113.7
  %conv2.i.i116.7 = trunc i32 %xor.i.i115.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %1375 = load i8, i8* %scevgep.8, align 1
  %conv.i.i113.8 = zext i8 %1375 to i32
  %conv1.i.i114.8 = zext i8 %conv2.i.i116.7 to i32
  %xor.i.i115.8 = xor i32 %conv1.i.i114.8, %conv.i.i113.8
  %conv2.i.i116.8 = trunc i32 %xor.i.i115.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %1376 = load i8, i8* %scevgep.9, align 1
  %conv.i.i113.9 = zext i8 %1376 to i32
  %conv1.i.i114.9 = zext i8 %conv2.i.i116.8 to i32
  %xor.i.i115.9 = xor i32 %conv1.i.i114.9, %conv.i.i113.9
  %conv2.i.i116.9 = trunc i32 %xor.i.i115.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %1377 = load i8, i8* %scevgep.10, align 1
  %conv.i.i113.10 = zext i8 %1377 to i32
  %conv1.i.i114.10 = zext i8 %conv2.i.i116.9 to i32
  %xor.i.i115.10 = xor i32 %conv1.i.i114.10, %conv.i.i113.10
  %conv2.i.i116.10 = trunc i32 %xor.i.i115.10 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  %1378 = load i8, i8* %scevgep.11, align 1
  %conv.i.i113.11 = zext i8 %1378 to i32
  %conv1.i.i114.11 = zext i8 %conv2.i.i116.10 to i32
  %xor.i.i115.11 = xor i32 %conv1.i.i114.11, %conv.i.i113.11
  %conv2.i.i116.11 = trunc i32 %xor.i.i115.11 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  %1379 = load i8, i8* %scevgep.12, align 1
  %conv.i.i113.12 = zext i8 %1379 to i32
  %conv1.i.i114.12 = zext i8 %conv2.i.i116.11 to i32
  %xor.i.i115.12 = xor i32 %conv1.i.i114.12, %conv.i.i113.12
  %conv2.i.i116.12 = trunc i32 %xor.i.i115.12 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  %1380 = load i8, i8* %scevgep.13, align 1
  %conv.i.i113.13 = zext i8 %1380 to i32
  %conv1.i.i114.13 = zext i8 %conv2.i.i116.12 to i32
  %xor.i.i115.13 = xor i32 %conv1.i.i114.13, %conv.i.i113.13
  %conv2.i.i116.13 = trunc i32 %xor.i.i115.13 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  %1381 = load i8, i8* %scevgep.14, align 1
  %conv.i.i113.14 = zext i8 %1381 to i32
  %conv1.i.i114.14 = zext i8 %conv2.i.i116.13 to i32
  %xor.i.i115.14 = xor i32 %conv1.i.i114.14, %conv.i.i113.14
  %conv2.i.i116.14 = trunc i32 %xor.i.i115.14 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  %1382 = load i8, i8* %scevgep.15, align 1
  %conv.i.i113.15 = zext i8 %1382 to i32
  %conv1.i.i114.15 = zext i8 %conv2.i.i116.14 to i32
  %xor.i.i115.15 = xor i32 %conv1.i.i114.15, %conv.i.i113.15
  %conv2.i.i116.15 = trunc i32 %xor.i.i115.15 to i8
  %conv83 = zext i8 %conv2.i.i116.15 to i32
  %cmp84 = icmp eq i32 %conv81, %conv83
  call void @assert(i1 zeroext %cmp84)
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
  %scevgep12.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep12.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep12.5 = getelementptr i8, i8* %x, i64 5
  %5 = load i8, i8* %scevgep12.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep12.6 = getelementptr i8, i8* %x, i64 6
  %6 = load i8, i8* %scevgep12.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep12.7 = getelementptr i8, i8* %x, i64 7
  %7 = load i8, i8* %scevgep12.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep12.8 = getelementptr i8, i8* %x, i64 8
  %8 = load i8, i8* %scevgep12.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep12.9 = getelementptr i8, i8* %x, i64 9
  %9 = load i8, i8* %scevgep12.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep12.10 = getelementptr i8, i8* %x, i64 10
  %10 = load i8, i8* %scevgep12.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %scevgep12.11 = getelementptr i8, i8* %x, i64 11
  %11 = load i8, i8* %scevgep12.11, align 1
  %conv.i.i.11 = zext i8 %11 to i32
  %conv1.i.i.11 = zext i8 %conv2.i.i.10 to i32
  %xor.i.i.11 = xor i32 %conv1.i.i.11, %conv.i.i.11
  %conv2.i.i.11 = trunc i32 %xor.i.i.11 to i8
  %scevgep12.12 = getelementptr i8, i8* %x, i64 12
  %12 = load i8, i8* %scevgep12.12, align 1
  %conv.i.i.12 = zext i8 %12 to i32
  %conv1.i.i.12 = zext i8 %conv2.i.i.11 to i32
  %xor.i.i.12 = xor i32 %conv1.i.i.12, %conv.i.i.12
  %conv2.i.i.12 = trunc i32 %xor.i.i.12 to i8
  %scevgep12.13 = getelementptr i8, i8* %x, i64 13
  %13 = load i8, i8* %scevgep12.13, align 1
  %conv.i.i.13 = zext i8 %13 to i32
  %conv1.i.i.13 = zext i8 %conv2.i.i.12 to i32
  %xor.i.i.13 = xor i32 %conv1.i.i.13, %conv.i.i.13
  %conv2.i.i.13 = trunc i32 %xor.i.i.13 to i8
  %scevgep12.14 = getelementptr i8, i8* %x, i64 14
  %14 = load i8, i8* %scevgep12.14, align 1
  %conv.i.i.14 = zext i8 %14 to i32
  %conv1.i.i.14 = zext i8 %conv2.i.i.13 to i32
  %xor.i.i.14 = xor i32 %conv1.i.i.14, %conv.i.i.14
  %conv2.i.i.14 = trunc i32 %xor.i.i.14 to i8
  %scevgep12.15 = getelementptr i8, i8* %x, i64 15
  %15 = load i8, i8* %scevgep12.15, align 1
  %conv.i.i.15 = zext i8 %15 to i32
  %conv1.i.i.15 = zext i8 %conv2.i.i.14 to i32
  %xor.i.i.15 = xor i32 %conv1.i.i.15, %conv.i.i.15
  %conv2.i.i.15 = trunc i32 %xor.i.i.15 to i8
  %conv2 = zext i8 %conv2.i.i.15 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %16 = load i8, i8* %x, align 1
  %conv9 = zext i8 %16 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %17 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %18 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %18 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %19 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %19 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %20 = load i8, i8* %x, align 1
  %conv9.2 = zext i8 %20 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %x, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep8.2 = getelementptr i8, i8* %x, i64 3
  %21 = load i8, i8* %scevgep8.2, align 1
  %conv13.2 = zext i8 %21 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep8.2, align 1
  %call7.3 = call zeroext i8 (...) @rand()
  %conv8.3 = zext i8 %call7.3 to i32
  %22 = load i8, i8* %x, align 1
  %conv9.3 = zext i8 %22 to i32
  %xor.3 = xor i32 %conv9.3, %conv8.3
  %conv10.3 = trunc i32 %xor.3 to i8
  store i8 %conv10.3, i8* %x, align 1
  %conv11.3 = zext i8 %call7.3 to i32
  %scevgep8.3 = getelementptr i8, i8* %x, i64 4
  %23 = load i8, i8* %scevgep8.3, align 1
  %conv13.3 = zext i8 %23 to i32
  %xor14.3 = xor i32 %conv13.3, %conv11.3
  %conv15.3 = trunc i32 %xor14.3 to i8
  store i8 %conv15.3, i8* %scevgep8.3, align 1
  %call7.4 = call zeroext i8 (...) @rand()
  %conv8.4 = zext i8 %call7.4 to i32
  %24 = load i8, i8* %x, align 1
  %conv9.4 = zext i8 %24 to i32
  %xor.4 = xor i32 %conv9.4, %conv8.4
  %conv10.4 = trunc i32 %xor.4 to i8
  store i8 %conv10.4, i8* %x, align 1
  %conv11.4 = zext i8 %call7.4 to i32
  %scevgep8.4 = getelementptr i8, i8* %x, i64 5
  %25 = load i8, i8* %scevgep8.4, align 1
  %conv13.4 = zext i8 %25 to i32
  %xor14.4 = xor i32 %conv13.4, %conv11.4
  %conv15.4 = trunc i32 %xor14.4 to i8
  store i8 %conv15.4, i8* %scevgep8.4, align 1
  %call7.5 = call zeroext i8 (...) @rand()
  %conv8.5 = zext i8 %call7.5 to i32
  %26 = load i8, i8* %x, align 1
  %conv9.5 = zext i8 %26 to i32
  %xor.5 = xor i32 %conv9.5, %conv8.5
  %conv10.5 = trunc i32 %xor.5 to i8
  store i8 %conv10.5, i8* %x, align 1
  %conv11.5 = zext i8 %call7.5 to i32
  %scevgep8.5 = getelementptr i8, i8* %x, i64 6
  %27 = load i8, i8* %scevgep8.5, align 1
  %conv13.5 = zext i8 %27 to i32
  %xor14.5 = xor i32 %conv13.5, %conv11.5
  %conv15.5 = trunc i32 %xor14.5 to i8
  store i8 %conv15.5, i8* %scevgep8.5, align 1
  %call7.6 = call zeroext i8 (...) @rand()
  %conv8.6 = zext i8 %call7.6 to i32
  %28 = load i8, i8* %x, align 1
  %conv9.6 = zext i8 %28 to i32
  %xor.6 = xor i32 %conv9.6, %conv8.6
  %conv10.6 = trunc i32 %xor.6 to i8
  store i8 %conv10.6, i8* %x, align 1
  %conv11.6 = zext i8 %call7.6 to i32
  %scevgep8.6 = getelementptr i8, i8* %x, i64 7
  %29 = load i8, i8* %scevgep8.6, align 1
  %conv13.6 = zext i8 %29 to i32
  %xor14.6 = xor i32 %conv13.6, %conv11.6
  %conv15.6 = trunc i32 %xor14.6 to i8
  store i8 %conv15.6, i8* %scevgep8.6, align 1
  %call7.7 = call zeroext i8 (...) @rand()
  %conv8.7 = zext i8 %call7.7 to i32
  %30 = load i8, i8* %x, align 1
  %conv9.7 = zext i8 %30 to i32
  %xor.7 = xor i32 %conv9.7, %conv8.7
  %conv10.7 = trunc i32 %xor.7 to i8
  store i8 %conv10.7, i8* %x, align 1
  %conv11.7 = zext i8 %call7.7 to i32
  %scevgep8.7 = getelementptr i8, i8* %x, i64 8
  %31 = load i8, i8* %scevgep8.7, align 1
  %conv13.7 = zext i8 %31 to i32
  %xor14.7 = xor i32 %conv13.7, %conv11.7
  %conv15.7 = trunc i32 %xor14.7 to i8
  store i8 %conv15.7, i8* %scevgep8.7, align 1
  %call7.8 = call zeroext i8 (...) @rand()
  %conv8.8 = zext i8 %call7.8 to i32
  %32 = load i8, i8* %x, align 1
  %conv9.8 = zext i8 %32 to i32
  %xor.8 = xor i32 %conv9.8, %conv8.8
  %conv10.8 = trunc i32 %xor.8 to i8
  store i8 %conv10.8, i8* %x, align 1
  %conv11.8 = zext i8 %call7.8 to i32
  %scevgep8.8 = getelementptr i8, i8* %x, i64 9
  %33 = load i8, i8* %scevgep8.8, align 1
  %conv13.8 = zext i8 %33 to i32
  %xor14.8 = xor i32 %conv13.8, %conv11.8
  %conv15.8 = trunc i32 %xor14.8 to i8
  store i8 %conv15.8, i8* %scevgep8.8, align 1
  %call7.9 = call zeroext i8 (...) @rand()
  %conv8.9 = zext i8 %call7.9 to i32
  %34 = load i8, i8* %x, align 1
  %conv9.9 = zext i8 %34 to i32
  %xor.9 = xor i32 %conv9.9, %conv8.9
  %conv10.9 = trunc i32 %xor.9 to i8
  store i8 %conv10.9, i8* %x, align 1
  %conv11.9 = zext i8 %call7.9 to i32
  %scevgep8.9 = getelementptr i8, i8* %x, i64 10
  %35 = load i8, i8* %scevgep8.9, align 1
  %conv13.9 = zext i8 %35 to i32
  %xor14.9 = xor i32 %conv13.9, %conv11.9
  %conv15.9 = trunc i32 %xor14.9 to i8
  store i8 %conv15.9, i8* %scevgep8.9, align 1
  %call7.10 = call zeroext i8 (...) @rand()
  %conv8.10 = zext i8 %call7.10 to i32
  %36 = load i8, i8* %x, align 1
  %conv9.10 = zext i8 %36 to i32
  %xor.10 = xor i32 %conv9.10, %conv8.10
  %conv10.10 = trunc i32 %xor.10 to i8
  store i8 %conv10.10, i8* %x, align 1
  %conv11.10 = zext i8 %call7.10 to i32
  %scevgep8.10 = getelementptr i8, i8* %x, i64 11
  %37 = load i8, i8* %scevgep8.10, align 1
  %conv13.10 = zext i8 %37 to i32
  %xor14.10 = xor i32 %conv13.10, %conv11.10
  %conv15.10 = trunc i32 %xor14.10 to i8
  store i8 %conv15.10, i8* %scevgep8.10, align 1
  %call7.11 = call zeroext i8 (...) @rand()
  %conv8.11 = zext i8 %call7.11 to i32
  %38 = load i8, i8* %x, align 1
  %conv9.11 = zext i8 %38 to i32
  %xor.11 = xor i32 %conv9.11, %conv8.11
  %conv10.11 = trunc i32 %xor.11 to i8
  store i8 %conv10.11, i8* %x, align 1
  %conv11.11 = zext i8 %call7.11 to i32
  %scevgep8.11 = getelementptr i8, i8* %x, i64 12
  %39 = load i8, i8* %scevgep8.11, align 1
  %conv13.11 = zext i8 %39 to i32
  %xor14.11 = xor i32 %conv13.11, %conv11.11
  %conv15.11 = trunc i32 %xor14.11 to i8
  store i8 %conv15.11, i8* %scevgep8.11, align 1
  %call7.12 = call zeroext i8 (...) @rand()
  %conv8.12 = zext i8 %call7.12 to i32
  %40 = load i8, i8* %x, align 1
  %conv9.12 = zext i8 %40 to i32
  %xor.12 = xor i32 %conv9.12, %conv8.12
  %conv10.12 = trunc i32 %xor.12 to i8
  store i8 %conv10.12, i8* %x, align 1
  %conv11.12 = zext i8 %call7.12 to i32
  %scevgep8.12 = getelementptr i8, i8* %x, i64 13
  %41 = load i8, i8* %scevgep8.12, align 1
  %conv13.12 = zext i8 %41 to i32
  %xor14.12 = xor i32 %conv13.12, %conv11.12
  %conv15.12 = trunc i32 %xor14.12 to i8
  store i8 %conv15.12, i8* %scevgep8.12, align 1
  %call7.13 = call zeroext i8 (...) @rand()
  %conv8.13 = zext i8 %call7.13 to i32
  %42 = load i8, i8* %x, align 1
  %conv9.13 = zext i8 %42 to i32
  %xor.13 = xor i32 %conv9.13, %conv8.13
  %conv10.13 = trunc i32 %xor.13 to i8
  store i8 %conv10.13, i8* %x, align 1
  %conv11.13 = zext i8 %call7.13 to i32
  %scevgep8.13 = getelementptr i8, i8* %x, i64 14
  %43 = load i8, i8* %scevgep8.13, align 1
  %conv13.13 = zext i8 %43 to i32
  %xor14.13 = xor i32 %conv13.13, %conv11.13
  %conv15.13 = trunc i32 %xor14.13 to i8
  store i8 %conv15.13, i8* %scevgep8.13, align 1
  %call7.14 = call zeroext i8 (...) @rand()
  %conv8.14 = zext i8 %call7.14 to i32
  %44 = load i8, i8* %x, align 1
  %conv9.14 = zext i8 %44 to i32
  %xor.14 = xor i32 %conv9.14, %conv8.14
  %conv10.14 = trunc i32 %xor.14 to i8
  store i8 %conv10.14, i8* %x, align 1
  %conv11.14 = zext i8 %call7.14 to i32
  %scevgep8.14 = getelementptr i8, i8* %x, i64 15
  %45 = load i8, i8* %scevgep8.14, align 1
  %conv13.14 = zext i8 %45 to i32
  %xor14.14 = xor i32 %conv13.14, %conv11.14
  %conv15.14 = trunc i32 %xor14.14 to i8
  store i8 %conv15.14, i8* %scevgep8.14, align 1
  %conv16 = zext i8 %call to i32
  %46 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %47 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %47 to i32
  %conv1.i.i32.1 = zext i8 %46 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %48 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %48 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %49 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %49 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %50 = load i8, i8* %scevgep.4, align 1
  %conv.i.i31.4 = zext i8 %50 to i32
  %conv1.i.i32.4 = zext i8 %conv2.i.i34.3 to i32
  %xor.i.i33.4 = xor i32 %conv1.i.i32.4, %conv.i.i31.4
  %conv2.i.i34.4 = trunc i32 %xor.i.i33.4 to i8
  %scevgep.5 = getelementptr i8, i8* %x, i64 5
  %51 = load i8, i8* %scevgep.5, align 1
  %conv.i.i31.5 = zext i8 %51 to i32
  %conv1.i.i32.5 = zext i8 %conv2.i.i34.4 to i32
  %xor.i.i33.5 = xor i32 %conv1.i.i32.5, %conv.i.i31.5
  %conv2.i.i34.5 = trunc i32 %xor.i.i33.5 to i8
  %scevgep.6 = getelementptr i8, i8* %x, i64 6
  %52 = load i8, i8* %scevgep.6, align 1
  %conv.i.i31.6 = zext i8 %52 to i32
  %conv1.i.i32.6 = zext i8 %conv2.i.i34.5 to i32
  %xor.i.i33.6 = xor i32 %conv1.i.i32.6, %conv.i.i31.6
  %conv2.i.i34.6 = trunc i32 %xor.i.i33.6 to i8
  %scevgep.7 = getelementptr i8, i8* %x, i64 7
  %53 = load i8, i8* %scevgep.7, align 1
  %conv.i.i31.7 = zext i8 %53 to i32
  %conv1.i.i32.7 = zext i8 %conv2.i.i34.6 to i32
  %xor.i.i33.7 = xor i32 %conv1.i.i32.7, %conv.i.i31.7
  %conv2.i.i34.7 = trunc i32 %xor.i.i33.7 to i8
  %scevgep.8 = getelementptr i8, i8* %x, i64 8
  %54 = load i8, i8* %scevgep.8, align 1
  %conv.i.i31.8 = zext i8 %54 to i32
  %conv1.i.i32.8 = zext i8 %conv2.i.i34.7 to i32
  %xor.i.i33.8 = xor i32 %conv1.i.i32.8, %conv.i.i31.8
  %conv2.i.i34.8 = trunc i32 %xor.i.i33.8 to i8
  %scevgep.9 = getelementptr i8, i8* %x, i64 9
  %55 = load i8, i8* %scevgep.9, align 1
  %conv.i.i31.9 = zext i8 %55 to i32
  %conv1.i.i32.9 = zext i8 %conv2.i.i34.8 to i32
  %xor.i.i33.9 = xor i32 %conv1.i.i32.9, %conv.i.i31.9
  %conv2.i.i34.9 = trunc i32 %xor.i.i33.9 to i8
  %scevgep.10 = getelementptr i8, i8* %x, i64 10
  %56 = load i8, i8* %scevgep.10, align 1
  %conv.i.i31.10 = zext i8 %56 to i32
  %conv1.i.i32.10 = zext i8 %conv2.i.i34.9 to i32
  %xor.i.i33.10 = xor i32 %conv1.i.i32.10, %conv.i.i31.10
  %conv2.i.i34.10 = trunc i32 %xor.i.i33.10 to i8
  %scevgep.11 = getelementptr i8, i8* %x, i64 11
  %57 = load i8, i8* %scevgep.11, align 1
  %conv.i.i31.11 = zext i8 %57 to i32
  %conv1.i.i32.11 = zext i8 %conv2.i.i34.10 to i32
  %xor.i.i33.11 = xor i32 %conv1.i.i32.11, %conv.i.i31.11
  %conv2.i.i34.11 = trunc i32 %xor.i.i33.11 to i8
  %scevgep.12 = getelementptr i8, i8* %x, i64 12
  %58 = load i8, i8* %scevgep.12, align 1
  %conv.i.i31.12 = zext i8 %58 to i32
  %conv1.i.i32.12 = zext i8 %conv2.i.i34.11 to i32
  %xor.i.i33.12 = xor i32 %conv1.i.i32.12, %conv.i.i31.12
  %conv2.i.i34.12 = trunc i32 %xor.i.i33.12 to i8
  %scevgep.13 = getelementptr i8, i8* %x, i64 13
  %59 = load i8, i8* %scevgep.13, align 1
  %conv.i.i31.13 = zext i8 %59 to i32
  %conv1.i.i32.13 = zext i8 %conv2.i.i34.12 to i32
  %xor.i.i33.13 = xor i32 %conv1.i.i32.13, %conv.i.i31.13
  %conv2.i.i34.13 = trunc i32 %xor.i.i33.13 to i8
  %scevgep.14 = getelementptr i8, i8* %x, i64 14
  %60 = load i8, i8* %scevgep.14, align 1
  %conv.i.i31.14 = zext i8 %60 to i32
  %conv1.i.i32.14 = zext i8 %conv2.i.i34.13 to i32
  %xor.i.i33.14 = xor i32 %conv1.i.i32.14, %conv.i.i31.14
  %conv2.i.i34.14 = trunc i32 %xor.i.i33.14 to i8
  %scevgep.15 = getelementptr i8, i8* %x, i64 15
  %61 = load i8, i8* %scevgep.15, align 1
  %conv.i.i31.15 = zext i8 %61 to i32
  %conv1.i.i32.15 = zext i8 %conv2.i.i34.14 to i32
  %xor.i.i33.15 = xor i32 %conv1.i.i32.15, %conv.i.i31.15
  %conv2.i.i34.15 = trunc i32 %xor.i.i33.15 to i8
  %conv18 = zext i8 %conv2.i.i34.15 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
