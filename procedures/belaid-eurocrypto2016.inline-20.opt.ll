; ModuleID = '../examples/belaid-eurocrypto2016.inline-20.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 20, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [36 x i8] c"../examples/belaid-eurocrypto2016.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %alpha = alloca [21 x [21 x i8]], align 16
  %t = alloca [21 x [21 x i8]], align 16
  %r = alloca [21 x [21 x i8]], align 16
  %rr = alloca [21 x i8], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep48.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep48.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep48.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep48.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep48.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep48.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep48.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep48.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep48.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep48.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep48.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep48.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep48.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep48.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep48.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep48.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep48.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep48.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep48.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep48.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %scevgep48.11 = getelementptr i8, i8* %a, i64 11
  %11 = load i8, i8* %scevgep48.11, align 1
  %conv.i.i.11 = zext i8 %11 to i32
  %conv1.i.i.11 = zext i8 %conv2.i.i.10 to i32
  %xor.i.i.11 = xor i32 %conv1.i.i.11, %conv.i.i.11
  %conv2.i.i.11 = trunc i32 %xor.i.i.11 to i8
  %scevgep48.12 = getelementptr i8, i8* %a, i64 12
  %12 = load i8, i8* %scevgep48.12, align 1
  %conv.i.i.12 = zext i8 %12 to i32
  %conv1.i.i.12 = zext i8 %conv2.i.i.11 to i32
  %xor.i.i.12 = xor i32 %conv1.i.i.12, %conv.i.i.12
  %conv2.i.i.12 = trunc i32 %xor.i.i.12 to i8
  %scevgep48.13 = getelementptr i8, i8* %a, i64 13
  %13 = load i8, i8* %scevgep48.13, align 1
  %conv.i.i.13 = zext i8 %13 to i32
  %conv1.i.i.13 = zext i8 %conv2.i.i.12 to i32
  %xor.i.i.13 = xor i32 %conv1.i.i.13, %conv.i.i.13
  %conv2.i.i.13 = trunc i32 %xor.i.i.13 to i8
  %scevgep48.14 = getelementptr i8, i8* %a, i64 14
  %14 = load i8, i8* %scevgep48.14, align 1
  %conv.i.i.14 = zext i8 %14 to i32
  %conv1.i.i.14 = zext i8 %conv2.i.i.13 to i32
  %xor.i.i.14 = xor i32 %conv1.i.i.14, %conv.i.i.14
  %conv2.i.i.14 = trunc i32 %xor.i.i.14 to i8
  %scevgep48.15 = getelementptr i8, i8* %a, i64 15
  %15 = load i8, i8* %scevgep48.15, align 1
  %conv.i.i.15 = zext i8 %15 to i32
  %conv1.i.i.15 = zext i8 %conv2.i.i.14 to i32
  %xor.i.i.15 = xor i32 %conv1.i.i.15, %conv.i.i.15
  %conv2.i.i.15 = trunc i32 %xor.i.i.15 to i8
  %scevgep48.16 = getelementptr i8, i8* %a, i64 16
  %16 = load i8, i8* %scevgep48.16, align 1
  %conv.i.i.16 = zext i8 %16 to i32
  %conv1.i.i.16 = zext i8 %conv2.i.i.15 to i32
  %xor.i.i.16 = xor i32 %conv1.i.i.16, %conv.i.i.16
  %conv2.i.i.16 = trunc i32 %xor.i.i.16 to i8
  %scevgep48.17 = getelementptr i8, i8* %a, i64 17
  %17 = load i8, i8* %scevgep48.17, align 1
  %conv.i.i.17 = zext i8 %17 to i32
  %conv1.i.i.17 = zext i8 %conv2.i.i.16 to i32
  %xor.i.i.17 = xor i32 %conv1.i.i.17, %conv.i.i.17
  %conv2.i.i.17 = trunc i32 %xor.i.i.17 to i8
  %scevgep48.18 = getelementptr i8, i8* %a, i64 18
  %18 = load i8, i8* %scevgep48.18, align 1
  %conv.i.i.18 = zext i8 %18 to i32
  %conv1.i.i.18 = zext i8 %conv2.i.i.17 to i32
  %xor.i.i.18 = xor i32 %conv1.i.i.18, %conv.i.i.18
  %conv2.i.i.18 = trunc i32 %xor.i.i.18 to i8
  %scevgep48.19 = getelementptr i8, i8* %a, i64 19
  %19 = load i8, i8* %scevgep48.19, align 1
  %conv.i.i.19 = zext i8 %19 to i32
  %conv1.i.i.19 = zext i8 %conv2.i.i.18 to i32
  %xor.i.i.19 = xor i32 %conv1.i.i.19, %conv.i.i.19
  %conv2.i.i.19 = trunc i32 %xor.i.i.19 to i8
  %scevgep48.20 = getelementptr i8, i8* %a, i64 20
  %20 = load i8, i8* %scevgep48.20, align 1
  %conv.i.i.20 = zext i8 %20 to i32
  %conv1.i.i.20 = zext i8 %conv2.i.i.19 to i32
  %xor.i.i.20 = xor i32 %conv1.i.i.20, %conv.i.i.20
  %conv2.i.i.20 = trunc i32 %xor.i.i.20 to i8
  %conv3 = zext i8 %conv2.i.i.20 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %21 = load i8, i8* %b, align 1
  %scevgep44.1 = getelementptr i8, i8* %b, i64 1
  %22 = load i8, i8* %scevgep44.1, align 1
  %conv.i.i218.1 = zext i8 %22 to i32
  %conv1.i.i219.1 = zext i8 %21 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep44.2 = getelementptr i8, i8* %b, i64 2
  %23 = load i8, i8* %scevgep44.2, align 1
  %conv.i.i218.2 = zext i8 %23 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep44.3 = getelementptr i8, i8* %b, i64 3
  %24 = load i8, i8* %scevgep44.3, align 1
  %conv.i.i218.3 = zext i8 %24 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %scevgep44.4 = getelementptr i8, i8* %b, i64 4
  %25 = load i8, i8* %scevgep44.4, align 1
  %conv.i.i218.4 = zext i8 %25 to i32
  %conv1.i.i219.4 = zext i8 %conv2.i.i221.3 to i32
  %xor.i.i220.4 = xor i32 %conv1.i.i219.4, %conv.i.i218.4
  %conv2.i.i221.4 = trunc i32 %xor.i.i220.4 to i8
  %scevgep44.5 = getelementptr i8, i8* %b, i64 5
  %26 = load i8, i8* %scevgep44.5, align 1
  %conv.i.i218.5 = zext i8 %26 to i32
  %conv1.i.i219.5 = zext i8 %conv2.i.i221.4 to i32
  %xor.i.i220.5 = xor i32 %conv1.i.i219.5, %conv.i.i218.5
  %conv2.i.i221.5 = trunc i32 %xor.i.i220.5 to i8
  %scevgep44.6 = getelementptr i8, i8* %b, i64 6
  %27 = load i8, i8* %scevgep44.6, align 1
  %conv.i.i218.6 = zext i8 %27 to i32
  %conv1.i.i219.6 = zext i8 %conv2.i.i221.5 to i32
  %xor.i.i220.6 = xor i32 %conv1.i.i219.6, %conv.i.i218.6
  %conv2.i.i221.6 = trunc i32 %xor.i.i220.6 to i8
  %scevgep44.7 = getelementptr i8, i8* %b, i64 7
  %28 = load i8, i8* %scevgep44.7, align 1
  %conv.i.i218.7 = zext i8 %28 to i32
  %conv1.i.i219.7 = zext i8 %conv2.i.i221.6 to i32
  %xor.i.i220.7 = xor i32 %conv1.i.i219.7, %conv.i.i218.7
  %conv2.i.i221.7 = trunc i32 %xor.i.i220.7 to i8
  %scevgep44.8 = getelementptr i8, i8* %b, i64 8
  %29 = load i8, i8* %scevgep44.8, align 1
  %conv.i.i218.8 = zext i8 %29 to i32
  %conv1.i.i219.8 = zext i8 %conv2.i.i221.7 to i32
  %xor.i.i220.8 = xor i32 %conv1.i.i219.8, %conv.i.i218.8
  %conv2.i.i221.8 = trunc i32 %xor.i.i220.8 to i8
  %scevgep44.9 = getelementptr i8, i8* %b, i64 9
  %30 = load i8, i8* %scevgep44.9, align 1
  %conv.i.i218.9 = zext i8 %30 to i32
  %conv1.i.i219.9 = zext i8 %conv2.i.i221.8 to i32
  %xor.i.i220.9 = xor i32 %conv1.i.i219.9, %conv.i.i218.9
  %conv2.i.i221.9 = trunc i32 %xor.i.i220.9 to i8
  %scevgep44.10 = getelementptr i8, i8* %b, i64 10
  %31 = load i8, i8* %scevgep44.10, align 1
  %conv.i.i218.10 = zext i8 %31 to i32
  %conv1.i.i219.10 = zext i8 %conv2.i.i221.9 to i32
  %xor.i.i220.10 = xor i32 %conv1.i.i219.10, %conv.i.i218.10
  %conv2.i.i221.10 = trunc i32 %xor.i.i220.10 to i8
  %scevgep44.11 = getelementptr i8, i8* %b, i64 11
  %32 = load i8, i8* %scevgep44.11, align 1
  %conv.i.i218.11 = zext i8 %32 to i32
  %conv1.i.i219.11 = zext i8 %conv2.i.i221.10 to i32
  %xor.i.i220.11 = xor i32 %conv1.i.i219.11, %conv.i.i218.11
  %conv2.i.i221.11 = trunc i32 %xor.i.i220.11 to i8
  %scevgep44.12 = getelementptr i8, i8* %b, i64 12
  %33 = load i8, i8* %scevgep44.12, align 1
  %conv.i.i218.12 = zext i8 %33 to i32
  %conv1.i.i219.12 = zext i8 %conv2.i.i221.11 to i32
  %xor.i.i220.12 = xor i32 %conv1.i.i219.12, %conv.i.i218.12
  %conv2.i.i221.12 = trunc i32 %xor.i.i220.12 to i8
  %scevgep44.13 = getelementptr i8, i8* %b, i64 13
  %34 = load i8, i8* %scevgep44.13, align 1
  %conv.i.i218.13 = zext i8 %34 to i32
  %conv1.i.i219.13 = zext i8 %conv2.i.i221.12 to i32
  %xor.i.i220.13 = xor i32 %conv1.i.i219.13, %conv.i.i218.13
  %conv2.i.i221.13 = trunc i32 %xor.i.i220.13 to i8
  %scevgep44.14 = getelementptr i8, i8* %b, i64 14
  %35 = load i8, i8* %scevgep44.14, align 1
  %conv.i.i218.14 = zext i8 %35 to i32
  %conv1.i.i219.14 = zext i8 %conv2.i.i221.13 to i32
  %xor.i.i220.14 = xor i32 %conv1.i.i219.14, %conv.i.i218.14
  %conv2.i.i221.14 = trunc i32 %xor.i.i220.14 to i8
  %scevgep44.15 = getelementptr i8, i8* %b, i64 15
  %36 = load i8, i8* %scevgep44.15, align 1
  %conv.i.i218.15 = zext i8 %36 to i32
  %conv1.i.i219.15 = zext i8 %conv2.i.i221.14 to i32
  %xor.i.i220.15 = xor i32 %conv1.i.i219.15, %conv.i.i218.15
  %conv2.i.i221.15 = trunc i32 %xor.i.i220.15 to i8
  %scevgep44.16 = getelementptr i8, i8* %b, i64 16
  %37 = load i8, i8* %scevgep44.16, align 1
  %conv.i.i218.16 = zext i8 %37 to i32
  %conv1.i.i219.16 = zext i8 %conv2.i.i221.15 to i32
  %xor.i.i220.16 = xor i32 %conv1.i.i219.16, %conv.i.i218.16
  %conv2.i.i221.16 = trunc i32 %xor.i.i220.16 to i8
  %scevgep44.17 = getelementptr i8, i8* %b, i64 17
  %38 = load i8, i8* %scevgep44.17, align 1
  %conv.i.i218.17 = zext i8 %38 to i32
  %conv1.i.i219.17 = zext i8 %conv2.i.i221.16 to i32
  %xor.i.i220.17 = xor i32 %conv1.i.i219.17, %conv.i.i218.17
  %conv2.i.i221.17 = trunc i32 %xor.i.i220.17 to i8
  %scevgep44.18 = getelementptr i8, i8* %b, i64 18
  %39 = load i8, i8* %scevgep44.18, align 1
  %conv.i.i218.18 = zext i8 %39 to i32
  %conv1.i.i219.18 = zext i8 %conv2.i.i221.17 to i32
  %xor.i.i220.18 = xor i32 %conv1.i.i219.18, %conv.i.i218.18
  %conv2.i.i221.18 = trunc i32 %xor.i.i220.18 to i8
  %scevgep44.19 = getelementptr i8, i8* %b, i64 19
  %40 = load i8, i8* %scevgep44.19, align 1
  %conv.i.i218.19 = zext i8 %40 to i32
  %conv1.i.i219.19 = zext i8 %conv2.i.i221.18 to i32
  %xor.i.i220.19 = xor i32 %conv1.i.i219.19, %conv.i.i218.19
  %conv2.i.i221.19 = trunc i32 %xor.i.i220.19 to i8
  %scevgep44.20 = getelementptr i8, i8* %b, i64 20
  %41 = load i8, i8* %scevgep44.20, align 1
  %conv.i.i218.20 = zext i8 %41 to i32
  %conv1.i.i219.20 = zext i8 %conv2.i.i221.19 to i32
  %xor.i.i220.20 = xor i32 %conv1.i.i219.20, %conv.i.i218.20
  %conv2.i.i221.20 = trunc i32 %xor.i.i220.20 to i8
  %conv7 = zext i8 %conv2.i.i221.20 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %42 = load i8, i8* %a, align 1
  %43 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep40 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep40, align 1
  %44 = load i8, i8* %a, align 1
  %scevgep37.1 = getelementptr i8, i8* %b, i64 1
  %45 = load i8, i8* %scevgep37.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45)
  %scevgep40.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep40.1, align 1
  %46 = load i8, i8* %a, align 1
  %scevgep37.2 = getelementptr i8, i8* %b, i64 2
  %47 = load i8, i8* %scevgep37.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %scevgep40.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep40.2, align 1
  %48 = load i8, i8* %a, align 1
  %scevgep37.3 = getelementptr i8, i8* %b, i64 3
  %49 = load i8, i8* %scevgep37.3, align 1
  %call18.3 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49)
  %scevgep40.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 3
  store i8 %call18.3, i8* %scevgep40.3, align 1
  %50 = load i8, i8* %a, align 1
  %scevgep37.4 = getelementptr i8, i8* %b, i64 4
  %51 = load i8, i8* %scevgep37.4, align 1
  %call18.4 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51)
  %scevgep40.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 4
  store i8 %call18.4, i8* %scevgep40.4, align 1
  %52 = load i8, i8* %a, align 1
  %scevgep37.5 = getelementptr i8, i8* %b, i64 5
  %53 = load i8, i8* %scevgep37.5, align 1
  %call18.5 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53)
  %scevgep40.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 5
  store i8 %call18.5, i8* %scevgep40.5, align 1
  %54 = load i8, i8* %a, align 1
  %scevgep37.6 = getelementptr i8, i8* %b, i64 6
  %55 = load i8, i8* %scevgep37.6, align 1
  %call18.6 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55)
  %scevgep40.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 6
  store i8 %call18.6, i8* %scevgep40.6, align 1
  %56 = load i8, i8* %a, align 1
  %scevgep37.7 = getelementptr i8, i8* %b, i64 7
  %57 = load i8, i8* %scevgep37.7, align 1
  %call18.7 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57)
  %scevgep40.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 7
  store i8 %call18.7, i8* %scevgep40.7, align 1
  %58 = load i8, i8* %a, align 1
  %scevgep37.8 = getelementptr i8, i8* %b, i64 8
  %59 = load i8, i8* %scevgep37.8, align 1
  %call18.8 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %scevgep40.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 8
  store i8 %call18.8, i8* %scevgep40.8, align 1
  %60 = load i8, i8* %a, align 1
  %scevgep37.9 = getelementptr i8, i8* %b, i64 9
  %61 = load i8, i8* %scevgep37.9, align 1
  %call18.9 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61)
  %scevgep40.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 9
  store i8 %call18.9, i8* %scevgep40.9, align 1
  %62 = load i8, i8* %a, align 1
  %scevgep37.10 = getelementptr i8, i8* %b, i64 10
  %63 = load i8, i8* %scevgep37.10, align 1
  %call18.10 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63)
  %scevgep40.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 10
  store i8 %call18.10, i8* %scevgep40.10, align 1
  %64 = load i8, i8* %a, align 1
  %scevgep37.11 = getelementptr i8, i8* %b, i64 11
  %65 = load i8, i8* %scevgep37.11, align 1
  %call18.11 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65)
  %scevgep40.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 11
  store i8 %call18.11, i8* %scevgep40.11, align 1
  %66 = load i8, i8* %a, align 1
  %scevgep37.12 = getelementptr i8, i8* %b, i64 12
  %67 = load i8, i8* %scevgep37.12, align 1
  %call18.12 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %scevgep40.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 12
  store i8 %call18.12, i8* %scevgep40.12, align 1
  %68 = load i8, i8* %a, align 1
  %scevgep37.13 = getelementptr i8, i8* %b, i64 13
  %69 = load i8, i8* %scevgep37.13, align 1
  %call18.13 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69)
  %scevgep40.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 13
  store i8 %call18.13, i8* %scevgep40.13, align 1
  %70 = load i8, i8* %a, align 1
  %scevgep37.14 = getelementptr i8, i8* %b, i64 14
  %71 = load i8, i8* %scevgep37.14, align 1
  %call18.14 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  %scevgep40.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 14
  store i8 %call18.14, i8* %scevgep40.14, align 1
  %72 = load i8, i8* %a, align 1
  %scevgep37.15 = getelementptr i8, i8* %b, i64 15
  %73 = load i8, i8* %scevgep37.15, align 1
  %call18.15 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73)
  %scevgep40.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 15
  store i8 %call18.15, i8* %scevgep40.15, align 1
  %74 = load i8, i8* %a, align 1
  %scevgep37.16 = getelementptr i8, i8* %b, i64 16
  %75 = load i8, i8* %scevgep37.16, align 1
  %call18.16 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %scevgep40.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 16
  store i8 %call18.16, i8* %scevgep40.16, align 1
  %76 = load i8, i8* %a, align 1
  %scevgep37.17 = getelementptr i8, i8* %b, i64 17
  %77 = load i8, i8* %scevgep37.17, align 1
  %call18.17 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77)
  %scevgep40.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 17
  store i8 %call18.17, i8* %scevgep40.17, align 1
  %78 = load i8, i8* %a, align 1
  %scevgep37.18 = getelementptr i8, i8* %b, i64 18
  %79 = load i8, i8* %scevgep37.18, align 1
  %call18.18 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79)
  %scevgep40.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 18
  store i8 %call18.18, i8* %scevgep40.18, align 1
  %80 = load i8, i8* %a, align 1
  %scevgep37.19 = getelementptr i8, i8* %b, i64 19
  %81 = load i8, i8* %scevgep37.19, align 1
  %call18.19 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81)
  %scevgep40.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 19
  store i8 %call18.19, i8* %scevgep40.19, align 1
  %82 = load i8, i8* %a, align 1
  %scevgep37.20 = getelementptr i8, i8* %b, i64 20
  %83 = load i8, i8* %scevgep37.20, align 1
  %call18.20 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83)
  %scevgep40.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 20
  store i8 %call18.20, i8* %scevgep40.20, align 1
  %scevgep39 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 1, i64 0
  %84 = bitcast i8* %scevgep39 to [21 x [21 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %85 = load i8, i8* %arrayidx.1, align 1
  %86 = load i8, i8* %b, align 1
  %call18.150 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86)
  %scevgep40.151 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 0
  store i8 %call18.150, i8* %scevgep40.151, align 1
  %87 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.1.1 = getelementptr i8, i8* %b, i64 1
  %88 = load i8, i8* %scevgep37.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88)
  %scevgep40.1.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep40.1.1, align 1
  %89 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.2.1 = getelementptr i8, i8* %b, i64 2
  %90 = load i8, i8* %scevgep37.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90)
  %scevgep40.2.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep40.2.1, align 1
  %91 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.3.1 = getelementptr i8, i8* %b, i64 3
  %92 = load i8, i8* %scevgep37.3.1, align 1
  %call18.3.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %scevgep40.3.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 3
  store i8 %call18.3.1, i8* %scevgep40.3.1, align 1
  %93 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.4.1 = getelementptr i8, i8* %b, i64 4
  %94 = load i8, i8* %scevgep37.4.1, align 1
  %call18.4.1 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94)
  %scevgep40.4.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 4
  store i8 %call18.4.1, i8* %scevgep40.4.1, align 1
  %95 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.5.1 = getelementptr i8, i8* %b, i64 5
  %96 = load i8, i8* %scevgep37.5.1, align 1
  %call18.5.1 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96)
  %scevgep40.5.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 5
  store i8 %call18.5.1, i8* %scevgep40.5.1, align 1
  %97 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.6.1 = getelementptr i8, i8* %b, i64 6
  %98 = load i8, i8* %scevgep37.6.1, align 1
  %call18.6.1 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98)
  %scevgep40.6.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 6
  store i8 %call18.6.1, i8* %scevgep40.6.1, align 1
  %99 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.7.1 = getelementptr i8, i8* %b, i64 7
  %100 = load i8, i8* %scevgep37.7.1, align 1
  %call18.7.1 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100)
  %scevgep40.7.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 7
  store i8 %call18.7.1, i8* %scevgep40.7.1, align 1
  %101 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.8.1 = getelementptr i8, i8* %b, i64 8
  %102 = load i8, i8* %scevgep37.8.1, align 1
  %call18.8.1 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102)
  %scevgep40.8.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 8
  store i8 %call18.8.1, i8* %scevgep40.8.1, align 1
  %103 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.9.1 = getelementptr i8, i8* %b, i64 9
  %104 = load i8, i8* %scevgep37.9.1, align 1
  %call18.9.1 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104)
  %scevgep40.9.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 9
  store i8 %call18.9.1, i8* %scevgep40.9.1, align 1
  %105 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.10.1 = getelementptr i8, i8* %b, i64 10
  %106 = load i8, i8* %scevgep37.10.1, align 1
  %call18.10.1 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106)
  %scevgep40.10.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 10
  store i8 %call18.10.1, i8* %scevgep40.10.1, align 1
  %107 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.11.1 = getelementptr i8, i8* %b, i64 11
  %108 = load i8, i8* %scevgep37.11.1, align 1
  %call18.11.1 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108)
  %scevgep40.11.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 11
  store i8 %call18.11.1, i8* %scevgep40.11.1, align 1
  %109 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.12.1 = getelementptr i8, i8* %b, i64 12
  %110 = load i8, i8* %scevgep37.12.1, align 1
  %call18.12.1 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110)
  %scevgep40.12.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 12
  store i8 %call18.12.1, i8* %scevgep40.12.1, align 1
  %111 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.13.1 = getelementptr i8, i8* %b, i64 13
  %112 = load i8, i8* %scevgep37.13.1, align 1
  %call18.13.1 = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112)
  %scevgep40.13.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 13
  store i8 %call18.13.1, i8* %scevgep40.13.1, align 1
  %113 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.14.1 = getelementptr i8, i8* %b, i64 14
  %114 = load i8, i8* %scevgep37.14.1, align 1
  %call18.14.1 = call zeroext i8 @mult(i8 zeroext %113, i8 zeroext %114)
  %scevgep40.14.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 14
  store i8 %call18.14.1, i8* %scevgep40.14.1, align 1
  %115 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.15.1 = getelementptr i8, i8* %b, i64 15
  %116 = load i8, i8* %scevgep37.15.1, align 1
  %call18.15.1 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116)
  %scevgep40.15.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 15
  store i8 %call18.15.1, i8* %scevgep40.15.1, align 1
  %117 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.16.1 = getelementptr i8, i8* %b, i64 16
  %118 = load i8, i8* %scevgep37.16.1, align 1
  %call18.16.1 = call zeroext i8 @mult(i8 zeroext %117, i8 zeroext %118)
  %scevgep40.16.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 16
  store i8 %call18.16.1, i8* %scevgep40.16.1, align 1
  %119 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.17.1 = getelementptr i8, i8* %b, i64 17
  %120 = load i8, i8* %scevgep37.17.1, align 1
  %call18.17.1 = call zeroext i8 @mult(i8 zeroext %119, i8 zeroext %120)
  %scevgep40.17.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 17
  store i8 %call18.17.1, i8* %scevgep40.17.1, align 1
  %121 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.18.1 = getelementptr i8, i8* %b, i64 18
  %122 = load i8, i8* %scevgep37.18.1, align 1
  %call18.18.1 = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %122)
  %scevgep40.18.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 18
  store i8 %call18.18.1, i8* %scevgep40.18.1, align 1
  %123 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.19.1 = getelementptr i8, i8* %b, i64 19
  %124 = load i8, i8* %scevgep37.19.1, align 1
  %call18.19.1 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124)
  %scevgep40.19.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 19
  store i8 %call18.19.1, i8* %scevgep40.19.1, align 1
  %125 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.20.1 = getelementptr i8, i8* %b, i64 20
  %126 = load i8, i8* %scevgep37.20.1, align 1
  %call18.20.1 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126)
  %scevgep40.20.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 0, i64 20
  store i8 %call18.20.1, i8* %scevgep40.20.1, align 1
  %scevgep39.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %84, i64 0, i64 1, i64 0
  %127 = bitcast i8* %scevgep39.1 to [21 x [21 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %128 = load i8, i8* %arrayidx.2, align 1
  %129 = load i8, i8* %b, align 1
  %call18.253 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129)
  %scevgep40.254 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 0
  store i8 %call18.253, i8* %scevgep40.254, align 1
  %130 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.1.2 = getelementptr i8, i8* %b, i64 1
  %131 = load i8, i8* %scevgep37.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131)
  %scevgep40.1.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep40.1.2, align 1
  %132 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.2.2 = getelementptr i8, i8* %b, i64 2
  %133 = load i8, i8* %scevgep37.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133)
  %scevgep40.2.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep40.2.2, align 1
  %134 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.3.2 = getelementptr i8, i8* %b, i64 3
  %135 = load i8, i8* %scevgep37.3.2, align 1
  %call18.3.2 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135)
  %scevgep40.3.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 3
  store i8 %call18.3.2, i8* %scevgep40.3.2, align 1
  %136 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.4.2 = getelementptr i8, i8* %b, i64 4
  %137 = load i8, i8* %scevgep37.4.2, align 1
  %call18.4.2 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137)
  %scevgep40.4.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 4
  store i8 %call18.4.2, i8* %scevgep40.4.2, align 1
  %138 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.5.2 = getelementptr i8, i8* %b, i64 5
  %139 = load i8, i8* %scevgep37.5.2, align 1
  %call18.5.2 = call zeroext i8 @mult(i8 zeroext %138, i8 zeroext %139)
  %scevgep40.5.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 5
  store i8 %call18.5.2, i8* %scevgep40.5.2, align 1
  %140 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.6.2 = getelementptr i8, i8* %b, i64 6
  %141 = load i8, i8* %scevgep37.6.2, align 1
  %call18.6.2 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141)
  %scevgep40.6.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 6
  store i8 %call18.6.2, i8* %scevgep40.6.2, align 1
  %142 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.7.2 = getelementptr i8, i8* %b, i64 7
  %143 = load i8, i8* %scevgep37.7.2, align 1
  %call18.7.2 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143)
  %scevgep40.7.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 7
  store i8 %call18.7.2, i8* %scevgep40.7.2, align 1
  %144 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.8.2 = getelementptr i8, i8* %b, i64 8
  %145 = load i8, i8* %scevgep37.8.2, align 1
  %call18.8.2 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145)
  %scevgep40.8.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 8
  store i8 %call18.8.2, i8* %scevgep40.8.2, align 1
  %146 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.9.2 = getelementptr i8, i8* %b, i64 9
  %147 = load i8, i8* %scevgep37.9.2, align 1
  %call18.9.2 = call zeroext i8 @mult(i8 zeroext %146, i8 zeroext %147)
  %scevgep40.9.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 9
  store i8 %call18.9.2, i8* %scevgep40.9.2, align 1
  %148 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.10.2 = getelementptr i8, i8* %b, i64 10
  %149 = load i8, i8* %scevgep37.10.2, align 1
  %call18.10.2 = call zeroext i8 @mult(i8 zeroext %148, i8 zeroext %149)
  %scevgep40.10.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 10
  store i8 %call18.10.2, i8* %scevgep40.10.2, align 1
  %150 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.11.2 = getelementptr i8, i8* %b, i64 11
  %151 = load i8, i8* %scevgep37.11.2, align 1
  %call18.11.2 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %151)
  %scevgep40.11.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 11
  store i8 %call18.11.2, i8* %scevgep40.11.2, align 1
  %152 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.12.2 = getelementptr i8, i8* %b, i64 12
  %153 = load i8, i8* %scevgep37.12.2, align 1
  %call18.12.2 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153)
  %scevgep40.12.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 12
  store i8 %call18.12.2, i8* %scevgep40.12.2, align 1
  %154 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.13.2 = getelementptr i8, i8* %b, i64 13
  %155 = load i8, i8* %scevgep37.13.2, align 1
  %call18.13.2 = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155)
  %scevgep40.13.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 13
  store i8 %call18.13.2, i8* %scevgep40.13.2, align 1
  %156 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.14.2 = getelementptr i8, i8* %b, i64 14
  %157 = load i8, i8* %scevgep37.14.2, align 1
  %call18.14.2 = call zeroext i8 @mult(i8 zeroext %156, i8 zeroext %157)
  %scevgep40.14.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 14
  store i8 %call18.14.2, i8* %scevgep40.14.2, align 1
  %158 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.15.2 = getelementptr i8, i8* %b, i64 15
  %159 = load i8, i8* %scevgep37.15.2, align 1
  %call18.15.2 = call zeroext i8 @mult(i8 zeroext %158, i8 zeroext %159)
  %scevgep40.15.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 15
  store i8 %call18.15.2, i8* %scevgep40.15.2, align 1
  %160 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.16.2 = getelementptr i8, i8* %b, i64 16
  %161 = load i8, i8* %scevgep37.16.2, align 1
  %call18.16.2 = call zeroext i8 @mult(i8 zeroext %160, i8 zeroext %161)
  %scevgep40.16.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 16
  store i8 %call18.16.2, i8* %scevgep40.16.2, align 1
  %162 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.17.2 = getelementptr i8, i8* %b, i64 17
  %163 = load i8, i8* %scevgep37.17.2, align 1
  %call18.17.2 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163)
  %scevgep40.17.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 17
  store i8 %call18.17.2, i8* %scevgep40.17.2, align 1
  %164 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.18.2 = getelementptr i8, i8* %b, i64 18
  %165 = load i8, i8* %scevgep37.18.2, align 1
  %call18.18.2 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165)
  %scevgep40.18.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 18
  store i8 %call18.18.2, i8* %scevgep40.18.2, align 1
  %166 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.19.2 = getelementptr i8, i8* %b, i64 19
  %167 = load i8, i8* %scevgep37.19.2, align 1
  %call18.19.2 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167)
  %scevgep40.19.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 19
  store i8 %call18.19.2, i8* %scevgep40.19.2, align 1
  %168 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.20.2 = getelementptr i8, i8* %b, i64 20
  %169 = load i8, i8* %scevgep37.20.2, align 1
  %call18.20.2 = call zeroext i8 @mult(i8 zeroext %168, i8 zeroext %169)
  %scevgep40.20.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 0, i64 20
  store i8 %call18.20.2, i8* %scevgep40.20.2, align 1
  %scevgep39.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %127, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep39.2 to [21 x [21 x i8]]*
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3
  %171 = load i8, i8* %arrayidx.3, align 1
  %172 = load i8, i8* %b, align 1
  %call18.356 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172)
  %scevgep40.357 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 0
  store i8 %call18.356, i8* %scevgep40.357, align 1
  %173 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.1.3 = getelementptr i8, i8* %b, i64 1
  %174 = load i8, i8* %scevgep37.1.3, align 1
  %call18.1.3 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174)
  %scevgep40.1.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 1
  store i8 %call18.1.3, i8* %scevgep40.1.3, align 1
  %175 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.2.3 = getelementptr i8, i8* %b, i64 2
  %176 = load i8, i8* %scevgep37.2.3, align 1
  %call18.2.3 = call zeroext i8 @mult(i8 zeroext %175, i8 zeroext %176)
  %scevgep40.2.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 2
  store i8 %call18.2.3, i8* %scevgep40.2.3, align 1
  %177 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.3.3 = getelementptr i8, i8* %b, i64 3
  %178 = load i8, i8* %scevgep37.3.3, align 1
  %call18.3.3 = call zeroext i8 @mult(i8 zeroext %177, i8 zeroext %178)
  %scevgep40.3.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 3
  store i8 %call18.3.3, i8* %scevgep40.3.3, align 1
  %179 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.4.3 = getelementptr i8, i8* %b, i64 4
  %180 = load i8, i8* %scevgep37.4.3, align 1
  %call18.4.3 = call zeroext i8 @mult(i8 zeroext %179, i8 zeroext %180)
  %scevgep40.4.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 4
  store i8 %call18.4.3, i8* %scevgep40.4.3, align 1
  %181 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.5.3 = getelementptr i8, i8* %b, i64 5
  %182 = load i8, i8* %scevgep37.5.3, align 1
  %call18.5.3 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182)
  %scevgep40.5.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 5
  store i8 %call18.5.3, i8* %scevgep40.5.3, align 1
  %183 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.6.3 = getelementptr i8, i8* %b, i64 6
  %184 = load i8, i8* %scevgep37.6.3, align 1
  %call18.6.3 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184)
  %scevgep40.6.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 6
  store i8 %call18.6.3, i8* %scevgep40.6.3, align 1
  %185 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.7.3 = getelementptr i8, i8* %b, i64 7
  %186 = load i8, i8* %scevgep37.7.3, align 1
  %call18.7.3 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186)
  %scevgep40.7.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 7
  store i8 %call18.7.3, i8* %scevgep40.7.3, align 1
  %187 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.8.3 = getelementptr i8, i8* %b, i64 8
  %188 = load i8, i8* %scevgep37.8.3, align 1
  %call18.8.3 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188)
  %scevgep40.8.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 8
  store i8 %call18.8.3, i8* %scevgep40.8.3, align 1
  %189 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.9.3 = getelementptr i8, i8* %b, i64 9
  %190 = load i8, i8* %scevgep37.9.3, align 1
  %call18.9.3 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190)
  %scevgep40.9.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 9
  store i8 %call18.9.3, i8* %scevgep40.9.3, align 1
  %191 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.10.3 = getelementptr i8, i8* %b, i64 10
  %192 = load i8, i8* %scevgep37.10.3, align 1
  %call18.10.3 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192)
  %scevgep40.10.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 10
  store i8 %call18.10.3, i8* %scevgep40.10.3, align 1
  %193 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.11.3 = getelementptr i8, i8* %b, i64 11
  %194 = load i8, i8* %scevgep37.11.3, align 1
  %call18.11.3 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194)
  %scevgep40.11.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 11
  store i8 %call18.11.3, i8* %scevgep40.11.3, align 1
  %195 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.12.3 = getelementptr i8, i8* %b, i64 12
  %196 = load i8, i8* %scevgep37.12.3, align 1
  %call18.12.3 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196)
  %scevgep40.12.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 12
  store i8 %call18.12.3, i8* %scevgep40.12.3, align 1
  %197 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.13.3 = getelementptr i8, i8* %b, i64 13
  %198 = load i8, i8* %scevgep37.13.3, align 1
  %call18.13.3 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198)
  %scevgep40.13.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 13
  store i8 %call18.13.3, i8* %scevgep40.13.3, align 1
  %199 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.14.3 = getelementptr i8, i8* %b, i64 14
  %200 = load i8, i8* %scevgep37.14.3, align 1
  %call18.14.3 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200)
  %scevgep40.14.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 14
  store i8 %call18.14.3, i8* %scevgep40.14.3, align 1
  %201 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.15.3 = getelementptr i8, i8* %b, i64 15
  %202 = load i8, i8* %scevgep37.15.3, align 1
  %call18.15.3 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202)
  %scevgep40.15.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 15
  store i8 %call18.15.3, i8* %scevgep40.15.3, align 1
  %203 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.16.3 = getelementptr i8, i8* %b, i64 16
  %204 = load i8, i8* %scevgep37.16.3, align 1
  %call18.16.3 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204)
  %scevgep40.16.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 16
  store i8 %call18.16.3, i8* %scevgep40.16.3, align 1
  %205 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.17.3 = getelementptr i8, i8* %b, i64 17
  %206 = load i8, i8* %scevgep37.17.3, align 1
  %call18.17.3 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206)
  %scevgep40.17.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 17
  store i8 %call18.17.3, i8* %scevgep40.17.3, align 1
  %207 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.18.3 = getelementptr i8, i8* %b, i64 18
  %208 = load i8, i8* %scevgep37.18.3, align 1
  %call18.18.3 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %208)
  %scevgep40.18.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 18
  store i8 %call18.18.3, i8* %scevgep40.18.3, align 1
  %209 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.19.3 = getelementptr i8, i8* %b, i64 19
  %210 = load i8, i8* %scevgep37.19.3, align 1
  %call18.19.3 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210)
  %scevgep40.19.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 19
  store i8 %call18.19.3, i8* %scevgep40.19.3, align 1
  %211 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.20.3 = getelementptr i8, i8* %b, i64 20
  %212 = load i8, i8* %scevgep37.20.3, align 1
  %call18.20.3 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %212)
  %scevgep40.20.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 0, i64 20
  store i8 %call18.20.3, i8* %scevgep40.20.3, align 1
  %scevgep39.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %170, i64 0, i64 1, i64 0
  %213 = bitcast i8* %scevgep39.3 to [21 x [21 x i8]]*
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 4
  %214 = load i8, i8* %arrayidx.4, align 1
  %215 = load i8, i8* %b, align 1
  %call18.459 = call zeroext i8 @mult(i8 zeroext %214, i8 zeroext %215)
  %scevgep40.460 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 0
  store i8 %call18.459, i8* %scevgep40.460, align 1
  %216 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.1.4 = getelementptr i8, i8* %b, i64 1
  %217 = load i8, i8* %scevgep37.1.4, align 1
  %call18.1.4 = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %217)
  %scevgep40.1.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 1
  store i8 %call18.1.4, i8* %scevgep40.1.4, align 1
  %218 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.2.4 = getelementptr i8, i8* %b, i64 2
  %219 = load i8, i8* %scevgep37.2.4, align 1
  %call18.2.4 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219)
  %scevgep40.2.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 2
  store i8 %call18.2.4, i8* %scevgep40.2.4, align 1
  %220 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.3.4 = getelementptr i8, i8* %b, i64 3
  %221 = load i8, i8* %scevgep37.3.4, align 1
  %call18.3.4 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221)
  %scevgep40.3.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 3
  store i8 %call18.3.4, i8* %scevgep40.3.4, align 1
  %222 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.4.4 = getelementptr i8, i8* %b, i64 4
  %223 = load i8, i8* %scevgep37.4.4, align 1
  %call18.4.4 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223)
  %scevgep40.4.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 4
  store i8 %call18.4.4, i8* %scevgep40.4.4, align 1
  %224 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.5.4 = getelementptr i8, i8* %b, i64 5
  %225 = load i8, i8* %scevgep37.5.4, align 1
  %call18.5.4 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225)
  %scevgep40.5.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 5
  store i8 %call18.5.4, i8* %scevgep40.5.4, align 1
  %226 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.6.4 = getelementptr i8, i8* %b, i64 6
  %227 = load i8, i8* %scevgep37.6.4, align 1
  %call18.6.4 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227)
  %scevgep40.6.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 6
  store i8 %call18.6.4, i8* %scevgep40.6.4, align 1
  %228 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.7.4 = getelementptr i8, i8* %b, i64 7
  %229 = load i8, i8* %scevgep37.7.4, align 1
  %call18.7.4 = call zeroext i8 @mult(i8 zeroext %228, i8 zeroext %229)
  %scevgep40.7.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 7
  store i8 %call18.7.4, i8* %scevgep40.7.4, align 1
  %230 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.8.4 = getelementptr i8, i8* %b, i64 8
  %231 = load i8, i8* %scevgep37.8.4, align 1
  %call18.8.4 = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231)
  %scevgep40.8.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 8
  store i8 %call18.8.4, i8* %scevgep40.8.4, align 1
  %232 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.9.4 = getelementptr i8, i8* %b, i64 9
  %233 = load i8, i8* %scevgep37.9.4, align 1
  %call18.9.4 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233)
  %scevgep40.9.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 9
  store i8 %call18.9.4, i8* %scevgep40.9.4, align 1
  %234 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.10.4 = getelementptr i8, i8* %b, i64 10
  %235 = load i8, i8* %scevgep37.10.4, align 1
  %call18.10.4 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235)
  %scevgep40.10.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 10
  store i8 %call18.10.4, i8* %scevgep40.10.4, align 1
  %236 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.11.4 = getelementptr i8, i8* %b, i64 11
  %237 = load i8, i8* %scevgep37.11.4, align 1
  %call18.11.4 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237)
  %scevgep40.11.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 11
  store i8 %call18.11.4, i8* %scevgep40.11.4, align 1
  %238 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.12.4 = getelementptr i8, i8* %b, i64 12
  %239 = load i8, i8* %scevgep37.12.4, align 1
  %call18.12.4 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239)
  %scevgep40.12.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 12
  store i8 %call18.12.4, i8* %scevgep40.12.4, align 1
  %240 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.13.4 = getelementptr i8, i8* %b, i64 13
  %241 = load i8, i8* %scevgep37.13.4, align 1
  %call18.13.4 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241)
  %scevgep40.13.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 13
  store i8 %call18.13.4, i8* %scevgep40.13.4, align 1
  %242 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.14.4 = getelementptr i8, i8* %b, i64 14
  %243 = load i8, i8* %scevgep37.14.4, align 1
  %call18.14.4 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243)
  %scevgep40.14.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 14
  store i8 %call18.14.4, i8* %scevgep40.14.4, align 1
  %244 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.15.4 = getelementptr i8, i8* %b, i64 15
  %245 = load i8, i8* %scevgep37.15.4, align 1
  %call18.15.4 = call zeroext i8 @mult(i8 zeroext %244, i8 zeroext %245)
  %scevgep40.15.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 15
  store i8 %call18.15.4, i8* %scevgep40.15.4, align 1
  %246 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.16.4 = getelementptr i8, i8* %b, i64 16
  %247 = load i8, i8* %scevgep37.16.4, align 1
  %call18.16.4 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247)
  %scevgep40.16.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 16
  store i8 %call18.16.4, i8* %scevgep40.16.4, align 1
  %248 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.17.4 = getelementptr i8, i8* %b, i64 17
  %249 = load i8, i8* %scevgep37.17.4, align 1
  %call18.17.4 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249)
  %scevgep40.17.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 17
  store i8 %call18.17.4, i8* %scevgep40.17.4, align 1
  %250 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.18.4 = getelementptr i8, i8* %b, i64 18
  %251 = load i8, i8* %scevgep37.18.4, align 1
  %call18.18.4 = call zeroext i8 @mult(i8 zeroext %250, i8 zeroext %251)
  %scevgep40.18.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 18
  store i8 %call18.18.4, i8* %scevgep40.18.4, align 1
  %252 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.19.4 = getelementptr i8, i8* %b, i64 19
  %253 = load i8, i8* %scevgep37.19.4, align 1
  %call18.19.4 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253)
  %scevgep40.19.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 19
  store i8 %call18.19.4, i8* %scevgep40.19.4, align 1
  %254 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.20.4 = getelementptr i8, i8* %b, i64 20
  %255 = load i8, i8* %scevgep37.20.4, align 1
  %call18.20.4 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255)
  %scevgep40.20.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 0, i64 20
  store i8 %call18.20.4, i8* %scevgep40.20.4, align 1
  %scevgep39.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %213, i64 0, i64 1, i64 0
  %256 = bitcast i8* %scevgep39.4 to [21 x [21 x i8]]*
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 5
  %257 = load i8, i8* %arrayidx.5, align 1
  %258 = load i8, i8* %b, align 1
  %call18.562 = call zeroext i8 @mult(i8 zeroext %257, i8 zeroext %258)
  %scevgep40.563 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 0
  store i8 %call18.562, i8* %scevgep40.563, align 1
  %259 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.1.5 = getelementptr i8, i8* %b, i64 1
  %260 = load i8, i8* %scevgep37.1.5, align 1
  %call18.1.5 = call zeroext i8 @mult(i8 zeroext %259, i8 zeroext %260)
  %scevgep40.1.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 1
  store i8 %call18.1.5, i8* %scevgep40.1.5, align 1
  %261 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.2.5 = getelementptr i8, i8* %b, i64 2
  %262 = load i8, i8* %scevgep37.2.5, align 1
  %call18.2.5 = call zeroext i8 @mult(i8 zeroext %261, i8 zeroext %262)
  %scevgep40.2.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 2
  store i8 %call18.2.5, i8* %scevgep40.2.5, align 1
  %263 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.3.5 = getelementptr i8, i8* %b, i64 3
  %264 = load i8, i8* %scevgep37.3.5, align 1
  %call18.3.5 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264)
  %scevgep40.3.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 3
  store i8 %call18.3.5, i8* %scevgep40.3.5, align 1
  %265 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.4.5 = getelementptr i8, i8* %b, i64 4
  %266 = load i8, i8* %scevgep37.4.5, align 1
  %call18.4.5 = call zeroext i8 @mult(i8 zeroext %265, i8 zeroext %266)
  %scevgep40.4.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 4
  store i8 %call18.4.5, i8* %scevgep40.4.5, align 1
  %267 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.5.5 = getelementptr i8, i8* %b, i64 5
  %268 = load i8, i8* %scevgep37.5.5, align 1
  %call18.5.5 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268)
  %scevgep40.5.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 5
  store i8 %call18.5.5, i8* %scevgep40.5.5, align 1
  %269 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.6.5 = getelementptr i8, i8* %b, i64 6
  %270 = load i8, i8* %scevgep37.6.5, align 1
  %call18.6.5 = call zeroext i8 @mult(i8 zeroext %269, i8 zeroext %270)
  %scevgep40.6.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 6
  store i8 %call18.6.5, i8* %scevgep40.6.5, align 1
  %271 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.7.5 = getelementptr i8, i8* %b, i64 7
  %272 = load i8, i8* %scevgep37.7.5, align 1
  %call18.7.5 = call zeroext i8 @mult(i8 zeroext %271, i8 zeroext %272)
  %scevgep40.7.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 7
  store i8 %call18.7.5, i8* %scevgep40.7.5, align 1
  %273 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.8.5 = getelementptr i8, i8* %b, i64 8
  %274 = load i8, i8* %scevgep37.8.5, align 1
  %call18.8.5 = call zeroext i8 @mult(i8 zeroext %273, i8 zeroext %274)
  %scevgep40.8.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 8
  store i8 %call18.8.5, i8* %scevgep40.8.5, align 1
  %275 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.9.5 = getelementptr i8, i8* %b, i64 9
  %276 = load i8, i8* %scevgep37.9.5, align 1
  %call18.9.5 = call zeroext i8 @mult(i8 zeroext %275, i8 zeroext %276)
  %scevgep40.9.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 9
  store i8 %call18.9.5, i8* %scevgep40.9.5, align 1
  %277 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.10.5 = getelementptr i8, i8* %b, i64 10
  %278 = load i8, i8* %scevgep37.10.5, align 1
  %call18.10.5 = call zeroext i8 @mult(i8 zeroext %277, i8 zeroext %278)
  %scevgep40.10.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 10
  store i8 %call18.10.5, i8* %scevgep40.10.5, align 1
  %279 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.11.5 = getelementptr i8, i8* %b, i64 11
  %280 = load i8, i8* %scevgep37.11.5, align 1
  %call18.11.5 = call zeroext i8 @mult(i8 zeroext %279, i8 zeroext %280)
  %scevgep40.11.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 11
  store i8 %call18.11.5, i8* %scevgep40.11.5, align 1
  %281 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.12.5 = getelementptr i8, i8* %b, i64 12
  %282 = load i8, i8* %scevgep37.12.5, align 1
  %call18.12.5 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282)
  %scevgep40.12.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 12
  store i8 %call18.12.5, i8* %scevgep40.12.5, align 1
  %283 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.13.5 = getelementptr i8, i8* %b, i64 13
  %284 = load i8, i8* %scevgep37.13.5, align 1
  %call18.13.5 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284)
  %scevgep40.13.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 13
  store i8 %call18.13.5, i8* %scevgep40.13.5, align 1
  %285 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.14.5 = getelementptr i8, i8* %b, i64 14
  %286 = load i8, i8* %scevgep37.14.5, align 1
  %call18.14.5 = call zeroext i8 @mult(i8 zeroext %285, i8 zeroext %286)
  %scevgep40.14.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 14
  store i8 %call18.14.5, i8* %scevgep40.14.5, align 1
  %287 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.15.5 = getelementptr i8, i8* %b, i64 15
  %288 = load i8, i8* %scevgep37.15.5, align 1
  %call18.15.5 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %288)
  %scevgep40.15.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 15
  store i8 %call18.15.5, i8* %scevgep40.15.5, align 1
  %289 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.16.5 = getelementptr i8, i8* %b, i64 16
  %290 = load i8, i8* %scevgep37.16.5, align 1
  %call18.16.5 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %290)
  %scevgep40.16.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 16
  store i8 %call18.16.5, i8* %scevgep40.16.5, align 1
  %291 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.17.5 = getelementptr i8, i8* %b, i64 17
  %292 = load i8, i8* %scevgep37.17.5, align 1
  %call18.17.5 = call zeroext i8 @mult(i8 zeroext %291, i8 zeroext %292)
  %scevgep40.17.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 17
  store i8 %call18.17.5, i8* %scevgep40.17.5, align 1
  %293 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.18.5 = getelementptr i8, i8* %b, i64 18
  %294 = load i8, i8* %scevgep37.18.5, align 1
  %call18.18.5 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %294)
  %scevgep40.18.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 18
  store i8 %call18.18.5, i8* %scevgep40.18.5, align 1
  %295 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.19.5 = getelementptr i8, i8* %b, i64 19
  %296 = load i8, i8* %scevgep37.19.5, align 1
  %call18.19.5 = call zeroext i8 @mult(i8 zeroext %295, i8 zeroext %296)
  %scevgep40.19.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 19
  store i8 %call18.19.5, i8* %scevgep40.19.5, align 1
  %297 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.20.5 = getelementptr i8, i8* %b, i64 20
  %298 = load i8, i8* %scevgep37.20.5, align 1
  %call18.20.5 = call zeroext i8 @mult(i8 zeroext %297, i8 zeroext %298)
  %scevgep40.20.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 0, i64 20
  store i8 %call18.20.5, i8* %scevgep40.20.5, align 1
  %scevgep39.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %256, i64 0, i64 1, i64 0
  %299 = bitcast i8* %scevgep39.5 to [21 x [21 x i8]]*
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 6
  %300 = load i8, i8* %arrayidx.6, align 1
  %301 = load i8, i8* %b, align 1
  %call18.665 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301)
  %scevgep40.666 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 0
  store i8 %call18.665, i8* %scevgep40.666, align 1
  %302 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.1.6 = getelementptr i8, i8* %b, i64 1
  %303 = load i8, i8* %scevgep37.1.6, align 1
  %call18.1.6 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303)
  %scevgep40.1.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 1
  store i8 %call18.1.6, i8* %scevgep40.1.6, align 1
  %304 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.2.6 = getelementptr i8, i8* %b, i64 2
  %305 = load i8, i8* %scevgep37.2.6, align 1
  %call18.2.6 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305)
  %scevgep40.2.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 2
  store i8 %call18.2.6, i8* %scevgep40.2.6, align 1
  %306 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.3.6 = getelementptr i8, i8* %b, i64 3
  %307 = load i8, i8* %scevgep37.3.6, align 1
  %call18.3.6 = call zeroext i8 @mult(i8 zeroext %306, i8 zeroext %307)
  %scevgep40.3.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 3
  store i8 %call18.3.6, i8* %scevgep40.3.6, align 1
  %308 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.4.6 = getelementptr i8, i8* %b, i64 4
  %309 = load i8, i8* %scevgep37.4.6, align 1
  %call18.4.6 = call zeroext i8 @mult(i8 zeroext %308, i8 zeroext %309)
  %scevgep40.4.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 4
  store i8 %call18.4.6, i8* %scevgep40.4.6, align 1
  %310 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.5.6 = getelementptr i8, i8* %b, i64 5
  %311 = load i8, i8* %scevgep37.5.6, align 1
  %call18.5.6 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311)
  %scevgep40.5.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 5
  store i8 %call18.5.6, i8* %scevgep40.5.6, align 1
  %312 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.6.6 = getelementptr i8, i8* %b, i64 6
  %313 = load i8, i8* %scevgep37.6.6, align 1
  %call18.6.6 = call zeroext i8 @mult(i8 zeroext %312, i8 zeroext %313)
  %scevgep40.6.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 6
  store i8 %call18.6.6, i8* %scevgep40.6.6, align 1
  %314 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.7.6 = getelementptr i8, i8* %b, i64 7
  %315 = load i8, i8* %scevgep37.7.6, align 1
  %call18.7.6 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315)
  %scevgep40.7.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 7
  store i8 %call18.7.6, i8* %scevgep40.7.6, align 1
  %316 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.8.6 = getelementptr i8, i8* %b, i64 8
  %317 = load i8, i8* %scevgep37.8.6, align 1
  %call18.8.6 = call zeroext i8 @mult(i8 zeroext %316, i8 zeroext %317)
  %scevgep40.8.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 8
  store i8 %call18.8.6, i8* %scevgep40.8.6, align 1
  %318 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.9.6 = getelementptr i8, i8* %b, i64 9
  %319 = load i8, i8* %scevgep37.9.6, align 1
  %call18.9.6 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319)
  %scevgep40.9.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 9
  store i8 %call18.9.6, i8* %scevgep40.9.6, align 1
  %320 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.10.6 = getelementptr i8, i8* %b, i64 10
  %321 = load i8, i8* %scevgep37.10.6, align 1
  %call18.10.6 = call zeroext i8 @mult(i8 zeroext %320, i8 zeroext %321)
  %scevgep40.10.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 10
  store i8 %call18.10.6, i8* %scevgep40.10.6, align 1
  %322 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.11.6 = getelementptr i8, i8* %b, i64 11
  %323 = load i8, i8* %scevgep37.11.6, align 1
  %call18.11.6 = call zeroext i8 @mult(i8 zeroext %322, i8 zeroext %323)
  %scevgep40.11.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 11
  store i8 %call18.11.6, i8* %scevgep40.11.6, align 1
  %324 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.12.6 = getelementptr i8, i8* %b, i64 12
  %325 = load i8, i8* %scevgep37.12.6, align 1
  %call18.12.6 = call zeroext i8 @mult(i8 zeroext %324, i8 zeroext %325)
  %scevgep40.12.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 12
  store i8 %call18.12.6, i8* %scevgep40.12.6, align 1
  %326 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.13.6 = getelementptr i8, i8* %b, i64 13
  %327 = load i8, i8* %scevgep37.13.6, align 1
  %call18.13.6 = call zeroext i8 @mult(i8 zeroext %326, i8 zeroext %327)
  %scevgep40.13.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 13
  store i8 %call18.13.6, i8* %scevgep40.13.6, align 1
  %328 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.14.6 = getelementptr i8, i8* %b, i64 14
  %329 = load i8, i8* %scevgep37.14.6, align 1
  %call18.14.6 = call zeroext i8 @mult(i8 zeroext %328, i8 zeroext %329)
  %scevgep40.14.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 14
  store i8 %call18.14.6, i8* %scevgep40.14.6, align 1
  %330 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.15.6 = getelementptr i8, i8* %b, i64 15
  %331 = load i8, i8* %scevgep37.15.6, align 1
  %call18.15.6 = call zeroext i8 @mult(i8 zeroext %330, i8 zeroext %331)
  %scevgep40.15.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 15
  store i8 %call18.15.6, i8* %scevgep40.15.6, align 1
  %332 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.16.6 = getelementptr i8, i8* %b, i64 16
  %333 = load i8, i8* %scevgep37.16.6, align 1
  %call18.16.6 = call zeroext i8 @mult(i8 zeroext %332, i8 zeroext %333)
  %scevgep40.16.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 16
  store i8 %call18.16.6, i8* %scevgep40.16.6, align 1
  %334 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.17.6 = getelementptr i8, i8* %b, i64 17
  %335 = load i8, i8* %scevgep37.17.6, align 1
  %call18.17.6 = call zeroext i8 @mult(i8 zeroext %334, i8 zeroext %335)
  %scevgep40.17.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 17
  store i8 %call18.17.6, i8* %scevgep40.17.6, align 1
  %336 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.18.6 = getelementptr i8, i8* %b, i64 18
  %337 = load i8, i8* %scevgep37.18.6, align 1
  %call18.18.6 = call zeroext i8 @mult(i8 zeroext %336, i8 zeroext %337)
  %scevgep40.18.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 18
  store i8 %call18.18.6, i8* %scevgep40.18.6, align 1
  %338 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.19.6 = getelementptr i8, i8* %b, i64 19
  %339 = load i8, i8* %scevgep37.19.6, align 1
  %call18.19.6 = call zeroext i8 @mult(i8 zeroext %338, i8 zeroext %339)
  %scevgep40.19.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 19
  store i8 %call18.19.6, i8* %scevgep40.19.6, align 1
  %340 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.20.6 = getelementptr i8, i8* %b, i64 20
  %341 = load i8, i8* %scevgep37.20.6, align 1
  %call18.20.6 = call zeroext i8 @mult(i8 zeroext %340, i8 zeroext %341)
  %scevgep40.20.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 0, i64 20
  store i8 %call18.20.6, i8* %scevgep40.20.6, align 1
  %scevgep39.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %299, i64 0, i64 1, i64 0
  %342 = bitcast i8* %scevgep39.6 to [21 x [21 x i8]]*
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 7
  %343 = load i8, i8* %arrayidx.7, align 1
  %344 = load i8, i8* %b, align 1
  %call18.768 = call zeroext i8 @mult(i8 zeroext %343, i8 zeroext %344)
  %scevgep40.769 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 0
  store i8 %call18.768, i8* %scevgep40.769, align 1
  %345 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.1.7 = getelementptr i8, i8* %b, i64 1
  %346 = load i8, i8* %scevgep37.1.7, align 1
  %call18.1.7 = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346)
  %scevgep40.1.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 1
  store i8 %call18.1.7, i8* %scevgep40.1.7, align 1
  %347 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.2.7 = getelementptr i8, i8* %b, i64 2
  %348 = load i8, i8* %scevgep37.2.7, align 1
  %call18.2.7 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348)
  %scevgep40.2.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 2
  store i8 %call18.2.7, i8* %scevgep40.2.7, align 1
  %349 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.3.7 = getelementptr i8, i8* %b, i64 3
  %350 = load i8, i8* %scevgep37.3.7, align 1
  %call18.3.7 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350)
  %scevgep40.3.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 3
  store i8 %call18.3.7, i8* %scevgep40.3.7, align 1
  %351 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.4.7 = getelementptr i8, i8* %b, i64 4
  %352 = load i8, i8* %scevgep37.4.7, align 1
  %call18.4.7 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352)
  %scevgep40.4.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 4
  store i8 %call18.4.7, i8* %scevgep40.4.7, align 1
  %353 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.5.7 = getelementptr i8, i8* %b, i64 5
  %354 = load i8, i8* %scevgep37.5.7, align 1
  %call18.5.7 = call zeroext i8 @mult(i8 zeroext %353, i8 zeroext %354)
  %scevgep40.5.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 5
  store i8 %call18.5.7, i8* %scevgep40.5.7, align 1
  %355 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.6.7 = getelementptr i8, i8* %b, i64 6
  %356 = load i8, i8* %scevgep37.6.7, align 1
  %call18.6.7 = call zeroext i8 @mult(i8 zeroext %355, i8 zeroext %356)
  %scevgep40.6.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 6
  store i8 %call18.6.7, i8* %scevgep40.6.7, align 1
  %357 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.7.7 = getelementptr i8, i8* %b, i64 7
  %358 = load i8, i8* %scevgep37.7.7, align 1
  %call18.7.7 = call zeroext i8 @mult(i8 zeroext %357, i8 zeroext %358)
  %scevgep40.7.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 7
  store i8 %call18.7.7, i8* %scevgep40.7.7, align 1
  %359 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.8.7 = getelementptr i8, i8* %b, i64 8
  %360 = load i8, i8* %scevgep37.8.7, align 1
  %call18.8.7 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360)
  %scevgep40.8.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 8
  store i8 %call18.8.7, i8* %scevgep40.8.7, align 1
  %361 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.9.7 = getelementptr i8, i8* %b, i64 9
  %362 = load i8, i8* %scevgep37.9.7, align 1
  %call18.9.7 = call zeroext i8 @mult(i8 zeroext %361, i8 zeroext %362)
  %scevgep40.9.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 9
  store i8 %call18.9.7, i8* %scevgep40.9.7, align 1
  %363 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.10.7 = getelementptr i8, i8* %b, i64 10
  %364 = load i8, i8* %scevgep37.10.7, align 1
  %call18.10.7 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364)
  %scevgep40.10.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 10
  store i8 %call18.10.7, i8* %scevgep40.10.7, align 1
  %365 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.11.7 = getelementptr i8, i8* %b, i64 11
  %366 = load i8, i8* %scevgep37.11.7, align 1
  %call18.11.7 = call zeroext i8 @mult(i8 zeroext %365, i8 zeroext %366)
  %scevgep40.11.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 11
  store i8 %call18.11.7, i8* %scevgep40.11.7, align 1
  %367 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.12.7 = getelementptr i8, i8* %b, i64 12
  %368 = load i8, i8* %scevgep37.12.7, align 1
  %call18.12.7 = call zeroext i8 @mult(i8 zeroext %367, i8 zeroext %368)
  %scevgep40.12.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 12
  store i8 %call18.12.7, i8* %scevgep40.12.7, align 1
  %369 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.13.7 = getelementptr i8, i8* %b, i64 13
  %370 = load i8, i8* %scevgep37.13.7, align 1
  %call18.13.7 = call zeroext i8 @mult(i8 zeroext %369, i8 zeroext %370)
  %scevgep40.13.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 13
  store i8 %call18.13.7, i8* %scevgep40.13.7, align 1
  %371 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.14.7 = getelementptr i8, i8* %b, i64 14
  %372 = load i8, i8* %scevgep37.14.7, align 1
  %call18.14.7 = call zeroext i8 @mult(i8 zeroext %371, i8 zeroext %372)
  %scevgep40.14.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 14
  store i8 %call18.14.7, i8* %scevgep40.14.7, align 1
  %373 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.15.7 = getelementptr i8, i8* %b, i64 15
  %374 = load i8, i8* %scevgep37.15.7, align 1
  %call18.15.7 = call zeroext i8 @mult(i8 zeroext %373, i8 zeroext %374)
  %scevgep40.15.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 15
  store i8 %call18.15.7, i8* %scevgep40.15.7, align 1
  %375 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.16.7 = getelementptr i8, i8* %b, i64 16
  %376 = load i8, i8* %scevgep37.16.7, align 1
  %call18.16.7 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376)
  %scevgep40.16.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 16
  store i8 %call18.16.7, i8* %scevgep40.16.7, align 1
  %377 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.17.7 = getelementptr i8, i8* %b, i64 17
  %378 = load i8, i8* %scevgep37.17.7, align 1
  %call18.17.7 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378)
  %scevgep40.17.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 17
  store i8 %call18.17.7, i8* %scevgep40.17.7, align 1
  %379 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.18.7 = getelementptr i8, i8* %b, i64 18
  %380 = load i8, i8* %scevgep37.18.7, align 1
  %call18.18.7 = call zeroext i8 @mult(i8 zeroext %379, i8 zeroext %380)
  %scevgep40.18.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 18
  store i8 %call18.18.7, i8* %scevgep40.18.7, align 1
  %381 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.19.7 = getelementptr i8, i8* %b, i64 19
  %382 = load i8, i8* %scevgep37.19.7, align 1
  %call18.19.7 = call zeroext i8 @mult(i8 zeroext %381, i8 zeroext %382)
  %scevgep40.19.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 19
  store i8 %call18.19.7, i8* %scevgep40.19.7, align 1
  %383 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.20.7 = getelementptr i8, i8* %b, i64 20
  %384 = load i8, i8* %scevgep37.20.7, align 1
  %call18.20.7 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %384)
  %scevgep40.20.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 0, i64 20
  store i8 %call18.20.7, i8* %scevgep40.20.7, align 1
  %scevgep39.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %342, i64 0, i64 1, i64 0
  %385 = bitcast i8* %scevgep39.7 to [21 x [21 x i8]]*
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 8
  %386 = load i8, i8* %arrayidx.8, align 1
  %387 = load i8, i8* %b, align 1
  %call18.871 = call zeroext i8 @mult(i8 zeroext %386, i8 zeroext %387)
  %scevgep40.872 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 0
  store i8 %call18.871, i8* %scevgep40.872, align 1
  %388 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.1.8 = getelementptr i8, i8* %b, i64 1
  %389 = load i8, i8* %scevgep37.1.8, align 1
  %call18.1.8 = call zeroext i8 @mult(i8 zeroext %388, i8 zeroext %389)
  %scevgep40.1.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 1
  store i8 %call18.1.8, i8* %scevgep40.1.8, align 1
  %390 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.2.8 = getelementptr i8, i8* %b, i64 2
  %391 = load i8, i8* %scevgep37.2.8, align 1
  %call18.2.8 = call zeroext i8 @mult(i8 zeroext %390, i8 zeroext %391)
  %scevgep40.2.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 2
  store i8 %call18.2.8, i8* %scevgep40.2.8, align 1
  %392 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.3.8 = getelementptr i8, i8* %b, i64 3
  %393 = load i8, i8* %scevgep37.3.8, align 1
  %call18.3.8 = call zeroext i8 @mult(i8 zeroext %392, i8 zeroext %393)
  %scevgep40.3.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 3
  store i8 %call18.3.8, i8* %scevgep40.3.8, align 1
  %394 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.4.8 = getelementptr i8, i8* %b, i64 4
  %395 = load i8, i8* %scevgep37.4.8, align 1
  %call18.4.8 = call zeroext i8 @mult(i8 zeroext %394, i8 zeroext %395)
  %scevgep40.4.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 4
  store i8 %call18.4.8, i8* %scevgep40.4.8, align 1
  %396 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.5.8 = getelementptr i8, i8* %b, i64 5
  %397 = load i8, i8* %scevgep37.5.8, align 1
  %call18.5.8 = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %397)
  %scevgep40.5.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 5
  store i8 %call18.5.8, i8* %scevgep40.5.8, align 1
  %398 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.6.8 = getelementptr i8, i8* %b, i64 6
  %399 = load i8, i8* %scevgep37.6.8, align 1
  %call18.6.8 = call zeroext i8 @mult(i8 zeroext %398, i8 zeroext %399)
  %scevgep40.6.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 6
  store i8 %call18.6.8, i8* %scevgep40.6.8, align 1
  %400 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.7.8 = getelementptr i8, i8* %b, i64 7
  %401 = load i8, i8* %scevgep37.7.8, align 1
  %call18.7.8 = call zeroext i8 @mult(i8 zeroext %400, i8 zeroext %401)
  %scevgep40.7.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 7
  store i8 %call18.7.8, i8* %scevgep40.7.8, align 1
  %402 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.8.8 = getelementptr i8, i8* %b, i64 8
  %403 = load i8, i8* %scevgep37.8.8, align 1
  %call18.8.8 = call zeroext i8 @mult(i8 zeroext %402, i8 zeroext %403)
  %scevgep40.8.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 8
  store i8 %call18.8.8, i8* %scevgep40.8.8, align 1
  %404 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.9.8 = getelementptr i8, i8* %b, i64 9
  %405 = load i8, i8* %scevgep37.9.8, align 1
  %call18.9.8 = call zeroext i8 @mult(i8 zeroext %404, i8 zeroext %405)
  %scevgep40.9.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 9
  store i8 %call18.9.8, i8* %scevgep40.9.8, align 1
  %406 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.10.8 = getelementptr i8, i8* %b, i64 10
  %407 = load i8, i8* %scevgep37.10.8, align 1
  %call18.10.8 = call zeroext i8 @mult(i8 zeroext %406, i8 zeroext %407)
  %scevgep40.10.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 10
  store i8 %call18.10.8, i8* %scevgep40.10.8, align 1
  %408 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.11.8 = getelementptr i8, i8* %b, i64 11
  %409 = load i8, i8* %scevgep37.11.8, align 1
  %call18.11.8 = call zeroext i8 @mult(i8 zeroext %408, i8 zeroext %409)
  %scevgep40.11.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 11
  store i8 %call18.11.8, i8* %scevgep40.11.8, align 1
  %410 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.12.8 = getelementptr i8, i8* %b, i64 12
  %411 = load i8, i8* %scevgep37.12.8, align 1
  %call18.12.8 = call zeroext i8 @mult(i8 zeroext %410, i8 zeroext %411)
  %scevgep40.12.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 12
  store i8 %call18.12.8, i8* %scevgep40.12.8, align 1
  %412 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.13.8 = getelementptr i8, i8* %b, i64 13
  %413 = load i8, i8* %scevgep37.13.8, align 1
  %call18.13.8 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413)
  %scevgep40.13.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 13
  store i8 %call18.13.8, i8* %scevgep40.13.8, align 1
  %414 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.14.8 = getelementptr i8, i8* %b, i64 14
  %415 = load i8, i8* %scevgep37.14.8, align 1
  %call18.14.8 = call zeroext i8 @mult(i8 zeroext %414, i8 zeroext %415)
  %scevgep40.14.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 14
  store i8 %call18.14.8, i8* %scevgep40.14.8, align 1
  %416 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.15.8 = getelementptr i8, i8* %b, i64 15
  %417 = load i8, i8* %scevgep37.15.8, align 1
  %call18.15.8 = call zeroext i8 @mult(i8 zeroext %416, i8 zeroext %417)
  %scevgep40.15.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 15
  store i8 %call18.15.8, i8* %scevgep40.15.8, align 1
  %418 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.16.8 = getelementptr i8, i8* %b, i64 16
  %419 = load i8, i8* %scevgep37.16.8, align 1
  %call18.16.8 = call zeroext i8 @mult(i8 zeroext %418, i8 zeroext %419)
  %scevgep40.16.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 16
  store i8 %call18.16.8, i8* %scevgep40.16.8, align 1
  %420 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.17.8 = getelementptr i8, i8* %b, i64 17
  %421 = load i8, i8* %scevgep37.17.8, align 1
  %call18.17.8 = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421)
  %scevgep40.17.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 17
  store i8 %call18.17.8, i8* %scevgep40.17.8, align 1
  %422 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.18.8 = getelementptr i8, i8* %b, i64 18
  %423 = load i8, i8* %scevgep37.18.8, align 1
  %call18.18.8 = call zeroext i8 @mult(i8 zeroext %422, i8 zeroext %423)
  %scevgep40.18.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 18
  store i8 %call18.18.8, i8* %scevgep40.18.8, align 1
  %424 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.19.8 = getelementptr i8, i8* %b, i64 19
  %425 = load i8, i8* %scevgep37.19.8, align 1
  %call18.19.8 = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425)
  %scevgep40.19.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 19
  store i8 %call18.19.8, i8* %scevgep40.19.8, align 1
  %426 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.20.8 = getelementptr i8, i8* %b, i64 20
  %427 = load i8, i8* %scevgep37.20.8, align 1
  %call18.20.8 = call zeroext i8 @mult(i8 zeroext %426, i8 zeroext %427)
  %scevgep40.20.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 0, i64 20
  store i8 %call18.20.8, i8* %scevgep40.20.8, align 1
  %scevgep39.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %385, i64 0, i64 1, i64 0
  %428 = bitcast i8* %scevgep39.8 to [21 x [21 x i8]]*
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 9
  %429 = load i8, i8* %arrayidx.9, align 1
  %430 = load i8, i8* %b, align 1
  %call18.974 = call zeroext i8 @mult(i8 zeroext %429, i8 zeroext %430)
  %scevgep40.975 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 0
  store i8 %call18.974, i8* %scevgep40.975, align 1
  %431 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.1.9 = getelementptr i8, i8* %b, i64 1
  %432 = load i8, i8* %scevgep37.1.9, align 1
  %call18.1.9 = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432)
  %scevgep40.1.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 1
  store i8 %call18.1.9, i8* %scevgep40.1.9, align 1
  %433 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.2.9 = getelementptr i8, i8* %b, i64 2
  %434 = load i8, i8* %scevgep37.2.9, align 1
  %call18.2.9 = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434)
  %scevgep40.2.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 2
  store i8 %call18.2.9, i8* %scevgep40.2.9, align 1
  %435 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.3.9 = getelementptr i8, i8* %b, i64 3
  %436 = load i8, i8* %scevgep37.3.9, align 1
  %call18.3.9 = call zeroext i8 @mult(i8 zeroext %435, i8 zeroext %436)
  %scevgep40.3.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 3
  store i8 %call18.3.9, i8* %scevgep40.3.9, align 1
  %437 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.4.9 = getelementptr i8, i8* %b, i64 4
  %438 = load i8, i8* %scevgep37.4.9, align 1
  %call18.4.9 = call zeroext i8 @mult(i8 zeroext %437, i8 zeroext %438)
  %scevgep40.4.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 4
  store i8 %call18.4.9, i8* %scevgep40.4.9, align 1
  %439 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.5.9 = getelementptr i8, i8* %b, i64 5
  %440 = load i8, i8* %scevgep37.5.9, align 1
  %call18.5.9 = call zeroext i8 @mult(i8 zeroext %439, i8 zeroext %440)
  %scevgep40.5.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 5
  store i8 %call18.5.9, i8* %scevgep40.5.9, align 1
  %441 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.6.9 = getelementptr i8, i8* %b, i64 6
  %442 = load i8, i8* %scevgep37.6.9, align 1
  %call18.6.9 = call zeroext i8 @mult(i8 zeroext %441, i8 zeroext %442)
  %scevgep40.6.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 6
  store i8 %call18.6.9, i8* %scevgep40.6.9, align 1
  %443 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.7.9 = getelementptr i8, i8* %b, i64 7
  %444 = load i8, i8* %scevgep37.7.9, align 1
  %call18.7.9 = call zeroext i8 @mult(i8 zeroext %443, i8 zeroext %444)
  %scevgep40.7.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 7
  store i8 %call18.7.9, i8* %scevgep40.7.9, align 1
  %445 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.8.9 = getelementptr i8, i8* %b, i64 8
  %446 = load i8, i8* %scevgep37.8.9, align 1
  %call18.8.9 = call zeroext i8 @mult(i8 zeroext %445, i8 zeroext %446)
  %scevgep40.8.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 8
  store i8 %call18.8.9, i8* %scevgep40.8.9, align 1
  %447 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.9.9 = getelementptr i8, i8* %b, i64 9
  %448 = load i8, i8* %scevgep37.9.9, align 1
  %call18.9.9 = call zeroext i8 @mult(i8 zeroext %447, i8 zeroext %448)
  %scevgep40.9.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 9
  store i8 %call18.9.9, i8* %scevgep40.9.9, align 1
  %449 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.10.9 = getelementptr i8, i8* %b, i64 10
  %450 = load i8, i8* %scevgep37.10.9, align 1
  %call18.10.9 = call zeroext i8 @mult(i8 zeroext %449, i8 zeroext %450)
  %scevgep40.10.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 10
  store i8 %call18.10.9, i8* %scevgep40.10.9, align 1
  %451 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.11.9 = getelementptr i8, i8* %b, i64 11
  %452 = load i8, i8* %scevgep37.11.9, align 1
  %call18.11.9 = call zeroext i8 @mult(i8 zeroext %451, i8 zeroext %452)
  %scevgep40.11.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 11
  store i8 %call18.11.9, i8* %scevgep40.11.9, align 1
  %453 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.12.9 = getelementptr i8, i8* %b, i64 12
  %454 = load i8, i8* %scevgep37.12.9, align 1
  %call18.12.9 = call zeroext i8 @mult(i8 zeroext %453, i8 zeroext %454)
  %scevgep40.12.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 12
  store i8 %call18.12.9, i8* %scevgep40.12.9, align 1
  %455 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.13.9 = getelementptr i8, i8* %b, i64 13
  %456 = load i8, i8* %scevgep37.13.9, align 1
  %call18.13.9 = call zeroext i8 @mult(i8 zeroext %455, i8 zeroext %456)
  %scevgep40.13.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 13
  store i8 %call18.13.9, i8* %scevgep40.13.9, align 1
  %457 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.14.9 = getelementptr i8, i8* %b, i64 14
  %458 = load i8, i8* %scevgep37.14.9, align 1
  %call18.14.9 = call zeroext i8 @mult(i8 zeroext %457, i8 zeroext %458)
  %scevgep40.14.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 14
  store i8 %call18.14.9, i8* %scevgep40.14.9, align 1
  %459 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.15.9 = getelementptr i8, i8* %b, i64 15
  %460 = load i8, i8* %scevgep37.15.9, align 1
  %call18.15.9 = call zeroext i8 @mult(i8 zeroext %459, i8 zeroext %460)
  %scevgep40.15.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 15
  store i8 %call18.15.9, i8* %scevgep40.15.9, align 1
  %461 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.16.9 = getelementptr i8, i8* %b, i64 16
  %462 = load i8, i8* %scevgep37.16.9, align 1
  %call18.16.9 = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462)
  %scevgep40.16.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 16
  store i8 %call18.16.9, i8* %scevgep40.16.9, align 1
  %463 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.17.9 = getelementptr i8, i8* %b, i64 17
  %464 = load i8, i8* %scevgep37.17.9, align 1
  %call18.17.9 = call zeroext i8 @mult(i8 zeroext %463, i8 zeroext %464)
  %scevgep40.17.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 17
  store i8 %call18.17.9, i8* %scevgep40.17.9, align 1
  %465 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.18.9 = getelementptr i8, i8* %b, i64 18
  %466 = load i8, i8* %scevgep37.18.9, align 1
  %call18.18.9 = call zeroext i8 @mult(i8 zeroext %465, i8 zeroext %466)
  %scevgep40.18.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 18
  store i8 %call18.18.9, i8* %scevgep40.18.9, align 1
  %467 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.19.9 = getelementptr i8, i8* %b, i64 19
  %468 = load i8, i8* %scevgep37.19.9, align 1
  %call18.19.9 = call zeroext i8 @mult(i8 zeroext %467, i8 zeroext %468)
  %scevgep40.19.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 19
  store i8 %call18.19.9, i8* %scevgep40.19.9, align 1
  %469 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.20.9 = getelementptr i8, i8* %b, i64 20
  %470 = load i8, i8* %scevgep37.20.9, align 1
  %call18.20.9 = call zeroext i8 @mult(i8 zeroext %469, i8 zeroext %470)
  %scevgep40.20.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 0, i64 20
  store i8 %call18.20.9, i8* %scevgep40.20.9, align 1
  %scevgep39.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %428, i64 0, i64 1, i64 0
  %471 = bitcast i8* %scevgep39.9 to [21 x [21 x i8]]*
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 10
  %472 = load i8, i8* %arrayidx.10, align 1
  %473 = load i8, i8* %b, align 1
  %call18.1077 = call zeroext i8 @mult(i8 zeroext %472, i8 zeroext %473)
  %scevgep40.1078 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 0
  store i8 %call18.1077, i8* %scevgep40.1078, align 1
  %474 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.1.10 = getelementptr i8, i8* %b, i64 1
  %475 = load i8, i8* %scevgep37.1.10, align 1
  %call18.1.10 = call zeroext i8 @mult(i8 zeroext %474, i8 zeroext %475)
  %scevgep40.1.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 1
  store i8 %call18.1.10, i8* %scevgep40.1.10, align 1
  %476 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.2.10 = getelementptr i8, i8* %b, i64 2
  %477 = load i8, i8* %scevgep37.2.10, align 1
  %call18.2.10 = call zeroext i8 @mult(i8 zeroext %476, i8 zeroext %477)
  %scevgep40.2.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 2
  store i8 %call18.2.10, i8* %scevgep40.2.10, align 1
  %478 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.3.10 = getelementptr i8, i8* %b, i64 3
  %479 = load i8, i8* %scevgep37.3.10, align 1
  %call18.3.10 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479)
  %scevgep40.3.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 3
  store i8 %call18.3.10, i8* %scevgep40.3.10, align 1
  %480 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.4.10 = getelementptr i8, i8* %b, i64 4
  %481 = load i8, i8* %scevgep37.4.10, align 1
  %call18.4.10 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481)
  %scevgep40.4.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 4
  store i8 %call18.4.10, i8* %scevgep40.4.10, align 1
  %482 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.5.10 = getelementptr i8, i8* %b, i64 5
  %483 = load i8, i8* %scevgep37.5.10, align 1
  %call18.5.10 = call zeroext i8 @mult(i8 zeroext %482, i8 zeroext %483)
  %scevgep40.5.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 5
  store i8 %call18.5.10, i8* %scevgep40.5.10, align 1
  %484 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.6.10 = getelementptr i8, i8* %b, i64 6
  %485 = load i8, i8* %scevgep37.6.10, align 1
  %call18.6.10 = call zeroext i8 @mult(i8 zeroext %484, i8 zeroext %485)
  %scevgep40.6.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 6
  store i8 %call18.6.10, i8* %scevgep40.6.10, align 1
  %486 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.7.10 = getelementptr i8, i8* %b, i64 7
  %487 = load i8, i8* %scevgep37.7.10, align 1
  %call18.7.10 = call zeroext i8 @mult(i8 zeroext %486, i8 zeroext %487)
  %scevgep40.7.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 7
  store i8 %call18.7.10, i8* %scevgep40.7.10, align 1
  %488 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.8.10 = getelementptr i8, i8* %b, i64 8
  %489 = load i8, i8* %scevgep37.8.10, align 1
  %call18.8.10 = call zeroext i8 @mult(i8 zeroext %488, i8 zeroext %489)
  %scevgep40.8.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 8
  store i8 %call18.8.10, i8* %scevgep40.8.10, align 1
  %490 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.9.10 = getelementptr i8, i8* %b, i64 9
  %491 = load i8, i8* %scevgep37.9.10, align 1
  %call18.9.10 = call zeroext i8 @mult(i8 zeroext %490, i8 zeroext %491)
  %scevgep40.9.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 9
  store i8 %call18.9.10, i8* %scevgep40.9.10, align 1
  %492 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.10.10 = getelementptr i8, i8* %b, i64 10
  %493 = load i8, i8* %scevgep37.10.10, align 1
  %call18.10.10 = call zeroext i8 @mult(i8 zeroext %492, i8 zeroext %493)
  %scevgep40.10.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 10
  store i8 %call18.10.10, i8* %scevgep40.10.10, align 1
  %494 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.11.10 = getelementptr i8, i8* %b, i64 11
  %495 = load i8, i8* %scevgep37.11.10, align 1
  %call18.11.10 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495)
  %scevgep40.11.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 11
  store i8 %call18.11.10, i8* %scevgep40.11.10, align 1
  %496 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.12.10 = getelementptr i8, i8* %b, i64 12
  %497 = load i8, i8* %scevgep37.12.10, align 1
  %call18.12.10 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497)
  %scevgep40.12.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 12
  store i8 %call18.12.10, i8* %scevgep40.12.10, align 1
  %498 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.13.10 = getelementptr i8, i8* %b, i64 13
  %499 = load i8, i8* %scevgep37.13.10, align 1
  %call18.13.10 = call zeroext i8 @mult(i8 zeroext %498, i8 zeroext %499)
  %scevgep40.13.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 13
  store i8 %call18.13.10, i8* %scevgep40.13.10, align 1
  %500 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.14.10 = getelementptr i8, i8* %b, i64 14
  %501 = load i8, i8* %scevgep37.14.10, align 1
  %call18.14.10 = call zeroext i8 @mult(i8 zeroext %500, i8 zeroext %501)
  %scevgep40.14.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 14
  store i8 %call18.14.10, i8* %scevgep40.14.10, align 1
  %502 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.15.10 = getelementptr i8, i8* %b, i64 15
  %503 = load i8, i8* %scevgep37.15.10, align 1
  %call18.15.10 = call zeroext i8 @mult(i8 zeroext %502, i8 zeroext %503)
  %scevgep40.15.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 15
  store i8 %call18.15.10, i8* %scevgep40.15.10, align 1
  %504 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.16.10 = getelementptr i8, i8* %b, i64 16
  %505 = load i8, i8* %scevgep37.16.10, align 1
  %call18.16.10 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505)
  %scevgep40.16.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 16
  store i8 %call18.16.10, i8* %scevgep40.16.10, align 1
  %506 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.17.10 = getelementptr i8, i8* %b, i64 17
  %507 = load i8, i8* %scevgep37.17.10, align 1
  %call18.17.10 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507)
  %scevgep40.17.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 17
  store i8 %call18.17.10, i8* %scevgep40.17.10, align 1
  %508 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.18.10 = getelementptr i8, i8* %b, i64 18
  %509 = load i8, i8* %scevgep37.18.10, align 1
  %call18.18.10 = call zeroext i8 @mult(i8 zeroext %508, i8 zeroext %509)
  %scevgep40.18.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 18
  store i8 %call18.18.10, i8* %scevgep40.18.10, align 1
  %510 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.19.10 = getelementptr i8, i8* %b, i64 19
  %511 = load i8, i8* %scevgep37.19.10, align 1
  %call18.19.10 = call zeroext i8 @mult(i8 zeroext %510, i8 zeroext %511)
  %scevgep40.19.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 19
  store i8 %call18.19.10, i8* %scevgep40.19.10, align 1
  %512 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.20.10 = getelementptr i8, i8* %b, i64 20
  %513 = load i8, i8* %scevgep37.20.10, align 1
  %call18.20.10 = call zeroext i8 @mult(i8 zeroext %512, i8 zeroext %513)
  %scevgep40.20.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 0, i64 20
  store i8 %call18.20.10, i8* %scevgep40.20.10, align 1
  %scevgep39.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %471, i64 0, i64 1, i64 0
  %514 = bitcast i8* %scevgep39.10 to [21 x [21 x i8]]*
  %arrayidx.11 = getelementptr inbounds i8, i8* %a, i64 11
  %515 = load i8, i8* %arrayidx.11, align 1
  %516 = load i8, i8* %b, align 1
  %call18.1180 = call zeroext i8 @mult(i8 zeroext %515, i8 zeroext %516)
  %scevgep40.1181 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 0
  store i8 %call18.1180, i8* %scevgep40.1181, align 1
  %517 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.1.11 = getelementptr i8, i8* %b, i64 1
  %518 = load i8, i8* %scevgep37.1.11, align 1
  %call18.1.11 = call zeroext i8 @mult(i8 zeroext %517, i8 zeroext %518)
  %scevgep40.1.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 1
  store i8 %call18.1.11, i8* %scevgep40.1.11, align 1
  %519 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.2.11 = getelementptr i8, i8* %b, i64 2
  %520 = load i8, i8* %scevgep37.2.11, align 1
  %call18.2.11 = call zeroext i8 @mult(i8 zeroext %519, i8 zeroext %520)
  %scevgep40.2.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 2
  store i8 %call18.2.11, i8* %scevgep40.2.11, align 1
  %521 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.3.11 = getelementptr i8, i8* %b, i64 3
  %522 = load i8, i8* %scevgep37.3.11, align 1
  %call18.3.11 = call zeroext i8 @mult(i8 zeroext %521, i8 zeroext %522)
  %scevgep40.3.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 3
  store i8 %call18.3.11, i8* %scevgep40.3.11, align 1
  %523 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.4.11 = getelementptr i8, i8* %b, i64 4
  %524 = load i8, i8* %scevgep37.4.11, align 1
  %call18.4.11 = call zeroext i8 @mult(i8 zeroext %523, i8 zeroext %524)
  %scevgep40.4.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 4
  store i8 %call18.4.11, i8* %scevgep40.4.11, align 1
  %525 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.5.11 = getelementptr i8, i8* %b, i64 5
  %526 = load i8, i8* %scevgep37.5.11, align 1
  %call18.5.11 = call zeroext i8 @mult(i8 zeroext %525, i8 zeroext %526)
  %scevgep40.5.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 5
  store i8 %call18.5.11, i8* %scevgep40.5.11, align 1
  %527 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.6.11 = getelementptr i8, i8* %b, i64 6
  %528 = load i8, i8* %scevgep37.6.11, align 1
  %call18.6.11 = call zeroext i8 @mult(i8 zeroext %527, i8 zeroext %528)
  %scevgep40.6.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 6
  store i8 %call18.6.11, i8* %scevgep40.6.11, align 1
  %529 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.7.11 = getelementptr i8, i8* %b, i64 7
  %530 = load i8, i8* %scevgep37.7.11, align 1
  %call18.7.11 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530)
  %scevgep40.7.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 7
  store i8 %call18.7.11, i8* %scevgep40.7.11, align 1
  %531 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.8.11 = getelementptr i8, i8* %b, i64 8
  %532 = load i8, i8* %scevgep37.8.11, align 1
  %call18.8.11 = call zeroext i8 @mult(i8 zeroext %531, i8 zeroext %532)
  %scevgep40.8.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 8
  store i8 %call18.8.11, i8* %scevgep40.8.11, align 1
  %533 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.9.11 = getelementptr i8, i8* %b, i64 9
  %534 = load i8, i8* %scevgep37.9.11, align 1
  %call18.9.11 = call zeroext i8 @mult(i8 zeroext %533, i8 zeroext %534)
  %scevgep40.9.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 9
  store i8 %call18.9.11, i8* %scevgep40.9.11, align 1
  %535 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.10.11 = getelementptr i8, i8* %b, i64 10
  %536 = load i8, i8* %scevgep37.10.11, align 1
  %call18.10.11 = call zeroext i8 @mult(i8 zeroext %535, i8 zeroext %536)
  %scevgep40.10.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 10
  store i8 %call18.10.11, i8* %scevgep40.10.11, align 1
  %537 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.11.11 = getelementptr i8, i8* %b, i64 11
  %538 = load i8, i8* %scevgep37.11.11, align 1
  %call18.11.11 = call zeroext i8 @mult(i8 zeroext %537, i8 zeroext %538)
  %scevgep40.11.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 11
  store i8 %call18.11.11, i8* %scevgep40.11.11, align 1
  %539 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.12.11 = getelementptr i8, i8* %b, i64 12
  %540 = load i8, i8* %scevgep37.12.11, align 1
  %call18.12.11 = call zeroext i8 @mult(i8 zeroext %539, i8 zeroext %540)
  %scevgep40.12.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 12
  store i8 %call18.12.11, i8* %scevgep40.12.11, align 1
  %541 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.13.11 = getelementptr i8, i8* %b, i64 13
  %542 = load i8, i8* %scevgep37.13.11, align 1
  %call18.13.11 = call zeroext i8 @mult(i8 zeroext %541, i8 zeroext %542)
  %scevgep40.13.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 13
  store i8 %call18.13.11, i8* %scevgep40.13.11, align 1
  %543 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.14.11 = getelementptr i8, i8* %b, i64 14
  %544 = load i8, i8* %scevgep37.14.11, align 1
  %call18.14.11 = call zeroext i8 @mult(i8 zeroext %543, i8 zeroext %544)
  %scevgep40.14.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 14
  store i8 %call18.14.11, i8* %scevgep40.14.11, align 1
  %545 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.15.11 = getelementptr i8, i8* %b, i64 15
  %546 = load i8, i8* %scevgep37.15.11, align 1
  %call18.15.11 = call zeroext i8 @mult(i8 zeroext %545, i8 zeroext %546)
  %scevgep40.15.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 15
  store i8 %call18.15.11, i8* %scevgep40.15.11, align 1
  %547 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.16.11 = getelementptr i8, i8* %b, i64 16
  %548 = load i8, i8* %scevgep37.16.11, align 1
  %call18.16.11 = call zeroext i8 @mult(i8 zeroext %547, i8 zeroext %548)
  %scevgep40.16.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 16
  store i8 %call18.16.11, i8* %scevgep40.16.11, align 1
  %549 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.17.11 = getelementptr i8, i8* %b, i64 17
  %550 = load i8, i8* %scevgep37.17.11, align 1
  %call18.17.11 = call zeroext i8 @mult(i8 zeroext %549, i8 zeroext %550)
  %scevgep40.17.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 17
  store i8 %call18.17.11, i8* %scevgep40.17.11, align 1
  %551 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.18.11 = getelementptr i8, i8* %b, i64 18
  %552 = load i8, i8* %scevgep37.18.11, align 1
  %call18.18.11 = call zeroext i8 @mult(i8 zeroext %551, i8 zeroext %552)
  %scevgep40.18.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 18
  store i8 %call18.18.11, i8* %scevgep40.18.11, align 1
  %553 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.19.11 = getelementptr i8, i8* %b, i64 19
  %554 = load i8, i8* %scevgep37.19.11, align 1
  %call18.19.11 = call zeroext i8 @mult(i8 zeroext %553, i8 zeroext %554)
  %scevgep40.19.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 19
  store i8 %call18.19.11, i8* %scevgep40.19.11, align 1
  %555 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.20.11 = getelementptr i8, i8* %b, i64 20
  %556 = load i8, i8* %scevgep37.20.11, align 1
  %call18.20.11 = call zeroext i8 @mult(i8 zeroext %555, i8 zeroext %556)
  %scevgep40.20.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 0, i64 20
  store i8 %call18.20.11, i8* %scevgep40.20.11, align 1
  %scevgep39.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %514, i64 0, i64 1, i64 0
  %557 = bitcast i8* %scevgep39.11 to [21 x [21 x i8]]*
  %arrayidx.12 = getelementptr inbounds i8, i8* %a, i64 12
  %558 = load i8, i8* %arrayidx.12, align 1
  %559 = load i8, i8* %b, align 1
  %call18.1283 = call zeroext i8 @mult(i8 zeroext %558, i8 zeroext %559)
  %scevgep40.1284 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 0
  store i8 %call18.1283, i8* %scevgep40.1284, align 1
  %560 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.1.12 = getelementptr i8, i8* %b, i64 1
  %561 = load i8, i8* %scevgep37.1.12, align 1
  %call18.1.12 = call zeroext i8 @mult(i8 zeroext %560, i8 zeroext %561)
  %scevgep40.1.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 1
  store i8 %call18.1.12, i8* %scevgep40.1.12, align 1
  %562 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.2.12 = getelementptr i8, i8* %b, i64 2
  %563 = load i8, i8* %scevgep37.2.12, align 1
  %call18.2.12 = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563)
  %scevgep40.2.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 2
  store i8 %call18.2.12, i8* %scevgep40.2.12, align 1
  %564 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.3.12 = getelementptr i8, i8* %b, i64 3
  %565 = load i8, i8* %scevgep37.3.12, align 1
  %call18.3.12 = call zeroext i8 @mult(i8 zeroext %564, i8 zeroext %565)
  %scevgep40.3.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 3
  store i8 %call18.3.12, i8* %scevgep40.3.12, align 1
  %566 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.4.12 = getelementptr i8, i8* %b, i64 4
  %567 = load i8, i8* %scevgep37.4.12, align 1
  %call18.4.12 = call zeroext i8 @mult(i8 zeroext %566, i8 zeroext %567)
  %scevgep40.4.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 4
  store i8 %call18.4.12, i8* %scevgep40.4.12, align 1
  %568 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.5.12 = getelementptr i8, i8* %b, i64 5
  %569 = load i8, i8* %scevgep37.5.12, align 1
  %call18.5.12 = call zeroext i8 @mult(i8 zeroext %568, i8 zeroext %569)
  %scevgep40.5.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 5
  store i8 %call18.5.12, i8* %scevgep40.5.12, align 1
  %570 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.6.12 = getelementptr i8, i8* %b, i64 6
  %571 = load i8, i8* %scevgep37.6.12, align 1
  %call18.6.12 = call zeroext i8 @mult(i8 zeroext %570, i8 zeroext %571)
  %scevgep40.6.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 6
  store i8 %call18.6.12, i8* %scevgep40.6.12, align 1
  %572 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.7.12 = getelementptr i8, i8* %b, i64 7
  %573 = load i8, i8* %scevgep37.7.12, align 1
  %call18.7.12 = call zeroext i8 @mult(i8 zeroext %572, i8 zeroext %573)
  %scevgep40.7.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 7
  store i8 %call18.7.12, i8* %scevgep40.7.12, align 1
  %574 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.8.12 = getelementptr i8, i8* %b, i64 8
  %575 = load i8, i8* %scevgep37.8.12, align 1
  %call18.8.12 = call zeroext i8 @mult(i8 zeroext %574, i8 zeroext %575)
  %scevgep40.8.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 8
  store i8 %call18.8.12, i8* %scevgep40.8.12, align 1
  %576 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.9.12 = getelementptr i8, i8* %b, i64 9
  %577 = load i8, i8* %scevgep37.9.12, align 1
  %call18.9.12 = call zeroext i8 @mult(i8 zeroext %576, i8 zeroext %577)
  %scevgep40.9.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 9
  store i8 %call18.9.12, i8* %scevgep40.9.12, align 1
  %578 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.10.12 = getelementptr i8, i8* %b, i64 10
  %579 = load i8, i8* %scevgep37.10.12, align 1
  %call18.10.12 = call zeroext i8 @mult(i8 zeroext %578, i8 zeroext %579)
  %scevgep40.10.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 10
  store i8 %call18.10.12, i8* %scevgep40.10.12, align 1
  %580 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.11.12 = getelementptr i8, i8* %b, i64 11
  %581 = load i8, i8* %scevgep37.11.12, align 1
  %call18.11.12 = call zeroext i8 @mult(i8 zeroext %580, i8 zeroext %581)
  %scevgep40.11.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 11
  store i8 %call18.11.12, i8* %scevgep40.11.12, align 1
  %582 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.12.12 = getelementptr i8, i8* %b, i64 12
  %583 = load i8, i8* %scevgep37.12.12, align 1
  %call18.12.12 = call zeroext i8 @mult(i8 zeroext %582, i8 zeroext %583)
  %scevgep40.12.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 12
  store i8 %call18.12.12, i8* %scevgep40.12.12, align 1
  %584 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.13.12 = getelementptr i8, i8* %b, i64 13
  %585 = load i8, i8* %scevgep37.13.12, align 1
  %call18.13.12 = call zeroext i8 @mult(i8 zeroext %584, i8 zeroext %585)
  %scevgep40.13.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 13
  store i8 %call18.13.12, i8* %scevgep40.13.12, align 1
  %586 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.14.12 = getelementptr i8, i8* %b, i64 14
  %587 = load i8, i8* %scevgep37.14.12, align 1
  %call18.14.12 = call zeroext i8 @mult(i8 zeroext %586, i8 zeroext %587)
  %scevgep40.14.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 14
  store i8 %call18.14.12, i8* %scevgep40.14.12, align 1
  %588 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.15.12 = getelementptr i8, i8* %b, i64 15
  %589 = load i8, i8* %scevgep37.15.12, align 1
  %call18.15.12 = call zeroext i8 @mult(i8 zeroext %588, i8 zeroext %589)
  %scevgep40.15.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 15
  store i8 %call18.15.12, i8* %scevgep40.15.12, align 1
  %590 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.16.12 = getelementptr i8, i8* %b, i64 16
  %591 = load i8, i8* %scevgep37.16.12, align 1
  %call18.16.12 = call zeroext i8 @mult(i8 zeroext %590, i8 zeroext %591)
  %scevgep40.16.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 16
  store i8 %call18.16.12, i8* %scevgep40.16.12, align 1
  %592 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.17.12 = getelementptr i8, i8* %b, i64 17
  %593 = load i8, i8* %scevgep37.17.12, align 1
  %call18.17.12 = call zeroext i8 @mult(i8 zeroext %592, i8 zeroext %593)
  %scevgep40.17.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 17
  store i8 %call18.17.12, i8* %scevgep40.17.12, align 1
  %594 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.18.12 = getelementptr i8, i8* %b, i64 18
  %595 = load i8, i8* %scevgep37.18.12, align 1
  %call18.18.12 = call zeroext i8 @mult(i8 zeroext %594, i8 zeroext %595)
  %scevgep40.18.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 18
  store i8 %call18.18.12, i8* %scevgep40.18.12, align 1
  %596 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.19.12 = getelementptr i8, i8* %b, i64 19
  %597 = load i8, i8* %scevgep37.19.12, align 1
  %call18.19.12 = call zeroext i8 @mult(i8 zeroext %596, i8 zeroext %597)
  %scevgep40.19.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 19
  store i8 %call18.19.12, i8* %scevgep40.19.12, align 1
  %598 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.20.12 = getelementptr i8, i8* %b, i64 20
  %599 = load i8, i8* %scevgep37.20.12, align 1
  %call18.20.12 = call zeroext i8 @mult(i8 zeroext %598, i8 zeroext %599)
  %scevgep40.20.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 0, i64 20
  store i8 %call18.20.12, i8* %scevgep40.20.12, align 1
  %scevgep39.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %557, i64 0, i64 1, i64 0
  %600 = bitcast i8* %scevgep39.12 to [21 x [21 x i8]]*
  %arrayidx.13 = getelementptr inbounds i8, i8* %a, i64 13
  %601 = load i8, i8* %arrayidx.13, align 1
  %602 = load i8, i8* %b, align 1
  %call18.1386 = call zeroext i8 @mult(i8 zeroext %601, i8 zeroext %602)
  %scevgep40.1387 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 0
  store i8 %call18.1386, i8* %scevgep40.1387, align 1
  %603 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.1.13 = getelementptr i8, i8* %b, i64 1
  %604 = load i8, i8* %scevgep37.1.13, align 1
  %call18.1.13 = call zeroext i8 @mult(i8 zeroext %603, i8 zeroext %604)
  %scevgep40.1.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 1
  store i8 %call18.1.13, i8* %scevgep40.1.13, align 1
  %605 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.2.13 = getelementptr i8, i8* %b, i64 2
  %606 = load i8, i8* %scevgep37.2.13, align 1
  %call18.2.13 = call zeroext i8 @mult(i8 zeroext %605, i8 zeroext %606)
  %scevgep40.2.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 2
  store i8 %call18.2.13, i8* %scevgep40.2.13, align 1
  %607 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.3.13 = getelementptr i8, i8* %b, i64 3
  %608 = load i8, i8* %scevgep37.3.13, align 1
  %call18.3.13 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %608)
  %scevgep40.3.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 3
  store i8 %call18.3.13, i8* %scevgep40.3.13, align 1
  %609 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.4.13 = getelementptr i8, i8* %b, i64 4
  %610 = load i8, i8* %scevgep37.4.13, align 1
  %call18.4.13 = call zeroext i8 @mult(i8 zeroext %609, i8 zeroext %610)
  %scevgep40.4.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 4
  store i8 %call18.4.13, i8* %scevgep40.4.13, align 1
  %611 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.5.13 = getelementptr i8, i8* %b, i64 5
  %612 = load i8, i8* %scevgep37.5.13, align 1
  %call18.5.13 = call zeroext i8 @mult(i8 zeroext %611, i8 zeroext %612)
  %scevgep40.5.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 5
  store i8 %call18.5.13, i8* %scevgep40.5.13, align 1
  %613 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.6.13 = getelementptr i8, i8* %b, i64 6
  %614 = load i8, i8* %scevgep37.6.13, align 1
  %call18.6.13 = call zeroext i8 @mult(i8 zeroext %613, i8 zeroext %614)
  %scevgep40.6.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 6
  store i8 %call18.6.13, i8* %scevgep40.6.13, align 1
  %615 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.7.13 = getelementptr i8, i8* %b, i64 7
  %616 = load i8, i8* %scevgep37.7.13, align 1
  %call18.7.13 = call zeroext i8 @mult(i8 zeroext %615, i8 zeroext %616)
  %scevgep40.7.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 7
  store i8 %call18.7.13, i8* %scevgep40.7.13, align 1
  %617 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.8.13 = getelementptr i8, i8* %b, i64 8
  %618 = load i8, i8* %scevgep37.8.13, align 1
  %call18.8.13 = call zeroext i8 @mult(i8 zeroext %617, i8 zeroext %618)
  %scevgep40.8.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 8
  store i8 %call18.8.13, i8* %scevgep40.8.13, align 1
  %619 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.9.13 = getelementptr i8, i8* %b, i64 9
  %620 = load i8, i8* %scevgep37.9.13, align 1
  %call18.9.13 = call zeroext i8 @mult(i8 zeroext %619, i8 zeroext %620)
  %scevgep40.9.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 9
  store i8 %call18.9.13, i8* %scevgep40.9.13, align 1
  %621 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.10.13 = getelementptr i8, i8* %b, i64 10
  %622 = load i8, i8* %scevgep37.10.13, align 1
  %call18.10.13 = call zeroext i8 @mult(i8 zeroext %621, i8 zeroext %622)
  %scevgep40.10.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 10
  store i8 %call18.10.13, i8* %scevgep40.10.13, align 1
  %623 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.11.13 = getelementptr i8, i8* %b, i64 11
  %624 = load i8, i8* %scevgep37.11.13, align 1
  %call18.11.13 = call zeroext i8 @mult(i8 zeroext %623, i8 zeroext %624)
  %scevgep40.11.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 11
  store i8 %call18.11.13, i8* %scevgep40.11.13, align 1
  %625 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.12.13 = getelementptr i8, i8* %b, i64 12
  %626 = load i8, i8* %scevgep37.12.13, align 1
  %call18.12.13 = call zeroext i8 @mult(i8 zeroext %625, i8 zeroext %626)
  %scevgep40.12.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 12
  store i8 %call18.12.13, i8* %scevgep40.12.13, align 1
  %627 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.13.13 = getelementptr i8, i8* %b, i64 13
  %628 = load i8, i8* %scevgep37.13.13, align 1
  %call18.13.13 = call zeroext i8 @mult(i8 zeroext %627, i8 zeroext %628)
  %scevgep40.13.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 13
  store i8 %call18.13.13, i8* %scevgep40.13.13, align 1
  %629 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.14.13 = getelementptr i8, i8* %b, i64 14
  %630 = load i8, i8* %scevgep37.14.13, align 1
  %call18.14.13 = call zeroext i8 @mult(i8 zeroext %629, i8 zeroext %630)
  %scevgep40.14.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 14
  store i8 %call18.14.13, i8* %scevgep40.14.13, align 1
  %631 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.15.13 = getelementptr i8, i8* %b, i64 15
  %632 = load i8, i8* %scevgep37.15.13, align 1
  %call18.15.13 = call zeroext i8 @mult(i8 zeroext %631, i8 zeroext %632)
  %scevgep40.15.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 15
  store i8 %call18.15.13, i8* %scevgep40.15.13, align 1
  %633 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.16.13 = getelementptr i8, i8* %b, i64 16
  %634 = load i8, i8* %scevgep37.16.13, align 1
  %call18.16.13 = call zeroext i8 @mult(i8 zeroext %633, i8 zeroext %634)
  %scevgep40.16.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 16
  store i8 %call18.16.13, i8* %scevgep40.16.13, align 1
  %635 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.17.13 = getelementptr i8, i8* %b, i64 17
  %636 = load i8, i8* %scevgep37.17.13, align 1
  %call18.17.13 = call zeroext i8 @mult(i8 zeroext %635, i8 zeroext %636)
  %scevgep40.17.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 17
  store i8 %call18.17.13, i8* %scevgep40.17.13, align 1
  %637 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.18.13 = getelementptr i8, i8* %b, i64 18
  %638 = load i8, i8* %scevgep37.18.13, align 1
  %call18.18.13 = call zeroext i8 @mult(i8 zeroext %637, i8 zeroext %638)
  %scevgep40.18.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 18
  store i8 %call18.18.13, i8* %scevgep40.18.13, align 1
  %639 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.19.13 = getelementptr i8, i8* %b, i64 19
  %640 = load i8, i8* %scevgep37.19.13, align 1
  %call18.19.13 = call zeroext i8 @mult(i8 zeroext %639, i8 zeroext %640)
  %scevgep40.19.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 19
  store i8 %call18.19.13, i8* %scevgep40.19.13, align 1
  %641 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.20.13 = getelementptr i8, i8* %b, i64 20
  %642 = load i8, i8* %scevgep37.20.13, align 1
  %call18.20.13 = call zeroext i8 @mult(i8 zeroext %641, i8 zeroext %642)
  %scevgep40.20.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 0, i64 20
  store i8 %call18.20.13, i8* %scevgep40.20.13, align 1
  %scevgep39.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %600, i64 0, i64 1, i64 0
  %643 = bitcast i8* %scevgep39.13 to [21 x [21 x i8]]*
  %arrayidx.14 = getelementptr inbounds i8, i8* %a, i64 14
  %644 = load i8, i8* %arrayidx.14, align 1
  %645 = load i8, i8* %b, align 1
  %call18.1489 = call zeroext i8 @mult(i8 zeroext %644, i8 zeroext %645)
  %scevgep40.1490 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 0
  store i8 %call18.1489, i8* %scevgep40.1490, align 1
  %646 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.1.14 = getelementptr i8, i8* %b, i64 1
  %647 = load i8, i8* %scevgep37.1.14, align 1
  %call18.1.14 = call zeroext i8 @mult(i8 zeroext %646, i8 zeroext %647)
  %scevgep40.1.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 1
  store i8 %call18.1.14, i8* %scevgep40.1.14, align 1
  %648 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.2.14 = getelementptr i8, i8* %b, i64 2
  %649 = load i8, i8* %scevgep37.2.14, align 1
  %call18.2.14 = call zeroext i8 @mult(i8 zeroext %648, i8 zeroext %649)
  %scevgep40.2.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 2
  store i8 %call18.2.14, i8* %scevgep40.2.14, align 1
  %650 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.3.14 = getelementptr i8, i8* %b, i64 3
  %651 = load i8, i8* %scevgep37.3.14, align 1
  %call18.3.14 = call zeroext i8 @mult(i8 zeroext %650, i8 zeroext %651)
  %scevgep40.3.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 3
  store i8 %call18.3.14, i8* %scevgep40.3.14, align 1
  %652 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.4.14 = getelementptr i8, i8* %b, i64 4
  %653 = load i8, i8* %scevgep37.4.14, align 1
  %call18.4.14 = call zeroext i8 @mult(i8 zeroext %652, i8 zeroext %653)
  %scevgep40.4.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 4
  store i8 %call18.4.14, i8* %scevgep40.4.14, align 1
  %654 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.5.14 = getelementptr i8, i8* %b, i64 5
  %655 = load i8, i8* %scevgep37.5.14, align 1
  %call18.5.14 = call zeroext i8 @mult(i8 zeroext %654, i8 zeroext %655)
  %scevgep40.5.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 5
  store i8 %call18.5.14, i8* %scevgep40.5.14, align 1
  %656 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.6.14 = getelementptr i8, i8* %b, i64 6
  %657 = load i8, i8* %scevgep37.6.14, align 1
  %call18.6.14 = call zeroext i8 @mult(i8 zeroext %656, i8 zeroext %657)
  %scevgep40.6.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 6
  store i8 %call18.6.14, i8* %scevgep40.6.14, align 1
  %658 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.7.14 = getelementptr i8, i8* %b, i64 7
  %659 = load i8, i8* %scevgep37.7.14, align 1
  %call18.7.14 = call zeroext i8 @mult(i8 zeroext %658, i8 zeroext %659)
  %scevgep40.7.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 7
  store i8 %call18.7.14, i8* %scevgep40.7.14, align 1
  %660 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.8.14 = getelementptr i8, i8* %b, i64 8
  %661 = load i8, i8* %scevgep37.8.14, align 1
  %call18.8.14 = call zeroext i8 @mult(i8 zeroext %660, i8 zeroext %661)
  %scevgep40.8.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 8
  store i8 %call18.8.14, i8* %scevgep40.8.14, align 1
  %662 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.9.14 = getelementptr i8, i8* %b, i64 9
  %663 = load i8, i8* %scevgep37.9.14, align 1
  %call18.9.14 = call zeroext i8 @mult(i8 zeroext %662, i8 zeroext %663)
  %scevgep40.9.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 9
  store i8 %call18.9.14, i8* %scevgep40.9.14, align 1
  %664 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.10.14 = getelementptr i8, i8* %b, i64 10
  %665 = load i8, i8* %scevgep37.10.14, align 1
  %call18.10.14 = call zeroext i8 @mult(i8 zeroext %664, i8 zeroext %665)
  %scevgep40.10.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 10
  store i8 %call18.10.14, i8* %scevgep40.10.14, align 1
  %666 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.11.14 = getelementptr i8, i8* %b, i64 11
  %667 = load i8, i8* %scevgep37.11.14, align 1
  %call18.11.14 = call zeroext i8 @mult(i8 zeroext %666, i8 zeroext %667)
  %scevgep40.11.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 11
  store i8 %call18.11.14, i8* %scevgep40.11.14, align 1
  %668 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.12.14 = getelementptr i8, i8* %b, i64 12
  %669 = load i8, i8* %scevgep37.12.14, align 1
  %call18.12.14 = call zeroext i8 @mult(i8 zeroext %668, i8 zeroext %669)
  %scevgep40.12.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 12
  store i8 %call18.12.14, i8* %scevgep40.12.14, align 1
  %670 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.13.14 = getelementptr i8, i8* %b, i64 13
  %671 = load i8, i8* %scevgep37.13.14, align 1
  %call18.13.14 = call zeroext i8 @mult(i8 zeroext %670, i8 zeroext %671)
  %scevgep40.13.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 13
  store i8 %call18.13.14, i8* %scevgep40.13.14, align 1
  %672 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.14.14 = getelementptr i8, i8* %b, i64 14
  %673 = load i8, i8* %scevgep37.14.14, align 1
  %call18.14.14 = call zeroext i8 @mult(i8 zeroext %672, i8 zeroext %673)
  %scevgep40.14.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 14
  store i8 %call18.14.14, i8* %scevgep40.14.14, align 1
  %674 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.15.14 = getelementptr i8, i8* %b, i64 15
  %675 = load i8, i8* %scevgep37.15.14, align 1
  %call18.15.14 = call zeroext i8 @mult(i8 zeroext %674, i8 zeroext %675)
  %scevgep40.15.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 15
  store i8 %call18.15.14, i8* %scevgep40.15.14, align 1
  %676 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.16.14 = getelementptr i8, i8* %b, i64 16
  %677 = load i8, i8* %scevgep37.16.14, align 1
  %call18.16.14 = call zeroext i8 @mult(i8 zeroext %676, i8 zeroext %677)
  %scevgep40.16.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 16
  store i8 %call18.16.14, i8* %scevgep40.16.14, align 1
  %678 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.17.14 = getelementptr i8, i8* %b, i64 17
  %679 = load i8, i8* %scevgep37.17.14, align 1
  %call18.17.14 = call zeroext i8 @mult(i8 zeroext %678, i8 zeroext %679)
  %scevgep40.17.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 17
  store i8 %call18.17.14, i8* %scevgep40.17.14, align 1
  %680 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.18.14 = getelementptr i8, i8* %b, i64 18
  %681 = load i8, i8* %scevgep37.18.14, align 1
  %call18.18.14 = call zeroext i8 @mult(i8 zeroext %680, i8 zeroext %681)
  %scevgep40.18.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 18
  store i8 %call18.18.14, i8* %scevgep40.18.14, align 1
  %682 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.19.14 = getelementptr i8, i8* %b, i64 19
  %683 = load i8, i8* %scevgep37.19.14, align 1
  %call18.19.14 = call zeroext i8 @mult(i8 zeroext %682, i8 zeroext %683)
  %scevgep40.19.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 19
  store i8 %call18.19.14, i8* %scevgep40.19.14, align 1
  %684 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.20.14 = getelementptr i8, i8* %b, i64 20
  %685 = load i8, i8* %scevgep37.20.14, align 1
  %call18.20.14 = call zeroext i8 @mult(i8 zeroext %684, i8 zeroext %685)
  %scevgep40.20.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 0, i64 20
  store i8 %call18.20.14, i8* %scevgep40.20.14, align 1
  %scevgep39.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %643, i64 0, i64 1, i64 0
  %686 = bitcast i8* %scevgep39.14 to [21 x [21 x i8]]*
  %arrayidx.15 = getelementptr inbounds i8, i8* %a, i64 15
  %687 = load i8, i8* %arrayidx.15, align 1
  %688 = load i8, i8* %b, align 1
  %call18.1592 = call zeroext i8 @mult(i8 zeroext %687, i8 zeroext %688)
  %scevgep40.1593 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 0
  store i8 %call18.1592, i8* %scevgep40.1593, align 1
  %689 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.1.15 = getelementptr i8, i8* %b, i64 1
  %690 = load i8, i8* %scevgep37.1.15, align 1
  %call18.1.15 = call zeroext i8 @mult(i8 zeroext %689, i8 zeroext %690)
  %scevgep40.1.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 1
  store i8 %call18.1.15, i8* %scevgep40.1.15, align 1
  %691 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.2.15 = getelementptr i8, i8* %b, i64 2
  %692 = load i8, i8* %scevgep37.2.15, align 1
  %call18.2.15 = call zeroext i8 @mult(i8 zeroext %691, i8 zeroext %692)
  %scevgep40.2.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 2
  store i8 %call18.2.15, i8* %scevgep40.2.15, align 1
  %693 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.3.15 = getelementptr i8, i8* %b, i64 3
  %694 = load i8, i8* %scevgep37.3.15, align 1
  %call18.3.15 = call zeroext i8 @mult(i8 zeroext %693, i8 zeroext %694)
  %scevgep40.3.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 3
  store i8 %call18.3.15, i8* %scevgep40.3.15, align 1
  %695 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.4.15 = getelementptr i8, i8* %b, i64 4
  %696 = load i8, i8* %scevgep37.4.15, align 1
  %call18.4.15 = call zeroext i8 @mult(i8 zeroext %695, i8 zeroext %696)
  %scevgep40.4.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 4
  store i8 %call18.4.15, i8* %scevgep40.4.15, align 1
  %697 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.5.15 = getelementptr i8, i8* %b, i64 5
  %698 = load i8, i8* %scevgep37.5.15, align 1
  %call18.5.15 = call zeroext i8 @mult(i8 zeroext %697, i8 zeroext %698)
  %scevgep40.5.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 5
  store i8 %call18.5.15, i8* %scevgep40.5.15, align 1
  %699 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.6.15 = getelementptr i8, i8* %b, i64 6
  %700 = load i8, i8* %scevgep37.6.15, align 1
  %call18.6.15 = call zeroext i8 @mult(i8 zeroext %699, i8 zeroext %700)
  %scevgep40.6.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 6
  store i8 %call18.6.15, i8* %scevgep40.6.15, align 1
  %701 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.7.15 = getelementptr i8, i8* %b, i64 7
  %702 = load i8, i8* %scevgep37.7.15, align 1
  %call18.7.15 = call zeroext i8 @mult(i8 zeroext %701, i8 zeroext %702)
  %scevgep40.7.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 7
  store i8 %call18.7.15, i8* %scevgep40.7.15, align 1
  %703 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.8.15 = getelementptr i8, i8* %b, i64 8
  %704 = load i8, i8* %scevgep37.8.15, align 1
  %call18.8.15 = call zeroext i8 @mult(i8 zeroext %703, i8 zeroext %704)
  %scevgep40.8.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 8
  store i8 %call18.8.15, i8* %scevgep40.8.15, align 1
  %705 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.9.15 = getelementptr i8, i8* %b, i64 9
  %706 = load i8, i8* %scevgep37.9.15, align 1
  %call18.9.15 = call zeroext i8 @mult(i8 zeroext %705, i8 zeroext %706)
  %scevgep40.9.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 9
  store i8 %call18.9.15, i8* %scevgep40.9.15, align 1
  %707 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.10.15 = getelementptr i8, i8* %b, i64 10
  %708 = load i8, i8* %scevgep37.10.15, align 1
  %call18.10.15 = call zeroext i8 @mult(i8 zeroext %707, i8 zeroext %708)
  %scevgep40.10.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 10
  store i8 %call18.10.15, i8* %scevgep40.10.15, align 1
  %709 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.11.15 = getelementptr i8, i8* %b, i64 11
  %710 = load i8, i8* %scevgep37.11.15, align 1
  %call18.11.15 = call zeroext i8 @mult(i8 zeroext %709, i8 zeroext %710)
  %scevgep40.11.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 11
  store i8 %call18.11.15, i8* %scevgep40.11.15, align 1
  %711 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.12.15 = getelementptr i8, i8* %b, i64 12
  %712 = load i8, i8* %scevgep37.12.15, align 1
  %call18.12.15 = call zeroext i8 @mult(i8 zeroext %711, i8 zeroext %712)
  %scevgep40.12.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 12
  store i8 %call18.12.15, i8* %scevgep40.12.15, align 1
  %713 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.13.15 = getelementptr i8, i8* %b, i64 13
  %714 = load i8, i8* %scevgep37.13.15, align 1
  %call18.13.15 = call zeroext i8 @mult(i8 zeroext %713, i8 zeroext %714)
  %scevgep40.13.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 13
  store i8 %call18.13.15, i8* %scevgep40.13.15, align 1
  %715 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.14.15 = getelementptr i8, i8* %b, i64 14
  %716 = load i8, i8* %scevgep37.14.15, align 1
  %call18.14.15 = call zeroext i8 @mult(i8 zeroext %715, i8 zeroext %716)
  %scevgep40.14.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 14
  store i8 %call18.14.15, i8* %scevgep40.14.15, align 1
  %717 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.15.15 = getelementptr i8, i8* %b, i64 15
  %718 = load i8, i8* %scevgep37.15.15, align 1
  %call18.15.15 = call zeroext i8 @mult(i8 zeroext %717, i8 zeroext %718)
  %scevgep40.15.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 15
  store i8 %call18.15.15, i8* %scevgep40.15.15, align 1
  %719 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.16.15 = getelementptr i8, i8* %b, i64 16
  %720 = load i8, i8* %scevgep37.16.15, align 1
  %call18.16.15 = call zeroext i8 @mult(i8 zeroext %719, i8 zeroext %720)
  %scevgep40.16.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 16
  store i8 %call18.16.15, i8* %scevgep40.16.15, align 1
  %721 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.17.15 = getelementptr i8, i8* %b, i64 17
  %722 = load i8, i8* %scevgep37.17.15, align 1
  %call18.17.15 = call zeroext i8 @mult(i8 zeroext %721, i8 zeroext %722)
  %scevgep40.17.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 17
  store i8 %call18.17.15, i8* %scevgep40.17.15, align 1
  %723 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.18.15 = getelementptr i8, i8* %b, i64 18
  %724 = load i8, i8* %scevgep37.18.15, align 1
  %call18.18.15 = call zeroext i8 @mult(i8 zeroext %723, i8 zeroext %724)
  %scevgep40.18.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 18
  store i8 %call18.18.15, i8* %scevgep40.18.15, align 1
  %725 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.19.15 = getelementptr i8, i8* %b, i64 19
  %726 = load i8, i8* %scevgep37.19.15, align 1
  %call18.19.15 = call zeroext i8 @mult(i8 zeroext %725, i8 zeroext %726)
  %scevgep40.19.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 19
  store i8 %call18.19.15, i8* %scevgep40.19.15, align 1
  %727 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.20.15 = getelementptr i8, i8* %b, i64 20
  %728 = load i8, i8* %scevgep37.20.15, align 1
  %call18.20.15 = call zeroext i8 @mult(i8 zeroext %727, i8 zeroext %728)
  %scevgep40.20.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 0, i64 20
  store i8 %call18.20.15, i8* %scevgep40.20.15, align 1
  %scevgep39.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %686, i64 0, i64 1, i64 0
  %729 = bitcast i8* %scevgep39.15 to [21 x [21 x i8]]*
  %arrayidx.16 = getelementptr inbounds i8, i8* %a, i64 16
  %730 = load i8, i8* %arrayidx.16, align 1
  %731 = load i8, i8* %b, align 1
  %call18.1695 = call zeroext i8 @mult(i8 zeroext %730, i8 zeroext %731)
  %scevgep40.1696 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 0
  store i8 %call18.1695, i8* %scevgep40.1696, align 1
  %732 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.1.16 = getelementptr i8, i8* %b, i64 1
  %733 = load i8, i8* %scevgep37.1.16, align 1
  %call18.1.16 = call zeroext i8 @mult(i8 zeroext %732, i8 zeroext %733)
  %scevgep40.1.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 1
  store i8 %call18.1.16, i8* %scevgep40.1.16, align 1
  %734 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.2.16 = getelementptr i8, i8* %b, i64 2
  %735 = load i8, i8* %scevgep37.2.16, align 1
  %call18.2.16 = call zeroext i8 @mult(i8 zeroext %734, i8 zeroext %735)
  %scevgep40.2.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 2
  store i8 %call18.2.16, i8* %scevgep40.2.16, align 1
  %736 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.3.16 = getelementptr i8, i8* %b, i64 3
  %737 = load i8, i8* %scevgep37.3.16, align 1
  %call18.3.16 = call zeroext i8 @mult(i8 zeroext %736, i8 zeroext %737)
  %scevgep40.3.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 3
  store i8 %call18.3.16, i8* %scevgep40.3.16, align 1
  %738 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.4.16 = getelementptr i8, i8* %b, i64 4
  %739 = load i8, i8* %scevgep37.4.16, align 1
  %call18.4.16 = call zeroext i8 @mult(i8 zeroext %738, i8 zeroext %739)
  %scevgep40.4.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 4
  store i8 %call18.4.16, i8* %scevgep40.4.16, align 1
  %740 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.5.16 = getelementptr i8, i8* %b, i64 5
  %741 = load i8, i8* %scevgep37.5.16, align 1
  %call18.5.16 = call zeroext i8 @mult(i8 zeroext %740, i8 zeroext %741)
  %scevgep40.5.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 5
  store i8 %call18.5.16, i8* %scevgep40.5.16, align 1
  %742 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.6.16 = getelementptr i8, i8* %b, i64 6
  %743 = load i8, i8* %scevgep37.6.16, align 1
  %call18.6.16 = call zeroext i8 @mult(i8 zeroext %742, i8 zeroext %743)
  %scevgep40.6.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 6
  store i8 %call18.6.16, i8* %scevgep40.6.16, align 1
  %744 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.7.16 = getelementptr i8, i8* %b, i64 7
  %745 = load i8, i8* %scevgep37.7.16, align 1
  %call18.7.16 = call zeroext i8 @mult(i8 zeroext %744, i8 zeroext %745)
  %scevgep40.7.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 7
  store i8 %call18.7.16, i8* %scevgep40.7.16, align 1
  %746 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.8.16 = getelementptr i8, i8* %b, i64 8
  %747 = load i8, i8* %scevgep37.8.16, align 1
  %call18.8.16 = call zeroext i8 @mult(i8 zeroext %746, i8 zeroext %747)
  %scevgep40.8.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 8
  store i8 %call18.8.16, i8* %scevgep40.8.16, align 1
  %748 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.9.16 = getelementptr i8, i8* %b, i64 9
  %749 = load i8, i8* %scevgep37.9.16, align 1
  %call18.9.16 = call zeroext i8 @mult(i8 zeroext %748, i8 zeroext %749)
  %scevgep40.9.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 9
  store i8 %call18.9.16, i8* %scevgep40.9.16, align 1
  %750 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.10.16 = getelementptr i8, i8* %b, i64 10
  %751 = load i8, i8* %scevgep37.10.16, align 1
  %call18.10.16 = call zeroext i8 @mult(i8 zeroext %750, i8 zeroext %751)
  %scevgep40.10.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 10
  store i8 %call18.10.16, i8* %scevgep40.10.16, align 1
  %752 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.11.16 = getelementptr i8, i8* %b, i64 11
  %753 = load i8, i8* %scevgep37.11.16, align 1
  %call18.11.16 = call zeroext i8 @mult(i8 zeroext %752, i8 zeroext %753)
  %scevgep40.11.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 11
  store i8 %call18.11.16, i8* %scevgep40.11.16, align 1
  %754 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.12.16 = getelementptr i8, i8* %b, i64 12
  %755 = load i8, i8* %scevgep37.12.16, align 1
  %call18.12.16 = call zeroext i8 @mult(i8 zeroext %754, i8 zeroext %755)
  %scevgep40.12.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 12
  store i8 %call18.12.16, i8* %scevgep40.12.16, align 1
  %756 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.13.16 = getelementptr i8, i8* %b, i64 13
  %757 = load i8, i8* %scevgep37.13.16, align 1
  %call18.13.16 = call zeroext i8 @mult(i8 zeroext %756, i8 zeroext %757)
  %scevgep40.13.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 13
  store i8 %call18.13.16, i8* %scevgep40.13.16, align 1
  %758 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.14.16 = getelementptr i8, i8* %b, i64 14
  %759 = load i8, i8* %scevgep37.14.16, align 1
  %call18.14.16 = call zeroext i8 @mult(i8 zeroext %758, i8 zeroext %759)
  %scevgep40.14.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 14
  store i8 %call18.14.16, i8* %scevgep40.14.16, align 1
  %760 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.15.16 = getelementptr i8, i8* %b, i64 15
  %761 = load i8, i8* %scevgep37.15.16, align 1
  %call18.15.16 = call zeroext i8 @mult(i8 zeroext %760, i8 zeroext %761)
  %scevgep40.15.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 15
  store i8 %call18.15.16, i8* %scevgep40.15.16, align 1
  %762 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.16.16 = getelementptr i8, i8* %b, i64 16
  %763 = load i8, i8* %scevgep37.16.16, align 1
  %call18.16.16 = call zeroext i8 @mult(i8 zeroext %762, i8 zeroext %763)
  %scevgep40.16.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 16
  store i8 %call18.16.16, i8* %scevgep40.16.16, align 1
  %764 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.17.16 = getelementptr i8, i8* %b, i64 17
  %765 = load i8, i8* %scevgep37.17.16, align 1
  %call18.17.16 = call zeroext i8 @mult(i8 zeroext %764, i8 zeroext %765)
  %scevgep40.17.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 17
  store i8 %call18.17.16, i8* %scevgep40.17.16, align 1
  %766 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.18.16 = getelementptr i8, i8* %b, i64 18
  %767 = load i8, i8* %scevgep37.18.16, align 1
  %call18.18.16 = call zeroext i8 @mult(i8 zeroext %766, i8 zeroext %767)
  %scevgep40.18.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 18
  store i8 %call18.18.16, i8* %scevgep40.18.16, align 1
  %768 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.19.16 = getelementptr i8, i8* %b, i64 19
  %769 = load i8, i8* %scevgep37.19.16, align 1
  %call18.19.16 = call zeroext i8 @mult(i8 zeroext %768, i8 zeroext %769)
  %scevgep40.19.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 19
  store i8 %call18.19.16, i8* %scevgep40.19.16, align 1
  %770 = load i8, i8* %arrayidx.16, align 1
  %scevgep37.20.16 = getelementptr i8, i8* %b, i64 20
  %771 = load i8, i8* %scevgep37.20.16, align 1
  %call18.20.16 = call zeroext i8 @mult(i8 zeroext %770, i8 zeroext %771)
  %scevgep40.20.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 0, i64 20
  store i8 %call18.20.16, i8* %scevgep40.20.16, align 1
  %scevgep39.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %729, i64 0, i64 1, i64 0
  %772 = bitcast i8* %scevgep39.16 to [21 x [21 x i8]]*
  %arrayidx.17 = getelementptr inbounds i8, i8* %a, i64 17
  %773 = load i8, i8* %arrayidx.17, align 1
  %774 = load i8, i8* %b, align 1
  %call18.1798 = call zeroext i8 @mult(i8 zeroext %773, i8 zeroext %774)
  %scevgep40.1799 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 0
  store i8 %call18.1798, i8* %scevgep40.1799, align 1
  %775 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.1.17 = getelementptr i8, i8* %b, i64 1
  %776 = load i8, i8* %scevgep37.1.17, align 1
  %call18.1.17 = call zeroext i8 @mult(i8 zeroext %775, i8 zeroext %776)
  %scevgep40.1.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 1
  store i8 %call18.1.17, i8* %scevgep40.1.17, align 1
  %777 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.2.17 = getelementptr i8, i8* %b, i64 2
  %778 = load i8, i8* %scevgep37.2.17, align 1
  %call18.2.17 = call zeroext i8 @mult(i8 zeroext %777, i8 zeroext %778)
  %scevgep40.2.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 2
  store i8 %call18.2.17, i8* %scevgep40.2.17, align 1
  %779 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.3.17 = getelementptr i8, i8* %b, i64 3
  %780 = load i8, i8* %scevgep37.3.17, align 1
  %call18.3.17 = call zeroext i8 @mult(i8 zeroext %779, i8 zeroext %780)
  %scevgep40.3.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 3
  store i8 %call18.3.17, i8* %scevgep40.3.17, align 1
  %781 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.4.17 = getelementptr i8, i8* %b, i64 4
  %782 = load i8, i8* %scevgep37.4.17, align 1
  %call18.4.17 = call zeroext i8 @mult(i8 zeroext %781, i8 zeroext %782)
  %scevgep40.4.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 4
  store i8 %call18.4.17, i8* %scevgep40.4.17, align 1
  %783 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.5.17 = getelementptr i8, i8* %b, i64 5
  %784 = load i8, i8* %scevgep37.5.17, align 1
  %call18.5.17 = call zeroext i8 @mult(i8 zeroext %783, i8 zeroext %784)
  %scevgep40.5.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 5
  store i8 %call18.5.17, i8* %scevgep40.5.17, align 1
  %785 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.6.17 = getelementptr i8, i8* %b, i64 6
  %786 = load i8, i8* %scevgep37.6.17, align 1
  %call18.6.17 = call zeroext i8 @mult(i8 zeroext %785, i8 zeroext %786)
  %scevgep40.6.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 6
  store i8 %call18.6.17, i8* %scevgep40.6.17, align 1
  %787 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.7.17 = getelementptr i8, i8* %b, i64 7
  %788 = load i8, i8* %scevgep37.7.17, align 1
  %call18.7.17 = call zeroext i8 @mult(i8 zeroext %787, i8 zeroext %788)
  %scevgep40.7.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 7
  store i8 %call18.7.17, i8* %scevgep40.7.17, align 1
  %789 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.8.17 = getelementptr i8, i8* %b, i64 8
  %790 = load i8, i8* %scevgep37.8.17, align 1
  %call18.8.17 = call zeroext i8 @mult(i8 zeroext %789, i8 zeroext %790)
  %scevgep40.8.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 8
  store i8 %call18.8.17, i8* %scevgep40.8.17, align 1
  %791 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.9.17 = getelementptr i8, i8* %b, i64 9
  %792 = load i8, i8* %scevgep37.9.17, align 1
  %call18.9.17 = call zeroext i8 @mult(i8 zeroext %791, i8 zeroext %792)
  %scevgep40.9.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 9
  store i8 %call18.9.17, i8* %scevgep40.9.17, align 1
  %793 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.10.17 = getelementptr i8, i8* %b, i64 10
  %794 = load i8, i8* %scevgep37.10.17, align 1
  %call18.10.17 = call zeroext i8 @mult(i8 zeroext %793, i8 zeroext %794)
  %scevgep40.10.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 10
  store i8 %call18.10.17, i8* %scevgep40.10.17, align 1
  %795 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.11.17 = getelementptr i8, i8* %b, i64 11
  %796 = load i8, i8* %scevgep37.11.17, align 1
  %call18.11.17 = call zeroext i8 @mult(i8 zeroext %795, i8 zeroext %796)
  %scevgep40.11.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 11
  store i8 %call18.11.17, i8* %scevgep40.11.17, align 1
  %797 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.12.17 = getelementptr i8, i8* %b, i64 12
  %798 = load i8, i8* %scevgep37.12.17, align 1
  %call18.12.17 = call zeroext i8 @mult(i8 zeroext %797, i8 zeroext %798)
  %scevgep40.12.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 12
  store i8 %call18.12.17, i8* %scevgep40.12.17, align 1
  %799 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.13.17 = getelementptr i8, i8* %b, i64 13
  %800 = load i8, i8* %scevgep37.13.17, align 1
  %call18.13.17 = call zeroext i8 @mult(i8 zeroext %799, i8 zeroext %800)
  %scevgep40.13.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 13
  store i8 %call18.13.17, i8* %scevgep40.13.17, align 1
  %801 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.14.17 = getelementptr i8, i8* %b, i64 14
  %802 = load i8, i8* %scevgep37.14.17, align 1
  %call18.14.17 = call zeroext i8 @mult(i8 zeroext %801, i8 zeroext %802)
  %scevgep40.14.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 14
  store i8 %call18.14.17, i8* %scevgep40.14.17, align 1
  %803 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.15.17 = getelementptr i8, i8* %b, i64 15
  %804 = load i8, i8* %scevgep37.15.17, align 1
  %call18.15.17 = call zeroext i8 @mult(i8 zeroext %803, i8 zeroext %804)
  %scevgep40.15.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 15
  store i8 %call18.15.17, i8* %scevgep40.15.17, align 1
  %805 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.16.17 = getelementptr i8, i8* %b, i64 16
  %806 = load i8, i8* %scevgep37.16.17, align 1
  %call18.16.17 = call zeroext i8 @mult(i8 zeroext %805, i8 zeroext %806)
  %scevgep40.16.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 16
  store i8 %call18.16.17, i8* %scevgep40.16.17, align 1
  %807 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.17.17 = getelementptr i8, i8* %b, i64 17
  %808 = load i8, i8* %scevgep37.17.17, align 1
  %call18.17.17 = call zeroext i8 @mult(i8 zeroext %807, i8 zeroext %808)
  %scevgep40.17.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 17
  store i8 %call18.17.17, i8* %scevgep40.17.17, align 1
  %809 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.18.17 = getelementptr i8, i8* %b, i64 18
  %810 = load i8, i8* %scevgep37.18.17, align 1
  %call18.18.17 = call zeroext i8 @mult(i8 zeroext %809, i8 zeroext %810)
  %scevgep40.18.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 18
  store i8 %call18.18.17, i8* %scevgep40.18.17, align 1
  %811 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.19.17 = getelementptr i8, i8* %b, i64 19
  %812 = load i8, i8* %scevgep37.19.17, align 1
  %call18.19.17 = call zeroext i8 @mult(i8 zeroext %811, i8 zeroext %812)
  %scevgep40.19.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 19
  store i8 %call18.19.17, i8* %scevgep40.19.17, align 1
  %813 = load i8, i8* %arrayidx.17, align 1
  %scevgep37.20.17 = getelementptr i8, i8* %b, i64 20
  %814 = load i8, i8* %scevgep37.20.17, align 1
  %call18.20.17 = call zeroext i8 @mult(i8 zeroext %813, i8 zeroext %814)
  %scevgep40.20.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 0, i64 20
  store i8 %call18.20.17, i8* %scevgep40.20.17, align 1
  %scevgep39.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %772, i64 0, i64 1, i64 0
  %815 = bitcast i8* %scevgep39.17 to [21 x [21 x i8]]*
  %arrayidx.18 = getelementptr inbounds i8, i8* %a, i64 18
  %816 = load i8, i8* %arrayidx.18, align 1
  %817 = load i8, i8* %b, align 1
  %call18.18101 = call zeroext i8 @mult(i8 zeroext %816, i8 zeroext %817)
  %scevgep40.18102 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 0
  store i8 %call18.18101, i8* %scevgep40.18102, align 1
  %818 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.1.18 = getelementptr i8, i8* %b, i64 1
  %819 = load i8, i8* %scevgep37.1.18, align 1
  %call18.1.18 = call zeroext i8 @mult(i8 zeroext %818, i8 zeroext %819)
  %scevgep40.1.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 1
  store i8 %call18.1.18, i8* %scevgep40.1.18, align 1
  %820 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.2.18 = getelementptr i8, i8* %b, i64 2
  %821 = load i8, i8* %scevgep37.2.18, align 1
  %call18.2.18 = call zeroext i8 @mult(i8 zeroext %820, i8 zeroext %821)
  %scevgep40.2.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 2
  store i8 %call18.2.18, i8* %scevgep40.2.18, align 1
  %822 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.3.18 = getelementptr i8, i8* %b, i64 3
  %823 = load i8, i8* %scevgep37.3.18, align 1
  %call18.3.18 = call zeroext i8 @mult(i8 zeroext %822, i8 zeroext %823)
  %scevgep40.3.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 3
  store i8 %call18.3.18, i8* %scevgep40.3.18, align 1
  %824 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.4.18 = getelementptr i8, i8* %b, i64 4
  %825 = load i8, i8* %scevgep37.4.18, align 1
  %call18.4.18 = call zeroext i8 @mult(i8 zeroext %824, i8 zeroext %825)
  %scevgep40.4.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 4
  store i8 %call18.4.18, i8* %scevgep40.4.18, align 1
  %826 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.5.18 = getelementptr i8, i8* %b, i64 5
  %827 = load i8, i8* %scevgep37.5.18, align 1
  %call18.5.18 = call zeroext i8 @mult(i8 zeroext %826, i8 zeroext %827)
  %scevgep40.5.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 5
  store i8 %call18.5.18, i8* %scevgep40.5.18, align 1
  %828 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.6.18 = getelementptr i8, i8* %b, i64 6
  %829 = load i8, i8* %scevgep37.6.18, align 1
  %call18.6.18 = call zeroext i8 @mult(i8 zeroext %828, i8 zeroext %829)
  %scevgep40.6.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 6
  store i8 %call18.6.18, i8* %scevgep40.6.18, align 1
  %830 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.7.18 = getelementptr i8, i8* %b, i64 7
  %831 = load i8, i8* %scevgep37.7.18, align 1
  %call18.7.18 = call zeroext i8 @mult(i8 zeroext %830, i8 zeroext %831)
  %scevgep40.7.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 7
  store i8 %call18.7.18, i8* %scevgep40.7.18, align 1
  %832 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.8.18 = getelementptr i8, i8* %b, i64 8
  %833 = load i8, i8* %scevgep37.8.18, align 1
  %call18.8.18 = call zeroext i8 @mult(i8 zeroext %832, i8 zeroext %833)
  %scevgep40.8.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 8
  store i8 %call18.8.18, i8* %scevgep40.8.18, align 1
  %834 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.9.18 = getelementptr i8, i8* %b, i64 9
  %835 = load i8, i8* %scevgep37.9.18, align 1
  %call18.9.18 = call zeroext i8 @mult(i8 zeroext %834, i8 zeroext %835)
  %scevgep40.9.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 9
  store i8 %call18.9.18, i8* %scevgep40.9.18, align 1
  %836 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.10.18 = getelementptr i8, i8* %b, i64 10
  %837 = load i8, i8* %scevgep37.10.18, align 1
  %call18.10.18 = call zeroext i8 @mult(i8 zeroext %836, i8 zeroext %837)
  %scevgep40.10.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 10
  store i8 %call18.10.18, i8* %scevgep40.10.18, align 1
  %838 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.11.18 = getelementptr i8, i8* %b, i64 11
  %839 = load i8, i8* %scevgep37.11.18, align 1
  %call18.11.18 = call zeroext i8 @mult(i8 zeroext %838, i8 zeroext %839)
  %scevgep40.11.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 11
  store i8 %call18.11.18, i8* %scevgep40.11.18, align 1
  %840 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.12.18 = getelementptr i8, i8* %b, i64 12
  %841 = load i8, i8* %scevgep37.12.18, align 1
  %call18.12.18 = call zeroext i8 @mult(i8 zeroext %840, i8 zeroext %841)
  %scevgep40.12.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 12
  store i8 %call18.12.18, i8* %scevgep40.12.18, align 1
  %842 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.13.18 = getelementptr i8, i8* %b, i64 13
  %843 = load i8, i8* %scevgep37.13.18, align 1
  %call18.13.18 = call zeroext i8 @mult(i8 zeroext %842, i8 zeroext %843)
  %scevgep40.13.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 13
  store i8 %call18.13.18, i8* %scevgep40.13.18, align 1
  %844 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.14.18 = getelementptr i8, i8* %b, i64 14
  %845 = load i8, i8* %scevgep37.14.18, align 1
  %call18.14.18 = call zeroext i8 @mult(i8 zeroext %844, i8 zeroext %845)
  %scevgep40.14.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 14
  store i8 %call18.14.18, i8* %scevgep40.14.18, align 1
  %846 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.15.18 = getelementptr i8, i8* %b, i64 15
  %847 = load i8, i8* %scevgep37.15.18, align 1
  %call18.15.18 = call zeroext i8 @mult(i8 zeroext %846, i8 zeroext %847)
  %scevgep40.15.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 15
  store i8 %call18.15.18, i8* %scevgep40.15.18, align 1
  %848 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.16.18 = getelementptr i8, i8* %b, i64 16
  %849 = load i8, i8* %scevgep37.16.18, align 1
  %call18.16.18 = call zeroext i8 @mult(i8 zeroext %848, i8 zeroext %849)
  %scevgep40.16.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 16
  store i8 %call18.16.18, i8* %scevgep40.16.18, align 1
  %850 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.17.18 = getelementptr i8, i8* %b, i64 17
  %851 = load i8, i8* %scevgep37.17.18, align 1
  %call18.17.18 = call zeroext i8 @mult(i8 zeroext %850, i8 zeroext %851)
  %scevgep40.17.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 17
  store i8 %call18.17.18, i8* %scevgep40.17.18, align 1
  %852 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.18.18 = getelementptr i8, i8* %b, i64 18
  %853 = load i8, i8* %scevgep37.18.18, align 1
  %call18.18.18 = call zeroext i8 @mult(i8 zeroext %852, i8 zeroext %853)
  %scevgep40.18.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 18
  store i8 %call18.18.18, i8* %scevgep40.18.18, align 1
  %854 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.19.18 = getelementptr i8, i8* %b, i64 19
  %855 = load i8, i8* %scevgep37.19.18, align 1
  %call18.19.18 = call zeroext i8 @mult(i8 zeroext %854, i8 zeroext %855)
  %scevgep40.19.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 19
  store i8 %call18.19.18, i8* %scevgep40.19.18, align 1
  %856 = load i8, i8* %arrayidx.18, align 1
  %scevgep37.20.18 = getelementptr i8, i8* %b, i64 20
  %857 = load i8, i8* %scevgep37.20.18, align 1
  %call18.20.18 = call zeroext i8 @mult(i8 zeroext %856, i8 zeroext %857)
  %scevgep40.20.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 0, i64 20
  store i8 %call18.20.18, i8* %scevgep40.20.18, align 1
  %scevgep39.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %815, i64 0, i64 1, i64 0
  %858 = bitcast i8* %scevgep39.18 to [21 x [21 x i8]]*
  %arrayidx.19 = getelementptr inbounds i8, i8* %a, i64 19
  %859 = load i8, i8* %arrayidx.19, align 1
  %860 = load i8, i8* %b, align 1
  %call18.19104 = call zeroext i8 @mult(i8 zeroext %859, i8 zeroext %860)
  %scevgep40.19105 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 0
  store i8 %call18.19104, i8* %scevgep40.19105, align 1
  %861 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.1.19 = getelementptr i8, i8* %b, i64 1
  %862 = load i8, i8* %scevgep37.1.19, align 1
  %call18.1.19 = call zeroext i8 @mult(i8 zeroext %861, i8 zeroext %862)
  %scevgep40.1.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 1
  store i8 %call18.1.19, i8* %scevgep40.1.19, align 1
  %863 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.2.19 = getelementptr i8, i8* %b, i64 2
  %864 = load i8, i8* %scevgep37.2.19, align 1
  %call18.2.19 = call zeroext i8 @mult(i8 zeroext %863, i8 zeroext %864)
  %scevgep40.2.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 2
  store i8 %call18.2.19, i8* %scevgep40.2.19, align 1
  %865 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.3.19 = getelementptr i8, i8* %b, i64 3
  %866 = load i8, i8* %scevgep37.3.19, align 1
  %call18.3.19 = call zeroext i8 @mult(i8 zeroext %865, i8 zeroext %866)
  %scevgep40.3.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 3
  store i8 %call18.3.19, i8* %scevgep40.3.19, align 1
  %867 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.4.19 = getelementptr i8, i8* %b, i64 4
  %868 = load i8, i8* %scevgep37.4.19, align 1
  %call18.4.19 = call zeroext i8 @mult(i8 zeroext %867, i8 zeroext %868)
  %scevgep40.4.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 4
  store i8 %call18.4.19, i8* %scevgep40.4.19, align 1
  %869 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.5.19 = getelementptr i8, i8* %b, i64 5
  %870 = load i8, i8* %scevgep37.5.19, align 1
  %call18.5.19 = call zeroext i8 @mult(i8 zeroext %869, i8 zeroext %870)
  %scevgep40.5.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 5
  store i8 %call18.5.19, i8* %scevgep40.5.19, align 1
  %871 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.6.19 = getelementptr i8, i8* %b, i64 6
  %872 = load i8, i8* %scevgep37.6.19, align 1
  %call18.6.19 = call zeroext i8 @mult(i8 zeroext %871, i8 zeroext %872)
  %scevgep40.6.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 6
  store i8 %call18.6.19, i8* %scevgep40.6.19, align 1
  %873 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.7.19 = getelementptr i8, i8* %b, i64 7
  %874 = load i8, i8* %scevgep37.7.19, align 1
  %call18.7.19 = call zeroext i8 @mult(i8 zeroext %873, i8 zeroext %874)
  %scevgep40.7.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 7
  store i8 %call18.7.19, i8* %scevgep40.7.19, align 1
  %875 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.8.19 = getelementptr i8, i8* %b, i64 8
  %876 = load i8, i8* %scevgep37.8.19, align 1
  %call18.8.19 = call zeroext i8 @mult(i8 zeroext %875, i8 zeroext %876)
  %scevgep40.8.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 8
  store i8 %call18.8.19, i8* %scevgep40.8.19, align 1
  %877 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.9.19 = getelementptr i8, i8* %b, i64 9
  %878 = load i8, i8* %scevgep37.9.19, align 1
  %call18.9.19 = call zeroext i8 @mult(i8 zeroext %877, i8 zeroext %878)
  %scevgep40.9.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 9
  store i8 %call18.9.19, i8* %scevgep40.9.19, align 1
  %879 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.10.19 = getelementptr i8, i8* %b, i64 10
  %880 = load i8, i8* %scevgep37.10.19, align 1
  %call18.10.19 = call zeroext i8 @mult(i8 zeroext %879, i8 zeroext %880)
  %scevgep40.10.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 10
  store i8 %call18.10.19, i8* %scevgep40.10.19, align 1
  %881 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.11.19 = getelementptr i8, i8* %b, i64 11
  %882 = load i8, i8* %scevgep37.11.19, align 1
  %call18.11.19 = call zeroext i8 @mult(i8 zeroext %881, i8 zeroext %882)
  %scevgep40.11.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 11
  store i8 %call18.11.19, i8* %scevgep40.11.19, align 1
  %883 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.12.19 = getelementptr i8, i8* %b, i64 12
  %884 = load i8, i8* %scevgep37.12.19, align 1
  %call18.12.19 = call zeroext i8 @mult(i8 zeroext %883, i8 zeroext %884)
  %scevgep40.12.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 12
  store i8 %call18.12.19, i8* %scevgep40.12.19, align 1
  %885 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.13.19 = getelementptr i8, i8* %b, i64 13
  %886 = load i8, i8* %scevgep37.13.19, align 1
  %call18.13.19 = call zeroext i8 @mult(i8 zeroext %885, i8 zeroext %886)
  %scevgep40.13.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 13
  store i8 %call18.13.19, i8* %scevgep40.13.19, align 1
  %887 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.14.19 = getelementptr i8, i8* %b, i64 14
  %888 = load i8, i8* %scevgep37.14.19, align 1
  %call18.14.19 = call zeroext i8 @mult(i8 zeroext %887, i8 zeroext %888)
  %scevgep40.14.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 14
  store i8 %call18.14.19, i8* %scevgep40.14.19, align 1
  %889 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.15.19 = getelementptr i8, i8* %b, i64 15
  %890 = load i8, i8* %scevgep37.15.19, align 1
  %call18.15.19 = call zeroext i8 @mult(i8 zeroext %889, i8 zeroext %890)
  %scevgep40.15.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 15
  store i8 %call18.15.19, i8* %scevgep40.15.19, align 1
  %891 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.16.19 = getelementptr i8, i8* %b, i64 16
  %892 = load i8, i8* %scevgep37.16.19, align 1
  %call18.16.19 = call zeroext i8 @mult(i8 zeroext %891, i8 zeroext %892)
  %scevgep40.16.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 16
  store i8 %call18.16.19, i8* %scevgep40.16.19, align 1
  %893 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.17.19 = getelementptr i8, i8* %b, i64 17
  %894 = load i8, i8* %scevgep37.17.19, align 1
  %call18.17.19 = call zeroext i8 @mult(i8 zeroext %893, i8 zeroext %894)
  %scevgep40.17.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 17
  store i8 %call18.17.19, i8* %scevgep40.17.19, align 1
  %895 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.18.19 = getelementptr i8, i8* %b, i64 18
  %896 = load i8, i8* %scevgep37.18.19, align 1
  %call18.18.19 = call zeroext i8 @mult(i8 zeroext %895, i8 zeroext %896)
  %scevgep40.18.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 18
  store i8 %call18.18.19, i8* %scevgep40.18.19, align 1
  %897 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.19.19 = getelementptr i8, i8* %b, i64 19
  %898 = load i8, i8* %scevgep37.19.19, align 1
  %call18.19.19 = call zeroext i8 @mult(i8 zeroext %897, i8 zeroext %898)
  %scevgep40.19.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 19
  store i8 %call18.19.19, i8* %scevgep40.19.19, align 1
  %899 = load i8, i8* %arrayidx.19, align 1
  %scevgep37.20.19 = getelementptr i8, i8* %b, i64 20
  %900 = load i8, i8* %scevgep37.20.19, align 1
  %call18.20.19 = call zeroext i8 @mult(i8 zeroext %899, i8 zeroext %900)
  %scevgep40.20.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 0, i64 20
  store i8 %call18.20.19, i8* %scevgep40.20.19, align 1
  %scevgep39.19 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %858, i64 0, i64 1, i64 0
  %901 = bitcast i8* %scevgep39.19 to [21 x [21 x i8]]*
  %arrayidx.20 = getelementptr inbounds i8, i8* %a, i64 20
  %902 = load i8, i8* %arrayidx.20, align 1
  %903 = load i8, i8* %b, align 1
  %call18.20107 = call zeroext i8 @mult(i8 zeroext %902, i8 zeroext %903)
  %scevgep40.20108 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 0
  store i8 %call18.20107, i8* %scevgep40.20108, align 1
  %904 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.1.20 = getelementptr i8, i8* %b, i64 1
  %905 = load i8, i8* %scevgep37.1.20, align 1
  %call18.1.20 = call zeroext i8 @mult(i8 zeroext %904, i8 zeroext %905)
  %scevgep40.1.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 1
  store i8 %call18.1.20, i8* %scevgep40.1.20, align 1
  %906 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.2.20 = getelementptr i8, i8* %b, i64 2
  %907 = load i8, i8* %scevgep37.2.20, align 1
  %call18.2.20 = call zeroext i8 @mult(i8 zeroext %906, i8 zeroext %907)
  %scevgep40.2.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 2
  store i8 %call18.2.20, i8* %scevgep40.2.20, align 1
  %908 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.3.20 = getelementptr i8, i8* %b, i64 3
  %909 = load i8, i8* %scevgep37.3.20, align 1
  %call18.3.20 = call zeroext i8 @mult(i8 zeroext %908, i8 zeroext %909)
  %scevgep40.3.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 3
  store i8 %call18.3.20, i8* %scevgep40.3.20, align 1
  %910 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.4.20 = getelementptr i8, i8* %b, i64 4
  %911 = load i8, i8* %scevgep37.4.20, align 1
  %call18.4.20 = call zeroext i8 @mult(i8 zeroext %910, i8 zeroext %911)
  %scevgep40.4.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 4
  store i8 %call18.4.20, i8* %scevgep40.4.20, align 1
  %912 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.5.20 = getelementptr i8, i8* %b, i64 5
  %913 = load i8, i8* %scevgep37.5.20, align 1
  %call18.5.20 = call zeroext i8 @mult(i8 zeroext %912, i8 zeroext %913)
  %scevgep40.5.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 5
  store i8 %call18.5.20, i8* %scevgep40.5.20, align 1
  %914 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.6.20 = getelementptr i8, i8* %b, i64 6
  %915 = load i8, i8* %scevgep37.6.20, align 1
  %call18.6.20 = call zeroext i8 @mult(i8 zeroext %914, i8 zeroext %915)
  %scevgep40.6.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 6
  store i8 %call18.6.20, i8* %scevgep40.6.20, align 1
  %916 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.7.20 = getelementptr i8, i8* %b, i64 7
  %917 = load i8, i8* %scevgep37.7.20, align 1
  %call18.7.20 = call zeroext i8 @mult(i8 zeroext %916, i8 zeroext %917)
  %scevgep40.7.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 7
  store i8 %call18.7.20, i8* %scevgep40.7.20, align 1
  %918 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.8.20 = getelementptr i8, i8* %b, i64 8
  %919 = load i8, i8* %scevgep37.8.20, align 1
  %call18.8.20 = call zeroext i8 @mult(i8 zeroext %918, i8 zeroext %919)
  %scevgep40.8.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 8
  store i8 %call18.8.20, i8* %scevgep40.8.20, align 1
  %920 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.9.20 = getelementptr i8, i8* %b, i64 9
  %921 = load i8, i8* %scevgep37.9.20, align 1
  %call18.9.20 = call zeroext i8 @mult(i8 zeroext %920, i8 zeroext %921)
  %scevgep40.9.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 9
  store i8 %call18.9.20, i8* %scevgep40.9.20, align 1
  %922 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.10.20 = getelementptr i8, i8* %b, i64 10
  %923 = load i8, i8* %scevgep37.10.20, align 1
  %call18.10.20 = call zeroext i8 @mult(i8 zeroext %922, i8 zeroext %923)
  %scevgep40.10.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 10
  store i8 %call18.10.20, i8* %scevgep40.10.20, align 1
  %924 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.11.20 = getelementptr i8, i8* %b, i64 11
  %925 = load i8, i8* %scevgep37.11.20, align 1
  %call18.11.20 = call zeroext i8 @mult(i8 zeroext %924, i8 zeroext %925)
  %scevgep40.11.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 11
  store i8 %call18.11.20, i8* %scevgep40.11.20, align 1
  %926 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.12.20 = getelementptr i8, i8* %b, i64 12
  %927 = load i8, i8* %scevgep37.12.20, align 1
  %call18.12.20 = call zeroext i8 @mult(i8 zeroext %926, i8 zeroext %927)
  %scevgep40.12.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 12
  store i8 %call18.12.20, i8* %scevgep40.12.20, align 1
  %928 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.13.20 = getelementptr i8, i8* %b, i64 13
  %929 = load i8, i8* %scevgep37.13.20, align 1
  %call18.13.20 = call zeroext i8 @mult(i8 zeroext %928, i8 zeroext %929)
  %scevgep40.13.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 13
  store i8 %call18.13.20, i8* %scevgep40.13.20, align 1
  %930 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.14.20 = getelementptr i8, i8* %b, i64 14
  %931 = load i8, i8* %scevgep37.14.20, align 1
  %call18.14.20 = call zeroext i8 @mult(i8 zeroext %930, i8 zeroext %931)
  %scevgep40.14.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 14
  store i8 %call18.14.20, i8* %scevgep40.14.20, align 1
  %932 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.15.20 = getelementptr i8, i8* %b, i64 15
  %933 = load i8, i8* %scevgep37.15.20, align 1
  %call18.15.20 = call zeroext i8 @mult(i8 zeroext %932, i8 zeroext %933)
  %scevgep40.15.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 15
  store i8 %call18.15.20, i8* %scevgep40.15.20, align 1
  %934 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.16.20 = getelementptr i8, i8* %b, i64 16
  %935 = load i8, i8* %scevgep37.16.20, align 1
  %call18.16.20 = call zeroext i8 @mult(i8 zeroext %934, i8 zeroext %935)
  %scevgep40.16.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 16
  store i8 %call18.16.20, i8* %scevgep40.16.20, align 1
  %936 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.17.20 = getelementptr i8, i8* %b, i64 17
  %937 = load i8, i8* %scevgep37.17.20, align 1
  %call18.17.20 = call zeroext i8 @mult(i8 zeroext %936, i8 zeroext %937)
  %scevgep40.17.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 17
  store i8 %call18.17.20, i8* %scevgep40.17.20, align 1
  %938 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.18.20 = getelementptr i8, i8* %b, i64 18
  %939 = load i8, i8* %scevgep37.18.20, align 1
  %call18.18.20 = call zeroext i8 @mult(i8 zeroext %938, i8 zeroext %939)
  %scevgep40.18.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 18
  store i8 %call18.18.20, i8* %scevgep40.18.20, align 1
  %940 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.19.20 = getelementptr i8, i8* %b, i64 19
  %941 = load i8, i8* %scevgep37.19.20, align 1
  %call18.19.20 = call zeroext i8 @mult(i8 zeroext %940, i8 zeroext %941)
  %scevgep40.19.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 19
  store i8 %call18.19.20, i8* %scevgep40.19.20, align 1
  %942 = load i8, i8* %arrayidx.20, align 1
  %scevgep37.20.20 = getelementptr i8, i8* %b, i64 20
  %943 = load i8, i8* %scevgep37.20.20, align 1
  %call18.20.20 = call zeroext i8 @mult(i8 zeroext %942, i8 zeroext %943)
  %scevgep40.20.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %901, i64 0, i64 0, i64 20
  store i8 %call18.20.20, i8* %scevgep40.20.20, align 1
  %scevgep28 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 20
  %scevgep2829 = bitcast i8* %scevgep28 to [21 x [21 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep28, align 1
  %scevgep33 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep2829, i64 0, i64 0, i64 -2
  %944 = bitcast i8* %scevgep33 to [21 x [21 x i8]]*
  %call37.1116 = call zeroext i8 (...) @rand()
  store i8 %call37.1116, i8* %scevgep33, align 1
  %scevgep33.1117 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %944, i64 0, i64 0, i64 -2
  %945 = bitcast i8* %scevgep33.1117 to [21 x [21 x i8]]*
  %call37.2119 = call zeroext i8 (...) @rand()
  store i8 %call37.2119, i8* %scevgep33.1117, align 1
  %scevgep33.2120 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %945, i64 0, i64 0, i64 -2
  %946 = bitcast i8* %scevgep33.2120 to [21 x [21 x i8]]*
  %call37.3122 = call zeroext i8 (...) @rand()
  store i8 %call37.3122, i8* %scevgep33.2120, align 1
  %scevgep33.3123 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %946, i64 0, i64 0, i64 -2
  %947 = bitcast i8* %scevgep33.3123 to [21 x [21 x i8]]*
  %call37.4125 = call zeroext i8 (...) @rand()
  store i8 %call37.4125, i8* %scevgep33.3123, align 1
  %scevgep33.4126 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %947, i64 0, i64 0, i64 -2
  %948 = bitcast i8* %scevgep33.4126 to [21 x [21 x i8]]*
  %call37.5128 = call zeroext i8 (...) @rand()
  store i8 %call37.5128, i8* %scevgep33.4126, align 1
  %scevgep33.5129 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %948, i64 0, i64 0, i64 -2
  %949 = bitcast i8* %scevgep33.5129 to [21 x [21 x i8]]*
  %call37.6131 = call zeroext i8 (...) @rand()
  store i8 %call37.6131, i8* %scevgep33.5129, align 1
  %scevgep33.6132 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %949, i64 0, i64 0, i64 -2
  %950 = bitcast i8* %scevgep33.6132 to [21 x [21 x i8]]*
  %call37.7134 = call zeroext i8 (...) @rand()
  store i8 %call37.7134, i8* %scevgep33.6132, align 1
  %scevgep33.7135 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %950, i64 0, i64 0, i64 -2
  %951 = bitcast i8* %scevgep33.7135 to [21 x [21 x i8]]*
  %call37.8137 = call zeroext i8 (...) @rand()
  store i8 %call37.8137, i8* %scevgep33.7135, align 1
  %scevgep33.8138 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %951, i64 0, i64 0, i64 -2
  %call37.9140 = call zeroext i8 (...) @rand()
  store i8 %call37.9140, i8* %scevgep33.8138, align 1
  %scevgep31 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep2829, i64 0, i64 1, i64 0
  %952 = bitcast i8* %scevgep31 to [21 x [21 x i8]]*
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep31, align 1
  %scevgep33.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %952, i64 0, i64 0, i64 -2
  %953 = bitcast i8* %scevgep33.1 to [21 x [21 x i8]]*
  %call37.1.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1.1, i8* %scevgep33.1, align 1
  %scevgep33.1.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %953, i64 0, i64 0, i64 -2
  %954 = bitcast i8* %scevgep33.1.1 to [21 x [21 x i8]]*
  %call37.1.2 = call zeroext i8 (...) @rand()
  store i8 %call37.1.2, i8* %scevgep33.1.1, align 1
  %scevgep33.1.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %954, i64 0, i64 0, i64 -2
  %955 = bitcast i8* %scevgep33.1.2 to [21 x [21 x i8]]*
  %call37.1.3 = call zeroext i8 (...) @rand()
  store i8 %call37.1.3, i8* %scevgep33.1.2, align 1
  %scevgep33.1.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %955, i64 0, i64 0, i64 -2
  %956 = bitcast i8* %scevgep33.1.3 to [21 x [21 x i8]]*
  %call37.1.4 = call zeroext i8 (...) @rand()
  store i8 %call37.1.4, i8* %scevgep33.1.3, align 1
  %scevgep33.1.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %956, i64 0, i64 0, i64 -2
  %957 = bitcast i8* %scevgep33.1.4 to [21 x [21 x i8]]*
  %call37.1.5 = call zeroext i8 (...) @rand()
  store i8 %call37.1.5, i8* %scevgep33.1.4, align 1
  %scevgep33.1.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %957, i64 0, i64 0, i64 -2
  %958 = bitcast i8* %scevgep33.1.5 to [21 x [21 x i8]]*
  %call37.1.6 = call zeroext i8 (...) @rand()
  store i8 %call37.1.6, i8* %scevgep33.1.5, align 1
  %scevgep33.1.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %958, i64 0, i64 0, i64 -2
  %959 = bitcast i8* %scevgep33.1.6 to [21 x [21 x i8]]*
  %call37.1.7 = call zeroext i8 (...) @rand()
  store i8 %call37.1.7, i8* %scevgep33.1.6, align 1
  %scevgep33.1.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %959, i64 0, i64 0, i64 -2
  %960 = bitcast i8* %scevgep33.1.7 to [21 x [21 x i8]]*
  %call37.1.8 = call zeroext i8 (...) @rand()
  store i8 %call37.1.8, i8* %scevgep33.1.7, align 1
  %scevgep33.1.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %960, i64 0, i64 0, i64 -2
  %call37.1.9 = call zeroext i8 (...) @rand()
  store i8 %call37.1.9, i8* %scevgep33.1.8, align 1
  %scevgep31.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %952, i64 0, i64 1, i64 0
  %961 = bitcast i8* %scevgep31.1 to [21 x [21 x i8]]*
  %call37.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2, i8* %scevgep31.1, align 1
  %scevgep33.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %961, i64 0, i64 0, i64 -2
  %962 = bitcast i8* %scevgep33.2 to [21 x [21 x i8]]*
  %call37.2.1 = call zeroext i8 (...) @rand()
  store i8 %call37.2.1, i8* %scevgep33.2, align 1
  %scevgep33.2.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %962, i64 0, i64 0, i64 -2
  %963 = bitcast i8* %scevgep33.2.1 to [21 x [21 x i8]]*
  %call37.2.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2.2, i8* %scevgep33.2.1, align 1
  %scevgep33.2.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %963, i64 0, i64 0, i64 -2
  %964 = bitcast i8* %scevgep33.2.2 to [21 x [21 x i8]]*
  %call37.2.3 = call zeroext i8 (...) @rand()
  store i8 %call37.2.3, i8* %scevgep33.2.2, align 1
  %scevgep33.2.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %964, i64 0, i64 0, i64 -2
  %965 = bitcast i8* %scevgep33.2.3 to [21 x [21 x i8]]*
  %call37.2.4 = call zeroext i8 (...) @rand()
  store i8 %call37.2.4, i8* %scevgep33.2.3, align 1
  %scevgep33.2.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %965, i64 0, i64 0, i64 -2
  %966 = bitcast i8* %scevgep33.2.4 to [21 x [21 x i8]]*
  %call37.2.5 = call zeroext i8 (...) @rand()
  store i8 %call37.2.5, i8* %scevgep33.2.4, align 1
  %scevgep33.2.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %966, i64 0, i64 0, i64 -2
  %967 = bitcast i8* %scevgep33.2.5 to [21 x [21 x i8]]*
  %call37.2.6 = call zeroext i8 (...) @rand()
  store i8 %call37.2.6, i8* %scevgep33.2.5, align 1
  %scevgep33.2.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %967, i64 0, i64 0, i64 -2
  %968 = bitcast i8* %scevgep33.2.6 to [21 x [21 x i8]]*
  %call37.2.7 = call zeroext i8 (...) @rand()
  store i8 %call37.2.7, i8* %scevgep33.2.6, align 1
  %scevgep33.2.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %968, i64 0, i64 0, i64 -2
  %call37.2.8 = call zeroext i8 (...) @rand()
  store i8 %call37.2.8, i8* %scevgep33.2.7, align 1
  %scevgep31.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %961, i64 0, i64 1, i64 0
  %969 = bitcast i8* %scevgep31.2 to [21 x [21 x i8]]*
  %call37.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3, i8* %scevgep31.2, align 1
  %scevgep33.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %969, i64 0, i64 0, i64 -2
  %970 = bitcast i8* %scevgep33.3 to [21 x [21 x i8]]*
  %call37.3.1 = call zeroext i8 (...) @rand()
  store i8 %call37.3.1, i8* %scevgep33.3, align 1
  %scevgep33.3.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %970, i64 0, i64 0, i64 -2
  %971 = bitcast i8* %scevgep33.3.1 to [21 x [21 x i8]]*
  %call37.3.2 = call zeroext i8 (...) @rand()
  store i8 %call37.3.2, i8* %scevgep33.3.1, align 1
  %scevgep33.3.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %971, i64 0, i64 0, i64 -2
  %972 = bitcast i8* %scevgep33.3.2 to [21 x [21 x i8]]*
  %call37.3.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3.3, i8* %scevgep33.3.2, align 1
  %scevgep33.3.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %972, i64 0, i64 0, i64 -2
  %973 = bitcast i8* %scevgep33.3.3 to [21 x [21 x i8]]*
  %call37.3.4 = call zeroext i8 (...) @rand()
  store i8 %call37.3.4, i8* %scevgep33.3.3, align 1
  %scevgep33.3.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %973, i64 0, i64 0, i64 -2
  %974 = bitcast i8* %scevgep33.3.4 to [21 x [21 x i8]]*
  %call37.3.5 = call zeroext i8 (...) @rand()
  store i8 %call37.3.5, i8* %scevgep33.3.4, align 1
  %scevgep33.3.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %974, i64 0, i64 0, i64 -2
  %975 = bitcast i8* %scevgep33.3.5 to [21 x [21 x i8]]*
  %call37.3.6 = call zeroext i8 (...) @rand()
  store i8 %call37.3.6, i8* %scevgep33.3.5, align 1
  %scevgep33.3.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %975, i64 0, i64 0, i64 -2
  %976 = bitcast i8* %scevgep33.3.6 to [21 x [21 x i8]]*
  %call37.3.7 = call zeroext i8 (...) @rand()
  store i8 %call37.3.7, i8* %scevgep33.3.6, align 1
  %scevgep33.3.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %976, i64 0, i64 0, i64 -2
  %call37.3.8 = call zeroext i8 (...) @rand()
  store i8 %call37.3.8, i8* %scevgep33.3.7, align 1
  %scevgep31.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %969, i64 0, i64 1, i64 0
  %977 = bitcast i8* %scevgep31.3 to [21 x [21 x i8]]*
  %call37.4 = call zeroext i8 (...) @rand()
  store i8 %call37.4, i8* %scevgep31.3, align 1
  %scevgep33.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %977, i64 0, i64 0, i64 -2
  %978 = bitcast i8* %scevgep33.4 to [21 x [21 x i8]]*
  %call37.4.1 = call zeroext i8 (...) @rand()
  store i8 %call37.4.1, i8* %scevgep33.4, align 1
  %scevgep33.4.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %978, i64 0, i64 0, i64 -2
  %979 = bitcast i8* %scevgep33.4.1 to [21 x [21 x i8]]*
  %call37.4.2 = call zeroext i8 (...) @rand()
  store i8 %call37.4.2, i8* %scevgep33.4.1, align 1
  %scevgep33.4.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %979, i64 0, i64 0, i64 -2
  %980 = bitcast i8* %scevgep33.4.2 to [21 x [21 x i8]]*
  %call37.4.3 = call zeroext i8 (...) @rand()
  store i8 %call37.4.3, i8* %scevgep33.4.2, align 1
  %scevgep33.4.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %980, i64 0, i64 0, i64 -2
  %981 = bitcast i8* %scevgep33.4.3 to [21 x [21 x i8]]*
  %call37.4.4 = call zeroext i8 (...) @rand()
  store i8 %call37.4.4, i8* %scevgep33.4.3, align 1
  %scevgep33.4.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %981, i64 0, i64 0, i64 -2
  %982 = bitcast i8* %scevgep33.4.4 to [21 x [21 x i8]]*
  %call37.4.5 = call zeroext i8 (...) @rand()
  store i8 %call37.4.5, i8* %scevgep33.4.4, align 1
  %scevgep33.4.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %982, i64 0, i64 0, i64 -2
  %983 = bitcast i8* %scevgep33.4.5 to [21 x [21 x i8]]*
  %call37.4.6 = call zeroext i8 (...) @rand()
  store i8 %call37.4.6, i8* %scevgep33.4.5, align 1
  %scevgep33.4.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %983, i64 0, i64 0, i64 -2
  %call37.4.7 = call zeroext i8 (...) @rand()
  store i8 %call37.4.7, i8* %scevgep33.4.6, align 1
  %scevgep31.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %977, i64 0, i64 1, i64 0
  %984 = bitcast i8* %scevgep31.4 to [21 x [21 x i8]]*
  %call37.5 = call zeroext i8 (...) @rand()
  store i8 %call37.5, i8* %scevgep31.4, align 1
  %scevgep33.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %984, i64 0, i64 0, i64 -2
  %985 = bitcast i8* %scevgep33.5 to [21 x [21 x i8]]*
  %call37.5.1 = call zeroext i8 (...) @rand()
  store i8 %call37.5.1, i8* %scevgep33.5, align 1
  %scevgep33.5.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %985, i64 0, i64 0, i64 -2
  %986 = bitcast i8* %scevgep33.5.1 to [21 x [21 x i8]]*
  %call37.5.2 = call zeroext i8 (...) @rand()
  store i8 %call37.5.2, i8* %scevgep33.5.1, align 1
  %scevgep33.5.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %986, i64 0, i64 0, i64 -2
  %987 = bitcast i8* %scevgep33.5.2 to [21 x [21 x i8]]*
  %call37.5.3 = call zeroext i8 (...) @rand()
  store i8 %call37.5.3, i8* %scevgep33.5.2, align 1
  %scevgep33.5.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %987, i64 0, i64 0, i64 -2
  %988 = bitcast i8* %scevgep33.5.3 to [21 x [21 x i8]]*
  %call37.5.4 = call zeroext i8 (...) @rand()
  store i8 %call37.5.4, i8* %scevgep33.5.3, align 1
  %scevgep33.5.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %988, i64 0, i64 0, i64 -2
  %989 = bitcast i8* %scevgep33.5.4 to [21 x [21 x i8]]*
  %call37.5.5 = call zeroext i8 (...) @rand()
  store i8 %call37.5.5, i8* %scevgep33.5.4, align 1
  %scevgep33.5.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %989, i64 0, i64 0, i64 -2
  %990 = bitcast i8* %scevgep33.5.5 to [21 x [21 x i8]]*
  %call37.5.6 = call zeroext i8 (...) @rand()
  store i8 %call37.5.6, i8* %scevgep33.5.5, align 1
  %scevgep33.5.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %990, i64 0, i64 0, i64 -2
  %call37.5.7 = call zeroext i8 (...) @rand()
  store i8 %call37.5.7, i8* %scevgep33.5.6, align 1
  %scevgep31.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %984, i64 0, i64 1, i64 0
  %991 = bitcast i8* %scevgep31.5 to [21 x [21 x i8]]*
  %call37.6 = call zeroext i8 (...) @rand()
  store i8 %call37.6, i8* %scevgep31.5, align 1
  %scevgep33.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %991, i64 0, i64 0, i64 -2
  %992 = bitcast i8* %scevgep33.6 to [21 x [21 x i8]]*
  %call37.6.1 = call zeroext i8 (...) @rand()
  store i8 %call37.6.1, i8* %scevgep33.6, align 1
  %scevgep33.6.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %992, i64 0, i64 0, i64 -2
  %993 = bitcast i8* %scevgep33.6.1 to [21 x [21 x i8]]*
  %call37.6.2 = call zeroext i8 (...) @rand()
  store i8 %call37.6.2, i8* %scevgep33.6.1, align 1
  %scevgep33.6.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %993, i64 0, i64 0, i64 -2
  %994 = bitcast i8* %scevgep33.6.2 to [21 x [21 x i8]]*
  %call37.6.3 = call zeroext i8 (...) @rand()
  store i8 %call37.6.3, i8* %scevgep33.6.2, align 1
  %scevgep33.6.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %994, i64 0, i64 0, i64 -2
  %995 = bitcast i8* %scevgep33.6.3 to [21 x [21 x i8]]*
  %call37.6.4 = call zeroext i8 (...) @rand()
  store i8 %call37.6.4, i8* %scevgep33.6.3, align 1
  %scevgep33.6.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %995, i64 0, i64 0, i64 -2
  %996 = bitcast i8* %scevgep33.6.4 to [21 x [21 x i8]]*
  %call37.6.5 = call zeroext i8 (...) @rand()
  store i8 %call37.6.5, i8* %scevgep33.6.4, align 1
  %scevgep33.6.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %996, i64 0, i64 0, i64 -2
  %call37.6.6 = call zeroext i8 (...) @rand()
  store i8 %call37.6.6, i8* %scevgep33.6.5, align 1
  %scevgep31.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %991, i64 0, i64 1, i64 0
  %997 = bitcast i8* %scevgep31.6 to [21 x [21 x i8]]*
  %call37.7 = call zeroext i8 (...) @rand()
  store i8 %call37.7, i8* %scevgep31.6, align 1
  %scevgep33.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %997, i64 0, i64 0, i64 -2
  %998 = bitcast i8* %scevgep33.7 to [21 x [21 x i8]]*
  %call37.7.1 = call zeroext i8 (...) @rand()
  store i8 %call37.7.1, i8* %scevgep33.7, align 1
  %scevgep33.7.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %998, i64 0, i64 0, i64 -2
  %999 = bitcast i8* %scevgep33.7.1 to [21 x [21 x i8]]*
  %call37.7.2 = call zeroext i8 (...) @rand()
  store i8 %call37.7.2, i8* %scevgep33.7.1, align 1
  %scevgep33.7.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %999, i64 0, i64 0, i64 -2
  %1000 = bitcast i8* %scevgep33.7.2 to [21 x [21 x i8]]*
  %call37.7.3 = call zeroext i8 (...) @rand()
  store i8 %call37.7.3, i8* %scevgep33.7.2, align 1
  %scevgep33.7.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1000, i64 0, i64 0, i64 -2
  %1001 = bitcast i8* %scevgep33.7.3 to [21 x [21 x i8]]*
  %call37.7.4 = call zeroext i8 (...) @rand()
  store i8 %call37.7.4, i8* %scevgep33.7.3, align 1
  %scevgep33.7.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1001, i64 0, i64 0, i64 -2
  %1002 = bitcast i8* %scevgep33.7.4 to [21 x [21 x i8]]*
  %call37.7.5 = call zeroext i8 (...) @rand()
  store i8 %call37.7.5, i8* %scevgep33.7.4, align 1
  %scevgep33.7.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1002, i64 0, i64 0, i64 -2
  %call37.7.6 = call zeroext i8 (...) @rand()
  store i8 %call37.7.6, i8* %scevgep33.7.5, align 1
  %scevgep31.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %997, i64 0, i64 1, i64 0
  %1003 = bitcast i8* %scevgep31.7 to [21 x [21 x i8]]*
  %call37.8 = call zeroext i8 (...) @rand()
  store i8 %call37.8, i8* %scevgep31.7, align 1
  %scevgep33.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1003, i64 0, i64 0, i64 -2
  %1004 = bitcast i8* %scevgep33.8 to [21 x [21 x i8]]*
  %call37.8.1 = call zeroext i8 (...) @rand()
  store i8 %call37.8.1, i8* %scevgep33.8, align 1
  %scevgep33.8.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1004, i64 0, i64 0, i64 -2
  %1005 = bitcast i8* %scevgep33.8.1 to [21 x [21 x i8]]*
  %call37.8.2 = call zeroext i8 (...) @rand()
  store i8 %call37.8.2, i8* %scevgep33.8.1, align 1
  %scevgep33.8.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1005, i64 0, i64 0, i64 -2
  %1006 = bitcast i8* %scevgep33.8.2 to [21 x [21 x i8]]*
  %call37.8.3 = call zeroext i8 (...) @rand()
  store i8 %call37.8.3, i8* %scevgep33.8.2, align 1
  %scevgep33.8.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1006, i64 0, i64 0, i64 -2
  %1007 = bitcast i8* %scevgep33.8.3 to [21 x [21 x i8]]*
  %call37.8.4 = call zeroext i8 (...) @rand()
  store i8 %call37.8.4, i8* %scevgep33.8.3, align 1
  %scevgep33.8.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1007, i64 0, i64 0, i64 -2
  %call37.8.5 = call zeroext i8 (...) @rand()
  store i8 %call37.8.5, i8* %scevgep33.8.4, align 1
  %scevgep31.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1003, i64 0, i64 1, i64 0
  %1008 = bitcast i8* %scevgep31.8 to [21 x [21 x i8]]*
  %call37.9 = call zeroext i8 (...) @rand()
  store i8 %call37.9, i8* %scevgep31.8, align 1
  %scevgep33.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1008, i64 0, i64 0, i64 -2
  %1009 = bitcast i8* %scevgep33.9 to [21 x [21 x i8]]*
  %call37.9.1 = call zeroext i8 (...) @rand()
  store i8 %call37.9.1, i8* %scevgep33.9, align 1
  %scevgep33.9.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1009, i64 0, i64 0, i64 -2
  %1010 = bitcast i8* %scevgep33.9.1 to [21 x [21 x i8]]*
  %call37.9.2 = call zeroext i8 (...) @rand()
  store i8 %call37.9.2, i8* %scevgep33.9.1, align 1
  %scevgep33.9.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1010, i64 0, i64 0, i64 -2
  %1011 = bitcast i8* %scevgep33.9.2 to [21 x [21 x i8]]*
  %call37.9.3 = call zeroext i8 (...) @rand()
  store i8 %call37.9.3, i8* %scevgep33.9.2, align 1
  %scevgep33.9.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1011, i64 0, i64 0, i64 -2
  %1012 = bitcast i8* %scevgep33.9.3 to [21 x [21 x i8]]*
  %call37.9.4 = call zeroext i8 (...) @rand()
  store i8 %call37.9.4, i8* %scevgep33.9.3, align 1
  %scevgep33.9.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1012, i64 0, i64 0, i64 -2
  %call37.9.5 = call zeroext i8 (...) @rand()
  store i8 %call37.9.5, i8* %scevgep33.9.4, align 1
  %scevgep31.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1008, i64 0, i64 1, i64 0
  %1013 = bitcast i8* %scevgep31.9 to [21 x [21 x i8]]*
  %call37.10 = call zeroext i8 (...) @rand()
  store i8 %call37.10, i8* %scevgep31.9, align 1
  %scevgep33.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1013, i64 0, i64 0, i64 -2
  %1014 = bitcast i8* %scevgep33.10 to [21 x [21 x i8]]*
  %call37.10.1 = call zeroext i8 (...) @rand()
  store i8 %call37.10.1, i8* %scevgep33.10, align 1
  %scevgep33.10.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1014, i64 0, i64 0, i64 -2
  %1015 = bitcast i8* %scevgep33.10.1 to [21 x [21 x i8]]*
  %call37.10.2 = call zeroext i8 (...) @rand()
  store i8 %call37.10.2, i8* %scevgep33.10.1, align 1
  %scevgep33.10.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1015, i64 0, i64 0, i64 -2
  %1016 = bitcast i8* %scevgep33.10.2 to [21 x [21 x i8]]*
  %call37.10.3 = call zeroext i8 (...) @rand()
  store i8 %call37.10.3, i8* %scevgep33.10.2, align 1
  %scevgep33.10.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1016, i64 0, i64 0, i64 -2
  %call37.10.4 = call zeroext i8 (...) @rand()
  store i8 %call37.10.4, i8* %scevgep33.10.3, align 1
  %scevgep31.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1013, i64 0, i64 1, i64 0
  %1017 = bitcast i8* %scevgep31.10 to [21 x [21 x i8]]*
  %call37.11 = call zeroext i8 (...) @rand()
  store i8 %call37.11, i8* %scevgep31.10, align 1
  %scevgep33.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1017, i64 0, i64 0, i64 -2
  %1018 = bitcast i8* %scevgep33.11 to [21 x [21 x i8]]*
  %call37.11.1 = call zeroext i8 (...) @rand()
  store i8 %call37.11.1, i8* %scevgep33.11, align 1
  %scevgep33.11.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1018, i64 0, i64 0, i64 -2
  %1019 = bitcast i8* %scevgep33.11.1 to [21 x [21 x i8]]*
  %call37.11.2 = call zeroext i8 (...) @rand()
  store i8 %call37.11.2, i8* %scevgep33.11.1, align 1
  %scevgep33.11.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1019, i64 0, i64 0, i64 -2
  %1020 = bitcast i8* %scevgep33.11.2 to [21 x [21 x i8]]*
  %call37.11.3 = call zeroext i8 (...) @rand()
  store i8 %call37.11.3, i8* %scevgep33.11.2, align 1
  %scevgep33.11.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1020, i64 0, i64 0, i64 -2
  %call37.11.4 = call zeroext i8 (...) @rand()
  store i8 %call37.11.4, i8* %scevgep33.11.3, align 1
  %scevgep31.11 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1017, i64 0, i64 1, i64 0
  %1021 = bitcast i8* %scevgep31.11 to [21 x [21 x i8]]*
  %call37.12 = call zeroext i8 (...) @rand()
  store i8 %call37.12, i8* %scevgep31.11, align 1
  %scevgep33.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1021, i64 0, i64 0, i64 -2
  %1022 = bitcast i8* %scevgep33.12 to [21 x [21 x i8]]*
  %call37.12.1 = call zeroext i8 (...) @rand()
  store i8 %call37.12.1, i8* %scevgep33.12, align 1
  %scevgep33.12.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1022, i64 0, i64 0, i64 -2
  %1023 = bitcast i8* %scevgep33.12.1 to [21 x [21 x i8]]*
  %call37.12.2 = call zeroext i8 (...) @rand()
  store i8 %call37.12.2, i8* %scevgep33.12.1, align 1
  %scevgep33.12.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1023, i64 0, i64 0, i64 -2
  %call37.12.3 = call zeroext i8 (...) @rand()
  store i8 %call37.12.3, i8* %scevgep33.12.2, align 1
  %scevgep31.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1021, i64 0, i64 1, i64 0
  %1024 = bitcast i8* %scevgep31.12 to [21 x [21 x i8]]*
  %call37.13 = call zeroext i8 (...) @rand()
  store i8 %call37.13, i8* %scevgep31.12, align 1
  %scevgep33.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1024, i64 0, i64 0, i64 -2
  %1025 = bitcast i8* %scevgep33.13 to [21 x [21 x i8]]*
  %call37.13.1 = call zeroext i8 (...) @rand()
  store i8 %call37.13.1, i8* %scevgep33.13, align 1
  %scevgep33.13.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1025, i64 0, i64 0, i64 -2
  %1026 = bitcast i8* %scevgep33.13.1 to [21 x [21 x i8]]*
  %call37.13.2 = call zeroext i8 (...) @rand()
  store i8 %call37.13.2, i8* %scevgep33.13.1, align 1
  %scevgep33.13.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1026, i64 0, i64 0, i64 -2
  %call37.13.3 = call zeroext i8 (...) @rand()
  store i8 %call37.13.3, i8* %scevgep33.13.2, align 1
  %scevgep31.13 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1024, i64 0, i64 1, i64 0
  %1027 = bitcast i8* %scevgep31.13 to [21 x [21 x i8]]*
  %call37.14 = call zeroext i8 (...) @rand()
  store i8 %call37.14, i8* %scevgep31.13, align 1
  %scevgep33.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1027, i64 0, i64 0, i64 -2
  %1028 = bitcast i8* %scevgep33.14 to [21 x [21 x i8]]*
  %call37.14.1 = call zeroext i8 (...) @rand()
  store i8 %call37.14.1, i8* %scevgep33.14, align 1
  %scevgep33.14.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1028, i64 0, i64 0, i64 -2
  %call37.14.2 = call zeroext i8 (...) @rand()
  store i8 %call37.14.2, i8* %scevgep33.14.1, align 1
  %scevgep31.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1027, i64 0, i64 1, i64 0
  %1029 = bitcast i8* %scevgep31.14 to [21 x [21 x i8]]*
  %call37.15 = call zeroext i8 (...) @rand()
  store i8 %call37.15, i8* %scevgep31.14, align 1
  %scevgep33.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1029, i64 0, i64 0, i64 -2
  %1030 = bitcast i8* %scevgep33.15 to [21 x [21 x i8]]*
  %call37.15.1 = call zeroext i8 (...) @rand()
  store i8 %call37.15.1, i8* %scevgep33.15, align 1
  %scevgep33.15.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1030, i64 0, i64 0, i64 -2
  %call37.15.2 = call zeroext i8 (...) @rand()
  store i8 %call37.15.2, i8* %scevgep33.15.1, align 1
  %scevgep31.15 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1029, i64 0, i64 1, i64 0
  %1031 = bitcast i8* %scevgep31.15 to [21 x [21 x i8]]*
  %call37.16 = call zeroext i8 (...) @rand()
  store i8 %call37.16, i8* %scevgep31.15, align 1
  %scevgep33.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1031, i64 0, i64 0, i64 -2
  %call37.16.1 = call zeroext i8 (...) @rand()
  store i8 %call37.16.1, i8* %scevgep33.16, align 1
  %scevgep31.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1031, i64 0, i64 1, i64 0
  %1032 = bitcast i8* %scevgep31.16 to [21 x [21 x i8]]*
  %call37.17 = call zeroext i8 (...) @rand()
  store i8 %call37.17, i8* %scevgep31.16, align 1
  %scevgep33.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1032, i64 0, i64 0, i64 -2
  %call37.17.1 = call zeroext i8 (...) @rand()
  store i8 %call37.17.1, i8* %scevgep33.17, align 1
  %scevgep31.17 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1032, i64 0, i64 1, i64 0
  %1033 = bitcast i8* %scevgep31.17 to [21 x [21 x i8]]*
  %call37.18 = call zeroext i8 (...) @rand()
  store i8 %call37.18, i8* %scevgep31.17, align 1
  %scevgep31.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1033, i64 0, i64 1, i64 0
  %call37.19 = call zeroext i8 (...) @rand()
  store i8 %call37.19, i8* %scevgep31.18, align 1
  %call53 = call zeroext i8 (...) @rand()
  %scevgep26 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  store i8 %call53, i8* %scevgep26, align 1
  %call53.1 = call zeroext i8 (...) @rand()
  %scevgep26.1 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 17
  store i8 %call53.1, i8* %scevgep26.1, align 1
  %call53.2 = call zeroext i8 (...) @rand()
  %scevgep26.2 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 15
  store i8 %call53.2, i8* %scevgep26.2, align 1
  %call53.3 = call zeroext i8 (...) @rand()
  %scevgep26.3 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 13
  store i8 %call53.3, i8* %scevgep26.3, align 1
  %call53.4 = call zeroext i8 (...) @rand()
  %scevgep26.4 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 11
  store i8 %call53.4, i8* %scevgep26.4, align 1
  %call53.5 = call zeroext i8 (...) @rand()
  %scevgep26.5 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 9
  store i8 %call53.5, i8* %scevgep26.5, align 1
  %call53.6 = call zeroext i8 (...) @rand()
  %scevgep26.6 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 7
  store i8 %call53.6, i8* %scevgep26.6, align 1
  %call53.7 = call zeroext i8 (...) @rand()
  %scevgep26.7 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 5
  store i8 %call53.7, i8* %scevgep26.7, align 1
  %call53.8 = call zeroext i8 (...) @rand()
  %scevgep26.8 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 3
  store i8 %call53.8, i8* %scevgep26.8, align 1
  %call53.9 = call zeroext i8 (...) @rand()
  %scevgep26.9 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 1
  store i8 %call53.9, i8* %scevgep26.9, align 1
  %arrayidx65 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65, i64 0, i64 0
  %1034 = load i8, i8* %arrayidx67, align 1
  store i8 %1034, i8* %c, align 1
  %scevgep525 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 0
  %scevgep525526 = bitcast i8* %scevgep525 to [21 x [21 x i8]]*
  %scevgep538 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 20
  %1035 = load i8, i8* %scevgep538, align 1
  %conv80 = zext i8 %1035 to i32
  %scevgep535 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 20
  %1036 = load i8, i8* %scevgep535, align 1
  %conv85 = zext i8 %1036 to i32
  %xor = xor i32 %conv80, %conv85
  %scevgep530 = getelementptr i8, i8* %scevgep525, i64 21
  %1037 = load i8, i8* %scevgep530, align 1
  %conv90 = zext i8 %1037 to i32
  %xor91 = xor i32 %xor, %conv90
  %scevgep536 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 20
  %scevgep537 = getelementptr i8, i8* %scevgep536, i64 -1
  %1038 = load i8, i8* %scevgep537, align 1
  %conv95 = zext i8 %1038 to i32
  %xor96 = xor i32 %xor91, %conv95
  %scevgep533 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 20
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 -1
  %1039 = load i8, i8* %scevgep534, align 1
  %conv102 = zext i8 %1039 to i32
  %xor103 = xor i32 %xor96, %conv102
  %1040 = load i8, i8* %scevgep525, align 1
  %conv109 = zext i8 %1040 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %scevgep539 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 20
  store i8 %conv111, i8* %scevgep539, align 1
  %scevgep540 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 20
  %1041 = load i8, i8* %scevgep540, align 1
  %conv120 = zext i8 %1041 to i32
  %1042 = load i8, i8* %c, align 1
  %conv123 = zext i8 %1042 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %scevgep528 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep525526, i64 0, i64 -2, i64 0
  %1043 = bitcast i8* %scevgep528 to [21 x [21 x i8]]*
  %scevgep538.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 18
  %1044 = load i8, i8* %scevgep538.1, align 1
  %conv80.1551 = zext i8 %1044 to i32
  %scevgep535.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 18
  %1045 = load i8, i8* %scevgep535.1, align 1
  %conv85.1552 = zext i8 %1045 to i32
  %xor.1553 = xor i32 %conv80.1551, %conv85.1552
  %scevgep530.1 = getelementptr i8, i8* %scevgep528, i64 21
  %1046 = load i8, i8* %scevgep530.1, align 1
  %conv90.1554 = zext i8 %1046 to i32
  %xor91.1555 = xor i32 %xor.1553, %conv90.1554
  %scevgep536.1 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 18
  %scevgep537.1 = getelementptr i8, i8* %scevgep536.1, i64 -1
  %1047 = load i8, i8* %scevgep537.1, align 1
  %conv95.1556 = zext i8 %1047 to i32
  %xor96.1557 = xor i32 %xor91.1555, %conv95.1556
  %scevgep533.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 18
  %scevgep534.1 = getelementptr i8, i8* %scevgep533.1, i64 -1
  %1048 = load i8, i8* %scevgep534.1, align 1
  %conv102.1558 = zext i8 %1048 to i32
  %xor103.1559 = xor i32 %xor96.1557, %conv102.1558
  %1049 = load i8, i8* %scevgep528, align 1
  %conv109.1560 = zext i8 %1049 to i32
  %xor110.1561 = xor i32 %xor103.1559, %conv109.1560
  %conv111.1562 = trunc i32 %xor110.1561 to i8
  %scevgep539.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 18
  store i8 %conv111.1562, i8* %scevgep539.1, align 1
  %scevgep540.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 18
  %1050 = load i8, i8* %scevgep540.1, align 1
  %conv120.1563 = zext i8 %1050 to i32
  %1051 = load i8, i8* %c, align 1
  %conv123.1564 = zext i8 %1051 to i32
  %xor124.1565 = xor i32 %conv123.1564, %conv120.1563
  %conv125.1566 = trunc i32 %xor124.1565 to i8
  store i8 %conv125.1566, i8* %c, align 1
  %scevgep528.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1043, i64 0, i64 -2, i64 0
  %1052 = bitcast i8* %scevgep528.1 to [21 x [21 x i8]]*
  %scevgep538.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 16
  %1053 = load i8, i8* %scevgep538.2, align 1
  %conv80.2568 = zext i8 %1053 to i32
  %scevgep535.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 16
  %1054 = load i8, i8* %scevgep535.2, align 1
  %conv85.2569 = zext i8 %1054 to i32
  %xor.2570 = xor i32 %conv80.2568, %conv85.2569
  %scevgep530.2 = getelementptr i8, i8* %scevgep528.1, i64 21
  %1055 = load i8, i8* %scevgep530.2, align 1
  %conv90.2571 = zext i8 %1055 to i32
  %xor91.2572 = xor i32 %xor.2570, %conv90.2571
  %scevgep536.2 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 16
  %scevgep537.2 = getelementptr i8, i8* %scevgep536.2, i64 -1
  %1056 = load i8, i8* %scevgep537.2, align 1
  %conv95.2573 = zext i8 %1056 to i32
  %xor96.2574 = xor i32 %xor91.2572, %conv95.2573
  %scevgep533.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 16
  %scevgep534.2 = getelementptr i8, i8* %scevgep533.2, i64 -1
  %1057 = load i8, i8* %scevgep534.2, align 1
  %conv102.2575 = zext i8 %1057 to i32
  %xor103.2576 = xor i32 %xor96.2574, %conv102.2575
  %1058 = load i8, i8* %scevgep528.1, align 1
  %conv109.2577 = zext i8 %1058 to i32
  %xor110.2578 = xor i32 %xor103.2576, %conv109.2577
  %conv111.2579 = trunc i32 %xor110.2578 to i8
  %scevgep539.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 16
  store i8 %conv111.2579, i8* %scevgep539.2, align 1
  %scevgep540.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 16
  %1059 = load i8, i8* %scevgep540.2, align 1
  %conv120.2580 = zext i8 %1059 to i32
  %1060 = load i8, i8* %c, align 1
  %conv123.2581 = zext i8 %1060 to i32
  %xor124.2582 = xor i32 %conv123.2581, %conv120.2580
  %conv125.2583 = trunc i32 %xor124.2582 to i8
  store i8 %conv125.2583, i8* %c, align 1
  %scevgep528.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1052, i64 0, i64 -2, i64 0
  %1061 = bitcast i8* %scevgep528.2 to [21 x [21 x i8]]*
  %scevgep538.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 14
  %1062 = load i8, i8* %scevgep538.3, align 1
  %conv80.3585 = zext i8 %1062 to i32
  %scevgep535.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 14
  %1063 = load i8, i8* %scevgep535.3, align 1
  %conv85.3586 = zext i8 %1063 to i32
  %xor.3587 = xor i32 %conv80.3585, %conv85.3586
  %scevgep530.3 = getelementptr i8, i8* %scevgep528.2, i64 21
  %1064 = load i8, i8* %scevgep530.3, align 1
  %conv90.3588 = zext i8 %1064 to i32
  %xor91.3589 = xor i32 %xor.3587, %conv90.3588
  %scevgep536.3 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 14
  %scevgep537.3 = getelementptr i8, i8* %scevgep536.3, i64 -1
  %1065 = load i8, i8* %scevgep537.3, align 1
  %conv95.3590 = zext i8 %1065 to i32
  %xor96.3591 = xor i32 %xor91.3589, %conv95.3590
  %scevgep533.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 14
  %scevgep534.3 = getelementptr i8, i8* %scevgep533.3, i64 -1
  %1066 = load i8, i8* %scevgep534.3, align 1
  %conv102.3592 = zext i8 %1066 to i32
  %xor103.3593 = xor i32 %xor96.3591, %conv102.3592
  %1067 = load i8, i8* %scevgep528.2, align 1
  %conv109.3594 = zext i8 %1067 to i32
  %xor110.3595 = xor i32 %xor103.3593, %conv109.3594
  %conv111.3596 = trunc i32 %xor110.3595 to i8
  %scevgep539.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 14
  store i8 %conv111.3596, i8* %scevgep539.3, align 1
  %scevgep540.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 14
  %1068 = load i8, i8* %scevgep540.3, align 1
  %conv120.3597 = zext i8 %1068 to i32
  %1069 = load i8, i8* %c, align 1
  %conv123.3598 = zext i8 %1069 to i32
  %xor124.3599 = xor i32 %conv123.3598, %conv120.3597
  %conv125.3600 = trunc i32 %xor124.3599 to i8
  store i8 %conv125.3600, i8* %c, align 1
  %scevgep528.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1061, i64 0, i64 -2, i64 0
  %1070 = bitcast i8* %scevgep528.3 to [21 x [21 x i8]]*
  %scevgep538.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 12
  %1071 = load i8, i8* %scevgep538.4, align 1
  %conv80.4602 = zext i8 %1071 to i32
  %scevgep535.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 12
  %1072 = load i8, i8* %scevgep535.4, align 1
  %conv85.4603 = zext i8 %1072 to i32
  %xor.4604 = xor i32 %conv80.4602, %conv85.4603
  %scevgep530.4 = getelementptr i8, i8* %scevgep528.3, i64 21
  %1073 = load i8, i8* %scevgep530.4, align 1
  %conv90.4605 = zext i8 %1073 to i32
  %xor91.4606 = xor i32 %xor.4604, %conv90.4605
  %scevgep536.4 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 12
  %scevgep537.4 = getelementptr i8, i8* %scevgep536.4, i64 -1
  %1074 = load i8, i8* %scevgep537.4, align 1
  %conv95.4607 = zext i8 %1074 to i32
  %xor96.4608 = xor i32 %xor91.4606, %conv95.4607
  %scevgep533.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 12
  %scevgep534.4 = getelementptr i8, i8* %scevgep533.4, i64 -1
  %1075 = load i8, i8* %scevgep534.4, align 1
  %conv102.4609 = zext i8 %1075 to i32
  %xor103.4610 = xor i32 %xor96.4608, %conv102.4609
  %1076 = load i8, i8* %scevgep528.3, align 1
  %conv109.4611 = zext i8 %1076 to i32
  %xor110.4612 = xor i32 %xor103.4610, %conv109.4611
  %conv111.4613 = trunc i32 %xor110.4612 to i8
  %scevgep539.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 12
  store i8 %conv111.4613, i8* %scevgep539.4, align 1
  %scevgep540.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 12
  %1077 = load i8, i8* %scevgep540.4, align 1
  %conv120.4614 = zext i8 %1077 to i32
  %1078 = load i8, i8* %c, align 1
  %conv123.4615 = zext i8 %1078 to i32
  %xor124.4616 = xor i32 %conv123.4615, %conv120.4614
  %conv125.4617 = trunc i32 %xor124.4616 to i8
  store i8 %conv125.4617, i8* %c, align 1
  %scevgep528.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1070, i64 0, i64 -2, i64 0
  %1079 = bitcast i8* %scevgep528.4 to [21 x [21 x i8]]*
  %scevgep538.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 10
  %1080 = load i8, i8* %scevgep538.5, align 1
  %conv80.5619 = zext i8 %1080 to i32
  %scevgep535.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 10
  %1081 = load i8, i8* %scevgep535.5, align 1
  %conv85.5620 = zext i8 %1081 to i32
  %xor.5621 = xor i32 %conv80.5619, %conv85.5620
  %scevgep530.5 = getelementptr i8, i8* %scevgep528.4, i64 21
  %1082 = load i8, i8* %scevgep530.5, align 1
  %conv90.5622 = zext i8 %1082 to i32
  %xor91.5623 = xor i32 %xor.5621, %conv90.5622
  %scevgep536.5 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 10
  %scevgep537.5 = getelementptr i8, i8* %scevgep536.5, i64 -1
  %1083 = load i8, i8* %scevgep537.5, align 1
  %conv95.5624 = zext i8 %1083 to i32
  %xor96.5625 = xor i32 %xor91.5623, %conv95.5624
  %scevgep533.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 10
  %scevgep534.5 = getelementptr i8, i8* %scevgep533.5, i64 -1
  %1084 = load i8, i8* %scevgep534.5, align 1
  %conv102.5626 = zext i8 %1084 to i32
  %xor103.5627 = xor i32 %xor96.5625, %conv102.5626
  %1085 = load i8, i8* %scevgep528.4, align 1
  %conv109.5628 = zext i8 %1085 to i32
  %xor110.5629 = xor i32 %xor103.5627, %conv109.5628
  %conv111.5630 = trunc i32 %xor110.5629 to i8
  %scevgep539.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 10
  store i8 %conv111.5630, i8* %scevgep539.5, align 1
  %scevgep540.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 10
  %1086 = load i8, i8* %scevgep540.5, align 1
  %conv120.5631 = zext i8 %1086 to i32
  %1087 = load i8, i8* %c, align 1
  %conv123.5632 = zext i8 %1087 to i32
  %xor124.5633 = xor i32 %conv123.5632, %conv120.5631
  %conv125.5634 = trunc i32 %xor124.5633 to i8
  store i8 %conv125.5634, i8* %c, align 1
  %scevgep528.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1079, i64 0, i64 -2, i64 0
  %1088 = bitcast i8* %scevgep528.5 to [21 x [21 x i8]]*
  %scevgep538.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 8
  %1089 = load i8, i8* %scevgep538.6, align 1
  %conv80.6636 = zext i8 %1089 to i32
  %scevgep535.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 8
  %1090 = load i8, i8* %scevgep535.6, align 1
  %conv85.6637 = zext i8 %1090 to i32
  %xor.6638 = xor i32 %conv80.6636, %conv85.6637
  %scevgep530.6 = getelementptr i8, i8* %scevgep528.5, i64 21
  %1091 = load i8, i8* %scevgep530.6, align 1
  %conv90.6639 = zext i8 %1091 to i32
  %xor91.6640 = xor i32 %xor.6638, %conv90.6639
  %scevgep536.6 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 8
  %scevgep537.6 = getelementptr i8, i8* %scevgep536.6, i64 -1
  %1092 = load i8, i8* %scevgep537.6, align 1
  %conv95.6641 = zext i8 %1092 to i32
  %xor96.6642 = xor i32 %xor91.6640, %conv95.6641
  %scevgep533.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 8
  %scevgep534.6 = getelementptr i8, i8* %scevgep533.6, i64 -1
  %1093 = load i8, i8* %scevgep534.6, align 1
  %conv102.6643 = zext i8 %1093 to i32
  %xor103.6644 = xor i32 %xor96.6642, %conv102.6643
  %1094 = load i8, i8* %scevgep528.5, align 1
  %conv109.6645 = zext i8 %1094 to i32
  %xor110.6646 = xor i32 %xor103.6644, %conv109.6645
  %conv111.6647 = trunc i32 %xor110.6646 to i8
  %scevgep539.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 8
  store i8 %conv111.6647, i8* %scevgep539.6, align 1
  %scevgep540.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 8
  %1095 = load i8, i8* %scevgep540.6, align 1
  %conv120.6648 = zext i8 %1095 to i32
  %1096 = load i8, i8* %c, align 1
  %conv123.6649 = zext i8 %1096 to i32
  %xor124.6650 = xor i32 %conv123.6649, %conv120.6648
  %conv125.6651 = trunc i32 %xor124.6650 to i8
  store i8 %conv125.6651, i8* %c, align 1
  %scevgep528.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1088, i64 0, i64 -2, i64 0
  %1097 = bitcast i8* %scevgep528.6 to [21 x [21 x i8]]*
  %scevgep538.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 6
  %1098 = load i8, i8* %scevgep538.7, align 1
  %conv80.7653 = zext i8 %1098 to i32
  %scevgep535.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 6
  %1099 = load i8, i8* %scevgep535.7, align 1
  %conv85.7654 = zext i8 %1099 to i32
  %xor.7655 = xor i32 %conv80.7653, %conv85.7654
  %scevgep530.7 = getelementptr i8, i8* %scevgep528.6, i64 21
  %1100 = load i8, i8* %scevgep530.7, align 1
  %conv90.7656 = zext i8 %1100 to i32
  %xor91.7657 = xor i32 %xor.7655, %conv90.7656
  %scevgep536.7 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 6
  %scevgep537.7 = getelementptr i8, i8* %scevgep536.7, i64 -1
  %1101 = load i8, i8* %scevgep537.7, align 1
  %conv95.7658 = zext i8 %1101 to i32
  %xor96.7659 = xor i32 %xor91.7657, %conv95.7658
  %scevgep533.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 6
  %scevgep534.7 = getelementptr i8, i8* %scevgep533.7, i64 -1
  %1102 = load i8, i8* %scevgep534.7, align 1
  %conv102.7660 = zext i8 %1102 to i32
  %xor103.7661 = xor i32 %xor96.7659, %conv102.7660
  %1103 = load i8, i8* %scevgep528.6, align 1
  %conv109.7662 = zext i8 %1103 to i32
  %xor110.7663 = xor i32 %xor103.7661, %conv109.7662
  %conv111.7664 = trunc i32 %xor110.7663 to i8
  %scevgep539.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 6
  store i8 %conv111.7664, i8* %scevgep539.7, align 1
  %scevgep540.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 6
  %1104 = load i8, i8* %scevgep540.7, align 1
  %conv120.7665 = zext i8 %1104 to i32
  %1105 = load i8, i8* %c, align 1
  %conv123.7666 = zext i8 %1105 to i32
  %xor124.7667 = xor i32 %conv123.7666, %conv120.7665
  %conv125.7668 = trunc i32 %xor124.7667 to i8
  store i8 %conv125.7668, i8* %c, align 1
  %scevgep528.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1097, i64 0, i64 -2, i64 0
  %1106 = bitcast i8* %scevgep528.7 to [21 x [21 x i8]]*
  %scevgep538.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 4
  %1107 = load i8, i8* %scevgep538.8, align 1
  %conv80.8670 = zext i8 %1107 to i32
  %scevgep535.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 4
  %1108 = load i8, i8* %scevgep535.8, align 1
  %conv85.8671 = zext i8 %1108 to i32
  %xor.8672 = xor i32 %conv80.8670, %conv85.8671
  %scevgep530.8 = getelementptr i8, i8* %scevgep528.7, i64 21
  %1109 = load i8, i8* %scevgep530.8, align 1
  %conv90.8673 = zext i8 %1109 to i32
  %xor91.8674 = xor i32 %xor.8672, %conv90.8673
  %scevgep536.8 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 4
  %scevgep537.8 = getelementptr i8, i8* %scevgep536.8, i64 -1
  %1110 = load i8, i8* %scevgep537.8, align 1
  %conv95.8675 = zext i8 %1110 to i32
  %xor96.8676 = xor i32 %xor91.8674, %conv95.8675
  %scevgep533.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 4
  %scevgep534.8 = getelementptr i8, i8* %scevgep533.8, i64 -1
  %1111 = load i8, i8* %scevgep534.8, align 1
  %conv102.8677 = zext i8 %1111 to i32
  %xor103.8678 = xor i32 %xor96.8676, %conv102.8677
  %1112 = load i8, i8* %scevgep528.7, align 1
  %conv109.8679 = zext i8 %1112 to i32
  %xor110.8680 = xor i32 %xor103.8678, %conv109.8679
  %conv111.8681 = trunc i32 %xor110.8680 to i8
  %scevgep539.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 4
  store i8 %conv111.8681, i8* %scevgep539.8, align 1
  %scevgep540.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 4
  %1113 = load i8, i8* %scevgep540.8, align 1
  %conv120.8682 = zext i8 %1113 to i32
  %1114 = load i8, i8* %c, align 1
  %conv123.8683 = zext i8 %1114 to i32
  %xor124.8684 = xor i32 %conv123.8683, %conv120.8682
  %conv125.8685 = trunc i32 %xor124.8684 to i8
  store i8 %conv125.8685, i8* %c, align 1
  %scevgep528.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1106, i64 0, i64 -2, i64 0
  %scevgep538.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 0, i64 2
  %1115 = load i8, i8* %scevgep538.9, align 1
  %conv80.9687 = zext i8 %1115 to i32
  %scevgep535.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 2
  %1116 = load i8, i8* %scevgep535.9, align 1
  %conv85.9688 = zext i8 %1116 to i32
  %xor.9689 = xor i32 %conv80.9687, %conv85.9688
  %scevgep530.9 = getelementptr i8, i8* %scevgep528.8, i64 21
  %1117 = load i8, i8* %scevgep530.9, align 1
  %conv90.9690 = zext i8 %1117 to i32
  %xor91.9691 = xor i32 %xor.9689, %conv90.9690
  %scevgep536.9 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 2
  %scevgep537.9 = getelementptr i8, i8* %scevgep536.9, i64 -1
  %1118 = load i8, i8* %scevgep537.9, align 1
  %conv95.9692 = zext i8 %1118 to i32
  %xor96.9693 = xor i32 %xor91.9691, %conv95.9692
  %scevgep533.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 0, i64 2
  %scevgep534.9 = getelementptr i8, i8* %scevgep533.9, i64 -1
  %1119 = load i8, i8* %scevgep534.9, align 1
  %conv102.9694 = zext i8 %1119 to i32
  %xor103.9695 = xor i32 %xor96.9693, %conv102.9694
  %1120 = load i8, i8* %scevgep528.8, align 1
  %conv109.9696 = zext i8 %1120 to i32
  %xor110.9697 = xor i32 %xor103.9695, %conv109.9696
  %conv111.9698 = trunc i32 %xor110.9697 to i8
  %scevgep539.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 2
  store i8 %conv111.9698, i8* %scevgep539.9, align 1
  %scevgep540.9 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 0, i64 2
  %1121 = load i8, i8* %scevgep540.9, align 1
  %conv120.9699 = zext i8 %1121 to i32
  %1122 = load i8, i8* %c, align 1
  %conv123.9700 = zext i8 %1122 to i32
  %xor124.9701 = xor i32 %conv123.9700, %conv120.9699
  %conv125.9702 = trunc i32 %xor124.9701 to i8
  store i8 %conv125.9702, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.1, i64 0, i64 1
  %1123 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %1123, i8* %arrayidx69.1, align 1
  %arrayidx122.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep508 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 1, i64 20
  %scevgep511 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 1
  %scevgep511512 = bitcast i8* %scevgep511 to [21 x [21 x i8]]*
  %scevgep517 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 1, i64 20
  %scevgep521 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep523 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 1, i64 20
  %1124 = load i8, i8* %scevgep523, align 1
  %conv80.1 = zext i8 %1124 to i32
  %1125 = load i8, i8* %scevgep517, align 1
  %conv85.1 = zext i8 %1125 to i32
  %xor.1 = xor i32 %conv80.1, %conv85.1
  %scevgep516 = getelementptr i8, i8* %scevgep511, i64 21
  %1126 = load i8, i8* %scevgep516, align 1
  %conv90.1 = zext i8 %1126 to i32
  %xor91.1 = xor i32 %xor.1, %conv90.1
  %1127 = load i8, i8* %scevgep521, align 1
  %conv95.1 = zext i8 %1127 to i32
  %xor96.1 = xor i32 %xor91.1, %conv95.1
  %scevgep519 = getelementptr i8, i8* %scevgep517, i64 -1
  %1128 = load i8, i8* %scevgep519, align 1
  %conv102.1 = zext i8 %1128 to i32
  %xor103.1 = xor i32 %xor96.1, %conv102.1
  %1129 = load i8, i8* %scevgep511, align 1
  %conv109.1 = zext i8 %1129 to i32
  %xor110.1 = xor i32 %xor103.1, %conv109.1
  %conv111.1 = trunc i32 %xor110.1 to i8
  store i8 %conv111.1, i8* %scevgep508, align 1
  %1130 = load i8, i8* %scevgep508, align 1
  %conv120.1 = zext i8 %1130 to i32
  %1131 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1 = zext i8 %1131 to i32
  %xor124.1 = xor i32 %conv123.1, %conv120.1
  %conv125.1 = trunc i32 %xor124.1 to i8
  store i8 %conv125.1, i8* %arrayidx122.1, align 1
  %scevgep514 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep511512, i64 0, i64 -2, i64 0
  %1132 = bitcast i8* %scevgep514 to [21 x [21 x i8]]*
  %scevgep524.1 = getelementptr i8, i8* %scevgep523, i64 -2
  %1133 = load i8, i8* %scevgep524.1, align 1
  %conv80.1.1 = zext i8 %1133 to i32
  %scevgep520.1 = getelementptr i8, i8* %scevgep517, i64 -2
  %1134 = load i8, i8* %scevgep520.1, align 1
  %conv85.1.1 = zext i8 %1134 to i32
  %xor.1.1 = xor i32 %conv80.1.1, %conv85.1.1
  %scevgep516.1 = getelementptr i8, i8* %scevgep514, i64 21
  %1135 = load i8, i8* %scevgep516.1, align 1
  %conv90.1.1 = zext i8 %1135 to i32
  %xor91.1.1 = xor i32 %xor.1.1, %conv90.1.1
  %scevgep522.1 = getelementptr i8, i8* %scevgep521, i64 -2
  %1136 = load i8, i8* %scevgep522.1, align 1
  %conv95.1.1 = zext i8 %1136 to i32
  %xor96.1.1 = xor i32 %xor91.1.1, %conv95.1.1
  %scevgep518.1 = getelementptr i8, i8* %scevgep517, i64 -2
  %scevgep519.1 = getelementptr i8, i8* %scevgep518.1, i64 -1
  %1137 = load i8, i8* %scevgep519.1, align 1
  %conv102.1.1 = zext i8 %1137 to i32
  %xor103.1.1 = xor i32 %xor96.1.1, %conv102.1.1
  %1138 = load i8, i8* %scevgep514, align 1
  %conv109.1.1 = zext i8 %1138 to i32
  %xor110.1.1 = xor i32 %xor103.1.1, %conv109.1.1
  %conv111.1.1 = trunc i32 %xor110.1.1 to i8
  %scevgep510.1 = getelementptr i8, i8* %scevgep508, i64 -2
  store i8 %conv111.1.1, i8* %scevgep510.1, align 1
  %scevgep509.1 = getelementptr i8, i8* %scevgep508, i64 -2
  %1139 = load i8, i8* %scevgep509.1, align 1
  %conv120.1.1 = zext i8 %1139 to i32
  %1140 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.1 = zext i8 %1140 to i32
  %xor124.1.1 = xor i32 %conv123.1.1, %conv120.1.1
  %conv125.1.1 = trunc i32 %xor124.1.1 to i8
  store i8 %conv125.1.1, i8* %arrayidx122.1, align 1
  %scevgep514.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1132, i64 0, i64 -2, i64 0
  %1141 = bitcast i8* %scevgep514.1 to [21 x [21 x i8]]*
  %scevgep524.2 = getelementptr i8, i8* %scevgep523, i64 -4
  %1142 = load i8, i8* %scevgep524.2, align 1
  %conv80.1.2 = zext i8 %1142 to i32
  %scevgep520.2 = getelementptr i8, i8* %scevgep517, i64 -4
  %1143 = load i8, i8* %scevgep520.2, align 1
  %conv85.1.2 = zext i8 %1143 to i32
  %xor.1.2 = xor i32 %conv80.1.2, %conv85.1.2
  %scevgep516.2 = getelementptr i8, i8* %scevgep514.1, i64 21
  %1144 = load i8, i8* %scevgep516.2, align 1
  %conv90.1.2 = zext i8 %1144 to i32
  %xor91.1.2 = xor i32 %xor.1.2, %conv90.1.2
  %scevgep522.2 = getelementptr i8, i8* %scevgep521, i64 -4
  %1145 = load i8, i8* %scevgep522.2, align 1
  %conv95.1.2 = zext i8 %1145 to i32
  %xor96.1.2 = xor i32 %xor91.1.2, %conv95.1.2
  %scevgep518.2 = getelementptr i8, i8* %scevgep517, i64 -4
  %scevgep519.2 = getelementptr i8, i8* %scevgep518.2, i64 -1
  %1146 = load i8, i8* %scevgep519.2, align 1
  %conv102.1.2 = zext i8 %1146 to i32
  %xor103.1.2 = xor i32 %xor96.1.2, %conv102.1.2
  %1147 = load i8, i8* %scevgep514.1, align 1
  %conv109.1.2 = zext i8 %1147 to i32
  %xor110.1.2 = xor i32 %xor103.1.2, %conv109.1.2
  %conv111.1.2 = trunc i32 %xor110.1.2 to i8
  %scevgep510.2 = getelementptr i8, i8* %scevgep508, i64 -4
  store i8 %conv111.1.2, i8* %scevgep510.2, align 1
  %scevgep509.2 = getelementptr i8, i8* %scevgep508, i64 -4
  %1148 = load i8, i8* %scevgep509.2, align 1
  %conv120.1.2 = zext i8 %1148 to i32
  %1149 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.2 = zext i8 %1149 to i32
  %xor124.1.2 = xor i32 %conv123.1.2, %conv120.1.2
  %conv125.1.2 = trunc i32 %xor124.1.2 to i8
  store i8 %conv125.1.2, i8* %arrayidx122.1, align 1
  %scevgep514.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1141, i64 0, i64 -2, i64 0
  %1150 = bitcast i8* %scevgep514.2 to [21 x [21 x i8]]*
  %scevgep524.3 = getelementptr i8, i8* %scevgep523, i64 -6
  %1151 = load i8, i8* %scevgep524.3, align 1
  %conv80.1.3 = zext i8 %1151 to i32
  %scevgep520.3 = getelementptr i8, i8* %scevgep517, i64 -6
  %1152 = load i8, i8* %scevgep520.3, align 1
  %conv85.1.3 = zext i8 %1152 to i32
  %xor.1.3 = xor i32 %conv80.1.3, %conv85.1.3
  %scevgep516.3 = getelementptr i8, i8* %scevgep514.2, i64 21
  %1153 = load i8, i8* %scevgep516.3, align 1
  %conv90.1.3 = zext i8 %1153 to i32
  %xor91.1.3 = xor i32 %xor.1.3, %conv90.1.3
  %scevgep522.3 = getelementptr i8, i8* %scevgep521, i64 -6
  %1154 = load i8, i8* %scevgep522.3, align 1
  %conv95.1.3 = zext i8 %1154 to i32
  %xor96.1.3 = xor i32 %xor91.1.3, %conv95.1.3
  %scevgep518.3 = getelementptr i8, i8* %scevgep517, i64 -6
  %scevgep519.3 = getelementptr i8, i8* %scevgep518.3, i64 -1
  %1155 = load i8, i8* %scevgep519.3, align 1
  %conv102.1.3 = zext i8 %1155 to i32
  %xor103.1.3 = xor i32 %xor96.1.3, %conv102.1.3
  %1156 = load i8, i8* %scevgep514.2, align 1
  %conv109.1.3 = zext i8 %1156 to i32
  %xor110.1.3 = xor i32 %xor103.1.3, %conv109.1.3
  %conv111.1.3 = trunc i32 %xor110.1.3 to i8
  %scevgep510.3 = getelementptr i8, i8* %scevgep508, i64 -6
  store i8 %conv111.1.3, i8* %scevgep510.3, align 1
  %scevgep509.3 = getelementptr i8, i8* %scevgep508, i64 -6
  %1157 = load i8, i8* %scevgep509.3, align 1
  %conv120.1.3 = zext i8 %1157 to i32
  %1158 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.3 = zext i8 %1158 to i32
  %xor124.1.3 = xor i32 %conv123.1.3, %conv120.1.3
  %conv125.1.3 = trunc i32 %xor124.1.3 to i8
  store i8 %conv125.1.3, i8* %arrayidx122.1, align 1
  %scevgep514.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1150, i64 0, i64 -2, i64 0
  %1159 = bitcast i8* %scevgep514.3 to [21 x [21 x i8]]*
  %scevgep524.4 = getelementptr i8, i8* %scevgep523, i64 -8
  %1160 = load i8, i8* %scevgep524.4, align 1
  %conv80.1.4 = zext i8 %1160 to i32
  %scevgep520.4 = getelementptr i8, i8* %scevgep517, i64 -8
  %1161 = load i8, i8* %scevgep520.4, align 1
  %conv85.1.4 = zext i8 %1161 to i32
  %xor.1.4 = xor i32 %conv80.1.4, %conv85.1.4
  %scevgep516.4 = getelementptr i8, i8* %scevgep514.3, i64 21
  %1162 = load i8, i8* %scevgep516.4, align 1
  %conv90.1.4 = zext i8 %1162 to i32
  %xor91.1.4 = xor i32 %xor.1.4, %conv90.1.4
  %scevgep522.4 = getelementptr i8, i8* %scevgep521, i64 -8
  %1163 = load i8, i8* %scevgep522.4, align 1
  %conv95.1.4 = zext i8 %1163 to i32
  %xor96.1.4 = xor i32 %xor91.1.4, %conv95.1.4
  %scevgep518.4 = getelementptr i8, i8* %scevgep517, i64 -8
  %scevgep519.4 = getelementptr i8, i8* %scevgep518.4, i64 -1
  %1164 = load i8, i8* %scevgep519.4, align 1
  %conv102.1.4 = zext i8 %1164 to i32
  %xor103.1.4 = xor i32 %xor96.1.4, %conv102.1.4
  %1165 = load i8, i8* %scevgep514.3, align 1
  %conv109.1.4 = zext i8 %1165 to i32
  %xor110.1.4 = xor i32 %xor103.1.4, %conv109.1.4
  %conv111.1.4 = trunc i32 %xor110.1.4 to i8
  %scevgep510.4 = getelementptr i8, i8* %scevgep508, i64 -8
  store i8 %conv111.1.4, i8* %scevgep510.4, align 1
  %scevgep509.4 = getelementptr i8, i8* %scevgep508, i64 -8
  %1166 = load i8, i8* %scevgep509.4, align 1
  %conv120.1.4 = zext i8 %1166 to i32
  %1167 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.4 = zext i8 %1167 to i32
  %xor124.1.4 = xor i32 %conv123.1.4, %conv120.1.4
  %conv125.1.4 = trunc i32 %xor124.1.4 to i8
  store i8 %conv125.1.4, i8* %arrayidx122.1, align 1
  %scevgep514.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1159, i64 0, i64 -2, i64 0
  %1168 = bitcast i8* %scevgep514.4 to [21 x [21 x i8]]*
  %scevgep524.5 = getelementptr i8, i8* %scevgep523, i64 -10
  %1169 = load i8, i8* %scevgep524.5, align 1
  %conv80.1.5 = zext i8 %1169 to i32
  %scevgep520.5 = getelementptr i8, i8* %scevgep517, i64 -10
  %1170 = load i8, i8* %scevgep520.5, align 1
  %conv85.1.5 = zext i8 %1170 to i32
  %xor.1.5 = xor i32 %conv80.1.5, %conv85.1.5
  %scevgep516.5 = getelementptr i8, i8* %scevgep514.4, i64 21
  %1171 = load i8, i8* %scevgep516.5, align 1
  %conv90.1.5 = zext i8 %1171 to i32
  %xor91.1.5 = xor i32 %xor.1.5, %conv90.1.5
  %scevgep522.5 = getelementptr i8, i8* %scevgep521, i64 -10
  %1172 = load i8, i8* %scevgep522.5, align 1
  %conv95.1.5 = zext i8 %1172 to i32
  %xor96.1.5 = xor i32 %xor91.1.5, %conv95.1.5
  %scevgep518.5 = getelementptr i8, i8* %scevgep517, i64 -10
  %scevgep519.5 = getelementptr i8, i8* %scevgep518.5, i64 -1
  %1173 = load i8, i8* %scevgep519.5, align 1
  %conv102.1.5 = zext i8 %1173 to i32
  %xor103.1.5 = xor i32 %xor96.1.5, %conv102.1.5
  %1174 = load i8, i8* %scevgep514.4, align 1
  %conv109.1.5 = zext i8 %1174 to i32
  %xor110.1.5 = xor i32 %xor103.1.5, %conv109.1.5
  %conv111.1.5 = trunc i32 %xor110.1.5 to i8
  %scevgep510.5 = getelementptr i8, i8* %scevgep508, i64 -10
  store i8 %conv111.1.5, i8* %scevgep510.5, align 1
  %scevgep509.5 = getelementptr i8, i8* %scevgep508, i64 -10
  %1175 = load i8, i8* %scevgep509.5, align 1
  %conv120.1.5 = zext i8 %1175 to i32
  %1176 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.5 = zext i8 %1176 to i32
  %xor124.1.5 = xor i32 %conv123.1.5, %conv120.1.5
  %conv125.1.5 = trunc i32 %xor124.1.5 to i8
  store i8 %conv125.1.5, i8* %arrayidx122.1, align 1
  %scevgep514.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1168, i64 0, i64 -2, i64 0
  %1177 = bitcast i8* %scevgep514.5 to [21 x [21 x i8]]*
  %scevgep524.6 = getelementptr i8, i8* %scevgep523, i64 -12
  %1178 = load i8, i8* %scevgep524.6, align 1
  %conv80.1.6 = zext i8 %1178 to i32
  %scevgep520.6 = getelementptr i8, i8* %scevgep517, i64 -12
  %1179 = load i8, i8* %scevgep520.6, align 1
  %conv85.1.6 = zext i8 %1179 to i32
  %xor.1.6 = xor i32 %conv80.1.6, %conv85.1.6
  %scevgep516.6 = getelementptr i8, i8* %scevgep514.5, i64 21
  %1180 = load i8, i8* %scevgep516.6, align 1
  %conv90.1.6 = zext i8 %1180 to i32
  %xor91.1.6 = xor i32 %xor.1.6, %conv90.1.6
  %scevgep522.6 = getelementptr i8, i8* %scevgep521, i64 -12
  %1181 = load i8, i8* %scevgep522.6, align 1
  %conv95.1.6 = zext i8 %1181 to i32
  %xor96.1.6 = xor i32 %xor91.1.6, %conv95.1.6
  %scevgep518.6 = getelementptr i8, i8* %scevgep517, i64 -12
  %scevgep519.6 = getelementptr i8, i8* %scevgep518.6, i64 -1
  %1182 = load i8, i8* %scevgep519.6, align 1
  %conv102.1.6 = zext i8 %1182 to i32
  %xor103.1.6 = xor i32 %xor96.1.6, %conv102.1.6
  %1183 = load i8, i8* %scevgep514.5, align 1
  %conv109.1.6 = zext i8 %1183 to i32
  %xor110.1.6 = xor i32 %xor103.1.6, %conv109.1.6
  %conv111.1.6 = trunc i32 %xor110.1.6 to i8
  %scevgep510.6 = getelementptr i8, i8* %scevgep508, i64 -12
  store i8 %conv111.1.6, i8* %scevgep510.6, align 1
  %scevgep509.6 = getelementptr i8, i8* %scevgep508, i64 -12
  %1184 = load i8, i8* %scevgep509.6, align 1
  %conv120.1.6 = zext i8 %1184 to i32
  %1185 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.6 = zext i8 %1185 to i32
  %xor124.1.6 = xor i32 %conv123.1.6, %conv120.1.6
  %conv125.1.6 = trunc i32 %xor124.1.6 to i8
  store i8 %conv125.1.6, i8* %arrayidx122.1, align 1
  %scevgep514.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1177, i64 0, i64 -2, i64 0
  %1186 = bitcast i8* %scevgep514.6 to [21 x [21 x i8]]*
  %scevgep524.7 = getelementptr i8, i8* %scevgep523, i64 -14
  %1187 = load i8, i8* %scevgep524.7, align 1
  %conv80.1.7 = zext i8 %1187 to i32
  %scevgep520.7 = getelementptr i8, i8* %scevgep517, i64 -14
  %1188 = load i8, i8* %scevgep520.7, align 1
  %conv85.1.7 = zext i8 %1188 to i32
  %xor.1.7 = xor i32 %conv80.1.7, %conv85.1.7
  %scevgep516.7 = getelementptr i8, i8* %scevgep514.6, i64 21
  %1189 = load i8, i8* %scevgep516.7, align 1
  %conv90.1.7 = zext i8 %1189 to i32
  %xor91.1.7 = xor i32 %xor.1.7, %conv90.1.7
  %scevgep522.7 = getelementptr i8, i8* %scevgep521, i64 -14
  %1190 = load i8, i8* %scevgep522.7, align 1
  %conv95.1.7 = zext i8 %1190 to i32
  %xor96.1.7 = xor i32 %xor91.1.7, %conv95.1.7
  %scevgep518.7 = getelementptr i8, i8* %scevgep517, i64 -14
  %scevgep519.7 = getelementptr i8, i8* %scevgep518.7, i64 -1
  %1191 = load i8, i8* %scevgep519.7, align 1
  %conv102.1.7 = zext i8 %1191 to i32
  %xor103.1.7 = xor i32 %xor96.1.7, %conv102.1.7
  %1192 = load i8, i8* %scevgep514.6, align 1
  %conv109.1.7 = zext i8 %1192 to i32
  %xor110.1.7 = xor i32 %xor103.1.7, %conv109.1.7
  %conv111.1.7 = trunc i32 %xor110.1.7 to i8
  %scevgep510.7 = getelementptr i8, i8* %scevgep508, i64 -14
  store i8 %conv111.1.7, i8* %scevgep510.7, align 1
  %scevgep509.7 = getelementptr i8, i8* %scevgep508, i64 -14
  %1193 = load i8, i8* %scevgep509.7, align 1
  %conv120.1.7 = zext i8 %1193 to i32
  %1194 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.7 = zext i8 %1194 to i32
  %xor124.1.7 = xor i32 %conv123.1.7, %conv120.1.7
  %conv125.1.7 = trunc i32 %xor124.1.7 to i8
  store i8 %conv125.1.7, i8* %arrayidx122.1, align 1
  %scevgep514.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1186, i64 0, i64 -2, i64 0
  %scevgep524.8 = getelementptr i8, i8* %scevgep523, i64 -16
  %1195 = load i8, i8* %scevgep524.8, align 1
  %conv80.1.8 = zext i8 %1195 to i32
  %scevgep520.8 = getelementptr i8, i8* %scevgep517, i64 -16
  %1196 = load i8, i8* %scevgep520.8, align 1
  %conv85.1.8 = zext i8 %1196 to i32
  %xor.1.8 = xor i32 %conv80.1.8, %conv85.1.8
  %scevgep516.8 = getelementptr i8, i8* %scevgep514.7, i64 21
  %1197 = load i8, i8* %scevgep516.8, align 1
  %conv90.1.8 = zext i8 %1197 to i32
  %xor91.1.8 = xor i32 %xor.1.8, %conv90.1.8
  %scevgep522.8 = getelementptr i8, i8* %scevgep521, i64 -16
  %1198 = load i8, i8* %scevgep522.8, align 1
  %conv95.1.8 = zext i8 %1198 to i32
  %xor96.1.8 = xor i32 %xor91.1.8, %conv95.1.8
  %scevgep518.8 = getelementptr i8, i8* %scevgep517, i64 -16
  %scevgep519.8 = getelementptr i8, i8* %scevgep518.8, i64 -1
  %1199 = load i8, i8* %scevgep519.8, align 1
  %conv102.1.8 = zext i8 %1199 to i32
  %xor103.1.8 = xor i32 %xor96.1.8, %conv102.1.8
  %1200 = load i8, i8* %scevgep514.7, align 1
  %conv109.1.8 = zext i8 %1200 to i32
  %xor110.1.8 = xor i32 %xor103.1.8, %conv109.1.8
  %conv111.1.8 = trunc i32 %xor110.1.8 to i8
  %scevgep510.8 = getelementptr i8, i8* %scevgep508, i64 -16
  store i8 %conv111.1.8, i8* %scevgep510.8, align 1
  %scevgep509.8 = getelementptr i8, i8* %scevgep508, i64 -16
  %1201 = load i8, i8* %scevgep509.8, align 1
  %conv120.1.8 = zext i8 %1201 to i32
  %1202 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.8 = zext i8 %1202 to i32
  %xor124.1.8 = xor i32 %conv123.1.8, %conv120.1.8
  %conv125.1.8 = trunc i32 %xor124.1.8 to i8
  store i8 %conv125.1.8, i8* %arrayidx122.1, align 1
  %arrayidx132.1 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 1
  %arrayidx135.1 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.1, i64 0, i64 2
  %1203 = load i8, i8* %arrayidx135.1, align 1
  %conv136.1 = zext i8 %1203 to i32
  %arrayidx138.1 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 1
  %arrayidx141.1 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.1, i64 0, i64 2
  %1204 = load i8, i8* %arrayidx141.1, align 1
  %conv142.1 = zext i8 %1204 to i32
  %xor143.1 = xor i32 %conv136.1, %conv142.1
  %arrayidx146.1 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 2
  %arrayidx148.1 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.1, i64 0, i64 1
  %1205 = load i8, i8* %arrayidx148.1, align 1
  %conv149.1 = zext i8 %1205 to i32
  %xor150.1 = xor i32 %xor143.1, %conv149.1
  %conv151.1 = trunc i32 %xor150.1 to i8
  %arrayidx153.1 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 1
  %arrayidx156.1 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.1, i64 0, i64 2
  store i8 %conv151.1, i8* %arrayidx156.1, align 1
  %arrayidx158.1 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 1
  %arrayidx161.1 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.1, i64 0, i64 2
  %1206 = load i8, i8* %arrayidx161.1, align 1
  %conv162.1 = zext i8 %1206 to i32
  %arrayidx164.1 = getelementptr inbounds i8, i8* %c, i64 1
  %1207 = load i8, i8* %arrayidx164.1, align 1
  %conv165.1 = zext i8 %1207 to i32
  %xor166.1 = xor i32 %conv165.1, %conv162.1
  %conv167.1 = trunc i32 %xor166.1 to i8
  store i8 %conv167.1, i8* %arrayidx164.1, align 1
  %arrayidx173.1 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 1
  %1208 = load i8, i8* %arrayidx173.1, align 1
  %conv174.1 = zext i8 %1208 to i32
  %arrayidx176.1 = getelementptr inbounds i8, i8* %c, i64 1
  %1209 = load i8, i8* %arrayidx176.1, align 1
  %conv177.1 = zext i8 %1209 to i32
  %xor178.1 = xor i32 %conv177.1, %conv174.1
  %conv179.1 = trunc i32 %xor178.1 to i8
  store i8 %conv179.1, i8* %arrayidx176.1, align 1
  %arrayidx65.2 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.2, i64 0, i64 2
  %1210 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %1210, i8* %arrayidx69.2, align 1
  %arrayidx122.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep488 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 2, i64 20
  %scevgep491 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 2
  %scevgep491492 = bitcast i8* %scevgep491 to [21 x [21 x i8]]*
  %scevgep497 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 2, i64 20
  %scevgep501 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep503 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 2, i64 20
  %1211 = load i8, i8* %scevgep503, align 1
  %conv80.2 = zext i8 %1211 to i32
  %1212 = load i8, i8* %scevgep497, align 1
  %conv85.2 = zext i8 %1212 to i32
  %xor.2 = xor i32 %conv80.2, %conv85.2
  %scevgep496 = getelementptr i8, i8* %scevgep491, i64 21
  %1213 = load i8, i8* %scevgep496, align 1
  %conv90.2 = zext i8 %1213 to i32
  %xor91.2 = xor i32 %xor.2, %conv90.2
  %1214 = load i8, i8* %scevgep501, align 1
  %conv95.2 = zext i8 %1214 to i32
  %xor96.2 = xor i32 %xor91.2, %conv95.2
  %scevgep499 = getelementptr i8, i8* %scevgep497, i64 -1
  %1215 = load i8, i8* %scevgep499, align 1
  %conv102.2 = zext i8 %1215 to i32
  %xor103.2 = xor i32 %xor96.2, %conv102.2
  %1216 = load i8, i8* %scevgep491, align 1
  %conv109.2 = zext i8 %1216 to i32
  %xor110.2 = xor i32 %xor103.2, %conv109.2
  %conv111.2 = trunc i32 %xor110.2 to i8
  store i8 %conv111.2, i8* %scevgep488, align 1
  %1217 = load i8, i8* %scevgep488, align 1
  %conv120.2 = zext i8 %1217 to i32
  %1218 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2 = zext i8 %1218 to i32
  %xor124.2 = xor i32 %conv123.2, %conv120.2
  %conv125.2 = trunc i32 %xor124.2 to i8
  store i8 %conv125.2, i8* %arrayidx122.2, align 1
  %scevgep494 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep491492, i64 0, i64 -2, i64 0
  %1219 = bitcast i8* %scevgep494 to [21 x [21 x i8]]*
  %scevgep504.1 = getelementptr i8, i8* %scevgep503, i64 -2
  %1220 = load i8, i8* %scevgep504.1, align 1
  %conv80.2.1 = zext i8 %1220 to i32
  %scevgep500.1 = getelementptr i8, i8* %scevgep497, i64 -2
  %1221 = load i8, i8* %scevgep500.1, align 1
  %conv85.2.1 = zext i8 %1221 to i32
  %xor.2.1 = xor i32 %conv80.2.1, %conv85.2.1
  %scevgep496.1 = getelementptr i8, i8* %scevgep494, i64 21
  %1222 = load i8, i8* %scevgep496.1, align 1
  %conv90.2.1 = zext i8 %1222 to i32
  %xor91.2.1 = xor i32 %xor.2.1, %conv90.2.1
  %scevgep502.1 = getelementptr i8, i8* %scevgep501, i64 -2
  %1223 = load i8, i8* %scevgep502.1, align 1
  %conv95.2.1 = zext i8 %1223 to i32
  %xor96.2.1 = xor i32 %xor91.2.1, %conv95.2.1
  %scevgep498.1 = getelementptr i8, i8* %scevgep497, i64 -2
  %scevgep499.1 = getelementptr i8, i8* %scevgep498.1, i64 -1
  %1224 = load i8, i8* %scevgep499.1, align 1
  %conv102.2.1 = zext i8 %1224 to i32
  %xor103.2.1 = xor i32 %xor96.2.1, %conv102.2.1
  %1225 = load i8, i8* %scevgep494, align 1
  %conv109.2.1 = zext i8 %1225 to i32
  %xor110.2.1 = xor i32 %xor103.2.1, %conv109.2.1
  %conv111.2.1 = trunc i32 %xor110.2.1 to i8
  %scevgep490.1 = getelementptr i8, i8* %scevgep488, i64 -2
  store i8 %conv111.2.1, i8* %scevgep490.1, align 1
  %scevgep489.1 = getelementptr i8, i8* %scevgep488, i64 -2
  %1226 = load i8, i8* %scevgep489.1, align 1
  %conv120.2.1 = zext i8 %1226 to i32
  %1227 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.1 = zext i8 %1227 to i32
  %xor124.2.1 = xor i32 %conv123.2.1, %conv120.2.1
  %conv125.2.1 = trunc i32 %xor124.2.1 to i8
  store i8 %conv125.2.1, i8* %arrayidx122.2, align 1
  %scevgep494.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1219, i64 0, i64 -2, i64 0
  %1228 = bitcast i8* %scevgep494.1 to [21 x [21 x i8]]*
  %scevgep504.2 = getelementptr i8, i8* %scevgep503, i64 -4
  %1229 = load i8, i8* %scevgep504.2, align 1
  %conv80.2.2 = zext i8 %1229 to i32
  %scevgep500.2 = getelementptr i8, i8* %scevgep497, i64 -4
  %1230 = load i8, i8* %scevgep500.2, align 1
  %conv85.2.2 = zext i8 %1230 to i32
  %xor.2.2 = xor i32 %conv80.2.2, %conv85.2.2
  %scevgep496.2 = getelementptr i8, i8* %scevgep494.1, i64 21
  %1231 = load i8, i8* %scevgep496.2, align 1
  %conv90.2.2 = zext i8 %1231 to i32
  %xor91.2.2 = xor i32 %xor.2.2, %conv90.2.2
  %scevgep502.2 = getelementptr i8, i8* %scevgep501, i64 -4
  %1232 = load i8, i8* %scevgep502.2, align 1
  %conv95.2.2 = zext i8 %1232 to i32
  %xor96.2.2 = xor i32 %xor91.2.2, %conv95.2.2
  %scevgep498.2 = getelementptr i8, i8* %scevgep497, i64 -4
  %scevgep499.2 = getelementptr i8, i8* %scevgep498.2, i64 -1
  %1233 = load i8, i8* %scevgep499.2, align 1
  %conv102.2.2 = zext i8 %1233 to i32
  %xor103.2.2 = xor i32 %xor96.2.2, %conv102.2.2
  %1234 = load i8, i8* %scevgep494.1, align 1
  %conv109.2.2 = zext i8 %1234 to i32
  %xor110.2.2 = xor i32 %xor103.2.2, %conv109.2.2
  %conv111.2.2 = trunc i32 %xor110.2.2 to i8
  %scevgep490.2 = getelementptr i8, i8* %scevgep488, i64 -4
  store i8 %conv111.2.2, i8* %scevgep490.2, align 1
  %scevgep489.2 = getelementptr i8, i8* %scevgep488, i64 -4
  %1235 = load i8, i8* %scevgep489.2, align 1
  %conv120.2.2 = zext i8 %1235 to i32
  %1236 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.2 = zext i8 %1236 to i32
  %xor124.2.2 = xor i32 %conv123.2.2, %conv120.2.2
  %conv125.2.2 = trunc i32 %xor124.2.2 to i8
  store i8 %conv125.2.2, i8* %arrayidx122.2, align 1
  %scevgep494.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1228, i64 0, i64 -2, i64 0
  %1237 = bitcast i8* %scevgep494.2 to [21 x [21 x i8]]*
  %scevgep504.3 = getelementptr i8, i8* %scevgep503, i64 -6
  %1238 = load i8, i8* %scevgep504.3, align 1
  %conv80.2.3 = zext i8 %1238 to i32
  %scevgep500.3 = getelementptr i8, i8* %scevgep497, i64 -6
  %1239 = load i8, i8* %scevgep500.3, align 1
  %conv85.2.3 = zext i8 %1239 to i32
  %xor.2.3 = xor i32 %conv80.2.3, %conv85.2.3
  %scevgep496.3 = getelementptr i8, i8* %scevgep494.2, i64 21
  %1240 = load i8, i8* %scevgep496.3, align 1
  %conv90.2.3 = zext i8 %1240 to i32
  %xor91.2.3 = xor i32 %xor.2.3, %conv90.2.3
  %scevgep502.3 = getelementptr i8, i8* %scevgep501, i64 -6
  %1241 = load i8, i8* %scevgep502.3, align 1
  %conv95.2.3 = zext i8 %1241 to i32
  %xor96.2.3 = xor i32 %xor91.2.3, %conv95.2.3
  %scevgep498.3 = getelementptr i8, i8* %scevgep497, i64 -6
  %scevgep499.3 = getelementptr i8, i8* %scevgep498.3, i64 -1
  %1242 = load i8, i8* %scevgep499.3, align 1
  %conv102.2.3 = zext i8 %1242 to i32
  %xor103.2.3 = xor i32 %xor96.2.3, %conv102.2.3
  %1243 = load i8, i8* %scevgep494.2, align 1
  %conv109.2.3 = zext i8 %1243 to i32
  %xor110.2.3 = xor i32 %xor103.2.3, %conv109.2.3
  %conv111.2.3 = trunc i32 %xor110.2.3 to i8
  %scevgep490.3 = getelementptr i8, i8* %scevgep488, i64 -6
  store i8 %conv111.2.3, i8* %scevgep490.3, align 1
  %scevgep489.3 = getelementptr i8, i8* %scevgep488, i64 -6
  %1244 = load i8, i8* %scevgep489.3, align 1
  %conv120.2.3 = zext i8 %1244 to i32
  %1245 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.3 = zext i8 %1245 to i32
  %xor124.2.3 = xor i32 %conv123.2.3, %conv120.2.3
  %conv125.2.3 = trunc i32 %xor124.2.3 to i8
  store i8 %conv125.2.3, i8* %arrayidx122.2, align 1
  %scevgep494.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1237, i64 0, i64 -2, i64 0
  %1246 = bitcast i8* %scevgep494.3 to [21 x [21 x i8]]*
  %scevgep504.4 = getelementptr i8, i8* %scevgep503, i64 -8
  %1247 = load i8, i8* %scevgep504.4, align 1
  %conv80.2.4 = zext i8 %1247 to i32
  %scevgep500.4 = getelementptr i8, i8* %scevgep497, i64 -8
  %1248 = load i8, i8* %scevgep500.4, align 1
  %conv85.2.4 = zext i8 %1248 to i32
  %xor.2.4 = xor i32 %conv80.2.4, %conv85.2.4
  %scevgep496.4 = getelementptr i8, i8* %scevgep494.3, i64 21
  %1249 = load i8, i8* %scevgep496.4, align 1
  %conv90.2.4 = zext i8 %1249 to i32
  %xor91.2.4 = xor i32 %xor.2.4, %conv90.2.4
  %scevgep502.4 = getelementptr i8, i8* %scevgep501, i64 -8
  %1250 = load i8, i8* %scevgep502.4, align 1
  %conv95.2.4 = zext i8 %1250 to i32
  %xor96.2.4 = xor i32 %xor91.2.4, %conv95.2.4
  %scevgep498.4 = getelementptr i8, i8* %scevgep497, i64 -8
  %scevgep499.4 = getelementptr i8, i8* %scevgep498.4, i64 -1
  %1251 = load i8, i8* %scevgep499.4, align 1
  %conv102.2.4 = zext i8 %1251 to i32
  %xor103.2.4 = xor i32 %xor96.2.4, %conv102.2.4
  %1252 = load i8, i8* %scevgep494.3, align 1
  %conv109.2.4 = zext i8 %1252 to i32
  %xor110.2.4 = xor i32 %xor103.2.4, %conv109.2.4
  %conv111.2.4 = trunc i32 %xor110.2.4 to i8
  %scevgep490.4 = getelementptr i8, i8* %scevgep488, i64 -8
  store i8 %conv111.2.4, i8* %scevgep490.4, align 1
  %scevgep489.4 = getelementptr i8, i8* %scevgep488, i64 -8
  %1253 = load i8, i8* %scevgep489.4, align 1
  %conv120.2.4 = zext i8 %1253 to i32
  %1254 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.4 = zext i8 %1254 to i32
  %xor124.2.4 = xor i32 %conv123.2.4, %conv120.2.4
  %conv125.2.4 = trunc i32 %xor124.2.4 to i8
  store i8 %conv125.2.4, i8* %arrayidx122.2, align 1
  %scevgep494.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1246, i64 0, i64 -2, i64 0
  %1255 = bitcast i8* %scevgep494.4 to [21 x [21 x i8]]*
  %scevgep504.5 = getelementptr i8, i8* %scevgep503, i64 -10
  %1256 = load i8, i8* %scevgep504.5, align 1
  %conv80.2.5 = zext i8 %1256 to i32
  %scevgep500.5 = getelementptr i8, i8* %scevgep497, i64 -10
  %1257 = load i8, i8* %scevgep500.5, align 1
  %conv85.2.5 = zext i8 %1257 to i32
  %xor.2.5 = xor i32 %conv80.2.5, %conv85.2.5
  %scevgep496.5 = getelementptr i8, i8* %scevgep494.4, i64 21
  %1258 = load i8, i8* %scevgep496.5, align 1
  %conv90.2.5 = zext i8 %1258 to i32
  %xor91.2.5 = xor i32 %xor.2.5, %conv90.2.5
  %scevgep502.5 = getelementptr i8, i8* %scevgep501, i64 -10
  %1259 = load i8, i8* %scevgep502.5, align 1
  %conv95.2.5 = zext i8 %1259 to i32
  %xor96.2.5 = xor i32 %xor91.2.5, %conv95.2.5
  %scevgep498.5 = getelementptr i8, i8* %scevgep497, i64 -10
  %scevgep499.5 = getelementptr i8, i8* %scevgep498.5, i64 -1
  %1260 = load i8, i8* %scevgep499.5, align 1
  %conv102.2.5 = zext i8 %1260 to i32
  %xor103.2.5 = xor i32 %xor96.2.5, %conv102.2.5
  %1261 = load i8, i8* %scevgep494.4, align 1
  %conv109.2.5 = zext i8 %1261 to i32
  %xor110.2.5 = xor i32 %xor103.2.5, %conv109.2.5
  %conv111.2.5 = trunc i32 %xor110.2.5 to i8
  %scevgep490.5 = getelementptr i8, i8* %scevgep488, i64 -10
  store i8 %conv111.2.5, i8* %scevgep490.5, align 1
  %scevgep489.5 = getelementptr i8, i8* %scevgep488, i64 -10
  %1262 = load i8, i8* %scevgep489.5, align 1
  %conv120.2.5 = zext i8 %1262 to i32
  %1263 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.5 = zext i8 %1263 to i32
  %xor124.2.5 = xor i32 %conv123.2.5, %conv120.2.5
  %conv125.2.5 = trunc i32 %xor124.2.5 to i8
  store i8 %conv125.2.5, i8* %arrayidx122.2, align 1
  %scevgep494.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1255, i64 0, i64 -2, i64 0
  %1264 = bitcast i8* %scevgep494.5 to [21 x [21 x i8]]*
  %scevgep504.6 = getelementptr i8, i8* %scevgep503, i64 -12
  %1265 = load i8, i8* %scevgep504.6, align 1
  %conv80.2.6 = zext i8 %1265 to i32
  %scevgep500.6 = getelementptr i8, i8* %scevgep497, i64 -12
  %1266 = load i8, i8* %scevgep500.6, align 1
  %conv85.2.6 = zext i8 %1266 to i32
  %xor.2.6 = xor i32 %conv80.2.6, %conv85.2.6
  %scevgep496.6 = getelementptr i8, i8* %scevgep494.5, i64 21
  %1267 = load i8, i8* %scevgep496.6, align 1
  %conv90.2.6 = zext i8 %1267 to i32
  %xor91.2.6 = xor i32 %xor.2.6, %conv90.2.6
  %scevgep502.6 = getelementptr i8, i8* %scevgep501, i64 -12
  %1268 = load i8, i8* %scevgep502.6, align 1
  %conv95.2.6 = zext i8 %1268 to i32
  %xor96.2.6 = xor i32 %xor91.2.6, %conv95.2.6
  %scevgep498.6 = getelementptr i8, i8* %scevgep497, i64 -12
  %scevgep499.6 = getelementptr i8, i8* %scevgep498.6, i64 -1
  %1269 = load i8, i8* %scevgep499.6, align 1
  %conv102.2.6 = zext i8 %1269 to i32
  %xor103.2.6 = xor i32 %xor96.2.6, %conv102.2.6
  %1270 = load i8, i8* %scevgep494.5, align 1
  %conv109.2.6 = zext i8 %1270 to i32
  %xor110.2.6 = xor i32 %xor103.2.6, %conv109.2.6
  %conv111.2.6 = trunc i32 %xor110.2.6 to i8
  %scevgep490.6 = getelementptr i8, i8* %scevgep488, i64 -12
  store i8 %conv111.2.6, i8* %scevgep490.6, align 1
  %scevgep489.6 = getelementptr i8, i8* %scevgep488, i64 -12
  %1271 = load i8, i8* %scevgep489.6, align 1
  %conv120.2.6 = zext i8 %1271 to i32
  %1272 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.6 = zext i8 %1272 to i32
  %xor124.2.6 = xor i32 %conv123.2.6, %conv120.2.6
  %conv125.2.6 = trunc i32 %xor124.2.6 to i8
  store i8 %conv125.2.6, i8* %arrayidx122.2, align 1
  %scevgep494.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1264, i64 0, i64 -2, i64 0
  %1273 = bitcast i8* %scevgep494.6 to [21 x [21 x i8]]*
  %scevgep504.7 = getelementptr i8, i8* %scevgep503, i64 -14
  %1274 = load i8, i8* %scevgep504.7, align 1
  %conv80.2.7 = zext i8 %1274 to i32
  %scevgep500.7 = getelementptr i8, i8* %scevgep497, i64 -14
  %1275 = load i8, i8* %scevgep500.7, align 1
  %conv85.2.7 = zext i8 %1275 to i32
  %xor.2.7 = xor i32 %conv80.2.7, %conv85.2.7
  %scevgep496.7 = getelementptr i8, i8* %scevgep494.6, i64 21
  %1276 = load i8, i8* %scevgep496.7, align 1
  %conv90.2.7 = zext i8 %1276 to i32
  %xor91.2.7 = xor i32 %xor.2.7, %conv90.2.7
  %scevgep502.7 = getelementptr i8, i8* %scevgep501, i64 -14
  %1277 = load i8, i8* %scevgep502.7, align 1
  %conv95.2.7 = zext i8 %1277 to i32
  %xor96.2.7 = xor i32 %xor91.2.7, %conv95.2.7
  %scevgep498.7 = getelementptr i8, i8* %scevgep497, i64 -14
  %scevgep499.7 = getelementptr i8, i8* %scevgep498.7, i64 -1
  %1278 = load i8, i8* %scevgep499.7, align 1
  %conv102.2.7 = zext i8 %1278 to i32
  %xor103.2.7 = xor i32 %xor96.2.7, %conv102.2.7
  %1279 = load i8, i8* %scevgep494.6, align 1
  %conv109.2.7 = zext i8 %1279 to i32
  %xor110.2.7 = xor i32 %xor103.2.7, %conv109.2.7
  %conv111.2.7 = trunc i32 %xor110.2.7 to i8
  %scevgep490.7 = getelementptr i8, i8* %scevgep488, i64 -14
  store i8 %conv111.2.7, i8* %scevgep490.7, align 1
  %scevgep489.7 = getelementptr i8, i8* %scevgep488, i64 -14
  %1280 = load i8, i8* %scevgep489.7, align 1
  %conv120.2.7 = zext i8 %1280 to i32
  %1281 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.7 = zext i8 %1281 to i32
  %xor124.2.7 = xor i32 %conv123.2.7, %conv120.2.7
  %conv125.2.7 = trunc i32 %xor124.2.7 to i8
  store i8 %conv125.2.7, i8* %arrayidx122.2, align 1
  %scevgep494.7 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1273, i64 0, i64 -2, i64 0
  %scevgep504.8 = getelementptr i8, i8* %scevgep503, i64 -16
  %1282 = load i8, i8* %scevgep504.8, align 1
  %conv80.2.8 = zext i8 %1282 to i32
  %scevgep500.8 = getelementptr i8, i8* %scevgep497, i64 -16
  %1283 = load i8, i8* %scevgep500.8, align 1
  %conv85.2.8 = zext i8 %1283 to i32
  %xor.2.8 = xor i32 %conv80.2.8, %conv85.2.8
  %scevgep496.8 = getelementptr i8, i8* %scevgep494.7, i64 21
  %1284 = load i8, i8* %scevgep496.8, align 1
  %conv90.2.8 = zext i8 %1284 to i32
  %xor91.2.8 = xor i32 %xor.2.8, %conv90.2.8
  %scevgep502.8 = getelementptr i8, i8* %scevgep501, i64 -16
  %1285 = load i8, i8* %scevgep502.8, align 1
  %conv95.2.8 = zext i8 %1285 to i32
  %xor96.2.8 = xor i32 %xor91.2.8, %conv95.2.8
  %scevgep498.8 = getelementptr i8, i8* %scevgep497, i64 -16
  %scevgep499.8 = getelementptr i8, i8* %scevgep498.8, i64 -1
  %1286 = load i8, i8* %scevgep499.8, align 1
  %conv102.2.8 = zext i8 %1286 to i32
  %xor103.2.8 = xor i32 %xor96.2.8, %conv102.2.8
  %1287 = load i8, i8* %scevgep494.7, align 1
  %conv109.2.8 = zext i8 %1287 to i32
  %xor110.2.8 = xor i32 %xor103.2.8, %conv109.2.8
  %conv111.2.8 = trunc i32 %xor110.2.8 to i8
  %scevgep490.8 = getelementptr i8, i8* %scevgep488, i64 -16
  store i8 %conv111.2.8, i8* %scevgep490.8, align 1
  %scevgep489.8 = getelementptr i8, i8* %scevgep488, i64 -16
  %1288 = load i8, i8* %scevgep489.8, align 1
  %conv120.2.8 = zext i8 %1288 to i32
  %1289 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.8 = zext i8 %1289 to i32
  %xor124.2.8 = xor i32 %conv123.2.8, %conv120.2.8
  %conv125.2.8 = trunc i32 %xor124.2.8 to i8
  store i8 %conv125.2.8, i8* %arrayidx122.2, align 1
  %arrayidx192.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep19.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 1, i64 2
  %1290 = load i8, i8* %scevgep19.2, align 1
  %conv190.2 = zext i8 %1290 to i32
  %1291 = load i8, i8* %arrayidx192.2, align 1
  %conv193.2 = zext i8 %1291 to i32
  %xor194.2 = xor i32 %conv193.2, %conv190.2
  %conv195.2 = trunc i32 %xor194.2 to i8
  store i8 %conv195.2, i8* %arrayidx192.2, align 1
  %scevgep482 = getelementptr i8, i8* %scevgep19.2, i64 -21
  %1292 = load i8, i8* %scevgep482, align 1
  %conv190.1.2 = zext i8 %1292 to i32
  %1293 = load i8, i8* %arrayidx192.2, align 1
  %conv193.1.2 = zext i8 %1293 to i32
  %xor194.1.2 = xor i32 %conv193.1.2, %conv190.1.2
  %conv195.1.2 = trunc i32 %xor194.1.2 to i8
  store i8 %conv195.1.2, i8* %arrayidx192.2, align 1
  %arrayidx65.3 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 3
  %arrayidx67.3 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.3, i64 0, i64 3
  %1294 = load i8, i8* %arrayidx67.3, align 1
  %arrayidx69.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %1294, i8* %arrayidx69.3, align 1
  %arrayidx122.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep465 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 3, i64 20
  %scevgep468 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 3
  %scevgep468469 = bitcast i8* %scevgep468 to [21 x [21 x i8]]*
  %scevgep474 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 3, i64 20
  %scevgep478 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep480 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 3, i64 20
  %1295 = load i8, i8* %scevgep480, align 1
  %conv80.3 = zext i8 %1295 to i32
  %1296 = load i8, i8* %scevgep474, align 1
  %conv85.3 = zext i8 %1296 to i32
  %xor.3 = xor i32 %conv80.3, %conv85.3
  %scevgep473 = getelementptr i8, i8* %scevgep468, i64 21
  %1297 = load i8, i8* %scevgep473, align 1
  %conv90.3 = zext i8 %1297 to i32
  %xor91.3 = xor i32 %xor.3, %conv90.3
  %1298 = load i8, i8* %scevgep478, align 1
  %conv95.3 = zext i8 %1298 to i32
  %xor96.3 = xor i32 %xor91.3, %conv95.3
  %scevgep476 = getelementptr i8, i8* %scevgep474, i64 -1
  %1299 = load i8, i8* %scevgep476, align 1
  %conv102.3 = zext i8 %1299 to i32
  %xor103.3 = xor i32 %xor96.3, %conv102.3
  %1300 = load i8, i8* %scevgep468, align 1
  %conv109.3 = zext i8 %1300 to i32
  %xor110.3 = xor i32 %xor103.3, %conv109.3
  %conv111.3 = trunc i32 %xor110.3 to i8
  store i8 %conv111.3, i8* %scevgep465, align 1
  %1301 = load i8, i8* %scevgep465, align 1
  %conv120.3 = zext i8 %1301 to i32
  %1302 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3 = zext i8 %1302 to i32
  %xor124.3 = xor i32 %conv123.3, %conv120.3
  %conv125.3 = trunc i32 %xor124.3 to i8
  store i8 %conv125.3, i8* %arrayidx122.3, align 1
  %scevgep471 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep468469, i64 0, i64 -2, i64 0
  %1303 = bitcast i8* %scevgep471 to [21 x [21 x i8]]*
  %scevgep481.1 = getelementptr i8, i8* %scevgep480, i64 -2
  %1304 = load i8, i8* %scevgep481.1, align 1
  %conv80.3.1 = zext i8 %1304 to i32
  %scevgep477.1 = getelementptr i8, i8* %scevgep474, i64 -2
  %1305 = load i8, i8* %scevgep477.1, align 1
  %conv85.3.1 = zext i8 %1305 to i32
  %xor.3.1 = xor i32 %conv80.3.1, %conv85.3.1
  %scevgep473.1 = getelementptr i8, i8* %scevgep471, i64 21
  %1306 = load i8, i8* %scevgep473.1, align 1
  %conv90.3.1 = zext i8 %1306 to i32
  %xor91.3.1 = xor i32 %xor.3.1, %conv90.3.1
  %scevgep479.1 = getelementptr i8, i8* %scevgep478, i64 -2
  %1307 = load i8, i8* %scevgep479.1, align 1
  %conv95.3.1 = zext i8 %1307 to i32
  %xor96.3.1 = xor i32 %xor91.3.1, %conv95.3.1
  %scevgep475.1 = getelementptr i8, i8* %scevgep474, i64 -2
  %scevgep476.1 = getelementptr i8, i8* %scevgep475.1, i64 -1
  %1308 = load i8, i8* %scevgep476.1, align 1
  %conv102.3.1 = zext i8 %1308 to i32
  %xor103.3.1 = xor i32 %xor96.3.1, %conv102.3.1
  %1309 = load i8, i8* %scevgep471, align 1
  %conv109.3.1 = zext i8 %1309 to i32
  %xor110.3.1 = xor i32 %xor103.3.1, %conv109.3.1
  %conv111.3.1 = trunc i32 %xor110.3.1 to i8
  %scevgep467.1 = getelementptr i8, i8* %scevgep465, i64 -2
  store i8 %conv111.3.1, i8* %scevgep467.1, align 1
  %scevgep466.1 = getelementptr i8, i8* %scevgep465, i64 -2
  %1310 = load i8, i8* %scevgep466.1, align 1
  %conv120.3.1 = zext i8 %1310 to i32
  %1311 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.1 = zext i8 %1311 to i32
  %xor124.3.1 = xor i32 %conv123.3.1, %conv120.3.1
  %conv125.3.1 = trunc i32 %xor124.3.1 to i8
  store i8 %conv125.3.1, i8* %arrayidx122.3, align 1
  %scevgep471.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1303, i64 0, i64 -2, i64 0
  %1312 = bitcast i8* %scevgep471.1 to [21 x [21 x i8]]*
  %scevgep481.2 = getelementptr i8, i8* %scevgep480, i64 -4
  %1313 = load i8, i8* %scevgep481.2, align 1
  %conv80.3.2 = zext i8 %1313 to i32
  %scevgep477.2 = getelementptr i8, i8* %scevgep474, i64 -4
  %1314 = load i8, i8* %scevgep477.2, align 1
  %conv85.3.2 = zext i8 %1314 to i32
  %xor.3.2 = xor i32 %conv80.3.2, %conv85.3.2
  %scevgep473.2 = getelementptr i8, i8* %scevgep471.1, i64 21
  %1315 = load i8, i8* %scevgep473.2, align 1
  %conv90.3.2 = zext i8 %1315 to i32
  %xor91.3.2 = xor i32 %xor.3.2, %conv90.3.2
  %scevgep479.2 = getelementptr i8, i8* %scevgep478, i64 -4
  %1316 = load i8, i8* %scevgep479.2, align 1
  %conv95.3.2 = zext i8 %1316 to i32
  %xor96.3.2 = xor i32 %xor91.3.2, %conv95.3.2
  %scevgep475.2 = getelementptr i8, i8* %scevgep474, i64 -4
  %scevgep476.2 = getelementptr i8, i8* %scevgep475.2, i64 -1
  %1317 = load i8, i8* %scevgep476.2, align 1
  %conv102.3.2 = zext i8 %1317 to i32
  %xor103.3.2 = xor i32 %xor96.3.2, %conv102.3.2
  %1318 = load i8, i8* %scevgep471.1, align 1
  %conv109.3.2 = zext i8 %1318 to i32
  %xor110.3.2 = xor i32 %xor103.3.2, %conv109.3.2
  %conv111.3.2 = trunc i32 %xor110.3.2 to i8
  %scevgep467.2 = getelementptr i8, i8* %scevgep465, i64 -4
  store i8 %conv111.3.2, i8* %scevgep467.2, align 1
  %scevgep466.2 = getelementptr i8, i8* %scevgep465, i64 -4
  %1319 = load i8, i8* %scevgep466.2, align 1
  %conv120.3.2 = zext i8 %1319 to i32
  %1320 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.2 = zext i8 %1320 to i32
  %xor124.3.2 = xor i32 %conv123.3.2, %conv120.3.2
  %conv125.3.2 = trunc i32 %xor124.3.2 to i8
  store i8 %conv125.3.2, i8* %arrayidx122.3, align 1
  %scevgep471.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1312, i64 0, i64 -2, i64 0
  %1321 = bitcast i8* %scevgep471.2 to [21 x [21 x i8]]*
  %scevgep481.3 = getelementptr i8, i8* %scevgep480, i64 -6
  %1322 = load i8, i8* %scevgep481.3, align 1
  %conv80.3.3 = zext i8 %1322 to i32
  %scevgep477.3 = getelementptr i8, i8* %scevgep474, i64 -6
  %1323 = load i8, i8* %scevgep477.3, align 1
  %conv85.3.3 = zext i8 %1323 to i32
  %xor.3.3 = xor i32 %conv80.3.3, %conv85.3.3
  %scevgep473.3 = getelementptr i8, i8* %scevgep471.2, i64 21
  %1324 = load i8, i8* %scevgep473.3, align 1
  %conv90.3.3 = zext i8 %1324 to i32
  %xor91.3.3 = xor i32 %xor.3.3, %conv90.3.3
  %scevgep479.3 = getelementptr i8, i8* %scevgep478, i64 -6
  %1325 = load i8, i8* %scevgep479.3, align 1
  %conv95.3.3 = zext i8 %1325 to i32
  %xor96.3.3 = xor i32 %xor91.3.3, %conv95.3.3
  %scevgep475.3 = getelementptr i8, i8* %scevgep474, i64 -6
  %scevgep476.3 = getelementptr i8, i8* %scevgep475.3, i64 -1
  %1326 = load i8, i8* %scevgep476.3, align 1
  %conv102.3.3 = zext i8 %1326 to i32
  %xor103.3.3 = xor i32 %xor96.3.3, %conv102.3.3
  %1327 = load i8, i8* %scevgep471.2, align 1
  %conv109.3.3 = zext i8 %1327 to i32
  %xor110.3.3 = xor i32 %xor103.3.3, %conv109.3.3
  %conv111.3.3 = trunc i32 %xor110.3.3 to i8
  %scevgep467.3 = getelementptr i8, i8* %scevgep465, i64 -6
  store i8 %conv111.3.3, i8* %scevgep467.3, align 1
  %scevgep466.3 = getelementptr i8, i8* %scevgep465, i64 -6
  %1328 = load i8, i8* %scevgep466.3, align 1
  %conv120.3.3 = zext i8 %1328 to i32
  %1329 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.3 = zext i8 %1329 to i32
  %xor124.3.3 = xor i32 %conv123.3.3, %conv120.3.3
  %conv125.3.3 = trunc i32 %xor124.3.3 to i8
  store i8 %conv125.3.3, i8* %arrayidx122.3, align 1
  %scevgep471.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1321, i64 0, i64 -2, i64 0
  %1330 = bitcast i8* %scevgep471.3 to [21 x [21 x i8]]*
  %scevgep481.4 = getelementptr i8, i8* %scevgep480, i64 -8
  %1331 = load i8, i8* %scevgep481.4, align 1
  %conv80.3.4 = zext i8 %1331 to i32
  %scevgep477.4 = getelementptr i8, i8* %scevgep474, i64 -8
  %1332 = load i8, i8* %scevgep477.4, align 1
  %conv85.3.4 = zext i8 %1332 to i32
  %xor.3.4 = xor i32 %conv80.3.4, %conv85.3.4
  %scevgep473.4 = getelementptr i8, i8* %scevgep471.3, i64 21
  %1333 = load i8, i8* %scevgep473.4, align 1
  %conv90.3.4 = zext i8 %1333 to i32
  %xor91.3.4 = xor i32 %xor.3.4, %conv90.3.4
  %scevgep479.4 = getelementptr i8, i8* %scevgep478, i64 -8
  %1334 = load i8, i8* %scevgep479.4, align 1
  %conv95.3.4 = zext i8 %1334 to i32
  %xor96.3.4 = xor i32 %xor91.3.4, %conv95.3.4
  %scevgep475.4 = getelementptr i8, i8* %scevgep474, i64 -8
  %scevgep476.4 = getelementptr i8, i8* %scevgep475.4, i64 -1
  %1335 = load i8, i8* %scevgep476.4, align 1
  %conv102.3.4 = zext i8 %1335 to i32
  %xor103.3.4 = xor i32 %xor96.3.4, %conv102.3.4
  %1336 = load i8, i8* %scevgep471.3, align 1
  %conv109.3.4 = zext i8 %1336 to i32
  %xor110.3.4 = xor i32 %xor103.3.4, %conv109.3.4
  %conv111.3.4 = trunc i32 %xor110.3.4 to i8
  %scevgep467.4 = getelementptr i8, i8* %scevgep465, i64 -8
  store i8 %conv111.3.4, i8* %scevgep467.4, align 1
  %scevgep466.4 = getelementptr i8, i8* %scevgep465, i64 -8
  %1337 = load i8, i8* %scevgep466.4, align 1
  %conv120.3.4 = zext i8 %1337 to i32
  %1338 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.4 = zext i8 %1338 to i32
  %xor124.3.4 = xor i32 %conv123.3.4, %conv120.3.4
  %conv125.3.4 = trunc i32 %xor124.3.4 to i8
  store i8 %conv125.3.4, i8* %arrayidx122.3, align 1
  %scevgep471.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1330, i64 0, i64 -2, i64 0
  %1339 = bitcast i8* %scevgep471.4 to [21 x [21 x i8]]*
  %scevgep481.5 = getelementptr i8, i8* %scevgep480, i64 -10
  %1340 = load i8, i8* %scevgep481.5, align 1
  %conv80.3.5 = zext i8 %1340 to i32
  %scevgep477.5 = getelementptr i8, i8* %scevgep474, i64 -10
  %1341 = load i8, i8* %scevgep477.5, align 1
  %conv85.3.5 = zext i8 %1341 to i32
  %xor.3.5 = xor i32 %conv80.3.5, %conv85.3.5
  %scevgep473.5 = getelementptr i8, i8* %scevgep471.4, i64 21
  %1342 = load i8, i8* %scevgep473.5, align 1
  %conv90.3.5 = zext i8 %1342 to i32
  %xor91.3.5 = xor i32 %xor.3.5, %conv90.3.5
  %scevgep479.5 = getelementptr i8, i8* %scevgep478, i64 -10
  %1343 = load i8, i8* %scevgep479.5, align 1
  %conv95.3.5 = zext i8 %1343 to i32
  %xor96.3.5 = xor i32 %xor91.3.5, %conv95.3.5
  %scevgep475.5 = getelementptr i8, i8* %scevgep474, i64 -10
  %scevgep476.5 = getelementptr i8, i8* %scevgep475.5, i64 -1
  %1344 = load i8, i8* %scevgep476.5, align 1
  %conv102.3.5 = zext i8 %1344 to i32
  %xor103.3.5 = xor i32 %xor96.3.5, %conv102.3.5
  %1345 = load i8, i8* %scevgep471.4, align 1
  %conv109.3.5 = zext i8 %1345 to i32
  %xor110.3.5 = xor i32 %xor103.3.5, %conv109.3.5
  %conv111.3.5 = trunc i32 %xor110.3.5 to i8
  %scevgep467.5 = getelementptr i8, i8* %scevgep465, i64 -10
  store i8 %conv111.3.5, i8* %scevgep467.5, align 1
  %scevgep466.5 = getelementptr i8, i8* %scevgep465, i64 -10
  %1346 = load i8, i8* %scevgep466.5, align 1
  %conv120.3.5 = zext i8 %1346 to i32
  %1347 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.5 = zext i8 %1347 to i32
  %xor124.3.5 = xor i32 %conv123.3.5, %conv120.3.5
  %conv125.3.5 = trunc i32 %xor124.3.5 to i8
  store i8 %conv125.3.5, i8* %arrayidx122.3, align 1
  %scevgep471.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1339, i64 0, i64 -2, i64 0
  %1348 = bitcast i8* %scevgep471.5 to [21 x [21 x i8]]*
  %scevgep481.6 = getelementptr i8, i8* %scevgep480, i64 -12
  %1349 = load i8, i8* %scevgep481.6, align 1
  %conv80.3.6 = zext i8 %1349 to i32
  %scevgep477.6 = getelementptr i8, i8* %scevgep474, i64 -12
  %1350 = load i8, i8* %scevgep477.6, align 1
  %conv85.3.6 = zext i8 %1350 to i32
  %xor.3.6 = xor i32 %conv80.3.6, %conv85.3.6
  %scevgep473.6 = getelementptr i8, i8* %scevgep471.5, i64 21
  %1351 = load i8, i8* %scevgep473.6, align 1
  %conv90.3.6 = zext i8 %1351 to i32
  %xor91.3.6 = xor i32 %xor.3.6, %conv90.3.6
  %scevgep479.6 = getelementptr i8, i8* %scevgep478, i64 -12
  %1352 = load i8, i8* %scevgep479.6, align 1
  %conv95.3.6 = zext i8 %1352 to i32
  %xor96.3.6 = xor i32 %xor91.3.6, %conv95.3.6
  %scevgep475.6 = getelementptr i8, i8* %scevgep474, i64 -12
  %scevgep476.6 = getelementptr i8, i8* %scevgep475.6, i64 -1
  %1353 = load i8, i8* %scevgep476.6, align 1
  %conv102.3.6 = zext i8 %1353 to i32
  %xor103.3.6 = xor i32 %xor96.3.6, %conv102.3.6
  %1354 = load i8, i8* %scevgep471.5, align 1
  %conv109.3.6 = zext i8 %1354 to i32
  %xor110.3.6 = xor i32 %xor103.3.6, %conv109.3.6
  %conv111.3.6 = trunc i32 %xor110.3.6 to i8
  %scevgep467.6 = getelementptr i8, i8* %scevgep465, i64 -12
  store i8 %conv111.3.6, i8* %scevgep467.6, align 1
  %scevgep466.6 = getelementptr i8, i8* %scevgep465, i64 -12
  %1355 = load i8, i8* %scevgep466.6, align 1
  %conv120.3.6 = zext i8 %1355 to i32
  %1356 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.6 = zext i8 %1356 to i32
  %xor124.3.6 = xor i32 %conv123.3.6, %conv120.3.6
  %conv125.3.6 = trunc i32 %xor124.3.6 to i8
  store i8 %conv125.3.6, i8* %arrayidx122.3, align 1
  %scevgep471.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1348, i64 0, i64 -2, i64 0
  %scevgep481.7 = getelementptr i8, i8* %scevgep480, i64 -14
  %1357 = load i8, i8* %scevgep481.7, align 1
  %conv80.3.7 = zext i8 %1357 to i32
  %scevgep477.7 = getelementptr i8, i8* %scevgep474, i64 -14
  %1358 = load i8, i8* %scevgep477.7, align 1
  %conv85.3.7 = zext i8 %1358 to i32
  %xor.3.7 = xor i32 %conv80.3.7, %conv85.3.7
  %scevgep473.7 = getelementptr i8, i8* %scevgep471.6, i64 21
  %1359 = load i8, i8* %scevgep473.7, align 1
  %conv90.3.7 = zext i8 %1359 to i32
  %xor91.3.7 = xor i32 %xor.3.7, %conv90.3.7
  %scevgep479.7 = getelementptr i8, i8* %scevgep478, i64 -14
  %1360 = load i8, i8* %scevgep479.7, align 1
  %conv95.3.7 = zext i8 %1360 to i32
  %xor96.3.7 = xor i32 %xor91.3.7, %conv95.3.7
  %scevgep475.7 = getelementptr i8, i8* %scevgep474, i64 -14
  %scevgep476.7 = getelementptr i8, i8* %scevgep475.7, i64 -1
  %1361 = load i8, i8* %scevgep476.7, align 1
  %conv102.3.7 = zext i8 %1361 to i32
  %xor103.3.7 = xor i32 %xor96.3.7, %conv102.3.7
  %1362 = load i8, i8* %scevgep471.6, align 1
  %conv109.3.7 = zext i8 %1362 to i32
  %xor110.3.7 = xor i32 %xor103.3.7, %conv109.3.7
  %conv111.3.7 = trunc i32 %xor110.3.7 to i8
  %scevgep467.7 = getelementptr i8, i8* %scevgep465, i64 -14
  store i8 %conv111.3.7, i8* %scevgep467.7, align 1
  %scevgep466.7 = getelementptr i8, i8* %scevgep465, i64 -14
  %1363 = load i8, i8* %scevgep466.7, align 1
  %conv120.3.7 = zext i8 %1363 to i32
  %1364 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.7 = zext i8 %1364 to i32
  %xor124.3.7 = xor i32 %conv123.3.7, %conv120.3.7
  %conv125.3.7 = trunc i32 %xor124.3.7 to i8
  store i8 %conv125.3.7, i8* %arrayidx122.3, align 1
  %arrayidx132.3 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 3
  %arrayidx135.3 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.3, i64 0, i64 4
  %1365 = load i8, i8* %arrayidx135.3, align 1
  %conv136.3 = zext i8 %1365 to i32
  %arrayidx138.3 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 3
  %arrayidx141.3 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.3, i64 0, i64 4
  %1366 = load i8, i8* %arrayidx141.3, align 1
  %conv142.3 = zext i8 %1366 to i32
  %xor143.3 = xor i32 %conv136.3, %conv142.3
  %arrayidx146.3 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 4
  %arrayidx148.3 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.3, i64 0, i64 3
  %1367 = load i8, i8* %arrayidx148.3, align 1
  %conv149.3 = zext i8 %1367 to i32
  %xor150.3 = xor i32 %xor143.3, %conv149.3
  %conv151.3 = trunc i32 %xor150.3 to i8
  %arrayidx153.3 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 3
  %arrayidx156.3 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.3, i64 0, i64 4
  store i8 %conv151.3, i8* %arrayidx156.3, align 1
  %arrayidx158.3 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 3
  %arrayidx161.3 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.3, i64 0, i64 4
  %1368 = load i8, i8* %arrayidx161.3, align 1
  %conv162.3 = zext i8 %1368 to i32
  %arrayidx164.3 = getelementptr inbounds i8, i8* %c, i64 3
  %1369 = load i8, i8* %arrayidx164.3, align 1
  %conv165.3 = zext i8 %1369 to i32
  %xor166.3 = xor i32 %conv165.3, %conv162.3
  %conv167.3 = trunc i32 %xor166.3 to i8
  store i8 %conv167.3, i8* %arrayidx164.3, align 1
  %arrayidx173.3 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 3
  %1370 = load i8, i8* %arrayidx173.3, align 1
  %conv174.3 = zext i8 %1370 to i32
  %arrayidx176.3 = getelementptr inbounds i8, i8* %c, i64 3
  %1371 = load i8, i8* %arrayidx176.3, align 1
  %conv177.3 = zext i8 %1371 to i32
  %xor178.3 = xor i32 %conv177.3, %conv174.3
  %conv179.3 = trunc i32 %xor178.3 to i8
  store i8 %conv179.3, i8* %arrayidx176.3, align 1
  %arrayidx65.4 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 4
  %arrayidx67.4 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.4, i64 0, i64 4
  %1372 = load i8, i8* %arrayidx67.4, align 1
  %arrayidx69.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %1372, i8* %arrayidx69.4, align 1
  %arrayidx122.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep445 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 4, i64 20
  %scevgep448 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 4
  %scevgep448449 = bitcast i8* %scevgep448 to [21 x [21 x i8]]*
  %scevgep454 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 4, i64 20
  %scevgep458 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep460 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 4, i64 20
  %1373 = load i8, i8* %scevgep460, align 1
  %conv80.4 = zext i8 %1373 to i32
  %1374 = load i8, i8* %scevgep454, align 1
  %conv85.4 = zext i8 %1374 to i32
  %xor.4 = xor i32 %conv80.4, %conv85.4
  %scevgep453 = getelementptr i8, i8* %scevgep448, i64 21
  %1375 = load i8, i8* %scevgep453, align 1
  %conv90.4 = zext i8 %1375 to i32
  %xor91.4 = xor i32 %xor.4, %conv90.4
  %1376 = load i8, i8* %scevgep458, align 1
  %conv95.4 = zext i8 %1376 to i32
  %xor96.4 = xor i32 %xor91.4, %conv95.4
  %scevgep456 = getelementptr i8, i8* %scevgep454, i64 -1
  %1377 = load i8, i8* %scevgep456, align 1
  %conv102.4 = zext i8 %1377 to i32
  %xor103.4 = xor i32 %xor96.4, %conv102.4
  %1378 = load i8, i8* %scevgep448, align 1
  %conv109.4 = zext i8 %1378 to i32
  %xor110.4 = xor i32 %xor103.4, %conv109.4
  %conv111.4 = trunc i32 %xor110.4 to i8
  store i8 %conv111.4, i8* %scevgep445, align 1
  %1379 = load i8, i8* %scevgep445, align 1
  %conv120.4 = zext i8 %1379 to i32
  %1380 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4 = zext i8 %1380 to i32
  %xor124.4 = xor i32 %conv123.4, %conv120.4
  %conv125.4 = trunc i32 %xor124.4 to i8
  store i8 %conv125.4, i8* %arrayidx122.4, align 1
  %scevgep451 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep448449, i64 0, i64 -2, i64 0
  %1381 = bitcast i8* %scevgep451 to [21 x [21 x i8]]*
  %scevgep461.1 = getelementptr i8, i8* %scevgep460, i64 -2
  %1382 = load i8, i8* %scevgep461.1, align 1
  %conv80.4.1 = zext i8 %1382 to i32
  %scevgep457.1 = getelementptr i8, i8* %scevgep454, i64 -2
  %1383 = load i8, i8* %scevgep457.1, align 1
  %conv85.4.1 = zext i8 %1383 to i32
  %xor.4.1 = xor i32 %conv80.4.1, %conv85.4.1
  %scevgep453.1 = getelementptr i8, i8* %scevgep451, i64 21
  %1384 = load i8, i8* %scevgep453.1, align 1
  %conv90.4.1 = zext i8 %1384 to i32
  %xor91.4.1 = xor i32 %xor.4.1, %conv90.4.1
  %scevgep459.1 = getelementptr i8, i8* %scevgep458, i64 -2
  %1385 = load i8, i8* %scevgep459.1, align 1
  %conv95.4.1 = zext i8 %1385 to i32
  %xor96.4.1 = xor i32 %xor91.4.1, %conv95.4.1
  %scevgep455.1 = getelementptr i8, i8* %scevgep454, i64 -2
  %scevgep456.1 = getelementptr i8, i8* %scevgep455.1, i64 -1
  %1386 = load i8, i8* %scevgep456.1, align 1
  %conv102.4.1 = zext i8 %1386 to i32
  %xor103.4.1 = xor i32 %xor96.4.1, %conv102.4.1
  %1387 = load i8, i8* %scevgep451, align 1
  %conv109.4.1 = zext i8 %1387 to i32
  %xor110.4.1 = xor i32 %xor103.4.1, %conv109.4.1
  %conv111.4.1 = trunc i32 %xor110.4.1 to i8
  %scevgep447.1 = getelementptr i8, i8* %scevgep445, i64 -2
  store i8 %conv111.4.1, i8* %scevgep447.1, align 1
  %scevgep446.1 = getelementptr i8, i8* %scevgep445, i64 -2
  %1388 = load i8, i8* %scevgep446.1, align 1
  %conv120.4.1 = zext i8 %1388 to i32
  %1389 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.1 = zext i8 %1389 to i32
  %xor124.4.1 = xor i32 %conv123.4.1, %conv120.4.1
  %conv125.4.1 = trunc i32 %xor124.4.1 to i8
  store i8 %conv125.4.1, i8* %arrayidx122.4, align 1
  %scevgep451.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1381, i64 0, i64 -2, i64 0
  %1390 = bitcast i8* %scevgep451.1 to [21 x [21 x i8]]*
  %scevgep461.2 = getelementptr i8, i8* %scevgep460, i64 -4
  %1391 = load i8, i8* %scevgep461.2, align 1
  %conv80.4.2 = zext i8 %1391 to i32
  %scevgep457.2 = getelementptr i8, i8* %scevgep454, i64 -4
  %1392 = load i8, i8* %scevgep457.2, align 1
  %conv85.4.2 = zext i8 %1392 to i32
  %xor.4.2 = xor i32 %conv80.4.2, %conv85.4.2
  %scevgep453.2 = getelementptr i8, i8* %scevgep451.1, i64 21
  %1393 = load i8, i8* %scevgep453.2, align 1
  %conv90.4.2 = zext i8 %1393 to i32
  %xor91.4.2 = xor i32 %xor.4.2, %conv90.4.2
  %scevgep459.2 = getelementptr i8, i8* %scevgep458, i64 -4
  %1394 = load i8, i8* %scevgep459.2, align 1
  %conv95.4.2 = zext i8 %1394 to i32
  %xor96.4.2 = xor i32 %xor91.4.2, %conv95.4.2
  %scevgep455.2 = getelementptr i8, i8* %scevgep454, i64 -4
  %scevgep456.2 = getelementptr i8, i8* %scevgep455.2, i64 -1
  %1395 = load i8, i8* %scevgep456.2, align 1
  %conv102.4.2 = zext i8 %1395 to i32
  %xor103.4.2 = xor i32 %xor96.4.2, %conv102.4.2
  %1396 = load i8, i8* %scevgep451.1, align 1
  %conv109.4.2 = zext i8 %1396 to i32
  %xor110.4.2 = xor i32 %xor103.4.2, %conv109.4.2
  %conv111.4.2 = trunc i32 %xor110.4.2 to i8
  %scevgep447.2 = getelementptr i8, i8* %scevgep445, i64 -4
  store i8 %conv111.4.2, i8* %scevgep447.2, align 1
  %scevgep446.2 = getelementptr i8, i8* %scevgep445, i64 -4
  %1397 = load i8, i8* %scevgep446.2, align 1
  %conv120.4.2 = zext i8 %1397 to i32
  %1398 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.2 = zext i8 %1398 to i32
  %xor124.4.2 = xor i32 %conv123.4.2, %conv120.4.2
  %conv125.4.2 = trunc i32 %xor124.4.2 to i8
  store i8 %conv125.4.2, i8* %arrayidx122.4, align 1
  %scevgep451.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1390, i64 0, i64 -2, i64 0
  %1399 = bitcast i8* %scevgep451.2 to [21 x [21 x i8]]*
  %scevgep461.3 = getelementptr i8, i8* %scevgep460, i64 -6
  %1400 = load i8, i8* %scevgep461.3, align 1
  %conv80.4.3 = zext i8 %1400 to i32
  %scevgep457.3 = getelementptr i8, i8* %scevgep454, i64 -6
  %1401 = load i8, i8* %scevgep457.3, align 1
  %conv85.4.3 = zext i8 %1401 to i32
  %xor.4.3 = xor i32 %conv80.4.3, %conv85.4.3
  %scevgep453.3 = getelementptr i8, i8* %scevgep451.2, i64 21
  %1402 = load i8, i8* %scevgep453.3, align 1
  %conv90.4.3 = zext i8 %1402 to i32
  %xor91.4.3 = xor i32 %xor.4.3, %conv90.4.3
  %scevgep459.3 = getelementptr i8, i8* %scevgep458, i64 -6
  %1403 = load i8, i8* %scevgep459.3, align 1
  %conv95.4.3 = zext i8 %1403 to i32
  %xor96.4.3 = xor i32 %xor91.4.3, %conv95.4.3
  %scevgep455.3 = getelementptr i8, i8* %scevgep454, i64 -6
  %scevgep456.3 = getelementptr i8, i8* %scevgep455.3, i64 -1
  %1404 = load i8, i8* %scevgep456.3, align 1
  %conv102.4.3 = zext i8 %1404 to i32
  %xor103.4.3 = xor i32 %xor96.4.3, %conv102.4.3
  %1405 = load i8, i8* %scevgep451.2, align 1
  %conv109.4.3 = zext i8 %1405 to i32
  %xor110.4.3 = xor i32 %xor103.4.3, %conv109.4.3
  %conv111.4.3 = trunc i32 %xor110.4.3 to i8
  %scevgep447.3 = getelementptr i8, i8* %scevgep445, i64 -6
  store i8 %conv111.4.3, i8* %scevgep447.3, align 1
  %scevgep446.3 = getelementptr i8, i8* %scevgep445, i64 -6
  %1406 = load i8, i8* %scevgep446.3, align 1
  %conv120.4.3 = zext i8 %1406 to i32
  %1407 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.3 = zext i8 %1407 to i32
  %xor124.4.3 = xor i32 %conv123.4.3, %conv120.4.3
  %conv125.4.3 = trunc i32 %xor124.4.3 to i8
  store i8 %conv125.4.3, i8* %arrayidx122.4, align 1
  %scevgep451.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1399, i64 0, i64 -2, i64 0
  %1408 = bitcast i8* %scevgep451.3 to [21 x [21 x i8]]*
  %scevgep461.4 = getelementptr i8, i8* %scevgep460, i64 -8
  %1409 = load i8, i8* %scevgep461.4, align 1
  %conv80.4.4 = zext i8 %1409 to i32
  %scevgep457.4 = getelementptr i8, i8* %scevgep454, i64 -8
  %1410 = load i8, i8* %scevgep457.4, align 1
  %conv85.4.4 = zext i8 %1410 to i32
  %xor.4.4 = xor i32 %conv80.4.4, %conv85.4.4
  %scevgep453.4 = getelementptr i8, i8* %scevgep451.3, i64 21
  %1411 = load i8, i8* %scevgep453.4, align 1
  %conv90.4.4 = zext i8 %1411 to i32
  %xor91.4.4 = xor i32 %xor.4.4, %conv90.4.4
  %scevgep459.4 = getelementptr i8, i8* %scevgep458, i64 -8
  %1412 = load i8, i8* %scevgep459.4, align 1
  %conv95.4.4 = zext i8 %1412 to i32
  %xor96.4.4 = xor i32 %xor91.4.4, %conv95.4.4
  %scevgep455.4 = getelementptr i8, i8* %scevgep454, i64 -8
  %scevgep456.4 = getelementptr i8, i8* %scevgep455.4, i64 -1
  %1413 = load i8, i8* %scevgep456.4, align 1
  %conv102.4.4 = zext i8 %1413 to i32
  %xor103.4.4 = xor i32 %xor96.4.4, %conv102.4.4
  %1414 = load i8, i8* %scevgep451.3, align 1
  %conv109.4.4 = zext i8 %1414 to i32
  %xor110.4.4 = xor i32 %xor103.4.4, %conv109.4.4
  %conv111.4.4 = trunc i32 %xor110.4.4 to i8
  %scevgep447.4 = getelementptr i8, i8* %scevgep445, i64 -8
  store i8 %conv111.4.4, i8* %scevgep447.4, align 1
  %scevgep446.4 = getelementptr i8, i8* %scevgep445, i64 -8
  %1415 = load i8, i8* %scevgep446.4, align 1
  %conv120.4.4 = zext i8 %1415 to i32
  %1416 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.4 = zext i8 %1416 to i32
  %xor124.4.4 = xor i32 %conv123.4.4, %conv120.4.4
  %conv125.4.4 = trunc i32 %xor124.4.4 to i8
  store i8 %conv125.4.4, i8* %arrayidx122.4, align 1
  %scevgep451.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1408, i64 0, i64 -2, i64 0
  %1417 = bitcast i8* %scevgep451.4 to [21 x [21 x i8]]*
  %scevgep461.5 = getelementptr i8, i8* %scevgep460, i64 -10
  %1418 = load i8, i8* %scevgep461.5, align 1
  %conv80.4.5 = zext i8 %1418 to i32
  %scevgep457.5 = getelementptr i8, i8* %scevgep454, i64 -10
  %1419 = load i8, i8* %scevgep457.5, align 1
  %conv85.4.5 = zext i8 %1419 to i32
  %xor.4.5 = xor i32 %conv80.4.5, %conv85.4.5
  %scevgep453.5 = getelementptr i8, i8* %scevgep451.4, i64 21
  %1420 = load i8, i8* %scevgep453.5, align 1
  %conv90.4.5 = zext i8 %1420 to i32
  %xor91.4.5 = xor i32 %xor.4.5, %conv90.4.5
  %scevgep459.5 = getelementptr i8, i8* %scevgep458, i64 -10
  %1421 = load i8, i8* %scevgep459.5, align 1
  %conv95.4.5 = zext i8 %1421 to i32
  %xor96.4.5 = xor i32 %xor91.4.5, %conv95.4.5
  %scevgep455.5 = getelementptr i8, i8* %scevgep454, i64 -10
  %scevgep456.5 = getelementptr i8, i8* %scevgep455.5, i64 -1
  %1422 = load i8, i8* %scevgep456.5, align 1
  %conv102.4.5 = zext i8 %1422 to i32
  %xor103.4.5 = xor i32 %xor96.4.5, %conv102.4.5
  %1423 = load i8, i8* %scevgep451.4, align 1
  %conv109.4.5 = zext i8 %1423 to i32
  %xor110.4.5 = xor i32 %xor103.4.5, %conv109.4.5
  %conv111.4.5 = trunc i32 %xor110.4.5 to i8
  %scevgep447.5 = getelementptr i8, i8* %scevgep445, i64 -10
  store i8 %conv111.4.5, i8* %scevgep447.5, align 1
  %scevgep446.5 = getelementptr i8, i8* %scevgep445, i64 -10
  %1424 = load i8, i8* %scevgep446.5, align 1
  %conv120.4.5 = zext i8 %1424 to i32
  %1425 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.5 = zext i8 %1425 to i32
  %xor124.4.5 = xor i32 %conv123.4.5, %conv120.4.5
  %conv125.4.5 = trunc i32 %xor124.4.5 to i8
  store i8 %conv125.4.5, i8* %arrayidx122.4, align 1
  %scevgep451.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1417, i64 0, i64 -2, i64 0
  %1426 = bitcast i8* %scevgep451.5 to [21 x [21 x i8]]*
  %scevgep461.6 = getelementptr i8, i8* %scevgep460, i64 -12
  %1427 = load i8, i8* %scevgep461.6, align 1
  %conv80.4.6 = zext i8 %1427 to i32
  %scevgep457.6 = getelementptr i8, i8* %scevgep454, i64 -12
  %1428 = load i8, i8* %scevgep457.6, align 1
  %conv85.4.6 = zext i8 %1428 to i32
  %xor.4.6 = xor i32 %conv80.4.6, %conv85.4.6
  %scevgep453.6 = getelementptr i8, i8* %scevgep451.5, i64 21
  %1429 = load i8, i8* %scevgep453.6, align 1
  %conv90.4.6 = zext i8 %1429 to i32
  %xor91.4.6 = xor i32 %xor.4.6, %conv90.4.6
  %scevgep459.6 = getelementptr i8, i8* %scevgep458, i64 -12
  %1430 = load i8, i8* %scevgep459.6, align 1
  %conv95.4.6 = zext i8 %1430 to i32
  %xor96.4.6 = xor i32 %xor91.4.6, %conv95.4.6
  %scevgep455.6 = getelementptr i8, i8* %scevgep454, i64 -12
  %scevgep456.6 = getelementptr i8, i8* %scevgep455.6, i64 -1
  %1431 = load i8, i8* %scevgep456.6, align 1
  %conv102.4.6 = zext i8 %1431 to i32
  %xor103.4.6 = xor i32 %xor96.4.6, %conv102.4.6
  %1432 = load i8, i8* %scevgep451.5, align 1
  %conv109.4.6 = zext i8 %1432 to i32
  %xor110.4.6 = xor i32 %xor103.4.6, %conv109.4.6
  %conv111.4.6 = trunc i32 %xor110.4.6 to i8
  %scevgep447.6 = getelementptr i8, i8* %scevgep445, i64 -12
  store i8 %conv111.4.6, i8* %scevgep447.6, align 1
  %scevgep446.6 = getelementptr i8, i8* %scevgep445, i64 -12
  %1433 = load i8, i8* %scevgep446.6, align 1
  %conv120.4.6 = zext i8 %1433 to i32
  %1434 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.6 = zext i8 %1434 to i32
  %xor124.4.6 = xor i32 %conv123.4.6, %conv120.4.6
  %conv125.4.6 = trunc i32 %xor124.4.6 to i8
  store i8 %conv125.4.6, i8* %arrayidx122.4, align 1
  %scevgep451.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1426, i64 0, i64 -2, i64 0
  %scevgep461.7 = getelementptr i8, i8* %scevgep460, i64 -14
  %1435 = load i8, i8* %scevgep461.7, align 1
  %conv80.4.7 = zext i8 %1435 to i32
  %scevgep457.7 = getelementptr i8, i8* %scevgep454, i64 -14
  %1436 = load i8, i8* %scevgep457.7, align 1
  %conv85.4.7 = zext i8 %1436 to i32
  %xor.4.7 = xor i32 %conv80.4.7, %conv85.4.7
  %scevgep453.7 = getelementptr i8, i8* %scevgep451.6, i64 21
  %1437 = load i8, i8* %scevgep453.7, align 1
  %conv90.4.7 = zext i8 %1437 to i32
  %xor91.4.7 = xor i32 %xor.4.7, %conv90.4.7
  %scevgep459.7 = getelementptr i8, i8* %scevgep458, i64 -14
  %1438 = load i8, i8* %scevgep459.7, align 1
  %conv95.4.7 = zext i8 %1438 to i32
  %xor96.4.7 = xor i32 %xor91.4.7, %conv95.4.7
  %scevgep455.7 = getelementptr i8, i8* %scevgep454, i64 -14
  %scevgep456.7 = getelementptr i8, i8* %scevgep455.7, i64 -1
  %1439 = load i8, i8* %scevgep456.7, align 1
  %conv102.4.7 = zext i8 %1439 to i32
  %xor103.4.7 = xor i32 %xor96.4.7, %conv102.4.7
  %1440 = load i8, i8* %scevgep451.6, align 1
  %conv109.4.7 = zext i8 %1440 to i32
  %xor110.4.7 = xor i32 %xor103.4.7, %conv109.4.7
  %conv111.4.7 = trunc i32 %xor110.4.7 to i8
  %scevgep447.7 = getelementptr i8, i8* %scevgep445, i64 -14
  store i8 %conv111.4.7, i8* %scevgep447.7, align 1
  %scevgep446.7 = getelementptr i8, i8* %scevgep445, i64 -14
  %1441 = load i8, i8* %scevgep446.7, align 1
  %conv120.4.7 = zext i8 %1441 to i32
  %1442 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.7 = zext i8 %1442 to i32
  %xor124.4.7 = xor i32 %conv123.4.7, %conv120.4.7
  %conv125.4.7 = trunc i32 %xor124.4.7 to i8
  store i8 %conv125.4.7, i8* %arrayidx122.4, align 1
  %arrayidx192.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep19.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 3, i64 4
  %1443 = load i8, i8* %scevgep19.4, align 1
  %conv190.4 = zext i8 %1443 to i32
  %1444 = load i8, i8* %arrayidx192.4, align 1
  %conv193.4 = zext i8 %1444 to i32
  %xor194.4 = xor i32 %conv193.4, %conv190.4
  %conv195.4 = trunc i32 %xor194.4 to i8
  store i8 %conv195.4, i8* %arrayidx192.4, align 1
  %scevgep439 = getelementptr i8, i8* %scevgep19.4, i64 -21
  %1445 = load i8, i8* %scevgep439, align 1
  %conv190.1.4 = zext i8 %1445 to i32
  %1446 = load i8, i8* %arrayidx192.4, align 1
  %conv193.1.4 = zext i8 %1446 to i32
  %xor194.1.4 = xor i32 %conv193.1.4, %conv190.1.4
  %conv195.1.4 = trunc i32 %xor194.1.4 to i8
  store i8 %conv195.1.4, i8* %arrayidx192.4, align 1
  %scevgep440 = getelementptr i8, i8* %scevgep19.4, i64 -42
  %1447 = load i8, i8* %scevgep440, align 1
  %conv190.4.1 = zext i8 %1447 to i32
  %1448 = load i8, i8* %arrayidx192.4, align 1
  %conv193.4.1 = zext i8 %1448 to i32
  %xor194.4.1 = xor i32 %conv193.4.1, %conv190.4.1
  %conv195.4.1 = trunc i32 %xor194.4.1 to i8
  store i8 %conv195.4.1, i8* %arrayidx192.4, align 1
  %scevgep439.1 = getelementptr i8, i8* %scevgep440, i64 -21
  %1449 = load i8, i8* %scevgep439.1, align 1
  %conv190.1.4.1 = zext i8 %1449 to i32
  %1450 = load i8, i8* %arrayidx192.4, align 1
  %conv193.1.4.1 = zext i8 %1450 to i32
  %xor194.1.4.1 = xor i32 %conv193.1.4.1, %conv190.1.4.1
  %conv195.1.4.1 = trunc i32 %xor194.1.4.1 to i8
  store i8 %conv195.1.4.1, i8* %arrayidx192.4, align 1
  %arrayidx65.5 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 5
  %arrayidx67.5 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.5, i64 0, i64 5
  %1451 = load i8, i8* %arrayidx67.5, align 1
  %arrayidx69.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %1451, i8* %arrayidx69.5, align 1
  %arrayidx122.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep422 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 5, i64 20
  %scevgep425 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 5
  %scevgep425426 = bitcast i8* %scevgep425 to [21 x [21 x i8]]*
  %scevgep431 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 5, i64 20
  %scevgep435 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep437 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 5, i64 20
  %1452 = load i8, i8* %scevgep437, align 1
  %conv80.5 = zext i8 %1452 to i32
  %1453 = load i8, i8* %scevgep431, align 1
  %conv85.5 = zext i8 %1453 to i32
  %xor.5 = xor i32 %conv80.5, %conv85.5
  %scevgep430 = getelementptr i8, i8* %scevgep425, i64 21
  %1454 = load i8, i8* %scevgep430, align 1
  %conv90.5 = zext i8 %1454 to i32
  %xor91.5 = xor i32 %xor.5, %conv90.5
  %1455 = load i8, i8* %scevgep435, align 1
  %conv95.5 = zext i8 %1455 to i32
  %xor96.5 = xor i32 %xor91.5, %conv95.5
  %scevgep433 = getelementptr i8, i8* %scevgep431, i64 -1
  %1456 = load i8, i8* %scevgep433, align 1
  %conv102.5 = zext i8 %1456 to i32
  %xor103.5 = xor i32 %xor96.5, %conv102.5
  %1457 = load i8, i8* %scevgep425, align 1
  %conv109.5 = zext i8 %1457 to i32
  %xor110.5 = xor i32 %xor103.5, %conv109.5
  %conv111.5 = trunc i32 %xor110.5 to i8
  store i8 %conv111.5, i8* %scevgep422, align 1
  %1458 = load i8, i8* %scevgep422, align 1
  %conv120.5 = zext i8 %1458 to i32
  %1459 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5 = zext i8 %1459 to i32
  %xor124.5 = xor i32 %conv123.5, %conv120.5
  %conv125.5 = trunc i32 %xor124.5 to i8
  store i8 %conv125.5, i8* %arrayidx122.5, align 1
  %scevgep428 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep425426, i64 0, i64 -2, i64 0
  %1460 = bitcast i8* %scevgep428 to [21 x [21 x i8]]*
  %scevgep438.1 = getelementptr i8, i8* %scevgep437, i64 -2
  %1461 = load i8, i8* %scevgep438.1, align 1
  %conv80.5.1 = zext i8 %1461 to i32
  %scevgep434.1 = getelementptr i8, i8* %scevgep431, i64 -2
  %1462 = load i8, i8* %scevgep434.1, align 1
  %conv85.5.1 = zext i8 %1462 to i32
  %xor.5.1 = xor i32 %conv80.5.1, %conv85.5.1
  %scevgep430.1 = getelementptr i8, i8* %scevgep428, i64 21
  %1463 = load i8, i8* %scevgep430.1, align 1
  %conv90.5.1 = zext i8 %1463 to i32
  %xor91.5.1 = xor i32 %xor.5.1, %conv90.5.1
  %scevgep436.1 = getelementptr i8, i8* %scevgep435, i64 -2
  %1464 = load i8, i8* %scevgep436.1, align 1
  %conv95.5.1 = zext i8 %1464 to i32
  %xor96.5.1 = xor i32 %xor91.5.1, %conv95.5.1
  %scevgep432.1 = getelementptr i8, i8* %scevgep431, i64 -2
  %scevgep433.1 = getelementptr i8, i8* %scevgep432.1, i64 -1
  %1465 = load i8, i8* %scevgep433.1, align 1
  %conv102.5.1 = zext i8 %1465 to i32
  %xor103.5.1 = xor i32 %xor96.5.1, %conv102.5.1
  %1466 = load i8, i8* %scevgep428, align 1
  %conv109.5.1 = zext i8 %1466 to i32
  %xor110.5.1 = xor i32 %xor103.5.1, %conv109.5.1
  %conv111.5.1 = trunc i32 %xor110.5.1 to i8
  %scevgep424.1 = getelementptr i8, i8* %scevgep422, i64 -2
  store i8 %conv111.5.1, i8* %scevgep424.1, align 1
  %scevgep423.1 = getelementptr i8, i8* %scevgep422, i64 -2
  %1467 = load i8, i8* %scevgep423.1, align 1
  %conv120.5.1 = zext i8 %1467 to i32
  %1468 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5.1 = zext i8 %1468 to i32
  %xor124.5.1 = xor i32 %conv123.5.1, %conv120.5.1
  %conv125.5.1 = trunc i32 %xor124.5.1 to i8
  store i8 %conv125.5.1, i8* %arrayidx122.5, align 1
  %scevgep428.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1460, i64 0, i64 -2, i64 0
  %1469 = bitcast i8* %scevgep428.1 to [21 x [21 x i8]]*
  %scevgep438.2 = getelementptr i8, i8* %scevgep437, i64 -4
  %1470 = load i8, i8* %scevgep438.2, align 1
  %conv80.5.2 = zext i8 %1470 to i32
  %scevgep434.2 = getelementptr i8, i8* %scevgep431, i64 -4
  %1471 = load i8, i8* %scevgep434.2, align 1
  %conv85.5.2 = zext i8 %1471 to i32
  %xor.5.2 = xor i32 %conv80.5.2, %conv85.5.2
  %scevgep430.2 = getelementptr i8, i8* %scevgep428.1, i64 21
  %1472 = load i8, i8* %scevgep430.2, align 1
  %conv90.5.2 = zext i8 %1472 to i32
  %xor91.5.2 = xor i32 %xor.5.2, %conv90.5.2
  %scevgep436.2 = getelementptr i8, i8* %scevgep435, i64 -4
  %1473 = load i8, i8* %scevgep436.2, align 1
  %conv95.5.2 = zext i8 %1473 to i32
  %xor96.5.2 = xor i32 %xor91.5.2, %conv95.5.2
  %scevgep432.2 = getelementptr i8, i8* %scevgep431, i64 -4
  %scevgep433.2 = getelementptr i8, i8* %scevgep432.2, i64 -1
  %1474 = load i8, i8* %scevgep433.2, align 1
  %conv102.5.2 = zext i8 %1474 to i32
  %xor103.5.2 = xor i32 %xor96.5.2, %conv102.5.2
  %1475 = load i8, i8* %scevgep428.1, align 1
  %conv109.5.2 = zext i8 %1475 to i32
  %xor110.5.2 = xor i32 %xor103.5.2, %conv109.5.2
  %conv111.5.2 = trunc i32 %xor110.5.2 to i8
  %scevgep424.2 = getelementptr i8, i8* %scevgep422, i64 -4
  store i8 %conv111.5.2, i8* %scevgep424.2, align 1
  %scevgep423.2 = getelementptr i8, i8* %scevgep422, i64 -4
  %1476 = load i8, i8* %scevgep423.2, align 1
  %conv120.5.2 = zext i8 %1476 to i32
  %1477 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5.2 = zext i8 %1477 to i32
  %xor124.5.2 = xor i32 %conv123.5.2, %conv120.5.2
  %conv125.5.2 = trunc i32 %xor124.5.2 to i8
  store i8 %conv125.5.2, i8* %arrayidx122.5, align 1
  %scevgep428.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1469, i64 0, i64 -2, i64 0
  %1478 = bitcast i8* %scevgep428.2 to [21 x [21 x i8]]*
  %scevgep438.3 = getelementptr i8, i8* %scevgep437, i64 -6
  %1479 = load i8, i8* %scevgep438.3, align 1
  %conv80.5.3 = zext i8 %1479 to i32
  %scevgep434.3 = getelementptr i8, i8* %scevgep431, i64 -6
  %1480 = load i8, i8* %scevgep434.3, align 1
  %conv85.5.3 = zext i8 %1480 to i32
  %xor.5.3 = xor i32 %conv80.5.3, %conv85.5.3
  %scevgep430.3 = getelementptr i8, i8* %scevgep428.2, i64 21
  %1481 = load i8, i8* %scevgep430.3, align 1
  %conv90.5.3 = zext i8 %1481 to i32
  %xor91.5.3 = xor i32 %xor.5.3, %conv90.5.3
  %scevgep436.3 = getelementptr i8, i8* %scevgep435, i64 -6
  %1482 = load i8, i8* %scevgep436.3, align 1
  %conv95.5.3 = zext i8 %1482 to i32
  %xor96.5.3 = xor i32 %xor91.5.3, %conv95.5.3
  %scevgep432.3 = getelementptr i8, i8* %scevgep431, i64 -6
  %scevgep433.3 = getelementptr i8, i8* %scevgep432.3, i64 -1
  %1483 = load i8, i8* %scevgep433.3, align 1
  %conv102.5.3 = zext i8 %1483 to i32
  %xor103.5.3 = xor i32 %xor96.5.3, %conv102.5.3
  %1484 = load i8, i8* %scevgep428.2, align 1
  %conv109.5.3 = zext i8 %1484 to i32
  %xor110.5.3 = xor i32 %xor103.5.3, %conv109.5.3
  %conv111.5.3 = trunc i32 %xor110.5.3 to i8
  %scevgep424.3 = getelementptr i8, i8* %scevgep422, i64 -6
  store i8 %conv111.5.3, i8* %scevgep424.3, align 1
  %scevgep423.3 = getelementptr i8, i8* %scevgep422, i64 -6
  %1485 = load i8, i8* %scevgep423.3, align 1
  %conv120.5.3 = zext i8 %1485 to i32
  %1486 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5.3 = zext i8 %1486 to i32
  %xor124.5.3 = xor i32 %conv123.5.3, %conv120.5.3
  %conv125.5.3 = trunc i32 %xor124.5.3 to i8
  store i8 %conv125.5.3, i8* %arrayidx122.5, align 1
  %scevgep428.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1478, i64 0, i64 -2, i64 0
  %1487 = bitcast i8* %scevgep428.3 to [21 x [21 x i8]]*
  %scevgep438.4 = getelementptr i8, i8* %scevgep437, i64 -8
  %1488 = load i8, i8* %scevgep438.4, align 1
  %conv80.5.4 = zext i8 %1488 to i32
  %scevgep434.4 = getelementptr i8, i8* %scevgep431, i64 -8
  %1489 = load i8, i8* %scevgep434.4, align 1
  %conv85.5.4 = zext i8 %1489 to i32
  %xor.5.4 = xor i32 %conv80.5.4, %conv85.5.4
  %scevgep430.4 = getelementptr i8, i8* %scevgep428.3, i64 21
  %1490 = load i8, i8* %scevgep430.4, align 1
  %conv90.5.4 = zext i8 %1490 to i32
  %xor91.5.4 = xor i32 %xor.5.4, %conv90.5.4
  %scevgep436.4 = getelementptr i8, i8* %scevgep435, i64 -8
  %1491 = load i8, i8* %scevgep436.4, align 1
  %conv95.5.4 = zext i8 %1491 to i32
  %xor96.5.4 = xor i32 %xor91.5.4, %conv95.5.4
  %scevgep432.4 = getelementptr i8, i8* %scevgep431, i64 -8
  %scevgep433.4 = getelementptr i8, i8* %scevgep432.4, i64 -1
  %1492 = load i8, i8* %scevgep433.4, align 1
  %conv102.5.4 = zext i8 %1492 to i32
  %xor103.5.4 = xor i32 %xor96.5.4, %conv102.5.4
  %1493 = load i8, i8* %scevgep428.3, align 1
  %conv109.5.4 = zext i8 %1493 to i32
  %xor110.5.4 = xor i32 %xor103.5.4, %conv109.5.4
  %conv111.5.4 = trunc i32 %xor110.5.4 to i8
  %scevgep424.4 = getelementptr i8, i8* %scevgep422, i64 -8
  store i8 %conv111.5.4, i8* %scevgep424.4, align 1
  %scevgep423.4 = getelementptr i8, i8* %scevgep422, i64 -8
  %1494 = load i8, i8* %scevgep423.4, align 1
  %conv120.5.4 = zext i8 %1494 to i32
  %1495 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5.4 = zext i8 %1495 to i32
  %xor124.5.4 = xor i32 %conv123.5.4, %conv120.5.4
  %conv125.5.4 = trunc i32 %xor124.5.4 to i8
  store i8 %conv125.5.4, i8* %arrayidx122.5, align 1
  %scevgep428.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1487, i64 0, i64 -2, i64 0
  %1496 = bitcast i8* %scevgep428.4 to [21 x [21 x i8]]*
  %scevgep438.5 = getelementptr i8, i8* %scevgep437, i64 -10
  %1497 = load i8, i8* %scevgep438.5, align 1
  %conv80.5.5 = zext i8 %1497 to i32
  %scevgep434.5 = getelementptr i8, i8* %scevgep431, i64 -10
  %1498 = load i8, i8* %scevgep434.5, align 1
  %conv85.5.5 = zext i8 %1498 to i32
  %xor.5.5 = xor i32 %conv80.5.5, %conv85.5.5
  %scevgep430.5 = getelementptr i8, i8* %scevgep428.4, i64 21
  %1499 = load i8, i8* %scevgep430.5, align 1
  %conv90.5.5 = zext i8 %1499 to i32
  %xor91.5.5 = xor i32 %xor.5.5, %conv90.5.5
  %scevgep436.5 = getelementptr i8, i8* %scevgep435, i64 -10
  %1500 = load i8, i8* %scevgep436.5, align 1
  %conv95.5.5 = zext i8 %1500 to i32
  %xor96.5.5 = xor i32 %xor91.5.5, %conv95.5.5
  %scevgep432.5 = getelementptr i8, i8* %scevgep431, i64 -10
  %scevgep433.5 = getelementptr i8, i8* %scevgep432.5, i64 -1
  %1501 = load i8, i8* %scevgep433.5, align 1
  %conv102.5.5 = zext i8 %1501 to i32
  %xor103.5.5 = xor i32 %xor96.5.5, %conv102.5.5
  %1502 = load i8, i8* %scevgep428.4, align 1
  %conv109.5.5 = zext i8 %1502 to i32
  %xor110.5.5 = xor i32 %xor103.5.5, %conv109.5.5
  %conv111.5.5 = trunc i32 %xor110.5.5 to i8
  %scevgep424.5 = getelementptr i8, i8* %scevgep422, i64 -10
  store i8 %conv111.5.5, i8* %scevgep424.5, align 1
  %scevgep423.5 = getelementptr i8, i8* %scevgep422, i64 -10
  %1503 = load i8, i8* %scevgep423.5, align 1
  %conv120.5.5 = zext i8 %1503 to i32
  %1504 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5.5 = zext i8 %1504 to i32
  %xor124.5.5 = xor i32 %conv123.5.5, %conv120.5.5
  %conv125.5.5 = trunc i32 %xor124.5.5 to i8
  store i8 %conv125.5.5, i8* %arrayidx122.5, align 1
  %scevgep428.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1496, i64 0, i64 -2, i64 0
  %scevgep438.6 = getelementptr i8, i8* %scevgep437, i64 -12
  %1505 = load i8, i8* %scevgep438.6, align 1
  %conv80.5.6 = zext i8 %1505 to i32
  %scevgep434.6 = getelementptr i8, i8* %scevgep431, i64 -12
  %1506 = load i8, i8* %scevgep434.6, align 1
  %conv85.5.6 = zext i8 %1506 to i32
  %xor.5.6 = xor i32 %conv80.5.6, %conv85.5.6
  %scevgep430.6 = getelementptr i8, i8* %scevgep428.5, i64 21
  %1507 = load i8, i8* %scevgep430.6, align 1
  %conv90.5.6 = zext i8 %1507 to i32
  %xor91.5.6 = xor i32 %xor.5.6, %conv90.5.6
  %scevgep436.6 = getelementptr i8, i8* %scevgep435, i64 -12
  %1508 = load i8, i8* %scevgep436.6, align 1
  %conv95.5.6 = zext i8 %1508 to i32
  %xor96.5.6 = xor i32 %xor91.5.6, %conv95.5.6
  %scevgep432.6 = getelementptr i8, i8* %scevgep431, i64 -12
  %scevgep433.6 = getelementptr i8, i8* %scevgep432.6, i64 -1
  %1509 = load i8, i8* %scevgep433.6, align 1
  %conv102.5.6 = zext i8 %1509 to i32
  %xor103.5.6 = xor i32 %xor96.5.6, %conv102.5.6
  %1510 = load i8, i8* %scevgep428.5, align 1
  %conv109.5.6 = zext i8 %1510 to i32
  %xor110.5.6 = xor i32 %xor103.5.6, %conv109.5.6
  %conv111.5.6 = trunc i32 %xor110.5.6 to i8
  %scevgep424.6 = getelementptr i8, i8* %scevgep422, i64 -12
  store i8 %conv111.5.6, i8* %scevgep424.6, align 1
  %scevgep423.6 = getelementptr i8, i8* %scevgep422, i64 -12
  %1511 = load i8, i8* %scevgep423.6, align 1
  %conv120.5.6 = zext i8 %1511 to i32
  %1512 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5.6 = zext i8 %1512 to i32
  %xor124.5.6 = xor i32 %conv123.5.6, %conv120.5.6
  %conv125.5.6 = trunc i32 %xor124.5.6 to i8
  store i8 %conv125.5.6, i8* %arrayidx122.5, align 1
  %arrayidx132.5 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 5
  %arrayidx135.5 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.5, i64 0, i64 6
  %1513 = load i8, i8* %arrayidx135.5, align 1
  %conv136.5 = zext i8 %1513 to i32
  %arrayidx138.5 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 5
  %arrayidx141.5 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.5, i64 0, i64 6
  %1514 = load i8, i8* %arrayidx141.5, align 1
  %conv142.5 = zext i8 %1514 to i32
  %xor143.5 = xor i32 %conv136.5, %conv142.5
  %arrayidx146.5 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 6
  %arrayidx148.5 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.5, i64 0, i64 5
  %1515 = load i8, i8* %arrayidx148.5, align 1
  %conv149.5 = zext i8 %1515 to i32
  %xor150.5 = xor i32 %xor143.5, %conv149.5
  %conv151.5 = trunc i32 %xor150.5 to i8
  %arrayidx153.5 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 5
  %arrayidx156.5 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.5, i64 0, i64 6
  store i8 %conv151.5, i8* %arrayidx156.5, align 1
  %arrayidx158.5 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 5
  %arrayidx161.5 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.5, i64 0, i64 6
  %1516 = load i8, i8* %arrayidx161.5, align 1
  %conv162.5 = zext i8 %1516 to i32
  %arrayidx164.5 = getelementptr inbounds i8, i8* %c, i64 5
  %1517 = load i8, i8* %arrayidx164.5, align 1
  %conv165.5 = zext i8 %1517 to i32
  %xor166.5 = xor i32 %conv165.5, %conv162.5
  %conv167.5 = trunc i32 %xor166.5 to i8
  store i8 %conv167.5, i8* %arrayidx164.5, align 1
  %arrayidx173.5 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 5
  %1518 = load i8, i8* %arrayidx173.5, align 1
  %conv174.5 = zext i8 %1518 to i32
  %arrayidx176.5 = getelementptr inbounds i8, i8* %c, i64 5
  %1519 = load i8, i8* %arrayidx176.5, align 1
  %conv177.5 = zext i8 %1519 to i32
  %xor178.5 = xor i32 %conv177.5, %conv174.5
  %conv179.5 = trunc i32 %xor178.5 to i8
  store i8 %conv179.5, i8* %arrayidx176.5, align 1
  %arrayidx65.6 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 6
  %arrayidx67.6 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.6, i64 0, i64 6
  %1520 = load i8, i8* %arrayidx67.6, align 1
  %arrayidx69.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %1520, i8* %arrayidx69.6, align 1
  %arrayidx122.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep402 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 6, i64 20
  %scevgep405 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 6
  %scevgep405406 = bitcast i8* %scevgep405 to [21 x [21 x i8]]*
  %scevgep411 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 6, i64 20
  %scevgep415 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep417 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 6, i64 20
  %1521 = load i8, i8* %scevgep417, align 1
  %conv80.6 = zext i8 %1521 to i32
  %1522 = load i8, i8* %scevgep411, align 1
  %conv85.6 = zext i8 %1522 to i32
  %xor.6 = xor i32 %conv80.6, %conv85.6
  %scevgep410 = getelementptr i8, i8* %scevgep405, i64 21
  %1523 = load i8, i8* %scevgep410, align 1
  %conv90.6 = zext i8 %1523 to i32
  %xor91.6 = xor i32 %xor.6, %conv90.6
  %1524 = load i8, i8* %scevgep415, align 1
  %conv95.6 = zext i8 %1524 to i32
  %xor96.6 = xor i32 %xor91.6, %conv95.6
  %scevgep413 = getelementptr i8, i8* %scevgep411, i64 -1
  %1525 = load i8, i8* %scevgep413, align 1
  %conv102.6 = zext i8 %1525 to i32
  %xor103.6 = xor i32 %xor96.6, %conv102.6
  %1526 = load i8, i8* %scevgep405, align 1
  %conv109.6 = zext i8 %1526 to i32
  %xor110.6 = xor i32 %xor103.6, %conv109.6
  %conv111.6 = trunc i32 %xor110.6 to i8
  store i8 %conv111.6, i8* %scevgep402, align 1
  %1527 = load i8, i8* %scevgep402, align 1
  %conv120.6 = zext i8 %1527 to i32
  %1528 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6 = zext i8 %1528 to i32
  %xor124.6 = xor i32 %conv123.6, %conv120.6
  %conv125.6 = trunc i32 %xor124.6 to i8
  store i8 %conv125.6, i8* %arrayidx122.6, align 1
  %scevgep408 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep405406, i64 0, i64 -2, i64 0
  %1529 = bitcast i8* %scevgep408 to [21 x [21 x i8]]*
  %scevgep418.1 = getelementptr i8, i8* %scevgep417, i64 -2
  %1530 = load i8, i8* %scevgep418.1, align 1
  %conv80.6.1 = zext i8 %1530 to i32
  %scevgep414.1 = getelementptr i8, i8* %scevgep411, i64 -2
  %1531 = load i8, i8* %scevgep414.1, align 1
  %conv85.6.1 = zext i8 %1531 to i32
  %xor.6.1 = xor i32 %conv80.6.1, %conv85.6.1
  %scevgep410.1 = getelementptr i8, i8* %scevgep408, i64 21
  %1532 = load i8, i8* %scevgep410.1, align 1
  %conv90.6.1 = zext i8 %1532 to i32
  %xor91.6.1 = xor i32 %xor.6.1, %conv90.6.1
  %scevgep416.1 = getelementptr i8, i8* %scevgep415, i64 -2
  %1533 = load i8, i8* %scevgep416.1, align 1
  %conv95.6.1 = zext i8 %1533 to i32
  %xor96.6.1 = xor i32 %xor91.6.1, %conv95.6.1
  %scevgep412.1 = getelementptr i8, i8* %scevgep411, i64 -2
  %scevgep413.1 = getelementptr i8, i8* %scevgep412.1, i64 -1
  %1534 = load i8, i8* %scevgep413.1, align 1
  %conv102.6.1 = zext i8 %1534 to i32
  %xor103.6.1 = xor i32 %xor96.6.1, %conv102.6.1
  %1535 = load i8, i8* %scevgep408, align 1
  %conv109.6.1 = zext i8 %1535 to i32
  %xor110.6.1 = xor i32 %xor103.6.1, %conv109.6.1
  %conv111.6.1 = trunc i32 %xor110.6.1 to i8
  %scevgep404.1 = getelementptr i8, i8* %scevgep402, i64 -2
  store i8 %conv111.6.1, i8* %scevgep404.1, align 1
  %scevgep403.1 = getelementptr i8, i8* %scevgep402, i64 -2
  %1536 = load i8, i8* %scevgep403.1, align 1
  %conv120.6.1 = zext i8 %1536 to i32
  %1537 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6.1 = zext i8 %1537 to i32
  %xor124.6.1 = xor i32 %conv123.6.1, %conv120.6.1
  %conv125.6.1 = trunc i32 %xor124.6.1 to i8
  store i8 %conv125.6.1, i8* %arrayidx122.6, align 1
  %scevgep408.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1529, i64 0, i64 -2, i64 0
  %1538 = bitcast i8* %scevgep408.1 to [21 x [21 x i8]]*
  %scevgep418.2 = getelementptr i8, i8* %scevgep417, i64 -4
  %1539 = load i8, i8* %scevgep418.2, align 1
  %conv80.6.2 = zext i8 %1539 to i32
  %scevgep414.2 = getelementptr i8, i8* %scevgep411, i64 -4
  %1540 = load i8, i8* %scevgep414.2, align 1
  %conv85.6.2 = zext i8 %1540 to i32
  %xor.6.2 = xor i32 %conv80.6.2, %conv85.6.2
  %scevgep410.2 = getelementptr i8, i8* %scevgep408.1, i64 21
  %1541 = load i8, i8* %scevgep410.2, align 1
  %conv90.6.2 = zext i8 %1541 to i32
  %xor91.6.2 = xor i32 %xor.6.2, %conv90.6.2
  %scevgep416.2 = getelementptr i8, i8* %scevgep415, i64 -4
  %1542 = load i8, i8* %scevgep416.2, align 1
  %conv95.6.2 = zext i8 %1542 to i32
  %xor96.6.2 = xor i32 %xor91.6.2, %conv95.6.2
  %scevgep412.2 = getelementptr i8, i8* %scevgep411, i64 -4
  %scevgep413.2 = getelementptr i8, i8* %scevgep412.2, i64 -1
  %1543 = load i8, i8* %scevgep413.2, align 1
  %conv102.6.2 = zext i8 %1543 to i32
  %xor103.6.2 = xor i32 %xor96.6.2, %conv102.6.2
  %1544 = load i8, i8* %scevgep408.1, align 1
  %conv109.6.2 = zext i8 %1544 to i32
  %xor110.6.2 = xor i32 %xor103.6.2, %conv109.6.2
  %conv111.6.2 = trunc i32 %xor110.6.2 to i8
  %scevgep404.2 = getelementptr i8, i8* %scevgep402, i64 -4
  store i8 %conv111.6.2, i8* %scevgep404.2, align 1
  %scevgep403.2 = getelementptr i8, i8* %scevgep402, i64 -4
  %1545 = load i8, i8* %scevgep403.2, align 1
  %conv120.6.2 = zext i8 %1545 to i32
  %1546 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6.2 = zext i8 %1546 to i32
  %xor124.6.2 = xor i32 %conv123.6.2, %conv120.6.2
  %conv125.6.2 = trunc i32 %xor124.6.2 to i8
  store i8 %conv125.6.2, i8* %arrayidx122.6, align 1
  %scevgep408.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1538, i64 0, i64 -2, i64 0
  %1547 = bitcast i8* %scevgep408.2 to [21 x [21 x i8]]*
  %scevgep418.3 = getelementptr i8, i8* %scevgep417, i64 -6
  %1548 = load i8, i8* %scevgep418.3, align 1
  %conv80.6.3 = zext i8 %1548 to i32
  %scevgep414.3 = getelementptr i8, i8* %scevgep411, i64 -6
  %1549 = load i8, i8* %scevgep414.3, align 1
  %conv85.6.3 = zext i8 %1549 to i32
  %xor.6.3 = xor i32 %conv80.6.3, %conv85.6.3
  %scevgep410.3 = getelementptr i8, i8* %scevgep408.2, i64 21
  %1550 = load i8, i8* %scevgep410.3, align 1
  %conv90.6.3 = zext i8 %1550 to i32
  %xor91.6.3 = xor i32 %xor.6.3, %conv90.6.3
  %scevgep416.3 = getelementptr i8, i8* %scevgep415, i64 -6
  %1551 = load i8, i8* %scevgep416.3, align 1
  %conv95.6.3 = zext i8 %1551 to i32
  %xor96.6.3 = xor i32 %xor91.6.3, %conv95.6.3
  %scevgep412.3 = getelementptr i8, i8* %scevgep411, i64 -6
  %scevgep413.3 = getelementptr i8, i8* %scevgep412.3, i64 -1
  %1552 = load i8, i8* %scevgep413.3, align 1
  %conv102.6.3 = zext i8 %1552 to i32
  %xor103.6.3 = xor i32 %xor96.6.3, %conv102.6.3
  %1553 = load i8, i8* %scevgep408.2, align 1
  %conv109.6.3 = zext i8 %1553 to i32
  %xor110.6.3 = xor i32 %xor103.6.3, %conv109.6.3
  %conv111.6.3 = trunc i32 %xor110.6.3 to i8
  %scevgep404.3 = getelementptr i8, i8* %scevgep402, i64 -6
  store i8 %conv111.6.3, i8* %scevgep404.3, align 1
  %scevgep403.3 = getelementptr i8, i8* %scevgep402, i64 -6
  %1554 = load i8, i8* %scevgep403.3, align 1
  %conv120.6.3 = zext i8 %1554 to i32
  %1555 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6.3 = zext i8 %1555 to i32
  %xor124.6.3 = xor i32 %conv123.6.3, %conv120.6.3
  %conv125.6.3 = trunc i32 %xor124.6.3 to i8
  store i8 %conv125.6.3, i8* %arrayidx122.6, align 1
  %scevgep408.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1547, i64 0, i64 -2, i64 0
  %1556 = bitcast i8* %scevgep408.3 to [21 x [21 x i8]]*
  %scevgep418.4 = getelementptr i8, i8* %scevgep417, i64 -8
  %1557 = load i8, i8* %scevgep418.4, align 1
  %conv80.6.4 = zext i8 %1557 to i32
  %scevgep414.4 = getelementptr i8, i8* %scevgep411, i64 -8
  %1558 = load i8, i8* %scevgep414.4, align 1
  %conv85.6.4 = zext i8 %1558 to i32
  %xor.6.4 = xor i32 %conv80.6.4, %conv85.6.4
  %scevgep410.4 = getelementptr i8, i8* %scevgep408.3, i64 21
  %1559 = load i8, i8* %scevgep410.4, align 1
  %conv90.6.4 = zext i8 %1559 to i32
  %xor91.6.4 = xor i32 %xor.6.4, %conv90.6.4
  %scevgep416.4 = getelementptr i8, i8* %scevgep415, i64 -8
  %1560 = load i8, i8* %scevgep416.4, align 1
  %conv95.6.4 = zext i8 %1560 to i32
  %xor96.6.4 = xor i32 %xor91.6.4, %conv95.6.4
  %scevgep412.4 = getelementptr i8, i8* %scevgep411, i64 -8
  %scevgep413.4 = getelementptr i8, i8* %scevgep412.4, i64 -1
  %1561 = load i8, i8* %scevgep413.4, align 1
  %conv102.6.4 = zext i8 %1561 to i32
  %xor103.6.4 = xor i32 %xor96.6.4, %conv102.6.4
  %1562 = load i8, i8* %scevgep408.3, align 1
  %conv109.6.4 = zext i8 %1562 to i32
  %xor110.6.4 = xor i32 %xor103.6.4, %conv109.6.4
  %conv111.6.4 = trunc i32 %xor110.6.4 to i8
  %scevgep404.4 = getelementptr i8, i8* %scevgep402, i64 -8
  store i8 %conv111.6.4, i8* %scevgep404.4, align 1
  %scevgep403.4 = getelementptr i8, i8* %scevgep402, i64 -8
  %1563 = load i8, i8* %scevgep403.4, align 1
  %conv120.6.4 = zext i8 %1563 to i32
  %1564 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6.4 = zext i8 %1564 to i32
  %xor124.6.4 = xor i32 %conv123.6.4, %conv120.6.4
  %conv125.6.4 = trunc i32 %xor124.6.4 to i8
  store i8 %conv125.6.4, i8* %arrayidx122.6, align 1
  %scevgep408.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1556, i64 0, i64 -2, i64 0
  %1565 = bitcast i8* %scevgep408.4 to [21 x [21 x i8]]*
  %scevgep418.5 = getelementptr i8, i8* %scevgep417, i64 -10
  %1566 = load i8, i8* %scevgep418.5, align 1
  %conv80.6.5 = zext i8 %1566 to i32
  %scevgep414.5 = getelementptr i8, i8* %scevgep411, i64 -10
  %1567 = load i8, i8* %scevgep414.5, align 1
  %conv85.6.5 = zext i8 %1567 to i32
  %xor.6.5 = xor i32 %conv80.6.5, %conv85.6.5
  %scevgep410.5 = getelementptr i8, i8* %scevgep408.4, i64 21
  %1568 = load i8, i8* %scevgep410.5, align 1
  %conv90.6.5 = zext i8 %1568 to i32
  %xor91.6.5 = xor i32 %xor.6.5, %conv90.6.5
  %scevgep416.5 = getelementptr i8, i8* %scevgep415, i64 -10
  %1569 = load i8, i8* %scevgep416.5, align 1
  %conv95.6.5 = zext i8 %1569 to i32
  %xor96.6.5 = xor i32 %xor91.6.5, %conv95.6.5
  %scevgep412.5 = getelementptr i8, i8* %scevgep411, i64 -10
  %scevgep413.5 = getelementptr i8, i8* %scevgep412.5, i64 -1
  %1570 = load i8, i8* %scevgep413.5, align 1
  %conv102.6.5 = zext i8 %1570 to i32
  %xor103.6.5 = xor i32 %xor96.6.5, %conv102.6.5
  %1571 = load i8, i8* %scevgep408.4, align 1
  %conv109.6.5 = zext i8 %1571 to i32
  %xor110.6.5 = xor i32 %xor103.6.5, %conv109.6.5
  %conv111.6.5 = trunc i32 %xor110.6.5 to i8
  %scevgep404.5 = getelementptr i8, i8* %scevgep402, i64 -10
  store i8 %conv111.6.5, i8* %scevgep404.5, align 1
  %scevgep403.5 = getelementptr i8, i8* %scevgep402, i64 -10
  %1572 = load i8, i8* %scevgep403.5, align 1
  %conv120.6.5 = zext i8 %1572 to i32
  %1573 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6.5 = zext i8 %1573 to i32
  %xor124.6.5 = xor i32 %conv123.6.5, %conv120.6.5
  %conv125.6.5 = trunc i32 %xor124.6.5 to i8
  store i8 %conv125.6.5, i8* %arrayidx122.6, align 1
  %scevgep408.5 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1565, i64 0, i64 -2, i64 0
  %scevgep418.6 = getelementptr i8, i8* %scevgep417, i64 -12
  %1574 = load i8, i8* %scevgep418.6, align 1
  %conv80.6.6 = zext i8 %1574 to i32
  %scevgep414.6 = getelementptr i8, i8* %scevgep411, i64 -12
  %1575 = load i8, i8* %scevgep414.6, align 1
  %conv85.6.6 = zext i8 %1575 to i32
  %xor.6.6 = xor i32 %conv80.6.6, %conv85.6.6
  %scevgep410.6 = getelementptr i8, i8* %scevgep408.5, i64 21
  %1576 = load i8, i8* %scevgep410.6, align 1
  %conv90.6.6 = zext i8 %1576 to i32
  %xor91.6.6 = xor i32 %xor.6.6, %conv90.6.6
  %scevgep416.6 = getelementptr i8, i8* %scevgep415, i64 -12
  %1577 = load i8, i8* %scevgep416.6, align 1
  %conv95.6.6 = zext i8 %1577 to i32
  %xor96.6.6 = xor i32 %xor91.6.6, %conv95.6.6
  %scevgep412.6 = getelementptr i8, i8* %scevgep411, i64 -12
  %scevgep413.6 = getelementptr i8, i8* %scevgep412.6, i64 -1
  %1578 = load i8, i8* %scevgep413.6, align 1
  %conv102.6.6 = zext i8 %1578 to i32
  %xor103.6.6 = xor i32 %xor96.6.6, %conv102.6.6
  %1579 = load i8, i8* %scevgep408.5, align 1
  %conv109.6.6 = zext i8 %1579 to i32
  %xor110.6.6 = xor i32 %xor103.6.6, %conv109.6.6
  %conv111.6.6 = trunc i32 %xor110.6.6 to i8
  %scevgep404.6 = getelementptr i8, i8* %scevgep402, i64 -12
  store i8 %conv111.6.6, i8* %scevgep404.6, align 1
  %scevgep403.6 = getelementptr i8, i8* %scevgep402, i64 -12
  %1580 = load i8, i8* %scevgep403.6, align 1
  %conv120.6.6 = zext i8 %1580 to i32
  %1581 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6.6 = zext i8 %1581 to i32
  %xor124.6.6 = xor i32 %conv123.6.6, %conv120.6.6
  %conv125.6.6 = trunc i32 %xor124.6.6 to i8
  store i8 %conv125.6.6, i8* %arrayidx122.6, align 1
  %arrayidx192.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep19.6 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 5, i64 6
  %1582 = load i8, i8* %scevgep19.6, align 1
  %conv190.6 = zext i8 %1582 to i32
  %1583 = load i8, i8* %arrayidx192.6, align 1
  %conv193.6 = zext i8 %1583 to i32
  %xor194.6 = xor i32 %conv193.6, %conv190.6
  %conv195.6 = trunc i32 %xor194.6 to i8
  store i8 %conv195.6, i8* %arrayidx192.6, align 1
  %scevgep396 = getelementptr i8, i8* %scevgep19.6, i64 -21
  %1584 = load i8, i8* %scevgep396, align 1
  %conv190.1.6 = zext i8 %1584 to i32
  %1585 = load i8, i8* %arrayidx192.6, align 1
  %conv193.1.6 = zext i8 %1585 to i32
  %xor194.1.6 = xor i32 %conv193.1.6, %conv190.1.6
  %conv195.1.6 = trunc i32 %xor194.1.6 to i8
  store i8 %conv195.1.6, i8* %arrayidx192.6, align 1
  %scevgep397 = getelementptr i8, i8* %scevgep19.6, i64 -42
  %1586 = load i8, i8* %scevgep397, align 1
  %conv190.6.1 = zext i8 %1586 to i32
  %1587 = load i8, i8* %arrayidx192.6, align 1
  %conv193.6.1 = zext i8 %1587 to i32
  %xor194.6.1 = xor i32 %conv193.6.1, %conv190.6.1
  %conv195.6.1 = trunc i32 %xor194.6.1 to i8
  store i8 %conv195.6.1, i8* %arrayidx192.6, align 1
  %scevgep396.1 = getelementptr i8, i8* %scevgep397, i64 -21
  %1588 = load i8, i8* %scevgep396.1, align 1
  %conv190.1.6.1 = zext i8 %1588 to i32
  %1589 = load i8, i8* %arrayidx192.6, align 1
  %conv193.1.6.1 = zext i8 %1589 to i32
  %xor194.1.6.1 = xor i32 %conv193.1.6.1, %conv190.1.6.1
  %conv195.1.6.1 = trunc i32 %xor194.1.6.1 to i8
  store i8 %conv195.1.6.1, i8* %arrayidx192.6, align 1
  %scevgep397.1 = getelementptr i8, i8* %scevgep397, i64 -42
  %1590 = load i8, i8* %scevgep397.1, align 1
  %conv190.6.2 = zext i8 %1590 to i32
  %1591 = load i8, i8* %arrayidx192.6, align 1
  %conv193.6.2 = zext i8 %1591 to i32
  %xor194.6.2 = xor i32 %conv193.6.2, %conv190.6.2
  %conv195.6.2 = trunc i32 %xor194.6.2 to i8
  store i8 %conv195.6.2, i8* %arrayidx192.6, align 1
  %scevgep396.2 = getelementptr i8, i8* %scevgep397.1, i64 -21
  %1592 = load i8, i8* %scevgep396.2, align 1
  %conv190.1.6.2 = zext i8 %1592 to i32
  %1593 = load i8, i8* %arrayidx192.6, align 1
  %conv193.1.6.2 = zext i8 %1593 to i32
  %xor194.1.6.2 = xor i32 %conv193.1.6.2, %conv190.1.6.2
  %conv195.1.6.2 = trunc i32 %xor194.1.6.2 to i8
  store i8 %conv195.1.6.2, i8* %arrayidx192.6, align 1
  %arrayidx65.7 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 7
  %arrayidx67.7 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.7, i64 0, i64 7
  %1594 = load i8, i8* %arrayidx67.7, align 1
  %arrayidx69.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %1594, i8* %arrayidx69.7, align 1
  %arrayidx122.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep379 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 7, i64 20
  %scevgep382 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 7
  %scevgep382383 = bitcast i8* %scevgep382 to [21 x [21 x i8]]*
  %scevgep388 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 7, i64 20
  %scevgep392 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep394 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 7, i64 20
  %1595 = load i8, i8* %scevgep394, align 1
  %conv80.7 = zext i8 %1595 to i32
  %1596 = load i8, i8* %scevgep388, align 1
  %conv85.7 = zext i8 %1596 to i32
  %xor.7 = xor i32 %conv80.7, %conv85.7
  %scevgep387 = getelementptr i8, i8* %scevgep382, i64 21
  %1597 = load i8, i8* %scevgep387, align 1
  %conv90.7 = zext i8 %1597 to i32
  %xor91.7 = xor i32 %xor.7, %conv90.7
  %1598 = load i8, i8* %scevgep392, align 1
  %conv95.7 = zext i8 %1598 to i32
  %xor96.7 = xor i32 %xor91.7, %conv95.7
  %scevgep390 = getelementptr i8, i8* %scevgep388, i64 -1
  %1599 = load i8, i8* %scevgep390, align 1
  %conv102.7 = zext i8 %1599 to i32
  %xor103.7 = xor i32 %xor96.7, %conv102.7
  %1600 = load i8, i8* %scevgep382, align 1
  %conv109.7 = zext i8 %1600 to i32
  %xor110.7 = xor i32 %xor103.7, %conv109.7
  %conv111.7 = trunc i32 %xor110.7 to i8
  store i8 %conv111.7, i8* %scevgep379, align 1
  %1601 = load i8, i8* %scevgep379, align 1
  %conv120.7 = zext i8 %1601 to i32
  %1602 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7 = zext i8 %1602 to i32
  %xor124.7 = xor i32 %conv123.7, %conv120.7
  %conv125.7 = trunc i32 %xor124.7 to i8
  store i8 %conv125.7, i8* %arrayidx122.7, align 1
  %scevgep385 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep382383, i64 0, i64 -2, i64 0
  %1603 = bitcast i8* %scevgep385 to [21 x [21 x i8]]*
  %scevgep395.1 = getelementptr i8, i8* %scevgep394, i64 -2
  %1604 = load i8, i8* %scevgep395.1, align 1
  %conv80.7.1 = zext i8 %1604 to i32
  %scevgep391.1 = getelementptr i8, i8* %scevgep388, i64 -2
  %1605 = load i8, i8* %scevgep391.1, align 1
  %conv85.7.1 = zext i8 %1605 to i32
  %xor.7.1 = xor i32 %conv80.7.1, %conv85.7.1
  %scevgep387.1 = getelementptr i8, i8* %scevgep385, i64 21
  %1606 = load i8, i8* %scevgep387.1, align 1
  %conv90.7.1 = zext i8 %1606 to i32
  %xor91.7.1 = xor i32 %xor.7.1, %conv90.7.1
  %scevgep393.1 = getelementptr i8, i8* %scevgep392, i64 -2
  %1607 = load i8, i8* %scevgep393.1, align 1
  %conv95.7.1 = zext i8 %1607 to i32
  %xor96.7.1 = xor i32 %xor91.7.1, %conv95.7.1
  %scevgep389.1 = getelementptr i8, i8* %scevgep388, i64 -2
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 -1
  %1608 = load i8, i8* %scevgep390.1, align 1
  %conv102.7.1 = zext i8 %1608 to i32
  %xor103.7.1 = xor i32 %xor96.7.1, %conv102.7.1
  %1609 = load i8, i8* %scevgep385, align 1
  %conv109.7.1 = zext i8 %1609 to i32
  %xor110.7.1 = xor i32 %xor103.7.1, %conv109.7.1
  %conv111.7.1 = trunc i32 %xor110.7.1 to i8
  %scevgep381.1 = getelementptr i8, i8* %scevgep379, i64 -2
  store i8 %conv111.7.1, i8* %scevgep381.1, align 1
  %scevgep380.1 = getelementptr i8, i8* %scevgep379, i64 -2
  %1610 = load i8, i8* %scevgep380.1, align 1
  %conv120.7.1 = zext i8 %1610 to i32
  %1611 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7.1 = zext i8 %1611 to i32
  %xor124.7.1 = xor i32 %conv123.7.1, %conv120.7.1
  %conv125.7.1 = trunc i32 %xor124.7.1 to i8
  store i8 %conv125.7.1, i8* %arrayidx122.7, align 1
  %scevgep385.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1603, i64 0, i64 -2, i64 0
  %1612 = bitcast i8* %scevgep385.1 to [21 x [21 x i8]]*
  %scevgep395.2 = getelementptr i8, i8* %scevgep394, i64 -4
  %1613 = load i8, i8* %scevgep395.2, align 1
  %conv80.7.2 = zext i8 %1613 to i32
  %scevgep391.2 = getelementptr i8, i8* %scevgep388, i64 -4
  %1614 = load i8, i8* %scevgep391.2, align 1
  %conv85.7.2 = zext i8 %1614 to i32
  %xor.7.2 = xor i32 %conv80.7.2, %conv85.7.2
  %scevgep387.2 = getelementptr i8, i8* %scevgep385.1, i64 21
  %1615 = load i8, i8* %scevgep387.2, align 1
  %conv90.7.2 = zext i8 %1615 to i32
  %xor91.7.2 = xor i32 %xor.7.2, %conv90.7.2
  %scevgep393.2 = getelementptr i8, i8* %scevgep392, i64 -4
  %1616 = load i8, i8* %scevgep393.2, align 1
  %conv95.7.2 = zext i8 %1616 to i32
  %xor96.7.2 = xor i32 %xor91.7.2, %conv95.7.2
  %scevgep389.2 = getelementptr i8, i8* %scevgep388, i64 -4
  %scevgep390.2 = getelementptr i8, i8* %scevgep389.2, i64 -1
  %1617 = load i8, i8* %scevgep390.2, align 1
  %conv102.7.2 = zext i8 %1617 to i32
  %xor103.7.2 = xor i32 %xor96.7.2, %conv102.7.2
  %1618 = load i8, i8* %scevgep385.1, align 1
  %conv109.7.2 = zext i8 %1618 to i32
  %xor110.7.2 = xor i32 %xor103.7.2, %conv109.7.2
  %conv111.7.2 = trunc i32 %xor110.7.2 to i8
  %scevgep381.2 = getelementptr i8, i8* %scevgep379, i64 -4
  store i8 %conv111.7.2, i8* %scevgep381.2, align 1
  %scevgep380.2 = getelementptr i8, i8* %scevgep379, i64 -4
  %1619 = load i8, i8* %scevgep380.2, align 1
  %conv120.7.2 = zext i8 %1619 to i32
  %1620 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7.2 = zext i8 %1620 to i32
  %xor124.7.2 = xor i32 %conv123.7.2, %conv120.7.2
  %conv125.7.2 = trunc i32 %xor124.7.2 to i8
  store i8 %conv125.7.2, i8* %arrayidx122.7, align 1
  %scevgep385.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1612, i64 0, i64 -2, i64 0
  %1621 = bitcast i8* %scevgep385.2 to [21 x [21 x i8]]*
  %scevgep395.3 = getelementptr i8, i8* %scevgep394, i64 -6
  %1622 = load i8, i8* %scevgep395.3, align 1
  %conv80.7.3 = zext i8 %1622 to i32
  %scevgep391.3 = getelementptr i8, i8* %scevgep388, i64 -6
  %1623 = load i8, i8* %scevgep391.3, align 1
  %conv85.7.3 = zext i8 %1623 to i32
  %xor.7.3 = xor i32 %conv80.7.3, %conv85.7.3
  %scevgep387.3 = getelementptr i8, i8* %scevgep385.2, i64 21
  %1624 = load i8, i8* %scevgep387.3, align 1
  %conv90.7.3 = zext i8 %1624 to i32
  %xor91.7.3 = xor i32 %xor.7.3, %conv90.7.3
  %scevgep393.3 = getelementptr i8, i8* %scevgep392, i64 -6
  %1625 = load i8, i8* %scevgep393.3, align 1
  %conv95.7.3 = zext i8 %1625 to i32
  %xor96.7.3 = xor i32 %xor91.7.3, %conv95.7.3
  %scevgep389.3 = getelementptr i8, i8* %scevgep388, i64 -6
  %scevgep390.3 = getelementptr i8, i8* %scevgep389.3, i64 -1
  %1626 = load i8, i8* %scevgep390.3, align 1
  %conv102.7.3 = zext i8 %1626 to i32
  %xor103.7.3 = xor i32 %xor96.7.3, %conv102.7.3
  %1627 = load i8, i8* %scevgep385.2, align 1
  %conv109.7.3 = zext i8 %1627 to i32
  %xor110.7.3 = xor i32 %xor103.7.3, %conv109.7.3
  %conv111.7.3 = trunc i32 %xor110.7.3 to i8
  %scevgep381.3 = getelementptr i8, i8* %scevgep379, i64 -6
  store i8 %conv111.7.3, i8* %scevgep381.3, align 1
  %scevgep380.3 = getelementptr i8, i8* %scevgep379, i64 -6
  %1628 = load i8, i8* %scevgep380.3, align 1
  %conv120.7.3 = zext i8 %1628 to i32
  %1629 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7.3 = zext i8 %1629 to i32
  %xor124.7.3 = xor i32 %conv123.7.3, %conv120.7.3
  %conv125.7.3 = trunc i32 %xor124.7.3 to i8
  store i8 %conv125.7.3, i8* %arrayidx122.7, align 1
  %scevgep385.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1621, i64 0, i64 -2, i64 0
  %1630 = bitcast i8* %scevgep385.3 to [21 x [21 x i8]]*
  %scevgep395.4 = getelementptr i8, i8* %scevgep394, i64 -8
  %1631 = load i8, i8* %scevgep395.4, align 1
  %conv80.7.4 = zext i8 %1631 to i32
  %scevgep391.4 = getelementptr i8, i8* %scevgep388, i64 -8
  %1632 = load i8, i8* %scevgep391.4, align 1
  %conv85.7.4 = zext i8 %1632 to i32
  %xor.7.4 = xor i32 %conv80.7.4, %conv85.7.4
  %scevgep387.4 = getelementptr i8, i8* %scevgep385.3, i64 21
  %1633 = load i8, i8* %scevgep387.4, align 1
  %conv90.7.4 = zext i8 %1633 to i32
  %xor91.7.4 = xor i32 %xor.7.4, %conv90.7.4
  %scevgep393.4 = getelementptr i8, i8* %scevgep392, i64 -8
  %1634 = load i8, i8* %scevgep393.4, align 1
  %conv95.7.4 = zext i8 %1634 to i32
  %xor96.7.4 = xor i32 %xor91.7.4, %conv95.7.4
  %scevgep389.4 = getelementptr i8, i8* %scevgep388, i64 -8
  %scevgep390.4 = getelementptr i8, i8* %scevgep389.4, i64 -1
  %1635 = load i8, i8* %scevgep390.4, align 1
  %conv102.7.4 = zext i8 %1635 to i32
  %xor103.7.4 = xor i32 %xor96.7.4, %conv102.7.4
  %1636 = load i8, i8* %scevgep385.3, align 1
  %conv109.7.4 = zext i8 %1636 to i32
  %xor110.7.4 = xor i32 %xor103.7.4, %conv109.7.4
  %conv111.7.4 = trunc i32 %xor110.7.4 to i8
  %scevgep381.4 = getelementptr i8, i8* %scevgep379, i64 -8
  store i8 %conv111.7.4, i8* %scevgep381.4, align 1
  %scevgep380.4 = getelementptr i8, i8* %scevgep379, i64 -8
  %1637 = load i8, i8* %scevgep380.4, align 1
  %conv120.7.4 = zext i8 %1637 to i32
  %1638 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7.4 = zext i8 %1638 to i32
  %xor124.7.4 = xor i32 %conv123.7.4, %conv120.7.4
  %conv125.7.4 = trunc i32 %xor124.7.4 to i8
  store i8 %conv125.7.4, i8* %arrayidx122.7, align 1
  %scevgep385.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1630, i64 0, i64 -2, i64 0
  %scevgep395.5 = getelementptr i8, i8* %scevgep394, i64 -10
  %1639 = load i8, i8* %scevgep395.5, align 1
  %conv80.7.5 = zext i8 %1639 to i32
  %scevgep391.5 = getelementptr i8, i8* %scevgep388, i64 -10
  %1640 = load i8, i8* %scevgep391.5, align 1
  %conv85.7.5 = zext i8 %1640 to i32
  %xor.7.5 = xor i32 %conv80.7.5, %conv85.7.5
  %scevgep387.5 = getelementptr i8, i8* %scevgep385.4, i64 21
  %1641 = load i8, i8* %scevgep387.5, align 1
  %conv90.7.5 = zext i8 %1641 to i32
  %xor91.7.5 = xor i32 %xor.7.5, %conv90.7.5
  %scevgep393.5 = getelementptr i8, i8* %scevgep392, i64 -10
  %1642 = load i8, i8* %scevgep393.5, align 1
  %conv95.7.5 = zext i8 %1642 to i32
  %xor96.7.5 = xor i32 %xor91.7.5, %conv95.7.5
  %scevgep389.5 = getelementptr i8, i8* %scevgep388, i64 -10
  %scevgep390.5 = getelementptr i8, i8* %scevgep389.5, i64 -1
  %1643 = load i8, i8* %scevgep390.5, align 1
  %conv102.7.5 = zext i8 %1643 to i32
  %xor103.7.5 = xor i32 %xor96.7.5, %conv102.7.5
  %1644 = load i8, i8* %scevgep385.4, align 1
  %conv109.7.5 = zext i8 %1644 to i32
  %xor110.7.5 = xor i32 %xor103.7.5, %conv109.7.5
  %conv111.7.5 = trunc i32 %xor110.7.5 to i8
  %scevgep381.5 = getelementptr i8, i8* %scevgep379, i64 -10
  store i8 %conv111.7.5, i8* %scevgep381.5, align 1
  %scevgep380.5 = getelementptr i8, i8* %scevgep379, i64 -10
  %1645 = load i8, i8* %scevgep380.5, align 1
  %conv120.7.5 = zext i8 %1645 to i32
  %1646 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7.5 = zext i8 %1646 to i32
  %xor124.7.5 = xor i32 %conv123.7.5, %conv120.7.5
  %conv125.7.5 = trunc i32 %xor124.7.5 to i8
  store i8 %conv125.7.5, i8* %arrayidx122.7, align 1
  %arrayidx132.7 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 7
  %arrayidx135.7 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.7, i64 0, i64 8
  %1647 = load i8, i8* %arrayidx135.7, align 1
  %conv136.7 = zext i8 %1647 to i32
  %arrayidx138.7 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 7
  %arrayidx141.7 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.7, i64 0, i64 8
  %1648 = load i8, i8* %arrayidx141.7, align 1
  %conv142.7 = zext i8 %1648 to i32
  %xor143.7 = xor i32 %conv136.7, %conv142.7
  %arrayidx146.7 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 8
  %arrayidx148.7 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.7, i64 0, i64 7
  %1649 = load i8, i8* %arrayidx148.7, align 1
  %conv149.7 = zext i8 %1649 to i32
  %xor150.7 = xor i32 %xor143.7, %conv149.7
  %conv151.7 = trunc i32 %xor150.7 to i8
  %arrayidx153.7 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 7
  %arrayidx156.7 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.7, i64 0, i64 8
  store i8 %conv151.7, i8* %arrayidx156.7, align 1
  %arrayidx158.7 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 7
  %arrayidx161.7 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.7, i64 0, i64 8
  %1650 = load i8, i8* %arrayidx161.7, align 1
  %conv162.7 = zext i8 %1650 to i32
  %arrayidx164.7 = getelementptr inbounds i8, i8* %c, i64 7
  %1651 = load i8, i8* %arrayidx164.7, align 1
  %conv165.7 = zext i8 %1651 to i32
  %xor166.7 = xor i32 %conv165.7, %conv162.7
  %conv167.7 = trunc i32 %xor166.7 to i8
  store i8 %conv167.7, i8* %arrayidx164.7, align 1
  %arrayidx173.7 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 7
  %1652 = load i8, i8* %arrayidx173.7, align 1
  %conv174.7 = zext i8 %1652 to i32
  %arrayidx176.7 = getelementptr inbounds i8, i8* %c, i64 7
  %1653 = load i8, i8* %arrayidx176.7, align 1
  %conv177.7 = zext i8 %1653 to i32
  %xor178.7 = xor i32 %conv177.7, %conv174.7
  %conv179.7 = trunc i32 %xor178.7 to i8
  store i8 %conv179.7, i8* %arrayidx176.7, align 1
  %arrayidx65.8 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 8
  %arrayidx67.8 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.8, i64 0, i64 8
  %1654 = load i8, i8* %arrayidx67.8, align 1
  %arrayidx69.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %1654, i8* %arrayidx69.8, align 1
  %arrayidx122.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep359 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 8, i64 20
  %scevgep362 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 8
  %scevgep362363 = bitcast i8* %scevgep362 to [21 x [21 x i8]]*
  %scevgep368 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 8, i64 20
  %scevgep372 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep374 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 8, i64 20
  %1655 = load i8, i8* %scevgep374, align 1
  %conv80.8 = zext i8 %1655 to i32
  %1656 = load i8, i8* %scevgep368, align 1
  %conv85.8 = zext i8 %1656 to i32
  %xor.8 = xor i32 %conv80.8, %conv85.8
  %scevgep367 = getelementptr i8, i8* %scevgep362, i64 21
  %1657 = load i8, i8* %scevgep367, align 1
  %conv90.8 = zext i8 %1657 to i32
  %xor91.8 = xor i32 %xor.8, %conv90.8
  %1658 = load i8, i8* %scevgep372, align 1
  %conv95.8 = zext i8 %1658 to i32
  %xor96.8 = xor i32 %xor91.8, %conv95.8
  %scevgep370 = getelementptr i8, i8* %scevgep368, i64 -1
  %1659 = load i8, i8* %scevgep370, align 1
  %conv102.8 = zext i8 %1659 to i32
  %xor103.8 = xor i32 %xor96.8, %conv102.8
  %1660 = load i8, i8* %scevgep362, align 1
  %conv109.8 = zext i8 %1660 to i32
  %xor110.8 = xor i32 %xor103.8, %conv109.8
  %conv111.8 = trunc i32 %xor110.8 to i8
  store i8 %conv111.8, i8* %scevgep359, align 1
  %1661 = load i8, i8* %scevgep359, align 1
  %conv120.8 = zext i8 %1661 to i32
  %1662 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8 = zext i8 %1662 to i32
  %xor124.8 = xor i32 %conv123.8, %conv120.8
  %conv125.8 = trunc i32 %xor124.8 to i8
  store i8 %conv125.8, i8* %arrayidx122.8, align 1
  %scevgep365 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep362363, i64 0, i64 -2, i64 0
  %1663 = bitcast i8* %scevgep365 to [21 x [21 x i8]]*
  %scevgep375.1 = getelementptr i8, i8* %scevgep374, i64 -2
  %1664 = load i8, i8* %scevgep375.1, align 1
  %conv80.8.1 = zext i8 %1664 to i32
  %scevgep371.1 = getelementptr i8, i8* %scevgep368, i64 -2
  %1665 = load i8, i8* %scevgep371.1, align 1
  %conv85.8.1 = zext i8 %1665 to i32
  %xor.8.1 = xor i32 %conv80.8.1, %conv85.8.1
  %scevgep367.1 = getelementptr i8, i8* %scevgep365, i64 21
  %1666 = load i8, i8* %scevgep367.1, align 1
  %conv90.8.1 = zext i8 %1666 to i32
  %xor91.8.1 = xor i32 %xor.8.1, %conv90.8.1
  %scevgep373.1 = getelementptr i8, i8* %scevgep372, i64 -2
  %1667 = load i8, i8* %scevgep373.1, align 1
  %conv95.8.1 = zext i8 %1667 to i32
  %xor96.8.1 = xor i32 %xor91.8.1, %conv95.8.1
  %scevgep369.1 = getelementptr i8, i8* %scevgep368, i64 -2
  %scevgep370.1 = getelementptr i8, i8* %scevgep369.1, i64 -1
  %1668 = load i8, i8* %scevgep370.1, align 1
  %conv102.8.1 = zext i8 %1668 to i32
  %xor103.8.1 = xor i32 %xor96.8.1, %conv102.8.1
  %1669 = load i8, i8* %scevgep365, align 1
  %conv109.8.1 = zext i8 %1669 to i32
  %xor110.8.1 = xor i32 %xor103.8.1, %conv109.8.1
  %conv111.8.1 = trunc i32 %xor110.8.1 to i8
  %scevgep361.1 = getelementptr i8, i8* %scevgep359, i64 -2
  store i8 %conv111.8.1, i8* %scevgep361.1, align 1
  %scevgep360.1 = getelementptr i8, i8* %scevgep359, i64 -2
  %1670 = load i8, i8* %scevgep360.1, align 1
  %conv120.8.1 = zext i8 %1670 to i32
  %1671 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8.1 = zext i8 %1671 to i32
  %xor124.8.1 = xor i32 %conv123.8.1, %conv120.8.1
  %conv125.8.1 = trunc i32 %xor124.8.1 to i8
  store i8 %conv125.8.1, i8* %arrayidx122.8, align 1
  %scevgep365.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1663, i64 0, i64 -2, i64 0
  %1672 = bitcast i8* %scevgep365.1 to [21 x [21 x i8]]*
  %scevgep375.2 = getelementptr i8, i8* %scevgep374, i64 -4
  %1673 = load i8, i8* %scevgep375.2, align 1
  %conv80.8.2 = zext i8 %1673 to i32
  %scevgep371.2 = getelementptr i8, i8* %scevgep368, i64 -4
  %1674 = load i8, i8* %scevgep371.2, align 1
  %conv85.8.2 = zext i8 %1674 to i32
  %xor.8.2 = xor i32 %conv80.8.2, %conv85.8.2
  %scevgep367.2 = getelementptr i8, i8* %scevgep365.1, i64 21
  %1675 = load i8, i8* %scevgep367.2, align 1
  %conv90.8.2 = zext i8 %1675 to i32
  %xor91.8.2 = xor i32 %xor.8.2, %conv90.8.2
  %scevgep373.2 = getelementptr i8, i8* %scevgep372, i64 -4
  %1676 = load i8, i8* %scevgep373.2, align 1
  %conv95.8.2 = zext i8 %1676 to i32
  %xor96.8.2 = xor i32 %xor91.8.2, %conv95.8.2
  %scevgep369.2 = getelementptr i8, i8* %scevgep368, i64 -4
  %scevgep370.2 = getelementptr i8, i8* %scevgep369.2, i64 -1
  %1677 = load i8, i8* %scevgep370.2, align 1
  %conv102.8.2 = zext i8 %1677 to i32
  %xor103.8.2 = xor i32 %xor96.8.2, %conv102.8.2
  %1678 = load i8, i8* %scevgep365.1, align 1
  %conv109.8.2 = zext i8 %1678 to i32
  %xor110.8.2 = xor i32 %xor103.8.2, %conv109.8.2
  %conv111.8.2 = trunc i32 %xor110.8.2 to i8
  %scevgep361.2 = getelementptr i8, i8* %scevgep359, i64 -4
  store i8 %conv111.8.2, i8* %scevgep361.2, align 1
  %scevgep360.2 = getelementptr i8, i8* %scevgep359, i64 -4
  %1679 = load i8, i8* %scevgep360.2, align 1
  %conv120.8.2 = zext i8 %1679 to i32
  %1680 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8.2 = zext i8 %1680 to i32
  %xor124.8.2 = xor i32 %conv123.8.2, %conv120.8.2
  %conv125.8.2 = trunc i32 %xor124.8.2 to i8
  store i8 %conv125.8.2, i8* %arrayidx122.8, align 1
  %scevgep365.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1672, i64 0, i64 -2, i64 0
  %1681 = bitcast i8* %scevgep365.2 to [21 x [21 x i8]]*
  %scevgep375.3 = getelementptr i8, i8* %scevgep374, i64 -6
  %1682 = load i8, i8* %scevgep375.3, align 1
  %conv80.8.3 = zext i8 %1682 to i32
  %scevgep371.3 = getelementptr i8, i8* %scevgep368, i64 -6
  %1683 = load i8, i8* %scevgep371.3, align 1
  %conv85.8.3 = zext i8 %1683 to i32
  %xor.8.3 = xor i32 %conv80.8.3, %conv85.8.3
  %scevgep367.3 = getelementptr i8, i8* %scevgep365.2, i64 21
  %1684 = load i8, i8* %scevgep367.3, align 1
  %conv90.8.3 = zext i8 %1684 to i32
  %xor91.8.3 = xor i32 %xor.8.3, %conv90.8.3
  %scevgep373.3 = getelementptr i8, i8* %scevgep372, i64 -6
  %1685 = load i8, i8* %scevgep373.3, align 1
  %conv95.8.3 = zext i8 %1685 to i32
  %xor96.8.3 = xor i32 %xor91.8.3, %conv95.8.3
  %scevgep369.3 = getelementptr i8, i8* %scevgep368, i64 -6
  %scevgep370.3 = getelementptr i8, i8* %scevgep369.3, i64 -1
  %1686 = load i8, i8* %scevgep370.3, align 1
  %conv102.8.3 = zext i8 %1686 to i32
  %xor103.8.3 = xor i32 %xor96.8.3, %conv102.8.3
  %1687 = load i8, i8* %scevgep365.2, align 1
  %conv109.8.3 = zext i8 %1687 to i32
  %xor110.8.3 = xor i32 %xor103.8.3, %conv109.8.3
  %conv111.8.3 = trunc i32 %xor110.8.3 to i8
  %scevgep361.3 = getelementptr i8, i8* %scevgep359, i64 -6
  store i8 %conv111.8.3, i8* %scevgep361.3, align 1
  %scevgep360.3 = getelementptr i8, i8* %scevgep359, i64 -6
  %1688 = load i8, i8* %scevgep360.3, align 1
  %conv120.8.3 = zext i8 %1688 to i32
  %1689 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8.3 = zext i8 %1689 to i32
  %xor124.8.3 = xor i32 %conv123.8.3, %conv120.8.3
  %conv125.8.3 = trunc i32 %xor124.8.3 to i8
  store i8 %conv125.8.3, i8* %arrayidx122.8, align 1
  %scevgep365.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1681, i64 0, i64 -2, i64 0
  %1690 = bitcast i8* %scevgep365.3 to [21 x [21 x i8]]*
  %scevgep375.4 = getelementptr i8, i8* %scevgep374, i64 -8
  %1691 = load i8, i8* %scevgep375.4, align 1
  %conv80.8.4 = zext i8 %1691 to i32
  %scevgep371.4 = getelementptr i8, i8* %scevgep368, i64 -8
  %1692 = load i8, i8* %scevgep371.4, align 1
  %conv85.8.4 = zext i8 %1692 to i32
  %xor.8.4 = xor i32 %conv80.8.4, %conv85.8.4
  %scevgep367.4 = getelementptr i8, i8* %scevgep365.3, i64 21
  %1693 = load i8, i8* %scevgep367.4, align 1
  %conv90.8.4 = zext i8 %1693 to i32
  %xor91.8.4 = xor i32 %xor.8.4, %conv90.8.4
  %scevgep373.4 = getelementptr i8, i8* %scevgep372, i64 -8
  %1694 = load i8, i8* %scevgep373.4, align 1
  %conv95.8.4 = zext i8 %1694 to i32
  %xor96.8.4 = xor i32 %xor91.8.4, %conv95.8.4
  %scevgep369.4 = getelementptr i8, i8* %scevgep368, i64 -8
  %scevgep370.4 = getelementptr i8, i8* %scevgep369.4, i64 -1
  %1695 = load i8, i8* %scevgep370.4, align 1
  %conv102.8.4 = zext i8 %1695 to i32
  %xor103.8.4 = xor i32 %xor96.8.4, %conv102.8.4
  %1696 = load i8, i8* %scevgep365.3, align 1
  %conv109.8.4 = zext i8 %1696 to i32
  %xor110.8.4 = xor i32 %xor103.8.4, %conv109.8.4
  %conv111.8.4 = trunc i32 %xor110.8.4 to i8
  %scevgep361.4 = getelementptr i8, i8* %scevgep359, i64 -8
  store i8 %conv111.8.4, i8* %scevgep361.4, align 1
  %scevgep360.4 = getelementptr i8, i8* %scevgep359, i64 -8
  %1697 = load i8, i8* %scevgep360.4, align 1
  %conv120.8.4 = zext i8 %1697 to i32
  %1698 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8.4 = zext i8 %1698 to i32
  %xor124.8.4 = xor i32 %conv123.8.4, %conv120.8.4
  %conv125.8.4 = trunc i32 %xor124.8.4 to i8
  store i8 %conv125.8.4, i8* %arrayidx122.8, align 1
  %scevgep365.4 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1690, i64 0, i64 -2, i64 0
  %scevgep375.5 = getelementptr i8, i8* %scevgep374, i64 -10
  %1699 = load i8, i8* %scevgep375.5, align 1
  %conv80.8.5 = zext i8 %1699 to i32
  %scevgep371.5 = getelementptr i8, i8* %scevgep368, i64 -10
  %1700 = load i8, i8* %scevgep371.5, align 1
  %conv85.8.5 = zext i8 %1700 to i32
  %xor.8.5 = xor i32 %conv80.8.5, %conv85.8.5
  %scevgep367.5 = getelementptr i8, i8* %scevgep365.4, i64 21
  %1701 = load i8, i8* %scevgep367.5, align 1
  %conv90.8.5 = zext i8 %1701 to i32
  %xor91.8.5 = xor i32 %xor.8.5, %conv90.8.5
  %scevgep373.5 = getelementptr i8, i8* %scevgep372, i64 -10
  %1702 = load i8, i8* %scevgep373.5, align 1
  %conv95.8.5 = zext i8 %1702 to i32
  %xor96.8.5 = xor i32 %xor91.8.5, %conv95.8.5
  %scevgep369.5 = getelementptr i8, i8* %scevgep368, i64 -10
  %scevgep370.5 = getelementptr i8, i8* %scevgep369.5, i64 -1
  %1703 = load i8, i8* %scevgep370.5, align 1
  %conv102.8.5 = zext i8 %1703 to i32
  %xor103.8.5 = xor i32 %xor96.8.5, %conv102.8.5
  %1704 = load i8, i8* %scevgep365.4, align 1
  %conv109.8.5 = zext i8 %1704 to i32
  %xor110.8.5 = xor i32 %xor103.8.5, %conv109.8.5
  %conv111.8.5 = trunc i32 %xor110.8.5 to i8
  %scevgep361.5 = getelementptr i8, i8* %scevgep359, i64 -10
  store i8 %conv111.8.5, i8* %scevgep361.5, align 1
  %scevgep360.5 = getelementptr i8, i8* %scevgep359, i64 -10
  %1705 = load i8, i8* %scevgep360.5, align 1
  %conv120.8.5 = zext i8 %1705 to i32
  %1706 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8.5 = zext i8 %1706 to i32
  %xor124.8.5 = xor i32 %conv123.8.5, %conv120.8.5
  %conv125.8.5 = trunc i32 %xor124.8.5 to i8
  store i8 %conv125.8.5, i8* %arrayidx122.8, align 1
  %arrayidx192.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep19.8 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 7, i64 8
  %1707 = load i8, i8* %scevgep19.8, align 1
  %conv190.8 = zext i8 %1707 to i32
  %1708 = load i8, i8* %arrayidx192.8, align 1
  %conv193.8 = zext i8 %1708 to i32
  %xor194.8 = xor i32 %conv193.8, %conv190.8
  %conv195.8 = trunc i32 %xor194.8 to i8
  store i8 %conv195.8, i8* %arrayidx192.8, align 1
  %scevgep353 = getelementptr i8, i8* %scevgep19.8, i64 -21
  %1709 = load i8, i8* %scevgep353, align 1
  %conv190.1.8 = zext i8 %1709 to i32
  %1710 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.8 = zext i8 %1710 to i32
  %xor194.1.8 = xor i32 %conv193.1.8, %conv190.1.8
  %conv195.1.8 = trunc i32 %xor194.1.8 to i8
  store i8 %conv195.1.8, i8* %arrayidx192.8, align 1
  %scevgep354 = getelementptr i8, i8* %scevgep19.8, i64 -42
  %1711 = load i8, i8* %scevgep354, align 1
  %conv190.8.1 = zext i8 %1711 to i32
  %1712 = load i8, i8* %arrayidx192.8, align 1
  %conv193.8.1 = zext i8 %1712 to i32
  %xor194.8.1 = xor i32 %conv193.8.1, %conv190.8.1
  %conv195.8.1 = trunc i32 %xor194.8.1 to i8
  store i8 %conv195.8.1, i8* %arrayidx192.8, align 1
  %scevgep353.1 = getelementptr i8, i8* %scevgep354, i64 -21
  %1713 = load i8, i8* %scevgep353.1, align 1
  %conv190.1.8.1 = zext i8 %1713 to i32
  %1714 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.8.1 = zext i8 %1714 to i32
  %xor194.1.8.1 = xor i32 %conv193.1.8.1, %conv190.1.8.1
  %conv195.1.8.1 = trunc i32 %xor194.1.8.1 to i8
  store i8 %conv195.1.8.1, i8* %arrayidx192.8, align 1
  %scevgep354.1 = getelementptr i8, i8* %scevgep354, i64 -42
  %1715 = load i8, i8* %scevgep354.1, align 1
  %conv190.8.2 = zext i8 %1715 to i32
  %1716 = load i8, i8* %arrayidx192.8, align 1
  %conv193.8.2 = zext i8 %1716 to i32
  %xor194.8.2 = xor i32 %conv193.8.2, %conv190.8.2
  %conv195.8.2 = trunc i32 %xor194.8.2 to i8
  store i8 %conv195.8.2, i8* %arrayidx192.8, align 1
  %scevgep353.2 = getelementptr i8, i8* %scevgep354.1, i64 -21
  %1717 = load i8, i8* %scevgep353.2, align 1
  %conv190.1.8.2 = zext i8 %1717 to i32
  %1718 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.8.2 = zext i8 %1718 to i32
  %xor194.1.8.2 = xor i32 %conv193.1.8.2, %conv190.1.8.2
  %conv195.1.8.2 = trunc i32 %xor194.1.8.2 to i8
  store i8 %conv195.1.8.2, i8* %arrayidx192.8, align 1
  %scevgep354.2 = getelementptr i8, i8* %scevgep354.1, i64 -42
  %1719 = load i8, i8* %scevgep354.2, align 1
  %conv190.8.3 = zext i8 %1719 to i32
  %1720 = load i8, i8* %arrayidx192.8, align 1
  %conv193.8.3 = zext i8 %1720 to i32
  %xor194.8.3 = xor i32 %conv193.8.3, %conv190.8.3
  %conv195.8.3 = trunc i32 %xor194.8.3 to i8
  store i8 %conv195.8.3, i8* %arrayidx192.8, align 1
  %scevgep353.3 = getelementptr i8, i8* %scevgep354.2, i64 -21
  %1721 = load i8, i8* %scevgep353.3, align 1
  %conv190.1.8.3 = zext i8 %1721 to i32
  %1722 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.8.3 = zext i8 %1722 to i32
  %xor194.1.8.3 = xor i32 %conv193.1.8.3, %conv190.1.8.3
  %conv195.1.8.3 = trunc i32 %xor194.1.8.3 to i8
  store i8 %conv195.1.8.3, i8* %arrayidx192.8, align 1
  %arrayidx65.9 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 9
  %arrayidx67.9 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.9, i64 0, i64 9
  %1723 = load i8, i8* %arrayidx67.9, align 1
  %arrayidx69.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %1723, i8* %arrayidx69.9, align 1
  %arrayidx122.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep336 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 9, i64 20
  %scevgep339 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 9
  %scevgep339340 = bitcast i8* %scevgep339 to [21 x [21 x i8]]*
  %scevgep345 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 9, i64 20
  %scevgep349 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep351 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 9, i64 20
  %1724 = load i8, i8* %scevgep351, align 1
  %conv80.9 = zext i8 %1724 to i32
  %1725 = load i8, i8* %scevgep345, align 1
  %conv85.9 = zext i8 %1725 to i32
  %xor.9 = xor i32 %conv80.9, %conv85.9
  %scevgep344 = getelementptr i8, i8* %scevgep339, i64 21
  %1726 = load i8, i8* %scevgep344, align 1
  %conv90.9 = zext i8 %1726 to i32
  %xor91.9 = xor i32 %xor.9, %conv90.9
  %1727 = load i8, i8* %scevgep349, align 1
  %conv95.9 = zext i8 %1727 to i32
  %xor96.9 = xor i32 %xor91.9, %conv95.9
  %scevgep347 = getelementptr i8, i8* %scevgep345, i64 -1
  %1728 = load i8, i8* %scevgep347, align 1
  %conv102.9 = zext i8 %1728 to i32
  %xor103.9 = xor i32 %xor96.9, %conv102.9
  %1729 = load i8, i8* %scevgep339, align 1
  %conv109.9 = zext i8 %1729 to i32
  %xor110.9 = xor i32 %xor103.9, %conv109.9
  %conv111.9 = trunc i32 %xor110.9 to i8
  store i8 %conv111.9, i8* %scevgep336, align 1
  %1730 = load i8, i8* %scevgep336, align 1
  %conv120.9 = zext i8 %1730 to i32
  %1731 = load i8, i8* %arrayidx122.9, align 1
  %conv123.9 = zext i8 %1731 to i32
  %xor124.9 = xor i32 %conv123.9, %conv120.9
  %conv125.9 = trunc i32 %xor124.9 to i8
  store i8 %conv125.9, i8* %arrayidx122.9, align 1
  %scevgep342 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep339340, i64 0, i64 -2, i64 0
  %1732 = bitcast i8* %scevgep342 to [21 x [21 x i8]]*
  %scevgep352.1 = getelementptr i8, i8* %scevgep351, i64 -2
  %1733 = load i8, i8* %scevgep352.1, align 1
  %conv80.9.1 = zext i8 %1733 to i32
  %scevgep348.1 = getelementptr i8, i8* %scevgep345, i64 -2
  %1734 = load i8, i8* %scevgep348.1, align 1
  %conv85.9.1 = zext i8 %1734 to i32
  %xor.9.1 = xor i32 %conv80.9.1, %conv85.9.1
  %scevgep344.1 = getelementptr i8, i8* %scevgep342, i64 21
  %1735 = load i8, i8* %scevgep344.1, align 1
  %conv90.9.1 = zext i8 %1735 to i32
  %xor91.9.1 = xor i32 %xor.9.1, %conv90.9.1
  %scevgep350.1 = getelementptr i8, i8* %scevgep349, i64 -2
  %1736 = load i8, i8* %scevgep350.1, align 1
  %conv95.9.1 = zext i8 %1736 to i32
  %xor96.9.1 = xor i32 %xor91.9.1, %conv95.9.1
  %scevgep346.1 = getelementptr i8, i8* %scevgep345, i64 -2
  %scevgep347.1 = getelementptr i8, i8* %scevgep346.1, i64 -1
  %1737 = load i8, i8* %scevgep347.1, align 1
  %conv102.9.1 = zext i8 %1737 to i32
  %xor103.9.1 = xor i32 %xor96.9.1, %conv102.9.1
  %1738 = load i8, i8* %scevgep342, align 1
  %conv109.9.1 = zext i8 %1738 to i32
  %xor110.9.1 = xor i32 %xor103.9.1, %conv109.9.1
  %conv111.9.1 = trunc i32 %xor110.9.1 to i8
  %scevgep338.1 = getelementptr i8, i8* %scevgep336, i64 -2
  store i8 %conv111.9.1, i8* %scevgep338.1, align 1
  %scevgep337.1 = getelementptr i8, i8* %scevgep336, i64 -2
  %1739 = load i8, i8* %scevgep337.1, align 1
  %conv120.9.1 = zext i8 %1739 to i32
  %1740 = load i8, i8* %arrayidx122.9, align 1
  %conv123.9.1 = zext i8 %1740 to i32
  %xor124.9.1 = xor i32 %conv123.9.1, %conv120.9.1
  %conv125.9.1 = trunc i32 %xor124.9.1 to i8
  store i8 %conv125.9.1, i8* %arrayidx122.9, align 1
  %scevgep342.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1732, i64 0, i64 -2, i64 0
  %1741 = bitcast i8* %scevgep342.1 to [21 x [21 x i8]]*
  %scevgep352.2 = getelementptr i8, i8* %scevgep351, i64 -4
  %1742 = load i8, i8* %scevgep352.2, align 1
  %conv80.9.2 = zext i8 %1742 to i32
  %scevgep348.2 = getelementptr i8, i8* %scevgep345, i64 -4
  %1743 = load i8, i8* %scevgep348.2, align 1
  %conv85.9.2 = zext i8 %1743 to i32
  %xor.9.2 = xor i32 %conv80.9.2, %conv85.9.2
  %scevgep344.2 = getelementptr i8, i8* %scevgep342.1, i64 21
  %1744 = load i8, i8* %scevgep344.2, align 1
  %conv90.9.2 = zext i8 %1744 to i32
  %xor91.9.2 = xor i32 %xor.9.2, %conv90.9.2
  %scevgep350.2 = getelementptr i8, i8* %scevgep349, i64 -4
  %1745 = load i8, i8* %scevgep350.2, align 1
  %conv95.9.2 = zext i8 %1745 to i32
  %xor96.9.2 = xor i32 %xor91.9.2, %conv95.9.2
  %scevgep346.2 = getelementptr i8, i8* %scevgep345, i64 -4
  %scevgep347.2 = getelementptr i8, i8* %scevgep346.2, i64 -1
  %1746 = load i8, i8* %scevgep347.2, align 1
  %conv102.9.2 = zext i8 %1746 to i32
  %xor103.9.2 = xor i32 %xor96.9.2, %conv102.9.2
  %1747 = load i8, i8* %scevgep342.1, align 1
  %conv109.9.2 = zext i8 %1747 to i32
  %xor110.9.2 = xor i32 %xor103.9.2, %conv109.9.2
  %conv111.9.2 = trunc i32 %xor110.9.2 to i8
  %scevgep338.2 = getelementptr i8, i8* %scevgep336, i64 -4
  store i8 %conv111.9.2, i8* %scevgep338.2, align 1
  %scevgep337.2 = getelementptr i8, i8* %scevgep336, i64 -4
  %1748 = load i8, i8* %scevgep337.2, align 1
  %conv120.9.2 = zext i8 %1748 to i32
  %1749 = load i8, i8* %arrayidx122.9, align 1
  %conv123.9.2 = zext i8 %1749 to i32
  %xor124.9.2 = xor i32 %conv123.9.2, %conv120.9.2
  %conv125.9.2 = trunc i32 %xor124.9.2 to i8
  store i8 %conv125.9.2, i8* %arrayidx122.9, align 1
  %scevgep342.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1741, i64 0, i64 -2, i64 0
  %1750 = bitcast i8* %scevgep342.2 to [21 x [21 x i8]]*
  %scevgep352.3 = getelementptr i8, i8* %scevgep351, i64 -6
  %1751 = load i8, i8* %scevgep352.3, align 1
  %conv80.9.3 = zext i8 %1751 to i32
  %scevgep348.3 = getelementptr i8, i8* %scevgep345, i64 -6
  %1752 = load i8, i8* %scevgep348.3, align 1
  %conv85.9.3 = zext i8 %1752 to i32
  %xor.9.3 = xor i32 %conv80.9.3, %conv85.9.3
  %scevgep344.3 = getelementptr i8, i8* %scevgep342.2, i64 21
  %1753 = load i8, i8* %scevgep344.3, align 1
  %conv90.9.3 = zext i8 %1753 to i32
  %xor91.9.3 = xor i32 %xor.9.3, %conv90.9.3
  %scevgep350.3 = getelementptr i8, i8* %scevgep349, i64 -6
  %1754 = load i8, i8* %scevgep350.3, align 1
  %conv95.9.3 = zext i8 %1754 to i32
  %xor96.9.3 = xor i32 %xor91.9.3, %conv95.9.3
  %scevgep346.3 = getelementptr i8, i8* %scevgep345, i64 -6
  %scevgep347.3 = getelementptr i8, i8* %scevgep346.3, i64 -1
  %1755 = load i8, i8* %scevgep347.3, align 1
  %conv102.9.3 = zext i8 %1755 to i32
  %xor103.9.3 = xor i32 %xor96.9.3, %conv102.9.3
  %1756 = load i8, i8* %scevgep342.2, align 1
  %conv109.9.3 = zext i8 %1756 to i32
  %xor110.9.3 = xor i32 %xor103.9.3, %conv109.9.3
  %conv111.9.3 = trunc i32 %xor110.9.3 to i8
  %scevgep338.3 = getelementptr i8, i8* %scevgep336, i64 -6
  store i8 %conv111.9.3, i8* %scevgep338.3, align 1
  %scevgep337.3 = getelementptr i8, i8* %scevgep336, i64 -6
  %1757 = load i8, i8* %scevgep337.3, align 1
  %conv120.9.3 = zext i8 %1757 to i32
  %1758 = load i8, i8* %arrayidx122.9, align 1
  %conv123.9.3 = zext i8 %1758 to i32
  %xor124.9.3 = xor i32 %conv123.9.3, %conv120.9.3
  %conv125.9.3 = trunc i32 %xor124.9.3 to i8
  store i8 %conv125.9.3, i8* %arrayidx122.9, align 1
  %scevgep342.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1750, i64 0, i64 -2, i64 0
  %scevgep352.4 = getelementptr i8, i8* %scevgep351, i64 -8
  %1759 = load i8, i8* %scevgep352.4, align 1
  %conv80.9.4 = zext i8 %1759 to i32
  %scevgep348.4 = getelementptr i8, i8* %scevgep345, i64 -8
  %1760 = load i8, i8* %scevgep348.4, align 1
  %conv85.9.4 = zext i8 %1760 to i32
  %xor.9.4 = xor i32 %conv80.9.4, %conv85.9.4
  %scevgep344.4 = getelementptr i8, i8* %scevgep342.3, i64 21
  %1761 = load i8, i8* %scevgep344.4, align 1
  %conv90.9.4 = zext i8 %1761 to i32
  %xor91.9.4 = xor i32 %xor.9.4, %conv90.9.4
  %scevgep350.4 = getelementptr i8, i8* %scevgep349, i64 -8
  %1762 = load i8, i8* %scevgep350.4, align 1
  %conv95.9.4 = zext i8 %1762 to i32
  %xor96.9.4 = xor i32 %xor91.9.4, %conv95.9.4
  %scevgep346.4 = getelementptr i8, i8* %scevgep345, i64 -8
  %scevgep347.4 = getelementptr i8, i8* %scevgep346.4, i64 -1
  %1763 = load i8, i8* %scevgep347.4, align 1
  %conv102.9.4 = zext i8 %1763 to i32
  %xor103.9.4 = xor i32 %xor96.9.4, %conv102.9.4
  %1764 = load i8, i8* %scevgep342.3, align 1
  %conv109.9.4 = zext i8 %1764 to i32
  %xor110.9.4 = xor i32 %xor103.9.4, %conv109.9.4
  %conv111.9.4 = trunc i32 %xor110.9.4 to i8
  %scevgep338.4 = getelementptr i8, i8* %scevgep336, i64 -8
  store i8 %conv111.9.4, i8* %scevgep338.4, align 1
  %scevgep337.4 = getelementptr i8, i8* %scevgep336, i64 -8
  %1765 = load i8, i8* %scevgep337.4, align 1
  %conv120.9.4 = zext i8 %1765 to i32
  %1766 = load i8, i8* %arrayidx122.9, align 1
  %conv123.9.4 = zext i8 %1766 to i32
  %xor124.9.4 = xor i32 %conv123.9.4, %conv120.9.4
  %conv125.9.4 = trunc i32 %xor124.9.4 to i8
  store i8 %conv125.9.4, i8* %arrayidx122.9, align 1
  %arrayidx132.9 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 9
  %arrayidx135.9 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.9, i64 0, i64 10
  %1767 = load i8, i8* %arrayidx135.9, align 1
  %conv136.9 = zext i8 %1767 to i32
  %arrayidx138.9 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 9
  %arrayidx141.9 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.9, i64 0, i64 10
  %1768 = load i8, i8* %arrayidx141.9, align 1
  %conv142.9 = zext i8 %1768 to i32
  %xor143.9 = xor i32 %conv136.9, %conv142.9
  %arrayidx146.9 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 10
  %arrayidx148.9 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.9, i64 0, i64 9
  %1769 = load i8, i8* %arrayidx148.9, align 1
  %conv149.9 = zext i8 %1769 to i32
  %xor150.9 = xor i32 %xor143.9, %conv149.9
  %conv151.9 = trunc i32 %xor150.9 to i8
  %arrayidx153.9 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 9
  %arrayidx156.9 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.9, i64 0, i64 10
  store i8 %conv151.9, i8* %arrayidx156.9, align 1
  %arrayidx158.9 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 9
  %arrayidx161.9 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.9, i64 0, i64 10
  %1770 = load i8, i8* %arrayidx161.9, align 1
  %conv162.9 = zext i8 %1770 to i32
  %arrayidx164.9 = getelementptr inbounds i8, i8* %c, i64 9
  %1771 = load i8, i8* %arrayidx164.9, align 1
  %conv165.9 = zext i8 %1771 to i32
  %xor166.9 = xor i32 %conv165.9, %conv162.9
  %conv167.9 = trunc i32 %xor166.9 to i8
  store i8 %conv167.9, i8* %arrayidx164.9, align 1
  %arrayidx173.9 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 9
  %1772 = load i8, i8* %arrayidx173.9, align 1
  %conv174.9 = zext i8 %1772 to i32
  %arrayidx176.9 = getelementptr inbounds i8, i8* %c, i64 9
  %1773 = load i8, i8* %arrayidx176.9, align 1
  %conv177.9 = zext i8 %1773 to i32
  %xor178.9 = xor i32 %conv177.9, %conv174.9
  %conv179.9 = trunc i32 %xor178.9 to i8
  store i8 %conv179.9, i8* %arrayidx176.9, align 1
  %arrayidx65.10 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 10
  %arrayidx67.10 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.10, i64 0, i64 10
  %1774 = load i8, i8* %arrayidx67.10, align 1
  %arrayidx69.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %1774, i8* %arrayidx69.10, align 1
  %arrayidx122.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep316 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 10, i64 20
  %scevgep319 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 10
  %scevgep319320 = bitcast i8* %scevgep319 to [21 x [21 x i8]]*
  %scevgep325 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 10, i64 20
  %scevgep329 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep331 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 10, i64 20
  %1775 = load i8, i8* %scevgep331, align 1
  %conv80.10 = zext i8 %1775 to i32
  %1776 = load i8, i8* %scevgep325, align 1
  %conv85.10 = zext i8 %1776 to i32
  %xor.10 = xor i32 %conv80.10, %conv85.10
  %scevgep324 = getelementptr i8, i8* %scevgep319, i64 21
  %1777 = load i8, i8* %scevgep324, align 1
  %conv90.10 = zext i8 %1777 to i32
  %xor91.10 = xor i32 %xor.10, %conv90.10
  %1778 = load i8, i8* %scevgep329, align 1
  %conv95.10 = zext i8 %1778 to i32
  %xor96.10 = xor i32 %xor91.10, %conv95.10
  %scevgep327 = getelementptr i8, i8* %scevgep325, i64 -1
  %1779 = load i8, i8* %scevgep327, align 1
  %conv102.10 = zext i8 %1779 to i32
  %xor103.10 = xor i32 %xor96.10, %conv102.10
  %1780 = load i8, i8* %scevgep319, align 1
  %conv109.10 = zext i8 %1780 to i32
  %xor110.10 = xor i32 %xor103.10, %conv109.10
  %conv111.10 = trunc i32 %xor110.10 to i8
  store i8 %conv111.10, i8* %scevgep316, align 1
  %1781 = load i8, i8* %scevgep316, align 1
  %conv120.10 = zext i8 %1781 to i32
  %1782 = load i8, i8* %arrayidx122.10, align 1
  %conv123.10 = zext i8 %1782 to i32
  %xor124.10 = xor i32 %conv123.10, %conv120.10
  %conv125.10 = trunc i32 %xor124.10 to i8
  store i8 %conv125.10, i8* %arrayidx122.10, align 1
  %scevgep322 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep319320, i64 0, i64 -2, i64 0
  %1783 = bitcast i8* %scevgep322 to [21 x [21 x i8]]*
  %scevgep332.1 = getelementptr i8, i8* %scevgep331, i64 -2
  %1784 = load i8, i8* %scevgep332.1, align 1
  %conv80.10.1 = zext i8 %1784 to i32
  %scevgep328.1 = getelementptr i8, i8* %scevgep325, i64 -2
  %1785 = load i8, i8* %scevgep328.1, align 1
  %conv85.10.1 = zext i8 %1785 to i32
  %xor.10.1 = xor i32 %conv80.10.1, %conv85.10.1
  %scevgep324.1 = getelementptr i8, i8* %scevgep322, i64 21
  %1786 = load i8, i8* %scevgep324.1, align 1
  %conv90.10.1 = zext i8 %1786 to i32
  %xor91.10.1 = xor i32 %xor.10.1, %conv90.10.1
  %scevgep330.1 = getelementptr i8, i8* %scevgep329, i64 -2
  %1787 = load i8, i8* %scevgep330.1, align 1
  %conv95.10.1 = zext i8 %1787 to i32
  %xor96.10.1 = xor i32 %xor91.10.1, %conv95.10.1
  %scevgep326.1 = getelementptr i8, i8* %scevgep325, i64 -2
  %scevgep327.1 = getelementptr i8, i8* %scevgep326.1, i64 -1
  %1788 = load i8, i8* %scevgep327.1, align 1
  %conv102.10.1 = zext i8 %1788 to i32
  %xor103.10.1 = xor i32 %xor96.10.1, %conv102.10.1
  %1789 = load i8, i8* %scevgep322, align 1
  %conv109.10.1 = zext i8 %1789 to i32
  %xor110.10.1 = xor i32 %xor103.10.1, %conv109.10.1
  %conv111.10.1 = trunc i32 %xor110.10.1 to i8
  %scevgep318.1 = getelementptr i8, i8* %scevgep316, i64 -2
  store i8 %conv111.10.1, i8* %scevgep318.1, align 1
  %scevgep317.1 = getelementptr i8, i8* %scevgep316, i64 -2
  %1790 = load i8, i8* %scevgep317.1, align 1
  %conv120.10.1 = zext i8 %1790 to i32
  %1791 = load i8, i8* %arrayidx122.10, align 1
  %conv123.10.1 = zext i8 %1791 to i32
  %xor124.10.1 = xor i32 %conv123.10.1, %conv120.10.1
  %conv125.10.1 = trunc i32 %xor124.10.1 to i8
  store i8 %conv125.10.1, i8* %arrayidx122.10, align 1
  %scevgep322.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1783, i64 0, i64 -2, i64 0
  %1792 = bitcast i8* %scevgep322.1 to [21 x [21 x i8]]*
  %scevgep332.2 = getelementptr i8, i8* %scevgep331, i64 -4
  %1793 = load i8, i8* %scevgep332.2, align 1
  %conv80.10.2 = zext i8 %1793 to i32
  %scevgep328.2 = getelementptr i8, i8* %scevgep325, i64 -4
  %1794 = load i8, i8* %scevgep328.2, align 1
  %conv85.10.2 = zext i8 %1794 to i32
  %xor.10.2 = xor i32 %conv80.10.2, %conv85.10.2
  %scevgep324.2 = getelementptr i8, i8* %scevgep322.1, i64 21
  %1795 = load i8, i8* %scevgep324.2, align 1
  %conv90.10.2 = zext i8 %1795 to i32
  %xor91.10.2 = xor i32 %xor.10.2, %conv90.10.2
  %scevgep330.2 = getelementptr i8, i8* %scevgep329, i64 -4
  %1796 = load i8, i8* %scevgep330.2, align 1
  %conv95.10.2 = zext i8 %1796 to i32
  %xor96.10.2 = xor i32 %xor91.10.2, %conv95.10.2
  %scevgep326.2 = getelementptr i8, i8* %scevgep325, i64 -4
  %scevgep327.2 = getelementptr i8, i8* %scevgep326.2, i64 -1
  %1797 = load i8, i8* %scevgep327.2, align 1
  %conv102.10.2 = zext i8 %1797 to i32
  %xor103.10.2 = xor i32 %xor96.10.2, %conv102.10.2
  %1798 = load i8, i8* %scevgep322.1, align 1
  %conv109.10.2 = zext i8 %1798 to i32
  %xor110.10.2 = xor i32 %xor103.10.2, %conv109.10.2
  %conv111.10.2 = trunc i32 %xor110.10.2 to i8
  %scevgep318.2 = getelementptr i8, i8* %scevgep316, i64 -4
  store i8 %conv111.10.2, i8* %scevgep318.2, align 1
  %scevgep317.2 = getelementptr i8, i8* %scevgep316, i64 -4
  %1799 = load i8, i8* %scevgep317.2, align 1
  %conv120.10.2 = zext i8 %1799 to i32
  %1800 = load i8, i8* %arrayidx122.10, align 1
  %conv123.10.2 = zext i8 %1800 to i32
  %xor124.10.2 = xor i32 %conv123.10.2, %conv120.10.2
  %conv125.10.2 = trunc i32 %xor124.10.2 to i8
  store i8 %conv125.10.2, i8* %arrayidx122.10, align 1
  %scevgep322.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1792, i64 0, i64 -2, i64 0
  %1801 = bitcast i8* %scevgep322.2 to [21 x [21 x i8]]*
  %scevgep332.3 = getelementptr i8, i8* %scevgep331, i64 -6
  %1802 = load i8, i8* %scevgep332.3, align 1
  %conv80.10.3 = zext i8 %1802 to i32
  %scevgep328.3 = getelementptr i8, i8* %scevgep325, i64 -6
  %1803 = load i8, i8* %scevgep328.3, align 1
  %conv85.10.3 = zext i8 %1803 to i32
  %xor.10.3 = xor i32 %conv80.10.3, %conv85.10.3
  %scevgep324.3 = getelementptr i8, i8* %scevgep322.2, i64 21
  %1804 = load i8, i8* %scevgep324.3, align 1
  %conv90.10.3 = zext i8 %1804 to i32
  %xor91.10.3 = xor i32 %xor.10.3, %conv90.10.3
  %scevgep330.3 = getelementptr i8, i8* %scevgep329, i64 -6
  %1805 = load i8, i8* %scevgep330.3, align 1
  %conv95.10.3 = zext i8 %1805 to i32
  %xor96.10.3 = xor i32 %xor91.10.3, %conv95.10.3
  %scevgep326.3 = getelementptr i8, i8* %scevgep325, i64 -6
  %scevgep327.3 = getelementptr i8, i8* %scevgep326.3, i64 -1
  %1806 = load i8, i8* %scevgep327.3, align 1
  %conv102.10.3 = zext i8 %1806 to i32
  %xor103.10.3 = xor i32 %xor96.10.3, %conv102.10.3
  %1807 = load i8, i8* %scevgep322.2, align 1
  %conv109.10.3 = zext i8 %1807 to i32
  %xor110.10.3 = xor i32 %xor103.10.3, %conv109.10.3
  %conv111.10.3 = trunc i32 %xor110.10.3 to i8
  %scevgep318.3 = getelementptr i8, i8* %scevgep316, i64 -6
  store i8 %conv111.10.3, i8* %scevgep318.3, align 1
  %scevgep317.3 = getelementptr i8, i8* %scevgep316, i64 -6
  %1808 = load i8, i8* %scevgep317.3, align 1
  %conv120.10.3 = zext i8 %1808 to i32
  %1809 = load i8, i8* %arrayidx122.10, align 1
  %conv123.10.3 = zext i8 %1809 to i32
  %xor124.10.3 = xor i32 %conv123.10.3, %conv120.10.3
  %conv125.10.3 = trunc i32 %xor124.10.3 to i8
  store i8 %conv125.10.3, i8* %arrayidx122.10, align 1
  %scevgep322.3 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1801, i64 0, i64 -2, i64 0
  %scevgep332.4 = getelementptr i8, i8* %scevgep331, i64 -8
  %1810 = load i8, i8* %scevgep332.4, align 1
  %conv80.10.4 = zext i8 %1810 to i32
  %scevgep328.4 = getelementptr i8, i8* %scevgep325, i64 -8
  %1811 = load i8, i8* %scevgep328.4, align 1
  %conv85.10.4 = zext i8 %1811 to i32
  %xor.10.4 = xor i32 %conv80.10.4, %conv85.10.4
  %scevgep324.4 = getelementptr i8, i8* %scevgep322.3, i64 21
  %1812 = load i8, i8* %scevgep324.4, align 1
  %conv90.10.4 = zext i8 %1812 to i32
  %xor91.10.4 = xor i32 %xor.10.4, %conv90.10.4
  %scevgep330.4 = getelementptr i8, i8* %scevgep329, i64 -8
  %1813 = load i8, i8* %scevgep330.4, align 1
  %conv95.10.4 = zext i8 %1813 to i32
  %xor96.10.4 = xor i32 %xor91.10.4, %conv95.10.4
  %scevgep326.4 = getelementptr i8, i8* %scevgep325, i64 -8
  %scevgep327.4 = getelementptr i8, i8* %scevgep326.4, i64 -1
  %1814 = load i8, i8* %scevgep327.4, align 1
  %conv102.10.4 = zext i8 %1814 to i32
  %xor103.10.4 = xor i32 %xor96.10.4, %conv102.10.4
  %1815 = load i8, i8* %scevgep322.3, align 1
  %conv109.10.4 = zext i8 %1815 to i32
  %xor110.10.4 = xor i32 %xor103.10.4, %conv109.10.4
  %conv111.10.4 = trunc i32 %xor110.10.4 to i8
  %scevgep318.4 = getelementptr i8, i8* %scevgep316, i64 -8
  store i8 %conv111.10.4, i8* %scevgep318.4, align 1
  %scevgep317.4 = getelementptr i8, i8* %scevgep316, i64 -8
  %1816 = load i8, i8* %scevgep317.4, align 1
  %conv120.10.4 = zext i8 %1816 to i32
  %1817 = load i8, i8* %arrayidx122.10, align 1
  %conv123.10.4 = zext i8 %1817 to i32
  %xor124.10.4 = xor i32 %conv123.10.4, %conv120.10.4
  %conv125.10.4 = trunc i32 %xor124.10.4 to i8
  store i8 %conv125.10.4, i8* %arrayidx122.10, align 1
  %arrayidx192.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep19.10 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 9, i64 10
  %1818 = load i8, i8* %scevgep19.10, align 1
  %conv190.10 = zext i8 %1818 to i32
  %1819 = load i8, i8* %arrayidx192.10, align 1
  %conv193.10 = zext i8 %1819 to i32
  %xor194.10 = xor i32 %conv193.10, %conv190.10
  %conv195.10 = trunc i32 %xor194.10 to i8
  store i8 %conv195.10, i8* %arrayidx192.10, align 1
  %scevgep310 = getelementptr i8, i8* %scevgep19.10, i64 -21
  %1820 = load i8, i8* %scevgep310, align 1
  %conv190.1.10 = zext i8 %1820 to i32
  %1821 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.10 = zext i8 %1821 to i32
  %xor194.1.10 = xor i32 %conv193.1.10, %conv190.1.10
  %conv195.1.10 = trunc i32 %xor194.1.10 to i8
  store i8 %conv195.1.10, i8* %arrayidx192.10, align 1
  %scevgep311 = getelementptr i8, i8* %scevgep19.10, i64 -42
  %1822 = load i8, i8* %scevgep311, align 1
  %conv190.10.1 = zext i8 %1822 to i32
  %1823 = load i8, i8* %arrayidx192.10, align 1
  %conv193.10.1 = zext i8 %1823 to i32
  %xor194.10.1 = xor i32 %conv193.10.1, %conv190.10.1
  %conv195.10.1 = trunc i32 %xor194.10.1 to i8
  store i8 %conv195.10.1, i8* %arrayidx192.10, align 1
  %scevgep310.1 = getelementptr i8, i8* %scevgep311, i64 -21
  %1824 = load i8, i8* %scevgep310.1, align 1
  %conv190.1.10.1 = zext i8 %1824 to i32
  %1825 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.10.1 = zext i8 %1825 to i32
  %xor194.1.10.1 = xor i32 %conv193.1.10.1, %conv190.1.10.1
  %conv195.1.10.1 = trunc i32 %xor194.1.10.1 to i8
  store i8 %conv195.1.10.1, i8* %arrayidx192.10, align 1
  %scevgep311.1 = getelementptr i8, i8* %scevgep311, i64 -42
  %1826 = load i8, i8* %scevgep311.1, align 1
  %conv190.10.2 = zext i8 %1826 to i32
  %1827 = load i8, i8* %arrayidx192.10, align 1
  %conv193.10.2 = zext i8 %1827 to i32
  %xor194.10.2 = xor i32 %conv193.10.2, %conv190.10.2
  %conv195.10.2 = trunc i32 %xor194.10.2 to i8
  store i8 %conv195.10.2, i8* %arrayidx192.10, align 1
  %scevgep310.2 = getelementptr i8, i8* %scevgep311.1, i64 -21
  %1828 = load i8, i8* %scevgep310.2, align 1
  %conv190.1.10.2 = zext i8 %1828 to i32
  %1829 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.10.2 = zext i8 %1829 to i32
  %xor194.1.10.2 = xor i32 %conv193.1.10.2, %conv190.1.10.2
  %conv195.1.10.2 = trunc i32 %xor194.1.10.2 to i8
  store i8 %conv195.1.10.2, i8* %arrayidx192.10, align 1
  %scevgep311.2 = getelementptr i8, i8* %scevgep311.1, i64 -42
  %1830 = load i8, i8* %scevgep311.2, align 1
  %conv190.10.3 = zext i8 %1830 to i32
  %1831 = load i8, i8* %arrayidx192.10, align 1
  %conv193.10.3 = zext i8 %1831 to i32
  %xor194.10.3 = xor i32 %conv193.10.3, %conv190.10.3
  %conv195.10.3 = trunc i32 %xor194.10.3 to i8
  store i8 %conv195.10.3, i8* %arrayidx192.10, align 1
  %scevgep310.3 = getelementptr i8, i8* %scevgep311.2, i64 -21
  %1832 = load i8, i8* %scevgep310.3, align 1
  %conv190.1.10.3 = zext i8 %1832 to i32
  %1833 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.10.3 = zext i8 %1833 to i32
  %xor194.1.10.3 = xor i32 %conv193.1.10.3, %conv190.1.10.3
  %conv195.1.10.3 = trunc i32 %xor194.1.10.3 to i8
  store i8 %conv195.1.10.3, i8* %arrayidx192.10, align 1
  %scevgep311.3 = getelementptr i8, i8* %scevgep311.2, i64 -42
  %1834 = load i8, i8* %scevgep311.3, align 1
  %conv190.10.4 = zext i8 %1834 to i32
  %1835 = load i8, i8* %arrayidx192.10, align 1
  %conv193.10.4 = zext i8 %1835 to i32
  %xor194.10.4 = xor i32 %conv193.10.4, %conv190.10.4
  %conv195.10.4 = trunc i32 %xor194.10.4 to i8
  store i8 %conv195.10.4, i8* %arrayidx192.10, align 1
  %scevgep310.4 = getelementptr i8, i8* %scevgep311.3, i64 -21
  %1836 = load i8, i8* %scevgep310.4, align 1
  %conv190.1.10.4 = zext i8 %1836 to i32
  %1837 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.10.4 = zext i8 %1837 to i32
  %xor194.1.10.4 = xor i32 %conv193.1.10.4, %conv190.1.10.4
  %conv195.1.10.4 = trunc i32 %xor194.1.10.4 to i8
  store i8 %conv195.1.10.4, i8* %arrayidx192.10, align 1
  %arrayidx65.11 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 11
  %arrayidx67.11 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.11, i64 0, i64 11
  %1838 = load i8, i8* %arrayidx67.11, align 1
  %arrayidx69.11 = getelementptr inbounds i8, i8* %c, i64 11
  store i8 %1838, i8* %arrayidx69.11, align 1
  %arrayidx122.11 = getelementptr inbounds i8, i8* %c, i64 11
  %scevgep293 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 11, i64 20
  %scevgep296 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 11
  %scevgep296297 = bitcast i8* %scevgep296 to [21 x [21 x i8]]*
  %scevgep302 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 11, i64 20
  %scevgep306 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep308 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 11, i64 20
  %1839 = load i8, i8* %scevgep308, align 1
  %conv80.11 = zext i8 %1839 to i32
  %1840 = load i8, i8* %scevgep302, align 1
  %conv85.11 = zext i8 %1840 to i32
  %xor.11 = xor i32 %conv80.11, %conv85.11
  %scevgep301 = getelementptr i8, i8* %scevgep296, i64 21
  %1841 = load i8, i8* %scevgep301, align 1
  %conv90.11 = zext i8 %1841 to i32
  %xor91.11 = xor i32 %xor.11, %conv90.11
  %1842 = load i8, i8* %scevgep306, align 1
  %conv95.11 = zext i8 %1842 to i32
  %xor96.11 = xor i32 %xor91.11, %conv95.11
  %scevgep304 = getelementptr i8, i8* %scevgep302, i64 -1
  %1843 = load i8, i8* %scevgep304, align 1
  %conv102.11 = zext i8 %1843 to i32
  %xor103.11 = xor i32 %xor96.11, %conv102.11
  %1844 = load i8, i8* %scevgep296, align 1
  %conv109.11 = zext i8 %1844 to i32
  %xor110.11 = xor i32 %xor103.11, %conv109.11
  %conv111.11 = trunc i32 %xor110.11 to i8
  store i8 %conv111.11, i8* %scevgep293, align 1
  %1845 = load i8, i8* %scevgep293, align 1
  %conv120.11 = zext i8 %1845 to i32
  %1846 = load i8, i8* %arrayidx122.11, align 1
  %conv123.11 = zext i8 %1846 to i32
  %xor124.11 = xor i32 %conv123.11, %conv120.11
  %conv125.11 = trunc i32 %xor124.11 to i8
  store i8 %conv125.11, i8* %arrayidx122.11, align 1
  %scevgep299 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep296297, i64 0, i64 -2, i64 0
  %1847 = bitcast i8* %scevgep299 to [21 x [21 x i8]]*
  %scevgep309.1 = getelementptr i8, i8* %scevgep308, i64 -2
  %1848 = load i8, i8* %scevgep309.1, align 1
  %conv80.11.1 = zext i8 %1848 to i32
  %scevgep305.1 = getelementptr i8, i8* %scevgep302, i64 -2
  %1849 = load i8, i8* %scevgep305.1, align 1
  %conv85.11.1 = zext i8 %1849 to i32
  %xor.11.1 = xor i32 %conv80.11.1, %conv85.11.1
  %scevgep301.1 = getelementptr i8, i8* %scevgep299, i64 21
  %1850 = load i8, i8* %scevgep301.1, align 1
  %conv90.11.1 = zext i8 %1850 to i32
  %xor91.11.1 = xor i32 %xor.11.1, %conv90.11.1
  %scevgep307.1 = getelementptr i8, i8* %scevgep306, i64 -2
  %1851 = load i8, i8* %scevgep307.1, align 1
  %conv95.11.1 = zext i8 %1851 to i32
  %xor96.11.1 = xor i32 %xor91.11.1, %conv95.11.1
  %scevgep303.1 = getelementptr i8, i8* %scevgep302, i64 -2
  %scevgep304.1 = getelementptr i8, i8* %scevgep303.1, i64 -1
  %1852 = load i8, i8* %scevgep304.1, align 1
  %conv102.11.1 = zext i8 %1852 to i32
  %xor103.11.1 = xor i32 %xor96.11.1, %conv102.11.1
  %1853 = load i8, i8* %scevgep299, align 1
  %conv109.11.1 = zext i8 %1853 to i32
  %xor110.11.1 = xor i32 %xor103.11.1, %conv109.11.1
  %conv111.11.1 = trunc i32 %xor110.11.1 to i8
  %scevgep295.1 = getelementptr i8, i8* %scevgep293, i64 -2
  store i8 %conv111.11.1, i8* %scevgep295.1, align 1
  %scevgep294.1 = getelementptr i8, i8* %scevgep293, i64 -2
  %1854 = load i8, i8* %scevgep294.1, align 1
  %conv120.11.1 = zext i8 %1854 to i32
  %1855 = load i8, i8* %arrayidx122.11, align 1
  %conv123.11.1 = zext i8 %1855 to i32
  %xor124.11.1 = xor i32 %conv123.11.1, %conv120.11.1
  %conv125.11.1 = trunc i32 %xor124.11.1 to i8
  store i8 %conv125.11.1, i8* %arrayidx122.11, align 1
  %scevgep299.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1847, i64 0, i64 -2, i64 0
  %1856 = bitcast i8* %scevgep299.1 to [21 x [21 x i8]]*
  %scevgep309.2 = getelementptr i8, i8* %scevgep308, i64 -4
  %1857 = load i8, i8* %scevgep309.2, align 1
  %conv80.11.2 = zext i8 %1857 to i32
  %scevgep305.2 = getelementptr i8, i8* %scevgep302, i64 -4
  %1858 = load i8, i8* %scevgep305.2, align 1
  %conv85.11.2 = zext i8 %1858 to i32
  %xor.11.2 = xor i32 %conv80.11.2, %conv85.11.2
  %scevgep301.2 = getelementptr i8, i8* %scevgep299.1, i64 21
  %1859 = load i8, i8* %scevgep301.2, align 1
  %conv90.11.2 = zext i8 %1859 to i32
  %xor91.11.2 = xor i32 %xor.11.2, %conv90.11.2
  %scevgep307.2 = getelementptr i8, i8* %scevgep306, i64 -4
  %1860 = load i8, i8* %scevgep307.2, align 1
  %conv95.11.2 = zext i8 %1860 to i32
  %xor96.11.2 = xor i32 %xor91.11.2, %conv95.11.2
  %scevgep303.2 = getelementptr i8, i8* %scevgep302, i64 -4
  %scevgep304.2 = getelementptr i8, i8* %scevgep303.2, i64 -1
  %1861 = load i8, i8* %scevgep304.2, align 1
  %conv102.11.2 = zext i8 %1861 to i32
  %xor103.11.2 = xor i32 %xor96.11.2, %conv102.11.2
  %1862 = load i8, i8* %scevgep299.1, align 1
  %conv109.11.2 = zext i8 %1862 to i32
  %xor110.11.2 = xor i32 %xor103.11.2, %conv109.11.2
  %conv111.11.2 = trunc i32 %xor110.11.2 to i8
  %scevgep295.2 = getelementptr i8, i8* %scevgep293, i64 -4
  store i8 %conv111.11.2, i8* %scevgep295.2, align 1
  %scevgep294.2 = getelementptr i8, i8* %scevgep293, i64 -4
  %1863 = load i8, i8* %scevgep294.2, align 1
  %conv120.11.2 = zext i8 %1863 to i32
  %1864 = load i8, i8* %arrayidx122.11, align 1
  %conv123.11.2 = zext i8 %1864 to i32
  %xor124.11.2 = xor i32 %conv123.11.2, %conv120.11.2
  %conv125.11.2 = trunc i32 %xor124.11.2 to i8
  store i8 %conv125.11.2, i8* %arrayidx122.11, align 1
  %scevgep299.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1856, i64 0, i64 -2, i64 0
  %scevgep309.3 = getelementptr i8, i8* %scevgep308, i64 -6
  %1865 = load i8, i8* %scevgep309.3, align 1
  %conv80.11.3 = zext i8 %1865 to i32
  %scevgep305.3 = getelementptr i8, i8* %scevgep302, i64 -6
  %1866 = load i8, i8* %scevgep305.3, align 1
  %conv85.11.3 = zext i8 %1866 to i32
  %xor.11.3 = xor i32 %conv80.11.3, %conv85.11.3
  %scevgep301.3 = getelementptr i8, i8* %scevgep299.2, i64 21
  %1867 = load i8, i8* %scevgep301.3, align 1
  %conv90.11.3 = zext i8 %1867 to i32
  %xor91.11.3 = xor i32 %xor.11.3, %conv90.11.3
  %scevgep307.3 = getelementptr i8, i8* %scevgep306, i64 -6
  %1868 = load i8, i8* %scevgep307.3, align 1
  %conv95.11.3 = zext i8 %1868 to i32
  %xor96.11.3 = xor i32 %xor91.11.3, %conv95.11.3
  %scevgep303.3 = getelementptr i8, i8* %scevgep302, i64 -6
  %scevgep304.3 = getelementptr i8, i8* %scevgep303.3, i64 -1
  %1869 = load i8, i8* %scevgep304.3, align 1
  %conv102.11.3 = zext i8 %1869 to i32
  %xor103.11.3 = xor i32 %xor96.11.3, %conv102.11.3
  %1870 = load i8, i8* %scevgep299.2, align 1
  %conv109.11.3 = zext i8 %1870 to i32
  %xor110.11.3 = xor i32 %xor103.11.3, %conv109.11.3
  %conv111.11.3 = trunc i32 %xor110.11.3 to i8
  %scevgep295.3 = getelementptr i8, i8* %scevgep293, i64 -6
  store i8 %conv111.11.3, i8* %scevgep295.3, align 1
  %scevgep294.3 = getelementptr i8, i8* %scevgep293, i64 -6
  %1871 = load i8, i8* %scevgep294.3, align 1
  %conv120.11.3 = zext i8 %1871 to i32
  %1872 = load i8, i8* %arrayidx122.11, align 1
  %conv123.11.3 = zext i8 %1872 to i32
  %xor124.11.3 = xor i32 %conv123.11.3, %conv120.11.3
  %conv125.11.3 = trunc i32 %xor124.11.3 to i8
  store i8 %conv125.11.3, i8* %arrayidx122.11, align 1
  %arrayidx132.11 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 11
  %arrayidx135.11 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.11, i64 0, i64 12
  %1873 = load i8, i8* %arrayidx135.11, align 1
  %conv136.11 = zext i8 %1873 to i32
  %arrayidx138.11 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 11
  %arrayidx141.11 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.11, i64 0, i64 12
  %1874 = load i8, i8* %arrayidx141.11, align 1
  %conv142.11 = zext i8 %1874 to i32
  %xor143.11 = xor i32 %conv136.11, %conv142.11
  %arrayidx146.11 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 12
  %arrayidx148.11 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.11, i64 0, i64 11
  %1875 = load i8, i8* %arrayidx148.11, align 1
  %conv149.11 = zext i8 %1875 to i32
  %xor150.11 = xor i32 %xor143.11, %conv149.11
  %conv151.11 = trunc i32 %xor150.11 to i8
  %arrayidx153.11 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 11
  %arrayidx156.11 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.11, i64 0, i64 12
  store i8 %conv151.11, i8* %arrayidx156.11, align 1
  %arrayidx158.11 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 11
  %arrayidx161.11 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.11, i64 0, i64 12
  %1876 = load i8, i8* %arrayidx161.11, align 1
  %conv162.11 = zext i8 %1876 to i32
  %arrayidx164.11 = getelementptr inbounds i8, i8* %c, i64 11
  %1877 = load i8, i8* %arrayidx164.11, align 1
  %conv165.11 = zext i8 %1877 to i32
  %xor166.11 = xor i32 %conv165.11, %conv162.11
  %conv167.11 = trunc i32 %xor166.11 to i8
  store i8 %conv167.11, i8* %arrayidx164.11, align 1
  %arrayidx173.11 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 11
  %1878 = load i8, i8* %arrayidx173.11, align 1
  %conv174.11 = zext i8 %1878 to i32
  %arrayidx176.11 = getelementptr inbounds i8, i8* %c, i64 11
  %1879 = load i8, i8* %arrayidx176.11, align 1
  %conv177.11 = zext i8 %1879 to i32
  %xor178.11 = xor i32 %conv177.11, %conv174.11
  %conv179.11 = trunc i32 %xor178.11 to i8
  store i8 %conv179.11, i8* %arrayidx176.11, align 1
  %arrayidx65.12 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 12
  %arrayidx67.12 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.12, i64 0, i64 12
  %1880 = load i8, i8* %arrayidx67.12, align 1
  %arrayidx69.12 = getelementptr inbounds i8, i8* %c, i64 12
  store i8 %1880, i8* %arrayidx69.12, align 1
  %arrayidx122.12 = getelementptr inbounds i8, i8* %c, i64 12
  %scevgep273 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 12, i64 20
  %scevgep276 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 12
  %scevgep276277 = bitcast i8* %scevgep276 to [21 x [21 x i8]]*
  %scevgep282 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 12, i64 20
  %scevgep286 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep288 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 12, i64 20
  %1881 = load i8, i8* %scevgep288, align 1
  %conv80.12 = zext i8 %1881 to i32
  %1882 = load i8, i8* %scevgep282, align 1
  %conv85.12 = zext i8 %1882 to i32
  %xor.12 = xor i32 %conv80.12, %conv85.12
  %scevgep281 = getelementptr i8, i8* %scevgep276, i64 21
  %1883 = load i8, i8* %scevgep281, align 1
  %conv90.12 = zext i8 %1883 to i32
  %xor91.12 = xor i32 %xor.12, %conv90.12
  %1884 = load i8, i8* %scevgep286, align 1
  %conv95.12 = zext i8 %1884 to i32
  %xor96.12 = xor i32 %xor91.12, %conv95.12
  %scevgep284 = getelementptr i8, i8* %scevgep282, i64 -1
  %1885 = load i8, i8* %scevgep284, align 1
  %conv102.12 = zext i8 %1885 to i32
  %xor103.12 = xor i32 %xor96.12, %conv102.12
  %1886 = load i8, i8* %scevgep276, align 1
  %conv109.12 = zext i8 %1886 to i32
  %xor110.12 = xor i32 %xor103.12, %conv109.12
  %conv111.12 = trunc i32 %xor110.12 to i8
  store i8 %conv111.12, i8* %scevgep273, align 1
  %1887 = load i8, i8* %scevgep273, align 1
  %conv120.12 = zext i8 %1887 to i32
  %1888 = load i8, i8* %arrayidx122.12, align 1
  %conv123.12 = zext i8 %1888 to i32
  %xor124.12 = xor i32 %conv123.12, %conv120.12
  %conv125.12 = trunc i32 %xor124.12 to i8
  store i8 %conv125.12, i8* %arrayidx122.12, align 1
  %scevgep279 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep276277, i64 0, i64 -2, i64 0
  %1889 = bitcast i8* %scevgep279 to [21 x [21 x i8]]*
  %scevgep289.1 = getelementptr i8, i8* %scevgep288, i64 -2
  %1890 = load i8, i8* %scevgep289.1, align 1
  %conv80.12.1 = zext i8 %1890 to i32
  %scevgep285.1 = getelementptr i8, i8* %scevgep282, i64 -2
  %1891 = load i8, i8* %scevgep285.1, align 1
  %conv85.12.1 = zext i8 %1891 to i32
  %xor.12.1 = xor i32 %conv80.12.1, %conv85.12.1
  %scevgep281.1 = getelementptr i8, i8* %scevgep279, i64 21
  %1892 = load i8, i8* %scevgep281.1, align 1
  %conv90.12.1 = zext i8 %1892 to i32
  %xor91.12.1 = xor i32 %xor.12.1, %conv90.12.1
  %scevgep287.1 = getelementptr i8, i8* %scevgep286, i64 -2
  %1893 = load i8, i8* %scevgep287.1, align 1
  %conv95.12.1 = zext i8 %1893 to i32
  %xor96.12.1 = xor i32 %xor91.12.1, %conv95.12.1
  %scevgep283.1 = getelementptr i8, i8* %scevgep282, i64 -2
  %scevgep284.1 = getelementptr i8, i8* %scevgep283.1, i64 -1
  %1894 = load i8, i8* %scevgep284.1, align 1
  %conv102.12.1 = zext i8 %1894 to i32
  %xor103.12.1 = xor i32 %xor96.12.1, %conv102.12.1
  %1895 = load i8, i8* %scevgep279, align 1
  %conv109.12.1 = zext i8 %1895 to i32
  %xor110.12.1 = xor i32 %xor103.12.1, %conv109.12.1
  %conv111.12.1 = trunc i32 %xor110.12.1 to i8
  %scevgep275.1 = getelementptr i8, i8* %scevgep273, i64 -2
  store i8 %conv111.12.1, i8* %scevgep275.1, align 1
  %scevgep274.1 = getelementptr i8, i8* %scevgep273, i64 -2
  %1896 = load i8, i8* %scevgep274.1, align 1
  %conv120.12.1 = zext i8 %1896 to i32
  %1897 = load i8, i8* %arrayidx122.12, align 1
  %conv123.12.1 = zext i8 %1897 to i32
  %xor124.12.1 = xor i32 %conv123.12.1, %conv120.12.1
  %conv125.12.1 = trunc i32 %xor124.12.1 to i8
  store i8 %conv125.12.1, i8* %arrayidx122.12, align 1
  %scevgep279.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1889, i64 0, i64 -2, i64 0
  %1898 = bitcast i8* %scevgep279.1 to [21 x [21 x i8]]*
  %scevgep289.2 = getelementptr i8, i8* %scevgep288, i64 -4
  %1899 = load i8, i8* %scevgep289.2, align 1
  %conv80.12.2 = zext i8 %1899 to i32
  %scevgep285.2 = getelementptr i8, i8* %scevgep282, i64 -4
  %1900 = load i8, i8* %scevgep285.2, align 1
  %conv85.12.2 = zext i8 %1900 to i32
  %xor.12.2 = xor i32 %conv80.12.2, %conv85.12.2
  %scevgep281.2 = getelementptr i8, i8* %scevgep279.1, i64 21
  %1901 = load i8, i8* %scevgep281.2, align 1
  %conv90.12.2 = zext i8 %1901 to i32
  %xor91.12.2 = xor i32 %xor.12.2, %conv90.12.2
  %scevgep287.2 = getelementptr i8, i8* %scevgep286, i64 -4
  %1902 = load i8, i8* %scevgep287.2, align 1
  %conv95.12.2 = zext i8 %1902 to i32
  %xor96.12.2 = xor i32 %xor91.12.2, %conv95.12.2
  %scevgep283.2 = getelementptr i8, i8* %scevgep282, i64 -4
  %scevgep284.2 = getelementptr i8, i8* %scevgep283.2, i64 -1
  %1903 = load i8, i8* %scevgep284.2, align 1
  %conv102.12.2 = zext i8 %1903 to i32
  %xor103.12.2 = xor i32 %xor96.12.2, %conv102.12.2
  %1904 = load i8, i8* %scevgep279.1, align 1
  %conv109.12.2 = zext i8 %1904 to i32
  %xor110.12.2 = xor i32 %xor103.12.2, %conv109.12.2
  %conv111.12.2 = trunc i32 %xor110.12.2 to i8
  %scevgep275.2 = getelementptr i8, i8* %scevgep273, i64 -4
  store i8 %conv111.12.2, i8* %scevgep275.2, align 1
  %scevgep274.2 = getelementptr i8, i8* %scevgep273, i64 -4
  %1905 = load i8, i8* %scevgep274.2, align 1
  %conv120.12.2 = zext i8 %1905 to i32
  %1906 = load i8, i8* %arrayidx122.12, align 1
  %conv123.12.2 = zext i8 %1906 to i32
  %xor124.12.2 = xor i32 %conv123.12.2, %conv120.12.2
  %conv125.12.2 = trunc i32 %xor124.12.2 to i8
  store i8 %conv125.12.2, i8* %arrayidx122.12, align 1
  %scevgep279.2 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1898, i64 0, i64 -2, i64 0
  %scevgep289.3 = getelementptr i8, i8* %scevgep288, i64 -6
  %1907 = load i8, i8* %scevgep289.3, align 1
  %conv80.12.3 = zext i8 %1907 to i32
  %scevgep285.3 = getelementptr i8, i8* %scevgep282, i64 -6
  %1908 = load i8, i8* %scevgep285.3, align 1
  %conv85.12.3 = zext i8 %1908 to i32
  %xor.12.3 = xor i32 %conv80.12.3, %conv85.12.3
  %scevgep281.3 = getelementptr i8, i8* %scevgep279.2, i64 21
  %1909 = load i8, i8* %scevgep281.3, align 1
  %conv90.12.3 = zext i8 %1909 to i32
  %xor91.12.3 = xor i32 %xor.12.3, %conv90.12.3
  %scevgep287.3 = getelementptr i8, i8* %scevgep286, i64 -6
  %1910 = load i8, i8* %scevgep287.3, align 1
  %conv95.12.3 = zext i8 %1910 to i32
  %xor96.12.3 = xor i32 %xor91.12.3, %conv95.12.3
  %scevgep283.3 = getelementptr i8, i8* %scevgep282, i64 -6
  %scevgep284.3 = getelementptr i8, i8* %scevgep283.3, i64 -1
  %1911 = load i8, i8* %scevgep284.3, align 1
  %conv102.12.3 = zext i8 %1911 to i32
  %xor103.12.3 = xor i32 %xor96.12.3, %conv102.12.3
  %1912 = load i8, i8* %scevgep279.2, align 1
  %conv109.12.3 = zext i8 %1912 to i32
  %xor110.12.3 = xor i32 %xor103.12.3, %conv109.12.3
  %conv111.12.3 = trunc i32 %xor110.12.3 to i8
  %scevgep275.3 = getelementptr i8, i8* %scevgep273, i64 -6
  store i8 %conv111.12.3, i8* %scevgep275.3, align 1
  %scevgep274.3 = getelementptr i8, i8* %scevgep273, i64 -6
  %1913 = load i8, i8* %scevgep274.3, align 1
  %conv120.12.3 = zext i8 %1913 to i32
  %1914 = load i8, i8* %arrayidx122.12, align 1
  %conv123.12.3 = zext i8 %1914 to i32
  %xor124.12.3 = xor i32 %conv123.12.3, %conv120.12.3
  %conv125.12.3 = trunc i32 %xor124.12.3 to i8
  store i8 %conv125.12.3, i8* %arrayidx122.12, align 1
  %arrayidx192.12 = getelementptr inbounds i8, i8* %c, i64 12
  %scevgep19.12 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 11, i64 12
  %1915 = load i8, i8* %scevgep19.12, align 1
  %conv190.12 = zext i8 %1915 to i32
  %1916 = load i8, i8* %arrayidx192.12, align 1
  %conv193.12 = zext i8 %1916 to i32
  %xor194.12 = xor i32 %conv193.12, %conv190.12
  %conv195.12 = trunc i32 %xor194.12 to i8
  store i8 %conv195.12, i8* %arrayidx192.12, align 1
  %scevgep267 = getelementptr i8, i8* %scevgep19.12, i64 -21
  %1917 = load i8, i8* %scevgep267, align 1
  %conv190.1.12 = zext i8 %1917 to i32
  %1918 = load i8, i8* %arrayidx192.12, align 1
  %conv193.1.12 = zext i8 %1918 to i32
  %xor194.1.12 = xor i32 %conv193.1.12, %conv190.1.12
  %conv195.1.12 = trunc i32 %xor194.1.12 to i8
  store i8 %conv195.1.12, i8* %arrayidx192.12, align 1
  %scevgep268 = getelementptr i8, i8* %scevgep19.12, i64 -42
  %1919 = load i8, i8* %scevgep268, align 1
  %conv190.12.1 = zext i8 %1919 to i32
  %1920 = load i8, i8* %arrayidx192.12, align 1
  %conv193.12.1 = zext i8 %1920 to i32
  %xor194.12.1 = xor i32 %conv193.12.1, %conv190.12.1
  %conv195.12.1 = trunc i32 %xor194.12.1 to i8
  store i8 %conv195.12.1, i8* %arrayidx192.12, align 1
  %scevgep267.1 = getelementptr i8, i8* %scevgep268, i64 -21
  %1921 = load i8, i8* %scevgep267.1, align 1
  %conv190.1.12.1 = zext i8 %1921 to i32
  %1922 = load i8, i8* %arrayidx192.12, align 1
  %conv193.1.12.1 = zext i8 %1922 to i32
  %xor194.1.12.1 = xor i32 %conv193.1.12.1, %conv190.1.12.1
  %conv195.1.12.1 = trunc i32 %xor194.1.12.1 to i8
  store i8 %conv195.1.12.1, i8* %arrayidx192.12, align 1
  %scevgep268.1 = getelementptr i8, i8* %scevgep268, i64 -42
  %1923 = load i8, i8* %scevgep268.1, align 1
  %conv190.12.2 = zext i8 %1923 to i32
  %1924 = load i8, i8* %arrayidx192.12, align 1
  %conv193.12.2 = zext i8 %1924 to i32
  %xor194.12.2 = xor i32 %conv193.12.2, %conv190.12.2
  %conv195.12.2 = trunc i32 %xor194.12.2 to i8
  store i8 %conv195.12.2, i8* %arrayidx192.12, align 1
  %scevgep267.2 = getelementptr i8, i8* %scevgep268.1, i64 -21
  %1925 = load i8, i8* %scevgep267.2, align 1
  %conv190.1.12.2 = zext i8 %1925 to i32
  %1926 = load i8, i8* %arrayidx192.12, align 1
  %conv193.1.12.2 = zext i8 %1926 to i32
  %xor194.1.12.2 = xor i32 %conv193.1.12.2, %conv190.1.12.2
  %conv195.1.12.2 = trunc i32 %xor194.1.12.2 to i8
  store i8 %conv195.1.12.2, i8* %arrayidx192.12, align 1
  %scevgep268.2 = getelementptr i8, i8* %scevgep268.1, i64 -42
  %1927 = load i8, i8* %scevgep268.2, align 1
  %conv190.12.3 = zext i8 %1927 to i32
  %1928 = load i8, i8* %arrayidx192.12, align 1
  %conv193.12.3 = zext i8 %1928 to i32
  %xor194.12.3 = xor i32 %conv193.12.3, %conv190.12.3
  %conv195.12.3 = trunc i32 %xor194.12.3 to i8
  store i8 %conv195.12.3, i8* %arrayidx192.12, align 1
  %scevgep267.3 = getelementptr i8, i8* %scevgep268.2, i64 -21
  %1929 = load i8, i8* %scevgep267.3, align 1
  %conv190.1.12.3 = zext i8 %1929 to i32
  %1930 = load i8, i8* %arrayidx192.12, align 1
  %conv193.1.12.3 = zext i8 %1930 to i32
  %xor194.1.12.3 = xor i32 %conv193.1.12.3, %conv190.1.12.3
  %conv195.1.12.3 = trunc i32 %xor194.1.12.3 to i8
  store i8 %conv195.1.12.3, i8* %arrayidx192.12, align 1
  %scevgep268.3 = getelementptr i8, i8* %scevgep268.2, i64 -42
  %1931 = load i8, i8* %scevgep268.3, align 1
  %conv190.12.4 = zext i8 %1931 to i32
  %1932 = load i8, i8* %arrayidx192.12, align 1
  %conv193.12.4 = zext i8 %1932 to i32
  %xor194.12.4 = xor i32 %conv193.12.4, %conv190.12.4
  %conv195.12.4 = trunc i32 %xor194.12.4 to i8
  store i8 %conv195.12.4, i8* %arrayidx192.12, align 1
  %scevgep267.4 = getelementptr i8, i8* %scevgep268.3, i64 -21
  %1933 = load i8, i8* %scevgep267.4, align 1
  %conv190.1.12.4 = zext i8 %1933 to i32
  %1934 = load i8, i8* %arrayidx192.12, align 1
  %conv193.1.12.4 = zext i8 %1934 to i32
  %xor194.1.12.4 = xor i32 %conv193.1.12.4, %conv190.1.12.4
  %conv195.1.12.4 = trunc i32 %xor194.1.12.4 to i8
  store i8 %conv195.1.12.4, i8* %arrayidx192.12, align 1
  %scevgep268.4 = getelementptr i8, i8* %scevgep268.3, i64 -42
  %1935 = load i8, i8* %scevgep268.4, align 1
  %conv190.12.5 = zext i8 %1935 to i32
  %1936 = load i8, i8* %arrayidx192.12, align 1
  %conv193.12.5 = zext i8 %1936 to i32
  %xor194.12.5 = xor i32 %conv193.12.5, %conv190.12.5
  %conv195.12.5 = trunc i32 %xor194.12.5 to i8
  store i8 %conv195.12.5, i8* %arrayidx192.12, align 1
  %scevgep267.5 = getelementptr i8, i8* %scevgep268.4, i64 -21
  %1937 = load i8, i8* %scevgep267.5, align 1
  %conv190.1.12.5 = zext i8 %1937 to i32
  %1938 = load i8, i8* %arrayidx192.12, align 1
  %conv193.1.12.5 = zext i8 %1938 to i32
  %xor194.1.12.5 = xor i32 %conv193.1.12.5, %conv190.1.12.5
  %conv195.1.12.5 = trunc i32 %xor194.1.12.5 to i8
  store i8 %conv195.1.12.5, i8* %arrayidx192.12, align 1
  %arrayidx65.13 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 13
  %arrayidx67.13 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.13, i64 0, i64 13
  %1939 = load i8, i8* %arrayidx67.13, align 1
  %arrayidx69.13 = getelementptr inbounds i8, i8* %c, i64 13
  store i8 %1939, i8* %arrayidx69.13, align 1
  %arrayidx122.13 = getelementptr inbounds i8, i8* %c, i64 13
  %scevgep250 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 13, i64 20
  %scevgep253 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 13
  %scevgep253254 = bitcast i8* %scevgep253 to [21 x [21 x i8]]*
  %scevgep259 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 13, i64 20
  %scevgep263 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep265 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 13, i64 20
  %1940 = load i8, i8* %scevgep265, align 1
  %conv80.13 = zext i8 %1940 to i32
  %1941 = load i8, i8* %scevgep259, align 1
  %conv85.13 = zext i8 %1941 to i32
  %xor.13 = xor i32 %conv80.13, %conv85.13
  %scevgep258 = getelementptr i8, i8* %scevgep253, i64 21
  %1942 = load i8, i8* %scevgep258, align 1
  %conv90.13 = zext i8 %1942 to i32
  %xor91.13 = xor i32 %xor.13, %conv90.13
  %1943 = load i8, i8* %scevgep263, align 1
  %conv95.13 = zext i8 %1943 to i32
  %xor96.13 = xor i32 %xor91.13, %conv95.13
  %scevgep261 = getelementptr i8, i8* %scevgep259, i64 -1
  %1944 = load i8, i8* %scevgep261, align 1
  %conv102.13 = zext i8 %1944 to i32
  %xor103.13 = xor i32 %xor96.13, %conv102.13
  %1945 = load i8, i8* %scevgep253, align 1
  %conv109.13 = zext i8 %1945 to i32
  %xor110.13 = xor i32 %xor103.13, %conv109.13
  %conv111.13 = trunc i32 %xor110.13 to i8
  store i8 %conv111.13, i8* %scevgep250, align 1
  %1946 = load i8, i8* %scevgep250, align 1
  %conv120.13 = zext i8 %1946 to i32
  %1947 = load i8, i8* %arrayidx122.13, align 1
  %conv123.13 = zext i8 %1947 to i32
  %xor124.13 = xor i32 %conv123.13, %conv120.13
  %conv125.13 = trunc i32 %xor124.13 to i8
  store i8 %conv125.13, i8* %arrayidx122.13, align 1
  %scevgep256 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep253254, i64 0, i64 -2, i64 0
  %1948 = bitcast i8* %scevgep256 to [21 x [21 x i8]]*
  %scevgep266.1 = getelementptr i8, i8* %scevgep265, i64 -2
  %1949 = load i8, i8* %scevgep266.1, align 1
  %conv80.13.1 = zext i8 %1949 to i32
  %scevgep262.1 = getelementptr i8, i8* %scevgep259, i64 -2
  %1950 = load i8, i8* %scevgep262.1, align 1
  %conv85.13.1 = zext i8 %1950 to i32
  %xor.13.1 = xor i32 %conv80.13.1, %conv85.13.1
  %scevgep258.1 = getelementptr i8, i8* %scevgep256, i64 21
  %1951 = load i8, i8* %scevgep258.1, align 1
  %conv90.13.1 = zext i8 %1951 to i32
  %xor91.13.1 = xor i32 %xor.13.1, %conv90.13.1
  %scevgep264.1 = getelementptr i8, i8* %scevgep263, i64 -2
  %1952 = load i8, i8* %scevgep264.1, align 1
  %conv95.13.1 = zext i8 %1952 to i32
  %xor96.13.1 = xor i32 %xor91.13.1, %conv95.13.1
  %scevgep260.1 = getelementptr i8, i8* %scevgep259, i64 -2
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 -1
  %1953 = load i8, i8* %scevgep261.1, align 1
  %conv102.13.1 = zext i8 %1953 to i32
  %xor103.13.1 = xor i32 %xor96.13.1, %conv102.13.1
  %1954 = load i8, i8* %scevgep256, align 1
  %conv109.13.1 = zext i8 %1954 to i32
  %xor110.13.1 = xor i32 %xor103.13.1, %conv109.13.1
  %conv111.13.1 = trunc i32 %xor110.13.1 to i8
  %scevgep252.1 = getelementptr i8, i8* %scevgep250, i64 -2
  store i8 %conv111.13.1, i8* %scevgep252.1, align 1
  %scevgep251.1 = getelementptr i8, i8* %scevgep250, i64 -2
  %1955 = load i8, i8* %scevgep251.1, align 1
  %conv120.13.1 = zext i8 %1955 to i32
  %1956 = load i8, i8* %arrayidx122.13, align 1
  %conv123.13.1 = zext i8 %1956 to i32
  %xor124.13.1 = xor i32 %conv123.13.1, %conv120.13.1
  %conv125.13.1 = trunc i32 %xor124.13.1 to i8
  store i8 %conv125.13.1, i8* %arrayidx122.13, align 1
  %scevgep256.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1948, i64 0, i64 -2, i64 0
  %scevgep266.2 = getelementptr i8, i8* %scevgep265, i64 -4
  %1957 = load i8, i8* %scevgep266.2, align 1
  %conv80.13.2 = zext i8 %1957 to i32
  %scevgep262.2 = getelementptr i8, i8* %scevgep259, i64 -4
  %1958 = load i8, i8* %scevgep262.2, align 1
  %conv85.13.2 = zext i8 %1958 to i32
  %xor.13.2 = xor i32 %conv80.13.2, %conv85.13.2
  %scevgep258.2 = getelementptr i8, i8* %scevgep256.1, i64 21
  %1959 = load i8, i8* %scevgep258.2, align 1
  %conv90.13.2 = zext i8 %1959 to i32
  %xor91.13.2 = xor i32 %xor.13.2, %conv90.13.2
  %scevgep264.2 = getelementptr i8, i8* %scevgep263, i64 -4
  %1960 = load i8, i8* %scevgep264.2, align 1
  %conv95.13.2 = zext i8 %1960 to i32
  %xor96.13.2 = xor i32 %xor91.13.2, %conv95.13.2
  %scevgep260.2 = getelementptr i8, i8* %scevgep259, i64 -4
  %scevgep261.2 = getelementptr i8, i8* %scevgep260.2, i64 -1
  %1961 = load i8, i8* %scevgep261.2, align 1
  %conv102.13.2 = zext i8 %1961 to i32
  %xor103.13.2 = xor i32 %xor96.13.2, %conv102.13.2
  %1962 = load i8, i8* %scevgep256.1, align 1
  %conv109.13.2 = zext i8 %1962 to i32
  %xor110.13.2 = xor i32 %xor103.13.2, %conv109.13.2
  %conv111.13.2 = trunc i32 %xor110.13.2 to i8
  %scevgep252.2 = getelementptr i8, i8* %scevgep250, i64 -4
  store i8 %conv111.13.2, i8* %scevgep252.2, align 1
  %scevgep251.2 = getelementptr i8, i8* %scevgep250, i64 -4
  %1963 = load i8, i8* %scevgep251.2, align 1
  %conv120.13.2 = zext i8 %1963 to i32
  %1964 = load i8, i8* %arrayidx122.13, align 1
  %conv123.13.2 = zext i8 %1964 to i32
  %xor124.13.2 = xor i32 %conv123.13.2, %conv120.13.2
  %conv125.13.2 = trunc i32 %xor124.13.2 to i8
  store i8 %conv125.13.2, i8* %arrayidx122.13, align 1
  %arrayidx132.13 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 13
  %arrayidx135.13 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.13, i64 0, i64 14
  %1965 = load i8, i8* %arrayidx135.13, align 1
  %conv136.13 = zext i8 %1965 to i32
  %arrayidx138.13 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 13
  %arrayidx141.13 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.13, i64 0, i64 14
  %1966 = load i8, i8* %arrayidx141.13, align 1
  %conv142.13 = zext i8 %1966 to i32
  %xor143.13 = xor i32 %conv136.13, %conv142.13
  %arrayidx146.13 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 14
  %arrayidx148.13 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.13, i64 0, i64 13
  %1967 = load i8, i8* %arrayidx148.13, align 1
  %conv149.13 = zext i8 %1967 to i32
  %xor150.13 = xor i32 %xor143.13, %conv149.13
  %conv151.13 = trunc i32 %xor150.13 to i8
  %arrayidx153.13 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 13
  %arrayidx156.13 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.13, i64 0, i64 14
  store i8 %conv151.13, i8* %arrayidx156.13, align 1
  %arrayidx158.13 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 13
  %arrayidx161.13 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.13, i64 0, i64 14
  %1968 = load i8, i8* %arrayidx161.13, align 1
  %conv162.13 = zext i8 %1968 to i32
  %arrayidx164.13 = getelementptr inbounds i8, i8* %c, i64 13
  %1969 = load i8, i8* %arrayidx164.13, align 1
  %conv165.13 = zext i8 %1969 to i32
  %xor166.13 = xor i32 %conv165.13, %conv162.13
  %conv167.13 = trunc i32 %xor166.13 to i8
  store i8 %conv167.13, i8* %arrayidx164.13, align 1
  %arrayidx173.13 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 13
  %1970 = load i8, i8* %arrayidx173.13, align 1
  %conv174.13 = zext i8 %1970 to i32
  %arrayidx176.13 = getelementptr inbounds i8, i8* %c, i64 13
  %1971 = load i8, i8* %arrayidx176.13, align 1
  %conv177.13 = zext i8 %1971 to i32
  %xor178.13 = xor i32 %conv177.13, %conv174.13
  %conv179.13 = trunc i32 %xor178.13 to i8
  store i8 %conv179.13, i8* %arrayidx176.13, align 1
  %arrayidx65.14 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 14
  %arrayidx67.14 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.14, i64 0, i64 14
  %1972 = load i8, i8* %arrayidx67.14, align 1
  %arrayidx69.14 = getelementptr inbounds i8, i8* %c, i64 14
  store i8 %1972, i8* %arrayidx69.14, align 1
  %arrayidx122.14 = getelementptr inbounds i8, i8* %c, i64 14
  %scevgep230 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 14, i64 20
  %scevgep233 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 14
  %scevgep233234 = bitcast i8* %scevgep233 to [21 x [21 x i8]]*
  %scevgep239 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 14, i64 20
  %scevgep243 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep245 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 14, i64 20
  %1973 = load i8, i8* %scevgep245, align 1
  %conv80.14 = zext i8 %1973 to i32
  %1974 = load i8, i8* %scevgep239, align 1
  %conv85.14 = zext i8 %1974 to i32
  %xor.14 = xor i32 %conv80.14, %conv85.14
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 21
  %1975 = load i8, i8* %scevgep238, align 1
  %conv90.14 = zext i8 %1975 to i32
  %xor91.14 = xor i32 %xor.14, %conv90.14
  %1976 = load i8, i8* %scevgep243, align 1
  %conv95.14 = zext i8 %1976 to i32
  %xor96.14 = xor i32 %xor91.14, %conv95.14
  %scevgep241 = getelementptr i8, i8* %scevgep239, i64 -1
  %1977 = load i8, i8* %scevgep241, align 1
  %conv102.14 = zext i8 %1977 to i32
  %xor103.14 = xor i32 %xor96.14, %conv102.14
  %1978 = load i8, i8* %scevgep233, align 1
  %conv109.14 = zext i8 %1978 to i32
  %xor110.14 = xor i32 %xor103.14, %conv109.14
  %conv111.14 = trunc i32 %xor110.14 to i8
  store i8 %conv111.14, i8* %scevgep230, align 1
  %1979 = load i8, i8* %scevgep230, align 1
  %conv120.14 = zext i8 %1979 to i32
  %1980 = load i8, i8* %arrayidx122.14, align 1
  %conv123.14 = zext i8 %1980 to i32
  %xor124.14 = xor i32 %conv123.14, %conv120.14
  %conv125.14 = trunc i32 %xor124.14 to i8
  store i8 %conv125.14, i8* %arrayidx122.14, align 1
  %scevgep236 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep233234, i64 0, i64 -2, i64 0
  %1981 = bitcast i8* %scevgep236 to [21 x [21 x i8]]*
  %scevgep246.1 = getelementptr i8, i8* %scevgep245, i64 -2
  %1982 = load i8, i8* %scevgep246.1, align 1
  %conv80.14.1 = zext i8 %1982 to i32
  %scevgep242.1 = getelementptr i8, i8* %scevgep239, i64 -2
  %1983 = load i8, i8* %scevgep242.1, align 1
  %conv85.14.1 = zext i8 %1983 to i32
  %xor.14.1 = xor i32 %conv80.14.1, %conv85.14.1
  %scevgep238.1 = getelementptr i8, i8* %scevgep236, i64 21
  %1984 = load i8, i8* %scevgep238.1, align 1
  %conv90.14.1 = zext i8 %1984 to i32
  %xor91.14.1 = xor i32 %xor.14.1, %conv90.14.1
  %scevgep244.1 = getelementptr i8, i8* %scevgep243, i64 -2
  %1985 = load i8, i8* %scevgep244.1, align 1
  %conv95.14.1 = zext i8 %1985 to i32
  %xor96.14.1 = xor i32 %xor91.14.1, %conv95.14.1
  %scevgep240.1 = getelementptr i8, i8* %scevgep239, i64 -2
  %scevgep241.1 = getelementptr i8, i8* %scevgep240.1, i64 -1
  %1986 = load i8, i8* %scevgep241.1, align 1
  %conv102.14.1 = zext i8 %1986 to i32
  %xor103.14.1 = xor i32 %xor96.14.1, %conv102.14.1
  %1987 = load i8, i8* %scevgep236, align 1
  %conv109.14.1 = zext i8 %1987 to i32
  %xor110.14.1 = xor i32 %xor103.14.1, %conv109.14.1
  %conv111.14.1 = trunc i32 %xor110.14.1 to i8
  %scevgep232.1 = getelementptr i8, i8* %scevgep230, i64 -2
  store i8 %conv111.14.1, i8* %scevgep232.1, align 1
  %scevgep231.1 = getelementptr i8, i8* %scevgep230, i64 -2
  %1988 = load i8, i8* %scevgep231.1, align 1
  %conv120.14.1 = zext i8 %1988 to i32
  %1989 = load i8, i8* %arrayidx122.14, align 1
  %conv123.14.1 = zext i8 %1989 to i32
  %xor124.14.1 = xor i32 %conv123.14.1, %conv120.14.1
  %conv125.14.1 = trunc i32 %xor124.14.1 to i8
  store i8 %conv125.14.1, i8* %arrayidx122.14, align 1
  %scevgep236.1 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %1981, i64 0, i64 -2, i64 0
  %scevgep246.2 = getelementptr i8, i8* %scevgep245, i64 -4
  %1990 = load i8, i8* %scevgep246.2, align 1
  %conv80.14.2 = zext i8 %1990 to i32
  %scevgep242.2 = getelementptr i8, i8* %scevgep239, i64 -4
  %1991 = load i8, i8* %scevgep242.2, align 1
  %conv85.14.2 = zext i8 %1991 to i32
  %xor.14.2 = xor i32 %conv80.14.2, %conv85.14.2
  %scevgep238.2 = getelementptr i8, i8* %scevgep236.1, i64 21
  %1992 = load i8, i8* %scevgep238.2, align 1
  %conv90.14.2 = zext i8 %1992 to i32
  %xor91.14.2 = xor i32 %xor.14.2, %conv90.14.2
  %scevgep244.2 = getelementptr i8, i8* %scevgep243, i64 -4
  %1993 = load i8, i8* %scevgep244.2, align 1
  %conv95.14.2 = zext i8 %1993 to i32
  %xor96.14.2 = xor i32 %xor91.14.2, %conv95.14.2
  %scevgep240.2 = getelementptr i8, i8* %scevgep239, i64 -4
  %scevgep241.2 = getelementptr i8, i8* %scevgep240.2, i64 -1
  %1994 = load i8, i8* %scevgep241.2, align 1
  %conv102.14.2 = zext i8 %1994 to i32
  %xor103.14.2 = xor i32 %xor96.14.2, %conv102.14.2
  %1995 = load i8, i8* %scevgep236.1, align 1
  %conv109.14.2 = zext i8 %1995 to i32
  %xor110.14.2 = xor i32 %xor103.14.2, %conv109.14.2
  %conv111.14.2 = trunc i32 %xor110.14.2 to i8
  %scevgep232.2 = getelementptr i8, i8* %scevgep230, i64 -4
  store i8 %conv111.14.2, i8* %scevgep232.2, align 1
  %scevgep231.2 = getelementptr i8, i8* %scevgep230, i64 -4
  %1996 = load i8, i8* %scevgep231.2, align 1
  %conv120.14.2 = zext i8 %1996 to i32
  %1997 = load i8, i8* %arrayidx122.14, align 1
  %conv123.14.2 = zext i8 %1997 to i32
  %xor124.14.2 = xor i32 %conv123.14.2, %conv120.14.2
  %conv125.14.2 = trunc i32 %xor124.14.2 to i8
  store i8 %conv125.14.2, i8* %arrayidx122.14, align 1
  %arrayidx192.14 = getelementptr inbounds i8, i8* %c, i64 14
  %scevgep19.14 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 13, i64 14
  %1998 = load i8, i8* %scevgep19.14, align 1
  %conv190.14 = zext i8 %1998 to i32
  %1999 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14 = zext i8 %1999 to i32
  %xor194.14 = xor i32 %conv193.14, %conv190.14
  %conv195.14 = trunc i32 %xor194.14 to i8
  store i8 %conv195.14, i8* %arrayidx192.14, align 1
  %scevgep225 = getelementptr i8, i8* %scevgep19.14, i64 -21
  %2000 = load i8, i8* %scevgep225, align 1
  %conv190.1.14 = zext i8 %2000 to i32
  %2001 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14 = zext i8 %2001 to i32
  %xor194.1.14 = xor i32 %conv193.1.14, %conv190.1.14
  %conv195.1.14 = trunc i32 %xor194.1.14 to i8
  store i8 %conv195.1.14, i8* %arrayidx192.14, align 1
  %scevgep226 = getelementptr i8, i8* %scevgep19.14, i64 -42
  %2002 = load i8, i8* %scevgep226, align 1
  %conv190.14.1 = zext i8 %2002 to i32
  %2003 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14.1 = zext i8 %2003 to i32
  %xor194.14.1 = xor i32 %conv193.14.1, %conv190.14.1
  %conv195.14.1 = trunc i32 %xor194.14.1 to i8
  store i8 %conv195.14.1, i8* %arrayidx192.14, align 1
  %scevgep225.1 = getelementptr i8, i8* %scevgep226, i64 -21
  %2004 = load i8, i8* %scevgep225.1, align 1
  %conv190.1.14.1 = zext i8 %2004 to i32
  %2005 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14.1 = zext i8 %2005 to i32
  %xor194.1.14.1 = xor i32 %conv193.1.14.1, %conv190.1.14.1
  %conv195.1.14.1 = trunc i32 %xor194.1.14.1 to i8
  store i8 %conv195.1.14.1, i8* %arrayidx192.14, align 1
  %scevgep226.1 = getelementptr i8, i8* %scevgep226, i64 -42
  %2006 = load i8, i8* %scevgep226.1, align 1
  %conv190.14.2 = zext i8 %2006 to i32
  %2007 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14.2 = zext i8 %2007 to i32
  %xor194.14.2 = xor i32 %conv193.14.2, %conv190.14.2
  %conv195.14.2 = trunc i32 %xor194.14.2 to i8
  store i8 %conv195.14.2, i8* %arrayidx192.14, align 1
  %scevgep225.2 = getelementptr i8, i8* %scevgep226.1, i64 -21
  %2008 = load i8, i8* %scevgep225.2, align 1
  %conv190.1.14.2 = zext i8 %2008 to i32
  %2009 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14.2 = zext i8 %2009 to i32
  %xor194.1.14.2 = xor i32 %conv193.1.14.2, %conv190.1.14.2
  %conv195.1.14.2 = trunc i32 %xor194.1.14.2 to i8
  store i8 %conv195.1.14.2, i8* %arrayidx192.14, align 1
  %scevgep226.2 = getelementptr i8, i8* %scevgep226.1, i64 -42
  %2010 = load i8, i8* %scevgep226.2, align 1
  %conv190.14.3 = zext i8 %2010 to i32
  %2011 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14.3 = zext i8 %2011 to i32
  %xor194.14.3 = xor i32 %conv193.14.3, %conv190.14.3
  %conv195.14.3 = trunc i32 %xor194.14.3 to i8
  store i8 %conv195.14.3, i8* %arrayidx192.14, align 1
  %scevgep225.3 = getelementptr i8, i8* %scevgep226.2, i64 -21
  %2012 = load i8, i8* %scevgep225.3, align 1
  %conv190.1.14.3 = zext i8 %2012 to i32
  %2013 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14.3 = zext i8 %2013 to i32
  %xor194.1.14.3 = xor i32 %conv193.1.14.3, %conv190.1.14.3
  %conv195.1.14.3 = trunc i32 %xor194.1.14.3 to i8
  store i8 %conv195.1.14.3, i8* %arrayidx192.14, align 1
  %scevgep226.3 = getelementptr i8, i8* %scevgep226.2, i64 -42
  %2014 = load i8, i8* %scevgep226.3, align 1
  %conv190.14.4 = zext i8 %2014 to i32
  %2015 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14.4 = zext i8 %2015 to i32
  %xor194.14.4 = xor i32 %conv193.14.4, %conv190.14.4
  %conv195.14.4 = trunc i32 %xor194.14.4 to i8
  store i8 %conv195.14.4, i8* %arrayidx192.14, align 1
  %scevgep225.4 = getelementptr i8, i8* %scevgep226.3, i64 -21
  %2016 = load i8, i8* %scevgep225.4, align 1
  %conv190.1.14.4 = zext i8 %2016 to i32
  %2017 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14.4 = zext i8 %2017 to i32
  %xor194.1.14.4 = xor i32 %conv193.1.14.4, %conv190.1.14.4
  %conv195.1.14.4 = trunc i32 %xor194.1.14.4 to i8
  store i8 %conv195.1.14.4, i8* %arrayidx192.14, align 1
  %scevgep226.4 = getelementptr i8, i8* %scevgep226.3, i64 -42
  %2018 = load i8, i8* %scevgep226.4, align 1
  %conv190.14.5 = zext i8 %2018 to i32
  %2019 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14.5 = zext i8 %2019 to i32
  %xor194.14.5 = xor i32 %conv193.14.5, %conv190.14.5
  %conv195.14.5 = trunc i32 %xor194.14.5 to i8
  store i8 %conv195.14.5, i8* %arrayidx192.14, align 1
  %scevgep225.5 = getelementptr i8, i8* %scevgep226.4, i64 -21
  %2020 = load i8, i8* %scevgep225.5, align 1
  %conv190.1.14.5 = zext i8 %2020 to i32
  %2021 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14.5 = zext i8 %2021 to i32
  %xor194.1.14.5 = xor i32 %conv193.1.14.5, %conv190.1.14.5
  %conv195.1.14.5 = trunc i32 %xor194.1.14.5 to i8
  store i8 %conv195.1.14.5, i8* %arrayidx192.14, align 1
  %scevgep226.5 = getelementptr i8, i8* %scevgep226.4, i64 -42
  %2022 = load i8, i8* %scevgep226.5, align 1
  %conv190.14.6 = zext i8 %2022 to i32
  %2023 = load i8, i8* %arrayidx192.14, align 1
  %conv193.14.6 = zext i8 %2023 to i32
  %xor194.14.6 = xor i32 %conv193.14.6, %conv190.14.6
  %conv195.14.6 = trunc i32 %xor194.14.6 to i8
  store i8 %conv195.14.6, i8* %arrayidx192.14, align 1
  %scevgep225.6 = getelementptr i8, i8* %scevgep226.5, i64 -21
  %2024 = load i8, i8* %scevgep225.6, align 1
  %conv190.1.14.6 = zext i8 %2024 to i32
  %2025 = load i8, i8* %arrayidx192.14, align 1
  %conv193.1.14.6 = zext i8 %2025 to i32
  %xor194.1.14.6 = xor i32 %conv193.1.14.6, %conv190.1.14.6
  %conv195.1.14.6 = trunc i32 %xor194.1.14.6 to i8
  store i8 %conv195.1.14.6, i8* %arrayidx192.14, align 1
  %arrayidx65.15 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 15
  %arrayidx67.15 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.15, i64 0, i64 15
  %2026 = load i8, i8* %arrayidx67.15, align 1
  %arrayidx69.15 = getelementptr inbounds i8, i8* %c, i64 15
  store i8 %2026, i8* %arrayidx69.15, align 1
  %arrayidx122.15 = getelementptr inbounds i8, i8* %c, i64 15
  %scevgep206 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 15, i64 20
  %scevgep211 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 15
  %scevgep211212 = bitcast i8* %scevgep211 to [21 x [21 x i8]]*
  %scevgep217 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 15, i64 20
  %scevgep221 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep223 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 15, i64 20
  %2027 = load i8, i8* %scevgep223, align 1
  %conv80.15 = zext i8 %2027 to i32
  %2028 = load i8, i8* %scevgep217, align 1
  %conv85.15 = zext i8 %2028 to i32
  %xor.15 = xor i32 %conv80.15, %conv85.15
  %scevgep216 = getelementptr i8, i8* %scevgep211, i64 21
  %2029 = load i8, i8* %scevgep216, align 1
  %conv90.15 = zext i8 %2029 to i32
  %xor91.15 = xor i32 %xor.15, %conv90.15
  %2030 = load i8, i8* %scevgep221, align 1
  %conv95.15 = zext i8 %2030 to i32
  %xor96.15 = xor i32 %xor91.15, %conv95.15
  %scevgep219 = getelementptr i8, i8* %scevgep217, i64 -1
  %2031 = load i8, i8* %scevgep219, align 1
  %conv102.15 = zext i8 %2031 to i32
  %xor103.15 = xor i32 %xor96.15, %conv102.15
  %2032 = load i8, i8* %scevgep211, align 1
  %conv109.15 = zext i8 %2032 to i32
  %xor110.15 = xor i32 %xor103.15, %conv109.15
  %conv111.15 = trunc i32 %xor110.15 to i8
  store i8 %conv111.15, i8* %scevgep206, align 1
  %2033 = load i8, i8* %scevgep206, align 1
  %conv120.15 = zext i8 %2033 to i32
  %2034 = load i8, i8* %arrayidx122.15, align 1
  %conv123.15 = zext i8 %2034 to i32
  %xor124.15 = xor i32 %conv123.15, %conv120.15
  %conv125.15 = trunc i32 %xor124.15 to i8
  store i8 %conv125.15, i8* %arrayidx122.15, align 1
  %scevgep214 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep211212, i64 0, i64 -2, i64 0
  %scevgep224.1 = getelementptr i8, i8* %scevgep223, i64 -2
  %2035 = load i8, i8* %scevgep224.1, align 1
  %conv80.15.1 = zext i8 %2035 to i32
  %scevgep220.1 = getelementptr i8, i8* %scevgep217, i64 -2
  %2036 = load i8, i8* %scevgep220.1, align 1
  %conv85.15.1 = zext i8 %2036 to i32
  %xor.15.1 = xor i32 %conv80.15.1, %conv85.15.1
  %scevgep216.1 = getelementptr i8, i8* %scevgep214, i64 21
  %2037 = load i8, i8* %scevgep216.1, align 1
  %conv90.15.1 = zext i8 %2037 to i32
  %xor91.15.1 = xor i32 %xor.15.1, %conv90.15.1
  %scevgep222.1 = getelementptr i8, i8* %scevgep221, i64 -2
  %2038 = load i8, i8* %scevgep222.1, align 1
  %conv95.15.1 = zext i8 %2038 to i32
  %xor96.15.1 = xor i32 %xor91.15.1, %conv95.15.1
  %scevgep218.1 = getelementptr i8, i8* %scevgep217, i64 -2
  %scevgep219.1 = getelementptr i8, i8* %scevgep218.1, i64 -1
  %2039 = load i8, i8* %scevgep219.1, align 1
  %conv102.15.1 = zext i8 %2039 to i32
  %xor103.15.1 = xor i32 %xor96.15.1, %conv102.15.1
  %2040 = load i8, i8* %scevgep214, align 1
  %conv109.15.1 = zext i8 %2040 to i32
  %xor110.15.1 = xor i32 %xor103.15.1, %conv109.15.1
  %conv111.15.1 = trunc i32 %xor110.15.1 to i8
  %scevgep210.1 = getelementptr i8, i8* %scevgep206, i64 -2
  store i8 %conv111.15.1, i8* %scevgep210.1, align 1
  %scevgep209.1 = getelementptr i8, i8* %scevgep206, i64 -2
  %2041 = load i8, i8* %scevgep209.1, align 1
  %conv120.15.1 = zext i8 %2041 to i32
  %2042 = load i8, i8* %arrayidx122.15, align 1
  %conv123.15.1 = zext i8 %2042 to i32
  %xor124.15.1 = xor i32 %conv123.15.1, %conv120.15.1
  %conv125.15.1 = trunc i32 %xor124.15.1 to i8
  store i8 %conv125.15.1, i8* %arrayidx122.15, align 1
  %arrayidx132.15 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 15
  %arrayidx135.15 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.15, i64 0, i64 16
  %2043 = load i8, i8* %arrayidx135.15, align 1
  %conv136.15 = zext i8 %2043 to i32
  %arrayidx138.15 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 15
  %arrayidx141.15 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.15, i64 0, i64 16
  %2044 = load i8, i8* %arrayidx141.15, align 1
  %conv142.15 = zext i8 %2044 to i32
  %xor143.15 = xor i32 %conv136.15, %conv142.15
  %arrayidx146.15 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 16
  %arrayidx148.15 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.15, i64 0, i64 15
  %2045 = load i8, i8* %arrayidx148.15, align 1
  %conv149.15 = zext i8 %2045 to i32
  %xor150.15 = xor i32 %xor143.15, %conv149.15
  %conv151.15 = trunc i32 %xor150.15 to i8
  %arrayidx153.15 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 15
  %arrayidx156.15 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.15, i64 0, i64 16
  store i8 %conv151.15, i8* %arrayidx156.15, align 1
  %arrayidx158.15 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 15
  %arrayidx161.15 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.15, i64 0, i64 16
  %2046 = load i8, i8* %arrayidx161.15, align 1
  %conv162.15 = zext i8 %2046 to i32
  %arrayidx164.15 = getelementptr inbounds i8, i8* %c, i64 15
  %2047 = load i8, i8* %arrayidx164.15, align 1
  %conv165.15 = zext i8 %2047 to i32
  %xor166.15 = xor i32 %conv165.15, %conv162.15
  %conv167.15 = trunc i32 %xor166.15 to i8
  store i8 %conv167.15, i8* %arrayidx164.15, align 1
  %arrayidx173.15 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 15
  %2048 = load i8, i8* %arrayidx173.15, align 1
  %conv174.15 = zext i8 %2048 to i32
  %arrayidx176.15 = getelementptr inbounds i8, i8* %c, i64 15
  %2049 = load i8, i8* %arrayidx176.15, align 1
  %conv177.15 = zext i8 %2049 to i32
  %xor178.15 = xor i32 %conv177.15, %conv174.15
  %conv179.15 = trunc i32 %xor178.15 to i8
  store i8 %conv179.15, i8* %arrayidx176.15, align 1
  %arrayidx65.16 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 16
  %arrayidx67.16 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.16, i64 0, i64 16
  %2050 = load i8, i8* %arrayidx67.16, align 1
  %arrayidx69.16 = getelementptr inbounds i8, i8* %c, i64 16
  store i8 %2050, i8* %arrayidx69.16, align 1
  %arrayidx122.16 = getelementptr inbounds i8, i8* %c, i64 16
  %scevgep187 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 16, i64 20
  %scevgep192 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 16
  %scevgep192193 = bitcast i8* %scevgep192 to [21 x [21 x i8]]*
  %scevgep198 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 16, i64 20
  %scevgep202 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep204 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 16, i64 20
  %2051 = load i8, i8* %scevgep204, align 1
  %conv80.16 = zext i8 %2051 to i32
  %2052 = load i8, i8* %scevgep198, align 1
  %conv85.16 = zext i8 %2052 to i32
  %xor.16 = xor i32 %conv80.16, %conv85.16
  %scevgep197 = getelementptr i8, i8* %scevgep192, i64 21
  %2053 = load i8, i8* %scevgep197, align 1
  %conv90.16 = zext i8 %2053 to i32
  %xor91.16 = xor i32 %xor.16, %conv90.16
  %2054 = load i8, i8* %scevgep202, align 1
  %conv95.16 = zext i8 %2054 to i32
  %xor96.16 = xor i32 %xor91.16, %conv95.16
  %scevgep200 = getelementptr i8, i8* %scevgep198, i64 -1
  %2055 = load i8, i8* %scevgep200, align 1
  %conv102.16 = zext i8 %2055 to i32
  %xor103.16 = xor i32 %xor96.16, %conv102.16
  %2056 = load i8, i8* %scevgep192, align 1
  %conv109.16 = zext i8 %2056 to i32
  %xor110.16 = xor i32 %xor103.16, %conv109.16
  %conv111.16 = trunc i32 %xor110.16 to i8
  store i8 %conv111.16, i8* %scevgep187, align 1
  %2057 = load i8, i8* %scevgep187, align 1
  %conv120.16 = zext i8 %2057 to i32
  %2058 = load i8, i8* %arrayidx122.16, align 1
  %conv123.16 = zext i8 %2058 to i32
  %xor124.16 = xor i32 %conv123.16, %conv120.16
  %conv125.16 = trunc i32 %xor124.16 to i8
  store i8 %conv125.16, i8* %arrayidx122.16, align 1
  %scevgep195 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %scevgep192193, i64 0, i64 -2, i64 0
  %scevgep205.1 = getelementptr i8, i8* %scevgep204, i64 -2
  %2059 = load i8, i8* %scevgep205.1, align 1
  %conv80.16.1 = zext i8 %2059 to i32
  %scevgep201.1 = getelementptr i8, i8* %scevgep198, i64 -2
  %2060 = load i8, i8* %scevgep201.1, align 1
  %conv85.16.1 = zext i8 %2060 to i32
  %xor.16.1 = xor i32 %conv80.16.1, %conv85.16.1
  %scevgep197.1 = getelementptr i8, i8* %scevgep195, i64 21
  %2061 = load i8, i8* %scevgep197.1, align 1
  %conv90.16.1 = zext i8 %2061 to i32
  %xor91.16.1 = xor i32 %xor.16.1, %conv90.16.1
  %scevgep203.1 = getelementptr i8, i8* %scevgep202, i64 -2
  %2062 = load i8, i8* %scevgep203.1, align 1
  %conv95.16.1 = zext i8 %2062 to i32
  %xor96.16.1 = xor i32 %xor91.16.1, %conv95.16.1
  %scevgep199.1 = getelementptr i8, i8* %scevgep198, i64 -2
  %scevgep200.1 = getelementptr i8, i8* %scevgep199.1, i64 -1
  %2063 = load i8, i8* %scevgep200.1, align 1
  %conv102.16.1 = zext i8 %2063 to i32
  %xor103.16.1 = xor i32 %xor96.16.1, %conv102.16.1
  %2064 = load i8, i8* %scevgep195, align 1
  %conv109.16.1 = zext i8 %2064 to i32
  %xor110.16.1 = xor i32 %xor103.16.1, %conv109.16.1
  %conv111.16.1 = trunc i32 %xor110.16.1 to i8
  %scevgep191.1 = getelementptr i8, i8* %scevgep187, i64 -2
  store i8 %conv111.16.1, i8* %scevgep191.1, align 1
  %scevgep190.1 = getelementptr i8, i8* %scevgep187, i64 -2
  %2065 = load i8, i8* %scevgep190.1, align 1
  %conv120.16.1 = zext i8 %2065 to i32
  %2066 = load i8, i8* %arrayidx122.16, align 1
  %conv123.16.1 = zext i8 %2066 to i32
  %xor124.16.1 = xor i32 %conv123.16.1, %conv120.16.1
  %conv125.16.1 = trunc i32 %xor124.16.1 to i8
  store i8 %conv125.16.1, i8* %arrayidx122.16, align 1
  %arrayidx192.16 = getelementptr inbounds i8, i8* %c, i64 16
  %scevgep19.16 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 15, i64 16
  %2067 = load i8, i8* %scevgep19.16, align 1
  %conv190.16 = zext i8 %2067 to i32
  %2068 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16 = zext i8 %2068 to i32
  %xor194.16 = xor i32 %conv193.16, %conv190.16
  %conv195.16 = trunc i32 %xor194.16 to i8
  store i8 %conv195.16, i8* %arrayidx192.16, align 1
  %scevgep184 = getelementptr i8, i8* %scevgep19.16, i64 -21
  %2069 = load i8, i8* %scevgep184, align 1
  %conv190.1.16 = zext i8 %2069 to i32
  %2070 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16 = zext i8 %2070 to i32
  %xor194.1.16 = xor i32 %conv193.1.16, %conv190.1.16
  %conv195.1.16 = trunc i32 %xor194.1.16 to i8
  store i8 %conv195.1.16, i8* %arrayidx192.16, align 1
  %scevgep185 = getelementptr i8, i8* %scevgep19.16, i64 -42
  %2071 = load i8, i8* %scevgep185, align 1
  %conv190.16.1 = zext i8 %2071 to i32
  %2072 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.1 = zext i8 %2072 to i32
  %xor194.16.1 = xor i32 %conv193.16.1, %conv190.16.1
  %conv195.16.1 = trunc i32 %xor194.16.1 to i8
  store i8 %conv195.16.1, i8* %arrayidx192.16, align 1
  %scevgep184.1 = getelementptr i8, i8* %scevgep185, i64 -21
  %2073 = load i8, i8* %scevgep184.1, align 1
  %conv190.1.16.1 = zext i8 %2073 to i32
  %2074 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.1 = zext i8 %2074 to i32
  %xor194.1.16.1 = xor i32 %conv193.1.16.1, %conv190.1.16.1
  %conv195.1.16.1 = trunc i32 %xor194.1.16.1 to i8
  store i8 %conv195.1.16.1, i8* %arrayidx192.16, align 1
  %scevgep185.1 = getelementptr i8, i8* %scevgep185, i64 -42
  %2075 = load i8, i8* %scevgep185.1, align 1
  %conv190.16.2 = zext i8 %2075 to i32
  %2076 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.2 = zext i8 %2076 to i32
  %xor194.16.2 = xor i32 %conv193.16.2, %conv190.16.2
  %conv195.16.2 = trunc i32 %xor194.16.2 to i8
  store i8 %conv195.16.2, i8* %arrayidx192.16, align 1
  %scevgep184.2 = getelementptr i8, i8* %scevgep185.1, i64 -21
  %2077 = load i8, i8* %scevgep184.2, align 1
  %conv190.1.16.2 = zext i8 %2077 to i32
  %2078 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.2 = zext i8 %2078 to i32
  %xor194.1.16.2 = xor i32 %conv193.1.16.2, %conv190.1.16.2
  %conv195.1.16.2 = trunc i32 %xor194.1.16.2 to i8
  store i8 %conv195.1.16.2, i8* %arrayidx192.16, align 1
  %scevgep185.2 = getelementptr i8, i8* %scevgep185.1, i64 -42
  %2079 = load i8, i8* %scevgep185.2, align 1
  %conv190.16.3 = zext i8 %2079 to i32
  %2080 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.3 = zext i8 %2080 to i32
  %xor194.16.3 = xor i32 %conv193.16.3, %conv190.16.3
  %conv195.16.3 = trunc i32 %xor194.16.3 to i8
  store i8 %conv195.16.3, i8* %arrayidx192.16, align 1
  %scevgep184.3 = getelementptr i8, i8* %scevgep185.2, i64 -21
  %2081 = load i8, i8* %scevgep184.3, align 1
  %conv190.1.16.3 = zext i8 %2081 to i32
  %2082 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.3 = zext i8 %2082 to i32
  %xor194.1.16.3 = xor i32 %conv193.1.16.3, %conv190.1.16.3
  %conv195.1.16.3 = trunc i32 %xor194.1.16.3 to i8
  store i8 %conv195.1.16.3, i8* %arrayidx192.16, align 1
  %scevgep185.3 = getelementptr i8, i8* %scevgep185.2, i64 -42
  %2083 = load i8, i8* %scevgep185.3, align 1
  %conv190.16.4 = zext i8 %2083 to i32
  %2084 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.4 = zext i8 %2084 to i32
  %xor194.16.4 = xor i32 %conv193.16.4, %conv190.16.4
  %conv195.16.4 = trunc i32 %xor194.16.4 to i8
  store i8 %conv195.16.4, i8* %arrayidx192.16, align 1
  %scevgep184.4 = getelementptr i8, i8* %scevgep185.3, i64 -21
  %2085 = load i8, i8* %scevgep184.4, align 1
  %conv190.1.16.4 = zext i8 %2085 to i32
  %2086 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.4 = zext i8 %2086 to i32
  %xor194.1.16.4 = xor i32 %conv193.1.16.4, %conv190.1.16.4
  %conv195.1.16.4 = trunc i32 %xor194.1.16.4 to i8
  store i8 %conv195.1.16.4, i8* %arrayidx192.16, align 1
  %scevgep185.4 = getelementptr i8, i8* %scevgep185.3, i64 -42
  %2087 = load i8, i8* %scevgep185.4, align 1
  %conv190.16.5 = zext i8 %2087 to i32
  %2088 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.5 = zext i8 %2088 to i32
  %xor194.16.5 = xor i32 %conv193.16.5, %conv190.16.5
  %conv195.16.5 = trunc i32 %xor194.16.5 to i8
  store i8 %conv195.16.5, i8* %arrayidx192.16, align 1
  %scevgep184.5 = getelementptr i8, i8* %scevgep185.4, i64 -21
  %2089 = load i8, i8* %scevgep184.5, align 1
  %conv190.1.16.5 = zext i8 %2089 to i32
  %2090 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.5 = zext i8 %2090 to i32
  %xor194.1.16.5 = xor i32 %conv193.1.16.5, %conv190.1.16.5
  %conv195.1.16.5 = trunc i32 %xor194.1.16.5 to i8
  store i8 %conv195.1.16.5, i8* %arrayidx192.16, align 1
  %scevgep185.5 = getelementptr i8, i8* %scevgep185.4, i64 -42
  %2091 = load i8, i8* %scevgep185.5, align 1
  %conv190.16.6 = zext i8 %2091 to i32
  %2092 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.6 = zext i8 %2092 to i32
  %xor194.16.6 = xor i32 %conv193.16.6, %conv190.16.6
  %conv195.16.6 = trunc i32 %xor194.16.6 to i8
  store i8 %conv195.16.6, i8* %arrayidx192.16, align 1
  %scevgep184.6 = getelementptr i8, i8* %scevgep185.5, i64 -21
  %2093 = load i8, i8* %scevgep184.6, align 1
  %conv190.1.16.6 = zext i8 %2093 to i32
  %2094 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.6 = zext i8 %2094 to i32
  %xor194.1.16.6 = xor i32 %conv193.1.16.6, %conv190.1.16.6
  %conv195.1.16.6 = trunc i32 %xor194.1.16.6 to i8
  store i8 %conv195.1.16.6, i8* %arrayidx192.16, align 1
  %scevgep185.6 = getelementptr i8, i8* %scevgep185.5, i64 -42
  %2095 = load i8, i8* %scevgep185.6, align 1
  %conv190.16.7 = zext i8 %2095 to i32
  %2096 = load i8, i8* %arrayidx192.16, align 1
  %conv193.16.7 = zext i8 %2096 to i32
  %xor194.16.7 = xor i32 %conv193.16.7, %conv190.16.7
  %conv195.16.7 = trunc i32 %xor194.16.7 to i8
  store i8 %conv195.16.7, i8* %arrayidx192.16, align 1
  %scevgep184.7 = getelementptr i8, i8* %scevgep185.6, i64 -21
  %2097 = load i8, i8* %scevgep184.7, align 1
  %conv190.1.16.7 = zext i8 %2097 to i32
  %2098 = load i8, i8* %arrayidx192.16, align 1
  %conv193.1.16.7 = zext i8 %2098 to i32
  %xor194.1.16.7 = xor i32 %conv193.1.16.7, %conv190.1.16.7
  %conv195.1.16.7 = trunc i32 %xor194.1.16.7 to i8
  store i8 %conv195.1.16.7, i8* %arrayidx192.16, align 1
  %arrayidx65.17 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 17
  %arrayidx67.17 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.17, i64 0, i64 17
  %2099 = load i8, i8* %arrayidx67.17, align 1
  %arrayidx69.17 = getelementptr inbounds i8, i8* %c, i64 17
  store i8 %2099, i8* %arrayidx69.17, align 1
  %arrayidx122.17 = getelementptr inbounds i8, i8* %c, i64 17
  %scevgep165 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 17, i64 20
  %scevgep170 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 17
  %scevgep176 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 17, i64 20
  %scevgep180 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep182 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 17, i64 20
  %2100 = load i8, i8* %scevgep182, align 1
  %conv80.17 = zext i8 %2100 to i32
  %2101 = load i8, i8* %scevgep176, align 1
  %conv85.17 = zext i8 %2101 to i32
  %xor.17 = xor i32 %conv80.17, %conv85.17
  %scevgep175 = getelementptr i8, i8* %scevgep170, i64 21
  %2102 = load i8, i8* %scevgep175, align 1
  %conv90.17 = zext i8 %2102 to i32
  %xor91.17 = xor i32 %xor.17, %conv90.17
  %2103 = load i8, i8* %scevgep180, align 1
  %conv95.17 = zext i8 %2103 to i32
  %xor96.17 = xor i32 %xor91.17, %conv95.17
  %scevgep178 = getelementptr i8, i8* %scevgep176, i64 -1
  %2104 = load i8, i8* %scevgep178, align 1
  %conv102.17 = zext i8 %2104 to i32
  %xor103.17 = xor i32 %xor96.17, %conv102.17
  %2105 = load i8, i8* %scevgep170, align 1
  %conv109.17 = zext i8 %2105 to i32
  %xor110.17 = xor i32 %xor103.17, %conv109.17
  %conv111.17 = trunc i32 %xor110.17 to i8
  store i8 %conv111.17, i8* %scevgep165, align 1
  %2106 = load i8, i8* %scevgep165, align 1
  %conv120.17 = zext i8 %2106 to i32
  %2107 = load i8, i8* %arrayidx122.17, align 1
  %conv123.17 = zext i8 %2107 to i32
  %xor124.17 = xor i32 %conv123.17, %conv120.17
  %conv125.17 = trunc i32 %xor124.17 to i8
  store i8 %conv125.17, i8* %arrayidx122.17, align 1
  %arrayidx132.17 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 17
  %arrayidx135.17 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.17, i64 0, i64 18
  %2108 = load i8, i8* %arrayidx135.17, align 1
  %conv136.17 = zext i8 %2108 to i32
  %arrayidx138.17 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 17
  %arrayidx141.17 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.17, i64 0, i64 18
  %2109 = load i8, i8* %arrayidx141.17, align 1
  %conv142.17 = zext i8 %2109 to i32
  %xor143.17 = xor i32 %conv136.17, %conv142.17
  %arrayidx146.17 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 18
  %arrayidx148.17 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.17, i64 0, i64 17
  %2110 = load i8, i8* %arrayidx148.17, align 1
  %conv149.17 = zext i8 %2110 to i32
  %xor150.17 = xor i32 %xor143.17, %conv149.17
  %conv151.17 = trunc i32 %xor150.17 to i8
  %arrayidx153.17 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 17
  %arrayidx156.17 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.17, i64 0, i64 18
  store i8 %conv151.17, i8* %arrayidx156.17, align 1
  %arrayidx158.17 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 17
  %arrayidx161.17 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.17, i64 0, i64 18
  %2111 = load i8, i8* %arrayidx161.17, align 1
  %conv162.17 = zext i8 %2111 to i32
  %arrayidx164.17 = getelementptr inbounds i8, i8* %c, i64 17
  %2112 = load i8, i8* %arrayidx164.17, align 1
  %conv165.17 = zext i8 %2112 to i32
  %xor166.17 = xor i32 %conv165.17, %conv162.17
  %conv167.17 = trunc i32 %xor166.17 to i8
  store i8 %conv167.17, i8* %arrayidx164.17, align 1
  %arrayidx173.17 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 17
  %2113 = load i8, i8* %arrayidx173.17, align 1
  %conv174.17 = zext i8 %2113 to i32
  %arrayidx176.17 = getelementptr inbounds i8, i8* %c, i64 17
  %2114 = load i8, i8* %arrayidx176.17, align 1
  %conv177.17 = zext i8 %2114 to i32
  %xor178.17 = xor i32 %conv177.17, %conv174.17
  %conv179.17 = trunc i32 %xor178.17 to i8
  store i8 %conv179.17, i8* %arrayidx176.17, align 1
  %arrayidx65.18 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 18
  %arrayidx67.18 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.18, i64 0, i64 18
  %2115 = load i8, i8* %arrayidx67.18, align 1
  %arrayidx69.18 = getelementptr inbounds i8, i8* %c, i64 18
  store i8 %2115, i8* %arrayidx69.18, align 1
  %arrayidx122.18 = getelementptr inbounds i8, i8* %c, i64 18
  %scevgep148 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 18, i64 20
  %scevgep151 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19, i64 18
  %scevgep157 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 18, i64 20
  %scevgep161 = getelementptr [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %scevgep163 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 18, i64 20
  %2116 = load i8, i8* %scevgep163, align 1
  %conv80.18 = zext i8 %2116 to i32
  %2117 = load i8, i8* %scevgep157, align 1
  %conv85.18 = zext i8 %2117 to i32
  %xor.18 = xor i32 %conv80.18, %conv85.18
  %scevgep156 = getelementptr i8, i8* %scevgep151, i64 21
  %2118 = load i8, i8* %scevgep156, align 1
  %conv90.18 = zext i8 %2118 to i32
  %xor91.18 = xor i32 %xor.18, %conv90.18
  %2119 = load i8, i8* %scevgep161, align 1
  %conv95.18 = zext i8 %2119 to i32
  %xor96.18 = xor i32 %xor91.18, %conv95.18
  %scevgep159 = getelementptr i8, i8* %scevgep157, i64 -1
  %2120 = load i8, i8* %scevgep159, align 1
  %conv102.18 = zext i8 %2120 to i32
  %xor103.18 = xor i32 %xor96.18, %conv102.18
  %2121 = load i8, i8* %scevgep151, align 1
  %conv109.18 = zext i8 %2121 to i32
  %xor110.18 = xor i32 %xor103.18, %conv109.18
  %conv111.18 = trunc i32 %xor110.18 to i8
  store i8 %conv111.18, i8* %scevgep148, align 1
  %2122 = load i8, i8* %scevgep148, align 1
  %conv120.18 = zext i8 %2122 to i32
  %2123 = load i8, i8* %arrayidx122.18, align 1
  %conv123.18 = zext i8 %2123 to i32
  %xor124.18 = xor i32 %conv123.18, %conv120.18
  %conv125.18 = trunc i32 %xor124.18 to i8
  store i8 %conv125.18, i8* %arrayidx122.18, align 1
  %arrayidx192.18 = getelementptr inbounds i8, i8* %c, i64 18
  %scevgep19.18 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 17, i64 18
  %2124 = load i8, i8* %scevgep19.18, align 1
  %conv190.18 = zext i8 %2124 to i32
  %2125 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18 = zext i8 %2125 to i32
  %xor194.18 = xor i32 %conv193.18, %conv190.18
  %conv195.18 = trunc i32 %xor194.18 to i8
  store i8 %conv195.18, i8* %arrayidx192.18, align 1
  %scevgep145 = getelementptr i8, i8* %scevgep19.18, i64 -21
  %2126 = load i8, i8* %scevgep145, align 1
  %conv190.1.18 = zext i8 %2126 to i32
  %2127 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18 = zext i8 %2127 to i32
  %xor194.1.18 = xor i32 %conv193.1.18, %conv190.1.18
  %conv195.1.18 = trunc i32 %xor194.1.18 to i8
  store i8 %conv195.1.18, i8* %arrayidx192.18, align 1
  %scevgep146 = getelementptr i8, i8* %scevgep19.18, i64 -42
  %2128 = load i8, i8* %scevgep146, align 1
  %conv190.18.1 = zext i8 %2128 to i32
  %2129 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.1 = zext i8 %2129 to i32
  %xor194.18.1 = xor i32 %conv193.18.1, %conv190.18.1
  %conv195.18.1 = trunc i32 %xor194.18.1 to i8
  store i8 %conv195.18.1, i8* %arrayidx192.18, align 1
  %scevgep145.1 = getelementptr i8, i8* %scevgep146, i64 -21
  %2130 = load i8, i8* %scevgep145.1, align 1
  %conv190.1.18.1 = zext i8 %2130 to i32
  %2131 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.1 = zext i8 %2131 to i32
  %xor194.1.18.1 = xor i32 %conv193.1.18.1, %conv190.1.18.1
  %conv195.1.18.1 = trunc i32 %xor194.1.18.1 to i8
  store i8 %conv195.1.18.1, i8* %arrayidx192.18, align 1
  %scevgep146.1 = getelementptr i8, i8* %scevgep146, i64 -42
  %2132 = load i8, i8* %scevgep146.1, align 1
  %conv190.18.2 = zext i8 %2132 to i32
  %2133 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.2 = zext i8 %2133 to i32
  %xor194.18.2 = xor i32 %conv193.18.2, %conv190.18.2
  %conv195.18.2 = trunc i32 %xor194.18.2 to i8
  store i8 %conv195.18.2, i8* %arrayidx192.18, align 1
  %scevgep145.2 = getelementptr i8, i8* %scevgep146.1, i64 -21
  %2134 = load i8, i8* %scevgep145.2, align 1
  %conv190.1.18.2 = zext i8 %2134 to i32
  %2135 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.2 = zext i8 %2135 to i32
  %xor194.1.18.2 = xor i32 %conv193.1.18.2, %conv190.1.18.2
  %conv195.1.18.2 = trunc i32 %xor194.1.18.2 to i8
  store i8 %conv195.1.18.2, i8* %arrayidx192.18, align 1
  %scevgep146.2 = getelementptr i8, i8* %scevgep146.1, i64 -42
  %2136 = load i8, i8* %scevgep146.2, align 1
  %conv190.18.3 = zext i8 %2136 to i32
  %2137 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.3 = zext i8 %2137 to i32
  %xor194.18.3 = xor i32 %conv193.18.3, %conv190.18.3
  %conv195.18.3 = trunc i32 %xor194.18.3 to i8
  store i8 %conv195.18.3, i8* %arrayidx192.18, align 1
  %scevgep145.3 = getelementptr i8, i8* %scevgep146.2, i64 -21
  %2138 = load i8, i8* %scevgep145.3, align 1
  %conv190.1.18.3 = zext i8 %2138 to i32
  %2139 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.3 = zext i8 %2139 to i32
  %xor194.1.18.3 = xor i32 %conv193.1.18.3, %conv190.1.18.3
  %conv195.1.18.3 = trunc i32 %xor194.1.18.3 to i8
  store i8 %conv195.1.18.3, i8* %arrayidx192.18, align 1
  %scevgep146.3 = getelementptr i8, i8* %scevgep146.2, i64 -42
  %2140 = load i8, i8* %scevgep146.3, align 1
  %conv190.18.4 = zext i8 %2140 to i32
  %2141 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.4 = zext i8 %2141 to i32
  %xor194.18.4 = xor i32 %conv193.18.4, %conv190.18.4
  %conv195.18.4 = trunc i32 %xor194.18.4 to i8
  store i8 %conv195.18.4, i8* %arrayidx192.18, align 1
  %scevgep145.4 = getelementptr i8, i8* %scevgep146.3, i64 -21
  %2142 = load i8, i8* %scevgep145.4, align 1
  %conv190.1.18.4 = zext i8 %2142 to i32
  %2143 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.4 = zext i8 %2143 to i32
  %xor194.1.18.4 = xor i32 %conv193.1.18.4, %conv190.1.18.4
  %conv195.1.18.4 = trunc i32 %xor194.1.18.4 to i8
  store i8 %conv195.1.18.4, i8* %arrayidx192.18, align 1
  %scevgep146.4 = getelementptr i8, i8* %scevgep146.3, i64 -42
  %2144 = load i8, i8* %scevgep146.4, align 1
  %conv190.18.5 = zext i8 %2144 to i32
  %2145 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.5 = zext i8 %2145 to i32
  %xor194.18.5 = xor i32 %conv193.18.5, %conv190.18.5
  %conv195.18.5 = trunc i32 %xor194.18.5 to i8
  store i8 %conv195.18.5, i8* %arrayidx192.18, align 1
  %scevgep145.5 = getelementptr i8, i8* %scevgep146.4, i64 -21
  %2146 = load i8, i8* %scevgep145.5, align 1
  %conv190.1.18.5 = zext i8 %2146 to i32
  %2147 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.5 = zext i8 %2147 to i32
  %xor194.1.18.5 = xor i32 %conv193.1.18.5, %conv190.1.18.5
  %conv195.1.18.5 = trunc i32 %xor194.1.18.5 to i8
  store i8 %conv195.1.18.5, i8* %arrayidx192.18, align 1
  %scevgep146.5 = getelementptr i8, i8* %scevgep146.4, i64 -42
  %2148 = load i8, i8* %scevgep146.5, align 1
  %conv190.18.6 = zext i8 %2148 to i32
  %2149 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.6 = zext i8 %2149 to i32
  %xor194.18.6 = xor i32 %conv193.18.6, %conv190.18.6
  %conv195.18.6 = trunc i32 %xor194.18.6 to i8
  store i8 %conv195.18.6, i8* %arrayidx192.18, align 1
  %scevgep145.6 = getelementptr i8, i8* %scevgep146.5, i64 -21
  %2150 = load i8, i8* %scevgep145.6, align 1
  %conv190.1.18.6 = zext i8 %2150 to i32
  %2151 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.6 = zext i8 %2151 to i32
  %xor194.1.18.6 = xor i32 %conv193.1.18.6, %conv190.1.18.6
  %conv195.1.18.6 = trunc i32 %xor194.1.18.6 to i8
  store i8 %conv195.1.18.6, i8* %arrayidx192.18, align 1
  %scevgep146.6 = getelementptr i8, i8* %scevgep146.5, i64 -42
  %2152 = load i8, i8* %scevgep146.6, align 1
  %conv190.18.7 = zext i8 %2152 to i32
  %2153 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.7 = zext i8 %2153 to i32
  %xor194.18.7 = xor i32 %conv193.18.7, %conv190.18.7
  %conv195.18.7 = trunc i32 %xor194.18.7 to i8
  store i8 %conv195.18.7, i8* %arrayidx192.18, align 1
  %scevgep145.7 = getelementptr i8, i8* %scevgep146.6, i64 -21
  %2154 = load i8, i8* %scevgep145.7, align 1
  %conv190.1.18.7 = zext i8 %2154 to i32
  %2155 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.7 = zext i8 %2155 to i32
  %xor194.1.18.7 = xor i32 %conv193.1.18.7, %conv190.1.18.7
  %conv195.1.18.7 = trunc i32 %xor194.1.18.7 to i8
  store i8 %conv195.1.18.7, i8* %arrayidx192.18, align 1
  %scevgep146.7 = getelementptr i8, i8* %scevgep146.6, i64 -42
  %2156 = load i8, i8* %scevgep146.7, align 1
  %conv190.18.8 = zext i8 %2156 to i32
  %2157 = load i8, i8* %arrayidx192.18, align 1
  %conv193.18.8 = zext i8 %2157 to i32
  %xor194.18.8 = xor i32 %conv193.18.8, %conv190.18.8
  %conv195.18.8 = trunc i32 %xor194.18.8 to i8
  store i8 %conv195.18.8, i8* %arrayidx192.18, align 1
  %scevgep145.8 = getelementptr i8, i8* %scevgep146.7, i64 -21
  %2158 = load i8, i8* %scevgep145.8, align 1
  %conv190.1.18.8 = zext i8 %2158 to i32
  %2159 = load i8, i8* %arrayidx192.18, align 1
  %conv193.1.18.8 = zext i8 %2159 to i32
  %xor194.1.18.8 = xor i32 %conv193.1.18.8, %conv190.1.18.8
  %conv195.1.18.8 = trunc i32 %xor194.1.18.8 to i8
  store i8 %conv195.1.18.8, i8* %arrayidx192.18, align 1
  %arrayidx65.19 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19
  %arrayidx67.19 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.19, i64 0, i64 19
  %2160 = load i8, i8* %arrayidx67.19, align 1
  %arrayidx69.19 = getelementptr inbounds i8, i8* %c, i64 19
  store i8 %2160, i8* %arrayidx69.19, align 1
  %arrayidx132.19 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 19
  %arrayidx135.19 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132.19, i64 0, i64 20
  %2161 = load i8, i8* %arrayidx135.19, align 1
  %conv136.19 = zext i8 %2161 to i32
  %arrayidx138.19 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 19
  %arrayidx141.19 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138.19, i64 0, i64 20
  %2162 = load i8, i8* %arrayidx141.19, align 1
  %conv142.19 = zext i8 %2162 to i32
  %xor143.19 = xor i32 %conv136.19, %conv142.19
  %arrayidx146.19 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 20
  %arrayidx148.19 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146.19, i64 0, i64 19
  %2163 = load i8, i8* %arrayidx148.19, align 1
  %conv149.19 = zext i8 %2163 to i32
  %xor150.19 = xor i32 %xor143.19, %conv149.19
  %conv151.19 = trunc i32 %xor150.19 to i8
  %arrayidx153.19 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 19
  %arrayidx156.19 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153.19, i64 0, i64 20
  store i8 %conv151.19, i8* %arrayidx156.19, align 1
  %arrayidx158.19 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 19
  %arrayidx161.19 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158.19, i64 0, i64 20
  %2164 = load i8, i8* %arrayidx161.19, align 1
  %conv162.19 = zext i8 %2164 to i32
  %arrayidx164.19 = getelementptr inbounds i8, i8* %c, i64 19
  %2165 = load i8, i8* %arrayidx164.19, align 1
  %conv165.19 = zext i8 %2165 to i32
  %xor166.19 = xor i32 %conv165.19, %conv162.19
  %conv167.19 = trunc i32 %xor166.19 to i8
  store i8 %conv167.19, i8* %arrayidx164.19, align 1
  %arrayidx173.19 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 19
  %2166 = load i8, i8* %arrayidx173.19, align 1
  %conv174.19 = zext i8 %2166 to i32
  %arrayidx176.19 = getelementptr inbounds i8, i8* %c, i64 19
  %2167 = load i8, i8* %arrayidx176.19, align 1
  %conv177.19 = zext i8 %2167 to i32
  %xor178.19 = xor i32 %conv177.19, %conv174.19
  %conv179.19 = trunc i32 %xor178.19 to i8
  store i8 %conv179.19, i8* %arrayidx176.19, align 1
  %arrayidx65.20 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 20
  %arrayidx67.20 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65.20, i64 0, i64 20
  %2168 = load i8, i8* %arrayidx67.20, align 1
  %arrayidx69.20 = getelementptr inbounds i8, i8* %c, i64 20
  store i8 %2168, i8* %arrayidx69.20, align 1
  %arrayidx192.20 = getelementptr inbounds i8, i8* %c, i64 20
  %scevgep19.20 = getelementptr [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 19, i64 20
  %2169 = load i8, i8* %scevgep19.20, align 1
  %conv190.20 = zext i8 %2169 to i32
  %2170 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20 = zext i8 %2170 to i32
  %xor194.20 = xor i32 %conv193.20, %conv190.20
  %conv195.20 = trunc i32 %xor194.20 to i8
  store i8 %conv195.20, i8* %arrayidx192.20, align 1
  %scevgep = getelementptr i8, i8* %scevgep19.20, i64 -21
  %2171 = load i8, i8* %scevgep, align 1
  %conv190.1.20 = zext i8 %2171 to i32
  %2172 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20 = zext i8 %2172 to i32
  %xor194.1.20 = xor i32 %conv193.1.20, %conv190.1.20
  %conv195.1.20 = trunc i32 %xor194.1.20 to i8
  store i8 %conv195.1.20, i8* %arrayidx192.20, align 1
  %scevgep143 = getelementptr i8, i8* %scevgep19.20, i64 -42
  %2173 = load i8, i8* %scevgep143, align 1
  %conv190.20.1 = zext i8 %2173 to i32
  %2174 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.1 = zext i8 %2174 to i32
  %xor194.20.1 = xor i32 %conv193.20.1, %conv190.20.1
  %conv195.20.1 = trunc i32 %xor194.20.1 to i8
  store i8 %conv195.20.1, i8* %arrayidx192.20, align 1
  %scevgep.1542 = getelementptr i8, i8* %scevgep143, i64 -21
  %2175 = load i8, i8* %scevgep.1542, align 1
  %conv190.1.20.1 = zext i8 %2175 to i32
  %2176 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.1 = zext i8 %2176 to i32
  %xor194.1.20.1 = xor i32 %conv193.1.20.1, %conv190.1.20.1
  %conv195.1.20.1 = trunc i32 %xor194.1.20.1 to i8
  store i8 %conv195.1.20.1, i8* %arrayidx192.20, align 1
  %scevgep143.1 = getelementptr i8, i8* %scevgep143, i64 -42
  %2177 = load i8, i8* %scevgep143.1, align 1
  %conv190.20.2 = zext i8 %2177 to i32
  %2178 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.2 = zext i8 %2178 to i32
  %xor194.20.2 = xor i32 %conv193.20.2, %conv190.20.2
  %conv195.20.2 = trunc i32 %xor194.20.2 to i8
  store i8 %conv195.20.2, i8* %arrayidx192.20, align 1
  %scevgep.2543 = getelementptr i8, i8* %scevgep143.1, i64 -21
  %2179 = load i8, i8* %scevgep.2543, align 1
  %conv190.1.20.2 = zext i8 %2179 to i32
  %2180 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.2 = zext i8 %2180 to i32
  %xor194.1.20.2 = xor i32 %conv193.1.20.2, %conv190.1.20.2
  %conv195.1.20.2 = trunc i32 %xor194.1.20.2 to i8
  store i8 %conv195.1.20.2, i8* %arrayidx192.20, align 1
  %scevgep143.2 = getelementptr i8, i8* %scevgep143.1, i64 -42
  %2181 = load i8, i8* %scevgep143.2, align 1
  %conv190.20.3 = zext i8 %2181 to i32
  %2182 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.3 = zext i8 %2182 to i32
  %xor194.20.3 = xor i32 %conv193.20.3, %conv190.20.3
  %conv195.20.3 = trunc i32 %xor194.20.3 to i8
  store i8 %conv195.20.3, i8* %arrayidx192.20, align 1
  %scevgep.3544 = getelementptr i8, i8* %scevgep143.2, i64 -21
  %2183 = load i8, i8* %scevgep.3544, align 1
  %conv190.1.20.3 = zext i8 %2183 to i32
  %2184 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.3 = zext i8 %2184 to i32
  %xor194.1.20.3 = xor i32 %conv193.1.20.3, %conv190.1.20.3
  %conv195.1.20.3 = trunc i32 %xor194.1.20.3 to i8
  store i8 %conv195.1.20.3, i8* %arrayidx192.20, align 1
  %scevgep143.3 = getelementptr i8, i8* %scevgep143.2, i64 -42
  %2185 = load i8, i8* %scevgep143.3, align 1
  %conv190.20.4 = zext i8 %2185 to i32
  %2186 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.4 = zext i8 %2186 to i32
  %xor194.20.4 = xor i32 %conv193.20.4, %conv190.20.4
  %conv195.20.4 = trunc i32 %xor194.20.4 to i8
  store i8 %conv195.20.4, i8* %arrayidx192.20, align 1
  %scevgep.4545 = getelementptr i8, i8* %scevgep143.3, i64 -21
  %2187 = load i8, i8* %scevgep.4545, align 1
  %conv190.1.20.4 = zext i8 %2187 to i32
  %2188 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.4 = zext i8 %2188 to i32
  %xor194.1.20.4 = xor i32 %conv193.1.20.4, %conv190.1.20.4
  %conv195.1.20.4 = trunc i32 %xor194.1.20.4 to i8
  store i8 %conv195.1.20.4, i8* %arrayidx192.20, align 1
  %scevgep143.4 = getelementptr i8, i8* %scevgep143.3, i64 -42
  %2189 = load i8, i8* %scevgep143.4, align 1
  %conv190.20.5 = zext i8 %2189 to i32
  %2190 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.5 = zext i8 %2190 to i32
  %xor194.20.5 = xor i32 %conv193.20.5, %conv190.20.5
  %conv195.20.5 = trunc i32 %xor194.20.5 to i8
  store i8 %conv195.20.5, i8* %arrayidx192.20, align 1
  %scevgep.5546 = getelementptr i8, i8* %scevgep143.4, i64 -21
  %2191 = load i8, i8* %scevgep.5546, align 1
  %conv190.1.20.5 = zext i8 %2191 to i32
  %2192 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.5 = zext i8 %2192 to i32
  %xor194.1.20.5 = xor i32 %conv193.1.20.5, %conv190.1.20.5
  %conv195.1.20.5 = trunc i32 %xor194.1.20.5 to i8
  store i8 %conv195.1.20.5, i8* %arrayidx192.20, align 1
  %scevgep143.5 = getelementptr i8, i8* %scevgep143.4, i64 -42
  %2193 = load i8, i8* %scevgep143.5, align 1
  %conv190.20.6 = zext i8 %2193 to i32
  %2194 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.6 = zext i8 %2194 to i32
  %xor194.20.6 = xor i32 %conv193.20.6, %conv190.20.6
  %conv195.20.6 = trunc i32 %xor194.20.6 to i8
  store i8 %conv195.20.6, i8* %arrayidx192.20, align 1
  %scevgep.6547 = getelementptr i8, i8* %scevgep143.5, i64 -21
  %2195 = load i8, i8* %scevgep.6547, align 1
  %conv190.1.20.6 = zext i8 %2195 to i32
  %2196 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.6 = zext i8 %2196 to i32
  %xor194.1.20.6 = xor i32 %conv193.1.20.6, %conv190.1.20.6
  %conv195.1.20.6 = trunc i32 %xor194.1.20.6 to i8
  store i8 %conv195.1.20.6, i8* %arrayidx192.20, align 1
  %scevgep143.6 = getelementptr i8, i8* %scevgep143.5, i64 -42
  %2197 = load i8, i8* %scevgep143.6, align 1
  %conv190.20.7 = zext i8 %2197 to i32
  %2198 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.7 = zext i8 %2198 to i32
  %xor194.20.7 = xor i32 %conv193.20.7, %conv190.20.7
  %conv195.20.7 = trunc i32 %xor194.20.7 to i8
  store i8 %conv195.20.7, i8* %arrayidx192.20, align 1
  %scevgep.7548 = getelementptr i8, i8* %scevgep143.6, i64 -21
  %2199 = load i8, i8* %scevgep.7548, align 1
  %conv190.1.20.7 = zext i8 %2199 to i32
  %2200 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.7 = zext i8 %2200 to i32
  %xor194.1.20.7 = xor i32 %conv193.1.20.7, %conv190.1.20.7
  %conv195.1.20.7 = trunc i32 %xor194.1.20.7 to i8
  store i8 %conv195.1.20.7, i8* %arrayidx192.20, align 1
  %scevgep143.7 = getelementptr i8, i8* %scevgep143.6, i64 -42
  %2201 = load i8, i8* %scevgep143.7, align 1
  %conv190.20.8 = zext i8 %2201 to i32
  %2202 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.8 = zext i8 %2202 to i32
  %xor194.20.8 = xor i32 %conv193.20.8, %conv190.20.8
  %conv195.20.8 = trunc i32 %xor194.20.8 to i8
  store i8 %conv195.20.8, i8* %arrayidx192.20, align 1
  %scevgep.8549 = getelementptr i8, i8* %scevgep143.7, i64 -21
  %2203 = load i8, i8* %scevgep.8549, align 1
  %conv190.1.20.8 = zext i8 %2203 to i32
  %2204 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.8 = zext i8 %2204 to i32
  %xor194.1.20.8 = xor i32 %conv193.1.20.8, %conv190.1.20.8
  %conv195.1.20.8 = trunc i32 %xor194.1.20.8 to i8
  store i8 %conv195.1.20.8, i8* %arrayidx192.20, align 1
  %scevgep143.8 = getelementptr i8, i8* %scevgep143.7, i64 -42
  %2205 = load i8, i8* %scevgep143.8, align 1
  %conv190.20.9 = zext i8 %2205 to i32
  %2206 = load i8, i8* %arrayidx192.20, align 1
  %conv193.20.9 = zext i8 %2206 to i32
  %xor194.20.9 = xor i32 %conv193.20.9, %conv190.20.9
  %conv195.20.9 = trunc i32 %xor194.20.9 to i8
  store i8 %conv195.20.9, i8* %arrayidx192.20, align 1
  %scevgep.9550 = getelementptr i8, i8* %scevgep143.8, i64 -21
  %2207 = load i8, i8* %scevgep.9550, align 1
  %conv190.1.20.9 = zext i8 %2207 to i32
  %2208 = load i8, i8* %arrayidx192.20, align 1
  %conv193.1.20.9 = zext i8 %2208 to i32
  %xor194.1.20.9 = xor i32 %conv193.1.20.9, %conv190.1.20.9
  %conv195.1.20.9 = trunc i32 %xor194.1.20.9 to i8
  store i8 %conv195.1.20.9, i8* %arrayidx192.20, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %2209 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %2210 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %2210 to i32
  %conv1.i.i236.1 = zext i8 %2209 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %2211 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %2211 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %2212 = load i8, i8* %scevgep.3, align 1
  %conv.i.i235.3 = zext i8 %2212 to i32
  %conv1.i.i236.3 = zext i8 %conv2.i.i238.2 to i32
  %xor.i.i237.3 = xor i32 %conv1.i.i236.3, %conv.i.i235.3
  %conv2.i.i238.3 = trunc i32 %xor.i.i237.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %2213 = load i8, i8* %scevgep.4, align 1
  %conv.i.i235.4 = zext i8 %2213 to i32
  %conv1.i.i236.4 = zext i8 %conv2.i.i238.3 to i32
  %xor.i.i237.4 = xor i32 %conv1.i.i236.4, %conv.i.i235.4
  %conv2.i.i238.4 = trunc i32 %xor.i.i237.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %2214 = load i8, i8* %scevgep.5, align 1
  %conv.i.i235.5 = zext i8 %2214 to i32
  %conv1.i.i236.5 = zext i8 %conv2.i.i238.4 to i32
  %xor.i.i237.5 = xor i32 %conv1.i.i236.5, %conv.i.i235.5
  %conv2.i.i238.5 = trunc i32 %xor.i.i237.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %2215 = load i8, i8* %scevgep.6, align 1
  %conv.i.i235.6 = zext i8 %2215 to i32
  %conv1.i.i236.6 = zext i8 %conv2.i.i238.5 to i32
  %xor.i.i237.6 = xor i32 %conv1.i.i236.6, %conv.i.i235.6
  %conv2.i.i238.6 = trunc i32 %xor.i.i237.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %2216 = load i8, i8* %scevgep.7, align 1
  %conv.i.i235.7 = zext i8 %2216 to i32
  %conv1.i.i236.7 = zext i8 %conv2.i.i238.6 to i32
  %xor.i.i237.7 = xor i32 %conv1.i.i236.7, %conv.i.i235.7
  %conv2.i.i238.7 = trunc i32 %xor.i.i237.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %2217 = load i8, i8* %scevgep.8, align 1
  %conv.i.i235.8 = zext i8 %2217 to i32
  %conv1.i.i236.8 = zext i8 %conv2.i.i238.7 to i32
  %xor.i.i237.8 = xor i32 %conv1.i.i236.8, %conv.i.i235.8
  %conv2.i.i238.8 = trunc i32 %xor.i.i237.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %2218 = load i8, i8* %scevgep.9, align 1
  %conv.i.i235.9 = zext i8 %2218 to i32
  %conv1.i.i236.9 = zext i8 %conv2.i.i238.8 to i32
  %xor.i.i237.9 = xor i32 %conv1.i.i236.9, %conv.i.i235.9
  %conv2.i.i238.9 = trunc i32 %xor.i.i237.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %2219 = load i8, i8* %scevgep.10, align 1
  %conv.i.i235.10 = zext i8 %2219 to i32
  %conv1.i.i236.10 = zext i8 %conv2.i.i238.9 to i32
  %xor.i.i237.10 = xor i32 %conv1.i.i236.10, %conv.i.i235.10
  %conv2.i.i238.10 = trunc i32 %xor.i.i237.10 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  %2220 = load i8, i8* %scevgep.11, align 1
  %conv.i.i235.11 = zext i8 %2220 to i32
  %conv1.i.i236.11 = zext i8 %conv2.i.i238.10 to i32
  %xor.i.i237.11 = xor i32 %conv1.i.i236.11, %conv.i.i235.11
  %conv2.i.i238.11 = trunc i32 %xor.i.i237.11 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  %2221 = load i8, i8* %scevgep.12, align 1
  %conv.i.i235.12 = zext i8 %2221 to i32
  %conv1.i.i236.12 = zext i8 %conv2.i.i238.11 to i32
  %xor.i.i237.12 = xor i32 %conv1.i.i236.12, %conv.i.i235.12
  %conv2.i.i238.12 = trunc i32 %xor.i.i237.12 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  %2222 = load i8, i8* %scevgep.13, align 1
  %conv.i.i235.13 = zext i8 %2222 to i32
  %conv1.i.i236.13 = zext i8 %conv2.i.i238.12 to i32
  %xor.i.i237.13 = xor i32 %conv1.i.i236.13, %conv.i.i235.13
  %conv2.i.i238.13 = trunc i32 %xor.i.i237.13 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  %2223 = load i8, i8* %scevgep.14, align 1
  %conv.i.i235.14 = zext i8 %2223 to i32
  %conv1.i.i236.14 = zext i8 %conv2.i.i238.13 to i32
  %xor.i.i237.14 = xor i32 %conv1.i.i236.14, %conv.i.i235.14
  %conv2.i.i238.14 = trunc i32 %xor.i.i237.14 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  %2224 = load i8, i8* %scevgep.15, align 1
  %conv.i.i235.15 = zext i8 %2224 to i32
  %conv1.i.i236.15 = zext i8 %conv2.i.i238.14 to i32
  %xor.i.i237.15 = xor i32 %conv1.i.i236.15, %conv.i.i235.15
  %conv2.i.i238.15 = trunc i32 %xor.i.i237.15 to i8
  %scevgep.16 = getelementptr i8, i8* %c, i64 16
  %2225 = load i8, i8* %scevgep.16, align 1
  %conv.i.i235.16 = zext i8 %2225 to i32
  %conv1.i.i236.16 = zext i8 %conv2.i.i238.15 to i32
  %xor.i.i237.16 = xor i32 %conv1.i.i236.16, %conv.i.i235.16
  %conv2.i.i238.16 = trunc i32 %xor.i.i237.16 to i8
  %scevgep.17 = getelementptr i8, i8* %c, i64 17
  %2226 = load i8, i8* %scevgep.17, align 1
  %conv.i.i235.17 = zext i8 %2226 to i32
  %conv1.i.i236.17 = zext i8 %conv2.i.i238.16 to i32
  %xor.i.i237.17 = xor i32 %conv1.i.i236.17, %conv.i.i235.17
  %conv2.i.i238.17 = trunc i32 %xor.i.i237.17 to i8
  %scevgep.18 = getelementptr i8, i8* %c, i64 18
  %2227 = load i8, i8* %scevgep.18, align 1
  %conv.i.i235.18 = zext i8 %2227 to i32
  %conv1.i.i236.18 = zext i8 %conv2.i.i238.17 to i32
  %xor.i.i237.18 = xor i32 %conv1.i.i236.18, %conv.i.i235.18
  %conv2.i.i238.18 = trunc i32 %xor.i.i237.18 to i8
  %scevgep.19 = getelementptr i8, i8* %c, i64 19
  %2228 = load i8, i8* %scevgep.19, align 1
  %conv.i.i235.19 = zext i8 %2228 to i32
  %conv1.i.i236.19 = zext i8 %conv2.i.i238.18 to i32
  %xor.i.i237.19 = xor i32 %conv1.i.i236.19, %conv.i.i235.19
  %conv2.i.i238.19 = trunc i32 %xor.i.i237.19 to i8
  %scevgep.20 = getelementptr i8, i8* %c, i64 20
  %2229 = load i8, i8* %scevgep.20, align 1
  %conv.i.i235.20 = zext i8 %2229 to i32
  %conv1.i.i236.20 = zext i8 %conv2.i.i238.19 to i32
  %xor.i.i237.20 = xor i32 %conv1.i.i236.20, %conv.i.i235.20
  %conv2.i.i238.20 = trunc i32 %xor.i.i237.20 to i8
  %conv205 = zext i8 %conv2.i.i238.20 to i32
  %cmp206 = icmp eq i32 %conv203, %conv205
  call void @assert(i1 zeroext %cmp206)
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
