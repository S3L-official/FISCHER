; ModuleID = '../examples/belaid-eurocrypto2016.inline-4.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [36 x i8] c"../examples/belaid-eurocrypto2016.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %alpha = alloca [5 x [5 x i8]], align 16
  %t = alloca [5 x [5 x i8]], align 16
  %r = alloca [5 x [5 x i8]], align 16
  %rr = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep48.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep48.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep48.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep48.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep48.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep48.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep48.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep48.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep44.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep44.1, align 1
  %conv.i.i218.1 = zext i8 %6 to i32
  %conv1.i.i219.1 = zext i8 %5 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep44.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep44.2, align 1
  %conv.i.i218.2 = zext i8 %7 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep44.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep44.3, align 1
  %conv.i.i218.3 = zext i8 %8 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %scevgep44.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep44.4, align 1
  %conv.i.i218.4 = zext i8 %9 to i32
  %conv1.i.i219.4 = zext i8 %conv2.i.i221.3 to i32
  %xor.i.i220.4 = xor i32 %conv1.i.i219.4, %conv.i.i218.4
  %conv2.i.i221.4 = trunc i32 %xor.i.i220.4 to i8
  %conv7 = zext i8 %conv2.i.i221.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %10 = load i8, i8* %a, align 1
  %11 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11)
  %scevgep40 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep40, align 1
  %12 = load i8, i8* %a, align 1
  %scevgep37.1 = getelementptr i8, i8* %b, i64 1
  %13 = load i8, i8* %scevgep37.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %scevgep40.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep40.1, align 1
  %14 = load i8, i8* %a, align 1
  %scevgep37.2 = getelementptr i8, i8* %b, i64 2
  %15 = load i8, i8* %scevgep37.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %scevgep40.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep40.2, align 1
  %16 = load i8, i8* %a, align 1
  %scevgep37.3 = getelementptr i8, i8* %b, i64 3
  %17 = load i8, i8* %scevgep37.3, align 1
  %call18.3 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17)
  %scevgep40.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0, i64 3
  store i8 %call18.3, i8* %scevgep40.3, align 1
  %18 = load i8, i8* %a, align 1
  %scevgep37.4 = getelementptr i8, i8* %b, i64 4
  %19 = load i8, i8* %scevgep37.4, align 1
  %call18.4 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19)
  %scevgep40.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0, i64 4
  store i8 %call18.4, i8* %scevgep40.4, align 1
  %scevgep39 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 1, i64 0
  %20 = bitcast i8* %scevgep39 to [5 x [5 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %21 = load i8, i8* %arrayidx.1, align 1
  %22 = load i8, i8* %b, align 1
  %call18.150 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  %scevgep40.151 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %20, i64 0, i64 0, i64 0
  store i8 %call18.150, i8* %scevgep40.151, align 1
  %23 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.1.1 = getelementptr i8, i8* %b, i64 1
  %24 = load i8, i8* %scevgep37.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24)
  %scevgep40.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %20, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep40.1.1, align 1
  %25 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.2.1 = getelementptr i8, i8* %b, i64 2
  %26 = load i8, i8* %scevgep37.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  %scevgep40.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %20, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep40.2.1, align 1
  %27 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.3.1 = getelementptr i8, i8* %b, i64 3
  %28 = load i8, i8* %scevgep37.3.1, align 1
  %call18.3.1 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %scevgep40.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %20, i64 0, i64 0, i64 3
  store i8 %call18.3.1, i8* %scevgep40.3.1, align 1
  %29 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.4.1 = getelementptr i8, i8* %b, i64 4
  %30 = load i8, i8* %scevgep37.4.1, align 1
  %call18.4.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30)
  %scevgep40.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %20, i64 0, i64 0, i64 4
  store i8 %call18.4.1, i8* %scevgep40.4.1, align 1
  %scevgep39.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %20, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep39.1 to [5 x [5 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %32 = load i8, i8* %arrayidx.2, align 1
  %33 = load i8, i8* %b, align 1
  %call18.253 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %scevgep40.254 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 0
  store i8 %call18.253, i8* %scevgep40.254, align 1
  %34 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.1.2 = getelementptr i8, i8* %b, i64 1
  %35 = load i8, i8* %scevgep37.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %scevgep40.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep40.1.2, align 1
  %36 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.2.2 = getelementptr i8, i8* %b, i64 2
  %37 = load i8, i8* %scevgep37.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %scevgep40.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep40.2.2, align 1
  %38 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.3.2 = getelementptr i8, i8* %b, i64 3
  %39 = load i8, i8* %scevgep37.3.2, align 1
  %call18.3.2 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %scevgep40.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 3
  store i8 %call18.3.2, i8* %scevgep40.3.2, align 1
  %40 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.4.2 = getelementptr i8, i8* %b, i64 4
  %41 = load i8, i8* %scevgep37.4.2, align 1
  %call18.4.2 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  %scevgep40.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 4
  store i8 %call18.4.2, i8* %scevgep40.4.2, align 1
  %scevgep39.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep39.2 to [5 x [5 x i8]]*
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3
  %43 = load i8, i8* %arrayidx.3, align 1
  %44 = load i8, i8* %b, align 1
  %call18.356 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44)
  %scevgep40.357 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 0
  store i8 %call18.356, i8* %scevgep40.357, align 1
  %45 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.1.3 = getelementptr i8, i8* %b, i64 1
  %46 = load i8, i8* %scevgep37.1.3, align 1
  %call18.1.3 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46)
  %scevgep40.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 1
  store i8 %call18.1.3, i8* %scevgep40.1.3, align 1
  %47 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.2.3 = getelementptr i8, i8* %b, i64 2
  %48 = load i8, i8* %scevgep37.2.3, align 1
  %call18.2.3 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48)
  %scevgep40.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 2
  store i8 %call18.2.3, i8* %scevgep40.2.3, align 1
  %49 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.3.3 = getelementptr i8, i8* %b, i64 3
  %50 = load i8, i8* %scevgep37.3.3, align 1
  %call18.3.3 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %scevgep40.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 3
  store i8 %call18.3.3, i8* %scevgep40.3.3, align 1
  %51 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.4.3 = getelementptr i8, i8* %b, i64 4
  %52 = load i8, i8* %scevgep37.4.3, align 1
  %call18.4.3 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %scevgep40.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 4
  store i8 %call18.4.3, i8* %scevgep40.4.3, align 1
  %scevgep39.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep39.3 to [5 x [5 x i8]]*
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 4
  %54 = load i8, i8* %arrayidx.4, align 1
  %55 = load i8, i8* %b, align 1
  %call18.459 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55)
  %scevgep40.460 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 0, i64 0
  store i8 %call18.459, i8* %scevgep40.460, align 1
  %56 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.1.4 = getelementptr i8, i8* %b, i64 1
  %57 = load i8, i8* %scevgep37.1.4, align 1
  %call18.1.4 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57)
  %scevgep40.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 0, i64 1
  store i8 %call18.1.4, i8* %scevgep40.1.4, align 1
  %58 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.2.4 = getelementptr i8, i8* %b, i64 2
  %59 = load i8, i8* %scevgep37.2.4, align 1
  %call18.2.4 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %scevgep40.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 0, i64 2
  store i8 %call18.2.4, i8* %scevgep40.2.4, align 1
  %60 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.3.4 = getelementptr i8, i8* %b, i64 3
  %61 = load i8, i8* %scevgep37.3.4, align 1
  %call18.3.4 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61)
  %scevgep40.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 0, i64 3
  store i8 %call18.3.4, i8* %scevgep40.3.4, align 1
  %62 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.4.4 = getelementptr i8, i8* %b, i64 4
  %63 = load i8, i8* %scevgep37.4.4, align 1
  %call18.4.4 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63)
  %scevgep40.4.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 0, i64 4
  store i8 %call18.4.4, i8* %scevgep40.4.4, align 1
  %scevgep28 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  %scevgep2829 = bitcast i8* %scevgep28 to [5 x [5 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep28, align 1
  %scevgep33 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2829, i64 0, i64 0, i64 -2
  %call37.1108 = call zeroext i8 (...) @rand()
  store i8 %call37.1108, i8* %scevgep33, align 1
  %scevgep31 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2829, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep31 to [5 x [5 x i8]]*
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep31, align 1
  %scevgep33.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 -2
  %call37.1.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1.1, i8* %scevgep33.1, align 1
  %scevgep31.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep31.1 to [5 x [5 x i8]]*
  %call37.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2, i8* %scevgep31.1, align 1
  %scevgep31.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 1, i64 0
  %call37.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3, i8* %scevgep31.2, align 1
  %call53 = call zeroext i8 (...) @rand()
  %scevgep26 = getelementptr [5 x i8], [5 x i8]* %rr, i64 0, i64 3
  store i8 %call53, i8* %scevgep26, align 1
  %call53.1 = call zeroext i8 (...) @rand()
  %scevgep26.1 = getelementptr [5 x i8], [5 x i8]* %rr, i64 0, i64 1
  store i8 %call53.1, i8* %scevgep26.1, align 1
  %arrayidx65 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx65, i64 0, i64 0
  %66 = load i8, i8* %arrayidx67, align 1
  store i8 %66, i8* %c, align 1
  %arrayidx77 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 0
  %arrayidx117 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx77, i64 0, i64 4
  %67 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %67 to i32
  %arrayidx84 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx82, i64 0, i64 4
  %68 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %68 to i32
  %xor = xor i32 %conv80, %conv85
  %arrayidx87 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 4
  %arrayidx89 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx87, i64 0, i64 0
  %69 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %69 to i32
  %xor91 = xor i32 %xor, %conv90
  %arrayidx94 = getelementptr inbounds [5 x i8], [5 x i8]* %rr, i64 0, i64 3
  %70 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %70 to i32
  %xor96 = xor i32 %xor91, %conv95
  %arrayidx101 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx98, i64 0, i64 3
  %71 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %71 to i32
  %xor103 = xor i32 %xor96, %conv102
  %arrayidx106 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 3
  %arrayidx108 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx106, i64 0, i64 0
  %72 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %72 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %arrayidx115 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx113, i64 0, i64 4
  store i8 %conv111, i8* %arrayidx115, align 1
  %arrayidx119 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx117, i64 0, i64 4
  %73 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %73 to i32
  %74 = load i8, i8* %c, align 1
  %conv123 = zext i8 %74 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %arrayidx79.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx77, i64 0, i64 2
  %75 = load i8, i8* %arrayidx79.1, align 1
  %conv80.1 = zext i8 %75 to i32
  %arrayidx84.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx82, i64 0, i64 2
  %76 = load i8, i8* %arrayidx84.1, align 1
  %conv85.1 = zext i8 %76 to i32
  %xor.1 = xor i32 %conv80.1, %conv85.1
  %arrayidx87.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 2
  %arrayidx89.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx87.1, i64 0, i64 0
  %77 = load i8, i8* %arrayidx89.1, align 1
  %conv90.1 = zext i8 %77 to i32
  %xor91.1 = xor i32 %xor.1, %conv90.1
  %arrayidx94.1 = getelementptr inbounds [5 x i8], [5 x i8]* %rr, i64 0, i64 1
  %78 = load i8, i8* %arrayidx94.1, align 1
  %conv95.1 = zext i8 %78 to i32
  %xor96.1 = xor i32 %xor91.1, %conv95.1
  %arrayidx101.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx98, i64 0, i64 1
  %79 = load i8, i8* %arrayidx101.1, align 1
  %conv102.1 = zext i8 %79 to i32
  %xor103.1 = xor i32 %xor96.1, %conv102.1
  %arrayidx106.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 1
  %arrayidx108.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx106.1, i64 0, i64 0
  %80 = load i8, i8* %arrayidx108.1, align 1
  %conv109.1 = zext i8 %80 to i32
  %xor110.1 = xor i32 %xor103.1, %conv109.1
  %conv111.1 = trunc i32 %xor110.1 to i8
  %arrayidx115.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx113, i64 0, i64 2
  store i8 %conv111.1, i8* %arrayidx115.1, align 1
  %arrayidx119.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx117, i64 0, i64 2
  %81 = load i8, i8* %arrayidx119.1, align 1
  %conv120.1 = zext i8 %81 to i32
  %82 = load i8, i8* %c, align 1
  %conv123.1 = zext i8 %82 to i32
  %xor124.1 = xor i32 %conv123.1, %conv120.1
  %conv125.1 = trunc i32 %xor124.1 to i8
  store i8 %conv125.1, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx65.1, i64 0, i64 1
  %83 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %83, i8* %arrayidx69.1, align 1
  %arrayidx77.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1
  %arrayidx82.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 1
  %arrayidx98.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 1
  %arrayidx113.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 1
  %arrayidx117.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 1
  %arrayidx122.1 = getelementptr inbounds i8, i8* %c, i64 1
  %arrayidx79.168 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx77.1, i64 0, i64 4
  %84 = load i8, i8* %arrayidx79.168, align 1
  %conv80.169 = zext i8 %84 to i32
  %arrayidx84.170 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx82.1, i64 0, i64 4
  %85 = load i8, i8* %arrayidx84.170, align 1
  %conv85.171 = zext i8 %85 to i32
  %xor.172 = xor i32 %conv80.169, %conv85.171
  %arrayidx87.173 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 4
  %arrayidx89.174 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx87.173, i64 0, i64 1
  %86 = load i8, i8* %arrayidx89.174, align 1
  %conv90.175 = zext i8 %86 to i32
  %xor91.176 = xor i32 %xor.172, %conv90.175
  %arrayidx94.177 = getelementptr inbounds [5 x i8], [5 x i8]* %rr, i64 0, i64 3
  %87 = load i8, i8* %arrayidx94.177, align 1
  %conv95.178 = zext i8 %87 to i32
  %xor96.179 = xor i32 %xor91.176, %conv95.178
  %arrayidx101.180 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx98.1, i64 0, i64 3
  %88 = load i8, i8* %arrayidx101.180, align 1
  %conv102.181 = zext i8 %88 to i32
  %xor103.182 = xor i32 %xor96.179, %conv102.181
  %arrayidx106.183 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 3
  %arrayidx108.184 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx106.183, i64 0, i64 1
  %89 = load i8, i8* %arrayidx108.184, align 1
  %conv109.185 = zext i8 %89 to i32
  %xor110.186 = xor i32 %xor103.182, %conv109.185
  %conv111.187 = trunc i32 %xor110.186 to i8
  %arrayidx115.188 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx113.1, i64 0, i64 4
  store i8 %conv111.187, i8* %arrayidx115.188, align 1
  %arrayidx119.189 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx117.1, i64 0, i64 4
  %90 = load i8, i8* %arrayidx119.189, align 1
  %conv120.190 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx122.1, align 1
  %conv123.191 = zext i8 %91 to i32
  %xor124.192 = xor i32 %conv123.191, %conv120.190
  %conv125.193 = trunc i32 %xor124.192 to i8
  store i8 %conv125.193, i8* %arrayidx122.1, align 1
  %arrayidx132.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1
  %arrayidx135.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx132.1, i64 0, i64 2
  %92 = load i8, i8* %arrayidx135.1, align 1
  %conv136.1 = zext i8 %92 to i32
  %arrayidx138.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 1
  %arrayidx141.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx138.1, i64 0, i64 2
  %93 = load i8, i8* %arrayidx141.1, align 1
  %conv142.1 = zext i8 %93 to i32
  %xor143.1 = xor i32 %conv136.1, %conv142.1
  %arrayidx146.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 2
  %arrayidx148.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx146.1, i64 0, i64 1
  %94 = load i8, i8* %arrayidx148.1, align 1
  %conv149.1 = zext i8 %94 to i32
  %xor150.1 = xor i32 %xor143.1, %conv149.1
  %conv151.1 = trunc i32 %xor150.1 to i8
  %arrayidx153.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 1
  %arrayidx156.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx153.1, i64 0, i64 2
  store i8 %conv151.1, i8* %arrayidx156.1, align 1
  %arrayidx158.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 1
  %arrayidx161.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx158.1, i64 0, i64 2
  %95 = load i8, i8* %arrayidx161.1, align 1
  %conv162.1 = zext i8 %95 to i32
  %arrayidx164.1 = getelementptr inbounds i8, i8* %c, i64 1
  %96 = load i8, i8* %arrayidx164.1, align 1
  %conv165.1 = zext i8 %96 to i32
  %xor166.1 = xor i32 %conv165.1, %conv162.1
  %conv167.1 = trunc i32 %xor166.1 to i8
  store i8 %conv167.1, i8* %arrayidx164.1, align 1
  %arrayidx173.1 = getelementptr inbounds [5 x i8], [5 x i8]* %rr, i64 0, i64 1
  %97 = load i8, i8* %arrayidx173.1, align 1
  %conv174.1 = zext i8 %97 to i32
  %arrayidx176.1 = getelementptr inbounds i8, i8* %c, i64 1
  %98 = load i8, i8* %arrayidx176.1, align 1
  %conv177.1 = zext i8 %98 to i32
  %xor178.1 = xor i32 %conv177.1, %conv174.1
  %conv179.1 = trunc i32 %xor178.1 to i8
  store i8 %conv179.1, i8* %arrayidx176.1, align 1
  %arrayidx65.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx65.2, i64 0, i64 2
  %99 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %99, i8* %arrayidx69.2, align 1
  %arrayidx77.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 2
  %arrayidx82.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 2
  %arrayidx98.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 2
  %arrayidx113.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 2
  %arrayidx117.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 2
  %arrayidx122.2 = getelementptr inbounds i8, i8* %c, i64 2
  %arrayidx79.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx77.2, i64 0, i64 4
  %100 = load i8, i8* %arrayidx79.2, align 1
  %conv80.2 = zext i8 %100 to i32
  %arrayidx84.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx82.2, i64 0, i64 4
  %101 = load i8, i8* %arrayidx84.2, align 1
  %conv85.2 = zext i8 %101 to i32
  %xor.2 = xor i32 %conv80.2, %conv85.2
  %arrayidx87.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 4
  %arrayidx89.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx87.2, i64 0, i64 2
  %102 = load i8, i8* %arrayidx89.2, align 1
  %conv90.2 = zext i8 %102 to i32
  %xor91.2 = xor i32 %xor.2, %conv90.2
  %arrayidx94.2 = getelementptr inbounds [5 x i8], [5 x i8]* %rr, i64 0, i64 3
  %103 = load i8, i8* %arrayidx94.2, align 1
  %conv95.2 = zext i8 %103 to i32
  %xor96.2 = xor i32 %xor91.2, %conv95.2
  %arrayidx101.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx98.2, i64 0, i64 3
  %104 = load i8, i8* %arrayidx101.2, align 1
  %conv102.2 = zext i8 %104 to i32
  %xor103.2 = xor i32 %xor96.2, %conv102.2
  %arrayidx106.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 3
  %arrayidx108.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx106.2, i64 0, i64 2
  %105 = load i8, i8* %arrayidx108.2, align 1
  %conv109.2 = zext i8 %105 to i32
  %xor110.2 = xor i32 %xor103.2, %conv109.2
  %conv111.2 = trunc i32 %xor110.2 to i8
  %arrayidx115.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx113.2, i64 0, i64 4
  store i8 %conv111.2, i8* %arrayidx115.2, align 1
  %arrayidx119.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx117.2, i64 0, i64 4
  %106 = load i8, i8* %arrayidx119.2, align 1
  %conv120.2 = zext i8 %106 to i32
  %107 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2 = zext i8 %107 to i32
  %xor124.2 = xor i32 %conv123.2, %conv120.2
  %conv125.2 = trunc i32 %xor124.2 to i8
  store i8 %conv125.2, i8* %arrayidx122.2, align 1
  %arrayidx192.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep19.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 2
  %scevgep1920.2 = bitcast i8* %scevgep19.2 to [5 x [5 x i8]]*
  %lsr.iv2123.2 = bitcast [5 x [5 x i8]]* %scevgep1920.2 to i8*
  %108 = load i8, i8* %lsr.iv2123.2, align 1
  %conv190.2 = zext i8 %108 to i32
  %109 = load i8, i8* %arrayidx192.2, align 1
  %conv193.2 = zext i8 %109 to i32
  %xor194.2 = xor i32 %conv193.2, %conv190.2
  %conv195.2 = trunc i32 %xor194.2 to i8
  store i8 %conv195.2, i8* %arrayidx192.2, align 1
  %scevgep22.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1920.2, i64 0, i64 -1, i64 0
  %110 = load i8, i8* %scevgep22.2, align 1
  %conv190.1.2 = zext i8 %110 to i32
  %111 = load i8, i8* %arrayidx192.2, align 1
  %conv193.1.2 = zext i8 %111 to i32
  %xor194.1.2 = xor i32 %conv193.1.2, %conv190.1.2
  %conv195.1.2 = trunc i32 %xor194.1.2 to i8
  store i8 %conv195.1.2, i8* %arrayidx192.2, align 1
  %arrayidx65.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 3
  %arrayidx67.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx65.3, i64 0, i64 3
  %112 = load i8, i8* %arrayidx67.3, align 1
  %arrayidx69.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %112, i8* %arrayidx69.3, align 1
  %arrayidx132.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 3
  %arrayidx135.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx132.3, i64 0, i64 4
  %113 = load i8, i8* %arrayidx135.3, align 1
  %conv136.3 = zext i8 %113 to i32
  %arrayidx138.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 3
  %arrayidx141.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx138.3, i64 0, i64 4
  %114 = load i8, i8* %arrayidx141.3, align 1
  %conv142.3 = zext i8 %114 to i32
  %xor143.3 = xor i32 %conv136.3, %conv142.3
  %arrayidx146.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 4
  %arrayidx148.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx146.3, i64 0, i64 3
  %115 = load i8, i8* %arrayidx148.3, align 1
  %conv149.3 = zext i8 %115 to i32
  %xor150.3 = xor i32 %xor143.3, %conv149.3
  %conv151.3 = trunc i32 %xor150.3 to i8
  %arrayidx153.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 3
  %arrayidx156.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx153.3, i64 0, i64 4
  store i8 %conv151.3, i8* %arrayidx156.3, align 1
  %arrayidx158.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %t, i64 0, i64 3
  %arrayidx161.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx158.3, i64 0, i64 4
  %116 = load i8, i8* %arrayidx161.3, align 1
  %conv162.3 = zext i8 %116 to i32
  %arrayidx164.3 = getelementptr inbounds i8, i8* %c, i64 3
  %117 = load i8, i8* %arrayidx164.3, align 1
  %conv165.3 = zext i8 %117 to i32
  %xor166.3 = xor i32 %conv165.3, %conv162.3
  %conv167.3 = trunc i32 %xor166.3 to i8
  store i8 %conv167.3, i8* %arrayidx164.3, align 1
  %arrayidx173.3 = getelementptr inbounds [5 x i8], [5 x i8]* %rr, i64 0, i64 3
  %118 = load i8, i8* %arrayidx173.3, align 1
  %conv174.3 = zext i8 %118 to i32
  %arrayidx176.3 = getelementptr inbounds i8, i8* %c, i64 3
  %119 = load i8, i8* %arrayidx176.3, align 1
  %conv177.3 = zext i8 %119 to i32
  %xor178.3 = xor i32 %conv177.3, %conv174.3
  %conv179.3 = trunc i32 %xor178.3 to i8
  store i8 %conv179.3, i8* %arrayidx176.3, align 1
  %arrayidx65.4 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %alpha, i64 0, i64 4
  %arrayidx67.4 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx65.4, i64 0, i64 4
  %120 = load i8, i8* %arrayidx67.4, align 1
  %arrayidx69.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %120, i8* %arrayidx69.4, align 1
  %arrayidx192.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep19.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 3, i64 4
  %scevgep1920.4 = bitcast i8* %scevgep19.4 to [5 x [5 x i8]]*
  %lsr.iv2123.4 = bitcast [5 x [5 x i8]]* %scevgep1920.4 to i8*
  %121 = load i8, i8* %lsr.iv2123.4, align 1
  %conv190.4 = zext i8 %121 to i32
  %122 = load i8, i8* %arrayidx192.4, align 1
  %conv193.4 = zext i8 %122 to i32
  %xor194.4 = xor i32 %conv193.4, %conv190.4
  %conv195.4 = trunc i32 %xor194.4 to i8
  store i8 %conv195.4, i8* %arrayidx192.4, align 1
  %scevgep22.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1920.4, i64 0, i64 -1, i64 0
  %123 = bitcast i8* %scevgep22.4 to [5 x [5 x i8]]*
  %124 = load i8, i8* %scevgep22.4, align 1
  %conv190.1.4 = zext i8 %124 to i32
  %125 = load i8, i8* %arrayidx192.4, align 1
  %conv193.1.4 = zext i8 %125 to i32
  %xor194.1.4 = xor i32 %conv193.1.4, %conv190.1.4
  %conv195.1.4 = trunc i32 %xor194.1.4 to i8
  store i8 %conv195.1.4, i8* %arrayidx192.4, align 1
  %scevgep22.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %123, i64 0, i64 -1, i64 0
  %126 = bitcast i8* %scevgep22.1.4 to [5 x [5 x i8]]*
  %127 = load i8, i8* %scevgep22.1.4, align 1
  %conv190.162.4 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx192.4, align 1
  %conv193.163.4 = zext i8 %128 to i32
  %xor194.164.4 = xor i32 %conv193.163.4, %conv190.162.4
  %conv195.165.4 = trunc i32 %xor194.164.4 to i8
  store i8 %conv195.165.4, i8* %arrayidx192.4, align 1
  %scevgep22.167.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %126, i64 0, i64 -1, i64 0
  %129 = load i8, i8* %scevgep22.167.4, align 1
  %conv190.1.1.4 = zext i8 %129 to i32
  %130 = load i8, i8* %arrayidx192.4, align 1
  %conv193.1.1.4 = zext i8 %130 to i32
  %xor194.1.1.4 = xor i32 %conv193.1.1.4, %conv190.1.1.4
  %conv195.1.1.4 = trunc i32 %xor194.1.1.4 to i8
  store i8 %conv195.1.1.4, i8* %arrayidx192.4, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %131 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %132 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %132 to i32
  %conv1.i.i236.1 = zext i8 %131 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %133 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %133 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %134 = load i8, i8* %scevgep.3, align 1
  %conv.i.i235.3 = zext i8 %134 to i32
  %conv1.i.i236.3 = zext i8 %conv2.i.i238.2 to i32
  %xor.i.i237.3 = xor i32 %conv1.i.i236.3, %conv.i.i235.3
  %conv2.i.i238.3 = trunc i32 %xor.i.i237.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %135 = load i8, i8* %scevgep.4, align 1
  %conv.i.i235.4 = zext i8 %135 to i32
  %conv1.i.i236.4 = zext i8 %conv2.i.i238.3 to i32
  %xor.i.i237.4 = xor i32 %conv1.i.i236.4, %conv.i.i235.4
  %conv2.i.i238.4 = trunc i32 %xor.i.i237.4 to i8
  %conv205 = zext i8 %conv2.i.i238.4 to i32
  %cmp206 = icmp eq i32 %conv203, %conv205
  call void @assert(i1 zeroext %cmp206)
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
