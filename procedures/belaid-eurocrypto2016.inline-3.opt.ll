; ModuleID = '../examples/belaid-eurocrypto2016.inline-3.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %alpha = alloca [4 x [4 x i8]], align 16
  %t = alloca [4 x [4 x i8]], align 16
  %r = alloca [4 x [4 x i8]], align 16
  %rr = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep49.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep49.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep49.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep49.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep49.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep49.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep45.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep45.1, align 1
  %conv.i.i218.1 = zext i8 %5 to i32
  %conv1.i.i219.1 = zext i8 %4 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep45.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep45.2, align 1
  %conv.i.i218.2 = zext i8 %6 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep45.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep45.3, align 1
  %conv.i.i218.3 = zext i8 %7 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %conv7 = zext i8 %conv2.i.i221.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %8 = load i8, i8* %a, align 1
  %9 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9)
  %scevgep41 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep41, align 1
  %10 = load i8, i8* %a, align 1
  %scevgep38.1 = getelementptr i8, i8* %b, i64 1
  %11 = load i8, i8* %scevgep38.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11)
  %scevgep41.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep41.1, align 1
  %12 = load i8, i8* %a, align 1
  %scevgep38.2 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep38.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %scevgep41.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep41.2, align 1
  %14 = load i8, i8* %a, align 1
  %scevgep38.3 = getelementptr i8, i8* %b, i64 3
  %15 = load i8, i8* %scevgep38.3, align 1
  %call18.3 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %scevgep41.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0, i64 3
  store i8 %call18.3, i8* %scevgep41.3, align 1
  %scevgep40 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep40 to [4 x [4 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %17 = load i8, i8* %arrayidx.1, align 1
  %18 = load i8, i8* %b, align 1
  %call18.151 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18)
  %scevgep41.152 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %16, i64 0, i64 0, i64 0
  store i8 %call18.151, i8* %scevgep41.152, align 1
  %19 = load i8, i8* %arrayidx.1, align 1
  %scevgep38.1.1 = getelementptr i8, i8* %b, i64 1
  %20 = load i8, i8* %scevgep38.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20)
  %scevgep41.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %16, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep41.1.1, align 1
  %21 = load i8, i8* %arrayidx.1, align 1
  %scevgep38.2.1 = getelementptr i8, i8* %b, i64 2
  %22 = load i8, i8* %scevgep38.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  %scevgep41.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %16, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep41.2.1, align 1
  %23 = load i8, i8* %arrayidx.1, align 1
  %scevgep38.3.1 = getelementptr i8, i8* %b, i64 3
  %24 = load i8, i8* %scevgep38.3.1, align 1
  %call18.3.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24)
  %scevgep41.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %16, i64 0, i64 0, i64 3
  store i8 %call18.3.1, i8* %scevgep41.3.1, align 1
  %scevgep40.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %16, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep40.1 to [4 x [4 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %26 = load i8, i8* %arrayidx.2, align 1
  %27 = load i8, i8* %b, align 1
  %call18.254 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  %scevgep41.255 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %25, i64 0, i64 0, i64 0
  store i8 %call18.254, i8* %scevgep41.255, align 1
  %28 = load i8, i8* %arrayidx.2, align 1
  %scevgep38.1.2 = getelementptr i8, i8* %b, i64 1
  %29 = load i8, i8* %scevgep38.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29)
  %scevgep41.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %25, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep41.1.2, align 1
  %30 = load i8, i8* %arrayidx.2, align 1
  %scevgep38.2.2 = getelementptr i8, i8* %b, i64 2
  %31 = load i8, i8* %scevgep38.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31)
  %scevgep41.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %25, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep41.2.2, align 1
  %32 = load i8, i8* %arrayidx.2, align 1
  %scevgep38.3.2 = getelementptr i8, i8* %b, i64 3
  %33 = load i8, i8* %scevgep38.3.2, align 1
  %call18.3.2 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %scevgep41.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %25, i64 0, i64 0, i64 3
  store i8 %call18.3.2, i8* %scevgep41.3.2, align 1
  %scevgep40.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %25, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep40.2 to [4 x [4 x i8]]*
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3
  %35 = load i8, i8* %arrayidx.3, align 1
  %36 = load i8, i8* %b, align 1
  %call18.357 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36)
  %scevgep41.358 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 0, i64 0
  store i8 %call18.357, i8* %scevgep41.358, align 1
  %37 = load i8, i8* %arrayidx.3, align 1
  %scevgep38.1.3 = getelementptr i8, i8* %b, i64 1
  %38 = load i8, i8* %scevgep38.1.3, align 1
  %call18.1.3 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38)
  %scevgep41.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 0, i64 1
  store i8 %call18.1.3, i8* %scevgep41.1.3, align 1
  %39 = load i8, i8* %arrayidx.3, align 1
  %scevgep38.2.3 = getelementptr i8, i8* %b, i64 2
  %40 = load i8, i8* %scevgep38.2.3, align 1
  %call18.2.3 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40)
  %scevgep41.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 0, i64 2
  store i8 %call18.2.3, i8* %scevgep41.2.3, align 1
  %41 = load i8, i8* %arrayidx.3, align 1
  %scevgep38.3.3 = getelementptr i8, i8* %b, i64 3
  %42 = load i8, i8* %scevgep38.3.3, align 1
  %call18.3.3 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42)
  %scevgep41.3.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 0, i64 3
  store i8 %call18.3.3, i8* %scevgep41.3.3, align 1
  %scevgep29 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %scevgep2930 = bitcast i8* %scevgep29 to [4 x [4 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep29, align 1
  %scevgep34 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2930, i64 0, i64 0, i64 -2
  %call37.181 = call zeroext i8 (...) @rand()
  store i8 %call37.181, i8* %scevgep34, align 1
  %scevgep32 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep2930, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep32 to [4 x [4 x i8]]*
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep32, align 1
  %scevgep32.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 1, i64 0
  %call37.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2, i8* %scevgep32.1, align 1
  %scevgep24 = getelementptr [4 x i8], [4 x i8]* %rr, i64 0, i64 2
  %call53 = call zeroext i8 (...) @rand()
  store i8 %call53, i8* %scevgep24, align 1
  %arrayidx65 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx65, i64 0, i64 0
  %44 = load i8, i8* %arrayidx67, align 1
  store i8 %44, i8* %c, align 1
  %arrayidx77 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 0
  %arrayidx117 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx77, i64 0, i64 3
  %45 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %45 to i32
  %arrayidx84 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx82, i64 0, i64 3
  %46 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %46 to i32
  %xor = xor i32 %conv80, %conv85
  %arrayidx87 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 3
  %arrayidx89 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx87, i64 0, i64 0
  %47 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %47 to i32
  %xor91 = xor i32 %xor, %conv90
  %arrayidx94 = getelementptr inbounds [4 x i8], [4 x i8]* %rr, i64 0, i64 2
  %48 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %48 to i32
  %xor96 = xor i32 %xor91, %conv95
  %arrayidx101 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx98, i64 0, i64 2
  %49 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %49 to i32
  %xor103 = xor i32 %xor96, %conv102
  %arrayidx106 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 2
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx106, i64 0, i64 0
  %50 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %50 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %arrayidx115 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx113, i64 0, i64 3
  store i8 %conv111, i8* %arrayidx115, align 1
  %arrayidx119 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx117, i64 0, i64 3
  %51 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %51 to i32
  %52 = load i8, i8* %c, align 1
  %conv123 = zext i8 %52 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %arrayidx132 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0
  %arrayidx135 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx132, i64 0, i64 1
  %53 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %53 to i32
  %arrayidx138 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 0
  %arrayidx141 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx138, i64 0, i64 1
  %54 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %54 to i32
  %xor143 = xor i32 %conv136, %conv142
  %arrayidx146 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 1
  %arrayidx148 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx146, i64 0, i64 0
  %55 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %55 to i32
  %xor150 = xor i32 %xor143, %conv149
  %conv151 = trunc i32 %xor150 to i8
  %arrayidx153 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 0
  %arrayidx156 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx153, i64 0, i64 1
  store i8 %conv151, i8* %arrayidx156, align 1
  %arrayidx158 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 0
  %arrayidx161 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx158, i64 0, i64 1
  %56 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %56 to i32
  %57 = load i8, i8* %c, align 1
  %conv165 = zext i8 %57 to i32
  %xor166 = xor i32 %conv165, %conv162
  %conv167 = trunc i32 %xor166 to i8
  store i8 %conv167, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx65.1, i64 0, i64 1
  %58 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %58, i8* %arrayidx69.1, align 1
  %arrayidx77.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1
  %arrayidx82.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 1
  %arrayidx98.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 1
  %arrayidx113.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 1
  %arrayidx117.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 1
  %arrayidx122.1 = getelementptr inbounds i8, i8* %c, i64 1
  %arrayidx79.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx77.1, i64 0, i64 3
  %59 = load i8, i8* %arrayidx79.1, align 1
  %conv80.1 = zext i8 %59 to i32
  %arrayidx84.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx82.1, i64 0, i64 3
  %60 = load i8, i8* %arrayidx84.1, align 1
  %conv85.1 = zext i8 %60 to i32
  %xor.1 = xor i32 %conv80.1, %conv85.1
  %arrayidx87.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 3
  %arrayidx89.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx87.1, i64 0, i64 1
  %61 = load i8, i8* %arrayidx89.1, align 1
  %conv90.1 = zext i8 %61 to i32
  %xor91.1 = xor i32 %xor.1, %conv90.1
  %arrayidx94.1 = getelementptr inbounds [4 x i8], [4 x i8]* %rr, i64 0, i64 2
  %62 = load i8, i8* %arrayidx94.1, align 1
  %conv95.1 = zext i8 %62 to i32
  %xor96.1 = xor i32 %xor91.1, %conv95.1
  %arrayidx101.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx98.1, i64 0, i64 2
  %63 = load i8, i8* %arrayidx101.1, align 1
  %conv102.1 = zext i8 %63 to i32
  %xor103.1 = xor i32 %xor96.1, %conv102.1
  %arrayidx106.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 2
  %arrayidx108.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx106.1, i64 0, i64 1
  %64 = load i8, i8* %arrayidx108.1, align 1
  %conv109.1 = zext i8 %64 to i32
  %xor110.1 = xor i32 %xor103.1, %conv109.1
  %conv111.1 = trunc i32 %xor110.1 to i8
  %arrayidx115.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx113.1, i64 0, i64 3
  store i8 %conv111.1, i8* %arrayidx115.1, align 1
  %arrayidx119.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx117.1, i64 0, i64 3
  %65 = load i8, i8* %arrayidx119.1, align 1
  %conv120.1 = zext i8 %65 to i32
  %66 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1 = zext i8 %66 to i32
  %xor124.1 = xor i32 %conv123.1, %conv120.1
  %conv125.1 = trunc i32 %xor124.1 to i8
  store i8 %conv125.1, i8* %arrayidx122.1, align 1
  %arrayidx192.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep19.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep19.1, align 1
  %conv190.prol.1 = zext i8 %67 to i32
  %68 = load i8, i8* %arrayidx192.1, align 1
  %conv193.prol.1 = zext i8 %68 to i32
  %xor194.prol.1 = xor i32 %conv193.prol.1, %conv190.prol.1
  %conv195.prol.1 = trunc i32 %xor194.prol.1 to i8
  store i8 %conv195.prol.1, i8* %arrayidx192.1, align 1
  %arrayidx65.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx65.2, i64 0, i64 2
  %69 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %69, i8* %arrayidx69.2, align 1
  %arrayidx132.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 2
  %arrayidx135.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx132.2, i64 0, i64 3
  %70 = load i8, i8* %arrayidx135.2, align 1
  %conv136.2 = zext i8 %70 to i32
  %arrayidx138.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 2
  %arrayidx141.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx138.2, i64 0, i64 3
  %71 = load i8, i8* %arrayidx141.2, align 1
  %conv142.2 = zext i8 %71 to i32
  %xor143.2 = xor i32 %conv136.2, %conv142.2
  %arrayidx146.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 3
  %arrayidx148.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx146.2, i64 0, i64 2
  %72 = load i8, i8* %arrayidx148.2, align 1
  %conv149.2 = zext i8 %72 to i32
  %xor150.2 = xor i32 %xor143.2, %conv149.2
  %conv151.2 = trunc i32 %xor150.2 to i8
  %arrayidx153.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 2
  %arrayidx156.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx153.2, i64 0, i64 3
  store i8 %conv151.2, i8* %arrayidx156.2, align 1
  %arrayidx158.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %t, i64 0, i64 2
  %arrayidx161.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx158.2, i64 0, i64 3
  %73 = load i8, i8* %arrayidx161.2, align 1
  %conv162.2 = zext i8 %73 to i32
  %arrayidx164.2 = getelementptr inbounds i8, i8* %c, i64 2
  %74 = load i8, i8* %arrayidx164.2, align 1
  %conv165.2 = zext i8 %74 to i32
  %xor166.2 = xor i32 %conv165.2, %conv162.2
  %conv167.2 = trunc i32 %xor166.2 to i8
  store i8 %conv167.2, i8* %arrayidx164.2, align 1
  %arrayidx65.3 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %alpha, i64 0, i64 3
  %arrayidx67.3 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx65.3, i64 0, i64 3
  %75 = load i8, i8* %arrayidx67.3, align 1
  %arrayidx69.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %75, i8* %arrayidx69.3, align 1
  %arrayidx192.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep19.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %scevgep22.prol.3 = getelementptr i8, i8* %scevgep19.3, i64 8
  %76 = load i8, i8* %scevgep22.prol.3, align 1
  %conv190.prol.3 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx192.3, align 1
  %conv193.prol.3 = zext i8 %77 to i32
  %xor194.prol.3 = xor i32 %conv193.prol.3, %conv190.prol.3
  %conv195.prol.3 = trunc i32 %xor194.prol.3 to i8
  store i8 %conv195.prol.3, i8* %arrayidx192.3, align 1
  %scevgep22.3 = getelementptr i8, i8* %scevgep19.3, i64 4
  %78 = load i8, i8* %scevgep22.3, align 1
  %conv190.3 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx192.3, align 1
  %conv193.3 = zext i8 %79 to i32
  %xor194.3 = xor i32 %conv193.3, %conv190.3
  %conv195.3 = trunc i32 %xor194.3 to i8
  store i8 %conv195.3, i8* %arrayidx192.3, align 1
  %scevgep22.1.3 = getelementptr i8, i8* %scevgep19.3, i64 0
  %80 = load i8, i8* %scevgep22.1.3, align 1
  %conv190.1.3 = zext i8 %80 to i32
  %81 = load i8, i8* %arrayidx192.3, align 1
  %conv193.1.3 = zext i8 %81 to i32
  %xor194.1.3 = xor i32 %conv193.1.3, %conv190.1.3
  %conv195.1.3 = trunc i32 %xor194.1.3 to i8
  store i8 %conv195.1.3, i8* %arrayidx192.3, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %82 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %83 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %83 to i32
  %conv1.i.i236.1 = zext i8 %82 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %84 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %84 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %85 = load i8, i8* %scevgep.3, align 1
  %conv.i.i235.3 = zext i8 %85 to i32
  %conv1.i.i236.3 = zext i8 %conv2.i.i238.2 to i32
  %xor.i.i237.3 = xor i32 %conv1.i.i236.3, %conv.i.i235.3
  %conv2.i.i238.3 = trunc i32 %xor.i.i237.3 to i8
  %conv205 = zext i8 %conv2.i.i238.3 to i32
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
