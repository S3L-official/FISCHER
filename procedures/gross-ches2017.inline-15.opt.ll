; ModuleID = '../examples/gross-ches2017.inline-15.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 15, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [29 x i8] c"../examples/gross-ches2017.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 23 }], section "llvm.metadata"

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
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 16
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 16
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 16
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 16
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 16
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 16
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %call.2 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %11)
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.2, i8* %scevgep.2, align 1
  %12 = add i64 %0, 3
  %tmp.3 = trunc i64 %12 to i32
  %rem.3 = srem i32 %tmp.3, 16
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 16
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %call.3 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %15)
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.3, i8* %scevgep.3, align 1
  %16 = add i64 %0, 4
  %tmp.4 = trunc i64 %16 to i32
  %rem.4 = srem i32 %tmp.4, 16
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 16
  %idxprom3.4 = sext i32 %rem2.4 to i64
  %arrayidx4.4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.4
  %19 = load i8, i8* %arrayidx4.4, align 1
  %call.4 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %19)
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.4, i8* %scevgep.4, align 1
  %20 = add i64 %0, 5
  %tmp.5 = trunc i64 %20 to i32
  %rem.5 = srem i32 %tmp.5, 16
  %idxprom.5 = sext i32 %rem.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 %idxprom.5
  %21 = load i8, i8* %arrayidx.5, align 1
  %22 = add i64 %1, 5
  %tmp2.5 = trunc i64 %22 to i32
  %rem2.5 = srem i32 %tmp2.5, 16
  %idxprom3.5 = sext i32 %rem2.5 to i64
  %arrayidx4.5 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.5
  %23 = load i8, i8* %arrayidx4.5, align 1
  %call.5 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %23)
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  store i8 %call.5, i8* %scevgep.5, align 1
  %24 = add i64 %0, 6
  %tmp.6 = trunc i64 %24 to i32
  %rem.6 = srem i32 %tmp.6, 16
  %idxprom.6 = sext i32 %rem.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 %idxprom.6
  %25 = load i8, i8* %arrayidx.6, align 1
  %26 = add i64 %1, 6
  %tmp2.6 = trunc i64 %26 to i32
  %rem2.6 = srem i32 %tmp2.6, 16
  %idxprom3.6 = sext i32 %rem2.6 to i64
  %arrayidx4.6 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.6
  %27 = load i8, i8* %arrayidx4.6, align 1
  %call.6 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %27)
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  store i8 %call.6, i8* %scevgep.6, align 1
  %28 = add i64 %0, 7
  %tmp.7 = trunc i64 %28 to i32
  %rem.7 = srem i32 %tmp.7, 16
  %idxprom.7 = sext i32 %rem.7 to i64
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 %idxprom.7
  %29 = load i8, i8* %arrayidx.7, align 1
  %30 = add i64 %1, 7
  %tmp2.7 = trunc i64 %30 to i32
  %rem2.7 = srem i32 %tmp2.7, 16
  %idxprom3.7 = sext i32 %rem2.7 to i64
  %arrayidx4.7 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.7
  %31 = load i8, i8* %arrayidx4.7, align 1
  %call.7 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %31)
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  store i8 %call.7, i8* %scevgep.7, align 1
  %32 = add i64 %0, 8
  %tmp.8 = trunc i64 %32 to i32
  %rem.8 = srem i32 %tmp.8, 16
  %idxprom.8 = sext i32 %rem.8 to i64
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 %idxprom.8
  %33 = load i8, i8* %arrayidx.8, align 1
  %34 = add i64 %1, 8
  %tmp2.8 = trunc i64 %34 to i32
  %rem2.8 = srem i32 %tmp2.8, 16
  %idxprom3.8 = sext i32 %rem2.8 to i64
  %arrayidx4.8 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.8
  %35 = load i8, i8* %arrayidx4.8, align 1
  %call.8 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %35)
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  store i8 %call.8, i8* %scevgep.8, align 1
  %36 = add i64 %0, 9
  %tmp.9 = trunc i64 %36 to i32
  %rem.9 = srem i32 %tmp.9, 16
  %idxprom.9 = sext i32 %rem.9 to i64
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 %idxprom.9
  %37 = load i8, i8* %arrayidx.9, align 1
  %38 = add i64 %1, 9
  %tmp2.9 = trunc i64 %38 to i32
  %rem2.9 = srem i32 %tmp2.9, 16
  %idxprom3.9 = sext i32 %rem2.9 to i64
  %arrayidx4.9 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.9
  %39 = load i8, i8* %arrayidx4.9, align 1
  %call.9 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %39)
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  store i8 %call.9, i8* %scevgep.9, align 1
  %40 = add i64 %0, 10
  %tmp.10 = trunc i64 %40 to i32
  %rem.10 = srem i32 %tmp.10, 16
  %idxprom.10 = sext i32 %rem.10 to i64
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 %idxprom.10
  %41 = load i8, i8* %arrayidx.10, align 1
  %42 = add i64 %1, 10
  %tmp2.10 = trunc i64 %42 to i32
  %rem2.10 = srem i32 %tmp2.10, 16
  %idxprom3.10 = sext i32 %rem2.10 to i64
  %arrayidx4.10 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.10
  %43 = load i8, i8* %arrayidx4.10, align 1
  %call.10 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %43)
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  store i8 %call.10, i8* %scevgep.10, align 1
  %44 = add i64 %0, 11
  %tmp.11 = trunc i64 %44 to i32
  %rem.11 = srem i32 %tmp.11, 16
  %idxprom.11 = sext i32 %rem.11 to i64
  %arrayidx.11 = getelementptr inbounds i8, i8* %a, i64 %idxprom.11
  %45 = load i8, i8* %arrayidx.11, align 1
  %46 = add i64 %1, 11
  %tmp2.11 = trunc i64 %46 to i32
  %rem2.11 = srem i32 %tmp2.11, 16
  %idxprom3.11 = sext i32 %rem2.11 to i64
  %arrayidx4.11 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.11
  %47 = load i8, i8* %arrayidx4.11, align 1
  %call.11 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %47)
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  store i8 %call.11, i8* %scevgep.11, align 1
  %48 = add i64 %0, 12
  %tmp.12 = trunc i64 %48 to i32
  %rem.12 = srem i32 %tmp.12, 16
  %idxprom.12 = sext i32 %rem.12 to i64
  %arrayidx.12 = getelementptr inbounds i8, i8* %a, i64 %idxprom.12
  %49 = load i8, i8* %arrayidx.12, align 1
  %50 = add i64 %1, 12
  %tmp2.12 = trunc i64 %50 to i32
  %rem2.12 = srem i32 %tmp2.12, 16
  %idxprom3.12 = sext i32 %rem2.12 to i64
  %arrayidx4.12 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.12
  %51 = load i8, i8* %arrayidx4.12, align 1
  %call.12 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %51)
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  store i8 %call.12, i8* %scevgep.12, align 1
  %52 = add i64 %0, 13
  %tmp.13 = trunc i64 %52 to i32
  %rem.13 = srem i32 %tmp.13, 16
  %idxprom.13 = sext i32 %rem.13 to i64
  %arrayidx.13 = getelementptr inbounds i8, i8* %a, i64 %idxprom.13
  %53 = load i8, i8* %arrayidx.13, align 1
  %54 = add i64 %1, 13
  %tmp2.13 = trunc i64 %54 to i32
  %rem2.13 = srem i32 %tmp2.13, 16
  %idxprom3.13 = sext i32 %rem2.13 to i64
  %arrayidx4.13 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.13
  %55 = load i8, i8* %arrayidx4.13, align 1
  %call.13 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %55)
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  store i8 %call.13, i8* %scevgep.13, align 1
  %56 = add i64 %0, 14
  %tmp.14 = trunc i64 %56 to i32
  %rem.14 = srem i32 %tmp.14, 16
  %idxprom.14 = sext i32 %rem.14 to i64
  %arrayidx.14 = getelementptr inbounds i8, i8* %a, i64 %idxprom.14
  %57 = load i8, i8* %arrayidx.14, align 1
  %58 = add i64 %1, 14
  %tmp2.14 = trunc i64 %58 to i32
  %rem2.14 = srem i32 %tmp2.14, 16
  %idxprom3.14 = sext i32 %rem2.14 to i64
  %arrayidx4.14 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.14
  %59 = load i8, i8* %arrayidx4.14, align 1
  %call.14 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %59)
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  store i8 %call.14, i8* %scevgep.14, align 1
  %60 = add i64 %0, 15
  %tmp.15 = trunc i64 %60 to i32
  %rem.15 = srem i32 %tmp.15, 16
  %idxprom.15 = sext i32 %rem.15 to i64
  %arrayidx.15 = getelementptr inbounds i8, i8* %a, i64 %idxprom.15
  %61 = load i8, i8* %arrayidx.15, align 1
  %62 = add i64 %1, 15
  %tmp2.15 = trunc i64 %62 to i32
  %rem2.15 = srem i32 %tmp2.15, 16
  %idxprom3.15 = sext i32 %rem2.15 to i64
  %arrayidx4.15 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.15
  %63 = load i8, i8* %arrayidx4.15, align 1
  %call.15 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %63)
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  store i8 %call.15, i8* %scevgep.15, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 16
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 16
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 16
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 16
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %conv5.1 = zext i8 %7 to i32
  %xor.1 = xor i32 %conv.1, %conv5.1
  %conv6.1 = trunc i32 %xor.1 to i8
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 16
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 16
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %conv5.2 = zext i8 %11 to i32
  %xor.2 = xor i32 %conv.2, %conv5.2
  %conv6.2 = trunc i32 %xor.2 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.2, i8* %scevgep.2, align 1
  %12 = add i64 %0, 3
  %tmp.3 = trunc i64 %12 to i32
  %rem.3 = srem i32 %tmp.3, 16
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i32
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 16
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %conv5.3 = zext i8 %15 to i32
  %xor.3 = xor i32 %conv.3, %conv5.3
  %conv6.3 = trunc i32 %xor.3 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.3, i8* %scevgep.3, align 1
  %16 = add i64 %0, 4
  %tmp.4 = trunc i64 %16 to i32
  %rem.4 = srem i32 %tmp.4, 16
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %conv.4 = zext i8 %17 to i32
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 16
  %idxprom3.4 = sext i32 %rem2.4 to i64
  %arrayidx4.4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.4
  %19 = load i8, i8* %arrayidx4.4, align 1
  %conv5.4 = zext i8 %19 to i32
  %xor.4 = xor i32 %conv.4, %conv5.4
  %conv6.4 = trunc i32 %xor.4 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.4, i8* %scevgep.4, align 1
  %20 = add i64 %0, 5
  %tmp.5 = trunc i64 %20 to i32
  %rem.5 = srem i32 %tmp.5, 16
  %idxprom.5 = sext i32 %rem.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 %idxprom.5
  %21 = load i8, i8* %arrayidx.5, align 1
  %conv.5 = zext i8 %21 to i32
  %22 = add i64 %1, 5
  %tmp2.5 = trunc i64 %22 to i32
  %rem2.5 = srem i32 %tmp2.5, 16
  %idxprom3.5 = sext i32 %rem2.5 to i64
  %arrayidx4.5 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.5
  %23 = load i8, i8* %arrayidx4.5, align 1
  %conv5.5 = zext i8 %23 to i32
  %xor.5 = xor i32 %conv.5, %conv5.5
  %conv6.5 = trunc i32 %xor.5 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.5, i8* %scevgep.5, align 1
  %24 = add i64 %0, 6
  %tmp.6 = trunc i64 %24 to i32
  %rem.6 = srem i32 %tmp.6, 16
  %idxprom.6 = sext i32 %rem.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 %idxprom.6
  %25 = load i8, i8* %arrayidx.6, align 1
  %conv.6 = zext i8 %25 to i32
  %26 = add i64 %1, 6
  %tmp2.6 = trunc i64 %26 to i32
  %rem2.6 = srem i32 %tmp2.6, 16
  %idxprom3.6 = sext i32 %rem2.6 to i64
  %arrayidx4.6 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.6
  %27 = load i8, i8* %arrayidx4.6, align 1
  %conv5.6 = zext i8 %27 to i32
  %xor.6 = xor i32 %conv.6, %conv5.6
  %conv6.6 = trunc i32 %xor.6 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.6, i8* %scevgep.6, align 1
  %28 = add i64 %0, 7
  %tmp.7 = trunc i64 %28 to i32
  %rem.7 = srem i32 %tmp.7, 16
  %idxprom.7 = sext i32 %rem.7 to i64
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 %idxprom.7
  %29 = load i8, i8* %arrayidx.7, align 1
  %conv.7 = zext i8 %29 to i32
  %30 = add i64 %1, 7
  %tmp2.7 = trunc i64 %30 to i32
  %rem2.7 = srem i32 %tmp2.7, 16
  %idxprom3.7 = sext i32 %rem2.7 to i64
  %arrayidx4.7 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.7
  %31 = load i8, i8* %arrayidx4.7, align 1
  %conv5.7 = zext i8 %31 to i32
  %xor.7 = xor i32 %conv.7, %conv5.7
  %conv6.7 = trunc i32 %xor.7 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.7, i8* %scevgep.7, align 1
  %32 = add i64 %0, 8
  %tmp.8 = trunc i64 %32 to i32
  %rem.8 = srem i32 %tmp.8, 16
  %idxprom.8 = sext i32 %rem.8 to i64
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 %idxprom.8
  %33 = load i8, i8* %arrayidx.8, align 1
  %conv.8 = zext i8 %33 to i32
  %34 = add i64 %1, 8
  %tmp2.8 = trunc i64 %34 to i32
  %rem2.8 = srem i32 %tmp2.8, 16
  %idxprom3.8 = sext i32 %rem2.8 to i64
  %arrayidx4.8 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.8
  %35 = load i8, i8* %arrayidx4.8, align 1
  %conv5.8 = zext i8 %35 to i32
  %xor.8 = xor i32 %conv.8, %conv5.8
  %conv6.8 = trunc i32 %xor.8 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.8, i8* %scevgep.8, align 1
  %36 = add i64 %0, 9
  %tmp.9 = trunc i64 %36 to i32
  %rem.9 = srem i32 %tmp.9, 16
  %idxprom.9 = sext i32 %rem.9 to i64
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 %idxprom.9
  %37 = load i8, i8* %arrayidx.9, align 1
  %conv.9 = zext i8 %37 to i32
  %38 = add i64 %1, 9
  %tmp2.9 = trunc i64 %38 to i32
  %rem2.9 = srem i32 %tmp2.9, 16
  %idxprom3.9 = sext i32 %rem2.9 to i64
  %arrayidx4.9 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.9
  %39 = load i8, i8* %arrayidx4.9, align 1
  %conv5.9 = zext i8 %39 to i32
  %xor.9 = xor i32 %conv.9, %conv5.9
  %conv6.9 = trunc i32 %xor.9 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.9, i8* %scevgep.9, align 1
  %40 = add i64 %0, 10
  %tmp.10 = trunc i64 %40 to i32
  %rem.10 = srem i32 %tmp.10, 16
  %idxprom.10 = sext i32 %rem.10 to i64
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 %idxprom.10
  %41 = load i8, i8* %arrayidx.10, align 1
  %conv.10 = zext i8 %41 to i32
  %42 = add i64 %1, 10
  %tmp2.10 = trunc i64 %42 to i32
  %rem2.10 = srem i32 %tmp2.10, 16
  %idxprom3.10 = sext i32 %rem2.10 to i64
  %arrayidx4.10 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.10
  %43 = load i8, i8* %arrayidx4.10, align 1
  %conv5.10 = zext i8 %43 to i32
  %xor.10 = xor i32 %conv.10, %conv5.10
  %conv6.10 = trunc i32 %xor.10 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.10, i8* %scevgep.10, align 1
  %44 = add i64 %0, 11
  %tmp.11 = trunc i64 %44 to i32
  %rem.11 = srem i32 %tmp.11, 16
  %idxprom.11 = sext i32 %rem.11 to i64
  %arrayidx.11 = getelementptr inbounds i8, i8* %a, i64 %idxprom.11
  %45 = load i8, i8* %arrayidx.11, align 1
  %conv.11 = zext i8 %45 to i32
  %46 = add i64 %1, 11
  %tmp2.11 = trunc i64 %46 to i32
  %rem2.11 = srem i32 %tmp2.11, 16
  %idxprom3.11 = sext i32 %rem2.11 to i64
  %arrayidx4.11 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.11
  %47 = load i8, i8* %arrayidx4.11, align 1
  %conv5.11 = zext i8 %47 to i32
  %xor.11 = xor i32 %conv.11, %conv5.11
  %conv6.11 = trunc i32 %xor.11 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.11, i8* %scevgep.11, align 1
  %48 = add i64 %0, 12
  %tmp.12 = trunc i64 %48 to i32
  %rem.12 = srem i32 %tmp.12, 16
  %idxprom.12 = sext i32 %rem.12 to i64
  %arrayidx.12 = getelementptr inbounds i8, i8* %a, i64 %idxprom.12
  %49 = load i8, i8* %arrayidx.12, align 1
  %conv.12 = zext i8 %49 to i32
  %50 = add i64 %1, 12
  %tmp2.12 = trunc i64 %50 to i32
  %rem2.12 = srem i32 %tmp2.12, 16
  %idxprom3.12 = sext i32 %rem2.12 to i64
  %arrayidx4.12 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.12
  %51 = load i8, i8* %arrayidx4.12, align 1
  %conv5.12 = zext i8 %51 to i32
  %xor.12 = xor i32 %conv.12, %conv5.12
  %conv6.12 = trunc i32 %xor.12 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.12, i8* %scevgep.12, align 1
  %52 = add i64 %0, 13
  %tmp.13 = trunc i64 %52 to i32
  %rem.13 = srem i32 %tmp.13, 16
  %idxprom.13 = sext i32 %rem.13 to i64
  %arrayidx.13 = getelementptr inbounds i8, i8* %a, i64 %idxprom.13
  %53 = load i8, i8* %arrayidx.13, align 1
  %conv.13 = zext i8 %53 to i32
  %54 = add i64 %1, 13
  %tmp2.13 = trunc i64 %54 to i32
  %rem2.13 = srem i32 %tmp2.13, 16
  %idxprom3.13 = sext i32 %rem2.13 to i64
  %arrayidx4.13 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.13
  %55 = load i8, i8* %arrayidx4.13, align 1
  %conv5.13 = zext i8 %55 to i32
  %xor.13 = xor i32 %conv.13, %conv5.13
  %conv6.13 = trunc i32 %xor.13 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.13, i8* %scevgep.13, align 1
  %56 = add i64 %0, 14
  %tmp.14 = trunc i64 %56 to i32
  %rem.14 = srem i32 %tmp.14, 16
  %idxprom.14 = sext i32 %rem.14 to i64
  %arrayidx.14 = getelementptr inbounds i8, i8* %a, i64 %idxprom.14
  %57 = load i8, i8* %arrayidx.14, align 1
  %conv.14 = zext i8 %57 to i32
  %58 = add i64 %1, 14
  %tmp2.14 = trunc i64 %58 to i32
  %rem2.14 = srem i32 %tmp2.14, 16
  %idxprom3.14 = sext i32 %rem2.14 to i64
  %arrayidx4.14 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.14
  %59 = load i8, i8* %arrayidx4.14, align 1
  %conv5.14 = zext i8 %59 to i32
  %xor.14 = xor i32 %conv.14, %conv5.14
  %conv6.14 = trunc i32 %xor.14 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.14, i8* %scevgep.14, align 1
  %60 = add i64 %0, 15
  %tmp.15 = trunc i64 %60 to i32
  %rem.15 = srem i32 %tmp.15, 16
  %idxprom.15 = sext i32 %rem.15 to i64
  %arrayidx.15 = getelementptr inbounds i8, i8* %a, i64 %idxprom.15
  %61 = load i8, i8* %arrayidx.15, align 1
  %conv.15 = zext i8 %61 to i32
  %62 = add i64 %1, 15
  %tmp2.15 = trunc i64 %62 to i32
  %rem2.15 = srem i32 %tmp2.15, 16
  %idxprom3.15 = sext i32 %rem2.15 to i64
  %arrayidx4.15 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.15
  %63 = load i8, i8* %arrayidx4.15, align 1
  %conv5.15 = zext i8 %63 to i32
  %xor.15 = xor i32 %conv.15, %conv5.15
  %conv6.15 = trunc i32 %xor.15 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.15, i8* %scevgep.15, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @ceil_(double %x) #0 {
entry:
  %conv = fptosi double %x to i32
  %conv1 = sitofp i32 %conv to double
  %cmp = fcmp oeq double %x, %conv1
  %add = add nsw i32 %conv, 1
  %retval.0 = select i1 %cmp, i32 %conv, i32 %add
  ret i32 %retval.0
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [16 x [16 x i8]], align 16
  %a1b = alloca [16 x i8], align 16
  %ab1 = alloca [16 x i8], align 16
  %a2b = alloca [16 x i8], align 16
  %ab2 = alloca [16 x i8], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep162.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep162.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep162.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep162.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep162.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep162.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep162.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep162.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep162.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep162.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep162.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep162.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep162.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep162.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep162.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep162.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep162.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep162.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep162.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep162.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %scevgep162.11 = getelementptr i8, i8* %a, i64 11
  %11 = load i8, i8* %scevgep162.11, align 1
  %conv.i.i.11 = zext i8 %11 to i32
  %conv1.i.i.11 = zext i8 %conv2.i.i.10 to i32
  %xor.i.i.11 = xor i32 %conv1.i.i.11, %conv.i.i.11
  %conv2.i.i.11 = trunc i32 %xor.i.i.11 to i8
  %scevgep162.12 = getelementptr i8, i8* %a, i64 12
  %12 = load i8, i8* %scevgep162.12, align 1
  %conv.i.i.12 = zext i8 %12 to i32
  %conv1.i.i.12 = zext i8 %conv2.i.i.11 to i32
  %xor.i.i.12 = xor i32 %conv1.i.i.12, %conv.i.i.12
  %conv2.i.i.12 = trunc i32 %xor.i.i.12 to i8
  %scevgep162.13 = getelementptr i8, i8* %a, i64 13
  %13 = load i8, i8* %scevgep162.13, align 1
  %conv.i.i.13 = zext i8 %13 to i32
  %conv1.i.i.13 = zext i8 %conv2.i.i.12 to i32
  %xor.i.i.13 = xor i32 %conv1.i.i.13, %conv.i.i.13
  %conv2.i.i.13 = trunc i32 %xor.i.i.13 to i8
  %scevgep162.14 = getelementptr i8, i8* %a, i64 14
  %14 = load i8, i8* %scevgep162.14, align 1
  %conv.i.i.14 = zext i8 %14 to i32
  %conv1.i.i.14 = zext i8 %conv2.i.i.13 to i32
  %xor.i.i.14 = xor i32 %conv1.i.i.14, %conv.i.i.14
  %conv2.i.i.14 = trunc i32 %xor.i.i.14 to i8
  %scevgep162.15 = getelementptr i8, i8* %a, i64 15
  %15 = load i8, i8* %scevgep162.15, align 1
  %conv.i.i.15 = zext i8 %15 to i32
  %conv1.i.i.15 = zext i8 %conv2.i.i.14 to i32
  %xor.i.i.15 = xor i32 %conv1.i.i.15, %conv.i.i.15
  %conv2.i.i.15 = trunc i32 %xor.i.i.15 to i8
  %conv3 = zext i8 %conv2.i.i.15 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %16 = load i8, i8* %b, align 1
  %scevgep158.1 = getelementptr i8, i8* %b, i64 1
  %17 = load i8, i8* %scevgep158.1, align 1
  %conv.i.i75.1 = zext i8 %17 to i32
  %conv1.i.i76.1 = zext i8 %16 to i32
  %xor.i.i77.1 = xor i32 %conv1.i.i76.1, %conv.i.i75.1
  %conv2.i.i78.1 = trunc i32 %xor.i.i77.1 to i8
  %scevgep158.2 = getelementptr i8, i8* %b, i64 2
  %18 = load i8, i8* %scevgep158.2, align 1
  %conv.i.i75.2 = zext i8 %18 to i32
  %conv1.i.i76.2 = zext i8 %conv2.i.i78.1 to i32
  %xor.i.i77.2 = xor i32 %conv1.i.i76.2, %conv.i.i75.2
  %conv2.i.i78.2 = trunc i32 %xor.i.i77.2 to i8
  %scevgep158.3 = getelementptr i8, i8* %b, i64 3
  %19 = load i8, i8* %scevgep158.3, align 1
  %conv.i.i75.3 = zext i8 %19 to i32
  %conv1.i.i76.3 = zext i8 %conv2.i.i78.2 to i32
  %xor.i.i77.3 = xor i32 %conv1.i.i76.3, %conv.i.i75.3
  %conv2.i.i78.3 = trunc i32 %xor.i.i77.3 to i8
  %scevgep158.4 = getelementptr i8, i8* %b, i64 4
  %20 = load i8, i8* %scevgep158.4, align 1
  %conv.i.i75.4 = zext i8 %20 to i32
  %conv1.i.i76.4 = zext i8 %conv2.i.i78.3 to i32
  %xor.i.i77.4 = xor i32 %conv1.i.i76.4, %conv.i.i75.4
  %conv2.i.i78.4 = trunc i32 %xor.i.i77.4 to i8
  %scevgep158.5 = getelementptr i8, i8* %b, i64 5
  %21 = load i8, i8* %scevgep158.5, align 1
  %conv.i.i75.5 = zext i8 %21 to i32
  %conv1.i.i76.5 = zext i8 %conv2.i.i78.4 to i32
  %xor.i.i77.5 = xor i32 %conv1.i.i76.5, %conv.i.i75.5
  %conv2.i.i78.5 = trunc i32 %xor.i.i77.5 to i8
  %scevgep158.6 = getelementptr i8, i8* %b, i64 6
  %22 = load i8, i8* %scevgep158.6, align 1
  %conv.i.i75.6 = zext i8 %22 to i32
  %conv1.i.i76.6 = zext i8 %conv2.i.i78.5 to i32
  %xor.i.i77.6 = xor i32 %conv1.i.i76.6, %conv.i.i75.6
  %conv2.i.i78.6 = trunc i32 %xor.i.i77.6 to i8
  %scevgep158.7 = getelementptr i8, i8* %b, i64 7
  %23 = load i8, i8* %scevgep158.7, align 1
  %conv.i.i75.7 = zext i8 %23 to i32
  %conv1.i.i76.7 = zext i8 %conv2.i.i78.6 to i32
  %xor.i.i77.7 = xor i32 %conv1.i.i76.7, %conv.i.i75.7
  %conv2.i.i78.7 = trunc i32 %xor.i.i77.7 to i8
  %scevgep158.8 = getelementptr i8, i8* %b, i64 8
  %24 = load i8, i8* %scevgep158.8, align 1
  %conv.i.i75.8 = zext i8 %24 to i32
  %conv1.i.i76.8 = zext i8 %conv2.i.i78.7 to i32
  %xor.i.i77.8 = xor i32 %conv1.i.i76.8, %conv.i.i75.8
  %conv2.i.i78.8 = trunc i32 %xor.i.i77.8 to i8
  %scevgep158.9 = getelementptr i8, i8* %b, i64 9
  %25 = load i8, i8* %scevgep158.9, align 1
  %conv.i.i75.9 = zext i8 %25 to i32
  %conv1.i.i76.9 = zext i8 %conv2.i.i78.8 to i32
  %xor.i.i77.9 = xor i32 %conv1.i.i76.9, %conv.i.i75.9
  %conv2.i.i78.9 = trunc i32 %xor.i.i77.9 to i8
  %scevgep158.10 = getelementptr i8, i8* %b, i64 10
  %26 = load i8, i8* %scevgep158.10, align 1
  %conv.i.i75.10 = zext i8 %26 to i32
  %conv1.i.i76.10 = zext i8 %conv2.i.i78.9 to i32
  %xor.i.i77.10 = xor i32 %conv1.i.i76.10, %conv.i.i75.10
  %conv2.i.i78.10 = trunc i32 %xor.i.i77.10 to i8
  %scevgep158.11 = getelementptr i8, i8* %b, i64 11
  %27 = load i8, i8* %scevgep158.11, align 1
  %conv.i.i75.11 = zext i8 %27 to i32
  %conv1.i.i76.11 = zext i8 %conv2.i.i78.10 to i32
  %xor.i.i77.11 = xor i32 %conv1.i.i76.11, %conv.i.i75.11
  %conv2.i.i78.11 = trunc i32 %xor.i.i77.11 to i8
  %scevgep158.12 = getelementptr i8, i8* %b, i64 12
  %28 = load i8, i8* %scevgep158.12, align 1
  %conv.i.i75.12 = zext i8 %28 to i32
  %conv1.i.i76.12 = zext i8 %conv2.i.i78.11 to i32
  %xor.i.i77.12 = xor i32 %conv1.i.i76.12, %conv.i.i75.12
  %conv2.i.i78.12 = trunc i32 %xor.i.i77.12 to i8
  %scevgep158.13 = getelementptr i8, i8* %b, i64 13
  %29 = load i8, i8* %scevgep158.13, align 1
  %conv.i.i75.13 = zext i8 %29 to i32
  %conv1.i.i76.13 = zext i8 %conv2.i.i78.12 to i32
  %xor.i.i77.13 = xor i32 %conv1.i.i76.13, %conv.i.i75.13
  %conv2.i.i78.13 = trunc i32 %xor.i.i77.13 to i8
  %scevgep158.14 = getelementptr i8, i8* %b, i64 14
  %30 = load i8, i8* %scevgep158.14, align 1
  %conv.i.i75.14 = zext i8 %30 to i32
  %conv1.i.i76.14 = zext i8 %conv2.i.i78.13 to i32
  %xor.i.i77.14 = xor i32 %conv1.i.i76.14, %conv.i.i75.14
  %conv2.i.i78.14 = trunc i32 %xor.i.i77.14 to i8
  %scevgep158.15 = getelementptr i8, i8* %b, i64 15
  %31 = load i8, i8* %scevgep158.15, align 1
  %conv.i.i75.15 = zext i8 %31 to i32
  %conv1.i.i76.15 = zext i8 %conv2.i.i78.14 to i32
  %xor.i.i77.15 = xor i32 %conv1.i.i76.15, %conv.i.i75.15
  %conv2.i.i78.15 = trunc i32 %xor.i.i77.15 to i8
  %conv7 = zext i8 %conv2.i.i78.15 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep154 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep154, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep154.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep154.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep154.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep154.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep154.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep154.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep154.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep154.4, align 1
  %call16.5 = call zeroext i8 (...) @rand()
  %scevgep154.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 5
  store i8 %call16.5, i8* %scevgep154.5, align 1
  %call16.6 = call zeroext i8 (...) @rand()
  %scevgep154.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 6
  store i8 %call16.6, i8* %scevgep154.6, align 1
  %call16.7 = call zeroext i8 (...) @rand()
  %scevgep154.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 7
  store i8 %call16.7, i8* %scevgep154.7, align 1
  %call16.8 = call zeroext i8 (...) @rand()
  %scevgep154.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 8
  store i8 %call16.8, i8* %scevgep154.8, align 1
  %call16.9 = call zeroext i8 (...) @rand()
  %scevgep154.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 9
  store i8 %call16.9, i8* %scevgep154.9, align 1
  %call16.10 = call zeroext i8 (...) @rand()
  %scevgep154.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 10
  store i8 %call16.10, i8* %scevgep154.10, align 1
  %call16.11 = call zeroext i8 (...) @rand()
  %scevgep154.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 11
  store i8 %call16.11, i8* %scevgep154.11, align 1
  %call16.12 = call zeroext i8 (...) @rand()
  %scevgep154.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 12
  store i8 %call16.12, i8* %scevgep154.12, align 1
  %call16.13 = call zeroext i8 (...) @rand()
  %scevgep154.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 13
  store i8 %call16.13, i8* %scevgep154.13, align 1
  %call16.14 = call zeroext i8 (...) @rand()
  %scevgep154.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 14
  store i8 %call16.14, i8* %scevgep154.14, align 1
  %call16.15 = call zeroext i8 (...) @rand()
  %scevgep154.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 15
  store i8 %call16.15, i8* %scevgep154.15, align 1
  %scevgep151 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep151 to [16 x [16 x i8]]*
  %call16.1272 = call zeroext i8 (...) @rand()
  %scevgep154.1273 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 0
  store i8 %call16.1272, i8* %scevgep154.1273, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep154.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep154.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep154.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep154.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep154.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep154.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep154.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep154.4.1, align 1
  %call16.5.1 = call zeroext i8 (...) @rand()
  %scevgep154.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 5
  store i8 %call16.5.1, i8* %scevgep154.5.1, align 1
  %call16.6.1 = call zeroext i8 (...) @rand()
  %scevgep154.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 6
  store i8 %call16.6.1, i8* %scevgep154.6.1, align 1
  %call16.7.1 = call zeroext i8 (...) @rand()
  %scevgep154.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 7
  store i8 %call16.7.1, i8* %scevgep154.7.1, align 1
  %call16.8.1 = call zeroext i8 (...) @rand()
  %scevgep154.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 8
  store i8 %call16.8.1, i8* %scevgep154.8.1, align 1
  %call16.9.1 = call zeroext i8 (...) @rand()
  %scevgep154.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 9
  store i8 %call16.9.1, i8* %scevgep154.9.1, align 1
  %call16.10.1 = call zeroext i8 (...) @rand()
  %scevgep154.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 10
  store i8 %call16.10.1, i8* %scevgep154.10.1, align 1
  %call16.11.1 = call zeroext i8 (...) @rand()
  %scevgep154.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 11
  store i8 %call16.11.1, i8* %scevgep154.11.1, align 1
  %call16.12.1 = call zeroext i8 (...) @rand()
  %scevgep154.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 12
  store i8 %call16.12.1, i8* %scevgep154.12.1, align 1
  %call16.13.1 = call zeroext i8 (...) @rand()
  %scevgep154.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 13
  store i8 %call16.13.1, i8* %scevgep154.13.1, align 1
  %call16.14.1 = call zeroext i8 (...) @rand()
  %scevgep154.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 14
  store i8 %call16.14.1, i8* %scevgep154.14.1, align 1
  %call16.15.1 = call zeroext i8 (...) @rand()
  %scevgep154.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 0, i64 15
  store i8 %call16.15.1, i8* %scevgep154.15.1, align 1
  %scevgep151.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %32, i64 0, i64 1, i64 0
  %33 = bitcast i8* %scevgep151.1 to [16 x [16 x i8]]*
  %call16.2275 = call zeroext i8 (...) @rand()
  %scevgep154.2276 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 0
  store i8 %call16.2275, i8* %scevgep154.2276, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep154.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep154.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep154.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep154.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep154.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep154.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep154.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep154.4.2, align 1
  %call16.5.2 = call zeroext i8 (...) @rand()
  %scevgep154.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 5
  store i8 %call16.5.2, i8* %scevgep154.5.2, align 1
  %call16.6.2 = call zeroext i8 (...) @rand()
  %scevgep154.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 6
  store i8 %call16.6.2, i8* %scevgep154.6.2, align 1
  %call16.7.2 = call zeroext i8 (...) @rand()
  %scevgep154.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 7
  store i8 %call16.7.2, i8* %scevgep154.7.2, align 1
  %call16.8.2 = call zeroext i8 (...) @rand()
  %scevgep154.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 8
  store i8 %call16.8.2, i8* %scevgep154.8.2, align 1
  %call16.9.2 = call zeroext i8 (...) @rand()
  %scevgep154.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 9
  store i8 %call16.9.2, i8* %scevgep154.9.2, align 1
  %call16.10.2 = call zeroext i8 (...) @rand()
  %scevgep154.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 10
  store i8 %call16.10.2, i8* %scevgep154.10.2, align 1
  %call16.11.2 = call zeroext i8 (...) @rand()
  %scevgep154.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 11
  store i8 %call16.11.2, i8* %scevgep154.11.2, align 1
  %call16.12.2 = call zeroext i8 (...) @rand()
  %scevgep154.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 12
  store i8 %call16.12.2, i8* %scevgep154.12.2, align 1
  %call16.13.2 = call zeroext i8 (...) @rand()
  %scevgep154.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 13
  store i8 %call16.13.2, i8* %scevgep154.13.2, align 1
  %call16.14.2 = call zeroext i8 (...) @rand()
  %scevgep154.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 14
  store i8 %call16.14.2, i8* %scevgep154.14.2, align 1
  %call16.15.2 = call zeroext i8 (...) @rand()
  %scevgep154.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 0, i64 15
  store i8 %call16.15.2, i8* %scevgep154.15.2, align 1
  %scevgep151.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %33, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep151.2 to [16 x [16 x i8]]*
  %call16.3278 = call zeroext i8 (...) @rand()
  %scevgep154.3279 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 0
  store i8 %call16.3278, i8* %scevgep154.3279, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep154.1.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep154.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep154.2.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep154.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep154.3.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep154.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep154.4.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep154.4.3, align 1
  %call16.5.3 = call zeroext i8 (...) @rand()
  %scevgep154.5.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 5
  store i8 %call16.5.3, i8* %scevgep154.5.3, align 1
  %call16.6.3 = call zeroext i8 (...) @rand()
  %scevgep154.6.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 6
  store i8 %call16.6.3, i8* %scevgep154.6.3, align 1
  %call16.7.3 = call zeroext i8 (...) @rand()
  %scevgep154.7.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 7
  store i8 %call16.7.3, i8* %scevgep154.7.3, align 1
  %call16.8.3 = call zeroext i8 (...) @rand()
  %scevgep154.8.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 8
  store i8 %call16.8.3, i8* %scevgep154.8.3, align 1
  %call16.9.3 = call zeroext i8 (...) @rand()
  %scevgep154.9.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 9
  store i8 %call16.9.3, i8* %scevgep154.9.3, align 1
  %call16.10.3 = call zeroext i8 (...) @rand()
  %scevgep154.10.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 10
  store i8 %call16.10.3, i8* %scevgep154.10.3, align 1
  %call16.11.3 = call zeroext i8 (...) @rand()
  %scevgep154.11.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 11
  store i8 %call16.11.3, i8* %scevgep154.11.3, align 1
  %call16.12.3 = call zeroext i8 (...) @rand()
  %scevgep154.12.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 12
  store i8 %call16.12.3, i8* %scevgep154.12.3, align 1
  %call16.13.3 = call zeroext i8 (...) @rand()
  %scevgep154.13.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 13
  store i8 %call16.13.3, i8* %scevgep154.13.3, align 1
  %call16.14.3 = call zeroext i8 (...) @rand()
  %scevgep154.14.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 14
  store i8 %call16.14.3, i8* %scevgep154.14.3, align 1
  %call16.15.3 = call zeroext i8 (...) @rand()
  %scevgep154.15.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 0, i64 15
  store i8 %call16.15.3, i8* %scevgep154.15.3, align 1
  %scevgep151.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %34, i64 0, i64 1, i64 0
  %35 = bitcast i8* %scevgep151.3 to [16 x [16 x i8]]*
  %call16.4281 = call zeroext i8 (...) @rand()
  %scevgep154.4282 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 0
  store i8 %call16.4281, i8* %scevgep154.4282, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep154.1.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep154.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep154.2.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep154.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep154.3.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep154.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep154.4.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep154.4.4, align 1
  %call16.5.4 = call zeroext i8 (...) @rand()
  %scevgep154.5.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 5
  store i8 %call16.5.4, i8* %scevgep154.5.4, align 1
  %call16.6.4 = call zeroext i8 (...) @rand()
  %scevgep154.6.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 6
  store i8 %call16.6.4, i8* %scevgep154.6.4, align 1
  %call16.7.4 = call zeroext i8 (...) @rand()
  %scevgep154.7.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 7
  store i8 %call16.7.4, i8* %scevgep154.7.4, align 1
  %call16.8.4 = call zeroext i8 (...) @rand()
  %scevgep154.8.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 8
  store i8 %call16.8.4, i8* %scevgep154.8.4, align 1
  %call16.9.4 = call zeroext i8 (...) @rand()
  %scevgep154.9.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 9
  store i8 %call16.9.4, i8* %scevgep154.9.4, align 1
  %call16.10.4 = call zeroext i8 (...) @rand()
  %scevgep154.10.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 10
  store i8 %call16.10.4, i8* %scevgep154.10.4, align 1
  %call16.11.4 = call zeroext i8 (...) @rand()
  %scevgep154.11.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 11
  store i8 %call16.11.4, i8* %scevgep154.11.4, align 1
  %call16.12.4 = call zeroext i8 (...) @rand()
  %scevgep154.12.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 12
  store i8 %call16.12.4, i8* %scevgep154.12.4, align 1
  %call16.13.4 = call zeroext i8 (...) @rand()
  %scevgep154.13.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 13
  store i8 %call16.13.4, i8* %scevgep154.13.4, align 1
  %call16.14.4 = call zeroext i8 (...) @rand()
  %scevgep154.14.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 14
  store i8 %call16.14.4, i8* %scevgep154.14.4, align 1
  %call16.15.4 = call zeroext i8 (...) @rand()
  %scevgep154.15.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 0, i64 15
  store i8 %call16.15.4, i8* %scevgep154.15.4, align 1
  %scevgep151.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %35, i64 0, i64 1, i64 0
  %36 = bitcast i8* %scevgep151.4 to [16 x [16 x i8]]*
  %call16.5284 = call zeroext i8 (...) @rand()
  %scevgep154.5285 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 0
  store i8 %call16.5284, i8* %scevgep154.5285, align 1
  %call16.1.5 = call zeroext i8 (...) @rand()
  %scevgep154.1.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 1
  store i8 %call16.1.5, i8* %scevgep154.1.5, align 1
  %call16.2.5 = call zeroext i8 (...) @rand()
  %scevgep154.2.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 2
  store i8 %call16.2.5, i8* %scevgep154.2.5, align 1
  %call16.3.5 = call zeroext i8 (...) @rand()
  %scevgep154.3.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 3
  store i8 %call16.3.5, i8* %scevgep154.3.5, align 1
  %call16.4.5 = call zeroext i8 (...) @rand()
  %scevgep154.4.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 4
  store i8 %call16.4.5, i8* %scevgep154.4.5, align 1
  %call16.5.5 = call zeroext i8 (...) @rand()
  %scevgep154.5.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 5
  store i8 %call16.5.5, i8* %scevgep154.5.5, align 1
  %call16.6.5 = call zeroext i8 (...) @rand()
  %scevgep154.6.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 6
  store i8 %call16.6.5, i8* %scevgep154.6.5, align 1
  %call16.7.5 = call zeroext i8 (...) @rand()
  %scevgep154.7.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 7
  store i8 %call16.7.5, i8* %scevgep154.7.5, align 1
  %call16.8.5 = call zeroext i8 (...) @rand()
  %scevgep154.8.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 8
  store i8 %call16.8.5, i8* %scevgep154.8.5, align 1
  %call16.9.5 = call zeroext i8 (...) @rand()
  %scevgep154.9.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 9
  store i8 %call16.9.5, i8* %scevgep154.9.5, align 1
  %call16.10.5 = call zeroext i8 (...) @rand()
  %scevgep154.10.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 10
  store i8 %call16.10.5, i8* %scevgep154.10.5, align 1
  %call16.11.5 = call zeroext i8 (...) @rand()
  %scevgep154.11.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 11
  store i8 %call16.11.5, i8* %scevgep154.11.5, align 1
  %call16.12.5 = call zeroext i8 (...) @rand()
  %scevgep154.12.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 12
  store i8 %call16.12.5, i8* %scevgep154.12.5, align 1
  %call16.13.5 = call zeroext i8 (...) @rand()
  %scevgep154.13.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 13
  store i8 %call16.13.5, i8* %scevgep154.13.5, align 1
  %call16.14.5 = call zeroext i8 (...) @rand()
  %scevgep154.14.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 14
  store i8 %call16.14.5, i8* %scevgep154.14.5, align 1
  %call16.15.5 = call zeroext i8 (...) @rand()
  %scevgep154.15.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 0, i64 15
  store i8 %call16.15.5, i8* %scevgep154.15.5, align 1
  %scevgep151.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %36, i64 0, i64 1, i64 0
  %37 = bitcast i8* %scevgep151.5 to [16 x [16 x i8]]*
  %call16.6287 = call zeroext i8 (...) @rand()
  %scevgep154.6288 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 0
  store i8 %call16.6287, i8* %scevgep154.6288, align 1
  %call16.1.6 = call zeroext i8 (...) @rand()
  %scevgep154.1.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 1
  store i8 %call16.1.6, i8* %scevgep154.1.6, align 1
  %call16.2.6 = call zeroext i8 (...) @rand()
  %scevgep154.2.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 2
  store i8 %call16.2.6, i8* %scevgep154.2.6, align 1
  %call16.3.6 = call zeroext i8 (...) @rand()
  %scevgep154.3.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 3
  store i8 %call16.3.6, i8* %scevgep154.3.6, align 1
  %call16.4.6 = call zeroext i8 (...) @rand()
  %scevgep154.4.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 4
  store i8 %call16.4.6, i8* %scevgep154.4.6, align 1
  %call16.5.6 = call zeroext i8 (...) @rand()
  %scevgep154.5.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 5
  store i8 %call16.5.6, i8* %scevgep154.5.6, align 1
  %call16.6.6 = call zeroext i8 (...) @rand()
  %scevgep154.6.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 6
  store i8 %call16.6.6, i8* %scevgep154.6.6, align 1
  %call16.7.6 = call zeroext i8 (...) @rand()
  %scevgep154.7.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 7
  store i8 %call16.7.6, i8* %scevgep154.7.6, align 1
  %call16.8.6 = call zeroext i8 (...) @rand()
  %scevgep154.8.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 8
  store i8 %call16.8.6, i8* %scevgep154.8.6, align 1
  %call16.9.6 = call zeroext i8 (...) @rand()
  %scevgep154.9.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 9
  store i8 %call16.9.6, i8* %scevgep154.9.6, align 1
  %call16.10.6 = call zeroext i8 (...) @rand()
  %scevgep154.10.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 10
  store i8 %call16.10.6, i8* %scevgep154.10.6, align 1
  %call16.11.6 = call zeroext i8 (...) @rand()
  %scevgep154.11.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 11
  store i8 %call16.11.6, i8* %scevgep154.11.6, align 1
  %call16.12.6 = call zeroext i8 (...) @rand()
  %scevgep154.12.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 12
  store i8 %call16.12.6, i8* %scevgep154.12.6, align 1
  %call16.13.6 = call zeroext i8 (...) @rand()
  %scevgep154.13.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 13
  store i8 %call16.13.6, i8* %scevgep154.13.6, align 1
  %call16.14.6 = call zeroext i8 (...) @rand()
  %scevgep154.14.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 14
  store i8 %call16.14.6, i8* %scevgep154.14.6, align 1
  %call16.15.6 = call zeroext i8 (...) @rand()
  %scevgep154.15.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 0, i64 15
  store i8 %call16.15.6, i8* %scevgep154.15.6, align 1
  %scevgep151.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %37, i64 0, i64 1, i64 0
  %38 = bitcast i8* %scevgep151.6 to [16 x [16 x i8]]*
  %call16.7290 = call zeroext i8 (...) @rand()
  %scevgep154.7291 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 0
  store i8 %call16.7290, i8* %scevgep154.7291, align 1
  %call16.1.7 = call zeroext i8 (...) @rand()
  %scevgep154.1.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 1
  store i8 %call16.1.7, i8* %scevgep154.1.7, align 1
  %call16.2.7 = call zeroext i8 (...) @rand()
  %scevgep154.2.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 2
  store i8 %call16.2.7, i8* %scevgep154.2.7, align 1
  %call16.3.7 = call zeroext i8 (...) @rand()
  %scevgep154.3.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 3
  store i8 %call16.3.7, i8* %scevgep154.3.7, align 1
  %call16.4.7 = call zeroext i8 (...) @rand()
  %scevgep154.4.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 4
  store i8 %call16.4.7, i8* %scevgep154.4.7, align 1
  %call16.5.7 = call zeroext i8 (...) @rand()
  %scevgep154.5.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 5
  store i8 %call16.5.7, i8* %scevgep154.5.7, align 1
  %call16.6.7 = call zeroext i8 (...) @rand()
  %scevgep154.6.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 6
  store i8 %call16.6.7, i8* %scevgep154.6.7, align 1
  %call16.7.7 = call zeroext i8 (...) @rand()
  %scevgep154.7.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 7
  store i8 %call16.7.7, i8* %scevgep154.7.7, align 1
  %call16.8.7 = call zeroext i8 (...) @rand()
  %scevgep154.8.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 8
  store i8 %call16.8.7, i8* %scevgep154.8.7, align 1
  %call16.9.7 = call zeroext i8 (...) @rand()
  %scevgep154.9.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 9
  store i8 %call16.9.7, i8* %scevgep154.9.7, align 1
  %call16.10.7 = call zeroext i8 (...) @rand()
  %scevgep154.10.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 10
  store i8 %call16.10.7, i8* %scevgep154.10.7, align 1
  %call16.11.7 = call zeroext i8 (...) @rand()
  %scevgep154.11.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 11
  store i8 %call16.11.7, i8* %scevgep154.11.7, align 1
  %call16.12.7 = call zeroext i8 (...) @rand()
  %scevgep154.12.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 12
  store i8 %call16.12.7, i8* %scevgep154.12.7, align 1
  %call16.13.7 = call zeroext i8 (...) @rand()
  %scevgep154.13.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 13
  store i8 %call16.13.7, i8* %scevgep154.13.7, align 1
  %call16.14.7 = call zeroext i8 (...) @rand()
  %scevgep154.14.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 14
  store i8 %call16.14.7, i8* %scevgep154.14.7, align 1
  %call16.15.7 = call zeroext i8 (...) @rand()
  %scevgep154.15.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 0, i64 15
  store i8 %call16.15.7, i8* %scevgep154.15.7, align 1
  %scevgep151.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %38, i64 0, i64 1, i64 0
  %39 = bitcast i8* %scevgep151.7 to [16 x [16 x i8]]*
  %call16.8293 = call zeroext i8 (...) @rand()
  %scevgep154.8294 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 0
  store i8 %call16.8293, i8* %scevgep154.8294, align 1
  %call16.1.8 = call zeroext i8 (...) @rand()
  %scevgep154.1.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 1
  store i8 %call16.1.8, i8* %scevgep154.1.8, align 1
  %call16.2.8 = call zeroext i8 (...) @rand()
  %scevgep154.2.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 2
  store i8 %call16.2.8, i8* %scevgep154.2.8, align 1
  %call16.3.8 = call zeroext i8 (...) @rand()
  %scevgep154.3.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 3
  store i8 %call16.3.8, i8* %scevgep154.3.8, align 1
  %call16.4.8 = call zeroext i8 (...) @rand()
  %scevgep154.4.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 4
  store i8 %call16.4.8, i8* %scevgep154.4.8, align 1
  %call16.5.8 = call zeroext i8 (...) @rand()
  %scevgep154.5.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 5
  store i8 %call16.5.8, i8* %scevgep154.5.8, align 1
  %call16.6.8 = call zeroext i8 (...) @rand()
  %scevgep154.6.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 6
  store i8 %call16.6.8, i8* %scevgep154.6.8, align 1
  %call16.7.8 = call zeroext i8 (...) @rand()
  %scevgep154.7.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 7
  store i8 %call16.7.8, i8* %scevgep154.7.8, align 1
  %call16.8.8 = call zeroext i8 (...) @rand()
  %scevgep154.8.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 8
  store i8 %call16.8.8, i8* %scevgep154.8.8, align 1
  %call16.9.8 = call zeroext i8 (...) @rand()
  %scevgep154.9.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 9
  store i8 %call16.9.8, i8* %scevgep154.9.8, align 1
  %call16.10.8 = call zeroext i8 (...) @rand()
  %scevgep154.10.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 10
  store i8 %call16.10.8, i8* %scevgep154.10.8, align 1
  %call16.11.8 = call zeroext i8 (...) @rand()
  %scevgep154.11.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 11
  store i8 %call16.11.8, i8* %scevgep154.11.8, align 1
  %call16.12.8 = call zeroext i8 (...) @rand()
  %scevgep154.12.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 12
  store i8 %call16.12.8, i8* %scevgep154.12.8, align 1
  %call16.13.8 = call zeroext i8 (...) @rand()
  %scevgep154.13.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 13
  store i8 %call16.13.8, i8* %scevgep154.13.8, align 1
  %call16.14.8 = call zeroext i8 (...) @rand()
  %scevgep154.14.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 14
  store i8 %call16.14.8, i8* %scevgep154.14.8, align 1
  %call16.15.8 = call zeroext i8 (...) @rand()
  %scevgep154.15.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 0, i64 15
  store i8 %call16.15.8, i8* %scevgep154.15.8, align 1
  %scevgep151.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %39, i64 0, i64 1, i64 0
  %40 = bitcast i8* %scevgep151.8 to [16 x [16 x i8]]*
  %call16.9296 = call zeroext i8 (...) @rand()
  %scevgep154.9297 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 0
  store i8 %call16.9296, i8* %scevgep154.9297, align 1
  %call16.1.9 = call zeroext i8 (...) @rand()
  %scevgep154.1.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 1
  store i8 %call16.1.9, i8* %scevgep154.1.9, align 1
  %call16.2.9 = call zeroext i8 (...) @rand()
  %scevgep154.2.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 2
  store i8 %call16.2.9, i8* %scevgep154.2.9, align 1
  %call16.3.9 = call zeroext i8 (...) @rand()
  %scevgep154.3.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 3
  store i8 %call16.3.9, i8* %scevgep154.3.9, align 1
  %call16.4.9 = call zeroext i8 (...) @rand()
  %scevgep154.4.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 4
  store i8 %call16.4.9, i8* %scevgep154.4.9, align 1
  %call16.5.9 = call zeroext i8 (...) @rand()
  %scevgep154.5.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 5
  store i8 %call16.5.9, i8* %scevgep154.5.9, align 1
  %call16.6.9 = call zeroext i8 (...) @rand()
  %scevgep154.6.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 6
  store i8 %call16.6.9, i8* %scevgep154.6.9, align 1
  %call16.7.9 = call zeroext i8 (...) @rand()
  %scevgep154.7.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 7
  store i8 %call16.7.9, i8* %scevgep154.7.9, align 1
  %call16.8.9 = call zeroext i8 (...) @rand()
  %scevgep154.8.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 8
  store i8 %call16.8.9, i8* %scevgep154.8.9, align 1
  %call16.9.9 = call zeroext i8 (...) @rand()
  %scevgep154.9.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 9
  store i8 %call16.9.9, i8* %scevgep154.9.9, align 1
  %call16.10.9 = call zeroext i8 (...) @rand()
  %scevgep154.10.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 10
  store i8 %call16.10.9, i8* %scevgep154.10.9, align 1
  %call16.11.9 = call zeroext i8 (...) @rand()
  %scevgep154.11.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 11
  store i8 %call16.11.9, i8* %scevgep154.11.9, align 1
  %call16.12.9 = call zeroext i8 (...) @rand()
  %scevgep154.12.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 12
  store i8 %call16.12.9, i8* %scevgep154.12.9, align 1
  %call16.13.9 = call zeroext i8 (...) @rand()
  %scevgep154.13.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 13
  store i8 %call16.13.9, i8* %scevgep154.13.9, align 1
  %call16.14.9 = call zeroext i8 (...) @rand()
  %scevgep154.14.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 14
  store i8 %call16.14.9, i8* %scevgep154.14.9, align 1
  %call16.15.9 = call zeroext i8 (...) @rand()
  %scevgep154.15.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 0, i64 15
  store i8 %call16.15.9, i8* %scevgep154.15.9, align 1
  %scevgep151.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %40, i64 0, i64 1, i64 0
  %41 = bitcast i8* %scevgep151.9 to [16 x [16 x i8]]*
  %call16.10299 = call zeroext i8 (...) @rand()
  %scevgep154.10300 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 0
  store i8 %call16.10299, i8* %scevgep154.10300, align 1
  %call16.1.10 = call zeroext i8 (...) @rand()
  %scevgep154.1.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 1
  store i8 %call16.1.10, i8* %scevgep154.1.10, align 1
  %call16.2.10 = call zeroext i8 (...) @rand()
  %scevgep154.2.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 2
  store i8 %call16.2.10, i8* %scevgep154.2.10, align 1
  %call16.3.10 = call zeroext i8 (...) @rand()
  %scevgep154.3.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 3
  store i8 %call16.3.10, i8* %scevgep154.3.10, align 1
  %call16.4.10 = call zeroext i8 (...) @rand()
  %scevgep154.4.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 4
  store i8 %call16.4.10, i8* %scevgep154.4.10, align 1
  %call16.5.10 = call zeroext i8 (...) @rand()
  %scevgep154.5.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 5
  store i8 %call16.5.10, i8* %scevgep154.5.10, align 1
  %call16.6.10 = call zeroext i8 (...) @rand()
  %scevgep154.6.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 6
  store i8 %call16.6.10, i8* %scevgep154.6.10, align 1
  %call16.7.10 = call zeroext i8 (...) @rand()
  %scevgep154.7.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 7
  store i8 %call16.7.10, i8* %scevgep154.7.10, align 1
  %call16.8.10 = call zeroext i8 (...) @rand()
  %scevgep154.8.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 8
  store i8 %call16.8.10, i8* %scevgep154.8.10, align 1
  %call16.9.10 = call zeroext i8 (...) @rand()
  %scevgep154.9.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 9
  store i8 %call16.9.10, i8* %scevgep154.9.10, align 1
  %call16.10.10 = call zeroext i8 (...) @rand()
  %scevgep154.10.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 10
  store i8 %call16.10.10, i8* %scevgep154.10.10, align 1
  %call16.11.10 = call zeroext i8 (...) @rand()
  %scevgep154.11.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 11
  store i8 %call16.11.10, i8* %scevgep154.11.10, align 1
  %call16.12.10 = call zeroext i8 (...) @rand()
  %scevgep154.12.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 12
  store i8 %call16.12.10, i8* %scevgep154.12.10, align 1
  %call16.13.10 = call zeroext i8 (...) @rand()
  %scevgep154.13.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 13
  store i8 %call16.13.10, i8* %scevgep154.13.10, align 1
  %call16.14.10 = call zeroext i8 (...) @rand()
  %scevgep154.14.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 14
  store i8 %call16.14.10, i8* %scevgep154.14.10, align 1
  %call16.15.10 = call zeroext i8 (...) @rand()
  %scevgep154.15.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 0, i64 15
  store i8 %call16.15.10, i8* %scevgep154.15.10, align 1
  %scevgep151.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %41, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep151.10 to [16 x [16 x i8]]*
  %call16.11302 = call zeroext i8 (...) @rand()
  %scevgep154.11303 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 0
  store i8 %call16.11302, i8* %scevgep154.11303, align 1
  %call16.1.11 = call zeroext i8 (...) @rand()
  %scevgep154.1.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 1
  store i8 %call16.1.11, i8* %scevgep154.1.11, align 1
  %call16.2.11 = call zeroext i8 (...) @rand()
  %scevgep154.2.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 2
  store i8 %call16.2.11, i8* %scevgep154.2.11, align 1
  %call16.3.11 = call zeroext i8 (...) @rand()
  %scevgep154.3.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 3
  store i8 %call16.3.11, i8* %scevgep154.3.11, align 1
  %call16.4.11 = call zeroext i8 (...) @rand()
  %scevgep154.4.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 4
  store i8 %call16.4.11, i8* %scevgep154.4.11, align 1
  %call16.5.11 = call zeroext i8 (...) @rand()
  %scevgep154.5.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 5
  store i8 %call16.5.11, i8* %scevgep154.5.11, align 1
  %call16.6.11 = call zeroext i8 (...) @rand()
  %scevgep154.6.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 6
  store i8 %call16.6.11, i8* %scevgep154.6.11, align 1
  %call16.7.11 = call zeroext i8 (...) @rand()
  %scevgep154.7.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 7
  store i8 %call16.7.11, i8* %scevgep154.7.11, align 1
  %call16.8.11 = call zeroext i8 (...) @rand()
  %scevgep154.8.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 8
  store i8 %call16.8.11, i8* %scevgep154.8.11, align 1
  %call16.9.11 = call zeroext i8 (...) @rand()
  %scevgep154.9.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 9
  store i8 %call16.9.11, i8* %scevgep154.9.11, align 1
  %call16.10.11 = call zeroext i8 (...) @rand()
  %scevgep154.10.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 10
  store i8 %call16.10.11, i8* %scevgep154.10.11, align 1
  %call16.11.11 = call zeroext i8 (...) @rand()
  %scevgep154.11.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 11
  store i8 %call16.11.11, i8* %scevgep154.11.11, align 1
  %call16.12.11 = call zeroext i8 (...) @rand()
  %scevgep154.12.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 12
  store i8 %call16.12.11, i8* %scevgep154.12.11, align 1
  %call16.13.11 = call zeroext i8 (...) @rand()
  %scevgep154.13.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 13
  store i8 %call16.13.11, i8* %scevgep154.13.11, align 1
  %call16.14.11 = call zeroext i8 (...) @rand()
  %scevgep154.14.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 14
  store i8 %call16.14.11, i8* %scevgep154.14.11, align 1
  %call16.15.11 = call zeroext i8 (...) @rand()
  %scevgep154.15.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 0, i64 15
  store i8 %call16.15.11, i8* %scevgep154.15.11, align 1
  %scevgep151.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %42, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep151.11 to [16 x [16 x i8]]*
  %call16.12305 = call zeroext i8 (...) @rand()
  %scevgep154.12306 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 0
  store i8 %call16.12305, i8* %scevgep154.12306, align 1
  %call16.1.12 = call zeroext i8 (...) @rand()
  %scevgep154.1.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 1
  store i8 %call16.1.12, i8* %scevgep154.1.12, align 1
  %call16.2.12 = call zeroext i8 (...) @rand()
  %scevgep154.2.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 2
  store i8 %call16.2.12, i8* %scevgep154.2.12, align 1
  %call16.3.12 = call zeroext i8 (...) @rand()
  %scevgep154.3.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 3
  store i8 %call16.3.12, i8* %scevgep154.3.12, align 1
  %call16.4.12 = call zeroext i8 (...) @rand()
  %scevgep154.4.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 4
  store i8 %call16.4.12, i8* %scevgep154.4.12, align 1
  %call16.5.12 = call zeroext i8 (...) @rand()
  %scevgep154.5.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 5
  store i8 %call16.5.12, i8* %scevgep154.5.12, align 1
  %call16.6.12 = call zeroext i8 (...) @rand()
  %scevgep154.6.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 6
  store i8 %call16.6.12, i8* %scevgep154.6.12, align 1
  %call16.7.12 = call zeroext i8 (...) @rand()
  %scevgep154.7.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 7
  store i8 %call16.7.12, i8* %scevgep154.7.12, align 1
  %call16.8.12 = call zeroext i8 (...) @rand()
  %scevgep154.8.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 8
  store i8 %call16.8.12, i8* %scevgep154.8.12, align 1
  %call16.9.12 = call zeroext i8 (...) @rand()
  %scevgep154.9.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 9
  store i8 %call16.9.12, i8* %scevgep154.9.12, align 1
  %call16.10.12 = call zeroext i8 (...) @rand()
  %scevgep154.10.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 10
  store i8 %call16.10.12, i8* %scevgep154.10.12, align 1
  %call16.11.12 = call zeroext i8 (...) @rand()
  %scevgep154.11.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 11
  store i8 %call16.11.12, i8* %scevgep154.11.12, align 1
  %call16.12.12 = call zeroext i8 (...) @rand()
  %scevgep154.12.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 12
  store i8 %call16.12.12, i8* %scevgep154.12.12, align 1
  %call16.13.12 = call zeroext i8 (...) @rand()
  %scevgep154.13.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 13
  store i8 %call16.13.12, i8* %scevgep154.13.12, align 1
  %call16.14.12 = call zeroext i8 (...) @rand()
  %scevgep154.14.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 14
  store i8 %call16.14.12, i8* %scevgep154.14.12, align 1
  %call16.15.12 = call zeroext i8 (...) @rand()
  %scevgep154.15.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 0, i64 15
  store i8 %call16.15.12, i8* %scevgep154.15.12, align 1
  %scevgep151.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %43, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep151.12 to [16 x [16 x i8]]*
  %call16.13308 = call zeroext i8 (...) @rand()
  %scevgep154.13309 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 0
  store i8 %call16.13308, i8* %scevgep154.13309, align 1
  %call16.1.13 = call zeroext i8 (...) @rand()
  %scevgep154.1.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 1
  store i8 %call16.1.13, i8* %scevgep154.1.13, align 1
  %call16.2.13 = call zeroext i8 (...) @rand()
  %scevgep154.2.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 2
  store i8 %call16.2.13, i8* %scevgep154.2.13, align 1
  %call16.3.13 = call zeroext i8 (...) @rand()
  %scevgep154.3.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 3
  store i8 %call16.3.13, i8* %scevgep154.3.13, align 1
  %call16.4.13 = call zeroext i8 (...) @rand()
  %scevgep154.4.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 4
  store i8 %call16.4.13, i8* %scevgep154.4.13, align 1
  %call16.5.13 = call zeroext i8 (...) @rand()
  %scevgep154.5.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 5
  store i8 %call16.5.13, i8* %scevgep154.5.13, align 1
  %call16.6.13 = call zeroext i8 (...) @rand()
  %scevgep154.6.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 6
  store i8 %call16.6.13, i8* %scevgep154.6.13, align 1
  %call16.7.13 = call zeroext i8 (...) @rand()
  %scevgep154.7.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 7
  store i8 %call16.7.13, i8* %scevgep154.7.13, align 1
  %call16.8.13 = call zeroext i8 (...) @rand()
  %scevgep154.8.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 8
  store i8 %call16.8.13, i8* %scevgep154.8.13, align 1
  %call16.9.13 = call zeroext i8 (...) @rand()
  %scevgep154.9.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 9
  store i8 %call16.9.13, i8* %scevgep154.9.13, align 1
  %call16.10.13 = call zeroext i8 (...) @rand()
  %scevgep154.10.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 10
  store i8 %call16.10.13, i8* %scevgep154.10.13, align 1
  %call16.11.13 = call zeroext i8 (...) @rand()
  %scevgep154.11.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 11
  store i8 %call16.11.13, i8* %scevgep154.11.13, align 1
  %call16.12.13 = call zeroext i8 (...) @rand()
  %scevgep154.12.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 12
  store i8 %call16.12.13, i8* %scevgep154.12.13, align 1
  %call16.13.13 = call zeroext i8 (...) @rand()
  %scevgep154.13.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 13
  store i8 %call16.13.13, i8* %scevgep154.13.13, align 1
  %call16.14.13 = call zeroext i8 (...) @rand()
  %scevgep154.14.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 14
  store i8 %call16.14.13, i8* %scevgep154.14.13, align 1
  %call16.15.13 = call zeroext i8 (...) @rand()
  %scevgep154.15.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 0, i64 15
  store i8 %call16.15.13, i8* %scevgep154.15.13, align 1
  %scevgep151.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %44, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep151.13 to [16 x [16 x i8]]*
  %call16.14311 = call zeroext i8 (...) @rand()
  %scevgep154.14312 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 0
  store i8 %call16.14311, i8* %scevgep154.14312, align 1
  %call16.1.14 = call zeroext i8 (...) @rand()
  %scevgep154.1.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 1
  store i8 %call16.1.14, i8* %scevgep154.1.14, align 1
  %call16.2.14 = call zeroext i8 (...) @rand()
  %scevgep154.2.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 2
  store i8 %call16.2.14, i8* %scevgep154.2.14, align 1
  %call16.3.14 = call zeroext i8 (...) @rand()
  %scevgep154.3.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 3
  store i8 %call16.3.14, i8* %scevgep154.3.14, align 1
  %call16.4.14 = call zeroext i8 (...) @rand()
  %scevgep154.4.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 4
  store i8 %call16.4.14, i8* %scevgep154.4.14, align 1
  %call16.5.14 = call zeroext i8 (...) @rand()
  %scevgep154.5.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 5
  store i8 %call16.5.14, i8* %scevgep154.5.14, align 1
  %call16.6.14 = call zeroext i8 (...) @rand()
  %scevgep154.6.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 6
  store i8 %call16.6.14, i8* %scevgep154.6.14, align 1
  %call16.7.14 = call zeroext i8 (...) @rand()
  %scevgep154.7.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 7
  store i8 %call16.7.14, i8* %scevgep154.7.14, align 1
  %call16.8.14 = call zeroext i8 (...) @rand()
  %scevgep154.8.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 8
  store i8 %call16.8.14, i8* %scevgep154.8.14, align 1
  %call16.9.14 = call zeroext i8 (...) @rand()
  %scevgep154.9.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 9
  store i8 %call16.9.14, i8* %scevgep154.9.14, align 1
  %call16.10.14 = call zeroext i8 (...) @rand()
  %scevgep154.10.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 10
  store i8 %call16.10.14, i8* %scevgep154.10.14, align 1
  %call16.11.14 = call zeroext i8 (...) @rand()
  %scevgep154.11.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 11
  store i8 %call16.11.14, i8* %scevgep154.11.14, align 1
  %call16.12.14 = call zeroext i8 (...) @rand()
  %scevgep154.12.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 12
  store i8 %call16.12.14, i8* %scevgep154.12.14, align 1
  %call16.13.14 = call zeroext i8 (...) @rand()
  %scevgep154.13.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 13
  store i8 %call16.13.14, i8* %scevgep154.13.14, align 1
  %call16.14.14 = call zeroext i8 (...) @rand()
  %scevgep154.14.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 14
  store i8 %call16.14.14, i8* %scevgep154.14.14, align 1
  %call16.15.14 = call zeroext i8 (...) @rand()
  %scevgep154.15.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 0, i64 15
  store i8 %call16.15.14, i8* %scevgep154.15.14, align 1
  %scevgep151.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %45, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep151.14 to [16 x [16 x i8]]*
  %call16.15314 = call zeroext i8 (...) @rand()
  %scevgep154.15315 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 0
  store i8 %call16.15314, i8* %scevgep154.15315, align 1
  %call16.1.15 = call zeroext i8 (...) @rand()
  %scevgep154.1.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 1
  store i8 %call16.1.15, i8* %scevgep154.1.15, align 1
  %call16.2.15 = call zeroext i8 (...) @rand()
  %scevgep154.2.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 2
  store i8 %call16.2.15, i8* %scevgep154.2.15, align 1
  %call16.3.15 = call zeroext i8 (...) @rand()
  %scevgep154.3.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 3
  store i8 %call16.3.15, i8* %scevgep154.3.15, align 1
  %call16.4.15 = call zeroext i8 (...) @rand()
  %scevgep154.4.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 4
  store i8 %call16.4.15, i8* %scevgep154.4.15, align 1
  %call16.5.15 = call zeroext i8 (...) @rand()
  %scevgep154.5.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 5
  store i8 %call16.5.15, i8* %scevgep154.5.15, align 1
  %call16.6.15 = call zeroext i8 (...) @rand()
  %scevgep154.6.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 6
  store i8 %call16.6.15, i8* %scevgep154.6.15, align 1
  %call16.7.15 = call zeroext i8 (...) @rand()
  %scevgep154.7.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 7
  store i8 %call16.7.15, i8* %scevgep154.7.15, align 1
  %call16.8.15 = call zeroext i8 (...) @rand()
  %scevgep154.8.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 8
  store i8 %call16.8.15, i8* %scevgep154.8.15, align 1
  %call16.9.15 = call zeroext i8 (...) @rand()
  %scevgep154.9.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 9
  store i8 %call16.9.15, i8* %scevgep154.9.15, align 1
  %call16.10.15 = call zeroext i8 (...) @rand()
  %scevgep154.10.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 10
  store i8 %call16.10.15, i8* %scevgep154.10.15, align 1
  %call16.11.15 = call zeroext i8 (...) @rand()
  %scevgep154.11.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 11
  store i8 %call16.11.15, i8* %scevgep154.11.15, align 1
  %call16.12.15 = call zeroext i8 (...) @rand()
  %scevgep154.12.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 12
  store i8 %call16.12.15, i8* %scevgep154.12.15, align 1
  %call16.13.15 = call zeroext i8 (...) @rand()
  %scevgep154.13.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 13
  store i8 %call16.13.15, i8* %scevgep154.13.15, align 1
  %call16.14.15 = call zeroext i8 (...) @rand()
  %scevgep154.14.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 14
  store i8 %call16.14.15, i8* %scevgep154.14.15, align 1
  %call16.15.15 = call zeroext i8 (...) @rand()
  %scevgep154.15.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %46, i64 0, i64 0, i64 15
  store i8 %call16.15.15, i8* %scevgep154.15.15, align 1
  %47 = load i8, i8* %a, align 1
  %48 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep146.1 = getelementptr i8, i8* %a, i64 1
  %49 = load i8, i8* %scevgep146.1, align 1
  %scevgep147.1 = getelementptr i8, i8* %b, i64 1
  %50 = load i8, i8* %scevgep147.1, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50) #2
  %scevgep148.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep148.1, align 1
  %scevgep146.2 = getelementptr i8, i8* %a, i64 2
  %51 = load i8, i8* %scevgep146.2, align 1
  %scevgep147.2 = getelementptr i8, i8* %b, i64 2
  %52 = load i8, i8* %scevgep147.2, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52) #2
  %scevgep148.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.i.2, i8* %scevgep148.2, align 1
  %scevgep146.3 = getelementptr i8, i8* %a, i64 3
  %53 = load i8, i8* %scevgep146.3, align 1
  %scevgep147.3 = getelementptr i8, i8* %b, i64 3
  %54 = load i8, i8* %scevgep147.3, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #2
  %scevgep148.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.i.3, i8* %scevgep148.3, align 1
  %scevgep146.4 = getelementptr i8, i8* %a, i64 4
  %55 = load i8, i8* %scevgep146.4, align 1
  %scevgep147.4 = getelementptr i8, i8* %b, i64 4
  %56 = load i8, i8* %scevgep147.4, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #2
  %scevgep148.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.i.4, i8* %scevgep148.4, align 1
  %scevgep146.5 = getelementptr i8, i8* %a, i64 5
  %57 = load i8, i8* %scevgep146.5, align 1
  %scevgep147.5 = getelementptr i8, i8* %b, i64 5
  %58 = load i8, i8* %scevgep147.5, align 1
  %call.i.5 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #2
  %scevgep148.5 = getelementptr i8, i8* %c, i64 5
  store i8 %call.i.5, i8* %scevgep148.5, align 1
  %scevgep146.6 = getelementptr i8, i8* %a, i64 6
  %59 = load i8, i8* %scevgep146.6, align 1
  %scevgep147.6 = getelementptr i8, i8* %b, i64 6
  %60 = load i8, i8* %scevgep147.6, align 1
  %call.i.6 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #2
  %scevgep148.6 = getelementptr i8, i8* %c, i64 6
  store i8 %call.i.6, i8* %scevgep148.6, align 1
  %scevgep146.7 = getelementptr i8, i8* %a, i64 7
  %61 = load i8, i8* %scevgep146.7, align 1
  %scevgep147.7 = getelementptr i8, i8* %b, i64 7
  %62 = load i8, i8* %scevgep147.7, align 1
  %call.i.7 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #2
  %scevgep148.7 = getelementptr i8, i8* %c, i64 7
  store i8 %call.i.7, i8* %scevgep148.7, align 1
  %scevgep146.8 = getelementptr i8, i8* %a, i64 8
  %63 = load i8, i8* %scevgep146.8, align 1
  %scevgep147.8 = getelementptr i8, i8* %b, i64 8
  %64 = load i8, i8* %scevgep147.8, align 1
  %call.i.8 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #2
  %scevgep148.8 = getelementptr i8, i8* %c, i64 8
  store i8 %call.i.8, i8* %scevgep148.8, align 1
  %scevgep146.9 = getelementptr i8, i8* %a, i64 9
  %65 = load i8, i8* %scevgep146.9, align 1
  %scevgep147.9 = getelementptr i8, i8* %b, i64 9
  %66 = load i8, i8* %scevgep147.9, align 1
  %call.i.9 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #2
  %scevgep148.9 = getelementptr i8, i8* %c, i64 9
  store i8 %call.i.9, i8* %scevgep148.9, align 1
  %scevgep146.10 = getelementptr i8, i8* %a, i64 10
  %67 = load i8, i8* %scevgep146.10, align 1
  %scevgep147.10 = getelementptr i8, i8* %b, i64 10
  %68 = load i8, i8* %scevgep147.10, align 1
  %call.i.10 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #2
  %scevgep148.10 = getelementptr i8, i8* %c, i64 10
  store i8 %call.i.10, i8* %scevgep148.10, align 1
  %scevgep146.11 = getelementptr i8, i8* %a, i64 11
  %69 = load i8, i8* %scevgep146.11, align 1
  %scevgep147.11 = getelementptr i8, i8* %b, i64 11
  %70 = load i8, i8* %scevgep147.11, align 1
  %call.i.11 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #2
  %scevgep148.11 = getelementptr i8, i8* %c, i64 11
  store i8 %call.i.11, i8* %scevgep148.11, align 1
  %scevgep146.12 = getelementptr i8, i8* %a, i64 12
  %71 = load i8, i8* %scevgep146.12, align 1
  %scevgep147.12 = getelementptr i8, i8* %b, i64 12
  %72 = load i8, i8* %scevgep147.12, align 1
  %call.i.12 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #2
  %scevgep148.12 = getelementptr i8, i8* %c, i64 12
  store i8 %call.i.12, i8* %scevgep148.12, align 1
  %scevgep146.13 = getelementptr i8, i8* %a, i64 13
  %73 = load i8, i8* %scevgep146.13, align 1
  %scevgep147.13 = getelementptr i8, i8* %b, i64 13
  %74 = load i8, i8* %scevgep147.13, align 1
  %call.i.13 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #2
  %scevgep148.13 = getelementptr i8, i8* %c, i64 13
  store i8 %call.i.13, i8* %scevgep148.13, align 1
  %scevgep146.14 = getelementptr i8, i8* %a, i64 14
  %75 = load i8, i8* %scevgep146.14, align 1
  %scevgep147.14 = getelementptr i8, i8* %b, i64 14
  %76 = load i8, i8* %scevgep147.14, align 1
  %call.i.14 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #2
  %scevgep148.14 = getelementptr i8, i8* %c, i64 14
  store i8 %call.i.14, i8* %scevgep148.14, align 1
  %scevgep146.15 = getelementptr i8, i8* %a, i64 15
  %77 = load i8, i8* %scevgep146.15, align 1
  %scevgep147.15 = getelementptr i8, i8* %b, i64 15
  %78 = load i8, i8* %scevgep147.15, align 1
  %call.i.15 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #2
  %scevgep148.15 = getelementptr i8, i8* %c, i64 15
  store i8 %call.i.15, i8* %scevgep148.15, align 1
  %79 = load i8, i8* %a, align 1
  %arrayidx4.i98 = getelementptr inbounds i8, i8* %b, i64 1
  %80 = load i8, i8* %arrayidx4.i98, align 1
  %call.i99 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #2
  %scevgep84 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i99, i8* %scevgep84, align 1
  %scevgep80.1 = getelementptr i8, i8* %a, i64 1
  %81 = load i8, i8* %scevgep80.1, align 1
  %arrayidx4.i98.1 = getelementptr inbounds i8, i8* %b, i64 2
  %82 = load i8, i8* %arrayidx4.i98.1, align 1
  %call.i99.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #2
  %scevgep84.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i99.1, i8* %scevgep84.1, align 1
  %scevgep80.2 = getelementptr i8, i8* %a, i64 2
  %83 = load i8, i8* %scevgep80.2, align 1
  %arrayidx4.i98.2 = getelementptr inbounds i8, i8* %b, i64 3
  %84 = load i8, i8* %arrayidx4.i98.2, align 1
  %call.i99.2 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #2
  %scevgep84.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i99.2, i8* %scevgep84.2, align 1
  %scevgep80.3 = getelementptr i8, i8* %a, i64 3
  %85 = load i8, i8* %scevgep80.3, align 1
  %arrayidx4.i98.3 = getelementptr inbounds i8, i8* %b, i64 4
  %86 = load i8, i8* %arrayidx4.i98.3, align 1
  %call.i99.3 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #2
  %scevgep84.3 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i99.3, i8* %scevgep84.3, align 1
  %scevgep80.4 = getelementptr i8, i8* %a, i64 4
  %87 = load i8, i8* %scevgep80.4, align 1
  %arrayidx4.i98.4 = getelementptr inbounds i8, i8* %b, i64 5
  %88 = load i8, i8* %arrayidx4.i98.4, align 1
  %call.i99.4 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #2
  %scevgep84.4 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i99.4, i8* %scevgep84.4, align 1
  %scevgep80.5 = getelementptr i8, i8* %a, i64 5
  %89 = load i8, i8* %scevgep80.5, align 1
  %arrayidx4.i98.5 = getelementptr inbounds i8, i8* %b, i64 6
  %90 = load i8, i8* %arrayidx4.i98.5, align 1
  %call.i99.5 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #2
  %scevgep84.5 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i99.5, i8* %scevgep84.5, align 1
  %scevgep80.6 = getelementptr i8, i8* %a, i64 6
  %91 = load i8, i8* %scevgep80.6, align 1
  %arrayidx4.i98.6 = getelementptr inbounds i8, i8* %b, i64 7
  %92 = load i8, i8* %arrayidx4.i98.6, align 1
  %call.i99.6 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #2
  %scevgep84.6 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i99.6, i8* %scevgep84.6, align 1
  %scevgep80.7 = getelementptr i8, i8* %a, i64 7
  %93 = load i8, i8* %scevgep80.7, align 1
  %arrayidx4.i98.7 = getelementptr inbounds i8, i8* %b, i64 8
  %94 = load i8, i8* %arrayidx4.i98.7, align 1
  %call.i99.7 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94) #2
  %scevgep84.7 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i99.7, i8* %scevgep84.7, align 1
  %scevgep80.8 = getelementptr i8, i8* %a, i64 8
  %95 = load i8, i8* %scevgep80.8, align 1
  %arrayidx4.i98.8 = getelementptr inbounds i8, i8* %b, i64 9
  %96 = load i8, i8* %arrayidx4.i98.8, align 1
  %call.i99.8 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96) #2
  %scevgep84.8 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i99.8, i8* %scevgep84.8, align 1
  %scevgep80.9 = getelementptr i8, i8* %a, i64 9
  %97 = load i8, i8* %scevgep80.9, align 1
  %arrayidx4.i98.9 = getelementptr inbounds i8, i8* %b, i64 10
  %98 = load i8, i8* %arrayidx4.i98.9, align 1
  %call.i99.9 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98) #2
  %scevgep84.9 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i99.9, i8* %scevgep84.9, align 1
  %scevgep80.10 = getelementptr i8, i8* %a, i64 10
  %99 = load i8, i8* %scevgep80.10, align 1
  %arrayidx4.i98.10 = getelementptr inbounds i8, i8* %b, i64 11
  %100 = load i8, i8* %arrayidx4.i98.10, align 1
  %call.i99.10 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100) #2
  %scevgep84.10 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i99.10, i8* %scevgep84.10, align 1
  %scevgep80.11 = getelementptr i8, i8* %a, i64 11
  %101 = load i8, i8* %scevgep80.11, align 1
  %arrayidx4.i98.11 = getelementptr inbounds i8, i8* %b, i64 12
  %102 = load i8, i8* %arrayidx4.i98.11, align 1
  %call.i99.11 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102) #2
  %scevgep84.11 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  store i8 %call.i99.11, i8* %scevgep84.11, align 1
  %scevgep80.12 = getelementptr i8, i8* %a, i64 12
  %103 = load i8, i8* %scevgep80.12, align 1
  %arrayidx4.i98.12 = getelementptr inbounds i8, i8* %b, i64 13
  %104 = load i8, i8* %arrayidx4.i98.12, align 1
  %call.i99.12 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104) #2
  %scevgep84.12 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  store i8 %call.i99.12, i8* %scevgep84.12, align 1
  %scevgep80.13 = getelementptr i8, i8* %a, i64 13
  %105 = load i8, i8* %scevgep80.13, align 1
  %arrayidx4.i98.13 = getelementptr inbounds i8, i8* %b, i64 14
  %106 = load i8, i8* %arrayidx4.i98.13, align 1
  %call.i99.13 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106) #2
  %scevgep84.13 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  store i8 %call.i99.13, i8* %scevgep84.13, align 1
  %scevgep80.14 = getelementptr i8, i8* %a, i64 14
  %107 = load i8, i8* %scevgep80.14, align 1
  %arrayidx4.i98.14 = getelementptr inbounds i8, i8* %b, i64 15
  %108 = load i8, i8* %arrayidx4.i98.14, align 1
  %call.i99.14 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108) #2
  %scevgep84.14 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  store i8 %call.i99.14, i8* %scevgep84.14, align 1
  %scevgep80.15 = getelementptr i8, i8* %a, i64 15
  %109 = load i8, i8* %scevgep80.15, align 1
  %110 = load i8, i8* %b, align 1
  %call.i99.15 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110) #2
  %scevgep84.15 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  store i8 %call.i99.15, i8* %scevgep84.15, align 1
  %arrayidx.i116 = getelementptr inbounds i8, i8* %a, i64 1
  %111 = load i8, i8* %arrayidx.i116, align 1
  %112 = load i8, i8* %b, align 1
  %call.i121 = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112) #2
  %scevgep90 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i121, i8* %scevgep90, align 1
  %arrayidx.i116.1 = getelementptr inbounds i8, i8* %a, i64 2
  %113 = load i8, i8* %arrayidx.i116.1, align 1
  %scevgep89.1 = getelementptr i8, i8* %b, i64 1
  %114 = load i8, i8* %scevgep89.1, align 1
  %call.i121.1 = call zeroext i8 @mult(i8 zeroext %113, i8 zeroext %114) #2
  %scevgep90.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i121.1, i8* %scevgep90.1, align 1
  %arrayidx.i116.2 = getelementptr inbounds i8, i8* %a, i64 3
  %115 = load i8, i8* %arrayidx.i116.2, align 1
  %scevgep89.2 = getelementptr i8, i8* %b, i64 2
  %116 = load i8, i8* %scevgep89.2, align 1
  %call.i121.2 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116) #2
  %scevgep90.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i121.2, i8* %scevgep90.2, align 1
  %arrayidx.i116.3 = getelementptr inbounds i8, i8* %a, i64 4
  %117 = load i8, i8* %arrayidx.i116.3, align 1
  %scevgep89.3 = getelementptr i8, i8* %b, i64 3
  %118 = load i8, i8* %scevgep89.3, align 1
  %call.i121.3 = call zeroext i8 @mult(i8 zeroext %117, i8 zeroext %118) #2
  %scevgep90.3 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i121.3, i8* %scevgep90.3, align 1
  %arrayidx.i116.4 = getelementptr inbounds i8, i8* %a, i64 5
  %119 = load i8, i8* %arrayidx.i116.4, align 1
  %scevgep89.4 = getelementptr i8, i8* %b, i64 4
  %120 = load i8, i8* %scevgep89.4, align 1
  %call.i121.4 = call zeroext i8 @mult(i8 zeroext %119, i8 zeroext %120) #2
  %scevgep90.4 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i121.4, i8* %scevgep90.4, align 1
  %arrayidx.i116.5 = getelementptr inbounds i8, i8* %a, i64 6
  %121 = load i8, i8* %arrayidx.i116.5, align 1
  %scevgep89.5 = getelementptr i8, i8* %b, i64 5
  %122 = load i8, i8* %scevgep89.5, align 1
  %call.i121.5 = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %122) #2
  %scevgep90.5 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i121.5, i8* %scevgep90.5, align 1
  %arrayidx.i116.6 = getelementptr inbounds i8, i8* %a, i64 7
  %123 = load i8, i8* %arrayidx.i116.6, align 1
  %scevgep89.6 = getelementptr i8, i8* %b, i64 6
  %124 = load i8, i8* %scevgep89.6, align 1
  %call.i121.6 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #2
  %scevgep90.6 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  store i8 %call.i121.6, i8* %scevgep90.6, align 1
  %arrayidx.i116.7 = getelementptr inbounds i8, i8* %a, i64 8
  %125 = load i8, i8* %arrayidx.i116.7, align 1
  %scevgep89.7 = getelementptr i8, i8* %b, i64 7
  %126 = load i8, i8* %scevgep89.7, align 1
  %call.i121.7 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126) #2
  %scevgep90.7 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  store i8 %call.i121.7, i8* %scevgep90.7, align 1
  %arrayidx.i116.8 = getelementptr inbounds i8, i8* %a, i64 9
  %127 = load i8, i8* %arrayidx.i116.8, align 1
  %scevgep89.8 = getelementptr i8, i8* %b, i64 8
  %128 = load i8, i8* %scevgep89.8, align 1
  %call.i121.8 = call zeroext i8 @mult(i8 zeroext %127, i8 zeroext %128) #2
  %scevgep90.8 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  store i8 %call.i121.8, i8* %scevgep90.8, align 1
  %arrayidx.i116.9 = getelementptr inbounds i8, i8* %a, i64 10
  %129 = load i8, i8* %arrayidx.i116.9, align 1
  %scevgep89.9 = getelementptr i8, i8* %b, i64 9
  %130 = load i8, i8* %scevgep89.9, align 1
  %call.i121.9 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130) #2
  %scevgep90.9 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  store i8 %call.i121.9, i8* %scevgep90.9, align 1
  %arrayidx.i116.10 = getelementptr inbounds i8, i8* %a, i64 11
  %131 = load i8, i8* %arrayidx.i116.10, align 1
  %scevgep89.10 = getelementptr i8, i8* %b, i64 10
  %132 = load i8, i8* %scevgep89.10, align 1
  %call.i121.10 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #2
  %scevgep90.10 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  store i8 %call.i121.10, i8* %scevgep90.10, align 1
  %arrayidx.i116.11 = getelementptr inbounds i8, i8* %a, i64 12
  %133 = load i8, i8* %arrayidx.i116.11, align 1
  %scevgep89.11 = getelementptr i8, i8* %b, i64 11
  %134 = load i8, i8* %scevgep89.11, align 1
  %call.i121.11 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134) #2
  %scevgep90.11 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  store i8 %call.i121.11, i8* %scevgep90.11, align 1
  %arrayidx.i116.12 = getelementptr inbounds i8, i8* %a, i64 13
  %135 = load i8, i8* %arrayidx.i116.12, align 1
  %scevgep89.12 = getelementptr i8, i8* %b, i64 12
  %136 = load i8, i8* %scevgep89.12, align 1
  %call.i121.12 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #2
  %scevgep90.12 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  store i8 %call.i121.12, i8* %scevgep90.12, align 1
  %arrayidx.i116.13 = getelementptr inbounds i8, i8* %a, i64 14
  %137 = load i8, i8* %arrayidx.i116.13, align 1
  %scevgep89.13 = getelementptr i8, i8* %b, i64 13
  %138 = load i8, i8* %scevgep89.13, align 1
  %call.i121.13 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #2
  %scevgep90.13 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  store i8 %call.i121.13, i8* %scevgep90.13, align 1
  %arrayidx.i116.14 = getelementptr inbounds i8, i8* %a, i64 15
  %139 = load i8, i8* %arrayidx.i116.14, align 1
  %scevgep89.14 = getelementptr i8, i8* %b, i64 14
  %140 = load i8, i8* %scevgep89.14, align 1
  %call.i121.14 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #2
  %scevgep90.14 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  store i8 %call.i121.14, i8* %scevgep90.14, align 1
  %141 = load i8, i8* %a, align 1
  %scevgep89.15 = getelementptr i8, i8* %b, i64 15
  %142 = load i8, i8* %scevgep89.15, align 1
  %call.i121.15 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #2
  %scevgep90.15 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  store i8 %call.i121.15, i8* %scevgep90.15, align 1
  %143 = load i8, i8* %a, align 1
  %arrayidx4.i142 = getelementptr inbounds i8, i8* %b, i64 2
  %144 = load i8, i8* %arrayidx4.i142, align 1
  %call.i143 = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144) #2
  %scevgep98 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i143, i8* %scevgep98, align 1
  %scevgep94.1 = getelementptr i8, i8* %a, i64 1
  %145 = load i8, i8* %scevgep94.1, align 1
  %arrayidx4.i142.1 = getelementptr inbounds i8, i8* %b, i64 3
  %146 = load i8, i8* %arrayidx4.i142.1, align 1
  %call.i143.1 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146) #2
  %scevgep98.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i143.1, i8* %scevgep98.1, align 1
  %scevgep94.2 = getelementptr i8, i8* %a, i64 2
  %147 = load i8, i8* %scevgep94.2, align 1
  %arrayidx4.i142.2 = getelementptr inbounds i8, i8* %b, i64 4
  %148 = load i8, i8* %arrayidx4.i142.2, align 1
  %call.i143.2 = call zeroext i8 @mult(i8 zeroext %147, i8 zeroext %148) #2
  %scevgep98.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i143.2, i8* %scevgep98.2, align 1
  %scevgep94.3 = getelementptr i8, i8* %a, i64 3
  %149 = load i8, i8* %scevgep94.3, align 1
  %arrayidx4.i142.3 = getelementptr inbounds i8, i8* %b, i64 5
  %150 = load i8, i8* %arrayidx4.i142.3, align 1
  %call.i143.3 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150) #2
  %scevgep98.3 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i143.3, i8* %scevgep98.3, align 1
  %scevgep94.4 = getelementptr i8, i8* %a, i64 4
  %151 = load i8, i8* %scevgep94.4, align 1
  %arrayidx4.i142.4 = getelementptr inbounds i8, i8* %b, i64 6
  %152 = load i8, i8* %arrayidx4.i142.4, align 1
  %call.i143.4 = call zeroext i8 @mult(i8 zeroext %151, i8 zeroext %152) #2
  %scevgep98.4 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i143.4, i8* %scevgep98.4, align 1
  %scevgep94.5 = getelementptr i8, i8* %a, i64 5
  %153 = load i8, i8* %scevgep94.5, align 1
  %arrayidx4.i142.5 = getelementptr inbounds i8, i8* %b, i64 7
  %154 = load i8, i8* %arrayidx4.i142.5, align 1
  %call.i143.5 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #2
  %scevgep98.5 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i143.5, i8* %scevgep98.5, align 1
  %scevgep94.6 = getelementptr i8, i8* %a, i64 6
  %155 = load i8, i8* %scevgep94.6, align 1
  %arrayidx4.i142.6 = getelementptr inbounds i8, i8* %b, i64 8
  %156 = load i8, i8* %arrayidx4.i142.6, align 1
  %call.i143.6 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #2
  %scevgep98.6 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i143.6, i8* %scevgep98.6, align 1
  %scevgep94.7 = getelementptr i8, i8* %a, i64 7
  %157 = load i8, i8* %scevgep94.7, align 1
  %arrayidx4.i142.7 = getelementptr inbounds i8, i8* %b, i64 9
  %158 = load i8, i8* %arrayidx4.i142.7, align 1
  %call.i143.7 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #2
  %scevgep98.7 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i143.7, i8* %scevgep98.7, align 1
  %scevgep94.8 = getelementptr i8, i8* %a, i64 8
  %159 = load i8, i8* %scevgep94.8, align 1
  %arrayidx4.i142.8 = getelementptr inbounds i8, i8* %b, i64 10
  %160 = load i8, i8* %arrayidx4.i142.8, align 1
  %call.i143.8 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #2
  %scevgep98.8 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i143.8, i8* %scevgep98.8, align 1
  %scevgep94.9 = getelementptr i8, i8* %a, i64 9
  %161 = load i8, i8* %scevgep94.9, align 1
  %arrayidx4.i142.9 = getelementptr inbounds i8, i8* %b, i64 11
  %162 = load i8, i8* %arrayidx4.i142.9, align 1
  %call.i143.9 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162) #2
  %scevgep98.9 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i143.9, i8* %scevgep98.9, align 1
  %scevgep94.10 = getelementptr i8, i8* %a, i64 10
  %163 = load i8, i8* %scevgep94.10, align 1
  %arrayidx4.i142.10 = getelementptr inbounds i8, i8* %b, i64 12
  %164 = load i8, i8* %arrayidx4.i142.10, align 1
  %call.i143.10 = call zeroext i8 @mult(i8 zeroext %163, i8 zeroext %164) #2
  %scevgep98.10 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i143.10, i8* %scevgep98.10, align 1
  %scevgep94.11 = getelementptr i8, i8* %a, i64 11
  %165 = load i8, i8* %scevgep94.11, align 1
  %arrayidx4.i142.11 = getelementptr inbounds i8, i8* %b, i64 13
  %166 = load i8, i8* %arrayidx4.i142.11, align 1
  %call.i143.11 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #2
  %scevgep98.11 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  store i8 %call.i143.11, i8* %scevgep98.11, align 1
  %scevgep94.12 = getelementptr i8, i8* %a, i64 12
  %167 = load i8, i8* %scevgep94.12, align 1
  %arrayidx4.i142.12 = getelementptr inbounds i8, i8* %b, i64 14
  %168 = load i8, i8* %arrayidx4.i142.12, align 1
  %call.i143.12 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %168) #2
  %scevgep98.12 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  store i8 %call.i143.12, i8* %scevgep98.12, align 1
  %scevgep94.13 = getelementptr i8, i8* %a, i64 13
  %169 = load i8, i8* %scevgep94.13, align 1
  %arrayidx4.i142.13 = getelementptr inbounds i8, i8* %b, i64 15
  %170 = load i8, i8* %arrayidx4.i142.13, align 1
  %call.i143.13 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170) #2
  %scevgep98.13 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  store i8 %call.i143.13, i8* %scevgep98.13, align 1
  %scevgep94.14 = getelementptr i8, i8* %a, i64 14
  %171 = load i8, i8* %scevgep94.14, align 1
  %172 = load i8, i8* %b, align 1
  %call.i143.14 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #2
  %scevgep98.14 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  store i8 %call.i143.14, i8* %scevgep98.14, align 1
  %scevgep94.15 = getelementptr i8, i8* %a, i64 15
  %173 = load i8, i8* %scevgep94.15, align 1
  %arrayidx4.i142.15 = getelementptr inbounds i8, i8* %b, i64 1
  %174 = load i8, i8* %arrayidx4.i142.15, align 1
  %call.i143.15 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174) #2
  %scevgep98.15 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  store i8 %call.i143.15, i8* %scevgep98.15, align 1
  %arrayidx.i160 = getelementptr inbounds i8, i8* %a, i64 2
  %175 = load i8, i8* %arrayidx.i160, align 1
  %176 = load i8, i8* %b, align 1
  %call.i165 = call zeroext i8 @mult(i8 zeroext %175, i8 zeroext %176) #2
  %scevgep104 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i165, i8* %scevgep104, align 1
  %arrayidx.i160.1 = getelementptr inbounds i8, i8* %a, i64 3
  %177 = load i8, i8* %arrayidx.i160.1, align 1
  %scevgep103.1 = getelementptr i8, i8* %b, i64 1
  %178 = load i8, i8* %scevgep103.1, align 1
  %call.i165.1 = call zeroext i8 @mult(i8 zeroext %177, i8 zeroext %178) #2
  %scevgep104.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i165.1, i8* %scevgep104.1, align 1
  %arrayidx.i160.2 = getelementptr inbounds i8, i8* %a, i64 4
  %179 = load i8, i8* %arrayidx.i160.2, align 1
  %scevgep103.2 = getelementptr i8, i8* %b, i64 2
  %180 = load i8, i8* %scevgep103.2, align 1
  %call.i165.2 = call zeroext i8 @mult(i8 zeroext %179, i8 zeroext %180) #2
  %scevgep104.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i165.2, i8* %scevgep104.2, align 1
  %arrayidx.i160.3 = getelementptr inbounds i8, i8* %a, i64 5
  %181 = load i8, i8* %arrayidx.i160.3, align 1
  %scevgep103.3 = getelementptr i8, i8* %b, i64 3
  %182 = load i8, i8* %scevgep103.3, align 1
  %call.i165.3 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182) #2
  %scevgep104.3 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i165.3, i8* %scevgep104.3, align 1
  %arrayidx.i160.4 = getelementptr inbounds i8, i8* %a, i64 6
  %183 = load i8, i8* %arrayidx.i160.4, align 1
  %scevgep103.4 = getelementptr i8, i8* %b, i64 4
  %184 = load i8, i8* %scevgep103.4, align 1
  %call.i165.4 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #2
  %scevgep104.4 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i165.4, i8* %scevgep104.4, align 1
  %arrayidx.i160.5 = getelementptr inbounds i8, i8* %a, i64 7
  %185 = load i8, i8* %arrayidx.i160.5, align 1
  %scevgep103.5 = getelementptr i8, i8* %b, i64 5
  %186 = load i8, i8* %scevgep103.5, align 1
  %call.i165.5 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186) #2
  %scevgep104.5 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 5
  store i8 %call.i165.5, i8* %scevgep104.5, align 1
  %arrayidx.i160.6 = getelementptr inbounds i8, i8* %a, i64 8
  %187 = load i8, i8* %arrayidx.i160.6, align 1
  %scevgep103.6 = getelementptr i8, i8* %b, i64 6
  %188 = load i8, i8* %scevgep103.6, align 1
  %call.i165.6 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188) #2
  %scevgep104.6 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 6
  store i8 %call.i165.6, i8* %scevgep104.6, align 1
  %arrayidx.i160.7 = getelementptr inbounds i8, i8* %a, i64 9
  %189 = load i8, i8* %arrayidx.i160.7, align 1
  %scevgep103.7 = getelementptr i8, i8* %b, i64 7
  %190 = load i8, i8* %scevgep103.7, align 1
  %call.i165.7 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190) #2
  %scevgep104.7 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 7
  store i8 %call.i165.7, i8* %scevgep104.7, align 1
  %arrayidx.i160.8 = getelementptr inbounds i8, i8* %a, i64 10
  %191 = load i8, i8* %arrayidx.i160.8, align 1
  %scevgep103.8 = getelementptr i8, i8* %b, i64 8
  %192 = load i8, i8* %scevgep103.8, align 1
  %call.i165.8 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192) #2
  %scevgep104.8 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 8
  store i8 %call.i165.8, i8* %scevgep104.8, align 1
  %arrayidx.i160.9 = getelementptr inbounds i8, i8* %a, i64 11
  %193 = load i8, i8* %arrayidx.i160.9, align 1
  %scevgep103.9 = getelementptr i8, i8* %b, i64 9
  %194 = load i8, i8* %scevgep103.9, align 1
  %call.i165.9 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194) #2
  %scevgep104.9 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 9
  store i8 %call.i165.9, i8* %scevgep104.9, align 1
  %arrayidx.i160.10 = getelementptr inbounds i8, i8* %a, i64 12
  %195 = load i8, i8* %arrayidx.i160.10, align 1
  %scevgep103.10 = getelementptr i8, i8* %b, i64 10
  %196 = load i8, i8* %scevgep103.10, align 1
  %call.i165.10 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196) #2
  %scevgep104.10 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 10
  store i8 %call.i165.10, i8* %scevgep104.10, align 1
  %arrayidx.i160.11 = getelementptr inbounds i8, i8* %a, i64 13
  %197 = load i8, i8* %arrayidx.i160.11, align 1
  %scevgep103.11 = getelementptr i8, i8* %b, i64 11
  %198 = load i8, i8* %scevgep103.11, align 1
  %call.i165.11 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198) #2
  %scevgep104.11 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 11
  store i8 %call.i165.11, i8* %scevgep104.11, align 1
  %arrayidx.i160.12 = getelementptr inbounds i8, i8* %a, i64 14
  %199 = load i8, i8* %arrayidx.i160.12, align 1
  %scevgep103.12 = getelementptr i8, i8* %b, i64 12
  %200 = load i8, i8* %scevgep103.12, align 1
  %call.i165.12 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200) #2
  %scevgep104.12 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 12
  store i8 %call.i165.12, i8* %scevgep104.12, align 1
  %arrayidx.i160.13 = getelementptr inbounds i8, i8* %a, i64 15
  %201 = load i8, i8* %arrayidx.i160.13, align 1
  %scevgep103.13 = getelementptr i8, i8* %b, i64 13
  %202 = load i8, i8* %scevgep103.13, align 1
  %call.i165.13 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202) #2
  %scevgep104.13 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 13
  store i8 %call.i165.13, i8* %scevgep104.13, align 1
  %203 = load i8, i8* %a, align 1
  %scevgep103.14 = getelementptr i8, i8* %b, i64 14
  %204 = load i8, i8* %scevgep103.14, align 1
  %call.i165.14 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204) #2
  %scevgep104.14 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 14
  store i8 %call.i165.14, i8* %scevgep104.14, align 1
  %arrayidx.i160.15 = getelementptr inbounds i8, i8* %a, i64 1
  %205 = load i8, i8* %arrayidx.i160.15, align 1
  %scevgep103.15 = getelementptr i8, i8* %b, i64 15
  %206 = load i8, i8* %scevgep103.15, align 1
  %call.i165.15 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #2
  %scevgep104.15 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 15
  store i8 %call.i165.15, i8* %scevgep104.15, align 1
  %207 = load i8, i8* %c, align 1
  %conv.i = zext i8 %207 to i32
  %scevgep112 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 0
  %208 = load i8, i8* %scevgep112, align 1
  %conv5.i = zext i8 %208 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %c, align 1
  %scevgep108.1 = getelementptr i8, i8* %c, i64 1
  %209 = load i8, i8* %scevgep108.1, align 1
  %conv.i.1 = zext i8 %209 to i32
  %scevgep112.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 1
  %210 = load i8, i8* %scevgep112.1, align 1
  %conv5.i.1 = zext i8 %210 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep109.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1, i8* %scevgep109.1, align 1
  %scevgep108.2 = getelementptr i8, i8* %c, i64 2
  %211 = load i8, i8* %scevgep108.2, align 1
  %conv.i.2 = zext i8 %211 to i32
  %scevgep112.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 2
  %212 = load i8, i8* %scevgep112.2, align 1
  %conv5.i.2 = zext i8 %212 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep109.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2, i8* %scevgep109.2, align 1
  %scevgep108.3 = getelementptr i8, i8* %c, i64 3
  %213 = load i8, i8* %scevgep108.3, align 1
  %conv.i.3 = zext i8 %213 to i32
  %scevgep112.3 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 3
  %214 = load i8, i8* %scevgep112.3, align 1
  %conv5.i.3 = zext i8 %214 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep109.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3, i8* %scevgep109.3, align 1
  %scevgep108.4 = getelementptr i8, i8* %c, i64 4
  %215 = load i8, i8* %scevgep108.4, align 1
  %conv.i.4 = zext i8 %215 to i32
  %scevgep112.4 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 4
  %216 = load i8, i8* %scevgep112.4, align 1
  %conv5.i.4 = zext i8 %216 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep109.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4, i8* %scevgep109.4, align 1
  %scevgep108.5 = getelementptr i8, i8* %c, i64 5
  %217 = load i8, i8* %scevgep108.5, align 1
  %conv.i.5 = zext i8 %217 to i32
  %scevgep112.5 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 5
  %218 = load i8, i8* %scevgep112.5, align 1
  %conv5.i.5 = zext i8 %218 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep109.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i.5, i8* %scevgep109.5, align 1
  %scevgep108.6 = getelementptr i8, i8* %c, i64 6
  %219 = load i8, i8* %scevgep108.6, align 1
  %conv.i.6 = zext i8 %219 to i32
  %scevgep112.6 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 6
  %220 = load i8, i8* %scevgep112.6, align 1
  %conv5.i.6 = zext i8 %220 to i32
  %xor.i.6 = xor i32 %conv.i.6, %conv5.i.6
  %conv6.i.6 = trunc i32 %xor.i.6 to i8
  %scevgep109.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i.6, i8* %scevgep109.6, align 1
  %scevgep108.7 = getelementptr i8, i8* %c, i64 7
  %221 = load i8, i8* %scevgep108.7, align 1
  %conv.i.7 = zext i8 %221 to i32
  %scevgep112.7 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 7
  %222 = load i8, i8* %scevgep112.7, align 1
  %conv5.i.7 = zext i8 %222 to i32
  %xor.i.7 = xor i32 %conv.i.7, %conv5.i.7
  %conv6.i.7 = trunc i32 %xor.i.7 to i8
  %scevgep109.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i.7, i8* %scevgep109.7, align 1
  %scevgep108.8 = getelementptr i8, i8* %c, i64 8
  %223 = load i8, i8* %scevgep108.8, align 1
  %conv.i.8 = zext i8 %223 to i32
  %scevgep112.8 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 8
  %224 = load i8, i8* %scevgep112.8, align 1
  %conv5.i.8 = zext i8 %224 to i32
  %xor.i.8 = xor i32 %conv.i.8, %conv5.i.8
  %conv6.i.8 = trunc i32 %xor.i.8 to i8
  %scevgep109.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i.8, i8* %scevgep109.8, align 1
  %scevgep108.9 = getelementptr i8, i8* %c, i64 9
  %225 = load i8, i8* %scevgep108.9, align 1
  %conv.i.9 = zext i8 %225 to i32
  %scevgep112.9 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 9
  %226 = load i8, i8* %scevgep112.9, align 1
  %conv5.i.9 = zext i8 %226 to i32
  %xor.i.9 = xor i32 %conv.i.9, %conv5.i.9
  %conv6.i.9 = trunc i32 %xor.i.9 to i8
  %scevgep109.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i.9, i8* %scevgep109.9, align 1
  %scevgep108.10 = getelementptr i8, i8* %c, i64 10
  %227 = load i8, i8* %scevgep108.10, align 1
  %conv.i.10 = zext i8 %227 to i32
  %scevgep112.10 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 10
  %228 = load i8, i8* %scevgep112.10, align 1
  %conv5.i.10 = zext i8 %228 to i32
  %xor.i.10 = xor i32 %conv.i.10, %conv5.i.10
  %conv6.i.10 = trunc i32 %xor.i.10 to i8
  %scevgep109.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i.10, i8* %scevgep109.10, align 1
  %scevgep108.11 = getelementptr i8, i8* %c, i64 11
  %229 = load i8, i8* %scevgep108.11, align 1
  %conv.i.11 = zext i8 %229 to i32
  %scevgep112.11 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 11
  %230 = load i8, i8* %scevgep112.11, align 1
  %conv5.i.11 = zext i8 %230 to i32
  %xor.i.11 = xor i32 %conv.i.11, %conv5.i.11
  %conv6.i.11 = trunc i32 %xor.i.11 to i8
  %scevgep109.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i.11, i8* %scevgep109.11, align 1
  %scevgep108.12 = getelementptr i8, i8* %c, i64 12
  %231 = load i8, i8* %scevgep108.12, align 1
  %conv.i.12 = zext i8 %231 to i32
  %scevgep112.12 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 12
  %232 = load i8, i8* %scevgep112.12, align 1
  %conv5.i.12 = zext i8 %232 to i32
  %xor.i.12 = xor i32 %conv.i.12, %conv5.i.12
  %conv6.i.12 = trunc i32 %xor.i.12 to i8
  %scevgep109.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i.12, i8* %scevgep109.12, align 1
  %scevgep108.13 = getelementptr i8, i8* %c, i64 13
  %233 = load i8, i8* %scevgep108.13, align 1
  %conv.i.13 = zext i8 %233 to i32
  %scevgep112.13 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 13
  %234 = load i8, i8* %scevgep112.13, align 1
  %conv5.i.13 = zext i8 %234 to i32
  %xor.i.13 = xor i32 %conv.i.13, %conv5.i.13
  %conv6.i.13 = trunc i32 %xor.i.13 to i8
  %scevgep109.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i.13, i8* %scevgep109.13, align 1
  %scevgep108.14 = getelementptr i8, i8* %c, i64 14
  %235 = load i8, i8* %scevgep108.14, align 1
  %conv.i.14 = zext i8 %235 to i32
  %scevgep112.14 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 14
  %236 = load i8, i8* %scevgep112.14, align 1
  %conv5.i.14 = zext i8 %236 to i32
  %xor.i.14 = xor i32 %conv.i.14, %conv5.i.14
  %conv6.i.14 = trunc i32 %xor.i.14 to i8
  %scevgep109.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i.14, i8* %scevgep109.14, align 1
  %scevgep108.15 = getelementptr i8, i8* %c, i64 15
  %237 = load i8, i8* %scevgep108.15, align 1
  %conv.i.15 = zext i8 %237 to i32
  %scevgep112.15 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0, i64 15
  %238 = load i8, i8* %scevgep112.15, align 1
  %conv5.i.15 = zext i8 %238 to i32
  %xor.i.15 = xor i32 %conv.i.15, %conv5.i.15
  %conv6.i.15 = trunc i32 %xor.i.15 to i8
  %scevgep109.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i.15, i8* %scevgep109.15, align 1
  %239 = load i8, i8* %c, align 1
  %conv.i218 = zext i8 %239 to i32
  %scevgep118 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  %240 = load i8, i8* %scevgep118, align 1
  %conv5.i223 = zext i8 %240 to i32
  %xor.i224 = xor i32 %conv.i218, %conv5.i223
  %conv6.i225 = trunc i32 %xor.i224 to i8
  store i8 %conv6.i225, i8* %c, align 1
  %scevgep116.1 = getelementptr i8, i8* %c, i64 1
  %241 = load i8, i8* %scevgep116.1, align 1
  %conv.i218.1 = zext i8 %241 to i32
  %scevgep118.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  %242 = load i8, i8* %scevgep118.1, align 1
  %conv5.i223.1 = zext i8 %242 to i32
  %xor.i224.1 = xor i32 %conv.i218.1, %conv5.i223.1
  %conv6.i225.1 = trunc i32 %xor.i224.1 to i8
  %scevgep117.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i225.1, i8* %scevgep117.1, align 1
  %scevgep116.2 = getelementptr i8, i8* %c, i64 2
  %243 = load i8, i8* %scevgep116.2, align 1
  %conv.i218.2 = zext i8 %243 to i32
  %scevgep118.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  %244 = load i8, i8* %scevgep118.2, align 1
  %conv5.i223.2 = zext i8 %244 to i32
  %xor.i224.2 = xor i32 %conv.i218.2, %conv5.i223.2
  %conv6.i225.2 = trunc i32 %xor.i224.2 to i8
  %scevgep117.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i225.2, i8* %scevgep117.2, align 1
  %scevgep116.3 = getelementptr i8, i8* %c, i64 3
  %245 = load i8, i8* %scevgep116.3, align 1
  %conv.i218.3 = zext i8 %245 to i32
  %scevgep118.3 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  %246 = load i8, i8* %scevgep118.3, align 1
  %conv5.i223.3 = zext i8 %246 to i32
  %xor.i224.3 = xor i32 %conv.i218.3, %conv5.i223.3
  %conv6.i225.3 = trunc i32 %xor.i224.3 to i8
  %scevgep117.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i225.3, i8* %scevgep117.3, align 1
  %scevgep116.4 = getelementptr i8, i8* %c, i64 4
  %247 = load i8, i8* %scevgep116.4, align 1
  %conv.i218.4 = zext i8 %247 to i32
  %scevgep118.4 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  %248 = load i8, i8* %scevgep118.4, align 1
  %conv5.i223.4 = zext i8 %248 to i32
  %xor.i224.4 = xor i32 %conv.i218.4, %conv5.i223.4
  %conv6.i225.4 = trunc i32 %xor.i224.4 to i8
  %scevgep117.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i225.4, i8* %scevgep117.4, align 1
  %scevgep116.5 = getelementptr i8, i8* %c, i64 5
  %249 = load i8, i8* %scevgep116.5, align 1
  %conv.i218.5 = zext i8 %249 to i32
  %scevgep118.5 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  %250 = load i8, i8* %scevgep118.5, align 1
  %conv5.i223.5 = zext i8 %250 to i32
  %xor.i224.5 = xor i32 %conv.i218.5, %conv5.i223.5
  %conv6.i225.5 = trunc i32 %xor.i224.5 to i8
  %scevgep117.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i225.5, i8* %scevgep117.5, align 1
  %scevgep116.6 = getelementptr i8, i8* %c, i64 6
  %251 = load i8, i8* %scevgep116.6, align 1
  %conv.i218.6 = zext i8 %251 to i32
  %scevgep118.6 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  %252 = load i8, i8* %scevgep118.6, align 1
  %conv5.i223.6 = zext i8 %252 to i32
  %xor.i224.6 = xor i32 %conv.i218.6, %conv5.i223.6
  %conv6.i225.6 = trunc i32 %xor.i224.6 to i8
  %scevgep117.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i225.6, i8* %scevgep117.6, align 1
  %scevgep116.7 = getelementptr i8, i8* %c, i64 7
  %253 = load i8, i8* %scevgep116.7, align 1
  %conv.i218.7 = zext i8 %253 to i32
  %scevgep118.7 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  %254 = load i8, i8* %scevgep118.7, align 1
  %conv5.i223.7 = zext i8 %254 to i32
  %xor.i224.7 = xor i32 %conv.i218.7, %conv5.i223.7
  %conv6.i225.7 = trunc i32 %xor.i224.7 to i8
  %scevgep117.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i225.7, i8* %scevgep117.7, align 1
  %scevgep116.8 = getelementptr i8, i8* %c, i64 8
  %255 = load i8, i8* %scevgep116.8, align 1
  %conv.i218.8 = zext i8 %255 to i32
  %scevgep118.8 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  %256 = load i8, i8* %scevgep118.8, align 1
  %conv5.i223.8 = zext i8 %256 to i32
  %xor.i224.8 = xor i32 %conv.i218.8, %conv5.i223.8
  %conv6.i225.8 = trunc i32 %xor.i224.8 to i8
  %scevgep117.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i225.8, i8* %scevgep117.8, align 1
  %scevgep116.9 = getelementptr i8, i8* %c, i64 9
  %257 = load i8, i8* %scevgep116.9, align 1
  %conv.i218.9 = zext i8 %257 to i32
  %scevgep118.9 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  %258 = load i8, i8* %scevgep118.9, align 1
  %conv5.i223.9 = zext i8 %258 to i32
  %xor.i224.9 = xor i32 %conv.i218.9, %conv5.i223.9
  %conv6.i225.9 = trunc i32 %xor.i224.9 to i8
  %scevgep117.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i225.9, i8* %scevgep117.9, align 1
  %scevgep116.10 = getelementptr i8, i8* %c, i64 10
  %259 = load i8, i8* %scevgep116.10, align 1
  %conv.i218.10 = zext i8 %259 to i32
  %scevgep118.10 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  %260 = load i8, i8* %scevgep118.10, align 1
  %conv5.i223.10 = zext i8 %260 to i32
  %xor.i224.10 = xor i32 %conv.i218.10, %conv5.i223.10
  %conv6.i225.10 = trunc i32 %xor.i224.10 to i8
  %scevgep117.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i225.10, i8* %scevgep117.10, align 1
  %scevgep116.11 = getelementptr i8, i8* %c, i64 11
  %261 = load i8, i8* %scevgep116.11, align 1
  %conv.i218.11 = zext i8 %261 to i32
  %scevgep118.11 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  %262 = load i8, i8* %scevgep118.11, align 1
  %conv5.i223.11 = zext i8 %262 to i32
  %xor.i224.11 = xor i32 %conv.i218.11, %conv5.i223.11
  %conv6.i225.11 = trunc i32 %xor.i224.11 to i8
  %scevgep117.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i225.11, i8* %scevgep117.11, align 1
  %scevgep116.12 = getelementptr i8, i8* %c, i64 12
  %263 = load i8, i8* %scevgep116.12, align 1
  %conv.i218.12 = zext i8 %263 to i32
  %scevgep118.12 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  %264 = load i8, i8* %scevgep118.12, align 1
  %conv5.i223.12 = zext i8 %264 to i32
  %xor.i224.12 = xor i32 %conv.i218.12, %conv5.i223.12
  %conv6.i225.12 = trunc i32 %xor.i224.12 to i8
  %scevgep117.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i225.12, i8* %scevgep117.12, align 1
  %scevgep116.13 = getelementptr i8, i8* %c, i64 13
  %265 = load i8, i8* %scevgep116.13, align 1
  %conv.i218.13 = zext i8 %265 to i32
  %scevgep118.13 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  %266 = load i8, i8* %scevgep118.13, align 1
  %conv5.i223.13 = zext i8 %266 to i32
  %xor.i224.13 = xor i32 %conv.i218.13, %conv5.i223.13
  %conv6.i225.13 = trunc i32 %xor.i224.13 to i8
  %scevgep117.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i225.13, i8* %scevgep117.13, align 1
  %scevgep116.14 = getelementptr i8, i8* %c, i64 14
  %267 = load i8, i8* %scevgep116.14, align 1
  %conv.i218.14 = zext i8 %267 to i32
  %scevgep118.14 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  %268 = load i8, i8* %scevgep118.14, align 1
  %conv5.i223.14 = zext i8 %268 to i32
  %xor.i224.14 = xor i32 %conv.i218.14, %conv5.i223.14
  %conv6.i225.14 = trunc i32 %xor.i224.14 to i8
  %scevgep117.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i225.14, i8* %scevgep117.14, align 1
  %scevgep116.15 = getelementptr i8, i8* %c, i64 15
  %269 = load i8, i8* %scevgep116.15, align 1
  %conv.i218.15 = zext i8 %269 to i32
  %scevgep118.15 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  %270 = load i8, i8* %scevgep118.15, align 1
  %conv5.i223.15 = zext i8 %270 to i32
  %xor.i224.15 = xor i32 %conv.i218.15, %conv5.i223.15
  %conv6.i225.15 = trunc i32 %xor.i224.15 to i8
  %scevgep117.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i225.15, i8* %scevgep117.15, align 1
  %271 = load i8, i8* %c, align 1
  %conv.i390 = zext i8 %271 to i32
  %scevgep124 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  %272 = load i8, i8* %scevgep124, align 1
  %conv5.i395 = zext i8 %272 to i32
  %xor.i396 = xor i32 %conv.i390, %conv5.i395
  %conv6.i397 = trunc i32 %xor.i396 to i8
  store i8 %conv6.i397, i8* %c, align 1
  %scevgep122.1 = getelementptr i8, i8* %c, i64 1
  %273 = load i8, i8* %scevgep122.1, align 1
  %conv.i390.1 = zext i8 %273 to i32
  %scevgep124.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  %274 = load i8, i8* %scevgep124.1, align 1
  %conv5.i395.1 = zext i8 %274 to i32
  %xor.i396.1 = xor i32 %conv.i390.1, %conv5.i395.1
  %conv6.i397.1 = trunc i32 %xor.i396.1 to i8
  %scevgep123.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i397.1, i8* %scevgep123.1, align 1
  %scevgep122.2 = getelementptr i8, i8* %c, i64 2
  %275 = load i8, i8* %scevgep122.2, align 1
  %conv.i390.2 = zext i8 %275 to i32
  %scevgep124.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  %276 = load i8, i8* %scevgep124.2, align 1
  %conv5.i395.2 = zext i8 %276 to i32
  %xor.i396.2 = xor i32 %conv.i390.2, %conv5.i395.2
  %conv6.i397.2 = trunc i32 %xor.i396.2 to i8
  %scevgep123.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i397.2, i8* %scevgep123.2, align 1
  %scevgep122.3 = getelementptr i8, i8* %c, i64 3
  %277 = load i8, i8* %scevgep122.3, align 1
  %conv.i390.3 = zext i8 %277 to i32
  %scevgep124.3 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  %278 = load i8, i8* %scevgep124.3, align 1
  %conv5.i395.3 = zext i8 %278 to i32
  %xor.i396.3 = xor i32 %conv.i390.3, %conv5.i395.3
  %conv6.i397.3 = trunc i32 %xor.i396.3 to i8
  %scevgep123.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i397.3, i8* %scevgep123.3, align 1
  %scevgep122.4 = getelementptr i8, i8* %c, i64 4
  %279 = load i8, i8* %scevgep122.4, align 1
  %conv.i390.4 = zext i8 %279 to i32
  %scevgep124.4 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  %280 = load i8, i8* %scevgep124.4, align 1
  %conv5.i395.4 = zext i8 %280 to i32
  %xor.i396.4 = xor i32 %conv.i390.4, %conv5.i395.4
  %conv6.i397.4 = trunc i32 %xor.i396.4 to i8
  %scevgep123.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i397.4, i8* %scevgep123.4, align 1
  %scevgep122.5 = getelementptr i8, i8* %c, i64 5
  %281 = load i8, i8* %scevgep122.5, align 1
  %conv.i390.5 = zext i8 %281 to i32
  %scevgep124.5 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  %282 = load i8, i8* %scevgep124.5, align 1
  %conv5.i395.5 = zext i8 %282 to i32
  %xor.i396.5 = xor i32 %conv.i390.5, %conv5.i395.5
  %conv6.i397.5 = trunc i32 %xor.i396.5 to i8
  %scevgep123.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i397.5, i8* %scevgep123.5, align 1
  %scevgep122.6 = getelementptr i8, i8* %c, i64 6
  %283 = load i8, i8* %scevgep122.6, align 1
  %conv.i390.6 = zext i8 %283 to i32
  %scevgep124.6 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  %284 = load i8, i8* %scevgep124.6, align 1
  %conv5.i395.6 = zext i8 %284 to i32
  %xor.i396.6 = xor i32 %conv.i390.6, %conv5.i395.6
  %conv6.i397.6 = trunc i32 %xor.i396.6 to i8
  %scevgep123.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i397.6, i8* %scevgep123.6, align 1
  %scevgep122.7 = getelementptr i8, i8* %c, i64 7
  %285 = load i8, i8* %scevgep122.7, align 1
  %conv.i390.7 = zext i8 %285 to i32
  %scevgep124.7 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  %286 = load i8, i8* %scevgep124.7, align 1
  %conv5.i395.7 = zext i8 %286 to i32
  %xor.i396.7 = xor i32 %conv.i390.7, %conv5.i395.7
  %conv6.i397.7 = trunc i32 %xor.i396.7 to i8
  %scevgep123.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i397.7, i8* %scevgep123.7, align 1
  %scevgep122.8 = getelementptr i8, i8* %c, i64 8
  %287 = load i8, i8* %scevgep122.8, align 1
  %conv.i390.8 = zext i8 %287 to i32
  %scevgep124.8 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  %288 = load i8, i8* %scevgep124.8, align 1
  %conv5.i395.8 = zext i8 %288 to i32
  %xor.i396.8 = xor i32 %conv.i390.8, %conv5.i395.8
  %conv6.i397.8 = trunc i32 %xor.i396.8 to i8
  %scevgep123.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i397.8, i8* %scevgep123.8, align 1
  %scevgep122.9 = getelementptr i8, i8* %c, i64 9
  %289 = load i8, i8* %scevgep122.9, align 1
  %conv.i390.9 = zext i8 %289 to i32
  %scevgep124.9 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  %290 = load i8, i8* %scevgep124.9, align 1
  %conv5.i395.9 = zext i8 %290 to i32
  %xor.i396.9 = xor i32 %conv.i390.9, %conv5.i395.9
  %conv6.i397.9 = trunc i32 %xor.i396.9 to i8
  %scevgep123.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i397.9, i8* %scevgep123.9, align 1
  %scevgep122.10 = getelementptr i8, i8* %c, i64 10
  %291 = load i8, i8* %scevgep122.10, align 1
  %conv.i390.10 = zext i8 %291 to i32
  %scevgep124.10 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  %292 = load i8, i8* %scevgep124.10, align 1
  %conv5.i395.10 = zext i8 %292 to i32
  %xor.i396.10 = xor i32 %conv.i390.10, %conv5.i395.10
  %conv6.i397.10 = trunc i32 %xor.i396.10 to i8
  %scevgep123.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i397.10, i8* %scevgep123.10, align 1
  %scevgep122.11 = getelementptr i8, i8* %c, i64 11
  %293 = load i8, i8* %scevgep122.11, align 1
  %conv.i390.11 = zext i8 %293 to i32
  %scevgep124.11 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  %294 = load i8, i8* %scevgep124.11, align 1
  %conv5.i395.11 = zext i8 %294 to i32
  %xor.i396.11 = xor i32 %conv.i390.11, %conv5.i395.11
  %conv6.i397.11 = trunc i32 %xor.i396.11 to i8
  %scevgep123.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i397.11, i8* %scevgep123.11, align 1
  %scevgep122.12 = getelementptr i8, i8* %c, i64 12
  %295 = load i8, i8* %scevgep122.12, align 1
  %conv.i390.12 = zext i8 %295 to i32
  %scevgep124.12 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  %296 = load i8, i8* %scevgep124.12, align 1
  %conv5.i395.12 = zext i8 %296 to i32
  %xor.i396.12 = xor i32 %conv.i390.12, %conv5.i395.12
  %conv6.i397.12 = trunc i32 %xor.i396.12 to i8
  %scevgep123.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i397.12, i8* %scevgep123.12, align 1
  %scevgep122.13 = getelementptr i8, i8* %c, i64 13
  %297 = load i8, i8* %scevgep122.13, align 1
  %conv.i390.13 = zext i8 %297 to i32
  %scevgep124.13 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  %298 = load i8, i8* %scevgep124.13, align 1
  %conv5.i395.13 = zext i8 %298 to i32
  %xor.i396.13 = xor i32 %conv.i390.13, %conv5.i395.13
  %conv6.i397.13 = trunc i32 %xor.i396.13 to i8
  %scevgep123.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i397.13, i8* %scevgep123.13, align 1
  %scevgep122.14 = getelementptr i8, i8* %c, i64 14
  %299 = load i8, i8* %scevgep122.14, align 1
  %conv.i390.14 = zext i8 %299 to i32
  %scevgep124.14 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  %300 = load i8, i8* %scevgep124.14, align 1
  %conv5.i395.14 = zext i8 %300 to i32
  %xor.i396.14 = xor i32 %conv.i390.14, %conv5.i395.14
  %conv6.i397.14 = trunc i32 %xor.i396.14 to i8
  %scevgep123.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i397.14, i8* %scevgep123.14, align 1
  %scevgep122.15 = getelementptr i8, i8* %c, i64 15
  %301 = load i8, i8* %scevgep122.15, align 1
  %conv.i390.15 = zext i8 %301 to i32
  %scevgep124.15 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  %302 = load i8, i8* %scevgep124.15, align 1
  %conv5.i395.15 = zext i8 %302 to i32
  %xor.i396.15 = xor i32 %conv.i390.15, %conv5.i395.15
  %conv6.i397.15 = trunc i32 %xor.i396.15 to i8
  %scevgep123.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i397.15, i8* %scevgep123.15, align 1
  %arrayidx42 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx42, i64 0, i64 0
  %303 = load i8, i8* %c, align 1
  %conv.i437 = zext i8 %303 to i32
  %arrayidx4.i441 = getelementptr inbounds i8, i8* %arraydecay43, i64 1
  %304 = load i8, i8* %arrayidx4.i441, align 1
  %conv5.i442 = zext i8 %304 to i32
  %xor.i443 = xor i32 %conv.i437, %conv5.i442
  %conv6.i444 = trunc i32 %xor.i443 to i8
  store i8 %conv6.i444, i8* %c, align 1
  %scevgep128.1 = getelementptr i8, i8* %c, i64 1
  %305 = load i8, i8* %scevgep128.1, align 1
  %conv.i437.1 = zext i8 %305 to i32
  %arrayidx4.i441.1 = getelementptr inbounds i8, i8* %arraydecay43, i64 2
  %306 = load i8, i8* %arrayidx4.i441.1, align 1
  %conv5.i442.1 = zext i8 %306 to i32
  %xor.i443.1 = xor i32 %conv.i437.1, %conv5.i442.1
  %conv6.i444.1 = trunc i32 %xor.i443.1 to i8
  %scevgep129.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i444.1, i8* %scevgep129.1, align 1
  %scevgep128.2 = getelementptr i8, i8* %c, i64 2
  %307 = load i8, i8* %scevgep128.2, align 1
  %conv.i437.2 = zext i8 %307 to i32
  %arrayidx4.i441.2 = getelementptr inbounds i8, i8* %arraydecay43, i64 3
  %308 = load i8, i8* %arrayidx4.i441.2, align 1
  %conv5.i442.2 = zext i8 %308 to i32
  %xor.i443.2 = xor i32 %conv.i437.2, %conv5.i442.2
  %conv6.i444.2 = trunc i32 %xor.i443.2 to i8
  %scevgep129.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i444.2, i8* %scevgep129.2, align 1
  %scevgep128.3 = getelementptr i8, i8* %c, i64 3
  %309 = load i8, i8* %scevgep128.3, align 1
  %conv.i437.3 = zext i8 %309 to i32
  %arrayidx4.i441.3 = getelementptr inbounds i8, i8* %arraydecay43, i64 4
  %310 = load i8, i8* %arrayidx4.i441.3, align 1
  %conv5.i442.3 = zext i8 %310 to i32
  %xor.i443.3 = xor i32 %conv.i437.3, %conv5.i442.3
  %conv6.i444.3 = trunc i32 %xor.i443.3 to i8
  %scevgep129.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i444.3, i8* %scevgep129.3, align 1
  %scevgep128.4 = getelementptr i8, i8* %c, i64 4
  %311 = load i8, i8* %scevgep128.4, align 1
  %conv.i437.4 = zext i8 %311 to i32
  %arrayidx4.i441.4 = getelementptr inbounds i8, i8* %arraydecay43, i64 5
  %312 = load i8, i8* %arrayidx4.i441.4, align 1
  %conv5.i442.4 = zext i8 %312 to i32
  %xor.i443.4 = xor i32 %conv.i437.4, %conv5.i442.4
  %conv6.i444.4 = trunc i32 %xor.i443.4 to i8
  %scevgep129.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i444.4, i8* %scevgep129.4, align 1
  %scevgep128.5 = getelementptr i8, i8* %c, i64 5
  %313 = load i8, i8* %scevgep128.5, align 1
  %conv.i437.5 = zext i8 %313 to i32
  %arrayidx4.i441.5 = getelementptr inbounds i8, i8* %arraydecay43, i64 6
  %314 = load i8, i8* %arrayidx4.i441.5, align 1
  %conv5.i442.5 = zext i8 %314 to i32
  %xor.i443.5 = xor i32 %conv.i437.5, %conv5.i442.5
  %conv6.i444.5 = trunc i32 %xor.i443.5 to i8
  %scevgep129.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i444.5, i8* %scevgep129.5, align 1
  %scevgep128.6 = getelementptr i8, i8* %c, i64 6
  %315 = load i8, i8* %scevgep128.6, align 1
  %conv.i437.6 = zext i8 %315 to i32
  %arrayidx4.i441.6 = getelementptr inbounds i8, i8* %arraydecay43, i64 7
  %316 = load i8, i8* %arrayidx4.i441.6, align 1
  %conv5.i442.6 = zext i8 %316 to i32
  %xor.i443.6 = xor i32 %conv.i437.6, %conv5.i442.6
  %conv6.i444.6 = trunc i32 %xor.i443.6 to i8
  %scevgep129.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i444.6, i8* %scevgep129.6, align 1
  %scevgep128.7 = getelementptr i8, i8* %c, i64 7
  %317 = load i8, i8* %scevgep128.7, align 1
  %conv.i437.7 = zext i8 %317 to i32
  %arrayidx4.i441.7 = getelementptr inbounds i8, i8* %arraydecay43, i64 8
  %318 = load i8, i8* %arrayidx4.i441.7, align 1
  %conv5.i442.7 = zext i8 %318 to i32
  %xor.i443.7 = xor i32 %conv.i437.7, %conv5.i442.7
  %conv6.i444.7 = trunc i32 %xor.i443.7 to i8
  %scevgep129.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i444.7, i8* %scevgep129.7, align 1
  %scevgep128.8 = getelementptr i8, i8* %c, i64 8
  %319 = load i8, i8* %scevgep128.8, align 1
  %conv.i437.8 = zext i8 %319 to i32
  %arrayidx4.i441.8 = getelementptr inbounds i8, i8* %arraydecay43, i64 9
  %320 = load i8, i8* %arrayidx4.i441.8, align 1
  %conv5.i442.8 = zext i8 %320 to i32
  %xor.i443.8 = xor i32 %conv.i437.8, %conv5.i442.8
  %conv6.i444.8 = trunc i32 %xor.i443.8 to i8
  %scevgep129.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i444.8, i8* %scevgep129.8, align 1
  %scevgep128.9 = getelementptr i8, i8* %c, i64 9
  %321 = load i8, i8* %scevgep128.9, align 1
  %conv.i437.9 = zext i8 %321 to i32
  %arrayidx4.i441.9 = getelementptr inbounds i8, i8* %arraydecay43, i64 10
  %322 = load i8, i8* %arrayidx4.i441.9, align 1
  %conv5.i442.9 = zext i8 %322 to i32
  %xor.i443.9 = xor i32 %conv.i437.9, %conv5.i442.9
  %conv6.i444.9 = trunc i32 %xor.i443.9 to i8
  %scevgep129.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i444.9, i8* %scevgep129.9, align 1
  %scevgep128.10 = getelementptr i8, i8* %c, i64 10
  %323 = load i8, i8* %scevgep128.10, align 1
  %conv.i437.10 = zext i8 %323 to i32
  %arrayidx4.i441.10 = getelementptr inbounds i8, i8* %arraydecay43, i64 11
  %324 = load i8, i8* %arrayidx4.i441.10, align 1
  %conv5.i442.10 = zext i8 %324 to i32
  %xor.i443.10 = xor i32 %conv.i437.10, %conv5.i442.10
  %conv6.i444.10 = trunc i32 %xor.i443.10 to i8
  %scevgep129.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i444.10, i8* %scevgep129.10, align 1
  %scevgep128.11 = getelementptr i8, i8* %c, i64 11
  %325 = load i8, i8* %scevgep128.11, align 1
  %conv.i437.11 = zext i8 %325 to i32
  %arrayidx4.i441.11 = getelementptr inbounds i8, i8* %arraydecay43, i64 12
  %326 = load i8, i8* %arrayidx4.i441.11, align 1
  %conv5.i442.11 = zext i8 %326 to i32
  %xor.i443.11 = xor i32 %conv.i437.11, %conv5.i442.11
  %conv6.i444.11 = trunc i32 %xor.i443.11 to i8
  %scevgep129.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i444.11, i8* %scevgep129.11, align 1
  %scevgep128.12 = getelementptr i8, i8* %c, i64 12
  %327 = load i8, i8* %scevgep128.12, align 1
  %conv.i437.12 = zext i8 %327 to i32
  %arrayidx4.i441.12 = getelementptr inbounds i8, i8* %arraydecay43, i64 13
  %328 = load i8, i8* %arrayidx4.i441.12, align 1
  %conv5.i442.12 = zext i8 %328 to i32
  %xor.i443.12 = xor i32 %conv.i437.12, %conv5.i442.12
  %conv6.i444.12 = trunc i32 %xor.i443.12 to i8
  %scevgep129.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i444.12, i8* %scevgep129.12, align 1
  %scevgep128.13 = getelementptr i8, i8* %c, i64 13
  %329 = load i8, i8* %scevgep128.13, align 1
  %conv.i437.13 = zext i8 %329 to i32
  %arrayidx4.i441.13 = getelementptr inbounds i8, i8* %arraydecay43, i64 14
  %330 = load i8, i8* %arrayidx4.i441.13, align 1
  %conv5.i442.13 = zext i8 %330 to i32
  %xor.i443.13 = xor i32 %conv.i437.13, %conv5.i442.13
  %conv6.i444.13 = trunc i32 %xor.i443.13 to i8
  %scevgep129.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i444.13, i8* %scevgep129.13, align 1
  %scevgep128.14 = getelementptr i8, i8* %c, i64 14
  %331 = load i8, i8* %scevgep128.14, align 1
  %conv.i437.14 = zext i8 %331 to i32
  %arrayidx4.i441.14 = getelementptr inbounds i8, i8* %arraydecay43, i64 15
  %332 = load i8, i8* %arrayidx4.i441.14, align 1
  %conv5.i442.14 = zext i8 %332 to i32
  %xor.i443.14 = xor i32 %conv.i437.14, %conv5.i442.14
  %conv6.i444.14 = trunc i32 %xor.i443.14 to i8
  %scevgep129.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i444.14, i8* %scevgep129.14, align 1
  %scevgep128.15 = getelementptr i8, i8* %c, i64 15
  %333 = load i8, i8* %scevgep128.15, align 1
  %conv.i437.15 = zext i8 %333 to i32
  %334 = load i8, i8* %arraydecay43, align 1
  %conv5.i442.15 = zext i8 %334 to i32
  %xor.i443.15 = xor i32 %conv.i437.15, %conv5.i442.15
  %conv6.i444.15 = trunc i32 %xor.i443.15 to i8
  %scevgep129.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i444.15, i8* %scevgep129.15, align 1
  %335 = load i8, i8* %c, align 1
  %conv.i484 = zext i8 %335 to i32
  %scevgep136 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  %336 = load i8, i8* %scevgep136, align 1
  %conv5.i489 = zext i8 %336 to i32
  %xor.i490 = xor i32 %conv.i484, %conv5.i489
  %conv6.i491 = trunc i32 %xor.i490 to i8
  store i8 %conv6.i491, i8* %c, align 1
  %scevgep134.1 = getelementptr i8, i8* %c, i64 1
  %337 = load i8, i8* %scevgep134.1, align 1
  %conv.i484.1 = zext i8 %337 to i32
  %scevgep136.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  %338 = load i8, i8* %scevgep136.1, align 1
  %conv5.i489.1 = zext i8 %338 to i32
  %xor.i490.1 = xor i32 %conv.i484.1, %conv5.i489.1
  %conv6.i491.1 = trunc i32 %xor.i490.1 to i8
  %scevgep135.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i491.1, i8* %scevgep135.1, align 1
  %scevgep134.2 = getelementptr i8, i8* %c, i64 2
  %339 = load i8, i8* %scevgep134.2, align 1
  %conv.i484.2 = zext i8 %339 to i32
  %scevgep136.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  %340 = load i8, i8* %scevgep136.2, align 1
  %conv5.i489.2 = zext i8 %340 to i32
  %xor.i490.2 = xor i32 %conv.i484.2, %conv5.i489.2
  %conv6.i491.2 = trunc i32 %xor.i490.2 to i8
  %scevgep135.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i491.2, i8* %scevgep135.2, align 1
  %scevgep134.3 = getelementptr i8, i8* %c, i64 3
  %341 = load i8, i8* %scevgep134.3, align 1
  %conv.i484.3 = zext i8 %341 to i32
  %scevgep136.3 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  %342 = load i8, i8* %scevgep136.3, align 1
  %conv5.i489.3 = zext i8 %342 to i32
  %xor.i490.3 = xor i32 %conv.i484.3, %conv5.i489.3
  %conv6.i491.3 = trunc i32 %xor.i490.3 to i8
  %scevgep135.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i491.3, i8* %scevgep135.3, align 1
  %scevgep134.4 = getelementptr i8, i8* %c, i64 4
  %343 = load i8, i8* %scevgep134.4, align 1
  %conv.i484.4 = zext i8 %343 to i32
  %scevgep136.4 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  %344 = load i8, i8* %scevgep136.4, align 1
  %conv5.i489.4 = zext i8 %344 to i32
  %xor.i490.4 = xor i32 %conv.i484.4, %conv5.i489.4
  %conv6.i491.4 = trunc i32 %xor.i490.4 to i8
  %scevgep135.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i491.4, i8* %scevgep135.4, align 1
  %scevgep134.5 = getelementptr i8, i8* %c, i64 5
  %345 = load i8, i8* %scevgep134.5, align 1
  %conv.i484.5 = zext i8 %345 to i32
  %scevgep136.5 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  %346 = load i8, i8* %scevgep136.5, align 1
  %conv5.i489.5 = zext i8 %346 to i32
  %xor.i490.5 = xor i32 %conv.i484.5, %conv5.i489.5
  %conv6.i491.5 = trunc i32 %xor.i490.5 to i8
  %scevgep135.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i491.5, i8* %scevgep135.5, align 1
  %scevgep134.6 = getelementptr i8, i8* %c, i64 6
  %347 = load i8, i8* %scevgep134.6, align 1
  %conv.i484.6 = zext i8 %347 to i32
  %scevgep136.6 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  %348 = load i8, i8* %scevgep136.6, align 1
  %conv5.i489.6 = zext i8 %348 to i32
  %xor.i490.6 = xor i32 %conv.i484.6, %conv5.i489.6
  %conv6.i491.6 = trunc i32 %xor.i490.6 to i8
  %scevgep135.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i491.6, i8* %scevgep135.6, align 1
  %scevgep134.7 = getelementptr i8, i8* %c, i64 7
  %349 = load i8, i8* %scevgep134.7, align 1
  %conv.i484.7 = zext i8 %349 to i32
  %scevgep136.7 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  %350 = load i8, i8* %scevgep136.7, align 1
  %conv5.i489.7 = zext i8 %350 to i32
  %xor.i490.7 = xor i32 %conv.i484.7, %conv5.i489.7
  %conv6.i491.7 = trunc i32 %xor.i490.7 to i8
  %scevgep135.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i491.7, i8* %scevgep135.7, align 1
  %scevgep134.8 = getelementptr i8, i8* %c, i64 8
  %351 = load i8, i8* %scevgep134.8, align 1
  %conv.i484.8 = zext i8 %351 to i32
  %scevgep136.8 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  %352 = load i8, i8* %scevgep136.8, align 1
  %conv5.i489.8 = zext i8 %352 to i32
  %xor.i490.8 = xor i32 %conv.i484.8, %conv5.i489.8
  %conv6.i491.8 = trunc i32 %xor.i490.8 to i8
  %scevgep135.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i491.8, i8* %scevgep135.8, align 1
  %scevgep134.9 = getelementptr i8, i8* %c, i64 9
  %353 = load i8, i8* %scevgep134.9, align 1
  %conv.i484.9 = zext i8 %353 to i32
  %scevgep136.9 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  %354 = load i8, i8* %scevgep136.9, align 1
  %conv5.i489.9 = zext i8 %354 to i32
  %xor.i490.9 = xor i32 %conv.i484.9, %conv5.i489.9
  %conv6.i491.9 = trunc i32 %xor.i490.9 to i8
  %scevgep135.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i491.9, i8* %scevgep135.9, align 1
  %scevgep134.10 = getelementptr i8, i8* %c, i64 10
  %355 = load i8, i8* %scevgep134.10, align 1
  %conv.i484.10 = zext i8 %355 to i32
  %scevgep136.10 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  %356 = load i8, i8* %scevgep136.10, align 1
  %conv5.i489.10 = zext i8 %356 to i32
  %xor.i490.10 = xor i32 %conv.i484.10, %conv5.i489.10
  %conv6.i491.10 = trunc i32 %xor.i490.10 to i8
  %scevgep135.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i491.10, i8* %scevgep135.10, align 1
  %scevgep134.11 = getelementptr i8, i8* %c, i64 11
  %357 = load i8, i8* %scevgep134.11, align 1
  %conv.i484.11 = zext i8 %357 to i32
  %scevgep136.11 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  %358 = load i8, i8* %scevgep136.11, align 1
  %conv5.i489.11 = zext i8 %358 to i32
  %xor.i490.11 = xor i32 %conv.i484.11, %conv5.i489.11
  %conv6.i491.11 = trunc i32 %xor.i490.11 to i8
  %scevgep135.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i491.11, i8* %scevgep135.11, align 1
  %scevgep134.12 = getelementptr i8, i8* %c, i64 12
  %359 = load i8, i8* %scevgep134.12, align 1
  %conv.i484.12 = zext i8 %359 to i32
  %scevgep136.12 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  %360 = load i8, i8* %scevgep136.12, align 1
  %conv5.i489.12 = zext i8 %360 to i32
  %xor.i490.12 = xor i32 %conv.i484.12, %conv5.i489.12
  %conv6.i491.12 = trunc i32 %xor.i490.12 to i8
  %scevgep135.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i491.12, i8* %scevgep135.12, align 1
  %scevgep134.13 = getelementptr i8, i8* %c, i64 13
  %361 = load i8, i8* %scevgep134.13, align 1
  %conv.i484.13 = zext i8 %361 to i32
  %scevgep136.13 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  %362 = load i8, i8* %scevgep136.13, align 1
  %conv5.i489.13 = zext i8 %362 to i32
  %xor.i490.13 = xor i32 %conv.i484.13, %conv5.i489.13
  %conv6.i491.13 = trunc i32 %xor.i490.13 to i8
  %scevgep135.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i491.13, i8* %scevgep135.13, align 1
  %scevgep134.14 = getelementptr i8, i8* %c, i64 14
  %363 = load i8, i8* %scevgep134.14, align 1
  %conv.i484.14 = zext i8 %363 to i32
  %scevgep136.14 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  %364 = load i8, i8* %scevgep136.14, align 1
  %conv5.i489.14 = zext i8 %364 to i32
  %xor.i490.14 = xor i32 %conv.i484.14, %conv5.i489.14
  %conv6.i491.14 = trunc i32 %xor.i490.14 to i8
  %scevgep135.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i491.14, i8* %scevgep135.14, align 1
  %scevgep134.15 = getelementptr i8, i8* %c, i64 15
  %365 = load i8, i8* %scevgep134.15, align 1
  %conv.i484.15 = zext i8 %365 to i32
  %scevgep136.15 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  %366 = load i8, i8* %scevgep136.15, align 1
  %conv5.i489.15 = zext i8 %366 to i32
  %xor.i490.15 = xor i32 %conv.i484.15, %conv5.i489.15
  %conv6.i491.15 = trunc i32 %xor.i490.15 to i8
  %scevgep135.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i491.15, i8* %scevgep135.15, align 1
  %367 = load i8, i8* %c, align 1
  %conv.i509 = zext i8 %367 to i32
  %scevgep142 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  %368 = load i8, i8* %scevgep142, align 1
  %conv5.i514 = zext i8 %368 to i32
  %xor.i515 = xor i32 %conv.i509, %conv5.i514
  %conv6.i516 = trunc i32 %xor.i515 to i8
  store i8 %conv6.i516, i8* %c, align 1
  %scevgep140.1 = getelementptr i8, i8* %c, i64 1
  %369 = load i8, i8* %scevgep140.1, align 1
  %conv.i509.1 = zext i8 %369 to i32
  %scevgep142.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 1
  %370 = load i8, i8* %scevgep142.1, align 1
  %conv5.i514.1 = zext i8 %370 to i32
  %xor.i515.1 = xor i32 %conv.i509.1, %conv5.i514.1
  %conv6.i516.1 = trunc i32 %xor.i515.1 to i8
  %scevgep141.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i516.1, i8* %scevgep141.1, align 1
  %scevgep140.2 = getelementptr i8, i8* %c, i64 2
  %371 = load i8, i8* %scevgep140.2, align 1
  %conv.i509.2 = zext i8 %371 to i32
  %scevgep142.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 2
  %372 = load i8, i8* %scevgep142.2, align 1
  %conv5.i514.2 = zext i8 %372 to i32
  %xor.i515.2 = xor i32 %conv.i509.2, %conv5.i514.2
  %conv6.i516.2 = trunc i32 %xor.i515.2 to i8
  %scevgep141.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i516.2, i8* %scevgep141.2, align 1
  %scevgep140.3 = getelementptr i8, i8* %c, i64 3
  %373 = load i8, i8* %scevgep140.3, align 1
  %conv.i509.3 = zext i8 %373 to i32
  %scevgep142.3 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 3
  %374 = load i8, i8* %scevgep142.3, align 1
  %conv5.i514.3 = zext i8 %374 to i32
  %xor.i515.3 = xor i32 %conv.i509.3, %conv5.i514.3
  %conv6.i516.3 = trunc i32 %xor.i515.3 to i8
  %scevgep141.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i516.3, i8* %scevgep141.3, align 1
  %scevgep140.4 = getelementptr i8, i8* %c, i64 4
  %375 = load i8, i8* %scevgep140.4, align 1
  %conv.i509.4 = zext i8 %375 to i32
  %scevgep142.4 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 4
  %376 = load i8, i8* %scevgep142.4, align 1
  %conv5.i514.4 = zext i8 %376 to i32
  %xor.i515.4 = xor i32 %conv.i509.4, %conv5.i514.4
  %conv6.i516.4 = trunc i32 %xor.i515.4 to i8
  %scevgep141.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i516.4, i8* %scevgep141.4, align 1
  %scevgep140.5 = getelementptr i8, i8* %c, i64 5
  %377 = load i8, i8* %scevgep140.5, align 1
  %conv.i509.5 = zext i8 %377 to i32
  %scevgep142.5 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 5
  %378 = load i8, i8* %scevgep142.5, align 1
  %conv5.i514.5 = zext i8 %378 to i32
  %xor.i515.5 = xor i32 %conv.i509.5, %conv5.i514.5
  %conv6.i516.5 = trunc i32 %xor.i515.5 to i8
  %scevgep141.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i516.5, i8* %scevgep141.5, align 1
  %scevgep140.6 = getelementptr i8, i8* %c, i64 6
  %379 = load i8, i8* %scevgep140.6, align 1
  %conv.i509.6 = zext i8 %379 to i32
  %scevgep142.6 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 6
  %380 = load i8, i8* %scevgep142.6, align 1
  %conv5.i514.6 = zext i8 %380 to i32
  %xor.i515.6 = xor i32 %conv.i509.6, %conv5.i514.6
  %conv6.i516.6 = trunc i32 %xor.i515.6 to i8
  %scevgep141.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i516.6, i8* %scevgep141.6, align 1
  %scevgep140.7 = getelementptr i8, i8* %c, i64 7
  %381 = load i8, i8* %scevgep140.7, align 1
  %conv.i509.7 = zext i8 %381 to i32
  %scevgep142.7 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 7
  %382 = load i8, i8* %scevgep142.7, align 1
  %conv5.i514.7 = zext i8 %382 to i32
  %xor.i515.7 = xor i32 %conv.i509.7, %conv5.i514.7
  %conv6.i516.7 = trunc i32 %xor.i515.7 to i8
  %scevgep141.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i516.7, i8* %scevgep141.7, align 1
  %scevgep140.8 = getelementptr i8, i8* %c, i64 8
  %383 = load i8, i8* %scevgep140.8, align 1
  %conv.i509.8 = zext i8 %383 to i32
  %scevgep142.8 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 8
  %384 = load i8, i8* %scevgep142.8, align 1
  %conv5.i514.8 = zext i8 %384 to i32
  %xor.i515.8 = xor i32 %conv.i509.8, %conv5.i514.8
  %conv6.i516.8 = trunc i32 %xor.i515.8 to i8
  %scevgep141.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i516.8, i8* %scevgep141.8, align 1
  %scevgep140.9 = getelementptr i8, i8* %c, i64 9
  %385 = load i8, i8* %scevgep140.9, align 1
  %conv.i509.9 = zext i8 %385 to i32
  %scevgep142.9 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 9
  %386 = load i8, i8* %scevgep142.9, align 1
  %conv5.i514.9 = zext i8 %386 to i32
  %xor.i515.9 = xor i32 %conv.i509.9, %conv5.i514.9
  %conv6.i516.9 = trunc i32 %xor.i515.9 to i8
  %scevgep141.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i516.9, i8* %scevgep141.9, align 1
  %scevgep140.10 = getelementptr i8, i8* %c, i64 10
  %387 = load i8, i8* %scevgep140.10, align 1
  %conv.i509.10 = zext i8 %387 to i32
  %scevgep142.10 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 10
  %388 = load i8, i8* %scevgep142.10, align 1
  %conv5.i514.10 = zext i8 %388 to i32
  %xor.i515.10 = xor i32 %conv.i509.10, %conv5.i514.10
  %conv6.i516.10 = trunc i32 %xor.i515.10 to i8
  %scevgep141.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i516.10, i8* %scevgep141.10, align 1
  %scevgep140.11 = getelementptr i8, i8* %c, i64 11
  %389 = load i8, i8* %scevgep140.11, align 1
  %conv.i509.11 = zext i8 %389 to i32
  %scevgep142.11 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 11
  %390 = load i8, i8* %scevgep142.11, align 1
  %conv5.i514.11 = zext i8 %390 to i32
  %xor.i515.11 = xor i32 %conv.i509.11, %conv5.i514.11
  %conv6.i516.11 = trunc i32 %xor.i515.11 to i8
  %scevgep141.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i516.11, i8* %scevgep141.11, align 1
  %scevgep140.12 = getelementptr i8, i8* %c, i64 12
  %391 = load i8, i8* %scevgep140.12, align 1
  %conv.i509.12 = zext i8 %391 to i32
  %scevgep142.12 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 12
  %392 = load i8, i8* %scevgep142.12, align 1
  %conv5.i514.12 = zext i8 %392 to i32
  %xor.i515.12 = xor i32 %conv.i509.12, %conv5.i514.12
  %conv6.i516.12 = trunc i32 %xor.i515.12 to i8
  %scevgep141.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i516.12, i8* %scevgep141.12, align 1
  %scevgep140.13 = getelementptr i8, i8* %c, i64 13
  %393 = load i8, i8* %scevgep140.13, align 1
  %conv.i509.13 = zext i8 %393 to i32
  %scevgep142.13 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 13
  %394 = load i8, i8* %scevgep142.13, align 1
  %conv5.i514.13 = zext i8 %394 to i32
  %xor.i515.13 = xor i32 %conv.i509.13, %conv5.i514.13
  %conv6.i516.13 = trunc i32 %xor.i515.13 to i8
  %scevgep141.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i516.13, i8* %scevgep141.13, align 1
  %scevgep140.14 = getelementptr i8, i8* %c, i64 14
  %395 = load i8, i8* %scevgep140.14, align 1
  %conv.i509.14 = zext i8 %395 to i32
  %scevgep142.14 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 14
  %396 = load i8, i8* %scevgep142.14, align 1
  %conv5.i514.14 = zext i8 %396 to i32
  %xor.i515.14 = xor i32 %conv.i509.14, %conv5.i514.14
  %conv6.i516.14 = trunc i32 %xor.i515.14 to i8
  %scevgep141.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i516.14, i8* %scevgep141.14, align 1
  %scevgep140.15 = getelementptr i8, i8* %c, i64 15
  %397 = load i8, i8* %scevgep140.15, align 1
  %conv.i509.15 = zext i8 %397 to i32
  %scevgep142.15 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 15
  %398 = load i8, i8* %scevgep142.15, align 1
  %conv5.i514.15 = zext i8 %398 to i32
  %xor.i515.15 = xor i32 %conv.i509.15, %conv5.i514.15
  %conv6.i516.15 = trunc i32 %xor.i515.15 to i8
  %scevgep141.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i516.15, i8* %scevgep141.15, align 1
  %scevgep111 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1, i64 0
  %399 = bitcast i8* %scevgep111 to [16 x [16 x i8]]*
  %400 = load i8, i8* %a, align 1
  %arrayidx4.i98.1167 = getelementptr inbounds i8, i8* %b, i64 3
  %401 = load i8, i8* %arrayidx4.i98.1167, align 1
  %call.i99.1168 = call zeroext i8 @mult(i8 zeroext %400, i8 zeroext %401) #2
  %scevgep84.1169 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i99.1168, i8* %scevgep84.1169, align 1
  %scevgep80.1.1 = getelementptr i8, i8* %a, i64 1
  %402 = load i8, i8* %scevgep80.1.1, align 1
  %arrayidx4.i98.1.1 = getelementptr inbounds i8, i8* %b, i64 4
  %403 = load i8, i8* %arrayidx4.i98.1.1, align 1
  %call.i99.1.1 = call zeroext i8 @mult(i8 zeroext %402, i8 zeroext %403) #2
  %scevgep84.1.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i99.1.1, i8* %scevgep84.1.1, align 1
  %scevgep80.2.1 = getelementptr i8, i8* %a, i64 2
  %404 = load i8, i8* %scevgep80.2.1, align 1
  %arrayidx4.i98.2.1 = getelementptr inbounds i8, i8* %b, i64 5
  %405 = load i8, i8* %arrayidx4.i98.2.1, align 1
  %call.i99.2.1 = call zeroext i8 @mult(i8 zeroext %404, i8 zeroext %405) #2
  %scevgep84.2.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i99.2.1, i8* %scevgep84.2.1, align 1
  %scevgep80.3.1 = getelementptr i8, i8* %a, i64 3
  %406 = load i8, i8* %scevgep80.3.1, align 1
  %arrayidx4.i98.3.1 = getelementptr inbounds i8, i8* %b, i64 6
  %407 = load i8, i8* %arrayidx4.i98.3.1, align 1
  %call.i99.3.1 = call zeroext i8 @mult(i8 zeroext %406, i8 zeroext %407) #2
  %scevgep84.3.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i99.3.1, i8* %scevgep84.3.1, align 1
  %scevgep80.4.1 = getelementptr i8, i8* %a, i64 4
  %408 = load i8, i8* %scevgep80.4.1, align 1
  %arrayidx4.i98.4.1 = getelementptr inbounds i8, i8* %b, i64 7
  %409 = load i8, i8* %arrayidx4.i98.4.1, align 1
  %call.i99.4.1 = call zeroext i8 @mult(i8 zeroext %408, i8 zeroext %409) #2
  %scevgep84.4.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i99.4.1, i8* %scevgep84.4.1, align 1
  %scevgep80.5.1 = getelementptr i8, i8* %a, i64 5
  %410 = load i8, i8* %scevgep80.5.1, align 1
  %arrayidx4.i98.5.1 = getelementptr inbounds i8, i8* %b, i64 8
  %411 = load i8, i8* %arrayidx4.i98.5.1, align 1
  %call.i99.5.1 = call zeroext i8 @mult(i8 zeroext %410, i8 zeroext %411) #2
  %scevgep84.5.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i99.5.1, i8* %scevgep84.5.1, align 1
  %scevgep80.6.1 = getelementptr i8, i8* %a, i64 6
  %412 = load i8, i8* %scevgep80.6.1, align 1
  %arrayidx4.i98.6.1 = getelementptr inbounds i8, i8* %b, i64 9
  %413 = load i8, i8* %arrayidx4.i98.6.1, align 1
  %call.i99.6.1 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413) #2
  %scevgep84.6.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i99.6.1, i8* %scevgep84.6.1, align 1
  %scevgep80.7.1 = getelementptr i8, i8* %a, i64 7
  %414 = load i8, i8* %scevgep80.7.1, align 1
  %arrayidx4.i98.7.1 = getelementptr inbounds i8, i8* %b, i64 10
  %415 = load i8, i8* %arrayidx4.i98.7.1, align 1
  %call.i99.7.1 = call zeroext i8 @mult(i8 zeroext %414, i8 zeroext %415) #2
  %scevgep84.7.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i99.7.1, i8* %scevgep84.7.1, align 1
  %scevgep80.8.1 = getelementptr i8, i8* %a, i64 8
  %416 = load i8, i8* %scevgep80.8.1, align 1
  %arrayidx4.i98.8.1 = getelementptr inbounds i8, i8* %b, i64 11
  %417 = load i8, i8* %arrayidx4.i98.8.1, align 1
  %call.i99.8.1 = call zeroext i8 @mult(i8 zeroext %416, i8 zeroext %417) #2
  %scevgep84.8.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i99.8.1, i8* %scevgep84.8.1, align 1
  %scevgep80.9.1 = getelementptr i8, i8* %a, i64 9
  %418 = load i8, i8* %scevgep80.9.1, align 1
  %arrayidx4.i98.9.1 = getelementptr inbounds i8, i8* %b, i64 12
  %419 = load i8, i8* %arrayidx4.i98.9.1, align 1
  %call.i99.9.1 = call zeroext i8 @mult(i8 zeroext %418, i8 zeroext %419) #2
  %scevgep84.9.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i99.9.1, i8* %scevgep84.9.1, align 1
  %scevgep80.10.1 = getelementptr i8, i8* %a, i64 10
  %420 = load i8, i8* %scevgep80.10.1, align 1
  %arrayidx4.i98.10.1 = getelementptr inbounds i8, i8* %b, i64 13
  %421 = load i8, i8* %arrayidx4.i98.10.1, align 1
  %call.i99.10.1 = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421) #2
  %scevgep84.10.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i99.10.1, i8* %scevgep84.10.1, align 1
  %scevgep80.11.1 = getelementptr i8, i8* %a, i64 11
  %422 = load i8, i8* %scevgep80.11.1, align 1
  %arrayidx4.i98.11.1 = getelementptr inbounds i8, i8* %b, i64 14
  %423 = load i8, i8* %arrayidx4.i98.11.1, align 1
  %call.i99.11.1 = call zeroext i8 @mult(i8 zeroext %422, i8 zeroext %423) #2
  %scevgep84.11.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  store i8 %call.i99.11.1, i8* %scevgep84.11.1, align 1
  %scevgep80.12.1 = getelementptr i8, i8* %a, i64 12
  %424 = load i8, i8* %scevgep80.12.1, align 1
  %arrayidx4.i98.12.1 = getelementptr inbounds i8, i8* %b, i64 15
  %425 = load i8, i8* %arrayidx4.i98.12.1, align 1
  %call.i99.12.1 = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425) #2
  %scevgep84.12.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  store i8 %call.i99.12.1, i8* %scevgep84.12.1, align 1
  %scevgep80.13.1 = getelementptr i8, i8* %a, i64 13
  %426 = load i8, i8* %scevgep80.13.1, align 1
  %427 = load i8, i8* %b, align 1
  %call.i99.13.1 = call zeroext i8 @mult(i8 zeroext %426, i8 zeroext %427) #2
  %scevgep84.13.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  store i8 %call.i99.13.1, i8* %scevgep84.13.1, align 1
  %scevgep80.14.1 = getelementptr i8, i8* %a, i64 14
  %428 = load i8, i8* %scevgep80.14.1, align 1
  %arrayidx4.i98.14.1 = getelementptr inbounds i8, i8* %b, i64 1
  %429 = load i8, i8* %arrayidx4.i98.14.1, align 1
  %call.i99.14.1 = call zeroext i8 @mult(i8 zeroext %428, i8 zeroext %429) #2
  %scevgep84.14.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  store i8 %call.i99.14.1, i8* %scevgep84.14.1, align 1
  %scevgep80.15.1 = getelementptr i8, i8* %a, i64 15
  %430 = load i8, i8* %scevgep80.15.1, align 1
  %arrayidx4.i98.15.1 = getelementptr inbounds i8, i8* %b, i64 2
  %431 = load i8, i8* %arrayidx4.i98.15.1, align 1
  %call.i99.15.1 = call zeroext i8 @mult(i8 zeroext %430, i8 zeroext %431) #2
  %scevgep84.15.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  store i8 %call.i99.15.1, i8* %scevgep84.15.1, align 1
  %arrayidx.i116.1173 = getelementptr inbounds i8, i8* %a, i64 3
  %432 = load i8, i8* %arrayidx.i116.1173, align 1
  %433 = load i8, i8* %b, align 1
  %call.i121.1174 = call zeroext i8 @mult(i8 zeroext %432, i8 zeroext %433) #2
  %scevgep90.1175 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i121.1174, i8* %scevgep90.1175, align 1
  %arrayidx.i116.1.1 = getelementptr inbounds i8, i8* %a, i64 4
  %434 = load i8, i8* %arrayidx.i116.1.1, align 1
  %scevgep89.1.1 = getelementptr i8, i8* %b, i64 1
  %435 = load i8, i8* %scevgep89.1.1, align 1
  %call.i121.1.1 = call zeroext i8 @mult(i8 zeroext %434, i8 zeroext %435) #2
  %scevgep90.1.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i121.1.1, i8* %scevgep90.1.1, align 1
  %arrayidx.i116.2.1 = getelementptr inbounds i8, i8* %a, i64 5
  %436 = load i8, i8* %arrayidx.i116.2.1, align 1
  %scevgep89.2.1 = getelementptr i8, i8* %b, i64 2
  %437 = load i8, i8* %scevgep89.2.1, align 1
  %call.i121.2.1 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437) #2
  %scevgep90.2.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i121.2.1, i8* %scevgep90.2.1, align 1
  %arrayidx.i116.3.1 = getelementptr inbounds i8, i8* %a, i64 6
  %438 = load i8, i8* %arrayidx.i116.3.1, align 1
  %scevgep89.3.1 = getelementptr i8, i8* %b, i64 3
  %439 = load i8, i8* %scevgep89.3.1, align 1
  %call.i121.3.1 = call zeroext i8 @mult(i8 zeroext %438, i8 zeroext %439) #2
  %scevgep90.3.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i121.3.1, i8* %scevgep90.3.1, align 1
  %arrayidx.i116.4.1 = getelementptr inbounds i8, i8* %a, i64 7
  %440 = load i8, i8* %arrayidx.i116.4.1, align 1
  %scevgep89.4.1 = getelementptr i8, i8* %b, i64 4
  %441 = load i8, i8* %scevgep89.4.1, align 1
  %call.i121.4.1 = call zeroext i8 @mult(i8 zeroext %440, i8 zeroext %441) #2
  %scevgep90.4.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i121.4.1, i8* %scevgep90.4.1, align 1
  %arrayidx.i116.5.1 = getelementptr inbounds i8, i8* %a, i64 8
  %442 = load i8, i8* %arrayidx.i116.5.1, align 1
  %scevgep89.5.1 = getelementptr i8, i8* %b, i64 5
  %443 = load i8, i8* %scevgep89.5.1, align 1
  %call.i121.5.1 = call zeroext i8 @mult(i8 zeroext %442, i8 zeroext %443) #2
  %scevgep90.5.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i121.5.1, i8* %scevgep90.5.1, align 1
  %arrayidx.i116.6.1 = getelementptr inbounds i8, i8* %a, i64 9
  %444 = load i8, i8* %arrayidx.i116.6.1, align 1
  %scevgep89.6.1 = getelementptr i8, i8* %b, i64 6
  %445 = load i8, i8* %scevgep89.6.1, align 1
  %call.i121.6.1 = call zeroext i8 @mult(i8 zeroext %444, i8 zeroext %445) #2
  %scevgep90.6.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  store i8 %call.i121.6.1, i8* %scevgep90.6.1, align 1
  %arrayidx.i116.7.1 = getelementptr inbounds i8, i8* %a, i64 10
  %446 = load i8, i8* %arrayidx.i116.7.1, align 1
  %scevgep89.7.1 = getelementptr i8, i8* %b, i64 7
  %447 = load i8, i8* %scevgep89.7.1, align 1
  %call.i121.7.1 = call zeroext i8 @mult(i8 zeroext %446, i8 zeroext %447) #2
  %scevgep90.7.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  store i8 %call.i121.7.1, i8* %scevgep90.7.1, align 1
  %arrayidx.i116.8.1 = getelementptr inbounds i8, i8* %a, i64 11
  %448 = load i8, i8* %arrayidx.i116.8.1, align 1
  %scevgep89.8.1 = getelementptr i8, i8* %b, i64 8
  %449 = load i8, i8* %scevgep89.8.1, align 1
  %call.i121.8.1 = call zeroext i8 @mult(i8 zeroext %448, i8 zeroext %449) #2
  %scevgep90.8.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  store i8 %call.i121.8.1, i8* %scevgep90.8.1, align 1
  %arrayidx.i116.9.1 = getelementptr inbounds i8, i8* %a, i64 12
  %450 = load i8, i8* %arrayidx.i116.9.1, align 1
  %scevgep89.9.1 = getelementptr i8, i8* %b, i64 9
  %451 = load i8, i8* %scevgep89.9.1, align 1
  %call.i121.9.1 = call zeroext i8 @mult(i8 zeroext %450, i8 zeroext %451) #2
  %scevgep90.9.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  store i8 %call.i121.9.1, i8* %scevgep90.9.1, align 1
  %arrayidx.i116.10.1 = getelementptr inbounds i8, i8* %a, i64 13
  %452 = load i8, i8* %arrayidx.i116.10.1, align 1
  %scevgep89.10.1 = getelementptr i8, i8* %b, i64 10
  %453 = load i8, i8* %scevgep89.10.1, align 1
  %call.i121.10.1 = call zeroext i8 @mult(i8 zeroext %452, i8 zeroext %453) #2
  %scevgep90.10.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  store i8 %call.i121.10.1, i8* %scevgep90.10.1, align 1
  %arrayidx.i116.11.1 = getelementptr inbounds i8, i8* %a, i64 14
  %454 = load i8, i8* %arrayidx.i116.11.1, align 1
  %scevgep89.11.1 = getelementptr i8, i8* %b, i64 11
  %455 = load i8, i8* %scevgep89.11.1, align 1
  %call.i121.11.1 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455) #2
  %scevgep90.11.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  store i8 %call.i121.11.1, i8* %scevgep90.11.1, align 1
  %arrayidx.i116.12.1 = getelementptr inbounds i8, i8* %a, i64 15
  %456 = load i8, i8* %arrayidx.i116.12.1, align 1
  %scevgep89.12.1 = getelementptr i8, i8* %b, i64 12
  %457 = load i8, i8* %scevgep89.12.1, align 1
  %call.i121.12.1 = call zeroext i8 @mult(i8 zeroext %456, i8 zeroext %457) #2
  %scevgep90.12.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  store i8 %call.i121.12.1, i8* %scevgep90.12.1, align 1
  %458 = load i8, i8* %a, align 1
  %scevgep89.13.1 = getelementptr i8, i8* %b, i64 13
  %459 = load i8, i8* %scevgep89.13.1, align 1
  %call.i121.13.1 = call zeroext i8 @mult(i8 zeroext %458, i8 zeroext %459) #2
  %scevgep90.13.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  store i8 %call.i121.13.1, i8* %scevgep90.13.1, align 1
  %arrayidx.i116.14.1 = getelementptr inbounds i8, i8* %a, i64 1
  %460 = load i8, i8* %arrayidx.i116.14.1, align 1
  %scevgep89.14.1 = getelementptr i8, i8* %b, i64 14
  %461 = load i8, i8* %scevgep89.14.1, align 1
  %call.i121.14.1 = call zeroext i8 @mult(i8 zeroext %460, i8 zeroext %461) #2
  %scevgep90.14.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  store i8 %call.i121.14.1, i8* %scevgep90.14.1, align 1
  %arrayidx.i116.15.1 = getelementptr inbounds i8, i8* %a, i64 2
  %462 = load i8, i8* %arrayidx.i116.15.1, align 1
  %scevgep89.15.1 = getelementptr i8, i8* %b, i64 15
  %463 = load i8, i8* %scevgep89.15.1, align 1
  %call.i121.15.1 = call zeroext i8 @mult(i8 zeroext %462, i8 zeroext %463) #2
  %scevgep90.15.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  store i8 %call.i121.15.1, i8* %scevgep90.15.1, align 1
  %464 = load i8, i8* %a, align 1
  %arrayidx4.i142.1179 = getelementptr inbounds i8, i8* %b, i64 4
  %465 = load i8, i8* %arrayidx4.i142.1179, align 1
  %call.i143.1180 = call zeroext i8 @mult(i8 zeroext %464, i8 zeroext %465) #2
  %scevgep98.1181 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i143.1180, i8* %scevgep98.1181, align 1
  %scevgep94.1.1 = getelementptr i8, i8* %a, i64 1
  %466 = load i8, i8* %scevgep94.1.1, align 1
  %arrayidx4.i142.1.1 = getelementptr inbounds i8, i8* %b, i64 5
  %467 = load i8, i8* %arrayidx4.i142.1.1, align 1
  %call.i143.1.1 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467) #2
  %scevgep98.1.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i143.1.1, i8* %scevgep98.1.1, align 1
  %scevgep94.2.1 = getelementptr i8, i8* %a, i64 2
  %468 = load i8, i8* %scevgep94.2.1, align 1
  %arrayidx4.i142.2.1 = getelementptr inbounds i8, i8* %b, i64 6
  %469 = load i8, i8* %arrayidx4.i142.2.1, align 1
  %call.i143.2.1 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %469) #2
  %scevgep98.2.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i143.2.1, i8* %scevgep98.2.1, align 1
  %scevgep94.3.1 = getelementptr i8, i8* %a, i64 3
  %470 = load i8, i8* %scevgep94.3.1, align 1
  %arrayidx4.i142.3.1 = getelementptr inbounds i8, i8* %b, i64 7
  %471 = load i8, i8* %arrayidx4.i142.3.1, align 1
  %call.i143.3.1 = call zeroext i8 @mult(i8 zeroext %470, i8 zeroext %471) #2
  %scevgep98.3.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i143.3.1, i8* %scevgep98.3.1, align 1
  %scevgep94.4.1 = getelementptr i8, i8* %a, i64 4
  %472 = load i8, i8* %scevgep94.4.1, align 1
  %arrayidx4.i142.4.1 = getelementptr inbounds i8, i8* %b, i64 8
  %473 = load i8, i8* %arrayidx4.i142.4.1, align 1
  %call.i143.4.1 = call zeroext i8 @mult(i8 zeroext %472, i8 zeroext %473) #2
  %scevgep98.4.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i143.4.1, i8* %scevgep98.4.1, align 1
  %scevgep94.5.1 = getelementptr i8, i8* %a, i64 5
  %474 = load i8, i8* %scevgep94.5.1, align 1
  %arrayidx4.i142.5.1 = getelementptr inbounds i8, i8* %b, i64 9
  %475 = load i8, i8* %arrayidx4.i142.5.1, align 1
  %call.i143.5.1 = call zeroext i8 @mult(i8 zeroext %474, i8 zeroext %475) #2
  %scevgep98.5.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i143.5.1, i8* %scevgep98.5.1, align 1
  %scevgep94.6.1 = getelementptr i8, i8* %a, i64 6
  %476 = load i8, i8* %scevgep94.6.1, align 1
  %arrayidx4.i142.6.1 = getelementptr inbounds i8, i8* %b, i64 10
  %477 = load i8, i8* %arrayidx4.i142.6.1, align 1
  %call.i143.6.1 = call zeroext i8 @mult(i8 zeroext %476, i8 zeroext %477) #2
  %scevgep98.6.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i143.6.1, i8* %scevgep98.6.1, align 1
  %scevgep94.7.1 = getelementptr i8, i8* %a, i64 7
  %478 = load i8, i8* %scevgep94.7.1, align 1
  %arrayidx4.i142.7.1 = getelementptr inbounds i8, i8* %b, i64 11
  %479 = load i8, i8* %arrayidx4.i142.7.1, align 1
  %call.i143.7.1 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479) #2
  %scevgep98.7.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i143.7.1, i8* %scevgep98.7.1, align 1
  %scevgep94.8.1 = getelementptr i8, i8* %a, i64 8
  %480 = load i8, i8* %scevgep94.8.1, align 1
  %arrayidx4.i142.8.1 = getelementptr inbounds i8, i8* %b, i64 12
  %481 = load i8, i8* %arrayidx4.i142.8.1, align 1
  %call.i143.8.1 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481) #2
  %scevgep98.8.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i143.8.1, i8* %scevgep98.8.1, align 1
  %scevgep94.9.1 = getelementptr i8, i8* %a, i64 9
  %482 = load i8, i8* %scevgep94.9.1, align 1
  %arrayidx4.i142.9.1 = getelementptr inbounds i8, i8* %b, i64 13
  %483 = load i8, i8* %arrayidx4.i142.9.1, align 1
  %call.i143.9.1 = call zeroext i8 @mult(i8 zeroext %482, i8 zeroext %483) #2
  %scevgep98.9.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i143.9.1, i8* %scevgep98.9.1, align 1
  %scevgep94.10.1 = getelementptr i8, i8* %a, i64 10
  %484 = load i8, i8* %scevgep94.10.1, align 1
  %arrayidx4.i142.10.1 = getelementptr inbounds i8, i8* %b, i64 14
  %485 = load i8, i8* %arrayidx4.i142.10.1, align 1
  %call.i143.10.1 = call zeroext i8 @mult(i8 zeroext %484, i8 zeroext %485) #2
  %scevgep98.10.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i143.10.1, i8* %scevgep98.10.1, align 1
  %scevgep94.11.1 = getelementptr i8, i8* %a, i64 11
  %486 = load i8, i8* %scevgep94.11.1, align 1
  %arrayidx4.i142.11.1 = getelementptr inbounds i8, i8* %b, i64 15
  %487 = load i8, i8* %arrayidx4.i142.11.1, align 1
  %call.i143.11.1 = call zeroext i8 @mult(i8 zeroext %486, i8 zeroext %487) #2
  %scevgep98.11.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  store i8 %call.i143.11.1, i8* %scevgep98.11.1, align 1
  %scevgep94.12.1 = getelementptr i8, i8* %a, i64 12
  %488 = load i8, i8* %scevgep94.12.1, align 1
  %489 = load i8, i8* %b, align 1
  %call.i143.12.1 = call zeroext i8 @mult(i8 zeroext %488, i8 zeroext %489) #2
  %scevgep98.12.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  store i8 %call.i143.12.1, i8* %scevgep98.12.1, align 1
  %scevgep94.13.1 = getelementptr i8, i8* %a, i64 13
  %490 = load i8, i8* %scevgep94.13.1, align 1
  %arrayidx4.i142.13.1 = getelementptr inbounds i8, i8* %b, i64 1
  %491 = load i8, i8* %arrayidx4.i142.13.1, align 1
  %call.i143.13.1 = call zeroext i8 @mult(i8 zeroext %490, i8 zeroext %491) #2
  %scevgep98.13.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  store i8 %call.i143.13.1, i8* %scevgep98.13.1, align 1
  %scevgep94.14.1 = getelementptr i8, i8* %a, i64 14
  %492 = load i8, i8* %scevgep94.14.1, align 1
  %arrayidx4.i142.14.1 = getelementptr inbounds i8, i8* %b, i64 2
  %493 = load i8, i8* %arrayidx4.i142.14.1, align 1
  %call.i143.14.1 = call zeroext i8 @mult(i8 zeroext %492, i8 zeroext %493) #2
  %scevgep98.14.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  store i8 %call.i143.14.1, i8* %scevgep98.14.1, align 1
  %scevgep94.15.1 = getelementptr i8, i8* %a, i64 15
  %494 = load i8, i8* %scevgep94.15.1, align 1
  %arrayidx4.i142.15.1 = getelementptr inbounds i8, i8* %b, i64 3
  %495 = load i8, i8* %arrayidx4.i142.15.1, align 1
  %call.i143.15.1 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495) #2
  %scevgep98.15.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  store i8 %call.i143.15.1, i8* %scevgep98.15.1, align 1
  %arrayidx.i160.1185 = getelementptr inbounds i8, i8* %a, i64 4
  %496 = load i8, i8* %arrayidx.i160.1185, align 1
  %497 = load i8, i8* %b, align 1
  %call.i165.1186 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497) #2
  %scevgep104.1187 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i165.1186, i8* %scevgep104.1187, align 1
  %arrayidx.i160.1.1 = getelementptr inbounds i8, i8* %a, i64 5
  %498 = load i8, i8* %arrayidx.i160.1.1, align 1
  %scevgep103.1.1 = getelementptr i8, i8* %b, i64 1
  %499 = load i8, i8* %scevgep103.1.1, align 1
  %call.i165.1.1 = call zeroext i8 @mult(i8 zeroext %498, i8 zeroext %499) #2
  %scevgep104.1.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i165.1.1, i8* %scevgep104.1.1, align 1
  %arrayidx.i160.2.1 = getelementptr inbounds i8, i8* %a, i64 6
  %500 = load i8, i8* %arrayidx.i160.2.1, align 1
  %scevgep103.2.1 = getelementptr i8, i8* %b, i64 2
  %501 = load i8, i8* %scevgep103.2.1, align 1
  %call.i165.2.1 = call zeroext i8 @mult(i8 zeroext %500, i8 zeroext %501) #2
  %scevgep104.2.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i165.2.1, i8* %scevgep104.2.1, align 1
  %arrayidx.i160.3.1 = getelementptr inbounds i8, i8* %a, i64 7
  %502 = load i8, i8* %arrayidx.i160.3.1, align 1
  %scevgep103.3.1 = getelementptr i8, i8* %b, i64 3
  %503 = load i8, i8* %scevgep103.3.1, align 1
  %call.i165.3.1 = call zeroext i8 @mult(i8 zeroext %502, i8 zeroext %503) #2
  %scevgep104.3.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i165.3.1, i8* %scevgep104.3.1, align 1
  %arrayidx.i160.4.1 = getelementptr inbounds i8, i8* %a, i64 8
  %504 = load i8, i8* %arrayidx.i160.4.1, align 1
  %scevgep103.4.1 = getelementptr i8, i8* %b, i64 4
  %505 = load i8, i8* %scevgep103.4.1, align 1
  %call.i165.4.1 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505) #2
  %scevgep104.4.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i165.4.1, i8* %scevgep104.4.1, align 1
  %arrayidx.i160.5.1 = getelementptr inbounds i8, i8* %a, i64 9
  %506 = load i8, i8* %arrayidx.i160.5.1, align 1
  %scevgep103.5.1 = getelementptr i8, i8* %b, i64 5
  %507 = load i8, i8* %scevgep103.5.1, align 1
  %call.i165.5.1 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507) #2
  %scevgep104.5.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 5
  store i8 %call.i165.5.1, i8* %scevgep104.5.1, align 1
  %arrayidx.i160.6.1 = getelementptr inbounds i8, i8* %a, i64 10
  %508 = load i8, i8* %arrayidx.i160.6.1, align 1
  %scevgep103.6.1 = getelementptr i8, i8* %b, i64 6
  %509 = load i8, i8* %scevgep103.6.1, align 1
  %call.i165.6.1 = call zeroext i8 @mult(i8 zeroext %508, i8 zeroext %509) #2
  %scevgep104.6.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 6
  store i8 %call.i165.6.1, i8* %scevgep104.6.1, align 1
  %arrayidx.i160.7.1 = getelementptr inbounds i8, i8* %a, i64 11
  %510 = load i8, i8* %arrayidx.i160.7.1, align 1
  %scevgep103.7.1 = getelementptr i8, i8* %b, i64 7
  %511 = load i8, i8* %scevgep103.7.1, align 1
  %call.i165.7.1 = call zeroext i8 @mult(i8 zeroext %510, i8 zeroext %511) #2
  %scevgep104.7.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 7
  store i8 %call.i165.7.1, i8* %scevgep104.7.1, align 1
  %arrayidx.i160.8.1 = getelementptr inbounds i8, i8* %a, i64 12
  %512 = load i8, i8* %arrayidx.i160.8.1, align 1
  %scevgep103.8.1 = getelementptr i8, i8* %b, i64 8
  %513 = load i8, i8* %scevgep103.8.1, align 1
  %call.i165.8.1 = call zeroext i8 @mult(i8 zeroext %512, i8 zeroext %513) #2
  %scevgep104.8.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 8
  store i8 %call.i165.8.1, i8* %scevgep104.8.1, align 1
  %arrayidx.i160.9.1 = getelementptr inbounds i8, i8* %a, i64 13
  %514 = load i8, i8* %arrayidx.i160.9.1, align 1
  %scevgep103.9.1 = getelementptr i8, i8* %b, i64 9
  %515 = load i8, i8* %scevgep103.9.1, align 1
  %call.i165.9.1 = call zeroext i8 @mult(i8 zeroext %514, i8 zeroext %515) #2
  %scevgep104.9.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 9
  store i8 %call.i165.9.1, i8* %scevgep104.9.1, align 1
  %arrayidx.i160.10.1 = getelementptr inbounds i8, i8* %a, i64 14
  %516 = load i8, i8* %arrayidx.i160.10.1, align 1
  %scevgep103.10.1 = getelementptr i8, i8* %b, i64 10
  %517 = load i8, i8* %scevgep103.10.1, align 1
  %call.i165.10.1 = call zeroext i8 @mult(i8 zeroext %516, i8 zeroext %517) #2
  %scevgep104.10.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 10
  store i8 %call.i165.10.1, i8* %scevgep104.10.1, align 1
  %arrayidx.i160.11.1 = getelementptr inbounds i8, i8* %a, i64 15
  %518 = load i8, i8* %arrayidx.i160.11.1, align 1
  %scevgep103.11.1 = getelementptr i8, i8* %b, i64 11
  %519 = load i8, i8* %scevgep103.11.1, align 1
  %call.i165.11.1 = call zeroext i8 @mult(i8 zeroext %518, i8 zeroext %519) #2
  %scevgep104.11.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 11
  store i8 %call.i165.11.1, i8* %scevgep104.11.1, align 1
  %520 = load i8, i8* %a, align 1
  %scevgep103.12.1 = getelementptr i8, i8* %b, i64 12
  %521 = load i8, i8* %scevgep103.12.1, align 1
  %call.i165.12.1 = call zeroext i8 @mult(i8 zeroext %520, i8 zeroext %521) #2
  %scevgep104.12.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 12
  store i8 %call.i165.12.1, i8* %scevgep104.12.1, align 1
  %arrayidx.i160.13.1 = getelementptr inbounds i8, i8* %a, i64 1
  %522 = load i8, i8* %arrayidx.i160.13.1, align 1
  %scevgep103.13.1 = getelementptr i8, i8* %b, i64 13
  %523 = load i8, i8* %scevgep103.13.1, align 1
  %call.i165.13.1 = call zeroext i8 @mult(i8 zeroext %522, i8 zeroext %523) #2
  %scevgep104.13.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 13
  store i8 %call.i165.13.1, i8* %scevgep104.13.1, align 1
  %arrayidx.i160.14.1 = getelementptr inbounds i8, i8* %a, i64 2
  %524 = load i8, i8* %arrayidx.i160.14.1, align 1
  %scevgep103.14.1 = getelementptr i8, i8* %b, i64 14
  %525 = load i8, i8* %scevgep103.14.1, align 1
  %call.i165.14.1 = call zeroext i8 @mult(i8 zeroext %524, i8 zeroext %525) #2
  %scevgep104.14.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 14
  store i8 %call.i165.14.1, i8* %scevgep104.14.1, align 1
  %arrayidx.i160.15.1 = getelementptr inbounds i8, i8* %a, i64 3
  %526 = load i8, i8* %arrayidx.i160.15.1, align 1
  %scevgep103.15.1 = getelementptr i8, i8* %b, i64 15
  %527 = load i8, i8* %scevgep103.15.1, align 1
  %call.i165.15.1 = call zeroext i8 @mult(i8 zeroext %526, i8 zeroext %527) #2
  %scevgep104.15.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 15
  store i8 %call.i165.15.1, i8* %scevgep104.15.1, align 1
  %528 = load i8, i8* %c, align 1
  %conv.i.1188 = zext i8 %528 to i32
  %scevgep112.1189 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 0
  %529 = load i8, i8* %scevgep112.1189, align 1
  %conv5.i.1190 = zext i8 %529 to i32
  %xor.i.1191 = xor i32 %conv.i.1188, %conv5.i.1190
  %conv6.i.1192 = trunc i32 %xor.i.1191 to i8
  store i8 %conv6.i.1192, i8* %c, align 1
  %scevgep108.1.1 = getelementptr i8, i8* %c, i64 1
  %530 = load i8, i8* %scevgep108.1.1, align 1
  %conv.i.1.1 = zext i8 %530 to i32
  %scevgep112.1.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 1
  %531 = load i8, i8* %scevgep112.1.1, align 1
  %conv5.i.1.1 = zext i8 %531 to i32
  %xor.i.1.1 = xor i32 %conv.i.1.1, %conv5.i.1.1
  %conv6.i.1.1 = trunc i32 %xor.i.1.1 to i8
  %scevgep109.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1.1, i8* %scevgep109.1.1, align 1
  %scevgep108.2.1 = getelementptr i8, i8* %c, i64 2
  %532 = load i8, i8* %scevgep108.2.1, align 1
  %conv.i.2.1 = zext i8 %532 to i32
  %scevgep112.2.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 2
  %533 = load i8, i8* %scevgep112.2.1, align 1
  %conv5.i.2.1 = zext i8 %533 to i32
  %xor.i.2.1 = xor i32 %conv.i.2.1, %conv5.i.2.1
  %conv6.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep109.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2.1, i8* %scevgep109.2.1, align 1
  %scevgep108.3.1 = getelementptr i8, i8* %c, i64 3
  %534 = load i8, i8* %scevgep108.3.1, align 1
  %conv.i.3.1 = zext i8 %534 to i32
  %scevgep112.3.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 3
  %535 = load i8, i8* %scevgep112.3.1, align 1
  %conv5.i.3.1 = zext i8 %535 to i32
  %xor.i.3.1 = xor i32 %conv.i.3.1, %conv5.i.3.1
  %conv6.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep109.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3.1, i8* %scevgep109.3.1, align 1
  %scevgep108.4.1 = getelementptr i8, i8* %c, i64 4
  %536 = load i8, i8* %scevgep108.4.1, align 1
  %conv.i.4.1 = zext i8 %536 to i32
  %scevgep112.4.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 4
  %537 = load i8, i8* %scevgep112.4.1, align 1
  %conv5.i.4.1 = zext i8 %537 to i32
  %xor.i.4.1 = xor i32 %conv.i.4.1, %conv5.i.4.1
  %conv6.i.4.1 = trunc i32 %xor.i.4.1 to i8
  %scevgep109.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4.1, i8* %scevgep109.4.1, align 1
  %scevgep108.5.1 = getelementptr i8, i8* %c, i64 5
  %538 = load i8, i8* %scevgep108.5.1, align 1
  %conv.i.5.1 = zext i8 %538 to i32
  %scevgep112.5.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 5
  %539 = load i8, i8* %scevgep112.5.1, align 1
  %conv5.i.5.1 = zext i8 %539 to i32
  %xor.i.5.1 = xor i32 %conv.i.5.1, %conv5.i.5.1
  %conv6.i.5.1 = trunc i32 %xor.i.5.1 to i8
  %scevgep109.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i.5.1, i8* %scevgep109.5.1, align 1
  %scevgep108.6.1 = getelementptr i8, i8* %c, i64 6
  %540 = load i8, i8* %scevgep108.6.1, align 1
  %conv.i.6.1 = zext i8 %540 to i32
  %scevgep112.6.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 6
  %541 = load i8, i8* %scevgep112.6.1, align 1
  %conv5.i.6.1 = zext i8 %541 to i32
  %xor.i.6.1 = xor i32 %conv.i.6.1, %conv5.i.6.1
  %conv6.i.6.1 = trunc i32 %xor.i.6.1 to i8
  %scevgep109.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i.6.1, i8* %scevgep109.6.1, align 1
  %scevgep108.7.1 = getelementptr i8, i8* %c, i64 7
  %542 = load i8, i8* %scevgep108.7.1, align 1
  %conv.i.7.1 = zext i8 %542 to i32
  %scevgep112.7.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 7
  %543 = load i8, i8* %scevgep112.7.1, align 1
  %conv5.i.7.1 = zext i8 %543 to i32
  %xor.i.7.1 = xor i32 %conv.i.7.1, %conv5.i.7.1
  %conv6.i.7.1 = trunc i32 %xor.i.7.1 to i8
  %scevgep109.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i.7.1, i8* %scevgep109.7.1, align 1
  %scevgep108.8.1 = getelementptr i8, i8* %c, i64 8
  %544 = load i8, i8* %scevgep108.8.1, align 1
  %conv.i.8.1 = zext i8 %544 to i32
  %scevgep112.8.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 8
  %545 = load i8, i8* %scevgep112.8.1, align 1
  %conv5.i.8.1 = zext i8 %545 to i32
  %xor.i.8.1 = xor i32 %conv.i.8.1, %conv5.i.8.1
  %conv6.i.8.1 = trunc i32 %xor.i.8.1 to i8
  %scevgep109.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i.8.1, i8* %scevgep109.8.1, align 1
  %scevgep108.9.1 = getelementptr i8, i8* %c, i64 9
  %546 = load i8, i8* %scevgep108.9.1, align 1
  %conv.i.9.1 = zext i8 %546 to i32
  %scevgep112.9.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 9
  %547 = load i8, i8* %scevgep112.9.1, align 1
  %conv5.i.9.1 = zext i8 %547 to i32
  %xor.i.9.1 = xor i32 %conv.i.9.1, %conv5.i.9.1
  %conv6.i.9.1 = trunc i32 %xor.i.9.1 to i8
  %scevgep109.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i.9.1, i8* %scevgep109.9.1, align 1
  %scevgep108.10.1 = getelementptr i8, i8* %c, i64 10
  %548 = load i8, i8* %scevgep108.10.1, align 1
  %conv.i.10.1 = zext i8 %548 to i32
  %scevgep112.10.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 10
  %549 = load i8, i8* %scevgep112.10.1, align 1
  %conv5.i.10.1 = zext i8 %549 to i32
  %xor.i.10.1 = xor i32 %conv.i.10.1, %conv5.i.10.1
  %conv6.i.10.1 = trunc i32 %xor.i.10.1 to i8
  %scevgep109.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i.10.1, i8* %scevgep109.10.1, align 1
  %scevgep108.11.1 = getelementptr i8, i8* %c, i64 11
  %550 = load i8, i8* %scevgep108.11.1, align 1
  %conv.i.11.1 = zext i8 %550 to i32
  %scevgep112.11.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 11
  %551 = load i8, i8* %scevgep112.11.1, align 1
  %conv5.i.11.1 = zext i8 %551 to i32
  %xor.i.11.1 = xor i32 %conv.i.11.1, %conv5.i.11.1
  %conv6.i.11.1 = trunc i32 %xor.i.11.1 to i8
  %scevgep109.11.1 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i.11.1, i8* %scevgep109.11.1, align 1
  %scevgep108.12.1 = getelementptr i8, i8* %c, i64 12
  %552 = load i8, i8* %scevgep108.12.1, align 1
  %conv.i.12.1 = zext i8 %552 to i32
  %scevgep112.12.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 12
  %553 = load i8, i8* %scevgep112.12.1, align 1
  %conv5.i.12.1 = zext i8 %553 to i32
  %xor.i.12.1 = xor i32 %conv.i.12.1, %conv5.i.12.1
  %conv6.i.12.1 = trunc i32 %xor.i.12.1 to i8
  %scevgep109.12.1 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i.12.1, i8* %scevgep109.12.1, align 1
  %scevgep108.13.1 = getelementptr i8, i8* %c, i64 13
  %554 = load i8, i8* %scevgep108.13.1, align 1
  %conv.i.13.1 = zext i8 %554 to i32
  %scevgep112.13.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 13
  %555 = load i8, i8* %scevgep112.13.1, align 1
  %conv5.i.13.1 = zext i8 %555 to i32
  %xor.i.13.1 = xor i32 %conv.i.13.1, %conv5.i.13.1
  %conv6.i.13.1 = trunc i32 %xor.i.13.1 to i8
  %scevgep109.13.1 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i.13.1, i8* %scevgep109.13.1, align 1
  %scevgep108.14.1 = getelementptr i8, i8* %c, i64 14
  %556 = load i8, i8* %scevgep108.14.1, align 1
  %conv.i.14.1 = zext i8 %556 to i32
  %scevgep112.14.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 14
  %557 = load i8, i8* %scevgep112.14.1, align 1
  %conv5.i.14.1 = zext i8 %557 to i32
  %xor.i.14.1 = xor i32 %conv.i.14.1, %conv5.i.14.1
  %conv6.i.14.1 = trunc i32 %xor.i.14.1 to i8
  %scevgep109.14.1 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i.14.1, i8* %scevgep109.14.1, align 1
  %scevgep108.15.1 = getelementptr i8, i8* %c, i64 15
  %558 = load i8, i8* %scevgep108.15.1, align 1
  %conv.i.15.1 = zext i8 %558 to i32
  %scevgep112.15.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 0, i64 15
  %559 = load i8, i8* %scevgep112.15.1, align 1
  %conv5.i.15.1 = zext i8 %559 to i32
  %xor.i.15.1 = xor i32 %conv.i.15.1, %conv5.i.15.1
  %conv6.i.15.1 = trunc i32 %xor.i.15.1 to i8
  %scevgep109.15.1 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i.15.1, i8* %scevgep109.15.1, align 1
  %560 = load i8, i8* %c, align 1
  %conv.i218.1193 = zext i8 %560 to i32
  %scevgep118.1194 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  %561 = load i8, i8* %scevgep118.1194, align 1
  %conv5.i223.1195 = zext i8 %561 to i32
  %xor.i224.1196 = xor i32 %conv.i218.1193, %conv5.i223.1195
  %conv6.i225.1197 = trunc i32 %xor.i224.1196 to i8
  store i8 %conv6.i225.1197, i8* %c, align 1
  %scevgep116.1.1 = getelementptr i8, i8* %c, i64 1
  %562 = load i8, i8* %scevgep116.1.1, align 1
  %conv.i218.1.1 = zext i8 %562 to i32
  %scevgep118.1.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  %563 = load i8, i8* %scevgep118.1.1, align 1
  %conv5.i223.1.1 = zext i8 %563 to i32
  %xor.i224.1.1 = xor i32 %conv.i218.1.1, %conv5.i223.1.1
  %conv6.i225.1.1 = trunc i32 %xor.i224.1.1 to i8
  %scevgep117.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i225.1.1, i8* %scevgep117.1.1, align 1
  %scevgep116.2.1 = getelementptr i8, i8* %c, i64 2
  %564 = load i8, i8* %scevgep116.2.1, align 1
  %conv.i218.2.1 = zext i8 %564 to i32
  %scevgep118.2.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  %565 = load i8, i8* %scevgep118.2.1, align 1
  %conv5.i223.2.1 = zext i8 %565 to i32
  %xor.i224.2.1 = xor i32 %conv.i218.2.1, %conv5.i223.2.1
  %conv6.i225.2.1 = trunc i32 %xor.i224.2.1 to i8
  %scevgep117.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i225.2.1, i8* %scevgep117.2.1, align 1
  %scevgep116.3.1 = getelementptr i8, i8* %c, i64 3
  %566 = load i8, i8* %scevgep116.3.1, align 1
  %conv.i218.3.1 = zext i8 %566 to i32
  %scevgep118.3.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  %567 = load i8, i8* %scevgep118.3.1, align 1
  %conv5.i223.3.1 = zext i8 %567 to i32
  %xor.i224.3.1 = xor i32 %conv.i218.3.1, %conv5.i223.3.1
  %conv6.i225.3.1 = trunc i32 %xor.i224.3.1 to i8
  %scevgep117.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i225.3.1, i8* %scevgep117.3.1, align 1
  %scevgep116.4.1 = getelementptr i8, i8* %c, i64 4
  %568 = load i8, i8* %scevgep116.4.1, align 1
  %conv.i218.4.1 = zext i8 %568 to i32
  %scevgep118.4.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  %569 = load i8, i8* %scevgep118.4.1, align 1
  %conv5.i223.4.1 = zext i8 %569 to i32
  %xor.i224.4.1 = xor i32 %conv.i218.4.1, %conv5.i223.4.1
  %conv6.i225.4.1 = trunc i32 %xor.i224.4.1 to i8
  %scevgep117.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i225.4.1, i8* %scevgep117.4.1, align 1
  %scevgep116.5.1 = getelementptr i8, i8* %c, i64 5
  %570 = load i8, i8* %scevgep116.5.1, align 1
  %conv.i218.5.1 = zext i8 %570 to i32
  %scevgep118.5.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  %571 = load i8, i8* %scevgep118.5.1, align 1
  %conv5.i223.5.1 = zext i8 %571 to i32
  %xor.i224.5.1 = xor i32 %conv.i218.5.1, %conv5.i223.5.1
  %conv6.i225.5.1 = trunc i32 %xor.i224.5.1 to i8
  %scevgep117.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i225.5.1, i8* %scevgep117.5.1, align 1
  %scevgep116.6.1 = getelementptr i8, i8* %c, i64 6
  %572 = load i8, i8* %scevgep116.6.1, align 1
  %conv.i218.6.1 = zext i8 %572 to i32
  %scevgep118.6.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  %573 = load i8, i8* %scevgep118.6.1, align 1
  %conv5.i223.6.1 = zext i8 %573 to i32
  %xor.i224.6.1 = xor i32 %conv.i218.6.1, %conv5.i223.6.1
  %conv6.i225.6.1 = trunc i32 %xor.i224.6.1 to i8
  %scevgep117.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i225.6.1, i8* %scevgep117.6.1, align 1
  %scevgep116.7.1 = getelementptr i8, i8* %c, i64 7
  %574 = load i8, i8* %scevgep116.7.1, align 1
  %conv.i218.7.1 = zext i8 %574 to i32
  %scevgep118.7.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  %575 = load i8, i8* %scevgep118.7.1, align 1
  %conv5.i223.7.1 = zext i8 %575 to i32
  %xor.i224.7.1 = xor i32 %conv.i218.7.1, %conv5.i223.7.1
  %conv6.i225.7.1 = trunc i32 %xor.i224.7.1 to i8
  %scevgep117.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i225.7.1, i8* %scevgep117.7.1, align 1
  %scevgep116.8.1 = getelementptr i8, i8* %c, i64 8
  %576 = load i8, i8* %scevgep116.8.1, align 1
  %conv.i218.8.1 = zext i8 %576 to i32
  %scevgep118.8.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  %577 = load i8, i8* %scevgep118.8.1, align 1
  %conv5.i223.8.1 = zext i8 %577 to i32
  %xor.i224.8.1 = xor i32 %conv.i218.8.1, %conv5.i223.8.1
  %conv6.i225.8.1 = trunc i32 %xor.i224.8.1 to i8
  %scevgep117.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i225.8.1, i8* %scevgep117.8.1, align 1
  %scevgep116.9.1 = getelementptr i8, i8* %c, i64 9
  %578 = load i8, i8* %scevgep116.9.1, align 1
  %conv.i218.9.1 = zext i8 %578 to i32
  %scevgep118.9.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  %579 = load i8, i8* %scevgep118.9.1, align 1
  %conv5.i223.9.1 = zext i8 %579 to i32
  %xor.i224.9.1 = xor i32 %conv.i218.9.1, %conv5.i223.9.1
  %conv6.i225.9.1 = trunc i32 %xor.i224.9.1 to i8
  %scevgep117.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i225.9.1, i8* %scevgep117.9.1, align 1
  %scevgep116.10.1 = getelementptr i8, i8* %c, i64 10
  %580 = load i8, i8* %scevgep116.10.1, align 1
  %conv.i218.10.1 = zext i8 %580 to i32
  %scevgep118.10.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  %581 = load i8, i8* %scevgep118.10.1, align 1
  %conv5.i223.10.1 = zext i8 %581 to i32
  %xor.i224.10.1 = xor i32 %conv.i218.10.1, %conv5.i223.10.1
  %conv6.i225.10.1 = trunc i32 %xor.i224.10.1 to i8
  %scevgep117.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i225.10.1, i8* %scevgep117.10.1, align 1
  %scevgep116.11.1 = getelementptr i8, i8* %c, i64 11
  %582 = load i8, i8* %scevgep116.11.1, align 1
  %conv.i218.11.1 = zext i8 %582 to i32
  %scevgep118.11.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  %583 = load i8, i8* %scevgep118.11.1, align 1
  %conv5.i223.11.1 = zext i8 %583 to i32
  %xor.i224.11.1 = xor i32 %conv.i218.11.1, %conv5.i223.11.1
  %conv6.i225.11.1 = trunc i32 %xor.i224.11.1 to i8
  %scevgep117.11.1 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i225.11.1, i8* %scevgep117.11.1, align 1
  %scevgep116.12.1 = getelementptr i8, i8* %c, i64 12
  %584 = load i8, i8* %scevgep116.12.1, align 1
  %conv.i218.12.1 = zext i8 %584 to i32
  %scevgep118.12.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  %585 = load i8, i8* %scevgep118.12.1, align 1
  %conv5.i223.12.1 = zext i8 %585 to i32
  %xor.i224.12.1 = xor i32 %conv.i218.12.1, %conv5.i223.12.1
  %conv6.i225.12.1 = trunc i32 %xor.i224.12.1 to i8
  %scevgep117.12.1 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i225.12.1, i8* %scevgep117.12.1, align 1
  %scevgep116.13.1 = getelementptr i8, i8* %c, i64 13
  %586 = load i8, i8* %scevgep116.13.1, align 1
  %conv.i218.13.1 = zext i8 %586 to i32
  %scevgep118.13.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  %587 = load i8, i8* %scevgep118.13.1, align 1
  %conv5.i223.13.1 = zext i8 %587 to i32
  %xor.i224.13.1 = xor i32 %conv.i218.13.1, %conv5.i223.13.1
  %conv6.i225.13.1 = trunc i32 %xor.i224.13.1 to i8
  %scevgep117.13.1 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i225.13.1, i8* %scevgep117.13.1, align 1
  %scevgep116.14.1 = getelementptr i8, i8* %c, i64 14
  %588 = load i8, i8* %scevgep116.14.1, align 1
  %conv.i218.14.1 = zext i8 %588 to i32
  %scevgep118.14.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  %589 = load i8, i8* %scevgep118.14.1, align 1
  %conv5.i223.14.1 = zext i8 %589 to i32
  %xor.i224.14.1 = xor i32 %conv.i218.14.1, %conv5.i223.14.1
  %conv6.i225.14.1 = trunc i32 %xor.i224.14.1 to i8
  %scevgep117.14.1 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i225.14.1, i8* %scevgep117.14.1, align 1
  %scevgep116.15.1 = getelementptr i8, i8* %c, i64 15
  %590 = load i8, i8* %scevgep116.15.1, align 1
  %conv.i218.15.1 = zext i8 %590 to i32
  %scevgep118.15.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  %591 = load i8, i8* %scevgep118.15.1, align 1
  %conv5.i223.15.1 = zext i8 %591 to i32
  %xor.i224.15.1 = xor i32 %conv.i218.15.1, %conv5.i223.15.1
  %conv6.i225.15.1 = trunc i32 %xor.i224.15.1 to i8
  %scevgep117.15.1 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i225.15.1, i8* %scevgep117.15.1, align 1
  %592 = load i8, i8* %c, align 1
  %conv.i390.1198 = zext i8 %592 to i32
  %scevgep124.1199 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  %593 = load i8, i8* %scevgep124.1199, align 1
  %conv5.i395.1200 = zext i8 %593 to i32
  %xor.i396.1201 = xor i32 %conv.i390.1198, %conv5.i395.1200
  %conv6.i397.1202 = trunc i32 %xor.i396.1201 to i8
  store i8 %conv6.i397.1202, i8* %c, align 1
  %scevgep122.1.1 = getelementptr i8, i8* %c, i64 1
  %594 = load i8, i8* %scevgep122.1.1, align 1
  %conv.i390.1.1 = zext i8 %594 to i32
  %scevgep124.1.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  %595 = load i8, i8* %scevgep124.1.1, align 1
  %conv5.i395.1.1 = zext i8 %595 to i32
  %xor.i396.1.1 = xor i32 %conv.i390.1.1, %conv5.i395.1.1
  %conv6.i397.1.1 = trunc i32 %xor.i396.1.1 to i8
  %scevgep123.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i397.1.1, i8* %scevgep123.1.1, align 1
  %scevgep122.2.1 = getelementptr i8, i8* %c, i64 2
  %596 = load i8, i8* %scevgep122.2.1, align 1
  %conv.i390.2.1 = zext i8 %596 to i32
  %scevgep124.2.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  %597 = load i8, i8* %scevgep124.2.1, align 1
  %conv5.i395.2.1 = zext i8 %597 to i32
  %xor.i396.2.1 = xor i32 %conv.i390.2.1, %conv5.i395.2.1
  %conv6.i397.2.1 = trunc i32 %xor.i396.2.1 to i8
  %scevgep123.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i397.2.1, i8* %scevgep123.2.1, align 1
  %scevgep122.3.1 = getelementptr i8, i8* %c, i64 3
  %598 = load i8, i8* %scevgep122.3.1, align 1
  %conv.i390.3.1 = zext i8 %598 to i32
  %scevgep124.3.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  %599 = load i8, i8* %scevgep124.3.1, align 1
  %conv5.i395.3.1 = zext i8 %599 to i32
  %xor.i396.3.1 = xor i32 %conv.i390.3.1, %conv5.i395.3.1
  %conv6.i397.3.1 = trunc i32 %xor.i396.3.1 to i8
  %scevgep123.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i397.3.1, i8* %scevgep123.3.1, align 1
  %scevgep122.4.1 = getelementptr i8, i8* %c, i64 4
  %600 = load i8, i8* %scevgep122.4.1, align 1
  %conv.i390.4.1 = zext i8 %600 to i32
  %scevgep124.4.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  %601 = load i8, i8* %scevgep124.4.1, align 1
  %conv5.i395.4.1 = zext i8 %601 to i32
  %xor.i396.4.1 = xor i32 %conv.i390.4.1, %conv5.i395.4.1
  %conv6.i397.4.1 = trunc i32 %xor.i396.4.1 to i8
  %scevgep123.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i397.4.1, i8* %scevgep123.4.1, align 1
  %scevgep122.5.1 = getelementptr i8, i8* %c, i64 5
  %602 = load i8, i8* %scevgep122.5.1, align 1
  %conv.i390.5.1 = zext i8 %602 to i32
  %scevgep124.5.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  %603 = load i8, i8* %scevgep124.5.1, align 1
  %conv5.i395.5.1 = zext i8 %603 to i32
  %xor.i396.5.1 = xor i32 %conv.i390.5.1, %conv5.i395.5.1
  %conv6.i397.5.1 = trunc i32 %xor.i396.5.1 to i8
  %scevgep123.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i397.5.1, i8* %scevgep123.5.1, align 1
  %scevgep122.6.1 = getelementptr i8, i8* %c, i64 6
  %604 = load i8, i8* %scevgep122.6.1, align 1
  %conv.i390.6.1 = zext i8 %604 to i32
  %scevgep124.6.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  %605 = load i8, i8* %scevgep124.6.1, align 1
  %conv5.i395.6.1 = zext i8 %605 to i32
  %xor.i396.6.1 = xor i32 %conv.i390.6.1, %conv5.i395.6.1
  %conv6.i397.6.1 = trunc i32 %xor.i396.6.1 to i8
  %scevgep123.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i397.6.1, i8* %scevgep123.6.1, align 1
  %scevgep122.7.1 = getelementptr i8, i8* %c, i64 7
  %606 = load i8, i8* %scevgep122.7.1, align 1
  %conv.i390.7.1 = zext i8 %606 to i32
  %scevgep124.7.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  %607 = load i8, i8* %scevgep124.7.1, align 1
  %conv5.i395.7.1 = zext i8 %607 to i32
  %xor.i396.7.1 = xor i32 %conv.i390.7.1, %conv5.i395.7.1
  %conv6.i397.7.1 = trunc i32 %xor.i396.7.1 to i8
  %scevgep123.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i397.7.1, i8* %scevgep123.7.1, align 1
  %scevgep122.8.1 = getelementptr i8, i8* %c, i64 8
  %608 = load i8, i8* %scevgep122.8.1, align 1
  %conv.i390.8.1 = zext i8 %608 to i32
  %scevgep124.8.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  %609 = load i8, i8* %scevgep124.8.1, align 1
  %conv5.i395.8.1 = zext i8 %609 to i32
  %xor.i396.8.1 = xor i32 %conv.i390.8.1, %conv5.i395.8.1
  %conv6.i397.8.1 = trunc i32 %xor.i396.8.1 to i8
  %scevgep123.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i397.8.1, i8* %scevgep123.8.1, align 1
  %scevgep122.9.1 = getelementptr i8, i8* %c, i64 9
  %610 = load i8, i8* %scevgep122.9.1, align 1
  %conv.i390.9.1 = zext i8 %610 to i32
  %scevgep124.9.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  %611 = load i8, i8* %scevgep124.9.1, align 1
  %conv5.i395.9.1 = zext i8 %611 to i32
  %xor.i396.9.1 = xor i32 %conv.i390.9.1, %conv5.i395.9.1
  %conv6.i397.9.1 = trunc i32 %xor.i396.9.1 to i8
  %scevgep123.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i397.9.1, i8* %scevgep123.9.1, align 1
  %scevgep122.10.1 = getelementptr i8, i8* %c, i64 10
  %612 = load i8, i8* %scevgep122.10.1, align 1
  %conv.i390.10.1 = zext i8 %612 to i32
  %scevgep124.10.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  %613 = load i8, i8* %scevgep124.10.1, align 1
  %conv5.i395.10.1 = zext i8 %613 to i32
  %xor.i396.10.1 = xor i32 %conv.i390.10.1, %conv5.i395.10.1
  %conv6.i397.10.1 = trunc i32 %xor.i396.10.1 to i8
  %scevgep123.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i397.10.1, i8* %scevgep123.10.1, align 1
  %scevgep122.11.1 = getelementptr i8, i8* %c, i64 11
  %614 = load i8, i8* %scevgep122.11.1, align 1
  %conv.i390.11.1 = zext i8 %614 to i32
  %scevgep124.11.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  %615 = load i8, i8* %scevgep124.11.1, align 1
  %conv5.i395.11.1 = zext i8 %615 to i32
  %xor.i396.11.1 = xor i32 %conv.i390.11.1, %conv5.i395.11.1
  %conv6.i397.11.1 = trunc i32 %xor.i396.11.1 to i8
  %scevgep123.11.1 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i397.11.1, i8* %scevgep123.11.1, align 1
  %scevgep122.12.1 = getelementptr i8, i8* %c, i64 12
  %616 = load i8, i8* %scevgep122.12.1, align 1
  %conv.i390.12.1 = zext i8 %616 to i32
  %scevgep124.12.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  %617 = load i8, i8* %scevgep124.12.1, align 1
  %conv5.i395.12.1 = zext i8 %617 to i32
  %xor.i396.12.1 = xor i32 %conv.i390.12.1, %conv5.i395.12.1
  %conv6.i397.12.1 = trunc i32 %xor.i396.12.1 to i8
  %scevgep123.12.1 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i397.12.1, i8* %scevgep123.12.1, align 1
  %scevgep122.13.1 = getelementptr i8, i8* %c, i64 13
  %618 = load i8, i8* %scevgep122.13.1, align 1
  %conv.i390.13.1 = zext i8 %618 to i32
  %scevgep124.13.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  %619 = load i8, i8* %scevgep124.13.1, align 1
  %conv5.i395.13.1 = zext i8 %619 to i32
  %xor.i396.13.1 = xor i32 %conv.i390.13.1, %conv5.i395.13.1
  %conv6.i397.13.1 = trunc i32 %xor.i396.13.1 to i8
  %scevgep123.13.1 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i397.13.1, i8* %scevgep123.13.1, align 1
  %scevgep122.14.1 = getelementptr i8, i8* %c, i64 14
  %620 = load i8, i8* %scevgep122.14.1, align 1
  %conv.i390.14.1 = zext i8 %620 to i32
  %scevgep124.14.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  %621 = load i8, i8* %scevgep124.14.1, align 1
  %conv5.i395.14.1 = zext i8 %621 to i32
  %xor.i396.14.1 = xor i32 %conv.i390.14.1, %conv5.i395.14.1
  %conv6.i397.14.1 = trunc i32 %xor.i396.14.1 to i8
  %scevgep123.14.1 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i397.14.1, i8* %scevgep123.14.1, align 1
  %scevgep122.15.1 = getelementptr i8, i8* %c, i64 15
  %622 = load i8, i8* %scevgep122.15.1, align 1
  %conv.i390.15.1 = zext i8 %622 to i32
  %scevgep124.15.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  %623 = load i8, i8* %scevgep124.15.1, align 1
  %conv5.i395.15.1 = zext i8 %623 to i32
  %xor.i396.15.1 = xor i32 %conv.i390.15.1, %conv5.i395.15.1
  %conv6.i397.15.1 = trunc i32 %xor.i396.15.1 to i8
  %scevgep123.15.1 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i397.15.1, i8* %scevgep123.15.1, align 1
  %arrayidx42.1 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 1
  %arraydecay43.1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx42.1, i64 0, i64 0
  %624 = load i8, i8* %c, align 1
  %conv.i437.1203 = zext i8 %624 to i32
  %arrayidx4.i441.1204 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 1
  %625 = load i8, i8* %arrayidx4.i441.1204, align 1
  %conv5.i442.1205 = zext i8 %625 to i32
  %xor.i443.1206 = xor i32 %conv.i437.1203, %conv5.i442.1205
  %conv6.i444.1207 = trunc i32 %xor.i443.1206 to i8
  store i8 %conv6.i444.1207, i8* %c, align 1
  %scevgep128.1.1 = getelementptr i8, i8* %c, i64 1
  %626 = load i8, i8* %scevgep128.1.1, align 1
  %conv.i437.1.1 = zext i8 %626 to i32
  %arrayidx4.i441.1.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 2
  %627 = load i8, i8* %arrayidx4.i441.1.1, align 1
  %conv5.i442.1.1 = zext i8 %627 to i32
  %xor.i443.1.1 = xor i32 %conv.i437.1.1, %conv5.i442.1.1
  %conv6.i444.1.1 = trunc i32 %xor.i443.1.1 to i8
  %scevgep129.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i444.1.1, i8* %scevgep129.1.1, align 1
  %scevgep128.2.1 = getelementptr i8, i8* %c, i64 2
  %628 = load i8, i8* %scevgep128.2.1, align 1
  %conv.i437.2.1 = zext i8 %628 to i32
  %arrayidx4.i441.2.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 3
  %629 = load i8, i8* %arrayidx4.i441.2.1, align 1
  %conv5.i442.2.1 = zext i8 %629 to i32
  %xor.i443.2.1 = xor i32 %conv.i437.2.1, %conv5.i442.2.1
  %conv6.i444.2.1 = trunc i32 %xor.i443.2.1 to i8
  %scevgep129.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i444.2.1, i8* %scevgep129.2.1, align 1
  %scevgep128.3.1 = getelementptr i8, i8* %c, i64 3
  %630 = load i8, i8* %scevgep128.3.1, align 1
  %conv.i437.3.1 = zext i8 %630 to i32
  %arrayidx4.i441.3.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 4
  %631 = load i8, i8* %arrayidx4.i441.3.1, align 1
  %conv5.i442.3.1 = zext i8 %631 to i32
  %xor.i443.3.1 = xor i32 %conv.i437.3.1, %conv5.i442.3.1
  %conv6.i444.3.1 = trunc i32 %xor.i443.3.1 to i8
  %scevgep129.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i444.3.1, i8* %scevgep129.3.1, align 1
  %scevgep128.4.1 = getelementptr i8, i8* %c, i64 4
  %632 = load i8, i8* %scevgep128.4.1, align 1
  %conv.i437.4.1 = zext i8 %632 to i32
  %arrayidx4.i441.4.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 5
  %633 = load i8, i8* %arrayidx4.i441.4.1, align 1
  %conv5.i442.4.1 = zext i8 %633 to i32
  %xor.i443.4.1 = xor i32 %conv.i437.4.1, %conv5.i442.4.1
  %conv6.i444.4.1 = trunc i32 %xor.i443.4.1 to i8
  %scevgep129.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i444.4.1, i8* %scevgep129.4.1, align 1
  %scevgep128.5.1 = getelementptr i8, i8* %c, i64 5
  %634 = load i8, i8* %scevgep128.5.1, align 1
  %conv.i437.5.1 = zext i8 %634 to i32
  %arrayidx4.i441.5.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 6
  %635 = load i8, i8* %arrayidx4.i441.5.1, align 1
  %conv5.i442.5.1 = zext i8 %635 to i32
  %xor.i443.5.1 = xor i32 %conv.i437.5.1, %conv5.i442.5.1
  %conv6.i444.5.1 = trunc i32 %xor.i443.5.1 to i8
  %scevgep129.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i444.5.1, i8* %scevgep129.5.1, align 1
  %scevgep128.6.1 = getelementptr i8, i8* %c, i64 6
  %636 = load i8, i8* %scevgep128.6.1, align 1
  %conv.i437.6.1 = zext i8 %636 to i32
  %arrayidx4.i441.6.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 7
  %637 = load i8, i8* %arrayidx4.i441.6.1, align 1
  %conv5.i442.6.1 = zext i8 %637 to i32
  %xor.i443.6.1 = xor i32 %conv.i437.6.1, %conv5.i442.6.1
  %conv6.i444.6.1 = trunc i32 %xor.i443.6.1 to i8
  %scevgep129.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i444.6.1, i8* %scevgep129.6.1, align 1
  %scevgep128.7.1 = getelementptr i8, i8* %c, i64 7
  %638 = load i8, i8* %scevgep128.7.1, align 1
  %conv.i437.7.1 = zext i8 %638 to i32
  %arrayidx4.i441.7.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 8
  %639 = load i8, i8* %arrayidx4.i441.7.1, align 1
  %conv5.i442.7.1 = zext i8 %639 to i32
  %xor.i443.7.1 = xor i32 %conv.i437.7.1, %conv5.i442.7.1
  %conv6.i444.7.1 = trunc i32 %xor.i443.7.1 to i8
  %scevgep129.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i444.7.1, i8* %scevgep129.7.1, align 1
  %scevgep128.8.1 = getelementptr i8, i8* %c, i64 8
  %640 = load i8, i8* %scevgep128.8.1, align 1
  %conv.i437.8.1 = zext i8 %640 to i32
  %arrayidx4.i441.8.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 9
  %641 = load i8, i8* %arrayidx4.i441.8.1, align 1
  %conv5.i442.8.1 = zext i8 %641 to i32
  %xor.i443.8.1 = xor i32 %conv.i437.8.1, %conv5.i442.8.1
  %conv6.i444.8.1 = trunc i32 %xor.i443.8.1 to i8
  %scevgep129.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i444.8.1, i8* %scevgep129.8.1, align 1
  %scevgep128.9.1 = getelementptr i8, i8* %c, i64 9
  %642 = load i8, i8* %scevgep128.9.1, align 1
  %conv.i437.9.1 = zext i8 %642 to i32
  %arrayidx4.i441.9.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 10
  %643 = load i8, i8* %arrayidx4.i441.9.1, align 1
  %conv5.i442.9.1 = zext i8 %643 to i32
  %xor.i443.9.1 = xor i32 %conv.i437.9.1, %conv5.i442.9.1
  %conv6.i444.9.1 = trunc i32 %xor.i443.9.1 to i8
  %scevgep129.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i444.9.1, i8* %scevgep129.9.1, align 1
  %scevgep128.10.1 = getelementptr i8, i8* %c, i64 10
  %644 = load i8, i8* %scevgep128.10.1, align 1
  %conv.i437.10.1 = zext i8 %644 to i32
  %arrayidx4.i441.10.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 11
  %645 = load i8, i8* %arrayidx4.i441.10.1, align 1
  %conv5.i442.10.1 = zext i8 %645 to i32
  %xor.i443.10.1 = xor i32 %conv.i437.10.1, %conv5.i442.10.1
  %conv6.i444.10.1 = trunc i32 %xor.i443.10.1 to i8
  %scevgep129.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i444.10.1, i8* %scevgep129.10.1, align 1
  %scevgep128.11.1 = getelementptr i8, i8* %c, i64 11
  %646 = load i8, i8* %scevgep128.11.1, align 1
  %conv.i437.11.1 = zext i8 %646 to i32
  %arrayidx4.i441.11.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 12
  %647 = load i8, i8* %arrayidx4.i441.11.1, align 1
  %conv5.i442.11.1 = zext i8 %647 to i32
  %xor.i443.11.1 = xor i32 %conv.i437.11.1, %conv5.i442.11.1
  %conv6.i444.11.1 = trunc i32 %xor.i443.11.1 to i8
  %scevgep129.11.1 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i444.11.1, i8* %scevgep129.11.1, align 1
  %scevgep128.12.1 = getelementptr i8, i8* %c, i64 12
  %648 = load i8, i8* %scevgep128.12.1, align 1
  %conv.i437.12.1 = zext i8 %648 to i32
  %arrayidx4.i441.12.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 13
  %649 = load i8, i8* %arrayidx4.i441.12.1, align 1
  %conv5.i442.12.1 = zext i8 %649 to i32
  %xor.i443.12.1 = xor i32 %conv.i437.12.1, %conv5.i442.12.1
  %conv6.i444.12.1 = trunc i32 %xor.i443.12.1 to i8
  %scevgep129.12.1 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i444.12.1, i8* %scevgep129.12.1, align 1
  %scevgep128.13.1 = getelementptr i8, i8* %c, i64 13
  %650 = load i8, i8* %scevgep128.13.1, align 1
  %conv.i437.13.1 = zext i8 %650 to i32
  %arrayidx4.i441.13.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 14
  %651 = load i8, i8* %arrayidx4.i441.13.1, align 1
  %conv5.i442.13.1 = zext i8 %651 to i32
  %xor.i443.13.1 = xor i32 %conv.i437.13.1, %conv5.i442.13.1
  %conv6.i444.13.1 = trunc i32 %xor.i443.13.1 to i8
  %scevgep129.13.1 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i444.13.1, i8* %scevgep129.13.1, align 1
  %scevgep128.14.1 = getelementptr i8, i8* %c, i64 14
  %652 = load i8, i8* %scevgep128.14.1, align 1
  %conv.i437.14.1 = zext i8 %652 to i32
  %arrayidx4.i441.14.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 15
  %653 = load i8, i8* %arrayidx4.i441.14.1, align 1
  %conv5.i442.14.1 = zext i8 %653 to i32
  %xor.i443.14.1 = xor i32 %conv.i437.14.1, %conv5.i442.14.1
  %conv6.i444.14.1 = trunc i32 %xor.i443.14.1 to i8
  %scevgep129.14.1 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i444.14.1, i8* %scevgep129.14.1, align 1
  %scevgep128.15.1 = getelementptr i8, i8* %c, i64 15
  %654 = load i8, i8* %scevgep128.15.1, align 1
  %conv.i437.15.1 = zext i8 %654 to i32
  %655 = load i8, i8* %arraydecay43.1, align 1
  %conv5.i442.15.1 = zext i8 %655 to i32
  %xor.i443.15.1 = xor i32 %conv.i437.15.1, %conv5.i442.15.1
  %conv6.i444.15.1 = trunc i32 %xor.i443.15.1 to i8
  %scevgep129.15.1 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i444.15.1, i8* %scevgep129.15.1, align 1
  %656 = load i8, i8* %c, align 1
  %conv.i484.1208 = zext i8 %656 to i32
  %scevgep136.1209 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  %657 = load i8, i8* %scevgep136.1209, align 1
  %conv5.i489.1210 = zext i8 %657 to i32
  %xor.i490.1211 = xor i32 %conv.i484.1208, %conv5.i489.1210
  %conv6.i491.1212 = trunc i32 %xor.i490.1211 to i8
  store i8 %conv6.i491.1212, i8* %c, align 1
  %scevgep134.1.1 = getelementptr i8, i8* %c, i64 1
  %658 = load i8, i8* %scevgep134.1.1, align 1
  %conv.i484.1.1 = zext i8 %658 to i32
  %scevgep136.1.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  %659 = load i8, i8* %scevgep136.1.1, align 1
  %conv5.i489.1.1 = zext i8 %659 to i32
  %xor.i490.1.1 = xor i32 %conv.i484.1.1, %conv5.i489.1.1
  %conv6.i491.1.1 = trunc i32 %xor.i490.1.1 to i8
  %scevgep135.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i491.1.1, i8* %scevgep135.1.1, align 1
  %scevgep134.2.1 = getelementptr i8, i8* %c, i64 2
  %660 = load i8, i8* %scevgep134.2.1, align 1
  %conv.i484.2.1 = zext i8 %660 to i32
  %scevgep136.2.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  %661 = load i8, i8* %scevgep136.2.1, align 1
  %conv5.i489.2.1 = zext i8 %661 to i32
  %xor.i490.2.1 = xor i32 %conv.i484.2.1, %conv5.i489.2.1
  %conv6.i491.2.1 = trunc i32 %xor.i490.2.1 to i8
  %scevgep135.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i491.2.1, i8* %scevgep135.2.1, align 1
  %scevgep134.3.1 = getelementptr i8, i8* %c, i64 3
  %662 = load i8, i8* %scevgep134.3.1, align 1
  %conv.i484.3.1 = zext i8 %662 to i32
  %scevgep136.3.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  %663 = load i8, i8* %scevgep136.3.1, align 1
  %conv5.i489.3.1 = zext i8 %663 to i32
  %xor.i490.3.1 = xor i32 %conv.i484.3.1, %conv5.i489.3.1
  %conv6.i491.3.1 = trunc i32 %xor.i490.3.1 to i8
  %scevgep135.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i491.3.1, i8* %scevgep135.3.1, align 1
  %scevgep134.4.1 = getelementptr i8, i8* %c, i64 4
  %664 = load i8, i8* %scevgep134.4.1, align 1
  %conv.i484.4.1 = zext i8 %664 to i32
  %scevgep136.4.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  %665 = load i8, i8* %scevgep136.4.1, align 1
  %conv5.i489.4.1 = zext i8 %665 to i32
  %xor.i490.4.1 = xor i32 %conv.i484.4.1, %conv5.i489.4.1
  %conv6.i491.4.1 = trunc i32 %xor.i490.4.1 to i8
  %scevgep135.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i491.4.1, i8* %scevgep135.4.1, align 1
  %scevgep134.5.1 = getelementptr i8, i8* %c, i64 5
  %666 = load i8, i8* %scevgep134.5.1, align 1
  %conv.i484.5.1 = zext i8 %666 to i32
  %scevgep136.5.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  %667 = load i8, i8* %scevgep136.5.1, align 1
  %conv5.i489.5.1 = zext i8 %667 to i32
  %xor.i490.5.1 = xor i32 %conv.i484.5.1, %conv5.i489.5.1
  %conv6.i491.5.1 = trunc i32 %xor.i490.5.1 to i8
  %scevgep135.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i491.5.1, i8* %scevgep135.5.1, align 1
  %scevgep134.6.1 = getelementptr i8, i8* %c, i64 6
  %668 = load i8, i8* %scevgep134.6.1, align 1
  %conv.i484.6.1 = zext i8 %668 to i32
  %scevgep136.6.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  %669 = load i8, i8* %scevgep136.6.1, align 1
  %conv5.i489.6.1 = zext i8 %669 to i32
  %xor.i490.6.1 = xor i32 %conv.i484.6.1, %conv5.i489.6.1
  %conv6.i491.6.1 = trunc i32 %xor.i490.6.1 to i8
  %scevgep135.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i491.6.1, i8* %scevgep135.6.1, align 1
  %scevgep134.7.1 = getelementptr i8, i8* %c, i64 7
  %670 = load i8, i8* %scevgep134.7.1, align 1
  %conv.i484.7.1 = zext i8 %670 to i32
  %scevgep136.7.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  %671 = load i8, i8* %scevgep136.7.1, align 1
  %conv5.i489.7.1 = zext i8 %671 to i32
  %xor.i490.7.1 = xor i32 %conv.i484.7.1, %conv5.i489.7.1
  %conv6.i491.7.1 = trunc i32 %xor.i490.7.1 to i8
  %scevgep135.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i491.7.1, i8* %scevgep135.7.1, align 1
  %scevgep134.8.1 = getelementptr i8, i8* %c, i64 8
  %672 = load i8, i8* %scevgep134.8.1, align 1
  %conv.i484.8.1 = zext i8 %672 to i32
  %scevgep136.8.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  %673 = load i8, i8* %scevgep136.8.1, align 1
  %conv5.i489.8.1 = zext i8 %673 to i32
  %xor.i490.8.1 = xor i32 %conv.i484.8.1, %conv5.i489.8.1
  %conv6.i491.8.1 = trunc i32 %xor.i490.8.1 to i8
  %scevgep135.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i491.8.1, i8* %scevgep135.8.1, align 1
  %scevgep134.9.1 = getelementptr i8, i8* %c, i64 9
  %674 = load i8, i8* %scevgep134.9.1, align 1
  %conv.i484.9.1 = zext i8 %674 to i32
  %scevgep136.9.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  %675 = load i8, i8* %scevgep136.9.1, align 1
  %conv5.i489.9.1 = zext i8 %675 to i32
  %xor.i490.9.1 = xor i32 %conv.i484.9.1, %conv5.i489.9.1
  %conv6.i491.9.1 = trunc i32 %xor.i490.9.1 to i8
  %scevgep135.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i491.9.1, i8* %scevgep135.9.1, align 1
  %scevgep134.10.1 = getelementptr i8, i8* %c, i64 10
  %676 = load i8, i8* %scevgep134.10.1, align 1
  %conv.i484.10.1 = zext i8 %676 to i32
  %scevgep136.10.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  %677 = load i8, i8* %scevgep136.10.1, align 1
  %conv5.i489.10.1 = zext i8 %677 to i32
  %xor.i490.10.1 = xor i32 %conv.i484.10.1, %conv5.i489.10.1
  %conv6.i491.10.1 = trunc i32 %xor.i490.10.1 to i8
  %scevgep135.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i491.10.1, i8* %scevgep135.10.1, align 1
  %scevgep134.11.1 = getelementptr i8, i8* %c, i64 11
  %678 = load i8, i8* %scevgep134.11.1, align 1
  %conv.i484.11.1 = zext i8 %678 to i32
  %scevgep136.11.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  %679 = load i8, i8* %scevgep136.11.1, align 1
  %conv5.i489.11.1 = zext i8 %679 to i32
  %xor.i490.11.1 = xor i32 %conv.i484.11.1, %conv5.i489.11.1
  %conv6.i491.11.1 = trunc i32 %xor.i490.11.1 to i8
  %scevgep135.11.1 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i491.11.1, i8* %scevgep135.11.1, align 1
  %scevgep134.12.1 = getelementptr i8, i8* %c, i64 12
  %680 = load i8, i8* %scevgep134.12.1, align 1
  %conv.i484.12.1 = zext i8 %680 to i32
  %scevgep136.12.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  %681 = load i8, i8* %scevgep136.12.1, align 1
  %conv5.i489.12.1 = zext i8 %681 to i32
  %xor.i490.12.1 = xor i32 %conv.i484.12.1, %conv5.i489.12.1
  %conv6.i491.12.1 = trunc i32 %xor.i490.12.1 to i8
  %scevgep135.12.1 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i491.12.1, i8* %scevgep135.12.1, align 1
  %scevgep134.13.1 = getelementptr i8, i8* %c, i64 13
  %682 = load i8, i8* %scevgep134.13.1, align 1
  %conv.i484.13.1 = zext i8 %682 to i32
  %scevgep136.13.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  %683 = load i8, i8* %scevgep136.13.1, align 1
  %conv5.i489.13.1 = zext i8 %683 to i32
  %xor.i490.13.1 = xor i32 %conv.i484.13.1, %conv5.i489.13.1
  %conv6.i491.13.1 = trunc i32 %xor.i490.13.1 to i8
  %scevgep135.13.1 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i491.13.1, i8* %scevgep135.13.1, align 1
  %scevgep134.14.1 = getelementptr i8, i8* %c, i64 14
  %684 = load i8, i8* %scevgep134.14.1, align 1
  %conv.i484.14.1 = zext i8 %684 to i32
  %scevgep136.14.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  %685 = load i8, i8* %scevgep136.14.1, align 1
  %conv5.i489.14.1 = zext i8 %685 to i32
  %xor.i490.14.1 = xor i32 %conv.i484.14.1, %conv5.i489.14.1
  %conv6.i491.14.1 = trunc i32 %xor.i490.14.1 to i8
  %scevgep135.14.1 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i491.14.1, i8* %scevgep135.14.1, align 1
  %scevgep134.15.1 = getelementptr i8, i8* %c, i64 15
  %686 = load i8, i8* %scevgep134.15.1, align 1
  %conv.i484.15.1 = zext i8 %686 to i32
  %scevgep136.15.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  %687 = load i8, i8* %scevgep136.15.1, align 1
  %conv5.i489.15.1 = zext i8 %687 to i32
  %xor.i490.15.1 = xor i32 %conv.i484.15.1, %conv5.i489.15.1
  %conv6.i491.15.1 = trunc i32 %xor.i490.15.1 to i8
  %scevgep135.15.1 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i491.15.1, i8* %scevgep135.15.1, align 1
  %688 = load i8, i8* %c, align 1
  %conv.i509.1213 = zext i8 %688 to i32
  %scevgep142.1214 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  %689 = load i8, i8* %scevgep142.1214, align 1
  %conv5.i514.1215 = zext i8 %689 to i32
  %xor.i515.1216 = xor i32 %conv.i509.1213, %conv5.i514.1215
  %conv6.i516.1217 = trunc i32 %xor.i515.1216 to i8
  store i8 %conv6.i516.1217, i8* %c, align 1
  %scevgep140.1.1 = getelementptr i8, i8* %c, i64 1
  %690 = load i8, i8* %scevgep140.1.1, align 1
  %conv.i509.1.1 = zext i8 %690 to i32
  %scevgep142.1.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 1
  %691 = load i8, i8* %scevgep142.1.1, align 1
  %conv5.i514.1.1 = zext i8 %691 to i32
  %xor.i515.1.1 = xor i32 %conv.i509.1.1, %conv5.i514.1.1
  %conv6.i516.1.1 = trunc i32 %xor.i515.1.1 to i8
  %scevgep141.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i516.1.1, i8* %scevgep141.1.1, align 1
  %scevgep140.2.1 = getelementptr i8, i8* %c, i64 2
  %692 = load i8, i8* %scevgep140.2.1, align 1
  %conv.i509.2.1 = zext i8 %692 to i32
  %scevgep142.2.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 2
  %693 = load i8, i8* %scevgep142.2.1, align 1
  %conv5.i514.2.1 = zext i8 %693 to i32
  %xor.i515.2.1 = xor i32 %conv.i509.2.1, %conv5.i514.2.1
  %conv6.i516.2.1 = trunc i32 %xor.i515.2.1 to i8
  %scevgep141.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i516.2.1, i8* %scevgep141.2.1, align 1
  %scevgep140.3.1 = getelementptr i8, i8* %c, i64 3
  %694 = load i8, i8* %scevgep140.3.1, align 1
  %conv.i509.3.1 = zext i8 %694 to i32
  %scevgep142.3.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 3
  %695 = load i8, i8* %scevgep142.3.1, align 1
  %conv5.i514.3.1 = zext i8 %695 to i32
  %xor.i515.3.1 = xor i32 %conv.i509.3.1, %conv5.i514.3.1
  %conv6.i516.3.1 = trunc i32 %xor.i515.3.1 to i8
  %scevgep141.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i516.3.1, i8* %scevgep141.3.1, align 1
  %scevgep140.4.1 = getelementptr i8, i8* %c, i64 4
  %696 = load i8, i8* %scevgep140.4.1, align 1
  %conv.i509.4.1 = zext i8 %696 to i32
  %scevgep142.4.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 4
  %697 = load i8, i8* %scevgep142.4.1, align 1
  %conv5.i514.4.1 = zext i8 %697 to i32
  %xor.i515.4.1 = xor i32 %conv.i509.4.1, %conv5.i514.4.1
  %conv6.i516.4.1 = trunc i32 %xor.i515.4.1 to i8
  %scevgep141.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i516.4.1, i8* %scevgep141.4.1, align 1
  %scevgep140.5.1 = getelementptr i8, i8* %c, i64 5
  %698 = load i8, i8* %scevgep140.5.1, align 1
  %conv.i509.5.1 = zext i8 %698 to i32
  %scevgep142.5.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 5
  %699 = load i8, i8* %scevgep142.5.1, align 1
  %conv5.i514.5.1 = zext i8 %699 to i32
  %xor.i515.5.1 = xor i32 %conv.i509.5.1, %conv5.i514.5.1
  %conv6.i516.5.1 = trunc i32 %xor.i515.5.1 to i8
  %scevgep141.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i516.5.1, i8* %scevgep141.5.1, align 1
  %scevgep140.6.1 = getelementptr i8, i8* %c, i64 6
  %700 = load i8, i8* %scevgep140.6.1, align 1
  %conv.i509.6.1 = zext i8 %700 to i32
  %scevgep142.6.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 6
  %701 = load i8, i8* %scevgep142.6.1, align 1
  %conv5.i514.6.1 = zext i8 %701 to i32
  %xor.i515.6.1 = xor i32 %conv.i509.6.1, %conv5.i514.6.1
  %conv6.i516.6.1 = trunc i32 %xor.i515.6.1 to i8
  %scevgep141.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i516.6.1, i8* %scevgep141.6.1, align 1
  %scevgep140.7.1 = getelementptr i8, i8* %c, i64 7
  %702 = load i8, i8* %scevgep140.7.1, align 1
  %conv.i509.7.1 = zext i8 %702 to i32
  %scevgep142.7.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 7
  %703 = load i8, i8* %scevgep142.7.1, align 1
  %conv5.i514.7.1 = zext i8 %703 to i32
  %xor.i515.7.1 = xor i32 %conv.i509.7.1, %conv5.i514.7.1
  %conv6.i516.7.1 = trunc i32 %xor.i515.7.1 to i8
  %scevgep141.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i516.7.1, i8* %scevgep141.7.1, align 1
  %scevgep140.8.1 = getelementptr i8, i8* %c, i64 8
  %704 = load i8, i8* %scevgep140.8.1, align 1
  %conv.i509.8.1 = zext i8 %704 to i32
  %scevgep142.8.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 8
  %705 = load i8, i8* %scevgep142.8.1, align 1
  %conv5.i514.8.1 = zext i8 %705 to i32
  %xor.i515.8.1 = xor i32 %conv.i509.8.1, %conv5.i514.8.1
  %conv6.i516.8.1 = trunc i32 %xor.i515.8.1 to i8
  %scevgep141.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i516.8.1, i8* %scevgep141.8.1, align 1
  %scevgep140.9.1 = getelementptr i8, i8* %c, i64 9
  %706 = load i8, i8* %scevgep140.9.1, align 1
  %conv.i509.9.1 = zext i8 %706 to i32
  %scevgep142.9.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 9
  %707 = load i8, i8* %scevgep142.9.1, align 1
  %conv5.i514.9.1 = zext i8 %707 to i32
  %xor.i515.9.1 = xor i32 %conv.i509.9.1, %conv5.i514.9.1
  %conv6.i516.9.1 = trunc i32 %xor.i515.9.1 to i8
  %scevgep141.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i516.9.1, i8* %scevgep141.9.1, align 1
  %scevgep140.10.1 = getelementptr i8, i8* %c, i64 10
  %708 = load i8, i8* %scevgep140.10.1, align 1
  %conv.i509.10.1 = zext i8 %708 to i32
  %scevgep142.10.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 10
  %709 = load i8, i8* %scevgep142.10.1, align 1
  %conv5.i514.10.1 = zext i8 %709 to i32
  %xor.i515.10.1 = xor i32 %conv.i509.10.1, %conv5.i514.10.1
  %conv6.i516.10.1 = trunc i32 %xor.i515.10.1 to i8
  %scevgep141.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i516.10.1, i8* %scevgep141.10.1, align 1
  %scevgep140.11.1 = getelementptr i8, i8* %c, i64 11
  %710 = load i8, i8* %scevgep140.11.1, align 1
  %conv.i509.11.1 = zext i8 %710 to i32
  %scevgep142.11.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 11
  %711 = load i8, i8* %scevgep142.11.1, align 1
  %conv5.i514.11.1 = zext i8 %711 to i32
  %xor.i515.11.1 = xor i32 %conv.i509.11.1, %conv5.i514.11.1
  %conv6.i516.11.1 = trunc i32 %xor.i515.11.1 to i8
  %scevgep141.11.1 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i516.11.1, i8* %scevgep141.11.1, align 1
  %scevgep140.12.1 = getelementptr i8, i8* %c, i64 12
  %712 = load i8, i8* %scevgep140.12.1, align 1
  %conv.i509.12.1 = zext i8 %712 to i32
  %scevgep142.12.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 12
  %713 = load i8, i8* %scevgep142.12.1, align 1
  %conv5.i514.12.1 = zext i8 %713 to i32
  %xor.i515.12.1 = xor i32 %conv.i509.12.1, %conv5.i514.12.1
  %conv6.i516.12.1 = trunc i32 %xor.i515.12.1 to i8
  %scevgep141.12.1 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i516.12.1, i8* %scevgep141.12.1, align 1
  %scevgep140.13.1 = getelementptr i8, i8* %c, i64 13
  %714 = load i8, i8* %scevgep140.13.1, align 1
  %conv.i509.13.1 = zext i8 %714 to i32
  %scevgep142.13.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 13
  %715 = load i8, i8* %scevgep142.13.1, align 1
  %conv5.i514.13.1 = zext i8 %715 to i32
  %xor.i515.13.1 = xor i32 %conv.i509.13.1, %conv5.i514.13.1
  %conv6.i516.13.1 = trunc i32 %xor.i515.13.1 to i8
  %scevgep141.13.1 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i516.13.1, i8* %scevgep141.13.1, align 1
  %scevgep140.14.1 = getelementptr i8, i8* %c, i64 14
  %716 = load i8, i8* %scevgep140.14.1, align 1
  %conv.i509.14.1 = zext i8 %716 to i32
  %scevgep142.14.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 14
  %717 = load i8, i8* %scevgep142.14.1, align 1
  %conv5.i514.14.1 = zext i8 %717 to i32
  %xor.i515.14.1 = xor i32 %conv.i509.14.1, %conv5.i514.14.1
  %conv6.i516.14.1 = trunc i32 %xor.i515.14.1 to i8
  %scevgep141.14.1 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i516.14.1, i8* %scevgep141.14.1, align 1
  %scevgep140.15.1 = getelementptr i8, i8* %c, i64 15
  %718 = load i8, i8* %scevgep140.15.1, align 1
  %conv.i509.15.1 = zext i8 %718 to i32
  %scevgep142.15.1 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 15
  %719 = load i8, i8* %scevgep142.15.1, align 1
  %conv5.i514.15.1 = zext i8 %719 to i32
  %xor.i515.15.1 = xor i32 %conv.i509.15.1, %conv5.i514.15.1
  %conv6.i516.15.1 = trunc i32 %xor.i515.15.1 to i8
  %scevgep141.15.1 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i516.15.1, i8* %scevgep141.15.1, align 1
  %scevgep111.1 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %399, i64 0, i64 1, i64 0
  %720 = bitcast i8* %scevgep111.1 to [16 x [16 x i8]]*
  %721 = load i8, i8* %a, align 1
  %arrayidx4.i98.2221 = getelementptr inbounds i8, i8* %b, i64 5
  %722 = load i8, i8* %arrayidx4.i98.2221, align 1
  %call.i99.2222 = call zeroext i8 @mult(i8 zeroext %721, i8 zeroext %722) #2
  %scevgep84.2223 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i99.2222, i8* %scevgep84.2223, align 1
  %scevgep80.1.2 = getelementptr i8, i8* %a, i64 1
  %723 = load i8, i8* %scevgep80.1.2, align 1
  %arrayidx4.i98.1.2 = getelementptr inbounds i8, i8* %b, i64 6
  %724 = load i8, i8* %arrayidx4.i98.1.2, align 1
  %call.i99.1.2 = call zeroext i8 @mult(i8 zeroext %723, i8 zeroext %724) #2
  %scevgep84.1.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i99.1.2, i8* %scevgep84.1.2, align 1
  %scevgep80.2.2 = getelementptr i8, i8* %a, i64 2
  %725 = load i8, i8* %scevgep80.2.2, align 1
  %arrayidx4.i98.2.2 = getelementptr inbounds i8, i8* %b, i64 7
  %726 = load i8, i8* %arrayidx4.i98.2.2, align 1
  %call.i99.2.2 = call zeroext i8 @mult(i8 zeroext %725, i8 zeroext %726) #2
  %scevgep84.2.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i99.2.2, i8* %scevgep84.2.2, align 1
  %scevgep80.3.2 = getelementptr i8, i8* %a, i64 3
  %727 = load i8, i8* %scevgep80.3.2, align 1
  %arrayidx4.i98.3.2 = getelementptr inbounds i8, i8* %b, i64 8
  %728 = load i8, i8* %arrayidx4.i98.3.2, align 1
  %call.i99.3.2 = call zeroext i8 @mult(i8 zeroext %727, i8 zeroext %728) #2
  %scevgep84.3.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i99.3.2, i8* %scevgep84.3.2, align 1
  %scevgep80.4.2 = getelementptr i8, i8* %a, i64 4
  %729 = load i8, i8* %scevgep80.4.2, align 1
  %arrayidx4.i98.4.2 = getelementptr inbounds i8, i8* %b, i64 9
  %730 = load i8, i8* %arrayidx4.i98.4.2, align 1
  %call.i99.4.2 = call zeroext i8 @mult(i8 zeroext %729, i8 zeroext %730) #2
  %scevgep84.4.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i99.4.2, i8* %scevgep84.4.2, align 1
  %scevgep80.5.2 = getelementptr i8, i8* %a, i64 5
  %731 = load i8, i8* %scevgep80.5.2, align 1
  %arrayidx4.i98.5.2 = getelementptr inbounds i8, i8* %b, i64 10
  %732 = load i8, i8* %arrayidx4.i98.5.2, align 1
  %call.i99.5.2 = call zeroext i8 @mult(i8 zeroext %731, i8 zeroext %732) #2
  %scevgep84.5.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i99.5.2, i8* %scevgep84.5.2, align 1
  %scevgep80.6.2 = getelementptr i8, i8* %a, i64 6
  %733 = load i8, i8* %scevgep80.6.2, align 1
  %arrayidx4.i98.6.2 = getelementptr inbounds i8, i8* %b, i64 11
  %734 = load i8, i8* %arrayidx4.i98.6.2, align 1
  %call.i99.6.2 = call zeroext i8 @mult(i8 zeroext %733, i8 zeroext %734) #2
  %scevgep84.6.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i99.6.2, i8* %scevgep84.6.2, align 1
  %scevgep80.7.2 = getelementptr i8, i8* %a, i64 7
  %735 = load i8, i8* %scevgep80.7.2, align 1
  %arrayidx4.i98.7.2 = getelementptr inbounds i8, i8* %b, i64 12
  %736 = load i8, i8* %arrayidx4.i98.7.2, align 1
  %call.i99.7.2 = call zeroext i8 @mult(i8 zeroext %735, i8 zeroext %736) #2
  %scevgep84.7.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i99.7.2, i8* %scevgep84.7.2, align 1
  %scevgep80.8.2 = getelementptr i8, i8* %a, i64 8
  %737 = load i8, i8* %scevgep80.8.2, align 1
  %arrayidx4.i98.8.2 = getelementptr inbounds i8, i8* %b, i64 13
  %738 = load i8, i8* %arrayidx4.i98.8.2, align 1
  %call.i99.8.2 = call zeroext i8 @mult(i8 zeroext %737, i8 zeroext %738) #2
  %scevgep84.8.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i99.8.2, i8* %scevgep84.8.2, align 1
  %scevgep80.9.2 = getelementptr i8, i8* %a, i64 9
  %739 = load i8, i8* %scevgep80.9.2, align 1
  %arrayidx4.i98.9.2 = getelementptr inbounds i8, i8* %b, i64 14
  %740 = load i8, i8* %arrayidx4.i98.9.2, align 1
  %call.i99.9.2 = call zeroext i8 @mult(i8 zeroext %739, i8 zeroext %740) #2
  %scevgep84.9.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i99.9.2, i8* %scevgep84.9.2, align 1
  %scevgep80.10.2 = getelementptr i8, i8* %a, i64 10
  %741 = load i8, i8* %scevgep80.10.2, align 1
  %arrayidx4.i98.10.2 = getelementptr inbounds i8, i8* %b, i64 15
  %742 = load i8, i8* %arrayidx4.i98.10.2, align 1
  %call.i99.10.2 = call zeroext i8 @mult(i8 zeroext %741, i8 zeroext %742) #2
  %scevgep84.10.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i99.10.2, i8* %scevgep84.10.2, align 1
  %scevgep80.11.2 = getelementptr i8, i8* %a, i64 11
  %743 = load i8, i8* %scevgep80.11.2, align 1
  %744 = load i8, i8* %b, align 1
  %call.i99.11.2 = call zeroext i8 @mult(i8 zeroext %743, i8 zeroext %744) #2
  %scevgep84.11.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  store i8 %call.i99.11.2, i8* %scevgep84.11.2, align 1
  %scevgep80.12.2 = getelementptr i8, i8* %a, i64 12
  %745 = load i8, i8* %scevgep80.12.2, align 1
  %arrayidx4.i98.12.2 = getelementptr inbounds i8, i8* %b, i64 1
  %746 = load i8, i8* %arrayidx4.i98.12.2, align 1
  %call.i99.12.2 = call zeroext i8 @mult(i8 zeroext %745, i8 zeroext %746) #2
  %scevgep84.12.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  store i8 %call.i99.12.2, i8* %scevgep84.12.2, align 1
  %scevgep80.13.2 = getelementptr i8, i8* %a, i64 13
  %747 = load i8, i8* %scevgep80.13.2, align 1
  %arrayidx4.i98.13.2 = getelementptr inbounds i8, i8* %b, i64 2
  %748 = load i8, i8* %arrayidx4.i98.13.2, align 1
  %call.i99.13.2 = call zeroext i8 @mult(i8 zeroext %747, i8 zeroext %748) #2
  %scevgep84.13.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  store i8 %call.i99.13.2, i8* %scevgep84.13.2, align 1
  %scevgep80.14.2 = getelementptr i8, i8* %a, i64 14
  %749 = load i8, i8* %scevgep80.14.2, align 1
  %arrayidx4.i98.14.2 = getelementptr inbounds i8, i8* %b, i64 3
  %750 = load i8, i8* %arrayidx4.i98.14.2, align 1
  %call.i99.14.2 = call zeroext i8 @mult(i8 zeroext %749, i8 zeroext %750) #2
  %scevgep84.14.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  store i8 %call.i99.14.2, i8* %scevgep84.14.2, align 1
  %scevgep80.15.2 = getelementptr i8, i8* %a, i64 15
  %751 = load i8, i8* %scevgep80.15.2, align 1
  %arrayidx4.i98.15.2 = getelementptr inbounds i8, i8* %b, i64 4
  %752 = load i8, i8* %arrayidx4.i98.15.2, align 1
  %call.i99.15.2 = call zeroext i8 @mult(i8 zeroext %751, i8 zeroext %752) #2
  %scevgep84.15.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  store i8 %call.i99.15.2, i8* %scevgep84.15.2, align 1
  %arrayidx.i116.2227 = getelementptr inbounds i8, i8* %a, i64 5
  %753 = load i8, i8* %arrayidx.i116.2227, align 1
  %754 = load i8, i8* %b, align 1
  %call.i121.2228 = call zeroext i8 @mult(i8 zeroext %753, i8 zeroext %754) #2
  %scevgep90.2229 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i121.2228, i8* %scevgep90.2229, align 1
  %arrayidx.i116.1.2 = getelementptr inbounds i8, i8* %a, i64 6
  %755 = load i8, i8* %arrayidx.i116.1.2, align 1
  %scevgep89.1.2 = getelementptr i8, i8* %b, i64 1
  %756 = load i8, i8* %scevgep89.1.2, align 1
  %call.i121.1.2 = call zeroext i8 @mult(i8 zeroext %755, i8 zeroext %756) #2
  %scevgep90.1.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i121.1.2, i8* %scevgep90.1.2, align 1
  %arrayidx.i116.2.2 = getelementptr inbounds i8, i8* %a, i64 7
  %757 = load i8, i8* %arrayidx.i116.2.2, align 1
  %scevgep89.2.2 = getelementptr i8, i8* %b, i64 2
  %758 = load i8, i8* %scevgep89.2.2, align 1
  %call.i121.2.2 = call zeroext i8 @mult(i8 zeroext %757, i8 zeroext %758) #2
  %scevgep90.2.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i121.2.2, i8* %scevgep90.2.2, align 1
  %arrayidx.i116.3.2 = getelementptr inbounds i8, i8* %a, i64 8
  %759 = load i8, i8* %arrayidx.i116.3.2, align 1
  %scevgep89.3.2 = getelementptr i8, i8* %b, i64 3
  %760 = load i8, i8* %scevgep89.3.2, align 1
  %call.i121.3.2 = call zeroext i8 @mult(i8 zeroext %759, i8 zeroext %760) #2
  %scevgep90.3.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i121.3.2, i8* %scevgep90.3.2, align 1
  %arrayidx.i116.4.2 = getelementptr inbounds i8, i8* %a, i64 9
  %761 = load i8, i8* %arrayidx.i116.4.2, align 1
  %scevgep89.4.2 = getelementptr i8, i8* %b, i64 4
  %762 = load i8, i8* %scevgep89.4.2, align 1
  %call.i121.4.2 = call zeroext i8 @mult(i8 zeroext %761, i8 zeroext %762) #2
  %scevgep90.4.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i121.4.2, i8* %scevgep90.4.2, align 1
  %arrayidx.i116.5.2 = getelementptr inbounds i8, i8* %a, i64 10
  %763 = load i8, i8* %arrayidx.i116.5.2, align 1
  %scevgep89.5.2 = getelementptr i8, i8* %b, i64 5
  %764 = load i8, i8* %scevgep89.5.2, align 1
  %call.i121.5.2 = call zeroext i8 @mult(i8 zeroext %763, i8 zeroext %764) #2
  %scevgep90.5.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i121.5.2, i8* %scevgep90.5.2, align 1
  %arrayidx.i116.6.2 = getelementptr inbounds i8, i8* %a, i64 11
  %765 = load i8, i8* %arrayidx.i116.6.2, align 1
  %scevgep89.6.2 = getelementptr i8, i8* %b, i64 6
  %766 = load i8, i8* %scevgep89.6.2, align 1
  %call.i121.6.2 = call zeroext i8 @mult(i8 zeroext %765, i8 zeroext %766) #2
  %scevgep90.6.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  store i8 %call.i121.6.2, i8* %scevgep90.6.2, align 1
  %arrayidx.i116.7.2 = getelementptr inbounds i8, i8* %a, i64 12
  %767 = load i8, i8* %arrayidx.i116.7.2, align 1
  %scevgep89.7.2 = getelementptr i8, i8* %b, i64 7
  %768 = load i8, i8* %scevgep89.7.2, align 1
  %call.i121.7.2 = call zeroext i8 @mult(i8 zeroext %767, i8 zeroext %768) #2
  %scevgep90.7.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  store i8 %call.i121.7.2, i8* %scevgep90.7.2, align 1
  %arrayidx.i116.8.2 = getelementptr inbounds i8, i8* %a, i64 13
  %769 = load i8, i8* %arrayidx.i116.8.2, align 1
  %scevgep89.8.2 = getelementptr i8, i8* %b, i64 8
  %770 = load i8, i8* %scevgep89.8.2, align 1
  %call.i121.8.2 = call zeroext i8 @mult(i8 zeroext %769, i8 zeroext %770) #2
  %scevgep90.8.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  store i8 %call.i121.8.2, i8* %scevgep90.8.2, align 1
  %arrayidx.i116.9.2 = getelementptr inbounds i8, i8* %a, i64 14
  %771 = load i8, i8* %arrayidx.i116.9.2, align 1
  %scevgep89.9.2 = getelementptr i8, i8* %b, i64 9
  %772 = load i8, i8* %scevgep89.9.2, align 1
  %call.i121.9.2 = call zeroext i8 @mult(i8 zeroext %771, i8 zeroext %772) #2
  %scevgep90.9.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  store i8 %call.i121.9.2, i8* %scevgep90.9.2, align 1
  %arrayidx.i116.10.2 = getelementptr inbounds i8, i8* %a, i64 15
  %773 = load i8, i8* %arrayidx.i116.10.2, align 1
  %scevgep89.10.2 = getelementptr i8, i8* %b, i64 10
  %774 = load i8, i8* %scevgep89.10.2, align 1
  %call.i121.10.2 = call zeroext i8 @mult(i8 zeroext %773, i8 zeroext %774) #2
  %scevgep90.10.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  store i8 %call.i121.10.2, i8* %scevgep90.10.2, align 1
  %775 = load i8, i8* %a, align 1
  %scevgep89.11.2 = getelementptr i8, i8* %b, i64 11
  %776 = load i8, i8* %scevgep89.11.2, align 1
  %call.i121.11.2 = call zeroext i8 @mult(i8 zeroext %775, i8 zeroext %776) #2
  %scevgep90.11.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  store i8 %call.i121.11.2, i8* %scevgep90.11.2, align 1
  %arrayidx.i116.12.2 = getelementptr inbounds i8, i8* %a, i64 1
  %777 = load i8, i8* %arrayidx.i116.12.2, align 1
  %scevgep89.12.2 = getelementptr i8, i8* %b, i64 12
  %778 = load i8, i8* %scevgep89.12.2, align 1
  %call.i121.12.2 = call zeroext i8 @mult(i8 zeroext %777, i8 zeroext %778) #2
  %scevgep90.12.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  store i8 %call.i121.12.2, i8* %scevgep90.12.2, align 1
  %arrayidx.i116.13.2 = getelementptr inbounds i8, i8* %a, i64 2
  %779 = load i8, i8* %arrayidx.i116.13.2, align 1
  %scevgep89.13.2 = getelementptr i8, i8* %b, i64 13
  %780 = load i8, i8* %scevgep89.13.2, align 1
  %call.i121.13.2 = call zeroext i8 @mult(i8 zeroext %779, i8 zeroext %780) #2
  %scevgep90.13.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  store i8 %call.i121.13.2, i8* %scevgep90.13.2, align 1
  %arrayidx.i116.14.2 = getelementptr inbounds i8, i8* %a, i64 3
  %781 = load i8, i8* %arrayidx.i116.14.2, align 1
  %scevgep89.14.2 = getelementptr i8, i8* %b, i64 14
  %782 = load i8, i8* %scevgep89.14.2, align 1
  %call.i121.14.2 = call zeroext i8 @mult(i8 zeroext %781, i8 zeroext %782) #2
  %scevgep90.14.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  store i8 %call.i121.14.2, i8* %scevgep90.14.2, align 1
  %arrayidx.i116.15.2 = getelementptr inbounds i8, i8* %a, i64 4
  %783 = load i8, i8* %arrayidx.i116.15.2, align 1
  %scevgep89.15.2 = getelementptr i8, i8* %b, i64 15
  %784 = load i8, i8* %scevgep89.15.2, align 1
  %call.i121.15.2 = call zeroext i8 @mult(i8 zeroext %783, i8 zeroext %784) #2
  %scevgep90.15.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  store i8 %call.i121.15.2, i8* %scevgep90.15.2, align 1
  %785 = load i8, i8* %a, align 1
  %arrayidx4.i142.2233 = getelementptr inbounds i8, i8* %b, i64 6
  %786 = load i8, i8* %arrayidx4.i142.2233, align 1
  %call.i143.2234 = call zeroext i8 @mult(i8 zeroext %785, i8 zeroext %786) #2
  %scevgep98.2235 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i143.2234, i8* %scevgep98.2235, align 1
  %scevgep94.1.2 = getelementptr i8, i8* %a, i64 1
  %787 = load i8, i8* %scevgep94.1.2, align 1
  %arrayidx4.i142.1.2 = getelementptr inbounds i8, i8* %b, i64 7
  %788 = load i8, i8* %arrayidx4.i142.1.2, align 1
  %call.i143.1.2 = call zeroext i8 @mult(i8 zeroext %787, i8 zeroext %788) #2
  %scevgep98.1.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i143.1.2, i8* %scevgep98.1.2, align 1
  %scevgep94.2.2 = getelementptr i8, i8* %a, i64 2
  %789 = load i8, i8* %scevgep94.2.2, align 1
  %arrayidx4.i142.2.2 = getelementptr inbounds i8, i8* %b, i64 8
  %790 = load i8, i8* %arrayidx4.i142.2.2, align 1
  %call.i143.2.2 = call zeroext i8 @mult(i8 zeroext %789, i8 zeroext %790) #2
  %scevgep98.2.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i143.2.2, i8* %scevgep98.2.2, align 1
  %scevgep94.3.2 = getelementptr i8, i8* %a, i64 3
  %791 = load i8, i8* %scevgep94.3.2, align 1
  %arrayidx4.i142.3.2 = getelementptr inbounds i8, i8* %b, i64 9
  %792 = load i8, i8* %arrayidx4.i142.3.2, align 1
  %call.i143.3.2 = call zeroext i8 @mult(i8 zeroext %791, i8 zeroext %792) #2
  %scevgep98.3.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i143.3.2, i8* %scevgep98.3.2, align 1
  %scevgep94.4.2 = getelementptr i8, i8* %a, i64 4
  %793 = load i8, i8* %scevgep94.4.2, align 1
  %arrayidx4.i142.4.2 = getelementptr inbounds i8, i8* %b, i64 10
  %794 = load i8, i8* %arrayidx4.i142.4.2, align 1
  %call.i143.4.2 = call zeroext i8 @mult(i8 zeroext %793, i8 zeroext %794) #2
  %scevgep98.4.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i143.4.2, i8* %scevgep98.4.2, align 1
  %scevgep94.5.2 = getelementptr i8, i8* %a, i64 5
  %795 = load i8, i8* %scevgep94.5.2, align 1
  %arrayidx4.i142.5.2 = getelementptr inbounds i8, i8* %b, i64 11
  %796 = load i8, i8* %arrayidx4.i142.5.2, align 1
  %call.i143.5.2 = call zeroext i8 @mult(i8 zeroext %795, i8 zeroext %796) #2
  %scevgep98.5.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i143.5.2, i8* %scevgep98.5.2, align 1
  %scevgep94.6.2 = getelementptr i8, i8* %a, i64 6
  %797 = load i8, i8* %scevgep94.6.2, align 1
  %arrayidx4.i142.6.2 = getelementptr inbounds i8, i8* %b, i64 12
  %798 = load i8, i8* %arrayidx4.i142.6.2, align 1
  %call.i143.6.2 = call zeroext i8 @mult(i8 zeroext %797, i8 zeroext %798) #2
  %scevgep98.6.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i143.6.2, i8* %scevgep98.6.2, align 1
  %scevgep94.7.2 = getelementptr i8, i8* %a, i64 7
  %799 = load i8, i8* %scevgep94.7.2, align 1
  %arrayidx4.i142.7.2 = getelementptr inbounds i8, i8* %b, i64 13
  %800 = load i8, i8* %arrayidx4.i142.7.2, align 1
  %call.i143.7.2 = call zeroext i8 @mult(i8 zeroext %799, i8 zeroext %800) #2
  %scevgep98.7.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i143.7.2, i8* %scevgep98.7.2, align 1
  %scevgep94.8.2 = getelementptr i8, i8* %a, i64 8
  %801 = load i8, i8* %scevgep94.8.2, align 1
  %arrayidx4.i142.8.2 = getelementptr inbounds i8, i8* %b, i64 14
  %802 = load i8, i8* %arrayidx4.i142.8.2, align 1
  %call.i143.8.2 = call zeroext i8 @mult(i8 zeroext %801, i8 zeroext %802) #2
  %scevgep98.8.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i143.8.2, i8* %scevgep98.8.2, align 1
  %scevgep94.9.2 = getelementptr i8, i8* %a, i64 9
  %803 = load i8, i8* %scevgep94.9.2, align 1
  %arrayidx4.i142.9.2 = getelementptr inbounds i8, i8* %b, i64 15
  %804 = load i8, i8* %arrayidx4.i142.9.2, align 1
  %call.i143.9.2 = call zeroext i8 @mult(i8 zeroext %803, i8 zeroext %804) #2
  %scevgep98.9.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i143.9.2, i8* %scevgep98.9.2, align 1
  %scevgep94.10.2 = getelementptr i8, i8* %a, i64 10
  %805 = load i8, i8* %scevgep94.10.2, align 1
  %806 = load i8, i8* %b, align 1
  %call.i143.10.2 = call zeroext i8 @mult(i8 zeroext %805, i8 zeroext %806) #2
  %scevgep98.10.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i143.10.2, i8* %scevgep98.10.2, align 1
  %scevgep94.11.2 = getelementptr i8, i8* %a, i64 11
  %807 = load i8, i8* %scevgep94.11.2, align 1
  %arrayidx4.i142.11.2 = getelementptr inbounds i8, i8* %b, i64 1
  %808 = load i8, i8* %arrayidx4.i142.11.2, align 1
  %call.i143.11.2 = call zeroext i8 @mult(i8 zeroext %807, i8 zeroext %808) #2
  %scevgep98.11.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  store i8 %call.i143.11.2, i8* %scevgep98.11.2, align 1
  %scevgep94.12.2 = getelementptr i8, i8* %a, i64 12
  %809 = load i8, i8* %scevgep94.12.2, align 1
  %arrayidx4.i142.12.2 = getelementptr inbounds i8, i8* %b, i64 2
  %810 = load i8, i8* %arrayidx4.i142.12.2, align 1
  %call.i143.12.2 = call zeroext i8 @mult(i8 zeroext %809, i8 zeroext %810) #2
  %scevgep98.12.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  store i8 %call.i143.12.2, i8* %scevgep98.12.2, align 1
  %scevgep94.13.2 = getelementptr i8, i8* %a, i64 13
  %811 = load i8, i8* %scevgep94.13.2, align 1
  %arrayidx4.i142.13.2 = getelementptr inbounds i8, i8* %b, i64 3
  %812 = load i8, i8* %arrayidx4.i142.13.2, align 1
  %call.i143.13.2 = call zeroext i8 @mult(i8 zeroext %811, i8 zeroext %812) #2
  %scevgep98.13.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  store i8 %call.i143.13.2, i8* %scevgep98.13.2, align 1
  %scevgep94.14.2 = getelementptr i8, i8* %a, i64 14
  %813 = load i8, i8* %scevgep94.14.2, align 1
  %arrayidx4.i142.14.2 = getelementptr inbounds i8, i8* %b, i64 4
  %814 = load i8, i8* %arrayidx4.i142.14.2, align 1
  %call.i143.14.2 = call zeroext i8 @mult(i8 zeroext %813, i8 zeroext %814) #2
  %scevgep98.14.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  store i8 %call.i143.14.2, i8* %scevgep98.14.2, align 1
  %scevgep94.15.2 = getelementptr i8, i8* %a, i64 15
  %815 = load i8, i8* %scevgep94.15.2, align 1
  %arrayidx4.i142.15.2 = getelementptr inbounds i8, i8* %b, i64 5
  %816 = load i8, i8* %arrayidx4.i142.15.2, align 1
  %call.i143.15.2 = call zeroext i8 @mult(i8 zeroext %815, i8 zeroext %816) #2
  %scevgep98.15.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  store i8 %call.i143.15.2, i8* %scevgep98.15.2, align 1
  %arrayidx.i160.2239 = getelementptr inbounds i8, i8* %a, i64 6
  %817 = load i8, i8* %arrayidx.i160.2239, align 1
  %818 = load i8, i8* %b, align 1
  %call.i165.2240 = call zeroext i8 @mult(i8 zeroext %817, i8 zeroext %818) #2
  %scevgep104.2241 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i165.2240, i8* %scevgep104.2241, align 1
  %arrayidx.i160.1.2 = getelementptr inbounds i8, i8* %a, i64 7
  %819 = load i8, i8* %arrayidx.i160.1.2, align 1
  %scevgep103.1.2 = getelementptr i8, i8* %b, i64 1
  %820 = load i8, i8* %scevgep103.1.2, align 1
  %call.i165.1.2 = call zeroext i8 @mult(i8 zeroext %819, i8 zeroext %820) #2
  %scevgep104.1.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i165.1.2, i8* %scevgep104.1.2, align 1
  %arrayidx.i160.2.2 = getelementptr inbounds i8, i8* %a, i64 8
  %821 = load i8, i8* %arrayidx.i160.2.2, align 1
  %scevgep103.2.2 = getelementptr i8, i8* %b, i64 2
  %822 = load i8, i8* %scevgep103.2.2, align 1
  %call.i165.2.2 = call zeroext i8 @mult(i8 zeroext %821, i8 zeroext %822) #2
  %scevgep104.2.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i165.2.2, i8* %scevgep104.2.2, align 1
  %arrayidx.i160.3.2 = getelementptr inbounds i8, i8* %a, i64 9
  %823 = load i8, i8* %arrayidx.i160.3.2, align 1
  %scevgep103.3.2 = getelementptr i8, i8* %b, i64 3
  %824 = load i8, i8* %scevgep103.3.2, align 1
  %call.i165.3.2 = call zeroext i8 @mult(i8 zeroext %823, i8 zeroext %824) #2
  %scevgep104.3.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i165.3.2, i8* %scevgep104.3.2, align 1
  %arrayidx.i160.4.2 = getelementptr inbounds i8, i8* %a, i64 10
  %825 = load i8, i8* %arrayidx.i160.4.2, align 1
  %scevgep103.4.2 = getelementptr i8, i8* %b, i64 4
  %826 = load i8, i8* %scevgep103.4.2, align 1
  %call.i165.4.2 = call zeroext i8 @mult(i8 zeroext %825, i8 zeroext %826) #2
  %scevgep104.4.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i165.4.2, i8* %scevgep104.4.2, align 1
  %arrayidx.i160.5.2 = getelementptr inbounds i8, i8* %a, i64 11
  %827 = load i8, i8* %arrayidx.i160.5.2, align 1
  %scevgep103.5.2 = getelementptr i8, i8* %b, i64 5
  %828 = load i8, i8* %scevgep103.5.2, align 1
  %call.i165.5.2 = call zeroext i8 @mult(i8 zeroext %827, i8 zeroext %828) #2
  %scevgep104.5.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 5
  store i8 %call.i165.5.2, i8* %scevgep104.5.2, align 1
  %arrayidx.i160.6.2 = getelementptr inbounds i8, i8* %a, i64 12
  %829 = load i8, i8* %arrayidx.i160.6.2, align 1
  %scevgep103.6.2 = getelementptr i8, i8* %b, i64 6
  %830 = load i8, i8* %scevgep103.6.2, align 1
  %call.i165.6.2 = call zeroext i8 @mult(i8 zeroext %829, i8 zeroext %830) #2
  %scevgep104.6.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 6
  store i8 %call.i165.6.2, i8* %scevgep104.6.2, align 1
  %arrayidx.i160.7.2 = getelementptr inbounds i8, i8* %a, i64 13
  %831 = load i8, i8* %arrayidx.i160.7.2, align 1
  %scevgep103.7.2 = getelementptr i8, i8* %b, i64 7
  %832 = load i8, i8* %scevgep103.7.2, align 1
  %call.i165.7.2 = call zeroext i8 @mult(i8 zeroext %831, i8 zeroext %832) #2
  %scevgep104.7.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 7
  store i8 %call.i165.7.2, i8* %scevgep104.7.2, align 1
  %arrayidx.i160.8.2 = getelementptr inbounds i8, i8* %a, i64 14
  %833 = load i8, i8* %arrayidx.i160.8.2, align 1
  %scevgep103.8.2 = getelementptr i8, i8* %b, i64 8
  %834 = load i8, i8* %scevgep103.8.2, align 1
  %call.i165.8.2 = call zeroext i8 @mult(i8 zeroext %833, i8 zeroext %834) #2
  %scevgep104.8.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 8
  store i8 %call.i165.8.2, i8* %scevgep104.8.2, align 1
  %arrayidx.i160.9.2 = getelementptr inbounds i8, i8* %a, i64 15
  %835 = load i8, i8* %arrayidx.i160.9.2, align 1
  %scevgep103.9.2 = getelementptr i8, i8* %b, i64 9
  %836 = load i8, i8* %scevgep103.9.2, align 1
  %call.i165.9.2 = call zeroext i8 @mult(i8 zeroext %835, i8 zeroext %836) #2
  %scevgep104.9.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 9
  store i8 %call.i165.9.2, i8* %scevgep104.9.2, align 1
  %837 = load i8, i8* %a, align 1
  %scevgep103.10.2 = getelementptr i8, i8* %b, i64 10
  %838 = load i8, i8* %scevgep103.10.2, align 1
  %call.i165.10.2 = call zeroext i8 @mult(i8 zeroext %837, i8 zeroext %838) #2
  %scevgep104.10.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 10
  store i8 %call.i165.10.2, i8* %scevgep104.10.2, align 1
  %arrayidx.i160.11.2 = getelementptr inbounds i8, i8* %a, i64 1
  %839 = load i8, i8* %arrayidx.i160.11.2, align 1
  %scevgep103.11.2 = getelementptr i8, i8* %b, i64 11
  %840 = load i8, i8* %scevgep103.11.2, align 1
  %call.i165.11.2 = call zeroext i8 @mult(i8 zeroext %839, i8 zeroext %840) #2
  %scevgep104.11.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 11
  store i8 %call.i165.11.2, i8* %scevgep104.11.2, align 1
  %arrayidx.i160.12.2 = getelementptr inbounds i8, i8* %a, i64 2
  %841 = load i8, i8* %arrayidx.i160.12.2, align 1
  %scevgep103.12.2 = getelementptr i8, i8* %b, i64 12
  %842 = load i8, i8* %scevgep103.12.2, align 1
  %call.i165.12.2 = call zeroext i8 @mult(i8 zeroext %841, i8 zeroext %842) #2
  %scevgep104.12.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 12
  store i8 %call.i165.12.2, i8* %scevgep104.12.2, align 1
  %arrayidx.i160.13.2 = getelementptr inbounds i8, i8* %a, i64 3
  %843 = load i8, i8* %arrayidx.i160.13.2, align 1
  %scevgep103.13.2 = getelementptr i8, i8* %b, i64 13
  %844 = load i8, i8* %scevgep103.13.2, align 1
  %call.i165.13.2 = call zeroext i8 @mult(i8 zeroext %843, i8 zeroext %844) #2
  %scevgep104.13.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 13
  store i8 %call.i165.13.2, i8* %scevgep104.13.2, align 1
  %arrayidx.i160.14.2 = getelementptr inbounds i8, i8* %a, i64 4
  %845 = load i8, i8* %arrayidx.i160.14.2, align 1
  %scevgep103.14.2 = getelementptr i8, i8* %b, i64 14
  %846 = load i8, i8* %scevgep103.14.2, align 1
  %call.i165.14.2 = call zeroext i8 @mult(i8 zeroext %845, i8 zeroext %846) #2
  %scevgep104.14.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 14
  store i8 %call.i165.14.2, i8* %scevgep104.14.2, align 1
  %arrayidx.i160.15.2 = getelementptr inbounds i8, i8* %a, i64 5
  %847 = load i8, i8* %arrayidx.i160.15.2, align 1
  %scevgep103.15.2 = getelementptr i8, i8* %b, i64 15
  %848 = load i8, i8* %scevgep103.15.2, align 1
  %call.i165.15.2 = call zeroext i8 @mult(i8 zeroext %847, i8 zeroext %848) #2
  %scevgep104.15.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 15
  store i8 %call.i165.15.2, i8* %scevgep104.15.2, align 1
  %849 = load i8, i8* %c, align 1
  %conv.i.2242 = zext i8 %849 to i32
  %scevgep112.2243 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 0
  %850 = load i8, i8* %scevgep112.2243, align 1
  %conv5.i.2244 = zext i8 %850 to i32
  %xor.i.2245 = xor i32 %conv.i.2242, %conv5.i.2244
  %conv6.i.2246 = trunc i32 %xor.i.2245 to i8
  store i8 %conv6.i.2246, i8* %c, align 1
  %scevgep108.1.2 = getelementptr i8, i8* %c, i64 1
  %851 = load i8, i8* %scevgep108.1.2, align 1
  %conv.i.1.2 = zext i8 %851 to i32
  %scevgep112.1.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 1
  %852 = load i8, i8* %scevgep112.1.2, align 1
  %conv5.i.1.2 = zext i8 %852 to i32
  %xor.i.1.2 = xor i32 %conv.i.1.2, %conv5.i.1.2
  %conv6.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep109.1.2 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1.2, i8* %scevgep109.1.2, align 1
  %scevgep108.2.2 = getelementptr i8, i8* %c, i64 2
  %853 = load i8, i8* %scevgep108.2.2, align 1
  %conv.i.2.2 = zext i8 %853 to i32
  %scevgep112.2.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 2
  %854 = load i8, i8* %scevgep112.2.2, align 1
  %conv5.i.2.2 = zext i8 %854 to i32
  %xor.i.2.2 = xor i32 %conv.i.2.2, %conv5.i.2.2
  %conv6.i.2.2 = trunc i32 %xor.i.2.2 to i8
  %scevgep109.2.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2.2, i8* %scevgep109.2.2, align 1
  %scevgep108.3.2 = getelementptr i8, i8* %c, i64 3
  %855 = load i8, i8* %scevgep108.3.2, align 1
  %conv.i.3.2 = zext i8 %855 to i32
  %scevgep112.3.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 3
  %856 = load i8, i8* %scevgep112.3.2, align 1
  %conv5.i.3.2 = zext i8 %856 to i32
  %xor.i.3.2 = xor i32 %conv.i.3.2, %conv5.i.3.2
  %conv6.i.3.2 = trunc i32 %xor.i.3.2 to i8
  %scevgep109.3.2 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3.2, i8* %scevgep109.3.2, align 1
  %scevgep108.4.2 = getelementptr i8, i8* %c, i64 4
  %857 = load i8, i8* %scevgep108.4.2, align 1
  %conv.i.4.2 = zext i8 %857 to i32
  %scevgep112.4.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 4
  %858 = load i8, i8* %scevgep112.4.2, align 1
  %conv5.i.4.2 = zext i8 %858 to i32
  %xor.i.4.2 = xor i32 %conv.i.4.2, %conv5.i.4.2
  %conv6.i.4.2 = trunc i32 %xor.i.4.2 to i8
  %scevgep109.4.2 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4.2, i8* %scevgep109.4.2, align 1
  %scevgep108.5.2 = getelementptr i8, i8* %c, i64 5
  %859 = load i8, i8* %scevgep108.5.2, align 1
  %conv.i.5.2 = zext i8 %859 to i32
  %scevgep112.5.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 5
  %860 = load i8, i8* %scevgep112.5.2, align 1
  %conv5.i.5.2 = zext i8 %860 to i32
  %xor.i.5.2 = xor i32 %conv.i.5.2, %conv5.i.5.2
  %conv6.i.5.2 = trunc i32 %xor.i.5.2 to i8
  %scevgep109.5.2 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i.5.2, i8* %scevgep109.5.2, align 1
  %scevgep108.6.2 = getelementptr i8, i8* %c, i64 6
  %861 = load i8, i8* %scevgep108.6.2, align 1
  %conv.i.6.2 = zext i8 %861 to i32
  %scevgep112.6.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 6
  %862 = load i8, i8* %scevgep112.6.2, align 1
  %conv5.i.6.2 = zext i8 %862 to i32
  %xor.i.6.2 = xor i32 %conv.i.6.2, %conv5.i.6.2
  %conv6.i.6.2 = trunc i32 %xor.i.6.2 to i8
  %scevgep109.6.2 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i.6.2, i8* %scevgep109.6.2, align 1
  %scevgep108.7.2 = getelementptr i8, i8* %c, i64 7
  %863 = load i8, i8* %scevgep108.7.2, align 1
  %conv.i.7.2 = zext i8 %863 to i32
  %scevgep112.7.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 7
  %864 = load i8, i8* %scevgep112.7.2, align 1
  %conv5.i.7.2 = zext i8 %864 to i32
  %xor.i.7.2 = xor i32 %conv.i.7.2, %conv5.i.7.2
  %conv6.i.7.2 = trunc i32 %xor.i.7.2 to i8
  %scevgep109.7.2 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i.7.2, i8* %scevgep109.7.2, align 1
  %scevgep108.8.2 = getelementptr i8, i8* %c, i64 8
  %865 = load i8, i8* %scevgep108.8.2, align 1
  %conv.i.8.2 = zext i8 %865 to i32
  %scevgep112.8.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 8
  %866 = load i8, i8* %scevgep112.8.2, align 1
  %conv5.i.8.2 = zext i8 %866 to i32
  %xor.i.8.2 = xor i32 %conv.i.8.2, %conv5.i.8.2
  %conv6.i.8.2 = trunc i32 %xor.i.8.2 to i8
  %scevgep109.8.2 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i.8.2, i8* %scevgep109.8.2, align 1
  %scevgep108.9.2 = getelementptr i8, i8* %c, i64 9
  %867 = load i8, i8* %scevgep108.9.2, align 1
  %conv.i.9.2 = zext i8 %867 to i32
  %scevgep112.9.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 9
  %868 = load i8, i8* %scevgep112.9.2, align 1
  %conv5.i.9.2 = zext i8 %868 to i32
  %xor.i.9.2 = xor i32 %conv.i.9.2, %conv5.i.9.2
  %conv6.i.9.2 = trunc i32 %xor.i.9.2 to i8
  %scevgep109.9.2 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i.9.2, i8* %scevgep109.9.2, align 1
  %scevgep108.10.2 = getelementptr i8, i8* %c, i64 10
  %869 = load i8, i8* %scevgep108.10.2, align 1
  %conv.i.10.2 = zext i8 %869 to i32
  %scevgep112.10.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 10
  %870 = load i8, i8* %scevgep112.10.2, align 1
  %conv5.i.10.2 = zext i8 %870 to i32
  %xor.i.10.2 = xor i32 %conv.i.10.2, %conv5.i.10.2
  %conv6.i.10.2 = trunc i32 %xor.i.10.2 to i8
  %scevgep109.10.2 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i.10.2, i8* %scevgep109.10.2, align 1
  %scevgep108.11.2 = getelementptr i8, i8* %c, i64 11
  %871 = load i8, i8* %scevgep108.11.2, align 1
  %conv.i.11.2 = zext i8 %871 to i32
  %scevgep112.11.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 11
  %872 = load i8, i8* %scevgep112.11.2, align 1
  %conv5.i.11.2 = zext i8 %872 to i32
  %xor.i.11.2 = xor i32 %conv.i.11.2, %conv5.i.11.2
  %conv6.i.11.2 = trunc i32 %xor.i.11.2 to i8
  %scevgep109.11.2 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i.11.2, i8* %scevgep109.11.2, align 1
  %scevgep108.12.2 = getelementptr i8, i8* %c, i64 12
  %873 = load i8, i8* %scevgep108.12.2, align 1
  %conv.i.12.2 = zext i8 %873 to i32
  %scevgep112.12.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 12
  %874 = load i8, i8* %scevgep112.12.2, align 1
  %conv5.i.12.2 = zext i8 %874 to i32
  %xor.i.12.2 = xor i32 %conv.i.12.2, %conv5.i.12.2
  %conv6.i.12.2 = trunc i32 %xor.i.12.2 to i8
  %scevgep109.12.2 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i.12.2, i8* %scevgep109.12.2, align 1
  %scevgep108.13.2 = getelementptr i8, i8* %c, i64 13
  %875 = load i8, i8* %scevgep108.13.2, align 1
  %conv.i.13.2 = zext i8 %875 to i32
  %scevgep112.13.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 13
  %876 = load i8, i8* %scevgep112.13.2, align 1
  %conv5.i.13.2 = zext i8 %876 to i32
  %xor.i.13.2 = xor i32 %conv.i.13.2, %conv5.i.13.2
  %conv6.i.13.2 = trunc i32 %xor.i.13.2 to i8
  %scevgep109.13.2 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i.13.2, i8* %scevgep109.13.2, align 1
  %scevgep108.14.2 = getelementptr i8, i8* %c, i64 14
  %877 = load i8, i8* %scevgep108.14.2, align 1
  %conv.i.14.2 = zext i8 %877 to i32
  %scevgep112.14.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 14
  %878 = load i8, i8* %scevgep112.14.2, align 1
  %conv5.i.14.2 = zext i8 %878 to i32
  %xor.i.14.2 = xor i32 %conv.i.14.2, %conv5.i.14.2
  %conv6.i.14.2 = trunc i32 %xor.i.14.2 to i8
  %scevgep109.14.2 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i.14.2, i8* %scevgep109.14.2, align 1
  %scevgep108.15.2 = getelementptr i8, i8* %c, i64 15
  %879 = load i8, i8* %scevgep108.15.2, align 1
  %conv.i.15.2 = zext i8 %879 to i32
  %scevgep112.15.2 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %720, i64 0, i64 0, i64 15
  %880 = load i8, i8* %scevgep112.15.2, align 1
  %conv5.i.15.2 = zext i8 %880 to i32
  %xor.i.15.2 = xor i32 %conv.i.15.2, %conv5.i.15.2
  %conv6.i.15.2 = trunc i32 %xor.i.15.2 to i8
  %scevgep109.15.2 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i.15.2, i8* %scevgep109.15.2, align 1
  %881 = load i8, i8* %c, align 1
  %conv.i218.2247 = zext i8 %881 to i32
  %scevgep118.2248 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  %882 = load i8, i8* %scevgep118.2248, align 1
  %conv5.i223.2249 = zext i8 %882 to i32
  %xor.i224.2250 = xor i32 %conv.i218.2247, %conv5.i223.2249
  %conv6.i225.2251 = trunc i32 %xor.i224.2250 to i8
  store i8 %conv6.i225.2251, i8* %c, align 1
  %scevgep116.1.2 = getelementptr i8, i8* %c, i64 1
  %883 = load i8, i8* %scevgep116.1.2, align 1
  %conv.i218.1.2 = zext i8 %883 to i32
  %scevgep118.1.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  %884 = load i8, i8* %scevgep118.1.2, align 1
  %conv5.i223.1.2 = zext i8 %884 to i32
  %xor.i224.1.2 = xor i32 %conv.i218.1.2, %conv5.i223.1.2
  %conv6.i225.1.2 = trunc i32 %xor.i224.1.2 to i8
  %scevgep117.1.2 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i225.1.2, i8* %scevgep117.1.2, align 1
  %scevgep116.2.2 = getelementptr i8, i8* %c, i64 2
  %885 = load i8, i8* %scevgep116.2.2, align 1
  %conv.i218.2.2 = zext i8 %885 to i32
  %scevgep118.2.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  %886 = load i8, i8* %scevgep118.2.2, align 1
  %conv5.i223.2.2 = zext i8 %886 to i32
  %xor.i224.2.2 = xor i32 %conv.i218.2.2, %conv5.i223.2.2
  %conv6.i225.2.2 = trunc i32 %xor.i224.2.2 to i8
  %scevgep117.2.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i225.2.2, i8* %scevgep117.2.2, align 1
  %scevgep116.3.2 = getelementptr i8, i8* %c, i64 3
  %887 = load i8, i8* %scevgep116.3.2, align 1
  %conv.i218.3.2 = zext i8 %887 to i32
  %scevgep118.3.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  %888 = load i8, i8* %scevgep118.3.2, align 1
  %conv5.i223.3.2 = zext i8 %888 to i32
  %xor.i224.3.2 = xor i32 %conv.i218.3.2, %conv5.i223.3.2
  %conv6.i225.3.2 = trunc i32 %xor.i224.3.2 to i8
  %scevgep117.3.2 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i225.3.2, i8* %scevgep117.3.2, align 1
  %scevgep116.4.2 = getelementptr i8, i8* %c, i64 4
  %889 = load i8, i8* %scevgep116.4.2, align 1
  %conv.i218.4.2 = zext i8 %889 to i32
  %scevgep118.4.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  %890 = load i8, i8* %scevgep118.4.2, align 1
  %conv5.i223.4.2 = zext i8 %890 to i32
  %xor.i224.4.2 = xor i32 %conv.i218.4.2, %conv5.i223.4.2
  %conv6.i225.4.2 = trunc i32 %xor.i224.4.2 to i8
  %scevgep117.4.2 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i225.4.2, i8* %scevgep117.4.2, align 1
  %scevgep116.5.2 = getelementptr i8, i8* %c, i64 5
  %891 = load i8, i8* %scevgep116.5.2, align 1
  %conv.i218.5.2 = zext i8 %891 to i32
  %scevgep118.5.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  %892 = load i8, i8* %scevgep118.5.2, align 1
  %conv5.i223.5.2 = zext i8 %892 to i32
  %xor.i224.5.2 = xor i32 %conv.i218.5.2, %conv5.i223.5.2
  %conv6.i225.5.2 = trunc i32 %xor.i224.5.2 to i8
  %scevgep117.5.2 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i225.5.2, i8* %scevgep117.5.2, align 1
  %scevgep116.6.2 = getelementptr i8, i8* %c, i64 6
  %893 = load i8, i8* %scevgep116.6.2, align 1
  %conv.i218.6.2 = zext i8 %893 to i32
  %scevgep118.6.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  %894 = load i8, i8* %scevgep118.6.2, align 1
  %conv5.i223.6.2 = zext i8 %894 to i32
  %xor.i224.6.2 = xor i32 %conv.i218.6.2, %conv5.i223.6.2
  %conv6.i225.6.2 = trunc i32 %xor.i224.6.2 to i8
  %scevgep117.6.2 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i225.6.2, i8* %scevgep117.6.2, align 1
  %scevgep116.7.2 = getelementptr i8, i8* %c, i64 7
  %895 = load i8, i8* %scevgep116.7.2, align 1
  %conv.i218.7.2 = zext i8 %895 to i32
  %scevgep118.7.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  %896 = load i8, i8* %scevgep118.7.2, align 1
  %conv5.i223.7.2 = zext i8 %896 to i32
  %xor.i224.7.2 = xor i32 %conv.i218.7.2, %conv5.i223.7.2
  %conv6.i225.7.2 = trunc i32 %xor.i224.7.2 to i8
  %scevgep117.7.2 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i225.7.2, i8* %scevgep117.7.2, align 1
  %scevgep116.8.2 = getelementptr i8, i8* %c, i64 8
  %897 = load i8, i8* %scevgep116.8.2, align 1
  %conv.i218.8.2 = zext i8 %897 to i32
  %scevgep118.8.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  %898 = load i8, i8* %scevgep118.8.2, align 1
  %conv5.i223.8.2 = zext i8 %898 to i32
  %xor.i224.8.2 = xor i32 %conv.i218.8.2, %conv5.i223.8.2
  %conv6.i225.8.2 = trunc i32 %xor.i224.8.2 to i8
  %scevgep117.8.2 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i225.8.2, i8* %scevgep117.8.2, align 1
  %scevgep116.9.2 = getelementptr i8, i8* %c, i64 9
  %899 = load i8, i8* %scevgep116.9.2, align 1
  %conv.i218.9.2 = zext i8 %899 to i32
  %scevgep118.9.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  %900 = load i8, i8* %scevgep118.9.2, align 1
  %conv5.i223.9.2 = zext i8 %900 to i32
  %xor.i224.9.2 = xor i32 %conv.i218.9.2, %conv5.i223.9.2
  %conv6.i225.9.2 = trunc i32 %xor.i224.9.2 to i8
  %scevgep117.9.2 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i225.9.2, i8* %scevgep117.9.2, align 1
  %scevgep116.10.2 = getelementptr i8, i8* %c, i64 10
  %901 = load i8, i8* %scevgep116.10.2, align 1
  %conv.i218.10.2 = zext i8 %901 to i32
  %scevgep118.10.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  %902 = load i8, i8* %scevgep118.10.2, align 1
  %conv5.i223.10.2 = zext i8 %902 to i32
  %xor.i224.10.2 = xor i32 %conv.i218.10.2, %conv5.i223.10.2
  %conv6.i225.10.2 = trunc i32 %xor.i224.10.2 to i8
  %scevgep117.10.2 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i225.10.2, i8* %scevgep117.10.2, align 1
  %scevgep116.11.2 = getelementptr i8, i8* %c, i64 11
  %903 = load i8, i8* %scevgep116.11.2, align 1
  %conv.i218.11.2 = zext i8 %903 to i32
  %scevgep118.11.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  %904 = load i8, i8* %scevgep118.11.2, align 1
  %conv5.i223.11.2 = zext i8 %904 to i32
  %xor.i224.11.2 = xor i32 %conv.i218.11.2, %conv5.i223.11.2
  %conv6.i225.11.2 = trunc i32 %xor.i224.11.2 to i8
  %scevgep117.11.2 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i225.11.2, i8* %scevgep117.11.2, align 1
  %scevgep116.12.2 = getelementptr i8, i8* %c, i64 12
  %905 = load i8, i8* %scevgep116.12.2, align 1
  %conv.i218.12.2 = zext i8 %905 to i32
  %scevgep118.12.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  %906 = load i8, i8* %scevgep118.12.2, align 1
  %conv5.i223.12.2 = zext i8 %906 to i32
  %xor.i224.12.2 = xor i32 %conv.i218.12.2, %conv5.i223.12.2
  %conv6.i225.12.2 = trunc i32 %xor.i224.12.2 to i8
  %scevgep117.12.2 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i225.12.2, i8* %scevgep117.12.2, align 1
  %scevgep116.13.2 = getelementptr i8, i8* %c, i64 13
  %907 = load i8, i8* %scevgep116.13.2, align 1
  %conv.i218.13.2 = zext i8 %907 to i32
  %scevgep118.13.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  %908 = load i8, i8* %scevgep118.13.2, align 1
  %conv5.i223.13.2 = zext i8 %908 to i32
  %xor.i224.13.2 = xor i32 %conv.i218.13.2, %conv5.i223.13.2
  %conv6.i225.13.2 = trunc i32 %xor.i224.13.2 to i8
  %scevgep117.13.2 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i225.13.2, i8* %scevgep117.13.2, align 1
  %scevgep116.14.2 = getelementptr i8, i8* %c, i64 14
  %909 = load i8, i8* %scevgep116.14.2, align 1
  %conv.i218.14.2 = zext i8 %909 to i32
  %scevgep118.14.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  %910 = load i8, i8* %scevgep118.14.2, align 1
  %conv5.i223.14.2 = zext i8 %910 to i32
  %xor.i224.14.2 = xor i32 %conv.i218.14.2, %conv5.i223.14.2
  %conv6.i225.14.2 = trunc i32 %xor.i224.14.2 to i8
  %scevgep117.14.2 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i225.14.2, i8* %scevgep117.14.2, align 1
  %scevgep116.15.2 = getelementptr i8, i8* %c, i64 15
  %911 = load i8, i8* %scevgep116.15.2, align 1
  %conv.i218.15.2 = zext i8 %911 to i32
  %scevgep118.15.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  %912 = load i8, i8* %scevgep118.15.2, align 1
  %conv5.i223.15.2 = zext i8 %912 to i32
  %xor.i224.15.2 = xor i32 %conv.i218.15.2, %conv5.i223.15.2
  %conv6.i225.15.2 = trunc i32 %xor.i224.15.2 to i8
  %scevgep117.15.2 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i225.15.2, i8* %scevgep117.15.2, align 1
  %913 = load i8, i8* %c, align 1
  %conv.i390.2252 = zext i8 %913 to i32
  %scevgep124.2253 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  %914 = load i8, i8* %scevgep124.2253, align 1
  %conv5.i395.2254 = zext i8 %914 to i32
  %xor.i396.2255 = xor i32 %conv.i390.2252, %conv5.i395.2254
  %conv6.i397.2256 = trunc i32 %xor.i396.2255 to i8
  store i8 %conv6.i397.2256, i8* %c, align 1
  %scevgep122.1.2 = getelementptr i8, i8* %c, i64 1
  %915 = load i8, i8* %scevgep122.1.2, align 1
  %conv.i390.1.2 = zext i8 %915 to i32
  %scevgep124.1.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  %916 = load i8, i8* %scevgep124.1.2, align 1
  %conv5.i395.1.2 = zext i8 %916 to i32
  %xor.i396.1.2 = xor i32 %conv.i390.1.2, %conv5.i395.1.2
  %conv6.i397.1.2 = trunc i32 %xor.i396.1.2 to i8
  %scevgep123.1.2 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i397.1.2, i8* %scevgep123.1.2, align 1
  %scevgep122.2.2 = getelementptr i8, i8* %c, i64 2
  %917 = load i8, i8* %scevgep122.2.2, align 1
  %conv.i390.2.2 = zext i8 %917 to i32
  %scevgep124.2.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  %918 = load i8, i8* %scevgep124.2.2, align 1
  %conv5.i395.2.2 = zext i8 %918 to i32
  %xor.i396.2.2 = xor i32 %conv.i390.2.2, %conv5.i395.2.2
  %conv6.i397.2.2 = trunc i32 %xor.i396.2.2 to i8
  %scevgep123.2.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i397.2.2, i8* %scevgep123.2.2, align 1
  %scevgep122.3.2 = getelementptr i8, i8* %c, i64 3
  %919 = load i8, i8* %scevgep122.3.2, align 1
  %conv.i390.3.2 = zext i8 %919 to i32
  %scevgep124.3.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  %920 = load i8, i8* %scevgep124.3.2, align 1
  %conv5.i395.3.2 = zext i8 %920 to i32
  %xor.i396.3.2 = xor i32 %conv.i390.3.2, %conv5.i395.3.2
  %conv6.i397.3.2 = trunc i32 %xor.i396.3.2 to i8
  %scevgep123.3.2 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i397.3.2, i8* %scevgep123.3.2, align 1
  %scevgep122.4.2 = getelementptr i8, i8* %c, i64 4
  %921 = load i8, i8* %scevgep122.4.2, align 1
  %conv.i390.4.2 = zext i8 %921 to i32
  %scevgep124.4.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  %922 = load i8, i8* %scevgep124.4.2, align 1
  %conv5.i395.4.2 = zext i8 %922 to i32
  %xor.i396.4.2 = xor i32 %conv.i390.4.2, %conv5.i395.4.2
  %conv6.i397.4.2 = trunc i32 %xor.i396.4.2 to i8
  %scevgep123.4.2 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i397.4.2, i8* %scevgep123.4.2, align 1
  %scevgep122.5.2 = getelementptr i8, i8* %c, i64 5
  %923 = load i8, i8* %scevgep122.5.2, align 1
  %conv.i390.5.2 = zext i8 %923 to i32
  %scevgep124.5.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  %924 = load i8, i8* %scevgep124.5.2, align 1
  %conv5.i395.5.2 = zext i8 %924 to i32
  %xor.i396.5.2 = xor i32 %conv.i390.5.2, %conv5.i395.5.2
  %conv6.i397.5.2 = trunc i32 %xor.i396.5.2 to i8
  %scevgep123.5.2 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i397.5.2, i8* %scevgep123.5.2, align 1
  %scevgep122.6.2 = getelementptr i8, i8* %c, i64 6
  %925 = load i8, i8* %scevgep122.6.2, align 1
  %conv.i390.6.2 = zext i8 %925 to i32
  %scevgep124.6.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  %926 = load i8, i8* %scevgep124.6.2, align 1
  %conv5.i395.6.2 = zext i8 %926 to i32
  %xor.i396.6.2 = xor i32 %conv.i390.6.2, %conv5.i395.6.2
  %conv6.i397.6.2 = trunc i32 %xor.i396.6.2 to i8
  %scevgep123.6.2 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i397.6.2, i8* %scevgep123.6.2, align 1
  %scevgep122.7.2 = getelementptr i8, i8* %c, i64 7
  %927 = load i8, i8* %scevgep122.7.2, align 1
  %conv.i390.7.2 = zext i8 %927 to i32
  %scevgep124.7.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  %928 = load i8, i8* %scevgep124.7.2, align 1
  %conv5.i395.7.2 = zext i8 %928 to i32
  %xor.i396.7.2 = xor i32 %conv.i390.7.2, %conv5.i395.7.2
  %conv6.i397.7.2 = trunc i32 %xor.i396.7.2 to i8
  %scevgep123.7.2 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i397.7.2, i8* %scevgep123.7.2, align 1
  %scevgep122.8.2 = getelementptr i8, i8* %c, i64 8
  %929 = load i8, i8* %scevgep122.8.2, align 1
  %conv.i390.8.2 = zext i8 %929 to i32
  %scevgep124.8.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  %930 = load i8, i8* %scevgep124.8.2, align 1
  %conv5.i395.8.2 = zext i8 %930 to i32
  %xor.i396.8.2 = xor i32 %conv.i390.8.2, %conv5.i395.8.2
  %conv6.i397.8.2 = trunc i32 %xor.i396.8.2 to i8
  %scevgep123.8.2 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i397.8.2, i8* %scevgep123.8.2, align 1
  %scevgep122.9.2 = getelementptr i8, i8* %c, i64 9
  %931 = load i8, i8* %scevgep122.9.2, align 1
  %conv.i390.9.2 = zext i8 %931 to i32
  %scevgep124.9.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  %932 = load i8, i8* %scevgep124.9.2, align 1
  %conv5.i395.9.2 = zext i8 %932 to i32
  %xor.i396.9.2 = xor i32 %conv.i390.9.2, %conv5.i395.9.2
  %conv6.i397.9.2 = trunc i32 %xor.i396.9.2 to i8
  %scevgep123.9.2 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i397.9.2, i8* %scevgep123.9.2, align 1
  %scevgep122.10.2 = getelementptr i8, i8* %c, i64 10
  %933 = load i8, i8* %scevgep122.10.2, align 1
  %conv.i390.10.2 = zext i8 %933 to i32
  %scevgep124.10.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  %934 = load i8, i8* %scevgep124.10.2, align 1
  %conv5.i395.10.2 = zext i8 %934 to i32
  %xor.i396.10.2 = xor i32 %conv.i390.10.2, %conv5.i395.10.2
  %conv6.i397.10.2 = trunc i32 %xor.i396.10.2 to i8
  %scevgep123.10.2 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i397.10.2, i8* %scevgep123.10.2, align 1
  %scevgep122.11.2 = getelementptr i8, i8* %c, i64 11
  %935 = load i8, i8* %scevgep122.11.2, align 1
  %conv.i390.11.2 = zext i8 %935 to i32
  %scevgep124.11.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  %936 = load i8, i8* %scevgep124.11.2, align 1
  %conv5.i395.11.2 = zext i8 %936 to i32
  %xor.i396.11.2 = xor i32 %conv.i390.11.2, %conv5.i395.11.2
  %conv6.i397.11.2 = trunc i32 %xor.i396.11.2 to i8
  %scevgep123.11.2 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i397.11.2, i8* %scevgep123.11.2, align 1
  %scevgep122.12.2 = getelementptr i8, i8* %c, i64 12
  %937 = load i8, i8* %scevgep122.12.2, align 1
  %conv.i390.12.2 = zext i8 %937 to i32
  %scevgep124.12.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  %938 = load i8, i8* %scevgep124.12.2, align 1
  %conv5.i395.12.2 = zext i8 %938 to i32
  %xor.i396.12.2 = xor i32 %conv.i390.12.2, %conv5.i395.12.2
  %conv6.i397.12.2 = trunc i32 %xor.i396.12.2 to i8
  %scevgep123.12.2 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i397.12.2, i8* %scevgep123.12.2, align 1
  %scevgep122.13.2 = getelementptr i8, i8* %c, i64 13
  %939 = load i8, i8* %scevgep122.13.2, align 1
  %conv.i390.13.2 = zext i8 %939 to i32
  %scevgep124.13.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  %940 = load i8, i8* %scevgep124.13.2, align 1
  %conv5.i395.13.2 = zext i8 %940 to i32
  %xor.i396.13.2 = xor i32 %conv.i390.13.2, %conv5.i395.13.2
  %conv6.i397.13.2 = trunc i32 %xor.i396.13.2 to i8
  %scevgep123.13.2 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i397.13.2, i8* %scevgep123.13.2, align 1
  %scevgep122.14.2 = getelementptr i8, i8* %c, i64 14
  %941 = load i8, i8* %scevgep122.14.2, align 1
  %conv.i390.14.2 = zext i8 %941 to i32
  %scevgep124.14.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  %942 = load i8, i8* %scevgep124.14.2, align 1
  %conv5.i395.14.2 = zext i8 %942 to i32
  %xor.i396.14.2 = xor i32 %conv.i390.14.2, %conv5.i395.14.2
  %conv6.i397.14.2 = trunc i32 %xor.i396.14.2 to i8
  %scevgep123.14.2 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i397.14.2, i8* %scevgep123.14.2, align 1
  %scevgep122.15.2 = getelementptr i8, i8* %c, i64 15
  %943 = load i8, i8* %scevgep122.15.2, align 1
  %conv.i390.15.2 = zext i8 %943 to i32
  %scevgep124.15.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  %944 = load i8, i8* %scevgep124.15.2, align 1
  %conv5.i395.15.2 = zext i8 %944 to i32
  %xor.i396.15.2 = xor i32 %conv.i390.15.2, %conv5.i395.15.2
  %conv6.i397.15.2 = trunc i32 %xor.i396.15.2 to i8
  %scevgep123.15.2 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i397.15.2, i8* %scevgep123.15.2, align 1
  %arrayidx42.2 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 2
  %arraydecay43.2 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx42.2, i64 0, i64 0
  %945 = load i8, i8* %c, align 1
  %conv.i437.2257 = zext i8 %945 to i32
  %arrayidx4.i441.2258 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 1
  %946 = load i8, i8* %arrayidx4.i441.2258, align 1
  %conv5.i442.2259 = zext i8 %946 to i32
  %xor.i443.2260 = xor i32 %conv.i437.2257, %conv5.i442.2259
  %conv6.i444.2261 = trunc i32 %xor.i443.2260 to i8
  store i8 %conv6.i444.2261, i8* %c, align 1
  %scevgep128.1.2 = getelementptr i8, i8* %c, i64 1
  %947 = load i8, i8* %scevgep128.1.2, align 1
  %conv.i437.1.2 = zext i8 %947 to i32
  %arrayidx4.i441.1.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 2
  %948 = load i8, i8* %arrayidx4.i441.1.2, align 1
  %conv5.i442.1.2 = zext i8 %948 to i32
  %xor.i443.1.2 = xor i32 %conv.i437.1.2, %conv5.i442.1.2
  %conv6.i444.1.2 = trunc i32 %xor.i443.1.2 to i8
  %scevgep129.1.2 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i444.1.2, i8* %scevgep129.1.2, align 1
  %scevgep128.2.2 = getelementptr i8, i8* %c, i64 2
  %949 = load i8, i8* %scevgep128.2.2, align 1
  %conv.i437.2.2 = zext i8 %949 to i32
  %arrayidx4.i441.2.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 3
  %950 = load i8, i8* %arrayidx4.i441.2.2, align 1
  %conv5.i442.2.2 = zext i8 %950 to i32
  %xor.i443.2.2 = xor i32 %conv.i437.2.2, %conv5.i442.2.2
  %conv6.i444.2.2 = trunc i32 %xor.i443.2.2 to i8
  %scevgep129.2.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i444.2.2, i8* %scevgep129.2.2, align 1
  %scevgep128.3.2 = getelementptr i8, i8* %c, i64 3
  %951 = load i8, i8* %scevgep128.3.2, align 1
  %conv.i437.3.2 = zext i8 %951 to i32
  %arrayidx4.i441.3.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 4
  %952 = load i8, i8* %arrayidx4.i441.3.2, align 1
  %conv5.i442.3.2 = zext i8 %952 to i32
  %xor.i443.3.2 = xor i32 %conv.i437.3.2, %conv5.i442.3.2
  %conv6.i444.3.2 = trunc i32 %xor.i443.3.2 to i8
  %scevgep129.3.2 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i444.3.2, i8* %scevgep129.3.2, align 1
  %scevgep128.4.2 = getelementptr i8, i8* %c, i64 4
  %953 = load i8, i8* %scevgep128.4.2, align 1
  %conv.i437.4.2 = zext i8 %953 to i32
  %arrayidx4.i441.4.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 5
  %954 = load i8, i8* %arrayidx4.i441.4.2, align 1
  %conv5.i442.4.2 = zext i8 %954 to i32
  %xor.i443.4.2 = xor i32 %conv.i437.4.2, %conv5.i442.4.2
  %conv6.i444.4.2 = trunc i32 %xor.i443.4.2 to i8
  %scevgep129.4.2 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i444.4.2, i8* %scevgep129.4.2, align 1
  %scevgep128.5.2 = getelementptr i8, i8* %c, i64 5
  %955 = load i8, i8* %scevgep128.5.2, align 1
  %conv.i437.5.2 = zext i8 %955 to i32
  %arrayidx4.i441.5.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 6
  %956 = load i8, i8* %arrayidx4.i441.5.2, align 1
  %conv5.i442.5.2 = zext i8 %956 to i32
  %xor.i443.5.2 = xor i32 %conv.i437.5.2, %conv5.i442.5.2
  %conv6.i444.5.2 = trunc i32 %xor.i443.5.2 to i8
  %scevgep129.5.2 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i444.5.2, i8* %scevgep129.5.2, align 1
  %scevgep128.6.2 = getelementptr i8, i8* %c, i64 6
  %957 = load i8, i8* %scevgep128.6.2, align 1
  %conv.i437.6.2 = zext i8 %957 to i32
  %arrayidx4.i441.6.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 7
  %958 = load i8, i8* %arrayidx4.i441.6.2, align 1
  %conv5.i442.6.2 = zext i8 %958 to i32
  %xor.i443.6.2 = xor i32 %conv.i437.6.2, %conv5.i442.6.2
  %conv6.i444.6.2 = trunc i32 %xor.i443.6.2 to i8
  %scevgep129.6.2 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i444.6.2, i8* %scevgep129.6.2, align 1
  %scevgep128.7.2 = getelementptr i8, i8* %c, i64 7
  %959 = load i8, i8* %scevgep128.7.2, align 1
  %conv.i437.7.2 = zext i8 %959 to i32
  %arrayidx4.i441.7.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 8
  %960 = load i8, i8* %arrayidx4.i441.7.2, align 1
  %conv5.i442.7.2 = zext i8 %960 to i32
  %xor.i443.7.2 = xor i32 %conv.i437.7.2, %conv5.i442.7.2
  %conv6.i444.7.2 = trunc i32 %xor.i443.7.2 to i8
  %scevgep129.7.2 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i444.7.2, i8* %scevgep129.7.2, align 1
  %scevgep128.8.2 = getelementptr i8, i8* %c, i64 8
  %961 = load i8, i8* %scevgep128.8.2, align 1
  %conv.i437.8.2 = zext i8 %961 to i32
  %arrayidx4.i441.8.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 9
  %962 = load i8, i8* %arrayidx4.i441.8.2, align 1
  %conv5.i442.8.2 = zext i8 %962 to i32
  %xor.i443.8.2 = xor i32 %conv.i437.8.2, %conv5.i442.8.2
  %conv6.i444.8.2 = trunc i32 %xor.i443.8.2 to i8
  %scevgep129.8.2 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i444.8.2, i8* %scevgep129.8.2, align 1
  %scevgep128.9.2 = getelementptr i8, i8* %c, i64 9
  %963 = load i8, i8* %scevgep128.9.2, align 1
  %conv.i437.9.2 = zext i8 %963 to i32
  %arrayidx4.i441.9.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 10
  %964 = load i8, i8* %arrayidx4.i441.9.2, align 1
  %conv5.i442.9.2 = zext i8 %964 to i32
  %xor.i443.9.2 = xor i32 %conv.i437.9.2, %conv5.i442.9.2
  %conv6.i444.9.2 = trunc i32 %xor.i443.9.2 to i8
  %scevgep129.9.2 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i444.9.2, i8* %scevgep129.9.2, align 1
  %scevgep128.10.2 = getelementptr i8, i8* %c, i64 10
  %965 = load i8, i8* %scevgep128.10.2, align 1
  %conv.i437.10.2 = zext i8 %965 to i32
  %arrayidx4.i441.10.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 11
  %966 = load i8, i8* %arrayidx4.i441.10.2, align 1
  %conv5.i442.10.2 = zext i8 %966 to i32
  %xor.i443.10.2 = xor i32 %conv.i437.10.2, %conv5.i442.10.2
  %conv6.i444.10.2 = trunc i32 %xor.i443.10.2 to i8
  %scevgep129.10.2 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i444.10.2, i8* %scevgep129.10.2, align 1
  %scevgep128.11.2 = getelementptr i8, i8* %c, i64 11
  %967 = load i8, i8* %scevgep128.11.2, align 1
  %conv.i437.11.2 = zext i8 %967 to i32
  %arrayidx4.i441.11.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 12
  %968 = load i8, i8* %arrayidx4.i441.11.2, align 1
  %conv5.i442.11.2 = zext i8 %968 to i32
  %xor.i443.11.2 = xor i32 %conv.i437.11.2, %conv5.i442.11.2
  %conv6.i444.11.2 = trunc i32 %xor.i443.11.2 to i8
  %scevgep129.11.2 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i444.11.2, i8* %scevgep129.11.2, align 1
  %scevgep128.12.2 = getelementptr i8, i8* %c, i64 12
  %969 = load i8, i8* %scevgep128.12.2, align 1
  %conv.i437.12.2 = zext i8 %969 to i32
  %arrayidx4.i441.12.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 13
  %970 = load i8, i8* %arrayidx4.i441.12.2, align 1
  %conv5.i442.12.2 = zext i8 %970 to i32
  %xor.i443.12.2 = xor i32 %conv.i437.12.2, %conv5.i442.12.2
  %conv6.i444.12.2 = trunc i32 %xor.i443.12.2 to i8
  %scevgep129.12.2 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i444.12.2, i8* %scevgep129.12.2, align 1
  %scevgep128.13.2 = getelementptr i8, i8* %c, i64 13
  %971 = load i8, i8* %scevgep128.13.2, align 1
  %conv.i437.13.2 = zext i8 %971 to i32
  %arrayidx4.i441.13.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 14
  %972 = load i8, i8* %arrayidx4.i441.13.2, align 1
  %conv5.i442.13.2 = zext i8 %972 to i32
  %xor.i443.13.2 = xor i32 %conv.i437.13.2, %conv5.i442.13.2
  %conv6.i444.13.2 = trunc i32 %xor.i443.13.2 to i8
  %scevgep129.13.2 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i444.13.2, i8* %scevgep129.13.2, align 1
  %scevgep128.14.2 = getelementptr i8, i8* %c, i64 14
  %973 = load i8, i8* %scevgep128.14.2, align 1
  %conv.i437.14.2 = zext i8 %973 to i32
  %arrayidx4.i441.14.2 = getelementptr inbounds i8, i8* %arraydecay43.2, i64 15
  %974 = load i8, i8* %arrayidx4.i441.14.2, align 1
  %conv5.i442.14.2 = zext i8 %974 to i32
  %xor.i443.14.2 = xor i32 %conv.i437.14.2, %conv5.i442.14.2
  %conv6.i444.14.2 = trunc i32 %xor.i443.14.2 to i8
  %scevgep129.14.2 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i444.14.2, i8* %scevgep129.14.2, align 1
  %scevgep128.15.2 = getelementptr i8, i8* %c, i64 15
  %975 = load i8, i8* %scevgep128.15.2, align 1
  %conv.i437.15.2 = zext i8 %975 to i32
  %976 = load i8, i8* %arraydecay43.2, align 1
  %conv5.i442.15.2 = zext i8 %976 to i32
  %xor.i443.15.2 = xor i32 %conv.i437.15.2, %conv5.i442.15.2
  %conv6.i444.15.2 = trunc i32 %xor.i443.15.2 to i8
  %scevgep129.15.2 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i444.15.2, i8* %scevgep129.15.2, align 1
  %977 = load i8, i8* %c, align 1
  %conv.i484.2262 = zext i8 %977 to i32
  %scevgep136.2263 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  %978 = load i8, i8* %scevgep136.2263, align 1
  %conv5.i489.2264 = zext i8 %978 to i32
  %xor.i490.2265 = xor i32 %conv.i484.2262, %conv5.i489.2264
  %conv6.i491.2266 = trunc i32 %xor.i490.2265 to i8
  store i8 %conv6.i491.2266, i8* %c, align 1
  %scevgep134.1.2 = getelementptr i8, i8* %c, i64 1
  %979 = load i8, i8* %scevgep134.1.2, align 1
  %conv.i484.1.2 = zext i8 %979 to i32
  %scevgep136.1.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  %980 = load i8, i8* %scevgep136.1.2, align 1
  %conv5.i489.1.2 = zext i8 %980 to i32
  %xor.i490.1.2 = xor i32 %conv.i484.1.2, %conv5.i489.1.2
  %conv6.i491.1.2 = trunc i32 %xor.i490.1.2 to i8
  %scevgep135.1.2 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i491.1.2, i8* %scevgep135.1.2, align 1
  %scevgep134.2.2 = getelementptr i8, i8* %c, i64 2
  %981 = load i8, i8* %scevgep134.2.2, align 1
  %conv.i484.2.2 = zext i8 %981 to i32
  %scevgep136.2.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  %982 = load i8, i8* %scevgep136.2.2, align 1
  %conv5.i489.2.2 = zext i8 %982 to i32
  %xor.i490.2.2 = xor i32 %conv.i484.2.2, %conv5.i489.2.2
  %conv6.i491.2.2 = trunc i32 %xor.i490.2.2 to i8
  %scevgep135.2.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i491.2.2, i8* %scevgep135.2.2, align 1
  %scevgep134.3.2 = getelementptr i8, i8* %c, i64 3
  %983 = load i8, i8* %scevgep134.3.2, align 1
  %conv.i484.3.2 = zext i8 %983 to i32
  %scevgep136.3.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  %984 = load i8, i8* %scevgep136.3.2, align 1
  %conv5.i489.3.2 = zext i8 %984 to i32
  %xor.i490.3.2 = xor i32 %conv.i484.3.2, %conv5.i489.3.2
  %conv6.i491.3.2 = trunc i32 %xor.i490.3.2 to i8
  %scevgep135.3.2 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i491.3.2, i8* %scevgep135.3.2, align 1
  %scevgep134.4.2 = getelementptr i8, i8* %c, i64 4
  %985 = load i8, i8* %scevgep134.4.2, align 1
  %conv.i484.4.2 = zext i8 %985 to i32
  %scevgep136.4.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  %986 = load i8, i8* %scevgep136.4.2, align 1
  %conv5.i489.4.2 = zext i8 %986 to i32
  %xor.i490.4.2 = xor i32 %conv.i484.4.2, %conv5.i489.4.2
  %conv6.i491.4.2 = trunc i32 %xor.i490.4.2 to i8
  %scevgep135.4.2 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i491.4.2, i8* %scevgep135.4.2, align 1
  %scevgep134.5.2 = getelementptr i8, i8* %c, i64 5
  %987 = load i8, i8* %scevgep134.5.2, align 1
  %conv.i484.5.2 = zext i8 %987 to i32
  %scevgep136.5.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  %988 = load i8, i8* %scevgep136.5.2, align 1
  %conv5.i489.5.2 = zext i8 %988 to i32
  %xor.i490.5.2 = xor i32 %conv.i484.5.2, %conv5.i489.5.2
  %conv6.i491.5.2 = trunc i32 %xor.i490.5.2 to i8
  %scevgep135.5.2 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i491.5.2, i8* %scevgep135.5.2, align 1
  %scevgep134.6.2 = getelementptr i8, i8* %c, i64 6
  %989 = load i8, i8* %scevgep134.6.2, align 1
  %conv.i484.6.2 = zext i8 %989 to i32
  %scevgep136.6.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  %990 = load i8, i8* %scevgep136.6.2, align 1
  %conv5.i489.6.2 = zext i8 %990 to i32
  %xor.i490.6.2 = xor i32 %conv.i484.6.2, %conv5.i489.6.2
  %conv6.i491.6.2 = trunc i32 %xor.i490.6.2 to i8
  %scevgep135.6.2 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i491.6.2, i8* %scevgep135.6.2, align 1
  %scevgep134.7.2 = getelementptr i8, i8* %c, i64 7
  %991 = load i8, i8* %scevgep134.7.2, align 1
  %conv.i484.7.2 = zext i8 %991 to i32
  %scevgep136.7.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  %992 = load i8, i8* %scevgep136.7.2, align 1
  %conv5.i489.7.2 = zext i8 %992 to i32
  %xor.i490.7.2 = xor i32 %conv.i484.7.2, %conv5.i489.7.2
  %conv6.i491.7.2 = trunc i32 %xor.i490.7.2 to i8
  %scevgep135.7.2 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i491.7.2, i8* %scevgep135.7.2, align 1
  %scevgep134.8.2 = getelementptr i8, i8* %c, i64 8
  %993 = load i8, i8* %scevgep134.8.2, align 1
  %conv.i484.8.2 = zext i8 %993 to i32
  %scevgep136.8.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  %994 = load i8, i8* %scevgep136.8.2, align 1
  %conv5.i489.8.2 = zext i8 %994 to i32
  %xor.i490.8.2 = xor i32 %conv.i484.8.2, %conv5.i489.8.2
  %conv6.i491.8.2 = trunc i32 %xor.i490.8.2 to i8
  %scevgep135.8.2 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i491.8.2, i8* %scevgep135.8.2, align 1
  %scevgep134.9.2 = getelementptr i8, i8* %c, i64 9
  %995 = load i8, i8* %scevgep134.9.2, align 1
  %conv.i484.9.2 = zext i8 %995 to i32
  %scevgep136.9.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  %996 = load i8, i8* %scevgep136.9.2, align 1
  %conv5.i489.9.2 = zext i8 %996 to i32
  %xor.i490.9.2 = xor i32 %conv.i484.9.2, %conv5.i489.9.2
  %conv6.i491.9.2 = trunc i32 %xor.i490.9.2 to i8
  %scevgep135.9.2 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i491.9.2, i8* %scevgep135.9.2, align 1
  %scevgep134.10.2 = getelementptr i8, i8* %c, i64 10
  %997 = load i8, i8* %scevgep134.10.2, align 1
  %conv.i484.10.2 = zext i8 %997 to i32
  %scevgep136.10.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  %998 = load i8, i8* %scevgep136.10.2, align 1
  %conv5.i489.10.2 = zext i8 %998 to i32
  %xor.i490.10.2 = xor i32 %conv.i484.10.2, %conv5.i489.10.2
  %conv6.i491.10.2 = trunc i32 %xor.i490.10.2 to i8
  %scevgep135.10.2 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i491.10.2, i8* %scevgep135.10.2, align 1
  %scevgep134.11.2 = getelementptr i8, i8* %c, i64 11
  %999 = load i8, i8* %scevgep134.11.2, align 1
  %conv.i484.11.2 = zext i8 %999 to i32
  %scevgep136.11.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  %1000 = load i8, i8* %scevgep136.11.2, align 1
  %conv5.i489.11.2 = zext i8 %1000 to i32
  %xor.i490.11.2 = xor i32 %conv.i484.11.2, %conv5.i489.11.2
  %conv6.i491.11.2 = trunc i32 %xor.i490.11.2 to i8
  %scevgep135.11.2 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i491.11.2, i8* %scevgep135.11.2, align 1
  %scevgep134.12.2 = getelementptr i8, i8* %c, i64 12
  %1001 = load i8, i8* %scevgep134.12.2, align 1
  %conv.i484.12.2 = zext i8 %1001 to i32
  %scevgep136.12.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  %1002 = load i8, i8* %scevgep136.12.2, align 1
  %conv5.i489.12.2 = zext i8 %1002 to i32
  %xor.i490.12.2 = xor i32 %conv.i484.12.2, %conv5.i489.12.2
  %conv6.i491.12.2 = trunc i32 %xor.i490.12.2 to i8
  %scevgep135.12.2 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i491.12.2, i8* %scevgep135.12.2, align 1
  %scevgep134.13.2 = getelementptr i8, i8* %c, i64 13
  %1003 = load i8, i8* %scevgep134.13.2, align 1
  %conv.i484.13.2 = zext i8 %1003 to i32
  %scevgep136.13.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  %1004 = load i8, i8* %scevgep136.13.2, align 1
  %conv5.i489.13.2 = zext i8 %1004 to i32
  %xor.i490.13.2 = xor i32 %conv.i484.13.2, %conv5.i489.13.2
  %conv6.i491.13.2 = trunc i32 %xor.i490.13.2 to i8
  %scevgep135.13.2 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i491.13.2, i8* %scevgep135.13.2, align 1
  %scevgep134.14.2 = getelementptr i8, i8* %c, i64 14
  %1005 = load i8, i8* %scevgep134.14.2, align 1
  %conv.i484.14.2 = zext i8 %1005 to i32
  %scevgep136.14.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  %1006 = load i8, i8* %scevgep136.14.2, align 1
  %conv5.i489.14.2 = zext i8 %1006 to i32
  %xor.i490.14.2 = xor i32 %conv.i484.14.2, %conv5.i489.14.2
  %conv6.i491.14.2 = trunc i32 %xor.i490.14.2 to i8
  %scevgep135.14.2 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i491.14.2, i8* %scevgep135.14.2, align 1
  %scevgep134.15.2 = getelementptr i8, i8* %c, i64 15
  %1007 = load i8, i8* %scevgep134.15.2, align 1
  %conv.i484.15.2 = zext i8 %1007 to i32
  %scevgep136.15.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  %1008 = load i8, i8* %scevgep136.15.2, align 1
  %conv5.i489.15.2 = zext i8 %1008 to i32
  %xor.i490.15.2 = xor i32 %conv.i484.15.2, %conv5.i489.15.2
  %conv6.i491.15.2 = trunc i32 %xor.i490.15.2 to i8
  %scevgep135.15.2 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i491.15.2, i8* %scevgep135.15.2, align 1
  %1009 = load i8, i8* %c, align 1
  %conv.i509.2267 = zext i8 %1009 to i32
  %scevgep142.2268 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  %1010 = load i8, i8* %scevgep142.2268, align 1
  %conv5.i514.2269 = zext i8 %1010 to i32
  %xor.i515.2270 = xor i32 %conv.i509.2267, %conv5.i514.2269
  %conv6.i516.2271 = trunc i32 %xor.i515.2270 to i8
  store i8 %conv6.i516.2271, i8* %c, align 1
  %scevgep140.1.2 = getelementptr i8, i8* %c, i64 1
  %1011 = load i8, i8* %scevgep140.1.2, align 1
  %conv.i509.1.2 = zext i8 %1011 to i32
  %scevgep142.1.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 1
  %1012 = load i8, i8* %scevgep142.1.2, align 1
  %conv5.i514.1.2 = zext i8 %1012 to i32
  %xor.i515.1.2 = xor i32 %conv.i509.1.2, %conv5.i514.1.2
  %conv6.i516.1.2 = trunc i32 %xor.i515.1.2 to i8
  %scevgep141.1.2 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i516.1.2, i8* %scevgep141.1.2, align 1
  %scevgep140.2.2 = getelementptr i8, i8* %c, i64 2
  %1013 = load i8, i8* %scevgep140.2.2, align 1
  %conv.i509.2.2 = zext i8 %1013 to i32
  %scevgep142.2.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 2
  %1014 = load i8, i8* %scevgep142.2.2, align 1
  %conv5.i514.2.2 = zext i8 %1014 to i32
  %xor.i515.2.2 = xor i32 %conv.i509.2.2, %conv5.i514.2.2
  %conv6.i516.2.2 = trunc i32 %xor.i515.2.2 to i8
  %scevgep141.2.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i516.2.2, i8* %scevgep141.2.2, align 1
  %scevgep140.3.2 = getelementptr i8, i8* %c, i64 3
  %1015 = load i8, i8* %scevgep140.3.2, align 1
  %conv.i509.3.2 = zext i8 %1015 to i32
  %scevgep142.3.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 3
  %1016 = load i8, i8* %scevgep142.3.2, align 1
  %conv5.i514.3.2 = zext i8 %1016 to i32
  %xor.i515.3.2 = xor i32 %conv.i509.3.2, %conv5.i514.3.2
  %conv6.i516.3.2 = trunc i32 %xor.i515.3.2 to i8
  %scevgep141.3.2 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i516.3.2, i8* %scevgep141.3.2, align 1
  %scevgep140.4.2 = getelementptr i8, i8* %c, i64 4
  %1017 = load i8, i8* %scevgep140.4.2, align 1
  %conv.i509.4.2 = zext i8 %1017 to i32
  %scevgep142.4.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 4
  %1018 = load i8, i8* %scevgep142.4.2, align 1
  %conv5.i514.4.2 = zext i8 %1018 to i32
  %xor.i515.4.2 = xor i32 %conv.i509.4.2, %conv5.i514.4.2
  %conv6.i516.4.2 = trunc i32 %xor.i515.4.2 to i8
  %scevgep141.4.2 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i516.4.2, i8* %scevgep141.4.2, align 1
  %scevgep140.5.2 = getelementptr i8, i8* %c, i64 5
  %1019 = load i8, i8* %scevgep140.5.2, align 1
  %conv.i509.5.2 = zext i8 %1019 to i32
  %scevgep142.5.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 5
  %1020 = load i8, i8* %scevgep142.5.2, align 1
  %conv5.i514.5.2 = zext i8 %1020 to i32
  %xor.i515.5.2 = xor i32 %conv.i509.5.2, %conv5.i514.5.2
  %conv6.i516.5.2 = trunc i32 %xor.i515.5.2 to i8
  %scevgep141.5.2 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i516.5.2, i8* %scevgep141.5.2, align 1
  %scevgep140.6.2 = getelementptr i8, i8* %c, i64 6
  %1021 = load i8, i8* %scevgep140.6.2, align 1
  %conv.i509.6.2 = zext i8 %1021 to i32
  %scevgep142.6.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 6
  %1022 = load i8, i8* %scevgep142.6.2, align 1
  %conv5.i514.6.2 = zext i8 %1022 to i32
  %xor.i515.6.2 = xor i32 %conv.i509.6.2, %conv5.i514.6.2
  %conv6.i516.6.2 = trunc i32 %xor.i515.6.2 to i8
  %scevgep141.6.2 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i516.6.2, i8* %scevgep141.6.2, align 1
  %scevgep140.7.2 = getelementptr i8, i8* %c, i64 7
  %1023 = load i8, i8* %scevgep140.7.2, align 1
  %conv.i509.7.2 = zext i8 %1023 to i32
  %scevgep142.7.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 7
  %1024 = load i8, i8* %scevgep142.7.2, align 1
  %conv5.i514.7.2 = zext i8 %1024 to i32
  %xor.i515.7.2 = xor i32 %conv.i509.7.2, %conv5.i514.7.2
  %conv6.i516.7.2 = trunc i32 %xor.i515.7.2 to i8
  %scevgep141.7.2 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i516.7.2, i8* %scevgep141.7.2, align 1
  %scevgep140.8.2 = getelementptr i8, i8* %c, i64 8
  %1025 = load i8, i8* %scevgep140.8.2, align 1
  %conv.i509.8.2 = zext i8 %1025 to i32
  %scevgep142.8.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 8
  %1026 = load i8, i8* %scevgep142.8.2, align 1
  %conv5.i514.8.2 = zext i8 %1026 to i32
  %xor.i515.8.2 = xor i32 %conv.i509.8.2, %conv5.i514.8.2
  %conv6.i516.8.2 = trunc i32 %xor.i515.8.2 to i8
  %scevgep141.8.2 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i516.8.2, i8* %scevgep141.8.2, align 1
  %scevgep140.9.2 = getelementptr i8, i8* %c, i64 9
  %1027 = load i8, i8* %scevgep140.9.2, align 1
  %conv.i509.9.2 = zext i8 %1027 to i32
  %scevgep142.9.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 9
  %1028 = load i8, i8* %scevgep142.9.2, align 1
  %conv5.i514.9.2 = zext i8 %1028 to i32
  %xor.i515.9.2 = xor i32 %conv.i509.9.2, %conv5.i514.9.2
  %conv6.i516.9.2 = trunc i32 %xor.i515.9.2 to i8
  %scevgep141.9.2 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i516.9.2, i8* %scevgep141.9.2, align 1
  %scevgep140.10.2 = getelementptr i8, i8* %c, i64 10
  %1029 = load i8, i8* %scevgep140.10.2, align 1
  %conv.i509.10.2 = zext i8 %1029 to i32
  %scevgep142.10.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 10
  %1030 = load i8, i8* %scevgep142.10.2, align 1
  %conv5.i514.10.2 = zext i8 %1030 to i32
  %xor.i515.10.2 = xor i32 %conv.i509.10.2, %conv5.i514.10.2
  %conv6.i516.10.2 = trunc i32 %xor.i515.10.2 to i8
  %scevgep141.10.2 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i516.10.2, i8* %scevgep141.10.2, align 1
  %scevgep140.11.2 = getelementptr i8, i8* %c, i64 11
  %1031 = load i8, i8* %scevgep140.11.2, align 1
  %conv.i509.11.2 = zext i8 %1031 to i32
  %scevgep142.11.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 11
  %1032 = load i8, i8* %scevgep142.11.2, align 1
  %conv5.i514.11.2 = zext i8 %1032 to i32
  %xor.i515.11.2 = xor i32 %conv.i509.11.2, %conv5.i514.11.2
  %conv6.i516.11.2 = trunc i32 %xor.i515.11.2 to i8
  %scevgep141.11.2 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i516.11.2, i8* %scevgep141.11.2, align 1
  %scevgep140.12.2 = getelementptr i8, i8* %c, i64 12
  %1033 = load i8, i8* %scevgep140.12.2, align 1
  %conv.i509.12.2 = zext i8 %1033 to i32
  %scevgep142.12.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 12
  %1034 = load i8, i8* %scevgep142.12.2, align 1
  %conv5.i514.12.2 = zext i8 %1034 to i32
  %xor.i515.12.2 = xor i32 %conv.i509.12.2, %conv5.i514.12.2
  %conv6.i516.12.2 = trunc i32 %xor.i515.12.2 to i8
  %scevgep141.12.2 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i516.12.2, i8* %scevgep141.12.2, align 1
  %scevgep140.13.2 = getelementptr i8, i8* %c, i64 13
  %1035 = load i8, i8* %scevgep140.13.2, align 1
  %conv.i509.13.2 = zext i8 %1035 to i32
  %scevgep142.13.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 13
  %1036 = load i8, i8* %scevgep142.13.2, align 1
  %conv5.i514.13.2 = zext i8 %1036 to i32
  %xor.i515.13.2 = xor i32 %conv.i509.13.2, %conv5.i514.13.2
  %conv6.i516.13.2 = trunc i32 %xor.i515.13.2 to i8
  %scevgep141.13.2 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i516.13.2, i8* %scevgep141.13.2, align 1
  %scevgep140.14.2 = getelementptr i8, i8* %c, i64 14
  %1037 = load i8, i8* %scevgep140.14.2, align 1
  %conv.i509.14.2 = zext i8 %1037 to i32
  %scevgep142.14.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 14
  %1038 = load i8, i8* %scevgep142.14.2, align 1
  %conv5.i514.14.2 = zext i8 %1038 to i32
  %xor.i515.14.2 = xor i32 %conv.i509.14.2, %conv5.i514.14.2
  %conv6.i516.14.2 = trunc i32 %xor.i515.14.2 to i8
  %scevgep141.14.2 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i516.14.2, i8* %scevgep141.14.2, align 1
  %scevgep140.15.2 = getelementptr i8, i8* %c, i64 15
  %1039 = load i8, i8* %scevgep140.15.2, align 1
  %conv.i509.15.2 = zext i8 %1039 to i32
  %scevgep142.15.2 = getelementptr [16 x i8], [16 x i8]* %a2b, i64 0, i64 15
  %1040 = load i8, i8* %scevgep142.15.2, align 1
  %conv5.i514.15.2 = zext i8 %1040 to i32
  %xor.i515.15.2 = xor i32 %conv.i509.15.2, %conv5.i514.15.2
  %conv6.i516.15.2 = trunc i32 %xor.i515.15.2 to i8
  %scevgep141.15.2 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i516.15.2, i8* %scevgep141.15.2, align 1
  %1041 = load i8, i8* %a, align 1
  %arrayidx4.i465 = getelementptr inbounds i8, i8* %b, i64 7
  %1042 = load i8, i8* %arrayidx4.i465, align 1
  %call.i466 = call zeroext i8 @mult(i8 zeroext %1041, i8 zeroext %1042) #2
  %scevgep76 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i466, i8* %scevgep76, align 1
  %scevgep74.1 = getelementptr i8, i8* %a, i64 1
  %1043 = load i8, i8* %scevgep74.1, align 1
  %arrayidx4.i465.1 = getelementptr inbounds i8, i8* %b, i64 8
  %1044 = load i8, i8* %arrayidx4.i465.1, align 1
  %call.i466.1 = call zeroext i8 @mult(i8 zeroext %1043, i8 zeroext %1044) #2
  %scevgep76.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i466.1, i8* %scevgep76.1, align 1
  %scevgep74.2 = getelementptr i8, i8* %a, i64 2
  %1045 = load i8, i8* %scevgep74.2, align 1
  %arrayidx4.i465.2 = getelementptr inbounds i8, i8* %b, i64 9
  %1046 = load i8, i8* %arrayidx4.i465.2, align 1
  %call.i466.2 = call zeroext i8 @mult(i8 zeroext %1045, i8 zeroext %1046) #2
  %scevgep76.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i466.2, i8* %scevgep76.2, align 1
  %scevgep74.3 = getelementptr i8, i8* %a, i64 3
  %1047 = load i8, i8* %scevgep74.3, align 1
  %arrayidx4.i465.3 = getelementptr inbounds i8, i8* %b, i64 10
  %1048 = load i8, i8* %arrayidx4.i465.3, align 1
  %call.i466.3 = call zeroext i8 @mult(i8 zeroext %1047, i8 zeroext %1048) #2
  %scevgep76.3 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i466.3, i8* %scevgep76.3, align 1
  %scevgep74.4 = getelementptr i8, i8* %a, i64 4
  %1049 = load i8, i8* %scevgep74.4, align 1
  %arrayidx4.i465.4 = getelementptr inbounds i8, i8* %b, i64 11
  %1050 = load i8, i8* %arrayidx4.i465.4, align 1
  %call.i466.4 = call zeroext i8 @mult(i8 zeroext %1049, i8 zeroext %1050) #2
  %scevgep76.4 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i466.4, i8* %scevgep76.4, align 1
  %scevgep74.5 = getelementptr i8, i8* %a, i64 5
  %1051 = load i8, i8* %scevgep74.5, align 1
  %arrayidx4.i465.5 = getelementptr inbounds i8, i8* %b, i64 12
  %1052 = load i8, i8* %arrayidx4.i465.5, align 1
  %call.i466.5 = call zeroext i8 @mult(i8 zeroext %1051, i8 zeroext %1052) #2
  %scevgep76.5 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i466.5, i8* %scevgep76.5, align 1
  %scevgep74.6 = getelementptr i8, i8* %a, i64 6
  %1053 = load i8, i8* %scevgep74.6, align 1
  %arrayidx4.i465.6 = getelementptr inbounds i8, i8* %b, i64 13
  %1054 = load i8, i8* %arrayidx4.i465.6, align 1
  %call.i466.6 = call zeroext i8 @mult(i8 zeroext %1053, i8 zeroext %1054) #2
  %scevgep76.6 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i466.6, i8* %scevgep76.6, align 1
  %scevgep74.7 = getelementptr i8, i8* %a, i64 7
  %1055 = load i8, i8* %scevgep74.7, align 1
  %arrayidx4.i465.7 = getelementptr inbounds i8, i8* %b, i64 14
  %1056 = load i8, i8* %arrayidx4.i465.7, align 1
  %call.i466.7 = call zeroext i8 @mult(i8 zeroext %1055, i8 zeroext %1056) #2
  %scevgep76.7 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i466.7, i8* %scevgep76.7, align 1
  %scevgep74.8 = getelementptr i8, i8* %a, i64 8
  %1057 = load i8, i8* %scevgep74.8, align 1
  %arrayidx4.i465.8 = getelementptr inbounds i8, i8* %b, i64 15
  %1058 = load i8, i8* %arrayidx4.i465.8, align 1
  %call.i466.8 = call zeroext i8 @mult(i8 zeroext %1057, i8 zeroext %1058) #2
  %scevgep76.8 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i466.8, i8* %scevgep76.8, align 1
  %scevgep74.9 = getelementptr i8, i8* %a, i64 9
  %1059 = load i8, i8* %scevgep74.9, align 1
  %1060 = load i8, i8* %b, align 1
  %call.i466.9 = call zeroext i8 @mult(i8 zeroext %1059, i8 zeroext %1060) #2
  %scevgep76.9 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i466.9, i8* %scevgep76.9, align 1
  %scevgep74.10 = getelementptr i8, i8* %a, i64 10
  %1061 = load i8, i8* %scevgep74.10, align 1
  %arrayidx4.i465.10 = getelementptr inbounds i8, i8* %b, i64 1
  %1062 = load i8, i8* %arrayidx4.i465.10, align 1
  %call.i466.10 = call zeroext i8 @mult(i8 zeroext %1061, i8 zeroext %1062) #2
  %scevgep76.10 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i466.10, i8* %scevgep76.10, align 1
  %scevgep74.11 = getelementptr i8, i8* %a, i64 11
  %1063 = load i8, i8* %scevgep74.11, align 1
  %arrayidx4.i465.11 = getelementptr inbounds i8, i8* %b, i64 2
  %1064 = load i8, i8* %arrayidx4.i465.11, align 1
  %call.i466.11 = call zeroext i8 @mult(i8 zeroext %1063, i8 zeroext %1064) #2
  %scevgep76.11 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  store i8 %call.i466.11, i8* %scevgep76.11, align 1
  %scevgep74.12 = getelementptr i8, i8* %a, i64 12
  %1065 = load i8, i8* %scevgep74.12, align 1
  %arrayidx4.i465.12 = getelementptr inbounds i8, i8* %b, i64 3
  %1066 = load i8, i8* %arrayidx4.i465.12, align 1
  %call.i466.12 = call zeroext i8 @mult(i8 zeroext %1065, i8 zeroext %1066) #2
  %scevgep76.12 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  store i8 %call.i466.12, i8* %scevgep76.12, align 1
  %scevgep74.13 = getelementptr i8, i8* %a, i64 13
  %1067 = load i8, i8* %scevgep74.13, align 1
  %arrayidx4.i465.13 = getelementptr inbounds i8, i8* %b, i64 4
  %1068 = load i8, i8* %arrayidx4.i465.13, align 1
  %call.i466.13 = call zeroext i8 @mult(i8 zeroext %1067, i8 zeroext %1068) #2
  %scevgep76.13 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  store i8 %call.i466.13, i8* %scevgep76.13, align 1
  %scevgep74.14 = getelementptr i8, i8* %a, i64 14
  %1069 = load i8, i8* %scevgep74.14, align 1
  %arrayidx4.i465.14 = getelementptr inbounds i8, i8* %b, i64 5
  %1070 = load i8, i8* %arrayidx4.i465.14, align 1
  %call.i466.14 = call zeroext i8 @mult(i8 zeroext %1069, i8 zeroext %1070) #2
  %scevgep76.14 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  store i8 %call.i466.14, i8* %scevgep76.14, align 1
  %scevgep74.15 = getelementptr i8, i8* %a, i64 15
  %1071 = load i8, i8* %scevgep74.15, align 1
  %arrayidx4.i465.15 = getelementptr inbounds i8, i8* %b, i64 6
  %1072 = load i8, i8* %arrayidx4.i465.15, align 1
  %call.i466.15 = call zeroext i8 @mult(i8 zeroext %1071, i8 zeroext %1072) #2
  %scevgep76.15 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  store i8 %call.i466.15, i8* %scevgep76.15, align 1
  %arrayidx.i414 = getelementptr inbounds i8, i8* %a, i64 7
  %1073 = load i8, i8* %arrayidx.i414, align 1
  %1074 = load i8, i8* %b, align 1
  %call.i419 = call zeroext i8 @mult(i8 zeroext %1073, i8 zeroext %1074) #2
  %scevgep70 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i419, i8* %scevgep70, align 1
  %arrayidx.i414.1 = getelementptr inbounds i8, i8* %a, i64 8
  %1075 = load i8, i8* %arrayidx.i414.1, align 1
  %scevgep69.1 = getelementptr i8, i8* %b, i64 1
  %1076 = load i8, i8* %scevgep69.1, align 1
  %call.i419.1 = call zeroext i8 @mult(i8 zeroext %1075, i8 zeroext %1076) #2
  %scevgep70.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i419.1, i8* %scevgep70.1, align 1
  %arrayidx.i414.2 = getelementptr inbounds i8, i8* %a, i64 9
  %1077 = load i8, i8* %arrayidx.i414.2, align 1
  %scevgep69.2 = getelementptr i8, i8* %b, i64 2
  %1078 = load i8, i8* %scevgep69.2, align 1
  %call.i419.2 = call zeroext i8 @mult(i8 zeroext %1077, i8 zeroext %1078) #2
  %scevgep70.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i419.2, i8* %scevgep70.2, align 1
  %arrayidx.i414.3 = getelementptr inbounds i8, i8* %a, i64 10
  %1079 = load i8, i8* %arrayidx.i414.3, align 1
  %scevgep69.3 = getelementptr i8, i8* %b, i64 3
  %1080 = load i8, i8* %scevgep69.3, align 1
  %call.i419.3 = call zeroext i8 @mult(i8 zeroext %1079, i8 zeroext %1080) #2
  %scevgep70.3 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i419.3, i8* %scevgep70.3, align 1
  %arrayidx.i414.4 = getelementptr inbounds i8, i8* %a, i64 11
  %1081 = load i8, i8* %arrayidx.i414.4, align 1
  %scevgep69.4 = getelementptr i8, i8* %b, i64 4
  %1082 = load i8, i8* %scevgep69.4, align 1
  %call.i419.4 = call zeroext i8 @mult(i8 zeroext %1081, i8 zeroext %1082) #2
  %scevgep70.4 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i419.4, i8* %scevgep70.4, align 1
  %arrayidx.i414.5 = getelementptr inbounds i8, i8* %a, i64 12
  %1083 = load i8, i8* %arrayidx.i414.5, align 1
  %scevgep69.5 = getelementptr i8, i8* %b, i64 5
  %1084 = load i8, i8* %scevgep69.5, align 1
  %call.i419.5 = call zeroext i8 @mult(i8 zeroext %1083, i8 zeroext %1084) #2
  %scevgep70.5 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i419.5, i8* %scevgep70.5, align 1
  %arrayidx.i414.6 = getelementptr inbounds i8, i8* %a, i64 13
  %1085 = load i8, i8* %arrayidx.i414.6, align 1
  %scevgep69.6 = getelementptr i8, i8* %b, i64 6
  %1086 = load i8, i8* %scevgep69.6, align 1
  %call.i419.6 = call zeroext i8 @mult(i8 zeroext %1085, i8 zeroext %1086) #2
  %scevgep70.6 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  store i8 %call.i419.6, i8* %scevgep70.6, align 1
  %arrayidx.i414.7 = getelementptr inbounds i8, i8* %a, i64 14
  %1087 = load i8, i8* %arrayidx.i414.7, align 1
  %scevgep69.7 = getelementptr i8, i8* %b, i64 7
  %1088 = load i8, i8* %scevgep69.7, align 1
  %call.i419.7 = call zeroext i8 @mult(i8 zeroext %1087, i8 zeroext %1088) #2
  %scevgep70.7 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  store i8 %call.i419.7, i8* %scevgep70.7, align 1
  %arrayidx.i414.8 = getelementptr inbounds i8, i8* %a, i64 15
  %1089 = load i8, i8* %arrayidx.i414.8, align 1
  %scevgep69.8 = getelementptr i8, i8* %b, i64 8
  %1090 = load i8, i8* %scevgep69.8, align 1
  %call.i419.8 = call zeroext i8 @mult(i8 zeroext %1089, i8 zeroext %1090) #2
  %scevgep70.8 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  store i8 %call.i419.8, i8* %scevgep70.8, align 1
  %1091 = load i8, i8* %a, align 1
  %scevgep69.9 = getelementptr i8, i8* %b, i64 9
  %1092 = load i8, i8* %scevgep69.9, align 1
  %call.i419.9 = call zeroext i8 @mult(i8 zeroext %1091, i8 zeroext %1092) #2
  %scevgep70.9 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  store i8 %call.i419.9, i8* %scevgep70.9, align 1
  %arrayidx.i414.10 = getelementptr inbounds i8, i8* %a, i64 1
  %1093 = load i8, i8* %arrayidx.i414.10, align 1
  %scevgep69.10 = getelementptr i8, i8* %b, i64 10
  %1094 = load i8, i8* %scevgep69.10, align 1
  %call.i419.10 = call zeroext i8 @mult(i8 zeroext %1093, i8 zeroext %1094) #2
  %scevgep70.10 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  store i8 %call.i419.10, i8* %scevgep70.10, align 1
  %arrayidx.i414.11 = getelementptr inbounds i8, i8* %a, i64 2
  %1095 = load i8, i8* %arrayidx.i414.11, align 1
  %scevgep69.11 = getelementptr i8, i8* %b, i64 11
  %1096 = load i8, i8* %scevgep69.11, align 1
  %call.i419.11 = call zeroext i8 @mult(i8 zeroext %1095, i8 zeroext %1096) #2
  %scevgep70.11 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  store i8 %call.i419.11, i8* %scevgep70.11, align 1
  %arrayidx.i414.12 = getelementptr inbounds i8, i8* %a, i64 3
  %1097 = load i8, i8* %arrayidx.i414.12, align 1
  %scevgep69.12 = getelementptr i8, i8* %b, i64 12
  %1098 = load i8, i8* %scevgep69.12, align 1
  %call.i419.12 = call zeroext i8 @mult(i8 zeroext %1097, i8 zeroext %1098) #2
  %scevgep70.12 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  store i8 %call.i419.12, i8* %scevgep70.12, align 1
  %arrayidx.i414.13 = getelementptr inbounds i8, i8* %a, i64 4
  %1099 = load i8, i8* %arrayidx.i414.13, align 1
  %scevgep69.13 = getelementptr i8, i8* %b, i64 13
  %1100 = load i8, i8* %scevgep69.13, align 1
  %call.i419.13 = call zeroext i8 @mult(i8 zeroext %1099, i8 zeroext %1100) #2
  %scevgep70.13 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  store i8 %call.i419.13, i8* %scevgep70.13, align 1
  %arrayidx.i414.14 = getelementptr inbounds i8, i8* %a, i64 5
  %1101 = load i8, i8* %arrayidx.i414.14, align 1
  %scevgep69.14 = getelementptr i8, i8* %b, i64 14
  %1102 = load i8, i8* %scevgep69.14, align 1
  %call.i419.14 = call zeroext i8 @mult(i8 zeroext %1101, i8 zeroext %1102) #2
  %scevgep70.14 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  store i8 %call.i419.14, i8* %scevgep70.14, align 1
  %arrayidx.i414.15 = getelementptr inbounds i8, i8* %a, i64 6
  %1103 = load i8, i8* %arrayidx.i414.15, align 1
  %scevgep69.15 = getelementptr i8, i8* %b, i64 15
  %1104 = load i8, i8* %scevgep69.15, align 1
  %call.i419.15 = call zeroext i8 @mult(i8 zeroext %1103, i8 zeroext %1104) #2
  %scevgep70.15 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  store i8 %call.i419.15, i8* %scevgep70.15, align 1
  %1105 = load i8, i8* %a, align 1
  %arrayidx4.i371 = getelementptr inbounds i8, i8* %b, i64 8
  %1106 = load i8, i8* %arrayidx4.i371, align 1
  %call.i372 = call zeroext i8 @mult(i8 zeroext %1105, i8 zeroext %1106) #2
  %scevgep64 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i372, i8* %scevgep64, align 1
  %scevgep62.1 = getelementptr i8, i8* %a, i64 1
  %1107 = load i8, i8* %scevgep62.1, align 1
  %arrayidx4.i371.1 = getelementptr inbounds i8, i8* %b, i64 9
  %1108 = load i8, i8* %arrayidx4.i371.1, align 1
  %call.i372.1 = call zeroext i8 @mult(i8 zeroext %1107, i8 zeroext %1108) #2
  %scevgep64.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i372.1, i8* %scevgep64.1, align 1
  %scevgep62.2 = getelementptr i8, i8* %a, i64 2
  %1109 = load i8, i8* %scevgep62.2, align 1
  %arrayidx4.i371.2 = getelementptr inbounds i8, i8* %b, i64 10
  %1110 = load i8, i8* %arrayidx4.i371.2, align 1
  %call.i372.2 = call zeroext i8 @mult(i8 zeroext %1109, i8 zeroext %1110) #2
  %scevgep64.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i372.2, i8* %scevgep64.2, align 1
  %scevgep62.3 = getelementptr i8, i8* %a, i64 3
  %1111 = load i8, i8* %scevgep62.3, align 1
  %arrayidx4.i371.3 = getelementptr inbounds i8, i8* %b, i64 11
  %1112 = load i8, i8* %arrayidx4.i371.3, align 1
  %call.i372.3 = call zeroext i8 @mult(i8 zeroext %1111, i8 zeroext %1112) #2
  %scevgep64.3 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i372.3, i8* %scevgep64.3, align 1
  %scevgep62.4 = getelementptr i8, i8* %a, i64 4
  %1113 = load i8, i8* %scevgep62.4, align 1
  %arrayidx4.i371.4 = getelementptr inbounds i8, i8* %b, i64 12
  %1114 = load i8, i8* %arrayidx4.i371.4, align 1
  %call.i372.4 = call zeroext i8 @mult(i8 zeroext %1113, i8 zeroext %1114) #2
  %scevgep64.4 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i372.4, i8* %scevgep64.4, align 1
  %scevgep62.5 = getelementptr i8, i8* %a, i64 5
  %1115 = load i8, i8* %scevgep62.5, align 1
  %arrayidx4.i371.5 = getelementptr inbounds i8, i8* %b, i64 13
  %1116 = load i8, i8* %arrayidx4.i371.5, align 1
  %call.i372.5 = call zeroext i8 @mult(i8 zeroext %1115, i8 zeroext %1116) #2
  %scevgep64.5 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i372.5, i8* %scevgep64.5, align 1
  %scevgep62.6 = getelementptr i8, i8* %a, i64 6
  %1117 = load i8, i8* %scevgep62.6, align 1
  %arrayidx4.i371.6 = getelementptr inbounds i8, i8* %b, i64 14
  %1118 = load i8, i8* %arrayidx4.i371.6, align 1
  %call.i372.6 = call zeroext i8 @mult(i8 zeroext %1117, i8 zeroext %1118) #2
  %scevgep64.6 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i372.6, i8* %scevgep64.6, align 1
  %scevgep62.7 = getelementptr i8, i8* %a, i64 7
  %1119 = load i8, i8* %scevgep62.7, align 1
  %arrayidx4.i371.7 = getelementptr inbounds i8, i8* %b, i64 15
  %1120 = load i8, i8* %arrayidx4.i371.7, align 1
  %call.i372.7 = call zeroext i8 @mult(i8 zeroext %1119, i8 zeroext %1120) #2
  %scevgep64.7 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i372.7, i8* %scevgep64.7, align 1
  %scevgep62.8 = getelementptr i8, i8* %a, i64 8
  %1121 = load i8, i8* %scevgep62.8, align 1
  %1122 = load i8, i8* %b, align 1
  %call.i372.8 = call zeroext i8 @mult(i8 zeroext %1121, i8 zeroext %1122) #2
  %scevgep64.8 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i372.8, i8* %scevgep64.8, align 1
  %scevgep62.9 = getelementptr i8, i8* %a, i64 9
  %1123 = load i8, i8* %scevgep62.9, align 1
  %arrayidx4.i371.9 = getelementptr inbounds i8, i8* %b, i64 1
  %1124 = load i8, i8* %arrayidx4.i371.9, align 1
  %call.i372.9 = call zeroext i8 @mult(i8 zeroext %1123, i8 zeroext %1124) #2
  %scevgep64.9 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i372.9, i8* %scevgep64.9, align 1
  %scevgep62.10 = getelementptr i8, i8* %a, i64 10
  %1125 = load i8, i8* %scevgep62.10, align 1
  %arrayidx4.i371.10 = getelementptr inbounds i8, i8* %b, i64 2
  %1126 = load i8, i8* %arrayidx4.i371.10, align 1
  %call.i372.10 = call zeroext i8 @mult(i8 zeroext %1125, i8 zeroext %1126) #2
  %scevgep64.10 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i372.10, i8* %scevgep64.10, align 1
  %scevgep62.11 = getelementptr i8, i8* %a, i64 11
  %1127 = load i8, i8* %scevgep62.11, align 1
  %arrayidx4.i371.11 = getelementptr inbounds i8, i8* %b, i64 3
  %1128 = load i8, i8* %arrayidx4.i371.11, align 1
  %call.i372.11 = call zeroext i8 @mult(i8 zeroext %1127, i8 zeroext %1128) #2
  %scevgep64.11 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  store i8 %call.i372.11, i8* %scevgep64.11, align 1
  %scevgep62.12 = getelementptr i8, i8* %a, i64 12
  %1129 = load i8, i8* %scevgep62.12, align 1
  %arrayidx4.i371.12 = getelementptr inbounds i8, i8* %b, i64 4
  %1130 = load i8, i8* %arrayidx4.i371.12, align 1
  %call.i372.12 = call zeroext i8 @mult(i8 zeroext %1129, i8 zeroext %1130) #2
  %scevgep64.12 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  store i8 %call.i372.12, i8* %scevgep64.12, align 1
  %scevgep62.13 = getelementptr i8, i8* %a, i64 13
  %1131 = load i8, i8* %scevgep62.13, align 1
  %arrayidx4.i371.13 = getelementptr inbounds i8, i8* %b, i64 5
  %1132 = load i8, i8* %arrayidx4.i371.13, align 1
  %call.i372.13 = call zeroext i8 @mult(i8 zeroext %1131, i8 zeroext %1132) #2
  %scevgep64.13 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  store i8 %call.i372.13, i8* %scevgep64.13, align 1
  %scevgep62.14 = getelementptr i8, i8* %a, i64 14
  %1133 = load i8, i8* %scevgep62.14, align 1
  %arrayidx4.i371.14 = getelementptr inbounds i8, i8* %b, i64 6
  %1134 = load i8, i8* %arrayidx4.i371.14, align 1
  %call.i372.14 = call zeroext i8 @mult(i8 zeroext %1133, i8 zeroext %1134) #2
  %scevgep64.14 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  store i8 %call.i372.14, i8* %scevgep64.14, align 1
  %scevgep62.15 = getelementptr i8, i8* %a, i64 15
  %1135 = load i8, i8* %scevgep62.15, align 1
  %arrayidx4.i371.15 = getelementptr inbounds i8, i8* %b, i64 7
  %1136 = load i8, i8* %arrayidx4.i371.15, align 1
  %call.i372.15 = call zeroext i8 @mult(i8 zeroext %1135, i8 zeroext %1136) #2
  %scevgep64.15 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  store i8 %call.i372.15, i8* %scevgep64.15, align 1
  %scevgep57 = getelementptr [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 3, i64 0
  %1137 = load i8, i8* %c, align 1
  %conv.i343 = zext i8 %1137 to i32
  %1138 = load i8, i8* %scevgep57, align 1
  %conv5.i348 = zext i8 %1138 to i32
  %xor.i349 = xor i32 %conv.i343, %conv5.i348
  %conv6.i350 = trunc i32 %xor.i349 to i8
  store i8 %conv6.i350, i8* %c, align 1
  %scevgep55.1 = getelementptr i8, i8* %c, i64 1
  %1139 = load i8, i8* %scevgep55.1, align 1
  %conv.i343.1 = zext i8 %1139 to i32
  %scevgep58.1 = getelementptr i8, i8* %scevgep57, i64 1
  %1140 = load i8, i8* %scevgep58.1, align 1
  %conv5.i348.1 = zext i8 %1140 to i32
  %xor.i349.1 = xor i32 %conv.i343.1, %conv5.i348.1
  %conv6.i350.1 = trunc i32 %xor.i349.1 to i8
  %scevgep56.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i350.1, i8* %scevgep56.1, align 1
  %scevgep55.2 = getelementptr i8, i8* %c, i64 2
  %1141 = load i8, i8* %scevgep55.2, align 1
  %conv.i343.2 = zext i8 %1141 to i32
  %scevgep58.2 = getelementptr i8, i8* %scevgep57, i64 2
  %1142 = load i8, i8* %scevgep58.2, align 1
  %conv5.i348.2 = zext i8 %1142 to i32
  %xor.i349.2 = xor i32 %conv.i343.2, %conv5.i348.2
  %conv6.i350.2 = trunc i32 %xor.i349.2 to i8
  %scevgep56.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i350.2, i8* %scevgep56.2, align 1
  %scevgep55.3 = getelementptr i8, i8* %c, i64 3
  %1143 = load i8, i8* %scevgep55.3, align 1
  %conv.i343.3 = zext i8 %1143 to i32
  %scevgep58.3 = getelementptr i8, i8* %scevgep57, i64 3
  %1144 = load i8, i8* %scevgep58.3, align 1
  %conv5.i348.3 = zext i8 %1144 to i32
  %xor.i349.3 = xor i32 %conv.i343.3, %conv5.i348.3
  %conv6.i350.3 = trunc i32 %xor.i349.3 to i8
  %scevgep56.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i350.3, i8* %scevgep56.3, align 1
  %scevgep55.4 = getelementptr i8, i8* %c, i64 4
  %1145 = load i8, i8* %scevgep55.4, align 1
  %conv.i343.4 = zext i8 %1145 to i32
  %scevgep58.4 = getelementptr i8, i8* %scevgep57, i64 4
  %1146 = load i8, i8* %scevgep58.4, align 1
  %conv5.i348.4 = zext i8 %1146 to i32
  %xor.i349.4 = xor i32 %conv.i343.4, %conv5.i348.4
  %conv6.i350.4 = trunc i32 %xor.i349.4 to i8
  %scevgep56.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i350.4, i8* %scevgep56.4, align 1
  %scevgep55.5 = getelementptr i8, i8* %c, i64 5
  %1147 = load i8, i8* %scevgep55.5, align 1
  %conv.i343.5 = zext i8 %1147 to i32
  %scevgep58.5 = getelementptr i8, i8* %scevgep57, i64 5
  %1148 = load i8, i8* %scevgep58.5, align 1
  %conv5.i348.5 = zext i8 %1148 to i32
  %xor.i349.5 = xor i32 %conv.i343.5, %conv5.i348.5
  %conv6.i350.5 = trunc i32 %xor.i349.5 to i8
  %scevgep56.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i350.5, i8* %scevgep56.5, align 1
  %scevgep55.6 = getelementptr i8, i8* %c, i64 6
  %1149 = load i8, i8* %scevgep55.6, align 1
  %conv.i343.6 = zext i8 %1149 to i32
  %scevgep58.6 = getelementptr i8, i8* %scevgep57, i64 6
  %1150 = load i8, i8* %scevgep58.6, align 1
  %conv5.i348.6 = zext i8 %1150 to i32
  %xor.i349.6 = xor i32 %conv.i343.6, %conv5.i348.6
  %conv6.i350.6 = trunc i32 %xor.i349.6 to i8
  %scevgep56.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i350.6, i8* %scevgep56.6, align 1
  %scevgep55.7 = getelementptr i8, i8* %c, i64 7
  %1151 = load i8, i8* %scevgep55.7, align 1
  %conv.i343.7 = zext i8 %1151 to i32
  %scevgep58.7 = getelementptr i8, i8* %scevgep57, i64 7
  %1152 = load i8, i8* %scevgep58.7, align 1
  %conv5.i348.7 = zext i8 %1152 to i32
  %xor.i349.7 = xor i32 %conv.i343.7, %conv5.i348.7
  %conv6.i350.7 = trunc i32 %xor.i349.7 to i8
  %scevgep56.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i350.7, i8* %scevgep56.7, align 1
  %scevgep55.8 = getelementptr i8, i8* %c, i64 8
  %1153 = load i8, i8* %scevgep55.8, align 1
  %conv.i343.8 = zext i8 %1153 to i32
  %scevgep58.8 = getelementptr i8, i8* %scevgep57, i64 8
  %1154 = load i8, i8* %scevgep58.8, align 1
  %conv5.i348.8 = zext i8 %1154 to i32
  %xor.i349.8 = xor i32 %conv.i343.8, %conv5.i348.8
  %conv6.i350.8 = trunc i32 %xor.i349.8 to i8
  %scevgep56.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i350.8, i8* %scevgep56.8, align 1
  %scevgep55.9 = getelementptr i8, i8* %c, i64 9
  %1155 = load i8, i8* %scevgep55.9, align 1
  %conv.i343.9 = zext i8 %1155 to i32
  %scevgep58.9 = getelementptr i8, i8* %scevgep57, i64 9
  %1156 = load i8, i8* %scevgep58.9, align 1
  %conv5.i348.9 = zext i8 %1156 to i32
  %xor.i349.9 = xor i32 %conv.i343.9, %conv5.i348.9
  %conv6.i350.9 = trunc i32 %xor.i349.9 to i8
  %scevgep56.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i350.9, i8* %scevgep56.9, align 1
  %scevgep55.10 = getelementptr i8, i8* %c, i64 10
  %1157 = load i8, i8* %scevgep55.10, align 1
  %conv.i343.10 = zext i8 %1157 to i32
  %scevgep58.10 = getelementptr i8, i8* %scevgep57, i64 10
  %1158 = load i8, i8* %scevgep58.10, align 1
  %conv5.i348.10 = zext i8 %1158 to i32
  %xor.i349.10 = xor i32 %conv.i343.10, %conv5.i348.10
  %conv6.i350.10 = trunc i32 %xor.i349.10 to i8
  %scevgep56.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i350.10, i8* %scevgep56.10, align 1
  %scevgep55.11 = getelementptr i8, i8* %c, i64 11
  %1159 = load i8, i8* %scevgep55.11, align 1
  %conv.i343.11 = zext i8 %1159 to i32
  %scevgep58.11 = getelementptr i8, i8* %scevgep57, i64 11
  %1160 = load i8, i8* %scevgep58.11, align 1
  %conv5.i348.11 = zext i8 %1160 to i32
  %xor.i349.11 = xor i32 %conv.i343.11, %conv5.i348.11
  %conv6.i350.11 = trunc i32 %xor.i349.11 to i8
  %scevgep56.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i350.11, i8* %scevgep56.11, align 1
  %scevgep55.12 = getelementptr i8, i8* %c, i64 12
  %1161 = load i8, i8* %scevgep55.12, align 1
  %conv.i343.12 = zext i8 %1161 to i32
  %scevgep58.12 = getelementptr i8, i8* %scevgep57, i64 12
  %1162 = load i8, i8* %scevgep58.12, align 1
  %conv5.i348.12 = zext i8 %1162 to i32
  %xor.i349.12 = xor i32 %conv.i343.12, %conv5.i348.12
  %conv6.i350.12 = trunc i32 %xor.i349.12 to i8
  %scevgep56.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i350.12, i8* %scevgep56.12, align 1
  %scevgep55.13 = getelementptr i8, i8* %c, i64 13
  %1163 = load i8, i8* %scevgep55.13, align 1
  %conv.i343.13 = zext i8 %1163 to i32
  %scevgep58.13 = getelementptr i8, i8* %scevgep57, i64 13
  %1164 = load i8, i8* %scevgep58.13, align 1
  %conv5.i348.13 = zext i8 %1164 to i32
  %xor.i349.13 = xor i32 %conv.i343.13, %conv5.i348.13
  %conv6.i350.13 = trunc i32 %xor.i349.13 to i8
  %scevgep56.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i350.13, i8* %scevgep56.13, align 1
  %scevgep55.14 = getelementptr i8, i8* %c, i64 14
  %1165 = load i8, i8* %scevgep55.14, align 1
  %conv.i343.14 = zext i8 %1165 to i32
  %scevgep58.14 = getelementptr i8, i8* %scevgep57, i64 14
  %1166 = load i8, i8* %scevgep58.14, align 1
  %conv5.i348.14 = zext i8 %1166 to i32
  %xor.i349.14 = xor i32 %conv.i343.14, %conv5.i348.14
  %conv6.i350.14 = trunc i32 %xor.i349.14 to i8
  %scevgep56.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i350.14, i8* %scevgep56.14, align 1
  %scevgep55.15 = getelementptr i8, i8* %c, i64 15
  %1167 = load i8, i8* %scevgep55.15, align 1
  %conv.i343.15 = zext i8 %1167 to i32
  %scevgep58.15 = getelementptr i8, i8* %scevgep57, i64 15
  %1168 = load i8, i8* %scevgep58.15, align 1
  %conv5.i348.15 = zext i8 %1168 to i32
  %xor.i349.15 = xor i32 %conv.i343.15, %conv5.i348.15
  %conv6.i350.15 = trunc i32 %xor.i349.15 to i8
  %scevgep56.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i350.15, i8* %scevgep56.15, align 1
  %1169 = load i8, i8* %c, align 1
  %conv.i318 = zext i8 %1169 to i32
  %scevgep51 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  %1170 = load i8, i8* %scevgep51, align 1
  %conv5.i323 = zext i8 %1170 to i32
  %xor.i324 = xor i32 %conv.i318, %conv5.i323
  %conv6.i325 = trunc i32 %xor.i324 to i8
  store i8 %conv6.i325, i8* %c, align 1
  %scevgep49.1 = getelementptr i8, i8* %c, i64 1
  %1171 = load i8, i8* %scevgep49.1, align 1
  %conv.i318.1 = zext i8 %1171 to i32
  %scevgep51.1 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 1
  %1172 = load i8, i8* %scevgep51.1, align 1
  %conv5.i323.1 = zext i8 %1172 to i32
  %xor.i324.1 = xor i32 %conv.i318.1, %conv5.i323.1
  %conv6.i325.1 = trunc i32 %xor.i324.1 to i8
  %scevgep50.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i325.1, i8* %scevgep50.1, align 1
  %scevgep49.2 = getelementptr i8, i8* %c, i64 2
  %1173 = load i8, i8* %scevgep49.2, align 1
  %conv.i318.2 = zext i8 %1173 to i32
  %scevgep51.2 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 2
  %1174 = load i8, i8* %scevgep51.2, align 1
  %conv5.i323.2 = zext i8 %1174 to i32
  %xor.i324.2 = xor i32 %conv.i318.2, %conv5.i323.2
  %conv6.i325.2 = trunc i32 %xor.i324.2 to i8
  %scevgep50.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i325.2, i8* %scevgep50.2, align 1
  %scevgep49.3 = getelementptr i8, i8* %c, i64 3
  %1175 = load i8, i8* %scevgep49.3, align 1
  %conv.i318.3 = zext i8 %1175 to i32
  %scevgep51.3 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 3
  %1176 = load i8, i8* %scevgep51.3, align 1
  %conv5.i323.3 = zext i8 %1176 to i32
  %xor.i324.3 = xor i32 %conv.i318.3, %conv5.i323.3
  %conv6.i325.3 = trunc i32 %xor.i324.3 to i8
  %scevgep50.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i325.3, i8* %scevgep50.3, align 1
  %scevgep49.4 = getelementptr i8, i8* %c, i64 4
  %1177 = load i8, i8* %scevgep49.4, align 1
  %conv.i318.4 = zext i8 %1177 to i32
  %scevgep51.4 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 4
  %1178 = load i8, i8* %scevgep51.4, align 1
  %conv5.i323.4 = zext i8 %1178 to i32
  %xor.i324.4 = xor i32 %conv.i318.4, %conv5.i323.4
  %conv6.i325.4 = trunc i32 %xor.i324.4 to i8
  %scevgep50.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i325.4, i8* %scevgep50.4, align 1
  %scevgep49.5 = getelementptr i8, i8* %c, i64 5
  %1179 = load i8, i8* %scevgep49.5, align 1
  %conv.i318.5 = zext i8 %1179 to i32
  %scevgep51.5 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 5
  %1180 = load i8, i8* %scevgep51.5, align 1
  %conv5.i323.5 = zext i8 %1180 to i32
  %xor.i324.5 = xor i32 %conv.i318.5, %conv5.i323.5
  %conv6.i325.5 = trunc i32 %xor.i324.5 to i8
  %scevgep50.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i325.5, i8* %scevgep50.5, align 1
  %scevgep49.6 = getelementptr i8, i8* %c, i64 6
  %1181 = load i8, i8* %scevgep49.6, align 1
  %conv.i318.6 = zext i8 %1181 to i32
  %scevgep51.6 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 6
  %1182 = load i8, i8* %scevgep51.6, align 1
  %conv5.i323.6 = zext i8 %1182 to i32
  %xor.i324.6 = xor i32 %conv.i318.6, %conv5.i323.6
  %conv6.i325.6 = trunc i32 %xor.i324.6 to i8
  %scevgep50.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i325.6, i8* %scevgep50.6, align 1
  %scevgep49.7 = getelementptr i8, i8* %c, i64 7
  %1183 = load i8, i8* %scevgep49.7, align 1
  %conv.i318.7 = zext i8 %1183 to i32
  %scevgep51.7 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 7
  %1184 = load i8, i8* %scevgep51.7, align 1
  %conv5.i323.7 = zext i8 %1184 to i32
  %xor.i324.7 = xor i32 %conv.i318.7, %conv5.i323.7
  %conv6.i325.7 = trunc i32 %xor.i324.7 to i8
  %scevgep50.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i325.7, i8* %scevgep50.7, align 1
  %scevgep49.8 = getelementptr i8, i8* %c, i64 8
  %1185 = load i8, i8* %scevgep49.8, align 1
  %conv.i318.8 = zext i8 %1185 to i32
  %scevgep51.8 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 8
  %1186 = load i8, i8* %scevgep51.8, align 1
  %conv5.i323.8 = zext i8 %1186 to i32
  %xor.i324.8 = xor i32 %conv.i318.8, %conv5.i323.8
  %conv6.i325.8 = trunc i32 %xor.i324.8 to i8
  %scevgep50.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i325.8, i8* %scevgep50.8, align 1
  %scevgep49.9 = getelementptr i8, i8* %c, i64 9
  %1187 = load i8, i8* %scevgep49.9, align 1
  %conv.i318.9 = zext i8 %1187 to i32
  %scevgep51.9 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 9
  %1188 = load i8, i8* %scevgep51.9, align 1
  %conv5.i323.9 = zext i8 %1188 to i32
  %xor.i324.9 = xor i32 %conv.i318.9, %conv5.i323.9
  %conv6.i325.9 = trunc i32 %xor.i324.9 to i8
  %scevgep50.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i325.9, i8* %scevgep50.9, align 1
  %scevgep49.10 = getelementptr i8, i8* %c, i64 10
  %1189 = load i8, i8* %scevgep49.10, align 1
  %conv.i318.10 = zext i8 %1189 to i32
  %scevgep51.10 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 10
  %1190 = load i8, i8* %scevgep51.10, align 1
  %conv5.i323.10 = zext i8 %1190 to i32
  %xor.i324.10 = xor i32 %conv.i318.10, %conv5.i323.10
  %conv6.i325.10 = trunc i32 %xor.i324.10 to i8
  %scevgep50.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i325.10, i8* %scevgep50.10, align 1
  %scevgep49.11 = getelementptr i8, i8* %c, i64 11
  %1191 = load i8, i8* %scevgep49.11, align 1
  %conv.i318.11 = zext i8 %1191 to i32
  %scevgep51.11 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 11
  %1192 = load i8, i8* %scevgep51.11, align 1
  %conv5.i323.11 = zext i8 %1192 to i32
  %xor.i324.11 = xor i32 %conv.i318.11, %conv5.i323.11
  %conv6.i325.11 = trunc i32 %xor.i324.11 to i8
  %scevgep50.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i325.11, i8* %scevgep50.11, align 1
  %scevgep49.12 = getelementptr i8, i8* %c, i64 12
  %1193 = load i8, i8* %scevgep49.12, align 1
  %conv.i318.12 = zext i8 %1193 to i32
  %scevgep51.12 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 12
  %1194 = load i8, i8* %scevgep51.12, align 1
  %conv5.i323.12 = zext i8 %1194 to i32
  %xor.i324.12 = xor i32 %conv.i318.12, %conv5.i323.12
  %conv6.i325.12 = trunc i32 %xor.i324.12 to i8
  %scevgep50.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i325.12, i8* %scevgep50.12, align 1
  %scevgep49.13 = getelementptr i8, i8* %c, i64 13
  %1195 = load i8, i8* %scevgep49.13, align 1
  %conv.i318.13 = zext i8 %1195 to i32
  %scevgep51.13 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 13
  %1196 = load i8, i8* %scevgep51.13, align 1
  %conv5.i323.13 = zext i8 %1196 to i32
  %xor.i324.13 = xor i32 %conv.i318.13, %conv5.i323.13
  %conv6.i325.13 = trunc i32 %xor.i324.13 to i8
  %scevgep50.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i325.13, i8* %scevgep50.13, align 1
  %scevgep49.14 = getelementptr i8, i8* %c, i64 14
  %1197 = load i8, i8* %scevgep49.14, align 1
  %conv.i318.14 = zext i8 %1197 to i32
  %scevgep51.14 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 14
  %1198 = load i8, i8* %scevgep51.14, align 1
  %conv5.i323.14 = zext i8 %1198 to i32
  %xor.i324.14 = xor i32 %conv.i318.14, %conv5.i323.14
  %conv6.i325.14 = trunc i32 %xor.i324.14 to i8
  %scevgep50.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i325.14, i8* %scevgep50.14, align 1
  %scevgep49.15 = getelementptr i8, i8* %c, i64 15
  %1199 = load i8, i8* %scevgep49.15, align 1
  %conv.i318.15 = zext i8 %1199 to i32
  %scevgep51.15 = getelementptr [16 x i8], [16 x i8]* %ab1, i64 0, i64 15
  %1200 = load i8, i8* %scevgep51.15, align 1
  %conv5.i323.15 = zext i8 %1200 to i32
  %xor.i324.15 = xor i32 %conv.i318.15, %conv5.i323.15
  %conv6.i325.15 = trunc i32 %xor.i324.15 to i8
  %scevgep50.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i325.15, i8* %scevgep50.15, align 1
  %1201 = load i8, i8* %c, align 1
  %conv.i293 = zext i8 %1201 to i32
  %scevgep45 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  %1202 = load i8, i8* %scevgep45, align 1
  %conv5.i298 = zext i8 %1202 to i32
  %xor.i299 = xor i32 %conv.i293, %conv5.i298
  %conv6.i300 = trunc i32 %xor.i299 to i8
  store i8 %conv6.i300, i8* %c, align 1
  %scevgep43.1 = getelementptr i8, i8* %c, i64 1
  %1203 = load i8, i8* %scevgep43.1, align 1
  %conv.i293.1 = zext i8 %1203 to i32
  %scevgep45.1 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 1
  %1204 = load i8, i8* %scevgep45.1, align 1
  %conv5.i298.1 = zext i8 %1204 to i32
  %xor.i299.1 = xor i32 %conv.i293.1, %conv5.i298.1
  %conv6.i300.1 = trunc i32 %xor.i299.1 to i8
  %scevgep44.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i300.1, i8* %scevgep44.1, align 1
  %scevgep43.2 = getelementptr i8, i8* %c, i64 2
  %1205 = load i8, i8* %scevgep43.2, align 1
  %conv.i293.2 = zext i8 %1205 to i32
  %scevgep45.2 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 2
  %1206 = load i8, i8* %scevgep45.2, align 1
  %conv5.i298.2 = zext i8 %1206 to i32
  %xor.i299.2 = xor i32 %conv.i293.2, %conv5.i298.2
  %conv6.i300.2 = trunc i32 %xor.i299.2 to i8
  %scevgep44.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i300.2, i8* %scevgep44.2, align 1
  %scevgep43.3 = getelementptr i8, i8* %c, i64 3
  %1207 = load i8, i8* %scevgep43.3, align 1
  %conv.i293.3 = zext i8 %1207 to i32
  %scevgep45.3 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 3
  %1208 = load i8, i8* %scevgep45.3, align 1
  %conv5.i298.3 = zext i8 %1208 to i32
  %xor.i299.3 = xor i32 %conv.i293.3, %conv5.i298.3
  %conv6.i300.3 = trunc i32 %xor.i299.3 to i8
  %scevgep44.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i300.3, i8* %scevgep44.3, align 1
  %scevgep43.4 = getelementptr i8, i8* %c, i64 4
  %1209 = load i8, i8* %scevgep43.4, align 1
  %conv.i293.4 = zext i8 %1209 to i32
  %scevgep45.4 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 4
  %1210 = load i8, i8* %scevgep45.4, align 1
  %conv5.i298.4 = zext i8 %1210 to i32
  %xor.i299.4 = xor i32 %conv.i293.4, %conv5.i298.4
  %conv6.i300.4 = trunc i32 %xor.i299.4 to i8
  %scevgep44.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i300.4, i8* %scevgep44.4, align 1
  %scevgep43.5 = getelementptr i8, i8* %c, i64 5
  %1211 = load i8, i8* %scevgep43.5, align 1
  %conv.i293.5 = zext i8 %1211 to i32
  %scevgep45.5 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 5
  %1212 = load i8, i8* %scevgep45.5, align 1
  %conv5.i298.5 = zext i8 %1212 to i32
  %xor.i299.5 = xor i32 %conv.i293.5, %conv5.i298.5
  %conv6.i300.5 = trunc i32 %xor.i299.5 to i8
  %scevgep44.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i300.5, i8* %scevgep44.5, align 1
  %scevgep43.6 = getelementptr i8, i8* %c, i64 6
  %1213 = load i8, i8* %scevgep43.6, align 1
  %conv.i293.6 = zext i8 %1213 to i32
  %scevgep45.6 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 6
  %1214 = load i8, i8* %scevgep45.6, align 1
  %conv5.i298.6 = zext i8 %1214 to i32
  %xor.i299.6 = xor i32 %conv.i293.6, %conv5.i298.6
  %conv6.i300.6 = trunc i32 %xor.i299.6 to i8
  %scevgep44.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i300.6, i8* %scevgep44.6, align 1
  %scevgep43.7 = getelementptr i8, i8* %c, i64 7
  %1215 = load i8, i8* %scevgep43.7, align 1
  %conv.i293.7 = zext i8 %1215 to i32
  %scevgep45.7 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 7
  %1216 = load i8, i8* %scevgep45.7, align 1
  %conv5.i298.7 = zext i8 %1216 to i32
  %xor.i299.7 = xor i32 %conv.i293.7, %conv5.i298.7
  %conv6.i300.7 = trunc i32 %xor.i299.7 to i8
  %scevgep44.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i300.7, i8* %scevgep44.7, align 1
  %scevgep43.8 = getelementptr i8, i8* %c, i64 8
  %1217 = load i8, i8* %scevgep43.8, align 1
  %conv.i293.8 = zext i8 %1217 to i32
  %scevgep45.8 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 8
  %1218 = load i8, i8* %scevgep45.8, align 1
  %conv5.i298.8 = zext i8 %1218 to i32
  %xor.i299.8 = xor i32 %conv.i293.8, %conv5.i298.8
  %conv6.i300.8 = trunc i32 %xor.i299.8 to i8
  %scevgep44.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i300.8, i8* %scevgep44.8, align 1
  %scevgep43.9 = getelementptr i8, i8* %c, i64 9
  %1219 = load i8, i8* %scevgep43.9, align 1
  %conv.i293.9 = zext i8 %1219 to i32
  %scevgep45.9 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 9
  %1220 = load i8, i8* %scevgep45.9, align 1
  %conv5.i298.9 = zext i8 %1220 to i32
  %xor.i299.9 = xor i32 %conv.i293.9, %conv5.i298.9
  %conv6.i300.9 = trunc i32 %xor.i299.9 to i8
  %scevgep44.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i300.9, i8* %scevgep44.9, align 1
  %scevgep43.10 = getelementptr i8, i8* %c, i64 10
  %1221 = load i8, i8* %scevgep43.10, align 1
  %conv.i293.10 = zext i8 %1221 to i32
  %scevgep45.10 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 10
  %1222 = load i8, i8* %scevgep45.10, align 1
  %conv5.i298.10 = zext i8 %1222 to i32
  %xor.i299.10 = xor i32 %conv.i293.10, %conv5.i298.10
  %conv6.i300.10 = trunc i32 %xor.i299.10 to i8
  %scevgep44.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i300.10, i8* %scevgep44.10, align 1
  %scevgep43.11 = getelementptr i8, i8* %c, i64 11
  %1223 = load i8, i8* %scevgep43.11, align 1
  %conv.i293.11 = zext i8 %1223 to i32
  %scevgep45.11 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 11
  %1224 = load i8, i8* %scevgep45.11, align 1
  %conv5.i298.11 = zext i8 %1224 to i32
  %xor.i299.11 = xor i32 %conv.i293.11, %conv5.i298.11
  %conv6.i300.11 = trunc i32 %xor.i299.11 to i8
  %scevgep44.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i300.11, i8* %scevgep44.11, align 1
  %scevgep43.12 = getelementptr i8, i8* %c, i64 12
  %1225 = load i8, i8* %scevgep43.12, align 1
  %conv.i293.12 = zext i8 %1225 to i32
  %scevgep45.12 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 12
  %1226 = load i8, i8* %scevgep45.12, align 1
  %conv5.i298.12 = zext i8 %1226 to i32
  %xor.i299.12 = xor i32 %conv.i293.12, %conv5.i298.12
  %conv6.i300.12 = trunc i32 %xor.i299.12 to i8
  %scevgep44.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i300.12, i8* %scevgep44.12, align 1
  %scevgep43.13 = getelementptr i8, i8* %c, i64 13
  %1227 = load i8, i8* %scevgep43.13, align 1
  %conv.i293.13 = zext i8 %1227 to i32
  %scevgep45.13 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 13
  %1228 = load i8, i8* %scevgep45.13, align 1
  %conv5.i298.13 = zext i8 %1228 to i32
  %xor.i299.13 = xor i32 %conv.i293.13, %conv5.i298.13
  %conv6.i300.13 = trunc i32 %xor.i299.13 to i8
  %scevgep44.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i300.13, i8* %scevgep44.13, align 1
  %scevgep43.14 = getelementptr i8, i8* %c, i64 14
  %1229 = load i8, i8* %scevgep43.14, align 1
  %conv.i293.14 = zext i8 %1229 to i32
  %scevgep45.14 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 14
  %1230 = load i8, i8* %scevgep45.14, align 1
  %conv5.i298.14 = zext i8 %1230 to i32
  %xor.i299.14 = xor i32 %conv.i293.14, %conv5.i298.14
  %conv6.i300.14 = trunc i32 %xor.i299.14 to i8
  %scevgep44.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i300.14, i8* %scevgep44.14, align 1
  %scevgep43.15 = getelementptr i8, i8* %c, i64 15
  %1231 = load i8, i8* %scevgep43.15, align 1
  %conv.i293.15 = zext i8 %1231 to i32
  %scevgep45.15 = getelementptr [16 x i8], [16 x i8]* %a1b, i64 0, i64 15
  %1232 = load i8, i8* %scevgep45.15, align 1
  %conv5.i298.15 = zext i8 %1232 to i32
  %xor.i299.15 = xor i32 %conv.i293.15, %conv5.i298.15
  %conv6.i300.15 = trunc i32 %xor.i299.15 to i8
  %scevgep44.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i300.15, i8* %scevgep44.15, align 1
  %arrayidx56 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 3
  %arraydecay57 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx56, i64 0, i64 0
  %1233 = load i8, i8* %c, align 1
  %conv.i268 = zext i8 %1233 to i32
  %arrayidx4.i272 = getelementptr inbounds i8, i8* %arraydecay57, i64 1
  %1234 = load i8, i8* %arrayidx4.i272, align 1
  %conv5.i273 = zext i8 %1234 to i32
  %xor.i274 = xor i32 %conv.i268, %conv5.i273
  %conv6.i275 = trunc i32 %xor.i274 to i8
  store i8 %conv6.i275, i8* %c, align 1
  %scevgep37.1 = getelementptr i8, i8* %c, i64 1
  %1235 = load i8, i8* %scevgep37.1, align 1
  %conv.i268.1 = zext i8 %1235 to i32
  %arrayidx4.i272.1 = getelementptr inbounds i8, i8* %arraydecay57, i64 2
  %1236 = load i8, i8* %arrayidx4.i272.1, align 1
  %conv5.i273.1 = zext i8 %1236 to i32
  %xor.i274.1 = xor i32 %conv.i268.1, %conv5.i273.1
  %conv6.i275.1 = trunc i32 %xor.i274.1 to i8
  %scevgep38.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i275.1, i8* %scevgep38.1, align 1
  %scevgep37.2 = getelementptr i8, i8* %c, i64 2
  %1237 = load i8, i8* %scevgep37.2, align 1
  %conv.i268.2 = zext i8 %1237 to i32
  %arrayidx4.i272.2 = getelementptr inbounds i8, i8* %arraydecay57, i64 3
  %1238 = load i8, i8* %arrayidx4.i272.2, align 1
  %conv5.i273.2 = zext i8 %1238 to i32
  %xor.i274.2 = xor i32 %conv.i268.2, %conv5.i273.2
  %conv6.i275.2 = trunc i32 %xor.i274.2 to i8
  %scevgep38.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i275.2, i8* %scevgep38.2, align 1
  %scevgep37.3 = getelementptr i8, i8* %c, i64 3
  %1239 = load i8, i8* %scevgep37.3, align 1
  %conv.i268.3 = zext i8 %1239 to i32
  %arrayidx4.i272.3 = getelementptr inbounds i8, i8* %arraydecay57, i64 4
  %1240 = load i8, i8* %arrayidx4.i272.3, align 1
  %conv5.i273.3 = zext i8 %1240 to i32
  %xor.i274.3 = xor i32 %conv.i268.3, %conv5.i273.3
  %conv6.i275.3 = trunc i32 %xor.i274.3 to i8
  %scevgep38.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i275.3, i8* %scevgep38.3, align 1
  %scevgep37.4 = getelementptr i8, i8* %c, i64 4
  %1241 = load i8, i8* %scevgep37.4, align 1
  %conv.i268.4 = zext i8 %1241 to i32
  %arrayidx4.i272.4 = getelementptr inbounds i8, i8* %arraydecay57, i64 5
  %1242 = load i8, i8* %arrayidx4.i272.4, align 1
  %conv5.i273.4 = zext i8 %1242 to i32
  %xor.i274.4 = xor i32 %conv.i268.4, %conv5.i273.4
  %conv6.i275.4 = trunc i32 %xor.i274.4 to i8
  %scevgep38.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i275.4, i8* %scevgep38.4, align 1
  %scevgep37.5 = getelementptr i8, i8* %c, i64 5
  %1243 = load i8, i8* %scevgep37.5, align 1
  %conv.i268.5 = zext i8 %1243 to i32
  %arrayidx4.i272.5 = getelementptr inbounds i8, i8* %arraydecay57, i64 6
  %1244 = load i8, i8* %arrayidx4.i272.5, align 1
  %conv5.i273.5 = zext i8 %1244 to i32
  %xor.i274.5 = xor i32 %conv.i268.5, %conv5.i273.5
  %conv6.i275.5 = trunc i32 %xor.i274.5 to i8
  %scevgep38.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i275.5, i8* %scevgep38.5, align 1
  %scevgep37.6 = getelementptr i8, i8* %c, i64 6
  %1245 = load i8, i8* %scevgep37.6, align 1
  %conv.i268.6 = zext i8 %1245 to i32
  %arrayidx4.i272.6 = getelementptr inbounds i8, i8* %arraydecay57, i64 7
  %1246 = load i8, i8* %arrayidx4.i272.6, align 1
  %conv5.i273.6 = zext i8 %1246 to i32
  %xor.i274.6 = xor i32 %conv.i268.6, %conv5.i273.6
  %conv6.i275.6 = trunc i32 %xor.i274.6 to i8
  %scevgep38.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i275.6, i8* %scevgep38.6, align 1
  %scevgep37.7 = getelementptr i8, i8* %c, i64 7
  %1247 = load i8, i8* %scevgep37.7, align 1
  %conv.i268.7 = zext i8 %1247 to i32
  %arrayidx4.i272.7 = getelementptr inbounds i8, i8* %arraydecay57, i64 8
  %1248 = load i8, i8* %arrayidx4.i272.7, align 1
  %conv5.i273.7 = zext i8 %1248 to i32
  %xor.i274.7 = xor i32 %conv.i268.7, %conv5.i273.7
  %conv6.i275.7 = trunc i32 %xor.i274.7 to i8
  %scevgep38.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i275.7, i8* %scevgep38.7, align 1
  %scevgep37.8 = getelementptr i8, i8* %c, i64 8
  %1249 = load i8, i8* %scevgep37.8, align 1
  %conv.i268.8 = zext i8 %1249 to i32
  %arrayidx4.i272.8 = getelementptr inbounds i8, i8* %arraydecay57, i64 9
  %1250 = load i8, i8* %arrayidx4.i272.8, align 1
  %conv5.i273.8 = zext i8 %1250 to i32
  %xor.i274.8 = xor i32 %conv.i268.8, %conv5.i273.8
  %conv6.i275.8 = trunc i32 %xor.i274.8 to i8
  %scevgep38.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i275.8, i8* %scevgep38.8, align 1
  %scevgep37.9 = getelementptr i8, i8* %c, i64 9
  %1251 = load i8, i8* %scevgep37.9, align 1
  %conv.i268.9 = zext i8 %1251 to i32
  %arrayidx4.i272.9 = getelementptr inbounds i8, i8* %arraydecay57, i64 10
  %1252 = load i8, i8* %arrayidx4.i272.9, align 1
  %conv5.i273.9 = zext i8 %1252 to i32
  %xor.i274.9 = xor i32 %conv.i268.9, %conv5.i273.9
  %conv6.i275.9 = trunc i32 %xor.i274.9 to i8
  %scevgep38.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i275.9, i8* %scevgep38.9, align 1
  %scevgep37.10 = getelementptr i8, i8* %c, i64 10
  %1253 = load i8, i8* %scevgep37.10, align 1
  %conv.i268.10 = zext i8 %1253 to i32
  %arrayidx4.i272.10 = getelementptr inbounds i8, i8* %arraydecay57, i64 11
  %1254 = load i8, i8* %arrayidx4.i272.10, align 1
  %conv5.i273.10 = zext i8 %1254 to i32
  %xor.i274.10 = xor i32 %conv.i268.10, %conv5.i273.10
  %conv6.i275.10 = trunc i32 %xor.i274.10 to i8
  %scevgep38.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i275.10, i8* %scevgep38.10, align 1
  %scevgep37.11 = getelementptr i8, i8* %c, i64 11
  %1255 = load i8, i8* %scevgep37.11, align 1
  %conv.i268.11 = zext i8 %1255 to i32
  %arrayidx4.i272.11 = getelementptr inbounds i8, i8* %arraydecay57, i64 12
  %1256 = load i8, i8* %arrayidx4.i272.11, align 1
  %conv5.i273.11 = zext i8 %1256 to i32
  %xor.i274.11 = xor i32 %conv.i268.11, %conv5.i273.11
  %conv6.i275.11 = trunc i32 %xor.i274.11 to i8
  %scevgep38.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i275.11, i8* %scevgep38.11, align 1
  %scevgep37.12 = getelementptr i8, i8* %c, i64 12
  %1257 = load i8, i8* %scevgep37.12, align 1
  %conv.i268.12 = zext i8 %1257 to i32
  %arrayidx4.i272.12 = getelementptr inbounds i8, i8* %arraydecay57, i64 13
  %1258 = load i8, i8* %arrayidx4.i272.12, align 1
  %conv5.i273.12 = zext i8 %1258 to i32
  %xor.i274.12 = xor i32 %conv.i268.12, %conv5.i273.12
  %conv6.i275.12 = trunc i32 %xor.i274.12 to i8
  %scevgep38.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i275.12, i8* %scevgep38.12, align 1
  %scevgep37.13 = getelementptr i8, i8* %c, i64 13
  %1259 = load i8, i8* %scevgep37.13, align 1
  %conv.i268.13 = zext i8 %1259 to i32
  %arrayidx4.i272.13 = getelementptr inbounds i8, i8* %arraydecay57, i64 14
  %1260 = load i8, i8* %arrayidx4.i272.13, align 1
  %conv5.i273.13 = zext i8 %1260 to i32
  %xor.i274.13 = xor i32 %conv.i268.13, %conv5.i273.13
  %conv6.i275.13 = trunc i32 %xor.i274.13 to i8
  %scevgep38.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i275.13, i8* %scevgep38.13, align 1
  %scevgep37.14 = getelementptr i8, i8* %c, i64 14
  %1261 = load i8, i8* %scevgep37.14, align 1
  %conv.i268.14 = zext i8 %1261 to i32
  %arrayidx4.i272.14 = getelementptr inbounds i8, i8* %arraydecay57, i64 15
  %1262 = load i8, i8* %arrayidx4.i272.14, align 1
  %conv5.i273.14 = zext i8 %1262 to i32
  %xor.i274.14 = xor i32 %conv.i268.14, %conv5.i273.14
  %conv6.i275.14 = trunc i32 %xor.i274.14 to i8
  %scevgep38.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i275.14, i8* %scevgep38.14, align 1
  %scevgep37.15 = getelementptr i8, i8* %c, i64 15
  %1263 = load i8, i8* %scevgep37.15, align 1
  %conv.i268.15 = zext i8 %1263 to i32
  %1264 = load i8, i8* %arraydecay57, align 1
  %conv5.i273.15 = zext i8 %1264 to i32
  %xor.i274.15 = xor i32 %conv.i268.15, %conv5.i273.15
  %conv6.i275.15 = trunc i32 %xor.i274.15 to i8
  %scevgep38.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i275.15, i8* %scevgep38.15, align 1
  %1265 = load i8, i8* %c, align 1
  %conv.i243 = zext i8 %1265 to i32
  %scevgep33 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  %1266 = load i8, i8* %scevgep33, align 1
  %conv5.i248 = zext i8 %1266 to i32
  %xor.i249 = xor i32 %conv.i243, %conv5.i248
  %conv6.i250 = trunc i32 %xor.i249 to i8
  store i8 %conv6.i250, i8* %c, align 1
  %scevgep31.1 = getelementptr i8, i8* %c, i64 1
  %1267 = load i8, i8* %scevgep31.1, align 1
  %conv.i243.1 = zext i8 %1267 to i32
  %scevgep33.1 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 1
  %1268 = load i8, i8* %scevgep33.1, align 1
  %conv5.i248.1 = zext i8 %1268 to i32
  %xor.i249.1 = xor i32 %conv.i243.1, %conv5.i248.1
  %conv6.i250.1 = trunc i32 %xor.i249.1 to i8
  %scevgep32.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i250.1, i8* %scevgep32.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %c, i64 2
  %1269 = load i8, i8* %scevgep31.2, align 1
  %conv.i243.2 = zext i8 %1269 to i32
  %scevgep33.2 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 2
  %1270 = load i8, i8* %scevgep33.2, align 1
  %conv5.i248.2 = zext i8 %1270 to i32
  %xor.i249.2 = xor i32 %conv.i243.2, %conv5.i248.2
  %conv6.i250.2 = trunc i32 %xor.i249.2 to i8
  %scevgep32.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i250.2, i8* %scevgep32.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %c, i64 3
  %1271 = load i8, i8* %scevgep31.3, align 1
  %conv.i243.3 = zext i8 %1271 to i32
  %scevgep33.3 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 3
  %1272 = load i8, i8* %scevgep33.3, align 1
  %conv5.i248.3 = zext i8 %1272 to i32
  %xor.i249.3 = xor i32 %conv.i243.3, %conv5.i248.3
  %conv6.i250.3 = trunc i32 %xor.i249.3 to i8
  %scevgep32.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i250.3, i8* %scevgep32.3, align 1
  %scevgep31.4 = getelementptr i8, i8* %c, i64 4
  %1273 = load i8, i8* %scevgep31.4, align 1
  %conv.i243.4 = zext i8 %1273 to i32
  %scevgep33.4 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 4
  %1274 = load i8, i8* %scevgep33.4, align 1
  %conv5.i248.4 = zext i8 %1274 to i32
  %xor.i249.4 = xor i32 %conv.i243.4, %conv5.i248.4
  %conv6.i250.4 = trunc i32 %xor.i249.4 to i8
  %scevgep32.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i250.4, i8* %scevgep32.4, align 1
  %scevgep31.5 = getelementptr i8, i8* %c, i64 5
  %1275 = load i8, i8* %scevgep31.5, align 1
  %conv.i243.5 = zext i8 %1275 to i32
  %scevgep33.5 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 5
  %1276 = load i8, i8* %scevgep33.5, align 1
  %conv5.i248.5 = zext i8 %1276 to i32
  %xor.i249.5 = xor i32 %conv.i243.5, %conv5.i248.5
  %conv6.i250.5 = trunc i32 %xor.i249.5 to i8
  %scevgep32.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i250.5, i8* %scevgep32.5, align 1
  %scevgep31.6 = getelementptr i8, i8* %c, i64 6
  %1277 = load i8, i8* %scevgep31.6, align 1
  %conv.i243.6 = zext i8 %1277 to i32
  %scevgep33.6 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 6
  %1278 = load i8, i8* %scevgep33.6, align 1
  %conv5.i248.6 = zext i8 %1278 to i32
  %xor.i249.6 = xor i32 %conv.i243.6, %conv5.i248.6
  %conv6.i250.6 = trunc i32 %xor.i249.6 to i8
  %scevgep32.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i250.6, i8* %scevgep32.6, align 1
  %scevgep31.7 = getelementptr i8, i8* %c, i64 7
  %1279 = load i8, i8* %scevgep31.7, align 1
  %conv.i243.7 = zext i8 %1279 to i32
  %scevgep33.7 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 7
  %1280 = load i8, i8* %scevgep33.7, align 1
  %conv5.i248.7 = zext i8 %1280 to i32
  %xor.i249.7 = xor i32 %conv.i243.7, %conv5.i248.7
  %conv6.i250.7 = trunc i32 %xor.i249.7 to i8
  %scevgep32.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i250.7, i8* %scevgep32.7, align 1
  %scevgep31.8 = getelementptr i8, i8* %c, i64 8
  %1281 = load i8, i8* %scevgep31.8, align 1
  %conv.i243.8 = zext i8 %1281 to i32
  %scevgep33.8 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 8
  %1282 = load i8, i8* %scevgep33.8, align 1
  %conv5.i248.8 = zext i8 %1282 to i32
  %xor.i249.8 = xor i32 %conv.i243.8, %conv5.i248.8
  %conv6.i250.8 = trunc i32 %xor.i249.8 to i8
  %scevgep32.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i250.8, i8* %scevgep32.8, align 1
  %scevgep31.9 = getelementptr i8, i8* %c, i64 9
  %1283 = load i8, i8* %scevgep31.9, align 1
  %conv.i243.9 = zext i8 %1283 to i32
  %scevgep33.9 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 9
  %1284 = load i8, i8* %scevgep33.9, align 1
  %conv5.i248.9 = zext i8 %1284 to i32
  %xor.i249.9 = xor i32 %conv.i243.9, %conv5.i248.9
  %conv6.i250.9 = trunc i32 %xor.i249.9 to i8
  %scevgep32.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i250.9, i8* %scevgep32.9, align 1
  %scevgep31.10 = getelementptr i8, i8* %c, i64 10
  %1285 = load i8, i8* %scevgep31.10, align 1
  %conv.i243.10 = zext i8 %1285 to i32
  %scevgep33.10 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 10
  %1286 = load i8, i8* %scevgep33.10, align 1
  %conv5.i248.10 = zext i8 %1286 to i32
  %xor.i249.10 = xor i32 %conv.i243.10, %conv5.i248.10
  %conv6.i250.10 = trunc i32 %xor.i249.10 to i8
  %scevgep32.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i250.10, i8* %scevgep32.10, align 1
  %scevgep31.11 = getelementptr i8, i8* %c, i64 11
  %1287 = load i8, i8* %scevgep31.11, align 1
  %conv.i243.11 = zext i8 %1287 to i32
  %scevgep33.11 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 11
  %1288 = load i8, i8* %scevgep33.11, align 1
  %conv5.i248.11 = zext i8 %1288 to i32
  %xor.i249.11 = xor i32 %conv.i243.11, %conv5.i248.11
  %conv6.i250.11 = trunc i32 %xor.i249.11 to i8
  %scevgep32.11 = getelementptr i8, i8* %c, i64 11
  store i8 %conv6.i250.11, i8* %scevgep32.11, align 1
  %scevgep31.12 = getelementptr i8, i8* %c, i64 12
  %1289 = load i8, i8* %scevgep31.12, align 1
  %conv.i243.12 = zext i8 %1289 to i32
  %scevgep33.12 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 12
  %1290 = load i8, i8* %scevgep33.12, align 1
  %conv5.i248.12 = zext i8 %1290 to i32
  %xor.i249.12 = xor i32 %conv.i243.12, %conv5.i248.12
  %conv6.i250.12 = trunc i32 %xor.i249.12 to i8
  %scevgep32.12 = getelementptr i8, i8* %c, i64 12
  store i8 %conv6.i250.12, i8* %scevgep32.12, align 1
  %scevgep31.13 = getelementptr i8, i8* %c, i64 13
  %1291 = load i8, i8* %scevgep31.13, align 1
  %conv.i243.13 = zext i8 %1291 to i32
  %scevgep33.13 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 13
  %1292 = load i8, i8* %scevgep33.13, align 1
  %conv5.i248.13 = zext i8 %1292 to i32
  %xor.i249.13 = xor i32 %conv.i243.13, %conv5.i248.13
  %conv6.i250.13 = trunc i32 %xor.i249.13 to i8
  %scevgep32.13 = getelementptr i8, i8* %c, i64 13
  store i8 %conv6.i250.13, i8* %scevgep32.13, align 1
  %scevgep31.14 = getelementptr i8, i8* %c, i64 14
  %1293 = load i8, i8* %scevgep31.14, align 1
  %conv.i243.14 = zext i8 %1293 to i32
  %scevgep33.14 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 14
  %1294 = load i8, i8* %scevgep33.14, align 1
  %conv5.i248.14 = zext i8 %1294 to i32
  %xor.i249.14 = xor i32 %conv.i243.14, %conv5.i248.14
  %conv6.i250.14 = trunc i32 %xor.i249.14 to i8
  %scevgep32.14 = getelementptr i8, i8* %c, i64 14
  store i8 %conv6.i250.14, i8* %scevgep32.14, align 1
  %scevgep31.15 = getelementptr i8, i8* %c, i64 15
  %1295 = load i8, i8* %scevgep31.15, align 1
  %conv.i243.15 = zext i8 %1295 to i32
  %scevgep33.15 = getelementptr [16 x i8], [16 x i8]* %ab2, i64 0, i64 15
  %1296 = load i8, i8* %scevgep33.15, align 1
  %conv5.i248.15 = zext i8 %1296 to i32
  %xor.i249.15 = xor i32 %conv.i243.15, %conv5.i248.15
  %conv6.i250.15 = trunc i32 %xor.i249.15 to i8
  %scevgep32.15 = getelementptr i8, i8* %c, i64 15
  store i8 %conv6.i250.15, i8* %scevgep32.15, align 1
  %call59 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv60 = zext i8 %call59 to i32
  %1297 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %1298 = load i8, i8* %scevgep.1, align 1
  %conv.i.i199.1 = zext i8 %1298 to i32
  %conv1.i.i200.1 = zext i8 %1297 to i32
  %xor.i.i201.1 = xor i32 %conv1.i.i200.1, %conv.i.i199.1
  %conv2.i.i202.1 = trunc i32 %xor.i.i201.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %1299 = load i8, i8* %scevgep.2, align 1
  %conv.i.i199.2 = zext i8 %1299 to i32
  %conv1.i.i200.2 = zext i8 %conv2.i.i202.1 to i32
  %xor.i.i201.2 = xor i32 %conv1.i.i200.2, %conv.i.i199.2
  %conv2.i.i202.2 = trunc i32 %xor.i.i201.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %1300 = load i8, i8* %scevgep.3, align 1
  %conv.i.i199.3 = zext i8 %1300 to i32
  %conv1.i.i200.3 = zext i8 %conv2.i.i202.2 to i32
  %xor.i.i201.3 = xor i32 %conv1.i.i200.3, %conv.i.i199.3
  %conv2.i.i202.3 = trunc i32 %xor.i.i201.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %1301 = load i8, i8* %scevgep.4, align 1
  %conv.i.i199.4 = zext i8 %1301 to i32
  %conv1.i.i200.4 = zext i8 %conv2.i.i202.3 to i32
  %xor.i.i201.4 = xor i32 %conv1.i.i200.4, %conv.i.i199.4
  %conv2.i.i202.4 = trunc i32 %xor.i.i201.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %1302 = load i8, i8* %scevgep.5, align 1
  %conv.i.i199.5 = zext i8 %1302 to i32
  %conv1.i.i200.5 = zext i8 %conv2.i.i202.4 to i32
  %xor.i.i201.5 = xor i32 %conv1.i.i200.5, %conv.i.i199.5
  %conv2.i.i202.5 = trunc i32 %xor.i.i201.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %1303 = load i8, i8* %scevgep.6, align 1
  %conv.i.i199.6 = zext i8 %1303 to i32
  %conv1.i.i200.6 = zext i8 %conv2.i.i202.5 to i32
  %xor.i.i201.6 = xor i32 %conv1.i.i200.6, %conv.i.i199.6
  %conv2.i.i202.6 = trunc i32 %xor.i.i201.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %1304 = load i8, i8* %scevgep.7, align 1
  %conv.i.i199.7 = zext i8 %1304 to i32
  %conv1.i.i200.7 = zext i8 %conv2.i.i202.6 to i32
  %xor.i.i201.7 = xor i32 %conv1.i.i200.7, %conv.i.i199.7
  %conv2.i.i202.7 = trunc i32 %xor.i.i201.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %1305 = load i8, i8* %scevgep.8, align 1
  %conv.i.i199.8 = zext i8 %1305 to i32
  %conv1.i.i200.8 = zext i8 %conv2.i.i202.7 to i32
  %xor.i.i201.8 = xor i32 %conv1.i.i200.8, %conv.i.i199.8
  %conv2.i.i202.8 = trunc i32 %xor.i.i201.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %1306 = load i8, i8* %scevgep.9, align 1
  %conv.i.i199.9 = zext i8 %1306 to i32
  %conv1.i.i200.9 = zext i8 %conv2.i.i202.8 to i32
  %xor.i.i201.9 = xor i32 %conv1.i.i200.9, %conv.i.i199.9
  %conv2.i.i202.9 = trunc i32 %xor.i.i201.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %1307 = load i8, i8* %scevgep.10, align 1
  %conv.i.i199.10 = zext i8 %1307 to i32
  %conv1.i.i200.10 = zext i8 %conv2.i.i202.9 to i32
  %xor.i.i201.10 = xor i32 %conv1.i.i200.10, %conv.i.i199.10
  %conv2.i.i202.10 = trunc i32 %xor.i.i201.10 to i8
  %scevgep.11 = getelementptr i8, i8* %c, i64 11
  %1308 = load i8, i8* %scevgep.11, align 1
  %conv.i.i199.11 = zext i8 %1308 to i32
  %conv1.i.i200.11 = zext i8 %conv2.i.i202.10 to i32
  %xor.i.i201.11 = xor i32 %conv1.i.i200.11, %conv.i.i199.11
  %conv2.i.i202.11 = trunc i32 %xor.i.i201.11 to i8
  %scevgep.12 = getelementptr i8, i8* %c, i64 12
  %1309 = load i8, i8* %scevgep.12, align 1
  %conv.i.i199.12 = zext i8 %1309 to i32
  %conv1.i.i200.12 = zext i8 %conv2.i.i202.11 to i32
  %xor.i.i201.12 = xor i32 %conv1.i.i200.12, %conv.i.i199.12
  %conv2.i.i202.12 = trunc i32 %xor.i.i201.12 to i8
  %scevgep.13 = getelementptr i8, i8* %c, i64 13
  %1310 = load i8, i8* %scevgep.13, align 1
  %conv.i.i199.13 = zext i8 %1310 to i32
  %conv1.i.i200.13 = zext i8 %conv2.i.i202.12 to i32
  %xor.i.i201.13 = xor i32 %conv1.i.i200.13, %conv.i.i199.13
  %conv2.i.i202.13 = trunc i32 %xor.i.i201.13 to i8
  %scevgep.14 = getelementptr i8, i8* %c, i64 14
  %1311 = load i8, i8* %scevgep.14, align 1
  %conv.i.i199.14 = zext i8 %1311 to i32
  %conv1.i.i200.14 = zext i8 %conv2.i.i202.13 to i32
  %xor.i.i201.14 = xor i32 %conv1.i.i200.14, %conv.i.i199.14
  %conv2.i.i202.14 = trunc i32 %xor.i.i201.14 to i8
  %scevgep.15 = getelementptr i8, i8* %c, i64 15
  %1312 = load i8, i8* %scevgep.15, align 1
  %conv.i.i199.15 = zext i8 %1312 to i32
  %conv1.i.i200.15 = zext i8 %conv2.i.i202.14 to i32
  %xor.i.i201.15 = xor i32 %conv1.i.i200.15, %conv.i.i199.15
  %conv2.i.i202.15 = trunc i32 %xor.i.i201.15 to i8
  %conv62 = zext i8 %conv2.i.i202.15 to i32
  %cmp63 = icmp eq i32 %conv60, %conv62
  call void @assert(i1 zeroext %cmp63)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
