; ModuleID = '../examples/belaid-eurocrypto2016.inline-5.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 5, align 4
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
  %alpha = alloca [6 x [6 x i8]], align 16
  %t = alloca [6 x [6 x i8]], align 16
  %r = alloca [6 x [6 x i8]], align 16
  %rr = alloca [6 x i8], align 1
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
  %scevgep48.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep48.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %conv3 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %6 = load i8, i8* %b, align 1
  %scevgep44.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep44.1, align 1
  %conv.i.i218.1 = zext i8 %7 to i32
  %conv1.i.i219.1 = zext i8 %6 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep44.2 = getelementptr i8, i8* %b, i64 2
  %8 = load i8, i8* %scevgep44.2, align 1
  %conv.i.i218.2 = zext i8 %8 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep44.3 = getelementptr i8, i8* %b, i64 3
  %9 = load i8, i8* %scevgep44.3, align 1
  %conv.i.i218.3 = zext i8 %9 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %scevgep44.4 = getelementptr i8, i8* %b, i64 4
  %10 = load i8, i8* %scevgep44.4, align 1
  %conv.i.i218.4 = zext i8 %10 to i32
  %conv1.i.i219.4 = zext i8 %conv2.i.i221.3 to i32
  %xor.i.i220.4 = xor i32 %conv1.i.i219.4, %conv.i.i218.4
  %conv2.i.i221.4 = trunc i32 %xor.i.i220.4 to i8
  %scevgep44.5 = getelementptr i8, i8* %b, i64 5
  %11 = load i8, i8* %scevgep44.5, align 1
  %conv.i.i218.5 = zext i8 %11 to i32
  %conv1.i.i219.5 = zext i8 %conv2.i.i221.4 to i32
  %xor.i.i220.5 = xor i32 %conv1.i.i219.5, %conv.i.i218.5
  %conv2.i.i221.5 = trunc i32 %xor.i.i220.5 to i8
  %conv7 = zext i8 %conv2.i.i221.5 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %12 = load i8, i8* %a, align 1
  %13 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %scevgep40 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep40, align 1
  %14 = load i8, i8* %a, align 1
  %scevgep37.1 = getelementptr i8, i8* %b, i64 1
  %15 = load i8, i8* %scevgep37.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %scevgep40.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep40.1, align 1
  %16 = load i8, i8* %a, align 1
  %scevgep37.2 = getelementptr i8, i8* %b, i64 2
  %17 = load i8, i8* %scevgep37.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17)
  %scevgep40.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep40.2, align 1
  %18 = load i8, i8* %a, align 1
  %scevgep37.3 = getelementptr i8, i8* %b, i64 3
  %19 = load i8, i8* %scevgep37.3, align 1
  %call18.3 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19)
  %scevgep40.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0, i64 3
  store i8 %call18.3, i8* %scevgep40.3, align 1
  %20 = load i8, i8* %a, align 1
  %scevgep37.4 = getelementptr i8, i8* %b, i64 4
  %21 = load i8, i8* %scevgep37.4, align 1
  %call18.4 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %scevgep40.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0, i64 4
  store i8 %call18.4, i8* %scevgep40.4, align 1
  %22 = load i8, i8* %a, align 1
  %scevgep37.5 = getelementptr i8, i8* %b, i64 5
  %23 = load i8, i8* %scevgep37.5, align 1
  %call18.5 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %scevgep40.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0, i64 5
  store i8 %call18.5, i8* %scevgep40.5, align 1
  %scevgep39 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 1, i64 0
  %24 = bitcast i8* %scevgep39 to [6 x [6 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %25 = load i8, i8* %arrayidx.1, align 1
  %26 = load i8, i8* %b, align 1
  %call18.150 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  %scevgep40.151 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 0
  store i8 %call18.150, i8* %scevgep40.151, align 1
  %27 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.1.1 = getelementptr i8, i8* %b, i64 1
  %28 = load i8, i8* %scevgep37.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %scevgep40.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep40.1.1, align 1
  %29 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.2.1 = getelementptr i8, i8* %b, i64 2
  %30 = load i8, i8* %scevgep37.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30)
  %scevgep40.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep40.2.1, align 1
  %31 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.3.1 = getelementptr i8, i8* %b, i64 3
  %32 = load i8, i8* %scevgep37.3.1, align 1
  %call18.3.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32)
  %scevgep40.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 3
  store i8 %call18.3.1, i8* %scevgep40.3.1, align 1
  %33 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.4.1 = getelementptr i8, i8* %b, i64 4
  %34 = load i8, i8* %scevgep37.4.1, align 1
  %call18.4.1 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34)
  %scevgep40.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 4
  store i8 %call18.4.1, i8* %scevgep40.4.1, align 1
  %35 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.5.1 = getelementptr i8, i8* %b, i64 5
  %36 = load i8, i8* %scevgep37.5.1, align 1
  %call18.5.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36)
  %scevgep40.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 0, i64 5
  store i8 %call18.5.1, i8* %scevgep40.5.1, align 1
  %scevgep39.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 1, i64 0
  %37 = bitcast i8* %scevgep39.1 to [6 x [6 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %38 = load i8, i8* %arrayidx.2, align 1
  %39 = load i8, i8* %b, align 1
  %call18.253 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %scevgep40.254 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 0, i64 0
  store i8 %call18.253, i8* %scevgep40.254, align 1
  %40 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.1.2 = getelementptr i8, i8* %b, i64 1
  %41 = load i8, i8* %scevgep37.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  %scevgep40.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep40.1.2, align 1
  %42 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.2.2 = getelementptr i8, i8* %b, i64 2
  %43 = load i8, i8* %scevgep37.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep40.2.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep40.2.2, align 1
  %44 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.3.2 = getelementptr i8, i8* %b, i64 3
  %45 = load i8, i8* %scevgep37.3.2, align 1
  %call18.3.2 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45)
  %scevgep40.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 0, i64 3
  store i8 %call18.3.2, i8* %scevgep40.3.2, align 1
  %46 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.4.2 = getelementptr i8, i8* %b, i64 4
  %47 = load i8, i8* %scevgep37.4.2, align 1
  %call18.4.2 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %scevgep40.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 0, i64 4
  store i8 %call18.4.2, i8* %scevgep40.4.2, align 1
  %48 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.5.2 = getelementptr i8, i8* %b, i64 5
  %49 = load i8, i8* %scevgep37.5.2, align 1
  %call18.5.2 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49)
  %scevgep40.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 0, i64 5
  store i8 %call18.5.2, i8* %scevgep40.5.2, align 1
  %scevgep39.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep39.2 to [6 x [6 x i8]]*
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3
  %51 = load i8, i8* %arrayidx.3, align 1
  %52 = load i8, i8* %b, align 1
  %call18.356 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %scevgep40.357 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %call18.356, i8* %scevgep40.357, align 1
  %53 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.1.3 = getelementptr i8, i8* %b, i64 1
  %54 = load i8, i8* %scevgep37.1.3, align 1
  %call18.1.3 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54)
  %scevgep40.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 1
  store i8 %call18.1.3, i8* %scevgep40.1.3, align 1
  %55 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.2.3 = getelementptr i8, i8* %b, i64 2
  %56 = load i8, i8* %scevgep37.2.3, align 1
  %call18.2.3 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56)
  %scevgep40.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 2
  store i8 %call18.2.3, i8* %scevgep40.2.3, align 1
  %57 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.3.3 = getelementptr i8, i8* %b, i64 3
  %58 = load i8, i8* %scevgep37.3.3, align 1
  %call18.3.3 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58)
  %scevgep40.3.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 3
  store i8 %call18.3.3, i8* %scevgep40.3.3, align 1
  %59 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.4.3 = getelementptr i8, i8* %b, i64 4
  %60 = load i8, i8* %scevgep37.4.3, align 1
  %call18.4.3 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60)
  %scevgep40.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 4
  store i8 %call18.4.3, i8* %scevgep40.4.3, align 1
  %61 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.5.3 = getelementptr i8, i8* %b, i64 5
  %62 = load i8, i8* %scevgep37.5.3, align 1
  %call18.5.3 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62)
  %scevgep40.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 0, i64 5
  store i8 %call18.5.3, i8* %scevgep40.5.3, align 1
  %scevgep39.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %50, i64 0, i64 1, i64 0
  %63 = bitcast i8* %scevgep39.3 to [6 x [6 x i8]]*
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 4
  %64 = load i8, i8* %arrayidx.4, align 1
  %65 = load i8, i8* %b, align 1
  %call18.459 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65)
  %scevgep40.460 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 0, i64 0
  store i8 %call18.459, i8* %scevgep40.460, align 1
  %66 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.1.4 = getelementptr i8, i8* %b, i64 1
  %67 = load i8, i8* %scevgep37.1.4, align 1
  %call18.1.4 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %scevgep40.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 0, i64 1
  store i8 %call18.1.4, i8* %scevgep40.1.4, align 1
  %68 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.2.4 = getelementptr i8, i8* %b, i64 2
  %69 = load i8, i8* %scevgep37.2.4, align 1
  %call18.2.4 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69)
  %scevgep40.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 0, i64 2
  store i8 %call18.2.4, i8* %scevgep40.2.4, align 1
  %70 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.3.4 = getelementptr i8, i8* %b, i64 3
  %71 = load i8, i8* %scevgep37.3.4, align 1
  %call18.3.4 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  %scevgep40.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 0, i64 3
  store i8 %call18.3.4, i8* %scevgep40.3.4, align 1
  %72 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.4.4 = getelementptr i8, i8* %b, i64 4
  %73 = load i8, i8* %scevgep37.4.4, align 1
  %call18.4.4 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73)
  %scevgep40.4.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 0, i64 4
  store i8 %call18.4.4, i8* %scevgep40.4.4, align 1
  %74 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.5.4 = getelementptr i8, i8* %b, i64 5
  %75 = load i8, i8* %scevgep37.5.4, align 1
  %call18.5.4 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %scevgep40.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 0, i64 5
  store i8 %call18.5.4, i8* %scevgep40.5.4, align 1
  %scevgep39.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %63, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep39.4 to [6 x [6 x i8]]*
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 5
  %77 = load i8, i8* %arrayidx.5, align 1
  %78 = load i8, i8* %b, align 1
  %call18.562 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78)
  %scevgep40.563 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 0
  store i8 %call18.562, i8* %scevgep40.563, align 1
  %79 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.1.5 = getelementptr i8, i8* %b, i64 1
  %80 = load i8, i8* %scevgep37.1.5, align 1
  %call18.1.5 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80)
  %scevgep40.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 1
  store i8 %call18.1.5, i8* %scevgep40.1.5, align 1
  %81 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.2.5 = getelementptr i8, i8* %b, i64 2
  %82 = load i8, i8* %scevgep37.2.5, align 1
  %call18.2.5 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %scevgep40.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 2
  store i8 %call18.2.5, i8* %scevgep40.2.5, align 1
  %83 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.3.5 = getelementptr i8, i8* %b, i64 3
  %84 = load i8, i8* %scevgep37.3.5, align 1
  %call18.3.5 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84)
  %scevgep40.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 3
  store i8 %call18.3.5, i8* %scevgep40.3.5, align 1
  %85 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.4.5 = getelementptr i8, i8* %b, i64 4
  %86 = load i8, i8* %scevgep37.4.5, align 1
  %call18.4.5 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86)
  %scevgep40.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 4
  store i8 %call18.4.5, i8* %scevgep40.4.5, align 1
  %87 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.5.5 = getelementptr i8, i8* %b, i64 5
  %88 = load i8, i8* %scevgep37.5.5, align 1
  %call18.5.5 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88)
  %scevgep40.5.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %76, i64 0, i64 0, i64 5
  store i8 %call18.5.5, i8* %scevgep40.5.5, align 1
  %scevgep28 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 5
  %scevgep2829 = bitcast i8* %scevgep28 to [6 x [6 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep28, align 1
  %scevgep33 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep2829, i64 0, i64 0, i64 -2
  %89 = bitcast i8* %scevgep33 to [6 x [6 x i8]]*
  %call37.1125 = call zeroext i8 (...) @rand()
  store i8 %call37.1125, i8* %scevgep33, align 1
  %scevgep33.1126 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 0, i64 -2
  %call37.2128 = call zeroext i8 (...) @rand()
  store i8 %call37.2128, i8* %scevgep33.1126, align 1
  %scevgep31 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep2829, i64 0, i64 1, i64 0
  %90 = bitcast i8* %scevgep31 to [6 x [6 x i8]]*
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep31, align 1
  %scevgep33.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %90, i64 0, i64 0, i64 -2
  %call37.1.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1.1, i8* %scevgep33.1, align 1
  %scevgep31.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %90, i64 0, i64 1, i64 0
  %91 = bitcast i8* %scevgep31.1 to [6 x [6 x i8]]*
  %call37.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2, i8* %scevgep31.1, align 1
  %scevgep33.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %91, i64 0, i64 0, i64 -2
  %call37.2.1 = call zeroext i8 (...) @rand()
  store i8 %call37.2.1, i8* %scevgep33.2, align 1
  %scevgep31.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %91, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep31.2 to [6 x [6 x i8]]*
  %call37.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3, i8* %scevgep31.2, align 1
  %scevgep31.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %92, i64 0, i64 1, i64 0
  %call37.4 = call zeroext i8 (...) @rand()
  store i8 %call37.4, i8* %scevgep31.3, align 1
  %call53 = call zeroext i8 (...) @rand()
  %scevgep26 = getelementptr [6 x i8], [6 x i8]* %rr, i64 0, i64 4
  store i8 %call53, i8* %scevgep26, align 1
  %call53.1 = call zeroext i8 (...) @rand()
  %scevgep26.1 = getelementptr [6 x i8], [6 x i8]* %rr, i64 0, i64 2
  store i8 %call53.1, i8* %scevgep26.1, align 1
  %arrayidx65 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx65, i64 0, i64 0
  %93 = load i8, i8* %arrayidx67, align 1
  store i8 %93, i8* %c, align 1
  %arrayidx77 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 0
  %arrayidx117 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx77, i64 0, i64 5
  %94 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %94 to i32
  %arrayidx84 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx82, i64 0, i64 5
  %95 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %95 to i32
  %xor = xor i32 %conv80, %conv85
  %arrayidx87 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx87, i64 0, i64 0
  %96 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %96 to i32
  %xor91 = xor i32 %xor, %conv90
  %arrayidx94 = getelementptr inbounds [6 x i8], [6 x i8]* %rr, i64 0, i64 4
  %97 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %97 to i32
  %xor96 = xor i32 %xor91, %conv95
  %arrayidx101 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx98, i64 0, i64 4
  %98 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %98 to i32
  %xor103 = xor i32 %xor96, %conv102
  %arrayidx106 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx106, i64 0, i64 0
  %99 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %99 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %arrayidx115 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx113, i64 0, i64 5
  store i8 %conv111, i8* %arrayidx115, align 1
  %arrayidx119 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx117, i64 0, i64 5
  %100 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %100 to i32
  %101 = load i8, i8* %c, align 1
  %conv123 = zext i8 %101 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %arrayidx79.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx77, i64 0, i64 3
  %102 = load i8, i8* %arrayidx79.1, align 1
  %conv80.1 = zext i8 %102 to i32
  %arrayidx84.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx82, i64 0, i64 3
  %103 = load i8, i8* %arrayidx84.1, align 1
  %conv85.1 = zext i8 %103 to i32
  %xor.1 = xor i32 %conv80.1, %conv85.1
  %arrayidx87.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 3
  %arrayidx89.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx87.1, i64 0, i64 0
  %104 = load i8, i8* %arrayidx89.1, align 1
  %conv90.1 = zext i8 %104 to i32
  %xor91.1 = xor i32 %xor.1, %conv90.1
  %arrayidx94.1 = getelementptr inbounds [6 x i8], [6 x i8]* %rr, i64 0, i64 2
  %105 = load i8, i8* %arrayidx94.1, align 1
  %conv95.1 = zext i8 %105 to i32
  %xor96.1 = xor i32 %xor91.1, %conv95.1
  %arrayidx101.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx98, i64 0, i64 2
  %106 = load i8, i8* %arrayidx101.1, align 1
  %conv102.1 = zext i8 %106 to i32
  %xor103.1 = xor i32 %xor96.1, %conv102.1
  %arrayidx106.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 2
  %arrayidx108.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx106.1, i64 0, i64 0
  %107 = load i8, i8* %arrayidx108.1, align 1
  %conv109.1 = zext i8 %107 to i32
  %xor110.1 = xor i32 %xor103.1, %conv109.1
  %conv111.1 = trunc i32 %xor110.1 to i8
  %arrayidx115.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx113, i64 0, i64 3
  store i8 %conv111.1, i8* %arrayidx115.1, align 1
  %arrayidx119.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx117, i64 0, i64 3
  %108 = load i8, i8* %arrayidx119.1, align 1
  %conv120.1 = zext i8 %108 to i32
  %109 = load i8, i8* %c, align 1
  %conv123.1 = zext i8 %109 to i32
  %xor124.1 = xor i32 %conv123.1, %conv120.1
  %conv125.1 = trunc i32 %xor124.1 to i8
  store i8 %conv125.1, i8* %c, align 1
  %arrayidx132 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0
  %arrayidx135 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx132, i64 0, i64 1
  %110 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %110 to i32
  %arrayidx138 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 0
  %arrayidx141 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx138, i64 0, i64 1
  %111 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %111 to i32
  %xor143 = xor i32 %conv136, %conv142
  %arrayidx146 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 1
  %arrayidx148 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx146, i64 0, i64 0
  %112 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %112 to i32
  %xor150 = xor i32 %xor143, %conv149
  %conv151 = trunc i32 %xor150 to i8
  %arrayidx153 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 0
  %arrayidx156 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx153, i64 0, i64 1
  store i8 %conv151, i8* %arrayidx156, align 1
  %arrayidx158 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 0
  %arrayidx161 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx158, i64 0, i64 1
  %113 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %113 to i32
  %114 = load i8, i8* %c, align 1
  %conv165 = zext i8 %114 to i32
  %xor166 = xor i32 %conv165, %conv162
  %conv167 = trunc i32 %xor166 to i8
  store i8 %conv167, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx65.1, i64 0, i64 1
  %115 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %115, i8* %arrayidx69.1, align 1
  %arrayidx77.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1
  %arrayidx82.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 1
  %arrayidx98.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 1
  %arrayidx113.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 1
  %arrayidx117.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 1
  %arrayidx122.1 = getelementptr inbounds i8, i8* %c, i64 1
  %arrayidx79.171 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx77.1, i64 0, i64 5
  %116 = load i8, i8* %arrayidx79.171, align 1
  %conv80.172 = zext i8 %116 to i32
  %arrayidx84.173 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx82.1, i64 0, i64 5
  %117 = load i8, i8* %arrayidx84.173, align 1
  %conv85.174 = zext i8 %117 to i32
  %xor.175 = xor i32 %conv80.172, %conv85.174
  %arrayidx87.176 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.177 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx87.176, i64 0, i64 1
  %118 = load i8, i8* %arrayidx89.177, align 1
  %conv90.178 = zext i8 %118 to i32
  %xor91.179 = xor i32 %xor.175, %conv90.178
  %arrayidx94.180 = getelementptr inbounds [6 x i8], [6 x i8]* %rr, i64 0, i64 4
  %119 = load i8, i8* %arrayidx94.180, align 1
  %conv95.181 = zext i8 %119 to i32
  %xor96.182 = xor i32 %xor91.179, %conv95.181
  %arrayidx101.183 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx98.1, i64 0, i64 4
  %120 = load i8, i8* %arrayidx101.183, align 1
  %conv102.184 = zext i8 %120 to i32
  %xor103.185 = xor i32 %xor96.182, %conv102.184
  %arrayidx106.186 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.187 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx106.186, i64 0, i64 1
  %121 = load i8, i8* %arrayidx108.187, align 1
  %conv109.188 = zext i8 %121 to i32
  %xor110.189 = xor i32 %xor103.185, %conv109.188
  %conv111.190 = trunc i32 %xor110.189 to i8
  %arrayidx115.191 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx113.1, i64 0, i64 5
  store i8 %conv111.190, i8* %arrayidx115.191, align 1
  %arrayidx119.192 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx117.1, i64 0, i64 5
  %122 = load i8, i8* %arrayidx119.192, align 1
  %conv120.193 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx122.1, align 1
  %conv123.194 = zext i8 %123 to i32
  %xor124.195 = xor i32 %conv123.194, %conv120.193
  %conv125.196 = trunc i32 %xor124.195 to i8
  store i8 %conv125.196, i8* %arrayidx122.1, align 1
  %arrayidx79.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx77.1, i64 0, i64 3
  %124 = load i8, i8* %arrayidx79.1.1, align 1
  %conv80.1.1 = zext i8 %124 to i32
  %arrayidx84.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx82.1, i64 0, i64 3
  %125 = load i8, i8* %arrayidx84.1.1, align 1
  %conv85.1.1 = zext i8 %125 to i32
  %xor.1.1 = xor i32 %conv80.1.1, %conv85.1.1
  %arrayidx87.1.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 3
  %arrayidx89.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx87.1.1, i64 0, i64 1
  %126 = load i8, i8* %arrayidx89.1.1, align 1
  %conv90.1.1 = zext i8 %126 to i32
  %xor91.1.1 = xor i32 %xor.1.1, %conv90.1.1
  %arrayidx94.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %rr, i64 0, i64 2
  %127 = load i8, i8* %arrayidx94.1.1, align 1
  %conv95.1.1 = zext i8 %127 to i32
  %xor96.1.1 = xor i32 %xor91.1.1, %conv95.1.1
  %arrayidx101.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx98.1, i64 0, i64 2
  %128 = load i8, i8* %arrayidx101.1.1, align 1
  %conv102.1.1 = zext i8 %128 to i32
  %xor103.1.1 = xor i32 %xor96.1.1, %conv102.1.1
  %arrayidx106.1.1 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 2
  %arrayidx108.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx106.1.1, i64 0, i64 1
  %129 = load i8, i8* %arrayidx108.1.1, align 1
  %conv109.1.1 = zext i8 %129 to i32
  %xor110.1.1 = xor i32 %xor103.1.1, %conv109.1.1
  %conv111.1.1 = trunc i32 %xor110.1.1 to i8
  %arrayidx115.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx113.1, i64 0, i64 3
  store i8 %conv111.1.1, i8* %arrayidx115.1.1, align 1
  %arrayidx119.1.1 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx117.1, i64 0, i64 3
  %130 = load i8, i8* %arrayidx119.1.1, align 1
  %conv120.1.1 = zext i8 %130 to i32
  %131 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.1 = zext i8 %131 to i32
  %xor124.1.1 = xor i32 %conv123.1.1, %conv120.1.1
  %conv125.1.1 = trunc i32 %xor124.1.1 to i8
  store i8 %conv125.1.1, i8* %arrayidx122.1, align 1
  %arrayidx192.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep19.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %132 = load i8, i8* %scevgep19.1, align 1
  %conv190.prol.1 = zext i8 %132 to i32
  %133 = load i8, i8* %arrayidx192.1, align 1
  %conv193.prol.1 = zext i8 %133 to i32
  %xor194.prol.1 = xor i32 %conv193.prol.1, %conv190.prol.1
  %conv195.prol.1 = trunc i32 %xor194.prol.1 to i8
  store i8 %conv195.prol.1, i8* %arrayidx192.1, align 1
  %arrayidx65.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx65.2, i64 0, i64 2
  %134 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %134, i8* %arrayidx69.2, align 1
  %arrayidx77.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 2
  %arrayidx82.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 2
  %arrayidx98.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 2
  %arrayidx113.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 2
  %arrayidx117.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 2
  %arrayidx122.2 = getelementptr inbounds i8, i8* %c, i64 2
  %arrayidx79.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx77.2, i64 0, i64 5
  %135 = load i8, i8* %arrayidx79.2, align 1
  %conv80.2 = zext i8 %135 to i32
  %arrayidx84.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx82.2, i64 0, i64 5
  %136 = load i8, i8* %arrayidx84.2, align 1
  %conv85.2 = zext i8 %136 to i32
  %xor.2 = xor i32 %conv80.2, %conv85.2
  %arrayidx87.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx87.2, i64 0, i64 2
  %137 = load i8, i8* %arrayidx89.2, align 1
  %conv90.2 = zext i8 %137 to i32
  %xor91.2 = xor i32 %xor.2, %conv90.2
  %arrayidx94.2 = getelementptr inbounds [6 x i8], [6 x i8]* %rr, i64 0, i64 4
  %138 = load i8, i8* %arrayidx94.2, align 1
  %conv95.2 = zext i8 %138 to i32
  %xor96.2 = xor i32 %xor91.2, %conv95.2
  %arrayidx101.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx98.2, i64 0, i64 4
  %139 = load i8, i8* %arrayidx101.2, align 1
  %conv102.2 = zext i8 %139 to i32
  %xor103.2 = xor i32 %xor96.2, %conv102.2
  %arrayidx106.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx106.2, i64 0, i64 2
  %140 = load i8, i8* %arrayidx108.2, align 1
  %conv109.2 = zext i8 %140 to i32
  %xor110.2 = xor i32 %xor103.2, %conv109.2
  %conv111.2 = trunc i32 %xor110.2 to i8
  %arrayidx115.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx113.2, i64 0, i64 5
  store i8 %conv111.2, i8* %arrayidx115.2, align 1
  %arrayidx119.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx117.2, i64 0, i64 5
  %141 = load i8, i8* %arrayidx119.2, align 1
  %conv120.2 = zext i8 %141 to i32
  %142 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2 = zext i8 %142 to i32
  %xor124.2 = xor i32 %conv123.2, %conv120.2
  %conv125.2 = trunc i32 %xor124.2 to i8
  store i8 %conv125.2, i8* %arrayidx122.2, align 1
  %arrayidx132.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 2
  %arrayidx135.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx132.2, i64 0, i64 3
  %143 = load i8, i8* %arrayidx135.2, align 1
  %conv136.2 = zext i8 %143 to i32
  %arrayidx138.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 2
  %arrayidx141.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx138.2, i64 0, i64 3
  %144 = load i8, i8* %arrayidx141.2, align 1
  %conv142.2 = zext i8 %144 to i32
  %xor143.2 = xor i32 %conv136.2, %conv142.2
  %arrayidx146.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 3
  %arrayidx148.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx146.2, i64 0, i64 2
  %145 = load i8, i8* %arrayidx148.2, align 1
  %conv149.2 = zext i8 %145 to i32
  %xor150.2 = xor i32 %xor143.2, %conv149.2
  %conv151.2 = trunc i32 %xor150.2 to i8
  %arrayidx153.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 2
  %arrayidx156.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx153.2, i64 0, i64 3
  store i8 %conv151.2, i8* %arrayidx156.2, align 1
  %arrayidx158.2 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 2
  %arrayidx161.2 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx158.2, i64 0, i64 3
  %146 = load i8, i8* %arrayidx161.2, align 1
  %conv162.2 = zext i8 %146 to i32
  %arrayidx164.2 = getelementptr inbounds i8, i8* %c, i64 2
  %147 = load i8, i8* %arrayidx164.2, align 1
  %conv165.2 = zext i8 %147 to i32
  %xor166.2 = xor i32 %conv165.2, %conv162.2
  %conv167.2 = trunc i32 %xor166.2 to i8
  store i8 %conv167.2, i8* %arrayidx164.2, align 1
  %arrayidx65.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 3
  %arrayidx67.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx65.3, i64 0, i64 3
  %148 = load i8, i8* %arrayidx67.3, align 1
  %arrayidx69.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %148, i8* %arrayidx69.3, align 1
  %arrayidx77.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 3
  %arrayidx82.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 3
  %arrayidx98.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 3
  %arrayidx113.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 3
  %arrayidx117.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 3
  %arrayidx122.3 = getelementptr inbounds i8, i8* %c, i64 3
  %arrayidx79.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx77.3, i64 0, i64 5
  %149 = load i8, i8* %arrayidx79.3, align 1
  %conv80.3 = zext i8 %149 to i32
  %arrayidx84.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx82.3, i64 0, i64 5
  %150 = load i8, i8* %arrayidx84.3, align 1
  %conv85.3 = zext i8 %150 to i32
  %xor.3 = xor i32 %conv80.3, %conv85.3
  %arrayidx87.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 5
  %arrayidx89.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx87.3, i64 0, i64 3
  %151 = load i8, i8* %arrayidx89.3, align 1
  %conv90.3 = zext i8 %151 to i32
  %xor91.3 = xor i32 %xor.3, %conv90.3
  %arrayidx94.3 = getelementptr inbounds [6 x i8], [6 x i8]* %rr, i64 0, i64 4
  %152 = load i8, i8* %arrayidx94.3, align 1
  %conv95.3 = zext i8 %152 to i32
  %xor96.3 = xor i32 %xor91.3, %conv95.3
  %arrayidx101.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx98.3, i64 0, i64 4
  %153 = load i8, i8* %arrayidx101.3, align 1
  %conv102.3 = zext i8 %153 to i32
  %xor103.3 = xor i32 %xor96.3, %conv102.3
  %arrayidx106.3 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 4
  %arrayidx108.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx106.3, i64 0, i64 3
  %154 = load i8, i8* %arrayidx108.3, align 1
  %conv109.3 = zext i8 %154 to i32
  %xor110.3 = xor i32 %xor103.3, %conv109.3
  %conv111.3 = trunc i32 %xor110.3 to i8
  %arrayidx115.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx113.3, i64 0, i64 5
  store i8 %conv111.3, i8* %arrayidx115.3, align 1
  %arrayidx119.3 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx117.3, i64 0, i64 5
  %155 = load i8, i8* %arrayidx119.3, align 1
  %conv120.3 = zext i8 %155 to i32
  %156 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3 = zext i8 %156 to i32
  %xor124.3 = xor i32 %conv123.3, %conv120.3
  %conv125.3 = trunc i32 %xor124.3 to i8
  store i8 %conv125.3, i8* %arrayidx122.3, align 1
  %arrayidx192.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep19.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 2, i64 3
  %scevgep1920.3 = bitcast i8* %scevgep19.3 to [6 x [6 x i8]]*
  %157 = load i8, i8* %scevgep19.3, align 1
  %conv190.prol.3 = zext i8 %157 to i32
  %158 = load i8, i8* %arrayidx192.3, align 1
  %conv193.prol.3 = zext i8 %158 to i32
  %xor194.prol.3 = xor i32 %conv193.prol.3, %conv190.prol.3
  %conv195.prol.3 = trunc i32 %xor194.prol.3 to i8
  store i8 %conv195.prol.3, i8* %arrayidx192.3, align 1
  %scevgep22.prol.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep1920.3, i64 0, i64 -1, i64 0
  %159 = bitcast i8* %scevgep22.prol.3 to [6 x [6 x i8]]*
  %lsr.iv2123.3 = bitcast [6 x [6 x i8]]* %159 to i8*
  %160 = load i8, i8* %lsr.iv2123.3, align 1
  %conv190.3 = zext i8 %160 to i32
  %161 = load i8, i8* %arrayidx192.3, align 1
  %conv193.3 = zext i8 %161 to i32
  %xor194.3 = xor i32 %conv193.3, %conv190.3
  %conv195.3 = trunc i32 %xor194.3 to i8
  store i8 %conv195.3, i8* %arrayidx192.3, align 1
  %scevgep22.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %159, i64 0, i64 -1, i64 0
  %162 = load i8, i8* %scevgep22.3, align 1
  %conv190.1.3 = zext i8 %162 to i32
  %163 = load i8, i8* %arrayidx192.3, align 1
  %conv193.1.3 = zext i8 %163 to i32
  %xor194.1.3 = xor i32 %conv193.1.3, %conv190.1.3
  %conv195.1.3 = trunc i32 %xor194.1.3 to i8
  store i8 %conv195.1.3, i8* %arrayidx192.3, align 1
  %arrayidx65.4 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 4
  %arrayidx67.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx65.4, i64 0, i64 4
  %164 = load i8, i8* %arrayidx67.4, align 1
  %arrayidx69.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %164, i8* %arrayidx69.4, align 1
  %arrayidx132.4 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 4
  %arrayidx135.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx132.4, i64 0, i64 5
  %165 = load i8, i8* %arrayidx135.4, align 1
  %conv136.4 = zext i8 %165 to i32
  %arrayidx138.4 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 4
  %arrayidx141.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx138.4, i64 0, i64 5
  %166 = load i8, i8* %arrayidx141.4, align 1
  %conv142.4 = zext i8 %166 to i32
  %xor143.4 = xor i32 %conv136.4, %conv142.4
  %arrayidx146.4 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 5
  %arrayidx148.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx146.4, i64 0, i64 4
  %167 = load i8, i8* %arrayidx148.4, align 1
  %conv149.4 = zext i8 %167 to i32
  %xor150.4 = xor i32 %xor143.4, %conv149.4
  %conv151.4 = trunc i32 %xor150.4 to i8
  %arrayidx153.4 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 4
  %arrayidx156.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx153.4, i64 0, i64 5
  store i8 %conv151.4, i8* %arrayidx156.4, align 1
  %arrayidx158.4 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %t, i64 0, i64 4
  %arrayidx161.4 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx158.4, i64 0, i64 5
  %168 = load i8, i8* %arrayidx161.4, align 1
  %conv162.4 = zext i8 %168 to i32
  %arrayidx164.4 = getelementptr inbounds i8, i8* %c, i64 4
  %169 = load i8, i8* %arrayidx164.4, align 1
  %conv165.4 = zext i8 %169 to i32
  %xor166.4 = xor i32 %conv165.4, %conv162.4
  %conv167.4 = trunc i32 %xor166.4 to i8
  store i8 %conv167.4, i8* %arrayidx164.4, align 1
  %arrayidx65.5 = getelementptr inbounds [6 x [6 x i8]], [6 x [6 x i8]]* %alpha, i64 0, i64 5
  %arrayidx67.5 = getelementptr inbounds [6 x i8], [6 x i8]* %arrayidx65.5, i64 0, i64 5
  %170 = load i8, i8* %arrayidx67.5, align 1
  %arrayidx69.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %170, i8* %arrayidx69.5, align 1
  %arrayidx192.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep19.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 4, i64 5
  %scevgep1920.5 = bitcast i8* %scevgep19.5 to [6 x [6 x i8]]*
  %171 = load i8, i8* %scevgep19.5, align 1
  %conv190.prol.5 = zext i8 %171 to i32
  %172 = load i8, i8* %arrayidx192.5, align 1
  %conv193.prol.5 = zext i8 %172 to i32
  %xor194.prol.5 = xor i32 %conv193.prol.5, %conv190.prol.5
  %conv195.prol.5 = trunc i32 %xor194.prol.5 to i8
  store i8 %conv195.prol.5, i8* %arrayidx192.5, align 1
  %scevgep22.prol.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep1920.5, i64 0, i64 -1, i64 0
  %173 = bitcast i8* %scevgep22.prol.5 to [6 x [6 x i8]]*
  %lsr.iv2123.5 = bitcast [6 x [6 x i8]]* %173 to i8*
  %174 = load i8, i8* %lsr.iv2123.5, align 1
  %conv190.5 = zext i8 %174 to i32
  %175 = load i8, i8* %arrayidx192.5, align 1
  %conv193.5 = zext i8 %175 to i32
  %xor194.5 = xor i32 %conv193.5, %conv190.5
  %conv195.5 = trunc i32 %xor194.5 to i8
  store i8 %conv195.5, i8* %arrayidx192.5, align 1
  %scevgep22.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %173, i64 0, i64 -1, i64 0
  %176 = bitcast i8* %scevgep22.5 to [6 x [6 x i8]]*
  %177 = load i8, i8* %scevgep22.5, align 1
  %conv190.1.5 = zext i8 %177 to i32
  %178 = load i8, i8* %arrayidx192.5, align 1
  %conv193.1.5 = zext i8 %178 to i32
  %xor194.1.5 = xor i32 %conv193.1.5, %conv190.1.5
  %conv195.1.5 = trunc i32 %xor194.1.5 to i8
  store i8 %conv195.1.5, i8* %arrayidx192.5, align 1
  %scevgep22.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 -1, i64 0
  %179 = bitcast i8* %scevgep22.1.5 to [6 x [6 x i8]]*
  %180 = load i8, i8* %scevgep22.1.5, align 1
  %conv190.165.5 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx192.5, align 1
  %conv193.166.5 = zext i8 %181 to i32
  %xor194.167.5 = xor i32 %conv193.166.5, %conv190.165.5
  %conv195.168.5 = trunc i32 %xor194.167.5 to i8
  store i8 %conv195.168.5, i8* %arrayidx192.5, align 1
  %scevgep22.170.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 -1, i64 0
  %182 = load i8, i8* %scevgep22.170.5, align 1
  %conv190.1.1.5 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx192.5, align 1
  %conv193.1.1.5 = zext i8 %183 to i32
  %xor194.1.1.5 = xor i32 %conv193.1.1.5, %conv190.1.1.5
  %conv195.1.1.5 = trunc i32 %xor194.1.1.5 to i8
  store i8 %conv195.1.1.5, i8* %arrayidx192.5, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %184 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %185 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %185 to i32
  %conv1.i.i236.1 = zext i8 %184 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %186 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %186 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %187 = load i8, i8* %scevgep.3, align 1
  %conv.i.i235.3 = zext i8 %187 to i32
  %conv1.i.i236.3 = zext i8 %conv2.i.i238.2 to i32
  %xor.i.i237.3 = xor i32 %conv1.i.i236.3, %conv.i.i235.3
  %conv2.i.i238.3 = trunc i32 %xor.i.i237.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %188 = load i8, i8* %scevgep.4, align 1
  %conv.i.i235.4 = zext i8 %188 to i32
  %conv1.i.i236.4 = zext i8 %conv2.i.i238.3 to i32
  %xor.i.i237.4 = xor i32 %conv1.i.i236.4, %conv.i.i235.4
  %conv2.i.i238.4 = trunc i32 %xor.i.i237.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %189 = load i8, i8* %scevgep.5, align 1
  %conv.i.i235.5 = zext i8 %189 to i32
  %conv1.i.i236.5 = zext i8 %conv2.i.i238.4 to i32
  %xor.i.i237.5 = xor i32 %conv1.i.i236.5, %conv.i.i235.5
  %conv2.i.i238.5 = trunc i32 %xor.i.i237.5 to i8
  %conv205 = zext i8 %conv2.i.i238.5 to i32
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
