; ModuleID = '../examples/gross-ches2017.inline-3.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  ret i8 %conv2.3
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
  ret i8 %conv2.i.3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 4
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 4
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 4
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 4
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 4
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %call.2 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %11)
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.2, i8* %scevgep.2, align 1
  %12 = add i64 %0, 3
  %tmp.3 = trunc i64 %12 to i32
  %rem.3 = srem i32 %tmp.3, 4
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 4
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %call.3 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %15)
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.3, i8* %scevgep.3, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 4
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 4
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 4
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
  %rem.2 = srem i32 %tmp.2, 4
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 4
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
  %rem.3 = srem i32 %tmp.3, 4
  %idxprom.3 = sext i32 %rem.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %idxprom.3
  %13 = load i8, i8* %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i32
  %14 = add i64 %1, 3
  %tmp2.3 = trunc i64 %14 to i32
  %rem2.3 = srem i32 %tmp2.3, 4
  %idxprom3.3 = sext i32 %rem2.3 to i64
  %arrayidx4.3 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.3
  %15 = load i8, i8* %arrayidx4.3, align 1
  %conv5.3 = zext i8 %15 to i32
  %xor.3 = xor i32 %conv.3, %conv5.3
  %conv6.3 = trunc i32 %xor.3 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.3, i8* %scevgep.3, align 1
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
  %r = alloca [4 x [4 x i8]], align 16
  %a1b = alloca [4 x i8], align 1
  %ab1 = alloca [4 x i8], align 1
  %ab2 = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep161.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep161.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep161.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep161.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep161.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep161.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep157.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep157.1, align 1
  %conv.i.i75.1 = zext i8 %5 to i32
  %conv1.i.i76.1 = zext i8 %4 to i32
  %xor.i.i77.1 = xor i32 %conv1.i.i76.1, %conv.i.i75.1
  %conv2.i.i78.1 = trunc i32 %xor.i.i77.1 to i8
  %scevgep157.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep157.2, align 1
  %conv.i.i75.2 = zext i8 %6 to i32
  %conv1.i.i76.2 = zext i8 %conv2.i.i78.1 to i32
  %xor.i.i77.2 = xor i32 %conv1.i.i76.2, %conv.i.i75.2
  %conv2.i.i78.2 = trunc i32 %xor.i.i77.2 to i8
  %scevgep157.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep157.3, align 1
  %conv.i.i75.3 = zext i8 %7 to i32
  %conv1.i.i76.3 = zext i8 %conv2.i.i78.2 to i32
  %xor.i.i77.3 = xor i32 %conv1.i.i76.3, %conv.i.i75.3
  %conv2.i.i78.3 = trunc i32 %xor.i.i77.3 to i8
  %conv7 = zext i8 %conv2.i.i78.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep153 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep153, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep153.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep153.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep153.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep153.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep153.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep153.3, align 1
  %scevgep150 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  %8 = bitcast i8* %scevgep150 to [4 x [4 x i8]]*
  %call16.1163 = call zeroext i8 (...) @rand()
  %scevgep153.1164 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 0
  store i8 %call16.1163, i8* %scevgep153.1164, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep153.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep153.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep153.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep153.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep153.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep153.3.1, align 1
  %scevgep150.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 1, i64 0
  %9 = bitcast i8* %scevgep150.1 to [4 x [4 x i8]]*
  %call16.2166 = call zeroext i8 (...) @rand()
  %scevgep153.2167 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 0
  store i8 %call16.2166, i8* %scevgep153.2167, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep153.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep153.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep153.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep153.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep153.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep153.3.2, align 1
  %scevgep150.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 1, i64 0
  %10 = bitcast i8* %scevgep150.2 to [4 x [4 x i8]]*
  %call16.3169 = call zeroext i8 (...) @rand()
  %scevgep153.3170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 0
  store i8 %call16.3169, i8* %scevgep153.3170, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep153.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep153.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep153.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep153.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep153.3.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep153.3.3, align 1
  %11 = load i8, i8* %a, align 1
  %12 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep145.1 = getelementptr i8, i8* %a, i64 1
  %13 = load i8, i8* %scevgep145.1, align 1
  %scevgep146.1 = getelementptr i8, i8* %b, i64 1
  %14 = load i8, i8* %scevgep146.1, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  %scevgep147.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep147.1, align 1
  %scevgep145.2 = getelementptr i8, i8* %a, i64 2
  %15 = load i8, i8* %scevgep145.2, align 1
  %scevgep146.2 = getelementptr i8, i8* %b, i64 2
  %16 = load i8, i8* %scevgep146.2, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  %scevgep147.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.i.2, i8* %scevgep147.2, align 1
  %scevgep145.3 = getelementptr i8, i8* %a, i64 3
  %17 = load i8, i8* %scevgep145.3, align 1
  %scevgep146.3 = getelementptr i8, i8* %b, i64 3
  %18 = load i8, i8* %scevgep146.3, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  %scevgep147.3 = getelementptr i8, i8* %c, i64 3
  store i8 %call.i.3, i8* %scevgep147.3, align 1
  %19 = load i8, i8* %a, align 1
  %arrayidx4.i465 = getelementptr inbounds i8, i8* %b, i64 1
  %20 = load i8, i8* %arrayidx4.i465, align 1
  %call.i466 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #2
  %scevgep75 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i466, i8* %scevgep75, align 1
  %scevgep73.1 = getelementptr i8, i8* %a, i64 1
  %21 = load i8, i8* %scevgep73.1, align 1
  %arrayidx4.i465.1 = getelementptr inbounds i8, i8* %b, i64 2
  %22 = load i8, i8* %arrayidx4.i465.1, align 1
  %call.i466.1 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #2
  %scevgep75.1 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i466.1, i8* %scevgep75.1, align 1
  %scevgep73.2 = getelementptr i8, i8* %a, i64 2
  %23 = load i8, i8* %scevgep73.2, align 1
  %arrayidx4.i465.2 = getelementptr inbounds i8, i8* %b, i64 3
  %24 = load i8, i8* %arrayidx4.i465.2, align 1
  %call.i466.2 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %scevgep75.2 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i466.2, i8* %scevgep75.2, align 1
  %scevgep73.3 = getelementptr i8, i8* %a, i64 3
  %25 = load i8, i8* %scevgep73.3, align 1
  %26 = load i8, i8* %b, align 1
  %call.i466.3 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #2
  %scevgep75.3 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 3
  store i8 %call.i466.3, i8* %scevgep75.3, align 1
  %arrayidx.i414 = getelementptr inbounds i8, i8* %a, i64 1
  %27 = load i8, i8* %arrayidx.i414, align 1
  %28 = load i8, i8* %b, align 1
  %call.i419 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %scevgep69 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i419, i8* %scevgep69, align 1
  %arrayidx.i414.1 = getelementptr inbounds i8, i8* %a, i64 2
  %29 = load i8, i8* %arrayidx.i414.1, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %30 = load i8, i8* %scevgep68.1, align 1
  %call.i419.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #2
  %scevgep69.1 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i419.1, i8* %scevgep69.1, align 1
  %arrayidx.i414.2 = getelementptr inbounds i8, i8* %a, i64 3
  %31 = load i8, i8* %arrayidx.i414.2, align 1
  %scevgep68.2 = getelementptr i8, i8* %b, i64 2
  %32 = load i8, i8* %scevgep68.2, align 1
  %call.i419.2 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #2
  %scevgep69.2 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i419.2, i8* %scevgep69.2, align 1
  %33 = load i8, i8* %a, align 1
  %scevgep68.3 = getelementptr i8, i8* %b, i64 3
  %34 = load i8, i8* %scevgep68.3, align 1
  %call.i419.3 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #2
  %scevgep69.3 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 3
  store i8 %call.i419.3, i8* %scevgep69.3, align 1
  %35 = load i8, i8* %a, align 1
  %arrayidx4.i371 = getelementptr inbounds i8, i8* %b, i64 2
  %36 = load i8, i8* %arrayidx4.i371, align 1
  %call.i372 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #2
  %scevgep63 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 0
  store i8 %call.i372, i8* %scevgep63, align 1
  %scevgep61.1 = getelementptr i8, i8* %a, i64 1
  %37 = load i8, i8* %scevgep61.1, align 1
  %arrayidx4.i371.1 = getelementptr inbounds i8, i8* %b, i64 3
  %38 = load i8, i8* %arrayidx4.i371.1, align 1
  %call.i372.1 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #2
  %scevgep63.1 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 1
  store i8 %call.i372.1, i8* %scevgep63.1, align 1
  %scevgep61.2 = getelementptr i8, i8* %a, i64 2
  %39 = load i8, i8* %scevgep61.2, align 1
  %40 = load i8, i8* %b, align 1
  %call.i372.2 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #2
  %scevgep63.2 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 2
  store i8 %call.i372.2, i8* %scevgep63.2, align 1
  %scevgep61.3 = getelementptr i8, i8* %a, i64 3
  %41 = load i8, i8* %scevgep61.3, align 1
  %arrayidx4.i371.3 = getelementptr inbounds i8, i8* %b, i64 1
  %42 = load i8, i8* %arrayidx4.i371.3, align 1
  %call.i372.3 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #2
  %scevgep63.3 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 3
  store i8 %call.i372.3, i8* %scevgep63.3, align 1
  %43 = load i8, i8* %c, align 1
  %conv.i343 = zext i8 %43 to i32
  %scevgep57 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 0
  %44 = load i8, i8* %scevgep57, align 1
  %conv5.i348 = zext i8 %44 to i32
  %xor.i349 = xor i32 %conv.i343, %conv5.i348
  %conv6.i350 = trunc i32 %xor.i349 to i8
  store i8 %conv6.i350, i8* %c, align 1
  %scevgep55.1 = getelementptr i8, i8* %c, i64 1
  %45 = load i8, i8* %scevgep55.1, align 1
  %conv.i343.1 = zext i8 %45 to i32
  %scevgep57.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %46 = load i8, i8* %scevgep57.1, align 1
  %conv5.i348.1 = zext i8 %46 to i32
  %xor.i349.1 = xor i32 %conv.i343.1, %conv5.i348.1
  %conv6.i350.1 = trunc i32 %xor.i349.1 to i8
  %scevgep56.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i350.1, i8* %scevgep56.1, align 1
  %scevgep55.2 = getelementptr i8, i8* %c, i64 2
  %47 = load i8, i8* %scevgep55.2, align 1
  %conv.i343.2 = zext i8 %47 to i32
  %scevgep57.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %48 = load i8, i8* %scevgep57.2, align 1
  %conv5.i348.2 = zext i8 %48 to i32
  %xor.i349.2 = xor i32 %conv.i343.2, %conv5.i348.2
  %conv6.i350.2 = trunc i32 %xor.i349.2 to i8
  %scevgep56.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i350.2, i8* %scevgep56.2, align 1
  %scevgep55.3 = getelementptr i8, i8* %c, i64 3
  %49 = load i8, i8* %scevgep55.3, align 1
  %conv.i343.3 = zext i8 %49 to i32
  %scevgep57.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %50 = load i8, i8* %scevgep57.3, align 1
  %conv5.i348.3 = zext i8 %50 to i32
  %xor.i349.3 = xor i32 %conv.i343.3, %conv5.i348.3
  %conv6.i350.3 = trunc i32 %xor.i349.3 to i8
  %scevgep56.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i350.3, i8* %scevgep56.3, align 1
  %51 = load i8, i8* %c, align 1
  %conv.i318 = zext i8 %51 to i32
  %scevgep51 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 0
  %52 = load i8, i8* %scevgep51, align 1
  %conv5.i323 = zext i8 %52 to i32
  %xor.i324 = xor i32 %conv.i318, %conv5.i323
  %conv6.i325 = trunc i32 %xor.i324 to i8
  store i8 %conv6.i325, i8* %c, align 1
  %scevgep49.1 = getelementptr i8, i8* %c, i64 1
  %53 = load i8, i8* %scevgep49.1, align 1
  %conv.i318.1 = zext i8 %53 to i32
  %scevgep51.1 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 1
  %54 = load i8, i8* %scevgep51.1, align 1
  %conv5.i323.1 = zext i8 %54 to i32
  %xor.i324.1 = xor i32 %conv.i318.1, %conv5.i323.1
  %conv6.i325.1 = trunc i32 %xor.i324.1 to i8
  %scevgep50.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i325.1, i8* %scevgep50.1, align 1
  %scevgep49.2 = getelementptr i8, i8* %c, i64 2
  %55 = load i8, i8* %scevgep49.2, align 1
  %conv.i318.2 = zext i8 %55 to i32
  %scevgep51.2 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 2
  %56 = load i8, i8* %scevgep51.2, align 1
  %conv5.i323.2 = zext i8 %56 to i32
  %xor.i324.2 = xor i32 %conv.i318.2, %conv5.i323.2
  %conv6.i325.2 = trunc i32 %xor.i324.2 to i8
  %scevgep50.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i325.2, i8* %scevgep50.2, align 1
  %scevgep49.3 = getelementptr i8, i8* %c, i64 3
  %57 = load i8, i8* %scevgep49.3, align 1
  %conv.i318.3 = zext i8 %57 to i32
  %scevgep51.3 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 3
  %58 = load i8, i8* %scevgep51.3, align 1
  %conv5.i323.3 = zext i8 %58 to i32
  %xor.i324.3 = xor i32 %conv.i318.3, %conv5.i323.3
  %conv6.i325.3 = trunc i32 %xor.i324.3 to i8
  %scevgep50.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i325.3, i8* %scevgep50.3, align 1
  %59 = load i8, i8* %c, align 1
  %conv.i293 = zext i8 %59 to i32
  %scevgep45 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 0
  %60 = load i8, i8* %scevgep45, align 1
  %conv5.i298 = zext i8 %60 to i32
  %xor.i299 = xor i32 %conv.i293, %conv5.i298
  %conv6.i300 = trunc i32 %xor.i299 to i8
  store i8 %conv6.i300, i8* %c, align 1
  %scevgep43.1 = getelementptr i8, i8* %c, i64 1
  %61 = load i8, i8* %scevgep43.1, align 1
  %conv.i293.1 = zext i8 %61 to i32
  %scevgep45.1 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 1
  %62 = load i8, i8* %scevgep45.1, align 1
  %conv5.i298.1 = zext i8 %62 to i32
  %xor.i299.1 = xor i32 %conv.i293.1, %conv5.i298.1
  %conv6.i300.1 = trunc i32 %xor.i299.1 to i8
  %scevgep44.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i300.1, i8* %scevgep44.1, align 1
  %scevgep43.2 = getelementptr i8, i8* %c, i64 2
  %63 = load i8, i8* %scevgep43.2, align 1
  %conv.i293.2 = zext i8 %63 to i32
  %scevgep45.2 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 2
  %64 = load i8, i8* %scevgep45.2, align 1
  %conv5.i298.2 = zext i8 %64 to i32
  %xor.i299.2 = xor i32 %conv.i293.2, %conv5.i298.2
  %conv6.i300.2 = trunc i32 %xor.i299.2 to i8
  %scevgep44.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i300.2, i8* %scevgep44.2, align 1
  %scevgep43.3 = getelementptr i8, i8* %c, i64 3
  %65 = load i8, i8* %scevgep43.3, align 1
  %conv.i293.3 = zext i8 %65 to i32
  %scevgep45.3 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 3
  %66 = load i8, i8* %scevgep45.3, align 1
  %conv5.i298.3 = zext i8 %66 to i32
  %xor.i299.3 = xor i32 %conv.i293.3, %conv5.i298.3
  %conv6.i300.3 = trunc i32 %xor.i299.3 to i8
  %scevgep44.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i300.3, i8* %scevgep44.3, align 1
  %arrayidx56 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0
  %arraydecay57 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx56, i64 0, i64 0
  %67 = load i8, i8* %c, align 1
  %conv.i268 = zext i8 %67 to i32
  %arrayidx4.i272 = getelementptr inbounds i8, i8* %arraydecay57, i64 1
  %68 = load i8, i8* %arrayidx4.i272, align 1
  %conv5.i273 = zext i8 %68 to i32
  %xor.i274 = xor i32 %conv.i268, %conv5.i273
  %conv6.i275 = trunc i32 %xor.i274 to i8
  store i8 %conv6.i275, i8* %c, align 1
  %scevgep37.1 = getelementptr i8, i8* %c, i64 1
  %69 = load i8, i8* %scevgep37.1, align 1
  %conv.i268.1 = zext i8 %69 to i32
  %arrayidx4.i272.1 = getelementptr inbounds i8, i8* %arraydecay57, i64 2
  %70 = load i8, i8* %arrayidx4.i272.1, align 1
  %conv5.i273.1 = zext i8 %70 to i32
  %xor.i274.1 = xor i32 %conv.i268.1, %conv5.i273.1
  %conv6.i275.1 = trunc i32 %xor.i274.1 to i8
  %scevgep38.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i275.1, i8* %scevgep38.1, align 1
  %scevgep37.2 = getelementptr i8, i8* %c, i64 2
  %71 = load i8, i8* %scevgep37.2, align 1
  %conv.i268.2 = zext i8 %71 to i32
  %arrayidx4.i272.2 = getelementptr inbounds i8, i8* %arraydecay57, i64 3
  %72 = load i8, i8* %arrayidx4.i272.2, align 1
  %conv5.i273.2 = zext i8 %72 to i32
  %xor.i274.2 = xor i32 %conv.i268.2, %conv5.i273.2
  %conv6.i275.2 = trunc i32 %xor.i274.2 to i8
  %scevgep38.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i275.2, i8* %scevgep38.2, align 1
  %scevgep37.3 = getelementptr i8, i8* %c, i64 3
  %73 = load i8, i8* %scevgep37.3, align 1
  %conv.i268.3 = zext i8 %73 to i32
  %74 = load i8, i8* %arraydecay57, align 1
  %conv5.i273.3 = zext i8 %74 to i32
  %xor.i274.3 = xor i32 %conv.i268.3, %conv5.i273.3
  %conv6.i275.3 = trunc i32 %xor.i274.3 to i8
  %scevgep38.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i275.3, i8* %scevgep38.3, align 1
  %75 = load i8, i8* %c, align 1
  %conv.i243 = zext i8 %75 to i32
  %scevgep33 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 0
  %76 = load i8, i8* %scevgep33, align 1
  %conv5.i248 = zext i8 %76 to i32
  %xor.i249 = xor i32 %conv.i243, %conv5.i248
  %conv6.i250 = trunc i32 %xor.i249 to i8
  store i8 %conv6.i250, i8* %c, align 1
  %scevgep31.1 = getelementptr i8, i8* %c, i64 1
  %77 = load i8, i8* %scevgep31.1, align 1
  %conv.i243.1 = zext i8 %77 to i32
  %scevgep33.1 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 1
  %78 = load i8, i8* %scevgep33.1, align 1
  %conv5.i248.1 = zext i8 %78 to i32
  %xor.i249.1 = xor i32 %conv.i243.1, %conv5.i248.1
  %conv6.i250.1 = trunc i32 %xor.i249.1 to i8
  %scevgep32.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i250.1, i8* %scevgep32.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %c, i64 2
  %79 = load i8, i8* %scevgep31.2, align 1
  %conv.i243.2 = zext i8 %79 to i32
  %scevgep33.2 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 2
  %80 = load i8, i8* %scevgep33.2, align 1
  %conv5.i248.2 = zext i8 %80 to i32
  %xor.i249.2 = xor i32 %conv.i243.2, %conv5.i248.2
  %conv6.i250.2 = trunc i32 %xor.i249.2 to i8
  %scevgep32.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i250.2, i8* %scevgep32.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %c, i64 3
  %81 = load i8, i8* %scevgep31.3, align 1
  %conv.i243.3 = zext i8 %81 to i32
  %scevgep33.3 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 3
  %82 = load i8, i8* %scevgep33.3, align 1
  %conv5.i248.3 = zext i8 %82 to i32
  %xor.i249.3 = xor i32 %conv.i243.3, %conv5.i248.3
  %conv6.i250.3 = trunc i32 %xor.i249.3 to i8
  %scevgep32.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i250.3, i8* %scevgep32.3, align 1
  %call59 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv60 = zext i8 %call59 to i32
  %83 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %84 = load i8, i8* %scevgep.1, align 1
  %conv.i.i199.1 = zext i8 %84 to i32
  %conv1.i.i200.1 = zext i8 %83 to i32
  %xor.i.i201.1 = xor i32 %conv1.i.i200.1, %conv.i.i199.1
  %conv2.i.i202.1 = trunc i32 %xor.i.i201.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %85 = load i8, i8* %scevgep.2, align 1
  %conv.i.i199.2 = zext i8 %85 to i32
  %conv1.i.i200.2 = zext i8 %conv2.i.i202.1 to i32
  %xor.i.i201.2 = xor i32 %conv1.i.i200.2, %conv.i.i199.2
  %conv2.i.i202.2 = trunc i32 %xor.i.i201.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %86 = load i8, i8* %scevgep.3, align 1
  %conv.i.i199.3 = zext i8 %86 to i32
  %conv1.i.i200.3 = zext i8 %conv2.i.i202.2 to i32
  %xor.i.i201.3 = xor i32 %conv1.i.i200.3, %conv.i.i199.3
  %conv2.i.i202.3 = trunc i32 %xor.i.i201.3 to i8
  %conv62 = zext i8 %conv2.i.i202.3 to i32
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
