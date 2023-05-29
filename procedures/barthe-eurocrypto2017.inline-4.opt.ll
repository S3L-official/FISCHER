; ModuleID = '../examples/barthe-eurocrypto2017.inline-4.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
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
  %cc = alloca [10 x [5 x i8]], align 16
  %dd = alloca [10 x [5 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep185.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep185.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep185.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep185.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep185.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep185.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep185.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep185.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep181.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep181.1, align 1
  %conv.i.i120.1 = zext i8 %6 to i32
  %conv1.i.i121.1 = zext i8 %5 to i32
  %xor.i.i122.1 = xor i32 %conv1.i.i121.1, %conv.i.i120.1
  %conv2.i.i123.1 = trunc i32 %xor.i.i122.1 to i8
  %scevgep181.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep181.2, align 1
  %conv.i.i120.2 = zext i8 %7 to i32
  %conv1.i.i121.2 = zext i8 %conv2.i.i123.1 to i32
  %xor.i.i122.2 = xor i32 %conv1.i.i121.2, %conv.i.i120.2
  %conv2.i.i123.2 = trunc i32 %xor.i.i122.2 to i8
  %scevgep181.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep181.3, align 1
  %conv.i.i120.3 = zext i8 %8 to i32
  %conv1.i.i121.3 = zext i8 %conv2.i.i123.2 to i32
  %xor.i.i122.3 = xor i32 %conv1.i.i121.3, %conv.i.i120.3
  %conv2.i.i123.3 = trunc i32 %xor.i.i122.3 to i8
  %scevgep181.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep181.4, align 1
  %conv.i.i120.4 = zext i8 %9 to i32
  %conv1.i.i121.4 = zext i8 %conv2.i.i123.3 to i32
  %xor.i.i122.4 = xor i32 %conv1.i.i121.4, %conv.i.i120.4
  %conv2.i.i123.4 = trunc i32 %xor.i.i122.4 to i8
  %conv7 = zext i8 %conv2.i.i123.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep177 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep177, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep177.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep177.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep177.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep177.2, align 1
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep177.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.3, i8* %scevgep177.3, align 1
  %call16.4 = call zeroext i8 (...) @rand()
  %scevgep177.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  store i8 %call16.4, i8* %scevgep177.4, align 1
  %scevgep174 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %10 = bitcast i8* %scevgep174 to [5 x [5 x i8]]*
  %call16.1187 = call zeroext i8 (...) @rand()
  %scevgep177.1188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 0
  store i8 %call16.1187, i8* %scevgep177.1188, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep177.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep177.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep177.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep177.2.1, align 1
  %call16.3.1 = call zeroext i8 (...) @rand()
  %scevgep177.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 3
  store i8 %call16.3.1, i8* %scevgep177.3.1, align 1
  %call16.4.1 = call zeroext i8 (...) @rand()
  %scevgep177.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 0, i64 4
  store i8 %call16.4.1, i8* %scevgep177.4.1, align 1
  %scevgep174.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %10, i64 0, i64 1, i64 0
  %11 = bitcast i8* %scevgep174.1 to [5 x [5 x i8]]*
  %call16.2190 = call zeroext i8 (...) @rand()
  %scevgep177.2191 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 0
  store i8 %call16.2190, i8* %scevgep177.2191, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep177.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep177.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep177.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep177.2.2, align 1
  %call16.3.2 = call zeroext i8 (...) @rand()
  %scevgep177.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 3
  store i8 %call16.3.2, i8* %scevgep177.3.2, align 1
  %call16.4.2 = call zeroext i8 (...) @rand()
  %scevgep177.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 4
  store i8 %call16.4.2, i8* %scevgep177.4.2, align 1
  %scevgep174.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep174.2 to [5 x [5 x i8]]*
  %call16.3193 = call zeroext i8 (...) @rand()
  %scevgep177.3194 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 0
  store i8 %call16.3193, i8* %scevgep177.3194, align 1
  %call16.1.3 = call zeroext i8 (...) @rand()
  %scevgep177.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 1
  store i8 %call16.1.3, i8* %scevgep177.1.3, align 1
  %call16.2.3 = call zeroext i8 (...) @rand()
  %scevgep177.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 2
  store i8 %call16.2.3, i8* %scevgep177.2.3, align 1
  %call16.3.3 = call zeroext i8 (...) @rand()
  %scevgep177.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 3
  store i8 %call16.3.3, i8* %scevgep177.3.3, align 1
  %call16.4.3 = call zeroext i8 (...) @rand()
  %scevgep177.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 0, i64 4
  store i8 %call16.4.3, i8* %scevgep177.4.3, align 1
  %scevgep174.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep174.3 to [5 x [5 x i8]]*
  %call16.4196 = call zeroext i8 (...) @rand()
  %scevgep177.4197 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 0
  store i8 %call16.4196, i8* %scevgep177.4197, align 1
  %call16.1.4 = call zeroext i8 (...) @rand()
  %scevgep177.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 1
  store i8 %call16.1.4, i8* %scevgep177.1.4, align 1
  %call16.2.4 = call zeroext i8 (...) @rand()
  %scevgep177.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 2
  store i8 %call16.2.4, i8* %scevgep177.2.4, align 1
  %call16.3.4 = call zeroext i8 (...) @rand()
  %scevgep177.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 3
  store i8 %call16.3.4, i8* %scevgep177.3.4, align 1
  %call16.4.4 = call zeroext i8 (...) @rand()
  %scevgep177.4.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %13, i64 0, i64 0, i64 4
  store i8 %call16.4.4, i8* %scevgep177.4.4, align 1
  %scevgep170 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 1, i64 0
  %14 = load i8, i8* %a, align 1
  %15 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15) #2
  store i8 %call.i, i8* %scevgep170, align 1
  %scevgep163 = getelementptr i8, i8* %a, i64 1
  %scevgep168 = getelementptr i8, i8* %b, i64 1
  %16 = load i8, i8* %scevgep163, align 1
  %17 = load i8, i8* %scevgep168, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #2
  %scevgep171.1 = getelementptr i8, i8* %scevgep170, i64 1
  store i8 %call.i.1, i8* %scevgep171.1, align 1
  %scevgep163.1 = getelementptr i8, i8* %scevgep163, i64 1
  %scevgep168.1 = getelementptr i8, i8* %scevgep168, i64 1
  %18 = load i8, i8* %scevgep163.1, align 1
  %19 = load i8, i8* %scevgep168.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #2
  %scevgep171.2 = getelementptr i8, i8* %scevgep170, i64 2
  store i8 %call.i.2, i8* %scevgep171.2, align 1
  %scevgep163.2 = getelementptr i8, i8* %scevgep163.1, i64 1
  %scevgep168.2 = getelementptr i8, i8* %scevgep168.1, i64 1
  %20 = load i8, i8* %scevgep163.2, align 1
  %21 = load i8, i8* %scevgep168.2, align 1
  %call.i.3 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21) #2
  %scevgep171.3 = getelementptr i8, i8* %scevgep170, i64 3
  store i8 %call.i.3, i8* %scevgep171.3, align 1
  %scevgep163.3 = getelementptr i8, i8* %scevgep163.2, i64 1
  %scevgep168.3 = getelementptr i8, i8* %scevgep168.2, i64 1
  %22 = load i8, i8* %scevgep163.3, align 1
  %23 = load i8, i8* %scevgep168.3, align 1
  %call.i.4 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #2
  %scevgep171.4 = getelementptr i8, i8* %scevgep170, i64 4
  store i8 %call.i.4, i8* %scevgep171.4, align 1
  %scevgep143 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep143144 = bitcast i8* %scevgep143 to [10 x [5 x i8]]*
  %scevgep156 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep156157 = bitcast i8* %scevgep156 to [10 x [5 x i8]]*
  %24 = load i8, i8* %a, align 1
  %arrayidx4.i143 = getelementptr inbounds i8, i8* %b, i64 1
  %25 = load i8, i8* %arrayidx4.i143, align 1
  %call.i144 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #2
  %scevgep147 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep143144, i64 0, i64 0, i64 0
  store i8 %call.i144, i8* %scevgep147, align 1
  %scevgep137 = getelementptr i8, i8* %a, i64 1
  %26 = load i8, i8* %scevgep137, align 1
  %arrayidx4.i143.1 = getelementptr inbounds i8, i8* %b, i64 2
  %27 = load i8, i8* %arrayidx4.i143.1, align 1
  %call.i144.1 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #2
  %scevgep147.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep143144, i64 0, i64 0, i64 1
  store i8 %call.i144.1, i8* %scevgep147.1, align 1
  %scevgep137.1 = getelementptr i8, i8* %scevgep137, i64 1
  %28 = load i8, i8* %scevgep137.1, align 1
  %arrayidx4.i143.2 = getelementptr inbounds i8, i8* %b, i64 3
  %29 = load i8, i8* %arrayidx4.i143.2, align 1
  %call.i144.2 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #2
  %scevgep147.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep143144, i64 0, i64 0, i64 2
  store i8 %call.i144.2, i8* %scevgep147.2, align 1
  %scevgep137.2 = getelementptr i8, i8* %scevgep137.1, i64 1
  %30 = load i8, i8* %scevgep137.2, align 1
  %arrayidx4.i143.3 = getelementptr inbounds i8, i8* %b, i64 4
  %31 = load i8, i8* %arrayidx4.i143.3, align 1
  %call.i144.3 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #2
  %scevgep147.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep143144, i64 0, i64 0, i64 3
  store i8 %call.i144.3, i8* %scevgep147.3, align 1
  %scevgep137.3 = getelementptr i8, i8* %scevgep137.2, i64 1
  %32 = load i8, i8* %scevgep137.3, align 1
  %33 = load i8, i8* %b, align 1
  %call.i144.4 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #2
  %scevgep147.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep143144, i64 0, i64 0, i64 4
  store i8 %call.i144.4, i8* %scevgep147.4, align 1
  %arrayidx.i161 = getelementptr inbounds i8, i8* %a, i64 1
  %34 = load i8, i8* %arrayidx.i161, align 1
  %35 = load i8, i8* %b, align 1
  %call.i166 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #2
  %scevgep160 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep156157, i64 0, i64 0, i64 0
  store i8 %call.i166, i8* %scevgep160, align 1
  %scevgep152 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i161.1 = getelementptr inbounds i8, i8* %a, i64 2
  %36 = load i8, i8* %arrayidx.i161.1, align 1
  %37 = load i8, i8* %scevgep152, align 1
  %call.i166.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #2
  %scevgep160.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep156157, i64 0, i64 0, i64 1
  store i8 %call.i166.1, i8* %scevgep160.1, align 1
  %scevgep152.1 = getelementptr i8, i8* %scevgep152, i64 1
  %arrayidx.i161.2 = getelementptr inbounds i8, i8* %a, i64 3
  %38 = load i8, i8* %arrayidx.i161.2, align 1
  %39 = load i8, i8* %scevgep152.1, align 1
  %call.i166.2 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  %scevgep160.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep156157, i64 0, i64 0, i64 2
  store i8 %call.i166.2, i8* %scevgep160.2, align 1
  %scevgep152.2 = getelementptr i8, i8* %scevgep152.1, i64 1
  %arrayidx.i161.3 = getelementptr inbounds i8, i8* %a, i64 4
  %40 = load i8, i8* %arrayidx.i161.3, align 1
  %41 = load i8, i8* %scevgep152.2, align 1
  %call.i166.3 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #2
  %scevgep160.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep156157, i64 0, i64 0, i64 3
  store i8 %call.i166.3, i8* %scevgep160.3, align 1
  %scevgep152.3 = getelementptr i8, i8* %scevgep152.2, i64 1
  %42 = load i8, i8* %a, align 1
  %43 = load i8, i8* %scevgep152.3, align 1
  %call.i166.4 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #2
  %scevgep160.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep156157, i64 0, i64 0, i64 4
  store i8 %call.i166.4, i8* %scevgep160.4, align 1
  %scevgep133 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 4, i64 0
  %44 = load i8, i8* %a, align 1
  %arrayidx4.i187 = getelementptr inbounds i8, i8* %b, i64 2
  %45 = load i8, i8* %arrayidx4.i187, align 1
  %call.i188 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #2
  store i8 %call.i188, i8* %scevgep133, align 1
  %scevgep127 = getelementptr i8, i8* %a, i64 1
  %46 = load i8, i8* %scevgep127, align 1
  %arrayidx4.i187.1 = getelementptr inbounds i8, i8* %b, i64 3
  %47 = load i8, i8* %arrayidx4.i187.1, align 1
  %call.i188.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #2
  %scevgep134.1 = getelementptr i8, i8* %scevgep133, i64 1
  store i8 %call.i188.1, i8* %scevgep134.1, align 1
  %scevgep127.1 = getelementptr i8, i8* %scevgep127, i64 1
  %48 = load i8, i8* %scevgep127.1, align 1
  %arrayidx4.i187.2 = getelementptr inbounds i8, i8* %b, i64 4
  %49 = load i8, i8* %arrayidx4.i187.2, align 1
  %call.i188.2 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  %scevgep134.2 = getelementptr i8, i8* %scevgep133, i64 2
  store i8 %call.i188.2, i8* %scevgep134.2, align 1
  %scevgep127.2 = getelementptr i8, i8* %scevgep127.1, i64 1
  %50 = load i8, i8* %scevgep127.2, align 1
  %51 = load i8, i8* %b, align 1
  %call.i188.3 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #2
  %scevgep134.3 = getelementptr i8, i8* %scevgep133, i64 3
  store i8 %call.i188.3, i8* %scevgep134.3, align 1
  %scevgep127.3 = getelementptr i8, i8* %scevgep127.2, i64 1
  %52 = load i8, i8* %scevgep127.3, align 1
  %arrayidx4.i187.4 = getelementptr inbounds i8, i8* %b, i64 1
  %53 = load i8, i8* %arrayidx4.i187.4, align 1
  %call.i188.4 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #2
  %scevgep134.4 = getelementptr i8, i8* %scevgep133, i64 4
  store i8 %call.i188.4, i8* %scevgep134.4, align 1
  %scevgep123 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 5, i64 0
  %arrayidx.i205 = getelementptr inbounds i8, i8* %a, i64 2
  %54 = load i8, i8* %arrayidx.i205, align 1
  %55 = load i8, i8* %b, align 1
  %call.i210 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  store i8 %call.i210, i8* %scevgep123, align 1
  %scevgep119 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i205.1 = getelementptr inbounds i8, i8* %a, i64 3
  %56 = load i8, i8* %arrayidx.i205.1, align 1
  %57 = load i8, i8* %scevgep119, align 1
  %call.i210.1 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57) #2
  %scevgep124.1 = getelementptr i8, i8* %scevgep123, i64 1
  store i8 %call.i210.1, i8* %scevgep124.1, align 1
  %scevgep119.1 = getelementptr i8, i8* %scevgep119, i64 1
  %arrayidx.i205.2 = getelementptr inbounds i8, i8* %a, i64 4
  %58 = load i8, i8* %arrayidx.i205.2, align 1
  %59 = load i8, i8* %scevgep119.1, align 1
  %call.i210.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #2
  %scevgep124.2 = getelementptr i8, i8* %scevgep123, i64 2
  store i8 %call.i210.2, i8* %scevgep124.2, align 1
  %scevgep119.2 = getelementptr i8, i8* %scevgep119.1, i64 1
  %60 = load i8, i8* %a, align 1
  %61 = load i8, i8* %scevgep119.2, align 1
  %call.i210.3 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #2
  %scevgep124.3 = getelementptr i8, i8* %scevgep123, i64 3
  store i8 %call.i210.3, i8* %scevgep124.3, align 1
  %scevgep119.3 = getelementptr i8, i8* %scevgep119.2, i64 1
  %arrayidx.i205.4 = getelementptr inbounds i8, i8* %a, i64 1
  %62 = load i8, i8* %arrayidx.i205.4, align 1
  %63 = load i8, i8* %scevgep119.3, align 1
  %call.i210.4 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #2
  %scevgep124.4 = getelementptr i8, i8* %scevgep123, i64 4
  store i8 %call.i210.4, i8* %scevgep124.4, align 1
  %scevgep101 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 1, i64 0
  %scevgep101102 = bitcast i8* %scevgep101 to [10 x [5 x i8]]*
  %scevgep108 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep108109 = bitcast i8* %scevgep108 to [5 x [5 x i8]]*
  %scevgep113 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep107 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep101102, i64 0, i64 0, i64 0
  %scevgep112 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep108109, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep107, align 1
  %conv.i = zext i8 %64 to i32
  %65 = load i8, i8* %scevgep112, align 1
  %conv5.i = zext i8 %65 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %scevgep113, align 1
  %scevgep104 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep101102, i64 0, i64 0, i64 1
  %66 = bitcast i8* %scevgep104 to [10 x [5 x i8]]*
  %scevgep111 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep108109, i64 0, i64 0, i64 1
  %67 = bitcast i8* %scevgep111 to [5 x [5 x i8]]*
  %scevgep107.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %66, i64 0, i64 0, i64 0
  %scevgep112.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep107.1, align 1
  %conv.i.1 = zext i8 %68 to i32
  %69 = load i8, i8* %scevgep112.1, align 1
  %conv5.i.1 = zext i8 %69 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep114.1 = getelementptr i8, i8* %scevgep113, i64 1
  store i8 %conv6.i.1, i8* %scevgep114.1, align 1
  %scevgep104.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %66, i64 0, i64 0, i64 1
  %70 = bitcast i8* %scevgep104.1 to [10 x [5 x i8]]*
  %scevgep111.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 1
  %71 = bitcast i8* %scevgep111.1 to [5 x [5 x i8]]*
  %scevgep107.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %70, i64 0, i64 0, i64 0
  %scevgep112.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %71, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep107.2, align 1
  %conv.i.2 = zext i8 %72 to i32
  %73 = load i8, i8* %scevgep112.2, align 1
  %conv5.i.2 = zext i8 %73 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep114.2 = getelementptr i8, i8* %scevgep113, i64 2
  store i8 %conv6.i.2, i8* %scevgep114.2, align 1
  %scevgep104.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %70, i64 0, i64 0, i64 1
  %74 = bitcast i8* %scevgep104.2 to [10 x [5 x i8]]*
  %scevgep111.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %71, i64 0, i64 0, i64 1
  %75 = bitcast i8* %scevgep111.2 to [5 x [5 x i8]]*
  %scevgep107.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %74, i64 0, i64 0, i64 0
  %scevgep112.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep107.3, align 1
  %conv.i.3 = zext i8 %76 to i32
  %77 = load i8, i8* %scevgep112.3, align 1
  %conv5.i.3 = zext i8 %77 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep114.3 = getelementptr i8, i8* %scevgep113, i64 3
  store i8 %conv6.i.3, i8* %scevgep114.3, align 1
  %scevgep104.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %74, i64 0, i64 0, i64 1
  %78 = bitcast i8* %scevgep104.3 to [10 x [5 x i8]]*
  %scevgep111.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 1
  %79 = bitcast i8* %scevgep111.3 to [5 x [5 x i8]]*
  %scevgep107.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %78, i64 0, i64 0, i64 0
  %scevgep112.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %79, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep107.4, align 1
  %conv.i.4 = zext i8 %80 to i32
  %81 = load i8, i8* %scevgep112.4, align 1
  %conv5.i.4 = zext i8 %81 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep114.4 = getelementptr i8, i8* %scevgep113, i64 4
  store i8 %conv6.i.4, i8* %scevgep114.4, align 1
  %scevgep48 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep4849 = bitcast i8* %scevgep48 to [10 x [5 x i8]]*
  %scevgep57 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep5758 = bitcast i8* %scevgep57 to [10 x [5 x i8]]*
  %scevgep64 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %dd, i64 0, i64 2, i64 0
  %scevgep6465 = bitcast i8* %scevgep64 to [10 x [5 x i8]]*
  %scevgep75 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep7576 = bitcast i8* %scevgep75 to [10 x [5 x i8]]*
  %scevgep82 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %dd, i64 0, i64 3, i64 0
  %scevgep8283 = bitcast i8* %scevgep82 to [10 x [5 x i8]]*
  %scevgep95 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep9596 = bitcast i8* %scevgep95 to [10 x [5 x i8]]*
  %scevgep56 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 0
  %scevgep63 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep5758, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep56, align 1
  %conv.i263 = zext i8 %82 to i32
  %83 = load i8, i8* %scevgep63, align 1
  %conv5.i268 = zext i8 %83 to i32
  %xor.i269 = xor i32 %conv.i263, %conv5.i268
  %conv6.i270 = trunc i32 %xor.i269 to i8
  %scevgep68 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 0
  store i8 %conv6.i270, i8* %scevgep68, align 1
  %scevgep53 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %84 = bitcast i8* %scevgep53 to [10 x [5 x i8]]*
  %scevgep62 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep5758, i64 0, i64 0, i64 1
  %85 = bitcast i8* %scevgep62 to [10 x [5 x i8]]*
  %scevgep56.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %84, i64 0, i64 0, i64 0
  %scevgep63.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %85, i64 0, i64 0, i64 0
  %86 = load i8, i8* %scevgep56.1, align 1
  %conv.i263.1 = zext i8 %86 to i32
  %87 = load i8, i8* %scevgep63.1, align 1
  %conv5.i268.1 = zext i8 %87 to i32
  %xor.i269.1 = xor i32 %conv.i263.1, %conv5.i268.1
  %conv6.i270.1 = trunc i32 %xor.i269.1 to i8
  %scevgep68.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 1
  store i8 %conv6.i270.1, i8* %scevgep68.1, align 1
  %scevgep53.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %84, i64 0, i64 0, i64 1
  %88 = bitcast i8* %scevgep53.1 to [10 x [5 x i8]]*
  %scevgep62.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %85, i64 0, i64 0, i64 1
  %89 = bitcast i8* %scevgep62.1 to [10 x [5 x i8]]*
  %scevgep56.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %88, i64 0, i64 0, i64 0
  %scevgep63.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %89, i64 0, i64 0, i64 0
  %90 = load i8, i8* %scevgep56.2, align 1
  %conv.i263.2 = zext i8 %90 to i32
  %91 = load i8, i8* %scevgep63.2, align 1
  %conv5.i268.2 = zext i8 %91 to i32
  %xor.i269.2 = xor i32 %conv.i263.2, %conv5.i268.2
  %conv6.i270.2 = trunc i32 %xor.i269.2 to i8
  %scevgep68.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 2
  store i8 %conv6.i270.2, i8* %scevgep68.2, align 1
  %scevgep53.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %88, i64 0, i64 0, i64 1
  %92 = bitcast i8* %scevgep53.2 to [10 x [5 x i8]]*
  %scevgep62.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %89, i64 0, i64 0, i64 1
  %93 = bitcast i8* %scevgep62.2 to [10 x [5 x i8]]*
  %scevgep56.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %92, i64 0, i64 0, i64 0
  %scevgep63.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %93, i64 0, i64 0, i64 0
  %94 = load i8, i8* %scevgep56.3, align 1
  %conv.i263.3 = zext i8 %94 to i32
  %95 = load i8, i8* %scevgep63.3, align 1
  %conv5.i268.3 = zext i8 %95 to i32
  %xor.i269.3 = xor i32 %conv.i263.3, %conv5.i268.3
  %conv6.i270.3 = trunc i32 %xor.i269.3 to i8
  %scevgep68.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 3
  store i8 %conv6.i270.3, i8* %scevgep68.3, align 1
  %scevgep53.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %92, i64 0, i64 0, i64 1
  %96 = bitcast i8* %scevgep53.3 to [10 x [5 x i8]]*
  %scevgep62.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %93, i64 0, i64 0, i64 1
  %97 = bitcast i8* %scevgep62.3 to [10 x [5 x i8]]*
  %scevgep56.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %96, i64 0, i64 0, i64 0
  %scevgep63.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %97, i64 0, i64 0, i64 0
  %98 = load i8, i8* %scevgep56.4, align 1
  %conv.i263.4 = zext i8 %98 to i32
  %99 = load i8, i8* %scevgep63.4, align 1
  %conv5.i268.4 = zext i8 %99 to i32
  %xor.i269.4 = xor i32 %conv.i263.4, %conv5.i268.4
  %conv6.i270.4 = trunc i32 %xor.i269.4 to i8
  %scevgep68.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 4
  store i8 %conv6.i270.4, i8* %scevgep68.4, align 1
  %scevgep74 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 0
  %scevgep81 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep7576, i64 0, i64 0, i64 0
  %100 = load i8, i8* %scevgep74, align 1
  %conv.i366 = zext i8 %100 to i32
  %101 = load i8, i8* %scevgep81, align 1
  %conv5.i371 = zext i8 %101 to i32
  %xor.i372 = xor i32 %conv.i366, %conv5.i371
  %conv6.i373 = trunc i32 %xor.i372 to i8
  %scevgep86 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 0
  store i8 %conv6.i373, i8* %scevgep86, align 1
  %scevgep71 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep6465, i64 0, i64 0, i64 1
  %102 = bitcast i8* %scevgep71 to [10 x [5 x i8]]*
  %scevgep80 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep7576, i64 0, i64 0, i64 1
  %103 = bitcast i8* %scevgep80 to [10 x [5 x i8]]*
  %scevgep74.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  %scevgep81.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  %104 = load i8, i8* %scevgep74.1, align 1
  %conv.i366.1 = zext i8 %104 to i32
  %105 = load i8, i8* %scevgep81.1, align 1
  %conv5.i371.1 = zext i8 %105 to i32
  %xor.i372.1 = xor i32 %conv.i366.1, %conv5.i371.1
  %conv6.i373.1 = trunc i32 %xor.i372.1 to i8
  %scevgep86.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 1
  store i8 %conv6.i373.1, i8* %scevgep86.1, align 1
  %scevgep71.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %102, i64 0, i64 0, i64 1
  %106 = bitcast i8* %scevgep71.1 to [10 x [5 x i8]]*
  %scevgep80.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %103, i64 0, i64 0, i64 1
  %107 = bitcast i8* %scevgep80.1 to [10 x [5 x i8]]*
  %scevgep74.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %106, i64 0, i64 0, i64 0
  %scevgep81.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %107, i64 0, i64 0, i64 0
  %108 = load i8, i8* %scevgep74.2, align 1
  %conv.i366.2 = zext i8 %108 to i32
  %109 = load i8, i8* %scevgep81.2, align 1
  %conv5.i371.2 = zext i8 %109 to i32
  %xor.i372.2 = xor i32 %conv.i366.2, %conv5.i371.2
  %conv6.i373.2 = trunc i32 %xor.i372.2 to i8
  %scevgep86.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 2
  store i8 %conv6.i373.2, i8* %scevgep86.2, align 1
  %scevgep71.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %106, i64 0, i64 0, i64 1
  %110 = bitcast i8* %scevgep71.2 to [10 x [5 x i8]]*
  %scevgep80.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %107, i64 0, i64 0, i64 1
  %111 = bitcast i8* %scevgep80.2 to [10 x [5 x i8]]*
  %scevgep74.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %110, i64 0, i64 0, i64 0
  %scevgep81.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %111, i64 0, i64 0, i64 0
  %112 = load i8, i8* %scevgep74.3, align 1
  %conv.i366.3 = zext i8 %112 to i32
  %113 = load i8, i8* %scevgep81.3, align 1
  %conv5.i371.3 = zext i8 %113 to i32
  %xor.i372.3 = xor i32 %conv.i366.3, %conv5.i371.3
  %conv6.i373.3 = trunc i32 %xor.i372.3 to i8
  %scevgep86.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 3
  store i8 %conv6.i373.3, i8* %scevgep86.3, align 1
  %scevgep71.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %110, i64 0, i64 0, i64 1
  %114 = bitcast i8* %scevgep71.3 to [10 x [5 x i8]]*
  %scevgep80.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %111, i64 0, i64 0, i64 1
  %115 = bitcast i8* %scevgep80.3 to [10 x [5 x i8]]*
  %scevgep74.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %114, i64 0, i64 0, i64 0
  %scevgep81.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %115, i64 0, i64 0, i64 0
  %116 = load i8, i8* %scevgep74.4, align 1
  %conv.i366.4 = zext i8 %116 to i32
  %117 = load i8, i8* %scevgep81.4, align 1
  %conv5.i371.4 = zext i8 %117 to i32
  %xor.i372.4 = xor i32 %conv.i366.4, %conv5.i371.4
  %conv6.i373.4 = trunc i32 %xor.i372.4 to i8
  %scevgep86.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 4
  store i8 %conv6.i373.4, i8* %scevgep86.4, align 1
  %arrayidx88 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1
  %arraydecay89 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx88, i64 0, i64 0
  %scevgep92 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 0
  %118 = load i8, i8* %scevgep92, align 1
  %conv.i338 = zext i8 %118 to i32
  %arrayidx4.i342 = getelementptr inbounds i8, i8* %arraydecay89, i64 1
  %119 = load i8, i8* %arrayidx4.i342, align 1
  %conv5.i343 = zext i8 %119 to i32
  %xor.i344 = xor i32 %conv.i338, %conv5.i343
  %conv6.i345 = trunc i32 %xor.i344 to i8
  %scevgep99 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep9596, i64 0, i64 0, i64 0
  store i8 %conv6.i345, i8* %scevgep99, align 1
  %scevgep89 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep8283, i64 0, i64 0, i64 1
  %120 = bitcast i8* %scevgep89 to [10 x [5 x i8]]*
  %scevgep92.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %120, i64 0, i64 0, i64 0
  %121 = load i8, i8* %scevgep92.1, align 1
  %conv.i338.1 = zext i8 %121 to i32
  %arrayidx4.i342.1 = getelementptr inbounds i8, i8* %arraydecay89, i64 2
  %122 = load i8, i8* %arrayidx4.i342.1, align 1
  %conv5.i343.1 = zext i8 %122 to i32
  %xor.i344.1 = xor i32 %conv.i338.1, %conv5.i343.1
  %conv6.i345.1 = trunc i32 %xor.i344.1 to i8
  %scevgep99.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep9596, i64 0, i64 0, i64 1
  store i8 %conv6.i345.1, i8* %scevgep99.1, align 1
  %scevgep89.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %120, i64 0, i64 0, i64 1
  %123 = bitcast i8* %scevgep89.1 to [10 x [5 x i8]]*
  %scevgep92.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %123, i64 0, i64 0, i64 0
  %124 = load i8, i8* %scevgep92.2, align 1
  %conv.i338.2 = zext i8 %124 to i32
  %arrayidx4.i342.2 = getelementptr inbounds i8, i8* %arraydecay89, i64 3
  %125 = load i8, i8* %arrayidx4.i342.2, align 1
  %conv5.i343.2 = zext i8 %125 to i32
  %xor.i344.2 = xor i32 %conv.i338.2, %conv5.i343.2
  %conv6.i345.2 = trunc i32 %xor.i344.2 to i8
  %scevgep99.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep9596, i64 0, i64 0, i64 2
  store i8 %conv6.i345.2, i8* %scevgep99.2, align 1
  %scevgep89.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %123, i64 0, i64 0, i64 1
  %126 = bitcast i8* %scevgep89.2 to [10 x [5 x i8]]*
  %scevgep92.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %126, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep92.3, align 1
  %conv.i338.3 = zext i8 %127 to i32
  %arrayidx4.i342.3 = getelementptr inbounds i8, i8* %arraydecay89, i64 4
  %128 = load i8, i8* %arrayidx4.i342.3, align 1
  %conv5.i343.3 = zext i8 %128 to i32
  %xor.i344.3 = xor i32 %conv.i338.3, %conv5.i343.3
  %conv6.i345.3 = trunc i32 %xor.i344.3 to i8
  %scevgep99.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep9596, i64 0, i64 0, i64 3
  store i8 %conv6.i345.3, i8* %scevgep99.3, align 1
  %scevgep89.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %126, i64 0, i64 0, i64 1
  %129 = bitcast i8* %scevgep89.3 to [10 x [5 x i8]]*
  %scevgep92.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %129, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep92.4, align 1
  %conv.i338.4 = zext i8 %130 to i32
  %131 = load i8, i8* %arraydecay89, align 1
  %conv5.i343.4 = zext i8 %131 to i32
  %xor.i344.4 = xor i32 %conv.i338.4, %conv5.i343.4
  %conv6.i345.4 = trunc i32 %xor.i344.4 to i8
  %scevgep99.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep9596, i64 0, i64 0, i64 4
  store i8 %conv6.i345.4, i8* %scevgep99.4, align 1
  %scevgep34 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep3435 = bitcast i8* %scevgep34 to [10 x [5 x i8]]*
  %scevgep41 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 4, i64 0
  %scevgep4142 = bitcast i8* %scevgep41 to [10 x [5 x i8]]*
  %scevgep40 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep3435, i64 0, i64 0, i64 0
  %scevgep45 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep4142, i64 0, i64 0, i64 0
  %132 = load i8, i8* %scevgep40, align 1
  %conv.i313 = zext i8 %132 to i32
  %133 = load i8, i8* %scevgep45, align 1
  %conv5.i318 = zext i8 %133 to i32
  %xor.i319 = xor i32 %conv.i313, %conv5.i318
  %conv6.i320 = trunc i32 %xor.i319 to i8
  store i8 %conv6.i320, i8* %c, align 1
  %scevgep37 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep3435, i64 0, i64 0, i64 1
  %134 = bitcast i8* %scevgep37 to [10 x [5 x i8]]*
  %scevgep44 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep4142, i64 0, i64 0, i64 1
  %135 = bitcast i8* %scevgep44 to [10 x [5 x i8]]*
  %scevgep40.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %134, i64 0, i64 0, i64 0
  %scevgep45.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %135, i64 0, i64 0, i64 0
  %136 = load i8, i8* %scevgep40.1, align 1
  %conv.i313.1 = zext i8 %136 to i32
  %137 = load i8, i8* %scevgep45.1, align 1
  %conv5.i318.1 = zext i8 %137 to i32
  %xor.i319.1 = xor i32 %conv.i313.1, %conv5.i318.1
  %conv6.i320.1 = trunc i32 %xor.i319.1 to i8
  %scevgep46.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i320.1, i8* %scevgep46.1, align 1
  %scevgep37.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %134, i64 0, i64 0, i64 1
  %138 = bitcast i8* %scevgep37.1 to [10 x [5 x i8]]*
  %scevgep44.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %135, i64 0, i64 0, i64 1
  %139 = bitcast i8* %scevgep44.1 to [10 x [5 x i8]]*
  %scevgep40.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %138, i64 0, i64 0, i64 0
  %scevgep45.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %139, i64 0, i64 0, i64 0
  %140 = load i8, i8* %scevgep40.2, align 1
  %conv.i313.2 = zext i8 %140 to i32
  %141 = load i8, i8* %scevgep45.2, align 1
  %conv5.i318.2 = zext i8 %141 to i32
  %xor.i319.2 = xor i32 %conv.i313.2, %conv5.i318.2
  %conv6.i320.2 = trunc i32 %xor.i319.2 to i8
  %scevgep46.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i320.2, i8* %scevgep46.2, align 1
  %scevgep37.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %138, i64 0, i64 0, i64 1
  %142 = bitcast i8* %scevgep37.2 to [10 x [5 x i8]]*
  %scevgep44.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %139, i64 0, i64 0, i64 1
  %143 = bitcast i8* %scevgep44.2 to [10 x [5 x i8]]*
  %scevgep40.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %142, i64 0, i64 0, i64 0
  %scevgep45.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %143, i64 0, i64 0, i64 0
  %144 = load i8, i8* %scevgep40.3, align 1
  %conv.i313.3 = zext i8 %144 to i32
  %145 = load i8, i8* %scevgep45.3, align 1
  %conv5.i318.3 = zext i8 %145 to i32
  %xor.i319.3 = xor i32 %conv.i313.3, %conv5.i318.3
  %conv6.i320.3 = trunc i32 %xor.i319.3 to i8
  %scevgep46.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i320.3, i8* %scevgep46.3, align 1
  %scevgep37.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %142, i64 0, i64 0, i64 1
  %146 = bitcast i8* %scevgep37.3 to [10 x [5 x i8]]*
  %scevgep44.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %143, i64 0, i64 0, i64 1
  %147 = bitcast i8* %scevgep44.3 to [10 x [5 x i8]]*
  %scevgep40.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %146, i64 0, i64 0, i64 0
  %scevgep45.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %147, i64 0, i64 0, i64 0
  %148 = load i8, i8* %scevgep40.4, align 1
  %conv.i313.4 = zext i8 %148 to i32
  %149 = load i8, i8* %scevgep45.4, align 1
  %conv5.i318.4 = zext i8 %149 to i32
  %xor.i319.4 = xor i32 %conv.i313.4, %conv5.i318.4
  %conv6.i320.4 = trunc i32 %xor.i319.4 to i8
  %scevgep46.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i320.4, i8* %scevgep46.4, align 1
  %scevgep22 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %cc, i64 0, i64 5, i64 0
  %scevgep2223 = bitcast i8* %scevgep22 to [10 x [5 x i8]]*
  %scevgep28 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep2223, i64 0, i64 0, i64 0
  %150 = load i8, i8* %scevgep28, align 1
  %conv.i288 = zext i8 %150 to i32
  %151 = load i8, i8* %c, align 1
  %conv5.i293 = zext i8 %151 to i32
  %xor.i294 = xor i32 %conv.i288, %conv5.i293
  %conv6.i295 = trunc i32 %xor.i294 to i8
  store i8 %conv6.i295, i8* %c, align 1
  %scevgep25 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %scevgep2223, i64 0, i64 0, i64 1
  %152 = bitcast i8* %scevgep25 to [10 x [5 x i8]]*
  %scevgep30 = getelementptr i8, i8* %c, i64 1
  %scevgep28.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %152, i64 0, i64 0, i64 0
  %153 = load i8, i8* %scevgep28.1, align 1
  %conv.i288.1 = zext i8 %153 to i32
  %154 = load i8, i8* %scevgep30, align 1
  %conv5.i293.1 = zext i8 %154 to i32
  %xor.i294.1 = xor i32 %conv.i288.1, %conv5.i293.1
  %conv6.i295.1 = trunc i32 %xor.i294.1 to i8
  %scevgep32.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i295.1, i8* %scevgep32.1, align 1
  %scevgep25.1 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %152, i64 0, i64 0, i64 1
  %155 = bitcast i8* %scevgep25.1 to [10 x [5 x i8]]*
  %scevgep30.1 = getelementptr i8, i8* %scevgep30, i64 1
  %scevgep28.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %155, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep28.2, align 1
  %conv.i288.2 = zext i8 %156 to i32
  %157 = load i8, i8* %scevgep30.1, align 1
  %conv5.i293.2 = zext i8 %157 to i32
  %xor.i294.2 = xor i32 %conv.i288.2, %conv5.i293.2
  %conv6.i295.2 = trunc i32 %xor.i294.2 to i8
  %scevgep32.2 = getelementptr i8, i8* %c, i64 2
  store i8 %conv6.i295.2, i8* %scevgep32.2, align 1
  %scevgep25.2 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %155, i64 0, i64 0, i64 1
  %158 = bitcast i8* %scevgep25.2 to [10 x [5 x i8]]*
  %scevgep30.2 = getelementptr i8, i8* %scevgep30.1, i64 1
  %scevgep28.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %158, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep28.3, align 1
  %conv.i288.3 = zext i8 %159 to i32
  %160 = load i8, i8* %scevgep30.2, align 1
  %conv5.i293.3 = zext i8 %160 to i32
  %xor.i294.3 = xor i32 %conv.i288.3, %conv5.i293.3
  %conv6.i295.3 = trunc i32 %xor.i294.3 to i8
  %scevgep32.3 = getelementptr i8, i8* %c, i64 3
  store i8 %conv6.i295.3, i8* %scevgep32.3, align 1
  %scevgep25.3 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %158, i64 0, i64 0, i64 1
  %161 = bitcast i8* %scevgep25.3 to [10 x [5 x i8]]*
  %scevgep30.3 = getelementptr i8, i8* %scevgep30.2, i64 1
  %scevgep28.4 = getelementptr [10 x [5 x i8]], [10 x [5 x i8]]* %161, i64 0, i64 0, i64 0
  %162 = load i8, i8* %scevgep28.4, align 1
  %conv.i288.4 = zext i8 %162 to i32
  %163 = load i8, i8* %scevgep30.3, align 1
  %conv5.i293.4 = zext i8 %163 to i32
  %xor.i294.4 = xor i32 %conv.i288.4, %conv5.i293.4
  %conv6.i295.4 = trunc i32 %xor.i294.4 to i8
  %scevgep32.4 = getelementptr i8, i8* %c, i64 4
  store i8 %conv6.i295.4, i8* %scevgep32.4, align 1
  %call104 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv105 = zext i8 %call104 to i32
  %164 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %165 = load i8, i8* %scevgep.1, align 1
  %conv.i.i244.1 = zext i8 %165 to i32
  %conv1.i.i245.1 = zext i8 %164 to i32
  %xor.i.i246.1 = xor i32 %conv1.i.i245.1, %conv.i.i244.1
  %conv2.i.i247.1 = trunc i32 %xor.i.i246.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %166 = load i8, i8* %scevgep.2, align 1
  %conv.i.i244.2 = zext i8 %166 to i32
  %conv1.i.i245.2 = zext i8 %conv2.i.i247.1 to i32
  %xor.i.i246.2 = xor i32 %conv1.i.i245.2, %conv.i.i244.2
  %conv2.i.i247.2 = trunc i32 %xor.i.i246.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %167 = load i8, i8* %scevgep.3, align 1
  %conv.i.i244.3 = zext i8 %167 to i32
  %conv1.i.i245.3 = zext i8 %conv2.i.i247.2 to i32
  %xor.i.i246.3 = xor i32 %conv1.i.i245.3, %conv.i.i244.3
  %conv2.i.i247.3 = trunc i32 %xor.i.i246.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %168 = load i8, i8* %scevgep.4, align 1
  %conv.i.i244.4 = zext i8 %168 to i32
  %conv1.i.i245.4 = zext i8 %conv2.i.i247.3 to i32
  %xor.i.i246.4 = xor i32 %conv1.i.i245.4, %conv.i.i244.4
  %conv2.i.i247.4 = trunc i32 %xor.i.i246.4 to i8
  %conv107 = zext i8 %conv2.i.i247.4 to i32
  %cmp108 = icmp eq i32 %conv105, %conv107
  call void @assert(i1 zeroext %cmp108)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %r = alloca [5 x i8], align 1
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
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep29, align 1
  %call6.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 1
  store i8 %call6.1, i8* %scevgep29.1, align 1
  %call6.2 = call zeroext i8 (...) @rand()
  %scevgep29.2 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 2
  store i8 %call6.2, i8* %scevgep29.2, align 1
  %call6.3 = call zeroext i8 (...) @rand()
  %scevgep29.3 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 3
  store i8 %call6.3, i8* %scevgep29.3, align 1
  %call6.4 = call zeroext i8 (...) @rand()
  %scevgep29.4 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 4
  store i8 %call6.4, i8* %scevgep29.4, align 1
  %scevgep21 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 0
  %5 = load i8, i8* %scevgep21, align 1
  %conv.i = zext i8 %5 to i32
  %6 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %6 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %scevgep18 = getelementptr [5 x i8], [5 x i8]* %r, i64 0, i64 1
  %7 = bitcast i8* %scevgep18 to [5 x i8]*
  %scevgep23 = getelementptr i8, i8* %x, i64 1
  %scevgep21.1 = getelementptr [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %8 = load i8, i8* %scevgep21.1, align 1
  %conv.i.1 = zext i8 %8 to i32
  %9 = load i8, i8* %scevgep23, align 1
  %conv5.i.1 = zext i8 %9 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep25.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i.1, i8* %scevgep25.1, align 1
  %scevgep18.1 = getelementptr [5 x i8], [5 x i8]* %7, i64 0, i64 1
  %10 = bitcast i8* %scevgep18.1 to [5 x i8]*
  %scevgep23.1 = getelementptr i8, i8* %scevgep23, i64 1
  %scevgep21.2 = getelementptr [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %11 = load i8, i8* %scevgep21.2, align 1
  %conv.i.2 = zext i8 %11 to i32
  %12 = load i8, i8* %scevgep23.1, align 1
  %conv5.i.2 = zext i8 %12 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep25.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i.2, i8* %scevgep25.2, align 1
  %scevgep18.2 = getelementptr [5 x i8], [5 x i8]* %10, i64 0, i64 1
  %13 = bitcast i8* %scevgep18.2 to [5 x i8]*
  %scevgep23.2 = getelementptr i8, i8* %scevgep23.1, i64 1
  %scevgep21.3 = getelementptr [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %14 = load i8, i8* %scevgep21.3, align 1
  %conv.i.3 = zext i8 %14 to i32
  %15 = load i8, i8* %scevgep23.2, align 1
  %conv5.i.3 = zext i8 %15 to i32
  %xor.i.3 = xor i32 %conv.i.3, %conv5.i.3
  %conv6.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep25.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i.3, i8* %scevgep25.3, align 1
  %scevgep18.3 = getelementptr [5 x i8], [5 x i8]* %13, i64 0, i64 1
  %16 = bitcast i8* %scevgep18.3 to [5 x i8]*
  %scevgep23.3 = getelementptr i8, i8* %scevgep23.2, i64 1
  %scevgep21.4 = getelementptr [5 x i8], [5 x i8]* %16, i64 0, i64 0
  %17 = load i8, i8* %scevgep21.4, align 1
  %conv.i.4 = zext i8 %17 to i32
  %18 = load i8, i8* %scevgep23.3, align 1
  %conv5.i.4 = zext i8 %18 to i32
  %xor.i.4 = xor i32 %conv.i.4, %conv5.i.4
  %conv6.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep25.4 = getelementptr i8, i8* %x, i64 4
  store i8 %conv6.i.4, i8* %scevgep25.4, align 1
  %arraydecay7 = getelementptr inbounds [5 x i8], [5 x i8]* %r, i64 0, i64 0
  %arrayidx.i42 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %19 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %19 to i32
  %20 = load i8, i8* %x, align 1
  %conv5.i48 = zext i8 %20 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  store i8 %conv6.i50, i8* %x, align 1
  %scevgep11 = getelementptr i8, i8* %x, i64 1
  %arrayidx.i42.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %21 = load i8, i8* %arrayidx.i42.1, align 1
  %conv.i43.1 = zext i8 %21 to i32
  %22 = load i8, i8* %scevgep11, align 1
  %conv5.i48.1 = zext i8 %22 to i32
  %xor.i49.1 = xor i32 %conv.i43.1, %conv5.i48.1
  %conv6.i50.1 = trunc i32 %xor.i49.1 to i8
  %scevgep15.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i50.1, i8* %scevgep15.1, align 1
  %scevgep11.1 = getelementptr i8, i8* %scevgep11, i64 1
  %arrayidx.i42.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %23 = load i8, i8* %arrayidx.i42.2, align 1
  %conv.i43.2 = zext i8 %23 to i32
  %24 = load i8, i8* %scevgep11.1, align 1
  %conv5.i48.2 = zext i8 %24 to i32
  %xor.i49.2 = xor i32 %conv.i43.2, %conv5.i48.2
  %conv6.i50.2 = trunc i32 %xor.i49.2 to i8
  %scevgep15.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i50.2, i8* %scevgep15.2, align 1
  %scevgep11.2 = getelementptr i8, i8* %scevgep11.1, i64 1
  %arrayidx.i42.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %25 = load i8, i8* %arrayidx.i42.3, align 1
  %conv.i43.3 = zext i8 %25 to i32
  %26 = load i8, i8* %scevgep11.2, align 1
  %conv5.i48.3 = zext i8 %26 to i32
  %xor.i49.3 = xor i32 %conv.i43.3, %conv5.i48.3
  %conv6.i50.3 = trunc i32 %xor.i49.3 to i8
  %scevgep15.3 = getelementptr i8, i8* %x, i64 3
  store i8 %conv6.i50.3, i8* %scevgep15.3, align 1
  %scevgep11.3 = getelementptr i8, i8* %scevgep11.2, i64 1
  %27 = load i8, i8* %arraydecay7, align 1
  %conv.i43.4 = zext i8 %27 to i32
  %28 = load i8, i8* %scevgep11.3, align 1
  %conv5.i48.4 = zext i8 %28 to i32
  %xor.i49.4 = xor i32 %conv.i43.4, %conv5.i48.4
  %conv6.i50.4 = trunc i32 %xor.i49.4 to i8
  %scevgep15.4 = getelementptr i8, i8* %x, i64 4
  store i8 %conv6.i50.4, i8* %scevgep15.4, align 1
  %conv8 = zext i8 %call to i32
  %29 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %30 = load i8, i8* %scevgep.1, align 1
  %conv.i.i24.1 = zext i8 %30 to i32
  %conv1.i.i25.1 = zext i8 %29 to i32
  %xor.i.i26.1 = xor i32 %conv1.i.i25.1, %conv.i.i24.1
  %conv2.i.i27.1 = trunc i32 %xor.i.i26.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %31 = load i8, i8* %scevgep.2, align 1
  %conv.i.i24.2 = zext i8 %31 to i32
  %conv1.i.i25.2 = zext i8 %conv2.i.i27.1 to i32
  %xor.i.i26.2 = xor i32 %conv1.i.i25.2, %conv.i.i24.2
  %conv2.i.i27.2 = trunc i32 %xor.i.i26.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %32 = load i8, i8* %scevgep.3, align 1
  %conv.i.i24.3 = zext i8 %32 to i32
  %conv1.i.i25.3 = zext i8 %conv2.i.i27.2 to i32
  %xor.i.i26.3 = xor i32 %conv1.i.i25.3, %conv.i.i24.3
  %conv2.i.i27.3 = trunc i32 %xor.i.i26.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %33 = load i8, i8* %scevgep.4, align 1
  %conv.i.i24.4 = zext i8 %33 to i32
  %conv1.i.i25.4 = zext i8 %conv2.i.i27.3 to i32
  %xor.i.i26.4 = xor i32 %conv1.i.i25.4, %conv.i.i24.4
  %conv2.i.i27.4 = trunc i32 %xor.i.i26.4 to i8
  %conv10 = zext i8 %conv2.i.i27.4 to i32
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
