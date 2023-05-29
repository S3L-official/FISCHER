; ModuleID = '../examples/hpc1-mult.inline-4.ll'
source_filename = "../examples/hpc1-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
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
  %scevgep.4 = getelementptr i8, i8* %from, i64 4
  %4 = load i8, i8* %scevgep.4, align 1
  %call.4 = call zeroext i8 %f(i8 zeroext %4)
  %scevgep2.4 = getelementptr i8, i8* %to, i64 4
  store i8 %call.4, i8* %scevgep2.4, align 1
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
  ret i8 %conv2.4
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
  ret i8 %conv2.i.4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult_dom(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [5 x [5 x i8]], align 16
  %u = alloca [5 x [5 x i8]], align 16
  %scevgep13 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep1314 = bitcast i8* %scevgep13 to [5 x [5 x i8]]*
  %scevgep22 = getelementptr i8, i8* %b, i64 1
  %scevgep30 = getelementptr i8, i8* %a, i64 1
  %call = call zeroext i8 (...) @rand()
  %scevgep19 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  store i8 %call, i8* %scevgep19, align 1
  %0 = load i8, i8* %a, align 1
  %1 = load i8, i8* %scevgep22, align 1
  %call10 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  %conv = zext i8 %call10 to i32
  %scevgep20 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %2 = load i8, i8* %scevgep20, align 1
  %conv15 = zext i8 %2 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %scevgep28 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep29 = getelementptr i8, i8* %scevgep28, i64 1
  store i8 %conv16, i8* %scevgep29, align 1
  %3 = load i8, i8* %scevgep30, align 1
  %4 = load i8, i8* %b, align 1
  %call25 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4)
  %conv26 = zext i8 %call25 to i32
  %scevgep21 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 0
  %5 = load i8, i8* %scevgep21, align 1
  %conv31 = zext i8 %5 to i32
  %xor32 = xor i32 %conv26, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %scevgep36 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 5
  store i8 %conv33, i8* %scevgep36, align 1
  %call.176 = call zeroext i8 (...) @rand()
  %scevgep19.177 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  store i8 %call.176, i8* %scevgep19.177, align 1
  %6 = load i8, i8* %a, align 1
  %scevgep25.1 = getelementptr i8, i8* %scevgep22, i64 1
  %7 = load i8, i8* %scevgep25.1, align 1
  %call10.178 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %conv.179 = zext i8 %call10.178 to i32
  %scevgep20.180 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep20.180, align 1
  %conv15.181 = zext i8 %8 to i32
  %xor.182 = xor i32 %conv.179, %conv15.181
  %conv16.183 = trunc i32 %xor.182 to i8
  %scevgep28.184 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 1
  %scevgep29.185 = getelementptr i8, i8* %scevgep28.184, i64 1
  store i8 %conv16.183, i8* %scevgep29.185, align 1
  %scevgep33.1 = getelementptr i8, i8* %scevgep30, i64 1
  %9 = load i8, i8* %scevgep33.1, align 1
  %10 = load i8, i8* %b, align 1
  %call25.186 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %conv26.187 = zext i8 %call25.186 to i32
  %scevgep21.188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep21.188, align 1
  %conv31.189 = zext i8 %11 to i32
  %xor32.190 = xor i32 %conv26.187, %conv31.189
  %conv33.191 = trunc i32 %xor32.190 to i8
  %scevgep36.192 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 10
  store i8 %conv33.191, i8* %scevgep36.192, align 1
  %call.294 = call zeroext i8 (...) @rand()
  %scevgep19.295 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 2
  store i8 %call.294, i8* %scevgep19.295, align 1
  %12 = load i8, i8* %a, align 1
  %scevgep25.2 = getelementptr i8, i8* %scevgep22, i64 2
  %13 = load i8, i8* %scevgep25.2, align 1
  %call10.296 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %conv.297 = zext i8 %call10.296 to i32
  %scevgep20.298 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 2
  %14 = load i8, i8* %scevgep20.298, align 1
  %conv15.299 = zext i8 %14 to i32
  %xor.2100 = xor i32 %conv.297, %conv15.299
  %conv16.2101 = trunc i32 %xor.2100 to i8
  %scevgep28.2102 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 2
  %scevgep29.2103 = getelementptr i8, i8* %scevgep28.2102, i64 1
  store i8 %conv16.2101, i8* %scevgep29.2103, align 1
  %scevgep33.2 = getelementptr i8, i8* %scevgep30, i64 2
  %15 = load i8, i8* %scevgep33.2, align 1
  %16 = load i8, i8* %b, align 1
  %call25.2104 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16)
  %conv26.2105 = zext i8 %call25.2104 to i32
  %scevgep21.2106 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 2
  %17 = load i8, i8* %scevgep21.2106, align 1
  %conv31.2107 = zext i8 %17 to i32
  %xor32.2108 = xor i32 %conv26.2105, %conv31.2107
  %conv33.2109 = trunc i32 %xor32.2108 to i8
  %scevgep36.2110 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 15
  store i8 %conv33.2109, i8* %scevgep36.2110, align 1
  %call.3112 = call zeroext i8 (...) @rand()
  %scevgep19.3113 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 3
  store i8 %call.3112, i8* %scevgep19.3113, align 1
  %18 = load i8, i8* %a, align 1
  %scevgep25.3 = getelementptr i8, i8* %scevgep22, i64 3
  %19 = load i8, i8* %scevgep25.3, align 1
  %call10.3114 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19)
  %conv.3115 = zext i8 %call10.3114 to i32
  %scevgep20.3116 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 3
  %20 = load i8, i8* %scevgep20.3116, align 1
  %conv15.3117 = zext i8 %20 to i32
  %xor.3118 = xor i32 %conv.3115, %conv15.3117
  %conv16.3119 = trunc i32 %xor.3118 to i8
  %scevgep28.3120 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 3
  %scevgep29.3121 = getelementptr i8, i8* %scevgep28.3120, i64 1
  store i8 %conv16.3119, i8* %scevgep29.3121, align 1
  %scevgep33.3 = getelementptr i8, i8* %scevgep30, i64 3
  %21 = load i8, i8* %scevgep33.3, align 1
  %22 = load i8, i8* %b, align 1
  %call25.3122 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  %conv26.3123 = zext i8 %call25.3122 to i32
  %scevgep21.3124 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 0, i64 3
  %23 = load i8, i8* %scevgep21.3124, align 1
  %conv31.3125 = zext i8 %23 to i32
  %xor32.3126 = xor i32 %conv26.3123, %conv31.3125
  %conv33.3127 = trunc i32 %xor32.3126 to i8
  %scevgep36.3128 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 20
  store i8 %conv33.3127, i8* %scevgep36.3128, align 1
  %scevgep16 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep1314, i64 0, i64 1, i64 1
  %24 = bitcast i8* %scevgep16 to [5 x [5 x i8]]*
  %scevgep24 = getelementptr i8, i8* %scevgep22, i64 1
  %scevgep27 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 1, i64 1
  %25 = bitcast i8* %scevgep27 to [5 x [5 x i8]]*
  %scevgep32 = getelementptr i8, i8* %scevgep30, i64 1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx24.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call.1 = call zeroext i8 (...) @rand()
  %scevgep19.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 0
  store i8 %call.1, i8* %scevgep19.1, align 1
  %26 = load i8, i8* %arrayidx7.1, align 1
  %27 = load i8, i8* %scevgep24, align 1
  %call10.1 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  %conv.1 = zext i8 %call10.1 to i32
  %scevgep20.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 0
  %28 = load i8, i8* %scevgep20.1, align 1
  %conv15.1 = zext i8 %28 to i32
  %xor.1 = xor i32 %conv.1, %conv15.1
  %conv16.1 = trunc i32 %xor.1 to i8
  %scevgep28.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 0
  %scevgep29.1 = getelementptr i8, i8* %scevgep28.1, i64 1
  store i8 %conv16.1, i8* %scevgep29.1, align 1
  %29 = load i8, i8* %scevgep32, align 1
  %30 = load i8, i8* %arrayidx24.1, align 1
  %call25.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30)
  %conv26.1 = zext i8 %call25.1 to i32
  %scevgep21.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep21.1, align 1
  %conv31.1 = zext i8 %31 to i32
  %xor32.1 = xor i32 %conv26.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep36.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 5
  store i8 %conv33.1, i8* %scevgep36.1, align 1
  %call.1.1 = call zeroext i8 (...) @rand()
  %scevgep19.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 1
  store i8 %call.1.1, i8* %scevgep19.1.1, align 1
  %32 = load i8, i8* %arrayidx7.1, align 1
  %scevgep25.1.1 = getelementptr i8, i8* %scevgep24, i64 1
  %33 = load i8, i8* %scevgep25.1.1, align 1
  %call10.1.1 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %conv.1.1 = zext i8 %call10.1.1 to i32
  %scevgep20.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep20.1.1, align 1
  %conv15.1.1 = zext i8 %34 to i32
  %xor.1.1 = xor i32 %conv.1.1, %conv15.1.1
  %conv16.1.1 = trunc i32 %xor.1.1 to i8
  %scevgep28.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 1
  %scevgep29.1.1 = getelementptr i8, i8* %scevgep28.1.1, i64 1
  store i8 %conv16.1.1, i8* %scevgep29.1.1, align 1
  %scevgep33.1.1 = getelementptr i8, i8* %scevgep32, i64 1
  %35 = load i8, i8* %scevgep33.1.1, align 1
  %36 = load i8, i8* %arrayidx24.1, align 1
  %call25.1.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36)
  %conv26.1.1 = zext i8 %call25.1.1 to i32
  %scevgep21.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 1
  %37 = load i8, i8* %scevgep21.1.1, align 1
  %conv31.1.1 = zext i8 %37 to i32
  %xor32.1.1 = xor i32 %conv26.1.1, %conv31.1.1
  %conv33.1.1 = trunc i32 %xor32.1.1 to i8
  %scevgep36.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 10
  store i8 %conv33.1.1, i8* %scevgep36.1.1, align 1
  %call.1.2 = call zeroext i8 (...) @rand()
  %scevgep19.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 2
  store i8 %call.1.2, i8* %scevgep19.1.2, align 1
  %38 = load i8, i8* %arrayidx7.1, align 1
  %scevgep25.1.2 = getelementptr i8, i8* %scevgep24, i64 2
  %39 = load i8, i8* %scevgep25.1.2, align 1
  %call10.1.2 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %conv.1.2 = zext i8 %call10.1.2 to i32
  %scevgep20.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 2
  %40 = load i8, i8* %scevgep20.1.2, align 1
  %conv15.1.2 = zext i8 %40 to i32
  %xor.1.2 = xor i32 %conv.1.2, %conv15.1.2
  %conv16.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep28.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 2
  %scevgep29.1.2 = getelementptr i8, i8* %scevgep28.1.2, i64 1
  store i8 %conv16.1.2, i8* %scevgep29.1.2, align 1
  %scevgep33.1.2 = getelementptr i8, i8* %scevgep32, i64 2
  %41 = load i8, i8* %scevgep33.1.2, align 1
  %42 = load i8, i8* %arrayidx24.1, align 1
  %call25.1.2 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42)
  %conv26.1.2 = zext i8 %call25.1.2 to i32
  %scevgep21.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep21.1.2, align 1
  %conv31.1.2 = zext i8 %43 to i32
  %xor32.1.2 = xor i32 %conv26.1.2, %conv31.1.2
  %conv33.1.2 = trunc i32 %xor32.1.2 to i8
  %scevgep36.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 15
  store i8 %conv33.1.2, i8* %scevgep36.1.2, align 1
  %scevgep16.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 1, i64 1
  %44 = bitcast i8* %scevgep16.1 to [5 x [5 x i8]]*
  %scevgep24.1 = getelementptr i8, i8* %scevgep24, i64 1
  %scevgep27.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 1, i64 1
  %45 = bitcast i8* %scevgep27.1 to [5 x [5 x i8]]*
  %scevgep32.1 = getelementptr i8, i8* %scevgep32, i64 1
  %arrayidx7.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx24.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call.2 = call zeroext i8 (...) @rand()
  %scevgep19.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 0
  store i8 %call.2, i8* %scevgep19.2, align 1
  %46 = load i8, i8* %arrayidx7.2, align 1
  %47 = load i8, i8* %scevgep24.1, align 1
  %call10.2 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %conv.2 = zext i8 %call10.2 to i32
  %scevgep20.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 0
  %48 = load i8, i8* %scevgep20.2, align 1
  %conv15.2 = zext i8 %48 to i32
  %xor.2 = xor i32 %conv.2, %conv15.2
  %conv16.2 = trunc i32 %xor.2 to i8
  %scevgep28.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 0, i64 0
  %scevgep29.2 = getelementptr i8, i8* %scevgep28.2, i64 1
  store i8 %conv16.2, i8* %scevgep29.2, align 1
  %49 = load i8, i8* %scevgep32.1, align 1
  %50 = load i8, i8* %arrayidx24.2, align 1
  %call25.2 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %conv26.2 = zext i8 %call25.2 to i32
  %scevgep21.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 0
  %51 = load i8, i8* %scevgep21.2, align 1
  %conv31.2 = zext i8 %51 to i32
  %xor32.2 = xor i32 %conv26.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep36.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 0, i64 5
  store i8 %conv33.2, i8* %scevgep36.2, align 1
  %call.2.1 = call zeroext i8 (...) @rand()
  %scevgep19.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 1
  store i8 %call.2.1, i8* %scevgep19.2.1, align 1
  %52 = load i8, i8* %arrayidx7.2, align 1
  %scevgep25.2.1 = getelementptr i8, i8* %scevgep24.1, i64 1
  %53 = load i8, i8* %scevgep25.2.1, align 1
  %call10.2.1 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53)
  %conv.2.1 = zext i8 %call10.2.1 to i32
  %scevgep20.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 1
  %54 = load i8, i8* %scevgep20.2.1, align 1
  %conv15.2.1 = zext i8 %54 to i32
  %xor.2.1 = xor i32 %conv.2.1, %conv15.2.1
  %conv16.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep28.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 0, i64 1
  %scevgep29.2.1 = getelementptr i8, i8* %scevgep28.2.1, i64 1
  store i8 %conv16.2.1, i8* %scevgep29.2.1, align 1
  %scevgep33.2.1 = getelementptr i8, i8* %scevgep32.1, i64 1
  %55 = load i8, i8* %scevgep33.2.1, align 1
  %56 = load i8, i8* %arrayidx24.2, align 1
  %call25.2.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56)
  %conv26.2.1 = zext i8 %call25.2.1 to i32
  %scevgep21.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 1
  %57 = load i8, i8* %scevgep21.2.1, align 1
  %conv31.2.1 = zext i8 %57 to i32
  %xor32.2.1 = xor i32 %conv26.2.1, %conv31.2.1
  %conv33.2.1 = trunc i32 %xor32.2.1 to i8
  %scevgep36.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 0, i64 10
  store i8 %conv33.2.1, i8* %scevgep36.2.1, align 1
  %scevgep16.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 1, i64 1
  %58 = bitcast i8* %scevgep16.2 to [5 x [5 x i8]]*
  %scevgep24.2 = getelementptr i8, i8* %scevgep24.1, i64 1
  %scevgep27.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 1, i64 1
  %59 = bitcast i8* %scevgep27.2 to [5 x [5 x i8]]*
  %scevgep32.2 = getelementptr i8, i8* %scevgep32.1, i64 1
  %arrayidx7.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx24.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call.3 = call zeroext i8 (...) @rand()
  %scevgep19.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %58, i64 0, i64 0, i64 0
  store i8 %call.3, i8* %scevgep19.3, align 1
  %60 = load i8, i8* %arrayidx7.3, align 1
  %61 = load i8, i8* %scevgep24.2, align 1
  %call10.3 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61)
  %conv.3 = zext i8 %call10.3 to i32
  %scevgep20.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %58, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep20.3, align 1
  %conv15.3 = zext i8 %62 to i32
  %xor.3 = xor i32 %conv.3, %conv15.3
  %conv16.3 = trunc i32 %xor.3 to i8
  %scevgep28.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %59, i64 0, i64 0, i64 0
  %scevgep29.3 = getelementptr i8, i8* %scevgep28.3, i64 1
  store i8 %conv16.3, i8* %scevgep29.3, align 1
  %63 = load i8, i8* %scevgep32.2, align 1
  %64 = load i8, i8* %arrayidx24.3, align 1
  %call25.3 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %conv26.3 = zext i8 %call25.3 to i32
  %scevgep21.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %58, i64 0, i64 0, i64 0
  %65 = load i8, i8* %scevgep21.3, align 1
  %conv31.3 = zext i8 %65 to i32
  %xor32.3 = xor i32 %conv26.3, %conv31.3
  %conv33.3 = trunc i32 %xor32.3 to i8
  %scevgep36.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %59, i64 0, i64 0, i64 5
  store i8 %conv33.3, i8* %scevgep36.3, align 1
  %66 = load i8, i8* %a, align 1
  %67 = load i8, i8* %b, align 1
  %call50 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  store i8 %call50, i8* %c, align 1
  %scevgep10.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 1
  %68 = load i8, i8* %scevgep10.1, align 1
  %conv64.1 = zext i8 %68 to i32
  %69 = load i8, i8* %c, align 1
  %conv67.1 = zext i8 %69 to i32
  %xor68.1 = xor i32 %conv67.1, %conv64.1
  %conv69.1 = trunc i32 %xor68.1 to i8
  store i8 %conv69.1, i8* %c, align 1
  %scevgep10.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 2
  %70 = load i8, i8* %scevgep10.2, align 1
  %conv64.2 = zext i8 %70 to i32
  %71 = load i8, i8* %c, align 1
  %conv67.2 = zext i8 %71 to i32
  %xor68.2 = xor i32 %conv67.2, %conv64.2
  %conv69.2 = trunc i32 %xor68.2 to i8
  store i8 %conv69.2, i8* %c, align 1
  %scevgep10.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 3
  %72 = load i8, i8* %scevgep10.3, align 1
  %conv64.3 = zext i8 %72 to i32
  %73 = load i8, i8* %c, align 1
  %conv67.3 = zext i8 %73 to i32
  %xor68.3 = xor i32 %conv67.3, %conv64.3
  %conv69.3 = trunc i32 %xor68.3 to i8
  store i8 %conv69.3, i8* %c, align 1
  %scevgep10.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 0, i64 4
  %74 = load i8, i8* %scevgep10.4, align 1
  %conv64.4 = zext i8 %74 to i32
  %75 = load i8, i8* %c, align 1
  %conv67.4 = zext i8 %75 to i32
  %xor68.4 = xor i32 %conv67.4, %conv64.4
  %conv69.4 = trunc i32 %xor68.4 to i8
  store i8 %conv69.4, i8* %c, align 1
  %scevgep = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep to [5 x [5 x i8]]*
  %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1
  %77 = load i8, i8* %arrayidx47.1, align 1
  %arrayidx49.1 = getelementptr inbounds i8, i8* %b, i64 1
  %78 = load i8, i8* %arrayidx49.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78)
  %arrayidx52.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.1, i8* %arrayidx52.1, align 1
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep10.142 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 0
  %79 = load i8, i8* %scevgep10.142, align 1
  %conv64.143 = zext i8 %79 to i32
  %80 = load i8, i8* %arrayidx66.1, align 1
  %conv67.144 = zext i8 %80 to i32
  %xor68.145 = xor i32 %conv67.144, %conv64.143
  %conv69.146 = trunc i32 %xor68.145 to i8
  store i8 %conv69.146, i8* %arrayidx66.1, align 1
  %scevgep10.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep10.2.1, align 1
  %conv64.2.1 = zext i8 %81 to i32
  %82 = load i8, i8* %arrayidx66.1, align 1
  %conv67.2.1 = zext i8 %82 to i32
  %xor68.2.1 = xor i32 %conv67.2.1, %conv64.2.1
  %conv69.2.1 = trunc i32 %xor68.2.1 to i8
  store i8 %conv69.2.1, i8* %arrayidx66.1, align 1
  %scevgep10.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 3
  %83 = load i8, i8* %scevgep10.3.1, align 1
  %conv64.3.1 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx66.1, align 1
  %conv67.3.1 = zext i8 %84 to i32
  %xor68.3.1 = xor i32 %conv67.3.1, %conv64.3.1
  %conv69.3.1 = trunc i32 %xor68.3.1 to i8
  store i8 %conv69.3.1, i8* %arrayidx66.1, align 1
  %scevgep10.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 4
  %85 = load i8, i8* %scevgep10.4.1, align 1
  %conv64.4.1 = zext i8 %85 to i32
  %86 = load i8, i8* %arrayidx66.1, align 1
  %conv67.4.1 = zext i8 %86 to i32
  %xor68.4.1 = xor i32 %conv67.4.1, %conv64.4.1
  %conv69.4.1 = trunc i32 %xor68.4.1 to i8
  store i8 %conv69.4.1, i8* %arrayidx66.1, align 1
  %scevgep.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 1, i64 0
  %87 = bitcast i8* %scevgep.1 to [5 x [5 x i8]]*
  %arrayidx47.2 = getelementptr inbounds i8, i8* %a, i64 2
  %88 = load i8, i8* %arrayidx47.2, align 1
  %arrayidx49.2 = getelementptr inbounds i8, i8* %b, i64 2
  %89 = load i8, i8* %arrayidx49.2, align 1
  %call50.2 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89)
  %arrayidx52.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call50.2, i8* %arrayidx52.2, align 1
  %arrayidx66.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep10.251 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 0, i64 0
  %90 = load i8, i8* %scevgep10.251, align 1
  %conv64.252 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx66.2, align 1
  %conv67.253 = zext i8 %91 to i32
  %xor68.254 = xor i32 %conv67.253, %conv64.252
  %conv69.255 = trunc i32 %xor68.254 to i8
  store i8 %conv69.255, i8* %arrayidx66.2, align 1
  %scevgep10.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 0, i64 1
  %92 = load i8, i8* %scevgep10.1.2, align 1
  %conv64.1.2 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx66.2, align 1
  %conv67.1.2 = zext i8 %93 to i32
  %xor68.1.2 = xor i32 %conv67.1.2, %conv64.1.2
  %conv69.1.2 = trunc i32 %xor68.1.2 to i8
  store i8 %conv69.1.2, i8* %arrayidx66.2, align 1
  %scevgep10.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 0, i64 3
  %94 = load i8, i8* %scevgep10.3.2, align 1
  %conv64.3.2 = zext i8 %94 to i32
  %95 = load i8, i8* %arrayidx66.2, align 1
  %conv67.3.2 = zext i8 %95 to i32
  %xor68.3.2 = xor i32 %conv67.3.2, %conv64.3.2
  %conv69.3.2 = trunc i32 %xor68.3.2 to i8
  store i8 %conv69.3.2, i8* %arrayidx66.2, align 1
  %scevgep10.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 0, i64 4
  %96 = load i8, i8* %scevgep10.4.2, align 1
  %conv64.4.2 = zext i8 %96 to i32
  %97 = load i8, i8* %arrayidx66.2, align 1
  %conv67.4.2 = zext i8 %97 to i32
  %xor68.4.2 = xor i32 %conv67.4.2, %conv64.4.2
  %conv69.4.2 = trunc i32 %xor68.4.2 to i8
  store i8 %conv69.4.2, i8* %arrayidx66.2, align 1
  %scevgep.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep.2 to [5 x [5 x i8]]*
  %arrayidx47.3 = getelementptr inbounds i8, i8* %a, i64 3
  %99 = load i8, i8* %arrayidx47.3, align 1
  %arrayidx49.3 = getelementptr inbounds i8, i8* %b, i64 3
  %100 = load i8, i8* %arrayidx49.3, align 1
  %call50.3 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100)
  %arrayidx52.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call50.3, i8* %arrayidx52.3, align 1
  %arrayidx66.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep10.360 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep10.360, align 1
  %conv64.361 = zext i8 %101 to i32
  %102 = load i8, i8* %arrayidx66.3, align 1
  %conv67.362 = zext i8 %102 to i32
  %xor68.363 = xor i32 %conv67.362, %conv64.361
  %conv69.364 = trunc i32 %xor68.363 to i8
  store i8 %conv69.364, i8* %arrayidx66.3, align 1
  %scevgep10.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 1
  %103 = load i8, i8* %scevgep10.1.3, align 1
  %conv64.1.3 = zext i8 %103 to i32
  %104 = load i8, i8* %arrayidx66.3, align 1
  %conv67.1.3 = zext i8 %104 to i32
  %xor68.1.3 = xor i32 %conv67.1.3, %conv64.1.3
  %conv69.1.3 = trunc i32 %xor68.1.3 to i8
  store i8 %conv69.1.3, i8* %arrayidx66.3, align 1
  %scevgep10.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 2
  %105 = load i8, i8* %scevgep10.2.3, align 1
  %conv64.2.3 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx66.3, align 1
  %conv67.2.3 = zext i8 %106 to i32
  %xor68.2.3 = xor i32 %conv67.2.3, %conv64.2.3
  %conv69.2.3 = trunc i32 %xor68.2.3 to i8
  store i8 %conv69.2.3, i8* %arrayidx66.3, align 1
  %scevgep10.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 4
  %107 = load i8, i8* %scevgep10.4.3, align 1
  %conv64.4.3 = zext i8 %107 to i32
  %108 = load i8, i8* %arrayidx66.3, align 1
  %conv67.4.3 = zext i8 %108 to i32
  %xor68.4.3 = xor i32 %conv67.4.3, %conv64.4.3
  %conv69.4.3 = trunc i32 %xor68.4.3 to i8
  store i8 %conv69.4.3, i8* %arrayidx66.3, align 1
  %scevgep.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 1, i64 0
  %109 = bitcast i8* %scevgep.3 to [5 x [5 x i8]]*
  %arrayidx47.4 = getelementptr inbounds i8, i8* %a, i64 4
  %110 = load i8, i8* %arrayidx47.4, align 1
  %arrayidx49.4 = getelementptr inbounds i8, i8* %b, i64 4
  %111 = load i8, i8* %arrayidx49.4, align 1
  %call50.4 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111)
  %arrayidx52.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call50.4, i8* %arrayidx52.4, align 1
  %arrayidx66.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep10.469 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 0
  %112 = load i8, i8* %scevgep10.469, align 1
  %conv64.470 = zext i8 %112 to i32
  %113 = load i8, i8* %arrayidx66.4, align 1
  %conv67.471 = zext i8 %113 to i32
  %xor68.472 = xor i32 %conv67.471, %conv64.470
  %conv69.473 = trunc i32 %xor68.472 to i8
  store i8 %conv69.473, i8* %arrayidx66.4, align 1
  %scevgep10.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 1
  %114 = load i8, i8* %scevgep10.1.4, align 1
  %conv64.1.4 = zext i8 %114 to i32
  %115 = load i8, i8* %arrayidx66.4, align 1
  %conv67.1.4 = zext i8 %115 to i32
  %xor68.1.4 = xor i32 %conv67.1.4, %conv64.1.4
  %conv69.1.4 = trunc i32 %xor68.1.4 to i8
  store i8 %conv69.1.4, i8* %arrayidx66.4, align 1
  %scevgep10.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 2
  %116 = load i8, i8* %scevgep10.2.4, align 1
  %conv64.2.4 = zext i8 %116 to i32
  %117 = load i8, i8* %arrayidx66.4, align 1
  %conv67.2.4 = zext i8 %117 to i32
  %xor68.2.4 = xor i32 %conv67.2.4, %conv64.2.4
  %conv69.2.4 = trunc i32 %xor68.2.4 to i8
  store i8 %conv69.2.4, i8* %arrayidx66.4, align 1
  %scevgep10.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 3
  %118 = load i8, i8* %scevgep10.3.4, align 1
  %conv64.3.4 = zext i8 %118 to i32
  %119 = load i8, i8* %arrayidx66.4, align 1
  %conv67.3.4 = zext i8 %119 to i32
  %xor68.3.4 = xor i32 %conv67.3.4, %conv64.3.4
  %conv69.3.4 = trunc i32 %xor68.3.4 to i8
  store i8 %conv69.3.4, i8* %arrayidx66.4, align 1
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
  %scevgep11.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep11.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call14 = call zeroext i8 (...) @rand()
  %conv15 = zext i8 %call14 to i32
  %5 = load i8, i8* %x, align 1
  %conv16 = zext i8 %5 to i32
  %xor = xor i32 %conv16, %conv15
  %conv17 = trunc i32 %xor to i8
  store i8 %conv17, i8* %x, align 1
  %conv18 = zext i8 %call14 to i32
  %arrayidx20 = getelementptr inbounds i8, i8* %x, i64 1
  %6 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %6 to i32
  %xor22 = xor i32 %conv21, %conv18
  %conv23 = trunc i32 %xor22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  %call14.113 = call zeroext i8 (...) @rand()
  %conv15.114 = zext i8 %call14.113 to i32
  %7 = load i8, i8* %x, align 1
  %conv16.115 = zext i8 %7 to i32
  %xor.116 = xor i32 %conv16.115, %conv15.114
  %conv17.117 = trunc i32 %xor.116 to i8
  store i8 %conv17.117, i8* %x, align 1
  %conv18.118 = zext i8 %call14.113 to i32
  %arrayidx20.119 = getelementptr inbounds i8, i8* %x, i64 2
  %8 = load i8, i8* %arrayidx20.119, align 1
  %conv21.120 = zext i8 %8 to i32
  %xor22.121 = xor i32 %conv21.120, %conv18.118
  %conv23.122 = trunc i32 %xor22.121 to i8
  store i8 %conv23.122, i8* %arrayidx20.119, align 1
  %call14.224 = call zeroext i8 (...) @rand()
  %conv15.225 = zext i8 %call14.224 to i32
  %9 = load i8, i8* %x, align 1
  %conv16.226 = zext i8 %9 to i32
  %xor.227 = xor i32 %conv16.226, %conv15.225
  %conv17.228 = trunc i32 %xor.227 to i8
  store i8 %conv17.228, i8* %x, align 1
  %conv18.229 = zext i8 %call14.224 to i32
  %arrayidx20.230 = getelementptr inbounds i8, i8* %x, i64 3
  %10 = load i8, i8* %arrayidx20.230, align 1
  %conv21.231 = zext i8 %10 to i32
  %xor22.232 = xor i32 %conv21.231, %conv18.229
  %conv23.233 = trunc i32 %xor22.232 to i8
  store i8 %conv23.233, i8* %arrayidx20.230, align 1
  %call14.335 = call zeroext i8 (...) @rand()
  %conv15.336 = zext i8 %call14.335 to i32
  %11 = load i8, i8* %x, align 1
  %conv16.337 = zext i8 %11 to i32
  %xor.338 = xor i32 %conv16.337, %conv15.336
  %conv17.339 = trunc i32 %xor.338 to i8
  store i8 %conv17.339, i8* %x, align 1
  %conv18.340 = zext i8 %call14.335 to i32
  %arrayidx20.341 = getelementptr inbounds i8, i8* %x, i64 4
  %12 = load i8, i8* %arrayidx20.341, align 1
  %conv21.342 = zext i8 %12 to i32
  %xor22.343 = xor i32 %conv21.342, %conv18.340
  %conv23.344 = trunc i32 %xor22.343 to i8
  store i8 %conv23.344, i8* %arrayidx20.341, align 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call14.1 = call zeroext i8 (...) @rand()
  %conv15.1 = zext i8 %call14.1 to i32
  %13 = load i8, i8* %arrayidx.1, align 1
  %conv16.1 = zext i8 %13 to i32
  %xor.1 = xor i32 %conv16.1, %conv15.1
  %conv17.1 = trunc i32 %xor.1 to i8
  store i8 %conv17.1, i8* %arrayidx.1, align 1
  %conv18.1 = zext i8 %call14.1 to i32
  %arrayidx20.1 = getelementptr inbounds i8, i8* %x, i64 2
  %14 = load i8, i8* %arrayidx20.1, align 1
  %conv21.1 = zext i8 %14 to i32
  %xor22.1 = xor i32 %conv21.1, %conv18.1
  %conv23.1 = trunc i32 %xor22.1 to i8
  store i8 %conv23.1, i8* %arrayidx20.1, align 1
  %call14.1.1 = call zeroext i8 (...) @rand()
  %conv15.1.1 = zext i8 %call14.1.1 to i32
  %15 = load i8, i8* %arrayidx.1, align 1
  %conv16.1.1 = zext i8 %15 to i32
  %xor.1.1 = xor i32 %conv16.1.1, %conv15.1.1
  %conv17.1.1 = trunc i32 %xor.1.1 to i8
  store i8 %conv17.1.1, i8* %arrayidx.1, align 1
  %conv18.1.1 = zext i8 %call14.1.1 to i32
  %arrayidx20.1.1 = getelementptr inbounds i8, i8* %x, i64 3
  %16 = load i8, i8* %arrayidx20.1.1, align 1
  %conv21.1.1 = zext i8 %16 to i32
  %xor22.1.1 = xor i32 %conv21.1.1, %conv18.1.1
  %conv23.1.1 = trunc i32 %xor22.1.1 to i8
  store i8 %conv23.1.1, i8* %arrayidx20.1.1, align 1
  %call14.1.2 = call zeroext i8 (...) @rand()
  %conv15.1.2 = zext i8 %call14.1.2 to i32
  %17 = load i8, i8* %arrayidx.1, align 1
  %conv16.1.2 = zext i8 %17 to i32
  %xor.1.2 = xor i32 %conv16.1.2, %conv15.1.2
  %conv17.1.2 = trunc i32 %xor.1.2 to i8
  store i8 %conv17.1.2, i8* %arrayidx.1, align 1
  %conv18.1.2 = zext i8 %call14.1.2 to i32
  %arrayidx20.1.2 = getelementptr inbounds i8, i8* %x, i64 4
  %18 = load i8, i8* %arrayidx20.1.2, align 1
  %conv21.1.2 = zext i8 %18 to i32
  %xor22.1.2 = xor i32 %conv21.1.2, %conv18.1.2
  %conv23.1.2 = trunc i32 %xor22.1.2 to i8
  store i8 %conv23.1.2, i8* %arrayidx20.1.2, align 1
  %arrayidx.2 = getelementptr inbounds i8, i8* %x, i64 2
  %call14.2 = call zeroext i8 (...) @rand()
  %conv15.2 = zext i8 %call14.2 to i32
  %19 = load i8, i8* %arrayidx.2, align 1
  %conv16.2 = zext i8 %19 to i32
  %xor.2 = xor i32 %conv16.2, %conv15.2
  %conv17.2 = trunc i32 %xor.2 to i8
  store i8 %conv17.2, i8* %arrayidx.2, align 1
  %conv18.2 = zext i8 %call14.2 to i32
  %arrayidx20.2 = getelementptr inbounds i8, i8* %x, i64 3
  %20 = load i8, i8* %arrayidx20.2, align 1
  %conv21.2 = zext i8 %20 to i32
  %xor22.2 = xor i32 %conv21.2, %conv18.2
  %conv23.2 = trunc i32 %xor22.2 to i8
  store i8 %conv23.2, i8* %arrayidx20.2, align 1
  %call14.2.1 = call zeroext i8 (...) @rand()
  %conv15.2.1 = zext i8 %call14.2.1 to i32
  %21 = load i8, i8* %arrayidx.2, align 1
  %conv16.2.1 = zext i8 %21 to i32
  %xor.2.1 = xor i32 %conv16.2.1, %conv15.2.1
  %conv17.2.1 = trunc i32 %xor.2.1 to i8
  store i8 %conv17.2.1, i8* %arrayidx.2, align 1
  %conv18.2.1 = zext i8 %call14.2.1 to i32
  %arrayidx20.2.1 = getelementptr inbounds i8, i8* %x, i64 4
  %22 = load i8, i8* %arrayidx20.2.1, align 1
  %conv21.2.1 = zext i8 %22 to i32
  %xor22.2.1 = xor i32 %conv21.2.1, %conv18.2.1
  %conv23.2.1 = trunc i32 %xor22.2.1 to i8
  store i8 %conv23.2.1, i8* %arrayidx20.2.1, align 1
  %arrayidx.3 = getelementptr inbounds i8, i8* %x, i64 3
  %call14.3 = call zeroext i8 (...) @rand()
  %conv15.3 = zext i8 %call14.3 to i32
  %23 = load i8, i8* %arrayidx.3, align 1
  %conv16.3 = zext i8 %23 to i32
  %xor.3 = xor i32 %conv16.3, %conv15.3
  %conv17.3 = trunc i32 %xor.3 to i8
  store i8 %conv17.3, i8* %arrayidx.3, align 1
  %conv18.3 = zext i8 %call14.3 to i32
  %arrayidx20.3 = getelementptr inbounds i8, i8* %x, i64 4
  %24 = load i8, i8* %arrayidx20.3, align 1
  %conv21.3 = zext i8 %24 to i32
  %xor22.3 = xor i32 %conv21.3, %conv18.3
  %conv23.3 = trunc i32 %xor22.3 to i8
  store i8 %conv23.3, i8* %arrayidx20.3, align 1
  %conv27 = zext i8 %call to i32
  %25 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %26 = load i8, i8* %scevgep.1, align 1
  %conv.i.i42.1 = zext i8 %26 to i32
  %conv1.i.i43.1 = zext i8 %25 to i32
  %xor.i.i44.1 = xor i32 %conv1.i.i43.1, %conv.i.i42.1
  %conv2.i.i45.1 = trunc i32 %xor.i.i44.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %27 = load i8, i8* %scevgep.2, align 1
  %conv.i.i42.2 = zext i8 %27 to i32
  %conv1.i.i43.2 = zext i8 %conv2.i.i45.1 to i32
  %xor.i.i44.2 = xor i32 %conv1.i.i43.2, %conv.i.i42.2
  %conv2.i.i45.2 = trunc i32 %xor.i.i44.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %28 = load i8, i8* %scevgep.3, align 1
  %conv.i.i42.3 = zext i8 %28 to i32
  %conv1.i.i43.3 = zext i8 %conv2.i.i45.2 to i32
  %xor.i.i44.3 = xor i32 %conv1.i.i43.3, %conv.i.i42.3
  %conv2.i.i45.3 = trunc i32 %xor.i.i44.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %29 = load i8, i8* %scevgep.4, align 1
  %conv.i.i42.4 = zext i8 %29 to i32
  %conv1.i.i43.4 = zext i8 %conv2.i.i45.3 to i32
  %xor.i.i44.4 = xor i32 %conv1.i.i43.4, %conv.i.i42.4
  %conv2.i.i45.4 = trunc i32 %xor.i.i44.4 to i8
  %conv29 = zext i8 %conv2.i.i45.4 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  call void @assert(i1 zeroext %cmp30)
  ret void
}

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r.i = alloca [5 x [5 x i8]], align 16
  %u.i = alloca [5 x [5 x i8]], align 16
  %br = alloca [5 x i8], align 1
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
  %scevgep78.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep78.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep78.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep78.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep74.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i27.1 = zext i8 %6 to i32
  %conv1.i.i28.1 = zext i8 %5 to i32
  %xor.i.i29.1 = xor i32 %conv1.i.i28.1, %conv.i.i27.1
  %conv2.i.i30.1 = trunc i32 %xor.i.i29.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i27.2 = zext i8 %7 to i32
  %conv1.i.i28.2 = zext i8 %conv2.i.i30.1 to i32
  %xor.i.i29.2 = xor i32 %conv1.i.i28.2, %conv.i.i27.2
  %conv2.i.i30.2 = trunc i32 %xor.i.i29.2 to i8
  %scevgep74.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep74.3, align 1
  %conv.i.i27.3 = zext i8 %8 to i32
  %conv1.i.i28.3 = zext i8 %conv2.i.i30.2 to i32
  %xor.i.i29.3 = xor i32 %conv1.i.i28.3, %conv.i.i27.3
  %conv2.i.i30.3 = trunc i32 %xor.i.i29.3 to i8
  %scevgep74.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep74.4, align 1
  %conv.i.i27.4 = zext i8 %9 to i32
  %conv1.i.i28.4 = zext i8 %conv2.i.i30.3 to i32
  %xor.i.i29.4 = xor i32 %conv1.i.i28.4, %conv.i.i27.4
  %conv2.i.i30.4 = trunc i32 %xor.i.i29.4 to i8
  %conv7 = zext i8 %conv2.i.i30.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %10 = load i8, i8* %b, align 1
  %scevgep70 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 0
  store i8 %10, i8* %scevgep70, align 1
  %scevgep69.1 = getelementptr i8, i8* %b, i64 1
  %11 = load i8, i8* %scevgep69.1, align 1
  %scevgep70.1 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 1
  store i8 %11, i8* %scevgep70.1, align 1
  %scevgep69.2 = getelementptr i8, i8* %b, i64 2
  %12 = load i8, i8* %scevgep69.2, align 1
  %scevgep70.2 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 2
  store i8 %12, i8* %scevgep70.2, align 1
  %scevgep69.3 = getelementptr i8, i8* %b, i64 3
  %13 = load i8, i8* %scevgep69.3, align 1
  %scevgep70.3 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 3
  store i8 %13, i8* %scevgep70.3, align 1
  %scevgep69.4 = getelementptr i8, i8* %b, i64 4
  %14 = load i8, i8* %scevgep69.4, align 1
  %scevgep70.4 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 4
  store i8 %14, i8* %scevgep70.4, align 1
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %br, i64 0, i64 0
  %call.i36 = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i36 to i32
  %scevgep65 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 0
  %15 = load i8, i8* %scevgep65, align 1
  %scevgep65.1 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 1
  %16 = load i8, i8* %scevgep65.1, align 1
  %conv.i.i.i.1 = zext i8 %16 to i32
  %conv1.i.i.i.1 = zext i8 %15 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep65.2 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 2
  %17 = load i8, i8* %scevgep65.2, align 1
  %conv.i.i.i.2 = zext i8 %17 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep65.3 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 3
  %18 = load i8, i8* %scevgep65.3, align 1
  %conv.i.i.i.3 = zext i8 %18 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep65.4 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 4
  %19 = load i8, i8* %scevgep65.4, align 1
  %conv.i.i.i.4 = zext i8 %19 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv2.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i37 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i37) #2
  %call14.i = call zeroext i8 (...) @rand() #2
  %conv15.i = zext i8 %call14.i to i32
  %20 = load i8, i8* %arraydecay10, align 1
  %conv16.i = zext i8 %20 to i32
  %xor.i = xor i32 %conv16.i, %conv15.i
  %conv17.i = trunc i32 %xor.i to i8
  store i8 %conv17.i, i8* %arraydecay10, align 1
  %conv18.i = zext i8 %call14.i to i32
  %arrayidx20.i = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %21 = load i8, i8* %arrayidx20.i, align 1
  %conv21.i = zext i8 %21 to i32
  %xor22.i = xor i32 %conv21.i, %conv18.i
  %conv23.i = trunc i32 %xor22.i to i8
  store i8 %conv23.i, i8* %arrayidx20.i, align 1
  %call14.i.1169 = call zeroext i8 (...) @rand() #2
  %conv15.i.1170 = zext i8 %call14.i.1169 to i32
  %22 = load i8, i8* %arraydecay10, align 1
  %conv16.i.1171 = zext i8 %22 to i32
  %xor.i.1172 = xor i32 %conv16.i.1171, %conv15.i.1170
  %conv17.i.1173 = trunc i32 %xor.i.1172 to i8
  store i8 %conv17.i.1173, i8* %arraydecay10, align 1
  %conv18.i.1174 = zext i8 %call14.i.1169 to i32
  %arrayidx20.i.1175 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %23 = load i8, i8* %arrayidx20.i.1175, align 1
  %conv21.i.1176 = zext i8 %23 to i32
  %xor22.i.1177 = xor i32 %conv21.i.1176, %conv18.i.1174
  %conv23.i.1178 = trunc i32 %xor22.i.1177 to i8
  store i8 %conv23.i.1178, i8* %arrayidx20.i.1175, align 1
  %call14.i.2180 = call zeroext i8 (...) @rand() #2
  %conv15.i.2181 = zext i8 %call14.i.2180 to i32
  %24 = load i8, i8* %arraydecay10, align 1
  %conv16.i.2182 = zext i8 %24 to i32
  %xor.i.2183 = xor i32 %conv16.i.2182, %conv15.i.2181
  %conv17.i.2184 = trunc i32 %xor.i.2183 to i8
  store i8 %conv17.i.2184, i8* %arraydecay10, align 1
  %conv18.i.2185 = zext i8 %call14.i.2180 to i32
  %arrayidx20.i.2186 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %25 = load i8, i8* %arrayidx20.i.2186, align 1
  %conv21.i.2187 = zext i8 %25 to i32
  %xor22.i.2188 = xor i32 %conv21.i.2187, %conv18.i.2185
  %conv23.i.2189 = trunc i32 %xor22.i.2188 to i8
  store i8 %conv23.i.2189, i8* %arrayidx20.i.2186, align 1
  %call14.i.3191 = call zeroext i8 (...) @rand() #2
  %conv15.i.3192 = zext i8 %call14.i.3191 to i32
  %26 = load i8, i8* %arraydecay10, align 1
  %conv16.i.3193 = zext i8 %26 to i32
  %xor.i.3194 = xor i32 %conv16.i.3193, %conv15.i.3192
  %conv17.i.3195 = trunc i32 %xor.i.3194 to i8
  store i8 %conv17.i.3195, i8* %arraydecay10, align 1
  %conv18.i.3196 = zext i8 %call14.i.3191 to i32
  %arrayidx20.i.3197 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %27 = load i8, i8* %arrayidx20.i.3197, align 1
  %conv21.i.3198 = zext i8 %27 to i32
  %xor22.i.3199 = xor i32 %conv21.i.3198, %conv18.i.3196
  %conv23.i.3200 = trunc i32 %xor22.i.3199 to i8
  store i8 %conv23.i.3200, i8* %arrayidx20.i.3197, align 1
  %arrayidx.i41.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %call14.i.1 = call zeroext i8 (...) @rand() #2
  %conv15.i.1 = zext i8 %call14.i.1 to i32
  %28 = load i8, i8* %arrayidx.i41.1, align 1
  %conv16.i.1 = zext i8 %28 to i32
  %xor.i.1 = xor i32 %conv16.i.1, %conv15.i.1
  %conv17.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv17.i.1, i8* %arrayidx.i41.1, align 1
  %conv18.i.1 = zext i8 %call14.i.1 to i32
  %arrayidx20.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %29 = load i8, i8* %arrayidx20.i.1, align 1
  %conv21.i.1 = zext i8 %29 to i32
  %xor22.i.1 = xor i32 %conv21.i.1, %conv18.i.1
  %conv23.i.1 = trunc i32 %xor22.i.1 to i8
  store i8 %conv23.i.1, i8* %arrayidx20.i.1, align 1
  %call14.i.1.1 = call zeroext i8 (...) @rand() #2
  %conv15.i.1.1 = zext i8 %call14.i.1.1 to i32
  %30 = load i8, i8* %arrayidx.i41.1, align 1
  %conv16.i.1.1 = zext i8 %30 to i32
  %xor.i.1.1 = xor i32 %conv16.i.1.1, %conv15.i.1.1
  %conv17.i.1.1 = trunc i32 %xor.i.1.1 to i8
  store i8 %conv17.i.1.1, i8* %arrayidx.i41.1, align 1
  %conv18.i.1.1 = zext i8 %call14.i.1.1 to i32
  %arrayidx20.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %31 = load i8, i8* %arrayidx20.i.1.1, align 1
  %conv21.i.1.1 = zext i8 %31 to i32
  %xor22.i.1.1 = xor i32 %conv21.i.1.1, %conv18.i.1.1
  %conv23.i.1.1 = trunc i32 %xor22.i.1.1 to i8
  store i8 %conv23.i.1.1, i8* %arrayidx20.i.1.1, align 1
  %call14.i.1.2 = call zeroext i8 (...) @rand() #2
  %conv15.i.1.2 = zext i8 %call14.i.1.2 to i32
  %32 = load i8, i8* %arrayidx.i41.1, align 1
  %conv16.i.1.2 = zext i8 %32 to i32
  %xor.i.1.2 = xor i32 %conv16.i.1.2, %conv15.i.1.2
  %conv17.i.1.2 = trunc i32 %xor.i.1.2 to i8
  store i8 %conv17.i.1.2, i8* %arrayidx.i41.1, align 1
  %conv18.i.1.2 = zext i8 %call14.i.1.2 to i32
  %arrayidx20.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %33 = load i8, i8* %arrayidx20.i.1.2, align 1
  %conv21.i.1.2 = zext i8 %33 to i32
  %xor22.i.1.2 = xor i32 %conv21.i.1.2, %conv18.i.1.2
  %conv23.i.1.2 = trunc i32 %xor22.i.1.2 to i8
  store i8 %conv23.i.1.2, i8* %arrayidx20.i.1.2, align 1
  %arrayidx.i41.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %call14.i.2 = call zeroext i8 (...) @rand() #2
  %conv15.i.2 = zext i8 %call14.i.2 to i32
  %34 = load i8, i8* %arrayidx.i41.2, align 1
  %conv16.i.2 = zext i8 %34 to i32
  %xor.i.2 = xor i32 %conv16.i.2, %conv15.i.2
  %conv17.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv17.i.2, i8* %arrayidx.i41.2, align 1
  %conv18.i.2 = zext i8 %call14.i.2 to i32
  %arrayidx20.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %35 = load i8, i8* %arrayidx20.i.2, align 1
  %conv21.i.2 = zext i8 %35 to i32
  %xor22.i.2 = xor i32 %conv21.i.2, %conv18.i.2
  %conv23.i.2 = trunc i32 %xor22.i.2 to i8
  store i8 %conv23.i.2, i8* %arrayidx20.i.2, align 1
  %call14.i.2.1 = call zeroext i8 (...) @rand() #2
  %conv15.i.2.1 = zext i8 %call14.i.2.1 to i32
  %36 = load i8, i8* %arrayidx.i41.2, align 1
  %conv16.i.2.1 = zext i8 %36 to i32
  %xor.i.2.1 = xor i32 %conv16.i.2.1, %conv15.i.2.1
  %conv17.i.2.1 = trunc i32 %xor.i.2.1 to i8
  store i8 %conv17.i.2.1, i8* %arrayidx.i41.2, align 1
  %conv18.i.2.1 = zext i8 %call14.i.2.1 to i32
  %arrayidx20.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %37 = load i8, i8* %arrayidx20.i.2.1, align 1
  %conv21.i.2.1 = zext i8 %37 to i32
  %xor22.i.2.1 = xor i32 %conv21.i.2.1, %conv18.i.2.1
  %conv23.i.2.1 = trunc i32 %xor22.i.2.1 to i8
  store i8 %conv23.i.2.1, i8* %arrayidx20.i.2.1, align 1
  %arrayidx.i41.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %call14.i.3 = call zeroext i8 (...) @rand() #2
  %conv15.i.3 = zext i8 %call14.i.3 to i32
  %38 = load i8, i8* %arrayidx.i41.3, align 1
  %conv16.i.3 = zext i8 %38 to i32
  %xor.i.3 = xor i32 %conv16.i.3, %conv15.i.3
  %conv17.i.3 = trunc i32 %xor.i.3 to i8
  store i8 %conv17.i.3, i8* %arrayidx.i41.3, align 1
  %conv18.i.3 = zext i8 %call14.i.3 to i32
  %arrayidx20.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %39 = load i8, i8* %arrayidx20.i.3, align 1
  %conv21.i.3 = zext i8 %39 to i32
  %xor22.i.3 = xor i32 %conv21.i.3, %conv18.i.3
  %conv23.i.3 = trunc i32 %xor22.i.3 to i8
  store i8 %conv23.i.3, i8* %arrayidx20.i.3, align 1
  %conv27.i = zext i8 %call.i36 to i32
  %scevgep61 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 0
  %40 = load i8, i8* %scevgep61, align 1
  %scevgep61.1 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 1
  %41 = load i8, i8* %scevgep61.1, align 1
  %conv.i.i42.i.1 = zext i8 %41 to i32
  %conv1.i.i43.i.1 = zext i8 %40 to i32
  %xor.i.i44.i.1 = xor i32 %conv1.i.i43.i.1, %conv.i.i42.i.1
  %conv2.i.i45.i.1 = trunc i32 %xor.i.i44.i.1 to i8
  %scevgep61.2 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 2
  %42 = load i8, i8* %scevgep61.2, align 1
  %conv.i.i42.i.2 = zext i8 %42 to i32
  %conv1.i.i43.i.2 = zext i8 %conv2.i.i45.i.1 to i32
  %xor.i.i44.i.2 = xor i32 %conv1.i.i43.i.2, %conv.i.i42.i.2
  %conv2.i.i45.i.2 = trunc i32 %xor.i.i44.i.2 to i8
  %scevgep61.3 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 3
  %43 = load i8, i8* %scevgep61.3, align 1
  %conv.i.i42.i.3 = zext i8 %43 to i32
  %conv1.i.i43.i.3 = zext i8 %conv2.i.i45.i.2 to i32
  %xor.i.i44.i.3 = xor i32 %conv1.i.i43.i.3, %conv.i.i42.i.3
  %conv2.i.i45.i.3 = trunc i32 %xor.i.i44.i.3 to i8
  %scevgep61.4 = getelementptr [5 x i8], [5 x i8]* %br, i64 0, i64 4
  %44 = load i8, i8* %scevgep61.4, align 1
  %conv.i.i42.i.4 = zext i8 %44 to i32
  %conv1.i.i43.i.4 = zext i8 %conv2.i.i45.i.3 to i32
  %xor.i.i44.i.4 = xor i32 %conv1.i.i43.i.4, %conv.i.i42.i.4
  %conv2.i.i45.i.4 = trunc i32 %xor.i.i44.i.4 to i8
  %conv29.i = zext i8 %conv2.i.i45.i.4 to i32
  %cmp30.i = icmp eq i32 %conv27.i, %conv29.i
  call void @assert(i1 zeroext %cmp30.i) #2
  %scevgep32 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep3233 = bitcast i8* %scevgep32 to [5 x [5 x i8]]*
  %scevgep41 = getelementptr i8, i8* %b, i64 1
  %scevgep49 = getelementptr i8, i8* %a, i64 1
  %call.i50 = call zeroext i8 (...) @rand() #2
  %scevgep38 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  store i8 %call.i50, i8* %scevgep38, align 1
  %45 = load i8, i8* %a, align 1
  %46 = load i8, i8* %scevgep41, align 1
  %call10.i = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #2
  %conv.i53 = zext i8 %call10.i to i32
  %scevgep39 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep39, align 1
  %conv15.i54 = zext i8 %47 to i32
  %xor.i55 = xor i32 %conv.i53, %conv15.i54
  %conv16.i56 = trunc i32 %xor.i55 to i8
  %scevgep47 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 0
  %scevgep48 = getelementptr i8, i8* %scevgep47, i64 1
  store i8 %conv16.i56, i8* %scevgep48, align 1
  %48 = load i8, i8* %scevgep49, align 1
  %49 = load i8, i8* %b, align 1
  %call25.i = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  %conv26.i = zext i8 %call25.i to i32
  %scevgep40 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep40, align 1
  %conv31.i = zext i8 %50 to i32
  %xor32.i = xor i32 %conv26.i, %conv31.i
  %conv33.i = trunc i32 %xor32.i to i8
  %scevgep55 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 5
  store i8 %conv33.i, i8* %scevgep55, align 1
  %call.i50.1116 = call zeroext i8 (...) @rand() #2
  %scevgep38.1117 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  store i8 %call.i50.1116, i8* %scevgep38.1117, align 1
  %51 = load i8, i8* %a, align 1
  %scevgep44.1 = getelementptr i8, i8* %scevgep41, i64 1
  %52 = load i8, i8* %scevgep44.1, align 1
  %call10.i.1118 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52) #2
  %conv.i53.1119 = zext i8 %call10.i.1118 to i32
  %scevgep39.1120 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep39.1120, align 1
  %conv15.i54.1121 = zext i8 %53 to i32
  %xor.i55.1122 = xor i32 %conv.i53.1119, %conv15.i54.1121
  %conv16.i56.1123 = trunc i32 %xor.i55.1122 to i8
  %scevgep47.1124 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 1
  %scevgep48.1125 = getelementptr i8, i8* %scevgep47.1124, i64 1
  store i8 %conv16.i56.1123, i8* %scevgep48.1125, align 1
  %scevgep52.1 = getelementptr i8, i8* %scevgep49, i64 1
  %54 = load i8, i8* %scevgep52.1, align 1
  %55 = load i8, i8* %b, align 1
  %call25.i.1126 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %conv26.i.1127 = zext i8 %call25.i.1126 to i32
  %scevgep40.1128 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 1
  %56 = load i8, i8* %scevgep40.1128, align 1
  %conv31.i.1129 = zext i8 %56 to i32
  %xor32.i.1130 = xor i32 %conv26.i.1127, %conv31.i.1129
  %conv33.i.1131 = trunc i32 %xor32.i.1130 to i8
  %scevgep55.1132 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 10
  store i8 %conv33.i.1131, i8* %scevgep55.1132, align 1
  %call.i50.2134 = call zeroext i8 (...) @rand() #2
  %scevgep38.2135 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 2
  store i8 %call.i50.2134, i8* %scevgep38.2135, align 1
  %57 = load i8, i8* %a, align 1
  %scevgep44.2 = getelementptr i8, i8* %scevgep41, i64 2
  %58 = load i8, i8* %scevgep44.2, align 1
  %call10.i.2136 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #2
  %conv.i53.2137 = zext i8 %call10.i.2136 to i32
  %scevgep39.2138 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep39.2138, align 1
  %conv15.i54.2139 = zext i8 %59 to i32
  %xor.i55.2140 = xor i32 %conv.i53.2137, %conv15.i54.2139
  %conv16.i56.2141 = trunc i32 %xor.i55.2140 to i8
  %scevgep47.2142 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 2
  %scevgep48.2143 = getelementptr i8, i8* %scevgep47.2142, i64 1
  store i8 %conv16.i56.2141, i8* %scevgep48.2143, align 1
  %scevgep52.2 = getelementptr i8, i8* %scevgep49, i64 2
  %60 = load i8, i8* %scevgep52.2, align 1
  %61 = load i8, i8* %b, align 1
  %call25.i.2144 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #2
  %conv26.i.2145 = zext i8 %call25.i.2144 to i32
  %scevgep40.2146 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 2
  %62 = load i8, i8* %scevgep40.2146, align 1
  %conv31.i.2147 = zext i8 %62 to i32
  %xor32.i.2148 = xor i32 %conv26.i.2145, %conv31.i.2147
  %conv33.i.2149 = trunc i32 %xor32.i.2148 to i8
  %scevgep55.2150 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 15
  store i8 %conv33.i.2149, i8* %scevgep55.2150, align 1
  %call.i50.3152 = call zeroext i8 (...) @rand() #2
  %scevgep38.3153 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 3
  store i8 %call.i50.3152, i8* %scevgep38.3153, align 1
  %63 = load i8, i8* %a, align 1
  %scevgep44.3 = getelementptr i8, i8* %scevgep41, i64 3
  %64 = load i8, i8* %scevgep44.3, align 1
  %call10.i.3154 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #2
  %conv.i53.3155 = zext i8 %call10.i.3154 to i32
  %scevgep39.3156 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 3
  %65 = load i8, i8* %scevgep39.3156, align 1
  %conv15.i54.3157 = zext i8 %65 to i32
  %xor.i55.3158 = xor i32 %conv.i53.3155, %conv15.i54.3157
  %conv16.i56.3159 = trunc i32 %xor.i55.3158 to i8
  %scevgep47.3160 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 3
  %scevgep48.3161 = getelementptr i8, i8* %scevgep47.3160, i64 1
  store i8 %conv16.i56.3159, i8* %scevgep48.3161, align 1
  %scevgep52.3 = getelementptr i8, i8* %scevgep49, i64 3
  %66 = load i8, i8* %scevgep52.3, align 1
  %67 = load i8, i8* %b, align 1
  %call25.i.3162 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #2
  %conv26.i.3163 = zext i8 %call25.i.3162 to i32
  %scevgep40.3164 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 0, i64 3
  %68 = load i8, i8* %scevgep40.3164, align 1
  %conv31.i.3165 = zext i8 %68 to i32
  %xor32.i.3166 = xor i32 %conv26.i.3163, %conv31.i.3165
  %conv33.i.3167 = trunc i32 %xor32.i.3166 to i8
  %scevgep55.3168 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 20
  store i8 %conv33.i.3167, i8* %scevgep55.3168, align 1
  %scevgep35 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3233, i64 0, i64 1, i64 1
  %69 = bitcast i8* %scevgep35 to [5 x [5 x i8]]*
  %scevgep43 = getelementptr i8, i8* %scevgep41, i64 1
  %scevgep46 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 1, i64 1
  %70 = bitcast i8* %scevgep46 to [5 x [5 x i8]]*
  %scevgep51 = getelementptr i8, i8* %scevgep49, i64 1
  %arrayidx7.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx24.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call.i50.1 = call zeroext i8 (...) @rand() #2
  %scevgep38.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %call.i50.1, i8* %scevgep38.1, align 1
  %71 = load i8, i8* %arrayidx7.i.1, align 1
  %72 = load i8, i8* %scevgep43, align 1
  %call10.i.1 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #2
  %conv.i53.1 = zext i8 %call10.i.1 to i32
  %scevgep39.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep39.1, align 1
  %conv15.i54.1 = zext i8 %73 to i32
  %xor.i55.1 = xor i32 %conv.i53.1, %conv15.i54.1
  %conv16.i56.1 = trunc i32 %xor.i55.1 to i8
  %scevgep47.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 0, i64 0
  %scevgep48.1 = getelementptr i8, i8* %scevgep47.1, i64 1
  store i8 %conv16.i56.1, i8* %scevgep48.1, align 1
  %74 = load i8, i8* %scevgep51, align 1
  %75 = load i8, i8* %arrayidx24.i.1, align 1
  %call25.i.1 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #2
  %conv26.i.1 = zext i8 %call25.i.1 to i32
  %scevgep40.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep40.1, align 1
  %conv31.i.1 = zext i8 %76 to i32
  %xor32.i.1 = xor i32 %conv26.i.1, %conv31.i.1
  %conv33.i.1 = trunc i32 %xor32.i.1 to i8
  %scevgep55.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 0, i64 5
  store i8 %conv33.i.1, i8* %scevgep55.1, align 1
  %call.i50.1.1 = call zeroext i8 (...) @rand() #2
  %scevgep38.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 1
  store i8 %call.i50.1.1, i8* %scevgep38.1.1, align 1
  %77 = load i8, i8* %arrayidx7.i.1, align 1
  %scevgep44.1.1 = getelementptr i8, i8* %scevgep43, i64 1
  %78 = load i8, i8* %scevgep44.1.1, align 1
  %call10.i.1.1 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #2
  %conv.i53.1.1 = zext i8 %call10.i.1.1 to i32
  %scevgep39.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 1
  %79 = load i8, i8* %scevgep39.1.1, align 1
  %conv15.i54.1.1 = zext i8 %79 to i32
  %xor.i55.1.1 = xor i32 %conv.i53.1.1, %conv15.i54.1.1
  %conv16.i56.1.1 = trunc i32 %xor.i55.1.1 to i8
  %scevgep47.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 0, i64 1
  %scevgep48.1.1 = getelementptr i8, i8* %scevgep47.1.1, i64 1
  store i8 %conv16.i56.1.1, i8* %scevgep48.1.1, align 1
  %scevgep52.1.1 = getelementptr i8, i8* %scevgep51, i64 1
  %80 = load i8, i8* %scevgep52.1.1, align 1
  %81 = load i8, i8* %arrayidx24.i.1, align 1
  %call25.i.1.1 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #2
  %conv26.i.1.1 = zext i8 %call25.i.1.1 to i32
  %scevgep40.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 1
  %82 = load i8, i8* %scevgep40.1.1, align 1
  %conv31.i.1.1 = zext i8 %82 to i32
  %xor32.i.1.1 = xor i32 %conv26.i.1.1, %conv31.i.1.1
  %conv33.i.1.1 = trunc i32 %xor32.i.1.1 to i8
  %scevgep55.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 0, i64 10
  store i8 %conv33.i.1.1, i8* %scevgep55.1.1, align 1
  %call.i50.1.2 = call zeroext i8 (...) @rand() #2
  %scevgep38.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 2
  store i8 %call.i50.1.2, i8* %scevgep38.1.2, align 1
  %83 = load i8, i8* %arrayidx7.i.1, align 1
  %scevgep44.1.2 = getelementptr i8, i8* %scevgep43, i64 2
  %84 = load i8, i8* %scevgep44.1.2, align 1
  %call10.i.1.2 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #2
  %conv.i53.1.2 = zext i8 %call10.i.1.2 to i32
  %scevgep39.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep39.1.2, align 1
  %conv15.i54.1.2 = zext i8 %85 to i32
  %xor.i55.1.2 = xor i32 %conv.i53.1.2, %conv15.i54.1.2
  %conv16.i56.1.2 = trunc i32 %xor.i55.1.2 to i8
  %scevgep47.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 0, i64 2
  %scevgep48.1.2 = getelementptr i8, i8* %scevgep47.1.2, i64 1
  store i8 %conv16.i56.1.2, i8* %scevgep48.1.2, align 1
  %scevgep52.1.2 = getelementptr i8, i8* %scevgep51, i64 2
  %86 = load i8, i8* %scevgep52.1.2, align 1
  %87 = load i8, i8* %arrayidx24.i.1, align 1
  %call25.i.1.2 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #2
  %conv26.i.1.2 = zext i8 %call25.i.1.2 to i32
  %scevgep40.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 2
  %88 = load i8, i8* %scevgep40.1.2, align 1
  %conv31.i.1.2 = zext i8 %88 to i32
  %xor32.i.1.2 = xor i32 %conv26.i.1.2, %conv31.i.1.2
  %conv33.i.1.2 = trunc i32 %xor32.i.1.2 to i8
  %scevgep55.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 0, i64 15
  store i8 %conv33.i.1.2, i8* %scevgep55.1.2, align 1
  %scevgep35.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 1, i64 1
  %89 = bitcast i8* %scevgep35.1 to [5 x [5 x i8]]*
  %scevgep43.1 = getelementptr i8, i8* %scevgep43, i64 1
  %scevgep46.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 1, i64 1
  %90 = bitcast i8* %scevgep46.1 to [5 x [5 x i8]]*
  %scevgep51.1 = getelementptr i8, i8* %scevgep51, i64 1
  %arrayidx7.i.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx24.i.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call.i50.2 = call zeroext i8 (...) @rand() #2
  %scevgep38.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 0, i64 0
  store i8 %call.i50.2, i8* %scevgep38.2, align 1
  %91 = load i8, i8* %arrayidx7.i.2, align 1
  %92 = load i8, i8* %scevgep43.1, align 1
  %call10.i.2 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #2
  %conv.i53.2 = zext i8 %call10.i.2 to i32
  %scevgep39.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep39.2, align 1
  %conv15.i54.2 = zext i8 %93 to i32
  %xor.i55.2 = xor i32 %conv.i53.2, %conv15.i54.2
  %conv16.i56.2 = trunc i32 %xor.i55.2 to i8
  %scevgep47.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %90, i64 0, i64 0, i64 0
  %scevgep48.2 = getelementptr i8, i8* %scevgep47.2, i64 1
  store i8 %conv16.i56.2, i8* %scevgep48.2, align 1
  %94 = load i8, i8* %scevgep51.1, align 1
  %95 = load i8, i8* %arrayidx24.i.2, align 1
  %call25.i.2 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #2
  %conv26.i.2 = zext i8 %call25.i.2 to i32
  %scevgep40.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 0, i64 0
  %96 = load i8, i8* %scevgep40.2, align 1
  %conv31.i.2 = zext i8 %96 to i32
  %xor32.i.2 = xor i32 %conv26.i.2, %conv31.i.2
  %conv33.i.2 = trunc i32 %xor32.i.2 to i8
  %scevgep55.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %90, i64 0, i64 0, i64 5
  store i8 %conv33.i.2, i8* %scevgep55.2, align 1
  %call.i50.2.1 = call zeroext i8 (...) @rand() #2
  %scevgep38.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 0, i64 1
  store i8 %call.i50.2.1, i8* %scevgep38.2.1, align 1
  %97 = load i8, i8* %arrayidx7.i.2, align 1
  %scevgep44.2.1 = getelementptr i8, i8* %scevgep43.1, i64 1
  %98 = load i8, i8* %scevgep44.2.1, align 1
  %call10.i.2.1 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98) #2
  %conv.i53.2.1 = zext i8 %call10.i.2.1 to i32
  %scevgep39.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 0, i64 1
  %99 = load i8, i8* %scevgep39.2.1, align 1
  %conv15.i54.2.1 = zext i8 %99 to i32
  %xor.i55.2.1 = xor i32 %conv.i53.2.1, %conv15.i54.2.1
  %conv16.i56.2.1 = trunc i32 %xor.i55.2.1 to i8
  %scevgep47.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %90, i64 0, i64 0, i64 1
  %scevgep48.2.1 = getelementptr i8, i8* %scevgep47.2.1, i64 1
  store i8 %conv16.i56.2.1, i8* %scevgep48.2.1, align 1
  %scevgep52.2.1 = getelementptr i8, i8* %scevgep51.1, i64 1
  %100 = load i8, i8* %scevgep52.2.1, align 1
  %101 = load i8, i8* %arrayidx24.i.2, align 1
  %call25.i.2.1 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101) #2
  %conv26.i.2.1 = zext i8 %call25.i.2.1 to i32
  %scevgep40.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 0, i64 1
  %102 = load i8, i8* %scevgep40.2.1, align 1
  %conv31.i.2.1 = zext i8 %102 to i32
  %xor32.i.2.1 = xor i32 %conv26.i.2.1, %conv31.i.2.1
  %conv33.i.2.1 = trunc i32 %xor32.i.2.1 to i8
  %scevgep55.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %90, i64 0, i64 0, i64 10
  store i8 %conv33.i.2.1, i8* %scevgep55.2.1, align 1
  %scevgep35.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %89, i64 0, i64 1, i64 1
  %103 = bitcast i8* %scevgep35.2 to [5 x [5 x i8]]*
  %scevgep43.2 = getelementptr i8, i8* %scevgep43.1, i64 1
  %scevgep46.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %90, i64 0, i64 1, i64 1
  %104 = bitcast i8* %scevgep46.2 to [5 x [5 x i8]]*
  %scevgep51.2 = getelementptr i8, i8* %scevgep51.1, i64 1
  %arrayidx7.i.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx24.i.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call.i50.3 = call zeroext i8 (...) @rand() #2
  %scevgep38.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  store i8 %call.i50.3, i8* %scevgep38.3, align 1
  %105 = load i8, i8* %arrayidx7.i.3, align 1
  %106 = load i8, i8* %scevgep43.2, align 1
  %call10.i.3 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106) #2
  %conv.i53.3 = zext i8 %call10.i.3 to i32
  %scevgep39.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep39.3, align 1
  %conv15.i54.3 = zext i8 %107 to i32
  %xor.i55.3 = xor i32 %conv.i53.3, %conv15.i54.3
  %conv16.i56.3 = trunc i32 %xor.i55.3 to i8
  %scevgep47.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 0
  %scevgep48.3 = getelementptr i8, i8* %scevgep47.3, i64 1
  store i8 %conv16.i56.3, i8* %scevgep48.3, align 1
  %108 = load i8, i8* %scevgep51.2, align 1
  %109 = load i8, i8* %arrayidx24.i.3, align 1
  %call25.i.3 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #2
  %conv26.i.3 = zext i8 %call25.i.3 to i32
  %scevgep40.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  %110 = load i8, i8* %scevgep40.3, align 1
  %conv31.i.3 = zext i8 %110 to i32
  %xor32.i.3 = xor i32 %conv26.i.3, %conv31.i.3
  %conv33.i.3 = trunc i32 %xor32.i.3 to i8
  %scevgep55.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 5
  store i8 %conv33.i.3, i8* %scevgep55.3, align 1
  %111 = load i8, i8* %a, align 1
  %112 = load i8, i8* %b, align 1
  %call50.i = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112) #2
  store i8 %call50.i, i8* %c, align 1
  %scevgep29.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep29.1, align 1
  %conv64.i.1 = zext i8 %113 to i32
  %114 = load i8, i8* %c, align 1
  %conv67.i.1 = zext i8 %114 to i32
  %xor68.i.1 = xor i32 %conv67.i.1, %conv64.i.1
  %conv69.i.1 = trunc i32 %xor68.i.1 to i8
  store i8 %conv69.i.1, i8* %c, align 1
  %scevgep29.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 2
  %115 = load i8, i8* %scevgep29.2, align 1
  %conv64.i.2 = zext i8 %115 to i32
  %116 = load i8, i8* %c, align 1
  %conv67.i.2 = zext i8 %116 to i32
  %xor68.i.2 = xor i32 %conv67.i.2, %conv64.i.2
  %conv69.i.2 = trunc i32 %xor68.i.2 to i8
  store i8 %conv69.i.2, i8* %c, align 1
  %scevgep29.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 3
  %117 = load i8, i8* %scevgep29.3, align 1
  %conv64.i.3 = zext i8 %117 to i32
  %118 = load i8, i8* %c, align 1
  %conv67.i.3 = zext i8 %118 to i32
  %xor68.i.3 = xor i32 %conv67.i.3, %conv64.i.3
  %conv69.i.3 = trunc i32 %xor68.i.3 to i8
  store i8 %conv69.i.3, i8* %c, align 1
  %scevgep29.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 0, i64 4
  %119 = load i8, i8* %scevgep29.4, align 1
  %conv64.i.4 = zext i8 %119 to i32
  %120 = load i8, i8* %c, align 1
  %conv67.i.4 = zext i8 %120 to i32
  %xor68.i.4 = xor i32 %conv67.i.4, %conv64.i.4
  %conv69.i.4 = trunc i32 %xor68.i.4 to i8
  store i8 %conv69.i.4, i8* %c, align 1
  %scevgep28 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %u.i, i64 0, i64 1, i64 0
  %121 = bitcast i8* %scevgep28 to [5 x [5 x i8]]*
  %arrayidx47.i.1 = getelementptr inbounds i8, i8* %a, i64 1
  %122 = load i8, i8* %arrayidx47.i.1, align 1
  %arrayidx49.i.1 = getelementptr inbounds i8, i8* %b, i64 1
  %123 = load i8, i8* %arrayidx49.i.1, align 1
  %call50.i.1 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123) #2
  %arrayidx52.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call50.i.1, i8* %arrayidx52.i.1, align 1
  %arrayidx66.i.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep29.182 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 0
  %124 = load i8, i8* %scevgep29.182, align 1
  %conv64.i.183 = zext i8 %124 to i32
  %125 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.184 = zext i8 %125 to i32
  %xor68.i.185 = xor i32 %conv67.i.184, %conv64.i.183
  %conv69.i.186 = trunc i32 %xor68.i.185 to i8
  store i8 %conv69.i.186, i8* %arrayidx66.i.1, align 1
  %scevgep29.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 2
  %126 = load i8, i8* %scevgep29.2.1, align 1
  %conv64.i.2.1 = zext i8 %126 to i32
  %127 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.2.1 = zext i8 %127 to i32
  %xor68.i.2.1 = xor i32 %conv67.i.2.1, %conv64.i.2.1
  %conv69.i.2.1 = trunc i32 %xor68.i.2.1 to i8
  store i8 %conv69.i.2.1, i8* %arrayidx66.i.1, align 1
  %scevgep29.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 3
  %128 = load i8, i8* %scevgep29.3.1, align 1
  %conv64.i.3.1 = zext i8 %128 to i32
  %129 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.3.1 = zext i8 %129 to i32
  %xor68.i.3.1 = xor i32 %conv67.i.3.1, %conv64.i.3.1
  %conv69.i.3.1 = trunc i32 %xor68.i.3.1 to i8
  store i8 %conv69.i.3.1, i8* %arrayidx66.i.1, align 1
  %scevgep29.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 4
  %130 = load i8, i8* %scevgep29.4.1, align 1
  %conv64.i.4.1 = zext i8 %130 to i32
  %131 = load i8, i8* %arrayidx66.i.1, align 1
  %conv67.i.4.1 = zext i8 %131 to i32
  %xor68.i.4.1 = xor i32 %conv67.i.4.1, %conv64.i.4.1
  %conv69.i.4.1 = trunc i32 %xor68.i.4.1 to i8
  store i8 %conv69.i.4.1, i8* %arrayidx66.i.1, align 1
  %scevgep28.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 1, i64 0
  %132 = bitcast i8* %scevgep28.1 to [5 x [5 x i8]]*
  %arrayidx47.i.2 = getelementptr inbounds i8, i8* %a, i64 2
  %133 = load i8, i8* %arrayidx47.i.2, align 1
  %arrayidx49.i.2 = getelementptr inbounds i8, i8* %b, i64 2
  %134 = load i8, i8* %arrayidx49.i.2, align 1
  %call50.i.2 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134) #2
  %arrayidx52.i.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call50.i.2, i8* %arrayidx52.i.2, align 1
  %arrayidx66.i.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep29.291 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 0
  %135 = load i8, i8* %scevgep29.291, align 1
  %conv64.i.292 = zext i8 %135 to i32
  %136 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.293 = zext i8 %136 to i32
  %xor68.i.294 = xor i32 %conv67.i.293, %conv64.i.292
  %conv69.i.295 = trunc i32 %xor68.i.294 to i8
  store i8 %conv69.i.295, i8* %arrayidx66.i.2, align 1
  %scevgep29.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep29.1.2, align 1
  %conv64.i.1.2 = zext i8 %137 to i32
  %138 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.1.2 = zext i8 %138 to i32
  %xor68.i.1.2 = xor i32 %conv67.i.1.2, %conv64.i.1.2
  %conv69.i.1.2 = trunc i32 %xor68.i.1.2 to i8
  store i8 %conv69.i.1.2, i8* %arrayidx66.i.2, align 1
  %scevgep29.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 3
  %139 = load i8, i8* %scevgep29.3.2, align 1
  %conv64.i.3.2 = zext i8 %139 to i32
  %140 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.3.2 = zext i8 %140 to i32
  %xor68.i.3.2 = xor i32 %conv67.i.3.2, %conv64.i.3.2
  %conv69.i.3.2 = trunc i32 %xor68.i.3.2 to i8
  store i8 %conv69.i.3.2, i8* %arrayidx66.i.2, align 1
  %scevgep29.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 4
  %141 = load i8, i8* %scevgep29.4.2, align 1
  %conv64.i.4.2 = zext i8 %141 to i32
  %142 = load i8, i8* %arrayidx66.i.2, align 1
  %conv67.i.4.2 = zext i8 %142 to i32
  %xor68.i.4.2 = xor i32 %conv67.i.4.2, %conv64.i.4.2
  %conv69.i.4.2 = trunc i32 %xor68.i.4.2 to i8
  store i8 %conv69.i.4.2, i8* %arrayidx66.i.2, align 1
  %scevgep28.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 1, i64 0
  %143 = bitcast i8* %scevgep28.2 to [5 x [5 x i8]]*
  %arrayidx47.i.3 = getelementptr inbounds i8, i8* %a, i64 3
  %144 = load i8, i8* %arrayidx47.i.3, align 1
  %arrayidx49.i.3 = getelementptr inbounds i8, i8* %b, i64 3
  %145 = load i8, i8* %arrayidx49.i.3, align 1
  %call50.i.3 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #2
  %arrayidx52.i.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call50.i.3, i8* %arrayidx52.i.3, align 1
  %arrayidx66.i.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep29.3100 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %143, i64 0, i64 0, i64 0
  %146 = load i8, i8* %scevgep29.3100, align 1
  %conv64.i.3101 = zext i8 %146 to i32
  %147 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.3102 = zext i8 %147 to i32
  %xor68.i.3103 = xor i32 %conv67.i.3102, %conv64.i.3101
  %conv69.i.3104 = trunc i32 %xor68.i.3103 to i8
  store i8 %conv69.i.3104, i8* %arrayidx66.i.3, align 1
  %scevgep29.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %143, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep29.1.3, align 1
  %conv64.i.1.3 = zext i8 %148 to i32
  %149 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.1.3 = zext i8 %149 to i32
  %xor68.i.1.3 = xor i32 %conv67.i.1.3, %conv64.i.1.3
  %conv69.i.1.3 = trunc i32 %xor68.i.1.3 to i8
  store i8 %conv69.i.1.3, i8* %arrayidx66.i.3, align 1
  %scevgep29.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %143, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep29.2.3, align 1
  %conv64.i.2.3 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.2.3 = zext i8 %151 to i32
  %xor68.i.2.3 = xor i32 %conv67.i.2.3, %conv64.i.2.3
  %conv69.i.2.3 = trunc i32 %xor68.i.2.3 to i8
  store i8 %conv69.i.2.3, i8* %arrayidx66.i.3, align 1
  %scevgep29.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %143, i64 0, i64 0, i64 4
  %152 = load i8, i8* %scevgep29.4.3, align 1
  %conv64.i.4.3 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx66.i.3, align 1
  %conv67.i.4.3 = zext i8 %153 to i32
  %xor68.i.4.3 = xor i32 %conv67.i.4.3, %conv64.i.4.3
  %conv69.i.4.3 = trunc i32 %xor68.i.4.3 to i8
  store i8 %conv69.i.4.3, i8* %arrayidx66.i.3, align 1
  %scevgep28.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %143, i64 0, i64 1, i64 0
  %154 = bitcast i8* %scevgep28.3 to [5 x [5 x i8]]*
  %arrayidx47.i.4 = getelementptr inbounds i8, i8* %a, i64 4
  %155 = load i8, i8* %arrayidx47.i.4, align 1
  %arrayidx49.i.4 = getelementptr inbounds i8, i8* %b, i64 4
  %156 = load i8, i8* %arrayidx49.i.4, align 1
  %call50.i.4 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #2
  %arrayidx52.i.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call50.i.4, i8* %arrayidx52.i.4, align 1
  %arrayidx66.i.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep29.4109 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %154, i64 0, i64 0, i64 0
  %157 = load i8, i8* %scevgep29.4109, align 1
  %conv64.i.4110 = zext i8 %157 to i32
  %158 = load i8, i8* %arrayidx66.i.4, align 1
  %conv67.i.4111 = zext i8 %158 to i32
  %xor68.i.4112 = xor i32 %conv67.i.4111, %conv64.i.4110
  %conv69.i.4113 = trunc i32 %xor68.i.4112 to i8
  store i8 %conv69.i.4113, i8* %arrayidx66.i.4, align 1
  %scevgep29.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %154, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep29.1.4, align 1
  %conv64.i.1.4 = zext i8 %159 to i32
  %160 = load i8, i8* %arrayidx66.i.4, align 1
  %conv67.i.1.4 = zext i8 %160 to i32
  %xor68.i.1.4 = xor i32 %conv67.i.1.4, %conv64.i.1.4
  %conv69.i.1.4 = trunc i32 %xor68.i.1.4 to i8
  store i8 %conv69.i.1.4, i8* %arrayidx66.i.4, align 1
  %scevgep29.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %154, i64 0, i64 0, i64 2
  %161 = load i8, i8* %scevgep29.2.4, align 1
  %conv64.i.2.4 = zext i8 %161 to i32
  %162 = load i8, i8* %arrayidx66.i.4, align 1
  %conv67.i.2.4 = zext i8 %162 to i32
  %xor68.i.2.4 = xor i32 %conv67.i.2.4, %conv64.i.2.4
  %conv69.i.2.4 = trunc i32 %xor68.i.2.4 to i8
  store i8 %conv69.i.2.4, i8* %arrayidx66.i.4, align 1
  %scevgep29.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %154, i64 0, i64 0, i64 3
  %163 = load i8, i8* %scevgep29.3.4, align 1
  %conv64.i.3.4 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx66.i.4, align 1
  %conv67.i.3.4 = zext i8 %164 to i32
  %xor68.i.3.4 = xor i32 %conv67.i.3.4, %conv64.i.3.4
  %conv69.i.3.4 = trunc i32 %xor68.i.3.4 to i8
  store i8 %conv69.i.3.4, i8* %arrayidx66.i.4, align 1
  %call11 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv12 = zext i8 %call11 to i32
  %165 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %166 = load i8, i8* %scevgep.1, align 1
  %conv.i.i71.1 = zext i8 %166 to i32
  %conv1.i.i72.1 = zext i8 %165 to i32
  %xor.i.i73.1 = xor i32 %conv1.i.i72.1, %conv.i.i71.1
  %conv2.i.i74.1 = trunc i32 %xor.i.i73.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %167 = load i8, i8* %scevgep.2, align 1
  %conv.i.i71.2 = zext i8 %167 to i32
  %conv1.i.i72.2 = zext i8 %conv2.i.i74.1 to i32
  %xor.i.i73.2 = xor i32 %conv1.i.i72.2, %conv.i.i71.2
  %conv2.i.i74.2 = trunc i32 %xor.i.i73.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %168 = load i8, i8* %scevgep.3, align 1
  %conv.i.i71.3 = zext i8 %168 to i32
  %conv1.i.i72.3 = zext i8 %conv2.i.i74.2 to i32
  %xor.i.i73.3 = xor i32 %conv1.i.i72.3, %conv.i.i71.3
  %conv2.i.i74.3 = trunc i32 %xor.i.i73.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %169 = load i8, i8* %scevgep.4, align 1
  %conv.i.i71.4 = zext i8 %169 to i32
  %conv1.i.i72.4 = zext i8 %conv2.i.i74.3 to i32
  %xor.i.i73.4 = xor i32 %conv1.i.i72.4, %conv.i.i71.4
  %conv2.i.i74.4 = trunc i32 %xor.i.i73.4 to i8
  %conv14 = zext i8 %conv2.i.i74.4 to i32
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
