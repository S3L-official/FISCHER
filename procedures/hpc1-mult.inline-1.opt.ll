; ModuleID = '../examples/hpc1-mult.inline-1.ll'
source_filename = "../examples/hpc1-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"../examples/hpc1-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult_dom to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 23 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 39 }], section "llvm.metadata"

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
define dso_local void @sec_mult_dom(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [2 x [2 x i8]], align 1
  %u = alloca [2 x [2 x i8]], align 1
  %scevgep13 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep1314 = bitcast i8* %scevgep13 to [2 x [2 x i8]]*
  %scevgep22 = getelementptr i8, i8* %b, i64 1
  %scevgep30 = getelementptr i8, i8* %a, i64 1
  %call = call zeroext i8 (...) @rand()
  %scevgep19 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  store i8 %call, i8* %scevgep19, align 1
  %0 = load i8, i8* %a, align 1
  %scevgep25 = getelementptr i8, i8* %scevgep22, i64 0
  %1 = load i8, i8* %scevgep25, align 1
  %call10 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  %conv = zext i8 %call10 to i32
  %scevgep20 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %2 = load i8, i8* %scevgep20, align 1
  %conv15 = zext i8 %2 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %scevgep28 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep29 = getelementptr i8, i8* %scevgep28, i64 1
  store i8 %conv16, i8* %scevgep29, align 1
  %scevgep33 = getelementptr i8, i8* %scevgep30, i64 0
  %3 = load i8, i8* %scevgep33, align 1
  %4 = load i8, i8* %b, align 1
  %call25 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4)
  %conv26 = zext i8 %call25 to i32
  %scevgep21 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %5 = load i8, i8* %scevgep21, align 1
  %conv31 = zext i8 %5 to i32
  %xor32 = xor i32 %conv26, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %scevgep34 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep35 = getelementptr i8, i8* %scevgep34, i64 2
  store i8 %conv33, i8* %scevgep35, align 1
  %6 = load i8, i8* %a, align 1
  %7 = load i8, i8* %b, align 1
  %call50 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  store i8 %call50, i8* %c, align 1
  %scevgep10.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep10.1, align 1
  %conv64.1 = zext i8 %8 to i32
  %9 = load i8, i8* %c, align 1
  %conv67.1 = zext i8 %9 to i32
  %xor68.1 = xor i32 %conv67.1, %conv64.1
  %conv69.1 = trunc i32 %xor68.1 to i8
  store i8 %conv69.1, i8* %c, align 1
  %scevgep = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 1, i64 0
  %10 = bitcast i8* %scevgep to [2 x [2 x i8]]*
  %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1
  %11 = load i8, i8* %arrayidx47.1, align 1
  %arrayidx49.1 = getelementptr inbounds i8, i8* %b, i64 1
  %12 = load i8, i8* %arrayidx49.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12)
  %arrayidx52.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.1, i8* %arrayidx52.1, align 1
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep10.141 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %10, i64 0, i64 0, i64 0
  %13 = load i8, i8* %scevgep10.141, align 1
  %conv64.142 = zext i8 %13 to i32
  %14 = load i8, i8* %arrayidx66.1, align 1
  %conv67.143 = zext i8 %14 to i32
  %xor68.144 = xor i32 %conv67.143, %conv64.142
  %conv69.145 = trunc i32 %xor68.144 to i8
  store i8 %conv69.145, i8* %arrayidx66.1, align 1
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep11.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep11.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call14 = call zeroext i8 (...) @rand()
  %conv15 = zext i8 %call14 to i32
  %2 = load i8, i8* %x, align 1
  %conv16 = zext i8 %2 to i32
  %xor = xor i32 %conv16, %conv15
  %conv17 = trunc i32 %xor to i8
  store i8 %conv17, i8* %x, align 1
  %conv18 = zext i8 %call14 to i32
  %arrayidx20 = getelementptr inbounds i8, i8* %x, i64 1
  %3 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %3 to i32
  %xor22 = xor i32 %conv21, %conv18
  %conv23 = trunc i32 %xor22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  %conv27 = zext i8 %call to i32
  %4 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep.1, align 1
  %conv.i.i42.1 = zext i8 %5 to i32
  %conv1.i.i43.1 = zext i8 %4 to i32
  %xor.i.i44.1 = xor i32 %conv1.i.i43.1, %conv.i.i42.1
  %conv2.i.i45.1 = trunc i32 %xor.i.i44.1 to i8
  %conv29 = zext i8 %conv2.i.i45.1 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  call void @assert(i1 zeroext %cmp30)
  ret void
}

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r.i = alloca [2 x [2 x i8]], align 1
  %u.i = alloca [2 x [2 x i8]], align 1
  %br = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep77.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep77.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep73.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep73.1, align 1
  %conv.i.i27.1 = zext i8 %3 to i32
  %conv1.i.i28.1 = zext i8 %2 to i32
  %xor.i.i29.1 = xor i32 %conv1.i.i28.1, %conv.i.i27.1
  %conv2.i.i30.1 = trunc i32 %xor.i.i29.1 to i8
  %conv7 = zext i8 %conv2.i.i30.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %4 = load i8, i8* %b, align 1
  %scevgep69 = getelementptr [2 x i8], [2 x i8]* %br, i64 0, i64 0
  store i8 %4, i8* %scevgep69, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep68.1, align 1
  %scevgep69.1 = getelementptr [2 x i8], [2 x i8]* %br, i64 0, i64 1
  store i8 %5, i8* %scevgep69.1, align 1
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %br, i64 0, i64 0
  %call.i36 = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i36 to i32
  %scevgep64 = getelementptr [2 x i8], [2 x i8]* %br, i64 0, i64 0
  %6 = load i8, i8* %scevgep64, align 1
  %scevgep64.1 = getelementptr [2 x i8], [2 x i8]* %br, i64 0, i64 1
  %7 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv2.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i37 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i37) #2
  %call14.i = call zeroext i8 (...) @rand() #2
  %conv15.i = zext i8 %call14.i to i32
  %8 = load i8, i8* %arraydecay10, align 1
  %conv16.i = zext i8 %8 to i32
  %xor.i = xor i32 %conv16.i, %conv15.i
  %conv17.i = trunc i32 %xor.i to i8
  store i8 %conv17.i, i8* %arraydecay10, align 1
  %conv18.i = zext i8 %call14.i to i32
  %arrayidx20.i = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %9 = load i8, i8* %arrayidx20.i, align 1
  %conv21.i = zext i8 %9 to i32
  %xor22.i = xor i32 %conv21.i, %conv18.i
  %conv23.i = trunc i32 %xor22.i to i8
  store i8 %conv23.i, i8* %arrayidx20.i, align 1
  %conv27.i = zext i8 %call.i36 to i32
  %scevgep60 = getelementptr [2 x i8], [2 x i8]* %br, i64 0, i64 0
  %10 = load i8, i8* %scevgep60, align 1
  %scevgep60.1 = getelementptr [2 x i8], [2 x i8]* %br, i64 0, i64 1
  %11 = load i8, i8* %scevgep60.1, align 1
  %conv.i.i42.i.1 = zext i8 %11 to i32
  %conv1.i.i43.i.1 = zext i8 %10 to i32
  %xor.i.i44.i.1 = xor i32 %conv1.i.i43.i.1, %conv.i.i42.i.1
  %conv2.i.i45.i.1 = trunc i32 %xor.i.i44.i.1 to i8
  %conv29.i = zext i8 %conv2.i.i45.i.1 to i32
  %cmp30.i = icmp eq i32 %conv27.i, %conv29.i
  call void @assert(i1 zeroext %cmp30.i) #2
  %scevgep32 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep3233 = bitcast i8* %scevgep32 to [2 x [2 x i8]]*
  %scevgep41 = getelementptr i8, i8* %b, i64 1
  %scevgep49 = getelementptr i8, i8* %a, i64 1
  %call.i50 = call zeroext i8 (...) @rand() #2
  %scevgep38 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  store i8 %call.i50, i8* %scevgep38, align 1
  %12 = load i8, i8* %a, align 1
  %scevgep44 = getelementptr i8, i8* %scevgep41, i64 0
  %13 = load i8, i8* %scevgep44, align 1
  %call10.i = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13) #2
  %conv.i53 = zext i8 %call10.i to i32
  %scevgep39 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %14 = load i8, i8* %scevgep39, align 1
  %conv15.i54 = zext i8 %14 to i32
  %xor.i55 = xor i32 %conv.i53, %conv15.i54
  %conv16.i56 = trunc i32 %xor.i55 to i8
  %scevgep47 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u.i, i64 0, i64 0, i64 0
  %scevgep48 = getelementptr i8, i8* %scevgep47, i64 1
  store i8 %conv16.i56, i8* %scevgep48, align 1
  %scevgep52 = getelementptr i8, i8* %scevgep49, i64 0
  %15 = load i8, i8* %scevgep52, align 1
  %16 = load i8, i8* %b, align 1
  %call25.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  %conv26.i = zext i8 %call25.i to i32
  %scevgep40 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %17 = load i8, i8* %scevgep40, align 1
  %conv31.i = zext i8 %17 to i32
  %xor32.i = xor i32 %conv26.i, %conv31.i
  %conv33.i = trunc i32 %xor32.i to i8
  %scevgep53 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u.i, i64 0, i64 0, i64 0
  %scevgep54 = getelementptr i8, i8* %scevgep53, i64 2
  store i8 %conv33.i, i8* %scevgep54, align 1
  %18 = load i8, i8* %a, align 1
  %19 = load i8, i8* %b, align 1
  %call50.i = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #2
  store i8 %call50.i, i8* %c, align 1
  %scevgep29.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep29.1, align 1
  %conv64.i.1 = zext i8 %20 to i32
  %21 = load i8, i8* %c, align 1
  %conv67.i.1 = zext i8 %21 to i32
  %xor68.i.1 = xor i32 %conv67.i.1, %conv64.i.1
  %conv69.i.1 = trunc i32 %xor68.i.1 to i8
  store i8 %conv69.i.1, i8* %c, align 1
  %scevgep28 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u.i, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep28 to [2 x [2 x i8]]*
  %arrayidx47.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %23 = load i8, i8* %arrayidx47.i.1, align 1
  %arrayidx49.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %24 = load i8, i8* %arrayidx49.i.1, align 1
  %call50.i.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %arrayidx52.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.i.1, i8* %arrayidx52.i.1, align 1
  %arrayidx66.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep29.181 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %22, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep29.181, align 1
  %conv64.i.182 = zext i8 %25 to i32
  %26 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.183 = zext i8 %26 to i32
  %xor68.i.184 = xor i32 %conv67.i.183, %conv64.i.182
  %conv69.i.185 = trunc i32 %xor68.i.184 to i8
  store i8 %conv69.i.185, i8* %arrayidx66.i.1, align 1
  %call11 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv12 = zext i8 %call11 to i32
  %27 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %28 = load i8, i8* %scevgep.1, align 1
  %conv.i.i71.1 = zext i8 %28 to i32
  %conv1.i.i72.1 = zext i8 %27 to i32
  %xor.i.i73.1 = xor i32 %conv1.i.i72.1, %conv.i.i71.1
  %conv2.i.i74.1 = trunc i32 %xor.i.i73.1 to i8
  %conv14 = zext i8 %conv2.i.i74.1 to i32
  %cmp15 = icmp eq i32 %conv12, %conv14
  call void @assert(i1 zeroext %cmp15)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
