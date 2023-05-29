; ModuleID = '../examples/barthe-eurocrypto2017.inline-3.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %cc = alloca [8 x [4 x i8]], align 16
  %dd = alloca [8 x [4 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep127.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep127.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep127.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep127.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep127.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep127.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep123.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep123.1, align 1
  %conv.i.i116.1 = zext i8 %5 to i32
  %conv1.i.i117.1 = zext i8 %4 to i32
  %xor.i.i118.1 = xor i32 %conv1.i.i117.1, %conv.i.i116.1
  %conv2.i.i119.1 = trunc i32 %xor.i.i118.1 to i8
  %scevgep123.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep123.2, align 1
  %conv.i.i116.2 = zext i8 %6 to i32
  %conv1.i.i117.2 = zext i8 %conv2.i.i119.1 to i32
  %xor.i.i118.2 = xor i32 %conv1.i.i117.2, %conv.i.i116.2
  %conv2.i.i119.2 = trunc i32 %xor.i.i118.2 to i8
  %scevgep123.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep123.3, align 1
  %conv.i.i116.3 = zext i8 %7 to i32
  %conv1.i.i117.3 = zext i8 %conv2.i.i119.2 to i32
  %xor.i.i118.3 = xor i32 %conv1.i.i117.3, %conv.i.i116.3
  %conv2.i.i119.3 = trunc i32 %xor.i.i118.3 to i8
  %conv7 = zext i8 %conv2.i.i119.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep119 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep119, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep119.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep119.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep119.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep119.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep119.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep119.3, align 1
  %scevgep116 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  %8 = bitcast i8* %scevgep116 to [4 x [4 x i8]]*
  %call16.1129 = call zeroext i8 (...) @rand()
  %scevgep119.1130 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 0
  store i8 %call16.1129, i8* %scevgep119.1130, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep119.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep119.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep119.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep119.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep119.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep119.3.1, align 1
  %scevgep116.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %8, i64 0, i64 1, i64 0
  %9 = bitcast i8* %scevgep116.1 to [4 x [4 x i8]]*
  %call16.2132 = call zeroext i8 (...) @rand()
  %scevgep119.2133 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 0
  store i8 %call16.2132, i8* %scevgep119.2133, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep119.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep119.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep119.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep119.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep119.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep119.3.2, align 1
  %scevgep116.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %9, i64 0, i64 1, i64 0
  %10 = bitcast i8* %scevgep116.2 to [4 x [4 x i8]]*
  %call16.3135 = call zeroext i8 (...) @rand()
  %scevgep119.3136 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 0
  store i8 %call16.3135, i8* %scevgep119.3136, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep119.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep119.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep119.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep119.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep119.3.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %10, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep119.3.3, align 1
  %scevgep112 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 1, i64 0
  %11 = load i8, i8* %a, align 1
  %12 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #2
  store i8 %call.i, i8* %scevgep112, align 1
  %scevgep110.1 = getelementptr i8, i8* %a, i64 1
  %13 = load i8, i8* %scevgep110.1, align 1
  %scevgep111.1 = getelementptr i8, i8* %b, i64 1
  %14 = load i8, i8* %scevgep111.1, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  %scevgep113.1 = getelementptr i8, i8* %scevgep112, i64 1
  store i8 %call.i.1, i8* %scevgep113.1, align 1
  %scevgep110.2 = getelementptr i8, i8* %a, i64 2
  %15 = load i8, i8* %scevgep110.2, align 1
  %scevgep111.2 = getelementptr i8, i8* %b, i64 2
  %16 = load i8, i8* %scevgep111.2, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  %scevgep113.2 = getelementptr i8, i8* %scevgep112, i64 2
  store i8 %call.i.2, i8* %scevgep113.2, align 1
  %scevgep110.3 = getelementptr i8, i8* %a, i64 3
  %17 = load i8, i8* %scevgep110.3, align 1
  %scevgep111.3 = getelementptr i8, i8* %b, i64 3
  %18 = load i8, i8* %scevgep111.3, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  %scevgep113.3 = getelementptr i8, i8* %scevgep112, i64 3
  store i8 %call.i.3, i8* %scevgep113.3, align 1
  %scevgep90 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep9091 = bitcast i8* %scevgep90 to [8 x [4 x i8]]*
  %scevgep100 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep100101 = bitcast i8* %scevgep100 to [8 x [4 x i8]]*
  %19 = load i8, i8* %a, align 1
  %arrayidx4.i139 = getelementptr inbounds i8, i8* %b, i64 1
  %20 = load i8, i8* %arrayidx4.i139, align 1
  %call.i140 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #2
  %scevgep94 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep9091, i64 0, i64 0, i64 0
  store i8 %call.i140, i8* %scevgep94, align 1
  %scevgep86.1 = getelementptr i8, i8* %a, i64 1
  %21 = load i8, i8* %scevgep86.1, align 1
  %arrayidx4.i139.1 = getelementptr inbounds i8, i8* %b, i64 2
  %22 = load i8, i8* %arrayidx4.i139.1, align 1
  %call.i140.1 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #2
  %scevgep94.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep9091, i64 0, i64 0, i64 1
  store i8 %call.i140.1, i8* %scevgep94.1, align 1
  %scevgep86.2 = getelementptr i8, i8* %a, i64 2
  %23 = load i8, i8* %scevgep86.2, align 1
  %arrayidx4.i139.2 = getelementptr inbounds i8, i8* %b, i64 3
  %24 = load i8, i8* %arrayidx4.i139.2, align 1
  %call.i140.2 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %scevgep94.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep9091, i64 0, i64 0, i64 2
  store i8 %call.i140.2, i8* %scevgep94.2, align 1
  %scevgep86.3 = getelementptr i8, i8* %a, i64 3
  %25 = load i8, i8* %scevgep86.3, align 1
  %26 = load i8, i8* %b, align 1
  %call.i140.3 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #2
  %scevgep94.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep9091, i64 0, i64 0, i64 3
  store i8 %call.i140.3, i8* %scevgep94.3, align 1
  %arrayidx.i157 = getelementptr inbounds i8, i8* %a, i64 1
  %27 = load i8, i8* %arrayidx.i157, align 1
  %28 = load i8, i8* %b, align 1
  %call.i162 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %scevgep104 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep100101, i64 0, i64 0, i64 0
  store i8 %call.i162, i8* %scevgep104, align 1
  %arrayidx.i157.1 = getelementptr inbounds i8, i8* %a, i64 2
  %29 = load i8, i8* %arrayidx.i157.1, align 1
  %scevgep99.1 = getelementptr i8, i8* %b, i64 1
  %30 = load i8, i8* %scevgep99.1, align 1
  %call.i162.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #2
  %scevgep104.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep100101, i64 0, i64 0, i64 1
  store i8 %call.i162.1, i8* %scevgep104.1, align 1
  %arrayidx.i157.2 = getelementptr inbounds i8, i8* %a, i64 3
  %31 = load i8, i8* %arrayidx.i157.2, align 1
  %scevgep99.2 = getelementptr i8, i8* %b, i64 2
  %32 = load i8, i8* %scevgep99.2, align 1
  %call.i162.2 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #2
  %scevgep104.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep100101, i64 0, i64 0, i64 2
  store i8 %call.i162.2, i8* %scevgep104.2, align 1
  %33 = load i8, i8* %a, align 1
  %scevgep99.3 = getelementptr i8, i8* %b, i64 3
  %34 = load i8, i8* %scevgep99.3, align 1
  %call.i162.3 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #2
  %scevgep104.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep100101, i64 0, i64 0, i64 3
  store i8 %call.i162.3, i8* %scevgep104.3, align 1
  %scevgep81 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 4, i64 0
  %35 = load i8, i8* %a, align 1
  %arrayidx4.i183 = getelementptr inbounds i8, i8* %b, i64 2
  %36 = load i8, i8* %arrayidx4.i183, align 1
  %call.i184 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #2
  store i8 %call.i184, i8* %scevgep81, align 1
  %scevgep79.1 = getelementptr i8, i8* %a, i64 1
  %37 = load i8, i8* %scevgep79.1, align 1
  %arrayidx4.i183.1 = getelementptr inbounds i8, i8* %b, i64 3
  %38 = load i8, i8* %arrayidx4.i183.1, align 1
  %call.i184.1 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #2
  %scevgep82.1 = getelementptr i8, i8* %scevgep81, i64 1
  store i8 %call.i184.1, i8* %scevgep82.1, align 1
  %scevgep79.2 = getelementptr i8, i8* %a, i64 2
  %39 = load i8, i8* %scevgep79.2, align 1
  %40 = load i8, i8* %b, align 1
  %call.i184.2 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #2
  %scevgep82.2 = getelementptr i8, i8* %scevgep81, i64 2
  store i8 %call.i184.2, i8* %scevgep82.2, align 1
  %scevgep79.3 = getelementptr i8, i8* %a, i64 3
  %41 = load i8, i8* %scevgep79.3, align 1
  %arrayidx4.i183.3 = getelementptr inbounds i8, i8* %b, i64 1
  %42 = load i8, i8* %arrayidx4.i183.3, align 1
  %call.i184.3 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #2
  %scevgep82.3 = getelementptr i8, i8* %scevgep81, i64 3
  store i8 %call.i184.3, i8* %scevgep82.3, align 1
  %scevgep68 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 1, i64 0
  %scevgep72 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep74 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 1, i64 0
  %43 = load i8, i8* %scevgep68, align 1
  %conv.i = zext i8 %43 to i32
  %44 = load i8, i8* %scevgep72, align 1
  %conv5.i = zext i8 %44 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %scevgep74, align 1
  %scevgep71.1 = getelementptr i8, i8* %scevgep68, i64 1
  %45 = load i8, i8* %scevgep71.1, align 1
  %conv.i.1 = zext i8 %45 to i32
  %scevgep73.1 = getelementptr i8, i8* %scevgep72, i64 1
  %46 = load i8, i8* %scevgep73.1, align 1
  %conv5.i.1 = zext i8 %46 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep75.1 = getelementptr i8, i8* %scevgep74, i64 1
  store i8 %conv6.i.1, i8* %scevgep75.1, align 1
  %scevgep71.2 = getelementptr i8, i8* %scevgep68, i64 2
  %47 = load i8, i8* %scevgep71.2, align 1
  %conv.i.2 = zext i8 %47 to i32
  %scevgep73.2 = getelementptr i8, i8* %scevgep72, i64 2
  %48 = load i8, i8* %scevgep73.2, align 1
  %conv5.i.2 = zext i8 %48 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep75.2 = getelementptr i8, i8* %scevgep74, i64 2
  store i8 %conv6.i.2, i8* %scevgep75.2, align 1
  %scevgep71.3 = getelementptr i8, i8* %scevgep68, i64 3
  %49 = load i8, i8* %scevgep71.3, align 1
  %conv.i.3 = zext i8 %49 to i32
  %scevgep73.3 = getelementptr i8, i8* %scevgep72, i64 3
  %50 = load i8, i8* %scevgep73.3, align 1
  %conv5.i.3 = zext i8 %50 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep75.3 = getelementptr i8, i8* %scevgep74, i64 3
  store i8 %conv6.i.3, i8* %scevgep75.3, align 1
  %scevgep28 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 2, i64 0
  %scevgep2829 = bitcast i8* %scevgep28 to [8 x [4 x i8]]*
  %scevgep37 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep3738 = bitcast i8* %scevgep37 to [8 x [4 x i8]]*
  %scevgep48 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep4849 = bitcast i8* %scevgep48 to [8 x [4 x i8]]*
  %scevgep54 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep5455 = bitcast i8* %scevgep54 to [8 x [4 x i8]]*
  %scevgep34 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 0
  %scevgep35 = getelementptr i8, i8* %scevgep34, i64 -4
  %51 = load i8, i8* %scevgep35, align 1
  %conv.i237 = zext i8 %51 to i32
  %scevgep41 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep3738, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep41, align 1
  %conv5.i242 = zext i8 %52 to i32
  %xor.i243 = xor i32 %conv.i237, %conv5.i242
  %conv6.i244 = trunc i32 %xor.i243 to i8
  %scevgep36 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 0
  store i8 %conv6.i244, i8* %scevgep36, align 1
  %scevgep34.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 1
  %scevgep35.1 = getelementptr i8, i8* %scevgep34.1, i64 -4
  %53 = load i8, i8* %scevgep35.1, align 1
  %conv.i237.1 = zext i8 %53 to i32
  %scevgep41.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep3738, i64 0, i64 0, i64 1
  %54 = load i8, i8* %scevgep41.1, align 1
  %conv5.i242.1 = zext i8 %54 to i32
  %xor.i243.1 = xor i32 %conv.i237.1, %conv5.i242.1
  %conv6.i244.1 = trunc i32 %xor.i243.1 to i8
  %scevgep36.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 1
  store i8 %conv6.i244.1, i8* %scevgep36.1, align 1
  %scevgep34.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 2
  %scevgep35.2 = getelementptr i8, i8* %scevgep34.2, i64 -4
  %55 = load i8, i8* %scevgep35.2, align 1
  %conv.i237.2 = zext i8 %55 to i32
  %scevgep41.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep3738, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep41.2, align 1
  %conv5.i242.2 = zext i8 %56 to i32
  %xor.i243.2 = xor i32 %conv.i237.2, %conv5.i242.2
  %conv6.i244.2 = trunc i32 %xor.i243.2 to i8
  %scevgep36.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 2
  store i8 %conv6.i244.2, i8* %scevgep36.2, align 1
  %scevgep34.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 3
  %scevgep35.3 = getelementptr i8, i8* %scevgep34.3, i64 -4
  %57 = load i8, i8* %scevgep35.3, align 1
  %conv.i237.3 = zext i8 %57 to i32
  %scevgep41.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep3738, i64 0, i64 0, i64 3
  %58 = load i8, i8* %scevgep41.3, align 1
  %conv5.i242.3 = zext i8 %58 to i32
  %xor.i243.3 = xor i32 %conv.i237.3, %conv5.i242.3
  %conv6.i244.3 = trunc i32 %xor.i243.3 to i8
  %scevgep36.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 3
  store i8 %conv6.i244.3, i8* %scevgep36.3, align 1
  %scevgep45 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 0
  %59 = load i8, i8* %scevgep45, align 1
  %conv.i315 = zext i8 %59 to i32
  %scevgep52 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep4849, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep52, align 1
  %conv5.i320 = zext i8 %60 to i32
  %xor.i321 = xor i32 %conv.i315, %conv5.i320
  %conv6.i322 = trunc i32 %xor.i321 to i8
  %scevgep46 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 0
  %scevgep47 = getelementptr i8, i8* %scevgep46, i64 4
  store i8 %conv6.i322, i8* %scevgep47, align 1
  %scevgep45.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 1
  %61 = load i8, i8* %scevgep45.1, align 1
  %conv.i315.1 = zext i8 %61 to i32
  %scevgep52.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %62 = load i8, i8* %scevgep52.1, align 1
  %conv5.i320.1 = zext i8 %62 to i32
  %xor.i321.1 = xor i32 %conv.i315.1, %conv5.i320.1
  %conv6.i322.1 = trunc i32 %xor.i321.1 to i8
  %scevgep46.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 1
  %scevgep47.1 = getelementptr i8, i8* %scevgep46.1, i64 4
  store i8 %conv6.i322.1, i8* %scevgep47.1, align 1
  %scevgep45.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 2
  %63 = load i8, i8* %scevgep45.2, align 1
  %conv.i315.2 = zext i8 %63 to i32
  %scevgep52.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep4849, i64 0, i64 0, i64 2
  %64 = load i8, i8* %scevgep52.2, align 1
  %conv5.i320.2 = zext i8 %64 to i32
  %xor.i321.2 = xor i32 %conv.i315.2, %conv5.i320.2
  %conv6.i322.2 = trunc i32 %xor.i321.2 to i8
  %scevgep46.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 2
  %scevgep47.2 = getelementptr i8, i8* %scevgep46.2, i64 4
  store i8 %conv6.i322.2, i8* %scevgep47.2, align 1
  %scevgep45.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 3
  %65 = load i8, i8* %scevgep45.3, align 1
  %conv.i315.3 = zext i8 %65 to i32
  %scevgep52.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep4849, i64 0, i64 0, i64 3
  %66 = load i8, i8* %scevgep52.3, align 1
  %conv5.i320.3 = zext i8 %66 to i32
  %xor.i321.3 = xor i32 %conv.i315.3, %conv5.i320.3
  %conv6.i322.3 = trunc i32 %xor.i321.3 to i8
  %scevgep46.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep2829, i64 0, i64 0, i64 3
  %scevgep47.3 = getelementptr i8, i8* %scevgep46.3, i64 4
  store i8 %conv6.i322.3, i8* %scevgep47.3, align 1
  %arrayidx86 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1
  %arraydecay87 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx86, i64 0, i64 0
  %scevgep60 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 0
  %scevgep61 = getelementptr i8, i8* %scevgep60, i64 -4
  %67 = load i8, i8* %scevgep61, align 1
  %conv.i287 = zext i8 %67 to i32
  %arrayidx4.i291 = getelementptr inbounds i8, i8* %arraydecay87, i64 1
  %68 = load i8, i8* %arrayidx4.i291, align 1
  %conv5.i292 = zext i8 %68 to i32
  %xor.i293 = xor i32 %conv.i287, %conv5.i292
  %conv6.i294 = trunc i32 %xor.i293 to i8
  %scevgep62 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 0
  store i8 %conv6.i294, i8* %scevgep62, align 1
  %scevgep60.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %scevgep61.1 = getelementptr i8, i8* %scevgep60.1, i64 -4
  %69 = load i8, i8* %scevgep61.1, align 1
  %conv.i287.1 = zext i8 %69 to i32
  %arrayidx4.i291.1 = getelementptr inbounds i8, i8* %arraydecay87, i64 2
  %70 = load i8, i8* %arrayidx4.i291.1, align 1
  %conv5.i292.1 = zext i8 %70 to i32
  %xor.i293.1 = xor i32 %conv.i287.1, %conv5.i292.1
  %conv6.i294.1 = trunc i32 %xor.i293.1 to i8
  %scevgep62.1 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  store i8 %conv6.i294.1, i8* %scevgep62.1, align 1
  %scevgep60.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 2
  %scevgep61.2 = getelementptr i8, i8* %scevgep60.2, i64 -4
  %71 = load i8, i8* %scevgep61.2, align 1
  %conv.i287.2 = zext i8 %71 to i32
  %arrayidx4.i291.2 = getelementptr inbounds i8, i8* %arraydecay87, i64 3
  %72 = load i8, i8* %arrayidx4.i291.2, align 1
  %conv5.i292.2 = zext i8 %72 to i32
  %xor.i293.2 = xor i32 %conv.i287.2, %conv5.i292.2
  %conv6.i294.2 = trunc i32 %xor.i293.2 to i8
  %scevgep62.2 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 2
  store i8 %conv6.i294.2, i8* %scevgep62.2, align 1
  %scevgep60.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 3
  %scevgep61.3 = getelementptr i8, i8* %scevgep60.3, i64 -4
  %73 = load i8, i8* %scevgep61.3, align 1
  %conv.i287.3 = zext i8 %73 to i32
  %74 = load i8, i8* %arraydecay87, align 1
  %conv5.i292.3 = zext i8 %74 to i32
  %xor.i293.3 = xor i32 %conv.i287.3, %conv5.i292.3
  %conv6.i294.3 = trunc i32 %xor.i293.3 to i8
  %scevgep62.3 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %scevgep5455, i64 0, i64 0, i64 3
  store i8 %conv6.i294.3, i8* %scevgep62.3, align 1
  %scevgep20 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep24 = getelementptr [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 4, i64 0
  %75 = load i8, i8* %scevgep20, align 1
  %conv.i262 = zext i8 %75 to i32
  %76 = load i8, i8* %scevgep24, align 1
  %conv5.i267 = zext i8 %76 to i32
  %xor.i268 = xor i32 %conv.i262, %conv5.i267
  %conv6.i269 = trunc i32 %xor.i268 to i8
  store i8 %conv6.i269, i8* %c, align 1
  %scevgep23.1 = getelementptr i8, i8* %scevgep20, i64 1
  %77 = load i8, i8* %scevgep23.1, align 1
  %conv.i262.1 = zext i8 %77 to i32
  %scevgep25.1 = getelementptr i8, i8* %scevgep24, i64 1
  %78 = load i8, i8* %scevgep25.1, align 1
  %conv5.i267.1 = zext i8 %78 to i32
  %xor.i268.1 = xor i32 %conv.i262.1, %conv5.i267.1
  %conv6.i269.1 = trunc i32 %xor.i268.1 to i8
  %scevgep26.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i269.1, i8* %scevgep26.1, align 1
  %scevgep23.2 = getelementptr i8, i8* %scevgep20, i64 2
  %79 = load i8, i8* %scevgep23.2, align 1
  %conv.i262.2 = zext i8 %79 to i32
  %scevgep25.2 = getelementptr i8, i8* %scevgep24, i64 2
  %80 = load i8, i8* %scevgep25.2, align 1
  %conv5.i267.2 = zext i8 %80 to i32
  %xor.i268.2 = xor i32 %conv.i262.2, %conv5.i267.2
  %conv6.i269.2 = trunc i32 %xor.i268.2 to i8
  %scevgep26.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i269.2, i8* %scevgep26.2, align 1
  %scevgep23.3 = getelementptr i8, i8* %scevgep20, i64 3
  %81 = load i8, i8* %scevgep23.3, align 1
  %conv.i262.3 = zext i8 %81 to i32
  %scevgep25.3 = getelementptr i8, i8* %scevgep24, i64 3
  %82 = load i8, i8* %scevgep25.3, align 1
  %conv5.i267.3 = zext i8 %82 to i32
  %xor.i268.3 = xor i32 %conv.i262.3, %conv5.i267.3
  %conv6.i269.3 = trunc i32 %xor.i268.3 to i8
  %scevgep26.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i269.3, i8* %scevgep26.3, align 1
  %call100 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv101 = zext i8 %call100 to i32
  %83 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %84 = load i8, i8* %scevgep.1, align 1
  %conv.i.i218.1 = zext i8 %84 to i32
  %conv1.i.i219.1 = zext i8 %83 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %85 = load i8, i8* %scevgep.2, align 1
  %conv.i.i218.2 = zext i8 %85 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %86 = load i8, i8* %scevgep.3, align 1
  %conv.i.i218.3 = zext i8 %86 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %conv103 = zext i8 %conv2.i.i221.3 to i32
  %cmp104 = icmp eq i32 %conv101, %conv103
  call void @assert(i1 zeroext %cmp104)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %r = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep26.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep26.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep26.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep26.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep26.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep26.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep22 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep22, align 1
  %call6.1 = call zeroext i8 (...) @rand()
  %scevgep22.1 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 1
  store i8 %call6.1, i8* %scevgep22.1, align 1
  %call6.2 = call zeroext i8 (...) @rand()
  %scevgep22.2 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 2
  store i8 %call6.2, i8* %scevgep22.2, align 1
  %call6.3 = call zeroext i8 (...) @rand()
  %scevgep22.3 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 3
  store i8 %call6.3, i8* %scevgep22.3, align 1
  %scevgep16 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 0
  %4 = load i8, i8* %scevgep16, align 1
  %conv.i = zext i8 %4 to i32
  %5 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %5 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %scevgep16.1 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 1
  %6 = load i8, i8* %scevgep16.1, align 1
  %conv.i.1 = zext i8 %6 to i32
  %scevgep17.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep17.1, align 1
  %conv5.i.1 = zext i8 %7 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep18.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i.1, i8* %scevgep18.1, align 1
  %scevgep16.2 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 2
  %8 = load i8, i8* %scevgep16.2, align 1
  %conv.i.2 = zext i8 %8 to i32
  %scevgep17.2 = getelementptr i8, i8* %x, i64 2
  %9 = load i8, i8* %scevgep17.2, align 1
  %conv5.i.2 = zext i8 %9 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep18.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i.2, i8* %scevgep18.2, align 1
  %scevgep16.3 = getelementptr [4 x i8], [4 x i8]* %r, i64 0, i64 3
  %10 = load i8, i8* %scevgep16.3, align 1
  %conv.i.3 = zext i8 %10 to i32
  %scevgep17.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep17.3, align 1
  %conv5.i.3 = zext i8 %11 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep18.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i.3, i8* %scevgep18.3, align 1
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %r, i64 0, i64 0
  %arrayidx.i42 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %12 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %12 to i32
  %13 = load i8, i8* %x, align 1
  %conv5.i48 = zext i8 %13 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  store i8 %conv6.i50, i8* %x, align 1
  %arrayidx.i42.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %14 = load i8, i8* %arrayidx.i42.1, align 1
  %conv.i43.1 = zext i8 %14 to i32
  %scevgep11.1 = getelementptr i8, i8* %x, i64 1
  %15 = load i8, i8* %scevgep11.1, align 1
  %conv5.i48.1 = zext i8 %15 to i32
  %xor.i49.1 = xor i32 %conv.i43.1, %conv5.i48.1
  %conv6.i50.1 = trunc i32 %xor.i49.1 to i8
  %scevgep12.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i50.1, i8* %scevgep12.1, align 1
  %arrayidx.i42.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %16 = load i8, i8* %arrayidx.i42.2, align 1
  %conv.i43.2 = zext i8 %16 to i32
  %scevgep11.2 = getelementptr i8, i8* %x, i64 2
  %17 = load i8, i8* %scevgep11.2, align 1
  %conv5.i48.2 = zext i8 %17 to i32
  %xor.i49.2 = xor i32 %conv.i43.2, %conv5.i48.2
  %conv6.i50.2 = trunc i32 %xor.i49.2 to i8
  %scevgep12.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i50.2, i8* %scevgep12.2, align 1
  %18 = load i8, i8* %arraydecay7, align 1
  %conv.i43.3 = zext i8 %18 to i32
  %scevgep11.3 = getelementptr i8, i8* %x, i64 3
  %19 = load i8, i8* %scevgep11.3, align 1
  %conv5.i48.3 = zext i8 %19 to i32
  %xor.i49.3 = xor i32 %conv.i43.3, %conv5.i48.3
  %conv6.i50.3 = trunc i32 %xor.i49.3 to i8
  %scevgep12.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i50.3, i8* %scevgep12.3, align 1
  %conv8 = zext i8 %call to i32
  %20 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %21 = load i8, i8* %scevgep.1, align 1
  %conv.i.i24.1 = zext i8 %21 to i32
  %conv1.i.i25.1 = zext i8 %20 to i32
  %xor.i.i26.1 = xor i32 %conv1.i.i25.1, %conv.i.i24.1
  %conv2.i.i27.1 = trunc i32 %xor.i.i26.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %22 = load i8, i8* %scevgep.2, align 1
  %conv.i.i24.2 = zext i8 %22 to i32
  %conv1.i.i25.2 = zext i8 %conv2.i.i27.1 to i32
  %xor.i.i26.2 = xor i32 %conv1.i.i25.2, %conv.i.i24.2
  %conv2.i.i27.2 = trunc i32 %xor.i.i26.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %23 = load i8, i8* %scevgep.3, align 1
  %conv.i.i24.3 = zext i8 %23 to i32
  %conv1.i.i25.3 = zext i8 %conv2.i.i27.2 to i32
  %xor.i.i26.3 = xor i32 %conv1.i.i25.3, %conv.i.i24.3
  %conv2.i.i27.3 = trunc i32 %xor.i.i26.3 to i8
  %conv10 = zext i8 %conv2.i.i27.3 to i32
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
