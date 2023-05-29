; ModuleID = '../examples/belaid-eurocrypto2016.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  %alpha = alloca [3 x [3 x i8]], align 1
  %t = alloca [3 x [3 x i8]], align 1
  %r = alloca [3 x [3 x i8]], align 1
  %rr = alloca [3 x i8], align 1
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
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep45.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep45.1, align 1
  %conv.i.i218.1 = zext i8 %4 to i32
  %conv1.i.i219.1 = zext i8 %3 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep45.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep45.2, align 1
  %conv.i.i218.2 = zext i8 %5 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %conv7 = zext i8 %conv2.i.i221.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %6 = load i8, i8* %a, align 1
  %7 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %scevgep41 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep41, align 1
  %8 = load i8, i8* %a, align 1
  %scevgep38.1 = getelementptr i8, i8* %b, i64 1
  %9 = load i8, i8* %scevgep38.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9)
  %scevgep41.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep41.1, align 1
  %10 = load i8, i8* %a, align 1
  %scevgep38.2 = getelementptr i8, i8* %b, i64 2
  %11 = load i8, i8* %scevgep38.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11)
  %scevgep41.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep41.2, align 1
  %scevgep40 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep40 to [3 x [3 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %13 = load i8, i8* %arrayidx.1, align 1
  %14 = load i8, i8* %b, align 1
  %call18.151 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14)
  %scevgep41.152 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 0, i64 0
  store i8 %call18.151, i8* %scevgep41.152, align 1
  %15 = load i8, i8* %arrayidx.1, align 1
  %scevgep38.1.1 = getelementptr i8, i8* %b, i64 1
  %16 = load i8, i8* %scevgep38.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16)
  %scevgep41.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep41.1.1, align 1
  %17 = load i8, i8* %arrayidx.1, align 1
  %scevgep38.2.1 = getelementptr i8, i8* %b, i64 2
  %18 = load i8, i8* %scevgep38.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18)
  %scevgep41.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep41.2.1, align 1
  %scevgep40.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 1, i64 0
  %19 = bitcast i8* %scevgep40.1 to [3 x [3 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %20 = load i8, i8* %arrayidx.2, align 1
  %21 = load i8, i8* %b, align 1
  %call18.254 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %scevgep41.255 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 0
  store i8 %call18.254, i8* %scevgep41.255, align 1
  %22 = load i8, i8* %arrayidx.2, align 1
  %scevgep38.1.2 = getelementptr i8, i8* %b, i64 1
  %23 = load i8, i8* %scevgep38.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %scevgep41.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep41.1.2, align 1
  %24 = load i8, i8* %arrayidx.2, align 1
  %scevgep38.2.2 = getelementptr i8, i8* %b, i64 2
  %25 = load i8, i8* %scevgep38.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25)
  %scevgep41.2.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %19, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep41.2.2, align 1
  %scevgep29 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %scevgep2930 = bitcast i8* %scevgep29 to [3 x [3 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep29, align 1
  %scevgep32 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2930, i64 0, i64 1, i64 0
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep32, align 1
  %scevgep24 = getelementptr [3 x i8], [3 x i8]* %rr, i64 0, i64 1
  %call53 = call zeroext i8 (...) @rand()
  store i8 %call53, i8* %scevgep24, align 1
  %arrayidx65 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx65, i64 0, i64 0
  %26 = load i8, i8* %arrayidx67, align 1
  store i8 %26, i8* %c, align 1
  %arrayidx77 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %t, i64 0, i64 0
  %arrayidx117 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %t, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77, i64 0, i64 2
  %27 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %27 to i32
  %arrayidx84 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx82, i64 0, i64 2
  %28 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %28 to i32
  %xor = xor i32 %conv80, %conv85
  %arrayidx87 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 2
  %arrayidx89 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx87, i64 0, i64 0
  %29 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %29 to i32
  %xor91 = xor i32 %xor, %conv90
  %arrayidx94 = getelementptr inbounds [3 x i8], [3 x i8]* %rr, i64 0, i64 1
  %30 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %30 to i32
  %xor96 = xor i32 %xor91, %conv95
  %arrayidx101 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx98, i64 0, i64 1
  %31 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %31 to i32
  %xor103 = xor i32 %xor96, %conv102
  %arrayidx106 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 1
  %arrayidx108 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx106, i64 0, i64 0
  %32 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %32 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %arrayidx115 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx113, i64 0, i64 2
  store i8 %conv111, i8* %arrayidx115, align 1
  %arrayidx119 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx117, i64 0, i64 2
  %33 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %33 to i32
  %34 = load i8, i8* %c, align 1
  %conv123 = zext i8 %34 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx65.1, i64 0, i64 1
  %35 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %35, i8* %arrayidx69.1, align 1
  %arrayidx132.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1
  %arrayidx135.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx132.1, i64 0, i64 2
  %36 = load i8, i8* %arrayidx135.1, align 1
  %conv136.1 = zext i8 %36 to i32
  %arrayidx138.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 1
  %arrayidx141.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx138.1, i64 0, i64 2
  %37 = load i8, i8* %arrayidx141.1, align 1
  %conv142.1 = zext i8 %37 to i32
  %xor143.1 = xor i32 %conv136.1, %conv142.1
  %arrayidx146.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 2
  %arrayidx148.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx146.1, i64 0, i64 1
  %38 = load i8, i8* %arrayidx148.1, align 1
  %conv149.1 = zext i8 %38 to i32
  %xor150.1 = xor i32 %xor143.1, %conv149.1
  %conv151.1 = trunc i32 %xor150.1 to i8
  %arrayidx153.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %t, i64 0, i64 1
  %arrayidx156.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx153.1, i64 0, i64 2
  store i8 %conv151.1, i8* %arrayidx156.1, align 1
  %arrayidx158.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %t, i64 0, i64 1
  %arrayidx161.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx158.1, i64 0, i64 2
  %39 = load i8, i8* %arrayidx161.1, align 1
  %conv162.1 = zext i8 %39 to i32
  %arrayidx164.1 = getelementptr inbounds i8, i8* %c, i64 1
  %40 = load i8, i8* %arrayidx164.1, align 1
  %conv165.1 = zext i8 %40 to i32
  %xor166.1 = xor i32 %conv165.1, %conv162.1
  %conv167.1 = trunc i32 %xor166.1 to i8
  store i8 %conv167.1, i8* %arrayidx164.1, align 1
  %arrayidx173.1 = getelementptr inbounds [3 x i8], [3 x i8]* %rr, i64 0, i64 1
  %41 = load i8, i8* %arrayidx173.1, align 1
  %conv174.1 = zext i8 %41 to i32
  %arrayidx176.1 = getelementptr inbounds i8, i8* %c, i64 1
  %42 = load i8, i8* %arrayidx176.1, align 1
  %conv177.1 = zext i8 %42 to i32
  %xor178.1 = xor i32 %conv177.1, %conv174.1
  %conv179.1 = trunc i32 %xor178.1 to i8
  store i8 %conv179.1, i8* %arrayidx176.1, align 1
  %arrayidx65.2 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx65.2, i64 0, i64 2
  %43 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %43, i8* %arrayidx69.2, align 1
  %arrayidx192.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep19.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 2
  %scevgep1920.2 = bitcast i8* %scevgep19.2 to [3 x [3 x i8]]*
  %lsr.iv2123.2 = bitcast [3 x [3 x i8]]* %scevgep1920.2 to i8*
  %44 = load i8, i8* %lsr.iv2123.2, align 1
  %conv190.2 = zext i8 %44 to i32
  %45 = load i8, i8* %arrayidx192.2, align 1
  %conv193.2 = zext i8 %45 to i32
  %xor194.2 = xor i32 %conv193.2, %conv190.2
  %conv195.2 = trunc i32 %xor194.2 to i8
  store i8 %conv195.2, i8* %arrayidx192.2, align 1
  %scevgep22.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1920.2, i64 0, i64 -1, i64 0
  %46 = load i8, i8* %scevgep22.2, align 1
  %conv190.1.2 = zext i8 %46 to i32
  %47 = load i8, i8* %arrayidx192.2, align 1
  %conv193.1.2 = zext i8 %47 to i32
  %xor194.1.2 = xor i32 %conv193.1.2, %conv190.1.2
  %conv195.1.2 = trunc i32 %xor194.1.2 to i8
  store i8 %conv195.1.2, i8* %arrayidx192.2, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %48 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %49 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %49 to i32
  %conv1.i.i236.1 = zext i8 %48 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %50 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %50 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %conv205 = zext i8 %conv2.i.i238.2 to i32
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
