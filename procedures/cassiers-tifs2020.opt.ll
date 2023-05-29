; ModuleID = '../examples/cassiers-tifs2020.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [32 x i8] c"../examples/cassiers-tifs2020.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
