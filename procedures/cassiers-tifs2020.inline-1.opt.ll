; ModuleID = '../examples/cassiers-tifs2020.inline-1.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [32 x i8] c"../examples/cassiers-tifs2020.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %s = alloca [2 x [2 x i8]], align 1
  %p0 = alloca [2 x [2 x i8]], align 1
  %p1 = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep72.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep68.1, align 1
  %conv.i.i155.1 = zext i8 %3 to i32
  %conv1.i.i156.1 = zext i8 %2 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %conv7 = zext i8 %conv2.i.i158.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep58 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep58, align 1
  %scevgep59 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %4 = load i8, i8* %scevgep59, align 1
  %scevgep60 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %4, i8* %scevgep60, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %5 to i32
  %scevgep34.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %6 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %6 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %7 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %7 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %8)
  %scevgep42.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %9 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %scevgep46.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %11 to i32
  %scevgep47.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %12 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep33 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep33 to [2 x [2 x i8]]*
  %scevgep37 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep37 to [2 x [2 x i8]]*
  %scevgep41 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep41 to [2 x [2 x i8]]*
  %scevgep45 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep45 to [2 x [2 x i8]]*
  %scevgep49 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep49 to [2 x [2 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %18 = load i8, i8* %b, align 1
  %conv44.186 = zext i8 %18 to i32
  %scevgep34.187 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %19 = load i8, i8* %scevgep34.187, align 1
  %conv49.188 = zext i8 %19 to i32
  %xor.189 = xor i32 %conv44.186, %conv49.188
  %conv50.190 = trunc i32 %xor.189 to i8
  %scevgep38.191 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  store i8 %conv50.190, i8* %scevgep38.191, align 1
  %20 = load i8, i8* %arrayidx56.1, align 1
  %conv57.192 = zext i8 %20 to i32
  %xor58.193 = xor i32 %conv57.192, 1
  %conv59.194 = trunc i32 %xor58.193 to i8
  %scevgep35.195 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %21 = load i8, i8* %scevgep35.195, align 1
  %call64.196 = call zeroext i8 @mult(i8 zeroext %conv59.194, i8 zeroext %21)
  %scevgep42.197 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %15, i64 0, i64 0, i64 0
  store i8 %call64.196, i8* %scevgep42.197, align 1
  %22 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.198 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep39.198, align 1
  %call75.199 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %scevgep46.1100 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %16, i64 0, i64 0, i64 0
  store i8 %call75.199, i8* %scevgep46.1100, align 1
  %scevgep43.1101 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %15, i64 0, i64 0, i64 0
  %24 = load i8, i8* %scevgep43.1101, align 1
  %conv84.1102 = zext i8 %24 to i32
  %scevgep47.1103 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %16, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep47.1103, align 1
  %conv89.1104 = zext i8 %25 to i32
  %xor90.1105 = xor i32 %conv84.1102, %conv89.1104
  %conv91.1106 = trunc i32 %xor90.1105 to i8
  %scevgep50.1107 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  store i8 %conv91.1106, i8* %scevgep50.1107, align 1
  %26 = load i8, i8* %a, align 1
  %27 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %28 to i32
  %29 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %29 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep21 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep21 to [2 x [2 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %31 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %32 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.176 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %30, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep22.176, align 1
  %conv126.177 = zext i8 %33 to i32
  %34 = load i8, i8* %arrayidx128.1, align 1
  %conv129.178 = zext i8 %34 to i32
  %xor130.179 = xor i32 %conv129.178, %conv126.177
  %conv131.180 = trunc i32 %xor130.179 to i8
  store i8 %conv131.180, i8* %arrayidx128.1, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %35 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %36 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %36 to i32
  %conv1.i.i173.1 = zext i8 %35 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %conv142 = zext i8 %conv2.i.i175.1 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
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
