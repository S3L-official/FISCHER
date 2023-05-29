; ModuleID = '../examples/rivain-ches2010-present-sbox-inline.inline-0.ll'
source_filename = "../examples/rivain-ches2010-present-sbox-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [50 x i8] c"../examples/rivain-ches2010-present-sbox-inline.c\00", section "llvm.metadata"
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
@llvm.global.annotations = appending global [14 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 29 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 62 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 64 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 66 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 68 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 72 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 76 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 80 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 84 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 88 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 92 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 96 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 100 }], section "llvm.metadata"

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

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #2
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp8(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call.i = call zeroext i8 @mult(i8 zeroext %call.i3.i, i8 zeroext %call.i3.i) #2
  ret i8 %call.i
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L1(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L3(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L5(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %conv4 = trunc i32 %xor to i8
  ret i8 %conv4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L7(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp3(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp5(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i3.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp7(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i) #2
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i5, i8 zeroext %call.i.i5) #2
  %call2 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call.i3.i)
  ret i8 %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @S(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %x) #2
  %conv.i = zext i8 %call.i to i32
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2.i = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i) #2
  %conv3.i = zext i8 %call2.i to i32
  %xor.i = xor i32 %conv.i, %conv3.i
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call5.i = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i) #2
  %conv6.i = zext i8 %call5.i to i32
  %xor7.i = xor i32 %xor.i, %conv6.i
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #2
  %call.i.i17.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #2
  %call9.i = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i) #2
  %conv10.i = zext i8 %call9.i to i32
  %xor11.i = xor i32 %xor7.i, %conv10.i
  %conv12.i = trunc i32 %xor11.i to i8
  %conv = zext i8 %conv12.i to i32
  %xor = xor i32 1, %conv
  %call.i.i16 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i16) #2
  %call.i27 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %call1.i) #2
  %conv.i28 = zext i8 %call.i27 to i32
  %call.i.i29 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #2
  %call2.i30 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i29) #2
  %conv3.i31 = zext i8 %call2.i30 to i32
  %xor.i32 = xor i32 %conv.i28, %conv3.i31
  %call.i.i.i33 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #2
  %call.i3.i.i34 = call zeroext i8 @mult(i8 zeroext %call.i.i.i33, i8 zeroext %call.i.i.i33) #2
  %call5.i35 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i34) #2
  %conv6.i36 = zext i8 %call5.i35 to i32
  %xor7.i37 = xor i32 %xor.i32, %conv6.i36
  %call.i.i.i.i38 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #2
  %call.i3.i.i.i39 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i38, i8 zeroext %call.i.i.i.i38) #2
  %call.i.i17.i40 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i39, i8 zeroext %call.i3.i.i.i39) #2
  %call9.i41 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i40) #2
  %conv10.i42 = zext i8 %call9.i41 to i32
  %xor11.i43 = xor i32 %xor7.i37, %conv10.i42
  %conv12.i44 = trunc i32 %xor11.i43 to i8
  %conv3 = zext i8 %conv12.i44 to i32
  %xor4 = xor i32 %xor, %conv3
  %call.i.i.i49 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i.i49, i8 zeroext %call.i.i.i49) #2
  %call1.i51 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i3.i.i50) #2
  %call.i54 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %call1.i51) #2
  %conv.i55 = zext i8 %call.i54 to i32
  %call.i.i56 = call zeroext i8 @mult(i8 zeroext %call1.i51, i8 zeroext %call1.i51) #2
  %call2.i57 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i56) #2
  %conv3.i58 = zext i8 %call2.i57 to i32
  %xor.i59 = xor i32 %conv.i55, %conv3.i58
  %conv4.i = trunc i32 %xor.i59 to i8
  %conv7 = zext i8 %conv4.i to i32
  %xor8 = xor i32 %xor4, %conv7
  %call.i.i.i64 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i.i64) #2
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i65 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #2
  %call2.i66 = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call.i3.i.i65) #2
  %call.i77 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %call2.i66) #2
  %conv.i78 = zext i8 %call.i77 to i32
  %call.i.i79 = call zeroext i8 @mult(i8 zeroext %call2.i66, i8 zeroext %call2.i66) #2
  %call2.i80 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i79) #2
  %conv3.i81 = zext i8 %call2.i80 to i32
  %xor.i82 = xor i32 %conv.i78, %conv3.i81
  %call.i.i.i83 = call zeroext i8 @mult(i8 zeroext %call2.i66, i8 zeroext %call2.i66) #2
  %call.i3.i.i84 = call zeroext i8 @mult(i8 zeroext %call.i.i.i83, i8 zeroext %call.i.i.i83) #2
  %call5.i85 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i84) #2
  %conv6.i86 = zext i8 %call5.i85 to i32
  %xor7.i87 = xor i32 %xor.i82, %conv6.i86
  %call.i.i.i.i88 = call zeroext i8 @mult(i8 zeroext %call2.i66, i8 zeroext %call2.i66) #2
  %call.i3.i.i.i89 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i88, i8 zeroext %call.i.i.i.i88) #2
  %call.i.i17.i90 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i89, i8 zeroext %call.i3.i.i.i89) #2
  %call9.i91 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i90) #2
  %conv10.i92 = zext i8 %call9.i91 to i32
  %xor11.i93 = xor i32 %xor7.i87, %conv10.i92
  %conv12.i94 = trunc i32 %xor11.i93 to i8
  %conv11 = zext i8 %conv12.i94 to i32
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
  %call.i195 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %1) #2
  %conv.i196 = zext i8 %call.i195 to i32
  %call.i.i197 = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %1) #2
  %call2.i198 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i197) #2
  %conv3.i199 = zext i8 %call2.i198 to i32
  %xor.i200 = xor i32 %conv.i196, %conv3.i199
  %call.i.i.i201 = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %1) #2
  %call.i3.i.i202 = call zeroext i8 @mult(i8 zeroext %call.i.i.i201, i8 zeroext %call.i.i.i201) #2
  %call5.i203 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i202) #2
  %conv6.i204 = zext i8 %call5.i203 to i32
  %xor7.i205 = xor i32 %xor.i200, %conv6.i204
  %call.i.i.i.i206 = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %1) #2
  %call.i3.i.i.i207 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i206, i8 zeroext %call.i.i.i.i206) #2
  %call.i.i17.i208 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i207, i8 zeroext %call.i3.i.i.i207) #2
  %call9.i209 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i208) #2
  %conv10.i210 = zext i8 %call9.i209 to i32
  %xor11.i211 = xor i32 %xor7.i205, %conv10.i210
  %conv12.i212 = trunc i32 %xor11.i211 to i8
  %scevgep183 = getelementptr [1 x i8], [1 x i8]* %l1, i64 0, i64 0
  store i8 %conv12.i212, i8* %scevgep183, align 1
  %2 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %2) #2
  %scevgep178 = getelementptr [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  store i8 %call.i, i8* %scevgep178, align 1
  %3 = load i8, i8* %x, align 1
  %call.i.i213 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %3) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i213, i8 zeroext %call.i.i213) #2
  %scevgep173 = getelementptr [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  store i8 %call.i3.i, i8* %scevgep173, align 1
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #2
  %call1.i = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i77 to i32
  %4 = load i8, i8* %x, align 1
  %conv3.i = zext i8 %4 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #2
  %conv5.i = zext i8 %call1.i to i32
  %scevgep164 = getelementptr [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  %5 = load i8, i8* %scevgep164, align 1
  %conv7.i = zext i8 %5 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #2
  %6 = load i8, i8* %x, align 1
  %7 = load i8, i8* %arraydecay6, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #2
  store i8 %call54.i, i8* %arraydecay7, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #2
  %conv81.i = zext i8 %call80.i to i32
  %scevgep137 = getelementptr [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %8 = load i8, i8* %scevgep137, align 1
  %conv83.i = zext i8 %8 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #2
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %call.i109 = call zeroext i8 (...) @rand() #2
  %call1.i110 = call zeroext i8 (...) @rand() #2
  %conv.i111 = zext i8 %call.i109 to i32
  %9 = load i8, i8* %x, align 1
  %conv3.i123 = zext i8 %9 to i32
  %cmp.i124 = icmp eq i32 %conv.i111, %conv3.i123
  call void @assume(i1 zeroext %cmp.i124) #2
  %conv5.i125 = zext i8 %call1.i110 to i32
  %scevgep129 = getelementptr [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %10 = load i8, i8* %scevgep129, align 1
  %conv7.i138 = zext i8 %10 to i32
  %cmp8.i139 = icmp eq i32 %conv5.i125, %conv7.i138
  call void @assume(i1 zeroext %cmp8.i139) #2
  %11 = load i8, i8* %x, align 1
  %12 = load i8, i8* %arraydecay8, align 1
  %call54.i187 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #2
  store i8 %call54.i187, i8* %arraydecay9, align 1
  %call80.i210 = call zeroext i8 @mult(i8 zeroext %call.i109, i8 zeroext %call1.i110) #2
  %conv81.i211 = zext i8 %call80.i210 to i32
  %scevgep102 = getelementptr [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %13 = load i8, i8* %scevgep102, align 1
  %conv83.i224 = zext i8 %13 to i32
  %cmp84.i225 = icmp eq i32 %conv81.i211, %conv83.i224
  call void @assert(i1 zeroext %cmp84.i225) #2
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %call.i252 = call zeroext i8 (...) @rand() #2
  %call1.i253 = call zeroext i8 (...) @rand() #2
  %conv.i254 = zext i8 %call.i252 to i32
  %scevgep98 = getelementptr [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %14 = load i8, i8* %scevgep98, align 1
  %conv3.i266 = zext i8 %14 to i32
  %cmp.i267 = icmp eq i32 %conv.i254, %conv3.i266
  call void @assume(i1 zeroext %cmp.i267) #2
  %conv5.i268 = zext i8 %call1.i253 to i32
  %scevgep94 = getelementptr [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %15 = load i8, i8* %scevgep94, align 1
  %conv7.i281 = zext i8 %15 to i32
  %cmp8.i282 = icmp eq i32 %conv5.i268, %conv7.i281
  call void @assume(i1 zeroext %cmp8.i282) #2
  %16 = load i8, i8* %arraydecay10, align 1
  %17 = load i8, i8* %arraydecay11, align 1
  %call54.i330 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #2
  store i8 %call54.i330, i8* %arraydecay12, align 1
  %call80.i353 = call zeroext i8 @mult(i8 zeroext %call.i252, i8 zeroext %call1.i253) #2
  %conv81.i354 = zext i8 %call80.i353 to i32
  %scevgep67 = getelementptr [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %18 = load i8, i8* %scevgep67, align 1
  %conv83.i367 = zext i8 %18 to i32
  %cmp84.i368 = icmp eq i32 %conv81.i354, %conv83.i367
  call void @assert(i1 zeroext %cmp84.i368) #2
  %scevgep62 = getelementptr [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %19 = load i8, i8* %scevgep62, align 1
  %call.i214 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %19) #2
  %conv.i215 = zext i8 %call.i214 to i32
  %call.i.i216 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %19) #2
  %call2.i217 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i216) #2
  %conv3.i218 = zext i8 %call2.i217 to i32
  %xor.i219 = xor i32 %conv.i215, %conv3.i218
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %19) #2
  %call.i3.i.i220 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call5.i221 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i220) #2
  %conv6.i222 = zext i8 %call5.i221 to i32
  %xor7.i223 = xor i32 %xor.i219, %conv6.i222
  %call.i.i.i.i224 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %19) #2
  %call.i3.i.i.i225 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i224, i8 zeroext %call.i.i.i.i224) #2
  %call.i.i17.i226 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i225, i8 zeroext %call.i3.i.i.i225) #2
  %call9.i227 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i226) #2
  %conv10.i228 = zext i8 %call9.i227 to i32
  %xor11.i229 = xor i32 %xor7.i223, %conv10.i228
  %conv12.i230 = trunc i32 %xor11.i229 to i8
  %scevgep63 = getelementptr [1 x i8], [1 x i8]* %l3, i64 0, i64 0
  store i8 %conv12.i230, i8* %scevgep63, align 1
  %scevgep57 = getelementptr [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %20 = load i8, i8* %scevgep57, align 1
  %call.i231 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %20) #2
  %conv.i232 = zext i8 %call.i231 to i32
  %call.i.i233 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %20) #2
  %call2.i234 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i233) #2
  %conv3.i235 = zext i8 %call2.i234 to i32
  %xor.i236 = xor i32 %conv.i232, %conv3.i235
  %conv4.i = trunc i32 %xor.i236 to i8
  %scevgep58 = getelementptr [1 x i8], [1 x i8]* %l5, i64 0, i64 0
  store i8 %conv4.i, i8* %scevgep58, align 1
  %scevgep52 = getelementptr [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %21 = load i8, i8* %scevgep52, align 1
  %call.i189 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %21) #2
  %conv.i190 = zext i8 %call.i189 to i32
  %call.i.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %21) #2
  %call2.i = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i) #2
  %conv3.i191 = zext i8 %call2.i to i32
  %xor.i = xor i32 %conv.i190, %conv3.i191
  %call.i.i.i192 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %21) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i192, i8 zeroext %call.i.i.i192) #2
  %call5.i = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i) #2
  %conv6.i = zext i8 %call5.i to i32
  %xor7.i = xor i32 %xor.i, %conv6.i
  %call.i.i.i.i193 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %21) #2
  %call.i3.i.i.i194 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i193, i8 zeroext %call.i.i.i.i193) #2
  %call.i.i17.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i194, i8 zeroext %call.i3.i.i.i194) #2
  %call9.i = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i) #2
  %conv10.i = zext i8 %call9.i to i32
  %xor11.i = xor i32 %xor7.i, %conv10.i
  %conv12.i = trunc i32 %xor11.i to i8
  %scevgep53 = getelementptr [1 x i8], [1 x i8]* %l7, i64 0, i64 0
  store i8 %conv12.i, i8* %scevgep53, align 1
  %scevgep44 = getelementptr [1 x i8], [1 x i8]* %l1, i64 0, i64 0
  %22 = load i8, i8* %scevgep44, align 1
  %conv21 = zext i8 %22 to i32
  %scevgep45 = getelementptr [1 x i8], [1 x i8]* %l3, i64 0, i64 0
  %23 = load i8, i8* %scevgep45, align 1
  %conv24 = zext i8 %23 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep46 = getelementptr [1 x i8], [1 x i8]* %l5, i64 0, i64 0
  %24 = load i8, i8* %scevgep46, align 1
  %conv27 = zext i8 %24 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep47 = getelementptr [1 x i8], [1 x i8]* %l7, i64 0, i64 0
  %25 = load i8, i8* %scevgep47, align 1
  %conv31 = zext i8 %25 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %26 = load i8, i8* %y, align 1
  %conv37 = zext i8 %26 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %y, align 1
  %call.i.i415 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %call) #2
  %conv.i.i416 = zext i8 %call.i.i415 to i32
  %call.i.i.i417 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call2.i.i = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i.i417) #2
  %conv3.i.i = zext i8 %call2.i.i to i32
  %xor.i.i418 = xor i32 %conv.i.i416, %conv3.i.i
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #2
  %call5.i.i = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i.i) #2
  %conv6.i.i = zext i8 %call5.i.i to i32
  %xor7.i.i = xor i32 %xor.i.i418, %conv6.i.i
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i, i8 zeroext %call.i.i.i.i.i) #2
  %call.i.i17.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i, i8 zeroext %call.i3.i.i.i.i) #2
  %call9.i.i = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i.i) #2
  %conv10.i.i = zext i8 %call9.i.i to i32
  %xor11.i.i = xor i32 %xor7.i.i, %conv10.i.i
  %conv12.i.i = trunc i32 %xor11.i.i to i8
  %conv.i419 = zext i8 %conv12.i.i to i32
  %xor.i420 = xor i32 1, %conv.i419
  %call.i.i16.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i16.i) #2
  %call.i27.i = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %call1.i.i) #2
  %conv.i28.i = zext i8 %call.i27.i to i32
  %call.i.i29.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i.i) #2
  %call2.i30.i = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i29.i) #2
  %conv3.i31.i = zext i8 %call2.i30.i to i32
  %xor.i32.i = xor i32 %conv.i28.i, %conv3.i31.i
  %call.i.i.i33.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i.i) #2
  %call.i3.i.i34.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i33.i, i8 zeroext %call.i.i.i33.i) #2
  %call5.i35.i = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i34.i) #2
  %conv6.i36.i = zext i8 %call5.i35.i to i32
  %xor7.i37.i = xor i32 %xor.i32.i, %conv6.i36.i
  %call.i.i.i.i38.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i.i) #2
  %call.i3.i.i.i39.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i38.i, i8 zeroext %call.i.i.i.i38.i) #2
  %call.i.i17.i40.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i39.i, i8 zeroext %call.i3.i.i.i39.i) #2
  %call9.i41.i = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i40.i) #2
  %conv10.i42.i = zext i8 %call9.i41.i to i32
  %xor11.i43.i = xor i32 %xor7.i37.i, %conv10.i42.i
  %conv12.i44.i = trunc i32 %xor11.i43.i to i8
  %conv3.i421 = zext i8 %conv12.i44.i to i32
  %xor4.i = xor i32 %xor.i420, %conv3.i421
  %call.i.i.i49.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i50.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i49.i, i8 zeroext %call.i.i.i49.i) #2
  %call1.i51.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i3.i.i50.i) #2
  %call.i54.i = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %call1.i51.i) #2
  %conv.i55.i = zext i8 %call.i54.i to i32
  %call.i.i56.i = call zeroext i8 @mult(i8 zeroext %call1.i51.i, i8 zeroext %call1.i51.i) #2
  %call2.i57.i = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i56.i) #2
  %conv3.i58.i = zext i8 %call2.i57.i to i32
  %xor.i59.i = xor i32 %conv.i55.i, %conv3.i58.i
  %conv4.i.i = trunc i32 %xor.i59.i to i8
  %conv7.i422 = zext i8 %conv4.i.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i422
  %call.i.i.i64.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i.i64.i) #2
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i65.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #2
  %call2.i66.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call.i3.i.i65.i) #2
  %call.i77.i = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %call2.i66.i) #2
  %conv.i78.i = zext i8 %call.i77.i to i32
  %call.i.i79.i = call zeroext i8 @mult(i8 zeroext %call2.i66.i, i8 zeroext %call2.i66.i) #2
  %call2.i80.i = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i79.i) #2
  %conv3.i81.i = zext i8 %call2.i80.i to i32
  %xor.i82.i = xor i32 %conv.i78.i, %conv3.i81.i
  %call.i.i.i83.i = call zeroext i8 @mult(i8 zeroext %call2.i66.i, i8 zeroext %call2.i66.i) #2
  %call.i3.i.i84.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i83.i, i8 zeroext %call.i.i.i83.i) #2
  %call5.i85.i = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i84.i) #2
  %conv6.i86.i = zext i8 %call5.i85.i to i32
  %xor7.i87.i = xor i32 %xor.i82.i, %conv6.i86.i
  %call.i.i.i.i88.i = call zeroext i8 @mult(i8 zeroext %call2.i66.i, i8 zeroext %call2.i66.i) #2
  %call.i3.i.i.i89.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i88.i, i8 zeroext %call.i.i.i.i88.i) #2
  %call.i.i17.i90.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i89.i, i8 zeroext %call.i3.i.i.i89.i) #2
  %call9.i91.i = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i90.i) #2
  %conv10.i92.i = zext i8 %call9.i91.i to i32
  %xor11.i93.i = xor i32 %xor7.i87.i, %conv10.i92.i
  %conv12.i94.i = trunc i32 %xor11.i93.i to i8
  %conv11.i = zext i8 %conv12.i94.i to i32
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
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
