; ModuleID = '../examples/hpc1-mult.inline-2.ll'
source_filename = "../examples/hpc1-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
define dso_local void @sec_mult_dom(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [3 x [3 x i8]], align 1
  %u = alloca [3 x [3 x i8]], align 1
  %scevgep13 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep1314 = bitcast i8* %scevgep13 to [3 x [3 x i8]]*
  %scevgep22 = getelementptr i8, i8* %b, i64 1
  %scevgep30 = getelementptr i8, i8* %a, i64 1
  %call = call zeroext i8 (...) @rand()
  %scevgep19 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  store i8 %call, i8* %scevgep19, align 1
  %0 = load i8, i8* %a, align 1
  %1 = load i8, i8* %scevgep22, align 1
  %call10 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  %conv = zext i8 %call10 to i32
  %scevgep20 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %2 = load i8, i8* %scevgep20, align 1
  %conv15 = zext i8 %2 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %scevgep28 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep29 = getelementptr i8, i8* %scevgep28, i64 1
  store i8 %conv16, i8* %scevgep29, align 1
  %3 = load i8, i8* %scevgep30, align 1
  %4 = load i8, i8* %b, align 1
  %call25 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4)
  %conv26 = zext i8 %call25 to i32
  %scevgep21 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %5 = load i8, i8* %scevgep21, align 1
  %conv31 = zext i8 %5 to i32
  %xor32 = xor i32 %conv26, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %scevgep36 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 3
  store i8 %conv33, i8* %scevgep36, align 1
  %call.158 = call zeroext i8 (...) @rand()
  %scevgep19.159 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  store i8 %call.158, i8* %scevgep19.159, align 1
  %6 = load i8, i8* %a, align 1
  %scevgep25.160 = getelementptr i8, i8* %scevgep22, i64 1
  %7 = load i8, i8* %scevgep25.160, align 1
  %call10.161 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %conv.162 = zext i8 %call10.161 to i32
  %scevgep20.163 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep20.163, align 1
  %conv15.164 = zext i8 %8 to i32
  %xor.165 = xor i32 %conv.162, %conv15.164
  %conv16.166 = trunc i32 %xor.165 to i8
  %scevgep28.167 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 1
  %scevgep29.168 = getelementptr i8, i8* %scevgep28.167, i64 1
  store i8 %conv16.166, i8* %scevgep29.168, align 1
  %scevgep33.169 = getelementptr i8, i8* %scevgep30, i64 1
  %9 = load i8, i8* %scevgep33.169, align 1
  %10 = load i8, i8* %b, align 1
  %call25.170 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %conv26.171 = zext i8 %call25.170 to i32
  %scevgep21.172 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep21.172, align 1
  %conv31.173 = zext i8 %11 to i32
  %xor32.174 = xor i32 %conv26.171, %conv31.173
  %conv33.175 = trunc i32 %xor32.174 to i8
  %scevgep36.176 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 6
  store i8 %conv33.175, i8* %scevgep36.176, align 1
  %scevgep16 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep1314, i64 0, i64 1, i64 1
  %12 = bitcast i8* %scevgep16 to [3 x [3 x i8]]*
  %scevgep24 = getelementptr i8, i8* %scevgep22, i64 1
  %scevgep27 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 1, i64 1
  %13 = bitcast i8* %scevgep27 to [3 x [3 x i8]]*
  %scevgep32 = getelementptr i8, i8* %scevgep30, i64 1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx24.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call.1 = call zeroext i8 (...) @rand()
  %scevgep19.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 0, i64 0
  store i8 %call.1, i8* %scevgep19.1, align 1
  %14 = load i8, i8* %arrayidx7.1, align 1
  %15 = load i8, i8* %scevgep24, align 1
  %call10.1 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %conv.1 = zext i8 %call10.1 to i32
  %scevgep20.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 0, i64 0
  %16 = load i8, i8* %scevgep20.1, align 1
  %conv15.1 = zext i8 %16 to i32
  %xor.1 = xor i32 %conv.1, %conv15.1
  %conv16.1 = trunc i32 %xor.1 to i8
  %scevgep28.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %13, i64 0, i64 0, i64 0
  %scevgep29.1 = getelementptr i8, i8* %scevgep28.1, i64 1
  store i8 %conv16.1, i8* %scevgep29.1, align 1
  %17 = load i8, i8* %scevgep32, align 1
  %18 = load i8, i8* %arrayidx24.1, align 1
  %call25.1 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18)
  %conv26.1 = zext i8 %call25.1 to i32
  %scevgep21.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %12, i64 0, i64 0, i64 0
  %19 = load i8, i8* %scevgep21.1, align 1
  %conv31.1 = zext i8 %19 to i32
  %xor32.1 = xor i32 %conv26.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep36.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %13, i64 0, i64 0, i64 3
  store i8 %conv33.1, i8* %scevgep36.1, align 1
  %20 = load i8, i8* %a, align 1
  %21 = load i8, i8* %b, align 1
  %call50 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  store i8 %call50, i8* %c, align 1
  %scevgep10.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep10.1, align 1
  %conv64.1 = zext i8 %22 to i32
  %23 = load i8, i8* %c, align 1
  %conv67.1 = zext i8 %23 to i32
  %xor68.1 = xor i32 %conv67.1, %conv64.1
  %conv69.1 = trunc i32 %xor68.1 to i8
  store i8 %conv69.1, i8* %c, align 1
  %scevgep10.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 0, i64 2
  %24 = load i8, i8* %scevgep10.2, align 1
  %conv64.2 = zext i8 %24 to i32
  %25 = load i8, i8* %c, align 1
  %conv67.2 = zext i8 %25 to i32
  %xor68.2 = xor i32 %conv67.2, %conv64.2
  %conv69.2 = trunc i32 %xor68.2 to i8
  store i8 %conv69.2, i8* %c, align 1
  %scevgep = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep to [3 x [3 x i8]]*
  %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1
  %27 = load i8, i8* %arrayidx47.1, align 1
  %arrayidx49.1 = getelementptr inbounds i8, i8* %b, i64 1
  %28 = load i8, i8* %arrayidx49.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %arrayidx52.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.1, i8* %arrayidx52.1, align 1
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep10.142 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 0
  %29 = load i8, i8* %scevgep10.142, align 1
  %conv64.143 = zext i8 %29 to i32
  %30 = load i8, i8* %arrayidx66.1, align 1
  %conv67.144 = zext i8 %30 to i32
  %xor68.145 = xor i32 %conv67.144, %conv64.143
  %conv69.146 = trunc i32 %xor68.145 to i8
  store i8 %conv69.146, i8* %arrayidx66.1, align 1
  %scevgep10.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 2
  %31 = load i8, i8* %scevgep10.2.1, align 1
  %conv64.2.1 = zext i8 %31 to i32
  %32 = load i8, i8* %arrayidx66.1, align 1
  %conv67.2.1 = zext i8 %32 to i32
  %xor68.2.1 = xor i32 %conv67.2.1, %conv64.2.1
  %conv69.2.1 = trunc i32 %xor68.2.1 to i8
  store i8 %conv69.2.1, i8* %arrayidx66.1, align 1
  %scevgep.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 1, i64 0
  %33 = bitcast i8* %scevgep.1 to [3 x [3 x i8]]*
  %arrayidx47.2 = getelementptr inbounds i8, i8* %a, i64 2
  %34 = load i8, i8* %arrayidx47.2, align 1
  %arrayidx49.2 = getelementptr inbounds i8, i8* %b, i64 2
  %35 = load i8, i8* %arrayidx49.2, align 1
  %call50.2 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %arrayidx52.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call50.2, i8* %arrayidx52.2, align 1
  %arrayidx66.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep10.251 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep10.251, align 1
  %conv64.252 = zext i8 %36 to i32
  %37 = load i8, i8* %arrayidx66.2, align 1
  %conv67.253 = zext i8 %37 to i32
  %xor68.254 = xor i32 %conv67.253, %conv64.252
  %conv69.255 = trunc i32 %xor68.254 to i8
  store i8 %conv69.255, i8* %arrayidx66.2, align 1
  %scevgep10.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep10.1.2, align 1
  %conv64.1.2 = zext i8 %38 to i32
  %39 = load i8, i8* %arrayidx66.2, align 1
  %conv67.1.2 = zext i8 %39 to i32
  %xor68.1.2 = xor i32 %conv67.1.2, %conv64.1.2
  %conv69.1.2 = trunc i32 %xor68.1.2 to i8
  store i8 %conv69.1.2, i8* %arrayidx66.2, align 1
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
  %scevgep11.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep11.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call14 = call zeroext i8 (...) @rand()
  %conv15 = zext i8 %call14 to i32
  %3 = load i8, i8* %x, align 1
  %conv16 = zext i8 %3 to i32
  %xor = xor i32 %conv16, %conv15
  %conv17 = trunc i32 %xor to i8
  store i8 %conv17, i8* %x, align 1
  %conv18 = zext i8 %call14 to i32
  %arrayidx20 = getelementptr inbounds i8, i8* %x, i64 1
  %4 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %4 to i32
  %xor22 = xor i32 %conv21, %conv18
  %conv23 = trunc i32 %xor22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  %call14.113 = call zeroext i8 (...) @rand()
  %conv15.114 = zext i8 %call14.113 to i32
  %5 = load i8, i8* %x, align 1
  %conv16.115 = zext i8 %5 to i32
  %xor.116 = xor i32 %conv16.115, %conv15.114
  %conv17.117 = trunc i32 %xor.116 to i8
  store i8 %conv17.117, i8* %x, align 1
  %conv18.118 = zext i8 %call14.113 to i32
  %arrayidx20.119 = getelementptr inbounds i8, i8* %x, i64 2
  %6 = load i8, i8* %arrayidx20.119, align 1
  %conv21.120 = zext i8 %6 to i32
  %xor22.121 = xor i32 %conv21.120, %conv18.118
  %conv23.122 = trunc i32 %xor22.121 to i8
  store i8 %conv23.122, i8* %arrayidx20.119, align 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call14.1 = call zeroext i8 (...) @rand()
  %conv15.1 = zext i8 %call14.1 to i32
  %7 = load i8, i8* %arrayidx.1, align 1
  %conv16.1 = zext i8 %7 to i32
  %xor.1 = xor i32 %conv16.1, %conv15.1
  %conv17.1 = trunc i32 %xor.1 to i8
  store i8 %conv17.1, i8* %arrayidx.1, align 1
  %conv18.1 = zext i8 %call14.1 to i32
  %arrayidx20.1 = getelementptr inbounds i8, i8* %x, i64 2
  %8 = load i8, i8* %arrayidx20.1, align 1
  %conv21.1 = zext i8 %8 to i32
  %xor22.1 = xor i32 %conv21.1, %conv18.1
  %conv23.1 = trunc i32 %xor22.1 to i8
  store i8 %conv23.1, i8* %arrayidx20.1, align 1
  %conv27 = zext i8 %call to i32
  %9 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %10 = load i8, i8* %scevgep.1, align 1
  %conv.i.i42.1 = zext i8 %10 to i32
  %conv1.i.i43.1 = zext i8 %9 to i32
  %xor.i.i44.1 = xor i32 %conv1.i.i43.1, %conv.i.i42.1
  %conv2.i.i45.1 = trunc i32 %xor.i.i44.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %11 = load i8, i8* %scevgep.2, align 1
  %conv.i.i42.2 = zext i8 %11 to i32
  %conv1.i.i43.2 = zext i8 %conv2.i.i45.1 to i32
  %xor.i.i44.2 = xor i32 %conv1.i.i43.2, %conv.i.i42.2
  %conv2.i.i45.2 = trunc i32 %xor.i.i44.2 to i8
  %conv29 = zext i8 %conv2.i.i45.2 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  call void @assert(i1 zeroext %cmp30)
  ret void
}

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r.i = alloca [3 x [3 x i8]], align 1
  %u.i = alloca [3 x [3 x i8]], align 1
  %br = alloca [3 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep78.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep78.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep78.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep78.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep74.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i27.1 = zext i8 %4 to i32
  %conv1.i.i28.1 = zext i8 %3 to i32
  %xor.i.i29.1 = xor i32 %conv1.i.i28.1, %conv.i.i27.1
  %conv2.i.i30.1 = trunc i32 %xor.i.i29.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i27.2 = zext i8 %5 to i32
  %conv1.i.i28.2 = zext i8 %conv2.i.i30.1 to i32
  %xor.i.i29.2 = xor i32 %conv1.i.i28.2, %conv.i.i27.2
  %conv2.i.i30.2 = trunc i32 %xor.i.i29.2 to i8
  %conv7 = zext i8 %conv2.i.i30.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %6 = load i8, i8* %b, align 1
  %scevgep70 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 0
  store i8 %6, i8* %scevgep70, align 1
  %scevgep69.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep69.1, align 1
  %scevgep70.1 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 1
  store i8 %7, i8* %scevgep70.1, align 1
  %scevgep69.2 = getelementptr i8, i8* %b, i64 2
  %8 = load i8, i8* %scevgep69.2, align 1
  %scevgep70.2 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 2
  store i8 %8, i8* %scevgep70.2, align 1
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %br, i64 0, i64 0
  %call.i36 = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i36 to i32
  %scevgep65 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 0
  %9 = load i8, i8* %scevgep65, align 1
  %scevgep65.1 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 1
  %10 = load i8, i8* %scevgep65.1, align 1
  %conv.i.i.i.1 = zext i8 %10 to i32
  %conv1.i.i.i.1 = zext i8 %9 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep65.2 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 2
  %11 = load i8, i8* %scevgep65.2, align 1
  %conv.i.i.i.2 = zext i8 %11 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i37 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i37) #2
  %call14.i = call zeroext i8 (...) @rand() #2
  %conv15.i = zext i8 %call14.i to i32
  %12 = load i8, i8* %arraydecay10, align 1
  %conv16.i = zext i8 %12 to i32
  %xor.i = xor i32 %conv16.i, %conv15.i
  %conv17.i = trunc i32 %xor.i to i8
  store i8 %conv17.i, i8* %arraydecay10, align 1
  %conv18.i = zext i8 %call14.i to i32
  %arrayidx20.i = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %13 = load i8, i8* %arrayidx20.i, align 1
  %conv21.i = zext i8 %13 to i32
  %xor22.i = xor i32 %conv21.i, %conv18.i
  %conv23.i = trunc i32 %xor22.i to i8
  store i8 %conv23.i, i8* %arrayidx20.i, align 1
  %call14.i.1117 = call zeroext i8 (...) @rand() #2
  %conv15.i.1118 = zext i8 %call14.i.1117 to i32
  %14 = load i8, i8* %arraydecay10, align 1
  %conv16.i.1119 = zext i8 %14 to i32
  %xor.i.1120 = xor i32 %conv16.i.1119, %conv15.i.1118
  %conv17.i.1121 = trunc i32 %xor.i.1120 to i8
  store i8 %conv17.i.1121, i8* %arraydecay10, align 1
  %conv18.i.1122 = zext i8 %call14.i.1117 to i32
  %arrayidx20.i.1123 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %15 = load i8, i8* %arrayidx20.i.1123, align 1
  %conv21.i.1124 = zext i8 %15 to i32
  %xor22.i.1125 = xor i32 %conv21.i.1124, %conv18.i.1122
  %conv23.i.1126 = trunc i32 %xor22.i.1125 to i8
  store i8 %conv23.i.1126, i8* %arrayidx20.i.1123, align 1
  %arrayidx.i41.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %call14.i.1 = call zeroext i8 (...) @rand() #2
  %conv15.i.1 = zext i8 %call14.i.1 to i32
  %16 = load i8, i8* %arrayidx.i41.1, align 1
  %conv16.i.1 = zext i8 %16 to i32
  %xor.i.1 = xor i32 %conv16.i.1, %conv15.i.1
  %conv17.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv17.i.1, i8* %arrayidx.i41.1, align 1
  %conv18.i.1 = zext i8 %call14.i.1 to i32
  %arrayidx20.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %17 = load i8, i8* %arrayidx20.i.1, align 1
  %conv21.i.1 = zext i8 %17 to i32
  %xor22.i.1 = xor i32 %conv21.i.1, %conv18.i.1
  %conv23.i.1 = trunc i32 %xor22.i.1 to i8
  store i8 %conv23.i.1, i8* %arrayidx20.i.1, align 1
  %conv27.i = zext i8 %call.i36 to i32
  %scevgep61 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 0
  %18 = load i8, i8* %scevgep61, align 1
  %scevgep61.1 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 1
  %19 = load i8, i8* %scevgep61.1, align 1
  %conv.i.i42.i.1 = zext i8 %19 to i32
  %conv1.i.i43.i.1 = zext i8 %18 to i32
  %xor.i.i44.i.1 = xor i32 %conv1.i.i43.i.1, %conv.i.i42.i.1
  %conv2.i.i45.i.1 = trunc i32 %xor.i.i44.i.1 to i8
  %scevgep61.2 = getelementptr [3 x i8], [3 x i8]* %br, i64 0, i64 2
  %20 = load i8, i8* %scevgep61.2, align 1
  %conv.i.i42.i.2 = zext i8 %20 to i32
  %conv1.i.i43.i.2 = zext i8 %conv2.i.i45.i.1 to i32
  %xor.i.i44.i.2 = xor i32 %conv1.i.i43.i.2, %conv.i.i42.i.2
  %conv2.i.i45.i.2 = trunc i32 %xor.i.i44.i.2 to i8
  %conv29.i = zext i8 %conv2.i.i45.i.2 to i32
  %cmp30.i = icmp eq i32 %conv27.i, %conv29.i
  call void @assert(i1 zeroext %cmp30.i) #2
  %scevgep32 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep3233 = bitcast i8* %scevgep32 to [3 x [3 x i8]]*
  %scevgep41 = getelementptr i8, i8* %b, i64 1
  %scevgep49 = getelementptr i8, i8* %a, i64 1
  %call.i50 = call zeroext i8 (...) @rand() #2
  %scevgep38 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  store i8 %call.i50, i8* %scevgep38, align 1
  %21 = load i8, i8* %a, align 1
  %22 = load i8, i8* %scevgep41, align 1
  %call10.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #2
  %conv.i53 = zext i8 %call10.i to i32
  %scevgep39 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep39, align 1
  %conv15.i54 = zext i8 %23 to i32
  %xor.i55 = xor i32 %conv.i53, %conv15.i54
  %conv16.i56 = trunc i32 %xor.i55 to i8
  %scevgep47 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 0, i64 0
  %scevgep48 = getelementptr i8, i8* %scevgep47, i64 1
  store i8 %conv16.i56, i8* %scevgep48, align 1
  %24 = load i8, i8* %scevgep49, align 1
  %25 = load i8, i8* %b, align 1
  %call25.i = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #2
  %conv26.i = zext i8 %call25.i to i32
  %scevgep40 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %26 = load i8, i8* %scevgep40, align 1
  %conv31.i = zext i8 %26 to i32
  %xor32.i = xor i32 %conv26.i, %conv31.i
  %conv33.i = trunc i32 %xor32.i to i8
  %scevgep55 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 0, i64 3
  store i8 %conv33.i, i8* %scevgep55, align 1
  %call.i50.198 = call zeroext i8 (...) @rand() #2
  %scevgep38.199 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  store i8 %call.i50.198, i8* %scevgep38.199, align 1
  %27 = load i8, i8* %a, align 1
  %scevgep44.1100 = getelementptr i8, i8* %scevgep41, i64 1
  %28 = load i8, i8* %scevgep44.1100, align 1
  %call10.i.1101 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %conv.i53.1102 = zext i8 %call10.i.1101 to i32
  %scevgep39.1103 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  %29 = load i8, i8* %scevgep39.1103, align 1
  %conv15.i54.1104 = zext i8 %29 to i32
  %xor.i55.1105 = xor i32 %conv.i53.1102, %conv15.i54.1104
  %conv16.i56.1106 = trunc i32 %xor.i55.1105 to i8
  %scevgep47.1107 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 0, i64 1
  %scevgep48.1108 = getelementptr i8, i8* %scevgep47.1107, i64 1
  store i8 %conv16.i56.1106, i8* %scevgep48.1108, align 1
  %scevgep52.1109 = getelementptr i8, i8* %scevgep49, i64 1
  %30 = load i8, i8* %scevgep52.1109, align 1
  %31 = load i8, i8* %b, align 1
  %call25.i.1110 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #2
  %conv26.i.1111 = zext i8 %call25.i.1110 to i32
  %scevgep40.1112 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  %32 = load i8, i8* %scevgep40.1112, align 1
  %conv31.i.1113 = zext i8 %32 to i32
  %xor32.i.1114 = xor i32 %conv26.i.1111, %conv31.i.1113
  %conv33.i.1115 = trunc i32 %xor32.i.1114 to i8
  %scevgep55.1116 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 0, i64 6
  store i8 %conv33.i.1115, i8* %scevgep55.1116, align 1
  %scevgep35 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3233, i64 0, i64 1, i64 1
  %33 = bitcast i8* %scevgep35 to [3 x [3 x i8]]*
  %scevgep43 = getelementptr i8, i8* %scevgep41, i64 1
  %scevgep46 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 1, i64 1
  %34 = bitcast i8* %scevgep46 to [3 x [3 x i8]]*
  %scevgep51 = getelementptr i8, i8* %scevgep49, i64 1
  %arrayidx7.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx24.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call.i50.1 = call zeroext i8 (...) @rand() #2
  %scevgep38.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  store i8 %call.i50.1, i8* %scevgep38.1, align 1
  %35 = load i8, i8* %arrayidx7.i.1, align 1
  %36 = load i8, i8* %scevgep43, align 1
  %call10.i.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #2
  %conv.i53.1 = zext i8 %call10.i.1 to i32
  %scevgep39.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep39.1, align 1
  %conv15.i54.1 = zext i8 %37 to i32
  %xor.i55.1 = xor i32 %conv.i53.1, %conv15.i54.1
  %conv16.i56.1 = trunc i32 %xor.i55.1 to i8
  %scevgep47.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 0
  %scevgep48.1 = getelementptr i8, i8* %scevgep47.1, i64 1
  store i8 %conv16.i56.1, i8* %scevgep48.1, align 1
  %38 = load i8, i8* %scevgep51, align 1
  %39 = load i8, i8* %arrayidx24.i.1, align 1
  %call25.i.1 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  %conv26.i.1 = zext i8 %call25.i.1 to i32
  %scevgep40.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %33, i64 0, i64 0, i64 0
  %40 = load i8, i8* %scevgep40.1, align 1
  %conv31.i.1 = zext i8 %40 to i32
  %xor32.i.1 = xor i32 %conv26.i.1, %conv31.i.1
  %conv33.i.1 = trunc i32 %xor32.i.1 to i8
  %scevgep55.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 3
  store i8 %conv33.i.1, i8* %scevgep55.1, align 1
  %41 = load i8, i8* %a, align 1
  %42 = load i8, i8* %b, align 1
  %call50.i = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #2
  store i8 %call50.i, i8* %c, align 1
  %scevgep29.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep29.1, align 1
  %conv64.i.1 = zext i8 %43 to i32
  %44 = load i8, i8* %c, align 1
  %conv67.i.1 = zext i8 %44 to i32
  %xor68.i.1 = xor i32 %conv67.i.1, %conv64.i.1
  %conv69.i.1 = trunc i32 %xor68.i.1 to i8
  store i8 %conv69.i.1, i8* %c, align 1
  %scevgep29.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep29.2, align 1
  %conv64.i.2 = zext i8 %45 to i32
  %46 = load i8, i8* %c, align 1
  %conv67.i.2 = zext i8 %46 to i32
  %xor68.i.2 = xor i32 %conv67.i.2, %conv64.i.2
  %conv69.i.2 = trunc i32 %xor68.i.2 to i8
  store i8 %conv69.i.2, i8* %c, align 1
  %scevgep28 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %u.i, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep28 to [3 x [3 x i8]]*
  %arrayidx47.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %48 = load i8, i8* %arrayidx47.i.1, align 1
  %arrayidx49.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %49 = load i8, i8* %arrayidx49.i.1, align 1
  %call50.i.1 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  %arrayidx52.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.i.1, i8* %arrayidx52.i.1, align 1
  %arrayidx66.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep29.182 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep29.182, align 1
  %conv64.i.183 = zext i8 %50 to i32
  %51 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.184 = zext i8 %51 to i32
  %xor68.i.185 = xor i32 %conv67.i.184, %conv64.i.183
  %conv69.i.186 = trunc i32 %xor68.i.185 to i8
  store i8 %conv69.i.186, i8* %arrayidx66.i.1, align 1
  %scevgep29.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 2
  %52 = load i8, i8* %scevgep29.2.1, align 1
  %conv64.i.2.1 = zext i8 %52 to i32
  %53 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.2.1 = zext i8 %53 to i32
  %xor68.i.2.1 = xor i32 %conv67.i.2.1, %conv64.i.2.1
  %conv69.i.2.1 = trunc i32 %xor68.i.2.1 to i8
  store i8 %conv69.i.2.1, i8* %arrayidx66.i.1, align 1
  %scevgep28.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 1, i64 0
  %54 = bitcast i8* %scevgep28.1 to [3 x [3 x i8]]*
  %arrayidx47.i.2 = getelementptr inbounds i8, i8* %a, i64 2
  %55 = load i8, i8* %arrayidx47.i.2, align 1
  %arrayidx49.i.2 = getelementptr inbounds i8, i8* %b, i64 2
  %56 = load i8, i8* %arrayidx49.i.2, align 1
  %call50.i.2 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #2
  %arrayidx52.i.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call50.i.2, i8* %arrayidx52.i.2, align 1
  %arrayidx66.i.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep29.291 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep29.291, align 1
  %conv64.i.292 = zext i8 %57 to i32
  %58 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.293 = zext i8 %58 to i32
  %xor68.i.294 = xor i32 %conv67.i.293, %conv64.i.292
  %conv69.i.295 = trunc i32 %xor68.i.294 to i8
  store i8 %conv69.i.295, i8* %arrayidx66.i.2, align 1
  %scevgep29.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %54, i64 0, i64 0, i64 1
  %59 = load i8, i8* %scevgep29.1.2, align 1
  %conv64.i.1.2 = zext i8 %59 to i32
  %60 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.1.2 = zext i8 %60 to i32
  %xor68.i.1.2 = xor i32 %conv67.i.1.2, %conv64.i.1.2
  %conv69.i.1.2 = trunc i32 %xor68.i.1.2 to i8
  store i8 %conv69.i.1.2, i8* %arrayidx66.i.2, align 1
  %call11 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv12 = zext i8 %call11 to i32
  %61 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %62 = load i8, i8* %scevgep.1, align 1
  %conv.i.i71.1 = zext i8 %62 to i32
  %conv1.i.i72.1 = zext i8 %61 to i32
  %xor.i.i73.1 = xor i32 %conv1.i.i72.1, %conv.i.i71.1
  %conv2.i.i74.1 = trunc i32 %xor.i.i73.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %63 = load i8, i8* %scevgep.2, align 1
  %conv.i.i71.2 = zext i8 %63 to i32
  %conv1.i.i72.2 = zext i8 %conv2.i.i74.1 to i32
  %xor.i.i73.2 = xor i32 %conv1.i.i72.2, %conv.i.i71.2
  %conv2.i.i74.2 = trunc i32 %xor.i.i73.2 to i8
  %conv14 = zext i8 %conv2.i.i74.2 to i32
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
