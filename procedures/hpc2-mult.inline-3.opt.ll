; ModuleID = '../examples/hpc2-mult.inline-3.ll'
source_filename = "../examples/hpc2-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  ret i8 %conv2.3
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
  ret i8 %conv2.i.3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [4 x [4 x i8]], align 16
  %u = alloca [4 x [4 x i8]], align 16
  %v = alloca [4 x [4 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep66.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep66.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep66.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep66.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep66.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep66.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep62.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep62.1, align 1
  %conv.i.i137.1 = zext i8 %5 to i32
  %conv1.i.i138.1 = zext i8 %4 to i32
  %xor.i.i139.1 = xor i32 %conv1.i.i138.1, %conv.i.i137.1
  %conv2.i.i140.1 = trunc i32 %xor.i.i139.1 to i8
  %scevgep62.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep62.2, align 1
  %conv.i.i137.2 = zext i8 %6 to i32
  %conv1.i.i138.2 = zext i8 %conv2.i.i140.1 to i32
  %xor.i.i139.2 = xor i32 %conv1.i.i138.2, %conv.i.i137.2
  %conv2.i.i140.2 = trunc i32 %xor.i.i139.2 to i8
  %scevgep62.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep62.3, align 1
  %conv.i.i137.3 = zext i8 %7 to i32
  %conv1.i.i138.3 = zext i8 %conv2.i.i140.2 to i32
  %xor.i.i139.3 = xor i32 %conv1.i.i138.3, %conv.i.i137.3
  %conv2.i.i140.3 = trunc i32 %xor.i.i139.3 to i8
  %conv7 = zext i8 %conv2.i.i140.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep52 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep52, align 1
  %scevgep53 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep53, align 1
  %scevgep54 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %8, i8* %scevgep54, align 1
  %call16.1155 = call zeroext i8 (...) @rand()
  %scevgep52.1156 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.1155, i8* %scevgep52.1156, align 1
  %scevgep53.1157 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %9 = load i8, i8* %scevgep53.1157, align 1
  %scevgep54.1158 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 2, i64 0
  store i8 %9, i8* %scevgep54.1158, align 1
  %call16.2160 = call zeroext i8 (...) @rand()
  %scevgep52.2161 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.2160, i8* %scevgep52.2161, align 1
  %scevgep53.2162 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %10 = load i8, i8* %scevgep53.2162, align 1
  %scevgep54.2163 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 3, i64 0
  store i8 %10, i8* %scevgep54.2163, align 1
  %scevgep49 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 1
  %11 = bitcast i8* %scevgep49 to [4 x [4 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep52.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep52.1, align 1
  %scevgep53.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep53.1, align 1
  %scevgep54.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 1, i64 0
  store i8 %12, i8* %scevgep54.1, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep52.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 2
  store i8 %call16.1.1, i8* %scevgep52.1.1, align 1
  %scevgep53.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 2
  %13 = load i8, i8* %scevgep53.1.1, align 1
  %scevgep54.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 2, i64 0
  store i8 %13, i8* %scevgep54.1.1, align 1
  %scevgep49.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 1, i64 1
  %14 = bitcast i8* %scevgep49.1 to [4 x [4 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep52.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %14, i64 0, i64 0, i64 1
  store i8 %call16.2, i8* %scevgep52.2, align 1
  %scevgep53.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %14, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep53.2, align 1
  %scevgep54.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %14, i64 0, i64 1, i64 0
  store i8 %15, i8* %scevgep54.2, align 1
  %16 = load i8, i8* %a, align 1
  %conv44.1 = zext i8 %16 to i32
  %xor.1 = xor i32 %conv44.1, 1
  %conv45.1 = trunc i32 %xor.1 to i8
  %scevgep36.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %17 = load i8, i8* %scevgep36.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %conv45.1, i8 zeroext %17)
  %scevgep40.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 1
  store i8 %call50.1, i8* %scevgep40.1, align 1
  %scevgep41.1 = getelementptr i8, i8* %b, i64 1
  %18 = load i8, i8* %scevgep41.1, align 1
  %conv57.1 = zext i8 %18 to i32
  %scevgep37.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %19 = load i8, i8* %scevgep37.1, align 1
  %conv62.1 = zext i8 %19 to i32
  %xor63.1 = xor i32 %conv57.1, %conv62.1
  %conv64.1 = trunc i32 %xor63.1 to i8
  %scevgep44.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 0, i64 1
  store i8 %conv64.1, i8* %scevgep44.1, align 1
  %20 = load i8, i8* %a, align 1
  %conv44.2 = zext i8 %20 to i32
  %xor.2 = xor i32 %conv44.2, 1
  %conv45.2 = trunc i32 %xor.2 to i8
  %scevgep36.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %21 = load i8, i8* %scevgep36.2, align 1
  %call50.2 = call zeroext i8 @mult(i8 zeroext %conv45.2, i8 zeroext %21)
  %scevgep40.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 2
  store i8 %call50.2, i8* %scevgep40.2, align 1
  %scevgep41.2 = getelementptr i8, i8* %b, i64 2
  %22 = load i8, i8* %scevgep41.2, align 1
  %conv57.2 = zext i8 %22 to i32
  %scevgep37.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %23 = load i8, i8* %scevgep37.2, align 1
  %conv62.2 = zext i8 %23 to i32
  %xor63.2 = xor i32 %conv57.2, %conv62.2
  %conv64.2 = trunc i32 %xor63.2 to i8
  %scevgep44.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 0, i64 2
  store i8 %conv64.2, i8* %scevgep44.2, align 1
  %24 = load i8, i8* %a, align 1
  %conv44.3 = zext i8 %24 to i32
  %xor.3 = xor i32 %conv44.3, 1
  %conv45.3 = trunc i32 %xor.3 to i8
  %scevgep36.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %25 = load i8, i8* %scevgep36.3, align 1
  %call50.3 = call zeroext i8 @mult(i8 zeroext %conv45.3, i8 zeroext %25)
  %scevgep40.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 3
  store i8 %call50.3, i8* %scevgep40.3, align 1
  %scevgep41.3 = getelementptr i8, i8* %b, i64 3
  %26 = load i8, i8* %scevgep41.3, align 1
  %conv57.3 = zext i8 %26 to i32
  %scevgep37.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %27 = load i8, i8* %scevgep37.3, align 1
  %conv62.3 = zext i8 %27 to i32
  %xor63.3 = xor i32 %conv57.3, %conv62.3
  %conv64.3 = trunc i32 %xor63.3 to i8
  %scevgep44.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 0, i64 3
  store i8 %conv64.3, i8* %scevgep44.3, align 1
  %scevgep35 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep35 to [4 x [4 x i8]]*
  %scevgep39 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep39 to [4 x [4 x i8]]*
  %scevgep43 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep43 to [4 x [4 x i8]]*
  %arrayidx43.1 = getelementptr inbounds i8, i8* %a, i64 1
  %31 = load i8, i8* %arrayidx43.1, align 1
  %conv44.1109 = zext i8 %31 to i32
  %xor.1110 = xor i32 %conv44.1109, 1
  %conv45.1111 = trunc i32 %xor.1110 to i8
  %scevgep36.1112 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 0, i64 0
  %32 = load i8, i8* %scevgep36.1112, align 1
  %call50.1113 = call zeroext i8 @mult(i8 zeroext %conv45.1111, i8 zeroext %32)
  %scevgep40.1114 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %call50.1113, i8* %scevgep40.1114, align 1
  %33 = load i8, i8* %b, align 1
  %conv57.1115 = zext i8 %33 to i32
  %scevgep37.1116 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 0, i64 0
  %34 = load i8, i8* %scevgep37.1116, align 1
  %conv62.1117 = zext i8 %34 to i32
  %xor63.1118 = xor i32 %conv57.1115, %conv62.1117
  %conv64.1119 = trunc i32 %xor63.1118 to i8
  %scevgep44.1120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 0, i64 0
  store i8 %conv64.1119, i8* %scevgep44.1120, align 1
  %35 = load i8, i8* %arrayidx43.1, align 1
  %conv44.2.1 = zext i8 %35 to i32
  %xor.2.1 = xor i32 %conv44.2.1, 1
  %conv45.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep36.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 0, i64 2
  %36 = load i8, i8* %scevgep36.2.1, align 1
  %call50.2.1 = call zeroext i8 @mult(i8 zeroext %conv45.2.1, i8 zeroext %36)
  %scevgep40.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %29, i64 0, i64 0, i64 2
  store i8 %call50.2.1, i8* %scevgep40.2.1, align 1
  %scevgep41.2.1 = getelementptr i8, i8* %b, i64 2
  %37 = load i8, i8* %scevgep41.2.1, align 1
  %conv57.2.1 = zext i8 %37 to i32
  %scevgep37.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 0, i64 2
  %38 = load i8, i8* %scevgep37.2.1, align 1
  %conv62.2.1 = zext i8 %38 to i32
  %xor63.2.1 = xor i32 %conv57.2.1, %conv62.2.1
  %conv64.2.1 = trunc i32 %xor63.2.1 to i8
  %scevgep44.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 0, i64 2
  store i8 %conv64.2.1, i8* %scevgep44.2.1, align 1
  %39 = load i8, i8* %arrayidx43.1, align 1
  %conv44.3.1 = zext i8 %39 to i32
  %xor.3.1 = xor i32 %conv44.3.1, 1
  %conv45.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep36.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 0, i64 3
  %40 = load i8, i8* %scevgep36.3.1, align 1
  %call50.3.1 = call zeroext i8 @mult(i8 zeroext %conv45.3.1, i8 zeroext %40)
  %scevgep40.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %29, i64 0, i64 0, i64 3
  store i8 %call50.3.1, i8* %scevgep40.3.1, align 1
  %scevgep41.3.1 = getelementptr i8, i8* %b, i64 3
  %41 = load i8, i8* %scevgep41.3.1, align 1
  %conv57.3.1 = zext i8 %41 to i32
  %scevgep37.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 0, i64 3
  %42 = load i8, i8* %scevgep37.3.1, align 1
  %conv62.3.1 = zext i8 %42 to i32
  %xor63.3.1 = xor i32 %conv57.3.1, %conv62.3.1
  %conv64.3.1 = trunc i32 %xor63.3.1 to i8
  %scevgep44.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 0, i64 3
  store i8 %conv64.3.1, i8* %scevgep44.3.1, align 1
  %scevgep35.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %28, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep35.1 to [4 x [4 x i8]]*
  %scevgep39.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %29, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep39.1 to [4 x [4 x i8]]*
  %scevgep43.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep43.1 to [4 x [4 x i8]]*
  %arrayidx43.2 = getelementptr inbounds i8, i8* %a, i64 2
  %46 = load i8, i8* %arrayidx43.2, align 1
  %conv44.2125 = zext i8 %46 to i32
  %xor.2126 = xor i32 %conv44.2125, 1
  %conv45.2127 = trunc i32 %xor.2126 to i8
  %scevgep36.2128 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep36.2128, align 1
  %call50.2129 = call zeroext i8 @mult(i8 zeroext %conv45.2127, i8 zeroext %47)
  %scevgep40.2130 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 0
  store i8 %call50.2129, i8* %scevgep40.2130, align 1
  %48 = load i8, i8* %b, align 1
  %conv57.2131 = zext i8 %48 to i32
  %scevgep37.2132 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 0
  %49 = load i8, i8* %scevgep37.2132, align 1
  %conv62.2133 = zext i8 %49 to i32
  %xor63.2134 = xor i32 %conv57.2131, %conv62.2133
  %conv64.2135 = trunc i32 %xor63.2134 to i8
  %scevgep44.2136 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 0
  store i8 %conv64.2135, i8* %scevgep44.2136, align 1
  %50 = load i8, i8* %arrayidx43.2, align 1
  %conv44.1.2 = zext i8 %50 to i32
  %xor.1.2 = xor i32 %conv44.1.2, 1
  %conv45.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep36.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep36.1.2, align 1
  %call50.1.2 = call zeroext i8 @mult(i8 zeroext %conv45.1.2, i8 zeroext %51)
  %scevgep40.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 1
  store i8 %call50.1.2, i8* %scevgep40.1.2, align 1
  %scevgep41.1.2 = getelementptr i8, i8* %b, i64 1
  %52 = load i8, i8* %scevgep41.1.2, align 1
  %conv57.1.2 = zext i8 %52 to i32
  %scevgep37.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep37.1.2, align 1
  %conv62.1.2 = zext i8 %53 to i32
  %xor63.1.2 = xor i32 %conv57.1.2, %conv62.1.2
  %conv64.1.2 = trunc i32 %xor63.1.2 to i8
  %scevgep44.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 1
  store i8 %conv64.1.2, i8* %scevgep44.1.2, align 1
  %54 = load i8, i8* %arrayidx43.2, align 1
  %conv44.3.2 = zext i8 %54 to i32
  %xor.3.2 = xor i32 %conv44.3.2, 1
  %conv45.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep36.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 3
  %55 = load i8, i8* %scevgep36.3.2, align 1
  %call50.3.2 = call zeroext i8 @mult(i8 zeroext %conv45.3.2, i8 zeroext %55)
  %scevgep40.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 3
  store i8 %call50.3.2, i8* %scevgep40.3.2, align 1
  %scevgep41.3.2 = getelementptr i8, i8* %b, i64 3
  %56 = load i8, i8* %scevgep41.3.2, align 1
  %conv57.3.2 = zext i8 %56 to i32
  %scevgep37.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 3
  %57 = load i8, i8* %scevgep37.3.2, align 1
  %conv62.3.2 = zext i8 %57 to i32
  %xor63.3.2 = xor i32 %conv57.3.2, %conv62.3.2
  %conv64.3.2 = trunc i32 %xor63.3.2 to i8
  %scevgep44.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 3
  store i8 %conv64.3.2, i8* %scevgep44.3.2, align 1
  %scevgep35.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep35.2 to [4 x [4 x i8]]*
  %scevgep39.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 1, i64 0
  %59 = bitcast i8* %scevgep39.2 to [4 x [4 x i8]]*
  %scevgep43.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 1, i64 0
  %60 = bitcast i8* %scevgep43.2 to [4 x [4 x i8]]*
  %arrayidx43.3 = getelementptr inbounds i8, i8* %a, i64 3
  %61 = load i8, i8* %arrayidx43.3, align 1
  %conv44.3141 = zext i8 %61 to i32
  %xor.3142 = xor i32 %conv44.3141, 1
  %conv45.3143 = trunc i32 %xor.3142 to i8
  %scevgep36.3144 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep36.3144, align 1
  %call50.3145 = call zeroext i8 @mult(i8 zeroext %conv45.3143, i8 zeroext %62)
  %scevgep40.3146 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 0
  store i8 %call50.3145, i8* %scevgep40.3146, align 1
  %63 = load i8, i8* %b, align 1
  %conv57.3147 = zext i8 %63 to i32
  %scevgep37.3148 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep37.3148, align 1
  %conv62.3149 = zext i8 %64 to i32
  %xor63.3150 = xor i32 %conv57.3147, %conv62.3149
  %conv64.3151 = trunc i32 %xor63.3150 to i8
  %scevgep44.3152 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 0, i64 0
  store i8 %conv64.3151, i8* %scevgep44.3152, align 1
  %65 = load i8, i8* %arrayidx43.3, align 1
  %conv44.1.3 = zext i8 %65 to i32
  %xor.1.3 = xor i32 %conv44.1.3, 1
  %conv45.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep36.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep36.1.3, align 1
  %call50.1.3 = call zeroext i8 @mult(i8 zeroext %conv45.1.3, i8 zeroext %66)
  %scevgep40.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 1
  store i8 %call50.1.3, i8* %scevgep40.1.3, align 1
  %scevgep41.1.3 = getelementptr i8, i8* %b, i64 1
  %67 = load i8, i8* %scevgep41.1.3, align 1
  %conv57.1.3 = zext i8 %67 to i32
  %scevgep37.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 1
  %68 = load i8, i8* %scevgep37.1.3, align 1
  %conv62.1.3 = zext i8 %68 to i32
  %xor63.1.3 = xor i32 %conv57.1.3, %conv62.1.3
  %conv64.1.3 = trunc i32 %xor63.1.3 to i8
  %scevgep44.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 0, i64 1
  store i8 %conv64.1.3, i8* %scevgep44.1.3, align 1
  %69 = load i8, i8* %arrayidx43.3, align 1
  %conv44.2.3 = zext i8 %69 to i32
  %xor.2.3 = xor i32 %conv44.2.3, 1
  %conv45.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep36.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 2
  %70 = load i8, i8* %scevgep36.2.3, align 1
  %call50.2.3 = call zeroext i8 @mult(i8 zeroext %conv45.2.3, i8 zeroext %70)
  %scevgep40.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 2
  store i8 %call50.2.3, i8* %scevgep40.2.3, align 1
  %scevgep41.2.3 = getelementptr i8, i8* %b, i64 2
  %71 = load i8, i8* %scevgep41.2.3, align 1
  %conv57.2.3 = zext i8 %71 to i32
  %scevgep37.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 2
  %72 = load i8, i8* %scevgep37.2.3, align 1
  %conv62.2.3 = zext i8 %72 to i32
  %xor63.2.3 = xor i32 %conv57.2.3, %conv62.2.3
  %conv64.2.3 = trunc i32 %xor63.2.3 to i8
  %scevgep44.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 0, i64 2
  store i8 %conv64.2.3, i8* %scevgep44.2.3, align 1
  %73 = load i8, i8* %a, align 1
  %74 = load i8, i8* %b, align 1
  %call84 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74)
  store i8 %call84, i8* %c, align 1
  %scevgep22.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 1
  %75 = load i8, i8* %scevgep22.1, align 1
  %conv99.1 = zext i8 %75 to i32
  %76 = load i8, i8* %a, align 1
  %scevgep25.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 0, i64 1
  %77 = load i8, i8* %scevgep25.1, align 1
  %call106.1 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77)
  %conv107.1 = zext i8 %call106.1 to i32
  %xor108.1 = xor i32 %conv99.1, %conv107.1
  %78 = load i8, i8* %c, align 1
  %conv111.1 = zext i8 %78 to i32
  %xor112.1 = xor i32 %conv111.1, %xor108.1
  %conv113.1 = trunc i32 %xor112.1 to i8
  store i8 %conv113.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 2
  %79 = load i8, i8* %scevgep22.2, align 1
  %conv99.2 = zext i8 %79 to i32
  %80 = load i8, i8* %a, align 1
  %scevgep25.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep25.2, align 1
  %call106.2 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81)
  %conv107.2 = zext i8 %call106.2 to i32
  %xor108.2 = xor i32 %conv99.2, %conv107.2
  %82 = load i8, i8* %c, align 1
  %conv111.2 = zext i8 %82 to i32
  %xor112.2 = xor i32 %conv111.2, %xor108.2
  %conv113.2 = trunc i32 %xor112.2 to i8
  store i8 %conv113.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 3
  %83 = load i8, i8* %scevgep22.3, align 1
  %conv99.3 = zext i8 %83 to i32
  %84 = load i8, i8* %a, align 1
  %scevgep25.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 0, i64 3
  %85 = load i8, i8* %scevgep25.3, align 1
  %call106.3 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85)
  %conv107.3 = zext i8 %call106.3 to i32
  %xor108.3 = xor i32 %conv99.3, %conv107.3
  %86 = load i8, i8* %c, align 1
  %conv111.3 = zext i8 %86 to i32
  %xor112.3 = xor i32 %conv111.3, %xor108.3
  %conv113.3 = trunc i32 %xor112.3 to i8
  store i8 %conv113.3, i8* %c, align 1
  %scevgep21 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 0
  %87 = bitcast i8* %scevgep21 to [4 x [4 x i8]]*
  %scevgep24 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %v, i64 0, i64 1, i64 0
  %88 = bitcast i8* %scevgep24 to [4 x [4 x i8]]*
  %arrayidx81.1 = getelementptr inbounds i8, i8* %a, i64 1
  %89 = load i8, i8* %arrayidx81.1, align 1
  %arrayidx83.1 = getelementptr inbounds i8, i8* %b, i64 1
  %90 = load i8, i8* %arrayidx83.1, align 1
  %call84.1 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90)
  %arrayidx86.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call84.1, i8* %arrayidx86.1, align 1
  %arrayidx101.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 0
  %91 = load i8, i8* %scevgep22.170, align 1
  %conv99.171 = zext i8 %91 to i32
  %92 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.172 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep25.172, align 1
  %call106.173 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93)
  %conv107.174 = zext i8 %call106.173 to i32
  %xor108.175 = xor i32 %conv99.171, %conv107.174
  %94 = load i8, i8* %arrayidx110.1, align 1
  %conv111.176 = zext i8 %94 to i32
  %xor112.177 = xor i32 %conv111.176, %xor108.175
  %conv113.178 = trunc i32 %xor112.177 to i8
  store i8 %conv113.178, i8* %arrayidx110.1, align 1
  %scevgep22.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 2
  %95 = load i8, i8* %scevgep22.2.1, align 1
  %conv99.2.1 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 2
  %97 = load i8, i8* %scevgep25.2.1, align 1
  %call106.2.1 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97)
  %conv107.2.1 = zext i8 %call106.2.1 to i32
  %xor108.2.1 = xor i32 %conv99.2.1, %conv107.2.1
  %98 = load i8, i8* %arrayidx110.1, align 1
  %conv111.2.1 = zext i8 %98 to i32
  %xor112.2.1 = xor i32 %conv111.2.1, %xor108.2.1
  %conv113.2.1 = trunc i32 %xor112.2.1 to i8
  store i8 %conv113.2.1, i8* %arrayidx110.1, align 1
  %scevgep22.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 3
  %99 = load i8, i8* %scevgep22.3.1, align 1
  %conv99.3.1 = zext i8 %99 to i32
  %100 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 3
  %101 = load i8, i8* %scevgep25.3.1, align 1
  %call106.3.1 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101)
  %conv107.3.1 = zext i8 %call106.3.1 to i32
  %xor108.3.1 = xor i32 %conv99.3.1, %conv107.3.1
  %102 = load i8, i8* %arrayidx110.1, align 1
  %conv111.3.1 = zext i8 %102 to i32
  %xor112.3.1 = xor i32 %conv111.3.1, %xor108.3.1
  %conv113.3.1 = trunc i32 %xor112.3.1 to i8
  store i8 %conv113.3.1, i8* %arrayidx110.1, align 1
  %scevgep21.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep21.1 to [4 x [4 x i8]]*
  %scevgep24.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 1, i64 0
  %104 = bitcast i8* %scevgep24.1 to [4 x [4 x i8]]*
  %arrayidx81.2 = getelementptr inbounds i8, i8* %a, i64 2
  %105 = load i8, i8* %arrayidx81.2, align 1
  %arrayidx83.2 = getelementptr inbounds i8, i8* %b, i64 2
  %106 = load i8, i8* %arrayidx83.2, align 1
  %call84.2 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106)
  %arrayidx86.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call84.2, i8* %arrayidx86.2, align 1
  %arrayidx101.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx110.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.283 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep22.283, align 1
  %conv99.284 = zext i8 %107 to i32
  %108 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.285 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %104, i64 0, i64 0, i64 0
  %109 = load i8, i8* %scevgep25.285, align 1
  %call106.286 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109)
  %conv107.287 = zext i8 %call106.286 to i32
  %xor108.288 = xor i32 %conv99.284, %conv107.287
  %110 = load i8, i8* %arrayidx110.2, align 1
  %conv111.289 = zext i8 %110 to i32
  %xor112.290 = xor i32 %conv111.289, %xor108.288
  %conv113.291 = trunc i32 %xor112.290 to i8
  store i8 %conv113.291, i8* %arrayidx110.2, align 1
  %scevgep22.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep22.1.2, align 1
  %conv99.1.2 = zext i8 %111 to i32
  %112 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %104, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep25.1.2, align 1
  %call106.1.2 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113)
  %conv107.1.2 = zext i8 %call106.1.2 to i32
  %xor108.1.2 = xor i32 %conv99.1.2, %conv107.1.2
  %114 = load i8, i8* %arrayidx110.2, align 1
  %conv111.1.2 = zext i8 %114 to i32
  %xor112.1.2 = xor i32 %conv111.1.2, %xor108.1.2
  %conv113.1.2 = trunc i32 %xor112.1.2 to i8
  store i8 %conv113.1.2, i8* %arrayidx110.2, align 1
  %scevgep22.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 0, i64 3
  %115 = load i8, i8* %scevgep22.3.2, align 1
  %conv99.3.2 = zext i8 %115 to i32
  %116 = load i8, i8* %arrayidx101.2, align 1
  %scevgep25.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %104, i64 0, i64 0, i64 3
  %117 = load i8, i8* %scevgep25.3.2, align 1
  %call106.3.2 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117)
  %conv107.3.2 = zext i8 %call106.3.2 to i32
  %xor108.3.2 = xor i32 %conv99.3.2, %conv107.3.2
  %118 = load i8, i8* %arrayidx110.2, align 1
  %conv111.3.2 = zext i8 %118 to i32
  %xor112.3.2 = xor i32 %conv111.3.2, %xor108.3.2
  %conv113.3.2 = trunc i32 %xor112.3.2 to i8
  store i8 %conv113.3.2, i8* %arrayidx110.2, align 1
  %scevgep21.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 1, i64 0
  %119 = bitcast i8* %scevgep21.2 to [4 x [4 x i8]]*
  %scevgep24.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %104, i64 0, i64 1, i64 0
  %120 = bitcast i8* %scevgep24.2 to [4 x [4 x i8]]*
  %arrayidx81.3 = getelementptr inbounds i8, i8* %a, i64 3
  %121 = load i8, i8* %arrayidx81.3, align 1
  %arrayidx83.3 = getelementptr inbounds i8, i8* %b, i64 3
  %122 = load i8, i8* %arrayidx83.3, align 1
  %call84.3 = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %122)
  %arrayidx86.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call84.3, i8* %arrayidx86.3, align 1
  %arrayidx101.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx110.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.396 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %119, i64 0, i64 0, i64 0
  %123 = load i8, i8* %scevgep22.396, align 1
  %conv99.397 = zext i8 %123 to i32
  %124 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.398 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 0
  %125 = load i8, i8* %scevgep25.398, align 1
  %call106.399 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125)
  %conv107.3100 = zext i8 %call106.399 to i32
  %xor108.3101 = xor i32 %conv99.397, %conv107.3100
  %126 = load i8, i8* %arrayidx110.3, align 1
  %conv111.3102 = zext i8 %126 to i32
  %xor112.3103 = xor i32 %conv111.3102, %xor108.3101
  %conv113.3104 = trunc i32 %xor112.3103 to i8
  store i8 %conv113.3104, i8* %arrayidx110.3, align 1
  %scevgep22.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %119, i64 0, i64 0, i64 1
  %127 = load i8, i8* %scevgep22.1.3, align 1
  %conv99.1.3 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep25.1.3, align 1
  %call106.1.3 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129)
  %conv107.1.3 = zext i8 %call106.1.3 to i32
  %xor108.1.3 = xor i32 %conv99.1.3, %conv107.1.3
  %130 = load i8, i8* %arrayidx110.3, align 1
  %conv111.1.3 = zext i8 %130 to i32
  %xor112.1.3 = xor i32 %conv111.1.3, %xor108.1.3
  %conv113.1.3 = trunc i32 %xor112.1.3 to i8
  store i8 %conv113.1.3, i8* %arrayidx110.3, align 1
  %scevgep22.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %119, i64 0, i64 0, i64 2
  %131 = load i8, i8* %scevgep22.2.3, align 1
  %conv99.2.3 = zext i8 %131 to i32
  %132 = load i8, i8* %arrayidx101.3, align 1
  %scevgep25.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 2
  %133 = load i8, i8* %scevgep25.2.3, align 1
  %call106.2.3 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133)
  %conv107.2.3 = zext i8 %call106.2.3 to i32
  %xor108.2.3 = xor i32 %conv99.2.3, %conv107.2.3
  %134 = load i8, i8* %arrayidx110.3, align 1
  %conv111.2.3 = zext i8 %134 to i32
  %xor112.2.3 = xor i32 %conv111.2.3, %xor108.2.3
  %conv113.2.3 = trunc i32 %xor112.2.3 to i8
  store i8 %conv113.2.3, i8* %arrayidx110.3, align 1
  %call121 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv122 = zext i8 %call121 to i32
  %135 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %136 = load i8, i8* %scevgep.1, align 1
  %conv.i.i154.1 = zext i8 %136 to i32
  %conv1.i.i155.1 = zext i8 %135 to i32
  %xor.i.i156.1 = xor i32 %conv1.i.i155.1, %conv.i.i154.1
  %conv2.i.i157.1 = trunc i32 %xor.i.i156.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %137 = load i8, i8* %scevgep.2, align 1
  %conv.i.i154.2 = zext i8 %137 to i32
  %conv1.i.i155.2 = zext i8 %conv2.i.i157.1 to i32
  %xor.i.i156.2 = xor i32 %conv1.i.i155.2, %conv.i.i154.2
  %conv2.i.i157.2 = trunc i32 %xor.i.i156.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %138 = load i8, i8* %scevgep.3, align 1
  %conv.i.i154.3 = zext i8 %138 to i32
  %conv1.i.i155.3 = zext i8 %conv2.i.i157.2 to i32
  %xor.i.i156.3 = xor i32 %conv1.i.i155.3, %conv.i.i154.3
  %conv2.i.i157.3 = trunc i32 %xor.i.i156.3 to i8
  %conv124 = zext i8 %conv2.i.i157.3 to i32
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
