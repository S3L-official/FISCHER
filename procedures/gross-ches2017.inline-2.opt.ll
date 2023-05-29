; ModuleID = '../examples/gross-ches2017.inline-2.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  ret i8 %conv2.2
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
  ret i8 %conv2.i.2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 3
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 3
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 3
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 3
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  %8 = add i64 %0, 2
  %tmp.2 = trunc i64 %8 to i32
  %rem.2 = srem i32 %tmp.2, 3
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 3
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %call.2 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %11)
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.2, i8* %scevgep.2, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 3
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 3
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 3
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 3
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
  %rem.2 = srem i32 %tmp.2, 3
  %idxprom.2 = sext i32 %rem.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %idxprom.2
  %9 = load i8, i8* %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %10 = add i64 %1, 2
  %tmp2.2 = trunc i64 %10 to i32
  %rem2.2 = srem i32 %tmp2.2, 3
  %idxprom3.2 = sext i32 %rem2.2 to i64
  %arrayidx4.2 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.2
  %11 = load i8, i8* %arrayidx4.2, align 1
  %conv5.2 = zext i8 %11 to i32
  %xor.2 = xor i32 %conv.2, %conv5.2
  %conv6.2 = trunc i32 %xor.2 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.2, i8* %scevgep.2, align 1
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
  %r = alloca [3 x [3 x i8]], align 1
  %a1b = alloca [3 x i8], align 1
  %ab1 = alloca [3 x i8], align 1
  %z = alloca [3 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep197.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep197.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep197.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep197.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep193.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep193.1, align 1
  %conv.i.i84.1 = zext i8 %4 to i32
  %conv1.i.i85.1 = zext i8 %3 to i32
  %xor.i.i86.1 = xor i32 %conv1.i.i85.1, %conv.i.i84.1
  %conv2.i.i87.1 = trunc i32 %xor.i.i86.1 to i8
  %scevgep193.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep193.2, align 1
  %conv.i.i84.2 = zext i8 %5 to i32
  %conv1.i.i85.2 = zext i8 %conv2.i.i87.1 to i32
  %xor.i.i86.2 = xor i32 %conv1.i.i85.2, %conv.i.i84.2
  %conv2.i.i87.2 = trunc i32 %xor.i.i86.2 to i8
  %conv7 = zext i8 %conv2.i.i87.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep189 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep189, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep189.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep189.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep189.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep189.2, align 1
  %scevgep186 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %6 = bitcast i8* %scevgep186 to [3 x [3 x i8]]*
  %call16.1199 = call zeroext i8 (...) @rand()
  %scevgep189.1200 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 0, i64 0
  store i8 %call16.1199, i8* %scevgep189.1200, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep189.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep189.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep189.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep189.2.1, align 1
  %scevgep186.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 1, i64 0
  %7 = bitcast i8* %scevgep186.1 to [3 x [3 x i8]]*
  %call16.2202 = call zeroext i8 (...) @rand()
  %scevgep189.2203 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0, i64 0
  store i8 %call16.2202, i8* %scevgep189.2203, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep189.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep189.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep189.2.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep189.2.2, align 1
  %8 = load i8, i8* %a, align 1
  %9 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep176 = getelementptr i8, i8* %a, i64 1
  %scevgep181 = getelementptr i8, i8* %b, i64 1
  %10 = load i8, i8* %scevgep176, align 1
  %11 = load i8, i8* %scevgep181, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11) #2
  %scevgep183.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep183.1, align 1
  %scevgep176.1 = getelementptr i8, i8* %scevgep176, i64 1
  %scevgep181.1 = getelementptr i8, i8* %scevgep181, i64 1
  %12 = load i8, i8* %scevgep176.1, align 1
  %13 = load i8, i8* %scevgep181.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13) #2
  %scevgep183.2 = getelementptr i8, i8* %c, i64 2
  store i8 %call.i.2, i8* %scevgep183.2, align 1
  %arrayidx49 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx50 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx49, i64 0, i64 0
  %14 = load i8, i8* %arrayidx50, align 1
  %arrayidx51 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  store i8 %14, i8* %arrayidx51, align 1
  %arrayidx52 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx53 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52, i64 0, i64 1
  %15 = load i8, i8* %arrayidx53, align 1
  %arrayidx54 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 1
  store i8 %15, i8* %arrayidx54, align 1
  %arrayidx55 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx56 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx55, i64 0, i64 0
  %16 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %16 to i32
  %arrayidx58 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx59 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx58, i64 0, i64 1
  %17 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %17 to i32
  %xor = xor i32 %conv57, %conv60
  %conv61 = trunc i32 %xor to i8
  %arrayidx62 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 2
  store i8 %conv61, i8* %arrayidx62, align 1
  %18 = load i8, i8* %a, align 1
  %arrayidx4.i377 = getelementptr inbounds i8, i8* %b, i64 1
  %19 = load i8, i8* %arrayidx4.i377, align 1
  %call.i378 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #2
  %scevgep72 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i378, i8* %scevgep72, align 1
  %scevgep66 = getelementptr i8, i8* %a, i64 1
  %20 = load i8, i8* %scevgep66, align 1
  %arrayidx4.i377.1 = getelementptr inbounds i8, i8* %b, i64 2
  %21 = load i8, i8* %arrayidx4.i377.1, align 1
  %call.i378.1 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21) #2
  %scevgep72.1 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i378.1, i8* %scevgep72.1, align 1
  %scevgep66.1 = getelementptr i8, i8* %scevgep66, i64 1
  %22 = load i8, i8* %scevgep66.1, align 1
  %23 = load i8, i8* %b, align 1
  %call.i378.2 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #2
  %scevgep72.2 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 2
  store i8 %call.i378.2, i8* %scevgep72.2, align 1
  %arrayidx.i326 = getelementptr inbounds i8, i8* %a, i64 1
  %24 = load i8, i8* %arrayidx.i326, align 1
  %25 = load i8, i8* %b, align 1
  %call.i331 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #2
  %scevgep63 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 0
  store i8 %call.i331, i8* %scevgep63, align 1
  %scevgep59 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i326.1 = getelementptr inbounds i8, i8* %a, i64 2
  %26 = load i8, i8* %arrayidx.i326.1, align 1
  %27 = load i8, i8* %scevgep59, align 1
  %call.i331.1 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #2
  %scevgep63.1 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 1
  store i8 %call.i331.1, i8* %scevgep63.1, align 1
  %scevgep59.1 = getelementptr i8, i8* %scevgep59, i64 1
  %28 = load i8, i8* %a, align 1
  %29 = load i8, i8* %scevgep59.1, align 1
  %call.i331.2 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #2
  %scevgep63.2 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 2
  store i8 %call.i331.2, i8* %scevgep63.2, align 1
  %scevgep53 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %30 = load i8, i8* %c, align 1
  %conv.i302 = zext i8 %30 to i32
  %31 = load i8, i8* %scevgep53, align 1
  %conv5.i307 = zext i8 %31 to i32
  %xor.i308 = xor i32 %conv.i302, %conv5.i307
  %conv6.i309 = trunc i32 %xor.i308 to i8
  store i8 %conv6.i309, i8* %c, align 1
  %scevgep47 = getelementptr i8, i8* %c, i64 1
  %scevgep52 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %32 = bitcast i8* %scevgep52 to [3 x i8]*
  %scevgep53.1 = getelementptr [3 x i8], [3 x i8]* %32, i64 0, i64 0
  %33 = load i8, i8* %scevgep47, align 1
  %conv.i302.1 = zext i8 %33 to i32
  %34 = load i8, i8* %scevgep53.1, align 1
  %conv5.i307.1 = zext i8 %34 to i32
  %xor.i308.1 = xor i32 %conv.i302.1, %conv5.i307.1
  %conv6.i309.1 = trunc i32 %xor.i308.1 to i8
  %scevgep54.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i309.1, i8* %scevgep54.1, align 1
  %scevgep47.1 = getelementptr i8, i8* %scevgep47, i64 1
  %scevgep52.1 = getelementptr [3 x i8], [3 x i8]* %32, i64 0, i64 1
  %35 = bitcast i8* %scevgep52.1 to [3 x i8]*
  %scevgep53.2 = getelementptr [3 x i8], [3 x i8]* %35, i64 0, i64 0
  %36 = load i8, i8* %scevgep47.1, align 1
  %conv.i302.2 = zext i8 %36 to i32
  %37 = load i8, i8* %scevgep53.2, align 1
  %conv5.i307.2 = zext i8 %37 to i32
  %xor.i308.2 = xor i32 %conv.i302.2, %conv5.i307.2
  %conv6.i309.2 = trunc i32 %xor.i308.2 to i8
  %scevgep54.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i309.2, i8* %scevgep54.2, align 1
  %scevgep43 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 0
  %38 = load i8, i8* %c, align 1
  %conv.i277 = zext i8 %38 to i32
  %39 = load i8, i8* %scevgep43, align 1
  %conv5.i282 = zext i8 %39 to i32
  %xor.i283 = xor i32 %conv.i277, %conv5.i282
  %conv6.i284 = trunc i32 %xor.i283 to i8
  store i8 %conv6.i284, i8* %c, align 1
  %scevgep37 = getelementptr i8, i8* %c, i64 1
  %scevgep42 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 1
  %40 = bitcast i8* %scevgep42 to [3 x i8]*
  %scevgep43.1 = getelementptr [3 x i8], [3 x i8]* %40, i64 0, i64 0
  %41 = load i8, i8* %scevgep37, align 1
  %conv.i277.1 = zext i8 %41 to i32
  %42 = load i8, i8* %scevgep43.1, align 1
  %conv5.i282.1 = zext i8 %42 to i32
  %xor.i283.1 = xor i32 %conv.i277.1, %conv5.i282.1
  %conv6.i284.1 = trunc i32 %xor.i283.1 to i8
  %scevgep44.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i284.1, i8* %scevgep44.1, align 1
  %scevgep37.1 = getelementptr i8, i8* %scevgep37, i64 1
  %scevgep42.1 = getelementptr [3 x i8], [3 x i8]* %40, i64 0, i64 1
  %43 = bitcast i8* %scevgep42.1 to [3 x i8]*
  %scevgep43.2 = getelementptr [3 x i8], [3 x i8]* %43, i64 0, i64 0
  %44 = load i8, i8* %scevgep37.1, align 1
  %conv.i277.2 = zext i8 %44 to i32
  %45 = load i8, i8* %scevgep43.2, align 1
  %conv5.i282.2 = zext i8 %45 to i32
  %xor.i283.2 = xor i32 %conv.i277.2, %conv5.i282.2
  %conv6.i284.2 = trunc i32 %xor.i283.2 to i8
  %scevgep44.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i284.2, i8* %scevgep44.2, align 1
  %scevgep33 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 0
  %46 = load i8, i8* %c, align 1
  %conv.i252 = zext i8 %46 to i32
  %47 = load i8, i8* %scevgep33, align 1
  %conv5.i257 = zext i8 %47 to i32
  %xor.i258 = xor i32 %conv.i252, %conv5.i257
  %conv6.i259 = trunc i32 %xor.i258 to i8
  store i8 %conv6.i259, i8* %c, align 1
  %scevgep27 = getelementptr i8, i8* %c, i64 1
  %scevgep32 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 1
  %48 = bitcast i8* %scevgep32 to [3 x i8]*
  %scevgep33.1 = getelementptr [3 x i8], [3 x i8]* %48, i64 0, i64 0
  %49 = load i8, i8* %scevgep27, align 1
  %conv.i252.1 = zext i8 %49 to i32
  %50 = load i8, i8* %scevgep33.1, align 1
  %conv5.i257.1 = zext i8 %50 to i32
  %xor.i258.1 = xor i32 %conv.i252.1, %conv5.i257.1
  %conv6.i259.1 = trunc i32 %xor.i258.1 to i8
  %scevgep34.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i259.1, i8* %scevgep34.1, align 1
  %scevgep27.1 = getelementptr i8, i8* %scevgep27, i64 1
  %scevgep32.1 = getelementptr [3 x i8], [3 x i8]* %48, i64 0, i64 1
  %51 = bitcast i8* %scevgep32.1 to [3 x i8]*
  %scevgep33.2 = getelementptr [3 x i8], [3 x i8]* %51, i64 0, i64 0
  %52 = load i8, i8* %scevgep27.1, align 1
  %conv.i252.2 = zext i8 %52 to i32
  %53 = load i8, i8* %scevgep33.2, align 1
  %conv5.i257.2 = zext i8 %53 to i32
  %xor.i258.2 = xor i32 %conv.i252.2, %conv5.i257.2
  %conv6.i259.2 = trunc i32 %xor.i258.2 to i8
  %scevgep34.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i259.2, i8* %scevgep34.2, align 1
  %call68 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv69 = zext i8 %call68 to i32
  %54 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %55 = load i8, i8* %scevgep.1, align 1
  %conv.i.i208.1 = zext i8 %55 to i32
  %conv1.i.i209.1 = zext i8 %54 to i32
  %xor.i.i210.1 = xor i32 %conv1.i.i209.1, %conv.i.i208.1
  %conv2.i.i211.1 = trunc i32 %xor.i.i210.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %56 = load i8, i8* %scevgep.2, align 1
  %conv.i.i208.2 = zext i8 %56 to i32
  %conv1.i.i209.2 = zext i8 %conv2.i.i211.1 to i32
  %xor.i.i210.2 = xor i32 %conv1.i.i209.2, %conv.i.i208.2
  %conv2.i.i211.2 = trunc i32 %xor.i.i210.2 to i8
  %conv71 = zext i8 %conv2.i.i211.2 to i32
  %cmp72 = icmp eq i32 %conv69, %conv71
  call void @assert(i1 zeroext %cmp72)
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
