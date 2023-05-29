; ModuleID = '../examples/gross-ches2017.inline-1.ll'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [29 x i8] c"../examples/gross-ches2017.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 23 }], section "llvm.metadata"

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
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 2
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %rem2 = srem i32 %rb, 2
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 2
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 2
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %call.1 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %7)
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.1, i8* %scevgep.1, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = zext i32 %ra to i64
  %1 = zext i32 %rb to i64
  %rem = srem i32 %ra, 2
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem2 = srem i32 %rb, 2
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %b, i64 %idxprom3
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
  %4 = add i64 %0, 1
  %tmp.1 = trunc i64 %4 to i32
  %rem.1 = srem i32 %tmp.1, 2
  %idxprom.1 = sext i32 %rem.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %idxprom.1
  %5 = load i8, i8* %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %6 = add i64 %1, 1
  %tmp2.1 = trunc i64 %6 to i32
  %rem2.1 = srem i32 %tmp2.1, 2
  %idxprom3.1 = sext i32 %rem2.1 to i64
  %arrayidx4.1 = getelementptr inbounds i8, i8* %b, i64 %idxprom3.1
  %7 = load i8, i8* %arrayidx4.1, align 1
  %conv5.1 = zext i8 %7 to i32
  %xor.1 = xor i32 %conv.1, %conv5.1
  %conv6.1 = trunc i32 %xor.1 to i8
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.1, i8* %scevgep.1, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @ceil_(double %x) #0 {
entry:
  %conv = fptosi double %x to i32
  %conv1 = sitofp i32 %conv to double
  %cmp = fcmp oeq double %x, %conv1
  %add = add nsw i32 %conv, 1
  %retval.0 = select i1 %cmp, i32 %conv, i32 %add
  ret i32 %retval.0
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [2 x [2 x i8]], align 1
  %ab1 = alloca [2 x i8], align 1
  %z = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep140.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep140.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep136.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i81.1 = zext i8 %3 to i32
  %conv1.i.i82.1 = zext i8 %2 to i32
  %xor.i.i83.1 = xor i32 %conv1.i.i82.1, %conv.i.i81.1
  %conv2.i.i84.1 = trunc i32 %xor.i.i83.1 to i8
  %conv7 = zext i8 %conv2.i.i84.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep132 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep132, align 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep132.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep132.1, align 1
  %scevgep129 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %4 = bitcast i8* %scevgep129 to [2 x [2 x i8]]*
  %call16.1142 = call zeroext i8 (...) @rand()
  %scevgep132.1143 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %4, i64 0, i64 0, i64 0
  store i8 %call16.1142, i8* %scevgep132.1143, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep132.1.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %4, i64 0, i64 0, i64 1
  store i8 %call16.1.1, i8* %scevgep132.1.1, align 1
  %5 = load i8, i8* %a, align 1
  %6 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %6) #2
  store i8 %call.i, i8* %c, align 1
  %scevgep124.1 = getelementptr i8, i8* %a, i64 1
  %7 = load i8, i8* %scevgep124.1, align 1
  %scevgep125.1 = getelementptr i8, i8* %b, i64 1
  %8 = load i8, i8* %scevgep125.1, align 1
  %call.i.1 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #2
  %scevgep126.1 = getelementptr i8, i8* %c, i64 1
  store i8 %call.i.1, i8* %scevgep126.1, align 1
  %arrayidx54 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0
  %arrayidx56 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx54, i64 0, i64 0
  %9 = load i8, i8* %arrayidx56, align 1
  %scevgep49 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  store i8 %9, i8* %scevgep49, align 1
  %arrayidx56.1 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx54, i64 0, i64 0
  %10 = load i8, i8* %arrayidx56.1, align 1
  %scevgep49.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  store i8 %10, i8* %scevgep49.1, align 1
  %scevgep40 = getelementptr i8, i8* %b, i64 1
  %11 = load i8, i8* %a, align 1
  %12 = load i8, i8* %scevgep40, align 1
  %call.i303 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12) #2
  %scevgep43 = getelementptr [2 x i8], [2 x i8]* %ab1, i64 0, i64 0
  store i8 %call.i303, i8* %scevgep43, align 1
  %scevgep42 = getelementptr i8, i8* %scevgep40, i64 -1
  %scevgep39.1 = getelementptr i8, i8* %a, i64 1
  %13 = load i8, i8* %scevgep39.1, align 1
  %14 = load i8, i8* %scevgep42, align 1
  %call.i303.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  %scevgep43.1 = getelementptr [2 x i8], [2 x i8]* %ab1, i64 0, i64 1
  store i8 %call.i303.1, i8* %scevgep43.1, align 1
  %15 = load i8, i8* %c, align 1
  %conv.i274 = zext i8 %15 to i32
  %scevgep35 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %16 = load i8, i8* %scevgep35, align 1
  %conv5.i279 = zext i8 %16 to i32
  %xor.i280 = xor i32 %conv.i274, %conv5.i279
  %conv6.i281 = trunc i32 %xor.i280 to i8
  store i8 %conv6.i281, i8* %c, align 1
  %scevgep33.1 = getelementptr i8, i8* %c, i64 1
  %17 = load i8, i8* %scevgep33.1, align 1
  %conv.i274.1 = zext i8 %17 to i32
  %scevgep35.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1
  %18 = load i8, i8* %scevgep35.1, align 1
  %conv5.i279.1 = zext i8 %18 to i32
  %xor.i280.1 = xor i32 %conv.i274.1, %conv5.i279.1
  %conv6.i281.1 = trunc i32 %xor.i280.1 to i8
  %scevgep34.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i281.1, i8* %scevgep34.1, align 1
  %19 = load i8, i8* %c, align 1
  %conv.i249 = zext i8 %19 to i32
  %scevgep29 = getelementptr [2 x i8], [2 x i8]* %ab1, i64 0, i64 0
  %20 = load i8, i8* %scevgep29, align 1
  %conv5.i254 = zext i8 %20 to i32
  %xor.i255 = xor i32 %conv.i249, %conv5.i254
  %conv6.i256 = trunc i32 %xor.i255 to i8
  store i8 %conv6.i256, i8* %c, align 1
  %scevgep27.1 = getelementptr i8, i8* %c, i64 1
  %21 = load i8, i8* %scevgep27.1, align 1
  %conv.i249.1 = zext i8 %21 to i32
  %scevgep29.1 = getelementptr [2 x i8], [2 x i8]* %ab1, i64 0, i64 1
  %22 = load i8, i8* %scevgep29.1, align 1
  %conv5.i254.1 = zext i8 %22 to i32
  %xor.i255.1 = xor i32 %conv.i249.1, %conv5.i254.1
  %conv6.i256.1 = trunc i32 %xor.i255.1 to i8
  %scevgep28.1 = getelementptr i8, i8* %c, i64 1
  store i8 %conv6.i256.1, i8* %scevgep28.1, align 1
  %call65 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv66 = zext i8 %call65 to i32
  %23 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %24 = load i8, i8* %scevgep.1, align 1
  %conv.i.i205.1 = zext i8 %24 to i32
  %conv1.i.i206.1 = zext i8 %23 to i32
  %xor.i.i207.1 = xor i32 %conv1.i.i206.1, %conv.i.i205.1
  %conv2.i.i208.1 = trunc i32 %xor.i.i207.1 to i8
  %conv68 = zext i8 %conv2.i.i208.1 to i32
  %cmp69 = icmp eq i32 %conv66, %conv68
  call void @assert(i1 zeroext %cmp69)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
