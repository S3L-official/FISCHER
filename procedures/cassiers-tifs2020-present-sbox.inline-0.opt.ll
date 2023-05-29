; ModuleID = '../examples/cassiers-tifs2020-present-sbox.inline-0.ll'
source_filename = "../examples/cassiers-tifs2020-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [45 x i8] c"../examples/cassiers-tifs2020-present-sbox.c\00", section "llvm.metadata"
@a0 = dso_local constant i8 1, align 1
@a1 = dso_local constant i8 2, align 1
@a2 = dso_local constant i8 3, align 1
@a3 = dso_local constant i8 4, align 1
@a4 = dso_local constant i8 5, align 1
@a5 = dso_local constant i8 6, align 1
@a6 = dso_local constant i8 7, align 1
@a7 = dso_local constant i8 8, align 1
@a8 = dso_local constant i8 9, align 1
@a9 = dso_local constant i8 10, align 1
@a10 = dso_local constant i8 11, align 1
@a11 = dso_local constant i8 12, align 1
@a12 = dso_local constant i8 13, align 1
@a13 = dso_local constant i8 14, align 1
@a14 = dso_local constant i8 15, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [13 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 60 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 62 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 66 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 70 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 74 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 78 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 82 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 86 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 90 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 94 }], section "llvm.metadata"

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
  %call111 = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call111, i8* %c, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %4 = load i8, i8* %c, align 1
  %conv142 = zext i8 %4 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

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
define dso_local zeroext i8 @exp8(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L1(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call4 = call zeroext i8 @exp4(i8 zeroext %x)
  %call5 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call8 = call zeroext i8 @exp8(i8 zeroext %x)
  %call9 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L3(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call4 = call zeroext i8 @exp4(i8 zeroext %x)
  %call5 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call8 = call zeroext i8 @exp8(i8 zeroext %x)
  %call9 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L5(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %conv4 = trunc i32 %xor to i8
  ret i8 %conv4
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L7(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call4 = call zeroext i8 @exp4(i8 zeroext %x)
  %call5 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call8 = call zeroext i8 @exp8(i8 zeroext %x)
  %call9 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp3(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp5(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp7(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i) #3
  %call1 = call zeroext i8 @exp4(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1)
  ret i8 %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @S(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @L1(i8 zeroext %x)
  %conv = zext i8 %call to i32
  %xor = xor i32 1, %conv
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i) #3
  %call2 = call zeroext i8 @L3(i8 zeroext %call1.i)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %call.i15 = call zeroext i8 @exp4(i8 zeroext %x) #3
  %call1.i16 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i15) #3
  %call6 = call zeroext i8 @L5(i8 zeroext %call1.i16)
  %conv7 = zext i8 %call6 to i32
  %xor8 = xor i32 %xor4, %conv7
  %call.i.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i) #3
  %call1.i18 = call zeroext i8 @exp4(i8 zeroext %x) #3
  %call2.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i18) #3
  %call10 = call zeroext i8 @L7(i8 zeroext %call2.i)
  %conv11 = zext i8 %call10 to i32
  %xor12 = xor i32 %xor8, %conv11
  %conv13 = trunc i32 %xor12 to i8
  ret i8 %conv13
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_S(i8* %x, i8* %y) #0 {
entry:
  %l1 = alloca [1 x i8], align 1
  %l3 = alloca [1 x i8], align 1
  %l5 = alloca [1 x i8], align 1
  %l7 = alloca [1 x i8], align 1
  %e2 = alloca [1 x i8], align 1
  %e3 = alloca [1 x i8], align 1
  %e4 = alloca [1 x i8], align 1
  %e5 = alloca [1 x i8], align 1
  %e7 = alloca [1 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %1 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %1) #3
  %scevgep246 = getelementptr [1 x i8], [1 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep246, align 1
  %2 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %2) #3
  %scevgep241 = getelementptr [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep241, align 1
  %3 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %3) #3
  %scevgep236 = getelementptr [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep236, align 1
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %4 = load i8, i8* %x, align 1
  %conv3.i = zext i8 %4 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep227 = getelementptr [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  %5 = load i8, i8* %scevgep227, align 1
  %conv7.i = zext i8 %5 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %6 = load i8, i8* %x, align 1
  %7 = load i8, i8* %arraydecay6, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep181 = getelementptr [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %8 = load i8, i8* %scevgep181, align 1
  %conv142.i = zext i8 %8 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %call.i115 = call zeroext i8 (...) @rand() #3
  %call1.i116 = call zeroext i8 (...) @rand() #3
  %conv.i117 = zext i8 %call.i115 to i32
  %9 = load i8, i8* %x, align 1
  %conv3.i129 = zext i8 %9 to i32
  %cmp.i130 = icmp eq i32 %conv.i117, %conv3.i129
  call void @assume(i1 zeroext %cmp.i130) #3
  %conv5.i131 = zext i8 %call1.i116 to i32
  %scevgep173 = getelementptr [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %10 = load i8, i8* %scevgep173, align 1
  %conv7.i144 = zext i8 %10 to i32
  %cmp8.i145 = icmp eq i32 %conv5.i131, %conv7.i144
  call void @assume(i1 zeroext %cmp8.i145) #3
  %11 = load i8, i8* %x, align 1
  %12 = load i8, i8* %arraydecay8, align 1
  %call111.i245 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #3
  store i8 %call111.i245, i8* %arraydecay9, align 1
  %call139.i268 = call zeroext i8 @mult(i8 zeroext %call.i115, i8 zeroext %call1.i116) #3
  %conv140.i269 = zext i8 %call139.i268 to i32
  %scevgep127 = getelementptr [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %13 = load i8, i8* %scevgep127, align 1
  %conv142.i282 = zext i8 %13 to i32
  %cmp143.i283 = icmp eq i32 %conv140.i269, %conv142.i282
  call void @assert(i1 zeroext %cmp143.i283) #3
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %call.i316 = call zeroext i8 (...) @rand() #3
  %call1.i317 = call zeroext i8 (...) @rand() #3
  %conv.i318 = zext i8 %call.i316 to i32
  %scevgep123 = getelementptr [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %14 = load i8, i8* %scevgep123, align 1
  %conv3.i330 = zext i8 %14 to i32
  %cmp.i331 = icmp eq i32 %conv.i318, %conv3.i330
  call void @assume(i1 zeroext %cmp.i331) #3
  %conv5.i332 = zext i8 %call1.i317 to i32
  %scevgep119 = getelementptr [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %15 = load i8, i8* %scevgep119, align 1
  %conv7.i345 = zext i8 %15 to i32
  %cmp8.i346 = icmp eq i32 %conv5.i332, %conv7.i345
  call void @assume(i1 zeroext %cmp8.i346) #3
  %16 = load i8, i8* %arraydecay10, align 1
  %17 = load i8, i8* %arraydecay11, align 1
  %call111.i446 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #3
  store i8 %call111.i446, i8* %arraydecay12, align 1
  %call139.i469 = call zeroext i8 @mult(i8 zeroext %call.i316, i8 zeroext %call1.i317) #3
  %conv140.i470 = zext i8 %call139.i469 to i32
  %scevgep73 = getelementptr [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %18 = load i8, i8* %scevgep73, align 1
  %conv142.i483 = zext i8 %18 to i32
  %cmp143.i484 = icmp eq i32 %conv140.i470, %conv142.i483
  call void @assert(i1 zeroext %cmp143.i484) #3
  %scevgep68 = getelementptr [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %19 = load i8, i8* %scevgep68, align 1
  %call.i494 = call zeroext i8 @L3(i8 zeroext %19) #3
  %scevgep69 = getelementptr [1 x i8], [1 x i8]* %l3, i64 0, i64 0
  store i8 %call.i494, i8* %scevgep69, align 1
  %scevgep63 = getelementptr [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %20 = load i8, i8* %scevgep63, align 1
  %call.i509 = call zeroext i8 @L5(i8 zeroext %20) #3
  %scevgep64 = getelementptr [1 x i8], [1 x i8]* %l5, i64 0, i64 0
  store i8 %call.i509, i8* %scevgep64, align 1
  %scevgep58 = getelementptr [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %21 = load i8, i8* %scevgep58, align 1
  %call.i524 = call zeroext i8 @L7(i8 zeroext %21) #3
  %scevgep59 = getelementptr [1 x i8], [1 x i8]* %l7, i64 0, i64 0
  store i8 %call.i524, i8* %scevgep59, align 1
  %scevgep50 = getelementptr [1 x i8], [1 x i8]* %l1, i64 0, i64 0
  %22 = load i8, i8* %scevgep50, align 1
  %conv21 = zext i8 %22 to i32
  %scevgep51 = getelementptr [1 x i8], [1 x i8]* %l3, i64 0, i64 0
  %23 = load i8, i8* %scevgep51, align 1
  %conv24 = zext i8 %23 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep52 = getelementptr [1 x i8], [1 x i8]* %l5, i64 0, i64 0
  %24 = load i8, i8* %scevgep52, align 1
  %conv27 = zext i8 %24 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep53 = getelementptr [1 x i8], [1 x i8]* %l7, i64 0, i64 0
  %25 = load i8, i8* %scevgep53, align 1
  %conv31 = zext i8 %25 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %26 = load i8, i8* %y, align 1
  %conv37 = zext i8 %26 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %y, align 1
  %call.i531 = call zeroext i8 @L1(i8 zeroext %call) #3
  %conv.i532 = zext i8 %call.i531 to i32
  %xor.i533 = xor i32 1, %conv.i532
  %call.i.i534 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i534) #3
  %call2.i = call zeroext i8 @L3(i8 zeroext %call1.i.i) #3
  %conv3.i535 = zext i8 %call2.i to i32
  %xor4.i = xor i32 %xor.i533, %conv3.i535
  %call.i15.i = call zeroext i8 @exp4(i8 zeroext %call) #3
  %call1.i16.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i15.i) #3
  %call6.i = call zeroext i8 @L5(i8 zeroext %call1.i16.i) #3
  %conv7.i536 = zext i8 %call6.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i536
  %call.i.i.i537 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i.i537) #3
  %call1.i18.i = call zeroext i8 @exp4(i8 zeroext %call) #3
  %call2.i.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call1.i18.i) #3
  %call10.i = call zeroext i8 @L7(i8 zeroext %call2.i.i) #3
  %conv11.i = zext i8 %call10.i to i32
  %xor12.i = xor i32 %xor8.i, %conv11.i
  %conv13.i = trunc i32 %xor12.i to i8
  %conv41 = zext i8 %conv13.i to i32
  %27 = load i8, i8* %y, align 1
  %conv43 = zext i8 %27 to i32
  %cmp44 = icmp eq i32 %conv41, %conv43
  call void @assert(i1 zeroext %cmp44)
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
