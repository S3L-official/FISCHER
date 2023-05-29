; ModuleID = '../examples/barthe-eurocrypto2017.inline-5.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 5, align 4
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
  ret i8 %conv2.5
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
  ret i8 %conv2.i.5
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 6
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 6
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 6
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 6
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 6
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 6
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %call.2 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %11)
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.2, i8* %scevgep.2, align 1
  %12 = add i64 %0, 3
  %tmp.3 = trunc i64 %12 to i32
  %rem.3 = srem i32 %tmp.3, 6
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 6
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %call.3 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %15)
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.3, i8* %scevgep.3, align 1
  %16 = add i64 %0, 4
  %tmp.4 = trunc i64 %16 to i32
  %rem.4 = srem i32 %tmp.4, 6
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 6
  %idxprom3.4 = sext i32 %rem2.4 to i64
  %arrayidx4.4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.4
  %19 = load i8, i8* %arrayidx4.4, align 1
  %call.4 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %19)
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.4, i8* %scevgep.4, align 1
  %20 = add i64 %0, 5
  %tmp.5 = trunc i64 %20 to i32
  %rem.5 = srem i32 %tmp.5, 6
  %idxprom.5 = sext i32 %rem.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 %idxprom.5
  %21 = load i8, i8* %arrayidx.5, align 1
  %22 = add i64 %1, 5
  %tmp2.5 = trunc i64 %22 to i32
  %rem2.5 = srem i32 %tmp2.5, 6
  %idxprom3.5 = sext i32 %rem2.5 to i64
  %arrayidx4.5 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.5
  %23 = load i8, i8* %arrayidx4.5, align 1
  %call.5 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %23)
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  store i8 %call.5, i8* %scevgep.5, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 6
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 6
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 6
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 6
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
  %rem.2 = srem i32 %tmp.2, 6
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 6
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
  %rem.3 = srem i32 %tmp.3, 6
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i32
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 6
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
  %rem.4 = srem i32 %tmp.4, 6
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %conv.4 = zext i8 %17 to i32
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 6
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
  %rem.5 = srem i32 %tmp.5, 6
  %idxprom.5 = sext i32 %rem.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 %idxprom.5
  %21 = load i8, i8* %arrayidx.5, align 1
  %conv.5 = zext i8 %21 to i32
  %22 = add i64 %1, 5
  %tmp2.5 = trunc i64 %22 to i32
  %rem2.5 = srem i32 %tmp2.5, 6
  %idxprom3.5 = sext i32 %rem2.5 to i64
  %arrayidx4.5 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.5
  %23 = load i8, i8* %arrayidx4.5, align 1
  %conv5.5 = zext i8 %23 to i32
  %xor.5 = xor i32 %conv.5, %conv5.5
  %conv6.5 = trunc i32 %xor.5 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.5, i8* %scevgep.5, align 1
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
  %r = alloca [6 x [6 x i8]], align 16
  %cc = alloca [12 x [6 x i8]], align 16
  %dd = alloca [12 x [6 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep219.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep219.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep219.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep219.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep219.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep219.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep219.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep219.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep219.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep219.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %conv3 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %6 = load i8, i8* %b, align 1
  %scevgep215.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep215.1, align 1
  %conv.i.i128.1 = zext i8 %7 to i32
  %conv1.i.i129.1 = zext i8 %6 to i32
  %xor.i.i130.1 = xor i32 %conv1.i.i129.1, %conv.i.i128.1
  %conv2.i.i131.1 = trunc i32 %xor.i.i130.1 to i8
  %scevgep215.2 = getelementptr i8, i8* %b, i64 2
  %8 = load i8, i8* %scevgep215.2, align 1
  %conv.i.i128.2 = zext i8 %8 to i32
  %conv1.i.i129.2 = zext i8 %conv2.i.i131.1 to i32
  %xor.i.i130.2 = xor i32 %conv1.i.i129.2, %conv.i.i128.2
  %conv2.i.i131.2 = trunc i32 %xor.i.i130.2 to i8
  %scevgep215.3 = getelementptr i8, i8* %b, i64 3
  %9 = load i8, i8* %scevgep215.3, align 1
  %conv.i.i128.3 = zext i8 %9 to i32
  %conv1.i.i129.3 = zext i8 %conv2.i.i131.2 to i32
  %xor.i.i130.3 = xor i32 %conv1.i.i129.3, %conv.i.i128.3
  %conv2.i.i131.3 = trunc i32 %xor.i.i130.3 to i8
  %scevgep215.4 = getelementptr i8, i8* %b, i64 4
  %10 = load i8, i8* %scevgep215.4, align 1
  %conv.i.i128.4 = zext i8 %10 to i32
  %conv1.i.i129.4 = zext i8 %conv2.i.i131.3 to i32
  %xor.i.i130.4 = xor i32 %conv1.i.i129.4, %conv.i.i128.4
  %conv2.i.i131.4 = trunc i32 %xor.i.i130.4 to i8
  %scevgep215.5 = getelementptr i8, i8* %b, i64 5
  %11 = load i8, i8* %scevgep215.5, align 1
  %conv.i.i128.5 = zext i8 %11 to i32
  %conv1.i.i129.5 = zext i8 %conv2.i.i131.4 to i32
  %xor.i.i130.5 = xor i32 %conv1.i.i129.5, %conv.i.i128.5
  %conv2.i.i131.5 = trunc i32 %xor.i.i130.5 to i8
  %conv7 = zext i8 %conv2.i.i131.5 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep211 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep211, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep211.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep211.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep211.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep211.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep211.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep211.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep211.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep211.4, align 1
  %call16.5 = call zeroext i8 (...) @rand()
  %scevgep211.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 5
  store i8 %call16.5, i8* %scevgep211.5, align 1
  %scevgep208 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep208 to [6 x [6 x i8]]*
  %call16.1221 = call zeroext i8 (...) @rand()
  %scevgep211.1222 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 0
  store i8 %call16.1221, i8* %scevgep211.1222, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep211.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep211.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep211.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep211.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep211.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep211.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep211.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep211.4.1, align 1
  %call16.5.1 = call zeroext i8 (...) @rand()
  %scevgep211.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 5
  store i8 %call16.5.1, i8* %scevgep211.5.1, align 1
  %scevgep208.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep208.1 to [6 x [6 x i8]]*
  %call16.2224 = call zeroext i8 (...) @rand()
  %scevgep211.2225 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 0
  store i8 %call16.2224, i8* %scevgep211.2225, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep211.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep211.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep211.2.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep211.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep211.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep211.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep211.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep211.4.2, align 1
  %call16.5.2 = call zeroext i8 (...) @rand()
  %scevgep211.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 5
  store i8 %call16.5.2, i8* %scevgep211.5.2, align 1
  %scevgep208.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep208.2 to [6 x [6 x i8]]*
  %call16.3227 = call zeroext i8 (...) @rand()
  %scevgep211.3228 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 0
  store i8 %call16.3227, i8* %scevgep211.3228, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep211.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep211.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep211.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep211.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep211.3.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep211.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep211.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep211.4.3, align 1
  %call16.5.3 = call zeroext i8 (...) @rand()
  %scevgep211.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 5
  store i8 %call16.5.3, i8* %scevgep211.5.3, align 1
  %scevgep208.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep208.3 to [6 x [6 x i8]]*
  %call16.4230 = call zeroext i8 (...) @rand()
  %scevgep211.4231 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 0
  store i8 %call16.4230, i8* %scevgep211.4231, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep211.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep211.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep211.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep211.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep211.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep211.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep211.4.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep211.4.4, align 1
  %call16.5.4 = call zeroext i8 (...) @rand()
  %scevgep211.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 5
  store i8 %call16.5.4, i8* %scevgep211.5.4, align 1
  %scevgep208.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep208.4 to [6 x [6 x i8]]*
  %call16.5233 = call zeroext i8 (...) @rand()
  %scevgep211.5234 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 0
  store i8 %call16.5233, i8* %scevgep211.5234, align 1
  %call16.1.5 = call zeroext i8 (...) @rand()
  %scevgep211.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 1
  store i8 %call16.1.5, i8* %scevgep211.1.5, align 1
  %call16.2.5 = call zeroext i8 (...) @rand()
  %scevgep211.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 2
  store i8 %call16.2.5, i8* %scevgep211.2.5, align 1
  %call16.3.5 = call zeroext i8 (...) @rand()
  %scevgep211.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 3
  store i8 %call16.3.5, i8* %scevgep211.3.5, align 1
  %call16.4.5 = call zeroext i8 (...) @rand()
  %scevgep211.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 4
  store i8 %call16.4.5, i8* %scevgep211.4.5, align 1
  %call16.5.5 = call zeroext i8 (...) @rand()
  %scevgep211.5.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 5
  store i8 %call16.5.5, i8* %scevgep211.5.5, align 1
  %scevgep204 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 1, i64 0
  %17 = load i8, i8* %a, align 1
  %18 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  store i8 %call.i, i8* %scevgep204, align 1
  %scevgep197 = getelementptr i8, i8* %a, i64 1
  %scevgep202 = getelementptr i8, i8* %b, i64 1
  %19 = load i8, i8* %scevgep197, align 1
  %20 = load i8, i8* %scevgep202, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #2
  %scevgep205.1 = getelementptr i8, i8* %scevgep204, i64 1
  store i8 %call.i.1, i8* %scevgep205.1, align 1
  %scevgep197.1 = getelementptr i8, i8* %scevgep197, i64 1
  %scevgep202.1 = getelementptr i8, i8* %scevgep202, i64 1
  %21 = load i8, i8* %scevgep197.1, align 1
  %22 = load i8, i8* %scevgep202.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #2
  %scevgep205.2 = getelementptr i8, i8* %scevgep204, i64 2
  store i8 %call.i.2, i8* %scevgep205.2, align 1
  %scevgep197.2 = getelementptr i8, i8* %scevgep197.1, i64 1
  %scevgep202.2 = getelementptr i8, i8* %scevgep202.1, i64 1
  %23 = load i8, i8* %scevgep197.2, align 1
  %24 = load i8, i8* %scevgep202.2, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %scevgep205.3 = getelementptr i8, i8* %scevgep204, i64 3
  store i8 %call.i.3, i8* %scevgep205.3, align 1
  %scevgep197.3 = getelementptr i8, i8* %scevgep197.2, i64 1
  %scevgep202.3 = getelementptr i8, i8* %scevgep202.2, i64 1
  %25 = load i8, i8* %scevgep197.3, align 1
  %26 = load i8, i8* %scevgep202.3, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #2
  %scevgep205.4 = getelementptr i8, i8* %scevgep204, i64 4
  store i8 %call.i.4, i8* %scevgep205.4, align 1
  %scevgep197.4 = getelementptr i8, i8* %scevgep197.3, i64 1
  %scevgep202.4 = getelementptr i8, i8* %scevgep202.3, i64 1
  %27 = load i8, i8* %scevgep197.4, align 1
  %28 = load i8, i8* %scevgep202.4, align 1
  %call.i.5 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %scevgep205.5 = getelementptr i8, i8* %scevgep204, i64 5
  store i8 %call.i.5, i8* %scevgep205.5, align 1
  %scevgep177 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep177178 = bitcast i8* %scevgep177 to [12 x [6 x i8]]*
  %scevgep190 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep190191 = bitcast i8* %scevgep190 to [12 x [6 x i8]]*
  %29 = load i8, i8* %a, align 1
  %arrayidx4.i151 = getelementptr inbounds i8, i8* %b, i64 1
  %30 = load i8, i8* %arrayidx4.i151, align 1
  %call.i152 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #2
  %scevgep181 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep177178, i64 0, i64 0, i64 0
  store i8 %call.i152, i8* %scevgep181, align 1
  %scevgep171 = getelementptr i8, i8* %a, i64 1
  %31 = load i8, i8* %scevgep171, align 1
  %arrayidx4.i151.1 = getelementptr inbounds i8, i8* %b, i64 2
  %32 = load i8, i8* %arrayidx4.i151.1, align 1
  %call.i152.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #2
  %scevgep181.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep177178, i64 0, i64 0, i64 1
  store i8 %call.i152.1, i8* %scevgep181.1, align 1
  %scevgep171.1 = getelementptr i8, i8* %scevgep171, i64 1
  %33 = load i8, i8* %scevgep171.1, align 1
  %arrayidx4.i151.2 = getelementptr inbounds i8, i8* %b, i64 3
  %34 = load i8, i8* %arrayidx4.i151.2, align 1
  %call.i152.2 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #2
  %scevgep181.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep177178, i64 0, i64 0, i64 2
  store i8 %call.i152.2, i8* %scevgep181.2, align 1
  %scevgep171.2 = getelementptr i8, i8* %scevgep171.1, i64 1
  %35 = load i8, i8* %scevgep171.2, align 1
  %arrayidx4.i151.3 = getelementptr inbounds i8, i8* %b, i64 4
  %36 = load i8, i8* %arrayidx4.i151.3, align 1
  %call.i152.3 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #2
  %scevgep181.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep177178, i64 0, i64 0, i64 3
  store i8 %call.i152.3, i8* %scevgep181.3, align 1
  %scevgep171.3 = getelementptr i8, i8* %scevgep171.2, i64 1
  %37 = load i8, i8* %scevgep171.3, align 1
  %arrayidx4.i151.4 = getelementptr inbounds i8, i8* %b, i64 5
  %38 = load i8, i8* %arrayidx4.i151.4, align 1
  %call.i152.4 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #2
  %scevgep181.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep177178, i64 0, i64 0, i64 4
  store i8 %call.i152.4, i8* %scevgep181.4, align 1
  %scevgep171.4 = getelementptr i8, i8* %scevgep171.3, i64 1
  %39 = load i8, i8* %scevgep171.4, align 1
  %40 = load i8, i8* %b, align 1
  %call.i152.5 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #2
  %scevgep181.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep177178, i64 0, i64 0, i64 5
  store i8 %call.i152.5, i8* %scevgep181.5, align 1
  %arrayidx.i169 = getelementptr inbounds i8, i8* %a, i64 1
  %41 = load i8, i8* %arrayidx.i169, align 1
  %42 = load i8, i8* %b, align 1
  %call.i174 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #2
  %scevgep194 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep190191, i64 0, i64 0, i64 0
  store i8 %call.i174, i8* %scevgep194, align 1
  %scevgep186 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i169.1 = getelementptr inbounds i8, i8* %a, i64 2
  %43 = load i8, i8* %arrayidx.i169.1, align 1
  %44 = load i8, i8* %scevgep186, align 1
  %call.i174.1 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #2
  %scevgep194.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep190191, i64 0, i64 0, i64 1
  store i8 %call.i174.1, i8* %scevgep194.1, align 1
  %scevgep186.1 = getelementptr i8, i8* %scevgep186, i64 1
  %arrayidx.i169.2 = getelementptr inbounds i8, i8* %a, i64 3
  %45 = load i8, i8* %arrayidx.i169.2, align 1
  %46 = load i8, i8* %scevgep186.1, align 1
  %call.i174.2 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #2
  %scevgep194.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep190191, i64 0, i64 0, i64 2
  store i8 %call.i174.2, i8* %scevgep194.2, align 1
  %scevgep186.2 = getelementptr i8, i8* %scevgep186.1, i64 1
  %arrayidx.i169.3 = getelementptr inbounds i8, i8* %a, i64 4
  %47 = load i8, i8* %arrayidx.i169.3, align 1
  %48 = load i8, i8* %scevgep186.2, align 1
  %call.i174.3 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #2
  %scevgep194.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep190191, i64 0, i64 0, i64 3
  store i8 %call.i174.3, i8* %scevgep194.3, align 1
  %scevgep186.3 = getelementptr i8, i8* %scevgep186.2, i64 1
  %arrayidx.i169.4 = getelementptr inbounds i8, i8* %a, i64 5
  %49 = load i8, i8* %arrayidx.i169.4, align 1
  %50 = load i8, i8* %scevgep186.3, align 1
  %call.i174.4 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50) #2
  %scevgep194.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep190191, i64 0, i64 0, i64 4
  store i8 %call.i174.4, i8* %scevgep194.4, align 1
  %scevgep186.4 = getelementptr i8, i8* %scevgep186.3, i64 1
  %51 = load i8, i8* %a, align 1
  %52 = load i8, i8* %scevgep186.4, align 1
  %call.i174.5 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52) #2
  %scevgep194.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep190191, i64 0, i64 0, i64 5
  store i8 %call.i174.5, i8* %scevgep194.5, align 1
  %scevgep167 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 4, i64 0
  %53 = load i8, i8* %a, align 1
  %arrayidx4.i195 = getelementptr inbounds i8, i8* %b, i64 3
  %54 = load i8, i8* %arrayidx4.i195, align 1
  %call.i196 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #2
  store i8 %call.i196, i8* %scevgep167, align 1
  %scevgep161 = getelementptr i8, i8* %a, i64 1
  %55 = load i8, i8* %scevgep161, align 1
  %arrayidx4.i195.1 = getelementptr inbounds i8, i8* %b, i64 4
  %56 = load i8, i8* %arrayidx4.i195.1, align 1
  %call.i196.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #2
  %scevgep168.1 = getelementptr i8, i8* %scevgep167, i64 1
  store i8 %call.i196.1, i8* %scevgep168.1, align 1
  %scevgep161.1 = getelementptr i8, i8* %scevgep161, i64 1
  %57 = load i8, i8* %scevgep161.1, align 1
  %arrayidx4.i195.2 = getelementptr inbounds i8, i8* %b, i64 5
  %58 = load i8, i8* %arrayidx4.i195.2, align 1
  %call.i196.2 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #2
  %scevgep168.2 = getelementptr i8, i8* %scevgep167, i64 2
  store i8 %call.i196.2, i8* %scevgep168.2, align 1
  %scevgep161.2 = getelementptr i8, i8* %scevgep161.1, i64 1
  %59 = load i8, i8* %scevgep161.2, align 1
  %60 = load i8, i8* %b, align 1
  %call.i196.3 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #2
  %scevgep168.3 = getelementptr i8, i8* %scevgep167, i64 3
  store i8 %call.i196.3, i8* %scevgep168.3, align 1
  %scevgep161.3 = getelementptr i8, i8* %scevgep161.2, i64 1
  %61 = load i8, i8* %scevgep161.3, align 1
  %arrayidx4.i195.4 = getelementptr inbounds i8, i8* %b, i64 1
  %62 = load i8, i8* %arrayidx4.i195.4, align 1
  %call.i196.4 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #2
  %scevgep168.4 = getelementptr i8, i8* %scevgep167, i64 4
  store i8 %call.i196.4, i8* %scevgep168.4, align 1
  %scevgep161.4 = getelementptr i8, i8* %scevgep161.3, i64 1
  %63 = load i8, i8* %scevgep161.4, align 1
  %arrayidx4.i195.5 = getelementptr inbounds i8, i8* %b, i64 2
  %64 = load i8, i8* %arrayidx4.i195.5, align 1
  %call.i196.5 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #2
  %scevgep168.5 = getelementptr i8, i8* %scevgep167, i64 5
  store i8 %call.i196.5, i8* %scevgep168.5, align 1
  %scevgep157 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 5, i64 0
  %arrayidx.i213 = getelementptr inbounds i8, i8* %a, i64 3
  %65 = load i8, i8* %arrayidx.i213, align 1
  %66 = load i8, i8* %b, align 1
  %call.i218 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #2
  store i8 %call.i218, i8* %scevgep157, align 1
  %scevgep153 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i213.1 = getelementptr inbounds i8, i8* %a, i64 4
  %67 = load i8, i8* %arrayidx.i213.1, align 1
  %68 = load i8, i8* %scevgep153, align 1
  %call.i218.1 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #2
  %scevgep158.1 = getelementptr i8, i8* %scevgep157, i64 1
  store i8 %call.i218.1, i8* %scevgep158.1, align 1
  %scevgep153.1 = getelementptr i8, i8* %scevgep153, i64 1
  %arrayidx.i213.2 = getelementptr inbounds i8, i8* %a, i64 5
  %69 = load i8, i8* %arrayidx.i213.2, align 1
  %70 = load i8, i8* %scevgep153.1, align 1
  %call.i218.2 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #2
  %scevgep158.2 = getelementptr i8, i8* %scevgep157, i64 2
  store i8 %call.i218.2, i8* %scevgep158.2, align 1
  %scevgep153.2 = getelementptr i8, i8* %scevgep153.1, i64 1
  %71 = load i8, i8* %a, align 1
  %72 = load i8, i8* %scevgep153.2, align 1
  %call.i218.3 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #2
  %scevgep158.3 = getelementptr i8, i8* %scevgep157, i64 3
  store i8 %call.i218.3, i8* %scevgep158.3, align 1
  %scevgep153.3 = getelementptr i8, i8* %scevgep153.2, i64 1
  %arrayidx.i213.4 = getelementptr inbounds i8, i8* %a, i64 1
  %73 = load i8, i8* %arrayidx.i213.4, align 1
  %74 = load i8, i8* %scevgep153.3, align 1
  %call.i218.4 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #2
  %scevgep158.4 = getelementptr i8, i8* %scevgep157, i64 4
  store i8 %call.i218.4, i8* %scevgep158.4, align 1
  %scevgep153.4 = getelementptr i8, i8* %scevgep153.3, i64 1
  %arrayidx.i213.5 = getelementptr inbounds i8, i8* %a, i64 2
  %75 = load i8, i8* %arrayidx.i213.5, align 1
  %76 = load i8, i8* %scevgep153.4, align 1
  %call.i218.5 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #2
  %scevgep158.5 = getelementptr i8, i8* %scevgep157, i64 5
  store i8 %call.i218.5, i8* %scevgep158.5, align 1
  %scevgep147 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 6, i64 0
  %77 = load i8, i8* %a, align 1
  %arrayidx4.i239 = getelementptr inbounds i8, i8* %b, i64 4
  %78 = load i8, i8* %arrayidx4.i239, align 1
  %call.i240 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #2
  store i8 %call.i240, i8* %scevgep147, align 1
  %scevgep141 = getelementptr i8, i8* %a, i64 1
  %79 = load i8, i8* %scevgep141, align 1
  %arrayidx4.i239.1 = getelementptr inbounds i8, i8* %b, i64 5
  %80 = load i8, i8* %arrayidx4.i239.1, align 1
  %call.i240.1 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #2
  %scevgep148.1 = getelementptr i8, i8* %scevgep147, i64 1
  store i8 %call.i240.1, i8* %scevgep148.1, align 1
  %scevgep141.1 = getelementptr i8, i8* %scevgep141, i64 1
  %81 = load i8, i8* %scevgep141.1, align 1
  %82 = load i8, i8* %b, align 1
  %call.i240.2 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #2
  %scevgep148.2 = getelementptr i8, i8* %scevgep147, i64 2
  store i8 %call.i240.2, i8* %scevgep148.2, align 1
  %scevgep141.2 = getelementptr i8, i8* %scevgep141.1, i64 1
  %83 = load i8, i8* %scevgep141.2, align 1
  %arrayidx4.i239.3 = getelementptr inbounds i8, i8* %b, i64 1
  %84 = load i8, i8* %arrayidx4.i239.3, align 1
  %call.i240.3 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #2
  %scevgep148.3 = getelementptr i8, i8* %scevgep147, i64 3
  store i8 %call.i240.3, i8* %scevgep148.3, align 1
  %scevgep141.3 = getelementptr i8, i8* %scevgep141.2, i64 1
  %85 = load i8, i8* %scevgep141.3, align 1
  %arrayidx4.i239.4 = getelementptr inbounds i8, i8* %b, i64 2
  %86 = load i8, i8* %arrayidx4.i239.4, align 1
  %call.i240.4 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #2
  %scevgep148.4 = getelementptr i8, i8* %scevgep147, i64 4
  store i8 %call.i240.4, i8* %scevgep148.4, align 1
  %scevgep141.4 = getelementptr i8, i8* %scevgep141.3, i64 1
  %87 = load i8, i8* %scevgep141.4, align 1
  %arrayidx4.i239.5 = getelementptr inbounds i8, i8* %b, i64 3
  %88 = load i8, i8* %arrayidx4.i239.5, align 1
  %call.i240.5 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #2
  %scevgep148.5 = getelementptr i8, i8* %scevgep147, i64 5
  store i8 %call.i240.5, i8* %scevgep148.5, align 1
  %scevgep125 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 1, i64 0
  %scevgep125126 = bitcast i8* %scevgep125 to [12 x [6 x i8]]*
  %scevgep132 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep132133 = bitcast i8* %scevgep132 to [6 x [6 x i8]]*
  %scevgep137 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep131 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep125126, i64 0, i64 0, i64 0
  %scevgep136 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep132133, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep131, align 1
  %conv.i = zext i8 %89 to i32
  %90 = load i8, i8* %scevgep136, align 1
  %conv5.i = zext i8 %90 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %scevgep137, align 1
  %scevgep128 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep125126, i64 0, i64 0, i64 1
  %91 = bitcast i8* %scevgep128 to [12 x [6 x i8]]*
  %scevgep135 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep132133, i64 0, i64 0, i64 1
  %92 = bitcast i8* %scevgep135 to [6 x [6 x i8]]*
  %scevgep131.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %91, i64 0, i64 0, i64 0
  %scevgep136.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %92, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep131.1, align 1
  %conv.i.1 = zext i8 %93 to i32
  %94 = load i8, i8* %scevgep136.1, align 1
  %conv5.i.1 = zext i8 %94 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep138.1 = getelementptr i8, i8* %scevgep137, i64 1
  store i8 %conv6.i.1, i8* %scevgep138.1, align 1
  %scevgep128.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %91, i64 0, i64 0, i64 1
  %95 = bitcast i8* %scevgep128.1 to [12 x [6 x i8]]*
  %scevgep135.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %92, i64 0, i64 0, i64 1
  %96 = bitcast i8* %scevgep135.1 to [6 x [6 x i8]]*
  %scevgep131.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %95, i64 0, i64 0, i64 0
  %scevgep136.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %96, i64 0, i64 0, i64 0
  %97 = load i8, i8* %scevgep131.2, align 1
  %conv.i.2 = zext i8 %97 to i32
  %98 = load i8, i8* %scevgep136.2, align 1
  %conv5.i.2 = zext i8 %98 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep138.2 = getelementptr i8, i8* %scevgep137, i64 2
  store i8 %conv6.i.2, i8* %scevgep138.2, align 1
  %scevgep128.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %95, i64 0, i64 0, i64 1
  %99 = bitcast i8* %scevgep128.2 to [12 x [6 x i8]]*
  %scevgep135.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %96, i64 0, i64 0, i64 1
  %100 = bitcast i8* %scevgep135.2 to [6 x [6 x i8]]*
  %scevgep131.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %99, i64 0, i64 0, i64 0
  %scevgep136.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %100, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep131.3, align 1
  %conv.i.3 = zext i8 %101 to i32
  %102 = load i8, i8* %scevgep136.3, align 1
  %conv5.i.3 = zext i8 %102 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep138.3 = getelementptr i8, i8* %scevgep137, i64 3
  store i8 %conv6.i.3, i8* %scevgep138.3, align 1
  %scevgep128.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %99, i64 0, i64 0, i64 1
  %103 = bitcast i8* %scevgep128.3 to [12 x [6 x i8]]*
  %scevgep135.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %100, i64 0, i64 0, i64 1
  %104 = bitcast i8* %scevgep135.3 to [6 x [6 x i8]]*
  %scevgep131.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %103, i64 0, i64 0, i64 0
  %scevgep136.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %104, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep131.4, align 1
  %conv.i.4 = zext i8 %105 to i32
  %106 = load i8, i8* %scevgep136.4, align 1
  %conv5.i.4 = zext i8 %106 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep138.4 = getelementptr i8, i8* %scevgep137, i64 4
  store i8 %conv6.i.4, i8* %scevgep138.4, align 1
  %scevgep128.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %103, i64 0, i64 0, i64 1
  %107 = bitcast i8* %scevgep128.4 to [12 x [6 x i8]]*
  %scevgep135.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %104, i64 0, i64 0, i64 1
  %108 = bitcast i8* %scevgep135.4 to [6 x [6 x i8]]*
  %scevgep131.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %107, i64 0, i64 0, i64 0
  %scevgep136.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %108, i64 0, i64 0, i64 0
  %109 = load i8, i8* %scevgep131.5, align 1
  %conv.i.5 = zext i8 %109 to i32
  %110 = load i8, i8* %scevgep136.5, align 1
  %conv5.i.5 = zext i8 %110 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep138.5 = getelementptr i8, i8* %scevgep137, i64 5
  store i8 %conv6.i.5, i8* %scevgep138.5, align 1
  %scevgep72 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep7273 = bitcast i8* %scevgep72 to [12 x [6 x i8]]*
  %scevgep81 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep8182 = bitcast i8* %scevgep81 to [12 x [6 x i8]]*
  %scevgep88 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %dd, i64 0, i64 2, i64 0
  %scevgep8889 = bitcast i8* %scevgep88 to [12 x [6 x i8]]*
  %scevgep99 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep99100 = bitcast i8* %scevgep99 to [12 x [6 x i8]]*
  %scevgep106 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %dd, i64 0, i64 3, i64 0
  %scevgep106107 = bitcast i8* %scevgep106 to [12 x [6 x i8]]*
  %scevgep119 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep119120 = bitcast i8* %scevgep119 to [12 x [6 x i8]]*
  %scevgep80 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep7273, i64 0, i64 0, i64 0
  %scevgep87 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8182, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep80, align 1
  %conv.i293 = zext i8 %111 to i32
  %112 = load i8, i8* %scevgep87, align 1
  %conv5.i298 = zext i8 %112 to i32
  %xor.i299 = xor i32 %conv.i293, %conv5.i298
  %conv6.i300 = trunc i32 %xor.i299 to i8
  %scevgep92 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 0
  store i8 %conv6.i300, i8* %scevgep92, align 1
  %scevgep77 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep7273, i64 0, i64 0, i64 1
  %113 = bitcast i8* %scevgep77 to [12 x [6 x i8]]*
  %scevgep86 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8182, i64 0, i64 0, i64 1
  %114 = bitcast i8* %scevgep86 to [12 x [6 x i8]]*
  %scevgep80.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %113, i64 0, i64 0, i64 0
  %scevgep87.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %114, i64 0, i64 0, i64 0
  %115 = load i8, i8* %scevgep80.1, align 1
  %conv.i293.1 = zext i8 %115 to i32
  %116 = load i8, i8* %scevgep87.1, align 1
  %conv5.i298.1 = zext i8 %116 to i32
  %xor.i299.1 = xor i32 %conv.i293.1, %conv5.i298.1
  %conv6.i300.1 = trunc i32 %xor.i299.1 to i8
  %scevgep92.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 1
  store i8 %conv6.i300.1, i8* %scevgep92.1, align 1
  %scevgep77.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %113, i64 0, i64 0, i64 1
  %117 = bitcast i8* %scevgep77.1 to [12 x [6 x i8]]*
  %scevgep86.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %114, i64 0, i64 0, i64 1
  %118 = bitcast i8* %scevgep86.1 to [12 x [6 x i8]]*
  %scevgep80.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %117, i64 0, i64 0, i64 0
  %scevgep87.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %118, i64 0, i64 0, i64 0
  %119 = load i8, i8* %scevgep80.2, align 1
  %conv.i293.2 = zext i8 %119 to i32
  %120 = load i8, i8* %scevgep87.2, align 1
  %conv5.i298.2 = zext i8 %120 to i32
  %xor.i299.2 = xor i32 %conv.i293.2, %conv5.i298.2
  %conv6.i300.2 = trunc i32 %xor.i299.2 to i8
  %scevgep92.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 2
  store i8 %conv6.i300.2, i8* %scevgep92.2, align 1
  %scevgep77.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %117, i64 0, i64 0, i64 1
  %121 = bitcast i8* %scevgep77.2 to [12 x [6 x i8]]*
  %scevgep86.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %118, i64 0, i64 0, i64 1
  %122 = bitcast i8* %scevgep86.2 to [12 x [6 x i8]]*
  %scevgep80.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %121, i64 0, i64 0, i64 0
  %scevgep87.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %122, i64 0, i64 0, i64 0
  %123 = load i8, i8* %scevgep80.3, align 1
  %conv.i293.3 = zext i8 %123 to i32
  %124 = load i8, i8* %scevgep87.3, align 1
  %conv5.i298.3 = zext i8 %124 to i32
  %xor.i299.3 = xor i32 %conv.i293.3, %conv5.i298.3
  %conv6.i300.3 = trunc i32 %xor.i299.3 to i8
  %scevgep92.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 3
  store i8 %conv6.i300.3, i8* %scevgep92.3, align 1
  %scevgep77.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %121, i64 0, i64 0, i64 1
  %125 = bitcast i8* %scevgep77.3 to [12 x [6 x i8]]*
  %scevgep86.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %122, i64 0, i64 0, i64 1
  %126 = bitcast i8* %scevgep86.3 to [12 x [6 x i8]]*
  %scevgep80.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %125, i64 0, i64 0, i64 0
  %scevgep87.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %126, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep80.4, align 1
  %conv.i293.4 = zext i8 %127 to i32
  %128 = load i8, i8* %scevgep87.4, align 1
  %conv5.i298.4 = zext i8 %128 to i32
  %xor.i299.4 = xor i32 %conv.i293.4, %conv5.i298.4
  %conv6.i300.4 = trunc i32 %xor.i299.4 to i8
  %scevgep92.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 4
  store i8 %conv6.i300.4, i8* %scevgep92.4, align 1
  %scevgep77.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %125, i64 0, i64 0, i64 1
  %129 = bitcast i8* %scevgep77.4 to [12 x [6 x i8]]*
  %scevgep86.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %126, i64 0, i64 0, i64 1
  %130 = bitcast i8* %scevgep86.4 to [12 x [6 x i8]]*
  %scevgep80.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %129, i64 0, i64 0, i64 0
  %scevgep87.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %130, i64 0, i64 0, i64 0
  %131 = load i8, i8* %scevgep80.5, align 1
  %conv.i293.5 = zext i8 %131 to i32
  %132 = load i8, i8* %scevgep87.5, align 1
  %conv5.i298.5 = zext i8 %132 to i32
  %xor.i299.5 = xor i32 %conv.i293.5, %conv5.i298.5
  %conv6.i300.5 = trunc i32 %xor.i299.5 to i8
  %scevgep92.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 5
  store i8 %conv6.i300.5, i8* %scevgep92.5, align 1
  %scevgep98 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 0
  %scevgep105 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep99100, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep98, align 1
  %conv.i456 = zext i8 %133 to i32
  %134 = load i8, i8* %scevgep105, align 1
  %conv5.i461 = zext i8 %134 to i32
  %xor.i462 = xor i32 %conv.i456, %conv5.i461
  %conv6.i463 = trunc i32 %xor.i462 to i8
  %scevgep110 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 0
  store i8 %conv6.i463, i8* %scevgep110, align 1
  %scevgep95 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep8889, i64 0, i64 0, i64 1
  %135 = bitcast i8* %scevgep95 to [12 x [6 x i8]]*
  %scevgep104 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep99100, i64 0, i64 0, i64 1
  %136 = bitcast i8* %scevgep104 to [12 x [6 x i8]]*
  %scevgep98.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %135, i64 0, i64 0, i64 0
  %scevgep105.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %136, i64 0, i64 0, i64 0
  %137 = load i8, i8* %scevgep98.1, align 1
  %conv.i456.1 = zext i8 %137 to i32
  %138 = load i8, i8* %scevgep105.1, align 1
  %conv5.i461.1 = zext i8 %138 to i32
  %xor.i462.1 = xor i32 %conv.i456.1, %conv5.i461.1
  %conv6.i463.1 = trunc i32 %xor.i462.1 to i8
  %scevgep110.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 1
  store i8 %conv6.i463.1, i8* %scevgep110.1, align 1
  %scevgep95.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %135, i64 0, i64 0, i64 1
  %139 = bitcast i8* %scevgep95.1 to [12 x [6 x i8]]*
  %scevgep104.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %136, i64 0, i64 0, i64 1
  %140 = bitcast i8* %scevgep104.1 to [12 x [6 x i8]]*
  %scevgep98.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %139, i64 0, i64 0, i64 0
  %scevgep105.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %140, i64 0, i64 0, i64 0
  %141 = load i8, i8* %scevgep98.2, align 1
  %conv.i456.2 = zext i8 %141 to i32
  %142 = load i8, i8* %scevgep105.2, align 1
  %conv5.i461.2 = zext i8 %142 to i32
  %xor.i462.2 = xor i32 %conv.i456.2, %conv5.i461.2
  %conv6.i463.2 = trunc i32 %xor.i462.2 to i8
  %scevgep110.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 2
  store i8 %conv6.i463.2, i8* %scevgep110.2, align 1
  %scevgep95.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %139, i64 0, i64 0, i64 1
  %143 = bitcast i8* %scevgep95.2 to [12 x [6 x i8]]*
  %scevgep104.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %140, i64 0, i64 0, i64 1
  %144 = bitcast i8* %scevgep104.2 to [12 x [6 x i8]]*
  %scevgep98.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %143, i64 0, i64 0, i64 0
  %scevgep105.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %144, i64 0, i64 0, i64 0
  %145 = load i8, i8* %scevgep98.3, align 1
  %conv.i456.3 = zext i8 %145 to i32
  %146 = load i8, i8* %scevgep105.3, align 1
  %conv5.i461.3 = zext i8 %146 to i32
  %xor.i462.3 = xor i32 %conv.i456.3, %conv5.i461.3
  %conv6.i463.3 = trunc i32 %xor.i462.3 to i8
  %scevgep110.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 3
  store i8 %conv6.i463.3, i8* %scevgep110.3, align 1
  %scevgep95.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %143, i64 0, i64 0, i64 1
  %147 = bitcast i8* %scevgep95.3 to [12 x [6 x i8]]*
  %scevgep104.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %144, i64 0, i64 0, i64 1
  %148 = bitcast i8* %scevgep104.3 to [12 x [6 x i8]]*
  %scevgep98.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %147, i64 0, i64 0, i64 0
  %scevgep105.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %148, i64 0, i64 0, i64 0
  %149 = load i8, i8* %scevgep98.4, align 1
  %conv.i456.4 = zext i8 %149 to i32
  %150 = load i8, i8* %scevgep105.4, align 1
  %conv5.i461.4 = zext i8 %150 to i32
  %xor.i462.4 = xor i32 %conv.i456.4, %conv5.i461.4
  %conv6.i463.4 = trunc i32 %xor.i462.4 to i8
  %scevgep110.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 4
  store i8 %conv6.i463.4, i8* %scevgep110.4, align 1
  %scevgep95.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %147, i64 0, i64 0, i64 1
  %151 = bitcast i8* %scevgep95.4 to [12 x [6 x i8]]*
  %scevgep104.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %148, i64 0, i64 0, i64 1
  %152 = bitcast i8* %scevgep104.4 to [12 x [6 x i8]]*
  %scevgep98.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %151, i64 0, i64 0, i64 0
  %scevgep105.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %152, i64 0, i64 0, i64 0
  %153 = load i8, i8* %scevgep98.5, align 1
  %conv.i456.5 = zext i8 %153 to i32
  %154 = load i8, i8* %scevgep105.5, align 1
  %conv5.i461.5 = zext i8 %154 to i32
  %xor.i462.5 = xor i32 %conv.i456.5, %conv5.i461.5
  %conv6.i463.5 = trunc i32 %xor.i462.5 to i8
  %scevgep110.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 5
  store i8 %conv6.i463.5, i8* %scevgep110.5, align 1
  %arrayidx90 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1
  %arraydecay91 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx90, i64 0, i64 0
  %scevgep116 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep116, align 1
  %conv.i421 = zext i8 %155 to i32
  %arrayidx4.i425 = getelementptr inbounds i8, i8* %arraydecay91, i64 1
  %156 = load i8, i8* %arrayidx4.i425, align 1
  %conv5.i426 = zext i8 %156 to i32
  %xor.i427 = xor i32 %conv.i421, %conv5.i426
  %conv6.i428 = trunc i32 %xor.i427 to i8
  %scevgep123 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep119120, i64 0, i64 0, i64 0
  store i8 %conv6.i428, i8* %scevgep123, align 1
  %scevgep113 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep106107, i64 0, i64 0, i64 1
  %157 = bitcast i8* %scevgep113 to [12 x [6 x i8]]*
  %scevgep116.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %157, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep116.1, align 1
  %conv.i421.1 = zext i8 %158 to i32
  %arrayidx4.i425.1 = getelementptr inbounds i8, i8* %arraydecay91, i64 2
  %159 = load i8, i8* %arrayidx4.i425.1, align 1
  %conv5.i426.1 = zext i8 %159 to i32
  %xor.i427.1 = xor i32 %conv.i421.1, %conv5.i426.1
  %conv6.i428.1 = trunc i32 %xor.i427.1 to i8
  %scevgep123.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep119120, i64 0, i64 0, i64 1
  store i8 %conv6.i428.1, i8* %scevgep123.1, align 1
  %scevgep113.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %157, i64 0, i64 0, i64 1
  %160 = bitcast i8* %scevgep113.1 to [12 x [6 x i8]]*
  %scevgep116.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %160, i64 0, i64 0, i64 0
  %161 = load i8, i8* %scevgep116.2, align 1
  %conv.i421.2 = zext i8 %161 to i32
  %arrayidx4.i425.2 = getelementptr inbounds i8, i8* %arraydecay91, i64 3
  %162 = load i8, i8* %arrayidx4.i425.2, align 1
  %conv5.i426.2 = zext i8 %162 to i32
  %xor.i427.2 = xor i32 %conv.i421.2, %conv5.i426.2
  %conv6.i428.2 = trunc i32 %xor.i427.2 to i8
  %scevgep123.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep119120, i64 0, i64 0, i64 2
  store i8 %conv6.i428.2, i8* %scevgep123.2, align 1
  %scevgep113.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %160, i64 0, i64 0, i64 1
  %163 = bitcast i8* %scevgep113.2 to [12 x [6 x i8]]*
  %scevgep116.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %163, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep116.3, align 1
  %conv.i421.3 = zext i8 %164 to i32
  %arrayidx4.i425.3 = getelementptr inbounds i8, i8* %arraydecay91, i64 4
  %165 = load i8, i8* %arrayidx4.i425.3, align 1
  %conv5.i426.3 = zext i8 %165 to i32
  %xor.i427.3 = xor i32 %conv.i421.3, %conv5.i426.3
  %conv6.i428.3 = trunc i32 %xor.i427.3 to i8
  %scevgep123.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep119120, i64 0, i64 0, i64 3
  store i8 %conv6.i428.3, i8* %scevgep123.3, align 1
  %scevgep113.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %163, i64 0, i64 0, i64 1
  %166 = bitcast i8* %scevgep113.3 to [12 x [6 x i8]]*
  %scevgep116.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %166, i64 0, i64 0, i64 0
  %167 = load i8, i8* %scevgep116.4, align 1
  %conv.i421.4 = zext i8 %167 to i32
  %arrayidx4.i425.4 = getelementptr inbounds i8, i8* %arraydecay91, i64 5
  %168 = load i8, i8* %arrayidx4.i425.4, align 1
  %conv5.i426.4 = zext i8 %168 to i32
  %xor.i427.4 = xor i32 %conv.i421.4, %conv5.i426.4
  %conv6.i428.4 = trunc i32 %xor.i427.4 to i8
  %scevgep123.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep119120, i64 0, i64 0, i64 4
  store i8 %conv6.i428.4, i8* %scevgep123.4, align 1
  %scevgep113.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %166, i64 0, i64 0, i64 1
  %169 = bitcast i8* %scevgep113.4 to [12 x [6 x i8]]*
  %scevgep116.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %169, i64 0, i64 0, i64 0
  %170 = load i8, i8* %scevgep116.5, align 1
  %conv.i421.5 = zext i8 %170 to i32
  %171 = load i8, i8* %arraydecay91, align 1
  %conv5.i426.5 = zext i8 %171 to i32
  %xor.i427.5 = xor i32 %conv.i421.5, %conv5.i426.5
  %conv6.i428.5 = trunc i32 %xor.i427.5 to i8
  %scevgep123.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep119120, i64 0, i64 0, i64 5
  store i8 %conv6.i428.5, i8* %scevgep123.5, align 1
  %scevgep58 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep5859 = bitcast i8* %scevgep58 to [12 x [6 x i8]]*
  %scevgep65 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 4, i64 0
  %scevgep6566 = bitcast i8* %scevgep65 to [12 x [6 x i8]]*
  %scevgep64 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep5859, i64 0, i64 0, i64 0
  %scevgep69 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep6566, i64 0, i64 0, i64 0
  %172 = load i8, i8* %scevgep64, align 1
  %conv.i396 = zext i8 %172 to i32
  %173 = load i8, i8* %scevgep69, align 1
  %conv5.i401 = zext i8 %173 to i32
  %xor.i402 = xor i32 %conv.i396, %conv5.i401
  %conv6.i403 = trunc i32 %xor.i402 to i8
  store i8 %conv6.i403, i8* %c, align 1
  %scevgep61 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep5859, i64 0, i64 0, i64 1
  %174 = bitcast i8* %scevgep61 to [12 x [6 x i8]]*
  %scevgep68 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep6566, i64 0, i64 0, i64 1
  %175 = bitcast i8* %scevgep68 to [12 x [6 x i8]]*
  %scevgep64.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %174, i64 0, i64 0, i64 0
  %scevgep69.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %175, i64 0, i64 0, i64 0
  %176 = load i8, i8* %scevgep64.1, align 1
  %conv.i396.1 = zext i8 %176 to i32
  %177 = load i8, i8* %scevgep69.1, align 1
  %conv5.i401.1 = zext i8 %177 to i32
  %xor.i402.1 = xor i32 %conv.i396.1, %conv5.i401.1
  %conv6.i403.1 = trunc i32 %xor.i402.1 to i8
  %scevgep70.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i403.1, i8* %scevgep70.1, align 1
  %scevgep61.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %174, i64 0, i64 0, i64 1
  %178 = bitcast i8* %scevgep61.1 to [12 x [6 x i8]]*
  %scevgep68.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %175, i64 0, i64 0, i64 1
  %179 = bitcast i8* %scevgep68.1 to [12 x [6 x i8]]*
  %scevgep64.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %178, i64 0, i64 0, i64 0
  %scevgep69.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %179, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep64.2, align 1
  %conv.i396.2 = zext i8 %180 to i32
  %181 = load i8, i8* %scevgep69.2, align 1
  %conv5.i401.2 = zext i8 %181 to i32
  %xor.i402.2 = xor i32 %conv.i396.2, %conv5.i401.2
  %conv6.i403.2 = trunc i32 %xor.i402.2 to i8
  %scevgep70.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i403.2, i8* %scevgep70.2, align 1
  %scevgep61.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %178, i64 0, i64 0, i64 1
  %182 = bitcast i8* %scevgep61.2 to [12 x [6 x i8]]*
  %scevgep68.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %179, i64 0, i64 0, i64 1
  %183 = bitcast i8* %scevgep68.2 to [12 x [6 x i8]]*
  %scevgep64.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %182, i64 0, i64 0, i64 0
  %scevgep69.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %183, i64 0, i64 0, i64 0
  %184 = load i8, i8* %scevgep64.3, align 1
  %conv.i396.3 = zext i8 %184 to i32
  %185 = load i8, i8* %scevgep69.3, align 1
  %conv5.i401.3 = zext i8 %185 to i32
  %xor.i402.3 = xor i32 %conv.i396.3, %conv5.i401.3
  %conv6.i403.3 = trunc i32 %xor.i402.3 to i8
  %scevgep70.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i403.3, i8* %scevgep70.3, align 1
  %scevgep61.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %182, i64 0, i64 0, i64 1
  %186 = bitcast i8* %scevgep61.3 to [12 x [6 x i8]]*
  %scevgep68.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %183, i64 0, i64 0, i64 1
  %187 = bitcast i8* %scevgep68.3 to [12 x [6 x i8]]*
  %scevgep64.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %186, i64 0, i64 0, i64 0
  %scevgep69.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %187, i64 0, i64 0, i64 0
  %188 = load i8, i8* %scevgep64.4, align 1
  %conv.i396.4 = zext i8 %188 to i32
  %189 = load i8, i8* %scevgep69.4, align 1
  %conv5.i401.4 = zext i8 %189 to i32
  %xor.i402.4 = xor i32 %conv.i396.4, %conv5.i401.4
  %conv6.i403.4 = trunc i32 %xor.i402.4 to i8
  %scevgep70.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i403.4, i8* %scevgep70.4, align 1
  %scevgep61.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %186, i64 0, i64 0, i64 1
  %190 = bitcast i8* %scevgep61.4 to [12 x [6 x i8]]*
  %scevgep68.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %187, i64 0, i64 0, i64 1
  %191 = bitcast i8* %scevgep68.4 to [12 x [6 x i8]]*
  %scevgep64.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %190, i64 0, i64 0, i64 0
  %scevgep69.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %191, i64 0, i64 0, i64 0
  %192 = load i8, i8* %scevgep64.5, align 1
  %conv.i396.5 = zext i8 %192 to i32
  %193 = load i8, i8* %scevgep69.5, align 1
  %conv5.i401.5 = zext i8 %193 to i32
  %xor.i402.5 = xor i32 %conv.i396.5, %conv5.i401.5
  %conv6.i403.5 = trunc i32 %xor.i402.5 to i8
  %scevgep70.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i403.5, i8* %scevgep70.5, align 1
  %scevgep46 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 5, i64 0
  %scevgep4647 = bitcast i8* %scevgep46 to [12 x [6 x i8]]*
  %scevgep52 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep4647, i64 0, i64 0, i64 0
  %194 = load i8, i8* %scevgep52, align 1
  %conv.i371 = zext i8 %194 to i32
  %195 = load i8, i8* %c, align 1
  %conv5.i376 = zext i8 %195 to i32
  %xor.i377 = xor i32 %conv.i371, %conv5.i376
  %conv6.i378 = trunc i32 %xor.i377 to i8
  store i8 %conv6.i378, i8* %c, align 1
  %scevgep49 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep4647, i64 0, i64 0, i64 1
  %196 = bitcast i8* %scevgep49 to [12 x [6 x i8]]*
  %scevgep54 = getelementptr i8, i8* %c, i64 1
  %scevgep52.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %196, i64 0, i64 0, i64 0
  %197 = load i8, i8* %scevgep52.1, align 1
  %conv.i371.1 = zext i8 %197 to i32
  %198 = load i8, i8* %scevgep54, align 1
  %conv5.i376.1 = zext i8 %198 to i32
  %xor.i377.1 = xor i32 %conv.i371.1, %conv5.i376.1
  %conv6.i378.1 = trunc i32 %xor.i377.1 to i8
  %scevgep56.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i378.1, i8* %scevgep56.1, align 1
  %scevgep49.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %196, i64 0, i64 0, i64 1
  %199 = bitcast i8* %scevgep49.1 to [12 x [6 x i8]]*
  %scevgep54.1 = getelementptr i8, i8* %scevgep54, i64 1
  %scevgep52.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %199, i64 0, i64 0, i64 0
  %200 = load i8, i8* %scevgep52.2, align 1
  %conv.i371.2 = zext i8 %200 to i32
  %201 = load i8, i8* %scevgep54.1, align 1
  %conv5.i376.2 = zext i8 %201 to i32
  %xor.i377.2 = xor i32 %conv.i371.2, %conv5.i376.2
  %conv6.i378.2 = trunc i32 %xor.i377.2 to i8
  %scevgep56.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i378.2, i8* %scevgep56.2, align 1
  %scevgep49.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %199, i64 0, i64 0, i64 1
  %202 = bitcast i8* %scevgep49.2 to [12 x [6 x i8]]*
  %scevgep54.2 = getelementptr i8, i8* %scevgep54.1, i64 1
  %scevgep52.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %202, i64 0, i64 0, i64 0
  %203 = load i8, i8* %scevgep52.3, align 1
  %conv.i371.3 = zext i8 %203 to i32
  %204 = load i8, i8* %scevgep54.2, align 1
  %conv5.i376.3 = zext i8 %204 to i32
  %xor.i377.3 = xor i32 %conv.i371.3, %conv5.i376.3
  %conv6.i378.3 = trunc i32 %xor.i377.3 to i8
  %scevgep56.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i378.3, i8* %scevgep56.3, align 1
  %scevgep49.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %202, i64 0, i64 0, i64 1
  %205 = bitcast i8* %scevgep49.3 to [12 x [6 x i8]]*
  %scevgep54.3 = getelementptr i8, i8* %scevgep54.2, i64 1
  %scevgep52.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %205, i64 0, i64 0, i64 0
  %206 = load i8, i8* %scevgep52.4, align 1
  %conv.i371.4 = zext i8 %206 to i32
  %207 = load i8, i8* %scevgep54.3, align 1
  %conv5.i376.4 = zext i8 %207 to i32
  %xor.i377.4 = xor i32 %conv.i371.4, %conv5.i376.4
  %conv6.i378.4 = trunc i32 %xor.i377.4 to i8
  %scevgep56.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i378.4, i8* %scevgep56.4, align 1
  %scevgep49.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %205, i64 0, i64 0, i64 1
  %208 = bitcast i8* %scevgep49.4 to [12 x [6 x i8]]*
  %scevgep54.4 = getelementptr i8, i8* %scevgep54.3, i64 1
  %scevgep52.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %208, i64 0, i64 0, i64 0
  %209 = load i8, i8* %scevgep52.5, align 1
  %conv.i371.5 = zext i8 %209 to i32
  %210 = load i8, i8* %scevgep54.4, align 1
  %conv5.i376.5 = zext i8 %210 to i32
  %xor.i377.5 = xor i32 %conv.i371.5, %conv5.i376.5
  %conv6.i378.5 = trunc i32 %xor.i377.5 to i8
  %scevgep56.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i378.5, i8* %scevgep56.5, align 1
  %arrayidx108 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 2
  %arraydecay109 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx108, i64 0, i64 0
  %arrayidx.i342 = getelementptr inbounds i8, i8* %arraydecay109, i64 1
  %211 = load i8, i8* %arrayidx.i342, align 1
  %conv.i343 = zext i8 %211 to i32
  %212 = load i8, i8* %c, align 1
  %conv5.i348 = zext i8 %212 to i32
  %xor.i349 = xor i32 %conv.i343, %conv5.i348
  %conv6.i350 = trunc i32 %xor.i349 to i8
  store i8 %conv6.i350, i8* %c, align 1
  %scevgep40 = getelementptr i8, i8* %c, i64 1
  %arrayidx.i342.1 = getelementptr inbounds i8, i8* %arraydecay109, i64 2
  %213 = load i8, i8* %arrayidx.i342.1, align 1
  %conv.i343.1 = zext i8 %213 to i32
  %214 = load i8, i8* %scevgep40, align 1
  %conv5.i348.1 = zext i8 %214 to i32
  %xor.i349.1 = xor i32 %conv.i343.1, %conv5.i348.1
  %conv6.i350.1 = trunc i32 %xor.i349.1 to i8
  %scevgep44.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i350.1, i8* %scevgep44.1, align 1
  %scevgep40.1 = getelementptr i8, i8* %scevgep40, i64 1
  %arrayidx.i342.2 = getelementptr inbounds i8, i8* %arraydecay109, i64 3
  %215 = load i8, i8* %arrayidx.i342.2, align 1
  %conv.i343.2 = zext i8 %215 to i32
  %216 = load i8, i8* %scevgep40.1, align 1
  %conv5.i348.2 = zext i8 %216 to i32
  %xor.i349.2 = xor i32 %conv.i343.2, %conv5.i348.2
  %conv6.i350.2 = trunc i32 %xor.i349.2 to i8
  %scevgep44.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i350.2, i8* %scevgep44.2, align 1
  %scevgep40.2 = getelementptr i8, i8* %scevgep40.1, i64 1
  %arrayidx.i342.3 = getelementptr inbounds i8, i8* %arraydecay109, i64 4
  %217 = load i8, i8* %arrayidx.i342.3, align 1
  %conv.i343.3 = zext i8 %217 to i32
  %218 = load i8, i8* %scevgep40.2, align 1
  %conv5.i348.3 = zext i8 %218 to i32
  %xor.i349.3 = xor i32 %conv.i343.3, %conv5.i348.3
  %conv6.i350.3 = trunc i32 %xor.i349.3 to i8
  %scevgep44.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i350.3, i8* %scevgep44.3, align 1
  %scevgep40.3 = getelementptr i8, i8* %scevgep40.2, i64 1
  %arrayidx.i342.4 = getelementptr inbounds i8, i8* %arraydecay109, i64 5
  %219 = load i8, i8* %arrayidx.i342.4, align 1
  %conv.i343.4 = zext i8 %219 to i32
  %220 = load i8, i8* %scevgep40.3, align 1
  %conv5.i348.4 = zext i8 %220 to i32
  %xor.i349.4 = xor i32 %conv.i343.4, %conv5.i348.4
  %conv6.i350.4 = trunc i32 %xor.i349.4 to i8
  %scevgep44.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i350.4, i8* %scevgep44.4, align 1
  %scevgep40.4 = getelementptr i8, i8* %scevgep40.3, i64 1
  %221 = load i8, i8* %arraydecay109, align 1
  %conv.i343.5 = zext i8 %221 to i32
  %222 = load i8, i8* %scevgep40.4, align 1
  %conv5.i348.5 = zext i8 %222 to i32
  %xor.i349.5 = xor i32 %conv.i343.5, %conv5.i348.5
  %conv6.i350.5 = trunc i32 %xor.i349.5 to i8
  %scevgep44.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i350.5, i8* %scevgep44.5, align 1
  %scevgep25 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %cc, i64 0, i64 6, i64 0
  %scevgep2526 = bitcast i8* %scevgep25 to [12 x [6 x i8]]*
  %scevgep31 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep2526, i64 0, i64 0, i64 0
  %223 = load i8, i8* %scevgep31, align 1
  %conv.i318 = zext i8 %223 to i32
  %224 = load i8, i8* %c, align 1
  %conv5.i323 = zext i8 %224 to i32
  %xor.i324 = xor i32 %conv.i318, %conv5.i323
  %conv6.i325 = trunc i32 %xor.i324 to i8
  store i8 %conv6.i325, i8* %c, align 1
  %scevgep28 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %scevgep2526, i64 0, i64 0, i64 1
  %225 = bitcast i8* %scevgep28 to [12 x [6 x i8]]*
  %scevgep33 = getelementptr i8, i8* %c, i64 1
  %scevgep31.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %225, i64 0, i64 0, i64 0
  %226 = load i8, i8* %scevgep31.1, align 1
  %conv.i318.1 = zext i8 %226 to i32
  %227 = load i8, i8* %scevgep33, align 1
  %conv5.i323.1 = zext i8 %227 to i32
  %xor.i324.1 = xor i32 %conv.i318.1, %conv5.i323.1
  %conv6.i325.1 = trunc i32 %xor.i324.1 to i8
  %scevgep35.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i325.1, i8* %scevgep35.1, align 1
  %scevgep28.1 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %225, i64 0, i64 0, i64 1
  %228 = bitcast i8* %scevgep28.1 to [12 x [6 x i8]]*
  %scevgep33.1 = getelementptr i8, i8* %scevgep33, i64 1
  %scevgep31.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %228, i64 0, i64 0, i64 0
  %229 = load i8, i8* %scevgep31.2, align 1
  %conv.i318.2 = zext i8 %229 to i32
  %230 = load i8, i8* %scevgep33.1, align 1
  %conv5.i323.2 = zext i8 %230 to i32
  %xor.i324.2 = xor i32 %conv.i318.2, %conv5.i323.2
  %conv6.i325.2 = trunc i32 %xor.i324.2 to i8
  %scevgep35.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i325.2, i8* %scevgep35.2, align 1
  %scevgep28.2 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %228, i64 0, i64 0, i64 1
  %231 = bitcast i8* %scevgep28.2 to [12 x [6 x i8]]*
  %scevgep33.2 = getelementptr i8, i8* %scevgep33.1, i64 1
  %scevgep31.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %231, i64 0, i64 0, i64 0
  %232 = load i8, i8* %scevgep31.3, align 1
  %conv.i318.3 = zext i8 %232 to i32
  %233 = load i8, i8* %scevgep33.2, align 1
  %conv5.i323.3 = zext i8 %233 to i32
  %xor.i324.3 = xor i32 %conv.i318.3, %conv5.i323.3
  %conv6.i325.3 = trunc i32 %xor.i324.3 to i8
  %scevgep35.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i325.3, i8* %scevgep35.3, align 1
  %scevgep28.3 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %231, i64 0, i64 0, i64 1
  %234 = bitcast i8* %scevgep28.3 to [12 x [6 x i8]]*
  %scevgep33.3 = getelementptr i8, i8* %scevgep33.2, i64 1
  %scevgep31.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %234, i64 0, i64 0, i64 0
  %235 = load i8, i8* %scevgep31.4, align 1
  %conv.i318.4 = zext i8 %235 to i32
  %236 = load i8, i8* %scevgep33.3, align 1
  %conv5.i323.4 = zext i8 %236 to i32
  %xor.i324.4 = xor i32 %conv.i318.4, %conv5.i323.4
  %conv6.i325.4 = trunc i32 %xor.i324.4 to i8
  %scevgep35.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i325.4, i8* %scevgep35.4, align 1
  %scevgep28.4 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %234, i64 0, i64 0, i64 1
  %237 = bitcast i8* %scevgep28.4 to [12 x [6 x i8]]*
  %scevgep33.4 = getelementptr i8, i8* %scevgep33.3, i64 1
  %scevgep31.5 = getelementptr [12 x [6 x i8]], [12 x [6 x i8]]* %237, i64 0, i64 0, i64 0
  %238 = load i8, i8* %scevgep31.5, align 1
  %conv.i318.5 = zext i8 %238 to i32
  %239 = load i8, i8* %scevgep33.4, align 1
  %conv5.i323.5 = zext i8 %239 to i32
  %xor.i324.5 = xor i32 %conv.i318.5, %conv5.i323.5
  %conv6.i325.5 = trunc i32 %xor.i324.5 to i8
  %scevgep35.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i325.5, i8* %scevgep35.5, align 1
  %call112 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv113 = zext i8 %call112 to i32
  %240 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %241 = load i8, i8* %scevgep.1, align 1
  %conv.i.i274.1 = zext i8 %241 to i32
  %conv1.i.i275.1 = zext i8 %240 to i32
  %xor.i.i276.1 = xor i32 %conv1.i.i275.1, %conv.i.i274.1
  %conv2.i.i277.1 = trunc i32 %xor.i.i276.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %242 = load i8, i8* %scevgep.2, align 1
  %conv.i.i274.2 = zext i8 %242 to i32
  %conv1.i.i275.2 = zext i8 %conv2.i.i277.1 to i32
  %xor.i.i276.2 = xor i32 %conv1.i.i275.2, %conv.i.i274.2
  %conv2.i.i277.2 = trunc i32 %xor.i.i276.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %243 = load i8, i8* %scevgep.3, align 1
  %conv.i.i274.3 = zext i8 %243 to i32
  %conv1.i.i275.3 = zext i8 %conv2.i.i277.2 to i32
  %xor.i.i276.3 = xor i32 %conv1.i.i275.3, %conv.i.i274.3
  %conv2.i.i277.3 = trunc i32 %xor.i.i276.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %244 = load i8, i8* %scevgep.4, align 1
  %conv.i.i274.4 = zext i8 %244 to i32
  %conv1.i.i275.4 = zext i8 %conv2.i.i277.3 to i32
  %xor.i.i276.4 = xor i32 %conv1.i.i275.4, %conv.i.i274.4
  %conv2.i.i277.4 = trunc i32 %xor.i.i276.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %245 = load i8, i8* %scevgep.5, align 1
  %conv.i.i274.5 = zext i8 %245 to i32
  %conv1.i.i275.5 = zext i8 %conv2.i.i277.4 to i32
  %xor.i.i276.5 = xor i32 %conv1.i.i275.5, %conv.i.i274.5
  %conv2.i.i277.5 = trunc i32 %xor.i.i276.5 to i8
  %conv115 = zext i8 %conv2.i.i277.5 to i32
  %cmp116 = icmp eq i32 %conv113, %conv115
  call void @assert(i1 zeroext %cmp116)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %r = alloca [6 x i8], align 1
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
  %conv2 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep29, align 1
  %call6.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 1
  store i8 %call6.1, i8* %scevgep29.1, align 1
  %call6.2 = call zeroext i8 (...) @rand()
  %scevgep29.2 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 2
  store i8 %call6.2, i8* %scevgep29.2, align 1
  %call6.3 = call zeroext i8 (...) @rand()
  %scevgep29.3 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 3
  store i8 %call6.3, i8* %scevgep29.3, align 1
  %call6.4 = call zeroext i8 (...) @rand()
  %scevgep29.4 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 4
  store i8 %call6.4, i8* %scevgep29.4, align 1
  %call6.5 = call zeroext i8 (...) @rand()
  %scevgep29.5 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 5
  store i8 %call6.5, i8* %scevgep29.5, align 1
  %scevgep21 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 0
  %6 = load i8, i8* %scevgep21, align 1
  %conv.i = zext i8 %6 to i32
  %7 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %7 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %scevgep18 = getelementptr [6 x i8], [6 x i8]* %r, i64 0, i64 1
  %8 = bitcast i8* %scevgep18 to [6 x i8]*
  %scevgep23 = getelementptr i8, i8* %x, i64 1
  %scevgep21.1 = getelementptr [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %9 = load i8, i8* %scevgep21.1, align 1
  %conv.i.1 = zext i8 %9 to i32
  %10 = load i8, i8* %scevgep23, align 1
  %conv5.i.1 = zext i8 %10 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep25.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i.1, i8* %scevgep25.1, align 1
  %scevgep18.1 = getelementptr [6 x i8], [6 x i8]* %8, i64 0, i64 1
  %11 = bitcast i8* %scevgep18.1 to [6 x i8]*
  %scevgep23.1 = getelementptr i8, i8* %scevgep23, i64 1
  %scevgep21.2 = getelementptr [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %12 = load i8, i8* %scevgep21.2, align 1
  %conv.i.2 = zext i8 %12 to i32
  %13 = load i8, i8* %scevgep23.1, align 1
  %conv5.i.2 = zext i8 %13 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep25.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i.2, i8* %scevgep25.2, align 1
  %scevgep18.2 = getelementptr [6 x i8], [6 x i8]* %11, i64 0, i64 1
  %14 = bitcast i8* %scevgep18.2 to [6 x i8]*
  %scevgep23.2 = getelementptr i8, i8* %scevgep23.1, i64 1
  %scevgep21.3 = getelementptr [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %15 = load i8, i8* %scevgep21.3, align 1
  %conv.i.3 = zext i8 %15 to i32
  %16 = load i8, i8* %scevgep23.2, align 1
  %conv5.i.3 = zext i8 %16 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep25.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i.3, i8* %scevgep25.3, align 1
  %scevgep18.3 = getelementptr [6 x i8], [6 x i8]* %14, i64 0, i64 1
  %17 = bitcast i8* %scevgep18.3 to [6 x i8]*
  %scevgep23.3 = getelementptr i8, i8* %scevgep23.2, i64 1
  %scevgep21.4 = getelementptr [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %18 = load i8, i8* %scevgep21.4, align 1
  %conv.i.4 = zext i8 %18 to i32
  %19 = load i8, i8* %scevgep23.3, align 1
  %conv5.i.4 = zext i8 %19 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep25.4 = getelementptr i8, i8* %x, i64 4
  store i8 %conv6.i.4, i8* %scevgep25.4, align 1
  %scevgep18.4 = getelementptr [6 x i8], [6 x i8]* %17, i64 0, i64 1
  %20 = bitcast i8* %scevgep18.4 to [6 x i8]*
  %scevgep23.4 = getelementptr i8, i8* %scevgep23.3, i64 1
  %scevgep21.5 = getelementptr [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %21 = load i8, i8* %scevgep21.5, align 1
  %conv.i.5 = zext i8 %21 to i32
  %22 = load i8, i8* %scevgep23.4, align 1
  %conv5.i.5 = zext i8 %22 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep25.5 = getelementptr i8, i8* %x, i64 5
  store i8 %conv6.i.5, i8* %scevgep25.5, align 1
  %arraydecay7 = getelementptr inbounds [6 x i8], [6 x i8]* %r, i64 0, i64 0
  %arrayidx.i42 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %23 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %23 to i32
  %24 = load i8, i8* %x, align 1
  %conv5.i48 = zext i8 %24 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  store i8 %conv6.i50, i8* %x, align 1
  %scevgep11 = getelementptr i8, i8* %x, i64 1
  %arrayidx.i42.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %25 = load i8, i8* %arrayidx.i42.1, align 1
  %conv.i43.1 = zext i8 %25 to i32
  %26 = load i8, i8* %scevgep11, align 1
  %conv5.i48.1 = zext i8 %26 to i32
  %xor.i49.1 = xor i32 %conv.i43.1, %conv5.i48.1
  %conv6.i50.1 = trunc i32 %xor.i49.1 to i8
  %scevgep15.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i50.1, i8* %scevgep15.1, align 1
  %scevgep11.1 = getelementptr i8, i8* %scevgep11, i64 1
  %arrayidx.i42.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %27 = load i8, i8* %arrayidx.i42.2, align 1
  %conv.i43.2 = zext i8 %27 to i32
  %28 = load i8, i8* %scevgep11.1, align 1
  %conv5.i48.2 = zext i8 %28 to i32
  %xor.i49.2 = xor i32 %conv.i43.2, %conv5.i48.2
  %conv6.i50.2 = trunc i32 %xor.i49.2 to i8
  %scevgep15.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i50.2, i8* %scevgep15.2, align 1
  %scevgep11.2 = getelementptr i8, i8* %scevgep11.1, i64 1
  %arrayidx.i42.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %29 = load i8, i8* %arrayidx.i42.3, align 1
  %conv.i43.3 = zext i8 %29 to i32
  %30 = load i8, i8* %scevgep11.2, align 1
  %conv5.i48.3 = zext i8 %30 to i32
  %xor.i49.3 = xor i32 %conv.i43.3, %conv5.i48.3
  %conv6.i50.3 = trunc i32 %xor.i49.3 to i8
  %scevgep15.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i50.3, i8* %scevgep15.3, align 1
  %scevgep11.3 = getelementptr i8, i8* %scevgep11.2, i64 1
  %arrayidx.i42.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 5
  %31 = load i8, i8* %arrayidx.i42.4, align 1
  %conv.i43.4 = zext i8 %31 to i32
  %32 = load i8, i8* %scevgep11.3, align 1
  %conv5.i48.4 = zext i8 %32 to i32
  %xor.i49.4 = xor i32 %conv.i43.4, %conv5.i48.4
  %conv6.i50.4 = trunc i32 %xor.i49.4 to i8
  %scevgep15.4 = getelementptr i8, i8* %x, i64 4
  store i8 %conv6.i50.4, i8* %scevgep15.4, align 1
  %scevgep11.4 = getelementptr i8, i8* %scevgep11.3, i64 1
  %33 = load i8, i8* %arraydecay7, align 1
  %conv.i43.5 = zext i8 %33 to i32
  %34 = load i8, i8* %scevgep11.4, align 1
  %conv5.i48.5 = zext i8 %34 to i32
  %xor.i49.5 = xor i32 %conv.i43.5, %conv5.i48.5
  %conv6.i50.5 = trunc i32 %xor.i49.5 to i8
  %scevgep15.5 = getelementptr i8, i8* %x, i64 5
  store i8 %conv6.i50.5, i8* %scevgep15.5, align 1
  %conv8 = zext i8 %call to i32
  %35 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %36 = load i8, i8* %scevgep.1, align 1
  %conv.i.i24.1 = zext i8 %36 to i32
  %conv1.i.i25.1 = zext i8 %35 to i32
  %xor.i.i26.1 = xor i32 %conv1.i.i25.1, %conv.i.i24.1
  %conv2.i.i27.1 = trunc i32 %xor.i.i26.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %37 = load i8, i8* %scevgep.2, align 1
  %conv.i.i24.2 = zext i8 %37 to i32
  %conv1.i.i25.2 = zext i8 %conv2.i.i27.1 to i32
  %xor.i.i26.2 = xor i32 %conv1.i.i25.2, %conv.i.i24.2
  %conv2.i.i27.2 = trunc i32 %xor.i.i26.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %38 = load i8, i8* %scevgep.3, align 1
  %conv.i.i24.3 = zext i8 %38 to i32
  %conv1.i.i25.3 = zext i8 %conv2.i.i27.2 to i32
  %xor.i.i26.3 = xor i32 %conv1.i.i25.3, %conv.i.i24.3
  %conv2.i.i27.3 = trunc i32 %xor.i.i26.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %39 = load i8, i8* %scevgep.4, align 1
  %conv.i.i24.4 = zext i8 %39 to i32
  %conv1.i.i25.4 = zext i8 %conv2.i.i27.3 to i32
  %xor.i.i26.4 = xor i32 %conv1.i.i25.4, %conv.i.i24.4
  %conv2.i.i27.4 = trunc i32 %xor.i.i26.4 to i8
  %scevgep.5 = getelementptr i8, i8* %x, i64 5
  %40 = load i8, i8* %scevgep.5, align 1
  %conv.i.i24.5 = zext i8 %40 to i32
  %conv1.i.i25.5 = zext i8 %conv2.i.i27.4 to i32
  %xor.i.i26.5 = xor i32 %conv1.i.i25.5, %conv.i.i24.5
  %conv2.i.i27.5 = trunc i32 %xor.i.i26.5 to i8
  %conv10 = zext i8 %conv2.i.i27.5 to i32
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
