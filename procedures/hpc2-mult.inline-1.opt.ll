; ModuleID = '../examples/hpc2-mult.inline-1.ll'
source_filename = "../examples/hpc2-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"../examples/hpc2-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %v = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep66.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep66.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep62.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep62.1, align 1
  %conv.i.i137.1 = zext i8 %3 to i32
  %conv1.i.i138.1 = zext i8 %2 to i32
  %xor.i.i139.1 = xor i32 %conv1.i.i138.1, %conv.i.i137.1
  %conv2.i.i140.1 = trunc i32 %xor.i.i139.1 to i8
  %conv7 = zext i8 %conv2.i.i140.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep52 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep52, align 1
  %scevgep53 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %4 = load i8, i8* %scevgep53, align 1
  %scevgep54 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %4, i8* %scevgep54, align 1
  %5 = load i8, i8* %a, align 1
  %conv44.1 = zext i8 %5 to i32
  %xor.1 = xor i32 %conv44.1, 1
  %conv45.1 = trunc i32 %xor.1 to i8
  %scevgep36.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %6 = load i8, i8* %scevgep36.1, align 1
  %call50.1 = call zeroext i8 @mult(i8 zeroext %conv45.1, i8 zeroext %6)
  %scevgep40.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 1
  store i8 %call50.1, i8* %scevgep40.1, align 1
  %scevgep41.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep41.1, align 1
  %conv57.1 = zext i8 %7 to i32
  %scevgep37.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep37.1, align 1
  %conv62.1 = zext i8 %8 to i32
  %xor63.1 = xor i32 %conv57.1, %conv62.1
  %conv64.1 = trunc i32 %xor63.1 to i8
  %scevgep44.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %v, i64 0, i64 0, i64 1
  store i8 %conv64.1, i8* %scevgep44.1, align 1
  %scevgep35 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %9 = bitcast i8* %scevgep35 to [2 x [2 x i8]]*
  %scevgep39 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 1, i64 0
  %10 = bitcast i8* %scevgep39 to [2 x [2 x i8]]*
  %scevgep43 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %v, i64 0, i64 1, i64 0
  %11 = bitcast i8* %scevgep43 to [2 x [2 x i8]]*
  %arrayidx43.1 = getelementptr inbounds i8, i8* %a, i64 1
  %12 = load i8, i8* %arrayidx43.1, align 1
  %conv44.183 = zext i8 %12 to i32
  %xor.184 = xor i32 %conv44.183, 1
  %conv45.185 = trunc i32 %xor.184 to i8
  %scevgep36.186 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %9, i64 0, i64 0, i64 0
  %13 = load i8, i8* %scevgep36.186, align 1
  %call50.187 = call zeroext i8 @mult(i8 zeroext %conv45.185, i8 zeroext %13)
  %scevgep40.188 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %10, i64 0, i64 0, i64 0
  store i8 %call50.187, i8* %scevgep40.188, align 1
  %14 = load i8, i8* %b, align 1
  %conv57.189 = zext i8 %14 to i32
  %scevgep37.190 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %9, i64 0, i64 0, i64 0
  %15 = load i8, i8* %scevgep37.190, align 1
  %conv62.191 = zext i8 %15 to i32
  %xor63.192 = xor i32 %conv57.189, %conv62.191
  %conv64.193 = trunc i32 %xor63.192 to i8
  %scevgep44.194 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %11, i64 0, i64 0, i64 0
  store i8 %conv64.193, i8* %scevgep44.194, align 1
  %16 = load i8, i8* %a, align 1
  %17 = load i8, i8* %b, align 1
  %call84 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17)
  store i8 %call84, i8* %c, align 1
  %scevgep22.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep22.1, align 1
  %conv99.1 = zext i8 %18 to i32
  %19 = load i8, i8* %a, align 1
  %scevgep25.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %v, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep25.1, align 1
  %call106.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20)
  %conv107.1 = zext i8 %call106.1 to i32
  %xor108.1 = xor i32 %conv99.1, %conv107.1
  %21 = load i8, i8* %c, align 1
  %conv111.1 = zext i8 %21 to i32
  %xor112.1 = xor i32 %conv111.1, %xor108.1
  %conv113.1 = trunc i32 %xor112.1 to i8
  store i8 %conv113.1, i8* %c, align 1
  %scevgep21 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %u, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep21 to [2 x [2 x i8]]*
  %scevgep24 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %v, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep24 to [2 x [2 x i8]]*
  %arrayidx81.1 = getelementptr inbounds i8, i8* %a, i64 1
  %24 = load i8, i8* %arrayidx81.1, align 1
  %arrayidx83.1 = getelementptr inbounds i8, i8* %b, i64 1
  %25 = load i8, i8* %arrayidx83.1, align 1
  %call84.1 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25)
  %arrayidx86.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call84.1, i8* %arrayidx86.1, align 1
  %arrayidx101.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.170 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %22, i64 0, i64 0, i64 0
  %26 = load i8, i8* %scevgep22.170, align 1
  %conv99.171 = zext i8 %26 to i32
  %27 = load i8, i8* %arrayidx101.1, align 1
  %scevgep25.172 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %23, i64 0, i64 0, i64 0
  %28 = load i8, i8* %scevgep25.172, align 1
  %call106.173 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %conv107.174 = zext i8 %call106.173 to i32
  %xor108.175 = xor i32 %conv99.171, %conv107.174
  %29 = load i8, i8* %arrayidx110.1, align 1
  %conv111.176 = zext i8 %29 to i32
  %xor112.177 = xor i32 %conv111.176, %xor108.175
  %conv113.178 = trunc i32 %xor112.177 to i8
  store i8 %conv113.178, i8* %arrayidx110.1, align 1
  %call121 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv122 = zext i8 %call121 to i32
  %30 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %31 = load i8, i8* %scevgep.1, align 1
  %conv.i.i154.1 = zext i8 %31 to i32
  %conv1.i.i155.1 = zext i8 %30 to i32
  %xor.i.i156.1 = xor i32 %conv1.i.i155.1, %conv.i.i154.1
  %conv2.i.i157.1 = trunc i32 %xor.i.i156.1 to i8
  %conv124 = zext i8 %conv2.i.i157.1 to i32
  %cmp125 = icmp eq i32 %conv122, %conv124
  call void @assert(i1 zeroext %cmp125)
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
