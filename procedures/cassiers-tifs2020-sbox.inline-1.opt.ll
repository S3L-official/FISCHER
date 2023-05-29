; ModuleID = '../examples/cassiers-tifs2020-sbox.inline-1.ll'
source_filename = "../examples/cassiers-tifs2020-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [37 x i8] c"../examples/cassiers-tifs2020-sbox.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 54 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 72 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 102 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 125 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 131 }], section "llvm.metadata"

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
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [2 x [2 x i8]], align 1
  %s = alloca [2 x [2 x i8]], align 1
  %p0 = alloca [2 x [2 x i8]], align 1
  %p1 = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep72.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep68.1, align 1
  %conv.i.i155.1 = zext i8 %3 to i32
  %conv1.i.i156.1 = zext i8 %2 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %conv7 = zext i8 %conv2.i.i158.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep58 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep58, align 1
  %scevgep59 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %4 = load i8, i8* %scevgep59, align 1
  %scevgep60 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %4, i8* %scevgep60, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %5 to i32
  %scevgep34.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %6 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %6 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %7 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %7 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %8)
  %scevgep42.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %9 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %scevgep46.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %11 to i32
  %scevgep47.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %12 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep33 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep33 to [2 x [2 x i8]]*
  %scevgep37 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep37 to [2 x [2 x i8]]*
  %scevgep41 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep41 to [2 x [2 x i8]]*
  %scevgep45 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep45 to [2 x [2 x i8]]*
  %scevgep49 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep49 to [2 x [2 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %18 = load i8, i8* %b, align 1
  %conv44.186 = zext i8 %18 to i32
  %scevgep34.187 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %19 = load i8, i8* %scevgep34.187, align 1
  %conv49.188 = zext i8 %19 to i32
  %xor.189 = xor i32 %conv44.186, %conv49.188
  %conv50.190 = trunc i32 %xor.189 to i8
  %scevgep38.191 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  store i8 %conv50.190, i8* %scevgep38.191, align 1
  %20 = load i8, i8* %arrayidx56.1, align 1
  %conv57.192 = zext i8 %20 to i32
  %xor58.193 = xor i32 %conv57.192, 1
  %conv59.194 = trunc i32 %xor58.193 to i8
  %scevgep35.195 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %21 = load i8, i8* %scevgep35.195, align 1
  %call64.196 = call zeroext i8 @mult(i8 zeroext %conv59.194, i8 zeroext %21)
  %scevgep42.197 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %15, i64 0, i64 0, i64 0
  store i8 %call64.196, i8* %scevgep42.197, align 1
  %22 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.198 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep39.198, align 1
  %call75.199 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %scevgep46.1100 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %16, i64 0, i64 0, i64 0
  store i8 %call75.199, i8* %scevgep46.1100, align 1
  %scevgep43.1101 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %15, i64 0, i64 0, i64 0
  %24 = load i8, i8* %scevgep43.1101, align 1
  %conv84.1102 = zext i8 %24 to i32
  %scevgep47.1103 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %16, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep47.1103, align 1
  %conv89.1104 = zext i8 %25 to i32
  %xor90.1105 = xor i32 %conv84.1102, %conv89.1104
  %conv91.1106 = trunc i32 %xor90.1105 to i8
  %scevgep50.1107 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  store i8 %conv91.1106, i8* %scevgep50.1107, align 1
  %26 = load i8, i8* %a, align 1
  %27 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %28 to i32
  %29 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %29 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep21 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep21 to [2 x [2 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %31 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %32 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.176 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %30, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep22.176, align 1
  %conv126.177 = zext i8 %33 to i32
  %34 = load i8, i8* %arrayidx128.1, align 1
  %conv129.178 = zext i8 %34 to i32
  %xor130.179 = xor i32 %conv129.178, %conv126.177
  %conv131.180 = trunc i32 %xor130.179 to i8
  store i8 %conv131.180, i8* %arrayidx128.1, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %35 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %36 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %36 to i32
  %conv1.i.i173.1 = zext i8 %35 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %conv142 = zext i8 %conv2.i.i175.1 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep12.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep12.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %2 = load i8, i8* %x, align 1
  %conv9 = zext i8 %2 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %3 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %conv16 = zext i8 %call to i32
  %4 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %5 to i32
  %conv1.i.i32.1 = zext i8 %4 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %conv18 = zext i8 %conv2.i.i34.1 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @exp4(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  %call2 = call zeroext i8 @exp4(i8 zeroext %call1)
  %call3 = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call2)
  %call4 = call zeroext i8 @exp16(i8 zeroext %call3)
  %call5 = call zeroext i8 @mult(i8 zeroext %call4, i8 zeroext %call2)
  %call6 = call zeroext i8 @mult(i8 zeroext %call5, i8 zeroext %call)
  ret i8 %call6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [2 x [2 x i8]], align 1
  %s.i = alloca [2 x [2 x i8]], align 1
  %p0.i = alloca [2 x [2 x i8]], align 1
  %p1.i = alloca [2 x [2 x i8]], align 1
  %z.i = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x i8], align 1
  %w = alloca [2 x i8], align 1
  %u = alloca [2 x i8], align 1
  %v = alloca [2 x i8], align 1
  %m = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep370.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep370.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %2) #3
  %scevgep366 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep366, align 1
  %scevgep365.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep365.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %3) #3
  %scevgep366.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep366.1, align 1
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep361 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %4 = load i8, i8* %scevgep361, align 1
  %scevgep361.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %5 = load i8, i8* %scevgep361.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %6 = load i8, i8* %arraydecay4, align 1
  %conv9.i = zext i8 %6 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay4, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep357 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %7 = load i8, i8* %scevgep357, align 1
  %conv13.i = zext i8 %7 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep357, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep353 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %8 = load i8, i8* %scevgep353, align 1
  %scevgep353.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %9 = load i8, i8* %scevgep353.1, align 1
  %conv.i.i31.i.1 = zext i8 %9 to i32
  %conv1.i.i32.i.1 = zext i8 %8 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.1 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep349 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %10 = load i8, i8* %scevgep349, align 1
  %scevgep349.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %11 = load i8, i8* %scevgep349.1, align 1
  %conv.i.i.i48.1 = zext i8 %11 to i32
  %conv1.i.i.i49.1 = zext i8 %10 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.1 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %12 = load i8, i8* %x, align 1
  %scevgep345.1 = getelementptr i8, i8* %x, i64 1
  %13 = load i8, i8* %scevgep345.1, align 1
  %conv.i.i155.i.1 = zext i8 %13 to i32
  %conv1.i.i156.i.1 = zext i8 %12 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep335 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep335, align 1
  %scevgep336 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep336, align 1
  %scevgep337 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %14, i8* %scevgep337, align 1
  %scevgep308.1 = getelementptr i8, i8* %x, i64 1
  %15 = load i8, i8* %scevgep308.1, align 1
  %conv44.i.1 = zext i8 %15 to i32
  %scevgep311.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep311.1, align 1
  %conv49.i.1 = zext i8 %16 to i32
  %xor.i62.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i62.1 to i8
  %scevgep315.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep315.1, align 1
  %17 = load i8, i8* %arraydecay5, align 1
  %conv57.i.1 = zext i8 %17 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep312.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep312.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %18) #3
  %scevgep319.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep319.1, align 1
  %19 = load i8, i8* %arraydecay5, align 1
  %scevgep316.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep316.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  %scevgep323.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep323.1, align 1
  %scevgep320.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %21 = load i8, i8* %scevgep320.1, align 1
  %conv84.i.1 = zext i8 %21 to i32
  %scevgep324.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep324.1, align 1
  %conv89.i.1 = zext i8 %22 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep327.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep327.1, align 1
  %scevgep310 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep310 to [2 x [2 x i8]]*
  %scevgep314 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %24 = bitcast i8* %scevgep314 to [2 x [2 x i8]]*
  %scevgep318 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep318 to [2 x [2 x i8]]*
  %scevgep322 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep322 to [2 x [2 x i8]]*
  %scevgep326 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep326 to [2 x [2 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %28 = load i8, i8* %x, align 1
  %conv44.i.1491 = zext i8 %28 to i32
  %scevgep311.1492 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %23, i64 0, i64 0, i64 0
  %29 = load i8, i8* %scevgep311.1492, align 1
  %conv49.i.1493 = zext i8 %29 to i32
  %xor.i62.1494 = xor i32 %conv44.i.1491, %conv49.i.1493
  %conv50.i.1495 = trunc i32 %xor.i62.1494 to i8
  %scevgep315.1496 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %24, i64 0, i64 0, i64 0
  store i8 %conv50.i.1495, i8* %scevgep315.1496, align 1
  %30 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1497 = zext i8 %30 to i32
  %xor58.i.1498 = xor i32 %conv57.i.1497, 1
  %conv59.i.1499 = trunc i32 %xor58.i.1498 to i8
  %scevgep312.1500 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %23, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep312.1500, align 1
  %call64.i.1501 = call zeroext i8 @mult(i8 zeroext %conv59.i.1499, i8 zeroext %31) #3
  %scevgep319.1502 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  store i8 %call64.i.1501, i8* %scevgep319.1502, align 1
  %32 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep316.1503 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %24, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep316.1503, align 1
  %call75.i.1504 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #3
  %scevgep323.1505 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %call75.i.1504, i8* %scevgep323.1505, align 1
  %scevgep320.1506 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  %34 = load i8, i8* %scevgep320.1506, align 1
  %conv84.i.1507 = zext i8 %34 to i32
  %scevgep324.1508 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %26, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep324.1508, align 1
  %conv89.i.1509 = zext i8 %35 to i32
  %xor90.i.1510 = xor i32 %conv84.i.1507, %conv89.i.1509
  %conv91.i.1511 = trunc i32 %xor90.i.1510 to i8
  %scevgep327.1512 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %conv91.i.1511, i8* %scevgep327.1512, align 1
  %36 = load i8, i8* %arraydecay5, align 1
  %37 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  store i8 %call111.i, i8* %arraydecay6, align 1
  %scevgep298.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep298.1, align 1
  %conv126.i.1 = zext i8 %38 to i32
  %39 = load i8, i8* %arraydecay6, align 1
  %conv129.i.1 = zext i8 %39 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay6, align 1
  %scevgep297 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %40 = bitcast i8* %scevgep297 to [2 x [2 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %41 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %42 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep298.1482 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %40, i64 0, i64 0, i64 0
  %43 = load i8, i8* %scevgep298.1482, align 1
  %conv126.i.1483 = zext i8 %43 to i32
  %44 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1484 = zext i8 %44 to i32
  %xor130.i.1485 = xor i32 %conv129.i.1484, %conv126.i.1483
  %conv131.i.1486 = trunc i32 %xor130.i.1485 to i8
  store i8 %conv131.i.1486, i8* %arrayidx128.i.1, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep288 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %45 = load i8, i8* %scevgep288, align 1
  %scevgep288.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %46 = load i8, i8* %scevgep288.1, align 1
  %conv.i.i172.i.1 = zext i8 %46 to i32
  %conv1.i.i173.i.1 = zext i8 %45 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.1 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep283 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %47 = load i8, i8* %scevgep283, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %47) #3
  %scevgep284 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep284, align 1
  %scevgep283.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %48 = load i8, i8* %scevgep283.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %48) #3
  %scevgep284.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep284.1, align 1
  %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep279 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %49 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %50 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i.i99.1 = zext i8 %50 to i32
  %conv1.i.i.i100.1 = zext i8 %49 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.1 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %51 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %51 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep275 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %52 = load i8, i8* %scevgep275, align 1
  %conv13.i119 = zext i8 %52 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep275, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep271 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %53 = load i8, i8* %scevgep271, align 1
  %scevgep271.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %54 = load i8, i8* %scevgep271.1, align 1
  %conv.i.i31.i131.1 = zext i8 %54 to i32
  %conv1.i.i32.i132.1 = zext i8 %53 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.1 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %call.i171 = call zeroext i8 (...) @rand() #3
  %call1.i172 = call zeroext i8 (...) @rand() #3
  %conv.i173 = zext i8 %call.i171 to i32
  %scevgep267 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %55 = load i8, i8* %scevgep267, align 1
  %scevgep267.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %56 = load i8, i8* %scevgep267.1, align 1
  %conv.i.i.i179.1 = zext i8 %56 to i32
  %conv1.i.i.i180.1 = zext i8 %55 to i32
  %xor.i.i.i181.1 = xor i32 %conv1.i.i.i180.1, %conv.i.i.i179.1
  %conv2.i.i.i182.1 = trunc i32 %xor.i.i.i181.1 to i8
  %conv3.i185 = zext i8 %conv2.i.i.i182.1 to i32
  %cmp.i186 = icmp eq i32 %conv.i173, %conv3.i185
  call void @assume(i1 zeroext %cmp.i186) #3
  %conv5.i187 = zext i8 %call1.i172 to i32
  %scevgep263 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %57 = load i8, i8* %scevgep263, align 1
  %scevgep263.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %58 = load i8, i8* %scevgep263.1, align 1
  %conv.i.i155.i194.1 = zext i8 %58 to i32
  %conv1.i.i156.i195.1 = zext i8 %57 to i32
  %xor.i.i157.i196.1 = xor i32 %conv1.i.i156.i195.1, %conv.i.i155.i194.1
  %conv2.i.i158.i197.1 = trunc i32 %xor.i.i157.i196.1 to i8
  %conv7.i200 = zext i8 %conv2.i.i158.i197.1 to i32
  %cmp8.i201 = icmp eq i32 %conv5.i187, %conv7.i200
  call void @assume(i1 zeroext %cmp8.i201) #3
  %call16.i209 = call zeroext i8 (...) @rand() #3
  %scevgep253 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i209, i8* %scevgep253, align 1
  %scevgep254 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %59 = load i8, i8* %scevgep254, align 1
  %scevgep255 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %59, i8* %scevgep255, align 1
  %scevgep226.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %60 = load i8, i8* %scevgep226.1, align 1
  %conv44.i236.1 = zext i8 %60 to i32
  %scevgep229.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %61 = load i8, i8* %scevgep229.1, align 1
  %conv49.i241.1 = zext i8 %61 to i32
  %xor.i242.1 = xor i32 %conv44.i236.1, %conv49.i241.1
  %conv50.i243.1 = trunc i32 %xor.i242.1 to i8
  %scevgep233.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i243.1, i8* %scevgep233.1, align 1
  %62 = load i8, i8* %arraydecay10, align 1
  %conv57.i250.1 = zext i8 %62 to i32
  %xor58.i251.1 = xor i32 %conv57.i250.1, 1
  %conv59.i252.1 = trunc i32 %xor58.i251.1 to i8
  %scevgep230.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %63 = load i8, i8* %scevgep230.1, align 1
  %call64.i257.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1, i8 zeroext %63) #3
  %scevgep237.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i257.1, i8* %scevgep237.1, align 1
  %64 = load i8, i8* %arraydecay10, align 1
  %scevgep234.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep234.1, align 1
  %call75.i268.1 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #3
  %scevgep241.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i268.1, i8* %scevgep241.1, align 1
  %scevgep238.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep238.1, align 1
  %conv84.i277.1 = zext i8 %66 to i32
  %scevgep242.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep242.1, align 1
  %conv89.i282.1 = zext i8 %67 to i32
  %xor90.i283.1 = xor i32 %conv84.i277.1, %conv89.i282.1
  %conv91.i284.1 = trunc i32 %xor90.i283.1 to i8
  %scevgep245.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i284.1, i8* %scevgep245.1, align 1
  %scevgep228 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %68 = bitcast i8* %scevgep228 to [2 x [2 x i8]]*
  %scevgep232 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep232 to [2 x [2 x i8]]*
  %scevgep236 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep236 to [2 x [2 x i8]]*
  %scevgep240 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %71 = bitcast i8* %scevgep240 to [2 x [2 x i8]]*
  %scevgep244 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep244 to [2 x [2 x i8]]*
  %arrayidx56.i249.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i263.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep226.1455 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %73 = load i8, i8* %scevgep226.1455, align 1
  %conv44.i236.1456 = zext i8 %73 to i32
  %scevgep229.1457 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %68, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep229.1457, align 1
  %conv49.i241.1458 = zext i8 %74 to i32
  %xor.i242.1459 = xor i32 %conv44.i236.1456, %conv49.i241.1458
  %conv50.i243.1460 = trunc i32 %xor.i242.1459 to i8
  %scevgep233.1461 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %conv50.i243.1460, i8* %scevgep233.1461, align 1
  %75 = load i8, i8* %arrayidx56.i249.1, align 1
  %conv57.i250.1462 = zext i8 %75 to i32
  %xor58.i251.1463 = xor i32 %conv57.i250.1462, 1
  %conv59.i252.1464 = trunc i32 %xor58.i251.1463 to i8
  %scevgep230.1465 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %68, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep230.1465, align 1
  %call64.i257.1466 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1464, i8 zeroext %76) #3
  %scevgep237.1467 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %70, i64 0, i64 0, i64 0
  store i8 %call64.i257.1466, i8* %scevgep237.1467, align 1
  %77 = load i8, i8* %arrayidx70.i263.1, align 1
  %scevgep234.1468 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %69, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep234.1468, align 1
  %call75.i268.1469 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %scevgep241.1470 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %71, i64 0, i64 0, i64 0
  store i8 %call75.i268.1469, i8* %scevgep241.1470, align 1
  %scevgep238.1471 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %70, i64 0, i64 0, i64 0
  %79 = load i8, i8* %scevgep238.1471, align 1
  %conv84.i277.1472 = zext i8 %79 to i32
  %scevgep242.1473 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %71, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep242.1473, align 1
  %conv89.i282.1474 = zext i8 %80 to i32
  %xor90.i283.1475 = xor i32 %conv84.i277.1472, %conv89.i282.1474
  %conv91.i284.1476 = trunc i32 %xor90.i283.1475 to i8
  %scevgep245.1477 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %72, i64 0, i64 0, i64 0
  store i8 %conv91.i284.1476, i8* %scevgep245.1477, align 1
  %81 = load i8, i8* %arraydecay10, align 1
  %82 = load i8, i8* %arraydecay11, align 1
  %call111.i301 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #3
  store i8 %call111.i301, i8* %arraydecay12, align 1
  %scevgep216.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %83 = load i8, i8* %scevgep216.1, align 1
  %conv126.i313.1 = zext i8 %83 to i32
  %84 = load i8, i8* %arraydecay12, align 1
  %conv129.i316.1 = zext i8 %84 to i32
  %xor130.i317.1 = xor i32 %conv129.i316.1, %conv126.i313.1
  %conv131.i318.1 = trunc i32 %xor130.i317.1 to i8
  store i8 %conv131.i318.1, i8* %arraydecay12, align 1
  %scevgep215 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep215 to [2 x [2 x i8]]*
  %arrayidx108.i298.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %86 = load i8, i8* %arrayidx108.i298.1, align 1
  %arrayidx110.i300.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %87 = load i8, i8* %arrayidx110.i300.1, align 1
  %call111.i301.1 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  %arrayidx113.i303.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i301.1, i8* %arrayidx113.i303.1, align 1
  %arrayidx128.i315.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep216.1446 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %85, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep216.1446, align 1
  %conv126.i313.1447 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx128.i315.1, align 1
  %conv129.i316.1448 = zext i8 %89 to i32
  %xor130.i317.1449 = xor i32 %conv129.i316.1448, %conv126.i313.1447
  %conv131.i318.1450 = trunc i32 %xor130.i317.1449 to i8
  store i8 %conv131.i318.1450, i8* %arrayidx128.i315.1, align 1
  %call139.i324 = call zeroext i8 @mult(i8 zeroext %call.i171, i8 zeroext %call1.i172) #3
  %conv140.i325 = zext i8 %call139.i324 to i32
  %scevgep206 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %90 = load i8, i8* %scevgep206, align 1
  %scevgep206.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %91 = load i8, i8* %scevgep206.1, align 1
  %conv.i.i172.i332.1 = zext i8 %91 to i32
  %conv1.i.i173.i333.1 = zext i8 %90 to i32
  %xor.i.i174.i334.1 = xor i32 %conv1.i.i173.i333.1, %conv.i.i172.i332.1
  %conv2.i.i175.i335.1 = trunc i32 %xor.i.i174.i334.1 to i8
  %conv142.i338 = zext i8 %conv2.i.i175.i335.1 to i32
  %cmp143.i339 = icmp eq i32 %conv140.i325, %conv142.i338
  call void @assert(i1 zeroext %cmp143.i339) #3
  %scevgep201 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %92 = load i8, i8* %scevgep201, align 1
  %call.i349 = call zeroext i8 @exp16(i8 zeroext %92) #3
  %scevgep202 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  store i8 %call.i349, i8* %scevgep202, align 1
  %scevgep201.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %93 = load i8, i8* %scevgep201.1, align 1
  %call.i349.1 = call zeroext i8 @exp16(i8 zeroext %93) #3
  %scevgep202.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  store i8 %call.i349.1, i8* %scevgep202.1, align 1
  %arraydecay15 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %call.i387 = call zeroext i8 (...) @rand() #3
  %call1.i388 = call zeroext i8 (...) @rand() #3
  %conv.i389 = zext i8 %call.i387 to i32
  %scevgep197 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %94 = load i8, i8* %scevgep197, align 1
  %scevgep197.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %95 = load i8, i8* %scevgep197.1, align 1
  %conv.i.i.i395.1 = zext i8 %95 to i32
  %conv1.i.i.i396.1 = zext i8 %94 to i32
  %xor.i.i.i397.1 = xor i32 %conv1.i.i.i396.1, %conv.i.i.i395.1
  %conv2.i.i.i398.1 = trunc i32 %xor.i.i.i397.1 to i8
  %conv3.i401 = zext i8 %conv2.i.i.i398.1 to i32
  %cmp.i402 = icmp eq i32 %conv.i389, %conv3.i401
  call void @assume(i1 zeroext %cmp.i402) #3
  %conv5.i403 = zext i8 %call1.i388 to i32
  %scevgep193 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %96 = load i8, i8* %scevgep193, align 1
  %scevgep193.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %97 = load i8, i8* %scevgep193.1, align 1
  %conv.i.i155.i410.1 = zext i8 %97 to i32
  %conv1.i.i156.i411.1 = zext i8 %96 to i32
  %xor.i.i157.i412.1 = xor i32 %conv1.i.i156.i411.1, %conv.i.i155.i410.1
  %conv2.i.i158.i413.1 = trunc i32 %xor.i.i157.i412.1 to i8
  %conv7.i416 = zext i8 %conv2.i.i158.i413.1 to i32
  %cmp8.i417 = icmp eq i32 %conv5.i403, %conv7.i416
  call void @assume(i1 zeroext %cmp8.i417) #3
  %call16.i425 = call zeroext i8 (...) @rand() #3
  %scevgep183 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i425, i8* %scevgep183, align 1
  %scevgep184 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %98 = load i8, i8* %scevgep184, align 1
  %scevgep185 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %98, i8* %scevgep185, align 1
  %scevgep156.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %99 = load i8, i8* %scevgep156.1, align 1
  %conv44.i452.1 = zext i8 %99 to i32
  %scevgep159.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %100 = load i8, i8* %scevgep159.1, align 1
  %conv49.i457.1 = zext i8 %100 to i32
  %xor.i458.1 = xor i32 %conv44.i452.1, %conv49.i457.1
  %conv50.i459.1 = trunc i32 %xor.i458.1 to i8
  %scevgep163.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i459.1, i8* %scevgep163.1, align 1
  %101 = load i8, i8* %arraydecay15, align 1
  %conv57.i466.1 = zext i8 %101 to i32
  %xor58.i467.1 = xor i32 %conv57.i466.1, 1
  %conv59.i468.1 = trunc i32 %xor58.i467.1 to i8
  %scevgep160.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %102 = load i8, i8* %scevgep160.1, align 1
  %call64.i473.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1, i8 zeroext %102) #3
  %scevgep167.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i473.1, i8* %scevgep167.1, align 1
  %103 = load i8, i8* %arraydecay15, align 1
  %scevgep164.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep164.1, align 1
  %call75.i484.1 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104) #3
  %scevgep171.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i484.1, i8* %scevgep171.1, align 1
  %scevgep168.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %105 = load i8, i8* %scevgep168.1, align 1
  %conv84.i493.1 = zext i8 %105 to i32
  %scevgep172.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %106 = load i8, i8* %scevgep172.1, align 1
  %conv89.i498.1 = zext i8 %106 to i32
  %xor90.i499.1 = xor i32 %conv84.i493.1, %conv89.i498.1
  %conv91.i500.1 = trunc i32 %xor90.i499.1 to i8
  %scevgep175.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i500.1, i8* %scevgep175.1, align 1
  %scevgep158 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %107 = bitcast i8* %scevgep158 to [2 x [2 x i8]]*
  %scevgep162 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep162 to [2 x [2 x i8]]*
  %scevgep166 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %109 = bitcast i8* %scevgep166 to [2 x [2 x i8]]*
  %scevgep170 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep170 to [2 x [2 x i8]]*
  %scevgep174 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep174 to [2 x [2 x i8]]*
  %arrayidx56.i465.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %arrayidx70.i479.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %scevgep156.1419 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %112 = load i8, i8* %scevgep156.1419, align 1
  %conv44.i452.1420 = zext i8 %112 to i32
  %scevgep159.1421 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %107, i64 0, i64 0, i64 0
  %113 = load i8, i8* %scevgep159.1421, align 1
  %conv49.i457.1422 = zext i8 %113 to i32
  %xor.i458.1423 = xor i32 %conv44.i452.1420, %conv49.i457.1422
  %conv50.i459.1424 = trunc i32 %xor.i458.1423 to i8
  %scevgep163.1425 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %108, i64 0, i64 0, i64 0
  store i8 %conv50.i459.1424, i8* %scevgep163.1425, align 1
  %114 = load i8, i8* %arrayidx56.i465.1, align 1
  %conv57.i466.1426 = zext i8 %114 to i32
  %xor58.i467.1427 = xor i32 %conv57.i466.1426, 1
  %conv59.i468.1428 = trunc i32 %xor58.i467.1427 to i8
  %scevgep160.1429 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %107, i64 0, i64 0, i64 0
  %115 = load i8, i8* %scevgep160.1429, align 1
  %call64.i473.1430 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1428, i8 zeroext %115) #3
  %scevgep167.1431 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %109, i64 0, i64 0, i64 0
  store i8 %call64.i473.1430, i8* %scevgep167.1431, align 1
  %116 = load i8, i8* %arrayidx70.i479.1, align 1
  %scevgep164.1432 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %108, i64 0, i64 0, i64 0
  %117 = load i8, i8* %scevgep164.1432, align 1
  %call75.i484.1433 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #3
  %scevgep171.1434 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %110, i64 0, i64 0, i64 0
  store i8 %call75.i484.1433, i8* %scevgep171.1434, align 1
  %scevgep168.1435 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %109, i64 0, i64 0, i64 0
  %118 = load i8, i8* %scevgep168.1435, align 1
  %conv84.i493.1436 = zext i8 %118 to i32
  %scevgep172.1437 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %110, i64 0, i64 0, i64 0
  %119 = load i8, i8* %scevgep172.1437, align 1
  %conv89.i498.1438 = zext i8 %119 to i32
  %xor90.i499.1439 = xor i32 %conv84.i493.1436, %conv89.i498.1438
  %conv91.i500.1440 = trunc i32 %xor90.i499.1439 to i8
  %scevgep175.1441 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %111, i64 0, i64 0, i64 0
  store i8 %conv91.i500.1440, i8* %scevgep175.1441, align 1
  %120 = load i8, i8* %arraydecay15, align 1
  %121 = load i8, i8* %arraydecay16, align 1
  %call111.i517 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #3
  store i8 %call111.i517, i8* %arraydecay17, align 1
  %scevgep146.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %122 = load i8, i8* %scevgep146.1, align 1
  %conv126.i529.1 = zext i8 %122 to i32
  %123 = load i8, i8* %arraydecay17, align 1
  %conv129.i532.1 = zext i8 %123 to i32
  %xor130.i533.1 = xor i32 %conv129.i532.1, %conv126.i529.1
  %conv131.i534.1 = trunc i32 %xor130.i533.1 to i8
  store i8 %conv131.i534.1, i8* %arraydecay17, align 1
  %scevgep145 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep145 to [2 x [2 x i8]]*
  %arrayidx108.i514.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %125 = load i8, i8* %arrayidx108.i514.1, align 1
  %arrayidx110.i516.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %126 = load i8, i8* %arrayidx110.i516.1, align 1
  %call111.i517.1 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126) #3
  %arrayidx113.i519.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call111.i517.1, i8* %arrayidx113.i519.1, align 1
  %arrayidx128.i531.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep146.1410 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %124, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep146.1410, align 1
  %conv126.i529.1411 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx128.i531.1, align 1
  %conv129.i532.1412 = zext i8 %128 to i32
  %xor130.i533.1413 = xor i32 %conv129.i532.1412, %conv126.i529.1411
  %conv131.i534.1414 = trunc i32 %xor130.i533.1413 to i8
  store i8 %conv131.i534.1414, i8* %arrayidx128.i531.1, align 1
  %call139.i540 = call zeroext i8 @mult(i8 zeroext %call.i387, i8 zeroext %call1.i388) #3
  %conv140.i541 = zext i8 %call139.i540 to i32
  %scevgep136 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %129 = load i8, i8* %scevgep136, align 1
  %scevgep136.1 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %130 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i172.i548.1 = zext i8 %130 to i32
  %conv1.i.i173.i549.1 = zext i8 %129 to i32
  %xor.i.i174.i550.1 = xor i32 %conv1.i.i173.i549.1, %conv.i.i172.i548.1
  %conv2.i.i175.i551.1 = trunc i32 %xor.i.i174.i550.1 to i8
  %conv142.i554 = zext i8 %conv2.i.i175.i551.1 to i32
  %cmp143.i555 = icmp eq i32 %conv140.i541, %conv142.i554
  call void @assert(i1 zeroext %cmp143.i555) #3
  %arraydecay18 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %call.i588 = call zeroext i8 (...) @rand() #3
  %call1.i589 = call zeroext i8 (...) @rand() #3
  %conv.i590 = zext i8 %call.i588 to i32
  %scevgep132 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %131 = load i8, i8* %scevgep132, align 1
  %scevgep132.1 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %132 = load i8, i8* %scevgep132.1, align 1
  %conv.i.i.i596.1 = zext i8 %132 to i32
  %conv1.i.i.i597.1 = zext i8 %131 to i32
  %xor.i.i.i598.1 = xor i32 %conv1.i.i.i597.1, %conv.i.i.i596.1
  %conv2.i.i.i599.1 = trunc i32 %xor.i.i.i598.1 to i8
  %conv3.i602 = zext i8 %conv2.i.i.i599.1 to i32
  %cmp.i603 = icmp eq i32 %conv.i590, %conv3.i602
  call void @assume(i1 zeroext %cmp.i603) #3
  %conv5.i604 = zext i8 %call1.i589 to i32
  %scevgep128 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %133 = load i8, i8* %scevgep128, align 1
  %scevgep128.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %134 = load i8, i8* %scevgep128.1, align 1
  %conv.i.i155.i611.1 = zext i8 %134 to i32
  %conv1.i.i156.i612.1 = zext i8 %133 to i32
  %xor.i.i157.i613.1 = xor i32 %conv1.i.i156.i612.1, %conv.i.i155.i611.1
  %conv2.i.i158.i614.1 = trunc i32 %xor.i.i157.i613.1 to i8
  %conv7.i617 = zext i8 %conv2.i.i158.i614.1 to i32
  %cmp8.i618 = icmp eq i32 %conv5.i604, %conv7.i617
  call void @assume(i1 zeroext %cmp8.i618) #3
  %call16.i626 = call zeroext i8 (...) @rand() #3
  %scevgep118 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i626, i8* %scevgep118, align 1
  %scevgep119 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %135 = load i8, i8* %scevgep119, align 1
  %scevgep120 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %135, i8* %scevgep120, align 1
  %scevgep91.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %136 = load i8, i8* %scevgep91.1, align 1
  %conv44.i653.1 = zext i8 %136 to i32
  %scevgep94.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep94.1, align 1
  %conv49.i658.1 = zext i8 %137 to i32
  %xor.i659.1 = xor i32 %conv44.i653.1, %conv49.i658.1
  %conv50.i660.1 = trunc i32 %xor.i659.1 to i8
  %scevgep98.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i660.1, i8* %scevgep98.1, align 1
  %138 = load i8, i8* %arraydecay18, align 1
  %conv57.i667.1 = zext i8 %138 to i32
  %xor58.i668.1 = xor i32 %conv57.i667.1, 1
  %conv59.i669.1 = trunc i32 %xor58.i668.1 to i8
  %scevgep95.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep95.1, align 1
  %call64.i674.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1, i8 zeroext %139) #3
  %scevgep102.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i674.1, i8* %scevgep102.1, align 1
  %140 = load i8, i8* %arraydecay18, align 1
  %scevgep99.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %141 = load i8, i8* %scevgep99.1, align 1
  %call75.i685.1 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141) #3
  %scevgep106.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i685.1, i8* %scevgep106.1, align 1
  %scevgep103.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %142 = load i8, i8* %scevgep103.1, align 1
  %conv84.i694.1 = zext i8 %142 to i32
  %scevgep107.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep107.1, align 1
  %conv89.i699.1 = zext i8 %143 to i32
  %xor90.i700.1 = xor i32 %conv84.i694.1, %conv89.i699.1
  %conv91.i701.1 = trunc i32 %xor90.i700.1 to i8
  %scevgep110.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i701.1, i8* %scevgep110.1, align 1
  %scevgep93 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %144 = bitcast i8* %scevgep93 to [2 x [2 x i8]]*
  %scevgep97 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %145 = bitcast i8* %scevgep97 to [2 x [2 x i8]]*
  %scevgep101 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep101 to [2 x [2 x i8]]*
  %scevgep105 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep105 to [2 x [2 x i8]]*
  %scevgep109 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep109 to [2 x [2 x i8]]*
  %arrayidx56.i666.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %arrayidx70.i680.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %scevgep91.1383 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %149 = load i8, i8* %scevgep91.1383, align 1
  %conv44.i653.1384 = zext i8 %149 to i32
  %scevgep94.1385 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %144, i64 0, i64 0, i64 0
  %150 = load i8, i8* %scevgep94.1385, align 1
  %conv49.i658.1386 = zext i8 %150 to i32
  %xor.i659.1387 = xor i32 %conv44.i653.1384, %conv49.i658.1386
  %conv50.i660.1388 = trunc i32 %xor.i659.1387 to i8
  %scevgep98.1389 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %145, i64 0, i64 0, i64 0
  store i8 %conv50.i660.1388, i8* %scevgep98.1389, align 1
  %151 = load i8, i8* %arrayidx56.i666.1, align 1
  %conv57.i667.1390 = zext i8 %151 to i32
  %xor58.i668.1391 = xor i32 %conv57.i667.1390, 1
  %conv59.i669.1392 = trunc i32 %xor58.i668.1391 to i8
  %scevgep95.1393 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %144, i64 0, i64 0, i64 0
  %152 = load i8, i8* %scevgep95.1393, align 1
  %call64.i674.1394 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1392, i8 zeroext %152) #3
  %scevgep102.1395 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %146, i64 0, i64 0, i64 0
  store i8 %call64.i674.1394, i8* %scevgep102.1395, align 1
  %153 = load i8, i8* %arrayidx70.i680.1, align 1
  %scevgep99.1396 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %145, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep99.1396, align 1
  %call75.i685.1397 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %scevgep106.1398 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %147, i64 0, i64 0, i64 0
  store i8 %call75.i685.1397, i8* %scevgep106.1398, align 1
  %scevgep103.1399 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %146, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep103.1399, align 1
  %conv84.i694.1400 = zext i8 %155 to i32
  %scevgep107.1401 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %147, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep107.1401, align 1
  %conv89.i699.1402 = zext i8 %156 to i32
  %xor90.i700.1403 = xor i32 %conv84.i694.1400, %conv89.i699.1402
  %conv91.i701.1404 = trunc i32 %xor90.i700.1403 to i8
  %scevgep110.1405 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %148, i64 0, i64 0, i64 0
  store i8 %conv91.i701.1404, i8* %scevgep110.1405, align 1
  %157 = load i8, i8* %arraydecay18, align 1
  %158 = load i8, i8* %arraydecay19, align 1
  %call111.i718 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  store i8 %call111.i718, i8* %y, align 1
  %scevgep82.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep82.1, align 1
  %conv126.i730.1 = zext i8 %159 to i32
  %160 = load i8, i8* %y, align 1
  %conv129.i733.1 = zext i8 %160 to i32
  %xor130.i734.1 = xor i32 %conv129.i733.1, %conv126.i730.1
  %conv131.i735.1 = trunc i32 %xor130.i734.1 to i8
  store i8 %conv131.i735.1, i8* %y, align 1
  %scevgep81 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %161 = bitcast i8* %scevgep81 to [2 x [2 x i8]]*
  %arrayidx108.i715.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %162 = load i8, i8* %arrayidx108.i715.1, align 1
  %arrayidx110.i717.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %163 = load i8, i8* %arrayidx110.i717.1, align 1
  %call111.i718.1 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %arrayidx113.i720.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i718.1, i8* %arrayidx113.i720.1, align 1
  %arrayidx128.i732.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep82.1374 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %161, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep82.1374, align 1
  %conv126.i730.1375 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx128.i732.1, align 1
  %conv129.i733.1376 = zext i8 %165 to i32
  %xor130.i734.1377 = xor i32 %conv129.i733.1376, %conv126.i730.1375
  %conv131.i735.1378 = trunc i32 %xor130.i734.1377 to i8
  store i8 %conv131.i735.1378, i8* %arrayidx128.i732.1, align 1
  %call139.i741 = call zeroext i8 @mult(i8 zeroext %call.i588, i8 zeroext %call1.i589) #3
  %conv140.i742 = zext i8 %call139.i741 to i32
  %166 = load i8, i8* %y, align 1
  %scevgep72.1 = getelementptr i8, i8* %y, i64 1
  %167 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i172.i749.1 = zext i8 %167 to i32
  %conv1.i.i173.i750.1 = zext i8 %166 to i32
  %xor.i.i174.i751.1 = xor i32 %conv1.i.i173.i750.1, %conv.i.i172.i749.1
  %conv2.i.i175.i752.1 = trunc i32 %xor.i.i174.i751.1 to i8
  %conv142.i755 = zext i8 %conv2.i.i175.i752.1 to i32
  %cmp143.i756 = icmp eq i32 %conv140.i742, %conv142.i755
  call void @assert(i1 zeroext %cmp143.i756) #3
  %call.i760 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i761 = call zeroext i8 @mult(i8 zeroext %call.i760, i8 zeroext %call) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i761) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i761, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i760) #3
  %conv21 = zext i8 %call6.i to i32
  %168 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %169 = load i8, i8* %scevgep.1, align 1
  %conv.i.i772.1 = zext i8 %169 to i32
  %conv1.i.i773.1 = zext i8 %168 to i32
  %xor.i.i774.1 = xor i32 %conv1.i.i773.1, %conv.i.i772.1
  %conv2.i.i775.1 = trunc i32 %xor.i.i774.1 to i8
  %conv23 = zext i8 %conv2.i.i775.1 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [2 x [2 x i8]], align 1
  %s.i = alloca [2 x [2 x i8]], align 1
  %p0.i = alloca [2 x [2 x i8]], align 1
  %p1.i = alloca [2 x [2 x i8]], align 1
  %z.i = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep106.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep106.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %scevgep102 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %2, i8* %scevgep102, align 1
  %scevgep101.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep101.1, align 1
  %scevgep102.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %3, i8* %scevgep102.1, align 1
  %arrayidx6 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %4 = load i8, i8* %x, align 1
  %scevgep34.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep34.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep40 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %6 = load i8, i8* %scevgep40, align 1
  %scevgep40.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %7 = load i8, i8* %scevgep40.1, align 1
  %conv.i.i155.i.1 = zext i8 %7 to i32
  %conv1.i.i156.i.1 = zext i8 %6 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep46 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep46, align 1
  %scevgep47 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep47, align 1
  %scevgep48 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %8, i8* %scevgep48, align 1
  %scevgep59.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %9 = load i8, i8* %scevgep59.1, align 1
  %conv44.i.1 = zext i8 %9 to i32
  %scevgep62.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep62.1, align 1
  %conv49.i.1 = zext i8 %10 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep66.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep66.1, align 1
  %11 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %11 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep63.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep63.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %12) #3
  %scevgep70.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep70.1, align 1
  %13 = load i8, i8* %x, align 1
  %scevgep67.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep67.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #3
  %scevgep74.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep74.1, align 1
  %scevgep71.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep71.1, align 1
  %conv84.i.1 = zext i8 %15 to i32
  %scevgep75.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep75.1, align 1
  %conv89.i.1 = zext i8 %16 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep78.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep78.1, align 1
  %scevgep61 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep61 to [2 x [2 x i8]]*
  %scevgep65 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %18 = bitcast i8* %scevgep65 to [2 x [2 x i8]]*
  %scevgep69 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %19 = bitcast i8* %scevgep69 to [2 x [2 x i8]]*
  %scevgep73 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %20 = bitcast i8* %scevgep73 to [2 x [2 x i8]]*
  %scevgep77 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %21 = bitcast i8* %scevgep77 to [2 x [2 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1110 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %22 = load i8, i8* %scevgep59.1110, align 1
  %conv44.i.1111 = zext i8 %22 to i32
  %scevgep62.1112 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep62.1112, align 1
  %conv49.i.1113 = zext i8 %23 to i32
  %xor.i.1114 = xor i32 %conv44.i.1111, %conv49.i.1113
  %conv50.i.1115 = trunc i32 %xor.i.1114 to i8
  %scevgep66.1116 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %18, i64 0, i64 0, i64 0
  store i8 %conv50.i.1115, i8* %scevgep66.1116, align 1
  %24 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1117 = zext i8 %24 to i32
  %xor58.i.1118 = xor i32 %conv57.i.1117, 1
  %conv59.i.1119 = trunc i32 %xor58.i.1118 to i8
  %scevgep63.1120 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep63.1120, align 1
  %call64.i.1121 = call zeroext i8 @mult(i8 zeroext %conv59.i.1119, i8 zeroext %25) #3
  %scevgep70.1122 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %19, i64 0, i64 0, i64 0
  store i8 %call64.i.1121, i8* %scevgep70.1122, align 1
  %26 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.1123 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %18, i64 0, i64 0, i64 0
  %27 = load i8, i8* %scevgep67.1123, align 1
  %call75.i.1124 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  %scevgep74.1125 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %20, i64 0, i64 0, i64 0
  store i8 %call75.i.1124, i8* %scevgep74.1125, align 1
  %scevgep71.1126 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %19, i64 0, i64 0, i64 0
  %28 = load i8, i8* %scevgep71.1126, align 1
  %conv84.i.1127 = zext i8 %28 to i32
  %scevgep75.1128 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %20, i64 0, i64 0, i64 0
  %29 = load i8, i8* %scevgep75.1128, align 1
  %conv89.i.1129 = zext i8 %29 to i32
  %xor90.i.1130 = xor i32 %conv84.i.1127, %conv89.i.1129
  %conv91.i.1131 = trunc i32 %xor90.i.1130 to i8
  %scevgep78.1132 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %21, i64 0, i64 0, i64 0
  store i8 %conv91.i.1131, i8* %scevgep78.1132, align 1
  %30 = load i8, i8* %x, align 1
  %31 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep90.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %32 = load i8, i8* %scevgep90.1, align 1
  %conv126.i.1 = zext i8 %32 to i32
  %33 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %33 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep89 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep89 to [2 x [2 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %35 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %36 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep90.1137 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %34, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep90.1137, align 1
  %conv126.i.1138 = zext i8 %37 to i32
  %38 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1139 = zext i8 %38 to i32
  %xor130.i.1140 = xor i32 %conv129.i.1139, %conv126.i.1138
  %conv131.i.1141 = trunc i32 %xor130.i.1140 to i8
  store i8 %conv131.i.1141, i8* %arrayidx128.i.1, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep96 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep97 = getelementptr i8, i8* %scevgep96, i64 2
  %39 = load i8, i8* %scevgep97, align 1
  %scevgep96.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep97.1 = getelementptr i8, i8* %scevgep96.1, i64 2
  %40 = load i8, i8* %scevgep97.1, align 1
  %conv.i.i172.i.1 = zext i8 %40 to i32
  %conv1.i.i173.i.1 = zext i8 %39 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.1 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep26 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %41 = load i8, i8* %scevgep26, align 1
  store i8 %41, i8* %y, align 1
  %scevgep29.1 = getelementptr i8, i8* %scevgep26, i64 1
  %42 = load i8, i8* %scevgep29.1, align 1
  %scevgep30.1 = getelementptr i8, i8* %y, i64 1
  store i8 %42, i8* %scevgep30.1, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48 to i32
  %43 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %44 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %44 to i32
  %conv1.i.i63.1 = zext i8 %43 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %conv16 = zext i8 %conv2.i.i65.1 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  call void @assert(i1 zeroext %cmp17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @af(i8 zeroext %x) #2 {
entry:
  %conv = zext i8 %x to i32
  %call = call zeroext i8 @rotl1(i8 zeroext %x)
  %conv1 = zext i8 %call to i32
  %xor = xor i32 %conv, %conv1
  %call2 = call zeroext i8 @rotl2(i8 zeroext %x)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %call5 = call zeroext i8 @rotl3(i8 zeroext %x)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor4, %conv6
  %call8 = call zeroext i8 @rotl4(i8 zeroext %x)
  %conv9 = zext i8 %call8 to i32
  %xor10 = xor i32 %xor7, %conv9
  %xor11 = xor i32 %xor10, 99
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

declare dso_local zeroext i8 @rotl1(i8 zeroext) #1

declare dso_local zeroext i8 @rotl2(i8 zeroext) #1

declare dso_local zeroext i8 @rotl3(i8 zeroext) #1

declare dso_local zeroext i8 @rotl4(i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sbox(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %x) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i) #3
  %call1 = call zeroext i8 @af(i8 zeroext %call6.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %r.i.i = alloca [2 x [2 x i8]], align 1
  %s.i.i = alloca [2 x [2 x i8]], align 1
  %p0.i.i = alloca [2 x [2 x i8]], align 1
  %p1.i.i = alloca [2 x [2 x i8]], align 1
  %z.i.i = alloca [2 x [2 x i8]], align 1
  %z.i = alloca [2 x i8], align 1
  %w.i = alloca [2 x i8], align 1
  %u.i = alloca [2 x i8], align 1
  %v.i = alloca [2 x i8], align 1
  %m.i = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep388.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep388.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %2 = load i8, i8* %x, align 1
  %scevgep384.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep384.1, align 1
  %conv.i.i.i.1 = zext i8 %3 to i32
  %conv1.i.i.i.1 = zext i8 %2 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %4 = load i8, i8* %x, align 1
  %call.i.i19 = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep380 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i19, i8* %scevgep380, align 1
  %scevgep379.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep379.1, align 1
  %call.i.i19.1 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep380.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i19.1, i8* %scevgep380.1, align 1
  %arraydecay4.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i22 = zext i8 %call.i28.i to i32
  %scevgep375 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %6 = load i8, i8* %scevgep375, align 1
  %scevgep375.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %7 = load i8, i8* %scevgep375.1, align 1
  %conv.i.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %conv2.i.i23 = zext i8 %conv2.i.i.i.i.1 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i22, %conv2.i.i23
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %8 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %xor.i.i24 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i24 to i8
  store i8 %conv10.i.i, i8* %arraydecay4.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep371 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %9 = load i8, i8* %scevgep371, align 1
  %conv13.i.i = zext i8 %9 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep371, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep367 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %10 = load i8, i8* %scevgep367, align 1
  %scevgep367.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %11 = load i8, i8* %scevgep367.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %11 to i32
  %conv1.i.i32.i.i.1 = zext i8 %10 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.1 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep363 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep363, align 1
  %scevgep363.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep363.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %13 to i32
  %conv1.i.i.i49.i.1 = zext i8 %12 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.1 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %14 = load i8, i8* %x, align 1
  %scevgep359.1 = getelementptr i8, i8* %x, i64 1
  %15 = load i8, i8* %scevgep359.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %15 to i32
  %conv1.i.i156.i.i.1 = zext i8 %14 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.1 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %scevgep349 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i.i, i8* %scevgep349, align 1
  %scevgep350 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep350, align 1
  %scevgep351 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %16, i8* %scevgep351, align 1
  %scevgep322.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep322.1, align 1
  %conv44.i.i.1 = zext i8 %17 to i32
  %scevgep325.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep325.1, align 1
  %conv49.i.i.1 = zext i8 %18 to i32
  %xor.i62.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i62.i.1 to i8
  %scevgep329.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep329.1, align 1
  %19 = load i8, i8* %arraydecay5.i, align 1
  %conv57.i.i.1 = zext i8 %19 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep326.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep326.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %20) #3
  %scevgep333.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep333.1, align 1
  %21 = load i8, i8* %arraydecay5.i, align 1
  %scevgep330.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep330.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  %scevgep337.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep337.1, align 1
  %scevgep334.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep334.1, align 1
  %conv84.i.i.1 = zext i8 %23 to i32
  %scevgep338.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep338.1, align 1
  %conv89.i.i.1 = zext i8 %24 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep341.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep341.1, align 1
  %scevgep324 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep324 to [2 x [2 x i8]]*
  %scevgep328 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep328 to [2 x [2 x i8]]*
  %scevgep332 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep332 to [2 x [2 x i8]]*
  %scevgep336 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep336 to [2 x [2 x i8]]*
  %scevgep340 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep340 to [2 x [2 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %30 = load i8, i8* %x, align 1
  %conv44.i.i.1509 = zext i8 %30 to i32
  %scevgep325.1510 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep325.1510, align 1
  %conv49.i.i.1511 = zext i8 %31 to i32
  %xor.i62.i.1512 = xor i32 %conv44.i.i.1509, %conv49.i.i.1511
  %conv50.i.i.1513 = trunc i32 %xor.i62.i.1512 to i8
  %scevgep329.1514 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1513, i8* %scevgep329.1514, align 1
  %32 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1515 = zext i8 %32 to i32
  %xor58.i.i.1516 = xor i32 %conv57.i.i.1515, 1
  %conv59.i.i.1517 = trunc i32 %xor58.i.i.1516 to i8
  %scevgep326.1518 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep326.1518, align 1
  %call64.i.i.1519 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1517, i8 zeroext %33) #3
  %scevgep333.1520 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1519, i8* %scevgep333.1520, align 1
  %34 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep330.1521 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %26, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep330.1521, align 1
  %call75.i.i.1522 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #3
  %scevgep337.1523 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1522, i8* %scevgep337.1523, align 1
  %scevgep334.1524 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep334.1524, align 1
  %conv84.i.i.1525 = zext i8 %36 to i32
  %scevgep338.1526 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %28, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep338.1526, align 1
  %conv89.i.i.1527 = zext i8 %37 to i32
  %xor90.i.i.1528 = xor i32 %conv84.i.i.1525, %conv89.i.i.1527
  %conv91.i.i.1529 = trunc i32 %xor90.i.i.1528 to i8
  %scevgep341.1530 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1529, i8* %scevgep341.1530, align 1
  %38 = load i8, i8* %arraydecay5.i, align 1
  %39 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #3
  store i8 %call111.i.i, i8* %arraydecay6.i, align 1
  %scevgep312.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %40 = load i8, i8* %scevgep312.1, align 1
  %conv126.i.i.1 = zext i8 %40 to i32
  %41 = load i8, i8* %arraydecay6.i, align 1
  %conv129.i.i.1 = zext i8 %41 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep311 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep311 to [2 x [2 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %43 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %44 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep312.1500 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %42, i64 0, i64 0, i64 0
  %45 = load i8, i8* %scevgep312.1500, align 1
  %conv126.i.i.1501 = zext i8 %45 to i32
  %46 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1502 = zext i8 %46 to i32
  %xor130.i.i.1503 = xor i32 %conv129.i.i.1502, %conv126.i.i.1501
  %conv131.i.i.1504 = trunc i32 %xor130.i.i.1503 to i8
  store i8 %conv131.i.i.1504, i8* %arrayidx128.i.i.1, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep302 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %47 = load i8, i8* %scevgep302, align 1
  %scevgep302.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %48 = load i8, i8* %scevgep302.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %48 to i32
  %conv1.i.i173.i.i.1 = zext i8 %47 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.1 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep297 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %49 = load i8, i8* %scevgep297, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %49) #3
  %scevgep298 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep298, align 1
  %scevgep297.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %50 = load i8, i8* %scevgep297.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %50) #3
  %scevgep298.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep298.1, align 1
  %arraydecay9.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep293 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %51 = load i8, i8* %scevgep293, align 1
  %scevgep293.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %52 = load i8, i8* %scevgep293.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %52 to i32
  %conv1.i.i.i100.i.1 = zext i8 %51 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.1 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %53 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %53 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep289 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %54 = load i8, i8* %scevgep289, align 1
  %conv13.i119.i = zext i8 %54 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep289, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep285 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %55 = load i8, i8* %scevgep285, align 1
  %scevgep285.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %56 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %56 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %55 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.1 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %call.i171.i = call zeroext i8 (...) @rand() #3
  %call1.i172.i = call zeroext i8 (...) @rand() #3
  %conv.i173.i = zext i8 %call.i171.i to i32
  %scevgep281 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %57 = load i8, i8* %scevgep281, align 1
  %scevgep281.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %58 = load i8, i8* %scevgep281.1, align 1
  %conv.i.i.i179.i.1 = zext i8 %58 to i32
  %conv1.i.i.i180.i.1 = zext i8 %57 to i32
  %xor.i.i.i181.i.1 = xor i32 %conv1.i.i.i180.i.1, %conv.i.i.i179.i.1
  %conv2.i.i.i182.i.1 = trunc i32 %xor.i.i.i181.i.1 to i8
  %conv3.i185.i = zext i8 %conv2.i.i.i182.i.1 to i32
  %cmp.i186.i = icmp eq i32 %conv.i173.i, %conv3.i185.i
  call void @assume(i1 zeroext %cmp.i186.i) #3
  %conv5.i187.i = zext i8 %call1.i172.i to i32
  %scevgep277 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %59 = load i8, i8* %scevgep277, align 1
  %scevgep277.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %60 = load i8, i8* %scevgep277.1, align 1
  %conv.i.i155.i194.i.1 = zext i8 %60 to i32
  %conv1.i.i156.i195.i.1 = zext i8 %59 to i32
  %xor.i.i157.i196.i.1 = xor i32 %conv1.i.i156.i195.i.1, %conv.i.i155.i194.i.1
  %conv2.i.i158.i197.i.1 = trunc i32 %xor.i.i157.i196.i.1 to i8
  %conv7.i200.i = zext i8 %conv2.i.i158.i197.i.1 to i32
  %cmp8.i201.i = icmp eq i32 %conv5.i187.i, %conv7.i200.i
  call void @assume(i1 zeroext %cmp8.i201.i) #3
  %call16.i209.i = call zeroext i8 (...) @rand() #3
  %scevgep267 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i209.i, i8* %scevgep267, align 1
  %scevgep268 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %61 = load i8, i8* %scevgep268, align 1
  %scevgep269 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %61, i8* %scevgep269, align 1
  %scevgep240.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %62 = load i8, i8* %scevgep240.1, align 1
  %conv44.i236.i.1 = zext i8 %62 to i32
  %scevgep243.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %63 = load i8, i8* %scevgep243.1, align 1
  %conv49.i241.i.1 = zext i8 %63 to i32
  %xor.i242.i.1 = xor i32 %conv44.i236.i.1, %conv49.i241.i.1
  %conv50.i243.i.1 = trunc i32 %xor.i242.i.1 to i8
  %scevgep247.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i243.i.1, i8* %scevgep247.1, align 1
  %64 = load i8, i8* %arraydecay10.i, align 1
  %conv57.i250.i.1 = zext i8 %64 to i32
  %xor58.i251.i.1 = xor i32 %conv57.i250.i.1, 1
  %conv59.i252.i.1 = trunc i32 %xor58.i251.i.1 to i8
  %scevgep244.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep244.1, align 1
  %call64.i257.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1, i8 zeroext %65) #3
  %scevgep251.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i257.i.1, i8* %scevgep251.1, align 1
  %66 = load i8, i8* %arraydecay10.i, align 1
  %scevgep248.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep248.1, align 1
  %call75.i268.i.1 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #3
  %scevgep255.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i268.i.1, i8* %scevgep255.1, align 1
  %scevgep252.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %68 = load i8, i8* %scevgep252.1, align 1
  %conv84.i277.i.1 = zext i8 %68 to i32
  %scevgep256.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep256.1, align 1
  %conv89.i282.i.1 = zext i8 %69 to i32
  %xor90.i283.i.1 = xor i32 %conv84.i277.i.1, %conv89.i282.i.1
  %conv91.i284.i.1 = trunc i32 %xor90.i283.i.1 to i8
  %scevgep259.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i284.i.1, i8* %scevgep259.1, align 1
  %scevgep242 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep242 to [2 x [2 x i8]]*
  %scevgep246 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %71 = bitcast i8* %scevgep246 to [2 x [2 x i8]]*
  %scevgep250 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep250 to [2 x [2 x i8]]*
  %scevgep254 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep254 to [2 x [2 x i8]]*
  %scevgep258 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %74 = bitcast i8* %scevgep258 to [2 x [2 x i8]]*
  %arrayidx56.i249.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %arrayidx70.i263.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %scevgep240.1473 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %75 = load i8, i8* %scevgep240.1473, align 1
  %conv44.i236.i.1474 = zext i8 %75 to i32
  %scevgep243.1475 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %70, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep243.1475, align 1
  %conv49.i241.i.1476 = zext i8 %76 to i32
  %xor.i242.i.1477 = xor i32 %conv44.i236.i.1474, %conv49.i241.i.1476
  %conv50.i243.i.1478 = trunc i32 %xor.i242.i.1477 to i8
  %scevgep247.1479 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %71, i64 0, i64 0, i64 0
  store i8 %conv50.i243.i.1478, i8* %scevgep247.1479, align 1
  %77 = load i8, i8* %arrayidx56.i249.i.1, align 1
  %conv57.i250.i.1480 = zext i8 %77 to i32
  %xor58.i251.i.1481 = xor i32 %conv57.i250.i.1480, 1
  %conv59.i252.i.1482 = trunc i32 %xor58.i251.i.1481 to i8
  %scevgep244.1483 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %70, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep244.1483, align 1
  %call64.i257.i.1484 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1482, i8 zeroext %78) #3
  %scevgep251.1485 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %72, i64 0, i64 0, i64 0
  store i8 %call64.i257.i.1484, i8* %scevgep251.1485, align 1
  %79 = load i8, i8* %arrayidx70.i263.i.1, align 1
  %scevgep248.1486 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %71, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep248.1486, align 1
  %call75.i268.i.1487 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %scevgep255.1488 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %73, i64 0, i64 0, i64 0
  store i8 %call75.i268.i.1487, i8* %scevgep255.1488, align 1
  %scevgep252.1489 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %72, i64 0, i64 0, i64 0
  %81 = load i8, i8* %scevgep252.1489, align 1
  %conv84.i277.i.1490 = zext i8 %81 to i32
  %scevgep256.1491 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %73, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep256.1491, align 1
  %conv89.i282.i.1492 = zext i8 %82 to i32
  %xor90.i283.i.1493 = xor i32 %conv84.i277.i.1490, %conv89.i282.i.1492
  %conv91.i284.i.1494 = trunc i32 %xor90.i283.i.1493 to i8
  %scevgep259.1495 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %74, i64 0, i64 0, i64 0
  store i8 %conv91.i284.i.1494, i8* %scevgep259.1495, align 1
  %83 = load i8, i8* %arraydecay10.i, align 1
  %84 = load i8, i8* %arraydecay11.i, align 1
  %call111.i301.i = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  store i8 %call111.i301.i, i8* %arraydecay12.i, align 1
  %scevgep230.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep230.1, align 1
  %conv126.i313.i.1 = zext i8 %85 to i32
  %86 = load i8, i8* %arraydecay12.i, align 1
  %conv129.i316.i.1 = zext i8 %86 to i32
  %xor130.i317.i.1 = xor i32 %conv129.i316.i.1, %conv126.i313.i.1
  %conv131.i318.i.1 = trunc i32 %xor130.i317.i.1 to i8
  store i8 %conv131.i318.i.1, i8* %arraydecay12.i, align 1
  %scevgep229 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %87 = bitcast i8* %scevgep229 to [2 x [2 x i8]]*
  %arrayidx108.i298.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %88 = load i8, i8* %arrayidx108.i298.i.1, align 1
  %arrayidx110.i300.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %89 = load i8, i8* %arrayidx110.i300.i.1, align 1
  %call111.i301.i.1 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89) #3
  %arrayidx113.i303.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call111.i301.i.1, i8* %arrayidx113.i303.i.1, align 1
  %arrayidx128.i315.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep230.1464 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %87, i64 0, i64 0, i64 0
  %90 = load i8, i8* %scevgep230.1464, align 1
  %conv126.i313.i.1465 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx128.i315.i.1, align 1
  %conv129.i316.i.1466 = zext i8 %91 to i32
  %xor130.i317.i.1467 = xor i32 %conv129.i316.i.1466, %conv126.i313.i.1465
  %conv131.i318.i.1468 = trunc i32 %xor130.i317.i.1467 to i8
  store i8 %conv131.i318.i.1468, i8* %arrayidx128.i315.i.1, align 1
  %call139.i324.i = call zeroext i8 @mult(i8 zeroext %call.i171.i, i8 zeroext %call1.i172.i) #3
  %conv140.i325.i = zext i8 %call139.i324.i to i32
  %scevgep220 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %92 = load i8, i8* %scevgep220, align 1
  %scevgep220.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %93 = load i8, i8* %scevgep220.1, align 1
  %conv.i.i172.i332.i.1 = zext i8 %93 to i32
  %conv1.i.i173.i333.i.1 = zext i8 %92 to i32
  %xor.i.i174.i334.i.1 = xor i32 %conv1.i.i173.i333.i.1, %conv.i.i172.i332.i.1
  %conv2.i.i175.i335.i.1 = trunc i32 %xor.i.i174.i334.i.1 to i8
  %conv142.i338.i = zext i8 %conv2.i.i175.i335.i.1 to i32
  %cmp143.i339.i = icmp eq i32 %conv140.i325.i, %conv142.i338.i
  call void @assert(i1 zeroext %cmp143.i339.i) #3
  %scevgep215 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %94 = load i8, i8* %scevgep215, align 1
  %call.i349.i = call zeroext i8 @exp16(i8 zeroext %94) #3
  %scevgep216 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i349.i, i8* %scevgep216, align 1
  %scevgep215.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %95 = load i8, i8* %scevgep215.1, align 1
  %call.i349.i.1 = call zeroext i8 @exp16(i8 zeroext %95) #3
  %scevgep216.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i349.i.1, i8* %scevgep216.1, align 1
  %arraydecay15.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %call.i387.i = call zeroext i8 (...) @rand() #3
  %call1.i388.i = call zeroext i8 (...) @rand() #3
  %conv.i389.i = zext i8 %call.i387.i to i32
  %scevgep211 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %96 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %97 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i.i395.i.1 = zext i8 %97 to i32
  %conv1.i.i.i396.i.1 = zext i8 %96 to i32
  %xor.i.i.i397.i.1 = xor i32 %conv1.i.i.i396.i.1, %conv.i.i.i395.i.1
  %conv2.i.i.i398.i.1 = trunc i32 %xor.i.i.i397.i.1 to i8
  %conv3.i401.i = zext i8 %conv2.i.i.i398.i.1 to i32
  %cmp.i402.i = icmp eq i32 %conv.i389.i, %conv3.i401.i
  call void @assume(i1 zeroext %cmp.i402.i) #3
  %conv5.i403.i = zext i8 %call1.i388.i to i32
  %scevgep207 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %98 = load i8, i8* %scevgep207, align 1
  %scevgep207.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %99 = load i8, i8* %scevgep207.1, align 1
  %conv.i.i155.i410.i.1 = zext i8 %99 to i32
  %conv1.i.i156.i411.i.1 = zext i8 %98 to i32
  %xor.i.i157.i412.i.1 = xor i32 %conv1.i.i156.i411.i.1, %conv.i.i155.i410.i.1
  %conv2.i.i158.i413.i.1 = trunc i32 %xor.i.i157.i412.i.1 to i8
  %conv7.i416.i = zext i8 %conv2.i.i158.i413.i.1 to i32
  %cmp8.i417.i = icmp eq i32 %conv5.i403.i, %conv7.i416.i
  call void @assume(i1 zeroext %cmp8.i417.i) #3
  %call16.i425.i = call zeroext i8 (...) @rand() #3
  %scevgep197 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i425.i, i8* %scevgep197, align 1
  %scevgep198 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %100 = load i8, i8* %scevgep198, align 1
  %scevgep199 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %100, i8* %scevgep199, align 1
  %scevgep170.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %101 = load i8, i8* %scevgep170.1, align 1
  %conv44.i452.i.1 = zext i8 %101 to i32
  %scevgep173.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %102 = load i8, i8* %scevgep173.1, align 1
  %conv49.i457.i.1 = zext i8 %102 to i32
  %xor.i458.i.1 = xor i32 %conv44.i452.i.1, %conv49.i457.i.1
  %conv50.i459.i.1 = trunc i32 %xor.i458.i.1 to i8
  %scevgep177.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i459.i.1, i8* %scevgep177.1, align 1
  %103 = load i8, i8* %arraydecay15.i, align 1
  %conv57.i466.i.1 = zext i8 %103 to i32
  %xor58.i467.i.1 = xor i32 %conv57.i466.i.1, 1
  %conv59.i468.i.1 = trunc i32 %xor58.i467.i.1 to i8
  %scevgep174.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep174.1, align 1
  %call64.i473.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1, i8 zeroext %104) #3
  %scevgep181.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i473.i.1, i8* %scevgep181.1, align 1
  %105 = load i8, i8* %arraydecay15.i, align 1
  %scevgep178.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %106 = load i8, i8* %scevgep178.1, align 1
  %call75.i484.i.1 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106) #3
  %scevgep185.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i484.i.1, i8* %scevgep185.1, align 1
  %scevgep182.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep182.1, align 1
  %conv84.i493.i.1 = zext i8 %107 to i32
  %scevgep186.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %108 = load i8, i8* %scevgep186.1, align 1
  %conv89.i498.i.1 = zext i8 %108 to i32
  %xor90.i499.i.1 = xor i32 %conv84.i493.i.1, %conv89.i498.i.1
  %conv91.i500.i.1 = trunc i32 %xor90.i499.i.1 to i8
  %scevgep189.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i500.i.1, i8* %scevgep189.1, align 1
  %scevgep172 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %109 = bitcast i8* %scevgep172 to [2 x [2 x i8]]*
  %scevgep176 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep176 to [2 x [2 x i8]]*
  %scevgep180 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep180 to [2 x [2 x i8]]*
  %scevgep184 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %112 = bitcast i8* %scevgep184 to [2 x [2 x i8]]*
  %scevgep188 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep188 to [2 x [2 x i8]]*
  %arrayidx56.i465.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %arrayidx70.i479.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %scevgep170.1437 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %114 = load i8, i8* %scevgep170.1437, align 1
  %conv44.i452.i.1438 = zext i8 %114 to i32
  %scevgep173.1439 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %109, i64 0, i64 0, i64 0
  %115 = load i8, i8* %scevgep173.1439, align 1
  %conv49.i457.i.1440 = zext i8 %115 to i32
  %xor.i458.i.1441 = xor i32 %conv44.i452.i.1438, %conv49.i457.i.1440
  %conv50.i459.i.1442 = trunc i32 %xor.i458.i.1441 to i8
  %scevgep177.1443 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %110, i64 0, i64 0, i64 0
  store i8 %conv50.i459.i.1442, i8* %scevgep177.1443, align 1
  %116 = load i8, i8* %arrayidx56.i465.i.1, align 1
  %conv57.i466.i.1444 = zext i8 %116 to i32
  %xor58.i467.i.1445 = xor i32 %conv57.i466.i.1444, 1
  %conv59.i468.i.1446 = trunc i32 %xor58.i467.i.1445 to i8
  %scevgep174.1447 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %109, i64 0, i64 0, i64 0
  %117 = load i8, i8* %scevgep174.1447, align 1
  %call64.i473.i.1448 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1446, i8 zeroext %117) #3
  %scevgep181.1449 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %111, i64 0, i64 0, i64 0
  store i8 %call64.i473.i.1448, i8* %scevgep181.1449, align 1
  %118 = load i8, i8* %arrayidx70.i479.i.1, align 1
  %scevgep178.1450 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %110, i64 0, i64 0, i64 0
  %119 = load i8, i8* %scevgep178.1450, align 1
  %call75.i484.i.1451 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %scevgep185.1452 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %112, i64 0, i64 0, i64 0
  store i8 %call75.i484.i.1451, i8* %scevgep185.1452, align 1
  %scevgep182.1453 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %111, i64 0, i64 0, i64 0
  %120 = load i8, i8* %scevgep182.1453, align 1
  %conv84.i493.i.1454 = zext i8 %120 to i32
  %scevgep186.1455 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %112, i64 0, i64 0, i64 0
  %121 = load i8, i8* %scevgep186.1455, align 1
  %conv89.i498.i.1456 = zext i8 %121 to i32
  %xor90.i499.i.1457 = xor i32 %conv84.i493.i.1454, %conv89.i498.i.1456
  %conv91.i500.i.1458 = trunc i32 %xor90.i499.i.1457 to i8
  %scevgep189.1459 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %113, i64 0, i64 0, i64 0
  store i8 %conv91.i500.i.1458, i8* %scevgep189.1459, align 1
  %122 = load i8, i8* %arraydecay15.i, align 1
  %123 = load i8, i8* %arraydecay16.i, align 1
  %call111.i517.i = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123) #3
  store i8 %call111.i517.i, i8* %arraydecay17.i, align 1
  %scevgep160.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %124 = load i8, i8* %scevgep160.1, align 1
  %conv126.i529.i.1 = zext i8 %124 to i32
  %125 = load i8, i8* %arraydecay17.i, align 1
  %conv129.i532.i.1 = zext i8 %125 to i32
  %xor130.i533.i.1 = xor i32 %conv129.i532.i.1, %conv126.i529.i.1
  %conv131.i534.i.1 = trunc i32 %xor130.i533.i.1 to i8
  store i8 %conv131.i534.i.1, i8* %arraydecay17.i, align 1
  %scevgep159 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %126 = bitcast i8* %scevgep159 to [2 x [2 x i8]]*
  %arrayidx108.i514.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %127 = load i8, i8* %arrayidx108.i514.i.1, align 1
  %arrayidx110.i516.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %128 = load i8, i8* %arrayidx110.i516.i.1, align 1
  %call111.i517.i.1 = call zeroext i8 @mult(i8 zeroext %127, i8 zeroext %128) #3
  %arrayidx113.i519.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call111.i517.i.1, i8* %arrayidx113.i519.i.1, align 1
  %arrayidx128.i531.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep160.1428 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %126, i64 0, i64 0, i64 0
  %129 = load i8, i8* %scevgep160.1428, align 1
  %conv126.i529.i.1429 = zext i8 %129 to i32
  %130 = load i8, i8* %arrayidx128.i531.i.1, align 1
  %conv129.i532.i.1430 = zext i8 %130 to i32
  %xor130.i533.i.1431 = xor i32 %conv129.i532.i.1430, %conv126.i529.i.1429
  %conv131.i534.i.1432 = trunc i32 %xor130.i533.i.1431 to i8
  store i8 %conv131.i534.i.1432, i8* %arrayidx128.i531.i.1, align 1
  %call139.i540.i = call zeroext i8 @mult(i8 zeroext %call.i387.i, i8 zeroext %call1.i388.i) #3
  %conv140.i541.i = zext i8 %call139.i540.i to i32
  %scevgep150 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %131 = load i8, i8* %scevgep150, align 1
  %scevgep150.1 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %132 = load i8, i8* %scevgep150.1, align 1
  %conv.i.i172.i548.i.1 = zext i8 %132 to i32
  %conv1.i.i173.i549.i.1 = zext i8 %131 to i32
  %xor.i.i174.i550.i.1 = xor i32 %conv1.i.i173.i549.i.1, %conv.i.i172.i548.i.1
  %conv2.i.i175.i551.i.1 = trunc i32 %xor.i.i174.i550.i.1 to i8
  %conv142.i554.i = zext i8 %conv2.i.i175.i551.i.1 to i32
  %cmp143.i555.i = icmp eq i32 %conv140.i541.i, %conv142.i554.i
  call void @assert(i1 zeroext %cmp143.i555.i) #3
  %arraydecay18.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %call.i588.i = call zeroext i8 (...) @rand() #3
  %call1.i589.i = call zeroext i8 (...) @rand() #3
  %conv.i590.i = zext i8 %call.i588.i to i32
  %scevgep146 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %133 = load i8, i8* %scevgep146, align 1
  %scevgep146.1 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %134 = load i8, i8* %scevgep146.1, align 1
  %conv.i.i.i596.i.1 = zext i8 %134 to i32
  %conv1.i.i.i597.i.1 = zext i8 %133 to i32
  %xor.i.i.i598.i.1 = xor i32 %conv1.i.i.i597.i.1, %conv.i.i.i596.i.1
  %conv2.i.i.i599.i.1 = trunc i32 %xor.i.i.i598.i.1 to i8
  %conv3.i602.i = zext i8 %conv2.i.i.i599.i.1 to i32
  %cmp.i603.i = icmp eq i32 %conv.i590.i, %conv3.i602.i
  call void @assume(i1 zeroext %cmp.i603.i) #3
  %conv5.i604.i = zext i8 %call1.i589.i to i32
  %scevgep142 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %135 = load i8, i8* %scevgep142, align 1
  %scevgep142.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %136 = load i8, i8* %scevgep142.1, align 1
  %conv.i.i155.i611.i.1 = zext i8 %136 to i32
  %conv1.i.i156.i612.i.1 = zext i8 %135 to i32
  %xor.i.i157.i613.i.1 = xor i32 %conv1.i.i156.i612.i.1, %conv.i.i155.i611.i.1
  %conv2.i.i158.i614.i.1 = trunc i32 %xor.i.i157.i613.i.1 to i8
  %conv7.i617.i = zext i8 %conv2.i.i158.i614.i.1 to i32
  %cmp8.i618.i = icmp eq i32 %conv5.i604.i, %conv7.i617.i
  call void @assume(i1 zeroext %cmp8.i618.i) #3
  %call16.i626.i = call zeroext i8 (...) @rand() #3
  %scevgep132 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i626.i, i8* %scevgep132, align 1
  %scevgep133 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep133, align 1
  %scevgep134 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %137, i8* %scevgep134, align 1
  %scevgep105.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %138 = load i8, i8* %scevgep105.1, align 1
  %conv44.i653.i.1 = zext i8 %138 to i32
  %scevgep108.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep108.1, align 1
  %conv49.i658.i.1 = zext i8 %139 to i32
  %xor.i659.i.1 = xor i32 %conv44.i653.i.1, %conv49.i658.i.1
  %conv50.i660.i.1 = trunc i32 %xor.i659.i.1 to i8
  %scevgep112.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i660.i.1, i8* %scevgep112.1, align 1
  %140 = load i8, i8* %arraydecay18.i, align 1
  %conv57.i667.i.1 = zext i8 %140 to i32
  %xor58.i668.i.1 = xor i32 %conv57.i667.i.1, 1
  %conv59.i669.i.1 = trunc i32 %xor58.i668.i.1 to i8
  %scevgep109.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %141 = load i8, i8* %scevgep109.1, align 1
  %call64.i674.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1, i8 zeroext %141) #3
  %scevgep116.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i674.i.1, i8* %scevgep116.1, align 1
  %142 = load i8, i8* %arraydecay18.i, align 1
  %scevgep113.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep113.1, align 1
  %call75.i685.i.1 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143) #3
  %scevgep120.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i685.i.1, i8* %scevgep120.1, align 1
  %scevgep117.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %144 = load i8, i8* %scevgep117.1, align 1
  %conv84.i694.i.1 = zext i8 %144 to i32
  %scevgep121.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %145 = load i8, i8* %scevgep121.1, align 1
  %conv89.i699.i.1 = zext i8 %145 to i32
  %xor90.i700.i.1 = xor i32 %conv84.i694.i.1, %conv89.i699.i.1
  %conv91.i701.i.1 = trunc i32 %xor90.i700.i.1 to i8
  %scevgep124.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i701.i.1, i8* %scevgep124.1, align 1
  %scevgep107 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep107 to [2 x [2 x i8]]*
  %scevgep111 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep111 to [2 x [2 x i8]]*
  %scevgep115 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep115 to [2 x [2 x i8]]*
  %scevgep119 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %149 = bitcast i8* %scevgep119 to [2 x [2 x i8]]*
  %scevgep123 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep123 to [2 x [2 x i8]]*
  %arrayidx56.i666.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %arrayidx70.i680.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %scevgep105.1401 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %151 = load i8, i8* %scevgep105.1401, align 1
  %conv44.i653.i.1402 = zext i8 %151 to i32
  %scevgep108.1403 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %146, i64 0, i64 0, i64 0
  %152 = load i8, i8* %scevgep108.1403, align 1
  %conv49.i658.i.1404 = zext i8 %152 to i32
  %xor.i659.i.1405 = xor i32 %conv44.i653.i.1402, %conv49.i658.i.1404
  %conv50.i660.i.1406 = trunc i32 %xor.i659.i.1405 to i8
  %scevgep112.1407 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %147, i64 0, i64 0, i64 0
  store i8 %conv50.i660.i.1406, i8* %scevgep112.1407, align 1
  %153 = load i8, i8* %arrayidx56.i666.i.1, align 1
  %conv57.i667.i.1408 = zext i8 %153 to i32
  %xor58.i668.i.1409 = xor i32 %conv57.i667.i.1408, 1
  %conv59.i669.i.1410 = trunc i32 %xor58.i668.i.1409 to i8
  %scevgep109.1411 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %146, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep109.1411, align 1
  %call64.i674.i.1412 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1410, i8 zeroext %154) #3
  %scevgep116.1413 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %148, i64 0, i64 0, i64 0
  store i8 %call64.i674.i.1412, i8* %scevgep116.1413, align 1
  %155 = load i8, i8* %arrayidx70.i680.i.1, align 1
  %scevgep113.1414 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %147, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep113.1414, align 1
  %call75.i685.i.1415 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #3
  %scevgep120.1416 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %149, i64 0, i64 0, i64 0
  store i8 %call75.i685.i.1415, i8* %scevgep120.1416, align 1
  %scevgep117.1417 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %148, i64 0, i64 0, i64 0
  %157 = load i8, i8* %scevgep117.1417, align 1
  %conv84.i694.i.1418 = zext i8 %157 to i32
  %scevgep121.1419 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %149, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep121.1419, align 1
  %conv89.i699.i.1420 = zext i8 %158 to i32
  %xor90.i700.i.1421 = xor i32 %conv84.i694.i.1418, %conv89.i699.i.1420
  %conv91.i701.i.1422 = trunc i32 %xor90.i700.i.1421 to i8
  %scevgep124.1423 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %150, i64 0, i64 0, i64 0
  store i8 %conv91.i701.i.1422, i8* %scevgep124.1423, align 1
  %159 = load i8, i8* %arraydecay18.i, align 1
  %160 = load i8, i8* %arraydecay19.i, align 1
  %call111.i718.i = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #3
  store i8 %call111.i718.i, i8* %y, align 1
  %scevgep96.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %161 = load i8, i8* %scevgep96.1, align 1
  %conv126.i730.i.1 = zext i8 %161 to i32
  %162 = load i8, i8* %y, align 1
  %conv129.i733.i.1 = zext i8 %162 to i32
  %xor130.i734.i.1 = xor i32 %conv129.i733.i.1, %conv126.i730.i.1
  %conv131.i735.i.1 = trunc i32 %xor130.i734.i.1 to i8
  store i8 %conv131.i735.i.1, i8* %y, align 1
  %scevgep95 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %163 = bitcast i8* %scevgep95 to [2 x [2 x i8]]*
  %arrayidx108.i715.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %164 = load i8, i8* %arrayidx108.i715.i.1, align 1
  %arrayidx110.i717.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %165 = load i8, i8* %arrayidx110.i717.i.1, align 1
  %call111.i718.i.1 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165) #3
  %arrayidx113.i720.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i718.i.1, i8* %arrayidx113.i720.i.1, align 1
  %arrayidx128.i732.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep96.1392 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %163, i64 0, i64 0, i64 0
  %166 = load i8, i8* %scevgep96.1392, align 1
  %conv126.i730.i.1393 = zext i8 %166 to i32
  %167 = load i8, i8* %arrayidx128.i732.i.1, align 1
  %conv129.i733.i.1394 = zext i8 %167 to i32
  %xor130.i734.i.1395 = xor i32 %conv129.i733.i.1394, %conv126.i730.i.1393
  %conv131.i735.i.1396 = trunc i32 %xor130.i734.i.1395 to i8
  store i8 %conv131.i735.i.1396, i8* %arrayidx128.i732.i.1, align 1
  %call139.i741.i = call zeroext i8 @mult(i8 zeroext %call.i588.i, i8 zeroext %call1.i589.i) #3
  %conv140.i742.i = zext i8 %call139.i741.i to i32
  %168 = load i8, i8* %y, align 1
  %scevgep86.1 = getelementptr i8, i8* %y, i64 1
  %169 = load i8, i8* %scevgep86.1, align 1
  %conv.i.i172.i749.i.1 = zext i8 %169 to i32
  %conv1.i.i173.i750.i.1 = zext i8 %168 to i32
  %xor.i.i174.i751.i.1 = xor i32 %conv1.i.i173.i750.i.1, %conv.i.i172.i749.i.1
  %conv2.i.i175.i752.i.1 = trunc i32 %xor.i.i174.i751.i.1 to i8
  %conv142.i755.i = zext i8 %conv2.i.i175.i752.i.1 to i32
  %cmp143.i756.i = icmp eq i32 %conv140.i742.i, %conv142.i755.i
  call void @assert(i1 zeroext %cmp143.i756.i) #3
  %call.i760.i = call zeroext i8 @square(i8 zeroext %call.i) #3
  %call1.i761.i = call zeroext i8 @mult(i8 zeroext %call.i760.i, i8 zeroext %call.i) #3
  %call2.i.i = call zeroext i8 @exp4(i8 zeroext %call1.i761.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i761.i, i8 zeroext %call2.i.i) #3
  %call4.i.i = call zeroext i8 @exp16(i8 zeroext %call3.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call4.i.i, i8 zeroext %call2.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i760.i) #3
  %conv21.i = zext i8 %call6.i.i to i32
  %170 = load i8, i8* %y, align 1
  %scevgep82.1 = getelementptr i8, i8* %y, i64 1
  %171 = load i8, i8* %scevgep82.1, align 1
  %conv.i.i772.i.1 = zext i8 %171 to i32
  %conv1.i.i773.i.1 = zext i8 %170 to i32
  %xor.i.i774.i.1 = xor i32 %conv1.i.i773.i.1, %conv.i.i772.i.1
  %conv2.i.i775.i.1 = trunc i32 %xor.i.i774.i.1 to i8
  %conv23.i = zext i8 %conv2.i.i775.i.1 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %172 = load i8, i8* %y, align 1
  %call.i26 = call zeroext i8 @af(i8 zeroext %172) #3
  store i8 %call.i26, i8* %y, align 1
  %scevgep77.1 = getelementptr i8, i8* %y, i64 1
  %173 = load i8, i8* %scevgep77.1, align 1
  %call.i26.1 = call zeroext i8 @af(i8 zeroext %173) #3
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i26.1, i8* %scevgep78.1, align 1
  %174 = load i8, i8* %y, align 1
  %conv4 = zext i8 %174 to i32
  %xor = xor i32 %conv4, 99
  %conv5 = trunc i32 %xor to i8
  store i8 %conv5, i8* %y, align 1
  %call.i.i32 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i33 = call zeroext i8 @mult(i8 zeroext %call.i.i32, i8 zeroext %call) #3
  %call2.i.i34 = call zeroext i8 @exp4(i8 zeroext %call1.i.i33) #3
  %call3.i.i35 = call zeroext i8 @mult(i8 zeroext %call1.i.i33, i8 zeroext %call2.i.i34) #3
  %call4.i.i36 = call zeroext i8 @exp16(i8 zeroext %call3.i.i35) #3
  %call5.i.i37 = call zeroext i8 @mult(i8 zeroext %call4.i.i36, i8 zeroext %call2.i.i34) #3
  %call6.i.i38 = call zeroext i8 @mult(i8 zeroext %call5.i.i37, i8 zeroext %call.i.i32) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i38) #3
  %conv7 = zext i8 %call1.i to i32
  %175 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %176 = load i8, i8* %scevgep.1, align 1
  %conv.i.i49.1 = zext i8 %176 to i32
  %conv1.i.i50.1 = zext i8 %175 to i32
  %xor.i.i51.1 = xor i32 %conv1.i.i50.1, %conv.i.i49.1
  %conv2.i.i52.1 = trunc i32 %xor.i.i51.1 to i8
  %conv9 = zext i8 %conv2.i.i52.1 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  call void @assert(i1 zeroext %cmp10)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
