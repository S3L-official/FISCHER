; ModuleID = '../examples/cassiers-tifs2020-sbox.inline-2.ll'
source_filename = "../examples/cassiers-tifs2020-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  %scevgep12.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep12.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %3 = load i8, i8* %x, align 1
  %conv9 = zext i8 %3 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %4 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %5 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %5 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %6 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %conv16 = zext i8 %call to i32
  %7 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %8 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %8 to i32
  %conv1.i.i32.1 = zext i8 %7 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %9 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %9 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %conv18 = zext i8 %conv2.i.i34.2 to i32
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
  %r.i = alloca [3 x [3 x i8]], align 1
  %s.i = alloca [3 x [3 x i8]], align 1
  %p0.i = alloca [3 x [3 x i8]], align 1
  %p1.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x i8], align 1
  %w = alloca [3 x i8], align 1
  %u = alloca [3 x i8], align 1
  %v = alloca [3 x i8], align 1
  %m = alloca [3 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep378.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep378.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep378.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep378.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %3) #3
  %scevgep374 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep374, align 1
  %scevgep373.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep373.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep374.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep374.1, align 1
  %scevgep373.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep373.2, align 1
  %call.i.2 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep374.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep374.2, align 1
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep369 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %6 = load i8, i8* %scevgep369, align 1
  %scevgep369.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %7 = load i8, i8* %scevgep369.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep369.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %8 = load i8, i8* %scevgep369.2, align 1
  %conv.i.i.i.2 = zext i8 %8 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %9 = load i8, i8* %arraydecay4, align 1
  %conv9.i = zext i8 %9 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay4, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep365 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %10 = load i8, i8* %scevgep365, align 1
  %conv13.i = zext i8 %10 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep365, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %11 = load i8, i8* %arraydecay4, align 1
  %conv9.i.1 = zext i8 %11 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay4, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep365.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %12 = load i8, i8* %scevgep365.1, align 1
  %conv13.i.1 = zext i8 %12 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep365.1, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep361 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %13 = load i8, i8* %scevgep361, align 1
  %scevgep361.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %14 = load i8, i8* %scevgep361.1, align 1
  %conv.i.i31.i.1 = zext i8 %14 to i32
  %conv1.i.i32.i.1 = zext i8 %13 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep361.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %15 = load i8, i8* %scevgep361.2, align 1
  %conv.i.i31.i.2 = zext i8 %15 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.2 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep357 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %16 = load i8, i8* %scevgep357, align 1
  %scevgep357.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %17 = load i8, i8* %scevgep357.1, align 1
  %conv.i.i.i48.1 = zext i8 %17 to i32
  %conv1.i.i.i49.1 = zext i8 %16 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %scevgep357.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %18 = load i8, i8* %scevgep357.2, align 1
  %conv.i.i.i48.2 = zext i8 %18 to i32
  %conv1.i.i.i49.2 = zext i8 %conv2.i.i.i51.1 to i32
  %xor.i.i.i50.2 = xor i32 %conv1.i.i.i49.2, %conv.i.i.i48.2
  %conv2.i.i.i51.2 = trunc i32 %xor.i.i.i50.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.2 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %19 = load i8, i8* %x, align 1
  %scevgep353.1 = getelementptr i8, i8* %x, i64 1
  %20 = load i8, i8* %scevgep353.1, align 1
  %conv.i.i155.i.1 = zext i8 %20 to i32
  %conv1.i.i156.i.1 = zext i8 %19 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep353.2 = getelementptr i8, i8* %x, i64 2
  %21 = load i8, i8* %scevgep353.2, align 1
  %conv.i.i155.i.2 = zext i8 %21 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep337 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep337338 = bitcast i8* %scevgep337 to [3 x [3 x i8]]*
  %scevgep344 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep344345 = bitcast i8* %scevgep344 to [3 x [3 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep337, align 1
  %22 = load i8, i8* %scevgep337, align 1
  store i8 %22, i8* %scevgep344, align 1
  %scevgep342 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep337338, i64 0, i64 0, i64 1
  %scevgep349 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep344345, i64 0, i64 1, i64 0
  %call16.i.1677 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1677, i8* %scevgep342, align 1
  %23 = load i8, i8* %scevgep342, align 1
  store i8 %23, i8* %scevgep349, align 1
  %scevgep340 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep337338, i64 0, i64 1, i64 1
  %scevgep347 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep344345, i64 0, i64 1, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep340, align 1
  %24 = load i8, i8* %scevgep340, align 1
  store i8 %24, i8* %scevgep347, align 1
  %scevgep314.1 = getelementptr i8, i8* %x, i64 1
  %25 = load i8, i8* %scevgep314.1, align 1
  %conv44.i.1 = zext i8 %25 to i32
  %scevgep317.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %26 = load i8, i8* %scevgep317.1, align 1
  %conv49.i.1 = zext i8 %26 to i32
  %xor.i62.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i62.1 to i8
  %scevgep321.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep321.1, align 1
  %27 = load i8, i8* %arraydecay5, align 1
  %conv57.i.1 = zext i8 %27 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep318.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep318.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %28) #3
  %scevgep325.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep325.1, align 1
  %29 = load i8, i8* %arraydecay5, align 1
  %scevgep322.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %30 = load i8, i8* %scevgep322.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #3
  %scevgep329.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep329.1, align 1
  %scevgep326.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep326.1, align 1
  %conv84.i.1 = zext i8 %31 to i32
  %scevgep330.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %32 = load i8, i8* %scevgep330.1, align 1
  %conv89.i.1 = zext i8 %32 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep333.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep333.1, align 1
  %scevgep314.2 = getelementptr i8, i8* %x, i64 2
  %33 = load i8, i8* %scevgep314.2, align 1
  %conv44.i.2 = zext i8 %33 to i32
  %scevgep317.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %34 = load i8, i8* %scevgep317.2, align 1
  %conv49.i.2 = zext i8 %34 to i32
  %xor.i62.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i62.2 to i8
  %scevgep321.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep321.2, align 1
  %35 = load i8, i8* %arraydecay5, align 1
  %conv57.i.2 = zext i8 %35 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep318.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %36 = load i8, i8* %scevgep318.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %36) #3
  %scevgep325.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep325.2, align 1
  %37 = load i8, i8* %arraydecay5, align 1
  %scevgep322.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %38 = load i8, i8* %scevgep322.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #3
  %scevgep329.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep329.2, align 1
  %scevgep326.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep326.2, align 1
  %conv84.i.2 = zext i8 %39 to i32
  %scevgep330.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %40 = load i8, i8* %scevgep330.2, align 1
  %conv89.i.2 = zext i8 %40 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep333.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep333.2, align 1
  %scevgep316 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %41 = bitcast i8* %scevgep316 to [3 x [3 x i8]]*
  %scevgep320 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep320 to [3 x [3 x i8]]*
  %scevgep324 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep324 to [3 x [3 x i8]]*
  %scevgep328 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep328 to [3 x [3 x i8]]*
  %scevgep332 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep332 to [3 x [3 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %46 = load i8, i8* %x, align 1
  %conv44.i.1616 = zext i8 %46 to i32
  %scevgep317.1617 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep317.1617, align 1
  %conv49.i.1618 = zext i8 %47 to i32
  %xor.i62.1619 = xor i32 %conv44.i.1616, %conv49.i.1618
  %conv50.i.1620 = trunc i32 %xor.i62.1619 to i8
  %scevgep321.1621 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 0, i64 0
  store i8 %conv50.i.1620, i8* %scevgep321.1621, align 1
  %48 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1622 = zext i8 %48 to i32
  %xor58.i.1623 = xor i32 %conv57.i.1622, 1
  %conv59.i.1624 = trunc i32 %xor58.i.1623 to i8
  %scevgep318.1625 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 0, i64 0
  %49 = load i8, i8* %scevgep318.1625, align 1
  %call64.i.1626 = call zeroext i8 @mult(i8 zeroext %conv59.i.1624, i8 zeroext %49) #3
  %scevgep325.1627 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 0, i64 0
  store i8 %call64.i.1626, i8* %scevgep325.1627, align 1
  %50 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep322.1628 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 0, i64 0
  %51 = load i8, i8* %scevgep322.1628, align 1
  %call75.i.1629 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #3
  %scevgep329.1630 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 0
  store i8 %call75.i.1629, i8* %scevgep329.1630, align 1
  %scevgep326.1631 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep326.1631, align 1
  %conv84.i.1632 = zext i8 %52 to i32
  %scevgep330.1633 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 0
  %53 = load i8, i8* %scevgep330.1633, align 1
  %conv89.i.1634 = zext i8 %53 to i32
  %xor90.i.1635 = xor i32 %conv84.i.1632, %conv89.i.1634
  %conv91.i.1636 = trunc i32 %xor90.i.1635 to i8
  %scevgep333.1637 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 0
  store i8 %conv91.i.1636, i8* %scevgep333.1637, align 1
  %scevgep314.2.1 = getelementptr i8, i8* %x, i64 2
  %54 = load i8, i8* %scevgep314.2.1, align 1
  %conv44.i.2.1 = zext i8 %54 to i32
  %scevgep317.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 0, i64 2
  %55 = load i8, i8* %scevgep317.2.1, align 1
  %conv49.i.2.1 = zext i8 %55 to i32
  %xor.i62.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i62.2.1 to i8
  %scevgep321.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep321.2.1, align 1
  %56 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %56 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep318.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 0, i64 2
  %57 = load i8, i8* %scevgep318.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %57) #3
  %scevgep325.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep325.2.1, align 1
  %58 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep322.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep322.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #3
  %scevgep329.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep329.2.1, align 1
  %scevgep326.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 0, i64 2
  %60 = load i8, i8* %scevgep326.2.1, align 1
  %conv84.i.2.1 = zext i8 %60 to i32
  %scevgep330.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep330.2.1, align 1
  %conv89.i.2.1 = zext i8 %61 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep333.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep333.2.1, align 1
  %scevgep316.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep316.1 to [3 x [3 x i8]]*
  %scevgep320.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 1, i64 0
  %63 = bitcast i8* %scevgep320.1 to [3 x [3 x i8]]*
  %scevgep324.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep324.1 to [3 x [3 x i8]]*
  %scevgep328.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep328.1 to [3 x [3 x i8]]*
  %scevgep332.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep332.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %67 = load i8, i8* %x, align 1
  %conv44.i.2642 = zext i8 %67 to i32
  %scevgep317.2643 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep317.2643, align 1
  %conv49.i.2644 = zext i8 %68 to i32
  %xor.i62.2645 = xor i32 %conv44.i.2642, %conv49.i.2644
  %conv50.i.2646 = trunc i32 %xor.i62.2645 to i8
  %scevgep321.2647 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %63, i64 0, i64 0, i64 0
  store i8 %conv50.i.2646, i8* %scevgep321.2647, align 1
  %69 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2648 = zext i8 %69 to i32
  %xor58.i.2649 = xor i32 %conv57.i.2648, 1
  %conv59.i.2650 = trunc i32 %xor58.i.2649 to i8
  %scevgep318.2651 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep318.2651, align 1
  %call64.i.2652 = call zeroext i8 @mult(i8 zeroext %conv59.i.2650, i8 zeroext %70) #3
  %scevgep325.2653 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %64, i64 0, i64 0, i64 0
  store i8 %call64.i.2652, i8* %scevgep325.2653, align 1
  %71 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep322.2654 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %63, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep322.2654, align 1
  %call75.i.2655 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #3
  %scevgep329.2656 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 0
  store i8 %call75.i.2655, i8* %scevgep329.2656, align 1
  %scevgep326.2657 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %64, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep326.2657, align 1
  %conv84.i.2658 = zext i8 %73 to i32
  %scevgep330.2659 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep330.2659, align 1
  %conv89.i.2660 = zext i8 %74 to i32
  %xor90.i.2661 = xor i32 %conv84.i.2658, %conv89.i.2660
  %conv91.i.2662 = trunc i32 %xor90.i.2661 to i8
  %scevgep333.2663 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 0
  store i8 %conv91.i.2662, i8* %scevgep333.2663, align 1
  %scevgep314.1.2 = getelementptr i8, i8* %x, i64 1
  %75 = load i8, i8* %scevgep314.1.2, align 1
  %conv44.i.1.2 = zext i8 %75 to i32
  %scevgep317.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 1
  %76 = load i8, i8* %scevgep317.1.2, align 1
  %conv49.i.1.2 = zext i8 %76 to i32
  %xor.i62.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i62.1.2 to i8
  %scevgep321.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %63, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep321.1.2, align 1
  %77 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %77 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep318.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 1
  %78 = load i8, i8* %scevgep318.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %78) #3
  %scevgep325.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %64, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep325.1.2, align 1
  %79 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep322.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %63, i64 0, i64 0, i64 1
  %80 = load i8, i8* %scevgep322.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %scevgep329.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep329.1.2, align 1
  %scevgep326.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %64, i64 0, i64 0, i64 1
  %81 = load i8, i8* %scevgep326.1.2, align 1
  %conv84.i.1.2 = zext i8 %81 to i32
  %scevgep330.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 1
  %82 = load i8, i8* %scevgep330.1.2, align 1
  %conv89.i.1.2 = zext i8 %82 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep333.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep333.1.2, align 1
  %83 = load i8, i8* %arraydecay5, align 1
  %84 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  store i8 %call111.i, i8* %arraydecay6, align 1
  %scevgep304.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep304.1, align 1
  %conv126.i.1 = zext i8 %85 to i32
  %86 = load i8, i8* %arraydecay6, align 1
  %conv129.i.1 = zext i8 %86 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay6, align 1
  %scevgep304.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %87 = load i8, i8* %scevgep304.2, align 1
  %conv126.i.2 = zext i8 %87 to i32
  %88 = load i8, i8* %arraydecay6, align 1
  %conv129.i.2 = zext i8 %88 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay6, align 1
  %scevgep303 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep303 to [3 x [3 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %90 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %91 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep304.1598 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %89, i64 0, i64 0, i64 0
  %92 = load i8, i8* %scevgep304.1598, align 1
  %conv126.i.1599 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1600 = zext i8 %93 to i32
  %xor130.i.1601 = xor i32 %conv129.i.1600, %conv126.i.1599
  %conv131.i.1602 = trunc i32 %xor130.i.1601 to i8
  store i8 %conv131.i.1602, i8* %arrayidx128.i.1, align 1
  %scevgep304.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %89, i64 0, i64 0, i64 2
  %94 = load i8, i8* %scevgep304.2.1, align 1
  %conv126.i.2.1 = zext i8 %94 to i32
  %95 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %95 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep303.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %89, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep303.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %97 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %98 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %scevgep304.2607 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %99 = load i8, i8* %scevgep304.2607, align 1
  %conv126.i.2608 = zext i8 %99 to i32
  %100 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2609 = zext i8 %100 to i32
  %xor130.i.2610 = xor i32 %conv129.i.2609, %conv126.i.2608
  %conv131.i.2611 = trunc i32 %xor130.i.2610 to i8
  store i8 %conv131.i.2611, i8* %arrayidx128.i.2, align 1
  %scevgep304.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %101 = load i8, i8* %scevgep304.1.2, align 1
  %conv126.i.1.2 = zext i8 %101 to i32
  %102 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %102 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep294 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %103 = load i8, i8* %scevgep294, align 1
  %scevgep294.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %104 = load i8, i8* %scevgep294.1, align 1
  %conv.i.i172.i.1 = zext i8 %104 to i32
  %conv1.i.i173.i.1 = zext i8 %103 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep294.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %105 = load i8, i8* %scevgep294.2, align 1
  %conv.i.i172.i.2 = zext i8 %105 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.2 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep289 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %106 = load i8, i8* %scevgep289, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %106) #3
  %scevgep290 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep290, align 1
  %scevgep289.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %107 = load i8, i8* %scevgep289.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %107) #3
  %scevgep290.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep290.1, align 1
  %scevgep289.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %108 = load i8, i8* %scevgep289.2, align 1
  %call.i71.2 = call zeroext i8 @exp4(i8 zeroext %108) #3
  %scevgep290.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  store i8 %call.i71.2, i8* %scevgep290.2, align 1
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep285 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %109 = load i8, i8* %scevgep285, align 1
  %scevgep285.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %110 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i.i99.1 = zext i8 %110 to i32
  %conv1.i.i.i100.1 = zext i8 %109 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %scevgep285.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %111 = load i8, i8* %scevgep285.2, align 1
  %conv.i.i.i99.2 = zext i8 %111 to i32
  %conv1.i.i.i100.2 = zext i8 %conv2.i.i.i102.1 to i32
  %xor.i.i.i101.2 = xor i32 %conv1.i.i.i100.2, %conv.i.i.i99.2
  %conv2.i.i.i102.2 = trunc i32 %xor.i.i.i101.2 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.2 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %112 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %112 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep281 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %113 = load i8, i8* %scevgep281, align 1
  %conv13.i119 = zext i8 %113 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep281, align 1
  %call7.i111.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.1 = zext i8 %call7.i111.1 to i32
  %114 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.1 = zext i8 %114 to i32
  %xor.i114.1 = xor i32 %conv9.i113.1, %conv8.i112.1
  %conv10.i115.1 = trunc i32 %xor.i114.1 to i8
  store i8 %conv10.i115.1, i8* %arraydecay9, align 1
  %conv11.i116.1 = zext i8 %call7.i111.1 to i32
  %scevgep281.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %115 = load i8, i8* %scevgep281.1, align 1
  %conv13.i119.1 = zext i8 %115 to i32
  %xor14.i120.1 = xor i32 %conv13.i119.1, %conv11.i116.1
  %conv15.i121.1 = trunc i32 %xor14.i120.1 to i8
  store i8 %conv15.i121.1, i8* %scevgep281.1, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep277 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %116 = load i8, i8* %scevgep277, align 1
  %scevgep277.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %117 = load i8, i8* %scevgep277.1, align 1
  %conv.i.i31.i131.1 = zext i8 %117 to i32
  %conv1.i.i32.i132.1 = zext i8 %116 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %scevgep277.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %118 = load i8, i8* %scevgep277.2, align 1
  %conv.i.i31.i131.2 = zext i8 %118 to i32
  %conv1.i.i32.i132.2 = zext i8 %conv2.i.i34.i134.1 to i32
  %xor.i.i33.i133.2 = xor i32 %conv1.i.i32.i132.2, %conv.i.i31.i131.2
  %conv2.i.i34.i134.2 = trunc i32 %xor.i.i33.i133.2 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.2 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %call.i171 = call zeroext i8 (...) @rand() #3
  %call1.i172 = call zeroext i8 (...) @rand() #3
  %conv.i173 = zext i8 %call.i171 to i32
  %scevgep273 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %119 = load i8, i8* %scevgep273, align 1
  %scevgep273.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %120 = load i8, i8* %scevgep273.1, align 1
  %conv.i.i.i179.1 = zext i8 %120 to i32
  %conv1.i.i.i180.1 = zext i8 %119 to i32
  %xor.i.i.i181.1 = xor i32 %conv1.i.i.i180.1, %conv.i.i.i179.1
  %conv2.i.i.i182.1 = trunc i32 %xor.i.i.i181.1 to i8
  %scevgep273.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %121 = load i8, i8* %scevgep273.2, align 1
  %conv.i.i.i179.2 = zext i8 %121 to i32
  %conv1.i.i.i180.2 = zext i8 %conv2.i.i.i182.1 to i32
  %xor.i.i.i181.2 = xor i32 %conv1.i.i.i180.2, %conv.i.i.i179.2
  %conv2.i.i.i182.2 = trunc i32 %xor.i.i.i181.2 to i8
  %conv3.i185 = zext i8 %conv2.i.i.i182.2 to i32
  %cmp.i186 = icmp eq i32 %conv.i173, %conv3.i185
  call void @assume(i1 zeroext %cmp.i186) #3
  %conv5.i187 = zext i8 %call1.i172 to i32
  %scevgep269 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %122 = load i8, i8* %scevgep269, align 1
  %scevgep269.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %123 = load i8, i8* %scevgep269.1, align 1
  %conv.i.i155.i194.1 = zext i8 %123 to i32
  %conv1.i.i156.i195.1 = zext i8 %122 to i32
  %xor.i.i157.i196.1 = xor i32 %conv1.i.i156.i195.1, %conv.i.i155.i194.1
  %conv2.i.i158.i197.1 = trunc i32 %xor.i.i157.i196.1 to i8
  %scevgep269.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %124 = load i8, i8* %scevgep269.2, align 1
  %conv.i.i155.i194.2 = zext i8 %124 to i32
  %conv1.i.i156.i195.2 = zext i8 %conv2.i.i158.i197.1 to i32
  %xor.i.i157.i196.2 = xor i32 %conv1.i.i156.i195.2, %conv.i.i155.i194.2
  %conv2.i.i158.i197.2 = trunc i32 %xor.i.i157.i196.2 to i8
  %conv7.i200 = zext i8 %conv2.i.i158.i197.2 to i32
  %cmp8.i201 = icmp eq i32 %conv5.i187, %conv7.i200
  call void @assume(i1 zeroext %cmp8.i201) #3
  %scevgep253 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep253254 = bitcast i8* %scevgep253 to [3 x [3 x i8]]*
  %scevgep260 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep260261 = bitcast i8* %scevgep260 to [3 x [3 x i8]]*
  %call16.i209 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i209, i8* %scevgep253, align 1
  %125 = load i8, i8* %scevgep253, align 1
  store i8 %125, i8* %scevgep260, align 1
  %scevgep258 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep253254, i64 0, i64 0, i64 1
  %scevgep265 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep260261, i64 0, i64 1, i64 0
  %call16.i209.1674 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i209.1674, i8* %scevgep258, align 1
  %126 = load i8, i8* %scevgep258, align 1
  store i8 %126, i8* %scevgep265, align 1
  %scevgep256 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep253254, i64 0, i64 1, i64 1
  %scevgep263 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep260261, i64 0, i64 1, i64 1
  %call16.i209.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i209.1, i8* %scevgep256, align 1
  %127 = load i8, i8* %scevgep256, align 1
  store i8 %127, i8* %scevgep263, align 1
  %scevgep230.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %128 = load i8, i8* %scevgep230.1, align 1
  %conv44.i236.1 = zext i8 %128 to i32
  %scevgep233.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep233.1, align 1
  %conv49.i241.1 = zext i8 %129 to i32
  %xor.i242.1 = xor i32 %conv44.i236.1, %conv49.i241.1
  %conv50.i243.1 = trunc i32 %xor.i242.1 to i8
  %scevgep237.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i243.1, i8* %scevgep237.1, align 1
  %130 = load i8, i8* %arraydecay10, align 1
  %conv57.i250.1 = zext i8 %130 to i32
  %xor58.i251.1 = xor i32 %conv57.i250.1, 1
  %conv59.i252.1 = trunc i32 %xor58.i251.1 to i8
  %scevgep234.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %131 = load i8, i8* %scevgep234.1, align 1
  %call64.i257.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1, i8 zeroext %131) #3
  %scevgep241.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i257.1, i8* %scevgep241.1, align 1
  %132 = load i8, i8* %arraydecay10, align 1
  %scevgep238.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %133 = load i8, i8* %scevgep238.1, align 1
  %call75.i268.1 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #3
  %scevgep245.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i268.1, i8* %scevgep245.1, align 1
  %scevgep242.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %134 = load i8, i8* %scevgep242.1, align 1
  %conv84.i277.1 = zext i8 %134 to i32
  %scevgep246.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %135 = load i8, i8* %scevgep246.1, align 1
  %conv89.i282.1 = zext i8 %135 to i32
  %xor90.i283.1 = xor i32 %conv84.i277.1, %conv89.i282.1
  %conv91.i284.1 = trunc i32 %xor90.i283.1 to i8
  %scevgep249.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i284.1, i8* %scevgep249.1, align 1
  %scevgep230.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %136 = load i8, i8* %scevgep230.2, align 1
  %conv44.i236.2 = zext i8 %136 to i32
  %scevgep233.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %137 = load i8, i8* %scevgep233.2, align 1
  %conv49.i241.2 = zext i8 %137 to i32
  %xor.i242.2 = xor i32 %conv44.i236.2, %conv49.i241.2
  %conv50.i243.2 = trunc i32 %xor.i242.2 to i8
  %scevgep237.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i243.2, i8* %scevgep237.2, align 1
  %138 = load i8, i8* %arraydecay10, align 1
  %conv57.i250.2 = zext i8 %138 to i32
  %xor58.i251.2 = xor i32 %conv57.i250.2, 1
  %conv59.i252.2 = trunc i32 %xor58.i251.2 to i8
  %scevgep234.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %139 = load i8, i8* %scevgep234.2, align 1
  %call64.i257.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2, i8 zeroext %139) #3
  %scevgep241.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i257.2, i8* %scevgep241.2, align 1
  %140 = load i8, i8* %arraydecay10, align 1
  %scevgep238.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %141 = load i8, i8* %scevgep238.2, align 1
  %call75.i268.2 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141) #3
  %scevgep245.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i268.2, i8* %scevgep245.2, align 1
  %scevgep242.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep242.2, align 1
  %conv84.i277.2 = zext i8 %142 to i32
  %scevgep246.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %143 = load i8, i8* %scevgep246.2, align 1
  %conv89.i282.2 = zext i8 %143 to i32
  %xor90.i283.2 = xor i32 %conv84.i277.2, %conv89.i282.2
  %conv91.i284.2 = trunc i32 %xor90.i283.2 to i8
  %scevgep249.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i284.2, i8* %scevgep249.2, align 1
  %scevgep232 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %144 = bitcast i8* %scevgep232 to [3 x [3 x i8]]*
  %scevgep236 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %145 = bitcast i8* %scevgep236 to [3 x [3 x i8]]*
  %scevgep240 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep240 to [3 x [3 x i8]]*
  %scevgep244 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep244 to [3 x [3 x i8]]*
  %scevgep248 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep248 to [3 x [3 x i8]]*
  %arrayidx56.i249.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i263.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep230.1544 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %149 = load i8, i8* %scevgep230.1544, align 1
  %conv44.i236.1545 = zext i8 %149 to i32
  %scevgep233.1546 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 0
  %150 = load i8, i8* %scevgep233.1546, align 1
  %conv49.i241.1547 = zext i8 %150 to i32
  %xor.i242.1548 = xor i32 %conv44.i236.1545, %conv49.i241.1547
  %conv50.i243.1549 = trunc i32 %xor.i242.1548 to i8
  %scevgep237.1550 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 0
  store i8 %conv50.i243.1549, i8* %scevgep237.1550, align 1
  %151 = load i8, i8* %arrayidx56.i249.1, align 1
  %conv57.i250.1551 = zext i8 %151 to i32
  %xor58.i251.1552 = xor i32 %conv57.i250.1551, 1
  %conv59.i252.1553 = trunc i32 %xor58.i251.1552 to i8
  %scevgep234.1554 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 0
  %152 = load i8, i8* %scevgep234.1554, align 1
  %call64.i257.1555 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1553, i8 zeroext %152) #3
  %scevgep241.1556 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 0
  store i8 %call64.i257.1555, i8* %scevgep241.1556, align 1
  %153 = load i8, i8* %arrayidx70.i263.1, align 1
  %scevgep238.1557 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep238.1557, align 1
  %call75.i268.1558 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %scevgep245.1559 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  store i8 %call75.i268.1558, i8* %scevgep245.1559, align 1
  %scevgep242.1560 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep242.1560, align 1
  %conv84.i277.1561 = zext i8 %155 to i32
  %scevgep246.1562 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep246.1562, align 1
  %conv89.i282.1563 = zext i8 %156 to i32
  %xor90.i283.1564 = xor i32 %conv84.i277.1561, %conv89.i282.1563
  %conv91.i284.1565 = trunc i32 %xor90.i283.1564 to i8
  %scevgep249.1566 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 0
  store i8 %conv91.i284.1565, i8* %scevgep249.1566, align 1
  %scevgep230.2.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %157 = load i8, i8* %scevgep230.2.1, align 1
  %conv44.i236.2.1 = zext i8 %157 to i32
  %scevgep233.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 2
  %158 = load i8, i8* %scevgep233.2.1, align 1
  %conv49.i241.2.1 = zext i8 %158 to i32
  %xor.i242.2.1 = xor i32 %conv44.i236.2.1, %conv49.i241.2.1
  %conv50.i243.2.1 = trunc i32 %xor.i242.2.1 to i8
  %scevgep237.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 2
  store i8 %conv50.i243.2.1, i8* %scevgep237.2.1, align 1
  %159 = load i8, i8* %arrayidx56.i249.1, align 1
  %conv57.i250.2.1 = zext i8 %159 to i32
  %xor58.i251.2.1 = xor i32 %conv57.i250.2.1, 1
  %conv59.i252.2.1 = trunc i32 %xor58.i251.2.1 to i8
  %scevgep234.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 2
  %160 = load i8, i8* %scevgep234.2.1, align 1
  %call64.i257.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2.1, i8 zeroext %160) #3
  %scevgep241.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 2
  store i8 %call64.i257.2.1, i8* %scevgep241.2.1, align 1
  %161 = load i8, i8* %arrayidx70.i263.1, align 1
  %scevgep238.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 2
  %162 = load i8, i8* %scevgep238.2.1, align 1
  %call75.i268.2.1 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162) #3
  %scevgep245.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 2
  store i8 %call75.i268.2.1, i8* %scevgep245.2.1, align 1
  %scevgep242.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 2
  %163 = load i8, i8* %scevgep242.2.1, align 1
  %conv84.i277.2.1 = zext i8 %163 to i32
  %scevgep246.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 2
  %164 = load i8, i8* %scevgep246.2.1, align 1
  %conv89.i282.2.1 = zext i8 %164 to i32
  %xor90.i283.2.1 = xor i32 %conv84.i277.2.1, %conv89.i282.2.1
  %conv91.i284.2.1 = trunc i32 %xor90.i283.2.1 to i8
  %scevgep249.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 2
  store i8 %conv91.i284.2.1, i8* %scevgep249.2.1, align 1
  %scevgep232.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 1, i64 0
  %165 = bitcast i8* %scevgep232.1 to [3 x [3 x i8]]*
  %scevgep236.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 1, i64 0
  %166 = bitcast i8* %scevgep236.1 to [3 x [3 x i8]]*
  %scevgep240.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 1, i64 0
  %167 = bitcast i8* %scevgep240.1 to [3 x [3 x i8]]*
  %scevgep244.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 1, i64 0
  %168 = bitcast i8* %scevgep244.1 to [3 x [3 x i8]]*
  %scevgep248.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep248.1 to [3 x [3 x i8]]*
  %arrayidx56.i249.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx70.i263.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep230.2571 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %170 = load i8, i8* %scevgep230.2571, align 1
  %conv44.i236.2572 = zext i8 %170 to i32
  %scevgep233.2573 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %165, i64 0, i64 0, i64 0
  %171 = load i8, i8* %scevgep233.2573, align 1
  %conv49.i241.2574 = zext i8 %171 to i32
  %xor.i242.2575 = xor i32 %conv44.i236.2572, %conv49.i241.2574
  %conv50.i243.2576 = trunc i32 %xor.i242.2575 to i8
  %scevgep237.2577 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %166, i64 0, i64 0, i64 0
  store i8 %conv50.i243.2576, i8* %scevgep237.2577, align 1
  %172 = load i8, i8* %arrayidx56.i249.2, align 1
  %conv57.i250.2578 = zext i8 %172 to i32
  %xor58.i251.2579 = xor i32 %conv57.i250.2578, 1
  %conv59.i252.2580 = trunc i32 %xor58.i251.2579 to i8
  %scevgep234.2581 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %165, i64 0, i64 0, i64 0
  %173 = load i8, i8* %scevgep234.2581, align 1
  %call64.i257.2582 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2580, i8 zeroext %173) #3
  %scevgep241.2583 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %167, i64 0, i64 0, i64 0
  store i8 %call64.i257.2582, i8* %scevgep241.2583, align 1
  %174 = load i8, i8* %arrayidx70.i263.2, align 1
  %scevgep238.2584 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %166, i64 0, i64 0, i64 0
  %175 = load i8, i8* %scevgep238.2584, align 1
  %call75.i268.2585 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175) #3
  %scevgep245.2586 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 0
  store i8 %call75.i268.2585, i8* %scevgep245.2586, align 1
  %scevgep242.2587 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %167, i64 0, i64 0, i64 0
  %176 = load i8, i8* %scevgep242.2587, align 1
  %conv84.i277.2588 = zext i8 %176 to i32
  %scevgep246.2589 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 0
  %177 = load i8, i8* %scevgep246.2589, align 1
  %conv89.i282.2590 = zext i8 %177 to i32
  %xor90.i283.2591 = xor i32 %conv84.i277.2588, %conv89.i282.2590
  %conv91.i284.2592 = trunc i32 %xor90.i283.2591 to i8
  %scevgep249.2593 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %169, i64 0, i64 0, i64 0
  store i8 %conv91.i284.2592, i8* %scevgep249.2593, align 1
  %scevgep230.1.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %178 = load i8, i8* %scevgep230.1.2, align 1
  %conv44.i236.1.2 = zext i8 %178 to i32
  %scevgep233.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %165, i64 0, i64 0, i64 1
  %179 = load i8, i8* %scevgep233.1.2, align 1
  %conv49.i241.1.2 = zext i8 %179 to i32
  %xor.i242.1.2 = xor i32 %conv44.i236.1.2, %conv49.i241.1.2
  %conv50.i243.1.2 = trunc i32 %xor.i242.1.2 to i8
  %scevgep237.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %166, i64 0, i64 0, i64 1
  store i8 %conv50.i243.1.2, i8* %scevgep237.1.2, align 1
  %180 = load i8, i8* %arrayidx56.i249.2, align 1
  %conv57.i250.1.2 = zext i8 %180 to i32
  %xor58.i251.1.2 = xor i32 %conv57.i250.1.2, 1
  %conv59.i252.1.2 = trunc i32 %xor58.i251.1.2 to i8
  %scevgep234.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %165, i64 0, i64 0, i64 1
  %181 = load i8, i8* %scevgep234.1.2, align 1
  %call64.i257.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1.2, i8 zeroext %181) #3
  %scevgep241.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %167, i64 0, i64 0, i64 1
  store i8 %call64.i257.1.2, i8* %scevgep241.1.2, align 1
  %182 = load i8, i8* %arrayidx70.i263.2, align 1
  %scevgep238.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %166, i64 0, i64 0, i64 1
  %183 = load i8, i8* %scevgep238.1.2, align 1
  %call75.i268.1.2 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183) #3
  %scevgep245.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 1
  store i8 %call75.i268.1.2, i8* %scevgep245.1.2, align 1
  %scevgep242.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %167, i64 0, i64 0, i64 1
  %184 = load i8, i8* %scevgep242.1.2, align 1
  %conv84.i277.1.2 = zext i8 %184 to i32
  %scevgep246.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 1
  %185 = load i8, i8* %scevgep246.1.2, align 1
  %conv89.i282.1.2 = zext i8 %185 to i32
  %xor90.i283.1.2 = xor i32 %conv84.i277.1.2, %conv89.i282.1.2
  %conv91.i284.1.2 = trunc i32 %xor90.i283.1.2 to i8
  %scevgep249.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %169, i64 0, i64 0, i64 1
  store i8 %conv91.i284.1.2, i8* %scevgep249.1.2, align 1
  %186 = load i8, i8* %arraydecay10, align 1
  %187 = load i8, i8* %arraydecay11, align 1
  %call111.i301 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #3
  store i8 %call111.i301, i8* %arraydecay12, align 1
  %scevgep220.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep220.1, align 1
  %conv126.i313.1 = zext i8 %188 to i32
  %189 = load i8, i8* %arraydecay12, align 1
  %conv129.i316.1 = zext i8 %189 to i32
  %xor130.i317.1 = xor i32 %conv129.i316.1, %conv126.i313.1
  %conv131.i318.1 = trunc i32 %xor130.i317.1 to i8
  store i8 %conv131.i318.1, i8* %arraydecay12, align 1
  %scevgep220.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %190 = load i8, i8* %scevgep220.2, align 1
  %conv126.i313.2 = zext i8 %190 to i32
  %191 = load i8, i8* %arraydecay12, align 1
  %conv129.i316.2 = zext i8 %191 to i32
  %xor130.i317.2 = xor i32 %conv129.i316.2, %conv126.i313.2
  %conv131.i318.2 = trunc i32 %xor130.i317.2 to i8
  store i8 %conv131.i318.2, i8* %arraydecay12, align 1
  %scevgep219 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %192 = bitcast i8* %scevgep219 to [3 x [3 x i8]]*
  %arrayidx108.i298.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %193 = load i8, i8* %arrayidx108.i298.1, align 1
  %arrayidx110.i300.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %194 = load i8, i8* %arrayidx110.i300.1, align 1
  %call111.i301.1 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194) #3
  %arrayidx113.i303.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i301.1, i8* %arrayidx113.i303.1, align 1
  %arrayidx128.i315.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep220.1526 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %192, i64 0, i64 0, i64 0
  %195 = load i8, i8* %scevgep220.1526, align 1
  %conv126.i313.1527 = zext i8 %195 to i32
  %196 = load i8, i8* %arrayidx128.i315.1, align 1
  %conv129.i316.1528 = zext i8 %196 to i32
  %xor130.i317.1529 = xor i32 %conv129.i316.1528, %conv126.i313.1527
  %conv131.i318.1530 = trunc i32 %xor130.i317.1529 to i8
  store i8 %conv131.i318.1530, i8* %arrayidx128.i315.1, align 1
  %scevgep220.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %192, i64 0, i64 0, i64 2
  %197 = load i8, i8* %scevgep220.2.1, align 1
  %conv126.i313.2.1 = zext i8 %197 to i32
  %198 = load i8, i8* %arrayidx128.i315.1, align 1
  %conv129.i316.2.1 = zext i8 %198 to i32
  %xor130.i317.2.1 = xor i32 %conv129.i316.2.1, %conv126.i313.2.1
  %conv131.i318.2.1 = trunc i32 %xor130.i317.2.1 to i8
  store i8 %conv131.i318.2.1, i8* %arrayidx128.i315.1, align 1
  %scevgep219.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %192, i64 0, i64 1, i64 0
  %199 = bitcast i8* %scevgep219.1 to [3 x [3 x i8]]*
  %arrayidx108.i298.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %200 = load i8, i8* %arrayidx108.i298.2, align 1
  %arrayidx110.i300.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %201 = load i8, i8* %arrayidx110.i300.2, align 1
  %call111.i301.2 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201) #3
  %arrayidx113.i303.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call111.i301.2, i8* %arrayidx113.i303.2, align 1
  %arrayidx128.i315.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep220.2535 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %199, i64 0, i64 0, i64 0
  %202 = load i8, i8* %scevgep220.2535, align 1
  %conv126.i313.2536 = zext i8 %202 to i32
  %203 = load i8, i8* %arrayidx128.i315.2, align 1
  %conv129.i316.2537 = zext i8 %203 to i32
  %xor130.i317.2538 = xor i32 %conv129.i316.2537, %conv126.i313.2536
  %conv131.i318.2539 = trunc i32 %xor130.i317.2538 to i8
  store i8 %conv131.i318.2539, i8* %arrayidx128.i315.2, align 1
  %scevgep220.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %199, i64 0, i64 0, i64 1
  %204 = load i8, i8* %scevgep220.1.2, align 1
  %conv126.i313.1.2 = zext i8 %204 to i32
  %205 = load i8, i8* %arrayidx128.i315.2, align 1
  %conv129.i316.1.2 = zext i8 %205 to i32
  %xor130.i317.1.2 = xor i32 %conv129.i316.1.2, %conv126.i313.1.2
  %conv131.i318.1.2 = trunc i32 %xor130.i317.1.2 to i8
  store i8 %conv131.i318.1.2, i8* %arrayidx128.i315.2, align 1
  %call139.i324 = call zeroext i8 @mult(i8 zeroext %call.i171, i8 zeroext %call1.i172) #3
  %conv140.i325 = zext i8 %call139.i324 to i32
  %scevgep210 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %206 = load i8, i8* %scevgep210, align 1
  %scevgep210.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %207 = load i8, i8* %scevgep210.1, align 1
  %conv.i.i172.i332.1 = zext i8 %207 to i32
  %conv1.i.i173.i333.1 = zext i8 %206 to i32
  %xor.i.i174.i334.1 = xor i32 %conv1.i.i173.i333.1, %conv.i.i172.i332.1
  %conv2.i.i175.i335.1 = trunc i32 %xor.i.i174.i334.1 to i8
  %scevgep210.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %208 = load i8, i8* %scevgep210.2, align 1
  %conv.i.i172.i332.2 = zext i8 %208 to i32
  %conv1.i.i173.i333.2 = zext i8 %conv2.i.i175.i335.1 to i32
  %xor.i.i174.i334.2 = xor i32 %conv1.i.i173.i333.2, %conv.i.i172.i332.2
  %conv2.i.i175.i335.2 = trunc i32 %xor.i.i174.i334.2 to i8
  %conv142.i338 = zext i8 %conv2.i.i175.i335.2 to i32
  %cmp143.i339 = icmp eq i32 %conv140.i325, %conv142.i338
  call void @assert(i1 zeroext %cmp143.i339) #3
  %scevgep205 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %209 = load i8, i8* %scevgep205, align 1
  %call.i349 = call zeroext i8 @exp16(i8 zeroext %209) #3
  %scevgep206 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  store i8 %call.i349, i8* %scevgep206, align 1
  %scevgep205.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %210 = load i8, i8* %scevgep205.1, align 1
  %call.i349.1 = call zeroext i8 @exp16(i8 zeroext %210) #3
  %scevgep206.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  store i8 %call.i349.1, i8* %scevgep206.1, align 1
  %scevgep205.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %211 = load i8, i8* %scevgep205.2, align 1
  %call.i349.2 = call zeroext i8 @exp16(i8 zeroext %211) #3
  %scevgep206.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  store i8 %call.i349.2, i8* %scevgep206.2, align 1
  %arraydecay15 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %call.i387 = call zeroext i8 (...) @rand() #3
  %call1.i388 = call zeroext i8 (...) @rand() #3
  %conv.i389 = zext i8 %call.i387 to i32
  %scevgep201 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %212 = load i8, i8* %scevgep201, align 1
  %scevgep201.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %213 = load i8, i8* %scevgep201.1, align 1
  %conv.i.i.i395.1 = zext i8 %213 to i32
  %conv1.i.i.i396.1 = zext i8 %212 to i32
  %xor.i.i.i397.1 = xor i32 %conv1.i.i.i396.1, %conv.i.i.i395.1
  %conv2.i.i.i398.1 = trunc i32 %xor.i.i.i397.1 to i8
  %scevgep201.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %214 = load i8, i8* %scevgep201.2, align 1
  %conv.i.i.i395.2 = zext i8 %214 to i32
  %conv1.i.i.i396.2 = zext i8 %conv2.i.i.i398.1 to i32
  %xor.i.i.i397.2 = xor i32 %conv1.i.i.i396.2, %conv.i.i.i395.2
  %conv2.i.i.i398.2 = trunc i32 %xor.i.i.i397.2 to i8
  %conv3.i401 = zext i8 %conv2.i.i.i398.2 to i32
  %cmp.i402 = icmp eq i32 %conv.i389, %conv3.i401
  call void @assume(i1 zeroext %cmp.i402) #3
  %conv5.i403 = zext i8 %call1.i388 to i32
  %scevgep197 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %215 = load i8, i8* %scevgep197, align 1
  %scevgep197.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %216 = load i8, i8* %scevgep197.1, align 1
  %conv.i.i155.i410.1 = zext i8 %216 to i32
  %conv1.i.i156.i411.1 = zext i8 %215 to i32
  %xor.i.i157.i412.1 = xor i32 %conv1.i.i156.i411.1, %conv.i.i155.i410.1
  %conv2.i.i158.i413.1 = trunc i32 %xor.i.i157.i412.1 to i8
  %scevgep197.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %217 = load i8, i8* %scevgep197.2, align 1
  %conv.i.i155.i410.2 = zext i8 %217 to i32
  %conv1.i.i156.i411.2 = zext i8 %conv2.i.i158.i413.1 to i32
  %xor.i.i157.i412.2 = xor i32 %conv1.i.i156.i411.2, %conv.i.i155.i410.2
  %conv2.i.i158.i413.2 = trunc i32 %xor.i.i157.i412.2 to i8
  %conv7.i416 = zext i8 %conv2.i.i158.i413.2 to i32
  %cmp8.i417 = icmp eq i32 %conv5.i403, %conv7.i416
  call void @assume(i1 zeroext %cmp8.i417) #3
  %scevgep181 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep181182 = bitcast i8* %scevgep181 to [3 x [3 x i8]]*
  %scevgep188 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep188189 = bitcast i8* %scevgep188 to [3 x [3 x i8]]*
  %call16.i425 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i425, i8* %scevgep181, align 1
  %218 = load i8, i8* %scevgep181, align 1
  store i8 %218, i8* %scevgep188, align 1
  %scevgep186 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep181182, i64 0, i64 0, i64 1
  %scevgep193 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep188189, i64 0, i64 1, i64 0
  %call16.i425.1671 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i425.1671, i8* %scevgep186, align 1
  %219 = load i8, i8* %scevgep186, align 1
  store i8 %219, i8* %scevgep193, align 1
  %scevgep184 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep181182, i64 0, i64 1, i64 1
  %scevgep191 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep188189, i64 0, i64 1, i64 1
  %call16.i425.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i425.1, i8* %scevgep184, align 1
  %220 = load i8, i8* %scevgep184, align 1
  store i8 %220, i8* %scevgep191, align 1
  %scevgep158.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %221 = load i8, i8* %scevgep158.1, align 1
  %conv44.i452.1 = zext i8 %221 to i32
  %scevgep161.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %222 = load i8, i8* %scevgep161.1, align 1
  %conv49.i457.1 = zext i8 %222 to i32
  %xor.i458.1 = xor i32 %conv44.i452.1, %conv49.i457.1
  %conv50.i459.1 = trunc i32 %xor.i458.1 to i8
  %scevgep165.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i459.1, i8* %scevgep165.1, align 1
  %223 = load i8, i8* %arraydecay15, align 1
  %conv57.i466.1 = zext i8 %223 to i32
  %xor58.i467.1 = xor i32 %conv57.i466.1, 1
  %conv59.i468.1 = trunc i32 %xor58.i467.1 to i8
  %scevgep162.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %224 = load i8, i8* %scevgep162.1, align 1
  %call64.i473.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1, i8 zeroext %224) #3
  %scevgep169.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i473.1, i8* %scevgep169.1, align 1
  %225 = load i8, i8* %arraydecay15, align 1
  %scevgep166.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %226 = load i8, i8* %scevgep166.1, align 1
  %call75.i484.1 = call zeroext i8 @mult(i8 zeroext %225, i8 zeroext %226) #3
  %scevgep173.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i484.1, i8* %scevgep173.1, align 1
  %scevgep170.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %227 = load i8, i8* %scevgep170.1, align 1
  %conv84.i493.1 = zext i8 %227 to i32
  %scevgep174.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %228 = load i8, i8* %scevgep174.1, align 1
  %conv89.i498.1 = zext i8 %228 to i32
  %xor90.i499.1 = xor i32 %conv84.i493.1, %conv89.i498.1
  %conv91.i500.1 = trunc i32 %xor90.i499.1 to i8
  %scevgep177.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i500.1, i8* %scevgep177.1, align 1
  %scevgep158.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %229 = load i8, i8* %scevgep158.2, align 1
  %conv44.i452.2 = zext i8 %229 to i32
  %scevgep161.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %230 = load i8, i8* %scevgep161.2, align 1
  %conv49.i457.2 = zext i8 %230 to i32
  %xor.i458.2 = xor i32 %conv44.i452.2, %conv49.i457.2
  %conv50.i459.2 = trunc i32 %xor.i458.2 to i8
  %scevgep165.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i459.2, i8* %scevgep165.2, align 1
  %231 = load i8, i8* %arraydecay15, align 1
  %conv57.i466.2 = zext i8 %231 to i32
  %xor58.i467.2 = xor i32 %conv57.i466.2, 1
  %conv59.i468.2 = trunc i32 %xor58.i467.2 to i8
  %scevgep162.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %232 = load i8, i8* %scevgep162.2, align 1
  %call64.i473.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2, i8 zeroext %232) #3
  %scevgep169.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i473.2, i8* %scevgep169.2, align 1
  %233 = load i8, i8* %arraydecay15, align 1
  %scevgep166.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %234 = load i8, i8* %scevgep166.2, align 1
  %call75.i484.2 = call zeroext i8 @mult(i8 zeroext %233, i8 zeroext %234) #3
  %scevgep173.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i484.2, i8* %scevgep173.2, align 1
  %scevgep170.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep170.2, align 1
  %conv84.i493.2 = zext i8 %235 to i32
  %scevgep174.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %236 = load i8, i8* %scevgep174.2, align 1
  %conv89.i498.2 = zext i8 %236 to i32
  %xor90.i499.2 = xor i32 %conv84.i493.2, %conv89.i498.2
  %conv91.i500.2 = trunc i32 %xor90.i499.2 to i8
  %scevgep177.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i500.2, i8* %scevgep177.2, align 1
  %scevgep160 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %237 = bitcast i8* %scevgep160 to [3 x [3 x i8]]*
  %scevgep164 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %238 = bitcast i8* %scevgep164 to [3 x [3 x i8]]*
  %scevgep168 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %239 = bitcast i8* %scevgep168 to [3 x [3 x i8]]*
  %scevgep172 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep172 to [3 x [3 x i8]]*
  %scevgep176 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %241 = bitcast i8* %scevgep176 to [3 x [3 x i8]]*
  %arrayidx56.i465.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %arrayidx70.i479.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %scevgep158.1472 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %242 = load i8, i8* %scevgep158.1472, align 1
  %conv44.i452.1473 = zext i8 %242 to i32
  %scevgep161.1474 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %237, i64 0, i64 0, i64 0
  %243 = load i8, i8* %scevgep161.1474, align 1
  %conv49.i457.1475 = zext i8 %243 to i32
  %xor.i458.1476 = xor i32 %conv44.i452.1473, %conv49.i457.1475
  %conv50.i459.1477 = trunc i32 %xor.i458.1476 to i8
  %scevgep165.1478 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 0
  store i8 %conv50.i459.1477, i8* %scevgep165.1478, align 1
  %244 = load i8, i8* %arrayidx56.i465.1, align 1
  %conv57.i466.1479 = zext i8 %244 to i32
  %xor58.i467.1480 = xor i32 %conv57.i466.1479, 1
  %conv59.i468.1481 = trunc i32 %xor58.i467.1480 to i8
  %scevgep162.1482 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %237, i64 0, i64 0, i64 0
  %245 = load i8, i8* %scevgep162.1482, align 1
  %call64.i473.1483 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1481, i8 zeroext %245) #3
  %scevgep169.1484 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 0
  store i8 %call64.i473.1483, i8* %scevgep169.1484, align 1
  %246 = load i8, i8* %arrayidx70.i479.1, align 1
  %scevgep166.1485 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 0
  %247 = load i8, i8* %scevgep166.1485, align 1
  %call75.i484.1486 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %scevgep173.1487 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 0
  store i8 %call75.i484.1486, i8* %scevgep173.1487, align 1
  %scevgep170.1488 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 0
  %248 = load i8, i8* %scevgep170.1488, align 1
  %conv84.i493.1489 = zext i8 %248 to i32
  %scevgep174.1490 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 0
  %249 = load i8, i8* %scevgep174.1490, align 1
  %conv89.i498.1491 = zext i8 %249 to i32
  %xor90.i499.1492 = xor i32 %conv84.i493.1489, %conv89.i498.1491
  %conv91.i500.1493 = trunc i32 %xor90.i499.1492 to i8
  %scevgep177.1494 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 0
  store i8 %conv91.i500.1493, i8* %scevgep177.1494, align 1
  %scevgep158.2.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %250 = load i8, i8* %scevgep158.2.1, align 1
  %conv44.i452.2.1 = zext i8 %250 to i32
  %scevgep161.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %237, i64 0, i64 0, i64 2
  %251 = load i8, i8* %scevgep161.2.1, align 1
  %conv49.i457.2.1 = zext i8 %251 to i32
  %xor.i458.2.1 = xor i32 %conv44.i452.2.1, %conv49.i457.2.1
  %conv50.i459.2.1 = trunc i32 %xor.i458.2.1 to i8
  %scevgep165.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 2
  store i8 %conv50.i459.2.1, i8* %scevgep165.2.1, align 1
  %252 = load i8, i8* %arrayidx56.i465.1, align 1
  %conv57.i466.2.1 = zext i8 %252 to i32
  %xor58.i467.2.1 = xor i32 %conv57.i466.2.1, 1
  %conv59.i468.2.1 = trunc i32 %xor58.i467.2.1 to i8
  %scevgep162.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %237, i64 0, i64 0, i64 2
  %253 = load i8, i8* %scevgep162.2.1, align 1
  %call64.i473.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2.1, i8 zeroext %253) #3
  %scevgep169.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 2
  store i8 %call64.i473.2.1, i8* %scevgep169.2.1, align 1
  %254 = load i8, i8* %arrayidx70.i479.1, align 1
  %scevgep166.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 2
  %255 = load i8, i8* %scevgep166.2.1, align 1
  %call75.i484.2.1 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255) #3
  %scevgep173.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 2
  store i8 %call75.i484.2.1, i8* %scevgep173.2.1, align 1
  %scevgep170.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 2
  %256 = load i8, i8* %scevgep170.2.1, align 1
  %conv84.i493.2.1 = zext i8 %256 to i32
  %scevgep174.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 2
  %257 = load i8, i8* %scevgep174.2.1, align 1
  %conv89.i498.2.1 = zext i8 %257 to i32
  %xor90.i499.2.1 = xor i32 %conv84.i493.2.1, %conv89.i498.2.1
  %conv91.i500.2.1 = trunc i32 %xor90.i499.2.1 to i8
  %scevgep177.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 2
  store i8 %conv91.i500.2.1, i8* %scevgep177.2.1, align 1
  %scevgep160.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %237, i64 0, i64 1, i64 0
  %258 = bitcast i8* %scevgep160.1 to [3 x [3 x i8]]*
  %scevgep164.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 1, i64 0
  %259 = bitcast i8* %scevgep164.1 to [3 x [3 x i8]]*
  %scevgep168.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 1, i64 0
  %260 = bitcast i8* %scevgep168.1 to [3 x [3 x i8]]*
  %scevgep172.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 1, i64 0
  %261 = bitcast i8* %scevgep172.1 to [3 x [3 x i8]]*
  %scevgep176.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep176.1 to [3 x [3 x i8]]*
  %arrayidx56.i465.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %arrayidx70.i479.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %scevgep158.2499 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %263 = load i8, i8* %scevgep158.2499, align 1
  %conv44.i452.2500 = zext i8 %263 to i32
  %scevgep161.2501 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %258, i64 0, i64 0, i64 0
  %264 = load i8, i8* %scevgep161.2501, align 1
  %conv49.i457.2502 = zext i8 %264 to i32
  %xor.i458.2503 = xor i32 %conv44.i452.2500, %conv49.i457.2502
  %conv50.i459.2504 = trunc i32 %xor.i458.2503 to i8
  %scevgep165.2505 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %259, i64 0, i64 0, i64 0
  store i8 %conv50.i459.2504, i8* %scevgep165.2505, align 1
  %265 = load i8, i8* %arrayidx56.i465.2, align 1
  %conv57.i466.2506 = zext i8 %265 to i32
  %xor58.i467.2507 = xor i32 %conv57.i466.2506, 1
  %conv59.i468.2508 = trunc i32 %xor58.i467.2507 to i8
  %scevgep162.2509 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %258, i64 0, i64 0, i64 0
  %266 = load i8, i8* %scevgep162.2509, align 1
  %call64.i473.2510 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2508, i8 zeroext %266) #3
  %scevgep169.2511 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %260, i64 0, i64 0, i64 0
  store i8 %call64.i473.2510, i8* %scevgep169.2511, align 1
  %267 = load i8, i8* %arrayidx70.i479.2, align 1
  %scevgep166.2512 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %259, i64 0, i64 0, i64 0
  %268 = load i8, i8* %scevgep166.2512, align 1
  %call75.i484.2513 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268) #3
  %scevgep173.2514 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 0
  store i8 %call75.i484.2513, i8* %scevgep173.2514, align 1
  %scevgep170.2515 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %260, i64 0, i64 0, i64 0
  %269 = load i8, i8* %scevgep170.2515, align 1
  %conv84.i493.2516 = zext i8 %269 to i32
  %scevgep174.2517 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 0
  %270 = load i8, i8* %scevgep174.2517, align 1
  %conv89.i498.2518 = zext i8 %270 to i32
  %xor90.i499.2519 = xor i32 %conv84.i493.2516, %conv89.i498.2518
  %conv91.i500.2520 = trunc i32 %xor90.i499.2519 to i8
  %scevgep177.2521 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %262, i64 0, i64 0, i64 0
  store i8 %conv91.i500.2520, i8* %scevgep177.2521, align 1
  %scevgep158.1.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %271 = load i8, i8* %scevgep158.1.2, align 1
  %conv44.i452.1.2 = zext i8 %271 to i32
  %scevgep161.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %258, i64 0, i64 0, i64 1
  %272 = load i8, i8* %scevgep161.1.2, align 1
  %conv49.i457.1.2 = zext i8 %272 to i32
  %xor.i458.1.2 = xor i32 %conv44.i452.1.2, %conv49.i457.1.2
  %conv50.i459.1.2 = trunc i32 %xor.i458.1.2 to i8
  %scevgep165.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %259, i64 0, i64 0, i64 1
  store i8 %conv50.i459.1.2, i8* %scevgep165.1.2, align 1
  %273 = load i8, i8* %arrayidx56.i465.2, align 1
  %conv57.i466.1.2 = zext i8 %273 to i32
  %xor58.i467.1.2 = xor i32 %conv57.i466.1.2, 1
  %conv59.i468.1.2 = trunc i32 %xor58.i467.1.2 to i8
  %scevgep162.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %258, i64 0, i64 0, i64 1
  %274 = load i8, i8* %scevgep162.1.2, align 1
  %call64.i473.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1.2, i8 zeroext %274) #3
  %scevgep169.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %260, i64 0, i64 0, i64 1
  store i8 %call64.i473.1.2, i8* %scevgep169.1.2, align 1
  %275 = load i8, i8* %arrayidx70.i479.2, align 1
  %scevgep166.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %259, i64 0, i64 0, i64 1
  %276 = load i8, i8* %scevgep166.1.2, align 1
  %call75.i484.1.2 = call zeroext i8 @mult(i8 zeroext %275, i8 zeroext %276) #3
  %scevgep173.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 1
  store i8 %call75.i484.1.2, i8* %scevgep173.1.2, align 1
  %scevgep170.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %260, i64 0, i64 0, i64 1
  %277 = load i8, i8* %scevgep170.1.2, align 1
  %conv84.i493.1.2 = zext i8 %277 to i32
  %scevgep174.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 1
  %278 = load i8, i8* %scevgep174.1.2, align 1
  %conv89.i498.1.2 = zext i8 %278 to i32
  %xor90.i499.1.2 = xor i32 %conv84.i493.1.2, %conv89.i498.1.2
  %conv91.i500.1.2 = trunc i32 %xor90.i499.1.2 to i8
  %scevgep177.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %262, i64 0, i64 0, i64 1
  store i8 %conv91.i500.1.2, i8* %scevgep177.1.2, align 1
  %279 = load i8, i8* %arraydecay15, align 1
  %280 = load i8, i8* %arraydecay16, align 1
  %call111.i517 = call zeroext i8 @mult(i8 zeroext %279, i8 zeroext %280) #3
  store i8 %call111.i517, i8* %arraydecay17, align 1
  %scevgep148.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %281 = load i8, i8* %scevgep148.1, align 1
  %conv126.i529.1 = zext i8 %281 to i32
  %282 = load i8, i8* %arraydecay17, align 1
  %conv129.i532.1 = zext i8 %282 to i32
  %xor130.i533.1 = xor i32 %conv129.i532.1, %conv126.i529.1
  %conv131.i534.1 = trunc i32 %xor130.i533.1 to i8
  store i8 %conv131.i534.1, i8* %arraydecay17, align 1
  %scevgep148.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %283 = load i8, i8* %scevgep148.2, align 1
  %conv126.i529.2 = zext i8 %283 to i32
  %284 = load i8, i8* %arraydecay17, align 1
  %conv129.i532.2 = zext i8 %284 to i32
  %xor130.i533.2 = xor i32 %conv129.i532.2, %conv126.i529.2
  %conv131.i534.2 = trunc i32 %xor130.i533.2 to i8
  store i8 %conv131.i534.2, i8* %arraydecay17, align 1
  %scevgep147 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %285 = bitcast i8* %scevgep147 to [3 x [3 x i8]]*
  %arrayidx108.i514.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %286 = load i8, i8* %arrayidx108.i514.1, align 1
  %arrayidx110.i516.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %287 = load i8, i8* %arrayidx110.i516.1, align 1
  %call111.i517.1 = call zeroext i8 @mult(i8 zeroext %286, i8 zeroext %287) #3
  %arrayidx113.i519.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call111.i517.1, i8* %arrayidx113.i519.1, align 1
  %arrayidx128.i531.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep148.1454 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %285, i64 0, i64 0, i64 0
  %288 = load i8, i8* %scevgep148.1454, align 1
  %conv126.i529.1455 = zext i8 %288 to i32
  %289 = load i8, i8* %arrayidx128.i531.1, align 1
  %conv129.i532.1456 = zext i8 %289 to i32
  %xor130.i533.1457 = xor i32 %conv129.i532.1456, %conv126.i529.1455
  %conv131.i534.1458 = trunc i32 %xor130.i533.1457 to i8
  store i8 %conv131.i534.1458, i8* %arrayidx128.i531.1, align 1
  %scevgep148.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %285, i64 0, i64 0, i64 2
  %290 = load i8, i8* %scevgep148.2.1, align 1
  %conv126.i529.2.1 = zext i8 %290 to i32
  %291 = load i8, i8* %arrayidx128.i531.1, align 1
  %conv129.i532.2.1 = zext i8 %291 to i32
  %xor130.i533.2.1 = xor i32 %conv129.i532.2.1, %conv126.i529.2.1
  %conv131.i534.2.1 = trunc i32 %xor130.i533.2.1 to i8
  store i8 %conv131.i534.2.1, i8* %arrayidx128.i531.1, align 1
  %scevgep147.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %285, i64 0, i64 1, i64 0
  %292 = bitcast i8* %scevgep147.1 to [3 x [3 x i8]]*
  %arrayidx108.i514.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %293 = load i8, i8* %arrayidx108.i514.2, align 1
  %arrayidx110.i516.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %294 = load i8, i8* %arrayidx110.i516.2, align 1
  %call111.i517.2 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %294) #3
  %arrayidx113.i519.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  store i8 %call111.i517.2, i8* %arrayidx113.i519.2, align 1
  %arrayidx128.i531.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep148.2463 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %292, i64 0, i64 0, i64 0
  %295 = load i8, i8* %scevgep148.2463, align 1
  %conv126.i529.2464 = zext i8 %295 to i32
  %296 = load i8, i8* %arrayidx128.i531.2, align 1
  %conv129.i532.2465 = zext i8 %296 to i32
  %xor130.i533.2466 = xor i32 %conv129.i532.2465, %conv126.i529.2464
  %conv131.i534.2467 = trunc i32 %xor130.i533.2466 to i8
  store i8 %conv131.i534.2467, i8* %arrayidx128.i531.2, align 1
  %scevgep148.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %292, i64 0, i64 0, i64 1
  %297 = load i8, i8* %scevgep148.1.2, align 1
  %conv126.i529.1.2 = zext i8 %297 to i32
  %298 = load i8, i8* %arrayidx128.i531.2, align 1
  %conv129.i532.1.2 = zext i8 %298 to i32
  %xor130.i533.1.2 = xor i32 %conv129.i532.1.2, %conv126.i529.1.2
  %conv131.i534.1.2 = trunc i32 %xor130.i533.1.2 to i8
  store i8 %conv131.i534.1.2, i8* %arrayidx128.i531.2, align 1
  %call139.i540 = call zeroext i8 @mult(i8 zeroext %call.i387, i8 zeroext %call1.i388) #3
  %conv140.i541 = zext i8 %call139.i540 to i32
  %scevgep138 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %299 = load i8, i8* %scevgep138, align 1
  %scevgep138.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %300 = load i8, i8* %scevgep138.1, align 1
  %conv.i.i172.i548.1 = zext i8 %300 to i32
  %conv1.i.i173.i549.1 = zext i8 %299 to i32
  %xor.i.i174.i550.1 = xor i32 %conv1.i.i173.i549.1, %conv.i.i172.i548.1
  %conv2.i.i175.i551.1 = trunc i32 %xor.i.i174.i550.1 to i8
  %scevgep138.2 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %301 = load i8, i8* %scevgep138.2, align 1
  %conv.i.i172.i548.2 = zext i8 %301 to i32
  %conv1.i.i173.i549.2 = zext i8 %conv2.i.i175.i551.1 to i32
  %xor.i.i174.i550.2 = xor i32 %conv1.i.i173.i549.2, %conv.i.i172.i548.2
  %conv2.i.i175.i551.2 = trunc i32 %xor.i.i174.i550.2 to i8
  %conv142.i554 = zext i8 %conv2.i.i175.i551.2 to i32
  %cmp143.i555 = icmp eq i32 %conv140.i541, %conv142.i554
  call void @assert(i1 zeroext %cmp143.i555) #3
  %arraydecay18 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %call.i588 = call zeroext i8 (...) @rand() #3
  %call1.i589 = call zeroext i8 (...) @rand() #3
  %conv.i590 = zext i8 %call.i588 to i32
  %scevgep134 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %302 = load i8, i8* %scevgep134, align 1
  %scevgep134.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %303 = load i8, i8* %scevgep134.1, align 1
  %conv.i.i.i596.1 = zext i8 %303 to i32
  %conv1.i.i.i597.1 = zext i8 %302 to i32
  %xor.i.i.i598.1 = xor i32 %conv1.i.i.i597.1, %conv.i.i.i596.1
  %conv2.i.i.i599.1 = trunc i32 %xor.i.i.i598.1 to i8
  %scevgep134.2 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %304 = load i8, i8* %scevgep134.2, align 1
  %conv.i.i.i596.2 = zext i8 %304 to i32
  %conv1.i.i.i597.2 = zext i8 %conv2.i.i.i599.1 to i32
  %xor.i.i.i598.2 = xor i32 %conv1.i.i.i597.2, %conv.i.i.i596.2
  %conv2.i.i.i599.2 = trunc i32 %xor.i.i.i598.2 to i8
  %conv3.i602 = zext i8 %conv2.i.i.i599.2 to i32
  %cmp.i603 = icmp eq i32 %conv.i590, %conv3.i602
  call void @assume(i1 zeroext %cmp.i603) #3
  %conv5.i604 = zext i8 %call1.i589 to i32
  %scevgep130 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %305 = load i8, i8* %scevgep130, align 1
  %scevgep130.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %306 = load i8, i8* %scevgep130.1, align 1
  %conv.i.i155.i611.1 = zext i8 %306 to i32
  %conv1.i.i156.i612.1 = zext i8 %305 to i32
  %xor.i.i157.i613.1 = xor i32 %conv1.i.i156.i612.1, %conv.i.i155.i611.1
  %conv2.i.i158.i614.1 = trunc i32 %xor.i.i157.i613.1 to i8
  %scevgep130.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %307 = load i8, i8* %scevgep130.2, align 1
  %conv.i.i155.i611.2 = zext i8 %307 to i32
  %conv1.i.i156.i612.2 = zext i8 %conv2.i.i158.i614.1 to i32
  %xor.i.i157.i613.2 = xor i32 %conv1.i.i156.i612.2, %conv.i.i155.i611.2
  %conv2.i.i158.i614.2 = trunc i32 %xor.i.i157.i613.2 to i8
  %conv7.i617 = zext i8 %conv2.i.i158.i614.2 to i32
  %cmp8.i618 = icmp eq i32 %conv5.i604, %conv7.i617
  call void @assume(i1 zeroext %cmp8.i618) #3
  %scevgep114 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep114115 = bitcast i8* %scevgep114 to [3 x [3 x i8]]*
  %scevgep121 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep121122 = bitcast i8* %scevgep121 to [3 x [3 x i8]]*
  %call16.i626 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i626, i8* %scevgep114, align 1
  %308 = load i8, i8* %scevgep114, align 1
  store i8 %308, i8* %scevgep121, align 1
  %scevgep119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep114115, i64 0, i64 0, i64 1
  %scevgep126 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep121122, i64 0, i64 1, i64 0
  %call16.i626.1668 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i626.1668, i8* %scevgep119, align 1
  %309 = load i8, i8* %scevgep119, align 1
  store i8 %309, i8* %scevgep126, align 1
  %scevgep117 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep114115, i64 0, i64 1, i64 1
  %scevgep124 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep121122, i64 0, i64 1, i64 1
  %call16.i626.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i626.1, i8* %scevgep117, align 1
  %310 = load i8, i8* %scevgep117, align 1
  store i8 %310, i8* %scevgep124, align 1
  %scevgep91.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %311 = load i8, i8* %scevgep91.1, align 1
  %conv44.i653.1 = zext i8 %311 to i32
  %scevgep94.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %312 = load i8, i8* %scevgep94.1, align 1
  %conv49.i658.1 = zext i8 %312 to i32
  %xor.i659.1 = xor i32 %conv44.i653.1, %conv49.i658.1
  %conv50.i660.1 = trunc i32 %xor.i659.1 to i8
  %scevgep98.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i660.1, i8* %scevgep98.1, align 1
  %313 = load i8, i8* %arraydecay18, align 1
  %conv57.i667.1 = zext i8 %313 to i32
  %xor58.i668.1 = xor i32 %conv57.i667.1, 1
  %conv59.i669.1 = trunc i32 %xor58.i668.1 to i8
  %scevgep95.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %314 = load i8, i8* %scevgep95.1, align 1
  %call64.i674.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1, i8 zeroext %314) #3
  %scevgep102.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i674.1, i8* %scevgep102.1, align 1
  %315 = load i8, i8* %arraydecay18, align 1
  %scevgep99.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %316 = load i8, i8* %scevgep99.1, align 1
  %call75.i685.1 = call zeroext i8 @mult(i8 zeroext %315, i8 zeroext %316) #3
  %scevgep106.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i685.1, i8* %scevgep106.1, align 1
  %scevgep103.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %317 = load i8, i8* %scevgep103.1, align 1
  %conv84.i694.1 = zext i8 %317 to i32
  %scevgep107.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %318 = load i8, i8* %scevgep107.1, align 1
  %conv89.i699.1 = zext i8 %318 to i32
  %xor90.i700.1 = xor i32 %conv84.i694.1, %conv89.i699.1
  %conv91.i701.1 = trunc i32 %xor90.i700.1 to i8
  %scevgep110.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i701.1, i8* %scevgep110.1, align 1
  %scevgep91.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %319 = load i8, i8* %scevgep91.2, align 1
  %conv44.i653.2 = zext i8 %319 to i32
  %scevgep94.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %320 = load i8, i8* %scevgep94.2, align 1
  %conv49.i658.2 = zext i8 %320 to i32
  %xor.i659.2 = xor i32 %conv44.i653.2, %conv49.i658.2
  %conv50.i660.2 = trunc i32 %xor.i659.2 to i8
  %scevgep98.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i660.2, i8* %scevgep98.2, align 1
  %321 = load i8, i8* %arraydecay18, align 1
  %conv57.i667.2 = zext i8 %321 to i32
  %xor58.i668.2 = xor i32 %conv57.i667.2, 1
  %conv59.i669.2 = trunc i32 %xor58.i668.2 to i8
  %scevgep95.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %322 = load i8, i8* %scevgep95.2, align 1
  %call64.i674.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2, i8 zeroext %322) #3
  %scevgep102.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i674.2, i8* %scevgep102.2, align 1
  %323 = load i8, i8* %arraydecay18, align 1
  %scevgep99.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %324 = load i8, i8* %scevgep99.2, align 1
  %call75.i685.2 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %324) #3
  %scevgep106.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i685.2, i8* %scevgep106.2, align 1
  %scevgep103.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %325 = load i8, i8* %scevgep103.2, align 1
  %conv84.i694.2 = zext i8 %325 to i32
  %scevgep107.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %326 = load i8, i8* %scevgep107.2, align 1
  %conv89.i699.2 = zext i8 %326 to i32
  %xor90.i700.2 = xor i32 %conv84.i694.2, %conv89.i699.2
  %conv91.i701.2 = trunc i32 %xor90.i700.2 to i8
  %scevgep110.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i701.2, i8* %scevgep110.2, align 1
  %scevgep93 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %327 = bitcast i8* %scevgep93 to [3 x [3 x i8]]*
  %scevgep97 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %328 = bitcast i8* %scevgep97 to [3 x [3 x i8]]*
  %scevgep101 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %329 = bitcast i8* %scevgep101 to [3 x [3 x i8]]*
  %scevgep105 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %330 = bitcast i8* %scevgep105 to [3 x [3 x i8]]*
  %scevgep109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %331 = bitcast i8* %scevgep109 to [3 x [3 x i8]]*
  %arrayidx56.i666.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %arrayidx70.i680.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %scevgep91.1400 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %332 = load i8, i8* %scevgep91.1400, align 1
  %conv44.i653.1401 = zext i8 %332 to i32
  %scevgep94.1402 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %327, i64 0, i64 0, i64 0
  %333 = load i8, i8* %scevgep94.1402, align 1
  %conv49.i658.1403 = zext i8 %333 to i32
  %xor.i659.1404 = xor i32 %conv44.i653.1401, %conv49.i658.1403
  %conv50.i660.1405 = trunc i32 %xor.i659.1404 to i8
  %scevgep98.1406 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %328, i64 0, i64 0, i64 0
  store i8 %conv50.i660.1405, i8* %scevgep98.1406, align 1
  %334 = load i8, i8* %arrayidx56.i666.1, align 1
  %conv57.i667.1407 = zext i8 %334 to i32
  %xor58.i668.1408 = xor i32 %conv57.i667.1407, 1
  %conv59.i669.1409 = trunc i32 %xor58.i668.1408 to i8
  %scevgep95.1410 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %327, i64 0, i64 0, i64 0
  %335 = load i8, i8* %scevgep95.1410, align 1
  %call64.i674.1411 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1409, i8 zeroext %335) #3
  %scevgep102.1412 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %329, i64 0, i64 0, i64 0
  store i8 %call64.i674.1411, i8* %scevgep102.1412, align 1
  %336 = load i8, i8* %arrayidx70.i680.1, align 1
  %scevgep99.1413 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %328, i64 0, i64 0, i64 0
  %337 = load i8, i8* %scevgep99.1413, align 1
  %call75.i685.1414 = call zeroext i8 @mult(i8 zeroext %336, i8 zeroext %337) #3
  %scevgep106.1415 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 0
  store i8 %call75.i685.1414, i8* %scevgep106.1415, align 1
  %scevgep103.1416 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %329, i64 0, i64 0, i64 0
  %338 = load i8, i8* %scevgep103.1416, align 1
  %conv84.i694.1417 = zext i8 %338 to i32
  %scevgep107.1418 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 0
  %339 = load i8, i8* %scevgep107.1418, align 1
  %conv89.i699.1419 = zext i8 %339 to i32
  %xor90.i700.1420 = xor i32 %conv84.i694.1417, %conv89.i699.1419
  %conv91.i701.1421 = trunc i32 %xor90.i700.1420 to i8
  %scevgep110.1422 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 0, i64 0
  store i8 %conv91.i701.1421, i8* %scevgep110.1422, align 1
  %scevgep91.2.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %340 = load i8, i8* %scevgep91.2.1, align 1
  %conv44.i653.2.1 = zext i8 %340 to i32
  %scevgep94.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %327, i64 0, i64 0, i64 2
  %341 = load i8, i8* %scevgep94.2.1, align 1
  %conv49.i658.2.1 = zext i8 %341 to i32
  %xor.i659.2.1 = xor i32 %conv44.i653.2.1, %conv49.i658.2.1
  %conv50.i660.2.1 = trunc i32 %xor.i659.2.1 to i8
  %scevgep98.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %328, i64 0, i64 0, i64 2
  store i8 %conv50.i660.2.1, i8* %scevgep98.2.1, align 1
  %342 = load i8, i8* %arrayidx56.i666.1, align 1
  %conv57.i667.2.1 = zext i8 %342 to i32
  %xor58.i668.2.1 = xor i32 %conv57.i667.2.1, 1
  %conv59.i669.2.1 = trunc i32 %xor58.i668.2.1 to i8
  %scevgep95.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %327, i64 0, i64 0, i64 2
  %343 = load i8, i8* %scevgep95.2.1, align 1
  %call64.i674.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2.1, i8 zeroext %343) #3
  %scevgep102.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %329, i64 0, i64 0, i64 2
  store i8 %call64.i674.2.1, i8* %scevgep102.2.1, align 1
  %344 = load i8, i8* %arrayidx70.i680.1, align 1
  %scevgep99.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %328, i64 0, i64 0, i64 2
  %345 = load i8, i8* %scevgep99.2.1, align 1
  %call75.i685.2.1 = call zeroext i8 @mult(i8 zeroext %344, i8 zeroext %345) #3
  %scevgep106.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 2
  store i8 %call75.i685.2.1, i8* %scevgep106.2.1, align 1
  %scevgep103.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %329, i64 0, i64 0, i64 2
  %346 = load i8, i8* %scevgep103.2.1, align 1
  %conv84.i694.2.1 = zext i8 %346 to i32
  %scevgep107.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 2
  %347 = load i8, i8* %scevgep107.2.1, align 1
  %conv89.i699.2.1 = zext i8 %347 to i32
  %xor90.i700.2.1 = xor i32 %conv84.i694.2.1, %conv89.i699.2.1
  %conv91.i701.2.1 = trunc i32 %xor90.i700.2.1 to i8
  %scevgep110.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 0, i64 2
  store i8 %conv91.i701.2.1, i8* %scevgep110.2.1, align 1
  %scevgep93.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %327, i64 0, i64 1, i64 0
  %348 = bitcast i8* %scevgep93.1 to [3 x [3 x i8]]*
  %scevgep97.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %328, i64 0, i64 1, i64 0
  %349 = bitcast i8* %scevgep97.1 to [3 x [3 x i8]]*
  %scevgep101.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %329, i64 0, i64 1, i64 0
  %350 = bitcast i8* %scevgep101.1 to [3 x [3 x i8]]*
  %scevgep105.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 1, i64 0
  %351 = bitcast i8* %scevgep105.1 to [3 x [3 x i8]]*
  %scevgep109.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep109.1 to [3 x [3 x i8]]*
  %arrayidx56.i666.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %arrayidx70.i680.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %scevgep91.2427 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %353 = load i8, i8* %scevgep91.2427, align 1
  %conv44.i653.2428 = zext i8 %353 to i32
  %scevgep94.2429 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %348, i64 0, i64 0, i64 0
  %354 = load i8, i8* %scevgep94.2429, align 1
  %conv49.i658.2430 = zext i8 %354 to i32
  %xor.i659.2431 = xor i32 %conv44.i653.2428, %conv49.i658.2430
  %conv50.i660.2432 = trunc i32 %xor.i659.2431 to i8
  %scevgep98.2433 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %349, i64 0, i64 0, i64 0
  store i8 %conv50.i660.2432, i8* %scevgep98.2433, align 1
  %355 = load i8, i8* %arrayidx56.i666.2, align 1
  %conv57.i667.2434 = zext i8 %355 to i32
  %xor58.i668.2435 = xor i32 %conv57.i667.2434, 1
  %conv59.i669.2436 = trunc i32 %xor58.i668.2435 to i8
  %scevgep95.2437 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %348, i64 0, i64 0, i64 0
  %356 = load i8, i8* %scevgep95.2437, align 1
  %call64.i674.2438 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2436, i8 zeroext %356) #3
  %scevgep102.2439 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %350, i64 0, i64 0, i64 0
  store i8 %call64.i674.2438, i8* %scevgep102.2439, align 1
  %357 = load i8, i8* %arrayidx70.i680.2, align 1
  %scevgep99.2440 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %349, i64 0, i64 0, i64 0
  %358 = load i8, i8* %scevgep99.2440, align 1
  %call75.i685.2441 = call zeroext i8 @mult(i8 zeroext %357, i8 zeroext %358) #3
  %scevgep106.2442 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 0
  store i8 %call75.i685.2441, i8* %scevgep106.2442, align 1
  %scevgep103.2443 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %350, i64 0, i64 0, i64 0
  %359 = load i8, i8* %scevgep103.2443, align 1
  %conv84.i694.2444 = zext i8 %359 to i32
  %scevgep107.2445 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 0
  %360 = load i8, i8* %scevgep107.2445, align 1
  %conv89.i699.2446 = zext i8 %360 to i32
  %xor90.i700.2447 = xor i32 %conv84.i694.2444, %conv89.i699.2446
  %conv91.i701.2448 = trunc i32 %xor90.i700.2447 to i8
  %scevgep110.2449 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %352, i64 0, i64 0, i64 0
  store i8 %conv91.i701.2448, i8* %scevgep110.2449, align 1
  %scevgep91.1.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %361 = load i8, i8* %scevgep91.1.2, align 1
  %conv44.i653.1.2 = zext i8 %361 to i32
  %scevgep94.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %348, i64 0, i64 0, i64 1
  %362 = load i8, i8* %scevgep94.1.2, align 1
  %conv49.i658.1.2 = zext i8 %362 to i32
  %xor.i659.1.2 = xor i32 %conv44.i653.1.2, %conv49.i658.1.2
  %conv50.i660.1.2 = trunc i32 %xor.i659.1.2 to i8
  %scevgep98.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %349, i64 0, i64 0, i64 1
  store i8 %conv50.i660.1.2, i8* %scevgep98.1.2, align 1
  %363 = load i8, i8* %arrayidx56.i666.2, align 1
  %conv57.i667.1.2 = zext i8 %363 to i32
  %xor58.i668.1.2 = xor i32 %conv57.i667.1.2, 1
  %conv59.i669.1.2 = trunc i32 %xor58.i668.1.2 to i8
  %scevgep95.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %348, i64 0, i64 0, i64 1
  %364 = load i8, i8* %scevgep95.1.2, align 1
  %call64.i674.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1.2, i8 zeroext %364) #3
  %scevgep102.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %350, i64 0, i64 0, i64 1
  store i8 %call64.i674.1.2, i8* %scevgep102.1.2, align 1
  %365 = load i8, i8* %arrayidx70.i680.2, align 1
  %scevgep99.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %349, i64 0, i64 0, i64 1
  %366 = load i8, i8* %scevgep99.1.2, align 1
  %call75.i685.1.2 = call zeroext i8 @mult(i8 zeroext %365, i8 zeroext %366) #3
  %scevgep106.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 1
  store i8 %call75.i685.1.2, i8* %scevgep106.1.2, align 1
  %scevgep103.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %350, i64 0, i64 0, i64 1
  %367 = load i8, i8* %scevgep103.1.2, align 1
  %conv84.i694.1.2 = zext i8 %367 to i32
  %scevgep107.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 1
  %368 = load i8, i8* %scevgep107.1.2, align 1
  %conv89.i699.1.2 = zext i8 %368 to i32
  %xor90.i700.1.2 = xor i32 %conv84.i694.1.2, %conv89.i699.1.2
  %conv91.i701.1.2 = trunc i32 %xor90.i700.1.2 to i8
  %scevgep110.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %352, i64 0, i64 0, i64 1
  store i8 %conv91.i701.1.2, i8* %scevgep110.1.2, align 1
  %369 = load i8, i8* %arraydecay18, align 1
  %370 = load i8, i8* %arraydecay19, align 1
  %call111.i718 = call zeroext i8 @mult(i8 zeroext %369, i8 zeroext %370) #3
  store i8 %call111.i718, i8* %y, align 1
  %scevgep82.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %371 = load i8, i8* %scevgep82.1, align 1
  %conv126.i730.1 = zext i8 %371 to i32
  %372 = load i8, i8* %y, align 1
  %conv129.i733.1 = zext i8 %372 to i32
  %xor130.i734.1 = xor i32 %conv129.i733.1, %conv126.i730.1
  %conv131.i735.1 = trunc i32 %xor130.i734.1 to i8
  store i8 %conv131.i735.1, i8* %y, align 1
  %scevgep82.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %373 = load i8, i8* %scevgep82.2, align 1
  %conv126.i730.2 = zext i8 %373 to i32
  %374 = load i8, i8* %y, align 1
  %conv129.i733.2 = zext i8 %374 to i32
  %xor130.i734.2 = xor i32 %conv129.i733.2, %conv126.i730.2
  %conv131.i735.2 = trunc i32 %xor130.i734.2 to i8
  store i8 %conv131.i735.2, i8* %y, align 1
  %scevgep81 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %375 = bitcast i8* %scevgep81 to [3 x [3 x i8]]*
  %arrayidx108.i715.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %376 = load i8, i8* %arrayidx108.i715.1, align 1
  %arrayidx110.i717.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %377 = load i8, i8* %arrayidx110.i717.1, align 1
  %call111.i718.1 = call zeroext i8 @mult(i8 zeroext %376, i8 zeroext %377) #3
  %arrayidx113.i720.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i718.1, i8* %arrayidx113.i720.1, align 1
  %arrayidx128.i732.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep82.1382 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %375, i64 0, i64 0, i64 0
  %378 = load i8, i8* %scevgep82.1382, align 1
  %conv126.i730.1383 = zext i8 %378 to i32
  %379 = load i8, i8* %arrayidx128.i732.1, align 1
  %conv129.i733.1384 = zext i8 %379 to i32
  %xor130.i734.1385 = xor i32 %conv129.i733.1384, %conv126.i730.1383
  %conv131.i735.1386 = trunc i32 %xor130.i734.1385 to i8
  store i8 %conv131.i735.1386, i8* %arrayidx128.i732.1, align 1
  %scevgep82.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %375, i64 0, i64 0, i64 2
  %380 = load i8, i8* %scevgep82.2.1, align 1
  %conv126.i730.2.1 = zext i8 %380 to i32
  %381 = load i8, i8* %arrayidx128.i732.1, align 1
  %conv129.i733.2.1 = zext i8 %381 to i32
  %xor130.i734.2.1 = xor i32 %conv129.i733.2.1, %conv126.i730.2.1
  %conv131.i735.2.1 = trunc i32 %xor130.i734.2.1 to i8
  store i8 %conv131.i735.2.1, i8* %arrayidx128.i732.1, align 1
  %scevgep81.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %375, i64 0, i64 1, i64 0
  %382 = bitcast i8* %scevgep81.1 to [3 x [3 x i8]]*
  %arrayidx108.i715.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %383 = load i8, i8* %arrayidx108.i715.2, align 1
  %arrayidx110.i717.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %384 = load i8, i8* %arrayidx110.i717.2, align 1
  %call111.i718.2 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %384) #3
  %arrayidx113.i720.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i718.2, i8* %arrayidx113.i720.2, align 1
  %arrayidx128.i732.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep82.2391 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %382, i64 0, i64 0, i64 0
  %385 = load i8, i8* %scevgep82.2391, align 1
  %conv126.i730.2392 = zext i8 %385 to i32
  %386 = load i8, i8* %arrayidx128.i732.2, align 1
  %conv129.i733.2393 = zext i8 %386 to i32
  %xor130.i734.2394 = xor i32 %conv129.i733.2393, %conv126.i730.2392
  %conv131.i735.2395 = trunc i32 %xor130.i734.2394 to i8
  store i8 %conv131.i735.2395, i8* %arrayidx128.i732.2, align 1
  %scevgep82.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %382, i64 0, i64 0, i64 1
  %387 = load i8, i8* %scevgep82.1.2, align 1
  %conv126.i730.1.2 = zext i8 %387 to i32
  %388 = load i8, i8* %arrayidx128.i732.2, align 1
  %conv129.i733.1.2 = zext i8 %388 to i32
  %xor130.i734.1.2 = xor i32 %conv129.i733.1.2, %conv126.i730.1.2
  %conv131.i735.1.2 = trunc i32 %xor130.i734.1.2 to i8
  store i8 %conv131.i735.1.2, i8* %arrayidx128.i732.2, align 1
  %call139.i741 = call zeroext i8 @mult(i8 zeroext %call.i588, i8 zeroext %call1.i589) #3
  %conv140.i742 = zext i8 %call139.i741 to i32
  %389 = load i8, i8* %y, align 1
  %scevgep72.1 = getelementptr i8, i8* %y, i64 1
  %390 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i172.i749.1 = zext i8 %390 to i32
  %conv1.i.i173.i750.1 = zext i8 %389 to i32
  %xor.i.i174.i751.1 = xor i32 %conv1.i.i173.i750.1, %conv.i.i172.i749.1
  %conv2.i.i175.i752.1 = trunc i32 %xor.i.i174.i751.1 to i8
  %scevgep72.2 = getelementptr i8, i8* %y, i64 2
  %391 = load i8, i8* %scevgep72.2, align 1
  %conv.i.i172.i749.2 = zext i8 %391 to i32
  %conv1.i.i173.i750.2 = zext i8 %conv2.i.i175.i752.1 to i32
  %xor.i.i174.i751.2 = xor i32 %conv1.i.i173.i750.2, %conv.i.i172.i749.2
  %conv2.i.i175.i752.2 = trunc i32 %xor.i.i174.i751.2 to i8
  %conv142.i755 = zext i8 %conv2.i.i175.i752.2 to i32
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
  %392 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %393 = load i8, i8* %scevgep.1, align 1
  %conv.i.i772.1 = zext i8 %393 to i32
  %conv1.i.i773.1 = zext i8 %392 to i32
  %xor.i.i774.1 = xor i32 %conv1.i.i773.1, %conv.i.i772.1
  %conv2.i.i775.1 = trunc i32 %xor.i.i774.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %394 = load i8, i8* %scevgep.2, align 1
  %conv.i.i772.2 = zext i8 %394 to i32
  %conv1.i.i773.2 = zext i8 %conv2.i.i775.1 to i32
  %xor.i.i774.2 = xor i32 %conv1.i.i773.2, %conv.i.i772.2
  %conv2.i.i775.2 = trunc i32 %xor.i.i774.2 to i8
  %conv23 = zext i8 %conv2.i.i775.2 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
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
  %scevgep108.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep108.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep108.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep108.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %scevgep104 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %3, i8* %scevgep104, align 1
  %scevgep103.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep103.1, align 1
  %scevgep104.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %4, i8* %scevgep104.1, align 1
  %scevgep103.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep103.2, align 1
  %scevgep104.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %5, i8* %scevgep104.2, align 1
  %scevgep42 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep4243 = bitcast i8* %scevgep42 to [3 x [3 x i8]]*
  %scevgep49 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep4950 = bitcast i8* %scevgep49 to [3 x [3 x i8]]*
  %arrayidx6 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %6 = load i8, i8* %x, align 1
  %scevgep34.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep34.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep34.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep34.2, align 1
  %conv.i.i.i.2 = zext i8 %8 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep40 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %9 = load i8, i8* %scevgep40, align 1
  %scevgep40.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep40.1, align 1
  %conv.i.i155.i.1 = zext i8 %10 to i32
  %conv1.i.i156.i.1 = zext i8 %9 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep40.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %11 = load i8, i8* %scevgep40.2, align 1
  %conv.i.i155.i.2 = zext i8 %11 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep42, align 1
  %12 = load i8, i8* %scevgep42, align 1
  store i8 %12, i8* %scevgep49, align 1
  %scevgep47 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4243, i64 0, i64 0, i64 1
  %scevgep54 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4950, i64 0, i64 1, i64 0
  %call16.i.1323 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1323, i8* %scevgep47, align 1
  %13 = load i8, i8* %scevgep47, align 1
  store i8 %13, i8* %scevgep54, align 1
  %scevgep45 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4243, i64 0, i64 1, i64 1
  %scevgep52 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4950, i64 0, i64 1, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep45, align 1
  %14 = load i8, i8* %scevgep45, align 1
  store i8 %14, i8* %scevgep52, align 1
  %scevgep62.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep62.1, align 1
  %conv44.i.1 = zext i8 %15 to i32
  %scevgep65.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep65.1, align 1
  %conv49.i.1 = zext i8 %16 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep69.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep69.1, align 1
  %17 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %17 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep66.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep66.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %18) #3
  %scevgep73.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep73.1, align 1
  %19 = load i8, i8* %x, align 1
  %scevgep70.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep70.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  %scevgep77.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep77.1, align 1
  %scevgep74.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %21 = load i8, i8* %scevgep74.1, align 1
  %conv84.i.1 = zext i8 %21 to i32
  %scevgep78.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep78.1, align 1
  %conv89.i.1 = zext i8 %22 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep81.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep81.1, align 1
  %scevgep62.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %23 = load i8, i8* %scevgep62.2, align 1
  %conv44.i.2 = zext i8 %23 to i32
  %scevgep65.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %24 = load i8, i8* %scevgep65.2, align 1
  %conv49.i.2 = zext i8 %24 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep69.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep69.2, align 1
  %25 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %25 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep66.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %26 = load i8, i8* %scevgep66.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %26) #3
  %scevgep73.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep73.2, align 1
  %27 = load i8, i8* %x, align 1
  %scevgep70.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %28 = load i8, i8* %scevgep70.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  %scevgep77.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep77.2, align 1
  %scevgep74.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %29 = load i8, i8* %scevgep74.2, align 1
  %conv84.i.2 = zext i8 %29 to i32
  %scevgep78.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %30 = load i8, i8* %scevgep78.2, align 1
  %conv89.i.2 = zext i8 %30 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep81.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep81.2, align 1
  %scevgep64 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep64 to [3 x [3 x i8]]*
  %scevgep68 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep68 to [3 x [3 x i8]]*
  %scevgep72 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %33 = bitcast i8* %scevgep72 to [3 x [3 x i8]]*
  %scevgep76 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep76 to [3 x [3 x i8]]*
  %scevgep80 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %35 = bitcast i8* %scevgep80 to [3 x [3 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep62.1112 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep62.1112, align 1
  %conv44.i.1113 = zext i8 %36 to i32
  %scevgep65.1114 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep65.1114, align 1
  %conv49.i.1115 = zext i8 %37 to i32
  %xor.i.1116 = xor i32 %conv44.i.1113, %conv49.i.1115
  %conv50.i.1117 = trunc i32 %xor.i.1116 to i8
  %scevgep69.1118 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 0
  store i8 %conv50.i.1117, i8* %scevgep69.1118, align 1
  %38 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1119 = zext i8 %38 to i32
  %xor58.i.1120 = xor i32 %conv57.i.1119, 1
  %conv59.i.1121 = trunc i32 %xor58.i.1120 to i8
  %scevgep66.1122 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 0
  %39 = load i8, i8* %scevgep66.1122, align 1
  %call64.i.1123 = call zeroext i8 @mult(i8 zeroext %conv59.i.1121, i8 zeroext %39) #3
  %scevgep73.1124 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  store i8 %call64.i.1123, i8* %scevgep73.1124, align 1
  %40 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep70.1125 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 0
  %41 = load i8, i8* %scevgep70.1125, align 1
  %call75.i.1126 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %scevgep77.1127 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 0
  store i8 %call75.i.1126, i8* %scevgep77.1127, align 1
  %scevgep74.1128 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  %42 = load i8, i8* %scevgep74.1128, align 1
  %conv84.i.1129 = zext i8 %42 to i32
  %scevgep78.1130 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 0
  %43 = load i8, i8* %scevgep78.1130, align 1
  %conv89.i.1131 = zext i8 %43 to i32
  %xor90.i.1132 = xor i32 %conv84.i.1129, %conv89.i.1131
  %conv91.i.1133 = trunc i32 %xor90.i.1132 to i8
  %scevgep81.1134 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 0, i64 0
  store i8 %conv91.i.1133, i8* %scevgep81.1134, align 1
  %scevgep62.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep62.2.1, align 1
  %conv44.i.2.1 = zext i8 %44 to i32
  %scevgep65.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep65.2.1, align 1
  %conv49.i.2.1 = zext i8 %45 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep69.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep69.2.1, align 1
  %46 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %46 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep66.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 0, i64 2
  %47 = load i8, i8* %scevgep66.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %47) #3
  %scevgep73.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep73.2.1, align 1
  %48 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep70.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 2
  %49 = load i8, i8* %scevgep70.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #3
  %scevgep77.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep77.2.1, align 1
  %scevgep74.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 2
  %50 = load i8, i8* %scevgep74.2.1, align 1
  %conv84.i.2.1 = zext i8 %50 to i32
  %scevgep78.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep78.2.1, align 1
  %conv89.i.2.1 = zext i8 %51 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep81.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep81.2.1, align 1
  %scevgep64.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %31, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep64.1 to [3 x [3 x i8]]*
  %scevgep68.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep68.1 to [3 x [3 x i8]]*
  %scevgep72.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 1, i64 0
  %54 = bitcast i8* %scevgep72.1 to [3 x [3 x i8]]*
  %scevgep76.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 1, i64 0
  %55 = bitcast i8* %scevgep76.1 to [3 x [3 x i8]]*
  %scevgep80.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 1, i64 0
  %56 = bitcast i8* %scevgep80.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep62.2139 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep62.2139, align 1
  %conv44.i.2140 = zext i8 %57 to i32
  %scevgep65.2141 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep65.2141, align 1
  %conv49.i.2142 = zext i8 %58 to i32
  %xor.i.2143 = xor i32 %conv44.i.2140, %conv49.i.2142
  %conv50.i.2144 = trunc i32 %xor.i.2143 to i8
  %scevgep69.2145 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  store i8 %conv50.i.2144, i8* %scevgep69.2145, align 1
  %59 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2146 = zext i8 %59 to i32
  %xor58.i.2147 = xor i32 %conv57.i.2146, 1
  %conv59.i.2148 = trunc i32 %xor58.i.2147 to i8
  %scevgep66.2149 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep66.2149, align 1
  %call64.i.2150 = call zeroext i8 @mult(i8 zeroext %conv59.i.2148, i8 zeroext %60) #3
  %scevgep73.2151 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 0
  store i8 %call64.i.2150, i8* %scevgep73.2151, align 1
  %61 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep70.2152 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep70.2152, align 1
  %call75.i.2153 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #3
  %scevgep77.2154 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 0
  store i8 %call75.i.2153, i8* %scevgep77.2154, align 1
  %scevgep74.2155 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 0
  %63 = load i8, i8* %scevgep74.2155, align 1
  %conv84.i.2156 = zext i8 %63 to i32
  %scevgep78.2157 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep78.2157, align 1
  %conv89.i.2158 = zext i8 %64 to i32
  %xor90.i.2159 = xor i32 %conv84.i.2156, %conv89.i.2158
  %conv91.i.2160 = trunc i32 %xor90.i.2159 to i8
  %scevgep81.2161 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %56, i64 0, i64 0, i64 0
  store i8 %conv91.i.2160, i8* %scevgep81.2161, align 1
  %scevgep62.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep62.1.2, align 1
  %conv44.i.1.2 = zext i8 %65 to i32
  %scevgep65.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep65.1.2, align 1
  %conv49.i.1.2 = zext i8 %66 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep69.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep69.1.2, align 1
  %67 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %67 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep66.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 1
  %68 = load i8, i8* %scevgep66.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %68) #3
  %scevgep73.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep73.1.2, align 1
  %69 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep70.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  %70 = load i8, i8* %scevgep70.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #3
  %scevgep77.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep77.1.2, align 1
  %scevgep74.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep74.1.2, align 1
  %conv84.i.1.2 = zext i8 %71 to i32
  %scevgep78.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %55, i64 0, i64 0, i64 1
  %72 = load i8, i8* %scevgep78.1.2, align 1
  %conv89.i.1.2 = zext i8 %72 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep81.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %56, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep81.1.2, align 1
  %73 = load i8, i8* %x, align 1
  %74 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep92.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %75 = load i8, i8* %scevgep92.1, align 1
  %conv126.i.1 = zext i8 %75 to i32
  %76 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %76 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep92.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %77 = load i8, i8* %scevgep92.2, align 1
  %conv126.i.2 = zext i8 %77 to i32
  %78 = load i8, i8* %arraydecay10, align 1
  %conv129.i.2 = zext i8 %78 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay10, align 1
  %scevgep91 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %79 = bitcast i8* %scevgep91 to [3 x [3 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %80 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %81 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep92.1166 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %79, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep92.1166, align 1
  %conv126.i.1167 = zext i8 %82 to i32
  %83 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1168 = zext i8 %83 to i32
  %xor130.i.1169 = xor i32 %conv129.i.1168, %conv126.i.1167
  %conv131.i.1170 = trunc i32 %xor130.i.1169 to i8
  store i8 %conv131.i.1170, i8* %arrayidx128.i.1, align 1
  %scevgep92.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %79, i64 0, i64 0, i64 2
  %84 = load i8, i8* %scevgep92.2.1, align 1
  %conv126.i.2.1 = zext i8 %84 to i32
  %85 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %85 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep91.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %79, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep91.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %87 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %88 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep92.2175 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %86, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep92.2175, align 1
  %conv126.i.2176 = zext i8 %89 to i32
  %90 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2177 = zext i8 %90 to i32
  %xor130.i.2178 = xor i32 %conv129.i.2177, %conv126.i.2176
  %conv131.i.2179 = trunc i32 %xor130.i.2178 to i8
  store i8 %conv131.i.2179, i8* %arrayidx128.i.2, align 1
  %scevgep92.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %86, i64 0, i64 0, i64 1
  %91 = load i8, i8* %scevgep92.1.2, align 1
  %conv126.i.1.2 = zext i8 %91 to i32
  %92 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %92 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep98 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep99 = getelementptr i8, i8* %scevgep98, i64 3
  %93 = load i8, i8* %scevgep99, align 1
  %scevgep98.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep99.1 = getelementptr i8, i8* %scevgep98.1, i64 3
  %94 = load i8, i8* %scevgep99.1, align 1
  %conv.i.i172.i.1 = zext i8 %94 to i32
  %conv1.i.i173.i.1 = zext i8 %93 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep98.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep99.2 = getelementptr i8, i8* %scevgep98.2, i64 3
  %95 = load i8, i8* %scevgep99.2, align 1
  %conv.i.i172.i.2 = zext i8 %95 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.2 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep37 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep37 to [3 x [3 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %97 = load i8, i8* %x, align 1
  %conv.i.i.i.1183 = zext i8 %97 to i32
  %conv1.i.i.i.1184 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.1185 = xor i32 %conv1.i.i.i.1184, %conv.i.i.i.1183
  %conv2.i.i.i.1186 = trunc i32 %xor.i.i.i.1185 to i8
  %scevgep34.1.1 = getelementptr i8, i8* %x, i64 1
  %98 = load i8, i8* %scevgep34.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %98 to i32
  %conv1.i.i.i.1.1 = zext i8 %conv2.i.i.i.1186 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep34.2.1 = getelementptr i8, i8* %x, i64 2
  %99 = load i8, i8* %scevgep34.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %99 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep40.1187 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %100 = load i8, i8* %scevgep40.1187, align 1
  %conv.i.i155.i.1189 = zext i8 %100 to i32
  %conv1.i.i156.i.1190 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.1191 = xor i32 %conv1.i.i156.i.1190, %conv.i.i155.i.1189
  %conv2.i.i158.i.1192 = trunc i32 %xor.i.i157.i.1191 to i8
  %scevgep40.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %101 = load i8, i8* %scevgep40.1.1, align 1
  %conv.i.i155.i.1.1 = zext i8 %101 to i32
  %conv1.i.i156.i.1.1 = zext i8 %conv2.i.i158.i.1192 to i32
  %xor.i.i157.i.1.1 = xor i32 %conv1.i.i156.i.1.1, %conv.i.i155.i.1.1
  %conv2.i.i158.i.1.1 = trunc i32 %xor.i.i157.i.1.1 to i8
  %scevgep40.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %102 = load i8, i8* %scevgep40.2.1, align 1
  %conv.i.i155.i.2.1 = zext i8 %102 to i32
  %conv1.i.i156.i.2.1 = zext i8 %conv2.i.i158.i.1.1 to i32
  %xor.i.i157.i.2.1 = xor i32 %conv1.i.i156.i.2.1, %conv.i.i155.i.2.1
  %conv2.i.i158.i.2.1 = trunc i32 %xor.i.i157.i.2.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i158.i.2.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1199 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1199, i8* %scevgep42, align 1
  %103 = load i8, i8* %scevgep42, align 1
  store i8 %103, i8* %scevgep49, align 1
  %scevgep47.1201 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4243, i64 0, i64 0, i64 1
  %scevgep54.1202 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4950, i64 0, i64 1, i64 0
  %call16.i.1199.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1199.1, i8* %scevgep47.1201, align 1
  %104 = load i8, i8* %scevgep47.1201, align 1
  store i8 %104, i8* %scevgep54.1202, align 1
  %scevgep45.1206 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4243, i64 0, i64 1, i64 1
  %scevgep52.1207 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4950, i64 0, i64 1, i64 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1, i8* %scevgep45.1206, align 1
  %105 = load i8, i8* %scevgep45.1206, align 1
  store i8 %105, i8* %scevgep52.1207, align 1
  %scevgep62.1.1235 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %106 = load i8, i8* %scevgep62.1.1235, align 1
  %conv44.i.1.1236 = zext i8 %106 to i32
  %scevgep65.1.1237 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep65.1.1237, align 1
  %conv49.i.1.1238 = zext i8 %107 to i32
  %xor.i.1.1239 = xor i32 %conv44.i.1.1236, %conv49.i.1.1238
  %conv50.i.1.1240 = trunc i32 %xor.i.1.1239 to i8
  %scevgep69.1.1241 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.1240, i8* %scevgep69.1.1241, align 1
  %108 = load i8, i8* %x, align 1
  %conv57.i.1.1242 = zext i8 %108 to i32
  %xor58.i.1.1243 = xor i32 %conv57.i.1.1242, 1
  %conv59.i.1.1244 = trunc i32 %xor58.i.1.1243 to i8
  %scevgep66.1.1245 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %109 = load i8, i8* %scevgep66.1.1245, align 1
  %call64.i.1.1246 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.1244, i8 zeroext %109) #3
  %scevgep73.1.1247 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.1246, i8* %scevgep73.1.1247, align 1
  %110 = load i8, i8* %x, align 1
  %scevgep70.1.1248 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep70.1.1248, align 1
  %call75.i.1.1249 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111) #3
  %scevgep77.1.1250 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.1249, i8* %scevgep77.1.1250, align 1
  %scevgep74.1.1251 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %112 = load i8, i8* %scevgep74.1.1251, align 1
  %conv84.i.1.1252 = zext i8 %112 to i32
  %scevgep78.1.1253 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep78.1.1253, align 1
  %conv89.i.1.1254 = zext i8 %113 to i32
  %xor90.i.1.1255 = xor i32 %conv84.i.1.1252, %conv89.i.1.1254
  %conv91.i.1.1256 = trunc i32 %xor90.i.1.1255 to i8
  %scevgep81.1.1257 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.1256, i8* %scevgep81.1.1257, align 1
  %scevgep62.2.1260 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %114 = load i8, i8* %scevgep62.2.1260, align 1
  %conv44.i.2.1261 = zext i8 %114 to i32
  %scevgep65.2.1262 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %115 = load i8, i8* %scevgep65.2.1262, align 1
  %conv49.i.2.1263 = zext i8 %115 to i32
  %xor.i.2.1264 = xor i32 %conv44.i.2.1261, %conv49.i.2.1263
  %conv50.i.2.1265 = trunc i32 %xor.i.2.1264 to i8
  %scevgep69.2.1266 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1265, i8* %scevgep69.2.1266, align 1
  %116 = load i8, i8* %x, align 1
  %conv57.i.2.1267 = zext i8 %116 to i32
  %xor58.i.2.1268 = xor i32 %conv57.i.2.1267, 1
  %conv59.i.2.1269 = trunc i32 %xor58.i.2.1268 to i8
  %scevgep66.2.1270 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %117 = load i8, i8* %scevgep66.2.1270, align 1
  %call64.i.2.1271 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1269, i8 zeroext %117) #3
  %scevgep73.2.1272 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1271, i8* %scevgep73.2.1272, align 1
  %118 = load i8, i8* %x, align 1
  %scevgep70.2.1273 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %119 = load i8, i8* %scevgep70.2.1273, align 1
  %call75.i.2.1274 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %scevgep77.2.1275 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1274, i8* %scevgep77.2.1275, align 1
  %scevgep74.2.1276 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep74.2.1276, align 1
  %conv84.i.2.1277 = zext i8 %120 to i32
  %scevgep78.2.1278 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %121 = load i8, i8* %scevgep78.2.1278, align 1
  %conv89.i.2.1279 = zext i8 %121 to i32
  %xor90.i.2.1280 = xor i32 %conv84.i.2.1277, %conv89.i.2.1279
  %conv91.i.2.1281 = trunc i32 %xor90.i.2.1280 to i8
  %scevgep81.2.1282 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1281, i8* %scevgep81.2.1282, align 1
  %scevgep64.1284 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %122 = bitcast i8* %scevgep64.1284 to [3 x [3 x i8]]*
  %scevgep68.1285 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %123 = bitcast i8* %scevgep68.1285 to [3 x [3 x i8]]*
  %scevgep72.1286 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep72.1286 to [3 x [3 x i8]]*
  %scevgep76.1287 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %125 = bitcast i8* %scevgep76.1287 to [3 x [3 x i8]]*
  %scevgep80.1288 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %126 = bitcast i8* %scevgep80.1288 to [3 x [3 x i8]]*
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep62.1112.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep62.1112.1, align 1
  %conv44.i.1113.1 = zext i8 %127 to i32
  %scevgep65.1114.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 0
  %128 = load i8, i8* %scevgep65.1114.1, align 1
  %conv49.i.1115.1 = zext i8 %128 to i32
  %xor.i.1116.1 = xor i32 %conv44.i.1113.1, %conv49.i.1115.1
  %conv50.i.1117.1 = trunc i32 %xor.i.1116.1 to i8
  %scevgep69.1118.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 0
  store i8 %conv50.i.1117.1, i8* %scevgep69.1118.1, align 1
  %129 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.1119.1 = zext i8 %129 to i32
  %xor58.i.1120.1 = xor i32 %conv57.i.1119.1, 1
  %conv59.i.1121.1 = trunc i32 %xor58.i.1120.1 to i8
  %scevgep66.1122.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep66.1122.1, align 1
  %call64.i.1123.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1121.1, i8 zeroext %130) #3
  %scevgep73.1124.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 0
  store i8 %call64.i.1123.1, i8* %scevgep73.1124.1, align 1
  %131 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep70.1125.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 0
  %132 = load i8, i8* %scevgep70.1125.1, align 1
  %call75.i.1126.1 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %scevgep77.1127.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 0
  store i8 %call75.i.1126.1, i8* %scevgep77.1127.1, align 1
  %scevgep74.1128.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep74.1128.1, align 1
  %conv84.i.1129.1 = zext i8 %133 to i32
  %scevgep78.1130.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 0
  %134 = load i8, i8* %scevgep78.1130.1, align 1
  %conv89.i.1131.1 = zext i8 %134 to i32
  %xor90.i.1132.1 = xor i32 %conv84.i.1129.1, %conv89.i.1131.1
  %conv91.i.1133.1 = trunc i32 %xor90.i.1132.1 to i8
  %scevgep81.1134.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %126, i64 0, i64 0, i64 0
  store i8 %conv91.i.1133.1, i8* %scevgep81.1134.1, align 1
  %scevgep62.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %135 = load i8, i8* %scevgep62.2.1.1, align 1
  %conv44.i.2.1.1 = zext i8 %135 to i32
  %scevgep65.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 2
  %136 = load i8, i8* %scevgep65.2.1.1, align 1
  %conv49.i.2.1.1 = zext i8 %136 to i32
  %xor.i.2.1.1 = xor i32 %conv44.i.2.1.1, %conv49.i.2.1.1
  %conv50.i.2.1.1 = trunc i32 %xor.i.2.1.1 to i8
  %scevgep69.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.1, i8* %scevgep69.2.1.1, align 1
  %137 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.2.1.1 = zext i8 %137 to i32
  %xor58.i.2.1.1 = xor i32 %conv57.i.2.1.1, 1
  %conv59.i.2.1.1 = trunc i32 %xor58.i.2.1.1 to i8
  %scevgep66.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 0, i64 2
  %138 = load i8, i8* %scevgep66.2.1.1, align 1
  %call64.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.1, i8 zeroext %138) #3
  %scevgep73.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.1, i8* %scevgep73.2.1.1, align 1
  %139 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep70.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 0, i64 2
  %140 = load i8, i8* %scevgep70.2.1.1, align 1
  %call75.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #3
  %scevgep77.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.1, i8* %scevgep77.2.1.1, align 1
  %scevgep74.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 0, i64 2
  %141 = load i8, i8* %scevgep74.2.1.1, align 1
  %conv84.i.2.1.1 = zext i8 %141 to i32
  %scevgep78.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep78.2.1.1, align 1
  %conv89.i.2.1.1 = zext i8 %142 to i32
  %xor90.i.2.1.1 = xor i32 %conv84.i.2.1.1, %conv89.i.2.1.1
  %conv91.i.2.1.1 = trunc i32 %xor90.i.2.1.1 to i8
  %scevgep81.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %126, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.1, i8* %scevgep81.2.1.1, align 1
  %scevgep64.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %122, i64 0, i64 1, i64 0
  %143 = bitcast i8* %scevgep64.1.1 to [3 x [3 x i8]]*
  %scevgep68.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %123, i64 0, i64 1, i64 0
  %144 = bitcast i8* %scevgep68.1.1 to [3 x [3 x i8]]*
  %scevgep72.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %124, i64 0, i64 1, i64 0
  %145 = bitcast i8* %scevgep72.1.1 to [3 x [3 x i8]]*
  %scevgep76.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %125, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep76.1.1 to [3 x [3 x i8]]*
  %scevgep80.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %126, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep80.1.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep62.2139.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %148 = load i8, i8* %scevgep62.2139.1, align 1
  %conv44.i.2140.1 = zext i8 %148 to i32
  %scevgep65.2141.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 0
  %149 = load i8, i8* %scevgep65.2141.1, align 1
  %conv49.i.2142.1 = zext i8 %149 to i32
  %xor.i.2143.1 = xor i32 %conv44.i.2140.1, %conv49.i.2142.1
  %conv50.i.2144.1 = trunc i32 %xor.i.2143.1 to i8
  %scevgep69.2145.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 0
  store i8 %conv50.i.2144.1, i8* %scevgep69.2145.1, align 1
  %150 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.2146.1 = zext i8 %150 to i32
  %xor58.i.2147.1 = xor i32 %conv57.i.2146.1, 1
  %conv59.i.2148.1 = trunc i32 %xor58.i.2147.1 to i8
  %scevgep66.2149.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 0
  %151 = load i8, i8* %scevgep66.2149.1, align 1
  %call64.i.2150.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2148.1, i8 zeroext %151) #3
  %scevgep73.2151.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 0
  store i8 %call64.i.2150.1, i8* %scevgep73.2151.1, align 1
  %152 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep70.2152.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 0
  %153 = load i8, i8* %scevgep70.2152.1, align 1
  %call75.i.2153.1 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153) #3
  %scevgep77.2154.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 0
  store i8 %call75.i.2153.1, i8* %scevgep77.2154.1, align 1
  %scevgep74.2155.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep74.2155.1, align 1
  %conv84.i.2156.1 = zext i8 %154 to i32
  %scevgep78.2157.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep78.2157.1, align 1
  %conv89.i.2158.1 = zext i8 %155 to i32
  %xor90.i.2159.1 = xor i32 %conv84.i.2156.1, %conv89.i.2158.1
  %conv91.i.2160.1 = trunc i32 %xor90.i.2159.1 to i8
  %scevgep81.2161.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  store i8 %conv91.i.2160.1, i8* %scevgep81.2161.1, align 1
  %scevgep62.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %156 = load i8, i8* %scevgep62.1.2.1, align 1
  %conv44.i.1.2.1 = zext i8 %156 to i32
  %scevgep65.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 1
  %157 = load i8, i8* %scevgep65.1.2.1, align 1
  %conv49.i.1.2.1 = zext i8 %157 to i32
  %xor.i.1.2.1 = xor i32 %conv44.i.1.2.1, %conv49.i.1.2.1
  %conv50.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8
  %scevgep69.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.1, i8* %scevgep69.1.2.1, align 1
  %158 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.1.2.1 = zext i8 %158 to i32
  %xor58.i.1.2.1 = xor i32 %conv57.i.1.2.1, 1
  %conv59.i.1.2.1 = trunc i32 %xor58.i.1.2.1 to i8
  %scevgep66.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %143, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep66.1.2.1, align 1
  %call64.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.1, i8 zeroext %159) #3
  %scevgep73.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.1, i8* %scevgep73.1.2.1, align 1
  %160 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep70.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %144, i64 0, i64 0, i64 1
  %161 = load i8, i8* %scevgep70.1.2.1, align 1
  %call75.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %160, i8 zeroext %161) #3
  %scevgep77.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.1, i8* %scevgep77.1.2.1, align 1
  %scevgep74.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %145, i64 0, i64 0, i64 1
  %162 = load i8, i8* %scevgep74.1.2.1, align 1
  %conv84.i.1.2.1 = zext i8 %162 to i32
  %scevgep78.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %146, i64 0, i64 0, i64 1
  %163 = load i8, i8* %scevgep78.1.2.1, align 1
  %conv89.i.1.2.1 = zext i8 %163 to i32
  %xor90.i.1.2.1 = xor i32 %conv84.i.1.2.1, %conv89.i.1.2.1
  %conv91.i.1.2.1 = trunc i32 %xor90.i.1.2.1 to i8
  %scevgep81.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.1, i8* %scevgep81.1.2.1, align 1
  %164 = load i8, i8* %x, align 1
  %165 = load i8, i8* %arraydecay7.1, align 1
  %call111.i.1290 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165) #3
  store i8 %call111.i.1290, i8* %arraydecay10.1, align 1
  %scevgep92.1.1299 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep92.1.1299, align 1
  %conv126.i.1.1300 = zext i8 %166 to i32
  %167 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.1.1301 = zext i8 %167 to i32
  %xor130.i.1.1302 = xor i32 %conv129.i.1.1301, %conv126.i.1.1300
  %conv131.i.1.1303 = trunc i32 %xor130.i.1.1302 to i8
  store i8 %conv131.i.1.1303, i8* %arraydecay10.1, align 1
  %scevgep92.2.1306 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %168 = load i8, i8* %scevgep92.2.1306, align 1
  %conv126.i.2.1307 = zext i8 %168 to i32
  %169 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.2.1308 = zext i8 %169 to i32
  %xor130.i.2.1309 = xor i32 %conv129.i.2.1308, %conv126.i.2.1307
  %conv131.i.2.1310 = trunc i32 %xor130.i.2.1309 to i8
  store i8 %conv131.i.2.1310, i8* %arraydecay10.1, align 1
  %scevgep91.1312 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep91.1312 to [3 x [3 x i8]]*
  %arrayidx108.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %171 = load i8, i8* %arrayidx108.i.1.1, align 1
  %arrayidx110.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %172 = load i8, i8* %arrayidx110.i.1.1, align 1
  %call111.i.1.1 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #3
  %arrayidx113.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call111.i.1.1, i8* %arrayidx113.i.1.1, align 1
  %arrayidx128.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep92.1166.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 0
  %173 = load i8, i8* %scevgep92.1166.1, align 1
  %conv126.i.1167.1 = zext i8 %173 to i32
  %174 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.1168.1 = zext i8 %174 to i32
  %xor130.i.1169.1 = xor i32 %conv129.i.1168.1, %conv126.i.1167.1
  %conv131.i.1170.1 = trunc i32 %xor130.i.1169.1 to i8
  store i8 %conv131.i.1170.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep92.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 2
  %175 = load i8, i8* %scevgep92.2.1.1, align 1
  %conv126.i.2.1.1 = zext i8 %175 to i32
  %176 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.2.1.1 = zext i8 %176 to i32
  %xor130.i.2.1.1 = xor i32 %conv129.i.2.1.1, %conv126.i.2.1.1
  %conv131.i.2.1.1 = trunc i32 %xor130.i.2.1.1 to i8
  store i8 %conv131.i.2.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep91.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep91.1.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %178 = load i8, i8* %arrayidx108.i.2.1, align 1
  %arrayidx110.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %179 = load i8, i8* %arrayidx110.i.2.1, align 1
  %call111.i.2.1 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #3
  %arrayidx113.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call111.i.2.1, i8* %arrayidx113.i.2.1, align 1
  %arrayidx128.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep92.2175.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep92.2175.1, align 1
  %conv126.i.2176.1 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.2177.1 = zext i8 %181 to i32
  %xor130.i.2178.1 = xor i32 %conv129.i.2177.1, %conv126.i.2176.1
  %conv131.i.2179.1 = trunc i32 %xor130.i.2178.1 to i8
  store i8 %conv131.i.2179.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep92.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %177, i64 0, i64 0, i64 1
  %182 = load i8, i8* %scevgep92.1.2.1, align 1
  %conv126.i.1.2.1 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.1.2.1 = zext i8 %183 to i32
  %xor130.i.1.2.1 = xor i32 %conv129.i.1.2.1, %conv126.i.1.2.1
  %conv131.i.1.2.1 = trunc i32 %xor130.i.1.2.1 to i8
  store i8 %conv131.i.1.2.1, i8* %arrayidx128.i.2.1, align 1
  %call139.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv140.i.1 = zext i8 %call139.i.1 to i32
  %scevgep98.1314 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 0
  %scevgep99.1315 = getelementptr i8, i8* %scevgep98.1314, i64 3
  %184 = load i8, i8* %scevgep99.1315, align 1
  %conv.i.i172.i.1317 = zext i8 %184 to i32
  %conv1.i.i173.i.1318 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.1319 = xor i32 %conv1.i.i173.i.1318, %conv.i.i172.i.1317
  %conv2.i.i175.i.1320 = trunc i32 %xor.i.i174.i.1319 to i8
  %scevgep98.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 1
  %scevgep99.1.1 = getelementptr i8, i8* %scevgep98.1.1, i64 3
  %185 = load i8, i8* %scevgep99.1.1, align 1
  %conv.i.i172.i.1.1 = zext i8 %185 to i32
  %conv1.i.i173.i.1.1 = zext i8 %conv2.i.i175.i.1320 to i32
  %xor.i.i174.i.1.1 = xor i32 %conv1.i.i173.i.1.1, %conv.i.i172.i.1.1
  %conv2.i.i175.i.1.1 = trunc i32 %xor.i.i174.i.1.1 to i8
  %scevgep98.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %96, i64 0, i64 0, i64 2
  %scevgep99.2.1 = getelementptr i8, i8* %scevgep98.2.1, i64 3
  %186 = load i8, i8* %scevgep99.2.1, align 1
  %conv.i.i172.i.2.1 = zext i8 %186 to i32
  %conv1.i.i173.i.2.1 = zext i8 %conv2.i.i175.i.1.1 to i32
  %xor.i.i174.i.2.1 = xor i32 %conv1.i.i173.i.2.1, %conv.i.i172.i.2.1
  %conv2.i.i175.i.2.1 = trunc i32 %xor.i.i174.i.2.1 to i8
  %conv142.i.1 = zext i8 %conv2.i.i175.i.2.1 to i32
  %cmp143.i.1 = icmp eq i32 %conv140.i.1, %conv142.i.1
  call void @assert(i1 zeroext %cmp143.i.1) #3
  %scevgep26 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2, i64 0
  %187 = load i8, i8* %scevgep26, align 1
  store i8 %187, i8* %y, align 1
  %scevgep29.1 = getelementptr i8, i8* %scevgep26, i64 1
  %188 = load i8, i8* %scevgep29.1, align 1
  %scevgep30.1 = getelementptr i8, i8* %y, i64 1
  store i8 %188, i8* %scevgep30.1, align 1
  %scevgep29.2 = getelementptr i8, i8* %scevgep26, i64 2
  %189 = load i8, i8* %scevgep29.2, align 1
  %scevgep30.2 = getelementptr i8, i8* %y, i64 2
  store i8 %189, i8* %scevgep30.2, align 1
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
  %r.i.i = alloca [3 x [3 x i8]], align 1
  %s.i.i = alloca [3 x [3 x i8]], align 1
  %p0.i.i = alloca [3 x [3 x i8]], align 1
  %p1.i.i = alloca [3 x [3 x i8]], align 1
  %z.i.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x i8], align 1
  %w.i = alloca [3 x i8], align 1
  %u.i = alloca [3 x i8], align 1
  %v.i = alloca [3 x i8], align 1
  %m.i = alloca [3 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep396.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep396.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep396.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep396.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %3 = load i8, i8* %x, align 1
  %scevgep392.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep392.1, align 1
  %conv.i.i.i.1 = zext i8 %4 to i32
  %conv1.i.i.i.1 = zext i8 %3 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep392.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep392.2, align 1
  %conv.i.i.i.2 = zext i8 %5 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %6 = load i8, i8* %x, align 1
  %call.i.i17 = call zeroext i8 @square(i8 zeroext %6) #3
  %scevgep388 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i17, i8* %scevgep388, align 1
  %scevgep387.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep387.1, align 1
  %call.i.i17.1 = call zeroext i8 @square(i8 zeroext %7) #3
  %scevgep388.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i17.1, i8* %scevgep388.1, align 1
  %scevgep387.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep387.2, align 1
  %call.i.i17.2 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep388.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i.i17.2, i8* %scevgep388.2, align 1
  %arraydecay4.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i20 = zext i8 %call.i28.i to i32
  %scevgep383 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %9 = load i8, i8* %scevgep383, align 1
  %scevgep383.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %10 = load i8, i8* %scevgep383.1, align 1
  %conv.i.i.i.i.1 = zext i8 %10 to i32
  %conv1.i.i.i.i.1 = zext i8 %9 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep383.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %11 = load i8, i8* %scevgep383.2, align 1
  %conv.i.i.i.i.2 = zext i8 %11 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %conv2.i.i21 = zext i8 %conv2.i.i.i.i.2 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i20, %conv2.i.i21
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %12 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i = zext i8 %12 to i32
  %xor.i.i22 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i22 to i8
  store i8 %conv10.i.i, i8* %arraydecay4.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep379 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep379, align 1
  %conv13.i.i = zext i8 %13 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep379, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %14 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.1 = zext i8 %14 to i32
  %xor.i.i22.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i22.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay4.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep379.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %15 = load i8, i8* %scevgep379.1, align 1
  %conv13.i.i.1 = zext i8 %15 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep379.1, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep375 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %16 = load i8, i8* %scevgep375, align 1
  %scevgep375.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %17 = load i8, i8* %scevgep375.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %17 to i32
  %conv1.i.i32.i.i.1 = zext i8 %16 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep375.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %18 = load i8, i8* %scevgep375.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %18 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.2 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep371 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %19 = load i8, i8* %scevgep371, align 1
  %scevgep371.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %20 = load i8, i8* %scevgep371.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %20 to i32
  %conv1.i.i.i49.i.1 = zext i8 %19 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %scevgep371.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %21 = load i8, i8* %scevgep371.2, align 1
  %conv.i.i.i48.i.2 = zext i8 %21 to i32
  %conv1.i.i.i49.i.2 = zext i8 %conv2.i.i.i51.i.1 to i32
  %xor.i.i.i50.i.2 = xor i32 %conv1.i.i.i49.i.2, %conv.i.i.i48.i.2
  %conv2.i.i.i51.i.2 = trunc i32 %xor.i.i.i50.i.2 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.2 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %22 = load i8, i8* %x, align 1
  %scevgep367.1 = getelementptr i8, i8* %x, i64 1
  %23 = load i8, i8* %scevgep367.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %23 to i32
  %conv1.i.i156.i.i.1 = zext i8 %22 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %scevgep367.2 = getelementptr i8, i8* %x, i64 2
  %24 = load i8, i8* %scevgep367.2, align 1
  %conv.i.i155.i.i.2 = zext i8 %24 to i32
  %conv1.i.i156.i.i.2 = zext i8 %conv2.i.i158.i.i.1 to i32
  %xor.i.i157.i.i.2 = xor i32 %conv1.i.i156.i.i.2, %conv.i.i155.i.i.2
  %conv2.i.i158.i.i.2 = trunc i32 %xor.i.i157.i.i.2 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.2 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %scevgep351 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep351352 = bitcast i8* %scevgep351 to [3 x [3 x i8]]*
  %scevgep358 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep358359 = bitcast i8* %scevgep358 to [3 x [3 x i8]]*
  %call16.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i, i8* %scevgep351, align 1
  %25 = load i8, i8* %scevgep351, align 1
  store i8 %25, i8* %scevgep358, align 1
  %scevgep356 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep351352, i64 0, i64 0, i64 1
  %scevgep363 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep358359, i64 0, i64 1, i64 0
  %call16.i.i.1695 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1695, i8* %scevgep356, align 1
  %26 = load i8, i8* %scevgep356, align 1
  store i8 %26, i8* %scevgep363, align 1
  %scevgep354 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep351352, i64 0, i64 1, i64 1
  %scevgep361 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep358359, i64 0, i64 1, i64 1
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1, i8* %scevgep354, align 1
  %27 = load i8, i8* %scevgep354, align 1
  store i8 %27, i8* %scevgep361, align 1
  %scevgep328.1 = getelementptr i8, i8* %x, i64 1
  %28 = load i8, i8* %scevgep328.1, align 1
  %conv44.i.i.1 = zext i8 %28 to i32
  %scevgep331.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %29 = load i8, i8* %scevgep331.1, align 1
  %conv49.i.i.1 = zext i8 %29 to i32
  %xor.i62.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i62.i.1 to i8
  %scevgep335.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep335.1, align 1
  %30 = load i8, i8* %arraydecay5.i, align 1
  %conv57.i.i.1 = zext i8 %30 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep332.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep332.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %31) #3
  %scevgep339.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep339.1, align 1
  %32 = load i8, i8* %arraydecay5.i, align 1
  %scevgep336.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %33 = load i8, i8* %scevgep336.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #3
  %scevgep343.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep343.1, align 1
  %scevgep340.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep340.1, align 1
  %conv84.i.i.1 = zext i8 %34 to i32
  %scevgep344.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep344.1, align 1
  %conv89.i.i.1 = zext i8 %35 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep347.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep347.1, align 1
  %scevgep328.2 = getelementptr i8, i8* %x, i64 2
  %36 = load i8, i8* %scevgep328.2, align 1
  %conv44.i.i.2 = zext i8 %36 to i32
  %scevgep331.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep331.2, align 1
  %conv49.i.i.2 = zext i8 %37 to i32
  %xor.i62.i.2 = xor i32 %conv44.i.i.2, %conv49.i.i.2
  %conv50.i.i.2 = trunc i32 %xor.i62.i.2 to i8
  %scevgep335.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2, i8* %scevgep335.2, align 1
  %38 = load i8, i8* %arraydecay5.i, align 1
  %conv57.i.i.2 = zext i8 %38 to i32
  %xor58.i.i.2 = xor i32 %conv57.i.i.2, 1
  %conv59.i.i.2 = trunc i32 %xor58.i.i.2 to i8
  %scevgep332.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep332.2, align 1
  %call64.i.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2, i8 zeroext %39) #3
  %scevgep339.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2, i8* %scevgep339.2, align 1
  %40 = load i8, i8* %arraydecay5.i, align 1
  %scevgep336.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep336.2, align 1
  %call75.i.i.2 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %scevgep343.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2, i8* %scevgep343.2, align 1
  %scevgep340.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %42 = load i8, i8* %scevgep340.2, align 1
  %conv84.i.i.2 = zext i8 %42 to i32
  %scevgep344.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep344.2, align 1
  %conv89.i.i.2 = zext i8 %43 to i32
  %xor90.i.i.2 = xor i32 %conv84.i.i.2, %conv89.i.i.2
  %conv91.i.i.2 = trunc i32 %xor90.i.i.2 to i8
  %scevgep347.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2, i8* %scevgep347.2, align 1
  %scevgep330 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep330 to [3 x [3 x i8]]*
  %scevgep334 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep334 to [3 x [3 x i8]]*
  %scevgep338 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep338 to [3 x [3 x i8]]*
  %scevgep342 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep342 to [3 x [3 x i8]]*
  %scevgep346 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep346 to [3 x [3 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %49 = load i8, i8* %x, align 1
  %conv44.i.i.1634 = zext i8 %49 to i32
  %scevgep331.1635 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep331.1635, align 1
  %conv49.i.i.1636 = zext i8 %50 to i32
  %xor.i62.i.1637 = xor i32 %conv44.i.i.1634, %conv49.i.i.1636
  %conv50.i.i.1638 = trunc i32 %xor.i62.i.1637 to i8
  %scevgep335.1639 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1638, i8* %scevgep335.1639, align 1
  %51 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1640 = zext i8 %51 to i32
  %xor58.i.i.1641 = xor i32 %conv57.i.i.1640, 1
  %conv59.i.i.1642 = trunc i32 %xor58.i.i.1641 to i8
  %scevgep332.1643 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep332.1643, align 1
  %call64.i.i.1644 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1642, i8 zeroext %52) #3
  %scevgep339.1645 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1644, i8* %scevgep339.1645, align 1
  %53 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep336.1646 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep336.1646, align 1
  %call75.i.i.1647 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #3
  %scevgep343.1648 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1647, i8* %scevgep343.1648, align 1
  %scevgep340.1649 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %55 = load i8, i8* %scevgep340.1649, align 1
  %conv84.i.i.1650 = zext i8 %55 to i32
  %scevgep344.1651 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep344.1651, align 1
  %conv89.i.i.1652 = zext i8 %56 to i32
  %xor90.i.i.1653 = xor i32 %conv84.i.i.1650, %conv89.i.i.1652
  %conv91.i.i.1654 = trunc i32 %xor90.i.i.1653 to i8
  %scevgep347.1655 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1654, i8* %scevgep347.1655, align 1
  %scevgep328.2.1 = getelementptr i8, i8* %x, i64 2
  %57 = load i8, i8* %scevgep328.2.1, align 1
  %conv44.i.i.2.1 = zext i8 %57 to i32
  %scevgep331.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 2
  %58 = load i8, i8* %scevgep331.2.1, align 1
  %conv49.i.i.2.1 = zext i8 %58 to i32
  %xor.i62.i.2.1 = xor i32 %conv44.i.i.2.1, %conv49.i.i.2.1
  %conv50.i.i.2.1 = trunc i32 %xor.i62.i.2.1 to i8
  %scevgep335.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.1, i8* %scevgep335.2.1, align 1
  %59 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.2.1 = zext i8 %59 to i32
  %xor58.i.i.2.1 = xor i32 %conv57.i.i.2.1, 1
  %conv59.i.i.2.1 = trunc i32 %xor58.i.i.2.1 to i8
  %scevgep332.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 0, i64 2
  %60 = load i8, i8* %scevgep332.2.1, align 1
  %call64.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.1, i8 zeroext %60) #3
  %scevgep339.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.1, i8* %scevgep339.2.1, align 1
  %61 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep336.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 0, i64 2
  %62 = load i8, i8* %scevgep336.2.1, align 1
  %call75.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #3
  %scevgep343.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.1, i8* %scevgep343.2.1, align 1
  %scevgep340.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 2
  %63 = load i8, i8* %scevgep340.2.1, align 1
  %conv84.i.i.2.1 = zext i8 %63 to i32
  %scevgep344.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  %64 = load i8, i8* %scevgep344.2.1, align 1
  %conv89.i.i.2.1 = zext i8 %64 to i32
  %xor90.i.i.2.1 = xor i32 %conv84.i.i.2.1, %conv89.i.i.2.1
  %conv91.i.i.2.1 = trunc i32 %xor90.i.i.2.1 to i8
  %scevgep347.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.1, i8* %scevgep347.2.1, align 1
  %scevgep330.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep330.1 to [3 x [3 x i8]]*
  %scevgep334.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %45, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep334.1 to [3 x [3 x i8]]*
  %scevgep338.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep338.1 to [3 x [3 x i8]]*
  %scevgep342.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 1, i64 0
  %68 = bitcast i8* %scevgep342.1 to [3 x [3 x i8]]*
  %scevgep346.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep346.1 to [3 x [3 x i8]]*
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %70 = load i8, i8* %x, align 1
  %conv44.i.i.2660 = zext i8 %70 to i32
  %scevgep331.2661 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 0
  %71 = load i8, i8* %scevgep331.2661, align 1
  %conv49.i.i.2662 = zext i8 %71 to i32
  %xor.i62.i.2663 = xor i32 %conv44.i.i.2660, %conv49.i.i.2662
  %conv50.i.i.2664 = trunc i32 %xor.i62.i.2663 to i8
  %scevgep335.2665 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.2664, i8* %scevgep335.2665, align 1
  %72 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.2666 = zext i8 %72 to i32
  %xor58.i.i.2667 = xor i32 %conv57.i.i.2666, 1
  %conv59.i.i.2668 = trunc i32 %xor58.i.i.2667 to i8
  %scevgep332.2669 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep332.2669, align 1
  %call64.i.i.2670 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2668, i8 zeroext %73) #3
  %scevgep339.2671 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 0
  store i8 %call64.i.i.2670, i8* %scevgep339.2671, align 1
  %74 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep336.2672 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 0
  %75 = load i8, i8* %scevgep336.2672, align 1
  %call75.i.i.2673 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #3
  %scevgep343.2674 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 0
  store i8 %call75.i.i.2673, i8* %scevgep343.2674, align 1
  %scevgep340.2675 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep340.2675, align 1
  %conv84.i.i.2676 = zext i8 %76 to i32
  %scevgep344.2677 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep344.2677, align 1
  %conv89.i.i.2678 = zext i8 %77 to i32
  %xor90.i.i.2679 = xor i32 %conv84.i.i.2676, %conv89.i.i.2678
  %conv91.i.i.2680 = trunc i32 %xor90.i.i.2679 to i8
  %scevgep347.2681 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.2680, i8* %scevgep347.2681, align 1
  %scevgep328.1.2 = getelementptr i8, i8* %x, i64 1
  %78 = load i8, i8* %scevgep328.1.2, align 1
  %conv44.i.i.1.2 = zext i8 %78 to i32
  %scevgep331.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 1
  %79 = load i8, i8* %scevgep331.1.2, align 1
  %conv49.i.i.1.2 = zext i8 %79 to i32
  %xor.i62.i.1.2 = xor i32 %conv44.i.i.1.2, %conv49.i.i.1.2
  %conv50.i.i.1.2 = trunc i32 %xor.i62.i.1.2 to i8
  %scevgep335.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.2, i8* %scevgep335.1.2, align 1
  %80 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.1.2 = zext i8 %80 to i32
  %xor58.i.i.1.2 = xor i32 %conv57.i.i.1.2, 1
  %conv59.i.i.1.2 = trunc i32 %xor58.i.i.1.2 to i8
  %scevgep332.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %65, i64 0, i64 0, i64 1
  %81 = load i8, i8* %scevgep332.1.2, align 1
  %call64.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.2, i8 zeroext %81) #3
  %scevgep339.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.2, i8* %scevgep339.1.2, align 1
  %82 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep336.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %66, i64 0, i64 0, i64 1
  %83 = load i8, i8* %scevgep336.1.2, align 1
  %call75.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #3
  %scevgep343.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.2, i8* %scevgep343.1.2, align 1
  %scevgep340.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %67, i64 0, i64 0, i64 1
  %84 = load i8, i8* %scevgep340.1.2, align 1
  %conv84.i.i.1.2 = zext i8 %84 to i32
  %scevgep344.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %68, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep344.1.2, align 1
  %conv89.i.i.1.2 = zext i8 %85 to i32
  %xor90.i.i.1.2 = xor i32 %conv84.i.i.1.2, %conv89.i.i.1.2
  %conv91.i.i.1.2 = trunc i32 %xor90.i.i.1.2 to i8
  %scevgep347.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %69, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.2, i8* %scevgep347.1.2, align 1
  %86 = load i8, i8* %arraydecay5.i, align 1
  %87 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  store i8 %call111.i.i, i8* %arraydecay6.i, align 1
  %scevgep318.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %88 = load i8, i8* %scevgep318.1, align 1
  %conv126.i.i.1 = zext i8 %88 to i32
  %89 = load i8, i8* %arraydecay6.i, align 1
  %conv129.i.i.1 = zext i8 %89 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep318.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %90 = load i8, i8* %scevgep318.2, align 1
  %conv126.i.i.2 = zext i8 %90 to i32
  %91 = load i8, i8* %arraydecay6.i, align 1
  %conv129.i.i.2 = zext i8 %91 to i32
  %xor130.i.i.2 = xor i32 %conv129.i.i.2, %conv126.i.i.2
  %conv131.i.i.2 = trunc i32 %xor130.i.i.2 to i8
  store i8 %conv131.i.i.2, i8* %arraydecay6.i, align 1
  %scevgep317 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep317 to [3 x [3 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %93 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %94 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep318.1616 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 0, i64 0
  %95 = load i8, i8* %scevgep318.1616, align 1
  %conv126.i.i.1617 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1618 = zext i8 %96 to i32
  %xor130.i.i.1619 = xor i32 %conv129.i.i.1618, %conv126.i.i.1617
  %conv131.i.i.1620 = trunc i32 %xor130.i.i.1619 to i8
  store i8 %conv131.i.i.1620, i8* %arrayidx128.i.i.1, align 1
  %scevgep318.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 0, i64 2
  %97 = load i8, i8* %scevgep318.2.1, align 1
  %conv126.i.i.2.1 = zext i8 %97 to i32
  %98 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.2.1 = zext i8 %98 to i32
  %xor130.i.i.2.1 = xor i32 %conv129.i.i.2.1, %conv126.i.i.2.1
  %conv131.i.i.2.1 = trunc i32 %xor130.i.i.2.1 to i8
  store i8 %conv131.i.i.2.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep317.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep317.1 to [3 x [3 x i8]]*
  %arrayidx108.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %100 = load i8, i8* %arrayidx108.i.i.2, align 1
  %arrayidx110.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %101 = load i8, i8* %arrayidx110.i.i.2, align 1
  %call111.i.i.2 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101) #3
  %arrayidx113.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  store i8 %call111.i.i.2, i8* %arrayidx113.i.i.2, align 1
  %arrayidx128.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %scevgep318.2625 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %99, i64 0, i64 0, i64 0
  %102 = load i8, i8* %scevgep318.2625, align 1
  %conv126.i.i.2626 = zext i8 %102 to i32
  %103 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.2627 = zext i8 %103 to i32
  %xor130.i.i.2628 = xor i32 %conv129.i.i.2627, %conv126.i.i.2626
  %conv131.i.i.2629 = trunc i32 %xor130.i.i.2628 to i8
  store i8 %conv131.i.i.2629, i8* %arrayidx128.i.i.2, align 1
  %scevgep318.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %99, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep318.1.2, align 1
  %conv126.i.i.1.2 = zext i8 %104 to i32
  %105 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.1.2 = zext i8 %105 to i32
  %xor130.i.i.1.2 = xor i32 %conv129.i.i.1.2, %conv126.i.i.1.2
  %conv131.i.i.1.2 = trunc i32 %xor130.i.i.1.2 to i8
  store i8 %conv131.i.i.1.2, i8* %arrayidx128.i.i.2, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep308 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %106 = load i8, i8* %scevgep308, align 1
  %scevgep308.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %107 = load i8, i8* %scevgep308.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %107 to i32
  %conv1.i.i173.i.i.1 = zext i8 %106 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %scevgep308.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %108 = load i8, i8* %scevgep308.2, align 1
  %conv.i.i172.i.i.2 = zext i8 %108 to i32
  %conv1.i.i173.i.i.2 = zext i8 %conv2.i.i175.i.i.1 to i32
  %xor.i.i174.i.i.2 = xor i32 %conv1.i.i173.i.i.2, %conv.i.i172.i.i.2
  %conv2.i.i175.i.i.2 = trunc i32 %xor.i.i174.i.i.2 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.2 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep303 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %109 = load i8, i8* %scevgep303, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %109) #3
  %scevgep304 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep304, align 1
  %scevgep303.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %110 = load i8, i8* %scevgep303.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %110) #3
  %scevgep304.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep304.1, align 1
  %scevgep303.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %111 = load i8, i8* %scevgep303.2, align 1
  %call.i71.i.2 = call zeroext i8 @exp4(i8 zeroext %111) #3
  %scevgep304.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i71.i.2, i8* %scevgep304.2, align 1
  %arraydecay9.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep299 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %112 = load i8, i8* %scevgep299, align 1
  %scevgep299.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %113 = load i8, i8* %scevgep299.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %113 to i32
  %conv1.i.i.i100.i.1 = zext i8 %112 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %scevgep299.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %114 = load i8, i8* %scevgep299.2, align 1
  %conv.i.i.i99.i.2 = zext i8 %114 to i32
  %conv1.i.i.i100.i.2 = zext i8 %conv2.i.i.i102.i.1 to i32
  %xor.i.i.i101.i.2 = xor i32 %conv1.i.i.i100.i.2, %conv.i.i.i99.i.2
  %conv2.i.i.i102.i.2 = trunc i32 %xor.i.i.i101.i.2 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.2 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %115 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %115 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep295 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %116 = load i8, i8* %scevgep295, align 1
  %conv13.i119.i = zext i8 %116 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep295, align 1
  %call7.i111.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.1 = zext i8 %call7.i111.i.1 to i32
  %117 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.1 = zext i8 %117 to i32
  %xor.i114.i.1 = xor i32 %conv9.i113.i.1, %conv8.i112.i.1
  %conv10.i115.i.1 = trunc i32 %xor.i114.i.1 to i8
  store i8 %conv10.i115.i.1, i8* %arraydecay9.i, align 1
  %conv11.i116.i.1 = zext i8 %call7.i111.i.1 to i32
  %scevgep295.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %118 = load i8, i8* %scevgep295.1, align 1
  %conv13.i119.i.1 = zext i8 %118 to i32
  %xor14.i120.i.1 = xor i32 %conv13.i119.i.1, %conv11.i116.i.1
  %conv15.i121.i.1 = trunc i32 %xor14.i120.i.1 to i8
  store i8 %conv15.i121.i.1, i8* %scevgep295.1, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep291 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %119 = load i8, i8* %scevgep291, align 1
  %scevgep291.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %120 = load i8, i8* %scevgep291.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %120 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %119 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %scevgep291.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %121 = load i8, i8* %scevgep291.2, align 1
  %conv.i.i31.i131.i.2 = zext i8 %121 to i32
  %conv1.i.i32.i132.i.2 = zext i8 %conv2.i.i34.i134.i.1 to i32
  %xor.i.i33.i133.i.2 = xor i32 %conv1.i.i32.i132.i.2, %conv.i.i31.i131.i.2
  %conv2.i.i34.i134.i.2 = trunc i32 %xor.i.i33.i133.i.2 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.2 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %call.i171.i = call zeroext i8 (...) @rand() #3
  %call1.i172.i = call zeroext i8 (...) @rand() #3
  %conv.i173.i = zext i8 %call.i171.i to i32
  %scevgep287 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %122 = load i8, i8* %scevgep287, align 1
  %scevgep287.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %123 = load i8, i8* %scevgep287.1, align 1
  %conv.i.i.i179.i.1 = zext i8 %123 to i32
  %conv1.i.i.i180.i.1 = zext i8 %122 to i32
  %xor.i.i.i181.i.1 = xor i32 %conv1.i.i.i180.i.1, %conv.i.i.i179.i.1
  %conv2.i.i.i182.i.1 = trunc i32 %xor.i.i.i181.i.1 to i8
  %scevgep287.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %124 = load i8, i8* %scevgep287.2, align 1
  %conv.i.i.i179.i.2 = zext i8 %124 to i32
  %conv1.i.i.i180.i.2 = zext i8 %conv2.i.i.i182.i.1 to i32
  %xor.i.i.i181.i.2 = xor i32 %conv1.i.i.i180.i.2, %conv.i.i.i179.i.2
  %conv2.i.i.i182.i.2 = trunc i32 %xor.i.i.i181.i.2 to i8
  %conv3.i185.i = zext i8 %conv2.i.i.i182.i.2 to i32
  %cmp.i186.i = icmp eq i32 %conv.i173.i, %conv3.i185.i
  call void @assume(i1 zeroext %cmp.i186.i) #3
  %conv5.i187.i = zext i8 %call1.i172.i to i32
  %scevgep283 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %125 = load i8, i8* %scevgep283, align 1
  %scevgep283.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %126 = load i8, i8* %scevgep283.1, align 1
  %conv.i.i155.i194.i.1 = zext i8 %126 to i32
  %conv1.i.i156.i195.i.1 = zext i8 %125 to i32
  %xor.i.i157.i196.i.1 = xor i32 %conv1.i.i156.i195.i.1, %conv.i.i155.i194.i.1
  %conv2.i.i158.i197.i.1 = trunc i32 %xor.i.i157.i196.i.1 to i8
  %scevgep283.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %127 = load i8, i8* %scevgep283.2, align 1
  %conv.i.i155.i194.i.2 = zext i8 %127 to i32
  %conv1.i.i156.i195.i.2 = zext i8 %conv2.i.i158.i197.i.1 to i32
  %xor.i.i157.i196.i.2 = xor i32 %conv1.i.i156.i195.i.2, %conv.i.i155.i194.i.2
  %conv2.i.i158.i197.i.2 = trunc i32 %xor.i.i157.i196.i.2 to i8
  %conv7.i200.i = zext i8 %conv2.i.i158.i197.i.2 to i32
  %cmp8.i201.i = icmp eq i32 %conv5.i187.i, %conv7.i200.i
  call void @assume(i1 zeroext %cmp8.i201.i) #3
  %scevgep267 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep267268 = bitcast i8* %scevgep267 to [3 x [3 x i8]]*
  %scevgep274 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep274275 = bitcast i8* %scevgep274 to [3 x [3 x i8]]*
  %call16.i209.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i209.i, i8* %scevgep267, align 1
  %128 = load i8, i8* %scevgep267, align 1
  store i8 %128, i8* %scevgep274, align 1
  %scevgep272 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep267268, i64 0, i64 0, i64 1
  %scevgep279 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep274275, i64 0, i64 1, i64 0
  %call16.i209.i.1692 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i209.i.1692, i8* %scevgep272, align 1
  %129 = load i8, i8* %scevgep272, align 1
  store i8 %129, i8* %scevgep279, align 1
  %scevgep270 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep267268, i64 0, i64 1, i64 1
  %scevgep277 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep274275, i64 0, i64 1, i64 1
  %call16.i209.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i209.i.1, i8* %scevgep270, align 1
  %130 = load i8, i8* %scevgep270, align 1
  store i8 %130, i8* %scevgep277, align 1
  %scevgep244.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %131 = load i8, i8* %scevgep244.1, align 1
  %conv44.i236.i.1 = zext i8 %131 to i32
  %scevgep247.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %132 = load i8, i8* %scevgep247.1, align 1
  %conv49.i241.i.1 = zext i8 %132 to i32
  %xor.i242.i.1 = xor i32 %conv44.i236.i.1, %conv49.i241.i.1
  %conv50.i243.i.1 = trunc i32 %xor.i242.i.1 to i8
  %scevgep251.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i243.i.1, i8* %scevgep251.1, align 1
  %133 = load i8, i8* %arraydecay10.i, align 1
  %conv57.i250.i.1 = zext i8 %133 to i32
  %xor58.i251.i.1 = xor i32 %conv57.i250.i.1, 1
  %conv59.i252.i.1 = trunc i32 %xor58.i251.i.1 to i8
  %scevgep248.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %134 = load i8, i8* %scevgep248.1, align 1
  %call64.i257.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1, i8 zeroext %134) #3
  %scevgep255.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i257.i.1, i8* %scevgep255.1, align 1
  %135 = load i8, i8* %arraydecay10.i, align 1
  %scevgep252.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %136 = load i8, i8* %scevgep252.1, align 1
  %call75.i268.i.1 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  %scevgep259.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i268.i.1, i8* %scevgep259.1, align 1
  %scevgep256.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep256.1, align 1
  %conv84.i277.i.1 = zext i8 %137 to i32
  %scevgep260.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep260.1, align 1
  %conv89.i282.i.1 = zext i8 %138 to i32
  %xor90.i283.i.1 = xor i32 %conv84.i277.i.1, %conv89.i282.i.1
  %conv91.i284.i.1 = trunc i32 %xor90.i283.i.1 to i8
  %scevgep263.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i284.i.1, i8* %scevgep263.1, align 1
  %scevgep244.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %139 = load i8, i8* %scevgep244.2, align 1
  %conv44.i236.i.2 = zext i8 %139 to i32
  %scevgep247.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %140 = load i8, i8* %scevgep247.2, align 1
  %conv49.i241.i.2 = zext i8 %140 to i32
  %xor.i242.i.2 = xor i32 %conv44.i236.i.2, %conv49.i241.i.2
  %conv50.i243.i.2 = trunc i32 %xor.i242.i.2 to i8
  %scevgep251.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i243.i.2, i8* %scevgep251.2, align 1
  %141 = load i8, i8* %arraydecay10.i, align 1
  %conv57.i250.i.2 = zext i8 %141 to i32
  %xor58.i251.i.2 = xor i32 %conv57.i250.i.2, 1
  %conv59.i252.i.2 = trunc i32 %xor58.i251.i.2 to i8
  %scevgep248.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep248.2, align 1
  %call64.i257.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2, i8 zeroext %142) #3
  %scevgep255.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i257.i.2, i8* %scevgep255.2, align 1
  %143 = load i8, i8* %arraydecay10.i, align 1
  %scevgep252.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %144 = load i8, i8* %scevgep252.2, align 1
  %call75.i268.i.2 = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144) #3
  %scevgep259.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i268.i.2, i8* %scevgep259.2, align 1
  %scevgep256.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %145 = load i8, i8* %scevgep256.2, align 1
  %conv84.i277.i.2 = zext i8 %145 to i32
  %scevgep260.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %146 = load i8, i8* %scevgep260.2, align 1
  %conv89.i282.i.2 = zext i8 %146 to i32
  %xor90.i283.i.2 = xor i32 %conv84.i277.i.2, %conv89.i282.i.2
  %conv91.i284.i.2 = trunc i32 %xor90.i283.i.2 to i8
  %scevgep263.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i284.i.2, i8* %scevgep263.2, align 1
  %scevgep246 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep246 to [3 x [3 x i8]]*
  %scevgep250 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep250 to [3 x [3 x i8]]*
  %scevgep254 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %149 = bitcast i8* %scevgep254 to [3 x [3 x i8]]*
  %scevgep258 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep258 to [3 x [3 x i8]]*
  %scevgep262 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %151 = bitcast i8* %scevgep262 to [3 x [3 x i8]]*
  %arrayidx56.i249.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %arrayidx70.i263.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %scevgep244.1562 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %152 = load i8, i8* %scevgep244.1562, align 1
  %conv44.i236.i.1563 = zext i8 %152 to i32
  %scevgep247.1564 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  %153 = load i8, i8* %scevgep247.1564, align 1
  %conv49.i241.i.1565 = zext i8 %153 to i32
  %xor.i242.i.1566 = xor i32 %conv44.i236.i.1563, %conv49.i241.i.1565
  %conv50.i243.i.1567 = trunc i32 %xor.i242.i.1566 to i8
  %scevgep251.1568 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 0
  store i8 %conv50.i243.i.1567, i8* %scevgep251.1568, align 1
  %154 = load i8, i8* %arrayidx56.i249.i.1, align 1
  %conv57.i250.i.1569 = zext i8 %154 to i32
  %xor58.i251.i.1570 = xor i32 %conv57.i250.i.1569, 1
  %conv59.i252.i.1571 = trunc i32 %xor58.i251.i.1570 to i8
  %scevgep248.1572 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep248.1572, align 1
  %call64.i257.i.1573 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1571, i8 zeroext %155) #3
  %scevgep255.1574 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 0
  store i8 %call64.i257.i.1573, i8* %scevgep255.1574, align 1
  %156 = load i8, i8* %arrayidx70.i263.i.1, align 1
  %scevgep252.1575 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 0
  %157 = load i8, i8* %scevgep252.1575, align 1
  %call75.i268.i.1576 = call zeroext i8 @mult(i8 zeroext %156, i8 zeroext %157) #3
  %scevgep259.1577 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  store i8 %call75.i268.i.1576, i8* %scevgep259.1577, align 1
  %scevgep256.1578 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep256.1578, align 1
  %conv84.i277.i.1579 = zext i8 %158 to i32
  %scevgep260.1580 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep260.1580, align 1
  %conv89.i282.i.1581 = zext i8 %159 to i32
  %xor90.i283.i.1582 = xor i32 %conv84.i277.i.1579, %conv89.i282.i.1581
  %conv91.i284.i.1583 = trunc i32 %xor90.i283.i.1582 to i8
  %scevgep263.1584 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 0
  store i8 %conv91.i284.i.1583, i8* %scevgep263.1584, align 1
  %scevgep244.2.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %160 = load i8, i8* %scevgep244.2.1, align 1
  %conv44.i236.i.2.1 = zext i8 %160 to i32
  %scevgep247.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 2
  %161 = load i8, i8* %scevgep247.2.1, align 1
  %conv49.i241.i.2.1 = zext i8 %161 to i32
  %xor.i242.i.2.1 = xor i32 %conv44.i236.i.2.1, %conv49.i241.i.2.1
  %conv50.i243.i.2.1 = trunc i32 %xor.i242.i.2.1 to i8
  %scevgep251.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 2
  store i8 %conv50.i243.i.2.1, i8* %scevgep251.2.1, align 1
  %162 = load i8, i8* %arrayidx56.i249.i.1, align 1
  %conv57.i250.i.2.1 = zext i8 %162 to i32
  %xor58.i251.i.2.1 = xor i32 %conv57.i250.i.2.1, 1
  %conv59.i252.i.2.1 = trunc i32 %xor58.i251.i.2.1 to i8
  %scevgep248.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 2
  %163 = load i8, i8* %scevgep248.2.1, align 1
  %call64.i257.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2.1, i8 zeroext %163) #3
  %scevgep255.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 2
  store i8 %call64.i257.i.2.1, i8* %scevgep255.2.1, align 1
  %164 = load i8, i8* %arrayidx70.i263.i.1, align 1
  %scevgep252.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 2
  %165 = load i8, i8* %scevgep252.2.1, align 1
  %call75.i268.i.2.1 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165) #3
  %scevgep259.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 2
  store i8 %call75.i268.i.2.1, i8* %scevgep259.2.1, align 1
  %scevgep256.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 2
  %166 = load i8, i8* %scevgep256.2.1, align 1
  %conv84.i277.i.2.1 = zext i8 %166 to i32
  %scevgep260.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 2
  %167 = load i8, i8* %scevgep260.2.1, align 1
  %conv89.i282.i.2.1 = zext i8 %167 to i32
  %xor90.i283.i.2.1 = xor i32 %conv84.i277.i.2.1, %conv89.i282.i.2.1
  %conv91.i284.i.2.1 = trunc i32 %xor90.i283.i.2.1 to i8
  %scevgep263.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 2
  store i8 %conv91.i284.i.2.1, i8* %scevgep263.2.1, align 1
  %scevgep246.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 1, i64 0
  %168 = bitcast i8* %scevgep246.1 to [3 x [3 x i8]]*
  %scevgep250.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep250.1 to [3 x [3 x i8]]*
  %scevgep254.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep254.1 to [3 x [3 x i8]]*
  %scevgep258.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 1, i64 0
  %171 = bitcast i8* %scevgep258.1 to [3 x [3 x i8]]*
  %scevgep262.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 1, i64 0
  %172 = bitcast i8* %scevgep262.1 to [3 x [3 x i8]]*
  %arrayidx56.i249.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %arrayidx70.i263.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %scevgep244.2589 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %173 = load i8, i8* %scevgep244.2589, align 1
  %conv44.i236.i.2590 = zext i8 %173 to i32
  %scevgep247.2591 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 0
  %174 = load i8, i8* %scevgep247.2591, align 1
  %conv49.i241.i.2592 = zext i8 %174 to i32
  %xor.i242.i.2593 = xor i32 %conv44.i236.i.2590, %conv49.i241.i.2592
  %conv50.i243.i.2594 = trunc i32 %xor.i242.i.2593 to i8
  %scevgep251.2595 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %169, i64 0, i64 0, i64 0
  store i8 %conv50.i243.i.2594, i8* %scevgep251.2595, align 1
  %175 = load i8, i8* %arrayidx56.i249.i.2, align 1
  %conv57.i250.i.2596 = zext i8 %175 to i32
  %xor58.i251.i.2597 = xor i32 %conv57.i250.i.2596, 1
  %conv59.i252.i.2598 = trunc i32 %xor58.i251.i.2597 to i8
  %scevgep248.2599 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 0
  %176 = load i8, i8* %scevgep248.2599, align 1
  %call64.i257.i.2600 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2598, i8 zeroext %176) #3
  %scevgep255.2601 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 0
  store i8 %call64.i257.i.2600, i8* %scevgep255.2601, align 1
  %177 = load i8, i8* %arrayidx70.i263.i.2, align 1
  %scevgep252.2602 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %169, i64 0, i64 0, i64 0
  %178 = load i8, i8* %scevgep252.2602, align 1
  %call75.i268.i.2603 = call zeroext i8 @mult(i8 zeroext %177, i8 zeroext %178) #3
  %scevgep259.2604 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 0
  store i8 %call75.i268.i.2603, i8* %scevgep259.2604, align 1
  %scevgep256.2605 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep256.2605, align 1
  %conv84.i277.i.2606 = zext i8 %179 to i32
  %scevgep260.2607 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep260.2607, align 1
  %conv89.i282.i.2608 = zext i8 %180 to i32
  %xor90.i283.i.2609 = xor i32 %conv84.i277.i.2606, %conv89.i282.i.2608
  %conv91.i284.i.2610 = trunc i32 %xor90.i283.i.2609 to i8
  %scevgep263.2611 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %172, i64 0, i64 0, i64 0
  store i8 %conv91.i284.i.2610, i8* %scevgep263.2611, align 1
  %scevgep244.1.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %181 = load i8, i8* %scevgep244.1.2, align 1
  %conv44.i236.i.1.2 = zext i8 %181 to i32
  %scevgep247.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 1
  %182 = load i8, i8* %scevgep247.1.2, align 1
  %conv49.i241.i.1.2 = zext i8 %182 to i32
  %xor.i242.i.1.2 = xor i32 %conv44.i236.i.1.2, %conv49.i241.i.1.2
  %conv50.i243.i.1.2 = trunc i32 %xor.i242.i.1.2 to i8
  %scevgep251.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %169, i64 0, i64 0, i64 1
  store i8 %conv50.i243.i.1.2, i8* %scevgep251.1.2, align 1
  %183 = load i8, i8* %arrayidx56.i249.i.2, align 1
  %conv57.i250.i.1.2 = zext i8 %183 to i32
  %xor58.i251.i.1.2 = xor i32 %conv57.i250.i.1.2, 1
  %conv59.i252.i.1.2 = trunc i32 %xor58.i251.i.1.2 to i8
  %scevgep248.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %168, i64 0, i64 0, i64 1
  %184 = load i8, i8* %scevgep248.1.2, align 1
  %call64.i257.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1.2, i8 zeroext %184) #3
  %scevgep255.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 1
  store i8 %call64.i257.i.1.2, i8* %scevgep255.1.2, align 1
  %185 = load i8, i8* %arrayidx70.i263.i.2, align 1
  %scevgep252.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %169, i64 0, i64 0, i64 1
  %186 = load i8, i8* %scevgep252.1.2, align 1
  %call75.i268.i.1.2 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186) #3
  %scevgep259.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 1
  store i8 %call75.i268.i.1.2, i8* %scevgep259.1.2, align 1
  %scevgep256.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %170, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep256.1.2, align 1
  %conv84.i277.i.1.2 = zext i8 %187 to i32
  %scevgep260.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %171, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep260.1.2, align 1
  %conv89.i282.i.1.2 = zext i8 %188 to i32
  %xor90.i283.i.1.2 = xor i32 %conv84.i277.i.1.2, %conv89.i282.i.1.2
  %conv91.i284.i.1.2 = trunc i32 %xor90.i283.i.1.2 to i8
  %scevgep263.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %172, i64 0, i64 0, i64 1
  store i8 %conv91.i284.i.1.2, i8* %scevgep263.1.2, align 1
  %189 = load i8, i8* %arraydecay10.i, align 1
  %190 = load i8, i8* %arraydecay11.i, align 1
  %call111.i301.i = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190) #3
  store i8 %call111.i301.i, i8* %arraydecay12.i, align 1
  %scevgep234.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep234.1, align 1
  %conv126.i313.i.1 = zext i8 %191 to i32
  %192 = load i8, i8* %arraydecay12.i, align 1
  %conv129.i316.i.1 = zext i8 %192 to i32
  %xor130.i317.i.1 = xor i32 %conv129.i316.i.1, %conv126.i313.i.1
  %conv131.i318.i.1 = trunc i32 %xor130.i317.i.1 to i8
  store i8 %conv131.i318.i.1, i8* %arraydecay12.i, align 1
  %scevgep234.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %193 = load i8, i8* %scevgep234.2, align 1
  %conv126.i313.i.2 = zext i8 %193 to i32
  %194 = load i8, i8* %arraydecay12.i, align 1
  %conv129.i316.i.2 = zext i8 %194 to i32
  %xor130.i317.i.2 = xor i32 %conv129.i316.i.2, %conv126.i313.i.2
  %conv131.i318.i.2 = trunc i32 %xor130.i317.i.2 to i8
  store i8 %conv131.i318.i.2, i8* %arraydecay12.i, align 1
  %scevgep233 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %195 = bitcast i8* %scevgep233 to [3 x [3 x i8]]*
  %arrayidx108.i298.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %196 = load i8, i8* %arrayidx108.i298.i.1, align 1
  %arrayidx110.i300.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %197 = load i8, i8* %arrayidx110.i300.i.1, align 1
  %call111.i301.i.1 = call zeroext i8 @mult(i8 zeroext %196, i8 zeroext %197) #3
  %arrayidx113.i303.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call111.i301.i.1, i8* %arrayidx113.i303.i.1, align 1
  %arrayidx128.i315.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep234.1544 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %195, i64 0, i64 0, i64 0
  %198 = load i8, i8* %scevgep234.1544, align 1
  %conv126.i313.i.1545 = zext i8 %198 to i32
  %199 = load i8, i8* %arrayidx128.i315.i.1, align 1
  %conv129.i316.i.1546 = zext i8 %199 to i32
  %xor130.i317.i.1547 = xor i32 %conv129.i316.i.1546, %conv126.i313.i.1545
  %conv131.i318.i.1548 = trunc i32 %xor130.i317.i.1547 to i8
  store i8 %conv131.i318.i.1548, i8* %arrayidx128.i315.i.1, align 1
  %scevgep234.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %195, i64 0, i64 0, i64 2
  %200 = load i8, i8* %scevgep234.2.1, align 1
  %conv126.i313.i.2.1 = zext i8 %200 to i32
  %201 = load i8, i8* %arrayidx128.i315.i.1, align 1
  %conv129.i316.i.2.1 = zext i8 %201 to i32
  %xor130.i317.i.2.1 = xor i32 %conv129.i316.i.2.1, %conv126.i313.i.2.1
  %conv131.i318.i.2.1 = trunc i32 %xor130.i317.i.2.1 to i8
  store i8 %conv131.i318.i.2.1, i8* %arrayidx128.i315.i.1, align 1
  %scevgep233.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %195, i64 0, i64 1, i64 0
  %202 = bitcast i8* %scevgep233.1 to [3 x [3 x i8]]*
  %arrayidx108.i298.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %203 = load i8, i8* %arrayidx108.i298.i.2, align 1
  %arrayidx110.i300.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %204 = load i8, i8* %arrayidx110.i300.i.2, align 1
  %call111.i301.i.2 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204) #3
  %arrayidx113.i303.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  store i8 %call111.i301.i.2, i8* %arrayidx113.i303.i.2, align 1
  %arrayidx128.i315.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep234.2553 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %202, i64 0, i64 0, i64 0
  %205 = load i8, i8* %scevgep234.2553, align 1
  %conv126.i313.i.2554 = zext i8 %205 to i32
  %206 = load i8, i8* %arrayidx128.i315.i.2, align 1
  %conv129.i316.i.2555 = zext i8 %206 to i32
  %xor130.i317.i.2556 = xor i32 %conv129.i316.i.2555, %conv126.i313.i.2554
  %conv131.i318.i.2557 = trunc i32 %xor130.i317.i.2556 to i8
  store i8 %conv131.i318.i.2557, i8* %arrayidx128.i315.i.2, align 1
  %scevgep234.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %202, i64 0, i64 0, i64 1
  %207 = load i8, i8* %scevgep234.1.2, align 1
  %conv126.i313.i.1.2 = zext i8 %207 to i32
  %208 = load i8, i8* %arrayidx128.i315.i.2, align 1
  %conv129.i316.i.1.2 = zext i8 %208 to i32
  %xor130.i317.i.1.2 = xor i32 %conv129.i316.i.1.2, %conv126.i313.i.1.2
  %conv131.i318.i.1.2 = trunc i32 %xor130.i317.i.1.2 to i8
  store i8 %conv131.i318.i.1.2, i8* %arrayidx128.i315.i.2, align 1
  %call139.i324.i = call zeroext i8 @mult(i8 zeroext %call.i171.i, i8 zeroext %call1.i172.i) #3
  %conv140.i325.i = zext i8 %call139.i324.i to i32
  %scevgep224 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %209 = load i8, i8* %scevgep224, align 1
  %scevgep224.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %210 = load i8, i8* %scevgep224.1, align 1
  %conv.i.i172.i332.i.1 = zext i8 %210 to i32
  %conv1.i.i173.i333.i.1 = zext i8 %209 to i32
  %xor.i.i174.i334.i.1 = xor i32 %conv1.i.i173.i333.i.1, %conv.i.i172.i332.i.1
  %conv2.i.i175.i335.i.1 = trunc i32 %xor.i.i174.i334.i.1 to i8
  %scevgep224.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %211 = load i8, i8* %scevgep224.2, align 1
  %conv.i.i172.i332.i.2 = zext i8 %211 to i32
  %conv1.i.i173.i333.i.2 = zext i8 %conv2.i.i175.i335.i.1 to i32
  %xor.i.i174.i334.i.2 = xor i32 %conv1.i.i173.i333.i.2, %conv.i.i172.i332.i.2
  %conv2.i.i175.i335.i.2 = trunc i32 %xor.i.i174.i334.i.2 to i8
  %conv142.i338.i = zext i8 %conv2.i.i175.i335.i.2 to i32
  %cmp143.i339.i = icmp eq i32 %conv140.i325.i, %conv142.i338.i
  call void @assert(i1 zeroext %cmp143.i339.i) #3
  %scevgep219 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %212 = load i8, i8* %scevgep219, align 1
  %call.i349.i = call zeroext i8 @exp16(i8 zeroext %212) #3
  %scevgep220 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i349.i, i8* %scevgep220, align 1
  %scevgep219.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %213 = load i8, i8* %scevgep219.1, align 1
  %call.i349.i.1 = call zeroext i8 @exp16(i8 zeroext %213) #3
  %scevgep220.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i349.i.1, i8* %scevgep220.1, align 1
  %scevgep219.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %214 = load i8, i8* %scevgep219.2, align 1
  %call.i349.i.2 = call zeroext i8 @exp16(i8 zeroext %214) #3
  %scevgep220.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  store i8 %call.i349.i.2, i8* %scevgep220.2, align 1
  %arraydecay15.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %call.i387.i = call zeroext i8 (...) @rand() #3
  %call1.i388.i = call zeroext i8 (...) @rand() #3
  %conv.i389.i = zext i8 %call.i387.i to i32
  %scevgep215 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %215 = load i8, i8* %scevgep215, align 1
  %scevgep215.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %216 = load i8, i8* %scevgep215.1, align 1
  %conv.i.i.i395.i.1 = zext i8 %216 to i32
  %conv1.i.i.i396.i.1 = zext i8 %215 to i32
  %xor.i.i.i397.i.1 = xor i32 %conv1.i.i.i396.i.1, %conv.i.i.i395.i.1
  %conv2.i.i.i398.i.1 = trunc i32 %xor.i.i.i397.i.1 to i8
  %scevgep215.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %217 = load i8, i8* %scevgep215.2, align 1
  %conv.i.i.i395.i.2 = zext i8 %217 to i32
  %conv1.i.i.i396.i.2 = zext i8 %conv2.i.i.i398.i.1 to i32
  %xor.i.i.i397.i.2 = xor i32 %conv1.i.i.i396.i.2, %conv.i.i.i395.i.2
  %conv2.i.i.i398.i.2 = trunc i32 %xor.i.i.i397.i.2 to i8
  %conv3.i401.i = zext i8 %conv2.i.i.i398.i.2 to i32
  %cmp.i402.i = icmp eq i32 %conv.i389.i, %conv3.i401.i
  call void @assume(i1 zeroext %cmp.i402.i) #3
  %conv5.i403.i = zext i8 %call1.i388.i to i32
  %scevgep211 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %218 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %219 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i155.i410.i.1 = zext i8 %219 to i32
  %conv1.i.i156.i411.i.1 = zext i8 %218 to i32
  %xor.i.i157.i412.i.1 = xor i32 %conv1.i.i156.i411.i.1, %conv.i.i155.i410.i.1
  %conv2.i.i158.i413.i.1 = trunc i32 %xor.i.i157.i412.i.1 to i8
  %scevgep211.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %220 = load i8, i8* %scevgep211.2, align 1
  %conv.i.i155.i410.i.2 = zext i8 %220 to i32
  %conv1.i.i156.i411.i.2 = zext i8 %conv2.i.i158.i413.i.1 to i32
  %xor.i.i157.i412.i.2 = xor i32 %conv1.i.i156.i411.i.2, %conv.i.i155.i410.i.2
  %conv2.i.i158.i413.i.2 = trunc i32 %xor.i.i157.i412.i.2 to i8
  %conv7.i416.i = zext i8 %conv2.i.i158.i413.i.2 to i32
  %cmp8.i417.i = icmp eq i32 %conv5.i403.i, %conv7.i416.i
  call void @assume(i1 zeroext %cmp8.i417.i) #3
  %scevgep195 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep195196 = bitcast i8* %scevgep195 to [3 x [3 x i8]]*
  %scevgep202 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep202203 = bitcast i8* %scevgep202 to [3 x [3 x i8]]*
  %call16.i425.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i425.i, i8* %scevgep195, align 1
  %221 = load i8, i8* %scevgep195, align 1
  store i8 %221, i8* %scevgep202, align 1
  %scevgep200 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep195196, i64 0, i64 0, i64 1
  %scevgep207 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep202203, i64 0, i64 1, i64 0
  %call16.i425.i.1689 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i425.i.1689, i8* %scevgep200, align 1
  %222 = load i8, i8* %scevgep200, align 1
  store i8 %222, i8* %scevgep207, align 1
  %scevgep198 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep195196, i64 0, i64 1, i64 1
  %scevgep205 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep202203, i64 0, i64 1, i64 1
  %call16.i425.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i425.i.1, i8* %scevgep198, align 1
  %223 = load i8, i8* %scevgep198, align 1
  store i8 %223, i8* %scevgep205, align 1
  %scevgep172.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %224 = load i8, i8* %scevgep172.1, align 1
  %conv44.i452.i.1 = zext i8 %224 to i32
  %scevgep175.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %225 = load i8, i8* %scevgep175.1, align 1
  %conv49.i457.i.1 = zext i8 %225 to i32
  %xor.i458.i.1 = xor i32 %conv44.i452.i.1, %conv49.i457.i.1
  %conv50.i459.i.1 = trunc i32 %xor.i458.i.1 to i8
  %scevgep179.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i459.i.1, i8* %scevgep179.1, align 1
  %226 = load i8, i8* %arraydecay15.i, align 1
  %conv57.i466.i.1 = zext i8 %226 to i32
  %xor58.i467.i.1 = xor i32 %conv57.i466.i.1, 1
  %conv59.i468.i.1 = trunc i32 %xor58.i467.i.1 to i8
  %scevgep176.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %227 = load i8, i8* %scevgep176.1, align 1
  %call64.i473.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1, i8 zeroext %227) #3
  %scevgep183.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i473.i.1, i8* %scevgep183.1, align 1
  %228 = load i8, i8* %arraydecay15.i, align 1
  %scevgep180.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %229 = load i8, i8* %scevgep180.1, align 1
  %call75.i484.i.1 = call zeroext i8 @mult(i8 zeroext %228, i8 zeroext %229) #3
  %scevgep187.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i484.i.1, i8* %scevgep187.1, align 1
  %scevgep184.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %230 = load i8, i8* %scevgep184.1, align 1
  %conv84.i493.i.1 = zext i8 %230 to i32
  %scevgep188.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %231 = load i8, i8* %scevgep188.1, align 1
  %conv89.i498.i.1 = zext i8 %231 to i32
  %xor90.i499.i.1 = xor i32 %conv84.i493.i.1, %conv89.i498.i.1
  %conv91.i500.i.1 = trunc i32 %xor90.i499.i.1 to i8
  %scevgep191.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i500.i.1, i8* %scevgep191.1, align 1
  %scevgep172.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %232 = load i8, i8* %scevgep172.2, align 1
  %conv44.i452.i.2 = zext i8 %232 to i32
  %scevgep175.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep175.2, align 1
  %conv49.i457.i.2 = zext i8 %233 to i32
  %xor.i458.i.2 = xor i32 %conv44.i452.i.2, %conv49.i457.i.2
  %conv50.i459.i.2 = trunc i32 %xor.i458.i.2 to i8
  %scevgep179.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i459.i.2, i8* %scevgep179.2, align 1
  %234 = load i8, i8* %arraydecay15.i, align 1
  %conv57.i466.i.2 = zext i8 %234 to i32
  %xor58.i467.i.2 = xor i32 %conv57.i466.i.2, 1
  %conv59.i468.i.2 = trunc i32 %xor58.i467.i.2 to i8
  %scevgep176.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep176.2, align 1
  %call64.i473.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2, i8 zeroext %235) #3
  %scevgep183.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i473.i.2, i8* %scevgep183.2, align 1
  %236 = load i8, i8* %arraydecay15.i, align 1
  %scevgep180.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %237 = load i8, i8* %scevgep180.2, align 1
  %call75.i484.i.2 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237) #3
  %scevgep187.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i484.i.2, i8* %scevgep187.2, align 1
  %scevgep184.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %238 = load i8, i8* %scevgep184.2, align 1
  %conv84.i493.i.2 = zext i8 %238 to i32
  %scevgep188.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %239 = load i8, i8* %scevgep188.2, align 1
  %conv89.i498.i.2 = zext i8 %239 to i32
  %xor90.i499.i.2 = xor i32 %conv84.i493.i.2, %conv89.i498.i.2
  %conv91.i500.i.2 = trunc i32 %xor90.i499.i.2 to i8
  %scevgep191.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i500.i.2, i8* %scevgep191.2, align 1
  %scevgep174 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep174 to [3 x [3 x i8]]*
  %scevgep178 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %241 = bitcast i8* %scevgep178 to [3 x [3 x i8]]*
  %scevgep182 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %242 = bitcast i8* %scevgep182 to [3 x [3 x i8]]*
  %scevgep186 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %243 = bitcast i8* %scevgep186 to [3 x [3 x i8]]*
  %scevgep190 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %244 = bitcast i8* %scevgep190 to [3 x [3 x i8]]*
  %arrayidx56.i465.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %arrayidx70.i479.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %scevgep172.1490 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %245 = load i8, i8* %scevgep172.1490, align 1
  %conv44.i452.i.1491 = zext i8 %245 to i32
  %scevgep175.1492 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 0
  %246 = load i8, i8* %scevgep175.1492, align 1
  %conv49.i457.i.1493 = zext i8 %246 to i32
  %xor.i458.i.1494 = xor i32 %conv44.i452.i.1491, %conv49.i457.i.1493
  %conv50.i459.i.1495 = trunc i32 %xor.i458.i.1494 to i8
  %scevgep179.1496 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 0
  store i8 %conv50.i459.i.1495, i8* %scevgep179.1496, align 1
  %247 = load i8, i8* %arrayidx56.i465.i.1, align 1
  %conv57.i466.i.1497 = zext i8 %247 to i32
  %xor58.i467.i.1498 = xor i32 %conv57.i466.i.1497, 1
  %conv59.i468.i.1499 = trunc i32 %xor58.i467.i.1498 to i8
  %scevgep176.1500 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 0
  %248 = load i8, i8* %scevgep176.1500, align 1
  %call64.i473.i.1501 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1499, i8 zeroext %248) #3
  %scevgep183.1502 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 0, i64 0
  store i8 %call64.i473.i.1501, i8* %scevgep183.1502, align 1
  %249 = load i8, i8* %arrayidx70.i479.i.1, align 1
  %scevgep180.1503 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 0
  %250 = load i8, i8* %scevgep180.1503, align 1
  %call75.i484.i.1504 = call zeroext i8 @mult(i8 zeroext %249, i8 zeroext %250) #3
  %scevgep187.1505 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 0
  store i8 %call75.i484.i.1504, i8* %scevgep187.1505, align 1
  %scevgep184.1506 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 0, i64 0
  %251 = load i8, i8* %scevgep184.1506, align 1
  %conv84.i493.i.1507 = zext i8 %251 to i32
  %scevgep188.1508 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 0
  %252 = load i8, i8* %scevgep188.1508, align 1
  %conv89.i498.i.1509 = zext i8 %252 to i32
  %xor90.i499.i.1510 = xor i32 %conv84.i493.i.1507, %conv89.i498.i.1509
  %conv91.i500.i.1511 = trunc i32 %xor90.i499.i.1510 to i8
  %scevgep191.1512 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 0, i64 0
  store i8 %conv91.i500.i.1511, i8* %scevgep191.1512, align 1
  %scevgep172.2.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %253 = load i8, i8* %scevgep172.2.1, align 1
  %conv44.i452.i.2.1 = zext i8 %253 to i32
  %scevgep175.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 2
  %254 = load i8, i8* %scevgep175.2.1, align 1
  %conv49.i457.i.2.1 = zext i8 %254 to i32
  %xor.i458.i.2.1 = xor i32 %conv44.i452.i.2.1, %conv49.i457.i.2.1
  %conv50.i459.i.2.1 = trunc i32 %xor.i458.i.2.1 to i8
  %scevgep179.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 2
  store i8 %conv50.i459.i.2.1, i8* %scevgep179.2.1, align 1
  %255 = load i8, i8* %arrayidx56.i465.i.1, align 1
  %conv57.i466.i.2.1 = zext i8 %255 to i32
  %xor58.i467.i.2.1 = xor i32 %conv57.i466.i.2.1, 1
  %conv59.i468.i.2.1 = trunc i32 %xor58.i467.i.2.1 to i8
  %scevgep176.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 2
  %256 = load i8, i8* %scevgep176.2.1, align 1
  %call64.i473.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2.1, i8 zeroext %256) #3
  %scevgep183.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 0, i64 2
  store i8 %call64.i473.i.2.1, i8* %scevgep183.2.1, align 1
  %257 = load i8, i8* %arrayidx70.i479.i.1, align 1
  %scevgep180.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 2
  %258 = load i8, i8* %scevgep180.2.1, align 1
  %call75.i484.i.2.1 = call zeroext i8 @mult(i8 zeroext %257, i8 zeroext %258) #3
  %scevgep187.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 2
  store i8 %call75.i484.i.2.1, i8* %scevgep187.2.1, align 1
  %scevgep184.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 0, i64 2
  %259 = load i8, i8* %scevgep184.2.1, align 1
  %conv84.i493.i.2.1 = zext i8 %259 to i32
  %scevgep188.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 0, i64 2
  %260 = load i8, i8* %scevgep188.2.1, align 1
  %conv89.i498.i.2.1 = zext i8 %260 to i32
  %xor90.i499.i.2.1 = xor i32 %conv84.i493.i.2.1, %conv89.i498.i.2.1
  %conv91.i500.i.2.1 = trunc i32 %xor90.i499.i.2.1 to i8
  %scevgep191.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 0, i64 2
  store i8 %conv91.i500.i.2.1, i8* %scevgep191.2.1, align 1
  %scevgep174.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 1, i64 0
  %261 = bitcast i8* %scevgep174.1 to [3 x [3 x i8]]*
  %scevgep178.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep178.1 to [3 x [3 x i8]]*
  %scevgep182.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 1, i64 0
  %263 = bitcast i8* %scevgep182.1 to [3 x [3 x i8]]*
  %scevgep186.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %243, i64 0, i64 1, i64 0
  %264 = bitcast i8* %scevgep186.1 to [3 x [3 x i8]]*
  %scevgep190.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %244, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep190.1 to [3 x [3 x i8]]*
  %arrayidx56.i465.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %arrayidx70.i479.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %scevgep172.2517 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %266 = load i8, i8* %scevgep172.2517, align 1
  %conv44.i452.i.2518 = zext i8 %266 to i32
  %scevgep175.2519 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 0
  %267 = load i8, i8* %scevgep175.2519, align 1
  %conv49.i457.i.2520 = zext i8 %267 to i32
  %xor.i458.i.2521 = xor i32 %conv44.i452.i.2518, %conv49.i457.i.2520
  %conv50.i459.i.2522 = trunc i32 %xor.i458.i.2521 to i8
  %scevgep179.2523 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %262, i64 0, i64 0, i64 0
  store i8 %conv50.i459.i.2522, i8* %scevgep179.2523, align 1
  %268 = load i8, i8* %arrayidx56.i465.i.2, align 1
  %conv57.i466.i.2524 = zext i8 %268 to i32
  %xor58.i467.i.2525 = xor i32 %conv57.i466.i.2524, 1
  %conv59.i468.i.2526 = trunc i32 %xor58.i467.i.2525 to i8
  %scevgep176.2527 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 0
  %269 = load i8, i8* %scevgep176.2527, align 1
  %call64.i473.i.2528 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2526, i8 zeroext %269) #3
  %scevgep183.2529 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %263, i64 0, i64 0, i64 0
  store i8 %call64.i473.i.2528, i8* %scevgep183.2529, align 1
  %270 = load i8, i8* %arrayidx70.i479.i.2, align 1
  %scevgep180.2530 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %262, i64 0, i64 0, i64 0
  %271 = load i8, i8* %scevgep180.2530, align 1
  %call75.i484.i.2531 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %271) #3
  %scevgep187.2532 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 0
  store i8 %call75.i484.i.2531, i8* %scevgep187.2532, align 1
  %scevgep184.2533 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %263, i64 0, i64 0, i64 0
  %272 = load i8, i8* %scevgep184.2533, align 1
  %conv84.i493.i.2534 = zext i8 %272 to i32
  %scevgep188.2535 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 0
  %273 = load i8, i8* %scevgep188.2535, align 1
  %conv89.i498.i.2536 = zext i8 %273 to i32
  %xor90.i499.i.2537 = xor i32 %conv84.i493.i.2534, %conv89.i498.i.2536
  %conv91.i500.i.2538 = trunc i32 %xor90.i499.i.2537 to i8
  %scevgep191.2539 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 0
  store i8 %conv91.i500.i.2538, i8* %scevgep191.2539, align 1
  %scevgep172.1.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %274 = load i8, i8* %scevgep172.1.2, align 1
  %conv44.i452.i.1.2 = zext i8 %274 to i32
  %scevgep175.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 1
  %275 = load i8, i8* %scevgep175.1.2, align 1
  %conv49.i457.i.1.2 = zext i8 %275 to i32
  %xor.i458.i.1.2 = xor i32 %conv44.i452.i.1.2, %conv49.i457.i.1.2
  %conv50.i459.i.1.2 = trunc i32 %xor.i458.i.1.2 to i8
  %scevgep179.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %262, i64 0, i64 0, i64 1
  store i8 %conv50.i459.i.1.2, i8* %scevgep179.1.2, align 1
  %276 = load i8, i8* %arrayidx56.i465.i.2, align 1
  %conv57.i466.i.1.2 = zext i8 %276 to i32
  %xor58.i467.i.1.2 = xor i32 %conv57.i466.i.1.2, 1
  %conv59.i468.i.1.2 = trunc i32 %xor58.i467.i.1.2 to i8
  %scevgep176.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %261, i64 0, i64 0, i64 1
  %277 = load i8, i8* %scevgep176.1.2, align 1
  %call64.i473.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1.2, i8 zeroext %277) #3
  %scevgep183.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %263, i64 0, i64 0, i64 1
  store i8 %call64.i473.i.1.2, i8* %scevgep183.1.2, align 1
  %278 = load i8, i8* %arrayidx70.i479.i.2, align 1
  %scevgep180.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %262, i64 0, i64 0, i64 1
  %279 = load i8, i8* %scevgep180.1.2, align 1
  %call75.i484.i.1.2 = call zeroext i8 @mult(i8 zeroext %278, i8 zeroext %279) #3
  %scevgep187.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 1
  store i8 %call75.i484.i.1.2, i8* %scevgep187.1.2, align 1
  %scevgep184.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %263, i64 0, i64 0, i64 1
  %280 = load i8, i8* %scevgep184.1.2, align 1
  %conv84.i493.i.1.2 = zext i8 %280 to i32
  %scevgep188.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %264, i64 0, i64 0, i64 1
  %281 = load i8, i8* %scevgep188.1.2, align 1
  %conv89.i498.i.1.2 = zext i8 %281 to i32
  %xor90.i499.i.1.2 = xor i32 %conv84.i493.i.1.2, %conv89.i498.i.1.2
  %conv91.i500.i.1.2 = trunc i32 %xor90.i499.i.1.2 to i8
  %scevgep191.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 1
  store i8 %conv91.i500.i.1.2, i8* %scevgep191.1.2, align 1
  %282 = load i8, i8* %arraydecay15.i, align 1
  %283 = load i8, i8* %arraydecay16.i, align 1
  %call111.i517.i = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %283) #3
  store i8 %call111.i517.i, i8* %arraydecay17.i, align 1
  %scevgep162.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %284 = load i8, i8* %scevgep162.1, align 1
  %conv126.i529.i.1 = zext i8 %284 to i32
  %285 = load i8, i8* %arraydecay17.i, align 1
  %conv129.i532.i.1 = zext i8 %285 to i32
  %xor130.i533.i.1 = xor i32 %conv129.i532.i.1, %conv126.i529.i.1
  %conv131.i534.i.1 = trunc i32 %xor130.i533.i.1 to i8
  store i8 %conv131.i534.i.1, i8* %arraydecay17.i, align 1
  %scevgep162.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %286 = load i8, i8* %scevgep162.2, align 1
  %conv126.i529.i.2 = zext i8 %286 to i32
  %287 = load i8, i8* %arraydecay17.i, align 1
  %conv129.i532.i.2 = zext i8 %287 to i32
  %xor130.i533.i.2 = xor i32 %conv129.i532.i.2, %conv126.i529.i.2
  %conv131.i534.i.2 = trunc i32 %xor130.i533.i.2 to i8
  store i8 %conv131.i534.i.2, i8* %arraydecay17.i, align 1
  %scevgep161 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %288 = bitcast i8* %scevgep161 to [3 x [3 x i8]]*
  %arrayidx108.i514.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %289 = load i8, i8* %arrayidx108.i514.i.1, align 1
  %arrayidx110.i516.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %290 = load i8, i8* %arrayidx110.i516.i.1, align 1
  %call111.i517.i.1 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %290) #3
  %arrayidx113.i519.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call111.i517.i.1, i8* %arrayidx113.i519.i.1, align 1
  %arrayidx128.i531.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep162.1472 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %288, i64 0, i64 0, i64 0
  %291 = load i8, i8* %scevgep162.1472, align 1
  %conv126.i529.i.1473 = zext i8 %291 to i32
  %292 = load i8, i8* %arrayidx128.i531.i.1, align 1
  %conv129.i532.i.1474 = zext i8 %292 to i32
  %xor130.i533.i.1475 = xor i32 %conv129.i532.i.1474, %conv126.i529.i.1473
  %conv131.i534.i.1476 = trunc i32 %xor130.i533.i.1475 to i8
  store i8 %conv131.i534.i.1476, i8* %arrayidx128.i531.i.1, align 1
  %scevgep162.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %288, i64 0, i64 0, i64 2
  %293 = load i8, i8* %scevgep162.2.1, align 1
  %conv126.i529.i.2.1 = zext i8 %293 to i32
  %294 = load i8, i8* %arrayidx128.i531.i.1, align 1
  %conv129.i532.i.2.1 = zext i8 %294 to i32
  %xor130.i533.i.2.1 = xor i32 %conv129.i532.i.2.1, %conv126.i529.i.2.1
  %conv131.i534.i.2.1 = trunc i32 %xor130.i533.i.2.1 to i8
  store i8 %conv131.i534.i.2.1, i8* %arrayidx128.i531.i.1, align 1
  %scevgep161.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %288, i64 0, i64 1, i64 0
  %295 = bitcast i8* %scevgep161.1 to [3 x [3 x i8]]*
  %arrayidx108.i514.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %296 = load i8, i8* %arrayidx108.i514.i.2, align 1
  %arrayidx110.i516.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %297 = load i8, i8* %arrayidx110.i516.i.2, align 1
  %call111.i517.i.2 = call zeroext i8 @mult(i8 zeroext %296, i8 zeroext %297) #3
  %arrayidx113.i519.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  store i8 %call111.i517.i.2, i8* %arrayidx113.i519.i.2, align 1
  %arrayidx128.i531.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep162.2481 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %295, i64 0, i64 0, i64 0
  %298 = load i8, i8* %scevgep162.2481, align 1
  %conv126.i529.i.2482 = zext i8 %298 to i32
  %299 = load i8, i8* %arrayidx128.i531.i.2, align 1
  %conv129.i532.i.2483 = zext i8 %299 to i32
  %xor130.i533.i.2484 = xor i32 %conv129.i532.i.2483, %conv126.i529.i.2482
  %conv131.i534.i.2485 = trunc i32 %xor130.i533.i.2484 to i8
  store i8 %conv131.i534.i.2485, i8* %arrayidx128.i531.i.2, align 1
  %scevgep162.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %295, i64 0, i64 0, i64 1
  %300 = load i8, i8* %scevgep162.1.2, align 1
  %conv126.i529.i.1.2 = zext i8 %300 to i32
  %301 = load i8, i8* %arrayidx128.i531.i.2, align 1
  %conv129.i532.i.1.2 = zext i8 %301 to i32
  %xor130.i533.i.1.2 = xor i32 %conv129.i532.i.1.2, %conv126.i529.i.1.2
  %conv131.i534.i.1.2 = trunc i32 %xor130.i533.i.1.2 to i8
  store i8 %conv131.i534.i.1.2, i8* %arrayidx128.i531.i.2, align 1
  %call139.i540.i = call zeroext i8 @mult(i8 zeroext %call.i387.i, i8 zeroext %call1.i388.i) #3
  %conv140.i541.i = zext i8 %call139.i540.i to i32
  %scevgep152 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %302 = load i8, i8* %scevgep152, align 1
  %scevgep152.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %303 = load i8, i8* %scevgep152.1, align 1
  %conv.i.i172.i548.i.1 = zext i8 %303 to i32
  %conv1.i.i173.i549.i.1 = zext i8 %302 to i32
  %xor.i.i174.i550.i.1 = xor i32 %conv1.i.i173.i549.i.1, %conv.i.i172.i548.i.1
  %conv2.i.i175.i551.i.1 = trunc i32 %xor.i.i174.i550.i.1 to i8
  %scevgep152.2 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %304 = load i8, i8* %scevgep152.2, align 1
  %conv.i.i172.i548.i.2 = zext i8 %304 to i32
  %conv1.i.i173.i549.i.2 = zext i8 %conv2.i.i175.i551.i.1 to i32
  %xor.i.i174.i550.i.2 = xor i32 %conv1.i.i173.i549.i.2, %conv.i.i172.i548.i.2
  %conv2.i.i175.i551.i.2 = trunc i32 %xor.i.i174.i550.i.2 to i8
  %conv142.i554.i = zext i8 %conv2.i.i175.i551.i.2 to i32
  %cmp143.i555.i = icmp eq i32 %conv140.i541.i, %conv142.i554.i
  call void @assert(i1 zeroext %cmp143.i555.i) #3
  %arraydecay18.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %call.i588.i = call zeroext i8 (...) @rand() #3
  %call1.i589.i = call zeroext i8 (...) @rand() #3
  %conv.i590.i = zext i8 %call.i588.i to i32
  %scevgep148 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %305 = load i8, i8* %scevgep148, align 1
  %scevgep148.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %306 = load i8, i8* %scevgep148.1, align 1
  %conv.i.i.i596.i.1 = zext i8 %306 to i32
  %conv1.i.i.i597.i.1 = zext i8 %305 to i32
  %xor.i.i.i598.i.1 = xor i32 %conv1.i.i.i597.i.1, %conv.i.i.i596.i.1
  %conv2.i.i.i599.i.1 = trunc i32 %xor.i.i.i598.i.1 to i8
  %scevgep148.2 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %307 = load i8, i8* %scevgep148.2, align 1
  %conv.i.i.i596.i.2 = zext i8 %307 to i32
  %conv1.i.i.i597.i.2 = zext i8 %conv2.i.i.i599.i.1 to i32
  %xor.i.i.i598.i.2 = xor i32 %conv1.i.i.i597.i.2, %conv.i.i.i596.i.2
  %conv2.i.i.i599.i.2 = trunc i32 %xor.i.i.i598.i.2 to i8
  %conv3.i602.i = zext i8 %conv2.i.i.i599.i.2 to i32
  %cmp.i603.i = icmp eq i32 %conv.i590.i, %conv3.i602.i
  call void @assume(i1 zeroext %cmp.i603.i) #3
  %conv5.i604.i = zext i8 %call1.i589.i to i32
  %scevgep144 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %308 = load i8, i8* %scevgep144, align 1
  %scevgep144.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %309 = load i8, i8* %scevgep144.1, align 1
  %conv.i.i155.i611.i.1 = zext i8 %309 to i32
  %conv1.i.i156.i612.i.1 = zext i8 %308 to i32
  %xor.i.i157.i613.i.1 = xor i32 %conv1.i.i156.i612.i.1, %conv.i.i155.i611.i.1
  %conv2.i.i158.i614.i.1 = trunc i32 %xor.i.i157.i613.i.1 to i8
  %scevgep144.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %310 = load i8, i8* %scevgep144.2, align 1
  %conv.i.i155.i611.i.2 = zext i8 %310 to i32
  %conv1.i.i156.i612.i.2 = zext i8 %conv2.i.i158.i614.i.1 to i32
  %xor.i.i157.i613.i.2 = xor i32 %conv1.i.i156.i612.i.2, %conv.i.i155.i611.i.2
  %conv2.i.i158.i614.i.2 = trunc i32 %xor.i.i157.i613.i.2 to i8
  %conv7.i617.i = zext i8 %conv2.i.i158.i614.i.2 to i32
  %cmp8.i618.i = icmp eq i32 %conv5.i604.i, %conv7.i617.i
  call void @assume(i1 zeroext %cmp8.i618.i) #3
  %scevgep128 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep128129 = bitcast i8* %scevgep128 to [3 x [3 x i8]]*
  %scevgep135 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep135136 = bitcast i8* %scevgep135 to [3 x [3 x i8]]*
  %call16.i626.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i626.i, i8* %scevgep128, align 1
  %311 = load i8, i8* %scevgep128, align 1
  store i8 %311, i8* %scevgep135, align 1
  %scevgep133 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep128129, i64 0, i64 0, i64 1
  %scevgep140 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep135136, i64 0, i64 1, i64 0
  %call16.i626.i.1686 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i626.i.1686, i8* %scevgep133, align 1
  %312 = load i8, i8* %scevgep133, align 1
  store i8 %312, i8* %scevgep140, align 1
  %scevgep131 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep128129, i64 0, i64 1, i64 1
  %scevgep138 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep135136, i64 0, i64 1, i64 1
  %call16.i626.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i626.i.1, i8* %scevgep131, align 1
  %313 = load i8, i8* %scevgep131, align 1
  store i8 %313, i8* %scevgep138, align 1
  %scevgep105.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %314 = load i8, i8* %scevgep105.1, align 1
  %conv44.i653.i.1 = zext i8 %314 to i32
  %scevgep108.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %315 = load i8, i8* %scevgep108.1, align 1
  %conv49.i658.i.1 = zext i8 %315 to i32
  %xor.i659.i.1 = xor i32 %conv44.i653.i.1, %conv49.i658.i.1
  %conv50.i660.i.1 = trunc i32 %xor.i659.i.1 to i8
  %scevgep112.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i660.i.1, i8* %scevgep112.1, align 1
  %316 = load i8, i8* %arraydecay18.i, align 1
  %conv57.i667.i.1 = zext i8 %316 to i32
  %xor58.i668.i.1 = xor i32 %conv57.i667.i.1, 1
  %conv59.i669.i.1 = trunc i32 %xor58.i668.i.1 to i8
  %scevgep109.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %317 = load i8, i8* %scevgep109.1, align 1
  %call64.i674.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1, i8 zeroext %317) #3
  %scevgep116.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i674.i.1, i8* %scevgep116.1, align 1
  %318 = load i8, i8* %arraydecay18.i, align 1
  %scevgep113.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %319 = load i8, i8* %scevgep113.1, align 1
  %call75.i685.i.1 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319) #3
  %scevgep120.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i685.i.1, i8* %scevgep120.1, align 1
  %scevgep117.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %320 = load i8, i8* %scevgep117.1, align 1
  %conv84.i694.i.1 = zext i8 %320 to i32
  %scevgep121.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %321 = load i8, i8* %scevgep121.1, align 1
  %conv89.i699.i.1 = zext i8 %321 to i32
  %xor90.i700.i.1 = xor i32 %conv84.i694.i.1, %conv89.i699.i.1
  %conv91.i701.i.1 = trunc i32 %xor90.i700.i.1 to i8
  %scevgep124.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i701.i.1, i8* %scevgep124.1, align 1
  %scevgep105.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %322 = load i8, i8* %scevgep105.2, align 1
  %conv44.i653.i.2 = zext i8 %322 to i32
  %scevgep108.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %323 = load i8, i8* %scevgep108.2, align 1
  %conv49.i658.i.2 = zext i8 %323 to i32
  %xor.i659.i.2 = xor i32 %conv44.i653.i.2, %conv49.i658.i.2
  %conv50.i660.i.2 = trunc i32 %xor.i659.i.2 to i8
  %scevgep112.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i660.i.2, i8* %scevgep112.2, align 1
  %324 = load i8, i8* %arraydecay18.i, align 1
  %conv57.i667.i.2 = zext i8 %324 to i32
  %xor58.i668.i.2 = xor i32 %conv57.i667.i.2, 1
  %conv59.i669.i.2 = trunc i32 %xor58.i668.i.2 to i8
  %scevgep109.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %325 = load i8, i8* %scevgep109.2, align 1
  %call64.i674.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2, i8 zeroext %325) #3
  %scevgep116.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i674.i.2, i8* %scevgep116.2, align 1
  %326 = load i8, i8* %arraydecay18.i, align 1
  %scevgep113.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %327 = load i8, i8* %scevgep113.2, align 1
  %call75.i685.i.2 = call zeroext i8 @mult(i8 zeroext %326, i8 zeroext %327) #3
  %scevgep120.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i685.i.2, i8* %scevgep120.2, align 1
  %scevgep117.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %328 = load i8, i8* %scevgep117.2, align 1
  %conv84.i694.i.2 = zext i8 %328 to i32
  %scevgep121.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %329 = load i8, i8* %scevgep121.2, align 1
  %conv89.i699.i.2 = zext i8 %329 to i32
  %xor90.i700.i.2 = xor i32 %conv84.i694.i.2, %conv89.i699.i.2
  %conv91.i701.i.2 = trunc i32 %xor90.i700.i.2 to i8
  %scevgep124.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i701.i.2, i8* %scevgep124.2, align 1
  %scevgep107 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %330 = bitcast i8* %scevgep107 to [3 x [3 x i8]]*
  %scevgep111 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %331 = bitcast i8* %scevgep111 to [3 x [3 x i8]]*
  %scevgep115 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %332 = bitcast i8* %scevgep115 to [3 x [3 x i8]]*
  %scevgep119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %333 = bitcast i8* %scevgep119 to [3 x [3 x i8]]*
  %scevgep123 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %334 = bitcast i8* %scevgep123 to [3 x [3 x i8]]*
  %arrayidx56.i666.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %arrayidx70.i680.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %scevgep105.1418 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %335 = load i8, i8* %scevgep105.1418, align 1
  %conv44.i653.i.1419 = zext i8 %335 to i32
  %scevgep108.1420 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 0
  %336 = load i8, i8* %scevgep108.1420, align 1
  %conv49.i658.i.1421 = zext i8 %336 to i32
  %xor.i659.i.1422 = xor i32 %conv44.i653.i.1419, %conv49.i658.i.1421
  %conv50.i660.i.1423 = trunc i32 %xor.i659.i.1422 to i8
  %scevgep112.1424 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 0, i64 0
  store i8 %conv50.i660.i.1423, i8* %scevgep112.1424, align 1
  %337 = load i8, i8* %arrayidx56.i666.i.1, align 1
  %conv57.i667.i.1425 = zext i8 %337 to i32
  %xor58.i668.i.1426 = xor i32 %conv57.i667.i.1425, 1
  %conv59.i669.i.1427 = trunc i32 %xor58.i668.i.1426 to i8
  %scevgep109.1428 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 0
  %338 = load i8, i8* %scevgep109.1428, align 1
  %call64.i674.i.1429 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1427, i8 zeroext %338) #3
  %scevgep116.1430 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %332, i64 0, i64 0, i64 0
  store i8 %call64.i674.i.1429, i8* %scevgep116.1430, align 1
  %339 = load i8, i8* %arrayidx70.i680.i.1, align 1
  %scevgep113.1431 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 0, i64 0
  %340 = load i8, i8* %scevgep113.1431, align 1
  %call75.i685.i.1432 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #3
  %scevgep120.1433 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 0
  store i8 %call75.i685.i.1432, i8* %scevgep120.1433, align 1
  %scevgep117.1434 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %332, i64 0, i64 0, i64 0
  %341 = load i8, i8* %scevgep117.1434, align 1
  %conv84.i694.i.1435 = zext i8 %341 to i32
  %scevgep121.1436 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 0
  %342 = load i8, i8* %scevgep121.1436, align 1
  %conv89.i699.i.1437 = zext i8 %342 to i32
  %xor90.i700.i.1438 = xor i32 %conv84.i694.i.1435, %conv89.i699.i.1437
  %conv91.i701.i.1439 = trunc i32 %xor90.i700.i.1438 to i8
  %scevgep124.1440 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 0, i64 0
  store i8 %conv91.i701.i.1439, i8* %scevgep124.1440, align 1
  %scevgep105.2.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %343 = load i8, i8* %scevgep105.2.1, align 1
  %conv44.i653.i.2.1 = zext i8 %343 to i32
  %scevgep108.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 2
  %344 = load i8, i8* %scevgep108.2.1, align 1
  %conv49.i658.i.2.1 = zext i8 %344 to i32
  %xor.i659.i.2.1 = xor i32 %conv44.i653.i.2.1, %conv49.i658.i.2.1
  %conv50.i660.i.2.1 = trunc i32 %xor.i659.i.2.1 to i8
  %scevgep112.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 0, i64 2
  store i8 %conv50.i660.i.2.1, i8* %scevgep112.2.1, align 1
  %345 = load i8, i8* %arrayidx56.i666.i.1, align 1
  %conv57.i667.i.2.1 = zext i8 %345 to i32
  %xor58.i668.i.2.1 = xor i32 %conv57.i667.i.2.1, 1
  %conv59.i669.i.2.1 = trunc i32 %xor58.i668.i.2.1 to i8
  %scevgep109.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 0, i64 2
  %346 = load i8, i8* %scevgep109.2.1, align 1
  %call64.i674.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2.1, i8 zeroext %346) #3
  %scevgep116.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %332, i64 0, i64 0, i64 2
  store i8 %call64.i674.i.2.1, i8* %scevgep116.2.1, align 1
  %347 = load i8, i8* %arrayidx70.i680.i.1, align 1
  %scevgep113.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 0, i64 2
  %348 = load i8, i8* %scevgep113.2.1, align 1
  %call75.i685.i.2.1 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348) #3
  %scevgep120.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 2
  store i8 %call75.i685.i.2.1, i8* %scevgep120.2.1, align 1
  %scevgep117.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %332, i64 0, i64 0, i64 2
  %349 = load i8, i8* %scevgep117.2.1, align 1
  %conv84.i694.i.2.1 = zext i8 %349 to i32
  %scevgep121.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 0, i64 2
  %350 = load i8, i8* %scevgep121.2.1, align 1
  %conv89.i699.i.2.1 = zext i8 %350 to i32
  %xor90.i700.i.2.1 = xor i32 %conv84.i694.i.2.1, %conv89.i699.i.2.1
  %conv91.i701.i.2.1 = trunc i32 %xor90.i700.i.2.1 to i8
  %scevgep124.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 0, i64 2
  store i8 %conv91.i701.i.2.1, i8* %scevgep124.2.1, align 1
  %scevgep107.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %330, i64 0, i64 1, i64 0
  %351 = bitcast i8* %scevgep107.1 to [3 x [3 x i8]]*
  %scevgep111.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %331, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep111.1 to [3 x [3 x i8]]*
  %scevgep115.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %332, i64 0, i64 1, i64 0
  %353 = bitcast i8* %scevgep115.1 to [3 x [3 x i8]]*
  %scevgep119.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %333, i64 0, i64 1, i64 0
  %354 = bitcast i8* %scevgep119.1 to [3 x [3 x i8]]*
  %scevgep123.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %334, i64 0, i64 1, i64 0
  %355 = bitcast i8* %scevgep123.1 to [3 x [3 x i8]]*
  %arrayidx56.i666.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %arrayidx70.i680.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %scevgep105.2445 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %356 = load i8, i8* %scevgep105.2445, align 1
  %conv44.i653.i.2446 = zext i8 %356 to i32
  %scevgep108.2447 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 0
  %357 = load i8, i8* %scevgep108.2447, align 1
  %conv49.i658.i.2448 = zext i8 %357 to i32
  %xor.i659.i.2449 = xor i32 %conv44.i653.i.2446, %conv49.i658.i.2448
  %conv50.i660.i.2450 = trunc i32 %xor.i659.i.2449 to i8
  %scevgep112.2451 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %352, i64 0, i64 0, i64 0
  store i8 %conv50.i660.i.2450, i8* %scevgep112.2451, align 1
  %358 = load i8, i8* %arrayidx56.i666.i.2, align 1
  %conv57.i667.i.2452 = zext i8 %358 to i32
  %xor58.i668.i.2453 = xor i32 %conv57.i667.i.2452, 1
  %conv59.i669.i.2454 = trunc i32 %xor58.i668.i.2453 to i8
  %scevgep109.2455 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 0
  %359 = load i8, i8* %scevgep109.2455, align 1
  %call64.i674.i.2456 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2454, i8 zeroext %359) #3
  %scevgep116.2457 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %353, i64 0, i64 0, i64 0
  store i8 %call64.i674.i.2456, i8* %scevgep116.2457, align 1
  %360 = load i8, i8* %arrayidx70.i680.i.2, align 1
  %scevgep113.2458 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %352, i64 0, i64 0, i64 0
  %361 = load i8, i8* %scevgep113.2458, align 1
  %call75.i685.i.2459 = call zeroext i8 @mult(i8 zeroext %360, i8 zeroext %361) #3
  %scevgep120.2460 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 0
  store i8 %call75.i685.i.2459, i8* %scevgep120.2460, align 1
  %scevgep117.2461 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %353, i64 0, i64 0, i64 0
  %362 = load i8, i8* %scevgep117.2461, align 1
  %conv84.i694.i.2462 = zext i8 %362 to i32
  %scevgep121.2463 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 0
  %363 = load i8, i8* %scevgep121.2463, align 1
  %conv89.i699.i.2464 = zext i8 %363 to i32
  %xor90.i700.i.2465 = xor i32 %conv84.i694.i.2462, %conv89.i699.i.2464
  %conv91.i701.i.2466 = trunc i32 %xor90.i700.i.2465 to i8
  %scevgep124.2467 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %355, i64 0, i64 0, i64 0
  store i8 %conv91.i701.i.2466, i8* %scevgep124.2467, align 1
  %scevgep105.1.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %364 = load i8, i8* %scevgep105.1.2, align 1
  %conv44.i653.i.1.2 = zext i8 %364 to i32
  %scevgep108.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 1
  %365 = load i8, i8* %scevgep108.1.2, align 1
  %conv49.i658.i.1.2 = zext i8 %365 to i32
  %xor.i659.i.1.2 = xor i32 %conv44.i653.i.1.2, %conv49.i658.i.1.2
  %conv50.i660.i.1.2 = trunc i32 %xor.i659.i.1.2 to i8
  %scevgep112.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %352, i64 0, i64 0, i64 1
  store i8 %conv50.i660.i.1.2, i8* %scevgep112.1.2, align 1
  %366 = load i8, i8* %arrayidx56.i666.i.2, align 1
  %conv57.i667.i.1.2 = zext i8 %366 to i32
  %xor58.i668.i.1.2 = xor i32 %conv57.i667.i.1.2, 1
  %conv59.i669.i.1.2 = trunc i32 %xor58.i668.i.1.2 to i8
  %scevgep109.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %351, i64 0, i64 0, i64 1
  %367 = load i8, i8* %scevgep109.1.2, align 1
  %call64.i674.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1.2, i8 zeroext %367) #3
  %scevgep116.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %353, i64 0, i64 0, i64 1
  store i8 %call64.i674.i.1.2, i8* %scevgep116.1.2, align 1
  %368 = load i8, i8* %arrayidx70.i680.i.2, align 1
  %scevgep113.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %352, i64 0, i64 0, i64 1
  %369 = load i8, i8* %scevgep113.1.2, align 1
  %call75.i685.i.1.2 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369) #3
  %scevgep120.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 1
  store i8 %call75.i685.i.1.2, i8* %scevgep120.1.2, align 1
  %scevgep117.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %353, i64 0, i64 0, i64 1
  %370 = load i8, i8* %scevgep117.1.2, align 1
  %conv84.i694.i.1.2 = zext i8 %370 to i32
  %scevgep121.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %354, i64 0, i64 0, i64 1
  %371 = load i8, i8* %scevgep121.1.2, align 1
  %conv89.i699.i.1.2 = zext i8 %371 to i32
  %xor90.i700.i.1.2 = xor i32 %conv84.i694.i.1.2, %conv89.i699.i.1.2
  %conv91.i701.i.1.2 = trunc i32 %xor90.i700.i.1.2 to i8
  %scevgep124.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %355, i64 0, i64 0, i64 1
  store i8 %conv91.i701.i.1.2, i8* %scevgep124.1.2, align 1
  %372 = load i8, i8* %arraydecay18.i, align 1
  %373 = load i8, i8* %arraydecay19.i, align 1
  %call111.i718.i = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373) #3
  store i8 %call111.i718.i, i8* %y, align 1
  %scevgep96.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %374 = load i8, i8* %scevgep96.1, align 1
  %conv126.i730.i.1 = zext i8 %374 to i32
  %375 = load i8, i8* %y, align 1
  %conv129.i733.i.1 = zext i8 %375 to i32
  %xor130.i734.i.1 = xor i32 %conv129.i733.i.1, %conv126.i730.i.1
  %conv131.i735.i.1 = trunc i32 %xor130.i734.i.1 to i8
  store i8 %conv131.i735.i.1, i8* %y, align 1
  %scevgep96.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %376 = load i8, i8* %scevgep96.2, align 1
  %conv126.i730.i.2 = zext i8 %376 to i32
  %377 = load i8, i8* %y, align 1
  %conv129.i733.i.2 = zext i8 %377 to i32
  %xor130.i734.i.2 = xor i32 %conv129.i733.i.2, %conv126.i730.i.2
  %conv131.i735.i.2 = trunc i32 %xor130.i734.i.2 to i8
  store i8 %conv131.i735.i.2, i8* %y, align 1
  %scevgep95 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %378 = bitcast i8* %scevgep95 to [3 x [3 x i8]]*
  %arrayidx108.i715.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %379 = load i8, i8* %arrayidx108.i715.i.1, align 1
  %arrayidx110.i717.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %380 = load i8, i8* %arrayidx110.i717.i.1, align 1
  %call111.i718.i.1 = call zeroext i8 @mult(i8 zeroext %379, i8 zeroext %380) #3
  %arrayidx113.i720.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i718.i.1, i8* %arrayidx113.i720.i.1, align 1
  %arrayidx128.i732.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep96.1400 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %378, i64 0, i64 0, i64 0
  %381 = load i8, i8* %scevgep96.1400, align 1
  %conv126.i730.i.1401 = zext i8 %381 to i32
  %382 = load i8, i8* %arrayidx128.i732.i.1, align 1
  %conv129.i733.i.1402 = zext i8 %382 to i32
  %xor130.i734.i.1403 = xor i32 %conv129.i733.i.1402, %conv126.i730.i.1401
  %conv131.i735.i.1404 = trunc i32 %xor130.i734.i.1403 to i8
  store i8 %conv131.i735.i.1404, i8* %arrayidx128.i732.i.1, align 1
  %scevgep96.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %378, i64 0, i64 0, i64 2
  %383 = load i8, i8* %scevgep96.2.1, align 1
  %conv126.i730.i.2.1 = zext i8 %383 to i32
  %384 = load i8, i8* %arrayidx128.i732.i.1, align 1
  %conv129.i733.i.2.1 = zext i8 %384 to i32
  %xor130.i734.i.2.1 = xor i32 %conv129.i733.i.2.1, %conv126.i730.i.2.1
  %conv131.i735.i.2.1 = trunc i32 %xor130.i734.i.2.1 to i8
  store i8 %conv131.i735.i.2.1, i8* %arrayidx128.i732.i.1, align 1
  %scevgep95.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %378, i64 0, i64 1, i64 0
  %385 = bitcast i8* %scevgep95.1 to [3 x [3 x i8]]*
  %arrayidx108.i715.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %386 = load i8, i8* %arrayidx108.i715.i.2, align 1
  %arrayidx110.i717.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %387 = load i8, i8* %arrayidx110.i717.i.2, align 1
  %call111.i718.i.2 = call zeroext i8 @mult(i8 zeroext %386, i8 zeroext %387) #3
  %arrayidx113.i720.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i718.i.2, i8* %arrayidx113.i720.i.2, align 1
  %arrayidx128.i732.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep96.2409 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %385, i64 0, i64 0, i64 0
  %388 = load i8, i8* %scevgep96.2409, align 1
  %conv126.i730.i.2410 = zext i8 %388 to i32
  %389 = load i8, i8* %arrayidx128.i732.i.2, align 1
  %conv129.i733.i.2411 = zext i8 %389 to i32
  %xor130.i734.i.2412 = xor i32 %conv129.i733.i.2411, %conv126.i730.i.2410
  %conv131.i735.i.2413 = trunc i32 %xor130.i734.i.2412 to i8
  store i8 %conv131.i735.i.2413, i8* %arrayidx128.i732.i.2, align 1
  %scevgep96.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %385, i64 0, i64 0, i64 1
  %390 = load i8, i8* %scevgep96.1.2, align 1
  %conv126.i730.i.1.2 = zext i8 %390 to i32
  %391 = load i8, i8* %arrayidx128.i732.i.2, align 1
  %conv129.i733.i.1.2 = zext i8 %391 to i32
  %xor130.i734.i.1.2 = xor i32 %conv129.i733.i.1.2, %conv126.i730.i.1.2
  %conv131.i735.i.1.2 = trunc i32 %xor130.i734.i.1.2 to i8
  store i8 %conv131.i735.i.1.2, i8* %arrayidx128.i732.i.2, align 1
  %call139.i741.i = call zeroext i8 @mult(i8 zeroext %call.i588.i, i8 zeroext %call1.i589.i) #3
  %conv140.i742.i = zext i8 %call139.i741.i to i32
  %392 = load i8, i8* %y, align 1
  %scevgep86.1 = getelementptr i8, i8* %y, i64 1
  %393 = load i8, i8* %scevgep86.1, align 1
  %conv.i.i172.i749.i.1 = zext i8 %393 to i32
  %conv1.i.i173.i750.i.1 = zext i8 %392 to i32
  %xor.i.i174.i751.i.1 = xor i32 %conv1.i.i173.i750.i.1, %conv.i.i172.i749.i.1
  %conv2.i.i175.i752.i.1 = trunc i32 %xor.i.i174.i751.i.1 to i8
  %scevgep86.2 = getelementptr i8, i8* %y, i64 2
  %394 = load i8, i8* %scevgep86.2, align 1
  %conv.i.i172.i749.i.2 = zext i8 %394 to i32
  %conv1.i.i173.i750.i.2 = zext i8 %conv2.i.i175.i752.i.1 to i32
  %xor.i.i174.i751.i.2 = xor i32 %conv1.i.i173.i750.i.2, %conv.i.i172.i749.i.2
  %conv2.i.i175.i752.i.2 = trunc i32 %xor.i.i174.i751.i.2 to i8
  %conv142.i755.i = zext i8 %conv2.i.i175.i752.i.2 to i32
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
  %395 = load i8, i8* %y, align 1
  %scevgep82.1 = getelementptr i8, i8* %y, i64 1
  %396 = load i8, i8* %scevgep82.1, align 1
  %conv.i.i772.i.1 = zext i8 %396 to i32
  %conv1.i.i773.i.1 = zext i8 %395 to i32
  %xor.i.i774.i.1 = xor i32 %conv1.i.i773.i.1, %conv.i.i772.i.1
  %conv2.i.i775.i.1 = trunc i32 %xor.i.i774.i.1 to i8
  %scevgep82.2 = getelementptr i8, i8* %y, i64 2
  %397 = load i8, i8* %scevgep82.2, align 1
  %conv.i.i772.i.2 = zext i8 %397 to i32
  %conv1.i.i773.i.2 = zext i8 %conv2.i.i775.i.1 to i32
  %xor.i.i774.i.2 = xor i32 %conv1.i.i773.i.2, %conv.i.i772.i.2
  %conv2.i.i775.i.2 = trunc i32 %xor.i.i774.i.2 to i8
  %conv23.i = zext i8 %conv2.i.i775.i.2 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %398 = load i8, i8* %y, align 1
  %call.i24 = call zeroext i8 @af(i8 zeroext %398) #3
  store i8 %call.i24, i8* %y, align 1
  %scevgep77.1 = getelementptr i8, i8* %y, i64 1
  %399 = load i8, i8* %scevgep77.1, align 1
  %call.i24.1 = call zeroext i8 @af(i8 zeroext %399) #3
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i24.1, i8* %scevgep78.1, align 1
  %scevgep77.2 = getelementptr i8, i8* %y, i64 2
  %400 = load i8, i8* %scevgep77.2, align 1
  %call.i24.2 = call zeroext i8 @af(i8 zeroext %400) #3
  %scevgep78.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i24.2, i8* %scevgep78.2, align 1
  %call.i.i30 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i31 = call zeroext i8 @mult(i8 zeroext %call.i.i30, i8 zeroext %call) #3
  %call2.i.i32 = call zeroext i8 @exp4(i8 zeroext %call1.i.i31) #3
  %call3.i.i33 = call zeroext i8 @mult(i8 zeroext %call1.i.i31, i8 zeroext %call2.i.i32) #3
  %call4.i.i34 = call zeroext i8 @exp16(i8 zeroext %call3.i.i33) #3
  %call5.i.i35 = call zeroext i8 @mult(i8 zeroext %call4.i.i34, i8 zeroext %call2.i.i32) #3
  %call6.i.i36 = call zeroext i8 @mult(i8 zeroext %call5.i.i35, i8 zeroext %call.i.i30) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i36) #3
  %conv5 = zext i8 %call1.i to i32
  %401 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %402 = load i8, i8* %scevgep.1, align 1
  %conv.i.i47.1 = zext i8 %402 to i32
  %conv1.i.i48.1 = zext i8 %401 to i32
  %xor.i.i49.1 = xor i32 %conv1.i.i48.1, %conv.i.i47.1
  %conv2.i.i50.1 = trunc i32 %xor.i.i49.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %403 = load i8, i8* %scevgep.2, align 1
  %conv.i.i47.2 = zext i8 %403 to i32
  %conv1.i.i48.2 = zext i8 %conv2.i.i50.1 to i32
  %xor.i.i49.2 = xor i32 %conv1.i.i48.2, %conv.i.i47.2
  %conv2.i.i50.2 = trunc i32 %xor.i.i49.2 to i8
  %conv7 = zext i8 %conv2.i.i50.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assert(i1 zeroext %cmp8)
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
