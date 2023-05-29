; ModuleID = '../examples/gross-ches2017.inline-5.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 5, align 4
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
  %a1b = alloca [6 x i8], align 1
  %ab1 = alloca [6 x i8], align 1
  %a2b = alloca [6 x i8], align 1
  %ab2 = alloca [6 x i8], align 1
  %z = alloca [6 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep182.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep182.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep182.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep182.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep182.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep182.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep182.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep182.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep182.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep182.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %conv3 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %6 = load i8, i8* %b, align 1
  %scevgep178.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep178.1, align 1
  %conv.i.i81.1 = zext i8 %7 to i32
  %conv1.i.i82.1 = zext i8 %6 to i32
  %xor.i.i83.1 = xor i32 %conv1.i.i82.1, %conv.i.i81.1
  %conv2.i.i84.1 = trunc i32 %xor.i.i83.1 to i8
  %scevgep178.2 = getelementptr i8, i8* %b, i64 2
  %8 = load i8, i8* %scevgep178.2, align 1
  %conv.i.i81.2 = zext i8 %8 to i32
  %conv1.i.i82.2 = zext i8 %conv2.i.i84.1 to i32
  %xor.i.i83.2 = xor i32 %conv1.i.i82.2, %conv.i.i81.2
  %conv2.i.i84.2 = trunc i32 %xor.i.i83.2 to i8
  %scevgep178.3 = getelementptr i8, i8* %b, i64 3
  %9 = load i8, i8* %scevgep178.3, align 1
  %conv.i.i81.3 = zext i8 %9 to i32
  %conv1.i.i82.3 = zext i8 %conv2.i.i84.2 to i32
  %xor.i.i83.3 = xor i32 %conv1.i.i82.3, %conv.i.i81.3
  %conv2.i.i84.3 = trunc i32 %xor.i.i83.3 to i8
  %scevgep178.4 = getelementptr i8, i8* %b, i64 4
  %10 = load i8, i8* %scevgep178.4, align 1
  %conv.i.i81.4 = zext i8 %10 to i32
  %conv1.i.i82.4 = zext i8 %conv2.i.i84.3 to i32
  %xor.i.i83.4 = xor i32 %conv1.i.i82.4, %conv.i.i81.4
  %conv2.i.i84.4 = trunc i32 %xor.i.i83.4 to i8
  %scevgep178.5 = getelementptr i8, i8* %b, i64 5
  %11 = load i8, i8* %scevgep178.5, align 1
  %conv.i.i81.5 = zext i8 %11 to i32
  %conv1.i.i82.5 = zext i8 %conv2.i.i84.4 to i32
  %xor.i.i83.5 = xor i32 %conv1.i.i82.5, %conv.i.i81.5
  %conv2.i.i84.5 = trunc i32 %xor.i.i83.5 to i8
  %conv7 = zext i8 %conv2.i.i84.5 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep174 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep174, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep174.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep174.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep174.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep174.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep174.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep174.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep174.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep174.4, align 1
  %call16.5 = call zeroext i8 (...) @rand()
  %scevgep174.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 5
  store i8 %call16.5, i8* %scevgep174.5, align 1
  %scevgep171 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep171 to [6 x [6 x i8]]*
  %call16.1184 = call zeroext i8 (...) @rand()
  %scevgep174.1185 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 0
  store i8 %call16.1184, i8* %scevgep174.1185, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep174.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep174.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep174.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep174.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep174.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep174.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep174.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep174.4.1, align 1
  %call16.5.1 = call zeroext i8 (...) @rand()
  %scevgep174.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 0, i64 5
  store i8 %call16.5.1, i8* %scevgep174.5.1, align 1
  %scevgep171.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %12, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep171.1 to [6 x [6 x i8]]*
  %call16.2187 = call zeroext i8 (...) @rand()
  %scevgep174.2188 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 0
  store i8 %call16.2187, i8* %scevgep174.2188, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep174.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep174.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep174.2.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep174.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep174.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep174.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep174.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep174.4.2, align 1
  %call16.5.2 = call zeroext i8 (...) @rand()
  %scevgep174.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 5
  store i8 %call16.5.2, i8* %scevgep174.5.2, align 1
  %scevgep171.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep171.2 to [6 x [6 x i8]]*
  %call16.3190 = call zeroext i8 (...) @rand()
  %scevgep174.3191 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 0
  store i8 %call16.3190, i8* %scevgep174.3191, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep174.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep174.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep174.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep174.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep174.3.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep174.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep174.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep174.4.3, align 1
  %call16.5.3 = call zeroext i8 (...) @rand()
  %scevgep174.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 0, i64 5
  store i8 %call16.5.3, i8* %scevgep174.5.3, align 1
  %scevgep171.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep171.3 to [6 x [6 x i8]]*
  %call16.4193 = call zeroext i8 (...) @rand()
  %scevgep174.4194 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 0
  store i8 %call16.4193, i8* %scevgep174.4194, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep174.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep174.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep174.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep174.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep174.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep174.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep174.4.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep174.4.4, align 1
  %call16.5.4 = call zeroext i8 (...) @rand()
  %scevgep174.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 0, i64 5
  store i8 %call16.5.4, i8* %scevgep174.5.4, align 1
  %scevgep171.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %15, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep171.4 to [6 x [6 x i8]]*
  %call16.5196 = call zeroext i8 (...) @rand()
  %scevgep174.5197 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 0
  store i8 %call16.5196, i8* %scevgep174.5197, align 1
  %call16.1.5 = call zeroext i8 (...) @rand()
  %scevgep174.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 1
  store i8 %call16.1.5, i8* %scevgep174.1.5, align 1
  %call16.2.5 = call zeroext i8 (...) @rand()
  %scevgep174.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 2
  store i8 %call16.2.5, i8* %scevgep174.2.5, align 1
  %call16.3.5 = call zeroext i8 (...) @rand()
  %scevgep174.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 3
  store i8 %call16.3.5, i8* %scevgep174.3.5, align 1
  %call16.4.5 = call zeroext i8 (...) @rand()
  %scevgep174.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 4
  store i8 %call16.4.5, i8* %scevgep174.4.5, align 1
  %call16.5.5 = call zeroext i8 (...) @rand()
  %scevgep174.5.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 5
  store i8 %call16.5.5, i8* %scevgep174.5.5, align 1
  %17 = load i8, i8* %a, align 1
  %18 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep161 = getelementptr i8, i8* %a, i64 1
  %scevgep166 = getelementptr i8, i8* %b, i64 1
  %19 = load i8, i8* %scevgep161, align 1
  %20 = load i8, i8* %scevgep166, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #2
  %scevgep168.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep168.1, align 1
  %scevgep161.1 = getelementptr i8, i8* %scevgep161, i64 1
  %scevgep166.1 = getelementptr i8, i8* %scevgep166, i64 1
  %21 = load i8, i8* %scevgep161.1, align 1
  %22 = load i8, i8* %scevgep166.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #2
  %scevgep168.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.i.2, i8* %scevgep168.2, align 1
  %scevgep161.2 = getelementptr i8, i8* %scevgep161.1, i64 1
  %scevgep166.2 = getelementptr i8, i8* %scevgep166.1, i64 1
  %23 = load i8, i8* %scevgep161.2, align 1
  %24 = load i8, i8* %scevgep166.2, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %scevgep168.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.i.3, i8* %scevgep168.3, align 1
  %scevgep161.3 = getelementptr i8, i8* %scevgep161.2, i64 1
  %scevgep166.3 = getelementptr i8, i8* %scevgep166.2, i64 1
  %25 = load i8, i8* %scevgep161.3, align 1
  %26 = load i8, i8* %scevgep166.3, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #2
  %scevgep168.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.i.4, i8* %scevgep168.4, align 1
  %scevgep161.4 = getelementptr i8, i8* %scevgep161.3, i64 1
  %scevgep166.4 = getelementptr i8, i8* %scevgep166.3, i64 1
  %27 = load i8, i8* %scevgep161.4, align 1
  %28 = load i8, i8* %scevgep166.4, align 1
  %call.i.5 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %scevgep168.5 = getelementptr i8, i8* %c, i64 5
  store i8 %call.i.5, i8* %scevgep168.5, align 1
  %29 = load i8, i8* %a, align 1
  %arrayidx4.i104 = getelementptr inbounds i8, i8* %b, i64 1
  %30 = load i8, i8* %arrayidx4.i104, align 1
  %call.i105 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #2
  %scevgep68 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i105, i8* %scevgep68, align 1
  %scevgep60 = getelementptr i8, i8* %a, i64 1
  %31 = load i8, i8* %scevgep60, align 1
  %arrayidx4.i104.1 = getelementptr inbounds i8, i8* %b, i64 2
  %32 = load i8, i8* %arrayidx4.i104.1, align 1
  %call.i105.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #2
  %scevgep68.1 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i105.1, i8* %scevgep68.1, align 1
  %scevgep60.1 = getelementptr i8, i8* %scevgep60, i64 1
  %33 = load i8, i8* %scevgep60.1, align 1
  %arrayidx4.i104.2 = getelementptr inbounds i8, i8* %b, i64 3
  %34 = load i8, i8* %arrayidx4.i104.2, align 1
  %call.i105.2 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #2
  %scevgep68.2 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i105.2, i8* %scevgep68.2, align 1
  %scevgep60.2 = getelementptr i8, i8* %scevgep60.1, i64 1
  %35 = load i8, i8* %scevgep60.2, align 1
  %arrayidx4.i104.3 = getelementptr inbounds i8, i8* %b, i64 4
  %36 = load i8, i8* %arrayidx4.i104.3, align 1
  %call.i105.3 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #2
  %scevgep68.3 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i105.3, i8* %scevgep68.3, align 1
  %scevgep60.3 = getelementptr i8, i8* %scevgep60.2, i64 1
  %37 = load i8, i8* %scevgep60.3, align 1
  %arrayidx4.i104.4 = getelementptr inbounds i8, i8* %b, i64 5
  %38 = load i8, i8* %arrayidx4.i104.4, align 1
  %call.i105.4 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #2
  %scevgep68.4 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i105.4, i8* %scevgep68.4, align 1
  %scevgep60.4 = getelementptr i8, i8* %scevgep60.3, i64 1
  %39 = load i8, i8* %scevgep60.4, align 1
  %40 = load i8, i8* %b, align 1
  %call.i105.5 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #2
  %scevgep68.5 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i105.5, i8* %scevgep68.5, align 1
  %arrayidx.i122 = getelementptr inbounds i8, i8* %a, i64 1
  %41 = load i8, i8* %arrayidx.i122, align 1
  %42 = load i8, i8* %b, align 1
  %call.i127 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #2
  %scevgep77 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i127, i8* %scevgep77, align 1
  %scevgep73 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i122.1 = getelementptr inbounds i8, i8* %a, i64 2
  %43 = load i8, i8* %arrayidx.i122.1, align 1
  %44 = load i8, i8* %scevgep73, align 1
  %call.i127.1 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #2
  %scevgep77.1 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i127.1, i8* %scevgep77.1, align 1
  %scevgep73.1 = getelementptr i8, i8* %scevgep73, i64 1
  %arrayidx.i122.2 = getelementptr inbounds i8, i8* %a, i64 3
  %45 = load i8, i8* %arrayidx.i122.2, align 1
  %46 = load i8, i8* %scevgep73.1, align 1
  %call.i127.2 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #2
  %scevgep77.2 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i127.2, i8* %scevgep77.2, align 1
  %scevgep73.2 = getelementptr i8, i8* %scevgep73.1, i64 1
  %arrayidx.i122.3 = getelementptr inbounds i8, i8* %a, i64 4
  %47 = load i8, i8* %arrayidx.i122.3, align 1
  %48 = load i8, i8* %scevgep73.2, align 1
  %call.i127.3 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #2
  %scevgep77.3 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i127.3, i8* %scevgep77.3, align 1
  %scevgep73.3 = getelementptr i8, i8* %scevgep73.2, i64 1
  %arrayidx.i122.4 = getelementptr inbounds i8, i8* %a, i64 5
  %49 = load i8, i8* %arrayidx.i122.4, align 1
  %50 = load i8, i8* %scevgep73.3, align 1
  %call.i127.4 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50) #2
  %scevgep77.4 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i127.4, i8* %scevgep77.4, align 1
  %scevgep73.4 = getelementptr i8, i8* %scevgep73.3, i64 1
  %51 = load i8, i8* %a, align 1
  %52 = load i8, i8* %scevgep73.4, align 1
  %call.i127.5 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52) #2
  %scevgep77.5 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 5
  store i8 %call.i127.5, i8* %scevgep77.5, align 1
  %53 = load i8, i8* %a, align 1
  %arrayidx4.i148 = getelementptr inbounds i8, i8* %b, i64 2
  %54 = load i8, i8* %arrayidx4.i148, align 1
  %call.i149 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #2
  %scevgep88 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i149, i8* %scevgep88, align 1
  %scevgep80 = getelementptr i8, i8* %a, i64 1
  %55 = load i8, i8* %scevgep80, align 1
  %arrayidx4.i148.1 = getelementptr inbounds i8, i8* %b, i64 3
  %56 = load i8, i8* %arrayidx4.i148.1, align 1
  %call.i149.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #2
  %scevgep88.1 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i149.1, i8* %scevgep88.1, align 1
  %scevgep80.1 = getelementptr i8, i8* %scevgep80, i64 1
  %57 = load i8, i8* %scevgep80.1, align 1
  %arrayidx4.i148.2 = getelementptr inbounds i8, i8* %b, i64 4
  %58 = load i8, i8* %arrayidx4.i148.2, align 1
  %call.i149.2 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #2
  %scevgep88.2 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i149.2, i8* %scevgep88.2, align 1
  %scevgep80.2 = getelementptr i8, i8* %scevgep80.1, i64 1
  %59 = load i8, i8* %scevgep80.2, align 1
  %arrayidx4.i148.3 = getelementptr inbounds i8, i8* %b, i64 5
  %60 = load i8, i8* %arrayidx4.i148.3, align 1
  %call.i149.3 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #2
  %scevgep88.3 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i149.3, i8* %scevgep88.3, align 1
  %scevgep80.3 = getelementptr i8, i8* %scevgep80.2, i64 1
  %61 = load i8, i8* %scevgep80.3, align 1
  %62 = load i8, i8* %b, align 1
  %call.i149.4 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #2
  %scevgep88.4 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i149.4, i8* %scevgep88.4, align 1
  %scevgep80.4 = getelementptr i8, i8* %scevgep80.3, i64 1
  %63 = load i8, i8* %scevgep80.4, align 1
  %arrayidx4.i148.5 = getelementptr inbounds i8, i8* %b, i64 1
  %64 = load i8, i8* %arrayidx4.i148.5, align 1
  %call.i149.5 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #2
  %scevgep88.5 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 5
  store i8 %call.i149.5, i8* %scevgep88.5, align 1
  %arrayidx.i166 = getelementptr inbounds i8, i8* %a, i64 2
  %65 = load i8, i8* %arrayidx.i166, align 1
  %66 = load i8, i8* %b, align 1
  %call.i171 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #2
  %scevgep97 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i171, i8* %scevgep97, align 1
  %scevgep93 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i166.1 = getelementptr inbounds i8, i8* %a, i64 3
  %67 = load i8, i8* %arrayidx.i166.1, align 1
  %68 = load i8, i8* %scevgep93, align 1
  %call.i171.1 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #2
  %scevgep97.1 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i171.1, i8* %scevgep97.1, align 1
  %scevgep93.1 = getelementptr i8, i8* %scevgep93, i64 1
  %arrayidx.i166.2 = getelementptr inbounds i8, i8* %a, i64 4
  %69 = load i8, i8* %arrayidx.i166.2, align 1
  %70 = load i8, i8* %scevgep93.1, align 1
  %call.i171.2 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #2
  %scevgep97.2 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i171.2, i8* %scevgep97.2, align 1
  %scevgep93.2 = getelementptr i8, i8* %scevgep93.1, i64 1
  %arrayidx.i166.3 = getelementptr inbounds i8, i8* %a, i64 5
  %71 = load i8, i8* %arrayidx.i166.3, align 1
  %72 = load i8, i8* %scevgep93.2, align 1
  %call.i171.3 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #2
  %scevgep97.3 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i171.3, i8* %scevgep97.3, align 1
  %scevgep93.3 = getelementptr i8, i8* %scevgep93.2, i64 1
  %73 = load i8, i8* %a, align 1
  %74 = load i8, i8* %scevgep93.3, align 1
  %call.i171.4 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #2
  %scevgep97.4 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i171.4, i8* %scevgep97.4, align 1
  %scevgep93.4 = getelementptr i8, i8* %scevgep93.3, i64 1
  %arrayidx.i166.5 = getelementptr inbounds i8, i8* %a, i64 1
  %75 = load i8, i8* %arrayidx.i166.5, align 1
  %76 = load i8, i8* %scevgep93.4, align 1
  %call.i171.5 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #2
  %scevgep97.5 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 5
  store i8 %call.i171.5, i8* %scevgep97.5, align 1
  %scevgep108 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 0
  %77 = load i8, i8* %c, align 1
  %conv.i = zext i8 %77 to i32
  %78 = load i8, i8* %scevgep108, align 1
  %conv5.i = zext i8 %78 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %c, align 1
  %scevgep100 = getelementptr i8, i8* %c, i64 1
  %scevgep107 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %79 = bitcast i8* %scevgep107 to [6 x [6 x i8]]*
  %scevgep108.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %79, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep100, align 1
  %conv.i.1 = zext i8 %80 to i32
  %81 = load i8, i8* %scevgep108.1, align 1
  %conv5.i.1 = zext i8 %81 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep109.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1, i8* %scevgep109.1, align 1
  %scevgep100.1 = getelementptr i8, i8* %scevgep100, i64 1
  %scevgep107.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %79, i64 0, i64 0, i64 1
  %82 = bitcast i8* %scevgep107.1 to [6 x [6 x i8]]*
  %scevgep108.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %82, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep100.1, align 1
  %conv.i.2 = zext i8 %83 to i32
  %84 = load i8, i8* %scevgep108.2, align 1
  %conv5.i.2 = zext i8 %84 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep109.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2, i8* %scevgep109.2, align 1
  %scevgep100.2 = getelementptr i8, i8* %scevgep100.1, i64 1
  %scevgep107.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %82, i64 0, i64 0, i64 1
  %85 = bitcast i8* %scevgep107.2 to [6 x [6 x i8]]*
  %scevgep108.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 0
  %86 = load i8, i8* %scevgep100.2, align 1
  %conv.i.3 = zext i8 %86 to i32
  %87 = load i8, i8* %scevgep108.3, align 1
  %conv5.i.3 = zext i8 %87 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep109.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3, i8* %scevgep109.3, align 1
  %scevgep100.3 = getelementptr i8, i8* %scevgep100.2, i64 1
  %scevgep107.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 1
  %88 = bitcast i8* %scevgep107.3 to [6 x [6 x i8]]*
  %scevgep108.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep100.3, align 1
  %conv.i.4 = zext i8 %89 to i32
  %90 = load i8, i8* %scevgep108.4, align 1
  %conv5.i.4 = zext i8 %90 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep109.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4, i8* %scevgep109.4, align 1
  %scevgep100.4 = getelementptr i8, i8* %scevgep100.3, i64 1
  %scevgep107.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 1
  %91 = bitcast i8* %scevgep107.4 to [6 x [6 x i8]]*
  %scevgep108.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %91, i64 0, i64 0, i64 0
  %92 = load i8, i8* %scevgep100.4, align 1
  %conv.i.5 = zext i8 %92 to i32
  %93 = load i8, i8* %scevgep108.5, align 1
  %conv5.i.5 = zext i8 %93 to i32
  %xor.i.5 = xor i32 %conv.i.5, %conv5.i.5
  %conv6.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep109.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i.5, i8* %scevgep109.5, align 1
  %scevgep118 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 0
  %94 = load i8, i8* %c, align 1
  %conv.i224 = zext i8 %94 to i32
  %95 = load i8, i8* %scevgep118, align 1
  %conv5.i229 = zext i8 %95 to i32
  %xor.i230 = xor i32 %conv.i224, %conv5.i229
  %conv6.i231 = trunc i32 %xor.i230 to i8
  store i8 %conv6.i231, i8* %c, align 1
  %scevgep112 = getelementptr i8, i8* %c, i64 1
  %scevgep117 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 1
  %96 = bitcast i8* %scevgep117 to [6 x i8]*
  %scevgep118.1 = getelementptr [6 x i8], [6 x i8]* %96, i64 0, i64 0
  %97 = load i8, i8* %scevgep112, align 1
  %conv.i224.1 = zext i8 %97 to i32
  %98 = load i8, i8* %scevgep118.1, align 1
  %conv5.i229.1 = zext i8 %98 to i32
  %xor.i230.1 = xor i32 %conv.i224.1, %conv5.i229.1
  %conv6.i231.1 = trunc i32 %xor.i230.1 to i8
  %scevgep119.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i231.1, i8* %scevgep119.1, align 1
  %scevgep112.1 = getelementptr i8, i8* %scevgep112, i64 1
  %scevgep117.1 = getelementptr [6 x i8], [6 x i8]* %96, i64 0, i64 1
  %99 = bitcast i8* %scevgep117.1 to [6 x i8]*
  %scevgep118.2 = getelementptr [6 x i8], [6 x i8]* %99, i64 0, i64 0
  %100 = load i8, i8* %scevgep112.1, align 1
  %conv.i224.2 = zext i8 %100 to i32
  %101 = load i8, i8* %scevgep118.2, align 1
  %conv5.i229.2 = zext i8 %101 to i32
  %xor.i230.2 = xor i32 %conv.i224.2, %conv5.i229.2
  %conv6.i231.2 = trunc i32 %xor.i230.2 to i8
  %scevgep119.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i231.2, i8* %scevgep119.2, align 1
  %scevgep112.2 = getelementptr i8, i8* %scevgep112.1, i64 1
  %scevgep117.2 = getelementptr [6 x i8], [6 x i8]* %99, i64 0, i64 1
  %102 = bitcast i8* %scevgep117.2 to [6 x i8]*
  %scevgep118.3 = getelementptr [6 x i8], [6 x i8]* %102, i64 0, i64 0
  %103 = load i8, i8* %scevgep112.2, align 1
  %conv.i224.3 = zext i8 %103 to i32
  %104 = load i8, i8* %scevgep118.3, align 1
  %conv5.i229.3 = zext i8 %104 to i32
  %xor.i230.3 = xor i32 %conv.i224.3, %conv5.i229.3
  %conv6.i231.3 = trunc i32 %xor.i230.3 to i8
  %scevgep119.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i231.3, i8* %scevgep119.3, align 1
  %scevgep112.3 = getelementptr i8, i8* %scevgep112.2, i64 1
  %scevgep117.3 = getelementptr [6 x i8], [6 x i8]* %102, i64 0, i64 1
  %105 = bitcast i8* %scevgep117.3 to [6 x i8]*
  %scevgep118.4 = getelementptr [6 x i8], [6 x i8]* %105, i64 0, i64 0
  %106 = load i8, i8* %scevgep112.3, align 1
  %conv.i224.4 = zext i8 %106 to i32
  %107 = load i8, i8* %scevgep118.4, align 1
  %conv5.i229.4 = zext i8 %107 to i32
  %xor.i230.4 = xor i32 %conv.i224.4, %conv5.i229.4
  %conv6.i231.4 = trunc i32 %xor.i230.4 to i8
  %scevgep119.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i231.4, i8* %scevgep119.4, align 1
  %scevgep112.4 = getelementptr i8, i8* %scevgep112.3, i64 1
  %scevgep117.4 = getelementptr [6 x i8], [6 x i8]* %105, i64 0, i64 1
  %108 = bitcast i8* %scevgep117.4 to [6 x i8]*
  %scevgep118.5 = getelementptr [6 x i8], [6 x i8]* %108, i64 0, i64 0
  %109 = load i8, i8* %scevgep112.4, align 1
  %conv.i224.5 = zext i8 %109 to i32
  %110 = load i8, i8* %scevgep118.5, align 1
  %conv5.i229.5 = zext i8 %110 to i32
  %xor.i230.5 = xor i32 %conv.i224.5, %conv5.i229.5
  %conv6.i231.5 = trunc i32 %xor.i230.5 to i8
  %scevgep119.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i231.5, i8* %scevgep119.5, align 1
  %scevgep128 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 0
  %111 = load i8, i8* %c, align 1
  %conv.i321 = zext i8 %111 to i32
  %112 = load i8, i8* %scevgep128, align 1
  %conv5.i326 = zext i8 %112 to i32
  %xor.i327 = xor i32 %conv.i321, %conv5.i326
  %conv6.i328 = trunc i32 %xor.i327 to i8
  store i8 %conv6.i328, i8* %c, align 1
  %scevgep122 = getelementptr i8, i8* %c, i64 1
  %scevgep127 = getelementptr [6 x i8], [6 x i8]* %a1b, i64 0, i64 1
  %113 = bitcast i8* %scevgep127 to [6 x i8]*
  %scevgep128.1 = getelementptr [6 x i8], [6 x i8]* %113, i64 0, i64 0
  %114 = load i8, i8* %scevgep122, align 1
  %conv.i321.1 = zext i8 %114 to i32
  %115 = load i8, i8* %scevgep128.1, align 1
  %conv5.i326.1 = zext i8 %115 to i32
  %xor.i327.1 = xor i32 %conv.i321.1, %conv5.i326.1
  %conv6.i328.1 = trunc i32 %xor.i327.1 to i8
  %scevgep129.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i328.1, i8* %scevgep129.1, align 1
  %scevgep122.1 = getelementptr i8, i8* %scevgep122, i64 1
  %scevgep127.1 = getelementptr [6 x i8], [6 x i8]* %113, i64 0, i64 1
  %116 = bitcast i8* %scevgep127.1 to [6 x i8]*
  %scevgep128.2 = getelementptr [6 x i8], [6 x i8]* %116, i64 0, i64 0
  %117 = load i8, i8* %scevgep122.1, align 1
  %conv.i321.2 = zext i8 %117 to i32
  %118 = load i8, i8* %scevgep128.2, align 1
  %conv5.i326.2 = zext i8 %118 to i32
  %xor.i327.2 = xor i32 %conv.i321.2, %conv5.i326.2
  %conv6.i328.2 = trunc i32 %xor.i327.2 to i8
  %scevgep129.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i328.2, i8* %scevgep129.2, align 1
  %scevgep122.2 = getelementptr i8, i8* %scevgep122.1, i64 1
  %scevgep127.2 = getelementptr [6 x i8], [6 x i8]* %116, i64 0, i64 1
  %119 = bitcast i8* %scevgep127.2 to [6 x i8]*
  %scevgep128.3 = getelementptr [6 x i8], [6 x i8]* %119, i64 0, i64 0
  %120 = load i8, i8* %scevgep122.2, align 1
  %conv.i321.3 = zext i8 %120 to i32
  %121 = load i8, i8* %scevgep128.3, align 1
  %conv5.i326.3 = zext i8 %121 to i32
  %xor.i327.3 = xor i32 %conv.i321.3, %conv5.i326.3
  %conv6.i328.3 = trunc i32 %xor.i327.3 to i8
  %scevgep129.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i328.3, i8* %scevgep129.3, align 1
  %scevgep122.3 = getelementptr i8, i8* %scevgep122.2, i64 1
  %scevgep127.3 = getelementptr [6 x i8], [6 x i8]* %119, i64 0, i64 1
  %122 = bitcast i8* %scevgep127.3 to [6 x i8]*
  %scevgep128.4 = getelementptr [6 x i8], [6 x i8]* %122, i64 0, i64 0
  %123 = load i8, i8* %scevgep122.3, align 1
  %conv.i321.4 = zext i8 %123 to i32
  %124 = load i8, i8* %scevgep128.4, align 1
  %conv5.i326.4 = zext i8 %124 to i32
  %xor.i327.4 = xor i32 %conv.i321.4, %conv5.i326.4
  %conv6.i328.4 = trunc i32 %xor.i327.4 to i8
  %scevgep129.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i328.4, i8* %scevgep129.4, align 1
  %scevgep122.4 = getelementptr i8, i8* %scevgep122.3, i64 1
  %scevgep127.4 = getelementptr [6 x i8], [6 x i8]* %122, i64 0, i64 1
  %125 = bitcast i8* %scevgep127.4 to [6 x i8]*
  %scevgep128.5 = getelementptr [6 x i8], [6 x i8]* %125, i64 0, i64 0
  %126 = load i8, i8* %scevgep122.4, align 1
  %conv.i321.5 = zext i8 %126 to i32
  %127 = load i8, i8* %scevgep128.5, align 1
  %conv5.i326.5 = zext i8 %127 to i32
  %xor.i327.5 = xor i32 %conv.i321.5, %conv5.i326.5
  %conv6.i328.5 = trunc i32 %xor.i327.5 to i8
  %scevgep129.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i328.5, i8* %scevgep129.5, align 1
  %arrayidx42 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx42, i64 0, i64 0
  %128 = load i8, i8* %c, align 1
  %conv.i396 = zext i8 %128 to i32
  %arrayidx4.i400 = getelementptr inbounds i8, i8* %arraydecay43, i64 1
  %129 = load i8, i8* %arrayidx4.i400, align 1
  %conv5.i401 = zext i8 %129 to i32
  %xor.i402 = xor i32 %conv.i396, %conv5.i401
  %conv6.i403 = trunc i32 %xor.i402 to i8
  store i8 %conv6.i403, i8* %c, align 1
  %scevgep132 = getelementptr i8, i8* %c, i64 1
  %130 = load i8, i8* %scevgep132, align 1
  %conv.i396.1 = zext i8 %130 to i32
  %arrayidx4.i400.1 = getelementptr inbounds i8, i8* %arraydecay43, i64 2
  %131 = load i8, i8* %arrayidx4.i400.1, align 1
  %conv5.i401.1 = zext i8 %131 to i32
  %xor.i402.1 = xor i32 %conv.i396.1, %conv5.i401.1
  %conv6.i403.1 = trunc i32 %xor.i402.1 to i8
  %scevgep138.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i403.1, i8* %scevgep138.1, align 1
  %scevgep132.1 = getelementptr i8, i8* %scevgep132, i64 1
  %132 = load i8, i8* %scevgep132.1, align 1
  %conv.i396.2 = zext i8 %132 to i32
  %arrayidx4.i400.2 = getelementptr inbounds i8, i8* %arraydecay43, i64 3
  %133 = load i8, i8* %arrayidx4.i400.2, align 1
  %conv5.i401.2 = zext i8 %133 to i32
  %xor.i402.2 = xor i32 %conv.i396.2, %conv5.i401.2
  %conv6.i403.2 = trunc i32 %xor.i402.2 to i8
  %scevgep138.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i403.2, i8* %scevgep138.2, align 1
  %scevgep132.2 = getelementptr i8, i8* %scevgep132.1, i64 1
  %134 = load i8, i8* %scevgep132.2, align 1
  %conv.i396.3 = zext i8 %134 to i32
  %arrayidx4.i400.3 = getelementptr inbounds i8, i8* %arraydecay43, i64 4
  %135 = load i8, i8* %arrayidx4.i400.3, align 1
  %conv5.i401.3 = zext i8 %135 to i32
  %xor.i402.3 = xor i32 %conv.i396.3, %conv5.i401.3
  %conv6.i403.3 = trunc i32 %xor.i402.3 to i8
  %scevgep138.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i403.3, i8* %scevgep138.3, align 1
  %scevgep132.3 = getelementptr i8, i8* %scevgep132.2, i64 1
  %136 = load i8, i8* %scevgep132.3, align 1
  %conv.i396.4 = zext i8 %136 to i32
  %arrayidx4.i400.4 = getelementptr inbounds i8, i8* %arraydecay43, i64 5
  %137 = load i8, i8* %arrayidx4.i400.4, align 1
  %conv5.i401.4 = zext i8 %137 to i32
  %xor.i402.4 = xor i32 %conv.i396.4, %conv5.i401.4
  %conv6.i403.4 = trunc i32 %xor.i402.4 to i8
  %scevgep138.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i403.4, i8* %scevgep138.4, align 1
  %scevgep132.4 = getelementptr i8, i8* %scevgep132.3, i64 1
  %138 = load i8, i8* %scevgep132.4, align 1
  %conv.i396.5 = zext i8 %138 to i32
  %139 = load i8, i8* %arraydecay43, align 1
  %conv5.i401.5 = zext i8 %139 to i32
  %xor.i402.5 = xor i32 %conv.i396.5, %conv5.i401.5
  %conv6.i403.5 = trunc i32 %xor.i402.5 to i8
  %scevgep138.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i403.5, i8* %scevgep138.5, align 1
  %scevgep147 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 0
  %140 = load i8, i8* %c, align 1
  %conv.i371 = zext i8 %140 to i32
  %141 = load i8, i8* %scevgep147, align 1
  %conv5.i376 = zext i8 %141 to i32
  %xor.i377 = xor i32 %conv.i371, %conv5.i376
  %conv6.i378 = trunc i32 %xor.i377 to i8
  store i8 %conv6.i378, i8* %c, align 1
  %scevgep141 = getelementptr i8, i8* %c, i64 1
  %scevgep146 = getelementptr [6 x i8], [6 x i8]* %ab2, i64 0, i64 1
  %142 = bitcast i8* %scevgep146 to [6 x i8]*
  %scevgep147.1 = getelementptr [6 x i8], [6 x i8]* %142, i64 0, i64 0
  %143 = load i8, i8* %scevgep141, align 1
  %conv.i371.1 = zext i8 %143 to i32
  %144 = load i8, i8* %scevgep147.1, align 1
  %conv5.i376.1 = zext i8 %144 to i32
  %xor.i377.1 = xor i32 %conv.i371.1, %conv5.i376.1
  %conv6.i378.1 = trunc i32 %xor.i377.1 to i8
  %scevgep148.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i378.1, i8* %scevgep148.1, align 1
  %scevgep141.1 = getelementptr i8, i8* %scevgep141, i64 1
  %scevgep146.1 = getelementptr [6 x i8], [6 x i8]* %142, i64 0, i64 1
  %145 = bitcast i8* %scevgep146.1 to [6 x i8]*
  %scevgep147.2 = getelementptr [6 x i8], [6 x i8]* %145, i64 0, i64 0
  %146 = load i8, i8* %scevgep141.1, align 1
  %conv.i371.2 = zext i8 %146 to i32
  %147 = load i8, i8* %scevgep147.2, align 1
  %conv5.i376.2 = zext i8 %147 to i32
  %xor.i377.2 = xor i32 %conv.i371.2, %conv5.i376.2
  %conv6.i378.2 = trunc i32 %xor.i377.2 to i8
  %scevgep148.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i378.2, i8* %scevgep148.2, align 1
  %scevgep141.2 = getelementptr i8, i8* %scevgep141.1, i64 1
  %scevgep146.2 = getelementptr [6 x i8], [6 x i8]* %145, i64 0, i64 1
  %148 = bitcast i8* %scevgep146.2 to [6 x i8]*
  %scevgep147.3 = getelementptr [6 x i8], [6 x i8]* %148, i64 0, i64 0
  %149 = load i8, i8* %scevgep141.2, align 1
  %conv.i371.3 = zext i8 %149 to i32
  %150 = load i8, i8* %scevgep147.3, align 1
  %conv5.i376.3 = zext i8 %150 to i32
  %xor.i377.3 = xor i32 %conv.i371.3, %conv5.i376.3
  %conv6.i378.3 = trunc i32 %xor.i377.3 to i8
  %scevgep148.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i378.3, i8* %scevgep148.3, align 1
  %scevgep141.3 = getelementptr i8, i8* %scevgep141.2, i64 1
  %scevgep146.3 = getelementptr [6 x i8], [6 x i8]* %148, i64 0, i64 1
  %151 = bitcast i8* %scevgep146.3 to [6 x i8]*
  %scevgep147.4 = getelementptr [6 x i8], [6 x i8]* %151, i64 0, i64 0
  %152 = load i8, i8* %scevgep141.3, align 1
  %conv.i371.4 = zext i8 %152 to i32
  %153 = load i8, i8* %scevgep147.4, align 1
  %conv5.i376.4 = zext i8 %153 to i32
  %xor.i377.4 = xor i32 %conv.i371.4, %conv5.i376.4
  %conv6.i378.4 = trunc i32 %xor.i377.4 to i8
  %scevgep148.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i378.4, i8* %scevgep148.4, align 1
  %scevgep141.4 = getelementptr i8, i8* %scevgep141.3, i64 1
  %scevgep146.4 = getelementptr [6 x i8], [6 x i8]* %151, i64 0, i64 1
  %154 = bitcast i8* %scevgep146.4 to [6 x i8]*
  %scevgep147.5 = getelementptr [6 x i8], [6 x i8]* %154, i64 0, i64 0
  %155 = load i8, i8* %scevgep141.4, align 1
  %conv.i371.5 = zext i8 %155 to i32
  %156 = load i8, i8* %scevgep147.5, align 1
  %conv5.i376.5 = zext i8 %156 to i32
  %xor.i377.5 = xor i32 %conv.i371.5, %conv5.i376.5
  %conv6.i378.5 = trunc i32 %xor.i377.5 to i8
  %scevgep148.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i378.5, i8* %scevgep148.5, align 1
  %scevgep157 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 0
  %157 = load i8, i8* %c, align 1
  %conv.i346 = zext i8 %157 to i32
  %158 = load i8, i8* %scevgep157, align 1
  %conv5.i351 = zext i8 %158 to i32
  %xor.i352 = xor i32 %conv.i346, %conv5.i351
  %conv6.i353 = trunc i32 %xor.i352 to i8
  store i8 %conv6.i353, i8* %c, align 1
  %scevgep151 = getelementptr i8, i8* %c, i64 1
  %scevgep156 = getelementptr [6 x i8], [6 x i8]* %a2b, i64 0, i64 1
  %159 = bitcast i8* %scevgep156 to [6 x i8]*
  %scevgep157.1 = getelementptr [6 x i8], [6 x i8]* %159, i64 0, i64 0
  %160 = load i8, i8* %scevgep151, align 1
  %conv.i346.1 = zext i8 %160 to i32
  %161 = load i8, i8* %scevgep157.1, align 1
  %conv5.i351.1 = zext i8 %161 to i32
  %xor.i352.1 = xor i32 %conv.i346.1, %conv5.i351.1
  %conv6.i353.1 = trunc i32 %xor.i352.1 to i8
  %scevgep158.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i353.1, i8* %scevgep158.1, align 1
  %scevgep151.1 = getelementptr i8, i8* %scevgep151, i64 1
  %scevgep156.1 = getelementptr [6 x i8], [6 x i8]* %159, i64 0, i64 1
  %162 = bitcast i8* %scevgep156.1 to [6 x i8]*
  %scevgep157.2 = getelementptr [6 x i8], [6 x i8]* %162, i64 0, i64 0
  %163 = load i8, i8* %scevgep151.1, align 1
  %conv.i346.2 = zext i8 %163 to i32
  %164 = load i8, i8* %scevgep157.2, align 1
  %conv5.i351.2 = zext i8 %164 to i32
  %xor.i352.2 = xor i32 %conv.i346.2, %conv5.i351.2
  %conv6.i353.2 = trunc i32 %xor.i352.2 to i8
  %scevgep158.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i353.2, i8* %scevgep158.2, align 1
  %scevgep151.2 = getelementptr i8, i8* %scevgep151.1, i64 1
  %scevgep156.2 = getelementptr [6 x i8], [6 x i8]* %162, i64 0, i64 1
  %165 = bitcast i8* %scevgep156.2 to [6 x i8]*
  %scevgep157.3 = getelementptr [6 x i8], [6 x i8]* %165, i64 0, i64 0
  %166 = load i8, i8* %scevgep151.2, align 1
  %conv.i346.3 = zext i8 %166 to i32
  %167 = load i8, i8* %scevgep157.3, align 1
  %conv5.i351.3 = zext i8 %167 to i32
  %xor.i352.3 = xor i32 %conv.i346.3, %conv5.i351.3
  %conv6.i353.3 = trunc i32 %xor.i352.3 to i8
  %scevgep158.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i353.3, i8* %scevgep158.3, align 1
  %scevgep151.3 = getelementptr i8, i8* %scevgep151.2, i64 1
  %scevgep156.3 = getelementptr [6 x i8], [6 x i8]* %165, i64 0, i64 1
  %168 = bitcast i8* %scevgep156.3 to [6 x i8]*
  %scevgep157.4 = getelementptr [6 x i8], [6 x i8]* %168, i64 0, i64 0
  %169 = load i8, i8* %scevgep151.3, align 1
  %conv.i346.4 = zext i8 %169 to i32
  %170 = load i8, i8* %scevgep157.4, align 1
  %conv5.i351.4 = zext i8 %170 to i32
  %xor.i352.4 = xor i32 %conv.i346.4, %conv5.i351.4
  %conv6.i353.4 = trunc i32 %xor.i352.4 to i8
  %scevgep158.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i353.4, i8* %scevgep158.4, align 1
  %scevgep151.4 = getelementptr i8, i8* %scevgep151.3, i64 1
  %scevgep156.4 = getelementptr [6 x i8], [6 x i8]* %168, i64 0, i64 1
  %171 = bitcast i8* %scevgep156.4 to [6 x i8]*
  %scevgep157.5 = getelementptr [6 x i8], [6 x i8]* %171, i64 0, i64 0
  %172 = load i8, i8* %scevgep151.4, align 1
  %conv.i346.5 = zext i8 %172 to i32
  %173 = load i8, i8* %scevgep157.5, align 1
  %conv5.i351.5 = zext i8 %173 to i32
  %xor.i352.5 = xor i32 %conv.i346.5, %conv5.i351.5
  %conv6.i353.5 = trunc i32 %xor.i352.5 to i8
  %scevgep158.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i353.5, i8* %scevgep158.5, align 1
  %arrayidx54 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1
  %arrayidx56 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx54, i64 0, i64 0
  %174 = load i8, i8* %arrayidx56, align 1
  %scevgep56 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 0
  store i8 %174, i8* %scevgep56, align 1
  %arrayidx56.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx54, i64 0, i64 1
  %175 = load i8, i8* %arrayidx56.1, align 1
  %scevgep56.1 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 1
  store i8 %175, i8* %scevgep56.1, align 1
  %arrayidx56.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx54, i64 0, i64 2
  %176 = load i8, i8* %arrayidx56.2, align 1
  %scevgep56.2 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 2
  store i8 %176, i8* %scevgep56.2, align 1
  %arrayidx56.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx54, i64 0, i64 0
  %177 = load i8, i8* %arrayidx56.3, align 1
  %scevgep56.3 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 3
  store i8 %177, i8* %scevgep56.3, align 1
  %arrayidx56.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx54, i64 0, i64 1
  %178 = load i8, i8* %arrayidx56.4, align 1
  %scevgep56.4 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 4
  store i8 %178, i8* %scevgep56.4, align 1
  %arrayidx56.5 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx54, i64 0, i64 2
  %179 = load i8, i8* %arrayidx56.5, align 1
  %scevgep56.5 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 5
  store i8 %179, i8* %scevgep56.5, align 1
  %180 = load i8, i8* %a, align 1
  %arrayidx4.i302 = getelementptr inbounds i8, i8* %b, i64 3
  %181 = load i8, i8* %arrayidx4.i302, align 1
  %call.i303 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181) #2
  %scevgep52 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i303, i8* %scevgep52, align 1
  %scevgep46 = getelementptr i8, i8* %a, i64 1
  %182 = load i8, i8* %scevgep46, align 1
  %arrayidx4.i302.1 = getelementptr inbounds i8, i8* %b, i64 4
  %183 = load i8, i8* %arrayidx4.i302.1, align 1
  %call.i303.1 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183) #2
  %scevgep52.1 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i303.1, i8* %scevgep52.1, align 1
  %scevgep46.1 = getelementptr i8, i8* %scevgep46, i64 1
  %184 = load i8, i8* %scevgep46.1, align 1
  %arrayidx4.i302.2 = getelementptr inbounds i8, i8* %b, i64 5
  %185 = load i8, i8* %arrayidx4.i302.2, align 1
  %call.i303.2 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185) #2
  %scevgep52.2 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i303.2, i8* %scevgep52.2, align 1
  %scevgep46.2 = getelementptr i8, i8* %scevgep46.1, i64 1
  %186 = load i8, i8* %scevgep46.2, align 1
  %187 = load i8, i8* %b, align 1
  %call.i303.3 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #2
  %scevgep52.3 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i303.3, i8* %scevgep52.3, align 1
  %scevgep46.3 = getelementptr i8, i8* %scevgep46.2, i64 1
  %188 = load i8, i8* %scevgep46.3, align 1
  %arrayidx4.i302.4 = getelementptr inbounds i8, i8* %b, i64 1
  %189 = load i8, i8* %arrayidx4.i302.4, align 1
  %call.i303.4 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189) #2
  %scevgep52.4 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i303.4, i8* %scevgep52.4, align 1
  %scevgep46.4 = getelementptr i8, i8* %scevgep46.3, i64 1
  %190 = load i8, i8* %scevgep46.4, align 1
  %arrayidx4.i302.5 = getelementptr inbounds i8, i8* %b, i64 2
  %191 = load i8, i8* %arrayidx4.i302.5, align 1
  %call.i303.5 = call zeroext i8 @mult(i8 zeroext %190, i8 zeroext %191) #2
  %scevgep52.5 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 5
  store i8 %call.i303.5, i8* %scevgep52.5, align 1
  %scevgep42 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 0
  %192 = load i8, i8* %c, align 1
  %conv.i274 = zext i8 %192 to i32
  %193 = load i8, i8* %scevgep42, align 1
  %conv5.i279 = zext i8 %193 to i32
  %xor.i280 = xor i32 %conv.i274, %conv5.i279
  %conv6.i281 = trunc i32 %xor.i280 to i8
  store i8 %conv6.i281, i8* %c, align 1
  %scevgep36 = getelementptr i8, i8* %c, i64 1
  %scevgep41 = getelementptr [6 x i8], [6 x i8]* %z, i64 0, i64 1
  %194 = bitcast i8* %scevgep41 to [6 x i8]*
  %scevgep42.1 = getelementptr [6 x i8], [6 x i8]* %194, i64 0, i64 0
  %195 = load i8, i8* %scevgep36, align 1
  %conv.i274.1 = zext i8 %195 to i32
  %196 = load i8, i8* %scevgep42.1, align 1
  %conv5.i279.1 = zext i8 %196 to i32
  %xor.i280.1 = xor i32 %conv.i274.1, %conv5.i279.1
  %conv6.i281.1 = trunc i32 %xor.i280.1 to i8
  %scevgep43.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i281.1, i8* %scevgep43.1, align 1
  %scevgep36.1 = getelementptr i8, i8* %scevgep36, i64 1
  %scevgep41.1 = getelementptr [6 x i8], [6 x i8]* %194, i64 0, i64 1
  %197 = bitcast i8* %scevgep41.1 to [6 x i8]*
  %scevgep42.2 = getelementptr [6 x i8], [6 x i8]* %197, i64 0, i64 0
  %198 = load i8, i8* %scevgep36.1, align 1
  %conv.i274.2 = zext i8 %198 to i32
  %199 = load i8, i8* %scevgep42.2, align 1
  %conv5.i279.2 = zext i8 %199 to i32
  %xor.i280.2 = xor i32 %conv.i274.2, %conv5.i279.2
  %conv6.i281.2 = trunc i32 %xor.i280.2 to i8
  %scevgep43.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i281.2, i8* %scevgep43.2, align 1
  %scevgep36.2 = getelementptr i8, i8* %scevgep36.1, i64 1
  %scevgep41.2 = getelementptr [6 x i8], [6 x i8]* %197, i64 0, i64 1
  %200 = bitcast i8* %scevgep41.2 to [6 x i8]*
  %scevgep42.3 = getelementptr [6 x i8], [6 x i8]* %200, i64 0, i64 0
  %201 = load i8, i8* %scevgep36.2, align 1
  %conv.i274.3 = zext i8 %201 to i32
  %202 = load i8, i8* %scevgep42.3, align 1
  %conv5.i279.3 = zext i8 %202 to i32
  %xor.i280.3 = xor i32 %conv.i274.3, %conv5.i279.3
  %conv6.i281.3 = trunc i32 %xor.i280.3 to i8
  %scevgep43.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i281.3, i8* %scevgep43.3, align 1
  %scevgep36.3 = getelementptr i8, i8* %scevgep36.2, i64 1
  %scevgep41.3 = getelementptr [6 x i8], [6 x i8]* %200, i64 0, i64 1
  %203 = bitcast i8* %scevgep41.3 to [6 x i8]*
  %scevgep42.4 = getelementptr [6 x i8], [6 x i8]* %203, i64 0, i64 0
  %204 = load i8, i8* %scevgep36.3, align 1
  %conv.i274.4 = zext i8 %204 to i32
  %205 = load i8, i8* %scevgep42.4, align 1
  %conv5.i279.4 = zext i8 %205 to i32
  %xor.i280.4 = xor i32 %conv.i274.4, %conv5.i279.4
  %conv6.i281.4 = trunc i32 %xor.i280.4 to i8
  %scevgep43.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i281.4, i8* %scevgep43.4, align 1
  %scevgep36.4 = getelementptr i8, i8* %scevgep36.3, i64 1
  %scevgep41.4 = getelementptr [6 x i8], [6 x i8]* %203, i64 0, i64 1
  %206 = bitcast i8* %scevgep41.4 to [6 x i8]*
  %scevgep42.5 = getelementptr [6 x i8], [6 x i8]* %206, i64 0, i64 0
  %207 = load i8, i8* %scevgep36.4, align 1
  %conv.i274.5 = zext i8 %207 to i32
  %208 = load i8, i8* %scevgep42.5, align 1
  %conv5.i279.5 = zext i8 %208 to i32
  %xor.i280.5 = xor i32 %conv.i274.5, %conv5.i279.5
  %conv6.i281.5 = trunc i32 %xor.i280.5 to i8
  %scevgep43.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i281.5, i8* %scevgep43.5, align 1
  %scevgep32 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 0
  %209 = load i8, i8* %c, align 1
  %conv.i249 = zext i8 %209 to i32
  %210 = load i8, i8* %scevgep32, align 1
  %conv5.i254 = zext i8 %210 to i32
  %xor.i255 = xor i32 %conv.i249, %conv5.i254
  %conv6.i256 = trunc i32 %xor.i255 to i8
  store i8 %conv6.i256, i8* %c, align 1
  %scevgep26 = getelementptr i8, i8* %c, i64 1
  %scevgep31 = getelementptr [6 x i8], [6 x i8]* %ab1, i64 0, i64 1
  %211 = bitcast i8* %scevgep31 to [6 x i8]*
  %scevgep32.1 = getelementptr [6 x i8], [6 x i8]* %211, i64 0, i64 0
  %212 = load i8, i8* %scevgep26, align 1
  %conv.i249.1 = zext i8 %212 to i32
  %213 = load i8, i8* %scevgep32.1, align 1
  %conv5.i254.1 = zext i8 %213 to i32
  %xor.i255.1 = xor i32 %conv.i249.1, %conv5.i254.1
  %conv6.i256.1 = trunc i32 %xor.i255.1 to i8
  %scevgep33.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i256.1, i8* %scevgep33.1, align 1
  %scevgep26.1 = getelementptr i8, i8* %scevgep26, i64 1
  %scevgep31.1 = getelementptr [6 x i8], [6 x i8]* %211, i64 0, i64 1
  %214 = bitcast i8* %scevgep31.1 to [6 x i8]*
  %scevgep32.2 = getelementptr [6 x i8], [6 x i8]* %214, i64 0, i64 0
  %215 = load i8, i8* %scevgep26.1, align 1
  %conv.i249.2 = zext i8 %215 to i32
  %216 = load i8, i8* %scevgep32.2, align 1
  %conv5.i254.2 = zext i8 %216 to i32
  %xor.i255.2 = xor i32 %conv.i249.2, %conv5.i254.2
  %conv6.i256.2 = trunc i32 %xor.i255.2 to i8
  %scevgep33.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i256.2, i8* %scevgep33.2, align 1
  %scevgep26.2 = getelementptr i8, i8* %scevgep26.1, i64 1
  %scevgep31.2 = getelementptr [6 x i8], [6 x i8]* %214, i64 0, i64 1
  %217 = bitcast i8* %scevgep31.2 to [6 x i8]*
  %scevgep32.3 = getelementptr [6 x i8], [6 x i8]* %217, i64 0, i64 0
  %218 = load i8, i8* %scevgep26.2, align 1
  %conv.i249.3 = zext i8 %218 to i32
  %219 = load i8, i8* %scevgep32.3, align 1
  %conv5.i254.3 = zext i8 %219 to i32
  %xor.i255.3 = xor i32 %conv.i249.3, %conv5.i254.3
  %conv6.i256.3 = trunc i32 %xor.i255.3 to i8
  %scevgep33.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i256.3, i8* %scevgep33.3, align 1
  %scevgep26.3 = getelementptr i8, i8* %scevgep26.2, i64 1
  %scevgep31.3 = getelementptr [6 x i8], [6 x i8]* %217, i64 0, i64 1
  %220 = bitcast i8* %scevgep31.3 to [6 x i8]*
  %scevgep32.4 = getelementptr [6 x i8], [6 x i8]* %220, i64 0, i64 0
  %221 = load i8, i8* %scevgep26.3, align 1
  %conv.i249.4 = zext i8 %221 to i32
  %222 = load i8, i8* %scevgep32.4, align 1
  %conv5.i254.4 = zext i8 %222 to i32
  %xor.i255.4 = xor i32 %conv.i249.4, %conv5.i254.4
  %conv6.i256.4 = trunc i32 %xor.i255.4 to i8
  %scevgep33.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i256.4, i8* %scevgep33.4, align 1
  %scevgep26.4 = getelementptr i8, i8* %scevgep26.3, i64 1
  %scevgep31.4 = getelementptr [6 x i8], [6 x i8]* %220, i64 0, i64 1
  %223 = bitcast i8* %scevgep31.4 to [6 x i8]*
  %scevgep32.5 = getelementptr [6 x i8], [6 x i8]* %223, i64 0, i64 0
  %224 = load i8, i8* %scevgep26.4, align 1
  %conv.i249.5 = zext i8 %224 to i32
  %225 = load i8, i8* %scevgep32.5, align 1
  %conv5.i254.5 = zext i8 %225 to i32
  %xor.i255.5 = xor i32 %conv.i249.5, %conv5.i254.5
  %conv6.i256.5 = trunc i32 %xor.i255.5 to i8
  %scevgep33.5 = getelementptr i8, i8* %c, i64 5
  store i8 %conv6.i256.5, i8* %scevgep33.5, align 1
  %call65 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv66 = zext i8 %call65 to i32
  %226 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %227 = load i8, i8* %scevgep.1, align 1
  %conv.i.i205.1 = zext i8 %227 to i32
  %conv1.i.i206.1 = zext i8 %226 to i32
  %xor.i.i207.1 = xor i32 %conv1.i.i206.1, %conv.i.i205.1
  %conv2.i.i208.1 = trunc i32 %xor.i.i207.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %228 = load i8, i8* %scevgep.2, align 1
  %conv.i.i205.2 = zext i8 %228 to i32
  %conv1.i.i206.2 = zext i8 %conv2.i.i208.1 to i32
  %xor.i.i207.2 = xor i32 %conv1.i.i206.2, %conv.i.i205.2
  %conv2.i.i208.2 = trunc i32 %xor.i.i207.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %229 = load i8, i8* %scevgep.3, align 1
  %conv.i.i205.3 = zext i8 %229 to i32
  %conv1.i.i206.3 = zext i8 %conv2.i.i208.2 to i32
  %xor.i.i207.3 = xor i32 %conv1.i.i206.3, %conv.i.i205.3
  %conv2.i.i208.3 = trunc i32 %xor.i.i207.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %230 = load i8, i8* %scevgep.4, align 1
  %conv.i.i205.4 = zext i8 %230 to i32
  %conv1.i.i206.4 = zext i8 %conv2.i.i208.3 to i32
  %xor.i.i207.4 = xor i32 %conv1.i.i206.4, %conv.i.i205.4
  %conv2.i.i208.4 = trunc i32 %xor.i.i207.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %231 = load i8, i8* %scevgep.5, align 1
  %conv.i.i205.5 = zext i8 %231 to i32
  %conv1.i.i206.5 = zext i8 %conv2.i.i208.4 to i32
  %xor.i.i207.5 = xor i32 %conv1.i.i206.5, %conv.i.i205.5
  %conv2.i.i208.5 = trunc i32 %xor.i.i207.5 to i8
  %conv68 = zext i8 %conv2.i.i208.5 to i32
  %cmp69 = icmp eq i32 %conv66, %conv68
  call void @assert(i1 zeroext %cmp69)
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
