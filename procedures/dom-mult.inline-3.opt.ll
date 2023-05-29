; ModuleID = '../examples/dom-mult.inline-3.ll'
source_filename = "../examples/dom-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep55.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep55.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep55.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep55.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep55.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep55.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep51.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep51.1, align 1
  %conv.i.i106.1 = zext i8 %5 to i32
  %conv1.i.i107.1 = zext i8 %4 to i32
  %xor.i.i108.1 = xor i32 %conv1.i.i107.1, %conv.i.i106.1
  %conv2.i.i109.1 = trunc i32 %xor.i.i108.1 to i8
  %scevgep51.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep51.2, align 1
  %conv.i.i106.2 = zext i8 %6 to i32
  %conv1.i.i107.2 = zext i8 %conv2.i.i109.1 to i32
  %xor.i.i108.2 = xor i32 %conv1.i.i107.2, %conv.i.i106.2
  %conv2.i.i109.2 = trunc i32 %xor.i.i108.2 to i8
  %scevgep51.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep51.3, align 1
  %conv.i.i106.3 = zext i8 %7 to i32
  %conv1.i.i107.3 = zext i8 %conv2.i.i109.2 to i32
  %xor.i.i108.3 = xor i32 %conv1.i.i107.3, %conv.i.i106.3
  %conv2.i.i109.3 = trunc i32 %xor.i.i108.3 to i8
  %conv7 = zext i8 %conv2.i.i109.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [4 x [4 x i8]]*
  %scevgep32 = getelementptr i8, i8* %b, i64 1
  %scevgep40 = getelementptr i8, i8* %a, i64 1
  %call16 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep29, align 1
  %8 = load i8, i8* %a, align 1
  %9 = load i8, i8* %scevgep32, align 1
  %call23 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9)
  %conv24 = zext i8 %call23 to i32
  %scevgep30 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %10 = load i8, i8* %scevgep30, align 1
  %conv29 = zext i8 %10 to i32
  %xor = xor i32 %conv24, %conv29
  %conv30 = trunc i32 %xor to i8
  %scevgep38 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep39 = getelementptr i8, i8* %scevgep38, i64 1
  store i8 %conv30, i8* %scevgep39, align 1
  %11 = load i8, i8* %scevgep40, align 1
  %12 = load i8, i8* %b, align 1
  %call39 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12)
  %conv40 = zext i8 %call39 to i32
  %scevgep31 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %13 = load i8, i8* %scevgep31, align 1
  %conv45 = zext i8 %13 to i32
  %xor46 = xor i32 %conv40, %conv45
  %conv47 = trunc i32 %xor46 to i8
  %scevgep44 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep45 = getelementptr i8, i8* %scevgep44, i64 4
  store i8 %conv47, i8* %scevgep45, align 1
  %call16.184 = call zeroext i8 (...) @rand()
  %scevgep29.185 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  store i8 %call16.184, i8* %scevgep29.185, align 1
  %14 = load i8, i8* %a, align 1
  %scevgep35.1 = getelementptr i8, i8* %scevgep32, i64 1
  %15 = load i8, i8* %scevgep35.1, align 1
  %call23.186 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %conv24.187 = zext i8 %call23.186 to i32
  %scevgep30.188 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep30.188, align 1
  %conv29.189 = zext i8 %16 to i32
  %xor.190 = xor i32 %conv24.187, %conv29.189
  %conv30.191 = trunc i32 %xor.190 to i8
  %scevgep38.192 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 1
  %scevgep39.193 = getelementptr i8, i8* %scevgep38.192, i64 1
  store i8 %conv30.191, i8* %scevgep39.193, align 1
  %scevgep43.1 = getelementptr i8, i8* %scevgep40, i64 1
  %17 = load i8, i8* %scevgep43.1, align 1
  %18 = load i8, i8* %b, align 1
  %call39.194 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18)
  %conv40.195 = zext i8 %call39.194 to i32
  %scevgep31.196 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %19 = load i8, i8* %scevgep31.196, align 1
  %conv45.197 = zext i8 %19 to i32
  %xor46.198 = xor i32 %conv40.195, %conv45.197
  %conv47.199 = trunc i32 %xor46.198 to i8
  %scevgep44.1100 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 0
  %scevgep45.1101 = getelementptr i8, i8* %scevgep44.1100, i64 4
  store i8 %conv47.199, i8* %scevgep45.1101, align 1
  %call16.2103 = call zeroext i8 (...) @rand()
  %scevgep29.2104 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 2
  store i8 %call16.2103, i8* %scevgep29.2104, align 1
  %20 = load i8, i8* %a, align 1
  %scevgep35.2 = getelementptr i8, i8* %scevgep32, i64 2
  %21 = load i8, i8* %scevgep35.2, align 1
  %call23.2105 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %conv24.2106 = zext i8 %call23.2105 to i32
  %scevgep30.2107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 2
  %22 = load i8, i8* %scevgep30.2107, align 1
  %conv29.2108 = zext i8 %22 to i32
  %xor.2109 = xor i32 %conv24.2106, %conv29.2108
  %conv30.2110 = trunc i32 %xor.2109 to i8
  %scevgep38.2111 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 2
  %scevgep39.2112 = getelementptr i8, i8* %scevgep38.2111, i64 1
  store i8 %conv30.2110, i8* %scevgep39.2112, align 1
  %scevgep43.2 = getelementptr i8, i8* %scevgep40, i64 2
  %23 = load i8, i8* %scevgep43.2, align 1
  %24 = load i8, i8* %b, align 1
  %call39.2113 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24)
  %conv40.2114 = zext i8 %call39.2113 to i32
  %scevgep31.2115 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 0, i64 2
  %25 = load i8, i8* %scevgep31.2115, align 1
  %conv45.2116 = zext i8 %25 to i32
  %xor46.2117 = xor i32 %conv40.2114, %conv45.2116
  %conv47.2118 = trunc i32 %xor46.2117 to i8
  %scevgep44.2119 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 2, i64 0
  %scevgep45.2120 = getelementptr i8, i8* %scevgep44.2119, i64 4
  store i8 %conv47.2118, i8* %scevgep45.2120, align 1
  %scevgep26 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %26 = bitcast i8* %scevgep26 to [4 x [4 x i8]]*
  %scevgep34 = getelementptr i8, i8* %scevgep32, i64 1
  %scevgep37 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 1
  %27 = bitcast i8* %scevgep37 to [4 x [4 x i8]]*
  %scevgep42 = getelementptr i8, i8* %scevgep40, i64 1
  %arrayidx20.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx38.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %call16.1, i8* %scevgep29.1, align 1
  %28 = load i8, i8* %arrayidx20.1, align 1
  %29 = load i8, i8* %scevgep34, align 1
  %call23.1 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29)
  %conv24.1 = zext i8 %call23.1 to i32
  %scevgep30.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 0, i64 0
  %30 = load i8, i8* %scevgep30.1, align 1
  %conv29.1 = zext i8 %30 to i32
  %xor.1 = xor i32 %conv24.1, %conv29.1
  %conv30.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 0
  %scevgep39.1 = getelementptr i8, i8* %scevgep38.1, i64 1
  store i8 %conv30.1, i8* %scevgep39.1, align 1
  %31 = load i8, i8* %scevgep42, align 1
  %32 = load i8, i8* %arrayidx38.1, align 1
  %call39.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32)
  %conv40.1 = zext i8 %call39.1 to i32
  %scevgep31.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep31.1, align 1
  %conv45.1 = zext i8 %33 to i32
  %xor46.1 = xor i32 %conv40.1, %conv45.1
  %conv47.1 = trunc i32 %xor46.1 to i8
  %scevgep44.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 0
  %scevgep45.1 = getelementptr i8, i8* %scevgep44.1, i64 4
  store i8 %conv47.1, i8* %scevgep45.1, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep29.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep29.1.1, align 1
  %34 = load i8, i8* %arrayidx20.1, align 1
  %scevgep35.1.1 = getelementptr i8, i8* %scevgep34, i64 1
  %35 = load i8, i8* %scevgep35.1.1, align 1
  %call23.1.1 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %conv24.1.1 = zext i8 %call23.1.1 to i32
  %scevgep30.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 0, i64 1
  %36 = load i8, i8* %scevgep30.1.1, align 1
  %conv29.1.1 = zext i8 %36 to i32
  %xor.1.1 = xor i32 %conv24.1.1, %conv29.1.1
  %conv30.1.1 = trunc i32 %xor.1.1 to i8
  %scevgep38.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 1
  %scevgep39.1.1 = getelementptr i8, i8* %scevgep38.1.1, i64 1
  store i8 %conv30.1.1, i8* %scevgep39.1.1, align 1
  %scevgep43.1.1 = getelementptr i8, i8* %scevgep42, i64 1
  %37 = load i8, i8* %scevgep43.1.1, align 1
  %38 = load i8, i8* %arrayidx38.1, align 1
  %call39.1.1 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38)
  %conv40.1.1 = zext i8 %call39.1.1 to i32
  %scevgep31.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep31.1.1, align 1
  %conv45.1.1 = zext i8 %39 to i32
  %xor46.1.1 = xor i32 %conv40.1.1, %conv45.1.1
  %conv47.1.1 = trunc i32 %xor46.1.1 to i8
  %scevgep44.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 1, i64 0
  %scevgep45.1.1 = getelementptr i8, i8* %scevgep44.1.1, i64 4
  store i8 %conv47.1.1, i8* %scevgep45.1.1, align 1
  %scevgep26.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %26, i64 0, i64 1, i64 1
  %40 = bitcast i8* %scevgep26.1 to [4 x [4 x i8]]*
  %scevgep34.1 = getelementptr i8, i8* %scevgep34, i64 1
  %scevgep37.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 1, i64 1
  %41 = bitcast i8* %scevgep37.1 to [4 x [4 x i8]]*
  %scevgep42.1 = getelementptr i8, i8* %scevgep42, i64 1
  %arrayidx20.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx38.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep29.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 0
  store i8 %call16.2, i8* %scevgep29.2, align 1
  %42 = load i8, i8* %arrayidx20.2, align 1
  %43 = load i8, i8* %scevgep34.1, align 1
  %call23.2 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %conv24.2 = zext i8 %call23.2 to i32
  %scevgep30.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 0
  %44 = load i8, i8* %scevgep30.2, align 1
  %conv29.2 = zext i8 %44 to i32
  %xor.2 = xor i32 %conv24.2, %conv29.2
  %conv30.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 0
  %scevgep39.2 = getelementptr i8, i8* %scevgep38.2, i64 1
  store i8 %conv30.2, i8* %scevgep39.2, align 1
  %45 = load i8, i8* %scevgep42.1, align 1
  %46 = load i8, i8* %arrayidx38.2, align 1
  %call39.2 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46)
  %conv40.2 = zext i8 %call39.2 to i32
  %scevgep31.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep31.2, align 1
  %conv45.2 = zext i8 %47 to i32
  %xor46.2 = xor i32 %conv40.2, %conv45.2
  %conv47.2 = trunc i32 %xor46.2 to i8
  %scevgep44.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 0
  %scevgep45.2 = getelementptr i8, i8* %scevgep44.2, i64 4
  store i8 %conv47.2, i8* %scevgep45.2, align 1
  %48 = load i8, i8* %a, align 1
  %49 = load i8, i8* %b, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49)
  store i8 %call64, i8* %c, align 1
  %scevgep20.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 1
  %50 = load i8, i8* %scevgep20.1, align 1
  %conv78.1 = zext i8 %50 to i32
  %51 = load i8, i8* %c, align 1
  %conv81.1 = zext i8 %51 to i32
  %xor82.1 = xor i32 %conv81.1, %conv78.1
  %conv83.1 = trunc i32 %xor82.1 to i8
  store i8 %conv83.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 2
  %52 = load i8, i8* %scevgep20.2, align 1
  %conv78.2 = zext i8 %52 to i32
  %53 = load i8, i8* %c, align 1
  %conv81.2 = zext i8 %53 to i32
  %xor82.2 = xor i32 %conv81.2, %conv78.2
  %conv83.2 = trunc i32 %xor82.2 to i8
  store i8 %conv83.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 3
  %54 = load i8, i8* %scevgep20.3, align 1
  %conv78.3 = zext i8 %54 to i32
  %55 = load i8, i8* %c, align 1
  %conv81.3 = zext i8 %55 to i32
  %xor82.3 = xor i32 %conv81.3, %conv78.3
  %conv83.3 = trunc i32 %xor82.3 to i8
  store i8 %conv83.3, i8* %c, align 1
  %scevgep19 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 0
  %56 = bitcast i8* %scevgep19 to [4 x [4 x i8]]*
  %arrayidx61.1 = getelementptr inbounds i8, i8* %a, i64 1
  %57 = load i8, i8* %arrayidx61.1, align 1
  %arrayidx63.1 = getelementptr inbounds i8, i8* %b, i64 1
  %58 = load i8, i8* %arrayidx63.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58)
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call64.1, i8* %arrayidx66.1, align 1
  %arrayidx80.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.159 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 0
  %59 = load i8, i8* %scevgep20.159, align 1
  %conv78.160 = zext i8 %59 to i32
  %60 = load i8, i8* %arrayidx80.1, align 1
  %conv81.161 = zext i8 %60 to i32
  %xor82.162 = xor i32 %conv81.161, %conv78.160
  %conv83.163 = trunc i32 %xor82.162 to i8
  store i8 %conv83.163, i8* %arrayidx80.1, align 1
  %scevgep20.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep20.2.1, align 1
  %conv78.2.1 = zext i8 %61 to i32
  %62 = load i8, i8* %arrayidx80.1, align 1
  %conv81.2.1 = zext i8 %62 to i32
  %xor82.2.1 = xor i32 %conv81.2.1, %conv78.2.1
  %conv83.2.1 = trunc i32 %xor82.2.1 to i8
  store i8 %conv83.2.1, i8* %arrayidx80.1, align 1
  %scevgep20.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 3
  %63 = load i8, i8* %scevgep20.3.1, align 1
  %conv78.3.1 = zext i8 %63 to i32
  %64 = load i8, i8* %arrayidx80.1, align 1
  %conv81.3.1 = zext i8 %64 to i32
  %xor82.3.1 = xor i32 %conv81.3.1, %conv78.3.1
  %conv83.3.1 = trunc i32 %xor82.3.1 to i8
  store i8 %conv83.3.1, i8* %arrayidx80.1, align 1
  %scevgep19.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep19.1 to [4 x [4 x i8]]*
  %arrayidx61.2 = getelementptr inbounds i8, i8* %a, i64 2
  %66 = load i8, i8* %arrayidx61.2, align 1
  %arrayidx63.2 = getelementptr inbounds i8, i8* %b, i64 2
  %67 = load i8, i8* %arrayidx63.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %arrayidx66.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call64.2, i8* %arrayidx66.2, align 1
  %arrayidx80.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.268 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep20.268, align 1
  %conv78.269 = zext i8 %68 to i32
  %69 = load i8, i8* %arrayidx80.2, align 1
  %conv81.270 = zext i8 %69 to i32
  %xor82.271 = xor i32 %conv81.270, %conv78.269
  %conv83.272 = trunc i32 %xor82.271 to i8
  store i8 %conv83.272, i8* %arrayidx80.2, align 1
  %scevgep20.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 1
  %70 = load i8, i8* %scevgep20.1.2, align 1
  %conv78.1.2 = zext i8 %70 to i32
  %71 = load i8, i8* %arrayidx80.2, align 1
  %conv81.1.2 = zext i8 %71 to i32
  %xor82.1.2 = xor i32 %conv81.1.2, %conv78.1.2
  %conv83.1.2 = trunc i32 %xor82.1.2 to i8
  store i8 %conv83.1.2, i8* %arrayidx80.2, align 1
  %scevgep20.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 3
  %72 = load i8, i8* %scevgep20.3.2, align 1
  %conv78.3.2 = zext i8 %72 to i32
  %73 = load i8, i8* %arrayidx80.2, align 1
  %conv81.3.2 = zext i8 %73 to i32
  %xor82.3.2 = xor i32 %conv81.3.2, %conv78.3.2
  %conv83.3.2 = trunc i32 %xor82.3.2 to i8
  store i8 %conv83.3.2, i8* %arrayidx80.2, align 1
  %scevgep19.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 1, i64 0
  %74 = bitcast i8* %scevgep19.2 to [4 x [4 x i8]]*
  %arrayidx61.3 = getelementptr inbounds i8, i8* %a, i64 3
  %75 = load i8, i8* %arrayidx61.3, align 1
  %arrayidx63.3 = getelementptr inbounds i8, i8* %b, i64 3
  %76 = load i8, i8* %arrayidx63.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76)
  %arrayidx66.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call64.3, i8* %arrayidx66.3, align 1
  %arrayidx80.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.377 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep20.377, align 1
  %conv78.378 = zext i8 %77 to i32
  %78 = load i8, i8* %arrayidx80.3, align 1
  %conv81.379 = zext i8 %78 to i32
  %xor82.380 = xor i32 %conv81.379, %conv78.378
  %conv83.381 = trunc i32 %xor82.380 to i8
  store i8 %conv83.381, i8* %arrayidx80.3, align 1
  %scevgep20.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 0, i64 1
  %79 = load i8, i8* %scevgep20.1.3, align 1
  %conv78.1.3 = zext i8 %79 to i32
  %80 = load i8, i8* %arrayidx80.3, align 1
  %conv81.1.3 = zext i8 %80 to i32
  %xor82.1.3 = xor i32 %conv81.1.3, %conv78.1.3
  %conv83.1.3 = trunc i32 %xor82.1.3 to i8
  store i8 %conv83.1.3, i8* %arrayidx80.3, align 1
  %scevgep20.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep20.2.3, align 1
  %conv78.2.3 = zext i8 %81 to i32
  %82 = load i8, i8* %arrayidx80.3, align 1
  %conv81.2.3 = zext i8 %82 to i32
  %xor82.2.3 = xor i32 %conv81.2.3, %conv78.2.3
  %conv83.2.3 = trunc i32 %xor82.2.3 to i8
  store i8 %conv83.2.3, i8* %arrayidx80.3, align 1
  %call90 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv91 = zext i8 %call90 to i32
  %83 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %84 = load i8, i8* %scevgep.1, align 1
  %conv.i.i123.1 = zext i8 %84 to i32
  %conv1.i.i124.1 = zext i8 %83 to i32
  %xor.i.i125.1 = xor i32 %conv1.i.i124.1, %conv.i.i123.1
  %conv2.i.i126.1 = trunc i32 %xor.i.i125.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %85 = load i8, i8* %scevgep.2, align 1
  %conv.i.i123.2 = zext i8 %85 to i32
  %conv1.i.i124.2 = zext i8 %conv2.i.i126.1 to i32
  %xor.i.i125.2 = xor i32 %conv1.i.i124.2, %conv.i.i123.2
  %conv2.i.i126.2 = trunc i32 %xor.i.i125.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %86 = load i8, i8* %scevgep.3, align 1
  %conv.i.i123.3 = zext i8 %86 to i32
  %conv1.i.i124.3 = zext i8 %conv2.i.i126.2 to i32
  %xor.i.i125.3 = xor i32 %conv1.i.i124.3, %conv.i.i123.3
  %conv2.i.i126.3 = trunc i32 %xor.i.i125.3 to i8
  %conv93 = zext i8 %conv2.i.i126.3 to i32
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
