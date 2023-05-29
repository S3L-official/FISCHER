; ModuleID = '../examples/barthe-eurocrypto2017.inline-10.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [36 x i8] c"../examples/barthe-eurocrypto2017.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 23 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 80 }], section "llvm.metadata"

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
  %cc = alloca [22 x [11 x i8]], align 16
  %dd = alloca [22 x [11 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep145.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep145.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep145.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep145.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep145.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep145.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep145.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep145.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep145.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep145.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep145.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep145.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep145.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep145.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep145.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep145.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep145.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep145.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep145.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep145.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %conv3 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %11 = load i8, i8* %b, align 1
  %scevgep141.1 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep141.1, align 1
  %conv.i.i112.1 = zext i8 %12 to i32
  %conv1.i.i113.1 = zext i8 %11 to i32
  %xor.i.i114.1 = xor i32 %conv1.i.i113.1, %conv.i.i112.1
  %conv2.i.i115.1 = trunc i32 %xor.i.i114.1 to i8
  %scevgep141.2 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep141.2, align 1
  %conv.i.i112.2 = zext i8 %13 to i32
  %conv1.i.i113.2 = zext i8 %conv2.i.i115.1 to i32
  %xor.i.i114.2 = xor i32 %conv1.i.i113.2, %conv.i.i112.2
  %conv2.i.i115.2 = trunc i32 %xor.i.i114.2 to i8
  %scevgep141.3 = getelementptr i8, i8* %b, i64 3
  %14 = load i8, i8* %scevgep141.3, align 1
  %conv.i.i112.3 = zext i8 %14 to i32
  %conv1.i.i113.3 = zext i8 %conv2.i.i115.2 to i32
  %xor.i.i114.3 = xor i32 %conv1.i.i113.3, %conv.i.i112.3
  %conv2.i.i115.3 = trunc i32 %xor.i.i114.3 to i8
  %scevgep141.4 = getelementptr i8, i8* %b, i64 4
  %15 = load i8, i8* %scevgep141.4, align 1
  %conv.i.i112.4 = zext i8 %15 to i32
  %conv1.i.i113.4 = zext i8 %conv2.i.i115.3 to i32
  %xor.i.i114.4 = xor i32 %conv1.i.i113.4, %conv.i.i112.4
  %conv2.i.i115.4 = trunc i32 %xor.i.i114.4 to i8
  %scevgep141.5 = getelementptr i8, i8* %b, i64 5
  %16 = load i8, i8* %scevgep141.5, align 1
  %conv.i.i112.5 = zext i8 %16 to i32
  %conv1.i.i113.5 = zext i8 %conv2.i.i115.4 to i32
  %xor.i.i114.5 = xor i32 %conv1.i.i113.5, %conv.i.i112.5
  %conv2.i.i115.5 = trunc i32 %xor.i.i114.5 to i8
  %scevgep141.6 = getelementptr i8, i8* %b, i64 6
  %17 = load i8, i8* %scevgep141.6, align 1
  %conv.i.i112.6 = zext i8 %17 to i32
  %conv1.i.i113.6 = zext i8 %conv2.i.i115.5 to i32
  %xor.i.i114.6 = xor i32 %conv1.i.i113.6, %conv.i.i112.6
  %conv2.i.i115.6 = trunc i32 %xor.i.i114.6 to i8
  %scevgep141.7 = getelementptr i8, i8* %b, i64 7
  %18 = load i8, i8* %scevgep141.7, align 1
  %conv.i.i112.7 = zext i8 %18 to i32
  %conv1.i.i113.7 = zext i8 %conv2.i.i115.6 to i32
  %xor.i.i114.7 = xor i32 %conv1.i.i113.7, %conv.i.i112.7
  %conv2.i.i115.7 = trunc i32 %xor.i.i114.7 to i8
  %scevgep141.8 = getelementptr i8, i8* %b, i64 8
  %19 = load i8, i8* %scevgep141.8, align 1
  %conv.i.i112.8 = zext i8 %19 to i32
  %conv1.i.i113.8 = zext i8 %conv2.i.i115.7 to i32
  %xor.i.i114.8 = xor i32 %conv1.i.i113.8, %conv.i.i112.8
  %conv2.i.i115.8 = trunc i32 %xor.i.i114.8 to i8
  %scevgep141.9 = getelementptr i8, i8* %b, i64 9
  %20 = load i8, i8* %scevgep141.9, align 1
  %conv.i.i112.9 = zext i8 %20 to i32
  %conv1.i.i113.9 = zext i8 %conv2.i.i115.8 to i32
  %xor.i.i114.9 = xor i32 %conv1.i.i113.9, %conv.i.i112.9
  %conv2.i.i115.9 = trunc i32 %xor.i.i114.9 to i8
  %scevgep141.10 = getelementptr i8, i8* %b, i64 10
  %21 = load i8, i8* %scevgep141.10, align 1
  %conv.i.i112.10 = zext i8 %21 to i32
  %conv1.i.i113.10 = zext i8 %conv2.i.i115.9 to i32
  %xor.i.i114.10 = xor i32 %conv1.i.i113.10, %conv.i.i112.10
  %conv2.i.i115.10 = trunc i32 %xor.i.i114.10 to i8
  %conv7 = zext i8 %conv2.i.i115.10 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep137 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep137, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep137.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep137.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep137.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep137.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep137.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep137.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep137.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep137.4, align 1
  %call16.5 = call zeroext i8 (...) @rand()
  %scevgep137.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 5
  store i8 %call16.5, i8* %scevgep137.5, align 1
  %call16.6 = call zeroext i8 (...) @rand()
  %scevgep137.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 6
  store i8 %call16.6, i8* %scevgep137.6, align 1
  %call16.7 = call zeroext i8 (...) @rand()
  %scevgep137.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 7
  store i8 %call16.7, i8* %scevgep137.7, align 1
  %call16.8 = call zeroext i8 (...) @rand()
  %scevgep137.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 8
  store i8 %call16.8, i8* %scevgep137.8, align 1
  %call16.9 = call zeroext i8 (...) @rand()
  %scevgep137.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 9
  store i8 %call16.9, i8* %scevgep137.9, align 1
  %call16.10 = call zeroext i8 (...) @rand()
  %scevgep137.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 10
  store i8 %call16.10, i8* %scevgep137.10, align 1
  %scevgep134 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep134 to [11 x [11 x i8]]*
  %call16.1307 = call zeroext i8 (...) @rand()
  %scevgep137.1308 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 0
  store i8 %call16.1307, i8* %scevgep137.1308, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep137.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep137.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep137.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep137.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep137.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep137.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep137.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep137.4.1, align 1
  %call16.5.1 = call zeroext i8 (...) @rand()
  %scevgep137.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 5
  store i8 %call16.5.1, i8* %scevgep137.5.1, align 1
  %call16.6.1 = call zeroext i8 (...) @rand()
  %scevgep137.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 6
  store i8 %call16.6.1, i8* %scevgep137.6.1, align 1
  %call16.7.1 = call zeroext i8 (...) @rand()
  %scevgep137.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 7
  store i8 %call16.7.1, i8* %scevgep137.7.1, align 1
  %call16.8.1 = call zeroext i8 (...) @rand()
  %scevgep137.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 8
  store i8 %call16.8.1, i8* %scevgep137.8.1, align 1
  %call16.9.1 = call zeroext i8 (...) @rand()
  %scevgep137.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 9
  store i8 %call16.9.1, i8* %scevgep137.9.1, align 1
  %call16.10.1 = call zeroext i8 (...) @rand()
  %scevgep137.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 0, i64 10
  store i8 %call16.10.1, i8* %scevgep137.10.1, align 1
  %scevgep134.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %22, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep134.1 to [11 x [11 x i8]]*
  %call16.2310 = call zeroext i8 (...) @rand()
  %scevgep137.2311 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 0
  store i8 %call16.2310, i8* %scevgep137.2311, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep137.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep137.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep137.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep137.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep137.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep137.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep137.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep137.4.2, align 1
  %call16.5.2 = call zeroext i8 (...) @rand()
  %scevgep137.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 5
  store i8 %call16.5.2, i8* %scevgep137.5.2, align 1
  %call16.6.2 = call zeroext i8 (...) @rand()
  %scevgep137.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 6
  store i8 %call16.6.2, i8* %scevgep137.6.2, align 1
  %call16.7.2 = call zeroext i8 (...) @rand()
  %scevgep137.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 7
  store i8 %call16.7.2, i8* %scevgep137.7.2, align 1
  %call16.8.2 = call zeroext i8 (...) @rand()
  %scevgep137.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 8
  store i8 %call16.8.2, i8* %scevgep137.8.2, align 1
  %call16.9.2 = call zeroext i8 (...) @rand()
  %scevgep137.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 9
  store i8 %call16.9.2, i8* %scevgep137.9.2, align 1
  %call16.10.2 = call zeroext i8 (...) @rand()
  %scevgep137.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 10
  store i8 %call16.10.2, i8* %scevgep137.10.2, align 1
  %scevgep134.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 1, i64 0
  %24 = bitcast i8* %scevgep134.2 to [11 x [11 x i8]]*
  %call16.3313 = call zeroext i8 (...) @rand()
  %scevgep137.3314 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 0
  store i8 %call16.3313, i8* %scevgep137.3314, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep137.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep137.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep137.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep137.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep137.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep137.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep137.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep137.4.3, align 1
  %call16.5.3 = call zeroext i8 (...) @rand()
  %scevgep137.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 5
  store i8 %call16.5.3, i8* %scevgep137.5.3, align 1
  %call16.6.3 = call zeroext i8 (...) @rand()
  %scevgep137.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 6
  store i8 %call16.6.3, i8* %scevgep137.6.3, align 1
  %call16.7.3 = call zeroext i8 (...) @rand()
  %scevgep137.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 7
  store i8 %call16.7.3, i8* %scevgep137.7.3, align 1
  %call16.8.3 = call zeroext i8 (...) @rand()
  %scevgep137.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 8
  store i8 %call16.8.3, i8* %scevgep137.8.3, align 1
  %call16.9.3 = call zeroext i8 (...) @rand()
  %scevgep137.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 9
  store i8 %call16.9.3, i8* %scevgep137.9.3, align 1
  %call16.10.3 = call zeroext i8 (...) @rand()
  %scevgep137.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 0, i64 10
  store i8 %call16.10.3, i8* %scevgep137.10.3, align 1
  %scevgep134.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep134.3 to [11 x [11 x i8]]*
  %call16.4316 = call zeroext i8 (...) @rand()
  %scevgep137.4317 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 0
  store i8 %call16.4316, i8* %scevgep137.4317, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep137.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep137.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep137.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep137.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep137.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep137.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep137.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep137.4.4, align 1
  %call16.5.4 = call zeroext i8 (...) @rand()
  %scevgep137.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 5
  store i8 %call16.5.4, i8* %scevgep137.5.4, align 1
  %call16.6.4 = call zeroext i8 (...) @rand()
  %scevgep137.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 6
  store i8 %call16.6.4, i8* %scevgep137.6.4, align 1
  %call16.7.4 = call zeroext i8 (...) @rand()
  %scevgep137.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 7
  store i8 %call16.7.4, i8* %scevgep137.7.4, align 1
  %call16.8.4 = call zeroext i8 (...) @rand()
  %scevgep137.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 8
  store i8 %call16.8.4, i8* %scevgep137.8.4, align 1
  %call16.9.4 = call zeroext i8 (...) @rand()
  %scevgep137.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 9
  store i8 %call16.9.4, i8* %scevgep137.9.4, align 1
  %call16.10.4 = call zeroext i8 (...) @rand()
  %scevgep137.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 0, i64 10
  store i8 %call16.10.4, i8* %scevgep137.10.4, align 1
  %scevgep134.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %25, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep134.4 to [11 x [11 x i8]]*
  %call16.5319 = call zeroext i8 (...) @rand()
  %scevgep137.5320 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %call16.5319, i8* %scevgep137.5320, align 1
  %call16.1.5 = call zeroext i8 (...) @rand()
  %scevgep137.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 1
  store i8 %call16.1.5, i8* %scevgep137.1.5, align 1
  %call16.2.5 = call zeroext i8 (...) @rand()
  %scevgep137.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 2
  store i8 %call16.2.5, i8* %scevgep137.2.5, align 1
  %call16.3.5 = call zeroext i8 (...) @rand()
  %scevgep137.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 3
  store i8 %call16.3.5, i8* %scevgep137.3.5, align 1
  %call16.4.5 = call zeroext i8 (...) @rand()
  %scevgep137.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 4
  store i8 %call16.4.5, i8* %scevgep137.4.5, align 1
  %call16.5.5 = call zeroext i8 (...) @rand()
  %scevgep137.5.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 5
  store i8 %call16.5.5, i8* %scevgep137.5.5, align 1
  %call16.6.5 = call zeroext i8 (...) @rand()
  %scevgep137.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 6
  store i8 %call16.6.5, i8* %scevgep137.6.5, align 1
  %call16.7.5 = call zeroext i8 (...) @rand()
  %scevgep137.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 7
  store i8 %call16.7.5, i8* %scevgep137.7.5, align 1
  %call16.8.5 = call zeroext i8 (...) @rand()
  %scevgep137.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 8
  store i8 %call16.8.5, i8* %scevgep137.8.5, align 1
  %call16.9.5 = call zeroext i8 (...) @rand()
  %scevgep137.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 9
  store i8 %call16.9.5, i8* %scevgep137.9.5, align 1
  %call16.10.5 = call zeroext i8 (...) @rand()
  %scevgep137.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 10
  store i8 %call16.10.5, i8* %scevgep137.10.5, align 1
  %scevgep134.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep134.5 to [11 x [11 x i8]]*
  %call16.6322 = call zeroext i8 (...) @rand()
  %scevgep137.6323 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %call16.6322, i8* %scevgep137.6323, align 1
  %call16.1.6 = call zeroext i8 (...) @rand()
  %scevgep137.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 1
  store i8 %call16.1.6, i8* %scevgep137.1.6, align 1
  %call16.2.6 = call zeroext i8 (...) @rand()
  %scevgep137.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 2
  store i8 %call16.2.6, i8* %scevgep137.2.6, align 1
  %call16.3.6 = call zeroext i8 (...) @rand()
  %scevgep137.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 3
  store i8 %call16.3.6, i8* %scevgep137.3.6, align 1
  %call16.4.6 = call zeroext i8 (...) @rand()
  %scevgep137.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 4
  store i8 %call16.4.6, i8* %scevgep137.4.6, align 1
  %call16.5.6 = call zeroext i8 (...) @rand()
  %scevgep137.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 5
  store i8 %call16.5.6, i8* %scevgep137.5.6, align 1
  %call16.6.6 = call zeroext i8 (...) @rand()
  %scevgep137.6.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 6
  store i8 %call16.6.6, i8* %scevgep137.6.6, align 1
  %call16.7.6 = call zeroext i8 (...) @rand()
  %scevgep137.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 7
  store i8 %call16.7.6, i8* %scevgep137.7.6, align 1
  %call16.8.6 = call zeroext i8 (...) @rand()
  %scevgep137.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 8
  store i8 %call16.8.6, i8* %scevgep137.8.6, align 1
  %call16.9.6 = call zeroext i8 (...) @rand()
  %scevgep137.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 9
  store i8 %call16.9.6, i8* %scevgep137.9.6, align 1
  %call16.10.6 = call zeroext i8 (...) @rand()
  %scevgep137.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 0, i64 10
  store i8 %call16.10.6, i8* %scevgep137.10.6, align 1
  %scevgep134.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep134.6 to [11 x [11 x i8]]*
  %call16.7325 = call zeroext i8 (...) @rand()
  %scevgep137.7326 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %call16.7325, i8* %scevgep137.7326, align 1
  %call16.1.7 = call zeroext i8 (...) @rand()
  %scevgep137.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 1
  store i8 %call16.1.7, i8* %scevgep137.1.7, align 1
  %call16.2.7 = call zeroext i8 (...) @rand()
  %scevgep137.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 2
  store i8 %call16.2.7, i8* %scevgep137.2.7, align 1
  %call16.3.7 = call zeroext i8 (...) @rand()
  %scevgep137.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 3
  store i8 %call16.3.7, i8* %scevgep137.3.7, align 1
  %call16.4.7 = call zeroext i8 (...) @rand()
  %scevgep137.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 4
  store i8 %call16.4.7, i8* %scevgep137.4.7, align 1
  %call16.5.7 = call zeroext i8 (...) @rand()
  %scevgep137.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 5
  store i8 %call16.5.7, i8* %scevgep137.5.7, align 1
  %call16.6.7 = call zeroext i8 (...) @rand()
  %scevgep137.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 6
  store i8 %call16.6.7, i8* %scevgep137.6.7, align 1
  %call16.7.7 = call zeroext i8 (...) @rand()
  %scevgep137.7.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 7
  store i8 %call16.7.7, i8* %scevgep137.7.7, align 1
  %call16.8.7 = call zeroext i8 (...) @rand()
  %scevgep137.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 8
  store i8 %call16.8.7, i8* %scevgep137.8.7, align 1
  %call16.9.7 = call zeroext i8 (...) @rand()
  %scevgep137.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 9
  store i8 %call16.9.7, i8* %scevgep137.9.7, align 1
  %call16.10.7 = call zeroext i8 (...) @rand()
  %scevgep137.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 0, i64 10
  store i8 %call16.10.7, i8* %scevgep137.10.7, align 1
  %scevgep134.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %28, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep134.7 to [11 x [11 x i8]]*
  %call16.8328 = call zeroext i8 (...) @rand()
  %scevgep137.8329 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %call16.8328, i8* %scevgep137.8329, align 1
  %call16.1.8 = call zeroext i8 (...) @rand()
  %scevgep137.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 1
  store i8 %call16.1.8, i8* %scevgep137.1.8, align 1
  %call16.2.8 = call zeroext i8 (...) @rand()
  %scevgep137.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 2
  store i8 %call16.2.8, i8* %scevgep137.2.8, align 1
  %call16.3.8 = call zeroext i8 (...) @rand()
  %scevgep137.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 3
  store i8 %call16.3.8, i8* %scevgep137.3.8, align 1
  %call16.4.8 = call zeroext i8 (...) @rand()
  %scevgep137.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 4
  store i8 %call16.4.8, i8* %scevgep137.4.8, align 1
  %call16.5.8 = call zeroext i8 (...) @rand()
  %scevgep137.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 5
  store i8 %call16.5.8, i8* %scevgep137.5.8, align 1
  %call16.6.8 = call zeroext i8 (...) @rand()
  %scevgep137.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 6
  store i8 %call16.6.8, i8* %scevgep137.6.8, align 1
  %call16.7.8 = call zeroext i8 (...) @rand()
  %scevgep137.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 7
  store i8 %call16.7.8, i8* %scevgep137.7.8, align 1
  %call16.8.8 = call zeroext i8 (...) @rand()
  %scevgep137.8.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 8
  store i8 %call16.8.8, i8* %scevgep137.8.8, align 1
  %call16.9.8 = call zeroext i8 (...) @rand()
  %scevgep137.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 9
  store i8 %call16.9.8, i8* %scevgep137.9.8, align 1
  %call16.10.8 = call zeroext i8 (...) @rand()
  %scevgep137.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 10
  store i8 %call16.10.8, i8* %scevgep137.10.8, align 1
  %scevgep134.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep134.8 to [11 x [11 x i8]]*
  %call16.9331 = call zeroext i8 (...) @rand()
  %scevgep137.9332 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 0
  store i8 %call16.9331, i8* %scevgep137.9332, align 1
  %call16.1.9 = call zeroext i8 (...) @rand()
  %scevgep137.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 1
  store i8 %call16.1.9, i8* %scevgep137.1.9, align 1
  %call16.2.9 = call zeroext i8 (...) @rand()
  %scevgep137.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 2
  store i8 %call16.2.9, i8* %scevgep137.2.9, align 1
  %call16.3.9 = call zeroext i8 (...) @rand()
  %scevgep137.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 3
  store i8 %call16.3.9, i8* %scevgep137.3.9, align 1
  %call16.4.9 = call zeroext i8 (...) @rand()
  %scevgep137.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 4
  store i8 %call16.4.9, i8* %scevgep137.4.9, align 1
  %call16.5.9 = call zeroext i8 (...) @rand()
  %scevgep137.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 5
  store i8 %call16.5.9, i8* %scevgep137.5.9, align 1
  %call16.6.9 = call zeroext i8 (...) @rand()
  %scevgep137.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 6
  store i8 %call16.6.9, i8* %scevgep137.6.9, align 1
  %call16.7.9 = call zeroext i8 (...) @rand()
  %scevgep137.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 7
  store i8 %call16.7.9, i8* %scevgep137.7.9, align 1
  %call16.8.9 = call zeroext i8 (...) @rand()
  %scevgep137.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 8
  store i8 %call16.8.9, i8* %scevgep137.8.9, align 1
  %call16.9.9 = call zeroext i8 (...) @rand()
  %scevgep137.9.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 9
  store i8 %call16.9.9, i8* %scevgep137.9.9, align 1
  %call16.10.9 = call zeroext i8 (...) @rand()
  %scevgep137.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 0, i64 10
  store i8 %call16.10.9, i8* %scevgep137.10.9, align 1
  %scevgep134.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep134.9 to [11 x [11 x i8]]*
  %call16.10334 = call zeroext i8 (...) @rand()
  %scevgep137.10335 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 0
  store i8 %call16.10334, i8* %scevgep137.10335, align 1
  %call16.1.10 = call zeroext i8 (...) @rand()
  %scevgep137.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 1
  store i8 %call16.1.10, i8* %scevgep137.1.10, align 1
  %call16.2.10 = call zeroext i8 (...) @rand()
  %scevgep137.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 2
  store i8 %call16.2.10, i8* %scevgep137.2.10, align 1
  %call16.3.10 = call zeroext i8 (...) @rand()
  %scevgep137.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 3
  store i8 %call16.3.10, i8* %scevgep137.3.10, align 1
  %call16.4.10 = call zeroext i8 (...) @rand()
  %scevgep137.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 4
  store i8 %call16.4.10, i8* %scevgep137.4.10, align 1
  %call16.5.10 = call zeroext i8 (...) @rand()
  %scevgep137.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 5
  store i8 %call16.5.10, i8* %scevgep137.5.10, align 1
  %call16.6.10 = call zeroext i8 (...) @rand()
  %scevgep137.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 6
  store i8 %call16.6.10, i8* %scevgep137.6.10, align 1
  %call16.7.10 = call zeroext i8 (...) @rand()
  %scevgep137.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 7
  store i8 %call16.7.10, i8* %scevgep137.7.10, align 1
  %call16.8.10 = call zeroext i8 (...) @rand()
  %scevgep137.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 8
  store i8 %call16.8.10, i8* %scevgep137.8.10, align 1
  %call16.9.10 = call zeroext i8 (...) @rand()
  %scevgep137.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 9
  store i8 %call16.9.10, i8* %scevgep137.9.10, align 1
  %call16.10.10 = call zeroext i8 (...) @rand()
  %scevgep137.10.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %31, i64 0, i64 0, i64 10
  store i8 %call16.10.10, i8* %scevgep137.10.10, align 1
  %scevgep130 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 1, i64 0
  %32 = load i8, i8* %a, align 1
  %33 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #2
  store i8 %call.i, i8* %scevgep130, align 1
  %scevgep123 = getelementptr i8, i8* %a, i64 1
  %scevgep128 = getelementptr i8, i8* %b, i64 1
  %34 = load i8, i8* %scevgep123, align 1
  %35 = load i8, i8* %scevgep128, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #2
  %scevgep131.1 = getelementptr i8, i8* %scevgep130, i64 1
  store i8 %call.i.1, i8* %scevgep131.1, align 1
  %scevgep123.1 = getelementptr i8, i8* %scevgep123, i64 1
  %scevgep128.1 = getelementptr i8, i8* %scevgep128, i64 1
  %36 = load i8, i8* %scevgep123.1, align 1
  %37 = load i8, i8* %scevgep128.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #2
  %scevgep131.2 = getelementptr i8, i8* %scevgep130, i64 2
  store i8 %call.i.2, i8* %scevgep131.2, align 1
  %scevgep123.2 = getelementptr i8, i8* %scevgep123.1, i64 1
  %scevgep128.2 = getelementptr i8, i8* %scevgep128.1, i64 1
  %38 = load i8, i8* %scevgep123.2, align 1
  %39 = load i8, i8* %scevgep128.2, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  %scevgep131.3 = getelementptr i8, i8* %scevgep130, i64 3
  store i8 %call.i.3, i8* %scevgep131.3, align 1
  %scevgep123.3 = getelementptr i8, i8* %scevgep123.2, i64 1
  %scevgep128.3 = getelementptr i8, i8* %scevgep128.2, i64 1
  %40 = load i8, i8* %scevgep123.3, align 1
  %41 = load i8, i8* %scevgep128.3, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #2
  %scevgep131.4 = getelementptr i8, i8* %scevgep130, i64 4
  store i8 %call.i.4, i8* %scevgep131.4, align 1
  %scevgep123.4 = getelementptr i8, i8* %scevgep123.3, i64 1
  %scevgep128.4 = getelementptr i8, i8* %scevgep128.3, i64 1
  %42 = load i8, i8* %scevgep123.4, align 1
  %43 = load i8, i8* %scevgep128.4, align 1
  %call.i.5 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #2
  %scevgep131.5 = getelementptr i8, i8* %scevgep130, i64 5
  store i8 %call.i.5, i8* %scevgep131.5, align 1
  %scevgep123.5 = getelementptr i8, i8* %scevgep123.4, i64 1
  %scevgep128.5 = getelementptr i8, i8* %scevgep128.4, i64 1
  %44 = load i8, i8* %scevgep123.5, align 1
  %45 = load i8, i8* %scevgep128.5, align 1
  %call.i.6 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #2
  %scevgep131.6 = getelementptr i8, i8* %scevgep130, i64 6
  store i8 %call.i.6, i8* %scevgep131.6, align 1
  %scevgep123.6 = getelementptr i8, i8* %scevgep123.5, i64 1
  %scevgep128.6 = getelementptr i8, i8* %scevgep128.5, i64 1
  %46 = load i8, i8* %scevgep123.6, align 1
  %47 = load i8, i8* %scevgep128.6, align 1
  %call.i.7 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #2
  %scevgep131.7 = getelementptr i8, i8* %scevgep130, i64 7
  store i8 %call.i.7, i8* %scevgep131.7, align 1
  %scevgep123.7 = getelementptr i8, i8* %scevgep123.6, i64 1
  %scevgep128.7 = getelementptr i8, i8* %scevgep128.6, i64 1
  %48 = load i8, i8* %scevgep123.7, align 1
  %49 = load i8, i8* %scevgep128.7, align 1
  %call.i.8 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  %scevgep131.8 = getelementptr i8, i8* %scevgep130, i64 8
  store i8 %call.i.8, i8* %scevgep131.8, align 1
  %scevgep123.8 = getelementptr i8, i8* %scevgep123.7, i64 1
  %scevgep128.8 = getelementptr i8, i8* %scevgep128.7, i64 1
  %50 = load i8, i8* %scevgep123.8, align 1
  %51 = load i8, i8* %scevgep128.8, align 1
  %call.i.9 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #2
  %scevgep131.9 = getelementptr i8, i8* %scevgep130, i64 9
  store i8 %call.i.9, i8* %scevgep131.9, align 1
  %scevgep123.9 = getelementptr i8, i8* %scevgep123.8, i64 1
  %scevgep128.9 = getelementptr i8, i8* %scevgep128.8, i64 1
  %52 = load i8, i8* %scevgep123.9, align 1
  %53 = load i8, i8* %scevgep128.9, align 1
  %call.i.10 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #2
  %scevgep131.10 = getelementptr i8, i8* %scevgep130, i64 10
  store i8 %call.i.10, i8* %scevgep131.10, align 1
  %scevgep103 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep103104 = bitcast i8* %scevgep103 to [22 x [11 x i8]]*
  %scevgep116 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep116117 = bitcast i8* %scevgep116 to [22 x [11 x i8]]*
  %54 = load i8, i8* %a, align 1
  %arrayidx4.i135 = getelementptr inbounds i8, i8* %b, i64 1
  %55 = load i8, i8* %arrayidx4.i135, align 1
  %call.i136 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %scevgep107 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 0
  store i8 %call.i136, i8* %scevgep107, align 1
  %scevgep97 = getelementptr i8, i8* %a, i64 1
  %56 = load i8, i8* %scevgep97, align 1
  %arrayidx4.i135.1 = getelementptr inbounds i8, i8* %b, i64 2
  %57 = load i8, i8* %arrayidx4.i135.1, align 1
  %call.i136.1 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57) #2
  %scevgep107.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 1
  store i8 %call.i136.1, i8* %scevgep107.1, align 1
  %scevgep97.1 = getelementptr i8, i8* %scevgep97, i64 1
  %58 = load i8, i8* %scevgep97.1, align 1
  %arrayidx4.i135.2 = getelementptr inbounds i8, i8* %b, i64 3
  %59 = load i8, i8* %arrayidx4.i135.2, align 1
  %call.i136.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #2
  %scevgep107.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 2
  store i8 %call.i136.2, i8* %scevgep107.2, align 1
  %scevgep97.2 = getelementptr i8, i8* %scevgep97.1, i64 1
  %60 = load i8, i8* %scevgep97.2, align 1
  %arrayidx4.i135.3 = getelementptr inbounds i8, i8* %b, i64 4
  %61 = load i8, i8* %arrayidx4.i135.3, align 1
  %call.i136.3 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #2
  %scevgep107.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 3
  store i8 %call.i136.3, i8* %scevgep107.3, align 1
  %scevgep97.3 = getelementptr i8, i8* %scevgep97.2, i64 1
  %62 = load i8, i8* %scevgep97.3, align 1
  %arrayidx4.i135.4 = getelementptr inbounds i8, i8* %b, i64 5
  %63 = load i8, i8* %arrayidx4.i135.4, align 1
  %call.i136.4 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #2
  %scevgep107.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 4
  store i8 %call.i136.4, i8* %scevgep107.4, align 1
  %scevgep97.4 = getelementptr i8, i8* %scevgep97.3, i64 1
  %64 = load i8, i8* %scevgep97.4, align 1
  %arrayidx4.i135.5 = getelementptr inbounds i8, i8* %b, i64 6
  %65 = load i8, i8* %arrayidx4.i135.5, align 1
  %call.i136.5 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #2
  %scevgep107.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 5
  store i8 %call.i136.5, i8* %scevgep107.5, align 1
  %scevgep97.5 = getelementptr i8, i8* %scevgep97.4, i64 1
  %66 = load i8, i8* %scevgep97.5, align 1
  %arrayidx4.i135.6 = getelementptr inbounds i8, i8* %b, i64 7
  %67 = load i8, i8* %arrayidx4.i135.6, align 1
  %call.i136.6 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #2
  %scevgep107.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 6
  store i8 %call.i136.6, i8* %scevgep107.6, align 1
  %scevgep97.6 = getelementptr i8, i8* %scevgep97.5, i64 1
  %68 = load i8, i8* %scevgep97.6, align 1
  %arrayidx4.i135.7 = getelementptr inbounds i8, i8* %b, i64 8
  %69 = load i8, i8* %arrayidx4.i135.7, align 1
  %call.i136.7 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #2
  %scevgep107.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 7
  store i8 %call.i136.7, i8* %scevgep107.7, align 1
  %scevgep97.7 = getelementptr i8, i8* %scevgep97.6, i64 1
  %70 = load i8, i8* %scevgep97.7, align 1
  %arrayidx4.i135.8 = getelementptr inbounds i8, i8* %b, i64 9
  %71 = load i8, i8* %arrayidx4.i135.8, align 1
  %call.i136.8 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #2
  %scevgep107.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 8
  store i8 %call.i136.8, i8* %scevgep107.8, align 1
  %scevgep97.8 = getelementptr i8, i8* %scevgep97.7, i64 1
  %72 = load i8, i8* %scevgep97.8, align 1
  %arrayidx4.i135.9 = getelementptr inbounds i8, i8* %b, i64 10
  %73 = load i8, i8* %arrayidx4.i135.9, align 1
  %call.i136.9 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #2
  %scevgep107.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 9
  store i8 %call.i136.9, i8* %scevgep107.9, align 1
  %scevgep97.9 = getelementptr i8, i8* %scevgep97.8, i64 1
  %74 = load i8, i8* %scevgep97.9, align 1
  %75 = load i8, i8* %b, align 1
  %call.i136.10 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #2
  %scevgep107.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 0, i64 10
  store i8 %call.i136.10, i8* %scevgep107.10, align 1
  %arrayidx.i153 = getelementptr inbounds i8, i8* %a, i64 1
  %76 = load i8, i8* %arrayidx.i153, align 1
  %77 = load i8, i8* %b, align 1
  %call.i158 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #2
  %scevgep120 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 0
  store i8 %call.i158, i8* %scevgep120, align 1
  %scevgep112 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i153.1 = getelementptr inbounds i8, i8* %a, i64 2
  %78 = load i8, i8* %arrayidx.i153.1, align 1
  %79 = load i8, i8* %scevgep112, align 1
  %call.i158.1 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79) #2
  %scevgep120.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 1
  store i8 %call.i158.1, i8* %scevgep120.1, align 1
  %scevgep112.1 = getelementptr i8, i8* %scevgep112, i64 1
  %arrayidx.i153.2 = getelementptr inbounds i8, i8* %a, i64 3
  %80 = load i8, i8* %arrayidx.i153.2, align 1
  %81 = load i8, i8* %scevgep112.1, align 1
  %call.i158.2 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #2
  %scevgep120.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 2
  store i8 %call.i158.2, i8* %scevgep120.2, align 1
  %scevgep112.2 = getelementptr i8, i8* %scevgep112.1, i64 1
  %arrayidx.i153.3 = getelementptr inbounds i8, i8* %a, i64 4
  %82 = load i8, i8* %arrayidx.i153.3, align 1
  %83 = load i8, i8* %scevgep112.2, align 1
  %call.i158.3 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #2
  %scevgep120.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 3
  store i8 %call.i158.3, i8* %scevgep120.3, align 1
  %scevgep112.3 = getelementptr i8, i8* %scevgep112.2, i64 1
  %arrayidx.i153.4 = getelementptr inbounds i8, i8* %a, i64 5
  %84 = load i8, i8* %arrayidx.i153.4, align 1
  %85 = load i8, i8* %scevgep112.3, align 1
  %call.i158.4 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85) #2
  %scevgep120.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 4
  store i8 %call.i158.4, i8* %scevgep120.4, align 1
  %scevgep112.4 = getelementptr i8, i8* %scevgep112.3, i64 1
  %arrayidx.i153.5 = getelementptr inbounds i8, i8* %a, i64 6
  %86 = load i8, i8* %arrayidx.i153.5, align 1
  %87 = load i8, i8* %scevgep112.4, align 1
  %call.i158.5 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #2
  %scevgep120.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 5
  store i8 %call.i158.5, i8* %scevgep120.5, align 1
  %scevgep112.5 = getelementptr i8, i8* %scevgep112.4, i64 1
  %arrayidx.i153.6 = getelementptr inbounds i8, i8* %a, i64 7
  %88 = load i8, i8* %arrayidx.i153.6, align 1
  %89 = load i8, i8* %scevgep112.5, align 1
  %call.i158.6 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89) #2
  %scevgep120.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 6
  store i8 %call.i158.6, i8* %scevgep120.6, align 1
  %scevgep112.6 = getelementptr i8, i8* %scevgep112.5, i64 1
  %arrayidx.i153.7 = getelementptr inbounds i8, i8* %a, i64 8
  %90 = load i8, i8* %arrayidx.i153.7, align 1
  %91 = load i8, i8* %scevgep112.6, align 1
  %call.i158.7 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #2
  %scevgep120.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 7
  store i8 %call.i158.7, i8* %scevgep120.7, align 1
  %scevgep112.7 = getelementptr i8, i8* %scevgep112.6, i64 1
  %arrayidx.i153.8 = getelementptr inbounds i8, i8* %a, i64 9
  %92 = load i8, i8* %arrayidx.i153.8, align 1
  %93 = load i8, i8* %scevgep112.7, align 1
  %call.i158.8 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93) #2
  %scevgep120.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 8
  store i8 %call.i158.8, i8* %scevgep120.8, align 1
  %scevgep112.8 = getelementptr i8, i8* %scevgep112.7, i64 1
  %arrayidx.i153.9 = getelementptr inbounds i8, i8* %a, i64 10
  %94 = load i8, i8* %arrayidx.i153.9, align 1
  %95 = load i8, i8* %scevgep112.8, align 1
  %call.i158.9 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #2
  %scevgep120.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 9
  store i8 %call.i158.9, i8* %scevgep120.9, align 1
  %scevgep112.9 = getelementptr i8, i8* %scevgep112.8, i64 1
  %96 = load i8, i8* %a, align 1
  %97 = load i8, i8* %scevgep112.9, align 1
  %call.i158.10 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #2
  %scevgep120.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 0, i64 10
  store i8 %call.i158.10, i8* %scevgep120.10, align 1
  %scevgep106 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep103104, i64 0, i64 2, i64 0
  %98 = bitcast i8* %scevgep106 to [22 x [11 x i8]]*
  %scevgep119 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep116117, i64 0, i64 2, i64 0
  %99 = bitcast i8* %scevgep119 to [22 x [11 x i8]]*
  %100 = load i8, i8* %a, align 1
  %arrayidx4.i135.1260 = getelementptr inbounds i8, i8* %b, i64 2
  %101 = load i8, i8* %arrayidx4.i135.1260, align 1
  %call.i136.1261 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101) #2
  %scevgep107.1262 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 0
  store i8 %call.i136.1261, i8* %scevgep107.1262, align 1
  %scevgep97.1263 = getelementptr i8, i8* %a, i64 1
  %102 = load i8, i8* %scevgep97.1263, align 1
  %arrayidx4.i135.1.1 = getelementptr inbounds i8, i8* %b, i64 3
  %103 = load i8, i8* %arrayidx4.i135.1.1, align 1
  %call.i136.1.1 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103) #2
  %scevgep107.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 1
  store i8 %call.i136.1.1, i8* %scevgep107.1.1, align 1
  %scevgep97.1.1 = getelementptr i8, i8* %scevgep97.1263, i64 1
  %104 = load i8, i8* %scevgep97.1.1, align 1
  %arrayidx4.i135.2.1 = getelementptr inbounds i8, i8* %b, i64 4
  %105 = load i8, i8* %arrayidx4.i135.2.1, align 1
  %call.i136.2.1 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #2
  %scevgep107.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 2
  store i8 %call.i136.2.1, i8* %scevgep107.2.1, align 1
  %scevgep97.2.1 = getelementptr i8, i8* %scevgep97.1.1, i64 1
  %106 = load i8, i8* %scevgep97.2.1, align 1
  %arrayidx4.i135.3.1 = getelementptr inbounds i8, i8* %b, i64 5
  %107 = load i8, i8* %arrayidx4.i135.3.1, align 1
  %call.i136.3.1 = call zeroext i8 @mult(i8 zeroext %106, i8 zeroext %107) #2
  %scevgep107.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 3
  store i8 %call.i136.3.1, i8* %scevgep107.3.1, align 1
  %scevgep97.3.1 = getelementptr i8, i8* %scevgep97.2.1, i64 1
  %108 = load i8, i8* %scevgep97.3.1, align 1
  %arrayidx4.i135.4.1 = getelementptr inbounds i8, i8* %b, i64 6
  %109 = load i8, i8* %arrayidx4.i135.4.1, align 1
  %call.i136.4.1 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #2
  %scevgep107.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 4
  store i8 %call.i136.4.1, i8* %scevgep107.4.1, align 1
  %scevgep97.4.1 = getelementptr i8, i8* %scevgep97.3.1, i64 1
  %110 = load i8, i8* %scevgep97.4.1, align 1
  %arrayidx4.i135.5.1 = getelementptr inbounds i8, i8* %b, i64 7
  %111 = load i8, i8* %arrayidx4.i135.5.1, align 1
  %call.i136.5.1 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111) #2
  %scevgep107.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 5
  store i8 %call.i136.5.1, i8* %scevgep107.5.1, align 1
  %scevgep97.5.1 = getelementptr i8, i8* %scevgep97.4.1, i64 1
  %112 = load i8, i8* %scevgep97.5.1, align 1
  %arrayidx4.i135.6.1 = getelementptr inbounds i8, i8* %b, i64 8
  %113 = load i8, i8* %arrayidx4.i135.6.1, align 1
  %call.i136.6.1 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #2
  %scevgep107.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 6
  store i8 %call.i136.6.1, i8* %scevgep107.6.1, align 1
  %scevgep97.6.1 = getelementptr i8, i8* %scevgep97.5.1, i64 1
  %114 = load i8, i8* %scevgep97.6.1, align 1
  %arrayidx4.i135.7.1 = getelementptr inbounds i8, i8* %b, i64 9
  %115 = load i8, i8* %arrayidx4.i135.7.1, align 1
  %call.i136.7.1 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115) #2
  %scevgep107.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 7
  store i8 %call.i136.7.1, i8* %scevgep107.7.1, align 1
  %scevgep97.7.1 = getelementptr i8, i8* %scevgep97.6.1, i64 1
  %116 = load i8, i8* %scevgep97.7.1, align 1
  %arrayidx4.i135.8.1 = getelementptr inbounds i8, i8* %b, i64 10
  %117 = load i8, i8* %arrayidx4.i135.8.1, align 1
  %call.i136.8.1 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #2
  %scevgep107.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 8
  store i8 %call.i136.8.1, i8* %scevgep107.8.1, align 1
  %scevgep97.8.1 = getelementptr i8, i8* %scevgep97.7.1, i64 1
  %118 = load i8, i8* %scevgep97.8.1, align 1
  %119 = load i8, i8* %b, align 1
  %call.i136.9.1 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #2
  %scevgep107.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 9
  store i8 %call.i136.9.1, i8* %scevgep107.9.1, align 1
  %scevgep97.9.1 = getelementptr i8, i8* %scevgep97.8.1, i64 1
  %120 = load i8, i8* %scevgep97.9.1, align 1
  %arrayidx4.i135.10.1 = getelementptr inbounds i8, i8* %b, i64 1
  %121 = load i8, i8* %arrayidx4.i135.10.1, align 1
  %call.i136.10.1 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #2
  %scevgep107.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 0, i64 10
  store i8 %call.i136.10.1, i8* %scevgep107.10.1, align 1
  %arrayidx.i153.1266 = getelementptr inbounds i8, i8* %a, i64 2
  %122 = load i8, i8* %arrayidx.i153.1266, align 1
  %123 = load i8, i8* %b, align 1
  %call.i158.1267 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123) #2
  %scevgep120.1268 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 0
  store i8 %call.i158.1267, i8* %scevgep120.1268, align 1
  %scevgep112.1270 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i153.1.1 = getelementptr inbounds i8, i8* %a, i64 3
  %124 = load i8, i8* %arrayidx.i153.1.1, align 1
  %125 = load i8, i8* %scevgep112.1270, align 1
  %call.i158.1.1 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125) #2
  %scevgep120.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 1
  store i8 %call.i158.1.1, i8* %scevgep120.1.1, align 1
  %scevgep112.1.1 = getelementptr i8, i8* %scevgep112.1270, i64 1
  %arrayidx.i153.2.1 = getelementptr inbounds i8, i8* %a, i64 4
  %126 = load i8, i8* %arrayidx.i153.2.1, align 1
  %127 = load i8, i8* %scevgep112.1.1, align 1
  %call.i158.2.1 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127) #2
  %scevgep120.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 2
  store i8 %call.i158.2.1, i8* %scevgep120.2.1, align 1
  %scevgep112.2.1 = getelementptr i8, i8* %scevgep112.1.1, i64 1
  %arrayidx.i153.3.1 = getelementptr inbounds i8, i8* %a, i64 5
  %128 = load i8, i8* %arrayidx.i153.3.1, align 1
  %129 = load i8, i8* %scevgep112.2.1, align 1
  %call.i158.3.1 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #2
  %scevgep120.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 3
  store i8 %call.i158.3.1, i8* %scevgep120.3.1, align 1
  %scevgep112.3.1 = getelementptr i8, i8* %scevgep112.2.1, i64 1
  %arrayidx.i153.4.1 = getelementptr inbounds i8, i8* %a, i64 6
  %130 = load i8, i8* %arrayidx.i153.4.1, align 1
  %131 = load i8, i8* %scevgep112.3.1, align 1
  %call.i158.4.1 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131) #2
  %scevgep120.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 4
  store i8 %call.i158.4.1, i8* %scevgep120.4.1, align 1
  %scevgep112.4.1 = getelementptr i8, i8* %scevgep112.3.1, i64 1
  %arrayidx.i153.5.1 = getelementptr inbounds i8, i8* %a, i64 7
  %132 = load i8, i8* %arrayidx.i153.5.1, align 1
  %133 = load i8, i8* %scevgep112.4.1, align 1
  %call.i158.5.1 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #2
  %scevgep120.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 5
  store i8 %call.i158.5.1, i8* %scevgep120.5.1, align 1
  %scevgep112.5.1 = getelementptr i8, i8* %scevgep112.4.1, i64 1
  %arrayidx.i153.6.1 = getelementptr inbounds i8, i8* %a, i64 8
  %134 = load i8, i8* %arrayidx.i153.6.1, align 1
  %135 = load i8, i8* %scevgep112.5.1, align 1
  %call.i158.6.1 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135) #2
  %scevgep120.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 6
  store i8 %call.i158.6.1, i8* %scevgep120.6.1, align 1
  %scevgep112.6.1 = getelementptr i8, i8* %scevgep112.5.1, i64 1
  %arrayidx.i153.7.1 = getelementptr inbounds i8, i8* %a, i64 9
  %136 = load i8, i8* %arrayidx.i153.7.1, align 1
  %137 = load i8, i8* %scevgep112.6.1, align 1
  %call.i158.7.1 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137) #2
  %scevgep120.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 7
  store i8 %call.i158.7.1, i8* %scevgep120.7.1, align 1
  %scevgep112.7.1 = getelementptr i8, i8* %scevgep112.6.1, i64 1
  %arrayidx.i153.8.1 = getelementptr inbounds i8, i8* %a, i64 10
  %138 = load i8, i8* %arrayidx.i153.8.1, align 1
  %139 = load i8, i8* %scevgep112.7.1, align 1
  %call.i158.8.1 = call zeroext i8 @mult(i8 zeroext %138, i8 zeroext %139) #2
  %scevgep120.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 8
  store i8 %call.i158.8.1, i8* %scevgep120.8.1, align 1
  %scevgep112.8.1 = getelementptr i8, i8* %scevgep112.7.1, i64 1
  %140 = load i8, i8* %a, align 1
  %141 = load i8, i8* %scevgep112.8.1, align 1
  %call.i158.9.1 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141) #2
  %scevgep120.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 9
  store i8 %call.i158.9.1, i8* %scevgep120.9.1, align 1
  %scevgep112.9.1 = getelementptr i8, i8* %scevgep112.8.1, i64 1
  %arrayidx.i153.10.1 = getelementptr inbounds i8, i8* %a, i64 1
  %142 = load i8, i8* %arrayidx.i153.10.1, align 1
  %143 = load i8, i8* %scevgep112.9.1, align 1
  %call.i158.10.1 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143) #2
  %scevgep120.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 0, i64 10
  store i8 %call.i158.10.1, i8* %scevgep120.10.1, align 1
  %scevgep106.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %98, i64 0, i64 2, i64 0
  %144 = bitcast i8* %scevgep106.1 to [22 x [11 x i8]]*
  %scevgep119.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %99, i64 0, i64 2, i64 0
  %145 = bitcast i8* %scevgep119.1 to [22 x [11 x i8]]*
  %146 = load i8, i8* %a, align 1
  %arrayidx4.i135.2272 = getelementptr inbounds i8, i8* %b, i64 3
  %147 = load i8, i8* %arrayidx4.i135.2272, align 1
  %call.i136.2273 = call zeroext i8 @mult(i8 zeroext %146, i8 zeroext %147) #2
  %scevgep107.2274 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 0
  store i8 %call.i136.2273, i8* %scevgep107.2274, align 1
  %scevgep97.2275 = getelementptr i8, i8* %a, i64 1
  %148 = load i8, i8* %scevgep97.2275, align 1
  %arrayidx4.i135.1.2 = getelementptr inbounds i8, i8* %b, i64 4
  %149 = load i8, i8* %arrayidx4.i135.1.2, align 1
  %call.i136.1.2 = call zeroext i8 @mult(i8 zeroext %148, i8 zeroext %149) #2
  %scevgep107.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 1
  store i8 %call.i136.1.2, i8* %scevgep107.1.2, align 1
  %scevgep97.1.2 = getelementptr i8, i8* %scevgep97.2275, i64 1
  %150 = load i8, i8* %scevgep97.1.2, align 1
  %arrayidx4.i135.2.2 = getelementptr inbounds i8, i8* %b, i64 5
  %151 = load i8, i8* %arrayidx4.i135.2.2, align 1
  %call.i136.2.2 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %151) #2
  %scevgep107.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 2
  store i8 %call.i136.2.2, i8* %scevgep107.2.2, align 1
  %scevgep97.2.2 = getelementptr i8, i8* %scevgep97.1.2, i64 1
  %152 = load i8, i8* %scevgep97.2.2, align 1
  %arrayidx4.i135.3.2 = getelementptr inbounds i8, i8* %b, i64 6
  %153 = load i8, i8* %arrayidx4.i135.3.2, align 1
  %call.i136.3.2 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153) #2
  %scevgep107.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 3
  store i8 %call.i136.3.2, i8* %scevgep107.3.2, align 1
  %scevgep97.3.2 = getelementptr i8, i8* %scevgep97.2.2, i64 1
  %154 = load i8, i8* %scevgep97.3.2, align 1
  %arrayidx4.i135.4.2 = getelementptr inbounds i8, i8* %b, i64 7
  %155 = load i8, i8* %arrayidx4.i135.4.2, align 1
  %call.i136.4.2 = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155) #2
  %scevgep107.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 4
  store i8 %call.i136.4.2, i8* %scevgep107.4.2, align 1
  %scevgep97.4.2 = getelementptr i8, i8* %scevgep97.3.2, i64 1
  %156 = load i8, i8* %scevgep97.4.2, align 1
  %arrayidx4.i135.5.2 = getelementptr inbounds i8, i8* %b, i64 8
  %157 = load i8, i8* %arrayidx4.i135.5.2, align 1
  %call.i136.5.2 = call zeroext i8 @mult(i8 zeroext %156, i8 zeroext %157) #2
  %scevgep107.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 5
  store i8 %call.i136.5.2, i8* %scevgep107.5.2, align 1
  %scevgep97.5.2 = getelementptr i8, i8* %scevgep97.4.2, i64 1
  %158 = load i8, i8* %scevgep97.5.2, align 1
  %arrayidx4.i135.6.2 = getelementptr inbounds i8, i8* %b, i64 9
  %159 = load i8, i8* %arrayidx4.i135.6.2, align 1
  %call.i136.6.2 = call zeroext i8 @mult(i8 zeroext %158, i8 zeroext %159) #2
  %scevgep107.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 6
  store i8 %call.i136.6.2, i8* %scevgep107.6.2, align 1
  %scevgep97.6.2 = getelementptr i8, i8* %scevgep97.5.2, i64 1
  %160 = load i8, i8* %scevgep97.6.2, align 1
  %arrayidx4.i135.7.2 = getelementptr inbounds i8, i8* %b, i64 10
  %161 = load i8, i8* %arrayidx4.i135.7.2, align 1
  %call.i136.7.2 = call zeroext i8 @mult(i8 zeroext %160, i8 zeroext %161) #2
  %scevgep107.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 7
  store i8 %call.i136.7.2, i8* %scevgep107.7.2, align 1
  %scevgep97.7.2 = getelementptr i8, i8* %scevgep97.6.2, i64 1
  %162 = load i8, i8* %scevgep97.7.2, align 1
  %163 = load i8, i8* %b, align 1
  %call.i136.8.2 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #2
  %scevgep107.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 8
  store i8 %call.i136.8.2, i8* %scevgep107.8.2, align 1
  %scevgep97.8.2 = getelementptr i8, i8* %scevgep97.7.2, i64 1
  %164 = load i8, i8* %scevgep97.8.2, align 1
  %arrayidx4.i135.9.2 = getelementptr inbounds i8, i8* %b, i64 1
  %165 = load i8, i8* %arrayidx4.i135.9.2, align 1
  %call.i136.9.2 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165) #2
  %scevgep107.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 9
  store i8 %call.i136.9.2, i8* %scevgep107.9.2, align 1
  %scevgep97.9.2 = getelementptr i8, i8* %scevgep97.8.2, i64 1
  %166 = load i8, i8* %scevgep97.9.2, align 1
  %arrayidx4.i135.10.2 = getelementptr inbounds i8, i8* %b, i64 2
  %167 = load i8, i8* %arrayidx4.i135.10.2, align 1
  %call.i136.10.2 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167) #2
  %scevgep107.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 0, i64 10
  store i8 %call.i136.10.2, i8* %scevgep107.10.2, align 1
  %arrayidx.i153.2278 = getelementptr inbounds i8, i8* %a, i64 3
  %168 = load i8, i8* %arrayidx.i153.2278, align 1
  %169 = load i8, i8* %b, align 1
  %call.i158.2279 = call zeroext i8 @mult(i8 zeroext %168, i8 zeroext %169) #2
  %scevgep120.2280 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 0
  store i8 %call.i158.2279, i8* %scevgep120.2280, align 1
  %scevgep112.2282 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i153.1.2 = getelementptr inbounds i8, i8* %a, i64 4
  %170 = load i8, i8* %arrayidx.i153.1.2, align 1
  %171 = load i8, i8* %scevgep112.2282, align 1
  %call.i158.1.2 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171) #2
  %scevgep120.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 1
  store i8 %call.i158.1.2, i8* %scevgep120.1.2, align 1
  %scevgep112.1.2 = getelementptr i8, i8* %scevgep112.2282, i64 1
  %arrayidx.i153.2.2 = getelementptr inbounds i8, i8* %a, i64 5
  %172 = load i8, i8* %arrayidx.i153.2.2, align 1
  %173 = load i8, i8* %scevgep112.1.2, align 1
  %call.i158.2.2 = call zeroext i8 @mult(i8 zeroext %172, i8 zeroext %173) #2
  %scevgep120.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 2
  store i8 %call.i158.2.2, i8* %scevgep120.2.2, align 1
  %scevgep112.2.2 = getelementptr i8, i8* %scevgep112.1.2, i64 1
  %arrayidx.i153.3.2 = getelementptr inbounds i8, i8* %a, i64 6
  %174 = load i8, i8* %arrayidx.i153.3.2, align 1
  %175 = load i8, i8* %scevgep112.2.2, align 1
  %call.i158.3.2 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175) #2
  %scevgep120.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 3
  store i8 %call.i158.3.2, i8* %scevgep120.3.2, align 1
  %scevgep112.3.2 = getelementptr i8, i8* %scevgep112.2.2, i64 1
  %arrayidx.i153.4.2 = getelementptr inbounds i8, i8* %a, i64 7
  %176 = load i8, i8* %arrayidx.i153.4.2, align 1
  %177 = load i8, i8* %scevgep112.3.2, align 1
  %call.i158.4.2 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177) #2
  %scevgep120.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 4
  store i8 %call.i158.4.2, i8* %scevgep120.4.2, align 1
  %scevgep112.4.2 = getelementptr i8, i8* %scevgep112.3.2, i64 1
  %arrayidx.i153.5.2 = getelementptr inbounds i8, i8* %a, i64 8
  %178 = load i8, i8* %arrayidx.i153.5.2, align 1
  %179 = load i8, i8* %scevgep112.4.2, align 1
  %call.i158.5.2 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #2
  %scevgep120.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 5
  store i8 %call.i158.5.2, i8* %scevgep120.5.2, align 1
  %scevgep112.5.2 = getelementptr i8, i8* %scevgep112.4.2, i64 1
  %arrayidx.i153.6.2 = getelementptr inbounds i8, i8* %a, i64 9
  %180 = load i8, i8* %arrayidx.i153.6.2, align 1
  %181 = load i8, i8* %scevgep112.5.2, align 1
  %call.i158.6.2 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181) #2
  %scevgep120.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 6
  store i8 %call.i158.6.2, i8* %scevgep120.6.2, align 1
  %scevgep112.6.2 = getelementptr i8, i8* %scevgep112.5.2, i64 1
  %arrayidx.i153.7.2 = getelementptr inbounds i8, i8* %a, i64 10
  %182 = load i8, i8* %arrayidx.i153.7.2, align 1
  %183 = load i8, i8* %scevgep112.6.2, align 1
  %call.i158.7.2 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183) #2
  %scevgep120.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 7
  store i8 %call.i158.7.2, i8* %scevgep120.7.2, align 1
  %scevgep112.7.2 = getelementptr i8, i8* %scevgep112.6.2, i64 1
  %184 = load i8, i8* %a, align 1
  %185 = load i8, i8* %scevgep112.7.2, align 1
  %call.i158.8.2 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185) #2
  %scevgep120.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 8
  store i8 %call.i158.8.2, i8* %scevgep120.8.2, align 1
  %scevgep112.8.2 = getelementptr i8, i8* %scevgep112.7.2, i64 1
  %arrayidx.i153.9.2 = getelementptr inbounds i8, i8* %a, i64 1
  %186 = load i8, i8* %arrayidx.i153.9.2, align 1
  %187 = load i8, i8* %scevgep112.8.2, align 1
  %call.i158.9.2 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #2
  %scevgep120.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 9
  store i8 %call.i158.9.2, i8* %scevgep120.9.2, align 1
  %scevgep112.9.2 = getelementptr i8, i8* %scevgep112.8.2, i64 1
  %arrayidx.i153.10.2 = getelementptr inbounds i8, i8* %a, i64 2
  %188 = load i8, i8* %arrayidx.i153.10.2, align 1
  %189 = load i8, i8* %scevgep112.9.2, align 1
  %call.i158.10.2 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189) #2
  %scevgep120.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 0, i64 10
  store i8 %call.i158.10.2, i8* %scevgep120.10.2, align 1
  %scevgep106.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %144, i64 0, i64 2, i64 0
  %190 = bitcast i8* %scevgep106.2 to [22 x [11 x i8]]*
  %scevgep119.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %145, i64 0, i64 2, i64 0
  %191 = bitcast i8* %scevgep119.2 to [22 x [11 x i8]]*
  %192 = load i8, i8* %a, align 1
  %arrayidx4.i135.3284 = getelementptr inbounds i8, i8* %b, i64 4
  %193 = load i8, i8* %arrayidx4.i135.3284, align 1
  %call.i136.3285 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193) #2
  %scevgep107.3286 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 0
  store i8 %call.i136.3285, i8* %scevgep107.3286, align 1
  %scevgep97.3287 = getelementptr i8, i8* %a, i64 1
  %194 = load i8, i8* %scevgep97.3287, align 1
  %arrayidx4.i135.1.3 = getelementptr inbounds i8, i8* %b, i64 5
  %195 = load i8, i8* %arrayidx4.i135.1.3, align 1
  %call.i136.1.3 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %195) #2
  %scevgep107.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 1
  store i8 %call.i136.1.3, i8* %scevgep107.1.3, align 1
  %scevgep97.1.3 = getelementptr i8, i8* %scevgep97.3287, i64 1
  %196 = load i8, i8* %scevgep97.1.3, align 1
  %arrayidx4.i135.2.3 = getelementptr inbounds i8, i8* %b, i64 6
  %197 = load i8, i8* %arrayidx4.i135.2.3, align 1
  %call.i136.2.3 = call zeroext i8 @mult(i8 zeroext %196, i8 zeroext %197) #2
  %scevgep107.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 2
  store i8 %call.i136.2.3, i8* %scevgep107.2.3, align 1
  %scevgep97.2.3 = getelementptr i8, i8* %scevgep97.1.3, i64 1
  %198 = load i8, i8* %scevgep97.2.3, align 1
  %arrayidx4.i135.3.3 = getelementptr inbounds i8, i8* %b, i64 7
  %199 = load i8, i8* %arrayidx4.i135.3.3, align 1
  %call.i136.3.3 = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %199) #2
  %scevgep107.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 3
  store i8 %call.i136.3.3, i8* %scevgep107.3.3, align 1
  %scevgep97.3.3 = getelementptr i8, i8* %scevgep97.2.3, i64 1
  %200 = load i8, i8* %scevgep97.3.3, align 1
  %arrayidx4.i135.4.3 = getelementptr inbounds i8, i8* %b, i64 8
  %201 = load i8, i8* %arrayidx4.i135.4.3, align 1
  %call.i136.4.3 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201) #2
  %scevgep107.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 4
  store i8 %call.i136.4.3, i8* %scevgep107.4.3, align 1
  %scevgep97.4.3 = getelementptr i8, i8* %scevgep97.3.3, i64 1
  %202 = load i8, i8* %scevgep97.4.3, align 1
  %arrayidx4.i135.5.3 = getelementptr inbounds i8, i8* %b, i64 9
  %203 = load i8, i8* %arrayidx4.i135.5.3, align 1
  %call.i136.5.3 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #2
  %scevgep107.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 5
  store i8 %call.i136.5.3, i8* %scevgep107.5.3, align 1
  %scevgep97.5.3 = getelementptr i8, i8* %scevgep97.4.3, i64 1
  %204 = load i8, i8* %scevgep97.5.3, align 1
  %arrayidx4.i135.6.3 = getelementptr inbounds i8, i8* %b, i64 10
  %205 = load i8, i8* %arrayidx4.i135.6.3, align 1
  %call.i136.6.3 = call zeroext i8 @mult(i8 zeroext %204, i8 zeroext %205) #2
  %scevgep107.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 6
  store i8 %call.i136.6.3, i8* %scevgep107.6.3, align 1
  %scevgep97.6.3 = getelementptr i8, i8* %scevgep97.5.3, i64 1
  %206 = load i8, i8* %scevgep97.6.3, align 1
  %207 = load i8, i8* %b, align 1
  %call.i136.7.3 = call zeroext i8 @mult(i8 zeroext %206, i8 zeroext %207) #2
  %scevgep107.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 7
  store i8 %call.i136.7.3, i8* %scevgep107.7.3, align 1
  %scevgep97.7.3 = getelementptr i8, i8* %scevgep97.6.3, i64 1
  %208 = load i8, i8* %scevgep97.7.3, align 1
  %arrayidx4.i135.8.3 = getelementptr inbounds i8, i8* %b, i64 1
  %209 = load i8, i8* %arrayidx4.i135.8.3, align 1
  %call.i136.8.3 = call zeroext i8 @mult(i8 zeroext %208, i8 zeroext %209) #2
  %scevgep107.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 8
  store i8 %call.i136.8.3, i8* %scevgep107.8.3, align 1
  %scevgep97.8.3 = getelementptr i8, i8* %scevgep97.7.3, i64 1
  %210 = load i8, i8* %scevgep97.8.3, align 1
  %arrayidx4.i135.9.3 = getelementptr inbounds i8, i8* %b, i64 2
  %211 = load i8, i8* %arrayidx4.i135.9.3, align 1
  %call.i136.9.3 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #2
  %scevgep107.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 9
  store i8 %call.i136.9.3, i8* %scevgep107.9.3, align 1
  %scevgep97.9.3 = getelementptr i8, i8* %scevgep97.8.3, i64 1
  %212 = load i8, i8* %scevgep97.9.3, align 1
  %arrayidx4.i135.10.3 = getelementptr inbounds i8, i8* %b, i64 3
  %213 = load i8, i8* %arrayidx4.i135.10.3, align 1
  %call.i136.10.3 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213) #2
  %scevgep107.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 0, i64 10
  store i8 %call.i136.10.3, i8* %scevgep107.10.3, align 1
  %arrayidx.i153.3290 = getelementptr inbounds i8, i8* %a, i64 4
  %214 = load i8, i8* %arrayidx.i153.3290, align 1
  %215 = load i8, i8* %b, align 1
  %call.i158.3291 = call zeroext i8 @mult(i8 zeroext %214, i8 zeroext %215) #2
  %scevgep120.3292 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 0
  store i8 %call.i158.3291, i8* %scevgep120.3292, align 1
  %scevgep112.3294 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i153.1.3 = getelementptr inbounds i8, i8* %a, i64 5
  %216 = load i8, i8* %arrayidx.i153.1.3, align 1
  %217 = load i8, i8* %scevgep112.3294, align 1
  %call.i158.1.3 = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %217) #2
  %scevgep120.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 1
  store i8 %call.i158.1.3, i8* %scevgep120.1.3, align 1
  %scevgep112.1.3 = getelementptr i8, i8* %scevgep112.3294, i64 1
  %arrayidx.i153.2.3 = getelementptr inbounds i8, i8* %a, i64 6
  %218 = load i8, i8* %arrayidx.i153.2.3, align 1
  %219 = load i8, i8* %scevgep112.1.3, align 1
  %call.i158.2.3 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219) #2
  %scevgep120.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 2
  store i8 %call.i158.2.3, i8* %scevgep120.2.3, align 1
  %scevgep112.2.3 = getelementptr i8, i8* %scevgep112.1.3, i64 1
  %arrayidx.i153.3.3 = getelementptr inbounds i8, i8* %a, i64 7
  %220 = load i8, i8* %arrayidx.i153.3.3, align 1
  %221 = load i8, i8* %scevgep112.2.3, align 1
  %call.i158.3.3 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221) #2
  %scevgep120.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 3
  store i8 %call.i158.3.3, i8* %scevgep120.3.3, align 1
  %scevgep112.3.3 = getelementptr i8, i8* %scevgep112.2.3, i64 1
  %arrayidx.i153.4.3 = getelementptr inbounds i8, i8* %a, i64 8
  %222 = load i8, i8* %arrayidx.i153.4.3, align 1
  %223 = load i8, i8* %scevgep112.3.3, align 1
  %call.i158.4.3 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223) #2
  %scevgep120.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 4
  store i8 %call.i158.4.3, i8* %scevgep120.4.3, align 1
  %scevgep112.4.3 = getelementptr i8, i8* %scevgep112.3.3, i64 1
  %arrayidx.i153.5.3 = getelementptr inbounds i8, i8* %a, i64 9
  %224 = load i8, i8* %arrayidx.i153.5.3, align 1
  %225 = load i8, i8* %scevgep112.4.3, align 1
  %call.i158.5.3 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #2
  %scevgep120.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 5
  store i8 %call.i158.5.3, i8* %scevgep120.5.3, align 1
  %scevgep112.5.3 = getelementptr i8, i8* %scevgep112.4.3, i64 1
  %arrayidx.i153.6.3 = getelementptr inbounds i8, i8* %a, i64 10
  %226 = load i8, i8* %arrayidx.i153.6.3, align 1
  %227 = load i8, i8* %scevgep112.5.3, align 1
  %call.i158.6.3 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227) #2
  %scevgep120.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 6
  store i8 %call.i158.6.3, i8* %scevgep120.6.3, align 1
  %scevgep112.6.3 = getelementptr i8, i8* %scevgep112.5.3, i64 1
  %228 = load i8, i8* %a, align 1
  %229 = load i8, i8* %scevgep112.6.3, align 1
  %call.i158.7.3 = call zeroext i8 @mult(i8 zeroext %228, i8 zeroext %229) #2
  %scevgep120.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 7
  store i8 %call.i158.7.3, i8* %scevgep120.7.3, align 1
  %scevgep112.7.3 = getelementptr i8, i8* %scevgep112.6.3, i64 1
  %arrayidx.i153.8.3 = getelementptr inbounds i8, i8* %a, i64 1
  %230 = load i8, i8* %arrayidx.i153.8.3, align 1
  %231 = load i8, i8* %scevgep112.7.3, align 1
  %call.i158.8.3 = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231) #2
  %scevgep120.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 8
  store i8 %call.i158.8.3, i8* %scevgep120.8.3, align 1
  %scevgep112.8.3 = getelementptr i8, i8* %scevgep112.7.3, i64 1
  %arrayidx.i153.9.3 = getelementptr inbounds i8, i8* %a, i64 2
  %232 = load i8, i8* %arrayidx.i153.9.3, align 1
  %233 = load i8, i8* %scevgep112.8.3, align 1
  %call.i158.9.3 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233) #2
  %scevgep120.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 9
  store i8 %call.i158.9.3, i8* %scevgep120.9.3, align 1
  %scevgep112.9.3 = getelementptr i8, i8* %scevgep112.8.3, i64 1
  %arrayidx.i153.10.3 = getelementptr inbounds i8, i8* %a, i64 3
  %234 = load i8, i8* %arrayidx.i153.10.3, align 1
  %235 = load i8, i8* %scevgep112.9.3, align 1
  %call.i158.10.3 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235) #2
  %scevgep120.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 0, i64 10
  store i8 %call.i158.10.3, i8* %scevgep120.10.3, align 1
  %scevgep106.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %190, i64 0, i64 2, i64 0
  %236 = bitcast i8* %scevgep106.3 to [22 x [11 x i8]]*
  %scevgep119.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %191, i64 0, i64 2, i64 0
  %237 = bitcast i8* %scevgep119.3 to [22 x [11 x i8]]*
  %238 = load i8, i8* %a, align 1
  %arrayidx4.i135.4296 = getelementptr inbounds i8, i8* %b, i64 5
  %239 = load i8, i8* %arrayidx4.i135.4296, align 1
  %call.i136.4297 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239) #2
  %scevgep107.4298 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 0
  store i8 %call.i136.4297, i8* %scevgep107.4298, align 1
  %scevgep97.4299 = getelementptr i8, i8* %a, i64 1
  %240 = load i8, i8* %scevgep97.4299, align 1
  %arrayidx4.i135.1.4 = getelementptr inbounds i8, i8* %b, i64 6
  %241 = load i8, i8* %arrayidx4.i135.1.4, align 1
  %call.i136.1.4 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241) #2
  %scevgep107.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 1
  store i8 %call.i136.1.4, i8* %scevgep107.1.4, align 1
  %scevgep97.1.4 = getelementptr i8, i8* %scevgep97.4299, i64 1
  %242 = load i8, i8* %scevgep97.1.4, align 1
  %arrayidx4.i135.2.4 = getelementptr inbounds i8, i8* %b, i64 7
  %243 = load i8, i8* %arrayidx4.i135.2.4, align 1
  %call.i136.2.4 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243) #2
  %scevgep107.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 2
  store i8 %call.i136.2.4, i8* %scevgep107.2.4, align 1
  %scevgep97.2.4 = getelementptr i8, i8* %scevgep97.1.4, i64 1
  %244 = load i8, i8* %scevgep97.2.4, align 1
  %arrayidx4.i135.3.4 = getelementptr inbounds i8, i8* %b, i64 8
  %245 = load i8, i8* %arrayidx4.i135.3.4, align 1
  %call.i136.3.4 = call zeroext i8 @mult(i8 zeroext %244, i8 zeroext %245) #2
  %scevgep107.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 3
  store i8 %call.i136.3.4, i8* %scevgep107.3.4, align 1
  %scevgep97.3.4 = getelementptr i8, i8* %scevgep97.2.4, i64 1
  %246 = load i8, i8* %scevgep97.3.4, align 1
  %arrayidx4.i135.4.4 = getelementptr inbounds i8, i8* %b, i64 9
  %247 = load i8, i8* %arrayidx4.i135.4.4, align 1
  %call.i136.4.4 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #2
  %scevgep107.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 4
  store i8 %call.i136.4.4, i8* %scevgep107.4.4, align 1
  %scevgep97.4.4 = getelementptr i8, i8* %scevgep97.3.4, i64 1
  %248 = load i8, i8* %scevgep97.4.4, align 1
  %arrayidx4.i135.5.4 = getelementptr inbounds i8, i8* %b, i64 10
  %249 = load i8, i8* %arrayidx4.i135.5.4, align 1
  %call.i136.5.4 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249) #2
  %scevgep107.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 5
  store i8 %call.i136.5.4, i8* %scevgep107.5.4, align 1
  %scevgep97.5.4 = getelementptr i8, i8* %scevgep97.4.4, i64 1
  %250 = load i8, i8* %scevgep97.5.4, align 1
  %251 = load i8, i8* %b, align 1
  %call.i136.6.4 = call zeroext i8 @mult(i8 zeroext %250, i8 zeroext %251) #2
  %scevgep107.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 6
  store i8 %call.i136.6.4, i8* %scevgep107.6.4, align 1
  %scevgep97.6.4 = getelementptr i8, i8* %scevgep97.5.4, i64 1
  %252 = load i8, i8* %scevgep97.6.4, align 1
  %arrayidx4.i135.7.4 = getelementptr inbounds i8, i8* %b, i64 1
  %253 = load i8, i8* %arrayidx4.i135.7.4, align 1
  %call.i136.7.4 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253) #2
  %scevgep107.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 7
  store i8 %call.i136.7.4, i8* %scevgep107.7.4, align 1
  %scevgep97.7.4 = getelementptr i8, i8* %scevgep97.6.4, i64 1
  %254 = load i8, i8* %scevgep97.7.4, align 1
  %arrayidx4.i135.8.4 = getelementptr inbounds i8, i8* %b, i64 2
  %255 = load i8, i8* %arrayidx4.i135.8.4, align 1
  %call.i136.8.4 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255) #2
  %scevgep107.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 8
  store i8 %call.i136.8.4, i8* %scevgep107.8.4, align 1
  %scevgep97.8.4 = getelementptr i8, i8* %scevgep97.7.4, i64 1
  %256 = load i8, i8* %scevgep97.8.4, align 1
  %arrayidx4.i135.9.4 = getelementptr inbounds i8, i8* %b, i64 3
  %257 = load i8, i8* %arrayidx4.i135.9.4, align 1
  %call.i136.9.4 = call zeroext i8 @mult(i8 zeroext %256, i8 zeroext %257) #2
  %scevgep107.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 9
  store i8 %call.i136.9.4, i8* %scevgep107.9.4, align 1
  %scevgep97.9.4 = getelementptr i8, i8* %scevgep97.8.4, i64 1
  %258 = load i8, i8* %scevgep97.9.4, align 1
  %arrayidx4.i135.10.4 = getelementptr inbounds i8, i8* %b, i64 4
  %259 = load i8, i8* %arrayidx4.i135.10.4, align 1
  %call.i136.10.4 = call zeroext i8 @mult(i8 zeroext %258, i8 zeroext %259) #2
  %scevgep107.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %236, i64 0, i64 0, i64 10
  store i8 %call.i136.10.4, i8* %scevgep107.10.4, align 1
  %arrayidx.i153.4302 = getelementptr inbounds i8, i8* %a, i64 5
  %260 = load i8, i8* %arrayidx.i153.4302, align 1
  %261 = load i8, i8* %b, align 1
  %call.i158.4303 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261) #2
  %scevgep120.4304 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 0
  store i8 %call.i158.4303, i8* %scevgep120.4304, align 1
  %scevgep112.4306 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i153.1.4 = getelementptr inbounds i8, i8* %a, i64 6
  %262 = load i8, i8* %arrayidx.i153.1.4, align 1
  %263 = load i8, i8* %scevgep112.4306, align 1
  %call.i158.1.4 = call zeroext i8 @mult(i8 zeroext %262, i8 zeroext %263) #2
  %scevgep120.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 1
  store i8 %call.i158.1.4, i8* %scevgep120.1.4, align 1
  %scevgep112.1.4 = getelementptr i8, i8* %scevgep112.4306, i64 1
  %arrayidx.i153.2.4 = getelementptr inbounds i8, i8* %a, i64 7
  %264 = load i8, i8* %arrayidx.i153.2.4, align 1
  %265 = load i8, i8* %scevgep112.1.4, align 1
  %call.i158.2.4 = call zeroext i8 @mult(i8 zeroext %264, i8 zeroext %265) #2
  %scevgep120.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 2
  store i8 %call.i158.2.4, i8* %scevgep120.2.4, align 1
  %scevgep112.2.4 = getelementptr i8, i8* %scevgep112.1.4, i64 1
  %arrayidx.i153.3.4 = getelementptr inbounds i8, i8* %a, i64 8
  %266 = load i8, i8* %arrayidx.i153.3.4, align 1
  %267 = load i8, i8* %scevgep112.2.4, align 1
  %call.i158.3.4 = call zeroext i8 @mult(i8 zeroext %266, i8 zeroext %267) #2
  %scevgep120.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 3
  store i8 %call.i158.3.4, i8* %scevgep120.3.4, align 1
  %scevgep112.3.4 = getelementptr i8, i8* %scevgep112.2.4, i64 1
  %arrayidx.i153.4.4 = getelementptr inbounds i8, i8* %a, i64 9
  %268 = load i8, i8* %arrayidx.i153.4.4, align 1
  %269 = load i8, i8* %scevgep112.3.4, align 1
  %call.i158.4.4 = call zeroext i8 @mult(i8 zeroext %268, i8 zeroext %269) #2
  %scevgep120.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 4
  store i8 %call.i158.4.4, i8* %scevgep120.4.4, align 1
  %scevgep112.4.4 = getelementptr i8, i8* %scevgep112.3.4, i64 1
  %arrayidx.i153.5.4 = getelementptr inbounds i8, i8* %a, i64 10
  %270 = load i8, i8* %arrayidx.i153.5.4, align 1
  %271 = load i8, i8* %scevgep112.4.4, align 1
  %call.i158.5.4 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %271) #2
  %scevgep120.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 5
  store i8 %call.i158.5.4, i8* %scevgep120.5.4, align 1
  %scevgep112.5.4 = getelementptr i8, i8* %scevgep112.4.4, i64 1
  %272 = load i8, i8* %a, align 1
  %273 = load i8, i8* %scevgep112.5.4, align 1
  %call.i158.6.4 = call zeroext i8 @mult(i8 zeroext %272, i8 zeroext %273) #2
  %scevgep120.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 6
  store i8 %call.i158.6.4, i8* %scevgep120.6.4, align 1
  %scevgep112.6.4 = getelementptr i8, i8* %scevgep112.5.4, i64 1
  %arrayidx.i153.7.4 = getelementptr inbounds i8, i8* %a, i64 1
  %274 = load i8, i8* %arrayidx.i153.7.4, align 1
  %275 = load i8, i8* %scevgep112.6.4, align 1
  %call.i158.7.4 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275) #2
  %scevgep120.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 7
  store i8 %call.i158.7.4, i8* %scevgep120.7.4, align 1
  %scevgep112.7.4 = getelementptr i8, i8* %scevgep112.6.4, i64 1
  %arrayidx.i153.8.4 = getelementptr inbounds i8, i8* %a, i64 2
  %276 = load i8, i8* %arrayidx.i153.8.4, align 1
  %277 = load i8, i8* %scevgep112.7.4, align 1
  %call.i158.8.4 = call zeroext i8 @mult(i8 zeroext %276, i8 zeroext %277) #2
  %scevgep120.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 8
  store i8 %call.i158.8.4, i8* %scevgep120.8.4, align 1
  %scevgep112.8.4 = getelementptr i8, i8* %scevgep112.7.4, i64 1
  %arrayidx.i153.9.4 = getelementptr inbounds i8, i8* %a, i64 3
  %278 = load i8, i8* %arrayidx.i153.9.4, align 1
  %279 = load i8, i8* %scevgep112.8.4, align 1
  %call.i158.9.4 = call zeroext i8 @mult(i8 zeroext %278, i8 zeroext %279) #2
  %scevgep120.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 9
  store i8 %call.i158.9.4, i8* %scevgep120.9.4, align 1
  %scevgep112.9.4 = getelementptr i8, i8* %scevgep112.8.4, i64 1
  %arrayidx.i153.10.4 = getelementptr inbounds i8, i8* %a, i64 4
  %280 = load i8, i8* %arrayidx.i153.10.4, align 1
  %281 = load i8, i8* %scevgep112.9.4, align 1
  %call.i158.10.4 = call zeroext i8 @mult(i8 zeroext %280, i8 zeroext %281) #2
  %scevgep120.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %237, i64 0, i64 0, i64 10
  store i8 %call.i158.10.4, i8* %scevgep120.10.4, align 1
  %scevgep81 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 1, i64 0
  %scevgep8182 = bitcast i8* %scevgep81 to [22 x [11 x i8]]*
  %scevgep88 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep8889 = bitcast i8* %scevgep88 to [11 x [11 x i8]]*
  %scevgep93 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep87 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep8182, i64 0, i64 0, i64 0
  %scevgep92 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep8889, i64 0, i64 0, i64 0
  %282 = load i8, i8* %scevgep87, align 1
  %conv.i = zext i8 %282 to i32
  %283 = load i8, i8* %scevgep92, align 1
  %conv5.i = zext i8 %283 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %scevgep93, align 1
  %scevgep84 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep8182, i64 0, i64 0, i64 1
  %284 = bitcast i8* %scevgep84 to [22 x [11 x i8]]*
  %scevgep91 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep8889, i64 0, i64 0, i64 1
  %285 = bitcast i8* %scevgep91 to [11 x [11 x i8]]*
  %scevgep87.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %284, i64 0, i64 0, i64 0
  %scevgep92.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %285, i64 0, i64 0, i64 0
  %286 = load i8, i8* %scevgep87.1, align 1
  %conv.i.1 = zext i8 %286 to i32
  %287 = load i8, i8* %scevgep92.1, align 1
  %conv5.i.1 = zext i8 %287 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep94.1 = getelementptr i8, i8* %scevgep93, i64 1
  store i8 %conv6.i.1, i8* %scevgep94.1, align 1
  %scevgep84.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %284, i64 0, i64 0, i64 1
  %288 = bitcast i8* %scevgep84.1 to [22 x [11 x i8]]*
  %scevgep91.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %285, i64 0, i64 0, i64 1
  %289 = bitcast i8* %scevgep91.1 to [11 x [11 x i8]]*
  %scevgep87.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %288, i64 0, i64 0, i64 0
  %scevgep92.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %289, i64 0, i64 0, i64 0
  %290 = load i8, i8* %scevgep87.2, align 1
  %conv.i.2 = zext i8 %290 to i32
  %291 = load i8, i8* %scevgep92.2, align 1
  %conv5.i.2 = zext i8 %291 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep94.2 = getelementptr i8, i8* %scevgep93, i64 2
  store i8 %conv6.i.2, i8* %scevgep94.2, align 1
  %scevgep84.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %288, i64 0, i64 0, i64 1
  %292 = bitcast i8* %scevgep84.2 to [22 x [11 x i8]]*
  %scevgep91.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %289, i64 0, i64 0, i64 1
  %293 = bitcast i8* %scevgep91.2 to [11 x [11 x i8]]*
  %scevgep87.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %292, i64 0, i64 0, i64 0
  %scevgep92.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %293, i64 0, i64 0, i64 0
  %294 = load i8, i8* %scevgep87.3, align 1
  %conv.i.3 = zext i8 %294 to i32
  %295 = load i8, i8* %scevgep92.3, align 1
  %conv5.i.3 = zext i8 %295 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep94.3 = getelementptr i8, i8* %scevgep93, i64 3
  store i8 %conv6.i.3, i8* %scevgep94.3, align 1
  %scevgep84.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %292, i64 0, i64 0, i64 1
  %296 = bitcast i8* %scevgep84.3 to [22 x [11 x i8]]*
  %scevgep91.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %293, i64 0, i64 0, i64 1
  %297 = bitcast i8* %scevgep91.3 to [11 x [11 x i8]]*
  %scevgep87.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %296, i64 0, i64 0, i64 0
  %scevgep92.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %297, i64 0, i64 0, i64 0
  %298 = load i8, i8* %scevgep87.4, align 1
  %conv.i.4 = zext i8 %298 to i32
  %299 = load i8, i8* %scevgep92.4, align 1
  %conv5.i.4 = zext i8 %299 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep94.4 = getelementptr i8, i8* %scevgep93, i64 4
  store i8 %conv6.i.4, i8* %scevgep94.4, align 1
  %scevgep84.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %296, i64 0, i64 0, i64 1
  %300 = bitcast i8* %scevgep84.4 to [22 x [11 x i8]]*
  %scevgep91.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %297, i64 0, i64 0, i64 1
  %301 = bitcast i8* %scevgep91.4 to [11 x [11 x i8]]*
  %scevgep87.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %300, i64 0, i64 0, i64 0
  %scevgep92.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %301, i64 0, i64 0, i64 0
  %302 = load i8, i8* %scevgep87.5, align 1
  %conv.i.5 = zext i8 %302 to i32
  %303 = load i8, i8* %scevgep92.5, align 1
  %conv5.i.5 = zext i8 %303 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep94.5 = getelementptr i8, i8* %scevgep93, i64 5
  store i8 %conv6.i.5, i8* %scevgep94.5, align 1
  %scevgep84.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %300, i64 0, i64 0, i64 1
  %304 = bitcast i8* %scevgep84.5 to [22 x [11 x i8]]*
  %scevgep91.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %301, i64 0, i64 0, i64 1
  %305 = bitcast i8* %scevgep91.5 to [11 x [11 x i8]]*
  %scevgep87.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %304, i64 0, i64 0, i64 0
  %scevgep92.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %305, i64 0, i64 0, i64 0
  %306 = load i8, i8* %scevgep87.6, align 1
  %conv.i.6 = zext i8 %306 to i32
  %307 = load i8, i8* %scevgep92.6, align 1
  %conv5.i.6 = zext i8 %307 to i32
  %xor.i.6 = xor i32 %conv.i.6, %conv5.i.6
  %conv6.i.6 = trunc i32 %xor.i.6 to i8
  %scevgep94.6 = getelementptr i8, i8* %scevgep93, i64 6
  store i8 %conv6.i.6, i8* %scevgep94.6, align 1
  %scevgep84.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %304, i64 0, i64 0, i64 1
  %308 = bitcast i8* %scevgep84.6 to [22 x [11 x i8]]*
  %scevgep91.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %305, i64 0, i64 0, i64 1
  %309 = bitcast i8* %scevgep91.6 to [11 x [11 x i8]]*
  %scevgep87.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %308, i64 0, i64 0, i64 0
  %scevgep92.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %309, i64 0, i64 0, i64 0
  %310 = load i8, i8* %scevgep87.7, align 1
  %conv.i.7 = zext i8 %310 to i32
  %311 = load i8, i8* %scevgep92.7, align 1
  %conv5.i.7 = zext i8 %311 to i32
  %xor.i.7 = xor i32 %conv.i.7, %conv5.i.7
  %conv6.i.7 = trunc i32 %xor.i.7 to i8
  %scevgep94.7 = getelementptr i8, i8* %scevgep93, i64 7
  store i8 %conv6.i.7, i8* %scevgep94.7, align 1
  %scevgep84.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %308, i64 0, i64 0, i64 1
  %312 = bitcast i8* %scevgep84.7 to [22 x [11 x i8]]*
  %scevgep91.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %309, i64 0, i64 0, i64 1
  %313 = bitcast i8* %scevgep91.7 to [11 x [11 x i8]]*
  %scevgep87.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %312, i64 0, i64 0, i64 0
  %scevgep92.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %313, i64 0, i64 0, i64 0
  %314 = load i8, i8* %scevgep87.8, align 1
  %conv.i.8 = zext i8 %314 to i32
  %315 = load i8, i8* %scevgep92.8, align 1
  %conv5.i.8 = zext i8 %315 to i32
  %xor.i.8 = xor i32 %conv.i.8, %conv5.i.8
  %conv6.i.8 = trunc i32 %xor.i.8 to i8
  %scevgep94.8 = getelementptr i8, i8* %scevgep93, i64 8
  store i8 %conv6.i.8, i8* %scevgep94.8, align 1
  %scevgep84.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %312, i64 0, i64 0, i64 1
  %316 = bitcast i8* %scevgep84.8 to [22 x [11 x i8]]*
  %scevgep91.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %313, i64 0, i64 0, i64 1
  %317 = bitcast i8* %scevgep91.8 to [11 x [11 x i8]]*
  %scevgep87.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %316, i64 0, i64 0, i64 0
  %scevgep92.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %317, i64 0, i64 0, i64 0
  %318 = load i8, i8* %scevgep87.9, align 1
  %conv.i.9 = zext i8 %318 to i32
  %319 = load i8, i8* %scevgep92.9, align 1
  %conv5.i.9 = zext i8 %319 to i32
  %xor.i.9 = xor i32 %conv.i.9, %conv5.i.9
  %conv6.i.9 = trunc i32 %xor.i.9 to i8
  %scevgep94.9 = getelementptr i8, i8* %scevgep93, i64 9
  store i8 %conv6.i.9, i8* %scevgep94.9, align 1
  %scevgep84.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %316, i64 0, i64 0, i64 1
  %320 = bitcast i8* %scevgep84.9 to [22 x [11 x i8]]*
  %scevgep91.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %317, i64 0, i64 0, i64 1
  %321 = bitcast i8* %scevgep91.9 to [11 x [11 x i8]]*
  %scevgep87.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %320, i64 0, i64 0, i64 0
  %scevgep92.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %321, i64 0, i64 0, i64 0
  %322 = load i8, i8* %scevgep87.10, align 1
  %conv.i.10 = zext i8 %322 to i32
  %323 = load i8, i8* %scevgep92.10, align 1
  %conv5.i.10 = zext i8 %323 to i32
  %xor.i.10 = xor i32 %conv.i.10, %conv5.i.10
  %conv6.i.10 = trunc i32 %xor.i.10 to i8
  %scevgep94.10 = getelementptr i8, i8* %scevgep93, i64 10
  store i8 %conv6.i.10, i8* %scevgep94.10, align 1
  %scevgep25 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep2526 = bitcast i8* %scevgep25 to [22 x [11 x i8]]*
  %scevgep34 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep3435 = bitcast i8* %scevgep34 to [22 x [11 x i8]]*
  %scevgep41 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 2, i64 0
  %scevgep4142 = bitcast i8* %scevgep41 to [22 x [11 x i8]]*
  %scevgep52 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep5253 = bitcast i8* %scevgep52 to [22 x [11 x i8]]*
  %scevgep59 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 3, i64 0
  %scevgep5960 = bitcast i8* %scevgep59 to [22 x [11 x i8]]*
  %scevgep74 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep7475 = bitcast i8* %scevgep74 to [22 x [11 x i8]]*
  %scevgep33 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep2526, i64 0, i64 0, i64 0
  %scevgep40 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep3435, i64 0, i64 0, i64 0
  %324 = load i8, i8* %scevgep33, align 1
  %conv.i211 = zext i8 %324 to i32
  %325 = load i8, i8* %scevgep40, align 1
  %conv5.i216 = zext i8 %325 to i32
  %xor.i217 = xor i32 %conv.i211, %conv5.i216
  %conv6.i218 = trunc i32 %xor.i217 to i8
  %scevgep45 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 0
  store i8 %conv6.i218, i8* %scevgep45, align 1
  %scevgep30 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep2526, i64 0, i64 0, i64 1
  %326 = bitcast i8* %scevgep30 to [22 x [11 x i8]]*
  %scevgep39 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep3435, i64 0, i64 0, i64 1
  %327 = bitcast i8* %scevgep39 to [22 x [11 x i8]]*
  %scevgep33.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %326, i64 0, i64 0, i64 0
  %scevgep40.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %327, i64 0, i64 0, i64 0
  %328 = load i8, i8* %scevgep33.1, align 1
  %conv.i211.1 = zext i8 %328 to i32
  %329 = load i8, i8* %scevgep40.1, align 1
  %conv5.i216.1 = zext i8 %329 to i32
  %xor.i217.1 = xor i32 %conv.i211.1, %conv5.i216.1
  %conv6.i218.1 = trunc i32 %xor.i217.1 to i8
  %scevgep45.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 1
  store i8 %conv6.i218.1, i8* %scevgep45.1, align 1
  %scevgep30.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %326, i64 0, i64 0, i64 1
  %330 = bitcast i8* %scevgep30.1 to [22 x [11 x i8]]*
  %scevgep39.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %327, i64 0, i64 0, i64 1
  %331 = bitcast i8* %scevgep39.1 to [22 x [11 x i8]]*
  %scevgep33.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %330, i64 0, i64 0, i64 0
  %scevgep40.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %331, i64 0, i64 0, i64 0
  %332 = load i8, i8* %scevgep33.2, align 1
  %conv.i211.2 = zext i8 %332 to i32
  %333 = load i8, i8* %scevgep40.2, align 1
  %conv5.i216.2 = zext i8 %333 to i32
  %xor.i217.2 = xor i32 %conv.i211.2, %conv5.i216.2
  %conv6.i218.2 = trunc i32 %xor.i217.2 to i8
  %scevgep45.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 2
  store i8 %conv6.i218.2, i8* %scevgep45.2, align 1
  %scevgep30.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %330, i64 0, i64 0, i64 1
  %334 = bitcast i8* %scevgep30.2 to [22 x [11 x i8]]*
  %scevgep39.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %331, i64 0, i64 0, i64 1
  %335 = bitcast i8* %scevgep39.2 to [22 x [11 x i8]]*
  %scevgep33.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %334, i64 0, i64 0, i64 0
  %scevgep40.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %335, i64 0, i64 0, i64 0
  %336 = load i8, i8* %scevgep33.3, align 1
  %conv.i211.3 = zext i8 %336 to i32
  %337 = load i8, i8* %scevgep40.3, align 1
  %conv5.i216.3 = zext i8 %337 to i32
  %xor.i217.3 = xor i32 %conv.i211.3, %conv5.i216.3
  %conv6.i218.3 = trunc i32 %xor.i217.3 to i8
  %scevgep45.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 3
  store i8 %conv6.i218.3, i8* %scevgep45.3, align 1
  %scevgep30.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %334, i64 0, i64 0, i64 1
  %338 = bitcast i8* %scevgep30.3 to [22 x [11 x i8]]*
  %scevgep39.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %335, i64 0, i64 0, i64 1
  %339 = bitcast i8* %scevgep39.3 to [22 x [11 x i8]]*
  %scevgep33.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %338, i64 0, i64 0, i64 0
  %scevgep40.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %339, i64 0, i64 0, i64 0
  %340 = load i8, i8* %scevgep33.4, align 1
  %conv.i211.4 = zext i8 %340 to i32
  %341 = load i8, i8* %scevgep40.4, align 1
  %conv5.i216.4 = zext i8 %341 to i32
  %xor.i217.4 = xor i32 %conv.i211.4, %conv5.i216.4
  %conv6.i218.4 = trunc i32 %xor.i217.4 to i8
  %scevgep45.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 4
  store i8 %conv6.i218.4, i8* %scevgep45.4, align 1
  %scevgep30.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %338, i64 0, i64 0, i64 1
  %342 = bitcast i8* %scevgep30.4 to [22 x [11 x i8]]*
  %scevgep39.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %339, i64 0, i64 0, i64 1
  %343 = bitcast i8* %scevgep39.4 to [22 x [11 x i8]]*
  %scevgep33.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %342, i64 0, i64 0, i64 0
  %scevgep40.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %343, i64 0, i64 0, i64 0
  %344 = load i8, i8* %scevgep33.5, align 1
  %conv.i211.5 = zext i8 %344 to i32
  %345 = load i8, i8* %scevgep40.5, align 1
  %conv5.i216.5 = zext i8 %345 to i32
  %xor.i217.5 = xor i32 %conv.i211.5, %conv5.i216.5
  %conv6.i218.5 = trunc i32 %xor.i217.5 to i8
  %scevgep45.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 5
  store i8 %conv6.i218.5, i8* %scevgep45.5, align 1
  %scevgep30.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %342, i64 0, i64 0, i64 1
  %346 = bitcast i8* %scevgep30.5 to [22 x [11 x i8]]*
  %scevgep39.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %343, i64 0, i64 0, i64 1
  %347 = bitcast i8* %scevgep39.5 to [22 x [11 x i8]]*
  %scevgep33.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %346, i64 0, i64 0, i64 0
  %scevgep40.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %347, i64 0, i64 0, i64 0
  %348 = load i8, i8* %scevgep33.6, align 1
  %conv.i211.6 = zext i8 %348 to i32
  %349 = load i8, i8* %scevgep40.6, align 1
  %conv5.i216.6 = zext i8 %349 to i32
  %xor.i217.6 = xor i32 %conv.i211.6, %conv5.i216.6
  %conv6.i218.6 = trunc i32 %xor.i217.6 to i8
  %scevgep45.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 6
  store i8 %conv6.i218.6, i8* %scevgep45.6, align 1
  %scevgep30.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %346, i64 0, i64 0, i64 1
  %350 = bitcast i8* %scevgep30.6 to [22 x [11 x i8]]*
  %scevgep39.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %347, i64 0, i64 0, i64 1
  %351 = bitcast i8* %scevgep39.6 to [22 x [11 x i8]]*
  %scevgep33.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %350, i64 0, i64 0, i64 0
  %scevgep40.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %351, i64 0, i64 0, i64 0
  %352 = load i8, i8* %scevgep33.7, align 1
  %conv.i211.7 = zext i8 %352 to i32
  %353 = load i8, i8* %scevgep40.7, align 1
  %conv5.i216.7 = zext i8 %353 to i32
  %xor.i217.7 = xor i32 %conv.i211.7, %conv5.i216.7
  %conv6.i218.7 = trunc i32 %xor.i217.7 to i8
  %scevgep45.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 7
  store i8 %conv6.i218.7, i8* %scevgep45.7, align 1
  %scevgep30.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %350, i64 0, i64 0, i64 1
  %354 = bitcast i8* %scevgep30.7 to [22 x [11 x i8]]*
  %scevgep39.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %351, i64 0, i64 0, i64 1
  %355 = bitcast i8* %scevgep39.7 to [22 x [11 x i8]]*
  %scevgep33.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %354, i64 0, i64 0, i64 0
  %scevgep40.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %355, i64 0, i64 0, i64 0
  %356 = load i8, i8* %scevgep33.8, align 1
  %conv.i211.8 = zext i8 %356 to i32
  %357 = load i8, i8* %scevgep40.8, align 1
  %conv5.i216.8 = zext i8 %357 to i32
  %xor.i217.8 = xor i32 %conv.i211.8, %conv5.i216.8
  %conv6.i218.8 = trunc i32 %xor.i217.8 to i8
  %scevgep45.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 8
  store i8 %conv6.i218.8, i8* %scevgep45.8, align 1
  %scevgep30.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %354, i64 0, i64 0, i64 1
  %358 = bitcast i8* %scevgep30.8 to [22 x [11 x i8]]*
  %scevgep39.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %355, i64 0, i64 0, i64 1
  %359 = bitcast i8* %scevgep39.8 to [22 x [11 x i8]]*
  %scevgep33.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %358, i64 0, i64 0, i64 0
  %scevgep40.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %359, i64 0, i64 0, i64 0
  %360 = load i8, i8* %scevgep33.9, align 1
  %conv.i211.9 = zext i8 %360 to i32
  %361 = load i8, i8* %scevgep40.9, align 1
  %conv5.i216.9 = zext i8 %361 to i32
  %xor.i217.9 = xor i32 %conv.i211.9, %conv5.i216.9
  %conv6.i218.9 = trunc i32 %xor.i217.9 to i8
  %scevgep45.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 9
  store i8 %conv6.i218.9, i8* %scevgep45.9, align 1
  %scevgep30.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %358, i64 0, i64 0, i64 1
  %362 = bitcast i8* %scevgep30.9 to [22 x [11 x i8]]*
  %scevgep39.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %359, i64 0, i64 0, i64 1
  %363 = bitcast i8* %scevgep39.9 to [22 x [11 x i8]]*
  %scevgep33.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %362, i64 0, i64 0, i64 0
  %scevgep40.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %363, i64 0, i64 0, i64 0
  %364 = load i8, i8* %scevgep33.10, align 1
  %conv.i211.10 = zext i8 %364 to i32
  %365 = load i8, i8* %scevgep40.10, align 1
  %conv5.i216.10 = zext i8 %365 to i32
  %xor.i217.10 = xor i32 %conv.i211.10, %conv5.i216.10
  %conv6.i218.10 = trunc i32 %xor.i217.10 to i8
  %scevgep45.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 10
  store i8 %conv6.i218.10, i8* %scevgep45.10, align 1
  %scevgep51 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 0
  %scevgep58 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5253, i64 0, i64 0, i64 0
  %366 = load i8, i8* %scevgep51, align 1
  %conv.i244 = zext i8 %366 to i32
  %367 = load i8, i8* %scevgep58, align 1
  %conv5.i249 = zext i8 %367 to i32
  %xor.i250 = xor i32 %conv.i244, %conv5.i249
  %conv6.i251 = trunc i32 %xor.i250 to i8
  %scevgep63 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 0
  store i8 %conv6.i251, i8* %scevgep63, align 1
  %scevgep48 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 0, i64 1
  %368 = bitcast i8* %scevgep48 to [22 x [11 x i8]]*
  %scevgep57 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5253, i64 0, i64 0, i64 1
  %369 = bitcast i8* %scevgep57 to [22 x [11 x i8]]*
  %scevgep51.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %368, i64 0, i64 0, i64 0
  %scevgep58.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %369, i64 0, i64 0, i64 0
  %370 = load i8, i8* %scevgep51.1, align 1
  %conv.i244.1 = zext i8 %370 to i32
  %371 = load i8, i8* %scevgep58.1, align 1
  %conv5.i249.1 = zext i8 %371 to i32
  %xor.i250.1 = xor i32 %conv.i244.1, %conv5.i249.1
  %conv6.i251.1 = trunc i32 %xor.i250.1 to i8
  %scevgep63.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 1
  store i8 %conv6.i251.1, i8* %scevgep63.1, align 1
  %scevgep48.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %368, i64 0, i64 0, i64 1
  %372 = bitcast i8* %scevgep48.1 to [22 x [11 x i8]]*
  %scevgep57.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %369, i64 0, i64 0, i64 1
  %373 = bitcast i8* %scevgep57.1 to [22 x [11 x i8]]*
  %scevgep51.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %372, i64 0, i64 0, i64 0
  %scevgep58.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %373, i64 0, i64 0, i64 0
  %374 = load i8, i8* %scevgep51.2, align 1
  %conv.i244.2 = zext i8 %374 to i32
  %375 = load i8, i8* %scevgep58.2, align 1
  %conv5.i249.2 = zext i8 %375 to i32
  %xor.i250.2 = xor i32 %conv.i244.2, %conv5.i249.2
  %conv6.i251.2 = trunc i32 %xor.i250.2 to i8
  %scevgep63.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 2
  store i8 %conv6.i251.2, i8* %scevgep63.2, align 1
  %scevgep48.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %372, i64 0, i64 0, i64 1
  %376 = bitcast i8* %scevgep48.2 to [22 x [11 x i8]]*
  %scevgep57.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %373, i64 0, i64 0, i64 1
  %377 = bitcast i8* %scevgep57.2 to [22 x [11 x i8]]*
  %scevgep51.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %376, i64 0, i64 0, i64 0
  %scevgep58.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %377, i64 0, i64 0, i64 0
  %378 = load i8, i8* %scevgep51.3, align 1
  %conv.i244.3 = zext i8 %378 to i32
  %379 = load i8, i8* %scevgep58.3, align 1
  %conv5.i249.3 = zext i8 %379 to i32
  %xor.i250.3 = xor i32 %conv.i244.3, %conv5.i249.3
  %conv6.i251.3 = trunc i32 %xor.i250.3 to i8
  %scevgep63.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 3
  store i8 %conv6.i251.3, i8* %scevgep63.3, align 1
  %scevgep48.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %376, i64 0, i64 0, i64 1
  %380 = bitcast i8* %scevgep48.3 to [22 x [11 x i8]]*
  %scevgep57.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %377, i64 0, i64 0, i64 1
  %381 = bitcast i8* %scevgep57.3 to [22 x [11 x i8]]*
  %scevgep51.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %380, i64 0, i64 0, i64 0
  %scevgep58.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %381, i64 0, i64 0, i64 0
  %382 = load i8, i8* %scevgep51.4, align 1
  %conv.i244.4 = zext i8 %382 to i32
  %383 = load i8, i8* %scevgep58.4, align 1
  %conv5.i249.4 = zext i8 %383 to i32
  %xor.i250.4 = xor i32 %conv.i244.4, %conv5.i249.4
  %conv6.i251.4 = trunc i32 %xor.i250.4 to i8
  %scevgep63.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 4
  store i8 %conv6.i251.4, i8* %scevgep63.4, align 1
  %scevgep48.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %380, i64 0, i64 0, i64 1
  %384 = bitcast i8* %scevgep48.4 to [22 x [11 x i8]]*
  %scevgep57.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %381, i64 0, i64 0, i64 1
  %385 = bitcast i8* %scevgep57.4 to [22 x [11 x i8]]*
  %scevgep51.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %384, i64 0, i64 0, i64 0
  %scevgep58.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %385, i64 0, i64 0, i64 0
  %386 = load i8, i8* %scevgep51.5, align 1
  %conv.i244.5 = zext i8 %386 to i32
  %387 = load i8, i8* %scevgep58.5, align 1
  %conv5.i249.5 = zext i8 %387 to i32
  %xor.i250.5 = xor i32 %conv.i244.5, %conv5.i249.5
  %conv6.i251.5 = trunc i32 %xor.i250.5 to i8
  %scevgep63.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 5
  store i8 %conv6.i251.5, i8* %scevgep63.5, align 1
  %scevgep48.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %384, i64 0, i64 0, i64 1
  %388 = bitcast i8* %scevgep48.5 to [22 x [11 x i8]]*
  %scevgep57.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %385, i64 0, i64 0, i64 1
  %389 = bitcast i8* %scevgep57.5 to [22 x [11 x i8]]*
  %scevgep51.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %388, i64 0, i64 0, i64 0
  %scevgep58.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %389, i64 0, i64 0, i64 0
  %390 = load i8, i8* %scevgep51.6, align 1
  %conv.i244.6 = zext i8 %390 to i32
  %391 = load i8, i8* %scevgep58.6, align 1
  %conv5.i249.6 = zext i8 %391 to i32
  %xor.i250.6 = xor i32 %conv.i244.6, %conv5.i249.6
  %conv6.i251.6 = trunc i32 %xor.i250.6 to i8
  %scevgep63.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 6
  store i8 %conv6.i251.6, i8* %scevgep63.6, align 1
  %scevgep48.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %388, i64 0, i64 0, i64 1
  %392 = bitcast i8* %scevgep48.6 to [22 x [11 x i8]]*
  %scevgep57.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %389, i64 0, i64 0, i64 1
  %393 = bitcast i8* %scevgep57.6 to [22 x [11 x i8]]*
  %scevgep51.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %392, i64 0, i64 0, i64 0
  %scevgep58.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %393, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep51.7, align 1
  %conv.i244.7 = zext i8 %394 to i32
  %395 = load i8, i8* %scevgep58.7, align 1
  %conv5.i249.7 = zext i8 %395 to i32
  %xor.i250.7 = xor i32 %conv.i244.7, %conv5.i249.7
  %conv6.i251.7 = trunc i32 %xor.i250.7 to i8
  %scevgep63.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 7
  store i8 %conv6.i251.7, i8* %scevgep63.7, align 1
  %scevgep48.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %392, i64 0, i64 0, i64 1
  %396 = bitcast i8* %scevgep48.7 to [22 x [11 x i8]]*
  %scevgep57.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %393, i64 0, i64 0, i64 1
  %397 = bitcast i8* %scevgep57.7 to [22 x [11 x i8]]*
  %scevgep51.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %396, i64 0, i64 0, i64 0
  %scevgep58.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %397, i64 0, i64 0, i64 0
  %398 = load i8, i8* %scevgep51.8, align 1
  %conv.i244.8 = zext i8 %398 to i32
  %399 = load i8, i8* %scevgep58.8, align 1
  %conv5.i249.8 = zext i8 %399 to i32
  %xor.i250.8 = xor i32 %conv.i244.8, %conv5.i249.8
  %conv6.i251.8 = trunc i32 %xor.i250.8 to i8
  %scevgep63.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 8
  store i8 %conv6.i251.8, i8* %scevgep63.8, align 1
  %scevgep48.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %396, i64 0, i64 0, i64 1
  %400 = bitcast i8* %scevgep48.8 to [22 x [11 x i8]]*
  %scevgep57.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %397, i64 0, i64 0, i64 1
  %401 = bitcast i8* %scevgep57.8 to [22 x [11 x i8]]*
  %scevgep51.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %400, i64 0, i64 0, i64 0
  %scevgep58.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %401, i64 0, i64 0, i64 0
  %402 = load i8, i8* %scevgep51.9, align 1
  %conv.i244.9 = zext i8 %402 to i32
  %403 = load i8, i8* %scevgep58.9, align 1
  %conv5.i249.9 = zext i8 %403 to i32
  %xor.i250.9 = xor i32 %conv.i244.9, %conv5.i249.9
  %conv6.i251.9 = trunc i32 %xor.i250.9 to i8
  %scevgep63.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 9
  store i8 %conv6.i251.9, i8* %scevgep63.9, align 1
  %scevgep48.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %400, i64 0, i64 0, i64 1
  %404 = bitcast i8* %scevgep48.9 to [22 x [11 x i8]]*
  %scevgep57.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %401, i64 0, i64 0, i64 1
  %405 = bitcast i8* %scevgep57.9 to [22 x [11 x i8]]*
  %scevgep51.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %404, i64 0, i64 0, i64 0
  %scevgep58.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %405, i64 0, i64 0, i64 0
  %406 = load i8, i8* %scevgep51.10, align 1
  %conv.i244.10 = zext i8 %406 to i32
  %407 = load i8, i8* %scevgep58.10, align 1
  %conv5.i249.10 = zext i8 %407 to i32
  %xor.i250.10 = xor i32 %conv.i244.10, %conv5.i249.10
  %conv6.i251.10 = trunc i32 %xor.i250.10 to i8
  %scevgep63.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 10
  store i8 %conv6.i251.10, i8* %scevgep63.10, align 1
  %arrayidx84 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1
  %arraydecay85 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx84, i64 0, i64 0
  %scevgep69 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 0
  %408 = load i8, i8* %scevgep69, align 1
  %conv.i269 = zext i8 %408 to i32
  %arrayidx4.i273 = getelementptr inbounds i8, i8* %arraydecay85, i64 1
  %409 = load i8, i8* %arrayidx4.i273, align 1
  %conv5.i274 = zext i8 %409 to i32
  %xor.i275 = xor i32 %conv.i269, %conv5.i274
  %conv6.i276 = trunc i32 %xor.i275 to i8
  %scevgep78 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 0
  store i8 %conv6.i276, i8* %scevgep78, align 1
  %scevgep66 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 0, i64 1
  %410 = bitcast i8* %scevgep66 to [22 x [11 x i8]]*
  %scevgep69.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %410, i64 0, i64 0, i64 0
  %411 = load i8, i8* %scevgep69.1, align 1
  %conv.i269.1 = zext i8 %411 to i32
  %arrayidx4.i273.1 = getelementptr inbounds i8, i8* %arraydecay85, i64 2
  %412 = load i8, i8* %arrayidx4.i273.1, align 1
  %conv5.i274.1 = zext i8 %412 to i32
  %xor.i275.1 = xor i32 %conv.i269.1, %conv5.i274.1
  %conv6.i276.1 = trunc i32 %xor.i275.1 to i8
  %scevgep78.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 1
  store i8 %conv6.i276.1, i8* %scevgep78.1, align 1
  %scevgep66.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %410, i64 0, i64 0, i64 1
  %413 = bitcast i8* %scevgep66.1 to [22 x [11 x i8]]*
  %scevgep69.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %413, i64 0, i64 0, i64 0
  %414 = load i8, i8* %scevgep69.2, align 1
  %conv.i269.2 = zext i8 %414 to i32
  %arrayidx4.i273.2 = getelementptr inbounds i8, i8* %arraydecay85, i64 3
  %415 = load i8, i8* %arrayidx4.i273.2, align 1
  %conv5.i274.2 = zext i8 %415 to i32
  %xor.i275.2 = xor i32 %conv.i269.2, %conv5.i274.2
  %conv6.i276.2 = trunc i32 %xor.i275.2 to i8
  %scevgep78.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 2
  store i8 %conv6.i276.2, i8* %scevgep78.2, align 1
  %scevgep66.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %413, i64 0, i64 0, i64 1
  %416 = bitcast i8* %scevgep66.2 to [22 x [11 x i8]]*
  %scevgep69.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %416, i64 0, i64 0, i64 0
  %417 = load i8, i8* %scevgep69.3, align 1
  %conv.i269.3 = zext i8 %417 to i32
  %arrayidx4.i273.3 = getelementptr inbounds i8, i8* %arraydecay85, i64 4
  %418 = load i8, i8* %arrayidx4.i273.3, align 1
  %conv5.i274.3 = zext i8 %418 to i32
  %xor.i275.3 = xor i32 %conv.i269.3, %conv5.i274.3
  %conv6.i276.3 = trunc i32 %xor.i275.3 to i8
  %scevgep78.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 3
  store i8 %conv6.i276.3, i8* %scevgep78.3, align 1
  %scevgep66.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %416, i64 0, i64 0, i64 1
  %419 = bitcast i8* %scevgep66.3 to [22 x [11 x i8]]*
  %scevgep69.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %419, i64 0, i64 0, i64 0
  %420 = load i8, i8* %scevgep69.4, align 1
  %conv.i269.4 = zext i8 %420 to i32
  %arrayidx4.i273.4 = getelementptr inbounds i8, i8* %arraydecay85, i64 5
  %421 = load i8, i8* %arrayidx4.i273.4, align 1
  %conv5.i274.4 = zext i8 %421 to i32
  %xor.i275.4 = xor i32 %conv.i269.4, %conv5.i274.4
  %conv6.i276.4 = trunc i32 %xor.i275.4 to i8
  %scevgep78.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 4
  store i8 %conv6.i276.4, i8* %scevgep78.4, align 1
  %scevgep66.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %419, i64 0, i64 0, i64 1
  %422 = bitcast i8* %scevgep66.4 to [22 x [11 x i8]]*
  %scevgep69.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %422, i64 0, i64 0, i64 0
  %423 = load i8, i8* %scevgep69.5, align 1
  %conv.i269.5 = zext i8 %423 to i32
  %arrayidx4.i273.5 = getelementptr inbounds i8, i8* %arraydecay85, i64 6
  %424 = load i8, i8* %arrayidx4.i273.5, align 1
  %conv5.i274.5 = zext i8 %424 to i32
  %xor.i275.5 = xor i32 %conv.i269.5, %conv5.i274.5
  %conv6.i276.5 = trunc i32 %xor.i275.5 to i8
  %scevgep78.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 5
  store i8 %conv6.i276.5, i8* %scevgep78.5, align 1
  %scevgep66.5 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %422, i64 0, i64 0, i64 1
  %425 = bitcast i8* %scevgep66.5 to [22 x [11 x i8]]*
  %scevgep69.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %425, i64 0, i64 0, i64 0
  %426 = load i8, i8* %scevgep69.6, align 1
  %conv.i269.6 = zext i8 %426 to i32
  %arrayidx4.i273.6 = getelementptr inbounds i8, i8* %arraydecay85, i64 7
  %427 = load i8, i8* %arrayidx4.i273.6, align 1
  %conv5.i274.6 = zext i8 %427 to i32
  %xor.i275.6 = xor i32 %conv.i269.6, %conv5.i274.6
  %conv6.i276.6 = trunc i32 %xor.i275.6 to i8
  %scevgep78.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 6
  store i8 %conv6.i276.6, i8* %scevgep78.6, align 1
  %scevgep66.6 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %425, i64 0, i64 0, i64 1
  %428 = bitcast i8* %scevgep66.6 to [22 x [11 x i8]]*
  %scevgep69.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %428, i64 0, i64 0, i64 0
  %429 = load i8, i8* %scevgep69.7, align 1
  %conv.i269.7 = zext i8 %429 to i32
  %arrayidx4.i273.7 = getelementptr inbounds i8, i8* %arraydecay85, i64 8
  %430 = load i8, i8* %arrayidx4.i273.7, align 1
  %conv5.i274.7 = zext i8 %430 to i32
  %xor.i275.7 = xor i32 %conv.i269.7, %conv5.i274.7
  %conv6.i276.7 = trunc i32 %xor.i275.7 to i8
  %scevgep78.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 7
  store i8 %conv6.i276.7, i8* %scevgep78.7, align 1
  %scevgep66.7 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %428, i64 0, i64 0, i64 1
  %431 = bitcast i8* %scevgep66.7 to [22 x [11 x i8]]*
  %scevgep69.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %431, i64 0, i64 0, i64 0
  %432 = load i8, i8* %scevgep69.8, align 1
  %conv.i269.8 = zext i8 %432 to i32
  %arrayidx4.i273.8 = getelementptr inbounds i8, i8* %arraydecay85, i64 9
  %433 = load i8, i8* %arrayidx4.i273.8, align 1
  %conv5.i274.8 = zext i8 %433 to i32
  %xor.i275.8 = xor i32 %conv.i269.8, %conv5.i274.8
  %conv6.i276.8 = trunc i32 %xor.i275.8 to i8
  %scevgep78.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 8
  store i8 %conv6.i276.8, i8* %scevgep78.8, align 1
  %scevgep66.8 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %431, i64 0, i64 0, i64 1
  %434 = bitcast i8* %scevgep66.8 to [22 x [11 x i8]]*
  %scevgep69.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %434, i64 0, i64 0, i64 0
  %435 = load i8, i8* %scevgep69.9, align 1
  %conv.i269.9 = zext i8 %435 to i32
  %arrayidx4.i273.9 = getelementptr inbounds i8, i8* %arraydecay85, i64 10
  %436 = load i8, i8* %arrayidx4.i273.9, align 1
  %conv5.i274.9 = zext i8 %436 to i32
  %xor.i275.9 = xor i32 %conv.i269.9, %conv5.i274.9
  %conv6.i276.9 = trunc i32 %xor.i275.9 to i8
  %scevgep78.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 9
  store i8 %conv6.i276.9, i8* %scevgep78.9, align 1
  %scevgep66.9 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %434, i64 0, i64 0, i64 1
  %437 = bitcast i8* %scevgep66.9 to [22 x [11 x i8]]*
  %scevgep69.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %437, i64 0, i64 0, i64 0
  %438 = load i8, i8* %scevgep69.10, align 1
  %conv.i269.10 = zext i8 %438 to i32
  %439 = load i8, i8* %arraydecay85, align 1
  %conv5.i274.10 = zext i8 %439 to i32
  %xor.i275.10 = xor i32 %conv.i269.10, %conv5.i274.10
  %conv6.i276.10 = trunc i32 %xor.i275.10 to i8
  %scevgep78.10 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 0, i64 10
  store i8 %conv6.i276.10, i8* %scevgep78.10, align 1
  %scevgep28 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep2526, i64 0, i64 3, i64 0
  %440 = bitcast i8* %scevgep28 to [22 x [11 x i8]]*
  %scevgep37 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep3435, i64 0, i64 2, i64 0
  %441 = bitcast i8* %scevgep37 to [22 x [11 x i8]]*
  %scevgep44 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep4142, i64 0, i64 3, i64 0
  %442 = bitcast i8* %scevgep44 to [22 x [11 x i8]]*
  %scevgep55 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5253, i64 0, i64 2, i64 0
  %443 = bitcast i8* %scevgep55 to [22 x [11 x i8]]*
  %scevgep62 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep5960, i64 0, i64 3, i64 0
  %444 = bitcast i8* %scevgep62 to [22 x [11 x i8]]*
  %scevgep77 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %scevgep7475, i64 0, i64 3, i64 0
  %445 = bitcast i8* %scevgep77 to [22 x [11 x i8]]*
  %scevgep33.1147 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %440, i64 0, i64 0, i64 0
  %scevgep40.1148 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %441, i64 0, i64 0, i64 0
  %446 = load i8, i8* %scevgep33.1147, align 1
  %conv.i211.1149 = zext i8 %446 to i32
  %447 = load i8, i8* %scevgep40.1148, align 1
  %conv5.i216.1150 = zext i8 %447 to i32
  %xor.i217.1151 = xor i32 %conv.i211.1149, %conv5.i216.1150
  %conv6.i218.1152 = trunc i32 %xor.i217.1151 to i8
  %scevgep45.1153 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 0
  store i8 %conv6.i218.1152, i8* %scevgep45.1153, align 1
  %scevgep30.1154 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %440, i64 0, i64 0, i64 1
  %448 = bitcast i8* %scevgep30.1154 to [22 x [11 x i8]]*
  %scevgep39.1155 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %441, i64 0, i64 0, i64 1
  %449 = bitcast i8* %scevgep39.1155 to [22 x [11 x i8]]*
  %scevgep33.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %448, i64 0, i64 0, i64 0
  %scevgep40.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %449, i64 0, i64 0, i64 0
  %450 = load i8, i8* %scevgep33.1.1, align 1
  %conv.i211.1.1 = zext i8 %450 to i32
  %451 = load i8, i8* %scevgep40.1.1, align 1
  %conv5.i216.1.1 = zext i8 %451 to i32
  %xor.i217.1.1 = xor i32 %conv.i211.1.1, %conv5.i216.1.1
  %conv6.i218.1.1 = trunc i32 %xor.i217.1.1 to i8
  %scevgep45.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 1
  store i8 %conv6.i218.1.1, i8* %scevgep45.1.1, align 1
  %scevgep30.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %448, i64 0, i64 0, i64 1
  %452 = bitcast i8* %scevgep30.1.1 to [22 x [11 x i8]]*
  %scevgep39.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %449, i64 0, i64 0, i64 1
  %453 = bitcast i8* %scevgep39.1.1 to [22 x [11 x i8]]*
  %scevgep33.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %452, i64 0, i64 0, i64 0
  %scevgep40.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %453, i64 0, i64 0, i64 0
  %454 = load i8, i8* %scevgep33.2.1, align 1
  %conv.i211.2.1 = zext i8 %454 to i32
  %455 = load i8, i8* %scevgep40.2.1, align 1
  %conv5.i216.2.1 = zext i8 %455 to i32
  %xor.i217.2.1 = xor i32 %conv.i211.2.1, %conv5.i216.2.1
  %conv6.i218.2.1 = trunc i32 %xor.i217.2.1 to i8
  %scevgep45.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 2
  store i8 %conv6.i218.2.1, i8* %scevgep45.2.1, align 1
  %scevgep30.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %452, i64 0, i64 0, i64 1
  %456 = bitcast i8* %scevgep30.2.1 to [22 x [11 x i8]]*
  %scevgep39.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %453, i64 0, i64 0, i64 1
  %457 = bitcast i8* %scevgep39.2.1 to [22 x [11 x i8]]*
  %scevgep33.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %456, i64 0, i64 0, i64 0
  %scevgep40.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %457, i64 0, i64 0, i64 0
  %458 = load i8, i8* %scevgep33.3.1, align 1
  %conv.i211.3.1 = zext i8 %458 to i32
  %459 = load i8, i8* %scevgep40.3.1, align 1
  %conv5.i216.3.1 = zext i8 %459 to i32
  %xor.i217.3.1 = xor i32 %conv.i211.3.1, %conv5.i216.3.1
  %conv6.i218.3.1 = trunc i32 %xor.i217.3.1 to i8
  %scevgep45.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 3
  store i8 %conv6.i218.3.1, i8* %scevgep45.3.1, align 1
  %scevgep30.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %456, i64 0, i64 0, i64 1
  %460 = bitcast i8* %scevgep30.3.1 to [22 x [11 x i8]]*
  %scevgep39.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %457, i64 0, i64 0, i64 1
  %461 = bitcast i8* %scevgep39.3.1 to [22 x [11 x i8]]*
  %scevgep33.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %460, i64 0, i64 0, i64 0
  %scevgep40.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %461, i64 0, i64 0, i64 0
  %462 = load i8, i8* %scevgep33.4.1, align 1
  %conv.i211.4.1 = zext i8 %462 to i32
  %463 = load i8, i8* %scevgep40.4.1, align 1
  %conv5.i216.4.1 = zext i8 %463 to i32
  %xor.i217.4.1 = xor i32 %conv.i211.4.1, %conv5.i216.4.1
  %conv6.i218.4.1 = trunc i32 %xor.i217.4.1 to i8
  %scevgep45.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 4
  store i8 %conv6.i218.4.1, i8* %scevgep45.4.1, align 1
  %scevgep30.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %460, i64 0, i64 0, i64 1
  %464 = bitcast i8* %scevgep30.4.1 to [22 x [11 x i8]]*
  %scevgep39.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %461, i64 0, i64 0, i64 1
  %465 = bitcast i8* %scevgep39.4.1 to [22 x [11 x i8]]*
  %scevgep33.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %464, i64 0, i64 0, i64 0
  %scevgep40.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %465, i64 0, i64 0, i64 0
  %466 = load i8, i8* %scevgep33.5.1, align 1
  %conv.i211.5.1 = zext i8 %466 to i32
  %467 = load i8, i8* %scevgep40.5.1, align 1
  %conv5.i216.5.1 = zext i8 %467 to i32
  %xor.i217.5.1 = xor i32 %conv.i211.5.1, %conv5.i216.5.1
  %conv6.i218.5.1 = trunc i32 %xor.i217.5.1 to i8
  %scevgep45.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 5
  store i8 %conv6.i218.5.1, i8* %scevgep45.5.1, align 1
  %scevgep30.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %464, i64 0, i64 0, i64 1
  %468 = bitcast i8* %scevgep30.5.1 to [22 x [11 x i8]]*
  %scevgep39.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %465, i64 0, i64 0, i64 1
  %469 = bitcast i8* %scevgep39.5.1 to [22 x [11 x i8]]*
  %scevgep33.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %468, i64 0, i64 0, i64 0
  %scevgep40.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %469, i64 0, i64 0, i64 0
  %470 = load i8, i8* %scevgep33.6.1, align 1
  %conv.i211.6.1 = zext i8 %470 to i32
  %471 = load i8, i8* %scevgep40.6.1, align 1
  %conv5.i216.6.1 = zext i8 %471 to i32
  %xor.i217.6.1 = xor i32 %conv.i211.6.1, %conv5.i216.6.1
  %conv6.i218.6.1 = trunc i32 %xor.i217.6.1 to i8
  %scevgep45.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 6
  store i8 %conv6.i218.6.1, i8* %scevgep45.6.1, align 1
  %scevgep30.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %468, i64 0, i64 0, i64 1
  %472 = bitcast i8* %scevgep30.6.1 to [22 x [11 x i8]]*
  %scevgep39.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %469, i64 0, i64 0, i64 1
  %473 = bitcast i8* %scevgep39.6.1 to [22 x [11 x i8]]*
  %scevgep33.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %472, i64 0, i64 0, i64 0
  %scevgep40.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %473, i64 0, i64 0, i64 0
  %474 = load i8, i8* %scevgep33.7.1, align 1
  %conv.i211.7.1 = zext i8 %474 to i32
  %475 = load i8, i8* %scevgep40.7.1, align 1
  %conv5.i216.7.1 = zext i8 %475 to i32
  %xor.i217.7.1 = xor i32 %conv.i211.7.1, %conv5.i216.7.1
  %conv6.i218.7.1 = trunc i32 %xor.i217.7.1 to i8
  %scevgep45.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 7
  store i8 %conv6.i218.7.1, i8* %scevgep45.7.1, align 1
  %scevgep30.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %472, i64 0, i64 0, i64 1
  %476 = bitcast i8* %scevgep30.7.1 to [22 x [11 x i8]]*
  %scevgep39.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %473, i64 0, i64 0, i64 1
  %477 = bitcast i8* %scevgep39.7.1 to [22 x [11 x i8]]*
  %scevgep33.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %476, i64 0, i64 0, i64 0
  %scevgep40.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %477, i64 0, i64 0, i64 0
  %478 = load i8, i8* %scevgep33.8.1, align 1
  %conv.i211.8.1 = zext i8 %478 to i32
  %479 = load i8, i8* %scevgep40.8.1, align 1
  %conv5.i216.8.1 = zext i8 %479 to i32
  %xor.i217.8.1 = xor i32 %conv.i211.8.1, %conv5.i216.8.1
  %conv6.i218.8.1 = trunc i32 %xor.i217.8.1 to i8
  %scevgep45.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 8
  store i8 %conv6.i218.8.1, i8* %scevgep45.8.1, align 1
  %scevgep30.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %476, i64 0, i64 0, i64 1
  %480 = bitcast i8* %scevgep30.8.1 to [22 x [11 x i8]]*
  %scevgep39.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %477, i64 0, i64 0, i64 1
  %481 = bitcast i8* %scevgep39.8.1 to [22 x [11 x i8]]*
  %scevgep33.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %480, i64 0, i64 0, i64 0
  %scevgep40.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %481, i64 0, i64 0, i64 0
  %482 = load i8, i8* %scevgep33.9.1, align 1
  %conv.i211.9.1 = zext i8 %482 to i32
  %483 = load i8, i8* %scevgep40.9.1, align 1
  %conv5.i216.9.1 = zext i8 %483 to i32
  %xor.i217.9.1 = xor i32 %conv.i211.9.1, %conv5.i216.9.1
  %conv6.i218.9.1 = trunc i32 %xor.i217.9.1 to i8
  %scevgep45.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 9
  store i8 %conv6.i218.9.1, i8* %scevgep45.9.1, align 1
  %scevgep30.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %480, i64 0, i64 0, i64 1
  %484 = bitcast i8* %scevgep30.9.1 to [22 x [11 x i8]]*
  %scevgep39.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %481, i64 0, i64 0, i64 1
  %485 = bitcast i8* %scevgep39.9.1 to [22 x [11 x i8]]*
  %scevgep33.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %484, i64 0, i64 0, i64 0
  %scevgep40.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %485, i64 0, i64 0, i64 0
  %486 = load i8, i8* %scevgep33.10.1, align 1
  %conv.i211.10.1 = zext i8 %486 to i32
  %487 = load i8, i8* %scevgep40.10.1, align 1
  %conv5.i216.10.1 = zext i8 %487 to i32
  %xor.i217.10.1 = xor i32 %conv.i211.10.1, %conv5.i216.10.1
  %conv6.i218.10.1 = trunc i32 %xor.i217.10.1 to i8
  %scevgep45.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 10
  store i8 %conv6.i218.10.1, i8* %scevgep45.10.1, align 1
  %scevgep51.1156 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 0
  %scevgep58.1157 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %443, i64 0, i64 0, i64 0
  %488 = load i8, i8* %scevgep51.1156, align 1
  %conv.i244.1158 = zext i8 %488 to i32
  %489 = load i8, i8* %scevgep58.1157, align 1
  %conv5.i249.1159 = zext i8 %489 to i32
  %xor.i250.1160 = xor i32 %conv.i244.1158, %conv5.i249.1159
  %conv6.i251.1161 = trunc i32 %xor.i250.1160 to i8
  %scevgep63.1162 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 0
  store i8 %conv6.i251.1161, i8* %scevgep63.1162, align 1
  %scevgep48.1163 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 0, i64 1
  %490 = bitcast i8* %scevgep48.1163 to [22 x [11 x i8]]*
  %scevgep57.1164 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %443, i64 0, i64 0, i64 1
  %491 = bitcast i8* %scevgep57.1164 to [22 x [11 x i8]]*
  %scevgep51.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %490, i64 0, i64 0, i64 0
  %scevgep58.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %491, i64 0, i64 0, i64 0
  %492 = load i8, i8* %scevgep51.1.1, align 1
  %conv.i244.1.1 = zext i8 %492 to i32
  %493 = load i8, i8* %scevgep58.1.1, align 1
  %conv5.i249.1.1 = zext i8 %493 to i32
  %xor.i250.1.1 = xor i32 %conv.i244.1.1, %conv5.i249.1.1
  %conv6.i251.1.1 = trunc i32 %xor.i250.1.1 to i8
  %scevgep63.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 1
  store i8 %conv6.i251.1.1, i8* %scevgep63.1.1, align 1
  %scevgep48.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %490, i64 0, i64 0, i64 1
  %494 = bitcast i8* %scevgep48.1.1 to [22 x [11 x i8]]*
  %scevgep57.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %491, i64 0, i64 0, i64 1
  %495 = bitcast i8* %scevgep57.1.1 to [22 x [11 x i8]]*
  %scevgep51.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %494, i64 0, i64 0, i64 0
  %scevgep58.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %495, i64 0, i64 0, i64 0
  %496 = load i8, i8* %scevgep51.2.1, align 1
  %conv.i244.2.1 = zext i8 %496 to i32
  %497 = load i8, i8* %scevgep58.2.1, align 1
  %conv5.i249.2.1 = zext i8 %497 to i32
  %xor.i250.2.1 = xor i32 %conv.i244.2.1, %conv5.i249.2.1
  %conv6.i251.2.1 = trunc i32 %xor.i250.2.1 to i8
  %scevgep63.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 2
  store i8 %conv6.i251.2.1, i8* %scevgep63.2.1, align 1
  %scevgep48.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %494, i64 0, i64 0, i64 1
  %498 = bitcast i8* %scevgep48.2.1 to [22 x [11 x i8]]*
  %scevgep57.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %495, i64 0, i64 0, i64 1
  %499 = bitcast i8* %scevgep57.2.1 to [22 x [11 x i8]]*
  %scevgep51.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %498, i64 0, i64 0, i64 0
  %scevgep58.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %499, i64 0, i64 0, i64 0
  %500 = load i8, i8* %scevgep51.3.1, align 1
  %conv.i244.3.1 = zext i8 %500 to i32
  %501 = load i8, i8* %scevgep58.3.1, align 1
  %conv5.i249.3.1 = zext i8 %501 to i32
  %xor.i250.3.1 = xor i32 %conv.i244.3.1, %conv5.i249.3.1
  %conv6.i251.3.1 = trunc i32 %xor.i250.3.1 to i8
  %scevgep63.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 3
  store i8 %conv6.i251.3.1, i8* %scevgep63.3.1, align 1
  %scevgep48.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %498, i64 0, i64 0, i64 1
  %502 = bitcast i8* %scevgep48.3.1 to [22 x [11 x i8]]*
  %scevgep57.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %499, i64 0, i64 0, i64 1
  %503 = bitcast i8* %scevgep57.3.1 to [22 x [11 x i8]]*
  %scevgep51.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %502, i64 0, i64 0, i64 0
  %scevgep58.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %503, i64 0, i64 0, i64 0
  %504 = load i8, i8* %scevgep51.4.1, align 1
  %conv.i244.4.1 = zext i8 %504 to i32
  %505 = load i8, i8* %scevgep58.4.1, align 1
  %conv5.i249.4.1 = zext i8 %505 to i32
  %xor.i250.4.1 = xor i32 %conv.i244.4.1, %conv5.i249.4.1
  %conv6.i251.4.1 = trunc i32 %xor.i250.4.1 to i8
  %scevgep63.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 4
  store i8 %conv6.i251.4.1, i8* %scevgep63.4.1, align 1
  %scevgep48.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %502, i64 0, i64 0, i64 1
  %506 = bitcast i8* %scevgep48.4.1 to [22 x [11 x i8]]*
  %scevgep57.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %503, i64 0, i64 0, i64 1
  %507 = bitcast i8* %scevgep57.4.1 to [22 x [11 x i8]]*
  %scevgep51.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %506, i64 0, i64 0, i64 0
  %scevgep58.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %507, i64 0, i64 0, i64 0
  %508 = load i8, i8* %scevgep51.5.1, align 1
  %conv.i244.5.1 = zext i8 %508 to i32
  %509 = load i8, i8* %scevgep58.5.1, align 1
  %conv5.i249.5.1 = zext i8 %509 to i32
  %xor.i250.5.1 = xor i32 %conv.i244.5.1, %conv5.i249.5.1
  %conv6.i251.5.1 = trunc i32 %xor.i250.5.1 to i8
  %scevgep63.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 5
  store i8 %conv6.i251.5.1, i8* %scevgep63.5.1, align 1
  %scevgep48.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %506, i64 0, i64 0, i64 1
  %510 = bitcast i8* %scevgep48.5.1 to [22 x [11 x i8]]*
  %scevgep57.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %507, i64 0, i64 0, i64 1
  %511 = bitcast i8* %scevgep57.5.1 to [22 x [11 x i8]]*
  %scevgep51.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %510, i64 0, i64 0, i64 0
  %scevgep58.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %511, i64 0, i64 0, i64 0
  %512 = load i8, i8* %scevgep51.6.1, align 1
  %conv.i244.6.1 = zext i8 %512 to i32
  %513 = load i8, i8* %scevgep58.6.1, align 1
  %conv5.i249.6.1 = zext i8 %513 to i32
  %xor.i250.6.1 = xor i32 %conv.i244.6.1, %conv5.i249.6.1
  %conv6.i251.6.1 = trunc i32 %xor.i250.6.1 to i8
  %scevgep63.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 6
  store i8 %conv6.i251.6.1, i8* %scevgep63.6.1, align 1
  %scevgep48.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %510, i64 0, i64 0, i64 1
  %514 = bitcast i8* %scevgep48.6.1 to [22 x [11 x i8]]*
  %scevgep57.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %511, i64 0, i64 0, i64 1
  %515 = bitcast i8* %scevgep57.6.1 to [22 x [11 x i8]]*
  %scevgep51.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %514, i64 0, i64 0, i64 0
  %scevgep58.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %515, i64 0, i64 0, i64 0
  %516 = load i8, i8* %scevgep51.7.1, align 1
  %conv.i244.7.1 = zext i8 %516 to i32
  %517 = load i8, i8* %scevgep58.7.1, align 1
  %conv5.i249.7.1 = zext i8 %517 to i32
  %xor.i250.7.1 = xor i32 %conv.i244.7.1, %conv5.i249.7.1
  %conv6.i251.7.1 = trunc i32 %xor.i250.7.1 to i8
  %scevgep63.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 7
  store i8 %conv6.i251.7.1, i8* %scevgep63.7.1, align 1
  %scevgep48.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %514, i64 0, i64 0, i64 1
  %518 = bitcast i8* %scevgep48.7.1 to [22 x [11 x i8]]*
  %scevgep57.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %515, i64 0, i64 0, i64 1
  %519 = bitcast i8* %scevgep57.7.1 to [22 x [11 x i8]]*
  %scevgep51.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %518, i64 0, i64 0, i64 0
  %scevgep58.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %519, i64 0, i64 0, i64 0
  %520 = load i8, i8* %scevgep51.8.1, align 1
  %conv.i244.8.1 = zext i8 %520 to i32
  %521 = load i8, i8* %scevgep58.8.1, align 1
  %conv5.i249.8.1 = zext i8 %521 to i32
  %xor.i250.8.1 = xor i32 %conv.i244.8.1, %conv5.i249.8.1
  %conv6.i251.8.1 = trunc i32 %xor.i250.8.1 to i8
  %scevgep63.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 8
  store i8 %conv6.i251.8.1, i8* %scevgep63.8.1, align 1
  %scevgep48.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %518, i64 0, i64 0, i64 1
  %522 = bitcast i8* %scevgep48.8.1 to [22 x [11 x i8]]*
  %scevgep57.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %519, i64 0, i64 0, i64 1
  %523 = bitcast i8* %scevgep57.8.1 to [22 x [11 x i8]]*
  %scevgep51.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %522, i64 0, i64 0, i64 0
  %scevgep58.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %523, i64 0, i64 0, i64 0
  %524 = load i8, i8* %scevgep51.9.1, align 1
  %conv.i244.9.1 = zext i8 %524 to i32
  %525 = load i8, i8* %scevgep58.9.1, align 1
  %conv5.i249.9.1 = zext i8 %525 to i32
  %xor.i250.9.1 = xor i32 %conv.i244.9.1, %conv5.i249.9.1
  %conv6.i251.9.1 = trunc i32 %xor.i250.9.1 to i8
  %scevgep63.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 9
  store i8 %conv6.i251.9.1, i8* %scevgep63.9.1, align 1
  %scevgep48.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %522, i64 0, i64 0, i64 1
  %526 = bitcast i8* %scevgep48.9.1 to [22 x [11 x i8]]*
  %scevgep57.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %523, i64 0, i64 0, i64 1
  %527 = bitcast i8* %scevgep57.9.1 to [22 x [11 x i8]]*
  %scevgep51.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %526, i64 0, i64 0, i64 0
  %scevgep58.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %527, i64 0, i64 0, i64 0
  %528 = load i8, i8* %scevgep51.10.1, align 1
  %conv.i244.10.1 = zext i8 %528 to i32
  %529 = load i8, i8* %scevgep58.10.1, align 1
  %conv5.i249.10.1 = zext i8 %529 to i32
  %xor.i250.10.1 = xor i32 %conv.i244.10.1, %conv5.i249.10.1
  %conv6.i251.10.1 = trunc i32 %xor.i250.10.1 to i8
  %scevgep63.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 10
  store i8 %conv6.i251.10.1, i8* %scevgep63.10.1, align 1
  %arrayidx84.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2
  %arraydecay85.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx84.1, i64 0, i64 0
  %scevgep69.1165 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 0
  %530 = load i8, i8* %scevgep69.1165, align 1
  %conv.i269.1166 = zext i8 %530 to i32
  %531 = load i8, i8* %arraydecay85.1, align 1
  %conv5.i274.1169 = zext i8 %531 to i32
  %xor.i275.1170 = xor i32 %conv.i269.1166, %conv5.i274.1169
  %conv6.i276.1171 = trunc i32 %xor.i275.1170 to i8
  %scevgep78.1172 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 0
  store i8 %conv6.i276.1171, i8* %scevgep78.1172, align 1
  %scevgep66.1173 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 0, i64 1
  %532 = bitcast i8* %scevgep66.1173 to [22 x [11 x i8]]*
  %scevgep69.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %532, i64 0, i64 0, i64 0
  %533 = load i8, i8* %scevgep69.1.1, align 1
  %conv.i269.1.1 = zext i8 %533 to i32
  %arrayidx4.i273.1.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 1
  %534 = load i8, i8* %arrayidx4.i273.1.1, align 1
  %conv5.i274.1.1 = zext i8 %534 to i32
  %xor.i275.1.1 = xor i32 %conv.i269.1.1, %conv5.i274.1.1
  %conv6.i276.1.1 = trunc i32 %xor.i275.1.1 to i8
  %scevgep78.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 1
  store i8 %conv6.i276.1.1, i8* %scevgep78.1.1, align 1
  %scevgep66.1.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %532, i64 0, i64 0, i64 1
  %535 = bitcast i8* %scevgep66.1.1 to [22 x [11 x i8]]*
  %scevgep69.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %535, i64 0, i64 0, i64 0
  %536 = load i8, i8* %scevgep69.2.1, align 1
  %conv.i269.2.1 = zext i8 %536 to i32
  %arrayidx4.i273.2.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 2
  %537 = load i8, i8* %arrayidx4.i273.2.1, align 1
  %conv5.i274.2.1 = zext i8 %537 to i32
  %xor.i275.2.1 = xor i32 %conv.i269.2.1, %conv5.i274.2.1
  %conv6.i276.2.1 = trunc i32 %xor.i275.2.1 to i8
  %scevgep78.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 2
  store i8 %conv6.i276.2.1, i8* %scevgep78.2.1, align 1
  %scevgep66.2.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %535, i64 0, i64 0, i64 1
  %538 = bitcast i8* %scevgep66.2.1 to [22 x [11 x i8]]*
  %scevgep69.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %538, i64 0, i64 0, i64 0
  %539 = load i8, i8* %scevgep69.3.1, align 1
  %conv.i269.3.1 = zext i8 %539 to i32
  %arrayidx4.i273.3.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 3
  %540 = load i8, i8* %arrayidx4.i273.3.1, align 1
  %conv5.i274.3.1 = zext i8 %540 to i32
  %xor.i275.3.1 = xor i32 %conv.i269.3.1, %conv5.i274.3.1
  %conv6.i276.3.1 = trunc i32 %xor.i275.3.1 to i8
  %scevgep78.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 3
  store i8 %conv6.i276.3.1, i8* %scevgep78.3.1, align 1
  %scevgep66.3.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %538, i64 0, i64 0, i64 1
  %541 = bitcast i8* %scevgep66.3.1 to [22 x [11 x i8]]*
  %scevgep69.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %541, i64 0, i64 0, i64 0
  %542 = load i8, i8* %scevgep69.4.1, align 1
  %conv.i269.4.1 = zext i8 %542 to i32
  %arrayidx4.i273.4.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 4
  %543 = load i8, i8* %arrayidx4.i273.4.1, align 1
  %conv5.i274.4.1 = zext i8 %543 to i32
  %xor.i275.4.1 = xor i32 %conv.i269.4.1, %conv5.i274.4.1
  %conv6.i276.4.1 = trunc i32 %xor.i275.4.1 to i8
  %scevgep78.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 4
  store i8 %conv6.i276.4.1, i8* %scevgep78.4.1, align 1
  %scevgep66.4.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %541, i64 0, i64 0, i64 1
  %544 = bitcast i8* %scevgep66.4.1 to [22 x [11 x i8]]*
  %scevgep69.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %544, i64 0, i64 0, i64 0
  %545 = load i8, i8* %scevgep69.5.1, align 1
  %conv.i269.5.1 = zext i8 %545 to i32
  %arrayidx4.i273.5.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 5
  %546 = load i8, i8* %arrayidx4.i273.5.1, align 1
  %conv5.i274.5.1 = zext i8 %546 to i32
  %xor.i275.5.1 = xor i32 %conv.i269.5.1, %conv5.i274.5.1
  %conv6.i276.5.1 = trunc i32 %xor.i275.5.1 to i8
  %scevgep78.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 5
  store i8 %conv6.i276.5.1, i8* %scevgep78.5.1, align 1
  %scevgep66.5.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %544, i64 0, i64 0, i64 1
  %547 = bitcast i8* %scevgep66.5.1 to [22 x [11 x i8]]*
  %scevgep69.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %547, i64 0, i64 0, i64 0
  %548 = load i8, i8* %scevgep69.6.1, align 1
  %conv.i269.6.1 = zext i8 %548 to i32
  %arrayidx4.i273.6.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 6
  %549 = load i8, i8* %arrayidx4.i273.6.1, align 1
  %conv5.i274.6.1 = zext i8 %549 to i32
  %xor.i275.6.1 = xor i32 %conv.i269.6.1, %conv5.i274.6.1
  %conv6.i276.6.1 = trunc i32 %xor.i275.6.1 to i8
  %scevgep78.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 6
  store i8 %conv6.i276.6.1, i8* %scevgep78.6.1, align 1
  %scevgep66.6.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %547, i64 0, i64 0, i64 1
  %550 = bitcast i8* %scevgep66.6.1 to [22 x [11 x i8]]*
  %scevgep69.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %550, i64 0, i64 0, i64 0
  %551 = load i8, i8* %scevgep69.7.1, align 1
  %conv.i269.7.1 = zext i8 %551 to i32
  %arrayidx4.i273.7.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 7
  %552 = load i8, i8* %arrayidx4.i273.7.1, align 1
  %conv5.i274.7.1 = zext i8 %552 to i32
  %xor.i275.7.1 = xor i32 %conv.i269.7.1, %conv5.i274.7.1
  %conv6.i276.7.1 = trunc i32 %xor.i275.7.1 to i8
  %scevgep78.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 7
  store i8 %conv6.i276.7.1, i8* %scevgep78.7.1, align 1
  %scevgep66.7.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %550, i64 0, i64 0, i64 1
  %553 = bitcast i8* %scevgep66.7.1 to [22 x [11 x i8]]*
  %scevgep69.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %553, i64 0, i64 0, i64 0
  %554 = load i8, i8* %scevgep69.8.1, align 1
  %conv.i269.8.1 = zext i8 %554 to i32
  %arrayidx4.i273.8.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 8
  %555 = load i8, i8* %arrayidx4.i273.8.1, align 1
  %conv5.i274.8.1 = zext i8 %555 to i32
  %xor.i275.8.1 = xor i32 %conv.i269.8.1, %conv5.i274.8.1
  %conv6.i276.8.1 = trunc i32 %xor.i275.8.1 to i8
  %scevgep78.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 8
  store i8 %conv6.i276.8.1, i8* %scevgep78.8.1, align 1
  %scevgep66.8.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %553, i64 0, i64 0, i64 1
  %556 = bitcast i8* %scevgep66.8.1 to [22 x [11 x i8]]*
  %scevgep69.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %556, i64 0, i64 0, i64 0
  %557 = load i8, i8* %scevgep69.9.1, align 1
  %conv.i269.9.1 = zext i8 %557 to i32
  %arrayidx4.i273.9.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 9
  %558 = load i8, i8* %arrayidx4.i273.9.1, align 1
  %conv5.i274.9.1 = zext i8 %558 to i32
  %xor.i275.9.1 = xor i32 %conv.i269.9.1, %conv5.i274.9.1
  %conv6.i276.9.1 = trunc i32 %xor.i275.9.1 to i8
  %scevgep78.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 9
  store i8 %conv6.i276.9.1, i8* %scevgep78.9.1, align 1
  %scevgep66.9.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %556, i64 0, i64 0, i64 1
  %559 = bitcast i8* %scevgep66.9.1 to [22 x [11 x i8]]*
  %scevgep69.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %559, i64 0, i64 0, i64 0
  %560 = load i8, i8* %scevgep69.10.1, align 1
  %conv.i269.10.1 = zext i8 %560 to i32
  %arrayidx4.i273.10.1 = getelementptr inbounds i8, i8* %arraydecay85.1, i64 10
  %561 = load i8, i8* %arrayidx4.i273.10.1, align 1
  %conv5.i274.10.1 = zext i8 %561 to i32
  %xor.i275.10.1 = xor i32 %conv.i269.10.1, %conv5.i274.10.1
  %conv6.i276.10.1 = trunc i32 %xor.i275.10.1 to i8
  %scevgep78.10.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 0, i64 10
  store i8 %conv6.i276.10.1, i8* %scevgep78.10.1, align 1
  %scevgep28.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %440, i64 0, i64 3, i64 0
  %562 = bitcast i8* %scevgep28.1 to [22 x [11 x i8]]*
  %scevgep37.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %441, i64 0, i64 2, i64 0
  %563 = bitcast i8* %scevgep37.1 to [22 x [11 x i8]]*
  %scevgep44.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %442, i64 0, i64 3, i64 0
  %564 = bitcast i8* %scevgep44.1 to [22 x [11 x i8]]*
  %scevgep55.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %443, i64 0, i64 2, i64 0
  %565 = bitcast i8* %scevgep55.1 to [22 x [11 x i8]]*
  %scevgep62.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %444, i64 0, i64 3, i64 0
  %566 = bitcast i8* %scevgep62.1 to [22 x [11 x i8]]*
  %scevgep77.1 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %445, i64 0, i64 3, i64 0
  %567 = bitcast i8* %scevgep77.1 to [22 x [11 x i8]]*
  %scevgep33.2175 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %562, i64 0, i64 0, i64 0
  %scevgep40.2176 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %563, i64 0, i64 0, i64 0
  %568 = load i8, i8* %scevgep33.2175, align 1
  %conv.i211.2177 = zext i8 %568 to i32
  %569 = load i8, i8* %scevgep40.2176, align 1
  %conv5.i216.2178 = zext i8 %569 to i32
  %xor.i217.2179 = xor i32 %conv.i211.2177, %conv5.i216.2178
  %conv6.i218.2180 = trunc i32 %xor.i217.2179 to i8
  %scevgep45.2181 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 0
  store i8 %conv6.i218.2180, i8* %scevgep45.2181, align 1
  %scevgep30.2182 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %562, i64 0, i64 0, i64 1
  %570 = bitcast i8* %scevgep30.2182 to [22 x [11 x i8]]*
  %scevgep39.2183 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %563, i64 0, i64 0, i64 1
  %571 = bitcast i8* %scevgep39.2183 to [22 x [11 x i8]]*
  %scevgep33.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %570, i64 0, i64 0, i64 0
  %scevgep40.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %571, i64 0, i64 0, i64 0
  %572 = load i8, i8* %scevgep33.1.2, align 1
  %conv.i211.1.2 = zext i8 %572 to i32
  %573 = load i8, i8* %scevgep40.1.2, align 1
  %conv5.i216.1.2 = zext i8 %573 to i32
  %xor.i217.1.2 = xor i32 %conv.i211.1.2, %conv5.i216.1.2
  %conv6.i218.1.2 = trunc i32 %xor.i217.1.2 to i8
  %scevgep45.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 1
  store i8 %conv6.i218.1.2, i8* %scevgep45.1.2, align 1
  %scevgep30.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %570, i64 0, i64 0, i64 1
  %574 = bitcast i8* %scevgep30.1.2 to [22 x [11 x i8]]*
  %scevgep39.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %571, i64 0, i64 0, i64 1
  %575 = bitcast i8* %scevgep39.1.2 to [22 x [11 x i8]]*
  %scevgep33.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %574, i64 0, i64 0, i64 0
  %scevgep40.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %575, i64 0, i64 0, i64 0
  %576 = load i8, i8* %scevgep33.2.2, align 1
  %conv.i211.2.2 = zext i8 %576 to i32
  %577 = load i8, i8* %scevgep40.2.2, align 1
  %conv5.i216.2.2 = zext i8 %577 to i32
  %xor.i217.2.2 = xor i32 %conv.i211.2.2, %conv5.i216.2.2
  %conv6.i218.2.2 = trunc i32 %xor.i217.2.2 to i8
  %scevgep45.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 2
  store i8 %conv6.i218.2.2, i8* %scevgep45.2.2, align 1
  %scevgep30.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %574, i64 0, i64 0, i64 1
  %578 = bitcast i8* %scevgep30.2.2 to [22 x [11 x i8]]*
  %scevgep39.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %575, i64 0, i64 0, i64 1
  %579 = bitcast i8* %scevgep39.2.2 to [22 x [11 x i8]]*
  %scevgep33.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %578, i64 0, i64 0, i64 0
  %scevgep40.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %579, i64 0, i64 0, i64 0
  %580 = load i8, i8* %scevgep33.3.2, align 1
  %conv.i211.3.2 = zext i8 %580 to i32
  %581 = load i8, i8* %scevgep40.3.2, align 1
  %conv5.i216.3.2 = zext i8 %581 to i32
  %xor.i217.3.2 = xor i32 %conv.i211.3.2, %conv5.i216.3.2
  %conv6.i218.3.2 = trunc i32 %xor.i217.3.2 to i8
  %scevgep45.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 3
  store i8 %conv6.i218.3.2, i8* %scevgep45.3.2, align 1
  %scevgep30.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %578, i64 0, i64 0, i64 1
  %582 = bitcast i8* %scevgep30.3.2 to [22 x [11 x i8]]*
  %scevgep39.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %579, i64 0, i64 0, i64 1
  %583 = bitcast i8* %scevgep39.3.2 to [22 x [11 x i8]]*
  %scevgep33.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %582, i64 0, i64 0, i64 0
  %scevgep40.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %583, i64 0, i64 0, i64 0
  %584 = load i8, i8* %scevgep33.4.2, align 1
  %conv.i211.4.2 = zext i8 %584 to i32
  %585 = load i8, i8* %scevgep40.4.2, align 1
  %conv5.i216.4.2 = zext i8 %585 to i32
  %xor.i217.4.2 = xor i32 %conv.i211.4.2, %conv5.i216.4.2
  %conv6.i218.4.2 = trunc i32 %xor.i217.4.2 to i8
  %scevgep45.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 4
  store i8 %conv6.i218.4.2, i8* %scevgep45.4.2, align 1
  %scevgep30.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %582, i64 0, i64 0, i64 1
  %586 = bitcast i8* %scevgep30.4.2 to [22 x [11 x i8]]*
  %scevgep39.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %583, i64 0, i64 0, i64 1
  %587 = bitcast i8* %scevgep39.4.2 to [22 x [11 x i8]]*
  %scevgep33.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %586, i64 0, i64 0, i64 0
  %scevgep40.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %587, i64 0, i64 0, i64 0
  %588 = load i8, i8* %scevgep33.5.2, align 1
  %conv.i211.5.2 = zext i8 %588 to i32
  %589 = load i8, i8* %scevgep40.5.2, align 1
  %conv5.i216.5.2 = zext i8 %589 to i32
  %xor.i217.5.2 = xor i32 %conv.i211.5.2, %conv5.i216.5.2
  %conv6.i218.5.2 = trunc i32 %xor.i217.5.2 to i8
  %scevgep45.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 5
  store i8 %conv6.i218.5.2, i8* %scevgep45.5.2, align 1
  %scevgep30.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %586, i64 0, i64 0, i64 1
  %590 = bitcast i8* %scevgep30.5.2 to [22 x [11 x i8]]*
  %scevgep39.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %587, i64 0, i64 0, i64 1
  %591 = bitcast i8* %scevgep39.5.2 to [22 x [11 x i8]]*
  %scevgep33.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %590, i64 0, i64 0, i64 0
  %scevgep40.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %591, i64 0, i64 0, i64 0
  %592 = load i8, i8* %scevgep33.6.2, align 1
  %conv.i211.6.2 = zext i8 %592 to i32
  %593 = load i8, i8* %scevgep40.6.2, align 1
  %conv5.i216.6.2 = zext i8 %593 to i32
  %xor.i217.6.2 = xor i32 %conv.i211.6.2, %conv5.i216.6.2
  %conv6.i218.6.2 = trunc i32 %xor.i217.6.2 to i8
  %scevgep45.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 6
  store i8 %conv6.i218.6.2, i8* %scevgep45.6.2, align 1
  %scevgep30.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %590, i64 0, i64 0, i64 1
  %594 = bitcast i8* %scevgep30.6.2 to [22 x [11 x i8]]*
  %scevgep39.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %591, i64 0, i64 0, i64 1
  %595 = bitcast i8* %scevgep39.6.2 to [22 x [11 x i8]]*
  %scevgep33.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %594, i64 0, i64 0, i64 0
  %scevgep40.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %595, i64 0, i64 0, i64 0
  %596 = load i8, i8* %scevgep33.7.2, align 1
  %conv.i211.7.2 = zext i8 %596 to i32
  %597 = load i8, i8* %scevgep40.7.2, align 1
  %conv5.i216.7.2 = zext i8 %597 to i32
  %xor.i217.7.2 = xor i32 %conv.i211.7.2, %conv5.i216.7.2
  %conv6.i218.7.2 = trunc i32 %xor.i217.7.2 to i8
  %scevgep45.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 7
  store i8 %conv6.i218.7.2, i8* %scevgep45.7.2, align 1
  %scevgep30.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %594, i64 0, i64 0, i64 1
  %598 = bitcast i8* %scevgep30.7.2 to [22 x [11 x i8]]*
  %scevgep39.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %595, i64 0, i64 0, i64 1
  %599 = bitcast i8* %scevgep39.7.2 to [22 x [11 x i8]]*
  %scevgep33.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %598, i64 0, i64 0, i64 0
  %scevgep40.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %599, i64 0, i64 0, i64 0
  %600 = load i8, i8* %scevgep33.8.2, align 1
  %conv.i211.8.2 = zext i8 %600 to i32
  %601 = load i8, i8* %scevgep40.8.2, align 1
  %conv5.i216.8.2 = zext i8 %601 to i32
  %xor.i217.8.2 = xor i32 %conv.i211.8.2, %conv5.i216.8.2
  %conv6.i218.8.2 = trunc i32 %xor.i217.8.2 to i8
  %scevgep45.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 8
  store i8 %conv6.i218.8.2, i8* %scevgep45.8.2, align 1
  %scevgep30.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %598, i64 0, i64 0, i64 1
  %602 = bitcast i8* %scevgep30.8.2 to [22 x [11 x i8]]*
  %scevgep39.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %599, i64 0, i64 0, i64 1
  %603 = bitcast i8* %scevgep39.8.2 to [22 x [11 x i8]]*
  %scevgep33.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %602, i64 0, i64 0, i64 0
  %scevgep40.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %603, i64 0, i64 0, i64 0
  %604 = load i8, i8* %scevgep33.9.2, align 1
  %conv.i211.9.2 = zext i8 %604 to i32
  %605 = load i8, i8* %scevgep40.9.2, align 1
  %conv5.i216.9.2 = zext i8 %605 to i32
  %xor.i217.9.2 = xor i32 %conv.i211.9.2, %conv5.i216.9.2
  %conv6.i218.9.2 = trunc i32 %xor.i217.9.2 to i8
  %scevgep45.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 9
  store i8 %conv6.i218.9.2, i8* %scevgep45.9.2, align 1
  %scevgep30.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %602, i64 0, i64 0, i64 1
  %606 = bitcast i8* %scevgep30.9.2 to [22 x [11 x i8]]*
  %scevgep39.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %603, i64 0, i64 0, i64 1
  %607 = bitcast i8* %scevgep39.9.2 to [22 x [11 x i8]]*
  %scevgep33.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %606, i64 0, i64 0, i64 0
  %scevgep40.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %607, i64 0, i64 0, i64 0
  %608 = load i8, i8* %scevgep33.10.2, align 1
  %conv.i211.10.2 = zext i8 %608 to i32
  %609 = load i8, i8* %scevgep40.10.2, align 1
  %conv5.i216.10.2 = zext i8 %609 to i32
  %xor.i217.10.2 = xor i32 %conv.i211.10.2, %conv5.i216.10.2
  %conv6.i218.10.2 = trunc i32 %xor.i217.10.2 to i8
  %scevgep45.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 10
  store i8 %conv6.i218.10.2, i8* %scevgep45.10.2, align 1
  %scevgep51.2184 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 0
  %scevgep58.2185 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %565, i64 0, i64 0, i64 0
  %610 = load i8, i8* %scevgep51.2184, align 1
  %conv.i244.2186 = zext i8 %610 to i32
  %611 = load i8, i8* %scevgep58.2185, align 1
  %conv5.i249.2187 = zext i8 %611 to i32
  %xor.i250.2188 = xor i32 %conv.i244.2186, %conv5.i249.2187
  %conv6.i251.2189 = trunc i32 %xor.i250.2188 to i8
  %scevgep63.2190 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 0
  store i8 %conv6.i251.2189, i8* %scevgep63.2190, align 1
  %scevgep48.2191 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 0, i64 1
  %612 = bitcast i8* %scevgep48.2191 to [22 x [11 x i8]]*
  %scevgep57.2192 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %565, i64 0, i64 0, i64 1
  %613 = bitcast i8* %scevgep57.2192 to [22 x [11 x i8]]*
  %scevgep51.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %612, i64 0, i64 0, i64 0
  %scevgep58.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %613, i64 0, i64 0, i64 0
  %614 = load i8, i8* %scevgep51.1.2, align 1
  %conv.i244.1.2 = zext i8 %614 to i32
  %615 = load i8, i8* %scevgep58.1.2, align 1
  %conv5.i249.1.2 = zext i8 %615 to i32
  %xor.i250.1.2 = xor i32 %conv.i244.1.2, %conv5.i249.1.2
  %conv6.i251.1.2 = trunc i32 %xor.i250.1.2 to i8
  %scevgep63.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 1
  store i8 %conv6.i251.1.2, i8* %scevgep63.1.2, align 1
  %scevgep48.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %612, i64 0, i64 0, i64 1
  %616 = bitcast i8* %scevgep48.1.2 to [22 x [11 x i8]]*
  %scevgep57.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %613, i64 0, i64 0, i64 1
  %617 = bitcast i8* %scevgep57.1.2 to [22 x [11 x i8]]*
  %scevgep51.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %616, i64 0, i64 0, i64 0
  %scevgep58.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %617, i64 0, i64 0, i64 0
  %618 = load i8, i8* %scevgep51.2.2, align 1
  %conv.i244.2.2 = zext i8 %618 to i32
  %619 = load i8, i8* %scevgep58.2.2, align 1
  %conv5.i249.2.2 = zext i8 %619 to i32
  %xor.i250.2.2 = xor i32 %conv.i244.2.2, %conv5.i249.2.2
  %conv6.i251.2.2 = trunc i32 %xor.i250.2.2 to i8
  %scevgep63.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 2
  store i8 %conv6.i251.2.2, i8* %scevgep63.2.2, align 1
  %scevgep48.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %616, i64 0, i64 0, i64 1
  %620 = bitcast i8* %scevgep48.2.2 to [22 x [11 x i8]]*
  %scevgep57.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %617, i64 0, i64 0, i64 1
  %621 = bitcast i8* %scevgep57.2.2 to [22 x [11 x i8]]*
  %scevgep51.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %620, i64 0, i64 0, i64 0
  %scevgep58.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %621, i64 0, i64 0, i64 0
  %622 = load i8, i8* %scevgep51.3.2, align 1
  %conv.i244.3.2 = zext i8 %622 to i32
  %623 = load i8, i8* %scevgep58.3.2, align 1
  %conv5.i249.3.2 = zext i8 %623 to i32
  %xor.i250.3.2 = xor i32 %conv.i244.3.2, %conv5.i249.3.2
  %conv6.i251.3.2 = trunc i32 %xor.i250.3.2 to i8
  %scevgep63.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 3
  store i8 %conv6.i251.3.2, i8* %scevgep63.3.2, align 1
  %scevgep48.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %620, i64 0, i64 0, i64 1
  %624 = bitcast i8* %scevgep48.3.2 to [22 x [11 x i8]]*
  %scevgep57.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %621, i64 0, i64 0, i64 1
  %625 = bitcast i8* %scevgep57.3.2 to [22 x [11 x i8]]*
  %scevgep51.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %624, i64 0, i64 0, i64 0
  %scevgep58.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %625, i64 0, i64 0, i64 0
  %626 = load i8, i8* %scevgep51.4.2, align 1
  %conv.i244.4.2 = zext i8 %626 to i32
  %627 = load i8, i8* %scevgep58.4.2, align 1
  %conv5.i249.4.2 = zext i8 %627 to i32
  %xor.i250.4.2 = xor i32 %conv.i244.4.2, %conv5.i249.4.2
  %conv6.i251.4.2 = trunc i32 %xor.i250.4.2 to i8
  %scevgep63.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 4
  store i8 %conv6.i251.4.2, i8* %scevgep63.4.2, align 1
  %scevgep48.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %624, i64 0, i64 0, i64 1
  %628 = bitcast i8* %scevgep48.4.2 to [22 x [11 x i8]]*
  %scevgep57.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %625, i64 0, i64 0, i64 1
  %629 = bitcast i8* %scevgep57.4.2 to [22 x [11 x i8]]*
  %scevgep51.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %628, i64 0, i64 0, i64 0
  %scevgep58.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %629, i64 0, i64 0, i64 0
  %630 = load i8, i8* %scevgep51.5.2, align 1
  %conv.i244.5.2 = zext i8 %630 to i32
  %631 = load i8, i8* %scevgep58.5.2, align 1
  %conv5.i249.5.2 = zext i8 %631 to i32
  %xor.i250.5.2 = xor i32 %conv.i244.5.2, %conv5.i249.5.2
  %conv6.i251.5.2 = trunc i32 %xor.i250.5.2 to i8
  %scevgep63.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 5
  store i8 %conv6.i251.5.2, i8* %scevgep63.5.2, align 1
  %scevgep48.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %628, i64 0, i64 0, i64 1
  %632 = bitcast i8* %scevgep48.5.2 to [22 x [11 x i8]]*
  %scevgep57.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %629, i64 0, i64 0, i64 1
  %633 = bitcast i8* %scevgep57.5.2 to [22 x [11 x i8]]*
  %scevgep51.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %632, i64 0, i64 0, i64 0
  %scevgep58.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %633, i64 0, i64 0, i64 0
  %634 = load i8, i8* %scevgep51.6.2, align 1
  %conv.i244.6.2 = zext i8 %634 to i32
  %635 = load i8, i8* %scevgep58.6.2, align 1
  %conv5.i249.6.2 = zext i8 %635 to i32
  %xor.i250.6.2 = xor i32 %conv.i244.6.2, %conv5.i249.6.2
  %conv6.i251.6.2 = trunc i32 %xor.i250.6.2 to i8
  %scevgep63.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 6
  store i8 %conv6.i251.6.2, i8* %scevgep63.6.2, align 1
  %scevgep48.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %632, i64 0, i64 0, i64 1
  %636 = bitcast i8* %scevgep48.6.2 to [22 x [11 x i8]]*
  %scevgep57.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %633, i64 0, i64 0, i64 1
  %637 = bitcast i8* %scevgep57.6.2 to [22 x [11 x i8]]*
  %scevgep51.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %636, i64 0, i64 0, i64 0
  %scevgep58.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %637, i64 0, i64 0, i64 0
  %638 = load i8, i8* %scevgep51.7.2, align 1
  %conv.i244.7.2 = zext i8 %638 to i32
  %639 = load i8, i8* %scevgep58.7.2, align 1
  %conv5.i249.7.2 = zext i8 %639 to i32
  %xor.i250.7.2 = xor i32 %conv.i244.7.2, %conv5.i249.7.2
  %conv6.i251.7.2 = trunc i32 %xor.i250.7.2 to i8
  %scevgep63.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 7
  store i8 %conv6.i251.7.2, i8* %scevgep63.7.2, align 1
  %scevgep48.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %636, i64 0, i64 0, i64 1
  %640 = bitcast i8* %scevgep48.7.2 to [22 x [11 x i8]]*
  %scevgep57.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %637, i64 0, i64 0, i64 1
  %641 = bitcast i8* %scevgep57.7.2 to [22 x [11 x i8]]*
  %scevgep51.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %640, i64 0, i64 0, i64 0
  %scevgep58.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %641, i64 0, i64 0, i64 0
  %642 = load i8, i8* %scevgep51.8.2, align 1
  %conv.i244.8.2 = zext i8 %642 to i32
  %643 = load i8, i8* %scevgep58.8.2, align 1
  %conv5.i249.8.2 = zext i8 %643 to i32
  %xor.i250.8.2 = xor i32 %conv.i244.8.2, %conv5.i249.8.2
  %conv6.i251.8.2 = trunc i32 %xor.i250.8.2 to i8
  %scevgep63.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 8
  store i8 %conv6.i251.8.2, i8* %scevgep63.8.2, align 1
  %scevgep48.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %640, i64 0, i64 0, i64 1
  %644 = bitcast i8* %scevgep48.8.2 to [22 x [11 x i8]]*
  %scevgep57.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %641, i64 0, i64 0, i64 1
  %645 = bitcast i8* %scevgep57.8.2 to [22 x [11 x i8]]*
  %scevgep51.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %644, i64 0, i64 0, i64 0
  %scevgep58.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %645, i64 0, i64 0, i64 0
  %646 = load i8, i8* %scevgep51.9.2, align 1
  %conv.i244.9.2 = zext i8 %646 to i32
  %647 = load i8, i8* %scevgep58.9.2, align 1
  %conv5.i249.9.2 = zext i8 %647 to i32
  %xor.i250.9.2 = xor i32 %conv.i244.9.2, %conv5.i249.9.2
  %conv6.i251.9.2 = trunc i32 %xor.i250.9.2 to i8
  %scevgep63.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 9
  store i8 %conv6.i251.9.2, i8* %scevgep63.9.2, align 1
  %scevgep48.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %644, i64 0, i64 0, i64 1
  %648 = bitcast i8* %scevgep48.9.2 to [22 x [11 x i8]]*
  %scevgep57.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %645, i64 0, i64 0, i64 1
  %649 = bitcast i8* %scevgep57.9.2 to [22 x [11 x i8]]*
  %scevgep51.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %648, i64 0, i64 0, i64 0
  %scevgep58.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %649, i64 0, i64 0, i64 0
  %650 = load i8, i8* %scevgep51.10.2, align 1
  %conv.i244.10.2 = zext i8 %650 to i32
  %651 = load i8, i8* %scevgep58.10.2, align 1
  %conv5.i249.10.2 = zext i8 %651 to i32
  %xor.i250.10.2 = xor i32 %conv.i244.10.2, %conv5.i249.10.2
  %conv6.i251.10.2 = trunc i32 %xor.i250.10.2 to i8
  %scevgep63.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 10
  store i8 %conv6.i251.10.2, i8* %scevgep63.10.2, align 1
  %arrayidx84.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2
  %arraydecay85.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx84.2, i64 0, i64 0
  %scevgep69.2193 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 0
  %652 = load i8, i8* %scevgep69.2193, align 1
  %conv.i269.2194 = zext i8 %652 to i32
  %arrayidx4.i273.2196 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 1
  %653 = load i8, i8* %arrayidx4.i273.2196, align 1
  %conv5.i274.2197 = zext i8 %653 to i32
  %xor.i275.2198 = xor i32 %conv.i269.2194, %conv5.i274.2197
  %conv6.i276.2199 = trunc i32 %xor.i275.2198 to i8
  %scevgep78.2200 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 0
  store i8 %conv6.i276.2199, i8* %scevgep78.2200, align 1
  %scevgep66.2201 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 0, i64 1
  %654 = bitcast i8* %scevgep66.2201 to [22 x [11 x i8]]*
  %scevgep69.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %654, i64 0, i64 0, i64 0
  %655 = load i8, i8* %scevgep69.1.2, align 1
  %conv.i269.1.2 = zext i8 %655 to i32
  %arrayidx4.i273.1.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 2
  %656 = load i8, i8* %arrayidx4.i273.1.2, align 1
  %conv5.i274.1.2 = zext i8 %656 to i32
  %xor.i275.1.2 = xor i32 %conv.i269.1.2, %conv5.i274.1.2
  %conv6.i276.1.2 = trunc i32 %xor.i275.1.2 to i8
  %scevgep78.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 1
  store i8 %conv6.i276.1.2, i8* %scevgep78.1.2, align 1
  %scevgep66.1.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %654, i64 0, i64 0, i64 1
  %657 = bitcast i8* %scevgep66.1.2 to [22 x [11 x i8]]*
  %scevgep69.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %657, i64 0, i64 0, i64 0
  %658 = load i8, i8* %scevgep69.2.2, align 1
  %conv.i269.2.2 = zext i8 %658 to i32
  %arrayidx4.i273.2.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 3
  %659 = load i8, i8* %arrayidx4.i273.2.2, align 1
  %conv5.i274.2.2 = zext i8 %659 to i32
  %xor.i275.2.2 = xor i32 %conv.i269.2.2, %conv5.i274.2.2
  %conv6.i276.2.2 = trunc i32 %xor.i275.2.2 to i8
  %scevgep78.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 2
  store i8 %conv6.i276.2.2, i8* %scevgep78.2.2, align 1
  %scevgep66.2.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %657, i64 0, i64 0, i64 1
  %660 = bitcast i8* %scevgep66.2.2 to [22 x [11 x i8]]*
  %scevgep69.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %660, i64 0, i64 0, i64 0
  %661 = load i8, i8* %scevgep69.3.2, align 1
  %conv.i269.3.2 = zext i8 %661 to i32
  %arrayidx4.i273.3.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 4
  %662 = load i8, i8* %arrayidx4.i273.3.2, align 1
  %conv5.i274.3.2 = zext i8 %662 to i32
  %xor.i275.3.2 = xor i32 %conv.i269.3.2, %conv5.i274.3.2
  %conv6.i276.3.2 = trunc i32 %xor.i275.3.2 to i8
  %scevgep78.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 3
  store i8 %conv6.i276.3.2, i8* %scevgep78.3.2, align 1
  %scevgep66.3.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %660, i64 0, i64 0, i64 1
  %663 = bitcast i8* %scevgep66.3.2 to [22 x [11 x i8]]*
  %scevgep69.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %663, i64 0, i64 0, i64 0
  %664 = load i8, i8* %scevgep69.4.2, align 1
  %conv.i269.4.2 = zext i8 %664 to i32
  %arrayidx4.i273.4.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 5
  %665 = load i8, i8* %arrayidx4.i273.4.2, align 1
  %conv5.i274.4.2 = zext i8 %665 to i32
  %xor.i275.4.2 = xor i32 %conv.i269.4.2, %conv5.i274.4.2
  %conv6.i276.4.2 = trunc i32 %xor.i275.4.2 to i8
  %scevgep78.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 4
  store i8 %conv6.i276.4.2, i8* %scevgep78.4.2, align 1
  %scevgep66.4.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %663, i64 0, i64 0, i64 1
  %666 = bitcast i8* %scevgep66.4.2 to [22 x [11 x i8]]*
  %scevgep69.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %666, i64 0, i64 0, i64 0
  %667 = load i8, i8* %scevgep69.5.2, align 1
  %conv.i269.5.2 = zext i8 %667 to i32
  %arrayidx4.i273.5.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 6
  %668 = load i8, i8* %arrayidx4.i273.5.2, align 1
  %conv5.i274.5.2 = zext i8 %668 to i32
  %xor.i275.5.2 = xor i32 %conv.i269.5.2, %conv5.i274.5.2
  %conv6.i276.5.2 = trunc i32 %xor.i275.5.2 to i8
  %scevgep78.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 5
  store i8 %conv6.i276.5.2, i8* %scevgep78.5.2, align 1
  %scevgep66.5.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %666, i64 0, i64 0, i64 1
  %669 = bitcast i8* %scevgep66.5.2 to [22 x [11 x i8]]*
  %scevgep69.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %669, i64 0, i64 0, i64 0
  %670 = load i8, i8* %scevgep69.6.2, align 1
  %conv.i269.6.2 = zext i8 %670 to i32
  %arrayidx4.i273.6.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 7
  %671 = load i8, i8* %arrayidx4.i273.6.2, align 1
  %conv5.i274.6.2 = zext i8 %671 to i32
  %xor.i275.6.2 = xor i32 %conv.i269.6.2, %conv5.i274.6.2
  %conv6.i276.6.2 = trunc i32 %xor.i275.6.2 to i8
  %scevgep78.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 6
  store i8 %conv6.i276.6.2, i8* %scevgep78.6.2, align 1
  %scevgep66.6.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %669, i64 0, i64 0, i64 1
  %672 = bitcast i8* %scevgep66.6.2 to [22 x [11 x i8]]*
  %scevgep69.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %672, i64 0, i64 0, i64 0
  %673 = load i8, i8* %scevgep69.7.2, align 1
  %conv.i269.7.2 = zext i8 %673 to i32
  %arrayidx4.i273.7.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 8
  %674 = load i8, i8* %arrayidx4.i273.7.2, align 1
  %conv5.i274.7.2 = zext i8 %674 to i32
  %xor.i275.7.2 = xor i32 %conv.i269.7.2, %conv5.i274.7.2
  %conv6.i276.7.2 = trunc i32 %xor.i275.7.2 to i8
  %scevgep78.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 7
  store i8 %conv6.i276.7.2, i8* %scevgep78.7.2, align 1
  %scevgep66.7.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %672, i64 0, i64 0, i64 1
  %675 = bitcast i8* %scevgep66.7.2 to [22 x [11 x i8]]*
  %scevgep69.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %675, i64 0, i64 0, i64 0
  %676 = load i8, i8* %scevgep69.8.2, align 1
  %conv.i269.8.2 = zext i8 %676 to i32
  %arrayidx4.i273.8.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 9
  %677 = load i8, i8* %arrayidx4.i273.8.2, align 1
  %conv5.i274.8.2 = zext i8 %677 to i32
  %xor.i275.8.2 = xor i32 %conv.i269.8.2, %conv5.i274.8.2
  %conv6.i276.8.2 = trunc i32 %xor.i275.8.2 to i8
  %scevgep78.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 8
  store i8 %conv6.i276.8.2, i8* %scevgep78.8.2, align 1
  %scevgep66.8.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %675, i64 0, i64 0, i64 1
  %678 = bitcast i8* %scevgep66.8.2 to [22 x [11 x i8]]*
  %scevgep69.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %678, i64 0, i64 0, i64 0
  %679 = load i8, i8* %scevgep69.9.2, align 1
  %conv.i269.9.2 = zext i8 %679 to i32
  %arrayidx4.i273.9.2 = getelementptr inbounds i8, i8* %arraydecay85.2, i64 10
  %680 = load i8, i8* %arrayidx4.i273.9.2, align 1
  %conv5.i274.9.2 = zext i8 %680 to i32
  %xor.i275.9.2 = xor i32 %conv.i269.9.2, %conv5.i274.9.2
  %conv6.i276.9.2 = trunc i32 %xor.i275.9.2 to i8
  %scevgep78.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 9
  store i8 %conv6.i276.9.2, i8* %scevgep78.9.2, align 1
  %scevgep66.9.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %678, i64 0, i64 0, i64 1
  %681 = bitcast i8* %scevgep66.9.2 to [22 x [11 x i8]]*
  %scevgep69.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %681, i64 0, i64 0, i64 0
  %682 = load i8, i8* %scevgep69.10.2, align 1
  %conv.i269.10.2 = zext i8 %682 to i32
  %683 = load i8, i8* %arraydecay85.2, align 1
  %conv5.i274.10.2 = zext i8 %683 to i32
  %xor.i275.10.2 = xor i32 %conv.i269.10.2, %conv5.i274.10.2
  %conv6.i276.10.2 = trunc i32 %xor.i275.10.2 to i8
  %scevgep78.10.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 0, i64 10
  store i8 %conv6.i276.10.2, i8* %scevgep78.10.2, align 1
  %scevgep28.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %562, i64 0, i64 3, i64 0
  %684 = bitcast i8* %scevgep28.2 to [22 x [11 x i8]]*
  %scevgep37.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %563, i64 0, i64 2, i64 0
  %685 = bitcast i8* %scevgep37.2 to [22 x [11 x i8]]*
  %scevgep44.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %564, i64 0, i64 3, i64 0
  %686 = bitcast i8* %scevgep44.2 to [22 x [11 x i8]]*
  %scevgep55.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %565, i64 0, i64 2, i64 0
  %687 = bitcast i8* %scevgep55.2 to [22 x [11 x i8]]*
  %scevgep62.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %566, i64 0, i64 3, i64 0
  %688 = bitcast i8* %scevgep62.2 to [22 x [11 x i8]]*
  %scevgep77.2 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %567, i64 0, i64 3, i64 0
  %689 = bitcast i8* %scevgep77.2 to [22 x [11 x i8]]*
  %scevgep33.3203 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %684, i64 0, i64 0, i64 0
  %scevgep40.3204 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %685, i64 0, i64 0, i64 0
  %690 = load i8, i8* %scevgep33.3203, align 1
  %conv.i211.3205 = zext i8 %690 to i32
  %691 = load i8, i8* %scevgep40.3204, align 1
  %conv5.i216.3206 = zext i8 %691 to i32
  %xor.i217.3207 = xor i32 %conv.i211.3205, %conv5.i216.3206
  %conv6.i218.3208 = trunc i32 %xor.i217.3207 to i8
  %scevgep45.3209 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 0
  store i8 %conv6.i218.3208, i8* %scevgep45.3209, align 1
  %scevgep30.3210 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %684, i64 0, i64 0, i64 1
  %692 = bitcast i8* %scevgep30.3210 to [22 x [11 x i8]]*
  %scevgep39.3211 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %685, i64 0, i64 0, i64 1
  %693 = bitcast i8* %scevgep39.3211 to [22 x [11 x i8]]*
  %scevgep33.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %692, i64 0, i64 0, i64 0
  %scevgep40.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %693, i64 0, i64 0, i64 0
  %694 = load i8, i8* %scevgep33.1.3, align 1
  %conv.i211.1.3 = zext i8 %694 to i32
  %695 = load i8, i8* %scevgep40.1.3, align 1
  %conv5.i216.1.3 = zext i8 %695 to i32
  %xor.i217.1.3 = xor i32 %conv.i211.1.3, %conv5.i216.1.3
  %conv6.i218.1.3 = trunc i32 %xor.i217.1.3 to i8
  %scevgep45.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 1
  store i8 %conv6.i218.1.3, i8* %scevgep45.1.3, align 1
  %scevgep30.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %692, i64 0, i64 0, i64 1
  %696 = bitcast i8* %scevgep30.1.3 to [22 x [11 x i8]]*
  %scevgep39.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %693, i64 0, i64 0, i64 1
  %697 = bitcast i8* %scevgep39.1.3 to [22 x [11 x i8]]*
  %scevgep33.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %696, i64 0, i64 0, i64 0
  %scevgep40.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %697, i64 0, i64 0, i64 0
  %698 = load i8, i8* %scevgep33.2.3, align 1
  %conv.i211.2.3 = zext i8 %698 to i32
  %699 = load i8, i8* %scevgep40.2.3, align 1
  %conv5.i216.2.3 = zext i8 %699 to i32
  %xor.i217.2.3 = xor i32 %conv.i211.2.3, %conv5.i216.2.3
  %conv6.i218.2.3 = trunc i32 %xor.i217.2.3 to i8
  %scevgep45.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 2
  store i8 %conv6.i218.2.3, i8* %scevgep45.2.3, align 1
  %scevgep30.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %696, i64 0, i64 0, i64 1
  %700 = bitcast i8* %scevgep30.2.3 to [22 x [11 x i8]]*
  %scevgep39.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %697, i64 0, i64 0, i64 1
  %701 = bitcast i8* %scevgep39.2.3 to [22 x [11 x i8]]*
  %scevgep33.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %700, i64 0, i64 0, i64 0
  %scevgep40.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %701, i64 0, i64 0, i64 0
  %702 = load i8, i8* %scevgep33.3.3, align 1
  %conv.i211.3.3 = zext i8 %702 to i32
  %703 = load i8, i8* %scevgep40.3.3, align 1
  %conv5.i216.3.3 = zext i8 %703 to i32
  %xor.i217.3.3 = xor i32 %conv.i211.3.3, %conv5.i216.3.3
  %conv6.i218.3.3 = trunc i32 %xor.i217.3.3 to i8
  %scevgep45.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 3
  store i8 %conv6.i218.3.3, i8* %scevgep45.3.3, align 1
  %scevgep30.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %700, i64 0, i64 0, i64 1
  %704 = bitcast i8* %scevgep30.3.3 to [22 x [11 x i8]]*
  %scevgep39.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %701, i64 0, i64 0, i64 1
  %705 = bitcast i8* %scevgep39.3.3 to [22 x [11 x i8]]*
  %scevgep33.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %704, i64 0, i64 0, i64 0
  %scevgep40.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %705, i64 0, i64 0, i64 0
  %706 = load i8, i8* %scevgep33.4.3, align 1
  %conv.i211.4.3 = zext i8 %706 to i32
  %707 = load i8, i8* %scevgep40.4.3, align 1
  %conv5.i216.4.3 = zext i8 %707 to i32
  %xor.i217.4.3 = xor i32 %conv.i211.4.3, %conv5.i216.4.3
  %conv6.i218.4.3 = trunc i32 %xor.i217.4.3 to i8
  %scevgep45.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 4
  store i8 %conv6.i218.4.3, i8* %scevgep45.4.3, align 1
  %scevgep30.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %704, i64 0, i64 0, i64 1
  %708 = bitcast i8* %scevgep30.4.3 to [22 x [11 x i8]]*
  %scevgep39.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %705, i64 0, i64 0, i64 1
  %709 = bitcast i8* %scevgep39.4.3 to [22 x [11 x i8]]*
  %scevgep33.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %708, i64 0, i64 0, i64 0
  %scevgep40.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %709, i64 0, i64 0, i64 0
  %710 = load i8, i8* %scevgep33.5.3, align 1
  %conv.i211.5.3 = zext i8 %710 to i32
  %711 = load i8, i8* %scevgep40.5.3, align 1
  %conv5.i216.5.3 = zext i8 %711 to i32
  %xor.i217.5.3 = xor i32 %conv.i211.5.3, %conv5.i216.5.3
  %conv6.i218.5.3 = trunc i32 %xor.i217.5.3 to i8
  %scevgep45.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 5
  store i8 %conv6.i218.5.3, i8* %scevgep45.5.3, align 1
  %scevgep30.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %708, i64 0, i64 0, i64 1
  %712 = bitcast i8* %scevgep30.5.3 to [22 x [11 x i8]]*
  %scevgep39.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %709, i64 0, i64 0, i64 1
  %713 = bitcast i8* %scevgep39.5.3 to [22 x [11 x i8]]*
  %scevgep33.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %712, i64 0, i64 0, i64 0
  %scevgep40.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %713, i64 0, i64 0, i64 0
  %714 = load i8, i8* %scevgep33.6.3, align 1
  %conv.i211.6.3 = zext i8 %714 to i32
  %715 = load i8, i8* %scevgep40.6.3, align 1
  %conv5.i216.6.3 = zext i8 %715 to i32
  %xor.i217.6.3 = xor i32 %conv.i211.6.3, %conv5.i216.6.3
  %conv6.i218.6.3 = trunc i32 %xor.i217.6.3 to i8
  %scevgep45.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 6
  store i8 %conv6.i218.6.3, i8* %scevgep45.6.3, align 1
  %scevgep30.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %712, i64 0, i64 0, i64 1
  %716 = bitcast i8* %scevgep30.6.3 to [22 x [11 x i8]]*
  %scevgep39.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %713, i64 0, i64 0, i64 1
  %717 = bitcast i8* %scevgep39.6.3 to [22 x [11 x i8]]*
  %scevgep33.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %716, i64 0, i64 0, i64 0
  %scevgep40.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %717, i64 0, i64 0, i64 0
  %718 = load i8, i8* %scevgep33.7.3, align 1
  %conv.i211.7.3 = zext i8 %718 to i32
  %719 = load i8, i8* %scevgep40.7.3, align 1
  %conv5.i216.7.3 = zext i8 %719 to i32
  %xor.i217.7.3 = xor i32 %conv.i211.7.3, %conv5.i216.7.3
  %conv6.i218.7.3 = trunc i32 %xor.i217.7.3 to i8
  %scevgep45.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 7
  store i8 %conv6.i218.7.3, i8* %scevgep45.7.3, align 1
  %scevgep30.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %716, i64 0, i64 0, i64 1
  %720 = bitcast i8* %scevgep30.7.3 to [22 x [11 x i8]]*
  %scevgep39.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %717, i64 0, i64 0, i64 1
  %721 = bitcast i8* %scevgep39.7.3 to [22 x [11 x i8]]*
  %scevgep33.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %720, i64 0, i64 0, i64 0
  %scevgep40.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %721, i64 0, i64 0, i64 0
  %722 = load i8, i8* %scevgep33.8.3, align 1
  %conv.i211.8.3 = zext i8 %722 to i32
  %723 = load i8, i8* %scevgep40.8.3, align 1
  %conv5.i216.8.3 = zext i8 %723 to i32
  %xor.i217.8.3 = xor i32 %conv.i211.8.3, %conv5.i216.8.3
  %conv6.i218.8.3 = trunc i32 %xor.i217.8.3 to i8
  %scevgep45.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 8
  store i8 %conv6.i218.8.3, i8* %scevgep45.8.3, align 1
  %scevgep30.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %720, i64 0, i64 0, i64 1
  %724 = bitcast i8* %scevgep30.8.3 to [22 x [11 x i8]]*
  %scevgep39.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %721, i64 0, i64 0, i64 1
  %725 = bitcast i8* %scevgep39.8.3 to [22 x [11 x i8]]*
  %scevgep33.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %724, i64 0, i64 0, i64 0
  %scevgep40.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %725, i64 0, i64 0, i64 0
  %726 = load i8, i8* %scevgep33.9.3, align 1
  %conv.i211.9.3 = zext i8 %726 to i32
  %727 = load i8, i8* %scevgep40.9.3, align 1
  %conv5.i216.9.3 = zext i8 %727 to i32
  %xor.i217.9.3 = xor i32 %conv.i211.9.3, %conv5.i216.9.3
  %conv6.i218.9.3 = trunc i32 %xor.i217.9.3 to i8
  %scevgep45.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 9
  store i8 %conv6.i218.9.3, i8* %scevgep45.9.3, align 1
  %scevgep30.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %724, i64 0, i64 0, i64 1
  %728 = bitcast i8* %scevgep30.9.3 to [22 x [11 x i8]]*
  %scevgep39.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %725, i64 0, i64 0, i64 1
  %729 = bitcast i8* %scevgep39.9.3 to [22 x [11 x i8]]*
  %scevgep33.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %728, i64 0, i64 0, i64 0
  %scevgep40.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %729, i64 0, i64 0, i64 0
  %730 = load i8, i8* %scevgep33.10.3, align 1
  %conv.i211.10.3 = zext i8 %730 to i32
  %731 = load i8, i8* %scevgep40.10.3, align 1
  %conv5.i216.10.3 = zext i8 %731 to i32
  %xor.i217.10.3 = xor i32 %conv.i211.10.3, %conv5.i216.10.3
  %conv6.i218.10.3 = trunc i32 %xor.i217.10.3 to i8
  %scevgep45.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 10
  store i8 %conv6.i218.10.3, i8* %scevgep45.10.3, align 1
  %scevgep51.3212 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 0
  %scevgep58.3213 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %687, i64 0, i64 0, i64 0
  %732 = load i8, i8* %scevgep51.3212, align 1
  %conv.i244.3214 = zext i8 %732 to i32
  %733 = load i8, i8* %scevgep58.3213, align 1
  %conv5.i249.3215 = zext i8 %733 to i32
  %xor.i250.3216 = xor i32 %conv.i244.3214, %conv5.i249.3215
  %conv6.i251.3217 = trunc i32 %xor.i250.3216 to i8
  %scevgep63.3218 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 0
  store i8 %conv6.i251.3217, i8* %scevgep63.3218, align 1
  %scevgep48.3219 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 0, i64 1
  %734 = bitcast i8* %scevgep48.3219 to [22 x [11 x i8]]*
  %scevgep57.3220 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %687, i64 0, i64 0, i64 1
  %735 = bitcast i8* %scevgep57.3220 to [22 x [11 x i8]]*
  %scevgep51.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %734, i64 0, i64 0, i64 0
  %scevgep58.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %735, i64 0, i64 0, i64 0
  %736 = load i8, i8* %scevgep51.1.3, align 1
  %conv.i244.1.3 = zext i8 %736 to i32
  %737 = load i8, i8* %scevgep58.1.3, align 1
  %conv5.i249.1.3 = zext i8 %737 to i32
  %xor.i250.1.3 = xor i32 %conv.i244.1.3, %conv5.i249.1.3
  %conv6.i251.1.3 = trunc i32 %xor.i250.1.3 to i8
  %scevgep63.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 1
  store i8 %conv6.i251.1.3, i8* %scevgep63.1.3, align 1
  %scevgep48.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %734, i64 0, i64 0, i64 1
  %738 = bitcast i8* %scevgep48.1.3 to [22 x [11 x i8]]*
  %scevgep57.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %735, i64 0, i64 0, i64 1
  %739 = bitcast i8* %scevgep57.1.3 to [22 x [11 x i8]]*
  %scevgep51.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %738, i64 0, i64 0, i64 0
  %scevgep58.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %739, i64 0, i64 0, i64 0
  %740 = load i8, i8* %scevgep51.2.3, align 1
  %conv.i244.2.3 = zext i8 %740 to i32
  %741 = load i8, i8* %scevgep58.2.3, align 1
  %conv5.i249.2.3 = zext i8 %741 to i32
  %xor.i250.2.3 = xor i32 %conv.i244.2.3, %conv5.i249.2.3
  %conv6.i251.2.3 = trunc i32 %xor.i250.2.3 to i8
  %scevgep63.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 2
  store i8 %conv6.i251.2.3, i8* %scevgep63.2.3, align 1
  %scevgep48.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %738, i64 0, i64 0, i64 1
  %742 = bitcast i8* %scevgep48.2.3 to [22 x [11 x i8]]*
  %scevgep57.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %739, i64 0, i64 0, i64 1
  %743 = bitcast i8* %scevgep57.2.3 to [22 x [11 x i8]]*
  %scevgep51.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %742, i64 0, i64 0, i64 0
  %scevgep58.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %743, i64 0, i64 0, i64 0
  %744 = load i8, i8* %scevgep51.3.3, align 1
  %conv.i244.3.3 = zext i8 %744 to i32
  %745 = load i8, i8* %scevgep58.3.3, align 1
  %conv5.i249.3.3 = zext i8 %745 to i32
  %xor.i250.3.3 = xor i32 %conv.i244.3.3, %conv5.i249.3.3
  %conv6.i251.3.3 = trunc i32 %xor.i250.3.3 to i8
  %scevgep63.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 3
  store i8 %conv6.i251.3.3, i8* %scevgep63.3.3, align 1
  %scevgep48.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %742, i64 0, i64 0, i64 1
  %746 = bitcast i8* %scevgep48.3.3 to [22 x [11 x i8]]*
  %scevgep57.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %743, i64 0, i64 0, i64 1
  %747 = bitcast i8* %scevgep57.3.3 to [22 x [11 x i8]]*
  %scevgep51.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %746, i64 0, i64 0, i64 0
  %scevgep58.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %747, i64 0, i64 0, i64 0
  %748 = load i8, i8* %scevgep51.4.3, align 1
  %conv.i244.4.3 = zext i8 %748 to i32
  %749 = load i8, i8* %scevgep58.4.3, align 1
  %conv5.i249.4.3 = zext i8 %749 to i32
  %xor.i250.4.3 = xor i32 %conv.i244.4.3, %conv5.i249.4.3
  %conv6.i251.4.3 = trunc i32 %xor.i250.4.3 to i8
  %scevgep63.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 4
  store i8 %conv6.i251.4.3, i8* %scevgep63.4.3, align 1
  %scevgep48.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %746, i64 0, i64 0, i64 1
  %750 = bitcast i8* %scevgep48.4.3 to [22 x [11 x i8]]*
  %scevgep57.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %747, i64 0, i64 0, i64 1
  %751 = bitcast i8* %scevgep57.4.3 to [22 x [11 x i8]]*
  %scevgep51.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %750, i64 0, i64 0, i64 0
  %scevgep58.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %751, i64 0, i64 0, i64 0
  %752 = load i8, i8* %scevgep51.5.3, align 1
  %conv.i244.5.3 = zext i8 %752 to i32
  %753 = load i8, i8* %scevgep58.5.3, align 1
  %conv5.i249.5.3 = zext i8 %753 to i32
  %xor.i250.5.3 = xor i32 %conv.i244.5.3, %conv5.i249.5.3
  %conv6.i251.5.3 = trunc i32 %xor.i250.5.3 to i8
  %scevgep63.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 5
  store i8 %conv6.i251.5.3, i8* %scevgep63.5.3, align 1
  %scevgep48.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %750, i64 0, i64 0, i64 1
  %754 = bitcast i8* %scevgep48.5.3 to [22 x [11 x i8]]*
  %scevgep57.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %751, i64 0, i64 0, i64 1
  %755 = bitcast i8* %scevgep57.5.3 to [22 x [11 x i8]]*
  %scevgep51.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %754, i64 0, i64 0, i64 0
  %scevgep58.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %755, i64 0, i64 0, i64 0
  %756 = load i8, i8* %scevgep51.6.3, align 1
  %conv.i244.6.3 = zext i8 %756 to i32
  %757 = load i8, i8* %scevgep58.6.3, align 1
  %conv5.i249.6.3 = zext i8 %757 to i32
  %xor.i250.6.3 = xor i32 %conv.i244.6.3, %conv5.i249.6.3
  %conv6.i251.6.3 = trunc i32 %xor.i250.6.3 to i8
  %scevgep63.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 6
  store i8 %conv6.i251.6.3, i8* %scevgep63.6.3, align 1
  %scevgep48.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %754, i64 0, i64 0, i64 1
  %758 = bitcast i8* %scevgep48.6.3 to [22 x [11 x i8]]*
  %scevgep57.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %755, i64 0, i64 0, i64 1
  %759 = bitcast i8* %scevgep57.6.3 to [22 x [11 x i8]]*
  %scevgep51.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %758, i64 0, i64 0, i64 0
  %scevgep58.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %759, i64 0, i64 0, i64 0
  %760 = load i8, i8* %scevgep51.7.3, align 1
  %conv.i244.7.3 = zext i8 %760 to i32
  %761 = load i8, i8* %scevgep58.7.3, align 1
  %conv5.i249.7.3 = zext i8 %761 to i32
  %xor.i250.7.3 = xor i32 %conv.i244.7.3, %conv5.i249.7.3
  %conv6.i251.7.3 = trunc i32 %xor.i250.7.3 to i8
  %scevgep63.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 7
  store i8 %conv6.i251.7.3, i8* %scevgep63.7.3, align 1
  %scevgep48.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %758, i64 0, i64 0, i64 1
  %762 = bitcast i8* %scevgep48.7.3 to [22 x [11 x i8]]*
  %scevgep57.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %759, i64 0, i64 0, i64 1
  %763 = bitcast i8* %scevgep57.7.3 to [22 x [11 x i8]]*
  %scevgep51.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %762, i64 0, i64 0, i64 0
  %scevgep58.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %763, i64 0, i64 0, i64 0
  %764 = load i8, i8* %scevgep51.8.3, align 1
  %conv.i244.8.3 = zext i8 %764 to i32
  %765 = load i8, i8* %scevgep58.8.3, align 1
  %conv5.i249.8.3 = zext i8 %765 to i32
  %xor.i250.8.3 = xor i32 %conv.i244.8.3, %conv5.i249.8.3
  %conv6.i251.8.3 = trunc i32 %xor.i250.8.3 to i8
  %scevgep63.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 8
  store i8 %conv6.i251.8.3, i8* %scevgep63.8.3, align 1
  %scevgep48.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %762, i64 0, i64 0, i64 1
  %766 = bitcast i8* %scevgep48.8.3 to [22 x [11 x i8]]*
  %scevgep57.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %763, i64 0, i64 0, i64 1
  %767 = bitcast i8* %scevgep57.8.3 to [22 x [11 x i8]]*
  %scevgep51.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %766, i64 0, i64 0, i64 0
  %scevgep58.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %767, i64 0, i64 0, i64 0
  %768 = load i8, i8* %scevgep51.9.3, align 1
  %conv.i244.9.3 = zext i8 %768 to i32
  %769 = load i8, i8* %scevgep58.9.3, align 1
  %conv5.i249.9.3 = zext i8 %769 to i32
  %xor.i250.9.3 = xor i32 %conv.i244.9.3, %conv5.i249.9.3
  %conv6.i251.9.3 = trunc i32 %xor.i250.9.3 to i8
  %scevgep63.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 9
  store i8 %conv6.i251.9.3, i8* %scevgep63.9.3, align 1
  %scevgep48.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %766, i64 0, i64 0, i64 1
  %770 = bitcast i8* %scevgep48.9.3 to [22 x [11 x i8]]*
  %scevgep57.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %767, i64 0, i64 0, i64 1
  %771 = bitcast i8* %scevgep57.9.3 to [22 x [11 x i8]]*
  %scevgep51.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %770, i64 0, i64 0, i64 0
  %scevgep58.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %771, i64 0, i64 0, i64 0
  %772 = load i8, i8* %scevgep51.10.3, align 1
  %conv.i244.10.3 = zext i8 %772 to i32
  %773 = load i8, i8* %scevgep58.10.3, align 1
  %conv5.i249.10.3 = zext i8 %773 to i32
  %xor.i250.10.3 = xor i32 %conv.i244.10.3, %conv5.i249.10.3
  %conv6.i251.10.3 = trunc i32 %xor.i250.10.3 to i8
  %scevgep63.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 10
  store i8 %conv6.i251.10.3, i8* %scevgep63.10.3, align 1
  %arrayidx84.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 3
  %arraydecay85.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx84.3, i64 0, i64 0
  %scevgep69.3221 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 0
  %774 = load i8, i8* %scevgep69.3221, align 1
  %conv.i269.3222 = zext i8 %774 to i32
  %775 = load i8, i8* %arraydecay85.3, align 1
  %conv5.i274.3225 = zext i8 %775 to i32
  %xor.i275.3226 = xor i32 %conv.i269.3222, %conv5.i274.3225
  %conv6.i276.3227 = trunc i32 %xor.i275.3226 to i8
  %scevgep78.3228 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 0
  store i8 %conv6.i276.3227, i8* %scevgep78.3228, align 1
  %scevgep66.3229 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 0, i64 1
  %776 = bitcast i8* %scevgep66.3229 to [22 x [11 x i8]]*
  %scevgep69.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %776, i64 0, i64 0, i64 0
  %777 = load i8, i8* %scevgep69.1.3, align 1
  %conv.i269.1.3 = zext i8 %777 to i32
  %arrayidx4.i273.1.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 1
  %778 = load i8, i8* %arrayidx4.i273.1.3, align 1
  %conv5.i274.1.3 = zext i8 %778 to i32
  %xor.i275.1.3 = xor i32 %conv.i269.1.3, %conv5.i274.1.3
  %conv6.i276.1.3 = trunc i32 %xor.i275.1.3 to i8
  %scevgep78.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 1
  store i8 %conv6.i276.1.3, i8* %scevgep78.1.3, align 1
  %scevgep66.1.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %776, i64 0, i64 0, i64 1
  %779 = bitcast i8* %scevgep66.1.3 to [22 x [11 x i8]]*
  %scevgep69.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %779, i64 0, i64 0, i64 0
  %780 = load i8, i8* %scevgep69.2.3, align 1
  %conv.i269.2.3 = zext i8 %780 to i32
  %arrayidx4.i273.2.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 2
  %781 = load i8, i8* %arrayidx4.i273.2.3, align 1
  %conv5.i274.2.3 = zext i8 %781 to i32
  %xor.i275.2.3 = xor i32 %conv.i269.2.3, %conv5.i274.2.3
  %conv6.i276.2.3 = trunc i32 %xor.i275.2.3 to i8
  %scevgep78.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 2
  store i8 %conv6.i276.2.3, i8* %scevgep78.2.3, align 1
  %scevgep66.2.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %779, i64 0, i64 0, i64 1
  %782 = bitcast i8* %scevgep66.2.3 to [22 x [11 x i8]]*
  %scevgep69.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %782, i64 0, i64 0, i64 0
  %783 = load i8, i8* %scevgep69.3.3, align 1
  %conv.i269.3.3 = zext i8 %783 to i32
  %arrayidx4.i273.3.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 3
  %784 = load i8, i8* %arrayidx4.i273.3.3, align 1
  %conv5.i274.3.3 = zext i8 %784 to i32
  %xor.i275.3.3 = xor i32 %conv.i269.3.3, %conv5.i274.3.3
  %conv6.i276.3.3 = trunc i32 %xor.i275.3.3 to i8
  %scevgep78.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 3
  store i8 %conv6.i276.3.3, i8* %scevgep78.3.3, align 1
  %scevgep66.3.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %782, i64 0, i64 0, i64 1
  %785 = bitcast i8* %scevgep66.3.3 to [22 x [11 x i8]]*
  %scevgep69.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %785, i64 0, i64 0, i64 0
  %786 = load i8, i8* %scevgep69.4.3, align 1
  %conv.i269.4.3 = zext i8 %786 to i32
  %arrayidx4.i273.4.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 4
  %787 = load i8, i8* %arrayidx4.i273.4.3, align 1
  %conv5.i274.4.3 = zext i8 %787 to i32
  %xor.i275.4.3 = xor i32 %conv.i269.4.3, %conv5.i274.4.3
  %conv6.i276.4.3 = trunc i32 %xor.i275.4.3 to i8
  %scevgep78.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 4
  store i8 %conv6.i276.4.3, i8* %scevgep78.4.3, align 1
  %scevgep66.4.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %785, i64 0, i64 0, i64 1
  %788 = bitcast i8* %scevgep66.4.3 to [22 x [11 x i8]]*
  %scevgep69.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %788, i64 0, i64 0, i64 0
  %789 = load i8, i8* %scevgep69.5.3, align 1
  %conv.i269.5.3 = zext i8 %789 to i32
  %arrayidx4.i273.5.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 5
  %790 = load i8, i8* %arrayidx4.i273.5.3, align 1
  %conv5.i274.5.3 = zext i8 %790 to i32
  %xor.i275.5.3 = xor i32 %conv.i269.5.3, %conv5.i274.5.3
  %conv6.i276.5.3 = trunc i32 %xor.i275.5.3 to i8
  %scevgep78.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 5
  store i8 %conv6.i276.5.3, i8* %scevgep78.5.3, align 1
  %scevgep66.5.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %788, i64 0, i64 0, i64 1
  %791 = bitcast i8* %scevgep66.5.3 to [22 x [11 x i8]]*
  %scevgep69.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %791, i64 0, i64 0, i64 0
  %792 = load i8, i8* %scevgep69.6.3, align 1
  %conv.i269.6.3 = zext i8 %792 to i32
  %arrayidx4.i273.6.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 6
  %793 = load i8, i8* %arrayidx4.i273.6.3, align 1
  %conv5.i274.6.3 = zext i8 %793 to i32
  %xor.i275.6.3 = xor i32 %conv.i269.6.3, %conv5.i274.6.3
  %conv6.i276.6.3 = trunc i32 %xor.i275.6.3 to i8
  %scevgep78.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 6
  store i8 %conv6.i276.6.3, i8* %scevgep78.6.3, align 1
  %scevgep66.6.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %791, i64 0, i64 0, i64 1
  %794 = bitcast i8* %scevgep66.6.3 to [22 x [11 x i8]]*
  %scevgep69.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %794, i64 0, i64 0, i64 0
  %795 = load i8, i8* %scevgep69.7.3, align 1
  %conv.i269.7.3 = zext i8 %795 to i32
  %arrayidx4.i273.7.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 7
  %796 = load i8, i8* %arrayidx4.i273.7.3, align 1
  %conv5.i274.7.3 = zext i8 %796 to i32
  %xor.i275.7.3 = xor i32 %conv.i269.7.3, %conv5.i274.7.3
  %conv6.i276.7.3 = trunc i32 %xor.i275.7.3 to i8
  %scevgep78.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 7
  store i8 %conv6.i276.7.3, i8* %scevgep78.7.3, align 1
  %scevgep66.7.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %794, i64 0, i64 0, i64 1
  %797 = bitcast i8* %scevgep66.7.3 to [22 x [11 x i8]]*
  %scevgep69.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %797, i64 0, i64 0, i64 0
  %798 = load i8, i8* %scevgep69.8.3, align 1
  %conv.i269.8.3 = zext i8 %798 to i32
  %arrayidx4.i273.8.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 8
  %799 = load i8, i8* %arrayidx4.i273.8.3, align 1
  %conv5.i274.8.3 = zext i8 %799 to i32
  %xor.i275.8.3 = xor i32 %conv.i269.8.3, %conv5.i274.8.3
  %conv6.i276.8.3 = trunc i32 %xor.i275.8.3 to i8
  %scevgep78.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 8
  store i8 %conv6.i276.8.3, i8* %scevgep78.8.3, align 1
  %scevgep66.8.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %797, i64 0, i64 0, i64 1
  %800 = bitcast i8* %scevgep66.8.3 to [22 x [11 x i8]]*
  %scevgep69.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %800, i64 0, i64 0, i64 0
  %801 = load i8, i8* %scevgep69.9.3, align 1
  %conv.i269.9.3 = zext i8 %801 to i32
  %arrayidx4.i273.9.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 9
  %802 = load i8, i8* %arrayidx4.i273.9.3, align 1
  %conv5.i274.9.3 = zext i8 %802 to i32
  %xor.i275.9.3 = xor i32 %conv.i269.9.3, %conv5.i274.9.3
  %conv6.i276.9.3 = trunc i32 %xor.i275.9.3 to i8
  %scevgep78.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 9
  store i8 %conv6.i276.9.3, i8* %scevgep78.9.3, align 1
  %scevgep66.9.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %800, i64 0, i64 0, i64 1
  %803 = bitcast i8* %scevgep66.9.3 to [22 x [11 x i8]]*
  %scevgep69.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %803, i64 0, i64 0, i64 0
  %804 = load i8, i8* %scevgep69.10.3, align 1
  %conv.i269.10.3 = zext i8 %804 to i32
  %arrayidx4.i273.10.3 = getelementptr inbounds i8, i8* %arraydecay85.3, i64 10
  %805 = load i8, i8* %arrayidx4.i273.10.3, align 1
  %conv5.i274.10.3 = zext i8 %805 to i32
  %xor.i275.10.3 = xor i32 %conv.i269.10.3, %conv5.i274.10.3
  %conv6.i276.10.3 = trunc i32 %xor.i275.10.3 to i8
  %scevgep78.10.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 0, i64 10
  store i8 %conv6.i276.10.3, i8* %scevgep78.10.3, align 1
  %scevgep28.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %684, i64 0, i64 3, i64 0
  %806 = bitcast i8* %scevgep28.3 to [22 x [11 x i8]]*
  %scevgep37.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %685, i64 0, i64 2, i64 0
  %807 = bitcast i8* %scevgep37.3 to [22 x [11 x i8]]*
  %scevgep44.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %686, i64 0, i64 3, i64 0
  %808 = bitcast i8* %scevgep44.3 to [22 x [11 x i8]]*
  %scevgep55.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %687, i64 0, i64 2, i64 0
  %809 = bitcast i8* %scevgep55.3 to [22 x [11 x i8]]*
  %scevgep62.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %688, i64 0, i64 3, i64 0
  %810 = bitcast i8* %scevgep62.3 to [22 x [11 x i8]]*
  %scevgep77.3 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %689, i64 0, i64 3, i64 0
  %811 = bitcast i8* %scevgep77.3 to [22 x [11 x i8]]*
  %scevgep33.4231 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %806, i64 0, i64 0, i64 0
  %scevgep40.4232 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %807, i64 0, i64 0, i64 0
  %812 = load i8, i8* %scevgep33.4231, align 1
  %conv.i211.4233 = zext i8 %812 to i32
  %813 = load i8, i8* %scevgep40.4232, align 1
  %conv5.i216.4234 = zext i8 %813 to i32
  %xor.i217.4235 = xor i32 %conv.i211.4233, %conv5.i216.4234
  %conv6.i218.4236 = trunc i32 %xor.i217.4235 to i8
  %scevgep45.4237 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 0
  store i8 %conv6.i218.4236, i8* %scevgep45.4237, align 1
  %scevgep30.4238 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %806, i64 0, i64 0, i64 1
  %814 = bitcast i8* %scevgep30.4238 to [22 x [11 x i8]]*
  %scevgep39.4239 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %807, i64 0, i64 0, i64 1
  %815 = bitcast i8* %scevgep39.4239 to [22 x [11 x i8]]*
  %scevgep33.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %814, i64 0, i64 0, i64 0
  %scevgep40.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %815, i64 0, i64 0, i64 0
  %816 = load i8, i8* %scevgep33.1.4, align 1
  %conv.i211.1.4 = zext i8 %816 to i32
  %817 = load i8, i8* %scevgep40.1.4, align 1
  %conv5.i216.1.4 = zext i8 %817 to i32
  %xor.i217.1.4 = xor i32 %conv.i211.1.4, %conv5.i216.1.4
  %conv6.i218.1.4 = trunc i32 %xor.i217.1.4 to i8
  %scevgep45.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 1
  store i8 %conv6.i218.1.4, i8* %scevgep45.1.4, align 1
  %scevgep30.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %814, i64 0, i64 0, i64 1
  %818 = bitcast i8* %scevgep30.1.4 to [22 x [11 x i8]]*
  %scevgep39.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %815, i64 0, i64 0, i64 1
  %819 = bitcast i8* %scevgep39.1.4 to [22 x [11 x i8]]*
  %scevgep33.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %818, i64 0, i64 0, i64 0
  %scevgep40.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %819, i64 0, i64 0, i64 0
  %820 = load i8, i8* %scevgep33.2.4, align 1
  %conv.i211.2.4 = zext i8 %820 to i32
  %821 = load i8, i8* %scevgep40.2.4, align 1
  %conv5.i216.2.4 = zext i8 %821 to i32
  %xor.i217.2.4 = xor i32 %conv.i211.2.4, %conv5.i216.2.4
  %conv6.i218.2.4 = trunc i32 %xor.i217.2.4 to i8
  %scevgep45.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 2
  store i8 %conv6.i218.2.4, i8* %scevgep45.2.4, align 1
  %scevgep30.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %818, i64 0, i64 0, i64 1
  %822 = bitcast i8* %scevgep30.2.4 to [22 x [11 x i8]]*
  %scevgep39.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %819, i64 0, i64 0, i64 1
  %823 = bitcast i8* %scevgep39.2.4 to [22 x [11 x i8]]*
  %scevgep33.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %822, i64 0, i64 0, i64 0
  %scevgep40.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %823, i64 0, i64 0, i64 0
  %824 = load i8, i8* %scevgep33.3.4, align 1
  %conv.i211.3.4 = zext i8 %824 to i32
  %825 = load i8, i8* %scevgep40.3.4, align 1
  %conv5.i216.3.4 = zext i8 %825 to i32
  %xor.i217.3.4 = xor i32 %conv.i211.3.4, %conv5.i216.3.4
  %conv6.i218.3.4 = trunc i32 %xor.i217.3.4 to i8
  %scevgep45.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 3
  store i8 %conv6.i218.3.4, i8* %scevgep45.3.4, align 1
  %scevgep30.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %822, i64 0, i64 0, i64 1
  %826 = bitcast i8* %scevgep30.3.4 to [22 x [11 x i8]]*
  %scevgep39.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %823, i64 0, i64 0, i64 1
  %827 = bitcast i8* %scevgep39.3.4 to [22 x [11 x i8]]*
  %scevgep33.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %826, i64 0, i64 0, i64 0
  %scevgep40.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %827, i64 0, i64 0, i64 0
  %828 = load i8, i8* %scevgep33.4.4, align 1
  %conv.i211.4.4 = zext i8 %828 to i32
  %829 = load i8, i8* %scevgep40.4.4, align 1
  %conv5.i216.4.4 = zext i8 %829 to i32
  %xor.i217.4.4 = xor i32 %conv.i211.4.4, %conv5.i216.4.4
  %conv6.i218.4.4 = trunc i32 %xor.i217.4.4 to i8
  %scevgep45.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 4
  store i8 %conv6.i218.4.4, i8* %scevgep45.4.4, align 1
  %scevgep30.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %826, i64 0, i64 0, i64 1
  %830 = bitcast i8* %scevgep30.4.4 to [22 x [11 x i8]]*
  %scevgep39.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %827, i64 0, i64 0, i64 1
  %831 = bitcast i8* %scevgep39.4.4 to [22 x [11 x i8]]*
  %scevgep33.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %830, i64 0, i64 0, i64 0
  %scevgep40.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %831, i64 0, i64 0, i64 0
  %832 = load i8, i8* %scevgep33.5.4, align 1
  %conv.i211.5.4 = zext i8 %832 to i32
  %833 = load i8, i8* %scevgep40.5.4, align 1
  %conv5.i216.5.4 = zext i8 %833 to i32
  %xor.i217.5.4 = xor i32 %conv.i211.5.4, %conv5.i216.5.4
  %conv6.i218.5.4 = trunc i32 %xor.i217.5.4 to i8
  %scevgep45.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 5
  store i8 %conv6.i218.5.4, i8* %scevgep45.5.4, align 1
  %scevgep30.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %830, i64 0, i64 0, i64 1
  %834 = bitcast i8* %scevgep30.5.4 to [22 x [11 x i8]]*
  %scevgep39.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %831, i64 0, i64 0, i64 1
  %835 = bitcast i8* %scevgep39.5.4 to [22 x [11 x i8]]*
  %scevgep33.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %834, i64 0, i64 0, i64 0
  %scevgep40.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %835, i64 0, i64 0, i64 0
  %836 = load i8, i8* %scevgep33.6.4, align 1
  %conv.i211.6.4 = zext i8 %836 to i32
  %837 = load i8, i8* %scevgep40.6.4, align 1
  %conv5.i216.6.4 = zext i8 %837 to i32
  %xor.i217.6.4 = xor i32 %conv.i211.6.4, %conv5.i216.6.4
  %conv6.i218.6.4 = trunc i32 %xor.i217.6.4 to i8
  %scevgep45.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 6
  store i8 %conv6.i218.6.4, i8* %scevgep45.6.4, align 1
  %scevgep30.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %834, i64 0, i64 0, i64 1
  %838 = bitcast i8* %scevgep30.6.4 to [22 x [11 x i8]]*
  %scevgep39.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %835, i64 0, i64 0, i64 1
  %839 = bitcast i8* %scevgep39.6.4 to [22 x [11 x i8]]*
  %scevgep33.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %838, i64 0, i64 0, i64 0
  %scevgep40.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %839, i64 0, i64 0, i64 0
  %840 = load i8, i8* %scevgep33.7.4, align 1
  %conv.i211.7.4 = zext i8 %840 to i32
  %841 = load i8, i8* %scevgep40.7.4, align 1
  %conv5.i216.7.4 = zext i8 %841 to i32
  %xor.i217.7.4 = xor i32 %conv.i211.7.4, %conv5.i216.7.4
  %conv6.i218.7.4 = trunc i32 %xor.i217.7.4 to i8
  %scevgep45.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 7
  store i8 %conv6.i218.7.4, i8* %scevgep45.7.4, align 1
  %scevgep30.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %838, i64 0, i64 0, i64 1
  %842 = bitcast i8* %scevgep30.7.4 to [22 x [11 x i8]]*
  %scevgep39.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %839, i64 0, i64 0, i64 1
  %843 = bitcast i8* %scevgep39.7.4 to [22 x [11 x i8]]*
  %scevgep33.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %842, i64 0, i64 0, i64 0
  %scevgep40.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %843, i64 0, i64 0, i64 0
  %844 = load i8, i8* %scevgep33.8.4, align 1
  %conv.i211.8.4 = zext i8 %844 to i32
  %845 = load i8, i8* %scevgep40.8.4, align 1
  %conv5.i216.8.4 = zext i8 %845 to i32
  %xor.i217.8.4 = xor i32 %conv.i211.8.4, %conv5.i216.8.4
  %conv6.i218.8.4 = trunc i32 %xor.i217.8.4 to i8
  %scevgep45.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 8
  store i8 %conv6.i218.8.4, i8* %scevgep45.8.4, align 1
  %scevgep30.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %842, i64 0, i64 0, i64 1
  %846 = bitcast i8* %scevgep30.8.4 to [22 x [11 x i8]]*
  %scevgep39.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %843, i64 0, i64 0, i64 1
  %847 = bitcast i8* %scevgep39.8.4 to [22 x [11 x i8]]*
  %scevgep33.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %846, i64 0, i64 0, i64 0
  %scevgep40.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %847, i64 0, i64 0, i64 0
  %848 = load i8, i8* %scevgep33.9.4, align 1
  %conv.i211.9.4 = zext i8 %848 to i32
  %849 = load i8, i8* %scevgep40.9.4, align 1
  %conv5.i216.9.4 = zext i8 %849 to i32
  %xor.i217.9.4 = xor i32 %conv.i211.9.4, %conv5.i216.9.4
  %conv6.i218.9.4 = trunc i32 %xor.i217.9.4 to i8
  %scevgep45.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 9
  store i8 %conv6.i218.9.4, i8* %scevgep45.9.4, align 1
  %scevgep30.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %846, i64 0, i64 0, i64 1
  %850 = bitcast i8* %scevgep30.9.4 to [22 x [11 x i8]]*
  %scevgep39.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %847, i64 0, i64 0, i64 1
  %851 = bitcast i8* %scevgep39.9.4 to [22 x [11 x i8]]*
  %scevgep33.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %850, i64 0, i64 0, i64 0
  %scevgep40.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %851, i64 0, i64 0, i64 0
  %852 = load i8, i8* %scevgep33.10.4, align 1
  %conv.i211.10.4 = zext i8 %852 to i32
  %853 = load i8, i8* %scevgep40.10.4, align 1
  %conv5.i216.10.4 = zext i8 %853 to i32
  %xor.i217.10.4 = xor i32 %conv.i211.10.4, %conv5.i216.10.4
  %conv6.i218.10.4 = trunc i32 %xor.i217.10.4 to i8
  %scevgep45.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 10
  store i8 %conv6.i218.10.4, i8* %scevgep45.10.4, align 1
  %scevgep51.4240 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 0
  %scevgep58.4241 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %809, i64 0, i64 0, i64 0
  %854 = load i8, i8* %scevgep51.4240, align 1
  %conv.i244.4242 = zext i8 %854 to i32
  %855 = load i8, i8* %scevgep58.4241, align 1
  %conv5.i249.4243 = zext i8 %855 to i32
  %xor.i250.4244 = xor i32 %conv.i244.4242, %conv5.i249.4243
  %conv6.i251.4245 = trunc i32 %xor.i250.4244 to i8
  %scevgep63.4246 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 0
  store i8 %conv6.i251.4245, i8* %scevgep63.4246, align 1
  %scevgep48.4247 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %808, i64 0, i64 0, i64 1
  %856 = bitcast i8* %scevgep48.4247 to [22 x [11 x i8]]*
  %scevgep57.4248 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %809, i64 0, i64 0, i64 1
  %857 = bitcast i8* %scevgep57.4248 to [22 x [11 x i8]]*
  %scevgep51.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %856, i64 0, i64 0, i64 0
  %scevgep58.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %857, i64 0, i64 0, i64 0
  %858 = load i8, i8* %scevgep51.1.4, align 1
  %conv.i244.1.4 = zext i8 %858 to i32
  %859 = load i8, i8* %scevgep58.1.4, align 1
  %conv5.i249.1.4 = zext i8 %859 to i32
  %xor.i250.1.4 = xor i32 %conv.i244.1.4, %conv5.i249.1.4
  %conv6.i251.1.4 = trunc i32 %xor.i250.1.4 to i8
  %scevgep63.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 1
  store i8 %conv6.i251.1.4, i8* %scevgep63.1.4, align 1
  %scevgep48.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %856, i64 0, i64 0, i64 1
  %860 = bitcast i8* %scevgep48.1.4 to [22 x [11 x i8]]*
  %scevgep57.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %857, i64 0, i64 0, i64 1
  %861 = bitcast i8* %scevgep57.1.4 to [22 x [11 x i8]]*
  %scevgep51.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %860, i64 0, i64 0, i64 0
  %scevgep58.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %861, i64 0, i64 0, i64 0
  %862 = load i8, i8* %scevgep51.2.4, align 1
  %conv.i244.2.4 = zext i8 %862 to i32
  %863 = load i8, i8* %scevgep58.2.4, align 1
  %conv5.i249.2.4 = zext i8 %863 to i32
  %xor.i250.2.4 = xor i32 %conv.i244.2.4, %conv5.i249.2.4
  %conv6.i251.2.4 = trunc i32 %xor.i250.2.4 to i8
  %scevgep63.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 2
  store i8 %conv6.i251.2.4, i8* %scevgep63.2.4, align 1
  %scevgep48.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %860, i64 0, i64 0, i64 1
  %864 = bitcast i8* %scevgep48.2.4 to [22 x [11 x i8]]*
  %scevgep57.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %861, i64 0, i64 0, i64 1
  %865 = bitcast i8* %scevgep57.2.4 to [22 x [11 x i8]]*
  %scevgep51.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %864, i64 0, i64 0, i64 0
  %scevgep58.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %865, i64 0, i64 0, i64 0
  %866 = load i8, i8* %scevgep51.3.4, align 1
  %conv.i244.3.4 = zext i8 %866 to i32
  %867 = load i8, i8* %scevgep58.3.4, align 1
  %conv5.i249.3.4 = zext i8 %867 to i32
  %xor.i250.3.4 = xor i32 %conv.i244.3.4, %conv5.i249.3.4
  %conv6.i251.3.4 = trunc i32 %xor.i250.3.4 to i8
  %scevgep63.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 3
  store i8 %conv6.i251.3.4, i8* %scevgep63.3.4, align 1
  %scevgep48.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %864, i64 0, i64 0, i64 1
  %868 = bitcast i8* %scevgep48.3.4 to [22 x [11 x i8]]*
  %scevgep57.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %865, i64 0, i64 0, i64 1
  %869 = bitcast i8* %scevgep57.3.4 to [22 x [11 x i8]]*
  %scevgep51.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %868, i64 0, i64 0, i64 0
  %scevgep58.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %869, i64 0, i64 0, i64 0
  %870 = load i8, i8* %scevgep51.4.4, align 1
  %conv.i244.4.4 = zext i8 %870 to i32
  %871 = load i8, i8* %scevgep58.4.4, align 1
  %conv5.i249.4.4 = zext i8 %871 to i32
  %xor.i250.4.4 = xor i32 %conv.i244.4.4, %conv5.i249.4.4
  %conv6.i251.4.4 = trunc i32 %xor.i250.4.4 to i8
  %scevgep63.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 4
  store i8 %conv6.i251.4.4, i8* %scevgep63.4.4, align 1
  %scevgep48.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %868, i64 0, i64 0, i64 1
  %872 = bitcast i8* %scevgep48.4.4 to [22 x [11 x i8]]*
  %scevgep57.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %869, i64 0, i64 0, i64 1
  %873 = bitcast i8* %scevgep57.4.4 to [22 x [11 x i8]]*
  %scevgep51.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %872, i64 0, i64 0, i64 0
  %scevgep58.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %873, i64 0, i64 0, i64 0
  %874 = load i8, i8* %scevgep51.5.4, align 1
  %conv.i244.5.4 = zext i8 %874 to i32
  %875 = load i8, i8* %scevgep58.5.4, align 1
  %conv5.i249.5.4 = zext i8 %875 to i32
  %xor.i250.5.4 = xor i32 %conv.i244.5.4, %conv5.i249.5.4
  %conv6.i251.5.4 = trunc i32 %xor.i250.5.4 to i8
  %scevgep63.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 5
  store i8 %conv6.i251.5.4, i8* %scevgep63.5.4, align 1
  %scevgep48.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %872, i64 0, i64 0, i64 1
  %876 = bitcast i8* %scevgep48.5.4 to [22 x [11 x i8]]*
  %scevgep57.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %873, i64 0, i64 0, i64 1
  %877 = bitcast i8* %scevgep57.5.4 to [22 x [11 x i8]]*
  %scevgep51.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %876, i64 0, i64 0, i64 0
  %scevgep58.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %877, i64 0, i64 0, i64 0
  %878 = load i8, i8* %scevgep51.6.4, align 1
  %conv.i244.6.4 = zext i8 %878 to i32
  %879 = load i8, i8* %scevgep58.6.4, align 1
  %conv5.i249.6.4 = zext i8 %879 to i32
  %xor.i250.6.4 = xor i32 %conv.i244.6.4, %conv5.i249.6.4
  %conv6.i251.6.4 = trunc i32 %xor.i250.6.4 to i8
  %scevgep63.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 6
  store i8 %conv6.i251.6.4, i8* %scevgep63.6.4, align 1
  %scevgep48.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %876, i64 0, i64 0, i64 1
  %880 = bitcast i8* %scevgep48.6.4 to [22 x [11 x i8]]*
  %scevgep57.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %877, i64 0, i64 0, i64 1
  %881 = bitcast i8* %scevgep57.6.4 to [22 x [11 x i8]]*
  %scevgep51.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %880, i64 0, i64 0, i64 0
  %scevgep58.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %881, i64 0, i64 0, i64 0
  %882 = load i8, i8* %scevgep51.7.4, align 1
  %conv.i244.7.4 = zext i8 %882 to i32
  %883 = load i8, i8* %scevgep58.7.4, align 1
  %conv5.i249.7.4 = zext i8 %883 to i32
  %xor.i250.7.4 = xor i32 %conv.i244.7.4, %conv5.i249.7.4
  %conv6.i251.7.4 = trunc i32 %xor.i250.7.4 to i8
  %scevgep63.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 7
  store i8 %conv6.i251.7.4, i8* %scevgep63.7.4, align 1
  %scevgep48.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %880, i64 0, i64 0, i64 1
  %884 = bitcast i8* %scevgep48.7.4 to [22 x [11 x i8]]*
  %scevgep57.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %881, i64 0, i64 0, i64 1
  %885 = bitcast i8* %scevgep57.7.4 to [22 x [11 x i8]]*
  %scevgep51.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %884, i64 0, i64 0, i64 0
  %scevgep58.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %885, i64 0, i64 0, i64 0
  %886 = load i8, i8* %scevgep51.8.4, align 1
  %conv.i244.8.4 = zext i8 %886 to i32
  %887 = load i8, i8* %scevgep58.8.4, align 1
  %conv5.i249.8.4 = zext i8 %887 to i32
  %xor.i250.8.4 = xor i32 %conv.i244.8.4, %conv5.i249.8.4
  %conv6.i251.8.4 = trunc i32 %xor.i250.8.4 to i8
  %scevgep63.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 8
  store i8 %conv6.i251.8.4, i8* %scevgep63.8.4, align 1
  %scevgep48.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %884, i64 0, i64 0, i64 1
  %888 = bitcast i8* %scevgep48.8.4 to [22 x [11 x i8]]*
  %scevgep57.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %885, i64 0, i64 0, i64 1
  %889 = bitcast i8* %scevgep57.8.4 to [22 x [11 x i8]]*
  %scevgep51.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %888, i64 0, i64 0, i64 0
  %scevgep58.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %889, i64 0, i64 0, i64 0
  %890 = load i8, i8* %scevgep51.9.4, align 1
  %conv.i244.9.4 = zext i8 %890 to i32
  %891 = load i8, i8* %scevgep58.9.4, align 1
  %conv5.i249.9.4 = zext i8 %891 to i32
  %xor.i250.9.4 = xor i32 %conv.i244.9.4, %conv5.i249.9.4
  %conv6.i251.9.4 = trunc i32 %xor.i250.9.4 to i8
  %scevgep63.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 9
  store i8 %conv6.i251.9.4, i8* %scevgep63.9.4, align 1
  %scevgep48.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %888, i64 0, i64 0, i64 1
  %892 = bitcast i8* %scevgep48.9.4 to [22 x [11 x i8]]*
  %scevgep57.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %889, i64 0, i64 0, i64 1
  %893 = bitcast i8* %scevgep57.9.4 to [22 x [11 x i8]]*
  %scevgep51.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %892, i64 0, i64 0, i64 0
  %scevgep58.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %893, i64 0, i64 0, i64 0
  %894 = load i8, i8* %scevgep51.10.4, align 1
  %conv.i244.10.4 = zext i8 %894 to i32
  %895 = load i8, i8* %scevgep58.10.4, align 1
  %conv5.i249.10.4 = zext i8 %895 to i32
  %xor.i250.10.4 = xor i32 %conv.i244.10.4, %conv5.i249.10.4
  %conv6.i251.10.4 = trunc i32 %xor.i250.10.4 to i8
  %scevgep63.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 10
  store i8 %conv6.i251.10.4, i8* %scevgep63.10.4, align 1
  %arrayidx84.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 3
  %arraydecay85.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx84.4, i64 0, i64 0
  %scevgep69.4249 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 0
  %896 = load i8, i8* %scevgep69.4249, align 1
  %conv.i269.4250 = zext i8 %896 to i32
  %arrayidx4.i273.4252 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 1
  %897 = load i8, i8* %arrayidx4.i273.4252, align 1
  %conv5.i274.4253 = zext i8 %897 to i32
  %xor.i275.4254 = xor i32 %conv.i269.4250, %conv5.i274.4253
  %conv6.i276.4255 = trunc i32 %xor.i275.4254 to i8
  %scevgep78.4256 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 0
  store i8 %conv6.i276.4255, i8* %scevgep78.4256, align 1
  %scevgep66.4257 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %810, i64 0, i64 0, i64 1
  %898 = bitcast i8* %scevgep66.4257 to [22 x [11 x i8]]*
  %scevgep69.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %898, i64 0, i64 0, i64 0
  %899 = load i8, i8* %scevgep69.1.4, align 1
  %conv.i269.1.4 = zext i8 %899 to i32
  %arrayidx4.i273.1.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 2
  %900 = load i8, i8* %arrayidx4.i273.1.4, align 1
  %conv5.i274.1.4 = zext i8 %900 to i32
  %xor.i275.1.4 = xor i32 %conv.i269.1.4, %conv5.i274.1.4
  %conv6.i276.1.4 = trunc i32 %xor.i275.1.4 to i8
  %scevgep78.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 1
  store i8 %conv6.i276.1.4, i8* %scevgep78.1.4, align 1
  %scevgep66.1.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %898, i64 0, i64 0, i64 1
  %901 = bitcast i8* %scevgep66.1.4 to [22 x [11 x i8]]*
  %scevgep69.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %901, i64 0, i64 0, i64 0
  %902 = load i8, i8* %scevgep69.2.4, align 1
  %conv.i269.2.4 = zext i8 %902 to i32
  %arrayidx4.i273.2.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 3
  %903 = load i8, i8* %arrayidx4.i273.2.4, align 1
  %conv5.i274.2.4 = zext i8 %903 to i32
  %xor.i275.2.4 = xor i32 %conv.i269.2.4, %conv5.i274.2.4
  %conv6.i276.2.4 = trunc i32 %xor.i275.2.4 to i8
  %scevgep78.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 2
  store i8 %conv6.i276.2.4, i8* %scevgep78.2.4, align 1
  %scevgep66.2.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %901, i64 0, i64 0, i64 1
  %904 = bitcast i8* %scevgep66.2.4 to [22 x [11 x i8]]*
  %scevgep69.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %904, i64 0, i64 0, i64 0
  %905 = load i8, i8* %scevgep69.3.4, align 1
  %conv.i269.3.4 = zext i8 %905 to i32
  %arrayidx4.i273.3.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 4
  %906 = load i8, i8* %arrayidx4.i273.3.4, align 1
  %conv5.i274.3.4 = zext i8 %906 to i32
  %xor.i275.3.4 = xor i32 %conv.i269.3.4, %conv5.i274.3.4
  %conv6.i276.3.4 = trunc i32 %xor.i275.3.4 to i8
  %scevgep78.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 3
  store i8 %conv6.i276.3.4, i8* %scevgep78.3.4, align 1
  %scevgep66.3.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %904, i64 0, i64 0, i64 1
  %907 = bitcast i8* %scevgep66.3.4 to [22 x [11 x i8]]*
  %scevgep69.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %907, i64 0, i64 0, i64 0
  %908 = load i8, i8* %scevgep69.4.4, align 1
  %conv.i269.4.4 = zext i8 %908 to i32
  %arrayidx4.i273.4.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 5
  %909 = load i8, i8* %arrayidx4.i273.4.4, align 1
  %conv5.i274.4.4 = zext i8 %909 to i32
  %xor.i275.4.4 = xor i32 %conv.i269.4.4, %conv5.i274.4.4
  %conv6.i276.4.4 = trunc i32 %xor.i275.4.4 to i8
  %scevgep78.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 4
  store i8 %conv6.i276.4.4, i8* %scevgep78.4.4, align 1
  %scevgep66.4.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %907, i64 0, i64 0, i64 1
  %910 = bitcast i8* %scevgep66.4.4 to [22 x [11 x i8]]*
  %scevgep69.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %910, i64 0, i64 0, i64 0
  %911 = load i8, i8* %scevgep69.5.4, align 1
  %conv.i269.5.4 = zext i8 %911 to i32
  %arrayidx4.i273.5.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 6
  %912 = load i8, i8* %arrayidx4.i273.5.4, align 1
  %conv5.i274.5.4 = zext i8 %912 to i32
  %xor.i275.5.4 = xor i32 %conv.i269.5.4, %conv5.i274.5.4
  %conv6.i276.5.4 = trunc i32 %xor.i275.5.4 to i8
  %scevgep78.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 5
  store i8 %conv6.i276.5.4, i8* %scevgep78.5.4, align 1
  %scevgep66.5.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %910, i64 0, i64 0, i64 1
  %913 = bitcast i8* %scevgep66.5.4 to [22 x [11 x i8]]*
  %scevgep69.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %913, i64 0, i64 0, i64 0
  %914 = load i8, i8* %scevgep69.6.4, align 1
  %conv.i269.6.4 = zext i8 %914 to i32
  %arrayidx4.i273.6.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 7
  %915 = load i8, i8* %arrayidx4.i273.6.4, align 1
  %conv5.i274.6.4 = zext i8 %915 to i32
  %xor.i275.6.4 = xor i32 %conv.i269.6.4, %conv5.i274.6.4
  %conv6.i276.6.4 = trunc i32 %xor.i275.6.4 to i8
  %scevgep78.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 6
  store i8 %conv6.i276.6.4, i8* %scevgep78.6.4, align 1
  %scevgep66.6.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %913, i64 0, i64 0, i64 1
  %916 = bitcast i8* %scevgep66.6.4 to [22 x [11 x i8]]*
  %scevgep69.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %916, i64 0, i64 0, i64 0
  %917 = load i8, i8* %scevgep69.7.4, align 1
  %conv.i269.7.4 = zext i8 %917 to i32
  %arrayidx4.i273.7.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 8
  %918 = load i8, i8* %arrayidx4.i273.7.4, align 1
  %conv5.i274.7.4 = zext i8 %918 to i32
  %xor.i275.7.4 = xor i32 %conv.i269.7.4, %conv5.i274.7.4
  %conv6.i276.7.4 = trunc i32 %xor.i275.7.4 to i8
  %scevgep78.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 7
  store i8 %conv6.i276.7.4, i8* %scevgep78.7.4, align 1
  %scevgep66.7.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %916, i64 0, i64 0, i64 1
  %919 = bitcast i8* %scevgep66.7.4 to [22 x [11 x i8]]*
  %scevgep69.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %919, i64 0, i64 0, i64 0
  %920 = load i8, i8* %scevgep69.8.4, align 1
  %conv.i269.8.4 = zext i8 %920 to i32
  %arrayidx4.i273.8.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 9
  %921 = load i8, i8* %arrayidx4.i273.8.4, align 1
  %conv5.i274.8.4 = zext i8 %921 to i32
  %xor.i275.8.4 = xor i32 %conv.i269.8.4, %conv5.i274.8.4
  %conv6.i276.8.4 = trunc i32 %xor.i275.8.4 to i8
  %scevgep78.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 8
  store i8 %conv6.i276.8.4, i8* %scevgep78.8.4, align 1
  %scevgep66.8.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %919, i64 0, i64 0, i64 1
  %922 = bitcast i8* %scevgep66.8.4 to [22 x [11 x i8]]*
  %scevgep69.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %922, i64 0, i64 0, i64 0
  %923 = load i8, i8* %scevgep69.9.4, align 1
  %conv.i269.9.4 = zext i8 %923 to i32
  %arrayidx4.i273.9.4 = getelementptr inbounds i8, i8* %arraydecay85.4, i64 10
  %924 = load i8, i8* %arrayidx4.i273.9.4, align 1
  %conv5.i274.9.4 = zext i8 %924 to i32
  %xor.i275.9.4 = xor i32 %conv.i269.9.4, %conv5.i274.9.4
  %conv6.i276.9.4 = trunc i32 %xor.i275.9.4 to i8
  %scevgep78.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 9
  store i8 %conv6.i276.9.4, i8* %scevgep78.9.4, align 1
  %scevgep66.9.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %922, i64 0, i64 0, i64 1
  %925 = bitcast i8* %scevgep66.9.4 to [22 x [11 x i8]]*
  %scevgep69.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %925, i64 0, i64 0, i64 0
  %926 = load i8, i8* %scevgep69.10.4, align 1
  %conv.i269.10.4 = zext i8 %926 to i32
  %927 = load i8, i8* %arraydecay85.4, align 1
  %conv5.i274.10.4 = zext i8 %927 to i32
  %xor.i275.10.4 = xor i32 %conv.i269.10.4, %conv5.i274.10.4
  %conv6.i276.10.4 = trunc i32 %xor.i275.10.4 to i8
  %scevgep78.10.4 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %811, i64 0, i64 0, i64 10
  store i8 %conv6.i276.10.4, i8* %scevgep78.10.4, align 1
  %scevgep19 = getelementptr [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 16, i64 0
  %928 = load i8, i8* %scevgep19, align 1
  store i8 %928, i8* %c, align 1
  %scevgep22.1 = getelementptr i8, i8* %scevgep19, i64 1
  %929 = load i8, i8* %scevgep22.1, align 1
  %scevgep23.1 = getelementptr i8, i8* %c, i64 1
  store i8 %929, i8* %scevgep23.1, align 1
  %scevgep22.2 = getelementptr i8, i8* %scevgep19, i64 2
  %930 = load i8, i8* %scevgep22.2, align 1
  %scevgep23.2 = getelementptr i8, i8* %c, i64 2
  store i8 %930, i8* %scevgep23.2, align 1
  %scevgep22.3 = getelementptr i8, i8* %scevgep19, i64 3
  %931 = load i8, i8* %scevgep22.3, align 1
  %scevgep23.3 = getelementptr i8, i8* %c, i64 3
  store i8 %931, i8* %scevgep23.3, align 1
  %scevgep22.4 = getelementptr i8, i8* %scevgep19, i64 4
  %932 = load i8, i8* %scevgep22.4, align 1
  %scevgep23.4 = getelementptr i8, i8* %c, i64 4
  store i8 %932, i8* %scevgep23.4, align 1
  %scevgep22.5 = getelementptr i8, i8* %scevgep19, i64 5
  %933 = load i8, i8* %scevgep22.5, align 1
  %scevgep23.5 = getelementptr i8, i8* %c, i64 5
  store i8 %933, i8* %scevgep23.5, align 1
  %scevgep22.6 = getelementptr i8, i8* %scevgep19, i64 6
  %934 = load i8, i8* %scevgep22.6, align 1
  %scevgep23.6 = getelementptr i8, i8* %c, i64 6
  store i8 %934, i8* %scevgep23.6, align 1
  %scevgep22.7 = getelementptr i8, i8* %scevgep19, i64 7
  %935 = load i8, i8* %scevgep22.7, align 1
  %scevgep23.7 = getelementptr i8, i8* %c, i64 7
  store i8 %935, i8* %scevgep23.7, align 1
  %scevgep22.8 = getelementptr i8, i8* %scevgep19, i64 8
  %936 = load i8, i8* %scevgep22.8, align 1
  %scevgep23.8 = getelementptr i8, i8* %c, i64 8
  store i8 %936, i8* %scevgep23.8, align 1
  %scevgep22.9 = getelementptr i8, i8* %scevgep19, i64 9
  %937 = load i8, i8* %scevgep22.9, align 1
  %scevgep23.9 = getelementptr i8, i8* %c, i64 9
  store i8 %937, i8* %scevgep23.9, align 1
  %scevgep22.10 = getelementptr i8, i8* %scevgep19, i64 10
  %938 = load i8, i8* %scevgep22.10, align 1
  %scevgep23.10 = getelementptr i8, i8* %c, i64 10
  store i8 %938, i8* %scevgep23.10, align 1
  %call96 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv97 = zext i8 %call96 to i32
  %939 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %940 = load i8, i8* %scevgep.1, align 1
  %conv.i.i192.1 = zext i8 %940 to i32
  %conv1.i.i193.1 = zext i8 %939 to i32
  %xor.i.i194.1 = xor i32 %conv1.i.i193.1, %conv.i.i192.1
  %conv2.i.i195.1 = trunc i32 %xor.i.i194.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %941 = load i8, i8* %scevgep.2, align 1
  %conv.i.i192.2 = zext i8 %941 to i32
  %conv1.i.i193.2 = zext i8 %conv2.i.i195.1 to i32
  %xor.i.i194.2 = xor i32 %conv1.i.i193.2, %conv.i.i192.2
  %conv2.i.i195.2 = trunc i32 %xor.i.i194.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %942 = load i8, i8* %scevgep.3, align 1
  %conv.i.i192.3 = zext i8 %942 to i32
  %conv1.i.i193.3 = zext i8 %conv2.i.i195.2 to i32
  %xor.i.i194.3 = xor i32 %conv1.i.i193.3, %conv.i.i192.3
  %conv2.i.i195.3 = trunc i32 %xor.i.i194.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %943 = load i8, i8* %scevgep.4, align 1
  %conv.i.i192.4 = zext i8 %943 to i32
  %conv1.i.i193.4 = zext i8 %conv2.i.i195.3 to i32
  %xor.i.i194.4 = xor i32 %conv1.i.i193.4, %conv.i.i192.4
  %conv2.i.i195.4 = trunc i32 %xor.i.i194.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %944 = load i8, i8* %scevgep.5, align 1
  %conv.i.i192.5 = zext i8 %944 to i32
  %conv1.i.i193.5 = zext i8 %conv2.i.i195.4 to i32
  %xor.i.i194.5 = xor i32 %conv1.i.i193.5, %conv.i.i192.5
  %conv2.i.i195.5 = trunc i32 %xor.i.i194.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %945 = load i8, i8* %scevgep.6, align 1
  %conv.i.i192.6 = zext i8 %945 to i32
  %conv1.i.i193.6 = zext i8 %conv2.i.i195.5 to i32
  %xor.i.i194.6 = xor i32 %conv1.i.i193.6, %conv.i.i192.6
  %conv2.i.i195.6 = trunc i32 %xor.i.i194.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %946 = load i8, i8* %scevgep.7, align 1
  %conv.i.i192.7 = zext i8 %946 to i32
  %conv1.i.i193.7 = zext i8 %conv2.i.i195.6 to i32
  %xor.i.i194.7 = xor i32 %conv1.i.i193.7, %conv.i.i192.7
  %conv2.i.i195.7 = trunc i32 %xor.i.i194.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %947 = load i8, i8* %scevgep.8, align 1
  %conv.i.i192.8 = zext i8 %947 to i32
  %conv1.i.i193.8 = zext i8 %conv2.i.i195.7 to i32
  %xor.i.i194.8 = xor i32 %conv1.i.i193.8, %conv.i.i192.8
  %conv2.i.i195.8 = trunc i32 %xor.i.i194.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %948 = load i8, i8* %scevgep.9, align 1
  %conv.i.i192.9 = zext i8 %948 to i32
  %conv1.i.i193.9 = zext i8 %conv2.i.i195.8 to i32
  %xor.i.i194.9 = xor i32 %conv1.i.i193.9, %conv.i.i192.9
  %conv2.i.i195.9 = trunc i32 %xor.i.i194.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %949 = load i8, i8* %scevgep.10, align 1
  %conv.i.i192.10 = zext i8 %949 to i32
  %conv1.i.i193.10 = zext i8 %conv2.i.i195.9 to i32
  %xor.i.i194.10 = xor i32 %conv1.i.i193.10, %conv.i.i192.10
  %conv2.i.i195.10 = trunc i32 %xor.i.i194.10 to i8
  %conv99 = zext i8 %conv2.i.i195.10 to i32
  %cmp100 = icmp eq i32 %conv97, %conv99
  call void @assert(i1 zeroext %cmp100)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %r = alloca [11 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep33.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep33.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep33.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep33.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep33.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep33.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep33.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep33.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep33.5 = getelementptr i8, i8* %x, i64 5
  %5 = load i8, i8* %scevgep33.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep33.6 = getelementptr i8, i8* %x, i64 6
  %6 = load i8, i8* %scevgep33.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep33.7 = getelementptr i8, i8* %x, i64 7
  %7 = load i8, i8* %scevgep33.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep33.8 = getelementptr i8, i8* %x, i64 8
  %8 = load i8, i8* %scevgep33.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep33.9 = getelementptr i8, i8* %x, i64 9
  %9 = load i8, i8* %scevgep33.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep33.10 = getelementptr i8, i8* %x, i64 10
  %10 = load i8, i8* %scevgep33.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %conv2 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep29, align 1
  %call6.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 1
  store i8 %call6.1, i8* %scevgep29.1, align 1
  %call6.2 = call zeroext i8 (...) @rand()
  %scevgep29.2 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 2
  store i8 %call6.2, i8* %scevgep29.2, align 1
  %call6.3 = call zeroext i8 (...) @rand()
  %scevgep29.3 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 3
  store i8 %call6.3, i8* %scevgep29.3, align 1
  %call6.4 = call zeroext i8 (...) @rand()
  %scevgep29.4 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 4
  store i8 %call6.4, i8* %scevgep29.4, align 1
  %call6.5 = call zeroext i8 (...) @rand()
  %scevgep29.5 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 5
  store i8 %call6.5, i8* %scevgep29.5, align 1
  %call6.6 = call zeroext i8 (...) @rand()
  %scevgep29.6 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 6
  store i8 %call6.6, i8* %scevgep29.6, align 1
  %call6.7 = call zeroext i8 (...) @rand()
  %scevgep29.7 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 7
  store i8 %call6.7, i8* %scevgep29.7, align 1
  %call6.8 = call zeroext i8 (...) @rand()
  %scevgep29.8 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 8
  store i8 %call6.8, i8* %scevgep29.8, align 1
  %call6.9 = call zeroext i8 (...) @rand()
  %scevgep29.9 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 9
  store i8 %call6.9, i8* %scevgep29.9, align 1
  %call6.10 = call zeroext i8 (...) @rand()
  %scevgep29.10 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 10
  store i8 %call6.10, i8* %scevgep29.10, align 1
  %scevgep21 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 0
  %11 = load i8, i8* %scevgep21, align 1
  %conv.i = zext i8 %11 to i32
  %12 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %12 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %scevgep18 = getelementptr [11 x i8], [11 x i8]* %r, i64 0, i64 1
  %13 = bitcast i8* %scevgep18 to [11 x i8]*
  %scevgep23 = getelementptr i8, i8* %x, i64 1
  %scevgep21.1 = getelementptr [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %14 = load i8, i8* %scevgep21.1, align 1
  %conv.i.1 = zext i8 %14 to i32
  %15 = load i8, i8* %scevgep23, align 1
  %conv5.i.1 = zext i8 %15 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep25.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i.1, i8* %scevgep25.1, align 1
  %scevgep18.1 = getelementptr [11 x i8], [11 x i8]* %13, i64 0, i64 1
  %16 = bitcast i8* %scevgep18.1 to [11 x i8]*
  %scevgep23.1 = getelementptr i8, i8* %scevgep23, i64 1
  %scevgep21.2 = getelementptr [11 x i8], [11 x i8]* %16, i64 0, i64 0
  %17 = load i8, i8* %scevgep21.2, align 1
  %conv.i.2 = zext i8 %17 to i32
  %18 = load i8, i8* %scevgep23.1, align 1
  %conv5.i.2 = zext i8 %18 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep25.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i.2, i8* %scevgep25.2, align 1
  %scevgep18.2 = getelementptr [11 x i8], [11 x i8]* %16, i64 0, i64 1
  %19 = bitcast i8* %scevgep18.2 to [11 x i8]*
  %scevgep23.2 = getelementptr i8, i8* %scevgep23.1, i64 1
  %scevgep21.3 = getelementptr [11 x i8], [11 x i8]* %19, i64 0, i64 0
  %20 = load i8, i8* %scevgep21.3, align 1
  %conv.i.3 = zext i8 %20 to i32
  %21 = load i8, i8* %scevgep23.2, align 1
  %conv5.i.3 = zext i8 %21 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep25.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i.3, i8* %scevgep25.3, align 1
  %scevgep18.3 = getelementptr [11 x i8], [11 x i8]* %19, i64 0, i64 1
  %22 = bitcast i8* %scevgep18.3 to [11 x i8]*
  %scevgep23.3 = getelementptr i8, i8* %scevgep23.2, i64 1
  %scevgep21.4 = getelementptr [11 x i8], [11 x i8]* %22, i64 0, i64 0
  %23 = load i8, i8* %scevgep21.4, align 1
  %conv.i.4 = zext i8 %23 to i32
  %24 = load i8, i8* %scevgep23.3, align 1
  %conv5.i.4 = zext i8 %24 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep25.4 = getelementptr i8, i8* %x, i64 4
  store i8 %conv6.i.4, i8* %scevgep25.4, align 1
  %scevgep18.4 = getelementptr [11 x i8], [11 x i8]* %22, i64 0, i64 1
  %25 = bitcast i8* %scevgep18.4 to [11 x i8]*
  %scevgep23.4 = getelementptr i8, i8* %scevgep23.3, i64 1
  %scevgep21.5 = getelementptr [11 x i8], [11 x i8]* %25, i64 0, i64 0
  %26 = load i8, i8* %scevgep21.5, align 1
  %conv.i.5 = zext i8 %26 to i32
  %27 = load i8, i8* %scevgep23.4, align 1
  %conv5.i.5 = zext i8 %27 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep25.5 = getelementptr i8, i8* %x, i64 5
  store i8 %conv6.i.5, i8* %scevgep25.5, align 1
  %scevgep18.5 = getelementptr [11 x i8], [11 x i8]* %25, i64 0, i64 1
  %28 = bitcast i8* %scevgep18.5 to [11 x i8]*
  %scevgep23.5 = getelementptr i8, i8* %scevgep23.4, i64 1
  %scevgep21.6 = getelementptr [11 x i8], [11 x i8]* %28, i64 0, i64 0
  %29 = load i8, i8* %scevgep21.6, align 1
  %conv.i.6 = zext i8 %29 to i32
  %30 = load i8, i8* %scevgep23.5, align 1
  %conv5.i.6 = zext i8 %30 to i32
  %xor.i.6 = xor i32 %conv.i.6, %conv5.i.6
  %conv6.i.6 = trunc i32 %xor.i.6 to i8
  %scevgep25.6 = getelementptr i8, i8* %x, i64 6
  store i8 %conv6.i.6, i8* %scevgep25.6, align 1
  %scevgep18.6 = getelementptr [11 x i8], [11 x i8]* %28, i64 0, i64 1
  %31 = bitcast i8* %scevgep18.6 to [11 x i8]*
  %scevgep23.6 = getelementptr i8, i8* %scevgep23.5, i64 1
  %scevgep21.7 = getelementptr [11 x i8], [11 x i8]* %31, i64 0, i64 0
  %32 = load i8, i8* %scevgep21.7, align 1
  %conv.i.7 = zext i8 %32 to i32
  %33 = load i8, i8* %scevgep23.6, align 1
  %conv5.i.7 = zext i8 %33 to i32
  %xor.i.7 = xor i32 %conv.i.7, %conv5.i.7
  %conv6.i.7 = trunc i32 %xor.i.7 to i8
  %scevgep25.7 = getelementptr i8, i8* %x, i64 7
  store i8 %conv6.i.7, i8* %scevgep25.7, align 1
  %scevgep18.7 = getelementptr [11 x i8], [11 x i8]* %31, i64 0, i64 1
  %34 = bitcast i8* %scevgep18.7 to [11 x i8]*
  %scevgep23.7 = getelementptr i8, i8* %scevgep23.6, i64 1
  %scevgep21.8 = getelementptr [11 x i8], [11 x i8]* %34, i64 0, i64 0
  %35 = load i8, i8* %scevgep21.8, align 1
  %conv.i.8 = zext i8 %35 to i32
  %36 = load i8, i8* %scevgep23.7, align 1
  %conv5.i.8 = zext i8 %36 to i32
  %xor.i.8 = xor i32 %conv.i.8, %conv5.i.8
  %conv6.i.8 = trunc i32 %xor.i.8 to i8
  %scevgep25.8 = getelementptr i8, i8* %x, i64 8
  store i8 %conv6.i.8, i8* %scevgep25.8, align 1
  %scevgep18.8 = getelementptr [11 x i8], [11 x i8]* %34, i64 0, i64 1
  %37 = bitcast i8* %scevgep18.8 to [11 x i8]*
  %scevgep23.8 = getelementptr i8, i8* %scevgep23.7, i64 1
  %scevgep21.9 = getelementptr [11 x i8], [11 x i8]* %37, i64 0, i64 0
  %38 = load i8, i8* %scevgep21.9, align 1
  %conv.i.9 = zext i8 %38 to i32
  %39 = load i8, i8* %scevgep23.8, align 1
  %conv5.i.9 = zext i8 %39 to i32
  %xor.i.9 = xor i32 %conv.i.9, %conv5.i.9
  %conv6.i.9 = trunc i32 %xor.i.9 to i8
  %scevgep25.9 = getelementptr i8, i8* %x, i64 9
  store i8 %conv6.i.9, i8* %scevgep25.9, align 1
  %scevgep18.9 = getelementptr [11 x i8], [11 x i8]* %37, i64 0, i64 1
  %40 = bitcast i8* %scevgep18.9 to [11 x i8]*
  %scevgep23.9 = getelementptr i8, i8* %scevgep23.8, i64 1
  %scevgep21.10 = getelementptr [11 x i8], [11 x i8]* %40, i64 0, i64 0
  %41 = load i8, i8* %scevgep21.10, align 1
  %conv.i.10 = zext i8 %41 to i32
  %42 = load i8, i8* %scevgep23.9, align 1
  %conv5.i.10 = zext i8 %42 to i32
  %xor.i.10 = xor i32 %conv.i.10, %conv5.i.10
  %conv6.i.10 = trunc i32 %xor.i.10 to i8
  %scevgep25.10 = getelementptr i8, i8* %x, i64 10
  store i8 %conv6.i.10, i8* %scevgep25.10, align 1
  %arraydecay7 = getelementptr inbounds [11 x i8], [11 x i8]* %r, i64 0, i64 0
  %arrayidx.i42 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %43 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %43 to i32
  %44 = load i8, i8* %x, align 1
  %conv5.i48 = zext i8 %44 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  store i8 %conv6.i50, i8* %x, align 1
  %scevgep11 = getelementptr i8, i8* %x, i64 1
  %arrayidx.i42.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %45 = load i8, i8* %arrayidx.i42.1, align 1
  %conv.i43.1 = zext i8 %45 to i32
  %46 = load i8, i8* %scevgep11, align 1
  %conv5.i48.1 = zext i8 %46 to i32
  %xor.i49.1 = xor i32 %conv.i43.1, %conv5.i48.1
  %conv6.i50.1 = trunc i32 %xor.i49.1 to i8
  %scevgep15.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i50.1, i8* %scevgep15.1, align 1
  %scevgep11.1 = getelementptr i8, i8* %scevgep11, i64 1
  %arrayidx.i42.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %47 = load i8, i8* %arrayidx.i42.2, align 1
  %conv.i43.2 = zext i8 %47 to i32
  %48 = load i8, i8* %scevgep11.1, align 1
  %conv5.i48.2 = zext i8 %48 to i32
  %xor.i49.2 = xor i32 %conv.i43.2, %conv5.i48.2
  %conv6.i50.2 = trunc i32 %xor.i49.2 to i8
  %scevgep15.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i50.2, i8* %scevgep15.2, align 1
  %scevgep11.2 = getelementptr i8, i8* %scevgep11.1, i64 1
  %arrayidx.i42.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %49 = load i8, i8* %arrayidx.i42.3, align 1
  %conv.i43.3 = zext i8 %49 to i32
  %50 = load i8, i8* %scevgep11.2, align 1
  %conv5.i48.3 = zext i8 %50 to i32
  %xor.i49.3 = xor i32 %conv.i43.3, %conv5.i48.3
  %conv6.i50.3 = trunc i32 %xor.i49.3 to i8
  %scevgep15.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i50.3, i8* %scevgep15.3, align 1
  %scevgep11.3 = getelementptr i8, i8* %scevgep11.2, i64 1
  %arrayidx.i42.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 5
  %51 = load i8, i8* %arrayidx.i42.4, align 1
  %conv.i43.4 = zext i8 %51 to i32
  %52 = load i8, i8* %scevgep11.3, align 1
  %conv5.i48.4 = zext i8 %52 to i32
  %xor.i49.4 = xor i32 %conv.i43.4, %conv5.i48.4
  %conv6.i50.4 = trunc i32 %xor.i49.4 to i8
  %scevgep15.4 = getelementptr i8, i8* %x, i64 4
  store i8 %conv6.i50.4, i8* %scevgep15.4, align 1
  %scevgep11.4 = getelementptr i8, i8* %scevgep11.3, i64 1
  %arrayidx.i42.5 = getelementptr inbounds i8, i8* %arraydecay7, i64 6
  %53 = load i8, i8* %arrayidx.i42.5, align 1
  %conv.i43.5 = zext i8 %53 to i32
  %54 = load i8, i8* %scevgep11.4, align 1
  %conv5.i48.5 = zext i8 %54 to i32
  %xor.i49.5 = xor i32 %conv.i43.5, %conv5.i48.5
  %conv6.i50.5 = trunc i32 %xor.i49.5 to i8
  %scevgep15.5 = getelementptr i8, i8* %x, i64 5
  store i8 %conv6.i50.5, i8* %scevgep15.5, align 1
  %scevgep11.5 = getelementptr i8, i8* %scevgep11.4, i64 1
  %arrayidx.i42.6 = getelementptr inbounds i8, i8* %arraydecay7, i64 7
  %55 = load i8, i8* %arrayidx.i42.6, align 1
  %conv.i43.6 = zext i8 %55 to i32
  %56 = load i8, i8* %scevgep11.5, align 1
  %conv5.i48.6 = zext i8 %56 to i32
  %xor.i49.6 = xor i32 %conv.i43.6, %conv5.i48.6
  %conv6.i50.6 = trunc i32 %xor.i49.6 to i8
  %scevgep15.6 = getelementptr i8, i8* %x, i64 6
  store i8 %conv6.i50.6, i8* %scevgep15.6, align 1
  %scevgep11.6 = getelementptr i8, i8* %scevgep11.5, i64 1
  %arrayidx.i42.7 = getelementptr inbounds i8, i8* %arraydecay7, i64 8
  %57 = load i8, i8* %arrayidx.i42.7, align 1
  %conv.i43.7 = zext i8 %57 to i32
  %58 = load i8, i8* %scevgep11.6, align 1
  %conv5.i48.7 = zext i8 %58 to i32
  %xor.i49.7 = xor i32 %conv.i43.7, %conv5.i48.7
  %conv6.i50.7 = trunc i32 %xor.i49.7 to i8
  %scevgep15.7 = getelementptr i8, i8* %x, i64 7
  store i8 %conv6.i50.7, i8* %scevgep15.7, align 1
  %scevgep11.7 = getelementptr i8, i8* %scevgep11.6, i64 1
  %arrayidx.i42.8 = getelementptr inbounds i8, i8* %arraydecay7, i64 9
  %59 = load i8, i8* %arrayidx.i42.8, align 1
  %conv.i43.8 = zext i8 %59 to i32
  %60 = load i8, i8* %scevgep11.7, align 1
  %conv5.i48.8 = zext i8 %60 to i32
  %xor.i49.8 = xor i32 %conv.i43.8, %conv5.i48.8
  %conv6.i50.8 = trunc i32 %xor.i49.8 to i8
  %scevgep15.8 = getelementptr i8, i8* %x, i64 8
  store i8 %conv6.i50.8, i8* %scevgep15.8, align 1
  %scevgep11.8 = getelementptr i8, i8* %scevgep11.7, i64 1
  %arrayidx.i42.9 = getelementptr inbounds i8, i8* %arraydecay7, i64 10
  %61 = load i8, i8* %arrayidx.i42.9, align 1
  %conv.i43.9 = zext i8 %61 to i32
  %62 = load i8, i8* %scevgep11.8, align 1
  %conv5.i48.9 = zext i8 %62 to i32
  %xor.i49.9 = xor i32 %conv.i43.9, %conv5.i48.9
  %conv6.i50.9 = trunc i32 %xor.i49.9 to i8
  %scevgep15.9 = getelementptr i8, i8* %x, i64 9
  store i8 %conv6.i50.9, i8* %scevgep15.9, align 1
  %scevgep11.9 = getelementptr i8, i8* %scevgep11.8, i64 1
  %63 = load i8, i8* %arraydecay7, align 1
  %conv.i43.10 = zext i8 %63 to i32
  %64 = load i8, i8* %scevgep11.9, align 1
  %conv5.i48.10 = zext i8 %64 to i32
  %xor.i49.10 = xor i32 %conv.i43.10, %conv5.i48.10
  %conv6.i50.10 = trunc i32 %xor.i49.10 to i8
  %scevgep15.10 = getelementptr i8, i8* %x, i64 10
  store i8 %conv6.i50.10, i8* %scevgep15.10, align 1
  %conv8 = zext i8 %call to i32
  %65 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %66 = load i8, i8* %scevgep.1, align 1
  %conv.i.i24.1 = zext i8 %66 to i32
  %conv1.i.i25.1 = zext i8 %65 to i32
  %xor.i.i26.1 = xor i32 %conv1.i.i25.1, %conv.i.i24.1
  %conv2.i.i27.1 = trunc i32 %xor.i.i26.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %67 = load i8, i8* %scevgep.2, align 1
  %conv.i.i24.2 = zext i8 %67 to i32
  %conv1.i.i25.2 = zext i8 %conv2.i.i27.1 to i32
  %xor.i.i26.2 = xor i32 %conv1.i.i25.2, %conv.i.i24.2
  %conv2.i.i27.2 = trunc i32 %xor.i.i26.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %68 = load i8, i8* %scevgep.3, align 1
  %conv.i.i24.3 = zext i8 %68 to i32
  %conv1.i.i25.3 = zext i8 %conv2.i.i27.2 to i32
  %xor.i.i26.3 = xor i32 %conv1.i.i25.3, %conv.i.i24.3
  %conv2.i.i27.3 = trunc i32 %xor.i.i26.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %69 = load i8, i8* %scevgep.4, align 1
  %conv.i.i24.4 = zext i8 %69 to i32
  %conv1.i.i25.4 = zext i8 %conv2.i.i27.3 to i32
  %xor.i.i26.4 = xor i32 %conv1.i.i25.4, %conv.i.i24.4
  %conv2.i.i27.4 = trunc i32 %xor.i.i26.4 to i8
  %scevgep.5 = getelementptr i8, i8* %x, i64 5
  %70 = load i8, i8* %scevgep.5, align 1
  %conv.i.i24.5 = zext i8 %70 to i32
  %conv1.i.i25.5 = zext i8 %conv2.i.i27.4 to i32
  %xor.i.i26.5 = xor i32 %conv1.i.i25.5, %conv.i.i24.5
  %conv2.i.i27.5 = trunc i32 %xor.i.i26.5 to i8
  %scevgep.6 = getelementptr i8, i8* %x, i64 6
  %71 = load i8, i8* %scevgep.6, align 1
  %conv.i.i24.6 = zext i8 %71 to i32
  %conv1.i.i25.6 = zext i8 %conv2.i.i27.5 to i32
  %xor.i.i26.6 = xor i32 %conv1.i.i25.6, %conv.i.i24.6
  %conv2.i.i27.6 = trunc i32 %xor.i.i26.6 to i8
  %scevgep.7 = getelementptr i8, i8* %x, i64 7
  %72 = load i8, i8* %scevgep.7, align 1
  %conv.i.i24.7 = zext i8 %72 to i32
  %conv1.i.i25.7 = zext i8 %conv2.i.i27.6 to i32
  %xor.i.i26.7 = xor i32 %conv1.i.i25.7, %conv.i.i24.7
  %conv2.i.i27.7 = trunc i32 %xor.i.i26.7 to i8
  %scevgep.8 = getelementptr i8, i8* %x, i64 8
  %73 = load i8, i8* %scevgep.8, align 1
  %conv.i.i24.8 = zext i8 %73 to i32
  %conv1.i.i25.8 = zext i8 %conv2.i.i27.7 to i32
  %xor.i.i26.8 = xor i32 %conv1.i.i25.8, %conv.i.i24.8
  %conv2.i.i27.8 = trunc i32 %xor.i.i26.8 to i8
  %scevgep.9 = getelementptr i8, i8* %x, i64 9
  %74 = load i8, i8* %scevgep.9, align 1
  %conv.i.i24.9 = zext i8 %74 to i32
  %conv1.i.i25.9 = zext i8 %conv2.i.i27.8 to i32
  %xor.i.i26.9 = xor i32 %conv1.i.i25.9, %conv.i.i24.9
  %conv2.i.i27.9 = trunc i32 %xor.i.i26.9 to i8
  %scevgep.10 = getelementptr i8, i8* %x, i64 10
  %75 = load i8, i8* %scevgep.10, align 1
  %conv.i.i24.10 = zext i8 %75 to i32
  %conv1.i.i25.10 = zext i8 %conv2.i.i27.9 to i32
  %xor.i.i26.10 = xor i32 %conv1.i.i25.10, %conv.i.i24.10
  %conv2.i.i27.10 = trunc i32 %xor.i.i26.10 to i8
  %conv10 = zext i8 %conv2.i.i27.10 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  call void @assert(i1 zeroext %cmp11)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
