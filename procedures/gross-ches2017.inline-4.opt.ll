; ModuleID = '../examples/gross-ches2017.inline-4.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
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
  ret i8 %conv2.4
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
  ret i8 %conv2.i.4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 5
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 5
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 5
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 5
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 5
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %call.2 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %11)
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.2, i8* %scevgep.2, align 1
  %12 = add i64 %0, 3
  %tmp.3 = trunc i64 %12 to i32
  %rem.3 = srem i32 %tmp.3, 5
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 5
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %call.3 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %15)
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.3, i8* %scevgep.3, align 1
  %16 = add i64 %0, 4
  %tmp.4 = trunc i64 %16 to i32
  %rem.4 = srem i32 %tmp.4, 5
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 5
  %idxprom3.4 = sext i32 %rem2.4 to i64
  %arrayidx4.4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.4
  %19 = load i8, i8* %arrayidx4.4, align 1
  %call.4 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %19)
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.4, i8* %scevgep.4, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 5
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 5
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 5
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
  %rem.2 = srem i32 %tmp.2, 5
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 5
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
  %rem.3 = srem i32 %tmp.3, 5
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i32
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 5
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
  %rem.4 = srem i32 %tmp.4, 5
  %idxprom.4 = sext i32 %rem.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 %idxprom.4
  %17 = load i8, i8* %arrayidx.4, align 1
  %conv.4 = zext i8 %17 to i32
  %18 = add i64 %1, 4
  %tmp2.4 = trunc i64 %18 to i32
  %rem2.4 = srem i32 %tmp2.4, 5
  %idxprom3.4 = sext i32 %rem2.4 to i64
  %arrayidx4.4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.4
  %19 = load i8, i8* %arrayidx4.4, align 1
  %conv5.4 = zext i8 %19 to i32
  %xor.4 = xor i32 %conv.4, %conv5.4
  %conv6.4 = trunc i32 %xor.4 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.4, i8* %scevgep.4, align 1
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
  %r = alloca [5 x [5 x i8]], align 16
  %a1b = alloca [5 x i8], align 1
  %ab1 = alloca [5 x i8], align 1
  %a2b = alloca [5 x i8], align 1
  %ab2 = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep144.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep144.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep144.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep144.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep144.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep144.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep144.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep144.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep140.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep140.1, align 1
  %conv.i.i65.1 = zext i8 %6 to i32
  %conv1.i.i66.1 = zext i8 %5 to i32
  %xor.i.i67.1 = xor i32 %conv1.i.i66.1, %conv.i.i65.1
  %conv2.i.i68.1 = trunc i32 %xor.i.i67.1 to i8
  %scevgep140.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep140.2, align 1
  %conv.i.i65.2 = zext i8 %7 to i32
  %conv1.i.i66.2 = zext i8 %conv2.i.i68.1 to i32
  %xor.i.i67.2 = xor i32 %conv1.i.i66.2, %conv.i.i65.2
  %conv2.i.i68.2 = trunc i32 %xor.i.i67.2 to i8
  %scevgep140.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep140.3, align 1
  %conv.i.i65.3 = zext i8 %8 to i32
  %conv1.i.i66.3 = zext i8 %conv2.i.i68.2 to i32
  %xor.i.i67.3 = xor i32 %conv1.i.i66.3, %conv.i.i65.3
  %conv2.i.i68.3 = trunc i32 %xor.i.i67.3 to i8
  %scevgep140.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep140.4, align 1
  %conv.i.i65.4 = zext i8 %9 to i32
  %conv1.i.i66.4 = zext i8 %conv2.i.i68.3 to i32
  %xor.i.i67.4 = xor i32 %conv1.i.i66.4, %conv.i.i65.4
  %conv2.i.i68.4 = trunc i32 %xor.i.i67.4 to i8
  %conv7 = zext i8 %conv2.i.i68.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep136 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep136, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep136.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep136.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep136.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep136.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep136.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep136.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep136.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep136.4, align 1
  %scevgep133 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %10 = bitcast i8* %scevgep133 to [5 x [5 x i8]]*
  %call16.1146 = call zeroext i8 (...) @rand()
  %scevgep136.1147 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 0
  store i8 %call16.1146, i8* %scevgep136.1147, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep136.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep136.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep136.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep136.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep136.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep136.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep136.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep136.4.1, align 1
  %scevgep133.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 1, i64 0
  %11 = bitcast i8* %scevgep133.1 to [5 x [5 x i8]]*
  %call16.2149 = call zeroext i8 (...) @rand()
  %scevgep136.2150 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 0
  store i8 %call16.2149, i8* %scevgep136.2150, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep136.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep136.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep136.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep136.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep136.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep136.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep136.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep136.4.2, align 1
  %scevgep133.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep133.2 to [5 x [5 x i8]]*
  %call16.3152 = call zeroext i8 (...) @rand()
  %scevgep136.3153 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 0
  store i8 %call16.3152, i8* %scevgep136.3153, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep136.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep136.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep136.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep136.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep136.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep136.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep136.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep136.4.3, align 1
  %scevgep133.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep133.3 to [5 x [5 x i8]]*
  %call16.4155 = call zeroext i8 (...) @rand()
  %scevgep136.4156 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 0
  store i8 %call16.4155, i8* %scevgep136.4156, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep136.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep136.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep136.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep136.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep136.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep136.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep136.4.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep136.4.4, align 1
  %14 = load i8, i8* %a, align 1
  %15 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep123 = getelementptr i8, i8* %a, i64 1
  %scevgep128 = getelementptr i8, i8* %b, i64 1
  %16 = load i8, i8* %scevgep123, align 1
  %17 = load i8, i8* %scevgep128, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #2
  %scevgep130.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep130.1, align 1
  %scevgep123.1 = getelementptr i8, i8* %scevgep123, i64 1
  %scevgep128.1 = getelementptr i8, i8* %scevgep128, i64 1
  %18 = load i8, i8* %scevgep123.1, align 1
  %19 = load i8, i8* %scevgep128.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #2
  %scevgep130.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.i.2, i8* %scevgep130.2, align 1
  %scevgep123.2 = getelementptr i8, i8* %scevgep123.1, i64 1
  %scevgep128.2 = getelementptr i8, i8* %scevgep128.1, i64 1
  %20 = load i8, i8* %scevgep123.2, align 1
  %21 = load i8, i8* %scevgep128.2, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21) #2
  %scevgep130.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.i.3, i8* %scevgep130.3, align 1
  %scevgep123.3 = getelementptr i8, i8* %scevgep123.2, i64 1
  %scevgep128.3 = getelementptr i8, i8* %scevgep128.2, i64 1
  %22 = load i8, i8* %scevgep123.3, align 1
  %23 = load i8, i8* %scevgep128.3, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #2
  %scevgep130.4 = getelementptr i8, i8* %c, i64 4
  store i8 %call.i.4, i8* %scevgep130.4, align 1
  %24 = load i8, i8* %a, align 1
  %arrayidx4.i88 = getelementptr inbounds i8, i8* %b, i64 1
  %25 = load i8, i8* %arrayidx4.i88, align 1
  %call.i89 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #2
  %scevgep30 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i89, i8* %scevgep30, align 1
  %scevgep22 = getelementptr i8, i8* %a, i64 1
  %26 = load i8, i8* %scevgep22, align 1
  %arrayidx4.i88.1 = getelementptr inbounds i8, i8* %b, i64 2
  %27 = load i8, i8* %arrayidx4.i88.1, align 1
  %call.i89.1 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #2
  %scevgep30.1 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i89.1, i8* %scevgep30.1, align 1
  %scevgep22.1 = getelementptr i8, i8* %scevgep22, i64 1
  %28 = load i8, i8* %scevgep22.1, align 1
  %arrayidx4.i88.2 = getelementptr inbounds i8, i8* %b, i64 3
  %29 = load i8, i8* %arrayidx4.i88.2, align 1
  %call.i89.2 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #2
  %scevgep30.2 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i89.2, i8* %scevgep30.2, align 1
  %scevgep22.2 = getelementptr i8, i8* %scevgep22.1, i64 1
  %30 = load i8, i8* %scevgep22.2, align 1
  %arrayidx4.i88.3 = getelementptr inbounds i8, i8* %b, i64 4
  %31 = load i8, i8* %arrayidx4.i88.3, align 1
  %call.i89.3 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #2
  %scevgep30.3 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i89.3, i8* %scevgep30.3, align 1
  %scevgep22.3 = getelementptr i8, i8* %scevgep22.2, i64 1
  %32 = load i8, i8* %scevgep22.3, align 1
  %33 = load i8, i8* %b, align 1
  %call.i89.4 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #2
  %scevgep30.4 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 4
  store i8 %call.i89.4, i8* %scevgep30.4, align 1
  %arrayidx.i106 = getelementptr inbounds i8, i8* %a, i64 1
  %34 = load i8, i8* %arrayidx.i106, align 1
  %35 = load i8, i8* %b, align 1
  %call.i111 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #2
  %scevgep39 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i111, i8* %scevgep39, align 1
  %scevgep35 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i106.1 = getelementptr inbounds i8, i8* %a, i64 2
  %36 = load i8, i8* %arrayidx.i106.1, align 1
  %37 = load i8, i8* %scevgep35, align 1
  %call.i111.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #2
  %scevgep39.1 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i111.1, i8* %scevgep39.1, align 1
  %scevgep35.1 = getelementptr i8, i8* %scevgep35, i64 1
  %arrayidx.i106.2 = getelementptr inbounds i8, i8* %a, i64 3
  %38 = load i8, i8* %arrayidx.i106.2, align 1
  %39 = load i8, i8* %scevgep35.1, align 1
  %call.i111.2 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  %scevgep39.2 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i111.2, i8* %scevgep39.2, align 1
  %scevgep35.2 = getelementptr i8, i8* %scevgep35.1, i64 1
  %arrayidx.i106.3 = getelementptr inbounds i8, i8* %a, i64 4
  %40 = load i8, i8* %arrayidx.i106.3, align 1
  %41 = load i8, i8* %scevgep35.2, align 1
  %call.i111.3 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #2
  %scevgep39.3 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i111.3, i8* %scevgep39.3, align 1
  %scevgep35.3 = getelementptr i8, i8* %scevgep35.2, i64 1
  %42 = load i8, i8* %a, align 1
  %43 = load i8, i8* %scevgep35.3, align 1
  %call.i111.4 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #2
  %scevgep39.4 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 4
  store i8 %call.i111.4, i8* %scevgep39.4, align 1
  %44 = load i8, i8* %a, align 1
  %arrayidx4.i132 = getelementptr inbounds i8, i8* %b, i64 2
  %45 = load i8, i8* %arrayidx4.i132, align 1
  %call.i133 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #2
  %scevgep50 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i133, i8* %scevgep50, align 1
  %scevgep42 = getelementptr i8, i8* %a, i64 1
  %46 = load i8, i8* %scevgep42, align 1
  %arrayidx4.i132.1 = getelementptr inbounds i8, i8* %b, i64 3
  %47 = load i8, i8* %arrayidx4.i132.1, align 1
  %call.i133.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #2
  %scevgep50.1 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i133.1, i8* %scevgep50.1, align 1
  %scevgep42.1 = getelementptr i8, i8* %scevgep42, i64 1
  %48 = load i8, i8* %scevgep42.1, align 1
  %arrayidx4.i132.2 = getelementptr inbounds i8, i8* %b, i64 4
  %49 = load i8, i8* %arrayidx4.i132.2, align 1
  %call.i133.2 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  %scevgep50.2 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i133.2, i8* %scevgep50.2, align 1
  %scevgep42.2 = getelementptr i8, i8* %scevgep42.1, i64 1
  %50 = load i8, i8* %scevgep42.2, align 1
  %51 = load i8, i8* %b, align 1
  %call.i133.3 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #2
  %scevgep50.3 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i133.3, i8* %scevgep50.3, align 1
  %scevgep42.3 = getelementptr i8, i8* %scevgep42.2, i64 1
  %52 = load i8, i8* %scevgep42.3, align 1
  %arrayidx4.i132.4 = getelementptr inbounds i8, i8* %b, i64 1
  %53 = load i8, i8* %arrayidx4.i132.4, align 1
  %call.i133.4 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #2
  %scevgep50.4 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 4
  store i8 %call.i133.4, i8* %scevgep50.4, align 1
  %arrayidx.i150 = getelementptr inbounds i8, i8* %a, i64 2
  %54 = load i8, i8* %arrayidx.i150, align 1
  %55 = load i8, i8* %b, align 1
  %call.i155 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %scevgep59 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 0
  store i8 %call.i155, i8* %scevgep59, align 1
  %scevgep55 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i150.1 = getelementptr inbounds i8, i8* %a, i64 3
  %56 = load i8, i8* %arrayidx.i150.1, align 1
  %57 = load i8, i8* %scevgep55, align 1
  %call.i155.1 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57) #2
  %scevgep59.1 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 1
  store i8 %call.i155.1, i8* %scevgep59.1, align 1
  %scevgep55.1 = getelementptr i8, i8* %scevgep55, i64 1
  %arrayidx.i150.2 = getelementptr inbounds i8, i8* %a, i64 4
  %58 = load i8, i8* %arrayidx.i150.2, align 1
  %59 = load i8, i8* %scevgep55.1, align 1
  %call.i155.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #2
  %scevgep59.2 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 2
  store i8 %call.i155.2, i8* %scevgep59.2, align 1
  %scevgep55.2 = getelementptr i8, i8* %scevgep55.1, i64 1
  %60 = load i8, i8* %a, align 1
  %61 = load i8, i8* %scevgep55.2, align 1
  %call.i155.3 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #2
  %scevgep59.3 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 3
  store i8 %call.i155.3, i8* %scevgep59.3, align 1
  %scevgep55.3 = getelementptr i8, i8* %scevgep55.2, i64 1
  %arrayidx.i150.4 = getelementptr inbounds i8, i8* %a, i64 1
  %62 = load i8, i8* %arrayidx.i150.4, align 1
  %63 = load i8, i8* %scevgep55.3, align 1
  %call.i155.4 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #2
  %scevgep59.4 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 4
  store i8 %call.i155.4, i8* %scevgep59.4, align 1
  %scevgep70 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 0
  %64 = load i8, i8* %c, align 1
  %conv.i = zext i8 %64 to i32
  %65 = load i8, i8* %scevgep70, align 1
  %conv5.i = zext i8 %65 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %c, align 1
  %scevgep62 = getelementptr i8, i8* %c, i64 1
  %scevgep69 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %66 = bitcast i8* %scevgep69 to [5 x [5 x i8]]*
  %scevgep70.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 0
  %67 = load i8, i8* %scevgep62, align 1
  %conv.i.1 = zext i8 %67 to i32
  %68 = load i8, i8* %scevgep70.1, align 1
  %conv5.i.1 = zext i8 %68 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep71.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i.1, i8* %scevgep71.1, align 1
  %scevgep62.1 = getelementptr i8, i8* %scevgep62, i64 1
  %scevgep69.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 1
  %69 = bitcast i8* %scevgep69.1 to [5 x [5 x i8]]*
  %scevgep70.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep62.1, align 1
  %conv.i.2 = zext i8 %70 to i32
  %71 = load i8, i8* %scevgep70.2, align 1
  %conv5.i.2 = zext i8 %71 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep71.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i.2, i8* %scevgep71.2, align 1
  %scevgep62.2 = getelementptr i8, i8* %scevgep62.1, i64 1
  %scevgep69.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 1
  %72 = bitcast i8* %scevgep69.2 to [5 x [5 x i8]]*
  %scevgep70.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep62.2, align 1
  %conv.i.3 = zext i8 %73 to i32
  %74 = load i8, i8* %scevgep70.3, align 1
  %conv5.i.3 = zext i8 %74 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep71.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i.3, i8* %scevgep71.3, align 1
  %scevgep62.3 = getelementptr i8, i8* %scevgep62.2, i64 1
  %scevgep69.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 1
  %75 = bitcast i8* %scevgep69.3 to [5 x [5 x i8]]*
  %scevgep70.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep62.3, align 1
  %conv.i.4 = zext i8 %76 to i32
  %77 = load i8, i8* %scevgep70.4, align 1
  %conv5.i.4 = zext i8 %77 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep71.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i.4, i8* %scevgep71.4, align 1
  %scevgep80 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 0
  %78 = load i8, i8* %c, align 1
  %conv.i208 = zext i8 %78 to i32
  %79 = load i8, i8* %scevgep80, align 1
  %conv5.i213 = zext i8 %79 to i32
  %xor.i214 = xor i32 %conv.i208, %conv5.i213
  %conv6.i215 = trunc i32 %xor.i214 to i8
  store i8 %conv6.i215, i8* %c, align 1
  %scevgep74 = getelementptr i8, i8* %c, i64 1
  %scevgep79 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 1
  %80 = bitcast i8* %scevgep79 to [5 x i8]*
  %scevgep80.1 = getelementptr [5 x i8], [5 x i8]* %80, i64 0, i64 0
  %81 = load i8, i8* %scevgep74, align 1
  %conv.i208.1 = zext i8 %81 to i32
  %82 = load i8, i8* %scevgep80.1, align 1
  %conv5.i213.1 = zext i8 %82 to i32
  %xor.i214.1 = xor i32 %conv.i208.1, %conv5.i213.1
  %conv6.i215.1 = trunc i32 %xor.i214.1 to i8
  %scevgep81.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i215.1, i8* %scevgep81.1, align 1
  %scevgep74.1 = getelementptr i8, i8* %scevgep74, i64 1
  %scevgep79.1 = getelementptr [5 x i8], [5 x i8]* %80, i64 0, i64 1
  %83 = bitcast i8* %scevgep79.1 to [5 x i8]*
  %scevgep80.2 = getelementptr [5 x i8], [5 x i8]* %83, i64 0, i64 0
  %84 = load i8, i8* %scevgep74.1, align 1
  %conv.i208.2 = zext i8 %84 to i32
  %85 = load i8, i8* %scevgep80.2, align 1
  %conv5.i213.2 = zext i8 %85 to i32
  %xor.i214.2 = xor i32 %conv.i208.2, %conv5.i213.2
  %conv6.i215.2 = trunc i32 %xor.i214.2 to i8
  %scevgep81.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i215.2, i8* %scevgep81.2, align 1
  %scevgep74.2 = getelementptr i8, i8* %scevgep74.1, i64 1
  %scevgep79.2 = getelementptr [5 x i8], [5 x i8]* %83, i64 0, i64 1
  %86 = bitcast i8* %scevgep79.2 to [5 x i8]*
  %scevgep80.3 = getelementptr [5 x i8], [5 x i8]* %86, i64 0, i64 0
  %87 = load i8, i8* %scevgep74.2, align 1
  %conv.i208.3 = zext i8 %87 to i32
  %88 = load i8, i8* %scevgep80.3, align 1
  %conv5.i213.3 = zext i8 %88 to i32
  %xor.i214.3 = xor i32 %conv.i208.3, %conv5.i213.3
  %conv6.i215.3 = trunc i32 %xor.i214.3 to i8
  %scevgep81.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i215.3, i8* %scevgep81.3, align 1
  %scevgep74.3 = getelementptr i8, i8* %scevgep74.2, i64 1
  %scevgep79.3 = getelementptr [5 x i8], [5 x i8]* %86, i64 0, i64 1
  %89 = bitcast i8* %scevgep79.3 to [5 x i8]*
  %scevgep80.4 = getelementptr [5 x i8], [5 x i8]* %89, i64 0, i64 0
  %90 = load i8, i8* %scevgep74.3, align 1
  %conv.i208.4 = zext i8 %90 to i32
  %91 = load i8, i8* %scevgep80.4, align 1
  %conv5.i213.4 = zext i8 %91 to i32
  %xor.i214.4 = xor i32 %conv.i208.4, %conv5.i213.4
  %conv6.i215.4 = trunc i32 %xor.i214.4 to i8
  %scevgep81.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i215.4, i8* %scevgep81.4, align 1
  %scevgep90 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 0
  %92 = load i8, i8* %c, align 1
  %conv.i308 = zext i8 %92 to i32
  %93 = load i8, i8* %scevgep90, align 1
  %conv5.i313 = zext i8 %93 to i32
  %xor.i314 = xor i32 %conv.i308, %conv5.i313
  %conv6.i315 = trunc i32 %xor.i314 to i8
  store i8 %conv6.i315, i8* %c, align 1
  %scevgep84 = getelementptr i8, i8* %c, i64 1
  %scevgep89 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 1
  %94 = bitcast i8* %scevgep89 to [5 x i8]*
  %scevgep90.1 = getelementptr [5 x i8], [5 x i8]* %94, i64 0, i64 0
  %95 = load i8, i8* %scevgep84, align 1
  %conv.i308.1 = zext i8 %95 to i32
  %96 = load i8, i8* %scevgep90.1, align 1
  %conv5.i313.1 = zext i8 %96 to i32
  %xor.i314.1 = xor i32 %conv.i308.1, %conv5.i313.1
  %conv6.i315.1 = trunc i32 %xor.i314.1 to i8
  %scevgep91.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i315.1, i8* %scevgep91.1, align 1
  %scevgep84.1 = getelementptr i8, i8* %scevgep84, i64 1
  %scevgep89.1 = getelementptr [5 x i8], [5 x i8]* %94, i64 0, i64 1
  %97 = bitcast i8* %scevgep89.1 to [5 x i8]*
  %scevgep90.2 = getelementptr [5 x i8], [5 x i8]* %97, i64 0, i64 0
  %98 = load i8, i8* %scevgep84.1, align 1
  %conv.i308.2 = zext i8 %98 to i32
  %99 = load i8, i8* %scevgep90.2, align 1
  %conv5.i313.2 = zext i8 %99 to i32
  %xor.i314.2 = xor i32 %conv.i308.2, %conv5.i313.2
  %conv6.i315.2 = trunc i32 %xor.i314.2 to i8
  %scevgep91.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i315.2, i8* %scevgep91.2, align 1
  %scevgep84.2 = getelementptr i8, i8* %scevgep84.1, i64 1
  %scevgep89.2 = getelementptr [5 x i8], [5 x i8]* %97, i64 0, i64 1
  %100 = bitcast i8* %scevgep89.2 to [5 x i8]*
  %scevgep90.3 = getelementptr [5 x i8], [5 x i8]* %100, i64 0, i64 0
  %101 = load i8, i8* %scevgep84.2, align 1
  %conv.i308.3 = zext i8 %101 to i32
  %102 = load i8, i8* %scevgep90.3, align 1
  %conv5.i313.3 = zext i8 %102 to i32
  %xor.i314.3 = xor i32 %conv.i308.3, %conv5.i313.3
  %conv6.i315.3 = trunc i32 %xor.i314.3 to i8
  %scevgep91.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i315.3, i8* %scevgep91.3, align 1
  %scevgep84.3 = getelementptr i8, i8* %scevgep84.2, i64 1
  %scevgep89.3 = getelementptr [5 x i8], [5 x i8]* %100, i64 0, i64 1
  %103 = bitcast i8* %scevgep89.3 to [5 x i8]*
  %scevgep90.4 = getelementptr [5 x i8], [5 x i8]* %103, i64 0, i64 0
  %104 = load i8, i8* %scevgep84.3, align 1
  %conv.i308.4 = zext i8 %104 to i32
  %105 = load i8, i8* %scevgep90.4, align 1
  %conv5.i313.4 = zext i8 %105 to i32
  %xor.i314.4 = xor i32 %conv.i308.4, %conv5.i313.4
  %conv6.i315.4 = trunc i32 %xor.i314.4 to i8
  %scevgep91.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i315.4, i8* %scevgep91.4, align 1
  %arrayidx42 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx42, i64 0, i64 0
  %106 = load i8, i8* %c, align 1
  %conv.i283 = zext i8 %106 to i32
  %arrayidx4.i287 = getelementptr inbounds i8, i8* %arraydecay43, i64 1
  %107 = load i8, i8* %arrayidx4.i287, align 1
  %conv5.i288 = zext i8 %107 to i32
  %xor.i289 = xor i32 %conv.i283, %conv5.i288
  %conv6.i290 = trunc i32 %xor.i289 to i8
  store i8 %conv6.i290, i8* %c, align 1
  %scevgep94 = getelementptr i8, i8* %c, i64 1
  %108 = load i8, i8* %scevgep94, align 1
  %conv.i283.1 = zext i8 %108 to i32
  %arrayidx4.i287.1 = getelementptr inbounds i8, i8* %arraydecay43, i64 2
  %109 = load i8, i8* %arrayidx4.i287.1, align 1
  %conv5.i288.1 = zext i8 %109 to i32
  %xor.i289.1 = xor i32 %conv.i283.1, %conv5.i288.1
  %conv6.i290.1 = trunc i32 %xor.i289.1 to i8
  %scevgep100.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i290.1, i8* %scevgep100.1, align 1
  %scevgep94.1 = getelementptr i8, i8* %scevgep94, i64 1
  %110 = load i8, i8* %scevgep94.1, align 1
  %conv.i283.2 = zext i8 %110 to i32
  %arrayidx4.i287.2 = getelementptr inbounds i8, i8* %arraydecay43, i64 3
  %111 = load i8, i8* %arrayidx4.i287.2, align 1
  %conv5.i288.2 = zext i8 %111 to i32
  %xor.i289.2 = xor i32 %conv.i283.2, %conv5.i288.2
  %conv6.i290.2 = trunc i32 %xor.i289.2 to i8
  %scevgep100.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i290.2, i8* %scevgep100.2, align 1
  %scevgep94.2 = getelementptr i8, i8* %scevgep94.1, i64 1
  %112 = load i8, i8* %scevgep94.2, align 1
  %conv.i283.3 = zext i8 %112 to i32
  %arrayidx4.i287.3 = getelementptr inbounds i8, i8* %arraydecay43, i64 4
  %113 = load i8, i8* %arrayidx4.i287.3, align 1
  %conv5.i288.3 = zext i8 %113 to i32
  %xor.i289.3 = xor i32 %conv.i283.3, %conv5.i288.3
  %conv6.i290.3 = trunc i32 %xor.i289.3 to i8
  %scevgep100.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i290.3, i8* %scevgep100.3, align 1
  %scevgep94.3 = getelementptr i8, i8* %scevgep94.2, i64 1
  %114 = load i8, i8* %scevgep94.3, align 1
  %conv.i283.4 = zext i8 %114 to i32
  %115 = load i8, i8* %arraydecay43, align 1
  %conv5.i288.4 = zext i8 %115 to i32
  %xor.i289.4 = xor i32 %conv.i283.4, %conv5.i288.4
  %conv6.i290.4 = trunc i32 %xor.i289.4 to i8
  %scevgep100.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i290.4, i8* %scevgep100.4, align 1
  %scevgep109 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 0
  %116 = load i8, i8* %c, align 1
  %conv.i258 = zext i8 %116 to i32
  %117 = load i8, i8* %scevgep109, align 1
  %conv5.i263 = zext i8 %117 to i32
  %xor.i264 = xor i32 %conv.i258, %conv5.i263
  %conv6.i265 = trunc i32 %xor.i264 to i8
  store i8 %conv6.i265, i8* %c, align 1
  %scevgep103 = getelementptr i8, i8* %c, i64 1
  %scevgep108 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 1
  %118 = bitcast i8* %scevgep108 to [5 x i8]*
  %scevgep109.1 = getelementptr [5 x i8], [5 x i8]* %118, i64 0, i64 0
  %119 = load i8, i8* %scevgep103, align 1
  %conv.i258.1 = zext i8 %119 to i32
  %120 = load i8, i8* %scevgep109.1, align 1
  %conv5.i263.1 = zext i8 %120 to i32
  %xor.i264.1 = xor i32 %conv.i258.1, %conv5.i263.1
  %conv6.i265.1 = trunc i32 %xor.i264.1 to i8
  %scevgep110.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i265.1, i8* %scevgep110.1, align 1
  %scevgep103.1 = getelementptr i8, i8* %scevgep103, i64 1
  %scevgep108.1 = getelementptr [5 x i8], [5 x i8]* %118, i64 0, i64 1
  %121 = bitcast i8* %scevgep108.1 to [5 x i8]*
  %scevgep109.2 = getelementptr [5 x i8], [5 x i8]* %121, i64 0, i64 0
  %122 = load i8, i8* %scevgep103.1, align 1
  %conv.i258.2 = zext i8 %122 to i32
  %123 = load i8, i8* %scevgep109.2, align 1
  %conv5.i263.2 = zext i8 %123 to i32
  %xor.i264.2 = xor i32 %conv.i258.2, %conv5.i263.2
  %conv6.i265.2 = trunc i32 %xor.i264.2 to i8
  %scevgep110.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i265.2, i8* %scevgep110.2, align 1
  %scevgep103.2 = getelementptr i8, i8* %scevgep103.1, i64 1
  %scevgep108.2 = getelementptr [5 x i8], [5 x i8]* %121, i64 0, i64 1
  %124 = bitcast i8* %scevgep108.2 to [5 x i8]*
  %scevgep109.3 = getelementptr [5 x i8], [5 x i8]* %124, i64 0, i64 0
  %125 = load i8, i8* %scevgep103.2, align 1
  %conv.i258.3 = zext i8 %125 to i32
  %126 = load i8, i8* %scevgep109.3, align 1
  %conv5.i263.3 = zext i8 %126 to i32
  %xor.i264.3 = xor i32 %conv.i258.3, %conv5.i263.3
  %conv6.i265.3 = trunc i32 %xor.i264.3 to i8
  %scevgep110.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i265.3, i8* %scevgep110.3, align 1
  %scevgep103.3 = getelementptr i8, i8* %scevgep103.2, i64 1
  %scevgep108.3 = getelementptr [5 x i8], [5 x i8]* %124, i64 0, i64 1
  %127 = bitcast i8* %scevgep108.3 to [5 x i8]*
  %scevgep109.4 = getelementptr [5 x i8], [5 x i8]* %127, i64 0, i64 0
  %128 = load i8, i8* %scevgep103.3, align 1
  %conv.i258.4 = zext i8 %128 to i32
  %129 = load i8, i8* %scevgep109.4, align 1
  %conv5.i263.4 = zext i8 %129 to i32
  %xor.i264.4 = xor i32 %conv.i258.4, %conv5.i263.4
  %conv6.i265.4 = trunc i32 %xor.i264.4 to i8
  %scevgep110.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i265.4, i8* %scevgep110.4, align 1
  %scevgep119 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 0
  %130 = load i8, i8* %c, align 1
  %conv.i233 = zext i8 %130 to i32
  %131 = load i8, i8* %scevgep119, align 1
  %conv5.i238 = zext i8 %131 to i32
  %xor.i239 = xor i32 %conv.i233, %conv5.i238
  %conv6.i240 = trunc i32 %xor.i239 to i8
  store i8 %conv6.i240, i8* %c, align 1
  %scevgep113 = getelementptr i8, i8* %c, i64 1
  %scevgep118 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 1
  %132 = bitcast i8* %scevgep118 to [5 x i8]*
  %scevgep119.1 = getelementptr [5 x i8], [5 x i8]* %132, i64 0, i64 0
  %133 = load i8, i8* %scevgep113, align 1
  %conv.i233.1 = zext i8 %133 to i32
  %134 = load i8, i8* %scevgep119.1, align 1
  %conv5.i238.1 = zext i8 %134 to i32
  %xor.i239.1 = xor i32 %conv.i233.1, %conv5.i238.1
  %conv6.i240.1 = trunc i32 %xor.i239.1 to i8
  %scevgep120.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i240.1, i8* %scevgep120.1, align 1
  %scevgep113.1 = getelementptr i8, i8* %scevgep113, i64 1
  %scevgep118.1 = getelementptr [5 x i8], [5 x i8]* %132, i64 0, i64 1
  %135 = bitcast i8* %scevgep118.1 to [5 x i8]*
  %scevgep119.2 = getelementptr [5 x i8], [5 x i8]* %135, i64 0, i64 0
  %136 = load i8, i8* %scevgep113.1, align 1
  %conv.i233.2 = zext i8 %136 to i32
  %137 = load i8, i8* %scevgep119.2, align 1
  %conv5.i238.2 = zext i8 %137 to i32
  %xor.i239.2 = xor i32 %conv.i233.2, %conv5.i238.2
  %conv6.i240.2 = trunc i32 %xor.i239.2 to i8
  %scevgep120.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i240.2, i8* %scevgep120.2, align 1
  %scevgep113.2 = getelementptr i8, i8* %scevgep113.1, i64 1
  %scevgep118.2 = getelementptr [5 x i8], [5 x i8]* %135, i64 0, i64 1
  %138 = bitcast i8* %scevgep118.2 to [5 x i8]*
  %scevgep119.3 = getelementptr [5 x i8], [5 x i8]* %138, i64 0, i64 0
  %139 = load i8, i8* %scevgep113.2, align 1
  %conv.i233.3 = zext i8 %139 to i32
  %140 = load i8, i8* %scevgep119.3, align 1
  %conv5.i238.3 = zext i8 %140 to i32
  %xor.i239.3 = xor i32 %conv.i233.3, %conv5.i238.3
  %conv6.i240.3 = trunc i32 %xor.i239.3 to i8
  %scevgep120.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i240.3, i8* %scevgep120.3, align 1
  %scevgep113.3 = getelementptr i8, i8* %scevgep113.2, i64 1
  %scevgep118.3 = getelementptr [5 x i8], [5 x i8]* %138, i64 0, i64 1
  %141 = bitcast i8* %scevgep118.3 to [5 x i8]*
  %scevgep119.4 = getelementptr [5 x i8], [5 x i8]* %141, i64 0, i64 0
  %142 = load i8, i8* %scevgep113.3, align 1
  %conv.i233.4 = zext i8 %142 to i32
  %143 = load i8, i8* %scevgep119.4, align 1
  %conv5.i238.4 = zext i8 %143 to i32
  %xor.i239.4 = xor i32 %conv.i233.4, %conv5.i238.4
  %conv6.i240.4 = trunc i32 %xor.i239.4 to i8
  %scevgep120.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i240.4, i8* %scevgep120.4, align 1
  %call49 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv50 = zext i8 %call49 to i32
  %144 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %145 = load i8, i8* %scevgep.1, align 1
  %conv.i.i189.1 = zext i8 %145 to i32
  %conv1.i.i190.1 = zext i8 %144 to i32
  %xor.i.i191.1 = xor i32 %conv1.i.i190.1, %conv.i.i189.1
  %conv2.i.i192.1 = trunc i32 %xor.i.i191.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %146 = load i8, i8* %scevgep.2, align 1
  %conv.i.i189.2 = zext i8 %146 to i32
  %conv1.i.i190.2 = zext i8 %conv2.i.i192.1 to i32
  %xor.i.i191.2 = xor i32 %conv1.i.i190.2, %conv.i.i189.2
  %conv2.i.i192.2 = trunc i32 %xor.i.i191.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %147 = load i8, i8* %scevgep.3, align 1
  %conv.i.i189.3 = zext i8 %147 to i32
  %conv1.i.i190.3 = zext i8 %conv2.i.i192.2 to i32
  %xor.i.i191.3 = xor i32 %conv1.i.i190.3, %conv.i.i189.3
  %conv2.i.i192.3 = trunc i32 %xor.i.i191.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %148 = load i8, i8* %scevgep.4, align 1
  %conv.i.i189.4 = zext i8 %148 to i32
  %conv1.i.i190.4 = zext i8 %conv2.i.i192.3 to i32
  %xor.i.i191.4 = xor i32 %conv1.i.i190.4, %conv.i.i189.4
  %conv2.i.i192.4 = trunc i32 %xor.i.i191.4 to i8
  %conv52 = zext i8 %conv2.i.i192.4 to i32
  %cmp53 = icmp eq i32 %conv50, %conv52
  call void @assert(i1 zeroext %cmp53)
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
