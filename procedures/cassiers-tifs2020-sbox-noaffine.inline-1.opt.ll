; ModuleID = '../examples/cassiers-tifs2020-sbox-noaffine.inline-1.ll'
source_filename = "../examples/cassiers-tifs2020-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [46 x i8] c"../examples/cassiers-tifs2020-sbox-noaffine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 60 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 74 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 104 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 127 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 133 }], section "llvm.metadata"

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
define dso_local void @refresh_masks(i8* %x, i8* %y) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep18.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep18.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  store i8 %2, i8* %y, align 1
  %scevgep13.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep13.1, align 1
  %scevgep14.1 = getelementptr i8, i8* %y, i64 1
  store i8 %3, i8* %scevgep14.1, align 1
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %4 = load i8, i8* %y, align 1
  %conv9 = zext i8 %4 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %y, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep9 = getelementptr i8, i8* %y, i64 1
  %5 = load i8, i8* %scevgep9, align 1
  %conv13 = zext i8 %5 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep9, align 1
  %conv16 = zext i8 %call to i32
  %6 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %7 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %7 to i32
  %conv1.i.i32.1 = zext i8 %6 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %conv18 = zext i8 %conv2.i.i34.1 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call.i3 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #3
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %call.i3.i, i8 zeroext %call.i3.i) #3
  %call.i3.i6 = call zeroext i8 @mult(i8 zeroext %call.i.i5, i8 zeroext %call.i.i5) #3
  ret i8 %call.i3.i6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call1 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %x)
  %call.i.i = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call1) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %call3 = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call.i3.i)
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %call3, i8 zeroext %call3) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %call5 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i, i8 zeroext %call.i3.i)
  %call6 = call zeroext i8 @mult(i8 zeroext %call5, i8 zeroext %call.i)
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
  %zr = alloca [2 x i8], align 1
  %w = alloca [2 x i8], align 1
  %wr = alloca [2 x i8], align 1
  %u = alloca [2 x i8], align 1
  %v = alloca [2 x i8], align 1
  %v16 = alloca [2 x i8], align 1
  %m = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep382.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep382.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %call.i529 = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %2) #3
  %scevgep378 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  store i8 %call.i529, i8* %scevgep378, align 1
  %scevgep377.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep377.1, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %3) #3
  %scevgep378.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  store i8 %call.i, i8* %scevgep378.1, align 1
  %arraydecay5 = getelementptr inbounds [2 x i8], [2 x i8]* %zr, i64 0, i64 0
  %call.i32 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i32 to i32
  %scevgep373 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %4 = load i8, i8* %scevgep373, align 1
  %scevgep373.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %5 = load i8, i8* %scevgep373.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i33 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i33) #3
  %scevgep368 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %6 = load i8, i8* %scevgep368, align 1
  %scevgep369 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 0
  store i8 %6, i8* %scevgep369, align 1
  %scevgep368.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %7 = load i8, i8* %scevgep368.1, align 1
  %scevgep369.1 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 1
  store i8 %7, i8* %scevgep369.1, align 1
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %8 = load i8, i8* %arraydecay5, align 1
  %conv9.i = zext i8 %8 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay5, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep364 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 1
  %9 = load i8, i8* %scevgep364, align 1
  %conv13.i = zext i8 %9 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep364, align 1
  %conv16.i = zext i8 %call.i32 to i32
  %scevgep360 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 0
  %10 = load i8, i8* %scevgep360, align 1
  %scevgep360.1 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 1
  %11 = load i8, i8* %scevgep360.1, align 1
  %conv.i.i31.i.1 = zext i8 %11 to i32
  %conv1.i.i32.i.1 = zext i8 %10 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.1 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %zr, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %call.i52 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i53 = zext i8 %call.i52 to i32
  %scevgep356 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 0
  %12 = load i8, i8* %scevgep356, align 1
  %scevgep356.1 = getelementptr [2 x i8], [2 x i8]* %zr, i64 0, i64 1
  %13 = load i8, i8* %scevgep356.1, align 1
  %conv.i.i.i59.1 = zext i8 %13 to i32
  %conv1.i.i.i60.1 = zext i8 %12 to i32
  %xor.i.i.i61.1 = xor i32 %conv1.i.i.i60.1, %conv.i.i.i59.1
  %conv2.i.i.i62.1 = trunc i32 %xor.i.i.i61.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i62.1 to i32
  %cmp.i65 = icmp eq i32 %conv.i53, %conv3.i
  call void @assume(i1 zeroext %cmp.i65) #3
  %conv5.i = zext i8 %call1.i to i32
  %14 = load i8, i8* %x, align 1
  %scevgep352.1 = getelementptr i8, i8* %x, i64 1
  %15 = load i8, i8* %scevgep352.1, align 1
  %conv.i.i155.i.1 = zext i8 %15 to i32
  %conv1.i.i156.i.1 = zext i8 %14 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep342 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep342, align 1
  %scevgep343 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep343, align 1
  %scevgep344 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %16, i8* %scevgep344, align 1
  %scevgep315.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep315.1, align 1
  %conv44.i.1 = zext i8 %17 to i32
  %scevgep318.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep318.1, align 1
  %conv49.i.1 = zext i8 %18 to i32
  %xor.i73.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i73.1 to i8
  %scevgep322.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep322.1, align 1
  %19 = load i8, i8* %arraydecay6, align 1
  %conv57.i.1 = zext i8 %19 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep319.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep319.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %20) #3
  %scevgep326.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep326.1, align 1
  %21 = load i8, i8* %arraydecay6, align 1
  %scevgep323.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep323.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  %scevgep330.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep330.1, align 1
  %scevgep327.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep327.1, align 1
  %conv84.i.1 = zext i8 %23 to i32
  %scevgep331.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep331.1, align 1
  %conv89.i.1 = zext i8 %24 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep334.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep334.1, align 1
  %scevgep317 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep317 to [2 x [2 x i8]]*
  %scevgep321 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep321 to [2 x [2 x i8]]*
  %scevgep325 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep325 to [2 x [2 x i8]]*
  %scevgep329 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep329 to [2 x [2 x i8]]*
  %scevgep333 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep333 to [2 x [2 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %30 = load i8, i8* %x, align 1
  %conv44.i.1503 = zext i8 %30 to i32
  %scevgep318.1504 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep318.1504, align 1
  %conv49.i.1505 = zext i8 %31 to i32
  %xor.i73.1506 = xor i32 %conv44.i.1503, %conv49.i.1505
  %conv50.i.1507 = trunc i32 %xor.i73.1506 to i8
  %scevgep322.1508 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %conv50.i.1507, i8* %scevgep322.1508, align 1
  %32 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1509 = zext i8 %32 to i32
  %xor58.i.1510 = xor i32 %conv57.i.1509, 1
  %conv59.i.1511 = trunc i32 %xor58.i.1510 to i8
  %scevgep319.1512 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep319.1512, align 1
  %call64.i.1513 = call zeroext i8 @mult(i8 zeroext %conv59.i.1511, i8 zeroext %33) #3
  %scevgep326.1514 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %call64.i.1513, i8* %scevgep326.1514, align 1
  %34 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep323.1515 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %26, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep323.1515, align 1
  %call75.i.1516 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #3
  %scevgep330.1517 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %call75.i.1516, i8* %scevgep330.1517, align 1
  %scevgep327.1518 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep327.1518, align 1
  %conv84.i.1519 = zext i8 %36 to i32
  %scevgep331.1520 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %28, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep331.1520, align 1
  %conv89.i.1521 = zext i8 %37 to i32
  %xor90.i.1522 = xor i32 %conv84.i.1519, %conv89.i.1521
  %conv91.i.1523 = trunc i32 %xor90.i.1522 to i8
  %scevgep334.1524 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %conv91.i.1523, i8* %scevgep334.1524, align 1
  %38 = load i8, i8* %arraydecay6, align 1
  %39 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep305.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %40 = load i8, i8* %scevgep305.1, align 1
  %conv126.i.1 = zext i8 %40 to i32
  %41 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %41 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep304 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep304 to [2 x [2 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %43 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %44 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep305.1494 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %42, i64 0, i64 0, i64 0
  %45 = load i8, i8* %scevgep305.1494, align 1
  %conv126.i.1495 = zext i8 %45 to i32
  %46 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1496 = zext i8 %46 to i32
  %xor130.i.1497 = xor i32 %conv129.i.1496, %conv126.i.1495
  %conv131.i.1498 = trunc i32 %xor130.i.1497 to i8
  store i8 %conv131.i.1498, i8* %arrayidx128.i.1, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i52, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep295 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %47 = load i8, i8* %scevgep295, align 1
  %scevgep295.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %48 = load i8, i8* %scevgep295.1, align 1
  %conv.i.i172.i.1 = zext i8 %48 to i32
  %conv1.i.i173.i.1 = zext i8 %47 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.1 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep290 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %49 = load i8, i8* %scevgep290, align 1
  %call.i.i533 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %49) #3
  %call.i3.i534 = call zeroext i8 @mult(i8 zeroext %call.i.i533, i8 zeroext %call.i.i533) #3
  %scevgep291 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  store i8 %call.i3.i534, i8* %scevgep291, align 1
  %scevgep290.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %50 = load i8, i8* %scevgep290.1, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %50) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep291.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  store i8 %call.i3.i, i8* %scevgep291.1, align 1
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %call.i108 = call zeroext i8 (...) @rand() #3
  %conv.i109 = zext i8 %call.i108 to i32
  %scevgep286 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %51 = load i8, i8* %scevgep286, align 1
  %scevgep286.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %52 = load i8, i8* %scevgep286.1, align 1
  %conv.i.i.i115.1 = zext i8 %52 to i32
  %conv1.i.i.i116.1 = zext i8 %51 to i32
  %xor.i.i.i117.1 = xor i32 %conv1.i.i.i116.1, %conv.i.i.i115.1
  %conv2.i.i.i118.1 = trunc i32 %xor.i.i.i117.1 to i8
  %conv2.i121 = zext i8 %conv2.i.i.i118.1 to i32
  %cmp.i122 = icmp eq i32 %conv.i109, %conv2.i121
  call void @assume(i1 zeroext %cmp.i122) #3
  %scevgep281 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %53 = load i8, i8* %scevgep281, align 1
  %scevgep282 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  store i8 %53, i8* %scevgep282, align 1
  %scevgep281.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %54 = load i8, i8* %scevgep281.1, align 1
  %scevgep282.1 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  store i8 %54, i8* %scevgep282.1, align 1
  %call7.i137 = call zeroext i8 (...) @rand() #3
  %conv8.i138 = zext i8 %call7.i137 to i32
  %55 = load i8, i8* %arraydecay11, align 1
  %conv9.i139 = zext i8 %55 to i32
  %xor.i140 = xor i32 %conv9.i139, %conv8.i138
  %conv10.i141 = trunc i32 %xor.i140 to i8
  store i8 %conv10.i141, i8* %arraydecay11, align 1
  %conv11.i142 = zext i8 %call7.i137 to i32
  %scevgep277 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  %56 = load i8, i8* %scevgep277, align 1
  %conv13.i145 = zext i8 %56 to i32
  %xor14.i146 = xor i32 %conv13.i145, %conv11.i142
  %conv15.i147 = trunc i32 %xor14.i146 to i8
  store i8 %conv15.i147, i8* %scevgep277, align 1
  %conv16.i150 = zext i8 %call.i108 to i32
  %scevgep273 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %57 = load i8, i8* %scevgep273, align 1
  %scevgep273.1 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  %58 = load i8, i8* %scevgep273.1, align 1
  %conv.i.i31.i157.1 = zext i8 %58 to i32
  %conv1.i.i32.i158.1 = zext i8 %57 to i32
  %xor.i.i33.i159.1 = xor i32 %conv1.i.i32.i158.1, %conv.i.i31.i157.1
  %conv2.i.i34.i160.1 = trunc i32 %xor.i.i33.i159.1 to i8
  %conv18.i163 = zext i8 %conv2.i.i34.i160.1 to i32
  %cmp19.i164 = icmp eq i32 %conv16.i150, %conv18.i163
  call void @assert(i1 zeroext %cmp19.i164) #3
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %call.i197 = call zeroext i8 (...) @rand() #3
  %call1.i198 = call zeroext i8 (...) @rand() #3
  %conv.i199 = zext i8 %call.i197 to i32
  %scevgep269 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %59 = load i8, i8* %scevgep269, align 1
  %scevgep269.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %60 = load i8, i8* %scevgep269.1, align 1
  %conv.i.i.i205.1 = zext i8 %60 to i32
  %conv1.i.i.i206.1 = zext i8 %59 to i32
  %xor.i.i.i207.1 = xor i32 %conv1.i.i.i206.1, %conv.i.i.i205.1
  %conv2.i.i.i208.1 = trunc i32 %xor.i.i.i207.1 to i8
  %conv3.i211 = zext i8 %conv2.i.i.i208.1 to i32
  %cmp.i212 = icmp eq i32 %conv.i199, %conv3.i211
  call void @assume(i1 zeroext %cmp.i212) #3
  %conv5.i213 = zext i8 %call1.i198 to i32
  %scevgep265 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %61 = load i8, i8* %scevgep265, align 1
  %scevgep265.1 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  %62 = load i8, i8* %scevgep265.1, align 1
  %conv.i.i155.i220.1 = zext i8 %62 to i32
  %conv1.i.i156.i221.1 = zext i8 %61 to i32
  %xor.i.i157.i222.1 = xor i32 %conv1.i.i156.i221.1, %conv.i.i155.i220.1
  %conv2.i.i158.i223.1 = trunc i32 %xor.i.i157.i222.1 to i8
  %conv7.i226 = zext i8 %conv2.i.i158.i223.1 to i32
  %cmp8.i227 = icmp eq i32 %conv5.i213, %conv7.i226
  call void @assume(i1 zeroext %cmp8.i227) #3
  %call16.i235 = call zeroext i8 (...) @rand() #3
  %scevgep255 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i235, i8* %scevgep255, align 1
  %scevgep256 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %63 = load i8, i8* %scevgep256, align 1
  %scevgep257 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %63, i8* %scevgep257, align 1
  %scevgep228.1 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  %64 = load i8, i8* %scevgep228.1, align 1
  %conv44.i262.1 = zext i8 %64 to i32
  %scevgep231.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep231.1, align 1
  %conv49.i267.1 = zext i8 %65 to i32
  %xor.i268.1 = xor i32 %conv44.i262.1, %conv49.i267.1
  %conv50.i269.1 = trunc i32 %xor.i268.1 to i8
  %scevgep235.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1, i8* %scevgep235.1, align 1
  %66 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.1 = zext i8 %66 to i32
  %xor58.i277.1 = xor i32 %conv57.i276.1, 1
  %conv59.i278.1 = trunc i32 %xor58.i277.1 to i8
  %scevgep232.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep232.1, align 1
  %call64.i283.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1, i8 zeroext %67) #3
  %scevgep239.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.1, i8* %scevgep239.1, align 1
  %68 = load i8, i8* %arraydecay12, align 1
  %scevgep236.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep236.1, align 1
  %call75.i294.1 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #3
  %scevgep243.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.1, i8* %scevgep243.1, align 1
  %scevgep240.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %70 = load i8, i8* %scevgep240.1, align 1
  %conv84.i303.1 = zext i8 %70 to i32
  %scevgep244.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep244.1, align 1
  %conv89.i308.1 = zext i8 %71 to i32
  %xor90.i309.1 = xor i32 %conv84.i303.1, %conv89.i308.1
  %conv91.i310.1 = trunc i32 %xor90.i309.1 to i8
  %scevgep247.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1, i8* %scevgep247.1, align 1
  %scevgep230 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep230 to [2 x [2 x i8]]*
  %scevgep234 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep234 to [2 x [2 x i8]]*
  %scevgep238 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %74 = bitcast i8* %scevgep238 to [2 x [2 x i8]]*
  %scevgep242 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep242 to [2 x [2 x i8]]*
  %scevgep246 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep246 to [2 x [2 x i8]]*
  %arrayidx56.i275.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %arrayidx70.i289.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep228.1467 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %77 = load i8, i8* %scevgep228.1467, align 1
  %conv44.i262.1468 = zext i8 %77 to i32
  %scevgep231.1469 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %72, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep231.1469, align 1
  %conv49.i267.1470 = zext i8 %78 to i32
  %xor.i268.1471 = xor i32 %conv44.i262.1468, %conv49.i267.1470
  %conv50.i269.1472 = trunc i32 %xor.i268.1471 to i8
  %scevgep235.1473 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %73, i64 0, i64 0, i64 0
  store i8 %conv50.i269.1472, i8* %scevgep235.1473, align 1
  %79 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.1474 = zext i8 %79 to i32
  %xor58.i277.1475 = xor i32 %conv57.i276.1474, 1
  %conv59.i278.1476 = trunc i32 %xor58.i277.1475 to i8
  %scevgep232.1477 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %72, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep232.1477, align 1
  %call64.i283.1478 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1476, i8 zeroext %80) #3
  %scevgep239.1479 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %74, i64 0, i64 0, i64 0
  store i8 %call64.i283.1478, i8* %scevgep239.1479, align 1
  %81 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep236.1480 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %73, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep236.1480, align 1
  %call75.i294.1481 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #3
  %scevgep243.1482 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %75, i64 0, i64 0, i64 0
  store i8 %call75.i294.1481, i8* %scevgep243.1482, align 1
  %scevgep240.1483 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %74, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep240.1483, align 1
  %conv84.i303.1484 = zext i8 %83 to i32
  %scevgep244.1485 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %75, i64 0, i64 0, i64 0
  %84 = load i8, i8* %scevgep244.1485, align 1
  %conv89.i308.1486 = zext i8 %84 to i32
  %xor90.i309.1487 = xor i32 %conv84.i303.1484, %conv89.i308.1486
  %conv91.i310.1488 = trunc i32 %xor90.i309.1487 to i8
  %scevgep247.1489 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %76, i64 0, i64 0, i64 0
  store i8 %conv91.i310.1488, i8* %scevgep247.1489, align 1
  %85 = load i8, i8* %arraydecay12, align 1
  %86 = load i8, i8* %arraydecay13, align 1
  %call111.i327 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #3
  store i8 %call111.i327, i8* %arraydecay14, align 1
  %scevgep218.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %87 = load i8, i8* %scevgep218.1, align 1
  %conv126.i339.1 = zext i8 %87 to i32
  %88 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.1 = zext i8 %88 to i32
  %xor130.i343.1 = xor i32 %conv129.i342.1, %conv126.i339.1
  %conv131.i344.1 = trunc i32 %xor130.i343.1 to i8
  store i8 %conv131.i344.1, i8* %arraydecay14, align 1
  %scevgep217 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep217 to [2 x [2 x i8]]*
  %arrayidx108.i324.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %90 = load i8, i8* %arrayidx108.i324.1, align 1
  %arrayidx110.i326.1 = getelementptr inbounds i8, i8* %arraydecay13, i64 1
  %91 = load i8, i8* %arrayidx110.i326.1, align 1
  %call111.i327.1 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #3
  %arrayidx113.i329.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  store i8 %call111.i327.1, i8* %arrayidx113.i329.1, align 1
  %arrayidx128.i341.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  %scevgep218.1458 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %89, i64 0, i64 0, i64 0
  %92 = load i8, i8* %scevgep218.1458, align 1
  %conv126.i339.1459 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.1460 = zext i8 %93 to i32
  %xor130.i343.1461 = xor i32 %conv129.i342.1460, %conv126.i339.1459
  %conv131.i344.1462 = trunc i32 %xor130.i343.1461 to i8
  store i8 %conv131.i344.1462, i8* %arrayidx128.i341.1, align 1
  %call139.i350 = call zeroext i8 @mult(i8 zeroext %call.i197, i8 zeroext %call1.i198) #3
  %conv140.i351 = zext i8 %call139.i350 to i32
  %scevgep208 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %94 = load i8, i8* %scevgep208, align 1
  %scevgep208.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %95 = load i8, i8* %scevgep208.1, align 1
  %conv.i.i172.i358.1 = zext i8 %95 to i32
  %conv1.i.i173.i359.1 = zext i8 %94 to i32
  %xor.i.i174.i360.1 = xor i32 %conv1.i.i173.i359.1, %conv.i.i172.i358.1
  %conv2.i.i175.i361.1 = trunc i32 %xor.i.i174.i360.1 to i8
  %conv142.i364 = zext i8 %conv2.i.i175.i361.1 to i32
  %cmp143.i365 = icmp eq i32 %conv140.i351, %conv142.i364
  call void @assert(i1 zeroext %cmp143.i365) #3
  %scevgep203 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %96 = load i8, i8* %scevgep203, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %96) #3
  %call.i3.i.i530 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i531 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i530, i8 zeroext %call.i3.i.i530) #3
  %call.i3.i6.i532 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i531, i8 zeroext %call.i.i5.i531) #3
  %scevgep204 = getelementptr [2 x i8], [2 x i8]* %v16, i64 0, i64 0
  store i8 %call.i3.i6.i532, i8* %scevgep204, align 1
  %scevgep203.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %97 = load i8, i8* %scevgep203.1, align 1
  %call.i.i.i527 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %97) #3
  %call.i3.i.i528 = call zeroext i8 @mult(i8 zeroext %call.i.i.i527, i8 zeroext %call.i.i.i527) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i528, i8 zeroext %call.i3.i.i528) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep204.1 = getelementptr [2 x i8], [2 x i8]* %v16, i64 0, i64 1
  store i8 %call.i3.i6.i, i8* %scevgep204.1, align 1
  %arraydecay17 = getelementptr inbounds [2 x i8], [2 x i8]* %v16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %call.i413 = call zeroext i8 (...) @rand() #3
  %call1.i414 = call zeroext i8 (...) @rand() #3
  %conv.i415 = zext i8 %call.i413 to i32
  %scevgep199 = getelementptr [2 x i8], [2 x i8]* %v16, i64 0, i64 0
  %98 = load i8, i8* %scevgep199, align 1
  %scevgep199.1 = getelementptr [2 x i8], [2 x i8]* %v16, i64 0, i64 1
  %99 = load i8, i8* %scevgep199.1, align 1
  %conv.i.i.i421.1 = zext i8 %99 to i32
  %conv1.i.i.i422.1 = zext i8 %98 to i32
  %xor.i.i.i423.1 = xor i32 %conv1.i.i.i422.1, %conv.i.i.i421.1
  %conv2.i.i.i424.1 = trunc i32 %xor.i.i.i423.1 to i8
  %conv3.i427 = zext i8 %conv2.i.i.i424.1 to i32
  %cmp.i428 = icmp eq i32 %conv.i415, %conv3.i427
  call void @assume(i1 zeroext %cmp.i428) #3
  %conv5.i429 = zext i8 %call1.i414 to i32
  %scevgep195 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %100 = load i8, i8* %scevgep195, align 1
  %scevgep195.1 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  %101 = load i8, i8* %scevgep195.1, align 1
  %conv.i.i155.i436.1 = zext i8 %101 to i32
  %conv1.i.i156.i437.1 = zext i8 %100 to i32
  %xor.i.i157.i438.1 = xor i32 %conv1.i.i156.i437.1, %conv.i.i155.i436.1
  %conv2.i.i158.i439.1 = trunc i32 %xor.i.i157.i438.1 to i8
  %conv7.i442 = zext i8 %conv2.i.i158.i439.1 to i32
  %cmp8.i443 = icmp eq i32 %conv5.i429, %conv7.i442
  call void @assume(i1 zeroext %cmp8.i443) #3
  %call16.i451 = call zeroext i8 (...) @rand() #3
  %scevgep185 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i451, i8* %scevgep185, align 1
  %scevgep186 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %102 = load i8, i8* %scevgep186, align 1
  %scevgep187 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %102, i8* %scevgep187, align 1
  %scevgep158.1 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 1
  %103 = load i8, i8* %scevgep158.1, align 1
  %conv44.i478.1 = zext i8 %103 to i32
  %scevgep161.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep161.1, align 1
  %conv49.i483.1 = zext i8 %104 to i32
  %xor.i484.1 = xor i32 %conv44.i478.1, %conv49.i483.1
  %conv50.i485.1 = trunc i32 %xor.i484.1 to i8
  %scevgep165.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1, i8* %scevgep165.1, align 1
  %105 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.1 = zext i8 %105 to i32
  %xor58.i493.1 = xor i32 %conv57.i492.1, 1
  %conv59.i494.1 = trunc i32 %xor58.i493.1 to i8
  %scevgep162.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %106 = load i8, i8* %scevgep162.1, align 1
  %call64.i499.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1, i8 zeroext %106) #3
  %scevgep169.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.1, i8* %scevgep169.1, align 1
  %107 = load i8, i8* %arraydecay17, align 1
  %scevgep166.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %108 = load i8, i8* %scevgep166.1, align 1
  %call75.i510.1 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108) #3
  %scevgep173.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.1, i8* %scevgep173.1, align 1
  %scevgep170.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %109 = load i8, i8* %scevgep170.1, align 1
  %conv84.i519.1 = zext i8 %109 to i32
  %scevgep174.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %110 = load i8, i8* %scevgep174.1, align 1
  %conv89.i524.1 = zext i8 %110 to i32
  %xor90.i525.1 = xor i32 %conv84.i519.1, %conv89.i524.1
  %conv91.i526.1 = trunc i32 %xor90.i525.1 to i8
  %scevgep177.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1, i8* %scevgep177.1, align 1
  %scevgep160 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep160 to [2 x [2 x i8]]*
  %scevgep164 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %112 = bitcast i8* %scevgep164 to [2 x [2 x i8]]*
  %scevgep168 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep168 to [2 x [2 x i8]]*
  %scevgep172 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %114 = bitcast i8* %scevgep172 to [2 x [2 x i8]]*
  %scevgep176 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %115 = bitcast i8* %scevgep176 to [2 x [2 x i8]]*
  %arrayidx56.i491.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %arrayidx70.i505.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep158.1431 = getelementptr [2 x i8], [2 x i8]* %wr, i64 0, i64 0
  %116 = load i8, i8* %scevgep158.1431, align 1
  %conv44.i478.1432 = zext i8 %116 to i32
  %scevgep161.1433 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %111, i64 0, i64 0, i64 0
  %117 = load i8, i8* %scevgep161.1433, align 1
  %conv49.i483.1434 = zext i8 %117 to i32
  %xor.i484.1435 = xor i32 %conv44.i478.1432, %conv49.i483.1434
  %conv50.i485.1436 = trunc i32 %xor.i484.1435 to i8
  %scevgep165.1437 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %112, i64 0, i64 0, i64 0
  store i8 %conv50.i485.1436, i8* %scevgep165.1437, align 1
  %118 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.1438 = zext i8 %118 to i32
  %xor58.i493.1439 = xor i32 %conv57.i492.1438, 1
  %conv59.i494.1440 = trunc i32 %xor58.i493.1439 to i8
  %scevgep162.1441 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %111, i64 0, i64 0, i64 0
  %119 = load i8, i8* %scevgep162.1441, align 1
  %call64.i499.1442 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1440, i8 zeroext %119) #3
  %scevgep169.1443 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %113, i64 0, i64 0, i64 0
  store i8 %call64.i499.1442, i8* %scevgep169.1443, align 1
  %120 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep166.1444 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %112, i64 0, i64 0, i64 0
  %121 = load i8, i8* %scevgep166.1444, align 1
  %call75.i510.1445 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #3
  %scevgep173.1446 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %114, i64 0, i64 0, i64 0
  store i8 %call75.i510.1445, i8* %scevgep173.1446, align 1
  %scevgep170.1447 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %113, i64 0, i64 0, i64 0
  %122 = load i8, i8* %scevgep170.1447, align 1
  %conv84.i519.1448 = zext i8 %122 to i32
  %scevgep174.1449 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %114, i64 0, i64 0, i64 0
  %123 = load i8, i8* %scevgep174.1449, align 1
  %conv89.i524.1450 = zext i8 %123 to i32
  %xor90.i525.1451 = xor i32 %conv84.i519.1448, %conv89.i524.1450
  %conv91.i526.1452 = trunc i32 %xor90.i525.1451 to i8
  %scevgep177.1453 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %115, i64 0, i64 0, i64 0
  store i8 %conv91.i526.1452, i8* %scevgep177.1453, align 1
  %124 = load i8, i8* %arraydecay17, align 1
  %125 = load i8, i8* %arraydecay18, align 1
  %call111.i543 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125) #3
  store i8 %call111.i543, i8* %arraydecay19, align 1
  %scevgep148.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %126 = load i8, i8* %scevgep148.1, align 1
  %conv126.i555.1 = zext i8 %126 to i32
  %127 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.1 = zext i8 %127 to i32
  %xor130.i559.1 = xor i32 %conv129.i558.1, %conv126.i555.1
  %conv131.i560.1 = trunc i32 %xor130.i559.1 to i8
  store i8 %conv131.i560.1, i8* %arraydecay19, align 1
  %scevgep147 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %128 = bitcast i8* %scevgep147 to [2 x [2 x i8]]*
  %arrayidx108.i540.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %129 = load i8, i8* %arrayidx108.i540.1, align 1
  %arrayidx110.i542.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %130 = load i8, i8* %arrayidx110.i542.1, align 1
  %call111.i543.1 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130) #3
  %arrayidx113.i545.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  store i8 %call111.i543.1, i8* %arrayidx113.i545.1, align 1
  %arrayidx128.i557.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %scevgep148.1422 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %128, i64 0, i64 0, i64 0
  %131 = load i8, i8* %scevgep148.1422, align 1
  %conv126.i555.1423 = zext i8 %131 to i32
  %132 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.1424 = zext i8 %132 to i32
  %xor130.i559.1425 = xor i32 %conv129.i558.1424, %conv126.i555.1423
  %conv131.i560.1426 = trunc i32 %xor130.i559.1425 to i8
  store i8 %conv131.i560.1426, i8* %arrayidx128.i557.1, align 1
  %call139.i566 = call zeroext i8 @mult(i8 zeroext %call.i413, i8 zeroext %call1.i414) #3
  %conv140.i567 = zext i8 %call139.i566 to i32
  %scevgep138 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %133 = load i8, i8* %scevgep138, align 1
  %scevgep138.1 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %134 = load i8, i8* %scevgep138.1, align 1
  %conv.i.i172.i574.1 = zext i8 %134 to i32
  %conv1.i.i173.i575.1 = zext i8 %133 to i32
  %xor.i.i174.i576.1 = xor i32 %conv1.i.i173.i575.1, %conv.i.i172.i574.1
  %conv2.i.i175.i577.1 = trunc i32 %xor.i.i174.i576.1 to i8
  %conv142.i580 = zext i8 %conv2.i.i175.i577.1 to i32
  %cmp143.i581 = icmp eq i32 %conv140.i567, %conv142.i580
  call void @assert(i1 zeroext %cmp143.i581) #3
  %arraydecay20 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %call.i614 = call zeroext i8 (...) @rand() #3
  %call1.i615 = call zeroext i8 (...) @rand() #3
  %conv.i616 = zext i8 %call.i614 to i32
  %scevgep134 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %135 = load i8, i8* %scevgep134, align 1
  %scevgep134.1 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %136 = load i8, i8* %scevgep134.1, align 1
  %conv.i.i.i622.1 = zext i8 %136 to i32
  %conv1.i.i.i623.1 = zext i8 %135 to i32
  %xor.i.i.i624.1 = xor i32 %conv1.i.i.i623.1, %conv.i.i.i622.1
  %conv2.i.i.i625.1 = trunc i32 %xor.i.i.i624.1 to i8
  %conv3.i628 = zext i8 %conv2.i.i.i625.1 to i32
  %cmp.i629 = icmp eq i32 %conv.i616, %conv3.i628
  call void @assume(i1 zeroext %cmp.i629) #3
  %conv5.i630 = zext i8 %call1.i615 to i32
  %scevgep130 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %137 = load i8, i8* %scevgep130, align 1
  %scevgep130.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %138 = load i8, i8* %scevgep130.1, align 1
  %conv.i.i155.i637.1 = zext i8 %138 to i32
  %conv1.i.i156.i638.1 = zext i8 %137 to i32
  %xor.i.i157.i639.1 = xor i32 %conv1.i.i156.i638.1, %conv.i.i155.i637.1
  %conv2.i.i158.i640.1 = trunc i32 %xor.i.i157.i639.1 to i8
  %conv7.i643 = zext i8 %conv2.i.i158.i640.1 to i32
  %cmp8.i644 = icmp eq i32 %conv5.i630, %conv7.i643
  call void @assume(i1 zeroext %cmp8.i644) #3
  %call16.i652 = call zeroext i8 (...) @rand() #3
  %scevgep120 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i652, i8* %scevgep120, align 1
  %scevgep121 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep121, align 1
  %scevgep122 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %139, i8* %scevgep122, align 1
  %scevgep93.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %140 = load i8, i8* %scevgep93.1, align 1
  %conv44.i679.1 = zext i8 %140 to i32
  %scevgep96.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %141 = load i8, i8* %scevgep96.1, align 1
  %conv49.i684.1 = zext i8 %141 to i32
  %xor.i685.1 = xor i32 %conv44.i679.1, %conv49.i684.1
  %conv50.i686.1 = trunc i32 %xor.i685.1 to i8
  %scevgep100.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1, i8* %scevgep100.1, align 1
  %142 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.1 = zext i8 %142 to i32
  %xor58.i694.1 = xor i32 %conv57.i693.1, 1
  %conv59.i695.1 = trunc i32 %xor58.i694.1 to i8
  %scevgep97.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep97.1, align 1
  %call64.i700.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1, i8 zeroext %143) #3
  %scevgep104.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.1, i8* %scevgep104.1, align 1
  %144 = load i8, i8* %arraydecay20, align 1
  %scevgep101.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %145 = load i8, i8* %scevgep101.1, align 1
  %call75.i711.1 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #3
  %scevgep108.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.1, i8* %scevgep108.1, align 1
  %scevgep105.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %146 = load i8, i8* %scevgep105.1, align 1
  %conv84.i720.1 = zext i8 %146 to i32
  %scevgep109.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %147 = load i8, i8* %scevgep109.1, align 1
  %conv89.i725.1 = zext i8 %147 to i32
  %xor90.i726.1 = xor i32 %conv84.i720.1, %conv89.i725.1
  %conv91.i727.1 = trunc i32 %xor90.i726.1 to i8
  %scevgep112.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1, i8* %scevgep112.1, align 1
  %scevgep95 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep95 to [2 x [2 x i8]]*
  %scevgep99 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %149 = bitcast i8* %scevgep99 to [2 x [2 x i8]]*
  %scevgep103 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep103 to [2 x [2 x i8]]*
  %scevgep107 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %151 = bitcast i8* %scevgep107 to [2 x [2 x i8]]*
  %scevgep111 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %152 = bitcast i8* %scevgep111 to [2 x [2 x i8]]*
  %arrayidx56.i692.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %arrayidx70.i706.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %scevgep93.1395 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %153 = load i8, i8* %scevgep93.1395, align 1
  %conv44.i679.1396 = zext i8 %153 to i32
  %scevgep96.1397 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %148, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep96.1397, align 1
  %conv49.i684.1398 = zext i8 %154 to i32
  %xor.i685.1399 = xor i32 %conv44.i679.1396, %conv49.i684.1398
  %conv50.i686.1400 = trunc i32 %xor.i685.1399 to i8
  %scevgep100.1401 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %149, i64 0, i64 0, i64 0
  store i8 %conv50.i686.1400, i8* %scevgep100.1401, align 1
  %155 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.1402 = zext i8 %155 to i32
  %xor58.i694.1403 = xor i32 %conv57.i693.1402, 1
  %conv59.i695.1404 = trunc i32 %xor58.i694.1403 to i8
  %scevgep97.1405 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %148, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep97.1405, align 1
  %call64.i700.1406 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1404, i8 zeroext %156) #3
  %scevgep104.1407 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %150, i64 0, i64 0, i64 0
  store i8 %call64.i700.1406, i8* %scevgep104.1407, align 1
  %157 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.1408 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %149, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep101.1408, align 1
  %call75.i711.1409 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  %scevgep108.1410 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %151, i64 0, i64 0, i64 0
  store i8 %call75.i711.1409, i8* %scevgep108.1410, align 1
  %scevgep105.1411 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %150, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep105.1411, align 1
  %conv84.i720.1412 = zext i8 %159 to i32
  %scevgep109.1413 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %151, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep109.1413, align 1
  %conv89.i725.1414 = zext i8 %160 to i32
  %xor90.i726.1415 = xor i32 %conv84.i720.1412, %conv89.i725.1414
  %conv91.i727.1416 = trunc i32 %xor90.i726.1415 to i8
  %scevgep112.1417 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %152, i64 0, i64 0, i64 0
  store i8 %conv91.i727.1416, i8* %scevgep112.1417, align 1
  %161 = load i8, i8* %arraydecay20, align 1
  %162 = load i8, i8* %arraydecay21, align 1
  %call111.i744 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162) #3
  store i8 %call111.i744, i8* %y, align 1
  %scevgep84.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %163 = load i8, i8* %scevgep84.1, align 1
  %conv126.i756.1 = zext i8 %163 to i32
  %164 = load i8, i8* %y, align 1
  %conv129.i759.1 = zext i8 %164 to i32
  %xor130.i760.1 = xor i32 %conv129.i759.1, %conv126.i756.1
  %conv131.i761.1 = trunc i32 %xor130.i760.1 to i8
  store i8 %conv131.i761.1, i8* %y, align 1
  %scevgep83 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %165 = bitcast i8* %scevgep83 to [2 x [2 x i8]]*
  %arrayidx108.i741.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %166 = load i8, i8* %arrayidx108.i741.1, align 1
  %arrayidx110.i743.1 = getelementptr inbounds i8, i8* %arraydecay21, i64 1
  %167 = load i8, i8* %arrayidx110.i743.1, align 1
  %call111.i744.1 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167) #3
  %arrayidx113.i746.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i744.1, i8* %arrayidx113.i746.1, align 1
  %arrayidx128.i758.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep84.1386 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %165, i64 0, i64 0, i64 0
  %168 = load i8, i8* %scevgep84.1386, align 1
  %conv126.i756.1387 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.1388 = zext i8 %169 to i32
  %xor130.i760.1389 = xor i32 %conv129.i759.1388, %conv126.i756.1387
  %conv131.i761.1390 = trunc i32 %xor130.i760.1389 to i8
  store i8 %conv131.i761.1390, i8* %arrayidx128.i758.1, align 1
  %call139.i767 = call zeroext i8 @mult(i8 zeroext %call.i614, i8 zeroext %call1.i615) #3
  %conv140.i768 = zext i8 %call139.i767 to i32
  %170 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %171 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i172.i775.1 = zext i8 %171 to i32
  %conv1.i.i173.i776.1 = zext i8 %170 to i32
  %xor.i.i174.i777.1 = xor i32 %conv1.i.i173.i776.1, %conv.i.i172.i775.1
  %conv2.i.i175.i778.1 = trunc i32 %xor.i.i174.i777.1 to i8
  %conv142.i781 = zext i8 %conv2.i.i175.i778.1 to i32
  %cmp143.i782 = icmp eq i32 %conv140.i768, %conv142.i781
  call void @assert(i1 zeroext %cmp143.i782) #3
  %call.i.i786 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i787 = call zeroext i8 @mult(i8 zeroext %call.i.i786, i8 zeroext %call) #3
  %call.i.i.i788 = call zeroext i8 @mult(i8 zeroext %call1.i787, i8 zeroext %call1.i787) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i788, i8 zeroext %call.i.i.i788) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i787, i8 zeroext %call.i3.i.i) #3
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i, i8 zeroext %call3.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #3
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i, i8 zeroext %call.i3.i.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i.i786) #3
  %conv23 = zext i8 %call6.i to i32
  %172 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %173 = load i8, i8* %scevgep.1, align 1
  %conv.i.i799.1 = zext i8 %173 to i32
  %conv1.i.i800.1 = zext i8 %172 to i32
  %xor.i.i801.1 = xor i32 %conv1.i.i800.1, %conv.i.i799.1
  %conv2.i.i802.1 = trunc i32 %xor.i.i801.1 to i8
  %conv25 = zext i8 %conv2.i.i802.1 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  call void @assert(i1 zeroext %cmp26)
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
  %scevgep103.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep103.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %scevgep99 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %2, i8* %scevgep99, align 1
  %scevgep98.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep98.1, align 1
  %scevgep99.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %3, i8* %scevgep99.1, align 1
  %arrayidx6 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %4 = load i8, i8* %x, align 1
  %scevgep31.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep31.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep37 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %6 = load i8, i8* %scevgep37, align 1
  %scevgep37.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %7 = load i8, i8* %scevgep37.1, align 1
  %conv.i.i155.i.1 = zext i8 %7 to i32
  %conv1.i.i156.i.1 = zext i8 %6 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep43 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep43, align 1
  %scevgep44 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep44, align 1
  %scevgep45 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %8, i8* %scevgep45, align 1
  %scevgep56.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %9 = load i8, i8* %scevgep56.1, align 1
  %conv44.i.1 = zext i8 %9 to i32
  %scevgep59.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep59.1, align 1
  %conv49.i.1 = zext i8 %10 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep63.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep63.1, align 1
  %11 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %11 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep60.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep60.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %12) #3
  %scevgep67.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep67.1, align 1
  %13 = load i8, i8* %x, align 1
  %scevgep64.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep64.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #3
  %scevgep71.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep71.1, align 1
  %scevgep68.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep68.1, align 1
  %conv84.i.1 = zext i8 %15 to i32
  %scevgep72.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep72.1, align 1
  %conv89.i.1 = zext i8 %16 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep75.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep75.1, align 1
  %scevgep58 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep58 to [2 x [2 x i8]]*
  %scevgep62 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %18 = bitcast i8* %scevgep62 to [2 x [2 x i8]]*
  %scevgep66 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %19 = bitcast i8* %scevgep66 to [2 x [2 x i8]]*
  %scevgep70 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %20 = bitcast i8* %scevgep70 to [2 x [2 x i8]]*
  %scevgep74 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %21 = bitcast i8* %scevgep74 to [2 x [2 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep56.1107 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %22 = load i8, i8* %scevgep56.1107, align 1
  %conv44.i.1108 = zext i8 %22 to i32
  %scevgep59.1109 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep59.1109, align 1
  %conv49.i.1110 = zext i8 %23 to i32
  %xor.i.1111 = xor i32 %conv44.i.1108, %conv49.i.1110
  %conv50.i.1112 = trunc i32 %xor.i.1111 to i8
  %scevgep63.1113 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %18, i64 0, i64 0, i64 0
  store i8 %conv50.i.1112, i8* %scevgep63.1113, align 1
  %24 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1114 = zext i8 %24 to i32
  %xor58.i.1115 = xor i32 %conv57.i.1114, 1
  %conv59.i.1116 = trunc i32 %xor58.i.1115 to i8
  %scevgep60.1117 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep60.1117, align 1
  %call64.i.1118 = call zeroext i8 @mult(i8 zeroext %conv59.i.1116, i8 zeroext %25) #3
  %scevgep67.1119 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %19, i64 0, i64 0, i64 0
  store i8 %call64.i.1118, i8* %scevgep67.1119, align 1
  %26 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep64.1120 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %18, i64 0, i64 0, i64 0
  %27 = load i8, i8* %scevgep64.1120, align 1
  %call75.i.1121 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  %scevgep71.1122 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %20, i64 0, i64 0, i64 0
  store i8 %call75.i.1121, i8* %scevgep71.1122, align 1
  %scevgep68.1123 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %19, i64 0, i64 0, i64 0
  %28 = load i8, i8* %scevgep68.1123, align 1
  %conv84.i.1124 = zext i8 %28 to i32
  %scevgep72.1125 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %20, i64 0, i64 0, i64 0
  %29 = load i8, i8* %scevgep72.1125, align 1
  %conv89.i.1126 = zext i8 %29 to i32
  %xor90.i.1127 = xor i32 %conv84.i.1124, %conv89.i.1126
  %conv91.i.1128 = trunc i32 %xor90.i.1127 to i8
  %scevgep75.1129 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %21, i64 0, i64 0, i64 0
  store i8 %conv91.i.1128, i8* %scevgep75.1129, align 1
  %30 = load i8, i8* %x, align 1
  %31 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep87.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %32 = load i8, i8* %scevgep87.1, align 1
  %conv126.i.1 = zext i8 %32 to i32
  %33 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %33 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep86 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep86 to [2 x [2 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %35 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %36 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep87.1134 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %34, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep87.1134, align 1
  %conv126.i.1135 = zext i8 %37 to i32
  %38 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1136 = zext i8 %38 to i32
  %xor130.i.1137 = xor i32 %conv129.i.1136, %conv126.i.1135
  %conv131.i.1138 = trunc i32 %xor130.i.1137 to i8
  store i8 %conv131.i.1138, i8* %arrayidx128.i.1, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep93 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep94 = getelementptr i8, i8* %scevgep93, i64 2
  %39 = load i8, i8* %scevgep94, align 1
  %scevgep93.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep94.1 = getelementptr i8, i8* %scevgep93.1, i64 2
  %40 = load i8, i8* %scevgep94.1, align 1
  %conv.i.i172.i.1 = zext i8 %40 to i32
  %conv1.i.i173.i.1 = zext i8 %39 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.1 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep23 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %41 = load i8, i8* %scevgep23, align 1
  store i8 %41, i8* %y, align 1
  %scevgep26.1 = getelementptr i8, i8* %scevgep23, i64 1
  %42 = load i8, i8* %scevgep26.1, align 1
  %scevgep27.1 = getelementptr i8, i8* %y, i64 1
  store i8 %42, i8* %scevgep27.1, align 1
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
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %x) #3
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call.i3.i.i) #3
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i, i8 zeroext %call3.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #3
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i, i8 zeroext %call.i3.i.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i.i) #3
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
  %zr.i = alloca [2 x i8], align 1
  %w.i = alloca [2 x i8], align 1
  %wr.i = alloca [2 x i8], align 1
  %u.i = alloca [2 x i8], align 1
  %v.i = alloca [2 x i8], align 1
  %v16.i = alloca [2 x i8], align 1
  %m.i = alloca [2 x i8], align 1
  %x254 = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep400.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep400.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %x254, i64 0, i64 0
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %2 = load i8, i8* %x, align 1
  %scevgep396.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep396.1, align 1
  %conv.i.i.i.1 = zext i8 %3 to i32
  %conv1.i.i.i.1 = zext i8 %2 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %4 = load i8, i8* %x, align 1
  %call.i545 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %4) #3
  %scevgep392 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i545, i8* %scevgep392, align 1
  %scevgep391.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep391.1, align 1
  %call.i546 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #3
  %scevgep392.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i546, i8* %scevgep392.1, align 1
  %arraydecay5.i = getelementptr inbounds [2 x i8], [2 x i8]* %zr.i, i64 0, i64 0
  %call.i32.i = call zeroext i8 (...) @rand() #3
  %conv.i.i23 = zext i8 %call.i32.i to i32
  %scevgep387 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %6 = load i8, i8* %scevgep387, align 1
  %scevgep387.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %7 = load i8, i8* %scevgep387.1, align 1
  %conv.i.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %conv2.i.i24 = zext i8 %conv2.i.i.i.i.1 to i32
  %cmp.i33.i = icmp eq i32 %conv.i.i23, %conv2.i.i24
  call void @assume(i1 zeroext %cmp.i33.i) #3
  %scevgep382 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %8 = load i8, i8* %scevgep382, align 1
  %scevgep383 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 0
  store i8 %8, i8* %scevgep383, align 1
  %scevgep382.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %9 = load i8, i8* %scevgep382.1, align 1
  %scevgep383.1 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 1
  store i8 %9, i8* %scevgep383.1, align 1
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %10 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i = zext i8 %10 to i32
  %xor.i.i25 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i25 to i8
  store i8 %conv10.i.i, i8* %arraydecay5.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep378 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 1
  %11 = load i8, i8* %scevgep378, align 1
  %conv13.i.i = zext i8 %11 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep378, align 1
  %conv16.i.i = zext i8 %call.i32.i to i32
  %scevgep374 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep374, align 1
  %scevgep374.1 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep374.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %13 to i32
  %conv1.i.i32.i.i.1 = zext i8 %12 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.1 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay6.i = getelementptr inbounds [2 x i8], [2 x i8]* %zr.i, i64 0, i64 0
  %arraydecay7.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %call.i52.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i53.i = zext i8 %call.i52.i to i32
  %scevgep370 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 0
  %14 = load i8, i8* %scevgep370, align 1
  %scevgep370.1 = getelementptr [2 x i8], [2 x i8]* %zr.i, i64 0, i64 1
  %15 = load i8, i8* %scevgep370.1, align 1
  %conv.i.i.i59.i.1 = zext i8 %15 to i32
  %conv1.i.i.i60.i.1 = zext i8 %14 to i32
  %xor.i.i.i61.i.1 = xor i32 %conv1.i.i.i60.i.1, %conv.i.i.i59.i.1
  %conv2.i.i.i62.i.1 = trunc i32 %xor.i.i.i61.i.1 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i62.i.1 to i32
  %cmp.i65.i = icmp eq i32 %conv.i53.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i65.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %16 = load i8, i8* %x, align 1
  %scevgep366.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep366.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %17 to i32
  %conv1.i.i156.i.i.1 = zext i8 %16 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.1 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %scevgep356 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i.i, i8* %scevgep356, align 1
  %scevgep357 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep357, align 1
  %scevgep358 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %18, i8* %scevgep358, align 1
  %scevgep329.1 = getelementptr i8, i8* %x, i64 1
  %19 = load i8, i8* %scevgep329.1, align 1
  %conv44.i.i.1 = zext i8 %19 to i32
  %scevgep332.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep332.1, align 1
  %conv49.i.i.1 = zext i8 %20 to i32
  %xor.i73.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i73.i.1 to i8
  %scevgep336.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep336.1, align 1
  %21 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.1 = zext i8 %21 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep333.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep333.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %22) #3
  %scevgep340.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep340.1, align 1
  %23 = load i8, i8* %arraydecay6.i, align 1
  %scevgep337.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep337.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #3
  %scevgep344.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep344.1, align 1
  %scevgep341.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %25 = load i8, i8* %scevgep341.1, align 1
  %conv84.i.i.1 = zext i8 %25 to i32
  %scevgep345.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %26 = load i8, i8* %scevgep345.1, align 1
  %conv89.i.i.1 = zext i8 %26 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep348.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep348.1, align 1
  %scevgep331 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep331 to [2 x [2 x i8]]*
  %scevgep335 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep335 to [2 x [2 x i8]]*
  %scevgep339 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep339 to [2 x [2 x i8]]*
  %scevgep343 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep343 to [2 x [2 x i8]]*
  %scevgep347 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep347 to [2 x [2 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %32 = load i8, i8* %x, align 1
  %conv44.i.i.1521 = zext i8 %32 to i32
  %scevgep332.1522 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep332.1522, align 1
  %conv49.i.i.1523 = zext i8 %33 to i32
  %xor.i73.i.1524 = xor i32 %conv44.i.i.1521, %conv49.i.i.1523
  %conv50.i.i.1525 = trunc i32 %xor.i73.i.1524 to i8
  %scevgep336.1526 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1525, i8* %scevgep336.1526, align 1
  %34 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1527 = zext i8 %34 to i32
  %xor58.i.i.1528 = xor i32 %conv57.i.i.1527, 1
  %conv59.i.i.1529 = trunc i32 %xor58.i.i.1528 to i8
  %scevgep333.1530 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %27, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep333.1530, align 1
  %call64.i.i.1531 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1529, i8 zeroext %35) #3
  %scevgep340.1532 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1531, i8* %scevgep340.1532, align 1
  %36 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep337.1533 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %28, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep337.1533, align 1
  %call75.i.i.1534 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %scevgep344.1535 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %30, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1534, i8* %scevgep344.1535, align 1
  %scevgep341.1536 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %29, i64 0, i64 0, i64 0
  %38 = load i8, i8* %scevgep341.1536, align 1
  %conv84.i.i.1537 = zext i8 %38 to i32
  %scevgep345.1538 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %30, i64 0, i64 0, i64 0
  %39 = load i8, i8* %scevgep345.1538, align 1
  %conv89.i.i.1539 = zext i8 %39 to i32
  %xor90.i.i.1540 = xor i32 %conv84.i.i.1537, %conv89.i.i.1539
  %conv91.i.i.1541 = trunc i32 %xor90.i.i.1540 to i8
  %scevgep348.1542 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %31, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1541, i8* %scevgep348.1542, align 1
  %40 = load i8, i8* %arraydecay6.i, align 1
  %41 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  store i8 %call111.i.i, i8* %arraydecay7.i, align 1
  %scevgep319.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %42 = load i8, i8* %scevgep319.1, align 1
  %conv126.i.i.1 = zext i8 %42 to i32
  %43 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.1 = zext i8 %43 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay7.i, align 1
  %scevgep318 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep318 to [2 x [2 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %45 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %46 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  %scevgep319.1512 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %44, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep319.1512, align 1
  %conv126.i.i.1513 = zext i8 %47 to i32
  %48 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1514 = zext i8 %48 to i32
  %xor130.i.i.1515 = xor i32 %conv129.i.i.1514, %conv126.i.i.1513
  %conv131.i.i.1516 = trunc i32 %xor130.i.i.1515 to i8
  store i8 %conv131.i.i.1516, i8* %arrayidx128.i.i.1, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i52.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep309 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %49 = load i8, i8* %scevgep309, align 1
  %scevgep309.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %50 = load i8, i8* %scevgep309.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %50 to i32
  %conv1.i.i173.i.i.1 = zext i8 %49 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.1 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep304 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %51 = load i8, i8* %scevgep304, align 1
  %call.i.i551 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %51) #3
  %call.i3.i552 = call zeroext i8 @mult(i8 zeroext %call.i.i551, i8 zeroext %call.i.i551) #3
  %scevgep305 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i3.i552, i8* %scevgep305, align 1
  %scevgep304.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %52 = load i8, i8* %scevgep304.1, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %52) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep305.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i3.i, i8* %scevgep305.1, align 1
  %arraydecay11.i = getelementptr inbounds [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %call.i108.i = call zeroext i8 (...) @rand() #3
  %conv.i109.i = zext i8 %call.i108.i to i32
  %scevgep300 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %53 = load i8, i8* %scevgep300, align 1
  %scevgep300.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %54 = load i8, i8* %scevgep300.1, align 1
  %conv.i.i.i115.i.1 = zext i8 %54 to i32
  %conv1.i.i.i116.i.1 = zext i8 %53 to i32
  %xor.i.i.i117.i.1 = xor i32 %conv1.i.i.i116.i.1, %conv.i.i.i115.i.1
  %conv2.i.i.i118.i.1 = trunc i32 %xor.i.i.i117.i.1 to i8
  %conv2.i121.i = zext i8 %conv2.i.i.i118.i.1 to i32
  %cmp.i122.i = icmp eq i32 %conv.i109.i, %conv2.i121.i
  call void @assume(i1 zeroext %cmp.i122.i) #3
  %scevgep295 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %55 = load i8, i8* %scevgep295, align 1
  %scevgep296 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  store i8 %55, i8* %scevgep296, align 1
  %scevgep295.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %56 = load i8, i8* %scevgep295.1, align 1
  %scevgep296.1 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  store i8 %56, i8* %scevgep296.1, align 1
  %call7.i137.i = call zeroext i8 (...) @rand() #3
  %conv8.i138.i = zext i8 %call7.i137.i to i32
  %57 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i = zext i8 %57 to i32
  %xor.i140.i = xor i32 %conv9.i139.i, %conv8.i138.i
  %conv10.i141.i = trunc i32 %xor.i140.i to i8
  store i8 %conv10.i141.i, i8* %arraydecay11.i, align 1
  %conv11.i142.i = zext i8 %call7.i137.i to i32
  %scevgep291 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  %58 = load i8, i8* %scevgep291, align 1
  %conv13.i145.i = zext i8 %58 to i32
  %xor14.i146.i = xor i32 %conv13.i145.i, %conv11.i142.i
  %conv15.i147.i = trunc i32 %xor14.i146.i to i8
  store i8 %conv15.i147.i, i8* %scevgep291, align 1
  %conv16.i150.i = zext i8 %call.i108.i to i32
  %scevgep287 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %59 = load i8, i8* %scevgep287, align 1
  %scevgep287.1 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  %60 = load i8, i8* %scevgep287.1, align 1
  %conv.i.i31.i157.i.1 = zext i8 %60 to i32
  %conv1.i.i32.i158.i.1 = zext i8 %59 to i32
  %xor.i.i33.i159.i.1 = xor i32 %conv1.i.i32.i158.i.1, %conv.i.i31.i157.i.1
  %conv2.i.i34.i160.i.1 = trunc i32 %xor.i.i33.i159.i.1 to i8
  %conv18.i163.i = zext i8 %conv2.i.i34.i160.i.1 to i32
  %cmp19.i164.i = icmp eq i32 %conv16.i150.i, %conv18.i163.i
  call void @assert(i1 zeroext %cmp19.i164.i) #3
  %arraydecay12.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %call.i197.i = call zeroext i8 (...) @rand() #3
  %call1.i198.i = call zeroext i8 (...) @rand() #3
  %conv.i199.i = zext i8 %call.i197.i to i32
  %scevgep283 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %61 = load i8, i8* %scevgep283, align 1
  %scevgep283.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %62 = load i8, i8* %scevgep283.1, align 1
  %conv.i.i.i205.i.1 = zext i8 %62 to i32
  %conv1.i.i.i206.i.1 = zext i8 %61 to i32
  %xor.i.i.i207.i.1 = xor i32 %conv1.i.i.i206.i.1, %conv.i.i.i205.i.1
  %conv2.i.i.i208.i.1 = trunc i32 %xor.i.i.i207.i.1 to i8
  %conv3.i211.i = zext i8 %conv2.i.i.i208.i.1 to i32
  %cmp.i212.i = icmp eq i32 %conv.i199.i, %conv3.i211.i
  call void @assume(i1 zeroext %cmp.i212.i) #3
  %conv5.i213.i = zext i8 %call1.i198.i to i32
  %scevgep279 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %63 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  %64 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i155.i220.i.1 = zext i8 %64 to i32
  %conv1.i.i156.i221.i.1 = zext i8 %63 to i32
  %xor.i.i157.i222.i.1 = xor i32 %conv1.i.i156.i221.i.1, %conv.i.i155.i220.i.1
  %conv2.i.i158.i223.i.1 = trunc i32 %xor.i.i157.i222.i.1 to i8
  %conv7.i226.i = zext i8 %conv2.i.i158.i223.i.1 to i32
  %cmp8.i227.i = icmp eq i32 %conv5.i213.i, %conv7.i226.i
  call void @assume(i1 zeroext %cmp8.i227.i) #3
  %call16.i235.i = call zeroext i8 (...) @rand() #3
  %scevgep269 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i235.i, i8* %scevgep269, align 1
  %scevgep270 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep270, align 1
  %scevgep271 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %65, i8* %scevgep271, align 1
  %scevgep242.1 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  %66 = load i8, i8* %scevgep242.1, align 1
  %conv44.i262.i.1 = zext i8 %66 to i32
  %scevgep245.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep245.1, align 1
  %conv49.i267.i.1 = zext i8 %67 to i32
  %xor.i268.i.1 = xor i32 %conv44.i262.i.1, %conv49.i267.i.1
  %conv50.i269.i.1 = trunc i32 %xor.i268.i.1 to i8
  %scevgep249.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1, i8* %scevgep249.1, align 1
  %68 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.1 = zext i8 %68 to i32
  %xor58.i277.i.1 = xor i32 %conv57.i276.i.1, 1
  %conv59.i278.i.1 = trunc i32 %xor58.i277.i.1 to i8
  %scevgep246.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep246.1, align 1
  %call64.i283.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1, i8 zeroext %69) #3
  %scevgep253.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1, i8* %scevgep253.1, align 1
  %70 = load i8, i8* %arraydecay12.i, align 1
  %scevgep250.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep250.1, align 1
  %call75.i294.i.1 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #3
  %scevgep257.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1, i8* %scevgep257.1, align 1
  %scevgep254.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %72 = load i8, i8* %scevgep254.1, align 1
  %conv84.i303.i.1 = zext i8 %72 to i32
  %scevgep258.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %73 = load i8, i8* %scevgep258.1, align 1
  %conv89.i308.i.1 = zext i8 %73 to i32
  %xor90.i309.i.1 = xor i32 %conv84.i303.i.1, %conv89.i308.i.1
  %conv91.i310.i.1 = trunc i32 %xor90.i309.i.1 to i8
  %scevgep261.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1, i8* %scevgep261.1, align 1
  %scevgep244 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %74 = bitcast i8* %scevgep244 to [2 x [2 x i8]]*
  %scevgep248 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep248 to [2 x [2 x i8]]*
  %scevgep252 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep252 to [2 x [2 x i8]]*
  %scevgep256 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep256 to [2 x [2 x i8]]*
  %scevgep260 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %78 = bitcast i8* %scevgep260 to [2 x [2 x i8]]*
  %arrayidx56.i275.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %arrayidx70.i289.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep242.1485 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %79 = load i8, i8* %scevgep242.1485, align 1
  %conv44.i262.i.1486 = zext i8 %79 to i32
  %scevgep245.1487 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %74, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep245.1487, align 1
  %conv49.i267.i.1488 = zext i8 %80 to i32
  %xor.i268.i.1489 = xor i32 %conv44.i262.i.1486, %conv49.i267.i.1488
  %conv50.i269.i.1490 = trunc i32 %xor.i268.i.1489 to i8
  %scevgep249.1491 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %75, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.1490, i8* %scevgep249.1491, align 1
  %81 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.1492 = zext i8 %81 to i32
  %xor58.i277.i.1493 = xor i32 %conv57.i276.i.1492, 1
  %conv59.i278.i.1494 = trunc i32 %xor58.i277.i.1493 to i8
  %scevgep246.1495 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %74, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep246.1495, align 1
  %call64.i283.i.1496 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1494, i8 zeroext %82) #3
  %scevgep253.1497 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %76, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.1496, i8* %scevgep253.1497, align 1
  %83 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep250.1498 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %75, i64 0, i64 0, i64 0
  %84 = load i8, i8* %scevgep250.1498, align 1
  %call75.i294.i.1499 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  %scevgep257.1500 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %77, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.1499, i8* %scevgep257.1500, align 1
  %scevgep254.1501 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %76, i64 0, i64 0, i64 0
  %85 = load i8, i8* %scevgep254.1501, align 1
  %conv84.i303.i.1502 = zext i8 %85 to i32
  %scevgep258.1503 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %77, i64 0, i64 0, i64 0
  %86 = load i8, i8* %scevgep258.1503, align 1
  %conv89.i308.i.1504 = zext i8 %86 to i32
  %xor90.i309.i.1505 = xor i32 %conv84.i303.i.1502, %conv89.i308.i.1504
  %conv91.i310.i.1506 = trunc i32 %xor90.i309.i.1505 to i8
  %scevgep261.1507 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %78, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.1506, i8* %scevgep261.1507, align 1
  %87 = load i8, i8* %arraydecay12.i, align 1
  %88 = load i8, i8* %arraydecay13.i, align 1
  %call111.i327.i = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  store i8 %call111.i327.i, i8* %arraydecay14.i, align 1
  %scevgep232.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %89 = load i8, i8* %scevgep232.1, align 1
  %conv126.i339.i.1 = zext i8 %89 to i32
  %90 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.1 = zext i8 %90 to i32
  %xor130.i343.i.1 = xor i32 %conv129.i342.i.1, %conv126.i339.i.1
  %conv131.i344.i.1 = trunc i32 %xor130.i343.i.1 to i8
  store i8 %conv131.i344.i.1, i8* %arraydecay14.i, align 1
  %scevgep231 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %91 = bitcast i8* %scevgep231 to [2 x [2 x i8]]*
  %arrayidx108.i324.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %92 = load i8, i8* %arrayidx108.i324.i.1, align 1
  %arrayidx110.i326.i.1 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 1
  %93 = load i8, i8* %arrayidx110.i326.i.1, align 1
  %call111.i327.i.1 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93) #3
  %arrayidx113.i329.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  store i8 %call111.i327.i.1, i8* %arrayidx113.i329.i.1, align 1
  %arrayidx128.i341.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  %scevgep232.1476 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %91, i64 0, i64 0, i64 0
  %94 = load i8, i8* %scevgep232.1476, align 1
  %conv126.i339.i.1477 = zext i8 %94 to i32
  %95 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.1478 = zext i8 %95 to i32
  %xor130.i343.i.1479 = xor i32 %conv129.i342.i.1478, %conv126.i339.i.1477
  %conv131.i344.i.1480 = trunc i32 %xor130.i343.i.1479 to i8
  store i8 %conv131.i344.i.1480, i8* %arrayidx128.i341.i.1, align 1
  %call139.i350.i = call zeroext i8 @mult(i8 zeroext %call.i197.i, i8 zeroext %call1.i198.i) #3
  %conv140.i351.i = zext i8 %call139.i350.i to i32
  %scevgep222 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %96 = load i8, i8* %scevgep222, align 1
  %scevgep222.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %97 = load i8, i8* %scevgep222.1, align 1
  %conv.i.i172.i358.i.1 = zext i8 %97 to i32
  %conv1.i.i173.i359.i.1 = zext i8 %96 to i32
  %xor.i.i174.i360.i.1 = xor i32 %conv1.i.i173.i359.i.1, %conv.i.i172.i358.i.1
  %conv2.i.i175.i361.i.1 = trunc i32 %xor.i.i174.i360.i.1 to i8
  %conv142.i364.i = zext i8 %conv2.i.i175.i361.i.1 to i32
  %cmp143.i365.i = icmp eq i32 %conv140.i351.i, %conv142.i364.i
  call void @assert(i1 zeroext %cmp143.i365.i) #3
  %scevgep217 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %98 = load i8, i8* %scevgep217, align 1
  %call.i.i.i547 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %98) #3
  %call.i3.i.i548 = call zeroext i8 @mult(i8 zeroext %call.i.i.i547, i8 zeroext %call.i.i.i547) #3
  %call.i.i5.i549 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i548, i8 zeroext %call.i3.i.i548) #3
  %call.i3.i6.i550 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i549, i8 zeroext %call.i.i5.i549) #3
  %scevgep218 = getelementptr [2 x i8], [2 x i8]* %v16.i, i64 0, i64 0
  store i8 %call.i3.i6.i550, i8* %scevgep218, align 1
  %scevgep217.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %99 = load i8, i8* %scevgep217.1, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %99) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep218.1 = getelementptr [2 x i8], [2 x i8]* %v16.i, i64 0, i64 1
  store i8 %call.i3.i6.i, i8* %scevgep218.1, align 1
  %arraydecay17.i = getelementptr inbounds [2 x i8], [2 x i8]* %v16.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %call.i413.i = call zeroext i8 (...) @rand() #3
  %call1.i414.i = call zeroext i8 (...) @rand() #3
  %conv.i415.i = zext i8 %call.i413.i to i32
  %scevgep213 = getelementptr [2 x i8], [2 x i8]* %v16.i, i64 0, i64 0
  %100 = load i8, i8* %scevgep213, align 1
  %scevgep213.1 = getelementptr [2 x i8], [2 x i8]* %v16.i, i64 0, i64 1
  %101 = load i8, i8* %scevgep213.1, align 1
  %conv.i.i.i421.i.1 = zext i8 %101 to i32
  %conv1.i.i.i422.i.1 = zext i8 %100 to i32
  %xor.i.i.i423.i.1 = xor i32 %conv1.i.i.i422.i.1, %conv.i.i.i421.i.1
  %conv2.i.i.i424.i.1 = trunc i32 %xor.i.i.i423.i.1 to i8
  %conv3.i427.i = zext i8 %conv2.i.i.i424.i.1 to i32
  %cmp.i428.i = icmp eq i32 %conv.i415.i, %conv3.i427.i
  call void @assume(i1 zeroext %cmp.i428.i) #3
  %conv5.i429.i = zext i8 %call1.i414.i to i32
  %scevgep209 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %102 = load i8, i8* %scevgep209, align 1
  %scevgep209.1 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  %103 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i155.i436.i.1 = zext i8 %103 to i32
  %conv1.i.i156.i437.i.1 = zext i8 %102 to i32
  %xor.i.i157.i438.i.1 = xor i32 %conv1.i.i156.i437.i.1, %conv.i.i155.i436.i.1
  %conv2.i.i158.i439.i.1 = trunc i32 %xor.i.i157.i438.i.1 to i8
  %conv7.i442.i = zext i8 %conv2.i.i158.i439.i.1 to i32
  %cmp8.i443.i = icmp eq i32 %conv5.i429.i, %conv7.i442.i
  call void @assume(i1 zeroext %cmp8.i443.i) #3
  %call16.i451.i = call zeroext i8 (...) @rand() #3
  %scevgep199 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i451.i, i8* %scevgep199, align 1
  %scevgep200 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep200, align 1
  %scevgep201 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %104, i8* %scevgep201, align 1
  %scevgep172.1 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 1
  %105 = load i8, i8* %scevgep172.1, align 1
  %conv44.i478.i.1 = zext i8 %105 to i32
  %scevgep175.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %106 = load i8, i8* %scevgep175.1, align 1
  %conv49.i483.i.1 = zext i8 %106 to i32
  %xor.i484.i.1 = xor i32 %conv44.i478.i.1, %conv49.i483.i.1
  %conv50.i485.i.1 = trunc i32 %xor.i484.i.1 to i8
  %scevgep179.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1, i8* %scevgep179.1, align 1
  %107 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.1 = zext i8 %107 to i32
  %xor58.i493.i.1 = xor i32 %conv57.i492.i.1, 1
  %conv59.i494.i.1 = trunc i32 %xor58.i493.i.1 to i8
  %scevgep176.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %108 = load i8, i8* %scevgep176.1, align 1
  %call64.i499.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1, i8 zeroext %108) #3
  %scevgep183.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1, i8* %scevgep183.1, align 1
  %109 = load i8, i8* %arraydecay17.i, align 1
  %scevgep180.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %110 = load i8, i8* %scevgep180.1, align 1
  %call75.i510.i.1 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110) #3
  %scevgep187.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1, i8* %scevgep187.1, align 1
  %scevgep184.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep184.1, align 1
  %conv84.i519.i.1 = zext i8 %111 to i32
  %scevgep188.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %112 = load i8, i8* %scevgep188.1, align 1
  %conv89.i524.i.1 = zext i8 %112 to i32
  %xor90.i525.i.1 = xor i32 %conv84.i519.i.1, %conv89.i524.i.1
  %conv91.i526.i.1 = trunc i32 %xor90.i525.i.1 to i8
  %scevgep191.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1, i8* %scevgep191.1, align 1
  %scevgep174 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep174 to [2 x [2 x i8]]*
  %scevgep178 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %114 = bitcast i8* %scevgep178 to [2 x [2 x i8]]*
  %scevgep182 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %115 = bitcast i8* %scevgep182 to [2 x [2 x i8]]*
  %scevgep186 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %116 = bitcast i8* %scevgep186 to [2 x [2 x i8]]*
  %scevgep190 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %117 = bitcast i8* %scevgep190 to [2 x [2 x i8]]*
  %arrayidx56.i491.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %arrayidx70.i505.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep172.1449 = getelementptr [2 x i8], [2 x i8]* %wr.i, i64 0, i64 0
  %118 = load i8, i8* %scevgep172.1449, align 1
  %conv44.i478.i.1450 = zext i8 %118 to i32
  %scevgep175.1451 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %113, i64 0, i64 0, i64 0
  %119 = load i8, i8* %scevgep175.1451, align 1
  %conv49.i483.i.1452 = zext i8 %119 to i32
  %xor.i484.i.1453 = xor i32 %conv44.i478.i.1450, %conv49.i483.i.1452
  %conv50.i485.i.1454 = trunc i32 %xor.i484.i.1453 to i8
  %scevgep179.1455 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %114, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.1454, i8* %scevgep179.1455, align 1
  %120 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.1456 = zext i8 %120 to i32
  %xor58.i493.i.1457 = xor i32 %conv57.i492.i.1456, 1
  %conv59.i494.i.1458 = trunc i32 %xor58.i493.i.1457 to i8
  %scevgep176.1459 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %113, i64 0, i64 0, i64 0
  %121 = load i8, i8* %scevgep176.1459, align 1
  %call64.i499.i.1460 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1458, i8 zeroext %121) #3
  %scevgep183.1461 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %115, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.1460, i8* %scevgep183.1461, align 1
  %122 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep180.1462 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %114, i64 0, i64 0, i64 0
  %123 = load i8, i8* %scevgep180.1462, align 1
  %call75.i510.i.1463 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123) #3
  %scevgep187.1464 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %116, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.1463, i8* %scevgep187.1464, align 1
  %scevgep184.1465 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %115, i64 0, i64 0, i64 0
  %124 = load i8, i8* %scevgep184.1465, align 1
  %conv84.i519.i.1466 = zext i8 %124 to i32
  %scevgep188.1467 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %116, i64 0, i64 0, i64 0
  %125 = load i8, i8* %scevgep188.1467, align 1
  %conv89.i524.i.1468 = zext i8 %125 to i32
  %xor90.i525.i.1469 = xor i32 %conv84.i519.i.1466, %conv89.i524.i.1468
  %conv91.i526.i.1470 = trunc i32 %xor90.i525.i.1469 to i8
  %scevgep191.1471 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %117, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.1470, i8* %scevgep191.1471, align 1
  %126 = load i8, i8* %arraydecay17.i, align 1
  %127 = load i8, i8* %arraydecay18.i, align 1
  %call111.i543.i = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127) #3
  store i8 %call111.i543.i, i8* %arraydecay19.i, align 1
  %scevgep162.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %128 = load i8, i8* %scevgep162.1, align 1
  %conv126.i555.i.1 = zext i8 %128 to i32
  %129 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.1 = zext i8 %129 to i32
  %xor130.i559.i.1 = xor i32 %conv129.i558.i.1, %conv126.i555.i.1
  %conv131.i560.i.1 = trunc i32 %xor130.i559.i.1 to i8
  store i8 %conv131.i560.i.1, i8* %arraydecay19.i, align 1
  %scevgep161 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep161 to [2 x [2 x i8]]*
  %arrayidx108.i540.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %131 = load i8, i8* %arrayidx108.i540.i.1, align 1
  %arrayidx110.i542.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %132 = load i8, i8* %arrayidx110.i542.i.1, align 1
  %call111.i543.i.1 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %arrayidx113.i545.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  store i8 %call111.i543.i.1, i8* %arrayidx113.i545.i.1, align 1
  %arrayidx128.i557.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %scevgep162.1440 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %130, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep162.1440, align 1
  %conv126.i555.i.1441 = zext i8 %133 to i32
  %134 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.1442 = zext i8 %134 to i32
  %xor130.i559.i.1443 = xor i32 %conv129.i558.i.1442, %conv126.i555.i.1441
  %conv131.i560.i.1444 = trunc i32 %xor130.i559.i.1443 to i8
  store i8 %conv131.i560.i.1444, i8* %arrayidx128.i557.i.1, align 1
  %call139.i566.i = call zeroext i8 @mult(i8 zeroext %call.i413.i, i8 zeroext %call1.i414.i) #3
  %conv140.i567.i = zext i8 %call139.i566.i to i32
  %scevgep152 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %135 = load i8, i8* %scevgep152, align 1
  %scevgep152.1 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %136 = load i8, i8* %scevgep152.1, align 1
  %conv.i.i172.i574.i.1 = zext i8 %136 to i32
  %conv1.i.i173.i575.i.1 = zext i8 %135 to i32
  %xor.i.i174.i576.i.1 = xor i32 %conv1.i.i173.i575.i.1, %conv.i.i172.i574.i.1
  %conv2.i.i175.i577.i.1 = trunc i32 %xor.i.i174.i576.i.1 to i8
  %conv142.i580.i = zext i8 %conv2.i.i175.i577.i.1 to i32
  %cmp143.i581.i = icmp eq i32 %conv140.i567.i, %conv142.i580.i
  call void @assert(i1 zeroext %cmp143.i581.i) #3
  %arraydecay20.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %arraydecay21.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %call.i614.i = call zeroext i8 (...) @rand() #3
  %call1.i615.i = call zeroext i8 (...) @rand() #3
  %conv.i616.i = zext i8 %call.i614.i to i32
  %scevgep148 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %137 = load i8, i8* %scevgep148, align 1
  %scevgep148.1 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %138 = load i8, i8* %scevgep148.1, align 1
  %conv.i.i.i622.i.1 = zext i8 %138 to i32
  %conv1.i.i.i623.i.1 = zext i8 %137 to i32
  %xor.i.i.i624.i.1 = xor i32 %conv1.i.i.i623.i.1, %conv.i.i.i622.i.1
  %conv2.i.i.i625.i.1 = trunc i32 %xor.i.i.i624.i.1 to i8
  %conv3.i628.i = zext i8 %conv2.i.i.i625.i.1 to i32
  %cmp.i629.i = icmp eq i32 %conv.i616.i, %conv3.i628.i
  call void @assume(i1 zeroext %cmp.i629.i) #3
  %conv5.i630.i = zext i8 %call1.i615.i to i32
  %scevgep144 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %139 = load i8, i8* %scevgep144, align 1
  %scevgep144.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %140 = load i8, i8* %scevgep144.1, align 1
  %conv.i.i155.i637.i.1 = zext i8 %140 to i32
  %conv1.i.i156.i638.i.1 = zext i8 %139 to i32
  %xor.i.i157.i639.i.1 = xor i32 %conv1.i.i156.i638.i.1, %conv.i.i155.i637.i.1
  %conv2.i.i158.i640.i.1 = trunc i32 %xor.i.i157.i639.i.1 to i8
  %conv7.i643.i = zext i8 %conv2.i.i158.i640.i.1 to i32
  %cmp8.i644.i = icmp eq i32 %conv5.i630.i, %conv7.i643.i
  call void @assume(i1 zeroext %cmp8.i644.i) #3
  %call16.i652.i = call zeroext i8 (...) @rand() #3
  %scevgep134 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i652.i, i8* %scevgep134, align 1
  %scevgep135 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %141 = load i8, i8* %scevgep135, align 1
  %scevgep136 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %141, i8* %scevgep136, align 1
  %scevgep107.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %142 = load i8, i8* %scevgep107.1, align 1
  %conv44.i679.i.1 = zext i8 %142 to i32
  %scevgep110.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep110.1, align 1
  %conv49.i684.i.1 = zext i8 %143 to i32
  %xor.i685.i.1 = xor i32 %conv44.i679.i.1, %conv49.i684.i.1
  %conv50.i686.i.1 = trunc i32 %xor.i685.i.1 to i8
  %scevgep114.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1, i8* %scevgep114.1, align 1
  %144 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.1 = zext i8 %144 to i32
  %xor58.i694.i.1 = xor i32 %conv57.i693.i.1, 1
  %conv59.i695.i.1 = trunc i32 %xor58.i694.i.1 to i8
  %scevgep111.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %145 = load i8, i8* %scevgep111.1, align 1
  %call64.i700.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1, i8 zeroext %145) #3
  %scevgep118.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1, i8* %scevgep118.1, align 1
  %146 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %147 = load i8, i8* %scevgep115.1, align 1
  %call75.i711.i.1 = call zeroext i8 @mult(i8 zeroext %146, i8 zeroext %147) #3
  %scevgep122.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1, i8* %scevgep122.1, align 1
  %scevgep119.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep119.1, align 1
  %conv84.i720.i.1 = zext i8 %148 to i32
  %scevgep123.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %149 = load i8, i8* %scevgep123.1, align 1
  %conv89.i725.i.1 = zext i8 %149 to i32
  %xor90.i726.i.1 = xor i32 %conv84.i720.i.1, %conv89.i725.i.1
  %conv91.i727.i.1 = trunc i32 %xor90.i726.i.1 to i8
  %scevgep126.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1, i8* %scevgep126.1, align 1
  %scevgep109 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep109 to [2 x [2 x i8]]*
  %scevgep113 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %151 = bitcast i8* %scevgep113 to [2 x [2 x i8]]*
  %scevgep117 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %152 = bitcast i8* %scevgep117 to [2 x [2 x i8]]*
  %scevgep121 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %153 = bitcast i8* %scevgep121 to [2 x [2 x i8]]*
  %scevgep125 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %154 = bitcast i8* %scevgep125 to [2 x [2 x i8]]*
  %arrayidx56.i692.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %arrayidx70.i706.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %scevgep107.1413 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %155 = load i8, i8* %scevgep107.1413, align 1
  %conv44.i679.i.1414 = zext i8 %155 to i32
  %scevgep110.1415 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %150, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep110.1415, align 1
  %conv49.i684.i.1416 = zext i8 %156 to i32
  %xor.i685.i.1417 = xor i32 %conv44.i679.i.1414, %conv49.i684.i.1416
  %conv50.i686.i.1418 = trunc i32 %xor.i685.i.1417 to i8
  %scevgep114.1419 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %151, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.1418, i8* %scevgep114.1419, align 1
  %157 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.1420 = zext i8 %157 to i32
  %xor58.i694.i.1421 = xor i32 %conv57.i693.i.1420, 1
  %conv59.i695.i.1422 = trunc i32 %xor58.i694.i.1421 to i8
  %scevgep111.1423 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %150, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep111.1423, align 1
  %call64.i700.i.1424 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1422, i8 zeroext %158) #3
  %scevgep118.1425 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %152, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.1424, i8* %scevgep118.1425, align 1
  %159 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.1426 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %151, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep115.1426, align 1
  %call75.i711.i.1427 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #3
  %scevgep122.1428 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %153, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.1427, i8* %scevgep122.1428, align 1
  %scevgep119.1429 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %152, i64 0, i64 0, i64 0
  %161 = load i8, i8* %scevgep119.1429, align 1
  %conv84.i720.i.1430 = zext i8 %161 to i32
  %scevgep123.1431 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %153, i64 0, i64 0, i64 0
  %162 = load i8, i8* %scevgep123.1431, align 1
  %conv89.i725.i.1432 = zext i8 %162 to i32
  %xor90.i726.i.1433 = xor i32 %conv84.i720.i.1430, %conv89.i725.i.1432
  %conv91.i727.i.1434 = trunc i32 %xor90.i726.i.1433 to i8
  %scevgep126.1435 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %154, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.1434, i8* %scevgep126.1435, align 1
  %163 = load i8, i8* %arraydecay20.i, align 1
  %164 = load i8, i8* %arraydecay21.i, align 1
  %call111.i744.i = call zeroext i8 @mult(i8 zeroext %163, i8 zeroext %164) #3
  store i8 %call111.i744.i, i8* %arraydecay, align 1
  %scevgep98.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %165 = load i8, i8* %scevgep98.1, align 1
  %conv126.i756.i.1 = zext i8 %165 to i32
  %166 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.1 = zext i8 %166 to i32
  %xor130.i760.i.1 = xor i32 %conv129.i759.i.1, %conv126.i756.i.1
  %conv131.i761.i.1 = trunc i32 %xor130.i760.i.1 to i8
  store i8 %conv131.i761.i.1, i8* %arraydecay, align 1
  %scevgep97 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %167 = bitcast i8* %scevgep97 to [2 x [2 x i8]]*
  %arrayidx108.i741.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %168 = load i8, i8* %arrayidx108.i741.i.1, align 1
  %arrayidx110.i743.i.1 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 1
  %169 = load i8, i8* %arrayidx110.i743.i.1, align 1
  %call111.i744.i.1 = call zeroext i8 @mult(i8 zeroext %168, i8 zeroext %169) #3
  %arrayidx113.i746.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  store i8 %call111.i744.i.1, i8* %arrayidx113.i746.i.1, align 1
  %arrayidx128.i758.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %scevgep98.1404 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %167, i64 0, i64 0, i64 0
  %170 = load i8, i8* %scevgep98.1404, align 1
  %conv126.i756.i.1405 = zext i8 %170 to i32
  %171 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.1406 = zext i8 %171 to i32
  %xor130.i760.i.1407 = xor i32 %conv129.i759.i.1406, %conv126.i756.i.1405
  %conv131.i761.i.1408 = trunc i32 %xor130.i760.i.1407 to i8
  store i8 %conv131.i761.i.1408, i8* %arrayidx128.i758.i.1, align 1
  %call139.i767.i = call zeroext i8 @mult(i8 zeroext %call.i614.i, i8 zeroext %call1.i615.i) #3
  %conv140.i768.i = zext i8 %call139.i767.i to i32
  %scevgep88 = getelementptr [2 x i8], [2 x i8]* %x254, i64 0, i64 0
  %172 = load i8, i8* %scevgep88, align 1
  %scevgep88.1 = getelementptr [2 x i8], [2 x i8]* %x254, i64 0, i64 1
  %173 = load i8, i8* %scevgep88.1, align 1
  %conv.i.i172.i775.i.1 = zext i8 %173 to i32
  %conv1.i.i173.i776.i.1 = zext i8 %172 to i32
  %xor.i.i174.i777.i.1 = xor i32 %conv1.i.i173.i776.i.1, %conv.i.i172.i775.i.1
  %conv2.i.i175.i778.i.1 = trunc i32 %xor.i.i174.i777.i.1 to i8
  %conv142.i781.i = zext i8 %conv2.i.i175.i778.i.1 to i32
  %cmp143.i782.i = icmp eq i32 %conv140.i768.i, %conv142.i781.i
  call void @assert(i1 zeroext %cmp143.i782.i) #3
  %call.i.i786.i = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #3
  %call1.i787.i = call zeroext i8 @mult(i8 zeroext %call.i.i786.i, i8 zeroext %call.i) #3
  %call.i.i.i788.i = call zeroext i8 @mult(i8 zeroext %call1.i787.i, i8 zeroext %call1.i787.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i788.i, i8 zeroext %call.i.i.i788.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i787.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i.i, i8 zeroext %call3.i.i) #3
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i, i8 zeroext %call.i.i.i.i.i) #3
  %call.i.i5.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i, i8 zeroext %call.i3.i.i.i.i) #3
  %call.i3.i6.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i, i8 zeroext %call.i.i5.i.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i.i786.i) #3
  %conv23.i = zext i8 %call6.i.i to i32
  %scevgep84 = getelementptr [2 x i8], [2 x i8]* %x254, i64 0, i64 0
  %174 = load i8, i8* %scevgep84, align 1
  %scevgep84.1 = getelementptr [2 x i8], [2 x i8]* %x254, i64 0, i64 1
  %175 = load i8, i8* %scevgep84.1, align 1
  %conv.i.i799.i.1 = zext i8 %175 to i32
  %conv1.i.i800.i.1 = zext i8 %174 to i32
  %xor.i.i801.i.1 = xor i32 %conv1.i.i800.i.1, %conv.i.i799.i.1
  %conv2.i.i802.i.1 = trunc i32 %xor.i.i801.i.1 to i8
  %conv25.i = zext i8 %conv2.i.i802.i.1 to i32
  %cmp26.i = icmp eq i32 %conv23.i, %conv25.i
  call void @assert(i1 zeroext %cmp26.i) #3
  %scevgep79 = getelementptr [2 x i8], [2 x i8]* %x254, i64 0, i64 0
  %176 = load i8, i8* %scevgep79, align 1
  %call.i27 = call zeroext i8 @af(i8 zeroext %176) #3
  store i8 %call.i27, i8* %y, align 1
  %scevgep79.1 = getelementptr [2 x i8], [2 x i8]* %x254, i64 0, i64 1
  %177 = load i8, i8* %scevgep79.1, align 1
  %call.i27.1 = call zeroext i8 @af(i8 zeroext %177) #3
  %scevgep80.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i27.1, i8* %scevgep80.1, align 1
  %178 = load i8, i8* %y, align 1
  %conv5 = zext i8 %178 to i32
  %xor = xor i32 %conv5, 99
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %y, align 1
  %call.i.i.i44 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i.i45 = call zeroext i8 @mult(i8 zeroext %call.i.i.i44, i8 zeroext %call) #3
  %call.i.i.i.i46 = call zeroext i8 @mult(i8 zeroext %call1.i.i45, i8 zeroext %call1.i.i45) #3
  %call.i3.i.i.i47 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i46, i8 zeroext %call.i.i.i.i46) #3
  %call3.i.i48 = call zeroext i8 @mult(i8 zeroext %call1.i.i45, i8 zeroext %call.i3.i.i.i47) #3
  %call.i.i.i.i.i49 = call zeroext i8 @mult(i8 zeroext %call3.i.i48, i8 zeroext %call3.i.i48) #3
  %call.i3.i.i.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i49, i8 zeroext %call.i.i.i.i.i49) #3
  %call.i.i5.i.i.i51 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i50, i8 zeroext %call.i3.i.i.i.i50) #3
  %call.i3.i6.i.i.i52 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i51, i8 zeroext %call.i.i5.i.i.i51) #3
  %call5.i.i53 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i52, i8 zeroext %call.i3.i.i.i47) #3
  %call6.i.i54 = call zeroext i8 @mult(i8 zeroext %call5.i.i53, i8 zeroext %call.i.i.i44) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i54) #3
  %conv8 = zext i8 %call1.i to i32
  %179 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %180 = load i8, i8* %scevgep.1, align 1
  %conv.i.i65.1 = zext i8 %180 to i32
  %conv1.i.i66.1 = zext i8 %179 to i32
  %xor.i.i67.1 = xor i32 %conv1.i.i66.1, %conv.i.i65.1
  %conv2.i.i68.1 = trunc i32 %xor.i.i67.1 to i8
  %conv10 = zext i8 %conv2.i.i68.1 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  call void @assert(i1 zeroext %cmp11)
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
