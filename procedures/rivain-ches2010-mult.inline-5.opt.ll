; ModuleID = '../examples/rivain-ches2010-mult.inline-5.ll'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 5, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [35 x i8] c"../examples/rivain-ches2010-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 29 }], section "llvm.metadata"

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
  %scevgep.5 = getelementptr i8, i8* %from, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %call.5 = call zeroext i8 %f(i8 zeroext %5)
  %scevgep2.5 = getelementptr i8, i8* %to, i64 5
  store i8 %call.5, i8* %scevgep2.5, align 1
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
  %scevgep.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %call.5 = call zeroext i8 %f(i8 zeroext %5)
  %conv.5 = zext i8 %call.5 to i32
  %conv1.5 = zext i8 %conv2.4 to i32
  %xor.5 = xor i32 %conv1.5, %conv.5
  %conv2.5 = trunc i32 %xor.5 to i8
  ret i8 %conv2.5
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
  %scevgep.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %conv.i.5 = zext i8 %5 to i32
  %conv1.i.5 = zext i8 %conv2.i.4 to i32
  %xor.i.5 = xor i32 %conv1.i.5, %conv.i.5
  %conv2.i.5 = trunc i32 %xor.i.5 to i8
  ret i8 %conv2.i.5
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [6 x [6 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep50.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep50.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep50.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep50.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep50.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep50.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep50.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep50.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep50.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep50.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %conv3 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %6 = load i8, i8* %b, align 1
  %scevgep46.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep46.1, align 1
  %conv.i.i96.1 = zext i8 %7 to i32
  %conv1.i.i97.1 = zext i8 %6 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep46.2 = getelementptr i8, i8* %b, i64 2
  %8 = load i8, i8* %scevgep46.2, align 1
  %conv.i.i96.2 = zext i8 %8 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %scevgep46.3 = getelementptr i8, i8* %b, i64 3
  %9 = load i8, i8* %scevgep46.3, align 1
  %conv.i.i96.3 = zext i8 %9 to i32
  %conv1.i.i97.3 = zext i8 %conv2.i.i99.2 to i32
  %xor.i.i98.3 = xor i32 %conv1.i.i97.3, %conv.i.i96.3
  %conv2.i.i99.3 = trunc i32 %xor.i.i98.3 to i8
  %scevgep46.4 = getelementptr i8, i8* %b, i64 4
  %10 = load i8, i8* %scevgep46.4, align 1
  %conv.i.i96.4 = zext i8 %10 to i32
  %conv1.i.i97.4 = zext i8 %conv2.i.i99.3 to i32
  %xor.i.i98.4 = xor i32 %conv1.i.i97.4, %conv.i.i96.4
  %conv2.i.i99.4 = trunc i32 %xor.i.i98.4 to i8
  %scevgep46.5 = getelementptr i8, i8* %b, i64 5
  %11 = load i8, i8* %scevgep46.5, align 1
  %conv.i.i96.5 = zext i8 %11 to i32
  %conv1.i.i97.5 = zext i8 %conv2.i.i99.4 to i32
  %xor.i.i98.5 = xor i32 %conv1.i.i97.5, %conv.i.i96.5
  %conv2.i.i99.5 = trunc i32 %xor.i.i98.5 to i8
  %conv7 = zext i8 %conv2.i.i99.5 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [6 x [6 x i8]]*
  %scevgep36 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep3637 = bitcast i8* %scevgep36 to [6 x [6 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep23, align 1
  %12 = load i8, i8* %scevgep23, align 1
  %conv23 = zext i8 %12 to i32
  %13 = load i8, i8* %a, align 1
  %scevgep34 = getelementptr i8, i8* %b, i64 1
  %14 = load i8, i8* %scevgep34, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep35 = getelementptr i8, i8* %a, i64 1
  %15 = load i8, i8* %scevgep35, align 1
  %16 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  store i8 %conv37, i8* %scevgep36, align 1
  %scevgep28 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %17 = bitcast i8* %scevgep28 to [6 x [6 x i8]]*
  %scevgep41 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep3637, i64 0, i64 1, i64 0
  %18 = bitcast i8* %scevgep41 to [6 x [6 x i8]]*
  %call16.1102 = call zeroext i8 (...) @rand()
  store i8 %call16.1102, i8* %scevgep28, align 1
  %19 = load i8, i8* %scevgep28, align 1
  %conv23.1103 = zext i8 %19 to i32
  %20 = load i8, i8* %a, align 1
  %scevgep34.1104 = getelementptr i8, i8* %b, i64 2
  %21 = load i8, i8* %scevgep34.1104, align 1
  %call28.1105 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %conv29.1106 = zext i8 %call28.1105 to i32
  %xor.1107 = xor i32 %conv23.1103, %conv29.1106
  %scevgep35.1108 = getelementptr i8, i8* %a, i64 2
  %22 = load i8, i8* %scevgep35.1108, align 1
  %23 = load i8, i8* %b, align 1
  %call34.1109 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %conv35.1110 = zext i8 %call34.1109 to i32
  %xor36.1111 = xor i32 %xor.1107, %conv35.1110
  %conv37.1112 = trunc i32 %xor36.1111 to i8
  store i8 %conv37.1112, i8* %scevgep41, align 1
  %scevgep28.1113 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %17, i64 0, i64 0, i64 1
  %24 = bitcast i8* %scevgep28.1113 to [6 x [6 x i8]]*
  %scevgep41.1114 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %18, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep41.1114 to [6 x [6 x i8]]*
  %call16.2116 = call zeroext i8 (...) @rand()
  store i8 %call16.2116, i8* %scevgep28.1113, align 1
  %26 = load i8, i8* %scevgep28.1113, align 1
  %conv23.2117 = zext i8 %26 to i32
  %27 = load i8, i8* %a, align 1
  %scevgep34.2118 = getelementptr i8, i8* %b, i64 3
  %28 = load i8, i8* %scevgep34.2118, align 1
  %call28.2119 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %conv29.2120 = zext i8 %call28.2119 to i32
  %xor.2121 = xor i32 %conv23.2117, %conv29.2120
  %scevgep35.2122 = getelementptr i8, i8* %a, i64 3
  %29 = load i8, i8* %scevgep35.2122, align 1
  %30 = load i8, i8* %b, align 1
  %call34.2123 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30)
  %conv35.2124 = zext i8 %call34.2123 to i32
  %xor36.2125 = xor i32 %xor.2121, %conv35.2124
  %conv37.2126 = trunc i32 %xor36.2125 to i8
  store i8 %conv37.2126, i8* %scevgep41.1114, align 1
  %scevgep28.2127 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 1
  %31 = bitcast i8* %scevgep28.2127 to [6 x [6 x i8]]*
  %scevgep41.2128 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %25, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep41.2128 to [6 x [6 x i8]]*
  %call16.3130 = call zeroext i8 (...) @rand()
  store i8 %call16.3130, i8* %scevgep28.2127, align 1
  %33 = load i8, i8* %scevgep28.2127, align 1
  %conv23.3131 = zext i8 %33 to i32
  %34 = load i8, i8* %a, align 1
  %scevgep34.3132 = getelementptr i8, i8* %b, i64 4
  %35 = load i8, i8* %scevgep34.3132, align 1
  %call28.3133 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %conv29.3134 = zext i8 %call28.3133 to i32
  %xor.3135 = xor i32 %conv23.3131, %conv29.3134
  %scevgep35.3136 = getelementptr i8, i8* %a, i64 4
  %36 = load i8, i8* %scevgep35.3136, align 1
  %37 = load i8, i8* %b, align 1
  %call34.3137 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %conv35.3138 = zext i8 %call34.3137 to i32
  %xor36.3139 = xor i32 %xor.3135, %conv35.3138
  %conv37.3140 = trunc i32 %xor36.3139 to i8
  store i8 %conv37.3140, i8* %scevgep41.2128, align 1
  %scevgep28.3141 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %31, i64 0, i64 0, i64 1
  %scevgep41.3142 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %32, i64 0, i64 1, i64 0
  %call16.4144 = call zeroext i8 (...) @rand()
  store i8 %call16.4144, i8* %scevgep28.3141, align 1
  %38 = load i8, i8* %scevgep28.3141, align 1
  %conv23.4145 = zext i8 %38 to i32
  %39 = load i8, i8* %a, align 1
  %scevgep34.4146 = getelementptr i8, i8* %b, i64 5
  %40 = load i8, i8* %scevgep34.4146, align 1
  %call28.4147 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40)
  %conv29.4148 = zext i8 %call28.4147 to i32
  %xor.4149 = xor i32 %conv23.4145, %conv29.4148
  %scevgep35.4150 = getelementptr i8, i8* %a, i64 5
  %41 = load i8, i8* %scevgep35.4150, align 1
  %42 = load i8, i8* %b, align 1
  %call34.4151 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42)
  %conv35.4152 = zext i8 %call34.4151 to i32
  %xor36.4153 = xor i32 %xor.4149, %conv35.4152
  %conv37.4154 = trunc i32 %xor36.4153 to i8
  store i8 %conv37.4154, i8* %scevgep41.3142, align 1
  %scevgep26 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %43 = bitcast i8* %scevgep26 to [6 x [6 x i8]]*
  %scevgep39 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep3637, i64 0, i64 1, i64 1
  %44 = bitcast i8* %scevgep39 to [6 x [6 x i8]]*
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep26, align 1
  %45 = load i8, i8* %scevgep26, align 1
  %conv23.1 = zext i8 %45 to i32
  %46 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1 = getelementptr i8, i8* %b, i64 2
  %47 = load i8, i8* %scevgep34.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep35.1 = getelementptr i8, i8* %a, i64 2
  %48 = load i8, i8* %scevgep35.1, align 1
  %49 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  store i8 %conv37.1, i8* %scevgep39, align 1
  %scevgep28.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %43, i64 0, i64 0, i64 1
  %50 = bitcast i8* %scevgep28.1 to [6 x [6 x i8]]*
  %scevgep41.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %44, i64 0, i64 1, i64 0
  %51 = bitcast i8* %scevgep41.1 to [6 x [6 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep28.1, align 1
  %52 = load i8, i8* %scevgep28.1, align 1
  %conv23.1.1 = zext i8 %52 to i32
  %53 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.1 = getelementptr i8, i8* %b, i64 3
  %54 = load i8, i8* %scevgep34.1.1, align 1
  %call28.1.1 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54)
  %conv29.1.1 = zext i8 %call28.1.1 to i32
  %xor.1.1 = xor i32 %conv23.1.1, %conv29.1.1
  %scevgep35.1.1 = getelementptr i8, i8* %a, i64 3
  %55 = load i8, i8* %scevgep35.1.1, align 1
  %56 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56)
  %conv35.1.1 = zext i8 %call34.1.1 to i32
  %xor36.1.1 = xor i32 %xor.1.1, %conv35.1.1
  %conv37.1.1 = trunc i32 %xor36.1.1 to i8
  store i8 %conv37.1.1, i8* %scevgep41.1, align 1
  %scevgep28.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 1
  %57 = bitcast i8* %scevgep28.1.1 to [6 x [6 x i8]]*
  %scevgep41.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %51, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep41.1.1 to [6 x [6 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep28.1.1, align 1
  %59 = load i8, i8* %scevgep28.1.1, align 1
  %conv23.1.2 = zext i8 %59 to i32
  %60 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.2 = getelementptr i8, i8* %b, i64 4
  %61 = load i8, i8* %scevgep34.1.2, align 1
  %call28.1.2 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61)
  %conv29.1.2 = zext i8 %call28.1.2 to i32
  %xor.1.2 = xor i32 %conv23.1.2, %conv29.1.2
  %scevgep35.1.2 = getelementptr i8, i8* %a, i64 4
  %62 = load i8, i8* %scevgep35.1.2, align 1
  %63 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.2 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63)
  %conv35.1.2 = zext i8 %call34.1.2 to i32
  %xor36.1.2 = xor i32 %xor.1.2, %conv35.1.2
  %conv37.1.2 = trunc i32 %xor36.1.2 to i8
  store i8 %conv37.1.2, i8* %scevgep41.1.1, align 1
  %scevgep28.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %57, i64 0, i64 0, i64 1
  %scevgep41.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %58, i64 0, i64 1, i64 0
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep28.1.2, align 1
  %64 = load i8, i8* %scevgep28.1.2, align 1
  %conv23.1.3 = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.3 = getelementptr i8, i8* %b, i64 5
  %66 = load i8, i8* %scevgep34.1.3, align 1
  %call28.1.3 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %conv29.1.3 = zext i8 %call28.1.3 to i32
  %xor.1.3 = xor i32 %conv23.1.3, %conv29.1.3
  %scevgep35.1.3 = getelementptr i8, i8* %a, i64 5
  %67 = load i8, i8* %scevgep35.1.3, align 1
  %68 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.3 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  %conv35.1.3 = zext i8 %call34.1.3 to i32
  %xor36.1.3 = xor i32 %xor.1.3, %conv35.1.3
  %conv37.1.3 = trunc i32 %xor36.1.3 to i8
  store i8 %conv37.1.3, i8* %scevgep41.1.2, align 1
  %scevgep26.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %43, i64 0, i64 1, i64 1
  %69 = bitcast i8* %scevgep26.1 to [6 x [6 x i8]]*
  %scevgep39.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %44, i64 0, i64 1, i64 1
  %70 = bitcast i8* %scevgep39.1 to [6 x [6 x i8]]*
  %arrayidx25.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep26.1, align 1
  %71 = load i8, i8* %scevgep26.1, align 1
  %conv23.2 = zext i8 %71 to i32
  %72 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2 = getelementptr i8, i8* %b, i64 3
  %73 = load i8, i8* %scevgep34.2, align 1
  %call28.2 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73)
  %conv29.2 = zext i8 %call28.2 to i32
  %xor.2 = xor i32 %conv23.2, %conv29.2
  %scevgep35.2 = getelementptr i8, i8* %a, i64 3
  %74 = load i8, i8* %scevgep35.2, align 1
  %75 = load i8, i8* %arrayidx33.2, align 1
  %call34.2 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %conv35.2 = zext i8 %call34.2 to i32
  %xor36.2 = xor i32 %xor.2, %conv35.2
  %conv37.2 = trunc i32 %xor36.2 to i8
  store i8 %conv37.2, i8* %scevgep39.1, align 1
  %scevgep28.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %69, i64 0, i64 0, i64 1
  %76 = bitcast i8* %scevgep28.2 to [6 x [6 x i8]]*
  %scevgep41.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %70, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep41.2 to [6 x [6 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep28.2, align 1
  %78 = load i8, i8* %scevgep28.2, align 1
  %conv23.2.1 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.1 = getelementptr i8, i8* %b, i64 4
  %80 = load i8, i8* %scevgep34.2.1, align 1
  %call28.2.1 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80)
  %conv29.2.1 = zext i8 %call28.2.1 to i32
  %xor.2.1 = xor i32 %conv23.2.1, %conv29.2.1
  %scevgep35.2.1 = getelementptr i8, i8* %a, i64 4
  %81 = load i8, i8* %scevgep35.2.1, align 1
  %82 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %conv35.2.1 = zext i8 %call34.2.1 to i32
  %xor36.2.1 = xor i32 %xor.2.1, %conv35.2.1
  %conv37.2.1 = trunc i32 %xor36.2.1 to i8
  store i8 %conv37.2.1, i8* %scevgep41.2, align 1
  %scevgep28.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 1
  %scevgep41.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %77, i64 0, i64 1, i64 0
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep28.2.1, align 1
  %83 = load i8, i8* %scevgep28.2.1, align 1
  %conv23.2.2 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.2 = getelementptr i8, i8* %b, i64 5
  %85 = load i8, i8* %scevgep34.2.2, align 1
  %call28.2.2 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85)
  %conv29.2.2 = zext i8 %call28.2.2 to i32
  %xor.2.2 = xor i32 %conv23.2.2, %conv29.2.2
  %scevgep35.2.2 = getelementptr i8, i8* %a, i64 5
  %86 = load i8, i8* %scevgep35.2.2, align 1
  %87 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.2 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87)
  %conv35.2.2 = zext i8 %call34.2.2 to i32
  %xor36.2.2 = xor i32 %xor.2.2, %conv35.2.2
  %conv37.2.2 = trunc i32 %xor36.2.2 to i8
  store i8 %conv37.2.2, i8* %scevgep41.2.1, align 1
  %scevgep26.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %69, i64 0, i64 1, i64 1
  %88 = bitcast i8* %scevgep26.2 to [6 x [6 x i8]]*
  %scevgep39.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %70, i64 0, i64 1, i64 1
  %89 = bitcast i8* %scevgep39.2 to [6 x [6 x i8]]*
  %arrayidx25.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep26.2, align 1
  %90 = load i8, i8* %scevgep26.2, align 1
  %conv23.3 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3 = getelementptr i8, i8* %b, i64 4
  %92 = load i8, i8* %scevgep34.3, align 1
  %call28.3 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %conv29.3 = zext i8 %call28.3 to i32
  %xor.3 = xor i32 %conv23.3, %conv29.3
  %scevgep35.3 = getelementptr i8, i8* %a, i64 4
  %93 = load i8, i8* %scevgep35.3, align 1
  %94 = load i8, i8* %arrayidx33.3, align 1
  %call34.3 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94)
  %conv35.3 = zext i8 %call34.3 to i32
  %xor36.3 = xor i32 %xor.3, %conv35.3
  %conv37.3 = trunc i32 %xor36.3 to i8
  store i8 %conv37.3, i8* %scevgep39.2, align 1
  %scevgep28.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 1
  %scevgep41.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 1, i64 0
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep28.3, align 1
  %95 = load i8, i8* %scevgep28.3, align 1
  %conv23.3.1 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3.1 = getelementptr i8, i8* %b, i64 5
  %97 = load i8, i8* %scevgep34.3.1, align 1
  %call28.3.1 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97)
  %conv29.3.1 = zext i8 %call28.3.1 to i32
  %xor.3.1 = xor i32 %conv23.3.1, %conv29.3.1
  %scevgep35.3.1 = getelementptr i8, i8* %a, i64 5
  %98 = load i8, i8* %scevgep35.3.1, align 1
  %99 = load i8, i8* %arrayidx33.3, align 1
  %call34.3.1 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99)
  %conv35.3.1 = zext i8 %call34.3.1 to i32
  %xor36.3.1 = xor i32 %xor.3.1, %conv35.3.1
  %conv37.3.1 = trunc i32 %xor36.3.1 to i8
  store i8 %conv37.3.1, i8* %scevgep41.3, align 1
  %scevgep26.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 1, i64 1
  %scevgep39.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 1, i64 1
  %arrayidx25.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx33.4 = getelementptr inbounds i8, i8* %b, i64 4
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep26.3, align 1
  %100 = load i8, i8* %scevgep26.3, align 1
  %conv23.4 = zext i8 %100 to i32
  %101 = load i8, i8* %arrayidx25.4, align 1
  %scevgep34.4 = getelementptr i8, i8* %b, i64 5
  %102 = load i8, i8* %scevgep34.4, align 1
  %call28.4 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102)
  %conv29.4 = zext i8 %call28.4 to i32
  %xor.4 = xor i32 %conv23.4, %conv29.4
  %scevgep35.4 = getelementptr i8, i8* %a, i64 5
  %103 = load i8, i8* %scevgep35.4, align 1
  %104 = load i8, i8* %arrayidx33.4, align 1
  %call34.4 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104)
  %conv35.4 = zext i8 %call34.4 to i32
  %xor36.4 = xor i32 %xor.4, %conv35.4
  %conv37.4 = trunc i32 %xor36.4 to i8
  store i8 %conv37.4, i8* %scevgep39.3, align 1
  %105 = load i8, i8* %a, align 1
  %106 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %107 to i32
  %108 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %108 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 2
  %109 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %109 to i32
  %110 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %110 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 3
  %111 = load i8, i8* %scevgep20.3, align 1
  %conv68.3 = zext i8 %111 to i32
  %112 = load i8, i8* %c, align 1
  %conv71.3 = zext i8 %112 to i32
  %xor72.3 = xor i32 %conv71.3, %conv68.3
  %conv73.3 = trunc i32 %xor72.3 to i8
  store i8 %conv73.3, i8* %c, align 1
  %scevgep20.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 4
  %113 = load i8, i8* %scevgep20.4, align 1
  %conv68.4 = zext i8 %113 to i32
  %114 = load i8, i8* %c, align 1
  %conv71.4 = zext i8 %114 to i32
  %xor72.4 = xor i32 %conv71.4, %conv68.4
  %conv73.4 = trunc i32 %xor72.4 to i8
  store i8 %conv73.4, i8* %c, align 1
  %scevgep20.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 5
  %115 = load i8, i8* %scevgep20.5, align 1
  %conv68.5 = zext i8 %115 to i32
  %116 = load i8, i8* %c, align 1
  %conv71.5 = zext i8 %116 to i32
  %xor72.5 = xor i32 %conv71.5, %conv68.5
  %conv73.5 = trunc i32 %xor72.5 to i8
  store i8 %conv73.5, i8* %c, align 1
  %scevgep19 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %117 = bitcast i8* %scevgep19 to [6 x [6 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %118 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %119 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.154 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %117, i64 0, i64 0, i64 0
  %120 = load i8, i8* %scevgep20.154, align 1
  %conv68.155 = zext i8 %120 to i32
  %121 = load i8, i8* %arrayidx70.1, align 1
  %conv71.156 = zext i8 %121 to i32
  %xor72.157 = xor i32 %conv71.156, %conv68.155
  %conv73.158 = trunc i32 %xor72.157 to i8
  store i8 %conv73.158, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %117, i64 0, i64 0, i64 2
  %122 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %123 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep20.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %117, i64 0, i64 0, i64 3
  %124 = load i8, i8* %scevgep20.3.1, align 1
  %conv68.3.1 = zext i8 %124 to i32
  %125 = load i8, i8* %arrayidx70.1, align 1
  %conv71.3.1 = zext i8 %125 to i32
  %xor72.3.1 = xor i32 %conv71.3.1, %conv68.3.1
  %conv73.3.1 = trunc i32 %xor72.3.1 to i8
  store i8 %conv73.3.1, i8* %arrayidx70.1, align 1
  %scevgep20.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %117, i64 0, i64 0, i64 4
  %126 = load i8, i8* %scevgep20.4.1, align 1
  %conv68.4.1 = zext i8 %126 to i32
  %127 = load i8, i8* %arrayidx70.1, align 1
  %conv71.4.1 = zext i8 %127 to i32
  %xor72.4.1 = xor i32 %conv71.4.1, %conv68.4.1
  %conv73.4.1 = trunc i32 %xor72.4.1 to i8
  store i8 %conv73.4.1, i8* %arrayidx70.1, align 1
  %scevgep20.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %117, i64 0, i64 0, i64 5
  %128 = load i8, i8* %scevgep20.5.1, align 1
  %conv68.5.1 = zext i8 %128 to i32
  %129 = load i8, i8* %arrayidx70.1, align 1
  %conv71.5.1 = zext i8 %129 to i32
  %xor72.5.1 = xor i32 %conv71.5.1, %conv68.5.1
  %conv73.5.1 = trunc i32 %xor72.5.1 to i8
  store i8 %conv73.5.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %117, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep19.1 to [6 x [6 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %131 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %132 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.264 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep20.264, align 1
  %conv68.265 = zext i8 %133 to i32
  %134 = load i8, i8* %arrayidx70.2, align 1
  %conv71.266 = zext i8 %134 to i32
  %xor72.267 = xor i32 %conv71.266, %conv68.265
  %conv73.268 = trunc i32 %xor72.267 to i8
  store i8 %conv73.268, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 1
  %135 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %135 to i32
  %136 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %136 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %scevgep20.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 3
  %137 = load i8, i8* %scevgep20.3.2, align 1
  %conv68.3.2 = zext i8 %137 to i32
  %138 = load i8, i8* %arrayidx70.2, align 1
  %conv71.3.2 = zext i8 %138 to i32
  %xor72.3.2 = xor i32 %conv71.3.2, %conv68.3.2
  %conv73.3.2 = trunc i32 %xor72.3.2 to i8
  store i8 %conv73.3.2, i8* %arrayidx70.2, align 1
  %scevgep20.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 4
  %139 = load i8, i8* %scevgep20.4.2, align 1
  %conv68.4.2 = zext i8 %139 to i32
  %140 = load i8, i8* %arrayidx70.2, align 1
  %conv71.4.2 = zext i8 %140 to i32
  %xor72.4.2 = xor i32 %conv71.4.2, %conv68.4.2
  %conv73.4.2 = trunc i32 %xor72.4.2 to i8
  store i8 %conv73.4.2, i8* %arrayidx70.2, align 1
  %scevgep20.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 5
  %141 = load i8, i8* %scevgep20.5.2, align 1
  %conv68.5.2 = zext i8 %141 to i32
  %142 = load i8, i8* %arrayidx70.2, align 1
  %conv71.5.2 = zext i8 %142 to i32
  %xor72.5.2 = xor i32 %conv71.5.2, %conv68.5.2
  %conv73.5.2 = trunc i32 %xor72.5.2 to i8
  store i8 %conv73.5.2, i8* %arrayidx70.2, align 1
  %scevgep19.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 1, i64 0
  %143 = bitcast i8* %scevgep19.2 to [6 x [6 x i8]]*
  %arrayidx51.3 = getelementptr inbounds i8, i8* %a, i64 3
  %144 = load i8, i8* %arrayidx51.3, align 1
  %arrayidx53.3 = getelementptr inbounds i8, i8* %b, i64 3
  %145 = load i8, i8* %arrayidx53.3, align 1
  %call54.3 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145)
  %arrayidx56.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call54.3, i8* %arrayidx56.3, align 1
  %arrayidx70.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.374 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %143, i64 0, i64 0, i64 0
  %146 = load i8, i8* %scevgep20.374, align 1
  %conv68.375 = zext i8 %146 to i32
  %147 = load i8, i8* %arrayidx70.3, align 1
  %conv71.376 = zext i8 %147 to i32
  %xor72.377 = xor i32 %conv71.376, %conv68.375
  %conv73.378 = trunc i32 %xor72.377 to i8
  store i8 %conv73.378, i8* %arrayidx70.3, align 1
  %scevgep20.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %143, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep20.1.3, align 1
  %conv68.1.3 = zext i8 %148 to i32
  %149 = load i8, i8* %arrayidx70.3, align 1
  %conv71.1.3 = zext i8 %149 to i32
  %xor72.1.3 = xor i32 %conv71.1.3, %conv68.1.3
  %conv73.1.3 = trunc i32 %xor72.1.3 to i8
  store i8 %conv73.1.3, i8* %arrayidx70.3, align 1
  %scevgep20.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %143, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep20.2.3, align 1
  %conv68.2.3 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx70.3, align 1
  %conv71.2.3 = zext i8 %151 to i32
  %xor72.2.3 = xor i32 %conv71.2.3, %conv68.2.3
  %conv73.2.3 = trunc i32 %xor72.2.3 to i8
  store i8 %conv73.2.3, i8* %arrayidx70.3, align 1
  %scevgep20.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %143, i64 0, i64 0, i64 4
  %152 = load i8, i8* %scevgep20.4.3, align 1
  %conv68.4.3 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx70.3, align 1
  %conv71.4.3 = zext i8 %153 to i32
  %xor72.4.3 = xor i32 %conv71.4.3, %conv68.4.3
  %conv73.4.3 = trunc i32 %xor72.4.3 to i8
  store i8 %conv73.4.3, i8* %arrayidx70.3, align 1
  %scevgep20.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %143, i64 0, i64 0, i64 5
  %154 = load i8, i8* %scevgep20.5.3, align 1
  %conv68.5.3 = zext i8 %154 to i32
  %155 = load i8, i8* %arrayidx70.3, align 1
  %conv71.5.3 = zext i8 %155 to i32
  %xor72.5.3 = xor i32 %conv71.5.3, %conv68.5.3
  %conv73.5.3 = trunc i32 %xor72.5.3 to i8
  store i8 %conv73.5.3, i8* %arrayidx70.3, align 1
  %scevgep19.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %143, i64 0, i64 1, i64 0
  %156 = bitcast i8* %scevgep19.3 to [6 x [6 x i8]]*
  %arrayidx51.4 = getelementptr inbounds i8, i8* %a, i64 4
  %157 = load i8, i8* %arrayidx51.4, align 1
  %arrayidx53.4 = getelementptr inbounds i8, i8* %b, i64 4
  %158 = load i8, i8* %arrayidx53.4, align 1
  %call54.4 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158)
  %arrayidx56.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call54.4, i8* %arrayidx56.4, align 1
  %arrayidx70.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep20.484 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %156, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep20.484, align 1
  %conv68.485 = zext i8 %159 to i32
  %160 = load i8, i8* %arrayidx70.4, align 1
  %conv71.486 = zext i8 %160 to i32
  %xor72.487 = xor i32 %conv71.486, %conv68.485
  %conv73.488 = trunc i32 %xor72.487 to i8
  store i8 %conv73.488, i8* %arrayidx70.4, align 1
  %scevgep20.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %156, i64 0, i64 0, i64 1
  %161 = load i8, i8* %scevgep20.1.4, align 1
  %conv68.1.4 = zext i8 %161 to i32
  %162 = load i8, i8* %arrayidx70.4, align 1
  %conv71.1.4 = zext i8 %162 to i32
  %xor72.1.4 = xor i32 %conv71.1.4, %conv68.1.4
  %conv73.1.4 = trunc i32 %xor72.1.4 to i8
  store i8 %conv73.1.4, i8* %arrayidx70.4, align 1
  %scevgep20.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %156, i64 0, i64 0, i64 2
  %163 = load i8, i8* %scevgep20.2.4, align 1
  %conv68.2.4 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx70.4, align 1
  %conv71.2.4 = zext i8 %164 to i32
  %xor72.2.4 = xor i32 %conv71.2.4, %conv68.2.4
  %conv73.2.4 = trunc i32 %xor72.2.4 to i8
  store i8 %conv73.2.4, i8* %arrayidx70.4, align 1
  %scevgep20.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %156, i64 0, i64 0, i64 3
  %165 = load i8, i8* %scevgep20.3.4, align 1
  %conv68.3.4 = zext i8 %165 to i32
  %166 = load i8, i8* %arrayidx70.4, align 1
  %conv71.3.4 = zext i8 %166 to i32
  %xor72.3.4 = xor i32 %conv71.3.4, %conv68.3.4
  %conv73.3.4 = trunc i32 %xor72.3.4 to i8
  store i8 %conv73.3.4, i8* %arrayidx70.4, align 1
  %scevgep20.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %156, i64 0, i64 0, i64 5
  %167 = load i8, i8* %scevgep20.5.4, align 1
  %conv68.5.4 = zext i8 %167 to i32
  %168 = load i8, i8* %arrayidx70.4, align 1
  %conv71.5.4 = zext i8 %168 to i32
  %xor72.5.4 = xor i32 %conv71.5.4, %conv68.5.4
  %conv73.5.4 = trunc i32 %xor72.5.4 to i8
  store i8 %conv73.5.4, i8* %arrayidx70.4, align 1
  %scevgep19.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %156, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep19.4 to [6 x [6 x i8]]*
  %arrayidx51.5 = getelementptr inbounds i8, i8* %a, i64 5
  %170 = load i8, i8* %arrayidx51.5, align 1
  %arrayidx53.5 = getelementptr inbounds i8, i8* %b, i64 5
  %171 = load i8, i8* %arrayidx53.5, align 1
  %call54.5 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171)
  %arrayidx56.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call54.5, i8* %arrayidx56.5, align 1
  %arrayidx70.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep20.594 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %169, i64 0, i64 0, i64 0
  %172 = load i8, i8* %scevgep20.594, align 1
  %conv68.595 = zext i8 %172 to i32
  %173 = load i8, i8* %arrayidx70.5, align 1
  %conv71.596 = zext i8 %173 to i32
  %xor72.597 = xor i32 %conv71.596, %conv68.595
  %conv73.598 = trunc i32 %xor72.597 to i8
  store i8 %conv73.598, i8* %arrayidx70.5, align 1
  %scevgep20.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %169, i64 0, i64 0, i64 1
  %174 = load i8, i8* %scevgep20.1.5, align 1
  %conv68.1.5 = zext i8 %174 to i32
  %175 = load i8, i8* %arrayidx70.5, align 1
  %conv71.1.5 = zext i8 %175 to i32
  %xor72.1.5 = xor i32 %conv71.1.5, %conv68.1.5
  %conv73.1.5 = trunc i32 %xor72.1.5 to i8
  store i8 %conv73.1.5, i8* %arrayidx70.5, align 1
  %scevgep20.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %169, i64 0, i64 0, i64 2
  %176 = load i8, i8* %scevgep20.2.5, align 1
  %conv68.2.5 = zext i8 %176 to i32
  %177 = load i8, i8* %arrayidx70.5, align 1
  %conv71.2.5 = zext i8 %177 to i32
  %xor72.2.5 = xor i32 %conv71.2.5, %conv68.2.5
  %conv73.2.5 = trunc i32 %xor72.2.5 to i8
  store i8 %conv73.2.5, i8* %arrayidx70.5, align 1
  %scevgep20.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %169, i64 0, i64 0, i64 3
  %178 = load i8, i8* %scevgep20.3.5, align 1
  %conv68.3.5 = zext i8 %178 to i32
  %179 = load i8, i8* %arrayidx70.5, align 1
  %conv71.3.5 = zext i8 %179 to i32
  %xor72.3.5 = xor i32 %conv71.3.5, %conv68.3.5
  %conv73.3.5 = trunc i32 %xor72.3.5 to i8
  store i8 %conv73.3.5, i8* %arrayidx70.5, align 1
  %scevgep20.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %169, i64 0, i64 0, i64 4
  %180 = load i8, i8* %scevgep20.4.5, align 1
  %conv68.4.5 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx70.5, align 1
  %conv71.4.5 = zext i8 %181 to i32
  %xor72.4.5 = xor i32 %conv71.4.5, %conv68.4.5
  %conv73.4.5 = trunc i32 %xor72.4.5 to i8
  store i8 %conv73.4.5, i8* %arrayidx70.5, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %182 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %183 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %183 to i32
  %conv1.i.i114.1 = zext i8 %182 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %184 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %184 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %185 = load i8, i8* %scevgep.3, align 1
  %conv.i.i113.3 = zext i8 %185 to i32
  %conv1.i.i114.3 = zext i8 %conv2.i.i116.2 to i32
  %xor.i.i115.3 = xor i32 %conv1.i.i114.3, %conv.i.i113.3
  %conv2.i.i116.3 = trunc i32 %xor.i.i115.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %186 = load i8, i8* %scevgep.4, align 1
  %conv.i.i113.4 = zext i8 %186 to i32
  %conv1.i.i114.4 = zext i8 %conv2.i.i116.3 to i32
  %xor.i.i115.4 = xor i32 %conv1.i.i114.4, %conv.i.i113.4
  %conv2.i.i116.4 = trunc i32 %xor.i.i115.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %187 = load i8, i8* %scevgep.5, align 1
  %conv.i.i113.5 = zext i8 %187 to i32
  %conv1.i.i114.5 = zext i8 %conv2.i.i116.4 to i32
  %xor.i.i115.5 = xor i32 %conv1.i.i114.5, %conv.i.i113.5
  %conv2.i.i116.5 = trunc i32 %xor.i.i115.5 to i8
  %conv83 = zext i8 %conv2.i.i116.5 to i32
  %cmp84 = icmp eq i32 %conv81, %conv83
  call void @assert(i1 zeroext %cmp84)
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
  %scevgep12.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep12.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep12.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep12.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep12.5 = getelementptr i8, i8* %x, i64 5
  %5 = load i8, i8* %scevgep12.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %conv2 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %6 = load i8, i8* %x, align 1
  %conv9 = zext i8 %6 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %7 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %8 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %8 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %9 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %9 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %10 = load i8, i8* %x, align 1
  %conv9.2 = zext i8 %10 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %x, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep8.2 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep8.2, align 1
  %conv13.2 = zext i8 %11 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep8.2, align 1
  %call7.3 = call zeroext i8 (...) @rand()
  %conv8.3 = zext i8 %call7.3 to i32
  %12 = load i8, i8* %x, align 1
  %conv9.3 = zext i8 %12 to i32
  %xor.3 = xor i32 %conv9.3, %conv8.3
  %conv10.3 = trunc i32 %xor.3 to i8
  store i8 %conv10.3, i8* %x, align 1
  %conv11.3 = zext i8 %call7.3 to i32
  %scevgep8.3 = getelementptr i8, i8* %x, i64 4
  %13 = load i8, i8* %scevgep8.3, align 1
  %conv13.3 = zext i8 %13 to i32
  %xor14.3 = xor i32 %conv13.3, %conv11.3
  %conv15.3 = trunc i32 %xor14.3 to i8
  store i8 %conv15.3, i8* %scevgep8.3, align 1
  %call7.4 = call zeroext i8 (...) @rand()
  %conv8.4 = zext i8 %call7.4 to i32
  %14 = load i8, i8* %x, align 1
  %conv9.4 = zext i8 %14 to i32
  %xor.4 = xor i32 %conv9.4, %conv8.4
  %conv10.4 = trunc i32 %xor.4 to i8
  store i8 %conv10.4, i8* %x, align 1
  %conv11.4 = zext i8 %call7.4 to i32
  %scevgep8.4 = getelementptr i8, i8* %x, i64 5
  %15 = load i8, i8* %scevgep8.4, align 1
  %conv13.4 = zext i8 %15 to i32
  %xor14.4 = xor i32 %conv13.4, %conv11.4
  %conv15.4 = trunc i32 %xor14.4 to i8
  store i8 %conv15.4, i8* %scevgep8.4, align 1
  %conv16 = zext i8 %call to i32
  %16 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %17 to i32
  %conv1.i.i32.1 = zext i8 %16 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %18 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %18 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %19 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %19 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %20 = load i8, i8* %scevgep.4, align 1
  %conv.i.i31.4 = zext i8 %20 to i32
  %conv1.i.i32.4 = zext i8 %conv2.i.i34.3 to i32
  %xor.i.i33.4 = xor i32 %conv1.i.i32.4, %conv.i.i31.4
  %conv2.i.i34.4 = trunc i32 %xor.i.i33.4 to i8
  %scevgep.5 = getelementptr i8, i8* %x, i64 5
  %21 = load i8, i8* %scevgep.5, align 1
  %conv.i.i31.5 = zext i8 %21 to i32
  %conv1.i.i32.5 = zext i8 %conv2.i.i34.4 to i32
  %xor.i.i33.5 = xor i32 %conv1.i.i32.5, %conv.i.i31.5
  %conv2.i.i34.5 = trunc i32 %xor.i.i33.5 to i8
  %conv18 = zext i8 %conv2.i.i34.5 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
