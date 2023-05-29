; ModuleID = '../examples/rivain-ches2010-sec-exp-affine.inline-0.ll'
source_filename = "../examples/rivain-ches2010-sec-exp-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
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
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sigma(i8* %a, i8 (i8)* %f) #0 {
entry:
  %0 = load i8, i8* %a, align 1
  %call = call zeroext i8 %f(i8 zeroext %0)
  ret i8 %call
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
  ret i8 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %conv3 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %1 = load i8, i8* %b, align 1
  %conv7 = zext i8 %1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %2 = load i8, i8* %a, align 1
  %3 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call54, i8* %c, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %4 = load i8, i8* %c, align 1
  %conv83 = zext i8 %4 to i32
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
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %conv16 = zext i8 %call to i32
  %1 = load i8, i8* %x, align 1
  %conv18 = zext i8 %1 to i32
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
  %z = alloca [1 x i8], align 1
  %w = alloca [1 x i8], align 1
  %u = alloca [1 x i8], align 1
  %v = alloca [1 x i8], align 1
  %m = alloca [1 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %1 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %1) #3
  %scevgep235 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep235, align 1
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep230 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %2 = load i8, i8* %scevgep230, align 1
  %conv2.i = zext i8 %2 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep222 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %3 = load i8, i8* %scevgep222, align 1
  %conv18.i = zext i8 %3 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep218 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %4 = load i8, i8* %scevgep218, align 1
  %conv3.i = zext i8 %4 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %5 = load i8, i8* %x, align 1
  %conv7.i = zext i8 %5 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %6 = load i8, i8* %arraydecay5, align 1
  %7 = load i8, i8* %x, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #3
  store i8 %call54.i, i8* %arraydecay6, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep187 = getelementptr [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %8 = load i8, i8* %scevgep187, align 1
  %conv83.i = zext i8 %8 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep182 = getelementptr [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %9 = load i8, i8* %scevgep182, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %9) #3
  %scevgep183 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep183, align 1
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep178 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %10 = load i8, i8* %scevgep178, align 1
  %conv2.i105 = zext i8 %10 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep170 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %11 = load i8, i8* %scevgep170, align 1
  %conv18.i137 = zext i8 %11 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %call.i165 = call zeroext i8 (...) @rand() #3
  %call1.i166 = call zeroext i8 (...) @rand() #3
  %conv.i167 = zext i8 %call.i165 to i32
  %scevgep166 = getelementptr [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %12 = load i8, i8* %scevgep166, align 1
  %conv3.i179 = zext i8 %12 to i32
  %cmp.i180 = icmp eq i32 %conv.i167, %conv3.i179
  call void @assume(i1 zeroext %cmp.i180) #3
  %conv5.i181 = zext i8 %call1.i166 to i32
  %scevgep162 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %13 = load i8, i8* %scevgep162, align 1
  %conv7.i194 = zext i8 %13 to i32
  %cmp8.i195 = icmp eq i32 %conv5.i181, %conv7.i194
  call void @assume(i1 zeroext %cmp8.i195) #3
  %14 = load i8, i8* %arraydecay10, align 1
  %15 = load i8, i8* %arraydecay11, align 1
  %call54.i243 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15) #3
  store i8 %call54.i243, i8* %arraydecay12, align 1
  %call80.i266 = call zeroext i8 @mult(i8 zeroext %call.i165, i8 zeroext %call1.i166) #3
  %conv81.i267 = zext i8 %call80.i266 to i32
  %scevgep135 = getelementptr [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %16 = load i8, i8* %scevgep135, align 1
  %conv83.i280 = zext i8 %16 to i32
  %cmp84.i281 = icmp eq i32 %conv81.i267, %conv83.i280
  call void @assert(i1 zeroext %cmp84.i281) #3
  %scevgep130 = getelementptr [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %17 = load i8, i8* %scevgep130, align 1
  %call.i291 = call zeroext i8 @exp16(i8 zeroext %17) #3
  %scevgep131 = getelementptr [1 x i8], [1 x i8]* %v, i64 0, i64 0
  store i8 %call.i291, i8* %scevgep131, align 1
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %call.i323 = call zeroext i8 (...) @rand() #3
  %call1.i324 = call zeroext i8 (...) @rand() #3
  %conv.i325 = zext i8 %call.i323 to i32
  %scevgep126 = getelementptr [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %18 = load i8, i8* %scevgep126, align 1
  %conv3.i337 = zext i8 %18 to i32
  %cmp.i338 = icmp eq i32 %conv.i325, %conv3.i337
  call void @assume(i1 zeroext %cmp.i338) #3
  %conv5.i339 = zext i8 %call1.i324 to i32
  %scevgep122 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %19 = load i8, i8* %scevgep122, align 1
  %conv7.i352 = zext i8 %19 to i32
  %cmp8.i353 = icmp eq i32 %conv5.i339, %conv7.i352
  call void @assume(i1 zeroext %cmp8.i353) #3
  %20 = load i8, i8* %arraydecay15, align 1
  %21 = load i8, i8* %arraydecay16, align 1
  %call54.i401 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21) #3
  store i8 %call54.i401, i8* %arraydecay17, align 1
  %call80.i424 = call zeroext i8 @mult(i8 zeroext %call.i323, i8 zeroext %call1.i324) #3
  %conv81.i425 = zext i8 %call80.i424 to i32
  %scevgep95 = getelementptr [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %22 = load i8, i8* %scevgep95, align 1
  %conv83.i438 = zext i8 %22 to i32
  %cmp84.i439 = icmp eq i32 %conv81.i425, %conv83.i438
  call void @assert(i1 zeroext %cmp84.i439) #3
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %call.i466 = call zeroext i8 (...) @rand() #3
  %call1.i467 = call zeroext i8 (...) @rand() #3
  %conv.i468 = zext i8 %call.i466 to i32
  %scevgep91 = getelementptr [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %23 = load i8, i8* %scevgep91, align 1
  %conv3.i480 = zext i8 %23 to i32
  %cmp.i481 = icmp eq i32 %conv.i468, %conv3.i480
  call void @assume(i1 zeroext %cmp.i481) #3
  %conv5.i482 = zext i8 %call1.i467 to i32
  %scevgep87 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %24 = load i8, i8* %scevgep87, align 1
  %conv7.i495 = zext i8 %24 to i32
  %cmp8.i496 = icmp eq i32 %conv5.i482, %conv7.i495
  call void @assume(i1 zeroext %cmp8.i496) #3
  %25 = load i8, i8* %arraydecay18, align 1
  %26 = load i8, i8* %arraydecay19, align 1
  %call54.i544 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #3
  store i8 %call54.i544, i8* %y, align 1
  %call80.i567 = call zeroext i8 @mult(i8 zeroext %call.i466, i8 zeroext %call1.i467) #3
  %conv81.i568 = zext i8 %call80.i567 to i32
  %27 = load i8, i8* %y, align 1
  %conv83.i581 = zext i8 %27 to i32
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
  %28 = load i8, i8* %y, align 1
  %conv23 = zext i8 %28 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  ret i8 %x
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %z = alloca [1 x [1 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %1 = load i8, i8* %x, align 1
  %scevgep72 = getelementptr [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %1, i8* %scevgep72, align 1
  %scevgep25 = getelementptr [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 0, i64 0
  %2 = load i8, i8* %scevgep25, align 1
  store i8 %2, i8* %y, align 1
  %conv14 = zext i8 %call to i32
  %3 = load i8, i8* %y, align 1
  %conv16 = zext i8 %3 to i32
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
  %z.i = alloca [1 x i8], align 1
  %w.i = alloca [1 x i8], align 1
  %u.i = alloca [1 x i8], align 1
  %v.i = alloca [1 x i8], align 1
  %m.i = alloca [1 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %1 = load i8, i8* %x, align 1
  %conv2.i = zext i8 %1 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %2 = load i8, i8* %x, align 1
  %call.i.i17 = call zeroext i8 @square(i8 zeroext %2) #3
  %scevgep249 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i17, i8* %scevgep249, align 1
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i20 = zext i8 %call.i28.i to i32
  %scevgep244 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %3 = load i8, i8* %scevgep244, align 1
  %conv2.i.i21 = zext i8 %3 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i20, %conv2.i.i21
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep236 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %4 = load i8, i8* %scevgep236, align 1
  %conv18.i.i = zext i8 %4 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep232 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %5 = load i8, i8* %scevgep232, align 1
  %conv3.i.i = zext i8 %5 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %6 = load i8, i8* %x, align 1
  %conv7.i.i = zext i8 %6 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %7 = load i8, i8* %arraydecay5.i, align 1
  %8 = load i8, i8* %x, align 1
  %call54.i.i = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #3
  store i8 %call54.i.i, i8* %arraydecay6.i, align 1
  %call80.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv81.i.i = zext i8 %call80.i.i to i32
  %scevgep201 = getelementptr [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %9 = load i8, i8* %scevgep201, align 1
  %conv83.i.i = zext i8 %9 to i32
  %cmp84.i.i = icmp eq i32 %conv81.i.i, %conv83.i.i
  call void @assert(i1 zeroext %cmp84.i.i) #3
  %scevgep196 = getelementptr [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %10 = load i8, i8* %scevgep196, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %10) #3
  %scevgep197 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep197, align 1
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep192 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %11 = load i8, i8* %scevgep192, align 1
  %conv2.i105.i = zext i8 %11 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep184 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep184, align 1
  %conv18.i137.i = zext i8 %12 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %call.i165.i = call zeroext i8 (...) @rand() #3
  %call1.i166.i = call zeroext i8 (...) @rand() #3
  %conv.i167.i = zext i8 %call.i165.i to i32
  %scevgep180 = getelementptr [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %13 = load i8, i8* %scevgep180, align 1
  %conv3.i179.i = zext i8 %13 to i32
  %cmp.i180.i = icmp eq i32 %conv.i167.i, %conv3.i179.i
  call void @assume(i1 zeroext %cmp.i180.i) #3
  %conv5.i181.i = zext i8 %call1.i166.i to i32
  %scevgep176 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %14 = load i8, i8* %scevgep176, align 1
  %conv7.i194.i = zext i8 %14 to i32
  %cmp8.i195.i = icmp eq i32 %conv5.i181.i, %conv7.i194.i
  call void @assume(i1 zeroext %cmp8.i195.i) #3
  %15 = load i8, i8* %arraydecay10.i, align 1
  %16 = load i8, i8* %arraydecay11.i, align 1
  %call54.i243.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #3
  store i8 %call54.i243.i, i8* %arraydecay12.i, align 1
  %call80.i266.i = call zeroext i8 @mult(i8 zeroext %call.i165.i, i8 zeroext %call1.i166.i) #3
  %conv81.i267.i = zext i8 %call80.i266.i to i32
  %scevgep149 = getelementptr [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %17 = load i8, i8* %scevgep149, align 1
  %conv83.i280.i = zext i8 %17 to i32
  %cmp84.i281.i = icmp eq i32 %conv81.i267.i, %conv83.i280.i
  call void @assert(i1 zeroext %cmp84.i281.i) #3
  %scevgep144 = getelementptr [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %18 = load i8, i8* %scevgep144, align 1
  %call.i291.i = call zeroext i8 @exp16(i8 zeroext %18) #3
  %scevgep145 = getelementptr [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i291.i, i8* %scevgep145, align 1
  %arraydecay15.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %call.i323.i = call zeroext i8 (...) @rand() #3
  %call1.i324.i = call zeroext i8 (...) @rand() #3
  %conv.i325.i = zext i8 %call.i323.i to i32
  %scevgep140 = getelementptr [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %19 = load i8, i8* %scevgep140, align 1
  %conv3.i337.i = zext i8 %19 to i32
  %cmp.i338.i = icmp eq i32 %conv.i325.i, %conv3.i337.i
  call void @assume(i1 zeroext %cmp.i338.i) #3
  %conv5.i339.i = zext i8 %call1.i324.i to i32
  %scevgep136 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %20 = load i8, i8* %scevgep136, align 1
  %conv7.i352.i = zext i8 %20 to i32
  %cmp8.i353.i = icmp eq i32 %conv5.i339.i, %conv7.i352.i
  call void @assume(i1 zeroext %cmp8.i353.i) #3
  %21 = load i8, i8* %arraydecay15.i, align 1
  %22 = load i8, i8* %arraydecay16.i, align 1
  %call54.i401.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  store i8 %call54.i401.i, i8* %arraydecay17.i, align 1
  %call80.i424.i = call zeroext i8 @mult(i8 zeroext %call.i323.i, i8 zeroext %call1.i324.i) #3
  %conv81.i425.i = zext i8 %call80.i424.i to i32
  %scevgep109 = getelementptr [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %23 = load i8, i8* %scevgep109, align 1
  %conv83.i438.i = zext i8 %23 to i32
  %cmp84.i439.i = icmp eq i32 %conv81.i425.i, %conv83.i438.i
  call void @assert(i1 zeroext %cmp84.i439.i) #3
  %arraydecay18.i = getelementptr inbounds [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %call.i466.i = call zeroext i8 (...) @rand() #3
  %call1.i467.i = call zeroext i8 (...) @rand() #3
  %conv.i468.i = zext i8 %call.i466.i to i32
  %scevgep105 = getelementptr [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %24 = load i8, i8* %scevgep105, align 1
  %conv3.i480.i = zext i8 %24 to i32
  %cmp.i481.i = icmp eq i32 %conv.i468.i, %conv3.i480.i
  call void @assume(i1 zeroext %cmp.i481.i) #3
  %conv5.i482.i = zext i8 %call1.i467.i to i32
  %scevgep101 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %25 = load i8, i8* %scevgep101, align 1
  %conv7.i495.i = zext i8 %25 to i32
  %cmp8.i496.i = icmp eq i32 %conv5.i482.i, %conv7.i495.i
  call void @assume(i1 zeroext %cmp8.i496.i) #3
  %26 = load i8, i8* %arraydecay18.i, align 1
  %27 = load i8, i8* %arraydecay19.i, align 1
  %call54.i544.i = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  store i8 %call54.i544.i, i8* %y, align 1
  %call80.i567.i = call zeroext i8 @mult(i8 zeroext %call.i466.i, i8 zeroext %call1.i467.i) #3
  %conv81.i568.i = zext i8 %call80.i567.i to i32
  %28 = load i8, i8* %y, align 1
  %conv83.i581.i = zext i8 %28 to i32
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
  %29 = load i8, i8* %y, align 1
  %conv23.i = zext i8 %29 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %30 = load i8, i8* %y, align 1
  %call.i24 = call zeroext i8 @af(i8 zeroext %30) #3
  store i8 %call.i24, i8* %y, align 1
  %call.i.i30 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i31 = call zeroext i8 @mult(i8 zeroext %call.i.i30, i8 zeroext %call) #3
  %call2.i.i32 = call zeroext i8 @exp4(i8 zeroext %call1.i.i31) #3
  %call3.i.i33 = call zeroext i8 @mult(i8 zeroext %call1.i.i31, i8 zeroext %call2.i.i32) #3
  %call4.i.i34 = call zeroext i8 @exp16(i8 zeroext %call3.i.i33) #3
  %call5.i.i35 = call zeroext i8 @mult(i8 zeroext %call4.i.i34, i8 zeroext %call2.i.i32) #3
  %call6.i.i36 = call zeroext i8 @mult(i8 zeroext %call5.i.i35, i8 zeroext %call.i.i30) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i36) #3
  %conv5 = zext i8 %call1.i to i32
  %31 = load i8, i8* %y, align 1
  %conv7 = zext i8 %31 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assert(i1 zeroext %cmp8)
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
