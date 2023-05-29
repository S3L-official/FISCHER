; ModuleID = '../examples/hpc2-mult.inline-2.ll'
source_filename = "../examples/hpc2-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"../examples/hpc2-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %u = alloca [3 x [3 x i8]], align 1
  %v = alloca [3 x [3 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep68.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep68.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep68.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep68.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep64.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i137.1 = zext i8 %4 to i32
  %conv1.i.i138.1 = zext i8 %3 to i32
  %xor.i.i139.1 = xor i32 %conv1.i.i138.1, %conv.i.i137.1
  %conv2.i.i140.1 = trunc i32 %xor.i.i139.1 to i8
  %scevgep64.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep64.2, align 1
  %conv.i.i137.2 = zext i8 %5 to i32
  %conv1.i.i138.2 = zext i8 %conv2.i.i140.1 to i32
  %xor.i.i139.2 = xor i32 %conv1.i.i138.2, %conv.i.i137.2
  %conv2.i.i140.2 = trunc i32 %xor.i.i139.2 to i8
  %conv7 = zext i8 %conv2.i.i140.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep48 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep4849 = bitcast i8* %scevgep48 to [3 x [3 x i8]]*
  %scevgep55 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep5556 = bitcast i8* %scevgep55 to [3 x [3 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep48, align 1
  %6 = load i8, i8* %scevgep48, align 1
  store i8 %6, i8* %scevgep55, align 1
  %scevgep53 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %scevgep60 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5556, i64 0, i64 1, i64 0
  %call16.1130 = call zeroext i8 (...) @rand()
  store i8 %call16.1130, i8* %scevgep53, align 1
  %7 = load i8, i8* %scevgep53, align 1
  store i8 %7, i8* %scevgep60, align 1
  %scevgep51 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4849, i64 0, i64 1, i64 1
  %scevgep58 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5556, i64 0, i64 1, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep51, align 1
  %8 = load i8, i8* %scevgep51, align 1
  store i8 %8, i8* %scevgep58, align 1
  %9 = load i8, i8* %a, align 1
  %conv44.1 = zext i8 %9 to i32
  %xor.1 = xor i32 %conv44.1, 1
  %conv45.1 = trunc i32 %xor.1 to i8
  %scevgep36.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep36.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %conv45.1, i8 zeroext %10)
  %scevgep40.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 1
  store i8 %call50.1, i8* %scevgep40.1, align 1
  %scevgep41.1 = getelementptr i8, i8* %b, i64 1
  %11 = load i8, i8* %scevgep41.1, align 1
  %conv57.1 = zext i8 %11 to i32
  %scevgep37.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep37.1, align 1
  %conv62.1 = zext i8 %12 to i32
  %xor63.1 = xor i32 %conv57.1, %conv62.1
  %conv64.1 = trunc i32 %xor63.1 to i8
  %scevgep44.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %v, i64 0, i64 0, i64 1
  store i8 %conv64.1, i8* %scevgep44.1, align 1
  %13 = load i8, i8* %a, align 1
  %conv44.2 = zext i8 %13 to i32
  %xor.2 = xor i32 %conv44.2, 1
  %conv45.2 = trunc i32 %xor.2 to i8
  %scevgep36.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %14 = load i8, i8* %scevgep36.2, align 1
  %call50.2 = call zeroext i8 @mult(i8 zeroext %conv45.2, i8 zeroext %14)
  %scevgep40.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 2
  store i8 %call50.2, i8* %scevgep40.2, align 1
  %scevgep41.2 = getelementptr i8, i8* %b, i64 2
  %15 = load i8, i8* %scevgep41.2, align 1
  %conv57.2 = zext i8 %15 to i32
  %scevgep37.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %16 = load i8, i8* %scevgep37.2, align 1
  %conv62.2 = zext i8 %16 to i32
  %xor63.2 = xor i32 %conv57.2, %conv62.2
  %conv64.2 = trunc i32 %xor63.2 to i8
  %scevgep44.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %v, i64 0, i64 0, i64 2
  store i8 %conv64.2, i8* %scevgep44.2, align 1
  %scevgep35 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep35 to [3 x [3 x i8]]*
  %scevgep39 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 1, i64 0
  %18 = bitcast i8* %scevgep39 to [3 x [3 x i8]]*
  %scevgep43 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %v, i64 0, i64 1, i64 0
  %19 = bitcast i8* %scevgep43 to [3 x [3 x i8]]*
  %arrayidx43.1 = getelementptr inbounds i8, i8* %a, i64 1
  %20 = load i8, i8* %arrayidx43.1, align 1
  %conv44.198 = zext i8 %20 to i32
  %xor.199 = xor i32 %conv44.198, 1
  %conv45.1100 = trunc i32 %xor.199 to i8
  %scevgep36.1101 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %17, i64 0, i64 0, i64 0
  %21 = load i8, i8* %scevgep36.1101, align 1
  %call50.1102 = call zeroext i8 @mult(i8 zeroext %conv45.1100, i8 zeroext %21)
  %scevgep40.1103 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %18, i64 0, i64 0, i64 0
  store i8 %call50.1102, i8* %scevgep40.1103, align 1
  %22 = load i8, i8* %b, align 1
  %conv57.1104 = zext i8 %22 to i32
  %scevgep37.1105 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %17, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep37.1105, align 1
  %conv62.1106 = zext i8 %23 to i32
  %xor63.1107 = xor i32 %conv57.1104, %conv62.1106
  %conv64.1108 = trunc i32 %xor63.1107 to i8
  %scevgep44.1109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 0
  store i8 %conv64.1108, i8* %scevgep44.1109, align 1
  %24 = load i8, i8* %arrayidx43.1, align 1
  %conv44.2.1 = zext i8 %24 to i32
  %xor.2.1 = xor i32 %conv44.2.1, 1
  %conv45.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep36.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %17, i64 0, i64 0, i64 2
  %25 = load i8, i8* %scevgep36.2.1, align 1
  %call50.2.1 = call zeroext i8 @mult(i8 zeroext %conv45.2.1, i8 zeroext %25)
  %scevgep40.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %18, i64 0, i64 0, i64 2
  store i8 %call50.2.1, i8* %scevgep40.2.1, align 1
  %scevgep41.2.1 = getelementptr i8, i8* %b, i64 2
  %26 = load i8, i8* %scevgep41.2.1, align 1
  %conv57.2.1 = zext i8 %26 to i32
  %scevgep37.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %17, i64 0, i64 0, i64 2
  %27 = load i8, i8* %scevgep37.2.1, align 1
  %conv62.2.1 = zext i8 %27 to i32
  %xor63.2.1 = xor i32 %conv57.2.1, %conv62.2.1
  %conv64.2.1 = trunc i32 %xor63.2.1 to i8
  %scevgep44.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 2
  store i8 %conv64.2.1, i8* %scevgep44.2.1, align 1
  %scevgep35.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %17, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep35.1 to [3 x [3 x i8]]*
  %scevgep39.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %18, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep39.1 to [3 x [3 x i8]]*
  %scevgep43.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep43.1 to [3 x [3 x i8]]*
  %arrayidx43.2 = getelementptr inbounds i8, i8* %a, i64 2
  %31 = load i8, i8* %arrayidx43.2, align 1
  %conv44.2114 = zext i8 %31 to i32
  %xor.2115 = xor i32 %conv44.2114, 1
  %conv45.2116 = trunc i32 %xor.2115 to i8
  %scevgep36.2117 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  %32 = load i8, i8* %scevgep36.2117, align 1
  %call50.2118 = call zeroext i8 @mult(i8 zeroext %conv45.2116, i8 zeroext %32)
  %scevgep40.2119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %call50.2118, i8* %scevgep40.2119, align 1
  %33 = load i8, i8* %b, align 1
  %conv57.2120 = zext i8 %33 to i32
  %scevgep37.2121 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  %34 = load i8, i8* %scevgep37.2121, align 1
  %conv62.2122 = zext i8 %34 to i32
  %xor63.2123 = xor i32 %conv57.2120, %conv62.2122
  %conv64.2124 = trunc i32 %xor63.2123 to i8
  %scevgep44.2125 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %30, i64 0, i64 0, i64 0
  store i8 %conv64.2124, i8* %scevgep44.2125, align 1
  %35 = load i8, i8* %arrayidx43.2, align 1
  %conv44.1.2 = zext i8 %35 to i32
  %xor.1.2 = xor i32 %conv44.1.2, 1
  %conv45.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep36.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 1
  %36 = load i8, i8* %scevgep36.1.2, align 1
  %call50.1.2 = call zeroext i8 @mult(i8 zeroext %conv45.1.2, i8 zeroext %36)
  %scevgep40.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 1
  store i8 %call50.1.2, i8* %scevgep40.1.2, align 1
  %scevgep41.1.2 = getelementptr i8, i8* %b, i64 1
  %37 = load i8, i8* %scevgep41.1.2, align 1
  %conv57.1.2 = zext i8 %37 to i32
  %scevgep37.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep37.1.2, align 1
  %conv62.1.2 = zext i8 %38 to i32
  %xor63.1.2 = xor i32 %conv57.1.2, %conv62.1.2
  %conv64.1.2 = trunc i32 %xor63.1.2 to i8
  %scevgep44.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %30, i64 0, i64 0, i64 1
  store i8 %conv64.1.2, i8* %scevgep44.1.2, align 1
  %39 = load i8, i8* %a, align 1
  %40 = load i8, i8* %b, align 1
  %call84 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40)
  store i8 %call84, i8* %c, align 1
  %scevgep22.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 1
  %41 = load i8, i8* %scevgep22.1, align 1
  %conv99.1 = zext i8 %41 to i32
  %42 = load i8, i8* %a, align 1
  %scevgep25.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %v, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep25.1, align 1
  %call106.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %conv107.1 = zext i8 %call106.1 to i32
  %xor108.1 = xor i32 %conv99.1, %conv107.1
  %44 = load i8, i8* %c, align 1
  %conv111.1 = zext i8 %44 to i32
  %xor112.1 = xor i32 %conv111.1, %xor108.1
  %conv113.1 = trunc i32 %xor112.1 to i8
  store i8 %conv113.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep22.2, align 1
  %conv99.2 = zext i8 %45 to i32
  %46 = load i8, i8* %a, align 1
  %scevgep25.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %v, i64 0, i64 0, i64 2
  %47 = load i8, i8* %scevgep25.2, align 1
  %call106.2 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %conv107.2 = zext i8 %call106.2 to i32
  %xor108.2 = xor i32 %conv99.2, %conv107.2
  %48 = load i8, i8* %c, align 1
  %conv111.2 = zext i8 %48 to i32
  %xor112.2 = xor i32 %conv111.2, %xor108.2
  %conv113.2 = trunc i32 %xor112.2 to i8
  store i8 %conv113.2, i8* %c, align 1
  %scevgep21 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep21 to [3 x [3 x i8]]*
  %scevgep24 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %v, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep24 to [3 x [3 x i8]]*
  %arrayidx81.1 = getelementptr inbounds i8, i8* %a, i64 1
  %51 = load i8, i8* %arrayidx81.1, align 1
  %arrayidx83.1 = getelementptr inbounds i8, i8* %b, i64 1
  %52 = load i8, i8* %arrayidx83.1, align 1
  %call84.1 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %arrayidx86.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call84.1, i8* %arrayidx86.1, align 1
  %arrayidx101.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.172 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  %53 = load i8, i8* %scevgep22.172, align 1
  %conv99.173 = zext i8 %53 to i32
  %54 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.174 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 0
  %55 = load i8, i8* %scevgep25.174, align 1
  %call106.175 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55)
  %conv107.176 = zext i8 %call106.175 to i32
  %xor108.177 = xor i32 %conv99.173, %conv107.176
  %56 = load i8, i8* %arrayidx110.1, align 1
  %conv111.178 = zext i8 %56 to i32
  %xor112.179 = xor i32 %conv111.178, %xor108.177
  %conv113.180 = trunc i32 %xor112.179 to i8
  store i8 %conv113.180, i8* %arrayidx110.1, align 1
  %scevgep22.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 2
  %57 = load i8, i8* %scevgep22.2.1, align 1
  %conv99.2.1 = zext i8 %57 to i32
  %58 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep25.2.1, align 1
  %call106.2.1 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %conv107.2.1 = zext i8 %call106.2.1 to i32
  %xor108.2.1 = xor i32 %conv99.2.1, %conv107.2.1
  %60 = load i8, i8* %arrayidx110.1, align 1
  %conv111.2.1 = zext i8 %60 to i32
  %xor112.2.1 = xor i32 %conv111.2.1, %xor108.2.1
  %conv113.2.1 = trunc i32 %xor112.2.1 to i8
  store i8 %conv113.2.1, i8* %arrayidx110.1, align 1
  %scevgep21.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 1, i64 0
  %61 = bitcast i8* %scevgep21.1 to [3 x [3 x i8]]*
  %scevgep24.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep24.1 to [3 x [3 x i8]]*
  %arrayidx81.2 = getelementptr inbounds i8, i8* %a, i64 2
  %63 = load i8, i8* %arrayidx81.2, align 1
  %arrayidx83.2 = getelementptr inbounds i8, i8* %b, i64 2
  %64 = load i8, i8* %arrayidx83.2, align 1
  %call84.2 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %arrayidx86.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call84.2, i8* %arrayidx86.2, align 1
  %arrayidx101.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx110.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.285 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %61, i64 0, i64 0, i64 0
  %65 = load i8, i8* %scevgep22.285, align 1
  %conv99.286 = zext i8 %65 to i32
  %66 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.287 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 0
  %67 = load i8, i8* %scevgep25.287, align 1
  %call106.288 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %conv107.289 = zext i8 %call106.288 to i32
  %xor108.290 = xor i32 %conv99.286, %conv107.289
  %68 = load i8, i8* %arrayidx110.2, align 1
  %conv111.291 = zext i8 %68 to i32
  %xor112.292 = xor i32 %conv111.291, %xor108.290
  %conv113.293 = trunc i32 %xor112.292 to i8
  store i8 %conv113.293, i8* %arrayidx110.2, align 1
  %scevgep22.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %61, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep22.1.2, align 1
  %conv99.1.2 = zext i8 %69 to i32
  %70 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep25.1.2, align 1
  %call106.1.2 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  %conv107.1.2 = zext i8 %call106.1.2 to i32
  %xor108.1.2 = xor i32 %conv99.1.2, %conv107.1.2
  %72 = load i8, i8* %arrayidx110.2, align 1
  %conv111.1.2 = zext i8 %72 to i32
  %xor112.1.2 = xor i32 %conv111.1.2, %xor108.1.2
  %conv113.1.2 = trunc i32 %xor112.1.2 to i8
  store i8 %conv113.1.2, i8* %arrayidx110.2, align 1
  %call121 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv122 = zext i8 %call121 to i32
  %73 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %74 = load i8, i8* %scevgep.1, align 1
  %conv.i.i154.1 = zext i8 %74 to i32
  %conv1.i.i155.1 = zext i8 %73 to i32
  %xor.i.i156.1 = xor i32 %conv1.i.i155.1, %conv.i.i154.1
  %conv2.i.i157.1 = trunc i32 %xor.i.i156.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %75 = load i8, i8* %scevgep.2, align 1
  %conv.i.i154.2 = zext i8 %75 to i32
  %conv1.i.i155.2 = zext i8 %conv2.i.i157.1 to i32
  %xor.i.i156.2 = xor i32 %conv1.i.i155.2, %conv.i.i154.2
  %conv2.i.i157.2 = trunc i32 %xor.i.i156.2 to i8
  %conv124 = zext i8 %conv2.i.i157.2 to i32
  %cmp125 = icmp eq i32 %conv122, %conv124
  call void @assert(i1 zeroext %cmp125)
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
