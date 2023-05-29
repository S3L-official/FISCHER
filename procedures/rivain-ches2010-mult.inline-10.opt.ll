; ModuleID = '../examples/rivain-ches2010-mult.inline-10.ll'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
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
  %conv3 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %11 = load i8, i8* %b, align 1
  %scevgep46.1 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep46.1, align 1
  %conv.i.i96.1 = zext i8 %12 to i32
  %conv1.i.i97.1 = zext i8 %11 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep46.2 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep46.2, align 1
  %conv.i.i96.2 = zext i8 %13 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %scevgep46.3 = getelementptr i8, i8* %b, i64 3
  %14 = load i8, i8* %scevgep46.3, align 1
  %conv.i.i96.3 = zext i8 %14 to i32
  %conv1.i.i97.3 = zext i8 %conv2.i.i99.2 to i32
  %xor.i.i98.3 = xor i32 %conv1.i.i97.3, %conv.i.i96.3
  %conv2.i.i99.3 = trunc i32 %xor.i.i98.3 to i8
  %scevgep46.4 = getelementptr i8, i8* %b, i64 4
  %15 = load i8, i8* %scevgep46.4, align 1
  %conv.i.i96.4 = zext i8 %15 to i32
  %conv1.i.i97.4 = zext i8 %conv2.i.i99.3 to i32
  %xor.i.i98.4 = xor i32 %conv1.i.i97.4, %conv.i.i96.4
  %conv2.i.i99.4 = trunc i32 %xor.i.i98.4 to i8
  %scevgep46.5 = getelementptr i8, i8* %b, i64 5
  %16 = load i8, i8* %scevgep46.5, align 1
  %conv.i.i96.5 = zext i8 %16 to i32
  %conv1.i.i97.5 = zext i8 %conv2.i.i99.4 to i32
  %xor.i.i98.5 = xor i32 %conv1.i.i97.5, %conv.i.i96.5
  %conv2.i.i99.5 = trunc i32 %xor.i.i98.5 to i8
  %scevgep46.6 = getelementptr i8, i8* %b, i64 6
  %17 = load i8, i8* %scevgep46.6, align 1
  %conv.i.i96.6 = zext i8 %17 to i32
  %conv1.i.i97.6 = zext i8 %conv2.i.i99.5 to i32
  %xor.i.i98.6 = xor i32 %conv1.i.i97.6, %conv.i.i96.6
  %conv2.i.i99.6 = trunc i32 %xor.i.i98.6 to i8
  %scevgep46.7 = getelementptr i8, i8* %b, i64 7
  %18 = load i8, i8* %scevgep46.7, align 1
  %conv.i.i96.7 = zext i8 %18 to i32
  %conv1.i.i97.7 = zext i8 %conv2.i.i99.6 to i32
  %xor.i.i98.7 = xor i32 %conv1.i.i97.7, %conv.i.i96.7
  %conv2.i.i99.7 = trunc i32 %xor.i.i98.7 to i8
  %scevgep46.8 = getelementptr i8, i8* %b, i64 8
  %19 = load i8, i8* %scevgep46.8, align 1
  %conv.i.i96.8 = zext i8 %19 to i32
  %conv1.i.i97.8 = zext i8 %conv2.i.i99.7 to i32
  %xor.i.i98.8 = xor i32 %conv1.i.i97.8, %conv.i.i96.8
  %conv2.i.i99.8 = trunc i32 %xor.i.i98.8 to i8
  %scevgep46.9 = getelementptr i8, i8* %b, i64 9
  %20 = load i8, i8* %scevgep46.9, align 1
  %conv.i.i96.9 = zext i8 %20 to i32
  %conv1.i.i97.9 = zext i8 %conv2.i.i99.8 to i32
  %xor.i.i98.9 = xor i32 %conv1.i.i97.9, %conv.i.i96.9
  %conv2.i.i99.9 = trunc i32 %xor.i.i98.9 to i8
  %scevgep46.10 = getelementptr i8, i8* %b, i64 10
  %21 = load i8, i8* %scevgep46.10, align 1
  %conv.i.i96.10 = zext i8 %21 to i32
  %conv1.i.i97.10 = zext i8 %conv2.i.i99.9 to i32
  %xor.i.i98.10 = xor i32 %conv1.i.i97.10, %conv.i.i96.10
  %conv2.i.i99.10 = trunc i32 %xor.i.i98.10 to i8
  %conv7 = zext i8 %conv2.i.i99.10 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [11 x [11 x i8]]*
  %scevgep36 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep3637 = bitcast i8* %scevgep36 to [11 x [11 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep23, align 1
  %22 = load i8, i8* %scevgep23, align 1
  %conv23 = zext i8 %22 to i32
  %23 = load i8, i8* %a, align 1
  %scevgep34 = getelementptr i8, i8* %b, i64 1
  %24 = load i8, i8* %scevgep34, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep35 = getelementptr i8, i8* %a, i64 1
  %25 = load i8, i8* %scevgep35, align 1
  %26 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  store i8 %conv37, i8* %scevgep36, align 1
  %scevgep28 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %27 = bitcast i8* %scevgep28 to [11 x [11 x i8]]*
  %scevgep41 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep3637, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep41 to [11 x [11 x i8]]*
  %call16.1152 = call zeroext i8 (...) @rand()
  store i8 %call16.1152, i8* %scevgep28, align 1
  %29 = load i8, i8* %scevgep28, align 1
  %conv23.1153 = zext i8 %29 to i32
  %30 = load i8, i8* %a, align 1
  %scevgep34.1154 = getelementptr i8, i8* %b, i64 2
  %31 = load i8, i8* %scevgep34.1154, align 1
  %call28.1155 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31)
  %conv29.1156 = zext i8 %call28.1155 to i32
  %xor.1157 = xor i32 %conv23.1153, %conv29.1156
  %scevgep35.1158 = getelementptr i8, i8* %a, i64 2
  %32 = load i8, i8* %scevgep35.1158, align 1
  %33 = load i8, i8* %b, align 1
  %call34.1159 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %conv35.1160 = zext i8 %call34.1159 to i32
  %xor36.1161 = xor i32 %xor.1157, %conv35.1160
  %conv37.1162 = trunc i32 %xor36.1161 to i8
  store i8 %conv37.1162, i8* %scevgep41, align 1
  %scevgep28.1163 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 1
  %34 = bitcast i8* %scevgep28.1163 to [11 x [11 x i8]]*
  %scevgep41.1164 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 1, i64 0
  %35 = bitcast i8* %scevgep41.1164 to [11 x [11 x i8]]*
  %call16.2166 = call zeroext i8 (...) @rand()
  store i8 %call16.2166, i8* %scevgep28.1163, align 1
  %36 = load i8, i8* %scevgep28.1163, align 1
  %conv23.2167 = zext i8 %36 to i32
  %37 = load i8, i8* %a, align 1
  %scevgep34.2168 = getelementptr i8, i8* %b, i64 3
  %38 = load i8, i8* %scevgep34.2168, align 1
  %call28.2169 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38)
  %conv29.2170 = zext i8 %call28.2169 to i32
  %xor.2171 = xor i32 %conv23.2167, %conv29.2170
  %scevgep35.2172 = getelementptr i8, i8* %a, i64 3
  %39 = load i8, i8* %scevgep35.2172, align 1
  %40 = load i8, i8* %b, align 1
  %call34.2173 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40)
  %conv35.2174 = zext i8 %call34.2173 to i32
  %xor36.2175 = xor i32 %xor.2171, %conv35.2174
  %conv37.2176 = trunc i32 %xor36.2175 to i8
  store i8 %conv37.2176, i8* %scevgep41.1164, align 1
  %scevgep28.2177 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %34, i64 0, i64 0, i64 1
  %41 = bitcast i8* %scevgep28.2177 to [11 x [11 x i8]]*
  %scevgep41.2178 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %35, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep41.2178 to [11 x [11 x i8]]*
  %call16.3180 = call zeroext i8 (...) @rand()
  store i8 %call16.3180, i8* %scevgep28.2177, align 1
  %43 = load i8, i8* %scevgep28.2177, align 1
  %conv23.3181 = zext i8 %43 to i32
  %44 = load i8, i8* %a, align 1
  %scevgep34.3182 = getelementptr i8, i8* %b, i64 4
  %45 = load i8, i8* %scevgep34.3182, align 1
  %call28.3183 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45)
  %conv29.3184 = zext i8 %call28.3183 to i32
  %xor.3185 = xor i32 %conv23.3181, %conv29.3184
  %scevgep35.3186 = getelementptr i8, i8* %a, i64 4
  %46 = load i8, i8* %scevgep35.3186, align 1
  %47 = load i8, i8* %b, align 1
  %call34.3187 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %conv35.3188 = zext i8 %call34.3187 to i32
  %xor36.3189 = xor i32 %xor.3185, %conv35.3188
  %conv37.3190 = trunc i32 %xor36.3189 to i8
  store i8 %conv37.3190, i8* %scevgep41.2178, align 1
  %scevgep28.3191 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %41, i64 0, i64 0, i64 1
  %48 = bitcast i8* %scevgep28.3191 to [11 x [11 x i8]]*
  %scevgep41.3192 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %42, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep41.3192 to [11 x [11 x i8]]*
  %call16.4194 = call zeroext i8 (...) @rand()
  store i8 %call16.4194, i8* %scevgep28.3191, align 1
  %50 = load i8, i8* %scevgep28.3191, align 1
  %conv23.4195 = zext i8 %50 to i32
  %51 = load i8, i8* %a, align 1
  %scevgep34.4196 = getelementptr i8, i8* %b, i64 5
  %52 = load i8, i8* %scevgep34.4196, align 1
  %call28.4197 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %conv29.4198 = zext i8 %call28.4197 to i32
  %xor.4199 = xor i32 %conv23.4195, %conv29.4198
  %scevgep35.4200 = getelementptr i8, i8* %a, i64 5
  %53 = load i8, i8* %scevgep35.4200, align 1
  %54 = load i8, i8* %b, align 1
  %call34.4201 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54)
  %conv35.4202 = zext i8 %call34.4201 to i32
  %xor36.4203 = xor i32 %xor.4199, %conv35.4202
  %conv37.4204 = trunc i32 %xor36.4203 to i8
  store i8 %conv37.4204, i8* %scevgep41.3192, align 1
  %scevgep28.4205 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %48, i64 0, i64 0, i64 1
  %55 = bitcast i8* %scevgep28.4205 to [11 x [11 x i8]]*
  %scevgep41.4206 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %49, i64 0, i64 1, i64 0
  %56 = bitcast i8* %scevgep41.4206 to [11 x [11 x i8]]*
  %call16.5208 = call zeroext i8 (...) @rand()
  store i8 %call16.5208, i8* %scevgep28.4205, align 1
  %57 = load i8, i8* %scevgep28.4205, align 1
  %conv23.5209 = zext i8 %57 to i32
  %58 = load i8, i8* %a, align 1
  %scevgep34.5210 = getelementptr i8, i8* %b, i64 6
  %59 = load i8, i8* %scevgep34.5210, align 1
  %call28.5211 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %conv29.5212 = zext i8 %call28.5211 to i32
  %xor.5213 = xor i32 %conv23.5209, %conv29.5212
  %scevgep35.5214 = getelementptr i8, i8* %a, i64 6
  %60 = load i8, i8* %scevgep35.5214, align 1
  %61 = load i8, i8* %b, align 1
  %call34.5215 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61)
  %conv35.5216 = zext i8 %call34.5215 to i32
  %xor36.5217 = xor i32 %xor.5213, %conv35.5216
  %conv37.5218 = trunc i32 %xor36.5217 to i8
  store i8 %conv37.5218, i8* %scevgep41.4206, align 1
  %scevgep28.5219 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %55, i64 0, i64 0, i64 1
  %62 = bitcast i8* %scevgep28.5219 to [11 x [11 x i8]]*
  %scevgep41.5220 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %56, i64 0, i64 1, i64 0
  %63 = bitcast i8* %scevgep41.5220 to [11 x [11 x i8]]*
  %call16.6222 = call zeroext i8 (...) @rand()
  store i8 %call16.6222, i8* %scevgep28.5219, align 1
  %64 = load i8, i8* %scevgep28.5219, align 1
  %conv23.6223 = zext i8 %64 to i32
  %65 = load i8, i8* %a, align 1
  %scevgep34.6224 = getelementptr i8, i8* %b, i64 7
  %66 = load i8, i8* %scevgep34.6224, align 1
  %call28.6225 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %conv29.6226 = zext i8 %call28.6225 to i32
  %xor.6227 = xor i32 %conv23.6223, %conv29.6226
  %scevgep35.6228 = getelementptr i8, i8* %a, i64 7
  %67 = load i8, i8* %scevgep35.6228, align 1
  %68 = load i8, i8* %b, align 1
  %call34.6229 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  %conv35.6230 = zext i8 %call34.6229 to i32
  %xor36.6231 = xor i32 %xor.6227, %conv35.6230
  %conv37.6232 = trunc i32 %xor36.6231 to i8
  store i8 %conv37.6232, i8* %scevgep41.5220, align 1
  %scevgep28.6233 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %62, i64 0, i64 0, i64 1
  %69 = bitcast i8* %scevgep28.6233 to [11 x [11 x i8]]*
  %scevgep41.6234 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %63, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep41.6234 to [11 x [11 x i8]]*
  %call16.7236 = call zeroext i8 (...) @rand()
  store i8 %call16.7236, i8* %scevgep28.6233, align 1
  %71 = load i8, i8* %scevgep28.6233, align 1
  %conv23.7237 = zext i8 %71 to i32
  %72 = load i8, i8* %a, align 1
  %scevgep34.7238 = getelementptr i8, i8* %b, i64 8
  %73 = load i8, i8* %scevgep34.7238, align 1
  %call28.7239 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73)
  %conv29.7240 = zext i8 %call28.7239 to i32
  %xor.7241 = xor i32 %conv23.7237, %conv29.7240
  %scevgep35.7242 = getelementptr i8, i8* %a, i64 8
  %74 = load i8, i8* %scevgep35.7242, align 1
  %75 = load i8, i8* %b, align 1
  %call34.7243 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %conv35.7244 = zext i8 %call34.7243 to i32
  %xor36.7245 = xor i32 %xor.7241, %conv35.7244
  %conv37.7246 = trunc i32 %xor36.7245 to i8
  store i8 %conv37.7246, i8* %scevgep41.6234, align 1
  %scevgep28.7247 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %69, i64 0, i64 0, i64 1
  %76 = bitcast i8* %scevgep28.7247 to [11 x [11 x i8]]*
  %scevgep41.7248 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %70, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep41.7248 to [11 x [11 x i8]]*
  %call16.8250 = call zeroext i8 (...) @rand()
  store i8 %call16.8250, i8* %scevgep28.7247, align 1
  %78 = load i8, i8* %scevgep28.7247, align 1
  %conv23.8251 = zext i8 %78 to i32
  %79 = load i8, i8* %a, align 1
  %scevgep34.8252 = getelementptr i8, i8* %b, i64 9
  %80 = load i8, i8* %scevgep34.8252, align 1
  %call28.8253 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80)
  %conv29.8254 = zext i8 %call28.8253 to i32
  %xor.8255 = xor i32 %conv23.8251, %conv29.8254
  %scevgep35.8256 = getelementptr i8, i8* %a, i64 9
  %81 = load i8, i8* %scevgep35.8256, align 1
  %82 = load i8, i8* %b, align 1
  %call34.8257 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %conv35.8258 = zext i8 %call34.8257 to i32
  %xor36.8259 = xor i32 %xor.8255, %conv35.8258
  %conv37.8260 = trunc i32 %xor36.8259 to i8
  store i8 %conv37.8260, i8* %scevgep41.7248, align 1
  %scevgep28.8261 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %76, i64 0, i64 0, i64 1
  %scevgep41.8262 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %77, i64 0, i64 1, i64 0
  %call16.9264 = call zeroext i8 (...) @rand()
  store i8 %call16.9264, i8* %scevgep28.8261, align 1
  %83 = load i8, i8* %scevgep28.8261, align 1
  %conv23.9265 = zext i8 %83 to i32
  %84 = load i8, i8* %a, align 1
  %scevgep34.9266 = getelementptr i8, i8* %b, i64 10
  %85 = load i8, i8* %scevgep34.9266, align 1
  %call28.9267 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85)
  %conv29.9268 = zext i8 %call28.9267 to i32
  %xor.9269 = xor i32 %conv23.9265, %conv29.9268
  %scevgep35.9270 = getelementptr i8, i8* %a, i64 10
  %86 = load i8, i8* %scevgep35.9270, align 1
  %87 = load i8, i8* %b, align 1
  %call34.9271 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87)
  %conv35.9272 = zext i8 %call34.9271 to i32
  %xor36.9273 = xor i32 %xor.9269, %conv35.9272
  %conv37.9274 = trunc i32 %xor36.9273 to i8
  store i8 %conv37.9274, i8* %scevgep41.8262, align 1
  %scevgep26 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %88 = bitcast i8* %scevgep26 to [11 x [11 x i8]]*
  %scevgep39 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep3637, i64 0, i64 1, i64 1
  %89 = bitcast i8* %scevgep39 to [11 x [11 x i8]]*
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep26, align 1
  %90 = load i8, i8* %scevgep26, align 1
  %conv23.1 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1 = getelementptr i8, i8* %b, i64 2
  %92 = load i8, i8* %scevgep34.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep35.1 = getelementptr i8, i8* %a, i64 2
  %93 = load i8, i8* %scevgep35.1, align 1
  %94 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  store i8 %conv37.1, i8* %scevgep39, align 1
  %scevgep28.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %88, i64 0, i64 0, i64 1
  %95 = bitcast i8* %scevgep28.1 to [11 x [11 x i8]]*
  %scevgep41.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %89, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep41.1 to [11 x [11 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep28.1, align 1
  %97 = load i8, i8* %scevgep28.1, align 1
  %conv23.1.1 = zext i8 %97 to i32
  %98 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.1 = getelementptr i8, i8* %b, i64 3
  %99 = load i8, i8* %scevgep34.1.1, align 1
  %call28.1.1 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99)
  %conv29.1.1 = zext i8 %call28.1.1 to i32
  %xor.1.1 = xor i32 %conv23.1.1, %conv29.1.1
  %scevgep35.1.1 = getelementptr i8, i8* %a, i64 3
  %100 = load i8, i8* %scevgep35.1.1, align 1
  %101 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.1 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101)
  %conv35.1.1 = zext i8 %call34.1.1 to i32
  %xor36.1.1 = xor i32 %xor.1.1, %conv35.1.1
  %conv37.1.1 = trunc i32 %xor36.1.1 to i8
  store i8 %conv37.1.1, i8* %scevgep41.1, align 1
  %scevgep28.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %95, i64 0, i64 0, i64 1
  %102 = bitcast i8* %scevgep28.1.1 to [11 x [11 x i8]]*
  %scevgep41.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %96, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep41.1.1 to [11 x [11 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep28.1.1, align 1
  %104 = load i8, i8* %scevgep28.1.1, align 1
  %conv23.1.2 = zext i8 %104 to i32
  %105 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.2 = getelementptr i8, i8* %b, i64 4
  %106 = load i8, i8* %scevgep34.1.2, align 1
  %call28.1.2 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106)
  %conv29.1.2 = zext i8 %call28.1.2 to i32
  %xor.1.2 = xor i32 %conv23.1.2, %conv29.1.2
  %scevgep35.1.2 = getelementptr i8, i8* %a, i64 4
  %107 = load i8, i8* %scevgep35.1.2, align 1
  %108 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.2 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108)
  %conv35.1.2 = zext i8 %call34.1.2 to i32
  %xor36.1.2 = xor i32 %xor.1.2, %conv35.1.2
  %conv37.1.2 = trunc i32 %xor36.1.2 to i8
  store i8 %conv37.1.2, i8* %scevgep41.1.1, align 1
  %scevgep28.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %102, i64 0, i64 0, i64 1
  %109 = bitcast i8* %scevgep28.1.2 to [11 x [11 x i8]]*
  %scevgep41.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %103, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep41.1.2 to [11 x [11 x i8]]*
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep28.1.2, align 1
  %111 = load i8, i8* %scevgep28.1.2, align 1
  %conv23.1.3 = zext i8 %111 to i32
  %112 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.3 = getelementptr i8, i8* %b, i64 5
  %113 = load i8, i8* %scevgep34.1.3, align 1
  %call28.1.3 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113)
  %conv29.1.3 = zext i8 %call28.1.3 to i32
  %xor.1.3 = xor i32 %conv23.1.3, %conv29.1.3
  %scevgep35.1.3 = getelementptr i8, i8* %a, i64 5
  %114 = load i8, i8* %scevgep35.1.3, align 1
  %115 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.3 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115)
  %conv35.1.3 = zext i8 %call34.1.3 to i32
  %xor36.1.3 = xor i32 %xor.1.3, %conv35.1.3
  %conv37.1.3 = trunc i32 %xor36.1.3 to i8
  store i8 %conv37.1.3, i8* %scevgep41.1.2, align 1
  %scevgep28.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %109, i64 0, i64 0, i64 1
  %116 = bitcast i8* %scevgep28.1.3 to [11 x [11 x i8]]*
  %scevgep41.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %110, i64 0, i64 1, i64 0
  %117 = bitcast i8* %scevgep41.1.3 to [11 x [11 x i8]]*
  %call16.1.4 = call zeroext i8 (...) @rand()
  store i8 %call16.1.4, i8* %scevgep28.1.3, align 1
  %118 = load i8, i8* %scevgep28.1.3, align 1
  %conv23.1.4 = zext i8 %118 to i32
  %119 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.4 = getelementptr i8, i8* %b, i64 6
  %120 = load i8, i8* %scevgep34.1.4, align 1
  %call28.1.4 = call zeroext i8 @mult(i8 zeroext %119, i8 zeroext %120)
  %conv29.1.4 = zext i8 %call28.1.4 to i32
  %xor.1.4 = xor i32 %conv23.1.4, %conv29.1.4
  %scevgep35.1.4 = getelementptr i8, i8* %a, i64 6
  %121 = load i8, i8* %scevgep35.1.4, align 1
  %122 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.4 = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %122)
  %conv35.1.4 = zext i8 %call34.1.4 to i32
  %xor36.1.4 = xor i32 %xor.1.4, %conv35.1.4
  %conv37.1.4 = trunc i32 %xor36.1.4 to i8
  store i8 %conv37.1.4, i8* %scevgep41.1.3, align 1
  %scevgep28.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %116, i64 0, i64 0, i64 1
  %123 = bitcast i8* %scevgep28.1.4 to [11 x [11 x i8]]*
  %scevgep41.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %117, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep41.1.4 to [11 x [11 x i8]]*
  %call16.1.5 = call zeroext i8 (...) @rand()
  store i8 %call16.1.5, i8* %scevgep28.1.4, align 1
  %125 = load i8, i8* %scevgep28.1.4, align 1
  %conv23.1.5 = zext i8 %125 to i32
  %126 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.5 = getelementptr i8, i8* %b, i64 7
  %127 = load i8, i8* %scevgep34.1.5, align 1
  %call28.1.5 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127)
  %conv29.1.5 = zext i8 %call28.1.5 to i32
  %xor.1.5 = xor i32 %conv23.1.5, %conv29.1.5
  %scevgep35.1.5 = getelementptr i8, i8* %a, i64 7
  %128 = load i8, i8* %scevgep35.1.5, align 1
  %129 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.5 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129)
  %conv35.1.5 = zext i8 %call34.1.5 to i32
  %xor36.1.5 = xor i32 %xor.1.5, %conv35.1.5
  %conv37.1.5 = trunc i32 %xor36.1.5 to i8
  store i8 %conv37.1.5, i8* %scevgep41.1.4, align 1
  %scevgep28.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %123, i64 0, i64 0, i64 1
  %130 = bitcast i8* %scevgep28.1.5 to [11 x [11 x i8]]*
  %scevgep41.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %124, i64 0, i64 1, i64 0
  %131 = bitcast i8* %scevgep41.1.5 to [11 x [11 x i8]]*
  %call16.1.6 = call zeroext i8 (...) @rand()
  store i8 %call16.1.6, i8* %scevgep28.1.5, align 1
  %132 = load i8, i8* %scevgep28.1.5, align 1
  %conv23.1.6 = zext i8 %132 to i32
  %133 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.6 = getelementptr i8, i8* %b, i64 8
  %134 = load i8, i8* %scevgep34.1.6, align 1
  %call28.1.6 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134)
  %conv29.1.6 = zext i8 %call28.1.6 to i32
  %xor.1.6 = xor i32 %conv23.1.6, %conv29.1.6
  %scevgep35.1.6 = getelementptr i8, i8* %a, i64 8
  %135 = load i8, i8* %scevgep35.1.6, align 1
  %136 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.6 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136)
  %conv35.1.6 = zext i8 %call34.1.6 to i32
  %xor36.1.6 = xor i32 %xor.1.6, %conv35.1.6
  %conv37.1.6 = trunc i32 %xor36.1.6 to i8
  store i8 %conv37.1.6, i8* %scevgep41.1.5, align 1
  %scevgep28.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %130, i64 0, i64 0, i64 1
  %137 = bitcast i8* %scevgep28.1.6 to [11 x [11 x i8]]*
  %scevgep41.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %131, i64 0, i64 1, i64 0
  %138 = bitcast i8* %scevgep41.1.6 to [11 x [11 x i8]]*
  %call16.1.7 = call zeroext i8 (...) @rand()
  store i8 %call16.1.7, i8* %scevgep28.1.6, align 1
  %139 = load i8, i8* %scevgep28.1.6, align 1
  %conv23.1.7 = zext i8 %139 to i32
  %140 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.7 = getelementptr i8, i8* %b, i64 9
  %141 = load i8, i8* %scevgep34.1.7, align 1
  %call28.1.7 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141)
  %conv29.1.7 = zext i8 %call28.1.7 to i32
  %xor.1.7 = xor i32 %conv23.1.7, %conv29.1.7
  %scevgep35.1.7 = getelementptr i8, i8* %a, i64 9
  %142 = load i8, i8* %scevgep35.1.7, align 1
  %143 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.7 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143)
  %conv35.1.7 = zext i8 %call34.1.7 to i32
  %xor36.1.7 = xor i32 %xor.1.7, %conv35.1.7
  %conv37.1.7 = trunc i32 %xor36.1.7 to i8
  store i8 %conv37.1.7, i8* %scevgep41.1.6, align 1
  %scevgep28.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %137, i64 0, i64 0, i64 1
  %scevgep41.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %138, i64 0, i64 1, i64 0
  %call16.1.8 = call zeroext i8 (...) @rand()
  store i8 %call16.1.8, i8* %scevgep28.1.7, align 1
  %144 = load i8, i8* %scevgep28.1.7, align 1
  %conv23.1.8 = zext i8 %144 to i32
  %145 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.8 = getelementptr i8, i8* %b, i64 10
  %146 = load i8, i8* %scevgep34.1.8, align 1
  %call28.1.8 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %conv29.1.8 = zext i8 %call28.1.8 to i32
  %xor.1.8 = xor i32 %conv23.1.8, %conv29.1.8
  %scevgep35.1.8 = getelementptr i8, i8* %a, i64 10
  %147 = load i8, i8* %scevgep35.1.8, align 1
  %148 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.8 = call zeroext i8 @mult(i8 zeroext %147, i8 zeroext %148)
  %conv35.1.8 = zext i8 %call34.1.8 to i32
  %xor36.1.8 = xor i32 %xor.1.8, %conv35.1.8
  %conv37.1.8 = trunc i32 %xor36.1.8 to i8
  store i8 %conv37.1.8, i8* %scevgep41.1.7, align 1
  %scevgep26.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %88, i64 0, i64 1, i64 1
  %149 = bitcast i8* %scevgep26.1 to [11 x [11 x i8]]*
  %scevgep39.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %89, i64 0, i64 1, i64 1
  %150 = bitcast i8* %scevgep39.1 to [11 x [11 x i8]]*
  %arrayidx25.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep26.1, align 1
  %151 = load i8, i8* %scevgep26.1, align 1
  %conv23.2 = zext i8 %151 to i32
  %152 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2 = getelementptr i8, i8* %b, i64 3
  %153 = load i8, i8* %scevgep34.2, align 1
  %call28.2 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153)
  %conv29.2 = zext i8 %call28.2 to i32
  %xor.2 = xor i32 %conv23.2, %conv29.2
  %scevgep35.2 = getelementptr i8, i8* %a, i64 3
  %154 = load i8, i8* %scevgep35.2, align 1
  %155 = load i8, i8* %arrayidx33.2, align 1
  %call34.2 = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155)
  %conv35.2 = zext i8 %call34.2 to i32
  %xor36.2 = xor i32 %xor.2, %conv35.2
  %conv37.2 = trunc i32 %xor36.2 to i8
  store i8 %conv37.2, i8* %scevgep39.1, align 1
  %scevgep28.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %149, i64 0, i64 0, i64 1
  %156 = bitcast i8* %scevgep28.2 to [11 x [11 x i8]]*
  %scevgep41.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %150, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep41.2 to [11 x [11 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep28.2, align 1
  %158 = load i8, i8* %scevgep28.2, align 1
  %conv23.2.1 = zext i8 %158 to i32
  %159 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.1 = getelementptr i8, i8* %b, i64 4
  %160 = load i8, i8* %scevgep34.2.1, align 1
  %call28.2.1 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160)
  %conv29.2.1 = zext i8 %call28.2.1 to i32
  %xor.2.1 = xor i32 %conv23.2.1, %conv29.2.1
  %scevgep35.2.1 = getelementptr i8, i8* %a, i64 4
  %161 = load i8, i8* %scevgep35.2.1, align 1
  %162 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.1 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162)
  %conv35.2.1 = zext i8 %call34.2.1 to i32
  %xor36.2.1 = xor i32 %xor.2.1, %conv35.2.1
  %conv37.2.1 = trunc i32 %xor36.2.1 to i8
  store i8 %conv37.2.1, i8* %scevgep41.2, align 1
  %scevgep28.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %156, i64 0, i64 0, i64 1
  %163 = bitcast i8* %scevgep28.2.1 to [11 x [11 x i8]]*
  %scevgep41.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %157, i64 0, i64 1, i64 0
  %164 = bitcast i8* %scevgep41.2.1 to [11 x [11 x i8]]*
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep28.2.1, align 1
  %165 = load i8, i8* %scevgep28.2.1, align 1
  %conv23.2.2 = zext i8 %165 to i32
  %166 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.2 = getelementptr i8, i8* %b, i64 5
  %167 = load i8, i8* %scevgep34.2.2, align 1
  %call28.2.2 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167)
  %conv29.2.2 = zext i8 %call28.2.2 to i32
  %xor.2.2 = xor i32 %conv23.2.2, %conv29.2.2
  %scevgep35.2.2 = getelementptr i8, i8* %a, i64 5
  %168 = load i8, i8* %scevgep35.2.2, align 1
  %169 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.2 = call zeroext i8 @mult(i8 zeroext %168, i8 zeroext %169)
  %conv35.2.2 = zext i8 %call34.2.2 to i32
  %xor36.2.2 = xor i32 %xor.2.2, %conv35.2.2
  %conv37.2.2 = trunc i32 %xor36.2.2 to i8
  store i8 %conv37.2.2, i8* %scevgep41.2.1, align 1
  %scevgep28.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %163, i64 0, i64 0, i64 1
  %170 = bitcast i8* %scevgep28.2.2 to [11 x [11 x i8]]*
  %scevgep41.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %164, i64 0, i64 1, i64 0
  %171 = bitcast i8* %scevgep41.2.2 to [11 x [11 x i8]]*
  %call16.2.3 = call zeroext i8 (...) @rand()
  store i8 %call16.2.3, i8* %scevgep28.2.2, align 1
  %172 = load i8, i8* %scevgep28.2.2, align 1
  %conv23.2.3 = zext i8 %172 to i32
  %173 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.3 = getelementptr i8, i8* %b, i64 6
  %174 = load i8, i8* %scevgep34.2.3, align 1
  %call28.2.3 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174)
  %conv29.2.3 = zext i8 %call28.2.3 to i32
  %xor.2.3 = xor i32 %conv23.2.3, %conv29.2.3
  %scevgep35.2.3 = getelementptr i8, i8* %a, i64 6
  %175 = load i8, i8* %scevgep35.2.3, align 1
  %176 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.3 = call zeroext i8 @mult(i8 zeroext %175, i8 zeroext %176)
  %conv35.2.3 = zext i8 %call34.2.3 to i32
  %xor36.2.3 = xor i32 %xor.2.3, %conv35.2.3
  %conv37.2.3 = trunc i32 %xor36.2.3 to i8
  store i8 %conv37.2.3, i8* %scevgep41.2.2, align 1
  %scevgep28.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %170, i64 0, i64 0, i64 1
  %177 = bitcast i8* %scevgep28.2.3 to [11 x [11 x i8]]*
  %scevgep41.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %171, i64 0, i64 1, i64 0
  %178 = bitcast i8* %scevgep41.2.3 to [11 x [11 x i8]]*
  %call16.2.4 = call zeroext i8 (...) @rand()
  store i8 %call16.2.4, i8* %scevgep28.2.3, align 1
  %179 = load i8, i8* %scevgep28.2.3, align 1
  %conv23.2.4 = zext i8 %179 to i32
  %180 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.4 = getelementptr i8, i8* %b, i64 7
  %181 = load i8, i8* %scevgep34.2.4, align 1
  %call28.2.4 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181)
  %conv29.2.4 = zext i8 %call28.2.4 to i32
  %xor.2.4 = xor i32 %conv23.2.4, %conv29.2.4
  %scevgep35.2.4 = getelementptr i8, i8* %a, i64 7
  %182 = load i8, i8* %scevgep35.2.4, align 1
  %183 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.4 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183)
  %conv35.2.4 = zext i8 %call34.2.4 to i32
  %xor36.2.4 = xor i32 %xor.2.4, %conv35.2.4
  %conv37.2.4 = trunc i32 %xor36.2.4 to i8
  store i8 %conv37.2.4, i8* %scevgep41.2.3, align 1
  %scevgep28.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %177, i64 0, i64 0, i64 1
  %184 = bitcast i8* %scevgep28.2.4 to [11 x [11 x i8]]*
  %scevgep41.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %178, i64 0, i64 1, i64 0
  %185 = bitcast i8* %scevgep41.2.4 to [11 x [11 x i8]]*
  %call16.2.5 = call zeroext i8 (...) @rand()
  store i8 %call16.2.5, i8* %scevgep28.2.4, align 1
  %186 = load i8, i8* %scevgep28.2.4, align 1
  %conv23.2.5 = zext i8 %186 to i32
  %187 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.5 = getelementptr i8, i8* %b, i64 8
  %188 = load i8, i8* %scevgep34.2.5, align 1
  %call28.2.5 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188)
  %conv29.2.5 = zext i8 %call28.2.5 to i32
  %xor.2.5 = xor i32 %conv23.2.5, %conv29.2.5
  %scevgep35.2.5 = getelementptr i8, i8* %a, i64 8
  %189 = load i8, i8* %scevgep35.2.5, align 1
  %190 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.5 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190)
  %conv35.2.5 = zext i8 %call34.2.5 to i32
  %xor36.2.5 = xor i32 %xor.2.5, %conv35.2.5
  %conv37.2.5 = trunc i32 %xor36.2.5 to i8
  store i8 %conv37.2.5, i8* %scevgep41.2.4, align 1
  %scevgep28.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %184, i64 0, i64 0, i64 1
  %191 = bitcast i8* %scevgep28.2.5 to [11 x [11 x i8]]*
  %scevgep41.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %185, i64 0, i64 1, i64 0
  %192 = bitcast i8* %scevgep41.2.5 to [11 x [11 x i8]]*
  %call16.2.6 = call zeroext i8 (...) @rand()
  store i8 %call16.2.6, i8* %scevgep28.2.5, align 1
  %193 = load i8, i8* %scevgep28.2.5, align 1
  %conv23.2.6 = zext i8 %193 to i32
  %194 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.6 = getelementptr i8, i8* %b, i64 9
  %195 = load i8, i8* %scevgep34.2.6, align 1
  %call28.2.6 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %195)
  %conv29.2.6 = zext i8 %call28.2.6 to i32
  %xor.2.6 = xor i32 %conv23.2.6, %conv29.2.6
  %scevgep35.2.6 = getelementptr i8, i8* %a, i64 9
  %196 = load i8, i8* %scevgep35.2.6, align 1
  %197 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.6 = call zeroext i8 @mult(i8 zeroext %196, i8 zeroext %197)
  %conv35.2.6 = zext i8 %call34.2.6 to i32
  %xor36.2.6 = xor i32 %xor.2.6, %conv35.2.6
  %conv37.2.6 = trunc i32 %xor36.2.6 to i8
  store i8 %conv37.2.6, i8* %scevgep41.2.5, align 1
  %scevgep28.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %191, i64 0, i64 0, i64 1
  %scevgep41.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %192, i64 0, i64 1, i64 0
  %call16.2.7 = call zeroext i8 (...) @rand()
  store i8 %call16.2.7, i8* %scevgep28.2.6, align 1
  %198 = load i8, i8* %scevgep28.2.6, align 1
  %conv23.2.7 = zext i8 %198 to i32
  %199 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.7 = getelementptr i8, i8* %b, i64 10
  %200 = load i8, i8* %scevgep34.2.7, align 1
  %call28.2.7 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200)
  %conv29.2.7 = zext i8 %call28.2.7 to i32
  %xor.2.7 = xor i32 %conv23.2.7, %conv29.2.7
  %scevgep35.2.7 = getelementptr i8, i8* %a, i64 10
  %201 = load i8, i8* %scevgep35.2.7, align 1
  %202 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.7 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202)
  %conv35.2.7 = zext i8 %call34.2.7 to i32
  %xor36.2.7 = xor i32 %xor.2.7, %conv35.2.7
  %conv37.2.7 = trunc i32 %xor36.2.7 to i8
  store i8 %conv37.2.7, i8* %scevgep41.2.6, align 1
  %scevgep26.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %149, i64 0, i64 1, i64 1
  %203 = bitcast i8* %scevgep26.2 to [11 x [11 x i8]]*
  %scevgep39.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %150, i64 0, i64 1, i64 1
  %204 = bitcast i8* %scevgep39.2 to [11 x [11 x i8]]*
  %arrayidx25.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep26.2, align 1
  %205 = load i8, i8* %scevgep26.2, align 1
  %conv23.3 = zext i8 %205 to i32
  %206 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3 = getelementptr i8, i8* %b, i64 4
  %207 = load i8, i8* %scevgep34.3, align 1
  %call28.3 = call zeroext i8 @mult(i8 zeroext %206, i8 zeroext %207)
  %conv29.3 = zext i8 %call28.3 to i32
  %xor.3 = xor i32 %conv23.3, %conv29.3
  %scevgep35.3 = getelementptr i8, i8* %a, i64 4
  %208 = load i8, i8* %scevgep35.3, align 1
  %209 = load i8, i8* %arrayidx33.3, align 1
  %call34.3 = call zeroext i8 @mult(i8 zeroext %208, i8 zeroext %209)
  %conv35.3 = zext i8 %call34.3 to i32
  %xor36.3 = xor i32 %xor.3, %conv35.3
  %conv37.3 = trunc i32 %xor36.3 to i8
  store i8 %conv37.3, i8* %scevgep39.2, align 1
  %scevgep28.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %203, i64 0, i64 0, i64 1
  %210 = bitcast i8* %scevgep28.3 to [11 x [11 x i8]]*
  %scevgep41.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %204, i64 0, i64 1, i64 0
  %211 = bitcast i8* %scevgep41.3 to [11 x [11 x i8]]*
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep28.3, align 1
  %212 = load i8, i8* %scevgep28.3, align 1
  %conv23.3.1 = zext i8 %212 to i32
  %213 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.1 = getelementptr i8, i8* %b, i64 5
  %214 = load i8, i8* %scevgep34.3.1, align 1
  %call28.3.1 = call zeroext i8 @mult(i8 zeroext %213, i8 zeroext %214)
  %conv29.3.1 = zext i8 %call28.3.1 to i32
  %xor.3.1 = xor i32 %conv23.3.1, %conv29.3.1
  %scevgep35.3.1 = getelementptr i8, i8* %a, i64 5
  %215 = load i8, i8* %scevgep35.3.1, align 1
  %216 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.1 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %216)
  %conv35.3.1 = zext i8 %call34.3.1 to i32
  %xor36.3.1 = xor i32 %xor.3.1, %conv35.3.1
  %conv37.3.1 = trunc i32 %xor36.3.1 to i8
  store i8 %conv37.3.1, i8* %scevgep41.3, align 1
  %scevgep28.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %210, i64 0, i64 0, i64 1
  %217 = bitcast i8* %scevgep28.3.1 to [11 x [11 x i8]]*
  %scevgep41.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %211, i64 0, i64 1, i64 0
  %218 = bitcast i8* %scevgep41.3.1 to [11 x [11 x i8]]*
  %call16.3.2 = call zeroext i8 (...) @rand()
  store i8 %call16.3.2, i8* %scevgep28.3.1, align 1
  %219 = load i8, i8* %scevgep28.3.1, align 1
  %conv23.3.2 = zext i8 %219 to i32
  %220 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.2 = getelementptr i8, i8* %b, i64 6
  %221 = load i8, i8* %scevgep34.3.2, align 1
  %call28.3.2 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221)
  %conv29.3.2 = zext i8 %call28.3.2 to i32
  %xor.3.2 = xor i32 %conv23.3.2, %conv29.3.2
  %scevgep35.3.2 = getelementptr i8, i8* %a, i64 6
  %222 = load i8, i8* %scevgep35.3.2, align 1
  %223 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.2 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223)
  %conv35.3.2 = zext i8 %call34.3.2 to i32
  %xor36.3.2 = xor i32 %xor.3.2, %conv35.3.2
  %conv37.3.2 = trunc i32 %xor36.3.2 to i8
  store i8 %conv37.3.2, i8* %scevgep41.3.1, align 1
  %scevgep28.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %217, i64 0, i64 0, i64 1
  %224 = bitcast i8* %scevgep28.3.2 to [11 x [11 x i8]]*
  %scevgep41.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %218, i64 0, i64 1, i64 0
  %225 = bitcast i8* %scevgep41.3.2 to [11 x [11 x i8]]*
  %call16.3.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3.3, i8* %scevgep28.3.2, align 1
  %226 = load i8, i8* %scevgep28.3.2, align 1
  %conv23.3.3 = zext i8 %226 to i32
  %227 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.3 = getelementptr i8, i8* %b, i64 7
  %228 = load i8, i8* %scevgep34.3.3, align 1
  %call28.3.3 = call zeroext i8 @mult(i8 zeroext %227, i8 zeroext %228)
  %conv29.3.3 = zext i8 %call28.3.3 to i32
  %xor.3.3 = xor i32 %conv23.3.3, %conv29.3.3
  %scevgep35.3.3 = getelementptr i8, i8* %a, i64 7
  %229 = load i8, i8* %scevgep35.3.3, align 1
  %230 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.3 = call zeroext i8 @mult(i8 zeroext %229, i8 zeroext %230)
  %conv35.3.3 = zext i8 %call34.3.3 to i32
  %xor36.3.3 = xor i32 %xor.3.3, %conv35.3.3
  %conv37.3.3 = trunc i32 %xor36.3.3 to i8
  store i8 %conv37.3.3, i8* %scevgep41.3.2, align 1
  %scevgep28.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %224, i64 0, i64 0, i64 1
  %231 = bitcast i8* %scevgep28.3.3 to [11 x [11 x i8]]*
  %scevgep41.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %225, i64 0, i64 1, i64 0
  %232 = bitcast i8* %scevgep41.3.3 to [11 x [11 x i8]]*
  %call16.3.4 = call zeroext i8 (...) @rand()
  store i8 %call16.3.4, i8* %scevgep28.3.3, align 1
  %233 = load i8, i8* %scevgep28.3.3, align 1
  %conv23.3.4 = zext i8 %233 to i32
  %234 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.4 = getelementptr i8, i8* %b, i64 8
  %235 = load i8, i8* %scevgep34.3.4, align 1
  %call28.3.4 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235)
  %conv29.3.4 = zext i8 %call28.3.4 to i32
  %xor.3.4 = xor i32 %conv23.3.4, %conv29.3.4
  %scevgep35.3.4 = getelementptr i8, i8* %a, i64 8
  %236 = load i8, i8* %scevgep35.3.4, align 1
  %237 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.4 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237)
  %conv35.3.4 = zext i8 %call34.3.4 to i32
  %xor36.3.4 = xor i32 %xor.3.4, %conv35.3.4
  %conv37.3.4 = trunc i32 %xor36.3.4 to i8
  store i8 %conv37.3.4, i8* %scevgep41.3.3, align 1
  %scevgep28.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %231, i64 0, i64 0, i64 1
  %238 = bitcast i8* %scevgep28.3.4 to [11 x [11 x i8]]*
  %scevgep41.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %232, i64 0, i64 1, i64 0
  %239 = bitcast i8* %scevgep41.3.4 to [11 x [11 x i8]]*
  %call16.3.5 = call zeroext i8 (...) @rand()
  store i8 %call16.3.5, i8* %scevgep28.3.4, align 1
  %240 = load i8, i8* %scevgep28.3.4, align 1
  %conv23.3.5 = zext i8 %240 to i32
  %241 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.5 = getelementptr i8, i8* %b, i64 9
  %242 = load i8, i8* %scevgep34.3.5, align 1
  %call28.3.5 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242)
  %conv29.3.5 = zext i8 %call28.3.5 to i32
  %xor.3.5 = xor i32 %conv23.3.5, %conv29.3.5
  %scevgep35.3.5 = getelementptr i8, i8* %a, i64 9
  %243 = load i8, i8* %scevgep35.3.5, align 1
  %244 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.5 = call zeroext i8 @mult(i8 zeroext %243, i8 zeroext %244)
  %conv35.3.5 = zext i8 %call34.3.5 to i32
  %xor36.3.5 = xor i32 %xor.3.5, %conv35.3.5
  %conv37.3.5 = trunc i32 %xor36.3.5 to i8
  store i8 %conv37.3.5, i8* %scevgep41.3.4, align 1
  %scevgep28.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %238, i64 0, i64 0, i64 1
  %scevgep41.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %239, i64 0, i64 1, i64 0
  %call16.3.6 = call zeroext i8 (...) @rand()
  store i8 %call16.3.6, i8* %scevgep28.3.5, align 1
  %245 = load i8, i8* %scevgep28.3.5, align 1
  %conv23.3.6 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.6 = getelementptr i8, i8* %b, i64 10
  %247 = load i8, i8* %scevgep34.3.6, align 1
  %call28.3.6 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247)
  %conv29.3.6 = zext i8 %call28.3.6 to i32
  %xor.3.6 = xor i32 %conv23.3.6, %conv29.3.6
  %scevgep35.3.6 = getelementptr i8, i8* %a, i64 10
  %248 = load i8, i8* %scevgep35.3.6, align 1
  %249 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.6 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249)
  %conv35.3.6 = zext i8 %call34.3.6 to i32
  %xor36.3.6 = xor i32 %xor.3.6, %conv35.3.6
  %conv37.3.6 = trunc i32 %xor36.3.6 to i8
  store i8 %conv37.3.6, i8* %scevgep41.3.5, align 1
  %scevgep26.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %203, i64 0, i64 1, i64 1
  %250 = bitcast i8* %scevgep26.3 to [11 x [11 x i8]]*
  %scevgep39.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %204, i64 0, i64 1, i64 1
  %251 = bitcast i8* %scevgep39.3 to [11 x [11 x i8]]*
  %arrayidx25.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx33.4 = getelementptr inbounds i8, i8* %b, i64 4
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep26.3, align 1
  %252 = load i8, i8* %scevgep26.3, align 1
  %conv23.4 = zext i8 %252 to i32
  %253 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4 = getelementptr i8, i8* %b, i64 5
  %254 = load i8, i8* %scevgep34.4, align 1
  %call28.4 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254)
  %conv29.4 = zext i8 %call28.4 to i32
  %xor.4 = xor i32 %conv23.4, %conv29.4
  %scevgep35.4 = getelementptr i8, i8* %a, i64 5
  %255 = load i8, i8* %scevgep35.4, align 1
  %256 = load i8, i8* %arrayidx33.4, align 1
  %call34.4 = call zeroext i8 @mult(i8 zeroext %255, i8 zeroext %256)
  %conv35.4 = zext i8 %call34.4 to i32
  %xor36.4 = xor i32 %xor.4, %conv35.4
  %conv37.4 = trunc i32 %xor36.4 to i8
  store i8 %conv37.4, i8* %scevgep39.3, align 1
  %scevgep28.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %250, i64 0, i64 0, i64 1
  %257 = bitcast i8* %scevgep28.4 to [11 x [11 x i8]]*
  %scevgep41.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 1, i64 0
  %258 = bitcast i8* %scevgep41.4 to [11 x [11 x i8]]*
  %call16.4.1 = call zeroext i8 (...) @rand()
  store i8 %call16.4.1, i8* %scevgep28.4, align 1
  %259 = load i8, i8* %scevgep28.4, align 1
  %conv23.4.1 = zext i8 %259 to i32
  %260 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.1 = getelementptr i8, i8* %b, i64 6
  %261 = load i8, i8* %scevgep34.4.1, align 1
  %call28.4.1 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261)
  %conv29.4.1 = zext i8 %call28.4.1 to i32
  %xor.4.1 = xor i32 %conv23.4.1, %conv29.4.1
  %scevgep35.4.1 = getelementptr i8, i8* %a, i64 6
  %262 = load i8, i8* %scevgep35.4.1, align 1
  %263 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.1 = call zeroext i8 @mult(i8 zeroext %262, i8 zeroext %263)
  %conv35.4.1 = zext i8 %call34.4.1 to i32
  %xor36.4.1 = xor i32 %xor.4.1, %conv35.4.1
  %conv37.4.1 = trunc i32 %xor36.4.1 to i8
  store i8 %conv37.4.1, i8* %scevgep41.4, align 1
  %scevgep28.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %257, i64 0, i64 0, i64 1
  %264 = bitcast i8* %scevgep28.4.1 to [11 x [11 x i8]]*
  %scevgep41.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %258, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep41.4.1 to [11 x [11 x i8]]*
  %call16.4.2 = call zeroext i8 (...) @rand()
  store i8 %call16.4.2, i8* %scevgep28.4.1, align 1
  %266 = load i8, i8* %scevgep28.4.1, align 1
  %conv23.4.2 = zext i8 %266 to i32
  %267 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.2 = getelementptr i8, i8* %b, i64 7
  %268 = load i8, i8* %scevgep34.4.2, align 1
  %call28.4.2 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268)
  %conv29.4.2 = zext i8 %call28.4.2 to i32
  %xor.4.2 = xor i32 %conv23.4.2, %conv29.4.2
  %scevgep35.4.2 = getelementptr i8, i8* %a, i64 7
  %269 = load i8, i8* %scevgep35.4.2, align 1
  %270 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.2 = call zeroext i8 @mult(i8 zeroext %269, i8 zeroext %270)
  %conv35.4.2 = zext i8 %call34.4.2 to i32
  %xor36.4.2 = xor i32 %xor.4.2, %conv35.4.2
  %conv37.4.2 = trunc i32 %xor36.4.2 to i8
  store i8 %conv37.4.2, i8* %scevgep41.4.1, align 1
  %scevgep28.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %264, i64 0, i64 0, i64 1
  %271 = bitcast i8* %scevgep28.4.2 to [11 x [11 x i8]]*
  %scevgep41.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %265, i64 0, i64 1, i64 0
  %272 = bitcast i8* %scevgep41.4.2 to [11 x [11 x i8]]*
  %call16.4.3 = call zeroext i8 (...) @rand()
  store i8 %call16.4.3, i8* %scevgep28.4.2, align 1
  %273 = load i8, i8* %scevgep28.4.2, align 1
  %conv23.4.3 = zext i8 %273 to i32
  %274 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.3 = getelementptr i8, i8* %b, i64 8
  %275 = load i8, i8* %scevgep34.4.3, align 1
  %call28.4.3 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275)
  %conv29.4.3 = zext i8 %call28.4.3 to i32
  %xor.4.3 = xor i32 %conv23.4.3, %conv29.4.3
  %scevgep35.4.3 = getelementptr i8, i8* %a, i64 8
  %276 = load i8, i8* %scevgep35.4.3, align 1
  %277 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.3 = call zeroext i8 @mult(i8 zeroext %276, i8 zeroext %277)
  %conv35.4.3 = zext i8 %call34.4.3 to i32
  %xor36.4.3 = xor i32 %xor.4.3, %conv35.4.3
  %conv37.4.3 = trunc i32 %xor36.4.3 to i8
  store i8 %conv37.4.3, i8* %scevgep41.4.2, align 1
  %scevgep28.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %271, i64 0, i64 0, i64 1
  %278 = bitcast i8* %scevgep28.4.3 to [11 x [11 x i8]]*
  %scevgep41.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %272, i64 0, i64 1, i64 0
  %279 = bitcast i8* %scevgep41.4.3 to [11 x [11 x i8]]*
  %call16.4.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4.4, i8* %scevgep28.4.3, align 1
  %280 = load i8, i8* %scevgep28.4.3, align 1
  %conv23.4.4 = zext i8 %280 to i32
  %281 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.4 = getelementptr i8, i8* %b, i64 9
  %282 = load i8, i8* %scevgep34.4.4, align 1
  %call28.4.4 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282)
  %conv29.4.4 = zext i8 %call28.4.4 to i32
  %xor.4.4 = xor i32 %conv23.4.4, %conv29.4.4
  %scevgep35.4.4 = getelementptr i8, i8* %a, i64 9
  %283 = load i8, i8* %scevgep35.4.4, align 1
  %284 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.4 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284)
  %conv35.4.4 = zext i8 %call34.4.4 to i32
  %xor36.4.4 = xor i32 %xor.4.4, %conv35.4.4
  %conv37.4.4 = trunc i32 %xor36.4.4 to i8
  store i8 %conv37.4.4, i8* %scevgep41.4.3, align 1
  %scevgep28.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %278, i64 0, i64 0, i64 1
  %scevgep41.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %279, i64 0, i64 1, i64 0
  %call16.4.5 = call zeroext i8 (...) @rand()
  store i8 %call16.4.5, i8* %scevgep28.4.4, align 1
  %285 = load i8, i8* %scevgep28.4.4, align 1
  %conv23.4.5 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4.5 = getelementptr i8, i8* %b, i64 10
  %287 = load i8, i8* %scevgep34.4.5, align 1
  %call28.4.5 = call zeroext i8 @mult(i8 zeroext %286, i8 zeroext %287)
  %conv29.4.5 = zext i8 %call28.4.5 to i32
  %xor.4.5 = xor i32 %conv23.4.5, %conv29.4.5
  %scevgep35.4.5 = getelementptr i8, i8* %a, i64 10
  %288 = load i8, i8* %scevgep35.4.5, align 1
  %289 = load i8, i8* %arrayidx33.4, align 1
  %call34.4.5 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %289)
  %conv35.4.5 = zext i8 %call34.4.5 to i32
  %xor36.4.5 = xor i32 %xor.4.5, %conv35.4.5
  %conv37.4.5 = trunc i32 %xor36.4.5 to i8
  store i8 %conv37.4.5, i8* %scevgep41.4.4, align 1
  %scevgep26.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %250, i64 0, i64 1, i64 1
  %290 = bitcast i8* %scevgep26.4 to [11 x [11 x i8]]*
  %scevgep39.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 1, i64 1
  %291 = bitcast i8* %scevgep39.4 to [11 x [11 x i8]]*
  %arrayidx25.5 = getelementptr inbounds i8, i8* %a, i64 5
  %arrayidx33.5 = getelementptr inbounds i8, i8* %b, i64 5
  %call16.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5, i8* %scevgep26.4, align 1
  %292 = load i8, i8* %scevgep26.4, align 1
  %conv23.5 = zext i8 %292 to i32
  %293 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5 = getelementptr i8, i8* %b, i64 6
  %294 = load i8, i8* %scevgep34.5, align 1
  %call28.5 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %294)
  %conv29.5 = zext i8 %call28.5 to i32
  %xor.5 = xor i32 %conv23.5, %conv29.5
  %scevgep35.5 = getelementptr i8, i8* %a, i64 6
  %295 = load i8, i8* %scevgep35.5, align 1
  %296 = load i8, i8* %arrayidx33.5, align 1
  %call34.5 = call zeroext i8 @mult(i8 zeroext %295, i8 zeroext %296)
  %conv35.5 = zext i8 %call34.5 to i32
  %xor36.5 = xor i32 %xor.5, %conv35.5
  %conv37.5 = trunc i32 %xor36.5 to i8
  store i8 %conv37.5, i8* %scevgep39.4, align 1
  %scevgep28.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %290, i64 0, i64 0, i64 1
  %297 = bitcast i8* %scevgep28.5 to [11 x [11 x i8]]*
  %scevgep41.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %291, i64 0, i64 1, i64 0
  %298 = bitcast i8* %scevgep41.5 to [11 x [11 x i8]]*
  %call16.5.1 = call zeroext i8 (...) @rand()
  store i8 %call16.5.1, i8* %scevgep28.5, align 1
  %299 = load i8, i8* %scevgep28.5, align 1
  %conv23.5.1 = zext i8 %299 to i32
  %300 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.1 = getelementptr i8, i8* %b, i64 7
  %301 = load i8, i8* %scevgep34.5.1, align 1
  %call28.5.1 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301)
  %conv29.5.1 = zext i8 %call28.5.1 to i32
  %xor.5.1 = xor i32 %conv23.5.1, %conv29.5.1
  %scevgep35.5.1 = getelementptr i8, i8* %a, i64 7
  %302 = load i8, i8* %scevgep35.5.1, align 1
  %303 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.1 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303)
  %conv35.5.1 = zext i8 %call34.5.1 to i32
  %xor36.5.1 = xor i32 %xor.5.1, %conv35.5.1
  %conv37.5.1 = trunc i32 %xor36.5.1 to i8
  store i8 %conv37.5.1, i8* %scevgep41.5, align 1
  %scevgep28.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %297, i64 0, i64 0, i64 1
  %304 = bitcast i8* %scevgep28.5.1 to [11 x [11 x i8]]*
  %scevgep41.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %298, i64 0, i64 1, i64 0
  %305 = bitcast i8* %scevgep41.5.1 to [11 x [11 x i8]]*
  %call16.5.2 = call zeroext i8 (...) @rand()
  store i8 %call16.5.2, i8* %scevgep28.5.1, align 1
  %306 = load i8, i8* %scevgep28.5.1, align 1
  %conv23.5.2 = zext i8 %306 to i32
  %307 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.2 = getelementptr i8, i8* %b, i64 8
  %308 = load i8, i8* %scevgep34.5.2, align 1
  %call28.5.2 = call zeroext i8 @mult(i8 zeroext %307, i8 zeroext %308)
  %conv29.5.2 = zext i8 %call28.5.2 to i32
  %xor.5.2 = xor i32 %conv23.5.2, %conv29.5.2
  %scevgep35.5.2 = getelementptr i8, i8* %a, i64 8
  %309 = load i8, i8* %scevgep35.5.2, align 1
  %310 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.2 = call zeroext i8 @mult(i8 zeroext %309, i8 zeroext %310)
  %conv35.5.2 = zext i8 %call34.5.2 to i32
  %xor36.5.2 = xor i32 %xor.5.2, %conv35.5.2
  %conv37.5.2 = trunc i32 %xor36.5.2 to i8
  store i8 %conv37.5.2, i8* %scevgep41.5.1, align 1
  %scevgep28.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %304, i64 0, i64 0, i64 1
  %311 = bitcast i8* %scevgep28.5.2 to [11 x [11 x i8]]*
  %scevgep41.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %305, i64 0, i64 1, i64 0
  %312 = bitcast i8* %scevgep41.5.2 to [11 x [11 x i8]]*
  %call16.5.3 = call zeroext i8 (...) @rand()
  store i8 %call16.5.3, i8* %scevgep28.5.2, align 1
  %313 = load i8, i8* %scevgep28.5.2, align 1
  %conv23.5.3 = zext i8 %313 to i32
  %314 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.3 = getelementptr i8, i8* %b, i64 9
  %315 = load i8, i8* %scevgep34.5.3, align 1
  %call28.5.3 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315)
  %conv29.5.3 = zext i8 %call28.5.3 to i32
  %xor.5.3 = xor i32 %conv23.5.3, %conv29.5.3
  %scevgep35.5.3 = getelementptr i8, i8* %a, i64 9
  %316 = load i8, i8* %scevgep35.5.3, align 1
  %317 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.3 = call zeroext i8 @mult(i8 zeroext %316, i8 zeroext %317)
  %conv35.5.3 = zext i8 %call34.5.3 to i32
  %xor36.5.3 = xor i32 %xor.5.3, %conv35.5.3
  %conv37.5.3 = trunc i32 %xor36.5.3 to i8
  store i8 %conv37.5.3, i8* %scevgep41.5.2, align 1
  %scevgep28.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %311, i64 0, i64 0, i64 1
  %scevgep41.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %312, i64 0, i64 1, i64 0
  %call16.5.4 = call zeroext i8 (...) @rand()
  store i8 %call16.5.4, i8* %scevgep28.5.3, align 1
  %318 = load i8, i8* %scevgep28.5.3, align 1
  %conv23.5.4 = zext i8 %318 to i32
  %319 = load i8, i8* %arrayidx25.5, align 1
  %scevgep34.5.4 = getelementptr i8, i8* %b, i64 10
  %320 = load i8, i8* %scevgep34.5.4, align 1
  %call28.5.4 = call zeroext i8 @mult(i8 zeroext %319, i8 zeroext %320)
  %conv29.5.4 = zext i8 %call28.5.4 to i32
  %xor.5.4 = xor i32 %conv23.5.4, %conv29.5.4
  %scevgep35.5.4 = getelementptr i8, i8* %a, i64 10
  %321 = load i8, i8* %scevgep35.5.4, align 1
  %322 = load i8, i8* %arrayidx33.5, align 1
  %call34.5.4 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322)
  %conv35.5.4 = zext i8 %call34.5.4 to i32
  %xor36.5.4 = xor i32 %xor.5.4, %conv35.5.4
  %conv37.5.4 = trunc i32 %xor36.5.4 to i8
  store i8 %conv37.5.4, i8* %scevgep41.5.3, align 1
  %scevgep26.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %290, i64 0, i64 1, i64 1
  %323 = bitcast i8* %scevgep26.5 to [11 x [11 x i8]]*
  %scevgep39.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %291, i64 0, i64 1, i64 1
  %324 = bitcast i8* %scevgep39.5 to [11 x [11 x i8]]*
  %arrayidx25.6 = getelementptr inbounds i8, i8* %a, i64 6
  %arrayidx33.6 = getelementptr inbounds i8, i8* %b, i64 6
  %call16.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6, i8* %scevgep26.5, align 1
  %325 = load i8, i8* %scevgep26.5, align 1
  %conv23.6 = zext i8 %325 to i32
  %326 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6 = getelementptr i8, i8* %b, i64 7
  %327 = load i8, i8* %scevgep34.6, align 1
  %call28.6 = call zeroext i8 @mult(i8 zeroext %326, i8 zeroext %327)
  %conv29.6 = zext i8 %call28.6 to i32
  %xor.6 = xor i32 %conv23.6, %conv29.6
  %scevgep35.6 = getelementptr i8, i8* %a, i64 7
  %328 = load i8, i8* %scevgep35.6, align 1
  %329 = load i8, i8* %arrayidx33.6, align 1
  %call34.6 = call zeroext i8 @mult(i8 zeroext %328, i8 zeroext %329)
  %conv35.6 = zext i8 %call34.6 to i32
  %xor36.6 = xor i32 %xor.6, %conv35.6
  %conv37.6 = trunc i32 %xor36.6 to i8
  store i8 %conv37.6, i8* %scevgep39.5, align 1
  %scevgep28.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %323, i64 0, i64 0, i64 1
  %330 = bitcast i8* %scevgep28.6 to [11 x [11 x i8]]*
  %scevgep41.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %324, i64 0, i64 1, i64 0
  %331 = bitcast i8* %scevgep41.6 to [11 x [11 x i8]]*
  %call16.6.1 = call zeroext i8 (...) @rand()
  store i8 %call16.6.1, i8* %scevgep28.6, align 1
  %332 = load i8, i8* %scevgep28.6, align 1
  %conv23.6.1 = zext i8 %332 to i32
  %333 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.1 = getelementptr i8, i8* %b, i64 8
  %334 = load i8, i8* %scevgep34.6.1, align 1
  %call28.6.1 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334)
  %conv29.6.1 = zext i8 %call28.6.1 to i32
  %xor.6.1 = xor i32 %conv23.6.1, %conv29.6.1
  %scevgep35.6.1 = getelementptr i8, i8* %a, i64 8
  %335 = load i8, i8* %scevgep35.6.1, align 1
  %336 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.1 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336)
  %conv35.6.1 = zext i8 %call34.6.1 to i32
  %xor36.6.1 = xor i32 %xor.6.1, %conv35.6.1
  %conv37.6.1 = trunc i32 %xor36.6.1 to i8
  store i8 %conv37.6.1, i8* %scevgep41.6, align 1
  %scevgep28.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 1
  %337 = bitcast i8* %scevgep28.6.1 to [11 x [11 x i8]]*
  %scevgep41.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 1, i64 0
  %338 = bitcast i8* %scevgep41.6.1 to [11 x [11 x i8]]*
  %call16.6.2 = call zeroext i8 (...) @rand()
  store i8 %call16.6.2, i8* %scevgep28.6.1, align 1
  %339 = load i8, i8* %scevgep28.6.1, align 1
  %conv23.6.2 = zext i8 %339 to i32
  %340 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.2 = getelementptr i8, i8* %b, i64 9
  %341 = load i8, i8* %scevgep34.6.2, align 1
  %call28.6.2 = call zeroext i8 @mult(i8 zeroext %340, i8 zeroext %341)
  %conv29.6.2 = zext i8 %call28.6.2 to i32
  %xor.6.2 = xor i32 %conv23.6.2, %conv29.6.2
  %scevgep35.6.2 = getelementptr i8, i8* %a, i64 9
  %342 = load i8, i8* %scevgep35.6.2, align 1
  %343 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.2 = call zeroext i8 @mult(i8 zeroext %342, i8 zeroext %343)
  %conv35.6.2 = zext i8 %call34.6.2 to i32
  %xor36.6.2 = xor i32 %xor.6.2, %conv35.6.2
  %conv37.6.2 = trunc i32 %xor36.6.2 to i8
  store i8 %conv37.6.2, i8* %scevgep41.6.1, align 1
  %scevgep28.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %337, i64 0, i64 0, i64 1
  %scevgep41.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %338, i64 0, i64 1, i64 0
  %call16.6.3 = call zeroext i8 (...) @rand()
  store i8 %call16.6.3, i8* %scevgep28.6.2, align 1
  %344 = load i8, i8* %scevgep28.6.2, align 1
  %conv23.6.3 = zext i8 %344 to i32
  %345 = load i8, i8* %arrayidx25.6, align 1
  %scevgep34.6.3 = getelementptr i8, i8* %b, i64 10
  %346 = load i8, i8* %scevgep34.6.3, align 1
  %call28.6.3 = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346)
  %conv29.6.3 = zext i8 %call28.6.3 to i32
  %xor.6.3 = xor i32 %conv23.6.3, %conv29.6.3
  %scevgep35.6.3 = getelementptr i8, i8* %a, i64 10
  %347 = load i8, i8* %scevgep35.6.3, align 1
  %348 = load i8, i8* %arrayidx33.6, align 1
  %call34.6.3 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348)
  %conv35.6.3 = zext i8 %call34.6.3 to i32
  %xor36.6.3 = xor i32 %xor.6.3, %conv35.6.3
  %conv37.6.3 = trunc i32 %xor36.6.3 to i8
  store i8 %conv37.6.3, i8* %scevgep41.6.2, align 1
  %scevgep26.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %323, i64 0, i64 1, i64 1
  %349 = bitcast i8* %scevgep26.6 to [11 x [11 x i8]]*
  %scevgep39.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %324, i64 0, i64 1, i64 1
  %350 = bitcast i8* %scevgep39.6 to [11 x [11 x i8]]*
  %arrayidx25.7 = getelementptr inbounds i8, i8* %a, i64 7
  %arrayidx33.7 = getelementptr inbounds i8, i8* %b, i64 7
  %call16.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7, i8* %scevgep26.6, align 1
  %351 = load i8, i8* %scevgep26.6, align 1
  %conv23.7 = zext i8 %351 to i32
  %352 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7 = getelementptr i8, i8* %b, i64 8
  %353 = load i8, i8* %scevgep34.7, align 1
  %call28.7 = call zeroext i8 @mult(i8 zeroext %352, i8 zeroext %353)
  %conv29.7 = zext i8 %call28.7 to i32
  %xor.7 = xor i32 %conv23.7, %conv29.7
  %scevgep35.7 = getelementptr i8, i8* %a, i64 8
  %354 = load i8, i8* %scevgep35.7, align 1
  %355 = load i8, i8* %arrayidx33.7, align 1
  %call34.7 = call zeroext i8 @mult(i8 zeroext %354, i8 zeroext %355)
  %conv35.7 = zext i8 %call34.7 to i32
  %xor36.7 = xor i32 %xor.7, %conv35.7
  %conv37.7 = trunc i32 %xor36.7 to i8
  store i8 %conv37.7, i8* %scevgep39.6, align 1
  %scevgep28.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %349, i64 0, i64 0, i64 1
  %356 = bitcast i8* %scevgep28.7 to [11 x [11 x i8]]*
  %scevgep41.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %350, i64 0, i64 1, i64 0
  %357 = bitcast i8* %scevgep41.7 to [11 x [11 x i8]]*
  %call16.7.1 = call zeroext i8 (...) @rand()
  store i8 %call16.7.1, i8* %scevgep28.7, align 1
  %358 = load i8, i8* %scevgep28.7, align 1
  %conv23.7.1 = zext i8 %358 to i32
  %359 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.1 = getelementptr i8, i8* %b, i64 9
  %360 = load i8, i8* %scevgep34.7.1, align 1
  %call28.7.1 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360)
  %conv29.7.1 = zext i8 %call28.7.1 to i32
  %xor.7.1 = xor i32 %conv23.7.1, %conv29.7.1
  %scevgep35.7.1 = getelementptr i8, i8* %a, i64 9
  %361 = load i8, i8* %scevgep35.7.1, align 1
  %362 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.1 = call zeroext i8 @mult(i8 zeroext %361, i8 zeroext %362)
  %conv35.7.1 = zext i8 %call34.7.1 to i32
  %xor36.7.1 = xor i32 %xor.7.1, %conv35.7.1
  %conv37.7.1 = trunc i32 %xor36.7.1 to i8
  store i8 %conv37.7.1, i8* %scevgep41.7, align 1
  %scevgep28.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %356, i64 0, i64 0, i64 1
  %scevgep41.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %357, i64 0, i64 1, i64 0
  %call16.7.2 = call zeroext i8 (...) @rand()
  store i8 %call16.7.2, i8* %scevgep28.7.1, align 1
  %363 = load i8, i8* %scevgep28.7.1, align 1
  %conv23.7.2 = zext i8 %363 to i32
  %364 = load i8, i8* %arrayidx25.7, align 1
  %scevgep34.7.2 = getelementptr i8, i8* %b, i64 10
  %365 = load i8, i8* %scevgep34.7.2, align 1
  %call28.7.2 = call zeroext i8 @mult(i8 zeroext %364, i8 zeroext %365)
  %conv29.7.2 = zext i8 %call28.7.2 to i32
  %xor.7.2 = xor i32 %conv23.7.2, %conv29.7.2
  %scevgep35.7.2 = getelementptr i8, i8* %a, i64 10
  %366 = load i8, i8* %scevgep35.7.2, align 1
  %367 = load i8, i8* %arrayidx33.7, align 1
  %call34.7.2 = call zeroext i8 @mult(i8 zeroext %366, i8 zeroext %367)
  %conv35.7.2 = zext i8 %call34.7.2 to i32
  %xor36.7.2 = xor i32 %xor.7.2, %conv35.7.2
  %conv37.7.2 = trunc i32 %xor36.7.2 to i8
  store i8 %conv37.7.2, i8* %scevgep41.7.1, align 1
  %scevgep26.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %349, i64 0, i64 1, i64 1
  %368 = bitcast i8* %scevgep26.7 to [11 x [11 x i8]]*
  %scevgep39.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %350, i64 0, i64 1, i64 1
  %369 = bitcast i8* %scevgep39.7 to [11 x [11 x i8]]*
  %arrayidx25.8 = getelementptr inbounds i8, i8* %a, i64 8
  %arrayidx33.8 = getelementptr inbounds i8, i8* %b, i64 8
  %call16.8 = call zeroext i8 (...) @rand()
  store i8 %call16.8, i8* %scevgep26.7, align 1
  %370 = load i8, i8* %scevgep26.7, align 1
  %conv23.8 = zext i8 %370 to i32
  %371 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8 = getelementptr i8, i8* %b, i64 9
  %372 = load i8, i8* %scevgep34.8, align 1
  %call28.8 = call zeroext i8 @mult(i8 zeroext %371, i8 zeroext %372)
  %conv29.8 = zext i8 %call28.8 to i32
  %xor.8 = xor i32 %conv23.8, %conv29.8
  %scevgep35.8 = getelementptr i8, i8* %a, i64 9
  %373 = load i8, i8* %scevgep35.8, align 1
  %374 = load i8, i8* %arrayidx33.8, align 1
  %call34.8 = call zeroext i8 @mult(i8 zeroext %373, i8 zeroext %374)
  %conv35.8 = zext i8 %call34.8 to i32
  %xor36.8 = xor i32 %xor.8, %conv35.8
  %conv37.8 = trunc i32 %xor36.8 to i8
  store i8 %conv37.8, i8* %scevgep39.7, align 1
  %scevgep28.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %368, i64 0, i64 0, i64 1
  %scevgep41.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %369, i64 0, i64 1, i64 0
  %call16.8.1 = call zeroext i8 (...) @rand()
  store i8 %call16.8.1, i8* %scevgep28.8, align 1
  %375 = load i8, i8* %scevgep28.8, align 1
  %conv23.8.1 = zext i8 %375 to i32
  %376 = load i8, i8* %arrayidx25.8, align 1
  %scevgep34.8.1 = getelementptr i8, i8* %b, i64 10
  %377 = load i8, i8* %scevgep34.8.1, align 1
  %call28.8.1 = call zeroext i8 @mult(i8 zeroext %376, i8 zeroext %377)
  %conv29.8.1 = zext i8 %call28.8.1 to i32
  %xor.8.1 = xor i32 %conv23.8.1, %conv29.8.1
  %scevgep35.8.1 = getelementptr i8, i8* %a, i64 10
  %378 = load i8, i8* %scevgep35.8.1, align 1
  %379 = load i8, i8* %arrayidx33.8, align 1
  %call34.8.1 = call zeroext i8 @mult(i8 zeroext %378, i8 zeroext %379)
  %conv35.8.1 = zext i8 %call34.8.1 to i32
  %xor36.8.1 = xor i32 %xor.8.1, %conv35.8.1
  %conv37.8.1 = trunc i32 %xor36.8.1 to i8
  store i8 %conv37.8.1, i8* %scevgep41.8, align 1
  %scevgep26.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %368, i64 0, i64 1, i64 1
  %scevgep39.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %369, i64 0, i64 1, i64 1
  %arrayidx25.9 = getelementptr inbounds i8, i8* %a, i64 9
  %arrayidx33.9 = getelementptr inbounds i8, i8* %b, i64 9
  %call16.9 = call zeroext i8 (...) @rand()
  store i8 %call16.9, i8* %scevgep26.8, align 1
  %380 = load i8, i8* %scevgep26.8, align 1
  %conv23.9 = zext i8 %380 to i32
  %381 = load i8, i8* %arrayidx25.9, align 1
  %scevgep34.9 = getelementptr i8, i8* %b, i64 10
  %382 = load i8, i8* %scevgep34.9, align 1
  %call28.9 = call zeroext i8 @mult(i8 zeroext %381, i8 zeroext %382)
  %conv29.9 = zext i8 %call28.9 to i32
  %xor.9 = xor i32 %conv23.9, %conv29.9
  %scevgep35.9 = getelementptr i8, i8* %a, i64 10
  %383 = load i8, i8* %scevgep35.9, align 1
  %384 = load i8, i8* %arrayidx33.9, align 1
  %call34.9 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %384)
  %conv35.9 = zext i8 %call34.9 to i32
  %xor36.9 = xor i32 %xor.9, %conv35.9
  %conv37.9 = trunc i32 %xor36.9 to i8
  store i8 %conv37.9, i8* %scevgep39.8, align 1
  %385 = load i8, i8* %a, align 1
  %386 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %386)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  %387 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %387 to i32
  %388 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %388 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 2
  %389 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %389 to i32
  %390 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %390 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 3
  %391 = load i8, i8* %scevgep20.3, align 1
  %conv68.3 = zext i8 %391 to i32
  %392 = load i8, i8* %c, align 1
  %conv71.3 = zext i8 %392 to i32
  %xor72.3 = xor i32 %conv71.3, %conv68.3
  %conv73.3 = trunc i32 %xor72.3 to i8
  store i8 %conv73.3, i8* %c, align 1
  %scevgep20.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 4
  %393 = load i8, i8* %scevgep20.4, align 1
  %conv68.4 = zext i8 %393 to i32
  %394 = load i8, i8* %c, align 1
  %conv71.4 = zext i8 %394 to i32
  %xor72.4 = xor i32 %conv71.4, %conv68.4
  %conv73.4 = trunc i32 %xor72.4 to i8
  store i8 %conv73.4, i8* %c, align 1
  %scevgep20.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 5
  %395 = load i8, i8* %scevgep20.5, align 1
  %conv68.5 = zext i8 %395 to i32
  %396 = load i8, i8* %c, align 1
  %conv71.5 = zext i8 %396 to i32
  %xor72.5 = xor i32 %conv71.5, %conv68.5
  %conv73.5 = trunc i32 %xor72.5 to i8
  store i8 %conv73.5, i8* %c, align 1
  %scevgep20.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 6
  %397 = load i8, i8* %scevgep20.6, align 1
  %conv68.6 = zext i8 %397 to i32
  %398 = load i8, i8* %c, align 1
  %conv71.6 = zext i8 %398 to i32
  %xor72.6 = xor i32 %conv71.6, %conv68.6
  %conv73.6 = trunc i32 %xor72.6 to i8
  store i8 %conv73.6, i8* %c, align 1
  %scevgep20.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 7
  %399 = load i8, i8* %scevgep20.7, align 1
  %conv68.7 = zext i8 %399 to i32
  %400 = load i8, i8* %c, align 1
  %conv71.7 = zext i8 %400 to i32
  %xor72.7 = xor i32 %conv71.7, %conv68.7
  %conv73.7 = trunc i32 %xor72.7 to i8
  store i8 %conv73.7, i8* %c, align 1
  %scevgep20.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 8
  %401 = load i8, i8* %scevgep20.8, align 1
  %conv68.8 = zext i8 %401 to i32
  %402 = load i8, i8* %c, align 1
  %conv71.8 = zext i8 %402 to i32
  %xor72.8 = xor i32 %conv71.8, %conv68.8
  %conv73.8 = trunc i32 %xor72.8 to i8
  store i8 %conv73.8, i8* %c, align 1
  %scevgep20.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 9
  %403 = load i8, i8* %scevgep20.9, align 1
  %conv68.9 = zext i8 %403 to i32
  %404 = load i8, i8* %c, align 1
  %conv71.9 = zext i8 %404 to i32
  %xor72.9 = xor i32 %conv71.9, %conv68.9
  %conv73.9 = trunc i32 %xor72.9 to i8
  store i8 %conv73.9, i8* %c, align 1
  %scevgep20.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 10
  %405 = load i8, i8* %scevgep20.10, align 1
  %conv68.10 = zext i8 %405 to i32
  %406 = load i8, i8* %c, align 1
  %conv71.10 = zext i8 %406 to i32
  %xor72.10 = xor i32 %conv71.10, %conv68.10
  %conv73.10 = trunc i32 %xor72.10 to i8
  store i8 %conv73.10, i8* %c, align 1
  %scevgep19 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %407 = bitcast i8* %scevgep19 to [11 x [11 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %408 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %409 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %408, i8 zeroext %409)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.154 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 0
  %410 = load i8, i8* %scevgep20.154, align 1
  %conv68.155 = zext i8 %410 to i32
  %411 = load i8, i8* %arrayidx70.1, align 1
  %conv71.156 = zext i8 %411 to i32
  %xor72.157 = xor i32 %conv71.156, %conv68.155
  %conv73.158 = trunc i32 %xor72.157 to i8
  store i8 %conv73.158, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 2
  %412 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %412 to i32
  %413 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %413 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep20.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 3
  %414 = load i8, i8* %scevgep20.3.1, align 1
  %conv68.3.1 = zext i8 %414 to i32
  %415 = load i8, i8* %arrayidx70.1, align 1
  %conv71.3.1 = zext i8 %415 to i32
  %xor72.3.1 = xor i32 %conv71.3.1, %conv68.3.1
  %conv73.3.1 = trunc i32 %xor72.3.1 to i8
  store i8 %conv73.3.1, i8* %arrayidx70.1, align 1
  %scevgep20.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 4
  %416 = load i8, i8* %scevgep20.4.1, align 1
  %conv68.4.1 = zext i8 %416 to i32
  %417 = load i8, i8* %arrayidx70.1, align 1
  %conv71.4.1 = zext i8 %417 to i32
  %xor72.4.1 = xor i32 %conv71.4.1, %conv68.4.1
  %conv73.4.1 = trunc i32 %xor72.4.1 to i8
  store i8 %conv73.4.1, i8* %arrayidx70.1, align 1
  %scevgep20.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 5
  %418 = load i8, i8* %scevgep20.5.1, align 1
  %conv68.5.1 = zext i8 %418 to i32
  %419 = load i8, i8* %arrayidx70.1, align 1
  %conv71.5.1 = zext i8 %419 to i32
  %xor72.5.1 = xor i32 %conv71.5.1, %conv68.5.1
  %conv73.5.1 = trunc i32 %xor72.5.1 to i8
  store i8 %conv73.5.1, i8* %arrayidx70.1, align 1
  %scevgep20.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 6
  %420 = load i8, i8* %scevgep20.6.1, align 1
  %conv68.6.1 = zext i8 %420 to i32
  %421 = load i8, i8* %arrayidx70.1, align 1
  %conv71.6.1 = zext i8 %421 to i32
  %xor72.6.1 = xor i32 %conv71.6.1, %conv68.6.1
  %conv73.6.1 = trunc i32 %xor72.6.1 to i8
  store i8 %conv73.6.1, i8* %arrayidx70.1, align 1
  %scevgep20.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 7
  %422 = load i8, i8* %scevgep20.7.1, align 1
  %conv68.7.1 = zext i8 %422 to i32
  %423 = load i8, i8* %arrayidx70.1, align 1
  %conv71.7.1 = zext i8 %423 to i32
  %xor72.7.1 = xor i32 %conv71.7.1, %conv68.7.1
  %conv73.7.1 = trunc i32 %xor72.7.1 to i8
  store i8 %conv73.7.1, i8* %arrayidx70.1, align 1
  %scevgep20.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 8
  %424 = load i8, i8* %scevgep20.8.1, align 1
  %conv68.8.1 = zext i8 %424 to i32
  %425 = load i8, i8* %arrayidx70.1, align 1
  %conv71.8.1 = zext i8 %425 to i32
  %xor72.8.1 = xor i32 %conv71.8.1, %conv68.8.1
  %conv73.8.1 = trunc i32 %xor72.8.1 to i8
  store i8 %conv73.8.1, i8* %arrayidx70.1, align 1
  %scevgep20.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 9
  %426 = load i8, i8* %scevgep20.9.1, align 1
  %conv68.9.1 = zext i8 %426 to i32
  %427 = load i8, i8* %arrayidx70.1, align 1
  %conv71.9.1 = zext i8 %427 to i32
  %xor72.9.1 = xor i32 %conv71.9.1, %conv68.9.1
  %conv73.9.1 = trunc i32 %xor72.9.1 to i8
  store i8 %conv73.9.1, i8* %arrayidx70.1, align 1
  %scevgep20.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 0, i64 10
  %428 = load i8, i8* %scevgep20.10.1, align 1
  %conv68.10.1 = zext i8 %428 to i32
  %429 = load i8, i8* %arrayidx70.1, align 1
  %conv71.10.1 = zext i8 %429 to i32
  %xor72.10.1 = xor i32 %conv71.10.1, %conv68.10.1
  %conv73.10.1 = trunc i32 %xor72.10.1 to i8
  store i8 %conv73.10.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %407, i64 0, i64 1, i64 0
  %430 = bitcast i8* %scevgep19.1 to [11 x [11 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %431 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %432 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.264 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 0
  %433 = load i8, i8* %scevgep20.264, align 1
  %conv68.265 = zext i8 %433 to i32
  %434 = load i8, i8* %arrayidx70.2, align 1
  %conv71.266 = zext i8 %434 to i32
  %xor72.267 = xor i32 %conv71.266, %conv68.265
  %conv73.268 = trunc i32 %xor72.267 to i8
  store i8 %conv73.268, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 1
  %435 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %435 to i32
  %436 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %436 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %scevgep20.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 3
  %437 = load i8, i8* %scevgep20.3.2, align 1
  %conv68.3.2 = zext i8 %437 to i32
  %438 = load i8, i8* %arrayidx70.2, align 1
  %conv71.3.2 = zext i8 %438 to i32
  %xor72.3.2 = xor i32 %conv71.3.2, %conv68.3.2
  %conv73.3.2 = trunc i32 %xor72.3.2 to i8
  store i8 %conv73.3.2, i8* %arrayidx70.2, align 1
  %scevgep20.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 4
  %439 = load i8, i8* %scevgep20.4.2, align 1
  %conv68.4.2 = zext i8 %439 to i32
  %440 = load i8, i8* %arrayidx70.2, align 1
  %conv71.4.2 = zext i8 %440 to i32
  %xor72.4.2 = xor i32 %conv71.4.2, %conv68.4.2
  %conv73.4.2 = trunc i32 %xor72.4.2 to i8
  store i8 %conv73.4.2, i8* %arrayidx70.2, align 1
  %scevgep20.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 5
  %441 = load i8, i8* %scevgep20.5.2, align 1
  %conv68.5.2 = zext i8 %441 to i32
  %442 = load i8, i8* %arrayidx70.2, align 1
  %conv71.5.2 = zext i8 %442 to i32
  %xor72.5.2 = xor i32 %conv71.5.2, %conv68.5.2
  %conv73.5.2 = trunc i32 %xor72.5.2 to i8
  store i8 %conv73.5.2, i8* %arrayidx70.2, align 1
  %scevgep20.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 6
  %443 = load i8, i8* %scevgep20.6.2, align 1
  %conv68.6.2 = zext i8 %443 to i32
  %444 = load i8, i8* %arrayidx70.2, align 1
  %conv71.6.2 = zext i8 %444 to i32
  %xor72.6.2 = xor i32 %conv71.6.2, %conv68.6.2
  %conv73.6.2 = trunc i32 %xor72.6.2 to i8
  store i8 %conv73.6.2, i8* %arrayidx70.2, align 1
  %scevgep20.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 7
  %445 = load i8, i8* %scevgep20.7.2, align 1
  %conv68.7.2 = zext i8 %445 to i32
  %446 = load i8, i8* %arrayidx70.2, align 1
  %conv71.7.2 = zext i8 %446 to i32
  %xor72.7.2 = xor i32 %conv71.7.2, %conv68.7.2
  %conv73.7.2 = trunc i32 %xor72.7.2 to i8
  store i8 %conv73.7.2, i8* %arrayidx70.2, align 1
  %scevgep20.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 8
  %447 = load i8, i8* %scevgep20.8.2, align 1
  %conv68.8.2 = zext i8 %447 to i32
  %448 = load i8, i8* %arrayidx70.2, align 1
  %conv71.8.2 = zext i8 %448 to i32
  %xor72.8.2 = xor i32 %conv71.8.2, %conv68.8.2
  %conv73.8.2 = trunc i32 %xor72.8.2 to i8
  store i8 %conv73.8.2, i8* %arrayidx70.2, align 1
  %scevgep20.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 9
  %449 = load i8, i8* %scevgep20.9.2, align 1
  %conv68.9.2 = zext i8 %449 to i32
  %450 = load i8, i8* %arrayidx70.2, align 1
  %conv71.9.2 = zext i8 %450 to i32
  %xor72.9.2 = xor i32 %conv71.9.2, %conv68.9.2
  %conv73.9.2 = trunc i32 %xor72.9.2 to i8
  store i8 %conv73.9.2, i8* %arrayidx70.2, align 1
  %scevgep20.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 10
  %451 = load i8, i8* %scevgep20.10.2, align 1
  %conv68.10.2 = zext i8 %451 to i32
  %452 = load i8, i8* %arrayidx70.2, align 1
  %conv71.10.2 = zext i8 %452 to i32
  %xor72.10.2 = xor i32 %conv71.10.2, %conv68.10.2
  %conv73.10.2 = trunc i32 %xor72.10.2 to i8
  store i8 %conv73.10.2, i8* %arrayidx70.2, align 1
  %scevgep19.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 1, i64 0
  %453 = bitcast i8* %scevgep19.2 to [11 x [11 x i8]]*
  %arrayidx51.3 = getelementptr inbounds i8, i8* %a, i64 3
  %454 = load i8, i8* %arrayidx51.3, align 1
  %arrayidx53.3 = getelementptr inbounds i8, i8* %b, i64 3
  %455 = load i8, i8* %arrayidx53.3, align 1
  %call54.3 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455)
  %arrayidx56.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call54.3, i8* %arrayidx56.3, align 1
  %arrayidx70.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.374 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 0
  %456 = load i8, i8* %scevgep20.374, align 1
  %conv68.375 = zext i8 %456 to i32
  %457 = load i8, i8* %arrayidx70.3, align 1
  %conv71.376 = zext i8 %457 to i32
  %xor72.377 = xor i32 %conv71.376, %conv68.375
  %conv73.378 = trunc i32 %xor72.377 to i8
  store i8 %conv73.378, i8* %arrayidx70.3, align 1
  %scevgep20.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 1
  %458 = load i8, i8* %scevgep20.1.3, align 1
  %conv68.1.3 = zext i8 %458 to i32
  %459 = load i8, i8* %arrayidx70.3, align 1
  %conv71.1.3 = zext i8 %459 to i32
  %xor72.1.3 = xor i32 %conv71.1.3, %conv68.1.3
  %conv73.1.3 = trunc i32 %xor72.1.3 to i8
  store i8 %conv73.1.3, i8* %arrayidx70.3, align 1
  %scevgep20.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 2
  %460 = load i8, i8* %scevgep20.2.3, align 1
  %conv68.2.3 = zext i8 %460 to i32
  %461 = load i8, i8* %arrayidx70.3, align 1
  %conv71.2.3 = zext i8 %461 to i32
  %xor72.2.3 = xor i32 %conv71.2.3, %conv68.2.3
  %conv73.2.3 = trunc i32 %xor72.2.3 to i8
  store i8 %conv73.2.3, i8* %arrayidx70.3, align 1
  %scevgep20.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 4
  %462 = load i8, i8* %scevgep20.4.3, align 1
  %conv68.4.3 = zext i8 %462 to i32
  %463 = load i8, i8* %arrayidx70.3, align 1
  %conv71.4.3 = zext i8 %463 to i32
  %xor72.4.3 = xor i32 %conv71.4.3, %conv68.4.3
  %conv73.4.3 = trunc i32 %xor72.4.3 to i8
  store i8 %conv73.4.3, i8* %arrayidx70.3, align 1
  %scevgep20.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 5
  %464 = load i8, i8* %scevgep20.5.3, align 1
  %conv68.5.3 = zext i8 %464 to i32
  %465 = load i8, i8* %arrayidx70.3, align 1
  %conv71.5.3 = zext i8 %465 to i32
  %xor72.5.3 = xor i32 %conv71.5.3, %conv68.5.3
  %conv73.5.3 = trunc i32 %xor72.5.3 to i8
  store i8 %conv73.5.3, i8* %arrayidx70.3, align 1
  %scevgep20.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 6
  %466 = load i8, i8* %scevgep20.6.3, align 1
  %conv68.6.3 = zext i8 %466 to i32
  %467 = load i8, i8* %arrayidx70.3, align 1
  %conv71.6.3 = zext i8 %467 to i32
  %xor72.6.3 = xor i32 %conv71.6.3, %conv68.6.3
  %conv73.6.3 = trunc i32 %xor72.6.3 to i8
  store i8 %conv73.6.3, i8* %arrayidx70.3, align 1
  %scevgep20.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 7
  %468 = load i8, i8* %scevgep20.7.3, align 1
  %conv68.7.3 = zext i8 %468 to i32
  %469 = load i8, i8* %arrayidx70.3, align 1
  %conv71.7.3 = zext i8 %469 to i32
  %xor72.7.3 = xor i32 %conv71.7.3, %conv68.7.3
  %conv73.7.3 = trunc i32 %xor72.7.3 to i8
  store i8 %conv73.7.3, i8* %arrayidx70.3, align 1
  %scevgep20.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 8
  %470 = load i8, i8* %scevgep20.8.3, align 1
  %conv68.8.3 = zext i8 %470 to i32
  %471 = load i8, i8* %arrayidx70.3, align 1
  %conv71.8.3 = zext i8 %471 to i32
  %xor72.8.3 = xor i32 %conv71.8.3, %conv68.8.3
  %conv73.8.3 = trunc i32 %xor72.8.3 to i8
  store i8 %conv73.8.3, i8* %arrayidx70.3, align 1
  %scevgep20.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 9
  %472 = load i8, i8* %scevgep20.9.3, align 1
  %conv68.9.3 = zext i8 %472 to i32
  %473 = load i8, i8* %arrayidx70.3, align 1
  %conv71.9.3 = zext i8 %473 to i32
  %xor72.9.3 = xor i32 %conv71.9.3, %conv68.9.3
  %conv73.9.3 = trunc i32 %xor72.9.3 to i8
  store i8 %conv73.9.3, i8* %arrayidx70.3, align 1
  %scevgep20.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 0, i64 10
  %474 = load i8, i8* %scevgep20.10.3, align 1
  %conv68.10.3 = zext i8 %474 to i32
  %475 = load i8, i8* %arrayidx70.3, align 1
  %conv71.10.3 = zext i8 %475 to i32
  %xor72.10.3 = xor i32 %conv71.10.3, %conv68.10.3
  %conv73.10.3 = trunc i32 %xor72.10.3 to i8
  store i8 %conv73.10.3, i8* %arrayidx70.3, align 1
  %scevgep19.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %453, i64 0, i64 1, i64 0
  %476 = bitcast i8* %scevgep19.3 to [11 x [11 x i8]]*
  %arrayidx51.4 = getelementptr inbounds i8, i8* %a, i64 4
  %477 = load i8, i8* %arrayidx51.4, align 1
  %arrayidx53.4 = getelementptr inbounds i8, i8* %b, i64 4
  %478 = load i8, i8* %arrayidx53.4, align 1
  %call54.4 = call zeroext i8 @mult(i8 zeroext %477, i8 zeroext %478)
  %arrayidx56.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call54.4, i8* %arrayidx56.4, align 1
  %arrayidx70.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep20.484 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 0
  %479 = load i8, i8* %scevgep20.484, align 1
  %conv68.485 = zext i8 %479 to i32
  %480 = load i8, i8* %arrayidx70.4, align 1
  %conv71.486 = zext i8 %480 to i32
  %xor72.487 = xor i32 %conv71.486, %conv68.485
  %conv73.488 = trunc i32 %xor72.487 to i8
  store i8 %conv73.488, i8* %arrayidx70.4, align 1
  %scevgep20.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 1
  %481 = load i8, i8* %scevgep20.1.4, align 1
  %conv68.1.4 = zext i8 %481 to i32
  %482 = load i8, i8* %arrayidx70.4, align 1
  %conv71.1.4 = zext i8 %482 to i32
  %xor72.1.4 = xor i32 %conv71.1.4, %conv68.1.4
  %conv73.1.4 = trunc i32 %xor72.1.4 to i8
  store i8 %conv73.1.4, i8* %arrayidx70.4, align 1
  %scevgep20.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 2
  %483 = load i8, i8* %scevgep20.2.4, align 1
  %conv68.2.4 = zext i8 %483 to i32
  %484 = load i8, i8* %arrayidx70.4, align 1
  %conv71.2.4 = zext i8 %484 to i32
  %xor72.2.4 = xor i32 %conv71.2.4, %conv68.2.4
  %conv73.2.4 = trunc i32 %xor72.2.4 to i8
  store i8 %conv73.2.4, i8* %arrayidx70.4, align 1
  %scevgep20.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 3
  %485 = load i8, i8* %scevgep20.3.4, align 1
  %conv68.3.4 = zext i8 %485 to i32
  %486 = load i8, i8* %arrayidx70.4, align 1
  %conv71.3.4 = zext i8 %486 to i32
  %xor72.3.4 = xor i32 %conv71.3.4, %conv68.3.4
  %conv73.3.4 = trunc i32 %xor72.3.4 to i8
  store i8 %conv73.3.4, i8* %arrayidx70.4, align 1
  %scevgep20.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 5
  %487 = load i8, i8* %scevgep20.5.4, align 1
  %conv68.5.4 = zext i8 %487 to i32
  %488 = load i8, i8* %arrayidx70.4, align 1
  %conv71.5.4 = zext i8 %488 to i32
  %xor72.5.4 = xor i32 %conv71.5.4, %conv68.5.4
  %conv73.5.4 = trunc i32 %xor72.5.4 to i8
  store i8 %conv73.5.4, i8* %arrayidx70.4, align 1
  %scevgep20.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 6
  %489 = load i8, i8* %scevgep20.6.4, align 1
  %conv68.6.4 = zext i8 %489 to i32
  %490 = load i8, i8* %arrayidx70.4, align 1
  %conv71.6.4 = zext i8 %490 to i32
  %xor72.6.4 = xor i32 %conv71.6.4, %conv68.6.4
  %conv73.6.4 = trunc i32 %xor72.6.4 to i8
  store i8 %conv73.6.4, i8* %arrayidx70.4, align 1
  %scevgep20.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 7
  %491 = load i8, i8* %scevgep20.7.4, align 1
  %conv68.7.4 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx70.4, align 1
  %conv71.7.4 = zext i8 %492 to i32
  %xor72.7.4 = xor i32 %conv71.7.4, %conv68.7.4
  %conv73.7.4 = trunc i32 %xor72.7.4 to i8
  store i8 %conv73.7.4, i8* %arrayidx70.4, align 1
  %scevgep20.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 8
  %493 = load i8, i8* %scevgep20.8.4, align 1
  %conv68.8.4 = zext i8 %493 to i32
  %494 = load i8, i8* %arrayidx70.4, align 1
  %conv71.8.4 = zext i8 %494 to i32
  %xor72.8.4 = xor i32 %conv71.8.4, %conv68.8.4
  %conv73.8.4 = trunc i32 %xor72.8.4 to i8
  store i8 %conv73.8.4, i8* %arrayidx70.4, align 1
  %scevgep20.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 9
  %495 = load i8, i8* %scevgep20.9.4, align 1
  %conv68.9.4 = zext i8 %495 to i32
  %496 = load i8, i8* %arrayidx70.4, align 1
  %conv71.9.4 = zext i8 %496 to i32
  %xor72.9.4 = xor i32 %conv71.9.4, %conv68.9.4
  %conv73.9.4 = trunc i32 %xor72.9.4 to i8
  store i8 %conv73.9.4, i8* %arrayidx70.4, align 1
  %scevgep20.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 0, i64 10
  %497 = load i8, i8* %scevgep20.10.4, align 1
  %conv68.10.4 = zext i8 %497 to i32
  %498 = load i8, i8* %arrayidx70.4, align 1
  %conv71.10.4 = zext i8 %498 to i32
  %xor72.10.4 = xor i32 %conv71.10.4, %conv68.10.4
  %conv73.10.4 = trunc i32 %xor72.10.4 to i8
  store i8 %conv73.10.4, i8* %arrayidx70.4, align 1
  %scevgep19.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %476, i64 0, i64 1, i64 0
  %499 = bitcast i8* %scevgep19.4 to [11 x [11 x i8]]*
  %arrayidx51.5 = getelementptr inbounds i8, i8* %a, i64 5
  %500 = load i8, i8* %arrayidx51.5, align 1
  %arrayidx53.5 = getelementptr inbounds i8, i8* %b, i64 5
  %501 = load i8, i8* %arrayidx53.5, align 1
  %call54.5 = call zeroext i8 @mult(i8 zeroext %500, i8 zeroext %501)
  %arrayidx56.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call54.5, i8* %arrayidx56.5, align 1
  %arrayidx70.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep20.594 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 0
  %502 = load i8, i8* %scevgep20.594, align 1
  %conv68.595 = zext i8 %502 to i32
  %503 = load i8, i8* %arrayidx70.5, align 1
  %conv71.596 = zext i8 %503 to i32
  %xor72.597 = xor i32 %conv71.596, %conv68.595
  %conv73.598 = trunc i32 %xor72.597 to i8
  store i8 %conv73.598, i8* %arrayidx70.5, align 1
  %scevgep20.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 1
  %504 = load i8, i8* %scevgep20.1.5, align 1
  %conv68.1.5 = zext i8 %504 to i32
  %505 = load i8, i8* %arrayidx70.5, align 1
  %conv71.1.5 = zext i8 %505 to i32
  %xor72.1.5 = xor i32 %conv71.1.5, %conv68.1.5
  %conv73.1.5 = trunc i32 %xor72.1.5 to i8
  store i8 %conv73.1.5, i8* %arrayidx70.5, align 1
  %scevgep20.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 2
  %506 = load i8, i8* %scevgep20.2.5, align 1
  %conv68.2.5 = zext i8 %506 to i32
  %507 = load i8, i8* %arrayidx70.5, align 1
  %conv71.2.5 = zext i8 %507 to i32
  %xor72.2.5 = xor i32 %conv71.2.5, %conv68.2.5
  %conv73.2.5 = trunc i32 %xor72.2.5 to i8
  store i8 %conv73.2.5, i8* %arrayidx70.5, align 1
  %scevgep20.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 3
  %508 = load i8, i8* %scevgep20.3.5, align 1
  %conv68.3.5 = zext i8 %508 to i32
  %509 = load i8, i8* %arrayidx70.5, align 1
  %conv71.3.5 = zext i8 %509 to i32
  %xor72.3.5 = xor i32 %conv71.3.5, %conv68.3.5
  %conv73.3.5 = trunc i32 %xor72.3.5 to i8
  store i8 %conv73.3.5, i8* %arrayidx70.5, align 1
  %scevgep20.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 4
  %510 = load i8, i8* %scevgep20.4.5, align 1
  %conv68.4.5 = zext i8 %510 to i32
  %511 = load i8, i8* %arrayidx70.5, align 1
  %conv71.4.5 = zext i8 %511 to i32
  %xor72.4.5 = xor i32 %conv71.4.5, %conv68.4.5
  %conv73.4.5 = trunc i32 %xor72.4.5 to i8
  store i8 %conv73.4.5, i8* %arrayidx70.5, align 1
  %scevgep20.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 6
  %512 = load i8, i8* %scevgep20.6.5, align 1
  %conv68.6.5 = zext i8 %512 to i32
  %513 = load i8, i8* %arrayidx70.5, align 1
  %conv71.6.5 = zext i8 %513 to i32
  %xor72.6.5 = xor i32 %conv71.6.5, %conv68.6.5
  %conv73.6.5 = trunc i32 %xor72.6.5 to i8
  store i8 %conv73.6.5, i8* %arrayidx70.5, align 1
  %scevgep20.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 7
  %514 = load i8, i8* %scevgep20.7.5, align 1
  %conv68.7.5 = zext i8 %514 to i32
  %515 = load i8, i8* %arrayidx70.5, align 1
  %conv71.7.5 = zext i8 %515 to i32
  %xor72.7.5 = xor i32 %conv71.7.5, %conv68.7.5
  %conv73.7.5 = trunc i32 %xor72.7.5 to i8
  store i8 %conv73.7.5, i8* %arrayidx70.5, align 1
  %scevgep20.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 8
  %516 = load i8, i8* %scevgep20.8.5, align 1
  %conv68.8.5 = zext i8 %516 to i32
  %517 = load i8, i8* %arrayidx70.5, align 1
  %conv71.8.5 = zext i8 %517 to i32
  %xor72.8.5 = xor i32 %conv71.8.5, %conv68.8.5
  %conv73.8.5 = trunc i32 %xor72.8.5 to i8
  store i8 %conv73.8.5, i8* %arrayidx70.5, align 1
  %scevgep20.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 9
  %518 = load i8, i8* %scevgep20.9.5, align 1
  %conv68.9.5 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx70.5, align 1
  %conv71.9.5 = zext i8 %519 to i32
  %xor72.9.5 = xor i32 %conv71.9.5, %conv68.9.5
  %conv73.9.5 = trunc i32 %xor72.9.5 to i8
  store i8 %conv73.9.5, i8* %arrayidx70.5, align 1
  %scevgep20.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 0, i64 10
  %520 = load i8, i8* %scevgep20.10.5, align 1
  %conv68.10.5 = zext i8 %520 to i32
  %521 = load i8, i8* %arrayidx70.5, align 1
  %conv71.10.5 = zext i8 %521 to i32
  %xor72.10.5 = xor i32 %conv71.10.5, %conv68.10.5
  %conv73.10.5 = trunc i32 %xor72.10.5 to i8
  store i8 %conv73.10.5, i8* %arrayidx70.5, align 1
  %scevgep19.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %499, i64 0, i64 1, i64 0
  %522 = bitcast i8* %scevgep19.5 to [11 x [11 x i8]]*
  %arrayidx51.6 = getelementptr inbounds i8, i8* %a, i64 6
  %523 = load i8, i8* %arrayidx51.6, align 1
  %arrayidx53.6 = getelementptr inbounds i8, i8* %b, i64 6
  %524 = load i8, i8* %arrayidx53.6, align 1
  %call54.6 = call zeroext i8 @mult(i8 zeroext %523, i8 zeroext %524)
  %arrayidx56.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %call54.6, i8* %arrayidx56.6, align 1
  %arrayidx70.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep20.6104 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 0
  %525 = load i8, i8* %scevgep20.6104, align 1
  %conv68.6105 = zext i8 %525 to i32
  %526 = load i8, i8* %arrayidx70.6, align 1
  %conv71.6106 = zext i8 %526 to i32
  %xor72.6107 = xor i32 %conv71.6106, %conv68.6105
  %conv73.6108 = trunc i32 %xor72.6107 to i8
  store i8 %conv73.6108, i8* %arrayidx70.6, align 1
  %scevgep20.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 1
  %527 = load i8, i8* %scevgep20.1.6, align 1
  %conv68.1.6 = zext i8 %527 to i32
  %528 = load i8, i8* %arrayidx70.6, align 1
  %conv71.1.6 = zext i8 %528 to i32
  %xor72.1.6 = xor i32 %conv71.1.6, %conv68.1.6
  %conv73.1.6 = trunc i32 %xor72.1.6 to i8
  store i8 %conv73.1.6, i8* %arrayidx70.6, align 1
  %scevgep20.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 2
  %529 = load i8, i8* %scevgep20.2.6, align 1
  %conv68.2.6 = zext i8 %529 to i32
  %530 = load i8, i8* %arrayidx70.6, align 1
  %conv71.2.6 = zext i8 %530 to i32
  %xor72.2.6 = xor i32 %conv71.2.6, %conv68.2.6
  %conv73.2.6 = trunc i32 %xor72.2.6 to i8
  store i8 %conv73.2.6, i8* %arrayidx70.6, align 1
  %scevgep20.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 3
  %531 = load i8, i8* %scevgep20.3.6, align 1
  %conv68.3.6 = zext i8 %531 to i32
  %532 = load i8, i8* %arrayidx70.6, align 1
  %conv71.3.6 = zext i8 %532 to i32
  %xor72.3.6 = xor i32 %conv71.3.6, %conv68.3.6
  %conv73.3.6 = trunc i32 %xor72.3.6 to i8
  store i8 %conv73.3.6, i8* %arrayidx70.6, align 1
  %scevgep20.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 4
  %533 = load i8, i8* %scevgep20.4.6, align 1
  %conv68.4.6 = zext i8 %533 to i32
  %534 = load i8, i8* %arrayidx70.6, align 1
  %conv71.4.6 = zext i8 %534 to i32
  %xor72.4.6 = xor i32 %conv71.4.6, %conv68.4.6
  %conv73.4.6 = trunc i32 %xor72.4.6 to i8
  store i8 %conv73.4.6, i8* %arrayidx70.6, align 1
  %scevgep20.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 5
  %535 = load i8, i8* %scevgep20.5.6, align 1
  %conv68.5.6 = zext i8 %535 to i32
  %536 = load i8, i8* %arrayidx70.6, align 1
  %conv71.5.6 = zext i8 %536 to i32
  %xor72.5.6 = xor i32 %conv71.5.6, %conv68.5.6
  %conv73.5.6 = trunc i32 %xor72.5.6 to i8
  store i8 %conv73.5.6, i8* %arrayidx70.6, align 1
  %scevgep20.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 7
  %537 = load i8, i8* %scevgep20.7.6, align 1
  %conv68.7.6 = zext i8 %537 to i32
  %538 = load i8, i8* %arrayidx70.6, align 1
  %conv71.7.6 = zext i8 %538 to i32
  %xor72.7.6 = xor i32 %conv71.7.6, %conv68.7.6
  %conv73.7.6 = trunc i32 %xor72.7.6 to i8
  store i8 %conv73.7.6, i8* %arrayidx70.6, align 1
  %scevgep20.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 8
  %539 = load i8, i8* %scevgep20.8.6, align 1
  %conv68.8.6 = zext i8 %539 to i32
  %540 = load i8, i8* %arrayidx70.6, align 1
  %conv71.8.6 = zext i8 %540 to i32
  %xor72.8.6 = xor i32 %conv71.8.6, %conv68.8.6
  %conv73.8.6 = trunc i32 %xor72.8.6 to i8
  store i8 %conv73.8.6, i8* %arrayidx70.6, align 1
  %scevgep20.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 9
  %541 = load i8, i8* %scevgep20.9.6, align 1
  %conv68.9.6 = zext i8 %541 to i32
  %542 = load i8, i8* %arrayidx70.6, align 1
  %conv71.9.6 = zext i8 %542 to i32
  %xor72.9.6 = xor i32 %conv71.9.6, %conv68.9.6
  %conv73.9.6 = trunc i32 %xor72.9.6 to i8
  store i8 %conv73.9.6, i8* %arrayidx70.6, align 1
  %scevgep20.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 0, i64 10
  %543 = load i8, i8* %scevgep20.10.6, align 1
  %conv68.10.6 = zext i8 %543 to i32
  %544 = load i8, i8* %arrayidx70.6, align 1
  %conv71.10.6 = zext i8 %544 to i32
  %xor72.10.6 = xor i32 %conv71.10.6, %conv68.10.6
  %conv73.10.6 = trunc i32 %xor72.10.6 to i8
  store i8 %conv73.10.6, i8* %arrayidx70.6, align 1
  %scevgep19.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 1, i64 0
  %545 = bitcast i8* %scevgep19.6 to [11 x [11 x i8]]*
  %arrayidx51.7 = getelementptr inbounds i8, i8* %a, i64 7
  %546 = load i8, i8* %arrayidx51.7, align 1
  %arrayidx53.7 = getelementptr inbounds i8, i8* %b, i64 7
  %547 = load i8, i8* %arrayidx53.7, align 1
  %call54.7 = call zeroext i8 @mult(i8 zeroext %546, i8 zeroext %547)
  %arrayidx56.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %call54.7, i8* %arrayidx56.7, align 1
  %arrayidx70.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep20.7114 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 0
  %548 = load i8, i8* %scevgep20.7114, align 1
  %conv68.7115 = zext i8 %548 to i32
  %549 = load i8, i8* %arrayidx70.7, align 1
  %conv71.7116 = zext i8 %549 to i32
  %xor72.7117 = xor i32 %conv71.7116, %conv68.7115
  %conv73.7118 = trunc i32 %xor72.7117 to i8
  store i8 %conv73.7118, i8* %arrayidx70.7, align 1
  %scevgep20.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 1
  %550 = load i8, i8* %scevgep20.1.7, align 1
  %conv68.1.7 = zext i8 %550 to i32
  %551 = load i8, i8* %arrayidx70.7, align 1
  %conv71.1.7 = zext i8 %551 to i32
  %xor72.1.7 = xor i32 %conv71.1.7, %conv68.1.7
  %conv73.1.7 = trunc i32 %xor72.1.7 to i8
  store i8 %conv73.1.7, i8* %arrayidx70.7, align 1
  %scevgep20.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 2
  %552 = load i8, i8* %scevgep20.2.7, align 1
  %conv68.2.7 = zext i8 %552 to i32
  %553 = load i8, i8* %arrayidx70.7, align 1
  %conv71.2.7 = zext i8 %553 to i32
  %xor72.2.7 = xor i32 %conv71.2.7, %conv68.2.7
  %conv73.2.7 = trunc i32 %xor72.2.7 to i8
  store i8 %conv73.2.7, i8* %arrayidx70.7, align 1
  %scevgep20.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 3
  %554 = load i8, i8* %scevgep20.3.7, align 1
  %conv68.3.7 = zext i8 %554 to i32
  %555 = load i8, i8* %arrayidx70.7, align 1
  %conv71.3.7 = zext i8 %555 to i32
  %xor72.3.7 = xor i32 %conv71.3.7, %conv68.3.7
  %conv73.3.7 = trunc i32 %xor72.3.7 to i8
  store i8 %conv73.3.7, i8* %arrayidx70.7, align 1
  %scevgep20.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 4
  %556 = load i8, i8* %scevgep20.4.7, align 1
  %conv68.4.7 = zext i8 %556 to i32
  %557 = load i8, i8* %arrayidx70.7, align 1
  %conv71.4.7 = zext i8 %557 to i32
  %xor72.4.7 = xor i32 %conv71.4.7, %conv68.4.7
  %conv73.4.7 = trunc i32 %xor72.4.7 to i8
  store i8 %conv73.4.7, i8* %arrayidx70.7, align 1
  %scevgep20.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 5
  %558 = load i8, i8* %scevgep20.5.7, align 1
  %conv68.5.7 = zext i8 %558 to i32
  %559 = load i8, i8* %arrayidx70.7, align 1
  %conv71.5.7 = zext i8 %559 to i32
  %xor72.5.7 = xor i32 %conv71.5.7, %conv68.5.7
  %conv73.5.7 = trunc i32 %xor72.5.7 to i8
  store i8 %conv73.5.7, i8* %arrayidx70.7, align 1
  %scevgep20.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 6
  %560 = load i8, i8* %scevgep20.6.7, align 1
  %conv68.6.7 = zext i8 %560 to i32
  %561 = load i8, i8* %arrayidx70.7, align 1
  %conv71.6.7 = zext i8 %561 to i32
  %xor72.6.7 = xor i32 %conv71.6.7, %conv68.6.7
  %conv73.6.7 = trunc i32 %xor72.6.7 to i8
  store i8 %conv73.6.7, i8* %arrayidx70.7, align 1
  %scevgep20.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 8
  %562 = load i8, i8* %scevgep20.8.7, align 1
  %conv68.8.7 = zext i8 %562 to i32
  %563 = load i8, i8* %arrayidx70.7, align 1
  %conv71.8.7 = zext i8 %563 to i32
  %xor72.8.7 = xor i32 %conv71.8.7, %conv68.8.7
  %conv73.8.7 = trunc i32 %xor72.8.7 to i8
  store i8 %conv73.8.7, i8* %arrayidx70.7, align 1
  %scevgep20.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 9
  %564 = load i8, i8* %scevgep20.9.7, align 1
  %conv68.9.7 = zext i8 %564 to i32
  %565 = load i8, i8* %arrayidx70.7, align 1
  %conv71.9.7 = zext i8 %565 to i32
  %xor72.9.7 = xor i32 %conv71.9.7, %conv68.9.7
  %conv73.9.7 = trunc i32 %xor72.9.7 to i8
  store i8 %conv73.9.7, i8* %arrayidx70.7, align 1
  %scevgep20.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 0, i64 10
  %566 = load i8, i8* %scevgep20.10.7, align 1
  %conv68.10.7 = zext i8 %566 to i32
  %567 = load i8, i8* %arrayidx70.7, align 1
  %conv71.10.7 = zext i8 %567 to i32
  %xor72.10.7 = xor i32 %conv71.10.7, %conv68.10.7
  %conv73.10.7 = trunc i32 %xor72.10.7 to i8
  store i8 %conv73.10.7, i8* %arrayidx70.7, align 1
  %scevgep19.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %545, i64 0, i64 1, i64 0
  %568 = bitcast i8* %scevgep19.7 to [11 x [11 x i8]]*
  %arrayidx51.8 = getelementptr inbounds i8, i8* %a, i64 8
  %569 = load i8, i8* %arrayidx51.8, align 1
  %arrayidx53.8 = getelementptr inbounds i8, i8* %b, i64 8
  %570 = load i8, i8* %arrayidx53.8, align 1
  %call54.8 = call zeroext i8 @mult(i8 zeroext %569, i8 zeroext %570)
  %arrayidx56.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %call54.8, i8* %arrayidx56.8, align 1
  %arrayidx70.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep20.8124 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 0
  %571 = load i8, i8* %scevgep20.8124, align 1
  %conv68.8125 = zext i8 %571 to i32
  %572 = load i8, i8* %arrayidx70.8, align 1
  %conv71.8126 = zext i8 %572 to i32
  %xor72.8127 = xor i32 %conv71.8126, %conv68.8125
  %conv73.8128 = trunc i32 %xor72.8127 to i8
  store i8 %conv73.8128, i8* %arrayidx70.8, align 1
  %scevgep20.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 1
  %573 = load i8, i8* %scevgep20.1.8, align 1
  %conv68.1.8 = zext i8 %573 to i32
  %574 = load i8, i8* %arrayidx70.8, align 1
  %conv71.1.8 = zext i8 %574 to i32
  %xor72.1.8 = xor i32 %conv71.1.8, %conv68.1.8
  %conv73.1.8 = trunc i32 %xor72.1.8 to i8
  store i8 %conv73.1.8, i8* %arrayidx70.8, align 1
  %scevgep20.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 2
  %575 = load i8, i8* %scevgep20.2.8, align 1
  %conv68.2.8 = zext i8 %575 to i32
  %576 = load i8, i8* %arrayidx70.8, align 1
  %conv71.2.8 = zext i8 %576 to i32
  %xor72.2.8 = xor i32 %conv71.2.8, %conv68.2.8
  %conv73.2.8 = trunc i32 %xor72.2.8 to i8
  store i8 %conv73.2.8, i8* %arrayidx70.8, align 1
  %scevgep20.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 3
  %577 = load i8, i8* %scevgep20.3.8, align 1
  %conv68.3.8 = zext i8 %577 to i32
  %578 = load i8, i8* %arrayidx70.8, align 1
  %conv71.3.8 = zext i8 %578 to i32
  %xor72.3.8 = xor i32 %conv71.3.8, %conv68.3.8
  %conv73.3.8 = trunc i32 %xor72.3.8 to i8
  store i8 %conv73.3.8, i8* %arrayidx70.8, align 1
  %scevgep20.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 4
  %579 = load i8, i8* %scevgep20.4.8, align 1
  %conv68.4.8 = zext i8 %579 to i32
  %580 = load i8, i8* %arrayidx70.8, align 1
  %conv71.4.8 = zext i8 %580 to i32
  %xor72.4.8 = xor i32 %conv71.4.8, %conv68.4.8
  %conv73.4.8 = trunc i32 %xor72.4.8 to i8
  store i8 %conv73.4.8, i8* %arrayidx70.8, align 1
  %scevgep20.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 5
  %581 = load i8, i8* %scevgep20.5.8, align 1
  %conv68.5.8 = zext i8 %581 to i32
  %582 = load i8, i8* %arrayidx70.8, align 1
  %conv71.5.8 = zext i8 %582 to i32
  %xor72.5.8 = xor i32 %conv71.5.8, %conv68.5.8
  %conv73.5.8 = trunc i32 %xor72.5.8 to i8
  store i8 %conv73.5.8, i8* %arrayidx70.8, align 1
  %scevgep20.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 6
  %583 = load i8, i8* %scevgep20.6.8, align 1
  %conv68.6.8 = zext i8 %583 to i32
  %584 = load i8, i8* %arrayidx70.8, align 1
  %conv71.6.8 = zext i8 %584 to i32
  %xor72.6.8 = xor i32 %conv71.6.8, %conv68.6.8
  %conv73.6.8 = trunc i32 %xor72.6.8 to i8
  store i8 %conv73.6.8, i8* %arrayidx70.8, align 1
  %scevgep20.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 7
  %585 = load i8, i8* %scevgep20.7.8, align 1
  %conv68.7.8 = zext i8 %585 to i32
  %586 = load i8, i8* %arrayidx70.8, align 1
  %conv71.7.8 = zext i8 %586 to i32
  %xor72.7.8 = xor i32 %conv71.7.8, %conv68.7.8
  %conv73.7.8 = trunc i32 %xor72.7.8 to i8
  store i8 %conv73.7.8, i8* %arrayidx70.8, align 1
  %scevgep20.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 9
  %587 = load i8, i8* %scevgep20.9.8, align 1
  %conv68.9.8 = zext i8 %587 to i32
  %588 = load i8, i8* %arrayidx70.8, align 1
  %conv71.9.8 = zext i8 %588 to i32
  %xor72.9.8 = xor i32 %conv71.9.8, %conv68.9.8
  %conv73.9.8 = trunc i32 %xor72.9.8 to i8
  store i8 %conv73.9.8, i8* %arrayidx70.8, align 1
  %scevgep20.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 0, i64 10
  %589 = load i8, i8* %scevgep20.10.8, align 1
  %conv68.10.8 = zext i8 %589 to i32
  %590 = load i8, i8* %arrayidx70.8, align 1
  %conv71.10.8 = zext i8 %590 to i32
  %xor72.10.8 = xor i32 %conv71.10.8, %conv68.10.8
  %conv73.10.8 = trunc i32 %xor72.10.8 to i8
  store i8 %conv73.10.8, i8* %arrayidx70.8, align 1
  %scevgep19.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %568, i64 0, i64 1, i64 0
  %591 = bitcast i8* %scevgep19.8 to [11 x [11 x i8]]*
  %arrayidx51.9 = getelementptr inbounds i8, i8* %a, i64 9
  %592 = load i8, i8* %arrayidx51.9, align 1
  %arrayidx53.9 = getelementptr inbounds i8, i8* %b, i64 9
  %593 = load i8, i8* %arrayidx53.9, align 1
  %call54.9 = call zeroext i8 @mult(i8 zeroext %592, i8 zeroext %593)
  %arrayidx56.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %call54.9, i8* %arrayidx56.9, align 1
  %arrayidx70.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep20.9134 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 0
  %594 = load i8, i8* %scevgep20.9134, align 1
  %conv68.9135 = zext i8 %594 to i32
  %595 = load i8, i8* %arrayidx70.9, align 1
  %conv71.9136 = zext i8 %595 to i32
  %xor72.9137 = xor i32 %conv71.9136, %conv68.9135
  %conv73.9138 = trunc i32 %xor72.9137 to i8
  store i8 %conv73.9138, i8* %arrayidx70.9, align 1
  %scevgep20.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 1
  %596 = load i8, i8* %scevgep20.1.9, align 1
  %conv68.1.9 = zext i8 %596 to i32
  %597 = load i8, i8* %arrayidx70.9, align 1
  %conv71.1.9 = zext i8 %597 to i32
  %xor72.1.9 = xor i32 %conv71.1.9, %conv68.1.9
  %conv73.1.9 = trunc i32 %xor72.1.9 to i8
  store i8 %conv73.1.9, i8* %arrayidx70.9, align 1
  %scevgep20.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 2
  %598 = load i8, i8* %scevgep20.2.9, align 1
  %conv68.2.9 = zext i8 %598 to i32
  %599 = load i8, i8* %arrayidx70.9, align 1
  %conv71.2.9 = zext i8 %599 to i32
  %xor72.2.9 = xor i32 %conv71.2.9, %conv68.2.9
  %conv73.2.9 = trunc i32 %xor72.2.9 to i8
  store i8 %conv73.2.9, i8* %arrayidx70.9, align 1
  %scevgep20.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 3
  %600 = load i8, i8* %scevgep20.3.9, align 1
  %conv68.3.9 = zext i8 %600 to i32
  %601 = load i8, i8* %arrayidx70.9, align 1
  %conv71.3.9 = zext i8 %601 to i32
  %xor72.3.9 = xor i32 %conv71.3.9, %conv68.3.9
  %conv73.3.9 = trunc i32 %xor72.3.9 to i8
  store i8 %conv73.3.9, i8* %arrayidx70.9, align 1
  %scevgep20.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 4
  %602 = load i8, i8* %scevgep20.4.9, align 1
  %conv68.4.9 = zext i8 %602 to i32
  %603 = load i8, i8* %arrayidx70.9, align 1
  %conv71.4.9 = zext i8 %603 to i32
  %xor72.4.9 = xor i32 %conv71.4.9, %conv68.4.9
  %conv73.4.9 = trunc i32 %xor72.4.9 to i8
  store i8 %conv73.4.9, i8* %arrayidx70.9, align 1
  %scevgep20.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 5
  %604 = load i8, i8* %scevgep20.5.9, align 1
  %conv68.5.9 = zext i8 %604 to i32
  %605 = load i8, i8* %arrayidx70.9, align 1
  %conv71.5.9 = zext i8 %605 to i32
  %xor72.5.9 = xor i32 %conv71.5.9, %conv68.5.9
  %conv73.5.9 = trunc i32 %xor72.5.9 to i8
  store i8 %conv73.5.9, i8* %arrayidx70.9, align 1
  %scevgep20.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 6
  %606 = load i8, i8* %scevgep20.6.9, align 1
  %conv68.6.9 = zext i8 %606 to i32
  %607 = load i8, i8* %arrayidx70.9, align 1
  %conv71.6.9 = zext i8 %607 to i32
  %xor72.6.9 = xor i32 %conv71.6.9, %conv68.6.9
  %conv73.6.9 = trunc i32 %xor72.6.9 to i8
  store i8 %conv73.6.9, i8* %arrayidx70.9, align 1
  %scevgep20.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 7
  %608 = load i8, i8* %scevgep20.7.9, align 1
  %conv68.7.9 = zext i8 %608 to i32
  %609 = load i8, i8* %arrayidx70.9, align 1
  %conv71.7.9 = zext i8 %609 to i32
  %xor72.7.9 = xor i32 %conv71.7.9, %conv68.7.9
  %conv73.7.9 = trunc i32 %xor72.7.9 to i8
  store i8 %conv73.7.9, i8* %arrayidx70.9, align 1
  %scevgep20.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 8
  %610 = load i8, i8* %scevgep20.8.9, align 1
  %conv68.8.9 = zext i8 %610 to i32
  %611 = load i8, i8* %arrayidx70.9, align 1
  %conv71.8.9 = zext i8 %611 to i32
  %xor72.8.9 = xor i32 %conv71.8.9, %conv68.8.9
  %conv73.8.9 = trunc i32 %xor72.8.9 to i8
  store i8 %conv73.8.9, i8* %arrayidx70.9, align 1
  %scevgep20.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 0, i64 10
  %612 = load i8, i8* %scevgep20.10.9, align 1
  %conv68.10.9 = zext i8 %612 to i32
  %613 = load i8, i8* %arrayidx70.9, align 1
  %conv71.10.9 = zext i8 %613 to i32
  %xor72.10.9 = xor i32 %conv71.10.9, %conv68.10.9
  %conv73.10.9 = trunc i32 %xor72.10.9 to i8
  store i8 %conv73.10.9, i8* %arrayidx70.9, align 1
  %scevgep19.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %591, i64 0, i64 1, i64 0
  %614 = bitcast i8* %scevgep19.9 to [11 x [11 x i8]]*
  %arrayidx51.10 = getelementptr inbounds i8, i8* %a, i64 10
  %615 = load i8, i8* %arrayidx51.10, align 1
  %arrayidx53.10 = getelementptr inbounds i8, i8* %b, i64 10
  %616 = load i8, i8* %arrayidx53.10, align 1
  %call54.10 = call zeroext i8 @mult(i8 zeroext %615, i8 zeroext %616)
  %arrayidx56.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %call54.10, i8* %arrayidx56.10, align 1
  %arrayidx70.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep20.10144 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 0
  %617 = load i8, i8* %scevgep20.10144, align 1
  %conv68.10145 = zext i8 %617 to i32
  %618 = load i8, i8* %arrayidx70.10, align 1
  %conv71.10146 = zext i8 %618 to i32
  %xor72.10147 = xor i32 %conv71.10146, %conv68.10145
  %conv73.10148 = trunc i32 %xor72.10147 to i8
  store i8 %conv73.10148, i8* %arrayidx70.10, align 1
  %scevgep20.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 1
  %619 = load i8, i8* %scevgep20.1.10, align 1
  %conv68.1.10 = zext i8 %619 to i32
  %620 = load i8, i8* %arrayidx70.10, align 1
  %conv71.1.10 = zext i8 %620 to i32
  %xor72.1.10 = xor i32 %conv71.1.10, %conv68.1.10
  %conv73.1.10 = trunc i32 %xor72.1.10 to i8
  store i8 %conv73.1.10, i8* %arrayidx70.10, align 1
  %scevgep20.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 2
  %621 = load i8, i8* %scevgep20.2.10, align 1
  %conv68.2.10 = zext i8 %621 to i32
  %622 = load i8, i8* %arrayidx70.10, align 1
  %conv71.2.10 = zext i8 %622 to i32
  %xor72.2.10 = xor i32 %conv71.2.10, %conv68.2.10
  %conv73.2.10 = trunc i32 %xor72.2.10 to i8
  store i8 %conv73.2.10, i8* %arrayidx70.10, align 1
  %scevgep20.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 3
  %623 = load i8, i8* %scevgep20.3.10, align 1
  %conv68.3.10 = zext i8 %623 to i32
  %624 = load i8, i8* %arrayidx70.10, align 1
  %conv71.3.10 = zext i8 %624 to i32
  %xor72.3.10 = xor i32 %conv71.3.10, %conv68.3.10
  %conv73.3.10 = trunc i32 %xor72.3.10 to i8
  store i8 %conv73.3.10, i8* %arrayidx70.10, align 1
  %scevgep20.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 4
  %625 = load i8, i8* %scevgep20.4.10, align 1
  %conv68.4.10 = zext i8 %625 to i32
  %626 = load i8, i8* %arrayidx70.10, align 1
  %conv71.4.10 = zext i8 %626 to i32
  %xor72.4.10 = xor i32 %conv71.4.10, %conv68.4.10
  %conv73.4.10 = trunc i32 %xor72.4.10 to i8
  store i8 %conv73.4.10, i8* %arrayidx70.10, align 1
  %scevgep20.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 5
  %627 = load i8, i8* %scevgep20.5.10, align 1
  %conv68.5.10 = zext i8 %627 to i32
  %628 = load i8, i8* %arrayidx70.10, align 1
  %conv71.5.10 = zext i8 %628 to i32
  %xor72.5.10 = xor i32 %conv71.5.10, %conv68.5.10
  %conv73.5.10 = trunc i32 %xor72.5.10 to i8
  store i8 %conv73.5.10, i8* %arrayidx70.10, align 1
  %scevgep20.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 6
  %629 = load i8, i8* %scevgep20.6.10, align 1
  %conv68.6.10 = zext i8 %629 to i32
  %630 = load i8, i8* %arrayidx70.10, align 1
  %conv71.6.10 = zext i8 %630 to i32
  %xor72.6.10 = xor i32 %conv71.6.10, %conv68.6.10
  %conv73.6.10 = trunc i32 %xor72.6.10 to i8
  store i8 %conv73.6.10, i8* %arrayidx70.10, align 1
  %scevgep20.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 7
  %631 = load i8, i8* %scevgep20.7.10, align 1
  %conv68.7.10 = zext i8 %631 to i32
  %632 = load i8, i8* %arrayidx70.10, align 1
  %conv71.7.10 = zext i8 %632 to i32
  %xor72.7.10 = xor i32 %conv71.7.10, %conv68.7.10
  %conv73.7.10 = trunc i32 %xor72.7.10 to i8
  store i8 %conv73.7.10, i8* %arrayidx70.10, align 1
  %scevgep20.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 8
  %633 = load i8, i8* %scevgep20.8.10, align 1
  %conv68.8.10 = zext i8 %633 to i32
  %634 = load i8, i8* %arrayidx70.10, align 1
  %conv71.8.10 = zext i8 %634 to i32
  %xor72.8.10 = xor i32 %conv71.8.10, %conv68.8.10
  %conv73.8.10 = trunc i32 %xor72.8.10 to i8
  store i8 %conv73.8.10, i8* %arrayidx70.10, align 1
  %scevgep20.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %614, i64 0, i64 0, i64 9
  %635 = load i8, i8* %scevgep20.9.10, align 1
  %conv68.9.10 = zext i8 %635 to i32
  %636 = load i8, i8* %arrayidx70.10, align 1
  %conv71.9.10 = zext i8 %636 to i32
  %xor72.9.10 = xor i32 %conv71.9.10, %conv68.9.10
  %conv73.9.10 = trunc i32 %xor72.9.10 to i8
  store i8 %conv73.9.10, i8* %arrayidx70.10, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %637 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %638 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %638 to i32
  %conv1.i.i114.1 = zext i8 %637 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %639 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %639 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %640 = load i8, i8* %scevgep.3, align 1
  %conv.i.i113.3 = zext i8 %640 to i32
  %conv1.i.i114.3 = zext i8 %conv2.i.i116.2 to i32
  %xor.i.i115.3 = xor i32 %conv1.i.i114.3, %conv.i.i113.3
  %conv2.i.i116.3 = trunc i32 %xor.i.i115.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %641 = load i8, i8* %scevgep.4, align 1
  %conv.i.i113.4 = zext i8 %641 to i32
  %conv1.i.i114.4 = zext i8 %conv2.i.i116.3 to i32
  %xor.i.i115.4 = xor i32 %conv1.i.i114.4, %conv.i.i113.4
  %conv2.i.i116.4 = trunc i32 %xor.i.i115.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %642 = load i8, i8* %scevgep.5, align 1
  %conv.i.i113.5 = zext i8 %642 to i32
  %conv1.i.i114.5 = zext i8 %conv2.i.i116.4 to i32
  %xor.i.i115.5 = xor i32 %conv1.i.i114.5, %conv.i.i113.5
  %conv2.i.i116.5 = trunc i32 %xor.i.i115.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %643 = load i8, i8* %scevgep.6, align 1
  %conv.i.i113.6 = zext i8 %643 to i32
  %conv1.i.i114.6 = zext i8 %conv2.i.i116.5 to i32
  %xor.i.i115.6 = xor i32 %conv1.i.i114.6, %conv.i.i113.6
  %conv2.i.i116.6 = trunc i32 %xor.i.i115.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %644 = load i8, i8* %scevgep.7, align 1
  %conv.i.i113.7 = zext i8 %644 to i32
  %conv1.i.i114.7 = zext i8 %conv2.i.i116.6 to i32
  %xor.i.i115.7 = xor i32 %conv1.i.i114.7, %conv.i.i113.7
  %conv2.i.i116.7 = trunc i32 %xor.i.i115.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %645 = load i8, i8* %scevgep.8, align 1
  %conv.i.i113.8 = zext i8 %645 to i32
  %conv1.i.i114.8 = zext i8 %conv2.i.i116.7 to i32
  %xor.i.i115.8 = xor i32 %conv1.i.i114.8, %conv.i.i113.8
  %conv2.i.i116.8 = trunc i32 %xor.i.i115.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %646 = load i8, i8* %scevgep.9, align 1
  %conv.i.i113.9 = zext i8 %646 to i32
  %conv1.i.i114.9 = zext i8 %conv2.i.i116.8 to i32
  %xor.i.i115.9 = xor i32 %conv1.i.i114.9, %conv.i.i113.9
  %conv2.i.i116.9 = trunc i32 %xor.i.i115.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %647 = load i8, i8* %scevgep.10, align 1
  %conv.i.i113.10 = zext i8 %647 to i32
  %conv1.i.i114.10 = zext i8 %conv2.i.i116.9 to i32
  %xor.i.i115.10 = xor i32 %conv1.i.i114.10, %conv.i.i113.10
  %conv2.i.i116.10 = trunc i32 %xor.i.i115.10 to i8
  %conv83 = zext i8 %conv2.i.i116.10 to i32
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
  %conv2 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %11 = load i8, i8* %x, align 1
  %conv9 = zext i8 %11 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %12 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %12 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %13 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %13 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %14 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %14 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %15 = load i8, i8* %x, align 1
  %conv9.2 = zext i8 %15 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %x, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep8.2 = getelementptr i8, i8* %x, i64 3
  %16 = load i8, i8* %scevgep8.2, align 1
  %conv13.2 = zext i8 %16 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep8.2, align 1
  %call7.3 = call zeroext i8 (...) @rand()
  %conv8.3 = zext i8 %call7.3 to i32
  %17 = load i8, i8* %x, align 1
  %conv9.3 = zext i8 %17 to i32
  %xor.3 = xor i32 %conv9.3, %conv8.3
  %conv10.3 = trunc i32 %xor.3 to i8
  store i8 %conv10.3, i8* %x, align 1
  %conv11.3 = zext i8 %call7.3 to i32
  %scevgep8.3 = getelementptr i8, i8* %x, i64 4
  %18 = load i8, i8* %scevgep8.3, align 1
  %conv13.3 = zext i8 %18 to i32
  %xor14.3 = xor i32 %conv13.3, %conv11.3
  %conv15.3 = trunc i32 %xor14.3 to i8
  store i8 %conv15.3, i8* %scevgep8.3, align 1
  %call7.4 = call zeroext i8 (...) @rand()
  %conv8.4 = zext i8 %call7.4 to i32
  %19 = load i8, i8* %x, align 1
  %conv9.4 = zext i8 %19 to i32
  %xor.4 = xor i32 %conv9.4, %conv8.4
  %conv10.4 = trunc i32 %xor.4 to i8
  store i8 %conv10.4, i8* %x, align 1
  %conv11.4 = zext i8 %call7.4 to i32
  %scevgep8.4 = getelementptr i8, i8* %x, i64 5
  %20 = load i8, i8* %scevgep8.4, align 1
  %conv13.4 = zext i8 %20 to i32
  %xor14.4 = xor i32 %conv13.4, %conv11.4
  %conv15.4 = trunc i32 %xor14.4 to i8
  store i8 %conv15.4, i8* %scevgep8.4, align 1
  %call7.5 = call zeroext i8 (...) @rand()
  %conv8.5 = zext i8 %call7.5 to i32
  %21 = load i8, i8* %x, align 1
  %conv9.5 = zext i8 %21 to i32
  %xor.5 = xor i32 %conv9.5, %conv8.5
  %conv10.5 = trunc i32 %xor.5 to i8
  store i8 %conv10.5, i8* %x, align 1
  %conv11.5 = zext i8 %call7.5 to i32
  %scevgep8.5 = getelementptr i8, i8* %x, i64 6
  %22 = load i8, i8* %scevgep8.5, align 1
  %conv13.5 = zext i8 %22 to i32
  %xor14.5 = xor i32 %conv13.5, %conv11.5
  %conv15.5 = trunc i32 %xor14.5 to i8
  store i8 %conv15.5, i8* %scevgep8.5, align 1
  %call7.6 = call zeroext i8 (...) @rand()
  %conv8.6 = zext i8 %call7.6 to i32
  %23 = load i8, i8* %x, align 1
  %conv9.6 = zext i8 %23 to i32
  %xor.6 = xor i32 %conv9.6, %conv8.6
  %conv10.6 = trunc i32 %xor.6 to i8
  store i8 %conv10.6, i8* %x, align 1
  %conv11.6 = zext i8 %call7.6 to i32
  %scevgep8.6 = getelementptr i8, i8* %x, i64 7
  %24 = load i8, i8* %scevgep8.6, align 1
  %conv13.6 = zext i8 %24 to i32
  %xor14.6 = xor i32 %conv13.6, %conv11.6
  %conv15.6 = trunc i32 %xor14.6 to i8
  store i8 %conv15.6, i8* %scevgep8.6, align 1
  %call7.7 = call zeroext i8 (...) @rand()
  %conv8.7 = zext i8 %call7.7 to i32
  %25 = load i8, i8* %x, align 1
  %conv9.7 = zext i8 %25 to i32
  %xor.7 = xor i32 %conv9.7, %conv8.7
  %conv10.7 = trunc i32 %xor.7 to i8
  store i8 %conv10.7, i8* %x, align 1
  %conv11.7 = zext i8 %call7.7 to i32
  %scevgep8.7 = getelementptr i8, i8* %x, i64 8
  %26 = load i8, i8* %scevgep8.7, align 1
  %conv13.7 = zext i8 %26 to i32
  %xor14.7 = xor i32 %conv13.7, %conv11.7
  %conv15.7 = trunc i32 %xor14.7 to i8
  store i8 %conv15.7, i8* %scevgep8.7, align 1
  %call7.8 = call zeroext i8 (...) @rand()
  %conv8.8 = zext i8 %call7.8 to i32
  %27 = load i8, i8* %x, align 1
  %conv9.8 = zext i8 %27 to i32
  %xor.8 = xor i32 %conv9.8, %conv8.8
  %conv10.8 = trunc i32 %xor.8 to i8
  store i8 %conv10.8, i8* %x, align 1
  %conv11.8 = zext i8 %call7.8 to i32
  %scevgep8.8 = getelementptr i8, i8* %x, i64 9
  %28 = load i8, i8* %scevgep8.8, align 1
  %conv13.8 = zext i8 %28 to i32
  %xor14.8 = xor i32 %conv13.8, %conv11.8
  %conv15.8 = trunc i32 %xor14.8 to i8
  store i8 %conv15.8, i8* %scevgep8.8, align 1
  %call7.9 = call zeroext i8 (...) @rand()
  %conv8.9 = zext i8 %call7.9 to i32
  %29 = load i8, i8* %x, align 1
  %conv9.9 = zext i8 %29 to i32
  %xor.9 = xor i32 %conv9.9, %conv8.9
  %conv10.9 = trunc i32 %xor.9 to i8
  store i8 %conv10.9, i8* %x, align 1
  %conv11.9 = zext i8 %call7.9 to i32
  %scevgep8.9 = getelementptr i8, i8* %x, i64 10
  %30 = load i8, i8* %scevgep8.9, align 1
  %conv13.9 = zext i8 %30 to i32
  %xor14.9 = xor i32 %conv13.9, %conv11.9
  %conv15.9 = trunc i32 %xor14.9 to i8
  store i8 %conv15.9, i8* %scevgep8.9, align 1
  %conv16 = zext i8 %call to i32
  %31 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %32 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %32 to i32
  %conv1.i.i32.1 = zext i8 %31 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %33 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %33 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %34 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %34 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %35 = load i8, i8* %scevgep.4, align 1
  %conv.i.i31.4 = zext i8 %35 to i32
  %conv1.i.i32.4 = zext i8 %conv2.i.i34.3 to i32
  %xor.i.i33.4 = xor i32 %conv1.i.i32.4, %conv.i.i31.4
  %conv2.i.i34.4 = trunc i32 %xor.i.i33.4 to i8
  %scevgep.5 = getelementptr i8, i8* %x, i64 5
  %36 = load i8, i8* %scevgep.5, align 1
  %conv.i.i31.5 = zext i8 %36 to i32
  %conv1.i.i32.5 = zext i8 %conv2.i.i34.4 to i32
  %xor.i.i33.5 = xor i32 %conv1.i.i32.5, %conv.i.i31.5
  %conv2.i.i34.5 = trunc i32 %xor.i.i33.5 to i8
  %scevgep.6 = getelementptr i8, i8* %x, i64 6
  %37 = load i8, i8* %scevgep.6, align 1
  %conv.i.i31.6 = zext i8 %37 to i32
  %conv1.i.i32.6 = zext i8 %conv2.i.i34.5 to i32
  %xor.i.i33.6 = xor i32 %conv1.i.i32.6, %conv.i.i31.6
  %conv2.i.i34.6 = trunc i32 %xor.i.i33.6 to i8
  %scevgep.7 = getelementptr i8, i8* %x, i64 7
  %38 = load i8, i8* %scevgep.7, align 1
  %conv.i.i31.7 = zext i8 %38 to i32
  %conv1.i.i32.7 = zext i8 %conv2.i.i34.6 to i32
  %xor.i.i33.7 = xor i32 %conv1.i.i32.7, %conv.i.i31.7
  %conv2.i.i34.7 = trunc i32 %xor.i.i33.7 to i8
  %scevgep.8 = getelementptr i8, i8* %x, i64 8
  %39 = load i8, i8* %scevgep.8, align 1
  %conv.i.i31.8 = zext i8 %39 to i32
  %conv1.i.i32.8 = zext i8 %conv2.i.i34.7 to i32
  %xor.i.i33.8 = xor i32 %conv1.i.i32.8, %conv.i.i31.8
  %conv2.i.i34.8 = trunc i32 %xor.i.i33.8 to i8
  %scevgep.9 = getelementptr i8, i8* %x, i64 9
  %40 = load i8, i8* %scevgep.9, align 1
  %conv.i.i31.9 = zext i8 %40 to i32
  %conv1.i.i32.9 = zext i8 %conv2.i.i34.8 to i32
  %xor.i.i33.9 = xor i32 %conv1.i.i32.9, %conv.i.i31.9
  %conv2.i.i34.9 = trunc i32 %xor.i.i33.9 to i8
  %scevgep.10 = getelementptr i8, i8* %x, i64 10
  %41 = load i8, i8* %scevgep.10, align 1
  %conv.i.i31.10 = zext i8 %41 to i32
  %conv1.i.i32.10 = zext i8 %conv2.i.i34.9 to i32
  %xor.i.i33.10 = xor i32 %conv1.i.i32.10, %conv.i.i31.10
  %conv2.i.i34.10 = trunc i32 %xor.i.i33.10 to i8
  %conv18 = zext i8 %conv2.i.i34.10 to i32
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
