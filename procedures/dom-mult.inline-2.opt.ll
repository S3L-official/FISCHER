; ModuleID = '../examples/dom-mult.inline-2.ll'
source_filename = "../examples/dom-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep52.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep52.1, align 1
  %conv.i.i106.1 = zext i8 %4 to i32
  %conv1.i.i107.1 = zext i8 %3 to i32
  %xor.i.i108.1 = xor i32 %conv1.i.i107.1, %conv.i.i106.1
  %conv2.i.i109.1 = trunc i32 %xor.i.i108.1 to i8
  %scevgep52.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep52.2, align 1
  %conv.i.i106.2 = zext i8 %5 to i32
  %conv1.i.i107.2 = zext i8 %conv2.i.i109.1 to i32
  %xor.i.i108.2 = xor i32 %conv1.i.i107.2, %conv.i.i106.2
  %conv2.i.i109.2 = trunc i32 %xor.i.i108.2 to i8
  %conv7 = zext i8 %conv2.i.i109.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [3 x [3 x i8]]*
  %scevgep32 = getelementptr i8, i8* %b, i64 1
  %scevgep40 = getelementptr i8, i8* %a, i64 1
  %call16 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep29, align 1
  %6 = load i8, i8* %a, align 1
  %7 = load i8, i8* %scevgep32, align 1
  %call23 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %conv24 = zext i8 %call23 to i32
  %scevgep30 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %8 = load i8, i8* %scevgep30, align 1
  %conv29 = zext i8 %8 to i32
  %xor = xor i32 %conv24, %conv29
  %conv30 = trunc i32 %xor to i8
  %scevgep38 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep39 = getelementptr i8, i8* %scevgep38, i64 1
  store i8 %conv30, i8* %scevgep39, align 1
  %9 = load i8, i8* %scevgep40, align 1
  %10 = load i8, i8* %b, align 1
  %call39 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %conv40 = zext i8 %call39 to i32
  %scevgep31 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %11 = load i8, i8* %scevgep31, align 1
  %conv45 = zext i8 %11 to i32
  %xor46 = xor i32 %conv40, %conv45
  %conv47 = trunc i32 %xor46 to i8
  %scevgep46 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 3
  store i8 %conv47, i8* %scevgep46, align 1
  %call16.176 = call zeroext i8 (...) @rand()
  %scevgep29.177 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  store i8 %call16.176, i8* %scevgep29.177, align 1
  %12 = load i8, i8* %a, align 1
  %scevgep35.178 = getelementptr i8, i8* %scevgep32, i64 1
  %13 = load i8, i8* %scevgep35.178, align 1
  %call23.179 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %conv24.180 = zext i8 %call23.179 to i32
  %scevgep30.181 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep30.181, align 1
  %conv29.182 = zext i8 %14 to i32
  %xor.183 = xor i32 %conv24.180, %conv29.182
  %conv30.184 = trunc i32 %xor.183 to i8
  %scevgep38.185 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 1
  %scevgep39.186 = getelementptr i8, i8* %scevgep38.185, i64 1
  store i8 %conv30.184, i8* %scevgep39.186, align 1
  %scevgep43.187 = getelementptr i8, i8* %scevgep40, i64 1
  %15 = load i8, i8* %scevgep43.187, align 1
  %16 = load i8, i8* %b, align 1
  %call39.188 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16)
  %conv40.189 = zext i8 %call39.188 to i32
  %scevgep31.190 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %17 = load i8, i8* %scevgep31.190, align 1
  %conv45.191 = zext i8 %17 to i32
  %xor46.192 = xor i32 %conv40.189, %conv45.191
  %conv47.193 = trunc i32 %xor46.192 to i8
  %scevgep46.194 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 6
  store i8 %conv47.193, i8* %scevgep46.194, align 1
  %scevgep26 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %18 = bitcast i8* %scevgep26 to [3 x [3 x i8]]*
  %scevgep34 = getelementptr i8, i8* %scevgep32, i64 1
  %scevgep37 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 1, i64 1
  %19 = bitcast i8* %scevgep37 to [3 x [3 x i8]]*
  %scevgep42 = getelementptr i8, i8* %scevgep40, i64 1
  %arrayidx20.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx38.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep29.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %18, i64 0, i64 0, i64 0
  store i8 %call16.1, i8* %scevgep29.1, align 1
  %20 = load i8, i8* %arrayidx20.1, align 1
  %21 = load i8, i8* %scevgep34, align 1
  %call23.1 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %conv24.1 = zext i8 %call23.1 to i32
  %scevgep30.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %18, i64 0, i64 0, i64 0
  %22 = load i8, i8* %scevgep30.1, align 1
  %conv29.1 = zext i8 %22 to i32
  %xor.1 = xor i32 %conv24.1, %conv29.1
  %conv30.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 0
  %scevgep39.1 = getelementptr i8, i8* %scevgep38.1, i64 1
  store i8 %conv30.1, i8* %scevgep39.1, align 1
  %23 = load i8, i8* %scevgep42, align 1
  %24 = load i8, i8* %arrayidx38.1, align 1
  %call39.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24)
  %conv40.1 = zext i8 %call39.1 to i32
  %scevgep31.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %18, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep31.1, align 1
  %conv45.1 = zext i8 %25 to i32
  %xor46.1 = xor i32 %conv40.1, %conv45.1
  %conv47.1 = trunc i32 %xor46.1 to i8
  %scevgep46.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 3
  store i8 %conv47.1, i8* %scevgep46.1, align 1
  %26 = load i8, i8* %a, align 1
  %27 = load i8, i8* %b, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  store i8 %call64, i8* %c, align 1
  %scevgep20.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep20.1, align 1
  %conv78.1 = zext i8 %28 to i32
  %29 = load i8, i8* %c, align 1
  %conv81.1 = zext i8 %29 to i32
  %xor82.1 = xor i32 %conv81.1, %conv78.1
  %conv83.1 = trunc i32 %xor82.1 to i8
  store i8 %conv83.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 2
  %30 = load i8, i8* %scevgep20.2, align 1
  %conv78.2 = zext i8 %30 to i32
  %31 = load i8, i8* %c, align 1
  %conv81.2 = zext i8 %31 to i32
  %xor82.2 = xor i32 %conv81.2, %conv78.2
  %conv83.2 = trunc i32 %xor82.2 to i8
  store i8 %conv83.2, i8* %c, align 1
  %scevgep19 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep19 to [3 x [3 x i8]]*
  %arrayidx61.1 = getelementptr inbounds i8, i8* %a, i64 1
  %33 = load i8, i8* %arrayidx61.1, align 1
  %arrayidx63.1 = getelementptr inbounds i8, i8* %b, i64 1
  %34 = load i8, i8* %arrayidx63.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34)
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call64.1, i8* %arrayidx66.1, align 1
  %arrayidx80.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.160 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep20.160, align 1
  %conv78.161 = zext i8 %35 to i32
  %36 = load i8, i8* %arrayidx80.1, align 1
  %conv81.162 = zext i8 %36 to i32
  %xor82.163 = xor i32 %conv81.162, %conv78.161
  %conv83.164 = trunc i32 %xor82.163 to i8
  store i8 %conv83.164, i8* %arrayidx80.1, align 1
  %scevgep20.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep20.2.1, align 1
  %conv78.2.1 = zext i8 %37 to i32
  %38 = load i8, i8* %arrayidx80.1, align 1
  %conv81.2.1 = zext i8 %38 to i32
  %xor82.2.1 = xor i32 %conv81.2.1, %conv78.2.1
  %conv83.2.1 = trunc i32 %xor82.2.1 to i8
  store i8 %conv83.2.1, i8* %arrayidx80.1, align 1
  %scevgep19.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %32, i64 0, i64 1, i64 0
  %39 = bitcast i8* %scevgep19.1 to [3 x [3 x i8]]*
  %arrayidx61.2 = getelementptr inbounds i8, i8* %a, i64 2
  %40 = load i8, i8* %arrayidx61.2, align 1
  %arrayidx63.2 = getelementptr inbounds i8, i8* %b, i64 2
  %41 = load i8, i8* %arrayidx63.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  %arrayidx66.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call64.2, i8* %arrayidx66.2, align 1
  %arrayidx80.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.269 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 0
  %42 = load i8, i8* %scevgep20.269, align 1
  %conv78.270 = zext i8 %42 to i32
  %43 = load i8, i8* %arrayidx80.2, align 1
  %conv81.271 = zext i8 %43 to i32
  %xor82.272 = xor i32 %conv81.271, %conv78.270
  %conv83.273 = trunc i32 %xor82.272 to i8
  store i8 %conv83.273, i8* %arrayidx80.2, align 1
  %scevgep20.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 1
  %44 = load i8, i8* %scevgep20.1.2, align 1
  %conv78.1.2 = zext i8 %44 to i32
  %45 = load i8, i8* %arrayidx80.2, align 1
  %conv81.1.2 = zext i8 %45 to i32
  %xor82.1.2 = xor i32 %conv81.1.2, %conv78.1.2
  %conv83.1.2 = trunc i32 %xor82.1.2 to i8
  store i8 %conv83.1.2, i8* %arrayidx80.2, align 1
  %call90 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv91 = zext i8 %call90 to i32
  %46 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %47 = load i8, i8* %scevgep.1, align 1
  %conv.i.i123.1 = zext i8 %47 to i32
  %conv1.i.i124.1 = zext i8 %46 to i32
  %xor.i.i125.1 = xor i32 %conv1.i.i124.1, %conv.i.i123.1
  %conv2.i.i126.1 = trunc i32 %xor.i.i125.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %48 = load i8, i8* %scevgep.2, align 1
  %conv.i.i123.2 = zext i8 %48 to i32
  %conv1.i.i124.2 = zext i8 %conv2.i.i126.1 to i32
  %xor.i.i125.2 = xor i32 %conv1.i.i124.2, %conv.i.i123.2
  %conv2.i.i126.2 = trunc i32 %xor.i.i125.2 to i8
  %conv93 = zext i8 %conv2.i.i126.2 to i32
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
