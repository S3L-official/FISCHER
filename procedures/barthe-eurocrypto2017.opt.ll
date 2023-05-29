; ModuleID = '../examples/barthe-eurocrypto2017.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  %cc = alloca [6 x [3 x i8]], align 16
  %dd = alloca [6 x [3 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep142.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep142.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep142.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep142.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep138.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep138.1, align 1
  %conv.i.i112.1 = zext i8 %4 to i32
  %conv1.i.i113.1 = zext i8 %3 to i32
  %xor.i.i114.1 = xor i32 %conv1.i.i113.1, %conv.i.i112.1
  %conv2.i.i115.1 = trunc i32 %xor.i.i114.1 to i8
  %scevgep138.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep138.2, align 1
  %conv.i.i112.2 = zext i8 %5 to i32
  %conv1.i.i113.2 = zext i8 %conv2.i.i115.1 to i32
  %xor.i.i114.2 = xor i32 %conv1.i.i113.2, %conv.i.i112.2
  %conv2.i.i115.2 = trunc i32 %xor.i.i114.2 to i8
  %conv7 = zext i8 %conv2.i.i115.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep134 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep134, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep134.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep134.1, align 1
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep134.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.2, i8* %scevgep134.2, align 1
  %scevgep131 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %6 = bitcast i8* %scevgep131 to [3 x [3 x i8]]*
  %call16.1144 = call zeroext i8 (...) @rand()
  %scevgep134.1145 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 0, i64 0
  store i8 %call16.1144, i8* %scevgep134.1145, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep134.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep134.1.1, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep134.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 0, i64 2
  store i8 %call16.2.1, i8* %scevgep134.2.1, align 1
  %scevgep131.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %6, i64 0, i64 1, i64 0
  %7 = bitcast i8* %scevgep131.1 to [3 x [3 x i8]]*
  %call16.2147 = call zeroext i8 (...) @rand()
  %scevgep134.2148 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0, i64 0
  store i8 %call16.2147, i8* %scevgep134.2148, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep134.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0, i64 1
  store i8 %call16.1.2, i8* %scevgep134.1.2, align 1
  %call16.2.2 = call zeroext i8 (...) @rand()
  %scevgep134.2.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0, i64 2
  store i8 %call16.2.2, i8* %scevgep134.2.2, align 1
  %scevgep127 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %cc, i64 0, i64 1, i64 0
  %8 = load i8, i8* %a, align 1
  %9 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #2
  store i8 %call.i, i8* %scevgep127, align 1
  %scevgep120 = getelementptr i8, i8* %a, i64 1
  %scevgep125 = getelementptr i8, i8* %b, i64 1
  %10 = load i8, i8* %scevgep120, align 1
  %11 = load i8, i8* %scevgep125, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11) #2
  %scevgep128.1 = getelementptr i8, i8* %scevgep127, i64 1
  store i8 %call.i.1, i8* %scevgep128.1, align 1
  %scevgep120.1 = getelementptr i8, i8* %scevgep120, i64 1
  %scevgep125.1 = getelementptr i8, i8* %scevgep125, i64 1
  %12 = load i8, i8* %scevgep120.1, align 1
  %13 = load i8, i8* %scevgep125.1, align 1
  %call.i.2 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13) #2
  %scevgep128.2 = getelementptr i8, i8* %scevgep127, i64 2
  store i8 %call.i.2, i8* %scevgep128.2, align 1
  %scevgep100 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep100101 = bitcast i8* %scevgep100 to [6 x [3 x i8]]*
  %scevgep113 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep113114 = bitcast i8* %scevgep113 to [6 x [3 x i8]]*
  %14 = load i8, i8* %a, align 1
  %arrayidx4.i135 = getelementptr inbounds i8, i8* %b, i64 1
  %15 = load i8, i8* %arrayidx4.i135, align 1
  %call.i136 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15) #2
  %scevgep104 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep100101, i64 0, i64 0, i64 0
  store i8 %call.i136, i8* %scevgep104, align 1
  %scevgep94 = getelementptr i8, i8* %a, i64 1
  %16 = load i8, i8* %scevgep94, align 1
  %arrayidx4.i135.1 = getelementptr inbounds i8, i8* %b, i64 2
  %17 = load i8, i8* %arrayidx4.i135.1, align 1
  %call.i136.1 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #2
  %scevgep104.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep100101, i64 0, i64 0, i64 1
  store i8 %call.i136.1, i8* %scevgep104.1, align 1
  %scevgep94.1 = getelementptr i8, i8* %scevgep94, i64 1
  %18 = load i8, i8* %scevgep94.1, align 1
  %19 = load i8, i8* %b, align 1
  %call.i136.2 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #2
  %scevgep104.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep100101, i64 0, i64 0, i64 2
  store i8 %call.i136.2, i8* %scevgep104.2, align 1
  %arrayidx.i153 = getelementptr inbounds i8, i8* %a, i64 1
  %20 = load i8, i8* %arrayidx.i153, align 1
  %21 = load i8, i8* %b, align 1
  %call.i158 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21) #2
  %scevgep117 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep113114, i64 0, i64 0, i64 0
  store i8 %call.i158, i8* %scevgep117, align 1
  %scevgep109 = getelementptr i8, i8* %b, i64 1
  %arrayidx.i153.1 = getelementptr inbounds i8, i8* %a, i64 2
  %22 = load i8, i8* %arrayidx.i153.1, align 1
  %23 = load i8, i8* %scevgep109, align 1
  %call.i158.1 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #2
  %scevgep117.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep113114, i64 0, i64 0, i64 1
  store i8 %call.i158.1, i8* %scevgep117.1, align 1
  %scevgep109.1 = getelementptr i8, i8* %scevgep109, i64 1
  %24 = load i8, i8* %a, align 1
  %25 = load i8, i8* %scevgep109.1, align 1
  %call.i158.2 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #2
  %scevgep117.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep113114, i64 0, i64 0, i64 2
  store i8 %call.i158.2, i8* %scevgep117.2, align 1
  %scevgep78 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %cc, i64 0, i64 1, i64 0
  %scevgep7879 = bitcast i8* %scevgep78 to [6 x [3 x i8]]*
  %scevgep85 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep8586 = bitcast i8* %scevgep85 to [3 x [3 x i8]]*
  %scevgep90 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep84 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep7879, i64 0, i64 0, i64 0
  %scevgep89 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep8586, i64 0, i64 0, i64 0
  %26 = load i8, i8* %scevgep84, align 1
  %conv.i = zext i8 %26 to i32
  %27 = load i8, i8* %scevgep89, align 1
  %conv5.i = zext i8 %27 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %scevgep90, align 1
  %scevgep81 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep7879, i64 0, i64 0, i64 1
  %28 = bitcast i8* %scevgep81 to [6 x [3 x i8]]*
  %scevgep88 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep8586, i64 0, i64 0, i64 1
  %29 = bitcast i8* %scevgep88 to [3 x [3 x i8]]*
  %scevgep84.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  %scevgep89.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 0
  %30 = load i8, i8* %scevgep84.1, align 1
  %conv.i.1 = zext i8 %30 to i32
  %31 = load i8, i8* %scevgep89.1, align 1
  %conv5.i.1 = zext i8 %31 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep91.1 = getelementptr i8, i8* %scevgep90, i64 1
  store i8 %conv6.i.1, i8* %scevgep91.1, align 1
  %scevgep81.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %28, i64 0, i64 0, i64 1
  %32 = bitcast i8* %scevgep81.1 to [6 x [3 x i8]]*
  %scevgep88.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 1
  %33 = bitcast i8* %scevgep88.1 to [3 x [3 x i8]]*
  %scevgep84.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %32, i64 0, i64 0, i64 0
  %scevgep89.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  %34 = load i8, i8* %scevgep84.2, align 1
  %conv.i.2 = zext i8 %34 to i32
  %35 = load i8, i8* %scevgep89.2, align 1
  %conv5.i.2 = zext i8 %35 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep91.2 = getelementptr i8, i8* %scevgep90, i64 2
  store i8 %conv6.i.2, i8* %scevgep91.2, align 1
  %scevgep25 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %dd, i64 0, i64 1, i64 0
  %scevgep2526 = bitcast i8* %scevgep25 to [6 x [3 x i8]]*
  %scevgep34 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep3435 = bitcast i8* %scevgep34 to [6 x [3 x i8]]*
  %scevgep41 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %dd, i64 0, i64 2, i64 0
  %scevgep4142 = bitcast i8* %scevgep41 to [6 x [3 x i8]]*
  %scevgep52 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep5253 = bitcast i8* %scevgep52 to [6 x [3 x i8]]*
  %scevgep59 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %dd, i64 0, i64 3, i64 0
  %scevgep5960 = bitcast i8* %scevgep59 to [6 x [3 x i8]]*
  %scevgep72 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %dd, i64 0, i64 4, i64 0
  %scevgep7273 = bitcast i8* %scevgep72 to [6 x [3 x i8]]*
  %scevgep33 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep2526, i64 0, i64 0, i64 0
  %scevgep40 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep3435, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep33, align 1
  %conv.i211 = zext i8 %36 to i32
  %37 = load i8, i8* %scevgep40, align 1
  %conv5.i216 = zext i8 %37 to i32
  %xor.i217 = xor i32 %conv.i211, %conv5.i216
  %conv6.i218 = trunc i32 %xor.i217 to i8
  %scevgep45 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep4142, i64 0, i64 0, i64 0
  store i8 %conv6.i218, i8* %scevgep45, align 1
  %scevgep30 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep2526, i64 0, i64 0, i64 1
  %38 = bitcast i8* %scevgep30 to [6 x [3 x i8]]*
  %scevgep39 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep3435, i64 0, i64 0, i64 1
  %39 = bitcast i8* %scevgep39 to [6 x [3 x i8]]*
  %scevgep33.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %38, i64 0, i64 0, i64 0
  %scevgep40.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %39, i64 0, i64 0, i64 0
  %40 = load i8, i8* %scevgep33.1, align 1
  %conv.i211.1 = zext i8 %40 to i32
  %41 = load i8, i8* %scevgep40.1, align 1
  %conv5.i216.1 = zext i8 %41 to i32
  %xor.i217.1 = xor i32 %conv.i211.1, %conv5.i216.1
  %conv6.i218.1 = trunc i32 %xor.i217.1 to i8
  %scevgep45.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep4142, i64 0, i64 0, i64 1
  store i8 %conv6.i218.1, i8* %scevgep45.1, align 1
  %scevgep30.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %38, i64 0, i64 0, i64 1
  %42 = bitcast i8* %scevgep30.1 to [6 x [3 x i8]]*
  %scevgep39.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %39, i64 0, i64 0, i64 1
  %43 = bitcast i8* %scevgep39.1 to [6 x [3 x i8]]*
  %scevgep33.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %42, i64 0, i64 0, i64 0
  %scevgep40.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %43, i64 0, i64 0, i64 0
  %44 = load i8, i8* %scevgep33.2, align 1
  %conv.i211.2 = zext i8 %44 to i32
  %45 = load i8, i8* %scevgep40.2, align 1
  %conv5.i216.2 = zext i8 %45 to i32
  %xor.i217.2 = xor i32 %conv.i211.2, %conv5.i216.2
  %conv6.i218.2 = trunc i32 %xor.i217.2 to i8
  %scevgep45.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep4142, i64 0, i64 0, i64 2
  store i8 %conv6.i218.2, i8* %scevgep45.2, align 1
  %scevgep51 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep4142, i64 0, i64 0, i64 0
  %scevgep58 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5253, i64 0, i64 0, i64 0
  %46 = load i8, i8* %scevgep51, align 1
  %conv.i244 = zext i8 %46 to i32
  %47 = load i8, i8* %scevgep58, align 1
  %conv5.i249 = zext i8 %47 to i32
  %xor.i250 = xor i32 %conv.i244, %conv5.i249
  %conv6.i251 = trunc i32 %xor.i250 to i8
  %scevgep63 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5960, i64 0, i64 0, i64 0
  store i8 %conv6.i251, i8* %scevgep63, align 1
  %scevgep48 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep4142, i64 0, i64 0, i64 1
  %48 = bitcast i8* %scevgep48 to [6 x [3 x i8]]*
  %scevgep57 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5253, i64 0, i64 0, i64 1
  %49 = bitcast i8* %scevgep57 to [6 x [3 x i8]]*
  %scevgep51.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  %scevgep58.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep51.1, align 1
  %conv.i244.1 = zext i8 %50 to i32
  %51 = load i8, i8* %scevgep58.1, align 1
  %conv5.i249.1 = zext i8 %51 to i32
  %xor.i250.1 = xor i32 %conv.i244.1, %conv5.i249.1
  %conv6.i251.1 = trunc i32 %xor.i250.1 to i8
  %scevgep63.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5960, i64 0, i64 0, i64 1
  store i8 %conv6.i251.1, i8* %scevgep63.1, align 1
  %scevgep48.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %48, i64 0, i64 0, i64 1
  %52 = bitcast i8* %scevgep48.1 to [6 x [3 x i8]]*
  %scevgep57.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %49, i64 0, i64 0, i64 1
  %53 = bitcast i8* %scevgep57.1 to [6 x [3 x i8]]*
  %scevgep51.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %scevgep58.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep51.2, align 1
  %conv.i244.2 = zext i8 %54 to i32
  %55 = load i8, i8* %scevgep58.2, align 1
  %conv5.i249.2 = zext i8 %55 to i32
  %xor.i250.2 = xor i32 %conv.i244.2, %conv5.i249.2
  %conv6.i251.2 = trunc i32 %xor.i250.2 to i8
  %scevgep63.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5960, i64 0, i64 0, i64 2
  store i8 %conv6.i251.2, i8* %scevgep63.2, align 1
  %arrayidx84 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1
  %arraydecay85 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx84, i64 0, i64 0
  %scevgep69 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5960, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep69, align 1
  %conv.i269 = zext i8 %56 to i32
  %arrayidx4.i273 = getelementptr inbounds i8, i8* %arraydecay85, i64 1
  %57 = load i8, i8* %arrayidx4.i273, align 1
  %conv5.i274 = zext i8 %57 to i32
  %xor.i275 = xor i32 %conv.i269, %conv5.i274
  %conv6.i276 = trunc i32 %xor.i275 to i8
  %scevgep76 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep7273, i64 0, i64 0, i64 0
  store i8 %conv6.i276, i8* %scevgep76, align 1
  %scevgep66 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep5960, i64 0, i64 0, i64 1
  %58 = bitcast i8* %scevgep66 to [6 x [3 x i8]]*
  %scevgep69.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %58, i64 0, i64 0, i64 0
  %59 = load i8, i8* %scevgep69.1, align 1
  %conv.i269.1 = zext i8 %59 to i32
  %arrayidx4.i273.1 = getelementptr inbounds i8, i8* %arraydecay85, i64 2
  %60 = load i8, i8* %arrayidx4.i273.1, align 1
  %conv5.i274.1 = zext i8 %60 to i32
  %xor.i275.1 = xor i32 %conv.i269.1, %conv5.i274.1
  %conv6.i276.1 = trunc i32 %xor.i275.1 to i8
  %scevgep76.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep7273, i64 0, i64 0, i64 1
  store i8 %conv6.i276.1, i8* %scevgep76.1, align 1
  %scevgep66.1 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %58, i64 0, i64 0, i64 1
  %61 = bitcast i8* %scevgep66.1 to [6 x [3 x i8]]*
  %scevgep69.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %61, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep69.2, align 1
  %conv.i269.2 = zext i8 %62 to i32
  %63 = load i8, i8* %arraydecay85, align 1
  %conv5.i274.2 = zext i8 %63 to i32
  %xor.i275.2 = xor i32 %conv.i269.2, %conv5.i274.2
  %conv6.i276.2 = trunc i32 %xor.i275.2 to i8
  %scevgep76.2 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %scevgep7273, i64 0, i64 0, i64 2
  store i8 %conv6.i276.2, i8* %scevgep76.2, align 1
  %scevgep19 = getelementptr [6 x [3 x i8]], [6 x [3 x i8]]* %dd, i64 0, i64 4, i64 0
  %64 = load i8, i8* %scevgep19, align 1
  store i8 %64, i8* %c, align 1
  %scevgep22.1 = getelementptr i8, i8* %scevgep19, i64 1
  %65 = load i8, i8* %scevgep22.1, align 1
  %scevgep23.1 = getelementptr i8, i8* %c, i64 1
  store i8 %65, i8* %scevgep23.1, align 1
  %scevgep22.2 = getelementptr i8, i8* %scevgep19, i64 2
  %66 = load i8, i8* %scevgep22.2, align 1
  %scevgep23.2 = getelementptr i8, i8* %c, i64 2
  store i8 %66, i8* %scevgep23.2, align 1
  %call96 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv97 = zext i8 %call96 to i32
  %67 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %68 = load i8, i8* %scevgep.1, align 1
  %conv.i.i192.1 = zext i8 %68 to i32
  %conv1.i.i193.1 = zext i8 %67 to i32
  %xor.i.i194.1 = xor i32 %conv1.i.i193.1, %conv.i.i192.1
  %conv2.i.i195.1 = trunc i32 %xor.i.i194.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %69 = load i8, i8* %scevgep.2, align 1
  %conv.i.i192.2 = zext i8 %69 to i32
  %conv1.i.i193.2 = zext i8 %conv2.i.i195.1 to i32
  %xor.i.i194.2 = xor i32 %conv1.i.i193.2, %conv.i.i192.2
  %conv2.i.i195.2 = trunc i32 %xor.i.i194.2 to i8
  %conv99 = zext i8 %conv2.i.i195.2 to i32
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
  %r = alloca [3 x i8], align 1
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
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [3 x i8], [3 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep29, align 1
  %call6.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [3 x i8], [3 x i8]* %r, i64 0, i64 1
  store i8 %call6.1, i8* %scevgep29.1, align 1
  %call6.2 = call zeroext i8 (...) @rand()
  %scevgep29.2 = getelementptr [3 x i8], [3 x i8]* %r, i64 0, i64 2
  store i8 %call6.2, i8* %scevgep29.2, align 1
  %scevgep21 = getelementptr [3 x i8], [3 x i8]* %r, i64 0, i64 0
  %3 = load i8, i8* %scevgep21, align 1
  %conv.i = zext i8 %3 to i32
  %4 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %4 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %scevgep18 = getelementptr [3 x i8], [3 x i8]* %r, i64 0, i64 1
  %5 = bitcast i8* %scevgep18 to [3 x i8]*
  %scevgep23 = getelementptr i8, i8* %x, i64 1
  %scevgep21.1 = getelementptr [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %6 = load i8, i8* %scevgep21.1, align 1
  %conv.i.1 = zext i8 %6 to i32
  %7 = load i8, i8* %scevgep23, align 1
  %conv5.i.1 = zext i8 %7 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep25.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i.1, i8* %scevgep25.1, align 1
  %scevgep18.1 = getelementptr [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %8 = bitcast i8* %scevgep18.1 to [3 x i8]*
  %scevgep23.1 = getelementptr i8, i8* %scevgep23, i64 1
  %scevgep21.2 = getelementptr [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %9 = load i8, i8* %scevgep21.2, align 1
  %conv.i.2 = zext i8 %9 to i32
  %10 = load i8, i8* %scevgep23.1, align 1
  %conv5.i.2 = zext i8 %10 to i32
  %xor.i.2 = xor i32 %conv.i.2, %conv5.i.2
  %conv6.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep25.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i.2, i8* %scevgep25.2, align 1
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %r, i64 0, i64 0
  %arrayidx.i42 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %11 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %11 to i32
  %12 = load i8, i8* %x, align 1
  %conv5.i48 = zext i8 %12 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  store i8 %conv6.i50, i8* %x, align 1
  %scevgep11 = getelementptr i8, i8* %x, i64 1
  %arrayidx.i42.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %13 = load i8, i8* %arrayidx.i42.1, align 1
  %conv.i43.1 = zext i8 %13 to i32
  %14 = load i8, i8* %scevgep11, align 1
  %conv5.i48.1 = zext i8 %14 to i32
  %xor.i49.1 = xor i32 %conv.i43.1, %conv5.i48.1
  %conv6.i50.1 = trunc i32 %xor.i49.1 to i8
  %scevgep15.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i50.1, i8* %scevgep15.1, align 1
  %scevgep11.1 = getelementptr i8, i8* %scevgep11, i64 1
  %15 = load i8, i8* %arraydecay7, align 1
  %conv.i43.2 = zext i8 %15 to i32
  %16 = load i8, i8* %scevgep11.1, align 1
  %conv5.i48.2 = zext i8 %16 to i32
  %xor.i49.2 = xor i32 %conv.i43.2, %conv5.i48.2
  %conv6.i50.2 = trunc i32 %xor.i49.2 to i8
  %scevgep15.2 = getelementptr i8, i8* %x, i64 2
  store i8 %conv6.i50.2, i8* %scevgep15.2, align 1
  %conv8 = zext i8 %call to i32
  %17 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %18 = load i8, i8* %scevgep.1, align 1
  %conv.i.i24.1 = zext i8 %18 to i32
  %conv1.i.i25.1 = zext i8 %17 to i32
  %xor.i.i26.1 = xor i32 %conv1.i.i25.1, %conv.i.i24.1
  %conv2.i.i27.1 = trunc i32 %xor.i.i26.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %19 = load i8, i8* %scevgep.2, align 1
  %conv.i.i24.2 = zext i8 %19 to i32
  %conv1.i.i25.2 = zext i8 %conv2.i.i27.1 to i32
  %xor.i.i26.2 = xor i32 %conv1.i.i25.2, %conv.i.i24.2
  %conv2.i.i27.2 = trunc i32 %xor.i.i26.2 to i8
  %conv10 = zext i8 %conv2.i.i27.2 to i32
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
