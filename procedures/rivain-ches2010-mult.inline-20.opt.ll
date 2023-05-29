; ModuleID = '../examples/rivain-ches2010-mult.inline-20.ll'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 20, align 4
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
  %scevgep.16 = getelementptr i8, i8* %from, i64 16
  %16 = load i8, i8* %scevgep.16, align 1
  %call.16 = call zeroext i8 %f(i8 zeroext %16)
  %scevgep2.16 = getelementptr i8, i8* %to, i64 16
  store i8 %call.16, i8* %scevgep2.16, align 1
  %scevgep.17 = getelementptr i8, i8* %from, i64 17
  %17 = load i8, i8* %scevgep.17, align 1
  %call.17 = call zeroext i8 %f(i8 zeroext %17)
  %scevgep2.17 = getelementptr i8, i8* %to, i64 17
  store i8 %call.17, i8* %scevgep2.17, align 1
  %scevgep.18 = getelementptr i8, i8* %from, i64 18
  %18 = load i8, i8* %scevgep.18, align 1
  %call.18 = call zeroext i8 %f(i8 zeroext %18)
  %scevgep2.18 = getelementptr i8, i8* %to, i64 18
  store i8 %call.18, i8* %scevgep2.18, align 1
  %scevgep.19 = getelementptr i8, i8* %from, i64 19
  %19 = load i8, i8* %scevgep.19, align 1
  %call.19 = call zeroext i8 %f(i8 zeroext %19)
  %scevgep2.19 = getelementptr i8, i8* %to, i64 19
  store i8 %call.19, i8* %scevgep2.19, align 1
  %scevgep.20 = getelementptr i8, i8* %from, i64 20
  %20 = load i8, i8* %scevgep.20, align 1
  %call.20 = call zeroext i8 %f(i8 zeroext %20)
  %scevgep2.20 = getelementptr i8, i8* %to, i64 20
  store i8 %call.20, i8* %scevgep2.20, align 1
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
  %scevgep.16 = getelementptr i8, i8* %a, i64 16
  %16 = load i8, i8* %scevgep.16, align 1
  %call.16 = call zeroext i8 %f(i8 zeroext %16)
  %conv.16 = zext i8 %call.16 to i32
  %conv1.16 = zext i8 %conv2.15 to i32
  %xor.16 = xor i32 %conv1.16, %conv.16
  %conv2.16 = trunc i32 %xor.16 to i8
  %scevgep.17 = getelementptr i8, i8* %a, i64 17
  %17 = load i8, i8* %scevgep.17, align 1
  %call.17 = call zeroext i8 %f(i8 zeroext %17)
  %conv.17 = zext i8 %call.17 to i32
  %conv1.17 = zext i8 %conv2.16 to i32
  %xor.17 = xor i32 %conv1.17, %conv.17
  %conv2.17 = trunc i32 %xor.17 to i8
  %scevgep.18 = getelementptr i8, i8* %a, i64 18
  %18 = load i8, i8* %scevgep.18, align 1
  %call.18 = call zeroext i8 %f(i8 zeroext %18)
  %conv.18 = zext i8 %call.18 to i32
  %conv1.18 = zext i8 %conv2.17 to i32
  %xor.18 = xor i32 %conv1.18, %conv.18
  %conv2.18 = trunc i32 %xor.18 to i8
  %scevgep.19 = getelementptr i8, i8* %a, i64 19
  %19 = load i8, i8* %scevgep.19, align 1
  %call.19 = call zeroext i8 %f(i8 zeroext %19)
  %conv.19 = zext i8 %call.19 to i32
  %conv1.19 = zext i8 %conv2.18 to i32
  %xor.19 = xor i32 %conv1.19, %conv.19
  %conv2.19 = trunc i32 %xor.19 to i8
  %scevgep.20 = getelementptr i8, i8* %a, i64 20
  %20 = load i8, i8* %scevgep.20, align 1
  %call.20 = call zeroext i8 %f(i8 zeroext %20)
  %conv.20 = zext i8 %call.20 to i32
  %conv1.20 = zext i8 %conv2.19 to i32
  %xor.20 = xor i32 %conv1.20, %conv.20
  %conv2.20 = trunc i32 %xor.20 to i8
  ret i8 %conv2.20
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
  %scevgep.16 = getelementptr i8, i8* %a, i64 16
  %16 = load i8, i8* %scevgep.16, align 1
  %conv.i.16 = zext i8 %16 to i32
  %conv1.i.16 = zext i8 %conv2.i.15 to i32
  %xor.i.16 = xor i32 %conv1.i.16, %conv.i.16
  %conv2.i.16 = trunc i32 %xor.i.16 to i8
  %scevgep.17 = getelementptr i8, i8* %a, i64 17
  %17 = load i8, i8* %scevgep.17, align 1
  %conv.i.17 = zext i8 %17 to i32
  %conv1.i.17 = zext i8 %conv2.i.16 to i32
  %xor.i.17 = xor i32 %conv1.i.17, %conv.i.17
  %conv2.i.17 = trunc i32 %xor.i.17 to i8
  %scevgep.18 = getelementptr i8, i8* %a, i64 18
  %18 = load i8, i8* %scevgep.18, align 1
  %conv.i.18 = zext i8 %18 to i32
  %conv1.i.18 = zext i8 %conv2.i.17 to i32
  %xor.i.18 = xor i32 %conv1.i.18, %conv.i.18
  %conv2.i.18 = trunc i32 %xor.i.18 to i8
  %scevgep.19 = getelementptr i8, i8* %a, i64 19
  %19 = load i8, i8* %scevgep.19, align 1
  %conv.i.19 = zext i8 %19 to i32
  %conv1.i.19 = zext i8 %conv2.i.18 to i32
  %xor.i.19 = xor i32 %conv1.i.19, %conv.i.19
  %conv2.i.19 = trunc i32 %xor.i.19 to i8
  %scevgep.20 = getelementptr i8, i8* %a, i64 20
  %20 = load i8, i8* %scevgep.20, align 1
  %conv.i.20 = zext i8 %20 to i32
  %conv1.i.20 = zext i8 %conv2.i.19 to i32
  %xor.i.20 = xor i32 %conv1.i.20, %conv.i.20
  %conv2.i.20 = trunc i32 %xor.i.20 to i8
  ret i8 %conv2.i.20
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [21 x [21 x i8]], align 16
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
  %scevgep50.16 = getelementptr i8, i8* %a, i64 16
  %16 = load i8, i8* %scevgep50.16, align 1
  %conv.i.i.16 = zext i8 %16 to i32
  %conv1.i.i.16 = zext i8 %conv2.i.i.15 to i32
  %xor.i.i.16 = xor i32 %conv1.i.i.16, %conv.i.i.16
  %conv2.i.i.16 = trunc i32 %xor.i.i.16 to i8
  %scevgep50.17 = getelementptr i8, i8* %a, i64 17
  %17 = load i8, i8* %scevgep50.17, align 1
  %conv.i.i.17 = zext i8 %17 to i32
  %conv1.i.i.17 = zext i8 %conv2.i.i.16 to i32
  %xor.i.i.17 = xor i32 %conv1.i.i.17, %conv.i.i.17
  %conv2.i.i.17 = trunc i32 %xor.i.i.17 to i8
  %scevgep50.18 = getelementptr i8, i8* %a, i64 18
  %18 = load i8, i8* %scevgep50.18, align 1
  %conv.i.i.18 = zext i8 %18 to i32
  %conv1.i.i.18 = zext i8 %conv2.i.i.17 to i32
  %xor.i.i.18 = xor i32 %conv1.i.i.18, %conv.i.i.18
  %conv2.i.i.18 = trunc i32 %xor.i.i.18 to i8
  %scevgep50.19 = getelementptr i8, i8* %a, i64 19
  %19 = load i8, i8* %scevgep50.19, align 1
  %conv.i.i.19 = zext i8 %19 to i32
  %conv1.i.i.19 = zext i8 %conv2.i.i.18 to i32
  %xor.i.i.19 = xor i32 %conv1.i.i.19, %conv.i.i.19
  %conv2.i.i.19 = trunc i32 %xor.i.i.19 to i8
  %scevgep50.20 = getelementptr i8, i8* %a, i64 20
  %20 = load i8, i8* %scevgep50.20, align 1
  %conv.i.i.20 = zext i8 %20 to i32
  %conv1.i.i.20 = zext i8 %conv2.i.i.19 to i32
  %xor.i.i.20 = xor i32 %conv1.i.i.20, %conv.i.i.20
  %conv2.i.i.20 = trunc i32 %xor.i.i.20 to i8
  %conv3 = zext i8 %conv2.i.i.20 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %21 = load i8, i8* %b, align 1
  %scevgep46.1 = getelementptr i8, i8* %b, i64 1
  %22 = load i8, i8* %scevgep46.1, align 1
  %conv.i.i96.1 = zext i8 %22 to i32
  %conv1.i.i97.1 = zext i8 %21 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep46.2 = getelementptr i8, i8* %b, i64 2
  %23 = load i8, i8* %scevgep46.2, align 1
  %conv.i.i96.2 = zext i8 %23 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %scevgep46.3 = getelementptr i8, i8* %b, i64 3
  %24 = load i8, i8* %scevgep46.3, align 1
  %conv.i.i96.3 = zext i8 %24 to i32
  %conv1.i.i97.3 = zext i8 %conv2.i.i99.2 to i32
  %xor.i.i98.3 = xor i32 %conv1.i.i97.3, %conv.i.i96.3
  %conv2.i.i99.3 = trunc i32 %xor.i.i98.3 to i8
  %scevgep46.4 = getelementptr i8, i8* %b, i64 4
  %25 = load i8, i8* %scevgep46.4, align 1
  %conv.i.i96.4 = zext i8 %25 to i32
  %conv1.i.i97.4 = zext i8 %conv2.i.i99.3 to i32
  %xor.i.i98.4 = xor i32 %conv1.i.i97.4, %conv.i.i96.4
  %conv2.i.i99.4 = trunc i32 %xor.i.i98.4 to i8
  %scevgep46.5 = getelementptr i8, i8* %b, i64 5
  %26 = load i8, i8* %scevgep46.5, align 1
  %conv.i.i96.5 = zext i8 %26 to i32
  %conv1.i.i97.5 = zext i8 %conv2.i.i99.4 to i32
  %xor.i.i98.5 = xor i32 %conv1.i.i97.5, %conv.i.i96.5
  %conv2.i.i99.5 = trunc i32 %xor.i.i98.5 to i8
  %scevgep46.6 = getelementptr i8, i8* %b, i64 6
  %27 = load i8, i8* %scevgep46.6, align 1
  %conv.i.i96.6 = zext i8 %27 to i32
  %conv1.i.i97.6 = zext i8 %conv2.i.i99.5 to i32
  %xor.i.i98.6 = xor i32 %conv1.i.i97.6, %conv.i.i96.6
  %conv2.i.i99.6 = trunc i32 %xor.i.i98.6 to i8
  %scevgep46.7 = getelementptr i8, i8* %b, i64 7
  %28 = load i8, i8* %scevgep46.7, align 1
  %conv.i.i96.7 = zext i8 %28 to i32
  %conv1.i.i97.7 = zext i8 %conv2.i.i99.6 to i32
  %xor.i.i98.7 = xor i32 %conv1.i.i97.7, %conv.i.i96.7
  %conv2.i.i99.7 = trunc i32 %xor.i.i98.7 to i8
  %scevgep46.8 = getelementptr i8, i8* %b, i64 8
  %29 = load i8, i8* %scevgep46.8, align 1
  %conv.i.i96.8 = zext i8 %29 to i32
  %conv1.i.i97.8 = zext i8 %conv2.i.i99.7 to i32
  %xor.i.i98.8 = xor i32 %conv1.i.i97.8, %conv.i.i96.8
  %conv2.i.i99.8 = trunc i32 %xor.i.i98.8 to i8
  %scevgep46.9 = getelementptr i8, i8* %b, i64 9
  %30 = load i8, i8* %scevgep46.9, align 1
  %conv.i.i96.9 = zext i8 %30 to i32
  %conv1.i.i97.9 = zext i8 %conv2.i.i99.8 to i32
  %xor.i.i98.9 = xor i32 %conv1.i.i97.9, %conv.i.i96.9
  %conv2.i.i99.9 = trunc i32 %xor.i.i98.9 to i8
  %scevgep46.10 = getelementptr i8, i8* %b, i64 10
  %31 = load i8, i8* %scevgep46.10, align 1
  %conv.i.i96.10 = zext i8 %31 to i32
  %conv1.i.i97.10 = zext i8 %conv2.i.i99.9 to i32
  %xor.i.i98.10 = xor i32 %conv1.i.i97.10, %conv.i.i96.10
  %conv2.i.i99.10 = trunc i32 %xor.i.i98.10 to i8
  %scevgep46.11 = getelementptr i8, i8* %b, i64 11
  %32 = load i8, i8* %scevgep46.11, align 1
  %conv.i.i96.11 = zext i8 %32 to i32
  %conv1.i.i97.11 = zext i8 %conv2.i.i99.10 to i32
  %xor.i.i98.11 = xor i32 %conv1.i.i97.11, %conv.i.i96.11
  %conv2.i.i99.11 = trunc i32 %xor.i.i98.11 to i8
  %scevgep46.12 = getelementptr i8, i8* %b, i64 12
  %33 = load i8, i8* %scevgep46.12, align 1
  %conv.i.i96.12 = zext i8 %33 to i32
  %conv1.i.i97.12 = zext i8 %conv2.i.i99.11 to i32
  %xor.i.i98.12 = xor i32 %conv1.i.i97.12, %conv.i.i96.12
  %conv2.i.i99.12 = trunc i32 %xor.i.i98.12 to i8
  %scevgep46.13 = getelementptr i8, i8* %b, i64 13
  %34 = load i8, i8* %scevgep46.13, align 1
  %conv.i.i96.13 = zext i8 %34 to i32
  %conv1.i.i97.13 = zext i8 %conv2.i.i99.12 to i32
  %xor.i.i98.13 = xor i32 %conv1.i.i97.13, %conv.i.i96.13
  %conv2.i.i99.13 = trunc i32 %xor.i.i98.13 to i8
  %scevgep46.14 = getelementptr i8, i8* %b, i64 14
  %35 = load i8, i8* %scevgep46.14, align 1
  %conv.i.i96.14 = zext i8 %35 to i32
  %conv1.i.i97.14 = zext i8 %conv2.i.i99.13 to i32
  %xor.i.i98.14 = xor i32 %conv1.i.i97.14, %conv.i.i96.14
  %conv2.i.i99.14 = trunc i32 %xor.i.i98.14 to i8
  %scevgep46.15 = getelementptr i8, i8* %b, i64 15
  %36 = load i8, i8* %scevgep46.15, align 1
  %conv.i.i96.15 = zext i8 %36 to i32
  %conv1.i.i97.15 = zext i8 %conv2.i.i99.14 to i32
  %xor.i.i98.15 = xor i32 %conv1.i.i97.15, %conv.i.i96.15
  %conv2.i.i99.15 = trunc i32 %xor.i.i98.15 to i8
  %scevgep46.16 = getelementptr i8, i8* %b, i64 16
  %37 = load i8, i8* %scevgep46.16, align 1
  %conv.i.i96.16 = zext i8 %37 to i32
  %conv1.i.i97.16 = zext i8 %conv2.i.i99.15 to i32
  %xor.i.i98.16 = xor i32 %conv1.i.i97.16, %conv.i.i96.16
  %conv2.i.i99.16 = trunc i32 %xor.i.i98.16 to i8
  %scevgep46.17 = getelementptr i8, i8* %b, i64 17
  %38 = load i8, i8* %scevgep46.17, align 1
  %conv.i.i96.17 = zext i8 %38 to i32
  %conv1.i.i97.17 = zext i8 %conv2.i.i99.16 to i32
  %xor.i.i98.17 = xor i32 %conv1.i.i97.17, %conv.i.i96.17
  %conv2.i.i99.17 = trunc i32 %xor.i.i98.17 to i8
  %scevgep46.18 = getelementptr i8, i8* %b, i64 18
  %39 = load i8, i8* %scevgep46.18, align 1
  %conv.i.i96.18 = zext i8 %39 to i32
  %conv1.i.i97.18 = zext i8 %conv2.i.i99.17 to i32
  %xor.i.i98.18 = xor i32 %conv1.i.i97.18, %conv.i.i96.18
  %conv2.i.i99.18 = trunc i32 %xor.i.i98.18 to i8
  %scevgep46.19 = getelementptr i8, i8* %b, i64 19
  %40 = load i8, i8* %scevgep46.19, align 1
  %conv.i.i96.19 = zext i8 %40 to i32
  %conv1.i.i97.19 = zext i8 %conv2.i.i99.18 to i32
  %xor.i.i98.19 = xor i32 %conv1.i.i97.19, %conv.i.i96.19
  %conv2.i.i99.19 = trunc i32 %xor.i.i98.19 to i8
  %scevgep46.20 = getelementptr i8, i8* %b, i64 20
  %41 = load i8, i8* %scevgep46.20, align 1
  %conv.i.i96.20 = zext i8 %41 to i32
  %conv1.i.i97.20 = zext i8 %conv2.i.i99.19 to i32
  %xor.i.i98.20 = xor i32 %conv1.i.i97.20, %conv.i.i96.20
  %conv2.i.i99.20 = trunc i32 %xor.i.i98.20 to i8
  %conv7 = zext i8 %conv2.i.i99.20 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [21 x [21 x i8]]*
  %scevgep36 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep3637 = bitcast i8* %scevgep36 to [21 x [21 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep23, align 1
  %42 = load i8, i8* %scevgep23, align 1
  %conv23 = zext i8 %42 to i32
  %43 = load i8, i8* %a, align 1
  %scevgep34 = getelementptr i8, i8* %b, i64 1
  %44 = load i8, i8* %scevgep34, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep35 = getelementptr i8, i8* %a, i64 1
  %45 = load i8, i8* %scevgep35, align 1
  %46 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  store i8 %conv37, i8* %scevgep36, align 1
  %scevgep28 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %47 = bitcast i8* %scevgep28 to [21 x [21 x i8]]*
  %scevgep41 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep3637, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep41 to [21 x [21 x i8]]*
  %call16.1252 = call zeroext i8 (...) @rand()
  store i8 %call16.1252, i8* %scevgep28, align 1
  %49 = load i8, i8* %scevgep28, align 1
  %conv23.1253 = zext i8 %49 to i32
  %50 = load i8, i8* %a, align 1
  %scevgep34.1254 = getelementptr i8, i8* %b, i64 2
  %51 = load i8, i8* %scevgep34.1254, align 1
  %call28.1255 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51)
  %conv29.1256 = zext i8 %call28.1255 to i32
  %xor.1257 = xor i32 %conv23.1253, %conv29.1256
  %scevgep35.1258 = getelementptr i8, i8* %a, i64 2
  %52 = load i8, i8* %scevgep35.1258, align 1
  %53 = load i8, i8* %b, align 1
  %call34.1259 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53)
  %conv35.1260 = zext i8 %call34.1259 to i32
  %xor36.1261 = xor i32 %xor.1257, %conv35.1260
  %conv37.1262 = trunc i32 %xor36.1261 to i8
  store i8 %conv37.1262, i8* %scevgep41, align 1
  %scevgep28.1263 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %47, i64 0, i64 0, i64 1
  %54 = bitcast i8* %scevgep28.1263 to [21 x [21 x i8]]*
  %scevgep41.1264 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %48, i64 0, i64 1, i64 0
  %55 = bitcast i8* %scevgep41.1264 to [21 x [21 x i8]]*
  %call16.2266 = call zeroext i8 (...) @rand()
  store i8 %call16.2266, i8* %scevgep28.1263, align 1
  %56 = load i8, i8* %scevgep28.1263, align 1
  %conv23.2267 = zext i8 %56 to i32
  %57 = load i8, i8* %a, align 1
  %scevgep34.2268 = getelementptr i8, i8* %b, i64 3
  %58 = load i8, i8* %scevgep34.2268, align 1
  %call28.2269 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58)
  %conv29.2270 = zext i8 %call28.2269 to i32
  %xor.2271 = xor i32 %conv23.2267, %conv29.2270
  %scevgep35.2272 = getelementptr i8, i8* %a, i64 3
  %59 = load i8, i8* %scevgep35.2272, align 1
  %60 = load i8, i8* %b, align 1
  %call34.2273 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60)
  %conv35.2274 = zext i8 %call34.2273 to i32
  %xor36.2275 = xor i32 %xor.2271, %conv35.2274
  %conv37.2276 = trunc i32 %xor36.2275 to i8
  store i8 %conv37.2276, i8* %scevgep41.1264, align 1
  %scevgep28.2277 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %54, i64 0, i64 0, i64 1
  %61 = bitcast i8* %scevgep28.2277 to [21 x [21 x i8]]*
  %scevgep41.2278 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %55, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep41.2278 to [21 x [21 x i8]]*
  %call16.3280 = call zeroext i8 (...) @rand()
  store i8 %call16.3280, i8* %scevgep28.2277, align 1
  %63 = load i8, i8* %scevgep28.2277, align 1
  %conv23.3281 = zext i8 %63 to i32
  %64 = load i8, i8* %a, align 1
  %scevgep34.3282 = getelementptr i8, i8* %b, i64 4
  %65 = load i8, i8* %scevgep34.3282, align 1
  %call28.3283 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65)
  %conv29.3284 = zext i8 %call28.3283 to i32
  %xor.3285 = xor i32 %conv23.3281, %conv29.3284
  %scevgep35.3286 = getelementptr i8, i8* %a, i64 4
  %66 = load i8, i8* %scevgep35.3286, align 1
  %67 = load i8, i8* %b, align 1
  %call34.3287 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %conv35.3288 = zext i8 %call34.3287 to i32
  %xor36.3289 = xor i32 %xor.3285, %conv35.3288
  %conv37.3290 = trunc i32 %xor36.3289 to i8
  store i8 %conv37.3290, i8* %scevgep41.2278, align 1
  %scevgep28.3291 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %61, i64 0, i64 0, i64 1
  %68 = bitcast i8* %scevgep28.3291 to [21 x [21 x i8]]*
  %scevgep41.3292 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %62, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep41.3292 to [21 x [21 x i8]]*
  %call16.4294 = call zeroext i8 (...) @rand()
  store i8 %call16.4294, i8* %scevgep28.3291, align 1
  %70 = load i8, i8* %scevgep28.3291, align 1
  %conv23.4295 = zext i8 %70 to i32
  %71 = load i8, i8* %a, align 1
  %scevgep34.4296 = getelementptr i8, i8* %b, i64 5
  %72 = load i8, i8* %scevgep34.4296, align 1
  %call28.4297 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72)
  %conv29.4298 = zext i8 %call28.4297 to i32
  %xor.4299 = xor i32 %conv23.4295, %conv29.4298
  %scevgep35.4300 = getelementptr i8, i8* %a, i64 5
  %73 = load i8, i8* %scevgep35.4300, align 1
  %74 = load i8, i8* %b, align 1
  %call34.4301 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74)
  %conv35.4302 = zext i8 %call34.4301 to i32
  %xor36.4303 = xor i32 %xor.4299, %conv35.4302
  %conv37.4304 = trunc i32 %xor36.4303 to i8
  store i8 %conv37.4304, i8* %scevgep41.3292, align 1
  %scevgep28.4305 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %68, i64 0, i64 0, i64 1
  %75 = bitcast i8* %scevgep28.4305 to [21 x [21 x i8]]*
  %scevgep41.4306 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %69, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep41.4306 to [21 x [21 x i8]]*
  %call16.5308 = call zeroext i8 (...) @rand()
  store i8 %call16.5308, i8* %scevgep28.4305, align 1
  %77 = load i8, i8* %scevgep28.4305, align 1
  %conv23.5309 = zext i8 %77 to i32
  %78 = load i8, i8* %a, align 1
  %scevgep34.5310 = getelementptr i8, i8* %b, i64 6
  %79 = load i8, i8* %scevgep34.5310, align 1
  %call28.5311 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79)
  %conv29.5312 = zext i8 %call28.5311 to i32
  %xor.5313 = xor i32 %conv23.5309, %conv29.5312
  %scevgep35.5314 = getelementptr i8, i8* %a, i64 6
  %80 = load i8, i8* %scevgep35.5314, align 1
  %81 = load i8, i8* %b, align 1
  %call34.5315 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81)
  %conv35.5316 = zext i8 %call34.5315 to i32
  %xor36.5317 = xor i32 %xor.5313, %conv35.5316
  %conv37.5318 = trunc i32 %xor36.5317 to i8
  store i8 %conv37.5318, i8* %scevgep41.4306, align 1
  %scevgep28.5319 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %75, i64 0, i64 0, i64 1
  %82 = bitcast i8* %scevgep28.5319 to [21 x [21 x i8]]*
  %scevgep41.5320 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %76, i64 0, i64 1, i64 0
  %83 = bitcast i8* %scevgep41.5320 to [21 x [21 x i8]]*
  %call16.6322 = call zeroext i8 (...) @rand()
  store i8 %call16.6322, i8* %scevgep28.5319, align 1
  %84 = load i8, i8* %scevgep28.5319, align 1
  %conv23.6323 = zext i8 %84 to i32
  %85 = load i8, i8* %a, align 1
  %scevgep34.6324 = getelementptr i8, i8* %b, i64 7
  %86 = load i8, i8* %scevgep34.6324, align 1
  %call28.6325 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86)
  %conv29.6326 = zext i8 %call28.6325 to i32
  %xor.6327 = xor i32 %conv23.6323, %conv29.6326
  %scevgep35.6328 = getelementptr i8, i8* %a, i64 7
  %87 = load i8, i8* %scevgep35.6328, align 1
  %88 = load i8, i8* %b, align 1
  %call34.6329 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88)
  %conv35.6330 = zext i8 %call34.6329 to i32
  %xor36.6331 = xor i32 %xor.6327, %conv35.6330
  %conv37.6332 = trunc i32 %xor36.6331 to i8
  store i8 %conv37.6332, i8* %scevgep41.5320, align 1
  %scevgep28.6333 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %82, i64 0, i64 0, i64 1
  %89 = bitcast i8* %scevgep28.6333 to [21 x [21 x i8]]*
  %scevgep41.6334 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %83, i64 0, i64 1, i64 0
  %90 = bitcast i8* %scevgep41.6334 to [21 x [21 x i8]]*
  %call16.7336 = call zeroext i8 (...) @rand()
  store i8 %call16.7336, i8* %scevgep28.6333, align 1
  %91 = load i8, i8* %scevgep28.6333, align 1
  %conv23.7337 = zext i8 %91 to i32
  %92 = load i8, i8* %a, align 1
  %scevgep34.7338 = getelementptr i8, i8* %b, i64 8
  %93 = load i8, i8* %scevgep34.7338, align 1
  %call28.7339 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93)
  %conv29.7340 = zext i8 %call28.7339 to i32
  %xor.7341 = xor i32 %conv23.7337, %conv29.7340
  %scevgep35.7342 = getelementptr i8, i8* %a, i64 8
  %94 = load i8, i8* %scevgep35.7342, align 1
  %95 = load i8, i8* %b, align 1
  %call34.7343 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95)
  %conv35.7344 = zext i8 %call34.7343 to i32
  %xor36.7345 = xor i32 %xor.7341, %conv35.7344
  %conv37.7346 = trunc i32 %xor36.7345 to i8
  store i8 %conv37.7346, i8* %scevgep41.6334, align 1
  %scevgep28.7347 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %89, i64 0, i64 0, i64 1
  %96 = bitcast i8* %scevgep28.7347 to [21 x [21 x i8]]*
  %scevgep41.7348 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %90, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep41.7348 to [21 x [21 x i8]]*
  %call16.8350 = call zeroext i8 (...) @rand()
  store i8 %call16.8350, i8* %scevgep28.7347, align 1
  %98 = load i8, i8* %scevgep28.7347, align 1
  %conv23.8351 = zext i8 %98 to i32
  %99 = load i8, i8* %a, align 1
  %scevgep34.8352 = getelementptr i8, i8* %b, i64 9
  %100 = load i8, i8* %scevgep34.8352, align 1
  %call28.8353 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100)
  %conv29.8354 = zext i8 %call28.8353 to i32
  %xor.8355 = xor i32 %conv23.8351, %conv29.8354
  %scevgep35.8356 = getelementptr i8, i8* %a, i64 9
  %101 = load i8, i8* %scevgep35.8356, align 1
  %102 = load i8, i8* %b, align 1
  %call34.8357 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102)
  %conv35.8358 = zext i8 %call34.8357 to i32
  %xor36.8359 = xor i32 %xor.8355, %conv35.8358
  %conv37.8360 = trunc i32 %xor36.8359 to i8
  store i8 %conv37.8360, i8* %scevgep41.7348, align 1
  %scevgep28.8361 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %96, i64 0, i64 0, i64 1
  %103 = bitcast i8* %scevgep28.8361 to [21 x [21 x i8]]*
  %scevgep41.8362 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %97, i64 0, i64 1, i64 0
  %104 = bitcast i8* %scevgep41.8362 to [21 x [21 x i8]]*
  %call16.9364 = call zeroext i8 (...) @rand()
  store i8 %call16.9364, i8* %scevgep28.8361, align 1
  %105 = load i8, i8* %scevgep28.8361, align 1
  %conv23.9365 = zext i8 %105 to i32
  %106 = load i8, i8* %a, align 1
  %scevgep34.9366 = getelementptr i8, i8* %b, i64 10
  %107 = load i8, i8* %scevgep34.9366, align 1
  %call28.9367 = call zeroext i8 @mult(i8 zeroext %106, i8 zeroext %107)
  %conv29.9368 = zext i8 %call28.9367 to i32
  %xor.9369 = xor i32 %conv23.9365, %conv29.9368
  %scevgep35.9370 = getelementptr i8, i8* %a, i64 10
  %108 = load i8, i8* %scevgep35.9370, align 1
  %109 = load i8, i8* %b, align 1
  %call34.9371 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109)
  %conv35.9372 = zext i8 %call34.9371 to i32
  %xor36.9373 = xor i32 %xor.9369, %conv35.9372
  %conv37.9374 = trunc i32 %xor36.9373 to i8
  store i8 %conv37.9374, i8* %scevgep41.8362, align 1
  %scevgep28.9375 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %103, i64 0, i64 0, i64 1
  %110 = bitcast i8* %scevgep28.9375 to [21 x [21 x i8]]*
  %scevgep41.9376 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %104, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep41.9376 to [21 x [21 x i8]]*
  %call16.10378 = call zeroext i8 (...) @rand()
  store i8 %call16.10378, i8* %scevgep28.9375, align 1
  %112 = load i8, i8* %scevgep28.9375, align 1
  %conv23.10379 = zext i8 %112 to i32
  %113 = load i8, i8* %a, align 1
  %scevgep34.10380 = getelementptr i8, i8* %b, i64 11
  %114 = load i8, i8* %scevgep34.10380, align 1
  %call28.10381 = call zeroext i8 @mult(i8 zeroext %113, i8 zeroext %114)
  %conv29.10382 = zext i8 %call28.10381 to i32
  %xor.10383 = xor i32 %conv23.10379, %conv29.10382
  %scevgep35.10384 = getelementptr i8, i8* %a, i64 11
  %115 = load i8, i8* %scevgep35.10384, align 1
  %116 = load i8, i8* %b, align 1
  %call34.10385 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116)
  %conv35.10386 = zext i8 %call34.10385 to i32
  %xor36.10387 = xor i32 %xor.10383, %conv35.10386
  %conv37.10388 = trunc i32 %xor36.10387 to i8
  store i8 %conv37.10388, i8* %scevgep41.9376, align 1
  %scevgep28.10389 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %110, i64 0, i64 0, i64 1
  %117 = bitcast i8* %scevgep28.10389 to [21 x [21 x i8]]*
  %scevgep41.10390 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %111, i64 0, i64 1, i64 0
  %118 = bitcast i8* %scevgep41.10390 to [21 x [21 x i8]]*
  %call16.11392 = call zeroext i8 (...) @rand()
  store i8 %call16.11392, i8* %scevgep28.10389, align 1
  %119 = load i8, i8* %scevgep28.10389, align 1
  %conv23.11393 = zext i8 %119 to i32
  %120 = load i8, i8* %a, align 1
  %scevgep34.11394 = getelementptr i8, i8* %b, i64 12
  %121 = load i8, i8* %scevgep34.11394, align 1
  %call28.11395 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121)
  %conv29.11396 = zext i8 %call28.11395 to i32
  %xor.11397 = xor i32 %conv23.11393, %conv29.11396
  %scevgep35.11398 = getelementptr i8, i8* %a, i64 12
  %122 = load i8, i8* %scevgep35.11398, align 1
  %123 = load i8, i8* %b, align 1
  %call34.11399 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123)
  %conv35.11400 = zext i8 %call34.11399 to i32
  %xor36.11401 = xor i32 %xor.11397, %conv35.11400
  %conv37.11402 = trunc i32 %xor36.11401 to i8
  store i8 %conv37.11402, i8* %scevgep41.10390, align 1
  %scevgep28.11403 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %117, i64 0, i64 0, i64 1
  %124 = bitcast i8* %scevgep28.11403 to [21 x [21 x i8]]*
  %scevgep41.11404 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %118, i64 0, i64 1, i64 0
  %125 = bitcast i8* %scevgep41.11404 to [21 x [21 x i8]]*
  %call16.12406 = call zeroext i8 (...) @rand()
  store i8 %call16.12406, i8* %scevgep28.11403, align 1
  %126 = load i8, i8* %scevgep28.11403, align 1
  %conv23.12407 = zext i8 %126 to i32
  %127 = load i8, i8* %a, align 1
  %scevgep34.12408 = getelementptr i8, i8* %b, i64 13
  %128 = load i8, i8* %scevgep34.12408, align 1
  %call28.12409 = call zeroext i8 @mult(i8 zeroext %127, i8 zeroext %128)
  %conv29.12410 = zext i8 %call28.12409 to i32
  %xor.12411 = xor i32 %conv23.12407, %conv29.12410
  %scevgep35.12412 = getelementptr i8, i8* %a, i64 13
  %129 = load i8, i8* %scevgep35.12412, align 1
  %130 = load i8, i8* %b, align 1
  %call34.12413 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130)
  %conv35.12414 = zext i8 %call34.12413 to i32
  %xor36.12415 = xor i32 %xor.12411, %conv35.12414
  %conv37.12416 = trunc i32 %xor36.12415 to i8
  store i8 %conv37.12416, i8* %scevgep41.11404, align 1
  %scevgep28.12417 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %124, i64 0, i64 0, i64 1
  %131 = bitcast i8* %scevgep28.12417 to [21 x [21 x i8]]*
  %scevgep41.12418 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %125, i64 0, i64 1, i64 0
  %132 = bitcast i8* %scevgep41.12418 to [21 x [21 x i8]]*
  %call16.13420 = call zeroext i8 (...) @rand()
  store i8 %call16.13420, i8* %scevgep28.12417, align 1
  %133 = load i8, i8* %scevgep28.12417, align 1
  %conv23.13421 = zext i8 %133 to i32
  %134 = load i8, i8* %a, align 1
  %scevgep34.13422 = getelementptr i8, i8* %b, i64 14
  %135 = load i8, i8* %scevgep34.13422, align 1
  %call28.13423 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135)
  %conv29.13424 = zext i8 %call28.13423 to i32
  %xor.13425 = xor i32 %conv23.13421, %conv29.13424
  %scevgep35.13426 = getelementptr i8, i8* %a, i64 14
  %136 = load i8, i8* %scevgep35.13426, align 1
  %137 = load i8, i8* %b, align 1
  %call34.13427 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137)
  %conv35.13428 = zext i8 %call34.13427 to i32
  %xor36.13429 = xor i32 %xor.13425, %conv35.13428
  %conv37.13430 = trunc i32 %xor36.13429 to i8
  store i8 %conv37.13430, i8* %scevgep41.12418, align 1
  %scevgep28.13431 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %131, i64 0, i64 0, i64 1
  %138 = bitcast i8* %scevgep28.13431 to [21 x [21 x i8]]*
  %scevgep41.13432 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %132, i64 0, i64 1, i64 0
  %139 = bitcast i8* %scevgep41.13432 to [21 x [21 x i8]]*
  %call16.14434 = call zeroext i8 (...) @rand()
  store i8 %call16.14434, i8* %scevgep28.13431, align 1
  %140 = load i8, i8* %scevgep28.13431, align 1
  %conv23.14435 = zext i8 %140 to i32
  %141 = load i8, i8* %a, align 1
  %scevgep34.14436 = getelementptr i8, i8* %b, i64 15
  %142 = load i8, i8* %scevgep34.14436, align 1
  %call28.14437 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142)
  %conv29.14438 = zext i8 %call28.14437 to i32
  %xor.14439 = xor i32 %conv23.14435, %conv29.14438
  %scevgep35.14440 = getelementptr i8, i8* %a, i64 15
  %143 = load i8, i8* %scevgep35.14440, align 1
  %144 = load i8, i8* %b, align 1
  %call34.14441 = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144)
  %conv35.14442 = zext i8 %call34.14441 to i32
  %xor36.14443 = xor i32 %xor.14439, %conv35.14442
  %conv37.14444 = trunc i32 %xor36.14443 to i8
  store i8 %conv37.14444, i8* %scevgep41.13432, align 1
  %scevgep28.14445 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %138, i64 0, i64 0, i64 1
  %145 = bitcast i8* %scevgep28.14445 to [21 x [21 x i8]]*
  %scevgep41.14446 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %139, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep41.14446 to [21 x [21 x i8]]*
  %call16.15448 = call zeroext i8 (...) @rand()
  store i8 %call16.15448, i8* %scevgep28.14445, align 1
  %147 = load i8, i8* %scevgep28.14445, align 1
  %conv23.15449 = zext i8 %147 to i32
  %148 = load i8, i8* %a, align 1
  %scevgep34.15450 = getelementptr i8, i8* %b, i64 16
  %149 = load i8, i8* %scevgep34.15450, align 1
  %call28.15451 = call zeroext i8 @mult(i8 zeroext %148, i8 zeroext %149)
  %conv29.15452 = zext i8 %call28.15451 to i32
  %xor.15453 = xor i32 %conv23.15449, %conv29.15452
  %scevgep35.15454 = getelementptr i8, i8* %a, i64 16
  %150 = load i8, i8* %scevgep35.15454, align 1
  %151 = load i8, i8* %b, align 1
  %call34.15455 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %151)
  %conv35.15456 = zext i8 %call34.15455 to i32
  %xor36.15457 = xor i32 %xor.15453, %conv35.15456
  %conv37.15458 = trunc i32 %xor36.15457 to i8
  store i8 %conv37.15458, i8* %scevgep41.14446, align 1
  %scevgep28.15459 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %145, i64 0, i64 0, i64 1
  %152 = bitcast i8* %scevgep28.15459 to [21 x [21 x i8]]*
  %scevgep41.15460 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %146, i64 0, i64 1, i64 0
  %153 = bitcast i8* %scevgep41.15460 to [21 x [21 x i8]]*
  %call16.16462 = call zeroext i8 (...) @rand()
  store i8 %call16.16462, i8* %scevgep28.15459, align 1
  %154 = load i8, i8* %scevgep28.15459, align 1
  %conv23.16463 = zext i8 %154 to i32
  %155 = load i8, i8* %a, align 1
  %scevgep34.16464 = getelementptr i8, i8* %b, i64 17
  %156 = load i8, i8* %scevgep34.16464, align 1
  %call28.16465 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156)
  %conv29.16466 = zext i8 %call28.16465 to i32
  %xor.16467 = xor i32 %conv23.16463, %conv29.16466
  %scevgep35.16468 = getelementptr i8, i8* %a, i64 17
  %157 = load i8, i8* %scevgep35.16468, align 1
  %158 = load i8, i8* %b, align 1
  %call34.16469 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158)
  %conv35.16470 = zext i8 %call34.16469 to i32
  %xor36.16471 = xor i32 %xor.16467, %conv35.16470
  %conv37.16472 = trunc i32 %xor36.16471 to i8
  store i8 %conv37.16472, i8* %scevgep41.15460, align 1
  %scevgep28.16473 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %152, i64 0, i64 0, i64 1
  %159 = bitcast i8* %scevgep28.16473 to [21 x [21 x i8]]*
  %scevgep41.16474 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %153, i64 0, i64 1, i64 0
  %160 = bitcast i8* %scevgep41.16474 to [21 x [21 x i8]]*
  %call16.17476 = call zeroext i8 (...) @rand()
  store i8 %call16.17476, i8* %scevgep28.16473, align 1
  %161 = load i8, i8* %scevgep28.16473, align 1
  %conv23.17477 = zext i8 %161 to i32
  %162 = load i8, i8* %a, align 1
  %scevgep34.17478 = getelementptr i8, i8* %b, i64 18
  %163 = load i8, i8* %scevgep34.17478, align 1
  %call28.17479 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163)
  %conv29.17480 = zext i8 %call28.17479 to i32
  %xor.17481 = xor i32 %conv23.17477, %conv29.17480
  %scevgep35.17482 = getelementptr i8, i8* %a, i64 18
  %164 = load i8, i8* %scevgep35.17482, align 1
  %165 = load i8, i8* %b, align 1
  %call34.17483 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165)
  %conv35.17484 = zext i8 %call34.17483 to i32
  %xor36.17485 = xor i32 %xor.17481, %conv35.17484
  %conv37.17486 = trunc i32 %xor36.17485 to i8
  store i8 %conv37.17486, i8* %scevgep41.16474, align 1
  %scevgep28.17487 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %159, i64 0, i64 0, i64 1
  %166 = bitcast i8* %scevgep28.17487 to [21 x [21 x i8]]*
  %scevgep41.17488 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %160, i64 0, i64 1, i64 0
  %167 = bitcast i8* %scevgep41.17488 to [21 x [21 x i8]]*
  %call16.18490 = call zeroext i8 (...) @rand()
  store i8 %call16.18490, i8* %scevgep28.17487, align 1
  %168 = load i8, i8* %scevgep28.17487, align 1
  %conv23.18491 = zext i8 %168 to i32
  %169 = load i8, i8* %a, align 1
  %scevgep34.18492 = getelementptr i8, i8* %b, i64 19
  %170 = load i8, i8* %scevgep34.18492, align 1
  %call28.18493 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170)
  %conv29.18494 = zext i8 %call28.18493 to i32
  %xor.18495 = xor i32 %conv23.18491, %conv29.18494
  %scevgep35.18496 = getelementptr i8, i8* %a, i64 19
  %171 = load i8, i8* %scevgep35.18496, align 1
  %172 = load i8, i8* %b, align 1
  %call34.18497 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172)
  %conv35.18498 = zext i8 %call34.18497 to i32
  %xor36.18499 = xor i32 %xor.18495, %conv35.18498
  %conv37.18500 = trunc i32 %xor36.18499 to i8
  store i8 %conv37.18500, i8* %scevgep41.17488, align 1
  %scevgep28.18501 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %166, i64 0, i64 0, i64 1
  %scevgep41.18502 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %167, i64 0, i64 1, i64 0
  %call16.19504 = call zeroext i8 (...) @rand()
  store i8 %call16.19504, i8* %scevgep28.18501, align 1
  %173 = load i8, i8* %scevgep28.18501, align 1
  %conv23.19505 = zext i8 %173 to i32
  %174 = load i8, i8* %a, align 1
  %scevgep34.19506 = getelementptr i8, i8* %b, i64 20
  %175 = load i8, i8* %scevgep34.19506, align 1
  %call28.19507 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175)
  %conv29.19508 = zext i8 %call28.19507 to i32
  %xor.19509 = xor i32 %conv23.19505, %conv29.19508
  %scevgep35.19510 = getelementptr i8, i8* %a, i64 20
  %176 = load i8, i8* %scevgep35.19510, align 1
  %177 = load i8, i8* %b, align 1
  %call34.19511 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177)
  %conv35.19512 = zext i8 %call34.19511 to i32
  %xor36.19513 = xor i32 %xor.19509, %conv35.19512
  %conv37.19514 = trunc i32 %xor36.19513 to i8
  store i8 %conv37.19514, i8* %scevgep41.18502, align 1
  %scevgep26 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %178 = bitcast i8* %scevgep26 to [21 x [21 x i8]]*
  %scevgep39 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep3637, i64 0, i64 1, i64 1
  %179 = bitcast i8* %scevgep39 to [21 x [21 x i8]]*
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep26, align 1
  %180 = load i8, i8* %scevgep26, align 1
  %conv23.1 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1 = getelementptr i8, i8* %b, i64 2
  %182 = load i8, i8* %scevgep34.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep35.1 = getelementptr i8, i8* %a, i64 2
  %183 = load i8, i8* %scevgep35.1, align 1
  %184 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  store i8 %conv37.1, i8* %scevgep39, align 1
  %scevgep28.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %178, i64 0, i64 0, i64 1
  %185 = bitcast i8* %scevgep28.1 to [21 x [21 x i8]]*
  %scevgep41.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %179, i64 0, i64 1, i64 0
  %186 = bitcast i8* %scevgep41.1 to [21 x [21 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep28.1, align 1
  %187 = load i8, i8* %scevgep28.1, align 1
  %conv23.1.1 = zext i8 %187 to i32
  %188 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.1 = getelementptr i8, i8* %b, i64 3
  %189 = load i8, i8* %scevgep34.1.1, align 1
  %call28.1.1 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189)
  %conv29.1.1 = zext i8 %call28.1.1 to i32
  %xor.1.1 = xor i32 %conv23.1.1, %conv29.1.1
  %scevgep35.1.1 = getelementptr i8, i8* %a, i64 3
  %190 = load i8, i8* %scevgep35.1.1, align 1
  %191 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.1 = call zeroext i8 @mult(i8 zeroext %190, i8 zeroext %191)
  %conv35.1.1 = zext i8 %call34.1.1 to i32
  %xor36.1.1 = xor i32 %xor.1.1, %conv35.1.1
  %conv37.1.1 = trunc i32 %xor36.1.1 to i8
  store i8 %conv37.1.1, i8* %scevgep41.1, align 1
  %scevgep28.1.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %185, i64 0, i64 0, i64 1
  %192 = bitcast i8* %scevgep28.1.1 to [21 x [21 x i8]]*
  %scevgep41.1.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %186, i64 0, i64 1, i64 0
  %193 = bitcast i8* %scevgep41.1.1 to [21 x [21 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep28.1.1, align 1
  %194 = load i8, i8* %scevgep28.1.1, align 1
  %conv23.1.2 = zext i8 %194 to i32
  %195 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.2 = getelementptr i8, i8* %b, i64 4
  %196 = load i8, i8* %scevgep34.1.2, align 1
  %call28.1.2 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196)
  %conv29.1.2 = zext i8 %call28.1.2 to i32
  %xor.1.2 = xor i32 %conv23.1.2, %conv29.1.2
  %scevgep35.1.2 = getelementptr i8, i8* %a, i64 4
  %197 = load i8, i8* %scevgep35.1.2, align 1
  %198 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.2 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198)
  %conv35.1.2 = zext i8 %call34.1.2 to i32
  %xor36.1.2 = xor i32 %xor.1.2, %conv35.1.2
  %conv37.1.2 = trunc i32 %xor36.1.2 to i8
  store i8 %conv37.1.2, i8* %scevgep41.1.1, align 1
  %scevgep28.1.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %192, i64 0, i64 0, i64 1
  %199 = bitcast i8* %scevgep28.1.2 to [21 x [21 x i8]]*
  %scevgep41.1.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %193, i64 0, i64 1, i64 0
  %200 = bitcast i8* %scevgep41.1.2 to [21 x [21 x i8]]*
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep28.1.2, align 1
  %201 = load i8, i8* %scevgep28.1.2, align 1
  %conv23.1.3 = zext i8 %201 to i32
  %202 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.3 = getelementptr i8, i8* %b, i64 5
  %203 = load i8, i8* %scevgep34.1.3, align 1
  %call28.1.3 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203)
  %conv29.1.3 = zext i8 %call28.1.3 to i32
  %xor.1.3 = xor i32 %conv23.1.3, %conv29.1.3
  %scevgep35.1.3 = getelementptr i8, i8* %a, i64 5
  %204 = load i8, i8* %scevgep35.1.3, align 1
  %205 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.3 = call zeroext i8 @mult(i8 zeroext %204, i8 zeroext %205)
  %conv35.1.3 = zext i8 %call34.1.3 to i32
  %xor36.1.3 = xor i32 %xor.1.3, %conv35.1.3
  %conv37.1.3 = trunc i32 %xor36.1.3 to i8
  store i8 %conv37.1.3, i8* %scevgep41.1.2, align 1
  %scevgep28.1.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %199, i64 0, i64 0, i64 1
  %206 = bitcast i8* %scevgep28.1.3 to [21 x [21 x i8]]*
  %scevgep41.1.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %200, i64 0, i64 1, i64 0
  %207 = bitcast i8* %scevgep41.1.3 to [21 x [21 x i8]]*
  %call16.1.4 = call zeroext i8 (...) @rand()
  store i8 %call16.1.4, i8* %scevgep28.1.3, align 1
  %208 = load i8, i8* %scevgep28.1.3, align 1
  %conv23.1.4 = zext i8 %208 to i32
  %209 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.4 = getelementptr i8, i8* %b, i64 6
  %210 = load i8, i8* %scevgep34.1.4, align 1
  %call28.1.4 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210)
  %conv29.1.4 = zext i8 %call28.1.4 to i32
  %xor.1.4 = xor i32 %conv23.1.4, %conv29.1.4
  %scevgep35.1.4 = getelementptr i8, i8* %a, i64 6
  %211 = load i8, i8* %scevgep35.1.4, align 1
  %212 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.4 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %212)
  %conv35.1.4 = zext i8 %call34.1.4 to i32
  %xor36.1.4 = xor i32 %xor.1.4, %conv35.1.4
  %conv37.1.4 = trunc i32 %xor36.1.4 to i8
  store i8 %conv37.1.4, i8* %scevgep41.1.3, align 1
  %scevgep28.1.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %206, i64 0, i64 0, i64 1
  %213 = bitcast i8* %scevgep28.1.4 to [21 x [21 x i8]]*
  %scevgep41.1.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %207, i64 0, i64 1, i64 0
  %214 = bitcast i8* %scevgep41.1.4 to [21 x [21 x i8]]*
  %call16.1.5 = call zeroext i8 (...) @rand()
  store i8 %call16.1.5, i8* %scevgep28.1.4, align 1
  %215 = load i8, i8* %scevgep28.1.4, align 1
  %conv23.1.5 = zext i8 %215 to i32
  %216 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.5 = getelementptr i8, i8* %b, i64 7
  %217 = load i8, i8* %scevgep34.1.5, align 1
  %call28.1.5 = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %217)
  %conv29.1.5 = zext i8 %call28.1.5 to i32
  %xor.1.5 = xor i32 %conv23.1.5, %conv29.1.5
  %scevgep35.1.5 = getelementptr i8, i8* %a, i64 7
  %218 = load i8, i8* %scevgep35.1.5, align 1
  %219 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.5 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219)
  %conv35.1.5 = zext i8 %call34.1.5 to i32
  %xor36.1.5 = xor i32 %xor.1.5, %conv35.1.5
  %conv37.1.5 = trunc i32 %xor36.1.5 to i8
  store i8 %conv37.1.5, i8* %scevgep41.1.4, align 1
  %scevgep28.1.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 1
  %220 = bitcast i8* %scevgep28.1.5 to [21 x [21 x i8]]*
  %scevgep41.1.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %214, i64 0, i64 1, i64 0
  %221 = bitcast i8* %scevgep41.1.5 to [21 x [21 x i8]]*
  %call16.1.6 = call zeroext i8 (...) @rand()
  store i8 %call16.1.6, i8* %scevgep28.1.5, align 1
  %222 = load i8, i8* %scevgep28.1.5, align 1
  %conv23.1.6 = zext i8 %222 to i32
  %223 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.6 = getelementptr i8, i8* %b, i64 8
  %224 = load i8, i8* %scevgep34.1.6, align 1
  %call28.1.6 = call zeroext i8 @mult(i8 zeroext %223, i8 zeroext %224)
  %conv29.1.6 = zext i8 %call28.1.6 to i32
  %xor.1.6 = xor i32 %conv23.1.6, %conv29.1.6
  %scevgep35.1.6 = getelementptr i8, i8* %a, i64 8
  %225 = load i8, i8* %scevgep35.1.6, align 1
  %226 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.6 = call zeroext i8 @mult(i8 zeroext %225, i8 zeroext %226)
  %conv35.1.6 = zext i8 %call34.1.6 to i32
  %xor36.1.6 = xor i32 %xor.1.6, %conv35.1.6
  %conv37.1.6 = trunc i32 %xor36.1.6 to i8
  store i8 %conv37.1.6, i8* %scevgep41.1.5, align 1
  %scevgep28.1.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %220, i64 0, i64 0, i64 1
  %227 = bitcast i8* %scevgep28.1.6 to [21 x [21 x i8]]*
  %scevgep41.1.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %221, i64 0, i64 1, i64 0
  %228 = bitcast i8* %scevgep41.1.6 to [21 x [21 x i8]]*
  %call16.1.7 = call zeroext i8 (...) @rand()
  store i8 %call16.1.7, i8* %scevgep28.1.6, align 1
  %229 = load i8, i8* %scevgep28.1.6, align 1
  %conv23.1.7 = zext i8 %229 to i32
  %230 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.7 = getelementptr i8, i8* %b, i64 9
  %231 = load i8, i8* %scevgep34.1.7, align 1
  %call28.1.7 = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231)
  %conv29.1.7 = zext i8 %call28.1.7 to i32
  %xor.1.7 = xor i32 %conv23.1.7, %conv29.1.7
  %scevgep35.1.7 = getelementptr i8, i8* %a, i64 9
  %232 = load i8, i8* %scevgep35.1.7, align 1
  %233 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.7 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233)
  %conv35.1.7 = zext i8 %call34.1.7 to i32
  %xor36.1.7 = xor i32 %xor.1.7, %conv35.1.7
  %conv37.1.7 = trunc i32 %xor36.1.7 to i8
  store i8 %conv37.1.7, i8* %scevgep41.1.6, align 1
  %scevgep28.1.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %227, i64 0, i64 0, i64 1
  %234 = bitcast i8* %scevgep28.1.7 to [21 x [21 x i8]]*
  %scevgep41.1.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %228, i64 0, i64 1, i64 0
  %235 = bitcast i8* %scevgep41.1.7 to [21 x [21 x i8]]*
  %call16.1.8 = call zeroext i8 (...) @rand()
  store i8 %call16.1.8, i8* %scevgep28.1.7, align 1
  %236 = load i8, i8* %scevgep28.1.7, align 1
  %conv23.1.8 = zext i8 %236 to i32
  %237 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.8 = getelementptr i8, i8* %b, i64 10
  %238 = load i8, i8* %scevgep34.1.8, align 1
  %call28.1.8 = call zeroext i8 @mult(i8 zeroext %237, i8 zeroext %238)
  %conv29.1.8 = zext i8 %call28.1.8 to i32
  %xor.1.8 = xor i32 %conv23.1.8, %conv29.1.8
  %scevgep35.1.8 = getelementptr i8, i8* %a, i64 10
  %239 = load i8, i8* %scevgep35.1.8, align 1
  %240 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.8 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240)
  %conv35.1.8 = zext i8 %call34.1.8 to i32
  %xor36.1.8 = xor i32 %xor.1.8, %conv35.1.8
  %conv37.1.8 = trunc i32 %xor36.1.8 to i8
  store i8 %conv37.1.8, i8* %scevgep41.1.7, align 1
  %scevgep28.1.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %234, i64 0, i64 0, i64 1
  %241 = bitcast i8* %scevgep28.1.8 to [21 x [21 x i8]]*
  %scevgep41.1.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %235, i64 0, i64 1, i64 0
  %242 = bitcast i8* %scevgep41.1.8 to [21 x [21 x i8]]*
  %call16.1.9 = call zeroext i8 (...) @rand()
  store i8 %call16.1.9, i8* %scevgep28.1.8, align 1
  %243 = load i8, i8* %scevgep28.1.8, align 1
  %conv23.1.9 = zext i8 %243 to i32
  %244 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.9 = getelementptr i8, i8* %b, i64 11
  %245 = load i8, i8* %scevgep34.1.9, align 1
  %call28.1.9 = call zeroext i8 @mult(i8 zeroext %244, i8 zeroext %245)
  %conv29.1.9 = zext i8 %call28.1.9 to i32
  %xor.1.9 = xor i32 %conv23.1.9, %conv29.1.9
  %scevgep35.1.9 = getelementptr i8, i8* %a, i64 11
  %246 = load i8, i8* %scevgep35.1.9, align 1
  %247 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.9 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247)
  %conv35.1.9 = zext i8 %call34.1.9 to i32
  %xor36.1.9 = xor i32 %xor.1.9, %conv35.1.9
  %conv37.1.9 = trunc i32 %xor36.1.9 to i8
  store i8 %conv37.1.9, i8* %scevgep41.1.8, align 1
  %scevgep28.1.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %241, i64 0, i64 0, i64 1
  %248 = bitcast i8* %scevgep28.1.9 to [21 x [21 x i8]]*
  %scevgep41.1.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %242, i64 0, i64 1, i64 0
  %249 = bitcast i8* %scevgep41.1.9 to [21 x [21 x i8]]*
  %call16.1.10 = call zeroext i8 (...) @rand()
  store i8 %call16.1.10, i8* %scevgep28.1.9, align 1
  %250 = load i8, i8* %scevgep28.1.9, align 1
  %conv23.1.10 = zext i8 %250 to i32
  %251 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.10 = getelementptr i8, i8* %b, i64 12
  %252 = load i8, i8* %scevgep34.1.10, align 1
  %call28.1.10 = call zeroext i8 @mult(i8 zeroext %251, i8 zeroext %252)
  %conv29.1.10 = zext i8 %call28.1.10 to i32
  %xor.1.10 = xor i32 %conv23.1.10, %conv29.1.10
  %scevgep35.1.10 = getelementptr i8, i8* %a, i64 12
  %253 = load i8, i8* %scevgep35.1.10, align 1
  %254 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.10 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254)
  %conv35.1.10 = zext i8 %call34.1.10 to i32
  %xor36.1.10 = xor i32 %xor.1.10, %conv35.1.10
  %conv37.1.10 = trunc i32 %xor36.1.10 to i8
  store i8 %conv37.1.10, i8* %scevgep41.1.9, align 1
  %scevgep28.1.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %248, i64 0, i64 0, i64 1
  %255 = bitcast i8* %scevgep28.1.10 to [21 x [21 x i8]]*
  %scevgep41.1.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %249, i64 0, i64 1, i64 0
  %256 = bitcast i8* %scevgep41.1.10 to [21 x [21 x i8]]*
  %call16.1.11 = call zeroext i8 (...) @rand()
  store i8 %call16.1.11, i8* %scevgep28.1.10, align 1
  %257 = load i8, i8* %scevgep28.1.10, align 1
  %conv23.1.11 = zext i8 %257 to i32
  %258 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.11 = getelementptr i8, i8* %b, i64 13
  %259 = load i8, i8* %scevgep34.1.11, align 1
  %call28.1.11 = call zeroext i8 @mult(i8 zeroext %258, i8 zeroext %259)
  %conv29.1.11 = zext i8 %call28.1.11 to i32
  %xor.1.11 = xor i32 %conv23.1.11, %conv29.1.11
  %scevgep35.1.11 = getelementptr i8, i8* %a, i64 13
  %260 = load i8, i8* %scevgep35.1.11, align 1
  %261 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.11 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261)
  %conv35.1.11 = zext i8 %call34.1.11 to i32
  %xor36.1.11 = xor i32 %xor.1.11, %conv35.1.11
  %conv37.1.11 = trunc i32 %xor36.1.11 to i8
  store i8 %conv37.1.11, i8* %scevgep41.1.10, align 1
  %scevgep28.1.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %255, i64 0, i64 0, i64 1
  %262 = bitcast i8* %scevgep28.1.11 to [21 x [21 x i8]]*
  %scevgep41.1.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 1, i64 0
  %263 = bitcast i8* %scevgep41.1.11 to [21 x [21 x i8]]*
  %call16.1.12 = call zeroext i8 (...) @rand()
  store i8 %call16.1.12, i8* %scevgep28.1.11, align 1
  %264 = load i8, i8* %scevgep28.1.11, align 1
  %conv23.1.12 = zext i8 %264 to i32
  %265 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.12 = getelementptr i8, i8* %b, i64 14
  %266 = load i8, i8* %scevgep34.1.12, align 1
  %call28.1.12 = call zeroext i8 @mult(i8 zeroext %265, i8 zeroext %266)
  %conv29.1.12 = zext i8 %call28.1.12 to i32
  %xor.1.12 = xor i32 %conv23.1.12, %conv29.1.12
  %scevgep35.1.12 = getelementptr i8, i8* %a, i64 14
  %267 = load i8, i8* %scevgep35.1.12, align 1
  %268 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.12 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268)
  %conv35.1.12 = zext i8 %call34.1.12 to i32
  %xor36.1.12 = xor i32 %xor.1.12, %conv35.1.12
  %conv37.1.12 = trunc i32 %xor36.1.12 to i8
  store i8 %conv37.1.12, i8* %scevgep41.1.11, align 1
  %scevgep28.1.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %262, i64 0, i64 0, i64 1
  %269 = bitcast i8* %scevgep28.1.12 to [21 x [21 x i8]]*
  %scevgep41.1.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %263, i64 0, i64 1, i64 0
  %270 = bitcast i8* %scevgep41.1.12 to [21 x [21 x i8]]*
  %call16.1.13 = call zeroext i8 (...) @rand()
  store i8 %call16.1.13, i8* %scevgep28.1.12, align 1
  %271 = load i8, i8* %scevgep28.1.12, align 1
  %conv23.1.13 = zext i8 %271 to i32
  %272 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.13 = getelementptr i8, i8* %b, i64 15
  %273 = load i8, i8* %scevgep34.1.13, align 1
  %call28.1.13 = call zeroext i8 @mult(i8 zeroext %272, i8 zeroext %273)
  %conv29.1.13 = zext i8 %call28.1.13 to i32
  %xor.1.13 = xor i32 %conv23.1.13, %conv29.1.13
  %scevgep35.1.13 = getelementptr i8, i8* %a, i64 15
  %274 = load i8, i8* %scevgep35.1.13, align 1
  %275 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.13 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275)
  %conv35.1.13 = zext i8 %call34.1.13 to i32
  %xor36.1.13 = xor i32 %xor.1.13, %conv35.1.13
  %conv37.1.13 = trunc i32 %xor36.1.13 to i8
  store i8 %conv37.1.13, i8* %scevgep41.1.12, align 1
  %scevgep28.1.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %269, i64 0, i64 0, i64 1
  %276 = bitcast i8* %scevgep28.1.13 to [21 x [21 x i8]]*
  %scevgep41.1.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %270, i64 0, i64 1, i64 0
  %277 = bitcast i8* %scevgep41.1.13 to [21 x [21 x i8]]*
  %call16.1.14 = call zeroext i8 (...) @rand()
  store i8 %call16.1.14, i8* %scevgep28.1.13, align 1
  %278 = load i8, i8* %scevgep28.1.13, align 1
  %conv23.1.14 = zext i8 %278 to i32
  %279 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.14 = getelementptr i8, i8* %b, i64 16
  %280 = load i8, i8* %scevgep34.1.14, align 1
  %call28.1.14 = call zeroext i8 @mult(i8 zeroext %279, i8 zeroext %280)
  %conv29.1.14 = zext i8 %call28.1.14 to i32
  %xor.1.14 = xor i32 %conv23.1.14, %conv29.1.14
  %scevgep35.1.14 = getelementptr i8, i8* %a, i64 16
  %281 = load i8, i8* %scevgep35.1.14, align 1
  %282 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.14 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282)
  %conv35.1.14 = zext i8 %call34.1.14 to i32
  %xor36.1.14 = xor i32 %xor.1.14, %conv35.1.14
  %conv37.1.14 = trunc i32 %xor36.1.14 to i8
  store i8 %conv37.1.14, i8* %scevgep41.1.13, align 1
  %scevgep28.1.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %276, i64 0, i64 0, i64 1
  %283 = bitcast i8* %scevgep28.1.14 to [21 x [21 x i8]]*
  %scevgep41.1.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %277, i64 0, i64 1, i64 0
  %284 = bitcast i8* %scevgep41.1.14 to [21 x [21 x i8]]*
  %call16.1.15 = call zeroext i8 (...) @rand()
  store i8 %call16.1.15, i8* %scevgep28.1.14, align 1
  %285 = load i8, i8* %scevgep28.1.14, align 1
  %conv23.1.15 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.15 = getelementptr i8, i8* %b, i64 17
  %287 = load i8, i8* %scevgep34.1.15, align 1
  %call28.1.15 = call zeroext i8 @mult(i8 zeroext %286, i8 zeroext %287)
  %conv29.1.15 = zext i8 %call28.1.15 to i32
  %xor.1.15 = xor i32 %conv23.1.15, %conv29.1.15
  %scevgep35.1.15 = getelementptr i8, i8* %a, i64 17
  %288 = load i8, i8* %scevgep35.1.15, align 1
  %289 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.15 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %289)
  %conv35.1.15 = zext i8 %call34.1.15 to i32
  %xor36.1.15 = xor i32 %xor.1.15, %conv35.1.15
  %conv37.1.15 = trunc i32 %xor36.1.15 to i8
  store i8 %conv37.1.15, i8* %scevgep41.1.14, align 1
  %scevgep28.1.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %283, i64 0, i64 0, i64 1
  %290 = bitcast i8* %scevgep28.1.15 to [21 x [21 x i8]]*
  %scevgep41.1.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %284, i64 0, i64 1, i64 0
  %291 = bitcast i8* %scevgep41.1.15 to [21 x [21 x i8]]*
  %call16.1.16 = call zeroext i8 (...) @rand()
  store i8 %call16.1.16, i8* %scevgep28.1.15, align 1
  %292 = load i8, i8* %scevgep28.1.15, align 1
  %conv23.1.16 = zext i8 %292 to i32
  %293 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.16 = getelementptr i8, i8* %b, i64 18
  %294 = load i8, i8* %scevgep34.1.16, align 1
  %call28.1.16 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %294)
  %conv29.1.16 = zext i8 %call28.1.16 to i32
  %xor.1.16 = xor i32 %conv23.1.16, %conv29.1.16
  %scevgep35.1.16 = getelementptr i8, i8* %a, i64 18
  %295 = load i8, i8* %scevgep35.1.16, align 1
  %296 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.16 = call zeroext i8 @mult(i8 zeroext %295, i8 zeroext %296)
  %conv35.1.16 = zext i8 %call34.1.16 to i32
  %xor36.1.16 = xor i32 %xor.1.16, %conv35.1.16
  %conv37.1.16 = trunc i32 %xor36.1.16 to i8
  store i8 %conv37.1.16, i8* %scevgep41.1.15, align 1
  %scevgep28.1.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %290, i64 0, i64 0, i64 1
  %297 = bitcast i8* %scevgep28.1.16 to [21 x [21 x i8]]*
  %scevgep41.1.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %291, i64 0, i64 1, i64 0
  %298 = bitcast i8* %scevgep41.1.16 to [21 x [21 x i8]]*
  %call16.1.17 = call zeroext i8 (...) @rand()
  store i8 %call16.1.17, i8* %scevgep28.1.16, align 1
  %299 = load i8, i8* %scevgep28.1.16, align 1
  %conv23.1.17 = zext i8 %299 to i32
  %300 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.17 = getelementptr i8, i8* %b, i64 19
  %301 = load i8, i8* %scevgep34.1.17, align 1
  %call28.1.17 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301)
  %conv29.1.17 = zext i8 %call28.1.17 to i32
  %xor.1.17 = xor i32 %conv23.1.17, %conv29.1.17
  %scevgep35.1.17 = getelementptr i8, i8* %a, i64 19
  %302 = load i8, i8* %scevgep35.1.17, align 1
  %303 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.17 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303)
  %conv35.1.17 = zext i8 %call34.1.17 to i32
  %xor36.1.17 = xor i32 %xor.1.17, %conv35.1.17
  %conv37.1.17 = trunc i32 %xor36.1.17 to i8
  store i8 %conv37.1.17, i8* %scevgep41.1.16, align 1
  %scevgep28.1.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %297, i64 0, i64 0, i64 1
  %scevgep41.1.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %298, i64 0, i64 1, i64 0
  %call16.1.18 = call zeroext i8 (...) @rand()
  store i8 %call16.1.18, i8* %scevgep28.1.17, align 1
  %304 = load i8, i8* %scevgep28.1.17, align 1
  %conv23.1.18 = zext i8 %304 to i32
  %305 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.18 = getelementptr i8, i8* %b, i64 20
  %306 = load i8, i8* %scevgep34.1.18, align 1
  %call28.1.18 = call zeroext i8 @mult(i8 zeroext %305, i8 zeroext %306)
  %conv29.1.18 = zext i8 %call28.1.18 to i32
  %xor.1.18 = xor i32 %conv23.1.18, %conv29.1.18
  %scevgep35.1.18 = getelementptr i8, i8* %a, i64 20
  %307 = load i8, i8* %scevgep35.1.18, align 1
  %308 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.18 = call zeroext i8 @mult(i8 zeroext %307, i8 zeroext %308)
  %conv35.1.18 = zext i8 %call34.1.18 to i32
  %xor36.1.18 = xor i32 %xor.1.18, %conv35.1.18
  %conv37.1.18 = trunc i32 %xor36.1.18 to i8
  store i8 %conv37.1.18, i8* %scevgep41.1.17, align 1
  %scevgep26.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %178, i64 0, i64 1, i64 1
  %309 = bitcast i8* %scevgep26.1 to [21 x [21 x i8]]*
  %scevgep39.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %179, i64 0, i64 1, i64 1
  %310 = bitcast i8* %scevgep39.1 to [21 x [21 x i8]]*
  %arrayidx25.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep26.1, align 1
  %311 = load i8, i8* %scevgep26.1, align 1
  %conv23.2 = zext i8 %311 to i32
  %312 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2 = getelementptr i8, i8* %b, i64 3
  %313 = load i8, i8* %scevgep34.2, align 1
  %call28.2 = call zeroext i8 @mult(i8 zeroext %312, i8 zeroext %313)
  %conv29.2 = zext i8 %call28.2 to i32
  %xor.2 = xor i32 %conv23.2, %conv29.2
  %scevgep35.2 = getelementptr i8, i8* %a, i64 3
  %314 = load i8, i8* %scevgep35.2, align 1
  %315 = load i8, i8* %arrayidx33.2, align 1
  %call34.2 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315)
  %conv35.2 = zext i8 %call34.2 to i32
  %xor36.2 = xor i32 %xor.2, %conv35.2
  %conv37.2 = trunc i32 %xor36.2 to i8
  store i8 %conv37.2, i8* %scevgep39.1, align 1
  %scevgep28.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %309, i64 0, i64 0, i64 1
  %316 = bitcast i8* %scevgep28.2 to [21 x [21 x i8]]*
  %scevgep41.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %310, i64 0, i64 1, i64 0
  %317 = bitcast i8* %scevgep41.2 to [21 x [21 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep28.2, align 1
  %318 = load i8, i8* %scevgep28.2, align 1
  %conv23.2.1 = zext i8 %318 to i32
  %319 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.1 = getelementptr i8, i8* %b, i64 4
  %320 = load i8, i8* %scevgep34.2.1, align 1
  %call28.2.1 = call zeroext i8 @mult(i8 zeroext %319, i8 zeroext %320)
  %conv29.2.1 = zext i8 %call28.2.1 to i32
  %xor.2.1 = xor i32 %conv23.2.1, %conv29.2.1
  %scevgep35.2.1 = getelementptr i8, i8* %a, i64 4
  %321 = load i8, i8* %scevgep35.2.1, align 1
  %322 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.1 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322)
  %conv35.2.1 = zext i8 %call34.2.1 to i32
  %xor36.2.1 = xor i32 %xor.2.1, %conv35.2.1
  %conv37.2.1 = trunc i32 %xor36.2.1 to i8
  store i8 %conv37.2.1, i8* %scevgep41.2, align 1
  %scevgep28.2.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %316, i64 0, i64 0, i64 1
  %323 = bitcast i8* %scevgep28.2.1 to [21 x [21 x i8]]*
  %scevgep41.2.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %317, i64 0, i64 1, i64 0
  %324 = bitcast i8* %scevgep41.2.1 to [21 x [21 x i8]]*
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep28.2.1, align 1
  %325 = load i8, i8* %scevgep28.2.1, align 1
  %conv23.2.2 = zext i8 %325 to i32
  %326 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.2 = getelementptr i8, i8* %b, i64 5
  %327 = load i8, i8* %scevgep34.2.2, align 1
  %call28.2.2 = call zeroext i8 @mult(i8 zeroext %326, i8 zeroext %327)
  %conv29.2.2 = zext i8 %call28.2.2 to i32
  %xor.2.2 = xor i32 %conv23.2.2, %conv29.2.2
  %scevgep35.2.2 = getelementptr i8, i8* %a, i64 5
  %328 = load i8, i8* %scevgep35.2.2, align 1
  %329 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.2 = call zeroext i8 @mult(i8 zeroext %328, i8 zeroext %329)
  %conv35.2.2 = zext i8 %call34.2.2 to i32
  %xor36.2.2 = xor i32 %xor.2.2, %conv35.2.2
  %conv37.2.2 = trunc i32 %xor36.2.2 to i8
  store i8 %conv37.2.2, i8* %scevgep41.2.1, align 1
  %scevgep28.2.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %323, i64 0, i64 0, i64 1
  %330 = bitcast i8* %scevgep28.2.2 to [21 x [21 x i8]]*
  %scevgep41.2.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %324, i64 0, i64 1, i64 0
  %331 = bitcast i8* %scevgep41.2.2 to [21 x [21 x i8]]*
  %call16.2.3 = call zeroext i8 (...) @rand()
  store i8 %call16.2.3, i8* %scevgep28.2.2, align 1
  %332 = load i8, i8* %scevgep28.2.2, align 1
  %conv23.2.3 = zext i8 %332 to i32
  %333 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.3 = getelementptr i8, i8* %b, i64 6
  %334 = load i8, i8* %scevgep34.2.3, align 1
  %call28.2.3 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334)
  %conv29.2.3 = zext i8 %call28.2.3 to i32
  %xor.2.3 = xor i32 %conv23.2.3, %conv29.2.3
  %scevgep35.2.3 = getelementptr i8, i8* %a, i64 6
  %335 = load i8, i8* %scevgep35.2.3, align 1
  %336 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.3 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336)
  %conv35.2.3 = zext i8 %call34.2.3 to i32
  %xor36.2.3 = xor i32 %xor.2.3, %conv35.2.3
  %conv37.2.3 = trunc i32 %xor36.2.3 to i8
  store i8 %conv37.2.3, i8* %scevgep41.2.2, align 1
  %scevgep28.2.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %330, i64 0, i64 0, i64 1
  %337 = bitcast i8* %scevgep28.2.3 to [21 x [21 x i8]]*
  %scevgep41.2.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %331, i64 0, i64 1, i64 0
  %338 = bitcast i8* %scevgep41.2.3 to [21 x [21 x i8]]*
  %call16.2.4 = call zeroext i8 (...) @rand()
  store i8 %call16.2.4, i8* %scevgep28.2.3, align 1
  %339 = load i8, i8* %scevgep28.2.3, align 1
  %conv23.2.4 = zext i8 %339 to i32
  %340 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.4 = getelementptr i8, i8* %b, i64 7
  %341 = load i8, i8* %scevgep34.2.4, align 1
  %call28.2.4 = call zeroext i8 @mult(i8 zeroext %340, i8 zeroext %341)
  %conv29.2.4 = zext i8 %call28.2.4 to i32
  %xor.2.4 = xor i32 %conv23.2.4, %conv29.2.4
  %scevgep35.2.4 = getelementptr i8, i8* %a, i64 7
  %342 = load i8, i8* %scevgep35.2.4, align 1
  %343 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.4 = call zeroext i8 @mult(i8 zeroext %342, i8 zeroext %343)
  %conv35.2.4 = zext i8 %call34.2.4 to i32
  %xor36.2.4 = xor i32 %xor.2.4, %conv35.2.4
  %conv37.2.4 = trunc i32 %xor36.2.4 to i8
  store i8 %conv37.2.4, i8* %scevgep41.2.3, align 1
  %scevgep28.2.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %337, i64 0, i64 0, i64 1
  %344 = bitcast i8* %scevgep28.2.4 to [21 x [21 x i8]]*
  %scevgep41.2.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %338, i64 0, i64 1, i64 0
  %345 = bitcast i8* %scevgep41.2.4 to [21 x [21 x i8]]*
  %call16.2.5 = call zeroext i8 (...) @rand()
  store i8 %call16.2.5, i8* %scevgep28.2.4, align 1
  %346 = load i8, i8* %scevgep28.2.4, align 1
  %conv23.2.5 = zext i8 %346 to i32
  %347 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.5 = getelementptr i8, i8* %b, i64 8
  %348 = load i8, i8* %scevgep34.2.5, align 1
  %call28.2.5 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348)
  %conv29.2.5 = zext i8 %call28.2.5 to i32
  %xor.2.5 = xor i32 %conv23.2.5, %conv29.2.5
  %scevgep35.2.5 = getelementptr i8, i8* %a, i64 8
  %349 = load i8, i8* %scevgep35.2.5, align 1
  %350 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.5 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350)
  %conv35.2.5 = zext i8 %call34.2.5 to i32
  %xor36.2.5 = xor i32 %xor.2.5, %conv35.2.5
  %conv37.2.5 = trunc i32 %xor36.2.5 to i8
  store i8 %conv37.2.5, i8* %scevgep41.2.4, align 1
  %scevgep28.2.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %344, i64 0, i64 0, i64 1
  %351 = bitcast i8* %scevgep28.2.5 to [21 x [21 x i8]]*
  %scevgep41.2.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %345, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep41.2.5 to [21 x [21 x i8]]*
  %call16.2.6 = call zeroext i8 (...) @rand()
  store i8 %call16.2.6, i8* %scevgep28.2.5, align 1
  %353 = load i8, i8* %scevgep28.2.5, align 1
  %conv23.2.6 = zext i8 %353 to i32
  %354 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.6 = getelementptr i8, i8* %b, i64 9
  %355 = load i8, i8* %scevgep34.2.6, align 1
  %call28.2.6 = call zeroext i8 @mult(i8 zeroext %354, i8 zeroext %355)
  %conv29.2.6 = zext i8 %call28.2.6 to i32
  %xor.2.6 = xor i32 %conv23.2.6, %conv29.2.6
  %scevgep35.2.6 = getelementptr i8, i8* %a, i64 9
  %356 = load i8, i8* %scevgep35.2.6, align 1
  %357 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.6 = call zeroext i8 @mult(i8 zeroext %356, i8 zeroext %357)
  %conv35.2.6 = zext i8 %call34.2.6 to i32
  %xor36.2.6 = xor i32 %xor.2.6, %conv35.2.6
  %conv37.2.6 = trunc i32 %xor36.2.6 to i8
  store i8 %conv37.2.6, i8* %scevgep41.2.5, align 1
  %scevgep28.2.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %351, i64 0, i64 0, i64 1
  %358 = bitcast i8* %scevgep28.2.6 to [21 x [21 x i8]]*
  %scevgep41.2.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %352, i64 0, i64 1, i64 0
  %359 = bitcast i8* %scevgep41.2.6 to [21 x [21 x i8]]*
  %call16.2.7 = call zeroext i8 (...) @rand()
  store i8 %call16.2.7, i8* %scevgep28.2.6, align 1
  %360 = load i8, i8* %scevgep28.2.6, align 1
  %conv23.2.7 = zext i8 %360 to i32
  %361 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.7 = getelementptr i8, i8* %b, i64 10
  %362 = load i8, i8* %scevgep34.2.7, align 1
  %call28.2.7 = call zeroext i8 @mult(i8 zeroext %361, i8 zeroext %362)
  %conv29.2.7 = zext i8 %call28.2.7 to i32
  %xor.2.7 = xor i32 %conv23.2.7, %conv29.2.7
  %scevgep35.2.7 = getelementptr i8, i8* %a, i64 10
  %363 = load i8, i8* %scevgep35.2.7, align 1
  %364 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.7 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364)
  %conv35.2.7 = zext i8 %call34.2.7 to i32
  %xor36.2.7 = xor i32 %xor.2.7, %conv35.2.7
  %conv37.2.7 = trunc i32 %xor36.2.7 to i8
  store i8 %conv37.2.7, i8* %scevgep41.2.6, align 1
  %scevgep28.2.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %358, i64 0, i64 0, i64 1
  %365 = bitcast i8* %scevgep28.2.7 to [21 x [21 x i8]]*
  %scevgep41.2.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %359, i64 0, i64 1, i64 0
  %366 = bitcast i8* %scevgep41.2.7 to [21 x [21 x i8]]*
  %call16.2.8 = call zeroext i8 (...) @rand()
  store i8 %call16.2.8, i8* %scevgep28.2.7, align 1
  %367 = load i8, i8* %scevgep28.2.7, align 1
  %conv23.2.8 = zext i8 %367 to i32
  %368 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.8 = getelementptr i8, i8* %b, i64 11
  %369 = load i8, i8* %scevgep34.2.8, align 1
  %call28.2.8 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369)
  %conv29.2.8 = zext i8 %call28.2.8 to i32
  %xor.2.8 = xor i32 %conv23.2.8, %conv29.2.8
  %scevgep35.2.8 = getelementptr i8, i8* %a, i64 11
  %370 = load i8, i8* %scevgep35.2.8, align 1
  %371 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.8 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371)
  %conv35.2.8 = zext i8 %call34.2.8 to i32
  %xor36.2.8 = xor i32 %xor.2.8, %conv35.2.8
  %conv37.2.8 = trunc i32 %xor36.2.8 to i8
  store i8 %conv37.2.8, i8* %scevgep41.2.7, align 1
  %scevgep28.2.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %365, i64 0, i64 0, i64 1
  %372 = bitcast i8* %scevgep28.2.8 to [21 x [21 x i8]]*
  %scevgep41.2.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %366, i64 0, i64 1, i64 0
  %373 = bitcast i8* %scevgep41.2.8 to [21 x [21 x i8]]*
  %call16.2.9 = call zeroext i8 (...) @rand()
  store i8 %call16.2.9, i8* %scevgep28.2.8, align 1
  %374 = load i8, i8* %scevgep28.2.8, align 1
  %conv23.2.9 = zext i8 %374 to i32
  %375 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.9 = getelementptr i8, i8* %b, i64 12
  %376 = load i8, i8* %scevgep34.2.9, align 1
  %call28.2.9 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376)
  %conv29.2.9 = zext i8 %call28.2.9 to i32
  %xor.2.9 = xor i32 %conv23.2.9, %conv29.2.9
  %scevgep35.2.9 = getelementptr i8, i8* %a, i64 12
  %377 = load i8, i8* %scevgep35.2.9, align 1
  %378 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.9 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378)
  %conv35.2.9 = zext i8 %call34.2.9 to i32
  %xor36.2.9 = xor i32 %xor.2.9, %conv35.2.9
  %conv37.2.9 = trunc i32 %xor36.2.9 to i8
  store i8 %conv37.2.9, i8* %scevgep41.2.8, align 1
  %scevgep28.2.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %372, i64 0, i64 0, i64 1
  %379 = bitcast i8* %scevgep28.2.9 to [21 x [21 x i8]]*
  %scevgep41.2.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %373, i64 0, i64 1, i64 0
  %380 = bitcast i8* %scevgep41.2.9 to [21 x [21 x i8]]*
  %call16.2.10 = call zeroext i8 (...) @rand()
  store i8 %call16.2.10, i8* %scevgep28.2.9, align 1
  %381 = load i8, i8* %scevgep28.2.9, align 1
  %conv23.2.10 = zext i8 %381 to i32
  %382 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.10 = getelementptr i8, i8* %b, i64 13
  %383 = load i8, i8* %scevgep34.2.10, align 1
  %call28.2.10 = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %383)
  %conv29.2.10 = zext i8 %call28.2.10 to i32
  %xor.2.10 = xor i32 %conv23.2.10, %conv29.2.10
  %scevgep35.2.10 = getelementptr i8, i8* %a, i64 13
  %384 = load i8, i8* %scevgep35.2.10, align 1
  %385 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.10 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %385)
  %conv35.2.10 = zext i8 %call34.2.10 to i32
  %xor36.2.10 = xor i32 %xor.2.10, %conv35.2.10
  %conv37.2.10 = trunc i32 %xor36.2.10 to i8
  store i8 %conv37.2.10, i8* %scevgep41.2.9, align 1
  %scevgep28.2.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %379, i64 0, i64 0, i64 1
  %386 = bitcast i8* %scevgep28.2.10 to [21 x [21 x i8]]*
  %scevgep41.2.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %380, i64 0, i64 1, i64 0
  %387 = bitcast i8* %scevgep41.2.10 to [21 x [21 x i8]]*
  %call16.2.11 = call zeroext i8 (...) @rand()
  store i8 %call16.2.11, i8* %scevgep28.2.10, align 1
  %388 = load i8, i8* %scevgep28.2.10, align 1
  %conv23.2.11 = zext i8 %388 to i32
  %389 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.11 = getelementptr i8, i8* %b, i64 14
  %390 = load i8, i8* %scevgep34.2.11, align 1
  %call28.2.11 = call zeroext i8 @mult(i8 zeroext %389, i8 zeroext %390)
  %conv29.2.11 = zext i8 %call28.2.11 to i32
  %xor.2.11 = xor i32 %conv23.2.11, %conv29.2.11
  %scevgep35.2.11 = getelementptr i8, i8* %a, i64 14
  %391 = load i8, i8* %scevgep35.2.11, align 1
  %392 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.11 = call zeroext i8 @mult(i8 zeroext %391, i8 zeroext %392)
  %conv35.2.11 = zext i8 %call34.2.11 to i32
  %xor36.2.11 = xor i32 %xor.2.11, %conv35.2.11
  %conv37.2.11 = trunc i32 %xor36.2.11 to i8
  store i8 %conv37.2.11, i8* %scevgep41.2.10, align 1
  %scevgep28.2.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %386, i64 0, i64 0, i64 1
  %393 = bitcast i8* %scevgep28.2.11 to [21 x [21 x i8]]*
  %scevgep41.2.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %387, i64 0, i64 1, i64 0
  %394 = bitcast i8* %scevgep41.2.11 to [21 x [21 x i8]]*
  %call16.2.12 = call zeroext i8 (...) @rand()
  store i8 %call16.2.12, i8* %scevgep28.2.11, align 1
  %395 = load i8, i8* %scevgep28.2.11, align 1
  %conv23.2.12 = zext i8 %395 to i32
  %396 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.12 = getelementptr i8, i8* %b, i64 15
  %397 = load i8, i8* %scevgep34.2.12, align 1
  %call28.2.12 = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %397)
  %conv29.2.12 = zext i8 %call28.2.12 to i32
  %xor.2.12 = xor i32 %conv23.2.12, %conv29.2.12
  %scevgep35.2.12 = getelementptr i8, i8* %a, i64 15
  %398 = load i8, i8* %scevgep35.2.12, align 1
  %399 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.12 = call zeroext i8 @mult(i8 zeroext %398, i8 zeroext %399)
  %conv35.2.12 = zext i8 %call34.2.12 to i32
  %xor36.2.12 = xor i32 %xor.2.12, %conv35.2.12
  %conv37.2.12 = trunc i32 %xor36.2.12 to i8
  store i8 %conv37.2.12, i8* %scevgep41.2.11, align 1
  %scevgep28.2.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %393, i64 0, i64 0, i64 1
  %400 = bitcast i8* %scevgep28.2.12 to [21 x [21 x i8]]*
  %scevgep41.2.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %394, i64 0, i64 1, i64 0
  %401 = bitcast i8* %scevgep41.2.12 to [21 x [21 x i8]]*
  %call16.2.13 = call zeroext i8 (...) @rand()
  store i8 %call16.2.13, i8* %scevgep28.2.12, align 1
  %402 = load i8, i8* %scevgep28.2.12, align 1
  %conv23.2.13 = zext i8 %402 to i32
  %403 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.13 = getelementptr i8, i8* %b, i64 16
  %404 = load i8, i8* %scevgep34.2.13, align 1
  %call28.2.13 = call zeroext i8 @mult(i8 zeroext %403, i8 zeroext %404)
  %conv29.2.13 = zext i8 %call28.2.13 to i32
  %xor.2.13 = xor i32 %conv23.2.13, %conv29.2.13
  %scevgep35.2.13 = getelementptr i8, i8* %a, i64 16
  %405 = load i8, i8* %scevgep35.2.13, align 1
  %406 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.13 = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406)
  %conv35.2.13 = zext i8 %call34.2.13 to i32
  %xor36.2.13 = xor i32 %xor.2.13, %conv35.2.13
  %conv37.2.13 = trunc i32 %xor36.2.13 to i8
  store i8 %conv37.2.13, i8* %scevgep41.2.12, align 1
  %scevgep28.2.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %400, i64 0, i64 0, i64 1
  %407 = bitcast i8* %scevgep28.2.13 to [21 x [21 x i8]]*
  %scevgep41.2.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %401, i64 0, i64 1, i64 0
  %408 = bitcast i8* %scevgep41.2.13 to [21 x [21 x i8]]*
  %call16.2.14 = call zeroext i8 (...) @rand()
  store i8 %call16.2.14, i8* %scevgep28.2.13, align 1
  %409 = load i8, i8* %scevgep28.2.13, align 1
  %conv23.2.14 = zext i8 %409 to i32
  %410 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.14 = getelementptr i8, i8* %b, i64 17
  %411 = load i8, i8* %scevgep34.2.14, align 1
  %call28.2.14 = call zeroext i8 @mult(i8 zeroext %410, i8 zeroext %411)
  %conv29.2.14 = zext i8 %call28.2.14 to i32
  %xor.2.14 = xor i32 %conv23.2.14, %conv29.2.14
  %scevgep35.2.14 = getelementptr i8, i8* %a, i64 17
  %412 = load i8, i8* %scevgep35.2.14, align 1
  %413 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.14 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413)
  %conv35.2.14 = zext i8 %call34.2.14 to i32
  %xor36.2.14 = xor i32 %xor.2.14, %conv35.2.14
  %conv37.2.14 = trunc i32 %xor36.2.14 to i8
  store i8 %conv37.2.14, i8* %scevgep41.2.13, align 1
  %scevgep28.2.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %407, i64 0, i64 0, i64 1
  %414 = bitcast i8* %scevgep28.2.14 to [21 x [21 x i8]]*
  %scevgep41.2.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %408, i64 0, i64 1, i64 0
  %415 = bitcast i8* %scevgep41.2.14 to [21 x [21 x i8]]*
  %call16.2.15 = call zeroext i8 (...) @rand()
  store i8 %call16.2.15, i8* %scevgep28.2.14, align 1
  %416 = load i8, i8* %scevgep28.2.14, align 1
  %conv23.2.15 = zext i8 %416 to i32
  %417 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.15 = getelementptr i8, i8* %b, i64 18
  %418 = load i8, i8* %scevgep34.2.15, align 1
  %call28.2.15 = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418)
  %conv29.2.15 = zext i8 %call28.2.15 to i32
  %xor.2.15 = xor i32 %conv23.2.15, %conv29.2.15
  %scevgep35.2.15 = getelementptr i8, i8* %a, i64 18
  %419 = load i8, i8* %scevgep35.2.15, align 1
  %420 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.15 = call zeroext i8 @mult(i8 zeroext %419, i8 zeroext %420)
  %conv35.2.15 = zext i8 %call34.2.15 to i32
  %xor36.2.15 = xor i32 %xor.2.15, %conv35.2.15
  %conv37.2.15 = trunc i32 %xor36.2.15 to i8
  store i8 %conv37.2.15, i8* %scevgep41.2.14, align 1
  %scevgep28.2.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %414, i64 0, i64 0, i64 1
  %421 = bitcast i8* %scevgep28.2.15 to [21 x [21 x i8]]*
  %scevgep41.2.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %415, i64 0, i64 1, i64 0
  %422 = bitcast i8* %scevgep41.2.15 to [21 x [21 x i8]]*
  %call16.2.16 = call zeroext i8 (...) @rand()
  store i8 %call16.2.16, i8* %scevgep28.2.15, align 1
  %423 = load i8, i8* %scevgep28.2.15, align 1
  %conv23.2.16 = zext i8 %423 to i32
  %424 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.16 = getelementptr i8, i8* %b, i64 19
  %425 = load i8, i8* %scevgep34.2.16, align 1
  %call28.2.16 = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425)
  %conv29.2.16 = zext i8 %call28.2.16 to i32
  %xor.2.16 = xor i32 %conv23.2.16, %conv29.2.16
  %scevgep35.2.16 = getelementptr i8, i8* %a, i64 19
  %426 = load i8, i8* %scevgep35.2.16, align 1
  %427 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.16 = call zeroext i8 @mult(i8 zeroext %426, i8 zeroext %427)
  %conv35.2.16 = zext i8 %call34.2.16 to i32
  %xor36.2.16 = xor i32 %xor.2.16, %conv35.2.16
  %conv37.2.16 = trunc i32 %xor36.2.16 to i8
  store i8 %conv37.2.16, i8* %scevgep41.2.15, align 1
  %scevgep28.2.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %421, i64 0, i64 0, i64 1
  %scevgep41.2.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %422, i64 0, i64 1, i64 0
  %call16.2.17 = call zeroext i8 (...) @rand()
  store i8 %call16.2.17, i8* %scevgep28.2.16, align 1
  %428 = load i8, i8* %scevgep28.2.16, align 1
  %conv23.2.17 = zext i8 %428 to i32
  %429 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.17 = getelementptr i8, i8* %b, i64 20
  %430 = load i8, i8* %scevgep34.2.17, align 1
  %call28.2.17 = call zeroext i8 @mult(i8 zeroext %429, i8 zeroext %430)
  %conv29.2.17 = zext i8 %call28.2.17 to i32
  %xor.2.17 = xor i32 %conv23.2.17, %conv29.2.17
  %scevgep35.2.17 = getelementptr i8, i8* %a, i64 20
  %431 = load i8, i8* %scevgep35.2.17, align 1
  %432 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.17 = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432)
  %conv35.2.17 = zext i8 %call34.2.17 to i32
  %xor36.2.17 = xor i32 %xor.2.17, %conv35.2.17
  %conv37.2.17 = trunc i32 %xor36.2.17 to i8
  store i8 %conv37.2.17, i8* %scevgep41.2.16, align 1
  %scevgep26.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %309, i64 0, i64 1, i64 1
  %433 = bitcast i8* %scevgep26.2 to [21 x [21 x i8]]*
  %scevgep39.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %310, i64 0, i64 1, i64 1
  %434 = bitcast i8* %scevgep39.2 to [21 x [21 x i8]]*
  %arrayidx25.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep26.2, align 1
  %435 = load i8, i8* %scevgep26.2, align 1
  %conv23.3 = zext i8 %435 to i32
  %436 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3 = getelementptr i8, i8* %b, i64 4
  %437 = load i8, i8* %scevgep34.3, align 1
  %call28.3 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437)
  %conv29.3 = zext i8 %call28.3 to i32
  %xor.3 = xor i32 %conv23.3, %conv29.3
  %scevgep35.3 = getelementptr i8, i8* %a, i64 4
  %438 = load i8, i8* %scevgep35.3, align 1
  %439 = load i8, i8* %arrayidx33.3, align 1
  %call34.3 = call zeroext i8 @mult(i8 zeroext %438, i8 zeroext %439)
  %conv35.3 = zext i8 %call34.3 to i32
  %xor36.3 = xor i32 %xor.3, %conv35.3
  %conv37.3 = trunc i32 %xor36.3 to i8
  store i8 %conv37.3, i8* %scevgep39.2, align 1
  %scevgep28.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %433, i64 0, i64 0, i64 1
  %440 = bitcast i8* %scevgep28.3 to [21 x [21 x i8]]*
  %scevgep41.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %434, i64 0, i64 1, i64 0
  %441 = bitcast i8* %scevgep41.3 to [21 x [21 x i8]]*
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep28.3, align 1
  %442 = load i8, i8* %scevgep28.3, align 1
  %conv23.3.1 = zext i8 %442 to i32
  %443 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.1 = getelementptr i8, i8* %b, i64 5
  %444 = load i8, i8* %scevgep34.3.1, align 1
  %call28.3.1 = call zeroext i8 @mult(i8 zeroext %443, i8 zeroext %444)
  %conv29.3.1 = zext i8 %call28.3.1 to i32
  %xor.3.1 = xor i32 %conv23.3.1, %conv29.3.1
  %scevgep35.3.1 = getelementptr i8, i8* %a, i64 5
  %445 = load i8, i8* %scevgep35.3.1, align 1
  %446 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.1 = call zeroext i8 @mult(i8 zeroext %445, i8 zeroext %446)
  %conv35.3.1 = zext i8 %call34.3.1 to i32
  %xor36.3.1 = xor i32 %xor.3.1, %conv35.3.1
  %conv37.3.1 = trunc i32 %xor36.3.1 to i8
  store i8 %conv37.3.1, i8* %scevgep41.3, align 1
  %scevgep28.3.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %440, i64 0, i64 0, i64 1
  %447 = bitcast i8* %scevgep28.3.1 to [21 x [21 x i8]]*
  %scevgep41.3.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %441, i64 0, i64 1, i64 0
  %448 = bitcast i8* %scevgep41.3.1 to [21 x [21 x i8]]*
  %call16.3.2 = call zeroext i8 (...) @rand()
  store i8 %call16.3.2, i8* %scevgep28.3.1, align 1
  %449 = load i8, i8* %scevgep28.3.1, align 1
  %conv23.3.2 = zext i8 %449 to i32
  %450 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.2 = getelementptr i8, i8* %b, i64 6
  %451 = load i8, i8* %scevgep34.3.2, align 1
  %call28.3.2 = call zeroext i8 @mult(i8 zeroext %450, i8 zeroext %451)
  %conv29.3.2 = zext i8 %call28.3.2 to i32
  %xor.3.2 = xor i32 %conv23.3.2, %conv29.3.2
  %scevgep35.3.2 = getelementptr i8, i8* %a, i64 6
  %452 = load i8, i8* %scevgep35.3.2, align 1
  %453 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.2 = call zeroext i8 @mult(i8 zeroext %452, i8 zeroext %453)
  %conv35.3.2 = zext i8 %call34.3.2 to i32
  %xor36.3.2 = xor i32 %xor.3.2, %conv35.3.2
  %conv37.3.2 = trunc i32 %xor36.3.2 to i8
  store i8 %conv37.3.2, i8* %scevgep41.3.1, align 1
  %scevgep28.3.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %447, i64 0, i64 0, i64 1
  %454 = bitcast i8* %scevgep28.3.2 to [21 x [21 x i8]]*
  %scevgep41.3.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %448, i64 0, i64 1, i64 0
  %455 = bitcast i8* %scevgep41.3.2 to [21 x [21 x i8]]*
  %call16.3.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3.3, i8* %scevgep28.3.2, align 1
  %456 = load i8, i8* %scevgep28.3.2, align 1
  %conv23.3.3 = zext i8 %456 to i32
  %457 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.3 = getelementptr i8, i8* %b, i64 7
  %458 = load i8, i8* %scevgep34.3.3, align 1
  %call28.3.3 = call zeroext i8 @mult(i8 zeroext %457, i8 zeroext %458)
  %conv29.3.3 = zext i8 %call28.3.3 to i32
  %xor.3.3 = xor i32 %conv23.3.3, %conv29.3.3
  %scevgep35.3.3 = getelementptr i8, i8* %a, i64 7
  %459 = load i8, i8* %scevgep35.3.3, align 1
  %460 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.3 = call zeroext i8 @mult(i8 zeroext %459, i8 zeroext %460)
  %conv35.3.3 = zext i8 %call34.3.3 to i32
  %xor36.3.3 = xor i32 %xor.3.3, %conv35.3.3
  %conv37.3.3 = trunc i32 %xor36.3.3 to i8
  store i8 %conv37.3.3, i8* %scevgep41.3.2, align 1
  %scevgep28.3.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %454, i64 0, i64 0, i64 1
  %461 = bitcast i8* %scevgep28.3.3 to [21 x [21 x i8]]*
  %scevgep41.3.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %455, i64 0, i64 1, i64 0
  %462 = bitcast i8* %scevgep41.3.3 to [21 x [21 x i8]]*
  %call16.3.4 = call zeroext i8 (...) @rand()
  store i8 %call16.3.4, i8* %scevgep28.3.3, align 1
  %463 = load i8, i8* %scevgep28.3.3, align 1
  %conv23.3.4 = zext i8 %463 to i32
  %464 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.4 = getelementptr i8, i8* %b, i64 8
  %465 = load i8, i8* %scevgep34.3.4, align 1
  %call28.3.4 = call zeroext i8 @mult(i8 zeroext %464, i8 zeroext %465)
  %conv29.3.4 = zext i8 %call28.3.4 to i32
  %xor.3.4 = xor i32 %conv23.3.4, %conv29.3.4
  %scevgep35.3.4 = getelementptr i8, i8* %a, i64 8
  %466 = load i8, i8* %scevgep35.3.4, align 1
  %467 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.4 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467)
  %conv35.3.4 = zext i8 %call34.3.4 to i32
  %xor36.3.4 = xor i32 %xor.3.4, %conv35.3.4
  %conv37.3.4 = trunc i32 %xor36.3.4 to i8
  store i8 %conv37.3.4, i8* %scevgep41.3.3, align 1
  %scevgep28.3.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %461, i64 0, i64 0, i64 1
  %468 = bitcast i8* %scevgep28.3.4 to [21 x [21 x i8]]*
  %scevgep41.3.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %462, i64 0, i64 1, i64 0
  %469 = bitcast i8* %scevgep41.3.4 to [21 x [21 x i8]]*
  %call16.3.5 = call zeroext i8 (...) @rand()
  store i8 %call16.3.5, i8* %scevgep28.3.4, align 1
  %470 = load i8, i8* %scevgep28.3.4, align 1
  %conv23.3.5 = zext i8 %470 to i32
  %471 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.5 = getelementptr i8, i8* %b, i64 9
  %472 = load i8, i8* %scevgep34.3.5, align 1
  %call28.3.5 = call zeroext i8 @mult(i8 zeroext %471, i8 zeroext %472)
  %conv29.3.5 = zext i8 %call28.3.5 to i32
  %xor.3.5 = xor i32 %conv23.3.5, %conv29.3.5
  %scevgep35.3.5 = getelementptr i8, i8* %a, i64 9
  %473 = load i8, i8* %scevgep35.3.5, align 1
  %474 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.5 = call zeroext i8 @mult(i8 zeroext %473, i8 zeroext %474)
  %conv35.3.5 = zext i8 %call34.3.5 to i32
  %xor36.3.5 = xor i32 %xor.3.5, %conv35.3.5
  %conv37.3.5 = trunc i32 %xor36.3.5 to i8
  store i8 %conv37.3.5, i8* %scevgep41.3.4, align 1
  %scevgep28.3.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %468, i64 0, i64 0, i64 1
  %475 = bitcast i8* %scevgep28.3.5 to [21 x [21 x i8]]*
  %scevgep41.3.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %469, i64 0, i64 1, i64 0
  %476 = bitcast i8* %scevgep41.3.5 to [21 x [21 x i8]]*
  %call16.3.6 = call zeroext i8 (...) @rand()
  store i8 %call16.3.6, i8* %scevgep28.3.5, align 1
  %477 = load i8, i8* %scevgep28.3.5, align 1
  %conv23.3.6 = zext i8 %477 to i32
  %478 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.6 = getelementptr i8, i8* %b, i64 10
  %479 = load i8, i8* %scevgep34.3.6, align 1
  %call28.3.6 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479)
  %conv29.3.6 = zext i8 %call28.3.6 to i32
  %xor.3.6 = xor i32 %conv23.3.6, %conv29.3.6
  %scevgep35.3.6 = getelementptr i8, i8* %a, i64 10
  %480 = load i8, i8* %scevgep35.3.6, align 1
  %481 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.6 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481)
  %conv35.3.6 = zext i8 %call34.3.6 to i32
  %xor36.3.6 = xor i32 %xor.3.6, %conv35.3.6
  %conv37.3.6 = trunc i32 %xor36.3.6 to i8
  store i8 %conv37.3.6, i8* %scevgep41.3.5, align 1
  %scevgep28.3.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %475, i64 0, i64 0, i64 1
  %482 = bitcast i8* %scevgep28.3.6 to [21 x [21 x i8]]*
  %scevgep41.3.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %476, i64 0, i64 1, i64 0
  %483 = bitcast i8* %scevgep41.3.6 to [21 x [21 x i8]]*
  %call16.3.7 = call zeroext i8 (...) @rand()
  store i8 %call16.3.7, i8* %scevgep28.3.6, align 1
  %484 = load i8, i8* %scevgep28.3.6, align 1
  %conv23.3.7 = zext i8 %484 to i32
  %485 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.7 = getelementptr i8, i8* %b, i64 11
  %486 = load i8, i8* %scevgep34.3.7, align 1
  %call28.3.7 = call zeroext i8 @mult(i8 zeroext %485, i8 zeroext %486)
  %conv29.3.7 = zext i8 %call28.3.7 to i32
  %xor.3.7 = xor i32 %conv23.3.7, %conv29.3.7
  %scevgep35.3.7 = getelementptr i8, i8* %a, i64 11
  %487 = load i8, i8* %scevgep35.3.7, align 1
  %488 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.7 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488)
  %conv35.3.7 = zext i8 %call34.3.7 to i32
  %xor36.3.7 = xor i32 %xor.3.7, %conv35.3.7
  %conv37.3.7 = trunc i32 %xor36.3.7 to i8
  store i8 %conv37.3.7, i8* %scevgep41.3.6, align 1
  %scevgep28.3.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %482, i64 0, i64 0, i64 1
  %489 = bitcast i8* %scevgep28.3.7 to [21 x [21 x i8]]*
  %scevgep41.3.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %483, i64 0, i64 1, i64 0
  %490 = bitcast i8* %scevgep41.3.7 to [21 x [21 x i8]]*
  %call16.3.8 = call zeroext i8 (...) @rand()
  store i8 %call16.3.8, i8* %scevgep28.3.7, align 1
  %491 = load i8, i8* %scevgep28.3.7, align 1
  %conv23.3.8 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.8 = getelementptr i8, i8* %b, i64 12
  %493 = load i8, i8* %scevgep34.3.8, align 1
  %call28.3.8 = call zeroext i8 @mult(i8 zeroext %492, i8 zeroext %493)
  %conv29.3.8 = zext i8 %call28.3.8 to i32
  %xor.3.8 = xor i32 %conv23.3.8, %conv29.3.8
  %scevgep35.3.8 = getelementptr i8, i8* %a, i64 12
  %494 = load i8, i8* %scevgep35.3.8, align 1
  %495 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.8 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495)
  %conv35.3.8 = zext i8 %call34.3.8 to i32
  %xor36.3.8 = xor i32 %xor.3.8, %conv35.3.8
  %conv37.3.8 = trunc i32 %xor36.3.8 to i8
  store i8 %conv37.3.8, i8* %scevgep41.3.7, align 1
  %scevgep28.3.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %489, i64 0, i64 0, i64 1
  %496 = bitcast i8* %scevgep28.3.8 to [21 x [21 x i8]]*
  %scevgep41.3.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %490, i64 0, i64 1, i64 0
  %497 = bitcast i8* %scevgep41.3.8 to [21 x [21 x i8]]*
  %call16.3.9 = call zeroext i8 (...) @rand()
  store i8 %call16.3.9, i8* %scevgep28.3.8, align 1
  %498 = load i8, i8* %scevgep28.3.8, align 1
  %conv23.3.9 = zext i8 %498 to i32
  %499 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.9 = getelementptr i8, i8* %b, i64 13
  %500 = load i8, i8* %scevgep34.3.9, align 1
  %call28.3.9 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500)
  %conv29.3.9 = zext i8 %call28.3.9 to i32
  %xor.3.9 = xor i32 %conv23.3.9, %conv29.3.9
  %scevgep35.3.9 = getelementptr i8, i8* %a, i64 13
  %501 = load i8, i8* %scevgep35.3.9, align 1
  %502 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.9 = call zeroext i8 @mult(i8 zeroext %501, i8 zeroext %502)
  %conv35.3.9 = zext i8 %call34.3.9 to i32
  %xor36.3.9 = xor i32 %xor.3.9, %conv35.3.9
  %conv37.3.9 = trunc i32 %xor36.3.9 to i8
  store i8 %conv37.3.9, i8* %scevgep41.3.8, align 1
  %scevgep28.3.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %496, i64 0, i64 0, i64 1
  %503 = bitcast i8* %scevgep28.3.9 to [21 x [21 x i8]]*
  %scevgep41.3.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %497, i64 0, i64 1, i64 0
  %504 = bitcast i8* %scevgep41.3.9 to [21 x [21 x i8]]*
  %call16.3.10 = call zeroext i8 (...) @rand()
  store i8 %call16.3.10, i8* %scevgep28.3.9, align 1
  %505 = load i8, i8* %scevgep28.3.9, align 1
  %conv23.3.10 = zext i8 %505 to i32
  %506 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.10 = getelementptr i8, i8* %b, i64 14
  %507 = load i8, i8* %scevgep34.3.10, align 1
  %call28.3.10 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507)
  %conv29.3.10 = zext i8 %call28.3.10 to i32
  %xor.3.10 = xor i32 %conv23.3.10, %conv29.3.10
  %scevgep35.3.10 = getelementptr i8, i8* %a, i64 14
  %508 = load i8, i8* %scevgep35.3.10, align 1
  %509 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.10 = call zeroext i8 @mult(i8 zeroext %508, i8 zeroext %509)
  %conv35.3.10 = zext i8 %call34.3.10 to i32
  %xor36.3.10 = xor i32 %xor.3.10, %conv35.3.10
  %conv37.3.10 = trunc i32 %xor36.3.10 to i8
  store i8 %conv37.3.10, i8* %scevgep41.3.9, align 1
  %scevgep28.3.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %503, i64 0, i64 0, i64 1
  %510 = bitcast i8* %scevgep28.3.10 to [21 x [21 x i8]]*
  %scevgep41.3.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %504, i64 0, i64 1, i64 0
  %511 = bitcast i8* %scevgep41.3.10 to [21 x [21 x i8]]*
  %call16.3.11 = call zeroext i8 (...) @rand()
  store i8 %call16.3.11, i8* %scevgep28.3.10, align 1
  %512 = load i8, i8* %scevgep28.3.10, align 1
  %conv23.3.11 = zext i8 %512 to i32
  %513 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.11 = getelementptr i8, i8* %b, i64 15
  %514 = load i8, i8* %scevgep34.3.11, align 1
  %call28.3.11 = call zeroext i8 @mult(i8 zeroext %513, i8 zeroext %514)
  %conv29.3.11 = zext i8 %call28.3.11 to i32
  %xor.3.11 = xor i32 %conv23.3.11, %conv29.3.11
  %scevgep35.3.11 = getelementptr i8, i8* %a, i64 15
  %515 = load i8, i8* %scevgep35.3.11, align 1
  %516 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.11 = call zeroext i8 @mult(i8 zeroext %515, i8 zeroext %516)
  %conv35.3.11 = zext i8 %call34.3.11 to i32
  %xor36.3.11 = xor i32 %xor.3.11, %conv35.3.11
  %conv37.3.11 = trunc i32 %xor36.3.11 to i8
  store i8 %conv37.3.11, i8* %scevgep41.3.10, align 1
  %scevgep28.3.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %510, i64 0, i64 0, i64 1
  %517 = bitcast i8* %scevgep28.3.11 to [21 x [21 x i8]]*
  %scevgep41.3.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %511, i64 0, i64 1, i64 0
  %518 = bitcast i8* %scevgep41.3.11 to [21 x [21 x i8]]*
  %call16.3.12 = call zeroext i8 (...) @rand()
  store i8 %call16.3.12, i8* %scevgep28.3.11, align 1
  %519 = load i8, i8* %scevgep28.3.11, align 1
  %conv23.3.12 = zext i8 %519 to i32
  %520 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.12 = getelementptr i8, i8* %b, i64 16
  %521 = load i8, i8* %scevgep34.3.12, align 1
  %call28.3.12 = call zeroext i8 @mult(i8 zeroext %520, i8 zeroext %521)
  %conv29.3.12 = zext i8 %call28.3.12 to i32
  %xor.3.12 = xor i32 %conv23.3.12, %conv29.3.12
  %scevgep35.3.12 = getelementptr i8, i8* %a, i64 16
  %522 = load i8, i8* %scevgep35.3.12, align 1
  %523 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.12 = call zeroext i8 @mult(i8 zeroext %522, i8 zeroext %523)
  %conv35.3.12 = zext i8 %call34.3.12 to i32
  %xor36.3.12 = xor i32 %xor.3.12, %conv35.3.12
  %conv37.3.12 = trunc i32 %xor36.3.12 to i8
  store i8 %conv37.3.12, i8* %scevgep41.3.11, align 1
  %scevgep28.3.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %517, i64 0, i64 0, i64 1
  %524 = bitcast i8* %scevgep28.3.12 to [21 x [21 x i8]]*
  %scevgep41.3.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %518, i64 0, i64 1, i64 0
  %525 = bitcast i8* %scevgep41.3.12 to [21 x [21 x i8]]*
  %call16.3.13 = call zeroext i8 (...) @rand()
  store i8 %call16.3.13, i8* %scevgep28.3.12, align 1
  %526 = load i8, i8* %scevgep28.3.12, align 1
  %conv23.3.13 = zext i8 %526 to i32
  %527 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.13 = getelementptr i8, i8* %b, i64 17
  %528 = load i8, i8* %scevgep34.3.13, align 1
  %call28.3.13 = call zeroext i8 @mult(i8 zeroext %527, i8 zeroext %528)
  %conv29.3.13 = zext i8 %call28.3.13 to i32
  %xor.3.13 = xor i32 %conv23.3.13, %conv29.3.13
  %scevgep35.3.13 = getelementptr i8, i8* %a, i64 17
  %529 = load i8, i8* %scevgep35.3.13, align 1
  %530 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.13 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530)
  %conv35.3.13 = zext i8 %call34.3.13 to i32
  %xor36.3.13 = xor i32 %xor.3.13, %conv35.3.13
  %conv37.3.13 = trunc i32 %xor36.3.13 to i8
  store i8 %conv37.3.13, i8* %scevgep41.3.12, align 1
  %scevgep28.3.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %524, i64 0, i64 0, i64 1
  %531 = bitcast i8* %scevgep28.3.13 to [21 x [21 x i8]]*
  %scevgep41.3.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %525, i64 0, i64 1, i64 0
  %532 = bitcast i8* %scevgep41.3.13 to [21 x [21 x i8]]*
  %call16.3.14 = call zeroext i8 (...) @rand()
  store i8 %call16.3.14, i8* %scevgep28.3.13, align 1
  %533 = load i8, i8* %scevgep28.3.13, align 1
  %conv23.3.14 = zext i8 %533 to i32
  %534 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.14 = getelementptr i8, i8* %b, i64 18
  %535 = load i8, i8* %scevgep34.3.14, align 1
  %call28.3.14 = call zeroext i8 @mult(i8 zeroext %534, i8 zeroext %535)
  %conv29.3.14 = zext i8 %call28.3.14 to i32
  %xor.3.14 = xor i32 %conv23.3.14, %conv29.3.14
  %scevgep35.3.14 = getelementptr i8, i8* %a, i64 18
  %536 = load i8, i8* %scevgep35.3.14, align 1
  %537 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.14 = call zeroext i8 @mult(i8 zeroext %536, i8 zeroext %537)
  %conv35.3.14 = zext i8 %call34.3.14 to i32
  %xor36.3.14 = xor i32 %xor.3.14, %conv35.3.14
  %conv37.3.14 = trunc i32 %xor36.3.14 to i8
  store i8 %conv37.3.14, i8* %scevgep41.3.13, align 1
  %scevgep28.3.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %531, i64 0, i64 0, i64 1
  %538 = bitcast i8* %scevgep28.3.14 to [21 x [21 x i8]]*
  %scevgep41.3.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %532, i64 0, i64 1, i64 0
  %539 = bitcast i8* %scevgep41.3.14 to [21 x [21 x i8]]*
  %call16.3.15 = call zeroext i8 (...) @rand()
  store i8 %call16.3.15, i8* %scevgep28.3.14, align 1
  %540 = load i8, i8* %scevgep28.3.14, align 1
  %conv23.3.15 = zext i8 %540 to i32
  %541 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.15 = getelementptr i8, i8* %b, i64 19
  %542 = load i8, i8* %scevgep34.3.15, align 1
  %call28.3.15 = call zeroext i8 @mult(i8 zeroext %541, i8 zeroext %542)
  %conv29.3.15 = zext i8 %call28.3.15 to i32
  %xor.3.15 = xor i32 %conv23.3.15, %conv29.3.15
  %scevgep35.3.15 = getelementptr i8, i8* %a, i64 19
  %543 = load i8, i8* %scevgep35.3.15, align 1
  %544 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.15 = call zeroext i8 @mult(i8 zeroext %543, i8 zeroext %544)
  %conv35.3.15 = zext i8 %call34.3.15 to i32
  %xor36.3.15 = xor i32 %xor.3.15, %conv35.3.15
  %conv37.3.15 = trunc i32 %xor36.3.15 to i8
  store i8 %conv37.3.15, i8* %scevgep41.3.14, align 1
  %scevgep28.3.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %538, i64 0, i64 0, i64 1
  %scevgep41.3.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %539, i64 0, i64 1, i64 0
  %call16.3.16 = call zeroext i8 (...) @rand()
  store i8 %call16.3.16, i8* %scevgep28.3.15, align 1
  %545 = load i8, i8* %scevgep28.3.15, align 1
  %conv23.3.16 = zext i8 %545 to i32
  %546 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.16 = getelementptr i8, i8* %b, i64 20
  %547 = load i8, i8* %scevgep34.3.16, align 1
  %call28.3.16 = call zeroext i8 @mult(i8 zeroext %546, i8 zeroext %547)
  %conv29.3.16 = zext i8 %call28.3.16 to i32
  %xor.3.16 = xor i32 %conv23.3.16, %conv29.3.16
  %scevgep35.3.16 = getelementptr i8, i8* %a, i64 20
  %548 = load i8, i8* %scevgep35.3.16, align 1
  %549 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.16 = call zeroext i8 @mult(i8 zeroext %548, i8 zeroext %549)
  %conv35.3.16 = zext i8 %call34.3.16 to i32
  %xor36.3.16 = xor i32 %xor.3.16, %conv35.3.16
  %conv37.3.16 = trunc i32 %xor36.3.16 to i8
  store i8 %conv37.3.16, i8* %scevgep41.3.15, align 1
  %scevgep26.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %433, i64 0, i64 1, i64 1
  %550 = bitcast i8* %scevgep26.3 to [21 x [21 x i8]]*
  %scevgep39.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %434, i64 0, i64 1, i64 1
  %551 = bitcast i8* %scevgep39.3 to [21 x [21 x i8]]*
  %arrayidx25.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx33.4 = getelementptr inbounds i8, i8* %b, i64 4
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep26.3, align 1
  %552 = load i8, i8* %scevgep26.3, align 1
  %conv23.4 = zext i8 %552 to i32
  %553 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4 = getelementptr i8, i8* %b, i64 5
  %554 = load i8, i8* %scevgep34.4, align 1
  %call28.4 = call zeroext i8 @mult(i8 zeroext %553, i8 zeroext %554)
  %conv29.4 = zext i8 %call28.4 to i32
  %xor.4 = xor i32 %conv23.4, %conv29.4
  %scevgep35.4 = getelementptr i8, i8* %a, i64 5
  %555 = load i8, i8* %scevgep35.4, align 1
  %556 = load i8, i8* %arrayidx33.4, align 1
  %call34.4 = call zeroext i8 @mult(i8 zeroext %555, i8 zeroext %556)
  %conv35.4 = zext i8 %call34.4 to i32
  %xor36.4 = xor i32 %xor.4, %conv35.4
  %conv37.4 = trunc i32 %xor36.4 to i8
  store i8 %conv37.4, i8* %scevgep39.3, align 1
  %scevgep28.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %550, i64 0, i64 0, i64 1
  %557 = bitcast i8* %scevgep28.4 to [21 x [21 x i8]]*
  %scevgep41.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %551, i64 0, i64 1, i64 0
  %558 = bitcast i8* %scevgep41.4 to [21 x [21 x i8]]*
  %call16.4.1 = call zeroext i8 (...) @rand()
  store i8 %call16.4.1, i8* %scevgep28.4, align 1
  %559 = load i8, i8* %scevgep28.4, align 1
  %conv23.4.1 = zext i8 %559 to i32
  %560 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.1 = getelementptr i8, i8* %b, i64 6
  %561 = load i8, i8* %scevgep34.4.1, align 1
  %call28.4.1 = call zeroext i8 @mult(i8 zeroext %560, i8 zeroext %561)
  %conv29.4.1 = zext i8 %call28.4.1 to i32
  %xor.4.1 = xor i32 %conv23.4.1, %conv29.4.1
  %scevgep35.4.1 = getelementptr i8, i8* %a, i64 6
  %562 = load i8, i8* %scevgep35.4.1, align 1
  %563 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.1 = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563)
  %conv35.4.1 = zext i8 %call34.4.1 to i32
  %xor36.4.1 = xor i32 %xor.4.1, %conv35.4.1
  %conv37.4.1 = trunc i32 %xor36.4.1 to i8
  store i8 %conv37.4.1, i8* %scevgep41.4, align 1
  %scevgep28.4.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 1
  %564 = bitcast i8* %scevgep28.4.1 to [21 x [21 x i8]]*
  %scevgep41.4.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %558, i64 0, i64 1, i64 0
  %565 = bitcast i8* %scevgep41.4.1 to [21 x [21 x i8]]*
  %call16.4.2 = call zeroext i8 (...) @rand()
  store i8 %call16.4.2, i8* %scevgep28.4.1, align 1
  %566 = load i8, i8* %scevgep28.4.1, align 1
  %conv23.4.2 = zext i8 %566 to i32
  %567 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.2 = getelementptr i8, i8* %b, i64 7
  %568 = load i8, i8* %scevgep34.4.2, align 1
  %call28.4.2 = call zeroext i8 @mult(i8 zeroext %567, i8 zeroext %568)
  %conv29.4.2 = zext i8 %call28.4.2 to i32
  %xor.4.2 = xor i32 %conv23.4.2, %conv29.4.2
  %scevgep35.4.2 = getelementptr i8, i8* %a, i64 7
  %569 = load i8, i8* %scevgep35.4.2, align 1
  %570 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.2 = call zeroext i8 @mult(i8 zeroext %569, i8 zeroext %570)
  %conv35.4.2 = zext i8 %call34.4.2 to i32
  %xor36.4.2 = xor i32 %xor.4.2, %conv35.4.2
  %conv37.4.2 = trunc i32 %xor36.4.2 to i8
  store i8 %conv37.4.2, i8* %scevgep41.4.1, align 1
  %scevgep28.4.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %564, i64 0, i64 0, i64 1
  %571 = bitcast i8* %scevgep28.4.2 to [21 x [21 x i8]]*
  %scevgep41.4.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %565, i64 0, i64 1, i64 0
  %572 = bitcast i8* %scevgep41.4.2 to [21 x [21 x i8]]*
  %call16.4.3 = call zeroext i8 (...) @rand()
  store i8 %call16.4.3, i8* %scevgep28.4.2, align 1
  %573 = load i8, i8* %scevgep28.4.2, align 1
  %conv23.4.3 = zext i8 %573 to i32
  %574 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.3 = getelementptr i8, i8* %b, i64 8
  %575 = load i8, i8* %scevgep34.4.3, align 1
  %call28.4.3 = call zeroext i8 @mult(i8 zeroext %574, i8 zeroext %575)
  %conv29.4.3 = zext i8 %call28.4.3 to i32
  %xor.4.3 = xor i32 %conv23.4.3, %conv29.4.3
  %scevgep35.4.3 = getelementptr i8, i8* %a, i64 8
  %576 = load i8, i8* %scevgep35.4.3, align 1
  %577 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.3 = call zeroext i8 @mult(i8 zeroext %576, i8 zeroext %577)
  %conv35.4.3 = zext i8 %call34.4.3 to i32
  %xor36.4.3 = xor i32 %xor.4.3, %conv35.4.3
  %conv37.4.3 = trunc i32 %xor36.4.3 to i8
  store i8 %conv37.4.3, i8* %scevgep41.4.2, align 1
  %scevgep28.4.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %571, i64 0, i64 0, i64 1
  %578 = bitcast i8* %scevgep28.4.3 to [21 x [21 x i8]]*
  %scevgep41.4.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %572, i64 0, i64 1, i64 0
  %579 = bitcast i8* %scevgep41.4.3 to [21 x [21 x i8]]*
  %call16.4.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4.4, i8* %scevgep28.4.3, align 1
  %580 = load i8, i8* %scevgep28.4.3, align 1
  %conv23.4.4 = zext i8 %580 to i32
  %581 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.4 = getelementptr i8, i8* %b, i64 9
  %582 = load i8, i8* %scevgep34.4.4, align 1
  %call28.4.4 = call zeroext i8 @mult(i8 zeroext %581, i8 zeroext %582)
  %conv29.4.4 = zext i8 %call28.4.4 to i32
  %xor.4.4 = xor i32 %conv23.4.4, %conv29.4.4
  %scevgep35.4.4 = getelementptr i8, i8* %a, i64 9
  %583 = load i8, i8* %scevgep35.4.4, align 1
  %584 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.4 = call zeroext i8 @mult(i8 zeroext %583, i8 zeroext %584)
  %conv35.4.4 = zext i8 %call34.4.4 to i32
  %xor36.4.4 = xor i32 %xor.4.4, %conv35.4.4
  %conv37.4.4 = trunc i32 %xor36.4.4 to i8
  store i8 %conv37.4.4, i8* %scevgep41.4.3, align 1
  %scevgep28.4.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %578, i64 0, i64 0, i64 1
  %585 = bitcast i8* %scevgep28.4.4 to [21 x [21 x i8]]*
  %scevgep41.4.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %579, i64 0, i64 1, i64 0
  %586 = bitcast i8* %scevgep41.4.4 to [21 x [21 x i8]]*
  %call16.4.5 = call zeroext i8 (...) @rand()
  store i8 %call16.4.5, i8* %scevgep28.4.4, align 1
  %587 = load i8, i8* %scevgep28.4.4, align 1
  %conv23.4.5 = zext i8 %587 to i32
  %588 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.5 = getelementptr i8, i8* %b, i64 10
  %589 = load i8, i8* %scevgep34.4.5, align 1
  %call28.4.5 = call zeroext i8 @mult(i8 zeroext %588, i8 zeroext %589)
  %conv29.4.5 = zext i8 %call28.4.5 to i32
  %xor.4.5 = xor i32 %conv23.4.5, %conv29.4.5
  %scevgep35.4.5 = getelementptr i8, i8* %a, i64 10
  %590 = load i8, i8* %scevgep35.4.5, align 1
  %591 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.5 = call zeroext i8 @mult(i8 zeroext %590, i8 zeroext %591)
  %conv35.4.5 = zext i8 %call34.4.5 to i32
  %xor36.4.5 = xor i32 %xor.4.5, %conv35.4.5
  %conv37.4.5 = trunc i32 %xor36.4.5 to i8
  store i8 %conv37.4.5, i8* %scevgep41.4.4, align 1
  %scevgep28.4.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %585, i64 0, i64 0, i64 1
  %592 = bitcast i8* %scevgep28.4.5 to [21 x [21 x i8]]*
  %scevgep41.4.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %586, i64 0, i64 1, i64 0
  %593 = bitcast i8* %scevgep41.4.5 to [21 x [21 x i8]]*
  %call16.4.6 = call zeroext i8 (...) @rand()
  store i8 %call16.4.6, i8* %scevgep28.4.5, align 1
  %594 = load i8, i8* %scevgep28.4.5, align 1
  %conv23.4.6 = zext i8 %594 to i32
  %595 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.6 = getelementptr i8, i8* %b, i64 11
  %596 = load i8, i8* %scevgep34.4.6, align 1
  %call28.4.6 = call zeroext i8 @mult(i8 zeroext %595, i8 zeroext %596)
  %conv29.4.6 = zext i8 %call28.4.6 to i32
  %xor.4.6 = xor i32 %conv23.4.6, %conv29.4.6
  %scevgep35.4.6 = getelementptr i8, i8* %a, i64 11
  %597 = load i8, i8* %scevgep35.4.6, align 1
  %598 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.6 = call zeroext i8 @mult(i8 zeroext %597, i8 zeroext %598)
  %conv35.4.6 = zext i8 %call34.4.6 to i32
  %xor36.4.6 = xor i32 %xor.4.6, %conv35.4.6
  %conv37.4.6 = trunc i32 %xor36.4.6 to i8
  store i8 %conv37.4.6, i8* %scevgep41.4.5, align 1
  %scevgep28.4.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %592, i64 0, i64 0, i64 1
  %599 = bitcast i8* %scevgep28.4.6 to [21 x [21 x i8]]*
  %scevgep41.4.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %593, i64 0, i64 1, i64 0
  %600 = bitcast i8* %scevgep41.4.6 to [21 x [21 x i8]]*
  %call16.4.7 = call zeroext i8 (...) @rand()
  store i8 %call16.4.7, i8* %scevgep28.4.6, align 1
  %601 = load i8, i8* %scevgep28.4.6, align 1
  %conv23.4.7 = zext i8 %601 to i32
  %602 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.7 = getelementptr i8, i8* %b, i64 12
  %603 = load i8, i8* %scevgep34.4.7, align 1
  %call28.4.7 = call zeroext i8 @mult(i8 zeroext %602, i8 zeroext %603)
  %conv29.4.7 = zext i8 %call28.4.7 to i32
  %xor.4.7 = xor i32 %conv23.4.7, %conv29.4.7
  %scevgep35.4.7 = getelementptr i8, i8* %a, i64 12
  %604 = load i8, i8* %scevgep35.4.7, align 1
  %605 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.7 = call zeroext i8 @mult(i8 zeroext %604, i8 zeroext %605)
  %conv35.4.7 = zext i8 %call34.4.7 to i32
  %xor36.4.7 = xor i32 %xor.4.7, %conv35.4.7
  %conv37.4.7 = trunc i32 %xor36.4.7 to i8
  store i8 %conv37.4.7, i8* %scevgep41.4.6, align 1
  %scevgep28.4.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %599, i64 0, i64 0, i64 1
  %606 = bitcast i8* %scevgep28.4.7 to [21 x [21 x i8]]*
  %scevgep41.4.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 1, i64 0
  %607 = bitcast i8* %scevgep41.4.7 to [21 x [21 x i8]]*
  %call16.4.8 = call zeroext i8 (...) @rand()
  store i8 %call16.4.8, i8* %scevgep28.4.7, align 1
  %608 = load i8, i8* %scevgep28.4.7, align 1
  %conv23.4.8 = zext i8 %608 to i32
  %609 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.8 = getelementptr i8, i8* %b, i64 13
  %610 = load i8, i8* %scevgep34.4.8, align 1
  %call28.4.8 = call zeroext i8 @mult(i8 zeroext %609, i8 zeroext %610)
  %conv29.4.8 = zext i8 %call28.4.8 to i32
  %xor.4.8 = xor i32 %conv23.4.8, %conv29.4.8
  %scevgep35.4.8 = getelementptr i8, i8* %a, i64 13
  %611 = load i8, i8* %scevgep35.4.8, align 1
  %612 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.8 = call zeroext i8 @mult(i8 zeroext %611, i8 zeroext %612)
  %conv35.4.8 = zext i8 %call34.4.8 to i32
  %xor36.4.8 = xor i32 %xor.4.8, %conv35.4.8
  %conv37.4.8 = trunc i32 %xor36.4.8 to i8
  store i8 %conv37.4.8, i8* %scevgep41.4.7, align 1
  %scevgep28.4.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %606, i64 0, i64 0, i64 1
  %613 = bitcast i8* %scevgep28.4.8 to [21 x [21 x i8]]*
  %scevgep41.4.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %607, i64 0, i64 1, i64 0
  %614 = bitcast i8* %scevgep41.4.8 to [21 x [21 x i8]]*
  %call16.4.9 = call zeroext i8 (...) @rand()
  store i8 %call16.4.9, i8* %scevgep28.4.8, align 1
  %615 = load i8, i8* %scevgep28.4.8, align 1
  %conv23.4.9 = zext i8 %615 to i32
  %616 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.9 = getelementptr i8, i8* %b, i64 14
  %617 = load i8, i8* %scevgep34.4.9, align 1
  %call28.4.9 = call zeroext i8 @mult(i8 zeroext %616, i8 zeroext %617)
  %conv29.4.9 = zext i8 %call28.4.9 to i32
  %xor.4.9 = xor i32 %conv23.4.9, %conv29.4.9
  %scevgep35.4.9 = getelementptr i8, i8* %a, i64 14
  %618 = load i8, i8* %scevgep35.4.9, align 1
  %619 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.9 = call zeroext i8 @mult(i8 zeroext %618, i8 zeroext %619)
  %conv35.4.9 = zext i8 %call34.4.9 to i32
  %xor36.4.9 = xor i32 %xor.4.9, %conv35.4.9
  %conv37.4.9 = trunc i32 %xor36.4.9 to i8
  store i8 %conv37.4.9, i8* %scevgep41.4.8, align 1
  %scevgep28.4.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %613, i64 0, i64 0, i64 1
  %620 = bitcast i8* %scevgep28.4.9 to [21 x [21 x i8]]*
  %scevgep41.4.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %614, i64 0, i64 1, i64 0
  %621 = bitcast i8* %scevgep41.4.9 to [21 x [21 x i8]]*
  %call16.4.10 = call zeroext i8 (...) @rand()
  store i8 %call16.4.10, i8* %scevgep28.4.9, align 1
  %622 = load i8, i8* %scevgep28.4.9, align 1
  %conv23.4.10 = zext i8 %622 to i32
  %623 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.10 = getelementptr i8, i8* %b, i64 15
  %624 = load i8, i8* %scevgep34.4.10, align 1
  %call28.4.10 = call zeroext i8 @mult(i8 zeroext %623, i8 zeroext %624)
  %conv29.4.10 = zext i8 %call28.4.10 to i32
  %xor.4.10 = xor i32 %conv23.4.10, %conv29.4.10
  %scevgep35.4.10 = getelementptr i8, i8* %a, i64 15
  %625 = load i8, i8* %scevgep35.4.10, align 1
  %626 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.10 = call zeroext i8 @mult(i8 zeroext %625, i8 zeroext %626)
  %conv35.4.10 = zext i8 %call34.4.10 to i32
  %xor36.4.10 = xor i32 %xor.4.10, %conv35.4.10
  %conv37.4.10 = trunc i32 %xor36.4.10 to i8
  store i8 %conv37.4.10, i8* %scevgep41.4.9, align 1
  %scevgep28.4.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %620, i64 0, i64 0, i64 1
  %627 = bitcast i8* %scevgep28.4.10 to [21 x [21 x i8]]*
  %scevgep41.4.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %621, i64 0, i64 1, i64 0
  %628 = bitcast i8* %scevgep41.4.10 to [21 x [21 x i8]]*
  %call16.4.11 = call zeroext i8 (...) @rand()
  store i8 %call16.4.11, i8* %scevgep28.4.10, align 1
  %629 = load i8, i8* %scevgep28.4.10, align 1
  %conv23.4.11 = zext i8 %629 to i32
  %630 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.11 = getelementptr i8, i8* %b, i64 16
  %631 = load i8, i8* %scevgep34.4.11, align 1
  %call28.4.11 = call zeroext i8 @mult(i8 zeroext %630, i8 zeroext %631)
  %conv29.4.11 = zext i8 %call28.4.11 to i32
  %xor.4.11 = xor i32 %conv23.4.11, %conv29.4.11
  %scevgep35.4.11 = getelementptr i8, i8* %a, i64 16
  %632 = load i8, i8* %scevgep35.4.11, align 1
  %633 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.11 = call zeroext i8 @mult(i8 zeroext %632, i8 zeroext %633)
  %conv35.4.11 = zext i8 %call34.4.11 to i32
  %xor36.4.11 = xor i32 %xor.4.11, %conv35.4.11
  %conv37.4.11 = trunc i32 %xor36.4.11 to i8
  store i8 %conv37.4.11, i8* %scevgep41.4.10, align 1
  %scevgep28.4.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %627, i64 0, i64 0, i64 1
  %634 = bitcast i8* %scevgep28.4.11 to [21 x [21 x i8]]*
  %scevgep41.4.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %628, i64 0, i64 1, i64 0
  %635 = bitcast i8* %scevgep41.4.11 to [21 x [21 x i8]]*
  %call16.4.12 = call zeroext i8 (...) @rand()
  store i8 %call16.4.12, i8* %scevgep28.4.11, align 1
  %636 = load i8, i8* %scevgep28.4.11, align 1
  %conv23.4.12 = zext i8 %636 to i32
  %637 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.12 = getelementptr i8, i8* %b, i64 17
  %638 = load i8, i8* %scevgep34.4.12, align 1
  %call28.4.12 = call zeroext i8 @mult(i8 zeroext %637, i8 zeroext %638)
  %conv29.4.12 = zext i8 %call28.4.12 to i32
  %xor.4.12 = xor i32 %conv23.4.12, %conv29.4.12
  %scevgep35.4.12 = getelementptr i8, i8* %a, i64 17
  %639 = load i8, i8* %scevgep35.4.12, align 1
  %640 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.12 = call zeroext i8 @mult(i8 zeroext %639, i8 zeroext %640)
  %conv35.4.12 = zext i8 %call34.4.12 to i32
  %xor36.4.12 = xor i32 %xor.4.12, %conv35.4.12
  %conv37.4.12 = trunc i32 %xor36.4.12 to i8
  store i8 %conv37.4.12, i8* %scevgep41.4.11, align 1
  %scevgep28.4.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %634, i64 0, i64 0, i64 1
  %641 = bitcast i8* %scevgep28.4.12 to [21 x [21 x i8]]*
  %scevgep41.4.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %635, i64 0, i64 1, i64 0
  %642 = bitcast i8* %scevgep41.4.12 to [21 x [21 x i8]]*
  %call16.4.13 = call zeroext i8 (...) @rand()
  store i8 %call16.4.13, i8* %scevgep28.4.12, align 1
  %643 = load i8, i8* %scevgep28.4.12, align 1
  %conv23.4.13 = zext i8 %643 to i32
  %644 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.13 = getelementptr i8, i8* %b, i64 18
  %645 = load i8, i8* %scevgep34.4.13, align 1
  %call28.4.13 = call zeroext i8 @mult(i8 zeroext %644, i8 zeroext %645)
  %conv29.4.13 = zext i8 %call28.4.13 to i32
  %xor.4.13 = xor i32 %conv23.4.13, %conv29.4.13
  %scevgep35.4.13 = getelementptr i8, i8* %a, i64 18
  %646 = load i8, i8* %scevgep35.4.13, align 1
  %647 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.13 = call zeroext i8 @mult(i8 zeroext %646, i8 zeroext %647)
  %conv35.4.13 = zext i8 %call34.4.13 to i32
  %xor36.4.13 = xor i32 %xor.4.13, %conv35.4.13
  %conv37.4.13 = trunc i32 %xor36.4.13 to i8
  store i8 %conv37.4.13, i8* %scevgep41.4.12, align 1
  %scevgep28.4.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %641, i64 0, i64 0, i64 1
  %648 = bitcast i8* %scevgep28.4.13 to [21 x [21 x i8]]*
  %scevgep41.4.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %642, i64 0, i64 1, i64 0
  %649 = bitcast i8* %scevgep41.4.13 to [21 x [21 x i8]]*
  %call16.4.14 = call zeroext i8 (...) @rand()
  store i8 %call16.4.14, i8* %scevgep28.4.13, align 1
  %650 = load i8, i8* %scevgep28.4.13, align 1
  %conv23.4.14 = zext i8 %650 to i32
  %651 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.14 = getelementptr i8, i8* %b, i64 19
  %652 = load i8, i8* %scevgep34.4.14, align 1
  %call28.4.14 = call zeroext i8 @mult(i8 zeroext %651, i8 zeroext %652)
  %conv29.4.14 = zext i8 %call28.4.14 to i32
  %xor.4.14 = xor i32 %conv23.4.14, %conv29.4.14
  %scevgep35.4.14 = getelementptr i8, i8* %a, i64 19
  %653 = load i8, i8* %scevgep35.4.14, align 1
  %654 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.14 = call zeroext i8 @mult(i8 zeroext %653, i8 zeroext %654)
  %conv35.4.14 = zext i8 %call34.4.14 to i32
  %xor36.4.14 = xor i32 %xor.4.14, %conv35.4.14
  %conv37.4.14 = trunc i32 %xor36.4.14 to i8
  store i8 %conv37.4.14, i8* %scevgep41.4.13, align 1
  %scevgep28.4.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %648, i64 0, i64 0, i64 1
  %scevgep41.4.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %649, i64 0, i64 1, i64 0
  %call16.4.15 = call zeroext i8 (...) @rand()
  store i8 %call16.4.15, i8* %scevgep28.4.14, align 1
  %655 = load i8, i8* %scevgep28.4.14, align 1
  %conv23.4.15 = zext i8 %655 to i32
  %656 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.15 = getelementptr i8, i8* %b, i64 20
  %657 = load i8, i8* %scevgep34.4.15, align 1
  %call28.4.15 = call zeroext i8 @mult(i8 zeroext %656, i8 zeroext %657)
  %conv29.4.15 = zext i8 %call28.4.15 to i32
  %xor.4.15 = xor i32 %conv23.4.15, %conv29.4.15
  %scevgep35.4.15 = getelementptr i8, i8* %a, i64 20
  %658 = load i8, i8* %scevgep35.4.15, align 1
  %659 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.15 = call zeroext i8 @mult(i8 zeroext %658, i8 zeroext %659)
  %conv35.4.15 = zext i8 %call34.4.15 to i32
  %xor36.4.15 = xor i32 %xor.4.15, %conv35.4.15
  %conv37.4.15 = trunc i32 %xor36.4.15 to i8
  store i8 %conv37.4.15, i8* %scevgep41.4.14, align 1
  %scevgep26.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %550, i64 0, i64 1, i64 1
  %660 = bitcast i8* %scevgep26.4 to [21 x [21 x i8]]*
  %scevgep39.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %551, i64 0, i64 1, i64 1
  %661 = bitcast i8* %scevgep39.4 to [21 x [21 x i8]]*
  %arrayidx25.5 = getelementptr inbounds i8, i8* %a, i64 5
  %arrayidx33.5 = getelementptr inbounds i8, i8* %b, i64 5
  %call16.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5, i8* %scevgep26.4, align 1
  %662 = load i8, i8* %scevgep26.4, align 1
  %conv23.5 = zext i8 %662 to i32
  %663 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5 = getelementptr i8, i8* %b, i64 6
  %664 = load i8, i8* %scevgep34.5, align 1
  %call28.5 = call zeroext i8 @mult(i8 zeroext %663, i8 zeroext %664)
  %conv29.5 = zext i8 %call28.5 to i32
  %xor.5 = xor i32 %conv23.5, %conv29.5
  %scevgep35.5 = getelementptr i8, i8* %a, i64 6
  %665 = load i8, i8* %scevgep35.5, align 1
  %666 = load i8, i8* %arrayidx33.5, align 1
  %call34.5 = call zeroext i8 @mult(i8 zeroext %665, i8 zeroext %666)
  %conv35.5 = zext i8 %call34.5 to i32
  %xor36.5 = xor i32 %xor.5, %conv35.5
  %conv37.5 = trunc i32 %xor36.5 to i8
  store i8 %conv37.5, i8* %scevgep39.4, align 1
  %scevgep28.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %660, i64 0, i64 0, i64 1
  %667 = bitcast i8* %scevgep28.5 to [21 x [21 x i8]]*
  %scevgep41.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %661, i64 0, i64 1, i64 0
  %668 = bitcast i8* %scevgep41.5 to [21 x [21 x i8]]*
  %call16.5.1 = call zeroext i8 (...) @rand()
  store i8 %call16.5.1, i8* %scevgep28.5, align 1
  %669 = load i8, i8* %scevgep28.5, align 1
  %conv23.5.1 = zext i8 %669 to i32
  %670 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.1 = getelementptr i8, i8* %b, i64 7
  %671 = load i8, i8* %scevgep34.5.1, align 1
  %call28.5.1 = call zeroext i8 @mult(i8 zeroext %670, i8 zeroext %671)
  %conv29.5.1 = zext i8 %call28.5.1 to i32
  %xor.5.1 = xor i32 %conv23.5.1, %conv29.5.1
  %scevgep35.5.1 = getelementptr i8, i8* %a, i64 7
  %672 = load i8, i8* %scevgep35.5.1, align 1
  %673 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.1 = call zeroext i8 @mult(i8 zeroext %672, i8 zeroext %673)
  %conv35.5.1 = zext i8 %call34.5.1 to i32
  %xor36.5.1 = xor i32 %xor.5.1, %conv35.5.1
  %conv37.5.1 = trunc i32 %xor36.5.1 to i8
  store i8 %conv37.5.1, i8* %scevgep41.5, align 1
  %scevgep28.5.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %667, i64 0, i64 0, i64 1
  %674 = bitcast i8* %scevgep28.5.1 to [21 x [21 x i8]]*
  %scevgep41.5.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %668, i64 0, i64 1, i64 0
  %675 = bitcast i8* %scevgep41.5.1 to [21 x [21 x i8]]*
  %call16.5.2 = call zeroext i8 (...) @rand()
  store i8 %call16.5.2, i8* %scevgep28.5.1, align 1
  %676 = load i8, i8* %scevgep28.5.1, align 1
  %conv23.5.2 = zext i8 %676 to i32
  %677 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.2 = getelementptr i8, i8* %b, i64 8
  %678 = load i8, i8* %scevgep34.5.2, align 1
  %call28.5.2 = call zeroext i8 @mult(i8 zeroext %677, i8 zeroext %678)
  %conv29.5.2 = zext i8 %call28.5.2 to i32
  %xor.5.2 = xor i32 %conv23.5.2, %conv29.5.2
  %scevgep35.5.2 = getelementptr i8, i8* %a, i64 8
  %679 = load i8, i8* %scevgep35.5.2, align 1
  %680 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.2 = call zeroext i8 @mult(i8 zeroext %679, i8 zeroext %680)
  %conv35.5.2 = zext i8 %call34.5.2 to i32
  %xor36.5.2 = xor i32 %xor.5.2, %conv35.5.2
  %conv37.5.2 = trunc i32 %xor36.5.2 to i8
  store i8 %conv37.5.2, i8* %scevgep41.5.1, align 1
  %scevgep28.5.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %674, i64 0, i64 0, i64 1
  %681 = bitcast i8* %scevgep28.5.2 to [21 x [21 x i8]]*
  %scevgep41.5.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %675, i64 0, i64 1, i64 0
  %682 = bitcast i8* %scevgep41.5.2 to [21 x [21 x i8]]*
  %call16.5.3 = call zeroext i8 (...) @rand()
  store i8 %call16.5.3, i8* %scevgep28.5.2, align 1
  %683 = load i8, i8* %scevgep28.5.2, align 1
  %conv23.5.3 = zext i8 %683 to i32
  %684 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.3 = getelementptr i8, i8* %b, i64 9
  %685 = load i8, i8* %scevgep34.5.3, align 1
  %call28.5.3 = call zeroext i8 @mult(i8 zeroext %684, i8 zeroext %685)
  %conv29.5.3 = zext i8 %call28.5.3 to i32
  %xor.5.3 = xor i32 %conv23.5.3, %conv29.5.3
  %scevgep35.5.3 = getelementptr i8, i8* %a, i64 9
  %686 = load i8, i8* %scevgep35.5.3, align 1
  %687 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.3 = call zeroext i8 @mult(i8 zeroext %686, i8 zeroext %687)
  %conv35.5.3 = zext i8 %call34.5.3 to i32
  %xor36.5.3 = xor i32 %xor.5.3, %conv35.5.3
  %conv37.5.3 = trunc i32 %xor36.5.3 to i8
  store i8 %conv37.5.3, i8* %scevgep41.5.2, align 1
  %scevgep28.5.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %681, i64 0, i64 0, i64 1
  %688 = bitcast i8* %scevgep28.5.3 to [21 x [21 x i8]]*
  %scevgep41.5.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %682, i64 0, i64 1, i64 0
  %689 = bitcast i8* %scevgep41.5.3 to [21 x [21 x i8]]*
  %call16.5.4 = call zeroext i8 (...) @rand()
  store i8 %call16.5.4, i8* %scevgep28.5.3, align 1
  %690 = load i8, i8* %scevgep28.5.3, align 1
  %conv23.5.4 = zext i8 %690 to i32
  %691 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.4 = getelementptr i8, i8* %b, i64 10
  %692 = load i8, i8* %scevgep34.5.4, align 1
  %call28.5.4 = call zeroext i8 @mult(i8 zeroext %691, i8 zeroext %692)
  %conv29.5.4 = zext i8 %call28.5.4 to i32
  %xor.5.4 = xor i32 %conv23.5.4, %conv29.5.4
  %scevgep35.5.4 = getelementptr i8, i8* %a, i64 10
  %693 = load i8, i8* %scevgep35.5.4, align 1
  %694 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.4 = call zeroext i8 @mult(i8 zeroext %693, i8 zeroext %694)
  %conv35.5.4 = zext i8 %call34.5.4 to i32
  %xor36.5.4 = xor i32 %xor.5.4, %conv35.5.4
  %conv37.5.4 = trunc i32 %xor36.5.4 to i8
  store i8 %conv37.5.4, i8* %scevgep41.5.3, align 1
  %scevgep28.5.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %688, i64 0, i64 0, i64 1
  %695 = bitcast i8* %scevgep28.5.4 to [21 x [21 x i8]]*
  %scevgep41.5.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %689, i64 0, i64 1, i64 0
  %696 = bitcast i8* %scevgep41.5.4 to [21 x [21 x i8]]*
  %call16.5.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5.5, i8* %scevgep28.5.4, align 1
  %697 = load i8, i8* %scevgep28.5.4, align 1
  %conv23.5.5 = zext i8 %697 to i32
  %698 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.5 = getelementptr i8, i8* %b, i64 11
  %699 = load i8, i8* %scevgep34.5.5, align 1
  %call28.5.5 = call zeroext i8 @mult(i8 zeroext %698, i8 zeroext %699)
  %conv29.5.5 = zext i8 %call28.5.5 to i32
  %xor.5.5 = xor i32 %conv23.5.5, %conv29.5.5
  %scevgep35.5.5 = getelementptr i8, i8* %a, i64 11
  %700 = load i8, i8* %scevgep35.5.5, align 1
  %701 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.5 = call zeroext i8 @mult(i8 zeroext %700, i8 zeroext %701)
  %conv35.5.5 = zext i8 %call34.5.5 to i32
  %xor36.5.5 = xor i32 %xor.5.5, %conv35.5.5
  %conv37.5.5 = trunc i32 %xor36.5.5 to i8
  store i8 %conv37.5.5, i8* %scevgep41.5.4, align 1
  %scevgep28.5.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %695, i64 0, i64 0, i64 1
  %702 = bitcast i8* %scevgep28.5.5 to [21 x [21 x i8]]*
  %scevgep41.5.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %696, i64 0, i64 1, i64 0
  %703 = bitcast i8* %scevgep41.5.5 to [21 x [21 x i8]]*
  %call16.5.6 = call zeroext i8 (...) @rand()
  store i8 %call16.5.6, i8* %scevgep28.5.5, align 1
  %704 = load i8, i8* %scevgep28.5.5, align 1
  %conv23.5.6 = zext i8 %704 to i32
  %705 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.6 = getelementptr i8, i8* %b, i64 12
  %706 = load i8, i8* %scevgep34.5.6, align 1
  %call28.5.6 = call zeroext i8 @mult(i8 zeroext %705, i8 zeroext %706)
  %conv29.5.6 = zext i8 %call28.5.6 to i32
  %xor.5.6 = xor i32 %conv23.5.6, %conv29.5.6
  %scevgep35.5.6 = getelementptr i8, i8* %a, i64 12
  %707 = load i8, i8* %scevgep35.5.6, align 1
  %708 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.6 = call zeroext i8 @mult(i8 zeroext %707, i8 zeroext %708)
  %conv35.5.6 = zext i8 %call34.5.6 to i32
  %xor36.5.6 = xor i32 %xor.5.6, %conv35.5.6
  %conv37.5.6 = trunc i32 %xor36.5.6 to i8
  store i8 %conv37.5.6, i8* %scevgep41.5.5, align 1
  %scevgep28.5.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %702, i64 0, i64 0, i64 1
  %709 = bitcast i8* %scevgep28.5.6 to [21 x [21 x i8]]*
  %scevgep41.5.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %703, i64 0, i64 1, i64 0
  %710 = bitcast i8* %scevgep41.5.6 to [21 x [21 x i8]]*
  %call16.5.7 = call zeroext i8 (...) @rand()
  store i8 %call16.5.7, i8* %scevgep28.5.6, align 1
  %711 = load i8, i8* %scevgep28.5.6, align 1
  %conv23.5.7 = zext i8 %711 to i32
  %712 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.7 = getelementptr i8, i8* %b, i64 13
  %713 = load i8, i8* %scevgep34.5.7, align 1
  %call28.5.7 = call zeroext i8 @mult(i8 zeroext %712, i8 zeroext %713)
  %conv29.5.7 = zext i8 %call28.5.7 to i32
  %xor.5.7 = xor i32 %conv23.5.7, %conv29.5.7
  %scevgep35.5.7 = getelementptr i8, i8* %a, i64 13
  %714 = load i8, i8* %scevgep35.5.7, align 1
  %715 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.7 = call zeroext i8 @mult(i8 zeroext %714, i8 zeroext %715)
  %conv35.5.7 = zext i8 %call34.5.7 to i32
  %xor36.5.7 = xor i32 %xor.5.7, %conv35.5.7
  %conv37.5.7 = trunc i32 %xor36.5.7 to i8
  store i8 %conv37.5.7, i8* %scevgep41.5.6, align 1
  %scevgep28.5.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %709, i64 0, i64 0, i64 1
  %716 = bitcast i8* %scevgep28.5.7 to [21 x [21 x i8]]*
  %scevgep41.5.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %710, i64 0, i64 1, i64 0
  %717 = bitcast i8* %scevgep41.5.7 to [21 x [21 x i8]]*
  %call16.5.8 = call zeroext i8 (...) @rand()
  store i8 %call16.5.8, i8* %scevgep28.5.7, align 1
  %718 = load i8, i8* %scevgep28.5.7, align 1
  %conv23.5.8 = zext i8 %718 to i32
  %719 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.8 = getelementptr i8, i8* %b, i64 14
  %720 = load i8, i8* %scevgep34.5.8, align 1
  %call28.5.8 = call zeroext i8 @mult(i8 zeroext %719, i8 zeroext %720)
  %conv29.5.8 = zext i8 %call28.5.8 to i32
  %xor.5.8 = xor i32 %conv23.5.8, %conv29.5.8
  %scevgep35.5.8 = getelementptr i8, i8* %a, i64 14
  %721 = load i8, i8* %scevgep35.5.8, align 1
  %722 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.8 = call zeroext i8 @mult(i8 zeroext %721, i8 zeroext %722)
  %conv35.5.8 = zext i8 %call34.5.8 to i32
  %xor36.5.8 = xor i32 %xor.5.8, %conv35.5.8
  %conv37.5.8 = trunc i32 %xor36.5.8 to i8
  store i8 %conv37.5.8, i8* %scevgep41.5.7, align 1
  %scevgep28.5.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %716, i64 0, i64 0, i64 1
  %723 = bitcast i8* %scevgep28.5.8 to [21 x [21 x i8]]*
  %scevgep41.5.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %717, i64 0, i64 1, i64 0
  %724 = bitcast i8* %scevgep41.5.8 to [21 x [21 x i8]]*
  %call16.5.9 = call zeroext i8 (...) @rand()
  store i8 %call16.5.9, i8* %scevgep28.5.8, align 1
  %725 = load i8, i8* %scevgep28.5.8, align 1
  %conv23.5.9 = zext i8 %725 to i32
  %726 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.9 = getelementptr i8, i8* %b, i64 15
  %727 = load i8, i8* %scevgep34.5.9, align 1
  %call28.5.9 = call zeroext i8 @mult(i8 zeroext %726, i8 zeroext %727)
  %conv29.5.9 = zext i8 %call28.5.9 to i32
  %xor.5.9 = xor i32 %conv23.5.9, %conv29.5.9
  %scevgep35.5.9 = getelementptr i8, i8* %a, i64 15
  %728 = load i8, i8* %scevgep35.5.9, align 1
  %729 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.9 = call zeroext i8 @mult(i8 zeroext %728, i8 zeroext %729)
  %conv35.5.9 = zext i8 %call34.5.9 to i32
  %xor36.5.9 = xor i32 %xor.5.9, %conv35.5.9
  %conv37.5.9 = trunc i32 %xor36.5.9 to i8
  store i8 %conv37.5.9, i8* %scevgep41.5.8, align 1
  %scevgep28.5.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %723, i64 0, i64 0, i64 1
  %730 = bitcast i8* %scevgep28.5.9 to [21 x [21 x i8]]*
  %scevgep41.5.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %724, i64 0, i64 1, i64 0
  %731 = bitcast i8* %scevgep41.5.9 to [21 x [21 x i8]]*
  %call16.5.10 = call zeroext i8 (...) @rand()
  store i8 %call16.5.10, i8* %scevgep28.5.9, align 1
  %732 = load i8, i8* %scevgep28.5.9, align 1
  %conv23.5.10 = zext i8 %732 to i32
  %733 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.10 = getelementptr i8, i8* %b, i64 16
  %734 = load i8, i8* %scevgep34.5.10, align 1
  %call28.5.10 = call zeroext i8 @mult(i8 zeroext %733, i8 zeroext %734)
  %conv29.5.10 = zext i8 %call28.5.10 to i32
  %xor.5.10 = xor i32 %conv23.5.10, %conv29.5.10
  %scevgep35.5.10 = getelementptr i8, i8* %a, i64 16
  %735 = load i8, i8* %scevgep35.5.10, align 1
  %736 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.10 = call zeroext i8 @mult(i8 zeroext %735, i8 zeroext %736)
  %conv35.5.10 = zext i8 %call34.5.10 to i32
  %xor36.5.10 = xor i32 %xor.5.10, %conv35.5.10
  %conv37.5.10 = trunc i32 %xor36.5.10 to i8
  store i8 %conv37.5.10, i8* %scevgep41.5.9, align 1
  %scevgep28.5.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %730, i64 0, i64 0, i64 1
  %737 = bitcast i8* %scevgep28.5.10 to [21 x [21 x i8]]*
  %scevgep41.5.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %731, i64 0, i64 1, i64 0
  %738 = bitcast i8* %scevgep41.5.10 to [21 x [21 x i8]]*
  %call16.5.11 = call zeroext i8 (...) @rand()
  store i8 %call16.5.11, i8* %scevgep28.5.10, align 1
  %739 = load i8, i8* %scevgep28.5.10, align 1
  %conv23.5.11 = zext i8 %739 to i32
  %740 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.11 = getelementptr i8, i8* %b, i64 17
  %741 = load i8, i8* %scevgep34.5.11, align 1
  %call28.5.11 = call zeroext i8 @mult(i8 zeroext %740, i8 zeroext %741)
  %conv29.5.11 = zext i8 %call28.5.11 to i32
  %xor.5.11 = xor i32 %conv23.5.11, %conv29.5.11
  %scevgep35.5.11 = getelementptr i8, i8* %a, i64 17
  %742 = load i8, i8* %scevgep35.5.11, align 1
  %743 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.11 = call zeroext i8 @mult(i8 zeroext %742, i8 zeroext %743)
  %conv35.5.11 = zext i8 %call34.5.11 to i32
  %xor36.5.11 = xor i32 %xor.5.11, %conv35.5.11
  %conv37.5.11 = trunc i32 %xor36.5.11 to i8
  store i8 %conv37.5.11, i8* %scevgep41.5.10, align 1
  %scevgep28.5.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %737, i64 0, i64 0, i64 1
  %744 = bitcast i8* %scevgep28.5.11 to [21 x [21 x i8]]*
  %scevgep41.5.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %738, i64 0, i64 1, i64 0
  %745 = bitcast i8* %scevgep41.5.11 to [21 x [21 x i8]]*
  %call16.5.12 = call zeroext i8 (...) @rand()
  store i8 %call16.5.12, i8* %scevgep28.5.11, align 1
  %746 = load i8, i8* %scevgep28.5.11, align 1
  %conv23.5.12 = zext i8 %746 to i32
  %747 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.12 = getelementptr i8, i8* %b, i64 18
  %748 = load i8, i8* %scevgep34.5.12, align 1
  %call28.5.12 = call zeroext i8 @mult(i8 zeroext %747, i8 zeroext %748)
  %conv29.5.12 = zext i8 %call28.5.12 to i32
  %xor.5.12 = xor i32 %conv23.5.12, %conv29.5.12
  %scevgep35.5.12 = getelementptr i8, i8* %a, i64 18
  %749 = load i8, i8* %scevgep35.5.12, align 1
  %750 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.12 = call zeroext i8 @mult(i8 zeroext %749, i8 zeroext %750)
  %conv35.5.12 = zext i8 %call34.5.12 to i32
  %xor36.5.12 = xor i32 %xor.5.12, %conv35.5.12
  %conv37.5.12 = trunc i32 %xor36.5.12 to i8
  store i8 %conv37.5.12, i8* %scevgep41.5.11, align 1
  %scevgep28.5.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %744, i64 0, i64 0, i64 1
  %751 = bitcast i8* %scevgep28.5.12 to [21 x [21 x i8]]*
  %scevgep41.5.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %745, i64 0, i64 1, i64 0
  %752 = bitcast i8* %scevgep41.5.12 to [21 x [21 x i8]]*
  %call16.5.13 = call zeroext i8 (...) @rand()
  store i8 %call16.5.13, i8* %scevgep28.5.12, align 1
  %753 = load i8, i8* %scevgep28.5.12, align 1
  %conv23.5.13 = zext i8 %753 to i32
  %754 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.13 = getelementptr i8, i8* %b, i64 19
  %755 = load i8, i8* %scevgep34.5.13, align 1
  %call28.5.13 = call zeroext i8 @mult(i8 zeroext %754, i8 zeroext %755)
  %conv29.5.13 = zext i8 %call28.5.13 to i32
  %xor.5.13 = xor i32 %conv23.5.13, %conv29.5.13
  %scevgep35.5.13 = getelementptr i8, i8* %a, i64 19
  %756 = load i8, i8* %scevgep35.5.13, align 1
  %757 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.13 = call zeroext i8 @mult(i8 zeroext %756, i8 zeroext %757)
  %conv35.5.13 = zext i8 %call34.5.13 to i32
  %xor36.5.13 = xor i32 %xor.5.13, %conv35.5.13
  %conv37.5.13 = trunc i32 %xor36.5.13 to i8
  store i8 %conv37.5.13, i8* %scevgep41.5.12, align 1
  %scevgep28.5.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %751, i64 0, i64 0, i64 1
  %scevgep41.5.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %752, i64 0, i64 1, i64 0
  %call16.5.14 = call zeroext i8 (...) @rand()
  store i8 %call16.5.14, i8* %scevgep28.5.13, align 1
  %758 = load i8, i8* %scevgep28.5.13, align 1
  %conv23.5.14 = zext i8 %758 to i32
  %759 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.14 = getelementptr i8, i8* %b, i64 20
  %760 = load i8, i8* %scevgep34.5.14, align 1
  %call28.5.14 = call zeroext i8 @mult(i8 zeroext %759, i8 zeroext %760)
  %conv29.5.14 = zext i8 %call28.5.14 to i32
  %xor.5.14 = xor i32 %conv23.5.14, %conv29.5.14
  %scevgep35.5.14 = getelementptr i8, i8* %a, i64 20
  %761 = load i8, i8* %scevgep35.5.14, align 1
  %762 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.14 = call zeroext i8 @mult(i8 zeroext %761, i8 zeroext %762)
  %conv35.5.14 = zext i8 %call34.5.14 to i32
  %xor36.5.14 = xor i32 %xor.5.14, %conv35.5.14
  %conv37.5.14 = trunc i32 %xor36.5.14 to i8
  store i8 %conv37.5.14, i8* %scevgep41.5.13, align 1
  %scevgep26.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %660, i64 0, i64 1, i64 1
  %763 = bitcast i8* %scevgep26.5 to [21 x [21 x i8]]*
  %scevgep39.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %661, i64 0, i64 1, i64 1
  %764 = bitcast i8* %scevgep39.5 to [21 x [21 x i8]]*
  %arrayidx25.6 = getelementptr inbounds i8, i8* %a, i64 6
  %arrayidx33.6 = getelementptr inbounds i8, i8* %b, i64 6
  %call16.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6, i8* %scevgep26.5, align 1
  %765 = load i8, i8* %scevgep26.5, align 1
  %conv23.6 = zext i8 %765 to i32
  %766 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6 = getelementptr i8, i8* %b, i64 7
  %767 = load i8, i8* %scevgep34.6, align 1
  %call28.6 = call zeroext i8 @mult(i8 zeroext %766, i8 zeroext %767)
  %conv29.6 = zext i8 %call28.6 to i32
  %xor.6 = xor i32 %conv23.6, %conv29.6
  %scevgep35.6 = getelementptr i8, i8* %a, i64 7
  %768 = load i8, i8* %scevgep35.6, align 1
  %769 = load i8, i8* %arrayidx33.6, align 1
  %call34.6 = call zeroext i8 @mult(i8 zeroext %768, i8 zeroext %769)
  %conv35.6 = zext i8 %call34.6 to i32
  %xor36.6 = xor i32 %xor.6, %conv35.6
  %conv37.6 = trunc i32 %xor36.6 to i8
  store i8 %conv37.6, i8* %scevgep39.5, align 1
  %scevgep28.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %763, i64 0, i64 0, i64 1
  %770 = bitcast i8* %scevgep28.6 to [21 x [21 x i8]]*
  %scevgep41.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %764, i64 0, i64 1, i64 0
  %771 = bitcast i8* %scevgep41.6 to [21 x [21 x i8]]*
  %call16.6.1 = call zeroext i8 (...) @rand()
  store i8 %call16.6.1, i8* %scevgep28.6, align 1
  %772 = load i8, i8* %scevgep28.6, align 1
  %conv23.6.1 = zext i8 %772 to i32
  %773 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.1 = getelementptr i8, i8* %b, i64 8
  %774 = load i8, i8* %scevgep34.6.1, align 1
  %call28.6.1 = call zeroext i8 @mult(i8 zeroext %773, i8 zeroext %774)
  %conv29.6.1 = zext i8 %call28.6.1 to i32
  %xor.6.1 = xor i32 %conv23.6.1, %conv29.6.1
  %scevgep35.6.1 = getelementptr i8, i8* %a, i64 8
  %775 = load i8, i8* %scevgep35.6.1, align 1
  %776 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.1 = call zeroext i8 @mult(i8 zeroext %775, i8 zeroext %776)
  %conv35.6.1 = zext i8 %call34.6.1 to i32
  %xor36.6.1 = xor i32 %xor.6.1, %conv35.6.1
  %conv37.6.1 = trunc i32 %xor36.6.1 to i8
  store i8 %conv37.6.1, i8* %scevgep41.6, align 1
  %scevgep28.6.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %770, i64 0, i64 0, i64 1
  %777 = bitcast i8* %scevgep28.6.1 to [21 x [21 x i8]]*
  %scevgep41.6.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %771, i64 0, i64 1, i64 0
  %778 = bitcast i8* %scevgep41.6.1 to [21 x [21 x i8]]*
  %call16.6.2 = call zeroext i8 (...) @rand()
  store i8 %call16.6.2, i8* %scevgep28.6.1, align 1
  %779 = load i8, i8* %scevgep28.6.1, align 1
  %conv23.6.2 = zext i8 %779 to i32
  %780 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.2 = getelementptr i8, i8* %b, i64 9
  %781 = load i8, i8* %scevgep34.6.2, align 1
  %call28.6.2 = call zeroext i8 @mult(i8 zeroext %780, i8 zeroext %781)
  %conv29.6.2 = zext i8 %call28.6.2 to i32
  %xor.6.2 = xor i32 %conv23.6.2, %conv29.6.2
  %scevgep35.6.2 = getelementptr i8, i8* %a, i64 9
  %782 = load i8, i8* %scevgep35.6.2, align 1
  %783 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.2 = call zeroext i8 @mult(i8 zeroext %782, i8 zeroext %783)
  %conv35.6.2 = zext i8 %call34.6.2 to i32
  %xor36.6.2 = xor i32 %xor.6.2, %conv35.6.2
  %conv37.6.2 = trunc i32 %xor36.6.2 to i8
  store i8 %conv37.6.2, i8* %scevgep41.6.1, align 1
  %scevgep28.6.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %777, i64 0, i64 0, i64 1
  %784 = bitcast i8* %scevgep28.6.2 to [21 x [21 x i8]]*
  %scevgep41.6.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %778, i64 0, i64 1, i64 0
  %785 = bitcast i8* %scevgep41.6.2 to [21 x [21 x i8]]*
  %call16.6.3 = call zeroext i8 (...) @rand()
  store i8 %call16.6.3, i8* %scevgep28.6.2, align 1
  %786 = load i8, i8* %scevgep28.6.2, align 1
  %conv23.6.3 = zext i8 %786 to i32
  %787 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.3 = getelementptr i8, i8* %b, i64 10
  %788 = load i8, i8* %scevgep34.6.3, align 1
  %call28.6.3 = call zeroext i8 @mult(i8 zeroext %787, i8 zeroext %788)
  %conv29.6.3 = zext i8 %call28.6.3 to i32
  %xor.6.3 = xor i32 %conv23.6.3, %conv29.6.3
  %scevgep35.6.3 = getelementptr i8, i8* %a, i64 10
  %789 = load i8, i8* %scevgep35.6.3, align 1
  %790 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.3 = call zeroext i8 @mult(i8 zeroext %789, i8 zeroext %790)
  %conv35.6.3 = zext i8 %call34.6.3 to i32
  %xor36.6.3 = xor i32 %xor.6.3, %conv35.6.3
  %conv37.6.3 = trunc i32 %xor36.6.3 to i8
  store i8 %conv37.6.3, i8* %scevgep41.6.2, align 1
  %scevgep28.6.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %784, i64 0, i64 0, i64 1
  %791 = bitcast i8* %scevgep28.6.3 to [21 x [21 x i8]]*
  %scevgep41.6.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %785, i64 0, i64 1, i64 0
  %792 = bitcast i8* %scevgep41.6.3 to [21 x [21 x i8]]*
  %call16.6.4 = call zeroext i8 (...) @rand()
  store i8 %call16.6.4, i8* %scevgep28.6.3, align 1
  %793 = load i8, i8* %scevgep28.6.3, align 1
  %conv23.6.4 = zext i8 %793 to i32
  %794 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.4 = getelementptr i8, i8* %b, i64 11
  %795 = load i8, i8* %scevgep34.6.4, align 1
  %call28.6.4 = call zeroext i8 @mult(i8 zeroext %794, i8 zeroext %795)
  %conv29.6.4 = zext i8 %call28.6.4 to i32
  %xor.6.4 = xor i32 %conv23.6.4, %conv29.6.4
  %scevgep35.6.4 = getelementptr i8, i8* %a, i64 11
  %796 = load i8, i8* %scevgep35.6.4, align 1
  %797 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.4 = call zeroext i8 @mult(i8 zeroext %796, i8 zeroext %797)
  %conv35.6.4 = zext i8 %call34.6.4 to i32
  %xor36.6.4 = xor i32 %xor.6.4, %conv35.6.4
  %conv37.6.4 = trunc i32 %xor36.6.4 to i8
  store i8 %conv37.6.4, i8* %scevgep41.6.3, align 1
  %scevgep28.6.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %791, i64 0, i64 0, i64 1
  %798 = bitcast i8* %scevgep28.6.4 to [21 x [21 x i8]]*
  %scevgep41.6.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %792, i64 0, i64 1, i64 0
  %799 = bitcast i8* %scevgep41.6.4 to [21 x [21 x i8]]*
  %call16.6.5 = call zeroext i8 (...) @rand()
  store i8 %call16.6.5, i8* %scevgep28.6.4, align 1
  %800 = load i8, i8* %scevgep28.6.4, align 1
  %conv23.6.5 = zext i8 %800 to i32
  %801 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.5 = getelementptr i8, i8* %b, i64 12
  %802 = load i8, i8* %scevgep34.6.5, align 1
  %call28.6.5 = call zeroext i8 @mult(i8 zeroext %801, i8 zeroext %802)
  %conv29.6.5 = zext i8 %call28.6.5 to i32
  %xor.6.5 = xor i32 %conv23.6.5, %conv29.6.5
  %scevgep35.6.5 = getelementptr i8, i8* %a, i64 12
  %803 = load i8, i8* %scevgep35.6.5, align 1
  %804 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.5 = call zeroext i8 @mult(i8 zeroext %803, i8 zeroext %804)
  %conv35.6.5 = zext i8 %call34.6.5 to i32
  %xor36.6.5 = xor i32 %xor.6.5, %conv35.6.5
  %conv37.6.5 = trunc i32 %xor36.6.5 to i8
  store i8 %conv37.6.5, i8* %scevgep41.6.4, align 1
  %scevgep28.6.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %798, i64 0, i64 0, i64 1
  %805 = bitcast i8* %scevgep28.6.5 to [21 x [21 x i8]]*
  %scevgep41.6.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %799, i64 0, i64 1, i64 0
  %806 = bitcast i8* %scevgep41.6.5 to [21 x [21 x i8]]*
  %call16.6.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6.6, i8* %scevgep28.6.5, align 1
  %807 = load i8, i8* %scevgep28.6.5, align 1
  %conv23.6.6 = zext i8 %807 to i32
  %808 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.6 = getelementptr i8, i8* %b, i64 13
  %809 = load i8, i8* %scevgep34.6.6, align 1
  %call28.6.6 = call zeroext i8 @mult(i8 zeroext %808, i8 zeroext %809)
  %conv29.6.6 = zext i8 %call28.6.6 to i32
  %xor.6.6 = xor i32 %conv23.6.6, %conv29.6.6
  %scevgep35.6.6 = getelementptr i8, i8* %a, i64 13
  %810 = load i8, i8* %scevgep35.6.6, align 1
  %811 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.6 = call zeroext i8 @mult(i8 zeroext %810, i8 zeroext %811)
  %conv35.6.6 = zext i8 %call34.6.6 to i32
  %xor36.6.6 = xor i32 %xor.6.6, %conv35.6.6
  %conv37.6.6 = trunc i32 %xor36.6.6 to i8
  store i8 %conv37.6.6, i8* %scevgep41.6.5, align 1
  %scevgep28.6.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %805, i64 0, i64 0, i64 1
  %812 = bitcast i8* %scevgep28.6.6 to [21 x [21 x i8]]*
  %scevgep41.6.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %806, i64 0, i64 1, i64 0
  %813 = bitcast i8* %scevgep41.6.6 to [21 x [21 x i8]]*
  %call16.6.7 = call zeroext i8 (...) @rand()
  store i8 %call16.6.7, i8* %scevgep28.6.6, align 1
  %814 = load i8, i8* %scevgep28.6.6, align 1
  %conv23.6.7 = zext i8 %814 to i32
  %815 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.7 = getelementptr i8, i8* %b, i64 14
  %816 = load i8, i8* %scevgep34.6.7, align 1
  %call28.6.7 = call zeroext i8 @mult(i8 zeroext %815, i8 zeroext %816)
  %conv29.6.7 = zext i8 %call28.6.7 to i32
  %xor.6.7 = xor i32 %conv23.6.7, %conv29.6.7
  %scevgep35.6.7 = getelementptr i8, i8* %a, i64 14
  %817 = load i8, i8* %scevgep35.6.7, align 1
  %818 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.7 = call zeroext i8 @mult(i8 zeroext %817, i8 zeroext %818)
  %conv35.6.7 = zext i8 %call34.6.7 to i32
  %xor36.6.7 = xor i32 %xor.6.7, %conv35.6.7
  %conv37.6.7 = trunc i32 %xor36.6.7 to i8
  store i8 %conv37.6.7, i8* %scevgep41.6.6, align 1
  %scevgep28.6.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %812, i64 0, i64 0, i64 1
  %819 = bitcast i8* %scevgep28.6.7 to [21 x [21 x i8]]*
  %scevgep41.6.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %813, i64 0, i64 1, i64 0
  %820 = bitcast i8* %scevgep41.6.7 to [21 x [21 x i8]]*
  %call16.6.8 = call zeroext i8 (...) @rand()
  store i8 %call16.6.8, i8* %scevgep28.6.7, align 1
  %821 = load i8, i8* %scevgep28.6.7, align 1
  %conv23.6.8 = zext i8 %821 to i32
  %822 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.8 = getelementptr i8, i8* %b, i64 15
  %823 = load i8, i8* %scevgep34.6.8, align 1
  %call28.6.8 = call zeroext i8 @mult(i8 zeroext %822, i8 zeroext %823)
  %conv29.6.8 = zext i8 %call28.6.8 to i32
  %xor.6.8 = xor i32 %conv23.6.8, %conv29.6.8
  %scevgep35.6.8 = getelementptr i8, i8* %a, i64 15
  %824 = load i8, i8* %scevgep35.6.8, align 1
  %825 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.8 = call zeroext i8 @mult(i8 zeroext %824, i8 zeroext %825)
  %conv35.6.8 = zext i8 %call34.6.8 to i32
  %xor36.6.8 = xor i32 %xor.6.8, %conv35.6.8
  %conv37.6.8 = trunc i32 %xor36.6.8 to i8
  store i8 %conv37.6.8, i8* %scevgep41.6.7, align 1
  %scevgep28.6.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %819, i64 0, i64 0, i64 1
  %826 = bitcast i8* %scevgep28.6.8 to [21 x [21 x i8]]*
  %scevgep41.6.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %820, i64 0, i64 1, i64 0
  %827 = bitcast i8* %scevgep41.6.8 to [21 x [21 x i8]]*
  %call16.6.9 = call zeroext i8 (...) @rand()
  store i8 %call16.6.9, i8* %scevgep28.6.8, align 1
  %828 = load i8, i8* %scevgep28.6.8, align 1
  %conv23.6.9 = zext i8 %828 to i32
  %829 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.9 = getelementptr i8, i8* %b, i64 16
  %830 = load i8, i8* %scevgep34.6.9, align 1
  %call28.6.9 = call zeroext i8 @mult(i8 zeroext %829, i8 zeroext %830)
  %conv29.6.9 = zext i8 %call28.6.9 to i32
  %xor.6.9 = xor i32 %conv23.6.9, %conv29.6.9
  %scevgep35.6.9 = getelementptr i8, i8* %a, i64 16
  %831 = load i8, i8* %scevgep35.6.9, align 1
  %832 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.9 = call zeroext i8 @mult(i8 zeroext %831, i8 zeroext %832)
  %conv35.6.9 = zext i8 %call34.6.9 to i32
  %xor36.6.9 = xor i32 %xor.6.9, %conv35.6.9
  %conv37.6.9 = trunc i32 %xor36.6.9 to i8
  store i8 %conv37.6.9, i8* %scevgep41.6.8, align 1
  %scevgep28.6.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %826, i64 0, i64 0, i64 1
  %833 = bitcast i8* %scevgep28.6.9 to [21 x [21 x i8]]*
  %scevgep41.6.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %827, i64 0, i64 1, i64 0
  %834 = bitcast i8* %scevgep41.6.9 to [21 x [21 x i8]]*
  %call16.6.10 = call zeroext i8 (...) @rand()
  store i8 %call16.6.10, i8* %scevgep28.6.9, align 1
  %835 = load i8, i8* %scevgep28.6.9, align 1
  %conv23.6.10 = zext i8 %835 to i32
  %836 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.10 = getelementptr i8, i8* %b, i64 17
  %837 = load i8, i8* %scevgep34.6.10, align 1
  %call28.6.10 = call zeroext i8 @mult(i8 zeroext %836, i8 zeroext %837)
  %conv29.6.10 = zext i8 %call28.6.10 to i32
  %xor.6.10 = xor i32 %conv23.6.10, %conv29.6.10
  %scevgep35.6.10 = getelementptr i8, i8* %a, i64 17
  %838 = load i8, i8* %scevgep35.6.10, align 1
  %839 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.10 = call zeroext i8 @mult(i8 zeroext %838, i8 zeroext %839)
  %conv35.6.10 = zext i8 %call34.6.10 to i32
  %xor36.6.10 = xor i32 %xor.6.10, %conv35.6.10
  %conv37.6.10 = trunc i32 %xor36.6.10 to i8
  store i8 %conv37.6.10, i8* %scevgep41.6.9, align 1
  %scevgep28.6.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %833, i64 0, i64 0, i64 1
  %840 = bitcast i8* %scevgep28.6.10 to [21 x [21 x i8]]*
  %scevgep41.6.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %834, i64 0, i64 1, i64 0
  %841 = bitcast i8* %scevgep41.6.10 to [21 x [21 x i8]]*
  %call16.6.11 = call zeroext i8 (...) @rand()
  store i8 %call16.6.11, i8* %scevgep28.6.10, align 1
  %842 = load i8, i8* %scevgep28.6.10, align 1
  %conv23.6.11 = zext i8 %842 to i32
  %843 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.11 = getelementptr i8, i8* %b, i64 18
  %844 = load i8, i8* %scevgep34.6.11, align 1
  %call28.6.11 = call zeroext i8 @mult(i8 zeroext %843, i8 zeroext %844)
  %conv29.6.11 = zext i8 %call28.6.11 to i32
  %xor.6.11 = xor i32 %conv23.6.11, %conv29.6.11
  %scevgep35.6.11 = getelementptr i8, i8* %a, i64 18
  %845 = load i8, i8* %scevgep35.6.11, align 1
  %846 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.11 = call zeroext i8 @mult(i8 zeroext %845, i8 zeroext %846)
  %conv35.6.11 = zext i8 %call34.6.11 to i32
  %xor36.6.11 = xor i32 %xor.6.11, %conv35.6.11
  %conv37.6.11 = trunc i32 %xor36.6.11 to i8
  store i8 %conv37.6.11, i8* %scevgep41.6.10, align 1
  %scevgep28.6.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %840, i64 0, i64 0, i64 1
  %847 = bitcast i8* %scevgep28.6.11 to [21 x [21 x i8]]*
  %scevgep41.6.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %841, i64 0, i64 1, i64 0
  %848 = bitcast i8* %scevgep41.6.11 to [21 x [21 x i8]]*
  %call16.6.12 = call zeroext i8 (...) @rand()
  store i8 %call16.6.12, i8* %scevgep28.6.11, align 1
  %849 = load i8, i8* %scevgep28.6.11, align 1
  %conv23.6.12 = zext i8 %849 to i32
  %850 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.12 = getelementptr i8, i8* %b, i64 19
  %851 = load i8, i8* %scevgep34.6.12, align 1
  %call28.6.12 = call zeroext i8 @mult(i8 zeroext %850, i8 zeroext %851)
  %conv29.6.12 = zext i8 %call28.6.12 to i32
  %xor.6.12 = xor i32 %conv23.6.12, %conv29.6.12
  %scevgep35.6.12 = getelementptr i8, i8* %a, i64 19
  %852 = load i8, i8* %scevgep35.6.12, align 1
  %853 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.12 = call zeroext i8 @mult(i8 zeroext %852, i8 zeroext %853)
  %conv35.6.12 = zext i8 %call34.6.12 to i32
  %xor36.6.12 = xor i32 %xor.6.12, %conv35.6.12
  %conv37.6.12 = trunc i32 %xor36.6.12 to i8
  store i8 %conv37.6.12, i8* %scevgep41.6.11, align 1
  %scevgep28.6.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %847, i64 0, i64 0, i64 1
  %scevgep41.6.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %848, i64 0, i64 1, i64 0
  %call16.6.13 = call zeroext i8 (...) @rand()
  store i8 %call16.6.13, i8* %scevgep28.6.12, align 1
  %854 = load i8, i8* %scevgep28.6.12, align 1
  %conv23.6.13 = zext i8 %854 to i32
  %855 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.13 = getelementptr i8, i8* %b, i64 20
  %856 = load i8, i8* %scevgep34.6.13, align 1
  %call28.6.13 = call zeroext i8 @mult(i8 zeroext %855, i8 zeroext %856)
  %conv29.6.13 = zext i8 %call28.6.13 to i32
  %xor.6.13 = xor i32 %conv23.6.13, %conv29.6.13
  %scevgep35.6.13 = getelementptr i8, i8* %a, i64 20
  %857 = load i8, i8* %scevgep35.6.13, align 1
  %858 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.13 = call zeroext i8 @mult(i8 zeroext %857, i8 zeroext %858)
  %conv35.6.13 = zext i8 %call34.6.13 to i32
  %xor36.6.13 = xor i32 %xor.6.13, %conv35.6.13
  %conv37.6.13 = trunc i32 %xor36.6.13 to i8
  store i8 %conv37.6.13, i8* %scevgep41.6.12, align 1
  %scevgep26.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %763, i64 0, i64 1, i64 1
  %859 = bitcast i8* %scevgep26.6 to [21 x [21 x i8]]*
  %scevgep39.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %764, i64 0, i64 1, i64 1
  %860 = bitcast i8* %scevgep39.6 to [21 x [21 x i8]]*
  %arrayidx25.7 = getelementptr inbounds i8, i8* %a, i64 7
  %arrayidx33.7 = getelementptr inbounds i8, i8* %b, i64 7
  %call16.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7, i8* %scevgep26.6, align 1
  %861 = load i8, i8* %scevgep26.6, align 1
  %conv23.7 = zext i8 %861 to i32
  %862 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7 = getelementptr i8, i8* %b, i64 8
  %863 = load i8, i8* %scevgep34.7, align 1
  %call28.7 = call zeroext i8 @mult(i8 zeroext %862, i8 zeroext %863)
  %conv29.7 = zext i8 %call28.7 to i32
  %xor.7 = xor i32 %conv23.7, %conv29.7
  %scevgep35.7 = getelementptr i8, i8* %a, i64 8
  %864 = load i8, i8* %scevgep35.7, align 1
  %865 = load i8, i8* %arrayidx33.7, align 1
  %call34.7 = call zeroext i8 @mult(i8 zeroext %864, i8 zeroext %865)
  %conv35.7 = zext i8 %call34.7 to i32
  %xor36.7 = xor i32 %xor.7, %conv35.7
  %conv37.7 = trunc i32 %xor36.7 to i8
  store i8 %conv37.7, i8* %scevgep39.6, align 1
  %scevgep28.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %859, i64 0, i64 0, i64 1
  %866 = bitcast i8* %scevgep28.7 to [21 x [21 x i8]]*
  %scevgep41.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %860, i64 0, i64 1, i64 0
  %867 = bitcast i8* %scevgep41.7 to [21 x [21 x i8]]*
  %call16.7.1 = call zeroext i8 (...) @rand()
  store i8 %call16.7.1, i8* %scevgep28.7, align 1
  %868 = load i8, i8* %scevgep28.7, align 1
  %conv23.7.1 = zext i8 %868 to i32
  %869 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.1 = getelementptr i8, i8* %b, i64 9
  %870 = load i8, i8* %scevgep34.7.1, align 1
  %call28.7.1 = call zeroext i8 @mult(i8 zeroext %869, i8 zeroext %870)
  %conv29.7.1 = zext i8 %call28.7.1 to i32
  %xor.7.1 = xor i32 %conv23.7.1, %conv29.7.1
  %scevgep35.7.1 = getelementptr i8, i8* %a, i64 9
  %871 = load i8, i8* %scevgep35.7.1, align 1
  %872 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.1 = call zeroext i8 @mult(i8 zeroext %871, i8 zeroext %872)
  %conv35.7.1 = zext i8 %call34.7.1 to i32
  %xor36.7.1 = xor i32 %xor.7.1, %conv35.7.1
  %conv37.7.1 = trunc i32 %xor36.7.1 to i8
  store i8 %conv37.7.1, i8* %scevgep41.7, align 1
  %scevgep28.7.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %866, i64 0, i64 0, i64 1
  %873 = bitcast i8* %scevgep28.7.1 to [21 x [21 x i8]]*
  %scevgep41.7.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %867, i64 0, i64 1, i64 0
  %874 = bitcast i8* %scevgep41.7.1 to [21 x [21 x i8]]*
  %call16.7.2 = call zeroext i8 (...) @rand()
  store i8 %call16.7.2, i8* %scevgep28.7.1, align 1
  %875 = load i8, i8* %scevgep28.7.1, align 1
  %conv23.7.2 = zext i8 %875 to i32
  %876 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.2 = getelementptr i8, i8* %b, i64 10
  %877 = load i8, i8* %scevgep34.7.2, align 1
  %call28.7.2 = call zeroext i8 @mult(i8 zeroext %876, i8 zeroext %877)
  %conv29.7.2 = zext i8 %call28.7.2 to i32
  %xor.7.2 = xor i32 %conv23.7.2, %conv29.7.2
  %scevgep35.7.2 = getelementptr i8, i8* %a, i64 10
  %878 = load i8, i8* %scevgep35.7.2, align 1
  %879 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.2 = call zeroext i8 @mult(i8 zeroext %878, i8 zeroext %879)
  %conv35.7.2 = zext i8 %call34.7.2 to i32
  %xor36.7.2 = xor i32 %xor.7.2, %conv35.7.2
  %conv37.7.2 = trunc i32 %xor36.7.2 to i8
  store i8 %conv37.7.2, i8* %scevgep41.7.1, align 1
  %scevgep28.7.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %873, i64 0, i64 0, i64 1
  %880 = bitcast i8* %scevgep28.7.2 to [21 x [21 x i8]]*
  %scevgep41.7.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %874, i64 0, i64 1, i64 0
  %881 = bitcast i8* %scevgep41.7.2 to [21 x [21 x i8]]*
  %call16.7.3 = call zeroext i8 (...) @rand()
  store i8 %call16.7.3, i8* %scevgep28.7.2, align 1
  %882 = load i8, i8* %scevgep28.7.2, align 1
  %conv23.7.3 = zext i8 %882 to i32
  %883 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.3 = getelementptr i8, i8* %b, i64 11
  %884 = load i8, i8* %scevgep34.7.3, align 1
  %call28.7.3 = call zeroext i8 @mult(i8 zeroext %883, i8 zeroext %884)
  %conv29.7.3 = zext i8 %call28.7.3 to i32
  %xor.7.3 = xor i32 %conv23.7.3, %conv29.7.3
  %scevgep35.7.3 = getelementptr i8, i8* %a, i64 11
  %885 = load i8, i8* %scevgep35.7.3, align 1
  %886 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.3 = call zeroext i8 @mult(i8 zeroext %885, i8 zeroext %886)
  %conv35.7.3 = zext i8 %call34.7.3 to i32
  %xor36.7.3 = xor i32 %xor.7.3, %conv35.7.3
  %conv37.7.3 = trunc i32 %xor36.7.3 to i8
  store i8 %conv37.7.3, i8* %scevgep41.7.2, align 1
  %scevgep28.7.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %880, i64 0, i64 0, i64 1
  %887 = bitcast i8* %scevgep28.7.3 to [21 x [21 x i8]]*
  %scevgep41.7.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %881, i64 0, i64 1, i64 0
  %888 = bitcast i8* %scevgep41.7.3 to [21 x [21 x i8]]*
  %call16.7.4 = call zeroext i8 (...) @rand()
  store i8 %call16.7.4, i8* %scevgep28.7.3, align 1
  %889 = load i8, i8* %scevgep28.7.3, align 1
  %conv23.7.4 = zext i8 %889 to i32
  %890 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.4 = getelementptr i8, i8* %b, i64 12
  %891 = load i8, i8* %scevgep34.7.4, align 1
  %call28.7.4 = call zeroext i8 @mult(i8 zeroext %890, i8 zeroext %891)
  %conv29.7.4 = zext i8 %call28.7.4 to i32
  %xor.7.4 = xor i32 %conv23.7.4, %conv29.7.4
  %scevgep35.7.4 = getelementptr i8, i8* %a, i64 12
  %892 = load i8, i8* %scevgep35.7.4, align 1
  %893 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.4 = call zeroext i8 @mult(i8 zeroext %892, i8 zeroext %893)
  %conv35.7.4 = zext i8 %call34.7.4 to i32
  %xor36.7.4 = xor i32 %xor.7.4, %conv35.7.4
  %conv37.7.4 = trunc i32 %xor36.7.4 to i8
  store i8 %conv37.7.4, i8* %scevgep41.7.3, align 1
  %scevgep28.7.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %887, i64 0, i64 0, i64 1
  %894 = bitcast i8* %scevgep28.7.4 to [21 x [21 x i8]]*
  %scevgep41.7.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %888, i64 0, i64 1, i64 0
  %895 = bitcast i8* %scevgep41.7.4 to [21 x [21 x i8]]*
  %call16.7.5 = call zeroext i8 (...) @rand()
  store i8 %call16.7.5, i8* %scevgep28.7.4, align 1
  %896 = load i8, i8* %scevgep28.7.4, align 1
  %conv23.7.5 = zext i8 %896 to i32
  %897 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.5 = getelementptr i8, i8* %b, i64 13
  %898 = load i8, i8* %scevgep34.7.5, align 1
  %call28.7.5 = call zeroext i8 @mult(i8 zeroext %897, i8 zeroext %898)
  %conv29.7.5 = zext i8 %call28.7.5 to i32
  %xor.7.5 = xor i32 %conv23.7.5, %conv29.7.5
  %scevgep35.7.5 = getelementptr i8, i8* %a, i64 13
  %899 = load i8, i8* %scevgep35.7.5, align 1
  %900 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.5 = call zeroext i8 @mult(i8 zeroext %899, i8 zeroext %900)
  %conv35.7.5 = zext i8 %call34.7.5 to i32
  %xor36.7.5 = xor i32 %xor.7.5, %conv35.7.5
  %conv37.7.5 = trunc i32 %xor36.7.5 to i8
  store i8 %conv37.7.5, i8* %scevgep41.7.4, align 1
  %scevgep28.7.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %894, i64 0, i64 0, i64 1
  %901 = bitcast i8* %scevgep28.7.5 to [21 x [21 x i8]]*
  %scevgep41.7.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %895, i64 0, i64 1, i64 0
  %902 = bitcast i8* %scevgep41.7.5 to [21 x [21 x i8]]*
  %call16.7.6 = call zeroext i8 (...) @rand()
  store i8 %call16.7.6, i8* %scevgep28.7.5, align 1
  %903 = load i8, i8* %scevgep28.7.5, align 1
  %conv23.7.6 = zext i8 %903 to i32
  %904 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.6 = getelementptr i8, i8* %b, i64 14
  %905 = load i8, i8* %scevgep34.7.6, align 1
  %call28.7.6 = call zeroext i8 @mult(i8 zeroext %904, i8 zeroext %905)
  %conv29.7.6 = zext i8 %call28.7.6 to i32
  %xor.7.6 = xor i32 %conv23.7.6, %conv29.7.6
  %scevgep35.7.6 = getelementptr i8, i8* %a, i64 14
  %906 = load i8, i8* %scevgep35.7.6, align 1
  %907 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.6 = call zeroext i8 @mult(i8 zeroext %906, i8 zeroext %907)
  %conv35.7.6 = zext i8 %call34.7.6 to i32
  %xor36.7.6 = xor i32 %xor.7.6, %conv35.7.6
  %conv37.7.6 = trunc i32 %xor36.7.6 to i8
  store i8 %conv37.7.6, i8* %scevgep41.7.5, align 1
  %scevgep28.7.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 1
  %908 = bitcast i8* %scevgep28.7.6 to [21 x [21 x i8]]*
  %scevgep41.7.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %902, i64 0, i64 1, i64 0
  %909 = bitcast i8* %scevgep41.7.6 to [21 x [21 x i8]]*
  %call16.7.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7.7, i8* %scevgep28.7.6, align 1
  %910 = load i8, i8* %scevgep28.7.6, align 1
  %conv23.7.7 = zext i8 %910 to i32
  %911 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.7 = getelementptr i8, i8* %b, i64 15
  %912 = load i8, i8* %scevgep34.7.7, align 1
  %call28.7.7 = call zeroext i8 @mult(i8 zeroext %911, i8 zeroext %912)
  %conv29.7.7 = zext i8 %call28.7.7 to i32
  %xor.7.7 = xor i32 %conv23.7.7, %conv29.7.7
  %scevgep35.7.7 = getelementptr i8, i8* %a, i64 15
  %913 = load i8, i8* %scevgep35.7.7, align 1
  %914 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.7 = call zeroext i8 @mult(i8 zeroext %913, i8 zeroext %914)
  %conv35.7.7 = zext i8 %call34.7.7 to i32
  %xor36.7.7 = xor i32 %xor.7.7, %conv35.7.7
  %conv37.7.7 = trunc i32 %xor36.7.7 to i8
  store i8 %conv37.7.7, i8* %scevgep41.7.6, align 1
  %scevgep28.7.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %908, i64 0, i64 0, i64 1
  %915 = bitcast i8* %scevgep28.7.7 to [21 x [21 x i8]]*
  %scevgep41.7.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %909, i64 0, i64 1, i64 0
  %916 = bitcast i8* %scevgep41.7.7 to [21 x [21 x i8]]*
  %call16.7.8 = call zeroext i8 (...) @rand()
  store i8 %call16.7.8, i8* %scevgep28.7.7, align 1
  %917 = load i8, i8* %scevgep28.7.7, align 1
  %conv23.7.8 = zext i8 %917 to i32
  %918 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.8 = getelementptr i8, i8* %b, i64 16
  %919 = load i8, i8* %scevgep34.7.8, align 1
  %call28.7.8 = call zeroext i8 @mult(i8 zeroext %918, i8 zeroext %919)
  %conv29.7.8 = zext i8 %call28.7.8 to i32
  %xor.7.8 = xor i32 %conv23.7.8, %conv29.7.8
  %scevgep35.7.8 = getelementptr i8, i8* %a, i64 16
  %920 = load i8, i8* %scevgep35.7.8, align 1
  %921 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.8 = call zeroext i8 @mult(i8 zeroext %920, i8 zeroext %921)
  %conv35.7.8 = zext i8 %call34.7.8 to i32
  %xor36.7.8 = xor i32 %xor.7.8, %conv35.7.8
  %conv37.7.8 = trunc i32 %xor36.7.8 to i8
  store i8 %conv37.7.8, i8* %scevgep41.7.7, align 1
  %scevgep28.7.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %915, i64 0, i64 0, i64 1
  %922 = bitcast i8* %scevgep28.7.8 to [21 x [21 x i8]]*
  %scevgep41.7.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %916, i64 0, i64 1, i64 0
  %923 = bitcast i8* %scevgep41.7.8 to [21 x [21 x i8]]*
  %call16.7.9 = call zeroext i8 (...) @rand()
  store i8 %call16.7.9, i8* %scevgep28.7.8, align 1
  %924 = load i8, i8* %scevgep28.7.8, align 1
  %conv23.7.9 = zext i8 %924 to i32
  %925 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.9 = getelementptr i8, i8* %b, i64 17
  %926 = load i8, i8* %scevgep34.7.9, align 1
  %call28.7.9 = call zeroext i8 @mult(i8 zeroext %925, i8 zeroext %926)
  %conv29.7.9 = zext i8 %call28.7.9 to i32
  %xor.7.9 = xor i32 %conv23.7.9, %conv29.7.9
  %scevgep35.7.9 = getelementptr i8, i8* %a, i64 17
  %927 = load i8, i8* %scevgep35.7.9, align 1
  %928 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.9 = call zeroext i8 @mult(i8 zeroext %927, i8 zeroext %928)
  %conv35.7.9 = zext i8 %call34.7.9 to i32
  %xor36.7.9 = xor i32 %xor.7.9, %conv35.7.9
  %conv37.7.9 = trunc i32 %xor36.7.9 to i8
  store i8 %conv37.7.9, i8* %scevgep41.7.8, align 1
  %scevgep28.7.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %922, i64 0, i64 0, i64 1
  %929 = bitcast i8* %scevgep28.7.9 to [21 x [21 x i8]]*
  %scevgep41.7.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %923, i64 0, i64 1, i64 0
  %930 = bitcast i8* %scevgep41.7.9 to [21 x [21 x i8]]*
  %call16.7.10 = call zeroext i8 (...) @rand()
  store i8 %call16.7.10, i8* %scevgep28.7.9, align 1
  %931 = load i8, i8* %scevgep28.7.9, align 1
  %conv23.7.10 = zext i8 %931 to i32
  %932 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.10 = getelementptr i8, i8* %b, i64 18
  %933 = load i8, i8* %scevgep34.7.10, align 1
  %call28.7.10 = call zeroext i8 @mult(i8 zeroext %932, i8 zeroext %933)
  %conv29.7.10 = zext i8 %call28.7.10 to i32
  %xor.7.10 = xor i32 %conv23.7.10, %conv29.7.10
  %scevgep35.7.10 = getelementptr i8, i8* %a, i64 18
  %934 = load i8, i8* %scevgep35.7.10, align 1
  %935 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.10 = call zeroext i8 @mult(i8 zeroext %934, i8 zeroext %935)
  %conv35.7.10 = zext i8 %call34.7.10 to i32
  %xor36.7.10 = xor i32 %xor.7.10, %conv35.7.10
  %conv37.7.10 = trunc i32 %xor36.7.10 to i8
  store i8 %conv37.7.10, i8* %scevgep41.7.9, align 1
  %scevgep28.7.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %929, i64 0, i64 0, i64 1
  %936 = bitcast i8* %scevgep28.7.10 to [21 x [21 x i8]]*
  %scevgep41.7.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %930, i64 0, i64 1, i64 0
  %937 = bitcast i8* %scevgep41.7.10 to [21 x [21 x i8]]*
  %call16.7.11 = call zeroext i8 (...) @rand()
  store i8 %call16.7.11, i8* %scevgep28.7.10, align 1
  %938 = load i8, i8* %scevgep28.7.10, align 1
  %conv23.7.11 = zext i8 %938 to i32
  %939 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.11 = getelementptr i8, i8* %b, i64 19
  %940 = load i8, i8* %scevgep34.7.11, align 1
  %call28.7.11 = call zeroext i8 @mult(i8 zeroext %939, i8 zeroext %940)
  %conv29.7.11 = zext i8 %call28.7.11 to i32
  %xor.7.11 = xor i32 %conv23.7.11, %conv29.7.11
  %scevgep35.7.11 = getelementptr i8, i8* %a, i64 19
  %941 = load i8, i8* %scevgep35.7.11, align 1
  %942 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.11 = call zeroext i8 @mult(i8 zeroext %941, i8 zeroext %942)
  %conv35.7.11 = zext i8 %call34.7.11 to i32
  %xor36.7.11 = xor i32 %xor.7.11, %conv35.7.11
  %conv37.7.11 = trunc i32 %xor36.7.11 to i8
  store i8 %conv37.7.11, i8* %scevgep41.7.10, align 1
  %scevgep28.7.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %936, i64 0, i64 0, i64 1
  %scevgep41.7.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %937, i64 0, i64 1, i64 0
  %call16.7.12 = call zeroext i8 (...) @rand()
  store i8 %call16.7.12, i8* %scevgep28.7.11, align 1
  %943 = load i8, i8* %scevgep28.7.11, align 1
  %conv23.7.12 = zext i8 %943 to i32
  %944 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.12 = getelementptr i8, i8* %b, i64 20
  %945 = load i8, i8* %scevgep34.7.12, align 1
  %call28.7.12 = call zeroext i8 @mult(i8 zeroext %944, i8 zeroext %945)
  %conv29.7.12 = zext i8 %call28.7.12 to i32
  %xor.7.12 = xor i32 %conv23.7.12, %conv29.7.12
  %scevgep35.7.12 = getelementptr i8, i8* %a, i64 20
  %946 = load i8, i8* %scevgep35.7.12, align 1
  %947 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.12 = call zeroext i8 @mult(i8 zeroext %946, i8 zeroext %947)
  %conv35.7.12 = zext i8 %call34.7.12 to i32
  %xor36.7.12 = xor i32 %xor.7.12, %conv35.7.12
  %conv37.7.12 = trunc i32 %xor36.7.12 to i8
  store i8 %conv37.7.12, i8* %scevgep41.7.11, align 1
  %scevgep26.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %859, i64 0, i64 1, i64 1
  %948 = bitcast i8* %scevgep26.7 to [21 x [21 x i8]]*
  %scevgep39.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %860, i64 0, i64 1, i64 1
  %949 = bitcast i8* %scevgep39.7 to [21 x [21 x i8]]*
  %arrayidx25.8 = getelementptr inbounds i8, i8* %a, i64 8
  %arrayidx33.8 = getelementptr inbounds i8, i8* %b, i64 8
  %call16.8 = call zeroext i8 (...) @rand()
  store i8 %call16.8, i8* %scevgep26.7, align 1
  %950 = load i8, i8* %scevgep26.7, align 1
  %conv23.8 = zext i8 %950 to i32
  %951 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8 = getelementptr i8, i8* %b, i64 9
  %952 = load i8, i8* %scevgep34.8, align 1
  %call28.8 = call zeroext i8 @mult(i8 zeroext %951, i8 zeroext %952)
  %conv29.8 = zext i8 %call28.8 to i32
  %xor.8 = xor i32 %conv23.8, %conv29.8
  %scevgep35.8 = getelementptr i8, i8* %a, i64 9
  %953 = load i8, i8* %scevgep35.8, align 1
  %954 = load i8, i8* %arrayidx33.8, align 1
  %call34.8 = call zeroext i8 @mult(i8 zeroext %953, i8 zeroext %954)
  %conv35.8 = zext i8 %call34.8 to i32
  %xor36.8 = xor i32 %xor.8, %conv35.8
  %conv37.8 = trunc i32 %xor36.8 to i8
  store i8 %conv37.8, i8* %scevgep39.7, align 1
  %scevgep28.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %948, i64 0, i64 0, i64 1
  %955 = bitcast i8* %scevgep28.8 to [21 x [21 x i8]]*
  %scevgep41.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %949, i64 0, i64 1, i64 0
  %956 = bitcast i8* %scevgep41.8 to [21 x [21 x i8]]*
  %call16.8.1 = call zeroext i8 (...) @rand()
  store i8 %call16.8.1, i8* %scevgep28.8, align 1
  %957 = load i8, i8* %scevgep28.8, align 1
  %conv23.8.1 = zext i8 %957 to i32
  %958 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.1 = getelementptr i8, i8* %b, i64 10
  %959 = load i8, i8* %scevgep34.8.1, align 1
  %call28.8.1 = call zeroext i8 @mult(i8 zeroext %958, i8 zeroext %959)
  %conv29.8.1 = zext i8 %call28.8.1 to i32
  %xor.8.1 = xor i32 %conv23.8.1, %conv29.8.1
  %scevgep35.8.1 = getelementptr i8, i8* %a, i64 10
  %960 = load i8, i8* %scevgep35.8.1, align 1
  %961 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.1 = call zeroext i8 @mult(i8 zeroext %960, i8 zeroext %961)
  %conv35.8.1 = zext i8 %call34.8.1 to i32
  %xor36.8.1 = xor i32 %xor.8.1, %conv35.8.1
  %conv37.8.1 = trunc i32 %xor36.8.1 to i8
  store i8 %conv37.8.1, i8* %scevgep41.8, align 1
  %scevgep28.8.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %955, i64 0, i64 0, i64 1
  %962 = bitcast i8* %scevgep28.8.1 to [21 x [21 x i8]]*
  %scevgep41.8.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %956, i64 0, i64 1, i64 0
  %963 = bitcast i8* %scevgep41.8.1 to [21 x [21 x i8]]*
  %call16.8.2 = call zeroext i8 (...) @rand()
  store i8 %call16.8.2, i8* %scevgep28.8.1, align 1
  %964 = load i8, i8* %scevgep28.8.1, align 1
  %conv23.8.2 = zext i8 %964 to i32
  %965 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.2 = getelementptr i8, i8* %b, i64 11
  %966 = load i8, i8* %scevgep34.8.2, align 1
  %call28.8.2 = call zeroext i8 @mult(i8 zeroext %965, i8 zeroext %966)
  %conv29.8.2 = zext i8 %call28.8.2 to i32
  %xor.8.2 = xor i32 %conv23.8.2, %conv29.8.2
  %scevgep35.8.2 = getelementptr i8, i8* %a, i64 11
  %967 = load i8, i8* %scevgep35.8.2, align 1
  %968 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.2 = call zeroext i8 @mult(i8 zeroext %967, i8 zeroext %968)
  %conv35.8.2 = zext i8 %call34.8.2 to i32
  %xor36.8.2 = xor i32 %xor.8.2, %conv35.8.2
  %conv37.8.2 = trunc i32 %xor36.8.2 to i8
  store i8 %conv37.8.2, i8* %scevgep41.8.1, align 1
  %scevgep28.8.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %962, i64 0, i64 0, i64 1
  %969 = bitcast i8* %scevgep28.8.2 to [21 x [21 x i8]]*
  %scevgep41.8.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %963, i64 0, i64 1, i64 0
  %970 = bitcast i8* %scevgep41.8.2 to [21 x [21 x i8]]*
  %call16.8.3 = call zeroext i8 (...) @rand()
  store i8 %call16.8.3, i8* %scevgep28.8.2, align 1
  %971 = load i8, i8* %scevgep28.8.2, align 1
  %conv23.8.3 = zext i8 %971 to i32
  %972 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.3 = getelementptr i8, i8* %b, i64 12
  %973 = load i8, i8* %scevgep34.8.3, align 1
  %call28.8.3 = call zeroext i8 @mult(i8 zeroext %972, i8 zeroext %973)
  %conv29.8.3 = zext i8 %call28.8.3 to i32
  %xor.8.3 = xor i32 %conv23.8.3, %conv29.8.3
  %scevgep35.8.3 = getelementptr i8, i8* %a, i64 12
  %974 = load i8, i8* %scevgep35.8.3, align 1
  %975 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.3 = call zeroext i8 @mult(i8 zeroext %974, i8 zeroext %975)
  %conv35.8.3 = zext i8 %call34.8.3 to i32
  %xor36.8.3 = xor i32 %xor.8.3, %conv35.8.3
  %conv37.8.3 = trunc i32 %xor36.8.3 to i8
  store i8 %conv37.8.3, i8* %scevgep41.8.2, align 1
  %scevgep28.8.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %969, i64 0, i64 0, i64 1
  %976 = bitcast i8* %scevgep28.8.3 to [21 x [21 x i8]]*
  %scevgep41.8.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %970, i64 0, i64 1, i64 0
  %977 = bitcast i8* %scevgep41.8.3 to [21 x [21 x i8]]*
  %call16.8.4 = call zeroext i8 (...) @rand()
  store i8 %call16.8.4, i8* %scevgep28.8.3, align 1
  %978 = load i8, i8* %scevgep28.8.3, align 1
  %conv23.8.4 = zext i8 %978 to i32
  %979 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.4 = getelementptr i8, i8* %b, i64 13
  %980 = load i8, i8* %scevgep34.8.4, align 1
  %call28.8.4 = call zeroext i8 @mult(i8 zeroext %979, i8 zeroext %980)
  %conv29.8.4 = zext i8 %call28.8.4 to i32
  %xor.8.4 = xor i32 %conv23.8.4, %conv29.8.4
  %scevgep35.8.4 = getelementptr i8, i8* %a, i64 13
  %981 = load i8, i8* %scevgep35.8.4, align 1
  %982 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.4 = call zeroext i8 @mult(i8 zeroext %981, i8 zeroext %982)
  %conv35.8.4 = zext i8 %call34.8.4 to i32
  %xor36.8.4 = xor i32 %xor.8.4, %conv35.8.4
  %conv37.8.4 = trunc i32 %xor36.8.4 to i8
  store i8 %conv37.8.4, i8* %scevgep41.8.3, align 1
  %scevgep28.8.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %976, i64 0, i64 0, i64 1
  %983 = bitcast i8* %scevgep28.8.4 to [21 x [21 x i8]]*
  %scevgep41.8.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %977, i64 0, i64 1, i64 0
  %984 = bitcast i8* %scevgep41.8.4 to [21 x [21 x i8]]*
  %call16.8.5 = call zeroext i8 (...) @rand()
  store i8 %call16.8.5, i8* %scevgep28.8.4, align 1
  %985 = load i8, i8* %scevgep28.8.4, align 1
  %conv23.8.5 = zext i8 %985 to i32
  %986 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.5 = getelementptr i8, i8* %b, i64 14
  %987 = load i8, i8* %scevgep34.8.5, align 1
  %call28.8.5 = call zeroext i8 @mult(i8 zeroext %986, i8 zeroext %987)
  %conv29.8.5 = zext i8 %call28.8.5 to i32
  %xor.8.5 = xor i32 %conv23.8.5, %conv29.8.5
  %scevgep35.8.5 = getelementptr i8, i8* %a, i64 14
  %988 = load i8, i8* %scevgep35.8.5, align 1
  %989 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.5 = call zeroext i8 @mult(i8 zeroext %988, i8 zeroext %989)
  %conv35.8.5 = zext i8 %call34.8.5 to i32
  %xor36.8.5 = xor i32 %xor.8.5, %conv35.8.5
  %conv37.8.5 = trunc i32 %xor36.8.5 to i8
  store i8 %conv37.8.5, i8* %scevgep41.8.4, align 1
  %scevgep28.8.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %983, i64 0, i64 0, i64 1
  %990 = bitcast i8* %scevgep28.8.5 to [21 x [21 x i8]]*
  %scevgep41.8.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %984, i64 0, i64 1, i64 0
  %991 = bitcast i8* %scevgep41.8.5 to [21 x [21 x i8]]*
  %call16.8.6 = call zeroext i8 (...) @rand()
  store i8 %call16.8.6, i8* %scevgep28.8.5, align 1
  %992 = load i8, i8* %scevgep28.8.5, align 1
  %conv23.8.6 = zext i8 %992 to i32
  %993 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.6 = getelementptr i8, i8* %b, i64 15
  %994 = load i8, i8* %scevgep34.8.6, align 1
  %call28.8.6 = call zeroext i8 @mult(i8 zeroext %993, i8 zeroext %994)
  %conv29.8.6 = zext i8 %call28.8.6 to i32
  %xor.8.6 = xor i32 %conv23.8.6, %conv29.8.6
  %scevgep35.8.6 = getelementptr i8, i8* %a, i64 15
  %995 = load i8, i8* %scevgep35.8.6, align 1
  %996 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.6 = call zeroext i8 @mult(i8 zeroext %995, i8 zeroext %996)
  %conv35.8.6 = zext i8 %call34.8.6 to i32
  %xor36.8.6 = xor i32 %xor.8.6, %conv35.8.6
  %conv37.8.6 = trunc i32 %xor36.8.6 to i8
  store i8 %conv37.8.6, i8* %scevgep41.8.5, align 1
  %scevgep28.8.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %990, i64 0, i64 0, i64 1
  %997 = bitcast i8* %scevgep28.8.6 to [21 x [21 x i8]]*
  %scevgep41.8.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %991, i64 0, i64 1, i64 0
  %998 = bitcast i8* %scevgep41.8.6 to [21 x [21 x i8]]*
  %call16.8.7 = call zeroext i8 (...) @rand()
  store i8 %call16.8.7, i8* %scevgep28.8.6, align 1
  %999 = load i8, i8* %scevgep28.8.6, align 1
  %conv23.8.7 = zext i8 %999 to i32
  %1000 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.7 = getelementptr i8, i8* %b, i64 16
  %1001 = load i8, i8* %scevgep34.8.7, align 1
  %call28.8.7 = call zeroext i8 @mult(i8 zeroext %1000, i8 zeroext %1001)
  %conv29.8.7 = zext i8 %call28.8.7 to i32
  %xor.8.7 = xor i32 %conv23.8.7, %conv29.8.7
  %scevgep35.8.7 = getelementptr i8, i8* %a, i64 16
  %1002 = load i8, i8* %scevgep35.8.7, align 1
  %1003 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.7 = call zeroext i8 @mult(i8 zeroext %1002, i8 zeroext %1003)
  %conv35.8.7 = zext i8 %call34.8.7 to i32
  %xor36.8.7 = xor i32 %xor.8.7, %conv35.8.7
  %conv37.8.7 = trunc i32 %xor36.8.7 to i8
  store i8 %conv37.8.7, i8* %scevgep41.8.6, align 1
  %scevgep28.8.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %997, i64 0, i64 0, i64 1
  %1004 = bitcast i8* %scevgep28.8.7 to [21 x [21 x i8]]*
  %scevgep41.8.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %998, i64 0, i64 1, i64 0
  %1005 = bitcast i8* %scevgep41.8.7 to [21 x [21 x i8]]*
  %call16.8.8 = call zeroext i8 (...) @rand()
  store i8 %call16.8.8, i8* %scevgep28.8.7, align 1
  %1006 = load i8, i8* %scevgep28.8.7, align 1
  %conv23.8.8 = zext i8 %1006 to i32
  %1007 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.8 = getelementptr i8, i8* %b, i64 17
  %1008 = load i8, i8* %scevgep34.8.8, align 1
  %call28.8.8 = call zeroext i8 @mult(i8 zeroext %1007, i8 zeroext %1008)
  %conv29.8.8 = zext i8 %call28.8.8 to i32
  %xor.8.8 = xor i32 %conv23.8.8, %conv29.8.8
  %scevgep35.8.8 = getelementptr i8, i8* %a, i64 17
  %1009 = load i8, i8* %scevgep35.8.8, align 1
  %1010 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.8 = call zeroext i8 @mult(i8 zeroext %1009, i8 zeroext %1010)
  %conv35.8.8 = zext i8 %call34.8.8 to i32
  %xor36.8.8 = xor i32 %xor.8.8, %conv35.8.8
  %conv37.8.8 = trunc i32 %xor36.8.8 to i8
  store i8 %conv37.8.8, i8* %scevgep41.8.7, align 1
  %scevgep28.8.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1004, i64 0, i64 0, i64 1
  %1011 = bitcast i8* %scevgep28.8.8 to [21 x [21 x i8]]*
  %scevgep41.8.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1005, i64 0, i64 1, i64 0
  %1012 = bitcast i8* %scevgep41.8.8 to [21 x [21 x i8]]*
  %call16.8.9 = call zeroext i8 (...) @rand()
  store i8 %call16.8.9, i8* %scevgep28.8.8, align 1
  %1013 = load i8, i8* %scevgep28.8.8, align 1
  %conv23.8.9 = zext i8 %1013 to i32
  %1014 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.9 = getelementptr i8, i8* %b, i64 18
  %1015 = load i8, i8* %scevgep34.8.9, align 1
  %call28.8.9 = call zeroext i8 @mult(i8 zeroext %1014, i8 zeroext %1015)
  %conv29.8.9 = zext i8 %call28.8.9 to i32
  %xor.8.9 = xor i32 %conv23.8.9, %conv29.8.9
  %scevgep35.8.9 = getelementptr i8, i8* %a, i64 18
  %1016 = load i8, i8* %scevgep35.8.9, align 1
  %1017 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.9 = call zeroext i8 @mult(i8 zeroext %1016, i8 zeroext %1017)
  %conv35.8.9 = zext i8 %call34.8.9 to i32
  %xor36.8.9 = xor i32 %xor.8.9, %conv35.8.9
  %conv37.8.9 = trunc i32 %xor36.8.9 to i8
  store i8 %conv37.8.9, i8* %scevgep41.8.8, align 1
  %scevgep28.8.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1011, i64 0, i64 0, i64 1
  %1018 = bitcast i8* %scevgep28.8.9 to [21 x [21 x i8]]*
  %scevgep41.8.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1012, i64 0, i64 1, i64 0
  %1019 = bitcast i8* %scevgep41.8.9 to [21 x [21 x i8]]*
  %call16.8.10 = call zeroext i8 (...) @rand()
  store i8 %call16.8.10, i8* %scevgep28.8.9, align 1
  %1020 = load i8, i8* %scevgep28.8.9, align 1
  %conv23.8.10 = zext i8 %1020 to i32
  %1021 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.10 = getelementptr i8, i8* %b, i64 19
  %1022 = load i8, i8* %scevgep34.8.10, align 1
  %call28.8.10 = call zeroext i8 @mult(i8 zeroext %1021, i8 zeroext %1022)
  %conv29.8.10 = zext i8 %call28.8.10 to i32
  %xor.8.10 = xor i32 %conv23.8.10, %conv29.8.10
  %scevgep35.8.10 = getelementptr i8, i8* %a, i64 19
  %1023 = load i8, i8* %scevgep35.8.10, align 1
  %1024 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.10 = call zeroext i8 @mult(i8 zeroext %1023, i8 zeroext %1024)
  %conv35.8.10 = zext i8 %call34.8.10 to i32
  %xor36.8.10 = xor i32 %xor.8.10, %conv35.8.10
  %conv37.8.10 = trunc i32 %xor36.8.10 to i8
  store i8 %conv37.8.10, i8* %scevgep41.8.9, align 1
  %scevgep28.8.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1018, i64 0, i64 0, i64 1
  %scevgep41.8.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1019, i64 0, i64 1, i64 0
  %call16.8.11 = call zeroext i8 (...) @rand()
  store i8 %call16.8.11, i8* %scevgep28.8.10, align 1
  %1025 = load i8, i8* %scevgep28.8.10, align 1
  %conv23.8.11 = zext i8 %1025 to i32
  %1026 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.11 = getelementptr i8, i8* %b, i64 20
  %1027 = load i8, i8* %scevgep34.8.11, align 1
  %call28.8.11 = call zeroext i8 @mult(i8 zeroext %1026, i8 zeroext %1027)
  %conv29.8.11 = zext i8 %call28.8.11 to i32
  %xor.8.11 = xor i32 %conv23.8.11, %conv29.8.11
  %scevgep35.8.11 = getelementptr i8, i8* %a, i64 20
  %1028 = load i8, i8* %scevgep35.8.11, align 1
  %1029 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.11 = call zeroext i8 @mult(i8 zeroext %1028, i8 zeroext %1029)
  %conv35.8.11 = zext i8 %call34.8.11 to i32
  %xor36.8.11 = xor i32 %xor.8.11, %conv35.8.11
  %conv37.8.11 = trunc i32 %xor36.8.11 to i8
  store i8 %conv37.8.11, i8* %scevgep41.8.10, align 1
  %scevgep26.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %948, i64 0, i64 1, i64 1
  %1030 = bitcast i8* %scevgep26.8 to [21 x [21 x i8]]*
  %scevgep39.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %949, i64 0, i64 1, i64 1
  %1031 = bitcast i8* %scevgep39.8 to [21 x [21 x i8]]*
  %arrayidx25.9 = getelementptr inbounds i8, i8* %a, i64 9
  %arrayidx33.9 = getelementptr inbounds i8, i8* %b, i64 9
  %call16.9 = call zeroext i8 (...) @rand()
  store i8 %call16.9, i8* %scevgep26.8, align 1
  %1032 = load i8, i8* %scevgep26.8, align 1
  %conv23.9 = zext i8 %1032 to i32
  %1033 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9 = getelementptr i8, i8* %b, i64 10
  %1034 = load i8, i8* %scevgep34.9, align 1
  %call28.9 = call zeroext i8 @mult(i8 zeroext %1033, i8 zeroext %1034)
  %conv29.9 = zext i8 %call28.9 to i32
  %xor.9 = xor i32 %conv23.9, %conv29.9
  %scevgep35.9 = getelementptr i8, i8* %a, i64 10
  %1035 = load i8, i8* %scevgep35.9, align 1
  %1036 = load i8, i8* %arrayidx33.9, align 1
  %call34.9 = call zeroext i8 @mult(i8 zeroext %1035, i8 zeroext %1036)
  %conv35.9 = zext i8 %call34.9 to i32
  %xor36.9 = xor i32 %xor.9, %conv35.9
  %conv37.9 = trunc i32 %xor36.9 to i8
  store i8 %conv37.9, i8* %scevgep39.8, align 1
  %scevgep28.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1030, i64 0, i64 0, i64 1
  %1037 = bitcast i8* %scevgep28.9 to [21 x [21 x i8]]*
  %scevgep41.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1031, i64 0, i64 1, i64 0
  %1038 = bitcast i8* %scevgep41.9 to [21 x [21 x i8]]*
  %call16.9.1 = call zeroext i8 (...) @rand()
  store i8 %call16.9.1, i8* %scevgep28.9, align 1
  %1039 = load i8, i8* %scevgep28.9, align 1
  %conv23.9.1 = zext i8 %1039 to i32
  %1040 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.1 = getelementptr i8, i8* %b, i64 11
  %1041 = load i8, i8* %scevgep34.9.1, align 1
  %call28.9.1 = call zeroext i8 @mult(i8 zeroext %1040, i8 zeroext %1041)
  %conv29.9.1 = zext i8 %call28.9.1 to i32
  %xor.9.1 = xor i32 %conv23.9.1, %conv29.9.1
  %scevgep35.9.1 = getelementptr i8, i8* %a, i64 11
  %1042 = load i8, i8* %scevgep35.9.1, align 1
  %1043 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.1 = call zeroext i8 @mult(i8 zeroext %1042, i8 zeroext %1043)
  %conv35.9.1 = zext i8 %call34.9.1 to i32
  %xor36.9.1 = xor i32 %xor.9.1, %conv35.9.1
  %conv37.9.1 = trunc i32 %xor36.9.1 to i8
  store i8 %conv37.9.1, i8* %scevgep41.9, align 1
  %scevgep28.9.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1037, i64 0, i64 0, i64 1
  %1044 = bitcast i8* %scevgep28.9.1 to [21 x [21 x i8]]*
  %scevgep41.9.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1038, i64 0, i64 1, i64 0
  %1045 = bitcast i8* %scevgep41.9.1 to [21 x [21 x i8]]*
  %call16.9.2 = call zeroext i8 (...) @rand()
  store i8 %call16.9.2, i8* %scevgep28.9.1, align 1
  %1046 = load i8, i8* %scevgep28.9.1, align 1
  %conv23.9.2 = zext i8 %1046 to i32
  %1047 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.2 = getelementptr i8, i8* %b, i64 12
  %1048 = load i8, i8* %scevgep34.9.2, align 1
  %call28.9.2 = call zeroext i8 @mult(i8 zeroext %1047, i8 zeroext %1048)
  %conv29.9.2 = zext i8 %call28.9.2 to i32
  %xor.9.2 = xor i32 %conv23.9.2, %conv29.9.2
  %scevgep35.9.2 = getelementptr i8, i8* %a, i64 12
  %1049 = load i8, i8* %scevgep35.9.2, align 1
  %1050 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.2 = call zeroext i8 @mult(i8 zeroext %1049, i8 zeroext %1050)
  %conv35.9.2 = zext i8 %call34.9.2 to i32
  %xor36.9.2 = xor i32 %xor.9.2, %conv35.9.2
  %conv37.9.2 = trunc i32 %xor36.9.2 to i8
  store i8 %conv37.9.2, i8* %scevgep41.9.1, align 1
  %scevgep28.9.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1044, i64 0, i64 0, i64 1
  %1051 = bitcast i8* %scevgep28.9.2 to [21 x [21 x i8]]*
  %scevgep41.9.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1045, i64 0, i64 1, i64 0
  %1052 = bitcast i8* %scevgep41.9.2 to [21 x [21 x i8]]*
  %call16.9.3 = call zeroext i8 (...) @rand()
  store i8 %call16.9.3, i8* %scevgep28.9.2, align 1
  %1053 = load i8, i8* %scevgep28.9.2, align 1
  %conv23.9.3 = zext i8 %1053 to i32
  %1054 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.3 = getelementptr i8, i8* %b, i64 13
  %1055 = load i8, i8* %scevgep34.9.3, align 1
  %call28.9.3 = call zeroext i8 @mult(i8 zeroext %1054, i8 zeroext %1055)
  %conv29.9.3 = zext i8 %call28.9.3 to i32
  %xor.9.3 = xor i32 %conv23.9.3, %conv29.9.3
  %scevgep35.9.3 = getelementptr i8, i8* %a, i64 13
  %1056 = load i8, i8* %scevgep35.9.3, align 1
  %1057 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.3 = call zeroext i8 @mult(i8 zeroext %1056, i8 zeroext %1057)
  %conv35.9.3 = zext i8 %call34.9.3 to i32
  %xor36.9.3 = xor i32 %xor.9.3, %conv35.9.3
  %conv37.9.3 = trunc i32 %xor36.9.3 to i8
  store i8 %conv37.9.3, i8* %scevgep41.9.2, align 1
  %scevgep28.9.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1051, i64 0, i64 0, i64 1
  %1058 = bitcast i8* %scevgep28.9.3 to [21 x [21 x i8]]*
  %scevgep41.9.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1052, i64 0, i64 1, i64 0
  %1059 = bitcast i8* %scevgep41.9.3 to [21 x [21 x i8]]*
  %call16.9.4 = call zeroext i8 (...) @rand()
  store i8 %call16.9.4, i8* %scevgep28.9.3, align 1
  %1060 = load i8, i8* %scevgep28.9.3, align 1
  %conv23.9.4 = zext i8 %1060 to i32
  %1061 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.4 = getelementptr i8, i8* %b, i64 14
  %1062 = load i8, i8* %scevgep34.9.4, align 1
  %call28.9.4 = call zeroext i8 @mult(i8 zeroext %1061, i8 zeroext %1062)
  %conv29.9.4 = zext i8 %call28.9.4 to i32
  %xor.9.4 = xor i32 %conv23.9.4, %conv29.9.4
  %scevgep35.9.4 = getelementptr i8, i8* %a, i64 14
  %1063 = load i8, i8* %scevgep35.9.4, align 1
  %1064 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.4 = call zeroext i8 @mult(i8 zeroext %1063, i8 zeroext %1064)
  %conv35.9.4 = zext i8 %call34.9.4 to i32
  %xor36.9.4 = xor i32 %xor.9.4, %conv35.9.4
  %conv37.9.4 = trunc i32 %xor36.9.4 to i8
  store i8 %conv37.9.4, i8* %scevgep41.9.3, align 1
  %scevgep28.9.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1058, i64 0, i64 0, i64 1
  %1065 = bitcast i8* %scevgep28.9.4 to [21 x [21 x i8]]*
  %scevgep41.9.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1059, i64 0, i64 1, i64 0
  %1066 = bitcast i8* %scevgep41.9.4 to [21 x [21 x i8]]*
  %call16.9.5 = call zeroext i8 (...) @rand()
  store i8 %call16.9.5, i8* %scevgep28.9.4, align 1
  %1067 = load i8, i8* %scevgep28.9.4, align 1
  %conv23.9.5 = zext i8 %1067 to i32
  %1068 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.5 = getelementptr i8, i8* %b, i64 15
  %1069 = load i8, i8* %scevgep34.9.5, align 1
  %call28.9.5 = call zeroext i8 @mult(i8 zeroext %1068, i8 zeroext %1069)
  %conv29.9.5 = zext i8 %call28.9.5 to i32
  %xor.9.5 = xor i32 %conv23.9.5, %conv29.9.5
  %scevgep35.9.5 = getelementptr i8, i8* %a, i64 15
  %1070 = load i8, i8* %scevgep35.9.5, align 1
  %1071 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.5 = call zeroext i8 @mult(i8 zeroext %1070, i8 zeroext %1071)
  %conv35.9.5 = zext i8 %call34.9.5 to i32
  %xor36.9.5 = xor i32 %xor.9.5, %conv35.9.5
  %conv37.9.5 = trunc i32 %xor36.9.5 to i8
  store i8 %conv37.9.5, i8* %scevgep41.9.4, align 1
  %scevgep28.9.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1065, i64 0, i64 0, i64 1
  %1072 = bitcast i8* %scevgep28.9.5 to [21 x [21 x i8]]*
  %scevgep41.9.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1066, i64 0, i64 1, i64 0
  %1073 = bitcast i8* %scevgep41.9.5 to [21 x [21 x i8]]*
  %call16.9.6 = call zeroext i8 (...) @rand()
  store i8 %call16.9.6, i8* %scevgep28.9.5, align 1
  %1074 = load i8, i8* %scevgep28.9.5, align 1
  %conv23.9.6 = zext i8 %1074 to i32
  %1075 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.6 = getelementptr i8, i8* %b, i64 16
  %1076 = load i8, i8* %scevgep34.9.6, align 1
  %call28.9.6 = call zeroext i8 @mult(i8 zeroext %1075, i8 zeroext %1076)
  %conv29.9.6 = zext i8 %call28.9.6 to i32
  %xor.9.6 = xor i32 %conv23.9.6, %conv29.9.6
  %scevgep35.9.6 = getelementptr i8, i8* %a, i64 16
  %1077 = load i8, i8* %scevgep35.9.6, align 1
  %1078 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.6 = call zeroext i8 @mult(i8 zeroext %1077, i8 zeroext %1078)
  %conv35.9.6 = zext i8 %call34.9.6 to i32
  %xor36.9.6 = xor i32 %xor.9.6, %conv35.9.6
  %conv37.9.6 = trunc i32 %xor36.9.6 to i8
  store i8 %conv37.9.6, i8* %scevgep41.9.5, align 1
  %scevgep28.9.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1072, i64 0, i64 0, i64 1
  %1079 = bitcast i8* %scevgep28.9.6 to [21 x [21 x i8]]*
  %scevgep41.9.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1073, i64 0, i64 1, i64 0
  %1080 = bitcast i8* %scevgep41.9.6 to [21 x [21 x i8]]*
  %call16.9.7 = call zeroext i8 (...) @rand()
  store i8 %call16.9.7, i8* %scevgep28.9.6, align 1
  %1081 = load i8, i8* %scevgep28.9.6, align 1
  %conv23.9.7 = zext i8 %1081 to i32
  %1082 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.7 = getelementptr i8, i8* %b, i64 17
  %1083 = load i8, i8* %scevgep34.9.7, align 1
  %call28.9.7 = call zeroext i8 @mult(i8 zeroext %1082, i8 zeroext %1083)
  %conv29.9.7 = zext i8 %call28.9.7 to i32
  %xor.9.7 = xor i32 %conv23.9.7, %conv29.9.7
  %scevgep35.9.7 = getelementptr i8, i8* %a, i64 17
  %1084 = load i8, i8* %scevgep35.9.7, align 1
  %1085 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.7 = call zeroext i8 @mult(i8 zeroext %1084, i8 zeroext %1085)
  %conv35.9.7 = zext i8 %call34.9.7 to i32
  %xor36.9.7 = xor i32 %xor.9.7, %conv35.9.7
  %conv37.9.7 = trunc i32 %xor36.9.7 to i8
  store i8 %conv37.9.7, i8* %scevgep41.9.6, align 1
  %scevgep28.9.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1079, i64 0, i64 0, i64 1
  %1086 = bitcast i8* %scevgep28.9.7 to [21 x [21 x i8]]*
  %scevgep41.9.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1080, i64 0, i64 1, i64 0
  %1087 = bitcast i8* %scevgep41.9.7 to [21 x [21 x i8]]*
  %call16.9.8 = call zeroext i8 (...) @rand()
  store i8 %call16.9.8, i8* %scevgep28.9.7, align 1
  %1088 = load i8, i8* %scevgep28.9.7, align 1
  %conv23.9.8 = zext i8 %1088 to i32
  %1089 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.8 = getelementptr i8, i8* %b, i64 18
  %1090 = load i8, i8* %scevgep34.9.8, align 1
  %call28.9.8 = call zeroext i8 @mult(i8 zeroext %1089, i8 zeroext %1090)
  %conv29.9.8 = zext i8 %call28.9.8 to i32
  %xor.9.8 = xor i32 %conv23.9.8, %conv29.9.8
  %scevgep35.9.8 = getelementptr i8, i8* %a, i64 18
  %1091 = load i8, i8* %scevgep35.9.8, align 1
  %1092 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.8 = call zeroext i8 @mult(i8 zeroext %1091, i8 zeroext %1092)
  %conv35.9.8 = zext i8 %call34.9.8 to i32
  %xor36.9.8 = xor i32 %xor.9.8, %conv35.9.8
  %conv37.9.8 = trunc i32 %xor36.9.8 to i8
  store i8 %conv37.9.8, i8* %scevgep41.9.7, align 1
  %scevgep28.9.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1086, i64 0, i64 0, i64 1
  %1093 = bitcast i8* %scevgep28.9.8 to [21 x [21 x i8]]*
  %scevgep41.9.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1087, i64 0, i64 1, i64 0
  %1094 = bitcast i8* %scevgep41.9.8 to [21 x [21 x i8]]*
  %call16.9.9 = call zeroext i8 (...) @rand()
  store i8 %call16.9.9, i8* %scevgep28.9.8, align 1
  %1095 = load i8, i8* %scevgep28.9.8, align 1
  %conv23.9.9 = zext i8 %1095 to i32
  %1096 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.9 = getelementptr i8, i8* %b, i64 19
  %1097 = load i8, i8* %scevgep34.9.9, align 1
  %call28.9.9 = call zeroext i8 @mult(i8 zeroext %1096, i8 zeroext %1097)
  %conv29.9.9 = zext i8 %call28.9.9 to i32
  %xor.9.9 = xor i32 %conv23.9.9, %conv29.9.9
  %scevgep35.9.9 = getelementptr i8, i8* %a, i64 19
  %1098 = load i8, i8* %scevgep35.9.9, align 1
  %1099 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.9 = call zeroext i8 @mult(i8 zeroext %1098, i8 zeroext %1099)
  %conv35.9.9 = zext i8 %call34.9.9 to i32
  %xor36.9.9 = xor i32 %xor.9.9, %conv35.9.9
  %conv37.9.9 = trunc i32 %xor36.9.9 to i8
  store i8 %conv37.9.9, i8* %scevgep41.9.8, align 1
  %scevgep28.9.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1093, i64 0, i64 0, i64 1
  %scevgep41.9.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1094, i64 0, i64 1, i64 0
  %call16.9.10 = call zeroext i8 (...) @rand()
  store i8 %call16.9.10, i8* %scevgep28.9.9, align 1
  %1100 = load i8, i8* %scevgep28.9.9, align 1
  %conv23.9.10 = zext i8 %1100 to i32
  %1101 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9.10 = getelementptr i8, i8* %b, i64 20
  %1102 = load i8, i8* %scevgep34.9.10, align 1
  %call28.9.10 = call zeroext i8 @mult(i8 zeroext %1101, i8 zeroext %1102)
  %conv29.9.10 = zext i8 %call28.9.10 to i32
  %xor.9.10 = xor i32 %conv23.9.10, %conv29.9.10
  %scevgep35.9.10 = getelementptr i8, i8* %a, i64 20
  %1103 = load i8, i8* %scevgep35.9.10, align 1
  %1104 = load i8, i8* %arrayidx33.9, align 1
  %call34.9.10 = call zeroext i8 @mult(i8 zeroext %1103, i8 zeroext %1104)
  %conv35.9.10 = zext i8 %call34.9.10 to i32
  %xor36.9.10 = xor i32 %xor.9.10, %conv35.9.10
  %conv37.9.10 = trunc i32 %xor36.9.10 to i8
  store i8 %conv37.9.10, i8* %scevgep41.9.9, align 1
  %scevgep26.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1030, i64 0, i64 1, i64 1
  %1105 = bitcast i8* %scevgep26.9 to [21 x [21 x i8]]*
  %scevgep39.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1031, i64 0, i64 1, i64 1
  %1106 = bitcast i8* %scevgep39.9 to [21 x [21 x i8]]*
  %arrayidx25.10 = getelementptr inbounds i8, i8* %a, i64 10
  %arrayidx33.10 = getelementptr inbounds i8, i8* %b, i64 10
  %call16.10 = call zeroext i8 (...) @rand()
  store i8 %call16.10, i8* %scevgep26.9, align 1
  %1107 = load i8, i8* %scevgep26.9, align 1
  %conv23.10 = zext i8 %1107 to i32
  %1108 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10 = getelementptr i8, i8* %b, i64 11
  %1109 = load i8, i8* %scevgep34.10, align 1
  %call28.10 = call zeroext i8 @mult(i8 zeroext %1108, i8 zeroext %1109)
  %conv29.10 = zext i8 %call28.10 to i32
  %xor.10 = xor i32 %conv23.10, %conv29.10
  %scevgep35.10 = getelementptr i8, i8* %a, i64 11
  %1110 = load i8, i8* %scevgep35.10, align 1
  %1111 = load i8, i8* %arrayidx33.10, align 1
  %call34.10 = call zeroext i8 @mult(i8 zeroext %1110, i8 zeroext %1111)
  %conv35.10 = zext i8 %call34.10 to i32
  %xor36.10 = xor i32 %xor.10, %conv35.10
  %conv37.10 = trunc i32 %xor36.10 to i8
  store i8 %conv37.10, i8* %scevgep39.9, align 1
  %scevgep28.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1105, i64 0, i64 0, i64 1
  %1112 = bitcast i8* %scevgep28.10 to [21 x [21 x i8]]*
  %scevgep41.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1106, i64 0, i64 1, i64 0
  %1113 = bitcast i8* %scevgep41.10 to [21 x [21 x i8]]*
  %call16.10.1 = call zeroext i8 (...) @rand()
  store i8 %call16.10.1, i8* %scevgep28.10, align 1
  %1114 = load i8, i8* %scevgep28.10, align 1
  %conv23.10.1 = zext i8 %1114 to i32
  %1115 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.1 = getelementptr i8, i8* %b, i64 12
  %1116 = load i8, i8* %scevgep34.10.1, align 1
  %call28.10.1 = call zeroext i8 @mult(i8 zeroext %1115, i8 zeroext %1116)
  %conv29.10.1 = zext i8 %call28.10.1 to i32
  %xor.10.1 = xor i32 %conv23.10.1, %conv29.10.1
  %scevgep35.10.1 = getelementptr i8, i8* %a, i64 12
  %1117 = load i8, i8* %scevgep35.10.1, align 1
  %1118 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.1 = call zeroext i8 @mult(i8 zeroext %1117, i8 zeroext %1118)
  %conv35.10.1 = zext i8 %call34.10.1 to i32
  %xor36.10.1 = xor i32 %xor.10.1, %conv35.10.1
  %conv37.10.1 = trunc i32 %xor36.10.1 to i8
  store i8 %conv37.10.1, i8* %scevgep41.10, align 1
  %scevgep28.10.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1112, i64 0, i64 0, i64 1
  %1119 = bitcast i8* %scevgep28.10.1 to [21 x [21 x i8]]*
  %scevgep41.10.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1113, i64 0, i64 1, i64 0
  %1120 = bitcast i8* %scevgep41.10.1 to [21 x [21 x i8]]*
  %call16.10.2 = call zeroext i8 (...) @rand()
  store i8 %call16.10.2, i8* %scevgep28.10.1, align 1
  %1121 = load i8, i8* %scevgep28.10.1, align 1
  %conv23.10.2 = zext i8 %1121 to i32
  %1122 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.2 = getelementptr i8, i8* %b, i64 13
  %1123 = load i8, i8* %scevgep34.10.2, align 1
  %call28.10.2 = call zeroext i8 @mult(i8 zeroext %1122, i8 zeroext %1123)
  %conv29.10.2 = zext i8 %call28.10.2 to i32
  %xor.10.2 = xor i32 %conv23.10.2, %conv29.10.2
  %scevgep35.10.2 = getelementptr i8, i8* %a, i64 13
  %1124 = load i8, i8* %scevgep35.10.2, align 1
  %1125 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.2 = call zeroext i8 @mult(i8 zeroext %1124, i8 zeroext %1125)
  %conv35.10.2 = zext i8 %call34.10.2 to i32
  %xor36.10.2 = xor i32 %xor.10.2, %conv35.10.2
  %conv37.10.2 = trunc i32 %xor36.10.2 to i8
  store i8 %conv37.10.2, i8* %scevgep41.10.1, align 1
  %scevgep28.10.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1119, i64 0, i64 0, i64 1
  %1126 = bitcast i8* %scevgep28.10.2 to [21 x [21 x i8]]*
  %scevgep41.10.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1120, i64 0, i64 1, i64 0
  %1127 = bitcast i8* %scevgep41.10.2 to [21 x [21 x i8]]*
  %call16.10.3 = call zeroext i8 (...) @rand()
  store i8 %call16.10.3, i8* %scevgep28.10.2, align 1
  %1128 = load i8, i8* %scevgep28.10.2, align 1
  %conv23.10.3 = zext i8 %1128 to i32
  %1129 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.3 = getelementptr i8, i8* %b, i64 14
  %1130 = load i8, i8* %scevgep34.10.3, align 1
  %call28.10.3 = call zeroext i8 @mult(i8 zeroext %1129, i8 zeroext %1130)
  %conv29.10.3 = zext i8 %call28.10.3 to i32
  %xor.10.3 = xor i32 %conv23.10.3, %conv29.10.3
  %scevgep35.10.3 = getelementptr i8, i8* %a, i64 14
  %1131 = load i8, i8* %scevgep35.10.3, align 1
  %1132 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.3 = call zeroext i8 @mult(i8 zeroext %1131, i8 zeroext %1132)
  %conv35.10.3 = zext i8 %call34.10.3 to i32
  %xor36.10.3 = xor i32 %xor.10.3, %conv35.10.3
  %conv37.10.3 = trunc i32 %xor36.10.3 to i8
  store i8 %conv37.10.3, i8* %scevgep41.10.2, align 1
  %scevgep28.10.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1126, i64 0, i64 0, i64 1
  %1133 = bitcast i8* %scevgep28.10.3 to [21 x [21 x i8]]*
  %scevgep41.10.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1127, i64 0, i64 1, i64 0
  %1134 = bitcast i8* %scevgep41.10.3 to [21 x [21 x i8]]*
  %call16.10.4 = call zeroext i8 (...) @rand()
  store i8 %call16.10.4, i8* %scevgep28.10.3, align 1
  %1135 = load i8, i8* %scevgep28.10.3, align 1
  %conv23.10.4 = zext i8 %1135 to i32
  %1136 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.4 = getelementptr i8, i8* %b, i64 15
  %1137 = load i8, i8* %scevgep34.10.4, align 1
  %call28.10.4 = call zeroext i8 @mult(i8 zeroext %1136, i8 zeroext %1137)
  %conv29.10.4 = zext i8 %call28.10.4 to i32
  %xor.10.4 = xor i32 %conv23.10.4, %conv29.10.4
  %scevgep35.10.4 = getelementptr i8, i8* %a, i64 15
  %1138 = load i8, i8* %scevgep35.10.4, align 1
  %1139 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.4 = call zeroext i8 @mult(i8 zeroext %1138, i8 zeroext %1139)
  %conv35.10.4 = zext i8 %call34.10.4 to i32
  %xor36.10.4 = xor i32 %xor.10.4, %conv35.10.4
  %conv37.10.4 = trunc i32 %xor36.10.4 to i8
  store i8 %conv37.10.4, i8* %scevgep41.10.3, align 1
  %scevgep28.10.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1133, i64 0, i64 0, i64 1
  %1140 = bitcast i8* %scevgep28.10.4 to [21 x [21 x i8]]*
  %scevgep41.10.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1134, i64 0, i64 1, i64 0
  %1141 = bitcast i8* %scevgep41.10.4 to [21 x [21 x i8]]*
  %call16.10.5 = call zeroext i8 (...) @rand()
  store i8 %call16.10.5, i8* %scevgep28.10.4, align 1
  %1142 = load i8, i8* %scevgep28.10.4, align 1
  %conv23.10.5 = zext i8 %1142 to i32
  %1143 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.5 = getelementptr i8, i8* %b, i64 16
  %1144 = load i8, i8* %scevgep34.10.5, align 1
  %call28.10.5 = call zeroext i8 @mult(i8 zeroext %1143, i8 zeroext %1144)
  %conv29.10.5 = zext i8 %call28.10.5 to i32
  %xor.10.5 = xor i32 %conv23.10.5, %conv29.10.5
  %scevgep35.10.5 = getelementptr i8, i8* %a, i64 16
  %1145 = load i8, i8* %scevgep35.10.5, align 1
  %1146 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.5 = call zeroext i8 @mult(i8 zeroext %1145, i8 zeroext %1146)
  %conv35.10.5 = zext i8 %call34.10.5 to i32
  %xor36.10.5 = xor i32 %xor.10.5, %conv35.10.5
  %conv37.10.5 = trunc i32 %xor36.10.5 to i8
  store i8 %conv37.10.5, i8* %scevgep41.10.4, align 1
  %scevgep28.10.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1140, i64 0, i64 0, i64 1
  %1147 = bitcast i8* %scevgep28.10.5 to [21 x [21 x i8]]*
  %scevgep41.10.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1141, i64 0, i64 1, i64 0
  %1148 = bitcast i8* %scevgep41.10.5 to [21 x [21 x i8]]*
  %call16.10.6 = call zeroext i8 (...) @rand()
  store i8 %call16.10.6, i8* %scevgep28.10.5, align 1
  %1149 = load i8, i8* %scevgep28.10.5, align 1
  %conv23.10.6 = zext i8 %1149 to i32
  %1150 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.6 = getelementptr i8, i8* %b, i64 17
  %1151 = load i8, i8* %scevgep34.10.6, align 1
  %call28.10.6 = call zeroext i8 @mult(i8 zeroext %1150, i8 zeroext %1151)
  %conv29.10.6 = zext i8 %call28.10.6 to i32
  %xor.10.6 = xor i32 %conv23.10.6, %conv29.10.6
  %scevgep35.10.6 = getelementptr i8, i8* %a, i64 17
  %1152 = load i8, i8* %scevgep35.10.6, align 1
  %1153 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.6 = call zeroext i8 @mult(i8 zeroext %1152, i8 zeroext %1153)
  %conv35.10.6 = zext i8 %call34.10.6 to i32
  %xor36.10.6 = xor i32 %xor.10.6, %conv35.10.6
  %conv37.10.6 = trunc i32 %xor36.10.6 to i8
  store i8 %conv37.10.6, i8* %scevgep41.10.5, align 1
  %scevgep28.10.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1147, i64 0, i64 0, i64 1
  %1154 = bitcast i8* %scevgep28.10.6 to [21 x [21 x i8]]*
  %scevgep41.10.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1148, i64 0, i64 1, i64 0
  %1155 = bitcast i8* %scevgep41.10.6 to [21 x [21 x i8]]*
  %call16.10.7 = call zeroext i8 (...) @rand()
  store i8 %call16.10.7, i8* %scevgep28.10.6, align 1
  %1156 = load i8, i8* %scevgep28.10.6, align 1
  %conv23.10.7 = zext i8 %1156 to i32
  %1157 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.7 = getelementptr i8, i8* %b, i64 18
  %1158 = load i8, i8* %scevgep34.10.7, align 1
  %call28.10.7 = call zeroext i8 @mult(i8 zeroext %1157, i8 zeroext %1158)
  %conv29.10.7 = zext i8 %call28.10.7 to i32
  %xor.10.7 = xor i32 %conv23.10.7, %conv29.10.7
  %scevgep35.10.7 = getelementptr i8, i8* %a, i64 18
  %1159 = load i8, i8* %scevgep35.10.7, align 1
  %1160 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.7 = call zeroext i8 @mult(i8 zeroext %1159, i8 zeroext %1160)
  %conv35.10.7 = zext i8 %call34.10.7 to i32
  %xor36.10.7 = xor i32 %xor.10.7, %conv35.10.7
  %conv37.10.7 = trunc i32 %xor36.10.7 to i8
  store i8 %conv37.10.7, i8* %scevgep41.10.6, align 1
  %scevgep28.10.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1154, i64 0, i64 0, i64 1
  %1161 = bitcast i8* %scevgep28.10.7 to [21 x [21 x i8]]*
  %scevgep41.10.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1155, i64 0, i64 1, i64 0
  %1162 = bitcast i8* %scevgep41.10.7 to [21 x [21 x i8]]*
  %call16.10.8 = call zeroext i8 (...) @rand()
  store i8 %call16.10.8, i8* %scevgep28.10.7, align 1
  %1163 = load i8, i8* %scevgep28.10.7, align 1
  %conv23.10.8 = zext i8 %1163 to i32
  %1164 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.8 = getelementptr i8, i8* %b, i64 19
  %1165 = load i8, i8* %scevgep34.10.8, align 1
  %call28.10.8 = call zeroext i8 @mult(i8 zeroext %1164, i8 zeroext %1165)
  %conv29.10.8 = zext i8 %call28.10.8 to i32
  %xor.10.8 = xor i32 %conv23.10.8, %conv29.10.8
  %scevgep35.10.8 = getelementptr i8, i8* %a, i64 19
  %1166 = load i8, i8* %scevgep35.10.8, align 1
  %1167 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.8 = call zeroext i8 @mult(i8 zeroext %1166, i8 zeroext %1167)
  %conv35.10.8 = zext i8 %call34.10.8 to i32
  %xor36.10.8 = xor i32 %xor.10.8, %conv35.10.8
  %conv37.10.8 = trunc i32 %xor36.10.8 to i8
  store i8 %conv37.10.8, i8* %scevgep41.10.7, align 1
  %scevgep28.10.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1161, i64 0, i64 0, i64 1
  %scevgep41.10.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1162, i64 0, i64 1, i64 0
  %call16.10.9 = call zeroext i8 (...) @rand()
  store i8 %call16.10.9, i8* %scevgep28.10.8, align 1
  %1168 = load i8, i8* %scevgep28.10.8, align 1
  %conv23.10.9 = zext i8 %1168 to i32
  %1169 = load i8, i8* %arrayidx25.10, align 1
  %scevgep34.10.9 = getelementptr i8, i8* %b, i64 20
  %1170 = load i8, i8* %scevgep34.10.9, align 1
  %call28.10.9 = call zeroext i8 @mult(i8 zeroext %1169, i8 zeroext %1170)
  %conv29.10.9 = zext i8 %call28.10.9 to i32
  %xor.10.9 = xor i32 %conv23.10.9, %conv29.10.9
  %scevgep35.10.9 = getelementptr i8, i8* %a, i64 20
  %1171 = load i8, i8* %scevgep35.10.9, align 1
  %1172 = load i8, i8* %arrayidx33.10, align 1
  %call34.10.9 = call zeroext i8 @mult(i8 zeroext %1171, i8 zeroext %1172)
  %conv35.10.9 = zext i8 %call34.10.9 to i32
  %xor36.10.9 = xor i32 %xor.10.9, %conv35.10.9
  %conv37.10.9 = trunc i32 %xor36.10.9 to i8
  store i8 %conv37.10.9, i8* %scevgep41.10.8, align 1
  %scevgep26.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1105, i64 0, i64 1, i64 1
  %1173 = bitcast i8* %scevgep26.10 to [21 x [21 x i8]]*
  %scevgep39.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1106, i64 0, i64 1, i64 1
  %1174 = bitcast i8* %scevgep39.10 to [21 x [21 x i8]]*
  %arrayidx25.11 = getelementptr inbounds i8, i8* %a, i64 11
  %arrayidx33.11 = getelementptr inbounds i8, i8* %b, i64 11
  %call16.11 = call zeroext i8 (...) @rand()
  store i8 %call16.11, i8* %scevgep26.10, align 1
  %1175 = load i8, i8* %scevgep26.10, align 1
  %conv23.11 = zext i8 %1175 to i32
  %1176 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11 = getelementptr i8, i8* %b, i64 12
  %1177 = load i8, i8* %scevgep34.11, align 1
  %call28.11 = call zeroext i8 @mult(i8 zeroext %1176, i8 zeroext %1177)
  %conv29.11 = zext i8 %call28.11 to i32
  %xor.11 = xor i32 %conv23.11, %conv29.11
  %scevgep35.11 = getelementptr i8, i8* %a, i64 12
  %1178 = load i8, i8* %scevgep35.11, align 1
  %1179 = load i8, i8* %arrayidx33.11, align 1
  %call34.11 = call zeroext i8 @mult(i8 zeroext %1178, i8 zeroext %1179)
  %conv35.11 = zext i8 %call34.11 to i32
  %xor36.11 = xor i32 %xor.11, %conv35.11
  %conv37.11 = trunc i32 %xor36.11 to i8
  store i8 %conv37.11, i8* %scevgep39.10, align 1
  %scevgep28.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1173, i64 0, i64 0, i64 1
  %1180 = bitcast i8* %scevgep28.11 to [21 x [21 x i8]]*
  %scevgep41.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1174, i64 0, i64 1, i64 0
  %1181 = bitcast i8* %scevgep41.11 to [21 x [21 x i8]]*
  %call16.11.1 = call zeroext i8 (...) @rand()
  store i8 %call16.11.1, i8* %scevgep28.11, align 1
  %1182 = load i8, i8* %scevgep28.11, align 1
  %conv23.11.1 = zext i8 %1182 to i32
  %1183 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.1 = getelementptr i8, i8* %b, i64 13
  %1184 = load i8, i8* %scevgep34.11.1, align 1
  %call28.11.1 = call zeroext i8 @mult(i8 zeroext %1183, i8 zeroext %1184)
  %conv29.11.1 = zext i8 %call28.11.1 to i32
  %xor.11.1 = xor i32 %conv23.11.1, %conv29.11.1
  %scevgep35.11.1 = getelementptr i8, i8* %a, i64 13
  %1185 = load i8, i8* %scevgep35.11.1, align 1
  %1186 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.1 = call zeroext i8 @mult(i8 zeroext %1185, i8 zeroext %1186)
  %conv35.11.1 = zext i8 %call34.11.1 to i32
  %xor36.11.1 = xor i32 %xor.11.1, %conv35.11.1
  %conv37.11.1 = trunc i32 %xor36.11.1 to i8
  store i8 %conv37.11.1, i8* %scevgep41.11, align 1
  %scevgep28.11.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1180, i64 0, i64 0, i64 1
  %1187 = bitcast i8* %scevgep28.11.1 to [21 x [21 x i8]]*
  %scevgep41.11.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1181, i64 0, i64 1, i64 0
  %1188 = bitcast i8* %scevgep41.11.1 to [21 x [21 x i8]]*
  %call16.11.2 = call zeroext i8 (...) @rand()
  store i8 %call16.11.2, i8* %scevgep28.11.1, align 1
  %1189 = load i8, i8* %scevgep28.11.1, align 1
  %conv23.11.2 = zext i8 %1189 to i32
  %1190 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.2 = getelementptr i8, i8* %b, i64 14
  %1191 = load i8, i8* %scevgep34.11.2, align 1
  %call28.11.2 = call zeroext i8 @mult(i8 zeroext %1190, i8 zeroext %1191)
  %conv29.11.2 = zext i8 %call28.11.2 to i32
  %xor.11.2 = xor i32 %conv23.11.2, %conv29.11.2
  %scevgep35.11.2 = getelementptr i8, i8* %a, i64 14
  %1192 = load i8, i8* %scevgep35.11.2, align 1
  %1193 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.2 = call zeroext i8 @mult(i8 zeroext %1192, i8 zeroext %1193)
  %conv35.11.2 = zext i8 %call34.11.2 to i32
  %xor36.11.2 = xor i32 %xor.11.2, %conv35.11.2
  %conv37.11.2 = trunc i32 %xor36.11.2 to i8
  store i8 %conv37.11.2, i8* %scevgep41.11.1, align 1
  %scevgep28.11.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1187, i64 0, i64 0, i64 1
  %1194 = bitcast i8* %scevgep28.11.2 to [21 x [21 x i8]]*
  %scevgep41.11.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1188, i64 0, i64 1, i64 0
  %1195 = bitcast i8* %scevgep41.11.2 to [21 x [21 x i8]]*
  %call16.11.3 = call zeroext i8 (...) @rand()
  store i8 %call16.11.3, i8* %scevgep28.11.2, align 1
  %1196 = load i8, i8* %scevgep28.11.2, align 1
  %conv23.11.3 = zext i8 %1196 to i32
  %1197 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.3 = getelementptr i8, i8* %b, i64 15
  %1198 = load i8, i8* %scevgep34.11.3, align 1
  %call28.11.3 = call zeroext i8 @mult(i8 zeroext %1197, i8 zeroext %1198)
  %conv29.11.3 = zext i8 %call28.11.3 to i32
  %xor.11.3 = xor i32 %conv23.11.3, %conv29.11.3
  %scevgep35.11.3 = getelementptr i8, i8* %a, i64 15
  %1199 = load i8, i8* %scevgep35.11.3, align 1
  %1200 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.3 = call zeroext i8 @mult(i8 zeroext %1199, i8 zeroext %1200)
  %conv35.11.3 = zext i8 %call34.11.3 to i32
  %xor36.11.3 = xor i32 %xor.11.3, %conv35.11.3
  %conv37.11.3 = trunc i32 %xor36.11.3 to i8
  store i8 %conv37.11.3, i8* %scevgep41.11.2, align 1
  %scevgep28.11.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1194, i64 0, i64 0, i64 1
  %1201 = bitcast i8* %scevgep28.11.3 to [21 x [21 x i8]]*
  %scevgep41.11.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1195, i64 0, i64 1, i64 0
  %1202 = bitcast i8* %scevgep41.11.3 to [21 x [21 x i8]]*
  %call16.11.4 = call zeroext i8 (...) @rand()
  store i8 %call16.11.4, i8* %scevgep28.11.3, align 1
  %1203 = load i8, i8* %scevgep28.11.3, align 1
  %conv23.11.4 = zext i8 %1203 to i32
  %1204 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.4 = getelementptr i8, i8* %b, i64 16
  %1205 = load i8, i8* %scevgep34.11.4, align 1
  %call28.11.4 = call zeroext i8 @mult(i8 zeroext %1204, i8 zeroext %1205)
  %conv29.11.4 = zext i8 %call28.11.4 to i32
  %xor.11.4 = xor i32 %conv23.11.4, %conv29.11.4
  %scevgep35.11.4 = getelementptr i8, i8* %a, i64 16
  %1206 = load i8, i8* %scevgep35.11.4, align 1
  %1207 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.4 = call zeroext i8 @mult(i8 zeroext %1206, i8 zeroext %1207)
  %conv35.11.4 = zext i8 %call34.11.4 to i32
  %xor36.11.4 = xor i32 %xor.11.4, %conv35.11.4
  %conv37.11.4 = trunc i32 %xor36.11.4 to i8
  store i8 %conv37.11.4, i8* %scevgep41.11.3, align 1
  %scevgep28.11.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1201, i64 0, i64 0, i64 1
  %1208 = bitcast i8* %scevgep28.11.4 to [21 x [21 x i8]]*
  %scevgep41.11.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1202, i64 0, i64 1, i64 0
  %1209 = bitcast i8* %scevgep41.11.4 to [21 x [21 x i8]]*
  %call16.11.5 = call zeroext i8 (...) @rand()
  store i8 %call16.11.5, i8* %scevgep28.11.4, align 1
  %1210 = load i8, i8* %scevgep28.11.4, align 1
  %conv23.11.5 = zext i8 %1210 to i32
  %1211 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.5 = getelementptr i8, i8* %b, i64 17
  %1212 = load i8, i8* %scevgep34.11.5, align 1
  %call28.11.5 = call zeroext i8 @mult(i8 zeroext %1211, i8 zeroext %1212)
  %conv29.11.5 = zext i8 %call28.11.5 to i32
  %xor.11.5 = xor i32 %conv23.11.5, %conv29.11.5
  %scevgep35.11.5 = getelementptr i8, i8* %a, i64 17
  %1213 = load i8, i8* %scevgep35.11.5, align 1
  %1214 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.5 = call zeroext i8 @mult(i8 zeroext %1213, i8 zeroext %1214)
  %conv35.11.5 = zext i8 %call34.11.5 to i32
  %xor36.11.5 = xor i32 %xor.11.5, %conv35.11.5
  %conv37.11.5 = trunc i32 %xor36.11.5 to i8
  store i8 %conv37.11.5, i8* %scevgep41.11.4, align 1
  %scevgep28.11.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1208, i64 0, i64 0, i64 1
  %1215 = bitcast i8* %scevgep28.11.5 to [21 x [21 x i8]]*
  %scevgep41.11.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1209, i64 0, i64 1, i64 0
  %1216 = bitcast i8* %scevgep41.11.5 to [21 x [21 x i8]]*
  %call16.11.6 = call zeroext i8 (...) @rand()
  store i8 %call16.11.6, i8* %scevgep28.11.5, align 1
  %1217 = load i8, i8* %scevgep28.11.5, align 1
  %conv23.11.6 = zext i8 %1217 to i32
  %1218 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.6 = getelementptr i8, i8* %b, i64 18
  %1219 = load i8, i8* %scevgep34.11.6, align 1
  %call28.11.6 = call zeroext i8 @mult(i8 zeroext %1218, i8 zeroext %1219)
  %conv29.11.6 = zext i8 %call28.11.6 to i32
  %xor.11.6 = xor i32 %conv23.11.6, %conv29.11.6
  %scevgep35.11.6 = getelementptr i8, i8* %a, i64 18
  %1220 = load i8, i8* %scevgep35.11.6, align 1
  %1221 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.6 = call zeroext i8 @mult(i8 zeroext %1220, i8 zeroext %1221)
  %conv35.11.6 = zext i8 %call34.11.6 to i32
  %xor36.11.6 = xor i32 %xor.11.6, %conv35.11.6
  %conv37.11.6 = trunc i32 %xor36.11.6 to i8
  store i8 %conv37.11.6, i8* %scevgep41.11.5, align 1
  %scevgep28.11.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1215, i64 0, i64 0, i64 1
  %1222 = bitcast i8* %scevgep28.11.6 to [21 x [21 x i8]]*
  %scevgep41.11.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1216, i64 0, i64 1, i64 0
  %1223 = bitcast i8* %scevgep41.11.6 to [21 x [21 x i8]]*
  %call16.11.7 = call zeroext i8 (...) @rand()
  store i8 %call16.11.7, i8* %scevgep28.11.6, align 1
  %1224 = load i8, i8* %scevgep28.11.6, align 1
  %conv23.11.7 = zext i8 %1224 to i32
  %1225 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.7 = getelementptr i8, i8* %b, i64 19
  %1226 = load i8, i8* %scevgep34.11.7, align 1
  %call28.11.7 = call zeroext i8 @mult(i8 zeroext %1225, i8 zeroext %1226)
  %conv29.11.7 = zext i8 %call28.11.7 to i32
  %xor.11.7 = xor i32 %conv23.11.7, %conv29.11.7
  %scevgep35.11.7 = getelementptr i8, i8* %a, i64 19
  %1227 = load i8, i8* %scevgep35.11.7, align 1
  %1228 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.7 = call zeroext i8 @mult(i8 zeroext %1227, i8 zeroext %1228)
  %conv35.11.7 = zext i8 %call34.11.7 to i32
  %xor36.11.7 = xor i32 %xor.11.7, %conv35.11.7
  %conv37.11.7 = trunc i32 %xor36.11.7 to i8
  store i8 %conv37.11.7, i8* %scevgep41.11.6, align 1
  %scevgep28.11.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1222, i64 0, i64 0, i64 1
  %scevgep41.11.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1223, i64 0, i64 1, i64 0
  %call16.11.8 = call zeroext i8 (...) @rand()
  store i8 %call16.11.8, i8* %scevgep28.11.7, align 1
  %1229 = load i8, i8* %scevgep28.11.7, align 1
  %conv23.11.8 = zext i8 %1229 to i32
  %1230 = load i8, i8* %arrayidx25.11, align 1
  %scevgep34.11.8 = getelementptr i8, i8* %b, i64 20
  %1231 = load i8, i8* %scevgep34.11.8, align 1
  %call28.11.8 = call zeroext i8 @mult(i8 zeroext %1230, i8 zeroext %1231)
  %conv29.11.8 = zext i8 %call28.11.8 to i32
  %xor.11.8 = xor i32 %conv23.11.8, %conv29.11.8
  %scevgep35.11.8 = getelementptr i8, i8* %a, i64 20
  %1232 = load i8, i8* %scevgep35.11.8, align 1
  %1233 = load i8, i8* %arrayidx33.11, align 1
  %call34.11.8 = call zeroext i8 @mult(i8 zeroext %1232, i8 zeroext %1233)
  %conv35.11.8 = zext i8 %call34.11.8 to i32
  %xor36.11.8 = xor i32 %xor.11.8, %conv35.11.8
  %conv37.11.8 = trunc i32 %xor36.11.8 to i8
  store i8 %conv37.11.8, i8* %scevgep41.11.7, align 1
  %scevgep26.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1173, i64 0, i64 1, i64 1
  %1234 = bitcast i8* %scevgep26.11 to [21 x [21 x i8]]*
  %scevgep39.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1174, i64 0, i64 1, i64 1
  %1235 = bitcast i8* %scevgep39.11 to [21 x [21 x i8]]*
  %arrayidx25.12 = getelementptr inbounds i8, i8* %a, i64 12
  %arrayidx33.12 = getelementptr inbounds i8, i8* %b, i64 12
  %call16.12 = call zeroext i8 (...) @rand()
  store i8 %call16.12, i8* %scevgep26.11, align 1
  %1236 = load i8, i8* %scevgep26.11, align 1
  %conv23.12 = zext i8 %1236 to i32
  %1237 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12 = getelementptr i8, i8* %b, i64 13
  %1238 = load i8, i8* %scevgep34.12, align 1
  %call28.12 = call zeroext i8 @mult(i8 zeroext %1237, i8 zeroext %1238)
  %conv29.12 = zext i8 %call28.12 to i32
  %xor.12 = xor i32 %conv23.12, %conv29.12
  %scevgep35.12 = getelementptr i8, i8* %a, i64 13
  %1239 = load i8, i8* %scevgep35.12, align 1
  %1240 = load i8, i8* %arrayidx33.12, align 1
  %call34.12 = call zeroext i8 @mult(i8 zeroext %1239, i8 zeroext %1240)
  %conv35.12 = zext i8 %call34.12 to i32
  %xor36.12 = xor i32 %xor.12, %conv35.12
  %conv37.12 = trunc i32 %xor36.12 to i8
  store i8 %conv37.12, i8* %scevgep39.11, align 1
  %scevgep28.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1234, i64 0, i64 0, i64 1
  %1241 = bitcast i8* %scevgep28.12 to [21 x [21 x i8]]*
  %scevgep41.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1235, i64 0, i64 1, i64 0
  %1242 = bitcast i8* %scevgep41.12 to [21 x [21 x i8]]*
  %call16.12.1 = call zeroext i8 (...) @rand()
  store i8 %call16.12.1, i8* %scevgep28.12, align 1
  %1243 = load i8, i8* %scevgep28.12, align 1
  %conv23.12.1 = zext i8 %1243 to i32
  %1244 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.1 = getelementptr i8, i8* %b, i64 14
  %1245 = load i8, i8* %scevgep34.12.1, align 1
  %call28.12.1 = call zeroext i8 @mult(i8 zeroext %1244, i8 zeroext %1245)
  %conv29.12.1 = zext i8 %call28.12.1 to i32
  %xor.12.1 = xor i32 %conv23.12.1, %conv29.12.1
  %scevgep35.12.1 = getelementptr i8, i8* %a, i64 14
  %1246 = load i8, i8* %scevgep35.12.1, align 1
  %1247 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.1 = call zeroext i8 @mult(i8 zeroext %1246, i8 zeroext %1247)
  %conv35.12.1 = zext i8 %call34.12.1 to i32
  %xor36.12.1 = xor i32 %xor.12.1, %conv35.12.1
  %conv37.12.1 = trunc i32 %xor36.12.1 to i8
  store i8 %conv37.12.1, i8* %scevgep41.12, align 1
  %scevgep28.12.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1241, i64 0, i64 0, i64 1
  %1248 = bitcast i8* %scevgep28.12.1 to [21 x [21 x i8]]*
  %scevgep41.12.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1242, i64 0, i64 1, i64 0
  %1249 = bitcast i8* %scevgep41.12.1 to [21 x [21 x i8]]*
  %call16.12.2 = call zeroext i8 (...) @rand()
  store i8 %call16.12.2, i8* %scevgep28.12.1, align 1
  %1250 = load i8, i8* %scevgep28.12.1, align 1
  %conv23.12.2 = zext i8 %1250 to i32
  %1251 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.2 = getelementptr i8, i8* %b, i64 15
  %1252 = load i8, i8* %scevgep34.12.2, align 1
  %call28.12.2 = call zeroext i8 @mult(i8 zeroext %1251, i8 zeroext %1252)
  %conv29.12.2 = zext i8 %call28.12.2 to i32
  %xor.12.2 = xor i32 %conv23.12.2, %conv29.12.2
  %scevgep35.12.2 = getelementptr i8, i8* %a, i64 15
  %1253 = load i8, i8* %scevgep35.12.2, align 1
  %1254 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.2 = call zeroext i8 @mult(i8 zeroext %1253, i8 zeroext %1254)
  %conv35.12.2 = zext i8 %call34.12.2 to i32
  %xor36.12.2 = xor i32 %xor.12.2, %conv35.12.2
  %conv37.12.2 = trunc i32 %xor36.12.2 to i8
  store i8 %conv37.12.2, i8* %scevgep41.12.1, align 1
  %scevgep28.12.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1248, i64 0, i64 0, i64 1
  %1255 = bitcast i8* %scevgep28.12.2 to [21 x [21 x i8]]*
  %scevgep41.12.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1249, i64 0, i64 1, i64 0
  %1256 = bitcast i8* %scevgep41.12.2 to [21 x [21 x i8]]*
  %call16.12.3 = call zeroext i8 (...) @rand()
  store i8 %call16.12.3, i8* %scevgep28.12.2, align 1
  %1257 = load i8, i8* %scevgep28.12.2, align 1
  %conv23.12.3 = zext i8 %1257 to i32
  %1258 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.3 = getelementptr i8, i8* %b, i64 16
  %1259 = load i8, i8* %scevgep34.12.3, align 1
  %call28.12.3 = call zeroext i8 @mult(i8 zeroext %1258, i8 zeroext %1259)
  %conv29.12.3 = zext i8 %call28.12.3 to i32
  %xor.12.3 = xor i32 %conv23.12.3, %conv29.12.3
  %scevgep35.12.3 = getelementptr i8, i8* %a, i64 16
  %1260 = load i8, i8* %scevgep35.12.3, align 1
  %1261 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.3 = call zeroext i8 @mult(i8 zeroext %1260, i8 zeroext %1261)
  %conv35.12.3 = zext i8 %call34.12.3 to i32
  %xor36.12.3 = xor i32 %xor.12.3, %conv35.12.3
  %conv37.12.3 = trunc i32 %xor36.12.3 to i8
  store i8 %conv37.12.3, i8* %scevgep41.12.2, align 1
  %scevgep28.12.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1255, i64 0, i64 0, i64 1
  %1262 = bitcast i8* %scevgep28.12.3 to [21 x [21 x i8]]*
  %scevgep41.12.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1256, i64 0, i64 1, i64 0
  %1263 = bitcast i8* %scevgep41.12.3 to [21 x [21 x i8]]*
  %call16.12.4 = call zeroext i8 (...) @rand()
  store i8 %call16.12.4, i8* %scevgep28.12.3, align 1
  %1264 = load i8, i8* %scevgep28.12.3, align 1
  %conv23.12.4 = zext i8 %1264 to i32
  %1265 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.4 = getelementptr i8, i8* %b, i64 17
  %1266 = load i8, i8* %scevgep34.12.4, align 1
  %call28.12.4 = call zeroext i8 @mult(i8 zeroext %1265, i8 zeroext %1266)
  %conv29.12.4 = zext i8 %call28.12.4 to i32
  %xor.12.4 = xor i32 %conv23.12.4, %conv29.12.4
  %scevgep35.12.4 = getelementptr i8, i8* %a, i64 17
  %1267 = load i8, i8* %scevgep35.12.4, align 1
  %1268 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.4 = call zeroext i8 @mult(i8 zeroext %1267, i8 zeroext %1268)
  %conv35.12.4 = zext i8 %call34.12.4 to i32
  %xor36.12.4 = xor i32 %xor.12.4, %conv35.12.4
  %conv37.12.4 = trunc i32 %xor36.12.4 to i8
  store i8 %conv37.12.4, i8* %scevgep41.12.3, align 1
  %scevgep28.12.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1262, i64 0, i64 0, i64 1
  %1269 = bitcast i8* %scevgep28.12.4 to [21 x [21 x i8]]*
  %scevgep41.12.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1263, i64 0, i64 1, i64 0
  %1270 = bitcast i8* %scevgep41.12.4 to [21 x [21 x i8]]*
  %call16.12.5 = call zeroext i8 (...) @rand()
  store i8 %call16.12.5, i8* %scevgep28.12.4, align 1
  %1271 = load i8, i8* %scevgep28.12.4, align 1
  %conv23.12.5 = zext i8 %1271 to i32
  %1272 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.5 = getelementptr i8, i8* %b, i64 18
  %1273 = load i8, i8* %scevgep34.12.5, align 1
  %call28.12.5 = call zeroext i8 @mult(i8 zeroext %1272, i8 zeroext %1273)
  %conv29.12.5 = zext i8 %call28.12.5 to i32
  %xor.12.5 = xor i32 %conv23.12.5, %conv29.12.5
  %scevgep35.12.5 = getelementptr i8, i8* %a, i64 18
  %1274 = load i8, i8* %scevgep35.12.5, align 1
  %1275 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.5 = call zeroext i8 @mult(i8 zeroext %1274, i8 zeroext %1275)
  %conv35.12.5 = zext i8 %call34.12.5 to i32
  %xor36.12.5 = xor i32 %xor.12.5, %conv35.12.5
  %conv37.12.5 = trunc i32 %xor36.12.5 to i8
  store i8 %conv37.12.5, i8* %scevgep41.12.4, align 1
  %scevgep28.12.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1269, i64 0, i64 0, i64 1
  %1276 = bitcast i8* %scevgep28.12.5 to [21 x [21 x i8]]*
  %scevgep41.12.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1270, i64 0, i64 1, i64 0
  %1277 = bitcast i8* %scevgep41.12.5 to [21 x [21 x i8]]*
  %call16.12.6 = call zeroext i8 (...) @rand()
  store i8 %call16.12.6, i8* %scevgep28.12.5, align 1
  %1278 = load i8, i8* %scevgep28.12.5, align 1
  %conv23.12.6 = zext i8 %1278 to i32
  %1279 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.6 = getelementptr i8, i8* %b, i64 19
  %1280 = load i8, i8* %scevgep34.12.6, align 1
  %call28.12.6 = call zeroext i8 @mult(i8 zeroext %1279, i8 zeroext %1280)
  %conv29.12.6 = zext i8 %call28.12.6 to i32
  %xor.12.6 = xor i32 %conv23.12.6, %conv29.12.6
  %scevgep35.12.6 = getelementptr i8, i8* %a, i64 19
  %1281 = load i8, i8* %scevgep35.12.6, align 1
  %1282 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.6 = call zeroext i8 @mult(i8 zeroext %1281, i8 zeroext %1282)
  %conv35.12.6 = zext i8 %call34.12.6 to i32
  %xor36.12.6 = xor i32 %xor.12.6, %conv35.12.6
  %conv37.12.6 = trunc i32 %xor36.12.6 to i8
  store i8 %conv37.12.6, i8* %scevgep41.12.5, align 1
  %scevgep28.12.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1276, i64 0, i64 0, i64 1
  %scevgep41.12.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1277, i64 0, i64 1, i64 0
  %call16.12.7 = call zeroext i8 (...) @rand()
  store i8 %call16.12.7, i8* %scevgep28.12.6, align 1
  %1283 = load i8, i8* %scevgep28.12.6, align 1
  %conv23.12.7 = zext i8 %1283 to i32
  %1284 = load i8, i8* %arrayidx25.12, align 1
  %scevgep34.12.7 = getelementptr i8, i8* %b, i64 20
  %1285 = load i8, i8* %scevgep34.12.7, align 1
  %call28.12.7 = call zeroext i8 @mult(i8 zeroext %1284, i8 zeroext %1285)
  %conv29.12.7 = zext i8 %call28.12.7 to i32
  %xor.12.7 = xor i32 %conv23.12.7, %conv29.12.7
  %scevgep35.12.7 = getelementptr i8, i8* %a, i64 20
  %1286 = load i8, i8* %scevgep35.12.7, align 1
  %1287 = load i8, i8* %arrayidx33.12, align 1
  %call34.12.7 = call zeroext i8 @mult(i8 zeroext %1286, i8 zeroext %1287)
  %conv35.12.7 = zext i8 %call34.12.7 to i32
  %xor36.12.7 = xor i32 %xor.12.7, %conv35.12.7
  %conv37.12.7 = trunc i32 %xor36.12.7 to i8
  store i8 %conv37.12.7, i8* %scevgep41.12.6, align 1
  %scevgep26.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1234, i64 0, i64 1, i64 1
  %1288 = bitcast i8* %scevgep26.12 to [21 x [21 x i8]]*
  %scevgep39.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1235, i64 0, i64 1, i64 1
  %1289 = bitcast i8* %scevgep39.12 to [21 x [21 x i8]]*
  %arrayidx25.13 = getelementptr inbounds i8, i8* %a, i64 13
  %arrayidx33.13 = getelementptr inbounds i8, i8* %b, i64 13
  %call16.13 = call zeroext i8 (...) @rand()
  store i8 %call16.13, i8* %scevgep26.12, align 1
  %1290 = load i8, i8* %scevgep26.12, align 1
  %conv23.13 = zext i8 %1290 to i32
  %1291 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13 = getelementptr i8, i8* %b, i64 14
  %1292 = load i8, i8* %scevgep34.13, align 1
  %call28.13 = call zeroext i8 @mult(i8 zeroext %1291, i8 zeroext %1292)
  %conv29.13 = zext i8 %call28.13 to i32
  %xor.13 = xor i32 %conv23.13, %conv29.13
  %scevgep35.13 = getelementptr i8, i8* %a, i64 14
  %1293 = load i8, i8* %scevgep35.13, align 1
  %1294 = load i8, i8* %arrayidx33.13, align 1
  %call34.13 = call zeroext i8 @mult(i8 zeroext %1293, i8 zeroext %1294)
  %conv35.13 = zext i8 %call34.13 to i32
  %xor36.13 = xor i32 %xor.13, %conv35.13
  %conv37.13 = trunc i32 %xor36.13 to i8
  store i8 %conv37.13, i8* %scevgep39.12, align 1
  %scevgep28.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1288, i64 0, i64 0, i64 1
  %1295 = bitcast i8* %scevgep28.13 to [21 x [21 x i8]]*
  %scevgep41.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1289, i64 0, i64 1, i64 0
  %1296 = bitcast i8* %scevgep41.13 to [21 x [21 x i8]]*
  %call16.13.1 = call zeroext i8 (...) @rand()
  store i8 %call16.13.1, i8* %scevgep28.13, align 1
  %1297 = load i8, i8* %scevgep28.13, align 1
  %conv23.13.1 = zext i8 %1297 to i32
  %1298 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.1 = getelementptr i8, i8* %b, i64 15
  %1299 = load i8, i8* %scevgep34.13.1, align 1
  %call28.13.1 = call zeroext i8 @mult(i8 zeroext %1298, i8 zeroext %1299)
  %conv29.13.1 = zext i8 %call28.13.1 to i32
  %xor.13.1 = xor i32 %conv23.13.1, %conv29.13.1
  %scevgep35.13.1 = getelementptr i8, i8* %a, i64 15
  %1300 = load i8, i8* %scevgep35.13.1, align 1
  %1301 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.1 = call zeroext i8 @mult(i8 zeroext %1300, i8 zeroext %1301)
  %conv35.13.1 = zext i8 %call34.13.1 to i32
  %xor36.13.1 = xor i32 %xor.13.1, %conv35.13.1
  %conv37.13.1 = trunc i32 %xor36.13.1 to i8
  store i8 %conv37.13.1, i8* %scevgep41.13, align 1
  %scevgep28.13.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1295, i64 0, i64 0, i64 1
  %1302 = bitcast i8* %scevgep28.13.1 to [21 x [21 x i8]]*
  %scevgep41.13.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1296, i64 0, i64 1, i64 0
  %1303 = bitcast i8* %scevgep41.13.1 to [21 x [21 x i8]]*
  %call16.13.2 = call zeroext i8 (...) @rand()
  store i8 %call16.13.2, i8* %scevgep28.13.1, align 1
  %1304 = load i8, i8* %scevgep28.13.1, align 1
  %conv23.13.2 = zext i8 %1304 to i32
  %1305 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.2 = getelementptr i8, i8* %b, i64 16
  %1306 = load i8, i8* %scevgep34.13.2, align 1
  %call28.13.2 = call zeroext i8 @mult(i8 zeroext %1305, i8 zeroext %1306)
  %conv29.13.2 = zext i8 %call28.13.2 to i32
  %xor.13.2 = xor i32 %conv23.13.2, %conv29.13.2
  %scevgep35.13.2 = getelementptr i8, i8* %a, i64 16
  %1307 = load i8, i8* %scevgep35.13.2, align 1
  %1308 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.2 = call zeroext i8 @mult(i8 zeroext %1307, i8 zeroext %1308)
  %conv35.13.2 = zext i8 %call34.13.2 to i32
  %xor36.13.2 = xor i32 %xor.13.2, %conv35.13.2
  %conv37.13.2 = trunc i32 %xor36.13.2 to i8
  store i8 %conv37.13.2, i8* %scevgep41.13.1, align 1
  %scevgep28.13.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1302, i64 0, i64 0, i64 1
  %1309 = bitcast i8* %scevgep28.13.2 to [21 x [21 x i8]]*
  %scevgep41.13.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1303, i64 0, i64 1, i64 0
  %1310 = bitcast i8* %scevgep41.13.2 to [21 x [21 x i8]]*
  %call16.13.3 = call zeroext i8 (...) @rand()
  store i8 %call16.13.3, i8* %scevgep28.13.2, align 1
  %1311 = load i8, i8* %scevgep28.13.2, align 1
  %conv23.13.3 = zext i8 %1311 to i32
  %1312 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.3 = getelementptr i8, i8* %b, i64 17
  %1313 = load i8, i8* %scevgep34.13.3, align 1
  %call28.13.3 = call zeroext i8 @mult(i8 zeroext %1312, i8 zeroext %1313)
  %conv29.13.3 = zext i8 %call28.13.3 to i32
  %xor.13.3 = xor i32 %conv23.13.3, %conv29.13.3
  %scevgep35.13.3 = getelementptr i8, i8* %a, i64 17
  %1314 = load i8, i8* %scevgep35.13.3, align 1
  %1315 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.3 = call zeroext i8 @mult(i8 zeroext %1314, i8 zeroext %1315)
  %conv35.13.3 = zext i8 %call34.13.3 to i32
  %xor36.13.3 = xor i32 %xor.13.3, %conv35.13.3
  %conv37.13.3 = trunc i32 %xor36.13.3 to i8
  store i8 %conv37.13.3, i8* %scevgep41.13.2, align 1
  %scevgep28.13.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1309, i64 0, i64 0, i64 1
  %1316 = bitcast i8* %scevgep28.13.3 to [21 x [21 x i8]]*
  %scevgep41.13.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1310, i64 0, i64 1, i64 0
  %1317 = bitcast i8* %scevgep41.13.3 to [21 x [21 x i8]]*
  %call16.13.4 = call zeroext i8 (...) @rand()
  store i8 %call16.13.4, i8* %scevgep28.13.3, align 1
  %1318 = load i8, i8* %scevgep28.13.3, align 1
  %conv23.13.4 = zext i8 %1318 to i32
  %1319 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.4 = getelementptr i8, i8* %b, i64 18
  %1320 = load i8, i8* %scevgep34.13.4, align 1
  %call28.13.4 = call zeroext i8 @mult(i8 zeroext %1319, i8 zeroext %1320)
  %conv29.13.4 = zext i8 %call28.13.4 to i32
  %xor.13.4 = xor i32 %conv23.13.4, %conv29.13.4
  %scevgep35.13.4 = getelementptr i8, i8* %a, i64 18
  %1321 = load i8, i8* %scevgep35.13.4, align 1
  %1322 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.4 = call zeroext i8 @mult(i8 zeroext %1321, i8 zeroext %1322)
  %conv35.13.4 = zext i8 %call34.13.4 to i32
  %xor36.13.4 = xor i32 %xor.13.4, %conv35.13.4
  %conv37.13.4 = trunc i32 %xor36.13.4 to i8
  store i8 %conv37.13.4, i8* %scevgep41.13.3, align 1
  %scevgep28.13.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1316, i64 0, i64 0, i64 1
  %1323 = bitcast i8* %scevgep28.13.4 to [21 x [21 x i8]]*
  %scevgep41.13.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1317, i64 0, i64 1, i64 0
  %1324 = bitcast i8* %scevgep41.13.4 to [21 x [21 x i8]]*
  %call16.13.5 = call zeroext i8 (...) @rand()
  store i8 %call16.13.5, i8* %scevgep28.13.4, align 1
  %1325 = load i8, i8* %scevgep28.13.4, align 1
  %conv23.13.5 = zext i8 %1325 to i32
  %1326 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.5 = getelementptr i8, i8* %b, i64 19
  %1327 = load i8, i8* %scevgep34.13.5, align 1
  %call28.13.5 = call zeroext i8 @mult(i8 zeroext %1326, i8 zeroext %1327)
  %conv29.13.5 = zext i8 %call28.13.5 to i32
  %xor.13.5 = xor i32 %conv23.13.5, %conv29.13.5
  %scevgep35.13.5 = getelementptr i8, i8* %a, i64 19
  %1328 = load i8, i8* %scevgep35.13.5, align 1
  %1329 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.5 = call zeroext i8 @mult(i8 zeroext %1328, i8 zeroext %1329)
  %conv35.13.5 = zext i8 %call34.13.5 to i32
  %xor36.13.5 = xor i32 %xor.13.5, %conv35.13.5
  %conv37.13.5 = trunc i32 %xor36.13.5 to i8
  store i8 %conv37.13.5, i8* %scevgep41.13.4, align 1
  %scevgep28.13.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1323, i64 0, i64 0, i64 1
  %scevgep41.13.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1324, i64 0, i64 1, i64 0
  %call16.13.6 = call zeroext i8 (...) @rand()
  store i8 %call16.13.6, i8* %scevgep28.13.5, align 1
  %1330 = load i8, i8* %scevgep28.13.5, align 1
  %conv23.13.6 = zext i8 %1330 to i32
  %1331 = load i8, i8* %arrayidx25.13, align 1
  %scevgep34.13.6 = getelementptr i8, i8* %b, i64 20
  %1332 = load i8, i8* %scevgep34.13.6, align 1
  %call28.13.6 = call zeroext i8 @mult(i8 zeroext %1331, i8 zeroext %1332)
  %conv29.13.6 = zext i8 %call28.13.6 to i32
  %xor.13.6 = xor i32 %conv23.13.6, %conv29.13.6
  %scevgep35.13.6 = getelementptr i8, i8* %a, i64 20
  %1333 = load i8, i8* %scevgep35.13.6, align 1
  %1334 = load i8, i8* %arrayidx33.13, align 1
  %call34.13.6 = call zeroext i8 @mult(i8 zeroext %1333, i8 zeroext %1334)
  %conv35.13.6 = zext i8 %call34.13.6 to i32
  %xor36.13.6 = xor i32 %xor.13.6, %conv35.13.6
  %conv37.13.6 = trunc i32 %xor36.13.6 to i8
  store i8 %conv37.13.6, i8* %scevgep41.13.5, align 1
  %scevgep26.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1288, i64 0, i64 1, i64 1
  %1335 = bitcast i8* %scevgep26.13 to [21 x [21 x i8]]*
  %scevgep39.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1289, i64 0, i64 1, i64 1
  %1336 = bitcast i8* %scevgep39.13 to [21 x [21 x i8]]*
  %arrayidx25.14 = getelementptr inbounds i8, i8* %a, i64 14
  %arrayidx33.14 = getelementptr inbounds i8, i8* %b, i64 14
  %call16.14 = call zeroext i8 (...) @rand()
  store i8 %call16.14, i8* %scevgep26.13, align 1
  %1337 = load i8, i8* %scevgep26.13, align 1
  %conv23.14 = zext i8 %1337 to i32
  %1338 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14 = getelementptr i8, i8* %b, i64 15
  %1339 = load i8, i8* %scevgep34.14, align 1
  %call28.14 = call zeroext i8 @mult(i8 zeroext %1338, i8 zeroext %1339)
  %conv29.14 = zext i8 %call28.14 to i32
  %xor.14 = xor i32 %conv23.14, %conv29.14
  %scevgep35.14 = getelementptr i8, i8* %a, i64 15
  %1340 = load i8, i8* %scevgep35.14, align 1
  %1341 = load i8, i8* %arrayidx33.14, align 1
  %call34.14 = call zeroext i8 @mult(i8 zeroext %1340, i8 zeroext %1341)
  %conv35.14 = zext i8 %call34.14 to i32
  %xor36.14 = xor i32 %xor.14, %conv35.14
  %conv37.14 = trunc i32 %xor36.14 to i8
  store i8 %conv37.14, i8* %scevgep39.13, align 1
  %scevgep28.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1335, i64 0, i64 0, i64 1
  %1342 = bitcast i8* %scevgep28.14 to [21 x [21 x i8]]*
  %scevgep41.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1336, i64 0, i64 1, i64 0
  %1343 = bitcast i8* %scevgep41.14 to [21 x [21 x i8]]*
  %call16.14.1 = call zeroext i8 (...) @rand()
  store i8 %call16.14.1, i8* %scevgep28.14, align 1
  %1344 = load i8, i8* %scevgep28.14, align 1
  %conv23.14.1 = zext i8 %1344 to i32
  %1345 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14.1 = getelementptr i8, i8* %b, i64 16
  %1346 = load i8, i8* %scevgep34.14.1, align 1
  %call28.14.1 = call zeroext i8 @mult(i8 zeroext %1345, i8 zeroext %1346)
  %conv29.14.1 = zext i8 %call28.14.1 to i32
  %xor.14.1 = xor i32 %conv23.14.1, %conv29.14.1
  %scevgep35.14.1 = getelementptr i8, i8* %a, i64 16
  %1347 = load i8, i8* %scevgep35.14.1, align 1
  %1348 = load i8, i8* %arrayidx33.14, align 1
  %call34.14.1 = call zeroext i8 @mult(i8 zeroext %1347, i8 zeroext %1348)
  %conv35.14.1 = zext i8 %call34.14.1 to i32
  %xor36.14.1 = xor i32 %xor.14.1, %conv35.14.1
  %conv37.14.1 = trunc i32 %xor36.14.1 to i8
  store i8 %conv37.14.1, i8* %scevgep41.14, align 1
  %scevgep28.14.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1342, i64 0, i64 0, i64 1
  %1349 = bitcast i8* %scevgep28.14.1 to [21 x [21 x i8]]*
  %scevgep41.14.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1343, i64 0, i64 1, i64 0
  %1350 = bitcast i8* %scevgep41.14.1 to [21 x [21 x i8]]*
  %call16.14.2 = call zeroext i8 (...) @rand()
  store i8 %call16.14.2, i8* %scevgep28.14.1, align 1
  %1351 = load i8, i8* %scevgep28.14.1, align 1
  %conv23.14.2 = zext i8 %1351 to i32
  %1352 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14.2 = getelementptr i8, i8* %b, i64 17
  %1353 = load i8, i8* %scevgep34.14.2, align 1
  %call28.14.2 = call zeroext i8 @mult(i8 zeroext %1352, i8 zeroext %1353)
  %conv29.14.2 = zext i8 %call28.14.2 to i32
  %xor.14.2 = xor i32 %conv23.14.2, %conv29.14.2
  %scevgep35.14.2 = getelementptr i8, i8* %a, i64 17
  %1354 = load i8, i8* %scevgep35.14.2, align 1
  %1355 = load i8, i8* %arrayidx33.14, align 1
  %call34.14.2 = call zeroext i8 @mult(i8 zeroext %1354, i8 zeroext %1355)
  %conv35.14.2 = zext i8 %call34.14.2 to i32
  %xor36.14.2 = xor i32 %xor.14.2, %conv35.14.2
  %conv37.14.2 = trunc i32 %xor36.14.2 to i8
  store i8 %conv37.14.2, i8* %scevgep41.14.1, align 1
  %scevgep28.14.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1349, i64 0, i64 0, i64 1
  %1356 = bitcast i8* %scevgep28.14.2 to [21 x [21 x i8]]*
  %scevgep41.14.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1350, i64 0, i64 1, i64 0
  %1357 = bitcast i8* %scevgep41.14.2 to [21 x [21 x i8]]*
  %call16.14.3 = call zeroext i8 (...) @rand()
  store i8 %call16.14.3, i8* %scevgep28.14.2, align 1
  %1358 = load i8, i8* %scevgep28.14.2, align 1
  %conv23.14.3 = zext i8 %1358 to i32
  %1359 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14.3 = getelementptr i8, i8* %b, i64 18
  %1360 = load i8, i8* %scevgep34.14.3, align 1
  %call28.14.3 = call zeroext i8 @mult(i8 zeroext %1359, i8 zeroext %1360)
  %conv29.14.3 = zext i8 %call28.14.3 to i32
  %xor.14.3 = xor i32 %conv23.14.3, %conv29.14.3
  %scevgep35.14.3 = getelementptr i8, i8* %a, i64 18
  %1361 = load i8, i8* %scevgep35.14.3, align 1
  %1362 = load i8, i8* %arrayidx33.14, align 1
  %call34.14.3 = call zeroext i8 @mult(i8 zeroext %1361, i8 zeroext %1362)
  %conv35.14.3 = zext i8 %call34.14.3 to i32
  %xor36.14.3 = xor i32 %xor.14.3, %conv35.14.3
  %conv37.14.3 = trunc i32 %xor36.14.3 to i8
  store i8 %conv37.14.3, i8* %scevgep41.14.2, align 1
  %scevgep28.14.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1356, i64 0, i64 0, i64 1
  %1363 = bitcast i8* %scevgep28.14.3 to [21 x [21 x i8]]*
  %scevgep41.14.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1357, i64 0, i64 1, i64 0
  %1364 = bitcast i8* %scevgep41.14.3 to [21 x [21 x i8]]*
  %call16.14.4 = call zeroext i8 (...) @rand()
  store i8 %call16.14.4, i8* %scevgep28.14.3, align 1
  %1365 = load i8, i8* %scevgep28.14.3, align 1
  %conv23.14.4 = zext i8 %1365 to i32
  %1366 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14.4 = getelementptr i8, i8* %b, i64 19
  %1367 = load i8, i8* %scevgep34.14.4, align 1
  %call28.14.4 = call zeroext i8 @mult(i8 zeroext %1366, i8 zeroext %1367)
  %conv29.14.4 = zext i8 %call28.14.4 to i32
  %xor.14.4 = xor i32 %conv23.14.4, %conv29.14.4
  %scevgep35.14.4 = getelementptr i8, i8* %a, i64 19
  %1368 = load i8, i8* %scevgep35.14.4, align 1
  %1369 = load i8, i8* %arrayidx33.14, align 1
  %call34.14.4 = call zeroext i8 @mult(i8 zeroext %1368, i8 zeroext %1369)
  %conv35.14.4 = zext i8 %call34.14.4 to i32
  %xor36.14.4 = xor i32 %xor.14.4, %conv35.14.4
  %conv37.14.4 = trunc i32 %xor36.14.4 to i8
  store i8 %conv37.14.4, i8* %scevgep41.14.3, align 1
  %scevgep28.14.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1363, i64 0, i64 0, i64 1
  %scevgep41.14.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1364, i64 0, i64 1, i64 0
  %call16.14.5 = call zeroext i8 (...) @rand()
  store i8 %call16.14.5, i8* %scevgep28.14.4, align 1
  %1370 = load i8, i8* %scevgep28.14.4, align 1
  %conv23.14.5 = zext i8 %1370 to i32
  %1371 = load i8, i8* %arrayidx25.14, align 1
  %scevgep34.14.5 = getelementptr i8, i8* %b, i64 20
  %1372 = load i8, i8* %scevgep34.14.5, align 1
  %call28.14.5 = call zeroext i8 @mult(i8 zeroext %1371, i8 zeroext %1372)
  %conv29.14.5 = zext i8 %call28.14.5 to i32
  %xor.14.5 = xor i32 %conv23.14.5, %conv29.14.5
  %scevgep35.14.5 = getelementptr i8, i8* %a, i64 20
  %1373 = load i8, i8* %scevgep35.14.5, align 1
  %1374 = load i8, i8* %arrayidx33.14, align 1
  %call34.14.5 = call zeroext i8 @mult(i8 zeroext %1373, i8 zeroext %1374)
  %conv35.14.5 = zext i8 %call34.14.5 to i32
  %xor36.14.5 = xor i32 %xor.14.5, %conv35.14.5
  %conv37.14.5 = trunc i32 %xor36.14.5 to i8
  store i8 %conv37.14.5, i8* %scevgep41.14.4, align 1
  %scevgep26.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1335, i64 0, i64 1, i64 1
  %1375 = bitcast i8* %scevgep26.14 to [21 x [21 x i8]]*
  %scevgep39.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1336, i64 0, i64 1, i64 1
  %1376 = bitcast i8* %scevgep39.14 to [21 x [21 x i8]]*
  %arrayidx25.15 = getelementptr inbounds i8, i8* %a, i64 15
  %arrayidx33.15 = getelementptr inbounds i8, i8* %b, i64 15
  %call16.15 = call zeroext i8 (...) @rand()
  store i8 %call16.15, i8* %scevgep26.14, align 1
  %1377 = load i8, i8* %scevgep26.14, align 1
  %conv23.15 = zext i8 %1377 to i32
  %1378 = load i8, i8* %arrayidx25.15, align 1
  %scevgep34.15 = getelementptr i8, i8* %b, i64 16
  %1379 = load i8, i8* %scevgep34.15, align 1
  %call28.15 = call zeroext i8 @mult(i8 zeroext %1378, i8 zeroext %1379)
  %conv29.15 = zext i8 %call28.15 to i32
  %xor.15 = xor i32 %conv23.15, %conv29.15
  %scevgep35.15 = getelementptr i8, i8* %a, i64 16
  %1380 = load i8, i8* %scevgep35.15, align 1
  %1381 = load i8, i8* %arrayidx33.15, align 1
  %call34.15 = call zeroext i8 @mult(i8 zeroext %1380, i8 zeroext %1381)
  %conv35.15 = zext i8 %call34.15 to i32
  %xor36.15 = xor i32 %xor.15, %conv35.15
  %conv37.15 = trunc i32 %xor36.15 to i8
  store i8 %conv37.15, i8* %scevgep39.14, align 1
  %scevgep28.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1375, i64 0, i64 0, i64 1
  %1382 = bitcast i8* %scevgep28.15 to [21 x [21 x i8]]*
  %scevgep41.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1376, i64 0, i64 1, i64 0
  %1383 = bitcast i8* %scevgep41.15 to [21 x [21 x i8]]*
  %call16.15.1 = call zeroext i8 (...) @rand()
  store i8 %call16.15.1, i8* %scevgep28.15, align 1
  %1384 = load i8, i8* %scevgep28.15, align 1
  %conv23.15.1 = zext i8 %1384 to i32
  %1385 = load i8, i8* %arrayidx25.15, align 1
  %scevgep34.15.1 = getelementptr i8, i8* %b, i64 17
  %1386 = load i8, i8* %scevgep34.15.1, align 1
  %call28.15.1 = call zeroext i8 @mult(i8 zeroext %1385, i8 zeroext %1386)
  %conv29.15.1 = zext i8 %call28.15.1 to i32
  %xor.15.1 = xor i32 %conv23.15.1, %conv29.15.1
  %scevgep35.15.1 = getelementptr i8, i8* %a, i64 17
  %1387 = load i8, i8* %scevgep35.15.1, align 1
  %1388 = load i8, i8* %arrayidx33.15, align 1
  %call34.15.1 = call zeroext i8 @mult(i8 zeroext %1387, i8 zeroext %1388)
  %conv35.15.1 = zext i8 %call34.15.1 to i32
  %xor36.15.1 = xor i32 %xor.15.1, %conv35.15.1
  %conv37.15.1 = trunc i32 %xor36.15.1 to i8
  store i8 %conv37.15.1, i8* %scevgep41.15, align 1
  %scevgep28.15.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1382, i64 0, i64 0, i64 1
  %1389 = bitcast i8* %scevgep28.15.1 to [21 x [21 x i8]]*
  %scevgep41.15.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1383, i64 0, i64 1, i64 0
  %1390 = bitcast i8* %scevgep41.15.1 to [21 x [21 x i8]]*
  %call16.15.2 = call zeroext i8 (...) @rand()
  store i8 %call16.15.2, i8* %scevgep28.15.1, align 1
  %1391 = load i8, i8* %scevgep28.15.1, align 1
  %conv23.15.2 = zext i8 %1391 to i32
  %1392 = load i8, i8* %arrayidx25.15, align 1
  %scevgep34.15.2 = getelementptr i8, i8* %b, i64 18
  %1393 = load i8, i8* %scevgep34.15.2, align 1
  %call28.15.2 = call zeroext i8 @mult(i8 zeroext %1392, i8 zeroext %1393)
  %conv29.15.2 = zext i8 %call28.15.2 to i32
  %xor.15.2 = xor i32 %conv23.15.2, %conv29.15.2
  %scevgep35.15.2 = getelementptr i8, i8* %a, i64 18
  %1394 = load i8, i8* %scevgep35.15.2, align 1
  %1395 = load i8, i8* %arrayidx33.15, align 1
  %call34.15.2 = call zeroext i8 @mult(i8 zeroext %1394, i8 zeroext %1395)
  %conv35.15.2 = zext i8 %call34.15.2 to i32
  %xor36.15.2 = xor i32 %xor.15.2, %conv35.15.2
  %conv37.15.2 = trunc i32 %xor36.15.2 to i8
  store i8 %conv37.15.2, i8* %scevgep41.15.1, align 1
  %scevgep28.15.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1389, i64 0, i64 0, i64 1
  %1396 = bitcast i8* %scevgep28.15.2 to [21 x [21 x i8]]*
  %scevgep41.15.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1390, i64 0, i64 1, i64 0
  %1397 = bitcast i8* %scevgep41.15.2 to [21 x [21 x i8]]*
  %call16.15.3 = call zeroext i8 (...) @rand()
  store i8 %call16.15.3, i8* %scevgep28.15.2, align 1
  %1398 = load i8, i8* %scevgep28.15.2, align 1
  %conv23.15.3 = zext i8 %1398 to i32
  %1399 = load i8, i8* %arrayidx25.15, align 1
  %scevgep34.15.3 = getelementptr i8, i8* %b, i64 19
  %1400 = load i8, i8* %scevgep34.15.3, align 1
  %call28.15.3 = call zeroext i8 @mult(i8 zeroext %1399, i8 zeroext %1400)
  %conv29.15.3 = zext i8 %call28.15.3 to i32
  %xor.15.3 = xor i32 %conv23.15.3, %conv29.15.3
  %scevgep35.15.3 = getelementptr i8, i8* %a, i64 19
  %1401 = load i8, i8* %scevgep35.15.3, align 1
  %1402 = load i8, i8* %arrayidx33.15, align 1
  %call34.15.3 = call zeroext i8 @mult(i8 zeroext %1401, i8 zeroext %1402)
  %conv35.15.3 = zext i8 %call34.15.3 to i32
  %xor36.15.3 = xor i32 %xor.15.3, %conv35.15.3
  %conv37.15.3 = trunc i32 %xor36.15.3 to i8
  store i8 %conv37.15.3, i8* %scevgep41.15.2, align 1
  %scevgep28.15.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1396, i64 0, i64 0, i64 1
  %scevgep41.15.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1397, i64 0, i64 1, i64 0
  %call16.15.4 = call zeroext i8 (...) @rand()
  store i8 %call16.15.4, i8* %scevgep28.15.3, align 1
  %1403 = load i8, i8* %scevgep28.15.3, align 1
  %conv23.15.4 = zext i8 %1403 to i32
  %1404 = load i8, i8* %arrayidx25.15, align 1
  %scevgep34.15.4 = getelementptr i8, i8* %b, i64 20
  %1405 = load i8, i8* %scevgep34.15.4, align 1
  %call28.15.4 = call zeroext i8 @mult(i8 zeroext %1404, i8 zeroext %1405)
  %conv29.15.4 = zext i8 %call28.15.4 to i32
  %xor.15.4 = xor i32 %conv23.15.4, %conv29.15.4
  %scevgep35.15.4 = getelementptr i8, i8* %a, i64 20
  %1406 = load i8, i8* %scevgep35.15.4, align 1
  %1407 = load i8, i8* %arrayidx33.15, align 1
  %call34.15.4 = call zeroext i8 @mult(i8 zeroext %1406, i8 zeroext %1407)
  %conv35.15.4 = zext i8 %call34.15.4 to i32
  %xor36.15.4 = xor i32 %xor.15.4, %conv35.15.4
  %conv37.15.4 = trunc i32 %xor36.15.4 to i8
  store i8 %conv37.15.4, i8* %scevgep41.15.3, align 1
  %scevgep26.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1375, i64 0, i64 1, i64 1
  %1408 = bitcast i8* %scevgep26.15 to [21 x [21 x i8]]*
  %scevgep39.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1376, i64 0, i64 1, i64 1
  %1409 = bitcast i8* %scevgep39.15 to [21 x [21 x i8]]*
  %arrayidx25.16 = getelementptr inbounds i8, i8* %a, i64 16
  %arrayidx33.16 = getelementptr inbounds i8, i8* %b, i64 16
  %call16.16 = call zeroext i8 (...) @rand()
  store i8 %call16.16, i8* %scevgep26.15, align 1
  %1410 = load i8, i8* %scevgep26.15, align 1
  %conv23.16 = zext i8 %1410 to i32
  %1411 = load i8, i8* %arrayidx25.16, align 1
  %scevgep34.16 = getelementptr i8, i8* %b, i64 17
  %1412 = load i8, i8* %scevgep34.16, align 1
  %call28.16 = call zeroext i8 @mult(i8 zeroext %1411, i8 zeroext %1412)
  %conv29.16 = zext i8 %call28.16 to i32
  %xor.16 = xor i32 %conv23.16, %conv29.16
  %scevgep35.16 = getelementptr i8, i8* %a, i64 17
  %1413 = load i8, i8* %scevgep35.16, align 1
  %1414 = load i8, i8* %arrayidx33.16, align 1
  %call34.16 = call zeroext i8 @mult(i8 zeroext %1413, i8 zeroext %1414)
  %conv35.16 = zext i8 %call34.16 to i32
  %xor36.16 = xor i32 %xor.16, %conv35.16
  %conv37.16 = trunc i32 %xor36.16 to i8
  store i8 %conv37.16, i8* %scevgep39.15, align 1
  %scevgep28.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1408, i64 0, i64 0, i64 1
  %1415 = bitcast i8* %scevgep28.16 to [21 x [21 x i8]]*
  %scevgep41.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1409, i64 0, i64 1, i64 0
  %1416 = bitcast i8* %scevgep41.16 to [21 x [21 x i8]]*
  %call16.16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.16.1, i8* %scevgep28.16, align 1
  %1417 = load i8, i8* %scevgep28.16, align 1
  %conv23.16.1 = zext i8 %1417 to i32
  %1418 = load i8, i8* %arrayidx25.16, align 1
  %scevgep34.16.1 = getelementptr i8, i8* %b, i64 18
  %1419 = load i8, i8* %scevgep34.16.1, align 1
  %call28.16.1 = call zeroext i8 @mult(i8 zeroext %1418, i8 zeroext %1419)
  %conv29.16.1 = zext i8 %call28.16.1 to i32
  %xor.16.1 = xor i32 %conv23.16.1, %conv29.16.1
  %scevgep35.16.1 = getelementptr i8, i8* %a, i64 18
  %1420 = load i8, i8* %scevgep35.16.1, align 1
  %1421 = load i8, i8* %arrayidx33.16, align 1
  %call34.16.1 = call zeroext i8 @mult(i8 zeroext %1420, i8 zeroext %1421)
  %conv35.16.1 = zext i8 %call34.16.1 to i32
  %xor36.16.1 = xor i32 %xor.16.1, %conv35.16.1
  %conv37.16.1 = trunc i32 %xor36.16.1 to i8
  store i8 %conv37.16.1, i8* %scevgep41.16, align 1
  %scevgep28.16.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1415, i64 0, i64 0, i64 1
  %1422 = bitcast i8* %scevgep28.16.1 to [21 x [21 x i8]]*
  %scevgep41.16.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1416, i64 0, i64 1, i64 0
  %1423 = bitcast i8* %scevgep41.16.1 to [21 x [21 x i8]]*
  %call16.16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.16.2, i8* %scevgep28.16.1, align 1
  %1424 = load i8, i8* %scevgep28.16.1, align 1
  %conv23.16.2 = zext i8 %1424 to i32
  %1425 = load i8, i8* %arrayidx25.16, align 1
  %scevgep34.16.2 = getelementptr i8, i8* %b, i64 19
  %1426 = load i8, i8* %scevgep34.16.2, align 1
  %call28.16.2 = call zeroext i8 @mult(i8 zeroext %1425, i8 zeroext %1426)
  %conv29.16.2 = zext i8 %call28.16.2 to i32
  %xor.16.2 = xor i32 %conv23.16.2, %conv29.16.2
  %scevgep35.16.2 = getelementptr i8, i8* %a, i64 19
  %1427 = load i8, i8* %scevgep35.16.2, align 1
  %1428 = load i8, i8* %arrayidx33.16, align 1
  %call34.16.2 = call zeroext i8 @mult(i8 zeroext %1427, i8 zeroext %1428)
  %conv35.16.2 = zext i8 %call34.16.2 to i32
  %xor36.16.2 = xor i32 %xor.16.2, %conv35.16.2
  %conv37.16.2 = trunc i32 %xor36.16.2 to i8
  store i8 %conv37.16.2, i8* %scevgep41.16.1, align 1
  %scevgep28.16.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1422, i64 0, i64 0, i64 1
  %scevgep41.16.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1423, i64 0, i64 1, i64 0
  %call16.16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.16.3, i8* %scevgep28.16.2, align 1
  %1429 = load i8, i8* %scevgep28.16.2, align 1
  %conv23.16.3 = zext i8 %1429 to i32
  %1430 = load i8, i8* %arrayidx25.16, align 1
  %scevgep34.16.3 = getelementptr i8, i8* %b, i64 20
  %1431 = load i8, i8* %scevgep34.16.3, align 1
  %call28.16.3 = call zeroext i8 @mult(i8 zeroext %1430, i8 zeroext %1431)
  %conv29.16.3 = zext i8 %call28.16.3 to i32
  %xor.16.3 = xor i32 %conv23.16.3, %conv29.16.3
  %scevgep35.16.3 = getelementptr i8, i8* %a, i64 20
  %1432 = load i8, i8* %scevgep35.16.3, align 1
  %1433 = load i8, i8* %arrayidx33.16, align 1
  %call34.16.3 = call zeroext i8 @mult(i8 zeroext %1432, i8 zeroext %1433)
  %conv35.16.3 = zext i8 %call34.16.3 to i32
  %xor36.16.3 = xor i32 %xor.16.3, %conv35.16.3
  %conv37.16.3 = trunc i32 %xor36.16.3 to i8
  store i8 %conv37.16.3, i8* %scevgep41.16.2, align 1
  %scevgep26.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1408, i64 0, i64 1, i64 1
  %1434 = bitcast i8* %scevgep26.16 to [21 x [21 x i8]]*
  %scevgep39.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1409, i64 0, i64 1, i64 1
  %1435 = bitcast i8* %scevgep39.16 to [21 x [21 x i8]]*
  %arrayidx25.17 = getelementptr inbounds i8, i8* %a, i64 17
  %arrayidx33.17 = getelementptr inbounds i8, i8* %b, i64 17
  %call16.17 = call zeroext i8 (...) @rand()
  store i8 %call16.17, i8* %scevgep26.16, align 1
  %1436 = load i8, i8* %scevgep26.16, align 1
  %conv23.17 = zext i8 %1436 to i32
  %1437 = load i8, i8* %arrayidx25.17, align 1
  %scevgep34.17 = getelementptr i8, i8* %b, i64 18
  %1438 = load i8, i8* %scevgep34.17, align 1
  %call28.17 = call zeroext i8 @mult(i8 zeroext %1437, i8 zeroext %1438)
  %conv29.17 = zext i8 %call28.17 to i32
  %xor.17 = xor i32 %conv23.17, %conv29.17
  %scevgep35.17 = getelementptr i8, i8* %a, i64 18
  %1439 = load i8, i8* %scevgep35.17, align 1
  %1440 = load i8, i8* %arrayidx33.17, align 1
  %call34.17 = call zeroext i8 @mult(i8 zeroext %1439, i8 zeroext %1440)
  %conv35.17 = zext i8 %call34.17 to i32
  %xor36.17 = xor i32 %xor.17, %conv35.17
  %conv37.17 = trunc i32 %xor36.17 to i8
  store i8 %conv37.17, i8* %scevgep39.16, align 1
  %scevgep28.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1434, i64 0, i64 0, i64 1
  %1441 = bitcast i8* %scevgep28.17 to [21 x [21 x i8]]*
  %scevgep41.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1435, i64 0, i64 1, i64 0
  %1442 = bitcast i8* %scevgep41.17 to [21 x [21 x i8]]*
  %call16.17.1 = call zeroext i8 (...) @rand()
  store i8 %call16.17.1, i8* %scevgep28.17, align 1
  %1443 = load i8, i8* %scevgep28.17, align 1
  %conv23.17.1 = zext i8 %1443 to i32
  %1444 = load i8, i8* %arrayidx25.17, align 1
  %scevgep34.17.1 = getelementptr i8, i8* %b, i64 19
  %1445 = load i8, i8* %scevgep34.17.1, align 1
  %call28.17.1 = call zeroext i8 @mult(i8 zeroext %1444, i8 zeroext %1445)
  %conv29.17.1 = zext i8 %call28.17.1 to i32
  %xor.17.1 = xor i32 %conv23.17.1, %conv29.17.1
  %scevgep35.17.1 = getelementptr i8, i8* %a, i64 19
  %1446 = load i8, i8* %scevgep35.17.1, align 1
  %1447 = load i8, i8* %arrayidx33.17, align 1
  %call34.17.1 = call zeroext i8 @mult(i8 zeroext %1446, i8 zeroext %1447)
  %conv35.17.1 = zext i8 %call34.17.1 to i32
  %xor36.17.1 = xor i32 %xor.17.1, %conv35.17.1
  %conv37.17.1 = trunc i32 %xor36.17.1 to i8
  store i8 %conv37.17.1, i8* %scevgep41.17, align 1
  %scevgep28.17.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1441, i64 0, i64 0, i64 1
  %scevgep41.17.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1442, i64 0, i64 1, i64 0
  %call16.17.2 = call zeroext i8 (...) @rand()
  store i8 %call16.17.2, i8* %scevgep28.17.1, align 1
  %1448 = load i8, i8* %scevgep28.17.1, align 1
  %conv23.17.2 = zext i8 %1448 to i32
  %1449 = load i8, i8* %arrayidx25.17, align 1
  %scevgep34.17.2 = getelementptr i8, i8* %b, i64 20
  %1450 = load i8, i8* %scevgep34.17.2, align 1
  %call28.17.2 = call zeroext i8 @mult(i8 zeroext %1449, i8 zeroext %1450)
  %conv29.17.2 = zext i8 %call28.17.2 to i32
  %xor.17.2 = xor i32 %conv23.17.2, %conv29.17.2
  %scevgep35.17.2 = getelementptr i8, i8* %a, i64 20
  %1451 = load i8, i8* %scevgep35.17.2, align 1
  %1452 = load i8, i8* %arrayidx33.17, align 1
  %call34.17.2 = call zeroext i8 @mult(i8 zeroext %1451, i8 zeroext %1452)
  %conv35.17.2 = zext i8 %call34.17.2 to i32
  %xor36.17.2 = xor i32 %xor.17.2, %conv35.17.2
  %conv37.17.2 = trunc i32 %xor36.17.2 to i8
  store i8 %conv37.17.2, i8* %scevgep41.17.1, align 1
  %scevgep26.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1434, i64 0, i64 1, i64 1
  %1453 = bitcast i8* %scevgep26.17 to [21 x [21 x i8]]*
  %scevgep39.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1435, i64 0, i64 1, i64 1
  %1454 = bitcast i8* %scevgep39.17 to [21 x [21 x i8]]*
  %arrayidx25.18 = getelementptr inbounds i8, i8* %a, i64 18
  %arrayidx33.18 = getelementptr inbounds i8, i8* %b, i64 18
  %call16.18 = call zeroext i8 (...) @rand()
  store i8 %call16.18, i8* %scevgep26.17, align 1
  %1455 = load i8, i8* %scevgep26.17, align 1
  %conv23.18 = zext i8 %1455 to i32
  %1456 = load i8, i8* %arrayidx25.18, align 1
  %scevgep34.18 = getelementptr i8, i8* %b, i64 19
  %1457 = load i8, i8* %scevgep34.18, align 1
  %call28.18 = call zeroext i8 @mult(i8 zeroext %1456, i8 zeroext %1457)
  %conv29.18 = zext i8 %call28.18 to i32
  %xor.18 = xor i32 %conv23.18, %conv29.18
  %scevgep35.18 = getelementptr i8, i8* %a, i64 19
  %1458 = load i8, i8* %scevgep35.18, align 1
  %1459 = load i8, i8* %arrayidx33.18, align 1
  %call34.18 = call zeroext i8 @mult(i8 zeroext %1458, i8 zeroext %1459)
  %conv35.18 = zext i8 %call34.18 to i32
  %xor36.18 = xor i32 %xor.18, %conv35.18
  %conv37.18 = trunc i32 %xor36.18 to i8
  store i8 %conv37.18, i8* %scevgep39.17, align 1
  %scevgep28.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1453, i64 0, i64 0, i64 1
  %scevgep41.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1454, i64 0, i64 1, i64 0
  %call16.18.1 = call zeroext i8 (...) @rand()
  store i8 %call16.18.1, i8* %scevgep28.18, align 1
  %1460 = load i8, i8* %scevgep28.18, align 1
  %conv23.18.1 = zext i8 %1460 to i32
  %1461 = load i8, i8* %arrayidx25.18, align 1
  %scevgep34.18.1 = getelementptr i8, i8* %b, i64 20
  %1462 = load i8, i8* %scevgep34.18.1, align 1
  %call28.18.1 = call zeroext i8 @mult(i8 zeroext %1461, i8 zeroext %1462)
  %conv29.18.1 = zext i8 %call28.18.1 to i32
  %xor.18.1 = xor i32 %conv23.18.1, %conv29.18.1
  %scevgep35.18.1 = getelementptr i8, i8* %a, i64 20
  %1463 = load i8, i8* %scevgep35.18.1, align 1
  %1464 = load i8, i8* %arrayidx33.18, align 1
  %call34.18.1 = call zeroext i8 @mult(i8 zeroext %1463, i8 zeroext %1464)
  %conv35.18.1 = zext i8 %call34.18.1 to i32
  %xor36.18.1 = xor i32 %xor.18.1, %conv35.18.1
  %conv37.18.1 = trunc i32 %xor36.18.1 to i8
  store i8 %conv37.18.1, i8* %scevgep41.18, align 1
  %scevgep26.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1453, i64 0, i64 1, i64 1
  %scevgep39.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1454, i64 0, i64 1, i64 1
  %arrayidx25.19 = getelementptr inbounds i8, i8* %a, i64 19
  %arrayidx33.19 = getelementptr inbounds i8, i8* %b, i64 19
  %call16.19 = call zeroext i8 (...) @rand()
  store i8 %call16.19, i8* %scevgep26.18, align 1
  %1465 = load i8, i8* %scevgep26.18, align 1
  %conv23.19 = zext i8 %1465 to i32
  %1466 = load i8, i8* %arrayidx25.19, align 1
  %scevgep34.19 = getelementptr i8, i8* %b, i64 20
  %1467 = load i8, i8* %scevgep34.19, align 1
  %call28.19 = call zeroext i8 @mult(i8 zeroext %1466, i8 zeroext %1467)
  %conv29.19 = zext i8 %call28.19 to i32
  %xor.19 = xor i32 %conv23.19, %conv29.19
  %scevgep35.19 = getelementptr i8, i8* %a, i64 20
  %1468 = load i8, i8* %scevgep35.19, align 1
  %1469 = load i8, i8* %arrayidx33.19, align 1
  %call34.19 = call zeroext i8 @mult(i8 zeroext %1468, i8 zeroext %1469)
  %conv35.19 = zext i8 %call34.19 to i32
  %xor36.19 = xor i32 %xor.19, %conv35.19
  %conv37.19 = trunc i32 %xor36.19 to i8
  store i8 %conv37.19, i8* %scevgep39.18, align 1
  %1470 = load i8, i8* %a, align 1
  %1471 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %1470, i8 zeroext %1471)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 1
  %1472 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %1472 to i32
  %1473 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %1473 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 2
  %1474 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %1474 to i32
  %1475 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %1475 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 3
  %1476 = load i8, i8* %scevgep20.3, align 1
  %conv68.3 = zext i8 %1476 to i32
  %1477 = load i8, i8* %c, align 1
  %conv71.3 = zext i8 %1477 to i32
  %xor72.3 = xor i32 %conv71.3, %conv68.3
  %conv73.3 = trunc i32 %xor72.3 to i8
  store i8 %conv73.3, i8* %c, align 1
  %scevgep20.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 4
  %1478 = load i8, i8* %scevgep20.4, align 1
  %conv68.4 = zext i8 %1478 to i32
  %1479 = load i8, i8* %c, align 1
  %conv71.4 = zext i8 %1479 to i32
  %xor72.4 = xor i32 %conv71.4, %conv68.4
  %conv73.4 = trunc i32 %xor72.4 to i8
  store i8 %conv73.4, i8* %c, align 1
  %scevgep20.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 5
  %1480 = load i8, i8* %scevgep20.5, align 1
  %conv68.5 = zext i8 %1480 to i32
  %1481 = load i8, i8* %c, align 1
  %conv71.5 = zext i8 %1481 to i32
  %xor72.5 = xor i32 %conv71.5, %conv68.5
  %conv73.5 = trunc i32 %xor72.5 to i8
  store i8 %conv73.5, i8* %c, align 1
  %scevgep20.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 6
  %1482 = load i8, i8* %scevgep20.6, align 1
  %conv68.6 = zext i8 %1482 to i32
  %1483 = load i8, i8* %c, align 1
  %conv71.6 = zext i8 %1483 to i32
  %xor72.6 = xor i32 %conv71.6, %conv68.6
  %conv73.6 = trunc i32 %xor72.6 to i8
  store i8 %conv73.6, i8* %c, align 1
  %scevgep20.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 7
  %1484 = load i8, i8* %scevgep20.7, align 1
  %conv68.7 = zext i8 %1484 to i32
  %1485 = load i8, i8* %c, align 1
  %conv71.7 = zext i8 %1485 to i32
  %xor72.7 = xor i32 %conv71.7, %conv68.7
  %conv73.7 = trunc i32 %xor72.7 to i8
  store i8 %conv73.7, i8* %c, align 1
  %scevgep20.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 8
  %1486 = load i8, i8* %scevgep20.8, align 1
  %conv68.8 = zext i8 %1486 to i32
  %1487 = load i8, i8* %c, align 1
  %conv71.8 = zext i8 %1487 to i32
  %xor72.8 = xor i32 %conv71.8, %conv68.8
  %conv73.8 = trunc i32 %xor72.8 to i8
  store i8 %conv73.8, i8* %c, align 1
  %scevgep20.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 9
  %1488 = load i8, i8* %scevgep20.9, align 1
  %conv68.9 = zext i8 %1488 to i32
  %1489 = load i8, i8* %c, align 1
  %conv71.9 = zext i8 %1489 to i32
  %xor72.9 = xor i32 %conv71.9, %conv68.9
  %conv73.9 = trunc i32 %xor72.9 to i8
  store i8 %conv73.9, i8* %c, align 1
  %scevgep20.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 10
  %1490 = load i8, i8* %scevgep20.10, align 1
  %conv68.10 = zext i8 %1490 to i32
  %1491 = load i8, i8* %c, align 1
  %conv71.10 = zext i8 %1491 to i32
  %xor72.10 = xor i32 %conv71.10, %conv68.10
  %conv73.10 = trunc i32 %xor72.10 to i8
  store i8 %conv73.10, i8* %c, align 1
  %scevgep20.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 11
  %1492 = load i8, i8* %scevgep20.11, align 1
  %conv68.11 = zext i8 %1492 to i32
  %1493 = load i8, i8* %c, align 1
  %conv71.11 = zext i8 %1493 to i32
  %xor72.11 = xor i32 %conv71.11, %conv68.11
  %conv73.11 = trunc i32 %xor72.11 to i8
  store i8 %conv73.11, i8* %c, align 1
  %scevgep20.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 12
  %1494 = load i8, i8* %scevgep20.12, align 1
  %conv68.12 = zext i8 %1494 to i32
  %1495 = load i8, i8* %c, align 1
  %conv71.12 = zext i8 %1495 to i32
  %xor72.12 = xor i32 %conv71.12, %conv68.12
  %conv73.12 = trunc i32 %xor72.12 to i8
  store i8 %conv73.12, i8* %c, align 1
  %scevgep20.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 13
  %1496 = load i8, i8* %scevgep20.13, align 1
  %conv68.13 = zext i8 %1496 to i32
  %1497 = load i8, i8* %c, align 1
  %conv71.13 = zext i8 %1497 to i32
  %xor72.13 = xor i32 %conv71.13, %conv68.13
  %conv73.13 = trunc i32 %xor72.13 to i8
  store i8 %conv73.13, i8* %c, align 1
  %scevgep20.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 14
  %1498 = load i8, i8* %scevgep20.14, align 1
  %conv68.14 = zext i8 %1498 to i32
  %1499 = load i8, i8* %c, align 1
  %conv71.14 = zext i8 %1499 to i32
  %xor72.14 = xor i32 %conv71.14, %conv68.14
  %conv73.14 = trunc i32 %xor72.14 to i8
  store i8 %conv73.14, i8* %c, align 1
  %scevgep20.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 15
  %1500 = load i8, i8* %scevgep20.15, align 1
  %conv68.15 = zext i8 %1500 to i32
  %1501 = load i8, i8* %c, align 1
  %conv71.15 = zext i8 %1501 to i32
  %xor72.15 = xor i32 %conv71.15, %conv68.15
  %conv73.15 = trunc i32 %xor72.15 to i8
  store i8 %conv73.15, i8* %c, align 1
  %scevgep20.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 16
  %1502 = load i8, i8* %scevgep20.16, align 1
  %conv68.16 = zext i8 %1502 to i32
  %1503 = load i8, i8* %c, align 1
  %conv71.16 = zext i8 %1503 to i32
  %xor72.16 = xor i32 %conv71.16, %conv68.16
  %conv73.16 = trunc i32 %xor72.16 to i8
  store i8 %conv73.16, i8* %c, align 1
  %scevgep20.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 17
  %1504 = load i8, i8* %scevgep20.17, align 1
  %conv68.17 = zext i8 %1504 to i32
  %1505 = load i8, i8* %c, align 1
  %conv71.17 = zext i8 %1505 to i32
  %xor72.17 = xor i32 %conv71.17, %conv68.17
  %conv73.17 = trunc i32 %xor72.17 to i8
  store i8 %conv73.17, i8* %c, align 1
  %scevgep20.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 18
  %1506 = load i8, i8* %scevgep20.18, align 1
  %conv68.18 = zext i8 %1506 to i32
  %1507 = load i8, i8* %c, align 1
  %conv71.18 = zext i8 %1507 to i32
  %xor72.18 = xor i32 %conv71.18, %conv68.18
  %conv73.18 = trunc i32 %xor72.18 to i8
  store i8 %conv73.18, i8* %c, align 1
  %scevgep20.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 19
  %1508 = load i8, i8* %scevgep20.19, align 1
  %conv68.19 = zext i8 %1508 to i32
  %1509 = load i8, i8* %c, align 1
  %conv71.19 = zext i8 %1509 to i32
  %xor72.19 = xor i32 %conv71.19, %conv68.19
  %conv73.19 = trunc i32 %xor72.19 to i8
  store i8 %conv73.19, i8* %c, align 1
  %scevgep20.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 20
  %1510 = load i8, i8* %scevgep20.20, align 1
  %conv68.20 = zext i8 %1510 to i32
  %1511 = load i8, i8* %c, align 1
  %conv71.20 = zext i8 %1511 to i32
  %xor72.20 = xor i32 %conv71.20, %conv68.20
  %conv73.20 = trunc i32 %xor72.20 to i8
  store i8 %conv73.20, i8* %c, align 1
  %scevgep19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 1, i64 0
  %1512 = bitcast i8* %scevgep19 to [21 x [21 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %1513 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %1514 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %1513, i8 zeroext %1514)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.154 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 0
  %1515 = load i8, i8* %scevgep20.154, align 1
  %conv68.155 = zext i8 %1515 to i32
  %1516 = load i8, i8* %arrayidx70.1, align 1
  %conv71.156 = zext i8 %1516 to i32
  %xor72.157 = xor i32 %conv71.156, %conv68.155
  %conv73.158 = trunc i32 %xor72.157 to i8
  store i8 %conv73.158, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 2
  %1517 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %1517 to i32
  %1518 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %1518 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep20.3.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 3
  %1519 = load i8, i8* %scevgep20.3.1, align 1
  %conv68.3.1 = zext i8 %1519 to i32
  %1520 = load i8, i8* %arrayidx70.1, align 1
  %conv71.3.1 = zext i8 %1520 to i32
  %xor72.3.1 = xor i32 %conv71.3.1, %conv68.3.1
  %conv73.3.1 = trunc i32 %xor72.3.1 to i8
  store i8 %conv73.3.1, i8* %arrayidx70.1, align 1
  %scevgep20.4.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 4
  %1521 = load i8, i8* %scevgep20.4.1, align 1
  %conv68.4.1 = zext i8 %1521 to i32
  %1522 = load i8, i8* %arrayidx70.1, align 1
  %conv71.4.1 = zext i8 %1522 to i32
  %xor72.4.1 = xor i32 %conv71.4.1, %conv68.4.1
  %conv73.4.1 = trunc i32 %xor72.4.1 to i8
  store i8 %conv73.4.1, i8* %arrayidx70.1, align 1
  %scevgep20.5.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 5
  %1523 = load i8, i8* %scevgep20.5.1, align 1
  %conv68.5.1 = zext i8 %1523 to i32
  %1524 = load i8, i8* %arrayidx70.1, align 1
  %conv71.5.1 = zext i8 %1524 to i32
  %xor72.5.1 = xor i32 %conv71.5.1, %conv68.5.1
  %conv73.5.1 = trunc i32 %xor72.5.1 to i8
  store i8 %conv73.5.1, i8* %arrayidx70.1, align 1
  %scevgep20.6.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 6
  %1525 = load i8, i8* %scevgep20.6.1, align 1
  %conv68.6.1 = zext i8 %1525 to i32
  %1526 = load i8, i8* %arrayidx70.1, align 1
  %conv71.6.1 = zext i8 %1526 to i32
  %xor72.6.1 = xor i32 %conv71.6.1, %conv68.6.1
  %conv73.6.1 = trunc i32 %xor72.6.1 to i8
  store i8 %conv73.6.1, i8* %arrayidx70.1, align 1
  %scevgep20.7.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 7
  %1527 = load i8, i8* %scevgep20.7.1, align 1
  %conv68.7.1 = zext i8 %1527 to i32
  %1528 = load i8, i8* %arrayidx70.1, align 1
  %conv71.7.1 = zext i8 %1528 to i32
  %xor72.7.1 = xor i32 %conv71.7.1, %conv68.7.1
  %conv73.7.1 = trunc i32 %xor72.7.1 to i8
  store i8 %conv73.7.1, i8* %arrayidx70.1, align 1
  %scevgep20.8.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 8
  %1529 = load i8, i8* %scevgep20.8.1, align 1
  %conv68.8.1 = zext i8 %1529 to i32
  %1530 = load i8, i8* %arrayidx70.1, align 1
  %conv71.8.1 = zext i8 %1530 to i32
  %xor72.8.1 = xor i32 %conv71.8.1, %conv68.8.1
  %conv73.8.1 = trunc i32 %xor72.8.1 to i8
  store i8 %conv73.8.1, i8* %arrayidx70.1, align 1
  %scevgep20.9.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 9
  %1531 = load i8, i8* %scevgep20.9.1, align 1
  %conv68.9.1 = zext i8 %1531 to i32
  %1532 = load i8, i8* %arrayidx70.1, align 1
  %conv71.9.1 = zext i8 %1532 to i32
  %xor72.9.1 = xor i32 %conv71.9.1, %conv68.9.1
  %conv73.9.1 = trunc i32 %xor72.9.1 to i8
  store i8 %conv73.9.1, i8* %arrayidx70.1, align 1
  %scevgep20.10.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 10
  %1533 = load i8, i8* %scevgep20.10.1, align 1
  %conv68.10.1 = zext i8 %1533 to i32
  %1534 = load i8, i8* %arrayidx70.1, align 1
  %conv71.10.1 = zext i8 %1534 to i32
  %xor72.10.1 = xor i32 %conv71.10.1, %conv68.10.1
  %conv73.10.1 = trunc i32 %xor72.10.1 to i8
  store i8 %conv73.10.1, i8* %arrayidx70.1, align 1
  %scevgep20.11.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 11
  %1535 = load i8, i8* %scevgep20.11.1, align 1
  %conv68.11.1 = zext i8 %1535 to i32
  %1536 = load i8, i8* %arrayidx70.1, align 1
  %conv71.11.1 = zext i8 %1536 to i32
  %xor72.11.1 = xor i32 %conv71.11.1, %conv68.11.1
  %conv73.11.1 = trunc i32 %xor72.11.1 to i8
  store i8 %conv73.11.1, i8* %arrayidx70.1, align 1
  %scevgep20.12.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 12
  %1537 = load i8, i8* %scevgep20.12.1, align 1
  %conv68.12.1 = zext i8 %1537 to i32
  %1538 = load i8, i8* %arrayidx70.1, align 1
  %conv71.12.1 = zext i8 %1538 to i32
  %xor72.12.1 = xor i32 %conv71.12.1, %conv68.12.1
  %conv73.12.1 = trunc i32 %xor72.12.1 to i8
  store i8 %conv73.12.1, i8* %arrayidx70.1, align 1
  %scevgep20.13.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 13
  %1539 = load i8, i8* %scevgep20.13.1, align 1
  %conv68.13.1 = zext i8 %1539 to i32
  %1540 = load i8, i8* %arrayidx70.1, align 1
  %conv71.13.1 = zext i8 %1540 to i32
  %xor72.13.1 = xor i32 %conv71.13.1, %conv68.13.1
  %conv73.13.1 = trunc i32 %xor72.13.1 to i8
  store i8 %conv73.13.1, i8* %arrayidx70.1, align 1
  %scevgep20.14.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 14
  %1541 = load i8, i8* %scevgep20.14.1, align 1
  %conv68.14.1 = zext i8 %1541 to i32
  %1542 = load i8, i8* %arrayidx70.1, align 1
  %conv71.14.1 = zext i8 %1542 to i32
  %xor72.14.1 = xor i32 %conv71.14.1, %conv68.14.1
  %conv73.14.1 = trunc i32 %xor72.14.1 to i8
  store i8 %conv73.14.1, i8* %arrayidx70.1, align 1
  %scevgep20.15.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 15
  %1543 = load i8, i8* %scevgep20.15.1, align 1
  %conv68.15.1 = zext i8 %1543 to i32
  %1544 = load i8, i8* %arrayidx70.1, align 1
  %conv71.15.1 = zext i8 %1544 to i32
  %xor72.15.1 = xor i32 %conv71.15.1, %conv68.15.1
  %conv73.15.1 = trunc i32 %xor72.15.1 to i8
  store i8 %conv73.15.1, i8* %arrayidx70.1, align 1
  %scevgep20.16.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 16
  %1545 = load i8, i8* %scevgep20.16.1, align 1
  %conv68.16.1 = zext i8 %1545 to i32
  %1546 = load i8, i8* %arrayidx70.1, align 1
  %conv71.16.1 = zext i8 %1546 to i32
  %xor72.16.1 = xor i32 %conv71.16.1, %conv68.16.1
  %conv73.16.1 = trunc i32 %xor72.16.1 to i8
  store i8 %conv73.16.1, i8* %arrayidx70.1, align 1
  %scevgep20.17.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 17
  %1547 = load i8, i8* %scevgep20.17.1, align 1
  %conv68.17.1 = zext i8 %1547 to i32
  %1548 = load i8, i8* %arrayidx70.1, align 1
  %conv71.17.1 = zext i8 %1548 to i32
  %xor72.17.1 = xor i32 %conv71.17.1, %conv68.17.1
  %conv73.17.1 = trunc i32 %xor72.17.1 to i8
  store i8 %conv73.17.1, i8* %arrayidx70.1, align 1
  %scevgep20.18.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 18
  %1549 = load i8, i8* %scevgep20.18.1, align 1
  %conv68.18.1 = zext i8 %1549 to i32
  %1550 = load i8, i8* %arrayidx70.1, align 1
  %conv71.18.1 = zext i8 %1550 to i32
  %xor72.18.1 = xor i32 %conv71.18.1, %conv68.18.1
  %conv73.18.1 = trunc i32 %xor72.18.1 to i8
  store i8 %conv73.18.1, i8* %arrayidx70.1, align 1
  %scevgep20.19.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 19
  %1551 = load i8, i8* %scevgep20.19.1, align 1
  %conv68.19.1 = zext i8 %1551 to i32
  %1552 = load i8, i8* %arrayidx70.1, align 1
  %conv71.19.1 = zext i8 %1552 to i32
  %xor72.19.1 = xor i32 %conv71.19.1, %conv68.19.1
  %conv73.19.1 = trunc i32 %xor72.19.1 to i8
  store i8 %conv73.19.1, i8* %arrayidx70.1, align 1
  %scevgep20.20.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 0, i64 20
  %1553 = load i8, i8* %scevgep20.20.1, align 1
  %conv68.20.1 = zext i8 %1553 to i32
  %1554 = load i8, i8* %arrayidx70.1, align 1
  %conv71.20.1 = zext i8 %1554 to i32
  %xor72.20.1 = xor i32 %conv71.20.1, %conv68.20.1
  %conv73.20.1 = trunc i32 %xor72.20.1 to i8
  store i8 %conv73.20.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1512, i64 0, i64 1, i64 0
  %1555 = bitcast i8* %scevgep19.1 to [21 x [21 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %1556 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %1557 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %1556, i8 zeroext %1557)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.264 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 0
  %1558 = load i8, i8* %scevgep20.264, align 1
  %conv68.265 = zext i8 %1558 to i32
  %1559 = load i8, i8* %arrayidx70.2, align 1
  %conv71.266 = zext i8 %1559 to i32
  %xor72.267 = xor i32 %conv71.266, %conv68.265
  %conv73.268 = trunc i32 %xor72.267 to i8
  store i8 %conv73.268, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 1
  %1560 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %1560 to i32
  %1561 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %1561 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %scevgep20.3.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 3
  %1562 = load i8, i8* %scevgep20.3.2, align 1
  %conv68.3.2 = zext i8 %1562 to i32
  %1563 = load i8, i8* %arrayidx70.2, align 1
  %conv71.3.2 = zext i8 %1563 to i32
  %xor72.3.2 = xor i32 %conv71.3.2, %conv68.3.2
  %conv73.3.2 = trunc i32 %xor72.3.2 to i8
  store i8 %conv73.3.2, i8* %arrayidx70.2, align 1
  %scevgep20.4.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 4
  %1564 = load i8, i8* %scevgep20.4.2, align 1
  %conv68.4.2 = zext i8 %1564 to i32
  %1565 = load i8, i8* %arrayidx70.2, align 1
  %conv71.4.2 = zext i8 %1565 to i32
  %xor72.4.2 = xor i32 %conv71.4.2, %conv68.4.2
  %conv73.4.2 = trunc i32 %xor72.4.2 to i8
  store i8 %conv73.4.2, i8* %arrayidx70.2, align 1
  %scevgep20.5.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 5
  %1566 = load i8, i8* %scevgep20.5.2, align 1
  %conv68.5.2 = zext i8 %1566 to i32
  %1567 = load i8, i8* %arrayidx70.2, align 1
  %conv71.5.2 = zext i8 %1567 to i32
  %xor72.5.2 = xor i32 %conv71.5.2, %conv68.5.2
  %conv73.5.2 = trunc i32 %xor72.5.2 to i8
  store i8 %conv73.5.2, i8* %arrayidx70.2, align 1
  %scevgep20.6.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 6
  %1568 = load i8, i8* %scevgep20.6.2, align 1
  %conv68.6.2 = zext i8 %1568 to i32
  %1569 = load i8, i8* %arrayidx70.2, align 1
  %conv71.6.2 = zext i8 %1569 to i32
  %xor72.6.2 = xor i32 %conv71.6.2, %conv68.6.2
  %conv73.6.2 = trunc i32 %xor72.6.2 to i8
  store i8 %conv73.6.2, i8* %arrayidx70.2, align 1
  %scevgep20.7.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 7
  %1570 = load i8, i8* %scevgep20.7.2, align 1
  %conv68.7.2 = zext i8 %1570 to i32
  %1571 = load i8, i8* %arrayidx70.2, align 1
  %conv71.7.2 = zext i8 %1571 to i32
  %xor72.7.2 = xor i32 %conv71.7.2, %conv68.7.2
  %conv73.7.2 = trunc i32 %xor72.7.2 to i8
  store i8 %conv73.7.2, i8* %arrayidx70.2, align 1
  %scevgep20.8.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 8
  %1572 = load i8, i8* %scevgep20.8.2, align 1
  %conv68.8.2 = zext i8 %1572 to i32
  %1573 = load i8, i8* %arrayidx70.2, align 1
  %conv71.8.2 = zext i8 %1573 to i32
  %xor72.8.2 = xor i32 %conv71.8.2, %conv68.8.2
  %conv73.8.2 = trunc i32 %xor72.8.2 to i8
  store i8 %conv73.8.2, i8* %arrayidx70.2, align 1
  %scevgep20.9.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 9
  %1574 = load i8, i8* %scevgep20.9.2, align 1
  %conv68.9.2 = zext i8 %1574 to i32
  %1575 = load i8, i8* %arrayidx70.2, align 1
  %conv71.9.2 = zext i8 %1575 to i32
  %xor72.9.2 = xor i32 %conv71.9.2, %conv68.9.2
  %conv73.9.2 = trunc i32 %xor72.9.2 to i8
  store i8 %conv73.9.2, i8* %arrayidx70.2, align 1
  %scevgep20.10.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 10
  %1576 = load i8, i8* %scevgep20.10.2, align 1
  %conv68.10.2 = zext i8 %1576 to i32
  %1577 = load i8, i8* %arrayidx70.2, align 1
  %conv71.10.2 = zext i8 %1577 to i32
  %xor72.10.2 = xor i32 %conv71.10.2, %conv68.10.2
  %conv73.10.2 = trunc i32 %xor72.10.2 to i8
  store i8 %conv73.10.2, i8* %arrayidx70.2, align 1
  %scevgep20.11.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 11
  %1578 = load i8, i8* %scevgep20.11.2, align 1
  %conv68.11.2 = zext i8 %1578 to i32
  %1579 = load i8, i8* %arrayidx70.2, align 1
  %conv71.11.2 = zext i8 %1579 to i32
  %xor72.11.2 = xor i32 %conv71.11.2, %conv68.11.2
  %conv73.11.2 = trunc i32 %xor72.11.2 to i8
  store i8 %conv73.11.2, i8* %arrayidx70.2, align 1
  %scevgep20.12.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 12
  %1580 = load i8, i8* %scevgep20.12.2, align 1
  %conv68.12.2 = zext i8 %1580 to i32
  %1581 = load i8, i8* %arrayidx70.2, align 1
  %conv71.12.2 = zext i8 %1581 to i32
  %xor72.12.2 = xor i32 %conv71.12.2, %conv68.12.2
  %conv73.12.2 = trunc i32 %xor72.12.2 to i8
  store i8 %conv73.12.2, i8* %arrayidx70.2, align 1
  %scevgep20.13.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 13
  %1582 = load i8, i8* %scevgep20.13.2, align 1
  %conv68.13.2 = zext i8 %1582 to i32
  %1583 = load i8, i8* %arrayidx70.2, align 1
  %conv71.13.2 = zext i8 %1583 to i32
  %xor72.13.2 = xor i32 %conv71.13.2, %conv68.13.2
  %conv73.13.2 = trunc i32 %xor72.13.2 to i8
  store i8 %conv73.13.2, i8* %arrayidx70.2, align 1
  %scevgep20.14.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 14
  %1584 = load i8, i8* %scevgep20.14.2, align 1
  %conv68.14.2 = zext i8 %1584 to i32
  %1585 = load i8, i8* %arrayidx70.2, align 1
  %conv71.14.2 = zext i8 %1585 to i32
  %xor72.14.2 = xor i32 %conv71.14.2, %conv68.14.2
  %conv73.14.2 = trunc i32 %xor72.14.2 to i8
  store i8 %conv73.14.2, i8* %arrayidx70.2, align 1
  %scevgep20.15.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 15
  %1586 = load i8, i8* %scevgep20.15.2, align 1
  %conv68.15.2 = zext i8 %1586 to i32
  %1587 = load i8, i8* %arrayidx70.2, align 1
  %conv71.15.2 = zext i8 %1587 to i32
  %xor72.15.2 = xor i32 %conv71.15.2, %conv68.15.2
  %conv73.15.2 = trunc i32 %xor72.15.2 to i8
  store i8 %conv73.15.2, i8* %arrayidx70.2, align 1
  %scevgep20.16.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 16
  %1588 = load i8, i8* %scevgep20.16.2, align 1
  %conv68.16.2 = zext i8 %1588 to i32
  %1589 = load i8, i8* %arrayidx70.2, align 1
  %conv71.16.2 = zext i8 %1589 to i32
  %xor72.16.2 = xor i32 %conv71.16.2, %conv68.16.2
  %conv73.16.2 = trunc i32 %xor72.16.2 to i8
  store i8 %conv73.16.2, i8* %arrayidx70.2, align 1
  %scevgep20.17.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 17
  %1590 = load i8, i8* %scevgep20.17.2, align 1
  %conv68.17.2 = zext i8 %1590 to i32
  %1591 = load i8, i8* %arrayidx70.2, align 1
  %conv71.17.2 = zext i8 %1591 to i32
  %xor72.17.2 = xor i32 %conv71.17.2, %conv68.17.2
  %conv73.17.2 = trunc i32 %xor72.17.2 to i8
  store i8 %conv73.17.2, i8* %arrayidx70.2, align 1
  %scevgep20.18.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 18
  %1592 = load i8, i8* %scevgep20.18.2, align 1
  %conv68.18.2 = zext i8 %1592 to i32
  %1593 = load i8, i8* %arrayidx70.2, align 1
  %conv71.18.2 = zext i8 %1593 to i32
  %xor72.18.2 = xor i32 %conv71.18.2, %conv68.18.2
  %conv73.18.2 = trunc i32 %xor72.18.2 to i8
  store i8 %conv73.18.2, i8* %arrayidx70.2, align 1
  %scevgep20.19.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 19
  %1594 = load i8, i8* %scevgep20.19.2, align 1
  %conv68.19.2 = zext i8 %1594 to i32
  %1595 = load i8, i8* %arrayidx70.2, align 1
  %conv71.19.2 = zext i8 %1595 to i32
  %xor72.19.2 = xor i32 %conv71.19.2, %conv68.19.2
  %conv73.19.2 = trunc i32 %xor72.19.2 to i8
  store i8 %conv73.19.2, i8* %arrayidx70.2, align 1
  %scevgep20.20.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 0, i64 20
  %1596 = load i8, i8* %scevgep20.20.2, align 1
  %conv68.20.2 = zext i8 %1596 to i32
  %1597 = load i8, i8* %arrayidx70.2, align 1
  %conv71.20.2 = zext i8 %1597 to i32
  %xor72.20.2 = xor i32 %conv71.20.2, %conv68.20.2
  %conv73.20.2 = trunc i32 %xor72.20.2 to i8
  store i8 %conv73.20.2, i8* %arrayidx70.2, align 1
  %scevgep19.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1555, i64 0, i64 1, i64 0
  %1598 = bitcast i8* %scevgep19.2 to [21 x [21 x i8]]*
  %arrayidx51.3 = getelementptr inbounds i8, i8* %a, i64 3
  %1599 = load i8, i8* %arrayidx51.3, align 1
  %arrayidx53.3 = getelementptr inbounds i8, i8* %b, i64 3
  %1600 = load i8, i8* %arrayidx53.3, align 1
  %call54.3 = call zeroext i8 @mult(i8 zeroext %1599, i8 zeroext %1600)
  %arrayidx56.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call54.3, i8* %arrayidx56.3, align 1
  %arrayidx70.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.374 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 0
  %1601 = load i8, i8* %scevgep20.374, align 1
  %conv68.375 = zext i8 %1601 to i32
  %1602 = load i8, i8* %arrayidx70.3, align 1
  %conv71.376 = zext i8 %1602 to i32
  %xor72.377 = xor i32 %conv71.376, %conv68.375
  %conv73.378 = trunc i32 %xor72.377 to i8
  store i8 %conv73.378, i8* %arrayidx70.3, align 1
  %scevgep20.1.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 1
  %1603 = load i8, i8* %scevgep20.1.3, align 1
  %conv68.1.3 = zext i8 %1603 to i32
  %1604 = load i8, i8* %arrayidx70.3, align 1
  %conv71.1.3 = zext i8 %1604 to i32
  %xor72.1.3 = xor i32 %conv71.1.3, %conv68.1.3
  %conv73.1.3 = trunc i32 %xor72.1.3 to i8
  store i8 %conv73.1.3, i8* %arrayidx70.3, align 1
  %scevgep20.2.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 2
  %1605 = load i8, i8* %scevgep20.2.3, align 1
  %conv68.2.3 = zext i8 %1605 to i32
  %1606 = load i8, i8* %arrayidx70.3, align 1
  %conv71.2.3 = zext i8 %1606 to i32
  %xor72.2.3 = xor i32 %conv71.2.3, %conv68.2.3
  %conv73.2.3 = trunc i32 %xor72.2.3 to i8
  store i8 %conv73.2.3, i8* %arrayidx70.3, align 1
  %scevgep20.4.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 4
  %1607 = load i8, i8* %scevgep20.4.3, align 1
  %conv68.4.3 = zext i8 %1607 to i32
  %1608 = load i8, i8* %arrayidx70.3, align 1
  %conv71.4.3 = zext i8 %1608 to i32
  %xor72.4.3 = xor i32 %conv71.4.3, %conv68.4.3
  %conv73.4.3 = trunc i32 %xor72.4.3 to i8
  store i8 %conv73.4.3, i8* %arrayidx70.3, align 1
  %scevgep20.5.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 5
  %1609 = load i8, i8* %scevgep20.5.3, align 1
  %conv68.5.3 = zext i8 %1609 to i32
  %1610 = load i8, i8* %arrayidx70.3, align 1
  %conv71.5.3 = zext i8 %1610 to i32
  %xor72.5.3 = xor i32 %conv71.5.3, %conv68.5.3
  %conv73.5.3 = trunc i32 %xor72.5.3 to i8
  store i8 %conv73.5.3, i8* %arrayidx70.3, align 1
  %scevgep20.6.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 6
  %1611 = load i8, i8* %scevgep20.6.3, align 1
  %conv68.6.3 = zext i8 %1611 to i32
  %1612 = load i8, i8* %arrayidx70.3, align 1
  %conv71.6.3 = zext i8 %1612 to i32
  %xor72.6.3 = xor i32 %conv71.6.3, %conv68.6.3
  %conv73.6.3 = trunc i32 %xor72.6.3 to i8
  store i8 %conv73.6.3, i8* %arrayidx70.3, align 1
  %scevgep20.7.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 7
  %1613 = load i8, i8* %scevgep20.7.3, align 1
  %conv68.7.3 = zext i8 %1613 to i32
  %1614 = load i8, i8* %arrayidx70.3, align 1
  %conv71.7.3 = zext i8 %1614 to i32
  %xor72.7.3 = xor i32 %conv71.7.3, %conv68.7.3
  %conv73.7.3 = trunc i32 %xor72.7.3 to i8
  store i8 %conv73.7.3, i8* %arrayidx70.3, align 1
  %scevgep20.8.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 8
  %1615 = load i8, i8* %scevgep20.8.3, align 1
  %conv68.8.3 = zext i8 %1615 to i32
  %1616 = load i8, i8* %arrayidx70.3, align 1
  %conv71.8.3 = zext i8 %1616 to i32
  %xor72.8.3 = xor i32 %conv71.8.3, %conv68.8.3
  %conv73.8.3 = trunc i32 %xor72.8.3 to i8
  store i8 %conv73.8.3, i8* %arrayidx70.3, align 1
  %scevgep20.9.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 9
  %1617 = load i8, i8* %scevgep20.9.3, align 1
  %conv68.9.3 = zext i8 %1617 to i32
  %1618 = load i8, i8* %arrayidx70.3, align 1
  %conv71.9.3 = zext i8 %1618 to i32
  %xor72.9.3 = xor i32 %conv71.9.3, %conv68.9.3
  %conv73.9.3 = trunc i32 %xor72.9.3 to i8
  store i8 %conv73.9.3, i8* %arrayidx70.3, align 1
  %scevgep20.10.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 10
  %1619 = load i8, i8* %scevgep20.10.3, align 1
  %conv68.10.3 = zext i8 %1619 to i32
  %1620 = load i8, i8* %arrayidx70.3, align 1
  %conv71.10.3 = zext i8 %1620 to i32
  %xor72.10.3 = xor i32 %conv71.10.3, %conv68.10.3
  %conv73.10.3 = trunc i32 %xor72.10.3 to i8
  store i8 %conv73.10.3, i8* %arrayidx70.3, align 1
  %scevgep20.11.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 11
  %1621 = load i8, i8* %scevgep20.11.3, align 1
  %conv68.11.3 = zext i8 %1621 to i32
  %1622 = load i8, i8* %arrayidx70.3, align 1
  %conv71.11.3 = zext i8 %1622 to i32
  %xor72.11.3 = xor i32 %conv71.11.3, %conv68.11.3
  %conv73.11.3 = trunc i32 %xor72.11.3 to i8
  store i8 %conv73.11.3, i8* %arrayidx70.3, align 1
  %scevgep20.12.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 12
  %1623 = load i8, i8* %scevgep20.12.3, align 1
  %conv68.12.3 = zext i8 %1623 to i32
  %1624 = load i8, i8* %arrayidx70.3, align 1
  %conv71.12.3 = zext i8 %1624 to i32
  %xor72.12.3 = xor i32 %conv71.12.3, %conv68.12.3
  %conv73.12.3 = trunc i32 %xor72.12.3 to i8
  store i8 %conv73.12.3, i8* %arrayidx70.3, align 1
  %scevgep20.13.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 13
  %1625 = load i8, i8* %scevgep20.13.3, align 1
  %conv68.13.3 = zext i8 %1625 to i32
  %1626 = load i8, i8* %arrayidx70.3, align 1
  %conv71.13.3 = zext i8 %1626 to i32
  %xor72.13.3 = xor i32 %conv71.13.3, %conv68.13.3
  %conv73.13.3 = trunc i32 %xor72.13.3 to i8
  store i8 %conv73.13.3, i8* %arrayidx70.3, align 1
  %scevgep20.14.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 14
  %1627 = load i8, i8* %scevgep20.14.3, align 1
  %conv68.14.3 = zext i8 %1627 to i32
  %1628 = load i8, i8* %arrayidx70.3, align 1
  %conv71.14.3 = zext i8 %1628 to i32
  %xor72.14.3 = xor i32 %conv71.14.3, %conv68.14.3
  %conv73.14.3 = trunc i32 %xor72.14.3 to i8
  store i8 %conv73.14.3, i8* %arrayidx70.3, align 1
  %scevgep20.15.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 15
  %1629 = load i8, i8* %scevgep20.15.3, align 1
  %conv68.15.3 = zext i8 %1629 to i32
  %1630 = load i8, i8* %arrayidx70.3, align 1
  %conv71.15.3 = zext i8 %1630 to i32
  %xor72.15.3 = xor i32 %conv71.15.3, %conv68.15.3
  %conv73.15.3 = trunc i32 %xor72.15.3 to i8
  store i8 %conv73.15.3, i8* %arrayidx70.3, align 1
  %scevgep20.16.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 16
  %1631 = load i8, i8* %scevgep20.16.3, align 1
  %conv68.16.3 = zext i8 %1631 to i32
  %1632 = load i8, i8* %arrayidx70.3, align 1
  %conv71.16.3 = zext i8 %1632 to i32
  %xor72.16.3 = xor i32 %conv71.16.3, %conv68.16.3
  %conv73.16.3 = trunc i32 %xor72.16.3 to i8
  store i8 %conv73.16.3, i8* %arrayidx70.3, align 1
  %scevgep20.17.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 17
  %1633 = load i8, i8* %scevgep20.17.3, align 1
  %conv68.17.3 = zext i8 %1633 to i32
  %1634 = load i8, i8* %arrayidx70.3, align 1
  %conv71.17.3 = zext i8 %1634 to i32
  %xor72.17.3 = xor i32 %conv71.17.3, %conv68.17.3
  %conv73.17.3 = trunc i32 %xor72.17.3 to i8
  store i8 %conv73.17.3, i8* %arrayidx70.3, align 1
  %scevgep20.18.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 18
  %1635 = load i8, i8* %scevgep20.18.3, align 1
  %conv68.18.3 = zext i8 %1635 to i32
  %1636 = load i8, i8* %arrayidx70.3, align 1
  %conv71.18.3 = zext i8 %1636 to i32
  %xor72.18.3 = xor i32 %conv71.18.3, %conv68.18.3
  %conv73.18.3 = trunc i32 %xor72.18.3 to i8
  store i8 %conv73.18.3, i8* %arrayidx70.3, align 1
  %scevgep20.19.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 19
  %1637 = load i8, i8* %scevgep20.19.3, align 1
  %conv68.19.3 = zext i8 %1637 to i32
  %1638 = load i8, i8* %arrayidx70.3, align 1
  %conv71.19.3 = zext i8 %1638 to i32
  %xor72.19.3 = xor i32 %conv71.19.3, %conv68.19.3
  %conv73.19.3 = trunc i32 %xor72.19.3 to i8
  store i8 %conv73.19.3, i8* %arrayidx70.3, align 1
  %scevgep20.20.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 0, i64 20
  %1639 = load i8, i8* %scevgep20.20.3, align 1
  %conv68.20.3 = zext i8 %1639 to i32
  %1640 = load i8, i8* %arrayidx70.3, align 1
  %conv71.20.3 = zext i8 %1640 to i32
  %xor72.20.3 = xor i32 %conv71.20.3, %conv68.20.3
  %conv73.20.3 = trunc i32 %xor72.20.3 to i8
  store i8 %conv73.20.3, i8* %arrayidx70.3, align 1
  %scevgep19.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1598, i64 0, i64 1, i64 0
  %1641 = bitcast i8* %scevgep19.3 to [21 x [21 x i8]]*
  %arrayidx51.4 = getelementptr inbounds i8, i8* %a, i64 4
  %1642 = load i8, i8* %arrayidx51.4, align 1
  %arrayidx53.4 = getelementptr inbounds i8, i8* %b, i64 4
  %1643 = load i8, i8* %arrayidx53.4, align 1
  %call54.4 = call zeroext i8 @mult(i8 zeroext %1642, i8 zeroext %1643)
  %arrayidx56.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call54.4, i8* %arrayidx56.4, align 1
  %arrayidx70.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep20.484 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 0
  %1644 = load i8, i8* %scevgep20.484, align 1
  %conv68.485 = zext i8 %1644 to i32
  %1645 = load i8, i8* %arrayidx70.4, align 1
  %conv71.486 = zext i8 %1645 to i32
  %xor72.487 = xor i32 %conv71.486, %conv68.485
  %conv73.488 = trunc i32 %xor72.487 to i8
  store i8 %conv73.488, i8* %arrayidx70.4, align 1
  %scevgep20.1.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 1
  %1646 = load i8, i8* %scevgep20.1.4, align 1
  %conv68.1.4 = zext i8 %1646 to i32
  %1647 = load i8, i8* %arrayidx70.4, align 1
  %conv71.1.4 = zext i8 %1647 to i32
  %xor72.1.4 = xor i32 %conv71.1.4, %conv68.1.4
  %conv73.1.4 = trunc i32 %xor72.1.4 to i8
  store i8 %conv73.1.4, i8* %arrayidx70.4, align 1
  %scevgep20.2.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 2
  %1648 = load i8, i8* %scevgep20.2.4, align 1
  %conv68.2.4 = zext i8 %1648 to i32
  %1649 = load i8, i8* %arrayidx70.4, align 1
  %conv71.2.4 = zext i8 %1649 to i32
  %xor72.2.4 = xor i32 %conv71.2.4, %conv68.2.4
  %conv73.2.4 = trunc i32 %xor72.2.4 to i8
  store i8 %conv73.2.4, i8* %arrayidx70.4, align 1
  %scevgep20.3.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 3
  %1650 = load i8, i8* %scevgep20.3.4, align 1
  %conv68.3.4 = zext i8 %1650 to i32
  %1651 = load i8, i8* %arrayidx70.4, align 1
  %conv71.3.4 = zext i8 %1651 to i32
  %xor72.3.4 = xor i32 %conv71.3.4, %conv68.3.4
  %conv73.3.4 = trunc i32 %xor72.3.4 to i8
  store i8 %conv73.3.4, i8* %arrayidx70.4, align 1
  %scevgep20.5.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 5
  %1652 = load i8, i8* %scevgep20.5.4, align 1
  %conv68.5.4 = zext i8 %1652 to i32
  %1653 = load i8, i8* %arrayidx70.4, align 1
  %conv71.5.4 = zext i8 %1653 to i32
  %xor72.5.4 = xor i32 %conv71.5.4, %conv68.5.4
  %conv73.5.4 = trunc i32 %xor72.5.4 to i8
  store i8 %conv73.5.4, i8* %arrayidx70.4, align 1
  %scevgep20.6.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 6
  %1654 = load i8, i8* %scevgep20.6.4, align 1
  %conv68.6.4 = zext i8 %1654 to i32
  %1655 = load i8, i8* %arrayidx70.4, align 1
  %conv71.6.4 = zext i8 %1655 to i32
  %xor72.6.4 = xor i32 %conv71.6.4, %conv68.6.4
  %conv73.6.4 = trunc i32 %xor72.6.4 to i8
  store i8 %conv73.6.4, i8* %arrayidx70.4, align 1
  %scevgep20.7.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 7
  %1656 = load i8, i8* %scevgep20.7.4, align 1
  %conv68.7.4 = zext i8 %1656 to i32
  %1657 = load i8, i8* %arrayidx70.4, align 1
  %conv71.7.4 = zext i8 %1657 to i32
  %xor72.7.4 = xor i32 %conv71.7.4, %conv68.7.4
  %conv73.7.4 = trunc i32 %xor72.7.4 to i8
  store i8 %conv73.7.4, i8* %arrayidx70.4, align 1
  %scevgep20.8.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 8
  %1658 = load i8, i8* %scevgep20.8.4, align 1
  %conv68.8.4 = zext i8 %1658 to i32
  %1659 = load i8, i8* %arrayidx70.4, align 1
  %conv71.8.4 = zext i8 %1659 to i32
  %xor72.8.4 = xor i32 %conv71.8.4, %conv68.8.4
  %conv73.8.4 = trunc i32 %xor72.8.4 to i8
  store i8 %conv73.8.4, i8* %arrayidx70.4, align 1
  %scevgep20.9.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 9
  %1660 = load i8, i8* %scevgep20.9.4, align 1
  %conv68.9.4 = zext i8 %1660 to i32
  %1661 = load i8, i8* %arrayidx70.4, align 1
  %conv71.9.4 = zext i8 %1661 to i32
  %xor72.9.4 = xor i32 %conv71.9.4, %conv68.9.4
  %conv73.9.4 = trunc i32 %xor72.9.4 to i8
  store i8 %conv73.9.4, i8* %arrayidx70.4, align 1
  %scevgep20.10.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 10
  %1662 = load i8, i8* %scevgep20.10.4, align 1
  %conv68.10.4 = zext i8 %1662 to i32
  %1663 = load i8, i8* %arrayidx70.4, align 1
  %conv71.10.4 = zext i8 %1663 to i32
  %xor72.10.4 = xor i32 %conv71.10.4, %conv68.10.4
  %conv73.10.4 = trunc i32 %xor72.10.4 to i8
  store i8 %conv73.10.4, i8* %arrayidx70.4, align 1
  %scevgep20.11.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 11
  %1664 = load i8, i8* %scevgep20.11.4, align 1
  %conv68.11.4 = zext i8 %1664 to i32
  %1665 = load i8, i8* %arrayidx70.4, align 1
  %conv71.11.4 = zext i8 %1665 to i32
  %xor72.11.4 = xor i32 %conv71.11.4, %conv68.11.4
  %conv73.11.4 = trunc i32 %xor72.11.4 to i8
  store i8 %conv73.11.4, i8* %arrayidx70.4, align 1
  %scevgep20.12.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 12
  %1666 = load i8, i8* %scevgep20.12.4, align 1
  %conv68.12.4 = zext i8 %1666 to i32
  %1667 = load i8, i8* %arrayidx70.4, align 1
  %conv71.12.4 = zext i8 %1667 to i32
  %xor72.12.4 = xor i32 %conv71.12.4, %conv68.12.4
  %conv73.12.4 = trunc i32 %xor72.12.4 to i8
  store i8 %conv73.12.4, i8* %arrayidx70.4, align 1
  %scevgep20.13.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 13
  %1668 = load i8, i8* %scevgep20.13.4, align 1
  %conv68.13.4 = zext i8 %1668 to i32
  %1669 = load i8, i8* %arrayidx70.4, align 1
  %conv71.13.4 = zext i8 %1669 to i32
  %xor72.13.4 = xor i32 %conv71.13.4, %conv68.13.4
  %conv73.13.4 = trunc i32 %xor72.13.4 to i8
  store i8 %conv73.13.4, i8* %arrayidx70.4, align 1
  %scevgep20.14.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 14
  %1670 = load i8, i8* %scevgep20.14.4, align 1
  %conv68.14.4 = zext i8 %1670 to i32
  %1671 = load i8, i8* %arrayidx70.4, align 1
  %conv71.14.4 = zext i8 %1671 to i32
  %xor72.14.4 = xor i32 %conv71.14.4, %conv68.14.4
  %conv73.14.4 = trunc i32 %xor72.14.4 to i8
  store i8 %conv73.14.4, i8* %arrayidx70.4, align 1
  %scevgep20.15.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 15
  %1672 = load i8, i8* %scevgep20.15.4, align 1
  %conv68.15.4 = zext i8 %1672 to i32
  %1673 = load i8, i8* %arrayidx70.4, align 1
  %conv71.15.4 = zext i8 %1673 to i32
  %xor72.15.4 = xor i32 %conv71.15.4, %conv68.15.4
  %conv73.15.4 = trunc i32 %xor72.15.4 to i8
  store i8 %conv73.15.4, i8* %arrayidx70.4, align 1
  %scevgep20.16.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 16
  %1674 = load i8, i8* %scevgep20.16.4, align 1
  %conv68.16.4 = zext i8 %1674 to i32
  %1675 = load i8, i8* %arrayidx70.4, align 1
  %conv71.16.4 = zext i8 %1675 to i32
  %xor72.16.4 = xor i32 %conv71.16.4, %conv68.16.4
  %conv73.16.4 = trunc i32 %xor72.16.4 to i8
  store i8 %conv73.16.4, i8* %arrayidx70.4, align 1
  %scevgep20.17.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 17
  %1676 = load i8, i8* %scevgep20.17.4, align 1
  %conv68.17.4 = zext i8 %1676 to i32
  %1677 = load i8, i8* %arrayidx70.4, align 1
  %conv71.17.4 = zext i8 %1677 to i32
  %xor72.17.4 = xor i32 %conv71.17.4, %conv68.17.4
  %conv73.17.4 = trunc i32 %xor72.17.4 to i8
  store i8 %conv73.17.4, i8* %arrayidx70.4, align 1
  %scevgep20.18.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 18
  %1678 = load i8, i8* %scevgep20.18.4, align 1
  %conv68.18.4 = zext i8 %1678 to i32
  %1679 = load i8, i8* %arrayidx70.4, align 1
  %conv71.18.4 = zext i8 %1679 to i32
  %xor72.18.4 = xor i32 %conv71.18.4, %conv68.18.4
  %conv73.18.4 = trunc i32 %xor72.18.4 to i8
  store i8 %conv73.18.4, i8* %arrayidx70.4, align 1
  %scevgep20.19.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 19
  %1680 = load i8, i8* %scevgep20.19.4, align 1
  %conv68.19.4 = zext i8 %1680 to i32
  %1681 = load i8, i8* %arrayidx70.4, align 1
  %conv71.19.4 = zext i8 %1681 to i32
  %xor72.19.4 = xor i32 %conv71.19.4, %conv68.19.4
  %conv73.19.4 = trunc i32 %xor72.19.4 to i8
  store i8 %conv73.19.4, i8* %arrayidx70.4, align 1
  %scevgep20.20.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 0, i64 20
  %1682 = load i8, i8* %scevgep20.20.4, align 1
  %conv68.20.4 = zext i8 %1682 to i32
  %1683 = load i8, i8* %arrayidx70.4, align 1
  %conv71.20.4 = zext i8 %1683 to i32
  %xor72.20.4 = xor i32 %conv71.20.4, %conv68.20.4
  %conv73.20.4 = trunc i32 %xor72.20.4 to i8
  store i8 %conv73.20.4, i8* %arrayidx70.4, align 1
  %scevgep19.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1641, i64 0, i64 1, i64 0
  %1684 = bitcast i8* %scevgep19.4 to [21 x [21 x i8]]*
  %arrayidx51.5 = getelementptr inbounds i8, i8* %a, i64 5
  %1685 = load i8, i8* %arrayidx51.5, align 1
  %arrayidx53.5 = getelementptr inbounds i8, i8* %b, i64 5
  %1686 = load i8, i8* %arrayidx53.5, align 1
  %call54.5 = call zeroext i8 @mult(i8 zeroext %1685, i8 zeroext %1686)
  %arrayidx56.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call54.5, i8* %arrayidx56.5, align 1
  %arrayidx70.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep20.594 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 0
  %1687 = load i8, i8* %scevgep20.594, align 1
  %conv68.595 = zext i8 %1687 to i32
  %1688 = load i8, i8* %arrayidx70.5, align 1
  %conv71.596 = zext i8 %1688 to i32
  %xor72.597 = xor i32 %conv71.596, %conv68.595
  %conv73.598 = trunc i32 %xor72.597 to i8
  store i8 %conv73.598, i8* %arrayidx70.5, align 1
  %scevgep20.1.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 1
  %1689 = load i8, i8* %scevgep20.1.5, align 1
  %conv68.1.5 = zext i8 %1689 to i32
  %1690 = load i8, i8* %arrayidx70.5, align 1
  %conv71.1.5 = zext i8 %1690 to i32
  %xor72.1.5 = xor i32 %conv71.1.5, %conv68.1.5
  %conv73.1.5 = trunc i32 %xor72.1.5 to i8
  store i8 %conv73.1.5, i8* %arrayidx70.5, align 1
  %scevgep20.2.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 2
  %1691 = load i8, i8* %scevgep20.2.5, align 1
  %conv68.2.5 = zext i8 %1691 to i32
  %1692 = load i8, i8* %arrayidx70.5, align 1
  %conv71.2.5 = zext i8 %1692 to i32
  %xor72.2.5 = xor i32 %conv71.2.5, %conv68.2.5
  %conv73.2.5 = trunc i32 %xor72.2.5 to i8
  store i8 %conv73.2.5, i8* %arrayidx70.5, align 1
  %scevgep20.3.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 3
  %1693 = load i8, i8* %scevgep20.3.5, align 1
  %conv68.3.5 = zext i8 %1693 to i32
  %1694 = load i8, i8* %arrayidx70.5, align 1
  %conv71.3.5 = zext i8 %1694 to i32
  %xor72.3.5 = xor i32 %conv71.3.5, %conv68.3.5
  %conv73.3.5 = trunc i32 %xor72.3.5 to i8
  store i8 %conv73.3.5, i8* %arrayidx70.5, align 1
  %scevgep20.4.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 4
  %1695 = load i8, i8* %scevgep20.4.5, align 1
  %conv68.4.5 = zext i8 %1695 to i32
  %1696 = load i8, i8* %arrayidx70.5, align 1
  %conv71.4.5 = zext i8 %1696 to i32
  %xor72.4.5 = xor i32 %conv71.4.5, %conv68.4.5
  %conv73.4.5 = trunc i32 %xor72.4.5 to i8
  store i8 %conv73.4.5, i8* %arrayidx70.5, align 1
  %scevgep20.6.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 6
  %1697 = load i8, i8* %scevgep20.6.5, align 1
  %conv68.6.5 = zext i8 %1697 to i32
  %1698 = load i8, i8* %arrayidx70.5, align 1
  %conv71.6.5 = zext i8 %1698 to i32
  %xor72.6.5 = xor i32 %conv71.6.5, %conv68.6.5
  %conv73.6.5 = trunc i32 %xor72.6.5 to i8
  store i8 %conv73.6.5, i8* %arrayidx70.5, align 1
  %scevgep20.7.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 7
  %1699 = load i8, i8* %scevgep20.7.5, align 1
  %conv68.7.5 = zext i8 %1699 to i32
  %1700 = load i8, i8* %arrayidx70.5, align 1
  %conv71.7.5 = zext i8 %1700 to i32
  %xor72.7.5 = xor i32 %conv71.7.5, %conv68.7.5
  %conv73.7.5 = trunc i32 %xor72.7.5 to i8
  store i8 %conv73.7.5, i8* %arrayidx70.5, align 1
  %scevgep20.8.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 8
  %1701 = load i8, i8* %scevgep20.8.5, align 1
  %conv68.8.5 = zext i8 %1701 to i32
  %1702 = load i8, i8* %arrayidx70.5, align 1
  %conv71.8.5 = zext i8 %1702 to i32
  %xor72.8.5 = xor i32 %conv71.8.5, %conv68.8.5
  %conv73.8.5 = trunc i32 %xor72.8.5 to i8
  store i8 %conv73.8.5, i8* %arrayidx70.5, align 1
  %scevgep20.9.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 9
  %1703 = load i8, i8* %scevgep20.9.5, align 1
  %conv68.9.5 = zext i8 %1703 to i32
  %1704 = load i8, i8* %arrayidx70.5, align 1
  %conv71.9.5 = zext i8 %1704 to i32
  %xor72.9.5 = xor i32 %conv71.9.5, %conv68.9.5
  %conv73.9.5 = trunc i32 %xor72.9.5 to i8
  store i8 %conv73.9.5, i8* %arrayidx70.5, align 1
  %scevgep20.10.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 10
  %1705 = load i8, i8* %scevgep20.10.5, align 1
  %conv68.10.5 = zext i8 %1705 to i32
  %1706 = load i8, i8* %arrayidx70.5, align 1
  %conv71.10.5 = zext i8 %1706 to i32
  %xor72.10.5 = xor i32 %conv71.10.5, %conv68.10.5
  %conv73.10.5 = trunc i32 %xor72.10.5 to i8
  store i8 %conv73.10.5, i8* %arrayidx70.5, align 1
  %scevgep20.11.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 11
  %1707 = load i8, i8* %scevgep20.11.5, align 1
  %conv68.11.5 = zext i8 %1707 to i32
  %1708 = load i8, i8* %arrayidx70.5, align 1
  %conv71.11.5 = zext i8 %1708 to i32
  %xor72.11.5 = xor i32 %conv71.11.5, %conv68.11.5
  %conv73.11.5 = trunc i32 %xor72.11.5 to i8
  store i8 %conv73.11.5, i8* %arrayidx70.5, align 1
  %scevgep20.12.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 12
  %1709 = load i8, i8* %scevgep20.12.5, align 1
  %conv68.12.5 = zext i8 %1709 to i32
  %1710 = load i8, i8* %arrayidx70.5, align 1
  %conv71.12.5 = zext i8 %1710 to i32
  %xor72.12.5 = xor i32 %conv71.12.5, %conv68.12.5
  %conv73.12.5 = trunc i32 %xor72.12.5 to i8
  store i8 %conv73.12.5, i8* %arrayidx70.5, align 1
  %scevgep20.13.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 13
  %1711 = load i8, i8* %scevgep20.13.5, align 1
  %conv68.13.5 = zext i8 %1711 to i32
  %1712 = load i8, i8* %arrayidx70.5, align 1
  %conv71.13.5 = zext i8 %1712 to i32
  %xor72.13.5 = xor i32 %conv71.13.5, %conv68.13.5
  %conv73.13.5 = trunc i32 %xor72.13.5 to i8
  store i8 %conv73.13.5, i8* %arrayidx70.5, align 1
  %scevgep20.14.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 14
  %1713 = load i8, i8* %scevgep20.14.5, align 1
  %conv68.14.5 = zext i8 %1713 to i32
  %1714 = load i8, i8* %arrayidx70.5, align 1
  %conv71.14.5 = zext i8 %1714 to i32
  %xor72.14.5 = xor i32 %conv71.14.5, %conv68.14.5
  %conv73.14.5 = trunc i32 %xor72.14.5 to i8
  store i8 %conv73.14.5, i8* %arrayidx70.5, align 1
  %scevgep20.15.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 15
  %1715 = load i8, i8* %scevgep20.15.5, align 1
  %conv68.15.5 = zext i8 %1715 to i32
  %1716 = load i8, i8* %arrayidx70.5, align 1
  %conv71.15.5 = zext i8 %1716 to i32
  %xor72.15.5 = xor i32 %conv71.15.5, %conv68.15.5
  %conv73.15.5 = trunc i32 %xor72.15.5 to i8
  store i8 %conv73.15.5, i8* %arrayidx70.5, align 1
  %scevgep20.16.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 16
  %1717 = load i8, i8* %scevgep20.16.5, align 1
  %conv68.16.5 = zext i8 %1717 to i32
  %1718 = load i8, i8* %arrayidx70.5, align 1
  %conv71.16.5 = zext i8 %1718 to i32
  %xor72.16.5 = xor i32 %conv71.16.5, %conv68.16.5
  %conv73.16.5 = trunc i32 %xor72.16.5 to i8
  store i8 %conv73.16.5, i8* %arrayidx70.5, align 1
  %scevgep20.17.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 17
  %1719 = load i8, i8* %scevgep20.17.5, align 1
  %conv68.17.5 = zext i8 %1719 to i32
  %1720 = load i8, i8* %arrayidx70.5, align 1
  %conv71.17.5 = zext i8 %1720 to i32
  %xor72.17.5 = xor i32 %conv71.17.5, %conv68.17.5
  %conv73.17.5 = trunc i32 %xor72.17.5 to i8
  store i8 %conv73.17.5, i8* %arrayidx70.5, align 1
  %scevgep20.18.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 18
  %1721 = load i8, i8* %scevgep20.18.5, align 1
  %conv68.18.5 = zext i8 %1721 to i32
  %1722 = load i8, i8* %arrayidx70.5, align 1
  %conv71.18.5 = zext i8 %1722 to i32
  %xor72.18.5 = xor i32 %conv71.18.5, %conv68.18.5
  %conv73.18.5 = trunc i32 %xor72.18.5 to i8
  store i8 %conv73.18.5, i8* %arrayidx70.5, align 1
  %scevgep20.19.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 19
  %1723 = load i8, i8* %scevgep20.19.5, align 1
  %conv68.19.5 = zext i8 %1723 to i32
  %1724 = load i8, i8* %arrayidx70.5, align 1
  %conv71.19.5 = zext i8 %1724 to i32
  %xor72.19.5 = xor i32 %conv71.19.5, %conv68.19.5
  %conv73.19.5 = trunc i32 %xor72.19.5 to i8
  store i8 %conv73.19.5, i8* %arrayidx70.5, align 1
  %scevgep20.20.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 0, i64 20
  %1725 = load i8, i8* %scevgep20.20.5, align 1
  %conv68.20.5 = zext i8 %1725 to i32
  %1726 = load i8, i8* %arrayidx70.5, align 1
  %conv71.20.5 = zext i8 %1726 to i32
  %xor72.20.5 = xor i32 %conv71.20.5, %conv68.20.5
  %conv73.20.5 = trunc i32 %xor72.20.5 to i8
  store i8 %conv73.20.5, i8* %arrayidx70.5, align 1
  %scevgep19.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1684, i64 0, i64 1, i64 0
  %1727 = bitcast i8* %scevgep19.5 to [21 x [21 x i8]]*
  %arrayidx51.6 = getelementptr inbounds i8, i8* %a, i64 6
  %1728 = load i8, i8* %arrayidx51.6, align 1
  %arrayidx53.6 = getelementptr inbounds i8, i8* %b, i64 6
  %1729 = load i8, i8* %arrayidx53.6, align 1
  %call54.6 = call zeroext i8 @mult(i8 zeroext %1728, i8 zeroext %1729)
  %arrayidx56.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %call54.6, i8* %arrayidx56.6, align 1
  %arrayidx70.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep20.6104 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 0
  %1730 = load i8, i8* %scevgep20.6104, align 1
  %conv68.6105 = zext i8 %1730 to i32
  %1731 = load i8, i8* %arrayidx70.6, align 1
  %conv71.6106 = zext i8 %1731 to i32
  %xor72.6107 = xor i32 %conv71.6106, %conv68.6105
  %conv73.6108 = trunc i32 %xor72.6107 to i8
  store i8 %conv73.6108, i8* %arrayidx70.6, align 1
  %scevgep20.1.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 1
  %1732 = load i8, i8* %scevgep20.1.6, align 1
  %conv68.1.6 = zext i8 %1732 to i32
  %1733 = load i8, i8* %arrayidx70.6, align 1
  %conv71.1.6 = zext i8 %1733 to i32
  %xor72.1.6 = xor i32 %conv71.1.6, %conv68.1.6
  %conv73.1.6 = trunc i32 %xor72.1.6 to i8
  store i8 %conv73.1.6, i8* %arrayidx70.6, align 1
  %scevgep20.2.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 2
  %1734 = load i8, i8* %scevgep20.2.6, align 1
  %conv68.2.6 = zext i8 %1734 to i32
  %1735 = load i8, i8* %arrayidx70.6, align 1
  %conv71.2.6 = zext i8 %1735 to i32
  %xor72.2.6 = xor i32 %conv71.2.6, %conv68.2.6
  %conv73.2.6 = trunc i32 %xor72.2.6 to i8
  store i8 %conv73.2.6, i8* %arrayidx70.6, align 1
  %scevgep20.3.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 3
  %1736 = load i8, i8* %scevgep20.3.6, align 1
  %conv68.3.6 = zext i8 %1736 to i32
  %1737 = load i8, i8* %arrayidx70.6, align 1
  %conv71.3.6 = zext i8 %1737 to i32
  %xor72.3.6 = xor i32 %conv71.3.6, %conv68.3.6
  %conv73.3.6 = trunc i32 %xor72.3.6 to i8
  store i8 %conv73.3.6, i8* %arrayidx70.6, align 1
  %scevgep20.4.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 4
  %1738 = load i8, i8* %scevgep20.4.6, align 1
  %conv68.4.6 = zext i8 %1738 to i32
  %1739 = load i8, i8* %arrayidx70.6, align 1
  %conv71.4.6 = zext i8 %1739 to i32
  %xor72.4.6 = xor i32 %conv71.4.6, %conv68.4.6
  %conv73.4.6 = trunc i32 %xor72.4.6 to i8
  store i8 %conv73.4.6, i8* %arrayidx70.6, align 1
  %scevgep20.5.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 5
  %1740 = load i8, i8* %scevgep20.5.6, align 1
  %conv68.5.6 = zext i8 %1740 to i32
  %1741 = load i8, i8* %arrayidx70.6, align 1
  %conv71.5.6 = zext i8 %1741 to i32
  %xor72.5.6 = xor i32 %conv71.5.6, %conv68.5.6
  %conv73.5.6 = trunc i32 %xor72.5.6 to i8
  store i8 %conv73.5.6, i8* %arrayidx70.6, align 1
  %scevgep20.7.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 7
  %1742 = load i8, i8* %scevgep20.7.6, align 1
  %conv68.7.6 = zext i8 %1742 to i32
  %1743 = load i8, i8* %arrayidx70.6, align 1
  %conv71.7.6 = zext i8 %1743 to i32
  %xor72.7.6 = xor i32 %conv71.7.6, %conv68.7.6
  %conv73.7.6 = trunc i32 %xor72.7.6 to i8
  store i8 %conv73.7.6, i8* %arrayidx70.6, align 1
  %scevgep20.8.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 8
  %1744 = load i8, i8* %scevgep20.8.6, align 1
  %conv68.8.6 = zext i8 %1744 to i32
  %1745 = load i8, i8* %arrayidx70.6, align 1
  %conv71.8.6 = zext i8 %1745 to i32
  %xor72.8.6 = xor i32 %conv71.8.6, %conv68.8.6
  %conv73.8.6 = trunc i32 %xor72.8.6 to i8
  store i8 %conv73.8.6, i8* %arrayidx70.6, align 1
  %scevgep20.9.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 9
  %1746 = load i8, i8* %scevgep20.9.6, align 1
  %conv68.9.6 = zext i8 %1746 to i32
  %1747 = load i8, i8* %arrayidx70.6, align 1
  %conv71.9.6 = zext i8 %1747 to i32
  %xor72.9.6 = xor i32 %conv71.9.6, %conv68.9.6
  %conv73.9.6 = trunc i32 %xor72.9.6 to i8
  store i8 %conv73.9.6, i8* %arrayidx70.6, align 1
  %scevgep20.10.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 10
  %1748 = load i8, i8* %scevgep20.10.6, align 1
  %conv68.10.6 = zext i8 %1748 to i32
  %1749 = load i8, i8* %arrayidx70.6, align 1
  %conv71.10.6 = zext i8 %1749 to i32
  %xor72.10.6 = xor i32 %conv71.10.6, %conv68.10.6
  %conv73.10.6 = trunc i32 %xor72.10.6 to i8
  store i8 %conv73.10.6, i8* %arrayidx70.6, align 1
  %scevgep20.11.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 11
  %1750 = load i8, i8* %scevgep20.11.6, align 1
  %conv68.11.6 = zext i8 %1750 to i32
  %1751 = load i8, i8* %arrayidx70.6, align 1
  %conv71.11.6 = zext i8 %1751 to i32
  %xor72.11.6 = xor i32 %conv71.11.6, %conv68.11.6
  %conv73.11.6 = trunc i32 %xor72.11.6 to i8
  store i8 %conv73.11.6, i8* %arrayidx70.6, align 1
  %scevgep20.12.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 12
  %1752 = load i8, i8* %scevgep20.12.6, align 1
  %conv68.12.6 = zext i8 %1752 to i32
  %1753 = load i8, i8* %arrayidx70.6, align 1
  %conv71.12.6 = zext i8 %1753 to i32
  %xor72.12.6 = xor i32 %conv71.12.6, %conv68.12.6
  %conv73.12.6 = trunc i32 %xor72.12.6 to i8
  store i8 %conv73.12.6, i8* %arrayidx70.6, align 1
  %scevgep20.13.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 13
  %1754 = load i8, i8* %scevgep20.13.6, align 1
  %conv68.13.6 = zext i8 %1754 to i32
  %1755 = load i8, i8* %arrayidx70.6, align 1
  %conv71.13.6 = zext i8 %1755 to i32
  %xor72.13.6 = xor i32 %conv71.13.6, %conv68.13.6
  %conv73.13.6 = trunc i32 %xor72.13.6 to i8
  store i8 %conv73.13.6, i8* %arrayidx70.6, align 1
  %scevgep20.14.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 14
  %1756 = load i8, i8* %scevgep20.14.6, align 1
  %conv68.14.6 = zext i8 %1756 to i32
  %1757 = load i8, i8* %arrayidx70.6, align 1
  %conv71.14.6 = zext i8 %1757 to i32
  %xor72.14.6 = xor i32 %conv71.14.6, %conv68.14.6
  %conv73.14.6 = trunc i32 %xor72.14.6 to i8
  store i8 %conv73.14.6, i8* %arrayidx70.6, align 1
  %scevgep20.15.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 15
  %1758 = load i8, i8* %scevgep20.15.6, align 1
  %conv68.15.6 = zext i8 %1758 to i32
  %1759 = load i8, i8* %arrayidx70.6, align 1
  %conv71.15.6 = zext i8 %1759 to i32
  %xor72.15.6 = xor i32 %conv71.15.6, %conv68.15.6
  %conv73.15.6 = trunc i32 %xor72.15.6 to i8
  store i8 %conv73.15.6, i8* %arrayidx70.6, align 1
  %scevgep20.16.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 16
  %1760 = load i8, i8* %scevgep20.16.6, align 1
  %conv68.16.6 = zext i8 %1760 to i32
  %1761 = load i8, i8* %arrayidx70.6, align 1
  %conv71.16.6 = zext i8 %1761 to i32
  %xor72.16.6 = xor i32 %conv71.16.6, %conv68.16.6
  %conv73.16.6 = trunc i32 %xor72.16.6 to i8
  store i8 %conv73.16.6, i8* %arrayidx70.6, align 1
  %scevgep20.17.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 17
  %1762 = load i8, i8* %scevgep20.17.6, align 1
  %conv68.17.6 = zext i8 %1762 to i32
  %1763 = load i8, i8* %arrayidx70.6, align 1
  %conv71.17.6 = zext i8 %1763 to i32
  %xor72.17.6 = xor i32 %conv71.17.6, %conv68.17.6
  %conv73.17.6 = trunc i32 %xor72.17.6 to i8
  store i8 %conv73.17.6, i8* %arrayidx70.6, align 1
  %scevgep20.18.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 18
  %1764 = load i8, i8* %scevgep20.18.6, align 1
  %conv68.18.6 = zext i8 %1764 to i32
  %1765 = load i8, i8* %arrayidx70.6, align 1
  %conv71.18.6 = zext i8 %1765 to i32
  %xor72.18.6 = xor i32 %conv71.18.6, %conv68.18.6
  %conv73.18.6 = trunc i32 %xor72.18.6 to i8
  store i8 %conv73.18.6, i8* %arrayidx70.6, align 1
  %scevgep20.19.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 19
  %1766 = load i8, i8* %scevgep20.19.6, align 1
  %conv68.19.6 = zext i8 %1766 to i32
  %1767 = load i8, i8* %arrayidx70.6, align 1
  %conv71.19.6 = zext i8 %1767 to i32
  %xor72.19.6 = xor i32 %conv71.19.6, %conv68.19.6
  %conv73.19.6 = trunc i32 %xor72.19.6 to i8
  store i8 %conv73.19.6, i8* %arrayidx70.6, align 1
  %scevgep20.20.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 0, i64 20
  %1768 = load i8, i8* %scevgep20.20.6, align 1
  %conv68.20.6 = zext i8 %1768 to i32
  %1769 = load i8, i8* %arrayidx70.6, align 1
  %conv71.20.6 = zext i8 %1769 to i32
  %xor72.20.6 = xor i32 %conv71.20.6, %conv68.20.6
  %conv73.20.6 = trunc i32 %xor72.20.6 to i8
  store i8 %conv73.20.6, i8* %arrayidx70.6, align 1
  %scevgep19.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1727, i64 0, i64 1, i64 0
  %1770 = bitcast i8* %scevgep19.6 to [21 x [21 x i8]]*
  %arrayidx51.7 = getelementptr inbounds i8, i8* %a, i64 7
  %1771 = load i8, i8* %arrayidx51.7, align 1
  %arrayidx53.7 = getelementptr inbounds i8, i8* %b, i64 7
  %1772 = load i8, i8* %arrayidx53.7, align 1
  %call54.7 = call zeroext i8 @mult(i8 zeroext %1771, i8 zeroext %1772)
  %arrayidx56.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %call54.7, i8* %arrayidx56.7, align 1
  %arrayidx70.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep20.7114 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 0
  %1773 = load i8, i8* %scevgep20.7114, align 1
  %conv68.7115 = zext i8 %1773 to i32
  %1774 = load i8, i8* %arrayidx70.7, align 1
  %conv71.7116 = zext i8 %1774 to i32
  %xor72.7117 = xor i32 %conv71.7116, %conv68.7115
  %conv73.7118 = trunc i32 %xor72.7117 to i8
  store i8 %conv73.7118, i8* %arrayidx70.7, align 1
  %scevgep20.1.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 1
  %1775 = load i8, i8* %scevgep20.1.7, align 1
  %conv68.1.7 = zext i8 %1775 to i32
  %1776 = load i8, i8* %arrayidx70.7, align 1
  %conv71.1.7 = zext i8 %1776 to i32
  %xor72.1.7 = xor i32 %conv71.1.7, %conv68.1.7
  %conv73.1.7 = trunc i32 %xor72.1.7 to i8
  store i8 %conv73.1.7, i8* %arrayidx70.7, align 1
  %scevgep20.2.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 2
  %1777 = load i8, i8* %scevgep20.2.7, align 1
  %conv68.2.7 = zext i8 %1777 to i32
  %1778 = load i8, i8* %arrayidx70.7, align 1
  %conv71.2.7 = zext i8 %1778 to i32
  %xor72.2.7 = xor i32 %conv71.2.7, %conv68.2.7
  %conv73.2.7 = trunc i32 %xor72.2.7 to i8
  store i8 %conv73.2.7, i8* %arrayidx70.7, align 1
  %scevgep20.3.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 3
  %1779 = load i8, i8* %scevgep20.3.7, align 1
  %conv68.3.7 = zext i8 %1779 to i32
  %1780 = load i8, i8* %arrayidx70.7, align 1
  %conv71.3.7 = zext i8 %1780 to i32
  %xor72.3.7 = xor i32 %conv71.3.7, %conv68.3.7
  %conv73.3.7 = trunc i32 %xor72.3.7 to i8
  store i8 %conv73.3.7, i8* %arrayidx70.7, align 1
  %scevgep20.4.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 4
  %1781 = load i8, i8* %scevgep20.4.7, align 1
  %conv68.4.7 = zext i8 %1781 to i32
  %1782 = load i8, i8* %arrayidx70.7, align 1
  %conv71.4.7 = zext i8 %1782 to i32
  %xor72.4.7 = xor i32 %conv71.4.7, %conv68.4.7
  %conv73.4.7 = trunc i32 %xor72.4.7 to i8
  store i8 %conv73.4.7, i8* %arrayidx70.7, align 1
  %scevgep20.5.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 5
  %1783 = load i8, i8* %scevgep20.5.7, align 1
  %conv68.5.7 = zext i8 %1783 to i32
  %1784 = load i8, i8* %arrayidx70.7, align 1
  %conv71.5.7 = zext i8 %1784 to i32
  %xor72.5.7 = xor i32 %conv71.5.7, %conv68.5.7
  %conv73.5.7 = trunc i32 %xor72.5.7 to i8
  store i8 %conv73.5.7, i8* %arrayidx70.7, align 1
  %scevgep20.6.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 6
  %1785 = load i8, i8* %scevgep20.6.7, align 1
  %conv68.6.7 = zext i8 %1785 to i32
  %1786 = load i8, i8* %arrayidx70.7, align 1
  %conv71.6.7 = zext i8 %1786 to i32
  %xor72.6.7 = xor i32 %conv71.6.7, %conv68.6.7
  %conv73.6.7 = trunc i32 %xor72.6.7 to i8
  store i8 %conv73.6.7, i8* %arrayidx70.7, align 1
  %scevgep20.8.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 8
  %1787 = load i8, i8* %scevgep20.8.7, align 1
  %conv68.8.7 = zext i8 %1787 to i32
  %1788 = load i8, i8* %arrayidx70.7, align 1
  %conv71.8.7 = zext i8 %1788 to i32
  %xor72.8.7 = xor i32 %conv71.8.7, %conv68.8.7
  %conv73.8.7 = trunc i32 %xor72.8.7 to i8
  store i8 %conv73.8.7, i8* %arrayidx70.7, align 1
  %scevgep20.9.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 9
  %1789 = load i8, i8* %scevgep20.9.7, align 1
  %conv68.9.7 = zext i8 %1789 to i32
  %1790 = load i8, i8* %arrayidx70.7, align 1
  %conv71.9.7 = zext i8 %1790 to i32
  %xor72.9.7 = xor i32 %conv71.9.7, %conv68.9.7
  %conv73.9.7 = trunc i32 %xor72.9.7 to i8
  store i8 %conv73.9.7, i8* %arrayidx70.7, align 1
  %scevgep20.10.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 10
  %1791 = load i8, i8* %scevgep20.10.7, align 1
  %conv68.10.7 = zext i8 %1791 to i32
  %1792 = load i8, i8* %arrayidx70.7, align 1
  %conv71.10.7 = zext i8 %1792 to i32
  %xor72.10.7 = xor i32 %conv71.10.7, %conv68.10.7
  %conv73.10.7 = trunc i32 %xor72.10.7 to i8
  store i8 %conv73.10.7, i8* %arrayidx70.7, align 1
  %scevgep20.11.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 11
  %1793 = load i8, i8* %scevgep20.11.7, align 1
  %conv68.11.7 = zext i8 %1793 to i32
  %1794 = load i8, i8* %arrayidx70.7, align 1
  %conv71.11.7 = zext i8 %1794 to i32
  %xor72.11.7 = xor i32 %conv71.11.7, %conv68.11.7
  %conv73.11.7 = trunc i32 %xor72.11.7 to i8
  store i8 %conv73.11.7, i8* %arrayidx70.7, align 1
  %scevgep20.12.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 12
  %1795 = load i8, i8* %scevgep20.12.7, align 1
  %conv68.12.7 = zext i8 %1795 to i32
  %1796 = load i8, i8* %arrayidx70.7, align 1
  %conv71.12.7 = zext i8 %1796 to i32
  %xor72.12.7 = xor i32 %conv71.12.7, %conv68.12.7
  %conv73.12.7 = trunc i32 %xor72.12.7 to i8
  store i8 %conv73.12.7, i8* %arrayidx70.7, align 1
  %scevgep20.13.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 13
  %1797 = load i8, i8* %scevgep20.13.7, align 1
  %conv68.13.7 = zext i8 %1797 to i32
  %1798 = load i8, i8* %arrayidx70.7, align 1
  %conv71.13.7 = zext i8 %1798 to i32
  %xor72.13.7 = xor i32 %conv71.13.7, %conv68.13.7
  %conv73.13.7 = trunc i32 %xor72.13.7 to i8
  store i8 %conv73.13.7, i8* %arrayidx70.7, align 1
  %scevgep20.14.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 14
  %1799 = load i8, i8* %scevgep20.14.7, align 1
  %conv68.14.7 = zext i8 %1799 to i32
  %1800 = load i8, i8* %arrayidx70.7, align 1
  %conv71.14.7 = zext i8 %1800 to i32
  %xor72.14.7 = xor i32 %conv71.14.7, %conv68.14.7
  %conv73.14.7 = trunc i32 %xor72.14.7 to i8
  store i8 %conv73.14.7, i8* %arrayidx70.7, align 1
  %scevgep20.15.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 15
  %1801 = load i8, i8* %scevgep20.15.7, align 1
  %conv68.15.7 = zext i8 %1801 to i32
  %1802 = load i8, i8* %arrayidx70.7, align 1
  %conv71.15.7 = zext i8 %1802 to i32
  %xor72.15.7 = xor i32 %conv71.15.7, %conv68.15.7
  %conv73.15.7 = trunc i32 %xor72.15.7 to i8
  store i8 %conv73.15.7, i8* %arrayidx70.7, align 1
  %scevgep20.16.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 16
  %1803 = load i8, i8* %scevgep20.16.7, align 1
  %conv68.16.7 = zext i8 %1803 to i32
  %1804 = load i8, i8* %arrayidx70.7, align 1
  %conv71.16.7 = zext i8 %1804 to i32
  %xor72.16.7 = xor i32 %conv71.16.7, %conv68.16.7
  %conv73.16.7 = trunc i32 %xor72.16.7 to i8
  store i8 %conv73.16.7, i8* %arrayidx70.7, align 1
  %scevgep20.17.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 17
  %1805 = load i8, i8* %scevgep20.17.7, align 1
  %conv68.17.7 = zext i8 %1805 to i32
  %1806 = load i8, i8* %arrayidx70.7, align 1
  %conv71.17.7 = zext i8 %1806 to i32
  %xor72.17.7 = xor i32 %conv71.17.7, %conv68.17.7
  %conv73.17.7 = trunc i32 %xor72.17.7 to i8
  store i8 %conv73.17.7, i8* %arrayidx70.7, align 1
  %scevgep20.18.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 18
  %1807 = load i8, i8* %scevgep20.18.7, align 1
  %conv68.18.7 = zext i8 %1807 to i32
  %1808 = load i8, i8* %arrayidx70.7, align 1
  %conv71.18.7 = zext i8 %1808 to i32
  %xor72.18.7 = xor i32 %conv71.18.7, %conv68.18.7
  %conv73.18.7 = trunc i32 %xor72.18.7 to i8
  store i8 %conv73.18.7, i8* %arrayidx70.7, align 1
  %scevgep20.19.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 19
  %1809 = load i8, i8* %scevgep20.19.7, align 1
  %conv68.19.7 = zext i8 %1809 to i32
  %1810 = load i8, i8* %arrayidx70.7, align 1
  %conv71.19.7 = zext i8 %1810 to i32
  %xor72.19.7 = xor i32 %conv71.19.7, %conv68.19.7
  %conv73.19.7 = trunc i32 %xor72.19.7 to i8
  store i8 %conv73.19.7, i8* %arrayidx70.7, align 1
  %scevgep20.20.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 0, i64 20
  %1811 = load i8, i8* %scevgep20.20.7, align 1
  %conv68.20.7 = zext i8 %1811 to i32
  %1812 = load i8, i8* %arrayidx70.7, align 1
  %conv71.20.7 = zext i8 %1812 to i32
  %xor72.20.7 = xor i32 %conv71.20.7, %conv68.20.7
  %conv73.20.7 = trunc i32 %xor72.20.7 to i8
  store i8 %conv73.20.7, i8* %arrayidx70.7, align 1
  %scevgep19.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1770, i64 0, i64 1, i64 0
  %1813 = bitcast i8* %scevgep19.7 to [21 x [21 x i8]]*
  %arrayidx51.8 = getelementptr inbounds i8, i8* %a, i64 8
  %1814 = load i8, i8* %arrayidx51.8, align 1
  %arrayidx53.8 = getelementptr inbounds i8, i8* %b, i64 8
  %1815 = load i8, i8* %arrayidx53.8, align 1
  %call54.8 = call zeroext i8 @mult(i8 zeroext %1814, i8 zeroext %1815)
  %arrayidx56.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %call54.8, i8* %arrayidx56.8, align 1
  %arrayidx70.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep20.8124 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 0
  %1816 = load i8, i8* %scevgep20.8124, align 1
  %conv68.8125 = zext i8 %1816 to i32
  %1817 = load i8, i8* %arrayidx70.8, align 1
  %conv71.8126 = zext i8 %1817 to i32
  %xor72.8127 = xor i32 %conv71.8126, %conv68.8125
  %conv73.8128 = trunc i32 %xor72.8127 to i8
  store i8 %conv73.8128, i8* %arrayidx70.8, align 1
  %scevgep20.1.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 1
  %1818 = load i8, i8* %scevgep20.1.8, align 1
  %conv68.1.8 = zext i8 %1818 to i32
  %1819 = load i8, i8* %arrayidx70.8, align 1
  %conv71.1.8 = zext i8 %1819 to i32
  %xor72.1.8 = xor i32 %conv71.1.8, %conv68.1.8
  %conv73.1.8 = trunc i32 %xor72.1.8 to i8
  store i8 %conv73.1.8, i8* %arrayidx70.8, align 1
  %scevgep20.2.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 2
  %1820 = load i8, i8* %scevgep20.2.8, align 1
  %conv68.2.8 = zext i8 %1820 to i32
  %1821 = load i8, i8* %arrayidx70.8, align 1
  %conv71.2.8 = zext i8 %1821 to i32
  %xor72.2.8 = xor i32 %conv71.2.8, %conv68.2.8
  %conv73.2.8 = trunc i32 %xor72.2.8 to i8
  store i8 %conv73.2.8, i8* %arrayidx70.8, align 1
  %scevgep20.3.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 3
  %1822 = load i8, i8* %scevgep20.3.8, align 1
  %conv68.3.8 = zext i8 %1822 to i32
  %1823 = load i8, i8* %arrayidx70.8, align 1
  %conv71.3.8 = zext i8 %1823 to i32
  %xor72.3.8 = xor i32 %conv71.3.8, %conv68.3.8
  %conv73.3.8 = trunc i32 %xor72.3.8 to i8
  store i8 %conv73.3.8, i8* %arrayidx70.8, align 1
  %scevgep20.4.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 4
  %1824 = load i8, i8* %scevgep20.4.8, align 1
  %conv68.4.8 = zext i8 %1824 to i32
  %1825 = load i8, i8* %arrayidx70.8, align 1
  %conv71.4.8 = zext i8 %1825 to i32
  %xor72.4.8 = xor i32 %conv71.4.8, %conv68.4.8
  %conv73.4.8 = trunc i32 %xor72.4.8 to i8
  store i8 %conv73.4.8, i8* %arrayidx70.8, align 1
  %scevgep20.5.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 5
  %1826 = load i8, i8* %scevgep20.5.8, align 1
  %conv68.5.8 = zext i8 %1826 to i32
  %1827 = load i8, i8* %arrayidx70.8, align 1
  %conv71.5.8 = zext i8 %1827 to i32
  %xor72.5.8 = xor i32 %conv71.5.8, %conv68.5.8
  %conv73.5.8 = trunc i32 %xor72.5.8 to i8
  store i8 %conv73.5.8, i8* %arrayidx70.8, align 1
  %scevgep20.6.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 6
  %1828 = load i8, i8* %scevgep20.6.8, align 1
  %conv68.6.8 = zext i8 %1828 to i32
  %1829 = load i8, i8* %arrayidx70.8, align 1
  %conv71.6.8 = zext i8 %1829 to i32
  %xor72.6.8 = xor i32 %conv71.6.8, %conv68.6.8
  %conv73.6.8 = trunc i32 %xor72.6.8 to i8
  store i8 %conv73.6.8, i8* %arrayidx70.8, align 1
  %scevgep20.7.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 7
  %1830 = load i8, i8* %scevgep20.7.8, align 1
  %conv68.7.8 = zext i8 %1830 to i32
  %1831 = load i8, i8* %arrayidx70.8, align 1
  %conv71.7.8 = zext i8 %1831 to i32
  %xor72.7.8 = xor i32 %conv71.7.8, %conv68.7.8
  %conv73.7.8 = trunc i32 %xor72.7.8 to i8
  store i8 %conv73.7.8, i8* %arrayidx70.8, align 1
  %scevgep20.9.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 9
  %1832 = load i8, i8* %scevgep20.9.8, align 1
  %conv68.9.8 = zext i8 %1832 to i32
  %1833 = load i8, i8* %arrayidx70.8, align 1
  %conv71.9.8 = zext i8 %1833 to i32
  %xor72.9.8 = xor i32 %conv71.9.8, %conv68.9.8
  %conv73.9.8 = trunc i32 %xor72.9.8 to i8
  store i8 %conv73.9.8, i8* %arrayidx70.8, align 1
  %scevgep20.10.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 10
  %1834 = load i8, i8* %scevgep20.10.8, align 1
  %conv68.10.8 = zext i8 %1834 to i32
  %1835 = load i8, i8* %arrayidx70.8, align 1
  %conv71.10.8 = zext i8 %1835 to i32
  %xor72.10.8 = xor i32 %conv71.10.8, %conv68.10.8
  %conv73.10.8 = trunc i32 %xor72.10.8 to i8
  store i8 %conv73.10.8, i8* %arrayidx70.8, align 1
  %scevgep20.11.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 11
  %1836 = load i8, i8* %scevgep20.11.8, align 1
  %conv68.11.8 = zext i8 %1836 to i32
  %1837 = load i8, i8* %arrayidx70.8, align 1
  %conv71.11.8 = zext i8 %1837 to i32
  %xor72.11.8 = xor i32 %conv71.11.8, %conv68.11.8
  %conv73.11.8 = trunc i32 %xor72.11.8 to i8
  store i8 %conv73.11.8, i8* %arrayidx70.8, align 1
  %scevgep20.12.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 12
  %1838 = load i8, i8* %scevgep20.12.8, align 1
  %conv68.12.8 = zext i8 %1838 to i32
  %1839 = load i8, i8* %arrayidx70.8, align 1
  %conv71.12.8 = zext i8 %1839 to i32
  %xor72.12.8 = xor i32 %conv71.12.8, %conv68.12.8
  %conv73.12.8 = trunc i32 %xor72.12.8 to i8
  store i8 %conv73.12.8, i8* %arrayidx70.8, align 1
  %scevgep20.13.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 13
  %1840 = load i8, i8* %scevgep20.13.8, align 1
  %conv68.13.8 = zext i8 %1840 to i32
  %1841 = load i8, i8* %arrayidx70.8, align 1
  %conv71.13.8 = zext i8 %1841 to i32
  %xor72.13.8 = xor i32 %conv71.13.8, %conv68.13.8
  %conv73.13.8 = trunc i32 %xor72.13.8 to i8
  store i8 %conv73.13.8, i8* %arrayidx70.8, align 1
  %scevgep20.14.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 14
  %1842 = load i8, i8* %scevgep20.14.8, align 1
  %conv68.14.8 = zext i8 %1842 to i32
  %1843 = load i8, i8* %arrayidx70.8, align 1
  %conv71.14.8 = zext i8 %1843 to i32
  %xor72.14.8 = xor i32 %conv71.14.8, %conv68.14.8
  %conv73.14.8 = trunc i32 %xor72.14.8 to i8
  store i8 %conv73.14.8, i8* %arrayidx70.8, align 1
  %scevgep20.15.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 15
  %1844 = load i8, i8* %scevgep20.15.8, align 1
  %conv68.15.8 = zext i8 %1844 to i32
  %1845 = load i8, i8* %arrayidx70.8, align 1
  %conv71.15.8 = zext i8 %1845 to i32
  %xor72.15.8 = xor i32 %conv71.15.8, %conv68.15.8
  %conv73.15.8 = trunc i32 %xor72.15.8 to i8
  store i8 %conv73.15.8, i8* %arrayidx70.8, align 1
  %scevgep20.16.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 16
  %1846 = load i8, i8* %scevgep20.16.8, align 1
  %conv68.16.8 = zext i8 %1846 to i32
  %1847 = load i8, i8* %arrayidx70.8, align 1
  %conv71.16.8 = zext i8 %1847 to i32
  %xor72.16.8 = xor i32 %conv71.16.8, %conv68.16.8
  %conv73.16.8 = trunc i32 %xor72.16.8 to i8
  store i8 %conv73.16.8, i8* %arrayidx70.8, align 1
  %scevgep20.17.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 17
  %1848 = load i8, i8* %scevgep20.17.8, align 1
  %conv68.17.8 = zext i8 %1848 to i32
  %1849 = load i8, i8* %arrayidx70.8, align 1
  %conv71.17.8 = zext i8 %1849 to i32
  %xor72.17.8 = xor i32 %conv71.17.8, %conv68.17.8
  %conv73.17.8 = trunc i32 %xor72.17.8 to i8
  store i8 %conv73.17.8, i8* %arrayidx70.8, align 1
  %scevgep20.18.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 18
  %1850 = load i8, i8* %scevgep20.18.8, align 1
  %conv68.18.8 = zext i8 %1850 to i32
  %1851 = load i8, i8* %arrayidx70.8, align 1
  %conv71.18.8 = zext i8 %1851 to i32
  %xor72.18.8 = xor i32 %conv71.18.8, %conv68.18.8
  %conv73.18.8 = trunc i32 %xor72.18.8 to i8
  store i8 %conv73.18.8, i8* %arrayidx70.8, align 1
  %scevgep20.19.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 19
  %1852 = load i8, i8* %scevgep20.19.8, align 1
  %conv68.19.8 = zext i8 %1852 to i32
  %1853 = load i8, i8* %arrayidx70.8, align 1
  %conv71.19.8 = zext i8 %1853 to i32
  %xor72.19.8 = xor i32 %conv71.19.8, %conv68.19.8
  %conv73.19.8 = trunc i32 %xor72.19.8 to i8
  store i8 %conv73.19.8, i8* %arrayidx70.8, align 1
  %scevgep20.20.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 0, i64 20
  %1854 = load i8, i8* %scevgep20.20.8, align 1
  %conv68.20.8 = zext i8 %1854 to i32
  %1855 = load i8, i8* %arrayidx70.8, align 1
  %conv71.20.8 = zext i8 %1855 to i32
  %xor72.20.8 = xor i32 %conv71.20.8, %conv68.20.8
  %conv73.20.8 = trunc i32 %xor72.20.8 to i8
  store i8 %conv73.20.8, i8* %arrayidx70.8, align 1
  %scevgep19.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1813, i64 0, i64 1, i64 0
  %1856 = bitcast i8* %scevgep19.8 to [21 x [21 x i8]]*
  %arrayidx51.9 = getelementptr inbounds i8, i8* %a, i64 9
  %1857 = load i8, i8* %arrayidx51.9, align 1
  %arrayidx53.9 = getelementptr inbounds i8, i8* %b, i64 9
  %1858 = load i8, i8* %arrayidx53.9, align 1
  %call54.9 = call zeroext i8 @mult(i8 zeroext %1857, i8 zeroext %1858)
  %arrayidx56.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %call54.9, i8* %arrayidx56.9, align 1
  %arrayidx70.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep20.9134 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 0
  %1859 = load i8, i8* %scevgep20.9134, align 1
  %conv68.9135 = zext i8 %1859 to i32
  %1860 = load i8, i8* %arrayidx70.9, align 1
  %conv71.9136 = zext i8 %1860 to i32
  %xor72.9137 = xor i32 %conv71.9136, %conv68.9135
  %conv73.9138 = trunc i32 %xor72.9137 to i8
  store i8 %conv73.9138, i8* %arrayidx70.9, align 1
  %scevgep20.1.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 1
  %1861 = load i8, i8* %scevgep20.1.9, align 1
  %conv68.1.9 = zext i8 %1861 to i32
  %1862 = load i8, i8* %arrayidx70.9, align 1
  %conv71.1.9 = zext i8 %1862 to i32
  %xor72.1.9 = xor i32 %conv71.1.9, %conv68.1.9
  %conv73.1.9 = trunc i32 %xor72.1.9 to i8
  store i8 %conv73.1.9, i8* %arrayidx70.9, align 1
  %scevgep20.2.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 2
  %1863 = load i8, i8* %scevgep20.2.9, align 1
  %conv68.2.9 = zext i8 %1863 to i32
  %1864 = load i8, i8* %arrayidx70.9, align 1
  %conv71.2.9 = zext i8 %1864 to i32
  %xor72.2.9 = xor i32 %conv71.2.9, %conv68.2.9
  %conv73.2.9 = trunc i32 %xor72.2.9 to i8
  store i8 %conv73.2.9, i8* %arrayidx70.9, align 1
  %scevgep20.3.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 3
  %1865 = load i8, i8* %scevgep20.3.9, align 1
  %conv68.3.9 = zext i8 %1865 to i32
  %1866 = load i8, i8* %arrayidx70.9, align 1
  %conv71.3.9 = zext i8 %1866 to i32
  %xor72.3.9 = xor i32 %conv71.3.9, %conv68.3.9
  %conv73.3.9 = trunc i32 %xor72.3.9 to i8
  store i8 %conv73.3.9, i8* %arrayidx70.9, align 1
  %scevgep20.4.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 4
  %1867 = load i8, i8* %scevgep20.4.9, align 1
  %conv68.4.9 = zext i8 %1867 to i32
  %1868 = load i8, i8* %arrayidx70.9, align 1
  %conv71.4.9 = zext i8 %1868 to i32
  %xor72.4.9 = xor i32 %conv71.4.9, %conv68.4.9
  %conv73.4.9 = trunc i32 %xor72.4.9 to i8
  store i8 %conv73.4.9, i8* %arrayidx70.9, align 1
  %scevgep20.5.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 5
  %1869 = load i8, i8* %scevgep20.5.9, align 1
  %conv68.5.9 = zext i8 %1869 to i32
  %1870 = load i8, i8* %arrayidx70.9, align 1
  %conv71.5.9 = zext i8 %1870 to i32
  %xor72.5.9 = xor i32 %conv71.5.9, %conv68.5.9
  %conv73.5.9 = trunc i32 %xor72.5.9 to i8
  store i8 %conv73.5.9, i8* %arrayidx70.9, align 1
  %scevgep20.6.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 6
  %1871 = load i8, i8* %scevgep20.6.9, align 1
  %conv68.6.9 = zext i8 %1871 to i32
  %1872 = load i8, i8* %arrayidx70.9, align 1
  %conv71.6.9 = zext i8 %1872 to i32
  %xor72.6.9 = xor i32 %conv71.6.9, %conv68.6.9
  %conv73.6.9 = trunc i32 %xor72.6.9 to i8
  store i8 %conv73.6.9, i8* %arrayidx70.9, align 1
  %scevgep20.7.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 7
  %1873 = load i8, i8* %scevgep20.7.9, align 1
  %conv68.7.9 = zext i8 %1873 to i32
  %1874 = load i8, i8* %arrayidx70.9, align 1
  %conv71.7.9 = zext i8 %1874 to i32
  %xor72.7.9 = xor i32 %conv71.7.9, %conv68.7.9
  %conv73.7.9 = trunc i32 %xor72.7.9 to i8
  store i8 %conv73.7.9, i8* %arrayidx70.9, align 1
  %scevgep20.8.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 8
  %1875 = load i8, i8* %scevgep20.8.9, align 1
  %conv68.8.9 = zext i8 %1875 to i32
  %1876 = load i8, i8* %arrayidx70.9, align 1
  %conv71.8.9 = zext i8 %1876 to i32
  %xor72.8.9 = xor i32 %conv71.8.9, %conv68.8.9
  %conv73.8.9 = trunc i32 %xor72.8.9 to i8
  store i8 %conv73.8.9, i8* %arrayidx70.9, align 1
  %scevgep20.10.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 10
  %1877 = load i8, i8* %scevgep20.10.9, align 1
  %conv68.10.9 = zext i8 %1877 to i32
  %1878 = load i8, i8* %arrayidx70.9, align 1
  %conv71.10.9 = zext i8 %1878 to i32
  %xor72.10.9 = xor i32 %conv71.10.9, %conv68.10.9
  %conv73.10.9 = trunc i32 %xor72.10.9 to i8
  store i8 %conv73.10.9, i8* %arrayidx70.9, align 1
  %scevgep20.11.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 11
  %1879 = load i8, i8* %scevgep20.11.9, align 1
  %conv68.11.9 = zext i8 %1879 to i32
  %1880 = load i8, i8* %arrayidx70.9, align 1
  %conv71.11.9 = zext i8 %1880 to i32
  %xor72.11.9 = xor i32 %conv71.11.9, %conv68.11.9
  %conv73.11.9 = trunc i32 %xor72.11.9 to i8
  store i8 %conv73.11.9, i8* %arrayidx70.9, align 1
  %scevgep20.12.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 12
  %1881 = load i8, i8* %scevgep20.12.9, align 1
  %conv68.12.9 = zext i8 %1881 to i32
  %1882 = load i8, i8* %arrayidx70.9, align 1
  %conv71.12.9 = zext i8 %1882 to i32
  %xor72.12.9 = xor i32 %conv71.12.9, %conv68.12.9
  %conv73.12.9 = trunc i32 %xor72.12.9 to i8
  store i8 %conv73.12.9, i8* %arrayidx70.9, align 1
  %scevgep20.13.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 13
  %1883 = load i8, i8* %scevgep20.13.9, align 1
  %conv68.13.9 = zext i8 %1883 to i32
  %1884 = load i8, i8* %arrayidx70.9, align 1
  %conv71.13.9 = zext i8 %1884 to i32
  %xor72.13.9 = xor i32 %conv71.13.9, %conv68.13.9
  %conv73.13.9 = trunc i32 %xor72.13.9 to i8
  store i8 %conv73.13.9, i8* %arrayidx70.9, align 1
  %scevgep20.14.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 14
  %1885 = load i8, i8* %scevgep20.14.9, align 1
  %conv68.14.9 = zext i8 %1885 to i32
  %1886 = load i8, i8* %arrayidx70.9, align 1
  %conv71.14.9 = zext i8 %1886 to i32
  %xor72.14.9 = xor i32 %conv71.14.9, %conv68.14.9
  %conv73.14.9 = trunc i32 %xor72.14.9 to i8
  store i8 %conv73.14.9, i8* %arrayidx70.9, align 1
  %scevgep20.15.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 15
  %1887 = load i8, i8* %scevgep20.15.9, align 1
  %conv68.15.9 = zext i8 %1887 to i32
  %1888 = load i8, i8* %arrayidx70.9, align 1
  %conv71.15.9 = zext i8 %1888 to i32
  %xor72.15.9 = xor i32 %conv71.15.9, %conv68.15.9
  %conv73.15.9 = trunc i32 %xor72.15.9 to i8
  store i8 %conv73.15.9, i8* %arrayidx70.9, align 1
  %scevgep20.16.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 16
  %1889 = load i8, i8* %scevgep20.16.9, align 1
  %conv68.16.9 = zext i8 %1889 to i32
  %1890 = load i8, i8* %arrayidx70.9, align 1
  %conv71.16.9 = zext i8 %1890 to i32
  %xor72.16.9 = xor i32 %conv71.16.9, %conv68.16.9
  %conv73.16.9 = trunc i32 %xor72.16.9 to i8
  store i8 %conv73.16.9, i8* %arrayidx70.9, align 1
  %scevgep20.17.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 17
  %1891 = load i8, i8* %scevgep20.17.9, align 1
  %conv68.17.9 = zext i8 %1891 to i32
  %1892 = load i8, i8* %arrayidx70.9, align 1
  %conv71.17.9 = zext i8 %1892 to i32
  %xor72.17.9 = xor i32 %conv71.17.9, %conv68.17.9
  %conv73.17.9 = trunc i32 %xor72.17.9 to i8
  store i8 %conv73.17.9, i8* %arrayidx70.9, align 1
  %scevgep20.18.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 18
  %1893 = load i8, i8* %scevgep20.18.9, align 1
  %conv68.18.9 = zext i8 %1893 to i32
  %1894 = load i8, i8* %arrayidx70.9, align 1
  %conv71.18.9 = zext i8 %1894 to i32
  %xor72.18.9 = xor i32 %conv71.18.9, %conv68.18.9
  %conv73.18.9 = trunc i32 %xor72.18.9 to i8
  store i8 %conv73.18.9, i8* %arrayidx70.9, align 1
  %scevgep20.19.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 19
  %1895 = load i8, i8* %scevgep20.19.9, align 1
  %conv68.19.9 = zext i8 %1895 to i32
  %1896 = load i8, i8* %arrayidx70.9, align 1
  %conv71.19.9 = zext i8 %1896 to i32
  %xor72.19.9 = xor i32 %conv71.19.9, %conv68.19.9
  %conv73.19.9 = trunc i32 %xor72.19.9 to i8
  store i8 %conv73.19.9, i8* %arrayidx70.9, align 1
  %scevgep20.20.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 0, i64 20
  %1897 = load i8, i8* %scevgep20.20.9, align 1
  %conv68.20.9 = zext i8 %1897 to i32
  %1898 = load i8, i8* %arrayidx70.9, align 1
  %conv71.20.9 = zext i8 %1898 to i32
  %xor72.20.9 = xor i32 %conv71.20.9, %conv68.20.9
  %conv73.20.9 = trunc i32 %xor72.20.9 to i8
  store i8 %conv73.20.9, i8* %arrayidx70.9, align 1
  %scevgep19.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 1, i64 0
  %1899 = bitcast i8* %scevgep19.9 to [21 x [21 x i8]]*
  %arrayidx51.10 = getelementptr inbounds i8, i8* %a, i64 10
  %1900 = load i8, i8* %arrayidx51.10, align 1
  %arrayidx53.10 = getelementptr inbounds i8, i8* %b, i64 10
  %1901 = load i8, i8* %arrayidx53.10, align 1
  %call54.10 = call zeroext i8 @mult(i8 zeroext %1900, i8 zeroext %1901)
  %arrayidx56.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %call54.10, i8* %arrayidx56.10, align 1
  %arrayidx70.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep20.10144 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 0
  %1902 = load i8, i8* %scevgep20.10144, align 1
  %conv68.10145 = zext i8 %1902 to i32
  %1903 = load i8, i8* %arrayidx70.10, align 1
  %conv71.10146 = zext i8 %1903 to i32
  %xor72.10147 = xor i32 %conv71.10146, %conv68.10145
  %conv73.10148 = trunc i32 %xor72.10147 to i8
  store i8 %conv73.10148, i8* %arrayidx70.10, align 1
  %scevgep20.1.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 1
  %1904 = load i8, i8* %scevgep20.1.10, align 1
  %conv68.1.10 = zext i8 %1904 to i32
  %1905 = load i8, i8* %arrayidx70.10, align 1
  %conv71.1.10 = zext i8 %1905 to i32
  %xor72.1.10 = xor i32 %conv71.1.10, %conv68.1.10
  %conv73.1.10 = trunc i32 %xor72.1.10 to i8
  store i8 %conv73.1.10, i8* %arrayidx70.10, align 1
  %scevgep20.2.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 2
  %1906 = load i8, i8* %scevgep20.2.10, align 1
  %conv68.2.10 = zext i8 %1906 to i32
  %1907 = load i8, i8* %arrayidx70.10, align 1
  %conv71.2.10 = zext i8 %1907 to i32
  %xor72.2.10 = xor i32 %conv71.2.10, %conv68.2.10
  %conv73.2.10 = trunc i32 %xor72.2.10 to i8
  store i8 %conv73.2.10, i8* %arrayidx70.10, align 1
  %scevgep20.3.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 3
  %1908 = load i8, i8* %scevgep20.3.10, align 1
  %conv68.3.10 = zext i8 %1908 to i32
  %1909 = load i8, i8* %arrayidx70.10, align 1
  %conv71.3.10 = zext i8 %1909 to i32
  %xor72.3.10 = xor i32 %conv71.3.10, %conv68.3.10
  %conv73.3.10 = trunc i32 %xor72.3.10 to i8
  store i8 %conv73.3.10, i8* %arrayidx70.10, align 1
  %scevgep20.4.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 4
  %1910 = load i8, i8* %scevgep20.4.10, align 1
  %conv68.4.10 = zext i8 %1910 to i32
  %1911 = load i8, i8* %arrayidx70.10, align 1
  %conv71.4.10 = zext i8 %1911 to i32
  %xor72.4.10 = xor i32 %conv71.4.10, %conv68.4.10
  %conv73.4.10 = trunc i32 %xor72.4.10 to i8
  store i8 %conv73.4.10, i8* %arrayidx70.10, align 1
  %scevgep20.5.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 5
  %1912 = load i8, i8* %scevgep20.5.10, align 1
  %conv68.5.10 = zext i8 %1912 to i32
  %1913 = load i8, i8* %arrayidx70.10, align 1
  %conv71.5.10 = zext i8 %1913 to i32
  %xor72.5.10 = xor i32 %conv71.5.10, %conv68.5.10
  %conv73.5.10 = trunc i32 %xor72.5.10 to i8
  store i8 %conv73.5.10, i8* %arrayidx70.10, align 1
  %scevgep20.6.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 6
  %1914 = load i8, i8* %scevgep20.6.10, align 1
  %conv68.6.10 = zext i8 %1914 to i32
  %1915 = load i8, i8* %arrayidx70.10, align 1
  %conv71.6.10 = zext i8 %1915 to i32
  %xor72.6.10 = xor i32 %conv71.6.10, %conv68.6.10
  %conv73.6.10 = trunc i32 %xor72.6.10 to i8
  store i8 %conv73.6.10, i8* %arrayidx70.10, align 1
  %scevgep20.7.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 7
  %1916 = load i8, i8* %scevgep20.7.10, align 1
  %conv68.7.10 = zext i8 %1916 to i32
  %1917 = load i8, i8* %arrayidx70.10, align 1
  %conv71.7.10 = zext i8 %1917 to i32
  %xor72.7.10 = xor i32 %conv71.7.10, %conv68.7.10
  %conv73.7.10 = trunc i32 %xor72.7.10 to i8
  store i8 %conv73.7.10, i8* %arrayidx70.10, align 1
  %scevgep20.8.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 8
  %1918 = load i8, i8* %scevgep20.8.10, align 1
  %conv68.8.10 = zext i8 %1918 to i32
  %1919 = load i8, i8* %arrayidx70.10, align 1
  %conv71.8.10 = zext i8 %1919 to i32
  %xor72.8.10 = xor i32 %conv71.8.10, %conv68.8.10
  %conv73.8.10 = trunc i32 %xor72.8.10 to i8
  store i8 %conv73.8.10, i8* %arrayidx70.10, align 1
  %scevgep20.9.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 9
  %1920 = load i8, i8* %scevgep20.9.10, align 1
  %conv68.9.10 = zext i8 %1920 to i32
  %1921 = load i8, i8* %arrayidx70.10, align 1
  %conv71.9.10 = zext i8 %1921 to i32
  %xor72.9.10 = xor i32 %conv71.9.10, %conv68.9.10
  %conv73.9.10 = trunc i32 %xor72.9.10 to i8
  store i8 %conv73.9.10, i8* %arrayidx70.10, align 1
  %scevgep20.11.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 11
  %1922 = load i8, i8* %scevgep20.11.10, align 1
  %conv68.11.10 = zext i8 %1922 to i32
  %1923 = load i8, i8* %arrayidx70.10, align 1
  %conv71.11.10 = zext i8 %1923 to i32
  %xor72.11.10 = xor i32 %conv71.11.10, %conv68.11.10
  %conv73.11.10 = trunc i32 %xor72.11.10 to i8
  store i8 %conv73.11.10, i8* %arrayidx70.10, align 1
  %scevgep20.12.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 12
  %1924 = load i8, i8* %scevgep20.12.10, align 1
  %conv68.12.10 = zext i8 %1924 to i32
  %1925 = load i8, i8* %arrayidx70.10, align 1
  %conv71.12.10 = zext i8 %1925 to i32
  %xor72.12.10 = xor i32 %conv71.12.10, %conv68.12.10
  %conv73.12.10 = trunc i32 %xor72.12.10 to i8
  store i8 %conv73.12.10, i8* %arrayidx70.10, align 1
  %scevgep20.13.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 13
  %1926 = load i8, i8* %scevgep20.13.10, align 1
  %conv68.13.10 = zext i8 %1926 to i32
  %1927 = load i8, i8* %arrayidx70.10, align 1
  %conv71.13.10 = zext i8 %1927 to i32
  %xor72.13.10 = xor i32 %conv71.13.10, %conv68.13.10
  %conv73.13.10 = trunc i32 %xor72.13.10 to i8
  store i8 %conv73.13.10, i8* %arrayidx70.10, align 1
  %scevgep20.14.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 14
  %1928 = load i8, i8* %scevgep20.14.10, align 1
  %conv68.14.10 = zext i8 %1928 to i32
  %1929 = load i8, i8* %arrayidx70.10, align 1
  %conv71.14.10 = zext i8 %1929 to i32
  %xor72.14.10 = xor i32 %conv71.14.10, %conv68.14.10
  %conv73.14.10 = trunc i32 %xor72.14.10 to i8
  store i8 %conv73.14.10, i8* %arrayidx70.10, align 1
  %scevgep20.15.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 15
  %1930 = load i8, i8* %scevgep20.15.10, align 1
  %conv68.15.10 = zext i8 %1930 to i32
  %1931 = load i8, i8* %arrayidx70.10, align 1
  %conv71.15.10 = zext i8 %1931 to i32
  %xor72.15.10 = xor i32 %conv71.15.10, %conv68.15.10
  %conv73.15.10 = trunc i32 %xor72.15.10 to i8
  store i8 %conv73.15.10, i8* %arrayidx70.10, align 1
  %scevgep20.16.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 16
  %1932 = load i8, i8* %scevgep20.16.10, align 1
  %conv68.16.10 = zext i8 %1932 to i32
  %1933 = load i8, i8* %arrayidx70.10, align 1
  %conv71.16.10 = zext i8 %1933 to i32
  %xor72.16.10 = xor i32 %conv71.16.10, %conv68.16.10
  %conv73.16.10 = trunc i32 %xor72.16.10 to i8
  store i8 %conv73.16.10, i8* %arrayidx70.10, align 1
  %scevgep20.17.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 17
  %1934 = load i8, i8* %scevgep20.17.10, align 1
  %conv68.17.10 = zext i8 %1934 to i32
  %1935 = load i8, i8* %arrayidx70.10, align 1
  %conv71.17.10 = zext i8 %1935 to i32
  %xor72.17.10 = xor i32 %conv71.17.10, %conv68.17.10
  %conv73.17.10 = trunc i32 %xor72.17.10 to i8
  store i8 %conv73.17.10, i8* %arrayidx70.10, align 1
  %scevgep20.18.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 18
  %1936 = load i8, i8* %scevgep20.18.10, align 1
  %conv68.18.10 = zext i8 %1936 to i32
  %1937 = load i8, i8* %arrayidx70.10, align 1
  %conv71.18.10 = zext i8 %1937 to i32
  %xor72.18.10 = xor i32 %conv71.18.10, %conv68.18.10
  %conv73.18.10 = trunc i32 %xor72.18.10 to i8
  store i8 %conv73.18.10, i8* %arrayidx70.10, align 1
  %scevgep20.19.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 19
  %1938 = load i8, i8* %scevgep20.19.10, align 1
  %conv68.19.10 = zext i8 %1938 to i32
  %1939 = load i8, i8* %arrayidx70.10, align 1
  %conv71.19.10 = zext i8 %1939 to i32
  %xor72.19.10 = xor i32 %conv71.19.10, %conv68.19.10
  %conv73.19.10 = trunc i32 %xor72.19.10 to i8
  store i8 %conv73.19.10, i8* %arrayidx70.10, align 1
  %scevgep20.20.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 0, i64 20
  %1940 = load i8, i8* %scevgep20.20.10, align 1
  %conv68.20.10 = zext i8 %1940 to i32
  %1941 = load i8, i8* %arrayidx70.10, align 1
  %conv71.20.10 = zext i8 %1941 to i32
  %xor72.20.10 = xor i32 %conv71.20.10, %conv68.20.10
  %conv73.20.10 = trunc i32 %xor72.20.10 to i8
  store i8 %conv73.20.10, i8* %arrayidx70.10, align 1
  %scevgep19.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1899, i64 0, i64 1, i64 0
  %1942 = bitcast i8* %scevgep19.10 to [21 x [21 x i8]]*
  %arrayidx51.11 = getelementptr inbounds i8, i8* %a, i64 11
  %1943 = load i8, i8* %arrayidx51.11, align 1
  %arrayidx53.11 = getelementptr inbounds i8, i8* %b, i64 11
  %1944 = load i8, i8* %arrayidx53.11, align 1
  %call54.11 = call zeroext i8 @mult(i8 zeroext %1943, i8 zeroext %1944)
  %arrayidx56.11 = getelementptr inbounds i8, i8* %c, i64 11
  store i8 %call54.11, i8* %arrayidx56.11, align 1
  %arrayidx70.11 = getelementptr inbounds i8, i8* %c, i64 11
  %scevgep20.11154 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 0
  %1945 = load i8, i8* %scevgep20.11154, align 1
  %conv68.11155 = zext i8 %1945 to i32
  %1946 = load i8, i8* %arrayidx70.11, align 1
  %conv71.11156 = zext i8 %1946 to i32
  %xor72.11157 = xor i32 %conv71.11156, %conv68.11155
  %conv73.11158 = trunc i32 %xor72.11157 to i8
  store i8 %conv73.11158, i8* %arrayidx70.11, align 1
  %scevgep20.1.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 1
  %1947 = load i8, i8* %scevgep20.1.11, align 1
  %conv68.1.11 = zext i8 %1947 to i32
  %1948 = load i8, i8* %arrayidx70.11, align 1
  %conv71.1.11 = zext i8 %1948 to i32
  %xor72.1.11 = xor i32 %conv71.1.11, %conv68.1.11
  %conv73.1.11 = trunc i32 %xor72.1.11 to i8
  store i8 %conv73.1.11, i8* %arrayidx70.11, align 1
  %scevgep20.2.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 2
  %1949 = load i8, i8* %scevgep20.2.11, align 1
  %conv68.2.11 = zext i8 %1949 to i32
  %1950 = load i8, i8* %arrayidx70.11, align 1
  %conv71.2.11 = zext i8 %1950 to i32
  %xor72.2.11 = xor i32 %conv71.2.11, %conv68.2.11
  %conv73.2.11 = trunc i32 %xor72.2.11 to i8
  store i8 %conv73.2.11, i8* %arrayidx70.11, align 1
  %scevgep20.3.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 3
  %1951 = load i8, i8* %scevgep20.3.11, align 1
  %conv68.3.11 = zext i8 %1951 to i32
  %1952 = load i8, i8* %arrayidx70.11, align 1
  %conv71.3.11 = zext i8 %1952 to i32
  %xor72.3.11 = xor i32 %conv71.3.11, %conv68.3.11
  %conv73.3.11 = trunc i32 %xor72.3.11 to i8
  store i8 %conv73.3.11, i8* %arrayidx70.11, align 1
  %scevgep20.4.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 4
  %1953 = load i8, i8* %scevgep20.4.11, align 1
  %conv68.4.11 = zext i8 %1953 to i32
  %1954 = load i8, i8* %arrayidx70.11, align 1
  %conv71.4.11 = zext i8 %1954 to i32
  %xor72.4.11 = xor i32 %conv71.4.11, %conv68.4.11
  %conv73.4.11 = trunc i32 %xor72.4.11 to i8
  store i8 %conv73.4.11, i8* %arrayidx70.11, align 1
  %scevgep20.5.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 5
  %1955 = load i8, i8* %scevgep20.5.11, align 1
  %conv68.5.11 = zext i8 %1955 to i32
  %1956 = load i8, i8* %arrayidx70.11, align 1
  %conv71.5.11 = zext i8 %1956 to i32
  %xor72.5.11 = xor i32 %conv71.5.11, %conv68.5.11
  %conv73.5.11 = trunc i32 %xor72.5.11 to i8
  store i8 %conv73.5.11, i8* %arrayidx70.11, align 1
  %scevgep20.6.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 6
  %1957 = load i8, i8* %scevgep20.6.11, align 1
  %conv68.6.11 = zext i8 %1957 to i32
  %1958 = load i8, i8* %arrayidx70.11, align 1
  %conv71.6.11 = zext i8 %1958 to i32
  %xor72.6.11 = xor i32 %conv71.6.11, %conv68.6.11
  %conv73.6.11 = trunc i32 %xor72.6.11 to i8
  store i8 %conv73.6.11, i8* %arrayidx70.11, align 1
  %scevgep20.7.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 7
  %1959 = load i8, i8* %scevgep20.7.11, align 1
  %conv68.7.11 = zext i8 %1959 to i32
  %1960 = load i8, i8* %arrayidx70.11, align 1
  %conv71.7.11 = zext i8 %1960 to i32
  %xor72.7.11 = xor i32 %conv71.7.11, %conv68.7.11
  %conv73.7.11 = trunc i32 %xor72.7.11 to i8
  store i8 %conv73.7.11, i8* %arrayidx70.11, align 1
  %scevgep20.8.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 8
  %1961 = load i8, i8* %scevgep20.8.11, align 1
  %conv68.8.11 = zext i8 %1961 to i32
  %1962 = load i8, i8* %arrayidx70.11, align 1
  %conv71.8.11 = zext i8 %1962 to i32
  %xor72.8.11 = xor i32 %conv71.8.11, %conv68.8.11
  %conv73.8.11 = trunc i32 %xor72.8.11 to i8
  store i8 %conv73.8.11, i8* %arrayidx70.11, align 1
  %scevgep20.9.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 9
  %1963 = load i8, i8* %scevgep20.9.11, align 1
  %conv68.9.11 = zext i8 %1963 to i32
  %1964 = load i8, i8* %arrayidx70.11, align 1
  %conv71.9.11 = zext i8 %1964 to i32
  %xor72.9.11 = xor i32 %conv71.9.11, %conv68.9.11
  %conv73.9.11 = trunc i32 %xor72.9.11 to i8
  store i8 %conv73.9.11, i8* %arrayidx70.11, align 1
  %scevgep20.10.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 10
  %1965 = load i8, i8* %scevgep20.10.11, align 1
  %conv68.10.11 = zext i8 %1965 to i32
  %1966 = load i8, i8* %arrayidx70.11, align 1
  %conv71.10.11 = zext i8 %1966 to i32
  %xor72.10.11 = xor i32 %conv71.10.11, %conv68.10.11
  %conv73.10.11 = trunc i32 %xor72.10.11 to i8
  store i8 %conv73.10.11, i8* %arrayidx70.11, align 1
  %scevgep20.12.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 12
  %1967 = load i8, i8* %scevgep20.12.11, align 1
  %conv68.12.11 = zext i8 %1967 to i32
  %1968 = load i8, i8* %arrayidx70.11, align 1
  %conv71.12.11 = zext i8 %1968 to i32
  %xor72.12.11 = xor i32 %conv71.12.11, %conv68.12.11
  %conv73.12.11 = trunc i32 %xor72.12.11 to i8
  store i8 %conv73.12.11, i8* %arrayidx70.11, align 1
  %scevgep20.13.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 13
  %1969 = load i8, i8* %scevgep20.13.11, align 1
  %conv68.13.11 = zext i8 %1969 to i32
  %1970 = load i8, i8* %arrayidx70.11, align 1
  %conv71.13.11 = zext i8 %1970 to i32
  %xor72.13.11 = xor i32 %conv71.13.11, %conv68.13.11
  %conv73.13.11 = trunc i32 %xor72.13.11 to i8
  store i8 %conv73.13.11, i8* %arrayidx70.11, align 1
  %scevgep20.14.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 14
  %1971 = load i8, i8* %scevgep20.14.11, align 1
  %conv68.14.11 = zext i8 %1971 to i32
  %1972 = load i8, i8* %arrayidx70.11, align 1
  %conv71.14.11 = zext i8 %1972 to i32
  %xor72.14.11 = xor i32 %conv71.14.11, %conv68.14.11
  %conv73.14.11 = trunc i32 %xor72.14.11 to i8
  store i8 %conv73.14.11, i8* %arrayidx70.11, align 1
  %scevgep20.15.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 15
  %1973 = load i8, i8* %scevgep20.15.11, align 1
  %conv68.15.11 = zext i8 %1973 to i32
  %1974 = load i8, i8* %arrayidx70.11, align 1
  %conv71.15.11 = zext i8 %1974 to i32
  %xor72.15.11 = xor i32 %conv71.15.11, %conv68.15.11
  %conv73.15.11 = trunc i32 %xor72.15.11 to i8
  store i8 %conv73.15.11, i8* %arrayidx70.11, align 1
  %scevgep20.16.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 16
  %1975 = load i8, i8* %scevgep20.16.11, align 1
  %conv68.16.11 = zext i8 %1975 to i32
  %1976 = load i8, i8* %arrayidx70.11, align 1
  %conv71.16.11 = zext i8 %1976 to i32
  %xor72.16.11 = xor i32 %conv71.16.11, %conv68.16.11
  %conv73.16.11 = trunc i32 %xor72.16.11 to i8
  store i8 %conv73.16.11, i8* %arrayidx70.11, align 1
  %scevgep20.17.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 17
  %1977 = load i8, i8* %scevgep20.17.11, align 1
  %conv68.17.11 = zext i8 %1977 to i32
  %1978 = load i8, i8* %arrayidx70.11, align 1
  %conv71.17.11 = zext i8 %1978 to i32
  %xor72.17.11 = xor i32 %conv71.17.11, %conv68.17.11
  %conv73.17.11 = trunc i32 %xor72.17.11 to i8
  store i8 %conv73.17.11, i8* %arrayidx70.11, align 1
  %scevgep20.18.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 18
  %1979 = load i8, i8* %scevgep20.18.11, align 1
  %conv68.18.11 = zext i8 %1979 to i32
  %1980 = load i8, i8* %arrayidx70.11, align 1
  %conv71.18.11 = zext i8 %1980 to i32
  %xor72.18.11 = xor i32 %conv71.18.11, %conv68.18.11
  %conv73.18.11 = trunc i32 %xor72.18.11 to i8
  store i8 %conv73.18.11, i8* %arrayidx70.11, align 1
  %scevgep20.19.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 19
  %1981 = load i8, i8* %scevgep20.19.11, align 1
  %conv68.19.11 = zext i8 %1981 to i32
  %1982 = load i8, i8* %arrayidx70.11, align 1
  %conv71.19.11 = zext i8 %1982 to i32
  %xor72.19.11 = xor i32 %conv71.19.11, %conv68.19.11
  %conv73.19.11 = trunc i32 %xor72.19.11 to i8
  store i8 %conv73.19.11, i8* %arrayidx70.11, align 1
  %scevgep20.20.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 0, i64 20
  %1983 = load i8, i8* %scevgep20.20.11, align 1
  %conv68.20.11 = zext i8 %1983 to i32
  %1984 = load i8, i8* %arrayidx70.11, align 1
  %conv71.20.11 = zext i8 %1984 to i32
  %xor72.20.11 = xor i32 %conv71.20.11, %conv68.20.11
  %conv73.20.11 = trunc i32 %xor72.20.11 to i8
  store i8 %conv73.20.11, i8* %arrayidx70.11, align 1
  %scevgep19.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1942, i64 0, i64 1, i64 0
  %1985 = bitcast i8* %scevgep19.11 to [21 x [21 x i8]]*
  %arrayidx51.12 = getelementptr inbounds i8, i8* %a, i64 12
  %1986 = load i8, i8* %arrayidx51.12, align 1
  %arrayidx53.12 = getelementptr inbounds i8, i8* %b, i64 12
  %1987 = load i8, i8* %arrayidx53.12, align 1
  %call54.12 = call zeroext i8 @mult(i8 zeroext %1986, i8 zeroext %1987)
  %arrayidx56.12 = getelementptr inbounds i8, i8* %c, i64 12
  store i8 %call54.12, i8* %arrayidx56.12, align 1
  %arrayidx70.12 = getelementptr inbounds i8, i8* %c, i64 12
  %scevgep20.12164 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 0
  %1988 = load i8, i8* %scevgep20.12164, align 1
  %conv68.12165 = zext i8 %1988 to i32
  %1989 = load i8, i8* %arrayidx70.12, align 1
  %conv71.12166 = zext i8 %1989 to i32
  %xor72.12167 = xor i32 %conv71.12166, %conv68.12165
  %conv73.12168 = trunc i32 %xor72.12167 to i8
  store i8 %conv73.12168, i8* %arrayidx70.12, align 1
  %scevgep20.1.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 1
  %1990 = load i8, i8* %scevgep20.1.12, align 1
  %conv68.1.12 = zext i8 %1990 to i32
  %1991 = load i8, i8* %arrayidx70.12, align 1
  %conv71.1.12 = zext i8 %1991 to i32
  %xor72.1.12 = xor i32 %conv71.1.12, %conv68.1.12
  %conv73.1.12 = trunc i32 %xor72.1.12 to i8
  store i8 %conv73.1.12, i8* %arrayidx70.12, align 1
  %scevgep20.2.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 2
  %1992 = load i8, i8* %scevgep20.2.12, align 1
  %conv68.2.12 = zext i8 %1992 to i32
  %1993 = load i8, i8* %arrayidx70.12, align 1
  %conv71.2.12 = zext i8 %1993 to i32
  %xor72.2.12 = xor i32 %conv71.2.12, %conv68.2.12
  %conv73.2.12 = trunc i32 %xor72.2.12 to i8
  store i8 %conv73.2.12, i8* %arrayidx70.12, align 1
  %scevgep20.3.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 3
  %1994 = load i8, i8* %scevgep20.3.12, align 1
  %conv68.3.12 = zext i8 %1994 to i32
  %1995 = load i8, i8* %arrayidx70.12, align 1
  %conv71.3.12 = zext i8 %1995 to i32
  %xor72.3.12 = xor i32 %conv71.3.12, %conv68.3.12
  %conv73.3.12 = trunc i32 %xor72.3.12 to i8
  store i8 %conv73.3.12, i8* %arrayidx70.12, align 1
  %scevgep20.4.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 4
  %1996 = load i8, i8* %scevgep20.4.12, align 1
  %conv68.4.12 = zext i8 %1996 to i32
  %1997 = load i8, i8* %arrayidx70.12, align 1
  %conv71.4.12 = zext i8 %1997 to i32
  %xor72.4.12 = xor i32 %conv71.4.12, %conv68.4.12
  %conv73.4.12 = trunc i32 %xor72.4.12 to i8
  store i8 %conv73.4.12, i8* %arrayidx70.12, align 1
  %scevgep20.5.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 5
  %1998 = load i8, i8* %scevgep20.5.12, align 1
  %conv68.5.12 = zext i8 %1998 to i32
  %1999 = load i8, i8* %arrayidx70.12, align 1
  %conv71.5.12 = zext i8 %1999 to i32
  %xor72.5.12 = xor i32 %conv71.5.12, %conv68.5.12
  %conv73.5.12 = trunc i32 %xor72.5.12 to i8
  store i8 %conv73.5.12, i8* %arrayidx70.12, align 1
  %scevgep20.6.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 6
  %2000 = load i8, i8* %scevgep20.6.12, align 1
  %conv68.6.12 = zext i8 %2000 to i32
  %2001 = load i8, i8* %arrayidx70.12, align 1
  %conv71.6.12 = zext i8 %2001 to i32
  %xor72.6.12 = xor i32 %conv71.6.12, %conv68.6.12
  %conv73.6.12 = trunc i32 %xor72.6.12 to i8
  store i8 %conv73.6.12, i8* %arrayidx70.12, align 1
  %scevgep20.7.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 7
  %2002 = load i8, i8* %scevgep20.7.12, align 1
  %conv68.7.12 = zext i8 %2002 to i32
  %2003 = load i8, i8* %arrayidx70.12, align 1
  %conv71.7.12 = zext i8 %2003 to i32
  %xor72.7.12 = xor i32 %conv71.7.12, %conv68.7.12
  %conv73.7.12 = trunc i32 %xor72.7.12 to i8
  store i8 %conv73.7.12, i8* %arrayidx70.12, align 1
  %scevgep20.8.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 8
  %2004 = load i8, i8* %scevgep20.8.12, align 1
  %conv68.8.12 = zext i8 %2004 to i32
  %2005 = load i8, i8* %arrayidx70.12, align 1
  %conv71.8.12 = zext i8 %2005 to i32
  %xor72.8.12 = xor i32 %conv71.8.12, %conv68.8.12
  %conv73.8.12 = trunc i32 %xor72.8.12 to i8
  store i8 %conv73.8.12, i8* %arrayidx70.12, align 1
  %scevgep20.9.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 9
  %2006 = load i8, i8* %scevgep20.9.12, align 1
  %conv68.9.12 = zext i8 %2006 to i32
  %2007 = load i8, i8* %arrayidx70.12, align 1
  %conv71.9.12 = zext i8 %2007 to i32
  %xor72.9.12 = xor i32 %conv71.9.12, %conv68.9.12
  %conv73.9.12 = trunc i32 %xor72.9.12 to i8
  store i8 %conv73.9.12, i8* %arrayidx70.12, align 1
  %scevgep20.10.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 10
  %2008 = load i8, i8* %scevgep20.10.12, align 1
  %conv68.10.12 = zext i8 %2008 to i32
  %2009 = load i8, i8* %arrayidx70.12, align 1
  %conv71.10.12 = zext i8 %2009 to i32
  %xor72.10.12 = xor i32 %conv71.10.12, %conv68.10.12
  %conv73.10.12 = trunc i32 %xor72.10.12 to i8
  store i8 %conv73.10.12, i8* %arrayidx70.12, align 1
  %scevgep20.11.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 11
  %2010 = load i8, i8* %scevgep20.11.12, align 1
  %conv68.11.12 = zext i8 %2010 to i32
  %2011 = load i8, i8* %arrayidx70.12, align 1
  %conv71.11.12 = zext i8 %2011 to i32
  %xor72.11.12 = xor i32 %conv71.11.12, %conv68.11.12
  %conv73.11.12 = trunc i32 %xor72.11.12 to i8
  store i8 %conv73.11.12, i8* %arrayidx70.12, align 1
  %scevgep20.13.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 13
  %2012 = load i8, i8* %scevgep20.13.12, align 1
  %conv68.13.12 = zext i8 %2012 to i32
  %2013 = load i8, i8* %arrayidx70.12, align 1
  %conv71.13.12 = zext i8 %2013 to i32
  %xor72.13.12 = xor i32 %conv71.13.12, %conv68.13.12
  %conv73.13.12 = trunc i32 %xor72.13.12 to i8
  store i8 %conv73.13.12, i8* %arrayidx70.12, align 1
  %scevgep20.14.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 14
  %2014 = load i8, i8* %scevgep20.14.12, align 1
  %conv68.14.12 = zext i8 %2014 to i32
  %2015 = load i8, i8* %arrayidx70.12, align 1
  %conv71.14.12 = zext i8 %2015 to i32
  %xor72.14.12 = xor i32 %conv71.14.12, %conv68.14.12
  %conv73.14.12 = trunc i32 %xor72.14.12 to i8
  store i8 %conv73.14.12, i8* %arrayidx70.12, align 1
  %scevgep20.15.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 15
  %2016 = load i8, i8* %scevgep20.15.12, align 1
  %conv68.15.12 = zext i8 %2016 to i32
  %2017 = load i8, i8* %arrayidx70.12, align 1
  %conv71.15.12 = zext i8 %2017 to i32
  %xor72.15.12 = xor i32 %conv71.15.12, %conv68.15.12
  %conv73.15.12 = trunc i32 %xor72.15.12 to i8
  store i8 %conv73.15.12, i8* %arrayidx70.12, align 1
  %scevgep20.16.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 16
  %2018 = load i8, i8* %scevgep20.16.12, align 1
  %conv68.16.12 = zext i8 %2018 to i32
  %2019 = load i8, i8* %arrayidx70.12, align 1
  %conv71.16.12 = zext i8 %2019 to i32
  %xor72.16.12 = xor i32 %conv71.16.12, %conv68.16.12
  %conv73.16.12 = trunc i32 %xor72.16.12 to i8
  store i8 %conv73.16.12, i8* %arrayidx70.12, align 1
  %scevgep20.17.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 17
  %2020 = load i8, i8* %scevgep20.17.12, align 1
  %conv68.17.12 = zext i8 %2020 to i32
  %2021 = load i8, i8* %arrayidx70.12, align 1
  %conv71.17.12 = zext i8 %2021 to i32
  %xor72.17.12 = xor i32 %conv71.17.12, %conv68.17.12
  %conv73.17.12 = trunc i32 %xor72.17.12 to i8
  store i8 %conv73.17.12, i8* %arrayidx70.12, align 1
  %scevgep20.18.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 18
  %2022 = load i8, i8* %scevgep20.18.12, align 1
  %conv68.18.12 = zext i8 %2022 to i32
  %2023 = load i8, i8* %arrayidx70.12, align 1
  %conv71.18.12 = zext i8 %2023 to i32
  %xor72.18.12 = xor i32 %conv71.18.12, %conv68.18.12
  %conv73.18.12 = trunc i32 %xor72.18.12 to i8
  store i8 %conv73.18.12, i8* %arrayidx70.12, align 1
  %scevgep20.19.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 19
  %2024 = load i8, i8* %scevgep20.19.12, align 1
  %conv68.19.12 = zext i8 %2024 to i32
  %2025 = load i8, i8* %arrayidx70.12, align 1
  %conv71.19.12 = zext i8 %2025 to i32
  %xor72.19.12 = xor i32 %conv71.19.12, %conv68.19.12
  %conv73.19.12 = trunc i32 %xor72.19.12 to i8
  store i8 %conv73.19.12, i8* %arrayidx70.12, align 1
  %scevgep20.20.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 0, i64 20
  %2026 = load i8, i8* %scevgep20.20.12, align 1
  %conv68.20.12 = zext i8 %2026 to i32
  %2027 = load i8, i8* %arrayidx70.12, align 1
  %conv71.20.12 = zext i8 %2027 to i32
  %xor72.20.12 = xor i32 %conv71.20.12, %conv68.20.12
  %conv73.20.12 = trunc i32 %xor72.20.12 to i8
  store i8 %conv73.20.12, i8* %arrayidx70.12, align 1
  %scevgep19.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1985, i64 0, i64 1, i64 0
  %2028 = bitcast i8* %scevgep19.12 to [21 x [21 x i8]]*
  %arrayidx51.13 = getelementptr inbounds i8, i8* %a, i64 13
  %2029 = load i8, i8* %arrayidx51.13, align 1
  %arrayidx53.13 = getelementptr inbounds i8, i8* %b, i64 13
  %2030 = load i8, i8* %arrayidx53.13, align 1
  %call54.13 = call zeroext i8 @mult(i8 zeroext %2029, i8 zeroext %2030)
  %arrayidx56.13 = getelementptr inbounds i8, i8* %c, i64 13
  store i8 %call54.13, i8* %arrayidx56.13, align 1
  %arrayidx70.13 = getelementptr inbounds i8, i8* %c, i64 13
  %scevgep20.13174 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 0
  %2031 = load i8, i8* %scevgep20.13174, align 1
  %conv68.13175 = zext i8 %2031 to i32
  %2032 = load i8, i8* %arrayidx70.13, align 1
  %conv71.13176 = zext i8 %2032 to i32
  %xor72.13177 = xor i32 %conv71.13176, %conv68.13175
  %conv73.13178 = trunc i32 %xor72.13177 to i8
  store i8 %conv73.13178, i8* %arrayidx70.13, align 1
  %scevgep20.1.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 1
  %2033 = load i8, i8* %scevgep20.1.13, align 1
  %conv68.1.13 = zext i8 %2033 to i32
  %2034 = load i8, i8* %arrayidx70.13, align 1
  %conv71.1.13 = zext i8 %2034 to i32
  %xor72.1.13 = xor i32 %conv71.1.13, %conv68.1.13
  %conv73.1.13 = trunc i32 %xor72.1.13 to i8
  store i8 %conv73.1.13, i8* %arrayidx70.13, align 1
  %scevgep20.2.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 2
  %2035 = load i8, i8* %scevgep20.2.13, align 1
  %conv68.2.13 = zext i8 %2035 to i32
  %2036 = load i8, i8* %arrayidx70.13, align 1
  %conv71.2.13 = zext i8 %2036 to i32
  %xor72.2.13 = xor i32 %conv71.2.13, %conv68.2.13
  %conv73.2.13 = trunc i32 %xor72.2.13 to i8
  store i8 %conv73.2.13, i8* %arrayidx70.13, align 1
  %scevgep20.3.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 3
  %2037 = load i8, i8* %scevgep20.3.13, align 1
  %conv68.3.13 = zext i8 %2037 to i32
  %2038 = load i8, i8* %arrayidx70.13, align 1
  %conv71.3.13 = zext i8 %2038 to i32
  %xor72.3.13 = xor i32 %conv71.3.13, %conv68.3.13
  %conv73.3.13 = trunc i32 %xor72.3.13 to i8
  store i8 %conv73.3.13, i8* %arrayidx70.13, align 1
  %scevgep20.4.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 4
  %2039 = load i8, i8* %scevgep20.4.13, align 1
  %conv68.4.13 = zext i8 %2039 to i32
  %2040 = load i8, i8* %arrayidx70.13, align 1
  %conv71.4.13 = zext i8 %2040 to i32
  %xor72.4.13 = xor i32 %conv71.4.13, %conv68.4.13
  %conv73.4.13 = trunc i32 %xor72.4.13 to i8
  store i8 %conv73.4.13, i8* %arrayidx70.13, align 1
  %scevgep20.5.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 5
  %2041 = load i8, i8* %scevgep20.5.13, align 1
  %conv68.5.13 = zext i8 %2041 to i32
  %2042 = load i8, i8* %arrayidx70.13, align 1
  %conv71.5.13 = zext i8 %2042 to i32
  %xor72.5.13 = xor i32 %conv71.5.13, %conv68.5.13
  %conv73.5.13 = trunc i32 %xor72.5.13 to i8
  store i8 %conv73.5.13, i8* %arrayidx70.13, align 1
  %scevgep20.6.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 6
  %2043 = load i8, i8* %scevgep20.6.13, align 1
  %conv68.6.13 = zext i8 %2043 to i32
  %2044 = load i8, i8* %arrayidx70.13, align 1
  %conv71.6.13 = zext i8 %2044 to i32
  %xor72.6.13 = xor i32 %conv71.6.13, %conv68.6.13
  %conv73.6.13 = trunc i32 %xor72.6.13 to i8
  store i8 %conv73.6.13, i8* %arrayidx70.13, align 1
  %scevgep20.7.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 7
  %2045 = load i8, i8* %scevgep20.7.13, align 1
  %conv68.7.13 = zext i8 %2045 to i32
  %2046 = load i8, i8* %arrayidx70.13, align 1
  %conv71.7.13 = zext i8 %2046 to i32
  %xor72.7.13 = xor i32 %conv71.7.13, %conv68.7.13
  %conv73.7.13 = trunc i32 %xor72.7.13 to i8
  store i8 %conv73.7.13, i8* %arrayidx70.13, align 1
  %scevgep20.8.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 8
  %2047 = load i8, i8* %scevgep20.8.13, align 1
  %conv68.8.13 = zext i8 %2047 to i32
  %2048 = load i8, i8* %arrayidx70.13, align 1
  %conv71.8.13 = zext i8 %2048 to i32
  %xor72.8.13 = xor i32 %conv71.8.13, %conv68.8.13
  %conv73.8.13 = trunc i32 %xor72.8.13 to i8
  store i8 %conv73.8.13, i8* %arrayidx70.13, align 1
  %scevgep20.9.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 9
  %2049 = load i8, i8* %scevgep20.9.13, align 1
  %conv68.9.13 = zext i8 %2049 to i32
  %2050 = load i8, i8* %arrayidx70.13, align 1
  %conv71.9.13 = zext i8 %2050 to i32
  %xor72.9.13 = xor i32 %conv71.9.13, %conv68.9.13
  %conv73.9.13 = trunc i32 %xor72.9.13 to i8
  store i8 %conv73.9.13, i8* %arrayidx70.13, align 1
  %scevgep20.10.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 10
  %2051 = load i8, i8* %scevgep20.10.13, align 1
  %conv68.10.13 = zext i8 %2051 to i32
  %2052 = load i8, i8* %arrayidx70.13, align 1
  %conv71.10.13 = zext i8 %2052 to i32
  %xor72.10.13 = xor i32 %conv71.10.13, %conv68.10.13
  %conv73.10.13 = trunc i32 %xor72.10.13 to i8
  store i8 %conv73.10.13, i8* %arrayidx70.13, align 1
  %scevgep20.11.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 11
  %2053 = load i8, i8* %scevgep20.11.13, align 1
  %conv68.11.13 = zext i8 %2053 to i32
  %2054 = load i8, i8* %arrayidx70.13, align 1
  %conv71.11.13 = zext i8 %2054 to i32
  %xor72.11.13 = xor i32 %conv71.11.13, %conv68.11.13
  %conv73.11.13 = trunc i32 %xor72.11.13 to i8
  store i8 %conv73.11.13, i8* %arrayidx70.13, align 1
  %scevgep20.12.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 12
  %2055 = load i8, i8* %scevgep20.12.13, align 1
  %conv68.12.13 = zext i8 %2055 to i32
  %2056 = load i8, i8* %arrayidx70.13, align 1
  %conv71.12.13 = zext i8 %2056 to i32
  %xor72.12.13 = xor i32 %conv71.12.13, %conv68.12.13
  %conv73.12.13 = trunc i32 %xor72.12.13 to i8
  store i8 %conv73.12.13, i8* %arrayidx70.13, align 1
  %scevgep20.14.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 14
  %2057 = load i8, i8* %scevgep20.14.13, align 1
  %conv68.14.13 = zext i8 %2057 to i32
  %2058 = load i8, i8* %arrayidx70.13, align 1
  %conv71.14.13 = zext i8 %2058 to i32
  %xor72.14.13 = xor i32 %conv71.14.13, %conv68.14.13
  %conv73.14.13 = trunc i32 %xor72.14.13 to i8
  store i8 %conv73.14.13, i8* %arrayidx70.13, align 1
  %scevgep20.15.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 15
  %2059 = load i8, i8* %scevgep20.15.13, align 1
  %conv68.15.13 = zext i8 %2059 to i32
  %2060 = load i8, i8* %arrayidx70.13, align 1
  %conv71.15.13 = zext i8 %2060 to i32
  %xor72.15.13 = xor i32 %conv71.15.13, %conv68.15.13
  %conv73.15.13 = trunc i32 %xor72.15.13 to i8
  store i8 %conv73.15.13, i8* %arrayidx70.13, align 1
  %scevgep20.16.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 16
  %2061 = load i8, i8* %scevgep20.16.13, align 1
  %conv68.16.13 = zext i8 %2061 to i32
  %2062 = load i8, i8* %arrayidx70.13, align 1
  %conv71.16.13 = zext i8 %2062 to i32
  %xor72.16.13 = xor i32 %conv71.16.13, %conv68.16.13
  %conv73.16.13 = trunc i32 %xor72.16.13 to i8
  store i8 %conv73.16.13, i8* %arrayidx70.13, align 1
  %scevgep20.17.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 17
  %2063 = load i8, i8* %scevgep20.17.13, align 1
  %conv68.17.13 = zext i8 %2063 to i32
  %2064 = load i8, i8* %arrayidx70.13, align 1
  %conv71.17.13 = zext i8 %2064 to i32
  %xor72.17.13 = xor i32 %conv71.17.13, %conv68.17.13
  %conv73.17.13 = trunc i32 %xor72.17.13 to i8
  store i8 %conv73.17.13, i8* %arrayidx70.13, align 1
  %scevgep20.18.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 18
  %2065 = load i8, i8* %scevgep20.18.13, align 1
  %conv68.18.13 = zext i8 %2065 to i32
  %2066 = load i8, i8* %arrayidx70.13, align 1
  %conv71.18.13 = zext i8 %2066 to i32
  %xor72.18.13 = xor i32 %conv71.18.13, %conv68.18.13
  %conv73.18.13 = trunc i32 %xor72.18.13 to i8
  store i8 %conv73.18.13, i8* %arrayidx70.13, align 1
  %scevgep20.19.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 19
  %2067 = load i8, i8* %scevgep20.19.13, align 1
  %conv68.19.13 = zext i8 %2067 to i32
  %2068 = load i8, i8* %arrayidx70.13, align 1
  %conv71.19.13 = zext i8 %2068 to i32
  %xor72.19.13 = xor i32 %conv71.19.13, %conv68.19.13
  %conv73.19.13 = trunc i32 %xor72.19.13 to i8
  store i8 %conv73.19.13, i8* %arrayidx70.13, align 1
  %scevgep20.20.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 0, i64 20
  %2069 = load i8, i8* %scevgep20.20.13, align 1
  %conv68.20.13 = zext i8 %2069 to i32
  %2070 = load i8, i8* %arrayidx70.13, align 1
  %conv71.20.13 = zext i8 %2070 to i32
  %xor72.20.13 = xor i32 %conv71.20.13, %conv68.20.13
  %conv73.20.13 = trunc i32 %xor72.20.13 to i8
  store i8 %conv73.20.13, i8* %arrayidx70.13, align 1
  %scevgep19.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2028, i64 0, i64 1, i64 0
  %2071 = bitcast i8* %scevgep19.13 to [21 x [21 x i8]]*
  %arrayidx51.14 = getelementptr inbounds i8, i8* %a, i64 14
  %2072 = load i8, i8* %arrayidx51.14, align 1
  %arrayidx53.14 = getelementptr inbounds i8, i8* %b, i64 14
  %2073 = load i8, i8* %arrayidx53.14, align 1
  %call54.14 = call zeroext i8 @mult(i8 zeroext %2072, i8 zeroext %2073)
  %arrayidx56.14 = getelementptr inbounds i8, i8* %c, i64 14
  store i8 %call54.14, i8* %arrayidx56.14, align 1
  %arrayidx70.14 = getelementptr inbounds i8, i8* %c, i64 14
  %scevgep20.14184 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 0
  %2074 = load i8, i8* %scevgep20.14184, align 1
  %conv68.14185 = zext i8 %2074 to i32
  %2075 = load i8, i8* %arrayidx70.14, align 1
  %conv71.14186 = zext i8 %2075 to i32
  %xor72.14187 = xor i32 %conv71.14186, %conv68.14185
  %conv73.14188 = trunc i32 %xor72.14187 to i8
  store i8 %conv73.14188, i8* %arrayidx70.14, align 1
  %scevgep20.1.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 1
  %2076 = load i8, i8* %scevgep20.1.14, align 1
  %conv68.1.14 = zext i8 %2076 to i32
  %2077 = load i8, i8* %arrayidx70.14, align 1
  %conv71.1.14 = zext i8 %2077 to i32
  %xor72.1.14 = xor i32 %conv71.1.14, %conv68.1.14
  %conv73.1.14 = trunc i32 %xor72.1.14 to i8
  store i8 %conv73.1.14, i8* %arrayidx70.14, align 1
  %scevgep20.2.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 2
  %2078 = load i8, i8* %scevgep20.2.14, align 1
  %conv68.2.14 = zext i8 %2078 to i32
  %2079 = load i8, i8* %arrayidx70.14, align 1
  %conv71.2.14 = zext i8 %2079 to i32
  %xor72.2.14 = xor i32 %conv71.2.14, %conv68.2.14
  %conv73.2.14 = trunc i32 %xor72.2.14 to i8
  store i8 %conv73.2.14, i8* %arrayidx70.14, align 1
  %scevgep20.3.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 3
  %2080 = load i8, i8* %scevgep20.3.14, align 1
  %conv68.3.14 = zext i8 %2080 to i32
  %2081 = load i8, i8* %arrayidx70.14, align 1
  %conv71.3.14 = zext i8 %2081 to i32
  %xor72.3.14 = xor i32 %conv71.3.14, %conv68.3.14
  %conv73.3.14 = trunc i32 %xor72.3.14 to i8
  store i8 %conv73.3.14, i8* %arrayidx70.14, align 1
  %scevgep20.4.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 4
  %2082 = load i8, i8* %scevgep20.4.14, align 1
  %conv68.4.14 = zext i8 %2082 to i32
  %2083 = load i8, i8* %arrayidx70.14, align 1
  %conv71.4.14 = zext i8 %2083 to i32
  %xor72.4.14 = xor i32 %conv71.4.14, %conv68.4.14
  %conv73.4.14 = trunc i32 %xor72.4.14 to i8
  store i8 %conv73.4.14, i8* %arrayidx70.14, align 1
  %scevgep20.5.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 5
  %2084 = load i8, i8* %scevgep20.5.14, align 1
  %conv68.5.14 = zext i8 %2084 to i32
  %2085 = load i8, i8* %arrayidx70.14, align 1
  %conv71.5.14 = zext i8 %2085 to i32
  %xor72.5.14 = xor i32 %conv71.5.14, %conv68.5.14
  %conv73.5.14 = trunc i32 %xor72.5.14 to i8
  store i8 %conv73.5.14, i8* %arrayidx70.14, align 1
  %scevgep20.6.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 6
  %2086 = load i8, i8* %scevgep20.6.14, align 1
  %conv68.6.14 = zext i8 %2086 to i32
  %2087 = load i8, i8* %arrayidx70.14, align 1
  %conv71.6.14 = zext i8 %2087 to i32
  %xor72.6.14 = xor i32 %conv71.6.14, %conv68.6.14
  %conv73.6.14 = trunc i32 %xor72.6.14 to i8
  store i8 %conv73.6.14, i8* %arrayidx70.14, align 1
  %scevgep20.7.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 7
  %2088 = load i8, i8* %scevgep20.7.14, align 1
  %conv68.7.14 = zext i8 %2088 to i32
  %2089 = load i8, i8* %arrayidx70.14, align 1
  %conv71.7.14 = zext i8 %2089 to i32
  %xor72.7.14 = xor i32 %conv71.7.14, %conv68.7.14
  %conv73.7.14 = trunc i32 %xor72.7.14 to i8
  store i8 %conv73.7.14, i8* %arrayidx70.14, align 1
  %scevgep20.8.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 8
  %2090 = load i8, i8* %scevgep20.8.14, align 1
  %conv68.8.14 = zext i8 %2090 to i32
  %2091 = load i8, i8* %arrayidx70.14, align 1
  %conv71.8.14 = zext i8 %2091 to i32
  %xor72.8.14 = xor i32 %conv71.8.14, %conv68.8.14
  %conv73.8.14 = trunc i32 %xor72.8.14 to i8
  store i8 %conv73.8.14, i8* %arrayidx70.14, align 1
  %scevgep20.9.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 9
  %2092 = load i8, i8* %scevgep20.9.14, align 1
  %conv68.9.14 = zext i8 %2092 to i32
  %2093 = load i8, i8* %arrayidx70.14, align 1
  %conv71.9.14 = zext i8 %2093 to i32
  %xor72.9.14 = xor i32 %conv71.9.14, %conv68.9.14
  %conv73.9.14 = trunc i32 %xor72.9.14 to i8
  store i8 %conv73.9.14, i8* %arrayidx70.14, align 1
  %scevgep20.10.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 10
  %2094 = load i8, i8* %scevgep20.10.14, align 1
  %conv68.10.14 = zext i8 %2094 to i32
  %2095 = load i8, i8* %arrayidx70.14, align 1
  %conv71.10.14 = zext i8 %2095 to i32
  %xor72.10.14 = xor i32 %conv71.10.14, %conv68.10.14
  %conv73.10.14 = trunc i32 %xor72.10.14 to i8
  store i8 %conv73.10.14, i8* %arrayidx70.14, align 1
  %scevgep20.11.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 11
  %2096 = load i8, i8* %scevgep20.11.14, align 1
  %conv68.11.14 = zext i8 %2096 to i32
  %2097 = load i8, i8* %arrayidx70.14, align 1
  %conv71.11.14 = zext i8 %2097 to i32
  %xor72.11.14 = xor i32 %conv71.11.14, %conv68.11.14
  %conv73.11.14 = trunc i32 %xor72.11.14 to i8
  store i8 %conv73.11.14, i8* %arrayidx70.14, align 1
  %scevgep20.12.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 12
  %2098 = load i8, i8* %scevgep20.12.14, align 1
  %conv68.12.14 = zext i8 %2098 to i32
  %2099 = load i8, i8* %arrayidx70.14, align 1
  %conv71.12.14 = zext i8 %2099 to i32
  %xor72.12.14 = xor i32 %conv71.12.14, %conv68.12.14
  %conv73.12.14 = trunc i32 %xor72.12.14 to i8
  store i8 %conv73.12.14, i8* %arrayidx70.14, align 1
  %scevgep20.13.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 13
  %2100 = load i8, i8* %scevgep20.13.14, align 1
  %conv68.13.14 = zext i8 %2100 to i32
  %2101 = load i8, i8* %arrayidx70.14, align 1
  %conv71.13.14 = zext i8 %2101 to i32
  %xor72.13.14 = xor i32 %conv71.13.14, %conv68.13.14
  %conv73.13.14 = trunc i32 %xor72.13.14 to i8
  store i8 %conv73.13.14, i8* %arrayidx70.14, align 1
  %scevgep20.15.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 15
  %2102 = load i8, i8* %scevgep20.15.14, align 1
  %conv68.15.14 = zext i8 %2102 to i32
  %2103 = load i8, i8* %arrayidx70.14, align 1
  %conv71.15.14 = zext i8 %2103 to i32
  %xor72.15.14 = xor i32 %conv71.15.14, %conv68.15.14
  %conv73.15.14 = trunc i32 %xor72.15.14 to i8
  store i8 %conv73.15.14, i8* %arrayidx70.14, align 1
  %scevgep20.16.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 16
  %2104 = load i8, i8* %scevgep20.16.14, align 1
  %conv68.16.14 = zext i8 %2104 to i32
  %2105 = load i8, i8* %arrayidx70.14, align 1
  %conv71.16.14 = zext i8 %2105 to i32
  %xor72.16.14 = xor i32 %conv71.16.14, %conv68.16.14
  %conv73.16.14 = trunc i32 %xor72.16.14 to i8
  store i8 %conv73.16.14, i8* %arrayidx70.14, align 1
  %scevgep20.17.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 17
  %2106 = load i8, i8* %scevgep20.17.14, align 1
  %conv68.17.14 = zext i8 %2106 to i32
  %2107 = load i8, i8* %arrayidx70.14, align 1
  %conv71.17.14 = zext i8 %2107 to i32
  %xor72.17.14 = xor i32 %conv71.17.14, %conv68.17.14
  %conv73.17.14 = trunc i32 %xor72.17.14 to i8
  store i8 %conv73.17.14, i8* %arrayidx70.14, align 1
  %scevgep20.18.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 18
  %2108 = load i8, i8* %scevgep20.18.14, align 1
  %conv68.18.14 = zext i8 %2108 to i32
  %2109 = load i8, i8* %arrayidx70.14, align 1
  %conv71.18.14 = zext i8 %2109 to i32
  %xor72.18.14 = xor i32 %conv71.18.14, %conv68.18.14
  %conv73.18.14 = trunc i32 %xor72.18.14 to i8
  store i8 %conv73.18.14, i8* %arrayidx70.14, align 1
  %scevgep20.19.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 19
  %2110 = load i8, i8* %scevgep20.19.14, align 1
  %conv68.19.14 = zext i8 %2110 to i32
  %2111 = load i8, i8* %arrayidx70.14, align 1
  %conv71.19.14 = zext i8 %2111 to i32
  %xor72.19.14 = xor i32 %conv71.19.14, %conv68.19.14
  %conv73.19.14 = trunc i32 %xor72.19.14 to i8
  store i8 %conv73.19.14, i8* %arrayidx70.14, align 1
  %scevgep20.20.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 0, i64 20
  %2112 = load i8, i8* %scevgep20.20.14, align 1
  %conv68.20.14 = zext i8 %2112 to i32
  %2113 = load i8, i8* %arrayidx70.14, align 1
  %conv71.20.14 = zext i8 %2113 to i32
  %xor72.20.14 = xor i32 %conv71.20.14, %conv68.20.14
  %conv73.20.14 = trunc i32 %xor72.20.14 to i8
  store i8 %conv73.20.14, i8* %arrayidx70.14, align 1
  %scevgep19.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2071, i64 0, i64 1, i64 0
  %2114 = bitcast i8* %scevgep19.14 to [21 x [21 x i8]]*
  %arrayidx51.15 = getelementptr inbounds i8, i8* %a, i64 15
  %2115 = load i8, i8* %arrayidx51.15, align 1
  %arrayidx53.15 = getelementptr inbounds i8, i8* %b, i64 15
  %2116 = load i8, i8* %arrayidx53.15, align 1
  %call54.15 = call zeroext i8 @mult(i8 zeroext %2115, i8 zeroext %2116)
  %arrayidx56.15 = getelementptr inbounds i8, i8* %c, i64 15
  store i8 %call54.15, i8* %arrayidx56.15, align 1
  %arrayidx70.15 = getelementptr inbounds i8, i8* %c, i64 15
  %scevgep20.15194 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 0
  %2117 = load i8, i8* %scevgep20.15194, align 1
  %conv68.15195 = zext i8 %2117 to i32
  %2118 = load i8, i8* %arrayidx70.15, align 1
  %conv71.15196 = zext i8 %2118 to i32
  %xor72.15197 = xor i32 %conv71.15196, %conv68.15195
  %conv73.15198 = trunc i32 %xor72.15197 to i8
  store i8 %conv73.15198, i8* %arrayidx70.15, align 1
  %scevgep20.1.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 1
  %2119 = load i8, i8* %scevgep20.1.15, align 1
  %conv68.1.15 = zext i8 %2119 to i32
  %2120 = load i8, i8* %arrayidx70.15, align 1
  %conv71.1.15 = zext i8 %2120 to i32
  %xor72.1.15 = xor i32 %conv71.1.15, %conv68.1.15
  %conv73.1.15 = trunc i32 %xor72.1.15 to i8
  store i8 %conv73.1.15, i8* %arrayidx70.15, align 1
  %scevgep20.2.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 2
  %2121 = load i8, i8* %scevgep20.2.15, align 1
  %conv68.2.15 = zext i8 %2121 to i32
  %2122 = load i8, i8* %arrayidx70.15, align 1
  %conv71.2.15 = zext i8 %2122 to i32
  %xor72.2.15 = xor i32 %conv71.2.15, %conv68.2.15
  %conv73.2.15 = trunc i32 %xor72.2.15 to i8
  store i8 %conv73.2.15, i8* %arrayidx70.15, align 1
  %scevgep20.3.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 3
  %2123 = load i8, i8* %scevgep20.3.15, align 1
  %conv68.3.15 = zext i8 %2123 to i32
  %2124 = load i8, i8* %arrayidx70.15, align 1
  %conv71.3.15 = zext i8 %2124 to i32
  %xor72.3.15 = xor i32 %conv71.3.15, %conv68.3.15
  %conv73.3.15 = trunc i32 %xor72.3.15 to i8
  store i8 %conv73.3.15, i8* %arrayidx70.15, align 1
  %scevgep20.4.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 4
  %2125 = load i8, i8* %scevgep20.4.15, align 1
  %conv68.4.15 = zext i8 %2125 to i32
  %2126 = load i8, i8* %arrayidx70.15, align 1
  %conv71.4.15 = zext i8 %2126 to i32
  %xor72.4.15 = xor i32 %conv71.4.15, %conv68.4.15
  %conv73.4.15 = trunc i32 %xor72.4.15 to i8
  store i8 %conv73.4.15, i8* %arrayidx70.15, align 1
  %scevgep20.5.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 5
  %2127 = load i8, i8* %scevgep20.5.15, align 1
  %conv68.5.15 = zext i8 %2127 to i32
  %2128 = load i8, i8* %arrayidx70.15, align 1
  %conv71.5.15 = zext i8 %2128 to i32
  %xor72.5.15 = xor i32 %conv71.5.15, %conv68.5.15
  %conv73.5.15 = trunc i32 %xor72.5.15 to i8
  store i8 %conv73.5.15, i8* %arrayidx70.15, align 1
  %scevgep20.6.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 6
  %2129 = load i8, i8* %scevgep20.6.15, align 1
  %conv68.6.15 = zext i8 %2129 to i32
  %2130 = load i8, i8* %arrayidx70.15, align 1
  %conv71.6.15 = zext i8 %2130 to i32
  %xor72.6.15 = xor i32 %conv71.6.15, %conv68.6.15
  %conv73.6.15 = trunc i32 %xor72.6.15 to i8
  store i8 %conv73.6.15, i8* %arrayidx70.15, align 1
  %scevgep20.7.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 7
  %2131 = load i8, i8* %scevgep20.7.15, align 1
  %conv68.7.15 = zext i8 %2131 to i32
  %2132 = load i8, i8* %arrayidx70.15, align 1
  %conv71.7.15 = zext i8 %2132 to i32
  %xor72.7.15 = xor i32 %conv71.7.15, %conv68.7.15
  %conv73.7.15 = trunc i32 %xor72.7.15 to i8
  store i8 %conv73.7.15, i8* %arrayidx70.15, align 1
  %scevgep20.8.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 8
  %2133 = load i8, i8* %scevgep20.8.15, align 1
  %conv68.8.15 = zext i8 %2133 to i32
  %2134 = load i8, i8* %arrayidx70.15, align 1
  %conv71.8.15 = zext i8 %2134 to i32
  %xor72.8.15 = xor i32 %conv71.8.15, %conv68.8.15
  %conv73.8.15 = trunc i32 %xor72.8.15 to i8
  store i8 %conv73.8.15, i8* %arrayidx70.15, align 1
  %scevgep20.9.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 9
  %2135 = load i8, i8* %scevgep20.9.15, align 1
  %conv68.9.15 = zext i8 %2135 to i32
  %2136 = load i8, i8* %arrayidx70.15, align 1
  %conv71.9.15 = zext i8 %2136 to i32
  %xor72.9.15 = xor i32 %conv71.9.15, %conv68.9.15
  %conv73.9.15 = trunc i32 %xor72.9.15 to i8
  store i8 %conv73.9.15, i8* %arrayidx70.15, align 1
  %scevgep20.10.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 10
  %2137 = load i8, i8* %scevgep20.10.15, align 1
  %conv68.10.15 = zext i8 %2137 to i32
  %2138 = load i8, i8* %arrayidx70.15, align 1
  %conv71.10.15 = zext i8 %2138 to i32
  %xor72.10.15 = xor i32 %conv71.10.15, %conv68.10.15
  %conv73.10.15 = trunc i32 %xor72.10.15 to i8
  store i8 %conv73.10.15, i8* %arrayidx70.15, align 1
  %scevgep20.11.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 11
  %2139 = load i8, i8* %scevgep20.11.15, align 1
  %conv68.11.15 = zext i8 %2139 to i32
  %2140 = load i8, i8* %arrayidx70.15, align 1
  %conv71.11.15 = zext i8 %2140 to i32
  %xor72.11.15 = xor i32 %conv71.11.15, %conv68.11.15
  %conv73.11.15 = trunc i32 %xor72.11.15 to i8
  store i8 %conv73.11.15, i8* %arrayidx70.15, align 1
  %scevgep20.12.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 12
  %2141 = load i8, i8* %scevgep20.12.15, align 1
  %conv68.12.15 = zext i8 %2141 to i32
  %2142 = load i8, i8* %arrayidx70.15, align 1
  %conv71.12.15 = zext i8 %2142 to i32
  %xor72.12.15 = xor i32 %conv71.12.15, %conv68.12.15
  %conv73.12.15 = trunc i32 %xor72.12.15 to i8
  store i8 %conv73.12.15, i8* %arrayidx70.15, align 1
  %scevgep20.13.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 13
  %2143 = load i8, i8* %scevgep20.13.15, align 1
  %conv68.13.15 = zext i8 %2143 to i32
  %2144 = load i8, i8* %arrayidx70.15, align 1
  %conv71.13.15 = zext i8 %2144 to i32
  %xor72.13.15 = xor i32 %conv71.13.15, %conv68.13.15
  %conv73.13.15 = trunc i32 %xor72.13.15 to i8
  store i8 %conv73.13.15, i8* %arrayidx70.15, align 1
  %scevgep20.14.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 14
  %2145 = load i8, i8* %scevgep20.14.15, align 1
  %conv68.14.15 = zext i8 %2145 to i32
  %2146 = load i8, i8* %arrayidx70.15, align 1
  %conv71.14.15 = zext i8 %2146 to i32
  %xor72.14.15 = xor i32 %conv71.14.15, %conv68.14.15
  %conv73.14.15 = trunc i32 %xor72.14.15 to i8
  store i8 %conv73.14.15, i8* %arrayidx70.15, align 1
  %scevgep20.16.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 16
  %2147 = load i8, i8* %scevgep20.16.15, align 1
  %conv68.16.15 = zext i8 %2147 to i32
  %2148 = load i8, i8* %arrayidx70.15, align 1
  %conv71.16.15 = zext i8 %2148 to i32
  %xor72.16.15 = xor i32 %conv71.16.15, %conv68.16.15
  %conv73.16.15 = trunc i32 %xor72.16.15 to i8
  store i8 %conv73.16.15, i8* %arrayidx70.15, align 1
  %scevgep20.17.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 17
  %2149 = load i8, i8* %scevgep20.17.15, align 1
  %conv68.17.15 = zext i8 %2149 to i32
  %2150 = load i8, i8* %arrayidx70.15, align 1
  %conv71.17.15 = zext i8 %2150 to i32
  %xor72.17.15 = xor i32 %conv71.17.15, %conv68.17.15
  %conv73.17.15 = trunc i32 %xor72.17.15 to i8
  store i8 %conv73.17.15, i8* %arrayidx70.15, align 1
  %scevgep20.18.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 18
  %2151 = load i8, i8* %scevgep20.18.15, align 1
  %conv68.18.15 = zext i8 %2151 to i32
  %2152 = load i8, i8* %arrayidx70.15, align 1
  %conv71.18.15 = zext i8 %2152 to i32
  %xor72.18.15 = xor i32 %conv71.18.15, %conv68.18.15
  %conv73.18.15 = trunc i32 %xor72.18.15 to i8
  store i8 %conv73.18.15, i8* %arrayidx70.15, align 1
  %scevgep20.19.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 19
  %2153 = load i8, i8* %scevgep20.19.15, align 1
  %conv68.19.15 = zext i8 %2153 to i32
  %2154 = load i8, i8* %arrayidx70.15, align 1
  %conv71.19.15 = zext i8 %2154 to i32
  %xor72.19.15 = xor i32 %conv71.19.15, %conv68.19.15
  %conv73.19.15 = trunc i32 %xor72.19.15 to i8
  store i8 %conv73.19.15, i8* %arrayidx70.15, align 1
  %scevgep20.20.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 0, i64 20
  %2155 = load i8, i8* %scevgep20.20.15, align 1
  %conv68.20.15 = zext i8 %2155 to i32
  %2156 = load i8, i8* %arrayidx70.15, align 1
  %conv71.20.15 = zext i8 %2156 to i32
  %xor72.20.15 = xor i32 %conv71.20.15, %conv68.20.15
  %conv73.20.15 = trunc i32 %xor72.20.15 to i8
  store i8 %conv73.20.15, i8* %arrayidx70.15, align 1
  %scevgep19.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2114, i64 0, i64 1, i64 0
  %2157 = bitcast i8* %scevgep19.15 to [21 x [21 x i8]]*
  %arrayidx51.16 = getelementptr inbounds i8, i8* %a, i64 16
  %2158 = load i8, i8* %arrayidx51.16, align 1
  %arrayidx53.16 = getelementptr inbounds i8, i8* %b, i64 16
  %2159 = load i8, i8* %arrayidx53.16, align 1
  %call54.16 = call zeroext i8 @mult(i8 zeroext %2158, i8 zeroext %2159)
  %arrayidx56.16 = getelementptr inbounds i8, i8* %c, i64 16
  store i8 %call54.16, i8* %arrayidx56.16, align 1
  %arrayidx70.16 = getelementptr inbounds i8, i8* %c, i64 16
  %scevgep20.16204 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 0
  %2160 = load i8, i8* %scevgep20.16204, align 1
  %conv68.16205 = zext i8 %2160 to i32
  %2161 = load i8, i8* %arrayidx70.16, align 1
  %conv71.16206 = zext i8 %2161 to i32
  %xor72.16207 = xor i32 %conv71.16206, %conv68.16205
  %conv73.16208 = trunc i32 %xor72.16207 to i8
  store i8 %conv73.16208, i8* %arrayidx70.16, align 1
  %scevgep20.1.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 1
  %2162 = load i8, i8* %scevgep20.1.16, align 1
  %conv68.1.16 = zext i8 %2162 to i32
  %2163 = load i8, i8* %arrayidx70.16, align 1
  %conv71.1.16 = zext i8 %2163 to i32
  %xor72.1.16 = xor i32 %conv71.1.16, %conv68.1.16
  %conv73.1.16 = trunc i32 %xor72.1.16 to i8
  store i8 %conv73.1.16, i8* %arrayidx70.16, align 1
  %scevgep20.2.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 2
  %2164 = load i8, i8* %scevgep20.2.16, align 1
  %conv68.2.16 = zext i8 %2164 to i32
  %2165 = load i8, i8* %arrayidx70.16, align 1
  %conv71.2.16 = zext i8 %2165 to i32
  %xor72.2.16 = xor i32 %conv71.2.16, %conv68.2.16
  %conv73.2.16 = trunc i32 %xor72.2.16 to i8
  store i8 %conv73.2.16, i8* %arrayidx70.16, align 1
  %scevgep20.3.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 3
  %2166 = load i8, i8* %scevgep20.3.16, align 1
  %conv68.3.16 = zext i8 %2166 to i32
  %2167 = load i8, i8* %arrayidx70.16, align 1
  %conv71.3.16 = zext i8 %2167 to i32
  %xor72.3.16 = xor i32 %conv71.3.16, %conv68.3.16
  %conv73.3.16 = trunc i32 %xor72.3.16 to i8
  store i8 %conv73.3.16, i8* %arrayidx70.16, align 1
  %scevgep20.4.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 4
  %2168 = load i8, i8* %scevgep20.4.16, align 1
  %conv68.4.16 = zext i8 %2168 to i32
  %2169 = load i8, i8* %arrayidx70.16, align 1
  %conv71.4.16 = zext i8 %2169 to i32
  %xor72.4.16 = xor i32 %conv71.4.16, %conv68.4.16
  %conv73.4.16 = trunc i32 %xor72.4.16 to i8
  store i8 %conv73.4.16, i8* %arrayidx70.16, align 1
  %scevgep20.5.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 5
  %2170 = load i8, i8* %scevgep20.5.16, align 1
  %conv68.5.16 = zext i8 %2170 to i32
  %2171 = load i8, i8* %arrayidx70.16, align 1
  %conv71.5.16 = zext i8 %2171 to i32
  %xor72.5.16 = xor i32 %conv71.5.16, %conv68.5.16
  %conv73.5.16 = trunc i32 %xor72.5.16 to i8
  store i8 %conv73.5.16, i8* %arrayidx70.16, align 1
  %scevgep20.6.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 6
  %2172 = load i8, i8* %scevgep20.6.16, align 1
  %conv68.6.16 = zext i8 %2172 to i32
  %2173 = load i8, i8* %arrayidx70.16, align 1
  %conv71.6.16 = zext i8 %2173 to i32
  %xor72.6.16 = xor i32 %conv71.6.16, %conv68.6.16
  %conv73.6.16 = trunc i32 %xor72.6.16 to i8
  store i8 %conv73.6.16, i8* %arrayidx70.16, align 1
  %scevgep20.7.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 7
  %2174 = load i8, i8* %scevgep20.7.16, align 1
  %conv68.7.16 = zext i8 %2174 to i32
  %2175 = load i8, i8* %arrayidx70.16, align 1
  %conv71.7.16 = zext i8 %2175 to i32
  %xor72.7.16 = xor i32 %conv71.7.16, %conv68.7.16
  %conv73.7.16 = trunc i32 %xor72.7.16 to i8
  store i8 %conv73.7.16, i8* %arrayidx70.16, align 1
  %scevgep20.8.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 8
  %2176 = load i8, i8* %scevgep20.8.16, align 1
  %conv68.8.16 = zext i8 %2176 to i32
  %2177 = load i8, i8* %arrayidx70.16, align 1
  %conv71.8.16 = zext i8 %2177 to i32
  %xor72.8.16 = xor i32 %conv71.8.16, %conv68.8.16
  %conv73.8.16 = trunc i32 %xor72.8.16 to i8
  store i8 %conv73.8.16, i8* %arrayidx70.16, align 1
  %scevgep20.9.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 9
  %2178 = load i8, i8* %scevgep20.9.16, align 1
  %conv68.9.16 = zext i8 %2178 to i32
  %2179 = load i8, i8* %arrayidx70.16, align 1
  %conv71.9.16 = zext i8 %2179 to i32
  %xor72.9.16 = xor i32 %conv71.9.16, %conv68.9.16
  %conv73.9.16 = trunc i32 %xor72.9.16 to i8
  store i8 %conv73.9.16, i8* %arrayidx70.16, align 1
  %scevgep20.10.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 10
  %2180 = load i8, i8* %scevgep20.10.16, align 1
  %conv68.10.16 = zext i8 %2180 to i32
  %2181 = load i8, i8* %arrayidx70.16, align 1
  %conv71.10.16 = zext i8 %2181 to i32
  %xor72.10.16 = xor i32 %conv71.10.16, %conv68.10.16
  %conv73.10.16 = trunc i32 %xor72.10.16 to i8
  store i8 %conv73.10.16, i8* %arrayidx70.16, align 1
  %scevgep20.11.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 11
  %2182 = load i8, i8* %scevgep20.11.16, align 1
  %conv68.11.16 = zext i8 %2182 to i32
  %2183 = load i8, i8* %arrayidx70.16, align 1
  %conv71.11.16 = zext i8 %2183 to i32
  %xor72.11.16 = xor i32 %conv71.11.16, %conv68.11.16
  %conv73.11.16 = trunc i32 %xor72.11.16 to i8
  store i8 %conv73.11.16, i8* %arrayidx70.16, align 1
  %scevgep20.12.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 12
  %2184 = load i8, i8* %scevgep20.12.16, align 1
  %conv68.12.16 = zext i8 %2184 to i32
  %2185 = load i8, i8* %arrayidx70.16, align 1
  %conv71.12.16 = zext i8 %2185 to i32
  %xor72.12.16 = xor i32 %conv71.12.16, %conv68.12.16
  %conv73.12.16 = trunc i32 %xor72.12.16 to i8
  store i8 %conv73.12.16, i8* %arrayidx70.16, align 1
  %scevgep20.13.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 13
  %2186 = load i8, i8* %scevgep20.13.16, align 1
  %conv68.13.16 = zext i8 %2186 to i32
  %2187 = load i8, i8* %arrayidx70.16, align 1
  %conv71.13.16 = zext i8 %2187 to i32
  %xor72.13.16 = xor i32 %conv71.13.16, %conv68.13.16
  %conv73.13.16 = trunc i32 %xor72.13.16 to i8
  store i8 %conv73.13.16, i8* %arrayidx70.16, align 1
  %scevgep20.14.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 14
  %2188 = load i8, i8* %scevgep20.14.16, align 1
  %conv68.14.16 = zext i8 %2188 to i32
  %2189 = load i8, i8* %arrayidx70.16, align 1
  %conv71.14.16 = zext i8 %2189 to i32
  %xor72.14.16 = xor i32 %conv71.14.16, %conv68.14.16
  %conv73.14.16 = trunc i32 %xor72.14.16 to i8
  store i8 %conv73.14.16, i8* %arrayidx70.16, align 1
  %scevgep20.15.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 15
  %2190 = load i8, i8* %scevgep20.15.16, align 1
  %conv68.15.16 = zext i8 %2190 to i32
  %2191 = load i8, i8* %arrayidx70.16, align 1
  %conv71.15.16 = zext i8 %2191 to i32
  %xor72.15.16 = xor i32 %conv71.15.16, %conv68.15.16
  %conv73.15.16 = trunc i32 %xor72.15.16 to i8
  store i8 %conv73.15.16, i8* %arrayidx70.16, align 1
  %scevgep20.17.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 17
  %2192 = load i8, i8* %scevgep20.17.16, align 1
  %conv68.17.16 = zext i8 %2192 to i32
  %2193 = load i8, i8* %arrayidx70.16, align 1
  %conv71.17.16 = zext i8 %2193 to i32
  %xor72.17.16 = xor i32 %conv71.17.16, %conv68.17.16
  %conv73.17.16 = trunc i32 %xor72.17.16 to i8
  store i8 %conv73.17.16, i8* %arrayidx70.16, align 1
  %scevgep20.18.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 18
  %2194 = load i8, i8* %scevgep20.18.16, align 1
  %conv68.18.16 = zext i8 %2194 to i32
  %2195 = load i8, i8* %arrayidx70.16, align 1
  %conv71.18.16 = zext i8 %2195 to i32
  %xor72.18.16 = xor i32 %conv71.18.16, %conv68.18.16
  %conv73.18.16 = trunc i32 %xor72.18.16 to i8
  store i8 %conv73.18.16, i8* %arrayidx70.16, align 1
  %scevgep20.19.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 19
  %2196 = load i8, i8* %scevgep20.19.16, align 1
  %conv68.19.16 = zext i8 %2196 to i32
  %2197 = load i8, i8* %arrayidx70.16, align 1
  %conv71.19.16 = zext i8 %2197 to i32
  %xor72.19.16 = xor i32 %conv71.19.16, %conv68.19.16
  %conv73.19.16 = trunc i32 %xor72.19.16 to i8
  store i8 %conv73.19.16, i8* %arrayidx70.16, align 1
  %scevgep20.20.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 0, i64 20
  %2198 = load i8, i8* %scevgep20.20.16, align 1
  %conv68.20.16 = zext i8 %2198 to i32
  %2199 = load i8, i8* %arrayidx70.16, align 1
  %conv71.20.16 = zext i8 %2199 to i32
  %xor72.20.16 = xor i32 %conv71.20.16, %conv68.20.16
  %conv73.20.16 = trunc i32 %xor72.20.16 to i8
  store i8 %conv73.20.16, i8* %arrayidx70.16, align 1
  %scevgep19.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2157, i64 0, i64 1, i64 0
  %2200 = bitcast i8* %scevgep19.16 to [21 x [21 x i8]]*
  %arrayidx51.17 = getelementptr inbounds i8, i8* %a, i64 17
  %2201 = load i8, i8* %arrayidx51.17, align 1
  %arrayidx53.17 = getelementptr inbounds i8, i8* %b, i64 17
  %2202 = load i8, i8* %arrayidx53.17, align 1
  %call54.17 = call zeroext i8 @mult(i8 zeroext %2201, i8 zeroext %2202)
  %arrayidx56.17 = getelementptr inbounds i8, i8* %c, i64 17
  store i8 %call54.17, i8* %arrayidx56.17, align 1
  %arrayidx70.17 = getelementptr inbounds i8, i8* %c, i64 17
  %scevgep20.17214 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 0
  %2203 = load i8, i8* %scevgep20.17214, align 1
  %conv68.17215 = zext i8 %2203 to i32
  %2204 = load i8, i8* %arrayidx70.17, align 1
  %conv71.17216 = zext i8 %2204 to i32
  %xor72.17217 = xor i32 %conv71.17216, %conv68.17215
  %conv73.17218 = trunc i32 %xor72.17217 to i8
  store i8 %conv73.17218, i8* %arrayidx70.17, align 1
  %scevgep20.1.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 1
  %2205 = load i8, i8* %scevgep20.1.17, align 1
  %conv68.1.17 = zext i8 %2205 to i32
  %2206 = load i8, i8* %arrayidx70.17, align 1
  %conv71.1.17 = zext i8 %2206 to i32
  %xor72.1.17 = xor i32 %conv71.1.17, %conv68.1.17
  %conv73.1.17 = trunc i32 %xor72.1.17 to i8
  store i8 %conv73.1.17, i8* %arrayidx70.17, align 1
  %scevgep20.2.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 2
  %2207 = load i8, i8* %scevgep20.2.17, align 1
  %conv68.2.17 = zext i8 %2207 to i32
  %2208 = load i8, i8* %arrayidx70.17, align 1
  %conv71.2.17 = zext i8 %2208 to i32
  %xor72.2.17 = xor i32 %conv71.2.17, %conv68.2.17
  %conv73.2.17 = trunc i32 %xor72.2.17 to i8
  store i8 %conv73.2.17, i8* %arrayidx70.17, align 1
  %scevgep20.3.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 3
  %2209 = load i8, i8* %scevgep20.3.17, align 1
  %conv68.3.17 = zext i8 %2209 to i32
  %2210 = load i8, i8* %arrayidx70.17, align 1
  %conv71.3.17 = zext i8 %2210 to i32
  %xor72.3.17 = xor i32 %conv71.3.17, %conv68.3.17
  %conv73.3.17 = trunc i32 %xor72.3.17 to i8
  store i8 %conv73.3.17, i8* %arrayidx70.17, align 1
  %scevgep20.4.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 4
  %2211 = load i8, i8* %scevgep20.4.17, align 1
  %conv68.4.17 = zext i8 %2211 to i32
  %2212 = load i8, i8* %arrayidx70.17, align 1
  %conv71.4.17 = zext i8 %2212 to i32
  %xor72.4.17 = xor i32 %conv71.4.17, %conv68.4.17
  %conv73.4.17 = trunc i32 %xor72.4.17 to i8
  store i8 %conv73.4.17, i8* %arrayidx70.17, align 1
  %scevgep20.5.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 5
  %2213 = load i8, i8* %scevgep20.5.17, align 1
  %conv68.5.17 = zext i8 %2213 to i32
  %2214 = load i8, i8* %arrayidx70.17, align 1
  %conv71.5.17 = zext i8 %2214 to i32
  %xor72.5.17 = xor i32 %conv71.5.17, %conv68.5.17
  %conv73.5.17 = trunc i32 %xor72.5.17 to i8
  store i8 %conv73.5.17, i8* %arrayidx70.17, align 1
  %scevgep20.6.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 6
  %2215 = load i8, i8* %scevgep20.6.17, align 1
  %conv68.6.17 = zext i8 %2215 to i32
  %2216 = load i8, i8* %arrayidx70.17, align 1
  %conv71.6.17 = zext i8 %2216 to i32
  %xor72.6.17 = xor i32 %conv71.6.17, %conv68.6.17
  %conv73.6.17 = trunc i32 %xor72.6.17 to i8
  store i8 %conv73.6.17, i8* %arrayidx70.17, align 1
  %scevgep20.7.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 7
  %2217 = load i8, i8* %scevgep20.7.17, align 1
  %conv68.7.17 = zext i8 %2217 to i32
  %2218 = load i8, i8* %arrayidx70.17, align 1
  %conv71.7.17 = zext i8 %2218 to i32
  %xor72.7.17 = xor i32 %conv71.7.17, %conv68.7.17
  %conv73.7.17 = trunc i32 %xor72.7.17 to i8
  store i8 %conv73.7.17, i8* %arrayidx70.17, align 1
  %scevgep20.8.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 8
  %2219 = load i8, i8* %scevgep20.8.17, align 1
  %conv68.8.17 = zext i8 %2219 to i32
  %2220 = load i8, i8* %arrayidx70.17, align 1
  %conv71.8.17 = zext i8 %2220 to i32
  %xor72.8.17 = xor i32 %conv71.8.17, %conv68.8.17
  %conv73.8.17 = trunc i32 %xor72.8.17 to i8
  store i8 %conv73.8.17, i8* %arrayidx70.17, align 1
  %scevgep20.9.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 9
  %2221 = load i8, i8* %scevgep20.9.17, align 1
  %conv68.9.17 = zext i8 %2221 to i32
  %2222 = load i8, i8* %arrayidx70.17, align 1
  %conv71.9.17 = zext i8 %2222 to i32
  %xor72.9.17 = xor i32 %conv71.9.17, %conv68.9.17
  %conv73.9.17 = trunc i32 %xor72.9.17 to i8
  store i8 %conv73.9.17, i8* %arrayidx70.17, align 1
  %scevgep20.10.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 10
  %2223 = load i8, i8* %scevgep20.10.17, align 1
  %conv68.10.17 = zext i8 %2223 to i32
  %2224 = load i8, i8* %arrayidx70.17, align 1
  %conv71.10.17 = zext i8 %2224 to i32
  %xor72.10.17 = xor i32 %conv71.10.17, %conv68.10.17
  %conv73.10.17 = trunc i32 %xor72.10.17 to i8
  store i8 %conv73.10.17, i8* %arrayidx70.17, align 1
  %scevgep20.11.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 11
  %2225 = load i8, i8* %scevgep20.11.17, align 1
  %conv68.11.17 = zext i8 %2225 to i32
  %2226 = load i8, i8* %arrayidx70.17, align 1
  %conv71.11.17 = zext i8 %2226 to i32
  %xor72.11.17 = xor i32 %conv71.11.17, %conv68.11.17
  %conv73.11.17 = trunc i32 %xor72.11.17 to i8
  store i8 %conv73.11.17, i8* %arrayidx70.17, align 1
  %scevgep20.12.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 12
  %2227 = load i8, i8* %scevgep20.12.17, align 1
  %conv68.12.17 = zext i8 %2227 to i32
  %2228 = load i8, i8* %arrayidx70.17, align 1
  %conv71.12.17 = zext i8 %2228 to i32
  %xor72.12.17 = xor i32 %conv71.12.17, %conv68.12.17
  %conv73.12.17 = trunc i32 %xor72.12.17 to i8
  store i8 %conv73.12.17, i8* %arrayidx70.17, align 1
  %scevgep20.13.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 13
  %2229 = load i8, i8* %scevgep20.13.17, align 1
  %conv68.13.17 = zext i8 %2229 to i32
  %2230 = load i8, i8* %arrayidx70.17, align 1
  %conv71.13.17 = zext i8 %2230 to i32
  %xor72.13.17 = xor i32 %conv71.13.17, %conv68.13.17
  %conv73.13.17 = trunc i32 %xor72.13.17 to i8
  store i8 %conv73.13.17, i8* %arrayidx70.17, align 1
  %scevgep20.14.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 14
  %2231 = load i8, i8* %scevgep20.14.17, align 1
  %conv68.14.17 = zext i8 %2231 to i32
  %2232 = load i8, i8* %arrayidx70.17, align 1
  %conv71.14.17 = zext i8 %2232 to i32
  %xor72.14.17 = xor i32 %conv71.14.17, %conv68.14.17
  %conv73.14.17 = trunc i32 %xor72.14.17 to i8
  store i8 %conv73.14.17, i8* %arrayidx70.17, align 1
  %scevgep20.15.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 15
  %2233 = load i8, i8* %scevgep20.15.17, align 1
  %conv68.15.17 = zext i8 %2233 to i32
  %2234 = load i8, i8* %arrayidx70.17, align 1
  %conv71.15.17 = zext i8 %2234 to i32
  %xor72.15.17 = xor i32 %conv71.15.17, %conv68.15.17
  %conv73.15.17 = trunc i32 %xor72.15.17 to i8
  store i8 %conv73.15.17, i8* %arrayidx70.17, align 1
  %scevgep20.16.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 16
  %2235 = load i8, i8* %scevgep20.16.17, align 1
  %conv68.16.17 = zext i8 %2235 to i32
  %2236 = load i8, i8* %arrayidx70.17, align 1
  %conv71.16.17 = zext i8 %2236 to i32
  %xor72.16.17 = xor i32 %conv71.16.17, %conv68.16.17
  %conv73.16.17 = trunc i32 %xor72.16.17 to i8
  store i8 %conv73.16.17, i8* %arrayidx70.17, align 1
  %scevgep20.18.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 18
  %2237 = load i8, i8* %scevgep20.18.17, align 1
  %conv68.18.17 = zext i8 %2237 to i32
  %2238 = load i8, i8* %arrayidx70.17, align 1
  %conv71.18.17 = zext i8 %2238 to i32
  %xor72.18.17 = xor i32 %conv71.18.17, %conv68.18.17
  %conv73.18.17 = trunc i32 %xor72.18.17 to i8
  store i8 %conv73.18.17, i8* %arrayidx70.17, align 1
  %scevgep20.19.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 19
  %2239 = load i8, i8* %scevgep20.19.17, align 1
  %conv68.19.17 = zext i8 %2239 to i32
  %2240 = load i8, i8* %arrayidx70.17, align 1
  %conv71.19.17 = zext i8 %2240 to i32
  %xor72.19.17 = xor i32 %conv71.19.17, %conv68.19.17
  %conv73.19.17 = trunc i32 %xor72.19.17 to i8
  store i8 %conv73.19.17, i8* %arrayidx70.17, align 1
  %scevgep20.20.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 0, i64 20
  %2241 = load i8, i8* %scevgep20.20.17, align 1
  %conv68.20.17 = zext i8 %2241 to i32
  %2242 = load i8, i8* %arrayidx70.17, align 1
  %conv71.20.17 = zext i8 %2242 to i32
  %xor72.20.17 = xor i32 %conv71.20.17, %conv68.20.17
  %conv73.20.17 = trunc i32 %xor72.20.17 to i8
  store i8 %conv73.20.17, i8* %arrayidx70.17, align 1
  %scevgep19.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2200, i64 0, i64 1, i64 0
  %2243 = bitcast i8* %scevgep19.17 to [21 x [21 x i8]]*
  %arrayidx51.18 = getelementptr inbounds i8, i8* %a, i64 18
  %2244 = load i8, i8* %arrayidx51.18, align 1
  %arrayidx53.18 = getelementptr inbounds i8, i8* %b, i64 18
  %2245 = load i8, i8* %arrayidx53.18, align 1
  %call54.18 = call zeroext i8 @mult(i8 zeroext %2244, i8 zeroext %2245)
  %arrayidx56.18 = getelementptr inbounds i8, i8* %c, i64 18
  store i8 %call54.18, i8* %arrayidx56.18, align 1
  %arrayidx70.18 = getelementptr inbounds i8, i8* %c, i64 18
  %scevgep20.18224 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 0
  %2246 = load i8, i8* %scevgep20.18224, align 1
  %conv68.18225 = zext i8 %2246 to i32
  %2247 = load i8, i8* %arrayidx70.18, align 1
  %conv71.18226 = zext i8 %2247 to i32
  %xor72.18227 = xor i32 %conv71.18226, %conv68.18225
  %conv73.18228 = trunc i32 %xor72.18227 to i8
  store i8 %conv73.18228, i8* %arrayidx70.18, align 1
  %scevgep20.1.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 1
  %2248 = load i8, i8* %scevgep20.1.18, align 1
  %conv68.1.18 = zext i8 %2248 to i32
  %2249 = load i8, i8* %arrayidx70.18, align 1
  %conv71.1.18 = zext i8 %2249 to i32
  %xor72.1.18 = xor i32 %conv71.1.18, %conv68.1.18
  %conv73.1.18 = trunc i32 %xor72.1.18 to i8
  store i8 %conv73.1.18, i8* %arrayidx70.18, align 1
  %scevgep20.2.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 2
  %2250 = load i8, i8* %scevgep20.2.18, align 1
  %conv68.2.18 = zext i8 %2250 to i32
  %2251 = load i8, i8* %arrayidx70.18, align 1
  %conv71.2.18 = zext i8 %2251 to i32
  %xor72.2.18 = xor i32 %conv71.2.18, %conv68.2.18
  %conv73.2.18 = trunc i32 %xor72.2.18 to i8
  store i8 %conv73.2.18, i8* %arrayidx70.18, align 1
  %scevgep20.3.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 3
  %2252 = load i8, i8* %scevgep20.3.18, align 1
  %conv68.3.18 = zext i8 %2252 to i32
  %2253 = load i8, i8* %arrayidx70.18, align 1
  %conv71.3.18 = zext i8 %2253 to i32
  %xor72.3.18 = xor i32 %conv71.3.18, %conv68.3.18
  %conv73.3.18 = trunc i32 %xor72.3.18 to i8
  store i8 %conv73.3.18, i8* %arrayidx70.18, align 1
  %scevgep20.4.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 4
  %2254 = load i8, i8* %scevgep20.4.18, align 1
  %conv68.4.18 = zext i8 %2254 to i32
  %2255 = load i8, i8* %arrayidx70.18, align 1
  %conv71.4.18 = zext i8 %2255 to i32
  %xor72.4.18 = xor i32 %conv71.4.18, %conv68.4.18
  %conv73.4.18 = trunc i32 %xor72.4.18 to i8
  store i8 %conv73.4.18, i8* %arrayidx70.18, align 1
  %scevgep20.5.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 5
  %2256 = load i8, i8* %scevgep20.5.18, align 1
  %conv68.5.18 = zext i8 %2256 to i32
  %2257 = load i8, i8* %arrayidx70.18, align 1
  %conv71.5.18 = zext i8 %2257 to i32
  %xor72.5.18 = xor i32 %conv71.5.18, %conv68.5.18
  %conv73.5.18 = trunc i32 %xor72.5.18 to i8
  store i8 %conv73.5.18, i8* %arrayidx70.18, align 1
  %scevgep20.6.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 6
  %2258 = load i8, i8* %scevgep20.6.18, align 1
  %conv68.6.18 = zext i8 %2258 to i32
  %2259 = load i8, i8* %arrayidx70.18, align 1
  %conv71.6.18 = zext i8 %2259 to i32
  %xor72.6.18 = xor i32 %conv71.6.18, %conv68.6.18
  %conv73.6.18 = trunc i32 %xor72.6.18 to i8
  store i8 %conv73.6.18, i8* %arrayidx70.18, align 1
  %scevgep20.7.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 7
  %2260 = load i8, i8* %scevgep20.7.18, align 1
  %conv68.7.18 = zext i8 %2260 to i32
  %2261 = load i8, i8* %arrayidx70.18, align 1
  %conv71.7.18 = zext i8 %2261 to i32
  %xor72.7.18 = xor i32 %conv71.7.18, %conv68.7.18
  %conv73.7.18 = trunc i32 %xor72.7.18 to i8
  store i8 %conv73.7.18, i8* %arrayidx70.18, align 1
  %scevgep20.8.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 8
  %2262 = load i8, i8* %scevgep20.8.18, align 1
  %conv68.8.18 = zext i8 %2262 to i32
  %2263 = load i8, i8* %arrayidx70.18, align 1
  %conv71.8.18 = zext i8 %2263 to i32
  %xor72.8.18 = xor i32 %conv71.8.18, %conv68.8.18
  %conv73.8.18 = trunc i32 %xor72.8.18 to i8
  store i8 %conv73.8.18, i8* %arrayidx70.18, align 1
  %scevgep20.9.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 9
  %2264 = load i8, i8* %scevgep20.9.18, align 1
  %conv68.9.18 = zext i8 %2264 to i32
  %2265 = load i8, i8* %arrayidx70.18, align 1
  %conv71.9.18 = zext i8 %2265 to i32
  %xor72.9.18 = xor i32 %conv71.9.18, %conv68.9.18
  %conv73.9.18 = trunc i32 %xor72.9.18 to i8
  store i8 %conv73.9.18, i8* %arrayidx70.18, align 1
  %scevgep20.10.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 10
  %2266 = load i8, i8* %scevgep20.10.18, align 1
  %conv68.10.18 = zext i8 %2266 to i32
  %2267 = load i8, i8* %arrayidx70.18, align 1
  %conv71.10.18 = zext i8 %2267 to i32
  %xor72.10.18 = xor i32 %conv71.10.18, %conv68.10.18
  %conv73.10.18 = trunc i32 %xor72.10.18 to i8
  store i8 %conv73.10.18, i8* %arrayidx70.18, align 1
  %scevgep20.11.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 11
  %2268 = load i8, i8* %scevgep20.11.18, align 1
  %conv68.11.18 = zext i8 %2268 to i32
  %2269 = load i8, i8* %arrayidx70.18, align 1
  %conv71.11.18 = zext i8 %2269 to i32
  %xor72.11.18 = xor i32 %conv71.11.18, %conv68.11.18
  %conv73.11.18 = trunc i32 %xor72.11.18 to i8
  store i8 %conv73.11.18, i8* %arrayidx70.18, align 1
  %scevgep20.12.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 12
  %2270 = load i8, i8* %scevgep20.12.18, align 1
  %conv68.12.18 = zext i8 %2270 to i32
  %2271 = load i8, i8* %arrayidx70.18, align 1
  %conv71.12.18 = zext i8 %2271 to i32
  %xor72.12.18 = xor i32 %conv71.12.18, %conv68.12.18
  %conv73.12.18 = trunc i32 %xor72.12.18 to i8
  store i8 %conv73.12.18, i8* %arrayidx70.18, align 1
  %scevgep20.13.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 13
  %2272 = load i8, i8* %scevgep20.13.18, align 1
  %conv68.13.18 = zext i8 %2272 to i32
  %2273 = load i8, i8* %arrayidx70.18, align 1
  %conv71.13.18 = zext i8 %2273 to i32
  %xor72.13.18 = xor i32 %conv71.13.18, %conv68.13.18
  %conv73.13.18 = trunc i32 %xor72.13.18 to i8
  store i8 %conv73.13.18, i8* %arrayidx70.18, align 1
  %scevgep20.14.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 14
  %2274 = load i8, i8* %scevgep20.14.18, align 1
  %conv68.14.18 = zext i8 %2274 to i32
  %2275 = load i8, i8* %arrayidx70.18, align 1
  %conv71.14.18 = zext i8 %2275 to i32
  %xor72.14.18 = xor i32 %conv71.14.18, %conv68.14.18
  %conv73.14.18 = trunc i32 %xor72.14.18 to i8
  store i8 %conv73.14.18, i8* %arrayidx70.18, align 1
  %scevgep20.15.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 15
  %2276 = load i8, i8* %scevgep20.15.18, align 1
  %conv68.15.18 = zext i8 %2276 to i32
  %2277 = load i8, i8* %arrayidx70.18, align 1
  %conv71.15.18 = zext i8 %2277 to i32
  %xor72.15.18 = xor i32 %conv71.15.18, %conv68.15.18
  %conv73.15.18 = trunc i32 %xor72.15.18 to i8
  store i8 %conv73.15.18, i8* %arrayidx70.18, align 1
  %scevgep20.16.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 16
  %2278 = load i8, i8* %scevgep20.16.18, align 1
  %conv68.16.18 = zext i8 %2278 to i32
  %2279 = load i8, i8* %arrayidx70.18, align 1
  %conv71.16.18 = zext i8 %2279 to i32
  %xor72.16.18 = xor i32 %conv71.16.18, %conv68.16.18
  %conv73.16.18 = trunc i32 %xor72.16.18 to i8
  store i8 %conv73.16.18, i8* %arrayidx70.18, align 1
  %scevgep20.17.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 17
  %2280 = load i8, i8* %scevgep20.17.18, align 1
  %conv68.17.18 = zext i8 %2280 to i32
  %2281 = load i8, i8* %arrayidx70.18, align 1
  %conv71.17.18 = zext i8 %2281 to i32
  %xor72.17.18 = xor i32 %conv71.17.18, %conv68.17.18
  %conv73.17.18 = trunc i32 %xor72.17.18 to i8
  store i8 %conv73.17.18, i8* %arrayidx70.18, align 1
  %scevgep20.19.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 19
  %2282 = load i8, i8* %scevgep20.19.18, align 1
  %conv68.19.18 = zext i8 %2282 to i32
  %2283 = load i8, i8* %arrayidx70.18, align 1
  %conv71.19.18 = zext i8 %2283 to i32
  %xor72.19.18 = xor i32 %conv71.19.18, %conv68.19.18
  %conv73.19.18 = trunc i32 %xor72.19.18 to i8
  store i8 %conv73.19.18, i8* %arrayidx70.18, align 1
  %scevgep20.20.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 0, i64 20
  %2284 = load i8, i8* %scevgep20.20.18, align 1
  %conv68.20.18 = zext i8 %2284 to i32
  %2285 = load i8, i8* %arrayidx70.18, align 1
  %conv71.20.18 = zext i8 %2285 to i32
  %xor72.20.18 = xor i32 %conv71.20.18, %conv68.20.18
  %conv73.20.18 = trunc i32 %xor72.20.18 to i8
  store i8 %conv73.20.18, i8* %arrayidx70.18, align 1
  %scevgep19.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2243, i64 0, i64 1, i64 0
  %2286 = bitcast i8* %scevgep19.18 to [21 x [21 x i8]]*
  %arrayidx51.19 = getelementptr inbounds i8, i8* %a, i64 19
  %2287 = load i8, i8* %arrayidx51.19, align 1
  %arrayidx53.19 = getelementptr inbounds i8, i8* %b, i64 19
  %2288 = load i8, i8* %arrayidx53.19, align 1
  %call54.19 = call zeroext i8 @mult(i8 zeroext %2287, i8 zeroext %2288)
  %arrayidx56.19 = getelementptr inbounds i8, i8* %c, i64 19
  store i8 %call54.19, i8* %arrayidx56.19, align 1
  %arrayidx70.19 = getelementptr inbounds i8, i8* %c, i64 19
  %scevgep20.19234 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 0
  %2289 = load i8, i8* %scevgep20.19234, align 1
  %conv68.19235 = zext i8 %2289 to i32
  %2290 = load i8, i8* %arrayidx70.19, align 1
  %conv71.19236 = zext i8 %2290 to i32
  %xor72.19237 = xor i32 %conv71.19236, %conv68.19235
  %conv73.19238 = trunc i32 %xor72.19237 to i8
  store i8 %conv73.19238, i8* %arrayidx70.19, align 1
  %scevgep20.1.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 1
  %2291 = load i8, i8* %scevgep20.1.19, align 1
  %conv68.1.19 = zext i8 %2291 to i32
  %2292 = load i8, i8* %arrayidx70.19, align 1
  %conv71.1.19 = zext i8 %2292 to i32
  %xor72.1.19 = xor i32 %conv71.1.19, %conv68.1.19
  %conv73.1.19 = trunc i32 %xor72.1.19 to i8
  store i8 %conv73.1.19, i8* %arrayidx70.19, align 1
  %scevgep20.2.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 2
  %2293 = load i8, i8* %scevgep20.2.19, align 1
  %conv68.2.19 = zext i8 %2293 to i32
  %2294 = load i8, i8* %arrayidx70.19, align 1
  %conv71.2.19 = zext i8 %2294 to i32
  %xor72.2.19 = xor i32 %conv71.2.19, %conv68.2.19
  %conv73.2.19 = trunc i32 %xor72.2.19 to i8
  store i8 %conv73.2.19, i8* %arrayidx70.19, align 1
  %scevgep20.3.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 3
  %2295 = load i8, i8* %scevgep20.3.19, align 1
  %conv68.3.19 = zext i8 %2295 to i32
  %2296 = load i8, i8* %arrayidx70.19, align 1
  %conv71.3.19 = zext i8 %2296 to i32
  %xor72.3.19 = xor i32 %conv71.3.19, %conv68.3.19
  %conv73.3.19 = trunc i32 %xor72.3.19 to i8
  store i8 %conv73.3.19, i8* %arrayidx70.19, align 1
  %scevgep20.4.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 4
  %2297 = load i8, i8* %scevgep20.4.19, align 1
  %conv68.4.19 = zext i8 %2297 to i32
  %2298 = load i8, i8* %arrayidx70.19, align 1
  %conv71.4.19 = zext i8 %2298 to i32
  %xor72.4.19 = xor i32 %conv71.4.19, %conv68.4.19
  %conv73.4.19 = trunc i32 %xor72.4.19 to i8
  store i8 %conv73.4.19, i8* %arrayidx70.19, align 1
  %scevgep20.5.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 5
  %2299 = load i8, i8* %scevgep20.5.19, align 1
  %conv68.5.19 = zext i8 %2299 to i32
  %2300 = load i8, i8* %arrayidx70.19, align 1
  %conv71.5.19 = zext i8 %2300 to i32
  %xor72.5.19 = xor i32 %conv71.5.19, %conv68.5.19
  %conv73.5.19 = trunc i32 %xor72.5.19 to i8
  store i8 %conv73.5.19, i8* %arrayidx70.19, align 1
  %scevgep20.6.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 6
  %2301 = load i8, i8* %scevgep20.6.19, align 1
  %conv68.6.19 = zext i8 %2301 to i32
  %2302 = load i8, i8* %arrayidx70.19, align 1
  %conv71.6.19 = zext i8 %2302 to i32
  %xor72.6.19 = xor i32 %conv71.6.19, %conv68.6.19
  %conv73.6.19 = trunc i32 %xor72.6.19 to i8
  store i8 %conv73.6.19, i8* %arrayidx70.19, align 1
  %scevgep20.7.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 7
  %2303 = load i8, i8* %scevgep20.7.19, align 1
  %conv68.7.19 = zext i8 %2303 to i32
  %2304 = load i8, i8* %arrayidx70.19, align 1
  %conv71.7.19 = zext i8 %2304 to i32
  %xor72.7.19 = xor i32 %conv71.7.19, %conv68.7.19
  %conv73.7.19 = trunc i32 %xor72.7.19 to i8
  store i8 %conv73.7.19, i8* %arrayidx70.19, align 1
  %scevgep20.8.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 8
  %2305 = load i8, i8* %scevgep20.8.19, align 1
  %conv68.8.19 = zext i8 %2305 to i32
  %2306 = load i8, i8* %arrayidx70.19, align 1
  %conv71.8.19 = zext i8 %2306 to i32
  %xor72.8.19 = xor i32 %conv71.8.19, %conv68.8.19
  %conv73.8.19 = trunc i32 %xor72.8.19 to i8
  store i8 %conv73.8.19, i8* %arrayidx70.19, align 1
  %scevgep20.9.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 9
  %2307 = load i8, i8* %scevgep20.9.19, align 1
  %conv68.9.19 = zext i8 %2307 to i32
  %2308 = load i8, i8* %arrayidx70.19, align 1
  %conv71.9.19 = zext i8 %2308 to i32
  %xor72.9.19 = xor i32 %conv71.9.19, %conv68.9.19
  %conv73.9.19 = trunc i32 %xor72.9.19 to i8
  store i8 %conv73.9.19, i8* %arrayidx70.19, align 1
  %scevgep20.10.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 10
  %2309 = load i8, i8* %scevgep20.10.19, align 1
  %conv68.10.19 = zext i8 %2309 to i32
  %2310 = load i8, i8* %arrayidx70.19, align 1
  %conv71.10.19 = zext i8 %2310 to i32
  %xor72.10.19 = xor i32 %conv71.10.19, %conv68.10.19
  %conv73.10.19 = trunc i32 %xor72.10.19 to i8
  store i8 %conv73.10.19, i8* %arrayidx70.19, align 1
  %scevgep20.11.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 11
  %2311 = load i8, i8* %scevgep20.11.19, align 1
  %conv68.11.19 = zext i8 %2311 to i32
  %2312 = load i8, i8* %arrayidx70.19, align 1
  %conv71.11.19 = zext i8 %2312 to i32
  %xor72.11.19 = xor i32 %conv71.11.19, %conv68.11.19
  %conv73.11.19 = trunc i32 %xor72.11.19 to i8
  store i8 %conv73.11.19, i8* %arrayidx70.19, align 1
  %scevgep20.12.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 12
  %2313 = load i8, i8* %scevgep20.12.19, align 1
  %conv68.12.19 = zext i8 %2313 to i32
  %2314 = load i8, i8* %arrayidx70.19, align 1
  %conv71.12.19 = zext i8 %2314 to i32
  %xor72.12.19 = xor i32 %conv71.12.19, %conv68.12.19
  %conv73.12.19 = trunc i32 %xor72.12.19 to i8
  store i8 %conv73.12.19, i8* %arrayidx70.19, align 1
  %scevgep20.13.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 13
  %2315 = load i8, i8* %scevgep20.13.19, align 1
  %conv68.13.19 = zext i8 %2315 to i32
  %2316 = load i8, i8* %arrayidx70.19, align 1
  %conv71.13.19 = zext i8 %2316 to i32
  %xor72.13.19 = xor i32 %conv71.13.19, %conv68.13.19
  %conv73.13.19 = trunc i32 %xor72.13.19 to i8
  store i8 %conv73.13.19, i8* %arrayidx70.19, align 1
  %scevgep20.14.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 14
  %2317 = load i8, i8* %scevgep20.14.19, align 1
  %conv68.14.19 = zext i8 %2317 to i32
  %2318 = load i8, i8* %arrayidx70.19, align 1
  %conv71.14.19 = zext i8 %2318 to i32
  %xor72.14.19 = xor i32 %conv71.14.19, %conv68.14.19
  %conv73.14.19 = trunc i32 %xor72.14.19 to i8
  store i8 %conv73.14.19, i8* %arrayidx70.19, align 1
  %scevgep20.15.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 15
  %2319 = load i8, i8* %scevgep20.15.19, align 1
  %conv68.15.19 = zext i8 %2319 to i32
  %2320 = load i8, i8* %arrayidx70.19, align 1
  %conv71.15.19 = zext i8 %2320 to i32
  %xor72.15.19 = xor i32 %conv71.15.19, %conv68.15.19
  %conv73.15.19 = trunc i32 %xor72.15.19 to i8
  store i8 %conv73.15.19, i8* %arrayidx70.19, align 1
  %scevgep20.16.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 16
  %2321 = load i8, i8* %scevgep20.16.19, align 1
  %conv68.16.19 = zext i8 %2321 to i32
  %2322 = load i8, i8* %arrayidx70.19, align 1
  %conv71.16.19 = zext i8 %2322 to i32
  %xor72.16.19 = xor i32 %conv71.16.19, %conv68.16.19
  %conv73.16.19 = trunc i32 %xor72.16.19 to i8
  store i8 %conv73.16.19, i8* %arrayidx70.19, align 1
  %scevgep20.17.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 17
  %2323 = load i8, i8* %scevgep20.17.19, align 1
  %conv68.17.19 = zext i8 %2323 to i32
  %2324 = load i8, i8* %arrayidx70.19, align 1
  %conv71.17.19 = zext i8 %2324 to i32
  %xor72.17.19 = xor i32 %conv71.17.19, %conv68.17.19
  %conv73.17.19 = trunc i32 %xor72.17.19 to i8
  store i8 %conv73.17.19, i8* %arrayidx70.19, align 1
  %scevgep20.18.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 18
  %2325 = load i8, i8* %scevgep20.18.19, align 1
  %conv68.18.19 = zext i8 %2325 to i32
  %2326 = load i8, i8* %arrayidx70.19, align 1
  %conv71.18.19 = zext i8 %2326 to i32
  %xor72.18.19 = xor i32 %conv71.18.19, %conv68.18.19
  %conv73.18.19 = trunc i32 %xor72.18.19 to i8
  store i8 %conv73.18.19, i8* %arrayidx70.19, align 1
  %scevgep20.20.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 0, i64 20
  %2327 = load i8, i8* %scevgep20.20.19, align 1
  %conv68.20.19 = zext i8 %2327 to i32
  %2328 = load i8, i8* %arrayidx70.19, align 1
  %conv71.20.19 = zext i8 %2328 to i32
  %xor72.20.19 = xor i32 %conv71.20.19, %conv68.20.19
  %conv73.20.19 = trunc i32 %xor72.20.19 to i8
  store i8 %conv73.20.19, i8* %arrayidx70.19, align 1
  %scevgep19.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2286, i64 0, i64 1, i64 0
  %2329 = bitcast i8* %scevgep19.19 to [21 x [21 x i8]]*
  %arrayidx51.20 = getelementptr inbounds i8, i8* %a, i64 20
  %2330 = load i8, i8* %arrayidx51.20, align 1
  %arrayidx53.20 = getelementptr inbounds i8, i8* %b, i64 20
  %2331 = load i8, i8* %arrayidx53.20, align 1
  %call54.20 = call zeroext i8 @mult(i8 zeroext %2330, i8 zeroext %2331)
  %arrayidx56.20 = getelementptr inbounds i8, i8* %c, i64 20
  store i8 %call54.20, i8* %arrayidx56.20, align 1
  %arrayidx70.20 = getelementptr inbounds i8, i8* %c, i64 20
  %scevgep20.20244 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 0
  %2332 = load i8, i8* %scevgep20.20244, align 1
  %conv68.20245 = zext i8 %2332 to i32
  %2333 = load i8, i8* %arrayidx70.20, align 1
  %conv71.20246 = zext i8 %2333 to i32
  %xor72.20247 = xor i32 %conv71.20246, %conv68.20245
  %conv73.20248 = trunc i32 %xor72.20247 to i8
  store i8 %conv73.20248, i8* %arrayidx70.20, align 1
  %scevgep20.1.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 1
  %2334 = load i8, i8* %scevgep20.1.20, align 1
  %conv68.1.20 = zext i8 %2334 to i32
  %2335 = load i8, i8* %arrayidx70.20, align 1
  %conv71.1.20 = zext i8 %2335 to i32
  %xor72.1.20 = xor i32 %conv71.1.20, %conv68.1.20
  %conv73.1.20 = trunc i32 %xor72.1.20 to i8
  store i8 %conv73.1.20, i8* %arrayidx70.20, align 1
  %scevgep20.2.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 2
  %2336 = load i8, i8* %scevgep20.2.20, align 1
  %conv68.2.20 = zext i8 %2336 to i32
  %2337 = load i8, i8* %arrayidx70.20, align 1
  %conv71.2.20 = zext i8 %2337 to i32
  %xor72.2.20 = xor i32 %conv71.2.20, %conv68.2.20
  %conv73.2.20 = trunc i32 %xor72.2.20 to i8
  store i8 %conv73.2.20, i8* %arrayidx70.20, align 1
  %scevgep20.3.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 3
  %2338 = load i8, i8* %scevgep20.3.20, align 1
  %conv68.3.20 = zext i8 %2338 to i32
  %2339 = load i8, i8* %arrayidx70.20, align 1
  %conv71.3.20 = zext i8 %2339 to i32
  %xor72.3.20 = xor i32 %conv71.3.20, %conv68.3.20
  %conv73.3.20 = trunc i32 %xor72.3.20 to i8
  store i8 %conv73.3.20, i8* %arrayidx70.20, align 1
  %scevgep20.4.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 4
  %2340 = load i8, i8* %scevgep20.4.20, align 1
  %conv68.4.20 = zext i8 %2340 to i32
  %2341 = load i8, i8* %arrayidx70.20, align 1
  %conv71.4.20 = zext i8 %2341 to i32
  %xor72.4.20 = xor i32 %conv71.4.20, %conv68.4.20
  %conv73.4.20 = trunc i32 %xor72.4.20 to i8
  store i8 %conv73.4.20, i8* %arrayidx70.20, align 1
  %scevgep20.5.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 5
  %2342 = load i8, i8* %scevgep20.5.20, align 1
  %conv68.5.20 = zext i8 %2342 to i32
  %2343 = load i8, i8* %arrayidx70.20, align 1
  %conv71.5.20 = zext i8 %2343 to i32
  %xor72.5.20 = xor i32 %conv71.5.20, %conv68.5.20
  %conv73.5.20 = trunc i32 %xor72.5.20 to i8
  store i8 %conv73.5.20, i8* %arrayidx70.20, align 1
  %scevgep20.6.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 6
  %2344 = load i8, i8* %scevgep20.6.20, align 1
  %conv68.6.20 = zext i8 %2344 to i32
  %2345 = load i8, i8* %arrayidx70.20, align 1
  %conv71.6.20 = zext i8 %2345 to i32
  %xor72.6.20 = xor i32 %conv71.6.20, %conv68.6.20
  %conv73.6.20 = trunc i32 %xor72.6.20 to i8
  store i8 %conv73.6.20, i8* %arrayidx70.20, align 1
  %scevgep20.7.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 7
  %2346 = load i8, i8* %scevgep20.7.20, align 1
  %conv68.7.20 = zext i8 %2346 to i32
  %2347 = load i8, i8* %arrayidx70.20, align 1
  %conv71.7.20 = zext i8 %2347 to i32
  %xor72.7.20 = xor i32 %conv71.7.20, %conv68.7.20
  %conv73.7.20 = trunc i32 %xor72.7.20 to i8
  store i8 %conv73.7.20, i8* %arrayidx70.20, align 1
  %scevgep20.8.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 8
  %2348 = load i8, i8* %scevgep20.8.20, align 1
  %conv68.8.20 = zext i8 %2348 to i32
  %2349 = load i8, i8* %arrayidx70.20, align 1
  %conv71.8.20 = zext i8 %2349 to i32
  %xor72.8.20 = xor i32 %conv71.8.20, %conv68.8.20
  %conv73.8.20 = trunc i32 %xor72.8.20 to i8
  store i8 %conv73.8.20, i8* %arrayidx70.20, align 1
  %scevgep20.9.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 9
  %2350 = load i8, i8* %scevgep20.9.20, align 1
  %conv68.9.20 = zext i8 %2350 to i32
  %2351 = load i8, i8* %arrayidx70.20, align 1
  %conv71.9.20 = zext i8 %2351 to i32
  %xor72.9.20 = xor i32 %conv71.9.20, %conv68.9.20
  %conv73.9.20 = trunc i32 %xor72.9.20 to i8
  store i8 %conv73.9.20, i8* %arrayidx70.20, align 1
  %scevgep20.10.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 10
  %2352 = load i8, i8* %scevgep20.10.20, align 1
  %conv68.10.20 = zext i8 %2352 to i32
  %2353 = load i8, i8* %arrayidx70.20, align 1
  %conv71.10.20 = zext i8 %2353 to i32
  %xor72.10.20 = xor i32 %conv71.10.20, %conv68.10.20
  %conv73.10.20 = trunc i32 %xor72.10.20 to i8
  store i8 %conv73.10.20, i8* %arrayidx70.20, align 1
  %scevgep20.11.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 11
  %2354 = load i8, i8* %scevgep20.11.20, align 1
  %conv68.11.20 = zext i8 %2354 to i32
  %2355 = load i8, i8* %arrayidx70.20, align 1
  %conv71.11.20 = zext i8 %2355 to i32
  %xor72.11.20 = xor i32 %conv71.11.20, %conv68.11.20
  %conv73.11.20 = trunc i32 %xor72.11.20 to i8
  store i8 %conv73.11.20, i8* %arrayidx70.20, align 1
  %scevgep20.12.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 12
  %2356 = load i8, i8* %scevgep20.12.20, align 1
  %conv68.12.20 = zext i8 %2356 to i32
  %2357 = load i8, i8* %arrayidx70.20, align 1
  %conv71.12.20 = zext i8 %2357 to i32
  %xor72.12.20 = xor i32 %conv71.12.20, %conv68.12.20
  %conv73.12.20 = trunc i32 %xor72.12.20 to i8
  store i8 %conv73.12.20, i8* %arrayidx70.20, align 1
  %scevgep20.13.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 13
  %2358 = load i8, i8* %scevgep20.13.20, align 1
  %conv68.13.20 = zext i8 %2358 to i32
  %2359 = load i8, i8* %arrayidx70.20, align 1
  %conv71.13.20 = zext i8 %2359 to i32
  %xor72.13.20 = xor i32 %conv71.13.20, %conv68.13.20
  %conv73.13.20 = trunc i32 %xor72.13.20 to i8
  store i8 %conv73.13.20, i8* %arrayidx70.20, align 1
  %scevgep20.14.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 14
  %2360 = load i8, i8* %scevgep20.14.20, align 1
  %conv68.14.20 = zext i8 %2360 to i32
  %2361 = load i8, i8* %arrayidx70.20, align 1
  %conv71.14.20 = zext i8 %2361 to i32
  %xor72.14.20 = xor i32 %conv71.14.20, %conv68.14.20
  %conv73.14.20 = trunc i32 %xor72.14.20 to i8
  store i8 %conv73.14.20, i8* %arrayidx70.20, align 1
  %scevgep20.15.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 15
  %2362 = load i8, i8* %scevgep20.15.20, align 1
  %conv68.15.20 = zext i8 %2362 to i32
  %2363 = load i8, i8* %arrayidx70.20, align 1
  %conv71.15.20 = zext i8 %2363 to i32
  %xor72.15.20 = xor i32 %conv71.15.20, %conv68.15.20
  %conv73.15.20 = trunc i32 %xor72.15.20 to i8
  store i8 %conv73.15.20, i8* %arrayidx70.20, align 1
  %scevgep20.16.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 16
  %2364 = load i8, i8* %scevgep20.16.20, align 1
  %conv68.16.20 = zext i8 %2364 to i32
  %2365 = load i8, i8* %arrayidx70.20, align 1
  %conv71.16.20 = zext i8 %2365 to i32
  %xor72.16.20 = xor i32 %conv71.16.20, %conv68.16.20
  %conv73.16.20 = trunc i32 %xor72.16.20 to i8
  store i8 %conv73.16.20, i8* %arrayidx70.20, align 1
  %scevgep20.17.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 17
  %2366 = load i8, i8* %scevgep20.17.20, align 1
  %conv68.17.20 = zext i8 %2366 to i32
  %2367 = load i8, i8* %arrayidx70.20, align 1
  %conv71.17.20 = zext i8 %2367 to i32
  %xor72.17.20 = xor i32 %conv71.17.20, %conv68.17.20
  %conv73.17.20 = trunc i32 %xor72.17.20 to i8
  store i8 %conv73.17.20, i8* %arrayidx70.20, align 1
  %scevgep20.18.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 18
  %2368 = load i8, i8* %scevgep20.18.20, align 1
  %conv68.18.20 = zext i8 %2368 to i32
  %2369 = load i8, i8* %arrayidx70.20, align 1
  %conv71.18.20 = zext i8 %2369 to i32
  %xor72.18.20 = xor i32 %conv71.18.20, %conv68.18.20
  %conv73.18.20 = trunc i32 %xor72.18.20 to i8
  store i8 %conv73.18.20, i8* %arrayidx70.20, align 1
  %scevgep20.19.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %2329, i64 0, i64 0, i64 19
  %2370 = load i8, i8* %scevgep20.19.20, align 1
  %conv68.19.20 = zext i8 %2370 to i32
  %2371 = load i8, i8* %arrayidx70.20, align 1
  %conv71.19.20 = zext i8 %2371 to i32
  %xor72.19.20 = xor i32 %conv71.19.20, %conv68.19.20
  %conv73.19.20 = trunc i32 %xor72.19.20 to i8
  store i8 %conv73.19.20, i8* %arrayidx70.20, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %2372 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %2373 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %2373 to i32
  %conv1.i.i114.1 = zext i8 %2372 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %2374 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %2374 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %2375 = load i8, i8* %scevgep.3, align 1
  %conv.i.i113.3 = zext i8 %2375 to i32
  %conv1.i.i114.3 = zext i8 %conv2.i.i116.2 to i32
  %xor.i.i115.3 = xor i32 %conv1.i.i114.3, %conv.i.i113.3
  %conv2.i.i116.3 = trunc i32 %xor.i.i115.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %2376 = load i8, i8* %scevgep.4, align 1
  %conv.i.i113.4 = zext i8 %2376 to i32
  %conv1.i.i114.4 = zext i8 %conv2.i.i116.3 to i32
  %xor.i.i115.4 = xor i32 %conv1.i.i114.4, %conv.i.i113.4
  %conv2.i.i116.4 = trunc i32 %xor.i.i115.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %2377 = load i8, i8* %scevgep.5, align 1
  %conv.i.i113.5 = zext i8 %2377 to i32
  %conv1.i.i114.5 = zext i8 %conv2.i.i116.4 to i32
  %xor.i.i115.5 = xor i32 %conv1.i.i114.5, %conv.i.i113.5
  %conv2.i.i116.5 = trunc i32 %xor.i.i115.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %2378 = load i8, i8* %scevgep.6, align 1
  %conv.i.i113.6 = zext i8 %2378 to i32
  %conv1.i.i114.6 = zext i8 %conv2.i.i116.5 to i32
  %xor.i.i115.6 = xor i32 %conv1.i.i114.6, %conv.i.i113.6
  %conv2.i.i116.6 = trunc i32 %xor.i.i115.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %2379 = load i8, i8* %scevgep.7, align 1
  %conv.i.i113.7 = zext i8 %2379 to i32
  %conv1.i.i114.7 = zext i8 %conv2.i.i116.6 to i32
  %xor.i.i115.7 = xor i32 %conv1.i.i114.7, %conv.i.i113.7
  %conv2.i.i116.7 = trunc i32 %xor.i.i115.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %2380 = load i8, i8* %scevgep.8, align 1
  %conv.i.i113.8 = zext i8 %2380 to i32
  %conv1.i.i114.8 = zext i8 %conv2.i.i116.7 to i32
  %xor.i.i115.8 = xor i32 %conv1.i.i114.8, %conv.i.i113.8
  %conv2.i.i116.8 = trunc i32 %xor.i.i115.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %2381 = load i8, i8* %scevgep.9, align 1
  %conv.i.i113.9 = zext i8 %2381 to i32
  %conv1.i.i114.9 = zext i8 %conv2.i.i116.8 to i32
  %xor.i.i115.9 = xor i32 %conv1.i.i114.9, %conv.i.i113.9
  %conv2.i.i116.9 = trunc i32 %xor.i.i115.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %2382 = load i8, i8* %scevgep.10, align 1
  %conv.i.i113.10 = zext i8 %2382 to i32
  %conv1.i.i114.10 = zext i8 %conv2.i.i116.9 to i32
  %xor.i.i115.10 = xor i32 %conv1.i.i114.10, %conv.i.i113.10
  %conv2.i.i116.10 = trunc i32 %xor.i.i115.10 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  %2383 = load i8, i8* %scevgep.11, align 1
  %conv.i.i113.11 = zext i8 %2383 to i32
  %conv1.i.i114.11 = zext i8 %conv2.i.i116.10 to i32
  %xor.i.i115.11 = xor i32 %conv1.i.i114.11, %conv.i.i113.11
  %conv2.i.i116.11 = trunc i32 %xor.i.i115.11 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  %2384 = load i8, i8* %scevgep.12, align 1
  %conv.i.i113.12 = zext i8 %2384 to i32
  %conv1.i.i114.12 = zext i8 %conv2.i.i116.11 to i32
  %xor.i.i115.12 = xor i32 %conv1.i.i114.12, %conv.i.i113.12
  %conv2.i.i116.12 = trunc i32 %xor.i.i115.12 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  %2385 = load i8, i8* %scevgep.13, align 1
  %conv.i.i113.13 = zext i8 %2385 to i32
  %conv1.i.i114.13 = zext i8 %conv2.i.i116.12 to i32
  %xor.i.i115.13 = xor i32 %conv1.i.i114.13, %conv.i.i113.13
  %conv2.i.i116.13 = trunc i32 %xor.i.i115.13 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  %2386 = load i8, i8* %scevgep.14, align 1
  %conv.i.i113.14 = zext i8 %2386 to i32
  %conv1.i.i114.14 = zext i8 %conv2.i.i116.13 to i32
  %xor.i.i115.14 = xor i32 %conv1.i.i114.14, %conv.i.i113.14
  %conv2.i.i116.14 = trunc i32 %xor.i.i115.14 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  %2387 = load i8, i8* %scevgep.15, align 1
  %conv.i.i113.15 = zext i8 %2387 to i32
  %conv1.i.i114.15 = zext i8 %conv2.i.i116.14 to i32
  %xor.i.i115.15 = xor i32 %conv1.i.i114.15, %conv.i.i113.15
  %conv2.i.i116.15 = trunc i32 %xor.i.i115.15 to i8
  %scevgep.16 = getelementptr i8, i8* %c, i64 16
  %2388 = load i8, i8* %scevgep.16, align 1
  %conv.i.i113.16 = zext i8 %2388 to i32
  %conv1.i.i114.16 = zext i8 %conv2.i.i116.15 to i32
  %xor.i.i115.16 = xor i32 %conv1.i.i114.16, %conv.i.i113.16
  %conv2.i.i116.16 = trunc i32 %xor.i.i115.16 to i8
  %scevgep.17 = getelementptr i8, i8* %c, i64 17
  %2389 = load i8, i8* %scevgep.17, align 1
  %conv.i.i113.17 = zext i8 %2389 to i32
  %conv1.i.i114.17 = zext i8 %conv2.i.i116.16 to i32
  %xor.i.i115.17 = xor i32 %conv1.i.i114.17, %conv.i.i113.17
  %conv2.i.i116.17 = trunc i32 %xor.i.i115.17 to i8
  %scevgep.18 = getelementptr i8, i8* %c, i64 18
  %2390 = load i8, i8* %scevgep.18, align 1
  %conv.i.i113.18 = zext i8 %2390 to i32
  %conv1.i.i114.18 = zext i8 %conv2.i.i116.17 to i32
  %xor.i.i115.18 = xor i32 %conv1.i.i114.18, %conv.i.i113.18
  %conv2.i.i116.18 = trunc i32 %xor.i.i115.18 to i8
  %scevgep.19 = getelementptr i8, i8* %c, i64 19
  %2391 = load i8, i8* %scevgep.19, align 1
  %conv.i.i113.19 = zext i8 %2391 to i32
  %conv1.i.i114.19 = zext i8 %conv2.i.i116.18 to i32
  %xor.i.i115.19 = xor i32 %conv1.i.i114.19, %conv.i.i113.19
  %conv2.i.i116.19 = trunc i32 %xor.i.i115.19 to i8
  %scevgep.20 = getelementptr i8, i8* %c, i64 20
  %2392 = load i8, i8* %scevgep.20, align 1
  %conv.i.i113.20 = zext i8 %2392 to i32
  %conv1.i.i114.20 = zext i8 %conv2.i.i116.19 to i32
  %xor.i.i115.20 = xor i32 %conv1.i.i114.20, %conv.i.i113.20
  %conv2.i.i116.20 = trunc i32 %xor.i.i115.20 to i8
  %conv83 = zext i8 %conv2.i.i116.20 to i32
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
  %scevgep12.16 = getelementptr i8, i8* %x, i64 16
  %16 = load i8, i8* %scevgep12.16, align 1
  %conv.i.i.16 = zext i8 %16 to i32
  %conv1.i.i.16 = zext i8 %conv2.i.i.15 to i32
  %xor.i.i.16 = xor i32 %conv1.i.i.16, %conv.i.i.16
  %conv2.i.i.16 = trunc i32 %xor.i.i.16 to i8
  %scevgep12.17 = getelementptr i8, i8* %x, i64 17
  %17 = load i8, i8* %scevgep12.17, align 1
  %conv.i.i.17 = zext i8 %17 to i32
  %conv1.i.i.17 = zext i8 %conv2.i.i.16 to i32
  %xor.i.i.17 = xor i32 %conv1.i.i.17, %conv.i.i.17
  %conv2.i.i.17 = trunc i32 %xor.i.i.17 to i8
  %scevgep12.18 = getelementptr i8, i8* %x, i64 18
  %18 = load i8, i8* %scevgep12.18, align 1
  %conv.i.i.18 = zext i8 %18 to i32
  %conv1.i.i.18 = zext i8 %conv2.i.i.17 to i32
  %xor.i.i.18 = xor i32 %conv1.i.i.18, %conv.i.i.18
  %conv2.i.i.18 = trunc i32 %xor.i.i.18 to i8
  %scevgep12.19 = getelementptr i8, i8* %x, i64 19
  %19 = load i8, i8* %scevgep12.19, align 1
  %conv.i.i.19 = zext i8 %19 to i32
  %conv1.i.i.19 = zext i8 %conv2.i.i.18 to i32
  %xor.i.i.19 = xor i32 %conv1.i.i.19, %conv.i.i.19
  %conv2.i.i.19 = trunc i32 %xor.i.i.19 to i8
  %scevgep12.20 = getelementptr i8, i8* %x, i64 20
  %20 = load i8, i8* %scevgep12.20, align 1
  %conv.i.i.20 = zext i8 %20 to i32
  %conv1.i.i.20 = zext i8 %conv2.i.i.19 to i32
  %xor.i.i.20 = xor i32 %conv1.i.i.20, %conv.i.i.20
  %conv2.i.i.20 = trunc i32 %xor.i.i.20 to i8
  %conv2 = zext i8 %conv2.i.i.20 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %21 = load i8, i8* %x, align 1
  %conv9 = zext i8 %21 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %22 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %22 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %23 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %23 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %24 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %24 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %25 = load i8, i8* %x, align 1
  %conv9.2 = zext i8 %25 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %x, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep8.2 = getelementptr i8, i8* %x, i64 3
  %26 = load i8, i8* %scevgep8.2, align 1
  %conv13.2 = zext i8 %26 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep8.2, align 1
  %call7.3 = call zeroext i8 (...) @rand()
  %conv8.3 = zext i8 %call7.3 to i32
  %27 = load i8, i8* %x, align 1
  %conv9.3 = zext i8 %27 to i32
  %xor.3 = xor i32 %conv9.3, %conv8.3
  %conv10.3 = trunc i32 %xor.3 to i8
  store i8 %conv10.3, i8* %x, align 1
  %conv11.3 = zext i8 %call7.3 to i32
  %scevgep8.3 = getelementptr i8, i8* %x, i64 4
  %28 = load i8, i8* %scevgep8.3, align 1
  %conv13.3 = zext i8 %28 to i32
  %xor14.3 = xor i32 %conv13.3, %conv11.3
  %conv15.3 = trunc i32 %xor14.3 to i8
  store i8 %conv15.3, i8* %scevgep8.3, align 1
  %call7.4 = call zeroext i8 (...) @rand()
  %conv8.4 = zext i8 %call7.4 to i32
  %29 = load i8, i8* %x, align 1
  %conv9.4 = zext i8 %29 to i32
  %xor.4 = xor i32 %conv9.4, %conv8.4
  %conv10.4 = trunc i32 %xor.4 to i8
  store i8 %conv10.4, i8* %x, align 1
  %conv11.4 = zext i8 %call7.4 to i32
  %scevgep8.4 = getelementptr i8, i8* %x, i64 5
  %30 = load i8, i8* %scevgep8.4, align 1
  %conv13.4 = zext i8 %30 to i32
  %xor14.4 = xor i32 %conv13.4, %conv11.4
  %conv15.4 = trunc i32 %xor14.4 to i8
  store i8 %conv15.4, i8* %scevgep8.4, align 1
  %call7.5 = call zeroext i8 (...) @rand()
  %conv8.5 = zext i8 %call7.5 to i32
  %31 = load i8, i8* %x, align 1
  %conv9.5 = zext i8 %31 to i32
  %xor.5 = xor i32 %conv9.5, %conv8.5
  %conv10.5 = trunc i32 %xor.5 to i8
  store i8 %conv10.5, i8* %x, align 1
  %conv11.5 = zext i8 %call7.5 to i32
  %scevgep8.5 = getelementptr i8, i8* %x, i64 6
  %32 = load i8, i8* %scevgep8.5, align 1
  %conv13.5 = zext i8 %32 to i32
  %xor14.5 = xor i32 %conv13.5, %conv11.5
  %conv15.5 = trunc i32 %xor14.5 to i8
  store i8 %conv15.5, i8* %scevgep8.5, align 1
  %call7.6 = call zeroext i8 (...) @rand()
  %conv8.6 = zext i8 %call7.6 to i32
  %33 = load i8, i8* %x, align 1
  %conv9.6 = zext i8 %33 to i32
  %xor.6 = xor i32 %conv9.6, %conv8.6
  %conv10.6 = trunc i32 %xor.6 to i8
  store i8 %conv10.6, i8* %x, align 1
  %conv11.6 = zext i8 %call7.6 to i32
  %scevgep8.6 = getelementptr i8, i8* %x, i64 7
  %34 = load i8, i8* %scevgep8.6, align 1
  %conv13.6 = zext i8 %34 to i32
  %xor14.6 = xor i32 %conv13.6, %conv11.6
  %conv15.6 = trunc i32 %xor14.6 to i8
  store i8 %conv15.6, i8* %scevgep8.6, align 1
  %call7.7 = call zeroext i8 (...) @rand()
  %conv8.7 = zext i8 %call7.7 to i32
  %35 = load i8, i8* %x, align 1
  %conv9.7 = zext i8 %35 to i32
  %xor.7 = xor i32 %conv9.7, %conv8.7
  %conv10.7 = trunc i32 %xor.7 to i8
  store i8 %conv10.7, i8* %x, align 1
  %conv11.7 = zext i8 %call7.7 to i32
  %scevgep8.7 = getelementptr i8, i8* %x, i64 8
  %36 = load i8, i8* %scevgep8.7, align 1
  %conv13.7 = zext i8 %36 to i32
  %xor14.7 = xor i32 %conv13.7, %conv11.7
  %conv15.7 = trunc i32 %xor14.7 to i8
  store i8 %conv15.7, i8* %scevgep8.7, align 1
  %call7.8 = call zeroext i8 (...) @rand()
  %conv8.8 = zext i8 %call7.8 to i32
  %37 = load i8, i8* %x, align 1
  %conv9.8 = zext i8 %37 to i32
  %xor.8 = xor i32 %conv9.8, %conv8.8
  %conv10.8 = trunc i32 %xor.8 to i8
  store i8 %conv10.8, i8* %x, align 1
  %conv11.8 = zext i8 %call7.8 to i32
  %scevgep8.8 = getelementptr i8, i8* %x, i64 9
  %38 = load i8, i8* %scevgep8.8, align 1
  %conv13.8 = zext i8 %38 to i32
  %xor14.8 = xor i32 %conv13.8, %conv11.8
  %conv15.8 = trunc i32 %xor14.8 to i8
  store i8 %conv15.8, i8* %scevgep8.8, align 1
  %call7.9 = call zeroext i8 (...) @rand()
  %conv8.9 = zext i8 %call7.9 to i32
  %39 = load i8, i8* %x, align 1
  %conv9.9 = zext i8 %39 to i32
  %xor.9 = xor i32 %conv9.9, %conv8.9
  %conv10.9 = trunc i32 %xor.9 to i8
  store i8 %conv10.9, i8* %x, align 1
  %conv11.9 = zext i8 %call7.9 to i32
  %scevgep8.9 = getelementptr i8, i8* %x, i64 10
  %40 = load i8, i8* %scevgep8.9, align 1
  %conv13.9 = zext i8 %40 to i32
  %xor14.9 = xor i32 %conv13.9, %conv11.9
  %conv15.9 = trunc i32 %xor14.9 to i8
  store i8 %conv15.9, i8* %scevgep8.9, align 1
  %call7.10 = call zeroext i8 (...) @rand()
  %conv8.10 = zext i8 %call7.10 to i32
  %41 = load i8, i8* %x, align 1
  %conv9.10 = zext i8 %41 to i32
  %xor.10 = xor i32 %conv9.10, %conv8.10
  %conv10.10 = trunc i32 %xor.10 to i8
  store i8 %conv10.10, i8* %x, align 1
  %conv11.10 = zext i8 %call7.10 to i32
  %scevgep8.10 = getelementptr i8, i8* %x, i64 11
  %42 = load i8, i8* %scevgep8.10, align 1
  %conv13.10 = zext i8 %42 to i32
  %xor14.10 = xor i32 %conv13.10, %conv11.10
  %conv15.10 = trunc i32 %xor14.10 to i8
  store i8 %conv15.10, i8* %scevgep8.10, align 1
  %call7.11 = call zeroext i8 (...) @rand()
  %conv8.11 = zext i8 %call7.11 to i32
  %43 = load i8, i8* %x, align 1
  %conv9.11 = zext i8 %43 to i32
  %xor.11 = xor i32 %conv9.11, %conv8.11
  %conv10.11 = trunc i32 %xor.11 to i8
  store i8 %conv10.11, i8* %x, align 1
  %conv11.11 = zext i8 %call7.11 to i32
  %scevgep8.11 = getelementptr i8, i8* %x, i64 12
  %44 = load i8, i8* %scevgep8.11, align 1
  %conv13.11 = zext i8 %44 to i32
  %xor14.11 = xor i32 %conv13.11, %conv11.11
  %conv15.11 = trunc i32 %xor14.11 to i8
  store i8 %conv15.11, i8* %scevgep8.11, align 1
  %call7.12 = call zeroext i8 (...) @rand()
  %conv8.12 = zext i8 %call7.12 to i32
  %45 = load i8, i8* %x, align 1
  %conv9.12 = zext i8 %45 to i32
  %xor.12 = xor i32 %conv9.12, %conv8.12
  %conv10.12 = trunc i32 %xor.12 to i8
  store i8 %conv10.12, i8* %x, align 1
  %conv11.12 = zext i8 %call7.12 to i32
  %scevgep8.12 = getelementptr i8, i8* %x, i64 13
  %46 = load i8, i8* %scevgep8.12, align 1
  %conv13.12 = zext i8 %46 to i32
  %xor14.12 = xor i32 %conv13.12, %conv11.12
  %conv15.12 = trunc i32 %xor14.12 to i8
  store i8 %conv15.12, i8* %scevgep8.12, align 1
  %call7.13 = call zeroext i8 (...) @rand()
  %conv8.13 = zext i8 %call7.13 to i32
  %47 = load i8, i8* %x, align 1
  %conv9.13 = zext i8 %47 to i32
  %xor.13 = xor i32 %conv9.13, %conv8.13
  %conv10.13 = trunc i32 %xor.13 to i8
  store i8 %conv10.13, i8* %x, align 1
  %conv11.13 = zext i8 %call7.13 to i32
  %scevgep8.13 = getelementptr i8, i8* %x, i64 14
  %48 = load i8, i8* %scevgep8.13, align 1
  %conv13.13 = zext i8 %48 to i32
  %xor14.13 = xor i32 %conv13.13, %conv11.13
  %conv15.13 = trunc i32 %xor14.13 to i8
  store i8 %conv15.13, i8* %scevgep8.13, align 1
  %call7.14 = call zeroext i8 (...) @rand()
  %conv8.14 = zext i8 %call7.14 to i32
  %49 = load i8, i8* %x, align 1
  %conv9.14 = zext i8 %49 to i32
  %xor.14 = xor i32 %conv9.14, %conv8.14
  %conv10.14 = trunc i32 %xor.14 to i8
  store i8 %conv10.14, i8* %x, align 1
  %conv11.14 = zext i8 %call7.14 to i32
  %scevgep8.14 = getelementptr i8, i8* %x, i64 15
  %50 = load i8, i8* %scevgep8.14, align 1
  %conv13.14 = zext i8 %50 to i32
  %xor14.14 = xor i32 %conv13.14, %conv11.14
  %conv15.14 = trunc i32 %xor14.14 to i8
  store i8 %conv15.14, i8* %scevgep8.14, align 1
  %call7.15 = call zeroext i8 (...) @rand()
  %conv8.15 = zext i8 %call7.15 to i32
  %51 = load i8, i8* %x, align 1
  %conv9.15 = zext i8 %51 to i32
  %xor.15 = xor i32 %conv9.15, %conv8.15
  %conv10.15 = trunc i32 %xor.15 to i8
  store i8 %conv10.15, i8* %x, align 1
  %conv11.15 = zext i8 %call7.15 to i32
  %scevgep8.15 = getelementptr i8, i8* %x, i64 16
  %52 = load i8, i8* %scevgep8.15, align 1
  %conv13.15 = zext i8 %52 to i32
  %xor14.15 = xor i32 %conv13.15, %conv11.15
  %conv15.15 = trunc i32 %xor14.15 to i8
  store i8 %conv15.15, i8* %scevgep8.15, align 1
  %call7.16 = call zeroext i8 (...) @rand()
  %conv8.16 = zext i8 %call7.16 to i32
  %53 = load i8, i8* %x, align 1
  %conv9.16 = zext i8 %53 to i32
  %xor.16 = xor i32 %conv9.16, %conv8.16
  %conv10.16 = trunc i32 %xor.16 to i8
  store i8 %conv10.16, i8* %x, align 1
  %conv11.16 = zext i8 %call7.16 to i32
  %scevgep8.16 = getelementptr i8, i8* %x, i64 17
  %54 = load i8, i8* %scevgep8.16, align 1
  %conv13.16 = zext i8 %54 to i32
  %xor14.16 = xor i32 %conv13.16, %conv11.16
  %conv15.16 = trunc i32 %xor14.16 to i8
  store i8 %conv15.16, i8* %scevgep8.16, align 1
  %call7.17 = call zeroext i8 (...) @rand()
  %conv8.17 = zext i8 %call7.17 to i32
  %55 = load i8, i8* %x, align 1
  %conv9.17 = zext i8 %55 to i32
  %xor.17 = xor i32 %conv9.17, %conv8.17
  %conv10.17 = trunc i32 %xor.17 to i8
  store i8 %conv10.17, i8* %x, align 1
  %conv11.17 = zext i8 %call7.17 to i32
  %scevgep8.17 = getelementptr i8, i8* %x, i64 18
  %56 = load i8, i8* %scevgep8.17, align 1
  %conv13.17 = zext i8 %56 to i32
  %xor14.17 = xor i32 %conv13.17, %conv11.17
  %conv15.17 = trunc i32 %xor14.17 to i8
  store i8 %conv15.17, i8* %scevgep8.17, align 1
  %call7.18 = call zeroext i8 (...) @rand()
  %conv8.18 = zext i8 %call7.18 to i32
  %57 = load i8, i8* %x, align 1
  %conv9.18 = zext i8 %57 to i32
  %xor.18 = xor i32 %conv9.18, %conv8.18
  %conv10.18 = trunc i32 %xor.18 to i8
  store i8 %conv10.18, i8* %x, align 1
  %conv11.18 = zext i8 %call7.18 to i32
  %scevgep8.18 = getelementptr i8, i8* %x, i64 19
  %58 = load i8, i8* %scevgep8.18, align 1
  %conv13.18 = zext i8 %58 to i32
  %xor14.18 = xor i32 %conv13.18, %conv11.18
  %conv15.18 = trunc i32 %xor14.18 to i8
  store i8 %conv15.18, i8* %scevgep8.18, align 1
  %call7.19 = call zeroext i8 (...) @rand()
  %conv8.19 = zext i8 %call7.19 to i32
  %59 = load i8, i8* %x, align 1
  %conv9.19 = zext i8 %59 to i32
  %xor.19 = xor i32 %conv9.19, %conv8.19
  %conv10.19 = trunc i32 %xor.19 to i8
  store i8 %conv10.19, i8* %x, align 1
  %conv11.19 = zext i8 %call7.19 to i32
  %scevgep8.19 = getelementptr i8, i8* %x, i64 20
  %60 = load i8, i8* %scevgep8.19, align 1
  %conv13.19 = zext i8 %60 to i32
  %xor14.19 = xor i32 %conv13.19, %conv11.19
  %conv15.19 = trunc i32 %xor14.19 to i8
  store i8 %conv15.19, i8* %scevgep8.19, align 1
  %conv16 = zext i8 %call to i32
  %61 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %62 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %62 to i32
  %conv1.i.i32.1 = zext i8 %61 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %63 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %63 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %64 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %64 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %65 = load i8, i8* %scevgep.4, align 1
  %conv.i.i31.4 = zext i8 %65 to i32
  %conv1.i.i32.4 = zext i8 %conv2.i.i34.3 to i32
  %xor.i.i33.4 = xor i32 %conv1.i.i32.4, %conv.i.i31.4
  %conv2.i.i34.4 = trunc i32 %xor.i.i33.4 to i8
  %scevgep.5 = getelementptr i8, i8* %x, i64 5
  %66 = load i8, i8* %scevgep.5, align 1
  %conv.i.i31.5 = zext i8 %66 to i32
  %conv1.i.i32.5 = zext i8 %conv2.i.i34.4 to i32
  %xor.i.i33.5 = xor i32 %conv1.i.i32.5, %conv.i.i31.5
  %conv2.i.i34.5 = trunc i32 %xor.i.i33.5 to i8
  %scevgep.6 = getelementptr i8, i8* %x, i64 6
  %67 = load i8, i8* %scevgep.6, align 1
  %conv.i.i31.6 = zext i8 %67 to i32
  %conv1.i.i32.6 = zext i8 %conv2.i.i34.5 to i32
  %xor.i.i33.6 = xor i32 %conv1.i.i32.6, %conv.i.i31.6
  %conv2.i.i34.6 = trunc i32 %xor.i.i33.6 to i8
  %scevgep.7 = getelementptr i8, i8* %x, i64 7
  %68 = load i8, i8* %scevgep.7, align 1
  %conv.i.i31.7 = zext i8 %68 to i32
  %conv1.i.i32.7 = zext i8 %conv2.i.i34.6 to i32
  %xor.i.i33.7 = xor i32 %conv1.i.i32.7, %conv.i.i31.7
  %conv2.i.i34.7 = trunc i32 %xor.i.i33.7 to i8
  %scevgep.8 = getelementptr i8, i8* %x, i64 8
  %69 = load i8, i8* %scevgep.8, align 1
  %conv.i.i31.8 = zext i8 %69 to i32
  %conv1.i.i32.8 = zext i8 %conv2.i.i34.7 to i32
  %xor.i.i33.8 = xor i32 %conv1.i.i32.8, %conv.i.i31.8
  %conv2.i.i34.8 = trunc i32 %xor.i.i33.8 to i8
  %scevgep.9 = getelementptr i8, i8* %x, i64 9
  %70 = load i8, i8* %scevgep.9, align 1
  %conv.i.i31.9 = zext i8 %70 to i32
  %conv1.i.i32.9 = zext i8 %conv2.i.i34.8 to i32
  %xor.i.i33.9 = xor i32 %conv1.i.i32.9, %conv.i.i31.9
  %conv2.i.i34.9 = trunc i32 %xor.i.i33.9 to i8
  %scevgep.10 = getelementptr i8, i8* %x, i64 10
  %71 = load i8, i8* %scevgep.10, align 1
  %conv.i.i31.10 = zext i8 %71 to i32
  %conv1.i.i32.10 = zext i8 %conv2.i.i34.9 to i32
  %xor.i.i33.10 = xor i32 %conv1.i.i32.10, %conv.i.i31.10
  %conv2.i.i34.10 = trunc i32 %xor.i.i33.10 to i8
  %scevgep.11 = getelementptr i8, i8* %x, i64 11
  %72 = load i8, i8* %scevgep.11, align 1
  %conv.i.i31.11 = zext i8 %72 to i32
  %conv1.i.i32.11 = zext i8 %conv2.i.i34.10 to i32
  %xor.i.i33.11 = xor i32 %conv1.i.i32.11, %conv.i.i31.11
  %conv2.i.i34.11 = trunc i32 %xor.i.i33.11 to i8
  %scevgep.12 = getelementptr i8, i8* %x, i64 12
  %73 = load i8, i8* %scevgep.12, align 1
  %conv.i.i31.12 = zext i8 %73 to i32
  %conv1.i.i32.12 = zext i8 %conv2.i.i34.11 to i32
  %xor.i.i33.12 = xor i32 %conv1.i.i32.12, %conv.i.i31.12
  %conv2.i.i34.12 = trunc i32 %xor.i.i33.12 to i8
  %scevgep.13 = getelementptr i8, i8* %x, i64 13
  %74 = load i8, i8* %scevgep.13, align 1
  %conv.i.i31.13 = zext i8 %74 to i32
  %conv1.i.i32.13 = zext i8 %conv2.i.i34.12 to i32
  %xor.i.i33.13 = xor i32 %conv1.i.i32.13, %conv.i.i31.13
  %conv2.i.i34.13 = trunc i32 %xor.i.i33.13 to i8
  %scevgep.14 = getelementptr i8, i8* %x, i64 14
  %75 = load i8, i8* %scevgep.14, align 1
  %conv.i.i31.14 = zext i8 %75 to i32
  %conv1.i.i32.14 = zext i8 %conv2.i.i34.13 to i32
  %xor.i.i33.14 = xor i32 %conv1.i.i32.14, %conv.i.i31.14
  %conv2.i.i34.14 = trunc i32 %xor.i.i33.14 to i8
  %scevgep.15 = getelementptr i8, i8* %x, i64 15
  %76 = load i8, i8* %scevgep.15, align 1
  %conv.i.i31.15 = zext i8 %76 to i32
  %conv1.i.i32.15 = zext i8 %conv2.i.i34.14 to i32
  %xor.i.i33.15 = xor i32 %conv1.i.i32.15, %conv.i.i31.15
  %conv2.i.i34.15 = trunc i32 %xor.i.i33.15 to i8
  %scevgep.16 = getelementptr i8, i8* %x, i64 16
  %77 = load i8, i8* %scevgep.16, align 1
  %conv.i.i31.16 = zext i8 %77 to i32
  %conv1.i.i32.16 = zext i8 %conv2.i.i34.15 to i32
  %xor.i.i33.16 = xor i32 %conv1.i.i32.16, %conv.i.i31.16
  %conv2.i.i34.16 = trunc i32 %xor.i.i33.16 to i8
  %scevgep.17 = getelementptr i8, i8* %x, i64 17
  %78 = load i8, i8* %scevgep.17, align 1
  %conv.i.i31.17 = zext i8 %78 to i32
  %conv1.i.i32.17 = zext i8 %conv2.i.i34.16 to i32
  %xor.i.i33.17 = xor i32 %conv1.i.i32.17, %conv.i.i31.17
  %conv2.i.i34.17 = trunc i32 %xor.i.i33.17 to i8
  %scevgep.18 = getelementptr i8, i8* %x, i64 18
  %79 = load i8, i8* %scevgep.18, align 1
  %conv.i.i31.18 = zext i8 %79 to i32
  %conv1.i.i32.18 = zext i8 %conv2.i.i34.17 to i32
  %xor.i.i33.18 = xor i32 %conv1.i.i32.18, %conv.i.i31.18
  %conv2.i.i34.18 = trunc i32 %xor.i.i33.18 to i8
  %scevgep.19 = getelementptr i8, i8* %x, i64 19
  %80 = load i8, i8* %scevgep.19, align 1
  %conv.i.i31.19 = zext i8 %80 to i32
  %conv1.i.i32.19 = zext i8 %conv2.i.i34.18 to i32
  %xor.i.i33.19 = xor i32 %conv1.i.i32.19, %conv.i.i31.19
  %conv2.i.i34.19 = trunc i32 %xor.i.i33.19 to i8
  %scevgep.20 = getelementptr i8, i8* %x, i64 20
  %81 = load i8, i8* %scevgep.20, align 1
  %conv.i.i31.20 = zext i8 %81 to i32
  %conv1.i.i32.20 = zext i8 %conv2.i.i34.19 to i32
  %xor.i.i33.20 = xor i32 %conv1.i.i32.20, %conv.i.i31.20
  %conv2.i.i34.20 = trunc i32 %xor.i.i33.20 to i8
  %conv18 = zext i8 %conv2.i.i34.20 to i32
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
