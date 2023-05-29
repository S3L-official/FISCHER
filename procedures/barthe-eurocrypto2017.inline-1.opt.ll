; ModuleID = '../examples/barthe-eurocrypto2017.inline-1.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
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
  ret i8 %conv2.1
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
  ret i8 %conv2.i.1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 2
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 2
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 2
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 2
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 2
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 2
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 2
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 2
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %conv5.1 = zext i8 %7 to i32
  %xor.1 = xor i32 %conv.1, %conv5.1
  %conv6.1 = trunc i32 %xor.1 to i8
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.1, i8* %scevgep.1, align 1
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
  %r = alloca [2 x [2 x i8]], align 1
  %cc = alloca [4 x [2 x i8]], align 1
  %dd = alloca [4 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep181.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep181.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep177.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep177.1, align 1
  %conv.i.i128.1 = zext i8 %3 to i32
  %conv1.i.i129.1 = zext i8 %2 to i32
  %xor.i.i130.1 = xor i32 %conv1.i.i129.1, %conv.i.i128.1
  %conv2.i.i131.1 = trunc i32 %xor.i.i130.1 to i8
  %conv7 = zext i8 %conv2.i.i131.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep173 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep173, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep173.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep173.1, align 1
  %scevgep170 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %4 = bitcast i8* %scevgep170 to [2 x [2 x i8]]*
  %call16.1183 = call zeroext i8 (...) @rand()
  %scevgep173.1184 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %4, i64 0, i64 0, i64 0
  store i8 %call16.1183, i8* %scevgep173.1184, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep173.1.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %4, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep173.1.1, align 1
  %scevgep166 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1, i64 0
  %5 = load i8, i8* %a, align 1
  %6 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %6) #2
  store i8 %call.i, i8* %scevgep166, align 1
  %scevgep164.1 = getelementptr i8, i8* %a, i64 1
  %7 = load i8, i8* %scevgep164.1, align 1
  %scevgep165.1 = getelementptr i8, i8* %b, i64 1
  %8 = load i8, i8* %scevgep165.1, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #2
  %scevgep167.1 = getelementptr i8, i8* %scevgep166, i64 1
  store i8 %call.i.1, i8* %scevgep167.1, align 1
  %scevgep137 = getelementptr i8, i8* %b, i64 1
  %scevgep142 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep142143 = bitcast i8* %scevgep142 to [4 x [2 x i8]]*
  %scevgep148 = getelementptr i8, i8* %a, i64 1
  %scevgep156 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep156157 = bitcast i8* %scevgep156 to [4 x [2 x i8]]*
  %9 = load i8, i8* %a, align 1
  %10 = load i8, i8* %scevgep137, align 1
  %call.i152 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10) #2
  %scevgep146 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep142143, i64 0, i64 0, i64 0
  store i8 %call.i152, i8* %scevgep146, align 1
  %scevgep141 = getelementptr i8, i8* %scevgep137, i64 -1
  %scevgep136.1 = getelementptr i8, i8* %a, i64 1
  %11 = load i8, i8* %scevgep136.1, align 1
  %12 = load i8, i8* %scevgep141, align 1
  %call.i152.1 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #2
  %scevgep146.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep142143, i64 0, i64 0, i64 1
  store i8 %call.i152.1, i8* %scevgep146.1, align 1
  %13 = load i8, i8* %scevgep148, align 1
  %14 = load i8, i8* %b, align 1
  %call.i174 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  %scevgep160 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep156157, i64 0, i64 0, i64 0
  store i8 %call.i174, i8* %scevgep160, align 1
  %scevgep152 = getelementptr i8, i8* %scevgep148, i64 -1
  %15 = load i8, i8* %scevgep152, align 1
  %scevgep155.1 = getelementptr i8, i8* %b, i64 1
  %16 = load i8, i8* %scevgep155.1, align 1
  %call.i174.1 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  %scevgep160.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep156157, i64 0, i64 0, i64 1
  store i8 %call.i174.1, i8* %scevgep160.1, align 1
  %scevgep129 = getelementptr i8, i8* %b, i64 1
  %17 = load i8, i8* %a, align 1
  %18 = load i8, i8* %scevgep129, align 1
  %call.i196 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  %scevgep132 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 0, i64 0
  store i8 %call.i196, i8* %scevgep132, align 1
  %scevgep131 = getelementptr i8, i8* %scevgep129, i64 -1
  %scevgep128.1 = getelementptr i8, i8* %a, i64 1
  %19 = load i8, i8* %scevgep128.1, align 1
  %20 = load i8, i8* %scevgep131, align 1
  %call.i196.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #2
  %scevgep132.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 0, i64 1
  store i8 %call.i196.1, i8* %scevgep132.1, align 1
  %scevgep117 = getelementptr i8, i8* %a, i64 1
  %scevgep123 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1, i64 0
  %21 = load i8, i8* %scevgep117, align 1
  %22 = load i8, i8* %b, align 1
  %call.i218 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #2
  store i8 %call.i218, i8* %scevgep123, align 1
  %scevgep119 = getelementptr i8, i8* %scevgep117, i64 -1
  %23 = load i8, i8* %scevgep119, align 1
  %scevgep122.1 = getelementptr i8, i8* %b, i64 1
  %24 = load i8, i8* %scevgep122.1, align 1
  %call.i218.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %scevgep124.1 = getelementptr i8, i8* %scevgep123, i64 1
  store i8 %call.i218.1, i8* %scevgep124.1, align 1
  %scevgep114 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 2, i64 0
  %25 = load i8, i8* %a, align 1
  %26 = load i8, i8* %b, align 1
  %call.i240 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #2
  store i8 %call.i240, i8* %scevgep114, align 1
  %scevgep112.1 = getelementptr i8, i8* %a, i64 1
  %27 = load i8, i8* %scevgep112.1, align 1
  %scevgep113.1 = getelementptr i8, i8* %b, i64 1
  %28 = load i8, i8* %scevgep113.1, align 1
  %call.i240.1 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %scevgep115.1 = getelementptr i8, i8* %scevgep114, i64 1
  store i8 %call.i240.1, i8* %scevgep115.1, align 1
  %scevgep101 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1, i64 0
  %scevgep105 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep107 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 1, i64 0
  %29 = load i8, i8* %scevgep101, align 1
  %conv.i = zext i8 %29 to i32
  %30 = load i8, i8* %scevgep105, align 1
  %conv5.i = zext i8 %30 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %scevgep107, align 1
  %scevgep104.1 = getelementptr i8, i8* %scevgep101, i64 1
  %31 = load i8, i8* %scevgep104.1, align 1
  %conv.i.1 = zext i8 %31 to i32
  %scevgep106.1 = getelementptr i8, i8* %scevgep105, i64 1
  %32 = load i8, i8* %scevgep106.1, align 1
  %conv5.i.1 = zext i8 %32 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep108.1 = getelementptr i8, i8* %scevgep107, i64 1
  store i8 %conv6.i.1, i8* %scevgep108.1, align 1
  %scevgep56 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 2, i64 0
  %scevgep5657 = bitcast i8* %scevgep56 to [4 x [2 x i8]]*
  %scevgep65 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 2, i64 0
  %scevgep6566 = bitcast i8* %scevgep65 to [4 x [2 x i8]]*
  %scevgep76 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 3, i64 0
  %scevgep7677 = bitcast i8* %scevgep76 to [4 x [2 x i8]]*
  %scevgep82 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 1, i64 0, i64 0
  %scevgep8283 = bitcast i8* %scevgep82 to [4 x [2 x i8]]*
  %scevgep91 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep9192 = bitcast i8* %scevgep91 to [2 x [2 x i8]]*
  %scevgep62 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 0
  %scevgep63 = getelementptr i8, i8* %scevgep62, i64 -2
  %33 = load i8, i8* %scevgep63, align 1
  %conv.i293 = zext i8 %33 to i32
  %scevgep69 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep6566, i64 0, i64 0, i64 0
  %34 = load i8, i8* %scevgep69, align 1
  %conv5.i298 = zext i8 %34 to i32
  %xor.i299 = xor i32 %conv.i293, %conv5.i298
  %conv6.i300 = trunc i32 %xor.i299 to i8
  %scevgep64 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 0
  store i8 %conv6.i300, i8* %scevgep64, align 1
  %scevgep62.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 1
  %scevgep63.1 = getelementptr i8, i8* %scevgep62.1, i64 -2
  %35 = load i8, i8* %scevgep63.1, align 1
  %conv.i293.1 = zext i8 %35 to i32
  %scevgep69.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep6566, i64 0, i64 0, i64 1
  %36 = load i8, i8* %scevgep69.1, align 1
  %conv5.i298.1 = zext i8 %36 to i32
  %xor.i299.1 = xor i32 %conv.i293.1, %conv5.i298.1
  %conv6.i300.1 = trunc i32 %xor.i299.1 to i8
  %scevgep64.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 1
  store i8 %conv6.i300.1, i8* %scevgep64.1, align 1
  %scevgep73 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep73, align 1
  %conv.i456 = zext i8 %37 to i32
  %scevgep80 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep7677, i64 0, i64 0, i64 0
  %38 = load i8, i8* %scevgep80, align 1
  %conv5.i461 = zext i8 %38 to i32
  %xor.i462 = xor i32 %conv.i456, %conv5.i461
  %conv6.i463 = trunc i32 %xor.i462 to i8
  %scevgep74 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 0
  %scevgep75 = getelementptr i8, i8* %scevgep74, i64 2
  store i8 %conv6.i463, i8* %scevgep75, align 1
  %scevgep73.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep73.1, align 1
  %conv.i456.1 = zext i8 %39 to i32
  %scevgep80.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep7677, i64 0, i64 0, i64 1
  %40 = load i8, i8* %scevgep80.1, align 1
  %conv5.i461.1 = zext i8 %40 to i32
  %xor.i462.1 = xor i32 %conv.i456.1, %conv5.i461.1
  %conv6.i463.1 = trunc i32 %xor.i462.1 to i8
  %scevgep74.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep5657, i64 0, i64 0, i64 1
  %scevgep75.1 = getelementptr i8, i8* %scevgep74.1, i64 2
  store i8 %conv6.i463.1, i8* %scevgep75.1, align 1
  %scevgep95 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep9192, i64 0, i64 1, i64 0
  %scevgep9596 = bitcast i8* %scevgep95 to [2 x [2 x i8]]*
  %scevgep88 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep8283, i64 0, i64 0, i64 0
  %scevgep89 = getelementptr i8, i8* %scevgep88, i64 -2
  %41 = load i8, i8* %scevgep89, align 1
  %conv.i421 = zext i8 %41 to i32
  %42 = load i8, i8* %scevgep95, align 1
  %conv5.i426 = zext i8 %42 to i32
  %xor.i427 = xor i32 %conv.i421, %conv5.i426
  %conv6.i428 = trunc i32 %xor.i427 to i8
  %scevgep90 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep8283, i64 0, i64 0, i64 0
  store i8 %conv6.i428, i8* %scevgep90, align 1
  %scevgep98 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep9596, i64 0, i64 0, i64 -1
  %scevgep88.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep8283, i64 0, i64 0, i64 1
  %scevgep89.1 = getelementptr i8, i8* %scevgep88.1, i64 -2
  %43 = load i8, i8* %scevgep89.1, align 1
  %conv.i421.1 = zext i8 %43 to i32
  %44 = load i8, i8* %scevgep98, align 1
  %conv5.i426.1 = zext i8 %44 to i32
  %xor.i427.1 = xor i32 %conv.i421.1, %conv5.i426.1
  %conv6.i428.1 = trunc i32 %xor.i427.1 to i8
  %scevgep90.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %scevgep8283, i64 0, i64 0, i64 1
  store i8 %conv6.i428.1, i8* %scevgep90.1, align 1
  %scevgep49 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 1, i64 0
  %45 = load i8, i8* %scevgep49, align 1
  %conv.i396 = zext i8 %45 to i32
  %scevgep53 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 0, i64 0
  %46 = load i8, i8* %scevgep53, align 1
  %conv5.i401 = zext i8 %46 to i32
  %xor.i402 = xor i32 %conv.i396, %conv5.i401
  %conv6.i403 = trunc i32 %xor.i402 to i8
  store i8 %conv6.i403, i8* %c, align 1
  %scevgep52.1 = getelementptr i8, i8* %scevgep49, i64 1
  %47 = load i8, i8* %scevgep52.1, align 1
  %conv.i396.1 = zext i8 %47 to i32
  %scevgep53.1 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 0, i64 1
  %48 = load i8, i8* %scevgep53.1, align 1
  %conv5.i401.1 = zext i8 %48 to i32
  %xor.i402.1 = xor i32 %conv.i396.1, %conv5.i401.1
  %conv6.i403.1 = trunc i32 %xor.i402.1 to i8
  %scevgep54.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i403.1, i8* %scevgep54.1, align 1
  %scevgep42 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1, i64 0
  %49 = load i8, i8* %scevgep42, align 1
  %conv.i371 = zext i8 %49 to i32
  %50 = load i8, i8* %c, align 1
  %conv5.i376 = zext i8 %50 to i32
  %xor.i377 = xor i32 %conv.i371, %conv5.i376
  %conv6.i378 = trunc i32 %xor.i377 to i8
  store i8 %conv6.i378, i8* %c, align 1
  %scevgep45.1 = getelementptr i8, i8* %scevgep42, i64 1
  %51 = load i8, i8* %scevgep45.1, align 1
  %conv.i371.1 = zext i8 %51 to i32
  %scevgep46.1 = getelementptr i8, i8* %c, i64 1
  %52 = load i8, i8* %scevgep46.1, align 1
  %conv5.i376.1 = zext i8 %52 to i32
  %xor.i377.1 = xor i32 %conv.i371.1, %conv5.i376.1
  %conv6.i378.1 = trunc i32 %xor.i377.1 to i8
  %scevgep47.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i378.1, i8* %scevgep47.1, align 1
  %scevgep32 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 1
  %scevgep3233 = bitcast i8* %scevgep32 to [2 x [2 x i8]]*
  %53 = load i8, i8* %scevgep32, align 1
  %conv.i343 = zext i8 %53 to i32
  %54 = load i8, i8* %c, align 1
  %conv5.i348 = zext i8 %54 to i32
  %xor.i349 = xor i32 %conv.i343, %conv5.i348
  %conv6.i350 = trunc i32 %xor.i349 to i8
  store i8 %conv6.i350, i8* %c, align 1
  %scevgep35 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep3233, i64 0, i64 0, i64 -1
  %55 = load i8, i8* %scevgep35, align 1
  %conv.i343.1 = zext i8 %55 to i32
  %scevgep39.1 = getelementptr i8, i8* %c, i64 1
  %56 = load i8, i8* %scevgep39.1, align 1
  %conv5.i348.1 = zext i8 %56 to i32
  %xor.i349.1 = xor i32 %conv.i343.1, %conv5.i348.1
  %conv6.i350.1 = trunc i32 %xor.i349.1 to i8
  %scevgep40.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i350.1, i8* %scevgep40.1, align 1
  %scevgep25 = getelementptr [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 2, i64 0
  %57 = load i8, i8* %scevgep25, align 1
  %conv.i318 = zext i8 %57 to i32
  %58 = load i8, i8* %c, align 1
  %conv5.i323 = zext i8 %58 to i32
  %xor.i324 = xor i32 %conv.i318, %conv5.i323
  %conv6.i325 = trunc i32 %xor.i324 to i8
  store i8 %conv6.i325, i8* %c, align 1
  %scevgep28.1 = getelementptr i8, i8* %scevgep25, i64 1
  %59 = load i8, i8* %scevgep28.1, align 1
  %conv.i318.1 = zext i8 %59 to i32
  %scevgep29.1 = getelementptr i8, i8* %c, i64 1
  %60 = load i8, i8* %scevgep29.1, align 1
  %conv5.i323.1 = zext i8 %60 to i32
  %xor.i324.1 = xor i32 %conv.i318.1, %conv5.i323.1
  %conv6.i325.1 = trunc i32 %xor.i324.1 to i8
  %scevgep30.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i325.1, i8* %scevgep30.1, align 1
  %call112 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv113 = zext i8 %call112 to i32
  %61 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %62 = load i8, i8* %scevgep.1, align 1
  %conv.i.i274.1 = zext i8 %62 to i32
  %conv1.i.i275.1 = zext i8 %61 to i32
  %xor.i.i276.1 = xor i32 %conv1.i.i275.1, %conv.i.i274.1
  %conv2.i.i277.1 = trunc i32 %xor.i.i276.1 to i8
  %conv115 = zext i8 %conv2.i.i277.1 to i32
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
  %r = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep30.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep30.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep26 = getelementptr [2 x i8], [2 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep26, align 1
  %call6.1 = call zeroext i8 (...) @rand()
  %scevgep26.1 = getelementptr [2 x i8], [2 x i8]* %r, i64 0, i64 1
  store i8 %call6.1, i8* %scevgep26.1, align 1
  %scevgep20 = getelementptr [2 x i8], [2 x i8]* %r, i64 0, i64 0
  %2 = load i8, i8* %scevgep20, align 1
  %conv.i = zext i8 %2 to i32
  %3 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %3 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %scevgep20.1 = getelementptr [2 x i8], [2 x i8]* %r, i64 0, i64 1
  %4 = load i8, i8* %scevgep20.1, align 1
  %conv.i.1 = zext i8 %4 to i32
  %scevgep21.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep21.1, align 1
  %conv5.i.1 = zext i8 %5 to i32
  %xor.i.1 = xor i32 %conv.i.1, %conv5.i.1
  %conv6.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep22.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i.1, i8* %scevgep22.1, align 1
  %scevgep8 = getelementptr [2 x i8], [2 x i8]* %r, i64 0, i64 1
  %scevgep89 = bitcast i8* %scevgep8 to [2 x i8]*
  %6 = load i8, i8* %scevgep8, align 1
  %conv.i43 = zext i8 %6 to i32
  %7 = load i8, i8* %x, align 1
  %conv5.i48 = zext i8 %7 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  store i8 %conv6.i50, i8* %x, align 1
  %scevgep11 = getelementptr [2 x i8], [2 x i8]* %scevgep89, i64 0, i64 -1
  %8 = load i8, i8* %scevgep11, align 1
  %conv.i43.1 = zext i8 %8 to i32
  %scevgep15.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep15.1, align 1
  %conv5.i48.1 = zext i8 %9 to i32
  %xor.i49.1 = xor i32 %conv.i43.1, %conv5.i48.1
  %conv6.i50.1 = trunc i32 %xor.i49.1 to i8
  %scevgep16.1 = getelementptr i8, i8* %x, i64 1
  store i8 %conv6.i50.1, i8* %scevgep16.1, align 1
  %conv8 = zext i8 %call to i32
  %10 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep.1, align 1
  %conv.i.i24.1 = zext i8 %11 to i32
  %conv1.i.i25.1 = zext i8 %10 to i32
  %xor.i.i26.1 = xor i32 %conv1.i.i25.1, %conv.i.i24.1
  %conv2.i.i27.1 = trunc i32 %xor.i.i26.1 to i8
  %conv10 = zext i8 %conv2.i.i27.1 to i32
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
