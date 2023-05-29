; ModuleID = '../examples/hpc2-mult.inline-4.ll'
source_filename = "../examples/hpc2-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
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
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [5 x [5 x i8]], align 16
  %u = alloca [5 x [5 x i8]], align 16
  %v = alloca [5 x [5 x i8]], align 16
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
  %scevgep68.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep68.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep68.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep68.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep64.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i137.1 = zext i8 %6 to i32
  %conv1.i.i138.1 = zext i8 %5 to i32
  %xor.i.i139.1 = xor i32 %conv1.i.i138.1, %conv.i.i137.1
  %conv2.i.i140.1 = trunc i32 %xor.i.i139.1 to i8
  %scevgep64.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep64.2, align 1
  %conv.i.i137.2 = zext i8 %7 to i32
  %conv1.i.i138.2 = zext i8 %conv2.i.i140.1 to i32
  %xor.i.i139.2 = xor i32 %conv1.i.i138.2, %conv.i.i137.2
  %conv2.i.i140.2 = trunc i32 %xor.i.i139.2 to i8
  %scevgep64.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep64.3, align 1
  %conv.i.i137.3 = zext i8 %8 to i32
  %conv1.i.i138.3 = zext i8 %conv2.i.i140.2 to i32
  %xor.i.i139.3 = xor i32 %conv1.i.i138.3, %conv.i.i137.3
  %conv2.i.i140.3 = trunc i32 %xor.i.i139.3 to i8
  %scevgep64.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep64.4, align 1
  %conv.i.i137.4 = zext i8 %9 to i32
  %conv1.i.i138.4 = zext i8 %conv2.i.i140.3 to i32
  %xor.i.i139.4 = xor i32 %conv1.i.i138.4, %conv.i.i137.4
  %conv2.i.i140.4 = trunc i32 %xor.i.i139.4 to i8
  %conv7 = zext i8 %conv2.i.i140.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep48 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep4849 = bitcast i8* %scevgep48 to [5 x [5 x i8]]*
  %scevgep55 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep5556 = bitcast i8* %scevgep55 to [5 x [5 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep48, align 1
  %10 = load i8, i8* %scevgep48, align 1
  store i8 %10, i8* %scevgep55, align 1
  %scevgep53 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %11 = bitcast i8* %scevgep53 to [5 x [5 x i8]]*
  %scevgep60 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5556, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep60 to [5 x [5 x i8]]*
  %call16.1186 = call zeroext i8 (...) @rand()
  store i8 %call16.1186, i8* %scevgep53, align 1
  %13 = load i8, i8* %scevgep53, align 1
  store i8 %13, i8* %scevgep60, align 1
  %scevgep53.1187 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 1
  %14 = bitcast i8* %scevgep53.1187 to [5 x [5 x i8]]*
  %scevgep60.1188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep60.1188 to [5 x [5 x i8]]*
  %call16.2190 = call zeroext i8 (...) @rand()
  store i8 %call16.2190, i8* %scevgep53.1187, align 1
  %16 = load i8, i8* %scevgep53.1187, align 1
  store i8 %16, i8* %scevgep60.1188, align 1
  %scevgep53.2191 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %14, i64 0, i64 0, i64 1
  %scevgep60.2192 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %15, i64 0, i64 1, i64 0
  %call16.3194 = call zeroext i8 (...) @rand()
  store i8 %call16.3194, i8* %scevgep53.2191, align 1
  %17 = load i8, i8* %scevgep53.2191, align 1
  store i8 %17, i8* %scevgep60.2192, align 1
  %scevgep51 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 1, i64 1
  %18 = bitcast i8* %scevgep51 to [5 x [5 x i8]]*
  %scevgep58 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5556, i64 0, i64 1, i64 1
  %19 = bitcast i8* %scevgep58 to [5 x [5 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep51, align 1
  %20 = load i8, i8* %scevgep51, align 1
  store i8 %20, i8* %scevgep58, align 1
  %scevgep53.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %18, i64 0, i64 0, i64 1
  %21 = bitcast i8* %scevgep53.1 to [5 x [5 x i8]]*
  %scevgep60.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %19, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep60.1 to [5 x [5 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep53.1, align 1
  %23 = load i8, i8* %scevgep53.1, align 1
  store i8 %23, i8* %scevgep60.1, align 1
  %scevgep53.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %21, i64 0, i64 0, i64 1
  %scevgep60.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %22, i64 0, i64 1, i64 0
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep53.1.1, align 1
  %24 = load i8, i8* %scevgep53.1.1, align 1
  store i8 %24, i8* %scevgep60.1.1, align 1
  %scevgep51.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %18, i64 0, i64 1, i64 1
  %25 = bitcast i8* %scevgep51.1 to [5 x [5 x i8]]*
  %scevgep58.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %19, i64 0, i64 1, i64 1
  %26 = bitcast i8* %scevgep58.1 to [5 x [5 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep51.1, align 1
  %27 = load i8, i8* %scevgep51.1, align 1
  store i8 %27, i8* %scevgep58.1, align 1
  %scevgep53.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 1
  %scevgep60.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %26, i64 0, i64 1, i64 0
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep53.2, align 1
  %28 = load i8, i8* %scevgep53.2, align 1
  store i8 %28, i8* %scevgep60.2, align 1
  %scevgep51.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 1, i64 1
  %scevgep58.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %26, i64 0, i64 1, i64 1
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep51.2, align 1
  %29 = load i8, i8* %scevgep51.2, align 1
  store i8 %29, i8* %scevgep58.2, align 1
  %30 = load i8, i8* %a, align 1
  %conv44.1 = zext i8 %30 to i32
  %xor.1 = xor i32 %conv44.1, 1
  %conv45.1 = trunc i32 %xor.1 to i8
  %scevgep36.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep36.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %conv45.1, i8 zeroext %31)
  %scevgep40.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 1
  store i8 %call50.1, i8* %scevgep40.1, align 1
  %scevgep41.1 = getelementptr i8, i8* %b, i64 1
  %32 = load i8, i8* %scevgep41.1, align 1
  %conv57.1 = zext i8 %32 to i32
  %scevgep37.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %33 = load i8, i8* %scevgep37.1, align 1
  %conv62.1 = zext i8 %33 to i32
  %xor63.1 = xor i32 %conv57.1, %conv62.1
  %conv64.1 = trunc i32 %xor63.1 to i8
  %scevgep44.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 1
  store i8 %conv64.1, i8* %scevgep44.1, align 1
  %34 = load i8, i8* %a, align 1
  %conv44.2 = zext i8 %34 to i32
  %xor.2 = xor i32 %conv44.2, 1
  %conv45.2 = trunc i32 %xor.2 to i8
  %scevgep36.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep36.2, align 1
  %call50.2 = call zeroext i8 @mult(i8 zeroext %conv45.2, i8 zeroext %35)
  %scevgep40.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 2
  store i8 %call50.2, i8* %scevgep40.2, align 1
  %scevgep41.2 = getelementptr i8, i8* %b, i64 2
  %36 = load i8, i8* %scevgep41.2, align 1
  %conv57.2 = zext i8 %36 to i32
  %scevgep37.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep37.2, align 1
  %conv62.2 = zext i8 %37 to i32
  %xor63.2 = xor i32 %conv57.2, %conv62.2
  %conv64.2 = trunc i32 %xor63.2 to i8
  %scevgep44.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 2
  store i8 %conv64.2, i8* %scevgep44.2, align 1
  %38 = load i8, i8* %a, align 1
  %conv44.3 = zext i8 %38 to i32
  %xor.3 = xor i32 %conv44.3, 1
  %conv45.3 = trunc i32 %xor.3 to i8
  %scevgep36.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  %39 = load i8, i8* %scevgep36.3, align 1
  %call50.3 = call zeroext i8 @mult(i8 zeroext %conv45.3, i8 zeroext %39)
  %scevgep40.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 3
  store i8 %call50.3, i8* %scevgep40.3, align 1
  %scevgep41.3 = getelementptr i8, i8* %b, i64 3
  %40 = load i8, i8* %scevgep41.3, align 1
  %conv57.3 = zext i8 %40 to i32
  %scevgep37.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  %41 = load i8, i8* %scevgep37.3, align 1
  %conv62.3 = zext i8 %41 to i32
  %xor63.3 = xor i32 %conv57.3, %conv62.3
  %conv64.3 = trunc i32 %xor63.3 to i8
  %scevgep44.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 3
  store i8 %conv64.3, i8* %scevgep44.3, align 1
  %42 = load i8, i8* %a, align 1
  %conv44.4 = zext i8 %42 to i32
  %xor.4 = xor i32 %conv44.4, 1
  %conv45.4 = trunc i32 %xor.4 to i8
  %scevgep36.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  %43 = load i8, i8* %scevgep36.4, align 1
  %call50.4 = call zeroext i8 @mult(i8 zeroext %conv45.4, i8 zeroext %43)
  %scevgep40.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 4
  store i8 %call50.4, i8* %scevgep40.4, align 1
  %scevgep41.4 = getelementptr i8, i8* %b, i64 4
  %44 = load i8, i8* %scevgep41.4, align 1
  %conv57.4 = zext i8 %44 to i32
  %scevgep37.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  %45 = load i8, i8* %scevgep37.4, align 1
  %conv62.4 = zext i8 %45 to i32
  %xor63.4 = xor i32 %conv57.4, %conv62.4
  %conv64.4 = trunc i32 %xor63.4 to i8
  %scevgep44.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 4
  store i8 %conv64.4, i8* %scevgep44.4, align 1
  %scevgep35 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep35 to [5 x [5 x i8]]*
  %scevgep39 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep39 to [5 x [5 x i8]]*
  %scevgep43 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep43 to [5 x [5 x i8]]*
  %arrayidx43.1 = getelementptr inbounds i8, i8* %a, i64 1
  %49 = load i8, i8* %arrayidx43.1, align 1
  %conv44.1124 = zext i8 %49 to i32
  %xor.1125 = xor i32 %conv44.1124, 1
  %conv45.1126 = trunc i32 %xor.1125 to i8
  %scevgep36.1127 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep36.1127, align 1
  %call50.1128 = call zeroext i8 @mult(i8 zeroext %conv45.1126, i8 zeroext %50)
  %scevgep40.1129 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %47, i64 0, i64 0, i64 0
  store i8 %call50.1128, i8* %scevgep40.1129, align 1
  %51 = load i8, i8* %b, align 1
  %conv57.1130 = zext i8 %51 to i32
  %scevgep37.1131 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep37.1131, align 1
  %conv62.1132 = zext i8 %52 to i32
  %xor63.1133 = xor i32 %conv57.1130, %conv62.1132
  %conv64.1134 = trunc i32 %xor63.1133 to i8
  %scevgep44.1135 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 0, i64 0
  store i8 %conv64.1134, i8* %scevgep44.1135, align 1
  %53 = load i8, i8* %arrayidx43.1, align 1
  %conv44.2.1 = zext i8 %53 to i32
  %xor.2.1 = xor i32 %conv44.2.1, 1
  %conv45.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep36.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 2
  %54 = load i8, i8* %scevgep36.2.1, align 1
  %call50.2.1 = call zeroext i8 @mult(i8 zeroext %conv45.2.1, i8 zeroext %54)
  %scevgep40.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %47, i64 0, i64 0, i64 2
  store i8 %call50.2.1, i8* %scevgep40.2.1, align 1
  %scevgep41.2.1 = getelementptr i8, i8* %b, i64 2
  %55 = load i8, i8* %scevgep41.2.1, align 1
  %conv57.2.1 = zext i8 %55 to i32
  %scevgep37.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep37.2.1, align 1
  %conv62.2.1 = zext i8 %56 to i32
  %xor63.2.1 = xor i32 %conv57.2.1, %conv62.2.1
  %conv64.2.1 = trunc i32 %xor63.2.1 to i8
  %scevgep44.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 0, i64 2
  store i8 %conv64.2.1, i8* %scevgep44.2.1, align 1
  %57 = load i8, i8* %arrayidx43.1, align 1
  %conv44.3.1 = zext i8 %57 to i32
  %xor.3.1 = xor i32 %conv44.3.1, 1
  %conv45.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep36.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 3
  %58 = load i8, i8* %scevgep36.3.1, align 1
  %call50.3.1 = call zeroext i8 @mult(i8 zeroext %conv45.3.1, i8 zeroext %58)
  %scevgep40.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %47, i64 0, i64 0, i64 3
  store i8 %call50.3.1, i8* %scevgep40.3.1, align 1
  %scevgep41.3.1 = getelementptr i8, i8* %b, i64 3
  %59 = load i8, i8* %scevgep41.3.1, align 1
  %conv57.3.1 = zext i8 %59 to i32
  %scevgep37.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 3
  %60 = load i8, i8* %scevgep37.3.1, align 1
  %conv62.3.1 = zext i8 %60 to i32
  %xor63.3.1 = xor i32 %conv57.3.1, %conv62.3.1
  %conv64.3.1 = trunc i32 %xor63.3.1 to i8
  %scevgep44.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 0, i64 3
  store i8 %conv64.3.1, i8* %scevgep44.3.1, align 1
  %61 = load i8, i8* %arrayidx43.1, align 1
  %conv44.4.1 = zext i8 %61 to i32
  %xor.4.1 = xor i32 %conv44.4.1, 1
  %conv45.4.1 = trunc i32 %xor.4.1 to i8
  %scevgep36.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 4
  %62 = load i8, i8* %scevgep36.4.1, align 1
  %call50.4.1 = call zeroext i8 @mult(i8 zeroext %conv45.4.1, i8 zeroext %62)
  %scevgep40.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %47, i64 0, i64 0, i64 4
  store i8 %call50.4.1, i8* %scevgep40.4.1, align 1
  %scevgep41.4.1 = getelementptr i8, i8* %b, i64 4
  %63 = load i8, i8* %scevgep41.4.1, align 1
  %conv57.4.1 = zext i8 %63 to i32
  %scevgep37.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 0, i64 4
  %64 = load i8, i8* %scevgep37.4.1, align 1
  %conv62.4.1 = zext i8 %64 to i32
  %xor63.4.1 = xor i32 %conv57.4.1, %conv62.4.1
  %conv64.4.1 = trunc i32 %xor63.4.1 to i8
  %scevgep44.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 0, i64 4
  store i8 %conv64.4.1, i8* %scevgep44.4.1, align 1
  %scevgep35.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep35.1 to [5 x [5 x i8]]*
  %scevgep39.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %47, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep39.1 to [5 x [5 x i8]]*
  %scevgep43.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep43.1 to [5 x [5 x i8]]*
  %arrayidx43.2 = getelementptr inbounds i8, i8* %a, i64 2
  %68 = load i8, i8* %arrayidx43.2, align 1
  %conv44.2140 = zext i8 %68 to i32
  %xor.2141 = xor i32 %conv44.2140, 1
  %conv45.2142 = trunc i32 %xor.2141 to i8
  %scevgep36.2143 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 0
  %69 = load i8, i8* %scevgep36.2143, align 1
  %call50.2144 = call zeroext i8 @mult(i8 zeroext %conv45.2142, i8 zeroext %69)
  %scevgep40.2145 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 0
  store i8 %call50.2144, i8* %scevgep40.2145, align 1
  %70 = load i8, i8* %b, align 1
  %conv57.2146 = zext i8 %70 to i32
  %scevgep37.2147 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 0
  %71 = load i8, i8* %scevgep37.2147, align 1
  %conv62.2148 = zext i8 %71 to i32
  %xor63.2149 = xor i32 %conv57.2146, %conv62.2148
  %conv64.2150 = trunc i32 %xor63.2149 to i8
  %scevgep44.2151 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 0
  store i8 %conv64.2150, i8* %scevgep44.2151, align 1
  %72 = load i8, i8* %arrayidx43.2, align 1
  %conv44.1.2 = zext i8 %72 to i32
  %xor.1.2 = xor i32 %conv44.1.2, 1
  %conv45.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep36.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 1
  %73 = load i8, i8* %scevgep36.1.2, align 1
  %call50.1.2 = call zeroext i8 @mult(i8 zeroext %conv45.1.2, i8 zeroext %73)
  %scevgep40.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 1
  store i8 %call50.1.2, i8* %scevgep40.1.2, align 1
  %scevgep41.1.2 = getelementptr i8, i8* %b, i64 1
  %74 = load i8, i8* %scevgep41.1.2, align 1
  %conv57.1.2 = zext i8 %74 to i32
  %scevgep37.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 1
  %75 = load i8, i8* %scevgep37.1.2, align 1
  %conv62.1.2 = zext i8 %75 to i32
  %xor63.1.2 = xor i32 %conv57.1.2, %conv62.1.2
  %conv64.1.2 = trunc i32 %xor63.1.2 to i8
  %scevgep44.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 1
  store i8 %conv64.1.2, i8* %scevgep44.1.2, align 1
  %76 = load i8, i8* %arrayidx43.2, align 1
  %conv44.3.2 = zext i8 %76 to i32
  %xor.3.2 = xor i32 %conv44.3.2, 1
  %conv45.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep36.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 3
  %77 = load i8, i8* %scevgep36.3.2, align 1
  %call50.3.2 = call zeroext i8 @mult(i8 zeroext %conv45.3.2, i8 zeroext %77)
  %scevgep40.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 3
  store i8 %call50.3.2, i8* %scevgep40.3.2, align 1
  %scevgep41.3.2 = getelementptr i8, i8* %b, i64 3
  %78 = load i8, i8* %scevgep41.3.2, align 1
  %conv57.3.2 = zext i8 %78 to i32
  %scevgep37.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 3
  %79 = load i8, i8* %scevgep37.3.2, align 1
  %conv62.3.2 = zext i8 %79 to i32
  %xor63.3.2 = xor i32 %conv57.3.2, %conv62.3.2
  %conv64.3.2 = trunc i32 %xor63.3.2 to i8
  %scevgep44.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 3
  store i8 %conv64.3.2, i8* %scevgep44.3.2, align 1
  %80 = load i8, i8* %arrayidx43.2, align 1
  %conv44.4.2 = zext i8 %80 to i32
  %xor.4.2 = xor i32 %conv44.4.2, 1
  %conv45.4.2 = trunc i32 %xor.4.2 to i8
  %scevgep36.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 4
  %81 = load i8, i8* %scevgep36.4.2, align 1
  %call50.4.2 = call zeroext i8 @mult(i8 zeroext %conv45.4.2, i8 zeroext %81)
  %scevgep40.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 4
  store i8 %call50.4.2, i8* %scevgep40.4.2, align 1
  %scevgep41.4.2 = getelementptr i8, i8* %b, i64 4
  %82 = load i8, i8* %scevgep41.4.2, align 1
  %conv57.4.2 = zext i8 %82 to i32
  %scevgep37.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 4
  %83 = load i8, i8* %scevgep37.4.2, align 1
  %conv62.4.2 = zext i8 %83 to i32
  %xor63.4.2 = xor i32 %conv57.4.2, %conv62.4.2
  %conv64.4.2 = trunc i32 %xor63.4.2 to i8
  %scevgep44.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 4
  store i8 %conv64.4.2, i8* %scevgep44.4.2, align 1
  %scevgep35.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 1, i64 0
  %84 = bitcast i8* %scevgep35.2 to [5 x [5 x i8]]*
  %scevgep39.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep39.2 to [5 x [5 x i8]]*
  %scevgep43.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep43.2 to [5 x [5 x i8]]*
  %arrayidx43.3 = getelementptr inbounds i8, i8* %a, i64 3
  %87 = load i8, i8* %arrayidx43.3, align 1
  %conv44.3156 = zext i8 %87 to i32
  %xor.3157 = xor i32 %conv44.3156, 1
  %conv45.3158 = trunc i32 %xor.3157 to i8
  %scevgep36.3159 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep36.3159, align 1
  %call50.3160 = call zeroext i8 @mult(i8 zeroext %conv45.3158, i8 zeroext %88)
  %scevgep40.3161 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 0
  store i8 %call50.3160, i8* %scevgep40.3161, align 1
  %89 = load i8, i8* %b, align 1
  %conv57.3162 = zext i8 %89 to i32
  %scevgep37.3163 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 0
  %90 = load i8, i8* %scevgep37.3163, align 1
  %conv62.3164 = zext i8 %90 to i32
  %xor63.3165 = xor i32 %conv57.3162, %conv62.3164
  %conv64.3166 = trunc i32 %xor63.3165 to i8
  %scevgep44.3167 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 0
  store i8 %conv64.3166, i8* %scevgep44.3167, align 1
  %91 = load i8, i8* %arrayidx43.3, align 1
  %conv44.1.3 = zext i8 %91 to i32
  %xor.1.3 = xor i32 %conv44.1.3, 1
  %conv45.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep36.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 1
  %92 = load i8, i8* %scevgep36.1.3, align 1
  %call50.1.3 = call zeroext i8 @mult(i8 zeroext %conv45.1.3, i8 zeroext %92)
  %scevgep40.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 1
  store i8 %call50.1.3, i8* %scevgep40.1.3, align 1
  %scevgep41.1.3 = getelementptr i8, i8* %b, i64 1
  %93 = load i8, i8* %scevgep41.1.3, align 1
  %conv57.1.3 = zext i8 %93 to i32
  %scevgep37.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 1
  %94 = load i8, i8* %scevgep37.1.3, align 1
  %conv62.1.3 = zext i8 %94 to i32
  %xor63.1.3 = xor i32 %conv57.1.3, %conv62.1.3
  %conv64.1.3 = trunc i32 %xor63.1.3 to i8
  %scevgep44.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 1
  store i8 %conv64.1.3, i8* %scevgep44.1.3, align 1
  %95 = load i8, i8* %arrayidx43.3, align 1
  %conv44.2.3 = zext i8 %95 to i32
  %xor.2.3 = xor i32 %conv44.2.3, 1
  %conv45.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep36.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 2
  %96 = load i8, i8* %scevgep36.2.3, align 1
  %call50.2.3 = call zeroext i8 @mult(i8 zeroext %conv45.2.3, i8 zeroext %96)
  %scevgep40.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 2
  store i8 %call50.2.3, i8* %scevgep40.2.3, align 1
  %scevgep41.2.3 = getelementptr i8, i8* %b, i64 2
  %97 = load i8, i8* %scevgep41.2.3, align 1
  %conv57.2.3 = zext i8 %97 to i32
  %scevgep37.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 2
  %98 = load i8, i8* %scevgep37.2.3, align 1
  %conv62.2.3 = zext i8 %98 to i32
  %xor63.2.3 = xor i32 %conv57.2.3, %conv62.2.3
  %conv64.2.3 = trunc i32 %xor63.2.3 to i8
  %scevgep44.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 2
  store i8 %conv64.2.3, i8* %scevgep44.2.3, align 1
  %99 = load i8, i8* %arrayidx43.3, align 1
  %conv44.4.3 = zext i8 %99 to i32
  %xor.4.3 = xor i32 %conv44.4.3, 1
  %conv45.4.3 = trunc i32 %xor.4.3 to i8
  %scevgep36.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 4
  %100 = load i8, i8* %scevgep36.4.3, align 1
  %call50.4.3 = call zeroext i8 @mult(i8 zeroext %conv45.4.3, i8 zeroext %100)
  %scevgep40.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 4
  store i8 %call50.4.3, i8* %scevgep40.4.3, align 1
  %scevgep41.4.3 = getelementptr i8, i8* %b, i64 4
  %101 = load i8, i8* %scevgep41.4.3, align 1
  %conv57.4.3 = zext i8 %101 to i32
  %scevgep37.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 4
  %102 = load i8, i8* %scevgep37.4.3, align 1
  %conv62.4.3 = zext i8 %102 to i32
  %xor63.4.3 = xor i32 %conv57.4.3, %conv62.4.3
  %conv64.4.3 = trunc i32 %xor63.4.3 to i8
  %scevgep44.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 4
  store i8 %conv64.4.3, i8* %scevgep44.4.3, align 1
  %scevgep35.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep35.3 to [5 x [5 x i8]]*
  %scevgep39.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 1, i64 0
  %104 = bitcast i8* %scevgep39.3 to [5 x [5 x i8]]*
  %scevgep43.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 1, i64 0
  %105 = bitcast i8* %scevgep43.3 to [5 x [5 x i8]]*
  %arrayidx43.4 = getelementptr inbounds i8, i8* %a, i64 4
  %106 = load i8, i8* %arrayidx43.4, align 1
  %conv44.4172 = zext i8 %106 to i32
  %xor.4173 = xor i32 %conv44.4172, 1
  %conv45.4174 = trunc i32 %xor.4173 to i8
  %scevgep36.4175 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep36.4175, align 1
  %call50.4176 = call zeroext i8 @mult(i8 zeroext %conv45.4174, i8 zeroext %107)
  %scevgep40.4177 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 0
  store i8 %call50.4176, i8* %scevgep40.4177, align 1
  %108 = load i8, i8* %b, align 1
  %conv57.4178 = zext i8 %108 to i32
  %scevgep37.4179 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  %109 = load i8, i8* %scevgep37.4179, align 1
  %conv62.4180 = zext i8 %109 to i32
  %xor63.4181 = xor i32 %conv57.4178, %conv62.4180
  %conv64.4182 = trunc i32 %xor63.4181 to i8
  %scevgep44.4183 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %105, i64 0, i64 0, i64 0
  store i8 %conv64.4182, i8* %scevgep44.4183, align 1
  %110 = load i8, i8* %arrayidx43.4, align 1
  %conv44.1.4 = zext i8 %110 to i32
  %xor.1.4 = xor i32 %conv44.1.4, 1
  %conv45.1.4 = trunc i32 %xor.1.4 to i8
  %scevgep36.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep36.1.4, align 1
  %call50.1.4 = call zeroext i8 @mult(i8 zeroext %conv45.1.4, i8 zeroext %111)
  %scevgep40.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 1
  store i8 %call50.1.4, i8* %scevgep40.1.4, align 1
  %scevgep41.1.4 = getelementptr i8, i8* %b, i64 1
  %112 = load i8, i8* %scevgep41.1.4, align 1
  %conv57.1.4 = zext i8 %112 to i32
  %scevgep37.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep37.1.4, align 1
  %conv62.1.4 = zext i8 %113 to i32
  %xor63.1.4 = xor i32 %conv57.1.4, %conv62.1.4
  %conv64.1.4 = trunc i32 %xor63.1.4 to i8
  %scevgep44.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %105, i64 0, i64 0, i64 1
  store i8 %conv64.1.4, i8* %scevgep44.1.4, align 1
  %114 = load i8, i8* %arrayidx43.4, align 1
  %conv44.2.4 = zext i8 %114 to i32
  %xor.2.4 = xor i32 %conv44.2.4, 1
  %conv45.2.4 = trunc i32 %xor.2.4 to i8
  %scevgep36.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 2
  %115 = load i8, i8* %scevgep36.2.4, align 1
  %call50.2.4 = call zeroext i8 @mult(i8 zeroext %conv45.2.4, i8 zeroext %115)
  %scevgep40.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 2
  store i8 %call50.2.4, i8* %scevgep40.2.4, align 1
  %scevgep41.2.4 = getelementptr i8, i8* %b, i64 2
  %116 = load i8, i8* %scevgep41.2.4, align 1
  %conv57.2.4 = zext i8 %116 to i32
  %scevgep37.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 2
  %117 = load i8, i8* %scevgep37.2.4, align 1
  %conv62.2.4 = zext i8 %117 to i32
  %xor63.2.4 = xor i32 %conv57.2.4, %conv62.2.4
  %conv64.2.4 = trunc i32 %xor63.2.4 to i8
  %scevgep44.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %105, i64 0, i64 0, i64 2
  store i8 %conv64.2.4, i8* %scevgep44.2.4, align 1
  %118 = load i8, i8* %arrayidx43.4, align 1
  %conv44.3.4 = zext i8 %118 to i32
  %xor.3.4 = xor i32 %conv44.3.4, 1
  %conv45.3.4 = trunc i32 %xor.3.4 to i8
  %scevgep36.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 3
  %119 = load i8, i8* %scevgep36.3.4, align 1
  %call50.3.4 = call zeroext i8 @mult(i8 zeroext %conv45.3.4, i8 zeroext %119)
  %scevgep40.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 3
  store i8 %call50.3.4, i8* %scevgep40.3.4, align 1
  %scevgep41.3.4 = getelementptr i8, i8* %b, i64 3
  %120 = load i8, i8* %scevgep41.3.4, align 1
  %conv57.3.4 = zext i8 %120 to i32
  %scevgep37.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 3
  %121 = load i8, i8* %scevgep37.3.4, align 1
  %conv62.3.4 = zext i8 %121 to i32
  %xor63.3.4 = xor i32 %conv57.3.4, %conv62.3.4
  %conv64.3.4 = trunc i32 %xor63.3.4 to i8
  %scevgep44.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %105, i64 0, i64 0, i64 3
  store i8 %conv64.3.4, i8* %scevgep44.3.4, align 1
  %122 = load i8, i8* %a, align 1
  %123 = load i8, i8* %b, align 1
  %call84 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123)
  store i8 %call84, i8* %c, align 1
  %scevgep22.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 1
  %124 = load i8, i8* %scevgep22.1, align 1
  %conv99.1 = zext i8 %124 to i32
  %125 = load i8, i8* %a, align 1
  %scevgep25.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 1
  %126 = load i8, i8* %scevgep25.1, align 1
  %call106.1 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126)
  %conv107.1 = zext i8 %call106.1 to i32
  %xor108.1 = xor i32 %conv99.1, %conv107.1
  %127 = load i8, i8* %c, align 1
  %conv111.1 = zext i8 %127 to i32
  %xor112.1 = xor i32 %conv111.1, %xor108.1
  %conv113.1 = trunc i32 %xor112.1 to i8
  store i8 %conv113.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 2
  %128 = load i8, i8* %scevgep22.2, align 1
  %conv99.2 = zext i8 %128 to i32
  %129 = load i8, i8* %a, align 1
  %scevgep25.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 2
  %130 = load i8, i8* %scevgep25.2, align 1
  %call106.2 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130)
  %conv107.2 = zext i8 %call106.2 to i32
  %xor108.2 = xor i32 %conv99.2, %conv107.2
  %131 = load i8, i8* %c, align 1
  %conv111.2 = zext i8 %131 to i32
  %xor112.2 = xor i32 %conv111.2, %xor108.2
  %conv113.2 = trunc i32 %xor112.2 to i8
  store i8 %conv113.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 3
  %132 = load i8, i8* %scevgep22.3, align 1
  %conv99.3 = zext i8 %132 to i32
  %133 = load i8, i8* %a, align 1
  %scevgep25.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 3
  %134 = load i8, i8* %scevgep25.3, align 1
  %call106.3 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134)
  %conv107.3 = zext i8 %call106.3 to i32
  %xor108.3 = xor i32 %conv99.3, %conv107.3
  %135 = load i8, i8* %c, align 1
  %conv111.3 = zext i8 %135 to i32
  %xor112.3 = xor i32 %conv111.3, %xor108.3
  %conv113.3 = trunc i32 %xor112.3 to i8
  store i8 %conv113.3, i8* %c, align 1
  %scevgep22.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 4
  %136 = load i8, i8* %scevgep22.4, align 1
  %conv99.4 = zext i8 %136 to i32
  %137 = load i8, i8* %a, align 1
  %scevgep25.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 0, i64 4
  %138 = load i8, i8* %scevgep25.4, align 1
  %call106.4 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138)
  %conv107.4 = zext i8 %call106.4 to i32
  %xor108.4 = xor i32 %conv99.4, %conv107.4
  %139 = load i8, i8* %c, align 1
  %conv111.4 = zext i8 %139 to i32
  %xor112.4 = xor i32 %conv111.4, %xor108.4
  %conv113.4 = trunc i32 %xor112.4 to i8
  store i8 %conv113.4, i8* %c, align 1
  %scevgep21 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 1, i64 0
  %140 = bitcast i8* %scevgep21 to [5 x [5 x i8]]*
  %scevgep24 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 1, i64 0
  %141 = bitcast i8* %scevgep24 to [5 x [5 x i8]]*
  %arrayidx81.1 = getelementptr inbounds i8, i8* %a, i64 1
  %142 = load i8, i8* %arrayidx81.1, align 1
  %arrayidx83.1 = getelementptr inbounds i8, i8* %b, i64 1
  %143 = load i8, i8* %arrayidx83.1, align 1
  %call84.1 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143)
  %arrayidx86.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call84.1, i8* %arrayidx86.1, align 1
  %arrayidx101.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.172 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 0
  %144 = load i8, i8* %scevgep22.172, align 1
  %conv99.173 = zext i8 %144 to i32
  %145 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.174 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 0
  %146 = load i8, i8* %scevgep25.174, align 1
  %call106.175 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %conv107.176 = zext i8 %call106.175 to i32
  %xor108.177 = xor i32 %conv99.173, %conv107.176
  %147 = load i8, i8* %arrayidx110.1, align 1
  %conv111.178 = zext i8 %147 to i32
  %xor112.179 = xor i32 %conv111.178, %xor108.177
  %conv113.180 = trunc i32 %xor112.179 to i8
  store i8 %conv113.180, i8* %arrayidx110.1, align 1
  %scevgep22.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep22.2.1, align 1
  %conv99.2.1 = zext i8 %148 to i32
  %149 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep25.2.1, align 1
  %call106.2.1 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150)
  %conv107.2.1 = zext i8 %call106.2.1 to i32
  %xor108.2.1 = xor i32 %conv99.2.1, %conv107.2.1
  %151 = load i8, i8* %arrayidx110.1, align 1
  %conv111.2.1 = zext i8 %151 to i32
  %xor112.2.1 = xor i32 %conv111.2.1, %xor108.2.1
  %conv113.2.1 = trunc i32 %xor112.2.1 to i8
  store i8 %conv113.2.1, i8* %arrayidx110.1, align 1
  %scevgep22.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 3
  %152 = load i8, i8* %scevgep22.3.1, align 1
  %conv99.3.1 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 3
  %154 = load i8, i8* %scevgep25.3.1, align 1
  %call106.3.1 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154)
  %conv107.3.1 = zext i8 %call106.3.1 to i32
  %xor108.3.1 = xor i32 %conv99.3.1, %conv107.3.1
  %155 = load i8, i8* %arrayidx110.1, align 1
  %conv111.3.1 = zext i8 %155 to i32
  %xor112.3.1 = xor i32 %conv111.3.1, %xor108.3.1
  %conv113.3.1 = trunc i32 %xor112.3.1 to i8
  store i8 %conv113.3.1, i8* %arrayidx110.1, align 1
  %scevgep22.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 4
  %156 = load i8, i8* %scevgep22.4.1, align 1
  %conv99.4.1 = zext i8 %156 to i32
  %157 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 4
  %158 = load i8, i8* %scevgep25.4.1, align 1
  %call106.4.1 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158)
  %conv107.4.1 = zext i8 %call106.4.1 to i32
  %xor108.4.1 = xor i32 %conv99.4.1, %conv107.4.1
  %159 = load i8, i8* %arrayidx110.1, align 1
  %conv111.4.1 = zext i8 %159 to i32
  %xor112.4.1 = xor i32 %conv111.4.1, %xor108.4.1
  %conv113.4.1 = trunc i32 %xor112.4.1 to i8
  store i8 %conv113.4.1, i8* %arrayidx110.1, align 1
  %scevgep21.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 1, i64 0
  %160 = bitcast i8* %scevgep21.1 to [5 x [5 x i8]]*
  %scevgep24.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 1, i64 0
  %161 = bitcast i8* %scevgep24.1 to [5 x [5 x i8]]*
  %arrayidx81.2 = getelementptr inbounds i8, i8* %a, i64 2
  %162 = load i8, i8* %arrayidx81.2, align 1
  %arrayidx83.2 = getelementptr inbounds i8, i8* %b, i64 2
  %163 = load i8, i8* %arrayidx83.2, align 1
  %call84.2 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163)
  %arrayidx86.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call84.2, i8* %arrayidx86.2, align 1
  %arrayidx101.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx110.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.285 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep22.285, align 1
  %conv99.286 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.287 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %161, i64 0, i64 0, i64 0
  %166 = load i8, i8* %scevgep25.287, align 1
  %call106.288 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166)
  %conv107.289 = zext i8 %call106.288 to i32
  %xor108.290 = xor i32 %conv99.286, %conv107.289
  %167 = load i8, i8* %arrayidx110.2, align 1
  %conv111.291 = zext i8 %167 to i32
  %xor112.292 = xor i32 %conv111.291, %xor108.290
  %conv113.293 = trunc i32 %xor112.292 to i8
  store i8 %conv113.293, i8* %arrayidx110.2, align 1
  %scevgep22.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 1
  %168 = load i8, i8* %scevgep22.1.2, align 1
  %conv99.1.2 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %161, i64 0, i64 0, i64 1
  %170 = load i8, i8* %scevgep25.1.2, align 1
  %call106.1.2 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170)
  %conv107.1.2 = zext i8 %call106.1.2 to i32
  %xor108.1.2 = xor i32 %conv99.1.2, %conv107.1.2
  %171 = load i8, i8* %arrayidx110.2, align 1
  %conv111.1.2 = zext i8 %171 to i32
  %xor112.1.2 = xor i32 %conv111.1.2, %xor108.1.2
  %conv113.1.2 = trunc i32 %xor112.1.2 to i8
  store i8 %conv113.1.2, i8* %arrayidx110.2, align 1
  %scevgep22.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 3
  %172 = load i8, i8* %scevgep22.3.2, align 1
  %conv99.3.2 = zext i8 %172 to i32
  %173 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %161, i64 0, i64 0, i64 3
  %174 = load i8, i8* %scevgep25.3.2, align 1
  %call106.3.2 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174)
  %conv107.3.2 = zext i8 %call106.3.2 to i32
  %xor108.3.2 = xor i32 %conv99.3.2, %conv107.3.2
  %175 = load i8, i8* %arrayidx110.2, align 1
  %conv111.3.2 = zext i8 %175 to i32
  %xor112.3.2 = xor i32 %conv111.3.2, %xor108.3.2
  %conv113.3.2 = trunc i32 %xor112.3.2 to i8
  store i8 %conv113.3.2, i8* %arrayidx110.2, align 1
  %scevgep22.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 4
  %176 = load i8, i8* %scevgep22.4.2, align 1
  %conv99.4.2 = zext i8 %176 to i32
  %177 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %161, i64 0, i64 0, i64 4
  %178 = load i8, i8* %scevgep25.4.2, align 1
  %call106.4.2 = call zeroext i8 @mult(i8 zeroext %177, i8 zeroext %178)
  %conv107.4.2 = zext i8 %call106.4.2 to i32
  %xor108.4.2 = xor i32 %conv99.4.2, %conv107.4.2
  %179 = load i8, i8* %arrayidx110.2, align 1
  %conv111.4.2 = zext i8 %179 to i32
  %xor112.4.2 = xor i32 %conv111.4.2, %xor108.4.2
  %conv113.4.2 = trunc i32 %xor112.4.2 to i8
  store i8 %conv113.4.2, i8* %arrayidx110.2, align 1
  %scevgep21.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 1, i64 0
  %180 = bitcast i8* %scevgep21.2 to [5 x [5 x i8]]*
  %scevgep24.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %161, i64 0, i64 1, i64 0
  %181 = bitcast i8* %scevgep24.2 to [5 x [5 x i8]]*
  %arrayidx81.3 = getelementptr inbounds i8, i8* %a, i64 3
  %182 = load i8, i8* %arrayidx81.3, align 1
  %arrayidx83.3 = getelementptr inbounds i8, i8* %b, i64 3
  %183 = load i8, i8* %arrayidx83.3, align 1
  %call84.3 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183)
  %arrayidx86.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call84.3, i8* %arrayidx86.3, align 1
  %arrayidx101.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx110.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.398 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %180, i64 0, i64 0, i64 0
  %184 = load i8, i8* %scevgep22.398, align 1
  %conv99.399 = zext i8 %184 to i32
  %185 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.3100 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %181, i64 0, i64 0, i64 0
  %186 = load i8, i8* %scevgep25.3100, align 1
  %call106.3101 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186)
  %conv107.3102 = zext i8 %call106.3101 to i32
  %xor108.3103 = xor i32 %conv99.399, %conv107.3102
  %187 = load i8, i8* %arrayidx110.3, align 1
  %conv111.3104 = zext i8 %187 to i32
  %xor112.3105 = xor i32 %conv111.3104, %xor108.3103
  %conv113.3106 = trunc i32 %xor112.3105 to i8
  store i8 %conv113.3106, i8* %arrayidx110.3, align 1
  %scevgep22.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %180, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep22.1.3, align 1
  %conv99.1.3 = zext i8 %188 to i32
  %189 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %181, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep25.1.3, align 1
  %call106.1.3 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190)
  %conv107.1.3 = zext i8 %call106.1.3 to i32
  %xor108.1.3 = xor i32 %conv99.1.3, %conv107.1.3
  %191 = load i8, i8* %arrayidx110.3, align 1
  %conv111.1.3 = zext i8 %191 to i32
  %xor112.1.3 = xor i32 %conv111.1.3, %xor108.1.3
  %conv113.1.3 = trunc i32 %xor112.1.3 to i8
  store i8 %conv113.1.3, i8* %arrayidx110.3, align 1
  %scevgep22.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %180, i64 0, i64 0, i64 2
  %192 = load i8, i8* %scevgep22.2.3, align 1
  %conv99.2.3 = zext i8 %192 to i32
  %193 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %181, i64 0, i64 0, i64 2
  %194 = load i8, i8* %scevgep25.2.3, align 1
  %call106.2.3 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194)
  %conv107.2.3 = zext i8 %call106.2.3 to i32
  %xor108.2.3 = xor i32 %conv99.2.3, %conv107.2.3
  %195 = load i8, i8* %arrayidx110.3, align 1
  %conv111.2.3 = zext i8 %195 to i32
  %xor112.2.3 = xor i32 %conv111.2.3, %xor108.2.3
  %conv113.2.3 = trunc i32 %xor112.2.3 to i8
  store i8 %conv113.2.3, i8* %arrayidx110.3, align 1
  %scevgep22.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %180, i64 0, i64 0, i64 4
  %196 = load i8, i8* %scevgep22.4.3, align 1
  %conv99.4.3 = zext i8 %196 to i32
  %197 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %181, i64 0, i64 0, i64 4
  %198 = load i8, i8* %scevgep25.4.3, align 1
  %call106.4.3 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198)
  %conv107.4.3 = zext i8 %call106.4.3 to i32
  %xor108.4.3 = xor i32 %conv99.4.3, %conv107.4.3
  %199 = load i8, i8* %arrayidx110.3, align 1
  %conv111.4.3 = zext i8 %199 to i32
  %xor112.4.3 = xor i32 %conv111.4.3, %xor108.4.3
  %conv113.4.3 = trunc i32 %xor112.4.3 to i8
  store i8 %conv113.4.3, i8* %arrayidx110.3, align 1
  %scevgep21.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %180, i64 0, i64 1, i64 0
  %200 = bitcast i8* %scevgep21.3 to [5 x [5 x i8]]*
  %scevgep24.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %181, i64 0, i64 1, i64 0
  %201 = bitcast i8* %scevgep24.3 to [5 x [5 x i8]]*
  %arrayidx81.4 = getelementptr inbounds i8, i8* %a, i64 4
  %202 = load i8, i8* %arrayidx81.4, align 1
  %arrayidx83.4 = getelementptr inbounds i8, i8* %b, i64 4
  %203 = load i8, i8* %arrayidx83.4, align 1
  %call84.4 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203)
  %arrayidx86.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call84.4, i8* %arrayidx86.4, align 1
  %arrayidx101.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx110.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep22.4111 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %200, i64 0, i64 0, i64 0
  %204 = load i8, i8* %scevgep22.4111, align 1
  %conv99.4112 = zext i8 %204 to i32
  %205 = load i8, i8* %arrayidx101.4, align 1
  %scevgep25.4113 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %201, i64 0, i64 0, i64 0
  %206 = load i8, i8* %scevgep25.4113, align 1
  %call106.4114 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206)
  %conv107.4115 = zext i8 %call106.4114 to i32
  %xor108.4116 = xor i32 %conv99.4112, %conv107.4115
  %207 = load i8, i8* %arrayidx110.4, align 1
  %conv111.4117 = zext i8 %207 to i32
  %xor112.4118 = xor i32 %conv111.4117, %xor108.4116
  %conv113.4119 = trunc i32 %xor112.4118 to i8
  store i8 %conv113.4119, i8* %arrayidx110.4, align 1
  %scevgep22.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %200, i64 0, i64 0, i64 1
  %208 = load i8, i8* %scevgep22.1.4, align 1
  %conv99.1.4 = zext i8 %208 to i32
  %209 = load i8, i8* %arrayidx101.4, align 1
  %scevgep25.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %201, i64 0, i64 0, i64 1
  %210 = load i8, i8* %scevgep25.1.4, align 1
  %call106.1.4 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210)
  %conv107.1.4 = zext i8 %call106.1.4 to i32
  %xor108.1.4 = xor i32 %conv99.1.4, %conv107.1.4
  %211 = load i8, i8* %arrayidx110.4, align 1
  %conv111.1.4 = zext i8 %211 to i32
  %xor112.1.4 = xor i32 %conv111.1.4, %xor108.1.4
  %conv113.1.4 = trunc i32 %xor112.1.4 to i8
  store i8 %conv113.1.4, i8* %arrayidx110.4, align 1
  %scevgep22.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %200, i64 0, i64 0, i64 2
  %212 = load i8, i8* %scevgep22.2.4, align 1
  %conv99.2.4 = zext i8 %212 to i32
  %213 = load i8, i8* %arrayidx101.4, align 1
  %scevgep25.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %201, i64 0, i64 0, i64 2
  %214 = load i8, i8* %scevgep25.2.4, align 1
  %call106.2.4 = call zeroext i8 @mult(i8 zeroext %213, i8 zeroext %214)
  %conv107.2.4 = zext i8 %call106.2.4 to i32
  %xor108.2.4 = xor i32 %conv99.2.4, %conv107.2.4
  %215 = load i8, i8* %arrayidx110.4, align 1
  %conv111.2.4 = zext i8 %215 to i32
  %xor112.2.4 = xor i32 %conv111.2.4, %xor108.2.4
  %conv113.2.4 = trunc i32 %xor112.2.4 to i8
  store i8 %conv113.2.4, i8* %arrayidx110.4, align 1
  %scevgep22.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %200, i64 0, i64 0, i64 3
  %216 = load i8, i8* %scevgep22.3.4, align 1
  %conv99.3.4 = zext i8 %216 to i32
  %217 = load i8, i8* %arrayidx101.4, align 1
  %scevgep25.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %201, i64 0, i64 0, i64 3
  %218 = load i8, i8* %scevgep25.3.4, align 1
  %call106.3.4 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218)
  %conv107.3.4 = zext i8 %call106.3.4 to i32
  %xor108.3.4 = xor i32 %conv99.3.4, %conv107.3.4
  %219 = load i8, i8* %arrayidx110.4, align 1
  %conv111.3.4 = zext i8 %219 to i32
  %xor112.3.4 = xor i32 %conv111.3.4, %xor108.3.4
  %conv113.3.4 = trunc i32 %xor112.3.4 to i8
  store i8 %conv113.3.4, i8* %arrayidx110.4, align 1
  %call121 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv122 = zext i8 %call121 to i32
  %220 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %221 = load i8, i8* %scevgep.1, align 1
  %conv.i.i154.1 = zext i8 %221 to i32
  %conv1.i.i155.1 = zext i8 %220 to i32
  %xor.i.i156.1 = xor i32 %conv1.i.i155.1, %conv.i.i154.1
  %conv2.i.i157.1 = trunc i32 %xor.i.i156.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %222 = load i8, i8* %scevgep.2, align 1
  %conv.i.i154.2 = zext i8 %222 to i32
  %conv1.i.i155.2 = zext i8 %conv2.i.i157.1 to i32
  %xor.i.i156.2 = xor i32 %conv1.i.i155.2, %conv.i.i154.2
  %conv2.i.i157.2 = trunc i32 %xor.i.i156.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %223 = load i8, i8* %scevgep.3, align 1
  %conv.i.i154.3 = zext i8 %223 to i32
  %conv1.i.i155.3 = zext i8 %conv2.i.i157.2 to i32
  %xor.i.i156.3 = xor i32 %conv1.i.i155.3, %conv.i.i154.3
  %conv2.i.i157.3 = trunc i32 %xor.i.i156.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %224 = load i8, i8* %scevgep.4, align 1
  %conv.i.i154.4 = zext i8 %224 to i32
  %conv1.i.i155.4 = zext i8 %conv2.i.i157.3 to i32
  %xor.i.i156.4 = xor i32 %conv1.i.i155.4, %conv.i.i154.4
  %conv2.i.i157.4 = trunc i32 %xor.i.i156.4 to i8
  %conv124 = zext i8 %conv2.i.i157.4 to i32
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
