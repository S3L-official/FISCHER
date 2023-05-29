; ModuleID = '../examples/rivain-ches2010-sec-exp-affine.inline-1.ll'
source_filename = "../examples/rivain-ches2010-sec-exp-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [45 x i8] c"../examples/rivain-ches2010-sec-exp-affine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 29 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 43 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 45 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 47 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 91 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 114 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 120 }], section "llvm.metadata"

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
  ret i8 %conv2.1
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
  ret i8 %conv2.i.1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep47.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep47.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep43.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep43.1, align 1
  %conv.i.i96.1 = zext i8 %3 to i32
  %conv1.i.i97.1 = zext i8 %2 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %conv7 = zext i8 %conv2.i.i99.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep27 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep27, align 1
  %scevgep28 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %4 = load i8, i8* %scevgep28, align 1
  %conv23 = zext i8 %4 to i32
  %5 = load i8, i8* %a, align 1
  %scevgep31 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep31, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %6)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep34 = getelementptr i8, i8* %a, i64 1
  %7 = load i8, i8* %scevgep34, align 1
  %8 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %scevgep35 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %conv37, i8* %scevgep35, align 1
  %9 = load i8, i8* %a, align 1
  %10 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %11 to i32
  %12 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %12 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep19 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep19 to [2 x [2 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %14 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %15 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.151 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %16 = load i8, i8* %scevgep20.151, align 1
  %conv68.152 = zext i8 %16 to i32
  %17 = load i8, i8* %arrayidx70.1, align 1
  %conv71.153 = zext i8 %17 to i32
  %xor72.154 = xor i32 %conv71.153, %conv68.152
  %conv73.155 = trunc i32 %xor72.154 to i8
  store i8 %conv73.155, i8* %arrayidx70.1, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %18 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %19 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %19 to i32
  %conv1.i.i114.1 = zext i8 %18 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %conv83 = zext i8 %conv2.i.i116.1 to i32
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
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %2 = load i8, i8* %x, align 1
  %conv9 = zext i8 %2 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %3 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %conv16 = zext i8 %call to i32
  %4 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %5 to i32
  %conv1.i.i32.1 = zext i8 %4 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %conv18 = zext i8 %conv2.i.i34.1 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @exp4(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  %call2 = call zeroext i8 @exp4(i8 zeroext %call1)
  %call3 = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call2)
  %call4 = call zeroext i8 @exp16(i8 zeroext %call3)
  %call5 = call zeroext i8 @mult(i8 zeroext %call4, i8 zeroext %call2)
  %call6 = call zeroext i8 @mult(i8 zeroext %call5, i8 zeroext %call)
  ret i8 %call6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x i8], align 1
  %w = alloca [2 x i8], align 1
  %u = alloca [2 x i8], align 1
  %v = alloca [2 x i8], align 1
  %m = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep270.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep270.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %2) #3
  %scevgep266 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep266, align 1
  %scevgep265.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep265.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %3) #3
  %scevgep266.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep266.1, align 1
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep261 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %4 = load i8, i8* %scevgep261, align 1
  %scevgep261.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %5 = load i8, i8* %scevgep261.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %6 = load i8, i8* %arraydecay4, align 1
  %conv9.i = zext i8 %6 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay4, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep257 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %7 = load i8, i8* %scevgep257, align 1
  %conv13.i = zext i8 %7 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep257, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep253 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %8 = load i8, i8* %scevgep253, align 1
  %scevgep253.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %9 = load i8, i8* %scevgep253.1, align 1
  %conv.i.i31.i.1 = zext i8 %9 to i32
  %conv1.i.i32.i.1 = zext i8 %8 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.1 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep249 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %10 = load i8, i8* %scevgep249, align 1
  %scevgep249.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %11 = load i8, i8* %scevgep249.1, align 1
  %conv.i.i.i48.1 = zext i8 %11 to i32
  %conv1.i.i.i49.1 = zext i8 %10 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.1 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %12 = load i8, i8* %x, align 1
  %scevgep245.1 = getelementptr i8, i8* %x, i64 1
  %13 = load i8, i8* %scevgep245.1, align 1
  %conv.i.i96.i.1 = zext i8 %13 to i32
  %conv1.i.i97.i.1 = zext i8 %12 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep229 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep229, align 1
  %scevgep230 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep230, align 1
  %conv23.i = zext i8 %14 to i32
  %15 = load i8, i8* %arraydecay5, align 1
  %scevgep233 = getelementptr i8, i8* %x, i64 1
  %16 = load i8, i8* %scevgep233, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i60 = xor i32 %conv23.i, %conv29.i
  %scevgep236 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %17 = load i8, i8* %scevgep236, align 1
  %18 = load i8, i8* %x, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i60, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %scevgep237 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i, i8* %scevgep237, align 1
  %19 = load i8, i8* %arraydecay5, align 1
  %20 = load i8, i8* %x, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  store i8 %call54.i, i8* %arraydecay6, align 1
  %scevgep221.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %21 = load i8, i8* %scevgep221.1, align 1
  %conv68.i.1 = zext i8 %21 to i32
  %22 = load i8, i8* %arraydecay6, align 1
  %conv71.i.1 = zext i8 %22 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay6, align 1
  %scevgep220 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep220 to [2 x [2 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %24 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %25 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep221.1301 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %23, i64 0, i64 0, i64 0
  %26 = load i8, i8* %scevgep221.1301, align 1
  %conv68.i.1302 = zext i8 %26 to i32
  %27 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1303 = zext i8 %27 to i32
  %xor72.i.1304 = xor i32 %conv71.i.1303, %conv68.i.1302
  %conv73.i.1305 = trunc i32 %xor72.i.1304 to i8
  store i8 %conv73.i.1305, i8* %arrayidx70.i.1, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep211 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %28 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %29 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i113.i.1 = zext i8 %29 to i32
  %conv1.i.i114.i.1 = zext i8 %28 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.1 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep206 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %30 = load i8, i8* %scevgep206, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %30) #3
  %scevgep207 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep207, align 1
  %scevgep206.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %31 = load i8, i8* %scevgep206.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %31) #3
  %scevgep207.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep207.1, align 1
  %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep202 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %32 = load i8, i8* %scevgep202, align 1
  %scevgep202.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %33 = load i8, i8* %scevgep202.1, align 1
  %conv.i.i.i99.1 = zext i8 %33 to i32
  %conv1.i.i.i100.1 = zext i8 %32 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.1 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %34 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %34 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep198 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %35 = load i8, i8* %scevgep198, align 1
  %conv13.i119 = zext i8 %35 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep198, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep194 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %36 = load i8, i8* %scevgep194, align 1
  %scevgep194.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %37 = load i8, i8* %scevgep194.1, align 1
  %conv.i.i31.i131.1 = zext i8 %37 to i32
  %conv1.i.i32.i132.1 = zext i8 %36 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.1 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %call.i165 = call zeroext i8 (...) @rand() #3
  %call1.i166 = call zeroext i8 (...) @rand() #3
  %conv.i167 = zext i8 %call.i165 to i32
  %scevgep190 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %38 = load i8, i8* %scevgep190, align 1
  %scevgep190.1 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %39 = load i8, i8* %scevgep190.1, align 1
  %conv.i.i.i173.1 = zext i8 %39 to i32
  %conv1.i.i.i174.1 = zext i8 %38 to i32
  %xor.i.i.i175.1 = xor i32 %conv1.i.i.i174.1, %conv.i.i.i173.1
  %conv2.i.i.i176.1 = trunc i32 %xor.i.i.i175.1 to i8
  %conv3.i179 = zext i8 %conv2.i.i.i176.1 to i32
  %cmp.i180 = icmp eq i32 %conv.i167, %conv3.i179
  call void @assume(i1 zeroext %cmp.i180) #3
  %conv5.i181 = zext i8 %call1.i166 to i32
  %scevgep186 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %40 = load i8, i8* %scevgep186, align 1
  %scevgep186.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %41 = load i8, i8* %scevgep186.1, align 1
  %conv.i.i96.i188.1 = zext i8 %41 to i32
  %conv1.i.i97.i189.1 = zext i8 %40 to i32
  %xor.i.i98.i190.1 = xor i32 %conv1.i.i97.i189.1, %conv.i.i96.i188.1
  %conv2.i.i99.i191.1 = trunc i32 %xor.i.i98.i190.1 to i8
  %conv7.i194 = zext i8 %conv2.i.i99.i191.1 to i32
  %cmp8.i195 = icmp eq i32 %conv5.i181, %conv7.i194
  call void @assume(i1 zeroext %cmp8.i195) #3
  %call16.i203 = call zeroext i8 (...) @rand() #3
  %scevgep170 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i203, i8* %scevgep170, align 1
  %scevgep171 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %42 = load i8, i8* %scevgep171, align 1
  %conv23.i212 = zext i8 %42 to i32
  %43 = load i8, i8* %arraydecay10, align 1
  %scevgep174 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %44 = load i8, i8* %scevgep174, align 1
  %call28.i217 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #3
  %conv29.i218 = zext i8 %call28.i217 to i32
  %xor.i219 = xor i32 %conv23.i212, %conv29.i218
  %scevgep177 = getelementptr [2 x i8], [2 x i8]* %u, i64 0, i64 1
  %45 = load i8, i8* %scevgep177, align 1
  %46 = load i8, i8* %arraydecay11, align 1
  %call34.i224 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #3
  %conv35.i225 = zext i8 %call34.i224 to i32
  %xor36.i226 = xor i32 %xor.i219, %conv35.i225
  %conv37.i227 = trunc i32 %xor36.i226 to i8
  %scevgep178 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i227, i8* %scevgep178, align 1
  %47 = load i8, i8* %arraydecay10, align 1
  %48 = load i8, i8* %arraydecay11, align 1
  %call54.i243 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  store i8 %call54.i243, i8* %arraydecay12, align 1
  %scevgep162.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %49 = load i8, i8* %scevgep162.1, align 1
  %conv68.i255.1 = zext i8 %49 to i32
  %50 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.1 = zext i8 %50 to i32
  %xor72.i259.1 = xor i32 %conv71.i258.1, %conv68.i255.1
  %conv73.i260.1 = trunc i32 %xor72.i259.1 to i8
  store i8 %conv73.i260.1, i8* %arraydecay12, align 1
  %scevgep161 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %51 = bitcast i8* %scevgep161 to [2 x [2 x i8]]*
  %arrayidx51.i240.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %52 = load i8, i8* %arrayidx51.i240.1, align 1
  %arrayidx53.i242.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %53 = load i8, i8* %arrayidx53.i242.1, align 1
  %call54.i243.1 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #3
  %arrayidx56.i245.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i243.1, i8* %arrayidx56.i245.1, align 1
  %arrayidx70.i257.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep162.1292 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %51, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep162.1292, align 1
  %conv68.i255.1293 = zext i8 %54 to i32
  %55 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.1294 = zext i8 %55 to i32
  %xor72.i259.1295 = xor i32 %conv71.i258.1294, %conv68.i255.1293
  %conv73.i260.1296 = trunc i32 %xor72.i259.1295 to i8
  store i8 %conv73.i260.1296, i8* %arrayidx70.i257.1, align 1
  %call80.i266 = call zeroext i8 @mult(i8 zeroext %call.i165, i8 zeroext %call1.i166) #3
  %conv81.i267 = zext i8 %call80.i266 to i32
  %scevgep152 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %56 = load i8, i8* %scevgep152, align 1
  %scevgep152.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %57 = load i8, i8* %scevgep152.1, align 1
  %conv.i.i113.i274.1 = zext i8 %57 to i32
  %conv1.i.i114.i275.1 = zext i8 %56 to i32
  %xor.i.i115.i276.1 = xor i32 %conv1.i.i114.i275.1, %conv.i.i113.i274.1
  %conv2.i.i116.i277.1 = trunc i32 %xor.i.i115.i276.1 to i8
  %conv83.i280 = zext i8 %conv2.i.i116.i277.1 to i32
  %cmp84.i281 = icmp eq i32 %conv81.i267, %conv83.i280
  call void @assert(i1 zeroext %cmp84.i281) #3
  %scevgep147 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %58 = load i8, i8* %scevgep147, align 1
  %call.i291 = call zeroext i8 @exp16(i8 zeroext %58) #3
  %scevgep148 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  store i8 %call.i291, i8* %scevgep148, align 1
  %scevgep147.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %59 = load i8, i8* %scevgep147.1, align 1
  %call.i291.1 = call zeroext i8 @exp16(i8 zeroext %59) #3
  %scevgep148.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  store i8 %call.i291.1, i8* %scevgep148.1, align 1
  %arraydecay15 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %call.i323 = call zeroext i8 (...) @rand() #3
  %call1.i324 = call zeroext i8 (...) @rand() #3
  %conv.i325 = zext i8 %call.i323 to i32
  %scevgep143 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %60 = load i8, i8* %scevgep143, align 1
  %scevgep143.1 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %61 = load i8, i8* %scevgep143.1, align 1
  %conv.i.i.i331.1 = zext i8 %61 to i32
  %conv1.i.i.i332.1 = zext i8 %60 to i32
  %xor.i.i.i333.1 = xor i32 %conv1.i.i.i332.1, %conv.i.i.i331.1
  %conv2.i.i.i334.1 = trunc i32 %xor.i.i.i333.1 to i8
  %conv3.i337 = zext i8 %conv2.i.i.i334.1 to i32
  %cmp.i338 = icmp eq i32 %conv.i325, %conv3.i337
  call void @assume(i1 zeroext %cmp.i338) #3
  %conv5.i339 = zext i8 %call1.i324 to i32
  %scevgep139 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %62 = load i8, i8* %scevgep139, align 1
  %scevgep139.1 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %63 = load i8, i8* %scevgep139.1, align 1
  %conv.i.i96.i346.1 = zext i8 %63 to i32
  %conv1.i.i97.i347.1 = zext i8 %62 to i32
  %xor.i.i98.i348.1 = xor i32 %conv1.i.i97.i347.1, %conv.i.i96.i346.1
  %conv2.i.i99.i349.1 = trunc i32 %xor.i.i98.i348.1 to i8
  %conv7.i352 = zext i8 %conv2.i.i99.i349.1 to i32
  %cmp8.i353 = icmp eq i32 %conv5.i339, %conv7.i352
  call void @assume(i1 zeroext %cmp8.i353) #3
  %call16.i361 = call zeroext i8 (...) @rand() #3
  %scevgep123 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i361, i8* %scevgep123, align 1
  %scevgep124 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %64 = load i8, i8* %scevgep124, align 1
  %conv23.i370 = zext i8 %64 to i32
  %65 = load i8, i8* %arraydecay15, align 1
  %scevgep127 = getelementptr [2 x i8], [2 x i8]* %w, i64 0, i64 1
  %66 = load i8, i8* %scevgep127, align 1
  %call28.i375 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %conv29.i376 = zext i8 %call28.i375 to i32
  %xor.i377 = xor i32 %conv23.i370, %conv29.i376
  %scevgep130 = getelementptr [2 x i8], [2 x i8]* %v, i64 0, i64 1
  %67 = load i8, i8* %scevgep130, align 1
  %68 = load i8, i8* %arraydecay16, align 1
  %call34.i382 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %conv35.i383 = zext i8 %call34.i382 to i32
  %xor36.i384 = xor i32 %xor.i377, %conv35.i383
  %conv37.i385 = trunc i32 %xor36.i384 to i8
  %scevgep131 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i385, i8* %scevgep131, align 1
  %69 = load i8, i8* %arraydecay15, align 1
  %70 = load i8, i8* %arraydecay16, align 1
  %call54.i401 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #3
  store i8 %call54.i401, i8* %arraydecay17, align 1
  %scevgep115.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep115.1, align 1
  %conv68.i413.1 = zext i8 %71 to i32
  %72 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.1 = zext i8 %72 to i32
  %xor72.i417.1 = xor i32 %conv71.i416.1, %conv68.i413.1
  %conv73.i418.1 = trunc i32 %xor72.i417.1 to i8
  store i8 %conv73.i418.1, i8* %arraydecay17, align 1
  %scevgep114 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep114 to [2 x [2 x i8]]*
  %arrayidx51.i398.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %74 = load i8, i8* %arrayidx51.i398.1, align 1
  %arrayidx53.i400.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %75 = load i8, i8* %arrayidx53.i400.1, align 1
  %call54.i401.1 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #3
  %arrayidx56.i403.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call54.i401.1, i8* %arrayidx56.i403.1, align 1
  %arrayidx70.i415.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep115.1283 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %73, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep115.1283, align 1
  %conv68.i413.1284 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.1285 = zext i8 %77 to i32
  %xor72.i417.1286 = xor i32 %conv71.i416.1285, %conv68.i413.1284
  %conv73.i418.1287 = trunc i32 %xor72.i417.1286 to i8
  store i8 %conv73.i418.1287, i8* %arrayidx70.i415.1, align 1
  %call80.i424 = call zeroext i8 @mult(i8 zeroext %call.i323, i8 zeroext %call1.i324) #3
  %conv81.i425 = zext i8 %call80.i424 to i32
  %scevgep105 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %78 = load i8, i8* %scevgep105, align 1
  %scevgep105.1 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %79 = load i8, i8* %scevgep105.1, align 1
  %conv.i.i113.i432.1 = zext i8 %79 to i32
  %conv1.i.i114.i433.1 = zext i8 %78 to i32
  %xor.i.i115.i434.1 = xor i32 %conv1.i.i114.i433.1, %conv.i.i113.i432.1
  %conv2.i.i116.i435.1 = trunc i32 %xor.i.i115.i434.1 to i8
  %conv83.i438 = zext i8 %conv2.i.i116.i435.1 to i32
  %cmp84.i439 = icmp eq i32 %conv81.i425, %conv83.i438
  call void @assert(i1 zeroext %cmp84.i439) #3
  %arraydecay18 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %call.i466 = call zeroext i8 (...) @rand() #3
  %call1.i467 = call zeroext i8 (...) @rand() #3
  %conv.i468 = zext i8 %call.i466 to i32
  %scevgep101 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %80 = load i8, i8* %scevgep101, align 1
  %scevgep101.1 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %81 = load i8, i8* %scevgep101.1, align 1
  %conv.i.i.i474.1 = zext i8 %81 to i32
  %conv1.i.i.i475.1 = zext i8 %80 to i32
  %xor.i.i.i476.1 = xor i32 %conv1.i.i.i475.1, %conv.i.i.i474.1
  %conv2.i.i.i477.1 = trunc i32 %xor.i.i.i476.1 to i8
  %conv3.i480 = zext i8 %conv2.i.i.i477.1 to i32
  %cmp.i481 = icmp eq i32 %conv.i468, %conv3.i480
  call void @assume(i1 zeroext %cmp.i481) #3
  %conv5.i482 = zext i8 %call1.i467 to i32
  %scevgep97 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %82 = load i8, i8* %scevgep97, align 1
  %scevgep97.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %83 = load i8, i8* %scevgep97.1, align 1
  %conv.i.i96.i489.1 = zext i8 %83 to i32
  %conv1.i.i97.i490.1 = zext i8 %82 to i32
  %xor.i.i98.i491.1 = xor i32 %conv1.i.i97.i490.1, %conv.i.i96.i489.1
  %conv2.i.i99.i492.1 = trunc i32 %xor.i.i98.i491.1 to i8
  %conv7.i495 = zext i8 %conv2.i.i99.i492.1 to i32
  %cmp8.i496 = icmp eq i32 %conv5.i482, %conv7.i495
  call void @assume(i1 zeroext %cmp8.i496) #3
  %call16.i504 = call zeroext i8 (...) @rand() #3
  %scevgep81 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i504, i8* %scevgep81, align 1
  %scevgep82 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %84 = load i8, i8* %scevgep82, align 1
  %conv23.i513 = zext i8 %84 to i32
  %85 = load i8, i8* %arraydecay18, align 1
  %scevgep85 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %86 = load i8, i8* %scevgep85, align 1
  %call28.i518 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #3
  %conv29.i519 = zext i8 %call28.i518 to i32
  %xor.i520 = xor i32 %conv23.i513, %conv29.i519
  %scevgep88 = getelementptr [2 x i8], [2 x i8]* %m, i64 0, i64 1
  %87 = load i8, i8* %scevgep88, align 1
  %88 = load i8, i8* %arraydecay19, align 1
  %call34.i525 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %conv35.i526 = zext i8 %call34.i525 to i32
  %xor36.i527 = xor i32 %xor.i520, %conv35.i526
  %conv37.i528 = trunc i32 %xor36.i527 to i8
  %scevgep89 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i528, i8* %scevgep89, align 1
  %89 = load i8, i8* %arraydecay18, align 1
  %90 = load i8, i8* %arraydecay19, align 1
  %call54.i544 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #3
  store i8 %call54.i544, i8* %y, align 1
  %scevgep74.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %91 = load i8, i8* %scevgep74.1, align 1
  %conv68.i556.1 = zext i8 %91 to i32
  %92 = load i8, i8* %y, align 1
  %conv71.i559.1 = zext i8 %92 to i32
  %xor72.i560.1 = xor i32 %conv71.i559.1, %conv68.i556.1
  %conv73.i561.1 = trunc i32 %xor72.i560.1 to i8
  store i8 %conv73.i561.1, i8* %y, align 1
  %scevgep73 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %93 = bitcast i8* %scevgep73 to [2 x [2 x i8]]*
  %arrayidx51.i541.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %94 = load i8, i8* %arrayidx51.i541.1, align 1
  %arrayidx53.i543.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %95 = load i8, i8* %arrayidx53.i543.1, align 1
  %call54.i544.1 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  %arrayidx56.i546.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.1, i8* %arrayidx56.i546.1, align 1
  %arrayidx70.i558.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep74.1274 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %93, i64 0, i64 0, i64 0
  %96 = load i8, i8* %scevgep74.1274, align 1
  %conv68.i556.1275 = zext i8 %96 to i32
  %97 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.1276 = zext i8 %97 to i32
  %xor72.i560.1277 = xor i32 %conv71.i559.1276, %conv68.i556.1275
  %conv73.i561.1278 = trunc i32 %xor72.i560.1277 to i8
  store i8 %conv73.i561.1278, i8* %arrayidx70.i558.1, align 1
  %call80.i567 = call zeroext i8 @mult(i8 zeroext %call.i466, i8 zeroext %call1.i467) #3
  %conv81.i568 = zext i8 %call80.i567 to i32
  %98 = load i8, i8* %y, align 1
  %scevgep64.1 = getelementptr i8, i8* %y, i64 1
  %99 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i113.i575.1 = zext i8 %99 to i32
  %conv1.i.i114.i576.1 = zext i8 %98 to i32
  %xor.i.i115.i577.1 = xor i32 %conv1.i.i114.i576.1, %conv.i.i113.i575.1
  %conv2.i.i116.i578.1 = trunc i32 %xor.i.i115.i577.1 to i8
  %conv83.i581 = zext i8 %conv2.i.i116.i578.1 to i32
  %cmp84.i582 = icmp eq i32 %conv81.i568, %conv83.i581
  call void @assert(i1 zeroext %cmp84.i582) #3
  %call.i585 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i586 = call zeroext i8 @mult(i8 zeroext %call.i585, i8 zeroext %call) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i586) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i586, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i585) #3
  %conv21 = zext i8 %call6.i to i32
  %100 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %101 = load i8, i8* %scevgep.1, align 1
  %conv.i.i597.1 = zext i8 %101 to i32
  %conv1.i.i598.1 = zext i8 %100 to i32
  %xor.i.i599.1 = xor i32 %conv1.i.i598.1, %conv.i.i597.1
  %conv2.i.i600.1 = trunc i32 %xor.i.i599.1 to i8
  %conv23 = zext i8 %conv2.i.i600.1 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep81.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep81.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %scevgep77 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %2, i8* %scevgep77, align 1
  %scevgep76.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep76.1, align 1
  %scevgep77.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %3, i8* %scevgep77.1, align 1
  %arrayidx6 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %4 = load i8, i8* %x, align 1
  %scevgep32.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep32.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep38 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %6 = load i8, i8* %scevgep38, align 1
  %scevgep38.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %7 = load i8, i8* %scevgep38.1, align 1
  %conv.i.i96.i.1 = zext i8 %7 to i32
  %conv1.i.i97.i.1 = zext i8 %6 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep44 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep44, align 1
  %scevgep45 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep45, align 1
  %conv23.i = zext i8 %8 to i32
  %9 = load i8, i8* %x, align 1
  %scevgep48 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep48, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %scevgep51 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep51, align 1
  %12 = load i8, i8* %arraydecay7, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %scevgep52 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i, i8* %scevgep52, align 1
  %13 = load i8, i8* %x, align 1
  %14 = load i8, i8* %arraydecay7, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #3
  store i8 %call54.i, i8* %arraydecay10, align 1
  %scevgep65.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep65.1, align 1
  %conv68.i.1 = zext i8 %15 to i32
  %16 = load i8, i8* %arraydecay10, align 1
  %conv71.i.1 = zext i8 %16 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay10, align 1
  %scevgep64 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep64 to [2 x [2 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %18 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %19 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep65.185 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  %20 = load i8, i8* %scevgep65.185, align 1
  %conv68.i.186 = zext i8 %20 to i32
  %21 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.187 = zext i8 %21 to i32
  %xor72.i.188 = xor i32 %conv71.i.187, %conv68.i.186
  %conv73.i.189 = trunc i32 %xor72.i.188 to i8
  store i8 %conv73.i.189, i8* %arrayidx70.i.1, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep71 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep72 = getelementptr i8, i8* %scevgep71, i64 2
  %22 = load i8, i8* %scevgep72, align 1
  %scevgep71.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep72.1 = getelementptr i8, i8* %scevgep71.1, i64 2
  %23 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i113.i.1 = zext i8 %23 to i32
  %conv1.i.i114.i.1 = zext i8 %22 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.1 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep24 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %24 = load i8, i8* %scevgep24, align 1
  store i8 %24, i8* %y, align 1
  %scevgep27.1 = getelementptr i8, i8* %scevgep24, i64 1
  %25 = load i8, i8* %scevgep27.1, align 1
  %scevgep28.1 = getelementptr i8, i8* %y, i64 1
  store i8 %25, i8* %scevgep28.1, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48 to i32
  %26 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %27 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %27 to i32
  %conv1.i.i63.1 = zext i8 %26 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %conv16 = zext i8 %conv2.i.i65.1 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  call void @assert(i1 zeroext %cmp17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @af(i8 zeroext %x) #2 {
entry:
  %conv = zext i8 %x to i32
  %call = call zeroext i8 @rotl1(i8 zeroext %x)
  %conv1 = zext i8 %call to i32
  %xor = xor i32 %conv, %conv1
  %call2 = call zeroext i8 @rotl2(i8 zeroext %x)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %call5 = call zeroext i8 @rotl3(i8 zeroext %x)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor4, %conv6
  %call8 = call zeroext i8 @rotl4(i8 zeroext %x)
  %conv9 = zext i8 %call8 to i32
  %xor10 = xor i32 %xor7, %conv9
  %xor11 = xor i32 %xor10, 99
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

declare dso_local zeroext i8 @rotl1(i8 zeroext) #1

declare dso_local zeroext i8 @rotl2(i8 zeroext) #1

declare dso_local zeroext i8 @rotl3(i8 zeroext) #1

declare dso_local zeroext i8 @rotl4(i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sbox(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %x) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i) #3
  %call1 = call zeroext i8 @af(i8 zeroext %call6.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %r.i.i = alloca [2 x [2 x i8]], align 1
  %z.i = alloca [2 x i8], align 1
  %w.i = alloca [2 x i8], align 1
  %u.i = alloca [2 x i8], align 1
  %v.i = alloca [2 x i8], align 1
  %m.i = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep288.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep288.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %2 = load i8, i8* %x, align 1
  %scevgep284.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep284.1, align 1
  %conv.i.i.i.1 = zext i8 %3 to i32
  %conv1.i.i.i.1 = zext i8 %2 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %4 = load i8, i8* %x, align 1
  %call.i.i19 = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep280 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i19, i8* %scevgep280, align 1
  %scevgep279.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep279.1, align 1
  %call.i.i19.1 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep280.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i19.1, i8* %scevgep280.1, align 1
  %arraydecay4.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i22 = zext i8 %call.i28.i to i32
  %scevgep275 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %6 = load i8, i8* %scevgep275, align 1
  %scevgep275.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %7 = load i8, i8* %scevgep275.1, align 1
  %conv.i.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %conv2.i.i23 = zext i8 %conv2.i.i.i.i.1 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i22, %conv2.i.i23
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %8 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %xor.i.i24 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i24 to i8
  store i8 %conv10.i.i, i8* %arraydecay4.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep271 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %9 = load i8, i8* %scevgep271, align 1
  %conv13.i.i = zext i8 %9 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep271, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep267 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %10 = load i8, i8* %scevgep267, align 1
  %scevgep267.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %11 = load i8, i8* %scevgep267.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %11 to i32
  %conv1.i.i32.i.i.1 = zext i8 %10 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.1 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep263 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep263, align 1
  %scevgep263.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep263.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %13 to i32
  %conv1.i.i.i49.i.1 = zext i8 %12 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.1 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %14 = load i8, i8* %x, align 1
  %scevgep259.1 = getelementptr i8, i8* %x, i64 1
  %15 = load i8, i8* %scevgep259.1, align 1
  %conv.i.i96.i.i.1 = zext i8 %15 to i32
  %conv1.i.i97.i.i.1 = zext i8 %14 to i32
  %xor.i.i98.i.i.1 = xor i32 %conv1.i.i97.i.i.1, %conv.i.i96.i.i.1
  %conv2.i.i99.i.i.1 = trunc i32 %xor.i.i98.i.i.1 to i8
  %conv7.i.i = zext i8 %conv2.i.i99.i.i.1 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %scevgep243 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i.i, i8* %scevgep243, align 1
  %scevgep244 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep244, align 1
  %conv23.i.i = zext i8 %16 to i32
  %17 = load i8, i8* %arraydecay5.i, align 1
  %scevgep247 = getelementptr i8, i8* %x, i64 1
  %18 = load i8, i8* %scevgep247, align 1
  %call28.i.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  %conv29.i.i = zext i8 %call28.i.i to i32
  %xor.i60.i = xor i32 %conv23.i.i, %conv29.i.i
  %scevgep250 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %19 = load i8, i8* %scevgep250, align 1
  %20 = load i8, i8* %x, align 1
  %call34.i.i = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  %conv35.i.i = zext i8 %call34.i.i to i32
  %xor36.i.i = xor i32 %xor.i60.i, %conv35.i.i
  %conv37.i.i = trunc i32 %xor36.i.i to i8
  %scevgep251 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i.i, i8* %scevgep251, align 1
  %21 = load i8, i8* %arraydecay5.i, align 1
  %22 = load i8, i8* %x, align 1
  %call54.i.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  store i8 %call54.i.i, i8* %arraydecay6.i, align 1
  %scevgep235.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep235.1, align 1
  %conv68.i.i.1 = zext i8 %23 to i32
  %24 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.1 = zext i8 %24 to i32
  %xor72.i.i.1 = xor i32 %conv71.i.i.1, %conv68.i.i.1
  %conv73.i.i.1 = trunc i32 %xor72.i.i.1 to i8
  store i8 %conv73.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep234 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep234 to [2 x [2 x i8]]*
  %arrayidx51.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %26 = load i8, i8* %arrayidx51.i.i.1, align 1
  %arrayidx53.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %27 = load i8, i8* %arrayidx53.i.i.1, align 1
  %call54.i.i.1 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call54.i.i.1, i8* %arrayidx56.i.i.1, align 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep235.1319 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  %28 = load i8, i8* %scevgep235.1319, align 1
  %conv68.i.i.1320 = zext i8 %28 to i32
  %29 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.1321 = zext i8 %29 to i32
  %xor72.i.i.1322 = xor i32 %conv71.i.i.1321, %conv68.i.i.1320
  %conv73.i.i.1323 = trunc i32 %xor72.i.i.1322 to i8
  store i8 %conv73.i.i.1323, i8* %arrayidx70.i.i.1, align 1
  %call80.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv81.i.i = zext i8 %call80.i.i to i32
  %scevgep225 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %30 = load i8, i8* %scevgep225, align 1
  %scevgep225.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %31 = load i8, i8* %scevgep225.1, align 1
  %conv.i.i113.i.i.1 = zext i8 %31 to i32
  %conv1.i.i114.i.i.1 = zext i8 %30 to i32
  %xor.i.i115.i.i.1 = xor i32 %conv1.i.i114.i.i.1, %conv.i.i113.i.i.1
  %conv2.i.i116.i.i.1 = trunc i32 %xor.i.i115.i.i.1 to i8
  %conv83.i.i = zext i8 %conv2.i.i116.i.i.1 to i32
  %cmp84.i.i = icmp eq i32 %conv81.i.i, %conv83.i.i
  call void @assert(i1 zeroext %cmp84.i.i) #3
  %scevgep220 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %32 = load i8, i8* %scevgep220, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %32) #3
  %scevgep221 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep221, align 1
  %scevgep220.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %33 = load i8, i8* %scevgep220.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %33) #3
  %scevgep221.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep221.1, align 1
  %arraydecay9.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep216 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %34 = load i8, i8* %scevgep216, align 1
  %scevgep216.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %35 = load i8, i8* %scevgep216.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %35 to i32
  %conv1.i.i.i100.i.1 = zext i8 %34 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.1 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %36 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %36 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep212 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %37 = load i8, i8* %scevgep212, align 1
  %conv13.i119.i = zext i8 %37 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep212, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep208 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %38 = load i8, i8* %scevgep208, align 1
  %scevgep208.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %39 = load i8, i8* %scevgep208.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %39 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %38 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.1 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %call.i165.i = call zeroext i8 (...) @rand() #3
  %call1.i166.i = call zeroext i8 (...) @rand() #3
  %conv.i167.i = zext i8 %call.i165.i to i32
  %scevgep204 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %40 = load i8, i8* %scevgep204, align 1
  %scevgep204.1 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %41 = load i8, i8* %scevgep204.1, align 1
  %conv.i.i.i173.i.1 = zext i8 %41 to i32
  %conv1.i.i.i174.i.1 = zext i8 %40 to i32
  %xor.i.i.i175.i.1 = xor i32 %conv1.i.i.i174.i.1, %conv.i.i.i173.i.1
  %conv2.i.i.i176.i.1 = trunc i32 %xor.i.i.i175.i.1 to i8
  %conv3.i179.i = zext i8 %conv2.i.i.i176.i.1 to i32
  %cmp.i180.i = icmp eq i32 %conv.i167.i, %conv3.i179.i
  call void @assume(i1 zeroext %cmp.i180.i) #3
  %conv5.i181.i = zext i8 %call1.i166.i to i32
  %scevgep200 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %42 = load i8, i8* %scevgep200, align 1
  %scevgep200.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %43 = load i8, i8* %scevgep200.1, align 1
  %conv.i.i96.i188.i.1 = zext i8 %43 to i32
  %conv1.i.i97.i189.i.1 = zext i8 %42 to i32
  %xor.i.i98.i190.i.1 = xor i32 %conv1.i.i97.i189.i.1, %conv.i.i96.i188.i.1
  %conv2.i.i99.i191.i.1 = trunc i32 %xor.i.i98.i190.i.1 to i8
  %conv7.i194.i = zext i8 %conv2.i.i99.i191.i.1 to i32
  %cmp8.i195.i = icmp eq i32 %conv5.i181.i, %conv7.i194.i
  call void @assume(i1 zeroext %cmp8.i195.i) #3
  %call16.i203.i = call zeroext i8 (...) @rand() #3
  %scevgep184 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i203.i, i8* %scevgep184, align 1
  %scevgep185 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %44 = load i8, i8* %scevgep185, align 1
  %conv23.i212.i = zext i8 %44 to i32
  %45 = load i8, i8* %arraydecay10.i, align 1
  %scevgep188 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %46 = load i8, i8* %scevgep188, align 1
  %call28.i217.i = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #3
  %conv29.i218.i = zext i8 %call28.i217.i to i32
  %xor.i219.i = xor i32 %conv23.i212.i, %conv29.i218.i
  %scevgep191 = getelementptr [2 x i8], [2 x i8]* %u.i, i64 0, i64 1
  %47 = load i8, i8* %scevgep191, align 1
  %48 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  %conv35.i225.i = zext i8 %call34.i224.i to i32
  %xor36.i226.i = xor i32 %xor.i219.i, %conv35.i225.i
  %conv37.i227.i = trunc i32 %xor36.i226.i to i8
  %scevgep192 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i227.i, i8* %scevgep192, align 1
  %49 = load i8, i8* %arraydecay10.i, align 1
  %50 = load i8, i8* %arraydecay11.i, align 1
  %call54.i243.i = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50) #3
  store i8 %call54.i243.i, i8* %arraydecay12.i, align 1
  %scevgep176.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep176.1, align 1
  %conv68.i255.i.1 = zext i8 %51 to i32
  %52 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.1 = zext i8 %52 to i32
  %xor72.i259.i.1 = xor i32 %conv71.i258.i.1, %conv68.i255.i.1
  %conv73.i260.i.1 = trunc i32 %xor72.i259.i.1 to i8
  store i8 %conv73.i260.i.1, i8* %arraydecay12.i, align 1
  %scevgep175 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep175 to [2 x [2 x i8]]*
  %arrayidx51.i240.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %54 = load i8, i8* %arrayidx51.i240.i.1, align 1
  %arrayidx53.i242.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %55 = load i8, i8* %arrayidx53.i242.i.1, align 1
  %call54.i243.i.1 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %arrayidx56.i245.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call54.i243.i.1, i8* %arrayidx56.i245.i.1, align 1
  %arrayidx70.i257.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep176.1310 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %53, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep176.1310, align 1
  %conv68.i255.i.1311 = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.1312 = zext i8 %57 to i32
  %xor72.i259.i.1313 = xor i32 %conv71.i258.i.1312, %conv68.i255.i.1311
  %conv73.i260.i.1314 = trunc i32 %xor72.i259.i.1313 to i8
  store i8 %conv73.i260.i.1314, i8* %arrayidx70.i257.i.1, align 1
  %call80.i266.i = call zeroext i8 @mult(i8 zeroext %call.i165.i, i8 zeroext %call1.i166.i) #3
  %conv81.i267.i = zext i8 %call80.i266.i to i32
  %scevgep166 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %58 = load i8, i8* %scevgep166, align 1
  %scevgep166.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %59 = load i8, i8* %scevgep166.1, align 1
  %conv.i.i113.i274.i.1 = zext i8 %59 to i32
  %conv1.i.i114.i275.i.1 = zext i8 %58 to i32
  %xor.i.i115.i276.i.1 = xor i32 %conv1.i.i114.i275.i.1, %conv.i.i113.i274.i.1
  %conv2.i.i116.i277.i.1 = trunc i32 %xor.i.i115.i276.i.1 to i8
  %conv83.i280.i = zext i8 %conv2.i.i116.i277.i.1 to i32
  %cmp84.i281.i = icmp eq i32 %conv81.i267.i, %conv83.i280.i
  call void @assert(i1 zeroext %cmp84.i281.i) #3
  %scevgep161 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %60 = load i8, i8* %scevgep161, align 1
  %call.i291.i = call zeroext i8 @exp16(i8 zeroext %60) #3
  %scevgep162 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i291.i, i8* %scevgep162, align 1
  %scevgep161.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %61 = load i8, i8* %scevgep161.1, align 1
  %call.i291.i.1 = call zeroext i8 @exp16(i8 zeroext %61) #3
  %scevgep162.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i291.i.1, i8* %scevgep162.1, align 1
  %arraydecay15.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %call.i323.i = call zeroext i8 (...) @rand() #3
  %call1.i324.i = call zeroext i8 (...) @rand() #3
  %conv.i325.i = zext i8 %call.i323.i to i32
  %scevgep157 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %62 = load i8, i8* %scevgep157, align 1
  %scevgep157.1 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %63 = load i8, i8* %scevgep157.1, align 1
  %conv.i.i.i331.i.1 = zext i8 %63 to i32
  %conv1.i.i.i332.i.1 = zext i8 %62 to i32
  %xor.i.i.i333.i.1 = xor i32 %conv1.i.i.i332.i.1, %conv.i.i.i331.i.1
  %conv2.i.i.i334.i.1 = trunc i32 %xor.i.i.i333.i.1 to i8
  %conv3.i337.i = zext i8 %conv2.i.i.i334.i.1 to i32
  %cmp.i338.i = icmp eq i32 %conv.i325.i, %conv3.i337.i
  call void @assume(i1 zeroext %cmp.i338.i) #3
  %conv5.i339.i = zext i8 %call1.i324.i to i32
  %scevgep153 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %64 = load i8, i8* %scevgep153, align 1
  %scevgep153.1 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %65 = load i8, i8* %scevgep153.1, align 1
  %conv.i.i96.i346.i.1 = zext i8 %65 to i32
  %conv1.i.i97.i347.i.1 = zext i8 %64 to i32
  %xor.i.i98.i348.i.1 = xor i32 %conv1.i.i97.i347.i.1, %conv.i.i96.i346.i.1
  %conv2.i.i99.i349.i.1 = trunc i32 %xor.i.i98.i348.i.1 to i8
  %conv7.i352.i = zext i8 %conv2.i.i99.i349.i.1 to i32
  %cmp8.i353.i = icmp eq i32 %conv5.i339.i, %conv7.i352.i
  call void @assume(i1 zeroext %cmp8.i353.i) #3
  %call16.i361.i = call zeroext i8 (...) @rand() #3
  %scevgep137 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i361.i, i8* %scevgep137, align 1
  %scevgep138 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep138, align 1
  %conv23.i370.i = zext i8 %66 to i32
  %67 = load i8, i8* %arraydecay15.i, align 1
  %scevgep141 = getelementptr [2 x i8], [2 x i8]* %w.i, i64 0, i64 1
  %68 = load i8, i8* %scevgep141, align 1
  %call28.i375.i = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %conv29.i376.i = zext i8 %call28.i375.i to i32
  %xor.i377.i = xor i32 %conv23.i370.i, %conv29.i376.i
  %scevgep144 = getelementptr [2 x i8], [2 x i8]* %v.i, i64 0, i64 1
  %69 = load i8, i8* %scevgep144, align 1
  %70 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #3
  %conv35.i383.i = zext i8 %call34.i382.i to i32
  %xor36.i384.i = xor i32 %xor.i377.i, %conv35.i383.i
  %conv37.i385.i = trunc i32 %xor36.i384.i to i8
  %scevgep145 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i385.i, i8* %scevgep145, align 1
  %71 = load i8, i8* %arraydecay15.i, align 1
  %72 = load i8, i8* %arraydecay16.i, align 1
  %call54.i401.i = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #3
  store i8 %call54.i401.i, i8* %arraydecay17.i, align 1
  %scevgep129.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %73 = load i8, i8* %scevgep129.1, align 1
  %conv68.i413.i.1 = zext i8 %73 to i32
  %74 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.1 = zext i8 %74 to i32
  %xor72.i417.i.1 = xor i32 %conv71.i416.i.1, %conv68.i413.i.1
  %conv73.i418.i.1 = trunc i32 %xor72.i417.i.1 to i8
  store i8 %conv73.i418.i.1, i8* %arraydecay17.i, align 1
  %scevgep128 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep128 to [2 x [2 x i8]]*
  %arrayidx51.i398.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %76 = load i8, i8* %arrayidx51.i398.i.1, align 1
  %arrayidx53.i400.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %77 = load i8, i8* %arrayidx53.i400.i.1, align 1
  %call54.i401.i.1 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #3
  %arrayidx56.i403.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call54.i401.i.1, i8* %arrayidx56.i403.i.1, align 1
  %arrayidx70.i415.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep129.1301 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %75, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep129.1301, align 1
  %conv68.i413.i.1302 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.1303 = zext i8 %79 to i32
  %xor72.i417.i.1304 = xor i32 %conv71.i416.i.1303, %conv68.i413.i.1302
  %conv73.i418.i.1305 = trunc i32 %xor72.i417.i.1304 to i8
  store i8 %conv73.i418.i.1305, i8* %arrayidx70.i415.i.1, align 1
  %call80.i424.i = call zeroext i8 @mult(i8 zeroext %call.i323.i, i8 zeroext %call1.i324.i) #3
  %conv81.i425.i = zext i8 %call80.i424.i to i32
  %scevgep119 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %80 = load i8, i8* %scevgep119, align 1
  %scevgep119.1 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %81 = load i8, i8* %scevgep119.1, align 1
  %conv.i.i113.i432.i.1 = zext i8 %81 to i32
  %conv1.i.i114.i433.i.1 = zext i8 %80 to i32
  %xor.i.i115.i434.i.1 = xor i32 %conv1.i.i114.i433.i.1, %conv.i.i113.i432.i.1
  %conv2.i.i116.i435.i.1 = trunc i32 %xor.i.i115.i434.i.1 to i8
  %conv83.i438.i = zext i8 %conv2.i.i116.i435.i.1 to i32
  %cmp84.i439.i = icmp eq i32 %conv81.i425.i, %conv83.i438.i
  call void @assert(i1 zeroext %cmp84.i439.i) #3
  %arraydecay18.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %call.i466.i = call zeroext i8 (...) @rand() #3
  %call1.i467.i = call zeroext i8 (...) @rand() #3
  %conv.i468.i = zext i8 %call.i466.i to i32
  %scevgep115 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %82 = load i8, i8* %scevgep115, align 1
  %scevgep115.1 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %83 = load i8, i8* %scevgep115.1, align 1
  %conv.i.i.i474.i.1 = zext i8 %83 to i32
  %conv1.i.i.i475.i.1 = zext i8 %82 to i32
  %xor.i.i.i476.i.1 = xor i32 %conv1.i.i.i475.i.1, %conv.i.i.i474.i.1
  %conv2.i.i.i477.i.1 = trunc i32 %xor.i.i.i476.i.1 to i8
  %conv3.i480.i = zext i8 %conv2.i.i.i477.i.1 to i32
  %cmp.i481.i = icmp eq i32 %conv.i468.i, %conv3.i480.i
  call void @assume(i1 zeroext %cmp.i481.i) #3
  %conv5.i482.i = zext i8 %call1.i467.i to i32
  %scevgep111 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %84 = load i8, i8* %scevgep111, align 1
  %scevgep111.1 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %85 = load i8, i8* %scevgep111.1, align 1
  %conv.i.i96.i489.i.1 = zext i8 %85 to i32
  %conv1.i.i97.i490.i.1 = zext i8 %84 to i32
  %xor.i.i98.i491.i.1 = xor i32 %conv1.i.i97.i490.i.1, %conv.i.i96.i489.i.1
  %conv2.i.i99.i492.i.1 = trunc i32 %xor.i.i98.i491.i.1 to i8
  %conv7.i495.i = zext i8 %conv2.i.i99.i492.i.1 to i32
  %cmp8.i496.i = icmp eq i32 %conv5.i482.i, %conv7.i495.i
  call void @assume(i1 zeroext %cmp8.i496.i) #3
  %call16.i504.i = call zeroext i8 (...) @rand() #3
  %scevgep95 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i504.i, i8* %scevgep95, align 1
  %scevgep96 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %86 = load i8, i8* %scevgep96, align 1
  %conv23.i513.i = zext i8 %86 to i32
  %87 = load i8, i8* %arraydecay18.i, align 1
  %scevgep99 = getelementptr [2 x i8], [2 x i8]* %z.i, i64 0, i64 1
  %88 = load i8, i8* %scevgep99, align 1
  %call28.i518.i = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %conv29.i519.i = zext i8 %call28.i518.i to i32
  %xor.i520.i = xor i32 %conv23.i513.i, %conv29.i519.i
  %scevgep102 = getelementptr [2 x i8], [2 x i8]* %m.i, i64 0, i64 1
  %89 = load i8, i8* %scevgep102, align 1
  %90 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #3
  %conv35.i526.i = zext i8 %call34.i525.i to i32
  %xor36.i527.i = xor i32 %xor.i520.i, %conv35.i526.i
  %conv37.i528.i = trunc i32 %xor36.i527.i to i8
  %scevgep103 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i528.i, i8* %scevgep103, align 1
  %91 = load i8, i8* %arraydecay18.i, align 1
  %92 = load i8, i8* %arraydecay19.i, align 1
  %call54.i544.i = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  store i8 %call54.i544.i, i8* %y, align 1
  %scevgep88.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %93 = load i8, i8* %scevgep88.1, align 1
  %conv68.i556.i.1 = zext i8 %93 to i32
  %94 = load i8, i8* %y, align 1
  %conv71.i559.i.1 = zext i8 %94 to i32
  %xor72.i560.i.1 = xor i32 %conv71.i559.i.1, %conv68.i556.i.1
  %conv73.i561.i.1 = trunc i32 %xor72.i560.i.1 to i8
  store i8 %conv73.i561.i.1, i8* %y, align 1
  %scevgep87 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep87 to [2 x [2 x i8]]*
  %arrayidx51.i541.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %96 = load i8, i8* %arrayidx51.i541.i.1, align 1
  %arrayidx53.i543.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %97 = load i8, i8* %arrayidx53.i543.i.1, align 1
  %call54.i544.i.1 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #3
  %arrayidx56.i546.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.i.1, i8* %arrayidx56.i546.i.1, align 1
  %arrayidx70.i558.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep88.1292 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %95, i64 0, i64 0, i64 0
  %98 = load i8, i8* %scevgep88.1292, align 1
  %conv68.i556.i.1293 = zext i8 %98 to i32
  %99 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.1294 = zext i8 %99 to i32
  %xor72.i560.i.1295 = xor i32 %conv71.i559.i.1294, %conv68.i556.i.1293
  %conv73.i561.i.1296 = trunc i32 %xor72.i560.i.1295 to i8
  store i8 %conv73.i561.i.1296, i8* %arrayidx70.i558.i.1, align 1
  %call80.i567.i = call zeroext i8 @mult(i8 zeroext %call.i466.i, i8 zeroext %call1.i467.i) #3
  %conv81.i568.i = zext i8 %call80.i567.i to i32
  %100 = load i8, i8* %y, align 1
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  %101 = load i8, i8* %scevgep78.1, align 1
  %conv.i.i113.i575.i.1 = zext i8 %101 to i32
  %conv1.i.i114.i576.i.1 = zext i8 %100 to i32
  %xor.i.i115.i577.i.1 = xor i32 %conv1.i.i114.i576.i.1, %conv.i.i113.i575.i.1
  %conv2.i.i116.i578.i.1 = trunc i32 %xor.i.i115.i577.i.1 to i8
  %conv83.i581.i = zext i8 %conv2.i.i116.i578.i.1 to i32
  %cmp84.i582.i = icmp eq i32 %conv81.i568.i, %conv83.i581.i
  call void @assert(i1 zeroext %cmp84.i582.i) #3
  %call.i585.i = call zeroext i8 @square(i8 zeroext %call.i) #3
  %call1.i586.i = call zeroext i8 @mult(i8 zeroext %call.i585.i, i8 zeroext %call.i) #3
  %call2.i.i = call zeroext i8 @exp4(i8 zeroext %call1.i586.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i586.i, i8 zeroext %call2.i.i) #3
  %call4.i.i = call zeroext i8 @exp16(i8 zeroext %call3.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call4.i.i, i8 zeroext %call2.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i585.i) #3
  %conv21.i = zext i8 %call6.i.i to i32
  %102 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %103 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i597.i.1 = zext i8 %103 to i32
  %conv1.i.i598.i.1 = zext i8 %102 to i32
  %xor.i.i599.i.1 = xor i32 %conv1.i.i598.i.1, %conv.i.i597.i.1
  %conv2.i.i600.i.1 = trunc i32 %xor.i.i599.i.1 to i8
  %conv23.i = zext i8 %conv2.i.i600.i.1 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %104 = load i8, i8* %y, align 1
  %call.i26 = call zeroext i8 @af(i8 zeroext %104) #3
  store i8 %call.i26, i8* %y, align 1
  %scevgep69.1 = getelementptr i8, i8* %y, i64 1
  %105 = load i8, i8* %scevgep69.1, align 1
  %call.i26.1 = call zeroext i8 @af(i8 zeroext %105) #3
  %scevgep70.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i26.1, i8* %scevgep70.1, align 1
  %106 = load i8, i8* %y, align 1
  %conv4 = zext i8 %106 to i32
  %xor = xor i32 %conv4, 99
  %conv5 = trunc i32 %xor to i8
  store i8 %conv5, i8* %y, align 1
  %call.i.i32 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i33 = call zeroext i8 @mult(i8 zeroext %call.i.i32, i8 zeroext %call) #3
  %call2.i.i34 = call zeroext i8 @exp4(i8 zeroext %call1.i.i33) #3
  %call3.i.i35 = call zeroext i8 @mult(i8 zeroext %call1.i.i33, i8 zeroext %call2.i.i34) #3
  %call4.i.i36 = call zeroext i8 @exp16(i8 zeroext %call3.i.i35) #3
  %call5.i.i37 = call zeroext i8 @mult(i8 zeroext %call4.i.i36, i8 zeroext %call2.i.i34) #3
  %call6.i.i38 = call zeroext i8 @mult(i8 zeroext %call5.i.i37, i8 zeroext %call.i.i32) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i38) #3
  %conv7 = zext i8 %call1.i to i32
  %107 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %108 = load i8, i8* %scevgep.1, align 1
  %conv.i.i49.1 = zext i8 %108 to i32
  %conv1.i.i50.1 = zext i8 %107 to i32
  %xor.i.i51.1 = xor i32 %conv1.i.i50.1, %conv.i.i49.1
  %conv2.i.i52.1 = trunc i32 %xor.i.i51.1 to i8
  %conv9 = zext i8 %conv2.i.i52.1 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  call void @assert(i1 zeroext %cmp10)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
