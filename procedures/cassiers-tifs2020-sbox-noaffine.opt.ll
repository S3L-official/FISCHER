; ModuleID = '../examples/cassiers-tifs2020-sbox-noaffine.ll'
source_filename = "../examples/cassiers-tifs2020-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [3 x [3 x i8]], align 1
  %s = alloca [3 x [3 x i8]], align 1
  %p0 = alloca [3 x [3 x i8]], align 1
  %p1 = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x [3 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep74.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep70.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i155.1 = zext i8 %4 to i32
  %conv1.i.i156.1 = zext i8 %3 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep70.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i155.2 = zext i8 %5 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %conv7 = zext i8 %conv2.i.i158.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep54 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep5455 = bitcast i8* %scevgep54 to [3 x [3 x i8]]*
  %scevgep61 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [3 x [3 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep54, align 1
  %6 = load i8, i8* %scevgep54, align 1
  store i8 %6, i8* %scevgep61, align 1
  %scevgep59 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %scevgep66 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep6162, i64 0, i64 1, i64 0
  %call16.1152 = call zeroext i8 (...) @rand()
  store i8 %call16.1152, i8* %scevgep59, align 1
  %7 = load i8, i8* %scevgep59, align 1
  store i8 %7, i8* %scevgep66, align 1
  %scevgep57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5455, i64 0, i64 1, i64 1
  %scevgep64 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep6162, i64 0, i64 1, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep57, align 1
  %8 = load i8, i8* %scevgep57, align 1
  store i8 %8, i8* %scevgep64, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %9 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %9 to i32
  %scevgep34.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %10 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %11 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %11 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %12)
  %scevgep42.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %13 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14)
  %scevgep46.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %15 to i32
  %scevgep47.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %16 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %17 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %17 to i32
  %scevgep34.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %18 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %18 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %19 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %19 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %20 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %20)
  %scevgep42.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %21 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 2
  %22 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  %scevgep46.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 2
  %23 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %23 to i32
  %scevgep47.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 2
  %24 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %24 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep33 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep33 to [3 x [3 x i8]]*
  %scevgep37 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep37 to [3 x [3 x i8]]*
  %scevgep41 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep41 to [3 x [3 x i8]]*
  %scevgep45 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep45 to [3 x [3 x i8]]*
  %scevgep49 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep49 to [3 x [3 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %30 = load i8, i8* %b, align 1
  %conv44.198 = zext i8 %30 to i32
  %scevgep34.199 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep34.199, align 1
  %conv49.1100 = zext i8 %31 to i32
  %xor.1101 = xor i32 %conv44.198, %conv49.1100
  %conv50.1102 = trunc i32 %xor.1101 to i8
  %scevgep38.1103 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %conv50.1102, i8* %scevgep38.1103, align 1
  %32 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1104 = zext i8 %32 to i32
  %xor58.1105 = xor i32 %conv57.1104, 1
  %conv59.1106 = trunc i32 %xor58.1105 to i8
  %scevgep35.1107 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep35.1107, align 1
  %call64.1108 = call zeroext i8 @mult(i8 zeroext %conv59.1106, i8 zeroext %33)
  %scevgep42.1109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %call64.1108, i8* %scevgep42.1109, align 1
  %34 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1110 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep39.1110, align 1
  %call75.1111 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %scevgep46.1112 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %call75.1111, i8* %scevgep46.1112, align 1
  %scevgep43.1113 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep43.1113, align 1
  %conv84.1114 = zext i8 %36 to i32
  %scevgep47.1115 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep47.1115, align 1
  %conv89.1116 = zext i8 %37 to i32
  %xor90.1117 = xor i32 %conv84.1114, %conv89.1116
  %conv91.1118 = trunc i32 %xor90.1117 to i8
  %scevgep50.1119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %conv91.1118, i8* %scevgep50.1119, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %38 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %38 to i32
  %scevgep34.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %39 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %40 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %40 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %41)
  %scevgep42.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %42 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep46.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %44 to i32
  %scevgep47.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %45 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep33.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep33.1 to [3 x [3 x i8]]*
  %scevgep37.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep37.1 to [3 x [3 x i8]]*
  %scevgep41.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep41.1 to [3 x [3 x i8]]*
  %scevgep45.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep45.1 to [3 x [3 x i8]]*
  %scevgep49.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep49.1 to [3 x [3 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %51 = load i8, i8* %b, align 1
  %conv44.2125 = zext i8 %51 to i32
  %scevgep34.2126 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep34.2126, align 1
  %conv49.2127 = zext i8 %52 to i32
  %xor.2128 = xor i32 %conv44.2125, %conv49.2127
  %conv50.2129 = trunc i32 %xor.2128 to i8
  %scevgep38.2130 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  store i8 %conv50.2129, i8* %scevgep38.2130, align 1
  %53 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2131 = zext i8 %53 to i32
  %xor58.2132 = xor i32 %conv57.2131, 1
  %conv59.2133 = trunc i32 %xor58.2132 to i8
  %scevgep35.2134 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep35.2134, align 1
  %call64.2135 = call zeroext i8 @mult(i8 zeroext %conv59.2133, i8 zeroext %54)
  %scevgep42.2136 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  store i8 %call64.2135, i8* %scevgep42.2136, align 1
  %55 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2137 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep39.2137, align 1
  %call75.2138 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56)
  %scevgep46.2139 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  store i8 %call75.2138, i8* %scevgep46.2139, align 1
  %scevgep43.2140 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep43.2140, align 1
  %conv84.2141 = zext i8 %57 to i32
  %scevgep47.2142 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep47.2142, align 1
  %conv89.2143 = zext i8 %58 to i32
  %xor90.2144 = xor i32 %conv84.2141, %conv89.2143
  %conv91.2145 = trunc i32 %xor90.2144 to i8
  %scevgep50.2146 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %conv91.2145, i8* %scevgep50.2146, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %59 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %59 to i32
  %scevgep34.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 1
  %60 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %60 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %61 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %61 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 1
  %62 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %62)
  %scevgep42.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %63 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 1
  %64 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %scevgep46.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %65 to i32
  %scevgep47.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %66 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %67 = load i8, i8* %a, align 1
  %68 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %69 to i32
  %70 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %70 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %71 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %71 to i32
  %72 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %72 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep21 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep21 to [3 x [3 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %74 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %75 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.178 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %73, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep22.178, align 1
  %conv126.179 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx128.1, align 1
  %conv129.180 = zext i8 %77 to i32
  %xor130.181 = xor i32 %conv129.180, %conv126.179
  %conv131.182 = trunc i32 %xor130.181 to i8
  store i8 %conv131.182, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %73, i64 0, i64 0, i64 2
  %78 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %79 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %73, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep21.1 to [3 x [3 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %81 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %82 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.288 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %80, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep22.288, align 1
  %conv126.289 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx128.2, align 1
  %conv129.290 = zext i8 %84 to i32
  %xor130.291 = xor i32 %conv129.290, %conv126.289
  %conv131.292 = trunc i32 %xor130.291 to i8
  store i8 %conv131.292, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %80, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %85 to i32
  %86 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %86 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %87 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %88 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %88 to i32
  %conv1.i.i173.1 = zext i8 %87 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %89 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %89 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %conv142 = zext i8 %conv2.i.i175.2 to i32
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
  %scevgep18.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep18.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  store i8 %3, i8* %y, align 1
  %scevgep13.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep13.1, align 1
  %scevgep14.1 = getelementptr i8, i8* %y, i64 1
  store i8 %4, i8* %scevgep14.1, align 1
  %scevgep13.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep13.2, align 1
  %scevgep14.2 = getelementptr i8, i8* %y, i64 2
  store i8 %5, i8* %scevgep14.2, align 1
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %6 = load i8, i8* %y, align 1
  %conv9 = zext i8 %6 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %y, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep9 = getelementptr i8, i8* %y, i64 1
  %7 = load i8, i8* %scevgep9, align 1
  %conv13 = zext i8 %7 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep9, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %8 = load i8, i8* %y, align 1
  %conv9.1 = zext i8 %8 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %y, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep9.1 = getelementptr i8, i8* %y, i64 2
  %9 = load i8, i8* %scevgep9.1, align 1
  %conv13.1 = zext i8 %9 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep9.1, align 1
  %conv16 = zext i8 %call to i32
  %10 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %11 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %11 to i32
  %conv1.i.i32.1 = zext i8 %10 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %12 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %12 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %conv18 = zext i8 %conv2.i.i34.2 to i32
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
  %r.i = alloca [3 x [3 x i8]], align 1
  %s.i = alloca [3 x [3 x i8]], align 1
  %p0.i = alloca [3 x [3 x i8]], align 1
  %p1.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x i8], align 1
  %zr = alloca [3 x i8], align 1
  %w = alloca [3 x i8], align 1
  %wr = alloca [3 x i8], align 1
  %u = alloca [3 x i8], align 1
  %v = alloca [3 x i8], align 1
  %v16 = alloca [3 x i8], align 1
  %m = alloca [3 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep390.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep390.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep390.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep390.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %call.i692 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %3) #3
  %scevgep386 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  store i8 %call.i692, i8* %scevgep386, align 1
  %scevgep385.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep385.1, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %4) #3
  %scevgep386.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  store i8 %call.i, i8* %scevgep386.1, align 1
  %scevgep385.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep385.2, align 1
  %call.i693 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #3
  %scevgep386.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  store i8 %call.i693, i8* %scevgep386.2, align 1
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  %call.i32 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i32 to i32
  %scevgep381 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %6 = load i8, i8* %scevgep381, align 1
  %scevgep381.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %7 = load i8, i8* %scevgep381.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep381.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %8 = load i8, i8* %scevgep381.2, align 1
  %conv.i.i.i.2 = zext i8 %8 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i33 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i33) #3
  %scevgep376 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %9 = load i8, i8* %scevgep376, align 1
  %scevgep377 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  store i8 %9, i8* %scevgep377, align 1
  %scevgep376.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %10 = load i8, i8* %scevgep376.1, align 1
  %scevgep377.1 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 1
  store i8 %10, i8* %scevgep377.1, align 1
  %scevgep376.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %11 = load i8, i8* %scevgep376.2, align 1
  %scevgep377.2 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 2
  store i8 %11, i8* %scevgep377.2, align 1
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %12 = load i8, i8* %arraydecay5, align 1
  %conv9.i = zext i8 %12 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay5, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep372 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 1
  %13 = load i8, i8* %scevgep372, align 1
  %conv13.i = zext i8 %13 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep372, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %14 = load i8, i8* %arraydecay5, align 1
  %conv9.i.1 = zext i8 %14 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay5, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep372.1 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 2
  %15 = load i8, i8* %scevgep372.1, align 1
  %conv13.i.1 = zext i8 %15 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep372.1, align 1
  %conv16.i = zext i8 %call.i32 to i32
  %scevgep368 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  %16 = load i8, i8* %scevgep368, align 1
  %scevgep368.1 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 1
  %17 = load i8, i8* %scevgep368.1, align 1
  %conv.i.i31.i.1 = zext i8 %17 to i32
  %conv1.i.i32.i.1 = zext i8 %16 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep368.2 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 2
  %18 = load i8, i8* %scevgep368.2, align 1
  %conv.i.i31.i.2 = zext i8 %18 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.2 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %call.i52 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i53 = zext i8 %call.i52 to i32
  %scevgep364 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  %19 = load i8, i8* %scevgep364, align 1
  %scevgep364.1 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 1
  %20 = load i8, i8* %scevgep364.1, align 1
  %conv.i.i.i59.1 = zext i8 %20 to i32
  %conv1.i.i.i60.1 = zext i8 %19 to i32
  %xor.i.i.i61.1 = xor i32 %conv1.i.i.i60.1, %conv.i.i.i59.1
  %conv2.i.i.i62.1 = trunc i32 %xor.i.i.i61.1 to i8
  %scevgep364.2 = getelementptr [3 x i8], [3 x i8]* %zr, i64 0, i64 2
  %21 = load i8, i8* %scevgep364.2, align 1
  %conv.i.i.i59.2 = zext i8 %21 to i32
  %conv1.i.i.i60.2 = zext i8 %conv2.i.i.i62.1 to i32
  %xor.i.i.i61.2 = xor i32 %conv1.i.i.i60.2, %conv.i.i.i59.2
  %conv2.i.i.i62.2 = trunc i32 %xor.i.i.i61.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i62.2 to i32
  %cmp.i65 = icmp eq i32 %conv.i53, %conv3.i
  call void @assume(i1 zeroext %cmp.i65) #3
  %conv5.i = zext i8 %call1.i to i32
  %22 = load i8, i8* %x, align 1
  %scevgep360.1 = getelementptr i8, i8* %x, i64 1
  %23 = load i8, i8* %scevgep360.1, align 1
  %conv.i.i155.i.1 = zext i8 %23 to i32
  %conv1.i.i156.i.1 = zext i8 %22 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep360.2 = getelementptr i8, i8* %x, i64 2
  %24 = load i8, i8* %scevgep360.2, align 1
  %conv.i.i155.i.2 = zext i8 %24 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep344 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep344345 = bitcast i8* %scevgep344 to [3 x [3 x i8]]*
  %scevgep351 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep351352 = bitcast i8* %scevgep351 to [3 x [3 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep344, align 1
  %25 = load i8, i8* %scevgep344, align 1
  store i8 %25, i8* %scevgep351, align 1
  %scevgep349 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep344345, i64 0, i64 0, i64 1
  %scevgep356 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep351352, i64 0, i64 1, i64 0
  %call16.i.1689 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1689, i8* %scevgep349, align 1
  %26 = load i8, i8* %scevgep349, align 1
  store i8 %26, i8* %scevgep356, align 1
  %scevgep347 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep344345, i64 0, i64 1, i64 1
  %scevgep354 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep351352, i64 0, i64 1, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep347, align 1
  %27 = load i8, i8* %scevgep347, align 1
  store i8 %27, i8* %scevgep354, align 1
  %scevgep321.1 = getelementptr i8, i8* %x, i64 1
  %28 = load i8, i8* %scevgep321.1, align 1
  %conv44.i.1 = zext i8 %28 to i32
  %scevgep324.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %29 = load i8, i8* %scevgep324.1, align 1
  %conv49.i.1 = zext i8 %29 to i32
  %xor.i73.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i73.1 to i8
  %scevgep328.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep328.1, align 1
  %30 = load i8, i8* %arraydecay6, align 1
  %conv57.i.1 = zext i8 %30 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep325.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep325.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %31) #3
  %scevgep332.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep332.1, align 1
  %32 = load i8, i8* %arraydecay6, align 1
  %scevgep329.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %33 = load i8, i8* %scevgep329.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #3
  %scevgep336.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep336.1, align 1
  %scevgep333.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep333.1, align 1
  %conv84.i.1 = zext i8 %34 to i32
  %scevgep337.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep337.1, align 1
  %conv89.i.1 = zext i8 %35 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep340.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep340.1, align 1
  %scevgep321.2 = getelementptr i8, i8* %x, i64 2
  %36 = load i8, i8* %scevgep321.2, align 1
  %conv44.i.2 = zext i8 %36 to i32
  %scevgep324.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep324.2, align 1
  %conv49.i.2 = zext i8 %37 to i32
  %xor.i73.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i73.2 to i8
  %scevgep328.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep328.2, align 1
  %38 = load i8, i8* %arraydecay6, align 1
  %conv57.i.2 = zext i8 %38 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep325.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep325.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %39) #3
  %scevgep332.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep332.2, align 1
  %40 = load i8, i8* %arraydecay6, align 1
  %scevgep329.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep329.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %scevgep336.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep336.2, align 1
  %scevgep333.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %42 = load i8, i8* %scevgep333.2, align 1
  %conv84.i.2 = zext i8 %42 to i32
  %scevgep337.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep337.2, align 1
  %conv89.i.2 = zext i8 %43 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep340.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep340.2, align 1
  %scevgep323 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep323 to [3 x [3 x i8]]*
  %scevgep327 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep327 to [3 x [3 x i8]]*
  %scevgep331 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep331 to [3 x [3 x i8]]*
  %scevgep335 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep335 to [3 x [3 x i8]]*
  %scevgep339 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep339 to [3 x [3 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %49 = load i8, i8* %x, align 1
  %conv44.i.1628 = zext i8 %49 to i32
  %scevgep324.1629 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep324.1629, align 1
  %conv49.i.1630 = zext i8 %50 to i32
  %xor.i73.1631 = xor i32 %conv44.i.1628, %conv49.i.1630
  %conv50.i.1632 = trunc i32 %xor.i73.1631 to i8
  %scevgep328.1633 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 0
  store i8 %conv50.i.1632, i8* %scevgep328.1633, align 1
  %51 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1634 = zext i8 %51 to i32
  %xor58.i.1635 = xor i32 %conv57.i.1634, 1
  %conv59.i.1636 = trunc i32 %xor58.i.1635 to i8
  %scevgep325.1637 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep325.1637, align 1
  %call64.i.1638 = call zeroext i8 @mult(i8 zeroext %conv59.i.1636, i8 zeroext %52) #3
  %scevgep332.1639 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  store i8 %call64.i.1638, i8* %scevgep332.1639, align 1
  %53 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep329.1640 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep329.1640, align 1
  %call75.i.1641 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #3
  %scevgep336.1642 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  store i8 %call75.i.1641, i8* %scevgep336.1642, align 1
  %scevgep333.1643 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %55 = load i8, i8* %scevgep333.1643, align 1
  %conv84.i.1644 = zext i8 %55 to i32
  %scevgep337.1645 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep337.1645, align 1
  %conv89.i.1646 = zext i8 %56 to i32
  %xor90.i.1647 = xor i32 %conv84.i.1644, %conv89.i.1646
  %conv91.i.1648 = trunc i32 %xor90.i.1647 to i8
  %scevgep340.1649 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  store i8 %conv91.i.1648, i8* %scevgep340.1649, align 1
  %scevgep321.2.1 = getelementptr i8, i8* %x, i64 2
  %57 = load i8, i8* %scevgep321.2.1, align 1
  %conv44.i.2.1 = zext i8 %57 to i32
  %scevgep324.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 2
  %58 = load i8, i8* %scevgep324.2.1, align 1
  %conv49.i.2.1 = zext i8 %58 to i32
  %xor.i73.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i73.2.1 to i8
  %scevgep328.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep328.2.1, align 1
  %59 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %59 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep325.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 2
  %60 = load i8, i8* %scevgep325.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %60) #3
  %scevgep332.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep332.2.1, align 1
  %61 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep329.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 2
  %62 = load i8, i8* %scevgep329.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #3
  %scevgep336.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep336.2.1, align 1
  %scevgep333.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 2
  %63 = load i8, i8* %scevgep333.2.1, align 1
  %conv84.i.2.1 = zext i8 %63 to i32
  %scevgep337.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  %64 = load i8, i8* %scevgep337.2.1, align 1
  %conv89.i.2.1 = zext i8 %64 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep340.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep340.2.1, align 1
  %scevgep323.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep323.1 to [3 x [3 x i8]]*
  %scevgep327.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep327.1 to [3 x [3 x i8]]*
  %scevgep331.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep331.1 to [3 x [3 x i8]]*
  %scevgep335.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 1, i64 0
  %68 = bitcast i8* %scevgep335.1 to [3 x [3 x i8]]*
  %scevgep339.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep339.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %70 = load i8, i8* %x, align 1
  %conv44.i.2654 = zext i8 %70 to i32
  %scevgep324.2655 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 0
  %71 = load i8, i8* %scevgep324.2655, align 1
  %conv49.i.2656 = zext i8 %71 to i32
  %xor.i73.2657 = xor i32 %conv44.i.2654, %conv49.i.2656
  %conv50.i.2658 = trunc i32 %xor.i73.2657 to i8
  %scevgep328.2659 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 0
  store i8 %conv50.i.2658, i8* %scevgep328.2659, align 1
  %72 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2660 = zext i8 %72 to i32
  %xor58.i.2661 = xor i32 %conv57.i.2660, 1
  %conv59.i.2662 = trunc i32 %xor58.i.2661 to i8
  %scevgep325.2663 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep325.2663, align 1
  %call64.i.2664 = call zeroext i8 @mult(i8 zeroext %conv59.i.2662, i8 zeroext %73) #3
  %scevgep332.2665 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 0
  store i8 %call64.i.2664, i8* %scevgep332.2665, align 1
  %74 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep329.2666 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 0
  %75 = load i8, i8* %scevgep329.2666, align 1
  %call75.i.2667 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #3
  %scevgep336.2668 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 0
  store i8 %call75.i.2667, i8* %scevgep336.2668, align 1
  %scevgep333.2669 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep333.2669, align 1
  %conv84.i.2670 = zext i8 %76 to i32
  %scevgep337.2671 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep337.2671, align 1
  %conv89.i.2672 = zext i8 %77 to i32
  %xor90.i.2673 = xor i32 %conv84.i.2670, %conv89.i.2672
  %conv91.i.2674 = trunc i32 %xor90.i.2673 to i8
  %scevgep340.2675 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %conv91.i.2674, i8* %scevgep340.2675, align 1
  %scevgep321.1.2 = getelementptr i8, i8* %x, i64 1
  %78 = load i8, i8* %scevgep321.1.2, align 1
  %conv44.i.1.2 = zext i8 %78 to i32
  %scevgep324.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 1
  %79 = load i8, i8* %scevgep324.1.2, align 1
  %conv49.i.1.2 = zext i8 %79 to i32
  %xor.i73.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i73.1.2 to i8
  %scevgep328.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep328.1.2, align 1
  %80 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %80 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep325.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 1
  %81 = load i8, i8* %scevgep325.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %81) #3
  %scevgep332.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep332.1.2, align 1
  %82 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep329.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 1
  %83 = load i8, i8* %scevgep329.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #3
  %scevgep336.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep336.1.2, align 1
  %scevgep333.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 1
  %84 = load i8, i8* %scevgep333.1.2, align 1
  %conv84.i.1.2 = zext i8 %84 to i32
  %scevgep337.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep337.1.2, align 1
  %conv89.i.1.2 = zext i8 %85 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep340.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep340.1.2, align 1
  %86 = load i8, i8* %arraydecay6, align 1
  %87 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep311.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %88 = load i8, i8* %scevgep311.1, align 1
  %conv126.i.1 = zext i8 %88 to i32
  %89 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %89 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep311.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %90 = load i8, i8* %scevgep311.2, align 1
  %conv126.i.2 = zext i8 %90 to i32
  %91 = load i8, i8* %arraydecay7, align 1
  %conv129.i.2 = zext i8 %91 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay7, align 1
  %scevgep310 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep310 to [3 x [3 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %93 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %94 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep311.1610 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 0, i64 0
  %95 = load i8, i8* %scevgep311.1610, align 1
  %conv126.i.1611 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1612 = zext i8 %96 to i32
  %xor130.i.1613 = xor i32 %conv129.i.1612, %conv126.i.1611
  %conv131.i.1614 = trunc i32 %xor130.i.1613 to i8
  store i8 %conv131.i.1614, i8* %arrayidx128.i.1, align 1
  %scevgep311.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 0, i64 2
  %97 = load i8, i8* %scevgep311.2.1, align 1
  %conv126.i.2.1 = zext i8 %97 to i32
  %98 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %98 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep310.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep310.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %100 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %101 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep311.2619 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %99, i64 0, i64 0, i64 0
  %102 = load i8, i8* %scevgep311.2619, align 1
  %conv126.i.2620 = zext i8 %102 to i32
  %103 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2621 = zext i8 %103 to i32
  %xor130.i.2622 = xor i32 %conv129.i.2621, %conv126.i.2620
  %conv131.i.2623 = trunc i32 %xor130.i.2622 to i8
  store i8 %conv131.i.2623, i8* %arrayidx128.i.2, align 1
  %scevgep311.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %99, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep311.1.2, align 1
  %conv126.i.1.2 = zext i8 %104 to i32
  %105 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %105 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i52, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep301 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %106 = load i8, i8* %scevgep301, align 1
  %scevgep301.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %107 = load i8, i8* %scevgep301.1, align 1
  %conv.i.i172.i.1 = zext i8 %107 to i32
  %conv1.i.i173.i.1 = zext i8 %106 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep301.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %108 = load i8, i8* %scevgep301.2, align 1
  %conv.i.i172.i.2 = zext i8 %108 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.2 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep296 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %109 = load i8, i8* %scevgep296, align 1
  %call.i.i703 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %109) #3
  %call.i3.i704 = call zeroext i8 @mult(i8 zeroext %call.i.i703, i8 zeroext %call.i.i703) #3
  %scevgep297 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  store i8 %call.i3.i704, i8* %scevgep297, align 1
  %scevgep296.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %110 = load i8, i8* %scevgep296.1, align 1
  %call.i.i701 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %110) #3
  %call.i3.i702 = call zeroext i8 @mult(i8 zeroext %call.i.i701, i8 zeroext %call.i.i701) #3
  %scevgep297.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  store i8 %call.i3.i702, i8* %scevgep297.1, align 1
  %scevgep296.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %111 = load i8, i8* %scevgep296.2, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %111) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep297.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  store i8 %call.i3.i, i8* %scevgep297.2, align 1
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %call.i108 = call zeroext i8 (...) @rand() #3
  %conv.i109 = zext i8 %call.i108 to i32
  %scevgep292 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %112 = load i8, i8* %scevgep292, align 1
  %scevgep292.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %113 = load i8, i8* %scevgep292.1, align 1
  %conv.i.i.i115.1 = zext i8 %113 to i32
  %conv1.i.i.i116.1 = zext i8 %112 to i32
  %xor.i.i.i117.1 = xor i32 %conv1.i.i.i116.1, %conv.i.i.i115.1
  %conv2.i.i.i118.1 = trunc i32 %xor.i.i.i117.1 to i8
  %scevgep292.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %114 = load i8, i8* %scevgep292.2, align 1
  %conv.i.i.i115.2 = zext i8 %114 to i32
  %conv1.i.i.i116.2 = zext i8 %conv2.i.i.i118.1 to i32
  %xor.i.i.i117.2 = xor i32 %conv1.i.i.i116.2, %conv.i.i.i115.2
  %conv2.i.i.i118.2 = trunc i32 %xor.i.i.i117.2 to i8
  %conv2.i121 = zext i8 %conv2.i.i.i118.2 to i32
  %cmp.i122 = icmp eq i32 %conv.i109, %conv2.i121
  call void @assume(i1 zeroext %cmp.i122) #3
  %scevgep287 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %115 = load i8, i8* %scevgep287, align 1
  %scevgep288 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  store i8 %115, i8* %scevgep288, align 1
  %scevgep287.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %116 = load i8, i8* %scevgep287.1, align 1
  %scevgep288.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  store i8 %116, i8* %scevgep288.1, align 1
  %scevgep287.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %117 = load i8, i8* %scevgep287.2, align 1
  %scevgep288.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  store i8 %117, i8* %scevgep288.2, align 1
  %call7.i137 = call zeroext i8 (...) @rand() #3
  %conv8.i138 = zext i8 %call7.i137 to i32
  %118 = load i8, i8* %arraydecay11, align 1
  %conv9.i139 = zext i8 %118 to i32
  %xor.i140 = xor i32 %conv9.i139, %conv8.i138
  %conv10.i141 = trunc i32 %xor.i140 to i8
  store i8 %conv10.i141, i8* %arraydecay11, align 1
  %conv11.i142 = zext i8 %call7.i137 to i32
  %scevgep283 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %119 = load i8, i8* %scevgep283, align 1
  %conv13.i145 = zext i8 %119 to i32
  %xor14.i146 = xor i32 %conv13.i145, %conv11.i142
  %conv15.i147 = trunc i32 %xor14.i146 to i8
  store i8 %conv15.i147, i8* %scevgep283, align 1
  %call7.i137.1 = call zeroext i8 (...) @rand() #3
  %conv8.i138.1 = zext i8 %call7.i137.1 to i32
  %120 = load i8, i8* %arraydecay11, align 1
  %conv9.i139.1 = zext i8 %120 to i32
  %xor.i140.1 = xor i32 %conv9.i139.1, %conv8.i138.1
  %conv10.i141.1 = trunc i32 %xor.i140.1 to i8
  store i8 %conv10.i141.1, i8* %arraydecay11, align 1
  %conv11.i142.1 = zext i8 %call7.i137.1 to i32
  %scevgep283.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %121 = load i8, i8* %scevgep283.1, align 1
  %conv13.i145.1 = zext i8 %121 to i32
  %xor14.i146.1 = xor i32 %conv13.i145.1, %conv11.i142.1
  %conv15.i147.1 = trunc i32 %xor14.i146.1 to i8
  store i8 %conv15.i147.1, i8* %scevgep283.1, align 1
  %conv16.i150 = zext i8 %call.i108 to i32
  %scevgep279 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %122 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %123 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i31.i157.1 = zext i8 %123 to i32
  %conv1.i.i32.i158.1 = zext i8 %122 to i32
  %xor.i.i33.i159.1 = xor i32 %conv1.i.i32.i158.1, %conv.i.i31.i157.1
  %conv2.i.i34.i160.1 = trunc i32 %xor.i.i33.i159.1 to i8
  %scevgep279.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %124 = load i8, i8* %scevgep279.2, align 1
  %conv.i.i31.i157.2 = zext i8 %124 to i32
  %conv1.i.i32.i158.2 = zext i8 %conv2.i.i34.i160.1 to i32
  %xor.i.i33.i159.2 = xor i32 %conv1.i.i32.i158.2, %conv.i.i31.i157.2
  %conv2.i.i34.i160.2 = trunc i32 %xor.i.i33.i159.2 to i8
  %conv18.i163 = zext i8 %conv2.i.i34.i160.2 to i32
  %cmp19.i164 = icmp eq i32 %conv16.i150, %conv18.i163
  call void @assert(i1 zeroext %cmp19.i164) #3
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %call.i197 = call zeroext i8 (...) @rand() #3
  %call1.i198 = call zeroext i8 (...) @rand() #3
  %conv.i199 = zext i8 %call.i197 to i32
  %scevgep275 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %125 = load i8, i8* %scevgep275, align 1
  %scevgep275.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %126 = load i8, i8* %scevgep275.1, align 1
  %conv.i.i.i205.1 = zext i8 %126 to i32
  %conv1.i.i.i206.1 = zext i8 %125 to i32
  %xor.i.i.i207.1 = xor i32 %conv1.i.i.i206.1, %conv.i.i.i205.1
  %conv2.i.i.i208.1 = trunc i32 %xor.i.i.i207.1 to i8
  %scevgep275.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %127 = load i8, i8* %scevgep275.2, align 1
  %conv.i.i.i205.2 = zext i8 %127 to i32
  %conv1.i.i.i206.2 = zext i8 %conv2.i.i.i208.1 to i32
  %xor.i.i.i207.2 = xor i32 %conv1.i.i.i206.2, %conv.i.i.i205.2
  %conv2.i.i.i208.2 = trunc i32 %xor.i.i.i207.2 to i8
  %conv3.i211 = zext i8 %conv2.i.i.i208.2 to i32
  %cmp.i212 = icmp eq i32 %conv.i199, %conv3.i211
  call void @assume(i1 zeroext %cmp.i212) #3
  %conv5.i213 = zext i8 %call1.i198 to i32
  %scevgep271 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %128 = load i8, i8* %scevgep271, align 1
  %scevgep271.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %129 = load i8, i8* %scevgep271.1, align 1
  %conv.i.i155.i220.1 = zext i8 %129 to i32
  %conv1.i.i156.i221.1 = zext i8 %128 to i32
  %xor.i.i157.i222.1 = xor i32 %conv1.i.i156.i221.1, %conv.i.i155.i220.1
  %conv2.i.i158.i223.1 = trunc i32 %xor.i.i157.i222.1 to i8
  %scevgep271.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %130 = load i8, i8* %scevgep271.2, align 1
  %conv.i.i155.i220.2 = zext i8 %130 to i32
  %conv1.i.i156.i221.2 = zext i8 %conv2.i.i158.i223.1 to i32
  %xor.i.i157.i222.2 = xor i32 %conv1.i.i156.i221.2, %conv.i.i155.i220.2
  %conv2.i.i158.i223.2 = trunc i32 %xor.i.i157.i222.2 to i8
  %conv7.i226 = zext i8 %conv2.i.i158.i223.2 to i32
  %cmp8.i227 = icmp eq i32 %conv5.i213, %conv7.i226
  call void @assume(i1 zeroext %cmp8.i227) #3
  %scevgep255 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep255256 = bitcast i8* %scevgep255 to [3 x [3 x i8]]*
  %scevgep262 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep262263 = bitcast i8* %scevgep262 to [3 x [3 x i8]]*
  %call16.i235 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235, i8* %scevgep255, align 1
  %131 = load i8, i8* %scevgep255, align 1
  store i8 %131, i8* %scevgep262, align 1
  %scevgep260 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep255256, i64 0, i64 0, i64 1
  %scevgep267 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep262263, i64 0, i64 1, i64 0
  %call16.i235.1686 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.1686, i8* %scevgep260, align 1
  %132 = load i8, i8* %scevgep260, align 1
  store i8 %132, i8* %scevgep267, align 1
  %scevgep258 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep255256, i64 0, i64 1, i64 1
  %scevgep265 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep262263, i64 0, i64 1, i64 1
  %call16.i235.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.1, i8* %scevgep258, align 1
  %133 = load i8, i8* %scevgep258, align 1
  store i8 %133, i8* %scevgep265, align 1
  %scevgep232.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %134 = load i8, i8* %scevgep232.1, align 1
  %conv44.i262.1 = zext i8 %134 to i32
  %scevgep235.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %135 = load i8, i8* %scevgep235.1, align 1
  %conv49.i267.1 = zext i8 %135 to i32
  %xor.i268.1 = xor i32 %conv44.i262.1, %conv49.i267.1
  %conv50.i269.1 = trunc i32 %xor.i268.1 to i8
  %scevgep239.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1, i8* %scevgep239.1, align 1
  %136 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.1 = zext i8 %136 to i32
  %xor58.i277.1 = xor i32 %conv57.i276.1, 1
  %conv59.i278.1 = trunc i32 %xor58.i277.1 to i8
  %scevgep236.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep236.1, align 1
  %call64.i283.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1, i8 zeroext %137) #3
  %scevgep243.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.1, i8* %scevgep243.1, align 1
  %138 = load i8, i8* %arraydecay12, align 1
  %scevgep240.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep240.1, align 1
  %call75.i294.1 = call zeroext i8 @mult(i8 zeroext %138, i8 zeroext %139) #3
  %scevgep247.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.1, i8* %scevgep247.1, align 1
  %scevgep244.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %140 = load i8, i8* %scevgep244.1, align 1
  %conv84.i303.1 = zext i8 %140 to i32
  %scevgep248.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %141 = load i8, i8* %scevgep248.1, align 1
  %conv89.i308.1 = zext i8 %141 to i32
  %xor90.i309.1 = xor i32 %conv84.i303.1, %conv89.i308.1
  %conv91.i310.1 = trunc i32 %xor90.i309.1 to i8
  %scevgep251.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1, i8* %scevgep251.1, align 1
  %scevgep232.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %142 = load i8, i8* %scevgep232.2, align 1
  %conv44.i262.2 = zext i8 %142 to i32
  %scevgep235.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %143 = load i8, i8* %scevgep235.2, align 1
  %conv49.i267.2 = zext i8 %143 to i32
  %xor.i268.2 = xor i32 %conv44.i262.2, %conv49.i267.2
  %conv50.i269.2 = trunc i32 %xor.i268.2 to i8
  %scevgep239.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2, i8* %scevgep239.2, align 1
  %144 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.2 = zext i8 %144 to i32
  %xor58.i277.2 = xor i32 %conv57.i276.2, 1
  %conv59.i278.2 = trunc i32 %xor58.i277.2 to i8
  %scevgep236.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %145 = load i8, i8* %scevgep236.2, align 1
  %call64.i283.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2, i8 zeroext %145) #3
  %scevgep243.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i283.2, i8* %scevgep243.2, align 1
  %146 = load i8, i8* %arraydecay12, align 1
  %scevgep240.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %147 = load i8, i8* %scevgep240.2, align 1
  %call75.i294.2 = call zeroext i8 @mult(i8 zeroext %146, i8 zeroext %147) #3
  %scevgep247.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i294.2, i8* %scevgep247.2, align 1
  %scevgep244.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep244.2, align 1
  %conv84.i303.2 = zext i8 %148 to i32
  %scevgep248.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %149 = load i8, i8* %scevgep248.2, align 1
  %conv89.i308.2 = zext i8 %149 to i32
  %xor90.i309.2 = xor i32 %conv84.i303.2, %conv89.i308.2
  %conv91.i310.2 = trunc i32 %xor90.i309.2 to i8
  %scevgep251.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2, i8* %scevgep251.2, align 1
  %scevgep234 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep234 to [3 x [3 x i8]]*
  %scevgep238 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %151 = bitcast i8* %scevgep238 to [3 x [3 x i8]]*
  %scevgep242 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %152 = bitcast i8* %scevgep242 to [3 x [3 x i8]]*
  %scevgep246 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %153 = bitcast i8* %scevgep246 to [3 x [3 x i8]]*
  %scevgep250 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %154 = bitcast i8* %scevgep250 to [3 x [3 x i8]]*
  %arrayidx56.i275.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %arrayidx70.i289.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep232.1556 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %155 = load i8, i8* %scevgep232.1556, align 1
  %conv44.i262.1557 = zext i8 %155 to i32
  %scevgep235.1558 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep235.1558, align 1
  %conv49.i267.1559 = zext i8 %156 to i32
  %xor.i268.1560 = xor i32 %conv44.i262.1557, %conv49.i267.1559
  %conv50.i269.1561 = trunc i32 %xor.i268.1560 to i8
  %scevgep239.1562 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 0
  store i8 %conv50.i269.1561, i8* %scevgep239.1562, align 1
  %157 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.1563 = zext i8 %157 to i32
  %xor58.i277.1564 = xor i32 %conv57.i276.1563, 1
  %conv59.i278.1565 = trunc i32 %xor58.i277.1564 to i8
  %scevgep236.1566 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep236.1566, align 1
  %call64.i283.1567 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1565, i8 zeroext %158) #3
  %scevgep243.1568 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 0, i64 0
  store i8 %call64.i283.1567, i8* %scevgep243.1568, align 1
  %159 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep240.1569 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep240.1569, align 1
  %call75.i294.1570 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #3
  %scevgep247.1571 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 0
  store i8 %call75.i294.1570, i8* %scevgep247.1571, align 1
  %scevgep244.1572 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 0, i64 0
  %161 = load i8, i8* %scevgep244.1572, align 1
  %conv84.i303.1573 = zext i8 %161 to i32
  %scevgep248.1574 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 0
  %162 = load i8, i8* %scevgep248.1574, align 1
  %conv89.i308.1575 = zext i8 %162 to i32
  %xor90.i309.1576 = xor i32 %conv84.i303.1573, %conv89.i308.1575
  %conv91.i310.1577 = trunc i32 %xor90.i309.1576 to i8
  %scevgep251.1578 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 0
  store i8 %conv91.i310.1577, i8* %scevgep251.1578, align 1
  %scevgep232.2.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %163 = load i8, i8* %scevgep232.2.1, align 1
  %conv44.i262.2.1 = zext i8 %163 to i32
  %scevgep235.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 2
  %164 = load i8, i8* %scevgep235.2.1, align 1
  %conv49.i267.2.1 = zext i8 %164 to i32
  %xor.i268.2.1 = xor i32 %conv44.i262.2.1, %conv49.i267.2.1
  %conv50.i269.2.1 = trunc i32 %xor.i268.2.1 to i8
  %scevgep239.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2.1, i8* %scevgep239.2.1, align 1
  %165 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.2.1 = zext i8 %165 to i32
  %xor58.i277.2.1 = xor i32 %conv57.i276.2.1, 1
  %conv59.i278.2.1 = trunc i32 %xor58.i277.2.1 to i8
  %scevgep236.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 2
  %166 = load i8, i8* %scevgep236.2.1, align 1
  %call64.i283.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2.1, i8 zeroext %166) #3
  %scevgep243.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 0, i64 2
  store i8 %call64.i283.2.1, i8* %scevgep243.2.1, align 1
  %167 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep240.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 2
  %168 = load i8, i8* %scevgep240.2.1, align 1
  %call75.i294.2.1 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %168) #3
  %scevgep247.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 2
  store i8 %call75.i294.2.1, i8* %scevgep247.2.1, align 1
  %scevgep244.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 0, i64 2
  %169 = load i8, i8* %scevgep244.2.1, align 1
  %conv84.i303.2.1 = zext i8 %169 to i32
  %scevgep248.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 2
  %170 = load i8, i8* %scevgep248.2.1, align 1
  %conv89.i308.2.1 = zext i8 %170 to i32
  %xor90.i309.2.1 = xor i32 %conv84.i303.2.1, %conv89.i308.2.1
  %conv91.i310.2.1 = trunc i32 %xor90.i309.2.1 to i8
  %scevgep251.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2.1, i8* %scevgep251.2.1, align 1
  %scevgep234.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 1, i64 0
  %171 = bitcast i8* %scevgep234.1 to [3 x [3 x i8]]*
  %scevgep238.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 1, i64 0
  %172 = bitcast i8* %scevgep238.1 to [3 x [3 x i8]]*
  %scevgep242.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 1, i64 0
  %173 = bitcast i8* %scevgep242.1 to [3 x [3 x i8]]*
  %scevgep246.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep246.1 to [3 x [3 x i8]]*
  %scevgep250.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep250.1 to [3 x [3 x i8]]*
  %arrayidx56.i275.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %arrayidx70.i289.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep232.2583 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %176 = load i8, i8* %scevgep232.2583, align 1
  %conv44.i262.2584 = zext i8 %176 to i32
  %scevgep235.2585 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 0
  %177 = load i8, i8* %scevgep235.2585, align 1
  %conv49.i267.2586 = zext i8 %177 to i32
  %xor.i268.2587 = xor i32 %conv44.i262.2584, %conv49.i267.2586
  %conv50.i269.2588 = trunc i32 %xor.i268.2587 to i8
  %scevgep239.2589 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %172, i64 0, i64 0, i64 0
  store i8 %conv50.i269.2588, i8* %scevgep239.2589, align 1
  %178 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.2590 = zext i8 %178 to i32
  %xor58.i277.2591 = xor i32 %conv57.i276.2590, 1
  %conv59.i278.2592 = trunc i32 %xor58.i277.2591 to i8
  %scevgep236.2593 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep236.2593, align 1
  %call64.i283.2594 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2592, i8 zeroext %179) #3
  %scevgep243.2595 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %173, i64 0, i64 0, i64 0
  store i8 %call64.i283.2594, i8* %scevgep243.2595, align 1
  %180 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep240.2596 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %172, i64 0, i64 0, i64 0
  %181 = load i8, i8* %scevgep240.2596, align 1
  %call75.i294.2597 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181) #3
  %scevgep247.2598 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 0
  store i8 %call75.i294.2597, i8* %scevgep247.2598, align 1
  %scevgep244.2599 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %173, i64 0, i64 0, i64 0
  %182 = load i8, i8* %scevgep244.2599, align 1
  %conv84.i303.2600 = zext i8 %182 to i32
  %scevgep248.2601 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 0
  %183 = load i8, i8* %scevgep248.2601, align 1
  %conv89.i308.2602 = zext i8 %183 to i32
  %xor90.i309.2603 = xor i32 %conv84.i303.2600, %conv89.i308.2602
  %conv91.i310.2604 = trunc i32 %xor90.i309.2603 to i8
  %scevgep251.2605 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 0
  store i8 %conv91.i310.2604, i8* %scevgep251.2605, align 1
  %scevgep232.1.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %184 = load i8, i8* %scevgep232.1.2, align 1
  %conv44.i262.1.2 = zext i8 %184 to i32
  %scevgep235.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 1
  %185 = load i8, i8* %scevgep235.1.2, align 1
  %conv49.i267.1.2 = zext i8 %185 to i32
  %xor.i268.1.2 = xor i32 %conv44.i262.1.2, %conv49.i267.1.2
  %conv50.i269.1.2 = trunc i32 %xor.i268.1.2 to i8
  %scevgep239.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %172, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1.2, i8* %scevgep239.1.2, align 1
  %186 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.1.2 = zext i8 %186 to i32
  %xor58.i277.1.2 = xor i32 %conv57.i276.1.2, 1
  %conv59.i278.1.2 = trunc i32 %xor58.i277.1.2 to i8
  %scevgep236.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep236.1.2, align 1
  %call64.i283.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1.2, i8 zeroext %187) #3
  %scevgep243.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %173, i64 0, i64 0, i64 1
  store i8 %call64.i283.1.2, i8* %scevgep243.1.2, align 1
  %188 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep240.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %172, i64 0, i64 0, i64 1
  %189 = load i8, i8* %scevgep240.1.2, align 1
  %call75.i294.1.2 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189) #3
  %scevgep247.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 1
  store i8 %call75.i294.1.2, i8* %scevgep247.1.2, align 1
  %scevgep244.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %173, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep244.1.2, align 1
  %conv84.i303.1.2 = zext i8 %190 to i32
  %scevgep248.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep248.1.2, align 1
  %conv89.i308.1.2 = zext i8 %191 to i32
  %xor90.i309.1.2 = xor i32 %conv84.i303.1.2, %conv89.i308.1.2
  %conv91.i310.1.2 = trunc i32 %xor90.i309.1.2 to i8
  %scevgep251.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1.2, i8* %scevgep251.1.2, align 1
  %192 = load i8, i8* %arraydecay12, align 1
  %193 = load i8, i8* %arraydecay13, align 1
  %call111.i327 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193) #3
  store i8 %call111.i327, i8* %arraydecay14, align 1
  %scevgep222.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep222.1, align 1
  %conv126.i339.1 = zext i8 %194 to i32
  %195 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.1 = zext i8 %195 to i32
  %xor130.i343.1 = xor i32 %conv129.i342.1, %conv126.i339.1
  %conv131.i344.1 = trunc i32 %xor130.i343.1 to i8
  store i8 %conv131.i344.1, i8* %arraydecay14, align 1
  %scevgep222.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %196 = load i8, i8* %scevgep222.2, align 1
  %conv126.i339.2 = zext i8 %196 to i32
  %197 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.2 = zext i8 %197 to i32
  %xor130.i343.2 = xor i32 %conv129.i342.2, %conv126.i339.2
  %conv131.i344.2 = trunc i32 %xor130.i343.2 to i8
  store i8 %conv131.i344.2, i8* %arraydecay14, align 1
  %scevgep221 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %198 = bitcast i8* %scevgep221 to [3 x [3 x i8]]*
  %arrayidx108.i324.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %199 = load i8, i8* %arrayidx108.i324.1, align 1
  %arrayidx110.i326.1 = getelementptr inbounds i8, i8* %arraydecay13, i64 1
  %200 = load i8, i8* %arrayidx110.i326.1, align 1
  %call111.i327.1 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200) #3
  %arrayidx113.i329.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  store i8 %call111.i327.1, i8* %arrayidx113.i329.1, align 1
  %arrayidx128.i341.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  %scevgep222.1538 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %198, i64 0, i64 0, i64 0
  %201 = load i8, i8* %scevgep222.1538, align 1
  %conv126.i339.1539 = zext i8 %201 to i32
  %202 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.1540 = zext i8 %202 to i32
  %xor130.i343.1541 = xor i32 %conv129.i342.1540, %conv126.i339.1539
  %conv131.i344.1542 = trunc i32 %xor130.i343.1541 to i8
  store i8 %conv131.i344.1542, i8* %arrayidx128.i341.1, align 1
  %scevgep222.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %198, i64 0, i64 0, i64 2
  %203 = load i8, i8* %scevgep222.2.1, align 1
  %conv126.i339.2.1 = zext i8 %203 to i32
  %204 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.2.1 = zext i8 %204 to i32
  %xor130.i343.2.1 = xor i32 %conv129.i342.2.1, %conv126.i339.2.1
  %conv131.i344.2.1 = trunc i32 %xor130.i343.2.1 to i8
  store i8 %conv131.i344.2.1, i8* %arrayidx128.i341.1, align 1
  %scevgep221.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %198, i64 0, i64 1, i64 0
  %205 = bitcast i8* %scevgep221.1 to [3 x [3 x i8]]*
  %arrayidx108.i324.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %206 = load i8, i8* %arrayidx108.i324.2, align 1
  %arrayidx110.i326.2 = getelementptr inbounds i8, i8* %arraydecay13, i64 2
  %207 = load i8, i8* %arrayidx110.i326.2, align 1
  %call111.i327.2 = call zeroext i8 @mult(i8 zeroext %206, i8 zeroext %207) #3
  %arrayidx113.i329.2 = getelementptr inbounds i8, i8* %arraydecay14, i64 2
  store i8 %call111.i327.2, i8* %arrayidx113.i329.2, align 1
  %arrayidx128.i341.2 = getelementptr inbounds i8, i8* %arraydecay14, i64 2
  %scevgep222.2547 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %205, i64 0, i64 0, i64 0
  %208 = load i8, i8* %scevgep222.2547, align 1
  %conv126.i339.2548 = zext i8 %208 to i32
  %209 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.2549 = zext i8 %209 to i32
  %xor130.i343.2550 = xor i32 %conv129.i342.2549, %conv126.i339.2548
  %conv131.i344.2551 = trunc i32 %xor130.i343.2550 to i8
  store i8 %conv131.i344.2551, i8* %arrayidx128.i341.2, align 1
  %scevgep222.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %205, i64 0, i64 0, i64 1
  %210 = load i8, i8* %scevgep222.1.2, align 1
  %conv126.i339.1.2 = zext i8 %210 to i32
  %211 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.1.2 = zext i8 %211 to i32
  %xor130.i343.1.2 = xor i32 %conv129.i342.1.2, %conv126.i339.1.2
  %conv131.i344.1.2 = trunc i32 %xor130.i343.1.2 to i8
  store i8 %conv131.i344.1.2, i8* %arrayidx128.i341.2, align 1
  %call139.i350 = call zeroext i8 @mult(i8 zeroext %call.i197, i8 zeroext %call1.i198) #3
  %conv140.i351 = zext i8 %call139.i350 to i32
  %scevgep212 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %212 = load i8, i8* %scevgep212, align 1
  %scevgep212.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %213 = load i8, i8* %scevgep212.1, align 1
  %conv.i.i172.i358.1 = zext i8 %213 to i32
  %conv1.i.i173.i359.1 = zext i8 %212 to i32
  %xor.i.i174.i360.1 = xor i32 %conv1.i.i173.i359.1, %conv.i.i172.i358.1
  %conv2.i.i175.i361.1 = trunc i32 %xor.i.i174.i360.1 to i8
  %scevgep212.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %214 = load i8, i8* %scevgep212.2, align 1
  %conv.i.i172.i358.2 = zext i8 %214 to i32
  %conv1.i.i173.i359.2 = zext i8 %conv2.i.i175.i361.1 to i32
  %xor.i.i174.i360.2 = xor i32 %conv1.i.i173.i359.2, %conv.i.i172.i358.2
  %conv2.i.i175.i361.2 = trunc i32 %xor.i.i174.i360.2 to i8
  %conv142.i364 = zext i8 %conv2.i.i175.i361.2 to i32
  %cmp143.i365 = icmp eq i32 %conv140.i351, %conv142.i364
  call void @assert(i1 zeroext %cmp143.i365) #3
  %scevgep207 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %215 = load i8, i8* %scevgep207, align 1
  %call.i.i.i697 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %215) #3
  %call.i3.i.i698 = call zeroext i8 @mult(i8 zeroext %call.i.i.i697, i8 zeroext %call.i.i.i697) #3
  %call.i.i5.i699 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i698, i8 zeroext %call.i3.i.i698) #3
  %call.i3.i6.i700 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i699, i8 zeroext %call.i.i5.i699) #3
  %scevgep208 = getelementptr [3 x i8], [3 x i8]* %v16, i64 0, i64 0
  store i8 %call.i3.i6.i700, i8* %scevgep208, align 1
  %scevgep207.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %216 = load i8, i8* %scevgep207.1, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %216) #3
  %call.i3.i.i694 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i695 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i694, i8 zeroext %call.i3.i.i694) #3
  %call.i3.i6.i696 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i695, i8 zeroext %call.i.i5.i695) #3
  %scevgep208.1 = getelementptr [3 x i8], [3 x i8]* %v16, i64 0, i64 1
  store i8 %call.i3.i6.i696, i8* %scevgep208.1, align 1
  %scevgep207.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %217 = load i8, i8* %scevgep207.2, align 1
  %call.i.i.i690 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %217) #3
  %call.i3.i.i691 = call zeroext i8 @mult(i8 zeroext %call.i.i.i690, i8 zeroext %call.i.i.i690) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i691, i8 zeroext %call.i3.i.i691) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep208.2 = getelementptr [3 x i8], [3 x i8]* %v16, i64 0, i64 2
  store i8 %call.i3.i6.i, i8* %scevgep208.2, align 1
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %v16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %call.i413 = call zeroext i8 (...) @rand() #3
  %call1.i414 = call zeroext i8 (...) @rand() #3
  %conv.i415 = zext i8 %call.i413 to i32
  %scevgep203 = getelementptr [3 x i8], [3 x i8]* %v16, i64 0, i64 0
  %218 = load i8, i8* %scevgep203, align 1
  %scevgep203.1 = getelementptr [3 x i8], [3 x i8]* %v16, i64 0, i64 1
  %219 = load i8, i8* %scevgep203.1, align 1
  %conv.i.i.i421.1 = zext i8 %219 to i32
  %conv1.i.i.i422.1 = zext i8 %218 to i32
  %xor.i.i.i423.1 = xor i32 %conv1.i.i.i422.1, %conv.i.i.i421.1
  %conv2.i.i.i424.1 = trunc i32 %xor.i.i.i423.1 to i8
  %scevgep203.2 = getelementptr [3 x i8], [3 x i8]* %v16, i64 0, i64 2
  %220 = load i8, i8* %scevgep203.2, align 1
  %conv.i.i.i421.2 = zext i8 %220 to i32
  %conv1.i.i.i422.2 = zext i8 %conv2.i.i.i424.1 to i32
  %xor.i.i.i423.2 = xor i32 %conv1.i.i.i422.2, %conv.i.i.i421.2
  %conv2.i.i.i424.2 = trunc i32 %xor.i.i.i423.2 to i8
  %conv3.i427 = zext i8 %conv2.i.i.i424.2 to i32
  %cmp.i428 = icmp eq i32 %conv.i415, %conv3.i427
  call void @assume(i1 zeroext %cmp.i428) #3
  %conv5.i429 = zext i8 %call1.i414 to i32
  %scevgep199 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %221 = load i8, i8* %scevgep199, align 1
  %scevgep199.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %222 = load i8, i8* %scevgep199.1, align 1
  %conv.i.i155.i436.1 = zext i8 %222 to i32
  %conv1.i.i156.i437.1 = zext i8 %221 to i32
  %xor.i.i157.i438.1 = xor i32 %conv1.i.i156.i437.1, %conv.i.i155.i436.1
  %conv2.i.i158.i439.1 = trunc i32 %xor.i.i157.i438.1 to i8
  %scevgep199.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %223 = load i8, i8* %scevgep199.2, align 1
  %conv.i.i155.i436.2 = zext i8 %223 to i32
  %conv1.i.i156.i437.2 = zext i8 %conv2.i.i158.i439.1 to i32
  %xor.i.i157.i438.2 = xor i32 %conv1.i.i156.i437.2, %conv.i.i155.i436.2
  %conv2.i.i158.i439.2 = trunc i32 %xor.i.i157.i438.2 to i8
  %conv7.i442 = zext i8 %conv2.i.i158.i439.2 to i32
  %cmp8.i443 = icmp eq i32 %conv5.i429, %conv7.i442
  call void @assume(i1 zeroext %cmp8.i443) #3
  %scevgep183 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep183184 = bitcast i8* %scevgep183 to [3 x [3 x i8]]*
  %scevgep190 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep190191 = bitcast i8* %scevgep190 to [3 x [3 x i8]]*
  %call16.i451 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451, i8* %scevgep183, align 1
  %224 = load i8, i8* %scevgep183, align 1
  store i8 %224, i8* %scevgep190, align 1
  %scevgep188 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep183184, i64 0, i64 0, i64 1
  %scevgep195 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep190191, i64 0, i64 1, i64 0
  %call16.i451.1683 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.1683, i8* %scevgep188, align 1
  %225 = load i8, i8* %scevgep188, align 1
  store i8 %225, i8* %scevgep195, align 1
  %scevgep186 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep183184, i64 0, i64 1, i64 1
  %scevgep193 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep190191, i64 0, i64 1, i64 1
  %call16.i451.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.1, i8* %scevgep186, align 1
  %226 = load i8, i8* %scevgep186, align 1
  store i8 %226, i8* %scevgep193, align 1
  %scevgep160.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %227 = load i8, i8* %scevgep160.1, align 1
  %conv44.i478.1 = zext i8 %227 to i32
  %scevgep163.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %228 = load i8, i8* %scevgep163.1, align 1
  %conv49.i483.1 = zext i8 %228 to i32
  %xor.i484.1 = xor i32 %conv44.i478.1, %conv49.i483.1
  %conv50.i485.1 = trunc i32 %xor.i484.1 to i8
  %scevgep167.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1, i8* %scevgep167.1, align 1
  %229 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.1 = zext i8 %229 to i32
  %xor58.i493.1 = xor i32 %conv57.i492.1, 1
  %conv59.i494.1 = trunc i32 %xor58.i493.1 to i8
  %scevgep164.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %230 = load i8, i8* %scevgep164.1, align 1
  %call64.i499.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1, i8 zeroext %230) #3
  %scevgep171.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.1, i8* %scevgep171.1, align 1
  %231 = load i8, i8* %arraydecay17, align 1
  %scevgep168.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %232 = load i8, i8* %scevgep168.1, align 1
  %call75.i510.1 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %scevgep175.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.1, i8* %scevgep175.1, align 1
  %scevgep172.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %233 = load i8, i8* %scevgep172.1, align 1
  %conv84.i519.1 = zext i8 %233 to i32
  %scevgep176.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %234 = load i8, i8* %scevgep176.1, align 1
  %conv89.i524.1 = zext i8 %234 to i32
  %xor90.i525.1 = xor i32 %conv84.i519.1, %conv89.i524.1
  %conv91.i526.1 = trunc i32 %xor90.i525.1 to i8
  %scevgep179.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1, i8* %scevgep179.1, align 1
  %scevgep160.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %235 = load i8, i8* %scevgep160.2, align 1
  %conv44.i478.2 = zext i8 %235 to i32
  %scevgep163.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %236 = load i8, i8* %scevgep163.2, align 1
  %conv49.i483.2 = zext i8 %236 to i32
  %xor.i484.2 = xor i32 %conv44.i478.2, %conv49.i483.2
  %conv50.i485.2 = trunc i32 %xor.i484.2 to i8
  %scevgep167.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2, i8* %scevgep167.2, align 1
  %237 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.2 = zext i8 %237 to i32
  %xor58.i493.2 = xor i32 %conv57.i492.2, 1
  %conv59.i494.2 = trunc i32 %xor58.i493.2 to i8
  %scevgep164.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %238 = load i8, i8* %scevgep164.2, align 1
  %call64.i499.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2, i8 zeroext %238) #3
  %scevgep171.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i499.2, i8* %scevgep171.2, align 1
  %239 = load i8, i8* %arraydecay17, align 1
  %scevgep168.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %240 = load i8, i8* %scevgep168.2, align 1
  %call75.i510.2 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240) #3
  %scevgep175.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i510.2, i8* %scevgep175.2, align 1
  %scevgep172.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %241 = load i8, i8* %scevgep172.2, align 1
  %conv84.i519.2 = zext i8 %241 to i32
  %scevgep176.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %242 = load i8, i8* %scevgep176.2, align 1
  %conv89.i524.2 = zext i8 %242 to i32
  %xor90.i525.2 = xor i32 %conv84.i519.2, %conv89.i524.2
  %conv91.i526.2 = trunc i32 %xor90.i525.2 to i8
  %scevgep179.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2, i8* %scevgep179.2, align 1
  %scevgep162 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %243 = bitcast i8* %scevgep162 to [3 x [3 x i8]]*
  %scevgep166 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %244 = bitcast i8* %scevgep166 to [3 x [3 x i8]]*
  %scevgep170 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %245 = bitcast i8* %scevgep170 to [3 x [3 x i8]]*
  %scevgep174 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %246 = bitcast i8* %scevgep174 to [3 x [3 x i8]]*
  %scevgep178 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep178 to [3 x [3 x i8]]*
  %arrayidx56.i491.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %arrayidx70.i505.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep160.1484 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %248 = load i8, i8* %scevgep160.1484, align 1
  %conv44.i478.1485 = zext i8 %248 to i32
  %scevgep163.1486 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 0
  %249 = load i8, i8* %scevgep163.1486, align 1
  %conv49.i483.1487 = zext i8 %249 to i32
  %xor.i484.1488 = xor i32 %conv44.i478.1485, %conv49.i483.1487
  %conv50.i485.1489 = trunc i32 %xor.i484.1488 to i8
  %scevgep167.1490 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 0, i64 0
  store i8 %conv50.i485.1489, i8* %scevgep167.1490, align 1
  %250 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.1491 = zext i8 %250 to i32
  %xor58.i493.1492 = xor i32 %conv57.i492.1491, 1
  %conv59.i494.1493 = trunc i32 %xor58.i493.1492 to i8
  %scevgep164.1494 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 0
  %251 = load i8, i8* %scevgep164.1494, align 1
  %call64.i499.1495 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1493, i8 zeroext %251) #3
  %scevgep171.1496 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %245, i64 0, i64 0, i64 0
  store i8 %call64.i499.1495, i8* %scevgep171.1496, align 1
  %252 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep168.1497 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 0, i64 0
  %253 = load i8, i8* %scevgep168.1497, align 1
  %call75.i510.1498 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253) #3
  %scevgep175.1499 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 0
  store i8 %call75.i510.1498, i8* %scevgep175.1499, align 1
  %scevgep172.1500 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %245, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep172.1500, align 1
  %conv84.i519.1501 = zext i8 %254 to i32
  %scevgep176.1502 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 0
  %255 = load i8, i8* %scevgep176.1502, align 1
  %conv89.i524.1503 = zext i8 %255 to i32
  %xor90.i525.1504 = xor i32 %conv84.i519.1501, %conv89.i524.1503
  %conv91.i526.1505 = trunc i32 %xor90.i525.1504 to i8
  %scevgep179.1506 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 0, i64 0
  store i8 %conv91.i526.1505, i8* %scevgep179.1506, align 1
  %scevgep160.2.1 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 2
  %256 = load i8, i8* %scevgep160.2.1, align 1
  %conv44.i478.2.1 = zext i8 %256 to i32
  %scevgep163.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 2
  %257 = load i8, i8* %scevgep163.2.1, align 1
  %conv49.i483.2.1 = zext i8 %257 to i32
  %xor.i484.2.1 = xor i32 %conv44.i478.2.1, %conv49.i483.2.1
  %conv50.i485.2.1 = trunc i32 %xor.i484.2.1 to i8
  %scevgep167.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2.1, i8* %scevgep167.2.1, align 1
  %258 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.2.1 = zext i8 %258 to i32
  %xor58.i493.2.1 = xor i32 %conv57.i492.2.1, 1
  %conv59.i494.2.1 = trunc i32 %xor58.i493.2.1 to i8
  %scevgep164.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 2
  %259 = load i8, i8* %scevgep164.2.1, align 1
  %call64.i499.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2.1, i8 zeroext %259) #3
  %scevgep171.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %245, i64 0, i64 0, i64 2
  store i8 %call64.i499.2.1, i8* %scevgep171.2.1, align 1
  %260 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep168.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 0, i64 2
  %261 = load i8, i8* %scevgep168.2.1, align 1
  %call75.i510.2.1 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261) #3
  %scevgep175.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 2
  store i8 %call75.i510.2.1, i8* %scevgep175.2.1, align 1
  %scevgep172.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %245, i64 0, i64 0, i64 2
  %262 = load i8, i8* %scevgep172.2.1, align 1
  %conv84.i519.2.1 = zext i8 %262 to i32
  %scevgep176.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 2
  %263 = load i8, i8* %scevgep176.2.1, align 1
  %conv89.i524.2.1 = zext i8 %263 to i32
  %xor90.i525.2.1 = xor i32 %conv84.i519.2.1, %conv89.i524.2.1
  %conv91.i526.2.1 = trunc i32 %xor90.i525.2.1 to i8
  %scevgep179.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2.1, i8* %scevgep179.2.1, align 1
  %scevgep162.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 1, i64 0
  %264 = bitcast i8* %scevgep162.1 to [3 x [3 x i8]]*
  %scevgep166.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep166.1 to [3 x [3 x i8]]*
  %scevgep170.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %245, i64 0, i64 1, i64 0
  %266 = bitcast i8* %scevgep170.1 to [3 x [3 x i8]]*
  %scevgep174.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 1, i64 0
  %267 = bitcast i8* %scevgep174.1 to [3 x [3 x i8]]*
  %scevgep178.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 1, i64 0
  %268 = bitcast i8* %scevgep178.1 to [3 x [3 x i8]]*
  %arrayidx56.i491.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %arrayidx70.i505.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep160.2511 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %269 = load i8, i8* %scevgep160.2511, align 1
  %conv44.i478.2512 = zext i8 %269 to i32
  %scevgep163.2513 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 0
  %270 = load i8, i8* %scevgep163.2513, align 1
  %conv49.i483.2514 = zext i8 %270 to i32
  %xor.i484.2515 = xor i32 %conv44.i478.2512, %conv49.i483.2514
  %conv50.i485.2516 = trunc i32 %xor.i484.2515 to i8
  %scevgep167.2517 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 0
  store i8 %conv50.i485.2516, i8* %scevgep167.2517, align 1
  %271 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.2518 = zext i8 %271 to i32
  %xor58.i493.2519 = xor i32 %conv57.i492.2518, 1
  %conv59.i494.2520 = trunc i32 %xor58.i493.2519 to i8
  %scevgep164.2521 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 0
  %272 = load i8, i8* %scevgep164.2521, align 1
  %call64.i499.2522 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2520, i8 zeroext %272) #3
  %scevgep171.2523 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %266, i64 0, i64 0, i64 0
  store i8 %call64.i499.2522, i8* %scevgep171.2523, align 1
  %273 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep168.2524 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 0
  %274 = load i8, i8* %scevgep168.2524, align 1
  %call75.i510.2525 = call zeroext i8 @mult(i8 zeroext %273, i8 zeroext %274) #3
  %scevgep175.2526 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 0
  store i8 %call75.i510.2525, i8* %scevgep175.2526, align 1
  %scevgep172.2527 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %266, i64 0, i64 0, i64 0
  %275 = load i8, i8* %scevgep172.2527, align 1
  %conv84.i519.2528 = zext i8 %275 to i32
  %scevgep176.2529 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 0
  %276 = load i8, i8* %scevgep176.2529, align 1
  %conv89.i524.2530 = zext i8 %276 to i32
  %xor90.i525.2531 = xor i32 %conv84.i519.2528, %conv89.i524.2530
  %conv91.i526.2532 = trunc i32 %xor90.i525.2531 to i8
  %scevgep179.2533 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %268, i64 0, i64 0, i64 0
  store i8 %conv91.i526.2532, i8* %scevgep179.2533, align 1
  %scevgep160.1.2 = getelementptr [3 x i8], [3 x i8]* %wr, i64 0, i64 1
  %277 = load i8, i8* %scevgep160.1.2, align 1
  %conv44.i478.1.2 = zext i8 %277 to i32
  %scevgep163.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 1
  %278 = load i8, i8* %scevgep163.1.2, align 1
  %conv49.i483.1.2 = zext i8 %278 to i32
  %xor.i484.1.2 = xor i32 %conv44.i478.1.2, %conv49.i483.1.2
  %conv50.i485.1.2 = trunc i32 %xor.i484.1.2 to i8
  %scevgep167.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1.2, i8* %scevgep167.1.2, align 1
  %279 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.1.2 = zext i8 %279 to i32
  %xor58.i493.1.2 = xor i32 %conv57.i492.1.2, 1
  %conv59.i494.1.2 = trunc i32 %xor58.i493.1.2 to i8
  %scevgep164.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 1
  %280 = load i8, i8* %scevgep164.1.2, align 1
  %call64.i499.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1.2, i8 zeroext %280) #3
  %scevgep171.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %266, i64 0, i64 0, i64 1
  store i8 %call64.i499.1.2, i8* %scevgep171.1.2, align 1
  %281 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep168.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 1
  %282 = load i8, i8* %scevgep168.1.2, align 1
  %call75.i510.1.2 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282) #3
  %scevgep175.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 1
  store i8 %call75.i510.1.2, i8* %scevgep175.1.2, align 1
  %scevgep172.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %266, i64 0, i64 0, i64 1
  %283 = load i8, i8* %scevgep172.1.2, align 1
  %conv84.i519.1.2 = zext i8 %283 to i32
  %scevgep176.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 1
  %284 = load i8, i8* %scevgep176.1.2, align 1
  %conv89.i524.1.2 = zext i8 %284 to i32
  %xor90.i525.1.2 = xor i32 %conv84.i519.1.2, %conv89.i524.1.2
  %conv91.i526.1.2 = trunc i32 %xor90.i525.1.2 to i8
  %scevgep179.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %268, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1.2, i8* %scevgep179.1.2, align 1
  %285 = load i8, i8* %arraydecay17, align 1
  %286 = load i8, i8* %arraydecay18, align 1
  %call111.i543 = call zeroext i8 @mult(i8 zeroext %285, i8 zeroext %286) #3
  store i8 %call111.i543, i8* %arraydecay19, align 1
  %scevgep150.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %287 = load i8, i8* %scevgep150.1, align 1
  %conv126.i555.1 = zext i8 %287 to i32
  %288 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.1 = zext i8 %288 to i32
  %xor130.i559.1 = xor i32 %conv129.i558.1, %conv126.i555.1
  %conv131.i560.1 = trunc i32 %xor130.i559.1 to i8
  store i8 %conv131.i560.1, i8* %arraydecay19, align 1
  %scevgep150.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %289 = load i8, i8* %scevgep150.2, align 1
  %conv126.i555.2 = zext i8 %289 to i32
  %290 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.2 = zext i8 %290 to i32
  %xor130.i559.2 = xor i32 %conv129.i558.2, %conv126.i555.2
  %conv131.i560.2 = trunc i32 %xor130.i559.2 to i8
  store i8 %conv131.i560.2, i8* %arraydecay19, align 1
  %scevgep149 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %291 = bitcast i8* %scevgep149 to [3 x [3 x i8]]*
  %arrayidx108.i540.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %292 = load i8, i8* %arrayidx108.i540.1, align 1
  %arrayidx110.i542.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %293 = load i8, i8* %arrayidx110.i542.1, align 1
  %call111.i543.1 = call zeroext i8 @mult(i8 zeroext %292, i8 zeroext %293) #3
  %arrayidx113.i545.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  store i8 %call111.i543.1, i8* %arrayidx113.i545.1, align 1
  %arrayidx128.i557.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %scevgep150.1466 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %291, i64 0, i64 0, i64 0
  %294 = load i8, i8* %scevgep150.1466, align 1
  %conv126.i555.1467 = zext i8 %294 to i32
  %295 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.1468 = zext i8 %295 to i32
  %xor130.i559.1469 = xor i32 %conv129.i558.1468, %conv126.i555.1467
  %conv131.i560.1470 = trunc i32 %xor130.i559.1469 to i8
  store i8 %conv131.i560.1470, i8* %arrayidx128.i557.1, align 1
  %scevgep150.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %291, i64 0, i64 0, i64 2
  %296 = load i8, i8* %scevgep150.2.1, align 1
  %conv126.i555.2.1 = zext i8 %296 to i32
  %297 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.2.1 = zext i8 %297 to i32
  %xor130.i559.2.1 = xor i32 %conv129.i558.2.1, %conv126.i555.2.1
  %conv131.i560.2.1 = trunc i32 %xor130.i559.2.1 to i8
  store i8 %conv131.i560.2.1, i8* %arrayidx128.i557.1, align 1
  %scevgep149.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %291, i64 0, i64 1, i64 0
  %298 = bitcast i8* %scevgep149.1 to [3 x [3 x i8]]*
  %arrayidx108.i540.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %299 = load i8, i8* %arrayidx108.i540.2, align 1
  %arrayidx110.i542.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %300 = load i8, i8* %arrayidx110.i542.2, align 1
  %call111.i543.2 = call zeroext i8 @mult(i8 zeroext %299, i8 zeroext %300) #3
  %arrayidx113.i545.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  store i8 %call111.i543.2, i8* %arrayidx113.i545.2, align 1
  %arrayidx128.i557.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %scevgep150.2475 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %298, i64 0, i64 0, i64 0
  %301 = load i8, i8* %scevgep150.2475, align 1
  %conv126.i555.2476 = zext i8 %301 to i32
  %302 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.2477 = zext i8 %302 to i32
  %xor130.i559.2478 = xor i32 %conv129.i558.2477, %conv126.i555.2476
  %conv131.i560.2479 = trunc i32 %xor130.i559.2478 to i8
  store i8 %conv131.i560.2479, i8* %arrayidx128.i557.2, align 1
  %scevgep150.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %298, i64 0, i64 0, i64 1
  %303 = load i8, i8* %scevgep150.1.2, align 1
  %conv126.i555.1.2 = zext i8 %303 to i32
  %304 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.1.2 = zext i8 %304 to i32
  %xor130.i559.1.2 = xor i32 %conv129.i558.1.2, %conv126.i555.1.2
  %conv131.i560.1.2 = trunc i32 %xor130.i559.1.2 to i8
  store i8 %conv131.i560.1.2, i8* %arrayidx128.i557.2, align 1
  %call139.i566 = call zeroext i8 @mult(i8 zeroext %call.i413, i8 zeroext %call1.i414) #3
  %conv140.i567 = zext i8 %call139.i566 to i32
  %scevgep140 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %305 = load i8, i8* %scevgep140, align 1
  %scevgep140.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %306 = load i8, i8* %scevgep140.1, align 1
  %conv.i.i172.i574.1 = zext i8 %306 to i32
  %conv1.i.i173.i575.1 = zext i8 %305 to i32
  %xor.i.i174.i576.1 = xor i32 %conv1.i.i173.i575.1, %conv.i.i172.i574.1
  %conv2.i.i175.i577.1 = trunc i32 %xor.i.i174.i576.1 to i8
  %scevgep140.2 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %307 = load i8, i8* %scevgep140.2, align 1
  %conv.i.i172.i574.2 = zext i8 %307 to i32
  %conv1.i.i173.i575.2 = zext i8 %conv2.i.i175.i577.1 to i32
  %xor.i.i174.i576.2 = xor i32 %conv1.i.i173.i575.2, %conv.i.i172.i574.2
  %conv2.i.i175.i577.2 = trunc i32 %xor.i.i174.i576.2 to i8
  %conv142.i580 = zext i8 %conv2.i.i175.i577.2 to i32
  %cmp143.i581 = icmp eq i32 %conv140.i567, %conv142.i580
  call void @assert(i1 zeroext %cmp143.i581) #3
  %arraydecay20 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %call.i614 = call zeroext i8 (...) @rand() #3
  %call1.i615 = call zeroext i8 (...) @rand() #3
  %conv.i616 = zext i8 %call.i614 to i32
  %scevgep136 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %308 = load i8, i8* %scevgep136, align 1
  %scevgep136.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %309 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i.i622.1 = zext i8 %309 to i32
  %conv1.i.i.i623.1 = zext i8 %308 to i32
  %xor.i.i.i624.1 = xor i32 %conv1.i.i.i623.1, %conv.i.i.i622.1
  %conv2.i.i.i625.1 = trunc i32 %xor.i.i.i624.1 to i8
  %scevgep136.2 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %310 = load i8, i8* %scevgep136.2, align 1
  %conv.i.i.i622.2 = zext i8 %310 to i32
  %conv1.i.i.i623.2 = zext i8 %conv2.i.i.i625.1 to i32
  %xor.i.i.i624.2 = xor i32 %conv1.i.i.i623.2, %conv.i.i.i622.2
  %conv2.i.i.i625.2 = trunc i32 %xor.i.i.i624.2 to i8
  %conv3.i628 = zext i8 %conv2.i.i.i625.2 to i32
  %cmp.i629 = icmp eq i32 %conv.i616, %conv3.i628
  call void @assume(i1 zeroext %cmp.i629) #3
  %conv5.i630 = zext i8 %call1.i615 to i32
  %scevgep132 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %311 = load i8, i8* %scevgep132, align 1
  %scevgep132.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %312 = load i8, i8* %scevgep132.1, align 1
  %conv.i.i155.i637.1 = zext i8 %312 to i32
  %conv1.i.i156.i638.1 = zext i8 %311 to i32
  %xor.i.i157.i639.1 = xor i32 %conv1.i.i156.i638.1, %conv.i.i155.i637.1
  %conv2.i.i158.i640.1 = trunc i32 %xor.i.i157.i639.1 to i8
  %scevgep132.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %313 = load i8, i8* %scevgep132.2, align 1
  %conv.i.i155.i637.2 = zext i8 %313 to i32
  %conv1.i.i156.i638.2 = zext i8 %conv2.i.i158.i640.1 to i32
  %xor.i.i157.i639.2 = xor i32 %conv1.i.i156.i638.2, %conv.i.i155.i637.2
  %conv2.i.i158.i640.2 = trunc i32 %xor.i.i157.i639.2 to i8
  %conv7.i643 = zext i8 %conv2.i.i158.i640.2 to i32
  %cmp8.i644 = icmp eq i32 %conv5.i630, %conv7.i643
  call void @assume(i1 zeroext %cmp8.i644) #3
  %scevgep116 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep116117 = bitcast i8* %scevgep116 to [3 x [3 x i8]]*
  %scevgep123 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep123124 = bitcast i8* %scevgep123 to [3 x [3 x i8]]*
  %call16.i652 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652, i8* %scevgep116, align 1
  %314 = load i8, i8* %scevgep116, align 1
  store i8 %314, i8* %scevgep123, align 1
  %scevgep121 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep116117, i64 0, i64 0, i64 1
  %scevgep128 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep123124, i64 0, i64 1, i64 0
  %call16.i652.1680 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.1680, i8* %scevgep121, align 1
  %315 = load i8, i8* %scevgep121, align 1
  store i8 %315, i8* %scevgep128, align 1
  %scevgep119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep116117, i64 0, i64 1, i64 1
  %scevgep126 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep123124, i64 0, i64 1, i64 1
  %call16.i652.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.1, i8* %scevgep119, align 1
  %316 = load i8, i8* %scevgep119, align 1
  store i8 %316, i8* %scevgep126, align 1
  %scevgep93.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %317 = load i8, i8* %scevgep93.1, align 1
  %conv44.i679.1 = zext i8 %317 to i32
  %scevgep96.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %318 = load i8, i8* %scevgep96.1, align 1
  %conv49.i684.1 = zext i8 %318 to i32
  %xor.i685.1 = xor i32 %conv44.i679.1, %conv49.i684.1
  %conv50.i686.1 = trunc i32 %xor.i685.1 to i8
  %scevgep100.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1, i8* %scevgep100.1, align 1
  %319 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.1 = zext i8 %319 to i32
  %xor58.i694.1 = xor i32 %conv57.i693.1, 1
  %conv59.i695.1 = trunc i32 %xor58.i694.1 to i8
  %scevgep97.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %320 = load i8, i8* %scevgep97.1, align 1
  %call64.i700.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1, i8 zeroext %320) #3
  %scevgep104.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.1, i8* %scevgep104.1, align 1
  %321 = load i8, i8* %arraydecay20, align 1
  %scevgep101.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %322 = load i8, i8* %scevgep101.1, align 1
  %call75.i711.1 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322) #3
  %scevgep108.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.1, i8* %scevgep108.1, align 1
  %scevgep105.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %323 = load i8, i8* %scevgep105.1, align 1
  %conv84.i720.1 = zext i8 %323 to i32
  %scevgep109.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %324 = load i8, i8* %scevgep109.1, align 1
  %conv89.i725.1 = zext i8 %324 to i32
  %xor90.i726.1 = xor i32 %conv84.i720.1, %conv89.i725.1
  %conv91.i727.1 = trunc i32 %xor90.i726.1 to i8
  %scevgep112.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1, i8* %scevgep112.1, align 1
  %scevgep93.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %325 = load i8, i8* %scevgep93.2, align 1
  %conv44.i679.2 = zext i8 %325 to i32
  %scevgep96.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %326 = load i8, i8* %scevgep96.2, align 1
  %conv49.i684.2 = zext i8 %326 to i32
  %xor.i685.2 = xor i32 %conv44.i679.2, %conv49.i684.2
  %conv50.i686.2 = trunc i32 %xor.i685.2 to i8
  %scevgep100.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2, i8* %scevgep100.2, align 1
  %327 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.2 = zext i8 %327 to i32
  %xor58.i694.2 = xor i32 %conv57.i693.2, 1
  %conv59.i695.2 = trunc i32 %xor58.i694.2 to i8
  %scevgep97.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %328 = load i8, i8* %scevgep97.2, align 1
  %call64.i700.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2, i8 zeroext %328) #3
  %scevgep104.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i700.2, i8* %scevgep104.2, align 1
  %329 = load i8, i8* %arraydecay20, align 1
  %scevgep101.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %330 = load i8, i8* %scevgep101.2, align 1
  %call75.i711.2 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %scevgep108.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i711.2, i8* %scevgep108.2, align 1
  %scevgep105.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %331 = load i8, i8* %scevgep105.2, align 1
  %conv84.i720.2 = zext i8 %331 to i32
  %scevgep109.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %332 = load i8, i8* %scevgep109.2, align 1
  %conv89.i725.2 = zext i8 %332 to i32
  %xor90.i726.2 = xor i32 %conv84.i720.2, %conv89.i725.2
  %conv91.i727.2 = trunc i32 %xor90.i726.2 to i8
  %scevgep112.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2, i8* %scevgep112.2, align 1
  %scevgep95 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %333 = bitcast i8* %scevgep95 to [3 x [3 x i8]]*
  %scevgep99 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %334 = bitcast i8* %scevgep99 to [3 x [3 x i8]]*
  %scevgep103 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %335 = bitcast i8* %scevgep103 to [3 x [3 x i8]]*
  %scevgep107 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %336 = bitcast i8* %scevgep107 to [3 x [3 x i8]]*
  %scevgep111 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %337 = bitcast i8* %scevgep111 to [3 x [3 x i8]]*
  %arrayidx56.i692.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %arrayidx70.i706.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %scevgep93.1412 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %338 = load i8, i8* %scevgep93.1412, align 1
  %conv44.i679.1413 = zext i8 %338 to i32
  %scevgep96.1414 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 0
  %339 = load i8, i8* %scevgep96.1414, align 1
  %conv49.i684.1415 = zext i8 %339 to i32
  %xor.i685.1416 = xor i32 %conv44.i679.1413, %conv49.i684.1415
  %conv50.i686.1417 = trunc i32 %xor.i685.1416 to i8
  %scevgep100.1418 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 0, i64 0
  store i8 %conv50.i686.1417, i8* %scevgep100.1418, align 1
  %340 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.1419 = zext i8 %340 to i32
  %xor58.i694.1420 = xor i32 %conv57.i693.1419, 1
  %conv59.i695.1421 = trunc i32 %xor58.i694.1420 to i8
  %scevgep97.1422 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 0
  %341 = load i8, i8* %scevgep97.1422, align 1
  %call64.i700.1423 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1421, i8 zeroext %341) #3
  %scevgep104.1424 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %335, i64 0, i64 0, i64 0
  store i8 %call64.i700.1423, i8* %scevgep104.1424, align 1
  %342 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.1425 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 0, i64 0
  %343 = load i8, i8* %scevgep101.1425, align 1
  %call75.i711.1426 = call zeroext i8 @mult(i8 zeroext %342, i8 zeroext %343) #3
  %scevgep108.1427 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 0
  store i8 %call75.i711.1426, i8* %scevgep108.1427, align 1
  %scevgep105.1428 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %335, i64 0, i64 0, i64 0
  %344 = load i8, i8* %scevgep105.1428, align 1
  %conv84.i720.1429 = zext i8 %344 to i32
  %scevgep109.1430 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 0
  %345 = load i8, i8* %scevgep109.1430, align 1
  %conv89.i725.1431 = zext i8 %345 to i32
  %xor90.i726.1432 = xor i32 %conv84.i720.1429, %conv89.i725.1431
  %conv91.i727.1433 = trunc i32 %xor90.i726.1432 to i8
  %scevgep112.1434 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 0, i64 0
  store i8 %conv91.i727.1433, i8* %scevgep112.1434, align 1
  %scevgep93.2.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %346 = load i8, i8* %scevgep93.2.1, align 1
  %conv44.i679.2.1 = zext i8 %346 to i32
  %scevgep96.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 2
  %347 = load i8, i8* %scevgep96.2.1, align 1
  %conv49.i684.2.1 = zext i8 %347 to i32
  %xor.i685.2.1 = xor i32 %conv44.i679.2.1, %conv49.i684.2.1
  %conv50.i686.2.1 = trunc i32 %xor.i685.2.1 to i8
  %scevgep100.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2.1, i8* %scevgep100.2.1, align 1
  %348 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.2.1 = zext i8 %348 to i32
  %xor58.i694.2.1 = xor i32 %conv57.i693.2.1, 1
  %conv59.i695.2.1 = trunc i32 %xor58.i694.2.1 to i8
  %scevgep97.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 2
  %349 = load i8, i8* %scevgep97.2.1, align 1
  %call64.i700.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2.1, i8 zeroext %349) #3
  %scevgep104.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %335, i64 0, i64 0, i64 2
  store i8 %call64.i700.2.1, i8* %scevgep104.2.1, align 1
  %350 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 0, i64 2
  %351 = load i8, i8* %scevgep101.2.1, align 1
  %call75.i711.2.1 = call zeroext i8 @mult(i8 zeroext %350, i8 zeroext %351) #3
  %scevgep108.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 2
  store i8 %call75.i711.2.1, i8* %scevgep108.2.1, align 1
  %scevgep105.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %335, i64 0, i64 0, i64 2
  %352 = load i8, i8* %scevgep105.2.1, align 1
  %conv84.i720.2.1 = zext i8 %352 to i32
  %scevgep109.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 2
  %353 = load i8, i8* %scevgep109.2.1, align 1
  %conv89.i725.2.1 = zext i8 %353 to i32
  %xor90.i726.2.1 = xor i32 %conv84.i720.2.1, %conv89.i725.2.1
  %conv91.i727.2.1 = trunc i32 %xor90.i726.2.1 to i8
  %scevgep112.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2.1, i8* %scevgep112.2.1, align 1
  %scevgep95.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 1, i64 0
  %354 = bitcast i8* %scevgep95.1 to [3 x [3 x i8]]*
  %scevgep99.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 1, i64 0
  %355 = bitcast i8* %scevgep99.1 to [3 x [3 x i8]]*
  %scevgep103.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %335, i64 0, i64 1, i64 0
  %356 = bitcast i8* %scevgep103.1 to [3 x [3 x i8]]*
  %scevgep107.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 1, i64 0
  %357 = bitcast i8* %scevgep107.1 to [3 x [3 x i8]]*
  %scevgep111.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 1, i64 0
  %358 = bitcast i8* %scevgep111.1 to [3 x [3 x i8]]*
  %arrayidx56.i692.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %arrayidx70.i706.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %scevgep93.2439 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %359 = load i8, i8* %scevgep93.2439, align 1
  %conv44.i679.2440 = zext i8 %359 to i32
  %scevgep96.2441 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 0
  %360 = load i8, i8* %scevgep96.2441, align 1
  %conv49.i684.2442 = zext i8 %360 to i32
  %xor.i685.2443 = xor i32 %conv44.i679.2440, %conv49.i684.2442
  %conv50.i686.2444 = trunc i32 %xor.i685.2443 to i8
  %scevgep100.2445 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %355, i64 0, i64 0, i64 0
  store i8 %conv50.i686.2444, i8* %scevgep100.2445, align 1
  %361 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.2446 = zext i8 %361 to i32
  %xor58.i694.2447 = xor i32 %conv57.i693.2446, 1
  %conv59.i695.2448 = trunc i32 %xor58.i694.2447 to i8
  %scevgep97.2449 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 0
  %362 = load i8, i8* %scevgep97.2449, align 1
  %call64.i700.2450 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2448, i8 zeroext %362) #3
  %scevgep104.2451 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %356, i64 0, i64 0, i64 0
  store i8 %call64.i700.2450, i8* %scevgep104.2451, align 1
  %363 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.2452 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %355, i64 0, i64 0, i64 0
  %364 = load i8, i8* %scevgep101.2452, align 1
  %call75.i711.2453 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364) #3
  %scevgep108.2454 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 0
  store i8 %call75.i711.2453, i8* %scevgep108.2454, align 1
  %scevgep105.2455 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %356, i64 0, i64 0, i64 0
  %365 = load i8, i8* %scevgep105.2455, align 1
  %conv84.i720.2456 = zext i8 %365 to i32
  %scevgep109.2457 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 0
  %366 = load i8, i8* %scevgep109.2457, align 1
  %conv89.i725.2458 = zext i8 %366 to i32
  %xor90.i726.2459 = xor i32 %conv84.i720.2456, %conv89.i725.2458
  %conv91.i727.2460 = trunc i32 %xor90.i726.2459 to i8
  %scevgep112.2461 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %358, i64 0, i64 0, i64 0
  store i8 %conv91.i727.2460, i8* %scevgep112.2461, align 1
  %scevgep93.1.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %367 = load i8, i8* %scevgep93.1.2, align 1
  %conv44.i679.1.2 = zext i8 %367 to i32
  %scevgep96.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 1
  %368 = load i8, i8* %scevgep96.1.2, align 1
  %conv49.i684.1.2 = zext i8 %368 to i32
  %xor.i685.1.2 = xor i32 %conv44.i679.1.2, %conv49.i684.1.2
  %conv50.i686.1.2 = trunc i32 %xor.i685.1.2 to i8
  %scevgep100.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %355, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1.2, i8* %scevgep100.1.2, align 1
  %369 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.1.2 = zext i8 %369 to i32
  %xor58.i694.1.2 = xor i32 %conv57.i693.1.2, 1
  %conv59.i695.1.2 = trunc i32 %xor58.i694.1.2 to i8
  %scevgep97.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 1
  %370 = load i8, i8* %scevgep97.1.2, align 1
  %call64.i700.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1.2, i8 zeroext %370) #3
  %scevgep104.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %356, i64 0, i64 0, i64 1
  store i8 %call64.i700.1.2, i8* %scevgep104.1.2, align 1
  %371 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %355, i64 0, i64 0, i64 1
  %372 = load i8, i8* %scevgep101.1.2, align 1
  %call75.i711.1.2 = call zeroext i8 @mult(i8 zeroext %371, i8 zeroext %372) #3
  %scevgep108.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 1
  store i8 %call75.i711.1.2, i8* %scevgep108.1.2, align 1
  %scevgep105.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %356, i64 0, i64 0, i64 1
  %373 = load i8, i8* %scevgep105.1.2, align 1
  %conv84.i720.1.2 = zext i8 %373 to i32
  %scevgep109.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 1
  %374 = load i8, i8* %scevgep109.1.2, align 1
  %conv89.i725.1.2 = zext i8 %374 to i32
  %xor90.i726.1.2 = xor i32 %conv84.i720.1.2, %conv89.i725.1.2
  %conv91.i727.1.2 = trunc i32 %xor90.i726.1.2 to i8
  %scevgep112.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %358, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1.2, i8* %scevgep112.1.2, align 1
  %375 = load i8, i8* %arraydecay20, align 1
  %376 = load i8, i8* %arraydecay21, align 1
  %call111.i744 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376) #3
  store i8 %call111.i744, i8* %y, align 1
  %scevgep84.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %377 = load i8, i8* %scevgep84.1, align 1
  %conv126.i756.1 = zext i8 %377 to i32
  %378 = load i8, i8* %y, align 1
  %conv129.i759.1 = zext i8 %378 to i32
  %xor130.i760.1 = xor i32 %conv129.i759.1, %conv126.i756.1
  %conv131.i761.1 = trunc i32 %xor130.i760.1 to i8
  store i8 %conv131.i761.1, i8* %y, align 1
  %scevgep84.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %379 = load i8, i8* %scevgep84.2, align 1
  %conv126.i756.2 = zext i8 %379 to i32
  %380 = load i8, i8* %y, align 1
  %conv129.i759.2 = zext i8 %380 to i32
  %xor130.i760.2 = xor i32 %conv129.i759.2, %conv126.i756.2
  %conv131.i761.2 = trunc i32 %xor130.i760.2 to i8
  store i8 %conv131.i761.2, i8* %y, align 1
  %scevgep83 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %381 = bitcast i8* %scevgep83 to [3 x [3 x i8]]*
  %arrayidx108.i741.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %382 = load i8, i8* %arrayidx108.i741.1, align 1
  %arrayidx110.i743.1 = getelementptr inbounds i8, i8* %arraydecay21, i64 1
  %383 = load i8, i8* %arrayidx110.i743.1, align 1
  %call111.i744.1 = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %383) #3
  %arrayidx113.i746.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i744.1, i8* %arrayidx113.i746.1, align 1
  %arrayidx128.i758.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep84.1394 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %381, i64 0, i64 0, i64 0
  %384 = load i8, i8* %scevgep84.1394, align 1
  %conv126.i756.1395 = zext i8 %384 to i32
  %385 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.1396 = zext i8 %385 to i32
  %xor130.i760.1397 = xor i32 %conv129.i759.1396, %conv126.i756.1395
  %conv131.i761.1398 = trunc i32 %xor130.i760.1397 to i8
  store i8 %conv131.i761.1398, i8* %arrayidx128.i758.1, align 1
  %scevgep84.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %381, i64 0, i64 0, i64 2
  %386 = load i8, i8* %scevgep84.2.1, align 1
  %conv126.i756.2.1 = zext i8 %386 to i32
  %387 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.2.1 = zext i8 %387 to i32
  %xor130.i760.2.1 = xor i32 %conv129.i759.2.1, %conv126.i756.2.1
  %conv131.i761.2.1 = trunc i32 %xor130.i760.2.1 to i8
  store i8 %conv131.i761.2.1, i8* %arrayidx128.i758.1, align 1
  %scevgep83.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %381, i64 0, i64 1, i64 0
  %388 = bitcast i8* %scevgep83.1 to [3 x [3 x i8]]*
  %arrayidx108.i741.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %389 = load i8, i8* %arrayidx108.i741.2, align 1
  %arrayidx110.i743.2 = getelementptr inbounds i8, i8* %arraydecay21, i64 2
  %390 = load i8, i8* %arrayidx110.i743.2, align 1
  %call111.i744.2 = call zeroext i8 @mult(i8 zeroext %389, i8 zeroext %390) #3
  %arrayidx113.i746.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i744.2, i8* %arrayidx113.i746.2, align 1
  %arrayidx128.i758.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep84.2403 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %388, i64 0, i64 0, i64 0
  %391 = load i8, i8* %scevgep84.2403, align 1
  %conv126.i756.2404 = zext i8 %391 to i32
  %392 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.2405 = zext i8 %392 to i32
  %xor130.i760.2406 = xor i32 %conv129.i759.2405, %conv126.i756.2404
  %conv131.i761.2407 = trunc i32 %xor130.i760.2406 to i8
  store i8 %conv131.i761.2407, i8* %arrayidx128.i758.2, align 1
  %scevgep84.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %388, i64 0, i64 0, i64 1
  %393 = load i8, i8* %scevgep84.1.2, align 1
  %conv126.i756.1.2 = zext i8 %393 to i32
  %394 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.1.2 = zext i8 %394 to i32
  %xor130.i760.1.2 = xor i32 %conv129.i759.1.2, %conv126.i756.1.2
  %conv131.i761.1.2 = trunc i32 %xor130.i760.1.2 to i8
  store i8 %conv131.i761.1.2, i8* %arrayidx128.i758.2, align 1
  %call139.i767 = call zeroext i8 @mult(i8 zeroext %call.i614, i8 zeroext %call1.i615) #3
  %conv140.i768 = zext i8 %call139.i767 to i32
  %395 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %396 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i172.i775.1 = zext i8 %396 to i32
  %conv1.i.i173.i776.1 = zext i8 %395 to i32
  %xor.i.i174.i777.1 = xor i32 %conv1.i.i173.i776.1, %conv.i.i172.i775.1
  %conv2.i.i175.i778.1 = trunc i32 %xor.i.i174.i777.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %y, i64 2
  %397 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i172.i775.2 = zext i8 %397 to i32
  %conv1.i.i173.i776.2 = zext i8 %conv2.i.i175.i778.1 to i32
  %xor.i.i174.i777.2 = xor i32 %conv1.i.i173.i776.2, %conv.i.i172.i775.2
  %conv2.i.i175.i778.2 = trunc i32 %xor.i.i174.i777.2 to i8
  %conv142.i781 = zext i8 %conv2.i.i175.i778.2 to i32
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
  %398 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %399 = load i8, i8* %scevgep.1, align 1
  %conv.i.i799.1 = zext i8 %399 to i32
  %conv1.i.i800.1 = zext i8 %398 to i32
  %xor.i.i801.1 = xor i32 %conv1.i.i800.1, %conv.i.i799.1
  %conv2.i.i802.1 = trunc i32 %xor.i.i801.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %400 = load i8, i8* %scevgep.2, align 1
  %conv.i.i799.2 = zext i8 %400 to i32
  %conv1.i.i800.2 = zext i8 %conv2.i.i802.1 to i32
  %xor.i.i801.2 = xor i32 %conv1.i.i800.2, %conv.i.i799.2
  %conv2.i.i802.2 = trunc i32 %xor.i.i801.2 to i8
  %conv25 = zext i8 %conv2.i.i802.2 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  call void @assert(i1 zeroext %cmp26)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  %call.1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  ret i8 %call.1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [3 x [3 x i8]], align 1
  %s.i = alloca [3 x [3 x i8]], align 1
  %p0.i = alloca [3 x [3 x i8]], align 1
  %p1.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x [3 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep105.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep105.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep105.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep105.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %scevgep101 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %3, i8* %scevgep101, align 1
  %scevgep100.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep100.1, align 1
  %scevgep101.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %4, i8* %scevgep101.1, align 1
  %scevgep100.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep100.2, align 1
  %scevgep101.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %5, i8* %scevgep101.2, align 1
  %scevgep39 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep3940 = bitcast i8* %scevgep39 to [3 x [3 x i8]]*
  %scevgep46 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep4647 = bitcast i8* %scevgep46 to [3 x [3 x i8]]*
  %arrayidx6 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %6 = load i8, i8* %x, align 1
  %scevgep31.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep31.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep31.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep31.2, align 1
  %conv.i.i.i.2 = zext i8 %8 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep37 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %9 = load i8, i8* %scevgep37, align 1
  %scevgep37.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep37.1, align 1
  %conv.i.i155.i.1 = zext i8 %10 to i32
  %conv1.i.i156.i.1 = zext i8 %9 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep37.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %11 = load i8, i8* %scevgep37.2, align 1
  %conv.i.i155.i.2 = zext i8 %11 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep39, align 1
  %12 = load i8, i8* %scevgep39, align 1
  store i8 %12, i8* %scevgep46, align 1
  %scevgep44 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3940, i64 0, i64 0, i64 1
  %scevgep51 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4647, i64 0, i64 1, i64 0
  %call16.i.1311 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1311, i8* %scevgep44, align 1
  %13 = load i8, i8* %scevgep44, align 1
  store i8 %13, i8* %scevgep51, align 1
  %scevgep42 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3940, i64 0, i64 1, i64 1
  %scevgep49 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4647, i64 0, i64 1, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep42, align 1
  %14 = load i8, i8* %scevgep42, align 1
  store i8 %14, i8* %scevgep49, align 1
  %scevgep59.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep59.1, align 1
  %conv44.i.1 = zext i8 %15 to i32
  %scevgep62.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep62.1, align 1
  %conv49.i.1 = zext i8 %16 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep66.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep66.1, align 1
  %17 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %17 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep63.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep63.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %18) #3
  %scevgep70.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep70.1, align 1
  %19 = load i8, i8* %x, align 1
  %scevgep67.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep67.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  %scevgep74.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep74.1, align 1
  %scevgep71.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %21 = load i8, i8* %scevgep71.1, align 1
  %conv84.i.1 = zext i8 %21 to i32
  %scevgep75.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep75.1, align 1
  %conv89.i.1 = zext i8 %22 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep78.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep78.1, align 1
  %scevgep59.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %23 = load i8, i8* %scevgep59.2, align 1
  %conv44.i.2 = zext i8 %23 to i32
  %scevgep62.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %24 = load i8, i8* %scevgep62.2, align 1
  %conv49.i.2 = zext i8 %24 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep66.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep66.2, align 1
  %25 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %25 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep63.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %26 = load i8, i8* %scevgep63.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %26) #3
  %scevgep70.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep70.2, align 1
  %27 = load i8, i8* %x, align 1
  %scevgep67.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %28 = load i8, i8* %scevgep67.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  %scevgep74.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep74.2, align 1
  %scevgep71.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %29 = load i8, i8* %scevgep71.2, align 1
  %conv84.i.2 = zext i8 %29 to i32
  %scevgep75.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %30 = load i8, i8* %scevgep75.2, align 1
  %conv89.i.2 = zext i8 %30 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep78.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep78.2, align 1
  %scevgep61 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep61 to [3 x [3 x i8]]*
  %scevgep65 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep65 to [3 x [3 x i8]]*
  %scevgep69 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %33 = bitcast i8* %scevgep69 to [3 x [3 x i8]]*
  %scevgep73 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep73 to [3 x [3 x i8]]*
  %scevgep77 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %35 = bitcast i8* %scevgep77 to [3 x [3 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep59.1109, align 1
  %conv44.i.1110 = zext i8 %36 to i32
  %scevgep62.1111 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep62.1111, align 1
  %conv49.i.1112 = zext i8 %37 to i32
  %xor.i.1113 = xor i32 %conv44.i.1110, %conv49.i.1112
  %conv50.i.1114 = trunc i32 %xor.i.1113 to i8
  %scevgep66.1115 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 0
  store i8 %conv50.i.1114, i8* %scevgep66.1115, align 1
  %38 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1116 = zext i8 %38 to i32
  %xor58.i.1117 = xor i32 %conv57.i.1116, 1
  %conv59.i.1118 = trunc i32 %xor58.i.1117 to i8
  %scevgep63.1119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 0
  %39 = load i8, i8* %scevgep63.1119, align 1
  %call64.i.1120 = call zeroext i8 @mult(i8 zeroext %conv59.i.1118, i8 zeroext %39) #3
  %scevgep70.1121 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  store i8 %call64.i.1120, i8* %scevgep70.1121, align 1
  %40 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.1122 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 0
  %41 = load i8, i8* %scevgep67.1122, align 1
  %call75.i.1123 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %scevgep74.1124 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 0
  store i8 %call75.i.1123, i8* %scevgep74.1124, align 1
  %scevgep71.1125 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  %42 = load i8, i8* %scevgep71.1125, align 1
  %conv84.i.1126 = zext i8 %42 to i32
  %scevgep75.1127 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 0
  %43 = load i8, i8* %scevgep75.1127, align 1
  %conv89.i.1128 = zext i8 %43 to i32
  %xor90.i.1129 = xor i32 %conv84.i.1126, %conv89.i.1128
  %conv91.i.1130 = trunc i32 %xor90.i.1129 to i8
  %scevgep78.1131 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 0, i64 0
  store i8 %conv91.i.1130, i8* %scevgep78.1131, align 1
  %scevgep59.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep59.2.1, align 1
  %conv44.i.2.1 = zext i8 %44 to i32
  %scevgep62.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep62.2.1, align 1
  %conv49.i.2.1 = zext i8 %45 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep66.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep66.2.1, align 1
  %46 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %46 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep63.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 2
  %47 = load i8, i8* %scevgep63.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %47) #3
  %scevgep70.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep70.2.1, align 1
  %48 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 2
  %49 = load i8, i8* %scevgep67.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #3
  %scevgep74.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep74.2.1, align 1
  %scevgep71.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 2
  %50 = load i8, i8* %scevgep71.2.1, align 1
  %conv84.i.2.1 = zext i8 %50 to i32
  %scevgep75.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep75.2.1, align 1
  %conv89.i.2.1 = zext i8 %51 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep78.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep78.2.1, align 1
  %scevgep61.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep61.1 to [3 x [3 x i8]]*
  %scevgep65.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep65.1 to [3 x [3 x i8]]*
  %scevgep69.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 1, i64 0
  %54 = bitcast i8* %scevgep69.1 to [3 x [3 x i8]]*
  %scevgep73.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 1, i64 0
  %55 = bitcast i8* %scevgep73.1 to [3 x [3 x i8]]*
  %scevgep77.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 1, i64 0
  %56 = bitcast i8* %scevgep77.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2136 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep59.2136, align 1
  %conv44.i.2137 = zext i8 %57 to i32
  %scevgep62.2138 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep62.2138, align 1
  %conv49.i.2139 = zext i8 %58 to i32
  %xor.i.2140 = xor i32 %conv44.i.2137, %conv49.i.2139
  %conv50.i.2141 = trunc i32 %xor.i.2140 to i8
  %scevgep66.2142 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  store i8 %conv50.i.2141, i8* %scevgep66.2142, align 1
  %59 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2143 = zext i8 %59 to i32
  %xor58.i.2144 = xor i32 %conv57.i.2143, 1
  %conv59.i.2145 = trunc i32 %xor58.i.2144 to i8
  %scevgep63.2146 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep63.2146, align 1
  %call64.i.2147 = call zeroext i8 @mult(i8 zeroext %conv59.i.2145, i8 zeroext %60) #3
  %scevgep70.2148 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 0
  store i8 %call64.i.2147, i8* %scevgep70.2148, align 1
  %61 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.2149 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep67.2149, align 1
  %call75.i.2150 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #3
  %scevgep74.2151 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 0
  store i8 %call75.i.2150, i8* %scevgep74.2151, align 1
  %scevgep71.2152 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 0
  %63 = load i8, i8* %scevgep71.2152, align 1
  %conv84.i.2153 = zext i8 %63 to i32
  %scevgep75.2154 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep75.2154, align 1
  %conv89.i.2155 = zext i8 %64 to i32
  %xor90.i.2156 = xor i32 %conv84.i.2153, %conv89.i.2155
  %conv91.i.2157 = trunc i32 %xor90.i.2156 to i8
  %scevgep78.2158 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %56, i64 0, i64 0, i64 0
  store i8 %conv91.i.2157, i8* %scevgep78.2158, align 1
  %scevgep59.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep59.1.2, align 1
  %conv44.i.1.2 = zext i8 %65 to i32
  %scevgep62.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep62.1.2, align 1
  %conv49.i.1.2 = zext i8 %66 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep66.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep66.1.2, align 1
  %67 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %67 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep63.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 1
  %68 = load i8, i8* %scevgep63.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %68) #3
  %scevgep70.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep70.1.2, align 1
  %69 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  %70 = load i8, i8* %scevgep67.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #3
  %scevgep74.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep74.1.2, align 1
  %scevgep71.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep71.1.2, align 1
  %conv84.i.1.2 = zext i8 %71 to i32
  %scevgep75.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 1
  %72 = load i8, i8* %scevgep75.1.2, align 1
  %conv89.i.1.2 = zext i8 %72 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep78.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %56, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep78.1.2, align 1
  %73 = load i8, i8* %x, align 1
  %74 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep89.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %75 = load i8, i8* %scevgep89.1, align 1
  %conv126.i.1 = zext i8 %75 to i32
  %76 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %76 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep89.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %77 = load i8, i8* %scevgep89.2, align 1
  %conv126.i.2 = zext i8 %77 to i32
  %78 = load i8, i8* %arraydecay10, align 1
  %conv129.i.2 = zext i8 %78 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay10, align 1
  %scevgep88 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %79 = bitcast i8* %scevgep88 to [3 x [3 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %80 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %81 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep89.1163 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %79, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep89.1163, align 1
  %conv126.i.1164 = zext i8 %82 to i32
  %83 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1165 = zext i8 %83 to i32
  %xor130.i.1166 = xor i32 %conv129.i.1165, %conv126.i.1164
  %conv131.i.1167 = trunc i32 %xor130.i.1166 to i8
  store i8 %conv131.i.1167, i8* %arrayidx128.i.1, align 1
  %scevgep89.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %79, i64 0, i64 0, i64 2
  %84 = load i8, i8* %scevgep89.2.1, align 1
  %conv126.i.2.1 = zext i8 %84 to i32
  %85 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %85 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep88.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %79, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep88.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %87 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %88 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep89.2172 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %86, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep89.2172, align 1
  %conv126.i.2173 = zext i8 %89 to i32
  %90 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2174 = zext i8 %90 to i32
  %xor130.i.2175 = xor i32 %conv129.i.2174, %conv126.i.2173
  %conv131.i.2176 = trunc i32 %xor130.i.2175 to i8
  store i8 %conv131.i.2176, i8* %arrayidx128.i.2, align 1
  %scevgep89.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %86, i64 0, i64 0, i64 1
  %91 = load i8, i8* %scevgep89.1.2, align 1
  %conv126.i.1.2 = zext i8 %91 to i32
  %92 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %92 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep95 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep96 = getelementptr i8, i8* %scevgep95, i64 3
  %93 = load i8, i8* %scevgep96, align 1
  %scevgep95.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep96.1 = getelementptr i8, i8* %scevgep95.1, i64 3
  %94 = load i8, i8* %scevgep96.1, align 1
  %conv.i.i172.i.1 = zext i8 %94 to i32
  %conv1.i.i173.i.1 = zext i8 %93 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep95.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep96.2 = getelementptr i8, i8* %scevgep95.2, i64 3
  %95 = load i8, i8* %scevgep96.2, align 1
  %conv.i.i172.i.2 = zext i8 %95 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.2 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep34 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep34 to [3 x [3 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %97 = load i8, i8* %x, align 1
  %scevgep31.1.1 = getelementptr i8, i8* %x, i64 1
  %98 = load i8, i8* %scevgep31.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %98 to i32
  %conv1.i.i.i.1.1 = zext i8 %97 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep31.2.1 = getelementptr i8, i8* %x, i64 2
  %99 = load i8, i8* %scevgep31.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %99 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep37.1181 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %100 = load i8, i8* %scevgep37.1181, align 1
  %scevgep37.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %101 = load i8, i8* %scevgep37.1.1, align 1
  %conv.i.i155.i.1.1 = zext i8 %101 to i32
  %conv1.i.i156.i.1.1 = zext i8 %100 to i32
  %xor.i.i157.i.1.1 = xor i32 %conv1.i.i156.i.1.1, %conv.i.i155.i.1.1
  %conv2.i.i158.i.1.1 = trunc i32 %xor.i.i157.i.1.1 to i8
  %scevgep37.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %102 = load i8, i8* %scevgep37.2.1, align 1
  %conv.i.i155.i.2.1 = zext i8 %102 to i32
  %conv1.i.i156.i.2.1 = zext i8 %conv2.i.i158.i.1.1 to i32
  %xor.i.i157.i.2.1 = xor i32 %conv1.i.i156.i.2.1, %conv.i.i155.i.2.1
  %conv2.i.i158.i.2.1 = trunc i32 %xor.i.i157.i.2.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i158.i.2.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1190 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1190, i8* %scevgep39, align 1
  %103 = load i8, i8* %scevgep39, align 1
  store i8 %103, i8* %scevgep46, align 1
  %scevgep44.1192 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3940, i64 0, i64 0, i64 1
  %scevgep51.1193 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4647, i64 0, i64 1, i64 0
  %call16.i.1190.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1190.1, i8* %scevgep44.1192, align 1
  %104 = load i8, i8* %scevgep44.1192, align 1
  store i8 %104, i8* %scevgep51.1193, align 1
  %scevgep42.1197 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3940, i64 0, i64 1, i64 1
  %scevgep49.1198 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4647, i64 0, i64 1, i64 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1, i8* %scevgep42.1197, align 1
  %105 = load i8, i8* %scevgep42.1197, align 1
  store i8 %105, i8* %scevgep49.1198, align 1
  %scevgep59.1.1226 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %106 = load i8, i8* %scevgep59.1.1226, align 1
  %conv44.i.1.1227 = zext i8 %106 to i32
  %scevgep62.1.1228 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep62.1.1228, align 1
  %conv49.i.1.1229 = zext i8 %107 to i32
  %xor.i.1.1230 = xor i32 %conv44.i.1.1227, %conv49.i.1.1229
  %conv50.i.1.1231 = trunc i32 %xor.i.1.1230 to i8
  %scevgep66.1.1232 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.1231, i8* %scevgep66.1.1232, align 1
  %108 = load i8, i8* %x, align 1
  %conv57.i.1.1233 = zext i8 %108 to i32
  %xor58.i.1.1234 = xor i32 %conv57.i.1.1233, 1
  %conv59.i.1.1235 = trunc i32 %xor58.i.1.1234 to i8
  %scevgep63.1.1236 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %109 = load i8, i8* %scevgep63.1.1236, align 1
  %call64.i.1.1237 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.1235, i8 zeroext %109) #3
  %scevgep70.1.1238 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.1237, i8* %scevgep70.1.1238, align 1
  %110 = load i8, i8* %x, align 1
  %scevgep67.1.1239 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep67.1.1239, align 1
  %call75.i.1.1240 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111) #3
  %scevgep74.1.1241 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.1240, i8* %scevgep74.1.1241, align 1
  %scevgep71.1.1242 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %112 = load i8, i8* %scevgep71.1.1242, align 1
  %conv84.i.1.1243 = zext i8 %112 to i32
  %scevgep75.1.1244 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep75.1.1244, align 1
  %conv89.i.1.1245 = zext i8 %113 to i32
  %xor90.i.1.1246 = xor i32 %conv84.i.1.1243, %conv89.i.1.1245
  %conv91.i.1.1247 = trunc i32 %xor90.i.1.1246 to i8
  %scevgep78.1.1248 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.1247, i8* %scevgep78.1.1248, align 1
  %scevgep59.2.1251 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %114 = load i8, i8* %scevgep59.2.1251, align 1
  %conv44.i.2.1252 = zext i8 %114 to i32
  %scevgep62.2.1253 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %115 = load i8, i8* %scevgep62.2.1253, align 1
  %conv49.i.2.1254 = zext i8 %115 to i32
  %xor.i.2.1255 = xor i32 %conv44.i.2.1252, %conv49.i.2.1254
  %conv50.i.2.1256 = trunc i32 %xor.i.2.1255 to i8
  %scevgep66.2.1257 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1256, i8* %scevgep66.2.1257, align 1
  %116 = load i8, i8* %x, align 1
  %conv57.i.2.1258 = zext i8 %116 to i32
  %xor58.i.2.1259 = xor i32 %conv57.i.2.1258, 1
  %conv59.i.2.1260 = trunc i32 %xor58.i.2.1259 to i8
  %scevgep63.2.1261 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %117 = load i8, i8* %scevgep63.2.1261, align 1
  %call64.i.2.1262 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1260, i8 zeroext %117) #3
  %scevgep70.2.1263 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1262, i8* %scevgep70.2.1263, align 1
  %118 = load i8, i8* %x, align 1
  %scevgep67.2.1264 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %119 = load i8, i8* %scevgep67.2.1264, align 1
  %call75.i.2.1265 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %scevgep74.2.1266 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1265, i8* %scevgep74.2.1266, align 1
  %scevgep71.2.1267 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep71.2.1267, align 1
  %conv84.i.2.1268 = zext i8 %120 to i32
  %scevgep75.2.1269 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %121 = load i8, i8* %scevgep75.2.1269, align 1
  %conv89.i.2.1270 = zext i8 %121 to i32
  %xor90.i.2.1271 = xor i32 %conv84.i.2.1268, %conv89.i.2.1270
  %conv91.i.2.1272 = trunc i32 %xor90.i.2.1271 to i8
  %scevgep78.2.1273 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1272, i8* %scevgep78.2.1273, align 1
  %scevgep61.1275 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %122 = bitcast i8* %scevgep61.1275 to [3 x [3 x i8]]*
  %scevgep65.1276 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %123 = bitcast i8* %scevgep65.1276 to [3 x [3 x i8]]*
  %scevgep69.1277 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep69.1277 to [3 x [3 x i8]]*
  %scevgep73.1278 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %125 = bitcast i8* %scevgep73.1278 to [3 x [3 x i8]]*
  %scevgep77.1279 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %126 = bitcast i8* %scevgep77.1279 to [3 x [3 x i8]]*
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1109.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep59.1109.1, align 1
  %conv44.i.1110.1 = zext i8 %127 to i32
  %scevgep62.1111.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 0
  %128 = load i8, i8* %scevgep62.1111.1, align 1
  %conv49.i.1112.1 = zext i8 %128 to i32
  %xor.i.1113.1 = xor i32 %conv44.i.1110.1, %conv49.i.1112.1
  %conv50.i.1114.1 = trunc i32 %xor.i.1113.1 to i8
  %scevgep66.1115.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 0
  store i8 %conv50.i.1114.1, i8* %scevgep66.1115.1, align 1
  %129 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.1116.1 = zext i8 %129 to i32
  %xor58.i.1117.1 = xor i32 %conv57.i.1116.1, 1
  %conv59.i.1118.1 = trunc i32 %xor58.i.1117.1 to i8
  %scevgep63.1119.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep63.1119.1, align 1
  %call64.i.1120.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1118.1, i8 zeroext %130) #3
  %scevgep70.1121.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 0
  store i8 %call64.i.1120.1, i8* %scevgep70.1121.1, align 1
  %131 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.1122.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 0
  %132 = load i8, i8* %scevgep67.1122.1, align 1
  %call75.i.1123.1 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %scevgep74.1124.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 0
  store i8 %call75.i.1123.1, i8* %scevgep74.1124.1, align 1
  %scevgep71.1125.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep71.1125.1, align 1
  %conv84.i.1126.1 = zext i8 %133 to i32
  %scevgep75.1127.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 0
  %134 = load i8, i8* %scevgep75.1127.1, align 1
  %conv89.i.1128.1 = zext i8 %134 to i32
  %xor90.i.1129.1 = xor i32 %conv84.i.1126.1, %conv89.i.1128.1
  %conv91.i.1130.1 = trunc i32 %xor90.i.1129.1 to i8
  %scevgep78.1131.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %126, i64 0, i64 0, i64 0
  store i8 %conv91.i.1130.1, i8* %scevgep78.1131.1, align 1
  %scevgep59.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %135 = load i8, i8* %scevgep59.2.1.1, align 1
  %conv44.i.2.1.1 = zext i8 %135 to i32
  %scevgep62.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 2
  %136 = load i8, i8* %scevgep62.2.1.1, align 1
  %conv49.i.2.1.1 = zext i8 %136 to i32
  %xor.i.2.1.1 = xor i32 %conv44.i.2.1.1, %conv49.i.2.1.1
  %conv50.i.2.1.1 = trunc i32 %xor.i.2.1.1 to i8
  %scevgep66.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.1, i8* %scevgep66.2.1.1, align 1
  %137 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.2.1.1 = zext i8 %137 to i32
  %xor58.i.2.1.1 = xor i32 %conv57.i.2.1.1, 1
  %conv59.i.2.1.1 = trunc i32 %xor58.i.2.1.1 to i8
  %scevgep63.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 2
  %138 = load i8, i8* %scevgep63.2.1.1, align 1
  %call64.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.1, i8 zeroext %138) #3
  %scevgep70.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.1, i8* %scevgep70.2.1.1, align 1
  %139 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 2
  %140 = load i8, i8* %scevgep67.2.1.1, align 1
  %call75.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #3
  %scevgep74.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.1, i8* %scevgep74.2.1.1, align 1
  %scevgep71.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 2
  %141 = load i8, i8* %scevgep71.2.1.1, align 1
  %conv84.i.2.1.1 = zext i8 %141 to i32
  %scevgep75.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep75.2.1.1, align 1
  %conv89.i.2.1.1 = zext i8 %142 to i32
  %xor90.i.2.1.1 = xor i32 %conv84.i.2.1.1, %conv89.i.2.1.1
  %conv91.i.2.1.1 = trunc i32 %xor90.i.2.1.1 to i8
  %scevgep78.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %126, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.1, i8* %scevgep78.2.1.1, align 1
  %scevgep61.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 1, i64 0
  %143 = bitcast i8* %scevgep61.1.1 to [3 x [3 x i8]]*
  %scevgep65.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 1, i64 0
  %144 = bitcast i8* %scevgep65.1.1 to [3 x [3 x i8]]*
  %scevgep69.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 1, i64 0
  %145 = bitcast i8* %scevgep69.1.1 to [3 x [3 x i8]]*
  %scevgep73.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep73.1.1 to [3 x [3 x i8]]*
  %scevgep77.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %126, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep77.1.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2136.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %148 = load i8, i8* %scevgep59.2136.1, align 1
  %conv44.i.2137.1 = zext i8 %148 to i32
  %scevgep62.2138.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 0
  %149 = load i8, i8* %scevgep62.2138.1, align 1
  %conv49.i.2139.1 = zext i8 %149 to i32
  %xor.i.2140.1 = xor i32 %conv44.i.2137.1, %conv49.i.2139.1
  %conv50.i.2141.1 = trunc i32 %xor.i.2140.1 to i8
  %scevgep66.2142.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 0
  store i8 %conv50.i.2141.1, i8* %scevgep66.2142.1, align 1
  %150 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.2143.1 = zext i8 %150 to i32
  %xor58.i.2144.1 = xor i32 %conv57.i.2143.1, 1
  %conv59.i.2145.1 = trunc i32 %xor58.i.2144.1 to i8
  %scevgep63.2146.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 0
  %151 = load i8, i8* %scevgep63.2146.1, align 1
  %call64.i.2147.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2145.1, i8 zeroext %151) #3
  %scevgep70.2148.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 0
  store i8 %call64.i.2147.1, i8* %scevgep70.2148.1, align 1
  %152 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.2149.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 0
  %153 = load i8, i8* %scevgep67.2149.1, align 1
  %call75.i.2150.1 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153) #3
  %scevgep74.2151.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 0
  store i8 %call75.i.2150.1, i8* %scevgep74.2151.1, align 1
  %scevgep71.2152.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep71.2152.1, align 1
  %conv84.i.2153.1 = zext i8 %154 to i32
  %scevgep75.2154.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep75.2154.1, align 1
  %conv89.i.2155.1 = zext i8 %155 to i32
  %xor90.i.2156.1 = xor i32 %conv84.i.2153.1, %conv89.i.2155.1
  %conv91.i.2157.1 = trunc i32 %xor90.i.2156.1 to i8
  %scevgep78.2158.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  store i8 %conv91.i.2157.1, i8* %scevgep78.2158.1, align 1
  %scevgep59.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %156 = load i8, i8* %scevgep59.1.2.1, align 1
  %conv44.i.1.2.1 = zext i8 %156 to i32
  %scevgep62.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 1
  %157 = load i8, i8* %scevgep62.1.2.1, align 1
  %conv49.i.1.2.1 = zext i8 %157 to i32
  %xor.i.1.2.1 = xor i32 %conv44.i.1.2.1, %conv49.i.1.2.1
  %conv50.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8
  %scevgep66.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.1, i8* %scevgep66.1.2.1, align 1
  %158 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.1.2.1 = zext i8 %158 to i32
  %xor58.i.1.2.1 = xor i32 %conv57.i.1.2.1, 1
  %conv59.i.1.2.1 = trunc i32 %xor58.i.1.2.1 to i8
  %scevgep63.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep63.1.2.1, align 1
  %call64.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.1, i8 zeroext %159) #3
  %scevgep70.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.1, i8* %scevgep70.1.2.1, align 1
  %160 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 1
  %161 = load i8, i8* %scevgep67.1.2.1, align 1
  %call75.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %160, i8 zeroext %161) #3
  %scevgep74.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.1, i8* %scevgep74.1.2.1, align 1
  %scevgep71.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 1
  %162 = load i8, i8* %scevgep71.1.2.1, align 1
  %conv84.i.1.2.1 = zext i8 %162 to i32
  %scevgep75.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 1
  %163 = load i8, i8* %scevgep75.1.2.1, align 1
  %conv89.i.1.2.1 = zext i8 %163 to i32
  %xor90.i.1.2.1 = xor i32 %conv84.i.1.2.1, %conv89.i.1.2.1
  %conv91.i.1.2.1 = trunc i32 %xor90.i.1.2.1 to i8
  %scevgep78.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.1, i8* %scevgep78.1.2.1, align 1
  %164 = load i8, i8* %x, align 1
  %165 = load i8, i8* %arraydecay7.1, align 1
  %call111.i.1281 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165) #3
  store i8 %call111.i.1281, i8* %arraydecay10.1, align 1
  %scevgep89.1.1290 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep89.1.1290, align 1
  %conv126.i.1.1291 = zext i8 %166 to i32
  %167 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.1.1292 = zext i8 %167 to i32
  %xor130.i.1.1293 = xor i32 %conv129.i.1.1292, %conv126.i.1.1291
  %conv131.i.1.1294 = trunc i32 %xor130.i.1.1293 to i8
  store i8 %conv131.i.1.1294, i8* %arraydecay10.1, align 1
  %scevgep89.2.1297 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %168 = load i8, i8* %scevgep89.2.1297, align 1
  %conv126.i.2.1298 = zext i8 %168 to i32
  %169 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.2.1299 = zext i8 %169 to i32
  %xor130.i.2.1300 = xor i32 %conv129.i.2.1299, %conv126.i.2.1298
  %conv131.i.2.1301 = trunc i32 %xor130.i.2.1300 to i8
  store i8 %conv131.i.2.1301, i8* %arraydecay10.1, align 1
  %scevgep88.1303 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep88.1303 to [3 x [3 x i8]]*
  %arrayidx108.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %171 = load i8, i8* %arrayidx108.i.1.1, align 1
  %arrayidx110.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %172 = load i8, i8* %arrayidx110.i.1.1, align 1
  %call111.i.1.1 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #3
  %arrayidx113.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call111.i.1.1, i8* %arrayidx113.i.1.1, align 1
  %arrayidx128.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep89.1163.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 0
  %173 = load i8, i8* %scevgep89.1163.1, align 1
  %conv126.i.1164.1 = zext i8 %173 to i32
  %174 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.1165.1 = zext i8 %174 to i32
  %xor130.i.1166.1 = xor i32 %conv129.i.1165.1, %conv126.i.1164.1
  %conv131.i.1167.1 = trunc i32 %xor130.i.1166.1 to i8
  store i8 %conv131.i.1167.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep89.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 2
  %175 = load i8, i8* %scevgep89.2.1.1, align 1
  %conv126.i.2.1.1 = zext i8 %175 to i32
  %176 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.2.1.1 = zext i8 %176 to i32
  %xor130.i.2.1.1 = xor i32 %conv129.i.2.1.1, %conv126.i.2.1.1
  %conv131.i.2.1.1 = trunc i32 %xor130.i.2.1.1 to i8
  store i8 %conv131.i.2.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep88.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep88.1.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %178 = load i8, i8* %arrayidx108.i.2.1, align 1
  %arrayidx110.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %179 = load i8, i8* %arrayidx110.i.2.1, align 1
  %call111.i.2.1 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #3
  %arrayidx113.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call111.i.2.1, i8* %arrayidx113.i.2.1, align 1
  %arrayidx128.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep89.2172.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep89.2172.1, align 1
  %conv126.i.2173.1 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.2174.1 = zext i8 %181 to i32
  %xor130.i.2175.1 = xor i32 %conv129.i.2174.1, %conv126.i.2173.1
  %conv131.i.2176.1 = trunc i32 %xor130.i.2175.1 to i8
  store i8 %conv131.i.2176.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep89.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 1
  %182 = load i8, i8* %scevgep89.1.2.1, align 1
  %conv126.i.1.2.1 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.1.2.1 = zext i8 %183 to i32
  %xor130.i.1.2.1 = xor i32 %conv129.i.1.2.1, %conv126.i.1.2.1
  %conv131.i.1.2.1 = trunc i32 %xor130.i.1.2.1 to i8
  store i8 %conv131.i.1.2.1, i8* %arrayidx128.i.2.1, align 1
  %call139.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv140.i.1 = zext i8 %call139.i.1 to i32
  %scevgep95.1305 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %scevgep96.1306 = getelementptr i8, i8* %scevgep95.1305, i64 3
  %184 = load i8, i8* %scevgep96.1306, align 1
  %scevgep95.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %scevgep96.1.1 = getelementptr i8, i8* %scevgep95.1.1, i64 3
  %185 = load i8, i8* %scevgep96.1.1, align 1
  %conv.i.i172.i.1.1 = zext i8 %185 to i32
  %conv1.i.i173.i.1.1 = zext i8 %184 to i32
  %xor.i.i174.i.1.1 = xor i32 %conv1.i.i173.i.1.1, %conv.i.i172.i.1.1
  %conv2.i.i175.i.1.1 = trunc i32 %xor.i.i174.i.1.1 to i8
  %scevgep95.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %scevgep96.2.1 = getelementptr i8, i8* %scevgep95.2.1, i64 3
  %186 = load i8, i8* %scevgep96.2.1, align 1
  %conv.i.i172.i.2.1 = zext i8 %186 to i32
  %conv1.i.i173.i.2.1 = zext i8 %conv2.i.i175.i.1.1 to i32
  %xor.i.i174.i.2.1 = xor i32 %conv1.i.i173.i.2.1, %conv.i.i172.i.2.1
  %conv2.i.i175.i.2.1 = trunc i32 %xor.i.i174.i.2.1 to i8
  %conv142.i.1 = zext i8 %conv2.i.i175.i.2.1 to i32
  %cmp143.i.1 = icmp eq i32 %conv140.i.1, %conv142.i.1
  call void @assert(i1 zeroext %cmp143.i.1) #3
  %scevgep23 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2, i64 0
  %187 = load i8, i8* %scevgep23, align 1
  store i8 %187, i8* %y, align 1
  %scevgep26.1 = getelementptr i8, i8* %scevgep23, i64 1
  %188 = load i8, i8* %scevgep26.1, align 1
  %scevgep27.1 = getelementptr i8, i8* %y, i64 1
  store i8 %188, i8* %scevgep27.1, align 1
  %scevgep26.2 = getelementptr i8, i8* %scevgep23, i64 2
  %189 = load i8, i8* %scevgep26.2, align 1
  %scevgep27.2 = getelementptr i8, i8* %y, i64 2
  store i8 %189, i8* %scevgep27.2, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call.i48.1 = call zeroext i8 @mult(i8 zeroext %call.i48, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48.1 to i32
  %190 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %191 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %191 to i32
  %conv1.i.i63.1 = zext i8 %190 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %192 = load i8, i8* %scevgep.2, align 1
  %conv.i.i62.2 = zext i8 %192 to i32
  %conv1.i.i63.2 = zext i8 %conv2.i.i65.1 to i32
  %xor.i.i64.2 = xor i32 %conv1.i.i63.2, %conv.i.i62.2
  %conv2.i.i65.2 = trunc i32 %xor.i.i64.2 to i8
  %conv16 = zext i8 %conv2.i.i65.2 to i32
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
  %r.i.i = alloca [3 x [3 x i8]], align 1
  %s.i.i = alloca [3 x [3 x i8]], align 1
  %p0.i.i = alloca [3 x [3 x i8]], align 1
  %p1.i.i = alloca [3 x [3 x i8]], align 1
  %z.i.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x i8], align 1
  %zr.i = alloca [3 x i8], align 1
  %w.i = alloca [3 x i8], align 1
  %wr.i = alloca [3 x i8], align 1
  %u.i = alloca [3 x i8], align 1
  %v.i = alloca [3 x i8], align 1
  %v16.i = alloca [3 x i8], align 1
  %m.i = alloca [3 x i8], align 1
  %x254 = alloca [3 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep408.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep408.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep408.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep408.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %x254, i64 0, i64 0
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %3 = load i8, i8* %x, align 1
  %scevgep404.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep404.1, align 1
  %conv.i.i.i.1 = zext i8 %4 to i32
  %conv1.i.i.i.1 = zext i8 %3 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep404.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep404.2, align 1
  %conv.i.i.i.2 = zext i8 %5 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %6 = load i8, i8* %x, align 1
  %call.i708 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #3
  %scevgep400 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i708, i8* %scevgep400, align 1
  %scevgep399.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep399.1, align 1
  %call.i709 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #3
  %scevgep400.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i709, i8* %scevgep400.1, align 1
  %scevgep399.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep399.2, align 1
  %call.i710 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #3
  %scevgep400.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i710, i8* %scevgep400.2, align 1
  %arraydecay5.i = getelementptr inbounds [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  %call.i32.i = call zeroext i8 (...) @rand() #3
  %conv.i.i21 = zext i8 %call.i32.i to i32
  %scevgep395 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %9 = load i8, i8* %scevgep395, align 1
  %scevgep395.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %10 = load i8, i8* %scevgep395.1, align 1
  %conv.i.i.i.i.1 = zext i8 %10 to i32
  %conv1.i.i.i.i.1 = zext i8 %9 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep395.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %11 = load i8, i8* %scevgep395.2, align 1
  %conv.i.i.i.i.2 = zext i8 %11 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %conv2.i.i22 = zext i8 %conv2.i.i.i.i.2 to i32
  %cmp.i33.i = icmp eq i32 %conv.i.i21, %conv2.i.i22
  call void @assume(i1 zeroext %cmp.i33.i) #3
  %scevgep390 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep390, align 1
  %scevgep391 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  store i8 %12, i8* %scevgep391, align 1
  %scevgep390.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep390.1, align 1
  %scevgep391.1 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 1
  store i8 %13, i8* %scevgep391.1, align 1
  %scevgep390.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %14 = load i8, i8* %scevgep390.2, align 1
  %scevgep391.2 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 2
  store i8 %14, i8* %scevgep391.2, align 1
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %15 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i = zext i8 %15 to i32
  %xor.i.i23 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i23 to i8
  store i8 %conv10.i.i, i8* %arraydecay5.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep386 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 1
  %16 = load i8, i8* %scevgep386, align 1
  %conv13.i.i = zext i8 %16 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep386, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %17 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i.1 = zext i8 %17 to i32
  %xor.i.i23.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i23.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay5.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep386.1 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 2
  %18 = load i8, i8* %scevgep386.1, align 1
  %conv13.i.i.1 = zext i8 %18 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep386.1, align 1
  %conv16.i.i = zext i8 %call.i32.i to i32
  %scevgep382 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  %19 = load i8, i8* %scevgep382, align 1
  %scevgep382.1 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 1
  %20 = load i8, i8* %scevgep382.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %20 to i32
  %conv1.i.i32.i.i.1 = zext i8 %19 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep382.2 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 2
  %21 = load i8, i8* %scevgep382.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %21 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.2 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay6.i = getelementptr inbounds [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  %arraydecay7.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %call.i52.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i53.i = zext i8 %call.i52.i to i32
  %scevgep378 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  %22 = load i8, i8* %scevgep378, align 1
  %scevgep378.1 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 1
  %23 = load i8, i8* %scevgep378.1, align 1
  %conv.i.i.i59.i.1 = zext i8 %23 to i32
  %conv1.i.i.i60.i.1 = zext i8 %22 to i32
  %xor.i.i.i61.i.1 = xor i32 %conv1.i.i.i60.i.1, %conv.i.i.i59.i.1
  %conv2.i.i.i62.i.1 = trunc i32 %xor.i.i.i61.i.1 to i8
  %scevgep378.2 = getelementptr [3 x i8], [3 x i8]* %zr.i, i64 0, i64 2
  %24 = load i8, i8* %scevgep378.2, align 1
  %conv.i.i.i59.i.2 = zext i8 %24 to i32
  %conv1.i.i.i60.i.2 = zext i8 %conv2.i.i.i62.i.1 to i32
  %xor.i.i.i61.i.2 = xor i32 %conv1.i.i.i60.i.2, %conv.i.i.i59.i.2
  %conv2.i.i.i62.i.2 = trunc i32 %xor.i.i.i61.i.2 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i62.i.2 to i32
  %cmp.i65.i = icmp eq i32 %conv.i53.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i65.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %25 = load i8, i8* %x, align 1
  %scevgep374.1 = getelementptr i8, i8* %x, i64 1
  %26 = load i8, i8* %scevgep374.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %26 to i32
  %conv1.i.i156.i.i.1 = zext i8 %25 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %scevgep374.2 = getelementptr i8, i8* %x, i64 2
  %27 = load i8, i8* %scevgep374.2, align 1
  %conv.i.i155.i.i.2 = zext i8 %27 to i32
  %conv1.i.i156.i.i.2 = zext i8 %conv2.i.i158.i.i.1 to i32
  %xor.i.i157.i.i.2 = xor i32 %conv1.i.i156.i.i.2, %conv.i.i155.i.i.2
  %conv2.i.i158.i.i.2 = trunc i32 %xor.i.i157.i.i.2 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.2 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %scevgep358 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep358359 = bitcast i8* %scevgep358 to [3 x [3 x i8]]*
  %scevgep365 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep365366 = bitcast i8* %scevgep365 to [3 x [3 x i8]]*
  %call16.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i, i8* %scevgep358, align 1
  %28 = load i8, i8* %scevgep358, align 1
  store i8 %28, i8* %scevgep365, align 1
  %scevgep363 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep358359, i64 0, i64 0, i64 1
  %scevgep370 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep365366, i64 0, i64 1, i64 0
  %call16.i.i.1707 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1707, i8* %scevgep363, align 1
  %29 = load i8, i8* %scevgep363, align 1
  store i8 %29, i8* %scevgep370, align 1
  %scevgep361 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep358359, i64 0, i64 1, i64 1
  %scevgep368 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep365366, i64 0, i64 1, i64 1
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1, i8* %scevgep361, align 1
  %30 = load i8, i8* %scevgep361, align 1
  store i8 %30, i8* %scevgep368, align 1
  %scevgep335.1 = getelementptr i8, i8* %x, i64 1
  %31 = load i8, i8* %scevgep335.1, align 1
  %conv44.i.i.1 = zext i8 %31 to i32
  %scevgep338.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %32 = load i8, i8* %scevgep338.1, align 1
  %conv49.i.i.1 = zext i8 %32 to i32
  %xor.i73.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i73.i.1 to i8
  %scevgep342.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep342.1, align 1
  %33 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.1 = zext i8 %33 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep339.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep339.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %34) #3
  %scevgep346.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep346.1, align 1
  %35 = load i8, i8* %arraydecay6.i, align 1
  %scevgep343.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %36 = load i8, i8* %scevgep343.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %scevgep350.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep350.1, align 1
  %scevgep347.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %37 = load i8, i8* %scevgep347.1, align 1
  %conv84.i.i.1 = zext i8 %37 to i32
  %scevgep351.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep351.1, align 1
  %conv89.i.i.1 = zext i8 %38 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep354.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep354.1, align 1
  %scevgep335.2 = getelementptr i8, i8* %x, i64 2
  %39 = load i8, i8* %scevgep335.2, align 1
  %conv44.i.i.2 = zext i8 %39 to i32
  %scevgep338.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %40 = load i8, i8* %scevgep338.2, align 1
  %conv49.i.i.2 = zext i8 %40 to i32
  %xor.i73.i.2 = xor i32 %conv44.i.i.2, %conv49.i.i.2
  %conv50.i.i.2 = trunc i32 %xor.i73.i.2 to i8
  %scevgep342.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2, i8* %scevgep342.2, align 1
  %41 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.2 = zext i8 %41 to i32
  %xor58.i.i.2 = xor i32 %conv57.i.i.2, 1
  %conv59.i.i.2 = trunc i32 %xor58.i.i.2 to i8
  %scevgep339.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %42 = load i8, i8* %scevgep339.2, align 1
  %call64.i.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2, i8 zeroext %42) #3
  %scevgep346.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2, i8* %scevgep346.2, align 1
  %43 = load i8, i8* %arraydecay6.i, align 1
  %scevgep343.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep343.2, align 1
  %call75.i.i.2 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #3
  %scevgep350.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2, i8* %scevgep350.2, align 1
  %scevgep347.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep347.2, align 1
  %conv84.i.i.2 = zext i8 %45 to i32
  %scevgep351.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %46 = load i8, i8* %scevgep351.2, align 1
  %conv89.i.i.2 = zext i8 %46 to i32
  %xor90.i.i.2 = xor i32 %conv84.i.i.2, %conv89.i.i.2
  %conv91.i.i.2 = trunc i32 %xor90.i.i.2 to i8
  %scevgep354.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2, i8* %scevgep354.2, align 1
  %scevgep337 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep337 to [3 x [3 x i8]]*
  %scevgep341 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep341 to [3 x [3 x i8]]*
  %scevgep345 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep345 to [3 x [3 x i8]]*
  %scevgep349 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep349 to [3 x [3 x i8]]*
  %scevgep353 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %51 = bitcast i8* %scevgep353 to [3 x [3 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %52 = load i8, i8* %x, align 1
  %conv44.i.i.1646 = zext i8 %52 to i32
  %scevgep338.1647 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %53 = load i8, i8* %scevgep338.1647, align 1
  %conv49.i.i.1648 = zext i8 %53 to i32
  %xor.i73.i.1649 = xor i32 %conv44.i.i.1646, %conv49.i.i.1648
  %conv50.i.i.1650 = trunc i32 %xor.i73.i.1649 to i8
  %scevgep342.1651 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1650, i8* %scevgep342.1651, align 1
  %54 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1652 = zext i8 %54 to i32
  %xor58.i.i.1653 = xor i32 %conv57.i.i.1652, 1
  %conv59.i.i.1654 = trunc i32 %xor58.i.i.1653 to i8
  %scevgep339.1655 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %55 = load i8, i8* %scevgep339.1655, align 1
  %call64.i.i.1656 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1654, i8 zeroext %55) #3
  %scevgep346.1657 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1656, i8* %scevgep346.1657, align 1
  %56 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep343.1658 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep343.1658, align 1
  %call75.i.i.1659 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57) #3
  %scevgep350.1660 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1659, i8* %scevgep350.1660, align 1
  %scevgep347.1661 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep347.1661, align 1
  %conv84.i.i.1662 = zext i8 %58 to i32
  %scevgep351.1663 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 0
  %59 = load i8, i8* %scevgep351.1663, align 1
  %conv89.i.i.1664 = zext i8 %59 to i32
  %xor90.i.i.1665 = xor i32 %conv84.i.i.1662, %conv89.i.i.1664
  %conv91.i.i.1666 = trunc i32 %xor90.i.i.1665 to i8
  %scevgep354.1667 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %51, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1666, i8* %scevgep354.1667, align 1
  %scevgep335.2.1 = getelementptr i8, i8* %x, i64 2
  %60 = load i8, i8* %scevgep335.2.1, align 1
  %conv44.i.i.2.1 = zext i8 %60 to i32
  %scevgep338.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep338.2.1, align 1
  %conv49.i.i.2.1 = zext i8 %61 to i32
  %xor.i73.i.2.1 = xor i32 %conv44.i.i.2.1, %conv49.i.i.2.1
  %conv50.i.i.2.1 = trunc i32 %xor.i73.i.2.1 to i8
  %scevgep342.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.1, i8* %scevgep342.2.1, align 1
  %62 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.2.1 = zext i8 %62 to i32
  %xor58.i.i.2.1 = xor i32 %conv57.i.i.2.1, 1
  %conv59.i.i.2.1 = trunc i32 %xor58.i.i.2.1 to i8
  %scevgep339.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  %63 = load i8, i8* %scevgep339.2.1, align 1
  %call64.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.1, i8 zeroext %63) #3
  %scevgep346.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.1, i8* %scevgep346.2.1, align 1
  %64 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep343.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 2
  %65 = load i8, i8* %scevgep343.2.1, align 1
  %call75.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #3
  %scevgep350.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.1, i8* %scevgep350.2.1, align 1
  %scevgep347.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 2
  %66 = load i8, i8* %scevgep347.2.1, align 1
  %conv84.i.i.2.1 = zext i8 %66 to i32
  %scevgep351.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 2
  %67 = load i8, i8* %scevgep351.2.1, align 1
  %conv89.i.i.2.1 = zext i8 %67 to i32
  %xor90.i.i.2.1 = xor i32 %conv84.i.i.2.1, %conv89.i.i.2.1
  %conv91.i.i.2.1 = trunc i32 %xor90.i.i.2.1 to i8
  %scevgep354.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %51, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.1, i8* %scevgep354.2.1, align 1
  %scevgep337.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 1, i64 0
  %68 = bitcast i8* %scevgep337.1 to [3 x [3 x i8]]*
  %scevgep341.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep341.1 to [3 x [3 x i8]]*
  %scevgep345.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep345.1 to [3 x [3 x i8]]*
  %scevgep349.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 1, i64 0
  %71 = bitcast i8* %scevgep349.1 to [3 x [3 x i8]]*
  %scevgep353.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %51, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep353.1 to [3 x [3 x i8]]*
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %73 = load i8, i8* %x, align 1
  %conv44.i.i.2672 = zext i8 %73 to i32
  %scevgep338.2673 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep338.2673, align 1
  %conv49.i.i.2674 = zext i8 %74 to i32
  %xor.i73.i.2675 = xor i32 %conv44.i.i.2672, %conv49.i.i.2674
  %conv50.i.i.2676 = trunc i32 %xor.i73.i.2675 to i8
  %scevgep342.2677 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.2676, i8* %scevgep342.2677, align 1
  %75 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.2678 = zext i8 %75 to i32
  %xor58.i.i.2679 = xor i32 %conv57.i.i.2678, 1
  %conv59.i.i.2680 = trunc i32 %xor58.i.i.2679 to i8
  %scevgep339.2681 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep339.2681, align 1
  %call64.i.i.2682 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2680, i8 zeroext %76) #3
  %scevgep346.2683 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %70, i64 0, i64 0, i64 0
  store i8 %call64.i.i.2682, i8* %scevgep346.2683, align 1
  %77 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep343.2684 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep343.2684, align 1
  %call75.i.i.2685 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %scevgep350.2686 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %71, i64 0, i64 0, i64 0
  store i8 %call75.i.i.2685, i8* %scevgep350.2686, align 1
  %scevgep347.2687 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %70, i64 0, i64 0, i64 0
  %79 = load i8, i8* %scevgep347.2687, align 1
  %conv84.i.i.2688 = zext i8 %79 to i32
  %scevgep351.2689 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %71, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep351.2689, align 1
  %conv89.i.i.2690 = zext i8 %80 to i32
  %xor90.i.i.2691 = xor i32 %conv84.i.i.2688, %conv89.i.i.2690
  %conv91.i.i.2692 = trunc i32 %xor90.i.i.2691 to i8
  %scevgep354.2693 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %72, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.2692, i8* %scevgep354.2693, align 1
  %scevgep335.1.2 = getelementptr i8, i8* %x, i64 1
  %81 = load i8, i8* %scevgep335.1.2, align 1
  %conv44.i.i.1.2 = zext i8 %81 to i32
  %scevgep338.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 1
  %82 = load i8, i8* %scevgep338.1.2, align 1
  %conv49.i.i.1.2 = zext i8 %82 to i32
  %xor.i73.i.1.2 = xor i32 %conv44.i.i.1.2, %conv49.i.i.1.2
  %conv50.i.i.1.2 = trunc i32 %xor.i73.i.1.2 to i8
  %scevgep342.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.2, i8* %scevgep342.1.2, align 1
  %83 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.1.2 = zext i8 %83 to i32
  %xor58.i.i.1.2 = xor i32 %conv57.i.i.1.2, 1
  %conv59.i.i.1.2 = trunc i32 %xor58.i.i.1.2 to i8
  %scevgep339.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 1
  %84 = load i8, i8* %scevgep339.1.2, align 1
  %call64.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.2, i8 zeroext %84) #3
  %scevgep346.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %70, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.2, i8* %scevgep346.1.2, align 1
  %85 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep343.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 1
  %86 = load i8, i8* %scevgep343.1.2, align 1
  %call75.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #3
  %scevgep350.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %71, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.2, i8* %scevgep350.1.2, align 1
  %scevgep347.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %70, i64 0, i64 0, i64 1
  %87 = load i8, i8* %scevgep347.1.2, align 1
  %conv84.i.i.1.2 = zext i8 %87 to i32
  %scevgep351.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %71, i64 0, i64 0, i64 1
  %88 = load i8, i8* %scevgep351.1.2, align 1
  %conv89.i.i.1.2 = zext i8 %88 to i32
  %xor90.i.i.1.2 = xor i32 %conv84.i.i.1.2, %conv89.i.i.1.2
  %conv91.i.i.1.2 = trunc i32 %xor90.i.i.1.2 to i8
  %scevgep354.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %72, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.2, i8* %scevgep354.1.2, align 1
  %89 = load i8, i8* %arraydecay6.i, align 1
  %90 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #3
  store i8 %call111.i.i, i8* %arraydecay7.i, align 1
  %scevgep325.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %91 = load i8, i8* %scevgep325.1, align 1
  %conv126.i.i.1 = zext i8 %91 to i32
  %92 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.1 = zext i8 %92 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay7.i, align 1
  %scevgep325.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %93 = load i8, i8* %scevgep325.2, align 1
  %conv126.i.i.2 = zext i8 %93 to i32
  %94 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.2 = zext i8 %94 to i32
  %xor130.i.i.2 = xor i32 %conv129.i.i.2, %conv126.i.i.2
  %conv131.i.i.2 = trunc i32 %xor130.i.i.2 to i8
  store i8 %conv131.i.i.2, i8* %arraydecay7.i, align 1
  %scevgep324 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep324 to [3 x [3 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %96 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %97 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  %scevgep325.1628 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %95, i64 0, i64 0, i64 0
  %98 = load i8, i8* %scevgep325.1628, align 1
  %conv126.i.i.1629 = zext i8 %98 to i32
  %99 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1630 = zext i8 %99 to i32
  %xor130.i.i.1631 = xor i32 %conv129.i.i.1630, %conv126.i.i.1629
  %conv131.i.i.1632 = trunc i32 %xor130.i.i.1631 to i8
  store i8 %conv131.i.i.1632, i8* %arrayidx128.i.i.1, align 1
  %scevgep325.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %95, i64 0, i64 0, i64 2
  %100 = load i8, i8* %scevgep325.2.1, align 1
  %conv126.i.i.2.1 = zext i8 %100 to i32
  %101 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.2.1 = zext i8 %101 to i32
  %xor130.i.i.2.1 = xor i32 %conv129.i.i.2.1, %conv126.i.i.2.1
  %conv131.i.i.2.1 = trunc i32 %xor130.i.i.2.1 to i8
  store i8 %conv131.i.i.2.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep324.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %95, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep324.1 to [3 x [3 x i8]]*
  %arrayidx108.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %103 = load i8, i8* %arrayidx108.i.i.2, align 1
  %arrayidx110.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %104 = load i8, i8* %arrayidx110.i.i.2, align 1
  %call111.i.i.2 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104) #3
  %arrayidx113.i.i.2 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 2
  store i8 %call111.i.i.2, i8* %arrayidx113.i.i.2, align 1
  %arrayidx128.i.i.2 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 2
  %scevgep325.2637 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %102, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep325.2637, align 1
  %conv126.i.i.2638 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.2639 = zext i8 %106 to i32
  %xor130.i.i.2640 = xor i32 %conv129.i.i.2639, %conv126.i.i.2638
  %conv131.i.i.2641 = trunc i32 %xor130.i.i.2640 to i8
  store i8 %conv131.i.i.2641, i8* %arrayidx128.i.i.2, align 1
  %scevgep325.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %102, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep325.1.2, align 1
  %conv126.i.i.1.2 = zext i8 %107 to i32
  %108 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.1.2 = zext i8 %108 to i32
  %xor130.i.i.1.2 = xor i32 %conv129.i.i.1.2, %conv126.i.i.1.2
  %conv131.i.i.1.2 = trunc i32 %xor130.i.i.1.2 to i8
  store i8 %conv131.i.i.1.2, i8* %arrayidx128.i.i.2, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i52.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep315 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %109 = load i8, i8* %scevgep315, align 1
  %scevgep315.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %110 = load i8, i8* %scevgep315.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %110 to i32
  %conv1.i.i173.i.i.1 = zext i8 %109 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %scevgep315.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %111 = load i8, i8* %scevgep315.2, align 1
  %conv.i.i172.i.i.2 = zext i8 %111 to i32
  %conv1.i.i173.i.i.2 = zext i8 %conv2.i.i175.i.i.1 to i32
  %xor.i.i174.i.i.2 = xor i32 %conv1.i.i173.i.i.2, %conv.i.i172.i.i.2
  %conv2.i.i175.i.i.2 = trunc i32 %xor.i.i174.i.i.2 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.2 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep310 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %112 = load i8, i8* %scevgep310, align 1
  %call.i.i721 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %112) #3
  %call.i3.i722 = call zeroext i8 @mult(i8 zeroext %call.i.i721, i8 zeroext %call.i.i721) #3
  %scevgep311 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i3.i722, i8* %scevgep311, align 1
  %scevgep310.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %113 = load i8, i8* %scevgep310.1, align 1
  %call.i.i719 = call zeroext i8 @mult(i8 zeroext %113, i8 zeroext %113) #3
  %call.i3.i720 = call zeroext i8 @mult(i8 zeroext %call.i.i719, i8 zeroext %call.i.i719) #3
  %scevgep311.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i3.i720, i8* %scevgep311.1, align 1
  %scevgep310.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %114 = load i8, i8* %scevgep310.2, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %114) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep311.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i3.i, i8* %scevgep311.2, align 1
  %arraydecay11.i = getelementptr inbounds [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %call.i108.i = call zeroext i8 (...) @rand() #3
  %conv.i109.i = zext i8 %call.i108.i to i32
  %scevgep306 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %115 = load i8, i8* %scevgep306, align 1
  %scevgep306.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %116 = load i8, i8* %scevgep306.1, align 1
  %conv.i.i.i115.i.1 = zext i8 %116 to i32
  %conv1.i.i.i116.i.1 = zext i8 %115 to i32
  %xor.i.i.i117.i.1 = xor i32 %conv1.i.i.i116.i.1, %conv.i.i.i115.i.1
  %conv2.i.i.i118.i.1 = trunc i32 %xor.i.i.i117.i.1 to i8
  %scevgep306.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %117 = load i8, i8* %scevgep306.2, align 1
  %conv.i.i.i115.i.2 = zext i8 %117 to i32
  %conv1.i.i.i116.i.2 = zext i8 %conv2.i.i.i118.i.1 to i32
  %xor.i.i.i117.i.2 = xor i32 %conv1.i.i.i116.i.2, %conv.i.i.i115.i.2
  %conv2.i.i.i118.i.2 = trunc i32 %xor.i.i.i117.i.2 to i8
  %conv2.i121.i = zext i8 %conv2.i.i.i118.i.2 to i32
  %cmp.i122.i = icmp eq i32 %conv.i109.i, %conv2.i121.i
  call void @assume(i1 zeroext %cmp.i122.i) #3
  %scevgep301 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %118 = load i8, i8* %scevgep301, align 1
  %scevgep302 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  store i8 %118, i8* %scevgep302, align 1
  %scevgep301.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %119 = load i8, i8* %scevgep301.1, align 1
  %scevgep302.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  store i8 %119, i8* %scevgep302.1, align 1
  %scevgep301.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %120 = load i8, i8* %scevgep301.2, align 1
  %scevgep302.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  store i8 %120, i8* %scevgep302.2, align 1
  %call7.i137.i = call zeroext i8 (...) @rand() #3
  %conv8.i138.i = zext i8 %call7.i137.i to i32
  %121 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i = zext i8 %121 to i32
  %xor.i140.i = xor i32 %conv9.i139.i, %conv8.i138.i
  %conv10.i141.i = trunc i32 %xor.i140.i to i8
  store i8 %conv10.i141.i, i8* %arraydecay11.i, align 1
  %conv11.i142.i = zext i8 %call7.i137.i to i32
  %scevgep297 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %122 = load i8, i8* %scevgep297, align 1
  %conv13.i145.i = zext i8 %122 to i32
  %xor14.i146.i = xor i32 %conv13.i145.i, %conv11.i142.i
  %conv15.i147.i = trunc i32 %xor14.i146.i to i8
  store i8 %conv15.i147.i, i8* %scevgep297, align 1
  %call7.i137.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i138.i.1 = zext i8 %call7.i137.i.1 to i32
  %123 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i.1 = zext i8 %123 to i32
  %xor.i140.i.1 = xor i32 %conv9.i139.i.1, %conv8.i138.i.1
  %conv10.i141.i.1 = trunc i32 %xor.i140.i.1 to i8
  store i8 %conv10.i141.i.1, i8* %arraydecay11.i, align 1
  %conv11.i142.i.1 = zext i8 %call7.i137.i.1 to i32
  %scevgep297.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %124 = load i8, i8* %scevgep297.1, align 1
  %conv13.i145.i.1 = zext i8 %124 to i32
  %xor14.i146.i.1 = xor i32 %conv13.i145.i.1, %conv11.i142.i.1
  %conv15.i147.i.1 = trunc i32 %xor14.i146.i.1 to i8
  store i8 %conv15.i147.i.1, i8* %scevgep297.1, align 1
  %conv16.i150.i = zext i8 %call.i108.i to i32
  %scevgep293 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %125 = load i8, i8* %scevgep293, align 1
  %scevgep293.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %126 = load i8, i8* %scevgep293.1, align 1
  %conv.i.i31.i157.i.1 = zext i8 %126 to i32
  %conv1.i.i32.i158.i.1 = zext i8 %125 to i32
  %xor.i.i33.i159.i.1 = xor i32 %conv1.i.i32.i158.i.1, %conv.i.i31.i157.i.1
  %conv2.i.i34.i160.i.1 = trunc i32 %xor.i.i33.i159.i.1 to i8
  %scevgep293.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %127 = load i8, i8* %scevgep293.2, align 1
  %conv.i.i31.i157.i.2 = zext i8 %127 to i32
  %conv1.i.i32.i158.i.2 = zext i8 %conv2.i.i34.i160.i.1 to i32
  %xor.i.i33.i159.i.2 = xor i32 %conv1.i.i32.i158.i.2, %conv.i.i31.i157.i.2
  %conv2.i.i34.i160.i.2 = trunc i32 %xor.i.i33.i159.i.2 to i8
  %conv18.i163.i = zext i8 %conv2.i.i34.i160.i.2 to i32
  %cmp19.i164.i = icmp eq i32 %conv16.i150.i, %conv18.i163.i
  call void @assert(i1 zeroext %cmp19.i164.i) #3
  %arraydecay12.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %call.i197.i = call zeroext i8 (...) @rand() #3
  %call1.i198.i = call zeroext i8 (...) @rand() #3
  %conv.i199.i = zext i8 %call.i197.i to i32
  %scevgep289 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %128 = load i8, i8* %scevgep289, align 1
  %scevgep289.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %129 = load i8, i8* %scevgep289.1, align 1
  %conv.i.i.i205.i.1 = zext i8 %129 to i32
  %conv1.i.i.i206.i.1 = zext i8 %128 to i32
  %xor.i.i.i207.i.1 = xor i32 %conv1.i.i.i206.i.1, %conv.i.i.i205.i.1
  %conv2.i.i.i208.i.1 = trunc i32 %xor.i.i.i207.i.1 to i8
  %scevgep289.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %130 = load i8, i8* %scevgep289.2, align 1
  %conv.i.i.i205.i.2 = zext i8 %130 to i32
  %conv1.i.i.i206.i.2 = zext i8 %conv2.i.i.i208.i.1 to i32
  %xor.i.i.i207.i.2 = xor i32 %conv1.i.i.i206.i.2, %conv.i.i.i205.i.2
  %conv2.i.i.i208.i.2 = trunc i32 %xor.i.i.i207.i.2 to i8
  %conv3.i211.i = zext i8 %conv2.i.i.i208.i.2 to i32
  %cmp.i212.i = icmp eq i32 %conv.i199.i, %conv3.i211.i
  call void @assume(i1 zeroext %cmp.i212.i) #3
  %conv5.i213.i = zext i8 %call1.i198.i to i32
  %scevgep285 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %131 = load i8, i8* %scevgep285, align 1
  %scevgep285.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %132 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i155.i220.i.1 = zext i8 %132 to i32
  %conv1.i.i156.i221.i.1 = zext i8 %131 to i32
  %xor.i.i157.i222.i.1 = xor i32 %conv1.i.i156.i221.i.1, %conv.i.i155.i220.i.1
  %conv2.i.i158.i223.i.1 = trunc i32 %xor.i.i157.i222.i.1 to i8
  %scevgep285.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %133 = load i8, i8* %scevgep285.2, align 1
  %conv.i.i155.i220.i.2 = zext i8 %133 to i32
  %conv1.i.i156.i221.i.2 = zext i8 %conv2.i.i158.i223.i.1 to i32
  %xor.i.i157.i222.i.2 = xor i32 %conv1.i.i156.i221.i.2, %conv.i.i155.i220.i.2
  %conv2.i.i158.i223.i.2 = trunc i32 %xor.i.i157.i222.i.2 to i8
  %conv7.i226.i = zext i8 %conv2.i.i158.i223.i.2 to i32
  %cmp8.i227.i = icmp eq i32 %conv5.i213.i, %conv7.i226.i
  call void @assume(i1 zeroext %cmp8.i227.i) #3
  %scevgep269 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep269270 = bitcast i8* %scevgep269 to [3 x [3 x i8]]*
  %scevgep276 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep276277 = bitcast i8* %scevgep276 to [3 x [3 x i8]]*
  %call16.i235.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i, i8* %scevgep269, align 1
  %134 = load i8, i8* %scevgep269, align 1
  store i8 %134, i8* %scevgep276, align 1
  %scevgep274 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep269270, i64 0, i64 0, i64 1
  %scevgep281 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep276277, i64 0, i64 1, i64 0
  %call16.i235.i.1704 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.1704, i8* %scevgep274, align 1
  %135 = load i8, i8* %scevgep274, align 1
  store i8 %135, i8* %scevgep281, align 1
  %scevgep272 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep269270, i64 0, i64 1, i64 1
  %scevgep279 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep276277, i64 0, i64 1, i64 1
  %call16.i235.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.1, i8* %scevgep272, align 1
  %136 = load i8, i8* %scevgep272, align 1
  store i8 %136, i8* %scevgep279, align 1
  %scevgep246.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %137 = load i8, i8* %scevgep246.1, align 1
  %conv44.i262.i.1 = zext i8 %137 to i32
  %scevgep249.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep249.1, align 1
  %conv49.i267.i.1 = zext i8 %138 to i32
  %xor.i268.i.1 = xor i32 %conv44.i262.i.1, %conv49.i267.i.1
  %conv50.i269.i.1 = trunc i32 %xor.i268.i.1 to i8
  %scevgep253.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1, i8* %scevgep253.1, align 1
  %139 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.1 = zext i8 %139 to i32
  %xor58.i277.i.1 = xor i32 %conv57.i276.i.1, 1
  %conv59.i278.i.1 = trunc i32 %xor58.i277.i.1 to i8
  %scevgep250.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %140 = load i8, i8* %scevgep250.1, align 1
  %call64.i283.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1, i8 zeroext %140) #3
  %scevgep257.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1, i8* %scevgep257.1, align 1
  %141 = load i8, i8* %arraydecay12.i, align 1
  %scevgep254.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %142 = load i8, i8* %scevgep254.1, align 1
  %call75.i294.i.1 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  %scevgep261.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1, i8* %scevgep261.1, align 1
  %scevgep258.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep258.1, align 1
  %conv84.i303.i.1 = zext i8 %143 to i32
  %scevgep262.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %144 = load i8, i8* %scevgep262.1, align 1
  %conv89.i308.i.1 = zext i8 %144 to i32
  %xor90.i309.i.1 = xor i32 %conv84.i303.i.1, %conv89.i308.i.1
  %conv91.i310.i.1 = trunc i32 %xor90.i309.i.1 to i8
  %scevgep265.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1, i8* %scevgep265.1, align 1
  %scevgep246.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %145 = load i8, i8* %scevgep246.2, align 1
  %conv44.i262.i.2 = zext i8 %145 to i32
  %scevgep249.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %146 = load i8, i8* %scevgep249.2, align 1
  %conv49.i267.i.2 = zext i8 %146 to i32
  %xor.i268.i.2 = xor i32 %conv44.i262.i.2, %conv49.i267.i.2
  %conv50.i269.i.2 = trunc i32 %xor.i268.i.2 to i8
  %scevgep253.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2, i8* %scevgep253.2, align 1
  %147 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.2 = zext i8 %147 to i32
  %xor58.i277.i.2 = xor i32 %conv57.i276.i.2, 1
  %conv59.i278.i.2 = trunc i32 %xor58.i277.i.2 to i8
  %scevgep250.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep250.2, align 1
  %call64.i283.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2, i8 zeroext %148) #3
  %scevgep257.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2, i8* %scevgep257.2, align 1
  %149 = load i8, i8* %arraydecay12.i, align 1
  %scevgep254.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep254.2, align 1
  %call75.i294.i.2 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150) #3
  %scevgep261.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2, i8* %scevgep261.2, align 1
  %scevgep258.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %151 = load i8, i8* %scevgep258.2, align 1
  %conv84.i303.i.2 = zext i8 %151 to i32
  %scevgep262.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep262.2, align 1
  %conv89.i308.i.2 = zext i8 %152 to i32
  %xor90.i309.i.2 = xor i32 %conv84.i303.i.2, %conv89.i308.i.2
  %conv91.i310.i.2 = trunc i32 %xor90.i309.i.2 to i8
  %scevgep265.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2, i8* %scevgep265.2, align 1
  %scevgep248 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %153 = bitcast i8* %scevgep248 to [3 x [3 x i8]]*
  %scevgep252 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %154 = bitcast i8* %scevgep252 to [3 x [3 x i8]]*
  %scevgep256 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %155 = bitcast i8* %scevgep256 to [3 x [3 x i8]]*
  %scevgep260 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %156 = bitcast i8* %scevgep260 to [3 x [3 x i8]]*
  %scevgep264 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep264 to [3 x [3 x i8]]*
  %arrayidx56.i275.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %arrayidx70.i289.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep246.1574 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %158 = load i8, i8* %scevgep246.1574, align 1
  %conv44.i262.i.1575 = zext i8 %158 to i32
  %scevgep249.1576 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep249.1576, align 1
  %conv49.i267.i.1577 = zext i8 %159 to i32
  %xor.i268.i.1578 = xor i32 %conv44.i262.i.1575, %conv49.i267.i.1577
  %conv50.i269.i.1579 = trunc i32 %xor.i268.i.1578 to i8
  %scevgep253.1580 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.1579, i8* %scevgep253.1580, align 1
  %160 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.1581 = zext i8 %160 to i32
  %xor58.i277.i.1582 = xor i32 %conv57.i276.i.1581, 1
  %conv59.i278.i.1583 = trunc i32 %xor58.i277.i.1582 to i8
  %scevgep250.1584 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 0
  %161 = load i8, i8* %scevgep250.1584, align 1
  %call64.i283.i.1585 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1583, i8 zeroext %161) #3
  %scevgep257.1586 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %155, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.1585, i8* %scevgep257.1586, align 1
  %162 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep254.1587 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 0
  %163 = load i8, i8* %scevgep254.1587, align 1
  %call75.i294.i.1588 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %scevgep261.1589 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %156, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.1588, i8* %scevgep261.1589, align 1
  %scevgep258.1590 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %155, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep258.1590, align 1
  %conv84.i303.i.1591 = zext i8 %164 to i32
  %scevgep262.1592 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %156, i64 0, i64 0, i64 0
  %165 = load i8, i8* %scevgep262.1592, align 1
  %conv89.i308.i.1593 = zext i8 %165 to i32
  %xor90.i309.i.1594 = xor i32 %conv84.i303.i.1591, %conv89.i308.i.1593
  %conv91.i310.i.1595 = trunc i32 %xor90.i309.i.1594 to i8
  %scevgep265.1596 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %157, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.1595, i8* %scevgep265.1596, align 1
  %scevgep246.2.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %166 = load i8, i8* %scevgep246.2.1, align 1
  %conv44.i262.i.2.1 = zext i8 %166 to i32
  %scevgep249.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 2
  %167 = load i8, i8* %scevgep249.2.1, align 1
  %conv49.i267.i.2.1 = zext i8 %167 to i32
  %xor.i268.i.2.1 = xor i32 %conv44.i262.i.2.1, %conv49.i267.i.2.1
  %conv50.i269.i.2.1 = trunc i32 %xor.i268.i.2.1 to i8
  %scevgep253.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2.1, i8* %scevgep253.2.1, align 1
  %168 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.2.1 = zext i8 %168 to i32
  %xor58.i277.i.2.1 = xor i32 %conv57.i276.i.2.1, 1
  %conv59.i278.i.2.1 = trunc i32 %xor58.i277.i.2.1 to i8
  %scevgep250.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 0, i64 2
  %169 = load i8, i8* %scevgep250.2.1, align 1
  %call64.i283.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2.1, i8 zeroext %169) #3
  %scevgep257.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %155, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2.1, i8* %scevgep257.2.1, align 1
  %170 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep254.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 2
  %171 = load i8, i8* %scevgep254.2.1, align 1
  %call75.i294.i.2.1 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171) #3
  %scevgep261.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %156, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2.1, i8* %scevgep261.2.1, align 1
  %scevgep258.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %155, i64 0, i64 0, i64 2
  %172 = load i8, i8* %scevgep258.2.1, align 1
  %conv84.i303.i.2.1 = zext i8 %172 to i32
  %scevgep262.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %156, i64 0, i64 0, i64 2
  %173 = load i8, i8* %scevgep262.2.1, align 1
  %conv89.i308.i.2.1 = zext i8 %173 to i32
  %xor90.i309.i.2.1 = xor i32 %conv84.i303.i.2.1, %conv89.i308.i.2.1
  %conv91.i310.i.2.1 = trunc i32 %xor90.i309.i.2.1 to i8
  %scevgep265.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %157, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2.1, i8* %scevgep265.2.1, align 1
  %scevgep248.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %153, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep248.1 to [3 x [3 x i8]]*
  %scevgep252.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep252.1 to [3 x [3 x i8]]*
  %scevgep256.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %155, i64 0, i64 1, i64 0
  %176 = bitcast i8* %scevgep256.1 to [3 x [3 x i8]]*
  %scevgep260.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %156, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep260.1 to [3 x [3 x i8]]*
  %scevgep264.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %157, i64 0, i64 1, i64 0
  %178 = bitcast i8* %scevgep264.1 to [3 x [3 x i8]]*
  %arrayidx56.i275.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %arrayidx70.i289.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep246.2601 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %179 = load i8, i8* %scevgep246.2601, align 1
  %conv44.i262.i.2602 = zext i8 %179 to i32
  %scevgep249.2603 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep249.2603, align 1
  %conv49.i267.i.2604 = zext i8 %180 to i32
  %xor.i268.i.2605 = xor i32 %conv44.i262.i.2602, %conv49.i267.i.2604
  %conv50.i269.i.2606 = trunc i32 %xor.i268.i.2605 to i8
  %scevgep253.2607 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.2606, i8* %scevgep253.2607, align 1
  %181 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.2608 = zext i8 %181 to i32
  %xor58.i277.i.2609 = xor i32 %conv57.i276.i.2608, 1
  %conv59.i278.i.2610 = trunc i32 %xor58.i277.i.2609 to i8
  %scevgep250.2611 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 0
  %182 = load i8, i8* %scevgep250.2611, align 1
  %call64.i283.i.2612 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2610, i8 zeroext %182) #3
  %scevgep257.2613 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %176, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.2612, i8* %scevgep257.2613, align 1
  %183 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep254.2614 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 0
  %184 = load i8, i8* %scevgep254.2614, align 1
  %call75.i294.i.2615 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #3
  %scevgep261.2616 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.2615, i8* %scevgep261.2616, align 1
  %scevgep258.2617 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %176, i64 0, i64 0, i64 0
  %185 = load i8, i8* %scevgep258.2617, align 1
  %conv84.i303.i.2618 = zext i8 %185 to i32
  %scevgep262.2619 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 0
  %186 = load i8, i8* %scevgep262.2619, align 1
  %conv89.i308.i.2620 = zext i8 %186 to i32
  %xor90.i309.i.2621 = xor i32 %conv84.i303.i.2618, %conv89.i308.i.2620
  %conv91.i310.i.2622 = trunc i32 %xor90.i309.i.2621 to i8
  %scevgep265.2623 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %178, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.2622, i8* %scevgep265.2623, align 1
  %scevgep246.1.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %187 = load i8, i8* %scevgep246.1.2, align 1
  %conv44.i262.i.1.2 = zext i8 %187 to i32
  %scevgep249.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep249.1.2, align 1
  %conv49.i267.i.1.2 = zext i8 %188 to i32
  %xor.i268.i.1.2 = xor i32 %conv44.i262.i.1.2, %conv49.i267.i.1.2
  %conv50.i269.i.1.2 = trunc i32 %xor.i268.i.1.2 to i8
  %scevgep253.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1.2, i8* %scevgep253.1.2, align 1
  %189 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.1.2 = zext i8 %189 to i32
  %xor58.i277.i.1.2 = xor i32 %conv57.i276.i.1.2, 1
  %conv59.i278.i.1.2 = trunc i32 %xor58.i277.i.1.2 to i8
  %scevgep250.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %174, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep250.1.2, align 1
  %call64.i283.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1.2, i8 zeroext %190) #3
  %scevgep257.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %176, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1.2, i8* %scevgep257.1.2, align 1
  %191 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep254.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 1
  %192 = load i8, i8* %scevgep254.1.2, align 1
  %call75.i294.i.1.2 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192) #3
  %scevgep261.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1.2, i8* %scevgep261.1.2, align 1
  %scevgep258.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %176, i64 0, i64 0, i64 1
  %193 = load i8, i8* %scevgep258.1.2, align 1
  %conv84.i303.i.1.2 = zext i8 %193 to i32
  %scevgep262.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep262.1.2, align 1
  %conv89.i308.i.1.2 = zext i8 %194 to i32
  %xor90.i309.i.1.2 = xor i32 %conv84.i303.i.1.2, %conv89.i308.i.1.2
  %conv91.i310.i.1.2 = trunc i32 %xor90.i309.i.1.2 to i8
  %scevgep265.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %178, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1.2, i8* %scevgep265.1.2, align 1
  %195 = load i8, i8* %arraydecay12.i, align 1
  %196 = load i8, i8* %arraydecay13.i, align 1
  %call111.i327.i = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196) #3
  store i8 %call111.i327.i, i8* %arraydecay14.i, align 1
  %scevgep236.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %197 = load i8, i8* %scevgep236.1, align 1
  %conv126.i339.i.1 = zext i8 %197 to i32
  %198 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.1 = zext i8 %198 to i32
  %xor130.i343.i.1 = xor i32 %conv129.i342.i.1, %conv126.i339.i.1
  %conv131.i344.i.1 = trunc i32 %xor130.i343.i.1 to i8
  store i8 %conv131.i344.i.1, i8* %arraydecay14.i, align 1
  %scevgep236.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %199 = load i8, i8* %scevgep236.2, align 1
  %conv126.i339.i.2 = zext i8 %199 to i32
  %200 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.2 = zext i8 %200 to i32
  %xor130.i343.i.2 = xor i32 %conv129.i342.i.2, %conv126.i339.i.2
  %conv131.i344.i.2 = trunc i32 %xor130.i343.i.2 to i8
  store i8 %conv131.i344.i.2, i8* %arraydecay14.i, align 1
  %scevgep235 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %201 = bitcast i8* %scevgep235 to [3 x [3 x i8]]*
  %arrayidx108.i324.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %202 = load i8, i8* %arrayidx108.i324.i.1, align 1
  %arrayidx110.i326.i.1 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 1
  %203 = load i8, i8* %arrayidx110.i326.i.1, align 1
  %call111.i327.i.1 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #3
  %arrayidx113.i329.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  store i8 %call111.i327.i.1, i8* %arrayidx113.i329.i.1, align 1
  %arrayidx128.i341.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  %scevgep236.1556 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %201, i64 0, i64 0, i64 0
  %204 = load i8, i8* %scevgep236.1556, align 1
  %conv126.i339.i.1557 = zext i8 %204 to i32
  %205 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.1558 = zext i8 %205 to i32
  %xor130.i343.i.1559 = xor i32 %conv129.i342.i.1558, %conv126.i339.i.1557
  %conv131.i344.i.1560 = trunc i32 %xor130.i343.i.1559 to i8
  store i8 %conv131.i344.i.1560, i8* %arrayidx128.i341.i.1, align 1
  %scevgep236.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %201, i64 0, i64 0, i64 2
  %206 = load i8, i8* %scevgep236.2.1, align 1
  %conv126.i339.i.2.1 = zext i8 %206 to i32
  %207 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.2.1 = zext i8 %207 to i32
  %xor130.i343.i.2.1 = xor i32 %conv129.i342.i.2.1, %conv126.i339.i.2.1
  %conv131.i344.i.2.1 = trunc i32 %xor130.i343.i.2.1 to i8
  store i8 %conv131.i344.i.2.1, i8* %arrayidx128.i341.i.1, align 1
  %scevgep235.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %201, i64 0, i64 1, i64 0
  %208 = bitcast i8* %scevgep235.1 to [3 x [3 x i8]]*
  %arrayidx108.i324.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %209 = load i8, i8* %arrayidx108.i324.i.2, align 1
  %arrayidx110.i326.i.2 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 2
  %210 = load i8, i8* %arrayidx110.i326.i.2, align 1
  %call111.i327.i.2 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210) #3
  %arrayidx113.i329.i.2 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 2
  store i8 %call111.i327.i.2, i8* %arrayidx113.i329.i.2, align 1
  %arrayidx128.i341.i.2 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 2
  %scevgep236.2565 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %208, i64 0, i64 0, i64 0
  %211 = load i8, i8* %scevgep236.2565, align 1
  %conv126.i339.i.2566 = zext i8 %211 to i32
  %212 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.2567 = zext i8 %212 to i32
  %xor130.i343.i.2568 = xor i32 %conv129.i342.i.2567, %conv126.i339.i.2566
  %conv131.i344.i.2569 = trunc i32 %xor130.i343.i.2568 to i8
  store i8 %conv131.i344.i.2569, i8* %arrayidx128.i341.i.2, align 1
  %scevgep236.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %208, i64 0, i64 0, i64 1
  %213 = load i8, i8* %scevgep236.1.2, align 1
  %conv126.i339.i.1.2 = zext i8 %213 to i32
  %214 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.1.2 = zext i8 %214 to i32
  %xor130.i343.i.1.2 = xor i32 %conv129.i342.i.1.2, %conv126.i339.i.1.2
  %conv131.i344.i.1.2 = trunc i32 %xor130.i343.i.1.2 to i8
  store i8 %conv131.i344.i.1.2, i8* %arrayidx128.i341.i.2, align 1
  %call139.i350.i = call zeroext i8 @mult(i8 zeroext %call.i197.i, i8 zeroext %call1.i198.i) #3
  %conv140.i351.i = zext i8 %call139.i350.i to i32
  %scevgep226 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %215 = load i8, i8* %scevgep226, align 1
  %scevgep226.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %216 = load i8, i8* %scevgep226.1, align 1
  %conv.i.i172.i358.i.1 = zext i8 %216 to i32
  %conv1.i.i173.i359.i.1 = zext i8 %215 to i32
  %xor.i.i174.i360.i.1 = xor i32 %conv1.i.i173.i359.i.1, %conv.i.i172.i358.i.1
  %conv2.i.i175.i361.i.1 = trunc i32 %xor.i.i174.i360.i.1 to i8
  %scevgep226.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %217 = load i8, i8* %scevgep226.2, align 1
  %conv.i.i172.i358.i.2 = zext i8 %217 to i32
  %conv1.i.i173.i359.i.2 = zext i8 %conv2.i.i175.i361.i.1 to i32
  %xor.i.i174.i360.i.2 = xor i32 %conv1.i.i173.i359.i.2, %conv.i.i172.i358.i.2
  %conv2.i.i175.i361.i.2 = trunc i32 %xor.i.i174.i360.i.2 to i8
  %conv142.i364.i = zext i8 %conv2.i.i175.i361.i.2 to i32
  %cmp143.i365.i = icmp eq i32 %conv140.i351.i, %conv142.i364.i
  call void @assert(i1 zeroext %cmp143.i365.i) #3
  %scevgep221 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %218 = load i8, i8* %scevgep221, align 1
  %call.i.i.i715 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %218) #3
  %call.i3.i.i716 = call zeroext i8 @mult(i8 zeroext %call.i.i.i715, i8 zeroext %call.i.i.i715) #3
  %call.i.i5.i717 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i716, i8 zeroext %call.i3.i.i716) #3
  %call.i3.i6.i718 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i717, i8 zeroext %call.i.i5.i717) #3
  %scevgep222 = getelementptr [3 x i8], [3 x i8]* %v16.i, i64 0, i64 0
  store i8 %call.i3.i6.i718, i8* %scevgep222, align 1
  %scevgep221.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %219 = load i8, i8* %scevgep221.1, align 1
  %call.i.i.i711 = call zeroext i8 @mult(i8 zeroext %219, i8 zeroext %219) #3
  %call.i3.i.i712 = call zeroext i8 @mult(i8 zeroext %call.i.i.i711, i8 zeroext %call.i.i.i711) #3
  %call.i.i5.i713 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i712, i8 zeroext %call.i3.i.i712) #3
  %call.i3.i6.i714 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i713, i8 zeroext %call.i.i5.i713) #3
  %scevgep222.1 = getelementptr [3 x i8], [3 x i8]* %v16.i, i64 0, i64 1
  store i8 %call.i3.i6.i714, i8* %scevgep222.1, align 1
  %scevgep221.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %220 = load i8, i8* %scevgep221.2, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %220) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep222.2 = getelementptr [3 x i8], [3 x i8]* %v16.i, i64 0, i64 2
  store i8 %call.i3.i6.i, i8* %scevgep222.2, align 1
  %arraydecay17.i = getelementptr inbounds [3 x i8], [3 x i8]* %v16.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %call.i413.i = call zeroext i8 (...) @rand() #3
  %call1.i414.i = call zeroext i8 (...) @rand() #3
  %conv.i415.i = zext i8 %call.i413.i to i32
  %scevgep217 = getelementptr [3 x i8], [3 x i8]* %v16.i, i64 0, i64 0
  %221 = load i8, i8* %scevgep217, align 1
  %scevgep217.1 = getelementptr [3 x i8], [3 x i8]* %v16.i, i64 0, i64 1
  %222 = load i8, i8* %scevgep217.1, align 1
  %conv.i.i.i421.i.1 = zext i8 %222 to i32
  %conv1.i.i.i422.i.1 = zext i8 %221 to i32
  %xor.i.i.i423.i.1 = xor i32 %conv1.i.i.i422.i.1, %conv.i.i.i421.i.1
  %conv2.i.i.i424.i.1 = trunc i32 %xor.i.i.i423.i.1 to i8
  %scevgep217.2 = getelementptr [3 x i8], [3 x i8]* %v16.i, i64 0, i64 2
  %223 = load i8, i8* %scevgep217.2, align 1
  %conv.i.i.i421.i.2 = zext i8 %223 to i32
  %conv1.i.i.i422.i.2 = zext i8 %conv2.i.i.i424.i.1 to i32
  %xor.i.i.i423.i.2 = xor i32 %conv1.i.i.i422.i.2, %conv.i.i.i421.i.2
  %conv2.i.i.i424.i.2 = trunc i32 %xor.i.i.i423.i.2 to i8
  %conv3.i427.i = zext i8 %conv2.i.i.i424.i.2 to i32
  %cmp.i428.i = icmp eq i32 %conv.i415.i, %conv3.i427.i
  call void @assume(i1 zeroext %cmp.i428.i) #3
  %conv5.i429.i = zext i8 %call1.i414.i to i32
  %scevgep213 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %224 = load i8, i8* %scevgep213, align 1
  %scevgep213.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %225 = load i8, i8* %scevgep213.1, align 1
  %conv.i.i155.i436.i.1 = zext i8 %225 to i32
  %conv1.i.i156.i437.i.1 = zext i8 %224 to i32
  %xor.i.i157.i438.i.1 = xor i32 %conv1.i.i156.i437.i.1, %conv.i.i155.i436.i.1
  %conv2.i.i158.i439.i.1 = trunc i32 %xor.i.i157.i438.i.1 to i8
  %scevgep213.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %226 = load i8, i8* %scevgep213.2, align 1
  %conv.i.i155.i436.i.2 = zext i8 %226 to i32
  %conv1.i.i156.i437.i.2 = zext i8 %conv2.i.i158.i439.i.1 to i32
  %xor.i.i157.i438.i.2 = xor i32 %conv1.i.i156.i437.i.2, %conv.i.i155.i436.i.2
  %conv2.i.i158.i439.i.2 = trunc i32 %xor.i.i157.i438.i.2 to i8
  %conv7.i442.i = zext i8 %conv2.i.i158.i439.i.2 to i32
  %cmp8.i443.i = icmp eq i32 %conv5.i429.i, %conv7.i442.i
  call void @assume(i1 zeroext %cmp8.i443.i) #3
  %scevgep197 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep197198 = bitcast i8* %scevgep197 to [3 x [3 x i8]]*
  %scevgep204 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep204205 = bitcast i8* %scevgep204 to [3 x [3 x i8]]*
  %call16.i451.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i, i8* %scevgep197, align 1
  %227 = load i8, i8* %scevgep197, align 1
  store i8 %227, i8* %scevgep204, align 1
  %scevgep202 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep197198, i64 0, i64 0, i64 1
  %scevgep209 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep204205, i64 0, i64 1, i64 0
  %call16.i451.i.1701 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.1701, i8* %scevgep202, align 1
  %228 = load i8, i8* %scevgep202, align 1
  store i8 %228, i8* %scevgep209, align 1
  %scevgep200 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep197198, i64 0, i64 1, i64 1
  %scevgep207 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep204205, i64 0, i64 1, i64 1
  %call16.i451.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.1, i8* %scevgep200, align 1
  %229 = load i8, i8* %scevgep200, align 1
  store i8 %229, i8* %scevgep207, align 1
  %scevgep174.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %230 = load i8, i8* %scevgep174.1, align 1
  %conv44.i478.i.1 = zext i8 %230 to i32
  %scevgep177.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %231 = load i8, i8* %scevgep177.1, align 1
  %conv49.i483.i.1 = zext i8 %231 to i32
  %xor.i484.i.1 = xor i32 %conv44.i478.i.1, %conv49.i483.i.1
  %conv50.i485.i.1 = trunc i32 %xor.i484.i.1 to i8
  %scevgep181.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1, i8* %scevgep181.1, align 1
  %232 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.1 = zext i8 %232 to i32
  %xor58.i493.i.1 = xor i32 %conv57.i492.i.1, 1
  %conv59.i494.i.1 = trunc i32 %xor58.i493.i.1 to i8
  %scevgep178.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %233 = load i8, i8* %scevgep178.1, align 1
  %call64.i499.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1, i8 zeroext %233) #3
  %scevgep185.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1, i8* %scevgep185.1, align 1
  %234 = load i8, i8* %arraydecay17.i, align 1
  %scevgep182.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %235 = load i8, i8* %scevgep182.1, align 1
  %call75.i510.i.1 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235) #3
  %scevgep189.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1, i8* %scevgep189.1, align 1
  %scevgep186.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %236 = load i8, i8* %scevgep186.1, align 1
  %conv84.i519.i.1 = zext i8 %236 to i32
  %scevgep190.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %237 = load i8, i8* %scevgep190.1, align 1
  %conv89.i524.i.1 = zext i8 %237 to i32
  %xor90.i525.i.1 = xor i32 %conv84.i519.i.1, %conv89.i524.i.1
  %conv91.i526.i.1 = trunc i32 %xor90.i525.i.1 to i8
  %scevgep193.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1, i8* %scevgep193.1, align 1
  %scevgep174.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %238 = load i8, i8* %scevgep174.2, align 1
  %conv44.i478.i.2 = zext i8 %238 to i32
  %scevgep177.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %239 = load i8, i8* %scevgep177.2, align 1
  %conv49.i483.i.2 = zext i8 %239 to i32
  %xor.i484.i.2 = xor i32 %conv44.i478.i.2, %conv49.i483.i.2
  %conv50.i485.i.2 = trunc i32 %xor.i484.i.2 to i8
  %scevgep181.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2, i8* %scevgep181.2, align 1
  %240 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.2 = zext i8 %240 to i32
  %xor58.i493.i.2 = xor i32 %conv57.i492.i.2, 1
  %conv59.i494.i.2 = trunc i32 %xor58.i493.i.2 to i8
  %scevgep178.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %241 = load i8, i8* %scevgep178.2, align 1
  %call64.i499.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2, i8 zeroext %241) #3
  %scevgep185.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2, i8* %scevgep185.2, align 1
  %242 = load i8, i8* %arraydecay17.i, align 1
  %scevgep182.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %243 = load i8, i8* %scevgep182.2, align 1
  %call75.i510.i.2 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243) #3
  %scevgep189.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2, i8* %scevgep189.2, align 1
  %scevgep186.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %244 = load i8, i8* %scevgep186.2, align 1
  %conv84.i519.i.2 = zext i8 %244 to i32
  %scevgep190.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %245 = load i8, i8* %scevgep190.2, align 1
  %conv89.i524.i.2 = zext i8 %245 to i32
  %xor90.i525.i.2 = xor i32 %conv84.i519.i.2, %conv89.i524.i.2
  %conv91.i526.i.2 = trunc i32 %xor90.i525.i.2 to i8
  %scevgep193.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2, i8* %scevgep193.2, align 1
  %scevgep176 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %246 = bitcast i8* %scevgep176 to [3 x [3 x i8]]*
  %scevgep180 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep180 to [3 x [3 x i8]]*
  %scevgep184 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %248 = bitcast i8* %scevgep184 to [3 x [3 x i8]]*
  %scevgep188 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %249 = bitcast i8* %scevgep188 to [3 x [3 x i8]]*
  %scevgep192 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %250 = bitcast i8* %scevgep192 to [3 x [3 x i8]]*
  %arrayidx56.i491.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %arrayidx70.i505.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep174.1502 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %251 = load i8, i8* %scevgep174.1502, align 1
  %conv44.i478.i.1503 = zext i8 %251 to i32
  %scevgep177.1504 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 0
  %252 = load i8, i8* %scevgep177.1504, align 1
  %conv49.i483.i.1505 = zext i8 %252 to i32
  %xor.i484.i.1506 = xor i32 %conv44.i478.i.1503, %conv49.i483.i.1505
  %conv50.i485.i.1507 = trunc i32 %xor.i484.i.1506 to i8
  %scevgep181.1508 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.1507, i8* %scevgep181.1508, align 1
  %253 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.1509 = zext i8 %253 to i32
  %xor58.i493.i.1510 = xor i32 %conv57.i492.i.1509, 1
  %conv59.i494.i.1511 = trunc i32 %xor58.i493.i.1510 to i8
  %scevgep178.1512 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep178.1512, align 1
  %call64.i499.i.1513 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1511, i8 zeroext %254) #3
  %scevgep185.1514 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %248, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.1513, i8* %scevgep185.1514, align 1
  %255 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep182.1515 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep182.1515, align 1
  %call75.i510.i.1516 = call zeroext i8 @mult(i8 zeroext %255, i8 zeroext %256) #3
  %scevgep189.1517 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %249, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.1516, i8* %scevgep189.1517, align 1
  %scevgep186.1518 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %248, i64 0, i64 0, i64 0
  %257 = load i8, i8* %scevgep186.1518, align 1
  %conv84.i519.i.1519 = zext i8 %257 to i32
  %scevgep190.1520 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %249, i64 0, i64 0, i64 0
  %258 = load i8, i8* %scevgep190.1520, align 1
  %conv89.i524.i.1521 = zext i8 %258 to i32
  %xor90.i525.i.1522 = xor i32 %conv84.i519.i.1519, %conv89.i524.i.1521
  %conv91.i526.i.1523 = trunc i32 %xor90.i525.i.1522 to i8
  %scevgep193.1524 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %250, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.1523, i8* %scevgep193.1524, align 1
  %scevgep174.2.1 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 2
  %259 = load i8, i8* %scevgep174.2.1, align 1
  %conv44.i478.i.2.1 = zext i8 %259 to i32
  %scevgep177.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 2
  %260 = load i8, i8* %scevgep177.2.1, align 1
  %conv49.i483.i.2.1 = zext i8 %260 to i32
  %xor.i484.i.2.1 = xor i32 %conv44.i478.i.2.1, %conv49.i483.i.2.1
  %conv50.i485.i.2.1 = trunc i32 %xor.i484.i.2.1 to i8
  %scevgep181.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2.1, i8* %scevgep181.2.1, align 1
  %261 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.2.1 = zext i8 %261 to i32
  %xor58.i493.i.2.1 = xor i32 %conv57.i492.i.2.1, 1
  %conv59.i494.i.2.1 = trunc i32 %xor58.i493.i.2.1 to i8
  %scevgep178.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 0, i64 2
  %262 = load i8, i8* %scevgep178.2.1, align 1
  %call64.i499.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2.1, i8 zeroext %262) #3
  %scevgep185.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %248, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2.1, i8* %scevgep185.2.1, align 1
  %263 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep182.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 0, i64 2
  %264 = load i8, i8* %scevgep182.2.1, align 1
  %call75.i510.i.2.1 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264) #3
  %scevgep189.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %249, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2.1, i8* %scevgep189.2.1, align 1
  %scevgep186.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %248, i64 0, i64 0, i64 2
  %265 = load i8, i8* %scevgep186.2.1, align 1
  %conv84.i519.i.2.1 = zext i8 %265 to i32
  %scevgep190.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %249, i64 0, i64 0, i64 2
  %266 = load i8, i8* %scevgep190.2.1, align 1
  %conv89.i524.i.2.1 = zext i8 %266 to i32
  %xor90.i525.i.2.1 = xor i32 %conv84.i519.i.2.1, %conv89.i524.i.2.1
  %conv91.i526.i.2.1 = trunc i32 %xor90.i525.i.2.1 to i8
  %scevgep193.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %250, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2.1, i8* %scevgep193.2.1, align 1
  %scevgep176.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %246, i64 0, i64 1, i64 0
  %267 = bitcast i8* %scevgep176.1 to [3 x [3 x i8]]*
  %scevgep180.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %247, i64 0, i64 1, i64 0
  %268 = bitcast i8* %scevgep180.1 to [3 x [3 x i8]]*
  %scevgep184.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %248, i64 0, i64 1, i64 0
  %269 = bitcast i8* %scevgep184.1 to [3 x [3 x i8]]*
  %scevgep188.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %249, i64 0, i64 1, i64 0
  %270 = bitcast i8* %scevgep188.1 to [3 x [3 x i8]]*
  %scevgep192.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %250, i64 0, i64 1, i64 0
  %271 = bitcast i8* %scevgep192.1 to [3 x [3 x i8]]*
  %arrayidx56.i491.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %arrayidx70.i505.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep174.2529 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %272 = load i8, i8* %scevgep174.2529, align 1
  %conv44.i478.i.2530 = zext i8 %272 to i32
  %scevgep177.2531 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 0
  %273 = load i8, i8* %scevgep177.2531, align 1
  %conv49.i483.i.2532 = zext i8 %273 to i32
  %xor.i484.i.2533 = xor i32 %conv44.i478.i.2530, %conv49.i483.i.2532
  %conv50.i485.i.2534 = trunc i32 %xor.i484.i.2533 to i8
  %scevgep181.2535 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %268, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.2534, i8* %scevgep181.2535, align 1
  %274 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.2536 = zext i8 %274 to i32
  %xor58.i493.i.2537 = xor i32 %conv57.i492.i.2536, 1
  %conv59.i494.i.2538 = trunc i32 %xor58.i493.i.2537 to i8
  %scevgep178.2539 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 0
  %275 = load i8, i8* %scevgep178.2539, align 1
  %call64.i499.i.2540 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2538, i8 zeroext %275) #3
  %scevgep185.2541 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %269, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.2540, i8* %scevgep185.2541, align 1
  %276 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep182.2542 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %268, i64 0, i64 0, i64 0
  %277 = load i8, i8* %scevgep182.2542, align 1
  %call75.i510.i.2543 = call zeroext i8 @mult(i8 zeroext %276, i8 zeroext %277) #3
  %scevgep189.2544 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %270, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.2543, i8* %scevgep189.2544, align 1
  %scevgep186.2545 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %269, i64 0, i64 0, i64 0
  %278 = load i8, i8* %scevgep186.2545, align 1
  %conv84.i519.i.2546 = zext i8 %278 to i32
  %scevgep190.2547 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %270, i64 0, i64 0, i64 0
  %279 = load i8, i8* %scevgep190.2547, align 1
  %conv89.i524.i.2548 = zext i8 %279 to i32
  %xor90.i525.i.2549 = xor i32 %conv84.i519.i.2546, %conv89.i524.i.2548
  %conv91.i526.i.2550 = trunc i32 %xor90.i525.i.2549 to i8
  %scevgep193.2551 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %271, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.2550, i8* %scevgep193.2551, align 1
  %scevgep174.1.2 = getelementptr [3 x i8], [3 x i8]* %wr.i, i64 0, i64 1
  %280 = load i8, i8* %scevgep174.1.2, align 1
  %conv44.i478.i.1.2 = zext i8 %280 to i32
  %scevgep177.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 1
  %281 = load i8, i8* %scevgep177.1.2, align 1
  %conv49.i483.i.1.2 = zext i8 %281 to i32
  %xor.i484.i.1.2 = xor i32 %conv44.i478.i.1.2, %conv49.i483.i.1.2
  %conv50.i485.i.1.2 = trunc i32 %xor.i484.i.1.2 to i8
  %scevgep181.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %268, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1.2, i8* %scevgep181.1.2, align 1
  %282 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.1.2 = zext i8 %282 to i32
  %xor58.i493.i.1.2 = xor i32 %conv57.i492.i.1.2, 1
  %conv59.i494.i.1.2 = trunc i32 %xor58.i493.i.1.2 to i8
  %scevgep178.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %267, i64 0, i64 0, i64 1
  %283 = load i8, i8* %scevgep178.1.2, align 1
  %call64.i499.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1.2, i8 zeroext %283) #3
  %scevgep185.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %269, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1.2, i8* %scevgep185.1.2, align 1
  %284 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep182.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %268, i64 0, i64 0, i64 1
  %285 = load i8, i8* %scevgep182.1.2, align 1
  %call75.i510.i.1.2 = call zeroext i8 @mult(i8 zeroext %284, i8 zeroext %285) #3
  %scevgep189.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %270, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1.2, i8* %scevgep189.1.2, align 1
  %scevgep186.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %269, i64 0, i64 0, i64 1
  %286 = load i8, i8* %scevgep186.1.2, align 1
  %conv84.i519.i.1.2 = zext i8 %286 to i32
  %scevgep190.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %270, i64 0, i64 0, i64 1
  %287 = load i8, i8* %scevgep190.1.2, align 1
  %conv89.i524.i.1.2 = zext i8 %287 to i32
  %xor90.i525.i.1.2 = xor i32 %conv84.i519.i.1.2, %conv89.i524.i.1.2
  %conv91.i526.i.1.2 = trunc i32 %xor90.i525.i.1.2 to i8
  %scevgep193.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %271, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1.2, i8* %scevgep193.1.2, align 1
  %288 = load i8, i8* %arraydecay17.i, align 1
  %289 = load i8, i8* %arraydecay18.i, align 1
  %call111.i543.i = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %289) #3
  store i8 %call111.i543.i, i8* %arraydecay19.i, align 1
  %scevgep164.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %290 = load i8, i8* %scevgep164.1, align 1
  %conv126.i555.i.1 = zext i8 %290 to i32
  %291 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.1 = zext i8 %291 to i32
  %xor130.i559.i.1 = xor i32 %conv129.i558.i.1, %conv126.i555.i.1
  %conv131.i560.i.1 = trunc i32 %xor130.i559.i.1 to i8
  store i8 %conv131.i560.i.1, i8* %arraydecay19.i, align 1
  %scevgep164.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %292 = load i8, i8* %scevgep164.2, align 1
  %conv126.i555.i.2 = zext i8 %292 to i32
  %293 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.2 = zext i8 %293 to i32
  %xor130.i559.i.2 = xor i32 %conv129.i558.i.2, %conv126.i555.i.2
  %conv131.i560.i.2 = trunc i32 %xor130.i559.i.2 to i8
  store i8 %conv131.i560.i.2, i8* %arraydecay19.i, align 1
  %scevgep163 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %294 = bitcast i8* %scevgep163 to [3 x [3 x i8]]*
  %arrayidx108.i540.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %295 = load i8, i8* %arrayidx108.i540.i.1, align 1
  %arrayidx110.i542.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %296 = load i8, i8* %arrayidx110.i542.i.1, align 1
  %call111.i543.i.1 = call zeroext i8 @mult(i8 zeroext %295, i8 zeroext %296) #3
  %arrayidx113.i545.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  store i8 %call111.i543.i.1, i8* %arrayidx113.i545.i.1, align 1
  %arrayidx128.i557.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %scevgep164.1484 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %294, i64 0, i64 0, i64 0
  %297 = load i8, i8* %scevgep164.1484, align 1
  %conv126.i555.i.1485 = zext i8 %297 to i32
  %298 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.1486 = zext i8 %298 to i32
  %xor130.i559.i.1487 = xor i32 %conv129.i558.i.1486, %conv126.i555.i.1485
  %conv131.i560.i.1488 = trunc i32 %xor130.i559.i.1487 to i8
  store i8 %conv131.i560.i.1488, i8* %arrayidx128.i557.i.1, align 1
  %scevgep164.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %294, i64 0, i64 0, i64 2
  %299 = load i8, i8* %scevgep164.2.1, align 1
  %conv126.i555.i.2.1 = zext i8 %299 to i32
  %300 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.2.1 = zext i8 %300 to i32
  %xor130.i559.i.2.1 = xor i32 %conv129.i558.i.2.1, %conv126.i555.i.2.1
  %conv131.i560.i.2.1 = trunc i32 %xor130.i559.i.2.1 to i8
  store i8 %conv131.i560.i.2.1, i8* %arrayidx128.i557.i.1, align 1
  %scevgep163.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %294, i64 0, i64 1, i64 0
  %301 = bitcast i8* %scevgep163.1 to [3 x [3 x i8]]*
  %arrayidx108.i540.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %302 = load i8, i8* %arrayidx108.i540.i.2, align 1
  %arrayidx110.i542.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %303 = load i8, i8* %arrayidx110.i542.i.2, align 1
  %call111.i543.i.2 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303) #3
  %arrayidx113.i545.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  store i8 %call111.i543.i.2, i8* %arrayidx113.i545.i.2, align 1
  %arrayidx128.i557.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %scevgep164.2493 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %301, i64 0, i64 0, i64 0
  %304 = load i8, i8* %scevgep164.2493, align 1
  %conv126.i555.i.2494 = zext i8 %304 to i32
  %305 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.2495 = zext i8 %305 to i32
  %xor130.i559.i.2496 = xor i32 %conv129.i558.i.2495, %conv126.i555.i.2494
  %conv131.i560.i.2497 = trunc i32 %xor130.i559.i.2496 to i8
  store i8 %conv131.i560.i.2497, i8* %arrayidx128.i557.i.2, align 1
  %scevgep164.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %301, i64 0, i64 0, i64 1
  %306 = load i8, i8* %scevgep164.1.2, align 1
  %conv126.i555.i.1.2 = zext i8 %306 to i32
  %307 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.1.2 = zext i8 %307 to i32
  %xor130.i559.i.1.2 = xor i32 %conv129.i558.i.1.2, %conv126.i555.i.1.2
  %conv131.i560.i.1.2 = trunc i32 %xor130.i559.i.1.2 to i8
  store i8 %conv131.i560.i.1.2, i8* %arrayidx128.i557.i.2, align 1
  %call139.i566.i = call zeroext i8 @mult(i8 zeroext %call.i413.i, i8 zeroext %call1.i414.i) #3
  %conv140.i567.i = zext i8 %call139.i566.i to i32
  %scevgep154 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %308 = load i8, i8* %scevgep154, align 1
  %scevgep154.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %309 = load i8, i8* %scevgep154.1, align 1
  %conv.i.i172.i574.i.1 = zext i8 %309 to i32
  %conv1.i.i173.i575.i.1 = zext i8 %308 to i32
  %xor.i.i174.i576.i.1 = xor i32 %conv1.i.i173.i575.i.1, %conv.i.i172.i574.i.1
  %conv2.i.i175.i577.i.1 = trunc i32 %xor.i.i174.i576.i.1 to i8
  %scevgep154.2 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %310 = load i8, i8* %scevgep154.2, align 1
  %conv.i.i172.i574.i.2 = zext i8 %310 to i32
  %conv1.i.i173.i575.i.2 = zext i8 %conv2.i.i175.i577.i.1 to i32
  %xor.i.i174.i576.i.2 = xor i32 %conv1.i.i173.i575.i.2, %conv.i.i172.i574.i.2
  %conv2.i.i175.i577.i.2 = trunc i32 %xor.i.i174.i576.i.2 to i8
  %conv142.i580.i = zext i8 %conv2.i.i175.i577.i.2 to i32
  %cmp143.i581.i = icmp eq i32 %conv140.i567.i, %conv142.i580.i
  call void @assert(i1 zeroext %cmp143.i581.i) #3
  %arraydecay20.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %arraydecay21.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %call.i614.i = call zeroext i8 (...) @rand() #3
  %call1.i615.i = call zeroext i8 (...) @rand() #3
  %conv.i616.i = zext i8 %call.i614.i to i32
  %scevgep150 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %311 = load i8, i8* %scevgep150, align 1
  %scevgep150.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %312 = load i8, i8* %scevgep150.1, align 1
  %conv.i.i.i622.i.1 = zext i8 %312 to i32
  %conv1.i.i.i623.i.1 = zext i8 %311 to i32
  %xor.i.i.i624.i.1 = xor i32 %conv1.i.i.i623.i.1, %conv.i.i.i622.i.1
  %conv2.i.i.i625.i.1 = trunc i32 %xor.i.i.i624.i.1 to i8
  %scevgep150.2 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %313 = load i8, i8* %scevgep150.2, align 1
  %conv.i.i.i622.i.2 = zext i8 %313 to i32
  %conv1.i.i.i623.i.2 = zext i8 %conv2.i.i.i625.i.1 to i32
  %xor.i.i.i624.i.2 = xor i32 %conv1.i.i.i623.i.2, %conv.i.i.i622.i.2
  %conv2.i.i.i625.i.2 = trunc i32 %xor.i.i.i624.i.2 to i8
  %conv3.i628.i = zext i8 %conv2.i.i.i625.i.2 to i32
  %cmp.i629.i = icmp eq i32 %conv.i616.i, %conv3.i628.i
  call void @assume(i1 zeroext %cmp.i629.i) #3
  %conv5.i630.i = zext i8 %call1.i615.i to i32
  %scevgep146 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %314 = load i8, i8* %scevgep146, align 1
  %scevgep146.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %315 = load i8, i8* %scevgep146.1, align 1
  %conv.i.i155.i637.i.1 = zext i8 %315 to i32
  %conv1.i.i156.i638.i.1 = zext i8 %314 to i32
  %xor.i.i157.i639.i.1 = xor i32 %conv1.i.i156.i638.i.1, %conv.i.i155.i637.i.1
  %conv2.i.i158.i640.i.1 = trunc i32 %xor.i.i157.i639.i.1 to i8
  %scevgep146.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %316 = load i8, i8* %scevgep146.2, align 1
  %conv.i.i155.i637.i.2 = zext i8 %316 to i32
  %conv1.i.i156.i638.i.2 = zext i8 %conv2.i.i158.i640.i.1 to i32
  %xor.i.i157.i639.i.2 = xor i32 %conv1.i.i156.i638.i.2, %conv.i.i155.i637.i.2
  %conv2.i.i158.i640.i.2 = trunc i32 %xor.i.i157.i639.i.2 to i8
  %conv7.i643.i = zext i8 %conv2.i.i158.i640.i.2 to i32
  %cmp8.i644.i = icmp eq i32 %conv5.i630.i, %conv7.i643.i
  call void @assume(i1 zeroext %cmp8.i644.i) #3
  %scevgep130 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep130131 = bitcast i8* %scevgep130 to [3 x [3 x i8]]*
  %scevgep137 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep137138 = bitcast i8* %scevgep137 to [3 x [3 x i8]]*
  %call16.i652.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i, i8* %scevgep130, align 1
  %317 = load i8, i8* %scevgep130, align 1
  store i8 %317, i8* %scevgep137, align 1
  %scevgep135 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep130131, i64 0, i64 0, i64 1
  %scevgep142 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep137138, i64 0, i64 1, i64 0
  %call16.i652.i.1698 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.1698, i8* %scevgep135, align 1
  %318 = load i8, i8* %scevgep135, align 1
  store i8 %318, i8* %scevgep142, align 1
  %scevgep133 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep130131, i64 0, i64 1, i64 1
  %scevgep140 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep137138, i64 0, i64 1, i64 1
  %call16.i652.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.1, i8* %scevgep133, align 1
  %319 = load i8, i8* %scevgep133, align 1
  store i8 %319, i8* %scevgep140, align 1
  %scevgep107.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %320 = load i8, i8* %scevgep107.1, align 1
  %conv44.i679.i.1 = zext i8 %320 to i32
  %scevgep110.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %321 = load i8, i8* %scevgep110.1, align 1
  %conv49.i684.i.1 = zext i8 %321 to i32
  %xor.i685.i.1 = xor i32 %conv44.i679.i.1, %conv49.i684.i.1
  %conv50.i686.i.1 = trunc i32 %xor.i685.i.1 to i8
  %scevgep114.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1, i8* %scevgep114.1, align 1
  %322 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.1 = zext i8 %322 to i32
  %xor58.i694.i.1 = xor i32 %conv57.i693.i.1, 1
  %conv59.i695.i.1 = trunc i32 %xor58.i694.i.1 to i8
  %scevgep111.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %323 = load i8, i8* %scevgep111.1, align 1
  %call64.i700.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1, i8 zeroext %323) #3
  %scevgep118.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1, i8* %scevgep118.1, align 1
  %324 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %325 = load i8, i8* %scevgep115.1, align 1
  %call75.i711.i.1 = call zeroext i8 @mult(i8 zeroext %324, i8 zeroext %325) #3
  %scevgep122.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1, i8* %scevgep122.1, align 1
  %scevgep119.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %326 = load i8, i8* %scevgep119.1, align 1
  %conv84.i720.i.1 = zext i8 %326 to i32
  %scevgep123.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %327 = load i8, i8* %scevgep123.1, align 1
  %conv89.i725.i.1 = zext i8 %327 to i32
  %xor90.i726.i.1 = xor i32 %conv84.i720.i.1, %conv89.i725.i.1
  %conv91.i727.i.1 = trunc i32 %xor90.i726.i.1 to i8
  %scevgep126.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1, i8* %scevgep126.1, align 1
  %scevgep107.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %328 = load i8, i8* %scevgep107.2, align 1
  %conv44.i679.i.2 = zext i8 %328 to i32
  %scevgep110.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %329 = load i8, i8* %scevgep110.2, align 1
  %conv49.i684.i.2 = zext i8 %329 to i32
  %xor.i685.i.2 = xor i32 %conv44.i679.i.2, %conv49.i684.i.2
  %conv50.i686.i.2 = trunc i32 %xor.i685.i.2 to i8
  %scevgep114.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2, i8* %scevgep114.2, align 1
  %330 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.2 = zext i8 %330 to i32
  %xor58.i694.i.2 = xor i32 %conv57.i693.i.2, 1
  %conv59.i695.i.2 = trunc i32 %xor58.i694.i.2 to i8
  %scevgep111.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %331 = load i8, i8* %scevgep111.2, align 1
  %call64.i700.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2, i8 zeroext %331) #3
  %scevgep118.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2, i8* %scevgep118.2, align 1
  %332 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %333 = load i8, i8* %scevgep115.2, align 1
  %call75.i711.i.2 = call zeroext i8 @mult(i8 zeroext %332, i8 zeroext %333) #3
  %scevgep122.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2, i8* %scevgep122.2, align 1
  %scevgep119.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %334 = load i8, i8* %scevgep119.2, align 1
  %conv84.i720.i.2 = zext i8 %334 to i32
  %scevgep123.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %335 = load i8, i8* %scevgep123.2, align 1
  %conv89.i725.i.2 = zext i8 %335 to i32
  %xor90.i726.i.2 = xor i32 %conv84.i720.i.2, %conv89.i725.i.2
  %conv91.i727.i.2 = trunc i32 %xor90.i726.i.2 to i8
  %scevgep126.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2, i8* %scevgep126.2, align 1
  %scevgep109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %336 = bitcast i8* %scevgep109 to [3 x [3 x i8]]*
  %scevgep113 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %337 = bitcast i8* %scevgep113 to [3 x [3 x i8]]*
  %scevgep117 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %338 = bitcast i8* %scevgep117 to [3 x [3 x i8]]*
  %scevgep121 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %339 = bitcast i8* %scevgep121 to [3 x [3 x i8]]*
  %scevgep125 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %340 = bitcast i8* %scevgep125 to [3 x [3 x i8]]*
  %arrayidx56.i692.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %arrayidx70.i706.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %scevgep107.1430 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %341 = load i8, i8* %scevgep107.1430, align 1
  %conv44.i679.i.1431 = zext i8 %341 to i32
  %scevgep110.1432 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 0
  %342 = load i8, i8* %scevgep110.1432, align 1
  %conv49.i684.i.1433 = zext i8 %342 to i32
  %xor.i685.i.1434 = xor i32 %conv44.i679.i.1431, %conv49.i684.i.1433
  %conv50.i686.i.1435 = trunc i32 %xor.i685.i.1434 to i8
  %scevgep114.1436 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.1435, i8* %scevgep114.1436, align 1
  %343 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.1437 = zext i8 %343 to i32
  %xor58.i694.i.1438 = xor i32 %conv57.i693.i.1437, 1
  %conv59.i695.i.1439 = trunc i32 %xor58.i694.i.1438 to i8
  %scevgep111.1440 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 0
  %344 = load i8, i8* %scevgep111.1440, align 1
  %call64.i700.i.1441 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1439, i8 zeroext %344) #3
  %scevgep118.1442 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %338, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.1441, i8* %scevgep118.1442, align 1
  %345 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.1443 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 0, i64 0
  %346 = load i8, i8* %scevgep115.1443, align 1
  %call75.i711.i.1444 = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346) #3
  %scevgep122.1445 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %339, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.1444, i8* %scevgep122.1445, align 1
  %scevgep119.1446 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %338, i64 0, i64 0, i64 0
  %347 = load i8, i8* %scevgep119.1446, align 1
  %conv84.i720.i.1447 = zext i8 %347 to i32
  %scevgep123.1448 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %339, i64 0, i64 0, i64 0
  %348 = load i8, i8* %scevgep123.1448, align 1
  %conv89.i725.i.1449 = zext i8 %348 to i32
  %xor90.i726.i.1450 = xor i32 %conv84.i720.i.1447, %conv89.i725.i.1449
  %conv91.i727.i.1451 = trunc i32 %xor90.i726.i.1450 to i8
  %scevgep126.1452 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %340, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.1451, i8* %scevgep126.1452, align 1
  %scevgep107.2.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %349 = load i8, i8* %scevgep107.2.1, align 1
  %conv44.i679.i.2.1 = zext i8 %349 to i32
  %scevgep110.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 2
  %350 = load i8, i8* %scevgep110.2.1, align 1
  %conv49.i684.i.2.1 = zext i8 %350 to i32
  %xor.i685.i.2.1 = xor i32 %conv44.i679.i.2.1, %conv49.i684.i.2.1
  %conv50.i686.i.2.1 = trunc i32 %xor.i685.i.2.1 to i8
  %scevgep114.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2.1, i8* %scevgep114.2.1, align 1
  %351 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.2.1 = zext i8 %351 to i32
  %xor58.i694.i.2.1 = xor i32 %conv57.i693.i.2.1, 1
  %conv59.i695.i.2.1 = trunc i32 %xor58.i694.i.2.1 to i8
  %scevgep111.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 0, i64 2
  %352 = load i8, i8* %scevgep111.2.1, align 1
  %call64.i700.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2.1, i8 zeroext %352) #3
  %scevgep118.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %338, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2.1, i8* %scevgep118.2.1, align 1
  %353 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 0, i64 2
  %354 = load i8, i8* %scevgep115.2.1, align 1
  %call75.i711.i.2.1 = call zeroext i8 @mult(i8 zeroext %353, i8 zeroext %354) #3
  %scevgep122.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %339, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2.1, i8* %scevgep122.2.1, align 1
  %scevgep119.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %338, i64 0, i64 0, i64 2
  %355 = load i8, i8* %scevgep119.2.1, align 1
  %conv84.i720.i.2.1 = zext i8 %355 to i32
  %scevgep123.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %339, i64 0, i64 0, i64 2
  %356 = load i8, i8* %scevgep123.2.1, align 1
  %conv89.i725.i.2.1 = zext i8 %356 to i32
  %xor90.i726.i.2.1 = xor i32 %conv84.i720.i.2.1, %conv89.i725.i.2.1
  %conv91.i727.i.2.1 = trunc i32 %xor90.i726.i.2.1 to i8
  %scevgep126.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %340, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2.1, i8* %scevgep126.2.1, align 1
  %scevgep109.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %336, i64 0, i64 1, i64 0
  %357 = bitcast i8* %scevgep109.1 to [3 x [3 x i8]]*
  %scevgep113.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %337, i64 0, i64 1, i64 0
  %358 = bitcast i8* %scevgep113.1 to [3 x [3 x i8]]*
  %scevgep117.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %338, i64 0, i64 1, i64 0
  %359 = bitcast i8* %scevgep117.1 to [3 x [3 x i8]]*
  %scevgep121.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %339, i64 0, i64 1, i64 0
  %360 = bitcast i8* %scevgep121.1 to [3 x [3 x i8]]*
  %scevgep125.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %340, i64 0, i64 1, i64 0
  %361 = bitcast i8* %scevgep125.1 to [3 x [3 x i8]]*
  %arrayidx56.i692.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %arrayidx70.i706.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %scevgep107.2457 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %362 = load i8, i8* %scevgep107.2457, align 1
  %conv44.i679.i.2458 = zext i8 %362 to i32
  %scevgep110.2459 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 0
  %363 = load i8, i8* %scevgep110.2459, align 1
  %conv49.i684.i.2460 = zext i8 %363 to i32
  %xor.i685.i.2461 = xor i32 %conv44.i679.i.2458, %conv49.i684.i.2460
  %conv50.i686.i.2462 = trunc i32 %xor.i685.i.2461 to i8
  %scevgep114.2463 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %358, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.2462, i8* %scevgep114.2463, align 1
  %364 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.2464 = zext i8 %364 to i32
  %xor58.i694.i.2465 = xor i32 %conv57.i693.i.2464, 1
  %conv59.i695.i.2466 = trunc i32 %xor58.i694.i.2465 to i8
  %scevgep111.2467 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 0
  %365 = load i8, i8* %scevgep111.2467, align 1
  %call64.i700.i.2468 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2466, i8 zeroext %365) #3
  %scevgep118.2469 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %359, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.2468, i8* %scevgep118.2469, align 1
  %366 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.2470 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %358, i64 0, i64 0, i64 0
  %367 = load i8, i8* %scevgep115.2470, align 1
  %call75.i711.i.2471 = call zeroext i8 @mult(i8 zeroext %366, i8 zeroext %367) #3
  %scevgep122.2472 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %360, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.2471, i8* %scevgep122.2472, align 1
  %scevgep119.2473 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %359, i64 0, i64 0, i64 0
  %368 = load i8, i8* %scevgep119.2473, align 1
  %conv84.i720.i.2474 = zext i8 %368 to i32
  %scevgep123.2475 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %360, i64 0, i64 0, i64 0
  %369 = load i8, i8* %scevgep123.2475, align 1
  %conv89.i725.i.2476 = zext i8 %369 to i32
  %xor90.i726.i.2477 = xor i32 %conv84.i720.i.2474, %conv89.i725.i.2476
  %conv91.i727.i.2478 = trunc i32 %xor90.i726.i.2477 to i8
  %scevgep126.2479 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %361, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.2478, i8* %scevgep126.2479, align 1
  %scevgep107.1.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %370 = load i8, i8* %scevgep107.1.2, align 1
  %conv44.i679.i.1.2 = zext i8 %370 to i32
  %scevgep110.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 1
  %371 = load i8, i8* %scevgep110.1.2, align 1
  %conv49.i684.i.1.2 = zext i8 %371 to i32
  %xor.i685.i.1.2 = xor i32 %conv44.i679.i.1.2, %conv49.i684.i.1.2
  %conv50.i686.i.1.2 = trunc i32 %xor.i685.i.1.2 to i8
  %scevgep114.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %358, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1.2, i8* %scevgep114.1.2, align 1
  %372 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.1.2 = zext i8 %372 to i32
  %xor58.i694.i.1.2 = xor i32 %conv57.i693.i.1.2, 1
  %conv59.i695.i.1.2 = trunc i32 %xor58.i694.i.1.2 to i8
  %scevgep111.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %357, i64 0, i64 0, i64 1
  %373 = load i8, i8* %scevgep111.1.2, align 1
  %call64.i700.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1.2, i8 zeroext %373) #3
  %scevgep118.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %359, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1.2, i8* %scevgep118.1.2, align 1
  %374 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %358, i64 0, i64 0, i64 1
  %375 = load i8, i8* %scevgep115.1.2, align 1
  %call75.i711.i.1.2 = call zeroext i8 @mult(i8 zeroext %374, i8 zeroext %375) #3
  %scevgep122.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %360, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1.2, i8* %scevgep122.1.2, align 1
  %scevgep119.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %359, i64 0, i64 0, i64 1
  %376 = load i8, i8* %scevgep119.1.2, align 1
  %conv84.i720.i.1.2 = zext i8 %376 to i32
  %scevgep123.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %360, i64 0, i64 0, i64 1
  %377 = load i8, i8* %scevgep123.1.2, align 1
  %conv89.i725.i.1.2 = zext i8 %377 to i32
  %xor90.i726.i.1.2 = xor i32 %conv84.i720.i.1.2, %conv89.i725.i.1.2
  %conv91.i727.i.1.2 = trunc i32 %xor90.i726.i.1.2 to i8
  %scevgep126.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %361, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1.2, i8* %scevgep126.1.2, align 1
  %378 = load i8, i8* %arraydecay20.i, align 1
  %379 = load i8, i8* %arraydecay21.i, align 1
  %call111.i744.i = call zeroext i8 @mult(i8 zeroext %378, i8 zeroext %379) #3
  store i8 %call111.i744.i, i8* %arraydecay, align 1
  %scevgep98.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %380 = load i8, i8* %scevgep98.1, align 1
  %conv126.i756.i.1 = zext i8 %380 to i32
  %381 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.1 = zext i8 %381 to i32
  %xor130.i760.i.1 = xor i32 %conv129.i759.i.1, %conv126.i756.i.1
  %conv131.i761.i.1 = trunc i32 %xor130.i760.i.1 to i8
  store i8 %conv131.i761.i.1, i8* %arraydecay, align 1
  %scevgep98.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %382 = load i8, i8* %scevgep98.2, align 1
  %conv126.i756.i.2 = zext i8 %382 to i32
  %383 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.2 = zext i8 %383 to i32
  %xor130.i760.i.2 = xor i32 %conv129.i759.i.2, %conv126.i756.i.2
  %conv131.i761.i.2 = trunc i32 %xor130.i760.i.2 to i8
  store i8 %conv131.i761.i.2, i8* %arraydecay, align 1
  %scevgep97 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %384 = bitcast i8* %scevgep97 to [3 x [3 x i8]]*
  %arrayidx108.i741.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %385 = load i8, i8* %arrayidx108.i741.i.1, align 1
  %arrayidx110.i743.i.1 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 1
  %386 = load i8, i8* %arrayidx110.i743.i.1, align 1
  %call111.i744.i.1 = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %386) #3
  %arrayidx113.i746.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  store i8 %call111.i744.i.1, i8* %arrayidx113.i746.i.1, align 1
  %arrayidx128.i758.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %scevgep98.1412 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %384, i64 0, i64 0, i64 0
  %387 = load i8, i8* %scevgep98.1412, align 1
  %conv126.i756.i.1413 = zext i8 %387 to i32
  %388 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.1414 = zext i8 %388 to i32
  %xor130.i760.i.1415 = xor i32 %conv129.i759.i.1414, %conv126.i756.i.1413
  %conv131.i761.i.1416 = trunc i32 %xor130.i760.i.1415 to i8
  store i8 %conv131.i761.i.1416, i8* %arrayidx128.i758.i.1, align 1
  %scevgep98.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %384, i64 0, i64 0, i64 2
  %389 = load i8, i8* %scevgep98.2.1, align 1
  %conv126.i756.i.2.1 = zext i8 %389 to i32
  %390 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.2.1 = zext i8 %390 to i32
  %xor130.i760.i.2.1 = xor i32 %conv129.i759.i.2.1, %conv126.i756.i.2.1
  %conv131.i761.i.2.1 = trunc i32 %xor130.i760.i.2.1 to i8
  store i8 %conv131.i761.i.2.1, i8* %arrayidx128.i758.i.1, align 1
  %scevgep97.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %384, i64 0, i64 1, i64 0
  %391 = bitcast i8* %scevgep97.1 to [3 x [3 x i8]]*
  %arrayidx108.i741.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %392 = load i8, i8* %arrayidx108.i741.i.2, align 1
  %arrayidx110.i743.i.2 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 2
  %393 = load i8, i8* %arrayidx110.i743.i.2, align 1
  %call111.i744.i.2 = call zeroext i8 @mult(i8 zeroext %392, i8 zeroext %393) #3
  %arrayidx113.i746.i.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  store i8 %call111.i744.i.2, i8* %arrayidx113.i746.i.2, align 1
  %arrayidx128.i758.i.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  %scevgep98.2421 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %391, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep98.2421, align 1
  %conv126.i756.i.2422 = zext i8 %394 to i32
  %395 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.2423 = zext i8 %395 to i32
  %xor130.i760.i.2424 = xor i32 %conv129.i759.i.2423, %conv126.i756.i.2422
  %conv131.i761.i.2425 = trunc i32 %xor130.i760.i.2424 to i8
  store i8 %conv131.i761.i.2425, i8* %arrayidx128.i758.i.2, align 1
  %scevgep98.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %391, i64 0, i64 0, i64 1
  %396 = load i8, i8* %scevgep98.1.2, align 1
  %conv126.i756.i.1.2 = zext i8 %396 to i32
  %397 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.1.2 = zext i8 %397 to i32
  %xor130.i760.i.1.2 = xor i32 %conv129.i759.i.1.2, %conv126.i756.i.1.2
  %conv131.i761.i.1.2 = trunc i32 %xor130.i760.i.1.2 to i8
  store i8 %conv131.i761.i.1.2, i8* %arrayidx128.i758.i.2, align 1
  %call139.i767.i = call zeroext i8 @mult(i8 zeroext %call.i614.i, i8 zeroext %call1.i615.i) #3
  %conv140.i768.i = zext i8 %call139.i767.i to i32
  %scevgep88 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 0
  %398 = load i8, i8* %scevgep88, align 1
  %scevgep88.1 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 1
  %399 = load i8, i8* %scevgep88.1, align 1
  %conv.i.i172.i775.i.1 = zext i8 %399 to i32
  %conv1.i.i173.i776.i.1 = zext i8 %398 to i32
  %xor.i.i174.i777.i.1 = xor i32 %conv1.i.i173.i776.i.1, %conv.i.i172.i775.i.1
  %conv2.i.i175.i778.i.1 = trunc i32 %xor.i.i174.i777.i.1 to i8
  %scevgep88.2 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 2
  %400 = load i8, i8* %scevgep88.2, align 1
  %conv.i.i172.i775.i.2 = zext i8 %400 to i32
  %conv1.i.i173.i776.i.2 = zext i8 %conv2.i.i175.i778.i.1 to i32
  %xor.i.i174.i777.i.2 = xor i32 %conv1.i.i173.i776.i.2, %conv.i.i172.i775.i.2
  %conv2.i.i175.i778.i.2 = trunc i32 %xor.i.i174.i777.i.2 to i8
  %conv142.i781.i = zext i8 %conv2.i.i175.i778.i.2 to i32
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
  %scevgep84 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 0
  %401 = load i8, i8* %scevgep84, align 1
  %scevgep84.1 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 1
  %402 = load i8, i8* %scevgep84.1, align 1
  %conv.i.i799.i.1 = zext i8 %402 to i32
  %conv1.i.i800.i.1 = zext i8 %401 to i32
  %xor.i.i801.i.1 = xor i32 %conv1.i.i800.i.1, %conv.i.i799.i.1
  %conv2.i.i802.i.1 = trunc i32 %xor.i.i801.i.1 to i8
  %scevgep84.2 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 2
  %403 = load i8, i8* %scevgep84.2, align 1
  %conv.i.i799.i.2 = zext i8 %403 to i32
  %conv1.i.i800.i.2 = zext i8 %conv2.i.i802.i.1 to i32
  %xor.i.i801.i.2 = xor i32 %conv1.i.i800.i.2, %conv.i.i799.i.2
  %conv2.i.i802.i.2 = trunc i32 %xor.i.i801.i.2 to i8
  %conv25.i = zext i8 %conv2.i.i802.i.2 to i32
  %cmp26.i = icmp eq i32 %conv23.i, %conv25.i
  call void @assert(i1 zeroext %cmp26.i) #3
  %scevgep79 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 0
  %404 = load i8, i8* %scevgep79, align 1
  %call.i25 = call zeroext i8 @af(i8 zeroext %404) #3
  store i8 %call.i25, i8* %y, align 1
  %scevgep79.1 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 1
  %405 = load i8, i8* %scevgep79.1, align 1
  %call.i25.1 = call zeroext i8 @af(i8 zeroext %405) #3
  %scevgep80.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i25.1, i8* %scevgep80.1, align 1
  %scevgep79.2 = getelementptr [3 x i8], [3 x i8]* %x254, i64 0, i64 2
  %406 = load i8, i8* %scevgep79.2, align 1
  %call.i25.2 = call zeroext i8 @af(i8 zeroext %406) #3
  %scevgep80.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i25.2, i8* %scevgep80.2, align 1
  %call.i.i.i42 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i.i43 = call zeroext i8 @mult(i8 zeroext %call.i.i.i42, i8 zeroext %call) #3
  %call.i.i.i.i44 = call zeroext i8 @mult(i8 zeroext %call1.i.i43, i8 zeroext %call1.i.i43) #3
  %call.i3.i.i.i45 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i44, i8 zeroext %call.i.i.i.i44) #3
  %call3.i.i46 = call zeroext i8 @mult(i8 zeroext %call1.i.i43, i8 zeroext %call.i3.i.i.i45) #3
  %call.i.i.i.i.i47 = call zeroext i8 @mult(i8 zeroext %call3.i.i46, i8 zeroext %call3.i.i46) #3
  %call.i3.i.i.i.i48 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i47, i8 zeroext %call.i.i.i.i.i47) #3
  %call.i.i5.i.i.i49 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i48, i8 zeroext %call.i3.i.i.i.i48) #3
  %call.i3.i6.i.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i49, i8 zeroext %call.i.i5.i.i.i49) #3
  %call5.i.i51 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i50, i8 zeroext %call.i3.i.i.i45) #3
  %call6.i.i52 = call zeroext i8 @mult(i8 zeroext %call5.i.i51, i8 zeroext %call.i.i.i42) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i52) #3
  %conv6 = zext i8 %call1.i to i32
  %407 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %408 = load i8, i8* %scevgep.1, align 1
  %conv.i.i63.1 = zext i8 %408 to i32
  %conv1.i.i64.1 = zext i8 %407 to i32
  %xor.i.i65.1 = xor i32 %conv1.i.i64.1, %conv.i.i63.1
  %conv2.i.i66.1 = trunc i32 %xor.i.i65.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %409 = load i8, i8* %scevgep.2, align 1
  %conv.i.i63.2 = zext i8 %409 to i32
  %conv1.i.i64.2 = zext i8 %conv2.i.i66.1 to i32
  %xor.i.i65.2 = xor i32 %conv1.i.i64.2, %conv.i.i63.2
  %conv2.i.i66.2 = trunc i32 %xor.i.i65.2 to i8
  %conv8 = zext i8 %conv2.i.i66.2 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  call void @assert(i1 zeroext %cmp9)
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
