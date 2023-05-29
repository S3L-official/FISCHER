; ModuleID = '../examples/belaid-eurocrypto2016.inline-15.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 15, align 4
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
  %alpha = alloca [16 x [16 x i8]], align 16
  %t = alloca [16 x [16 x i8]], align 16
  %r = alloca [16 x [16 x i8]], align 16
  %rr = alloca [16 x i8], align 16
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
  %conv3 = zext i8 %conv2.i.i.15 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %16 = load i8, i8* %b, align 1
  %scevgep44.1 = getelementptr i8, i8* %b, i64 1
  %17 = load i8, i8* %scevgep44.1, align 1
  %conv.i.i218.1 = zext i8 %17 to i32
  %conv1.i.i219.1 = zext i8 %16 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep44.2 = getelementptr i8, i8* %b, i64 2
  %18 = load i8, i8* %scevgep44.2, align 1
  %conv.i.i218.2 = zext i8 %18 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep44.3 = getelementptr i8, i8* %b, i64 3
  %19 = load i8, i8* %scevgep44.3, align 1
  %conv.i.i218.3 = zext i8 %19 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %scevgep44.4 = getelementptr i8, i8* %b, i64 4
  %20 = load i8, i8* %scevgep44.4, align 1
  %conv.i.i218.4 = zext i8 %20 to i32
  %conv1.i.i219.4 = zext i8 %conv2.i.i221.3 to i32
  %xor.i.i220.4 = xor i32 %conv1.i.i219.4, %conv.i.i218.4
  %conv2.i.i221.4 = trunc i32 %xor.i.i220.4 to i8
  %scevgep44.5 = getelementptr i8, i8* %b, i64 5
  %21 = load i8, i8* %scevgep44.5, align 1
  %conv.i.i218.5 = zext i8 %21 to i32
  %conv1.i.i219.5 = zext i8 %conv2.i.i221.4 to i32
  %xor.i.i220.5 = xor i32 %conv1.i.i219.5, %conv.i.i218.5
  %conv2.i.i221.5 = trunc i32 %xor.i.i220.5 to i8
  %scevgep44.6 = getelementptr i8, i8* %b, i64 6
  %22 = load i8, i8* %scevgep44.6, align 1
  %conv.i.i218.6 = zext i8 %22 to i32
  %conv1.i.i219.6 = zext i8 %conv2.i.i221.5 to i32
  %xor.i.i220.6 = xor i32 %conv1.i.i219.6, %conv.i.i218.6
  %conv2.i.i221.6 = trunc i32 %xor.i.i220.6 to i8
  %scevgep44.7 = getelementptr i8, i8* %b, i64 7
  %23 = load i8, i8* %scevgep44.7, align 1
  %conv.i.i218.7 = zext i8 %23 to i32
  %conv1.i.i219.7 = zext i8 %conv2.i.i221.6 to i32
  %xor.i.i220.7 = xor i32 %conv1.i.i219.7, %conv.i.i218.7
  %conv2.i.i221.7 = trunc i32 %xor.i.i220.7 to i8
  %scevgep44.8 = getelementptr i8, i8* %b, i64 8
  %24 = load i8, i8* %scevgep44.8, align 1
  %conv.i.i218.8 = zext i8 %24 to i32
  %conv1.i.i219.8 = zext i8 %conv2.i.i221.7 to i32
  %xor.i.i220.8 = xor i32 %conv1.i.i219.8, %conv.i.i218.8
  %conv2.i.i221.8 = trunc i32 %xor.i.i220.8 to i8
  %scevgep44.9 = getelementptr i8, i8* %b, i64 9
  %25 = load i8, i8* %scevgep44.9, align 1
  %conv.i.i218.9 = zext i8 %25 to i32
  %conv1.i.i219.9 = zext i8 %conv2.i.i221.8 to i32
  %xor.i.i220.9 = xor i32 %conv1.i.i219.9, %conv.i.i218.9
  %conv2.i.i221.9 = trunc i32 %xor.i.i220.9 to i8
  %scevgep44.10 = getelementptr i8, i8* %b, i64 10
  %26 = load i8, i8* %scevgep44.10, align 1
  %conv.i.i218.10 = zext i8 %26 to i32
  %conv1.i.i219.10 = zext i8 %conv2.i.i221.9 to i32
  %xor.i.i220.10 = xor i32 %conv1.i.i219.10, %conv.i.i218.10
  %conv2.i.i221.10 = trunc i32 %xor.i.i220.10 to i8
  %scevgep44.11 = getelementptr i8, i8* %b, i64 11
  %27 = load i8, i8* %scevgep44.11, align 1
  %conv.i.i218.11 = zext i8 %27 to i32
  %conv1.i.i219.11 = zext i8 %conv2.i.i221.10 to i32
  %xor.i.i220.11 = xor i32 %conv1.i.i219.11, %conv.i.i218.11
  %conv2.i.i221.11 = trunc i32 %xor.i.i220.11 to i8
  %scevgep44.12 = getelementptr i8, i8* %b, i64 12
  %28 = load i8, i8* %scevgep44.12, align 1
  %conv.i.i218.12 = zext i8 %28 to i32
  %conv1.i.i219.12 = zext i8 %conv2.i.i221.11 to i32
  %xor.i.i220.12 = xor i32 %conv1.i.i219.12, %conv.i.i218.12
  %conv2.i.i221.12 = trunc i32 %xor.i.i220.12 to i8
  %scevgep44.13 = getelementptr i8, i8* %b, i64 13
  %29 = load i8, i8* %scevgep44.13, align 1
  %conv.i.i218.13 = zext i8 %29 to i32
  %conv1.i.i219.13 = zext i8 %conv2.i.i221.12 to i32
  %xor.i.i220.13 = xor i32 %conv1.i.i219.13, %conv.i.i218.13
  %conv2.i.i221.13 = trunc i32 %xor.i.i220.13 to i8
  %scevgep44.14 = getelementptr i8, i8* %b, i64 14
  %30 = load i8, i8* %scevgep44.14, align 1
  %conv.i.i218.14 = zext i8 %30 to i32
  %conv1.i.i219.14 = zext i8 %conv2.i.i221.13 to i32
  %xor.i.i220.14 = xor i32 %conv1.i.i219.14, %conv.i.i218.14
  %conv2.i.i221.14 = trunc i32 %xor.i.i220.14 to i8
  %scevgep44.15 = getelementptr i8, i8* %b, i64 15
  %31 = load i8, i8* %scevgep44.15, align 1
  %conv.i.i218.15 = zext i8 %31 to i32
  %conv1.i.i219.15 = zext i8 %conv2.i.i221.14 to i32
  %xor.i.i220.15 = xor i32 %conv1.i.i219.15, %conv.i.i218.15
  %conv2.i.i221.15 = trunc i32 %xor.i.i220.15 to i8
  %conv7 = zext i8 %conv2.i.i221.15 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %32 = load i8, i8* %a, align 1
  %33 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %scevgep40 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep40, align 1
  %34 = load i8, i8* %a, align 1
  %scevgep37.1 = getelementptr i8, i8* %b, i64 1
  %35 = load i8, i8* %scevgep37.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %scevgep40.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep40.1, align 1
  %36 = load i8, i8* %a, align 1
  %scevgep37.2 = getelementptr i8, i8* %b, i64 2
  %37 = load i8, i8* %scevgep37.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %scevgep40.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep40.2, align 1
  %38 = load i8, i8* %a, align 1
  %scevgep37.3 = getelementptr i8, i8* %b, i64 3
  %39 = load i8, i8* %scevgep37.3, align 1
  %call18.3 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %scevgep40.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 3
  store i8 %call18.3, i8* %scevgep40.3, align 1
  %40 = load i8, i8* %a, align 1
  %scevgep37.4 = getelementptr i8, i8* %b, i64 4
  %41 = load i8, i8* %scevgep37.4, align 1
  %call18.4 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  %scevgep40.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 4
  store i8 %call18.4, i8* %scevgep40.4, align 1
  %42 = load i8, i8* %a, align 1
  %scevgep37.5 = getelementptr i8, i8* %b, i64 5
  %43 = load i8, i8* %scevgep37.5, align 1
  %call18.5 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep40.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 5
  store i8 %call18.5, i8* %scevgep40.5, align 1
  %44 = load i8, i8* %a, align 1
  %scevgep37.6 = getelementptr i8, i8* %b, i64 6
  %45 = load i8, i8* %scevgep37.6, align 1
  %call18.6 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45)
  %scevgep40.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 6
  store i8 %call18.6, i8* %scevgep40.6, align 1
  %46 = load i8, i8* %a, align 1
  %scevgep37.7 = getelementptr i8, i8* %b, i64 7
  %47 = load i8, i8* %scevgep37.7, align 1
  %call18.7 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %scevgep40.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 7
  store i8 %call18.7, i8* %scevgep40.7, align 1
  %48 = load i8, i8* %a, align 1
  %scevgep37.8 = getelementptr i8, i8* %b, i64 8
  %49 = load i8, i8* %scevgep37.8, align 1
  %call18.8 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49)
  %scevgep40.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 8
  store i8 %call18.8, i8* %scevgep40.8, align 1
  %50 = load i8, i8* %a, align 1
  %scevgep37.9 = getelementptr i8, i8* %b, i64 9
  %51 = load i8, i8* %scevgep37.9, align 1
  %call18.9 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51)
  %scevgep40.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 9
  store i8 %call18.9, i8* %scevgep40.9, align 1
  %52 = load i8, i8* %a, align 1
  %scevgep37.10 = getelementptr i8, i8* %b, i64 10
  %53 = load i8, i8* %scevgep37.10, align 1
  %call18.10 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53)
  %scevgep40.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 10
  store i8 %call18.10, i8* %scevgep40.10, align 1
  %54 = load i8, i8* %a, align 1
  %scevgep37.11 = getelementptr i8, i8* %b, i64 11
  %55 = load i8, i8* %scevgep37.11, align 1
  %call18.11 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55)
  %scevgep40.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 11
  store i8 %call18.11, i8* %scevgep40.11, align 1
  %56 = load i8, i8* %a, align 1
  %scevgep37.12 = getelementptr i8, i8* %b, i64 12
  %57 = load i8, i8* %scevgep37.12, align 1
  %call18.12 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57)
  %scevgep40.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 12
  store i8 %call18.12, i8* %scevgep40.12, align 1
  %58 = load i8, i8* %a, align 1
  %scevgep37.13 = getelementptr i8, i8* %b, i64 13
  %59 = load i8, i8* %scevgep37.13, align 1
  %call18.13 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %scevgep40.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 13
  store i8 %call18.13, i8* %scevgep40.13, align 1
  %60 = load i8, i8* %a, align 1
  %scevgep37.14 = getelementptr i8, i8* %b, i64 14
  %61 = load i8, i8* %scevgep37.14, align 1
  %call18.14 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61)
  %scevgep40.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 14
  store i8 %call18.14, i8* %scevgep40.14, align 1
  %62 = load i8, i8* %a, align 1
  %scevgep37.15 = getelementptr i8, i8* %b, i64 15
  %63 = load i8, i8* %scevgep37.15, align 1
  %call18.15 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63)
  %scevgep40.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0, i64 15
  store i8 %call18.15, i8* %scevgep40.15, align 1
  %scevgep39 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep39 to [16 x [16 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %65 = load i8, i8* %arrayidx.1, align 1
  %66 = load i8, i8* %b, align 1
  %call18.150 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %scevgep40.151 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 0
  store i8 %call18.150, i8* %scevgep40.151, align 1
  %67 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.1.1 = getelementptr i8, i8* %b, i64 1
  %68 = load i8, i8* %scevgep37.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  %scevgep40.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep40.1.1, align 1
  %69 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.2.1 = getelementptr i8, i8* %b, i64 2
  %70 = load i8, i8* %scevgep37.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70)
  %scevgep40.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep40.2.1, align 1
  %71 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.3.1 = getelementptr i8, i8* %b, i64 3
  %72 = load i8, i8* %scevgep37.3.1, align 1
  %call18.3.1 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72)
  %scevgep40.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 3
  store i8 %call18.3.1, i8* %scevgep40.3.1, align 1
  %73 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.4.1 = getelementptr i8, i8* %b, i64 4
  %74 = load i8, i8* %scevgep37.4.1, align 1
  %call18.4.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74)
  %scevgep40.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 4
  store i8 %call18.4.1, i8* %scevgep40.4.1, align 1
  %75 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.5.1 = getelementptr i8, i8* %b, i64 5
  %76 = load i8, i8* %scevgep37.5.1, align 1
  %call18.5.1 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76)
  %scevgep40.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 5
  store i8 %call18.5.1, i8* %scevgep40.5.1, align 1
  %77 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.6.1 = getelementptr i8, i8* %b, i64 6
  %78 = load i8, i8* %scevgep37.6.1, align 1
  %call18.6.1 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78)
  %scevgep40.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 6
  store i8 %call18.6.1, i8* %scevgep40.6.1, align 1
  %79 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.7.1 = getelementptr i8, i8* %b, i64 7
  %80 = load i8, i8* %scevgep37.7.1, align 1
  %call18.7.1 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80)
  %scevgep40.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 7
  store i8 %call18.7.1, i8* %scevgep40.7.1, align 1
  %81 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.8.1 = getelementptr i8, i8* %b, i64 8
  %82 = load i8, i8* %scevgep37.8.1, align 1
  %call18.8.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %scevgep40.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 8
  store i8 %call18.8.1, i8* %scevgep40.8.1, align 1
  %83 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.9.1 = getelementptr i8, i8* %b, i64 9
  %84 = load i8, i8* %scevgep37.9.1, align 1
  %call18.9.1 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84)
  %scevgep40.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 9
  store i8 %call18.9.1, i8* %scevgep40.9.1, align 1
  %85 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.10.1 = getelementptr i8, i8* %b, i64 10
  %86 = load i8, i8* %scevgep37.10.1, align 1
  %call18.10.1 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86)
  %scevgep40.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 10
  store i8 %call18.10.1, i8* %scevgep40.10.1, align 1
  %87 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.11.1 = getelementptr i8, i8* %b, i64 11
  %88 = load i8, i8* %scevgep37.11.1, align 1
  %call18.11.1 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88)
  %scevgep40.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 11
  store i8 %call18.11.1, i8* %scevgep40.11.1, align 1
  %89 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.12.1 = getelementptr i8, i8* %b, i64 12
  %90 = load i8, i8* %scevgep37.12.1, align 1
  %call18.12.1 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90)
  %scevgep40.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 12
  store i8 %call18.12.1, i8* %scevgep40.12.1, align 1
  %91 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.13.1 = getelementptr i8, i8* %b, i64 13
  %92 = load i8, i8* %scevgep37.13.1, align 1
  %call18.13.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %scevgep40.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 13
  store i8 %call18.13.1, i8* %scevgep40.13.1, align 1
  %93 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.14.1 = getelementptr i8, i8* %b, i64 14
  %94 = load i8, i8* %scevgep37.14.1, align 1
  %call18.14.1 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94)
  %scevgep40.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 14
  store i8 %call18.14.1, i8* %scevgep40.14.1, align 1
  %95 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.15.1 = getelementptr i8, i8* %b, i64 15
  %96 = load i8, i8* %scevgep37.15.1, align 1
  %call18.15.1 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96)
  %scevgep40.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 0, i64 15
  store i8 %call18.15.1, i8* %scevgep40.15.1, align 1
  %scevgep39.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %64, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep39.1 to [16 x [16 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %98 = load i8, i8* %arrayidx.2, align 1
  %99 = load i8, i8* %b, align 1
  %call18.253 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99)
  %scevgep40.254 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 0
  store i8 %call18.253, i8* %scevgep40.254, align 1
  %100 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.1.2 = getelementptr i8, i8* %b, i64 1
  %101 = load i8, i8* %scevgep37.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101)
  %scevgep40.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep40.1.2, align 1
  %102 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.2.2 = getelementptr i8, i8* %b, i64 2
  %103 = load i8, i8* %scevgep37.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103)
  %scevgep40.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep40.2.2, align 1
  %104 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.3.2 = getelementptr i8, i8* %b, i64 3
  %105 = load i8, i8* %scevgep37.3.2, align 1
  %call18.3.2 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105)
  %scevgep40.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 3
  store i8 %call18.3.2, i8* %scevgep40.3.2, align 1
  %106 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.4.2 = getelementptr i8, i8* %b, i64 4
  %107 = load i8, i8* %scevgep37.4.2, align 1
  %call18.4.2 = call zeroext i8 @mult(i8 zeroext %106, i8 zeroext %107)
  %scevgep40.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 4
  store i8 %call18.4.2, i8* %scevgep40.4.2, align 1
  %108 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.5.2 = getelementptr i8, i8* %b, i64 5
  %109 = load i8, i8* %scevgep37.5.2, align 1
  %call18.5.2 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109)
  %scevgep40.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 5
  store i8 %call18.5.2, i8* %scevgep40.5.2, align 1
  %110 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.6.2 = getelementptr i8, i8* %b, i64 6
  %111 = load i8, i8* %scevgep37.6.2, align 1
  %call18.6.2 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111)
  %scevgep40.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 6
  store i8 %call18.6.2, i8* %scevgep40.6.2, align 1
  %112 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.7.2 = getelementptr i8, i8* %b, i64 7
  %113 = load i8, i8* %scevgep37.7.2, align 1
  %call18.7.2 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113)
  %scevgep40.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 7
  store i8 %call18.7.2, i8* %scevgep40.7.2, align 1
  %114 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.8.2 = getelementptr i8, i8* %b, i64 8
  %115 = load i8, i8* %scevgep37.8.2, align 1
  %call18.8.2 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115)
  %scevgep40.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 8
  store i8 %call18.8.2, i8* %scevgep40.8.2, align 1
  %116 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.9.2 = getelementptr i8, i8* %b, i64 9
  %117 = load i8, i8* %scevgep37.9.2, align 1
  %call18.9.2 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117)
  %scevgep40.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 9
  store i8 %call18.9.2, i8* %scevgep40.9.2, align 1
  %118 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.10.2 = getelementptr i8, i8* %b, i64 10
  %119 = load i8, i8* %scevgep37.10.2, align 1
  %call18.10.2 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119)
  %scevgep40.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 10
  store i8 %call18.10.2, i8* %scevgep40.10.2, align 1
  %120 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.11.2 = getelementptr i8, i8* %b, i64 11
  %121 = load i8, i8* %scevgep37.11.2, align 1
  %call18.11.2 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121)
  %scevgep40.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 11
  store i8 %call18.11.2, i8* %scevgep40.11.2, align 1
  %122 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.12.2 = getelementptr i8, i8* %b, i64 12
  %123 = load i8, i8* %scevgep37.12.2, align 1
  %call18.12.2 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123)
  %scevgep40.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 12
  store i8 %call18.12.2, i8* %scevgep40.12.2, align 1
  %124 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.13.2 = getelementptr i8, i8* %b, i64 13
  %125 = load i8, i8* %scevgep37.13.2, align 1
  %call18.13.2 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125)
  %scevgep40.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 13
  store i8 %call18.13.2, i8* %scevgep40.13.2, align 1
  %126 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.14.2 = getelementptr i8, i8* %b, i64 14
  %127 = load i8, i8* %scevgep37.14.2, align 1
  %call18.14.2 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127)
  %scevgep40.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 14
  store i8 %call18.14.2, i8* %scevgep40.14.2, align 1
  %128 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.15.2 = getelementptr i8, i8* %b, i64 15
  %129 = load i8, i8* %scevgep37.15.2, align 1
  %call18.15.2 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129)
  %scevgep40.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 0, i64 15
  store i8 %call18.15.2, i8* %scevgep40.15.2, align 1
  %scevgep39.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %97, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep39.2 to [16 x [16 x i8]]*
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3
  %131 = load i8, i8* %arrayidx.3, align 1
  %132 = load i8, i8* %b, align 1
  %call18.356 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132)
  %scevgep40.357 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 0
  store i8 %call18.356, i8* %scevgep40.357, align 1
  %133 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.1.3 = getelementptr i8, i8* %b, i64 1
  %134 = load i8, i8* %scevgep37.1.3, align 1
  %call18.1.3 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134)
  %scevgep40.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 1
  store i8 %call18.1.3, i8* %scevgep40.1.3, align 1
  %135 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.2.3 = getelementptr i8, i8* %b, i64 2
  %136 = load i8, i8* %scevgep37.2.3, align 1
  %call18.2.3 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136)
  %scevgep40.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 2
  store i8 %call18.2.3, i8* %scevgep40.2.3, align 1
  %137 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.3.3 = getelementptr i8, i8* %b, i64 3
  %138 = load i8, i8* %scevgep37.3.3, align 1
  %call18.3.3 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138)
  %scevgep40.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 3
  store i8 %call18.3.3, i8* %scevgep40.3.3, align 1
  %139 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.4.3 = getelementptr i8, i8* %b, i64 4
  %140 = load i8, i8* %scevgep37.4.3, align 1
  %call18.4.3 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140)
  %scevgep40.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 4
  store i8 %call18.4.3, i8* %scevgep40.4.3, align 1
  %141 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.5.3 = getelementptr i8, i8* %b, i64 5
  %142 = load i8, i8* %scevgep37.5.3, align 1
  %call18.5.3 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142)
  %scevgep40.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 5
  store i8 %call18.5.3, i8* %scevgep40.5.3, align 1
  %143 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.6.3 = getelementptr i8, i8* %b, i64 6
  %144 = load i8, i8* %scevgep37.6.3, align 1
  %call18.6.3 = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144)
  %scevgep40.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 6
  store i8 %call18.6.3, i8* %scevgep40.6.3, align 1
  %145 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.7.3 = getelementptr i8, i8* %b, i64 7
  %146 = load i8, i8* %scevgep37.7.3, align 1
  %call18.7.3 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %scevgep40.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 7
  store i8 %call18.7.3, i8* %scevgep40.7.3, align 1
  %147 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.8.3 = getelementptr i8, i8* %b, i64 8
  %148 = load i8, i8* %scevgep37.8.3, align 1
  %call18.8.3 = call zeroext i8 @mult(i8 zeroext %147, i8 zeroext %148)
  %scevgep40.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 8
  store i8 %call18.8.3, i8* %scevgep40.8.3, align 1
  %149 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.9.3 = getelementptr i8, i8* %b, i64 9
  %150 = load i8, i8* %scevgep37.9.3, align 1
  %call18.9.3 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150)
  %scevgep40.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 9
  store i8 %call18.9.3, i8* %scevgep40.9.3, align 1
  %151 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.10.3 = getelementptr i8, i8* %b, i64 10
  %152 = load i8, i8* %scevgep37.10.3, align 1
  %call18.10.3 = call zeroext i8 @mult(i8 zeroext %151, i8 zeroext %152)
  %scevgep40.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 10
  store i8 %call18.10.3, i8* %scevgep40.10.3, align 1
  %153 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.11.3 = getelementptr i8, i8* %b, i64 11
  %154 = load i8, i8* %scevgep37.11.3, align 1
  %call18.11.3 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154)
  %scevgep40.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 11
  store i8 %call18.11.3, i8* %scevgep40.11.3, align 1
  %155 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.12.3 = getelementptr i8, i8* %b, i64 12
  %156 = load i8, i8* %scevgep37.12.3, align 1
  %call18.12.3 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156)
  %scevgep40.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 12
  store i8 %call18.12.3, i8* %scevgep40.12.3, align 1
  %157 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.13.3 = getelementptr i8, i8* %b, i64 13
  %158 = load i8, i8* %scevgep37.13.3, align 1
  %call18.13.3 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158)
  %scevgep40.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 13
  store i8 %call18.13.3, i8* %scevgep40.13.3, align 1
  %159 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.14.3 = getelementptr i8, i8* %b, i64 14
  %160 = load i8, i8* %scevgep37.14.3, align 1
  %call18.14.3 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160)
  %scevgep40.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 14
  store i8 %call18.14.3, i8* %scevgep40.14.3, align 1
  %161 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.15.3 = getelementptr i8, i8* %b, i64 15
  %162 = load i8, i8* %scevgep37.15.3, align 1
  %call18.15.3 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162)
  %scevgep40.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 0, i64 15
  store i8 %call18.15.3, i8* %scevgep40.15.3, align 1
  %scevgep39.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %130, i64 0, i64 1, i64 0
  %163 = bitcast i8* %scevgep39.3 to [16 x [16 x i8]]*
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 4
  %164 = load i8, i8* %arrayidx.4, align 1
  %165 = load i8, i8* %b, align 1
  %call18.459 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165)
  %scevgep40.460 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 0
  store i8 %call18.459, i8* %scevgep40.460, align 1
  %166 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.1.4 = getelementptr i8, i8* %b, i64 1
  %167 = load i8, i8* %scevgep37.1.4, align 1
  %call18.1.4 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167)
  %scevgep40.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 1
  store i8 %call18.1.4, i8* %scevgep40.1.4, align 1
  %168 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.2.4 = getelementptr i8, i8* %b, i64 2
  %169 = load i8, i8* %scevgep37.2.4, align 1
  %call18.2.4 = call zeroext i8 @mult(i8 zeroext %168, i8 zeroext %169)
  %scevgep40.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 2
  store i8 %call18.2.4, i8* %scevgep40.2.4, align 1
  %170 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.3.4 = getelementptr i8, i8* %b, i64 3
  %171 = load i8, i8* %scevgep37.3.4, align 1
  %call18.3.4 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171)
  %scevgep40.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 3
  store i8 %call18.3.4, i8* %scevgep40.3.4, align 1
  %172 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.4.4 = getelementptr i8, i8* %b, i64 4
  %173 = load i8, i8* %scevgep37.4.4, align 1
  %call18.4.4 = call zeroext i8 @mult(i8 zeroext %172, i8 zeroext %173)
  %scevgep40.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 4
  store i8 %call18.4.4, i8* %scevgep40.4.4, align 1
  %174 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.5.4 = getelementptr i8, i8* %b, i64 5
  %175 = load i8, i8* %scevgep37.5.4, align 1
  %call18.5.4 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175)
  %scevgep40.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 5
  store i8 %call18.5.4, i8* %scevgep40.5.4, align 1
  %176 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.6.4 = getelementptr i8, i8* %b, i64 6
  %177 = load i8, i8* %scevgep37.6.4, align 1
  %call18.6.4 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177)
  %scevgep40.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 6
  store i8 %call18.6.4, i8* %scevgep40.6.4, align 1
  %178 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.7.4 = getelementptr i8, i8* %b, i64 7
  %179 = load i8, i8* %scevgep37.7.4, align 1
  %call18.7.4 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179)
  %scevgep40.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 7
  store i8 %call18.7.4, i8* %scevgep40.7.4, align 1
  %180 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.8.4 = getelementptr i8, i8* %b, i64 8
  %181 = load i8, i8* %scevgep37.8.4, align 1
  %call18.8.4 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181)
  %scevgep40.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 8
  store i8 %call18.8.4, i8* %scevgep40.8.4, align 1
  %182 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.9.4 = getelementptr i8, i8* %b, i64 9
  %183 = load i8, i8* %scevgep37.9.4, align 1
  %call18.9.4 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183)
  %scevgep40.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 9
  store i8 %call18.9.4, i8* %scevgep40.9.4, align 1
  %184 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.10.4 = getelementptr i8, i8* %b, i64 10
  %185 = load i8, i8* %scevgep37.10.4, align 1
  %call18.10.4 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185)
  %scevgep40.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 10
  store i8 %call18.10.4, i8* %scevgep40.10.4, align 1
  %186 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.11.4 = getelementptr i8, i8* %b, i64 11
  %187 = load i8, i8* %scevgep37.11.4, align 1
  %call18.11.4 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187)
  %scevgep40.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 11
  store i8 %call18.11.4, i8* %scevgep40.11.4, align 1
  %188 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.12.4 = getelementptr i8, i8* %b, i64 12
  %189 = load i8, i8* %scevgep37.12.4, align 1
  %call18.12.4 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189)
  %scevgep40.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 12
  store i8 %call18.12.4, i8* %scevgep40.12.4, align 1
  %190 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.13.4 = getelementptr i8, i8* %b, i64 13
  %191 = load i8, i8* %scevgep37.13.4, align 1
  %call18.13.4 = call zeroext i8 @mult(i8 zeroext %190, i8 zeroext %191)
  %scevgep40.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 13
  store i8 %call18.13.4, i8* %scevgep40.13.4, align 1
  %192 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.14.4 = getelementptr i8, i8* %b, i64 14
  %193 = load i8, i8* %scevgep37.14.4, align 1
  %call18.14.4 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193)
  %scevgep40.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 14
  store i8 %call18.14.4, i8* %scevgep40.14.4, align 1
  %194 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.15.4 = getelementptr i8, i8* %b, i64 15
  %195 = load i8, i8* %scevgep37.15.4, align 1
  %call18.15.4 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %195)
  %scevgep40.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 0, i64 15
  store i8 %call18.15.4, i8* %scevgep40.15.4, align 1
  %scevgep39.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %163, i64 0, i64 1, i64 0
  %196 = bitcast i8* %scevgep39.4 to [16 x [16 x i8]]*
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 5
  %197 = load i8, i8* %arrayidx.5, align 1
  %198 = load i8, i8* %b, align 1
  %call18.562 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198)
  %scevgep40.563 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 0
  store i8 %call18.562, i8* %scevgep40.563, align 1
  %199 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.1.5 = getelementptr i8, i8* %b, i64 1
  %200 = load i8, i8* %scevgep37.1.5, align 1
  %call18.1.5 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200)
  %scevgep40.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 1
  store i8 %call18.1.5, i8* %scevgep40.1.5, align 1
  %201 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.2.5 = getelementptr i8, i8* %b, i64 2
  %202 = load i8, i8* %scevgep37.2.5, align 1
  %call18.2.5 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202)
  %scevgep40.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 2
  store i8 %call18.2.5, i8* %scevgep40.2.5, align 1
  %203 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.3.5 = getelementptr i8, i8* %b, i64 3
  %204 = load i8, i8* %scevgep37.3.5, align 1
  %call18.3.5 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204)
  %scevgep40.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 3
  store i8 %call18.3.5, i8* %scevgep40.3.5, align 1
  %205 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.4.5 = getelementptr i8, i8* %b, i64 4
  %206 = load i8, i8* %scevgep37.4.5, align 1
  %call18.4.5 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206)
  %scevgep40.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 4
  store i8 %call18.4.5, i8* %scevgep40.4.5, align 1
  %207 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.5.5 = getelementptr i8, i8* %b, i64 5
  %208 = load i8, i8* %scevgep37.5.5, align 1
  %call18.5.5 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %208)
  %scevgep40.5.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 5
  store i8 %call18.5.5, i8* %scevgep40.5.5, align 1
  %209 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.6.5 = getelementptr i8, i8* %b, i64 6
  %210 = load i8, i8* %scevgep37.6.5, align 1
  %call18.6.5 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210)
  %scevgep40.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 6
  store i8 %call18.6.5, i8* %scevgep40.6.5, align 1
  %211 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.7.5 = getelementptr i8, i8* %b, i64 7
  %212 = load i8, i8* %scevgep37.7.5, align 1
  %call18.7.5 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %212)
  %scevgep40.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 7
  store i8 %call18.7.5, i8* %scevgep40.7.5, align 1
  %213 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.8.5 = getelementptr i8, i8* %b, i64 8
  %214 = load i8, i8* %scevgep37.8.5, align 1
  %call18.8.5 = call zeroext i8 @mult(i8 zeroext %213, i8 zeroext %214)
  %scevgep40.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 8
  store i8 %call18.8.5, i8* %scevgep40.8.5, align 1
  %215 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.9.5 = getelementptr i8, i8* %b, i64 9
  %216 = load i8, i8* %scevgep37.9.5, align 1
  %call18.9.5 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %216)
  %scevgep40.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 9
  store i8 %call18.9.5, i8* %scevgep40.9.5, align 1
  %217 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.10.5 = getelementptr i8, i8* %b, i64 10
  %218 = load i8, i8* %scevgep37.10.5, align 1
  %call18.10.5 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218)
  %scevgep40.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 10
  store i8 %call18.10.5, i8* %scevgep40.10.5, align 1
  %219 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.11.5 = getelementptr i8, i8* %b, i64 11
  %220 = load i8, i8* %scevgep37.11.5, align 1
  %call18.11.5 = call zeroext i8 @mult(i8 zeroext %219, i8 zeroext %220)
  %scevgep40.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 11
  store i8 %call18.11.5, i8* %scevgep40.11.5, align 1
  %221 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.12.5 = getelementptr i8, i8* %b, i64 12
  %222 = load i8, i8* %scevgep37.12.5, align 1
  %call18.12.5 = call zeroext i8 @mult(i8 zeroext %221, i8 zeroext %222)
  %scevgep40.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 12
  store i8 %call18.12.5, i8* %scevgep40.12.5, align 1
  %223 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.13.5 = getelementptr i8, i8* %b, i64 13
  %224 = load i8, i8* %scevgep37.13.5, align 1
  %call18.13.5 = call zeroext i8 @mult(i8 zeroext %223, i8 zeroext %224)
  %scevgep40.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 13
  store i8 %call18.13.5, i8* %scevgep40.13.5, align 1
  %225 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.14.5 = getelementptr i8, i8* %b, i64 14
  %226 = load i8, i8* %scevgep37.14.5, align 1
  %call18.14.5 = call zeroext i8 @mult(i8 zeroext %225, i8 zeroext %226)
  %scevgep40.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 14
  store i8 %call18.14.5, i8* %scevgep40.14.5, align 1
  %227 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.15.5 = getelementptr i8, i8* %b, i64 15
  %228 = load i8, i8* %scevgep37.15.5, align 1
  %call18.15.5 = call zeroext i8 @mult(i8 zeroext %227, i8 zeroext %228)
  %scevgep40.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 0, i64 15
  store i8 %call18.15.5, i8* %scevgep40.15.5, align 1
  %scevgep39.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %196, i64 0, i64 1, i64 0
  %229 = bitcast i8* %scevgep39.5 to [16 x [16 x i8]]*
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 6
  %230 = load i8, i8* %arrayidx.6, align 1
  %231 = load i8, i8* %b, align 1
  %call18.665 = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231)
  %scevgep40.666 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 0
  store i8 %call18.665, i8* %scevgep40.666, align 1
  %232 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.1.6 = getelementptr i8, i8* %b, i64 1
  %233 = load i8, i8* %scevgep37.1.6, align 1
  %call18.1.6 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233)
  %scevgep40.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 1
  store i8 %call18.1.6, i8* %scevgep40.1.6, align 1
  %234 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.2.6 = getelementptr i8, i8* %b, i64 2
  %235 = load i8, i8* %scevgep37.2.6, align 1
  %call18.2.6 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235)
  %scevgep40.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 2
  store i8 %call18.2.6, i8* %scevgep40.2.6, align 1
  %236 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.3.6 = getelementptr i8, i8* %b, i64 3
  %237 = load i8, i8* %scevgep37.3.6, align 1
  %call18.3.6 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237)
  %scevgep40.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 3
  store i8 %call18.3.6, i8* %scevgep40.3.6, align 1
  %238 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.4.6 = getelementptr i8, i8* %b, i64 4
  %239 = load i8, i8* %scevgep37.4.6, align 1
  %call18.4.6 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239)
  %scevgep40.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 4
  store i8 %call18.4.6, i8* %scevgep40.4.6, align 1
  %240 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.5.6 = getelementptr i8, i8* %b, i64 5
  %241 = load i8, i8* %scevgep37.5.6, align 1
  %call18.5.6 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241)
  %scevgep40.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 5
  store i8 %call18.5.6, i8* %scevgep40.5.6, align 1
  %242 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.6.6 = getelementptr i8, i8* %b, i64 6
  %243 = load i8, i8* %scevgep37.6.6, align 1
  %call18.6.6 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243)
  %scevgep40.6.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 6
  store i8 %call18.6.6, i8* %scevgep40.6.6, align 1
  %244 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.7.6 = getelementptr i8, i8* %b, i64 7
  %245 = load i8, i8* %scevgep37.7.6, align 1
  %call18.7.6 = call zeroext i8 @mult(i8 zeroext %244, i8 zeroext %245)
  %scevgep40.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 7
  store i8 %call18.7.6, i8* %scevgep40.7.6, align 1
  %246 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.8.6 = getelementptr i8, i8* %b, i64 8
  %247 = load i8, i8* %scevgep37.8.6, align 1
  %call18.8.6 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247)
  %scevgep40.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 8
  store i8 %call18.8.6, i8* %scevgep40.8.6, align 1
  %248 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.9.6 = getelementptr i8, i8* %b, i64 9
  %249 = load i8, i8* %scevgep37.9.6, align 1
  %call18.9.6 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249)
  %scevgep40.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 9
  store i8 %call18.9.6, i8* %scevgep40.9.6, align 1
  %250 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.10.6 = getelementptr i8, i8* %b, i64 10
  %251 = load i8, i8* %scevgep37.10.6, align 1
  %call18.10.6 = call zeroext i8 @mult(i8 zeroext %250, i8 zeroext %251)
  %scevgep40.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 10
  store i8 %call18.10.6, i8* %scevgep40.10.6, align 1
  %252 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.11.6 = getelementptr i8, i8* %b, i64 11
  %253 = load i8, i8* %scevgep37.11.6, align 1
  %call18.11.6 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253)
  %scevgep40.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 11
  store i8 %call18.11.6, i8* %scevgep40.11.6, align 1
  %254 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.12.6 = getelementptr i8, i8* %b, i64 12
  %255 = load i8, i8* %scevgep37.12.6, align 1
  %call18.12.6 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255)
  %scevgep40.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 12
  store i8 %call18.12.6, i8* %scevgep40.12.6, align 1
  %256 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.13.6 = getelementptr i8, i8* %b, i64 13
  %257 = load i8, i8* %scevgep37.13.6, align 1
  %call18.13.6 = call zeroext i8 @mult(i8 zeroext %256, i8 zeroext %257)
  %scevgep40.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 13
  store i8 %call18.13.6, i8* %scevgep40.13.6, align 1
  %258 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.14.6 = getelementptr i8, i8* %b, i64 14
  %259 = load i8, i8* %scevgep37.14.6, align 1
  %call18.14.6 = call zeroext i8 @mult(i8 zeroext %258, i8 zeroext %259)
  %scevgep40.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 14
  store i8 %call18.14.6, i8* %scevgep40.14.6, align 1
  %260 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.15.6 = getelementptr i8, i8* %b, i64 15
  %261 = load i8, i8* %scevgep37.15.6, align 1
  %call18.15.6 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261)
  %scevgep40.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 0, i64 15
  store i8 %call18.15.6, i8* %scevgep40.15.6, align 1
  %scevgep39.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %229, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep39.6 to [16 x [16 x i8]]*
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 7
  %263 = load i8, i8* %arrayidx.7, align 1
  %264 = load i8, i8* %b, align 1
  %call18.768 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264)
  %scevgep40.769 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 0
  store i8 %call18.768, i8* %scevgep40.769, align 1
  %265 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.1.7 = getelementptr i8, i8* %b, i64 1
  %266 = load i8, i8* %scevgep37.1.7, align 1
  %call18.1.7 = call zeroext i8 @mult(i8 zeroext %265, i8 zeroext %266)
  %scevgep40.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 1
  store i8 %call18.1.7, i8* %scevgep40.1.7, align 1
  %267 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.2.7 = getelementptr i8, i8* %b, i64 2
  %268 = load i8, i8* %scevgep37.2.7, align 1
  %call18.2.7 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268)
  %scevgep40.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 2
  store i8 %call18.2.7, i8* %scevgep40.2.7, align 1
  %269 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.3.7 = getelementptr i8, i8* %b, i64 3
  %270 = load i8, i8* %scevgep37.3.7, align 1
  %call18.3.7 = call zeroext i8 @mult(i8 zeroext %269, i8 zeroext %270)
  %scevgep40.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 3
  store i8 %call18.3.7, i8* %scevgep40.3.7, align 1
  %271 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.4.7 = getelementptr i8, i8* %b, i64 4
  %272 = load i8, i8* %scevgep37.4.7, align 1
  %call18.4.7 = call zeroext i8 @mult(i8 zeroext %271, i8 zeroext %272)
  %scevgep40.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 4
  store i8 %call18.4.7, i8* %scevgep40.4.7, align 1
  %273 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.5.7 = getelementptr i8, i8* %b, i64 5
  %274 = load i8, i8* %scevgep37.5.7, align 1
  %call18.5.7 = call zeroext i8 @mult(i8 zeroext %273, i8 zeroext %274)
  %scevgep40.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 5
  store i8 %call18.5.7, i8* %scevgep40.5.7, align 1
  %275 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.6.7 = getelementptr i8, i8* %b, i64 6
  %276 = load i8, i8* %scevgep37.6.7, align 1
  %call18.6.7 = call zeroext i8 @mult(i8 zeroext %275, i8 zeroext %276)
  %scevgep40.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 6
  store i8 %call18.6.7, i8* %scevgep40.6.7, align 1
  %277 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.7.7 = getelementptr i8, i8* %b, i64 7
  %278 = load i8, i8* %scevgep37.7.7, align 1
  %call18.7.7 = call zeroext i8 @mult(i8 zeroext %277, i8 zeroext %278)
  %scevgep40.7.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 7
  store i8 %call18.7.7, i8* %scevgep40.7.7, align 1
  %279 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.8.7 = getelementptr i8, i8* %b, i64 8
  %280 = load i8, i8* %scevgep37.8.7, align 1
  %call18.8.7 = call zeroext i8 @mult(i8 zeroext %279, i8 zeroext %280)
  %scevgep40.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 8
  store i8 %call18.8.7, i8* %scevgep40.8.7, align 1
  %281 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.9.7 = getelementptr i8, i8* %b, i64 9
  %282 = load i8, i8* %scevgep37.9.7, align 1
  %call18.9.7 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282)
  %scevgep40.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 9
  store i8 %call18.9.7, i8* %scevgep40.9.7, align 1
  %283 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.10.7 = getelementptr i8, i8* %b, i64 10
  %284 = load i8, i8* %scevgep37.10.7, align 1
  %call18.10.7 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284)
  %scevgep40.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 10
  store i8 %call18.10.7, i8* %scevgep40.10.7, align 1
  %285 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.11.7 = getelementptr i8, i8* %b, i64 11
  %286 = load i8, i8* %scevgep37.11.7, align 1
  %call18.11.7 = call zeroext i8 @mult(i8 zeroext %285, i8 zeroext %286)
  %scevgep40.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 11
  store i8 %call18.11.7, i8* %scevgep40.11.7, align 1
  %287 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.12.7 = getelementptr i8, i8* %b, i64 12
  %288 = load i8, i8* %scevgep37.12.7, align 1
  %call18.12.7 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %288)
  %scevgep40.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 12
  store i8 %call18.12.7, i8* %scevgep40.12.7, align 1
  %289 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.13.7 = getelementptr i8, i8* %b, i64 13
  %290 = load i8, i8* %scevgep37.13.7, align 1
  %call18.13.7 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %290)
  %scevgep40.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 13
  store i8 %call18.13.7, i8* %scevgep40.13.7, align 1
  %291 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.14.7 = getelementptr i8, i8* %b, i64 14
  %292 = load i8, i8* %scevgep37.14.7, align 1
  %call18.14.7 = call zeroext i8 @mult(i8 zeroext %291, i8 zeroext %292)
  %scevgep40.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 14
  store i8 %call18.14.7, i8* %scevgep40.14.7, align 1
  %293 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.15.7 = getelementptr i8, i8* %b, i64 15
  %294 = load i8, i8* %scevgep37.15.7, align 1
  %call18.15.7 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %294)
  %scevgep40.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 0, i64 15
  store i8 %call18.15.7, i8* %scevgep40.15.7, align 1
  %scevgep39.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %262, i64 0, i64 1, i64 0
  %295 = bitcast i8* %scevgep39.7 to [16 x [16 x i8]]*
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 8
  %296 = load i8, i8* %arrayidx.8, align 1
  %297 = load i8, i8* %b, align 1
  %call18.871 = call zeroext i8 @mult(i8 zeroext %296, i8 zeroext %297)
  %scevgep40.872 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 0
  store i8 %call18.871, i8* %scevgep40.872, align 1
  %298 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.1.8 = getelementptr i8, i8* %b, i64 1
  %299 = load i8, i8* %scevgep37.1.8, align 1
  %call18.1.8 = call zeroext i8 @mult(i8 zeroext %298, i8 zeroext %299)
  %scevgep40.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 1
  store i8 %call18.1.8, i8* %scevgep40.1.8, align 1
  %300 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.2.8 = getelementptr i8, i8* %b, i64 2
  %301 = load i8, i8* %scevgep37.2.8, align 1
  %call18.2.8 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301)
  %scevgep40.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 2
  store i8 %call18.2.8, i8* %scevgep40.2.8, align 1
  %302 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.3.8 = getelementptr i8, i8* %b, i64 3
  %303 = load i8, i8* %scevgep37.3.8, align 1
  %call18.3.8 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303)
  %scevgep40.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 3
  store i8 %call18.3.8, i8* %scevgep40.3.8, align 1
  %304 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.4.8 = getelementptr i8, i8* %b, i64 4
  %305 = load i8, i8* %scevgep37.4.8, align 1
  %call18.4.8 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305)
  %scevgep40.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 4
  store i8 %call18.4.8, i8* %scevgep40.4.8, align 1
  %306 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.5.8 = getelementptr i8, i8* %b, i64 5
  %307 = load i8, i8* %scevgep37.5.8, align 1
  %call18.5.8 = call zeroext i8 @mult(i8 zeroext %306, i8 zeroext %307)
  %scevgep40.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 5
  store i8 %call18.5.8, i8* %scevgep40.5.8, align 1
  %308 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.6.8 = getelementptr i8, i8* %b, i64 6
  %309 = load i8, i8* %scevgep37.6.8, align 1
  %call18.6.8 = call zeroext i8 @mult(i8 zeroext %308, i8 zeroext %309)
  %scevgep40.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 6
  store i8 %call18.6.8, i8* %scevgep40.6.8, align 1
  %310 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.7.8 = getelementptr i8, i8* %b, i64 7
  %311 = load i8, i8* %scevgep37.7.8, align 1
  %call18.7.8 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311)
  %scevgep40.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 7
  store i8 %call18.7.8, i8* %scevgep40.7.8, align 1
  %312 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.8.8 = getelementptr i8, i8* %b, i64 8
  %313 = load i8, i8* %scevgep37.8.8, align 1
  %call18.8.8 = call zeroext i8 @mult(i8 zeroext %312, i8 zeroext %313)
  %scevgep40.8.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 8
  store i8 %call18.8.8, i8* %scevgep40.8.8, align 1
  %314 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.9.8 = getelementptr i8, i8* %b, i64 9
  %315 = load i8, i8* %scevgep37.9.8, align 1
  %call18.9.8 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315)
  %scevgep40.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 9
  store i8 %call18.9.8, i8* %scevgep40.9.8, align 1
  %316 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.10.8 = getelementptr i8, i8* %b, i64 10
  %317 = load i8, i8* %scevgep37.10.8, align 1
  %call18.10.8 = call zeroext i8 @mult(i8 zeroext %316, i8 zeroext %317)
  %scevgep40.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 10
  store i8 %call18.10.8, i8* %scevgep40.10.8, align 1
  %318 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.11.8 = getelementptr i8, i8* %b, i64 11
  %319 = load i8, i8* %scevgep37.11.8, align 1
  %call18.11.8 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319)
  %scevgep40.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 11
  store i8 %call18.11.8, i8* %scevgep40.11.8, align 1
  %320 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.12.8 = getelementptr i8, i8* %b, i64 12
  %321 = load i8, i8* %scevgep37.12.8, align 1
  %call18.12.8 = call zeroext i8 @mult(i8 zeroext %320, i8 zeroext %321)
  %scevgep40.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 12
  store i8 %call18.12.8, i8* %scevgep40.12.8, align 1
  %322 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.13.8 = getelementptr i8, i8* %b, i64 13
  %323 = load i8, i8* %scevgep37.13.8, align 1
  %call18.13.8 = call zeroext i8 @mult(i8 zeroext %322, i8 zeroext %323)
  %scevgep40.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 13
  store i8 %call18.13.8, i8* %scevgep40.13.8, align 1
  %324 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.14.8 = getelementptr i8, i8* %b, i64 14
  %325 = load i8, i8* %scevgep37.14.8, align 1
  %call18.14.8 = call zeroext i8 @mult(i8 zeroext %324, i8 zeroext %325)
  %scevgep40.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 14
  store i8 %call18.14.8, i8* %scevgep40.14.8, align 1
  %326 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.15.8 = getelementptr i8, i8* %b, i64 15
  %327 = load i8, i8* %scevgep37.15.8, align 1
  %call18.15.8 = call zeroext i8 @mult(i8 zeroext %326, i8 zeroext %327)
  %scevgep40.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 0, i64 15
  store i8 %call18.15.8, i8* %scevgep40.15.8, align 1
  %scevgep39.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %295, i64 0, i64 1, i64 0
  %328 = bitcast i8* %scevgep39.8 to [16 x [16 x i8]]*
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 9
  %329 = load i8, i8* %arrayidx.9, align 1
  %330 = load i8, i8* %b, align 1
  %call18.974 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330)
  %scevgep40.975 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 0
  store i8 %call18.974, i8* %scevgep40.975, align 1
  %331 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.1.9 = getelementptr i8, i8* %b, i64 1
  %332 = load i8, i8* %scevgep37.1.9, align 1
  %call18.1.9 = call zeroext i8 @mult(i8 zeroext %331, i8 zeroext %332)
  %scevgep40.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 1
  store i8 %call18.1.9, i8* %scevgep40.1.9, align 1
  %333 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.2.9 = getelementptr i8, i8* %b, i64 2
  %334 = load i8, i8* %scevgep37.2.9, align 1
  %call18.2.9 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334)
  %scevgep40.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 2
  store i8 %call18.2.9, i8* %scevgep40.2.9, align 1
  %335 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.3.9 = getelementptr i8, i8* %b, i64 3
  %336 = load i8, i8* %scevgep37.3.9, align 1
  %call18.3.9 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336)
  %scevgep40.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 3
  store i8 %call18.3.9, i8* %scevgep40.3.9, align 1
  %337 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.4.9 = getelementptr i8, i8* %b, i64 4
  %338 = load i8, i8* %scevgep37.4.9, align 1
  %call18.4.9 = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338)
  %scevgep40.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 4
  store i8 %call18.4.9, i8* %scevgep40.4.9, align 1
  %339 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.5.9 = getelementptr i8, i8* %b, i64 5
  %340 = load i8, i8* %scevgep37.5.9, align 1
  %call18.5.9 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340)
  %scevgep40.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 5
  store i8 %call18.5.9, i8* %scevgep40.5.9, align 1
  %341 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.6.9 = getelementptr i8, i8* %b, i64 6
  %342 = load i8, i8* %scevgep37.6.9, align 1
  %call18.6.9 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342)
  %scevgep40.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 6
  store i8 %call18.6.9, i8* %scevgep40.6.9, align 1
  %343 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.7.9 = getelementptr i8, i8* %b, i64 7
  %344 = load i8, i8* %scevgep37.7.9, align 1
  %call18.7.9 = call zeroext i8 @mult(i8 zeroext %343, i8 zeroext %344)
  %scevgep40.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 7
  store i8 %call18.7.9, i8* %scevgep40.7.9, align 1
  %345 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.8.9 = getelementptr i8, i8* %b, i64 8
  %346 = load i8, i8* %scevgep37.8.9, align 1
  %call18.8.9 = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346)
  %scevgep40.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 8
  store i8 %call18.8.9, i8* %scevgep40.8.9, align 1
  %347 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.9.9 = getelementptr i8, i8* %b, i64 9
  %348 = load i8, i8* %scevgep37.9.9, align 1
  %call18.9.9 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348)
  %scevgep40.9.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 9
  store i8 %call18.9.9, i8* %scevgep40.9.9, align 1
  %349 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.10.9 = getelementptr i8, i8* %b, i64 10
  %350 = load i8, i8* %scevgep37.10.9, align 1
  %call18.10.9 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350)
  %scevgep40.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 10
  store i8 %call18.10.9, i8* %scevgep40.10.9, align 1
  %351 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.11.9 = getelementptr i8, i8* %b, i64 11
  %352 = load i8, i8* %scevgep37.11.9, align 1
  %call18.11.9 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352)
  %scevgep40.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 11
  store i8 %call18.11.9, i8* %scevgep40.11.9, align 1
  %353 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.12.9 = getelementptr i8, i8* %b, i64 12
  %354 = load i8, i8* %scevgep37.12.9, align 1
  %call18.12.9 = call zeroext i8 @mult(i8 zeroext %353, i8 zeroext %354)
  %scevgep40.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 12
  store i8 %call18.12.9, i8* %scevgep40.12.9, align 1
  %355 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.13.9 = getelementptr i8, i8* %b, i64 13
  %356 = load i8, i8* %scevgep37.13.9, align 1
  %call18.13.9 = call zeroext i8 @mult(i8 zeroext %355, i8 zeroext %356)
  %scevgep40.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 13
  store i8 %call18.13.9, i8* %scevgep40.13.9, align 1
  %357 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.14.9 = getelementptr i8, i8* %b, i64 14
  %358 = load i8, i8* %scevgep37.14.9, align 1
  %call18.14.9 = call zeroext i8 @mult(i8 zeroext %357, i8 zeroext %358)
  %scevgep40.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 14
  store i8 %call18.14.9, i8* %scevgep40.14.9, align 1
  %359 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.15.9 = getelementptr i8, i8* %b, i64 15
  %360 = load i8, i8* %scevgep37.15.9, align 1
  %call18.15.9 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360)
  %scevgep40.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 0, i64 15
  store i8 %call18.15.9, i8* %scevgep40.15.9, align 1
  %scevgep39.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %328, i64 0, i64 1, i64 0
  %361 = bitcast i8* %scevgep39.9 to [16 x [16 x i8]]*
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 10
  %362 = load i8, i8* %arrayidx.10, align 1
  %363 = load i8, i8* %b, align 1
  %call18.1077 = call zeroext i8 @mult(i8 zeroext %362, i8 zeroext %363)
  %scevgep40.1078 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 0
  store i8 %call18.1077, i8* %scevgep40.1078, align 1
  %364 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.1.10 = getelementptr i8, i8* %b, i64 1
  %365 = load i8, i8* %scevgep37.1.10, align 1
  %call18.1.10 = call zeroext i8 @mult(i8 zeroext %364, i8 zeroext %365)
  %scevgep40.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 1
  store i8 %call18.1.10, i8* %scevgep40.1.10, align 1
  %366 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.2.10 = getelementptr i8, i8* %b, i64 2
  %367 = load i8, i8* %scevgep37.2.10, align 1
  %call18.2.10 = call zeroext i8 @mult(i8 zeroext %366, i8 zeroext %367)
  %scevgep40.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 2
  store i8 %call18.2.10, i8* %scevgep40.2.10, align 1
  %368 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.3.10 = getelementptr i8, i8* %b, i64 3
  %369 = load i8, i8* %scevgep37.3.10, align 1
  %call18.3.10 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369)
  %scevgep40.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 3
  store i8 %call18.3.10, i8* %scevgep40.3.10, align 1
  %370 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.4.10 = getelementptr i8, i8* %b, i64 4
  %371 = load i8, i8* %scevgep37.4.10, align 1
  %call18.4.10 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371)
  %scevgep40.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 4
  store i8 %call18.4.10, i8* %scevgep40.4.10, align 1
  %372 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.5.10 = getelementptr i8, i8* %b, i64 5
  %373 = load i8, i8* %scevgep37.5.10, align 1
  %call18.5.10 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373)
  %scevgep40.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 5
  store i8 %call18.5.10, i8* %scevgep40.5.10, align 1
  %374 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.6.10 = getelementptr i8, i8* %b, i64 6
  %375 = load i8, i8* %scevgep37.6.10, align 1
  %call18.6.10 = call zeroext i8 @mult(i8 zeroext %374, i8 zeroext %375)
  %scevgep40.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 6
  store i8 %call18.6.10, i8* %scevgep40.6.10, align 1
  %376 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.7.10 = getelementptr i8, i8* %b, i64 7
  %377 = load i8, i8* %scevgep37.7.10, align 1
  %call18.7.10 = call zeroext i8 @mult(i8 zeroext %376, i8 zeroext %377)
  %scevgep40.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 7
  store i8 %call18.7.10, i8* %scevgep40.7.10, align 1
  %378 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.8.10 = getelementptr i8, i8* %b, i64 8
  %379 = load i8, i8* %scevgep37.8.10, align 1
  %call18.8.10 = call zeroext i8 @mult(i8 zeroext %378, i8 zeroext %379)
  %scevgep40.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 8
  store i8 %call18.8.10, i8* %scevgep40.8.10, align 1
  %380 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.9.10 = getelementptr i8, i8* %b, i64 9
  %381 = load i8, i8* %scevgep37.9.10, align 1
  %call18.9.10 = call zeroext i8 @mult(i8 zeroext %380, i8 zeroext %381)
  %scevgep40.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 9
  store i8 %call18.9.10, i8* %scevgep40.9.10, align 1
  %382 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.10.10 = getelementptr i8, i8* %b, i64 10
  %383 = load i8, i8* %scevgep37.10.10, align 1
  %call18.10.10 = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %383)
  %scevgep40.10.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 10
  store i8 %call18.10.10, i8* %scevgep40.10.10, align 1
  %384 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.11.10 = getelementptr i8, i8* %b, i64 11
  %385 = load i8, i8* %scevgep37.11.10, align 1
  %call18.11.10 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %385)
  %scevgep40.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 11
  store i8 %call18.11.10, i8* %scevgep40.11.10, align 1
  %386 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.12.10 = getelementptr i8, i8* %b, i64 12
  %387 = load i8, i8* %scevgep37.12.10, align 1
  %call18.12.10 = call zeroext i8 @mult(i8 zeroext %386, i8 zeroext %387)
  %scevgep40.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 12
  store i8 %call18.12.10, i8* %scevgep40.12.10, align 1
  %388 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.13.10 = getelementptr i8, i8* %b, i64 13
  %389 = load i8, i8* %scevgep37.13.10, align 1
  %call18.13.10 = call zeroext i8 @mult(i8 zeroext %388, i8 zeroext %389)
  %scevgep40.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 13
  store i8 %call18.13.10, i8* %scevgep40.13.10, align 1
  %390 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.14.10 = getelementptr i8, i8* %b, i64 14
  %391 = load i8, i8* %scevgep37.14.10, align 1
  %call18.14.10 = call zeroext i8 @mult(i8 zeroext %390, i8 zeroext %391)
  %scevgep40.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 14
  store i8 %call18.14.10, i8* %scevgep40.14.10, align 1
  %392 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.15.10 = getelementptr i8, i8* %b, i64 15
  %393 = load i8, i8* %scevgep37.15.10, align 1
  %call18.15.10 = call zeroext i8 @mult(i8 zeroext %392, i8 zeroext %393)
  %scevgep40.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 0, i64 15
  store i8 %call18.15.10, i8* %scevgep40.15.10, align 1
  %scevgep39.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %361, i64 0, i64 1, i64 0
  %394 = bitcast i8* %scevgep39.10 to [16 x [16 x i8]]*
  %arrayidx.11 = getelementptr inbounds i8, i8* %a, i64 11
  %395 = load i8, i8* %arrayidx.11, align 1
  %396 = load i8, i8* %b, align 1
  %call18.1180 = call zeroext i8 @mult(i8 zeroext %395, i8 zeroext %396)
  %scevgep40.1181 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 0
  store i8 %call18.1180, i8* %scevgep40.1181, align 1
  %397 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.1.11 = getelementptr i8, i8* %b, i64 1
  %398 = load i8, i8* %scevgep37.1.11, align 1
  %call18.1.11 = call zeroext i8 @mult(i8 zeroext %397, i8 zeroext %398)
  %scevgep40.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 1
  store i8 %call18.1.11, i8* %scevgep40.1.11, align 1
  %399 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.2.11 = getelementptr i8, i8* %b, i64 2
  %400 = load i8, i8* %scevgep37.2.11, align 1
  %call18.2.11 = call zeroext i8 @mult(i8 zeroext %399, i8 zeroext %400)
  %scevgep40.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 2
  store i8 %call18.2.11, i8* %scevgep40.2.11, align 1
  %401 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.3.11 = getelementptr i8, i8* %b, i64 3
  %402 = load i8, i8* %scevgep37.3.11, align 1
  %call18.3.11 = call zeroext i8 @mult(i8 zeroext %401, i8 zeroext %402)
  %scevgep40.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 3
  store i8 %call18.3.11, i8* %scevgep40.3.11, align 1
  %403 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.4.11 = getelementptr i8, i8* %b, i64 4
  %404 = load i8, i8* %scevgep37.4.11, align 1
  %call18.4.11 = call zeroext i8 @mult(i8 zeroext %403, i8 zeroext %404)
  %scevgep40.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 4
  store i8 %call18.4.11, i8* %scevgep40.4.11, align 1
  %405 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.5.11 = getelementptr i8, i8* %b, i64 5
  %406 = load i8, i8* %scevgep37.5.11, align 1
  %call18.5.11 = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406)
  %scevgep40.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 5
  store i8 %call18.5.11, i8* %scevgep40.5.11, align 1
  %407 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.6.11 = getelementptr i8, i8* %b, i64 6
  %408 = load i8, i8* %scevgep37.6.11, align 1
  %call18.6.11 = call zeroext i8 @mult(i8 zeroext %407, i8 zeroext %408)
  %scevgep40.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 6
  store i8 %call18.6.11, i8* %scevgep40.6.11, align 1
  %409 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.7.11 = getelementptr i8, i8* %b, i64 7
  %410 = load i8, i8* %scevgep37.7.11, align 1
  %call18.7.11 = call zeroext i8 @mult(i8 zeroext %409, i8 zeroext %410)
  %scevgep40.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 7
  store i8 %call18.7.11, i8* %scevgep40.7.11, align 1
  %411 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.8.11 = getelementptr i8, i8* %b, i64 8
  %412 = load i8, i8* %scevgep37.8.11, align 1
  %call18.8.11 = call zeroext i8 @mult(i8 zeroext %411, i8 zeroext %412)
  %scevgep40.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 8
  store i8 %call18.8.11, i8* %scevgep40.8.11, align 1
  %413 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.9.11 = getelementptr i8, i8* %b, i64 9
  %414 = load i8, i8* %scevgep37.9.11, align 1
  %call18.9.11 = call zeroext i8 @mult(i8 zeroext %413, i8 zeroext %414)
  %scevgep40.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 9
  store i8 %call18.9.11, i8* %scevgep40.9.11, align 1
  %415 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.10.11 = getelementptr i8, i8* %b, i64 10
  %416 = load i8, i8* %scevgep37.10.11, align 1
  %call18.10.11 = call zeroext i8 @mult(i8 zeroext %415, i8 zeroext %416)
  %scevgep40.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 10
  store i8 %call18.10.11, i8* %scevgep40.10.11, align 1
  %417 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.11.11 = getelementptr i8, i8* %b, i64 11
  %418 = load i8, i8* %scevgep37.11.11, align 1
  %call18.11.11 = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418)
  %scevgep40.11.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 11
  store i8 %call18.11.11, i8* %scevgep40.11.11, align 1
  %419 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.12.11 = getelementptr i8, i8* %b, i64 12
  %420 = load i8, i8* %scevgep37.12.11, align 1
  %call18.12.11 = call zeroext i8 @mult(i8 zeroext %419, i8 zeroext %420)
  %scevgep40.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 12
  store i8 %call18.12.11, i8* %scevgep40.12.11, align 1
  %421 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.13.11 = getelementptr i8, i8* %b, i64 13
  %422 = load i8, i8* %scevgep37.13.11, align 1
  %call18.13.11 = call zeroext i8 @mult(i8 zeroext %421, i8 zeroext %422)
  %scevgep40.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 13
  store i8 %call18.13.11, i8* %scevgep40.13.11, align 1
  %423 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.14.11 = getelementptr i8, i8* %b, i64 14
  %424 = load i8, i8* %scevgep37.14.11, align 1
  %call18.14.11 = call zeroext i8 @mult(i8 zeroext %423, i8 zeroext %424)
  %scevgep40.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 14
  store i8 %call18.14.11, i8* %scevgep40.14.11, align 1
  %425 = load i8, i8* %arrayidx.11, align 1
  %scevgep37.15.11 = getelementptr i8, i8* %b, i64 15
  %426 = load i8, i8* %scevgep37.15.11, align 1
  %call18.15.11 = call zeroext i8 @mult(i8 zeroext %425, i8 zeroext %426)
  %scevgep40.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 0, i64 15
  store i8 %call18.15.11, i8* %scevgep40.15.11, align 1
  %scevgep39.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %394, i64 0, i64 1, i64 0
  %427 = bitcast i8* %scevgep39.11 to [16 x [16 x i8]]*
  %arrayidx.12 = getelementptr inbounds i8, i8* %a, i64 12
  %428 = load i8, i8* %arrayidx.12, align 1
  %429 = load i8, i8* %b, align 1
  %call18.1283 = call zeroext i8 @mult(i8 zeroext %428, i8 zeroext %429)
  %scevgep40.1284 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 0
  store i8 %call18.1283, i8* %scevgep40.1284, align 1
  %430 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.1.12 = getelementptr i8, i8* %b, i64 1
  %431 = load i8, i8* %scevgep37.1.12, align 1
  %call18.1.12 = call zeroext i8 @mult(i8 zeroext %430, i8 zeroext %431)
  %scevgep40.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 1
  store i8 %call18.1.12, i8* %scevgep40.1.12, align 1
  %432 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.2.12 = getelementptr i8, i8* %b, i64 2
  %433 = load i8, i8* %scevgep37.2.12, align 1
  %call18.2.12 = call zeroext i8 @mult(i8 zeroext %432, i8 zeroext %433)
  %scevgep40.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 2
  store i8 %call18.2.12, i8* %scevgep40.2.12, align 1
  %434 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.3.12 = getelementptr i8, i8* %b, i64 3
  %435 = load i8, i8* %scevgep37.3.12, align 1
  %call18.3.12 = call zeroext i8 @mult(i8 zeroext %434, i8 zeroext %435)
  %scevgep40.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 3
  store i8 %call18.3.12, i8* %scevgep40.3.12, align 1
  %436 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.4.12 = getelementptr i8, i8* %b, i64 4
  %437 = load i8, i8* %scevgep37.4.12, align 1
  %call18.4.12 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437)
  %scevgep40.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 4
  store i8 %call18.4.12, i8* %scevgep40.4.12, align 1
  %438 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.5.12 = getelementptr i8, i8* %b, i64 5
  %439 = load i8, i8* %scevgep37.5.12, align 1
  %call18.5.12 = call zeroext i8 @mult(i8 zeroext %438, i8 zeroext %439)
  %scevgep40.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 5
  store i8 %call18.5.12, i8* %scevgep40.5.12, align 1
  %440 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.6.12 = getelementptr i8, i8* %b, i64 6
  %441 = load i8, i8* %scevgep37.6.12, align 1
  %call18.6.12 = call zeroext i8 @mult(i8 zeroext %440, i8 zeroext %441)
  %scevgep40.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 6
  store i8 %call18.6.12, i8* %scevgep40.6.12, align 1
  %442 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.7.12 = getelementptr i8, i8* %b, i64 7
  %443 = load i8, i8* %scevgep37.7.12, align 1
  %call18.7.12 = call zeroext i8 @mult(i8 zeroext %442, i8 zeroext %443)
  %scevgep40.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 7
  store i8 %call18.7.12, i8* %scevgep40.7.12, align 1
  %444 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.8.12 = getelementptr i8, i8* %b, i64 8
  %445 = load i8, i8* %scevgep37.8.12, align 1
  %call18.8.12 = call zeroext i8 @mult(i8 zeroext %444, i8 zeroext %445)
  %scevgep40.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 8
  store i8 %call18.8.12, i8* %scevgep40.8.12, align 1
  %446 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.9.12 = getelementptr i8, i8* %b, i64 9
  %447 = load i8, i8* %scevgep37.9.12, align 1
  %call18.9.12 = call zeroext i8 @mult(i8 zeroext %446, i8 zeroext %447)
  %scevgep40.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 9
  store i8 %call18.9.12, i8* %scevgep40.9.12, align 1
  %448 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.10.12 = getelementptr i8, i8* %b, i64 10
  %449 = load i8, i8* %scevgep37.10.12, align 1
  %call18.10.12 = call zeroext i8 @mult(i8 zeroext %448, i8 zeroext %449)
  %scevgep40.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 10
  store i8 %call18.10.12, i8* %scevgep40.10.12, align 1
  %450 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.11.12 = getelementptr i8, i8* %b, i64 11
  %451 = load i8, i8* %scevgep37.11.12, align 1
  %call18.11.12 = call zeroext i8 @mult(i8 zeroext %450, i8 zeroext %451)
  %scevgep40.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 11
  store i8 %call18.11.12, i8* %scevgep40.11.12, align 1
  %452 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.12.12 = getelementptr i8, i8* %b, i64 12
  %453 = load i8, i8* %scevgep37.12.12, align 1
  %call18.12.12 = call zeroext i8 @mult(i8 zeroext %452, i8 zeroext %453)
  %scevgep40.12.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 12
  store i8 %call18.12.12, i8* %scevgep40.12.12, align 1
  %454 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.13.12 = getelementptr i8, i8* %b, i64 13
  %455 = load i8, i8* %scevgep37.13.12, align 1
  %call18.13.12 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455)
  %scevgep40.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 13
  store i8 %call18.13.12, i8* %scevgep40.13.12, align 1
  %456 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.14.12 = getelementptr i8, i8* %b, i64 14
  %457 = load i8, i8* %scevgep37.14.12, align 1
  %call18.14.12 = call zeroext i8 @mult(i8 zeroext %456, i8 zeroext %457)
  %scevgep40.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 14
  store i8 %call18.14.12, i8* %scevgep40.14.12, align 1
  %458 = load i8, i8* %arrayidx.12, align 1
  %scevgep37.15.12 = getelementptr i8, i8* %b, i64 15
  %459 = load i8, i8* %scevgep37.15.12, align 1
  %call18.15.12 = call zeroext i8 @mult(i8 zeroext %458, i8 zeroext %459)
  %scevgep40.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 0, i64 15
  store i8 %call18.15.12, i8* %scevgep40.15.12, align 1
  %scevgep39.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %427, i64 0, i64 1, i64 0
  %460 = bitcast i8* %scevgep39.12 to [16 x [16 x i8]]*
  %arrayidx.13 = getelementptr inbounds i8, i8* %a, i64 13
  %461 = load i8, i8* %arrayidx.13, align 1
  %462 = load i8, i8* %b, align 1
  %call18.1386 = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462)
  %scevgep40.1387 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 0
  store i8 %call18.1386, i8* %scevgep40.1387, align 1
  %463 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.1.13 = getelementptr i8, i8* %b, i64 1
  %464 = load i8, i8* %scevgep37.1.13, align 1
  %call18.1.13 = call zeroext i8 @mult(i8 zeroext %463, i8 zeroext %464)
  %scevgep40.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 1
  store i8 %call18.1.13, i8* %scevgep40.1.13, align 1
  %465 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.2.13 = getelementptr i8, i8* %b, i64 2
  %466 = load i8, i8* %scevgep37.2.13, align 1
  %call18.2.13 = call zeroext i8 @mult(i8 zeroext %465, i8 zeroext %466)
  %scevgep40.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 2
  store i8 %call18.2.13, i8* %scevgep40.2.13, align 1
  %467 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.3.13 = getelementptr i8, i8* %b, i64 3
  %468 = load i8, i8* %scevgep37.3.13, align 1
  %call18.3.13 = call zeroext i8 @mult(i8 zeroext %467, i8 zeroext %468)
  %scevgep40.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 3
  store i8 %call18.3.13, i8* %scevgep40.3.13, align 1
  %469 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.4.13 = getelementptr i8, i8* %b, i64 4
  %470 = load i8, i8* %scevgep37.4.13, align 1
  %call18.4.13 = call zeroext i8 @mult(i8 zeroext %469, i8 zeroext %470)
  %scevgep40.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 4
  store i8 %call18.4.13, i8* %scevgep40.4.13, align 1
  %471 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.5.13 = getelementptr i8, i8* %b, i64 5
  %472 = load i8, i8* %scevgep37.5.13, align 1
  %call18.5.13 = call zeroext i8 @mult(i8 zeroext %471, i8 zeroext %472)
  %scevgep40.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 5
  store i8 %call18.5.13, i8* %scevgep40.5.13, align 1
  %473 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.6.13 = getelementptr i8, i8* %b, i64 6
  %474 = load i8, i8* %scevgep37.6.13, align 1
  %call18.6.13 = call zeroext i8 @mult(i8 zeroext %473, i8 zeroext %474)
  %scevgep40.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 6
  store i8 %call18.6.13, i8* %scevgep40.6.13, align 1
  %475 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.7.13 = getelementptr i8, i8* %b, i64 7
  %476 = load i8, i8* %scevgep37.7.13, align 1
  %call18.7.13 = call zeroext i8 @mult(i8 zeroext %475, i8 zeroext %476)
  %scevgep40.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 7
  store i8 %call18.7.13, i8* %scevgep40.7.13, align 1
  %477 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.8.13 = getelementptr i8, i8* %b, i64 8
  %478 = load i8, i8* %scevgep37.8.13, align 1
  %call18.8.13 = call zeroext i8 @mult(i8 zeroext %477, i8 zeroext %478)
  %scevgep40.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 8
  store i8 %call18.8.13, i8* %scevgep40.8.13, align 1
  %479 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.9.13 = getelementptr i8, i8* %b, i64 9
  %480 = load i8, i8* %scevgep37.9.13, align 1
  %call18.9.13 = call zeroext i8 @mult(i8 zeroext %479, i8 zeroext %480)
  %scevgep40.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 9
  store i8 %call18.9.13, i8* %scevgep40.9.13, align 1
  %481 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.10.13 = getelementptr i8, i8* %b, i64 10
  %482 = load i8, i8* %scevgep37.10.13, align 1
  %call18.10.13 = call zeroext i8 @mult(i8 zeroext %481, i8 zeroext %482)
  %scevgep40.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 10
  store i8 %call18.10.13, i8* %scevgep40.10.13, align 1
  %483 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.11.13 = getelementptr i8, i8* %b, i64 11
  %484 = load i8, i8* %scevgep37.11.13, align 1
  %call18.11.13 = call zeroext i8 @mult(i8 zeroext %483, i8 zeroext %484)
  %scevgep40.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 11
  store i8 %call18.11.13, i8* %scevgep40.11.13, align 1
  %485 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.12.13 = getelementptr i8, i8* %b, i64 12
  %486 = load i8, i8* %scevgep37.12.13, align 1
  %call18.12.13 = call zeroext i8 @mult(i8 zeroext %485, i8 zeroext %486)
  %scevgep40.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 12
  store i8 %call18.12.13, i8* %scevgep40.12.13, align 1
  %487 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.13.13 = getelementptr i8, i8* %b, i64 13
  %488 = load i8, i8* %scevgep37.13.13, align 1
  %call18.13.13 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488)
  %scevgep40.13.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 13
  store i8 %call18.13.13, i8* %scevgep40.13.13, align 1
  %489 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.14.13 = getelementptr i8, i8* %b, i64 14
  %490 = load i8, i8* %scevgep37.14.13, align 1
  %call18.14.13 = call zeroext i8 @mult(i8 zeroext %489, i8 zeroext %490)
  %scevgep40.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 14
  store i8 %call18.14.13, i8* %scevgep40.14.13, align 1
  %491 = load i8, i8* %arrayidx.13, align 1
  %scevgep37.15.13 = getelementptr i8, i8* %b, i64 15
  %492 = load i8, i8* %scevgep37.15.13, align 1
  %call18.15.13 = call zeroext i8 @mult(i8 zeroext %491, i8 zeroext %492)
  %scevgep40.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 0, i64 15
  store i8 %call18.15.13, i8* %scevgep40.15.13, align 1
  %scevgep39.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %460, i64 0, i64 1, i64 0
  %493 = bitcast i8* %scevgep39.13 to [16 x [16 x i8]]*
  %arrayidx.14 = getelementptr inbounds i8, i8* %a, i64 14
  %494 = load i8, i8* %arrayidx.14, align 1
  %495 = load i8, i8* %b, align 1
  %call18.1489 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495)
  %scevgep40.1490 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 0
  store i8 %call18.1489, i8* %scevgep40.1490, align 1
  %496 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.1.14 = getelementptr i8, i8* %b, i64 1
  %497 = load i8, i8* %scevgep37.1.14, align 1
  %call18.1.14 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497)
  %scevgep40.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 1
  store i8 %call18.1.14, i8* %scevgep40.1.14, align 1
  %498 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.2.14 = getelementptr i8, i8* %b, i64 2
  %499 = load i8, i8* %scevgep37.2.14, align 1
  %call18.2.14 = call zeroext i8 @mult(i8 zeroext %498, i8 zeroext %499)
  %scevgep40.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 2
  store i8 %call18.2.14, i8* %scevgep40.2.14, align 1
  %500 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.3.14 = getelementptr i8, i8* %b, i64 3
  %501 = load i8, i8* %scevgep37.3.14, align 1
  %call18.3.14 = call zeroext i8 @mult(i8 zeroext %500, i8 zeroext %501)
  %scevgep40.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 3
  store i8 %call18.3.14, i8* %scevgep40.3.14, align 1
  %502 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.4.14 = getelementptr i8, i8* %b, i64 4
  %503 = load i8, i8* %scevgep37.4.14, align 1
  %call18.4.14 = call zeroext i8 @mult(i8 zeroext %502, i8 zeroext %503)
  %scevgep40.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 4
  store i8 %call18.4.14, i8* %scevgep40.4.14, align 1
  %504 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.5.14 = getelementptr i8, i8* %b, i64 5
  %505 = load i8, i8* %scevgep37.5.14, align 1
  %call18.5.14 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505)
  %scevgep40.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 5
  store i8 %call18.5.14, i8* %scevgep40.5.14, align 1
  %506 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.6.14 = getelementptr i8, i8* %b, i64 6
  %507 = load i8, i8* %scevgep37.6.14, align 1
  %call18.6.14 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507)
  %scevgep40.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 6
  store i8 %call18.6.14, i8* %scevgep40.6.14, align 1
  %508 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.7.14 = getelementptr i8, i8* %b, i64 7
  %509 = load i8, i8* %scevgep37.7.14, align 1
  %call18.7.14 = call zeroext i8 @mult(i8 zeroext %508, i8 zeroext %509)
  %scevgep40.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 7
  store i8 %call18.7.14, i8* %scevgep40.7.14, align 1
  %510 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.8.14 = getelementptr i8, i8* %b, i64 8
  %511 = load i8, i8* %scevgep37.8.14, align 1
  %call18.8.14 = call zeroext i8 @mult(i8 zeroext %510, i8 zeroext %511)
  %scevgep40.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 8
  store i8 %call18.8.14, i8* %scevgep40.8.14, align 1
  %512 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.9.14 = getelementptr i8, i8* %b, i64 9
  %513 = load i8, i8* %scevgep37.9.14, align 1
  %call18.9.14 = call zeroext i8 @mult(i8 zeroext %512, i8 zeroext %513)
  %scevgep40.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 9
  store i8 %call18.9.14, i8* %scevgep40.9.14, align 1
  %514 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.10.14 = getelementptr i8, i8* %b, i64 10
  %515 = load i8, i8* %scevgep37.10.14, align 1
  %call18.10.14 = call zeroext i8 @mult(i8 zeroext %514, i8 zeroext %515)
  %scevgep40.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 10
  store i8 %call18.10.14, i8* %scevgep40.10.14, align 1
  %516 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.11.14 = getelementptr i8, i8* %b, i64 11
  %517 = load i8, i8* %scevgep37.11.14, align 1
  %call18.11.14 = call zeroext i8 @mult(i8 zeroext %516, i8 zeroext %517)
  %scevgep40.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 11
  store i8 %call18.11.14, i8* %scevgep40.11.14, align 1
  %518 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.12.14 = getelementptr i8, i8* %b, i64 12
  %519 = load i8, i8* %scevgep37.12.14, align 1
  %call18.12.14 = call zeroext i8 @mult(i8 zeroext %518, i8 zeroext %519)
  %scevgep40.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 12
  store i8 %call18.12.14, i8* %scevgep40.12.14, align 1
  %520 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.13.14 = getelementptr i8, i8* %b, i64 13
  %521 = load i8, i8* %scevgep37.13.14, align 1
  %call18.13.14 = call zeroext i8 @mult(i8 zeroext %520, i8 zeroext %521)
  %scevgep40.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 13
  store i8 %call18.13.14, i8* %scevgep40.13.14, align 1
  %522 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.14.14 = getelementptr i8, i8* %b, i64 14
  %523 = load i8, i8* %scevgep37.14.14, align 1
  %call18.14.14 = call zeroext i8 @mult(i8 zeroext %522, i8 zeroext %523)
  %scevgep40.14.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 14
  store i8 %call18.14.14, i8* %scevgep40.14.14, align 1
  %524 = load i8, i8* %arrayidx.14, align 1
  %scevgep37.15.14 = getelementptr i8, i8* %b, i64 15
  %525 = load i8, i8* %scevgep37.15.14, align 1
  %call18.15.14 = call zeroext i8 @mult(i8 zeroext %524, i8 zeroext %525)
  %scevgep40.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 0, i64 15
  store i8 %call18.15.14, i8* %scevgep40.15.14, align 1
  %scevgep39.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %493, i64 0, i64 1, i64 0
  %526 = bitcast i8* %scevgep39.14 to [16 x [16 x i8]]*
  %arrayidx.15 = getelementptr inbounds i8, i8* %a, i64 15
  %527 = load i8, i8* %arrayidx.15, align 1
  %528 = load i8, i8* %b, align 1
  %call18.1592 = call zeroext i8 @mult(i8 zeroext %527, i8 zeroext %528)
  %scevgep40.1593 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 0
  store i8 %call18.1592, i8* %scevgep40.1593, align 1
  %529 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.1.15 = getelementptr i8, i8* %b, i64 1
  %530 = load i8, i8* %scevgep37.1.15, align 1
  %call18.1.15 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530)
  %scevgep40.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 1
  store i8 %call18.1.15, i8* %scevgep40.1.15, align 1
  %531 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.2.15 = getelementptr i8, i8* %b, i64 2
  %532 = load i8, i8* %scevgep37.2.15, align 1
  %call18.2.15 = call zeroext i8 @mult(i8 zeroext %531, i8 zeroext %532)
  %scevgep40.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 2
  store i8 %call18.2.15, i8* %scevgep40.2.15, align 1
  %533 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.3.15 = getelementptr i8, i8* %b, i64 3
  %534 = load i8, i8* %scevgep37.3.15, align 1
  %call18.3.15 = call zeroext i8 @mult(i8 zeroext %533, i8 zeroext %534)
  %scevgep40.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 3
  store i8 %call18.3.15, i8* %scevgep40.3.15, align 1
  %535 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.4.15 = getelementptr i8, i8* %b, i64 4
  %536 = load i8, i8* %scevgep37.4.15, align 1
  %call18.4.15 = call zeroext i8 @mult(i8 zeroext %535, i8 zeroext %536)
  %scevgep40.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 4
  store i8 %call18.4.15, i8* %scevgep40.4.15, align 1
  %537 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.5.15 = getelementptr i8, i8* %b, i64 5
  %538 = load i8, i8* %scevgep37.5.15, align 1
  %call18.5.15 = call zeroext i8 @mult(i8 zeroext %537, i8 zeroext %538)
  %scevgep40.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 5
  store i8 %call18.5.15, i8* %scevgep40.5.15, align 1
  %539 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.6.15 = getelementptr i8, i8* %b, i64 6
  %540 = load i8, i8* %scevgep37.6.15, align 1
  %call18.6.15 = call zeroext i8 @mult(i8 zeroext %539, i8 zeroext %540)
  %scevgep40.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 6
  store i8 %call18.6.15, i8* %scevgep40.6.15, align 1
  %541 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.7.15 = getelementptr i8, i8* %b, i64 7
  %542 = load i8, i8* %scevgep37.7.15, align 1
  %call18.7.15 = call zeroext i8 @mult(i8 zeroext %541, i8 zeroext %542)
  %scevgep40.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 7
  store i8 %call18.7.15, i8* %scevgep40.7.15, align 1
  %543 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.8.15 = getelementptr i8, i8* %b, i64 8
  %544 = load i8, i8* %scevgep37.8.15, align 1
  %call18.8.15 = call zeroext i8 @mult(i8 zeroext %543, i8 zeroext %544)
  %scevgep40.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 8
  store i8 %call18.8.15, i8* %scevgep40.8.15, align 1
  %545 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.9.15 = getelementptr i8, i8* %b, i64 9
  %546 = load i8, i8* %scevgep37.9.15, align 1
  %call18.9.15 = call zeroext i8 @mult(i8 zeroext %545, i8 zeroext %546)
  %scevgep40.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 9
  store i8 %call18.9.15, i8* %scevgep40.9.15, align 1
  %547 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.10.15 = getelementptr i8, i8* %b, i64 10
  %548 = load i8, i8* %scevgep37.10.15, align 1
  %call18.10.15 = call zeroext i8 @mult(i8 zeroext %547, i8 zeroext %548)
  %scevgep40.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 10
  store i8 %call18.10.15, i8* %scevgep40.10.15, align 1
  %549 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.11.15 = getelementptr i8, i8* %b, i64 11
  %550 = load i8, i8* %scevgep37.11.15, align 1
  %call18.11.15 = call zeroext i8 @mult(i8 zeroext %549, i8 zeroext %550)
  %scevgep40.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 11
  store i8 %call18.11.15, i8* %scevgep40.11.15, align 1
  %551 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.12.15 = getelementptr i8, i8* %b, i64 12
  %552 = load i8, i8* %scevgep37.12.15, align 1
  %call18.12.15 = call zeroext i8 @mult(i8 zeroext %551, i8 zeroext %552)
  %scevgep40.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 12
  store i8 %call18.12.15, i8* %scevgep40.12.15, align 1
  %553 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.13.15 = getelementptr i8, i8* %b, i64 13
  %554 = load i8, i8* %scevgep37.13.15, align 1
  %call18.13.15 = call zeroext i8 @mult(i8 zeroext %553, i8 zeroext %554)
  %scevgep40.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 13
  store i8 %call18.13.15, i8* %scevgep40.13.15, align 1
  %555 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.14.15 = getelementptr i8, i8* %b, i64 14
  %556 = load i8, i8* %scevgep37.14.15, align 1
  %call18.14.15 = call zeroext i8 @mult(i8 zeroext %555, i8 zeroext %556)
  %scevgep40.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 14
  store i8 %call18.14.15, i8* %scevgep40.14.15, align 1
  %557 = load i8, i8* %arrayidx.15, align 1
  %scevgep37.15.15 = getelementptr i8, i8* %b, i64 15
  %558 = load i8, i8* %scevgep37.15.15, align 1
  %call18.15.15 = call zeroext i8 @mult(i8 zeroext %557, i8 zeroext %558)
  %scevgep40.15.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %526, i64 0, i64 0, i64 15
  store i8 %call18.15.15, i8* %scevgep40.15.15, align 1
  %scevgep28 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 15
  %scevgep2829 = bitcast i8* %scevgep28 to [16 x [16 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep28, align 1
  %scevgep33 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep2829, i64 0, i64 0, i64 -2
  %559 = bitcast i8* %scevgep33 to [16 x [16 x i8]]*
  %call37.1365 = call zeroext i8 (...) @rand()
  store i8 %call37.1365, i8* %scevgep33, align 1
  %scevgep33.1366 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %559, i64 0, i64 0, i64 -2
  %560 = bitcast i8* %scevgep33.1366 to [16 x [16 x i8]]*
  %call37.2368 = call zeroext i8 (...) @rand()
  store i8 %call37.2368, i8* %scevgep33.1366, align 1
  %scevgep33.2369 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %560, i64 0, i64 0, i64 -2
  %561 = bitcast i8* %scevgep33.2369 to [16 x [16 x i8]]*
  %call37.3371 = call zeroext i8 (...) @rand()
  store i8 %call37.3371, i8* %scevgep33.2369, align 1
  %scevgep33.3372 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %561, i64 0, i64 0, i64 -2
  %562 = bitcast i8* %scevgep33.3372 to [16 x [16 x i8]]*
  %call37.4374 = call zeroext i8 (...) @rand()
  store i8 %call37.4374, i8* %scevgep33.3372, align 1
  %scevgep33.4375 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %562, i64 0, i64 0, i64 -2
  %563 = bitcast i8* %scevgep33.4375 to [16 x [16 x i8]]*
  %call37.5377 = call zeroext i8 (...) @rand()
  store i8 %call37.5377, i8* %scevgep33.4375, align 1
  %scevgep33.5378 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %563, i64 0, i64 0, i64 -2
  %564 = bitcast i8* %scevgep33.5378 to [16 x [16 x i8]]*
  %call37.6380 = call zeroext i8 (...) @rand()
  store i8 %call37.6380, i8* %scevgep33.5378, align 1
  %scevgep33.6381 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %564, i64 0, i64 0, i64 -2
  %call37.7383 = call zeroext i8 (...) @rand()
  store i8 %call37.7383, i8* %scevgep33.6381, align 1
  %scevgep31 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep2829, i64 0, i64 1, i64 0
  %565 = bitcast i8* %scevgep31 to [16 x [16 x i8]]*
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep31, align 1
  %scevgep33.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %565, i64 0, i64 0, i64 -2
  %566 = bitcast i8* %scevgep33.1 to [16 x [16 x i8]]*
  %call37.1.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1.1, i8* %scevgep33.1, align 1
  %scevgep33.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %566, i64 0, i64 0, i64 -2
  %567 = bitcast i8* %scevgep33.1.1 to [16 x [16 x i8]]*
  %call37.1.2 = call zeroext i8 (...) @rand()
  store i8 %call37.1.2, i8* %scevgep33.1.1, align 1
  %scevgep33.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %567, i64 0, i64 0, i64 -2
  %568 = bitcast i8* %scevgep33.1.2 to [16 x [16 x i8]]*
  %call37.1.3 = call zeroext i8 (...) @rand()
  store i8 %call37.1.3, i8* %scevgep33.1.2, align 1
  %scevgep33.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %568, i64 0, i64 0, i64 -2
  %569 = bitcast i8* %scevgep33.1.3 to [16 x [16 x i8]]*
  %call37.1.4 = call zeroext i8 (...) @rand()
  store i8 %call37.1.4, i8* %scevgep33.1.3, align 1
  %scevgep33.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %569, i64 0, i64 0, i64 -2
  %570 = bitcast i8* %scevgep33.1.4 to [16 x [16 x i8]]*
  %call37.1.5 = call zeroext i8 (...) @rand()
  store i8 %call37.1.5, i8* %scevgep33.1.4, align 1
  %scevgep33.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %570, i64 0, i64 0, i64 -2
  %call37.1.6 = call zeroext i8 (...) @rand()
  store i8 %call37.1.6, i8* %scevgep33.1.5, align 1
  %scevgep31.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %565, i64 0, i64 1, i64 0
  %571 = bitcast i8* %scevgep31.1 to [16 x [16 x i8]]*
  %call37.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2, i8* %scevgep31.1, align 1
  %scevgep33.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %571, i64 0, i64 0, i64 -2
  %572 = bitcast i8* %scevgep33.2 to [16 x [16 x i8]]*
  %call37.2.1 = call zeroext i8 (...) @rand()
  store i8 %call37.2.1, i8* %scevgep33.2, align 1
  %scevgep33.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %572, i64 0, i64 0, i64 -2
  %573 = bitcast i8* %scevgep33.2.1 to [16 x [16 x i8]]*
  %call37.2.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2.2, i8* %scevgep33.2.1, align 1
  %scevgep33.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %573, i64 0, i64 0, i64 -2
  %574 = bitcast i8* %scevgep33.2.2 to [16 x [16 x i8]]*
  %call37.2.3 = call zeroext i8 (...) @rand()
  store i8 %call37.2.3, i8* %scevgep33.2.2, align 1
  %scevgep33.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %574, i64 0, i64 0, i64 -2
  %575 = bitcast i8* %scevgep33.2.3 to [16 x [16 x i8]]*
  %call37.2.4 = call zeroext i8 (...) @rand()
  store i8 %call37.2.4, i8* %scevgep33.2.3, align 1
  %scevgep33.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %575, i64 0, i64 0, i64 -2
  %576 = bitcast i8* %scevgep33.2.4 to [16 x [16 x i8]]*
  %call37.2.5 = call zeroext i8 (...) @rand()
  store i8 %call37.2.5, i8* %scevgep33.2.4, align 1
  %scevgep33.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %576, i64 0, i64 0, i64 -2
  %call37.2.6 = call zeroext i8 (...) @rand()
  store i8 %call37.2.6, i8* %scevgep33.2.5, align 1
  %scevgep31.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %571, i64 0, i64 1, i64 0
  %577 = bitcast i8* %scevgep31.2 to [16 x [16 x i8]]*
  %call37.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3, i8* %scevgep31.2, align 1
  %scevgep33.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %577, i64 0, i64 0, i64 -2
  %578 = bitcast i8* %scevgep33.3 to [16 x [16 x i8]]*
  %call37.3.1 = call zeroext i8 (...) @rand()
  store i8 %call37.3.1, i8* %scevgep33.3, align 1
  %scevgep33.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %578, i64 0, i64 0, i64 -2
  %579 = bitcast i8* %scevgep33.3.1 to [16 x [16 x i8]]*
  %call37.3.2 = call zeroext i8 (...) @rand()
  store i8 %call37.3.2, i8* %scevgep33.3.1, align 1
  %scevgep33.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %579, i64 0, i64 0, i64 -2
  %580 = bitcast i8* %scevgep33.3.2 to [16 x [16 x i8]]*
  %call37.3.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3.3, i8* %scevgep33.3.2, align 1
  %scevgep33.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %580, i64 0, i64 0, i64 -2
  %581 = bitcast i8* %scevgep33.3.3 to [16 x [16 x i8]]*
  %call37.3.4 = call zeroext i8 (...) @rand()
  store i8 %call37.3.4, i8* %scevgep33.3.3, align 1
  %scevgep33.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %581, i64 0, i64 0, i64 -2
  %call37.3.5 = call zeroext i8 (...) @rand()
  store i8 %call37.3.5, i8* %scevgep33.3.4, align 1
  %scevgep31.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %577, i64 0, i64 1, i64 0
  %582 = bitcast i8* %scevgep31.3 to [16 x [16 x i8]]*
  %call37.4 = call zeroext i8 (...) @rand()
  store i8 %call37.4, i8* %scevgep31.3, align 1
  %scevgep33.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %582, i64 0, i64 0, i64 -2
  %583 = bitcast i8* %scevgep33.4 to [16 x [16 x i8]]*
  %call37.4.1 = call zeroext i8 (...) @rand()
  store i8 %call37.4.1, i8* %scevgep33.4, align 1
  %scevgep33.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %583, i64 0, i64 0, i64 -2
  %584 = bitcast i8* %scevgep33.4.1 to [16 x [16 x i8]]*
  %call37.4.2 = call zeroext i8 (...) @rand()
  store i8 %call37.4.2, i8* %scevgep33.4.1, align 1
  %scevgep33.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %584, i64 0, i64 0, i64 -2
  %585 = bitcast i8* %scevgep33.4.2 to [16 x [16 x i8]]*
  %call37.4.3 = call zeroext i8 (...) @rand()
  store i8 %call37.4.3, i8* %scevgep33.4.2, align 1
  %scevgep33.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %585, i64 0, i64 0, i64 -2
  %586 = bitcast i8* %scevgep33.4.3 to [16 x [16 x i8]]*
  %call37.4.4 = call zeroext i8 (...) @rand()
  store i8 %call37.4.4, i8* %scevgep33.4.3, align 1
  %scevgep33.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %586, i64 0, i64 0, i64 -2
  %call37.4.5 = call zeroext i8 (...) @rand()
  store i8 %call37.4.5, i8* %scevgep33.4.4, align 1
  %scevgep31.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %582, i64 0, i64 1, i64 0
  %587 = bitcast i8* %scevgep31.4 to [16 x [16 x i8]]*
  %call37.5 = call zeroext i8 (...) @rand()
  store i8 %call37.5, i8* %scevgep31.4, align 1
  %scevgep33.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %587, i64 0, i64 0, i64 -2
  %588 = bitcast i8* %scevgep33.5 to [16 x [16 x i8]]*
  %call37.5.1 = call zeroext i8 (...) @rand()
  store i8 %call37.5.1, i8* %scevgep33.5, align 1
  %scevgep33.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %588, i64 0, i64 0, i64 -2
  %589 = bitcast i8* %scevgep33.5.1 to [16 x [16 x i8]]*
  %call37.5.2 = call zeroext i8 (...) @rand()
  store i8 %call37.5.2, i8* %scevgep33.5.1, align 1
  %scevgep33.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %589, i64 0, i64 0, i64 -2
  %590 = bitcast i8* %scevgep33.5.2 to [16 x [16 x i8]]*
  %call37.5.3 = call zeroext i8 (...) @rand()
  store i8 %call37.5.3, i8* %scevgep33.5.2, align 1
  %scevgep33.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %590, i64 0, i64 0, i64 -2
  %call37.5.4 = call zeroext i8 (...) @rand()
  store i8 %call37.5.4, i8* %scevgep33.5.3, align 1
  %scevgep31.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %587, i64 0, i64 1, i64 0
  %591 = bitcast i8* %scevgep31.5 to [16 x [16 x i8]]*
  %call37.6 = call zeroext i8 (...) @rand()
  store i8 %call37.6, i8* %scevgep31.5, align 1
  %scevgep33.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %591, i64 0, i64 0, i64 -2
  %592 = bitcast i8* %scevgep33.6 to [16 x [16 x i8]]*
  %call37.6.1 = call zeroext i8 (...) @rand()
  store i8 %call37.6.1, i8* %scevgep33.6, align 1
  %scevgep33.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %592, i64 0, i64 0, i64 -2
  %593 = bitcast i8* %scevgep33.6.1 to [16 x [16 x i8]]*
  %call37.6.2 = call zeroext i8 (...) @rand()
  store i8 %call37.6.2, i8* %scevgep33.6.1, align 1
  %scevgep33.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %593, i64 0, i64 0, i64 -2
  %594 = bitcast i8* %scevgep33.6.2 to [16 x [16 x i8]]*
  %call37.6.3 = call zeroext i8 (...) @rand()
  store i8 %call37.6.3, i8* %scevgep33.6.2, align 1
  %scevgep33.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %594, i64 0, i64 0, i64 -2
  %call37.6.4 = call zeroext i8 (...) @rand()
  store i8 %call37.6.4, i8* %scevgep33.6.3, align 1
  %scevgep31.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %591, i64 0, i64 1, i64 0
  %595 = bitcast i8* %scevgep31.6 to [16 x [16 x i8]]*
  %call37.7 = call zeroext i8 (...) @rand()
  store i8 %call37.7, i8* %scevgep31.6, align 1
  %scevgep33.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %595, i64 0, i64 0, i64 -2
  %596 = bitcast i8* %scevgep33.7 to [16 x [16 x i8]]*
  %call37.7.1 = call zeroext i8 (...) @rand()
  store i8 %call37.7.1, i8* %scevgep33.7, align 1
  %scevgep33.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %596, i64 0, i64 0, i64 -2
  %597 = bitcast i8* %scevgep33.7.1 to [16 x [16 x i8]]*
  %call37.7.2 = call zeroext i8 (...) @rand()
  store i8 %call37.7.2, i8* %scevgep33.7.1, align 1
  %scevgep33.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %597, i64 0, i64 0, i64 -2
  %call37.7.3 = call zeroext i8 (...) @rand()
  store i8 %call37.7.3, i8* %scevgep33.7.2, align 1
  %scevgep31.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %595, i64 0, i64 1, i64 0
  %598 = bitcast i8* %scevgep31.7 to [16 x [16 x i8]]*
  %call37.8 = call zeroext i8 (...) @rand()
  store i8 %call37.8, i8* %scevgep31.7, align 1
  %scevgep33.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %598, i64 0, i64 0, i64 -2
  %599 = bitcast i8* %scevgep33.8 to [16 x [16 x i8]]*
  %call37.8.1 = call zeroext i8 (...) @rand()
  store i8 %call37.8.1, i8* %scevgep33.8, align 1
  %scevgep33.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %599, i64 0, i64 0, i64 -2
  %600 = bitcast i8* %scevgep33.8.1 to [16 x [16 x i8]]*
  %call37.8.2 = call zeroext i8 (...) @rand()
  store i8 %call37.8.2, i8* %scevgep33.8.1, align 1
  %scevgep33.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %600, i64 0, i64 0, i64 -2
  %call37.8.3 = call zeroext i8 (...) @rand()
  store i8 %call37.8.3, i8* %scevgep33.8.2, align 1
  %scevgep31.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %598, i64 0, i64 1, i64 0
  %601 = bitcast i8* %scevgep31.8 to [16 x [16 x i8]]*
  %call37.9 = call zeroext i8 (...) @rand()
  store i8 %call37.9, i8* %scevgep31.8, align 1
  %scevgep33.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %601, i64 0, i64 0, i64 -2
  %602 = bitcast i8* %scevgep33.9 to [16 x [16 x i8]]*
  %call37.9.1 = call zeroext i8 (...) @rand()
  store i8 %call37.9.1, i8* %scevgep33.9, align 1
  %scevgep33.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %602, i64 0, i64 0, i64 -2
  %call37.9.2 = call zeroext i8 (...) @rand()
  store i8 %call37.9.2, i8* %scevgep33.9.1, align 1
  %scevgep31.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %601, i64 0, i64 1, i64 0
  %603 = bitcast i8* %scevgep31.9 to [16 x [16 x i8]]*
  %call37.10 = call zeroext i8 (...) @rand()
  store i8 %call37.10, i8* %scevgep31.9, align 1
  %scevgep33.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %603, i64 0, i64 0, i64 -2
  %604 = bitcast i8* %scevgep33.10 to [16 x [16 x i8]]*
  %call37.10.1 = call zeroext i8 (...) @rand()
  store i8 %call37.10.1, i8* %scevgep33.10, align 1
  %scevgep33.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %604, i64 0, i64 0, i64 -2
  %call37.10.2 = call zeroext i8 (...) @rand()
  store i8 %call37.10.2, i8* %scevgep33.10.1, align 1
  %scevgep31.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %603, i64 0, i64 1, i64 0
  %605 = bitcast i8* %scevgep31.10 to [16 x [16 x i8]]*
  %call37.11 = call zeroext i8 (...) @rand()
  store i8 %call37.11, i8* %scevgep31.10, align 1
  %scevgep33.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 0, i64 -2
  %call37.11.1 = call zeroext i8 (...) @rand()
  store i8 %call37.11.1, i8* %scevgep33.11, align 1
  %scevgep31.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %605, i64 0, i64 1, i64 0
  %606 = bitcast i8* %scevgep31.11 to [16 x [16 x i8]]*
  %call37.12 = call zeroext i8 (...) @rand()
  store i8 %call37.12, i8* %scevgep31.11, align 1
  %scevgep33.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 0, i64 -2
  %call37.12.1 = call zeroext i8 (...) @rand()
  store i8 %call37.12.1, i8* %scevgep33.12, align 1
  %scevgep31.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %606, i64 0, i64 1, i64 0
  %607 = bitcast i8* %scevgep31.12 to [16 x [16 x i8]]*
  %call37.13 = call zeroext i8 (...) @rand()
  store i8 %call37.13, i8* %scevgep31.12, align 1
  %scevgep31.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %607, i64 0, i64 1, i64 0
  %call37.14 = call zeroext i8 (...) @rand()
  store i8 %call37.14, i8* %scevgep31.13, align 1
  %call53 = call zeroext i8 (...) @rand()
  %scevgep26 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  store i8 %call53, i8* %scevgep26, align 1
  %call53.1 = call zeroext i8 (...) @rand()
  %scevgep26.1 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  store i8 %call53.1, i8* %scevgep26.1, align 1
  %call53.2 = call zeroext i8 (...) @rand()
  %scevgep26.2 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  store i8 %call53.2, i8* %scevgep26.2, align 1
  %call53.3 = call zeroext i8 (...) @rand()
  %scevgep26.3 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  store i8 %call53.3, i8* %scevgep26.3, align 1
  %call53.4 = call zeroext i8 (...) @rand()
  %scevgep26.4 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  store i8 %call53.4, i8* %scevgep26.4, align 1
  %call53.5 = call zeroext i8 (...) @rand()
  %scevgep26.5 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 4
  store i8 %call53.5, i8* %scevgep26.5, align 1
  %call53.6 = call zeroext i8 (...) @rand()
  %scevgep26.6 = getelementptr [16 x i8], [16 x i8]* %rr, i64 0, i64 2
  store i8 %call53.6, i8* %scevgep26.6, align 1
  %arrayidx65 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65, i64 0, i64 0
  %608 = load i8, i8* %arrayidx67, align 1
  store i8 %608, i8* %c, align 1
  %arrayidx77 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 0
  %arrayidx117 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 15
  %609 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %609 to i32
  %arrayidx84 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 15
  %610 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %610 to i32
  %xor = xor i32 %conv80, %conv85
  %arrayidx87 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87, i64 0, i64 0
  %611 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %611 to i32
  %xor91 = xor i32 %xor, %conv90
  %arrayidx94 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %612 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %612 to i32
  %xor96 = xor i32 %xor91, %conv95
  %arrayidx101 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 14
  %613 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %613 to i32
  %xor103 = xor i32 %xor96, %conv102
  %arrayidx106 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106, i64 0, i64 0
  %614 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %614 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %arrayidx115 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 15
  store i8 %conv111, i8* %arrayidx115, align 1
  %arrayidx119 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 15
  %615 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %615 to i32
  %616 = load i8, i8* %c, align 1
  %conv123 = zext i8 %616 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %arrayidx79.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 13
  %617 = load i8, i8* %arrayidx79.1, align 1
  %conv80.1 = zext i8 %617 to i32
  %arrayidx84.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 13
  %618 = load i8, i8* %arrayidx84.1, align 1
  %conv85.1 = zext i8 %618 to i32
  %xor.1 = xor i32 %conv80.1, %conv85.1
  %arrayidx87.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1, i64 0, i64 0
  %619 = load i8, i8* %arrayidx89.1, align 1
  %conv90.1 = zext i8 %619 to i32
  %xor91.1 = xor i32 %xor.1, %conv90.1
  %arrayidx94.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %620 = load i8, i8* %arrayidx94.1, align 1
  %conv95.1 = zext i8 %620 to i32
  %xor96.1 = xor i32 %xor91.1, %conv95.1
  %arrayidx101.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 12
  %621 = load i8, i8* %arrayidx101.1, align 1
  %conv102.1 = zext i8 %621 to i32
  %xor103.1 = xor i32 %xor96.1, %conv102.1
  %arrayidx106.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1, i64 0, i64 0
  %622 = load i8, i8* %arrayidx108.1, align 1
  %conv109.1 = zext i8 %622 to i32
  %xor110.1 = xor i32 %xor103.1, %conv109.1
  %conv111.1 = trunc i32 %xor110.1 to i8
  %arrayidx115.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 13
  store i8 %conv111.1, i8* %arrayidx115.1, align 1
  %arrayidx119.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 13
  %623 = load i8, i8* %arrayidx119.1, align 1
  %conv120.1 = zext i8 %623 to i32
  %624 = load i8, i8* %c, align 1
  %conv123.1 = zext i8 %624 to i32
  %xor124.1 = xor i32 %conv123.1, %conv120.1
  %conv125.1 = trunc i32 %xor124.1 to i8
  store i8 %conv125.1, i8* %c, align 1
  %arrayidx79.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 11
  %625 = load i8, i8* %arrayidx79.2, align 1
  %conv80.2 = zext i8 %625 to i32
  %arrayidx84.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 11
  %626 = load i8, i8* %arrayidx84.2, align 1
  %conv85.2 = zext i8 %626 to i32
  %xor.2 = xor i32 %conv80.2, %conv85.2
  %arrayidx87.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2, i64 0, i64 0
  %627 = load i8, i8* %arrayidx89.2, align 1
  %conv90.2 = zext i8 %627 to i32
  %xor91.2 = xor i32 %xor.2, %conv90.2
  %arrayidx94.2 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %628 = load i8, i8* %arrayidx94.2, align 1
  %conv95.2 = zext i8 %628 to i32
  %xor96.2 = xor i32 %xor91.2, %conv95.2
  %arrayidx101.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 10
  %629 = load i8, i8* %arrayidx101.2, align 1
  %conv102.2 = zext i8 %629 to i32
  %xor103.2 = xor i32 %xor96.2, %conv102.2
  %arrayidx106.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2, i64 0, i64 0
  %630 = load i8, i8* %arrayidx108.2, align 1
  %conv109.2 = zext i8 %630 to i32
  %xor110.2 = xor i32 %xor103.2, %conv109.2
  %conv111.2 = trunc i32 %xor110.2 to i8
  %arrayidx115.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 11
  store i8 %conv111.2, i8* %arrayidx115.2, align 1
  %arrayidx119.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 11
  %631 = load i8, i8* %arrayidx119.2, align 1
  %conv120.2 = zext i8 %631 to i32
  %632 = load i8, i8* %c, align 1
  %conv123.2 = zext i8 %632 to i32
  %xor124.2 = xor i32 %conv123.2, %conv120.2
  %conv125.2 = trunc i32 %xor124.2 to i8
  store i8 %conv125.2, i8* %c, align 1
  %arrayidx79.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 9
  %633 = load i8, i8* %arrayidx79.3, align 1
  %conv80.3 = zext i8 %633 to i32
  %arrayidx84.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 9
  %634 = load i8, i8* %arrayidx84.3, align 1
  %conv85.3 = zext i8 %634 to i32
  %xor.3 = xor i32 %conv80.3, %conv85.3
  %arrayidx87.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3, i64 0, i64 0
  %635 = load i8, i8* %arrayidx89.3, align 1
  %conv90.3 = zext i8 %635 to i32
  %xor91.3 = xor i32 %xor.3, %conv90.3
  %arrayidx94.3 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %636 = load i8, i8* %arrayidx94.3, align 1
  %conv95.3 = zext i8 %636 to i32
  %xor96.3 = xor i32 %xor91.3, %conv95.3
  %arrayidx101.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 8
  %637 = load i8, i8* %arrayidx101.3, align 1
  %conv102.3 = zext i8 %637 to i32
  %xor103.3 = xor i32 %xor96.3, %conv102.3
  %arrayidx106.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3, i64 0, i64 0
  %638 = load i8, i8* %arrayidx108.3, align 1
  %conv109.3 = zext i8 %638 to i32
  %xor110.3 = xor i32 %xor103.3, %conv109.3
  %conv111.3 = trunc i32 %xor110.3 to i8
  %arrayidx115.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 9
  store i8 %conv111.3, i8* %arrayidx115.3, align 1
  %arrayidx119.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 9
  %639 = load i8, i8* %arrayidx119.3, align 1
  %conv120.3 = zext i8 %639 to i32
  %640 = load i8, i8* %c, align 1
  %conv123.3 = zext i8 %640 to i32
  %xor124.3 = xor i32 %conv123.3, %conv120.3
  %conv125.3 = trunc i32 %xor124.3 to i8
  store i8 %conv125.3, i8* %c, align 1
  %arrayidx79.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 7
  %641 = load i8, i8* %arrayidx79.4, align 1
  %conv80.4 = zext i8 %641 to i32
  %arrayidx84.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 7
  %642 = load i8, i8* %arrayidx84.4, align 1
  %conv85.4 = zext i8 %642 to i32
  %xor.4 = xor i32 %conv80.4, %conv85.4
  %arrayidx87.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx89.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4, i64 0, i64 0
  %643 = load i8, i8* %arrayidx89.4, align 1
  %conv90.4 = zext i8 %643 to i32
  %xor91.4 = xor i32 %xor.4, %conv90.4
  %arrayidx94.4 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  %644 = load i8, i8* %arrayidx94.4, align 1
  %conv95.4 = zext i8 %644 to i32
  %xor96.4 = xor i32 %xor91.4, %conv95.4
  %arrayidx101.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 6
  %645 = load i8, i8* %arrayidx101.4, align 1
  %conv102.4 = zext i8 %645 to i32
  %xor103.4 = xor i32 %xor96.4, %conv102.4
  %arrayidx106.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx108.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4, i64 0, i64 0
  %646 = load i8, i8* %arrayidx108.4, align 1
  %conv109.4 = zext i8 %646 to i32
  %xor110.4 = xor i32 %xor103.4, %conv109.4
  %conv111.4 = trunc i32 %xor110.4 to i8
  %arrayidx115.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 7
  store i8 %conv111.4, i8* %arrayidx115.4, align 1
  %arrayidx119.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 7
  %647 = load i8, i8* %arrayidx119.4, align 1
  %conv120.4 = zext i8 %647 to i32
  %648 = load i8, i8* %c, align 1
  %conv123.4 = zext i8 %648 to i32
  %xor124.4 = xor i32 %conv123.4, %conv120.4
  %conv125.4 = trunc i32 %xor124.4 to i8
  store i8 %conv125.4, i8* %c, align 1
  %arrayidx79.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 5
  %649 = load i8, i8* %arrayidx79.5, align 1
  %conv80.5 = zext i8 %649 to i32
  %arrayidx84.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 5
  %650 = load i8, i8* %arrayidx84.5, align 1
  %conv85.5 = zext i8 %650 to i32
  %xor.5 = xor i32 %conv80.5, %conv85.5
  %arrayidx87.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.5, i64 0, i64 0
  %651 = load i8, i8* %arrayidx89.5, align 1
  %conv90.5 = zext i8 %651 to i32
  %xor91.5 = xor i32 %xor.5, %conv90.5
  %arrayidx94.5 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 4
  %652 = load i8, i8* %arrayidx94.5, align 1
  %conv95.5 = zext i8 %652 to i32
  %xor96.5 = xor i32 %xor91.5, %conv95.5
  %arrayidx101.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 4
  %653 = load i8, i8* %arrayidx101.5, align 1
  %conv102.5 = zext i8 %653 to i32
  %xor103.5 = xor i32 %xor96.5, %conv102.5
  %arrayidx106.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.5, i64 0, i64 0
  %654 = load i8, i8* %arrayidx108.5, align 1
  %conv109.5 = zext i8 %654 to i32
  %xor110.5 = xor i32 %xor103.5, %conv109.5
  %conv111.5 = trunc i32 %xor110.5 to i8
  %arrayidx115.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 5
  store i8 %conv111.5, i8* %arrayidx115.5, align 1
  %arrayidx119.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 5
  %655 = load i8, i8* %arrayidx119.5, align 1
  %conv120.5 = zext i8 %655 to i32
  %656 = load i8, i8* %c, align 1
  %conv123.5 = zext i8 %656 to i32
  %xor124.5 = xor i32 %conv123.5, %conv120.5
  %conv125.5 = trunc i32 %xor124.5 to i8
  store i8 %conv125.5, i8* %c, align 1
  %arrayidx79.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 3
  %657 = load i8, i8* %arrayidx79.6, align 1
  %conv80.6 = zext i8 %657 to i32
  %arrayidx84.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82, i64 0, i64 3
  %658 = load i8, i8* %arrayidx84.6, align 1
  %conv85.6 = zext i8 %658 to i32
  %xor.6 = xor i32 %conv80.6, %conv85.6
  %arrayidx87.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 3
  %arrayidx89.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.6, i64 0, i64 0
  %659 = load i8, i8* %arrayidx89.6, align 1
  %conv90.6 = zext i8 %659 to i32
  %xor91.6 = xor i32 %xor.6, %conv90.6
  %arrayidx94.6 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 2
  %660 = load i8, i8* %arrayidx94.6, align 1
  %conv95.6 = zext i8 %660 to i32
  %xor96.6 = xor i32 %xor91.6, %conv95.6
  %arrayidx101.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98, i64 0, i64 2
  %661 = load i8, i8* %arrayidx101.6, align 1
  %conv102.6 = zext i8 %661 to i32
  %xor103.6 = xor i32 %xor96.6, %conv102.6
  %arrayidx106.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 2
  %arrayidx108.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.6, i64 0, i64 0
  %662 = load i8, i8* %arrayidx108.6, align 1
  %conv109.6 = zext i8 %662 to i32
  %xor110.6 = xor i32 %xor103.6, %conv109.6
  %conv111.6 = trunc i32 %xor110.6 to i8
  %arrayidx115.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113, i64 0, i64 3
  store i8 %conv111.6, i8* %arrayidx115.6, align 1
  %arrayidx119.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117, i64 0, i64 3
  %663 = load i8, i8* %arrayidx119.6, align 1
  %conv120.6 = zext i8 %663 to i32
  %664 = load i8, i8* %c, align 1
  %conv123.6 = zext i8 %664 to i32
  %xor124.6 = xor i32 %conv123.6, %conv120.6
  %conv125.6 = trunc i32 %xor124.6 to i8
  store i8 %conv125.6, i8* %c, align 1
  %arrayidx132 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0
  %arrayidx135 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132, i64 0, i64 1
  %665 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %665 to i32
  %arrayidx138 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 0
  %arrayidx141 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138, i64 0, i64 1
  %666 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %666 to i32
  %xor143 = xor i32 %conv136, %conv142
  %arrayidx146 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 1
  %arrayidx148 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146, i64 0, i64 0
  %667 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %667 to i32
  %xor150 = xor i32 %xor143, %conv149
  %conv151 = trunc i32 %xor150 to i8
  %arrayidx153 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 0
  %arrayidx156 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153, i64 0, i64 1
  store i8 %conv151, i8* %arrayidx156, align 1
  %arrayidx158 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 0
  %arrayidx161 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158, i64 0, i64 1
  %668 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %668 to i32
  %669 = load i8, i8* %c, align 1
  %conv165 = zext i8 %669 to i32
  %xor166 = xor i32 %conv165, %conv162
  %conv167 = trunc i32 %xor166 to i8
  store i8 %conv167, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.1, i64 0, i64 1
  %670 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %670, i8* %arrayidx69.1, align 1
  %arrayidx77.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1
  %arrayidx82.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 1
  %arrayidx98.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 1
  %arrayidx113.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 1
  %arrayidx117.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 1
  %arrayidx122.1 = getelementptr inbounds i8, i8* %c, i64 1
  %arrayidx79.1101 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 15
  %671 = load i8, i8* %arrayidx79.1101, align 1
  %conv80.1102 = zext i8 %671 to i32
  %arrayidx84.1103 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 15
  %672 = load i8, i8* %arrayidx84.1103, align 1
  %conv85.1104 = zext i8 %672 to i32
  %xor.1105 = xor i32 %conv80.1102, %conv85.1104
  %arrayidx87.1106 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.1107 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1106, i64 0, i64 1
  %673 = load i8, i8* %arrayidx89.1107, align 1
  %conv90.1108 = zext i8 %673 to i32
  %xor91.1109 = xor i32 %xor.1105, %conv90.1108
  %arrayidx94.1110 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %674 = load i8, i8* %arrayidx94.1110, align 1
  %conv95.1111 = zext i8 %674 to i32
  %xor96.1112 = xor i32 %xor91.1109, %conv95.1111
  %arrayidx101.1113 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 14
  %675 = load i8, i8* %arrayidx101.1113, align 1
  %conv102.1114 = zext i8 %675 to i32
  %xor103.1115 = xor i32 %xor96.1112, %conv102.1114
  %arrayidx106.1116 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.1117 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1116, i64 0, i64 1
  %676 = load i8, i8* %arrayidx108.1117, align 1
  %conv109.1118 = zext i8 %676 to i32
  %xor110.1119 = xor i32 %xor103.1115, %conv109.1118
  %conv111.1120 = trunc i32 %xor110.1119 to i8
  %arrayidx115.1121 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 15
  store i8 %conv111.1120, i8* %arrayidx115.1121, align 1
  %arrayidx119.1122 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 15
  %677 = load i8, i8* %arrayidx119.1122, align 1
  %conv120.1123 = zext i8 %677 to i32
  %678 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1124 = zext i8 %678 to i32
  %xor124.1125 = xor i32 %conv123.1124, %conv120.1123
  %conv125.1126 = trunc i32 %xor124.1125 to i8
  store i8 %conv125.1126, i8* %arrayidx122.1, align 1
  %arrayidx79.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 13
  %679 = load i8, i8* %arrayidx79.1.1, align 1
  %conv80.1.1 = zext i8 %679 to i32
  %arrayidx84.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 13
  %680 = load i8, i8* %arrayidx84.1.1, align 1
  %conv85.1.1 = zext i8 %680 to i32
  %xor.1.1 = xor i32 %conv80.1.1, %conv85.1.1
  %arrayidx87.1.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.1, i64 0, i64 1
  %681 = load i8, i8* %arrayidx89.1.1, align 1
  %conv90.1.1 = zext i8 %681 to i32
  %xor91.1.1 = xor i32 %xor.1.1, %conv90.1.1
  %arrayidx94.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %682 = load i8, i8* %arrayidx94.1.1, align 1
  %conv95.1.1 = zext i8 %682 to i32
  %xor96.1.1 = xor i32 %xor91.1.1, %conv95.1.1
  %arrayidx101.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 12
  %683 = load i8, i8* %arrayidx101.1.1, align 1
  %conv102.1.1 = zext i8 %683 to i32
  %xor103.1.1 = xor i32 %xor96.1.1, %conv102.1.1
  %arrayidx106.1.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.1, i64 0, i64 1
  %684 = load i8, i8* %arrayidx108.1.1, align 1
  %conv109.1.1 = zext i8 %684 to i32
  %xor110.1.1 = xor i32 %xor103.1.1, %conv109.1.1
  %conv111.1.1 = trunc i32 %xor110.1.1 to i8
  %arrayidx115.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 13
  store i8 %conv111.1.1, i8* %arrayidx115.1.1, align 1
  %arrayidx119.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 13
  %685 = load i8, i8* %arrayidx119.1.1, align 1
  %conv120.1.1 = zext i8 %685 to i32
  %686 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.1 = zext i8 %686 to i32
  %xor124.1.1 = xor i32 %conv123.1.1, %conv120.1.1
  %conv125.1.1 = trunc i32 %xor124.1.1 to i8
  store i8 %conv125.1.1, i8* %arrayidx122.1, align 1
  %arrayidx79.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 11
  %687 = load i8, i8* %arrayidx79.2.1, align 1
  %conv80.2.1 = zext i8 %687 to i32
  %arrayidx84.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 11
  %688 = load i8, i8* %arrayidx84.2.1, align 1
  %conv85.2.1 = zext i8 %688 to i32
  %xor.2.1 = xor i32 %conv80.2.1, %conv85.2.1
  %arrayidx87.2.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.1, i64 0, i64 1
  %689 = load i8, i8* %arrayidx89.2.1, align 1
  %conv90.2.1 = zext i8 %689 to i32
  %xor91.2.1 = xor i32 %xor.2.1, %conv90.2.1
  %arrayidx94.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %690 = load i8, i8* %arrayidx94.2.1, align 1
  %conv95.2.1 = zext i8 %690 to i32
  %xor96.2.1 = xor i32 %xor91.2.1, %conv95.2.1
  %arrayidx101.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 10
  %691 = load i8, i8* %arrayidx101.2.1, align 1
  %conv102.2.1 = zext i8 %691 to i32
  %xor103.2.1 = xor i32 %xor96.2.1, %conv102.2.1
  %arrayidx106.2.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.1, i64 0, i64 1
  %692 = load i8, i8* %arrayidx108.2.1, align 1
  %conv109.2.1 = zext i8 %692 to i32
  %xor110.2.1 = xor i32 %xor103.2.1, %conv109.2.1
  %conv111.2.1 = trunc i32 %xor110.2.1 to i8
  %arrayidx115.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 11
  store i8 %conv111.2.1, i8* %arrayidx115.2.1, align 1
  %arrayidx119.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 11
  %693 = load i8, i8* %arrayidx119.2.1, align 1
  %conv120.2.1 = zext i8 %693 to i32
  %694 = load i8, i8* %arrayidx122.1, align 1
  %conv123.2.1 = zext i8 %694 to i32
  %xor124.2.1 = xor i32 %conv123.2.1, %conv120.2.1
  %conv125.2.1 = trunc i32 %xor124.2.1 to i8
  store i8 %conv125.2.1, i8* %arrayidx122.1, align 1
  %arrayidx79.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 9
  %695 = load i8, i8* %arrayidx79.3.1, align 1
  %conv80.3.1 = zext i8 %695 to i32
  %arrayidx84.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 9
  %696 = load i8, i8* %arrayidx84.3.1, align 1
  %conv85.3.1 = zext i8 %696 to i32
  %xor.3.1 = xor i32 %conv80.3.1, %conv85.3.1
  %arrayidx87.3.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.1, i64 0, i64 1
  %697 = load i8, i8* %arrayidx89.3.1, align 1
  %conv90.3.1 = zext i8 %697 to i32
  %xor91.3.1 = xor i32 %xor.3.1, %conv90.3.1
  %arrayidx94.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %698 = load i8, i8* %arrayidx94.3.1, align 1
  %conv95.3.1 = zext i8 %698 to i32
  %xor96.3.1 = xor i32 %xor91.3.1, %conv95.3.1
  %arrayidx101.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 8
  %699 = load i8, i8* %arrayidx101.3.1, align 1
  %conv102.3.1 = zext i8 %699 to i32
  %xor103.3.1 = xor i32 %xor96.3.1, %conv102.3.1
  %arrayidx106.3.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.1, i64 0, i64 1
  %700 = load i8, i8* %arrayidx108.3.1, align 1
  %conv109.3.1 = zext i8 %700 to i32
  %xor110.3.1 = xor i32 %xor103.3.1, %conv109.3.1
  %conv111.3.1 = trunc i32 %xor110.3.1 to i8
  %arrayidx115.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 9
  store i8 %conv111.3.1, i8* %arrayidx115.3.1, align 1
  %arrayidx119.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 9
  %701 = load i8, i8* %arrayidx119.3.1, align 1
  %conv120.3.1 = zext i8 %701 to i32
  %702 = load i8, i8* %arrayidx122.1, align 1
  %conv123.3.1 = zext i8 %702 to i32
  %xor124.3.1 = xor i32 %conv123.3.1, %conv120.3.1
  %conv125.3.1 = trunc i32 %xor124.3.1 to i8
  store i8 %conv125.3.1, i8* %arrayidx122.1, align 1
  %arrayidx79.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 7
  %703 = load i8, i8* %arrayidx79.4.1, align 1
  %conv80.4.1 = zext i8 %703 to i32
  %arrayidx84.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 7
  %704 = load i8, i8* %arrayidx84.4.1, align 1
  %conv85.4.1 = zext i8 %704 to i32
  %xor.4.1 = xor i32 %conv80.4.1, %conv85.4.1
  %arrayidx87.4.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx89.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4.1, i64 0, i64 1
  %705 = load i8, i8* %arrayidx89.4.1, align 1
  %conv90.4.1 = zext i8 %705 to i32
  %xor91.4.1 = xor i32 %xor.4.1, %conv90.4.1
  %arrayidx94.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  %706 = load i8, i8* %arrayidx94.4.1, align 1
  %conv95.4.1 = zext i8 %706 to i32
  %xor96.4.1 = xor i32 %xor91.4.1, %conv95.4.1
  %arrayidx101.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 6
  %707 = load i8, i8* %arrayidx101.4.1, align 1
  %conv102.4.1 = zext i8 %707 to i32
  %xor103.4.1 = xor i32 %xor96.4.1, %conv102.4.1
  %arrayidx106.4.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx108.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4.1, i64 0, i64 1
  %708 = load i8, i8* %arrayidx108.4.1, align 1
  %conv109.4.1 = zext i8 %708 to i32
  %xor110.4.1 = xor i32 %xor103.4.1, %conv109.4.1
  %conv111.4.1 = trunc i32 %xor110.4.1 to i8
  %arrayidx115.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 7
  store i8 %conv111.4.1, i8* %arrayidx115.4.1, align 1
  %arrayidx119.4.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 7
  %709 = load i8, i8* %arrayidx119.4.1, align 1
  %conv120.4.1 = zext i8 %709 to i32
  %710 = load i8, i8* %arrayidx122.1, align 1
  %conv123.4.1 = zext i8 %710 to i32
  %xor124.4.1 = xor i32 %conv123.4.1, %conv120.4.1
  %conv125.4.1 = trunc i32 %xor124.4.1 to i8
  store i8 %conv125.4.1, i8* %arrayidx122.1, align 1
  %arrayidx79.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 5
  %711 = load i8, i8* %arrayidx79.5.1, align 1
  %conv80.5.1 = zext i8 %711 to i32
  %arrayidx84.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 5
  %712 = load i8, i8* %arrayidx84.5.1, align 1
  %conv85.5.1 = zext i8 %712 to i32
  %xor.5.1 = xor i32 %conv80.5.1, %conv85.5.1
  %arrayidx87.5.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.5.1, i64 0, i64 1
  %713 = load i8, i8* %arrayidx89.5.1, align 1
  %conv90.5.1 = zext i8 %713 to i32
  %xor91.5.1 = xor i32 %xor.5.1, %conv90.5.1
  %arrayidx94.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 4
  %714 = load i8, i8* %arrayidx94.5.1, align 1
  %conv95.5.1 = zext i8 %714 to i32
  %xor96.5.1 = xor i32 %xor91.5.1, %conv95.5.1
  %arrayidx101.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 4
  %715 = load i8, i8* %arrayidx101.5.1, align 1
  %conv102.5.1 = zext i8 %715 to i32
  %xor103.5.1 = xor i32 %xor96.5.1, %conv102.5.1
  %arrayidx106.5.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.5.1, i64 0, i64 1
  %716 = load i8, i8* %arrayidx108.5.1, align 1
  %conv109.5.1 = zext i8 %716 to i32
  %xor110.5.1 = xor i32 %xor103.5.1, %conv109.5.1
  %conv111.5.1 = trunc i32 %xor110.5.1 to i8
  %arrayidx115.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 5
  store i8 %conv111.5.1, i8* %arrayidx115.5.1, align 1
  %arrayidx119.5.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 5
  %717 = load i8, i8* %arrayidx119.5.1, align 1
  %conv120.5.1 = zext i8 %717 to i32
  %718 = load i8, i8* %arrayidx122.1, align 1
  %conv123.5.1 = zext i8 %718 to i32
  %xor124.5.1 = xor i32 %conv123.5.1, %conv120.5.1
  %conv125.5.1 = trunc i32 %xor124.5.1 to i8
  store i8 %conv125.5.1, i8* %arrayidx122.1, align 1
  %arrayidx79.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.1, i64 0, i64 3
  %719 = load i8, i8* %arrayidx79.6.1, align 1
  %conv80.6.1 = zext i8 %719 to i32
  %arrayidx84.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.1, i64 0, i64 3
  %720 = load i8, i8* %arrayidx84.6.1, align 1
  %conv85.6.1 = zext i8 %720 to i32
  %xor.6.1 = xor i32 %conv80.6.1, %conv85.6.1
  %arrayidx87.6.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 3
  %arrayidx89.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.6.1, i64 0, i64 1
  %721 = load i8, i8* %arrayidx89.6.1, align 1
  %conv90.6.1 = zext i8 %721 to i32
  %xor91.6.1 = xor i32 %xor.6.1, %conv90.6.1
  %arrayidx94.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 2
  %722 = load i8, i8* %arrayidx94.6.1, align 1
  %conv95.6.1 = zext i8 %722 to i32
  %xor96.6.1 = xor i32 %xor91.6.1, %conv95.6.1
  %arrayidx101.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.1, i64 0, i64 2
  %723 = load i8, i8* %arrayidx101.6.1, align 1
  %conv102.6.1 = zext i8 %723 to i32
  %xor103.6.1 = xor i32 %xor96.6.1, %conv102.6.1
  %arrayidx106.6.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 2
  %arrayidx108.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.6.1, i64 0, i64 1
  %724 = load i8, i8* %arrayidx108.6.1, align 1
  %conv109.6.1 = zext i8 %724 to i32
  %xor110.6.1 = xor i32 %xor103.6.1, %conv109.6.1
  %conv111.6.1 = trunc i32 %xor110.6.1 to i8
  %arrayidx115.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.1, i64 0, i64 3
  store i8 %conv111.6.1, i8* %arrayidx115.6.1, align 1
  %arrayidx119.6.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.1, i64 0, i64 3
  %725 = load i8, i8* %arrayidx119.6.1, align 1
  %conv120.6.1 = zext i8 %725 to i32
  %726 = load i8, i8* %arrayidx122.1, align 1
  %conv123.6.1 = zext i8 %726 to i32
  %xor124.6.1 = xor i32 %conv123.6.1, %conv120.6.1
  %conv125.6.1 = trunc i32 %xor124.6.1 to i8
  store i8 %conv125.6.1, i8* %arrayidx122.1, align 1
  %arrayidx192.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep19.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %727 = load i8, i8* %scevgep19.1, align 1
  %conv190.prol.1 = zext i8 %727 to i32
  %728 = load i8, i8* %arrayidx192.1, align 1
  %conv193.prol.1 = zext i8 %728 to i32
  %xor194.prol.1 = xor i32 %conv193.prol.1, %conv190.prol.1
  %conv195.prol.1 = trunc i32 %xor194.prol.1 to i8
  store i8 %conv195.prol.1, i8* %arrayidx192.1, align 1
  %arrayidx65.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.2, i64 0, i64 2
  %729 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %729, i8* %arrayidx69.2, align 1
  %arrayidx77.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 2
  %arrayidx82.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 2
  %arrayidx98.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 2
  %arrayidx113.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 2
  %arrayidx117.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 2
  %arrayidx122.2 = getelementptr inbounds i8, i8* %c, i64 2
  %arrayidx79.2143 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.2, i64 0, i64 15
  %730 = load i8, i8* %arrayidx79.2143, align 1
  %conv80.2144 = zext i8 %730 to i32
  %arrayidx84.2145 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.2, i64 0, i64 15
  %731 = load i8, i8* %arrayidx84.2145, align 1
  %conv85.2146 = zext i8 %731 to i32
  %xor.2147 = xor i32 %conv80.2144, %conv85.2146
  %arrayidx87.2148 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.2149 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2148, i64 0, i64 2
  %732 = load i8, i8* %arrayidx89.2149, align 1
  %conv90.2150 = zext i8 %732 to i32
  %xor91.2151 = xor i32 %xor.2147, %conv90.2150
  %arrayidx94.2152 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %733 = load i8, i8* %arrayidx94.2152, align 1
  %conv95.2153 = zext i8 %733 to i32
  %xor96.2154 = xor i32 %xor91.2151, %conv95.2153
  %arrayidx101.2155 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.2, i64 0, i64 14
  %734 = load i8, i8* %arrayidx101.2155, align 1
  %conv102.2156 = zext i8 %734 to i32
  %xor103.2157 = xor i32 %xor96.2154, %conv102.2156
  %arrayidx106.2158 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.2159 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2158, i64 0, i64 2
  %735 = load i8, i8* %arrayidx108.2159, align 1
  %conv109.2160 = zext i8 %735 to i32
  %xor110.2161 = xor i32 %xor103.2157, %conv109.2160
  %conv111.2162 = trunc i32 %xor110.2161 to i8
  %arrayidx115.2163 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.2, i64 0, i64 15
  store i8 %conv111.2162, i8* %arrayidx115.2163, align 1
  %arrayidx119.2164 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.2, i64 0, i64 15
  %736 = load i8, i8* %arrayidx119.2164, align 1
  %conv120.2165 = zext i8 %736 to i32
  %737 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2166 = zext i8 %737 to i32
  %xor124.2167 = xor i32 %conv123.2166, %conv120.2165
  %conv125.2168 = trunc i32 %xor124.2167 to i8
  store i8 %conv125.2168, i8* %arrayidx122.2, align 1
  %arrayidx79.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.2, i64 0, i64 13
  %738 = load i8, i8* %arrayidx79.1.2, align 1
  %conv80.1.2 = zext i8 %738 to i32
  %arrayidx84.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.2, i64 0, i64 13
  %739 = load i8, i8* %arrayidx84.1.2, align 1
  %conv85.1.2 = zext i8 %739 to i32
  %xor.1.2 = xor i32 %conv80.1.2, %conv85.1.2
  %arrayidx87.1.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.2, i64 0, i64 2
  %740 = load i8, i8* %arrayidx89.1.2, align 1
  %conv90.1.2 = zext i8 %740 to i32
  %xor91.1.2 = xor i32 %xor.1.2, %conv90.1.2
  %arrayidx94.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %741 = load i8, i8* %arrayidx94.1.2, align 1
  %conv95.1.2 = zext i8 %741 to i32
  %xor96.1.2 = xor i32 %xor91.1.2, %conv95.1.2
  %arrayidx101.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.2, i64 0, i64 12
  %742 = load i8, i8* %arrayidx101.1.2, align 1
  %conv102.1.2 = zext i8 %742 to i32
  %xor103.1.2 = xor i32 %xor96.1.2, %conv102.1.2
  %arrayidx106.1.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.2, i64 0, i64 2
  %743 = load i8, i8* %arrayidx108.1.2, align 1
  %conv109.1.2 = zext i8 %743 to i32
  %xor110.1.2 = xor i32 %xor103.1.2, %conv109.1.2
  %conv111.1.2 = trunc i32 %xor110.1.2 to i8
  %arrayidx115.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.2, i64 0, i64 13
  store i8 %conv111.1.2, i8* %arrayidx115.1.2, align 1
  %arrayidx119.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.2, i64 0, i64 13
  %744 = load i8, i8* %arrayidx119.1.2, align 1
  %conv120.1.2 = zext i8 %744 to i32
  %745 = load i8, i8* %arrayidx122.2, align 1
  %conv123.1.2 = zext i8 %745 to i32
  %xor124.1.2 = xor i32 %conv123.1.2, %conv120.1.2
  %conv125.1.2 = trunc i32 %xor124.1.2 to i8
  store i8 %conv125.1.2, i8* %arrayidx122.2, align 1
  %arrayidx79.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.2, i64 0, i64 11
  %746 = load i8, i8* %arrayidx79.2.2, align 1
  %conv80.2.2 = zext i8 %746 to i32
  %arrayidx84.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.2, i64 0, i64 11
  %747 = load i8, i8* %arrayidx84.2.2, align 1
  %conv85.2.2 = zext i8 %747 to i32
  %xor.2.2 = xor i32 %conv80.2.2, %conv85.2.2
  %arrayidx87.2.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.2, i64 0, i64 2
  %748 = load i8, i8* %arrayidx89.2.2, align 1
  %conv90.2.2 = zext i8 %748 to i32
  %xor91.2.2 = xor i32 %xor.2.2, %conv90.2.2
  %arrayidx94.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %749 = load i8, i8* %arrayidx94.2.2, align 1
  %conv95.2.2 = zext i8 %749 to i32
  %xor96.2.2 = xor i32 %xor91.2.2, %conv95.2.2
  %arrayidx101.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.2, i64 0, i64 10
  %750 = load i8, i8* %arrayidx101.2.2, align 1
  %conv102.2.2 = zext i8 %750 to i32
  %xor103.2.2 = xor i32 %xor96.2.2, %conv102.2.2
  %arrayidx106.2.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.2, i64 0, i64 2
  %751 = load i8, i8* %arrayidx108.2.2, align 1
  %conv109.2.2 = zext i8 %751 to i32
  %xor110.2.2 = xor i32 %xor103.2.2, %conv109.2.2
  %conv111.2.2 = trunc i32 %xor110.2.2 to i8
  %arrayidx115.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.2, i64 0, i64 11
  store i8 %conv111.2.2, i8* %arrayidx115.2.2, align 1
  %arrayidx119.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.2, i64 0, i64 11
  %752 = load i8, i8* %arrayidx119.2.2, align 1
  %conv120.2.2 = zext i8 %752 to i32
  %753 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.2 = zext i8 %753 to i32
  %xor124.2.2 = xor i32 %conv123.2.2, %conv120.2.2
  %conv125.2.2 = trunc i32 %xor124.2.2 to i8
  store i8 %conv125.2.2, i8* %arrayidx122.2, align 1
  %arrayidx79.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.2, i64 0, i64 9
  %754 = load i8, i8* %arrayidx79.3.2, align 1
  %conv80.3.2 = zext i8 %754 to i32
  %arrayidx84.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.2, i64 0, i64 9
  %755 = load i8, i8* %arrayidx84.3.2, align 1
  %conv85.3.2 = zext i8 %755 to i32
  %xor.3.2 = xor i32 %conv80.3.2, %conv85.3.2
  %arrayidx87.3.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.2, i64 0, i64 2
  %756 = load i8, i8* %arrayidx89.3.2, align 1
  %conv90.3.2 = zext i8 %756 to i32
  %xor91.3.2 = xor i32 %xor.3.2, %conv90.3.2
  %arrayidx94.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %757 = load i8, i8* %arrayidx94.3.2, align 1
  %conv95.3.2 = zext i8 %757 to i32
  %xor96.3.2 = xor i32 %xor91.3.2, %conv95.3.2
  %arrayidx101.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.2, i64 0, i64 8
  %758 = load i8, i8* %arrayidx101.3.2, align 1
  %conv102.3.2 = zext i8 %758 to i32
  %xor103.3.2 = xor i32 %xor96.3.2, %conv102.3.2
  %arrayidx106.3.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.2, i64 0, i64 2
  %759 = load i8, i8* %arrayidx108.3.2, align 1
  %conv109.3.2 = zext i8 %759 to i32
  %xor110.3.2 = xor i32 %xor103.3.2, %conv109.3.2
  %conv111.3.2 = trunc i32 %xor110.3.2 to i8
  %arrayidx115.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.2, i64 0, i64 9
  store i8 %conv111.3.2, i8* %arrayidx115.3.2, align 1
  %arrayidx119.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.2, i64 0, i64 9
  %760 = load i8, i8* %arrayidx119.3.2, align 1
  %conv120.3.2 = zext i8 %760 to i32
  %761 = load i8, i8* %arrayidx122.2, align 1
  %conv123.3.2 = zext i8 %761 to i32
  %xor124.3.2 = xor i32 %conv123.3.2, %conv120.3.2
  %conv125.3.2 = trunc i32 %xor124.3.2 to i8
  store i8 %conv125.3.2, i8* %arrayidx122.2, align 1
  %arrayidx79.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.2, i64 0, i64 7
  %762 = load i8, i8* %arrayidx79.4.2, align 1
  %conv80.4.2 = zext i8 %762 to i32
  %arrayidx84.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.2, i64 0, i64 7
  %763 = load i8, i8* %arrayidx84.4.2, align 1
  %conv85.4.2 = zext i8 %763 to i32
  %xor.4.2 = xor i32 %conv80.4.2, %conv85.4.2
  %arrayidx87.4.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx89.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4.2, i64 0, i64 2
  %764 = load i8, i8* %arrayidx89.4.2, align 1
  %conv90.4.2 = zext i8 %764 to i32
  %xor91.4.2 = xor i32 %xor.4.2, %conv90.4.2
  %arrayidx94.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  %765 = load i8, i8* %arrayidx94.4.2, align 1
  %conv95.4.2 = zext i8 %765 to i32
  %xor96.4.2 = xor i32 %xor91.4.2, %conv95.4.2
  %arrayidx101.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.2, i64 0, i64 6
  %766 = load i8, i8* %arrayidx101.4.2, align 1
  %conv102.4.2 = zext i8 %766 to i32
  %xor103.4.2 = xor i32 %xor96.4.2, %conv102.4.2
  %arrayidx106.4.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx108.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4.2, i64 0, i64 2
  %767 = load i8, i8* %arrayidx108.4.2, align 1
  %conv109.4.2 = zext i8 %767 to i32
  %xor110.4.2 = xor i32 %xor103.4.2, %conv109.4.2
  %conv111.4.2 = trunc i32 %xor110.4.2 to i8
  %arrayidx115.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.2, i64 0, i64 7
  store i8 %conv111.4.2, i8* %arrayidx115.4.2, align 1
  %arrayidx119.4.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.2, i64 0, i64 7
  %768 = load i8, i8* %arrayidx119.4.2, align 1
  %conv120.4.2 = zext i8 %768 to i32
  %769 = load i8, i8* %arrayidx122.2, align 1
  %conv123.4.2 = zext i8 %769 to i32
  %xor124.4.2 = xor i32 %conv123.4.2, %conv120.4.2
  %conv125.4.2 = trunc i32 %xor124.4.2 to i8
  store i8 %conv125.4.2, i8* %arrayidx122.2, align 1
  %arrayidx79.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.2, i64 0, i64 5
  %770 = load i8, i8* %arrayidx79.5.2, align 1
  %conv80.5.2 = zext i8 %770 to i32
  %arrayidx84.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.2, i64 0, i64 5
  %771 = load i8, i8* %arrayidx84.5.2, align 1
  %conv85.5.2 = zext i8 %771 to i32
  %xor.5.2 = xor i32 %conv80.5.2, %conv85.5.2
  %arrayidx87.5.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.5.2, i64 0, i64 2
  %772 = load i8, i8* %arrayidx89.5.2, align 1
  %conv90.5.2 = zext i8 %772 to i32
  %xor91.5.2 = xor i32 %xor.5.2, %conv90.5.2
  %arrayidx94.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 4
  %773 = load i8, i8* %arrayidx94.5.2, align 1
  %conv95.5.2 = zext i8 %773 to i32
  %xor96.5.2 = xor i32 %xor91.5.2, %conv95.5.2
  %arrayidx101.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.2, i64 0, i64 4
  %774 = load i8, i8* %arrayidx101.5.2, align 1
  %conv102.5.2 = zext i8 %774 to i32
  %xor103.5.2 = xor i32 %xor96.5.2, %conv102.5.2
  %arrayidx106.5.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.5.2, i64 0, i64 2
  %775 = load i8, i8* %arrayidx108.5.2, align 1
  %conv109.5.2 = zext i8 %775 to i32
  %xor110.5.2 = xor i32 %xor103.5.2, %conv109.5.2
  %conv111.5.2 = trunc i32 %xor110.5.2 to i8
  %arrayidx115.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.2, i64 0, i64 5
  store i8 %conv111.5.2, i8* %arrayidx115.5.2, align 1
  %arrayidx119.5.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.2, i64 0, i64 5
  %776 = load i8, i8* %arrayidx119.5.2, align 1
  %conv120.5.2 = zext i8 %776 to i32
  %777 = load i8, i8* %arrayidx122.2, align 1
  %conv123.5.2 = zext i8 %777 to i32
  %xor124.5.2 = xor i32 %conv123.5.2, %conv120.5.2
  %conv125.5.2 = trunc i32 %xor124.5.2 to i8
  store i8 %conv125.5.2, i8* %arrayidx122.2, align 1
  %arrayidx132.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 2
  %arrayidx135.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.2, i64 0, i64 3
  %778 = load i8, i8* %arrayidx135.2, align 1
  %conv136.2 = zext i8 %778 to i32
  %arrayidx138.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 2
  %arrayidx141.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.2, i64 0, i64 3
  %779 = load i8, i8* %arrayidx141.2, align 1
  %conv142.2 = zext i8 %779 to i32
  %xor143.2 = xor i32 %conv136.2, %conv142.2
  %arrayidx146.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 3
  %arrayidx148.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.2, i64 0, i64 2
  %780 = load i8, i8* %arrayidx148.2, align 1
  %conv149.2 = zext i8 %780 to i32
  %xor150.2 = xor i32 %xor143.2, %conv149.2
  %conv151.2 = trunc i32 %xor150.2 to i8
  %arrayidx153.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 2
  %arrayidx156.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.2, i64 0, i64 3
  store i8 %conv151.2, i8* %arrayidx156.2, align 1
  %arrayidx158.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 2
  %arrayidx161.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.2, i64 0, i64 3
  %781 = load i8, i8* %arrayidx161.2, align 1
  %conv162.2 = zext i8 %781 to i32
  %arrayidx164.2 = getelementptr inbounds i8, i8* %c, i64 2
  %782 = load i8, i8* %arrayidx164.2, align 1
  %conv165.2 = zext i8 %782 to i32
  %xor166.2 = xor i32 %conv165.2, %conv162.2
  %conv167.2 = trunc i32 %xor166.2 to i8
  store i8 %conv167.2, i8* %arrayidx164.2, align 1
  %arrayidx65.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 3
  %arrayidx67.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.3, i64 0, i64 3
  %783 = load i8, i8* %arrayidx67.3, align 1
  %arrayidx69.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %783, i8* %arrayidx69.3, align 1
  %arrayidx77.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 3
  %arrayidx82.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 3
  %arrayidx98.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 3
  %arrayidx113.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 3
  %arrayidx117.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 3
  %arrayidx122.3 = getelementptr inbounds i8, i8* %c, i64 3
  %arrayidx79.3185 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.3, i64 0, i64 15
  %784 = load i8, i8* %arrayidx79.3185, align 1
  %conv80.3186 = zext i8 %784 to i32
  %arrayidx84.3187 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.3, i64 0, i64 15
  %785 = load i8, i8* %arrayidx84.3187, align 1
  %conv85.3188 = zext i8 %785 to i32
  %xor.3189 = xor i32 %conv80.3186, %conv85.3188
  %arrayidx87.3190 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.3191 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3190, i64 0, i64 3
  %786 = load i8, i8* %arrayidx89.3191, align 1
  %conv90.3192 = zext i8 %786 to i32
  %xor91.3193 = xor i32 %xor.3189, %conv90.3192
  %arrayidx94.3194 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %787 = load i8, i8* %arrayidx94.3194, align 1
  %conv95.3195 = zext i8 %787 to i32
  %xor96.3196 = xor i32 %xor91.3193, %conv95.3195
  %arrayidx101.3197 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.3, i64 0, i64 14
  %788 = load i8, i8* %arrayidx101.3197, align 1
  %conv102.3198 = zext i8 %788 to i32
  %xor103.3199 = xor i32 %xor96.3196, %conv102.3198
  %arrayidx106.3200 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.3201 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3200, i64 0, i64 3
  %789 = load i8, i8* %arrayidx108.3201, align 1
  %conv109.3202 = zext i8 %789 to i32
  %xor110.3203 = xor i32 %xor103.3199, %conv109.3202
  %conv111.3204 = trunc i32 %xor110.3203 to i8
  %arrayidx115.3205 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.3, i64 0, i64 15
  store i8 %conv111.3204, i8* %arrayidx115.3205, align 1
  %arrayidx119.3206 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.3, i64 0, i64 15
  %790 = load i8, i8* %arrayidx119.3206, align 1
  %conv120.3207 = zext i8 %790 to i32
  %791 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3208 = zext i8 %791 to i32
  %xor124.3209 = xor i32 %conv123.3208, %conv120.3207
  %conv125.3210 = trunc i32 %xor124.3209 to i8
  store i8 %conv125.3210, i8* %arrayidx122.3, align 1
  %arrayidx79.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.3, i64 0, i64 13
  %792 = load i8, i8* %arrayidx79.1.3, align 1
  %conv80.1.3 = zext i8 %792 to i32
  %arrayidx84.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.3, i64 0, i64 13
  %793 = load i8, i8* %arrayidx84.1.3, align 1
  %conv85.1.3 = zext i8 %793 to i32
  %xor.1.3 = xor i32 %conv80.1.3, %conv85.1.3
  %arrayidx87.1.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.3, i64 0, i64 3
  %794 = load i8, i8* %arrayidx89.1.3, align 1
  %conv90.1.3 = zext i8 %794 to i32
  %xor91.1.3 = xor i32 %xor.1.3, %conv90.1.3
  %arrayidx94.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %795 = load i8, i8* %arrayidx94.1.3, align 1
  %conv95.1.3 = zext i8 %795 to i32
  %xor96.1.3 = xor i32 %xor91.1.3, %conv95.1.3
  %arrayidx101.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.3, i64 0, i64 12
  %796 = load i8, i8* %arrayidx101.1.3, align 1
  %conv102.1.3 = zext i8 %796 to i32
  %xor103.1.3 = xor i32 %xor96.1.3, %conv102.1.3
  %arrayidx106.1.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.3, i64 0, i64 3
  %797 = load i8, i8* %arrayidx108.1.3, align 1
  %conv109.1.3 = zext i8 %797 to i32
  %xor110.1.3 = xor i32 %xor103.1.3, %conv109.1.3
  %conv111.1.3 = trunc i32 %xor110.1.3 to i8
  %arrayidx115.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.3, i64 0, i64 13
  store i8 %conv111.1.3, i8* %arrayidx115.1.3, align 1
  %arrayidx119.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.3, i64 0, i64 13
  %798 = load i8, i8* %arrayidx119.1.3, align 1
  %conv120.1.3 = zext i8 %798 to i32
  %799 = load i8, i8* %arrayidx122.3, align 1
  %conv123.1.3 = zext i8 %799 to i32
  %xor124.1.3 = xor i32 %conv123.1.3, %conv120.1.3
  %conv125.1.3 = trunc i32 %xor124.1.3 to i8
  store i8 %conv125.1.3, i8* %arrayidx122.3, align 1
  %arrayidx79.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.3, i64 0, i64 11
  %800 = load i8, i8* %arrayidx79.2.3, align 1
  %conv80.2.3 = zext i8 %800 to i32
  %arrayidx84.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.3, i64 0, i64 11
  %801 = load i8, i8* %arrayidx84.2.3, align 1
  %conv85.2.3 = zext i8 %801 to i32
  %xor.2.3 = xor i32 %conv80.2.3, %conv85.2.3
  %arrayidx87.2.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.3, i64 0, i64 3
  %802 = load i8, i8* %arrayidx89.2.3, align 1
  %conv90.2.3 = zext i8 %802 to i32
  %xor91.2.3 = xor i32 %xor.2.3, %conv90.2.3
  %arrayidx94.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %803 = load i8, i8* %arrayidx94.2.3, align 1
  %conv95.2.3 = zext i8 %803 to i32
  %xor96.2.3 = xor i32 %xor91.2.3, %conv95.2.3
  %arrayidx101.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.3, i64 0, i64 10
  %804 = load i8, i8* %arrayidx101.2.3, align 1
  %conv102.2.3 = zext i8 %804 to i32
  %xor103.2.3 = xor i32 %xor96.2.3, %conv102.2.3
  %arrayidx106.2.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.3, i64 0, i64 3
  %805 = load i8, i8* %arrayidx108.2.3, align 1
  %conv109.2.3 = zext i8 %805 to i32
  %xor110.2.3 = xor i32 %xor103.2.3, %conv109.2.3
  %conv111.2.3 = trunc i32 %xor110.2.3 to i8
  %arrayidx115.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.3, i64 0, i64 11
  store i8 %conv111.2.3, i8* %arrayidx115.2.3, align 1
  %arrayidx119.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.3, i64 0, i64 11
  %806 = load i8, i8* %arrayidx119.2.3, align 1
  %conv120.2.3 = zext i8 %806 to i32
  %807 = load i8, i8* %arrayidx122.3, align 1
  %conv123.2.3 = zext i8 %807 to i32
  %xor124.2.3 = xor i32 %conv123.2.3, %conv120.2.3
  %conv125.2.3 = trunc i32 %xor124.2.3 to i8
  store i8 %conv125.2.3, i8* %arrayidx122.3, align 1
  %arrayidx79.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.3, i64 0, i64 9
  %808 = load i8, i8* %arrayidx79.3.3, align 1
  %conv80.3.3 = zext i8 %808 to i32
  %arrayidx84.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.3, i64 0, i64 9
  %809 = load i8, i8* %arrayidx84.3.3, align 1
  %conv85.3.3 = zext i8 %809 to i32
  %xor.3.3 = xor i32 %conv80.3.3, %conv85.3.3
  %arrayidx87.3.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.3, i64 0, i64 3
  %810 = load i8, i8* %arrayidx89.3.3, align 1
  %conv90.3.3 = zext i8 %810 to i32
  %xor91.3.3 = xor i32 %xor.3.3, %conv90.3.3
  %arrayidx94.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %811 = load i8, i8* %arrayidx94.3.3, align 1
  %conv95.3.3 = zext i8 %811 to i32
  %xor96.3.3 = xor i32 %xor91.3.3, %conv95.3.3
  %arrayidx101.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.3, i64 0, i64 8
  %812 = load i8, i8* %arrayidx101.3.3, align 1
  %conv102.3.3 = zext i8 %812 to i32
  %xor103.3.3 = xor i32 %xor96.3.3, %conv102.3.3
  %arrayidx106.3.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.3, i64 0, i64 3
  %813 = load i8, i8* %arrayidx108.3.3, align 1
  %conv109.3.3 = zext i8 %813 to i32
  %xor110.3.3 = xor i32 %xor103.3.3, %conv109.3.3
  %conv111.3.3 = trunc i32 %xor110.3.3 to i8
  %arrayidx115.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.3, i64 0, i64 9
  store i8 %conv111.3.3, i8* %arrayidx115.3.3, align 1
  %arrayidx119.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.3, i64 0, i64 9
  %814 = load i8, i8* %arrayidx119.3.3, align 1
  %conv120.3.3 = zext i8 %814 to i32
  %815 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3.3 = zext i8 %815 to i32
  %xor124.3.3 = xor i32 %conv123.3.3, %conv120.3.3
  %conv125.3.3 = trunc i32 %xor124.3.3 to i8
  store i8 %conv125.3.3, i8* %arrayidx122.3, align 1
  %arrayidx79.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.3, i64 0, i64 7
  %816 = load i8, i8* %arrayidx79.4.3, align 1
  %conv80.4.3 = zext i8 %816 to i32
  %arrayidx84.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.3, i64 0, i64 7
  %817 = load i8, i8* %arrayidx84.4.3, align 1
  %conv85.4.3 = zext i8 %817 to i32
  %xor.4.3 = xor i32 %conv80.4.3, %conv85.4.3
  %arrayidx87.4.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx89.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4.3, i64 0, i64 3
  %818 = load i8, i8* %arrayidx89.4.3, align 1
  %conv90.4.3 = zext i8 %818 to i32
  %xor91.4.3 = xor i32 %xor.4.3, %conv90.4.3
  %arrayidx94.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  %819 = load i8, i8* %arrayidx94.4.3, align 1
  %conv95.4.3 = zext i8 %819 to i32
  %xor96.4.3 = xor i32 %xor91.4.3, %conv95.4.3
  %arrayidx101.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.3, i64 0, i64 6
  %820 = load i8, i8* %arrayidx101.4.3, align 1
  %conv102.4.3 = zext i8 %820 to i32
  %xor103.4.3 = xor i32 %xor96.4.3, %conv102.4.3
  %arrayidx106.4.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx108.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4.3, i64 0, i64 3
  %821 = load i8, i8* %arrayidx108.4.3, align 1
  %conv109.4.3 = zext i8 %821 to i32
  %xor110.4.3 = xor i32 %xor103.4.3, %conv109.4.3
  %conv111.4.3 = trunc i32 %xor110.4.3 to i8
  %arrayidx115.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.3, i64 0, i64 7
  store i8 %conv111.4.3, i8* %arrayidx115.4.3, align 1
  %arrayidx119.4.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.3, i64 0, i64 7
  %822 = load i8, i8* %arrayidx119.4.3, align 1
  %conv120.4.3 = zext i8 %822 to i32
  %823 = load i8, i8* %arrayidx122.3, align 1
  %conv123.4.3 = zext i8 %823 to i32
  %xor124.4.3 = xor i32 %conv123.4.3, %conv120.4.3
  %conv125.4.3 = trunc i32 %xor124.4.3 to i8
  store i8 %conv125.4.3, i8* %arrayidx122.3, align 1
  %arrayidx79.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.3, i64 0, i64 5
  %824 = load i8, i8* %arrayidx79.5.3, align 1
  %conv80.5.3 = zext i8 %824 to i32
  %arrayidx84.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.3, i64 0, i64 5
  %825 = load i8, i8* %arrayidx84.5.3, align 1
  %conv85.5.3 = zext i8 %825 to i32
  %xor.5.3 = xor i32 %conv80.5.3, %conv85.5.3
  %arrayidx87.5.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.5.3, i64 0, i64 3
  %826 = load i8, i8* %arrayidx89.5.3, align 1
  %conv90.5.3 = zext i8 %826 to i32
  %xor91.5.3 = xor i32 %xor.5.3, %conv90.5.3
  %arrayidx94.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 4
  %827 = load i8, i8* %arrayidx94.5.3, align 1
  %conv95.5.3 = zext i8 %827 to i32
  %xor96.5.3 = xor i32 %xor91.5.3, %conv95.5.3
  %arrayidx101.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.3, i64 0, i64 4
  %828 = load i8, i8* %arrayidx101.5.3, align 1
  %conv102.5.3 = zext i8 %828 to i32
  %xor103.5.3 = xor i32 %xor96.5.3, %conv102.5.3
  %arrayidx106.5.3 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.5.3, i64 0, i64 3
  %829 = load i8, i8* %arrayidx108.5.3, align 1
  %conv109.5.3 = zext i8 %829 to i32
  %xor110.5.3 = xor i32 %xor103.5.3, %conv109.5.3
  %conv111.5.3 = trunc i32 %xor110.5.3 to i8
  %arrayidx115.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.3, i64 0, i64 5
  store i8 %conv111.5.3, i8* %arrayidx115.5.3, align 1
  %arrayidx119.5.3 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.3, i64 0, i64 5
  %830 = load i8, i8* %arrayidx119.5.3, align 1
  %conv120.5.3 = zext i8 %830 to i32
  %831 = load i8, i8* %arrayidx122.3, align 1
  %conv123.5.3 = zext i8 %831 to i32
  %xor124.5.3 = xor i32 %conv123.5.3, %conv120.5.3
  %conv125.5.3 = trunc i32 %xor124.5.3 to i8
  store i8 %conv125.5.3, i8* %arrayidx122.3, align 1
  %arrayidx192.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep19.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 2, i64 3
  %scevgep1920.3 = bitcast i8* %scevgep19.3 to [16 x [16 x i8]]*
  %832 = load i8, i8* %scevgep19.3, align 1
  %conv190.prol.3 = zext i8 %832 to i32
  %833 = load i8, i8* %arrayidx192.3, align 1
  %conv193.prol.3 = zext i8 %833 to i32
  %xor194.prol.3 = xor i32 %conv193.prol.3, %conv190.prol.3
  %conv195.prol.3 = trunc i32 %xor194.prol.3 to i8
  store i8 %conv195.prol.3, i8* %arrayidx192.3, align 1
  %scevgep22.prol.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.3, i64 0, i64 -1, i64 0
  %834 = bitcast i8* %scevgep22.prol.3 to [16 x [16 x i8]]*
  %lsr.iv2123.3 = bitcast [16 x [16 x i8]]* %834 to i8*
  %835 = load i8, i8* %lsr.iv2123.3, align 1
  %conv190.3213 = zext i8 %835 to i32
  %836 = load i8, i8* %arrayidx192.3, align 1
  %conv193.3214 = zext i8 %836 to i32
  %xor194.3215 = xor i32 %conv193.3214, %conv190.3213
  %conv195.3216 = trunc i32 %xor194.3215 to i8
  store i8 %conv195.3216, i8* %arrayidx192.3, align 1
  %scevgep22.3218 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %834, i64 0, i64 -1, i64 0
  %837 = load i8, i8* %scevgep22.3218, align 1
  %conv190.1.3219 = zext i8 %837 to i32
  %838 = load i8, i8* %arrayidx192.3, align 1
  %conv193.1.3220 = zext i8 %838 to i32
  %xor194.1.3221 = xor i32 %conv193.1.3220, %conv190.1.3219
  %conv195.1.3222 = trunc i32 %xor194.1.3221 to i8
  store i8 %conv195.1.3222, i8* %arrayidx192.3, align 1
  %arrayidx65.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx67.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.4, i64 0, i64 4
  %839 = load i8, i8* %arrayidx67.4, align 1
  %arrayidx69.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %839, i8* %arrayidx69.4, align 1
  %arrayidx77.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 4
  %arrayidx82.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx98.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx113.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 4
  %arrayidx117.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 4
  %arrayidx122.4 = getelementptr inbounds i8, i8* %c, i64 4
  %arrayidx79.4227 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.4, i64 0, i64 15
  %840 = load i8, i8* %arrayidx79.4227, align 1
  %conv80.4228 = zext i8 %840 to i32
  %arrayidx84.4229 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.4, i64 0, i64 15
  %841 = load i8, i8* %arrayidx84.4229, align 1
  %conv85.4230 = zext i8 %841 to i32
  %xor.4231 = xor i32 %conv80.4228, %conv85.4230
  %arrayidx87.4232 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.4233 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4232, i64 0, i64 4
  %842 = load i8, i8* %arrayidx89.4233, align 1
  %conv90.4234 = zext i8 %842 to i32
  %xor91.4235 = xor i32 %xor.4231, %conv90.4234
  %arrayidx94.4236 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %843 = load i8, i8* %arrayidx94.4236, align 1
  %conv95.4237 = zext i8 %843 to i32
  %xor96.4238 = xor i32 %xor91.4235, %conv95.4237
  %arrayidx101.4239 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.4, i64 0, i64 14
  %844 = load i8, i8* %arrayidx101.4239, align 1
  %conv102.4240 = zext i8 %844 to i32
  %xor103.4241 = xor i32 %xor96.4238, %conv102.4240
  %arrayidx106.4242 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.4243 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4242, i64 0, i64 4
  %845 = load i8, i8* %arrayidx108.4243, align 1
  %conv109.4244 = zext i8 %845 to i32
  %xor110.4245 = xor i32 %xor103.4241, %conv109.4244
  %conv111.4246 = trunc i32 %xor110.4245 to i8
  %arrayidx115.4247 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.4, i64 0, i64 15
  store i8 %conv111.4246, i8* %arrayidx115.4247, align 1
  %arrayidx119.4248 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.4, i64 0, i64 15
  %846 = load i8, i8* %arrayidx119.4248, align 1
  %conv120.4249 = zext i8 %846 to i32
  %847 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4250 = zext i8 %847 to i32
  %xor124.4251 = xor i32 %conv123.4250, %conv120.4249
  %conv125.4252 = trunc i32 %xor124.4251 to i8
  store i8 %conv125.4252, i8* %arrayidx122.4, align 1
  %arrayidx79.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.4, i64 0, i64 13
  %848 = load i8, i8* %arrayidx79.1.4, align 1
  %conv80.1.4 = zext i8 %848 to i32
  %arrayidx84.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.4, i64 0, i64 13
  %849 = load i8, i8* %arrayidx84.1.4, align 1
  %conv85.1.4 = zext i8 %849 to i32
  %xor.1.4 = xor i32 %conv80.1.4, %conv85.1.4
  %arrayidx87.1.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.4, i64 0, i64 4
  %850 = load i8, i8* %arrayidx89.1.4, align 1
  %conv90.1.4 = zext i8 %850 to i32
  %xor91.1.4 = xor i32 %xor.1.4, %conv90.1.4
  %arrayidx94.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %851 = load i8, i8* %arrayidx94.1.4, align 1
  %conv95.1.4 = zext i8 %851 to i32
  %xor96.1.4 = xor i32 %xor91.1.4, %conv95.1.4
  %arrayidx101.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.4, i64 0, i64 12
  %852 = load i8, i8* %arrayidx101.1.4, align 1
  %conv102.1.4 = zext i8 %852 to i32
  %xor103.1.4 = xor i32 %xor96.1.4, %conv102.1.4
  %arrayidx106.1.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.4, i64 0, i64 4
  %853 = load i8, i8* %arrayidx108.1.4, align 1
  %conv109.1.4 = zext i8 %853 to i32
  %xor110.1.4 = xor i32 %xor103.1.4, %conv109.1.4
  %conv111.1.4 = trunc i32 %xor110.1.4 to i8
  %arrayidx115.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.4, i64 0, i64 13
  store i8 %conv111.1.4, i8* %arrayidx115.1.4, align 1
  %arrayidx119.1.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.4, i64 0, i64 13
  %854 = load i8, i8* %arrayidx119.1.4, align 1
  %conv120.1.4 = zext i8 %854 to i32
  %855 = load i8, i8* %arrayidx122.4, align 1
  %conv123.1.4 = zext i8 %855 to i32
  %xor124.1.4 = xor i32 %conv123.1.4, %conv120.1.4
  %conv125.1.4 = trunc i32 %xor124.1.4 to i8
  store i8 %conv125.1.4, i8* %arrayidx122.4, align 1
  %arrayidx79.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.4, i64 0, i64 11
  %856 = load i8, i8* %arrayidx79.2.4, align 1
  %conv80.2.4 = zext i8 %856 to i32
  %arrayidx84.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.4, i64 0, i64 11
  %857 = load i8, i8* %arrayidx84.2.4, align 1
  %conv85.2.4 = zext i8 %857 to i32
  %xor.2.4 = xor i32 %conv80.2.4, %conv85.2.4
  %arrayidx87.2.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.4, i64 0, i64 4
  %858 = load i8, i8* %arrayidx89.2.4, align 1
  %conv90.2.4 = zext i8 %858 to i32
  %xor91.2.4 = xor i32 %xor.2.4, %conv90.2.4
  %arrayidx94.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %859 = load i8, i8* %arrayidx94.2.4, align 1
  %conv95.2.4 = zext i8 %859 to i32
  %xor96.2.4 = xor i32 %xor91.2.4, %conv95.2.4
  %arrayidx101.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.4, i64 0, i64 10
  %860 = load i8, i8* %arrayidx101.2.4, align 1
  %conv102.2.4 = zext i8 %860 to i32
  %xor103.2.4 = xor i32 %xor96.2.4, %conv102.2.4
  %arrayidx106.2.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.4, i64 0, i64 4
  %861 = load i8, i8* %arrayidx108.2.4, align 1
  %conv109.2.4 = zext i8 %861 to i32
  %xor110.2.4 = xor i32 %xor103.2.4, %conv109.2.4
  %conv111.2.4 = trunc i32 %xor110.2.4 to i8
  %arrayidx115.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.4, i64 0, i64 11
  store i8 %conv111.2.4, i8* %arrayidx115.2.4, align 1
  %arrayidx119.2.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.4, i64 0, i64 11
  %862 = load i8, i8* %arrayidx119.2.4, align 1
  %conv120.2.4 = zext i8 %862 to i32
  %863 = load i8, i8* %arrayidx122.4, align 1
  %conv123.2.4 = zext i8 %863 to i32
  %xor124.2.4 = xor i32 %conv123.2.4, %conv120.2.4
  %conv125.2.4 = trunc i32 %xor124.2.4 to i8
  store i8 %conv125.2.4, i8* %arrayidx122.4, align 1
  %arrayidx79.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.4, i64 0, i64 9
  %864 = load i8, i8* %arrayidx79.3.4, align 1
  %conv80.3.4 = zext i8 %864 to i32
  %arrayidx84.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.4, i64 0, i64 9
  %865 = load i8, i8* %arrayidx84.3.4, align 1
  %conv85.3.4 = zext i8 %865 to i32
  %xor.3.4 = xor i32 %conv80.3.4, %conv85.3.4
  %arrayidx87.3.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.4, i64 0, i64 4
  %866 = load i8, i8* %arrayidx89.3.4, align 1
  %conv90.3.4 = zext i8 %866 to i32
  %xor91.3.4 = xor i32 %xor.3.4, %conv90.3.4
  %arrayidx94.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %867 = load i8, i8* %arrayidx94.3.4, align 1
  %conv95.3.4 = zext i8 %867 to i32
  %xor96.3.4 = xor i32 %xor91.3.4, %conv95.3.4
  %arrayidx101.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.4, i64 0, i64 8
  %868 = load i8, i8* %arrayidx101.3.4, align 1
  %conv102.3.4 = zext i8 %868 to i32
  %xor103.3.4 = xor i32 %xor96.3.4, %conv102.3.4
  %arrayidx106.3.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.4, i64 0, i64 4
  %869 = load i8, i8* %arrayidx108.3.4, align 1
  %conv109.3.4 = zext i8 %869 to i32
  %xor110.3.4 = xor i32 %xor103.3.4, %conv109.3.4
  %conv111.3.4 = trunc i32 %xor110.3.4 to i8
  %arrayidx115.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.4, i64 0, i64 9
  store i8 %conv111.3.4, i8* %arrayidx115.3.4, align 1
  %arrayidx119.3.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.4, i64 0, i64 9
  %870 = load i8, i8* %arrayidx119.3.4, align 1
  %conv120.3.4 = zext i8 %870 to i32
  %871 = load i8, i8* %arrayidx122.4, align 1
  %conv123.3.4 = zext i8 %871 to i32
  %xor124.3.4 = xor i32 %conv123.3.4, %conv120.3.4
  %conv125.3.4 = trunc i32 %xor124.3.4 to i8
  store i8 %conv125.3.4, i8* %arrayidx122.4, align 1
  %arrayidx79.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.4, i64 0, i64 7
  %872 = load i8, i8* %arrayidx79.4.4, align 1
  %conv80.4.4 = zext i8 %872 to i32
  %arrayidx84.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.4, i64 0, i64 7
  %873 = load i8, i8* %arrayidx84.4.4, align 1
  %conv85.4.4 = zext i8 %873 to i32
  %xor.4.4 = xor i32 %conv80.4.4, %conv85.4.4
  %arrayidx87.4.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx89.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4.4, i64 0, i64 4
  %874 = load i8, i8* %arrayidx89.4.4, align 1
  %conv90.4.4 = zext i8 %874 to i32
  %xor91.4.4 = xor i32 %xor.4.4, %conv90.4.4
  %arrayidx94.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  %875 = load i8, i8* %arrayidx94.4.4, align 1
  %conv95.4.4 = zext i8 %875 to i32
  %xor96.4.4 = xor i32 %xor91.4.4, %conv95.4.4
  %arrayidx101.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.4, i64 0, i64 6
  %876 = load i8, i8* %arrayidx101.4.4, align 1
  %conv102.4.4 = zext i8 %876 to i32
  %xor103.4.4 = xor i32 %xor96.4.4, %conv102.4.4
  %arrayidx106.4.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx108.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4.4, i64 0, i64 4
  %877 = load i8, i8* %arrayidx108.4.4, align 1
  %conv109.4.4 = zext i8 %877 to i32
  %xor110.4.4 = xor i32 %xor103.4.4, %conv109.4.4
  %conv111.4.4 = trunc i32 %xor110.4.4 to i8
  %arrayidx115.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.4, i64 0, i64 7
  store i8 %conv111.4.4, i8* %arrayidx115.4.4, align 1
  %arrayidx119.4.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.4, i64 0, i64 7
  %878 = load i8, i8* %arrayidx119.4.4, align 1
  %conv120.4.4 = zext i8 %878 to i32
  %879 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4.4 = zext i8 %879 to i32
  %xor124.4.4 = xor i32 %conv123.4.4, %conv120.4.4
  %conv125.4.4 = trunc i32 %xor124.4.4 to i8
  store i8 %conv125.4.4, i8* %arrayidx122.4, align 1
  %arrayidx132.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 4
  %arrayidx135.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.4, i64 0, i64 5
  %880 = load i8, i8* %arrayidx135.4, align 1
  %conv136.4 = zext i8 %880 to i32
  %arrayidx138.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 4
  %arrayidx141.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.4, i64 0, i64 5
  %881 = load i8, i8* %arrayidx141.4, align 1
  %conv142.4 = zext i8 %881 to i32
  %xor143.4 = xor i32 %conv136.4, %conv142.4
  %arrayidx146.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx148.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.4, i64 0, i64 4
  %882 = load i8, i8* %arrayidx148.4, align 1
  %conv149.4 = zext i8 %882 to i32
  %xor150.4 = xor i32 %xor143.4, %conv149.4
  %conv151.4 = trunc i32 %xor150.4 to i8
  %arrayidx153.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 4
  %arrayidx156.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.4, i64 0, i64 5
  store i8 %conv151.4, i8* %arrayidx156.4, align 1
  %arrayidx158.4 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 4
  %arrayidx161.4 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.4, i64 0, i64 5
  %883 = load i8, i8* %arrayidx161.4, align 1
  %conv162.4 = zext i8 %883 to i32
  %arrayidx164.4 = getelementptr inbounds i8, i8* %c, i64 4
  %884 = load i8, i8* %arrayidx164.4, align 1
  %conv165.4 = zext i8 %884 to i32
  %xor166.4 = xor i32 %conv165.4, %conv162.4
  %conv167.4 = trunc i32 %xor166.4 to i8
  store i8 %conv167.4, i8* %arrayidx164.4, align 1
  %arrayidx65.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx67.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.5, i64 0, i64 5
  %885 = load i8, i8* %arrayidx67.5, align 1
  %arrayidx69.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %885, i8* %arrayidx69.5, align 1
  %arrayidx77.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 5
  %arrayidx82.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx98.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 5
  %arrayidx113.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 5
  %arrayidx117.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 5
  %arrayidx122.5 = getelementptr inbounds i8, i8* %c, i64 5
  %arrayidx79.5269 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.5, i64 0, i64 15
  %886 = load i8, i8* %arrayidx79.5269, align 1
  %conv80.5270 = zext i8 %886 to i32
  %arrayidx84.5271 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.5, i64 0, i64 15
  %887 = load i8, i8* %arrayidx84.5271, align 1
  %conv85.5272 = zext i8 %887 to i32
  %xor.5273 = xor i32 %conv80.5270, %conv85.5272
  %arrayidx87.5274 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.5275 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.5274, i64 0, i64 5
  %888 = load i8, i8* %arrayidx89.5275, align 1
  %conv90.5276 = zext i8 %888 to i32
  %xor91.5277 = xor i32 %xor.5273, %conv90.5276
  %arrayidx94.5278 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %889 = load i8, i8* %arrayidx94.5278, align 1
  %conv95.5279 = zext i8 %889 to i32
  %xor96.5280 = xor i32 %xor91.5277, %conv95.5279
  %arrayidx101.5281 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.5, i64 0, i64 14
  %890 = load i8, i8* %arrayidx101.5281, align 1
  %conv102.5282 = zext i8 %890 to i32
  %xor103.5283 = xor i32 %xor96.5280, %conv102.5282
  %arrayidx106.5284 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.5285 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.5284, i64 0, i64 5
  %891 = load i8, i8* %arrayidx108.5285, align 1
  %conv109.5286 = zext i8 %891 to i32
  %xor110.5287 = xor i32 %xor103.5283, %conv109.5286
  %conv111.5288 = trunc i32 %xor110.5287 to i8
  %arrayidx115.5289 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.5, i64 0, i64 15
  store i8 %conv111.5288, i8* %arrayidx115.5289, align 1
  %arrayidx119.5290 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.5, i64 0, i64 15
  %892 = load i8, i8* %arrayidx119.5290, align 1
  %conv120.5291 = zext i8 %892 to i32
  %893 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5292 = zext i8 %893 to i32
  %xor124.5293 = xor i32 %conv123.5292, %conv120.5291
  %conv125.5294 = trunc i32 %xor124.5293 to i8
  store i8 %conv125.5294, i8* %arrayidx122.5, align 1
  %arrayidx79.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.5, i64 0, i64 13
  %894 = load i8, i8* %arrayidx79.1.5, align 1
  %conv80.1.5 = zext i8 %894 to i32
  %arrayidx84.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.5, i64 0, i64 13
  %895 = load i8, i8* %arrayidx84.1.5, align 1
  %conv85.1.5 = zext i8 %895 to i32
  %xor.1.5 = xor i32 %conv80.1.5, %conv85.1.5
  %arrayidx87.1.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.5, i64 0, i64 5
  %896 = load i8, i8* %arrayidx89.1.5, align 1
  %conv90.1.5 = zext i8 %896 to i32
  %xor91.1.5 = xor i32 %xor.1.5, %conv90.1.5
  %arrayidx94.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %897 = load i8, i8* %arrayidx94.1.5, align 1
  %conv95.1.5 = zext i8 %897 to i32
  %xor96.1.5 = xor i32 %xor91.1.5, %conv95.1.5
  %arrayidx101.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.5, i64 0, i64 12
  %898 = load i8, i8* %arrayidx101.1.5, align 1
  %conv102.1.5 = zext i8 %898 to i32
  %xor103.1.5 = xor i32 %xor96.1.5, %conv102.1.5
  %arrayidx106.1.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.5, i64 0, i64 5
  %899 = load i8, i8* %arrayidx108.1.5, align 1
  %conv109.1.5 = zext i8 %899 to i32
  %xor110.1.5 = xor i32 %xor103.1.5, %conv109.1.5
  %conv111.1.5 = trunc i32 %xor110.1.5 to i8
  %arrayidx115.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.5, i64 0, i64 13
  store i8 %conv111.1.5, i8* %arrayidx115.1.5, align 1
  %arrayidx119.1.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.5, i64 0, i64 13
  %900 = load i8, i8* %arrayidx119.1.5, align 1
  %conv120.1.5 = zext i8 %900 to i32
  %901 = load i8, i8* %arrayidx122.5, align 1
  %conv123.1.5 = zext i8 %901 to i32
  %xor124.1.5 = xor i32 %conv123.1.5, %conv120.1.5
  %conv125.1.5 = trunc i32 %xor124.1.5 to i8
  store i8 %conv125.1.5, i8* %arrayidx122.5, align 1
  %arrayidx79.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.5, i64 0, i64 11
  %902 = load i8, i8* %arrayidx79.2.5, align 1
  %conv80.2.5 = zext i8 %902 to i32
  %arrayidx84.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.5, i64 0, i64 11
  %903 = load i8, i8* %arrayidx84.2.5, align 1
  %conv85.2.5 = zext i8 %903 to i32
  %xor.2.5 = xor i32 %conv80.2.5, %conv85.2.5
  %arrayidx87.2.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.5, i64 0, i64 5
  %904 = load i8, i8* %arrayidx89.2.5, align 1
  %conv90.2.5 = zext i8 %904 to i32
  %xor91.2.5 = xor i32 %xor.2.5, %conv90.2.5
  %arrayidx94.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %905 = load i8, i8* %arrayidx94.2.5, align 1
  %conv95.2.5 = zext i8 %905 to i32
  %xor96.2.5 = xor i32 %xor91.2.5, %conv95.2.5
  %arrayidx101.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.5, i64 0, i64 10
  %906 = load i8, i8* %arrayidx101.2.5, align 1
  %conv102.2.5 = zext i8 %906 to i32
  %xor103.2.5 = xor i32 %xor96.2.5, %conv102.2.5
  %arrayidx106.2.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.5, i64 0, i64 5
  %907 = load i8, i8* %arrayidx108.2.5, align 1
  %conv109.2.5 = zext i8 %907 to i32
  %xor110.2.5 = xor i32 %xor103.2.5, %conv109.2.5
  %conv111.2.5 = trunc i32 %xor110.2.5 to i8
  %arrayidx115.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.5, i64 0, i64 11
  store i8 %conv111.2.5, i8* %arrayidx115.2.5, align 1
  %arrayidx119.2.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.5, i64 0, i64 11
  %908 = load i8, i8* %arrayidx119.2.5, align 1
  %conv120.2.5 = zext i8 %908 to i32
  %909 = load i8, i8* %arrayidx122.5, align 1
  %conv123.2.5 = zext i8 %909 to i32
  %xor124.2.5 = xor i32 %conv123.2.5, %conv120.2.5
  %conv125.2.5 = trunc i32 %xor124.2.5 to i8
  store i8 %conv125.2.5, i8* %arrayidx122.5, align 1
  %arrayidx79.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.5, i64 0, i64 9
  %910 = load i8, i8* %arrayidx79.3.5, align 1
  %conv80.3.5 = zext i8 %910 to i32
  %arrayidx84.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.5, i64 0, i64 9
  %911 = load i8, i8* %arrayidx84.3.5, align 1
  %conv85.3.5 = zext i8 %911 to i32
  %xor.3.5 = xor i32 %conv80.3.5, %conv85.3.5
  %arrayidx87.3.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.5, i64 0, i64 5
  %912 = load i8, i8* %arrayidx89.3.5, align 1
  %conv90.3.5 = zext i8 %912 to i32
  %xor91.3.5 = xor i32 %xor.3.5, %conv90.3.5
  %arrayidx94.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %913 = load i8, i8* %arrayidx94.3.5, align 1
  %conv95.3.5 = zext i8 %913 to i32
  %xor96.3.5 = xor i32 %xor91.3.5, %conv95.3.5
  %arrayidx101.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.5, i64 0, i64 8
  %914 = load i8, i8* %arrayidx101.3.5, align 1
  %conv102.3.5 = zext i8 %914 to i32
  %xor103.3.5 = xor i32 %xor96.3.5, %conv102.3.5
  %arrayidx106.3.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.5, i64 0, i64 5
  %915 = load i8, i8* %arrayidx108.3.5, align 1
  %conv109.3.5 = zext i8 %915 to i32
  %xor110.3.5 = xor i32 %xor103.3.5, %conv109.3.5
  %conv111.3.5 = trunc i32 %xor110.3.5 to i8
  %arrayidx115.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.5, i64 0, i64 9
  store i8 %conv111.3.5, i8* %arrayidx115.3.5, align 1
  %arrayidx119.3.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.5, i64 0, i64 9
  %916 = load i8, i8* %arrayidx119.3.5, align 1
  %conv120.3.5 = zext i8 %916 to i32
  %917 = load i8, i8* %arrayidx122.5, align 1
  %conv123.3.5 = zext i8 %917 to i32
  %xor124.3.5 = xor i32 %conv123.3.5, %conv120.3.5
  %conv125.3.5 = trunc i32 %xor124.3.5 to i8
  store i8 %conv125.3.5, i8* %arrayidx122.5, align 1
  %arrayidx79.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.5, i64 0, i64 7
  %918 = load i8, i8* %arrayidx79.4.5, align 1
  %conv80.4.5 = zext i8 %918 to i32
  %arrayidx84.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.5, i64 0, i64 7
  %919 = load i8, i8* %arrayidx84.4.5, align 1
  %conv85.4.5 = zext i8 %919 to i32
  %xor.4.5 = xor i32 %conv80.4.5, %conv85.4.5
  %arrayidx87.4.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx89.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.4.5, i64 0, i64 5
  %920 = load i8, i8* %arrayidx89.4.5, align 1
  %conv90.4.5 = zext i8 %920 to i32
  %xor91.4.5 = xor i32 %xor.4.5, %conv90.4.5
  %arrayidx94.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 6
  %921 = load i8, i8* %arrayidx94.4.5, align 1
  %conv95.4.5 = zext i8 %921 to i32
  %xor96.4.5 = xor i32 %xor91.4.5, %conv95.4.5
  %arrayidx101.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.5, i64 0, i64 6
  %922 = load i8, i8* %arrayidx101.4.5, align 1
  %conv102.4.5 = zext i8 %922 to i32
  %xor103.4.5 = xor i32 %xor96.4.5, %conv102.4.5
  %arrayidx106.4.5 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx108.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.4.5, i64 0, i64 5
  %923 = load i8, i8* %arrayidx108.4.5, align 1
  %conv109.4.5 = zext i8 %923 to i32
  %xor110.4.5 = xor i32 %xor103.4.5, %conv109.4.5
  %conv111.4.5 = trunc i32 %xor110.4.5 to i8
  %arrayidx115.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.5, i64 0, i64 7
  store i8 %conv111.4.5, i8* %arrayidx115.4.5, align 1
  %arrayidx119.4.5 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.5, i64 0, i64 7
  %924 = load i8, i8* %arrayidx119.4.5, align 1
  %conv120.4.5 = zext i8 %924 to i32
  %925 = load i8, i8* %arrayidx122.5, align 1
  %conv123.4.5 = zext i8 %925 to i32
  %xor124.4.5 = xor i32 %conv123.4.5, %conv120.4.5
  %conv125.4.5 = trunc i32 %xor124.4.5 to i8
  store i8 %conv125.4.5, i8* %arrayidx122.5, align 1
  %arrayidx192.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep19.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 4, i64 5
  %scevgep1920.5 = bitcast i8* %scevgep19.5 to [16 x [16 x i8]]*
  %926 = load i8, i8* %scevgep19.5, align 1
  %conv190.prol.5 = zext i8 %926 to i32
  %927 = load i8, i8* %arrayidx192.5, align 1
  %conv193.prol.5 = zext i8 %927 to i32
  %xor194.prol.5 = xor i32 %conv193.prol.5, %conv190.prol.5
  %conv195.prol.5 = trunc i32 %xor194.prol.5 to i8
  store i8 %conv195.prol.5, i8* %arrayidx192.5, align 1
  %scevgep22.prol.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.5, i64 0, i64 -1, i64 0
  %928 = bitcast i8* %scevgep22.prol.5 to [16 x [16 x i8]]*
  %lsr.iv2123.5 = bitcast [16 x [16 x i8]]* %928 to i8*
  %929 = load i8, i8* %lsr.iv2123.5, align 1
  %conv190.5297 = zext i8 %929 to i32
  %930 = load i8, i8* %arrayidx192.5, align 1
  %conv193.5298 = zext i8 %930 to i32
  %xor194.5299 = xor i32 %conv193.5298, %conv190.5297
  %conv195.5300 = trunc i32 %xor194.5299 to i8
  store i8 %conv195.5300, i8* %arrayidx192.5, align 1
  %scevgep22.5302 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %928, i64 0, i64 -1, i64 0
  %931 = bitcast i8* %scevgep22.5302 to [16 x [16 x i8]]*
  %932 = load i8, i8* %scevgep22.5302, align 1
  %conv190.1.5303 = zext i8 %932 to i32
  %933 = load i8, i8* %arrayidx192.5, align 1
  %conv193.1.5304 = zext i8 %933 to i32
  %xor194.1.5305 = xor i32 %conv193.1.5304, %conv190.1.5303
  %conv195.1.5306 = trunc i32 %xor194.1.5305 to i8
  store i8 %conv195.1.5306, i8* %arrayidx192.5, align 1
  %scevgep22.1.5308 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %931, i64 0, i64 -1, i64 0
  %934 = bitcast i8* %scevgep22.1.5308 to [16 x [16 x i8]]*
  %935 = load i8, i8* %scevgep22.1.5308, align 1
  %conv190.195.5 = zext i8 %935 to i32
  %936 = load i8, i8* %arrayidx192.5, align 1
  %conv193.196.5 = zext i8 %936 to i32
  %xor194.197.5 = xor i32 %conv193.196.5, %conv190.195.5
  %conv195.198.5 = trunc i32 %xor194.197.5 to i8
  store i8 %conv195.198.5, i8* %arrayidx192.5, align 1
  %scevgep22.1100.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %934, i64 0, i64 -1, i64 0
  %937 = load i8, i8* %scevgep22.1100.5, align 1
  %conv190.1.1.5 = zext i8 %937 to i32
  %938 = load i8, i8* %arrayidx192.5, align 1
  %conv193.1.1.5 = zext i8 %938 to i32
  %xor194.1.1.5 = xor i32 %conv193.1.1.5, %conv190.1.1.5
  %conv195.1.1.5 = trunc i32 %xor194.1.1.5 to i8
  store i8 %conv195.1.1.5, i8* %arrayidx192.5, align 1
  %arrayidx65.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx67.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.6, i64 0, i64 6
  %939 = load i8, i8* %arrayidx67.6, align 1
  %arrayidx69.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %939, i8* %arrayidx69.6, align 1
  %arrayidx77.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 6
  %arrayidx82.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx98.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx113.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 6
  %arrayidx117.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 6
  %arrayidx122.6 = getelementptr inbounds i8, i8* %c, i64 6
  %arrayidx79.6311 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.6, i64 0, i64 15
  %940 = load i8, i8* %arrayidx79.6311, align 1
  %conv80.6312 = zext i8 %940 to i32
  %arrayidx84.6313 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.6, i64 0, i64 15
  %941 = load i8, i8* %arrayidx84.6313, align 1
  %conv85.6314 = zext i8 %941 to i32
  %xor.6315 = xor i32 %conv80.6312, %conv85.6314
  %arrayidx87.6316 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.6317 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.6316, i64 0, i64 6
  %942 = load i8, i8* %arrayidx89.6317, align 1
  %conv90.6318 = zext i8 %942 to i32
  %xor91.6319 = xor i32 %xor.6315, %conv90.6318
  %arrayidx94.6320 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %943 = load i8, i8* %arrayidx94.6320, align 1
  %conv95.6321 = zext i8 %943 to i32
  %xor96.6322 = xor i32 %xor91.6319, %conv95.6321
  %arrayidx101.6323 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.6, i64 0, i64 14
  %944 = load i8, i8* %arrayidx101.6323, align 1
  %conv102.6324 = zext i8 %944 to i32
  %xor103.6325 = xor i32 %xor96.6322, %conv102.6324
  %arrayidx106.6326 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.6327 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.6326, i64 0, i64 6
  %945 = load i8, i8* %arrayidx108.6327, align 1
  %conv109.6328 = zext i8 %945 to i32
  %xor110.6329 = xor i32 %xor103.6325, %conv109.6328
  %conv111.6330 = trunc i32 %xor110.6329 to i8
  %arrayidx115.6331 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.6, i64 0, i64 15
  store i8 %conv111.6330, i8* %arrayidx115.6331, align 1
  %arrayidx119.6332 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.6, i64 0, i64 15
  %946 = load i8, i8* %arrayidx119.6332, align 1
  %conv120.6333 = zext i8 %946 to i32
  %947 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6334 = zext i8 %947 to i32
  %xor124.6335 = xor i32 %conv123.6334, %conv120.6333
  %conv125.6336 = trunc i32 %xor124.6335 to i8
  store i8 %conv125.6336, i8* %arrayidx122.6, align 1
  %arrayidx79.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.6, i64 0, i64 13
  %948 = load i8, i8* %arrayidx79.1.6, align 1
  %conv80.1.6 = zext i8 %948 to i32
  %arrayidx84.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.6, i64 0, i64 13
  %949 = load i8, i8* %arrayidx84.1.6, align 1
  %conv85.1.6 = zext i8 %949 to i32
  %xor.1.6 = xor i32 %conv80.1.6, %conv85.1.6
  %arrayidx87.1.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.6, i64 0, i64 6
  %950 = load i8, i8* %arrayidx89.1.6, align 1
  %conv90.1.6 = zext i8 %950 to i32
  %xor91.1.6 = xor i32 %xor.1.6, %conv90.1.6
  %arrayidx94.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %951 = load i8, i8* %arrayidx94.1.6, align 1
  %conv95.1.6 = zext i8 %951 to i32
  %xor96.1.6 = xor i32 %xor91.1.6, %conv95.1.6
  %arrayidx101.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.6, i64 0, i64 12
  %952 = load i8, i8* %arrayidx101.1.6, align 1
  %conv102.1.6 = zext i8 %952 to i32
  %xor103.1.6 = xor i32 %xor96.1.6, %conv102.1.6
  %arrayidx106.1.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.6, i64 0, i64 6
  %953 = load i8, i8* %arrayidx108.1.6, align 1
  %conv109.1.6 = zext i8 %953 to i32
  %xor110.1.6 = xor i32 %xor103.1.6, %conv109.1.6
  %conv111.1.6 = trunc i32 %xor110.1.6 to i8
  %arrayidx115.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.6, i64 0, i64 13
  store i8 %conv111.1.6, i8* %arrayidx115.1.6, align 1
  %arrayidx119.1.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.6, i64 0, i64 13
  %954 = load i8, i8* %arrayidx119.1.6, align 1
  %conv120.1.6 = zext i8 %954 to i32
  %955 = load i8, i8* %arrayidx122.6, align 1
  %conv123.1.6 = zext i8 %955 to i32
  %xor124.1.6 = xor i32 %conv123.1.6, %conv120.1.6
  %conv125.1.6 = trunc i32 %xor124.1.6 to i8
  store i8 %conv125.1.6, i8* %arrayidx122.6, align 1
  %arrayidx79.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.6, i64 0, i64 11
  %956 = load i8, i8* %arrayidx79.2.6, align 1
  %conv80.2.6 = zext i8 %956 to i32
  %arrayidx84.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.6, i64 0, i64 11
  %957 = load i8, i8* %arrayidx84.2.6, align 1
  %conv85.2.6 = zext i8 %957 to i32
  %xor.2.6 = xor i32 %conv80.2.6, %conv85.2.6
  %arrayidx87.2.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.6, i64 0, i64 6
  %958 = load i8, i8* %arrayidx89.2.6, align 1
  %conv90.2.6 = zext i8 %958 to i32
  %xor91.2.6 = xor i32 %xor.2.6, %conv90.2.6
  %arrayidx94.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %959 = load i8, i8* %arrayidx94.2.6, align 1
  %conv95.2.6 = zext i8 %959 to i32
  %xor96.2.6 = xor i32 %xor91.2.6, %conv95.2.6
  %arrayidx101.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.6, i64 0, i64 10
  %960 = load i8, i8* %arrayidx101.2.6, align 1
  %conv102.2.6 = zext i8 %960 to i32
  %xor103.2.6 = xor i32 %xor96.2.6, %conv102.2.6
  %arrayidx106.2.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.6, i64 0, i64 6
  %961 = load i8, i8* %arrayidx108.2.6, align 1
  %conv109.2.6 = zext i8 %961 to i32
  %xor110.2.6 = xor i32 %xor103.2.6, %conv109.2.6
  %conv111.2.6 = trunc i32 %xor110.2.6 to i8
  %arrayidx115.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.6, i64 0, i64 11
  store i8 %conv111.2.6, i8* %arrayidx115.2.6, align 1
  %arrayidx119.2.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.6, i64 0, i64 11
  %962 = load i8, i8* %arrayidx119.2.6, align 1
  %conv120.2.6 = zext i8 %962 to i32
  %963 = load i8, i8* %arrayidx122.6, align 1
  %conv123.2.6 = zext i8 %963 to i32
  %xor124.2.6 = xor i32 %conv123.2.6, %conv120.2.6
  %conv125.2.6 = trunc i32 %xor124.2.6 to i8
  store i8 %conv125.2.6, i8* %arrayidx122.6, align 1
  %arrayidx79.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.6, i64 0, i64 9
  %964 = load i8, i8* %arrayidx79.3.6, align 1
  %conv80.3.6 = zext i8 %964 to i32
  %arrayidx84.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.6, i64 0, i64 9
  %965 = load i8, i8* %arrayidx84.3.6, align 1
  %conv85.3.6 = zext i8 %965 to i32
  %xor.3.6 = xor i32 %conv80.3.6, %conv85.3.6
  %arrayidx87.3.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.6, i64 0, i64 6
  %966 = load i8, i8* %arrayidx89.3.6, align 1
  %conv90.3.6 = zext i8 %966 to i32
  %xor91.3.6 = xor i32 %xor.3.6, %conv90.3.6
  %arrayidx94.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %967 = load i8, i8* %arrayidx94.3.6, align 1
  %conv95.3.6 = zext i8 %967 to i32
  %xor96.3.6 = xor i32 %xor91.3.6, %conv95.3.6
  %arrayidx101.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.6, i64 0, i64 8
  %968 = load i8, i8* %arrayidx101.3.6, align 1
  %conv102.3.6 = zext i8 %968 to i32
  %xor103.3.6 = xor i32 %xor96.3.6, %conv102.3.6
  %arrayidx106.3.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.6, i64 0, i64 6
  %969 = load i8, i8* %arrayidx108.3.6, align 1
  %conv109.3.6 = zext i8 %969 to i32
  %xor110.3.6 = xor i32 %xor103.3.6, %conv109.3.6
  %conv111.3.6 = trunc i32 %xor110.3.6 to i8
  %arrayidx115.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.6, i64 0, i64 9
  store i8 %conv111.3.6, i8* %arrayidx115.3.6, align 1
  %arrayidx119.3.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.6, i64 0, i64 9
  %970 = load i8, i8* %arrayidx119.3.6, align 1
  %conv120.3.6 = zext i8 %970 to i32
  %971 = load i8, i8* %arrayidx122.6, align 1
  %conv123.3.6 = zext i8 %971 to i32
  %xor124.3.6 = xor i32 %conv123.3.6, %conv120.3.6
  %conv125.3.6 = trunc i32 %xor124.3.6 to i8
  store i8 %conv125.3.6, i8* %arrayidx122.6, align 1
  %arrayidx132.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 6
  %arrayidx135.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.6, i64 0, i64 7
  %972 = load i8, i8* %arrayidx135.6, align 1
  %conv136.6 = zext i8 %972 to i32
  %arrayidx138.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 6
  %arrayidx141.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.6, i64 0, i64 7
  %973 = load i8, i8* %arrayidx141.6, align 1
  %conv142.6 = zext i8 %973 to i32
  %xor143.6 = xor i32 %conv136.6, %conv142.6
  %arrayidx146.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx148.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.6, i64 0, i64 6
  %974 = load i8, i8* %arrayidx148.6, align 1
  %conv149.6 = zext i8 %974 to i32
  %xor150.6 = xor i32 %xor143.6, %conv149.6
  %conv151.6 = trunc i32 %xor150.6 to i8
  %arrayidx153.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 6
  %arrayidx156.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.6, i64 0, i64 7
  store i8 %conv151.6, i8* %arrayidx156.6, align 1
  %arrayidx158.6 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 6
  %arrayidx161.6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.6, i64 0, i64 7
  %975 = load i8, i8* %arrayidx161.6, align 1
  %conv162.6 = zext i8 %975 to i32
  %arrayidx164.6 = getelementptr inbounds i8, i8* %c, i64 6
  %976 = load i8, i8* %arrayidx164.6, align 1
  %conv165.6 = zext i8 %976 to i32
  %xor166.6 = xor i32 %conv165.6, %conv162.6
  %conv167.6 = trunc i32 %xor166.6 to i8
  store i8 %conv167.6, i8* %arrayidx164.6, align 1
  %arrayidx65.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx67.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.7, i64 0, i64 7
  %977 = load i8, i8* %arrayidx67.7, align 1
  %arrayidx69.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %977, i8* %arrayidx69.7, align 1
  %arrayidx77.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 7
  %arrayidx82.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx98.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 7
  %arrayidx113.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 7
  %arrayidx117.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 7
  %arrayidx122.7 = getelementptr inbounds i8, i8* %c, i64 7
  %arrayidx79.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.7, i64 0, i64 15
  %978 = load i8, i8* %arrayidx79.7, align 1
  %conv80.7 = zext i8 %978 to i32
  %arrayidx84.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.7, i64 0, i64 15
  %979 = load i8, i8* %arrayidx84.7, align 1
  %conv85.7 = zext i8 %979 to i32
  %xor.7 = xor i32 %conv80.7, %conv85.7
  %arrayidx87.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.7, i64 0, i64 7
  %980 = load i8, i8* %arrayidx89.7, align 1
  %conv90.7 = zext i8 %980 to i32
  %xor91.7 = xor i32 %xor.7, %conv90.7
  %arrayidx94.7 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %981 = load i8, i8* %arrayidx94.7, align 1
  %conv95.7 = zext i8 %981 to i32
  %xor96.7 = xor i32 %xor91.7, %conv95.7
  %arrayidx101.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.7, i64 0, i64 14
  %982 = load i8, i8* %arrayidx101.7, align 1
  %conv102.7 = zext i8 %982 to i32
  %xor103.7 = xor i32 %xor96.7, %conv102.7
  %arrayidx106.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.7, i64 0, i64 7
  %983 = load i8, i8* %arrayidx108.7, align 1
  %conv109.7 = zext i8 %983 to i32
  %xor110.7 = xor i32 %xor103.7, %conv109.7
  %conv111.7 = trunc i32 %xor110.7 to i8
  %arrayidx115.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.7, i64 0, i64 15
  store i8 %conv111.7, i8* %arrayidx115.7, align 1
  %arrayidx119.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.7, i64 0, i64 15
  %984 = load i8, i8* %arrayidx119.7, align 1
  %conv120.7 = zext i8 %984 to i32
  %985 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7 = zext i8 %985 to i32
  %xor124.7 = xor i32 %conv123.7, %conv120.7
  %conv125.7 = trunc i32 %xor124.7 to i8
  store i8 %conv125.7, i8* %arrayidx122.7, align 1
  %arrayidx79.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.7, i64 0, i64 13
  %986 = load i8, i8* %arrayidx79.1.7, align 1
  %conv80.1.7 = zext i8 %986 to i32
  %arrayidx84.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.7, i64 0, i64 13
  %987 = load i8, i8* %arrayidx84.1.7, align 1
  %conv85.1.7 = zext i8 %987 to i32
  %xor.1.7 = xor i32 %conv80.1.7, %conv85.1.7
  %arrayidx87.1.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.7, i64 0, i64 7
  %988 = load i8, i8* %arrayidx89.1.7, align 1
  %conv90.1.7 = zext i8 %988 to i32
  %xor91.1.7 = xor i32 %xor.1.7, %conv90.1.7
  %arrayidx94.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %989 = load i8, i8* %arrayidx94.1.7, align 1
  %conv95.1.7 = zext i8 %989 to i32
  %xor96.1.7 = xor i32 %xor91.1.7, %conv95.1.7
  %arrayidx101.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.7, i64 0, i64 12
  %990 = load i8, i8* %arrayidx101.1.7, align 1
  %conv102.1.7 = zext i8 %990 to i32
  %xor103.1.7 = xor i32 %xor96.1.7, %conv102.1.7
  %arrayidx106.1.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.7, i64 0, i64 7
  %991 = load i8, i8* %arrayidx108.1.7, align 1
  %conv109.1.7 = zext i8 %991 to i32
  %xor110.1.7 = xor i32 %xor103.1.7, %conv109.1.7
  %conv111.1.7 = trunc i32 %xor110.1.7 to i8
  %arrayidx115.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.7, i64 0, i64 13
  store i8 %conv111.1.7, i8* %arrayidx115.1.7, align 1
  %arrayidx119.1.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.7, i64 0, i64 13
  %992 = load i8, i8* %arrayidx119.1.7, align 1
  %conv120.1.7 = zext i8 %992 to i32
  %993 = load i8, i8* %arrayidx122.7, align 1
  %conv123.1.7 = zext i8 %993 to i32
  %xor124.1.7 = xor i32 %conv123.1.7, %conv120.1.7
  %conv125.1.7 = trunc i32 %xor124.1.7 to i8
  store i8 %conv125.1.7, i8* %arrayidx122.7, align 1
  %arrayidx79.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.7, i64 0, i64 11
  %994 = load i8, i8* %arrayidx79.2.7, align 1
  %conv80.2.7 = zext i8 %994 to i32
  %arrayidx84.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.7, i64 0, i64 11
  %995 = load i8, i8* %arrayidx84.2.7, align 1
  %conv85.2.7 = zext i8 %995 to i32
  %xor.2.7 = xor i32 %conv80.2.7, %conv85.2.7
  %arrayidx87.2.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.7, i64 0, i64 7
  %996 = load i8, i8* %arrayidx89.2.7, align 1
  %conv90.2.7 = zext i8 %996 to i32
  %xor91.2.7 = xor i32 %xor.2.7, %conv90.2.7
  %arrayidx94.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %997 = load i8, i8* %arrayidx94.2.7, align 1
  %conv95.2.7 = zext i8 %997 to i32
  %xor96.2.7 = xor i32 %xor91.2.7, %conv95.2.7
  %arrayidx101.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.7, i64 0, i64 10
  %998 = load i8, i8* %arrayidx101.2.7, align 1
  %conv102.2.7 = zext i8 %998 to i32
  %xor103.2.7 = xor i32 %xor96.2.7, %conv102.2.7
  %arrayidx106.2.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.7, i64 0, i64 7
  %999 = load i8, i8* %arrayidx108.2.7, align 1
  %conv109.2.7 = zext i8 %999 to i32
  %xor110.2.7 = xor i32 %xor103.2.7, %conv109.2.7
  %conv111.2.7 = trunc i32 %xor110.2.7 to i8
  %arrayidx115.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.7, i64 0, i64 11
  store i8 %conv111.2.7, i8* %arrayidx115.2.7, align 1
  %arrayidx119.2.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.7, i64 0, i64 11
  %1000 = load i8, i8* %arrayidx119.2.7, align 1
  %conv120.2.7 = zext i8 %1000 to i32
  %1001 = load i8, i8* %arrayidx122.7, align 1
  %conv123.2.7 = zext i8 %1001 to i32
  %xor124.2.7 = xor i32 %conv123.2.7, %conv120.2.7
  %conv125.2.7 = trunc i32 %xor124.2.7 to i8
  store i8 %conv125.2.7, i8* %arrayidx122.7, align 1
  %arrayidx79.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.7, i64 0, i64 9
  %1002 = load i8, i8* %arrayidx79.3.7, align 1
  %conv80.3.7 = zext i8 %1002 to i32
  %arrayidx84.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.7, i64 0, i64 9
  %1003 = load i8, i8* %arrayidx84.3.7, align 1
  %conv85.3.7 = zext i8 %1003 to i32
  %xor.3.7 = xor i32 %conv80.3.7, %conv85.3.7
  %arrayidx87.3.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx89.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.3.7, i64 0, i64 7
  %1004 = load i8, i8* %arrayidx89.3.7, align 1
  %conv90.3.7 = zext i8 %1004 to i32
  %xor91.3.7 = xor i32 %xor.3.7, %conv90.3.7
  %arrayidx94.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 8
  %1005 = load i8, i8* %arrayidx94.3.7, align 1
  %conv95.3.7 = zext i8 %1005 to i32
  %xor96.3.7 = xor i32 %xor91.3.7, %conv95.3.7
  %arrayidx101.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.7, i64 0, i64 8
  %1006 = load i8, i8* %arrayidx101.3.7, align 1
  %conv102.3.7 = zext i8 %1006 to i32
  %xor103.3.7 = xor i32 %xor96.3.7, %conv102.3.7
  %arrayidx106.3.7 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx108.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.3.7, i64 0, i64 7
  %1007 = load i8, i8* %arrayidx108.3.7, align 1
  %conv109.3.7 = zext i8 %1007 to i32
  %xor110.3.7 = xor i32 %xor103.3.7, %conv109.3.7
  %conv111.3.7 = trunc i32 %xor110.3.7 to i8
  %arrayidx115.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.7, i64 0, i64 9
  store i8 %conv111.3.7, i8* %arrayidx115.3.7, align 1
  %arrayidx119.3.7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.7, i64 0, i64 9
  %1008 = load i8, i8* %arrayidx119.3.7, align 1
  %conv120.3.7 = zext i8 %1008 to i32
  %1009 = load i8, i8* %arrayidx122.7, align 1
  %conv123.3.7 = zext i8 %1009 to i32
  %xor124.3.7 = xor i32 %conv123.3.7, %conv120.3.7
  %conv125.3.7 = trunc i32 %xor124.3.7 to i8
  store i8 %conv125.3.7, i8* %arrayidx122.7, align 1
  %arrayidx192.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep19.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 6, i64 7
  %scevgep1920.7 = bitcast i8* %scevgep19.7 to [16 x [16 x i8]]*
  %1010 = load i8, i8* %scevgep19.7, align 1
  %conv190.prol.7 = zext i8 %1010 to i32
  %1011 = load i8, i8* %arrayidx192.7, align 1
  %conv193.prol.7 = zext i8 %1011 to i32
  %xor194.prol.7 = xor i32 %conv193.prol.7, %conv190.prol.7
  %conv195.prol.7 = trunc i32 %xor194.prol.7 to i8
  store i8 %conv195.prol.7, i8* %arrayidx192.7, align 1
  %scevgep22.prol.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.7, i64 0, i64 -1, i64 0
  %1012 = bitcast i8* %scevgep22.prol.7 to [16 x [16 x i8]]*
  %lsr.iv2123.7 = bitcast [16 x [16 x i8]]* %1012 to i8*
  %1013 = load i8, i8* %lsr.iv2123.7, align 1
  %conv190.7352 = zext i8 %1013 to i32
  %1014 = load i8, i8* %arrayidx192.7, align 1
  %conv193.7353 = zext i8 %1014 to i32
  %xor194.7354 = xor i32 %conv193.7353, %conv190.7352
  %conv195.7355 = trunc i32 %xor194.7354 to i8
  store i8 %conv195.7355, i8* %arrayidx192.7, align 1
  %scevgep22.7357 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1012, i64 0, i64 -1, i64 0
  %1015 = bitcast i8* %scevgep22.7357 to [16 x [16 x i8]]*
  %1016 = load i8, i8* %scevgep22.7357, align 1
  %conv190.1.7358 = zext i8 %1016 to i32
  %1017 = load i8, i8* %arrayidx192.7, align 1
  %conv193.1.7359 = zext i8 %1017 to i32
  %xor194.1.7360 = xor i32 %conv193.1.7359, %conv190.1.7358
  %conv195.1.7361 = trunc i32 %xor194.1.7360 to i8
  store i8 %conv195.1.7361, i8* %arrayidx192.7, align 1
  %scevgep22.1.7363 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1015, i64 0, i64 -1, i64 0
  %1018 = bitcast i8* %scevgep22.1.7363 to [16 x [16 x i8]]*
  %1019 = load i8, i8* %scevgep22.1.7363, align 1
  %conv190.195.7 = zext i8 %1019 to i32
  %1020 = load i8, i8* %arrayidx192.7, align 1
  %conv193.196.7 = zext i8 %1020 to i32
  %xor194.197.7 = xor i32 %conv193.196.7, %conv190.195.7
  %conv195.198.7 = trunc i32 %xor194.197.7 to i8
  store i8 %conv195.198.7, i8* %arrayidx192.7, align 1
  %scevgep22.1100.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1018, i64 0, i64 -1, i64 0
  %1021 = bitcast i8* %scevgep22.1100.7 to [16 x [16 x i8]]*
  %1022 = load i8, i8* %scevgep22.1100.7, align 1
  %conv190.1.1.7 = zext i8 %1022 to i32
  %1023 = load i8, i8* %arrayidx192.7, align 1
  %conv193.1.1.7 = zext i8 %1023 to i32
  %xor194.1.1.7 = xor i32 %conv193.1.1.7, %conv190.1.1.7
  %conv195.1.1.7 = trunc i32 %xor194.1.1.7 to i8
  store i8 %conv195.1.1.7, i8* %arrayidx192.7, align 1
  %scevgep22.1.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1021, i64 0, i64 -1, i64 0
  %1024 = bitcast i8* %scevgep22.1.1.7 to [16 x [16 x i8]]*
  %1025 = load i8, i8* %scevgep22.1.1.7, align 1
  %conv190.2.7 = zext i8 %1025 to i32
  %1026 = load i8, i8* %arrayidx192.7, align 1
  %conv193.2.7 = zext i8 %1026 to i32
  %xor194.2.7 = xor i32 %conv193.2.7, %conv190.2.7
  %conv195.2.7 = trunc i32 %xor194.2.7 to i8
  store i8 %conv195.2.7, i8* %arrayidx192.7, align 1
  %scevgep22.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1024, i64 0, i64 -1, i64 0
  %1027 = load i8, i8* %scevgep22.2.7, align 1
  %conv190.1.2.7 = zext i8 %1027 to i32
  %1028 = load i8, i8* %arrayidx192.7, align 1
  %conv193.1.2.7 = zext i8 %1028 to i32
  %xor194.1.2.7 = xor i32 %conv193.1.2.7, %conv190.1.2.7
  %conv195.1.2.7 = trunc i32 %xor194.1.2.7 to i8
  store i8 %conv195.1.2.7, i8* %arrayidx192.7, align 1
  %arrayidx65.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx67.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.8, i64 0, i64 8
  %1029 = load i8, i8* %arrayidx67.8, align 1
  %arrayidx69.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %1029, i8* %arrayidx69.8, align 1
  %arrayidx77.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 8
  %arrayidx82.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx98.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx113.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 8
  %arrayidx117.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 8
  %arrayidx122.8 = getelementptr inbounds i8, i8* %c, i64 8
  %arrayidx79.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.8, i64 0, i64 15
  %1030 = load i8, i8* %arrayidx79.8, align 1
  %conv80.8 = zext i8 %1030 to i32
  %arrayidx84.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.8, i64 0, i64 15
  %1031 = load i8, i8* %arrayidx84.8, align 1
  %conv85.8 = zext i8 %1031 to i32
  %xor.8 = xor i32 %conv80.8, %conv85.8
  %arrayidx87.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.8, i64 0, i64 8
  %1032 = load i8, i8* %arrayidx89.8, align 1
  %conv90.8 = zext i8 %1032 to i32
  %xor91.8 = xor i32 %xor.8, %conv90.8
  %arrayidx94.8 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %1033 = load i8, i8* %arrayidx94.8, align 1
  %conv95.8 = zext i8 %1033 to i32
  %xor96.8 = xor i32 %xor91.8, %conv95.8
  %arrayidx101.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.8, i64 0, i64 14
  %1034 = load i8, i8* %arrayidx101.8, align 1
  %conv102.8 = zext i8 %1034 to i32
  %xor103.8 = xor i32 %xor96.8, %conv102.8
  %arrayidx106.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.8, i64 0, i64 8
  %1035 = load i8, i8* %arrayidx108.8, align 1
  %conv109.8 = zext i8 %1035 to i32
  %xor110.8 = xor i32 %xor103.8, %conv109.8
  %conv111.8 = trunc i32 %xor110.8 to i8
  %arrayidx115.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.8, i64 0, i64 15
  store i8 %conv111.8, i8* %arrayidx115.8, align 1
  %arrayidx119.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.8, i64 0, i64 15
  %1036 = load i8, i8* %arrayidx119.8, align 1
  %conv120.8 = zext i8 %1036 to i32
  %1037 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8 = zext i8 %1037 to i32
  %xor124.8 = xor i32 %conv123.8, %conv120.8
  %conv125.8 = trunc i32 %xor124.8 to i8
  store i8 %conv125.8, i8* %arrayidx122.8, align 1
  %arrayidx79.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.8, i64 0, i64 13
  %1038 = load i8, i8* %arrayidx79.1.8, align 1
  %conv80.1.8 = zext i8 %1038 to i32
  %arrayidx84.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.8, i64 0, i64 13
  %1039 = load i8, i8* %arrayidx84.1.8, align 1
  %conv85.1.8 = zext i8 %1039 to i32
  %xor.1.8 = xor i32 %conv80.1.8, %conv85.1.8
  %arrayidx87.1.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.8, i64 0, i64 8
  %1040 = load i8, i8* %arrayidx89.1.8, align 1
  %conv90.1.8 = zext i8 %1040 to i32
  %xor91.1.8 = xor i32 %xor.1.8, %conv90.1.8
  %arrayidx94.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %1041 = load i8, i8* %arrayidx94.1.8, align 1
  %conv95.1.8 = zext i8 %1041 to i32
  %xor96.1.8 = xor i32 %xor91.1.8, %conv95.1.8
  %arrayidx101.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.8, i64 0, i64 12
  %1042 = load i8, i8* %arrayidx101.1.8, align 1
  %conv102.1.8 = zext i8 %1042 to i32
  %xor103.1.8 = xor i32 %xor96.1.8, %conv102.1.8
  %arrayidx106.1.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.8, i64 0, i64 8
  %1043 = load i8, i8* %arrayidx108.1.8, align 1
  %conv109.1.8 = zext i8 %1043 to i32
  %xor110.1.8 = xor i32 %xor103.1.8, %conv109.1.8
  %conv111.1.8 = trunc i32 %xor110.1.8 to i8
  %arrayidx115.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.8, i64 0, i64 13
  store i8 %conv111.1.8, i8* %arrayidx115.1.8, align 1
  %arrayidx119.1.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.8, i64 0, i64 13
  %1044 = load i8, i8* %arrayidx119.1.8, align 1
  %conv120.1.8 = zext i8 %1044 to i32
  %1045 = load i8, i8* %arrayidx122.8, align 1
  %conv123.1.8 = zext i8 %1045 to i32
  %xor124.1.8 = xor i32 %conv123.1.8, %conv120.1.8
  %conv125.1.8 = trunc i32 %xor124.1.8 to i8
  store i8 %conv125.1.8, i8* %arrayidx122.8, align 1
  %arrayidx79.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.8, i64 0, i64 11
  %1046 = load i8, i8* %arrayidx79.2.8, align 1
  %conv80.2.8 = zext i8 %1046 to i32
  %arrayidx84.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.8, i64 0, i64 11
  %1047 = load i8, i8* %arrayidx84.2.8, align 1
  %conv85.2.8 = zext i8 %1047 to i32
  %xor.2.8 = xor i32 %conv80.2.8, %conv85.2.8
  %arrayidx87.2.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.8, i64 0, i64 8
  %1048 = load i8, i8* %arrayidx89.2.8, align 1
  %conv90.2.8 = zext i8 %1048 to i32
  %xor91.2.8 = xor i32 %xor.2.8, %conv90.2.8
  %arrayidx94.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %1049 = load i8, i8* %arrayidx94.2.8, align 1
  %conv95.2.8 = zext i8 %1049 to i32
  %xor96.2.8 = xor i32 %xor91.2.8, %conv95.2.8
  %arrayidx101.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.8, i64 0, i64 10
  %1050 = load i8, i8* %arrayidx101.2.8, align 1
  %conv102.2.8 = zext i8 %1050 to i32
  %xor103.2.8 = xor i32 %xor96.2.8, %conv102.2.8
  %arrayidx106.2.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.8, i64 0, i64 8
  %1051 = load i8, i8* %arrayidx108.2.8, align 1
  %conv109.2.8 = zext i8 %1051 to i32
  %xor110.2.8 = xor i32 %xor103.2.8, %conv109.2.8
  %conv111.2.8 = trunc i32 %xor110.2.8 to i8
  %arrayidx115.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.8, i64 0, i64 11
  store i8 %conv111.2.8, i8* %arrayidx115.2.8, align 1
  %arrayidx119.2.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.8, i64 0, i64 11
  %1052 = load i8, i8* %arrayidx119.2.8, align 1
  %conv120.2.8 = zext i8 %1052 to i32
  %1053 = load i8, i8* %arrayidx122.8, align 1
  %conv123.2.8 = zext i8 %1053 to i32
  %xor124.2.8 = xor i32 %conv123.2.8, %conv120.2.8
  %conv125.2.8 = trunc i32 %xor124.2.8 to i8
  store i8 %conv125.2.8, i8* %arrayidx122.8, align 1
  %arrayidx132.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 8
  %arrayidx135.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.8, i64 0, i64 9
  %1054 = load i8, i8* %arrayidx135.8, align 1
  %conv136.8 = zext i8 %1054 to i32
  %arrayidx138.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 8
  %arrayidx141.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.8, i64 0, i64 9
  %1055 = load i8, i8* %arrayidx141.8, align 1
  %conv142.8 = zext i8 %1055 to i32
  %xor143.8 = xor i32 %conv136.8, %conv142.8
  %arrayidx146.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx148.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.8, i64 0, i64 8
  %1056 = load i8, i8* %arrayidx148.8, align 1
  %conv149.8 = zext i8 %1056 to i32
  %xor150.8 = xor i32 %xor143.8, %conv149.8
  %conv151.8 = trunc i32 %xor150.8 to i8
  %arrayidx153.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 8
  %arrayidx156.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.8, i64 0, i64 9
  store i8 %conv151.8, i8* %arrayidx156.8, align 1
  %arrayidx158.8 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 8
  %arrayidx161.8 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.8, i64 0, i64 9
  %1057 = load i8, i8* %arrayidx161.8, align 1
  %conv162.8 = zext i8 %1057 to i32
  %arrayidx164.8 = getelementptr inbounds i8, i8* %c, i64 8
  %1058 = load i8, i8* %arrayidx164.8, align 1
  %conv165.8 = zext i8 %1058 to i32
  %xor166.8 = xor i32 %conv165.8, %conv162.8
  %conv167.8 = trunc i32 %xor166.8 to i8
  store i8 %conv167.8, i8* %arrayidx164.8, align 1
  %arrayidx65.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx67.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.9, i64 0, i64 9
  %1059 = load i8, i8* %arrayidx67.9, align 1
  %arrayidx69.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %1059, i8* %arrayidx69.9, align 1
  %arrayidx77.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 9
  %arrayidx82.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx98.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 9
  %arrayidx113.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 9
  %arrayidx117.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 9
  %arrayidx122.9 = getelementptr inbounds i8, i8* %c, i64 9
  %arrayidx79.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.9, i64 0, i64 15
  %1060 = load i8, i8* %arrayidx79.9, align 1
  %conv80.9 = zext i8 %1060 to i32
  %arrayidx84.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.9, i64 0, i64 15
  %1061 = load i8, i8* %arrayidx84.9, align 1
  %conv85.9 = zext i8 %1061 to i32
  %xor.9 = xor i32 %conv80.9, %conv85.9
  %arrayidx87.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.9, i64 0, i64 9
  %1062 = load i8, i8* %arrayidx89.9, align 1
  %conv90.9 = zext i8 %1062 to i32
  %xor91.9 = xor i32 %xor.9, %conv90.9
  %arrayidx94.9 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %1063 = load i8, i8* %arrayidx94.9, align 1
  %conv95.9 = zext i8 %1063 to i32
  %xor96.9 = xor i32 %xor91.9, %conv95.9
  %arrayidx101.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.9, i64 0, i64 14
  %1064 = load i8, i8* %arrayidx101.9, align 1
  %conv102.9 = zext i8 %1064 to i32
  %xor103.9 = xor i32 %xor96.9, %conv102.9
  %arrayidx106.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.9, i64 0, i64 9
  %1065 = load i8, i8* %arrayidx108.9, align 1
  %conv109.9 = zext i8 %1065 to i32
  %xor110.9 = xor i32 %xor103.9, %conv109.9
  %conv111.9 = trunc i32 %xor110.9 to i8
  %arrayidx115.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.9, i64 0, i64 15
  store i8 %conv111.9, i8* %arrayidx115.9, align 1
  %arrayidx119.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.9, i64 0, i64 15
  %1066 = load i8, i8* %arrayidx119.9, align 1
  %conv120.9 = zext i8 %1066 to i32
  %1067 = load i8, i8* %arrayidx122.9, align 1
  %conv123.9 = zext i8 %1067 to i32
  %xor124.9 = xor i32 %conv123.9, %conv120.9
  %conv125.9 = trunc i32 %xor124.9 to i8
  store i8 %conv125.9, i8* %arrayidx122.9, align 1
  %arrayidx79.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.9, i64 0, i64 13
  %1068 = load i8, i8* %arrayidx79.1.9, align 1
  %conv80.1.9 = zext i8 %1068 to i32
  %arrayidx84.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.9, i64 0, i64 13
  %1069 = load i8, i8* %arrayidx84.1.9, align 1
  %conv85.1.9 = zext i8 %1069 to i32
  %xor.1.9 = xor i32 %conv80.1.9, %conv85.1.9
  %arrayidx87.1.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.9, i64 0, i64 9
  %1070 = load i8, i8* %arrayidx89.1.9, align 1
  %conv90.1.9 = zext i8 %1070 to i32
  %xor91.1.9 = xor i32 %xor.1.9, %conv90.1.9
  %arrayidx94.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %1071 = load i8, i8* %arrayidx94.1.9, align 1
  %conv95.1.9 = zext i8 %1071 to i32
  %xor96.1.9 = xor i32 %xor91.1.9, %conv95.1.9
  %arrayidx101.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.9, i64 0, i64 12
  %1072 = load i8, i8* %arrayidx101.1.9, align 1
  %conv102.1.9 = zext i8 %1072 to i32
  %xor103.1.9 = xor i32 %xor96.1.9, %conv102.1.9
  %arrayidx106.1.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.9, i64 0, i64 9
  %1073 = load i8, i8* %arrayidx108.1.9, align 1
  %conv109.1.9 = zext i8 %1073 to i32
  %xor110.1.9 = xor i32 %xor103.1.9, %conv109.1.9
  %conv111.1.9 = trunc i32 %xor110.1.9 to i8
  %arrayidx115.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.9, i64 0, i64 13
  store i8 %conv111.1.9, i8* %arrayidx115.1.9, align 1
  %arrayidx119.1.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.9, i64 0, i64 13
  %1074 = load i8, i8* %arrayidx119.1.9, align 1
  %conv120.1.9 = zext i8 %1074 to i32
  %1075 = load i8, i8* %arrayidx122.9, align 1
  %conv123.1.9 = zext i8 %1075 to i32
  %xor124.1.9 = xor i32 %conv123.1.9, %conv120.1.9
  %conv125.1.9 = trunc i32 %xor124.1.9 to i8
  store i8 %conv125.1.9, i8* %arrayidx122.9, align 1
  %arrayidx79.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.9, i64 0, i64 11
  %1076 = load i8, i8* %arrayidx79.2.9, align 1
  %conv80.2.9 = zext i8 %1076 to i32
  %arrayidx84.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.9, i64 0, i64 11
  %1077 = load i8, i8* %arrayidx84.2.9, align 1
  %conv85.2.9 = zext i8 %1077 to i32
  %xor.2.9 = xor i32 %conv80.2.9, %conv85.2.9
  %arrayidx87.2.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx89.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.2.9, i64 0, i64 9
  %1078 = load i8, i8* %arrayidx89.2.9, align 1
  %conv90.2.9 = zext i8 %1078 to i32
  %xor91.2.9 = xor i32 %xor.2.9, %conv90.2.9
  %arrayidx94.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 10
  %1079 = load i8, i8* %arrayidx94.2.9, align 1
  %conv95.2.9 = zext i8 %1079 to i32
  %xor96.2.9 = xor i32 %xor91.2.9, %conv95.2.9
  %arrayidx101.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.9, i64 0, i64 10
  %1080 = load i8, i8* %arrayidx101.2.9, align 1
  %conv102.2.9 = zext i8 %1080 to i32
  %xor103.2.9 = xor i32 %xor96.2.9, %conv102.2.9
  %arrayidx106.2.9 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx108.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.2.9, i64 0, i64 9
  %1081 = load i8, i8* %arrayidx108.2.9, align 1
  %conv109.2.9 = zext i8 %1081 to i32
  %xor110.2.9 = xor i32 %xor103.2.9, %conv109.2.9
  %conv111.2.9 = trunc i32 %xor110.2.9 to i8
  %arrayidx115.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.9, i64 0, i64 11
  store i8 %conv111.2.9, i8* %arrayidx115.2.9, align 1
  %arrayidx119.2.9 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.9, i64 0, i64 11
  %1082 = load i8, i8* %arrayidx119.2.9, align 1
  %conv120.2.9 = zext i8 %1082 to i32
  %1083 = load i8, i8* %arrayidx122.9, align 1
  %conv123.2.9 = zext i8 %1083 to i32
  %xor124.2.9 = xor i32 %conv123.2.9, %conv120.2.9
  %conv125.2.9 = trunc i32 %xor124.2.9 to i8
  store i8 %conv125.2.9, i8* %arrayidx122.9, align 1
  %arrayidx192.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep19.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 8, i64 9
  %scevgep1920.9 = bitcast i8* %scevgep19.9 to [16 x [16 x i8]]*
  %1084 = load i8, i8* %scevgep19.9, align 1
  %conv190.prol.9 = zext i8 %1084 to i32
  %1085 = load i8, i8* %arrayidx192.9, align 1
  %conv193.prol.9 = zext i8 %1085 to i32
  %xor194.prol.9 = xor i32 %conv193.prol.9, %conv190.prol.9
  %conv195.prol.9 = trunc i32 %xor194.prol.9 to i8
  store i8 %conv195.prol.9, i8* %arrayidx192.9, align 1
  %scevgep22.prol.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.9, i64 0, i64 -1, i64 0
  %1086 = bitcast i8* %scevgep22.prol.9 to [16 x [16 x i8]]*
  %lsr.iv2123.9 = bitcast [16 x [16 x i8]]* %1086 to i8*
  %1087 = load i8, i8* %lsr.iv2123.9, align 1
  %conv190.9 = zext i8 %1087 to i32
  %1088 = load i8, i8* %arrayidx192.9, align 1
  %conv193.9 = zext i8 %1088 to i32
  %xor194.9 = xor i32 %conv193.9, %conv190.9
  %conv195.9 = trunc i32 %xor194.9 to i8
  store i8 %conv195.9, i8* %arrayidx192.9, align 1
  %scevgep22.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1086, i64 0, i64 -1, i64 0
  %1089 = bitcast i8* %scevgep22.9 to [16 x [16 x i8]]*
  %1090 = load i8, i8* %scevgep22.9, align 1
  %conv190.1.9 = zext i8 %1090 to i32
  %1091 = load i8, i8* %arrayidx192.9, align 1
  %conv193.1.9 = zext i8 %1091 to i32
  %xor194.1.9 = xor i32 %conv193.1.9, %conv190.1.9
  %conv195.1.9 = trunc i32 %xor194.1.9 to i8
  store i8 %conv195.1.9, i8* %arrayidx192.9, align 1
  %scevgep22.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1089, i64 0, i64 -1, i64 0
  %1092 = bitcast i8* %scevgep22.1.9 to [16 x [16 x i8]]*
  %1093 = load i8, i8* %scevgep22.1.9, align 1
  %conv190.195.9 = zext i8 %1093 to i32
  %1094 = load i8, i8* %arrayidx192.9, align 1
  %conv193.196.9 = zext i8 %1094 to i32
  %xor194.197.9 = xor i32 %conv193.196.9, %conv190.195.9
  %conv195.198.9 = trunc i32 %xor194.197.9 to i8
  store i8 %conv195.198.9, i8* %arrayidx192.9, align 1
  %scevgep22.1100.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1092, i64 0, i64 -1, i64 0
  %1095 = bitcast i8* %scevgep22.1100.9 to [16 x [16 x i8]]*
  %1096 = load i8, i8* %scevgep22.1100.9, align 1
  %conv190.1.1.9 = zext i8 %1096 to i32
  %1097 = load i8, i8* %arrayidx192.9, align 1
  %conv193.1.1.9 = zext i8 %1097 to i32
  %xor194.1.1.9 = xor i32 %conv193.1.1.9, %conv190.1.1.9
  %conv195.1.1.9 = trunc i32 %xor194.1.1.9 to i8
  store i8 %conv195.1.1.9, i8* %arrayidx192.9, align 1
  %scevgep22.1.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1095, i64 0, i64 -1, i64 0
  %1098 = bitcast i8* %scevgep22.1.1.9 to [16 x [16 x i8]]*
  %1099 = load i8, i8* %scevgep22.1.1.9, align 1
  %conv190.2.9 = zext i8 %1099 to i32
  %1100 = load i8, i8* %arrayidx192.9, align 1
  %conv193.2.9 = zext i8 %1100 to i32
  %xor194.2.9 = xor i32 %conv193.2.9, %conv190.2.9
  %conv195.2.9 = trunc i32 %xor194.2.9 to i8
  store i8 %conv195.2.9, i8* %arrayidx192.9, align 1
  %scevgep22.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1098, i64 0, i64 -1, i64 0
  %1101 = bitcast i8* %scevgep22.2.9 to [16 x [16 x i8]]*
  %1102 = load i8, i8* %scevgep22.2.9, align 1
  %conv190.1.2.9 = zext i8 %1102 to i32
  %1103 = load i8, i8* %arrayidx192.9, align 1
  %conv193.1.2.9 = zext i8 %1103 to i32
  %xor194.1.2.9 = xor i32 %conv193.1.2.9, %conv190.1.2.9
  %conv195.1.2.9 = trunc i32 %xor194.1.2.9 to i8
  store i8 %conv195.1.2.9, i8* %arrayidx192.9, align 1
  %scevgep22.1.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1101, i64 0, i64 -1, i64 0
  %1104 = bitcast i8* %scevgep22.1.2.9 to [16 x [16 x i8]]*
  %1105 = load i8, i8* %scevgep22.1.2.9, align 1
  %conv190.3.9 = zext i8 %1105 to i32
  %1106 = load i8, i8* %arrayidx192.9, align 1
  %conv193.3.9 = zext i8 %1106 to i32
  %xor194.3.9 = xor i32 %conv193.3.9, %conv190.3.9
  %conv195.3.9 = trunc i32 %xor194.3.9 to i8
  store i8 %conv195.3.9, i8* %arrayidx192.9, align 1
  %scevgep22.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1104, i64 0, i64 -1, i64 0
  %1107 = load i8, i8* %scevgep22.3.9, align 1
  %conv190.1.3.9 = zext i8 %1107 to i32
  %1108 = load i8, i8* %arrayidx192.9, align 1
  %conv193.1.3.9 = zext i8 %1108 to i32
  %xor194.1.3.9 = xor i32 %conv193.1.3.9, %conv190.1.3.9
  %conv195.1.3.9 = trunc i32 %xor194.1.3.9 to i8
  store i8 %conv195.1.3.9, i8* %arrayidx192.9, align 1
  %arrayidx65.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx67.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.10, i64 0, i64 10
  %1109 = load i8, i8* %arrayidx67.10, align 1
  %arrayidx69.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %1109, i8* %arrayidx69.10, align 1
  %arrayidx77.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 10
  %arrayidx82.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx98.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx113.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 10
  %arrayidx117.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 10
  %arrayidx122.10 = getelementptr inbounds i8, i8* %c, i64 10
  %arrayidx79.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.10, i64 0, i64 15
  %1110 = load i8, i8* %arrayidx79.10, align 1
  %conv80.10 = zext i8 %1110 to i32
  %arrayidx84.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.10, i64 0, i64 15
  %1111 = load i8, i8* %arrayidx84.10, align 1
  %conv85.10 = zext i8 %1111 to i32
  %xor.10 = xor i32 %conv80.10, %conv85.10
  %arrayidx87.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.10, i64 0, i64 10
  %1112 = load i8, i8* %arrayidx89.10, align 1
  %conv90.10 = zext i8 %1112 to i32
  %xor91.10 = xor i32 %xor.10, %conv90.10
  %arrayidx94.10 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %1113 = load i8, i8* %arrayidx94.10, align 1
  %conv95.10 = zext i8 %1113 to i32
  %xor96.10 = xor i32 %xor91.10, %conv95.10
  %arrayidx101.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.10, i64 0, i64 14
  %1114 = load i8, i8* %arrayidx101.10, align 1
  %conv102.10 = zext i8 %1114 to i32
  %xor103.10 = xor i32 %xor96.10, %conv102.10
  %arrayidx106.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.10, i64 0, i64 10
  %1115 = load i8, i8* %arrayidx108.10, align 1
  %conv109.10 = zext i8 %1115 to i32
  %xor110.10 = xor i32 %xor103.10, %conv109.10
  %conv111.10 = trunc i32 %xor110.10 to i8
  %arrayidx115.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.10, i64 0, i64 15
  store i8 %conv111.10, i8* %arrayidx115.10, align 1
  %arrayidx119.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.10, i64 0, i64 15
  %1116 = load i8, i8* %arrayidx119.10, align 1
  %conv120.10 = zext i8 %1116 to i32
  %1117 = load i8, i8* %arrayidx122.10, align 1
  %conv123.10 = zext i8 %1117 to i32
  %xor124.10 = xor i32 %conv123.10, %conv120.10
  %conv125.10 = trunc i32 %xor124.10 to i8
  store i8 %conv125.10, i8* %arrayidx122.10, align 1
  %arrayidx79.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.10, i64 0, i64 13
  %1118 = load i8, i8* %arrayidx79.1.10, align 1
  %conv80.1.10 = zext i8 %1118 to i32
  %arrayidx84.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.10, i64 0, i64 13
  %1119 = load i8, i8* %arrayidx84.1.10, align 1
  %conv85.1.10 = zext i8 %1119 to i32
  %xor.1.10 = xor i32 %conv80.1.10, %conv85.1.10
  %arrayidx87.1.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.10, i64 0, i64 10
  %1120 = load i8, i8* %arrayidx89.1.10, align 1
  %conv90.1.10 = zext i8 %1120 to i32
  %xor91.1.10 = xor i32 %xor.1.10, %conv90.1.10
  %arrayidx94.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %1121 = load i8, i8* %arrayidx94.1.10, align 1
  %conv95.1.10 = zext i8 %1121 to i32
  %xor96.1.10 = xor i32 %xor91.1.10, %conv95.1.10
  %arrayidx101.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.10, i64 0, i64 12
  %1122 = load i8, i8* %arrayidx101.1.10, align 1
  %conv102.1.10 = zext i8 %1122 to i32
  %xor103.1.10 = xor i32 %xor96.1.10, %conv102.1.10
  %arrayidx106.1.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.10, i64 0, i64 10
  %1123 = load i8, i8* %arrayidx108.1.10, align 1
  %conv109.1.10 = zext i8 %1123 to i32
  %xor110.1.10 = xor i32 %xor103.1.10, %conv109.1.10
  %conv111.1.10 = trunc i32 %xor110.1.10 to i8
  %arrayidx115.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.10, i64 0, i64 13
  store i8 %conv111.1.10, i8* %arrayidx115.1.10, align 1
  %arrayidx119.1.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.10, i64 0, i64 13
  %1124 = load i8, i8* %arrayidx119.1.10, align 1
  %conv120.1.10 = zext i8 %1124 to i32
  %1125 = load i8, i8* %arrayidx122.10, align 1
  %conv123.1.10 = zext i8 %1125 to i32
  %xor124.1.10 = xor i32 %conv123.1.10, %conv120.1.10
  %conv125.1.10 = trunc i32 %xor124.1.10 to i8
  store i8 %conv125.1.10, i8* %arrayidx122.10, align 1
  %arrayidx132.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 10
  %arrayidx135.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.10, i64 0, i64 11
  %1126 = load i8, i8* %arrayidx135.10, align 1
  %conv136.10 = zext i8 %1126 to i32
  %arrayidx138.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 10
  %arrayidx141.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.10, i64 0, i64 11
  %1127 = load i8, i8* %arrayidx141.10, align 1
  %conv142.10 = zext i8 %1127 to i32
  %xor143.10 = xor i32 %conv136.10, %conv142.10
  %arrayidx146.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx148.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.10, i64 0, i64 10
  %1128 = load i8, i8* %arrayidx148.10, align 1
  %conv149.10 = zext i8 %1128 to i32
  %xor150.10 = xor i32 %xor143.10, %conv149.10
  %conv151.10 = trunc i32 %xor150.10 to i8
  %arrayidx153.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 10
  %arrayidx156.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.10, i64 0, i64 11
  store i8 %conv151.10, i8* %arrayidx156.10, align 1
  %arrayidx158.10 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 10
  %arrayidx161.10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.10, i64 0, i64 11
  %1129 = load i8, i8* %arrayidx161.10, align 1
  %conv162.10 = zext i8 %1129 to i32
  %arrayidx164.10 = getelementptr inbounds i8, i8* %c, i64 10
  %1130 = load i8, i8* %arrayidx164.10, align 1
  %conv165.10 = zext i8 %1130 to i32
  %xor166.10 = xor i32 %conv165.10, %conv162.10
  %conv167.10 = trunc i32 %xor166.10 to i8
  store i8 %conv167.10, i8* %arrayidx164.10, align 1
  %arrayidx65.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx67.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.11, i64 0, i64 11
  %1131 = load i8, i8* %arrayidx67.11, align 1
  %arrayidx69.11 = getelementptr inbounds i8, i8* %c, i64 11
  store i8 %1131, i8* %arrayidx69.11, align 1
  %arrayidx77.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 11
  %arrayidx82.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx98.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 11
  %arrayidx113.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 11
  %arrayidx117.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 11
  %arrayidx122.11 = getelementptr inbounds i8, i8* %c, i64 11
  %arrayidx79.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.11, i64 0, i64 15
  %1132 = load i8, i8* %arrayidx79.11, align 1
  %conv80.11 = zext i8 %1132 to i32
  %arrayidx84.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.11, i64 0, i64 15
  %1133 = load i8, i8* %arrayidx84.11, align 1
  %conv85.11 = zext i8 %1133 to i32
  %xor.11 = xor i32 %conv80.11, %conv85.11
  %arrayidx87.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.11, i64 0, i64 11
  %1134 = load i8, i8* %arrayidx89.11, align 1
  %conv90.11 = zext i8 %1134 to i32
  %xor91.11 = xor i32 %xor.11, %conv90.11
  %arrayidx94.11 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %1135 = load i8, i8* %arrayidx94.11, align 1
  %conv95.11 = zext i8 %1135 to i32
  %xor96.11 = xor i32 %xor91.11, %conv95.11
  %arrayidx101.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.11, i64 0, i64 14
  %1136 = load i8, i8* %arrayidx101.11, align 1
  %conv102.11 = zext i8 %1136 to i32
  %xor103.11 = xor i32 %xor96.11, %conv102.11
  %arrayidx106.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.11, i64 0, i64 11
  %1137 = load i8, i8* %arrayidx108.11, align 1
  %conv109.11 = zext i8 %1137 to i32
  %xor110.11 = xor i32 %xor103.11, %conv109.11
  %conv111.11 = trunc i32 %xor110.11 to i8
  %arrayidx115.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.11, i64 0, i64 15
  store i8 %conv111.11, i8* %arrayidx115.11, align 1
  %arrayidx119.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.11, i64 0, i64 15
  %1138 = load i8, i8* %arrayidx119.11, align 1
  %conv120.11 = zext i8 %1138 to i32
  %1139 = load i8, i8* %arrayidx122.11, align 1
  %conv123.11 = zext i8 %1139 to i32
  %xor124.11 = xor i32 %conv123.11, %conv120.11
  %conv125.11 = trunc i32 %xor124.11 to i8
  store i8 %conv125.11, i8* %arrayidx122.11, align 1
  %arrayidx79.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.11, i64 0, i64 13
  %1140 = load i8, i8* %arrayidx79.1.11, align 1
  %conv80.1.11 = zext i8 %1140 to i32
  %arrayidx84.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.11, i64 0, i64 13
  %1141 = load i8, i8* %arrayidx84.1.11, align 1
  %conv85.1.11 = zext i8 %1141 to i32
  %xor.1.11 = xor i32 %conv80.1.11, %conv85.1.11
  %arrayidx87.1.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx89.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.1.11, i64 0, i64 11
  %1142 = load i8, i8* %arrayidx89.1.11, align 1
  %conv90.1.11 = zext i8 %1142 to i32
  %xor91.1.11 = xor i32 %xor.1.11, %conv90.1.11
  %arrayidx94.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 12
  %1143 = load i8, i8* %arrayidx94.1.11, align 1
  %conv95.1.11 = zext i8 %1143 to i32
  %xor96.1.11 = xor i32 %xor91.1.11, %conv95.1.11
  %arrayidx101.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.11, i64 0, i64 12
  %1144 = load i8, i8* %arrayidx101.1.11, align 1
  %conv102.1.11 = zext i8 %1144 to i32
  %xor103.1.11 = xor i32 %xor96.1.11, %conv102.1.11
  %arrayidx106.1.11 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx108.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.1.11, i64 0, i64 11
  %1145 = load i8, i8* %arrayidx108.1.11, align 1
  %conv109.1.11 = zext i8 %1145 to i32
  %xor110.1.11 = xor i32 %xor103.1.11, %conv109.1.11
  %conv111.1.11 = trunc i32 %xor110.1.11 to i8
  %arrayidx115.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.11, i64 0, i64 13
  store i8 %conv111.1.11, i8* %arrayidx115.1.11, align 1
  %arrayidx119.1.11 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.11, i64 0, i64 13
  %1146 = load i8, i8* %arrayidx119.1.11, align 1
  %conv120.1.11 = zext i8 %1146 to i32
  %1147 = load i8, i8* %arrayidx122.11, align 1
  %conv123.1.11 = zext i8 %1147 to i32
  %xor124.1.11 = xor i32 %conv123.1.11, %conv120.1.11
  %conv125.1.11 = trunc i32 %xor124.1.11 to i8
  store i8 %conv125.1.11, i8* %arrayidx122.11, align 1
  %arrayidx192.11 = getelementptr inbounds i8, i8* %c, i64 11
  %scevgep19.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 10, i64 11
  %scevgep1920.11 = bitcast i8* %scevgep19.11 to [16 x [16 x i8]]*
  %1148 = load i8, i8* %scevgep19.11, align 1
  %conv190.prol.11 = zext i8 %1148 to i32
  %1149 = load i8, i8* %arrayidx192.11, align 1
  %conv193.prol.11 = zext i8 %1149 to i32
  %xor194.prol.11 = xor i32 %conv193.prol.11, %conv190.prol.11
  %conv195.prol.11 = trunc i32 %xor194.prol.11 to i8
  store i8 %conv195.prol.11, i8* %arrayidx192.11, align 1
  %scevgep22.prol.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.11, i64 0, i64 -1, i64 0
  %1150 = bitcast i8* %scevgep22.prol.11 to [16 x [16 x i8]]*
  %lsr.iv2123.11 = bitcast [16 x [16 x i8]]* %1150 to i8*
  %1151 = load i8, i8* %lsr.iv2123.11, align 1
  %conv190.11 = zext i8 %1151 to i32
  %1152 = load i8, i8* %arrayidx192.11, align 1
  %conv193.11 = zext i8 %1152 to i32
  %xor194.11 = xor i32 %conv193.11, %conv190.11
  %conv195.11 = trunc i32 %xor194.11 to i8
  store i8 %conv195.11, i8* %arrayidx192.11, align 1
  %scevgep22.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1150, i64 0, i64 -1, i64 0
  %1153 = bitcast i8* %scevgep22.11 to [16 x [16 x i8]]*
  %1154 = load i8, i8* %scevgep22.11, align 1
  %conv190.1.11 = zext i8 %1154 to i32
  %1155 = load i8, i8* %arrayidx192.11, align 1
  %conv193.1.11 = zext i8 %1155 to i32
  %xor194.1.11 = xor i32 %conv193.1.11, %conv190.1.11
  %conv195.1.11 = trunc i32 %xor194.1.11 to i8
  store i8 %conv195.1.11, i8* %arrayidx192.11, align 1
  %scevgep22.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1153, i64 0, i64 -1, i64 0
  %1156 = bitcast i8* %scevgep22.1.11 to [16 x [16 x i8]]*
  %1157 = load i8, i8* %scevgep22.1.11, align 1
  %conv190.195.11 = zext i8 %1157 to i32
  %1158 = load i8, i8* %arrayidx192.11, align 1
  %conv193.196.11 = zext i8 %1158 to i32
  %xor194.197.11 = xor i32 %conv193.196.11, %conv190.195.11
  %conv195.198.11 = trunc i32 %xor194.197.11 to i8
  store i8 %conv195.198.11, i8* %arrayidx192.11, align 1
  %scevgep22.1100.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1156, i64 0, i64 -1, i64 0
  %1159 = bitcast i8* %scevgep22.1100.11 to [16 x [16 x i8]]*
  %1160 = load i8, i8* %scevgep22.1100.11, align 1
  %conv190.1.1.11 = zext i8 %1160 to i32
  %1161 = load i8, i8* %arrayidx192.11, align 1
  %conv193.1.1.11 = zext i8 %1161 to i32
  %xor194.1.1.11 = xor i32 %conv193.1.1.11, %conv190.1.1.11
  %conv195.1.1.11 = trunc i32 %xor194.1.1.11 to i8
  store i8 %conv195.1.1.11, i8* %arrayidx192.11, align 1
  %scevgep22.1.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1159, i64 0, i64 -1, i64 0
  %1162 = bitcast i8* %scevgep22.1.1.11 to [16 x [16 x i8]]*
  %1163 = load i8, i8* %scevgep22.1.1.11, align 1
  %conv190.2.11 = zext i8 %1163 to i32
  %1164 = load i8, i8* %arrayidx192.11, align 1
  %conv193.2.11 = zext i8 %1164 to i32
  %xor194.2.11 = xor i32 %conv193.2.11, %conv190.2.11
  %conv195.2.11 = trunc i32 %xor194.2.11 to i8
  store i8 %conv195.2.11, i8* %arrayidx192.11, align 1
  %scevgep22.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1162, i64 0, i64 -1, i64 0
  %1165 = bitcast i8* %scevgep22.2.11 to [16 x [16 x i8]]*
  %1166 = load i8, i8* %scevgep22.2.11, align 1
  %conv190.1.2.11 = zext i8 %1166 to i32
  %1167 = load i8, i8* %arrayidx192.11, align 1
  %conv193.1.2.11 = zext i8 %1167 to i32
  %xor194.1.2.11 = xor i32 %conv193.1.2.11, %conv190.1.2.11
  %conv195.1.2.11 = trunc i32 %xor194.1.2.11 to i8
  store i8 %conv195.1.2.11, i8* %arrayidx192.11, align 1
  %scevgep22.1.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1165, i64 0, i64 -1, i64 0
  %1168 = bitcast i8* %scevgep22.1.2.11 to [16 x [16 x i8]]*
  %1169 = load i8, i8* %scevgep22.1.2.11, align 1
  %conv190.3.11 = zext i8 %1169 to i32
  %1170 = load i8, i8* %arrayidx192.11, align 1
  %conv193.3.11 = zext i8 %1170 to i32
  %xor194.3.11 = xor i32 %conv193.3.11, %conv190.3.11
  %conv195.3.11 = trunc i32 %xor194.3.11 to i8
  store i8 %conv195.3.11, i8* %arrayidx192.11, align 1
  %scevgep22.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1168, i64 0, i64 -1, i64 0
  %1171 = bitcast i8* %scevgep22.3.11 to [16 x [16 x i8]]*
  %1172 = load i8, i8* %scevgep22.3.11, align 1
  %conv190.1.3.11 = zext i8 %1172 to i32
  %1173 = load i8, i8* %arrayidx192.11, align 1
  %conv193.1.3.11 = zext i8 %1173 to i32
  %xor194.1.3.11 = xor i32 %conv193.1.3.11, %conv190.1.3.11
  %conv195.1.3.11 = trunc i32 %xor194.1.3.11 to i8
  store i8 %conv195.1.3.11, i8* %arrayidx192.11, align 1
  %scevgep22.1.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1171, i64 0, i64 -1, i64 0
  %1174 = bitcast i8* %scevgep22.1.3.11 to [16 x [16 x i8]]*
  %1175 = load i8, i8* %scevgep22.1.3.11, align 1
  %conv190.4.11 = zext i8 %1175 to i32
  %1176 = load i8, i8* %arrayidx192.11, align 1
  %conv193.4.11 = zext i8 %1176 to i32
  %xor194.4.11 = xor i32 %conv193.4.11, %conv190.4.11
  %conv195.4.11 = trunc i32 %xor194.4.11 to i8
  store i8 %conv195.4.11, i8* %arrayidx192.11, align 1
  %scevgep22.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1174, i64 0, i64 -1, i64 0
  %1177 = load i8, i8* %scevgep22.4.11, align 1
  %conv190.1.4.11 = zext i8 %1177 to i32
  %1178 = load i8, i8* %arrayidx192.11, align 1
  %conv193.1.4.11 = zext i8 %1178 to i32
  %xor194.1.4.11 = xor i32 %conv193.1.4.11, %conv190.1.4.11
  %conv195.1.4.11 = trunc i32 %xor194.1.4.11 to i8
  store i8 %conv195.1.4.11, i8* %arrayidx192.11, align 1
  %arrayidx65.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx67.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.12, i64 0, i64 12
  %1179 = load i8, i8* %arrayidx67.12, align 1
  %arrayidx69.12 = getelementptr inbounds i8, i8* %c, i64 12
  store i8 %1179, i8* %arrayidx69.12, align 1
  %arrayidx77.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 12
  %arrayidx82.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx98.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx113.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 12
  %arrayidx117.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 12
  %arrayidx122.12 = getelementptr inbounds i8, i8* %c, i64 12
  %arrayidx79.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.12, i64 0, i64 15
  %1180 = load i8, i8* %arrayidx79.12, align 1
  %conv80.12 = zext i8 %1180 to i32
  %arrayidx84.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.12, i64 0, i64 15
  %1181 = load i8, i8* %arrayidx84.12, align 1
  %conv85.12 = zext i8 %1181 to i32
  %xor.12 = xor i32 %conv80.12, %conv85.12
  %arrayidx87.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.12, i64 0, i64 12
  %1182 = load i8, i8* %arrayidx89.12, align 1
  %conv90.12 = zext i8 %1182 to i32
  %xor91.12 = xor i32 %xor.12, %conv90.12
  %arrayidx94.12 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %1183 = load i8, i8* %arrayidx94.12, align 1
  %conv95.12 = zext i8 %1183 to i32
  %xor96.12 = xor i32 %xor91.12, %conv95.12
  %arrayidx101.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.12, i64 0, i64 14
  %1184 = load i8, i8* %arrayidx101.12, align 1
  %conv102.12 = zext i8 %1184 to i32
  %xor103.12 = xor i32 %xor96.12, %conv102.12
  %arrayidx106.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.12, i64 0, i64 12
  %1185 = load i8, i8* %arrayidx108.12, align 1
  %conv109.12 = zext i8 %1185 to i32
  %xor110.12 = xor i32 %xor103.12, %conv109.12
  %conv111.12 = trunc i32 %xor110.12 to i8
  %arrayidx115.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.12, i64 0, i64 15
  store i8 %conv111.12, i8* %arrayidx115.12, align 1
  %arrayidx119.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.12, i64 0, i64 15
  %1186 = load i8, i8* %arrayidx119.12, align 1
  %conv120.12 = zext i8 %1186 to i32
  %1187 = load i8, i8* %arrayidx122.12, align 1
  %conv123.12 = zext i8 %1187 to i32
  %xor124.12 = xor i32 %conv123.12, %conv120.12
  %conv125.12 = trunc i32 %xor124.12 to i8
  store i8 %conv125.12, i8* %arrayidx122.12, align 1
  %arrayidx132.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 12
  %arrayidx135.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.12, i64 0, i64 13
  %1188 = load i8, i8* %arrayidx135.12, align 1
  %conv136.12 = zext i8 %1188 to i32
  %arrayidx138.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 12
  %arrayidx141.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.12, i64 0, i64 13
  %1189 = load i8, i8* %arrayidx141.12, align 1
  %conv142.12 = zext i8 %1189 to i32
  %xor143.12 = xor i32 %conv136.12, %conv142.12
  %arrayidx146.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx148.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.12, i64 0, i64 12
  %1190 = load i8, i8* %arrayidx148.12, align 1
  %conv149.12 = zext i8 %1190 to i32
  %xor150.12 = xor i32 %xor143.12, %conv149.12
  %conv151.12 = trunc i32 %xor150.12 to i8
  %arrayidx153.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 12
  %arrayidx156.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.12, i64 0, i64 13
  store i8 %conv151.12, i8* %arrayidx156.12, align 1
  %arrayidx158.12 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 12
  %arrayidx161.12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.12, i64 0, i64 13
  %1191 = load i8, i8* %arrayidx161.12, align 1
  %conv162.12 = zext i8 %1191 to i32
  %arrayidx164.12 = getelementptr inbounds i8, i8* %c, i64 12
  %1192 = load i8, i8* %arrayidx164.12, align 1
  %conv165.12 = zext i8 %1192 to i32
  %xor166.12 = xor i32 %conv165.12, %conv162.12
  %conv167.12 = trunc i32 %xor166.12 to i8
  store i8 %conv167.12, i8* %arrayidx164.12, align 1
  %arrayidx65.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx67.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.13, i64 0, i64 13
  %1193 = load i8, i8* %arrayidx67.13, align 1
  %arrayidx69.13 = getelementptr inbounds i8, i8* %c, i64 13
  store i8 %1193, i8* %arrayidx69.13, align 1
  %arrayidx77.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 13
  %arrayidx82.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx98.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 13
  %arrayidx113.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 13
  %arrayidx117.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 13
  %arrayidx122.13 = getelementptr inbounds i8, i8* %c, i64 13
  %arrayidx79.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77.13, i64 0, i64 15
  %1194 = load i8, i8* %arrayidx79.13, align 1
  %conv80.13 = zext i8 %1194 to i32
  %arrayidx84.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx82.13, i64 0, i64 15
  %1195 = load i8, i8* %arrayidx84.13, align 1
  %conv85.13 = zext i8 %1195 to i32
  %xor.13 = xor i32 %conv80.13, %conv85.13
  %arrayidx87.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx89.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx87.13, i64 0, i64 13
  %1196 = load i8, i8* %arrayidx89.13, align 1
  %conv90.13 = zext i8 %1196 to i32
  %xor91.13 = xor i32 %xor.13, %conv90.13
  %arrayidx94.13 = getelementptr inbounds [16 x i8], [16 x i8]* %rr, i64 0, i64 14
  %1197 = load i8, i8* %arrayidx94.13, align 1
  %conv95.13 = zext i8 %1197 to i32
  %xor96.13 = xor i32 %xor91.13, %conv95.13
  %arrayidx101.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx98.13, i64 0, i64 14
  %1198 = load i8, i8* %arrayidx101.13, align 1
  %conv102.13 = zext i8 %1198 to i32
  %xor103.13 = xor i32 %xor96.13, %conv102.13
  %arrayidx106.13 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx108.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx106.13, i64 0, i64 13
  %1199 = load i8, i8* %arrayidx108.13, align 1
  %conv109.13 = zext i8 %1199 to i32
  %xor110.13 = xor i32 %xor103.13, %conv109.13
  %conv111.13 = trunc i32 %xor110.13 to i8
  %arrayidx115.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx113.13, i64 0, i64 15
  store i8 %conv111.13, i8* %arrayidx115.13, align 1
  %arrayidx119.13 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx117.13, i64 0, i64 15
  %1200 = load i8, i8* %arrayidx119.13, align 1
  %conv120.13 = zext i8 %1200 to i32
  %1201 = load i8, i8* %arrayidx122.13, align 1
  %conv123.13 = zext i8 %1201 to i32
  %xor124.13 = xor i32 %conv123.13, %conv120.13
  %conv125.13 = trunc i32 %xor124.13 to i8
  store i8 %conv125.13, i8* %arrayidx122.13, align 1
  %arrayidx192.13 = getelementptr inbounds i8, i8* %c, i64 13
  %scevgep19.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 12, i64 13
  %scevgep1920.13 = bitcast i8* %scevgep19.13 to [16 x [16 x i8]]*
  %1202 = load i8, i8* %scevgep19.13, align 1
  %conv190.prol.13 = zext i8 %1202 to i32
  %1203 = load i8, i8* %arrayidx192.13, align 1
  %conv193.prol.13 = zext i8 %1203 to i32
  %xor194.prol.13 = xor i32 %conv193.prol.13, %conv190.prol.13
  %conv195.prol.13 = trunc i32 %xor194.prol.13 to i8
  store i8 %conv195.prol.13, i8* %arrayidx192.13, align 1
  %scevgep22.prol.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.13, i64 0, i64 -1, i64 0
  %1204 = bitcast i8* %scevgep22.prol.13 to [16 x [16 x i8]]*
  %lsr.iv2123.13 = bitcast [16 x [16 x i8]]* %1204 to i8*
  %1205 = load i8, i8* %lsr.iv2123.13, align 1
  %conv190.13 = zext i8 %1205 to i32
  %1206 = load i8, i8* %arrayidx192.13, align 1
  %conv193.13 = zext i8 %1206 to i32
  %xor194.13 = xor i32 %conv193.13, %conv190.13
  %conv195.13 = trunc i32 %xor194.13 to i8
  store i8 %conv195.13, i8* %arrayidx192.13, align 1
  %scevgep22.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1204, i64 0, i64 -1, i64 0
  %1207 = bitcast i8* %scevgep22.13 to [16 x [16 x i8]]*
  %1208 = load i8, i8* %scevgep22.13, align 1
  %conv190.1.13 = zext i8 %1208 to i32
  %1209 = load i8, i8* %arrayidx192.13, align 1
  %conv193.1.13 = zext i8 %1209 to i32
  %xor194.1.13 = xor i32 %conv193.1.13, %conv190.1.13
  %conv195.1.13 = trunc i32 %xor194.1.13 to i8
  store i8 %conv195.1.13, i8* %arrayidx192.13, align 1
  %scevgep22.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1207, i64 0, i64 -1, i64 0
  %1210 = bitcast i8* %scevgep22.1.13 to [16 x [16 x i8]]*
  %1211 = load i8, i8* %scevgep22.1.13, align 1
  %conv190.195.13 = zext i8 %1211 to i32
  %1212 = load i8, i8* %arrayidx192.13, align 1
  %conv193.196.13 = zext i8 %1212 to i32
  %xor194.197.13 = xor i32 %conv193.196.13, %conv190.195.13
  %conv195.198.13 = trunc i32 %xor194.197.13 to i8
  store i8 %conv195.198.13, i8* %arrayidx192.13, align 1
  %scevgep22.1100.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1210, i64 0, i64 -1, i64 0
  %1213 = bitcast i8* %scevgep22.1100.13 to [16 x [16 x i8]]*
  %1214 = load i8, i8* %scevgep22.1100.13, align 1
  %conv190.1.1.13 = zext i8 %1214 to i32
  %1215 = load i8, i8* %arrayidx192.13, align 1
  %conv193.1.1.13 = zext i8 %1215 to i32
  %xor194.1.1.13 = xor i32 %conv193.1.1.13, %conv190.1.1.13
  %conv195.1.1.13 = trunc i32 %xor194.1.1.13 to i8
  store i8 %conv195.1.1.13, i8* %arrayidx192.13, align 1
  %scevgep22.1.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1213, i64 0, i64 -1, i64 0
  %1216 = bitcast i8* %scevgep22.1.1.13 to [16 x [16 x i8]]*
  %1217 = load i8, i8* %scevgep22.1.1.13, align 1
  %conv190.2.13 = zext i8 %1217 to i32
  %1218 = load i8, i8* %arrayidx192.13, align 1
  %conv193.2.13 = zext i8 %1218 to i32
  %xor194.2.13 = xor i32 %conv193.2.13, %conv190.2.13
  %conv195.2.13 = trunc i32 %xor194.2.13 to i8
  store i8 %conv195.2.13, i8* %arrayidx192.13, align 1
  %scevgep22.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1216, i64 0, i64 -1, i64 0
  %1219 = bitcast i8* %scevgep22.2.13 to [16 x [16 x i8]]*
  %1220 = load i8, i8* %scevgep22.2.13, align 1
  %conv190.1.2.13 = zext i8 %1220 to i32
  %1221 = load i8, i8* %arrayidx192.13, align 1
  %conv193.1.2.13 = zext i8 %1221 to i32
  %xor194.1.2.13 = xor i32 %conv193.1.2.13, %conv190.1.2.13
  %conv195.1.2.13 = trunc i32 %xor194.1.2.13 to i8
  store i8 %conv195.1.2.13, i8* %arrayidx192.13, align 1
  %scevgep22.1.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1219, i64 0, i64 -1, i64 0
  %1222 = bitcast i8* %scevgep22.1.2.13 to [16 x [16 x i8]]*
  %1223 = load i8, i8* %scevgep22.1.2.13, align 1
  %conv190.3.13 = zext i8 %1223 to i32
  %1224 = load i8, i8* %arrayidx192.13, align 1
  %conv193.3.13 = zext i8 %1224 to i32
  %xor194.3.13 = xor i32 %conv193.3.13, %conv190.3.13
  %conv195.3.13 = trunc i32 %xor194.3.13 to i8
  store i8 %conv195.3.13, i8* %arrayidx192.13, align 1
  %scevgep22.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1222, i64 0, i64 -1, i64 0
  %1225 = bitcast i8* %scevgep22.3.13 to [16 x [16 x i8]]*
  %1226 = load i8, i8* %scevgep22.3.13, align 1
  %conv190.1.3.13 = zext i8 %1226 to i32
  %1227 = load i8, i8* %arrayidx192.13, align 1
  %conv193.1.3.13 = zext i8 %1227 to i32
  %xor194.1.3.13 = xor i32 %conv193.1.3.13, %conv190.1.3.13
  %conv195.1.3.13 = trunc i32 %xor194.1.3.13 to i8
  store i8 %conv195.1.3.13, i8* %arrayidx192.13, align 1
  %scevgep22.1.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1225, i64 0, i64 -1, i64 0
  %1228 = bitcast i8* %scevgep22.1.3.13 to [16 x [16 x i8]]*
  %1229 = load i8, i8* %scevgep22.1.3.13, align 1
  %conv190.4.13 = zext i8 %1229 to i32
  %1230 = load i8, i8* %arrayidx192.13, align 1
  %conv193.4.13 = zext i8 %1230 to i32
  %xor194.4.13 = xor i32 %conv193.4.13, %conv190.4.13
  %conv195.4.13 = trunc i32 %xor194.4.13 to i8
  store i8 %conv195.4.13, i8* %arrayidx192.13, align 1
  %scevgep22.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1228, i64 0, i64 -1, i64 0
  %1231 = bitcast i8* %scevgep22.4.13 to [16 x [16 x i8]]*
  %1232 = load i8, i8* %scevgep22.4.13, align 1
  %conv190.1.4.13 = zext i8 %1232 to i32
  %1233 = load i8, i8* %arrayidx192.13, align 1
  %conv193.1.4.13 = zext i8 %1233 to i32
  %xor194.1.4.13 = xor i32 %conv193.1.4.13, %conv190.1.4.13
  %conv195.1.4.13 = trunc i32 %xor194.1.4.13 to i8
  store i8 %conv195.1.4.13, i8* %arrayidx192.13, align 1
  %scevgep22.1.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1231, i64 0, i64 -1, i64 0
  %1234 = bitcast i8* %scevgep22.1.4.13 to [16 x [16 x i8]]*
  %1235 = load i8, i8* %scevgep22.1.4.13, align 1
  %conv190.5.13 = zext i8 %1235 to i32
  %1236 = load i8, i8* %arrayidx192.13, align 1
  %conv193.5.13 = zext i8 %1236 to i32
  %xor194.5.13 = xor i32 %conv193.5.13, %conv190.5.13
  %conv195.5.13 = trunc i32 %xor194.5.13 to i8
  store i8 %conv195.5.13, i8* %arrayidx192.13, align 1
  %scevgep22.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1234, i64 0, i64 -1, i64 0
  %1237 = load i8, i8* %scevgep22.5.13, align 1
  %conv190.1.5.13 = zext i8 %1237 to i32
  %1238 = load i8, i8* %arrayidx192.13, align 1
  %conv193.1.5.13 = zext i8 %1238 to i32
  %xor194.1.5.13 = xor i32 %conv193.1.5.13, %conv190.1.5.13
  %conv195.1.5.13 = trunc i32 %xor194.1.5.13 to i8
  store i8 %conv195.1.5.13, i8* %arrayidx192.13, align 1
  %arrayidx65.14 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx67.14 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.14, i64 0, i64 14
  %1239 = load i8, i8* %arrayidx67.14, align 1
  %arrayidx69.14 = getelementptr inbounds i8, i8* %c, i64 14
  store i8 %1239, i8* %arrayidx69.14, align 1
  %arrayidx132.14 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 14
  %arrayidx135.14 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx132.14, i64 0, i64 15
  %1240 = load i8, i8* %arrayidx135.14, align 1
  %conv136.14 = zext i8 %1240 to i32
  %arrayidx138.14 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 14
  %arrayidx141.14 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138.14, i64 0, i64 15
  %1241 = load i8, i8* %arrayidx141.14, align 1
  %conv142.14 = zext i8 %1241 to i32
  %xor143.14 = xor i32 %conv136.14, %conv142.14
  %arrayidx146.14 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx148.14 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx146.14, i64 0, i64 14
  %1242 = load i8, i8* %arrayidx148.14, align 1
  %conv149.14 = zext i8 %1242 to i32
  %xor150.14 = xor i32 %xor143.14, %conv149.14
  %conv151.14 = trunc i32 %xor150.14 to i8
  %arrayidx153.14 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 14
  %arrayidx156.14 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx153.14, i64 0, i64 15
  store i8 %conv151.14, i8* %arrayidx156.14, align 1
  %arrayidx158.14 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %t, i64 0, i64 14
  %arrayidx161.14 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx158.14, i64 0, i64 15
  %1243 = load i8, i8* %arrayidx161.14, align 1
  %conv162.14 = zext i8 %1243 to i32
  %arrayidx164.14 = getelementptr inbounds i8, i8* %c, i64 14
  %1244 = load i8, i8* %arrayidx164.14, align 1
  %conv165.14 = zext i8 %1244 to i32
  %xor166.14 = xor i32 %conv165.14, %conv162.14
  %conv167.14 = trunc i32 %xor166.14 to i8
  store i8 %conv167.14, i8* %arrayidx164.14, align 1
  %arrayidx65.15 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %alpha, i64 0, i64 15
  %arrayidx67.15 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx65.15, i64 0, i64 15
  %1245 = load i8, i8* %arrayidx67.15, align 1
  %arrayidx69.15 = getelementptr inbounds i8, i8* %c, i64 15
  store i8 %1245, i8* %arrayidx69.15, align 1
  %arrayidx192.15 = getelementptr inbounds i8, i8* %c, i64 15
  %scevgep19.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 14, i64 15
  %scevgep1920.15 = bitcast i8* %scevgep19.15 to [16 x [16 x i8]]*
  %1246 = load i8, i8* %scevgep19.15, align 1
  %conv190.prol.15 = zext i8 %1246 to i32
  %1247 = load i8, i8* %arrayidx192.15, align 1
  %conv193.prol.15 = zext i8 %1247 to i32
  %xor194.prol.15 = xor i32 %conv193.prol.15, %conv190.prol.15
  %conv195.prol.15 = trunc i32 %xor194.prol.15 to i8
  store i8 %conv195.prol.15, i8* %arrayidx192.15, align 1
  %scevgep22.prol.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %scevgep1920.15, i64 0, i64 -1, i64 0
  %1248 = bitcast i8* %scevgep22.prol.15 to [16 x [16 x i8]]*
  %lsr.iv2123.15 = bitcast [16 x [16 x i8]]* %1248 to i8*
  %1249 = load i8, i8* %lsr.iv2123.15, align 1
  %conv190.15 = zext i8 %1249 to i32
  %1250 = load i8, i8* %arrayidx192.15, align 1
  %conv193.15 = zext i8 %1250 to i32
  %xor194.15 = xor i32 %conv193.15, %conv190.15
  %conv195.15 = trunc i32 %xor194.15 to i8
  store i8 %conv195.15, i8* %arrayidx192.15, align 1
  %scevgep22.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1248, i64 0, i64 -1, i64 0
  %1251 = bitcast i8* %scevgep22.15 to [16 x [16 x i8]]*
  %1252 = load i8, i8* %scevgep22.15, align 1
  %conv190.1.15 = zext i8 %1252 to i32
  %1253 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.15 = zext i8 %1253 to i32
  %xor194.1.15 = xor i32 %conv193.1.15, %conv190.1.15
  %conv195.1.15 = trunc i32 %xor194.1.15 to i8
  store i8 %conv195.1.15, i8* %arrayidx192.15, align 1
  %scevgep22.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1251, i64 0, i64 -1, i64 0
  %1254 = bitcast i8* %scevgep22.1.15 to [16 x [16 x i8]]*
  %1255 = load i8, i8* %scevgep22.1.15, align 1
  %conv190.195.15 = zext i8 %1255 to i32
  %1256 = load i8, i8* %arrayidx192.15, align 1
  %conv193.196.15 = zext i8 %1256 to i32
  %xor194.197.15 = xor i32 %conv193.196.15, %conv190.195.15
  %conv195.198.15 = trunc i32 %xor194.197.15 to i8
  store i8 %conv195.198.15, i8* %arrayidx192.15, align 1
  %scevgep22.1100.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1254, i64 0, i64 -1, i64 0
  %1257 = bitcast i8* %scevgep22.1100.15 to [16 x [16 x i8]]*
  %1258 = load i8, i8* %scevgep22.1100.15, align 1
  %conv190.1.1.15 = zext i8 %1258 to i32
  %1259 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.1.15 = zext i8 %1259 to i32
  %xor194.1.1.15 = xor i32 %conv193.1.1.15, %conv190.1.1.15
  %conv195.1.1.15 = trunc i32 %xor194.1.1.15 to i8
  store i8 %conv195.1.1.15, i8* %arrayidx192.15, align 1
  %scevgep22.1.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1257, i64 0, i64 -1, i64 0
  %1260 = bitcast i8* %scevgep22.1.1.15 to [16 x [16 x i8]]*
  %1261 = load i8, i8* %scevgep22.1.1.15, align 1
  %conv190.2.15 = zext i8 %1261 to i32
  %1262 = load i8, i8* %arrayidx192.15, align 1
  %conv193.2.15 = zext i8 %1262 to i32
  %xor194.2.15 = xor i32 %conv193.2.15, %conv190.2.15
  %conv195.2.15 = trunc i32 %xor194.2.15 to i8
  store i8 %conv195.2.15, i8* %arrayidx192.15, align 1
  %scevgep22.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1260, i64 0, i64 -1, i64 0
  %1263 = bitcast i8* %scevgep22.2.15 to [16 x [16 x i8]]*
  %1264 = load i8, i8* %scevgep22.2.15, align 1
  %conv190.1.2.15 = zext i8 %1264 to i32
  %1265 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.2.15 = zext i8 %1265 to i32
  %xor194.1.2.15 = xor i32 %conv193.1.2.15, %conv190.1.2.15
  %conv195.1.2.15 = trunc i32 %xor194.1.2.15 to i8
  store i8 %conv195.1.2.15, i8* %arrayidx192.15, align 1
  %scevgep22.1.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1263, i64 0, i64 -1, i64 0
  %1266 = bitcast i8* %scevgep22.1.2.15 to [16 x [16 x i8]]*
  %1267 = load i8, i8* %scevgep22.1.2.15, align 1
  %conv190.3.15 = zext i8 %1267 to i32
  %1268 = load i8, i8* %arrayidx192.15, align 1
  %conv193.3.15 = zext i8 %1268 to i32
  %xor194.3.15 = xor i32 %conv193.3.15, %conv190.3.15
  %conv195.3.15 = trunc i32 %xor194.3.15 to i8
  store i8 %conv195.3.15, i8* %arrayidx192.15, align 1
  %scevgep22.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1266, i64 0, i64 -1, i64 0
  %1269 = bitcast i8* %scevgep22.3.15 to [16 x [16 x i8]]*
  %1270 = load i8, i8* %scevgep22.3.15, align 1
  %conv190.1.3.15 = zext i8 %1270 to i32
  %1271 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.3.15 = zext i8 %1271 to i32
  %xor194.1.3.15 = xor i32 %conv193.1.3.15, %conv190.1.3.15
  %conv195.1.3.15 = trunc i32 %xor194.1.3.15 to i8
  store i8 %conv195.1.3.15, i8* %arrayidx192.15, align 1
  %scevgep22.1.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1269, i64 0, i64 -1, i64 0
  %1272 = bitcast i8* %scevgep22.1.3.15 to [16 x [16 x i8]]*
  %1273 = load i8, i8* %scevgep22.1.3.15, align 1
  %conv190.4.15 = zext i8 %1273 to i32
  %1274 = load i8, i8* %arrayidx192.15, align 1
  %conv193.4.15 = zext i8 %1274 to i32
  %xor194.4.15 = xor i32 %conv193.4.15, %conv190.4.15
  %conv195.4.15 = trunc i32 %xor194.4.15 to i8
  store i8 %conv195.4.15, i8* %arrayidx192.15, align 1
  %scevgep22.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1272, i64 0, i64 -1, i64 0
  %1275 = bitcast i8* %scevgep22.4.15 to [16 x [16 x i8]]*
  %1276 = load i8, i8* %scevgep22.4.15, align 1
  %conv190.1.4.15 = zext i8 %1276 to i32
  %1277 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.4.15 = zext i8 %1277 to i32
  %xor194.1.4.15 = xor i32 %conv193.1.4.15, %conv190.1.4.15
  %conv195.1.4.15 = trunc i32 %xor194.1.4.15 to i8
  store i8 %conv195.1.4.15, i8* %arrayidx192.15, align 1
  %scevgep22.1.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1275, i64 0, i64 -1, i64 0
  %1278 = bitcast i8* %scevgep22.1.4.15 to [16 x [16 x i8]]*
  %1279 = load i8, i8* %scevgep22.1.4.15, align 1
  %conv190.5.15 = zext i8 %1279 to i32
  %1280 = load i8, i8* %arrayidx192.15, align 1
  %conv193.5.15 = zext i8 %1280 to i32
  %xor194.5.15 = xor i32 %conv193.5.15, %conv190.5.15
  %conv195.5.15 = trunc i32 %xor194.5.15 to i8
  store i8 %conv195.5.15, i8* %arrayidx192.15, align 1
  %scevgep22.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1278, i64 0, i64 -1, i64 0
  %1281 = bitcast i8* %scevgep22.5.15 to [16 x [16 x i8]]*
  %1282 = load i8, i8* %scevgep22.5.15, align 1
  %conv190.1.5.15 = zext i8 %1282 to i32
  %1283 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.5.15 = zext i8 %1283 to i32
  %xor194.1.5.15 = xor i32 %conv193.1.5.15, %conv190.1.5.15
  %conv195.1.5.15 = trunc i32 %xor194.1.5.15 to i8
  store i8 %conv195.1.5.15, i8* %arrayidx192.15, align 1
  %scevgep22.1.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1281, i64 0, i64 -1, i64 0
  %1284 = bitcast i8* %scevgep22.1.5.15 to [16 x [16 x i8]]*
  %1285 = load i8, i8* %scevgep22.1.5.15, align 1
  %conv190.6.15 = zext i8 %1285 to i32
  %1286 = load i8, i8* %arrayidx192.15, align 1
  %conv193.6.15 = zext i8 %1286 to i32
  %xor194.6.15 = xor i32 %conv193.6.15, %conv190.6.15
  %conv195.6.15 = trunc i32 %xor194.6.15 to i8
  store i8 %conv195.6.15, i8* %arrayidx192.15, align 1
  %scevgep22.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %1284, i64 0, i64 -1, i64 0
  %1287 = load i8, i8* %scevgep22.6.15, align 1
  %conv190.1.6.15 = zext i8 %1287 to i32
  %1288 = load i8, i8* %arrayidx192.15, align 1
  %conv193.1.6.15 = zext i8 %1288 to i32
  %xor194.1.6.15 = xor i32 %conv193.1.6.15, %conv190.1.6.15
  %conv195.1.6.15 = trunc i32 %xor194.1.6.15 to i8
  store i8 %conv195.1.6.15, i8* %arrayidx192.15, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %1289 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %1290 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %1290 to i32
  %conv1.i.i236.1 = zext i8 %1289 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %1291 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %1291 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %1292 = load i8, i8* %scevgep.3, align 1
  %conv.i.i235.3 = zext i8 %1292 to i32
  %conv1.i.i236.3 = zext i8 %conv2.i.i238.2 to i32
  %xor.i.i237.3 = xor i32 %conv1.i.i236.3, %conv.i.i235.3
  %conv2.i.i238.3 = trunc i32 %xor.i.i237.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %1293 = load i8, i8* %scevgep.4, align 1
  %conv.i.i235.4 = zext i8 %1293 to i32
  %conv1.i.i236.4 = zext i8 %conv2.i.i238.3 to i32
  %xor.i.i237.4 = xor i32 %conv1.i.i236.4, %conv.i.i235.4
  %conv2.i.i238.4 = trunc i32 %xor.i.i237.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %1294 = load i8, i8* %scevgep.5, align 1
  %conv.i.i235.5 = zext i8 %1294 to i32
  %conv1.i.i236.5 = zext i8 %conv2.i.i238.4 to i32
  %xor.i.i237.5 = xor i32 %conv1.i.i236.5, %conv.i.i235.5
  %conv2.i.i238.5 = trunc i32 %xor.i.i237.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %1295 = load i8, i8* %scevgep.6, align 1
  %conv.i.i235.6 = zext i8 %1295 to i32
  %conv1.i.i236.6 = zext i8 %conv2.i.i238.5 to i32
  %xor.i.i237.6 = xor i32 %conv1.i.i236.6, %conv.i.i235.6
  %conv2.i.i238.6 = trunc i32 %xor.i.i237.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %1296 = load i8, i8* %scevgep.7, align 1
  %conv.i.i235.7 = zext i8 %1296 to i32
  %conv1.i.i236.7 = zext i8 %conv2.i.i238.6 to i32
  %xor.i.i237.7 = xor i32 %conv1.i.i236.7, %conv.i.i235.7
  %conv2.i.i238.7 = trunc i32 %xor.i.i237.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %1297 = load i8, i8* %scevgep.8, align 1
  %conv.i.i235.8 = zext i8 %1297 to i32
  %conv1.i.i236.8 = zext i8 %conv2.i.i238.7 to i32
  %xor.i.i237.8 = xor i32 %conv1.i.i236.8, %conv.i.i235.8
  %conv2.i.i238.8 = trunc i32 %xor.i.i237.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %1298 = load i8, i8* %scevgep.9, align 1
  %conv.i.i235.9 = zext i8 %1298 to i32
  %conv1.i.i236.9 = zext i8 %conv2.i.i238.8 to i32
  %xor.i.i237.9 = xor i32 %conv1.i.i236.9, %conv.i.i235.9
  %conv2.i.i238.9 = trunc i32 %xor.i.i237.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %1299 = load i8, i8* %scevgep.10, align 1
  %conv.i.i235.10 = zext i8 %1299 to i32
  %conv1.i.i236.10 = zext i8 %conv2.i.i238.9 to i32
  %xor.i.i237.10 = xor i32 %conv1.i.i236.10, %conv.i.i235.10
  %conv2.i.i238.10 = trunc i32 %xor.i.i237.10 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  %1300 = load i8, i8* %scevgep.11, align 1
  %conv.i.i235.11 = zext i8 %1300 to i32
  %conv1.i.i236.11 = zext i8 %conv2.i.i238.10 to i32
  %xor.i.i237.11 = xor i32 %conv1.i.i236.11, %conv.i.i235.11
  %conv2.i.i238.11 = trunc i32 %xor.i.i237.11 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  %1301 = load i8, i8* %scevgep.12, align 1
  %conv.i.i235.12 = zext i8 %1301 to i32
  %conv1.i.i236.12 = zext i8 %conv2.i.i238.11 to i32
  %xor.i.i237.12 = xor i32 %conv1.i.i236.12, %conv.i.i235.12
  %conv2.i.i238.12 = trunc i32 %xor.i.i237.12 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  %1302 = load i8, i8* %scevgep.13, align 1
  %conv.i.i235.13 = zext i8 %1302 to i32
  %conv1.i.i236.13 = zext i8 %conv2.i.i238.12 to i32
  %xor.i.i237.13 = xor i32 %conv1.i.i236.13, %conv.i.i235.13
  %conv2.i.i238.13 = trunc i32 %xor.i.i237.13 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  %1303 = load i8, i8* %scevgep.14, align 1
  %conv.i.i235.14 = zext i8 %1303 to i32
  %conv1.i.i236.14 = zext i8 %conv2.i.i238.13 to i32
  %xor.i.i237.14 = xor i32 %conv1.i.i236.14, %conv.i.i235.14
  %conv2.i.i238.14 = trunc i32 %xor.i.i237.14 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  %1304 = load i8, i8* %scevgep.15, align 1
  %conv.i.i235.15 = zext i8 %1304 to i32
  %conv1.i.i236.15 = zext i8 %conv2.i.i238.14 to i32
  %xor.i.i237.15 = xor i32 %conv1.i.i236.15, %conv.i.i235.15
  %conv2.i.i238.15 = trunc i32 %xor.i.i237.15 to i8
  %conv205 = zext i8 %conv2.i.i238.15 to i32
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
