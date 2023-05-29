; ModuleID = '../examples/cassiers-tifs2020-sbox-noaffine.inline-0.ll'
source_filename = "../examples/cassiers-tifs2020-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [46 x i8] c"../examples/cassiers-tifs2020-sbox-noaffine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 60 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 74 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 104 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 127 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 133 }], section "llvm.metadata"

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
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
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
  %2 = load i8, i8* %a, align 1
  %3 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call111, i8* %c, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %4 = load i8, i8* %c, align 1
  %conv142 = zext i8 %4 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x, i8* %y) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %1 = load i8, i8* %x, align 1
  store i8 %1, i8* %y, align 1
  %conv16 = zext i8 %call to i32
  %2 = load i8, i8* %y, align 1
  %conv18 = zext i8 %2 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call.i3 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #3
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %call.i3.i, i8 zeroext %call.i3.i) #3
  %call.i3.i6 = call zeroext i8 @mult(i8 zeroext %call.i.i5, i8 zeroext %call.i.i5) #3
  ret i8 %call.i3.i6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call1 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %x)
  %call.i.i = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call1) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %call3 = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call.i3.i)
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %call3, i8 zeroext %call3) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %call5 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i, i8 zeroext %call.i3.i)
  %call6 = call zeroext i8 @mult(i8 zeroext %call5, i8 zeroext %call.i)
  ret i8 %call6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %z = alloca [1 x i8], align 1
  %zr = alloca [1 x i8], align 1
  %w = alloca [1 x i8], align 1
  %wr = alloca [1 x i8], align 1
  %u = alloca [1 x i8], align 1
  %v = alloca [1 x i8], align 1
  %v16 = alloca [1 x i8], align 1
  %m = alloca [1 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %1 = load i8, i8* %x, align 1
  %call.i339 = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %1) #3
  %scevgep331 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  store i8 %call.i339, i8* %scevgep331, align 1
  %call.i32 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i32 to i32
  %scevgep326 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %2 = load i8, i8* %scevgep326, align 1
  %conv2.i = zext i8 %2 to i32
  %cmp.i33 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i33) #3
  %scevgep321 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %3 = load i8, i8* %scevgep321, align 1
  %scevgep322 = getelementptr [1 x i8], [1 x i8]* %zr, i64 0, i64 0
  store i8 %3, i8* %scevgep322, align 1
  %conv16.i = zext i8 %call.i32 to i32
  %scevgep313 = getelementptr [1 x i8], [1 x i8]* %zr, i64 0, i64 0
  %4 = load i8, i8* %scevgep313, align 1
  %conv18.i = zext i8 %4 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %zr, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %call.i52 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i53 = zext i8 %call.i52 to i32
  %scevgep309 = getelementptr [1 x i8], [1 x i8]* %zr, i64 0, i64 0
  %5 = load i8, i8* %scevgep309, align 1
  %conv3.i = zext i8 %5 to i32
  %cmp.i65 = icmp eq i32 %conv.i53, %conv3.i
  call void @assume(i1 zeroext %cmp.i65) #3
  %conv5.i = zext i8 %call1.i to i32
  %6 = load i8, i8* %x, align 1
  %conv7.i = zext i8 %6 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %7 = load i8, i8* %arraydecay6, align 1
  %8 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i52, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep259 = getelementptr [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %9 = load i8, i8* %scevgep259, align 1
  %conv142.i = zext i8 %9 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep254 = getelementptr [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %10 = load i8, i8* %scevgep254, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %10) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep255 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  store i8 %call.i3.i, i8* %scevgep255, align 1
  %call.i108 = call zeroext i8 (...) @rand() #3
  %conv.i109 = zext i8 %call.i108 to i32
  %scevgep250 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %11 = load i8, i8* %scevgep250, align 1
  %conv2.i121 = zext i8 %11 to i32
  %cmp.i122 = icmp eq i32 %conv.i109, %conv2.i121
  call void @assume(i1 zeroext %cmp.i122) #3
  %scevgep245 = getelementptr [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %12 = load i8, i8* %scevgep245, align 1
  %scevgep246 = getelementptr [1 x i8], [1 x i8]* %wr, i64 0, i64 0
  store i8 %12, i8* %scevgep246, align 1
  %conv16.i150 = zext i8 %call.i108 to i32
  %scevgep237 = getelementptr [1 x i8], [1 x i8]* %wr, i64 0, i64 0
  %13 = load i8, i8* %scevgep237, align 1
  %conv18.i163 = zext i8 %13 to i32
  %cmp19.i164 = icmp eq i32 %conv16.i150, %conv18.i163
  call void @assert(i1 zeroext %cmp19.i164) #3
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %wr, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %call.i197 = call zeroext i8 (...) @rand() #3
  %call1.i198 = call zeroext i8 (...) @rand() #3
  %conv.i199 = zext i8 %call.i197 to i32
  %scevgep233 = getelementptr [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %14 = load i8, i8* %scevgep233, align 1
  %conv3.i211 = zext i8 %14 to i32
  %cmp.i212 = icmp eq i32 %conv.i199, %conv3.i211
  call void @assume(i1 zeroext %cmp.i212) #3
  %conv5.i213 = zext i8 %call1.i198 to i32
  %scevgep229 = getelementptr [1 x i8], [1 x i8]* %wr, i64 0, i64 0
  %15 = load i8, i8* %scevgep229, align 1
  %conv7.i226 = zext i8 %15 to i32
  %cmp8.i227 = icmp eq i32 %conv5.i213, %conv7.i226
  call void @assume(i1 zeroext %cmp8.i227) #3
  %16 = load i8, i8* %arraydecay12, align 1
  %17 = load i8, i8* %arraydecay13, align 1
  %call111.i327 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #3
  store i8 %call111.i327, i8* %arraydecay14, align 1
  %call139.i350 = call zeroext i8 @mult(i8 zeroext %call.i197, i8 zeroext %call1.i198) #3
  %conv140.i351 = zext i8 %call139.i350 to i32
  %scevgep183 = getelementptr [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %18 = load i8, i8* %scevgep183, align 1
  %conv142.i364 = zext i8 %18 to i32
  %cmp143.i365 = icmp eq i32 %conv140.i351, %conv142.i364
  call void @assert(i1 zeroext %cmp143.i365) #3
  %scevgep178 = getelementptr [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %19 = load i8, i8* %scevgep178, align 1
  %call.i.i.i337 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %19) #3
  %call.i3.i.i338 = call zeroext i8 @mult(i8 zeroext %call.i.i.i337, i8 zeroext %call.i.i.i337) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i338, i8 zeroext %call.i3.i.i338) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep179 = getelementptr [1 x i8], [1 x i8]* %v16, i64 0, i64 0
  store i8 %call.i3.i6.i, i8* %scevgep179, align 1
  %arraydecay17 = getelementptr inbounds [1 x i8], [1 x i8]* %v16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %wr, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %call.i413 = call zeroext i8 (...) @rand() #3
  %call1.i414 = call zeroext i8 (...) @rand() #3
  %conv.i415 = zext i8 %call.i413 to i32
  %scevgep174 = getelementptr [1 x i8], [1 x i8]* %v16, i64 0, i64 0
  %20 = load i8, i8* %scevgep174, align 1
  %conv3.i427 = zext i8 %20 to i32
  %cmp.i428 = icmp eq i32 %conv.i415, %conv3.i427
  call void @assume(i1 zeroext %cmp.i428) #3
  %conv5.i429 = zext i8 %call1.i414 to i32
  %scevgep170 = getelementptr [1 x i8], [1 x i8]* %wr, i64 0, i64 0
  %21 = load i8, i8* %scevgep170, align 1
  %conv7.i442 = zext i8 %21 to i32
  %cmp8.i443 = icmp eq i32 %conv5.i429, %conv7.i442
  call void @assume(i1 zeroext %cmp8.i443) #3
  %22 = load i8, i8* %arraydecay17, align 1
  %23 = load i8, i8* %arraydecay18, align 1
  %call111.i543 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #3
  store i8 %call111.i543, i8* %arraydecay19, align 1
  %call139.i566 = call zeroext i8 @mult(i8 zeroext %call.i413, i8 zeroext %call1.i414) #3
  %conv140.i567 = zext i8 %call139.i566 to i32
  %scevgep124 = getelementptr [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %24 = load i8, i8* %scevgep124, align 1
  %conv142.i580 = zext i8 %24 to i32
  %cmp143.i581 = icmp eq i32 %conv140.i567, %conv142.i580
  call void @assert(i1 zeroext %cmp143.i581) #3
  %arraydecay20 = getelementptr inbounds [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %call.i614 = call zeroext i8 (...) @rand() #3
  %call1.i615 = call zeroext i8 (...) @rand() #3
  %conv.i616 = zext i8 %call.i614 to i32
  %scevgep120 = getelementptr [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %25 = load i8, i8* %scevgep120, align 1
  %conv3.i628 = zext i8 %25 to i32
  %cmp.i629 = icmp eq i32 %conv.i616, %conv3.i628
  call void @assume(i1 zeroext %cmp.i629) #3
  %conv5.i630 = zext i8 %call1.i615 to i32
  %scevgep116 = getelementptr [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %26 = load i8, i8* %scevgep116, align 1
  %conv7.i643 = zext i8 %26 to i32
  %cmp8.i644 = icmp eq i32 %conv5.i630, %conv7.i643
  call void @assume(i1 zeroext %cmp8.i644) #3
  %27 = load i8, i8* %arraydecay20, align 1
  %28 = load i8, i8* %arraydecay21, align 1
  %call111.i744 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  store i8 %call111.i744, i8* %y, align 1
  %call139.i767 = call zeroext i8 @mult(i8 zeroext %call.i614, i8 zeroext %call1.i615) #3
  %conv140.i768 = zext i8 %call139.i767 to i32
  %29 = load i8, i8* %y, align 1
  %conv142.i781 = zext i8 %29 to i32
  %cmp143.i782 = icmp eq i32 %conv140.i768, %conv142.i781
  call void @assert(i1 zeroext %cmp143.i782) #3
  %call.i.i786 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i787 = call zeroext i8 @mult(i8 zeroext %call.i.i786, i8 zeroext %call) #3
  %call.i.i.i788 = call zeroext i8 @mult(i8 zeroext %call1.i787, i8 zeroext %call1.i787) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i788, i8 zeroext %call.i.i.i788) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i787, i8 zeroext %call.i3.i.i) #3
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i, i8 zeroext %call3.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #3
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i, i8 zeroext %call.i3.i.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i.i786) #3
  %conv23 = zext i8 %call6.i to i32
  %30 = load i8, i8* %y, align 1
  %conv25 = zext i8 %30 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  call void @assert(i1 zeroext %cmp26)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  ret i8 %x
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %z = alloca [1 x [1 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %1 = load i8, i8* %x, align 1
  %scevgep87 = getelementptr [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %1, i8* %scevgep87, align 1
  %scevgep24 = getelementptr [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 0, i64 0
  %2 = load i8, i8* %scevgep24, align 1
  store i8 %2, i8* %y, align 1
  %conv14 = zext i8 %call to i32
  %3 = load i8, i8* %y, align 1
  %conv16 = zext i8 %3 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  call void @assert(i1 zeroext %cmp17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @af(i8 zeroext %x) #2 {
entry:
  %conv = zext i8 %x to i32
  %call = call zeroext i8 @rotl1(i8 zeroext %x)
  %conv1 = zext i8 %call to i32
  %xor = xor i32 %conv, %conv1
  %call2 = call zeroext i8 @rotl2(i8 zeroext %x)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %call5 = call zeroext i8 @rotl3(i8 zeroext %x)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor4, %conv6
  %call8 = call zeroext i8 @rotl4(i8 zeroext %x)
  %conv9 = zext i8 %call8 to i32
  %xor10 = xor i32 %xor7, %conv9
  %xor11 = xor i32 %xor10, 99
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

declare dso_local zeroext i8 @rotl1(i8 zeroext) #1

declare dso_local zeroext i8 @rotl2(i8 zeroext) #1

declare dso_local zeroext i8 @rotl3(i8 zeroext) #1

declare dso_local zeroext i8 @rotl4(i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sbox(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %x) #3
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call.i3.i.i) #3
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i, i8 zeroext %call3.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #3
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i, i8 zeroext %call.i3.i.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i.i) #3
  %call1 = call zeroext i8 @af(i8 zeroext %call6.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %z.i = alloca [1 x i8], align 1
  %zr.i = alloca [1 x i8], align 1
  %w.i = alloca [1 x i8], align 1
  %wr.i = alloca [1 x i8], align 1
  %u.i = alloca [1 x i8], align 1
  %v.i = alloca [1 x i8], align 1
  %v16.i = alloca [1 x i8], align 1
  %m.i = alloca [1 x i8], align 1
  %x254 = alloca [1 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %conv2 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %x254, i64 0, i64 0
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %1 = load i8, i8* %x, align 1
  %conv2.i = zext i8 %1 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %2 = load i8, i8* %x, align 1
  %call.i355 = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %2) #3
  %scevgep345 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i355, i8* %scevgep345, align 1
  %call.i32.i = call zeroext i8 (...) @rand() #3
  %conv.i.i21 = zext i8 %call.i32.i to i32
  %scevgep340 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %3 = load i8, i8* %scevgep340, align 1
  %conv2.i.i22 = zext i8 %3 to i32
  %cmp.i33.i = icmp eq i32 %conv.i.i21, %conv2.i.i22
  call void @assume(i1 zeroext %cmp.i33.i) #3
  %scevgep335 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %4 = load i8, i8* %scevgep335, align 1
  %scevgep336 = getelementptr [1 x i8], [1 x i8]* %zr.i, i64 0, i64 0
  store i8 %4, i8* %scevgep336, align 1
  %conv16.i.i = zext i8 %call.i32.i to i32
  %scevgep327 = getelementptr [1 x i8], [1 x i8]* %zr.i, i64 0, i64 0
  %5 = load i8, i8* %scevgep327, align 1
  %conv18.i.i = zext i8 %5 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay6.i = getelementptr inbounds [1 x i8], [1 x i8]* %zr.i, i64 0, i64 0
  %arraydecay7.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %call.i52.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i53.i = zext i8 %call.i52.i to i32
  %scevgep323 = getelementptr [1 x i8], [1 x i8]* %zr.i, i64 0, i64 0
  %6 = load i8, i8* %scevgep323, align 1
  %conv3.i.i = zext i8 %6 to i32
  %cmp.i65.i = icmp eq i32 %conv.i53.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i65.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %7 = load i8, i8* %x, align 1
  %conv7.i.i = zext i8 %7 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %8 = load i8, i8* %arraydecay6.i, align 1
  %9 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #3
  store i8 %call111.i.i, i8* %arraydecay7.i, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i52.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep273 = getelementptr [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %10 = load i8, i8* %scevgep273, align 1
  %conv142.i.i = zext i8 %10 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep268 = getelementptr [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %11 = load i8, i8* %scevgep268, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %11) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep269 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i3.i, i8* %scevgep269, align 1
  %call.i108.i = call zeroext i8 (...) @rand() #3
  %conv.i109.i = zext i8 %call.i108.i to i32
  %scevgep264 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep264, align 1
  %conv2.i121.i = zext i8 %12 to i32
  %cmp.i122.i = icmp eq i32 %conv.i109.i, %conv2.i121.i
  call void @assume(i1 zeroext %cmp.i122.i) #3
  %scevgep259 = getelementptr [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %13 = load i8, i8* %scevgep259, align 1
  %scevgep260 = getelementptr [1 x i8], [1 x i8]* %wr.i, i64 0, i64 0
  store i8 %13, i8* %scevgep260, align 1
  %conv16.i150.i = zext i8 %call.i108.i to i32
  %scevgep251 = getelementptr [1 x i8], [1 x i8]* %wr.i, i64 0, i64 0
  %14 = load i8, i8* %scevgep251, align 1
  %conv18.i163.i = zext i8 %14 to i32
  %cmp19.i164.i = icmp eq i32 %conv16.i150.i, %conv18.i163.i
  call void @assert(i1 zeroext %cmp19.i164.i) #3
  %arraydecay12.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [1 x i8], [1 x i8]* %wr.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %call.i197.i = call zeroext i8 (...) @rand() #3
  %call1.i198.i = call zeroext i8 (...) @rand() #3
  %conv.i199.i = zext i8 %call.i197.i to i32
  %scevgep247 = getelementptr [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %15 = load i8, i8* %scevgep247, align 1
  %conv3.i211.i = zext i8 %15 to i32
  %cmp.i212.i = icmp eq i32 %conv.i199.i, %conv3.i211.i
  call void @assume(i1 zeroext %cmp.i212.i) #3
  %conv5.i213.i = zext i8 %call1.i198.i to i32
  %scevgep243 = getelementptr [1 x i8], [1 x i8]* %wr.i, i64 0, i64 0
  %16 = load i8, i8* %scevgep243, align 1
  %conv7.i226.i = zext i8 %16 to i32
  %cmp8.i227.i = icmp eq i32 %conv5.i213.i, %conv7.i226.i
  call void @assume(i1 zeroext %cmp8.i227.i) #3
  %17 = load i8, i8* %arraydecay12.i, align 1
  %18 = load i8, i8* %arraydecay13.i, align 1
  %call111.i327.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  store i8 %call111.i327.i, i8* %arraydecay14.i, align 1
  %call139.i350.i = call zeroext i8 @mult(i8 zeroext %call.i197.i, i8 zeroext %call1.i198.i) #3
  %conv140.i351.i = zext i8 %call139.i350.i to i32
  %scevgep197 = getelementptr [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %19 = load i8, i8* %scevgep197, align 1
  %conv142.i364.i = zext i8 %19 to i32
  %cmp143.i365.i = icmp eq i32 %conv140.i351.i, %conv142.i364.i
  call void @assert(i1 zeroext %cmp143.i365.i) #3
  %scevgep192 = getelementptr [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %20 = load i8, i8* %scevgep192, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %20) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep193 = getelementptr [1 x i8], [1 x i8]* %v16.i, i64 0, i64 0
  store i8 %call.i3.i6.i, i8* %scevgep193, align 1
  %arraydecay17.i = getelementptr inbounds [1 x i8], [1 x i8]* %v16.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [1 x i8], [1 x i8]* %wr.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %call.i413.i = call zeroext i8 (...) @rand() #3
  %call1.i414.i = call zeroext i8 (...) @rand() #3
  %conv.i415.i = zext i8 %call.i413.i to i32
  %scevgep188 = getelementptr [1 x i8], [1 x i8]* %v16.i, i64 0, i64 0
  %21 = load i8, i8* %scevgep188, align 1
  %conv3.i427.i = zext i8 %21 to i32
  %cmp.i428.i = icmp eq i32 %conv.i415.i, %conv3.i427.i
  call void @assume(i1 zeroext %cmp.i428.i) #3
  %conv5.i429.i = zext i8 %call1.i414.i to i32
  %scevgep184 = getelementptr [1 x i8], [1 x i8]* %wr.i, i64 0, i64 0
  %22 = load i8, i8* %scevgep184, align 1
  %conv7.i442.i = zext i8 %22 to i32
  %cmp8.i443.i = icmp eq i32 %conv5.i429.i, %conv7.i442.i
  call void @assume(i1 zeroext %cmp8.i443.i) #3
  %23 = load i8, i8* %arraydecay17.i, align 1
  %24 = load i8, i8* %arraydecay18.i, align 1
  %call111.i543.i = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #3
  store i8 %call111.i543.i, i8* %arraydecay19.i, align 1
  %call139.i566.i = call zeroext i8 @mult(i8 zeroext %call.i413.i, i8 zeroext %call1.i414.i) #3
  %conv140.i567.i = zext i8 %call139.i566.i to i32
  %scevgep138 = getelementptr [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %25 = load i8, i8* %scevgep138, align 1
  %conv142.i580.i = zext i8 %25 to i32
  %cmp143.i581.i = icmp eq i32 %conv140.i567.i, %conv142.i580.i
  call void @assert(i1 zeroext %cmp143.i581.i) #3
  %arraydecay20.i = getelementptr inbounds [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %arraydecay21.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %call.i614.i = call zeroext i8 (...) @rand() #3
  %call1.i615.i = call zeroext i8 (...) @rand() #3
  %conv.i616.i = zext i8 %call.i614.i to i32
  %scevgep134 = getelementptr [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %26 = load i8, i8* %scevgep134, align 1
  %conv3.i628.i = zext i8 %26 to i32
  %cmp.i629.i = icmp eq i32 %conv.i616.i, %conv3.i628.i
  call void @assume(i1 zeroext %cmp.i629.i) #3
  %conv5.i630.i = zext i8 %call1.i615.i to i32
  %scevgep130 = getelementptr [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %27 = load i8, i8* %scevgep130, align 1
  %conv7.i643.i = zext i8 %27 to i32
  %cmp8.i644.i = icmp eq i32 %conv5.i630.i, %conv7.i643.i
  call void @assume(i1 zeroext %cmp8.i644.i) #3
  %28 = load i8, i8* %arraydecay20.i, align 1
  %29 = load i8, i8* %arraydecay21.i, align 1
  %call111.i744.i = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #3
  store i8 %call111.i744.i, i8* %arraydecay, align 1
  %call139.i767.i = call zeroext i8 @mult(i8 zeroext %call.i614.i, i8 zeroext %call1.i615.i) #3
  %conv140.i768.i = zext i8 %call139.i767.i to i32
  %scevgep84 = getelementptr [1 x i8], [1 x i8]* %x254, i64 0, i64 0
  %30 = load i8, i8* %scevgep84, align 1
  %conv142.i781.i = zext i8 %30 to i32
  %cmp143.i782.i = icmp eq i32 %conv140.i768.i, %conv142.i781.i
  call void @assert(i1 zeroext %cmp143.i782.i) #3
  %call.i.i786.i = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #3
  %call1.i787.i = call zeroext i8 @mult(i8 zeroext %call.i.i786.i, i8 zeroext %call.i) #3
  %call.i.i.i788.i = call zeroext i8 @mult(i8 zeroext %call1.i787.i, i8 zeroext %call1.i787.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i788.i, i8 zeroext %call.i.i.i788.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i787.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i.i, i8 zeroext %call3.i.i) #3
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i, i8 zeroext %call.i.i.i.i.i) #3
  %call.i.i5.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i, i8 zeroext %call.i3.i.i.i.i) #3
  %call.i3.i6.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i, i8 zeroext %call.i.i5.i.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i.i786.i) #3
  %conv23.i = zext i8 %call6.i.i to i32
  %scevgep80 = getelementptr [1 x i8], [1 x i8]* %x254, i64 0, i64 0
  %31 = load i8, i8* %scevgep80, align 1
  %conv25.i = zext i8 %31 to i32
  %cmp26.i = icmp eq i32 %conv23.i, %conv25.i
  call void @assert(i1 zeroext %cmp26.i) #3
  %scevgep75 = getelementptr [1 x i8], [1 x i8]* %x254, i64 0, i64 0
  %32 = load i8, i8* %scevgep75, align 1
  %call.i25 = call zeroext i8 @af(i8 zeroext %32) #3
  store i8 %call.i25, i8* %y, align 1
  %call.i.i.i42 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i.i43 = call zeroext i8 @mult(i8 zeroext %call.i.i.i42, i8 zeroext %call) #3
  %call.i.i.i.i44 = call zeroext i8 @mult(i8 zeroext %call1.i.i43, i8 zeroext %call1.i.i43) #3
  %call.i3.i.i.i45 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i44, i8 zeroext %call.i.i.i.i44) #3
  %call3.i.i46 = call zeroext i8 @mult(i8 zeroext %call1.i.i43, i8 zeroext %call.i3.i.i.i45) #3
  %call.i.i.i.i.i47 = call zeroext i8 @mult(i8 zeroext %call3.i.i46, i8 zeroext %call3.i.i46) #3
  %call.i3.i.i.i.i48 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i47, i8 zeroext %call.i.i.i.i.i47) #3
  %call.i.i5.i.i.i49 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i48, i8 zeroext %call.i3.i.i.i.i48) #3
  %call.i3.i6.i.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i49, i8 zeroext %call.i.i5.i.i.i49) #3
  %call5.i.i51 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i50, i8 zeroext %call.i3.i.i.i45) #3
  %call6.i.i52 = call zeroext i8 @mult(i8 zeroext %call5.i.i51, i8 zeroext %call.i.i.i42) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i52) #3
  %conv6 = zext i8 %call1.i to i32
  %33 = load i8, i8* %y, align 1
  %conv8 = zext i8 %33 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  call void @assert(i1 zeroext %cmp9)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
