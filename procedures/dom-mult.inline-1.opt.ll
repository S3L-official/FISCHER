; ModuleID = '../examples/dom-mult.inline-1.ll'
source_filename = "../examples/dom-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"../examples/dom-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %u = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep55.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep55.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep51.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep51.1, align 1
  %conv.i.i106.1 = zext i8 %3 to i32
  %conv1.i.i107.1 = zext i8 %2 to i32
  %xor.i.i108.1 = xor i32 %conv1.i.i107.1, %conv.i.i106.1
  %conv2.i.i109.1 = trunc i32 %xor.i.i108.1 to i8
  %conv7 = zext i8 %conv2.i.i109.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [2 x [2 x i8]]*
  %scevgep32 = getelementptr i8, i8* %b, i64 1
  %scevgep40 = getelementptr i8, i8* %a, i64 1
  %call16 = call zeroext i8 (...) @rand()
  %scevgep29 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep29, align 1
  %4 = load i8, i8* %a, align 1
  %scevgep35 = getelementptr i8, i8* %scevgep32, i64 0
  %5 = load i8, i8* %scevgep35, align 1
  %call23 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5)
  %conv24 = zext i8 %call23 to i32
  %scevgep30 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %6 = load i8, i8* %scevgep30, align 1
  %conv29 = zext i8 %6 to i32
  %xor = xor i32 %conv24, %conv29
  %conv30 = trunc i32 %xor to i8
  %scevgep38 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep39 = getelementptr i8, i8* %scevgep38, i64 1
  store i8 %conv30, i8* %scevgep39, align 1
  %scevgep43 = getelementptr i8, i8* %scevgep40, i64 0
  %7 = load i8, i8* %scevgep43, align 1
  %8 = load i8, i8* %b, align 1
  %call39 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8)
  %conv40 = zext i8 %call39 to i32
  %scevgep31 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %scevgep2324, i64 0, i64 0, i64 0
  %9 = load i8, i8* %scevgep31, align 1
  %conv45 = zext i8 %9 to i32
  %xor46 = xor i32 %conv40, %conv45
  %conv47 = trunc i32 %xor46 to i8
  %scevgep44 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 0
  %scevgep45 = getelementptr i8, i8* %scevgep44, i64 2
  store i8 %conv47, i8* %scevgep45, align 1
  %10 = load i8, i8* %a, align 1
  %11 = load i8, i8* %b, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11)
  store i8 %call64, i8* %c, align 1
  %scevgep20.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep20.1, align 1
  %conv78.1 = zext i8 %12 to i32
  %13 = load i8, i8* %c, align 1
  %conv81.1 = zext i8 %13 to i32
  %xor82.1 = xor i32 %conv81.1, %conv78.1
  %conv83.1 = trunc i32 %xor82.1 to i8
  store i8 %conv83.1, i8* %c, align 1
  %scevgep19 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep19 to [2 x [2 x i8]]*
  %arrayidx61.1 = getelementptr inbounds i8, i8* %a, i64 1
  %15 = load i8, i8* %arrayidx61.1, align 1
  %arrayidx63.1 = getelementptr inbounds i8, i8* %b, i64 1
  %16 = load i8, i8* %arrayidx63.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16)
  %arrayidx66.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call64.1, i8* %arrayidx66.1, align 1
  %arrayidx80.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.159 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  %17 = load i8, i8* %scevgep20.159, align 1
  %conv78.160 = zext i8 %17 to i32
  %18 = load i8, i8* %arrayidx80.1, align 1
  %conv81.161 = zext i8 %18 to i32
  %xor82.162 = xor i32 %conv81.161, %conv78.160
  %conv83.163 = trunc i32 %xor82.162 to i8
  store i8 %conv83.163, i8* %arrayidx80.1, align 1
  %call90 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv91 = zext i8 %call90 to i32
  %19 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %20 = load i8, i8* %scevgep.1, align 1
  %conv.i.i123.1 = zext i8 %20 to i32
  %conv1.i.i124.1 = zext i8 %19 to i32
  %xor.i.i125.1 = xor i32 %conv1.i.i124.1, %conv.i.i123.1
  %conv2.i.i126.1 = trunc i32 %xor.i.i125.1 to i8
  %conv93 = zext i8 %conv2.i.i126.1 to i32
  %cmp94 = icmp eq i32 %conv91, %conv93
  call void @assert(i1 zeroext %cmp94)
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
