; ModuleID = '../examples/barthe-eurocrypto2017.inline-0.ll'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [36 x i8] c"../examples/barthe-eurocrypto2017.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 23 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 80 }], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @transform(i8* %from, i8* %to, i8 (i8)* %f) #0 {
entry:
  %0 = load i8, i8* %from, align 1
  %call = call zeroext i8 %f(i8 zeroext %0)
  store i8 %call, i8* %to, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sigma(i8* %a, i8 (i8)* %f) #0 {
entry:
  %0 = load i8, i8* %a, align 1
  %call = call zeroext i8 %f(i8 zeroext %0)
  ret i8 %call
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
  ret i8 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = load i8, i8* %a, align 1
  %1 = load i8, i8* %b, align 1
  %call = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  store i8 %call, i8* %c, align 1
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %0 = load i8, i8* %a, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %b, align 1
  %conv5 = zext i8 %1 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %c, align 1
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
  %r = alloca [1 x [1 x i8]], align 1
  %cc = alloca [2 x [1 x i8]], align 1
  %dd = alloca [2 x [1 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %conv3 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %1 = load i8, i8* %b, align 1
  %conv7 = zext i8 %1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep93 = getelementptr [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 0, i64 0
  store i8 %call16, i8* %scevgep93, align 1
  %scevgep84 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1, i64 0
  %2 = load i8, i8* %a, align 1
  %3 = load i8, i8* %b, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  store i8 %call.i, i8* %scevgep84, align 1
  %scevgep68 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 1, i64 0, i64 0
  %scevgep6869 = bitcast i8* %scevgep68 to [2 x [1 x i8]]*
  %scevgep76 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 1, i64 1, i64 0
  %scevgep7677 = bitcast i8* %scevgep76 to [2 x [1 x i8]]*
  %4 = load i8, i8* %a, align 1
  %5 = load i8, i8* %b, align 1
  %call.i138 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5) #2
  %scevgep74 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %scevgep6869, i64 0, i64 0, i64 0
  store i8 %call.i138, i8* %scevgep74, align 1
  %6 = load i8, i8* %a, align 1
  %7 = load i8, i8* %b, align 1
  %call.i154 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #2
  %scevgep82 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %scevgep7677, i64 0, i64 0, i64 0
  store i8 %call.i154, i8* %scevgep82, align 1
  %8 = load i8, i8* %a, align 1
  %9 = load i8, i8* %b, align 1
  %call.i170 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #2
  %scevgep66 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 0, i64 0
  store i8 %call.i170, i8* %scevgep66, align 1
  %scevgep59 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1, i64 0
  %10 = load i8, i8* %a, align 1
  %11 = load i8, i8* %b, align 1
  %call.i186 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11) #2
  store i8 %call.i186, i8* %scevgep59, align 1
  %arrayidx42 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1
  %arraydecay43 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx42, i64 0, i64 0
  %arrayidx44 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 1
  %arraydecay45 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx44, i64 0, i64 0
  %12 = load i8, i8* %arraydecay43, align 1
  %conv.i = zext i8 %12 to i32
  %13 = load i8, i8* %arraydecay45, align 1
  %conv5.i = zext i8 %13 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %scevgep54 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 1, i64 0
  store i8 %conv6.i, i8* %scevgep54, align 1
  %scevgep30 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 1, i64 0, i64 0
  %scevgep3031 = bitcast i8* %scevgep30 to [2 x [1 x i8]]*
  %scevgep38 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 1, i64 1, i64 0
  %scevgep3839 = bitcast i8* %scevgep38 to [2 x [1 x i8]]*
  %scevgep46 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 2, i64 0, i64 0
  %scevgep4647 = bitcast i8* %scevgep46 to [2 x [1 x i8]]*
  %arrayidx55 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 1
  %arraydecay56 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx55, i64 0, i64 0
  %arrayidx59 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 2
  %arraydecay60 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx59, i64 0, i64 0
  %14 = load i8, i8* %arraydecay60, align 1
  %conv5.i232 = zext i8 %14 to i32
  %15 = load i8, i8* %arraydecay56, align 1
  %conv.i230 = zext i8 %15 to i32
  %xor.i233 = xor i32 %conv.i230, %conv5.i232
  %conv6.i234 = trunc i32 %xor.i233 to i8
  %scevgep36 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %scevgep3031, i64 0, i64 0, i64 0
  store i8 %conv6.i234, i8* %scevgep36, align 1
  %arrayidx69 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 2
  %arraydecay70 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx69, i64 0, i64 0
  %arrayidx74 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 3
  %arraydecay75 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx74, i64 0, i64 0
  %16 = load i8, i8* %arraydecay75, align 1
  %conv5.i311 = zext i8 %16 to i32
  %17 = load i8, i8* %arraydecay70, align 1
  %conv.i309 = zext i8 %17 to i32
  %xor.i312 = xor i32 %conv.i309, %conv5.i311
  %conv6.i313 = trunc i32 %xor.i312 to i8
  %scevgep44 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %scevgep3839, i64 0, i64 0, i64 0
  store i8 %conv6.i313, i8* %scevgep44, align 1
  %arrayidx82 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 3
  %arraydecay83 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx82, i64 0, i64 0
  %arrayidx88 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 1
  %arraydecay89 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx88, i64 0, i64 0
  %18 = load i8, i8* %arraydecay89, align 1
  %conv5.i289 = zext i8 %18 to i32
  %19 = load i8, i8* %arraydecay83, align 1
  %conv.i287 = zext i8 %19 to i32
  %xor.i290 = xor i32 %conv.i287, %conv5.i289
  %conv6.i291 = trunc i32 %xor.i290 to i8
  %scevgep52 = getelementptr [2 x [1 x i8]], [2 x [1 x i8]]* %scevgep4647, i64 0, i64 0, i64 0
  store i8 %conv6.i291, i8* %scevgep52, align 1
  %arrayidx98 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 1
  %arraydecay99 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx98, i64 0, i64 0
  %arrayidx100 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 0
  %arraydecay101 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx100, i64 0, i64 0
  %20 = load i8, i8* %arraydecay99, align 1
  %conv.i268 = zext i8 %20 to i32
  %21 = load i8, i8* %arraydecay101, align 1
  %conv5.i270 = zext i8 %21 to i32
  %xor.i271 = xor i32 %conv.i268, %conv5.i270
  %conv6.i272 = trunc i32 %xor.i271 to i8
  store i8 %conv6.i272, i8* %c, align 1
  %arrayidx102 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1
  %arraydecay103 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx102, i64 0, i64 0
  %22 = load i8, i8* %arraydecay103, align 1
  %conv.i249 = zext i8 %22 to i32
  %23 = load i8, i8* %c, align 1
  %conv5.i251 = zext i8 %23 to i32
  %xor.i252 = xor i32 %conv.i249, %conv5.i251
  %conv6.i253 = trunc i32 %xor.i252 to i8
  store i8 %conv6.i253, i8* %c, align 1
  %call104 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv105 = zext i8 %call104 to i32
  %24 = load i8, i8* %c, align 1
  %conv107 = zext i8 %24 to i32
  %cmp108 = icmp eq i32 %conv105, %conv107
  call void @assert(i1 zeroext %cmp108)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %r = alloca [1 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call6 = call zeroext i8 (...) @rand()
  %scevgep18 = getelementptr [1 x i8], [1 x i8]* %r, i64 0, i64 0
  store i8 %call6, i8* %scevgep18, align 1
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %r, i64 0, i64 0
  %1 = load i8, i8* %arraydecay, align 1
  %conv.i = zext i8 %1 to i32
  %2 = load i8, i8* %x, align 1
  %conv5.i = zext i8 %2 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  store i8 %conv6.i, i8* %x, align 1
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %r, i64 0, i64 0
  %3 = load i8, i8* %arraydecay7, align 1
  %conv.i40 = zext i8 %3 to i32
  %4 = load i8, i8* %x, align 1
  %conv5.i42 = zext i8 %4 to i32
  %xor.i43 = xor i32 %conv.i40, %conv5.i42
  %conv6.i44 = trunc i32 %xor.i43 to i8
  store i8 %conv6.i44, i8* %x, align 1
  %conv8 = zext i8 %call to i32
  %5 = load i8, i8* %x, align 1
  %conv10 = zext i8 %5 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  call void @assert(i1 zeroext %cmp11)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
