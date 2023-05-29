; ModuleID = '../examples/dom-mult.inline-4.ll'
source_filename = "../examples/dom-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"../examples/dom-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep56.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep56.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep56.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep56.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep56.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep56.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep56.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep56.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep52.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep52.1, align 1
  %conv.i.i106.1 = zext i8 %6 to i32
  %conv1.i.i107.1 = zext i8 %5 to i32
  %xor.i.i108.1 = xor i32 %conv1.i.i107.1, %conv.i.i106.1
  %conv2.i.i109.1 = trunc i32 %xor.i.i108.1 to i8
  %scevgep52.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep52.2, align 1
  %conv.i.i106.2 = zext i8 %7 to i32
  %conv1.i.i107.2 = zext i8 %conv2.i.i109.1 to i32
  %xor.i.i108.2 = xor i32 %conv1.i.i107.2, %conv.i.i106.2
  %conv2.i.i109.2 = trunc i32 %xor.i.i108.2 to i8
  %scevgep52.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep52.3, align 1
  %conv.i.i106.3 = zext i8 %8 to i32
  %conv1.i.i107.3 = zext i8 %conv2.i.i109.2 to i32
  %xor.i.i108.3 = xor i32 %conv1.i.i107.3, %conv.i.i106.3
  %conv2.i.i109.3 = trunc i32 %xor.i.i108.3 to i8
  %scevgep52.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep52.4, align 1
  %conv.i.i106.4 = zext i8 %9 to i32
  %conv1.i.i107.4 = zext i8 %conv2.i.i109.3 to i32
  %xor.i.i108.4 = xor i32 %conv1.i.i107.4, %conv.i.i106.4
  %conv2.i.i109.4 = trunc i32 %xor.i.i108.4 to i8
  %conv7 = zext i8 %conv2.i.i109.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [5 x [5 x i8]]*
  %scevgep32 = getelementptr i8, i8* %b, i64 1
  %scevgep40 = getelementptr i8, i8* %a, i64 1
  %call16 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep29, align 1
  %10 = load i8, i8* %a, align 1
  %11 = load i8, i8* %scevgep32, align 1
  %call23 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11)
  %conv24 = zext i8 %call23 to i32
  %scevgep30 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %12 = load i8, i8* %scevgep30, align 1
  %conv29 = zext i8 %12 to i32
  %xor = xor i32 %conv24, %conv29
  %conv30 = trunc i32 %xor to i8
  %scevgep38 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep39 = getelementptr i8, i8* %scevgep38, i64 1
  store i8 %conv30, i8* %scevgep39, align 1
  %13 = load i8, i8* %scevgep40, align 1
  %14 = load i8, i8* %b, align 1
  %call39 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14)
  %conv40 = zext i8 %call39 to i32
  %scevgep31 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %15 = load i8, i8* %scevgep31, align 1
  %conv45 = zext i8 %15 to i32
  %xor46 = xor i32 %conv40, %conv45
  %conv47 = trunc i32 %xor46 to i8
  %scevgep46 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 5
  store i8 %conv47, i8* %scevgep46, align 1
  %call16.194 = call zeroext i8 (...) @rand()
  %scevgep29.195 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  store i8 %call16.194, i8* %scevgep29.195, align 1
  %16 = load i8, i8* %a, align 1
  %scevgep35.1 = getelementptr i8, i8* %scevgep32, i64 1
  %17 = load i8, i8* %scevgep35.1, align 1
  %call23.196 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17)
  %conv24.197 = zext i8 %call23.196 to i32
  %scevgep30.198 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep30.198, align 1
  %conv29.199 = zext i8 %18 to i32
  %xor.1100 = xor i32 %conv24.197, %conv29.199
  %conv30.1101 = trunc i32 %xor.1100 to i8
  %scevgep38.1102 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 1
  %scevgep39.1103 = getelementptr i8, i8* %scevgep38.1102, i64 1
  store i8 %conv30.1101, i8* %scevgep39.1103, align 1
  %scevgep43.1 = getelementptr i8, i8* %scevgep40, i64 1
  %19 = load i8, i8* %scevgep43.1, align 1
  %20 = load i8, i8* %b, align 1
  %call39.1104 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20)
  %conv40.1105 = zext i8 %call39.1104 to i32
  %scevgep31.1106 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %21 = load i8, i8* %scevgep31.1106, align 1
  %conv45.1107 = zext i8 %21 to i32
  %xor46.1108 = xor i32 %conv40.1105, %conv45.1107
  %conv47.1109 = trunc i32 %xor46.1108 to i8
  %scevgep46.1110 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 10
  store i8 %conv47.1109, i8* %scevgep46.1110, align 1
  %call16.2112 = call zeroext i8 (...) @rand()
  %scevgep29.2113 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 2
  store i8 %call16.2112, i8* %scevgep29.2113, align 1
  %22 = load i8, i8* %a, align 1
  %scevgep35.2 = getelementptr i8, i8* %scevgep32, i64 2
  %23 = load i8, i8* %scevgep35.2, align 1
  %call23.2114 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %conv24.2115 = zext i8 %call23.2114 to i32
  %scevgep30.2116 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 2
  %24 = load i8, i8* %scevgep30.2116, align 1
  %conv29.2117 = zext i8 %24 to i32
  %xor.2118 = xor i32 %conv24.2115, %conv29.2117
  %conv30.2119 = trunc i32 %xor.2118 to i8
  %scevgep38.2120 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 2
  %scevgep39.2121 = getelementptr i8, i8* %scevgep38.2120, i64 1
  store i8 %conv30.2119, i8* %scevgep39.2121, align 1
  %scevgep43.2 = getelementptr i8, i8* %scevgep40, i64 2
  %25 = load i8, i8* %scevgep43.2, align 1
  %26 = load i8, i8* %b, align 1
  %call39.2122 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  %conv40.2123 = zext i8 %call39.2122 to i32
  %scevgep31.2124 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 2
  %27 = load i8, i8* %scevgep31.2124, align 1
  %conv45.2125 = zext i8 %27 to i32
  %xor46.2126 = xor i32 %conv40.2123, %conv45.2125
  %conv47.2127 = trunc i32 %xor46.2126 to i8
  %scevgep46.2128 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 15
  store i8 %conv47.2127, i8* %scevgep46.2128, align 1
  %call16.3130 = call zeroext i8 (...) @rand()
  %scevgep29.3131 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 3
  store i8 %call16.3130, i8* %scevgep29.3131, align 1
  %28 = load i8, i8* %a, align 1
  %scevgep35.3 = getelementptr i8, i8* %scevgep32, i64 3
  %29 = load i8, i8* %scevgep35.3, align 1
  %call23.3132 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29)
  %conv24.3133 = zext i8 %call23.3132 to i32
  %scevgep30.3134 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 3
  %30 = load i8, i8* %scevgep30.3134, align 1
  %conv29.3135 = zext i8 %30 to i32
  %xor.3136 = xor i32 %conv24.3133, %conv29.3135
  %conv30.3137 = trunc i32 %xor.3136 to i8
  %scevgep38.3138 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 3
  %scevgep39.3139 = getelementptr i8, i8* %scevgep38.3138, i64 1
  store i8 %conv30.3137, i8* %scevgep39.3139, align 1
  %scevgep43.3 = getelementptr i8, i8* %scevgep40, i64 3
  %31 = load i8, i8* %scevgep43.3, align 1
  %32 = load i8, i8* %b, align 1
  %call39.3140 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32)
  %conv40.3141 = zext i8 %call39.3140 to i32
  %scevgep31.3142 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 3
  %33 = load i8, i8* %scevgep31.3142, align 1
  %conv45.3143 = zext i8 %33 to i32
  %xor46.3144 = xor i32 %conv40.3141, %conv45.3143
  %conv47.3145 = trunc i32 %xor46.3144 to i8
  %scevgep46.3146 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 20
  store i8 %conv47.3145, i8* %scevgep46.3146, align 1
  %scevgep26 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %34 = bitcast i8* %scevgep26 to [5 x [5 x i8]]*
  %scevgep34 = getelementptr i8, i8* %scevgep32, i64 1
  %scevgep37 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 1, i64 1
  %35 = bitcast i8* %scevgep37 to [5 x [5 x i8]]*
  %scevgep42 = getelementptr i8, i8* %scevgep40, i64 1
  %arrayidx20.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx38.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 0
  store i8 %call16.1, i8* %scevgep29.1, align 1
  %36 = load i8, i8* %arrayidx20.1, align 1
  %37 = load i8, i8* %scevgep34, align 1
  %call23.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %conv24.1 = zext i8 %call23.1 to i32
  %scevgep30.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 0
  %38 = load i8, i8* %scevgep30.1, align 1
  %conv29.1 = zext i8 %38 to i32
  %xor.1 = xor i32 %conv24.1, %conv29.1
  %conv30.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 0
  %scevgep39.1 = getelementptr i8, i8* %scevgep38.1, i64 1
  store i8 %conv30.1, i8* %scevgep39.1, align 1
  %39 = load i8, i8* %scevgep42, align 1
  %40 = load i8, i8* %arrayidx38.1, align 1
  %call39.1 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40)
  %conv40.1 = zext i8 %call39.1 to i32
  %scevgep31.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 0
  %41 = load i8, i8* %scevgep31.1, align 1
  %conv45.1 = zext i8 %41 to i32
  %xor46.1 = xor i32 %conv40.1, %conv45.1
  %conv47.1 = trunc i32 %xor46.1 to i8
  %scevgep46.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 5
  store i8 %conv47.1, i8* %scevgep46.1, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep29.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep29.1.1, align 1
  %42 = load i8, i8* %arrayidx20.1, align 1
  %scevgep35.1.1 = getelementptr i8, i8* %scevgep34, i64 1
  %43 = load i8, i8* %scevgep35.1.1, align 1
  %call23.1.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %conv24.1.1 = zext i8 %call23.1.1 to i32
  %scevgep30.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 1
  %44 = load i8, i8* %scevgep30.1.1, align 1
  %conv29.1.1 = zext i8 %44 to i32
  %xor.1.1 = xor i32 %conv24.1.1, %conv29.1.1
  %conv30.1.1 = trunc i32 %xor.1.1 to i8
  %scevgep38.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 1
  %scevgep39.1.1 = getelementptr i8, i8* %scevgep38.1.1, i64 1
  store i8 %conv30.1.1, i8* %scevgep39.1.1, align 1
  %scevgep43.1.1 = getelementptr i8, i8* %scevgep42, i64 1
  %45 = load i8, i8* %scevgep43.1.1, align 1
  %46 = load i8, i8* %arrayidx38.1, align 1
  %call39.1.1 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46)
  %conv40.1.1 = zext i8 %call39.1.1 to i32
  %scevgep31.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep31.1.1, align 1
  %conv45.1.1 = zext i8 %47 to i32
  %xor46.1.1 = xor i32 %conv40.1.1, %conv45.1.1
  %conv47.1.1 = trunc i32 %xor46.1.1 to i8
  %scevgep46.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 10
  store i8 %conv47.1.1, i8* %scevgep46.1.1, align 1
  %call16.1.2 = call zeroext i8 (...) @rand()
  %scevgep29.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 2
  store i8 %call16.1.2, i8* %scevgep29.1.2, align 1
  %48 = load i8, i8* %arrayidx20.1, align 1
  %scevgep35.1.2 = getelementptr i8, i8* %scevgep34, i64 2
  %49 = load i8, i8* %scevgep35.1.2, align 1
  %call23.1.2 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49)
  %conv24.1.2 = zext i8 %call23.1.2 to i32
  %scevgep30.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 2
  %50 = load i8, i8* %scevgep30.1.2, align 1
  %conv29.1.2 = zext i8 %50 to i32
  %xor.1.2 = xor i32 %conv24.1.2, %conv29.1.2
  %conv30.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 2
  %scevgep39.1.2 = getelementptr i8, i8* %scevgep38.1.2, i64 1
  store i8 %conv30.1.2, i8* %scevgep39.1.2, align 1
  %scevgep43.1.2 = getelementptr i8, i8* %scevgep42, i64 2
  %51 = load i8, i8* %scevgep43.1.2, align 1
  %52 = load i8, i8* %arrayidx38.1, align 1
  %call39.1.2 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %conv40.1.2 = zext i8 %call39.1.2 to i32
  %scevgep31.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep31.1.2, align 1
  %conv45.1.2 = zext i8 %53 to i32
  %xor46.1.2 = xor i32 %conv40.1.2, %conv45.1.2
  %conv47.1.2 = trunc i32 %xor46.1.2 to i8
  %scevgep46.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 15
  store i8 %conv47.1.2, i8* %scevgep46.1.2, align 1
  %scevgep26.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 1, i64 1
  %54 = bitcast i8* %scevgep26.1 to [5 x [5 x i8]]*
  %scevgep34.1 = getelementptr i8, i8* %scevgep34, i64 1
  %scevgep37.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 1, i64 1
  %55 = bitcast i8* %scevgep37.1 to [5 x [5 x i8]]*
  %scevgep42.1 = getelementptr i8, i8* %scevgep42, i64 1
  %arrayidx20.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx38.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep29.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 0
  store i8 %call16.2, i8* %scevgep29.2, align 1
  %56 = load i8, i8* %arrayidx20.2, align 1
  %57 = load i8, i8* %scevgep34.1, align 1
  %call23.2 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57)
  %conv24.2 = zext i8 %call23.2 to i32
  %scevgep30.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep30.2, align 1
  %conv29.2 = zext i8 %58 to i32
  %xor.2 = xor i32 %conv24.2, %conv29.2
  %conv30.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 0, i64 0
  %scevgep39.2 = getelementptr i8, i8* %scevgep38.2, i64 1
  store i8 %conv30.2, i8* %scevgep39.2, align 1
  %59 = load i8, i8* %scevgep42.1, align 1
  %60 = load i8, i8* %arrayidx38.2, align 1
  %call39.2 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60)
  %conv40.2 = zext i8 %call39.2 to i32
  %scevgep31.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 0
  %61 = load i8, i8* %scevgep31.2, align 1
  %conv45.2 = zext i8 %61 to i32
  %xor46.2 = xor i32 %conv40.2, %conv45.2
  %conv47.2 = trunc i32 %xor46.2 to i8
  %scevgep46.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 0, i64 5
  store i8 %conv47.2, i8* %scevgep46.2, align 1
  %call16.2.1 = call zeroext i8 (...) @rand()
  %scevgep29.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 1
  store i8 %call16.2.1, i8* %scevgep29.2.1, align 1
  %62 = load i8, i8* %arrayidx20.2, align 1
  %scevgep35.2.1 = getelementptr i8, i8* %scevgep34.1, i64 1
  %63 = load i8, i8* %scevgep35.2.1, align 1
  %call23.2.1 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63)
  %conv24.2.1 = zext i8 %call23.2.1 to i32
  %scevgep30.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 1
  %64 = load i8, i8* %scevgep30.2.1, align 1
  %conv29.2.1 = zext i8 %64 to i32
  %xor.2.1 = xor i32 %conv24.2.1, %conv29.2.1
  %conv30.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 0, i64 1
  %scevgep39.2.1 = getelementptr i8, i8* %scevgep38.2.1, i64 1
  store i8 %conv30.2.1, i8* %scevgep39.2.1, align 1
  %scevgep43.2.1 = getelementptr i8, i8* %scevgep42.1, i64 1
  %65 = load i8, i8* %scevgep43.2.1, align 1
  %66 = load i8, i8* %arrayidx38.2, align 1
  %call39.2.1 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %conv40.2.1 = zext i8 %call39.2.1 to i32
  %scevgep31.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep31.2.1, align 1
  %conv45.2.1 = zext i8 %67 to i32
  %xor46.2.1 = xor i32 %conv40.2.1, %conv45.2.1
  %conv47.2.1 = trunc i32 %xor46.2.1 to i8
  %scevgep46.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 0, i64 10
  store i8 %conv47.2.1, i8* %scevgep46.2.1, align 1
  %scevgep26.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 1, i64 1
  %68 = bitcast i8* %scevgep26.2 to [5 x [5 x i8]]*
  %scevgep34.2 = getelementptr i8, i8* %scevgep34.1, i64 1
  %scevgep37.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 1, i64 1
  %69 = bitcast i8* %scevgep37.2 to [5 x [5 x i8]]*
  %scevgep42.2 = getelementptr i8, i8* %scevgep42.1, i64 1
  %arrayidx20.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx38.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call16.3 = call zeroext i8 (...) @rand()
  %scevgep29.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %68, i64 0, i64 0, i64 0
  store i8 %call16.3, i8* %scevgep29.3, align 1
  %70 = load i8, i8* %arrayidx20.3, align 1
  %71 = load i8, i8* %scevgep34.2, align 1
  %call23.3 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  %conv24.3 = zext i8 %call23.3 to i32
  %scevgep30.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %68, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep30.3, align 1
  %conv29.3 = zext i8 %72 to i32
  %xor.3 = xor i32 %conv24.3, %conv29.3
  %conv30.3 = trunc i32 %xor.3 to i8
  %scevgep38.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 0
  %scevgep39.3 = getelementptr i8, i8* %scevgep38.3, i64 1
  store i8 %conv30.3, i8* %scevgep39.3, align 1
  %73 = load i8, i8* %scevgep42.2, align 1
  %74 = load i8, i8* %arrayidx38.3, align 1
  %call39.3 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74)
  %conv40.3 = zext i8 %call39.3 to i32
  %scevgep31.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %68, i64 0, i64 0, i64 0
  %75 = load i8, i8* %scevgep31.3, align 1
  %conv45.3 = zext i8 %75 to i32
  %xor46.3 = xor i32 %conv40.3, %conv45.3
  %conv47.3 = trunc i32 %xor46.3 to i8
  %scevgep46.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 5
  store i8 %conv47.3, i8* %scevgep46.3, align 1
  %76 = load i8, i8* %a, align 1
  %77 = load i8, i8* %b, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77)
  store i8 %call64, i8* %c, align 1
  %scevgep20.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 1
  %78 = load i8, i8* %scevgep20.1, align 1
  %conv78.1 = zext i8 %78 to i32
  %79 = load i8, i8* %c, align 1
  %conv81.1 = zext i8 %79 to i32
  %xor82.1 = xor i32 %conv81.1, %conv78.1
  %conv83.1 = trunc i32 %xor82.1 to i8
  store i8 %conv83.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 2
  %80 = load i8, i8* %scevgep20.2, align 1
  %conv78.2 = zext i8 %80 to i32
  %81 = load i8, i8* %c, align 1
  %conv81.2 = zext i8 %81 to i32
  %xor82.2 = xor i32 %conv81.2, %conv78.2
  %conv83.2 = trunc i32 %xor82.2 to i8
  store i8 %conv83.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 3
  %82 = load i8, i8* %scevgep20.3, align 1
  %conv78.3 = zext i8 %82 to i32
  %83 = load i8, i8* %c, align 1
  %conv81.3 = zext i8 %83 to i32
  %xor82.3 = xor i32 %conv81.3, %conv78.3
  %conv83.3 = trunc i32 %xor82.3 to i8
  store i8 %conv83.3, i8* %c, align 1
  %scevgep20.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 4
  %84 = load i8, i8* %scevgep20.4, align 1
  %conv78.4 = zext i8 %84 to i32
  %85 = load i8, i8* %c, align 1
  %conv81.4 = zext i8 %85 to i32
  %xor82.4 = xor i32 %conv81.4, %conv78.4
  %conv83.4 = trunc i32 %xor82.4 to i8
  store i8 %conv83.4, i8* %c, align 1
  %scevgep19 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep19 to [5 x [5 x i8]]*
  %arrayidx61.1 = getelementptr inbounds i8, i8* %a, i64 1
  %87 = load i8, i8* %arrayidx61.1, align 1
  %arrayidx63.1 = getelementptr inbounds i8, i8* %b, i64 1
  %88 = load i8, i8* %arrayidx63.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88)
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call64.1, i8* %arrayidx66.1, align 1
  %arrayidx80.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.160 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep20.160, align 1
  %conv78.161 = zext i8 %89 to i32
  %90 = load i8, i8* %arrayidx80.1, align 1
  %conv81.162 = zext i8 %90 to i32
  %xor82.163 = xor i32 %conv81.162, %conv78.161
  %conv83.164 = trunc i32 %xor82.163 to i8
  store i8 %conv83.164, i8* %arrayidx80.1, align 1
  %scevgep20.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 2
  %91 = load i8, i8* %scevgep20.2.1, align 1
  %conv78.2.1 = zext i8 %91 to i32
  %92 = load i8, i8* %arrayidx80.1, align 1
  %conv81.2.1 = zext i8 %92 to i32
  %xor82.2.1 = xor i32 %conv81.2.1, %conv78.2.1
  %conv83.2.1 = trunc i32 %xor82.2.1 to i8
  store i8 %conv83.2.1, i8* %arrayidx80.1, align 1
  %scevgep20.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 3
  %93 = load i8, i8* %scevgep20.3.1, align 1
  %conv78.3.1 = zext i8 %93 to i32
  %94 = load i8, i8* %arrayidx80.1, align 1
  %conv81.3.1 = zext i8 %94 to i32
  %xor82.3.1 = xor i32 %conv81.3.1, %conv78.3.1
  %conv83.3.1 = trunc i32 %xor82.3.1 to i8
  store i8 %conv83.3.1, i8* %arrayidx80.1, align 1
  %scevgep20.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 4
  %95 = load i8, i8* %scevgep20.4.1, align 1
  %conv78.4.1 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx80.1, align 1
  %conv81.4.1 = zext i8 %96 to i32
  %xor82.4.1 = xor i32 %conv81.4.1, %conv78.4.1
  %conv83.4.1 = trunc i32 %xor82.4.1 to i8
  store i8 %conv83.4.1, i8* %arrayidx80.1, align 1
  %scevgep19.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep19.1 to [5 x [5 x i8]]*
  %arrayidx61.2 = getelementptr inbounds i8, i8* %a, i64 2
  %98 = load i8, i8* %arrayidx61.2, align 1
  %arrayidx63.2 = getelementptr inbounds i8, i8* %b, i64 2
  %99 = load i8, i8* %arrayidx63.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99)
  %arrayidx66.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call64.2, i8* %arrayidx66.2, align 1
  %arrayidx80.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.269 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 0
  %100 = load i8, i8* %scevgep20.269, align 1
  %conv78.270 = zext i8 %100 to i32
  %101 = load i8, i8* %arrayidx80.2, align 1
  %conv81.271 = zext i8 %101 to i32
  %xor82.272 = xor i32 %conv81.271, %conv78.270
  %conv83.273 = trunc i32 %xor82.272 to i8
  store i8 %conv83.273, i8* %arrayidx80.2, align 1
  %scevgep20.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 1
  %102 = load i8, i8* %scevgep20.1.2, align 1
  %conv78.1.2 = zext i8 %102 to i32
  %103 = load i8, i8* %arrayidx80.2, align 1
  %conv81.1.2 = zext i8 %103 to i32
  %xor82.1.2 = xor i32 %conv81.1.2, %conv78.1.2
  %conv83.1.2 = trunc i32 %xor82.1.2 to i8
  store i8 %conv83.1.2, i8* %arrayidx80.2, align 1
  %scevgep20.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 3
  %104 = load i8, i8* %scevgep20.3.2, align 1
  %conv78.3.2 = zext i8 %104 to i32
  %105 = load i8, i8* %arrayidx80.2, align 1
  %conv81.3.2 = zext i8 %105 to i32
  %xor82.3.2 = xor i32 %conv81.3.2, %conv78.3.2
  %conv83.3.2 = trunc i32 %xor82.3.2 to i8
  store i8 %conv83.3.2, i8* %arrayidx80.2, align 1
  %scevgep20.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 4
  %106 = load i8, i8* %scevgep20.4.2, align 1
  %conv78.4.2 = zext i8 %106 to i32
  %107 = load i8, i8* %arrayidx80.2, align 1
  %conv81.4.2 = zext i8 %107 to i32
  %xor82.4.2 = xor i32 %conv81.4.2, %conv78.4.2
  %conv83.4.2 = trunc i32 %xor82.4.2 to i8
  store i8 %conv83.4.2, i8* %arrayidx80.2, align 1
  %scevgep19.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep19.2 to [5 x [5 x i8]]*
  %arrayidx61.3 = getelementptr inbounds i8, i8* %a, i64 3
  %109 = load i8, i8* %arrayidx61.3, align 1
  %arrayidx63.3 = getelementptr inbounds i8, i8* %b, i64 3
  %110 = load i8, i8* %arrayidx63.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110)
  %arrayidx66.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call64.3, i8* %arrayidx66.3, align 1
  %arrayidx80.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.378 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep20.378, align 1
  %conv78.379 = zext i8 %111 to i32
  %112 = load i8, i8* %arrayidx80.3, align 1
  %conv81.380 = zext i8 %112 to i32
  %xor82.381 = xor i32 %conv81.380, %conv78.379
  %conv83.382 = trunc i32 %xor82.381 to i8
  store i8 %conv83.382, i8* %arrayidx80.3, align 1
  %scevgep20.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep20.1.3, align 1
  %conv78.1.3 = zext i8 %113 to i32
  %114 = load i8, i8* %arrayidx80.3, align 1
  %conv81.1.3 = zext i8 %114 to i32
  %xor82.1.3 = xor i32 %conv81.1.3, %conv78.1.3
  %conv83.1.3 = trunc i32 %xor82.1.3 to i8
  store i8 %conv83.1.3, i8* %arrayidx80.3, align 1
  %scevgep20.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 2
  %115 = load i8, i8* %scevgep20.2.3, align 1
  %conv78.2.3 = zext i8 %115 to i32
  %116 = load i8, i8* %arrayidx80.3, align 1
  %conv81.2.3 = zext i8 %116 to i32
  %xor82.2.3 = xor i32 %conv81.2.3, %conv78.2.3
  %conv83.2.3 = trunc i32 %xor82.2.3 to i8
  store i8 %conv83.2.3, i8* %arrayidx80.3, align 1
  %scevgep20.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 4
  %117 = load i8, i8* %scevgep20.4.3, align 1
  %conv78.4.3 = zext i8 %117 to i32
  %118 = load i8, i8* %arrayidx80.3, align 1
  %conv81.4.3 = zext i8 %118 to i32
  %xor82.4.3 = xor i32 %conv81.4.3, %conv78.4.3
  %conv83.4.3 = trunc i32 %xor82.4.3 to i8
  store i8 %conv83.4.3, i8* %arrayidx80.3, align 1
  %scevgep19.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 1, i64 0
  %119 = bitcast i8* %scevgep19.3 to [5 x [5 x i8]]*
  %arrayidx61.4 = getelementptr inbounds i8, i8* %a, i64 4
  %120 = load i8, i8* %arrayidx61.4, align 1
  %arrayidx63.4 = getelementptr inbounds i8, i8* %b, i64 4
  %121 = load i8, i8* %arrayidx63.4, align 1
  %call64.4 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121)
  %arrayidx66.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call64.4, i8* %arrayidx66.4, align 1
  %arrayidx80.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep20.487 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 0
  %122 = load i8, i8* %scevgep20.487, align 1
  %conv78.488 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx80.4, align 1
  %conv81.489 = zext i8 %123 to i32
  %xor82.490 = xor i32 %conv81.489, %conv78.488
  %conv83.491 = trunc i32 %xor82.490 to i8
  store i8 %conv83.491, i8* %arrayidx80.4, align 1
  %scevgep20.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 1
  %124 = load i8, i8* %scevgep20.1.4, align 1
  %conv78.1.4 = zext i8 %124 to i32
  %125 = load i8, i8* %arrayidx80.4, align 1
  %conv81.1.4 = zext i8 %125 to i32
  %xor82.1.4 = xor i32 %conv81.1.4, %conv78.1.4
  %conv83.1.4 = trunc i32 %xor82.1.4 to i8
  store i8 %conv83.1.4, i8* %arrayidx80.4, align 1
  %scevgep20.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 2
  %126 = load i8, i8* %scevgep20.2.4, align 1
  %conv78.2.4 = zext i8 %126 to i32
  %127 = load i8, i8* %arrayidx80.4, align 1
  %conv81.2.4 = zext i8 %127 to i32
  %xor82.2.4 = xor i32 %conv81.2.4, %conv78.2.4
  %conv83.2.4 = trunc i32 %xor82.2.4 to i8
  store i8 %conv83.2.4, i8* %arrayidx80.4, align 1
  %scevgep20.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 3
  %128 = load i8, i8* %scevgep20.3.4, align 1
  %conv78.3.4 = zext i8 %128 to i32
  %129 = load i8, i8* %arrayidx80.4, align 1
  %conv81.3.4 = zext i8 %129 to i32
  %xor82.3.4 = xor i32 %conv81.3.4, %conv78.3.4
  %conv83.3.4 = trunc i32 %xor82.3.4 to i8
  store i8 %conv83.3.4, i8* %arrayidx80.4, align 1
  %call90 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv91 = zext i8 %call90 to i32
  %130 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %131 = load i8, i8* %scevgep.1, align 1
  %conv.i.i123.1 = zext i8 %131 to i32
  %conv1.i.i124.1 = zext i8 %130 to i32
  %xor.i.i125.1 = xor i32 %conv1.i.i124.1, %conv.i.i123.1
  %conv2.i.i126.1 = trunc i32 %xor.i.i125.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %132 = load i8, i8* %scevgep.2, align 1
  %conv.i.i123.2 = zext i8 %132 to i32
  %conv1.i.i124.2 = zext i8 %conv2.i.i126.1 to i32
  %xor.i.i125.2 = xor i32 %conv1.i.i124.2, %conv.i.i123.2
  %conv2.i.i126.2 = trunc i32 %xor.i.i125.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %133 = load i8, i8* %scevgep.3, align 1
  %conv.i.i123.3 = zext i8 %133 to i32
  %conv1.i.i124.3 = zext i8 %conv2.i.i126.2 to i32
  %xor.i.i125.3 = xor i32 %conv1.i.i124.3, %conv.i.i123.3
  %conv2.i.i126.3 = trunc i32 %xor.i.i125.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %134 = load i8, i8* %scevgep.4, align 1
  %conv.i.i123.4 = zext i8 %134 to i32
  %conv1.i.i124.4 = zext i8 %conv2.i.i126.3 to i32
  %xor.i.i125.4 = xor i32 %conv1.i.i124.4, %conv.i.i123.4
  %conv2.i.i126.4 = trunc i32 %xor.i.i125.4 to i8
  %conv93 = zext i8 %conv2.i.i126.4 to i32
  %cmp94 = icmp eq i32 %conv91, %conv93
  call void @assert(i1 zeroext %cmp94)
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
