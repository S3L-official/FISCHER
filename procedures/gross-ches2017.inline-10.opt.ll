; ModuleID = '../examples/gross-ches2017.inline-10.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
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
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 11
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 11
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 11
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 11
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 11
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 11
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %call.2 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %11)
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.2, i8* %scevgep.2, align 1
  %12 = add i64 %0, 3
  %tmp.3 = trunc i64 %12 to i32
  %rem.3 = srem i32 %tmp.3, 11
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 11
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %call.3 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %15)
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.3, i8* %scevgep.3, align 1
  %16 = add i64 %0, 4
  %tmp.4 = trunc i64 %16 to i32
  %rem.4 = srem i32 %tmp.4, 11
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 11
  %idxprom3.4 = sext i32 %rem2.4 to i64
  %arrayidx4.4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.4
  %19 = load i8, i8* %arrayidx4.4, align 1
  %call.4 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %19)
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.4, i8* %scevgep.4, align 1
  %20 = add i64 %0, 5
  %tmp.5 = trunc i64 %20 to i32
  %rem.5 = srem i32 %tmp.5, 11
  %idxprom.5 = sext i32 %rem.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 %idxprom.5
  %21 = load i8, i8* %arrayidx.5, align 1
  %22 = add i64 %1, 5
  %tmp2.5 = trunc i64 %22 to i32
  %rem2.5 = srem i32 %tmp2.5, 11
  %idxprom3.5 = sext i32 %rem2.5 to i64
  %arrayidx4.5 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.5
  %23 = load i8, i8* %arrayidx4.5, align 1
  %call.5 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %23)
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  store i8 %call.5, i8* %scevgep.5, align 1
  %24 = add i64 %0, 6
  %tmp.6 = trunc i64 %24 to i32
  %rem.6 = srem i32 %tmp.6, 11
  %idxprom.6 = sext i32 %rem.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 %idxprom.6
  %25 = load i8, i8* %arrayidx.6, align 1
  %26 = add i64 %1, 6
  %tmp2.6 = trunc i64 %26 to i32
  %rem2.6 = srem i32 %tmp2.6, 11
  %idxprom3.6 = sext i32 %rem2.6 to i64
  %arrayidx4.6 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.6
  %27 = load i8, i8* %arrayidx4.6, align 1
  %call.6 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %27)
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  store i8 %call.6, i8* %scevgep.6, align 1
  %28 = add i64 %0, 7
  %tmp.7 = trunc i64 %28 to i32
  %rem.7 = srem i32 %tmp.7, 11
  %idxprom.7 = sext i32 %rem.7 to i64
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 %idxprom.7
  %29 = load i8, i8* %arrayidx.7, align 1
  %30 = add i64 %1, 7
  %tmp2.7 = trunc i64 %30 to i32
  %rem2.7 = srem i32 %tmp2.7, 11
  %idxprom3.7 = sext i32 %rem2.7 to i64
  %arrayidx4.7 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.7
  %31 = load i8, i8* %arrayidx4.7, align 1
  %call.7 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %31)
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  store i8 %call.7, i8* %scevgep.7, align 1
  %32 = add i64 %0, 8
  %tmp.8 = trunc i64 %32 to i32
  %rem.8 = srem i32 %tmp.8, 11
  %idxprom.8 = sext i32 %rem.8 to i64
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 %idxprom.8
  %33 = load i8, i8* %arrayidx.8, align 1
  %34 = add i64 %1, 8
  %tmp2.8 = trunc i64 %34 to i32
  %rem2.8 = srem i32 %tmp2.8, 11
  %idxprom3.8 = sext i32 %rem2.8 to i64
  %arrayidx4.8 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.8
  %35 = load i8, i8* %arrayidx4.8, align 1
  %call.8 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %35)
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  store i8 %call.8, i8* %scevgep.8, align 1
  %36 = add i64 %0, 9
  %tmp.9 = trunc i64 %36 to i32
  %rem.9 = srem i32 %tmp.9, 11
  %idxprom.9 = sext i32 %rem.9 to i64
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 %idxprom.9
  %37 = load i8, i8* %arrayidx.9, align 1
  %38 = add i64 %1, 9
  %tmp2.9 = trunc i64 %38 to i32
  %rem2.9 = srem i32 %tmp2.9, 11
  %idxprom3.9 = sext i32 %rem2.9 to i64
  %arrayidx4.9 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.9
  %39 = load i8, i8* %arrayidx4.9, align 1
  %call.9 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %39)
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  store i8 %call.9, i8* %scevgep.9, align 1
  %40 = add i64 %0, 10
  %tmp.10 = trunc i64 %40 to i32
  %rem.10 = srem i32 %tmp.10, 11
  %idxprom.10 = sext i32 %rem.10 to i64
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 %idxprom.10
  %41 = load i8, i8* %arrayidx.10, align 1
  %42 = add i64 %1, 10
  %tmp2.10 = trunc i64 %42 to i32
  %rem2.10 = srem i32 %tmp2.10, 11
  %idxprom3.10 = sext i32 %rem2.10 to i64
  %arrayidx4.10 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.10
  %43 = load i8, i8* %arrayidx4.10, align 1
  %call.10 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %43)
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  store i8 %call.10, i8* %scevgep.10, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 11
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 11
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 11
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 11
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
  %rem.2 = srem i32 %tmp.2, 11
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 11
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
  %rem.3 = srem i32 %tmp.3, 11
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i32
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 11
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
  %rem.4 = srem i32 %tmp.4, 11
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %conv.4 = zext i8 %17 to i32
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 11
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
  %rem.5 = srem i32 %tmp.5, 11
  %idxprom.5 = sext i32 %rem.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 %idxprom.5
  %21 = load i8, i8* %arrayidx.5, align 1
  %conv.5 = zext i8 %21 to i32
  %22 = add i64 %1, 5
  %tmp2.5 = trunc i64 %22 to i32
  %rem2.5 = srem i32 %tmp2.5, 11
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
  %rem.6 = srem i32 %tmp.6, 11
  %idxprom.6 = sext i32 %rem.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 %idxprom.6
  %25 = load i8, i8* %arrayidx.6, align 1
  %conv.6 = zext i8 %25 to i32
  %26 = add i64 %1, 6
  %tmp2.6 = trunc i64 %26 to i32
  %rem2.6 = srem i32 %tmp2.6, 11
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
  %rem.7 = srem i32 %tmp.7, 11
  %idxprom.7 = sext i32 %rem.7 to i64
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 %idxprom.7
  %29 = load i8, i8* %arrayidx.7, align 1
  %conv.7 = zext i8 %29 to i32
  %30 = add i64 %1, 7
  %tmp2.7 = trunc i64 %30 to i32
  %rem2.7 = srem i32 %tmp2.7, 11
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
  %rem.8 = srem i32 %tmp.8, 11
  %idxprom.8 = sext i32 %rem.8 to i64
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 %idxprom.8
  %33 = load i8, i8* %arrayidx.8, align 1
  %conv.8 = zext i8 %33 to i32
  %34 = add i64 %1, 8
  %tmp2.8 = trunc i64 %34 to i32
  %rem2.8 = srem i32 %tmp2.8, 11
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
  %rem.9 = srem i32 %tmp.9, 11
  %idxprom.9 = sext i32 %rem.9 to i64
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 %idxprom.9
  %37 = load i8, i8* %arrayidx.9, align 1
  %conv.9 = zext i8 %37 to i32
  %38 = add i64 %1, 9
  %tmp2.9 = trunc i64 %38 to i32
  %rem2.9 = srem i32 %tmp2.9, 11
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
  %rem.10 = srem i32 %tmp.10, 11
  %idxprom.10 = sext i32 %rem.10 to i64
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 %idxprom.10
  %41 = load i8, i8* %arrayidx.10, align 1
  %conv.10 = zext i8 %41 to i32
  %42 = add i64 %1, 10
  %tmp2.10 = trunc i64 %42 to i32
  %rem2.10 = srem i32 %tmp2.10, 11
  %idxprom3.10 = sext i32 %rem2.10 to i64
  %arrayidx4.10 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.10
  %43 = load i8, i8* %arrayidx4.10, align 1
  %conv5.10 = zext i8 %43 to i32
  %xor.10 = xor i32 %conv.10, %conv5.10
  %conv6.10 = trunc i32 %xor.10 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.10, i8* %scevgep.10, align 1
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
  %r = alloca [11 x [11 x i8]], align 16
  %a1b = alloca [11 x i8], align 1
  %ab1 = alloca [11 x i8], align 1
  %a2b = alloca [11 x i8], align 1
  %ab2 = alloca [11 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep209.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep209.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep209.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep209.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep209.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep209.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep209.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep209.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep209.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep209.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep209.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep209.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep209.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep209.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep209.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep209.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep209.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep209.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep209.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %conv3 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %11 = load i8, i8* %b, align 1
  %scevgep205.1 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep205.1, align 1
  %conv.i.i73.1 = zext i8 %12 to i32
  %conv1.i.i74.1 = zext i8 %11 to i32
  %xor.i.i75.1 = xor i32 %conv1.i.i74.1, %conv.i.i73.1
  %conv2.i.i76.1 = trunc i32 %xor.i.i75.1 to i8
  %scevgep205.2 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep205.2, align 1
  %conv.i.i73.2 = zext i8 %13 to i32
  %conv1.i.i74.2 = zext i8 %conv2.i.i76.1 to i32
  %xor.i.i75.2 = xor i32 %conv1.i.i74.2, %conv.i.i73.2
  %conv2.i.i76.2 = trunc i32 %xor.i.i75.2 to i8
  %scevgep205.3 = getelementptr i8, i8* %b, i64 3
  %14 = load i8, i8* %scevgep205.3, align 1
  %conv.i.i73.3 = zext i8 %14 to i32
  %conv1.i.i74.3 = zext i8 %conv2.i.i76.2 to i32
  %xor.i.i75.3 = xor i32 %conv1.i.i74.3, %conv.i.i73.3
  %conv2.i.i76.3 = trunc i32 %xor.i.i75.3 to i8
  %scevgep205.4 = getelementptr i8, i8* %b, i64 4
  %15 = load i8, i8* %scevgep205.4, align 1
  %conv.i.i73.4 = zext i8 %15 to i32
  %conv1.i.i74.4 = zext i8 %conv2.i.i76.3 to i32
  %xor.i.i75.4 = xor i32 %conv1.i.i74.4, %conv.i.i73.4
  %conv2.i.i76.4 = trunc i32 %xor.i.i75.4 to i8
  %scevgep205.5 = getelementptr i8, i8* %b, i64 5
  %16 = load i8, i8* %scevgep205.5, align 1
  %conv.i.i73.5 = zext i8 %16 to i32
  %conv1.i.i74.5 = zext i8 %conv2.i.i76.4 to i32
  %xor.i.i75.5 = xor i32 %conv1.i.i74.5, %conv.i.i73.5
  %conv2.i.i76.5 = trunc i32 %xor.i.i75.5 to i8
  %scevgep205.6 = getelementptr i8, i8* %b, i64 6
  %17 = load i8, i8* %scevgep205.6, align 1
  %conv.i.i73.6 = zext i8 %17 to i32
  %conv1.i.i74.6 = zext i8 %conv2.i.i76.5 to i32
  %xor.i.i75.6 = xor i32 %conv1.i.i74.6, %conv.i.i73.6
  %conv2.i.i76.6 = trunc i32 %xor.i.i75.6 to i8
  %scevgep205.7 = getelementptr i8, i8* %b, i64 7
  %18 = load i8, i8* %scevgep205.7, align 1
  %conv.i.i73.7 = zext i8 %18 to i32
  %conv1.i.i74.7 = zext i8 %conv2.i.i76.6 to i32
  %xor.i.i75.7 = xor i32 %conv1.i.i74.7, %conv.i.i73.7
  %conv2.i.i76.7 = trunc i32 %xor.i.i75.7 to i8
  %scevgep205.8 = getelementptr i8, i8* %b, i64 8
  %19 = load i8, i8* %scevgep205.8, align 1
  %conv.i.i73.8 = zext i8 %19 to i32
  %conv1.i.i74.8 = zext i8 %conv2.i.i76.7 to i32
  %xor.i.i75.8 = xor i32 %conv1.i.i74.8, %conv.i.i73.8
  %conv2.i.i76.8 = trunc i32 %xor.i.i75.8 to i8
  %scevgep205.9 = getelementptr i8, i8* %b, i64 9
  %20 = load i8, i8* %scevgep205.9, align 1
  %conv.i.i73.9 = zext i8 %20 to i32
  %conv1.i.i74.9 = zext i8 %conv2.i.i76.8 to i32
  %xor.i.i75.9 = xor i32 %conv1.i.i74.9, %conv.i.i73.9
  %conv2.i.i76.9 = trunc i32 %xor.i.i75.9 to i8
  %scevgep205.10 = getelementptr i8, i8* %b, i64 10
  %21 = load i8, i8* %scevgep205.10, align 1
  %conv.i.i73.10 = zext i8 %21 to i32
  %conv1.i.i74.10 = zext i8 %conv2.i.i76.9 to i32
  %xor.i.i75.10 = xor i32 %conv1.i.i74.10, %conv.i.i73.10
  %conv2.i.i76.10 = trunc i32 %xor.i.i75.10 to i8
  %conv7 = zext i8 %conv2.i.i76.10 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep201 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep201, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep201.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep201.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep201.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep201.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep201.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep201.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep201.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep201.4, align 1
  %call16.5 = call zeroext i8 (...) @rand()
  %scevgep201.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 5
  store i8 %call16.5, i8* %scevgep201.5, align 1
  %call16.6 = call zeroext i8 (...) @rand()
  %scevgep201.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 6
  store i8 %call16.6, i8* %scevgep201.6, align 1
  %call16.7 = call zeroext i8 (...) @rand()
  %scevgep201.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 7
  store i8 %call16.7, i8* %scevgep201.7, align 1
  %call16.8 = call zeroext i8 (...) @rand()
  %scevgep201.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 8
  store i8 %call16.8, i8* %scevgep201.8, align 1
  %call16.9 = call zeroext i8 (...) @rand()
  %scevgep201.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 9
  store i8 %call16.9, i8* %scevgep201.9, align 1
  %call16.10 = call zeroext i8 (...) @rand()
  %scevgep201.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 10
  store i8 %call16.10, i8* %scevgep201.10, align 1
  %scevgep198 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep198 to [11 x [11 x i8]]*
  %call16.1276 = call zeroext i8 (...) @rand()
  %scevgep201.1277 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 0
  store i8 %call16.1276, i8* %scevgep201.1277, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep201.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep201.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep201.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep201.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep201.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep201.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep201.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep201.4.1, align 1
  %call16.5.1 = call zeroext i8 (...) @rand()
  %scevgep201.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 5
  store i8 %call16.5.1, i8* %scevgep201.5.1, align 1
  %call16.6.1 = call zeroext i8 (...) @rand()
  %scevgep201.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 6
  store i8 %call16.6.1, i8* %scevgep201.6.1, align 1
  %call16.7.1 = call zeroext i8 (...) @rand()
  %scevgep201.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 7
  store i8 %call16.7.1, i8* %scevgep201.7.1, align 1
  %call16.8.1 = call zeroext i8 (...) @rand()
  %scevgep201.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 8
  store i8 %call16.8.1, i8* %scevgep201.8.1, align 1
  %call16.9.1 = call zeroext i8 (...) @rand()
  %scevgep201.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 9
  store i8 %call16.9.1, i8* %scevgep201.9.1, align 1
  %call16.10.1 = call zeroext i8 (...) @rand()
  %scevgep201.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 10
  store i8 %call16.10.1, i8* %scevgep201.10.1, align 1
  %scevgep198.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep198.1 to [11 x [11 x i8]]*
  %call16.2279 = call zeroext i8 (...) @rand()
  %scevgep201.2280 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 0
  store i8 %call16.2279, i8* %scevgep201.2280, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep201.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep201.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep201.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep201.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep201.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep201.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep201.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep201.4.2, align 1
  %call16.5.2 = call zeroext i8 (...) @rand()
  %scevgep201.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 5
  store i8 %call16.5.2, i8* %scevgep201.5.2, align 1
  %call16.6.2 = call zeroext i8 (...) @rand()
  %scevgep201.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 6
  store i8 %call16.6.2, i8* %scevgep201.6.2, align 1
  %call16.7.2 = call zeroext i8 (...) @rand()
  %scevgep201.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 7
  store i8 %call16.7.2, i8* %scevgep201.7.2, align 1
  %call16.8.2 = call zeroext i8 (...) @rand()
  %scevgep201.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 8
  store i8 %call16.8.2, i8* %scevgep201.8.2, align 1
  %call16.9.2 = call zeroext i8 (...) @rand()
  %scevgep201.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 9
  store i8 %call16.9.2, i8* %scevgep201.9.2, align 1
  %call16.10.2 = call zeroext i8 (...) @rand()
  %scevgep201.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 10
  store i8 %call16.10.2, i8* %scevgep201.10.2, align 1
  %scevgep198.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 1, i64 0
  %24 = bitcast i8* %scevgep198.2 to [11 x [11 x i8]]*
  %call16.3282 = call zeroext i8 (...) @rand()
  %scevgep201.3283 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 0
  store i8 %call16.3282, i8* %scevgep201.3283, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep201.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep201.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep201.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep201.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep201.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep201.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep201.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep201.4.3, align 1
  %call16.5.3 = call zeroext i8 (...) @rand()
  %scevgep201.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 5
  store i8 %call16.5.3, i8* %scevgep201.5.3, align 1
  %call16.6.3 = call zeroext i8 (...) @rand()
  %scevgep201.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 6
  store i8 %call16.6.3, i8* %scevgep201.6.3, align 1
  %call16.7.3 = call zeroext i8 (...) @rand()
  %scevgep201.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 7
  store i8 %call16.7.3, i8* %scevgep201.7.3, align 1
  %call16.8.3 = call zeroext i8 (...) @rand()
  %scevgep201.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 8
  store i8 %call16.8.3, i8* %scevgep201.8.3, align 1
  %call16.9.3 = call zeroext i8 (...) @rand()
  %scevgep201.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 9
  store i8 %call16.9.3, i8* %scevgep201.9.3, align 1
  %call16.10.3 = call zeroext i8 (...) @rand()
  %scevgep201.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 10
  store i8 %call16.10.3, i8* %scevgep201.10.3, align 1
  %scevgep198.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep198.3 to [11 x [11 x i8]]*
  %call16.4285 = call zeroext i8 (...) @rand()
  %scevgep201.4286 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 0
  store i8 %call16.4285, i8* %scevgep201.4286, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep201.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep201.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep201.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep201.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep201.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep201.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep201.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep201.4.4, align 1
  %call16.5.4 = call zeroext i8 (...) @rand()
  %scevgep201.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 5
  store i8 %call16.5.4, i8* %scevgep201.5.4, align 1
  %call16.6.4 = call zeroext i8 (...) @rand()
  %scevgep201.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 6
  store i8 %call16.6.4, i8* %scevgep201.6.4, align 1
  %call16.7.4 = call zeroext i8 (...) @rand()
  %scevgep201.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 7
  store i8 %call16.7.4, i8* %scevgep201.7.4, align 1
  %call16.8.4 = call zeroext i8 (...) @rand()
  %scevgep201.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 8
  store i8 %call16.8.4, i8* %scevgep201.8.4, align 1
  %call16.9.4 = call zeroext i8 (...) @rand()
  %scevgep201.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 9
  store i8 %call16.9.4, i8* %scevgep201.9.4, align 1
  %call16.10.4 = call zeroext i8 (...) @rand()
  %scevgep201.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 10
  store i8 %call16.10.4, i8* %scevgep201.10.4, align 1
  %scevgep198.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep198.4 to [11 x [11 x i8]]*
  %call16.5288 = call zeroext i8 (...) @rand()
  %scevgep201.5289 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %call16.5288, i8* %scevgep201.5289, align 1
  %call16.1.5 = call zeroext i8 (...) @rand()
  %scevgep201.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 1
  store i8 %call16.1.5, i8* %scevgep201.1.5, align 1
  %call16.2.5 = call zeroext i8 (...) @rand()
  %scevgep201.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 2
  store i8 %call16.2.5, i8* %scevgep201.2.5, align 1
  %call16.3.5 = call zeroext i8 (...) @rand()
  %scevgep201.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 3
  store i8 %call16.3.5, i8* %scevgep201.3.5, align 1
  %call16.4.5 = call zeroext i8 (...) @rand()
  %scevgep201.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 4
  store i8 %call16.4.5, i8* %scevgep201.4.5, align 1
  %call16.5.5 = call zeroext i8 (...) @rand()
  %scevgep201.5.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 5
  store i8 %call16.5.5, i8* %scevgep201.5.5, align 1
  %call16.6.5 = call zeroext i8 (...) @rand()
  %scevgep201.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 6
  store i8 %call16.6.5, i8* %scevgep201.6.5, align 1
  %call16.7.5 = call zeroext i8 (...) @rand()
  %scevgep201.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 7
  store i8 %call16.7.5, i8* %scevgep201.7.5, align 1
  %call16.8.5 = call zeroext i8 (...) @rand()
  %scevgep201.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 8
  store i8 %call16.8.5, i8* %scevgep201.8.5, align 1
  %call16.9.5 = call zeroext i8 (...) @rand()
  %scevgep201.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 9
  store i8 %call16.9.5, i8* %scevgep201.9.5, align 1
  %call16.10.5 = call zeroext i8 (...) @rand()
  %scevgep201.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 10
  store i8 %call16.10.5, i8* %scevgep201.10.5, align 1
  %scevgep198.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep198.5 to [11 x [11 x i8]]*
  %call16.6291 = call zeroext i8 (...) @rand()
  %scevgep201.6292 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %call16.6291, i8* %scevgep201.6292, align 1
  %call16.1.6 = call zeroext i8 (...) @rand()
  %scevgep201.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 1
  store i8 %call16.1.6, i8* %scevgep201.1.6, align 1
  %call16.2.6 = call zeroext i8 (...) @rand()
  %scevgep201.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 2
  store i8 %call16.2.6, i8* %scevgep201.2.6, align 1
  %call16.3.6 = call zeroext i8 (...) @rand()
  %scevgep201.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 3
  store i8 %call16.3.6, i8* %scevgep201.3.6, align 1
  %call16.4.6 = call zeroext i8 (...) @rand()
  %scevgep201.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 4
  store i8 %call16.4.6, i8* %scevgep201.4.6, align 1
  %call16.5.6 = call zeroext i8 (...) @rand()
  %scevgep201.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 5
  store i8 %call16.5.6, i8* %scevgep201.5.6, align 1
  %call16.6.6 = call zeroext i8 (...) @rand()
  %scevgep201.6.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 6
  store i8 %call16.6.6, i8* %scevgep201.6.6, align 1
  %call16.7.6 = call zeroext i8 (...) @rand()
  %scevgep201.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 7
  store i8 %call16.7.6, i8* %scevgep201.7.6, align 1
  %call16.8.6 = call zeroext i8 (...) @rand()
  %scevgep201.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 8
  store i8 %call16.8.6, i8* %scevgep201.8.6, align 1
  %call16.9.6 = call zeroext i8 (...) @rand()
  %scevgep201.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 9
  store i8 %call16.9.6, i8* %scevgep201.9.6, align 1
  %call16.10.6 = call zeroext i8 (...) @rand()
  %scevgep201.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 10
  store i8 %call16.10.6, i8* %scevgep201.10.6, align 1
  %scevgep198.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep198.6 to [11 x [11 x i8]]*
  %call16.7294 = call zeroext i8 (...) @rand()
  %scevgep201.7295 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %call16.7294, i8* %scevgep201.7295, align 1
  %call16.1.7 = call zeroext i8 (...) @rand()
  %scevgep201.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 1
  store i8 %call16.1.7, i8* %scevgep201.1.7, align 1
  %call16.2.7 = call zeroext i8 (...) @rand()
  %scevgep201.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 2
  store i8 %call16.2.7, i8* %scevgep201.2.7, align 1
  %call16.3.7 = call zeroext i8 (...) @rand()
  %scevgep201.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 3
  store i8 %call16.3.7, i8* %scevgep201.3.7, align 1
  %call16.4.7 = call zeroext i8 (...) @rand()
  %scevgep201.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 4
  store i8 %call16.4.7, i8* %scevgep201.4.7, align 1
  %call16.5.7 = call zeroext i8 (...) @rand()
  %scevgep201.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 5
  store i8 %call16.5.7, i8* %scevgep201.5.7, align 1
  %call16.6.7 = call zeroext i8 (...) @rand()
  %scevgep201.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 6
  store i8 %call16.6.7, i8* %scevgep201.6.7, align 1
  %call16.7.7 = call zeroext i8 (...) @rand()
  %scevgep201.7.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 7
  store i8 %call16.7.7, i8* %scevgep201.7.7, align 1
  %call16.8.7 = call zeroext i8 (...) @rand()
  %scevgep201.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 8
  store i8 %call16.8.7, i8* %scevgep201.8.7, align 1
  %call16.9.7 = call zeroext i8 (...) @rand()
  %scevgep201.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 9
  store i8 %call16.9.7, i8* %scevgep201.9.7, align 1
  %call16.10.7 = call zeroext i8 (...) @rand()
  %scevgep201.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 10
  store i8 %call16.10.7, i8* %scevgep201.10.7, align 1
  %scevgep198.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep198.7 to [11 x [11 x i8]]*
  %call16.8297 = call zeroext i8 (...) @rand()
  %scevgep201.8298 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %call16.8297, i8* %scevgep201.8298, align 1
  %call16.1.8 = call zeroext i8 (...) @rand()
  %scevgep201.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 1
  store i8 %call16.1.8, i8* %scevgep201.1.8, align 1
  %call16.2.8 = call zeroext i8 (...) @rand()
  %scevgep201.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 2
  store i8 %call16.2.8, i8* %scevgep201.2.8, align 1
  %call16.3.8 = call zeroext i8 (...) @rand()
  %scevgep201.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 3
  store i8 %call16.3.8, i8* %scevgep201.3.8, align 1
  %call16.4.8 = call zeroext i8 (...) @rand()
  %scevgep201.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 4
  store i8 %call16.4.8, i8* %scevgep201.4.8, align 1
  %call16.5.8 = call zeroext i8 (...) @rand()
  %scevgep201.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 5
  store i8 %call16.5.8, i8* %scevgep201.5.8, align 1
  %call16.6.8 = call zeroext i8 (...) @rand()
  %scevgep201.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 6
  store i8 %call16.6.8, i8* %scevgep201.6.8, align 1
  %call16.7.8 = call zeroext i8 (...) @rand()
  %scevgep201.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 7
  store i8 %call16.7.8, i8* %scevgep201.7.8, align 1
  %call16.8.8 = call zeroext i8 (...) @rand()
  %scevgep201.8.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 8
  store i8 %call16.8.8, i8* %scevgep201.8.8, align 1
  %call16.9.8 = call zeroext i8 (...) @rand()
  %scevgep201.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 9
  store i8 %call16.9.8, i8* %scevgep201.9.8, align 1
  %call16.10.8 = call zeroext i8 (...) @rand()
  %scevgep201.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 10
  store i8 %call16.10.8, i8* %scevgep201.10.8, align 1
  %scevgep198.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep198.8 to [11 x [11 x i8]]*
  %call16.9300 = call zeroext i8 (...) @rand()
  %scevgep201.9301 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 0
  store i8 %call16.9300, i8* %scevgep201.9301, align 1
  %call16.1.9 = call zeroext i8 (...) @rand()
  %scevgep201.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 1
  store i8 %call16.1.9, i8* %scevgep201.1.9, align 1
  %call16.2.9 = call zeroext i8 (...) @rand()
  %scevgep201.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 2
  store i8 %call16.2.9, i8* %scevgep201.2.9, align 1
  %call16.3.9 = call zeroext i8 (...) @rand()
  %scevgep201.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 3
  store i8 %call16.3.9, i8* %scevgep201.3.9, align 1
  %call16.4.9 = call zeroext i8 (...) @rand()
  %scevgep201.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 4
  store i8 %call16.4.9, i8* %scevgep201.4.9, align 1
  %call16.5.9 = call zeroext i8 (...) @rand()
  %scevgep201.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 5
  store i8 %call16.5.9, i8* %scevgep201.5.9, align 1
  %call16.6.9 = call zeroext i8 (...) @rand()
  %scevgep201.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 6
  store i8 %call16.6.9, i8* %scevgep201.6.9, align 1
  %call16.7.9 = call zeroext i8 (...) @rand()
  %scevgep201.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 7
  store i8 %call16.7.9, i8* %scevgep201.7.9, align 1
  %call16.8.9 = call zeroext i8 (...) @rand()
  %scevgep201.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 8
  store i8 %call16.8.9, i8* %scevgep201.8.9, align 1
  %call16.9.9 = call zeroext i8 (...) @rand()
  %scevgep201.9.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 9
  store i8 %call16.9.9, i8* %scevgep201.9.9, align 1
  %call16.10.9 = call zeroext i8 (...) @rand()
  %scevgep201.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 10
  store i8 %call16.10.9, i8* %scevgep201.10.9, align 1
  %scevgep198.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep198.9 to [11 x [11 x i8]]*
  %call16.10303 = call zeroext i8 (...) @rand()
  %scevgep201.10304 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 0
  store i8 %call16.10303, i8* %scevgep201.10304, align 1
  %call16.1.10 = call zeroext i8 (...) @rand()
  %scevgep201.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 1
  store i8 %call16.1.10, i8* %scevgep201.1.10, align 1
  %call16.2.10 = call zeroext i8 (...) @rand()
  %scevgep201.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 2
  store i8 %call16.2.10, i8* %scevgep201.2.10, align 1
  %call16.3.10 = call zeroext i8 (...) @rand()
  %scevgep201.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 3
  store i8 %call16.3.10, i8* %scevgep201.3.10, align 1
  %call16.4.10 = call zeroext i8 (...) @rand()
  %scevgep201.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 4
  store i8 %call16.4.10, i8* %scevgep201.4.10, align 1
  %call16.5.10 = call zeroext i8 (...) @rand()
  %scevgep201.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 5
  store i8 %call16.5.10, i8* %scevgep201.5.10, align 1
  %call16.6.10 = call zeroext i8 (...) @rand()
  %scevgep201.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 6
  store i8 %call16.6.10, i8* %scevgep201.6.10, align 1
  %call16.7.10 = call zeroext i8 (...) @rand()
  %scevgep201.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 7
  store i8 %call16.7.10, i8* %scevgep201.7.10, align 1
  %call16.8.10 = call zeroext i8 (...) @rand()
  %scevgep201.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 8
  store i8 %call16.8.10, i8* %scevgep201.8.10, align 1
  %call16.9.10 = call zeroext i8 (...) @rand()
  %scevgep201.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 9
  store i8 %call16.9.10, i8* %scevgep201.9.10, align 1
  %call16.10.10 = call zeroext i8 (...) @rand()
  %scevgep201.10.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 10
  store i8 %call16.10.10, i8* %scevgep201.10.10, align 1
  %32 = load i8, i8* %a, align 1
  %33 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep188 = getelementptr i8, i8* %a, i64 1
  %scevgep193 = getelementptr i8, i8* %b, i64 1
  %34 = load i8, i8* %scevgep188, align 1
  %35 = load i8, i8* %scevgep193, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #2
  %scevgep195.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep195.1, align 1
  %scevgep188.1 = getelementptr i8, i8* %scevgep188, i64 1
  %scevgep193.1 = getelementptr i8, i8* %scevgep193, i64 1
  %36 = load i8, i8* %scevgep188.1, align 1
  %37 = load i8, i8* %scevgep193.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #2
  %scevgep195.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.i.2, i8* %scevgep195.2, align 1
  %scevgep188.2 = getelementptr i8, i8* %scevgep188.1, i64 1
  %scevgep193.2 = getelementptr i8, i8* %scevgep193.1, i64 1
  %38 = load i8, i8* %scevgep188.2, align 1
  %39 = load i8, i8* %scevgep193.2, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  %scevgep195.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.i.3, i8* %scevgep195.3, align 1
  %scevgep188.3 = getelementptr i8, i8* %scevgep188.2, i64 1
  %scevgep193.3 = getelementptr i8, i8* %scevgep193.2, i64 1
  %40 = load i8, i8* %scevgep188.3, align 1
  %41 = load i8, i8* %scevgep193.3, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #2
  %scevgep195.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.i.4, i8* %scevgep195.4, align 1
  %scevgep188.4 = getelementptr i8, i8* %scevgep188.3, i64 1
  %scevgep193.4 = getelementptr i8, i8* %scevgep193.3, i64 1
  %42 = load i8, i8* %scevgep188.4, align 1
  %43 = load i8, i8* %scevgep193.4, align 1
  %call.i.5 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #2
  %scevgep195.5 = getelementptr i8, i8* %c, i64 5
  store i8 %call.i.5, i8* %scevgep195.5, align 1
  %scevgep188.5 = getelementptr i8, i8* %scevgep188.4, i64 1
  %scevgep193.5 = getelementptr i8, i8* %scevgep193.4, i64 1
  %44 = load i8, i8* %scevgep188.5, align 1
  %45 = load i8, i8* %scevgep193.5, align 1
  %call.i.6 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #2
  %scevgep195.6 = getelementptr i8, i8* %c, i64 6
  store i8 %call.i.6, i8* %scevgep195.6, align 1
  %scevgep188.6 = getelementptr i8, i8* %scevgep188.5, i64 1
  %scevgep193.6 = getelementptr i8, i8* %scevgep193.5, i64 1
  %46 = load i8, i8* %scevgep188.6, align 1
  %47 = load i8, i8* %scevgep193.6, align 1
  %call.i.7 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #2
  %scevgep195.7 = getelementptr i8, i8* %c, i64 7
  store i8 %call.i.7, i8* %scevgep195.7, align 1
  %scevgep188.7 = getelementptr i8, i8* %scevgep188.6, i64 1
  %scevgep193.7 = getelementptr i8, i8* %scevgep193.6, i64 1
  %48 = load i8, i8* %scevgep188.7, align 1
  %49 = load i8, i8* %scevgep193.7, align 1
  %call.i.8 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  %scevgep195.8 = getelementptr i8, i8* %c, i64 8
  store i8 %call.i.8, i8* %scevgep195.8, align 1
  %scevgep188.8 = getelementptr i8, i8* %scevgep188.7, i64 1
  %scevgep193.8 = getelementptr i8, i8* %scevgep193.7, i64 1
  %50 = load i8, i8* %scevgep188.8, align 1
  %51 = load i8, i8* %scevgep193.8, align 1
  %call.i.9 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #2
  %scevgep195.9 = getelementptr i8, i8* %c, i64 9
  store i8 %call.i.9, i8* %scevgep195.9, align 1
  %scevgep188.9 = getelementptr i8, i8* %scevgep188.8, i64 1
  %scevgep193.9 = getelementptr i8, i8* %scevgep193.8, i64 1
  %52 = load i8, i8* %scevgep188.9, align 1
  %53 = load i8, i8* %scevgep193.9, align 1
  %call.i.10 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #2
  %scevgep195.10 = getelementptr i8, i8* %c, i64 10
  store i8 %call.i.10, i8* %scevgep195.10, align 1
  %54 = load i8, i8* %a, align 1
  %arrayidx4.i96 = getelementptr inbounds i8, i8* %b, i64 1
  %55 = load i8, i8* %arrayidx4.i96, align 1
  %call.i97 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %scevgep95 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i97, i8* %scevgep95, align 1
  %scevgep87 = getelementptr i8, i8* %a, i64 1
  %56 = load i8, i8* %scevgep87, align 1
  %arrayidx4.i96.1 = getelementptr inbounds i8, i8* %b, i64 2
  %57 = load i8, i8* %arrayidx4.i96.1, align 1
  %call.i97.1 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57) #2
  %scevgep95.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i97.1, i8* %scevgep95.1, align 1
  %scevgep87.1 = getelementptr i8, i8* %scevgep87, i64 1
  %58 = load i8, i8* %scevgep87.1, align 1
  %arrayidx4.i96.2 = getelementptr inbounds i8, i8* %b, i64 3
  %59 = load i8, i8* %arrayidx4.i96.2, align 1
  %call.i97.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #2
  %scevgep95.2 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i97.2, i8* %scevgep95.2, align 1
  %scevgep87.2 = getelementptr i8, i8* %scevgep87.1, i64 1
  %60 = load i8, i8* %scevgep87.2, align 1
  %arrayidx4.i96.3 = getelementptr inbounds i8, i8* %b, i64 4
  %61 = load i8, i8* %arrayidx4.i96.3, align 1
  %call.i97.3 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #2
  %scevgep95.3 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i97.3, i8* %scevgep95.3, align 1
  %scevgep87.3 = getelementptr i8, i8* %scevgep87.2, i64 1
  %62 = load i8, i8* %scevgep87.3, align 1
  %arrayidx4.i96.4 = getelementptr inbounds i8, i8* %b, i64 5
  %63 = load i8, i8* %arrayidx4.i96.4, align 1
  %call.i97.4 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #2
  %scevgep95.4 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i97.4, i8* %scevgep95.4, align 1
  %scevgep87.4 = getelementptr i8, i8* %scevgep87.3, i64 1
  %64 = load i8, i8* %scevgep87.4, align 1
  %arrayidx4.i96.5 = getelementptr inbounds i8, i8* %b, i64 6
  %65 = load i8, i8* %arrayidx4.i96.5, align 1
  %call.i97.5 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #2
  %scevgep95.5 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i97.5, i8* %scevgep95.5, align 1
  %scevgep87.5 = getelementptr i8, i8* %scevgep87.4, i64 1
  %66 = load i8, i8* %scevgep87.5, align 1
  %arrayidx4.i96.6 = getelementptr inbounds i8, i8* %b, i64 7
  %67 = load i8, i8* %arrayidx4.i96.6, align 1
  %call.i97.6 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #2
  %scevgep95.6 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i97.6, i8* %scevgep95.6, align 1
  %scevgep87.6 = getelementptr i8, i8* %scevgep87.5, i64 1
  %68 = load i8, i8* %scevgep87.6, align 1
  %arrayidx4.i96.7 = getelementptr inbounds i8, i8* %b, i64 8
  %69 = load i8, i8* %arrayidx4.i96.7, align 1
  %call.i97.7 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #2
  %scevgep95.7 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i97.7, i8* %scevgep95.7, align 1
  %scevgep87.7 = getelementptr i8, i8* %scevgep87.6, i64 1
  %70 = load i8, i8* %scevgep87.7, align 1
  %arrayidx4.i96.8 = getelementptr inbounds i8, i8* %b, i64 9
  %71 = load i8, i8* %arrayidx4.i96.8, align 1
  %call.i97.8 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #2
  %scevgep95.8 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i97.8, i8* %scevgep95.8, align 1
  %scevgep87.8 = getelementptr i8, i8* %scevgep87.7, i64 1
  %72 = load i8, i8* %scevgep87.8, align 1
  %arrayidx4.i96.9 = getelementptr inbounds i8, i8* %b, i64 10
  %73 = load i8, i8* %arrayidx4.i96.9, align 1
  %call.i97.9 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #2
  %scevgep95.9 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i97.9, i8* %scevgep95.9, align 1
  %scevgep87.9 = getelementptr i8, i8* %scevgep87.8, i64 1
  %74 = load i8, i8* %scevgep87.9, align 1
  %75 = load i8, i8* %b, align 1
  %call.i97.10 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #2
  %scevgep95.10 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i97.10, i8* %scevgep95.10, align 1
  %arrayidx.i114 = getelementptr inbounds i8, i8* %a, i64 1
  %76 = load i8, i8* %arrayidx.i114, align 1
  %77 = load i8, i8* %b, align 1
  %call.i119 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #2
  %scevgep104 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i119, i8* %scevgep104, align 1
  %scevgep100 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i114.1 = getelementptr inbounds i8, i8* %a, i64 2
  %78 = load i8, i8* %arrayidx.i114.1, align 1
  %79 = load i8, i8* %scevgep100, align 1
  %call.i119.1 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79) #2
  %scevgep104.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i119.1, i8* %scevgep104.1, align 1
  %scevgep100.1 = getelementptr i8, i8* %scevgep100, i64 1
  %arrayidx.i114.2 = getelementptr inbounds i8, i8* %a, i64 3
  %80 = load i8, i8* %arrayidx.i114.2, align 1
  %81 = load i8, i8* %scevgep100.1, align 1
  %call.i119.2 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #2
  %scevgep104.2 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i119.2, i8* %scevgep104.2, align 1
  %scevgep100.2 = getelementptr i8, i8* %scevgep100.1, i64 1
  %arrayidx.i114.3 = getelementptr inbounds i8, i8* %a, i64 4
  %82 = load i8, i8* %arrayidx.i114.3, align 1
  %83 = load i8, i8* %scevgep100.2, align 1
  %call.i119.3 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #2
  %scevgep104.3 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i119.3, i8* %scevgep104.3, align 1
  %scevgep100.3 = getelementptr i8, i8* %scevgep100.2, i64 1
  %arrayidx.i114.4 = getelementptr inbounds i8, i8* %a, i64 5
  %84 = load i8, i8* %arrayidx.i114.4, align 1
  %85 = load i8, i8* %scevgep100.3, align 1
  %call.i119.4 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85) #2
  %scevgep104.4 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i119.4, i8* %scevgep104.4, align 1
  %scevgep100.4 = getelementptr i8, i8* %scevgep100.3, i64 1
  %arrayidx.i114.5 = getelementptr inbounds i8, i8* %a, i64 6
  %86 = load i8, i8* %arrayidx.i114.5, align 1
  %87 = load i8, i8* %scevgep100.4, align 1
  %call.i119.5 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #2
  %scevgep104.5 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i119.5, i8* %scevgep104.5, align 1
  %scevgep100.5 = getelementptr i8, i8* %scevgep100.4, i64 1
  %arrayidx.i114.6 = getelementptr inbounds i8, i8* %a, i64 7
  %88 = load i8, i8* %arrayidx.i114.6, align 1
  %89 = load i8, i8* %scevgep100.5, align 1
  %call.i119.6 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89) #2
  %scevgep104.6 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 6
  store i8 %call.i119.6, i8* %scevgep104.6, align 1
  %scevgep100.6 = getelementptr i8, i8* %scevgep100.5, i64 1
  %arrayidx.i114.7 = getelementptr inbounds i8, i8* %a, i64 8
  %90 = load i8, i8* %arrayidx.i114.7, align 1
  %91 = load i8, i8* %scevgep100.6, align 1
  %call.i119.7 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #2
  %scevgep104.7 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 7
  store i8 %call.i119.7, i8* %scevgep104.7, align 1
  %scevgep100.7 = getelementptr i8, i8* %scevgep100.6, i64 1
  %arrayidx.i114.8 = getelementptr inbounds i8, i8* %a, i64 9
  %92 = load i8, i8* %arrayidx.i114.8, align 1
  %93 = load i8, i8* %scevgep100.7, align 1
  %call.i119.8 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93) #2
  %scevgep104.8 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 8
  store i8 %call.i119.8, i8* %scevgep104.8, align 1
  %scevgep100.8 = getelementptr i8, i8* %scevgep100.7, i64 1
  %arrayidx.i114.9 = getelementptr inbounds i8, i8* %a, i64 10
  %94 = load i8, i8* %arrayidx.i114.9, align 1
  %95 = load i8, i8* %scevgep100.8, align 1
  %call.i119.9 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #2
  %scevgep104.9 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 9
  store i8 %call.i119.9, i8* %scevgep104.9, align 1
  %scevgep100.9 = getelementptr i8, i8* %scevgep100.8, i64 1
  %96 = load i8, i8* %a, align 1
  %97 = load i8, i8* %scevgep100.9, align 1
  %call.i119.10 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #2
  %scevgep104.10 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 10
  store i8 %call.i119.10, i8* %scevgep104.10, align 1
  %98 = load i8, i8* %a, align 1
  %arrayidx4.i140 = getelementptr inbounds i8, i8* %b, i64 2
  %99 = load i8, i8* %arrayidx4.i140, align 1
  %call.i141 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99) #2
  %scevgep115 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i141, i8* %scevgep115, align 1
  %scevgep107 = getelementptr i8, i8* %a, i64 1
  %100 = load i8, i8* %scevgep107, align 1
  %arrayidx4.i140.1 = getelementptr inbounds i8, i8* %b, i64 3
  %101 = load i8, i8* %arrayidx4.i140.1, align 1
  %call.i141.1 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101) #2
  %scevgep115.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i141.1, i8* %scevgep115.1, align 1
  %scevgep107.1 = getelementptr i8, i8* %scevgep107, i64 1
  %102 = load i8, i8* %scevgep107.1, align 1
  %arrayidx4.i140.2 = getelementptr inbounds i8, i8* %b, i64 4
  %103 = load i8, i8* %arrayidx4.i140.2, align 1
  %call.i141.2 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103) #2
  %scevgep115.2 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i141.2, i8* %scevgep115.2, align 1
  %scevgep107.2 = getelementptr i8, i8* %scevgep107.1, i64 1
  %104 = load i8, i8* %scevgep107.2, align 1
  %arrayidx4.i140.3 = getelementptr inbounds i8, i8* %b, i64 5
  %105 = load i8, i8* %arrayidx4.i140.3, align 1
  %call.i141.3 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #2
  %scevgep115.3 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i141.3, i8* %scevgep115.3, align 1
  %scevgep107.3 = getelementptr i8, i8* %scevgep107.2, i64 1
  %106 = load i8, i8* %scevgep107.3, align 1
  %arrayidx4.i140.4 = getelementptr inbounds i8, i8* %b, i64 6
  %107 = load i8, i8* %arrayidx4.i140.4, align 1
  %call.i141.4 = call zeroext i8 @mult(i8 zeroext %106, i8 zeroext %107) #2
  %scevgep115.4 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i141.4, i8* %scevgep115.4, align 1
  %scevgep107.4 = getelementptr i8, i8* %scevgep107.3, i64 1
  %108 = load i8, i8* %scevgep107.4, align 1
  %arrayidx4.i140.5 = getelementptr inbounds i8, i8* %b, i64 7
  %109 = load i8, i8* %arrayidx4.i140.5, align 1
  %call.i141.5 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #2
  %scevgep115.5 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i141.5, i8* %scevgep115.5, align 1
  %scevgep107.5 = getelementptr i8, i8* %scevgep107.4, i64 1
  %110 = load i8, i8* %scevgep107.5, align 1
  %arrayidx4.i140.6 = getelementptr inbounds i8, i8* %b, i64 8
  %111 = load i8, i8* %arrayidx4.i140.6, align 1
  %call.i141.6 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111) #2
  %scevgep115.6 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i141.6, i8* %scevgep115.6, align 1
  %scevgep107.6 = getelementptr i8, i8* %scevgep107.5, i64 1
  %112 = load i8, i8* %scevgep107.6, align 1
  %arrayidx4.i140.7 = getelementptr inbounds i8, i8* %b, i64 9
  %113 = load i8, i8* %arrayidx4.i140.7, align 1
  %call.i141.7 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #2
  %scevgep115.7 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i141.7, i8* %scevgep115.7, align 1
  %scevgep107.7 = getelementptr i8, i8* %scevgep107.6, i64 1
  %114 = load i8, i8* %scevgep107.7, align 1
  %arrayidx4.i140.8 = getelementptr inbounds i8, i8* %b, i64 10
  %115 = load i8, i8* %arrayidx4.i140.8, align 1
  %call.i141.8 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115) #2
  %scevgep115.8 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i141.8, i8* %scevgep115.8, align 1
  %scevgep107.8 = getelementptr i8, i8* %scevgep107.7, i64 1
  %116 = load i8, i8* %scevgep107.8, align 1
  %117 = load i8, i8* %b, align 1
  %call.i141.9 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #2
  %scevgep115.9 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i141.9, i8* %scevgep115.9, align 1
  %scevgep107.9 = getelementptr i8, i8* %scevgep107.8, i64 1
  %118 = load i8, i8* %scevgep107.9, align 1
  %arrayidx4.i140.10 = getelementptr inbounds i8, i8* %b, i64 1
  %119 = load i8, i8* %arrayidx4.i140.10, align 1
  %call.i141.10 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #2
  %scevgep115.10 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i141.10, i8* %scevgep115.10, align 1
  %arrayidx.i158 = getelementptr inbounds i8, i8* %a, i64 2
  %120 = load i8, i8* %arrayidx.i158, align 1
  %121 = load i8, i8* %b, align 1
  %call.i163 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #2
  %scevgep124 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i163, i8* %scevgep124, align 1
  %scevgep120 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i158.1 = getelementptr inbounds i8, i8* %a, i64 3
  %122 = load i8, i8* %arrayidx.i158.1, align 1
  %123 = load i8, i8* %scevgep120, align 1
  %call.i163.1 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123) #2
  %scevgep124.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i163.1, i8* %scevgep124.1, align 1
  %scevgep120.1 = getelementptr i8, i8* %scevgep120, i64 1
  %arrayidx.i158.2 = getelementptr inbounds i8, i8* %a, i64 4
  %124 = load i8, i8* %arrayidx.i158.2, align 1
  %125 = load i8, i8* %scevgep120.1, align 1
  %call.i163.2 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125) #2
  %scevgep124.2 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i163.2, i8* %scevgep124.2, align 1
  %scevgep120.2 = getelementptr i8, i8* %scevgep120.1, i64 1
  %arrayidx.i158.3 = getelementptr inbounds i8, i8* %a, i64 5
  %126 = load i8, i8* %arrayidx.i158.3, align 1
  %127 = load i8, i8* %scevgep120.2, align 1
  %call.i163.3 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127) #2
  %scevgep124.3 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i163.3, i8* %scevgep124.3, align 1
  %scevgep120.3 = getelementptr i8, i8* %scevgep120.2, i64 1
  %arrayidx.i158.4 = getelementptr inbounds i8, i8* %a, i64 6
  %128 = load i8, i8* %arrayidx.i158.4, align 1
  %129 = load i8, i8* %scevgep120.3, align 1
  %call.i163.4 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #2
  %scevgep124.4 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i163.4, i8* %scevgep124.4, align 1
  %scevgep120.4 = getelementptr i8, i8* %scevgep120.3, i64 1
  %arrayidx.i158.5 = getelementptr inbounds i8, i8* %a, i64 7
  %130 = load i8, i8* %arrayidx.i158.5, align 1
  %131 = load i8, i8* %scevgep120.4, align 1
  %call.i163.5 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131) #2
  %scevgep124.5 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 5
  store i8 %call.i163.5, i8* %scevgep124.5, align 1
  %scevgep120.5 = getelementptr i8, i8* %scevgep120.4, i64 1
  %arrayidx.i158.6 = getelementptr inbounds i8, i8* %a, i64 8
  %132 = load i8, i8* %arrayidx.i158.6, align 1
  %133 = load i8, i8* %scevgep120.5, align 1
  %call.i163.6 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #2
  %scevgep124.6 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 6
  store i8 %call.i163.6, i8* %scevgep124.6, align 1
  %scevgep120.6 = getelementptr i8, i8* %scevgep120.5, i64 1
  %arrayidx.i158.7 = getelementptr inbounds i8, i8* %a, i64 9
  %134 = load i8, i8* %arrayidx.i158.7, align 1
  %135 = load i8, i8* %scevgep120.6, align 1
  %call.i163.7 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135) #2
  %scevgep124.7 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 7
  store i8 %call.i163.7, i8* %scevgep124.7, align 1
  %scevgep120.7 = getelementptr i8, i8* %scevgep120.6, i64 1
  %arrayidx.i158.8 = getelementptr inbounds i8, i8* %a, i64 10
  %136 = load i8, i8* %arrayidx.i158.8, align 1
  %137 = load i8, i8* %scevgep120.7, align 1
  %call.i163.8 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137) #2
  %scevgep124.8 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 8
  store i8 %call.i163.8, i8* %scevgep124.8, align 1
  %scevgep120.8 = getelementptr i8, i8* %scevgep120.7, i64 1
  %138 = load i8, i8* %a, align 1
  %139 = load i8, i8* %scevgep120.8, align 1
  %call.i163.9 = call zeroext i8 @mult(i8 zeroext %138, i8 zeroext %139) #2
  %scevgep124.9 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 9
  store i8 %call.i163.9, i8* %scevgep124.9, align 1
  %scevgep120.9 = getelementptr i8, i8* %scevgep120.8, i64 1
  %arrayidx.i158.10 = getelementptr inbounds i8, i8* %a, i64 1
  %140 = load i8, i8* %arrayidx.i158.10, align 1
  %141 = load i8, i8* %scevgep120.9, align 1
  %call.i163.10 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141) #2
  %scevgep124.10 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 10
  store i8 %call.i163.10, i8* %scevgep124.10, align 1
  %scevgep135 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 0
  %142 = load i8, i8* %c, align 1
  %conv.i = zext i8 %142 to i32
  %143 = load i8, i8* %scevgep135, align 1
  %conv5.i = zext i8 %143 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %c, align 1
  %scevgep127 = getelementptr i8, i8* %c, i64 1
  %scevgep134 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  %144 = bitcast i8* %scevgep134 to [11 x [11 x i8]]*
  %scevgep135.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %144, i64 0, i64 0, i64 0
  %145 = load i8, i8* %scevgep127, align 1
  %conv.i.1 = zext i8 %145 to i32
  %146 = load i8, i8* %scevgep135.1, align 1
  %conv5.i.1 = zext i8 %146 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep136.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1, i8* %scevgep136.1, align 1
  %scevgep127.1 = getelementptr i8, i8* %scevgep127, i64 1
  %scevgep134.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %144, i64 0, i64 0, i64 1
  %147 = bitcast i8* %scevgep134.1 to [11 x [11 x i8]]*
  %scevgep135.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %147, i64 0, i64 0, i64 0
  %148 = load i8, i8* %scevgep127.1, align 1
  %conv.i.2 = zext i8 %148 to i32
  %149 = load i8, i8* %scevgep135.2, align 1
  %conv5.i.2 = zext i8 %149 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep136.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2, i8* %scevgep136.2, align 1
  %scevgep127.2 = getelementptr i8, i8* %scevgep127.1, i64 1
  %scevgep134.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %147, i64 0, i64 0, i64 1
  %150 = bitcast i8* %scevgep134.2 to [11 x [11 x i8]]*
  %scevgep135.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %150, i64 0, i64 0, i64 0
  %151 = load i8, i8* %scevgep127.2, align 1
  %conv.i.3 = zext i8 %151 to i32
  %152 = load i8, i8* %scevgep135.3, align 1
  %conv5.i.3 = zext i8 %152 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep136.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3, i8* %scevgep136.3, align 1
  %scevgep127.3 = getelementptr i8, i8* %scevgep127.2, i64 1
  %scevgep134.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %150, i64 0, i64 0, i64 1
  %153 = bitcast i8* %scevgep134.3 to [11 x [11 x i8]]*
  %scevgep135.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %153, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep127.3, align 1
  %conv.i.4 = zext i8 %154 to i32
  %155 = load i8, i8* %scevgep135.4, align 1
  %conv5.i.4 = zext i8 %155 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep136.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4, i8* %scevgep136.4, align 1
  %scevgep127.4 = getelementptr i8, i8* %scevgep127.3, i64 1
  %scevgep134.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %153, i64 0, i64 0, i64 1
  %156 = bitcast i8* %scevgep134.4 to [11 x [11 x i8]]*
  %scevgep135.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %156, i64 0, i64 0, i64 0
  %157 = load i8, i8* %scevgep127.4, align 1
  %conv.i.5 = zext i8 %157 to i32
  %158 = load i8, i8* %scevgep135.5, align 1
  %conv5.i.5 = zext i8 %158 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep136.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i.5, i8* %scevgep136.5, align 1
  %scevgep127.5 = getelementptr i8, i8* %scevgep127.4, i64 1
  %scevgep134.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %156, i64 0, i64 0, i64 1
  %159 = bitcast i8* %scevgep134.5 to [11 x [11 x i8]]*
  %scevgep135.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep127.5, align 1
  %conv.i.6 = zext i8 %160 to i32
  %161 = load i8, i8* %scevgep135.6, align 1
  %conv5.i.6 = zext i8 %161 to i32
  %xor.i.6 = xor i32 %conv.i.6, %conv5.i.6
  %conv6.i.6 = trunc i32 %xor.i.6 to i8
  %scevgep136.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i.6, i8* %scevgep136.6, align 1
  %scevgep127.6 = getelementptr i8, i8* %scevgep127.5, i64 1
  %scevgep134.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 1
  %162 = bitcast i8* %scevgep134.6 to [11 x [11 x i8]]*
  %scevgep135.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %162, i64 0, i64 0, i64 0
  %163 = load i8, i8* %scevgep127.6, align 1
  %conv.i.7 = zext i8 %163 to i32
  %164 = load i8, i8* %scevgep135.7, align 1
  %conv5.i.7 = zext i8 %164 to i32
  %xor.i.7 = xor i32 %conv.i.7, %conv5.i.7
  %conv6.i.7 = trunc i32 %xor.i.7 to i8
  %scevgep136.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i.7, i8* %scevgep136.7, align 1
  %scevgep127.7 = getelementptr i8, i8* %scevgep127.6, i64 1
  %scevgep134.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %162, i64 0, i64 0, i64 1
  %165 = bitcast i8* %scevgep134.7 to [11 x [11 x i8]]*
  %scevgep135.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %165, i64 0, i64 0, i64 0
  %166 = load i8, i8* %scevgep127.7, align 1
  %conv.i.8 = zext i8 %166 to i32
  %167 = load i8, i8* %scevgep135.8, align 1
  %conv5.i.8 = zext i8 %167 to i32
  %xor.i.8 = xor i32 %conv.i.8, %conv5.i.8
  %conv6.i.8 = trunc i32 %xor.i.8 to i8
  %scevgep136.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i.8, i8* %scevgep136.8, align 1
  %scevgep127.8 = getelementptr i8, i8* %scevgep127.7, i64 1
  %scevgep134.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %165, i64 0, i64 0, i64 1
  %168 = bitcast i8* %scevgep134.8 to [11 x [11 x i8]]*
  %scevgep135.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %168, i64 0, i64 0, i64 0
  %169 = load i8, i8* %scevgep127.8, align 1
  %conv.i.9 = zext i8 %169 to i32
  %170 = load i8, i8* %scevgep135.9, align 1
  %conv5.i.9 = zext i8 %170 to i32
  %xor.i.9 = xor i32 %conv.i.9, %conv5.i.9
  %conv6.i.9 = trunc i32 %xor.i.9 to i8
  %scevgep136.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i.9, i8* %scevgep136.9, align 1
  %scevgep127.9 = getelementptr i8, i8* %scevgep127.8, i64 1
  %scevgep134.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %168, i64 0, i64 0, i64 1
  %171 = bitcast i8* %scevgep134.9 to [11 x [11 x i8]]*
  %scevgep135.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %171, i64 0, i64 0, i64 0
  %172 = load i8, i8* %scevgep127.9, align 1
  %conv.i.10 = zext i8 %172 to i32
  %173 = load i8, i8* %scevgep135.10, align 1
  %conv5.i.10 = zext i8 %173 to i32
  %xor.i.10 = xor i32 %conv.i.10, %conv5.i.10
  %conv6.i.10 = trunc i32 %xor.i.10 to i8
  %scevgep136.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i.10, i8* %scevgep136.10, align 1
  %scevgep145 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  %174 = load i8, i8* %c, align 1
  %conv.i216 = zext i8 %174 to i32
  %175 = load i8, i8* %scevgep145, align 1
  %conv5.i221 = zext i8 %175 to i32
  %xor.i222 = xor i32 %conv.i216, %conv5.i221
  %conv6.i223 = trunc i32 %xor.i222 to i8
  store i8 %conv6.i223, i8* %c, align 1
  %scevgep139 = getelementptr i8, i8* %c, i64 1
  %scevgep144 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 1
  %176 = bitcast i8* %scevgep144 to [11 x i8]*
  %scevgep145.1 = getelementptr [11 x i8], [11 x i8]* %176, i64 0, i64 0
  %177 = load i8, i8* %scevgep139, align 1
  %conv.i216.1 = zext i8 %177 to i32
  %178 = load i8, i8* %scevgep145.1, align 1
  %conv5.i221.1 = zext i8 %178 to i32
  %xor.i222.1 = xor i32 %conv.i216.1, %conv5.i221.1
  %conv6.i223.1 = trunc i32 %xor.i222.1 to i8
  %scevgep146.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i223.1, i8* %scevgep146.1, align 1
  %scevgep139.1 = getelementptr i8, i8* %scevgep139, i64 1
  %scevgep144.1 = getelementptr [11 x i8], [11 x i8]* %176, i64 0, i64 1
  %179 = bitcast i8* %scevgep144.1 to [11 x i8]*
  %scevgep145.2 = getelementptr [11 x i8], [11 x i8]* %179, i64 0, i64 0
  %180 = load i8, i8* %scevgep139.1, align 1
  %conv.i216.2 = zext i8 %180 to i32
  %181 = load i8, i8* %scevgep145.2, align 1
  %conv5.i221.2 = zext i8 %181 to i32
  %xor.i222.2 = xor i32 %conv.i216.2, %conv5.i221.2
  %conv6.i223.2 = trunc i32 %xor.i222.2 to i8
  %scevgep146.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i223.2, i8* %scevgep146.2, align 1
  %scevgep139.2 = getelementptr i8, i8* %scevgep139.1, i64 1
  %scevgep144.2 = getelementptr [11 x i8], [11 x i8]* %179, i64 0, i64 1
  %182 = bitcast i8* %scevgep144.2 to [11 x i8]*
  %scevgep145.3 = getelementptr [11 x i8], [11 x i8]* %182, i64 0, i64 0
  %183 = load i8, i8* %scevgep139.2, align 1
  %conv.i216.3 = zext i8 %183 to i32
  %184 = load i8, i8* %scevgep145.3, align 1
  %conv5.i221.3 = zext i8 %184 to i32
  %xor.i222.3 = xor i32 %conv.i216.3, %conv5.i221.3
  %conv6.i223.3 = trunc i32 %xor.i222.3 to i8
  %scevgep146.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i223.3, i8* %scevgep146.3, align 1
  %scevgep139.3 = getelementptr i8, i8* %scevgep139.2, i64 1
  %scevgep144.3 = getelementptr [11 x i8], [11 x i8]* %182, i64 0, i64 1
  %185 = bitcast i8* %scevgep144.3 to [11 x i8]*
  %scevgep145.4 = getelementptr [11 x i8], [11 x i8]* %185, i64 0, i64 0
  %186 = load i8, i8* %scevgep139.3, align 1
  %conv.i216.4 = zext i8 %186 to i32
  %187 = load i8, i8* %scevgep145.4, align 1
  %conv5.i221.4 = zext i8 %187 to i32
  %xor.i222.4 = xor i32 %conv.i216.4, %conv5.i221.4
  %conv6.i223.4 = trunc i32 %xor.i222.4 to i8
  %scevgep146.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i223.4, i8* %scevgep146.4, align 1
  %scevgep139.4 = getelementptr i8, i8* %scevgep139.3, i64 1
  %scevgep144.4 = getelementptr [11 x i8], [11 x i8]* %185, i64 0, i64 1
  %188 = bitcast i8* %scevgep144.4 to [11 x i8]*
  %scevgep145.5 = getelementptr [11 x i8], [11 x i8]* %188, i64 0, i64 0
  %189 = load i8, i8* %scevgep139.4, align 1
  %conv.i216.5 = zext i8 %189 to i32
  %190 = load i8, i8* %scevgep145.5, align 1
  %conv5.i221.5 = zext i8 %190 to i32
  %xor.i222.5 = xor i32 %conv.i216.5, %conv5.i221.5
  %conv6.i223.5 = trunc i32 %xor.i222.5 to i8
  %scevgep146.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i223.5, i8* %scevgep146.5, align 1
  %scevgep139.5 = getelementptr i8, i8* %scevgep139.4, i64 1
  %scevgep144.5 = getelementptr [11 x i8], [11 x i8]* %188, i64 0, i64 1
  %191 = bitcast i8* %scevgep144.5 to [11 x i8]*
  %scevgep145.6 = getelementptr [11 x i8], [11 x i8]* %191, i64 0, i64 0
  %192 = load i8, i8* %scevgep139.5, align 1
  %conv.i216.6 = zext i8 %192 to i32
  %193 = load i8, i8* %scevgep145.6, align 1
  %conv5.i221.6 = zext i8 %193 to i32
  %xor.i222.6 = xor i32 %conv.i216.6, %conv5.i221.6
  %conv6.i223.6 = trunc i32 %xor.i222.6 to i8
  %scevgep146.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i223.6, i8* %scevgep146.6, align 1
  %scevgep139.6 = getelementptr i8, i8* %scevgep139.5, i64 1
  %scevgep144.6 = getelementptr [11 x i8], [11 x i8]* %191, i64 0, i64 1
  %194 = bitcast i8* %scevgep144.6 to [11 x i8]*
  %scevgep145.7 = getelementptr [11 x i8], [11 x i8]* %194, i64 0, i64 0
  %195 = load i8, i8* %scevgep139.6, align 1
  %conv.i216.7 = zext i8 %195 to i32
  %196 = load i8, i8* %scevgep145.7, align 1
  %conv5.i221.7 = zext i8 %196 to i32
  %xor.i222.7 = xor i32 %conv.i216.7, %conv5.i221.7
  %conv6.i223.7 = trunc i32 %xor.i222.7 to i8
  %scevgep146.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i223.7, i8* %scevgep146.7, align 1
  %scevgep139.7 = getelementptr i8, i8* %scevgep139.6, i64 1
  %scevgep144.7 = getelementptr [11 x i8], [11 x i8]* %194, i64 0, i64 1
  %197 = bitcast i8* %scevgep144.7 to [11 x i8]*
  %scevgep145.8 = getelementptr [11 x i8], [11 x i8]* %197, i64 0, i64 0
  %198 = load i8, i8* %scevgep139.7, align 1
  %conv.i216.8 = zext i8 %198 to i32
  %199 = load i8, i8* %scevgep145.8, align 1
  %conv5.i221.8 = zext i8 %199 to i32
  %xor.i222.8 = xor i32 %conv.i216.8, %conv5.i221.8
  %conv6.i223.8 = trunc i32 %xor.i222.8 to i8
  %scevgep146.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i223.8, i8* %scevgep146.8, align 1
  %scevgep139.8 = getelementptr i8, i8* %scevgep139.7, i64 1
  %scevgep144.8 = getelementptr [11 x i8], [11 x i8]* %197, i64 0, i64 1
  %200 = bitcast i8* %scevgep144.8 to [11 x i8]*
  %scevgep145.9 = getelementptr [11 x i8], [11 x i8]* %200, i64 0, i64 0
  %201 = load i8, i8* %scevgep139.8, align 1
  %conv.i216.9 = zext i8 %201 to i32
  %202 = load i8, i8* %scevgep145.9, align 1
  %conv5.i221.9 = zext i8 %202 to i32
  %xor.i222.9 = xor i32 %conv.i216.9, %conv5.i221.9
  %conv6.i223.9 = trunc i32 %xor.i222.9 to i8
  %scevgep146.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i223.9, i8* %scevgep146.9, align 1
  %scevgep139.9 = getelementptr i8, i8* %scevgep139.8, i64 1
  %scevgep144.9 = getelementptr [11 x i8], [11 x i8]* %200, i64 0, i64 1
  %203 = bitcast i8* %scevgep144.9 to [11 x i8]*
  %scevgep145.10 = getelementptr [11 x i8], [11 x i8]* %203, i64 0, i64 0
  %204 = load i8, i8* %scevgep139.9, align 1
  %conv.i216.10 = zext i8 %204 to i32
  %205 = load i8, i8* %scevgep145.10, align 1
  %conv5.i221.10 = zext i8 %205 to i32
  %xor.i222.10 = xor i32 %conv.i216.10, %conv5.i221.10
  %conv6.i223.10 = trunc i32 %xor.i222.10 to i8
  %scevgep146.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i223.10, i8* %scevgep146.10, align 1
  %scevgep155 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 0
  %206 = load i8, i8* %c, align 1
  %conv.i363 = zext i8 %206 to i32
  %207 = load i8, i8* %scevgep155, align 1
  %conv5.i368 = zext i8 %207 to i32
  %xor.i369 = xor i32 %conv.i363, %conv5.i368
  %conv6.i370 = trunc i32 %xor.i369 to i8
  store i8 %conv6.i370, i8* %c, align 1
  %scevgep149 = getelementptr i8, i8* %c, i64 1
  %scevgep154 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 1
  %208 = bitcast i8* %scevgep154 to [11 x i8]*
  %scevgep155.1 = getelementptr [11 x i8], [11 x i8]* %208, i64 0, i64 0
  %209 = load i8, i8* %scevgep149, align 1
  %conv.i363.1 = zext i8 %209 to i32
  %210 = load i8, i8* %scevgep155.1, align 1
  %conv5.i368.1 = zext i8 %210 to i32
  %xor.i369.1 = xor i32 %conv.i363.1, %conv5.i368.1
  %conv6.i370.1 = trunc i32 %xor.i369.1 to i8
  %scevgep156.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i370.1, i8* %scevgep156.1, align 1
  %scevgep149.1 = getelementptr i8, i8* %scevgep149, i64 1
  %scevgep154.1 = getelementptr [11 x i8], [11 x i8]* %208, i64 0, i64 1
  %211 = bitcast i8* %scevgep154.1 to [11 x i8]*
  %scevgep155.2 = getelementptr [11 x i8], [11 x i8]* %211, i64 0, i64 0
  %212 = load i8, i8* %scevgep149.1, align 1
  %conv.i363.2 = zext i8 %212 to i32
  %213 = load i8, i8* %scevgep155.2, align 1
  %conv5.i368.2 = zext i8 %213 to i32
  %xor.i369.2 = xor i32 %conv.i363.2, %conv5.i368.2
  %conv6.i370.2 = trunc i32 %xor.i369.2 to i8
  %scevgep156.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i370.2, i8* %scevgep156.2, align 1
  %scevgep149.2 = getelementptr i8, i8* %scevgep149.1, i64 1
  %scevgep154.2 = getelementptr [11 x i8], [11 x i8]* %211, i64 0, i64 1
  %214 = bitcast i8* %scevgep154.2 to [11 x i8]*
  %scevgep155.3 = getelementptr [11 x i8], [11 x i8]* %214, i64 0, i64 0
  %215 = load i8, i8* %scevgep149.2, align 1
  %conv.i363.3 = zext i8 %215 to i32
  %216 = load i8, i8* %scevgep155.3, align 1
  %conv5.i368.3 = zext i8 %216 to i32
  %xor.i369.3 = xor i32 %conv.i363.3, %conv5.i368.3
  %conv6.i370.3 = trunc i32 %xor.i369.3 to i8
  %scevgep156.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i370.3, i8* %scevgep156.3, align 1
  %scevgep149.3 = getelementptr i8, i8* %scevgep149.2, i64 1
  %scevgep154.3 = getelementptr [11 x i8], [11 x i8]* %214, i64 0, i64 1
  %217 = bitcast i8* %scevgep154.3 to [11 x i8]*
  %scevgep155.4 = getelementptr [11 x i8], [11 x i8]* %217, i64 0, i64 0
  %218 = load i8, i8* %scevgep149.3, align 1
  %conv.i363.4 = zext i8 %218 to i32
  %219 = load i8, i8* %scevgep155.4, align 1
  %conv5.i368.4 = zext i8 %219 to i32
  %xor.i369.4 = xor i32 %conv.i363.4, %conv5.i368.4
  %conv6.i370.4 = trunc i32 %xor.i369.4 to i8
  %scevgep156.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i370.4, i8* %scevgep156.4, align 1
  %scevgep149.4 = getelementptr i8, i8* %scevgep149.3, i64 1
  %scevgep154.4 = getelementptr [11 x i8], [11 x i8]* %217, i64 0, i64 1
  %220 = bitcast i8* %scevgep154.4 to [11 x i8]*
  %scevgep155.5 = getelementptr [11 x i8], [11 x i8]* %220, i64 0, i64 0
  %221 = load i8, i8* %scevgep149.4, align 1
  %conv.i363.5 = zext i8 %221 to i32
  %222 = load i8, i8* %scevgep155.5, align 1
  %conv5.i368.5 = zext i8 %222 to i32
  %xor.i369.5 = xor i32 %conv.i363.5, %conv5.i368.5
  %conv6.i370.5 = trunc i32 %xor.i369.5 to i8
  %scevgep156.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i370.5, i8* %scevgep156.5, align 1
  %scevgep149.5 = getelementptr i8, i8* %scevgep149.4, i64 1
  %scevgep154.5 = getelementptr [11 x i8], [11 x i8]* %220, i64 0, i64 1
  %223 = bitcast i8* %scevgep154.5 to [11 x i8]*
  %scevgep155.6 = getelementptr [11 x i8], [11 x i8]* %223, i64 0, i64 0
  %224 = load i8, i8* %scevgep149.5, align 1
  %conv.i363.6 = zext i8 %224 to i32
  %225 = load i8, i8* %scevgep155.6, align 1
  %conv5.i368.6 = zext i8 %225 to i32
  %xor.i369.6 = xor i32 %conv.i363.6, %conv5.i368.6
  %conv6.i370.6 = trunc i32 %xor.i369.6 to i8
  %scevgep156.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i370.6, i8* %scevgep156.6, align 1
  %scevgep149.6 = getelementptr i8, i8* %scevgep149.5, i64 1
  %scevgep154.6 = getelementptr [11 x i8], [11 x i8]* %223, i64 0, i64 1
  %226 = bitcast i8* %scevgep154.6 to [11 x i8]*
  %scevgep155.7 = getelementptr [11 x i8], [11 x i8]* %226, i64 0, i64 0
  %227 = load i8, i8* %scevgep149.6, align 1
  %conv.i363.7 = zext i8 %227 to i32
  %228 = load i8, i8* %scevgep155.7, align 1
  %conv5.i368.7 = zext i8 %228 to i32
  %xor.i369.7 = xor i32 %conv.i363.7, %conv5.i368.7
  %conv6.i370.7 = trunc i32 %xor.i369.7 to i8
  %scevgep156.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i370.7, i8* %scevgep156.7, align 1
  %scevgep149.7 = getelementptr i8, i8* %scevgep149.6, i64 1
  %scevgep154.7 = getelementptr [11 x i8], [11 x i8]* %226, i64 0, i64 1
  %229 = bitcast i8* %scevgep154.7 to [11 x i8]*
  %scevgep155.8 = getelementptr [11 x i8], [11 x i8]* %229, i64 0, i64 0
  %230 = load i8, i8* %scevgep149.7, align 1
  %conv.i363.8 = zext i8 %230 to i32
  %231 = load i8, i8* %scevgep155.8, align 1
  %conv5.i368.8 = zext i8 %231 to i32
  %xor.i369.8 = xor i32 %conv.i363.8, %conv5.i368.8
  %conv6.i370.8 = trunc i32 %xor.i369.8 to i8
  %scevgep156.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i370.8, i8* %scevgep156.8, align 1
  %scevgep149.8 = getelementptr i8, i8* %scevgep149.7, i64 1
  %scevgep154.8 = getelementptr [11 x i8], [11 x i8]* %229, i64 0, i64 1
  %232 = bitcast i8* %scevgep154.8 to [11 x i8]*
  %scevgep155.9 = getelementptr [11 x i8], [11 x i8]* %232, i64 0, i64 0
  %233 = load i8, i8* %scevgep149.8, align 1
  %conv.i363.9 = zext i8 %233 to i32
  %234 = load i8, i8* %scevgep155.9, align 1
  %conv5.i368.9 = zext i8 %234 to i32
  %xor.i369.9 = xor i32 %conv.i363.9, %conv5.i368.9
  %conv6.i370.9 = trunc i32 %xor.i369.9 to i8
  %scevgep156.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i370.9, i8* %scevgep156.9, align 1
  %scevgep149.9 = getelementptr i8, i8* %scevgep149.8, i64 1
  %scevgep154.9 = getelementptr [11 x i8], [11 x i8]* %232, i64 0, i64 1
  %235 = bitcast i8* %scevgep154.9 to [11 x i8]*
  %scevgep155.10 = getelementptr [11 x i8], [11 x i8]* %235, i64 0, i64 0
  %236 = load i8, i8* %scevgep149.9, align 1
  %conv.i363.10 = zext i8 %236 to i32
  %237 = load i8, i8* %scevgep155.10, align 1
  %conv5.i368.10 = zext i8 %237 to i32
  %xor.i369.10 = xor i32 %conv.i363.10, %conv5.i368.10
  %conv6.i370.10 = trunc i32 %xor.i369.10 to i8
  %scevgep156.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i370.10, i8* %scevgep156.10, align 1
  %arrayidx42 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx42, i64 0, i64 0
  %238 = load i8, i8* %c, align 1
  %conv.i410 = zext i8 %238 to i32
  %arrayidx4.i414 = getelementptr inbounds i8, i8* %arraydecay43, i64 1
  %239 = load i8, i8* %arrayidx4.i414, align 1
  %conv5.i415 = zext i8 %239 to i32
  %xor.i416 = xor i32 %conv.i410, %conv5.i415
  %conv6.i417 = trunc i32 %xor.i416 to i8
  store i8 %conv6.i417, i8* %c, align 1
  %scevgep159 = getelementptr i8, i8* %c, i64 1
  %240 = load i8, i8* %scevgep159, align 1
  %conv.i410.1 = zext i8 %240 to i32
  %arrayidx4.i414.1 = getelementptr inbounds i8, i8* %arraydecay43, i64 2
  %241 = load i8, i8* %arrayidx4.i414.1, align 1
  %conv5.i415.1 = zext i8 %241 to i32
  %xor.i416.1 = xor i32 %conv.i410.1, %conv5.i415.1
  %conv6.i417.1 = trunc i32 %xor.i416.1 to i8
  %scevgep165.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i417.1, i8* %scevgep165.1, align 1
  %scevgep159.1 = getelementptr i8, i8* %scevgep159, i64 1
  %242 = load i8, i8* %scevgep159.1, align 1
  %conv.i410.2 = zext i8 %242 to i32
  %arrayidx4.i414.2 = getelementptr inbounds i8, i8* %arraydecay43, i64 3
  %243 = load i8, i8* %arrayidx4.i414.2, align 1
  %conv5.i415.2 = zext i8 %243 to i32
  %xor.i416.2 = xor i32 %conv.i410.2, %conv5.i415.2
  %conv6.i417.2 = trunc i32 %xor.i416.2 to i8
  %scevgep165.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i417.2, i8* %scevgep165.2, align 1
  %scevgep159.2 = getelementptr i8, i8* %scevgep159.1, i64 1
  %244 = load i8, i8* %scevgep159.2, align 1
  %conv.i410.3 = zext i8 %244 to i32
  %arrayidx4.i414.3 = getelementptr inbounds i8, i8* %arraydecay43, i64 4
  %245 = load i8, i8* %arrayidx4.i414.3, align 1
  %conv5.i415.3 = zext i8 %245 to i32
  %xor.i416.3 = xor i32 %conv.i410.3, %conv5.i415.3
  %conv6.i417.3 = trunc i32 %xor.i416.3 to i8
  %scevgep165.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i417.3, i8* %scevgep165.3, align 1
  %scevgep159.3 = getelementptr i8, i8* %scevgep159.2, i64 1
  %246 = load i8, i8* %scevgep159.3, align 1
  %conv.i410.4 = zext i8 %246 to i32
  %arrayidx4.i414.4 = getelementptr inbounds i8, i8* %arraydecay43, i64 5
  %247 = load i8, i8* %arrayidx4.i414.4, align 1
  %conv5.i415.4 = zext i8 %247 to i32
  %xor.i416.4 = xor i32 %conv.i410.4, %conv5.i415.4
  %conv6.i417.4 = trunc i32 %xor.i416.4 to i8
  %scevgep165.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i417.4, i8* %scevgep165.4, align 1
  %scevgep159.4 = getelementptr i8, i8* %scevgep159.3, i64 1
  %248 = load i8, i8* %scevgep159.4, align 1
  %conv.i410.5 = zext i8 %248 to i32
  %arrayidx4.i414.5 = getelementptr inbounds i8, i8* %arraydecay43, i64 6
  %249 = load i8, i8* %arrayidx4.i414.5, align 1
  %conv5.i415.5 = zext i8 %249 to i32
  %xor.i416.5 = xor i32 %conv.i410.5, %conv5.i415.5
  %conv6.i417.5 = trunc i32 %xor.i416.5 to i8
  %scevgep165.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i417.5, i8* %scevgep165.5, align 1
  %scevgep159.5 = getelementptr i8, i8* %scevgep159.4, i64 1
  %250 = load i8, i8* %scevgep159.5, align 1
  %conv.i410.6 = zext i8 %250 to i32
  %arrayidx4.i414.6 = getelementptr inbounds i8, i8* %arraydecay43, i64 7
  %251 = load i8, i8* %arrayidx4.i414.6, align 1
  %conv5.i415.6 = zext i8 %251 to i32
  %xor.i416.6 = xor i32 %conv.i410.6, %conv5.i415.6
  %conv6.i417.6 = trunc i32 %xor.i416.6 to i8
  %scevgep165.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i417.6, i8* %scevgep165.6, align 1
  %scevgep159.6 = getelementptr i8, i8* %scevgep159.5, i64 1
  %252 = load i8, i8* %scevgep159.6, align 1
  %conv.i410.7 = zext i8 %252 to i32
  %arrayidx4.i414.7 = getelementptr inbounds i8, i8* %arraydecay43, i64 8
  %253 = load i8, i8* %arrayidx4.i414.7, align 1
  %conv5.i415.7 = zext i8 %253 to i32
  %xor.i416.7 = xor i32 %conv.i410.7, %conv5.i415.7
  %conv6.i417.7 = trunc i32 %xor.i416.7 to i8
  %scevgep165.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i417.7, i8* %scevgep165.7, align 1
  %scevgep159.7 = getelementptr i8, i8* %scevgep159.6, i64 1
  %254 = load i8, i8* %scevgep159.7, align 1
  %conv.i410.8 = zext i8 %254 to i32
  %arrayidx4.i414.8 = getelementptr inbounds i8, i8* %arraydecay43, i64 9
  %255 = load i8, i8* %arrayidx4.i414.8, align 1
  %conv5.i415.8 = zext i8 %255 to i32
  %xor.i416.8 = xor i32 %conv.i410.8, %conv5.i415.8
  %conv6.i417.8 = trunc i32 %xor.i416.8 to i8
  %scevgep165.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i417.8, i8* %scevgep165.8, align 1
  %scevgep159.8 = getelementptr i8, i8* %scevgep159.7, i64 1
  %256 = load i8, i8* %scevgep159.8, align 1
  %conv.i410.9 = zext i8 %256 to i32
  %arrayidx4.i414.9 = getelementptr inbounds i8, i8* %arraydecay43, i64 10
  %257 = load i8, i8* %arrayidx4.i414.9, align 1
  %conv5.i415.9 = zext i8 %257 to i32
  %xor.i416.9 = xor i32 %conv.i410.9, %conv5.i415.9
  %conv6.i417.9 = trunc i32 %xor.i416.9 to i8
  %scevgep165.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i417.9, i8* %scevgep165.9, align 1
  %scevgep159.9 = getelementptr i8, i8* %scevgep159.8, i64 1
  %258 = load i8, i8* %scevgep159.9, align 1
  %conv.i410.10 = zext i8 %258 to i32
  %259 = load i8, i8* %arraydecay43, align 1
  %conv5.i415.10 = zext i8 %259 to i32
  %xor.i416.10 = xor i32 %conv.i410.10, %conv5.i415.10
  %conv6.i417.10 = trunc i32 %xor.i416.10 to i8
  %scevgep165.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i417.10, i8* %scevgep165.10, align 1
  %scevgep174 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  %260 = load i8, i8* %c, align 1
  %conv.i460 = zext i8 %260 to i32
  %261 = load i8, i8* %scevgep174, align 1
  %conv5.i465 = zext i8 %261 to i32
  %xor.i466 = xor i32 %conv.i460, %conv5.i465
  %conv6.i467 = trunc i32 %xor.i466 to i8
  store i8 %conv6.i467, i8* %c, align 1
  %scevgep168 = getelementptr i8, i8* %c, i64 1
  %scevgep173 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 1
  %262 = bitcast i8* %scevgep173 to [11 x i8]*
  %scevgep174.1 = getelementptr [11 x i8], [11 x i8]* %262, i64 0, i64 0
  %263 = load i8, i8* %scevgep168, align 1
  %conv.i460.1 = zext i8 %263 to i32
  %264 = load i8, i8* %scevgep174.1, align 1
  %conv5.i465.1 = zext i8 %264 to i32
  %xor.i466.1 = xor i32 %conv.i460.1, %conv5.i465.1
  %conv6.i467.1 = trunc i32 %xor.i466.1 to i8
  %scevgep175.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i467.1, i8* %scevgep175.1, align 1
  %scevgep168.1 = getelementptr i8, i8* %scevgep168, i64 1
  %scevgep173.1 = getelementptr [11 x i8], [11 x i8]* %262, i64 0, i64 1
  %265 = bitcast i8* %scevgep173.1 to [11 x i8]*
  %scevgep174.2 = getelementptr [11 x i8], [11 x i8]* %265, i64 0, i64 0
  %266 = load i8, i8* %scevgep168.1, align 1
  %conv.i460.2 = zext i8 %266 to i32
  %267 = load i8, i8* %scevgep174.2, align 1
  %conv5.i465.2 = zext i8 %267 to i32
  %xor.i466.2 = xor i32 %conv.i460.2, %conv5.i465.2
  %conv6.i467.2 = trunc i32 %xor.i466.2 to i8
  %scevgep175.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i467.2, i8* %scevgep175.2, align 1
  %scevgep168.2 = getelementptr i8, i8* %scevgep168.1, i64 1
  %scevgep173.2 = getelementptr [11 x i8], [11 x i8]* %265, i64 0, i64 1
  %268 = bitcast i8* %scevgep173.2 to [11 x i8]*
  %scevgep174.3 = getelementptr [11 x i8], [11 x i8]* %268, i64 0, i64 0
  %269 = load i8, i8* %scevgep168.2, align 1
  %conv.i460.3 = zext i8 %269 to i32
  %270 = load i8, i8* %scevgep174.3, align 1
  %conv5.i465.3 = zext i8 %270 to i32
  %xor.i466.3 = xor i32 %conv.i460.3, %conv5.i465.3
  %conv6.i467.3 = trunc i32 %xor.i466.3 to i8
  %scevgep175.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i467.3, i8* %scevgep175.3, align 1
  %scevgep168.3 = getelementptr i8, i8* %scevgep168.2, i64 1
  %scevgep173.3 = getelementptr [11 x i8], [11 x i8]* %268, i64 0, i64 1
  %271 = bitcast i8* %scevgep173.3 to [11 x i8]*
  %scevgep174.4 = getelementptr [11 x i8], [11 x i8]* %271, i64 0, i64 0
  %272 = load i8, i8* %scevgep168.3, align 1
  %conv.i460.4 = zext i8 %272 to i32
  %273 = load i8, i8* %scevgep174.4, align 1
  %conv5.i465.4 = zext i8 %273 to i32
  %xor.i466.4 = xor i32 %conv.i460.4, %conv5.i465.4
  %conv6.i467.4 = trunc i32 %xor.i466.4 to i8
  %scevgep175.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i467.4, i8* %scevgep175.4, align 1
  %scevgep168.4 = getelementptr i8, i8* %scevgep168.3, i64 1
  %scevgep173.4 = getelementptr [11 x i8], [11 x i8]* %271, i64 0, i64 1
  %274 = bitcast i8* %scevgep173.4 to [11 x i8]*
  %scevgep174.5 = getelementptr [11 x i8], [11 x i8]* %274, i64 0, i64 0
  %275 = load i8, i8* %scevgep168.4, align 1
  %conv.i460.5 = zext i8 %275 to i32
  %276 = load i8, i8* %scevgep174.5, align 1
  %conv5.i465.5 = zext i8 %276 to i32
  %xor.i466.5 = xor i32 %conv.i460.5, %conv5.i465.5
  %conv6.i467.5 = trunc i32 %xor.i466.5 to i8
  %scevgep175.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i467.5, i8* %scevgep175.5, align 1
  %scevgep168.5 = getelementptr i8, i8* %scevgep168.4, i64 1
  %scevgep173.5 = getelementptr [11 x i8], [11 x i8]* %274, i64 0, i64 1
  %277 = bitcast i8* %scevgep173.5 to [11 x i8]*
  %scevgep174.6 = getelementptr [11 x i8], [11 x i8]* %277, i64 0, i64 0
  %278 = load i8, i8* %scevgep168.5, align 1
  %conv.i460.6 = zext i8 %278 to i32
  %279 = load i8, i8* %scevgep174.6, align 1
  %conv5.i465.6 = zext i8 %279 to i32
  %xor.i466.6 = xor i32 %conv.i460.6, %conv5.i465.6
  %conv6.i467.6 = trunc i32 %xor.i466.6 to i8
  %scevgep175.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i467.6, i8* %scevgep175.6, align 1
  %scevgep168.6 = getelementptr i8, i8* %scevgep168.5, i64 1
  %scevgep173.6 = getelementptr [11 x i8], [11 x i8]* %277, i64 0, i64 1
  %280 = bitcast i8* %scevgep173.6 to [11 x i8]*
  %scevgep174.7 = getelementptr [11 x i8], [11 x i8]* %280, i64 0, i64 0
  %281 = load i8, i8* %scevgep168.6, align 1
  %conv.i460.7 = zext i8 %281 to i32
  %282 = load i8, i8* %scevgep174.7, align 1
  %conv5.i465.7 = zext i8 %282 to i32
  %xor.i466.7 = xor i32 %conv.i460.7, %conv5.i465.7
  %conv6.i467.7 = trunc i32 %xor.i466.7 to i8
  %scevgep175.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i467.7, i8* %scevgep175.7, align 1
  %scevgep168.7 = getelementptr i8, i8* %scevgep168.6, i64 1
  %scevgep173.7 = getelementptr [11 x i8], [11 x i8]* %280, i64 0, i64 1
  %283 = bitcast i8* %scevgep173.7 to [11 x i8]*
  %scevgep174.8 = getelementptr [11 x i8], [11 x i8]* %283, i64 0, i64 0
  %284 = load i8, i8* %scevgep168.7, align 1
  %conv.i460.8 = zext i8 %284 to i32
  %285 = load i8, i8* %scevgep174.8, align 1
  %conv5.i465.8 = zext i8 %285 to i32
  %xor.i466.8 = xor i32 %conv.i460.8, %conv5.i465.8
  %conv6.i467.8 = trunc i32 %xor.i466.8 to i8
  %scevgep175.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i467.8, i8* %scevgep175.8, align 1
  %scevgep168.8 = getelementptr i8, i8* %scevgep168.7, i64 1
  %scevgep173.8 = getelementptr [11 x i8], [11 x i8]* %283, i64 0, i64 1
  %286 = bitcast i8* %scevgep173.8 to [11 x i8]*
  %scevgep174.9 = getelementptr [11 x i8], [11 x i8]* %286, i64 0, i64 0
  %287 = load i8, i8* %scevgep168.8, align 1
  %conv.i460.9 = zext i8 %287 to i32
  %288 = load i8, i8* %scevgep174.9, align 1
  %conv5.i465.9 = zext i8 %288 to i32
  %xor.i466.9 = xor i32 %conv.i460.9, %conv5.i465.9
  %conv6.i467.9 = trunc i32 %xor.i466.9 to i8
  %scevgep175.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i467.9, i8* %scevgep175.9, align 1
  %scevgep168.9 = getelementptr i8, i8* %scevgep168.8, i64 1
  %scevgep173.9 = getelementptr [11 x i8], [11 x i8]* %286, i64 0, i64 1
  %289 = bitcast i8* %scevgep173.9 to [11 x i8]*
  %scevgep174.10 = getelementptr [11 x i8], [11 x i8]* %289, i64 0, i64 0
  %290 = load i8, i8* %scevgep168.9, align 1
  %conv.i460.10 = zext i8 %290 to i32
  %291 = load i8, i8* %scevgep174.10, align 1
  %conv5.i465.10 = zext i8 %291 to i32
  %xor.i466.10 = xor i32 %conv.i460.10, %conv5.i465.10
  %conv6.i467.10 = trunc i32 %xor.i466.10 to i8
  %scevgep175.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i467.10, i8* %scevgep175.10, align 1
  %scevgep184 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 0
  %292 = load i8, i8* %c, align 1
  %conv.i435 = zext i8 %292 to i32
  %293 = load i8, i8* %scevgep184, align 1
  %conv5.i440 = zext i8 %293 to i32
  %xor.i441 = xor i32 %conv.i435, %conv5.i440
  %conv6.i442 = trunc i32 %xor.i441 to i8
  store i8 %conv6.i442, i8* %c, align 1
  %scevgep178 = getelementptr i8, i8* %c, i64 1
  %scevgep183 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 1
  %294 = bitcast i8* %scevgep183 to [11 x i8]*
  %scevgep184.1 = getelementptr [11 x i8], [11 x i8]* %294, i64 0, i64 0
  %295 = load i8, i8* %scevgep178, align 1
  %conv.i435.1 = zext i8 %295 to i32
  %296 = load i8, i8* %scevgep184.1, align 1
  %conv5.i440.1 = zext i8 %296 to i32
  %xor.i441.1 = xor i32 %conv.i435.1, %conv5.i440.1
  %conv6.i442.1 = trunc i32 %xor.i441.1 to i8
  %scevgep185.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i442.1, i8* %scevgep185.1, align 1
  %scevgep178.1 = getelementptr i8, i8* %scevgep178, i64 1
  %scevgep183.1 = getelementptr [11 x i8], [11 x i8]* %294, i64 0, i64 1
  %297 = bitcast i8* %scevgep183.1 to [11 x i8]*
  %scevgep184.2 = getelementptr [11 x i8], [11 x i8]* %297, i64 0, i64 0
  %298 = load i8, i8* %scevgep178.1, align 1
  %conv.i435.2 = zext i8 %298 to i32
  %299 = load i8, i8* %scevgep184.2, align 1
  %conv5.i440.2 = zext i8 %299 to i32
  %xor.i441.2 = xor i32 %conv.i435.2, %conv5.i440.2
  %conv6.i442.2 = trunc i32 %xor.i441.2 to i8
  %scevgep185.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i442.2, i8* %scevgep185.2, align 1
  %scevgep178.2 = getelementptr i8, i8* %scevgep178.1, i64 1
  %scevgep183.2 = getelementptr [11 x i8], [11 x i8]* %297, i64 0, i64 1
  %300 = bitcast i8* %scevgep183.2 to [11 x i8]*
  %scevgep184.3 = getelementptr [11 x i8], [11 x i8]* %300, i64 0, i64 0
  %301 = load i8, i8* %scevgep178.2, align 1
  %conv.i435.3 = zext i8 %301 to i32
  %302 = load i8, i8* %scevgep184.3, align 1
  %conv5.i440.3 = zext i8 %302 to i32
  %xor.i441.3 = xor i32 %conv.i435.3, %conv5.i440.3
  %conv6.i442.3 = trunc i32 %xor.i441.3 to i8
  %scevgep185.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i442.3, i8* %scevgep185.3, align 1
  %scevgep178.3 = getelementptr i8, i8* %scevgep178.2, i64 1
  %scevgep183.3 = getelementptr [11 x i8], [11 x i8]* %300, i64 0, i64 1
  %303 = bitcast i8* %scevgep183.3 to [11 x i8]*
  %scevgep184.4 = getelementptr [11 x i8], [11 x i8]* %303, i64 0, i64 0
  %304 = load i8, i8* %scevgep178.3, align 1
  %conv.i435.4 = zext i8 %304 to i32
  %305 = load i8, i8* %scevgep184.4, align 1
  %conv5.i440.4 = zext i8 %305 to i32
  %xor.i441.4 = xor i32 %conv.i435.4, %conv5.i440.4
  %conv6.i442.4 = trunc i32 %xor.i441.4 to i8
  %scevgep185.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i442.4, i8* %scevgep185.4, align 1
  %scevgep178.4 = getelementptr i8, i8* %scevgep178.3, i64 1
  %scevgep183.4 = getelementptr [11 x i8], [11 x i8]* %303, i64 0, i64 1
  %306 = bitcast i8* %scevgep183.4 to [11 x i8]*
  %scevgep184.5 = getelementptr [11 x i8], [11 x i8]* %306, i64 0, i64 0
  %307 = load i8, i8* %scevgep178.4, align 1
  %conv.i435.5 = zext i8 %307 to i32
  %308 = load i8, i8* %scevgep184.5, align 1
  %conv5.i440.5 = zext i8 %308 to i32
  %xor.i441.5 = xor i32 %conv.i435.5, %conv5.i440.5
  %conv6.i442.5 = trunc i32 %xor.i441.5 to i8
  %scevgep185.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i442.5, i8* %scevgep185.5, align 1
  %scevgep178.5 = getelementptr i8, i8* %scevgep178.4, i64 1
  %scevgep183.5 = getelementptr [11 x i8], [11 x i8]* %306, i64 0, i64 1
  %309 = bitcast i8* %scevgep183.5 to [11 x i8]*
  %scevgep184.6 = getelementptr [11 x i8], [11 x i8]* %309, i64 0, i64 0
  %310 = load i8, i8* %scevgep178.5, align 1
  %conv.i435.6 = zext i8 %310 to i32
  %311 = load i8, i8* %scevgep184.6, align 1
  %conv5.i440.6 = zext i8 %311 to i32
  %xor.i441.6 = xor i32 %conv.i435.6, %conv5.i440.6
  %conv6.i442.6 = trunc i32 %xor.i441.6 to i8
  %scevgep185.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i442.6, i8* %scevgep185.6, align 1
  %scevgep178.6 = getelementptr i8, i8* %scevgep178.5, i64 1
  %scevgep183.6 = getelementptr [11 x i8], [11 x i8]* %309, i64 0, i64 1
  %312 = bitcast i8* %scevgep183.6 to [11 x i8]*
  %scevgep184.7 = getelementptr [11 x i8], [11 x i8]* %312, i64 0, i64 0
  %313 = load i8, i8* %scevgep178.6, align 1
  %conv.i435.7 = zext i8 %313 to i32
  %314 = load i8, i8* %scevgep184.7, align 1
  %conv5.i440.7 = zext i8 %314 to i32
  %xor.i441.7 = xor i32 %conv.i435.7, %conv5.i440.7
  %conv6.i442.7 = trunc i32 %xor.i441.7 to i8
  %scevgep185.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i442.7, i8* %scevgep185.7, align 1
  %scevgep178.7 = getelementptr i8, i8* %scevgep178.6, i64 1
  %scevgep183.7 = getelementptr [11 x i8], [11 x i8]* %312, i64 0, i64 1
  %315 = bitcast i8* %scevgep183.7 to [11 x i8]*
  %scevgep184.8 = getelementptr [11 x i8], [11 x i8]* %315, i64 0, i64 0
  %316 = load i8, i8* %scevgep178.7, align 1
  %conv.i435.8 = zext i8 %316 to i32
  %317 = load i8, i8* %scevgep184.8, align 1
  %conv5.i440.8 = zext i8 %317 to i32
  %xor.i441.8 = xor i32 %conv.i435.8, %conv5.i440.8
  %conv6.i442.8 = trunc i32 %xor.i441.8 to i8
  %scevgep185.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i442.8, i8* %scevgep185.8, align 1
  %scevgep178.8 = getelementptr i8, i8* %scevgep178.7, i64 1
  %scevgep183.8 = getelementptr [11 x i8], [11 x i8]* %315, i64 0, i64 1
  %318 = bitcast i8* %scevgep183.8 to [11 x i8]*
  %scevgep184.9 = getelementptr [11 x i8], [11 x i8]* %318, i64 0, i64 0
  %319 = load i8, i8* %scevgep178.8, align 1
  %conv.i435.9 = zext i8 %319 to i32
  %320 = load i8, i8* %scevgep184.9, align 1
  %conv5.i440.9 = zext i8 %320 to i32
  %xor.i441.9 = xor i32 %conv.i435.9, %conv5.i440.9
  %conv6.i442.9 = trunc i32 %xor.i441.9 to i8
  %scevgep185.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i442.9, i8* %scevgep185.9, align 1
  %scevgep178.9 = getelementptr i8, i8* %scevgep178.8, i64 1
  %scevgep183.9 = getelementptr [11 x i8], [11 x i8]* %318, i64 0, i64 1
  %321 = bitcast i8* %scevgep183.9 to [11 x i8]*
  %scevgep184.10 = getelementptr [11 x i8], [11 x i8]* %321, i64 0, i64 0
  %322 = load i8, i8* %scevgep178.9, align 1
  %conv.i435.10 = zext i8 %322 to i32
  %323 = load i8, i8* %scevgep184.10, align 1
  %conv5.i440.10 = zext i8 %323 to i32
  %xor.i441.10 = xor i32 %conv.i435.10, %conv5.i440.10
  %conv6.i442.10 = trunc i32 %xor.i441.10 to i8
  %scevgep185.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i442.10, i8* %scevgep185.10, align 1
  %scevgep132 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %324 = bitcast i8* %scevgep132 to [11 x [11 x i8]]*
  %325 = load i8, i8* %a, align 1
  %arrayidx4.i96.1212 = getelementptr inbounds i8, i8* %b, i64 3
  %326 = load i8, i8* %arrayidx4.i96.1212, align 1
  %call.i97.1213 = call zeroext i8 @mult(i8 zeroext %325, i8 zeroext %326) #2
  %scevgep95.1214 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i97.1213, i8* %scevgep95.1214, align 1
  %scevgep87.1215 = getelementptr i8, i8* %a, i64 1
  %327 = load i8, i8* %scevgep87.1215, align 1
  %arrayidx4.i96.1.1 = getelementptr inbounds i8, i8* %b, i64 4
  %328 = load i8, i8* %arrayidx4.i96.1.1, align 1
  %call.i97.1.1 = call zeroext i8 @mult(i8 zeroext %327, i8 zeroext %328) #2
  %scevgep95.1.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i97.1.1, i8* %scevgep95.1.1, align 1
  %scevgep87.1.1 = getelementptr i8, i8* %scevgep87.1215, i64 1
  %329 = load i8, i8* %scevgep87.1.1, align 1
  %arrayidx4.i96.2.1 = getelementptr inbounds i8, i8* %b, i64 5
  %330 = load i8, i8* %arrayidx4.i96.2.1, align 1
  %call.i97.2.1 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #2
  %scevgep95.2.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i97.2.1, i8* %scevgep95.2.1, align 1
  %scevgep87.2.1 = getelementptr i8, i8* %scevgep87.1.1, i64 1
  %331 = load i8, i8* %scevgep87.2.1, align 1
  %arrayidx4.i96.3.1 = getelementptr inbounds i8, i8* %b, i64 6
  %332 = load i8, i8* %arrayidx4.i96.3.1, align 1
  %call.i97.3.1 = call zeroext i8 @mult(i8 zeroext %331, i8 zeroext %332) #2
  %scevgep95.3.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i97.3.1, i8* %scevgep95.3.1, align 1
  %scevgep87.3.1 = getelementptr i8, i8* %scevgep87.2.1, i64 1
  %333 = load i8, i8* %scevgep87.3.1, align 1
  %arrayidx4.i96.4.1 = getelementptr inbounds i8, i8* %b, i64 7
  %334 = load i8, i8* %arrayidx4.i96.4.1, align 1
  %call.i97.4.1 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334) #2
  %scevgep95.4.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i97.4.1, i8* %scevgep95.4.1, align 1
  %scevgep87.4.1 = getelementptr i8, i8* %scevgep87.3.1, i64 1
  %335 = load i8, i8* %scevgep87.4.1, align 1
  %arrayidx4.i96.5.1 = getelementptr inbounds i8, i8* %b, i64 8
  %336 = load i8, i8* %arrayidx4.i96.5.1, align 1
  %call.i97.5.1 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336) #2
  %scevgep95.5.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i97.5.1, i8* %scevgep95.5.1, align 1
  %scevgep87.5.1 = getelementptr i8, i8* %scevgep87.4.1, i64 1
  %337 = load i8, i8* %scevgep87.5.1, align 1
  %arrayidx4.i96.6.1 = getelementptr inbounds i8, i8* %b, i64 9
  %338 = load i8, i8* %arrayidx4.i96.6.1, align 1
  %call.i97.6.1 = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338) #2
  %scevgep95.6.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i97.6.1, i8* %scevgep95.6.1, align 1
  %scevgep87.6.1 = getelementptr i8, i8* %scevgep87.5.1, i64 1
  %339 = load i8, i8* %scevgep87.6.1, align 1
  %arrayidx4.i96.7.1 = getelementptr inbounds i8, i8* %b, i64 10
  %340 = load i8, i8* %arrayidx4.i96.7.1, align 1
  %call.i97.7.1 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #2
  %scevgep95.7.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i97.7.1, i8* %scevgep95.7.1, align 1
  %scevgep87.7.1 = getelementptr i8, i8* %scevgep87.6.1, i64 1
  %341 = load i8, i8* %scevgep87.7.1, align 1
  %342 = load i8, i8* %b, align 1
  %call.i97.8.1 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342) #2
  %scevgep95.8.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i97.8.1, i8* %scevgep95.8.1, align 1
  %scevgep87.8.1 = getelementptr i8, i8* %scevgep87.7.1, i64 1
  %343 = load i8, i8* %scevgep87.8.1, align 1
  %arrayidx4.i96.9.1 = getelementptr inbounds i8, i8* %b, i64 1
  %344 = load i8, i8* %arrayidx4.i96.9.1, align 1
  %call.i97.9.1 = call zeroext i8 @mult(i8 zeroext %343, i8 zeroext %344) #2
  %scevgep95.9.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i97.9.1, i8* %scevgep95.9.1, align 1
  %scevgep87.9.1 = getelementptr i8, i8* %scevgep87.8.1, i64 1
  %345 = load i8, i8* %scevgep87.9.1, align 1
  %arrayidx4.i96.10.1 = getelementptr inbounds i8, i8* %b, i64 2
  %346 = load i8, i8* %arrayidx4.i96.10.1, align 1
  %call.i97.10.1 = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346) #2
  %scevgep95.10.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i97.10.1, i8* %scevgep95.10.1, align 1
  %arrayidx.i114.1218 = getelementptr inbounds i8, i8* %a, i64 3
  %347 = load i8, i8* %arrayidx.i114.1218, align 1
  %348 = load i8, i8* %b, align 1
  %call.i119.1219 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348) #2
  %scevgep104.1220 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i119.1219, i8* %scevgep104.1220, align 1
  %scevgep100.1222 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i114.1.1 = getelementptr inbounds i8, i8* %a, i64 4
  %349 = load i8, i8* %arrayidx.i114.1.1, align 1
  %350 = load i8, i8* %scevgep100.1222, align 1
  %call.i119.1.1 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350) #2
  %scevgep104.1.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i119.1.1, i8* %scevgep104.1.1, align 1
  %scevgep100.1.1 = getelementptr i8, i8* %scevgep100.1222, i64 1
  %arrayidx.i114.2.1 = getelementptr inbounds i8, i8* %a, i64 5
  %351 = load i8, i8* %arrayidx.i114.2.1, align 1
  %352 = load i8, i8* %scevgep100.1.1, align 1
  %call.i119.2.1 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352) #2
  %scevgep104.2.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i119.2.1, i8* %scevgep104.2.1, align 1
  %scevgep100.2.1 = getelementptr i8, i8* %scevgep100.1.1, i64 1
  %arrayidx.i114.3.1 = getelementptr inbounds i8, i8* %a, i64 6
  %353 = load i8, i8* %arrayidx.i114.3.1, align 1
  %354 = load i8, i8* %scevgep100.2.1, align 1
  %call.i119.3.1 = call zeroext i8 @mult(i8 zeroext %353, i8 zeroext %354) #2
  %scevgep104.3.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i119.3.1, i8* %scevgep104.3.1, align 1
  %scevgep100.3.1 = getelementptr i8, i8* %scevgep100.2.1, i64 1
  %arrayidx.i114.4.1 = getelementptr inbounds i8, i8* %a, i64 7
  %355 = load i8, i8* %arrayidx.i114.4.1, align 1
  %356 = load i8, i8* %scevgep100.3.1, align 1
  %call.i119.4.1 = call zeroext i8 @mult(i8 zeroext %355, i8 zeroext %356) #2
  %scevgep104.4.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i119.4.1, i8* %scevgep104.4.1, align 1
  %scevgep100.4.1 = getelementptr i8, i8* %scevgep100.3.1, i64 1
  %arrayidx.i114.5.1 = getelementptr inbounds i8, i8* %a, i64 8
  %357 = load i8, i8* %arrayidx.i114.5.1, align 1
  %358 = load i8, i8* %scevgep100.4.1, align 1
  %call.i119.5.1 = call zeroext i8 @mult(i8 zeroext %357, i8 zeroext %358) #2
  %scevgep104.5.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i119.5.1, i8* %scevgep104.5.1, align 1
  %scevgep100.5.1 = getelementptr i8, i8* %scevgep100.4.1, i64 1
  %arrayidx.i114.6.1 = getelementptr inbounds i8, i8* %a, i64 9
  %359 = load i8, i8* %arrayidx.i114.6.1, align 1
  %360 = load i8, i8* %scevgep100.5.1, align 1
  %call.i119.6.1 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360) #2
  %scevgep104.6.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 6
  store i8 %call.i119.6.1, i8* %scevgep104.6.1, align 1
  %scevgep100.6.1 = getelementptr i8, i8* %scevgep100.5.1, i64 1
  %arrayidx.i114.7.1 = getelementptr inbounds i8, i8* %a, i64 10
  %361 = load i8, i8* %arrayidx.i114.7.1, align 1
  %362 = load i8, i8* %scevgep100.6.1, align 1
  %call.i119.7.1 = call zeroext i8 @mult(i8 zeroext %361, i8 zeroext %362) #2
  %scevgep104.7.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 7
  store i8 %call.i119.7.1, i8* %scevgep104.7.1, align 1
  %scevgep100.7.1 = getelementptr i8, i8* %scevgep100.6.1, i64 1
  %363 = load i8, i8* %a, align 1
  %364 = load i8, i8* %scevgep100.7.1, align 1
  %call.i119.8.1 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364) #2
  %scevgep104.8.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 8
  store i8 %call.i119.8.1, i8* %scevgep104.8.1, align 1
  %scevgep100.8.1 = getelementptr i8, i8* %scevgep100.7.1, i64 1
  %arrayidx.i114.9.1 = getelementptr inbounds i8, i8* %a, i64 1
  %365 = load i8, i8* %arrayidx.i114.9.1, align 1
  %366 = load i8, i8* %scevgep100.8.1, align 1
  %call.i119.9.1 = call zeroext i8 @mult(i8 zeroext %365, i8 zeroext %366) #2
  %scevgep104.9.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 9
  store i8 %call.i119.9.1, i8* %scevgep104.9.1, align 1
  %scevgep100.9.1 = getelementptr i8, i8* %scevgep100.8.1, i64 1
  %arrayidx.i114.10.1 = getelementptr inbounds i8, i8* %a, i64 2
  %367 = load i8, i8* %arrayidx.i114.10.1, align 1
  %368 = load i8, i8* %scevgep100.9.1, align 1
  %call.i119.10.1 = call zeroext i8 @mult(i8 zeroext %367, i8 zeroext %368) #2
  %scevgep104.10.1 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 10
  store i8 %call.i119.10.1, i8* %scevgep104.10.1, align 1
  %369 = load i8, i8* %a, align 1
  %arrayidx4.i140.1224 = getelementptr inbounds i8, i8* %b, i64 4
  %370 = load i8, i8* %arrayidx4.i140.1224, align 1
  %call.i141.1225 = call zeroext i8 @mult(i8 zeroext %369, i8 zeroext %370) #2
  %scevgep115.1226 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i141.1225, i8* %scevgep115.1226, align 1
  %scevgep107.1227 = getelementptr i8, i8* %a, i64 1
  %371 = load i8, i8* %scevgep107.1227, align 1
  %arrayidx4.i140.1.1 = getelementptr inbounds i8, i8* %b, i64 5
  %372 = load i8, i8* %arrayidx4.i140.1.1, align 1
  %call.i141.1.1 = call zeroext i8 @mult(i8 zeroext %371, i8 zeroext %372) #2
  %scevgep115.1.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i141.1.1, i8* %scevgep115.1.1, align 1
  %scevgep107.1.1 = getelementptr i8, i8* %scevgep107.1227, i64 1
  %373 = load i8, i8* %scevgep107.1.1, align 1
  %arrayidx4.i140.2.1 = getelementptr inbounds i8, i8* %b, i64 6
  %374 = load i8, i8* %arrayidx4.i140.2.1, align 1
  %call.i141.2.1 = call zeroext i8 @mult(i8 zeroext %373, i8 zeroext %374) #2
  %scevgep115.2.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i141.2.1, i8* %scevgep115.2.1, align 1
  %scevgep107.2.1 = getelementptr i8, i8* %scevgep107.1.1, i64 1
  %375 = load i8, i8* %scevgep107.2.1, align 1
  %arrayidx4.i140.3.1 = getelementptr inbounds i8, i8* %b, i64 7
  %376 = load i8, i8* %arrayidx4.i140.3.1, align 1
  %call.i141.3.1 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376) #2
  %scevgep115.3.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i141.3.1, i8* %scevgep115.3.1, align 1
  %scevgep107.3.1 = getelementptr i8, i8* %scevgep107.2.1, i64 1
  %377 = load i8, i8* %scevgep107.3.1, align 1
  %arrayidx4.i140.4.1 = getelementptr inbounds i8, i8* %b, i64 8
  %378 = load i8, i8* %arrayidx4.i140.4.1, align 1
  %call.i141.4.1 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378) #2
  %scevgep115.4.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i141.4.1, i8* %scevgep115.4.1, align 1
  %scevgep107.4.1 = getelementptr i8, i8* %scevgep107.3.1, i64 1
  %379 = load i8, i8* %scevgep107.4.1, align 1
  %arrayidx4.i140.5.1 = getelementptr inbounds i8, i8* %b, i64 9
  %380 = load i8, i8* %arrayidx4.i140.5.1, align 1
  %call.i141.5.1 = call zeroext i8 @mult(i8 zeroext %379, i8 zeroext %380) #2
  %scevgep115.5.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i141.5.1, i8* %scevgep115.5.1, align 1
  %scevgep107.5.1 = getelementptr i8, i8* %scevgep107.4.1, i64 1
  %381 = load i8, i8* %scevgep107.5.1, align 1
  %arrayidx4.i140.6.1 = getelementptr inbounds i8, i8* %b, i64 10
  %382 = load i8, i8* %arrayidx4.i140.6.1, align 1
  %call.i141.6.1 = call zeroext i8 @mult(i8 zeroext %381, i8 zeroext %382) #2
  %scevgep115.6.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i141.6.1, i8* %scevgep115.6.1, align 1
  %scevgep107.6.1 = getelementptr i8, i8* %scevgep107.5.1, i64 1
  %383 = load i8, i8* %scevgep107.6.1, align 1
  %384 = load i8, i8* %b, align 1
  %call.i141.7.1 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %384) #2
  %scevgep115.7.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i141.7.1, i8* %scevgep115.7.1, align 1
  %scevgep107.7.1 = getelementptr i8, i8* %scevgep107.6.1, i64 1
  %385 = load i8, i8* %scevgep107.7.1, align 1
  %arrayidx4.i140.8.1 = getelementptr inbounds i8, i8* %b, i64 1
  %386 = load i8, i8* %arrayidx4.i140.8.1, align 1
  %call.i141.8.1 = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %386) #2
  %scevgep115.8.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i141.8.1, i8* %scevgep115.8.1, align 1
  %scevgep107.8.1 = getelementptr i8, i8* %scevgep107.7.1, i64 1
  %387 = load i8, i8* %scevgep107.8.1, align 1
  %arrayidx4.i140.9.1 = getelementptr inbounds i8, i8* %b, i64 2
  %388 = load i8, i8* %arrayidx4.i140.9.1, align 1
  %call.i141.9.1 = call zeroext i8 @mult(i8 zeroext %387, i8 zeroext %388) #2
  %scevgep115.9.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i141.9.1, i8* %scevgep115.9.1, align 1
  %scevgep107.9.1 = getelementptr i8, i8* %scevgep107.8.1, i64 1
  %389 = load i8, i8* %scevgep107.9.1, align 1
  %arrayidx4.i140.10.1 = getelementptr inbounds i8, i8* %b, i64 3
  %390 = load i8, i8* %arrayidx4.i140.10.1, align 1
  %call.i141.10.1 = call zeroext i8 @mult(i8 zeroext %389, i8 zeroext %390) #2
  %scevgep115.10.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i141.10.1, i8* %scevgep115.10.1, align 1
  %arrayidx.i158.1230 = getelementptr inbounds i8, i8* %a, i64 4
  %391 = load i8, i8* %arrayidx.i158.1230, align 1
  %392 = load i8, i8* %b, align 1
  %call.i163.1231 = call zeroext i8 @mult(i8 zeroext %391, i8 zeroext %392) #2
  %scevgep124.1232 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i163.1231, i8* %scevgep124.1232, align 1
  %scevgep120.1234 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i158.1.1 = getelementptr inbounds i8, i8* %a, i64 5
  %393 = load i8, i8* %arrayidx.i158.1.1, align 1
  %394 = load i8, i8* %scevgep120.1234, align 1
  %call.i163.1.1 = call zeroext i8 @mult(i8 zeroext %393, i8 zeroext %394) #2
  %scevgep124.1.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i163.1.1, i8* %scevgep124.1.1, align 1
  %scevgep120.1.1 = getelementptr i8, i8* %scevgep120.1234, i64 1
  %arrayidx.i158.2.1 = getelementptr inbounds i8, i8* %a, i64 6
  %395 = load i8, i8* %arrayidx.i158.2.1, align 1
  %396 = load i8, i8* %scevgep120.1.1, align 1
  %call.i163.2.1 = call zeroext i8 @mult(i8 zeroext %395, i8 zeroext %396) #2
  %scevgep124.2.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i163.2.1, i8* %scevgep124.2.1, align 1
  %scevgep120.2.1 = getelementptr i8, i8* %scevgep120.1.1, i64 1
  %arrayidx.i158.3.1 = getelementptr inbounds i8, i8* %a, i64 7
  %397 = load i8, i8* %arrayidx.i158.3.1, align 1
  %398 = load i8, i8* %scevgep120.2.1, align 1
  %call.i163.3.1 = call zeroext i8 @mult(i8 zeroext %397, i8 zeroext %398) #2
  %scevgep124.3.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i163.3.1, i8* %scevgep124.3.1, align 1
  %scevgep120.3.1 = getelementptr i8, i8* %scevgep120.2.1, i64 1
  %arrayidx.i158.4.1 = getelementptr inbounds i8, i8* %a, i64 8
  %399 = load i8, i8* %arrayidx.i158.4.1, align 1
  %400 = load i8, i8* %scevgep120.3.1, align 1
  %call.i163.4.1 = call zeroext i8 @mult(i8 zeroext %399, i8 zeroext %400) #2
  %scevgep124.4.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i163.4.1, i8* %scevgep124.4.1, align 1
  %scevgep120.4.1 = getelementptr i8, i8* %scevgep120.3.1, i64 1
  %arrayidx.i158.5.1 = getelementptr inbounds i8, i8* %a, i64 9
  %401 = load i8, i8* %arrayidx.i158.5.1, align 1
  %402 = load i8, i8* %scevgep120.4.1, align 1
  %call.i163.5.1 = call zeroext i8 @mult(i8 zeroext %401, i8 zeroext %402) #2
  %scevgep124.5.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 5
  store i8 %call.i163.5.1, i8* %scevgep124.5.1, align 1
  %scevgep120.5.1 = getelementptr i8, i8* %scevgep120.4.1, i64 1
  %arrayidx.i158.6.1 = getelementptr inbounds i8, i8* %a, i64 10
  %403 = load i8, i8* %arrayidx.i158.6.1, align 1
  %404 = load i8, i8* %scevgep120.5.1, align 1
  %call.i163.6.1 = call zeroext i8 @mult(i8 zeroext %403, i8 zeroext %404) #2
  %scevgep124.6.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 6
  store i8 %call.i163.6.1, i8* %scevgep124.6.1, align 1
  %scevgep120.6.1 = getelementptr i8, i8* %scevgep120.5.1, i64 1
  %405 = load i8, i8* %a, align 1
  %406 = load i8, i8* %scevgep120.6.1, align 1
  %call.i163.7.1 = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406) #2
  %scevgep124.7.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 7
  store i8 %call.i163.7.1, i8* %scevgep124.7.1, align 1
  %scevgep120.7.1 = getelementptr i8, i8* %scevgep120.6.1, i64 1
  %arrayidx.i158.8.1 = getelementptr inbounds i8, i8* %a, i64 1
  %407 = load i8, i8* %arrayidx.i158.8.1, align 1
  %408 = load i8, i8* %scevgep120.7.1, align 1
  %call.i163.8.1 = call zeroext i8 @mult(i8 zeroext %407, i8 zeroext %408) #2
  %scevgep124.8.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 8
  store i8 %call.i163.8.1, i8* %scevgep124.8.1, align 1
  %scevgep120.8.1 = getelementptr i8, i8* %scevgep120.7.1, i64 1
  %arrayidx.i158.9.1 = getelementptr inbounds i8, i8* %a, i64 2
  %409 = load i8, i8* %arrayidx.i158.9.1, align 1
  %410 = load i8, i8* %scevgep120.8.1, align 1
  %call.i163.9.1 = call zeroext i8 @mult(i8 zeroext %409, i8 zeroext %410) #2
  %scevgep124.9.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 9
  store i8 %call.i163.9.1, i8* %scevgep124.9.1, align 1
  %scevgep120.9.1 = getelementptr i8, i8* %scevgep120.8.1, i64 1
  %arrayidx.i158.10.1 = getelementptr inbounds i8, i8* %a, i64 3
  %411 = load i8, i8* %arrayidx.i158.10.1, align 1
  %412 = load i8, i8* %scevgep120.9.1, align 1
  %call.i163.10.1 = call zeroext i8 @mult(i8 zeroext %411, i8 zeroext %412) #2
  %scevgep124.10.1 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 10
  store i8 %call.i163.10.1, i8* %scevgep124.10.1, align 1
  %scevgep135.1235 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %324, i64 0, i64 0, i64 0
  %413 = load i8, i8* %c, align 1
  %conv.i.1236 = zext i8 %413 to i32
  %414 = load i8, i8* %scevgep135.1235, align 1
  %conv5.i.1237 = zext i8 %414 to i32
  %xor.i.1238 = xor i32 %conv.i.1236, %conv5.i.1237
  %conv6.i.1239 = trunc i32 %xor.i.1238 to i8
  store i8 %conv6.i.1239, i8* %c, align 1
  %scevgep127.1240 = getelementptr i8, i8* %c, i64 1
  %scevgep134.1241 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %324, i64 0, i64 0, i64 1
  %415 = bitcast i8* %scevgep134.1241 to [11 x [11 x i8]]*
  %scevgep135.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 0
  %416 = load i8, i8* %scevgep127.1240, align 1
  %conv.i.1.1 = zext i8 %416 to i32
  %417 = load i8, i8* %scevgep135.1.1, align 1
  %conv5.i.1.1 = zext i8 %417 to i32
  %xor.i.1.1 = xor i32 %conv.i.1.1, %conv5.i.1.1
  %conv6.i.1.1 = trunc i32 %xor.i.1.1 to i8
  %scevgep136.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1.1, i8* %scevgep136.1.1, align 1
  %scevgep127.1.1 = getelementptr i8, i8* %scevgep127.1240, i64 1
  %scevgep134.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 1
  %418 = bitcast i8* %scevgep134.1.1 to [11 x [11 x i8]]*
  %scevgep135.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 0
  %419 = load i8, i8* %scevgep127.1.1, align 1
  %conv.i.2.1 = zext i8 %419 to i32
  %420 = load i8, i8* %scevgep135.2.1, align 1
  %conv5.i.2.1 = zext i8 %420 to i32
  %xor.i.2.1 = xor i32 %conv.i.2.1, %conv5.i.2.1
  %conv6.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep136.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2.1, i8* %scevgep136.2.1, align 1
  %scevgep127.2.1 = getelementptr i8, i8* %scevgep127.1.1, i64 1
  %scevgep134.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 1
  %421 = bitcast i8* %scevgep134.2.1 to [11 x [11 x i8]]*
  %scevgep135.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %421, i64 0, i64 0, i64 0
  %422 = load i8, i8* %scevgep127.2.1, align 1
  %conv.i.3.1 = zext i8 %422 to i32
  %423 = load i8, i8* %scevgep135.3.1, align 1
  %conv5.i.3.1 = zext i8 %423 to i32
  %xor.i.3.1 = xor i32 %conv.i.3.1, %conv5.i.3.1
  %conv6.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep136.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3.1, i8* %scevgep136.3.1, align 1
  %scevgep127.3.1 = getelementptr i8, i8* %scevgep127.2.1, i64 1
  %scevgep134.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %421, i64 0, i64 0, i64 1
  %424 = bitcast i8* %scevgep134.3.1 to [11 x [11 x i8]]*
  %scevgep135.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %424, i64 0, i64 0, i64 0
  %425 = load i8, i8* %scevgep127.3.1, align 1
  %conv.i.4.1 = zext i8 %425 to i32
  %426 = load i8, i8* %scevgep135.4.1, align 1
  %conv5.i.4.1 = zext i8 %426 to i32
  %xor.i.4.1 = xor i32 %conv.i.4.1, %conv5.i.4.1
  %conv6.i.4.1 = trunc i32 %xor.i.4.1 to i8
  %scevgep136.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4.1, i8* %scevgep136.4.1, align 1
  %scevgep127.4.1 = getelementptr i8, i8* %scevgep127.3.1, i64 1
  %scevgep134.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %424, i64 0, i64 0, i64 1
  %427 = bitcast i8* %scevgep134.4.1 to [11 x [11 x i8]]*
  %scevgep135.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %427, i64 0, i64 0, i64 0
  %428 = load i8, i8* %scevgep127.4.1, align 1
  %conv.i.5.1 = zext i8 %428 to i32
  %429 = load i8, i8* %scevgep135.5.1, align 1
  %conv5.i.5.1 = zext i8 %429 to i32
  %xor.i.5.1 = xor i32 %conv.i.5.1, %conv5.i.5.1
  %conv6.i.5.1 = trunc i32 %xor.i.5.1 to i8
  %scevgep136.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i.5.1, i8* %scevgep136.5.1, align 1
  %scevgep127.5.1 = getelementptr i8, i8* %scevgep127.4.1, i64 1
  %scevgep134.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %427, i64 0, i64 0, i64 1
  %430 = bitcast i8* %scevgep134.5.1 to [11 x [11 x i8]]*
  %scevgep135.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 0
  %431 = load i8, i8* %scevgep127.5.1, align 1
  %conv.i.6.1 = zext i8 %431 to i32
  %432 = load i8, i8* %scevgep135.6.1, align 1
  %conv5.i.6.1 = zext i8 %432 to i32
  %xor.i.6.1 = xor i32 %conv.i.6.1, %conv5.i.6.1
  %conv6.i.6.1 = trunc i32 %xor.i.6.1 to i8
  %scevgep136.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i.6.1, i8* %scevgep136.6.1, align 1
  %scevgep127.6.1 = getelementptr i8, i8* %scevgep127.5.1, i64 1
  %scevgep134.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %430, i64 0, i64 0, i64 1
  %433 = bitcast i8* %scevgep134.6.1 to [11 x [11 x i8]]*
  %scevgep135.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %433, i64 0, i64 0, i64 0
  %434 = load i8, i8* %scevgep127.6.1, align 1
  %conv.i.7.1 = zext i8 %434 to i32
  %435 = load i8, i8* %scevgep135.7.1, align 1
  %conv5.i.7.1 = zext i8 %435 to i32
  %xor.i.7.1 = xor i32 %conv.i.7.1, %conv5.i.7.1
  %conv6.i.7.1 = trunc i32 %xor.i.7.1 to i8
  %scevgep136.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i.7.1, i8* %scevgep136.7.1, align 1
  %scevgep127.7.1 = getelementptr i8, i8* %scevgep127.6.1, i64 1
  %scevgep134.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %433, i64 0, i64 0, i64 1
  %436 = bitcast i8* %scevgep134.7.1 to [11 x [11 x i8]]*
  %scevgep135.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %436, i64 0, i64 0, i64 0
  %437 = load i8, i8* %scevgep127.7.1, align 1
  %conv.i.8.1 = zext i8 %437 to i32
  %438 = load i8, i8* %scevgep135.8.1, align 1
  %conv5.i.8.1 = zext i8 %438 to i32
  %xor.i.8.1 = xor i32 %conv.i.8.1, %conv5.i.8.1
  %conv6.i.8.1 = trunc i32 %xor.i.8.1 to i8
  %scevgep136.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i.8.1, i8* %scevgep136.8.1, align 1
  %scevgep127.8.1 = getelementptr i8, i8* %scevgep127.7.1, i64 1
  %scevgep134.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %436, i64 0, i64 0, i64 1
  %439 = bitcast i8* %scevgep134.8.1 to [11 x [11 x i8]]*
  %scevgep135.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %439, i64 0, i64 0, i64 0
  %440 = load i8, i8* %scevgep127.8.1, align 1
  %conv.i.9.1 = zext i8 %440 to i32
  %441 = load i8, i8* %scevgep135.9.1, align 1
  %conv5.i.9.1 = zext i8 %441 to i32
  %xor.i.9.1 = xor i32 %conv.i.9.1, %conv5.i.9.1
  %conv6.i.9.1 = trunc i32 %xor.i.9.1 to i8
  %scevgep136.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i.9.1, i8* %scevgep136.9.1, align 1
  %scevgep127.9.1 = getelementptr i8, i8* %scevgep127.8.1, i64 1
  %scevgep134.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %439, i64 0, i64 0, i64 1
  %442 = bitcast i8* %scevgep134.9.1 to [11 x [11 x i8]]*
  %scevgep135.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %442, i64 0, i64 0, i64 0
  %443 = load i8, i8* %scevgep127.9.1, align 1
  %conv.i.10.1 = zext i8 %443 to i32
  %444 = load i8, i8* %scevgep135.10.1, align 1
  %conv5.i.10.1 = zext i8 %444 to i32
  %xor.i.10.1 = xor i32 %conv.i.10.1, %conv5.i.10.1
  %conv6.i.10.1 = trunc i32 %xor.i.10.1 to i8
  %scevgep136.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i.10.1, i8* %scevgep136.10.1, align 1
  %scevgep145.1242 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  %445 = load i8, i8* %c, align 1
  %conv.i216.1243 = zext i8 %445 to i32
  %446 = load i8, i8* %scevgep145.1242, align 1
  %conv5.i221.1244 = zext i8 %446 to i32
  %xor.i222.1245 = xor i32 %conv.i216.1243, %conv5.i221.1244
  %conv6.i223.1246 = trunc i32 %xor.i222.1245 to i8
  store i8 %conv6.i223.1246, i8* %c, align 1
  %scevgep139.1247 = getelementptr i8, i8* %c, i64 1
  %scevgep144.1248 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 1
  %447 = bitcast i8* %scevgep144.1248 to [11 x i8]*
  %scevgep145.1.1 = getelementptr [11 x i8], [11 x i8]* %447, i64 0, i64 0
  %448 = load i8, i8* %scevgep139.1247, align 1
  %conv.i216.1.1 = zext i8 %448 to i32
  %449 = load i8, i8* %scevgep145.1.1, align 1
  %conv5.i221.1.1 = zext i8 %449 to i32
  %xor.i222.1.1 = xor i32 %conv.i216.1.1, %conv5.i221.1.1
  %conv6.i223.1.1 = trunc i32 %xor.i222.1.1 to i8
  %scevgep146.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i223.1.1, i8* %scevgep146.1.1, align 1
  %scevgep139.1.1 = getelementptr i8, i8* %scevgep139.1247, i64 1
  %scevgep144.1.1 = getelementptr [11 x i8], [11 x i8]* %447, i64 0, i64 1
  %450 = bitcast i8* %scevgep144.1.1 to [11 x i8]*
  %scevgep145.2.1 = getelementptr [11 x i8], [11 x i8]* %450, i64 0, i64 0
  %451 = load i8, i8* %scevgep139.1.1, align 1
  %conv.i216.2.1 = zext i8 %451 to i32
  %452 = load i8, i8* %scevgep145.2.1, align 1
  %conv5.i221.2.1 = zext i8 %452 to i32
  %xor.i222.2.1 = xor i32 %conv.i216.2.1, %conv5.i221.2.1
  %conv6.i223.2.1 = trunc i32 %xor.i222.2.1 to i8
  %scevgep146.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i223.2.1, i8* %scevgep146.2.1, align 1
  %scevgep139.2.1 = getelementptr i8, i8* %scevgep139.1.1, i64 1
  %scevgep144.2.1 = getelementptr [11 x i8], [11 x i8]* %450, i64 0, i64 1
  %453 = bitcast i8* %scevgep144.2.1 to [11 x i8]*
  %scevgep145.3.1 = getelementptr [11 x i8], [11 x i8]* %453, i64 0, i64 0
  %454 = load i8, i8* %scevgep139.2.1, align 1
  %conv.i216.3.1 = zext i8 %454 to i32
  %455 = load i8, i8* %scevgep145.3.1, align 1
  %conv5.i221.3.1 = zext i8 %455 to i32
  %xor.i222.3.1 = xor i32 %conv.i216.3.1, %conv5.i221.3.1
  %conv6.i223.3.1 = trunc i32 %xor.i222.3.1 to i8
  %scevgep146.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i223.3.1, i8* %scevgep146.3.1, align 1
  %scevgep139.3.1 = getelementptr i8, i8* %scevgep139.2.1, i64 1
  %scevgep144.3.1 = getelementptr [11 x i8], [11 x i8]* %453, i64 0, i64 1
  %456 = bitcast i8* %scevgep144.3.1 to [11 x i8]*
  %scevgep145.4.1 = getelementptr [11 x i8], [11 x i8]* %456, i64 0, i64 0
  %457 = load i8, i8* %scevgep139.3.1, align 1
  %conv.i216.4.1 = zext i8 %457 to i32
  %458 = load i8, i8* %scevgep145.4.1, align 1
  %conv5.i221.4.1 = zext i8 %458 to i32
  %xor.i222.4.1 = xor i32 %conv.i216.4.1, %conv5.i221.4.1
  %conv6.i223.4.1 = trunc i32 %xor.i222.4.1 to i8
  %scevgep146.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i223.4.1, i8* %scevgep146.4.1, align 1
  %scevgep139.4.1 = getelementptr i8, i8* %scevgep139.3.1, i64 1
  %scevgep144.4.1 = getelementptr [11 x i8], [11 x i8]* %456, i64 0, i64 1
  %459 = bitcast i8* %scevgep144.4.1 to [11 x i8]*
  %scevgep145.5.1 = getelementptr [11 x i8], [11 x i8]* %459, i64 0, i64 0
  %460 = load i8, i8* %scevgep139.4.1, align 1
  %conv.i216.5.1 = zext i8 %460 to i32
  %461 = load i8, i8* %scevgep145.5.1, align 1
  %conv5.i221.5.1 = zext i8 %461 to i32
  %xor.i222.5.1 = xor i32 %conv.i216.5.1, %conv5.i221.5.1
  %conv6.i223.5.1 = trunc i32 %xor.i222.5.1 to i8
  %scevgep146.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i223.5.1, i8* %scevgep146.5.1, align 1
  %scevgep139.5.1 = getelementptr i8, i8* %scevgep139.4.1, i64 1
  %scevgep144.5.1 = getelementptr [11 x i8], [11 x i8]* %459, i64 0, i64 1
  %462 = bitcast i8* %scevgep144.5.1 to [11 x i8]*
  %scevgep145.6.1 = getelementptr [11 x i8], [11 x i8]* %462, i64 0, i64 0
  %463 = load i8, i8* %scevgep139.5.1, align 1
  %conv.i216.6.1 = zext i8 %463 to i32
  %464 = load i8, i8* %scevgep145.6.1, align 1
  %conv5.i221.6.1 = zext i8 %464 to i32
  %xor.i222.6.1 = xor i32 %conv.i216.6.1, %conv5.i221.6.1
  %conv6.i223.6.1 = trunc i32 %xor.i222.6.1 to i8
  %scevgep146.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i223.6.1, i8* %scevgep146.6.1, align 1
  %scevgep139.6.1 = getelementptr i8, i8* %scevgep139.5.1, i64 1
  %scevgep144.6.1 = getelementptr [11 x i8], [11 x i8]* %462, i64 0, i64 1
  %465 = bitcast i8* %scevgep144.6.1 to [11 x i8]*
  %scevgep145.7.1 = getelementptr [11 x i8], [11 x i8]* %465, i64 0, i64 0
  %466 = load i8, i8* %scevgep139.6.1, align 1
  %conv.i216.7.1 = zext i8 %466 to i32
  %467 = load i8, i8* %scevgep145.7.1, align 1
  %conv5.i221.7.1 = zext i8 %467 to i32
  %xor.i222.7.1 = xor i32 %conv.i216.7.1, %conv5.i221.7.1
  %conv6.i223.7.1 = trunc i32 %xor.i222.7.1 to i8
  %scevgep146.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i223.7.1, i8* %scevgep146.7.1, align 1
  %scevgep139.7.1 = getelementptr i8, i8* %scevgep139.6.1, i64 1
  %scevgep144.7.1 = getelementptr [11 x i8], [11 x i8]* %465, i64 0, i64 1
  %468 = bitcast i8* %scevgep144.7.1 to [11 x i8]*
  %scevgep145.8.1 = getelementptr [11 x i8], [11 x i8]* %468, i64 0, i64 0
  %469 = load i8, i8* %scevgep139.7.1, align 1
  %conv.i216.8.1 = zext i8 %469 to i32
  %470 = load i8, i8* %scevgep145.8.1, align 1
  %conv5.i221.8.1 = zext i8 %470 to i32
  %xor.i222.8.1 = xor i32 %conv.i216.8.1, %conv5.i221.8.1
  %conv6.i223.8.1 = trunc i32 %xor.i222.8.1 to i8
  %scevgep146.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i223.8.1, i8* %scevgep146.8.1, align 1
  %scevgep139.8.1 = getelementptr i8, i8* %scevgep139.7.1, i64 1
  %scevgep144.8.1 = getelementptr [11 x i8], [11 x i8]* %468, i64 0, i64 1
  %471 = bitcast i8* %scevgep144.8.1 to [11 x i8]*
  %scevgep145.9.1 = getelementptr [11 x i8], [11 x i8]* %471, i64 0, i64 0
  %472 = load i8, i8* %scevgep139.8.1, align 1
  %conv.i216.9.1 = zext i8 %472 to i32
  %473 = load i8, i8* %scevgep145.9.1, align 1
  %conv5.i221.9.1 = zext i8 %473 to i32
  %xor.i222.9.1 = xor i32 %conv.i216.9.1, %conv5.i221.9.1
  %conv6.i223.9.1 = trunc i32 %xor.i222.9.1 to i8
  %scevgep146.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i223.9.1, i8* %scevgep146.9.1, align 1
  %scevgep139.9.1 = getelementptr i8, i8* %scevgep139.8.1, i64 1
  %scevgep144.9.1 = getelementptr [11 x i8], [11 x i8]* %471, i64 0, i64 1
  %474 = bitcast i8* %scevgep144.9.1 to [11 x i8]*
  %scevgep145.10.1 = getelementptr [11 x i8], [11 x i8]* %474, i64 0, i64 0
  %475 = load i8, i8* %scevgep139.9.1, align 1
  %conv.i216.10.1 = zext i8 %475 to i32
  %476 = load i8, i8* %scevgep145.10.1, align 1
  %conv5.i221.10.1 = zext i8 %476 to i32
  %xor.i222.10.1 = xor i32 %conv.i216.10.1, %conv5.i221.10.1
  %conv6.i223.10.1 = trunc i32 %xor.i222.10.1 to i8
  %scevgep146.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i223.10.1, i8* %scevgep146.10.1, align 1
  %scevgep155.1249 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 0
  %477 = load i8, i8* %c, align 1
  %conv.i363.1250 = zext i8 %477 to i32
  %478 = load i8, i8* %scevgep155.1249, align 1
  %conv5.i368.1251 = zext i8 %478 to i32
  %xor.i369.1252 = xor i32 %conv.i363.1250, %conv5.i368.1251
  %conv6.i370.1253 = trunc i32 %xor.i369.1252 to i8
  store i8 %conv6.i370.1253, i8* %c, align 1
  %scevgep149.1254 = getelementptr i8, i8* %c, i64 1
  %scevgep154.1255 = getelementptr [11 x i8], [11 x i8]* %a1b, i64 0, i64 1
  %479 = bitcast i8* %scevgep154.1255 to [11 x i8]*
  %scevgep155.1.1 = getelementptr [11 x i8], [11 x i8]* %479, i64 0, i64 0
  %480 = load i8, i8* %scevgep149.1254, align 1
  %conv.i363.1.1 = zext i8 %480 to i32
  %481 = load i8, i8* %scevgep155.1.1, align 1
  %conv5.i368.1.1 = zext i8 %481 to i32
  %xor.i369.1.1 = xor i32 %conv.i363.1.1, %conv5.i368.1.1
  %conv6.i370.1.1 = trunc i32 %xor.i369.1.1 to i8
  %scevgep156.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i370.1.1, i8* %scevgep156.1.1, align 1
  %scevgep149.1.1 = getelementptr i8, i8* %scevgep149.1254, i64 1
  %scevgep154.1.1 = getelementptr [11 x i8], [11 x i8]* %479, i64 0, i64 1
  %482 = bitcast i8* %scevgep154.1.1 to [11 x i8]*
  %scevgep155.2.1 = getelementptr [11 x i8], [11 x i8]* %482, i64 0, i64 0
  %483 = load i8, i8* %scevgep149.1.1, align 1
  %conv.i363.2.1 = zext i8 %483 to i32
  %484 = load i8, i8* %scevgep155.2.1, align 1
  %conv5.i368.2.1 = zext i8 %484 to i32
  %xor.i369.2.1 = xor i32 %conv.i363.2.1, %conv5.i368.2.1
  %conv6.i370.2.1 = trunc i32 %xor.i369.2.1 to i8
  %scevgep156.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i370.2.1, i8* %scevgep156.2.1, align 1
  %scevgep149.2.1 = getelementptr i8, i8* %scevgep149.1.1, i64 1
  %scevgep154.2.1 = getelementptr [11 x i8], [11 x i8]* %482, i64 0, i64 1
  %485 = bitcast i8* %scevgep154.2.1 to [11 x i8]*
  %scevgep155.3.1 = getelementptr [11 x i8], [11 x i8]* %485, i64 0, i64 0
  %486 = load i8, i8* %scevgep149.2.1, align 1
  %conv.i363.3.1 = zext i8 %486 to i32
  %487 = load i8, i8* %scevgep155.3.1, align 1
  %conv5.i368.3.1 = zext i8 %487 to i32
  %xor.i369.3.1 = xor i32 %conv.i363.3.1, %conv5.i368.3.1
  %conv6.i370.3.1 = trunc i32 %xor.i369.3.1 to i8
  %scevgep156.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i370.3.1, i8* %scevgep156.3.1, align 1
  %scevgep149.3.1 = getelementptr i8, i8* %scevgep149.2.1, i64 1
  %scevgep154.3.1 = getelementptr [11 x i8], [11 x i8]* %485, i64 0, i64 1
  %488 = bitcast i8* %scevgep154.3.1 to [11 x i8]*
  %scevgep155.4.1 = getelementptr [11 x i8], [11 x i8]* %488, i64 0, i64 0
  %489 = load i8, i8* %scevgep149.3.1, align 1
  %conv.i363.4.1 = zext i8 %489 to i32
  %490 = load i8, i8* %scevgep155.4.1, align 1
  %conv5.i368.4.1 = zext i8 %490 to i32
  %xor.i369.4.1 = xor i32 %conv.i363.4.1, %conv5.i368.4.1
  %conv6.i370.4.1 = trunc i32 %xor.i369.4.1 to i8
  %scevgep156.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i370.4.1, i8* %scevgep156.4.1, align 1
  %scevgep149.4.1 = getelementptr i8, i8* %scevgep149.3.1, i64 1
  %scevgep154.4.1 = getelementptr [11 x i8], [11 x i8]* %488, i64 0, i64 1
  %491 = bitcast i8* %scevgep154.4.1 to [11 x i8]*
  %scevgep155.5.1 = getelementptr [11 x i8], [11 x i8]* %491, i64 0, i64 0
  %492 = load i8, i8* %scevgep149.4.1, align 1
  %conv.i363.5.1 = zext i8 %492 to i32
  %493 = load i8, i8* %scevgep155.5.1, align 1
  %conv5.i368.5.1 = zext i8 %493 to i32
  %xor.i369.5.1 = xor i32 %conv.i363.5.1, %conv5.i368.5.1
  %conv6.i370.5.1 = trunc i32 %xor.i369.5.1 to i8
  %scevgep156.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i370.5.1, i8* %scevgep156.5.1, align 1
  %scevgep149.5.1 = getelementptr i8, i8* %scevgep149.4.1, i64 1
  %scevgep154.5.1 = getelementptr [11 x i8], [11 x i8]* %491, i64 0, i64 1
  %494 = bitcast i8* %scevgep154.5.1 to [11 x i8]*
  %scevgep155.6.1 = getelementptr [11 x i8], [11 x i8]* %494, i64 0, i64 0
  %495 = load i8, i8* %scevgep149.5.1, align 1
  %conv.i363.6.1 = zext i8 %495 to i32
  %496 = load i8, i8* %scevgep155.6.1, align 1
  %conv5.i368.6.1 = zext i8 %496 to i32
  %xor.i369.6.1 = xor i32 %conv.i363.6.1, %conv5.i368.6.1
  %conv6.i370.6.1 = trunc i32 %xor.i369.6.1 to i8
  %scevgep156.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i370.6.1, i8* %scevgep156.6.1, align 1
  %scevgep149.6.1 = getelementptr i8, i8* %scevgep149.5.1, i64 1
  %scevgep154.6.1 = getelementptr [11 x i8], [11 x i8]* %494, i64 0, i64 1
  %497 = bitcast i8* %scevgep154.6.1 to [11 x i8]*
  %scevgep155.7.1 = getelementptr [11 x i8], [11 x i8]* %497, i64 0, i64 0
  %498 = load i8, i8* %scevgep149.6.1, align 1
  %conv.i363.7.1 = zext i8 %498 to i32
  %499 = load i8, i8* %scevgep155.7.1, align 1
  %conv5.i368.7.1 = zext i8 %499 to i32
  %xor.i369.7.1 = xor i32 %conv.i363.7.1, %conv5.i368.7.1
  %conv6.i370.7.1 = trunc i32 %xor.i369.7.1 to i8
  %scevgep156.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i370.7.1, i8* %scevgep156.7.1, align 1
  %scevgep149.7.1 = getelementptr i8, i8* %scevgep149.6.1, i64 1
  %scevgep154.7.1 = getelementptr [11 x i8], [11 x i8]* %497, i64 0, i64 1
  %500 = bitcast i8* %scevgep154.7.1 to [11 x i8]*
  %scevgep155.8.1 = getelementptr [11 x i8], [11 x i8]* %500, i64 0, i64 0
  %501 = load i8, i8* %scevgep149.7.1, align 1
  %conv.i363.8.1 = zext i8 %501 to i32
  %502 = load i8, i8* %scevgep155.8.1, align 1
  %conv5.i368.8.1 = zext i8 %502 to i32
  %xor.i369.8.1 = xor i32 %conv.i363.8.1, %conv5.i368.8.1
  %conv6.i370.8.1 = trunc i32 %xor.i369.8.1 to i8
  %scevgep156.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i370.8.1, i8* %scevgep156.8.1, align 1
  %scevgep149.8.1 = getelementptr i8, i8* %scevgep149.7.1, i64 1
  %scevgep154.8.1 = getelementptr [11 x i8], [11 x i8]* %500, i64 0, i64 1
  %503 = bitcast i8* %scevgep154.8.1 to [11 x i8]*
  %scevgep155.9.1 = getelementptr [11 x i8], [11 x i8]* %503, i64 0, i64 0
  %504 = load i8, i8* %scevgep149.8.1, align 1
  %conv.i363.9.1 = zext i8 %504 to i32
  %505 = load i8, i8* %scevgep155.9.1, align 1
  %conv5.i368.9.1 = zext i8 %505 to i32
  %xor.i369.9.1 = xor i32 %conv.i363.9.1, %conv5.i368.9.1
  %conv6.i370.9.1 = trunc i32 %xor.i369.9.1 to i8
  %scevgep156.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i370.9.1, i8* %scevgep156.9.1, align 1
  %scevgep149.9.1 = getelementptr i8, i8* %scevgep149.8.1, i64 1
  %scevgep154.9.1 = getelementptr [11 x i8], [11 x i8]* %503, i64 0, i64 1
  %506 = bitcast i8* %scevgep154.9.1 to [11 x i8]*
  %scevgep155.10.1 = getelementptr [11 x i8], [11 x i8]* %506, i64 0, i64 0
  %507 = load i8, i8* %scevgep149.9.1, align 1
  %conv.i363.10.1 = zext i8 %507 to i32
  %508 = load i8, i8* %scevgep155.10.1, align 1
  %conv5.i368.10.1 = zext i8 %508 to i32
  %xor.i369.10.1 = xor i32 %conv.i363.10.1, %conv5.i368.10.1
  %conv6.i370.10.1 = trunc i32 %xor.i369.10.1 to i8
  %scevgep156.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i370.10.1, i8* %scevgep156.10.1, align 1
  %arrayidx42.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1
  %arraydecay43.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx42.1, i64 0, i64 0
  %509 = load i8, i8* %c, align 1
  %conv.i410.1256 = zext i8 %509 to i32
  %arrayidx4.i414.1257 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 1
  %510 = load i8, i8* %arrayidx4.i414.1257, align 1
  %conv5.i415.1258 = zext i8 %510 to i32
  %xor.i416.1259 = xor i32 %conv.i410.1256, %conv5.i415.1258
  %conv6.i417.1260 = trunc i32 %xor.i416.1259 to i8
  store i8 %conv6.i417.1260, i8* %c, align 1
  %scevgep159.1261 = getelementptr i8, i8* %c, i64 1
  %511 = load i8, i8* %scevgep159.1261, align 1
  %conv.i410.1.1 = zext i8 %511 to i32
  %arrayidx4.i414.1.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 2
  %512 = load i8, i8* %arrayidx4.i414.1.1, align 1
  %conv5.i415.1.1 = zext i8 %512 to i32
  %xor.i416.1.1 = xor i32 %conv.i410.1.1, %conv5.i415.1.1
  %conv6.i417.1.1 = trunc i32 %xor.i416.1.1 to i8
  %scevgep165.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i417.1.1, i8* %scevgep165.1.1, align 1
  %scevgep159.1.1 = getelementptr i8, i8* %scevgep159.1261, i64 1
  %513 = load i8, i8* %scevgep159.1.1, align 1
  %conv.i410.2.1 = zext i8 %513 to i32
  %arrayidx4.i414.2.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 3
  %514 = load i8, i8* %arrayidx4.i414.2.1, align 1
  %conv5.i415.2.1 = zext i8 %514 to i32
  %xor.i416.2.1 = xor i32 %conv.i410.2.1, %conv5.i415.2.1
  %conv6.i417.2.1 = trunc i32 %xor.i416.2.1 to i8
  %scevgep165.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i417.2.1, i8* %scevgep165.2.1, align 1
  %scevgep159.2.1 = getelementptr i8, i8* %scevgep159.1.1, i64 1
  %515 = load i8, i8* %scevgep159.2.1, align 1
  %conv.i410.3.1 = zext i8 %515 to i32
  %arrayidx4.i414.3.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 4
  %516 = load i8, i8* %arrayidx4.i414.3.1, align 1
  %conv5.i415.3.1 = zext i8 %516 to i32
  %xor.i416.3.1 = xor i32 %conv.i410.3.1, %conv5.i415.3.1
  %conv6.i417.3.1 = trunc i32 %xor.i416.3.1 to i8
  %scevgep165.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i417.3.1, i8* %scevgep165.3.1, align 1
  %scevgep159.3.1 = getelementptr i8, i8* %scevgep159.2.1, i64 1
  %517 = load i8, i8* %scevgep159.3.1, align 1
  %conv.i410.4.1 = zext i8 %517 to i32
  %arrayidx4.i414.4.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 5
  %518 = load i8, i8* %arrayidx4.i414.4.1, align 1
  %conv5.i415.4.1 = zext i8 %518 to i32
  %xor.i416.4.1 = xor i32 %conv.i410.4.1, %conv5.i415.4.1
  %conv6.i417.4.1 = trunc i32 %xor.i416.4.1 to i8
  %scevgep165.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i417.4.1, i8* %scevgep165.4.1, align 1
  %scevgep159.4.1 = getelementptr i8, i8* %scevgep159.3.1, i64 1
  %519 = load i8, i8* %scevgep159.4.1, align 1
  %conv.i410.5.1 = zext i8 %519 to i32
  %arrayidx4.i414.5.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 6
  %520 = load i8, i8* %arrayidx4.i414.5.1, align 1
  %conv5.i415.5.1 = zext i8 %520 to i32
  %xor.i416.5.1 = xor i32 %conv.i410.5.1, %conv5.i415.5.1
  %conv6.i417.5.1 = trunc i32 %xor.i416.5.1 to i8
  %scevgep165.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i417.5.1, i8* %scevgep165.5.1, align 1
  %scevgep159.5.1 = getelementptr i8, i8* %scevgep159.4.1, i64 1
  %521 = load i8, i8* %scevgep159.5.1, align 1
  %conv.i410.6.1 = zext i8 %521 to i32
  %arrayidx4.i414.6.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 7
  %522 = load i8, i8* %arrayidx4.i414.6.1, align 1
  %conv5.i415.6.1 = zext i8 %522 to i32
  %xor.i416.6.1 = xor i32 %conv.i410.6.1, %conv5.i415.6.1
  %conv6.i417.6.1 = trunc i32 %xor.i416.6.1 to i8
  %scevgep165.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i417.6.1, i8* %scevgep165.6.1, align 1
  %scevgep159.6.1 = getelementptr i8, i8* %scevgep159.5.1, i64 1
  %523 = load i8, i8* %scevgep159.6.1, align 1
  %conv.i410.7.1 = zext i8 %523 to i32
  %arrayidx4.i414.7.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 8
  %524 = load i8, i8* %arrayidx4.i414.7.1, align 1
  %conv5.i415.7.1 = zext i8 %524 to i32
  %xor.i416.7.1 = xor i32 %conv.i410.7.1, %conv5.i415.7.1
  %conv6.i417.7.1 = trunc i32 %xor.i416.7.1 to i8
  %scevgep165.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i417.7.1, i8* %scevgep165.7.1, align 1
  %scevgep159.7.1 = getelementptr i8, i8* %scevgep159.6.1, i64 1
  %525 = load i8, i8* %scevgep159.7.1, align 1
  %conv.i410.8.1 = zext i8 %525 to i32
  %arrayidx4.i414.8.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 9
  %526 = load i8, i8* %arrayidx4.i414.8.1, align 1
  %conv5.i415.8.1 = zext i8 %526 to i32
  %xor.i416.8.1 = xor i32 %conv.i410.8.1, %conv5.i415.8.1
  %conv6.i417.8.1 = trunc i32 %xor.i416.8.1 to i8
  %scevgep165.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i417.8.1, i8* %scevgep165.8.1, align 1
  %scevgep159.8.1 = getelementptr i8, i8* %scevgep159.7.1, i64 1
  %527 = load i8, i8* %scevgep159.8.1, align 1
  %conv.i410.9.1 = zext i8 %527 to i32
  %arrayidx4.i414.9.1 = getelementptr inbounds i8, i8* %arraydecay43.1, i64 10
  %528 = load i8, i8* %arrayidx4.i414.9.1, align 1
  %conv5.i415.9.1 = zext i8 %528 to i32
  %xor.i416.9.1 = xor i32 %conv.i410.9.1, %conv5.i415.9.1
  %conv6.i417.9.1 = trunc i32 %xor.i416.9.1 to i8
  %scevgep165.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i417.9.1, i8* %scevgep165.9.1, align 1
  %scevgep159.9.1 = getelementptr i8, i8* %scevgep159.8.1, i64 1
  %529 = load i8, i8* %scevgep159.9.1, align 1
  %conv.i410.10.1 = zext i8 %529 to i32
  %530 = load i8, i8* %arraydecay43.1, align 1
  %conv5.i415.10.1 = zext i8 %530 to i32
  %xor.i416.10.1 = xor i32 %conv.i410.10.1, %conv5.i415.10.1
  %conv6.i417.10.1 = trunc i32 %xor.i416.10.1 to i8
  %scevgep165.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i417.10.1, i8* %scevgep165.10.1, align 1
  %scevgep174.1262 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  %531 = load i8, i8* %c, align 1
  %conv.i460.1263 = zext i8 %531 to i32
  %532 = load i8, i8* %scevgep174.1262, align 1
  %conv5.i465.1264 = zext i8 %532 to i32
  %xor.i466.1265 = xor i32 %conv.i460.1263, %conv5.i465.1264
  %conv6.i467.1266 = trunc i32 %xor.i466.1265 to i8
  store i8 %conv6.i467.1266, i8* %c, align 1
  %scevgep168.1267 = getelementptr i8, i8* %c, i64 1
  %scevgep173.1268 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 1
  %533 = bitcast i8* %scevgep173.1268 to [11 x i8]*
  %scevgep174.1.1 = getelementptr [11 x i8], [11 x i8]* %533, i64 0, i64 0
  %534 = load i8, i8* %scevgep168.1267, align 1
  %conv.i460.1.1 = zext i8 %534 to i32
  %535 = load i8, i8* %scevgep174.1.1, align 1
  %conv5.i465.1.1 = zext i8 %535 to i32
  %xor.i466.1.1 = xor i32 %conv.i460.1.1, %conv5.i465.1.1
  %conv6.i467.1.1 = trunc i32 %xor.i466.1.1 to i8
  %scevgep175.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i467.1.1, i8* %scevgep175.1.1, align 1
  %scevgep168.1.1 = getelementptr i8, i8* %scevgep168.1267, i64 1
  %scevgep173.1.1 = getelementptr [11 x i8], [11 x i8]* %533, i64 0, i64 1
  %536 = bitcast i8* %scevgep173.1.1 to [11 x i8]*
  %scevgep174.2.1 = getelementptr [11 x i8], [11 x i8]* %536, i64 0, i64 0
  %537 = load i8, i8* %scevgep168.1.1, align 1
  %conv.i460.2.1 = zext i8 %537 to i32
  %538 = load i8, i8* %scevgep174.2.1, align 1
  %conv5.i465.2.1 = zext i8 %538 to i32
  %xor.i466.2.1 = xor i32 %conv.i460.2.1, %conv5.i465.2.1
  %conv6.i467.2.1 = trunc i32 %xor.i466.2.1 to i8
  %scevgep175.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i467.2.1, i8* %scevgep175.2.1, align 1
  %scevgep168.2.1 = getelementptr i8, i8* %scevgep168.1.1, i64 1
  %scevgep173.2.1 = getelementptr [11 x i8], [11 x i8]* %536, i64 0, i64 1
  %539 = bitcast i8* %scevgep173.2.1 to [11 x i8]*
  %scevgep174.3.1 = getelementptr [11 x i8], [11 x i8]* %539, i64 0, i64 0
  %540 = load i8, i8* %scevgep168.2.1, align 1
  %conv.i460.3.1 = zext i8 %540 to i32
  %541 = load i8, i8* %scevgep174.3.1, align 1
  %conv5.i465.3.1 = zext i8 %541 to i32
  %xor.i466.3.1 = xor i32 %conv.i460.3.1, %conv5.i465.3.1
  %conv6.i467.3.1 = trunc i32 %xor.i466.3.1 to i8
  %scevgep175.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i467.3.1, i8* %scevgep175.3.1, align 1
  %scevgep168.3.1 = getelementptr i8, i8* %scevgep168.2.1, i64 1
  %scevgep173.3.1 = getelementptr [11 x i8], [11 x i8]* %539, i64 0, i64 1
  %542 = bitcast i8* %scevgep173.3.1 to [11 x i8]*
  %scevgep174.4.1 = getelementptr [11 x i8], [11 x i8]* %542, i64 0, i64 0
  %543 = load i8, i8* %scevgep168.3.1, align 1
  %conv.i460.4.1 = zext i8 %543 to i32
  %544 = load i8, i8* %scevgep174.4.1, align 1
  %conv5.i465.4.1 = zext i8 %544 to i32
  %xor.i466.4.1 = xor i32 %conv.i460.4.1, %conv5.i465.4.1
  %conv6.i467.4.1 = trunc i32 %xor.i466.4.1 to i8
  %scevgep175.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i467.4.1, i8* %scevgep175.4.1, align 1
  %scevgep168.4.1 = getelementptr i8, i8* %scevgep168.3.1, i64 1
  %scevgep173.4.1 = getelementptr [11 x i8], [11 x i8]* %542, i64 0, i64 1
  %545 = bitcast i8* %scevgep173.4.1 to [11 x i8]*
  %scevgep174.5.1 = getelementptr [11 x i8], [11 x i8]* %545, i64 0, i64 0
  %546 = load i8, i8* %scevgep168.4.1, align 1
  %conv.i460.5.1 = zext i8 %546 to i32
  %547 = load i8, i8* %scevgep174.5.1, align 1
  %conv5.i465.5.1 = zext i8 %547 to i32
  %xor.i466.5.1 = xor i32 %conv.i460.5.1, %conv5.i465.5.1
  %conv6.i467.5.1 = trunc i32 %xor.i466.5.1 to i8
  %scevgep175.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i467.5.1, i8* %scevgep175.5.1, align 1
  %scevgep168.5.1 = getelementptr i8, i8* %scevgep168.4.1, i64 1
  %scevgep173.5.1 = getelementptr [11 x i8], [11 x i8]* %545, i64 0, i64 1
  %548 = bitcast i8* %scevgep173.5.1 to [11 x i8]*
  %scevgep174.6.1 = getelementptr [11 x i8], [11 x i8]* %548, i64 0, i64 0
  %549 = load i8, i8* %scevgep168.5.1, align 1
  %conv.i460.6.1 = zext i8 %549 to i32
  %550 = load i8, i8* %scevgep174.6.1, align 1
  %conv5.i465.6.1 = zext i8 %550 to i32
  %xor.i466.6.1 = xor i32 %conv.i460.6.1, %conv5.i465.6.1
  %conv6.i467.6.1 = trunc i32 %xor.i466.6.1 to i8
  %scevgep175.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i467.6.1, i8* %scevgep175.6.1, align 1
  %scevgep168.6.1 = getelementptr i8, i8* %scevgep168.5.1, i64 1
  %scevgep173.6.1 = getelementptr [11 x i8], [11 x i8]* %548, i64 0, i64 1
  %551 = bitcast i8* %scevgep173.6.1 to [11 x i8]*
  %scevgep174.7.1 = getelementptr [11 x i8], [11 x i8]* %551, i64 0, i64 0
  %552 = load i8, i8* %scevgep168.6.1, align 1
  %conv.i460.7.1 = zext i8 %552 to i32
  %553 = load i8, i8* %scevgep174.7.1, align 1
  %conv5.i465.7.1 = zext i8 %553 to i32
  %xor.i466.7.1 = xor i32 %conv.i460.7.1, %conv5.i465.7.1
  %conv6.i467.7.1 = trunc i32 %xor.i466.7.1 to i8
  %scevgep175.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i467.7.1, i8* %scevgep175.7.1, align 1
  %scevgep168.7.1 = getelementptr i8, i8* %scevgep168.6.1, i64 1
  %scevgep173.7.1 = getelementptr [11 x i8], [11 x i8]* %551, i64 0, i64 1
  %554 = bitcast i8* %scevgep173.7.1 to [11 x i8]*
  %scevgep174.8.1 = getelementptr [11 x i8], [11 x i8]* %554, i64 0, i64 0
  %555 = load i8, i8* %scevgep168.7.1, align 1
  %conv.i460.8.1 = zext i8 %555 to i32
  %556 = load i8, i8* %scevgep174.8.1, align 1
  %conv5.i465.8.1 = zext i8 %556 to i32
  %xor.i466.8.1 = xor i32 %conv.i460.8.1, %conv5.i465.8.1
  %conv6.i467.8.1 = trunc i32 %xor.i466.8.1 to i8
  %scevgep175.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i467.8.1, i8* %scevgep175.8.1, align 1
  %scevgep168.8.1 = getelementptr i8, i8* %scevgep168.7.1, i64 1
  %scevgep173.8.1 = getelementptr [11 x i8], [11 x i8]* %554, i64 0, i64 1
  %557 = bitcast i8* %scevgep173.8.1 to [11 x i8]*
  %scevgep174.9.1 = getelementptr [11 x i8], [11 x i8]* %557, i64 0, i64 0
  %558 = load i8, i8* %scevgep168.8.1, align 1
  %conv.i460.9.1 = zext i8 %558 to i32
  %559 = load i8, i8* %scevgep174.9.1, align 1
  %conv5.i465.9.1 = zext i8 %559 to i32
  %xor.i466.9.1 = xor i32 %conv.i460.9.1, %conv5.i465.9.1
  %conv6.i467.9.1 = trunc i32 %xor.i466.9.1 to i8
  %scevgep175.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i467.9.1, i8* %scevgep175.9.1, align 1
  %scevgep168.9.1 = getelementptr i8, i8* %scevgep168.8.1, i64 1
  %scevgep173.9.1 = getelementptr [11 x i8], [11 x i8]* %557, i64 0, i64 1
  %560 = bitcast i8* %scevgep173.9.1 to [11 x i8]*
  %scevgep174.10.1 = getelementptr [11 x i8], [11 x i8]* %560, i64 0, i64 0
  %561 = load i8, i8* %scevgep168.9.1, align 1
  %conv.i460.10.1 = zext i8 %561 to i32
  %562 = load i8, i8* %scevgep174.10.1, align 1
  %conv5.i465.10.1 = zext i8 %562 to i32
  %xor.i466.10.1 = xor i32 %conv.i460.10.1, %conv5.i465.10.1
  %conv6.i467.10.1 = trunc i32 %xor.i466.10.1 to i8
  %scevgep175.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i467.10.1, i8* %scevgep175.10.1, align 1
  %scevgep184.1269 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 0
  %563 = load i8, i8* %c, align 1
  %conv.i435.1270 = zext i8 %563 to i32
  %564 = load i8, i8* %scevgep184.1269, align 1
  %conv5.i440.1271 = zext i8 %564 to i32
  %xor.i441.1272 = xor i32 %conv.i435.1270, %conv5.i440.1271
  %conv6.i442.1273 = trunc i32 %xor.i441.1272 to i8
  store i8 %conv6.i442.1273, i8* %c, align 1
  %scevgep178.1274 = getelementptr i8, i8* %c, i64 1
  %scevgep183.1275 = getelementptr [11 x i8], [11 x i8]* %a2b, i64 0, i64 1
  %565 = bitcast i8* %scevgep183.1275 to [11 x i8]*
  %scevgep184.1.1 = getelementptr [11 x i8], [11 x i8]* %565, i64 0, i64 0
  %566 = load i8, i8* %scevgep178.1274, align 1
  %conv.i435.1.1 = zext i8 %566 to i32
  %567 = load i8, i8* %scevgep184.1.1, align 1
  %conv5.i440.1.1 = zext i8 %567 to i32
  %xor.i441.1.1 = xor i32 %conv.i435.1.1, %conv5.i440.1.1
  %conv6.i442.1.1 = trunc i32 %xor.i441.1.1 to i8
  %scevgep185.1.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i442.1.1, i8* %scevgep185.1.1, align 1
  %scevgep178.1.1 = getelementptr i8, i8* %scevgep178.1274, i64 1
  %scevgep183.1.1 = getelementptr [11 x i8], [11 x i8]* %565, i64 0, i64 1
  %568 = bitcast i8* %scevgep183.1.1 to [11 x i8]*
  %scevgep184.2.1 = getelementptr [11 x i8], [11 x i8]* %568, i64 0, i64 0
  %569 = load i8, i8* %scevgep178.1.1, align 1
  %conv.i435.2.1 = zext i8 %569 to i32
  %570 = load i8, i8* %scevgep184.2.1, align 1
  %conv5.i440.2.1 = zext i8 %570 to i32
  %xor.i441.2.1 = xor i32 %conv.i435.2.1, %conv5.i440.2.1
  %conv6.i442.2.1 = trunc i32 %xor.i441.2.1 to i8
  %scevgep185.2.1 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i442.2.1, i8* %scevgep185.2.1, align 1
  %scevgep178.2.1 = getelementptr i8, i8* %scevgep178.1.1, i64 1
  %scevgep183.2.1 = getelementptr [11 x i8], [11 x i8]* %568, i64 0, i64 1
  %571 = bitcast i8* %scevgep183.2.1 to [11 x i8]*
  %scevgep184.3.1 = getelementptr [11 x i8], [11 x i8]* %571, i64 0, i64 0
  %572 = load i8, i8* %scevgep178.2.1, align 1
  %conv.i435.3.1 = zext i8 %572 to i32
  %573 = load i8, i8* %scevgep184.3.1, align 1
  %conv5.i440.3.1 = zext i8 %573 to i32
  %xor.i441.3.1 = xor i32 %conv.i435.3.1, %conv5.i440.3.1
  %conv6.i442.3.1 = trunc i32 %xor.i441.3.1 to i8
  %scevgep185.3.1 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i442.3.1, i8* %scevgep185.3.1, align 1
  %scevgep178.3.1 = getelementptr i8, i8* %scevgep178.2.1, i64 1
  %scevgep183.3.1 = getelementptr [11 x i8], [11 x i8]* %571, i64 0, i64 1
  %574 = bitcast i8* %scevgep183.3.1 to [11 x i8]*
  %scevgep184.4.1 = getelementptr [11 x i8], [11 x i8]* %574, i64 0, i64 0
  %575 = load i8, i8* %scevgep178.3.1, align 1
  %conv.i435.4.1 = zext i8 %575 to i32
  %576 = load i8, i8* %scevgep184.4.1, align 1
  %conv5.i440.4.1 = zext i8 %576 to i32
  %xor.i441.4.1 = xor i32 %conv.i435.4.1, %conv5.i440.4.1
  %conv6.i442.4.1 = trunc i32 %xor.i441.4.1 to i8
  %scevgep185.4.1 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i442.4.1, i8* %scevgep185.4.1, align 1
  %scevgep178.4.1 = getelementptr i8, i8* %scevgep178.3.1, i64 1
  %scevgep183.4.1 = getelementptr [11 x i8], [11 x i8]* %574, i64 0, i64 1
  %577 = bitcast i8* %scevgep183.4.1 to [11 x i8]*
  %scevgep184.5.1 = getelementptr [11 x i8], [11 x i8]* %577, i64 0, i64 0
  %578 = load i8, i8* %scevgep178.4.1, align 1
  %conv.i435.5.1 = zext i8 %578 to i32
  %579 = load i8, i8* %scevgep184.5.1, align 1
  %conv5.i440.5.1 = zext i8 %579 to i32
  %xor.i441.5.1 = xor i32 %conv.i435.5.1, %conv5.i440.5.1
  %conv6.i442.5.1 = trunc i32 %xor.i441.5.1 to i8
  %scevgep185.5.1 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i442.5.1, i8* %scevgep185.5.1, align 1
  %scevgep178.5.1 = getelementptr i8, i8* %scevgep178.4.1, i64 1
  %scevgep183.5.1 = getelementptr [11 x i8], [11 x i8]* %577, i64 0, i64 1
  %580 = bitcast i8* %scevgep183.5.1 to [11 x i8]*
  %scevgep184.6.1 = getelementptr [11 x i8], [11 x i8]* %580, i64 0, i64 0
  %581 = load i8, i8* %scevgep178.5.1, align 1
  %conv.i435.6.1 = zext i8 %581 to i32
  %582 = load i8, i8* %scevgep184.6.1, align 1
  %conv5.i440.6.1 = zext i8 %582 to i32
  %xor.i441.6.1 = xor i32 %conv.i435.6.1, %conv5.i440.6.1
  %conv6.i442.6.1 = trunc i32 %xor.i441.6.1 to i8
  %scevgep185.6.1 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i442.6.1, i8* %scevgep185.6.1, align 1
  %scevgep178.6.1 = getelementptr i8, i8* %scevgep178.5.1, i64 1
  %scevgep183.6.1 = getelementptr [11 x i8], [11 x i8]* %580, i64 0, i64 1
  %583 = bitcast i8* %scevgep183.6.1 to [11 x i8]*
  %scevgep184.7.1 = getelementptr [11 x i8], [11 x i8]* %583, i64 0, i64 0
  %584 = load i8, i8* %scevgep178.6.1, align 1
  %conv.i435.7.1 = zext i8 %584 to i32
  %585 = load i8, i8* %scevgep184.7.1, align 1
  %conv5.i440.7.1 = zext i8 %585 to i32
  %xor.i441.7.1 = xor i32 %conv.i435.7.1, %conv5.i440.7.1
  %conv6.i442.7.1 = trunc i32 %xor.i441.7.1 to i8
  %scevgep185.7.1 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i442.7.1, i8* %scevgep185.7.1, align 1
  %scevgep178.7.1 = getelementptr i8, i8* %scevgep178.6.1, i64 1
  %scevgep183.7.1 = getelementptr [11 x i8], [11 x i8]* %583, i64 0, i64 1
  %586 = bitcast i8* %scevgep183.7.1 to [11 x i8]*
  %scevgep184.8.1 = getelementptr [11 x i8], [11 x i8]* %586, i64 0, i64 0
  %587 = load i8, i8* %scevgep178.7.1, align 1
  %conv.i435.8.1 = zext i8 %587 to i32
  %588 = load i8, i8* %scevgep184.8.1, align 1
  %conv5.i440.8.1 = zext i8 %588 to i32
  %xor.i441.8.1 = xor i32 %conv.i435.8.1, %conv5.i440.8.1
  %conv6.i442.8.1 = trunc i32 %xor.i441.8.1 to i8
  %scevgep185.8.1 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i442.8.1, i8* %scevgep185.8.1, align 1
  %scevgep178.8.1 = getelementptr i8, i8* %scevgep178.7.1, i64 1
  %scevgep183.8.1 = getelementptr [11 x i8], [11 x i8]* %586, i64 0, i64 1
  %589 = bitcast i8* %scevgep183.8.1 to [11 x i8]*
  %scevgep184.9.1 = getelementptr [11 x i8], [11 x i8]* %589, i64 0, i64 0
  %590 = load i8, i8* %scevgep178.8.1, align 1
  %conv.i435.9.1 = zext i8 %590 to i32
  %591 = load i8, i8* %scevgep184.9.1, align 1
  %conv5.i440.9.1 = zext i8 %591 to i32
  %xor.i441.9.1 = xor i32 %conv.i435.9.1, %conv5.i440.9.1
  %conv6.i442.9.1 = trunc i32 %xor.i441.9.1 to i8
  %scevgep185.9.1 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i442.9.1, i8* %scevgep185.9.1, align 1
  %scevgep178.9.1 = getelementptr i8, i8* %scevgep178.8.1, i64 1
  %scevgep183.9.1 = getelementptr [11 x i8], [11 x i8]* %589, i64 0, i64 1
  %592 = bitcast i8* %scevgep183.9.1 to [11 x i8]*
  %scevgep184.10.1 = getelementptr [11 x i8], [11 x i8]* %592, i64 0, i64 0
  %593 = load i8, i8* %scevgep178.9.1, align 1
  %conv.i435.10.1 = zext i8 %593 to i32
  %594 = load i8, i8* %scevgep184.10.1, align 1
  %conv5.i440.10.1 = zext i8 %594 to i32
  %xor.i441.10.1 = xor i32 %conv.i435.10.1, %conv5.i440.10.1
  %conv6.i442.10.1 = trunc i32 %xor.i441.10.1 to i8
  %scevgep185.10.1 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i442.10.1, i8* %scevgep185.10.1, align 1
  %595 = load i8, i8* %a, align 1
  %arrayidx4.i391 = getelementptr inbounds i8, i8* %b, i64 5
  %596 = load i8, i8* %arrayidx4.i391, align 1
  %call.i392 = call zeroext i8 @mult(i8 zeroext %595, i8 zeroext %596) #2
  %scevgep84 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i392, i8* %scevgep84, align 1
  %scevgep78 = getelementptr i8, i8* %a, i64 1
  %597 = load i8, i8* %scevgep78, align 1
  %arrayidx4.i391.1 = getelementptr inbounds i8, i8* %b, i64 6
  %598 = load i8, i8* %arrayidx4.i391.1, align 1
  %call.i392.1 = call zeroext i8 @mult(i8 zeroext %597, i8 zeroext %598) #2
  %scevgep84.1 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i392.1, i8* %scevgep84.1, align 1
  %scevgep78.1 = getelementptr i8, i8* %scevgep78, i64 1
  %599 = load i8, i8* %scevgep78.1, align 1
  %arrayidx4.i391.2 = getelementptr inbounds i8, i8* %b, i64 7
  %600 = load i8, i8* %arrayidx4.i391.2, align 1
  %call.i392.2 = call zeroext i8 @mult(i8 zeroext %599, i8 zeroext %600) #2
  %scevgep84.2 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i392.2, i8* %scevgep84.2, align 1
  %scevgep78.2 = getelementptr i8, i8* %scevgep78.1, i64 1
  %601 = load i8, i8* %scevgep78.2, align 1
  %arrayidx4.i391.3 = getelementptr inbounds i8, i8* %b, i64 8
  %602 = load i8, i8* %arrayidx4.i391.3, align 1
  %call.i392.3 = call zeroext i8 @mult(i8 zeroext %601, i8 zeroext %602) #2
  %scevgep84.3 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i392.3, i8* %scevgep84.3, align 1
  %scevgep78.3 = getelementptr i8, i8* %scevgep78.2, i64 1
  %603 = load i8, i8* %scevgep78.3, align 1
  %arrayidx4.i391.4 = getelementptr inbounds i8, i8* %b, i64 9
  %604 = load i8, i8* %arrayidx4.i391.4, align 1
  %call.i392.4 = call zeroext i8 @mult(i8 zeroext %603, i8 zeroext %604) #2
  %scevgep84.4 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i392.4, i8* %scevgep84.4, align 1
  %scevgep78.4 = getelementptr i8, i8* %scevgep78.3, i64 1
  %605 = load i8, i8* %scevgep78.4, align 1
  %arrayidx4.i391.5 = getelementptr inbounds i8, i8* %b, i64 10
  %606 = load i8, i8* %arrayidx4.i391.5, align 1
  %call.i392.5 = call zeroext i8 @mult(i8 zeroext %605, i8 zeroext %606) #2
  %scevgep84.5 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i392.5, i8* %scevgep84.5, align 1
  %scevgep78.5 = getelementptr i8, i8* %scevgep78.4, i64 1
  %607 = load i8, i8* %scevgep78.5, align 1
  %608 = load i8, i8* %b, align 1
  %call.i392.6 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %608) #2
  %scevgep84.6 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 6
  store i8 %call.i392.6, i8* %scevgep84.6, align 1
  %scevgep78.6 = getelementptr i8, i8* %scevgep78.5, i64 1
  %609 = load i8, i8* %scevgep78.6, align 1
  %arrayidx4.i391.7 = getelementptr inbounds i8, i8* %b, i64 1
  %610 = load i8, i8* %arrayidx4.i391.7, align 1
  %call.i392.7 = call zeroext i8 @mult(i8 zeroext %609, i8 zeroext %610) #2
  %scevgep84.7 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 7
  store i8 %call.i392.7, i8* %scevgep84.7, align 1
  %scevgep78.7 = getelementptr i8, i8* %scevgep78.6, i64 1
  %611 = load i8, i8* %scevgep78.7, align 1
  %arrayidx4.i391.8 = getelementptr inbounds i8, i8* %b, i64 2
  %612 = load i8, i8* %arrayidx4.i391.8, align 1
  %call.i392.8 = call zeroext i8 @mult(i8 zeroext %611, i8 zeroext %612) #2
  %scevgep84.8 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 8
  store i8 %call.i392.8, i8* %scevgep84.8, align 1
  %scevgep78.8 = getelementptr i8, i8* %scevgep78.7, i64 1
  %613 = load i8, i8* %scevgep78.8, align 1
  %arrayidx4.i391.9 = getelementptr inbounds i8, i8* %b, i64 3
  %614 = load i8, i8* %arrayidx4.i391.9, align 1
  %call.i392.9 = call zeroext i8 @mult(i8 zeroext %613, i8 zeroext %614) #2
  %scevgep84.9 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 9
  store i8 %call.i392.9, i8* %scevgep84.9, align 1
  %scevgep78.9 = getelementptr i8, i8* %scevgep78.8, i64 1
  %615 = load i8, i8* %scevgep78.9, align 1
  %arrayidx4.i391.10 = getelementptr inbounds i8, i8* %b, i64 4
  %616 = load i8, i8* %arrayidx4.i391.10, align 1
  %call.i392.10 = call zeroext i8 @mult(i8 zeroext %615, i8 zeroext %616) #2
  %scevgep84.10 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 10
  store i8 %call.i392.10, i8* %scevgep84.10, align 1
  %617 = load i8, i8* %a, align 1
  %arrayidx4.i344 = getelementptr inbounds i8, i8* %b, i64 6
  %618 = load i8, i8* %arrayidx4.i344, align 1
  %call.i345 = call zeroext i8 @mult(i8 zeroext %617, i8 zeroext %618) #2
  %scevgep75 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i345, i8* %scevgep75, align 1
  %scevgep69 = getelementptr i8, i8* %a, i64 1
  %619 = load i8, i8* %scevgep69, align 1
  %arrayidx4.i344.1 = getelementptr inbounds i8, i8* %b, i64 7
  %620 = load i8, i8* %arrayidx4.i344.1, align 1
  %call.i345.1 = call zeroext i8 @mult(i8 zeroext %619, i8 zeroext %620) #2
  %scevgep75.1 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i345.1, i8* %scevgep75.1, align 1
  %scevgep69.1 = getelementptr i8, i8* %scevgep69, i64 1
  %621 = load i8, i8* %scevgep69.1, align 1
  %arrayidx4.i344.2 = getelementptr inbounds i8, i8* %b, i64 8
  %622 = load i8, i8* %arrayidx4.i344.2, align 1
  %call.i345.2 = call zeroext i8 @mult(i8 zeroext %621, i8 zeroext %622) #2
  %scevgep75.2 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i345.2, i8* %scevgep75.2, align 1
  %scevgep69.2 = getelementptr i8, i8* %scevgep69.1, i64 1
  %623 = load i8, i8* %scevgep69.2, align 1
  %arrayidx4.i344.3 = getelementptr inbounds i8, i8* %b, i64 9
  %624 = load i8, i8* %arrayidx4.i344.3, align 1
  %call.i345.3 = call zeroext i8 @mult(i8 zeroext %623, i8 zeroext %624) #2
  %scevgep75.3 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i345.3, i8* %scevgep75.3, align 1
  %scevgep69.3 = getelementptr i8, i8* %scevgep69.2, i64 1
  %625 = load i8, i8* %scevgep69.3, align 1
  %arrayidx4.i344.4 = getelementptr inbounds i8, i8* %b, i64 10
  %626 = load i8, i8* %arrayidx4.i344.4, align 1
  %call.i345.4 = call zeroext i8 @mult(i8 zeroext %625, i8 zeroext %626) #2
  %scevgep75.4 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i345.4, i8* %scevgep75.4, align 1
  %scevgep69.4 = getelementptr i8, i8* %scevgep69.3, i64 1
  %627 = load i8, i8* %scevgep69.4, align 1
  %628 = load i8, i8* %b, align 1
  %call.i345.5 = call zeroext i8 @mult(i8 zeroext %627, i8 zeroext %628) #2
  %scevgep75.5 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i345.5, i8* %scevgep75.5, align 1
  %scevgep69.5 = getelementptr i8, i8* %scevgep69.4, i64 1
  %629 = load i8, i8* %scevgep69.5, align 1
  %arrayidx4.i344.6 = getelementptr inbounds i8, i8* %b, i64 1
  %630 = load i8, i8* %arrayidx4.i344.6, align 1
  %call.i345.6 = call zeroext i8 @mult(i8 zeroext %629, i8 zeroext %630) #2
  %scevgep75.6 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 6
  store i8 %call.i345.6, i8* %scevgep75.6, align 1
  %scevgep69.6 = getelementptr i8, i8* %scevgep69.5, i64 1
  %631 = load i8, i8* %scevgep69.6, align 1
  %arrayidx4.i344.7 = getelementptr inbounds i8, i8* %b, i64 2
  %632 = load i8, i8* %arrayidx4.i344.7, align 1
  %call.i345.7 = call zeroext i8 @mult(i8 zeroext %631, i8 zeroext %632) #2
  %scevgep75.7 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 7
  store i8 %call.i345.7, i8* %scevgep75.7, align 1
  %scevgep69.7 = getelementptr i8, i8* %scevgep69.6, i64 1
  %633 = load i8, i8* %scevgep69.7, align 1
  %arrayidx4.i344.8 = getelementptr inbounds i8, i8* %b, i64 3
  %634 = load i8, i8* %arrayidx4.i344.8, align 1
  %call.i345.8 = call zeroext i8 @mult(i8 zeroext %633, i8 zeroext %634) #2
  %scevgep75.8 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 8
  store i8 %call.i345.8, i8* %scevgep75.8, align 1
  %scevgep69.8 = getelementptr i8, i8* %scevgep69.7, i64 1
  %635 = load i8, i8* %scevgep69.8, align 1
  %arrayidx4.i344.9 = getelementptr inbounds i8, i8* %b, i64 4
  %636 = load i8, i8* %arrayidx4.i344.9, align 1
  %call.i345.9 = call zeroext i8 @mult(i8 zeroext %635, i8 zeroext %636) #2
  %scevgep75.9 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 9
  store i8 %call.i345.9, i8* %scevgep75.9, align 1
  %scevgep69.9 = getelementptr i8, i8* %scevgep69.8, i64 1
  %637 = load i8, i8* %scevgep69.9, align 1
  %arrayidx4.i344.10 = getelementptr inbounds i8, i8* %b, i64 5
  %638 = load i8, i8* %arrayidx4.i344.10, align 1
  %call.i345.10 = call zeroext i8 @mult(i8 zeroext %637, i8 zeroext %638) #2
  %scevgep75.10 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 10
  store i8 %call.i345.10, i8* %scevgep75.10, align 1
  %scevgep61 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [11 x [11 x i8]]*
  %scevgep65 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep6162, i64 0, i64 0, i64 0
  %639 = load i8, i8* %c, align 1
  %conv.i316 = zext i8 %639 to i32
  %640 = load i8, i8* %scevgep65, align 1
  %conv5.i321 = zext i8 %640 to i32
  %xor.i322 = xor i32 %conv.i316, %conv5.i321
  %conv6.i323 = trunc i32 %xor.i322 to i8
  store i8 %conv6.i323, i8* %c, align 1
  %scevgep57 = getelementptr i8, i8* %c, i64 1
  %scevgep64 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep6162, i64 0, i64 0, i64 1
  %641 = bitcast i8* %scevgep64 to [11 x [11 x i8]]*
  %scevgep65.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %641, i64 0, i64 0, i64 0
  %642 = load i8, i8* %scevgep57, align 1
  %conv.i316.1 = zext i8 %642 to i32
  %643 = load i8, i8* %scevgep65.1, align 1
  %conv5.i321.1 = zext i8 %643 to i32
  %xor.i322.1 = xor i32 %conv.i316.1, %conv5.i321.1
  %conv6.i323.1 = trunc i32 %xor.i322.1 to i8
  %scevgep66.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i323.1, i8* %scevgep66.1, align 1
  %scevgep57.1 = getelementptr i8, i8* %scevgep57, i64 1
  %scevgep64.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %641, i64 0, i64 0, i64 1
  %644 = bitcast i8* %scevgep64.1 to [11 x [11 x i8]]*
  %scevgep65.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %644, i64 0, i64 0, i64 0
  %645 = load i8, i8* %scevgep57.1, align 1
  %conv.i316.2 = zext i8 %645 to i32
  %646 = load i8, i8* %scevgep65.2, align 1
  %conv5.i321.2 = zext i8 %646 to i32
  %xor.i322.2 = xor i32 %conv.i316.2, %conv5.i321.2
  %conv6.i323.2 = trunc i32 %xor.i322.2 to i8
  %scevgep66.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i323.2, i8* %scevgep66.2, align 1
  %scevgep57.2 = getelementptr i8, i8* %scevgep57.1, i64 1
  %scevgep64.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %644, i64 0, i64 0, i64 1
  %647 = bitcast i8* %scevgep64.2 to [11 x [11 x i8]]*
  %scevgep65.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %647, i64 0, i64 0, i64 0
  %648 = load i8, i8* %scevgep57.2, align 1
  %conv.i316.3 = zext i8 %648 to i32
  %649 = load i8, i8* %scevgep65.3, align 1
  %conv5.i321.3 = zext i8 %649 to i32
  %xor.i322.3 = xor i32 %conv.i316.3, %conv5.i321.3
  %conv6.i323.3 = trunc i32 %xor.i322.3 to i8
  %scevgep66.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i323.3, i8* %scevgep66.3, align 1
  %scevgep57.3 = getelementptr i8, i8* %scevgep57.2, i64 1
  %scevgep64.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %647, i64 0, i64 0, i64 1
  %650 = bitcast i8* %scevgep64.3 to [11 x [11 x i8]]*
  %scevgep65.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %650, i64 0, i64 0, i64 0
  %651 = load i8, i8* %scevgep57.3, align 1
  %conv.i316.4 = zext i8 %651 to i32
  %652 = load i8, i8* %scevgep65.4, align 1
  %conv5.i321.4 = zext i8 %652 to i32
  %xor.i322.4 = xor i32 %conv.i316.4, %conv5.i321.4
  %conv6.i323.4 = trunc i32 %xor.i322.4 to i8
  %scevgep66.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i323.4, i8* %scevgep66.4, align 1
  %scevgep57.4 = getelementptr i8, i8* %scevgep57.3, i64 1
  %scevgep64.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %650, i64 0, i64 0, i64 1
  %653 = bitcast i8* %scevgep64.4 to [11 x [11 x i8]]*
  %scevgep65.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %653, i64 0, i64 0, i64 0
  %654 = load i8, i8* %scevgep57.4, align 1
  %conv.i316.5 = zext i8 %654 to i32
  %655 = load i8, i8* %scevgep65.5, align 1
  %conv5.i321.5 = zext i8 %655 to i32
  %xor.i322.5 = xor i32 %conv.i316.5, %conv5.i321.5
  %conv6.i323.5 = trunc i32 %xor.i322.5 to i8
  %scevgep66.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i323.5, i8* %scevgep66.5, align 1
  %scevgep57.5 = getelementptr i8, i8* %scevgep57.4, i64 1
  %scevgep64.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %653, i64 0, i64 0, i64 1
  %656 = bitcast i8* %scevgep64.5 to [11 x [11 x i8]]*
  %scevgep65.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %656, i64 0, i64 0, i64 0
  %657 = load i8, i8* %scevgep57.5, align 1
  %conv.i316.6 = zext i8 %657 to i32
  %658 = load i8, i8* %scevgep65.6, align 1
  %conv5.i321.6 = zext i8 %658 to i32
  %xor.i322.6 = xor i32 %conv.i316.6, %conv5.i321.6
  %conv6.i323.6 = trunc i32 %xor.i322.6 to i8
  %scevgep66.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i323.6, i8* %scevgep66.6, align 1
  %scevgep57.6 = getelementptr i8, i8* %scevgep57.5, i64 1
  %scevgep64.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %656, i64 0, i64 0, i64 1
  %659 = bitcast i8* %scevgep64.6 to [11 x [11 x i8]]*
  %scevgep65.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %659, i64 0, i64 0, i64 0
  %660 = load i8, i8* %scevgep57.6, align 1
  %conv.i316.7 = zext i8 %660 to i32
  %661 = load i8, i8* %scevgep65.7, align 1
  %conv5.i321.7 = zext i8 %661 to i32
  %xor.i322.7 = xor i32 %conv.i316.7, %conv5.i321.7
  %conv6.i323.7 = trunc i32 %xor.i322.7 to i8
  %scevgep66.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i323.7, i8* %scevgep66.7, align 1
  %scevgep57.7 = getelementptr i8, i8* %scevgep57.6, i64 1
  %scevgep64.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %659, i64 0, i64 0, i64 1
  %662 = bitcast i8* %scevgep64.7 to [11 x [11 x i8]]*
  %scevgep65.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %662, i64 0, i64 0, i64 0
  %663 = load i8, i8* %scevgep57.7, align 1
  %conv.i316.8 = zext i8 %663 to i32
  %664 = load i8, i8* %scevgep65.8, align 1
  %conv5.i321.8 = zext i8 %664 to i32
  %xor.i322.8 = xor i32 %conv.i316.8, %conv5.i321.8
  %conv6.i323.8 = trunc i32 %xor.i322.8 to i8
  %scevgep66.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i323.8, i8* %scevgep66.8, align 1
  %scevgep57.8 = getelementptr i8, i8* %scevgep57.7, i64 1
  %scevgep64.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %662, i64 0, i64 0, i64 1
  %665 = bitcast i8* %scevgep64.8 to [11 x [11 x i8]]*
  %scevgep65.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %665, i64 0, i64 0, i64 0
  %666 = load i8, i8* %scevgep57.8, align 1
  %conv.i316.9 = zext i8 %666 to i32
  %667 = load i8, i8* %scevgep65.9, align 1
  %conv5.i321.9 = zext i8 %667 to i32
  %xor.i322.9 = xor i32 %conv.i316.9, %conv5.i321.9
  %conv6.i323.9 = trunc i32 %xor.i322.9 to i8
  %scevgep66.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i323.9, i8* %scevgep66.9, align 1
  %scevgep57.9 = getelementptr i8, i8* %scevgep57.8, i64 1
  %scevgep64.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %665, i64 0, i64 0, i64 1
  %668 = bitcast i8* %scevgep64.9 to [11 x [11 x i8]]*
  %scevgep65.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %668, i64 0, i64 0, i64 0
  %669 = load i8, i8* %scevgep57.9, align 1
  %conv.i316.10 = zext i8 %669 to i32
  %670 = load i8, i8* %scevgep65.10, align 1
  %conv5.i321.10 = zext i8 %670 to i32
  %xor.i322.10 = xor i32 %conv.i316.10, %conv5.i321.10
  %conv6.i323.10 = trunc i32 %xor.i322.10 to i8
  %scevgep66.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i323.10, i8* %scevgep66.10, align 1
  %scevgep53 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  %671 = load i8, i8* %c, align 1
  %conv.i291 = zext i8 %671 to i32
  %672 = load i8, i8* %scevgep53, align 1
  %conv5.i296 = zext i8 %672 to i32
  %xor.i297 = xor i32 %conv.i291, %conv5.i296
  %conv6.i298 = trunc i32 %xor.i297 to i8
  store i8 %conv6.i298, i8* %c, align 1
  %scevgep47 = getelementptr i8, i8* %c, i64 1
  %scevgep52 = getelementptr [11 x i8], [11 x i8]* %ab1, i64 0, i64 1
  %673 = bitcast i8* %scevgep52 to [11 x i8]*
  %scevgep53.1 = getelementptr [11 x i8], [11 x i8]* %673, i64 0, i64 0
  %674 = load i8, i8* %scevgep47, align 1
  %conv.i291.1 = zext i8 %674 to i32
  %675 = load i8, i8* %scevgep53.1, align 1
  %conv5.i296.1 = zext i8 %675 to i32
  %xor.i297.1 = xor i32 %conv.i291.1, %conv5.i296.1
  %conv6.i298.1 = trunc i32 %xor.i297.1 to i8
  %scevgep54.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i298.1, i8* %scevgep54.1, align 1
  %scevgep47.1 = getelementptr i8, i8* %scevgep47, i64 1
  %scevgep52.1 = getelementptr [11 x i8], [11 x i8]* %673, i64 0, i64 1
  %676 = bitcast i8* %scevgep52.1 to [11 x i8]*
  %scevgep53.2 = getelementptr [11 x i8], [11 x i8]* %676, i64 0, i64 0
  %677 = load i8, i8* %scevgep47.1, align 1
  %conv.i291.2 = zext i8 %677 to i32
  %678 = load i8, i8* %scevgep53.2, align 1
  %conv5.i296.2 = zext i8 %678 to i32
  %xor.i297.2 = xor i32 %conv.i291.2, %conv5.i296.2
  %conv6.i298.2 = trunc i32 %xor.i297.2 to i8
  %scevgep54.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i298.2, i8* %scevgep54.2, align 1
  %scevgep47.2 = getelementptr i8, i8* %scevgep47.1, i64 1
  %scevgep52.2 = getelementptr [11 x i8], [11 x i8]* %676, i64 0, i64 1
  %679 = bitcast i8* %scevgep52.2 to [11 x i8]*
  %scevgep53.3 = getelementptr [11 x i8], [11 x i8]* %679, i64 0, i64 0
  %680 = load i8, i8* %scevgep47.2, align 1
  %conv.i291.3 = zext i8 %680 to i32
  %681 = load i8, i8* %scevgep53.3, align 1
  %conv5.i296.3 = zext i8 %681 to i32
  %xor.i297.3 = xor i32 %conv.i291.3, %conv5.i296.3
  %conv6.i298.3 = trunc i32 %xor.i297.3 to i8
  %scevgep54.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i298.3, i8* %scevgep54.3, align 1
  %scevgep47.3 = getelementptr i8, i8* %scevgep47.2, i64 1
  %scevgep52.3 = getelementptr [11 x i8], [11 x i8]* %679, i64 0, i64 1
  %682 = bitcast i8* %scevgep52.3 to [11 x i8]*
  %scevgep53.4 = getelementptr [11 x i8], [11 x i8]* %682, i64 0, i64 0
  %683 = load i8, i8* %scevgep47.3, align 1
  %conv.i291.4 = zext i8 %683 to i32
  %684 = load i8, i8* %scevgep53.4, align 1
  %conv5.i296.4 = zext i8 %684 to i32
  %xor.i297.4 = xor i32 %conv.i291.4, %conv5.i296.4
  %conv6.i298.4 = trunc i32 %xor.i297.4 to i8
  %scevgep54.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i298.4, i8* %scevgep54.4, align 1
  %scevgep47.4 = getelementptr i8, i8* %scevgep47.3, i64 1
  %scevgep52.4 = getelementptr [11 x i8], [11 x i8]* %682, i64 0, i64 1
  %685 = bitcast i8* %scevgep52.4 to [11 x i8]*
  %scevgep53.5 = getelementptr [11 x i8], [11 x i8]* %685, i64 0, i64 0
  %686 = load i8, i8* %scevgep47.4, align 1
  %conv.i291.5 = zext i8 %686 to i32
  %687 = load i8, i8* %scevgep53.5, align 1
  %conv5.i296.5 = zext i8 %687 to i32
  %xor.i297.5 = xor i32 %conv.i291.5, %conv5.i296.5
  %conv6.i298.5 = trunc i32 %xor.i297.5 to i8
  %scevgep54.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i298.5, i8* %scevgep54.5, align 1
  %scevgep47.5 = getelementptr i8, i8* %scevgep47.4, i64 1
  %scevgep52.5 = getelementptr [11 x i8], [11 x i8]* %685, i64 0, i64 1
  %688 = bitcast i8* %scevgep52.5 to [11 x i8]*
  %scevgep53.6 = getelementptr [11 x i8], [11 x i8]* %688, i64 0, i64 0
  %689 = load i8, i8* %scevgep47.5, align 1
  %conv.i291.6 = zext i8 %689 to i32
  %690 = load i8, i8* %scevgep53.6, align 1
  %conv5.i296.6 = zext i8 %690 to i32
  %xor.i297.6 = xor i32 %conv.i291.6, %conv5.i296.6
  %conv6.i298.6 = trunc i32 %xor.i297.6 to i8
  %scevgep54.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i298.6, i8* %scevgep54.6, align 1
  %scevgep47.6 = getelementptr i8, i8* %scevgep47.5, i64 1
  %scevgep52.6 = getelementptr [11 x i8], [11 x i8]* %688, i64 0, i64 1
  %691 = bitcast i8* %scevgep52.6 to [11 x i8]*
  %scevgep53.7 = getelementptr [11 x i8], [11 x i8]* %691, i64 0, i64 0
  %692 = load i8, i8* %scevgep47.6, align 1
  %conv.i291.7 = zext i8 %692 to i32
  %693 = load i8, i8* %scevgep53.7, align 1
  %conv5.i296.7 = zext i8 %693 to i32
  %xor.i297.7 = xor i32 %conv.i291.7, %conv5.i296.7
  %conv6.i298.7 = trunc i32 %xor.i297.7 to i8
  %scevgep54.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i298.7, i8* %scevgep54.7, align 1
  %scevgep47.7 = getelementptr i8, i8* %scevgep47.6, i64 1
  %scevgep52.7 = getelementptr [11 x i8], [11 x i8]* %691, i64 0, i64 1
  %694 = bitcast i8* %scevgep52.7 to [11 x i8]*
  %scevgep53.8 = getelementptr [11 x i8], [11 x i8]* %694, i64 0, i64 0
  %695 = load i8, i8* %scevgep47.7, align 1
  %conv.i291.8 = zext i8 %695 to i32
  %696 = load i8, i8* %scevgep53.8, align 1
  %conv5.i296.8 = zext i8 %696 to i32
  %xor.i297.8 = xor i32 %conv.i291.8, %conv5.i296.8
  %conv6.i298.8 = trunc i32 %xor.i297.8 to i8
  %scevgep54.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i298.8, i8* %scevgep54.8, align 1
  %scevgep47.8 = getelementptr i8, i8* %scevgep47.7, i64 1
  %scevgep52.8 = getelementptr [11 x i8], [11 x i8]* %694, i64 0, i64 1
  %697 = bitcast i8* %scevgep52.8 to [11 x i8]*
  %scevgep53.9 = getelementptr [11 x i8], [11 x i8]* %697, i64 0, i64 0
  %698 = load i8, i8* %scevgep47.8, align 1
  %conv.i291.9 = zext i8 %698 to i32
  %699 = load i8, i8* %scevgep53.9, align 1
  %conv5.i296.9 = zext i8 %699 to i32
  %xor.i297.9 = xor i32 %conv.i291.9, %conv5.i296.9
  %conv6.i298.9 = trunc i32 %xor.i297.9 to i8
  %scevgep54.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i298.9, i8* %scevgep54.9, align 1
  %scevgep47.9 = getelementptr i8, i8* %scevgep47.8, i64 1
  %scevgep52.9 = getelementptr [11 x i8], [11 x i8]* %697, i64 0, i64 1
  %700 = bitcast i8* %scevgep52.9 to [11 x i8]*
  %scevgep53.10 = getelementptr [11 x i8], [11 x i8]* %700, i64 0, i64 0
  %701 = load i8, i8* %scevgep47.9, align 1
  %conv.i291.10 = zext i8 %701 to i32
  %702 = load i8, i8* %scevgep53.10, align 1
  %conv5.i296.10 = zext i8 %702 to i32
  %xor.i297.10 = xor i32 %conv.i291.10, %conv5.i296.10
  %conv6.i298.10 = trunc i32 %xor.i297.10 to i8
  %scevgep54.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i298.10, i8* %scevgep54.10, align 1
  %arrayidx54 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2
  %arraydecay55 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx54, i64 0, i64 0
  %703 = load i8, i8* %c, align 1
  %conv.i266 = zext i8 %703 to i32
  %arrayidx4.i270 = getelementptr inbounds i8, i8* %arraydecay55, i64 6
  %704 = load i8, i8* %arrayidx4.i270, align 1
  %conv5.i271 = zext i8 %704 to i32
  %xor.i272 = xor i32 %conv.i266, %conv5.i271
  %conv6.i273 = trunc i32 %xor.i272 to i8
  store i8 %conv6.i273, i8* %c, align 1
  %scevgep38 = getelementptr i8, i8* %c, i64 1
  %705 = load i8, i8* %scevgep38, align 1
  %conv.i266.1 = zext i8 %705 to i32
  %arrayidx4.i270.1 = getelementptr inbounds i8, i8* %arraydecay55, i64 7
  %706 = load i8, i8* %arrayidx4.i270.1, align 1
  %conv5.i271.1 = zext i8 %706 to i32
  %xor.i272.1 = xor i32 %conv.i266.1, %conv5.i271.1
  %conv6.i273.1 = trunc i32 %xor.i272.1 to i8
  %scevgep44.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i273.1, i8* %scevgep44.1, align 1
  %scevgep38.1 = getelementptr i8, i8* %scevgep38, i64 1
  %707 = load i8, i8* %scevgep38.1, align 1
  %conv.i266.2 = zext i8 %707 to i32
  %arrayidx4.i270.2 = getelementptr inbounds i8, i8* %arraydecay55, i64 8
  %708 = load i8, i8* %arrayidx4.i270.2, align 1
  %conv5.i271.2 = zext i8 %708 to i32
  %xor.i272.2 = xor i32 %conv.i266.2, %conv5.i271.2
  %conv6.i273.2 = trunc i32 %xor.i272.2 to i8
  %scevgep44.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i273.2, i8* %scevgep44.2, align 1
  %scevgep38.2 = getelementptr i8, i8* %scevgep38.1, i64 1
  %709 = load i8, i8* %scevgep38.2, align 1
  %conv.i266.3 = zext i8 %709 to i32
  %arrayidx4.i270.3 = getelementptr inbounds i8, i8* %arraydecay55, i64 9
  %710 = load i8, i8* %arrayidx4.i270.3, align 1
  %conv5.i271.3 = zext i8 %710 to i32
  %xor.i272.3 = xor i32 %conv.i266.3, %conv5.i271.3
  %conv6.i273.3 = trunc i32 %xor.i272.3 to i8
  %scevgep44.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i273.3, i8* %scevgep44.3, align 1
  %scevgep38.3 = getelementptr i8, i8* %scevgep38.2, i64 1
  %711 = load i8, i8* %scevgep38.3, align 1
  %conv.i266.4 = zext i8 %711 to i32
  %arrayidx4.i270.4 = getelementptr inbounds i8, i8* %arraydecay55, i64 10
  %712 = load i8, i8* %arrayidx4.i270.4, align 1
  %conv5.i271.4 = zext i8 %712 to i32
  %xor.i272.4 = xor i32 %conv.i266.4, %conv5.i271.4
  %conv6.i273.4 = trunc i32 %xor.i272.4 to i8
  %scevgep44.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i273.4, i8* %scevgep44.4, align 1
  %scevgep38.4 = getelementptr i8, i8* %scevgep38.3, i64 1
  %713 = load i8, i8* %scevgep38.4, align 1
  %conv.i266.5 = zext i8 %713 to i32
  %714 = load i8, i8* %arraydecay55, align 1
  %conv5.i271.5 = zext i8 %714 to i32
  %xor.i272.5 = xor i32 %conv.i266.5, %conv5.i271.5
  %conv6.i273.5 = trunc i32 %xor.i272.5 to i8
  %scevgep44.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i273.5, i8* %scevgep44.5, align 1
  %scevgep38.5 = getelementptr i8, i8* %scevgep38.4, i64 1
  %715 = load i8, i8* %scevgep38.5, align 1
  %conv.i266.6 = zext i8 %715 to i32
  %arrayidx4.i270.6 = getelementptr inbounds i8, i8* %arraydecay55, i64 1
  %716 = load i8, i8* %arrayidx4.i270.6, align 1
  %conv5.i271.6 = zext i8 %716 to i32
  %xor.i272.6 = xor i32 %conv.i266.6, %conv5.i271.6
  %conv6.i273.6 = trunc i32 %xor.i272.6 to i8
  %scevgep44.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i273.6, i8* %scevgep44.6, align 1
  %scevgep38.6 = getelementptr i8, i8* %scevgep38.5, i64 1
  %717 = load i8, i8* %scevgep38.6, align 1
  %conv.i266.7 = zext i8 %717 to i32
  %arrayidx4.i270.7 = getelementptr inbounds i8, i8* %arraydecay55, i64 2
  %718 = load i8, i8* %arrayidx4.i270.7, align 1
  %conv5.i271.7 = zext i8 %718 to i32
  %xor.i272.7 = xor i32 %conv.i266.7, %conv5.i271.7
  %conv6.i273.7 = trunc i32 %xor.i272.7 to i8
  %scevgep44.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i273.7, i8* %scevgep44.7, align 1
  %scevgep38.7 = getelementptr i8, i8* %scevgep38.6, i64 1
  %719 = load i8, i8* %scevgep38.7, align 1
  %conv.i266.8 = zext i8 %719 to i32
  %arrayidx4.i270.8 = getelementptr inbounds i8, i8* %arraydecay55, i64 3
  %720 = load i8, i8* %arrayidx4.i270.8, align 1
  %conv5.i271.8 = zext i8 %720 to i32
  %xor.i272.8 = xor i32 %conv.i266.8, %conv5.i271.8
  %conv6.i273.8 = trunc i32 %xor.i272.8 to i8
  %scevgep44.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i273.8, i8* %scevgep44.8, align 1
  %scevgep38.8 = getelementptr i8, i8* %scevgep38.7, i64 1
  %721 = load i8, i8* %scevgep38.8, align 1
  %conv.i266.9 = zext i8 %721 to i32
  %arrayidx4.i270.9 = getelementptr inbounds i8, i8* %arraydecay55, i64 4
  %722 = load i8, i8* %arrayidx4.i270.9, align 1
  %conv5.i271.9 = zext i8 %722 to i32
  %xor.i272.9 = xor i32 %conv.i266.9, %conv5.i271.9
  %conv6.i273.9 = trunc i32 %xor.i272.9 to i8
  %scevgep44.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i273.9, i8* %scevgep44.9, align 1
  %scevgep38.9 = getelementptr i8, i8* %scevgep38.8, i64 1
  %723 = load i8, i8* %scevgep38.9, align 1
  %conv.i266.10 = zext i8 %723 to i32
  %arrayidx4.i270.10 = getelementptr inbounds i8, i8* %arraydecay55, i64 5
  %724 = load i8, i8* %arrayidx4.i270.10, align 1
  %conv5.i271.10 = zext i8 %724 to i32
  %xor.i272.10 = xor i32 %conv.i266.10, %conv5.i271.10
  %conv6.i273.10 = trunc i32 %xor.i272.10 to i8
  %scevgep44.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i273.10, i8* %scevgep44.10, align 1
  %scevgep34 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  %725 = load i8, i8* %c, align 1
  %conv.i241 = zext i8 %725 to i32
  %726 = load i8, i8* %scevgep34, align 1
  %conv5.i246 = zext i8 %726 to i32
  %xor.i247 = xor i32 %conv.i241, %conv5.i246
  %conv6.i248 = trunc i32 %xor.i247 to i8
  store i8 %conv6.i248, i8* %c, align 1
  %scevgep28 = getelementptr i8, i8* %c, i64 1
  %scevgep33 = getelementptr [11 x i8], [11 x i8]* %ab2, i64 0, i64 1
  %727 = bitcast i8* %scevgep33 to [11 x i8]*
  %scevgep34.1 = getelementptr [11 x i8], [11 x i8]* %727, i64 0, i64 0
  %728 = load i8, i8* %scevgep28, align 1
  %conv.i241.1 = zext i8 %728 to i32
  %729 = load i8, i8* %scevgep34.1, align 1
  %conv5.i246.1 = zext i8 %729 to i32
  %xor.i247.1 = xor i32 %conv.i241.1, %conv5.i246.1
  %conv6.i248.1 = trunc i32 %xor.i247.1 to i8
  %scevgep35.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i248.1, i8* %scevgep35.1, align 1
  %scevgep28.1 = getelementptr i8, i8* %scevgep28, i64 1
  %scevgep33.1 = getelementptr [11 x i8], [11 x i8]* %727, i64 0, i64 1
  %730 = bitcast i8* %scevgep33.1 to [11 x i8]*
  %scevgep34.2 = getelementptr [11 x i8], [11 x i8]* %730, i64 0, i64 0
  %731 = load i8, i8* %scevgep28.1, align 1
  %conv.i241.2 = zext i8 %731 to i32
  %732 = load i8, i8* %scevgep34.2, align 1
  %conv5.i246.2 = zext i8 %732 to i32
  %xor.i247.2 = xor i32 %conv.i241.2, %conv5.i246.2
  %conv6.i248.2 = trunc i32 %xor.i247.2 to i8
  %scevgep35.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i248.2, i8* %scevgep35.2, align 1
  %scevgep28.2 = getelementptr i8, i8* %scevgep28.1, i64 1
  %scevgep33.2 = getelementptr [11 x i8], [11 x i8]* %730, i64 0, i64 1
  %733 = bitcast i8* %scevgep33.2 to [11 x i8]*
  %scevgep34.3 = getelementptr [11 x i8], [11 x i8]* %733, i64 0, i64 0
  %734 = load i8, i8* %scevgep28.2, align 1
  %conv.i241.3 = zext i8 %734 to i32
  %735 = load i8, i8* %scevgep34.3, align 1
  %conv5.i246.3 = zext i8 %735 to i32
  %xor.i247.3 = xor i32 %conv.i241.3, %conv5.i246.3
  %conv6.i248.3 = trunc i32 %xor.i247.3 to i8
  %scevgep35.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i248.3, i8* %scevgep35.3, align 1
  %scevgep28.3 = getelementptr i8, i8* %scevgep28.2, i64 1
  %scevgep33.3 = getelementptr [11 x i8], [11 x i8]* %733, i64 0, i64 1
  %736 = bitcast i8* %scevgep33.3 to [11 x i8]*
  %scevgep34.4 = getelementptr [11 x i8], [11 x i8]* %736, i64 0, i64 0
  %737 = load i8, i8* %scevgep28.3, align 1
  %conv.i241.4 = zext i8 %737 to i32
  %738 = load i8, i8* %scevgep34.4, align 1
  %conv5.i246.4 = zext i8 %738 to i32
  %xor.i247.4 = xor i32 %conv.i241.4, %conv5.i246.4
  %conv6.i248.4 = trunc i32 %xor.i247.4 to i8
  %scevgep35.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i248.4, i8* %scevgep35.4, align 1
  %scevgep28.4 = getelementptr i8, i8* %scevgep28.3, i64 1
  %scevgep33.4 = getelementptr [11 x i8], [11 x i8]* %736, i64 0, i64 1
  %739 = bitcast i8* %scevgep33.4 to [11 x i8]*
  %scevgep34.5 = getelementptr [11 x i8], [11 x i8]* %739, i64 0, i64 0
  %740 = load i8, i8* %scevgep28.4, align 1
  %conv.i241.5 = zext i8 %740 to i32
  %741 = load i8, i8* %scevgep34.5, align 1
  %conv5.i246.5 = zext i8 %741 to i32
  %xor.i247.5 = xor i32 %conv.i241.5, %conv5.i246.5
  %conv6.i248.5 = trunc i32 %xor.i247.5 to i8
  %scevgep35.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i248.5, i8* %scevgep35.5, align 1
  %scevgep28.5 = getelementptr i8, i8* %scevgep28.4, i64 1
  %scevgep33.5 = getelementptr [11 x i8], [11 x i8]* %739, i64 0, i64 1
  %742 = bitcast i8* %scevgep33.5 to [11 x i8]*
  %scevgep34.6 = getelementptr [11 x i8], [11 x i8]* %742, i64 0, i64 0
  %743 = load i8, i8* %scevgep28.5, align 1
  %conv.i241.6 = zext i8 %743 to i32
  %744 = load i8, i8* %scevgep34.6, align 1
  %conv5.i246.6 = zext i8 %744 to i32
  %xor.i247.6 = xor i32 %conv.i241.6, %conv5.i246.6
  %conv6.i248.6 = trunc i32 %xor.i247.6 to i8
  %scevgep35.6 = getelementptr i8, i8* %c, i64 6
  store i8 %conv6.i248.6, i8* %scevgep35.6, align 1
  %scevgep28.6 = getelementptr i8, i8* %scevgep28.5, i64 1
  %scevgep33.6 = getelementptr [11 x i8], [11 x i8]* %742, i64 0, i64 1
  %745 = bitcast i8* %scevgep33.6 to [11 x i8]*
  %scevgep34.7 = getelementptr [11 x i8], [11 x i8]* %745, i64 0, i64 0
  %746 = load i8, i8* %scevgep28.6, align 1
  %conv.i241.7 = zext i8 %746 to i32
  %747 = load i8, i8* %scevgep34.7, align 1
  %conv5.i246.7 = zext i8 %747 to i32
  %xor.i247.7 = xor i32 %conv.i241.7, %conv5.i246.7
  %conv6.i248.7 = trunc i32 %xor.i247.7 to i8
  %scevgep35.7 = getelementptr i8, i8* %c, i64 7
  store i8 %conv6.i248.7, i8* %scevgep35.7, align 1
  %scevgep28.7 = getelementptr i8, i8* %scevgep28.6, i64 1
  %scevgep33.7 = getelementptr [11 x i8], [11 x i8]* %745, i64 0, i64 1
  %748 = bitcast i8* %scevgep33.7 to [11 x i8]*
  %scevgep34.8 = getelementptr [11 x i8], [11 x i8]* %748, i64 0, i64 0
  %749 = load i8, i8* %scevgep28.7, align 1
  %conv.i241.8 = zext i8 %749 to i32
  %750 = load i8, i8* %scevgep34.8, align 1
  %conv5.i246.8 = zext i8 %750 to i32
  %xor.i247.8 = xor i32 %conv.i241.8, %conv5.i246.8
  %conv6.i248.8 = trunc i32 %xor.i247.8 to i8
  %scevgep35.8 = getelementptr i8, i8* %c, i64 8
  store i8 %conv6.i248.8, i8* %scevgep35.8, align 1
  %scevgep28.8 = getelementptr i8, i8* %scevgep28.7, i64 1
  %scevgep33.8 = getelementptr [11 x i8], [11 x i8]* %748, i64 0, i64 1
  %751 = bitcast i8* %scevgep33.8 to [11 x i8]*
  %scevgep34.9 = getelementptr [11 x i8], [11 x i8]* %751, i64 0, i64 0
  %752 = load i8, i8* %scevgep28.8, align 1
  %conv.i241.9 = zext i8 %752 to i32
  %753 = load i8, i8* %scevgep34.9, align 1
  %conv5.i246.9 = zext i8 %753 to i32
  %xor.i247.9 = xor i32 %conv.i241.9, %conv5.i246.9
  %conv6.i248.9 = trunc i32 %xor.i247.9 to i8
  %scevgep35.9 = getelementptr i8, i8* %c, i64 9
  store i8 %conv6.i248.9, i8* %scevgep35.9, align 1
  %scevgep28.9 = getelementptr i8, i8* %scevgep28.8, i64 1
  %scevgep33.9 = getelementptr [11 x i8], [11 x i8]* %751, i64 0, i64 1
  %754 = bitcast i8* %scevgep33.9 to [11 x i8]*
  %scevgep34.10 = getelementptr [11 x i8], [11 x i8]* %754, i64 0, i64 0
  %755 = load i8, i8* %scevgep28.9, align 1
  %conv.i241.10 = zext i8 %755 to i32
  %756 = load i8, i8* %scevgep34.10, align 1
  %conv5.i246.10 = zext i8 %756 to i32
  %xor.i247.10 = xor i32 %conv.i241.10, %conv5.i246.10
  %conv6.i248.10 = trunc i32 %xor.i247.10 to i8
  %scevgep35.10 = getelementptr i8, i8* %c, i64 10
  store i8 %conv6.i248.10, i8* %scevgep35.10, align 1
  %call57 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv58 = zext i8 %call57 to i32
  %757 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %758 = load i8, i8* %scevgep.1, align 1
  %conv.i.i197.1 = zext i8 %758 to i32
  %conv1.i.i198.1 = zext i8 %757 to i32
  %xor.i.i199.1 = xor i32 %conv1.i.i198.1, %conv.i.i197.1
  %conv2.i.i200.1 = trunc i32 %xor.i.i199.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %759 = load i8, i8* %scevgep.2, align 1
  %conv.i.i197.2 = zext i8 %759 to i32
  %conv1.i.i198.2 = zext i8 %conv2.i.i200.1 to i32
  %xor.i.i199.2 = xor i32 %conv1.i.i198.2, %conv.i.i197.2
  %conv2.i.i200.2 = trunc i32 %xor.i.i199.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %760 = load i8, i8* %scevgep.3, align 1
  %conv.i.i197.3 = zext i8 %760 to i32
  %conv1.i.i198.3 = zext i8 %conv2.i.i200.2 to i32
  %xor.i.i199.3 = xor i32 %conv1.i.i198.3, %conv.i.i197.3
  %conv2.i.i200.3 = trunc i32 %xor.i.i199.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %761 = load i8, i8* %scevgep.4, align 1
  %conv.i.i197.4 = zext i8 %761 to i32
  %conv1.i.i198.4 = zext i8 %conv2.i.i200.3 to i32
  %xor.i.i199.4 = xor i32 %conv1.i.i198.4, %conv.i.i197.4
  %conv2.i.i200.4 = trunc i32 %xor.i.i199.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %762 = load i8, i8* %scevgep.5, align 1
  %conv.i.i197.5 = zext i8 %762 to i32
  %conv1.i.i198.5 = zext i8 %conv2.i.i200.4 to i32
  %xor.i.i199.5 = xor i32 %conv1.i.i198.5, %conv.i.i197.5
  %conv2.i.i200.5 = trunc i32 %xor.i.i199.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %763 = load i8, i8* %scevgep.6, align 1
  %conv.i.i197.6 = zext i8 %763 to i32
  %conv1.i.i198.6 = zext i8 %conv2.i.i200.5 to i32
  %xor.i.i199.6 = xor i32 %conv1.i.i198.6, %conv.i.i197.6
  %conv2.i.i200.6 = trunc i32 %xor.i.i199.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %764 = load i8, i8* %scevgep.7, align 1
  %conv.i.i197.7 = zext i8 %764 to i32
  %conv1.i.i198.7 = zext i8 %conv2.i.i200.6 to i32
  %xor.i.i199.7 = xor i32 %conv1.i.i198.7, %conv.i.i197.7
  %conv2.i.i200.7 = trunc i32 %xor.i.i199.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %765 = load i8, i8* %scevgep.8, align 1
  %conv.i.i197.8 = zext i8 %765 to i32
  %conv1.i.i198.8 = zext i8 %conv2.i.i200.7 to i32
  %xor.i.i199.8 = xor i32 %conv1.i.i198.8, %conv.i.i197.8
  %conv2.i.i200.8 = trunc i32 %xor.i.i199.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %766 = load i8, i8* %scevgep.9, align 1
  %conv.i.i197.9 = zext i8 %766 to i32
  %conv1.i.i198.9 = zext i8 %conv2.i.i200.8 to i32
  %xor.i.i199.9 = xor i32 %conv1.i.i198.9, %conv.i.i197.9
  %conv2.i.i200.9 = trunc i32 %xor.i.i199.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %767 = load i8, i8* %scevgep.10, align 1
  %conv.i.i197.10 = zext i8 %767 to i32
  %conv1.i.i198.10 = zext i8 %conv2.i.i200.9 to i32
  %xor.i.i199.10 = xor i32 %conv1.i.i198.10, %conv.i.i197.10
  %conv2.i.i200.10 = trunc i32 %xor.i.i199.10 to i8
  %conv60 = zext i8 %conv2.i.i200.10 to i32
  %cmp61 = icmp eq i32 %conv58, %conv60
  call void @assert(i1 zeroext %cmp61)
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
