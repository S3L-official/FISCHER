; ModuleID = '../examples/hpc1-mult.inline-3.ll'
source_filename = "../examples/hpc1-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
define dso_local void @sec_mult_dom(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [4 x [4 x i8]], align 16
  %u = alloca [4 x [4 x i8]], align 16
  %scevgep13 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep1314 = bitcast i8* %scevgep13 to [4 x [4 x i8]]*
  %scevgep22 = getelementptr i8, i8* %b, i64 1
  %scevgep30 = getelementptr i8, i8* %a, i64 1
  %call = call zeroext i8 (...) @rand()
  %scevgep19 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  store i8 %call, i8* %scevgep19, align 1
  %0 = load i8, i8* %a, align 1
  %1 = load i8, i8* %scevgep22, align 1
  %call10 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  %conv = zext i8 %call10 to i32
  %scevgep20 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %2 = load i8, i8* %scevgep20, align 1
  %conv15 = zext i8 %2 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %scevgep28 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep29 = getelementptr i8, i8* %scevgep28, i64 1
  store i8 %conv16, i8* %scevgep29, align 1
  %3 = load i8, i8* %scevgep30, align 1
  %4 = load i8, i8* %b, align 1
  %call25 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4)
  %conv26 = zext i8 %call25 to i32
  %scevgep21 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %5 = load i8, i8* %scevgep21, align 1
  %conv31 = zext i8 %5 to i32
  %xor32 = xor i32 %conv26, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %scevgep34 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep35 = getelementptr i8, i8* %scevgep34, i64 4
  store i8 %conv33, i8* %scevgep35, align 1
  %call.166 = call zeroext i8 (...) @rand()
  %scevgep19.167 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  store i8 %call.166, i8* %scevgep19.167, align 1
  %6 = load i8, i8* %a, align 1
  %scevgep25.1 = getelementptr i8, i8* %scevgep22, i64 1
  %7 = load i8, i8* %scevgep25.1, align 1
  %call10.168 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %conv.169 = zext i8 %call10.168 to i32
  %scevgep20.170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep20.170, align 1
  %conv15.171 = zext i8 %8 to i32
  %xor.172 = xor i32 %conv.169, %conv15.171
  %conv16.173 = trunc i32 %xor.172 to i8
  %scevgep28.174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 1
  %scevgep29.175 = getelementptr i8, i8* %scevgep28.174, i64 1
  store i8 %conv16.173, i8* %scevgep29.175, align 1
  %scevgep33.1 = getelementptr i8, i8* %scevgep30, i64 1
  %9 = load i8, i8* %scevgep33.1, align 1
  %10 = load i8, i8* %b, align 1
  %call25.176 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %conv26.177 = zext i8 %call25.176 to i32
  %scevgep21.178 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep21.178, align 1
  %conv31.179 = zext i8 %11 to i32
  %xor32.180 = xor i32 %conv26.177, %conv31.179
  %conv33.181 = trunc i32 %xor32.180 to i8
  %scevgep34.182 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 0
  %scevgep35.183 = getelementptr i8, i8* %scevgep34.182, i64 4
  store i8 %conv33.181, i8* %scevgep35.183, align 1
  %call.285 = call zeroext i8 (...) @rand()
  %scevgep19.286 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 2
  store i8 %call.285, i8* %scevgep19.286, align 1
  %12 = load i8, i8* %a, align 1
  %scevgep25.2 = getelementptr i8, i8* %scevgep22, i64 2
  %13 = load i8, i8* %scevgep25.2, align 1
  %call10.287 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %conv.288 = zext i8 %call10.287 to i32
  %scevgep20.289 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 2
  %14 = load i8, i8* %scevgep20.289, align 1
  %conv15.290 = zext i8 %14 to i32
  %xor.291 = xor i32 %conv.288, %conv15.290
  %conv16.292 = trunc i32 %xor.291 to i8
  %scevgep28.293 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 2
  %scevgep29.294 = getelementptr i8, i8* %scevgep28.293, i64 1
  store i8 %conv16.292, i8* %scevgep29.294, align 1
  %scevgep33.2 = getelementptr i8, i8* %scevgep30, i64 2
  %15 = load i8, i8* %scevgep33.2, align 1
  %16 = load i8, i8* %b, align 1
  %call25.295 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16)
  %conv26.296 = zext i8 %call25.295 to i32
  %scevgep21.297 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 0, i64 2
  %17 = load i8, i8* %scevgep21.297, align 1
  %conv31.298 = zext i8 %17 to i32
  %xor32.299 = xor i32 %conv26.296, %conv31.298
  %conv33.2100 = trunc i32 %xor32.299 to i8
  %scevgep34.2101 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 2, i64 0
  %scevgep35.2102 = getelementptr i8, i8* %scevgep34.2101, i64 4
  store i8 %conv33.2100, i8* %scevgep35.2102, align 1
  %scevgep16 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep1314, i64 0, i64 1, i64 1
  %18 = bitcast i8* %scevgep16 to [4 x [4 x i8]]*
  %scevgep24 = getelementptr i8, i8* %scevgep22, i64 1
  %scevgep27 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 1
  %19 = bitcast i8* %scevgep27 to [4 x [4 x i8]]*
  %scevgep32 = getelementptr i8, i8* %scevgep30, i64 1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx24.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call.1 = call zeroext i8 (...) @rand()
  %scevgep19.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 0, i64 0
  store i8 %call.1, i8* %scevgep19.1, align 1
  %20 = load i8, i8* %arrayidx7.1, align 1
  %21 = load i8, i8* %scevgep24, align 1
  %call10.1 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %conv.1 = zext i8 %call10.1 to i32
  %scevgep20.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 0, i64 0
  %22 = load i8, i8* %scevgep20.1, align 1
  %conv15.1 = zext i8 %22 to i32
  %xor.1 = xor i32 %conv.1, %conv15.1
  %conv16.1 = trunc i32 %xor.1 to i8
  %scevgep28.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 0
  %scevgep29.1 = getelementptr i8, i8* %scevgep28.1, i64 1
  store i8 %conv16.1, i8* %scevgep29.1, align 1
  %23 = load i8, i8* %scevgep32, align 1
  %24 = load i8, i8* %arrayidx24.1, align 1
  %call25.1 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24)
  %conv26.1 = zext i8 %call25.1 to i32
  %scevgep21.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep21.1, align 1
  %conv31.1 = zext i8 %25 to i32
  %xor32.1 = xor i32 %conv26.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep34.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 0
  %scevgep35.1 = getelementptr i8, i8* %scevgep34.1, i64 4
  store i8 %conv33.1, i8* %scevgep35.1, align 1
  %call.1.1 = call zeroext i8 (...) @rand()
  %scevgep19.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 0, i64 1
  store i8 %call.1.1, i8* %scevgep19.1.1, align 1
  %26 = load i8, i8* %arrayidx7.1, align 1
  %scevgep25.1.1 = getelementptr i8, i8* %scevgep24, i64 1
  %27 = load i8, i8* %scevgep25.1.1, align 1
  %call10.1.1 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  %conv.1.1 = zext i8 %call10.1.1 to i32
  %scevgep20.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep20.1.1, align 1
  %conv15.1.1 = zext i8 %28 to i32
  %xor.1.1 = xor i32 %conv.1.1, %conv15.1.1
  %conv16.1.1 = trunc i32 %xor.1.1 to i8
  %scevgep28.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 1
  %scevgep29.1.1 = getelementptr i8, i8* %scevgep28.1.1, i64 1
  store i8 %conv16.1.1, i8* %scevgep29.1.1, align 1
  %scevgep33.1.1 = getelementptr i8, i8* %scevgep32, i64 1
  %29 = load i8, i8* %scevgep33.1.1, align 1
  %30 = load i8, i8* %arrayidx24.1, align 1
  %call25.1.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30)
  %conv26.1.1 = zext i8 %call25.1.1 to i32
  %scevgep21.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep21.1.1, align 1
  %conv31.1.1 = zext i8 %31 to i32
  %xor32.1.1 = xor i32 %conv26.1.1, %conv31.1.1
  %conv33.1.1 = trunc i32 %xor32.1.1 to i8
  %scevgep34.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 1, i64 0
  %scevgep35.1.1 = getelementptr i8, i8* %scevgep34.1.1, i64 4
  store i8 %conv33.1.1, i8* %scevgep35.1.1, align 1
  %scevgep16.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %18, i64 0, i64 1, i64 1
  %32 = bitcast i8* %scevgep16.1 to [4 x [4 x i8]]*
  %scevgep24.1 = getelementptr i8, i8* %scevgep24, i64 1
  %scevgep27.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 1, i64 1
  %33 = bitcast i8* %scevgep27.1 to [4 x [4 x i8]]*
  %scevgep32.1 = getelementptr i8, i8* %scevgep32, i64 1
  %arrayidx7.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx24.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call.2 = call zeroext i8 (...) @rand()
  %scevgep19.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %32, i64 0, i64 0, i64 0
  store i8 %call.2, i8* %scevgep19.2, align 1
  %34 = load i8, i8* %arrayidx7.2, align 1
  %35 = load i8, i8* %scevgep24.1, align 1
  %call10.2 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %conv.2 = zext i8 %call10.2 to i32
  %scevgep20.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %32, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep20.2, align 1
  %conv15.2 = zext i8 %36 to i32
  %xor.2 = xor i32 %conv.2, %conv15.2
  %conv16.2 = trunc i32 %xor.2 to i8
  %scevgep28.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 0, i64 0
  %scevgep29.2 = getelementptr i8, i8* %scevgep28.2, i64 1
  store i8 %conv16.2, i8* %scevgep29.2, align 1
  %37 = load i8, i8* %scevgep32.1, align 1
  %38 = load i8, i8* %arrayidx24.2, align 1
  %call25.2 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38)
  %conv26.2 = zext i8 %call25.2 to i32
  %scevgep21.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %32, i64 0, i64 0, i64 0
  %39 = load i8, i8* %scevgep21.2, align 1
  %conv31.2 = zext i8 %39 to i32
  %xor32.2 = xor i32 %conv26.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep34.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 0, i64 0
  %scevgep35.2 = getelementptr i8, i8* %scevgep34.2, i64 4
  store i8 %conv33.2, i8* %scevgep35.2, align 1
  %40 = load i8, i8* %a, align 1
  %41 = load i8, i8* %b, align 1
  %call50 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  store i8 %call50, i8* %c, align 1
  %scevgep10.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 1
  %42 = load i8, i8* %scevgep10.1, align 1
  %conv64.1 = zext i8 %42 to i32
  %43 = load i8, i8* %c, align 1
  %conv67.1 = zext i8 %43 to i32
  %xor68.1 = xor i32 %conv67.1, %conv64.1
  %conv69.1 = trunc i32 %xor68.1 to i8
  store i8 %conv69.1, i8* %c, align 1
  %scevgep10.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep10.2, align 1
  %conv64.2 = zext i8 %44 to i32
  %45 = load i8, i8* %c, align 1
  %conv67.2 = zext i8 %45 to i32
  %xor68.2 = xor i32 %conv67.2, %conv64.2
  %conv69.2 = trunc i32 %xor68.2 to i8
  store i8 %conv69.2, i8* %c, align 1
  %scevgep10.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 0, i64 3
  %46 = load i8, i8* %scevgep10.3, align 1
  %conv64.3 = zext i8 %46 to i32
  %47 = load i8, i8* %c, align 1
  %conv67.3 = zext i8 %47 to i32
  %xor68.3 = xor i32 %conv67.3, %conv64.3
  %conv69.3 = trunc i32 %xor68.3 to i8
  store i8 %conv69.3, i8* %c, align 1
  %scevgep = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep to [4 x [4 x i8]]*
  %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1
  %49 = load i8, i8* %arrayidx47.1, align 1
  %arrayidx49.1 = getelementptr inbounds i8, i8* %b, i64 1
  %50 = load i8, i8* %arrayidx49.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %arrayidx52.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.1, i8* %arrayidx52.1, align 1
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep10.141 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 0
  %51 = load i8, i8* %scevgep10.141, align 1
  %conv64.142 = zext i8 %51 to i32
  %52 = load i8, i8* %arrayidx66.1, align 1
  %conv67.143 = zext i8 %52 to i32
  %xor68.144 = xor i32 %conv67.143, %conv64.142
  %conv69.145 = trunc i32 %xor68.144 to i8
  store i8 %conv69.145, i8* %arrayidx66.1, align 1
  %scevgep10.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep10.2.1, align 1
  %conv64.2.1 = zext i8 %53 to i32
  %54 = load i8, i8* %arrayidx66.1, align 1
  %conv67.2.1 = zext i8 %54 to i32
  %xor68.2.1 = xor i32 %conv67.2.1, %conv64.2.1
  %conv69.2.1 = trunc i32 %xor68.2.1 to i8
  store i8 %conv69.2.1, i8* %arrayidx66.1, align 1
  %scevgep10.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 3
  %55 = load i8, i8* %scevgep10.3.1, align 1
  %conv64.3.1 = zext i8 %55 to i32
  %56 = load i8, i8* %arrayidx66.1, align 1
  %conv67.3.1 = zext i8 %56 to i32
  %xor68.3.1 = xor i32 %conv67.3.1, %conv64.3.1
  %conv69.3.1 = trunc i32 %xor68.3.1 to i8
  store i8 %conv69.3.1, i8* %arrayidx66.1, align 1
  %scevgep.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 1, i64 0
  %57 = bitcast i8* %scevgep.1 to [4 x [4 x i8]]*
  %arrayidx47.2 = getelementptr inbounds i8, i8* %a, i64 2
  %58 = load i8, i8* %arrayidx47.2, align 1
  %arrayidx49.2 = getelementptr inbounds i8, i8* %b, i64 2
  %59 = load i8, i8* %arrayidx49.2, align 1
  %call50.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %arrayidx52.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call50.2, i8* %arrayidx52.2, align 1
  %arrayidx66.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep10.250 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep10.250, align 1
  %conv64.251 = zext i8 %60 to i32
  %61 = load i8, i8* %arrayidx66.2, align 1
  %conv67.252 = zext i8 %61 to i32
  %xor68.253 = xor i32 %conv67.252, %conv64.251
  %conv69.254 = trunc i32 %xor68.253 to i8
  store i8 %conv69.254, i8* %arrayidx66.2, align 1
  %scevgep10.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 1
  %62 = load i8, i8* %scevgep10.1.2, align 1
  %conv64.1.2 = zext i8 %62 to i32
  %63 = load i8, i8* %arrayidx66.2, align 1
  %conv67.1.2 = zext i8 %63 to i32
  %xor68.1.2 = xor i32 %conv67.1.2, %conv64.1.2
  %conv69.1.2 = trunc i32 %xor68.1.2 to i8
  store i8 %conv69.1.2, i8* %arrayidx66.2, align 1
  %scevgep10.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep10.3.2, align 1
  %conv64.3.2 = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx66.2, align 1
  %conv67.3.2 = zext i8 %65 to i32
  %xor68.3.2 = xor i32 %conv67.3.2, %conv64.3.2
  %conv69.3.2 = trunc i32 %xor68.3.2 to i8
  store i8 %conv69.3.2, i8* %arrayidx66.2, align 1
  %scevgep.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep.2 to [4 x [4 x i8]]*
  %arrayidx47.3 = getelementptr inbounds i8, i8* %a, i64 3
  %67 = load i8, i8* %arrayidx47.3, align 1
  %arrayidx49.3 = getelementptr inbounds i8, i8* %b, i64 3
  %68 = load i8, i8* %arrayidx49.3, align 1
  %call50.3 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  %arrayidx52.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call50.3, i8* %arrayidx52.3, align 1
  %arrayidx66.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep10.359 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %69 = load i8, i8* %scevgep10.359, align 1
  %conv64.360 = zext i8 %69 to i32
  %70 = load i8, i8* %arrayidx66.3, align 1
  %conv67.361 = zext i8 %70 to i32
  %xor68.362 = xor i32 %conv67.361, %conv64.360
  %conv69.363 = trunc i32 %xor68.362 to i8
  store i8 %conv69.363, i8* %arrayidx66.3, align 1
  %scevgep10.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep10.1.3, align 1
  %conv64.1.3 = zext i8 %71 to i32
  %72 = load i8, i8* %arrayidx66.3, align 1
  %conv67.1.3 = zext i8 %72 to i32
  %xor68.1.3 = xor i32 %conv67.1.3, %conv64.1.3
  %conv69.1.3 = trunc i32 %xor68.1.3 to i8
  store i8 %conv69.1.3, i8* %arrayidx66.3, align 1
  %scevgep10.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %73 = load i8, i8* %scevgep10.2.3, align 1
  %conv64.2.3 = zext i8 %73 to i32
  %74 = load i8, i8* %arrayidx66.3, align 1
  %conv67.2.3 = zext i8 %74 to i32
  %xor68.2.3 = xor i32 %conv67.2.3, %conv64.2.3
  %conv69.2.3 = trunc i32 %xor68.2.3 to i8
  store i8 %conv69.2.3, i8* %arrayidx66.3, align 1
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
  %scevgep11.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep11.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call14 = call zeroext i8 (...) @rand()
  %conv15 = zext i8 %call14 to i32
  %4 = load i8, i8* %x, align 1
  %conv16 = zext i8 %4 to i32
  %xor = xor i32 %conv16, %conv15
  %conv17 = trunc i32 %xor to i8
  store i8 %conv17, i8* %x, align 1
  %conv18 = zext i8 %call14 to i32
  %arrayidx20 = getelementptr inbounds i8, i8* %x, i64 1
  %5 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %5 to i32
  %xor22 = xor i32 %conv21, %conv18
  %conv23 = trunc i32 %xor22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  %call14.113 = call zeroext i8 (...) @rand()
  %conv15.114 = zext i8 %call14.113 to i32
  %6 = load i8, i8* %x, align 1
  %conv16.115 = zext i8 %6 to i32
  %xor.116 = xor i32 %conv16.115, %conv15.114
  %conv17.117 = trunc i32 %xor.116 to i8
  store i8 %conv17.117, i8* %x, align 1
  %conv18.118 = zext i8 %call14.113 to i32
  %arrayidx20.119 = getelementptr inbounds i8, i8* %x, i64 2
  %7 = load i8, i8* %arrayidx20.119, align 1
  %conv21.120 = zext i8 %7 to i32
  %xor22.121 = xor i32 %conv21.120, %conv18.118
  %conv23.122 = trunc i32 %xor22.121 to i8
  store i8 %conv23.122, i8* %arrayidx20.119, align 1
  %call14.224 = call zeroext i8 (...) @rand()
  %conv15.225 = zext i8 %call14.224 to i32
  %8 = load i8, i8* %x, align 1
  %conv16.226 = zext i8 %8 to i32
  %xor.227 = xor i32 %conv16.226, %conv15.225
  %conv17.228 = trunc i32 %xor.227 to i8
  store i8 %conv17.228, i8* %x, align 1
  %conv18.229 = zext i8 %call14.224 to i32
  %arrayidx20.230 = getelementptr inbounds i8, i8* %x, i64 3
  %9 = load i8, i8* %arrayidx20.230, align 1
  %conv21.231 = zext i8 %9 to i32
  %xor22.232 = xor i32 %conv21.231, %conv18.229
  %conv23.233 = trunc i32 %xor22.232 to i8
  store i8 %conv23.233, i8* %arrayidx20.230, align 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call14.1 = call zeroext i8 (...) @rand()
  %conv15.1 = zext i8 %call14.1 to i32
  %10 = load i8, i8* %arrayidx.1, align 1
  %conv16.1 = zext i8 %10 to i32
  %xor.1 = xor i32 %conv16.1, %conv15.1
  %conv17.1 = trunc i32 %xor.1 to i8
  store i8 %conv17.1, i8* %arrayidx.1, align 1
  %conv18.1 = zext i8 %call14.1 to i32
  %arrayidx20.1 = getelementptr inbounds i8, i8* %x, i64 2
  %11 = load i8, i8* %arrayidx20.1, align 1
  %conv21.1 = zext i8 %11 to i32
  %xor22.1 = xor i32 %conv21.1, %conv18.1
  %conv23.1 = trunc i32 %xor22.1 to i8
  store i8 %conv23.1, i8* %arrayidx20.1, align 1
  %call14.1.1 = call zeroext i8 (...) @rand()
  %conv15.1.1 = zext i8 %call14.1.1 to i32
  %12 = load i8, i8* %arrayidx.1, align 1
  %conv16.1.1 = zext i8 %12 to i32
  %xor.1.1 = xor i32 %conv16.1.1, %conv15.1.1
  %conv17.1.1 = trunc i32 %xor.1.1 to i8
  store i8 %conv17.1.1, i8* %arrayidx.1, align 1
  %conv18.1.1 = zext i8 %call14.1.1 to i32
  %arrayidx20.1.1 = getelementptr inbounds i8, i8* %x, i64 3
  %13 = load i8, i8* %arrayidx20.1.1, align 1
  %conv21.1.1 = zext i8 %13 to i32
  %xor22.1.1 = xor i32 %conv21.1.1, %conv18.1.1
  %conv23.1.1 = trunc i32 %xor22.1.1 to i8
  store i8 %conv23.1.1, i8* %arrayidx20.1.1, align 1
  %arrayidx.2 = getelementptr inbounds i8, i8* %x, i64 2
  %call14.2 = call zeroext i8 (...) @rand()
  %conv15.2 = zext i8 %call14.2 to i32
  %14 = load i8, i8* %arrayidx.2, align 1
  %conv16.2 = zext i8 %14 to i32
  %xor.2 = xor i32 %conv16.2, %conv15.2
  %conv17.2 = trunc i32 %xor.2 to i8
  store i8 %conv17.2, i8* %arrayidx.2, align 1
  %conv18.2 = zext i8 %call14.2 to i32
  %arrayidx20.2 = getelementptr inbounds i8, i8* %x, i64 3
  %15 = load i8, i8* %arrayidx20.2, align 1
  %conv21.2 = zext i8 %15 to i32
  %xor22.2 = xor i32 %conv21.2, %conv18.2
  %conv23.2 = trunc i32 %xor22.2 to i8
  store i8 %conv23.2, i8* %arrayidx20.2, align 1
  %conv27 = zext i8 %call to i32
  %16 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep.1, align 1
  %conv.i.i42.1 = zext i8 %17 to i32
  %conv1.i.i43.1 = zext i8 %16 to i32
  %xor.i.i44.1 = xor i32 %conv1.i.i43.1, %conv.i.i42.1
  %conv2.i.i45.1 = trunc i32 %xor.i.i44.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %18 = load i8, i8* %scevgep.2, align 1
  %conv.i.i42.2 = zext i8 %18 to i32
  %conv1.i.i43.2 = zext i8 %conv2.i.i45.1 to i32
  %xor.i.i44.2 = xor i32 %conv1.i.i43.2, %conv.i.i42.2
  %conv2.i.i45.2 = trunc i32 %xor.i.i44.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %19 = load i8, i8* %scevgep.3, align 1
  %conv.i.i42.3 = zext i8 %19 to i32
  %conv1.i.i43.3 = zext i8 %conv2.i.i45.2 to i32
  %xor.i.i44.3 = xor i32 %conv1.i.i43.3, %conv.i.i42.3
  %conv2.i.i45.3 = trunc i32 %xor.i.i44.3 to i8
  %conv29 = zext i8 %conv2.i.i45.3 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  call void @assert(i1 zeroext %cmp30)
  ret void
}

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r.i = alloca [4 x [4 x i8]], align 16
  %u.i = alloca [4 x [4 x i8]], align 16
  %br = alloca [4 x i8], align 1
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
  %scevgep77.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep77.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep77.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep77.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep73.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep73.1, align 1
  %conv.i.i27.1 = zext i8 %5 to i32
  %conv1.i.i28.1 = zext i8 %4 to i32
  %xor.i.i29.1 = xor i32 %conv1.i.i28.1, %conv.i.i27.1
  %conv2.i.i30.1 = trunc i32 %xor.i.i29.1 to i8
  %scevgep73.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep73.2, align 1
  %conv.i.i27.2 = zext i8 %6 to i32
  %conv1.i.i28.2 = zext i8 %conv2.i.i30.1 to i32
  %xor.i.i29.2 = xor i32 %conv1.i.i28.2, %conv.i.i27.2
  %conv2.i.i30.2 = trunc i32 %xor.i.i29.2 to i8
  %scevgep73.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep73.3, align 1
  %conv.i.i27.3 = zext i8 %7 to i32
  %conv1.i.i28.3 = zext i8 %conv2.i.i30.2 to i32
  %xor.i.i29.3 = xor i32 %conv1.i.i28.3, %conv.i.i27.3
  %conv2.i.i30.3 = trunc i32 %xor.i.i29.3 to i8
  %conv7 = zext i8 %conv2.i.i30.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %8 = load i8, i8* %b, align 1
  %scevgep69 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 0
  store i8 %8, i8* %scevgep69, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %9 = load i8, i8* %scevgep68.1, align 1
  %scevgep69.1 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 1
  store i8 %9, i8* %scevgep69.1, align 1
  %scevgep68.2 = getelementptr i8, i8* %b, i64 2
  %10 = load i8, i8* %scevgep68.2, align 1
  %scevgep69.2 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 2
  store i8 %10, i8* %scevgep69.2, align 1
  %scevgep68.3 = getelementptr i8, i8* %b, i64 3
  %11 = load i8, i8* %scevgep68.3, align 1
  %scevgep69.3 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 3
  store i8 %11, i8* %scevgep69.3, align 1
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i64 0, i64 0
  %call.i36 = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i36 to i32
  %scevgep64 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 0
  %12 = load i8, i8* %scevgep64, align 1
  %scevgep64.1 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 1
  %13 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i.i.1 = zext i8 %13 to i32
  %conv1.i.i.i.1 = zext i8 %12 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep64.2 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 2
  %14 = load i8, i8* %scevgep64.2, align 1
  %conv.i.i.i.2 = zext i8 %14 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep64.3 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 3
  %15 = load i8, i8* %scevgep64.3, align 1
  %conv.i.i.i.3 = zext i8 %15 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv2.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i37 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i37) #2
  %call14.i = call zeroext i8 (...) @rand() #2
  %conv15.i = zext i8 %call14.i to i32
  %16 = load i8, i8* %arraydecay10, align 1
  %conv16.i = zext i8 %16 to i32
  %xor.i = xor i32 %conv16.i, %conv15.i
  %conv17.i = trunc i32 %xor.i to i8
  store i8 %conv17.i, i8* %arraydecay10, align 1
  %conv18.i = zext i8 %call14.i to i32
  %arrayidx20.i = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %17 = load i8, i8* %arrayidx20.i, align 1
  %conv21.i = zext i8 %17 to i32
  %xor22.i = xor i32 %conv21.i, %conv18.i
  %conv23.i = trunc i32 %xor22.i to i8
  store i8 %conv23.i, i8* %arrayidx20.i, align 1
  %call14.i.1143 = call zeroext i8 (...) @rand() #2
  %conv15.i.1144 = zext i8 %call14.i.1143 to i32
  %18 = load i8, i8* %arraydecay10, align 1
  %conv16.i.1145 = zext i8 %18 to i32
  %xor.i.1146 = xor i32 %conv16.i.1145, %conv15.i.1144
  %conv17.i.1147 = trunc i32 %xor.i.1146 to i8
  store i8 %conv17.i.1147, i8* %arraydecay10, align 1
  %conv18.i.1148 = zext i8 %call14.i.1143 to i32
  %arrayidx20.i.1149 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %19 = load i8, i8* %arrayidx20.i.1149, align 1
  %conv21.i.1150 = zext i8 %19 to i32
  %xor22.i.1151 = xor i32 %conv21.i.1150, %conv18.i.1148
  %conv23.i.1152 = trunc i32 %xor22.i.1151 to i8
  store i8 %conv23.i.1152, i8* %arrayidx20.i.1149, align 1
  %call14.i.2154 = call zeroext i8 (...) @rand() #2
  %conv15.i.2155 = zext i8 %call14.i.2154 to i32
  %20 = load i8, i8* %arraydecay10, align 1
  %conv16.i.2156 = zext i8 %20 to i32
  %xor.i.2157 = xor i32 %conv16.i.2156, %conv15.i.2155
  %conv17.i.2158 = trunc i32 %xor.i.2157 to i8
  store i8 %conv17.i.2158, i8* %arraydecay10, align 1
  %conv18.i.2159 = zext i8 %call14.i.2154 to i32
  %arrayidx20.i.2160 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %21 = load i8, i8* %arrayidx20.i.2160, align 1
  %conv21.i.2161 = zext i8 %21 to i32
  %xor22.i.2162 = xor i32 %conv21.i.2161, %conv18.i.2159
  %conv23.i.2163 = trunc i32 %xor22.i.2162 to i8
  store i8 %conv23.i.2163, i8* %arrayidx20.i.2160, align 1
  %arrayidx.i41.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %call14.i.1 = call zeroext i8 (...) @rand() #2
  %conv15.i.1 = zext i8 %call14.i.1 to i32
  %22 = load i8, i8* %arrayidx.i41.1, align 1
  %conv16.i.1 = zext i8 %22 to i32
  %xor.i.1 = xor i32 %conv16.i.1, %conv15.i.1
  %conv17.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv17.i.1, i8* %arrayidx.i41.1, align 1
  %conv18.i.1 = zext i8 %call14.i.1 to i32
  %arrayidx20.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %23 = load i8, i8* %arrayidx20.i.1, align 1
  %conv21.i.1 = zext i8 %23 to i32
  %xor22.i.1 = xor i32 %conv21.i.1, %conv18.i.1
  %conv23.i.1 = trunc i32 %xor22.i.1 to i8
  store i8 %conv23.i.1, i8* %arrayidx20.i.1, align 1
  %call14.i.1.1 = call zeroext i8 (...) @rand() #2
  %conv15.i.1.1 = zext i8 %call14.i.1.1 to i32
  %24 = load i8, i8* %arrayidx.i41.1, align 1
  %conv16.i.1.1 = zext i8 %24 to i32
  %xor.i.1.1 = xor i32 %conv16.i.1.1, %conv15.i.1.1
  %conv17.i.1.1 = trunc i32 %xor.i.1.1 to i8
  store i8 %conv17.i.1.1, i8* %arrayidx.i41.1, align 1
  %conv18.i.1.1 = zext i8 %call14.i.1.1 to i32
  %arrayidx20.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %25 = load i8, i8* %arrayidx20.i.1.1, align 1
  %conv21.i.1.1 = zext i8 %25 to i32
  %xor22.i.1.1 = xor i32 %conv21.i.1.1, %conv18.i.1.1
  %conv23.i.1.1 = trunc i32 %xor22.i.1.1 to i8
  store i8 %conv23.i.1.1, i8* %arrayidx20.i.1.1, align 1
  %arrayidx.i41.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %call14.i.2 = call zeroext i8 (...) @rand() #2
  %conv15.i.2 = zext i8 %call14.i.2 to i32
  %26 = load i8, i8* %arrayidx.i41.2, align 1
  %conv16.i.2 = zext i8 %26 to i32
  %xor.i.2 = xor i32 %conv16.i.2, %conv15.i.2
  %conv17.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv17.i.2, i8* %arrayidx.i41.2, align 1
  %conv18.i.2 = zext i8 %call14.i.2 to i32
  %arrayidx20.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %27 = load i8, i8* %arrayidx20.i.2, align 1
  %conv21.i.2 = zext i8 %27 to i32
  %xor22.i.2 = xor i32 %conv21.i.2, %conv18.i.2
  %conv23.i.2 = trunc i32 %xor22.i.2 to i8
  store i8 %conv23.i.2, i8* %arrayidx20.i.2, align 1
  %conv27.i = zext i8 %call.i36 to i32
  %scevgep60 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 0
  %28 = load i8, i8* %scevgep60, align 1
  %scevgep60.1 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 1
  %29 = load i8, i8* %scevgep60.1, align 1
  %conv.i.i42.i.1 = zext i8 %29 to i32
  %conv1.i.i43.i.1 = zext i8 %28 to i32
  %xor.i.i44.i.1 = xor i32 %conv1.i.i43.i.1, %conv.i.i42.i.1
  %conv2.i.i45.i.1 = trunc i32 %xor.i.i44.i.1 to i8
  %scevgep60.2 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 2
  %30 = load i8, i8* %scevgep60.2, align 1
  %conv.i.i42.i.2 = zext i8 %30 to i32
  %conv1.i.i43.i.2 = zext i8 %conv2.i.i45.i.1 to i32
  %xor.i.i44.i.2 = xor i32 %conv1.i.i43.i.2, %conv.i.i42.i.2
  %conv2.i.i45.i.2 = trunc i32 %xor.i.i44.i.2 to i8
  %scevgep60.3 = getelementptr [4 x i8], [4 x i8]* %br, i64 0, i64 3
  %31 = load i8, i8* %scevgep60.3, align 1
  %conv.i.i42.i.3 = zext i8 %31 to i32
  %conv1.i.i43.i.3 = zext i8 %conv2.i.i45.i.2 to i32
  %xor.i.i44.i.3 = xor i32 %conv1.i.i43.i.3, %conv.i.i42.i.3
  %conv2.i.i45.i.3 = trunc i32 %xor.i.i44.i.3 to i8
  %conv29.i = zext i8 %conv2.i.i45.i.3 to i32
  %cmp30.i = icmp eq i32 %conv27.i, %conv29.i
  call void @assert(i1 zeroext %cmp30.i) #2
  %scevgep32 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep3233 = bitcast i8* %scevgep32 to [4 x [4 x i8]]*
  %scevgep41 = getelementptr i8, i8* %b, i64 1
  %scevgep49 = getelementptr i8, i8* %a, i64 1
  %call.i50 = call zeroext i8 (...) @rand() #2
  %scevgep38 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  store i8 %call.i50, i8* %scevgep38, align 1
  %32 = load i8, i8* %a, align 1
  %33 = load i8, i8* %scevgep41, align 1
  %call10.i = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #2
  %conv.i53 = zext i8 %call10.i to i32
  %scevgep39 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %34 = load i8, i8* %scevgep39, align 1
  %conv15.i54 = zext i8 %34 to i32
  %xor.i55 = xor i32 %conv.i53, %conv15.i54
  %conv16.i56 = trunc i32 %xor.i55 to i8
  %scevgep47 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 0
  %scevgep48 = getelementptr i8, i8* %scevgep47, i64 1
  store i8 %conv16.i56, i8* %scevgep48, align 1
  %35 = load i8, i8* %scevgep49, align 1
  %36 = load i8, i8* %b, align 1
  %call25.i = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #2
  %conv26.i = zext i8 %call25.i to i32
  %scevgep40 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep40, align 1
  %conv31.i = zext i8 %37 to i32
  %xor32.i = xor i32 %conv26.i, %conv31.i
  %conv33.i = trunc i32 %xor32.i to i8
  %scevgep53 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 0
  %scevgep54 = getelementptr i8, i8* %scevgep53, i64 4
  store i8 %conv33.i, i8* %scevgep54, align 1
  %call.i50.1106 = call zeroext i8 (...) @rand() #2
  %scevgep38.1107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  store i8 %call.i50.1106, i8* %scevgep38.1107, align 1
  %38 = load i8, i8* %a, align 1
  %scevgep44.1 = getelementptr i8, i8* %scevgep41, i64 1
  %39 = load i8, i8* %scevgep44.1, align 1
  %call10.i.1108 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  %conv.i53.1109 = zext i8 %call10.i.1108 to i32
  %scevgep39.1110 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  %40 = load i8, i8* %scevgep39.1110, align 1
  %conv15.i54.1111 = zext i8 %40 to i32
  %xor.i55.1112 = xor i32 %conv.i53.1109, %conv15.i54.1111
  %conv16.i56.1113 = trunc i32 %xor.i55.1112 to i8
  %scevgep47.1114 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 1
  %scevgep48.1115 = getelementptr i8, i8* %scevgep47.1114, i64 1
  store i8 %conv16.i56.1113, i8* %scevgep48.1115, align 1
  %scevgep52.1 = getelementptr i8, i8* %scevgep49, i64 1
  %41 = load i8, i8* %scevgep52.1, align 1
  %42 = load i8, i8* %b, align 1
  %call25.i.1116 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #2
  %conv26.i.1117 = zext i8 %call25.i.1116 to i32
  %scevgep40.1118 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep40.1118, align 1
  %conv31.i.1119 = zext i8 %43 to i32
  %xor32.i.1120 = xor i32 %conv26.i.1117, %conv31.i.1119
  %conv33.i.1121 = trunc i32 %xor32.i.1120 to i8
  %scevgep53.1122 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 1, i64 0
  %scevgep54.1123 = getelementptr i8, i8* %scevgep53.1122, i64 4
  store i8 %conv33.i.1121, i8* %scevgep54.1123, align 1
  %call.i50.2125 = call zeroext i8 (...) @rand() #2
  %scevgep38.2126 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 2
  store i8 %call.i50.2125, i8* %scevgep38.2126, align 1
  %44 = load i8, i8* %a, align 1
  %scevgep44.2 = getelementptr i8, i8* %scevgep41, i64 2
  %45 = load i8, i8* %scevgep44.2, align 1
  %call10.i.2127 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #2
  %conv.i53.2128 = zext i8 %call10.i.2127 to i32
  %scevgep39.2129 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 2
  %46 = load i8, i8* %scevgep39.2129, align 1
  %conv15.i54.2130 = zext i8 %46 to i32
  %xor.i55.2131 = xor i32 %conv.i53.2128, %conv15.i54.2130
  %conv16.i56.2132 = trunc i32 %xor.i55.2131 to i8
  %scevgep47.2133 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 2
  %scevgep48.2134 = getelementptr i8, i8* %scevgep47.2133, i64 1
  store i8 %conv16.i56.2132, i8* %scevgep48.2134, align 1
  %scevgep52.2 = getelementptr i8, i8* %scevgep49, i64 2
  %47 = load i8, i8* %scevgep52.2, align 1
  %48 = load i8, i8* %b, align 1
  %call25.i.2135 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #2
  %conv26.i.2136 = zext i8 %call25.i.2135 to i32
  %scevgep40.2137 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 0, i64 2
  %49 = load i8, i8* %scevgep40.2137, align 1
  %conv31.i.2138 = zext i8 %49 to i32
  %xor32.i.2139 = xor i32 %conv26.i.2136, %conv31.i.2138
  %conv33.i.2140 = trunc i32 %xor32.i.2139 to i8
  %scevgep53.2141 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 2, i64 0
  %scevgep54.2142 = getelementptr i8, i8* %scevgep53.2141, i64 4
  store i8 %conv33.i.2140, i8* %scevgep54.2142, align 1
  %scevgep35 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %scevgep3233, i64 0, i64 1, i64 1
  %50 = bitcast i8* %scevgep35 to [4 x [4 x i8]]*
  %scevgep43 = getelementptr i8, i8* %scevgep41, i64 1
  %scevgep46 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 1, i64 1
  %51 = bitcast i8* %scevgep46 to [4 x [4 x i8]]*
  %scevgep51 = getelementptr i8, i8* %scevgep49, i64 1
  %arrayidx7.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx24.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call.i50.1 = call zeroext i8 (...) @rand() #2
  %scevgep38.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %call.i50.1, i8* %scevgep38.1, align 1
  %52 = load i8, i8* %arrayidx7.i.1, align 1
  %53 = load i8, i8* %scevgep43, align 1
  %call10.i.1 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #2
  %conv.i53.1 = zext i8 %call10.i.1 to i32
  %scevgep39.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep39.1, align 1
  %conv15.i54.1 = zext i8 %54 to i32
  %xor.i55.1 = xor i32 %conv.i53.1, %conv15.i54.1
  %conv16.i56.1 = trunc i32 %xor.i55.1 to i8
  %scevgep47.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 0
  %scevgep48.1 = getelementptr i8, i8* %scevgep47.1, i64 1
  store i8 %conv16.i56.1, i8* %scevgep48.1, align 1
  %55 = load i8, i8* %scevgep51, align 1
  %56 = load i8, i8* %arrayidx24.i.1, align 1
  %call25.i.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #2
  %conv26.i.1 = zext i8 %call25.i.1 to i32
  %scevgep40.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep40.1, align 1
  %conv31.i.1 = zext i8 %57 to i32
  %xor32.i.1 = xor i32 %conv26.i.1, %conv31.i.1
  %conv33.i.1 = trunc i32 %xor32.i.1 to i8
  %scevgep53.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 0
  %scevgep54.1 = getelementptr i8, i8* %scevgep53.1, i64 4
  store i8 %conv33.i.1, i8* %scevgep54.1, align 1
  %call.i50.1.1 = call zeroext i8 (...) @rand() #2
  %scevgep38.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 1
  store i8 %call.i50.1.1, i8* %scevgep38.1.1, align 1
  %58 = load i8, i8* %arrayidx7.i.1, align 1
  %scevgep44.1.1 = getelementptr i8, i8* %scevgep43, i64 1
  %59 = load i8, i8* %scevgep44.1.1, align 1
  %call10.i.1.1 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #2
  %conv.i53.1.1 = zext i8 %call10.i.1.1 to i32
  %scevgep39.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 1
  %60 = load i8, i8* %scevgep39.1.1, align 1
  %conv15.i54.1.1 = zext i8 %60 to i32
  %xor.i55.1.1 = xor i32 %conv.i53.1.1, %conv15.i54.1.1
  %conv16.i56.1.1 = trunc i32 %xor.i55.1.1 to i8
  %scevgep47.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 1
  %scevgep48.1.1 = getelementptr i8, i8* %scevgep47.1.1, i64 1
  store i8 %conv16.i56.1.1, i8* %scevgep48.1.1, align 1
  %scevgep52.1.1 = getelementptr i8, i8* %scevgep51, i64 1
  %61 = load i8, i8* %scevgep52.1.1, align 1
  %62 = load i8, i8* %arrayidx24.i.1, align 1
  %call25.i.1.1 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #2
  %conv26.i.1.1 = zext i8 %call25.i.1.1 to i32
  %scevgep40.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 1
  %63 = load i8, i8* %scevgep40.1.1, align 1
  %conv31.i.1.1 = zext i8 %63 to i32
  %xor32.i.1.1 = xor i32 %conv26.i.1.1, %conv31.i.1.1
  %conv33.i.1.1 = trunc i32 %xor32.i.1.1 to i8
  %scevgep53.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 1, i64 0
  %scevgep54.1.1 = getelementptr i8, i8* %scevgep53.1.1, i64 4
  store i8 %conv33.i.1.1, i8* %scevgep54.1.1, align 1
  %scevgep35.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 1, i64 1
  %64 = bitcast i8* %scevgep35.1 to [4 x [4 x i8]]*
  %scevgep43.1 = getelementptr i8, i8* %scevgep43, i64 1
  %scevgep46.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 1, i64 1
  %65 = bitcast i8* %scevgep46.1 to [4 x [4 x i8]]*
  %scevgep51.1 = getelementptr i8, i8* %scevgep51, i64 1
  %arrayidx7.i.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx24.i.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call.i50.2 = call zeroext i8 (...) @rand() #2
  %scevgep38.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 0
  store i8 %call.i50.2, i8* %scevgep38.2, align 1
  %66 = load i8, i8* %arrayidx7.i.2, align 1
  %67 = load i8, i8* %scevgep43.1, align 1
  %call10.i.2 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #2
  %conv.i53.2 = zext i8 %call10.i.2 to i32
  %scevgep39.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep39.2, align 1
  %conv15.i54.2 = zext i8 %68 to i32
  %xor.i55.2 = xor i32 %conv.i53.2, %conv15.i54.2
  %conv16.i56.2 = trunc i32 %xor.i55.2 to i8
  %scevgep47.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 0
  %scevgep48.2 = getelementptr i8, i8* %scevgep47.2, i64 1
  store i8 %conv16.i56.2, i8* %scevgep48.2, align 1
  %69 = load i8, i8* %scevgep51.1, align 1
  %70 = load i8, i8* %arrayidx24.i.2, align 1
  %call25.i.2 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #2
  %conv26.i.2 = zext i8 %call25.i.2 to i32
  %scevgep40.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 0
  %71 = load i8, i8* %scevgep40.2, align 1
  %conv31.i.2 = zext i8 %71 to i32
  %xor32.i.2 = xor i32 %conv26.i.2, %conv31.i.2
  %conv33.i.2 = trunc i32 %xor32.i.2 to i8
  %scevgep53.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 0
  %scevgep54.2 = getelementptr i8, i8* %scevgep53.2, i64 4
  store i8 %conv33.i.2, i8* %scevgep54.2, align 1
  %72 = load i8, i8* %a, align 1
  %73 = load i8, i8* %b, align 1
  %call50.i = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #2
  store i8 %call50.i, i8* %c, align 1
  %scevgep29.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 1
  %74 = load i8, i8* %scevgep29.1, align 1
  %conv64.i.1 = zext i8 %74 to i32
  %75 = load i8, i8* %c, align 1
  %conv67.i.1 = zext i8 %75 to i32
  %xor68.i.1 = xor i32 %conv67.i.1, %conv64.i.1
  %conv69.i.1 = trunc i32 %xor68.i.1 to i8
  store i8 %conv69.i.1, i8* %c, align 1
  %scevgep29.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 2
  %76 = load i8, i8* %scevgep29.2, align 1
  %conv64.i.2 = zext i8 %76 to i32
  %77 = load i8, i8* %c, align 1
  %conv67.i.2 = zext i8 %77 to i32
  %xor68.i.2 = xor i32 %conv67.i.2, %conv64.i.2
  %conv69.i.2 = trunc i32 %xor68.i.2 to i8
  store i8 %conv69.i.2, i8* %c, align 1
  %scevgep29.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 0, i64 3
  %78 = load i8, i8* %scevgep29.3, align 1
  %conv64.i.3 = zext i8 %78 to i32
  %79 = load i8, i8* %c, align 1
  %conv67.i.3 = zext i8 %79 to i32
  %xor68.i.3 = xor i32 %conv67.i.3, %conv64.i.3
  %conv69.i.3 = trunc i32 %xor68.i.3 to i8
  store i8 %conv69.i.3, i8* %c, align 1
  %scevgep28 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %u.i, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep28 to [4 x [4 x i8]]*
  %arrayidx47.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %81 = load i8, i8* %arrayidx47.i.1, align 1
  %arrayidx49.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %82 = load i8, i8* %arrayidx49.i.1, align 1
  %call50.i.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #2
  %arrayidx52.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.i.1, i8* %arrayidx52.i.1, align 1
  %arrayidx66.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep29.181 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep29.181, align 1
  %conv64.i.182 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.183 = zext i8 %84 to i32
  %xor68.i.184 = xor i32 %conv67.i.183, %conv64.i.182
  %conv69.i.185 = trunc i32 %xor68.i.184 to i8
  store i8 %conv69.i.185, i8* %arrayidx66.i.1, align 1
  %scevgep29.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep29.2.1, align 1
  %conv64.i.2.1 = zext i8 %85 to i32
  %86 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.2.1 = zext i8 %86 to i32
  %xor68.i.2.1 = xor i32 %conv67.i.2.1, %conv64.i.2.1
  %conv69.i.2.1 = trunc i32 %xor68.i.2.1 to i8
  store i8 %conv69.i.2.1, i8* %arrayidx66.i.1, align 1
  %scevgep29.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 3
  %87 = load i8, i8* %scevgep29.3.1, align 1
  %conv64.i.3.1 = zext i8 %87 to i32
  %88 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.3.1 = zext i8 %88 to i32
  %xor68.i.3.1 = xor i32 %conv67.i.3.1, %conv64.i.3.1
  %conv69.i.3.1 = trunc i32 %xor68.i.3.1 to i8
  store i8 %conv69.i.3.1, i8* %arrayidx66.i.1, align 1
  %scevgep28.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep28.1 to [4 x [4 x i8]]*
  %arrayidx47.i.2 = getelementptr inbounds i8, i8* %a, i64 2
  %90 = load i8, i8* %arrayidx47.i.2, align 1
  %arrayidx49.i.2 = getelementptr inbounds i8, i8* %b, i64 2
  %91 = load i8, i8* %arrayidx49.i.2, align 1
  %call50.i.2 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #2
  %arrayidx52.i.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call50.i.2, i8* %arrayidx52.i.2, align 1
  %arrayidx66.i.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep29.290 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 0
  %92 = load i8, i8* %scevgep29.290, align 1
  %conv64.i.291 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.292 = zext i8 %93 to i32
  %xor68.i.293 = xor i32 %conv67.i.292, %conv64.i.291
  %conv69.i.294 = trunc i32 %xor68.i.293 to i8
  store i8 %conv69.i.294, i8* %arrayidx66.i.2, align 1
  %scevgep29.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 1
  %94 = load i8, i8* %scevgep29.1.2, align 1
  %conv64.i.1.2 = zext i8 %94 to i32
  %95 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.1.2 = zext i8 %95 to i32
  %xor68.i.1.2 = xor i32 %conv67.i.1.2, %conv64.i.1.2
  %conv69.i.1.2 = trunc i32 %xor68.i.1.2 to i8
  store i8 %conv69.i.1.2, i8* %arrayidx66.i.2, align 1
  %scevgep29.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 3
  %96 = load i8, i8* %scevgep29.3.2, align 1
  %conv64.i.3.2 = zext i8 %96 to i32
  %97 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.3.2 = zext i8 %97 to i32
  %xor68.i.3.2 = xor i32 %conv67.i.3.2, %conv64.i.3.2
  %conv69.i.3.2 = trunc i32 %xor68.i.3.2 to i8
  store i8 %conv69.i.3.2, i8* %arrayidx66.i.2, align 1
  %scevgep28.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep28.2 to [4 x [4 x i8]]*
  %arrayidx47.i.3 = getelementptr inbounds i8, i8* %a, i64 3
  %99 = load i8, i8* %arrayidx47.i.3, align 1
  %arrayidx49.i.3 = getelementptr inbounds i8, i8* %b, i64 3
  %100 = load i8, i8* %arrayidx49.i.3, align 1
  %call50.i.3 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100) #2
  %arrayidx52.i.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call50.i.3, i8* %arrayidx52.i.3, align 1
  %arrayidx66.i.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep29.399 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep29.399, align 1
  %conv64.i.3100 = zext i8 %101 to i32
  %102 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.3101 = zext i8 %102 to i32
  %xor68.i.3102 = xor i32 %conv67.i.3101, %conv64.i.3100
  %conv69.i.3103 = trunc i32 %xor68.i.3102 to i8
  store i8 %conv69.i.3103, i8* %arrayidx66.i.3, align 1
  %scevgep29.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  %103 = load i8, i8* %scevgep29.1.3, align 1
  %conv64.i.1.3 = zext i8 %103 to i32
  %104 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.1.3 = zext i8 %104 to i32
  %xor68.i.1.3 = xor i32 %conv67.i.1.3, %conv64.i.1.3
  %conv69.i.1.3 = trunc i32 %xor68.i.1.3 to i8
  store i8 %conv69.i.1.3, i8* %arrayidx66.i.3, align 1
  %scevgep29.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 2
  %105 = load i8, i8* %scevgep29.2.3, align 1
  %conv64.i.2.3 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.2.3 = zext i8 %106 to i32
  %xor68.i.2.3 = xor i32 %conv67.i.2.3, %conv64.i.2.3
  %conv69.i.2.3 = trunc i32 %xor68.i.2.3 to i8
  store i8 %conv69.i.2.3, i8* %arrayidx66.i.3, align 1
  %call11 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv12 = zext i8 %call11 to i32
  %107 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %108 = load i8, i8* %scevgep.1, align 1
  %conv.i.i71.1 = zext i8 %108 to i32
  %conv1.i.i72.1 = zext i8 %107 to i32
  %xor.i.i73.1 = xor i32 %conv1.i.i72.1, %conv.i.i71.1
  %conv2.i.i74.1 = trunc i32 %xor.i.i73.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %109 = load i8, i8* %scevgep.2, align 1
  %conv.i.i71.2 = zext i8 %109 to i32
  %conv1.i.i72.2 = zext i8 %conv2.i.i74.1 to i32
  %xor.i.i73.2 = xor i32 %conv1.i.i72.2, %conv.i.i71.2
  %conv2.i.i74.2 = trunc i32 %xor.i.i73.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %110 = load i8, i8* %scevgep.3, align 1
  %conv.i.i71.3 = zext i8 %110 to i32
  %conv1.i.i72.3 = zext i8 %conv2.i.i74.2 to i32
  %xor.i.i73.3 = xor i32 %conv1.i.i72.3, %conv.i.i71.3
  %conv2.i.i74.3 = trunc i32 %xor.i.i73.3 to i8
  %conv14 = zext i8 %conv2.i.i74.3 to i32
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
