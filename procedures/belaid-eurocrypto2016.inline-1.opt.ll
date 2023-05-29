; ModuleID = '../examples/belaid-eurocrypto2016.inline-1.ll'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
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
  %alpha = alloca [2 x [2 x i8]], align 1
  %t = alloca [2 x [2 x i8]], align 1
  %r = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep47.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep47.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep43.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep43.1, align 1
  %conv.i.i218.1 = zext i8 %3 to i32
  %conv1.i.i219.1 = zext i8 %2 to i32
  %xor.i.i220.1 = xor i32 %conv1.i.i219.1, %conv.i.i218.1
  %conv2.i.i221.1 = trunc i32 %xor.i.i220.1 to i8
  %conv7 = zext i8 %conv2.i.i221.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %4 = load i8, i8* %a, align 1
  %5 = load i8, i8* %b, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5)
  %scevgep39 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 0, i64 0
  store i8 %call18, i8* %scevgep39, align 1
  %6 = load i8, i8* %a, align 1
  %scevgep36.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep36.1, align 1
  %call18.1 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %scevgep39.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 0, i64 1
  store i8 %call18.1, i8* %scevgep39.1, align 1
  %scevgep38 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 1, i64 0
  %8 = bitcast i8* %scevgep38 to [2 x [2 x i8]]*
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1
  %9 = load i8, i8* %arrayidx.1, align 1
  %10 = load i8, i8* %b, align 1
  %call18.149 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %scevgep39.150 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %8, i64 0, i64 0, i64 0
  store i8 %call18.149, i8* %scevgep39.150, align 1
  %11 = load i8, i8* %arrayidx.1, align 1
  %scevgep36.1.1 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep36.1.1, align 1
  %call18.1.1 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12)
  %scevgep39.1.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %8, i64 0, i64 0, i64 1
  store i8 %call18.1.1, i8* %scevgep39.1.1, align 1
  %scevgep27 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %call37 = call zeroext i8 (...) @rand()
  store i8 %call37, i8* %scevgep27, align 1
  %arrayidx65 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65, i64 0, i64 0
  %13 = load i8, i8* %arrayidx67, align 1
  store i8 %13, i8* %c, align 1
  %arrayidx132 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0
  %arrayidx135 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx132, i64 0, i64 1
  %14 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %14 to i32
  %arrayidx138 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 0
  %arrayidx141 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx138, i64 0, i64 1
  %15 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %15 to i32
  %xor143 = xor i32 %conv136, %conv142
  %arrayidx146 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 1
  %arrayidx148 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx146, i64 0, i64 0
  %16 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %16 to i32
  %xor150 = xor i32 %xor143, %conv149
  %conv151 = trunc i32 %xor150 to i8
  %arrayidx153 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %t, i64 0, i64 0
  %arrayidx156 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx153, i64 0, i64 1
  store i8 %conv151, i8* %arrayidx156, align 1
  %arrayidx158 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %t, i64 0, i64 0
  %arrayidx161 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx158, i64 0, i64 1
  %17 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %17 to i32
  %18 = load i8, i8* %c, align 1
  %conv165 = zext i8 %18 to i32
  %xor166 = xor i32 %conv165, %conv162
  %conv167 = trunc i32 %xor166 to i8
  store i8 %conv167, i8* %c, align 1
  %arrayidx65.1 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %alpha, i64 0, i64 1
  %arrayidx67.1 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.1, i64 0, i64 1
  %19 = load i8, i8* %arrayidx67.1, align 1
  %arrayidx69.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %19, i8* %arrayidx69.1, align 1
  %arrayidx192.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep19.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep19.1, align 1
  %conv190.prol.1 = zext i8 %20 to i32
  %21 = load i8, i8* %arrayidx192.1, align 1
  %conv193.prol.1 = zext i8 %21 to i32
  %xor194.prol.1 = xor i32 %conv193.prol.1, %conv190.prol.1
  %conv195.prol.1 = trunc i32 %xor194.prol.1 to i8
  store i8 %conv195.prol.1, i8* %arrayidx192.1, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv203 = zext i8 %call202 to i32
  %22 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %23 = load i8, i8* %scevgep.1, align 1
  %conv.i.i235.1 = zext i8 %23 to i32
  %conv1.i.i236.1 = zext i8 %22 to i32
  %xor.i.i237.1 = xor i32 %conv1.i.i236.1, %conv.i.i235.1
  %conv2.i.i238.1 = trunc i32 %xor.i.i237.1 to i8
  %conv205 = zext i8 %conv2.i.i238.1 to i32
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
