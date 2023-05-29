; ModuleID = '../examples/belaid-eurocrypto2016.inline-10.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
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
  %scevgep.4 = getelementptr i8, i8* %from, i64 4
  %4 = load i8, i8* %scevgep.4, align 1
  %call.4 = call zeroext i8 %f(i8 zeroext %4)
  %scevgep2.4 = getelementptr i8, i8* %to, i64 4
  store i8 %call.4, i8* %scevgep2.4, align 1
  %scevgep.5 = getelementptr i8, i8* %from, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %call.5 = call zeroext i8 %f(i8 zeroext %5)
  %scevgep2.5 = getelementptr i8, i8* %to, i64 5
  store i8 %call.5, i8* %scevgep2.5, align 1
  %scevgep.6 = getelementptr i8, i8* %from, i64 6
  %6 = load i8, i8* %scevgep.6, align 1
  %call.6 = call zeroext i8 %f(i8 zeroext %6)
  %scevgep2.6 = getelementptr i8, i8* %to, i64 6
  store i8 %call.6, i8* %scevgep2.6, align 1
  %scevgep.7 = getelementptr i8, i8* %from, i64 7
  %7 = load i8, i8* %scevgep.7, align 1
  %call.7 = call zeroext i8 %f(i8 zeroext %7)
  %scevgep2.7 = getelementptr i8, i8* %to, i64 7
  store i8 %call.7, i8* %scevgep2.7, align 1
  %scevgep.8 = getelementptr i8, i8* %from, i64 8
  %8 = load i8, i8* %scevgep.8, align 1
  %call.8 = call zeroext i8 %f(i8 zeroext %8)
  %scevgep2.8 = getelementptr i8, i8* %to, i64 8
  store i8 %call.8, i8* %scevgep2.8, align 1
  %scevgep.9 = getelementptr i8, i8* %from, i64 9
  %9 = load i8, i8* %scevgep.9, align 1
  %call.9 = call zeroext i8 %f(i8 zeroext %9)
  %scevgep2.9 = getelementptr i8, i8* %to, i64 9
  store i8 %call.9, i8* %scevgep2.9, align 1
  %scevgep.10 = getelementptr i8, i8* %from, i64 10
  %10 = load i8, i8* %scevgep.10, align 1
  %call.10 = call zeroext i8 %f(i8 zeroext %10)
  %scevgep2.10 = getelementptr i8, i8* %to, i64 10
  store i8 %call.10, i8* %scevgep2.10, align 1
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
  %scevgep.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %call.5 = call zeroext i8 %f(i8 zeroext %5)
  %conv.5 = zext i8 %call.5 to i32
  %conv1.5 = zext i8 %conv2.4 to i32
  %xor.5 = xor i32 %conv1.5, %conv.5
  %conv2.5 = trunc i32 %xor.5 to i8
  %scevgep.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep.6, align 1
  %call.6 = call zeroext i8 %f(i8 zeroext %6)
  %conv.6 = zext i8 %call.6 to i32
  %conv1.6 = zext i8 %conv2.5 to i32
  %xor.6 = xor i32 %conv1.6, %conv.6
  %conv2.6 = trunc i32 %xor.6 to i8
  %scevgep.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep.7, align 1
  %call.7 = call zeroext i8 %f(i8 zeroext %7)
  %conv.7 = zext i8 %call.7 to i32
  %conv1.7 = zext i8 %conv2.6 to i32
  %xor.7 = xor i32 %conv1.7, %conv.7
  %conv2.7 = trunc i32 %xor.7 to i8
  %scevgep.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep.8, align 1
  %call.8 = call zeroext i8 %f(i8 zeroext %8)
  %conv.8 = zext i8 %call.8 to i32
  %conv1.8 = zext i8 %conv2.7 to i32
  %xor.8 = xor i32 %conv1.8, %conv.8
  %conv2.8 = trunc i32 %xor.8 to i8
  %scevgep.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep.9, align 1
  %call.9 = call zeroext i8 %f(i8 zeroext %9)
  %conv.9 = zext i8 %call.9 to i32
  %conv1.9 = zext i8 %conv2.8 to i32
  %xor.9 = xor i32 %conv1.9, %conv.9
  %conv2.9 = trunc i32 %xor.9 to i8
  %scevgep.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep.10, align 1
  %call.10 = call zeroext i8 %f(i8 zeroext %10)
  %conv.10 = zext i8 %call.10 to i32
  %conv1.10 = zext i8 %conv2.9 to i32
  %xor.10 = xor i32 %conv1.10, %conv.10
  %conv2.10 = trunc i32 %xor.10 to i8
  ret i8 %conv2.10
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
  %scevgep.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %conv.i.5 = zext i8 %5 to i32
  %conv1.i.5 = zext i8 %conv2.i.4 to i32
  %xor.i.5 = xor i32 %conv1.i.5, %conv.i.5
  %conv2.i.5 = trunc i32 %xor.i.5 to i8
  %scevgep.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep.6, align 1
  %conv.i.6 = zext i8 %6 to i32
  %conv1.i.6 = zext i8 %conv2.i.5 to i32
  %xor.i.6 = xor i32 %conv1.i.6, %conv.i.6
  %conv2.i.6 = trunc i32 %xor.i.6 to i8
  %scevgep.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep.7, align 1
  %conv.i.7 = zext i8 %7 to i32
  %conv1.i.7 = zext i8 %conv2.i.6 to i32
  %xor.i.7 = xor i32 %conv1.i.7, %conv.i.7
  %conv2.i.7 = trunc i32 %xor.i.7 to i8
  %scevgep.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep.8, align 1
  %conv.i.8 = zext i8 %8 to i32
  %conv1.i.8 = zext i8 %conv2.i.7 to i32
  %xor.i.8 = xor i32 %conv1.i.8, %conv.i.8
  %conv2.i.8 = trunc i32 %xor.i.8 to i8
  %scevgep.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep.9, align 1
  %conv.i.9 = zext i8 %9 to i32
  %conv1.i.9 = zext i8 %conv2.i.8 to i32
  %xor.i.9 = xor i32 %conv1.i.9, %conv.i.9
  %conv2.i.9 = trunc i32 %xor.i.9 to i8
  %scevgep.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep.10, align 1
  %conv.i.10 = zext i8 %10 to i32
  %conv1.i.10 = zext i8 %conv2.i.9 to i32
  %xor.i.10 = xor i32 %conv1.i.10, %conv.i.10
  %conv2.i.10 = trunc i32 %xor.i.10 to i8
  ret i8 %conv2.i.10
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %alpha = alloca [11 x [11 x i8]], align 16
  %t = alloca [11 x [11 x i8]], align 16
  %r = alloca [11 x [11 x i8]], align 16
  %rr = alloca [11 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep48.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep48.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep48.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep48.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep48.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep48.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep48.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep48.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %scevgep48.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep48.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %scevgep48.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep48.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep48.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep48.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep48.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep48.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep48.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep48.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep48.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep48.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %conv3 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %11 = load i8, i8* %b, align 1
  %scevgep44.1 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep44.1, align 1
  %conv.i.i218.1 = zext i8 %12 to i32
  %conv1.i.i219.1 = zext i8 %11 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %scevgep44.2 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep44.2, align 1
  %conv.i.i218.2 = zext i8 %13 to i32
  %conv1.i.i219.2 = zext i8 %conv2.i.i221.1 to i32
  %xor.i.i220.2 = xor i32 %conv1.i.i219.2, %conv.i.i218.2
  %conv2.i.i221.2 = trunc i32 %xor.i.i220.2 to i8
  %scevgep44.3 = getelementptr i8, i8* %b, i64 3
  %14 = load i8, i8* %scevgep44.3, align 1
  %conv.i.i218.3 = zext i8 %14 to i32
  %conv1.i.i219.3 = zext i8 %conv2.i.i221.2 to i32
  %xor.i.i220.3 = xor i32 %conv1.i.i219.3, %conv.i.i218.3
  %conv2.i.i221.3 = trunc i32 %xor.i.i220.3 to i8
  %scevgep44.4 = getelementptr i8, i8* %b, i64 4
  %15 = load i8, i8* %scevgep44.4, align 1
  %conv.i.i218.4 = zext i8 %15 to i32
  %conv1.i.i219.4 = zext i8 %conv2.i.i221.3 to i32
  %xor.i.i220.4 = xor i32 %conv1.i.i219.4, %conv.i.i218.4
  %conv2.i.i221.4 = trunc i32 %xor.i.i220.4 to i8
  %scevgep44.5 = getelementptr i8, i8* %b, i64 5
  %16 = load i8, i8* %scevgep44.5, align 1
  %conv.i.i218.5 = zext i8 %16 to i32
  %conv1.i.i219.5 = zext i8 %conv2.i.i221.4 to i32
  %xor.i.i220.5 = xor i32 %conv1.i.i219.5, %conv.i.i218.5
  %conv2.i.i221.5 = trunc i32 %xor.i.i220.5 to i8
  %scevgep44.6 = getelementptr i8, i8* %b, i64 6
  %17 = load i8, i8* %scevgep44.6, align 1
  %conv.i.i218.6 = zext i8 %17 to i32
  %conv1.i.i219.6 = zext i8 %conv2.i.i221.5 to i32
  %xor.i.i220.6 = xor i32 %conv1.i.i219.6, %conv.i.i218.6
  %conv2.i.i221.6 = trunc i32 %xor.i.i220.6 to i8
  %scevgep44.7 = getelementptr i8, i8* %b, i64 7
  %18 = load i8, i8* %scevgep44.7, align 1
  %conv.i.i218.7 = zext i8 %18 to i32
  %conv1.i.i219.7 = zext i8 %conv2.i.i221.6 to i32
  %xor.i.i220.7 = xor i32 %conv1.i.i219.7, %conv.i.i218.7
  %conv2.i.i221.7 = trunc i32 %xor.i.i220.7 to i8
  %scevgep44.8 = getelementptr i8, i8* %b, i64 8
  %19 = load i8, i8* %scevgep44.8, align 1
  %conv.i.i218.8 = zext i8 %19 to i32
  %conv1.i.i219.8 = zext i8 %conv2.i.i221.7 to i32
  %xor.i.i220.8 = xor i32 %conv1.i.i219.8, %conv.i.i218.8
  %conv2.i.i221.8 = trunc i32 %xor.i.i220.8 to i8
  %scevgep44.9 = getelementptr i8, i8* %b, i64 9
  %20 = load i8, i8* %scevgep44.9, align 1
  %conv.i.i218.9 = zext i8 %20 to i32
  %conv1.i.i219.9 = zext i8 %conv2.i.i221.8 to i32
  %xor.i.i220.9 = xor i32 %conv1.i.i219.9, %conv.i.i218.9
  %conv2.i.i221.9 = trunc i32 %xor.i.i220.9 to i8
  %scevgep44.10 = getelementptr i8, i8* %b, i64 10
  %21 = load i8, i8* %scevgep44.10, align 1
  %conv.i.i218.10 = zext i8 %21 to i32
  %conv1.i.i219.10 = zext i8 %conv2.i.i221.9 to i32
  %xor.i.i220.10 = xor i32 %conv1.i.i219.10, %conv.i.i218.10
  %conv2.i.i221.10 = trunc i32 %xor.i.i220.10 to i8
  %conv7 = zext i8 %conv2.i.i221.10 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %22 = load i8, i8* %a, align 1
  %23 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %scevgep40 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep40, align 1
  %24 = load i8, i8* %a, align 1
  %scevgep37.1 = getelementptr i8, i8* %b, i64 1
  %25 = load i8, i8* %scevgep37.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25)
  %scevgep40.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep40.1, align 1
  %26 = load i8, i8* %a, align 1
  %scevgep37.2 = getelementptr i8, i8* %b, i64 2
  %27 = load i8, i8* %scevgep37.2, align 1
  %call18.2 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  %scevgep40.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 2
  store i8 %call18.2, i8* %scevgep40.2, align 1
  %28 = load i8, i8* %a, align 1
  %scevgep37.3 = getelementptr i8, i8* %b, i64 3
  %29 = load i8, i8* %scevgep37.3, align 1
  %call18.3 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29)
  %scevgep40.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 3
  store i8 %call18.3, i8* %scevgep40.3, align 1
  %30 = load i8, i8* %a, align 1
  %scevgep37.4 = getelementptr i8, i8* %b, i64 4
  %31 = load i8, i8* %scevgep37.4, align 1
  %call18.4 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31)
  %scevgep40.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 4
  store i8 %call18.4, i8* %scevgep40.4, align 1
  %32 = load i8, i8* %a, align 1
  %scevgep37.5 = getelementptr i8, i8* %b, i64 5
  %33 = load i8, i8* %scevgep37.5, align 1
  %call18.5 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %scevgep40.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 5
  store i8 %call18.5, i8* %scevgep40.5, align 1
  %34 = load i8, i8* %a, align 1
  %scevgep37.6 = getelementptr i8, i8* %b, i64 6
  %35 = load i8, i8* %scevgep37.6, align 1
  %call18.6 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %scevgep40.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 6
  store i8 %call18.6, i8* %scevgep40.6, align 1
  %36 = load i8, i8* %a, align 1
  %scevgep37.7 = getelementptr i8, i8* %b, i64 7
  %37 = load i8, i8* %scevgep37.7, align 1
  %call18.7 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %scevgep40.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 7
  store i8 %call18.7, i8* %scevgep40.7, align 1
  %38 = load i8, i8* %a, align 1
  %scevgep37.8 = getelementptr i8, i8* %b, i64 8
  %39 = load i8, i8* %scevgep37.8, align 1
  %call18.8 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %scevgep40.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 8
  store i8 %call18.8, i8* %scevgep40.8, align 1
  %40 = load i8, i8* %a, align 1
  %scevgep37.9 = getelementptr i8, i8* %b, i64 9
  %41 = load i8, i8* %scevgep37.9, align 1
  %call18.9 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  %scevgep40.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 9
  store i8 %call18.9, i8* %scevgep40.9, align 1
  %42 = load i8, i8* %a, align 1
  %scevgep37.10 = getelementptr i8, i8* %b, i64 10
  %43 = load i8, i8* %scevgep37.10, align 1
  %call18.10 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep40.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0, i64 10
  store i8 %call18.10, i8* %scevgep40.10, align 1
  %scevgep39 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep39 to [11 x [11 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %45 = load i8, i8* %arrayidx.1, align 1
  %46 = load i8, i8* %b, align 1
  %call18.150 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46)
  %scevgep40.151 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 0
  store i8 %call18.150, i8* %scevgep40.151, align 1
  %47 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.1.1 = getelementptr i8, i8* %b, i64 1
  %48 = load i8, i8* %scevgep37.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48)
  %scevgep40.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep40.1.1, align 1
  %49 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.2.1 = getelementptr i8, i8* %b, i64 2
  %50 = load i8, i8* %scevgep37.2.1, align 1
  %call18.2.1 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %scevgep40.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 2
  store i8 %call18.2.1, i8* %scevgep40.2.1, align 1
  %51 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.3.1 = getelementptr i8, i8* %b, i64 3
  %52 = load i8, i8* %scevgep37.3.1, align 1
  %call18.3.1 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %scevgep40.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 3
  store i8 %call18.3.1, i8* %scevgep40.3.1, align 1
  %53 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.4.1 = getelementptr i8, i8* %b, i64 4
  %54 = load i8, i8* %scevgep37.4.1, align 1
  %call18.4.1 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54)
  %scevgep40.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 4
  store i8 %call18.4.1, i8* %scevgep40.4.1, align 1
  %55 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.5.1 = getelementptr i8, i8* %b, i64 5
  %56 = load i8, i8* %scevgep37.5.1, align 1
  %call18.5.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56)
  %scevgep40.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 5
  store i8 %call18.5.1, i8* %scevgep40.5.1, align 1
  %57 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.6.1 = getelementptr i8, i8* %b, i64 6
  %58 = load i8, i8* %scevgep37.6.1, align 1
  %call18.6.1 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58)
  %scevgep40.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 6
  store i8 %call18.6.1, i8* %scevgep40.6.1, align 1
  %59 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.7.1 = getelementptr i8, i8* %b, i64 7
  %60 = load i8, i8* %scevgep37.7.1, align 1
  %call18.7.1 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60)
  %scevgep40.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 7
  store i8 %call18.7.1, i8* %scevgep40.7.1, align 1
  %61 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.8.1 = getelementptr i8, i8* %b, i64 8
  %62 = load i8, i8* %scevgep37.8.1, align 1
  %call18.8.1 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62)
  %scevgep40.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 8
  store i8 %call18.8.1, i8* %scevgep40.8.1, align 1
  %63 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.9.1 = getelementptr i8, i8* %b, i64 9
  %64 = load i8, i8* %scevgep37.9.1, align 1
  %call18.9.1 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %scevgep40.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 9
  store i8 %call18.9.1, i8* %scevgep40.9.1, align 1
  %65 = load i8, i8* %arrayidx.1, align 1
  %scevgep37.10.1 = getelementptr i8, i8* %b, i64 10
  %66 = load i8, i8* %scevgep37.10.1, align 1
  %call18.10.1 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %scevgep40.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 10
  store i8 %call18.10.1, i8* %scevgep40.10.1, align 1
  %scevgep39.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep39.1 to [11 x [11 x i8]]*
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2
  %68 = load i8, i8* %arrayidx.2, align 1
  %69 = load i8, i8* %b, align 1
  %call18.253 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69)
  %scevgep40.254 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 0
  store i8 %call18.253, i8* %scevgep40.254, align 1
  %70 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.1.2 = getelementptr i8, i8* %b, i64 1
  %71 = load i8, i8* %scevgep37.1.2, align 1
  %call18.1.2 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  %scevgep40.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 1
  store i8 %call18.1.2, i8* %scevgep40.1.2, align 1
  %72 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.2.2 = getelementptr i8, i8* %b, i64 2
  %73 = load i8, i8* %scevgep37.2.2, align 1
  %call18.2.2 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73)
  %scevgep40.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 2
  store i8 %call18.2.2, i8* %scevgep40.2.2, align 1
  %74 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.3.2 = getelementptr i8, i8* %b, i64 3
  %75 = load i8, i8* %scevgep37.3.2, align 1
  %call18.3.2 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %scevgep40.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 3
  store i8 %call18.3.2, i8* %scevgep40.3.2, align 1
  %76 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.4.2 = getelementptr i8, i8* %b, i64 4
  %77 = load i8, i8* %scevgep37.4.2, align 1
  %call18.4.2 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77)
  %scevgep40.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 4
  store i8 %call18.4.2, i8* %scevgep40.4.2, align 1
  %78 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.5.2 = getelementptr i8, i8* %b, i64 5
  %79 = load i8, i8* %scevgep37.5.2, align 1
  %call18.5.2 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79)
  %scevgep40.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 5
  store i8 %call18.5.2, i8* %scevgep40.5.2, align 1
  %80 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.6.2 = getelementptr i8, i8* %b, i64 6
  %81 = load i8, i8* %scevgep37.6.2, align 1
  %call18.6.2 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81)
  %scevgep40.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 6
  store i8 %call18.6.2, i8* %scevgep40.6.2, align 1
  %82 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.7.2 = getelementptr i8, i8* %b, i64 7
  %83 = load i8, i8* %scevgep37.7.2, align 1
  %call18.7.2 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83)
  %scevgep40.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 7
  store i8 %call18.7.2, i8* %scevgep40.7.2, align 1
  %84 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.8.2 = getelementptr i8, i8* %b, i64 8
  %85 = load i8, i8* %scevgep37.8.2, align 1
  %call18.8.2 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85)
  %scevgep40.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 8
  store i8 %call18.8.2, i8* %scevgep40.8.2, align 1
  %86 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.9.2 = getelementptr i8, i8* %b, i64 9
  %87 = load i8, i8* %scevgep37.9.2, align 1
  %call18.9.2 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87)
  %scevgep40.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 9
  store i8 %call18.9.2, i8* %scevgep40.9.2, align 1
  %88 = load i8, i8* %arrayidx.2, align 1
  %scevgep37.10.2 = getelementptr i8, i8* %b, i64 10
  %89 = load i8, i8* %scevgep37.10.2, align 1
  %call18.10.2 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89)
  %scevgep40.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 0, i64 10
  store i8 %call18.10.2, i8* %scevgep40.10.2, align 1
  %scevgep39.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 1, i64 0
  %90 = bitcast i8* %scevgep39.2 to [11 x [11 x i8]]*
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3
  %91 = load i8, i8* %arrayidx.3, align 1
  %92 = load i8, i8* %b, align 1
  %call18.356 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %scevgep40.357 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 0
  store i8 %call18.356, i8* %scevgep40.357, align 1
  %93 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.1.3 = getelementptr i8, i8* %b, i64 1
  %94 = load i8, i8* %scevgep37.1.3, align 1
  %call18.1.3 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94)
  %scevgep40.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 1
  store i8 %call18.1.3, i8* %scevgep40.1.3, align 1
  %95 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.2.3 = getelementptr i8, i8* %b, i64 2
  %96 = load i8, i8* %scevgep37.2.3, align 1
  %call18.2.3 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96)
  %scevgep40.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 2
  store i8 %call18.2.3, i8* %scevgep40.2.3, align 1
  %97 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.3.3 = getelementptr i8, i8* %b, i64 3
  %98 = load i8, i8* %scevgep37.3.3, align 1
  %call18.3.3 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98)
  %scevgep40.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 3
  store i8 %call18.3.3, i8* %scevgep40.3.3, align 1
  %99 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.4.3 = getelementptr i8, i8* %b, i64 4
  %100 = load i8, i8* %scevgep37.4.3, align 1
  %call18.4.3 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100)
  %scevgep40.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 4
  store i8 %call18.4.3, i8* %scevgep40.4.3, align 1
  %101 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.5.3 = getelementptr i8, i8* %b, i64 5
  %102 = load i8, i8* %scevgep37.5.3, align 1
  %call18.5.3 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102)
  %scevgep40.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 5
  store i8 %call18.5.3, i8* %scevgep40.5.3, align 1
  %103 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.6.3 = getelementptr i8, i8* %b, i64 6
  %104 = load i8, i8* %scevgep37.6.3, align 1
  %call18.6.3 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104)
  %scevgep40.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 6
  store i8 %call18.6.3, i8* %scevgep40.6.3, align 1
  %105 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.7.3 = getelementptr i8, i8* %b, i64 7
  %106 = load i8, i8* %scevgep37.7.3, align 1
  %call18.7.3 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106)
  %scevgep40.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 7
  store i8 %call18.7.3, i8* %scevgep40.7.3, align 1
  %107 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.8.3 = getelementptr i8, i8* %b, i64 8
  %108 = load i8, i8* %scevgep37.8.3, align 1
  %call18.8.3 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108)
  %scevgep40.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 8
  store i8 %call18.8.3, i8* %scevgep40.8.3, align 1
  %109 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.9.3 = getelementptr i8, i8* %b, i64 9
  %110 = load i8, i8* %scevgep37.9.3, align 1
  %call18.9.3 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110)
  %scevgep40.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 9
  store i8 %call18.9.3, i8* %scevgep40.9.3, align 1
  %111 = load i8, i8* %arrayidx.3, align 1
  %scevgep37.10.3 = getelementptr i8, i8* %b, i64 10
  %112 = load i8, i8* %scevgep37.10.3, align 1
  %call18.10.3 = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112)
  %scevgep40.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 0, i64 10
  store i8 %call18.10.3, i8* %scevgep40.10.3, align 1
  %scevgep39.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %90, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep39.3 to [11 x [11 x i8]]*
  %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 4
  %114 = load i8, i8* %arrayidx.4, align 1
  %115 = load i8, i8* %b, align 1
  %call18.459 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115)
  %scevgep40.460 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 0
  store i8 %call18.459, i8* %scevgep40.460, align 1
  %116 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.1.4 = getelementptr i8, i8* %b, i64 1
  %117 = load i8, i8* %scevgep37.1.4, align 1
  %call18.1.4 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117)
  %scevgep40.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 1
  store i8 %call18.1.4, i8* %scevgep40.1.4, align 1
  %118 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.2.4 = getelementptr i8, i8* %b, i64 2
  %119 = load i8, i8* %scevgep37.2.4, align 1
  %call18.2.4 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119)
  %scevgep40.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 2
  store i8 %call18.2.4, i8* %scevgep40.2.4, align 1
  %120 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.3.4 = getelementptr i8, i8* %b, i64 3
  %121 = load i8, i8* %scevgep37.3.4, align 1
  %call18.3.4 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121)
  %scevgep40.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 3
  store i8 %call18.3.4, i8* %scevgep40.3.4, align 1
  %122 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.4.4 = getelementptr i8, i8* %b, i64 4
  %123 = load i8, i8* %scevgep37.4.4, align 1
  %call18.4.4 = call zeroext i8 @mult(i8 zeroext %122, i8 zeroext %123)
  %scevgep40.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 4
  store i8 %call18.4.4, i8* %scevgep40.4.4, align 1
  %124 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.5.4 = getelementptr i8, i8* %b, i64 5
  %125 = load i8, i8* %scevgep37.5.4, align 1
  %call18.5.4 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125)
  %scevgep40.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 5
  store i8 %call18.5.4, i8* %scevgep40.5.4, align 1
  %126 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.6.4 = getelementptr i8, i8* %b, i64 6
  %127 = load i8, i8* %scevgep37.6.4, align 1
  %call18.6.4 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127)
  %scevgep40.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 6
  store i8 %call18.6.4, i8* %scevgep40.6.4, align 1
  %128 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.7.4 = getelementptr i8, i8* %b, i64 7
  %129 = load i8, i8* %scevgep37.7.4, align 1
  %call18.7.4 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129)
  %scevgep40.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 7
  store i8 %call18.7.4, i8* %scevgep40.7.4, align 1
  %130 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.8.4 = getelementptr i8, i8* %b, i64 8
  %131 = load i8, i8* %scevgep37.8.4, align 1
  %call18.8.4 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131)
  %scevgep40.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 8
  store i8 %call18.8.4, i8* %scevgep40.8.4, align 1
  %132 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.9.4 = getelementptr i8, i8* %b, i64 9
  %133 = load i8, i8* %scevgep37.9.4, align 1
  %call18.9.4 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133)
  %scevgep40.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 9
  store i8 %call18.9.4, i8* %scevgep40.9.4, align 1
  %134 = load i8, i8* %arrayidx.4, align 1
  %scevgep37.10.4 = getelementptr i8, i8* %b, i64 10
  %135 = load i8, i8* %scevgep37.10.4, align 1
  %call18.10.4 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135)
  %scevgep40.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 0, i64 10
  store i8 %call18.10.4, i8* %scevgep40.10.4, align 1
  %scevgep39.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %113, i64 0, i64 1, i64 0
  %136 = bitcast i8* %scevgep39.4 to [11 x [11 x i8]]*
  %arrayidx.5 = getelementptr inbounds i8, i8* %a, i64 5
  %137 = load i8, i8* %arrayidx.5, align 1
  %138 = load i8, i8* %b, align 1
  %call18.562 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138)
  %scevgep40.563 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 0
  store i8 %call18.562, i8* %scevgep40.563, align 1
  %139 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.1.5 = getelementptr i8, i8* %b, i64 1
  %140 = load i8, i8* %scevgep37.1.5, align 1
  %call18.1.5 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140)
  %scevgep40.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 1
  store i8 %call18.1.5, i8* %scevgep40.1.5, align 1
  %141 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.2.5 = getelementptr i8, i8* %b, i64 2
  %142 = load i8, i8* %scevgep37.2.5, align 1
  %call18.2.5 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142)
  %scevgep40.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 2
  store i8 %call18.2.5, i8* %scevgep40.2.5, align 1
  %143 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.3.5 = getelementptr i8, i8* %b, i64 3
  %144 = load i8, i8* %scevgep37.3.5, align 1
  %call18.3.5 = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144)
  %scevgep40.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 3
  store i8 %call18.3.5, i8* %scevgep40.3.5, align 1
  %145 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.4.5 = getelementptr i8, i8* %b, i64 4
  %146 = load i8, i8* %scevgep37.4.5, align 1
  %call18.4.5 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %scevgep40.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 4
  store i8 %call18.4.5, i8* %scevgep40.4.5, align 1
  %147 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.5.5 = getelementptr i8, i8* %b, i64 5
  %148 = load i8, i8* %scevgep37.5.5, align 1
  %call18.5.5 = call zeroext i8 @mult(i8 zeroext %147, i8 zeroext %148)
  %scevgep40.5.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 5
  store i8 %call18.5.5, i8* %scevgep40.5.5, align 1
  %149 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.6.5 = getelementptr i8, i8* %b, i64 6
  %150 = load i8, i8* %scevgep37.6.5, align 1
  %call18.6.5 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150)
  %scevgep40.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 6
  store i8 %call18.6.5, i8* %scevgep40.6.5, align 1
  %151 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.7.5 = getelementptr i8, i8* %b, i64 7
  %152 = load i8, i8* %scevgep37.7.5, align 1
  %call18.7.5 = call zeroext i8 @mult(i8 zeroext %151, i8 zeroext %152)
  %scevgep40.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 7
  store i8 %call18.7.5, i8* %scevgep40.7.5, align 1
  %153 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.8.5 = getelementptr i8, i8* %b, i64 8
  %154 = load i8, i8* %scevgep37.8.5, align 1
  %call18.8.5 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154)
  %scevgep40.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 8
  store i8 %call18.8.5, i8* %scevgep40.8.5, align 1
  %155 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.9.5 = getelementptr i8, i8* %b, i64 9
  %156 = load i8, i8* %scevgep37.9.5, align 1
  %call18.9.5 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156)
  %scevgep40.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 9
  store i8 %call18.9.5, i8* %scevgep40.9.5, align 1
  %157 = load i8, i8* %arrayidx.5, align 1
  %scevgep37.10.5 = getelementptr i8, i8* %b, i64 10
  %158 = load i8, i8* %scevgep37.10.5, align 1
  %call18.10.5 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158)
  %scevgep40.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 10
  store i8 %call18.10.5, i8* %scevgep40.10.5, align 1
  %scevgep39.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 1, i64 0
  %159 = bitcast i8* %scevgep39.5 to [11 x [11 x i8]]*
  %arrayidx.6 = getelementptr inbounds i8, i8* %a, i64 6
  %160 = load i8, i8* %arrayidx.6, align 1
  %161 = load i8, i8* %b, align 1
  %call18.665 = call zeroext i8 @mult(i8 zeroext %160, i8 zeroext %161)
  %scevgep40.666 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 0
  store i8 %call18.665, i8* %scevgep40.666, align 1
  %162 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.1.6 = getelementptr i8, i8* %b, i64 1
  %163 = load i8, i8* %scevgep37.1.6, align 1
  %call18.1.6 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163)
  %scevgep40.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 1
  store i8 %call18.1.6, i8* %scevgep40.1.6, align 1
  %164 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.2.6 = getelementptr i8, i8* %b, i64 2
  %165 = load i8, i8* %scevgep37.2.6, align 1
  %call18.2.6 = call zeroext i8 @mult(i8 zeroext %164, i8 zeroext %165)
  %scevgep40.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 2
  store i8 %call18.2.6, i8* %scevgep40.2.6, align 1
  %166 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.3.6 = getelementptr i8, i8* %b, i64 3
  %167 = load i8, i8* %scevgep37.3.6, align 1
  %call18.3.6 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167)
  %scevgep40.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 3
  store i8 %call18.3.6, i8* %scevgep40.3.6, align 1
  %168 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.4.6 = getelementptr i8, i8* %b, i64 4
  %169 = load i8, i8* %scevgep37.4.6, align 1
  %call18.4.6 = call zeroext i8 @mult(i8 zeroext %168, i8 zeroext %169)
  %scevgep40.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 4
  store i8 %call18.4.6, i8* %scevgep40.4.6, align 1
  %170 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.5.6 = getelementptr i8, i8* %b, i64 5
  %171 = load i8, i8* %scevgep37.5.6, align 1
  %call18.5.6 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171)
  %scevgep40.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 5
  store i8 %call18.5.6, i8* %scevgep40.5.6, align 1
  %172 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.6.6 = getelementptr i8, i8* %b, i64 6
  %173 = load i8, i8* %scevgep37.6.6, align 1
  %call18.6.6 = call zeroext i8 @mult(i8 zeroext %172, i8 zeroext %173)
  %scevgep40.6.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 6
  store i8 %call18.6.6, i8* %scevgep40.6.6, align 1
  %174 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.7.6 = getelementptr i8, i8* %b, i64 7
  %175 = load i8, i8* %scevgep37.7.6, align 1
  %call18.7.6 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175)
  %scevgep40.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 7
  store i8 %call18.7.6, i8* %scevgep40.7.6, align 1
  %176 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.8.6 = getelementptr i8, i8* %b, i64 8
  %177 = load i8, i8* %scevgep37.8.6, align 1
  %call18.8.6 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177)
  %scevgep40.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 8
  store i8 %call18.8.6, i8* %scevgep40.8.6, align 1
  %178 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.9.6 = getelementptr i8, i8* %b, i64 9
  %179 = load i8, i8* %scevgep37.9.6, align 1
  %call18.9.6 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179)
  %scevgep40.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 9
  store i8 %call18.9.6, i8* %scevgep40.9.6, align 1
  %180 = load i8, i8* %arrayidx.6, align 1
  %scevgep37.10.6 = getelementptr i8, i8* %b, i64 10
  %181 = load i8, i8* %scevgep37.10.6, align 1
  %call18.10.6 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181)
  %scevgep40.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 0, i64 10
  store i8 %call18.10.6, i8* %scevgep40.10.6, align 1
  %scevgep39.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %159, i64 0, i64 1, i64 0
  %182 = bitcast i8* %scevgep39.6 to [11 x [11 x i8]]*
  %arrayidx.7 = getelementptr inbounds i8, i8* %a, i64 7
  %183 = load i8, i8* %arrayidx.7, align 1
  %184 = load i8, i8* %b, align 1
  %call18.768 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184)
  %scevgep40.769 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 0
  store i8 %call18.768, i8* %scevgep40.769, align 1
  %185 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.1.7 = getelementptr i8, i8* %b, i64 1
  %186 = load i8, i8* %scevgep37.1.7, align 1
  %call18.1.7 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186)
  %scevgep40.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 1
  store i8 %call18.1.7, i8* %scevgep40.1.7, align 1
  %187 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.2.7 = getelementptr i8, i8* %b, i64 2
  %188 = load i8, i8* %scevgep37.2.7, align 1
  %call18.2.7 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188)
  %scevgep40.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 2
  store i8 %call18.2.7, i8* %scevgep40.2.7, align 1
  %189 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.3.7 = getelementptr i8, i8* %b, i64 3
  %190 = load i8, i8* %scevgep37.3.7, align 1
  %call18.3.7 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190)
  %scevgep40.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 3
  store i8 %call18.3.7, i8* %scevgep40.3.7, align 1
  %191 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.4.7 = getelementptr i8, i8* %b, i64 4
  %192 = load i8, i8* %scevgep37.4.7, align 1
  %call18.4.7 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192)
  %scevgep40.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 4
  store i8 %call18.4.7, i8* %scevgep40.4.7, align 1
  %193 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.5.7 = getelementptr i8, i8* %b, i64 5
  %194 = load i8, i8* %scevgep37.5.7, align 1
  %call18.5.7 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194)
  %scevgep40.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 5
  store i8 %call18.5.7, i8* %scevgep40.5.7, align 1
  %195 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.6.7 = getelementptr i8, i8* %b, i64 6
  %196 = load i8, i8* %scevgep37.6.7, align 1
  %call18.6.7 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196)
  %scevgep40.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 6
  store i8 %call18.6.7, i8* %scevgep40.6.7, align 1
  %197 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.7.7 = getelementptr i8, i8* %b, i64 7
  %198 = load i8, i8* %scevgep37.7.7, align 1
  %call18.7.7 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198)
  %scevgep40.7.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 7
  store i8 %call18.7.7, i8* %scevgep40.7.7, align 1
  %199 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.8.7 = getelementptr i8, i8* %b, i64 8
  %200 = load i8, i8* %scevgep37.8.7, align 1
  %call18.8.7 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200)
  %scevgep40.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 8
  store i8 %call18.8.7, i8* %scevgep40.8.7, align 1
  %201 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.9.7 = getelementptr i8, i8* %b, i64 9
  %202 = load i8, i8* %scevgep37.9.7, align 1
  %call18.9.7 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202)
  %scevgep40.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 9
  store i8 %call18.9.7, i8* %scevgep40.9.7, align 1
  %203 = load i8, i8* %arrayidx.7, align 1
  %scevgep37.10.7 = getelementptr i8, i8* %b, i64 10
  %204 = load i8, i8* %scevgep37.10.7, align 1
  %call18.10.7 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204)
  %scevgep40.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 0, i64 10
  store i8 %call18.10.7, i8* %scevgep40.10.7, align 1
  %scevgep39.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %182, i64 0, i64 1, i64 0
  %205 = bitcast i8* %scevgep39.7 to [11 x [11 x i8]]*
  %arrayidx.8 = getelementptr inbounds i8, i8* %a, i64 8
  %206 = load i8, i8* %arrayidx.8, align 1
  %207 = load i8, i8* %b, align 1
  %call18.871 = call zeroext i8 @mult(i8 zeroext %206, i8 zeroext %207)
  %scevgep40.872 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 0
  store i8 %call18.871, i8* %scevgep40.872, align 1
  %208 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.1.8 = getelementptr i8, i8* %b, i64 1
  %209 = load i8, i8* %scevgep37.1.8, align 1
  %call18.1.8 = call zeroext i8 @mult(i8 zeroext %208, i8 zeroext %209)
  %scevgep40.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 1
  store i8 %call18.1.8, i8* %scevgep40.1.8, align 1
  %210 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.2.8 = getelementptr i8, i8* %b, i64 2
  %211 = load i8, i8* %scevgep37.2.8, align 1
  %call18.2.8 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211)
  %scevgep40.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 2
  store i8 %call18.2.8, i8* %scevgep40.2.8, align 1
  %212 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.3.8 = getelementptr i8, i8* %b, i64 3
  %213 = load i8, i8* %scevgep37.3.8, align 1
  %call18.3.8 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213)
  %scevgep40.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 3
  store i8 %call18.3.8, i8* %scevgep40.3.8, align 1
  %214 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.4.8 = getelementptr i8, i8* %b, i64 4
  %215 = load i8, i8* %scevgep37.4.8, align 1
  %call18.4.8 = call zeroext i8 @mult(i8 zeroext %214, i8 zeroext %215)
  %scevgep40.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 4
  store i8 %call18.4.8, i8* %scevgep40.4.8, align 1
  %216 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.5.8 = getelementptr i8, i8* %b, i64 5
  %217 = load i8, i8* %scevgep37.5.8, align 1
  %call18.5.8 = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %217)
  %scevgep40.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 5
  store i8 %call18.5.8, i8* %scevgep40.5.8, align 1
  %218 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.6.8 = getelementptr i8, i8* %b, i64 6
  %219 = load i8, i8* %scevgep37.6.8, align 1
  %call18.6.8 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219)
  %scevgep40.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 6
  store i8 %call18.6.8, i8* %scevgep40.6.8, align 1
  %220 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.7.8 = getelementptr i8, i8* %b, i64 7
  %221 = load i8, i8* %scevgep37.7.8, align 1
  %call18.7.8 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221)
  %scevgep40.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 7
  store i8 %call18.7.8, i8* %scevgep40.7.8, align 1
  %222 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.8.8 = getelementptr i8, i8* %b, i64 8
  %223 = load i8, i8* %scevgep37.8.8, align 1
  %call18.8.8 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223)
  %scevgep40.8.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 8
  store i8 %call18.8.8, i8* %scevgep40.8.8, align 1
  %224 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.9.8 = getelementptr i8, i8* %b, i64 9
  %225 = load i8, i8* %scevgep37.9.8, align 1
  %call18.9.8 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225)
  %scevgep40.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 9
  store i8 %call18.9.8, i8* %scevgep40.9.8, align 1
  %226 = load i8, i8* %arrayidx.8, align 1
  %scevgep37.10.8 = getelementptr i8, i8* %b, i64 10
  %227 = load i8, i8* %scevgep37.10.8, align 1
  %call18.10.8 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227)
  %scevgep40.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 0, i64 10
  store i8 %call18.10.8, i8* %scevgep40.10.8, align 1
  %scevgep39.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %205, i64 0, i64 1, i64 0
  %228 = bitcast i8* %scevgep39.8 to [11 x [11 x i8]]*
  %arrayidx.9 = getelementptr inbounds i8, i8* %a, i64 9
  %229 = load i8, i8* %arrayidx.9, align 1
  %230 = load i8, i8* %b, align 1
  %call18.974 = call zeroext i8 @mult(i8 zeroext %229, i8 zeroext %230)
  %scevgep40.975 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 0
  store i8 %call18.974, i8* %scevgep40.975, align 1
  %231 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.1.9 = getelementptr i8, i8* %b, i64 1
  %232 = load i8, i8* %scevgep37.1.9, align 1
  %call18.1.9 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232)
  %scevgep40.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 1
  store i8 %call18.1.9, i8* %scevgep40.1.9, align 1
  %233 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.2.9 = getelementptr i8, i8* %b, i64 2
  %234 = load i8, i8* %scevgep37.2.9, align 1
  %call18.2.9 = call zeroext i8 @mult(i8 zeroext %233, i8 zeroext %234)
  %scevgep40.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 2
  store i8 %call18.2.9, i8* %scevgep40.2.9, align 1
  %235 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.3.9 = getelementptr i8, i8* %b, i64 3
  %236 = load i8, i8* %scevgep37.3.9, align 1
  %call18.3.9 = call zeroext i8 @mult(i8 zeroext %235, i8 zeroext %236)
  %scevgep40.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 3
  store i8 %call18.3.9, i8* %scevgep40.3.9, align 1
  %237 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.4.9 = getelementptr i8, i8* %b, i64 4
  %238 = load i8, i8* %scevgep37.4.9, align 1
  %call18.4.9 = call zeroext i8 @mult(i8 zeroext %237, i8 zeroext %238)
  %scevgep40.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 4
  store i8 %call18.4.9, i8* %scevgep40.4.9, align 1
  %239 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.5.9 = getelementptr i8, i8* %b, i64 5
  %240 = load i8, i8* %scevgep37.5.9, align 1
  %call18.5.9 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240)
  %scevgep40.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 5
  store i8 %call18.5.9, i8* %scevgep40.5.9, align 1
  %241 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.6.9 = getelementptr i8, i8* %b, i64 6
  %242 = load i8, i8* %scevgep37.6.9, align 1
  %call18.6.9 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242)
  %scevgep40.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 6
  store i8 %call18.6.9, i8* %scevgep40.6.9, align 1
  %243 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.7.9 = getelementptr i8, i8* %b, i64 7
  %244 = load i8, i8* %scevgep37.7.9, align 1
  %call18.7.9 = call zeroext i8 @mult(i8 zeroext %243, i8 zeroext %244)
  %scevgep40.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 7
  store i8 %call18.7.9, i8* %scevgep40.7.9, align 1
  %245 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.8.9 = getelementptr i8, i8* %b, i64 8
  %246 = load i8, i8* %scevgep37.8.9, align 1
  %call18.8.9 = call zeroext i8 @mult(i8 zeroext %245, i8 zeroext %246)
  %scevgep40.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 8
  store i8 %call18.8.9, i8* %scevgep40.8.9, align 1
  %247 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.9.9 = getelementptr i8, i8* %b, i64 9
  %248 = load i8, i8* %scevgep37.9.9, align 1
  %call18.9.9 = call zeroext i8 @mult(i8 zeroext %247, i8 zeroext %248)
  %scevgep40.9.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 9
  store i8 %call18.9.9, i8* %scevgep40.9.9, align 1
  %249 = load i8, i8* %arrayidx.9, align 1
  %scevgep37.10.9 = getelementptr i8, i8* %b, i64 10
  %250 = load i8, i8* %scevgep37.10.9, align 1
  %call18.10.9 = call zeroext i8 @mult(i8 zeroext %249, i8 zeroext %250)
  %scevgep40.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 0, i64 10
  store i8 %call18.10.9, i8* %scevgep40.10.9, align 1
  %scevgep39.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %228, i64 0, i64 1, i64 0
  %251 = bitcast i8* %scevgep39.9 to [11 x [11 x i8]]*
  %arrayidx.10 = getelementptr inbounds i8, i8* %a, i64 10
  %252 = load i8, i8* %arrayidx.10, align 1
  %253 = load i8, i8* %b, align 1
  %call18.1077 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253)
  %scevgep40.1078 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 0
  store i8 %call18.1077, i8* %scevgep40.1078, align 1
  %254 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.1.10 = getelementptr i8, i8* %b, i64 1
  %255 = load i8, i8* %scevgep37.1.10, align 1
  %call18.1.10 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255)
  %scevgep40.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 1
  store i8 %call18.1.10, i8* %scevgep40.1.10, align 1
  %256 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.2.10 = getelementptr i8, i8* %b, i64 2
  %257 = load i8, i8* %scevgep37.2.10, align 1
  %call18.2.10 = call zeroext i8 @mult(i8 zeroext %256, i8 zeroext %257)
  %scevgep40.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 2
  store i8 %call18.2.10, i8* %scevgep40.2.10, align 1
  %258 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.3.10 = getelementptr i8, i8* %b, i64 3
  %259 = load i8, i8* %scevgep37.3.10, align 1
  %call18.3.10 = call zeroext i8 @mult(i8 zeroext %258, i8 zeroext %259)
  %scevgep40.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 3
  store i8 %call18.3.10, i8* %scevgep40.3.10, align 1
  %260 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.4.10 = getelementptr i8, i8* %b, i64 4
  %261 = load i8, i8* %scevgep37.4.10, align 1
  %call18.4.10 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261)
  %scevgep40.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 4
  store i8 %call18.4.10, i8* %scevgep40.4.10, align 1
  %262 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.5.10 = getelementptr i8, i8* %b, i64 5
  %263 = load i8, i8* %scevgep37.5.10, align 1
  %call18.5.10 = call zeroext i8 @mult(i8 zeroext %262, i8 zeroext %263)
  %scevgep40.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 5
  store i8 %call18.5.10, i8* %scevgep40.5.10, align 1
  %264 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.6.10 = getelementptr i8, i8* %b, i64 6
  %265 = load i8, i8* %scevgep37.6.10, align 1
  %call18.6.10 = call zeroext i8 @mult(i8 zeroext %264, i8 zeroext %265)
  %scevgep40.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 6
  store i8 %call18.6.10, i8* %scevgep40.6.10, align 1
  %266 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.7.10 = getelementptr i8, i8* %b, i64 7
  %267 = load i8, i8* %scevgep37.7.10, align 1
  %call18.7.10 = call zeroext i8 @mult(i8 zeroext %266, i8 zeroext %267)
  %scevgep40.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 7
  store i8 %call18.7.10, i8* %scevgep40.7.10, align 1
  %268 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.8.10 = getelementptr i8, i8* %b, i64 8
  %269 = load i8, i8* %scevgep37.8.10, align 1
  %call18.8.10 = call zeroext i8 @mult(i8 zeroext %268, i8 zeroext %269)
  %scevgep40.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 8
  store i8 %call18.8.10, i8* %scevgep40.8.10, align 1
  %270 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.9.10 = getelementptr i8, i8* %b, i64 9
  %271 = load i8, i8* %scevgep37.9.10, align 1
  %call18.9.10 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %271)
  %scevgep40.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 9
  store i8 %call18.9.10, i8* %scevgep40.9.10, align 1
  %272 = load i8, i8* %arrayidx.10, align 1
  %scevgep37.10.10 = getelementptr i8, i8* %b, i64 10
  %273 = load i8, i8* %scevgep37.10.10, align 1
  %call18.10.10 = call zeroext i8 @mult(i8 zeroext %272, i8 zeroext %273)
  %scevgep40.10.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %251, i64 0, i64 0, i64 10
  store i8 %call18.10.10, i8* %scevgep40.10.10, align 1
  %scevgep28 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 10
  %scevgep2829 = bitcast i8* %scevgep28 to [11 x [11 x i8]]*
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep28, align 1
  %scevgep33 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep2829, i64 0, i64 0, i64 -2
  %274 = bitcast i8* %scevgep33 to [11 x [11 x i8]]*
  %call37.1252 = call zeroext i8 (...) @rand()
  store i8 %call37.1252, i8* %scevgep33, align 1
  %scevgep33.1253 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %274, i64 0, i64 0, i64 -2
  %275 = bitcast i8* %scevgep33.1253 to [11 x [11 x i8]]*
  %call37.2255 = call zeroext i8 (...) @rand()
  store i8 %call37.2255, i8* %scevgep33.1253, align 1
  %scevgep33.2256 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %275, i64 0, i64 0, i64 -2
  %276 = bitcast i8* %scevgep33.2256 to [11 x [11 x i8]]*
  %call37.3258 = call zeroext i8 (...) @rand()
  store i8 %call37.3258, i8* %scevgep33.2256, align 1
  %scevgep33.3259 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %276, i64 0, i64 0, i64 -2
  %call37.4261 = call zeroext i8 (...) @rand()
  store i8 %call37.4261, i8* %scevgep33.3259, align 1
  %scevgep31 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep2829, i64 0, i64 1, i64 0
  %277 = bitcast i8* %scevgep31 to [11 x [11 x i8]]*
  %call37.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1, i8* %scevgep31, align 1
  %scevgep33.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %277, i64 0, i64 0, i64 -2
  %278 = bitcast i8* %scevgep33.1 to [11 x [11 x i8]]*
  %call37.1.1 = call zeroext i8 (...) @rand()
  store i8 %call37.1.1, i8* %scevgep33.1, align 1
  %scevgep33.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %278, i64 0, i64 0, i64 -2
  %279 = bitcast i8* %scevgep33.1.1 to [11 x [11 x i8]]*
  %call37.1.2 = call zeroext i8 (...) @rand()
  store i8 %call37.1.2, i8* %scevgep33.1.1, align 1
  %scevgep33.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %279, i64 0, i64 0, i64 -2
  %280 = bitcast i8* %scevgep33.1.2 to [11 x [11 x i8]]*
  %call37.1.3 = call zeroext i8 (...) @rand()
  store i8 %call37.1.3, i8* %scevgep33.1.2, align 1
  %scevgep33.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %280, i64 0, i64 0, i64 -2
  %call37.1.4 = call zeroext i8 (...) @rand()
  store i8 %call37.1.4, i8* %scevgep33.1.3, align 1
  %scevgep31.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %277, i64 0, i64 1, i64 0
  %281 = bitcast i8* %scevgep31.1 to [11 x [11 x i8]]*
  %call37.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2, i8* %scevgep31.1, align 1
  %scevgep33.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %281, i64 0, i64 0, i64 -2
  %282 = bitcast i8* %scevgep33.2 to [11 x [11 x i8]]*
  %call37.2.1 = call zeroext i8 (...) @rand()
  store i8 %call37.2.1, i8* %scevgep33.2, align 1
  %scevgep33.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %282, i64 0, i64 0, i64 -2
  %283 = bitcast i8* %scevgep33.2.1 to [11 x [11 x i8]]*
  %call37.2.2 = call zeroext i8 (...) @rand()
  store i8 %call37.2.2, i8* %scevgep33.2.1, align 1
  %scevgep33.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %283, i64 0, i64 0, i64 -2
  %call37.2.3 = call zeroext i8 (...) @rand()
  store i8 %call37.2.3, i8* %scevgep33.2.2, align 1
  %scevgep31.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %281, i64 0, i64 1, i64 0
  %284 = bitcast i8* %scevgep31.2 to [11 x [11 x i8]]*
  %call37.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3, i8* %scevgep31.2, align 1
  %scevgep33.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %284, i64 0, i64 0, i64 -2
  %285 = bitcast i8* %scevgep33.3 to [11 x [11 x i8]]*
  %call37.3.1 = call zeroext i8 (...) @rand()
  store i8 %call37.3.1, i8* %scevgep33.3, align 1
  %scevgep33.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %285, i64 0, i64 0, i64 -2
  %286 = bitcast i8* %scevgep33.3.1 to [11 x [11 x i8]]*
  %call37.3.2 = call zeroext i8 (...) @rand()
  store i8 %call37.3.2, i8* %scevgep33.3.1, align 1
  %scevgep33.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %286, i64 0, i64 0, i64 -2
  %call37.3.3 = call zeroext i8 (...) @rand()
  store i8 %call37.3.3, i8* %scevgep33.3.2, align 1
  %scevgep31.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %284, i64 0, i64 1, i64 0
  %287 = bitcast i8* %scevgep31.3 to [11 x [11 x i8]]*
  %call37.4 = call zeroext i8 (...) @rand()
  store i8 %call37.4, i8* %scevgep31.3, align 1
  %scevgep33.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %287, i64 0, i64 0, i64 -2
  %288 = bitcast i8* %scevgep33.4 to [11 x [11 x i8]]*
  %call37.4.1 = call zeroext i8 (...) @rand()
  store i8 %call37.4.1, i8* %scevgep33.4, align 1
  %scevgep33.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %288, i64 0, i64 0, i64 -2
  %call37.4.2 = call zeroext i8 (...) @rand()
  store i8 %call37.4.2, i8* %scevgep33.4.1, align 1
  %scevgep31.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %287, i64 0, i64 1, i64 0
  %289 = bitcast i8* %scevgep31.4 to [11 x [11 x i8]]*
  %call37.5 = call zeroext i8 (...) @rand()
  store i8 %call37.5, i8* %scevgep31.4, align 1
  %scevgep33.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %289, i64 0, i64 0, i64 -2
  %290 = bitcast i8* %scevgep33.5 to [11 x [11 x i8]]*
  %call37.5.1 = call zeroext i8 (...) @rand()
  store i8 %call37.5.1, i8* %scevgep33.5, align 1
  %scevgep33.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %290, i64 0, i64 0, i64 -2
  %call37.5.2 = call zeroext i8 (...) @rand()
  store i8 %call37.5.2, i8* %scevgep33.5.1, align 1
  %scevgep31.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %289, i64 0, i64 1, i64 0
  %291 = bitcast i8* %scevgep31.5 to [11 x [11 x i8]]*
  %call37.6 = call zeroext i8 (...) @rand()
  store i8 %call37.6, i8* %scevgep31.5, align 1
  %scevgep33.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %291, i64 0, i64 0, i64 -2
  %call37.6.1 = call zeroext i8 (...) @rand()
  store i8 %call37.6.1, i8* %scevgep33.6, align 1
  %scevgep31.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %291, i64 0, i64 1, i64 0
  %292 = bitcast i8* %scevgep31.6 to [11 x [11 x i8]]*
  %call37.7 = call zeroext i8 (...) @rand()
  store i8 %call37.7, i8* %scevgep31.6, align 1
  %scevgep33.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %292, i64 0, i64 0, i64 -2
  %call37.7.1 = call zeroext i8 (...) @rand()
  store i8 %call37.7.1, i8* %scevgep33.7, align 1
  %scevgep31.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %292, i64 0, i64 1, i64 0
  %293 = bitcast i8* %scevgep31.7 to [11 x [11 x i8]]*
  %call37.8 = call zeroext i8 (...) @rand()
  store i8 %call37.8, i8* %scevgep31.7, align 1
  %scevgep31.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %293, i64 0, i64 1, i64 0
  %call37.9 = call zeroext i8 (...) @rand()
  store i8 %call37.9, i8* %scevgep31.8, align 1
  %call53 = call zeroext i8 (...) @rand()
  %scevgep26 = getelementptr [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  store i8 %call53, i8* %scevgep26, align 1
  %call53.1 = call zeroext i8 (...) @rand()
  %scevgep26.1 = getelementptr [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  store i8 %call53.1, i8* %scevgep26.1, align 1
  %call53.2 = call zeroext i8 (...) @rand()
  %scevgep26.2 = getelementptr [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  store i8 %call53.2, i8* %scevgep26.2, align 1
  %call53.3 = call zeroext i8 (...) @rand()
  %scevgep26.3 = getelementptr [11 x i8], [11 x i8]* %rr, i64 0, i64 3
  store i8 %call53.3, i8* %scevgep26.3, align 1
  %call53.4 = call zeroext i8 (...) @rand()
  %scevgep26.4 = getelementptr [11 x i8], [11 x i8]* %rr, i64 0, i64 1
  store i8 %call53.4, i8* %scevgep26.4, align 1
  %arrayidx65 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65, i64 0, i64 0
  %294 = load i8, i8* %arrayidx67, align 1
  store i8 %294, i8* %c, align 1
  %arrayidx77 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 0
  %arrayidx117 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77, i64 0, i64 10
  %295 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %295 to i32
  %arrayidx84 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82, i64 0, i64 10
  %296 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %296 to i32
  %xor = xor i32 %conv80, %conv85
  %arrayidx87 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87, i64 0, i64 0
  %297 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %297 to i32
  %xor91 = xor i32 %xor, %conv90
  %arrayidx94 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %298 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %298 to i32
  %xor96 = xor i32 %xor91, %conv95
  %arrayidx101 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98, i64 0, i64 9
  %299 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %299 to i32
  %xor103 = xor i32 %xor96, %conv102
  %arrayidx106 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106, i64 0, i64 0
  %300 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %300 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %arrayidx115 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113, i64 0, i64 10
  store i8 %conv111, i8* %arrayidx115, align 1
  %arrayidx119 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117, i64 0, i64 10
  %301 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %301 to i32
  %302 = load i8, i8* %c, align 1
  %conv123 = zext i8 %302 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %c, align 1
  %arrayidx79.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77, i64 0, i64 8
  %303 = load i8, i8* %arrayidx79.1, align 1
  %conv80.1 = zext i8 %303 to i32
  %arrayidx84.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82, i64 0, i64 8
  %304 = load i8, i8* %arrayidx84.1, align 1
  %conv85.1 = zext i8 %304 to i32
  %xor.1 = xor i32 %conv80.1, %conv85.1
  %arrayidx87.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1, i64 0, i64 0
  %305 = load i8, i8* %arrayidx89.1, align 1
  %conv90.1 = zext i8 %305 to i32
  %xor91.1 = xor i32 %xor.1, %conv90.1
  %arrayidx94.1 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %306 = load i8, i8* %arrayidx94.1, align 1
  %conv95.1 = zext i8 %306 to i32
  %xor96.1 = xor i32 %xor91.1, %conv95.1
  %arrayidx101.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98, i64 0, i64 7
  %307 = load i8, i8* %arrayidx101.1, align 1
  %conv102.1 = zext i8 %307 to i32
  %xor103.1 = xor i32 %xor96.1, %conv102.1
  %arrayidx106.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1, i64 0, i64 0
  %308 = load i8, i8* %arrayidx108.1, align 1
  %conv109.1 = zext i8 %308 to i32
  %xor110.1 = xor i32 %xor103.1, %conv109.1
  %conv111.1 = trunc i32 %xor110.1 to i8
  %arrayidx115.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113, i64 0, i64 8
  store i8 %conv111.1, i8* %arrayidx115.1, align 1
  %arrayidx119.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117, i64 0, i64 8
  %309 = load i8, i8* %arrayidx119.1, align 1
  %conv120.1 = zext i8 %309 to i32
  %310 = load i8, i8* %c, align 1
  %conv123.1 = zext i8 %310 to i32
  %xor124.1 = xor i32 %conv123.1, %conv120.1
  %conv125.1 = trunc i32 %xor124.1 to i8
  store i8 %conv125.1, i8* %c, align 1
  %arrayidx79.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77, i64 0, i64 6
  %311 = load i8, i8* %arrayidx79.2, align 1
  %conv80.2 = zext i8 %311 to i32
  %arrayidx84.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82, i64 0, i64 6
  %312 = load i8, i8* %arrayidx84.2, align 1
  %conv85.2 = zext i8 %312 to i32
  %xor.2 = xor i32 %conv80.2, %conv85.2
  %arrayidx87.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx89.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.2, i64 0, i64 0
  %313 = load i8, i8* %arrayidx89.2, align 1
  %conv90.2 = zext i8 %313 to i32
  %xor91.2 = xor i32 %xor.2, %conv90.2
  %arrayidx94.2 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  %314 = load i8, i8* %arrayidx94.2, align 1
  %conv95.2 = zext i8 %314 to i32
  %xor96.2 = xor i32 %xor91.2, %conv95.2
  %arrayidx101.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98, i64 0, i64 5
  %315 = load i8, i8* %arrayidx101.2, align 1
  %conv102.2 = zext i8 %315 to i32
  %xor103.2 = xor i32 %xor96.2, %conv102.2
  %arrayidx106.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx108.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.2, i64 0, i64 0
  %316 = load i8, i8* %arrayidx108.2, align 1
  %conv109.2 = zext i8 %316 to i32
  %xor110.2 = xor i32 %xor103.2, %conv109.2
  %conv111.2 = trunc i32 %xor110.2 to i8
  %arrayidx115.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113, i64 0, i64 6
  store i8 %conv111.2, i8* %arrayidx115.2, align 1
  %arrayidx119.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117, i64 0, i64 6
  %317 = load i8, i8* %arrayidx119.2, align 1
  %conv120.2 = zext i8 %317 to i32
  %318 = load i8, i8* %c, align 1
  %conv123.2 = zext i8 %318 to i32
  %xor124.2 = xor i32 %conv123.2, %conv120.2
  %conv125.2 = trunc i32 %xor124.2 to i8
  store i8 %conv125.2, i8* %c, align 1
  %arrayidx79.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77, i64 0, i64 4
  %319 = load i8, i8* %arrayidx79.3, align 1
  %conv80.3 = zext i8 %319 to i32
  %arrayidx84.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82, i64 0, i64 4
  %320 = load i8, i8* %arrayidx84.3, align 1
  %conv85.3 = zext i8 %320 to i32
  %xor.3 = xor i32 %conv80.3, %conv85.3
  %arrayidx87.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx89.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.3, i64 0, i64 0
  %321 = load i8, i8* %arrayidx89.3, align 1
  %conv90.3 = zext i8 %321 to i32
  %xor91.3 = xor i32 %xor.3, %conv90.3
  %arrayidx94.3 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 3
  %322 = load i8, i8* %arrayidx94.3, align 1
  %conv95.3 = zext i8 %322 to i32
  %xor96.3 = xor i32 %xor91.3, %conv95.3
  %arrayidx101.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98, i64 0, i64 3
  %323 = load i8, i8* %arrayidx101.3, align 1
  %conv102.3 = zext i8 %323 to i32
  %xor103.3 = xor i32 %xor96.3, %conv102.3
  %arrayidx106.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx108.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.3, i64 0, i64 0
  %324 = load i8, i8* %arrayidx108.3, align 1
  %conv109.3 = zext i8 %324 to i32
  %xor110.3 = xor i32 %xor103.3, %conv109.3
  %conv111.3 = trunc i32 %xor110.3 to i8
  %arrayidx115.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113, i64 0, i64 4
  store i8 %conv111.3, i8* %arrayidx115.3, align 1
  %arrayidx119.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117, i64 0, i64 4
  %325 = load i8, i8* %arrayidx119.3, align 1
  %conv120.3 = zext i8 %325 to i32
  %326 = load i8, i8* %c, align 1
  %conv123.3 = zext i8 %326 to i32
  %xor124.3 = xor i32 %conv123.3, %conv120.3
  %conv125.3 = trunc i32 %xor124.3 to i8
  store i8 %conv125.3, i8* %c, align 1
  %arrayidx79.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77, i64 0, i64 2
  %327 = load i8, i8* %arrayidx79.4, align 1
  %conv80.4 = zext i8 %327 to i32
  %arrayidx84.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82, i64 0, i64 2
  %328 = load i8, i8* %arrayidx84.4, align 1
  %conv85.4 = zext i8 %328 to i32
  %xor.4 = xor i32 %conv80.4, %conv85.4
  %arrayidx87.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 2
  %arrayidx89.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.4, i64 0, i64 0
  %329 = load i8, i8* %arrayidx89.4, align 1
  %conv90.4 = zext i8 %329 to i32
  %xor91.4 = xor i32 %xor.4, %conv90.4
  %arrayidx94.4 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 1
  %330 = load i8, i8* %arrayidx94.4, align 1
  %conv95.4 = zext i8 %330 to i32
  %xor96.4 = xor i32 %xor91.4, %conv95.4
  %arrayidx101.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98, i64 0, i64 1
  %331 = load i8, i8* %arrayidx101.4, align 1
  %conv102.4 = zext i8 %331 to i32
  %xor103.4 = xor i32 %xor96.4, %conv102.4
  %arrayidx106.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 1
  %arrayidx108.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.4, i64 0, i64 0
  %332 = load i8, i8* %arrayidx108.4, align 1
  %conv109.4 = zext i8 %332 to i32
  %xor110.4 = xor i32 %xor103.4, %conv109.4
  %conv111.4 = trunc i32 %xor110.4 to i8
  %arrayidx115.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113, i64 0, i64 2
  store i8 %conv111.4, i8* %arrayidx115.4, align 1
  %arrayidx119.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117, i64 0, i64 2
  %333 = load i8, i8* %arrayidx119.4, align 1
  %conv120.4 = zext i8 %333 to i32
  %334 = load i8, i8* %c, align 1
  %conv123.4 = zext i8 %334 to i32
  %xor124.4 = xor i32 %conv123.4, %conv120.4
  %conv125.4 = trunc i32 %xor124.4 to i8
  store i8 %conv125.4, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.1, i64 0, i64 1
  %335 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %335, i8* %arrayidx69.1, align 1
  %arrayidx77.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1
  %arrayidx82.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 1
  %arrayidx98.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 1
  %arrayidx113.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 1
  %arrayidx117.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 1
  %arrayidx122.1 = getelementptr inbounds i8, i8* %c, i64 1
  %arrayidx79.186 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.1, i64 0, i64 10
  %336 = load i8, i8* %arrayidx79.186, align 1
  %conv80.187 = zext i8 %336 to i32
  %arrayidx84.188 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.1, i64 0, i64 10
  %337 = load i8, i8* %arrayidx84.188, align 1
  %conv85.189 = zext i8 %337 to i32
  %xor.190 = xor i32 %conv80.187, %conv85.189
  %arrayidx87.191 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.192 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.191, i64 0, i64 1
  %338 = load i8, i8* %arrayidx89.192, align 1
  %conv90.193 = zext i8 %338 to i32
  %xor91.194 = xor i32 %xor.190, %conv90.193
  %arrayidx94.195 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %339 = load i8, i8* %arrayidx94.195, align 1
  %conv95.196 = zext i8 %339 to i32
  %xor96.197 = xor i32 %xor91.194, %conv95.196
  %arrayidx101.198 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.1, i64 0, i64 9
  %340 = load i8, i8* %arrayidx101.198, align 1
  %conv102.199 = zext i8 %340 to i32
  %xor103.1100 = xor i32 %xor96.197, %conv102.199
  %arrayidx106.1101 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.1102 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1101, i64 0, i64 1
  %341 = load i8, i8* %arrayidx108.1102, align 1
  %conv109.1103 = zext i8 %341 to i32
  %xor110.1104 = xor i32 %xor103.1100, %conv109.1103
  %conv111.1105 = trunc i32 %xor110.1104 to i8
  %arrayidx115.1106 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.1, i64 0, i64 10
  store i8 %conv111.1105, i8* %arrayidx115.1106, align 1
  %arrayidx119.1107 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.1, i64 0, i64 10
  %342 = load i8, i8* %arrayidx119.1107, align 1
  %conv120.1108 = zext i8 %342 to i32
  %343 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1109 = zext i8 %343 to i32
  %xor124.1110 = xor i32 %conv123.1109, %conv120.1108
  %conv125.1111 = trunc i32 %xor124.1110 to i8
  store i8 %conv125.1111, i8* %arrayidx122.1, align 1
  %arrayidx79.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.1, i64 0, i64 8
  %344 = load i8, i8* %arrayidx79.1.1, align 1
  %conv80.1.1 = zext i8 %344 to i32
  %arrayidx84.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.1, i64 0, i64 8
  %345 = load i8, i8* %arrayidx84.1.1, align 1
  %conv85.1.1 = zext i8 %345 to i32
  %xor.1.1 = xor i32 %conv80.1.1, %conv85.1.1
  %arrayidx87.1.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1.1, i64 0, i64 1
  %346 = load i8, i8* %arrayidx89.1.1, align 1
  %conv90.1.1 = zext i8 %346 to i32
  %xor91.1.1 = xor i32 %xor.1.1, %conv90.1.1
  %arrayidx94.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %347 = load i8, i8* %arrayidx94.1.1, align 1
  %conv95.1.1 = zext i8 %347 to i32
  %xor96.1.1 = xor i32 %xor91.1.1, %conv95.1.1
  %arrayidx101.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.1, i64 0, i64 7
  %348 = load i8, i8* %arrayidx101.1.1, align 1
  %conv102.1.1 = zext i8 %348 to i32
  %xor103.1.1 = xor i32 %xor96.1.1, %conv102.1.1
  %arrayidx106.1.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1.1, i64 0, i64 1
  %349 = load i8, i8* %arrayidx108.1.1, align 1
  %conv109.1.1 = zext i8 %349 to i32
  %xor110.1.1 = xor i32 %xor103.1.1, %conv109.1.1
  %conv111.1.1 = trunc i32 %xor110.1.1 to i8
  %arrayidx115.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.1, i64 0, i64 8
  store i8 %conv111.1.1, i8* %arrayidx115.1.1, align 1
  %arrayidx119.1.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.1, i64 0, i64 8
  %350 = load i8, i8* %arrayidx119.1.1, align 1
  %conv120.1.1 = zext i8 %350 to i32
  %351 = load i8, i8* %arrayidx122.1, align 1
  %conv123.1.1 = zext i8 %351 to i32
  %xor124.1.1 = xor i32 %conv123.1.1, %conv120.1.1
  %conv125.1.1 = trunc i32 %xor124.1.1 to i8
  store i8 %conv125.1.1, i8* %arrayidx122.1, align 1
  %arrayidx79.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.1, i64 0, i64 6
  %352 = load i8, i8* %arrayidx79.2.1, align 1
  %conv80.2.1 = zext i8 %352 to i32
  %arrayidx84.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.1, i64 0, i64 6
  %353 = load i8, i8* %arrayidx84.2.1, align 1
  %conv85.2.1 = zext i8 %353 to i32
  %xor.2.1 = xor i32 %conv80.2.1, %conv85.2.1
  %arrayidx87.2.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx89.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.2.1, i64 0, i64 1
  %354 = load i8, i8* %arrayidx89.2.1, align 1
  %conv90.2.1 = zext i8 %354 to i32
  %xor91.2.1 = xor i32 %xor.2.1, %conv90.2.1
  %arrayidx94.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  %355 = load i8, i8* %arrayidx94.2.1, align 1
  %conv95.2.1 = zext i8 %355 to i32
  %xor96.2.1 = xor i32 %xor91.2.1, %conv95.2.1
  %arrayidx101.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.1, i64 0, i64 5
  %356 = load i8, i8* %arrayidx101.2.1, align 1
  %conv102.2.1 = zext i8 %356 to i32
  %xor103.2.1 = xor i32 %xor96.2.1, %conv102.2.1
  %arrayidx106.2.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx108.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.2.1, i64 0, i64 1
  %357 = load i8, i8* %arrayidx108.2.1, align 1
  %conv109.2.1 = zext i8 %357 to i32
  %xor110.2.1 = xor i32 %xor103.2.1, %conv109.2.1
  %conv111.2.1 = trunc i32 %xor110.2.1 to i8
  %arrayidx115.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.1, i64 0, i64 6
  store i8 %conv111.2.1, i8* %arrayidx115.2.1, align 1
  %arrayidx119.2.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.1, i64 0, i64 6
  %358 = load i8, i8* %arrayidx119.2.1, align 1
  %conv120.2.1 = zext i8 %358 to i32
  %359 = load i8, i8* %arrayidx122.1, align 1
  %conv123.2.1 = zext i8 %359 to i32
  %xor124.2.1 = xor i32 %conv123.2.1, %conv120.2.1
  %conv125.2.1 = trunc i32 %xor124.2.1 to i8
  store i8 %conv125.2.1, i8* %arrayidx122.1, align 1
  %arrayidx79.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.1, i64 0, i64 4
  %360 = load i8, i8* %arrayidx79.3.1, align 1
  %conv80.3.1 = zext i8 %360 to i32
  %arrayidx84.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.1, i64 0, i64 4
  %361 = load i8, i8* %arrayidx84.3.1, align 1
  %conv85.3.1 = zext i8 %361 to i32
  %xor.3.1 = xor i32 %conv80.3.1, %conv85.3.1
  %arrayidx87.3.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx89.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.3.1, i64 0, i64 1
  %362 = load i8, i8* %arrayidx89.3.1, align 1
  %conv90.3.1 = zext i8 %362 to i32
  %xor91.3.1 = xor i32 %xor.3.1, %conv90.3.1
  %arrayidx94.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 3
  %363 = load i8, i8* %arrayidx94.3.1, align 1
  %conv95.3.1 = zext i8 %363 to i32
  %xor96.3.1 = xor i32 %xor91.3.1, %conv95.3.1
  %arrayidx101.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.1, i64 0, i64 3
  %364 = load i8, i8* %arrayidx101.3.1, align 1
  %conv102.3.1 = zext i8 %364 to i32
  %xor103.3.1 = xor i32 %xor96.3.1, %conv102.3.1
  %arrayidx106.3.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx108.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.3.1, i64 0, i64 1
  %365 = load i8, i8* %arrayidx108.3.1, align 1
  %conv109.3.1 = zext i8 %365 to i32
  %xor110.3.1 = xor i32 %xor103.3.1, %conv109.3.1
  %conv111.3.1 = trunc i32 %xor110.3.1 to i8
  %arrayidx115.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.1, i64 0, i64 4
  store i8 %conv111.3.1, i8* %arrayidx115.3.1, align 1
  %arrayidx119.3.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.1, i64 0, i64 4
  %366 = load i8, i8* %arrayidx119.3.1, align 1
  %conv120.3.1 = zext i8 %366 to i32
  %367 = load i8, i8* %arrayidx122.1, align 1
  %conv123.3.1 = zext i8 %367 to i32
  %xor124.3.1 = xor i32 %conv123.3.1, %conv120.3.1
  %conv125.3.1 = trunc i32 %xor124.3.1 to i8
  store i8 %conv125.3.1, i8* %arrayidx122.1, align 1
  %arrayidx132.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1
  %arrayidx135.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx132.1, i64 0, i64 2
  %368 = load i8, i8* %arrayidx135.1, align 1
  %conv136.1 = zext i8 %368 to i32
  %arrayidx138.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 1
  %arrayidx141.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx138.1, i64 0, i64 2
  %369 = load i8, i8* %arrayidx141.1, align 1
  %conv142.1 = zext i8 %369 to i32
  %xor143.1 = xor i32 %conv136.1, %conv142.1
  %arrayidx146.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 2
  %arrayidx148.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx146.1, i64 0, i64 1
  %370 = load i8, i8* %arrayidx148.1, align 1
  %conv149.1 = zext i8 %370 to i32
  %xor150.1 = xor i32 %xor143.1, %conv149.1
  %conv151.1 = trunc i32 %xor150.1 to i8
  %arrayidx153.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 1
  %arrayidx156.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx153.1, i64 0, i64 2
  store i8 %conv151.1, i8* %arrayidx156.1, align 1
  %arrayidx158.1 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 1
  %arrayidx161.1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx158.1, i64 0, i64 2
  %371 = load i8, i8* %arrayidx161.1, align 1
  %conv162.1 = zext i8 %371 to i32
  %arrayidx164.1 = getelementptr inbounds i8, i8* %c, i64 1
  %372 = load i8, i8* %arrayidx164.1, align 1
  %conv165.1 = zext i8 %372 to i32
  %xor166.1 = xor i32 %conv165.1, %conv162.1
  %conv167.1 = trunc i32 %xor166.1 to i8
  store i8 %conv167.1, i8* %arrayidx164.1, align 1
  %arrayidx173.1 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 1
  %373 = load i8, i8* %arrayidx173.1, align 1
  %conv174.1 = zext i8 %373 to i32
  %arrayidx176.1 = getelementptr inbounds i8, i8* %c, i64 1
  %374 = load i8, i8* %arrayidx176.1, align 1
  %conv177.1 = zext i8 %374 to i32
  %xor178.1 = xor i32 %conv177.1, %conv174.1
  %conv179.1 = trunc i32 %xor178.1 to i8
  store i8 %conv179.1, i8* %arrayidx176.1, align 1
  %arrayidx65.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 2
  %arrayidx67.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.2, i64 0, i64 2
  %375 = load i8, i8* %arrayidx67.2, align 1
  %arrayidx69.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %375, i8* %arrayidx69.2, align 1
  %arrayidx77.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2
  %arrayidx82.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 2
  %arrayidx98.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 2
  %arrayidx113.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 2
  %arrayidx117.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 2
  %arrayidx122.2 = getelementptr inbounds i8, i8* %c, i64 2
  %arrayidx79.2128 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.2, i64 0, i64 10
  %376 = load i8, i8* %arrayidx79.2128, align 1
  %conv80.2129 = zext i8 %376 to i32
  %arrayidx84.2130 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.2, i64 0, i64 10
  %377 = load i8, i8* %arrayidx84.2130, align 1
  %conv85.2131 = zext i8 %377 to i32
  %xor.2132 = xor i32 %conv80.2129, %conv85.2131
  %arrayidx87.2133 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.2134 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.2133, i64 0, i64 2
  %378 = load i8, i8* %arrayidx89.2134, align 1
  %conv90.2135 = zext i8 %378 to i32
  %xor91.2136 = xor i32 %xor.2132, %conv90.2135
  %arrayidx94.2137 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %379 = load i8, i8* %arrayidx94.2137, align 1
  %conv95.2138 = zext i8 %379 to i32
  %xor96.2139 = xor i32 %xor91.2136, %conv95.2138
  %arrayidx101.2140 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.2, i64 0, i64 9
  %380 = load i8, i8* %arrayidx101.2140, align 1
  %conv102.2141 = zext i8 %380 to i32
  %xor103.2142 = xor i32 %xor96.2139, %conv102.2141
  %arrayidx106.2143 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.2144 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.2143, i64 0, i64 2
  %381 = load i8, i8* %arrayidx108.2144, align 1
  %conv109.2145 = zext i8 %381 to i32
  %xor110.2146 = xor i32 %xor103.2142, %conv109.2145
  %conv111.2147 = trunc i32 %xor110.2146 to i8
  %arrayidx115.2148 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.2, i64 0, i64 10
  store i8 %conv111.2147, i8* %arrayidx115.2148, align 1
  %arrayidx119.2149 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.2, i64 0, i64 10
  %382 = load i8, i8* %arrayidx119.2149, align 1
  %conv120.2150 = zext i8 %382 to i32
  %383 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2151 = zext i8 %383 to i32
  %xor124.2152 = xor i32 %conv123.2151, %conv120.2150
  %conv125.2153 = trunc i32 %xor124.2152 to i8
  store i8 %conv125.2153, i8* %arrayidx122.2, align 1
  %arrayidx79.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.2, i64 0, i64 8
  %384 = load i8, i8* %arrayidx79.1.2, align 1
  %conv80.1.2 = zext i8 %384 to i32
  %arrayidx84.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.2, i64 0, i64 8
  %385 = load i8, i8* %arrayidx84.1.2, align 1
  %conv85.1.2 = zext i8 %385 to i32
  %xor.1.2 = xor i32 %conv80.1.2, %conv85.1.2
  %arrayidx87.1.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1.2, i64 0, i64 2
  %386 = load i8, i8* %arrayidx89.1.2, align 1
  %conv90.1.2 = zext i8 %386 to i32
  %xor91.1.2 = xor i32 %xor.1.2, %conv90.1.2
  %arrayidx94.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %387 = load i8, i8* %arrayidx94.1.2, align 1
  %conv95.1.2 = zext i8 %387 to i32
  %xor96.1.2 = xor i32 %xor91.1.2, %conv95.1.2
  %arrayidx101.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.2, i64 0, i64 7
  %388 = load i8, i8* %arrayidx101.1.2, align 1
  %conv102.1.2 = zext i8 %388 to i32
  %xor103.1.2 = xor i32 %xor96.1.2, %conv102.1.2
  %arrayidx106.1.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1.2, i64 0, i64 2
  %389 = load i8, i8* %arrayidx108.1.2, align 1
  %conv109.1.2 = zext i8 %389 to i32
  %xor110.1.2 = xor i32 %xor103.1.2, %conv109.1.2
  %conv111.1.2 = trunc i32 %xor110.1.2 to i8
  %arrayidx115.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.2, i64 0, i64 8
  store i8 %conv111.1.2, i8* %arrayidx115.1.2, align 1
  %arrayidx119.1.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.2, i64 0, i64 8
  %390 = load i8, i8* %arrayidx119.1.2, align 1
  %conv120.1.2 = zext i8 %390 to i32
  %391 = load i8, i8* %arrayidx122.2, align 1
  %conv123.1.2 = zext i8 %391 to i32
  %xor124.1.2 = xor i32 %conv123.1.2, %conv120.1.2
  %conv125.1.2 = trunc i32 %xor124.1.2 to i8
  store i8 %conv125.1.2, i8* %arrayidx122.2, align 1
  %arrayidx79.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.2, i64 0, i64 6
  %392 = load i8, i8* %arrayidx79.2.2, align 1
  %conv80.2.2 = zext i8 %392 to i32
  %arrayidx84.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.2, i64 0, i64 6
  %393 = load i8, i8* %arrayidx84.2.2, align 1
  %conv85.2.2 = zext i8 %393 to i32
  %xor.2.2 = xor i32 %conv80.2.2, %conv85.2.2
  %arrayidx87.2.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx89.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.2.2, i64 0, i64 2
  %394 = load i8, i8* %arrayidx89.2.2, align 1
  %conv90.2.2 = zext i8 %394 to i32
  %xor91.2.2 = xor i32 %xor.2.2, %conv90.2.2
  %arrayidx94.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  %395 = load i8, i8* %arrayidx94.2.2, align 1
  %conv95.2.2 = zext i8 %395 to i32
  %xor96.2.2 = xor i32 %xor91.2.2, %conv95.2.2
  %arrayidx101.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.2, i64 0, i64 5
  %396 = load i8, i8* %arrayidx101.2.2, align 1
  %conv102.2.2 = zext i8 %396 to i32
  %xor103.2.2 = xor i32 %xor96.2.2, %conv102.2.2
  %arrayidx106.2.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx108.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.2.2, i64 0, i64 2
  %397 = load i8, i8* %arrayidx108.2.2, align 1
  %conv109.2.2 = zext i8 %397 to i32
  %xor110.2.2 = xor i32 %xor103.2.2, %conv109.2.2
  %conv111.2.2 = trunc i32 %xor110.2.2 to i8
  %arrayidx115.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.2, i64 0, i64 6
  store i8 %conv111.2.2, i8* %arrayidx115.2.2, align 1
  %arrayidx119.2.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.2, i64 0, i64 6
  %398 = load i8, i8* %arrayidx119.2.2, align 1
  %conv120.2.2 = zext i8 %398 to i32
  %399 = load i8, i8* %arrayidx122.2, align 1
  %conv123.2.2 = zext i8 %399 to i32
  %xor124.2.2 = xor i32 %conv123.2.2, %conv120.2.2
  %conv125.2.2 = trunc i32 %xor124.2.2 to i8
  store i8 %conv125.2.2, i8* %arrayidx122.2, align 1
  %arrayidx79.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.2, i64 0, i64 4
  %400 = load i8, i8* %arrayidx79.3.2, align 1
  %conv80.3.2 = zext i8 %400 to i32
  %arrayidx84.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.2, i64 0, i64 4
  %401 = load i8, i8* %arrayidx84.3.2, align 1
  %conv85.3.2 = zext i8 %401 to i32
  %xor.3.2 = xor i32 %conv80.3.2, %conv85.3.2
  %arrayidx87.3.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx89.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.3.2, i64 0, i64 2
  %402 = load i8, i8* %arrayidx89.3.2, align 1
  %conv90.3.2 = zext i8 %402 to i32
  %xor91.3.2 = xor i32 %xor.3.2, %conv90.3.2
  %arrayidx94.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 3
  %403 = load i8, i8* %arrayidx94.3.2, align 1
  %conv95.3.2 = zext i8 %403 to i32
  %xor96.3.2 = xor i32 %xor91.3.2, %conv95.3.2
  %arrayidx101.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.2, i64 0, i64 3
  %404 = load i8, i8* %arrayidx101.3.2, align 1
  %conv102.3.2 = zext i8 %404 to i32
  %xor103.3.2 = xor i32 %xor96.3.2, %conv102.3.2
  %arrayidx106.3.2 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx108.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.3.2, i64 0, i64 2
  %405 = load i8, i8* %arrayidx108.3.2, align 1
  %conv109.3.2 = zext i8 %405 to i32
  %xor110.3.2 = xor i32 %xor103.3.2, %conv109.3.2
  %conv111.3.2 = trunc i32 %xor110.3.2 to i8
  %arrayidx115.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.2, i64 0, i64 4
  store i8 %conv111.3.2, i8* %arrayidx115.3.2, align 1
  %arrayidx119.3.2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.2, i64 0, i64 4
  %406 = load i8, i8* %arrayidx119.3.2, align 1
  %conv120.3.2 = zext i8 %406 to i32
  %407 = load i8, i8* %arrayidx122.2, align 1
  %conv123.3.2 = zext i8 %407 to i32
  %xor124.3.2 = xor i32 %conv123.3.2, %conv120.3.2
  %conv125.3.2 = trunc i32 %xor124.3.2 to i8
  store i8 %conv125.3.2, i8* %arrayidx122.2, align 1
  %arrayidx192.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep19.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 2
  %scevgep1920.2 = bitcast i8* %scevgep19.2 to [11 x [11 x i8]]*
  %lsr.iv2123.2 = bitcast [11 x [11 x i8]]* %scevgep1920.2 to i8*
  %408 = load i8, i8* %lsr.iv2123.2, align 1
  %conv190.2156 = zext i8 %408 to i32
  %409 = load i8, i8* %arrayidx192.2, align 1
  %conv193.2157 = zext i8 %409 to i32
  %xor194.2158 = xor i32 %conv193.2157, %conv190.2156
  %conv195.2159 = trunc i32 %xor194.2158 to i8
  store i8 %conv195.2159, i8* %arrayidx192.2, align 1
  %scevgep22.2161 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep1920.2, i64 0, i64 -1, i64 0
  %410 = load i8, i8* %scevgep22.2161, align 1
  %conv190.1.2162 = zext i8 %410 to i32
  %411 = load i8, i8* %arrayidx192.2, align 1
  %conv193.1.2163 = zext i8 %411 to i32
  %xor194.1.2164 = xor i32 %conv193.1.2163, %conv190.1.2162
  %conv195.1.2165 = trunc i32 %xor194.1.2164 to i8
  store i8 %conv195.1.2165, i8* %arrayidx192.2, align 1
  %arrayidx65.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx67.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.3, i64 0, i64 3
  %412 = load i8, i8* %arrayidx67.3, align 1
  %arrayidx69.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %412, i8* %arrayidx69.3, align 1
  %arrayidx77.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 3
  %arrayidx82.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx98.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx113.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 3
  %arrayidx117.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 3
  %arrayidx122.3 = getelementptr inbounds i8, i8* %c, i64 3
  %arrayidx79.3170 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.3, i64 0, i64 10
  %413 = load i8, i8* %arrayidx79.3170, align 1
  %conv80.3171 = zext i8 %413 to i32
  %arrayidx84.3172 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.3, i64 0, i64 10
  %414 = load i8, i8* %arrayidx84.3172, align 1
  %conv85.3173 = zext i8 %414 to i32
  %xor.3174 = xor i32 %conv80.3171, %conv85.3173
  %arrayidx87.3175 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.3176 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.3175, i64 0, i64 3
  %415 = load i8, i8* %arrayidx89.3176, align 1
  %conv90.3177 = zext i8 %415 to i32
  %xor91.3178 = xor i32 %xor.3174, %conv90.3177
  %arrayidx94.3179 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %416 = load i8, i8* %arrayidx94.3179, align 1
  %conv95.3180 = zext i8 %416 to i32
  %xor96.3181 = xor i32 %xor91.3178, %conv95.3180
  %arrayidx101.3182 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.3, i64 0, i64 9
  %417 = load i8, i8* %arrayidx101.3182, align 1
  %conv102.3183 = zext i8 %417 to i32
  %xor103.3184 = xor i32 %xor96.3181, %conv102.3183
  %arrayidx106.3185 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.3186 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.3185, i64 0, i64 3
  %418 = load i8, i8* %arrayidx108.3186, align 1
  %conv109.3187 = zext i8 %418 to i32
  %xor110.3188 = xor i32 %xor103.3184, %conv109.3187
  %conv111.3189 = trunc i32 %xor110.3188 to i8
  %arrayidx115.3190 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.3, i64 0, i64 10
  store i8 %conv111.3189, i8* %arrayidx115.3190, align 1
  %arrayidx119.3191 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.3, i64 0, i64 10
  %419 = load i8, i8* %arrayidx119.3191, align 1
  %conv120.3192 = zext i8 %419 to i32
  %420 = load i8, i8* %arrayidx122.3, align 1
  %conv123.3193 = zext i8 %420 to i32
  %xor124.3194 = xor i32 %conv123.3193, %conv120.3192
  %conv125.3195 = trunc i32 %xor124.3194 to i8
  store i8 %conv125.3195, i8* %arrayidx122.3, align 1
  %arrayidx79.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.3, i64 0, i64 8
  %421 = load i8, i8* %arrayidx79.1.3, align 1
  %conv80.1.3 = zext i8 %421 to i32
  %arrayidx84.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.3, i64 0, i64 8
  %422 = load i8, i8* %arrayidx84.1.3, align 1
  %conv85.1.3 = zext i8 %422 to i32
  %xor.1.3 = xor i32 %conv80.1.3, %conv85.1.3
  %arrayidx87.1.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1.3, i64 0, i64 3
  %423 = load i8, i8* %arrayidx89.1.3, align 1
  %conv90.1.3 = zext i8 %423 to i32
  %xor91.1.3 = xor i32 %xor.1.3, %conv90.1.3
  %arrayidx94.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %424 = load i8, i8* %arrayidx94.1.3, align 1
  %conv95.1.3 = zext i8 %424 to i32
  %xor96.1.3 = xor i32 %xor91.1.3, %conv95.1.3
  %arrayidx101.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.3, i64 0, i64 7
  %425 = load i8, i8* %arrayidx101.1.3, align 1
  %conv102.1.3 = zext i8 %425 to i32
  %xor103.1.3 = xor i32 %xor96.1.3, %conv102.1.3
  %arrayidx106.1.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1.3, i64 0, i64 3
  %426 = load i8, i8* %arrayidx108.1.3, align 1
  %conv109.1.3 = zext i8 %426 to i32
  %xor110.1.3 = xor i32 %xor103.1.3, %conv109.1.3
  %conv111.1.3 = trunc i32 %xor110.1.3 to i8
  %arrayidx115.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.3, i64 0, i64 8
  store i8 %conv111.1.3, i8* %arrayidx115.1.3, align 1
  %arrayidx119.1.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.3, i64 0, i64 8
  %427 = load i8, i8* %arrayidx119.1.3, align 1
  %conv120.1.3 = zext i8 %427 to i32
  %428 = load i8, i8* %arrayidx122.3, align 1
  %conv123.1.3 = zext i8 %428 to i32
  %xor124.1.3 = xor i32 %conv123.1.3, %conv120.1.3
  %conv125.1.3 = trunc i32 %xor124.1.3 to i8
  store i8 %conv125.1.3, i8* %arrayidx122.3, align 1
  %arrayidx79.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.3, i64 0, i64 6
  %429 = load i8, i8* %arrayidx79.2.3, align 1
  %conv80.2.3 = zext i8 %429 to i32
  %arrayidx84.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.3, i64 0, i64 6
  %430 = load i8, i8* %arrayidx84.2.3, align 1
  %conv85.2.3 = zext i8 %430 to i32
  %xor.2.3 = xor i32 %conv80.2.3, %conv85.2.3
  %arrayidx87.2.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx89.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.2.3, i64 0, i64 3
  %431 = load i8, i8* %arrayidx89.2.3, align 1
  %conv90.2.3 = zext i8 %431 to i32
  %xor91.2.3 = xor i32 %xor.2.3, %conv90.2.3
  %arrayidx94.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  %432 = load i8, i8* %arrayidx94.2.3, align 1
  %conv95.2.3 = zext i8 %432 to i32
  %xor96.2.3 = xor i32 %xor91.2.3, %conv95.2.3
  %arrayidx101.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.3, i64 0, i64 5
  %433 = load i8, i8* %arrayidx101.2.3, align 1
  %conv102.2.3 = zext i8 %433 to i32
  %xor103.2.3 = xor i32 %xor96.2.3, %conv102.2.3
  %arrayidx106.2.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx108.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.2.3, i64 0, i64 3
  %434 = load i8, i8* %arrayidx108.2.3, align 1
  %conv109.2.3 = zext i8 %434 to i32
  %xor110.2.3 = xor i32 %xor103.2.3, %conv109.2.3
  %conv111.2.3 = trunc i32 %xor110.2.3 to i8
  %arrayidx115.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.3, i64 0, i64 6
  store i8 %conv111.2.3, i8* %arrayidx115.2.3, align 1
  %arrayidx119.2.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.3, i64 0, i64 6
  %435 = load i8, i8* %arrayidx119.2.3, align 1
  %conv120.2.3 = zext i8 %435 to i32
  %436 = load i8, i8* %arrayidx122.3, align 1
  %conv123.2.3 = zext i8 %436 to i32
  %xor124.2.3 = xor i32 %conv123.2.3, %conv120.2.3
  %conv125.2.3 = trunc i32 %xor124.2.3 to i8
  store i8 %conv125.2.3, i8* %arrayidx122.3, align 1
  %arrayidx132.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 3
  %arrayidx135.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx132.3, i64 0, i64 4
  %437 = load i8, i8* %arrayidx135.3, align 1
  %conv136.3 = zext i8 %437 to i32
  %arrayidx138.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 3
  %arrayidx141.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx138.3, i64 0, i64 4
  %438 = load i8, i8* %arrayidx141.3, align 1
  %conv142.3 = zext i8 %438 to i32
  %xor143.3 = xor i32 %conv136.3, %conv142.3
  %arrayidx146.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx148.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx146.3, i64 0, i64 3
  %439 = load i8, i8* %arrayidx148.3, align 1
  %conv149.3 = zext i8 %439 to i32
  %xor150.3 = xor i32 %xor143.3, %conv149.3
  %conv151.3 = trunc i32 %xor150.3 to i8
  %arrayidx153.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 3
  %arrayidx156.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx153.3, i64 0, i64 4
  store i8 %conv151.3, i8* %arrayidx156.3, align 1
  %arrayidx158.3 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 3
  %arrayidx161.3 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx158.3, i64 0, i64 4
  %440 = load i8, i8* %arrayidx161.3, align 1
  %conv162.3 = zext i8 %440 to i32
  %arrayidx164.3 = getelementptr inbounds i8, i8* %c, i64 3
  %441 = load i8, i8* %arrayidx164.3, align 1
  %conv165.3 = zext i8 %441 to i32
  %xor166.3 = xor i32 %conv165.3, %conv162.3
  %conv167.3 = trunc i32 %xor166.3 to i8
  store i8 %conv167.3, i8* %arrayidx164.3, align 1
  %arrayidx173.3 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 3
  %442 = load i8, i8* %arrayidx173.3, align 1
  %conv174.3 = zext i8 %442 to i32
  %arrayidx176.3 = getelementptr inbounds i8, i8* %c, i64 3
  %443 = load i8, i8* %arrayidx176.3, align 1
  %conv177.3 = zext i8 %443 to i32
  %xor178.3 = xor i32 %conv177.3, %conv174.3
  %conv179.3 = trunc i32 %xor178.3 to i8
  store i8 %conv179.3, i8* %arrayidx176.3, align 1
  %arrayidx65.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx67.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.4, i64 0, i64 4
  %444 = load i8, i8* %arrayidx67.4, align 1
  %arrayidx69.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %444, i8* %arrayidx69.4, align 1
  %arrayidx77.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 4
  %arrayidx82.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx98.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 4
  %arrayidx113.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 4
  %arrayidx117.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 4
  %arrayidx122.4 = getelementptr inbounds i8, i8* %c, i64 4
  %arrayidx79.4212 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.4, i64 0, i64 10
  %445 = load i8, i8* %arrayidx79.4212, align 1
  %conv80.4213 = zext i8 %445 to i32
  %arrayidx84.4214 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.4, i64 0, i64 10
  %446 = load i8, i8* %arrayidx84.4214, align 1
  %conv85.4215 = zext i8 %446 to i32
  %xor.4216 = xor i32 %conv80.4213, %conv85.4215
  %arrayidx87.4217 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.4218 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.4217, i64 0, i64 4
  %447 = load i8, i8* %arrayidx89.4218, align 1
  %conv90.4219 = zext i8 %447 to i32
  %xor91.4220 = xor i32 %xor.4216, %conv90.4219
  %arrayidx94.4221 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %448 = load i8, i8* %arrayidx94.4221, align 1
  %conv95.4222 = zext i8 %448 to i32
  %xor96.4223 = xor i32 %xor91.4220, %conv95.4222
  %arrayidx101.4224 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.4, i64 0, i64 9
  %449 = load i8, i8* %arrayidx101.4224, align 1
  %conv102.4225 = zext i8 %449 to i32
  %xor103.4226 = xor i32 %xor96.4223, %conv102.4225
  %arrayidx106.4227 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.4228 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.4227, i64 0, i64 4
  %450 = load i8, i8* %arrayidx108.4228, align 1
  %conv109.4229 = zext i8 %450 to i32
  %xor110.4230 = xor i32 %xor103.4226, %conv109.4229
  %conv111.4231 = trunc i32 %xor110.4230 to i8
  %arrayidx115.4232 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.4, i64 0, i64 10
  store i8 %conv111.4231, i8* %arrayidx115.4232, align 1
  %arrayidx119.4233 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.4, i64 0, i64 10
  %451 = load i8, i8* %arrayidx119.4233, align 1
  %conv120.4234 = zext i8 %451 to i32
  %452 = load i8, i8* %arrayidx122.4, align 1
  %conv123.4235 = zext i8 %452 to i32
  %xor124.4236 = xor i32 %conv123.4235, %conv120.4234
  %conv125.4237 = trunc i32 %xor124.4236 to i8
  store i8 %conv125.4237, i8* %arrayidx122.4, align 1
  %arrayidx79.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.4, i64 0, i64 8
  %453 = load i8, i8* %arrayidx79.1.4, align 1
  %conv80.1.4 = zext i8 %453 to i32
  %arrayidx84.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.4, i64 0, i64 8
  %454 = load i8, i8* %arrayidx84.1.4, align 1
  %conv85.1.4 = zext i8 %454 to i32
  %xor.1.4 = xor i32 %conv80.1.4, %conv85.1.4
  %arrayidx87.1.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1.4, i64 0, i64 4
  %455 = load i8, i8* %arrayidx89.1.4, align 1
  %conv90.1.4 = zext i8 %455 to i32
  %xor91.1.4 = xor i32 %xor.1.4, %conv90.1.4
  %arrayidx94.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %456 = load i8, i8* %arrayidx94.1.4, align 1
  %conv95.1.4 = zext i8 %456 to i32
  %xor96.1.4 = xor i32 %xor91.1.4, %conv95.1.4
  %arrayidx101.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.4, i64 0, i64 7
  %457 = load i8, i8* %arrayidx101.1.4, align 1
  %conv102.1.4 = zext i8 %457 to i32
  %xor103.1.4 = xor i32 %xor96.1.4, %conv102.1.4
  %arrayidx106.1.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1.4, i64 0, i64 4
  %458 = load i8, i8* %arrayidx108.1.4, align 1
  %conv109.1.4 = zext i8 %458 to i32
  %xor110.1.4 = xor i32 %xor103.1.4, %conv109.1.4
  %conv111.1.4 = trunc i32 %xor110.1.4 to i8
  %arrayidx115.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.4, i64 0, i64 8
  store i8 %conv111.1.4, i8* %arrayidx115.1.4, align 1
  %arrayidx119.1.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.4, i64 0, i64 8
  %459 = load i8, i8* %arrayidx119.1.4, align 1
  %conv120.1.4 = zext i8 %459 to i32
  %460 = load i8, i8* %arrayidx122.4, align 1
  %conv123.1.4 = zext i8 %460 to i32
  %xor124.1.4 = xor i32 %conv123.1.4, %conv120.1.4
  %conv125.1.4 = trunc i32 %xor124.1.4 to i8
  store i8 %conv125.1.4, i8* %arrayidx122.4, align 1
  %arrayidx79.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.4, i64 0, i64 6
  %461 = load i8, i8* %arrayidx79.2.4, align 1
  %conv80.2.4 = zext i8 %461 to i32
  %arrayidx84.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.4, i64 0, i64 6
  %462 = load i8, i8* %arrayidx84.2.4, align 1
  %conv85.2.4 = zext i8 %462 to i32
  %xor.2.4 = xor i32 %conv80.2.4, %conv85.2.4
  %arrayidx87.2.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx89.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.2.4, i64 0, i64 4
  %463 = load i8, i8* %arrayidx89.2.4, align 1
  %conv90.2.4 = zext i8 %463 to i32
  %xor91.2.4 = xor i32 %xor.2.4, %conv90.2.4
  %arrayidx94.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  %464 = load i8, i8* %arrayidx94.2.4, align 1
  %conv95.2.4 = zext i8 %464 to i32
  %xor96.2.4 = xor i32 %xor91.2.4, %conv95.2.4
  %arrayidx101.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.4, i64 0, i64 5
  %465 = load i8, i8* %arrayidx101.2.4, align 1
  %conv102.2.4 = zext i8 %465 to i32
  %xor103.2.4 = xor i32 %xor96.2.4, %conv102.2.4
  %arrayidx106.2.4 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx108.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.2.4, i64 0, i64 4
  %466 = load i8, i8* %arrayidx108.2.4, align 1
  %conv109.2.4 = zext i8 %466 to i32
  %xor110.2.4 = xor i32 %xor103.2.4, %conv109.2.4
  %conv111.2.4 = trunc i32 %xor110.2.4 to i8
  %arrayidx115.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.4, i64 0, i64 6
  store i8 %conv111.2.4, i8* %arrayidx115.2.4, align 1
  %arrayidx119.2.4 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.4, i64 0, i64 6
  %467 = load i8, i8* %arrayidx119.2.4, align 1
  %conv120.2.4 = zext i8 %467 to i32
  %468 = load i8, i8* %arrayidx122.4, align 1
  %conv123.2.4 = zext i8 %468 to i32
  %xor124.2.4 = xor i32 %conv123.2.4, %conv120.2.4
  %conv125.2.4 = trunc i32 %xor124.2.4 to i8
  store i8 %conv125.2.4, i8* %arrayidx122.4, align 1
  %arrayidx192.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep19.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 3, i64 4
  %scevgep1920.4 = bitcast i8* %scevgep19.4 to [11 x [11 x i8]]*
  %lsr.iv2123.4 = bitcast [11 x [11 x i8]]* %scevgep1920.4 to i8*
  %469 = load i8, i8* %lsr.iv2123.4, align 1
  %conv190.4239 = zext i8 %469 to i32
  %470 = load i8, i8* %arrayidx192.4, align 1
  %conv193.4240 = zext i8 %470 to i32
  %xor194.4241 = xor i32 %conv193.4240, %conv190.4239
  %conv195.4242 = trunc i32 %xor194.4241 to i8
  store i8 %conv195.4242, i8* %arrayidx192.4, align 1
  %scevgep22.4244 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep1920.4, i64 0, i64 -1, i64 0
  %471 = bitcast i8* %scevgep22.4244 to [11 x [11 x i8]]*
  %472 = load i8, i8* %scevgep22.4244, align 1
  %conv190.1.4245 = zext i8 %472 to i32
  %473 = load i8, i8* %arrayidx192.4, align 1
  %conv193.1.4246 = zext i8 %473 to i32
  %xor194.1.4247 = xor i32 %conv193.1.4246, %conv190.1.4245
  %conv195.1.4248 = trunc i32 %xor194.1.4247 to i8
  store i8 %conv195.1.4248, i8* %arrayidx192.4, align 1
  %scevgep22.1.4250 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %471, i64 0, i64 -1, i64 0
  %474 = bitcast i8* %scevgep22.1.4250 to [11 x [11 x i8]]*
  %475 = load i8, i8* %scevgep22.1.4250, align 1
  %conv190.180.4 = zext i8 %475 to i32
  %476 = load i8, i8* %arrayidx192.4, align 1
  %conv193.181.4 = zext i8 %476 to i32
  %xor194.182.4 = xor i32 %conv193.181.4, %conv190.180.4
  %conv195.183.4 = trunc i32 %xor194.182.4 to i8
  store i8 %conv195.183.4, i8* %arrayidx192.4, align 1
  %scevgep22.185.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %474, i64 0, i64 -1, i64 0
  %477 = load i8, i8* %scevgep22.185.4, align 1
  %conv190.1.1.4 = zext i8 %477 to i32
  %478 = load i8, i8* %arrayidx192.4, align 1
  %conv193.1.1.4 = zext i8 %478 to i32
  %xor194.1.1.4 = xor i32 %conv193.1.1.4, %conv190.1.1.4
  %conv195.1.1.4 = trunc i32 %xor194.1.1.4 to i8
  store i8 %conv195.1.1.4, i8* %arrayidx192.4, align 1
  %arrayidx65.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx67.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.5, i64 0, i64 5
  %479 = load i8, i8* %arrayidx67.5, align 1
  %arrayidx69.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %479, i8* %arrayidx69.5, align 1
  %arrayidx77.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 5
  %arrayidx82.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx98.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx113.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 5
  %arrayidx117.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 5
  %arrayidx122.5 = getelementptr inbounds i8, i8* %c, i64 5
  %arrayidx79.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.5, i64 0, i64 10
  %480 = load i8, i8* %arrayidx79.5, align 1
  %conv80.5 = zext i8 %480 to i32
  %arrayidx84.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.5, i64 0, i64 10
  %481 = load i8, i8* %arrayidx84.5, align 1
  %conv85.5 = zext i8 %481 to i32
  %xor.5 = xor i32 %conv80.5, %conv85.5
  %arrayidx87.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.5, i64 0, i64 5
  %482 = load i8, i8* %arrayidx89.5, align 1
  %conv90.5 = zext i8 %482 to i32
  %xor91.5 = xor i32 %xor.5, %conv90.5
  %arrayidx94.5 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %483 = load i8, i8* %arrayidx94.5, align 1
  %conv95.5 = zext i8 %483 to i32
  %xor96.5 = xor i32 %xor91.5, %conv95.5
  %arrayidx101.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.5, i64 0, i64 9
  %484 = load i8, i8* %arrayidx101.5, align 1
  %conv102.5 = zext i8 %484 to i32
  %xor103.5 = xor i32 %xor96.5, %conv102.5
  %arrayidx106.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.5, i64 0, i64 5
  %485 = load i8, i8* %arrayidx108.5, align 1
  %conv109.5 = zext i8 %485 to i32
  %xor110.5 = xor i32 %xor103.5, %conv109.5
  %conv111.5 = trunc i32 %xor110.5 to i8
  %arrayidx115.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.5, i64 0, i64 10
  store i8 %conv111.5, i8* %arrayidx115.5, align 1
  %arrayidx119.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.5, i64 0, i64 10
  %486 = load i8, i8* %arrayidx119.5, align 1
  %conv120.5 = zext i8 %486 to i32
  %487 = load i8, i8* %arrayidx122.5, align 1
  %conv123.5 = zext i8 %487 to i32
  %xor124.5 = xor i32 %conv123.5, %conv120.5
  %conv125.5 = trunc i32 %xor124.5 to i8
  store i8 %conv125.5, i8* %arrayidx122.5, align 1
  %arrayidx79.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.5, i64 0, i64 8
  %488 = load i8, i8* %arrayidx79.1.5, align 1
  %conv80.1.5 = zext i8 %488 to i32
  %arrayidx84.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.5, i64 0, i64 8
  %489 = load i8, i8* %arrayidx84.1.5, align 1
  %conv85.1.5 = zext i8 %489 to i32
  %xor.1.5 = xor i32 %conv80.1.5, %conv85.1.5
  %arrayidx87.1.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1.5, i64 0, i64 5
  %490 = load i8, i8* %arrayidx89.1.5, align 1
  %conv90.1.5 = zext i8 %490 to i32
  %xor91.1.5 = xor i32 %xor.1.5, %conv90.1.5
  %arrayidx94.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %491 = load i8, i8* %arrayidx94.1.5, align 1
  %conv95.1.5 = zext i8 %491 to i32
  %xor96.1.5 = xor i32 %xor91.1.5, %conv95.1.5
  %arrayidx101.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.5, i64 0, i64 7
  %492 = load i8, i8* %arrayidx101.1.5, align 1
  %conv102.1.5 = zext i8 %492 to i32
  %xor103.1.5 = xor i32 %xor96.1.5, %conv102.1.5
  %arrayidx106.1.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1.5, i64 0, i64 5
  %493 = load i8, i8* %arrayidx108.1.5, align 1
  %conv109.1.5 = zext i8 %493 to i32
  %xor110.1.5 = xor i32 %xor103.1.5, %conv109.1.5
  %conv111.1.5 = trunc i32 %xor110.1.5 to i8
  %arrayidx115.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.5, i64 0, i64 8
  store i8 %conv111.1.5, i8* %arrayidx115.1.5, align 1
  %arrayidx119.1.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.5, i64 0, i64 8
  %494 = load i8, i8* %arrayidx119.1.5, align 1
  %conv120.1.5 = zext i8 %494 to i32
  %495 = load i8, i8* %arrayidx122.5, align 1
  %conv123.1.5 = zext i8 %495 to i32
  %xor124.1.5 = xor i32 %conv123.1.5, %conv120.1.5
  %conv125.1.5 = trunc i32 %xor124.1.5 to i8
  store i8 %conv125.1.5, i8* %arrayidx122.5, align 1
  %arrayidx132.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 5
  %arrayidx135.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx132.5, i64 0, i64 6
  %496 = load i8, i8* %arrayidx135.5, align 1
  %conv136.5 = zext i8 %496 to i32
  %arrayidx138.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 5
  %arrayidx141.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx138.5, i64 0, i64 6
  %497 = load i8, i8* %arrayidx141.5, align 1
  %conv142.5 = zext i8 %497 to i32
  %xor143.5 = xor i32 %conv136.5, %conv142.5
  %arrayidx146.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx148.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx146.5, i64 0, i64 5
  %498 = load i8, i8* %arrayidx148.5, align 1
  %conv149.5 = zext i8 %498 to i32
  %xor150.5 = xor i32 %xor143.5, %conv149.5
  %conv151.5 = trunc i32 %xor150.5 to i8
  %arrayidx153.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 5
  %arrayidx156.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx153.5, i64 0, i64 6
  store i8 %conv151.5, i8* %arrayidx156.5, align 1
  %arrayidx158.5 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 5
  %arrayidx161.5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx158.5, i64 0, i64 6
  %499 = load i8, i8* %arrayidx161.5, align 1
  %conv162.5 = zext i8 %499 to i32
  %arrayidx164.5 = getelementptr inbounds i8, i8* %c, i64 5
  %500 = load i8, i8* %arrayidx164.5, align 1
  %conv165.5 = zext i8 %500 to i32
  %xor166.5 = xor i32 %conv165.5, %conv162.5
  %conv167.5 = trunc i32 %xor166.5 to i8
  store i8 %conv167.5, i8* %arrayidx164.5, align 1
  %arrayidx173.5 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 5
  %501 = load i8, i8* %arrayidx173.5, align 1
  %conv174.5 = zext i8 %501 to i32
  %arrayidx176.5 = getelementptr inbounds i8, i8* %c, i64 5
  %502 = load i8, i8* %arrayidx176.5, align 1
  %conv177.5 = zext i8 %502 to i32
  %xor178.5 = xor i32 %conv177.5, %conv174.5
  %conv179.5 = trunc i32 %xor178.5 to i8
  store i8 %conv179.5, i8* %arrayidx176.5, align 1
  %arrayidx65.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx67.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.6, i64 0, i64 6
  %503 = load i8, i8* %arrayidx67.6, align 1
  %arrayidx69.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %503, i8* %arrayidx69.6, align 1
  %arrayidx77.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 6
  %arrayidx82.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx98.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 6
  %arrayidx113.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 6
  %arrayidx117.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 6
  %arrayidx122.6 = getelementptr inbounds i8, i8* %c, i64 6
  %arrayidx79.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.6, i64 0, i64 10
  %504 = load i8, i8* %arrayidx79.6, align 1
  %conv80.6 = zext i8 %504 to i32
  %arrayidx84.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.6, i64 0, i64 10
  %505 = load i8, i8* %arrayidx84.6, align 1
  %conv85.6 = zext i8 %505 to i32
  %xor.6 = xor i32 %conv80.6, %conv85.6
  %arrayidx87.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.6, i64 0, i64 6
  %506 = load i8, i8* %arrayidx89.6, align 1
  %conv90.6 = zext i8 %506 to i32
  %xor91.6 = xor i32 %xor.6, %conv90.6
  %arrayidx94.6 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %507 = load i8, i8* %arrayidx94.6, align 1
  %conv95.6 = zext i8 %507 to i32
  %xor96.6 = xor i32 %xor91.6, %conv95.6
  %arrayidx101.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.6, i64 0, i64 9
  %508 = load i8, i8* %arrayidx101.6, align 1
  %conv102.6 = zext i8 %508 to i32
  %xor103.6 = xor i32 %xor96.6, %conv102.6
  %arrayidx106.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.6, i64 0, i64 6
  %509 = load i8, i8* %arrayidx108.6, align 1
  %conv109.6 = zext i8 %509 to i32
  %xor110.6 = xor i32 %xor103.6, %conv109.6
  %conv111.6 = trunc i32 %xor110.6 to i8
  %arrayidx115.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.6, i64 0, i64 10
  store i8 %conv111.6, i8* %arrayidx115.6, align 1
  %arrayidx119.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.6, i64 0, i64 10
  %510 = load i8, i8* %arrayidx119.6, align 1
  %conv120.6 = zext i8 %510 to i32
  %511 = load i8, i8* %arrayidx122.6, align 1
  %conv123.6 = zext i8 %511 to i32
  %xor124.6 = xor i32 %conv123.6, %conv120.6
  %conv125.6 = trunc i32 %xor124.6 to i8
  store i8 %conv125.6, i8* %arrayidx122.6, align 1
  %arrayidx79.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.6, i64 0, i64 8
  %512 = load i8, i8* %arrayidx79.1.6, align 1
  %conv80.1.6 = zext i8 %512 to i32
  %arrayidx84.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.6, i64 0, i64 8
  %513 = load i8, i8* %arrayidx84.1.6, align 1
  %conv85.1.6 = zext i8 %513 to i32
  %xor.1.6 = xor i32 %conv80.1.6, %conv85.1.6
  %arrayidx87.1.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx89.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.1.6, i64 0, i64 6
  %514 = load i8, i8* %arrayidx89.1.6, align 1
  %conv90.1.6 = zext i8 %514 to i32
  %xor91.1.6 = xor i32 %xor.1.6, %conv90.1.6
  %arrayidx94.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %515 = load i8, i8* %arrayidx94.1.6, align 1
  %conv95.1.6 = zext i8 %515 to i32
  %xor96.1.6 = xor i32 %xor91.1.6, %conv95.1.6
  %arrayidx101.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.6, i64 0, i64 7
  %516 = load i8, i8* %arrayidx101.1.6, align 1
  %conv102.1.6 = zext i8 %516 to i32
  %xor103.1.6 = xor i32 %xor96.1.6, %conv102.1.6
  %arrayidx106.1.6 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx108.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.1.6, i64 0, i64 6
  %517 = load i8, i8* %arrayidx108.1.6, align 1
  %conv109.1.6 = zext i8 %517 to i32
  %xor110.1.6 = xor i32 %xor103.1.6, %conv109.1.6
  %conv111.1.6 = trunc i32 %xor110.1.6 to i8
  %arrayidx115.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.6, i64 0, i64 8
  store i8 %conv111.1.6, i8* %arrayidx115.1.6, align 1
  %arrayidx119.1.6 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.6, i64 0, i64 8
  %518 = load i8, i8* %arrayidx119.1.6, align 1
  %conv120.1.6 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx122.6, align 1
  %conv123.1.6 = zext i8 %519 to i32
  %xor124.1.6 = xor i32 %conv123.1.6, %conv120.1.6
  %conv125.1.6 = trunc i32 %xor124.1.6 to i8
  store i8 %conv125.1.6, i8* %arrayidx122.6, align 1
  %arrayidx192.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep19.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 5, i64 6
  %scevgep1920.6 = bitcast i8* %scevgep19.6 to [11 x [11 x i8]]*
  %lsr.iv2123.6 = bitcast [11 x [11 x i8]]* %scevgep1920.6 to i8*
  %520 = load i8, i8* %lsr.iv2123.6, align 1
  %conv190.6 = zext i8 %520 to i32
  %521 = load i8, i8* %arrayidx192.6, align 1
  %conv193.6 = zext i8 %521 to i32
  %xor194.6 = xor i32 %conv193.6, %conv190.6
  %conv195.6 = trunc i32 %xor194.6 to i8
  store i8 %conv195.6, i8* %arrayidx192.6, align 1
  %scevgep22.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep1920.6, i64 0, i64 -1, i64 0
  %522 = bitcast i8* %scevgep22.6 to [11 x [11 x i8]]*
  %523 = load i8, i8* %scevgep22.6, align 1
  %conv190.1.6 = zext i8 %523 to i32
  %524 = load i8, i8* %arrayidx192.6, align 1
  %conv193.1.6 = zext i8 %524 to i32
  %xor194.1.6 = xor i32 %conv193.1.6, %conv190.1.6
  %conv195.1.6 = trunc i32 %xor194.1.6 to i8
  store i8 %conv195.1.6, i8* %arrayidx192.6, align 1
  %scevgep22.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %522, i64 0, i64 -1, i64 0
  %525 = bitcast i8* %scevgep22.1.6 to [11 x [11 x i8]]*
  %526 = load i8, i8* %scevgep22.1.6, align 1
  %conv190.180.6 = zext i8 %526 to i32
  %527 = load i8, i8* %arrayidx192.6, align 1
  %conv193.181.6 = zext i8 %527 to i32
  %xor194.182.6 = xor i32 %conv193.181.6, %conv190.180.6
  %conv195.183.6 = trunc i32 %xor194.182.6 to i8
  store i8 %conv195.183.6, i8* %arrayidx192.6, align 1
  %scevgep22.185.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %525, i64 0, i64 -1, i64 0
  %528 = bitcast i8* %scevgep22.185.6 to [11 x [11 x i8]]*
  %529 = load i8, i8* %scevgep22.185.6, align 1
  %conv190.1.1.6 = zext i8 %529 to i32
  %530 = load i8, i8* %arrayidx192.6, align 1
  %conv193.1.1.6 = zext i8 %530 to i32
  %xor194.1.1.6 = xor i32 %conv193.1.1.6, %conv190.1.1.6
  %conv195.1.1.6 = trunc i32 %xor194.1.1.6 to i8
  store i8 %conv195.1.1.6, i8* %arrayidx192.6, align 1
  %scevgep22.1.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %528, i64 0, i64 -1, i64 0
  %531 = bitcast i8* %scevgep22.1.1.6 to [11 x [11 x i8]]*
  %532 = load i8, i8* %scevgep22.1.1.6, align 1
  %conv190.2.6 = zext i8 %532 to i32
  %533 = load i8, i8* %arrayidx192.6, align 1
  %conv193.2.6 = zext i8 %533 to i32
  %xor194.2.6 = xor i32 %conv193.2.6, %conv190.2.6
  %conv195.2.6 = trunc i32 %xor194.2.6 to i8
  store i8 %conv195.2.6, i8* %arrayidx192.6, align 1
  %scevgep22.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %531, i64 0, i64 -1, i64 0
  %534 = load i8, i8* %scevgep22.2.6, align 1
  %conv190.1.2.6 = zext i8 %534 to i32
  %535 = load i8, i8* %arrayidx192.6, align 1
  %conv193.1.2.6 = zext i8 %535 to i32
  %xor194.1.2.6 = xor i32 %conv193.1.2.6, %conv190.1.2.6
  %conv195.1.2.6 = trunc i32 %xor194.1.2.6 to i8
  store i8 %conv195.1.2.6, i8* %arrayidx192.6, align 1
  %arrayidx65.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx67.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.7, i64 0, i64 7
  %536 = load i8, i8* %arrayidx67.7, align 1
  %arrayidx69.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %536, i8* %arrayidx69.7, align 1
  %arrayidx77.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 7
  %arrayidx82.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx98.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx113.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 7
  %arrayidx117.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 7
  %arrayidx122.7 = getelementptr inbounds i8, i8* %c, i64 7
  %arrayidx79.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.7, i64 0, i64 10
  %537 = load i8, i8* %arrayidx79.7, align 1
  %conv80.7 = zext i8 %537 to i32
  %arrayidx84.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.7, i64 0, i64 10
  %538 = load i8, i8* %arrayidx84.7, align 1
  %conv85.7 = zext i8 %538 to i32
  %xor.7 = xor i32 %conv80.7, %conv85.7
  %arrayidx87.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.7, i64 0, i64 7
  %539 = load i8, i8* %arrayidx89.7, align 1
  %conv90.7 = zext i8 %539 to i32
  %xor91.7 = xor i32 %xor.7, %conv90.7
  %arrayidx94.7 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %540 = load i8, i8* %arrayidx94.7, align 1
  %conv95.7 = zext i8 %540 to i32
  %xor96.7 = xor i32 %xor91.7, %conv95.7
  %arrayidx101.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.7, i64 0, i64 9
  %541 = load i8, i8* %arrayidx101.7, align 1
  %conv102.7 = zext i8 %541 to i32
  %xor103.7 = xor i32 %xor96.7, %conv102.7
  %arrayidx106.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.7, i64 0, i64 7
  %542 = load i8, i8* %arrayidx108.7, align 1
  %conv109.7 = zext i8 %542 to i32
  %xor110.7 = xor i32 %xor103.7, %conv109.7
  %conv111.7 = trunc i32 %xor110.7 to i8
  %arrayidx115.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.7, i64 0, i64 10
  store i8 %conv111.7, i8* %arrayidx115.7, align 1
  %arrayidx119.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.7, i64 0, i64 10
  %543 = load i8, i8* %arrayidx119.7, align 1
  %conv120.7 = zext i8 %543 to i32
  %544 = load i8, i8* %arrayidx122.7, align 1
  %conv123.7 = zext i8 %544 to i32
  %xor124.7 = xor i32 %conv123.7, %conv120.7
  %conv125.7 = trunc i32 %xor124.7 to i8
  store i8 %conv125.7, i8* %arrayidx122.7, align 1
  %arrayidx132.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 7
  %arrayidx135.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx132.7, i64 0, i64 8
  %545 = load i8, i8* %arrayidx135.7, align 1
  %conv136.7 = zext i8 %545 to i32
  %arrayidx138.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 7
  %arrayidx141.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx138.7, i64 0, i64 8
  %546 = load i8, i8* %arrayidx141.7, align 1
  %conv142.7 = zext i8 %546 to i32
  %xor143.7 = xor i32 %conv136.7, %conv142.7
  %arrayidx146.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx148.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx146.7, i64 0, i64 7
  %547 = load i8, i8* %arrayidx148.7, align 1
  %conv149.7 = zext i8 %547 to i32
  %xor150.7 = xor i32 %xor143.7, %conv149.7
  %conv151.7 = trunc i32 %xor150.7 to i8
  %arrayidx153.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 7
  %arrayidx156.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx153.7, i64 0, i64 8
  store i8 %conv151.7, i8* %arrayidx156.7, align 1
  %arrayidx158.7 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 7
  %arrayidx161.7 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx158.7, i64 0, i64 8
  %548 = load i8, i8* %arrayidx161.7, align 1
  %conv162.7 = zext i8 %548 to i32
  %arrayidx164.7 = getelementptr inbounds i8, i8* %c, i64 7
  %549 = load i8, i8* %arrayidx164.7, align 1
  %conv165.7 = zext i8 %549 to i32
  %xor166.7 = xor i32 %conv165.7, %conv162.7
  %conv167.7 = trunc i32 %xor166.7 to i8
  store i8 %conv167.7, i8* %arrayidx164.7, align 1
  %arrayidx173.7 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 7
  %550 = load i8, i8* %arrayidx173.7, align 1
  %conv174.7 = zext i8 %550 to i32
  %arrayidx176.7 = getelementptr inbounds i8, i8* %c, i64 7
  %551 = load i8, i8* %arrayidx176.7, align 1
  %conv177.7 = zext i8 %551 to i32
  %xor178.7 = xor i32 %conv177.7, %conv174.7
  %conv179.7 = trunc i32 %xor178.7 to i8
  store i8 %conv179.7, i8* %arrayidx176.7, align 1
  %arrayidx65.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx67.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.8, i64 0, i64 8
  %552 = load i8, i8* %arrayidx67.8, align 1
  %arrayidx69.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %552, i8* %arrayidx69.8, align 1
  %arrayidx77.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 8
  %arrayidx82.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx98.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 8
  %arrayidx113.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 8
  %arrayidx117.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 8
  %arrayidx122.8 = getelementptr inbounds i8, i8* %c, i64 8
  %arrayidx79.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx77.8, i64 0, i64 10
  %553 = load i8, i8* %arrayidx79.8, align 1
  %conv80.8 = zext i8 %553 to i32
  %arrayidx84.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx82.8, i64 0, i64 10
  %554 = load i8, i8* %arrayidx84.8, align 1
  %conv85.8 = zext i8 %554 to i32
  %xor.8 = xor i32 %conv80.8, %conv85.8
  %arrayidx87.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx89.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx87.8, i64 0, i64 8
  %555 = load i8, i8* %arrayidx89.8, align 1
  %conv90.8 = zext i8 %555 to i32
  %xor91.8 = xor i32 %xor.8, %conv90.8
  %arrayidx94.8 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %556 = load i8, i8* %arrayidx94.8, align 1
  %conv95.8 = zext i8 %556 to i32
  %xor96.8 = xor i32 %xor91.8, %conv95.8
  %arrayidx101.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx98.8, i64 0, i64 9
  %557 = load i8, i8* %arrayidx101.8, align 1
  %conv102.8 = zext i8 %557 to i32
  %xor103.8 = xor i32 %xor96.8, %conv102.8
  %arrayidx106.8 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx108.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx106.8, i64 0, i64 8
  %558 = load i8, i8* %arrayidx108.8, align 1
  %conv109.8 = zext i8 %558 to i32
  %xor110.8 = xor i32 %xor103.8, %conv109.8
  %conv111.8 = trunc i32 %xor110.8 to i8
  %arrayidx115.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx113.8, i64 0, i64 10
  store i8 %conv111.8, i8* %arrayidx115.8, align 1
  %arrayidx119.8 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx117.8, i64 0, i64 10
  %559 = load i8, i8* %arrayidx119.8, align 1
  %conv120.8 = zext i8 %559 to i32
  %560 = load i8, i8* %arrayidx122.8, align 1
  %conv123.8 = zext i8 %560 to i32
  %xor124.8 = xor i32 %conv123.8, %conv120.8
  %conv125.8 = trunc i32 %xor124.8 to i8
  store i8 %conv125.8, i8* %arrayidx122.8, align 1
  %arrayidx192.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep19.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 7, i64 8
  %scevgep1920.8 = bitcast i8* %scevgep19.8 to [11 x [11 x i8]]*
  %lsr.iv2123.8 = bitcast [11 x [11 x i8]]* %scevgep1920.8 to i8*
  %561 = load i8, i8* %lsr.iv2123.8, align 1
  %conv190.8 = zext i8 %561 to i32
  %562 = load i8, i8* %arrayidx192.8, align 1
  %conv193.8 = zext i8 %562 to i32
  %xor194.8 = xor i32 %conv193.8, %conv190.8
  %conv195.8 = trunc i32 %xor194.8 to i8
  store i8 %conv195.8, i8* %arrayidx192.8, align 1
  %scevgep22.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep1920.8, i64 0, i64 -1, i64 0
  %563 = bitcast i8* %scevgep22.8 to [11 x [11 x i8]]*
  %564 = load i8, i8* %scevgep22.8, align 1
  %conv190.1.8 = zext i8 %564 to i32
  %565 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.8 = zext i8 %565 to i32
  %xor194.1.8 = xor i32 %conv193.1.8, %conv190.1.8
  %conv195.1.8 = trunc i32 %xor194.1.8 to i8
  store i8 %conv195.1.8, i8* %arrayidx192.8, align 1
  %scevgep22.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %563, i64 0, i64 -1, i64 0
  %566 = bitcast i8* %scevgep22.1.8 to [11 x [11 x i8]]*
  %567 = load i8, i8* %scevgep22.1.8, align 1
  %conv190.180.8 = zext i8 %567 to i32
  %568 = load i8, i8* %arrayidx192.8, align 1
  %conv193.181.8 = zext i8 %568 to i32
  %xor194.182.8 = xor i32 %conv193.181.8, %conv190.180.8
  %conv195.183.8 = trunc i32 %xor194.182.8 to i8
  store i8 %conv195.183.8, i8* %arrayidx192.8, align 1
  %scevgep22.185.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %566, i64 0, i64 -1, i64 0
  %569 = bitcast i8* %scevgep22.185.8 to [11 x [11 x i8]]*
  %570 = load i8, i8* %scevgep22.185.8, align 1
  %conv190.1.1.8 = zext i8 %570 to i32
  %571 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.1.8 = zext i8 %571 to i32
  %xor194.1.1.8 = xor i32 %conv193.1.1.8, %conv190.1.1.8
  %conv195.1.1.8 = trunc i32 %xor194.1.1.8 to i8
  store i8 %conv195.1.1.8, i8* %arrayidx192.8, align 1
  %scevgep22.1.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %569, i64 0, i64 -1, i64 0
  %572 = bitcast i8* %scevgep22.1.1.8 to [11 x [11 x i8]]*
  %573 = load i8, i8* %scevgep22.1.1.8, align 1
  %conv190.2.8 = zext i8 %573 to i32
  %574 = load i8, i8* %arrayidx192.8, align 1
  %conv193.2.8 = zext i8 %574 to i32
  %xor194.2.8 = xor i32 %conv193.2.8, %conv190.2.8
  %conv195.2.8 = trunc i32 %xor194.2.8 to i8
  store i8 %conv195.2.8, i8* %arrayidx192.8, align 1
  %scevgep22.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %572, i64 0, i64 -1, i64 0
  %575 = bitcast i8* %scevgep22.2.8 to [11 x [11 x i8]]*
  %576 = load i8, i8* %scevgep22.2.8, align 1
  %conv190.1.2.8 = zext i8 %576 to i32
  %577 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.2.8 = zext i8 %577 to i32
  %xor194.1.2.8 = xor i32 %conv193.1.2.8, %conv190.1.2.8
  %conv195.1.2.8 = trunc i32 %xor194.1.2.8 to i8
  store i8 %conv195.1.2.8, i8* %arrayidx192.8, align 1
  %scevgep22.1.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %575, i64 0, i64 -1, i64 0
  %578 = bitcast i8* %scevgep22.1.2.8 to [11 x [11 x i8]]*
  %579 = load i8, i8* %scevgep22.1.2.8, align 1
  %conv190.3.8 = zext i8 %579 to i32
  %580 = load i8, i8* %arrayidx192.8, align 1
  %conv193.3.8 = zext i8 %580 to i32
  %xor194.3.8 = xor i32 %conv193.3.8, %conv190.3.8
  %conv195.3.8 = trunc i32 %xor194.3.8 to i8
  store i8 %conv195.3.8, i8* %arrayidx192.8, align 1
  %scevgep22.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %578, i64 0, i64 -1, i64 0
  %581 = load i8, i8* %scevgep22.3.8, align 1
  %conv190.1.3.8 = zext i8 %581 to i32
  %582 = load i8, i8* %arrayidx192.8, align 1
  %conv193.1.3.8 = zext i8 %582 to i32
  %xor194.1.3.8 = xor i32 %conv193.1.3.8, %conv190.1.3.8
  %conv195.1.3.8 = trunc i32 %xor194.1.3.8 to i8
  store i8 %conv195.1.3.8, i8* %arrayidx192.8, align 1
  %arrayidx65.9 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx67.9 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.9, i64 0, i64 9
  %583 = load i8, i8* %arrayidx67.9, align 1
  %arrayidx69.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %583, i8* %arrayidx69.9, align 1
  %arrayidx132.9 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 9
  %arrayidx135.9 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx132.9, i64 0, i64 10
  %584 = load i8, i8* %arrayidx135.9, align 1
  %conv136.9 = zext i8 %584 to i32
  %arrayidx138.9 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 9
  %arrayidx141.9 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx138.9, i64 0, i64 10
  %585 = load i8, i8* %arrayidx141.9, align 1
  %conv142.9 = zext i8 %585 to i32
  %xor143.9 = xor i32 %conv136.9, %conv142.9
  %arrayidx146.9 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx148.9 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx146.9, i64 0, i64 9
  %586 = load i8, i8* %arrayidx148.9, align 1
  %conv149.9 = zext i8 %586 to i32
  %xor150.9 = xor i32 %xor143.9, %conv149.9
  %conv151.9 = trunc i32 %xor150.9 to i8
  %arrayidx153.9 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 9
  %arrayidx156.9 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx153.9, i64 0, i64 10
  store i8 %conv151.9, i8* %arrayidx156.9, align 1
  %arrayidx158.9 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %t, i64 0, i64 9
  %arrayidx161.9 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx158.9, i64 0, i64 10
  %587 = load i8, i8* %arrayidx161.9, align 1
  %conv162.9 = zext i8 %587 to i32
  %arrayidx164.9 = getelementptr inbounds i8, i8* %c, i64 9
  %588 = load i8, i8* %arrayidx164.9, align 1
  %conv165.9 = zext i8 %588 to i32
  %xor166.9 = xor i32 %conv165.9, %conv162.9
  %conv167.9 = trunc i32 %xor166.9 to i8
  store i8 %conv167.9, i8* %arrayidx164.9, align 1
  %arrayidx173.9 = getelementptr inbounds [11 x i8], [11 x i8]* %rr, i64 0, i64 9
  %589 = load i8, i8* %arrayidx173.9, align 1
  %conv174.9 = zext i8 %589 to i32
  %arrayidx176.9 = getelementptr inbounds i8, i8* %c, i64 9
  %590 = load i8, i8* %arrayidx176.9, align 1
  %conv177.9 = zext i8 %590 to i32
  %xor178.9 = xor i32 %conv177.9, %conv174.9
  %conv179.9 = trunc i32 %xor178.9 to i8
  store i8 %conv179.9, i8* %arrayidx176.9, align 1
  %arrayidx65.10 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %alpha, i64 0, i64 10
  %arrayidx67.10 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65.10, i64 0, i64 10
  %591 = load i8, i8* %arrayidx67.10, align 1
  %arrayidx69.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %591, i8* %arrayidx69.10, align 1
  %arrayidx192.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep19.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 9, i64 10
  %scevgep1920.10 = bitcast i8* %scevgep19.10 to [11 x [11 x i8]]*
  %lsr.iv2123.10 = bitcast [11 x [11 x i8]]* %scevgep1920.10 to i8*
  %592 = load i8, i8* %lsr.iv2123.10, align 1
  %conv190.10 = zext i8 %592 to i32
  %593 = load i8, i8* %arrayidx192.10, align 1
  %conv193.10 = zext i8 %593 to i32
  %xor194.10 = xor i32 %conv193.10, %conv190.10
  %conv195.10 = trunc i32 %xor194.10 to i8
  store i8 %conv195.10, i8* %arrayidx192.10, align 1
  %scevgep22.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep1920.10, i64 0, i64 -1, i64 0
  %594 = bitcast i8* %scevgep22.10 to [11 x [11 x i8]]*
  %595 = load i8, i8* %scevgep22.10, align 1
  %conv190.1.10 = zext i8 %595 to i32
  %596 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.10 = zext i8 %596 to i32
  %xor194.1.10 = xor i32 %conv193.1.10, %conv190.1.10
  %conv195.1.10 = trunc i32 %xor194.1.10 to i8
  store i8 %conv195.1.10, i8* %arrayidx192.10, align 1
  %scevgep22.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %594, i64 0, i64 -1, i64 0
  %597 = bitcast i8* %scevgep22.1.10 to [11 x [11 x i8]]*
  %598 = load i8, i8* %scevgep22.1.10, align 1
  %conv190.180.10 = zext i8 %598 to i32
  %599 = load i8, i8* %arrayidx192.10, align 1
  %conv193.181.10 = zext i8 %599 to i32
  %xor194.182.10 = xor i32 %conv193.181.10, %conv190.180.10
  %conv195.183.10 = trunc i32 %xor194.182.10 to i8
  store i8 %conv195.183.10, i8* %arrayidx192.10, align 1
  %scevgep22.185.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %597, i64 0, i64 -1, i64 0
  %600 = bitcast i8* %scevgep22.185.10 to [11 x [11 x i8]]*
  %601 = load i8, i8* %scevgep22.185.10, align 1
  %conv190.1.1.10 = zext i8 %601 to i32
  %602 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.1.10 = zext i8 %602 to i32
  %xor194.1.1.10 = xor i32 %conv193.1.1.10, %conv190.1.1.10
  %conv195.1.1.10 = trunc i32 %xor194.1.1.10 to i8
  store i8 %conv195.1.1.10, i8* %arrayidx192.10, align 1
  %scevgep22.1.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %600, i64 0, i64 -1, i64 0
  %603 = bitcast i8* %scevgep22.1.1.10 to [11 x [11 x i8]]*
  %604 = load i8, i8* %scevgep22.1.1.10, align 1
  %conv190.2.10 = zext i8 %604 to i32
  %605 = load i8, i8* %arrayidx192.10, align 1
  %conv193.2.10 = zext i8 %605 to i32
  %xor194.2.10 = xor i32 %conv193.2.10, %conv190.2.10
  %conv195.2.10 = trunc i32 %xor194.2.10 to i8
  store i8 %conv195.2.10, i8* %arrayidx192.10, align 1
  %scevgep22.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %603, i64 0, i64 -1, i64 0
  %606 = bitcast i8* %scevgep22.2.10 to [11 x [11 x i8]]*
  %607 = load i8, i8* %scevgep22.2.10, align 1
  %conv190.1.2.10 = zext i8 %607 to i32
  %608 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.2.10 = zext i8 %608 to i32
  %xor194.1.2.10 = xor i32 %conv193.1.2.10, %conv190.1.2.10
  %conv195.1.2.10 = trunc i32 %xor194.1.2.10 to i8
  store i8 %conv195.1.2.10, i8* %arrayidx192.10, align 1
  %scevgep22.1.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %606, i64 0, i64 -1, i64 0
  %609 = bitcast i8* %scevgep22.1.2.10 to [11 x [11 x i8]]*
  %610 = load i8, i8* %scevgep22.1.2.10, align 1
  %conv190.3.10 = zext i8 %610 to i32
  %611 = load i8, i8* %arrayidx192.10, align 1
  %conv193.3.10 = zext i8 %611 to i32
  %xor194.3.10 = xor i32 %conv193.3.10, %conv190.3.10
  %conv195.3.10 = trunc i32 %xor194.3.10 to i8
  store i8 %conv195.3.10, i8* %arrayidx192.10, align 1
  %scevgep22.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %609, i64 0, i64 -1, i64 0
  %612 = bitcast i8* %scevgep22.3.10 to [11 x [11 x i8]]*
  %613 = load i8, i8* %scevgep22.3.10, align 1
  %conv190.1.3.10 = zext i8 %613 to i32
  %614 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.3.10 = zext i8 %614 to i32
  %xor194.1.3.10 = xor i32 %conv193.1.3.10, %conv190.1.3.10
  %conv195.1.3.10 = trunc i32 %xor194.1.3.10 to i8
  store i8 %conv195.1.3.10, i8* %arrayidx192.10, align 1
  %scevgep22.1.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %612, i64 0, i64 -1, i64 0
  %615 = bitcast i8* %scevgep22.1.3.10 to [11 x [11 x i8]]*
  %616 = load i8, i8* %scevgep22.1.3.10, align 1
  %conv190.4.10 = zext i8 %616 to i32
  %617 = load i8, i8* %arrayidx192.10, align 1
  %conv193.4.10 = zext i8 %617 to i32
  %xor194.4.10 = xor i32 %conv193.4.10, %conv190.4.10
  %conv195.4.10 = trunc i32 %xor194.4.10 to i8
  store i8 %conv195.4.10, i8* %arrayidx192.10, align 1
  %scevgep22.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %615, i64 0, i64 -1, i64 0
  %618 = load i8, i8* %scevgep22.4.10, align 1
  %conv190.1.4.10 = zext i8 %618 to i32
  %619 = load i8, i8* %arrayidx192.10, align 1
  %conv193.1.4.10 = zext i8 %619 to i32
  %xor194.1.4.10 = xor i32 %conv193.1.4.10, %conv190.1.4.10
  %conv195.1.4.10 = trunc i32 %xor194.1.4.10 to i8
  store i8 %conv195.1.4.10, i8* %arrayidx192.10, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %620 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %621 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %621 to i32
  %conv1.i.i236.1 = zext i8 %620 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %622 = load i8, i8* %scevgep.2, align 1
  %conv.i.i235.2 = zext i8 %622 to i32
  %conv1.i.i236.2 = zext i8 %conv2.i.i238.1 to i32
  %xor.i.i237.2 = xor i32 %conv1.i.i236.2, %conv.i.i235.2
  %conv2.i.i238.2 = trunc i32 %xor.i.i237.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %623 = load i8, i8* %scevgep.3, align 1
  %conv.i.i235.3 = zext i8 %623 to i32
  %conv1.i.i236.3 = zext i8 %conv2.i.i238.2 to i32
  %xor.i.i237.3 = xor i32 %conv1.i.i236.3, %conv.i.i235.3
  %conv2.i.i238.3 = trunc i32 %xor.i.i237.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %624 = load i8, i8* %scevgep.4, align 1
  %conv.i.i235.4 = zext i8 %624 to i32
  %conv1.i.i236.4 = zext i8 %conv2.i.i238.3 to i32
  %xor.i.i237.4 = xor i32 %conv1.i.i236.4, %conv.i.i235.4
  %conv2.i.i238.4 = trunc i32 %xor.i.i237.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %625 = load i8, i8* %scevgep.5, align 1
  %conv.i.i235.5 = zext i8 %625 to i32
  %conv1.i.i236.5 = zext i8 %conv2.i.i238.4 to i32
  %xor.i.i237.5 = xor i32 %conv1.i.i236.5, %conv.i.i235.5
  %conv2.i.i238.5 = trunc i32 %xor.i.i237.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %626 = load i8, i8* %scevgep.6, align 1
  %conv.i.i235.6 = zext i8 %626 to i32
  %conv1.i.i236.6 = zext i8 %conv2.i.i238.5 to i32
  %xor.i.i237.6 = xor i32 %conv1.i.i236.6, %conv.i.i235.6
  %conv2.i.i238.6 = trunc i32 %xor.i.i237.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %627 = load i8, i8* %scevgep.7, align 1
  %conv.i.i235.7 = zext i8 %627 to i32
  %conv1.i.i236.7 = zext i8 %conv2.i.i238.6 to i32
  %xor.i.i237.7 = xor i32 %conv1.i.i236.7, %conv.i.i235.7
  %conv2.i.i238.7 = trunc i32 %xor.i.i237.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %628 = load i8, i8* %scevgep.8, align 1
  %conv.i.i235.8 = zext i8 %628 to i32
  %conv1.i.i236.8 = zext i8 %conv2.i.i238.7 to i32
  %xor.i.i237.8 = xor i32 %conv1.i.i236.8, %conv.i.i235.8
  %conv2.i.i238.8 = trunc i32 %xor.i.i237.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %629 = load i8, i8* %scevgep.9, align 1
  %conv.i.i235.9 = zext i8 %629 to i32
  %conv1.i.i236.9 = zext i8 %conv2.i.i238.8 to i32
  %xor.i.i237.9 = xor i32 %conv1.i.i236.9, %conv.i.i235.9
  %conv2.i.i238.9 = trunc i32 %xor.i.i237.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %630 = load i8, i8* %scevgep.10, align 1
  %conv.i.i235.10 = zext i8 %630 to i32
  %conv1.i.i236.10 = zext i8 %conv2.i.i238.9 to i32
  %xor.i.i237.10 = xor i32 %conv1.i.i236.10, %conv.i.i235.10
  %conv2.i.i238.10 = trunc i32 %xor.i.i237.10 to i8
  %conv205 = zext i8 %conv2.i.i238.10 to i32
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
