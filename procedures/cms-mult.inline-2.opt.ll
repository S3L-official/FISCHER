; ModuleID = '../examples/cms-mult.inline-2.ll'
source_filename = "../examples/cms-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"../examples/cms-mult.c\00", section "llvm.metadata"
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
  %scevgep.2 = getelementptr i8, i8* %from, i64 2
  %2 = load i8, i8* %scevgep.2, align 1
  %call.2 = call zeroext i8 %f(i8 zeroext %2)
  %scevgep2.2 = getelementptr i8, i8* %to, i64 2
  store i8 %call.2, i8* %scevgep2.2, align 1
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
  ret i8 %conv2.2
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
  ret i8 %conv2.i.2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [9 x i8], align 1
  %x = alloca [3 x [3 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep18.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep18.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep18.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep18.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep14.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep14.1, align 1
  %conv.i.i184.1 = zext i8 %4 to i32
  %conv1.i.i185.1 = zext i8 %3 to i32
  %xor.i.i186.1 = xor i32 %conv1.i.i185.1, %conv.i.i184.1
  %conv2.i.i187.1 = trunc i32 %xor.i.i186.1 to i8
  %scevgep14.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep14.2, align 1
  %conv.i.i184.2 = zext i8 %5 to i32
  %conv1.i.i185.2 = zext i8 %conv2.i.i187.1 to i32
  %xor.i.i186.2 = xor i32 %conv1.i.i185.2, %conv.i.i184.2
  %conv2.i.i187.2 = trunc i32 %xor.i.i186.2 to i8
  %conv7 = zext i8 %conv2.i.i187.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call12 = call zeroext i8 (...) @rand()
  %scevgep10 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 0
  store i8 %call12, i8* %scevgep10, align 1
  %call12.1 = call zeroext i8 (...) @rand()
  %scevgep10.1 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 1
  store i8 %call12.1, i8* %scevgep10.1, align 1
  %call12.2 = call zeroext i8 (...) @rand()
  %scevgep10.2 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 2
  store i8 %call12.2, i8* %scevgep10.2, align 1
  %call12.3 = call zeroext i8 (...) @rand()
  %scevgep10.3 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 3
  store i8 %call12.3, i8* %scevgep10.3, align 1
  %call12.4 = call zeroext i8 (...) @rand()
  %scevgep10.4 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 4
  store i8 %call12.4, i8* %scevgep10.4, align 1
  %call12.5 = call zeroext i8 (...) @rand()
  %scevgep10.5 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 5
  store i8 %call12.5, i8* %scevgep10.5, align 1
  %call12.6 = call zeroext i8 (...) @rand()
  %scevgep10.6 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 6
  store i8 %call12.6, i8* %scevgep10.6, align 1
  %call12.7 = call zeroext i8 (...) @rand()
  %scevgep10.7 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 7
  store i8 %call12.7, i8* %scevgep10.7, align 1
  %call12.8 = call zeroext i8 (...) @rand()
  %scevgep10.8 = getelementptr [9 x i8], [9 x i8]* %r, i64 0, i64 8
  store i8 %call12.8, i8* %scevgep10.8, align 1
  %6 = load i8, i8* %a, align 1
  %7 = load i8, i8* %b, align 1
  %call15 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7)
  %conv16 = zext i8 %call15 to i32
  %arrayidx17 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 0
  %8 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %8 to i32
  %xor = xor i32 %conv16, %conv18
  %arrayidx19 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 1
  %9 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %9 to i32
  %xor21 = xor i32 %xor, %conv20
  %conv22 = trunc i32 %xor21 to i8
  %arrayidx23 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx24 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx23, i64 0, i64 0
  store i8 %conv22, i8* %arrayidx24, align 1
  %10 = load i8, i8* %a, align 1
  %arrayidx26 = getelementptr inbounds i8, i8* %b, i64 1
  %11 = load i8, i8* %arrayidx26, align 1
  %call27 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11)
  %conv28 = zext i8 %call27 to i32
  %arrayidx29 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 1
  %12 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %12 to i32
  %xor31 = xor i32 %conv28, %conv30
  %arrayidx32 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 2
  %13 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %13 to i32
  %xor34 = xor i32 %xor31, %conv33
  %conv35 = trunc i32 %xor34 to i8
  %arrayidx36 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx37 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx36, i64 0, i64 1
  store i8 %conv35, i8* %arrayidx37, align 1
  %14 = load i8, i8* %a, align 1
  %arrayidx39 = getelementptr inbounds i8, i8* %b, i64 2
  %15 = load i8, i8* %arrayidx39, align 1
  %call40 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %conv41 = zext i8 %call40 to i32
  %arrayidx42 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 2
  %16 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %16 to i32
  %xor44 = xor i32 %conv41, %conv43
  %arrayidx45 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 3
  %17 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %17 to i32
  %xor47 = xor i32 %xor44, %conv46
  %conv48 = trunc i32 %xor47 to i8
  %arrayidx49 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx50 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx49, i64 0, i64 2
  store i8 %conv48, i8* %arrayidx50, align 1
  %arrayidx51 = getelementptr inbounds i8, i8* %a, i64 1
  %18 = load i8, i8* %arrayidx51, align 1
  %19 = load i8, i8* %b, align 1
  %call53 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19)
  %conv54 = zext i8 %call53 to i32
  %arrayidx55 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 3
  %20 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %20 to i32
  %xor57 = xor i32 %conv54, %conv56
  %arrayidx58 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 4
  %21 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %21 to i32
  %xor60 = xor i32 %xor57, %conv59
  %conv61 = trunc i32 %xor60 to i8
  %arrayidx62 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx62, i64 0, i64 0
  store i8 %conv61, i8* %arrayidx63, align 1
  %arrayidx64 = getelementptr inbounds i8, i8* %a, i64 1
  %22 = load i8, i8* %arrayidx64, align 1
  %arrayidx65 = getelementptr inbounds i8, i8* %b, i64 1
  %23 = load i8, i8* %arrayidx65, align 1
  %call66 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %conv67 = zext i8 %call66 to i32
  %arrayidx68 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 4
  %24 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %24 to i32
  %xor70 = xor i32 %conv67, %conv69
  %arrayidx71 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 5
  %25 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %25 to i32
  %xor73 = xor i32 %xor70, %conv72
  %conv74 = trunc i32 %xor73 to i8
  %arrayidx75 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx76 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx75, i64 0, i64 1
  store i8 %conv74, i8* %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds i8, i8* %a, i64 1
  %26 = load i8, i8* %arrayidx77, align 1
  %arrayidx78 = getelementptr inbounds i8, i8* %b, i64 2
  %27 = load i8, i8* %arrayidx78, align 1
  %call79 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  %conv80 = zext i8 %call79 to i32
  %arrayidx81 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 5
  %28 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %28 to i32
  %xor83 = xor i32 %conv80, %conv82
  %arrayidx84 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 6
  %29 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %29 to i32
  %xor86 = xor i32 %xor83, %conv85
  %conv87 = trunc i32 %xor86 to i8
  %arrayidx88 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx89 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx88, i64 0, i64 2
  store i8 %conv87, i8* %arrayidx89, align 1
  %arrayidx90 = getelementptr inbounds i8, i8* %a, i64 2
  %30 = load i8, i8* %arrayidx90, align 1
  %31 = load i8, i8* %b, align 1
  %call92 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31)
  %conv93 = zext i8 %call92 to i32
  %arrayidx94 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 6
  %32 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %32 to i32
  %xor96 = xor i32 %conv93, %conv95
  %arrayidx97 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 7
  %33 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %33 to i32
  %xor99 = xor i32 %xor96, %conv98
  %conv100 = trunc i32 %xor99 to i8
  %arrayidx101 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx102 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx101, i64 0, i64 0
  store i8 %conv100, i8* %arrayidx102, align 1
  %arrayidx103 = getelementptr inbounds i8, i8* %a, i64 2
  %34 = load i8, i8* %arrayidx103, align 1
  %arrayidx104 = getelementptr inbounds i8, i8* %b, i64 1
  %35 = load i8, i8* %arrayidx104, align 1
  %call105 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %conv106 = zext i8 %call105 to i32
  %arrayidx107 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 7
  %36 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %36 to i32
  %xor109 = xor i32 %conv106, %conv108
  %arrayidx110 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 8
  %37 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %37 to i32
  %xor112 = xor i32 %xor109, %conv111
  %conv113 = trunc i32 %xor112 to i8
  %arrayidx114 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx115 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx114, i64 0, i64 1
  store i8 %conv113, i8* %arrayidx115, align 1
  %arrayidx116 = getelementptr inbounds i8, i8* %a, i64 2
  %38 = load i8, i8* %arrayidx116, align 1
  %arrayidx117 = getelementptr inbounds i8, i8* %b, i64 2
  %39 = load i8, i8* %arrayidx117, align 1
  %call118 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %conv119 = zext i8 %call118 to i32
  %arrayidx120 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 8
  %40 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %40 to i32
  %xor122 = xor i32 %conv119, %conv121
  %arrayidx123 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 0
  %41 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %41 to i32
  %xor125 = xor i32 %xor122, %conv124
  %conv126 = trunc i32 %xor125 to i8
  %arrayidx127 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx128 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx127, i64 0, i64 2
  store i8 %conv126, i8* %arrayidx128, align 1
  %arrayidx129 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx130 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx129, i64 0, i64 0
  %42 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %42 to i32
  %arrayidx132 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx133 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx132, i64 0, i64 1
  %43 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %43 to i32
  %xor135 = xor i32 %conv131, %conv134
  %arrayidx136 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx137 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx136, i64 0, i64 2
  %44 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %44 to i32
  %xor139 = xor i32 %xor135, %conv138
  %conv140 = trunc i32 %xor139 to i8
  store i8 %conv140, i8* %c, align 1
  %arrayidx142 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx143 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx142, i64 0, i64 0
  %45 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %45 to i32
  %arrayidx145 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx146 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx145, i64 0, i64 1
  %46 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %46 to i32
  %xor148 = xor i32 %conv144, %conv147
  %arrayidx149 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx150 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx149, i64 0, i64 2
  %47 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %47 to i32
  %xor152 = xor i32 %xor148, %conv151
  %conv153 = trunc i32 %xor152 to i8
  %arrayidx154 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %conv153, i8* %arrayidx154, align 1
  %arrayidx155 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx156 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx155, i64 0, i64 0
  %48 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %48 to i32
  %arrayidx158 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx159 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx158, i64 0, i64 1
  %49 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %49 to i32
  %xor161 = xor i32 %conv157, %conv160
  %arrayidx162 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx163 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx162, i64 0, i64 2
  %50 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %50 to i32
  %xor165 = xor i32 %xor161, %conv164
  %conv166 = trunc i32 %xor165 to i8
  %arrayidx167 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %conv166, i8* %arrayidx167, align 1
  %call168 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv169 = zext i8 %call168 to i32
  %51 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %52 = load i8, i8* %scevgep.1, align 1
  %conv.i.i201.1 = zext i8 %52 to i32
  %conv1.i.i202.1 = zext i8 %51 to i32
  %xor.i.i203.1 = xor i32 %conv1.i.i202.1, %conv.i.i201.1
  %conv2.i.i204.1 = trunc i32 %xor.i.i203.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %53 = load i8, i8* %scevgep.2, align 1
  %conv.i.i201.2 = zext i8 %53 to i32
  %conv1.i.i202.2 = zext i8 %conv2.i.i204.1 to i32
  %xor.i.i203.2 = xor i32 %conv1.i.i202.2, %conv.i.i201.2
  %conv2.i.i204.2 = trunc i32 %xor.i.i203.2 to i8
  %conv171 = zext i8 %conv2.i.i204.2 to i32
  %cmp172 = icmp eq i32 %conv169, %conv171
  call void @assert(i1 zeroext %cmp172)
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
