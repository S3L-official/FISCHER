; ModuleID = '../examples/rivain-ches2010-present-sbox.c'
source_filename = "../examples/rivain-ches2010-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [43 x i8] c"../examples/rivain-ches2010-present-sbox.c\00", section "llvm.metadata"
@a0 = dso_local constant i8 1, align 1
@a1 = dso_local constant i8 2, align 1
@a2 = dso_local constant i8 3, align 1
@a3 = dso_local constant i8 4, align 1
@a4 = dso_local constant i8 5, align 1
@a5 = dso_local constant i8 6, align 1
@a6 = dso_local constant i8 7, align 1
@a7 = dso_local constant i8 8, align 1
@a8 = dso_local constant i8 9, align 1
@a9 = dso_local constant i8 10, align 1
@a10 = dso_local constant i8 11, align 1
@a11 = dso_local constant i8 12, align 1
@a12 = dso_local constant i8 13, align 1
@a13 = dso_local constant i8 14, align 1
@a14 = dso_local constant i8 15, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [14 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 29 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 59 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 63 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 65 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 69 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 73 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 77 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 81 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 85 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 89 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 93 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 97 }], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @transform(i8* %from, i8* %to, i8 (i8)* %f) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %f.addr = alloca i8 (i8)*, align 8
  %i = alloca i32, align 4
  store i8* %from, i8** %from.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  store i8 (i8)* %f, i8 (i8)** %f.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8 (i8)*, i8 (i8)** %f.addr, align 8
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %call = call zeroext i8 %1(i8 zeroext %4)
  %5 = load i8*, i8** %to.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  store i8 %call, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sigma(i8* %a, i8 (i8)* %f) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %f.addr = alloca i8 (i8)*, align 8
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8 (i8)* %f, i8 (i8)** %f.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8 (i8)*, i8 (i8)** %f.addr, align 8
  %2 = load i8*, i8** %a.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %call = call zeroext i8 %1(i8 zeroext %4)
  %conv = zext i8 %call to i32
  %5 = load i8, i8* %result, align 1
  %conv1 = zext i8 %5 to i32
  %xor = xor i32 %conv1, %conv
  %conv2 = trunc i32 %xor to i8
  store i8 %conv2, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8, i8* %result, align 1
  ret i8 %7
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @id(i8 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  ret i8 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @xors(i8* %a) #0 {
entry:
  %a.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %result.i = alloca i8, align 1
  %i.i = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  store i8* %0, i8** %a.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %1 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %1, 0
  br i1 %cmp.i, label %for.body.i, label %sigma.exit

for.body.i:                                       ; preds = %for.cond.i
  %2 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %3 = load i8*, i8** %a.addr.i, align 8
  %4 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %3, i64 %idxprom.i
  %5 = load i8, i8* %arrayidx.i, align 1
  %call.i = call zeroext i8 %2(i8 zeroext %5) #3
  %conv.i = zext i8 %call.i to i32
  %6 = load i8, i8* %result.i, align 1
  %conv1.i = zext i8 %6 to i32
  %xor.i = xor i32 %conv1.i, %conv.i
  %conv2.i = trunc i32 %xor.i to i8
  store i8 %conv2.i, i8* %result.i, align 1
  %7 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %7, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

sigma.exit:                                       ; preds = %for.cond.i
  %8 = load i8, i8* %result.i, align 1
  ret i8 %8
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %a.addr.i.i103 = alloca i8*, align 8
  %f.addr.i.i104 = alloca i8 (i8)*, align 8
  %result.i.i105 = alloca i8, align 1
  %i.i.i106 = alloca i32, align 4
  %a.addr.i107 = alloca i8*, align 8
  %a.addr.i.i86 = alloca i8*, align 8
  %f.addr.i.i87 = alloca i8 (i8)*, align 8
  %result.i.i88 = alloca i8, align 1
  %i.i.i89 = alloca i32, align 4
  %a.addr.i90 = alloca i8*, align 8
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %c.addr = alloca i8*, align 8
  %A = alloca i8, align 1
  %B = alloca i8, align 1
  %r = alloca [1 x [1 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i45 = alloca i32, align 4
  %j57 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  %call = call zeroext i8 (...) @rand()
  store i8 %call, i8* %A, align 1
  %call1 = call zeroext i8 (...) @rand()
  store i8 %call1, i8* %B, align 1
  %0 = load i8, i8* %A, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8*, i8** %a.addr, align 8
  store i8* %1, i8** %a.addr.i, align 8
  %2 = load i8*, i8** %a.addr.i, align 8
  store i8* %2, i8** %a.addr.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i, align 8
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %xors.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %4 = load i8 (i8)*, i8 (i8)** %f.addr.i.i, align 8
  %5 = load i8*, i8** %a.addr.i.i, align 8
  %6 = load i32, i32* %i.i.i, align 4
  %idxprom.i.i = sext i32 %6 to i64
  %arrayidx.i.i = getelementptr inbounds i8, i8* %5, i64 %idxprom.i.i
  %7 = load i8, i8* %arrayidx.i.i, align 1
  %call.i.i = call zeroext i8 %4(i8 zeroext %7) #3
  %conv.i.i = zext i8 %call.i.i to i32
  %8 = load i8, i8* %result.i.i, align 1
  %conv1.i.i = zext i8 %8 to i32
  %xor.i.i = xor i32 %conv1.i.i, %conv.i.i
  %conv2.i.i = trunc i32 %xor.i.i to i8
  store i8 %conv2.i.i, i8* %result.i.i, align 1
  %9 = load i32, i32* %i.i.i, align 4
  %inc.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i, i32* %i.i.i, align 4
  br label %for.cond.i.i

xors.exit:                                        ; preds = %for.cond.i.i
  %10 = load i8, i8* %result.i.i, align 1
  %conv3 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %11 = load i8, i8* %B, align 1
  %conv5 = zext i8 %11 to i32
  %12 = load i8*, i8** %b.addr, align 8
  store i8* %12, i8** %a.addr.i90, align 8
  %13 = load i8*, i8** %a.addr.i90, align 8
  store i8* %13, i8** %a.addr.i.i86, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87, align 8
  store i32 0, i32* %i.i.i89, align 4
  br label %for.cond.i.i92

for.cond.i.i92:                                   ; preds = %for.body.i.i101, %xors.exit
  %14 = load i32, i32* %i.i.i89, align 4
  %cmp.i.i91 = icmp sle i32 %14, 0
  br i1 %cmp.i.i91, label %for.body.i.i101, label %xors.exit102

for.body.i.i101:                                  ; preds = %for.cond.i.i92
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87, align 8
  %16 = load i8*, i8** %a.addr.i.i86, align 8
  %17 = load i32, i32* %i.i.i89, align 4
  %idxprom.i.i93 = sext i32 %17 to i64
  %arrayidx.i.i94 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i93
  %18 = load i8, i8* %arrayidx.i.i94, align 1
  %call.i.i95 = call zeroext i8 %15(i8 zeroext %18) #3
  %conv.i.i96 = zext i8 %call.i.i95 to i32
  %19 = load i8, i8* %result.i.i88, align 1
  %conv1.i.i97 = zext i8 %19 to i32
  %xor.i.i98 = xor i32 %conv1.i.i97, %conv.i.i96
  %conv2.i.i99 = trunc i32 %xor.i.i98 to i8
  store i8 %conv2.i.i99, i8* %result.i.i88, align 1
  %20 = load i32, i32* %i.i.i89, align 4
  %inc.i.i100 = add nsw i32 %20, 1
  store i32 %inc.i.i100, i32* %i.i.i89, align 4
  br label %for.cond.i.i92

xors.exit102:                                     ; preds = %for.cond.i.i92
  %21 = load i8, i8* %result.i.i88, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %xors.exit102
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 0
  br i1 %cmp10, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %24, 0
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom
  %26 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx, i64 0, i64 %idxprom17
  store i8 %call16, i8* %arrayidx18, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom19
  %28 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20, i64 0, i64 %idxprom21
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %29 to i32
  %30 = load i8*, i8** %a.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %30, i64 %idxprom24
  %32 = load i8, i8* %arrayidx25, align 1
  %33 = load i8*, i8** %b.addr, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom26
  %35 = load i8, i8* %arrayidx27, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %35)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %36 = load i8*, i8** %a.addr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 %idxprom30
  %38 = load i8, i8* %arrayidx31, align 1
  %39 = load i8*, i8** %b.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %39, i64 %idxprom32
  %41 = load i8, i8* %arrayidx33, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %41)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %42 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom38
  %43 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx39, i64 0, i64 %idxprom40
  store i8 %conv37, i8* %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond12

for.end:                                          ; preds = %for.cond12
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %45 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %45, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  store i32 0, i32* %i45, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc77, %for.end44
  %46 = load i32, i32* %i45, align 4
  %cmp47 = icmp sle i32 %46, 0
  br i1 %cmp47, label %for.body49, label %for.end79

for.body49:                                       ; preds = %for.cond46
  %47 = load i8*, i8** %a.addr, align 8
  %48 = load i32, i32* %i45, align 4
  %idxprom50 = sext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds i8, i8* %47, i64 %idxprom50
  %49 = load i8, i8* %arrayidx51, align 1
  %50 = load i8*, i8** %b.addr, align 8
  %51 = load i32, i32* %i45, align 4
  %idxprom52 = sext i32 %51 to i64
  %arrayidx53 = getelementptr inbounds i8, i8* %50, i64 %idxprom52
  %52 = load i8, i8* %arrayidx53, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %52)
  %53 = load i8*, i8** %c.addr, align 8
  %54 = load i32, i32* %i45, align 4
  %idxprom55 = sext i32 %54 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %53, i64 %idxprom55
  store i8 %call54, i8* %arrayidx56, align 1
  store i32 0, i32* %j57, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc74, %for.body49
  %55 = load i32, i32* %j57, align 4
  %cmp59 = icmp sle i32 %55, 0
  br i1 %cmp59, label %for.body61, label %for.end76

for.body61:                                       ; preds = %for.cond58
  %56 = load i32, i32* %j57, align 4
  %57 = load i32, i32* %i45, align 4
  %cmp62 = icmp ne i32 %56, %57
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body61
  %58 = load i32, i32* %i45, align 4
  %idxprom64 = sext i32 %58 to i64
  %arrayidx65 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom64
  %59 = load i32, i32* %j57, align 4
  %idxprom66 = sext i32 %59 to i64
  %arrayidx67 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx65, i64 0, i64 %idxprom66
  %60 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %60 to i32
  %61 = load i8*, i8** %c.addr, align 8
  %62 = load i32, i32* %i45, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %61, i64 %idxprom69
  %63 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %63 to i32
  %xor72 = xor i32 %conv71, %conv68
  %conv73 = trunc i32 %xor72 to i8
  store i8 %conv73, i8* %arrayidx70, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body61
  br label %for.inc74

for.inc74:                                        ; preds = %if.end
  %64 = load i32, i32* %j57, align 4
  %inc75 = add nsw i32 %64, 1
  store i32 %inc75, i32* %j57, align 4
  br label %for.cond58

for.end76:                                        ; preds = %for.cond58
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %65 = load i32, i32* %i45, align 4
  %inc78 = add nsw i32 %65, 1
  store i32 %inc78, i32* %i45, align 4
  br label %for.cond46

for.end79:                                        ; preds = %for.cond46
  %66 = load i8, i8* %A, align 1
  %67 = load i8, i8* %B, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %conv81 = zext i8 %call80 to i32
  %68 = load i8*, i8** %c.addr, align 8
  store i8* %68, i8** %a.addr.i107, align 8
  %69 = load i8*, i8** %a.addr.i107, align 8
  store i8* %69, i8** %a.addr.i.i103, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104, align 8
  store i32 0, i32* %i.i.i106, align 4
  br label %for.cond.i.i109

for.cond.i.i109:                                  ; preds = %for.body.i.i118, %for.end79
  %70 = load i32, i32* %i.i.i106, align 4
  %cmp.i.i108 = icmp sle i32 %70, 0
  br i1 %cmp.i.i108, label %for.body.i.i118, label %xors.exit119

for.body.i.i118:                                  ; preds = %for.cond.i.i109
  %71 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104, align 8
  %72 = load i8*, i8** %a.addr.i.i103, align 8
  %73 = load i32, i32* %i.i.i106, align 4
  %idxprom.i.i110 = sext i32 %73 to i64
  %arrayidx.i.i111 = getelementptr inbounds i8, i8* %72, i64 %idxprom.i.i110
  %74 = load i8, i8* %arrayidx.i.i111, align 1
  %call.i.i112 = call zeroext i8 %71(i8 zeroext %74) #3
  %conv.i.i113 = zext i8 %call.i.i112 to i32
  %75 = load i8, i8* %result.i.i105, align 1
  %conv1.i.i114 = zext i8 %75 to i32
  %xor.i.i115 = xor i32 %conv1.i.i114, %conv.i.i113
  %conv2.i.i116 = trunc i32 %xor.i.i115 to i8
  store i8 %conv2.i.i116, i8* %result.i.i105, align 1
  %76 = load i32, i32* %i.i.i106, align 4
  %inc.i.i117 = add nsw i32 %76, 1
  store i32 %inc.i.i117, i32* %i.i.i106, align 4
  br label %for.cond.i.i109

xors.exit119:                                     ; preds = %for.cond.i.i109
  %77 = load i8, i8* %result.i.i105, align 1
  %conv83 = zext i8 %77 to i32
  %cmp84 = icmp eq i32 %conv81, %conv83
  call void @assert(i1 zeroext %cmp84)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %a.addr.i.i21 = alloca i8*, align 8
  %f.addr.i.i22 = alloca i8 (i8)*, align 8
  %result.i.i23 = alloca i8, align 1
  %i.i.i24 = alloca i32, align 4
  %a.addr.i25 = alloca i8*, align 8
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %X = alloca i8, align 1
  %i = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i8* %x, i8** %x.addr, align 8
  %call = call zeroext i8 (...) @rand()
  store i8 %call, i8* %X, align 1
  %0 = load i8, i8* %X, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8*, i8** %x.addr, align 8
  store i8* %1, i8** %a.addr.i, align 8
  %2 = load i8*, i8** %a.addr.i, align 8
  store i8* %2, i8** %a.addr.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i, align 8
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %xors.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %4 = load i8 (i8)*, i8 (i8)** %f.addr.i.i, align 8
  %5 = load i8*, i8** %a.addr.i.i, align 8
  %6 = load i32, i32* %i.i.i, align 4
  %idxprom.i.i = sext i32 %6 to i64
  %arrayidx.i.i = getelementptr inbounds i8, i8* %5, i64 %idxprom.i.i
  %7 = load i8, i8* %arrayidx.i.i, align 1
  %call.i.i = call zeroext i8 %4(i8 zeroext %7) #3
  %conv.i.i = zext i8 %call.i.i to i32
  %8 = load i8, i8* %result.i.i, align 1
  %conv1.i.i = zext i8 %8 to i32
  %xor.i.i = xor i32 %conv1.i.i, %conv.i.i
  %conv2.i.i = trunc i32 %xor.i.i to i8
  store i8 %conv2.i.i, i8* %result.i.i, align 1
  %9 = load i32, i32* %i.i.i, align 4
  %inc.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i, i32* %i.i.i, align 4
  br label %for.cond.i.i

xors.exit:                                        ; preds = %for.cond.i.i
  %10 = load i8, i8* %result.i.i, align 1
  %conv2 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %xors.exit
  %11 = load i8, i8* %i, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp sle i32 %conv4, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call zeroext i8 (...) @rand()
  store i8 %call7, i8* %tmp, align 1
  %12 = load i8, i8* %tmp, align 1
  %conv8 = zext i8 %12 to i32
  %13 = load i8*, i8** %x.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %14 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %arrayidx, align 1
  %15 = load i8, i8* %tmp, align 1
  %conv11 = zext i8 %15 to i32
  %16 = load i8*, i8** %x.addr, align 8
  %17 = load i8, i8* %i, align 1
  %idxprom = zext i8 %17 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %18 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %18 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i8, i8* %i, align 1
  %inc = add i8 %19, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8, i8* %X, align 1
  %conv16 = zext i8 %20 to i32
  %21 = load i8*, i8** %x.addr, align 8
  store i8* %21, i8** %a.addr.i25, align 8
  %22 = load i8*, i8** %a.addr.i25, align 8
  store i8* %22, i8** %a.addr.i.i21, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22, align 8
  store i32 0, i32* %i.i.i24, align 4
  br label %for.cond.i.i27

for.cond.i.i27:                                   ; preds = %for.body.i.i36, %for.end
  %23 = load i32, i32* %i.i.i24, align 4
  %cmp.i.i26 = icmp sle i32 %23, 0
  br i1 %cmp.i.i26, label %for.body.i.i36, label %xors.exit37

for.body.i.i36:                                   ; preds = %for.cond.i.i27
  %24 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22, align 8
  %25 = load i8*, i8** %a.addr.i.i21, align 8
  %26 = load i32, i32* %i.i.i24, align 4
  %idxprom.i.i28 = sext i32 %26 to i64
  %arrayidx.i.i29 = getelementptr inbounds i8, i8* %25, i64 %idxprom.i.i28
  %27 = load i8, i8* %arrayidx.i.i29, align 1
  %call.i.i30 = call zeroext i8 %24(i8 zeroext %27) #3
  %conv.i.i31 = zext i8 %call.i.i30 to i32
  %28 = load i8, i8* %result.i.i23, align 1
  %conv1.i.i32 = zext i8 %28 to i32
  %xor.i.i33 = xor i32 %conv1.i.i32, %conv.i.i31
  %conv2.i.i34 = trunc i32 %xor.i.i33 to i8
  store i8 %conv2.i.i34, i8* %result.i.i23, align 1
  %29 = load i32, i32* %i.i.i24, align 4
  %inc.i.i35 = add nsw i32 %29, 1
  store i32 %inc.i.i35, i32* %i.i.i24, align 4
  br label %for.cond.i.i27

xors.exit37:                                      ; preds = %for.cond.i.i27
  %30 = load i8, i8* %result.i.i23, align 1
  %conv18 = zext i8 %30 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %1 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  ret i8 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @square(i8 zeroext %0)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp8(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @exp4(i8 zeroext %0)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L1(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @square(i8 zeroext %1)
  %call2 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %2 = load i8, i8* %x.addr, align 1
  %call4 = call zeroext i8 @exp4(i8 zeroext %2)
  %call5 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %3 = load i8, i8* %x.addr, align 1
  %call8 = call zeroext i8 @exp8(i8 zeroext %3)
  %call9 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L3(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @square(i8 zeroext %1)
  %call2 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %2 = load i8, i8* %x.addr, align 1
  %call4 = call zeroext i8 @exp4(i8 zeroext %2)
  %call5 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %3 = load i8, i8* %x.addr, align 1
  %call8 = call zeroext i8 @exp8(i8 zeroext %3)
  %call9 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L5(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @square(i8 zeroext %1)
  %call2 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %conv4 = trunc i32 %xor to i8
  ret i8 %conv4
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L7(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @square(i8 zeroext %1)
  %call2 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %2 = load i8, i8* %x.addr, align 1
  %call4 = call zeroext i8 @exp4(i8 zeroext %2)
  %call5 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %3 = load i8, i8* %x.addr, align 1
  %call8 = call zeroext i8 @exp8(i8 zeroext %3)
  %call9 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp3(i8 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %1 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @square(i8 zeroext %1)
  %call1 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp5(i8 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %1 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @exp4(i8 zeroext %1)
  %call1 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp7(i8 zeroext %x) #0 {
entry:
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %2) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %call.i) #3
  %3 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @exp4(i8 zeroext %3)
  %call2 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1)
  ret i8 %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @S(i8 zeroext %x) #0 {
entry:
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i17 = alloca i8, align 1
  %x.addr.i14 = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @L1(i8 zeroext %0)
  %conv = zext i8 %call to i32
  %xor = xor i32 1, %conv
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %3) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %call.i) #3
  %call2 = call zeroext i8 @L3(i8 zeroext %call1.i)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %4 = load i8, i8* %x.addr, align 1
  store i8 %4, i8* %x.addr.i14, align 1
  %5 = load i8, i8* %x.addr.i14, align 1
  %6 = load i8, i8* %x.addr.i14, align 1
  %call.i15 = call zeroext i8 @exp4(i8 zeroext %6) #3
  %call1.i16 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %call.i15) #3
  %call6 = call zeroext i8 @L5(i8 zeroext %call1.i16)
  %conv7 = zext i8 %call6 to i32
  %xor8 = xor i32 %xor4, %conv7
  %7 = load i8, i8* %x.addr, align 1
  store i8 %7, i8* %x.addr.i17, align 1
  %8 = load i8, i8* %x.addr.i17, align 1
  store i8 %8, i8* %x.addr.i.i, align 1
  %9 = load i8, i8* %x.addr.i.i, align 1
  %10 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @square(i8 zeroext %10) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %call.i.i) #3
  %11 = load i8, i8* %x.addr.i17, align 1
  %call1.i18 = call zeroext i8 @exp4(i8 zeroext %11) #3
  %call2.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i18) #3
  %call10 = call zeroext i8 @L7(i8 zeroext %call2.i)
  %conv11 = zext i8 %call10 to i32
  %xor12 = xor i32 %xor8, %conv11
  %conv13 = trunc i32 %xor12 to i8
  ret i8 %conv13
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_S(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i422 = alloca i8*, align 8
  %f.addr.i.i423 = alloca i8 (i8)*, align 8
  %result.i.i424 = alloca i8, align 1
  %i.i.i425 = alloca i32, align 4
  %a.addr.i426 = alloca i8*, align 8
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i17.i = alloca i8, align 1
  %x.addr.i14.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %from.addr.i400 = alloca i8*, align 8
  %to.addr.i401 = alloca i8*, align 8
  %f.addr.i402 = alloca i8 (i8)*, align 8
  %i.i403 = alloca i32, align 4
  %from.addr.i385 = alloca i8*, align 8
  %to.addr.i386 = alloca i8*, align 8
  %f.addr.i387 = alloca i8 (i8)*, align 8
  %i.i388 = alloca i32, align 4
  %from.addr.i370 = alloca i8*, align 8
  %to.addr.i371 = alloca i8*, align 8
  %f.addr.i372 = alloca i8 (i8)*, align 8
  %i.i373 = alloca i32, align 4
  %a.addr.i.i103.i227 = alloca i8*, align 8
  %f.addr.i.i104.i228 = alloca i8 (i8)*, align 8
  %result.i.i105.i229 = alloca i8, align 1
  %i.i.i106.i230 = alloca i32, align 4
  %a.addr.i107.i231 = alloca i8*, align 8
  %a.addr.i.i86.i232 = alloca i8*, align 8
  %f.addr.i.i87.i233 = alloca i8 (i8)*, align 8
  %result.i.i88.i234 = alloca i8, align 1
  %i.i.i89.i235 = alloca i32, align 4
  %a.addr.i90.i236 = alloca i8*, align 8
  %a.addr.i.i.i237 = alloca i8*, align 8
  %f.addr.i.i.i238 = alloca i8 (i8)*, align 8
  %result.i.i.i239 = alloca i8, align 1
  %i.i.i.i240 = alloca i32, align 4
  %a.addr.i.i241 = alloca i8*, align 8
  %a.addr.i242 = alloca i8*, align 8
  %b.addr.i243 = alloca i8*, align 8
  %c.addr.i244 = alloca i8*, align 8
  %A.i245 = alloca i8, align 1
  %B.i246 = alloca i8, align 1
  %i.i248 = alloca i32, align 4
  %j.i249 = alloca i32, align 4
  %i45.i250 = alloca i32, align 4
  %j57.i251 = alloca i32, align 4
  %a.addr.i.i103.i84 = alloca i8*, align 8
  %f.addr.i.i104.i85 = alloca i8 (i8)*, align 8
  %result.i.i105.i86 = alloca i8, align 1
  %i.i.i106.i87 = alloca i32, align 4
  %a.addr.i107.i88 = alloca i8*, align 8
  %a.addr.i.i86.i89 = alloca i8*, align 8
  %f.addr.i.i87.i90 = alloca i8 (i8)*, align 8
  %result.i.i88.i91 = alloca i8, align 1
  %i.i.i89.i92 = alloca i32, align 4
  %a.addr.i90.i93 = alloca i8*, align 8
  %a.addr.i.i.i94 = alloca i8*, align 8
  %f.addr.i.i.i95 = alloca i8 (i8)*, align 8
  %result.i.i.i96 = alloca i8, align 1
  %i.i.i.i97 = alloca i32, align 4
  %a.addr.i.i98 = alloca i8*, align 8
  %a.addr.i99 = alloca i8*, align 8
  %b.addr.i100 = alloca i8*, align 8
  %c.addr.i101 = alloca i8*, align 8
  %A.i102 = alloca i8, align 1
  %B.i103 = alloca i8, align 1
  %i.i105 = alloca i32, align 4
  %j.i106 = alloca i32, align 4
  %i45.i107 = alloca i32, align 4
  %j57.i108 = alloca i32, align 4
  %a.addr.i.i103.i = alloca i8*, align 8
  %f.addr.i.i104.i = alloca i8 (i8)*, align 8
  %result.i.i105.i = alloca i8, align 1
  %i.i.i106.i = alloca i32, align 4
  %a.addr.i107.i = alloca i8*, align 8
  %a.addr.i.i86.i = alloca i8*, align 8
  %f.addr.i.i87.i = alloca i8 (i8)*, align 8
  %result.i.i88.i = alloca i8, align 1
  %i.i.i89.i = alloca i32, align 4
  %a.addr.i90.i = alloca i8*, align 8
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i74 = alloca i8*, align 8
  %a.addr.i75 = alloca i8*, align 8
  %b.addr.i = alloca i8*, align 8
  %c.addr.i = alloca i8*, align 8
  %A.i = alloca i8, align 1
  %B.i = alloca i8, align 1
  %r.i = alloca [1 x [1 x i8]], align 1
  %i.i76 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %i45.i = alloca i32, align 4
  %j57.i = alloca i32, align 4
  %from.addr.i60 = alloca i8*, align 8
  %to.addr.i61 = alloca i8*, align 8
  %f.addr.i62 = alloca i8 (i8)*, align 8
  %i.i63 = alloca i32, align 4
  %from.addr.i46 = alloca i8*, align 8
  %to.addr.i47 = alloca i8*, align 8
  %f.addr.i48 = alloca i8 (i8)*, align 8
  %i.i49 = alloca i32, align 4
  %from.addr.i = alloca i8*, align 8
  %to.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %X = alloca i8, align 1
  %l1 = alloca [1 x i8], align 1
  %l3 = alloca [1 x i8], align 1
  %l5 = alloca [1 x i8], align 1
  %l7 = alloca [1 x i8], align 1
  %e2 = alloca [1 x i8], align 1
  %e3 = alloca [1 x i8], align 1
  %e4 = alloca [1 x i8], align 1
  %e5 = alloca [1 x i8], align 1
  %e7 = alloca [1 x i8], align 1
  %i = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %call = call zeroext i8 (...) @rand()
  store i8 %call, i8* %X, align 1
  %0 = load i8, i8* %X, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8*, i8** %x.addr, align 8
  store i8* %1, i8** %a.addr.i, align 8
  %2 = load i8*, i8** %a.addr.i, align 8
  store i8* %2, i8** %a.addr.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i, align 8
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %xors.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %4 = load i8 (i8)*, i8 (i8)** %f.addr.i.i, align 8
  %5 = load i8*, i8** %a.addr.i.i, align 8
  %6 = load i32, i32* %i.i.i, align 4
  %idxprom.i.i = sext i32 %6 to i64
  %arrayidx.i.i = getelementptr inbounds i8, i8* %5, i64 %idxprom.i.i
  %7 = load i8, i8* %arrayidx.i.i, align 1
  %call.i.i = call zeroext i8 %4(i8 zeroext %7) #3
  %conv.i.i = zext i8 %call.i.i to i32
  %8 = load i8, i8* %result.i.i, align 1
  %conv1.i.i = zext i8 %8 to i32
  %xor.i.i = xor i32 %conv1.i.i, %conv.i.i
  %conv2.i.i = trunc i32 %xor.i.i to i8
  store i8 %conv2.i.i, i8* %result.i.i, align 1
  %9 = load i32, i32* %i.i.i, align 4
  %inc.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i, i32* %i.i.i, align 4
  br label %for.cond.i.i

xors.exit:                                        ; preds = %for.cond.i.i
  %10 = load i8, i8* %result.i.i, align 1
  %conv2 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %11 = load i8*, i8** %x.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %l1, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @L1, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit
  %12 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %12, 0
  br i1 %cmp.i, label %for.body.i, label %transform.exit

for.body.i:                                       ; preds = %for.cond.i
  %13 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %14 = load i8*, i8** %from.addr.i, align 8
  %15 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %15 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %14, i64 %idxprom.i
  %16 = load i8, i8* %arrayidx.i, align 1
  %call.i = call zeroext i8 %13(i8 zeroext %16) #3
  %17 = load i8*, i8** %to.addr.i, align 8
  %18 = load i32, i32* %i.i, align 4
  %idxprom1.i = sext i32 %18 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %17, i64 %idxprom1.i
  store i8 %call.i, i8* %arrayidx2.i, align 1
  %19 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %19, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

transform.exit:                                   ; preds = %for.cond.i
  %20 = load i8*, i8** %x.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  store i8* %20, i8** %from.addr.i46, align 8
  store i8* %arraydecay4, i8** %to.addr.i47, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i48, align 8
  store i32 0, i32* %i.i49, align 4
  br label %for.cond.i51

for.cond.i51:                                     ; preds = %for.body.i57, %transform.exit
  %21 = load i32, i32* %i.i49, align 4
  %cmp.i50 = icmp sle i32 %21, 0
  br i1 %cmp.i50, label %for.body.i57, label %transform.exit59

for.body.i57:                                     ; preds = %for.cond.i51
  %22 = load i8 (i8)*, i8 (i8)** %f.addr.i48, align 8
  %23 = load i8*, i8** %from.addr.i46, align 8
  %24 = load i32, i32* %i.i49, align 4
  %idxprom.i52 = sext i32 %24 to i64
  %arrayidx.i53 = getelementptr inbounds i8, i8* %23, i64 %idxprom.i52
  %25 = load i8, i8* %arrayidx.i53, align 1
  %call.i54 = call zeroext i8 %22(i8 zeroext %25) #3
  %26 = load i8*, i8** %to.addr.i47, align 8
  %27 = load i32, i32* %i.i49, align 4
  %idxprom1.i55 = sext i32 %27 to i64
  %arrayidx2.i56 = getelementptr inbounds i8, i8* %26, i64 %idxprom1.i55
  store i8 %call.i54, i8* %arrayidx2.i56, align 1
  %28 = load i32, i32* %i.i49, align 4
  %inc.i58 = add nsw i32 %28, 1
  store i32 %inc.i58, i32* %i.i49, align 4
  br label %for.cond.i51

transform.exit59:                                 ; preds = %for.cond.i51
  %29 = load i8*, i8** %x.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  store i8* %29, i8** %from.addr.i60, align 8
  store i8* %arraydecay5, i8** %to.addr.i61, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i62, align 8
  store i32 0, i32* %i.i63, align 4
  br label %for.cond.i65

for.cond.i65:                                     ; preds = %for.body.i71, %transform.exit59
  %30 = load i32, i32* %i.i63, align 4
  %cmp.i64 = icmp sle i32 %30, 0
  br i1 %cmp.i64, label %for.body.i71, label %transform.exit73

for.body.i71:                                     ; preds = %for.cond.i65
  %31 = load i8 (i8)*, i8 (i8)** %f.addr.i62, align 8
  %32 = load i8*, i8** %from.addr.i60, align 8
  %33 = load i32, i32* %i.i63, align 4
  %idxprom.i66 = sext i32 %33 to i64
  %arrayidx.i67 = getelementptr inbounds i8, i8* %32, i64 %idxprom.i66
  %34 = load i8, i8* %arrayidx.i67, align 1
  %call.i68 = call zeroext i8 %31(i8 zeroext %34) #3
  %35 = load i8*, i8** %to.addr.i61, align 8
  %36 = load i32, i32* %i.i63, align 4
  %idxprom1.i69 = sext i32 %36 to i64
  %arrayidx2.i70 = getelementptr inbounds i8, i8* %35, i64 %idxprom1.i69
  store i8 %call.i68, i8* %arrayidx2.i70, align 1
  %37 = load i32, i32* %i.i63, align 4
  %inc.i72 = add nsw i32 %37, 1
  store i32 %inc.i72, i32* %i.i63, align 4
  br label %for.cond.i65

transform.exit73:                                 ; preds = %for.cond.i65
  %38 = load i8*, i8** %x.addr, align 8
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  store i8* %38, i8** %a.addr.i75, align 8
  store i8* %arraydecay6, i8** %b.addr.i, align 8
  store i8* %arraydecay7, i8** %c.addr.i, align 8
  %call.i77 = call zeroext i8 (...) @rand() #3
  store i8 %call.i77, i8* %A.i, align 1
  %call1.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i, i8* %B.i, align 1
  %39 = load i8, i8* %A.i, align 1
  %conv.i = zext i8 %39 to i32
  %40 = load i8*, i8** %a.addr.i75, align 8
  store i8* %40, i8** %a.addr.i.i74, align 8
  %41 = load i8*, i8** %a.addr.i.i74, align 8
  store i8* %41, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %transform.exit73
  %42 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %42, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %xors.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %43 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i, align 8
  %44 = load i8*, i8** %a.addr.i.i.i, align 8
  %45 = load i32, i32* %i.i.i.i, align 4
  %idxprom.i.i.i = sext i32 %45 to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %44, i64 %idxprom.i.i.i
  %46 = load i8, i8* %arrayidx.i.i.i, align 1
  %call.i.i.i = call zeroext i8 %43(i8 zeroext %46) #3
  %conv.i.i.i = zext i8 %call.i.i.i to i32
  %47 = load i8, i8* %result.i.i.i, align 1
  %conv1.i.i.i = zext i8 %47 to i32
  %xor.i.i.i = xor i32 %conv1.i.i.i, %conv.i.i.i
  %conv2.i.i.i = trunc i32 %xor.i.i.i to i8
  store i8 %conv2.i.i.i, i8* %result.i.i.i, align 1
  %48 = load i32, i32* %i.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %48, 1
  store i32 %inc.i.i.i, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

xors.exit.i:                                      ; preds = %for.cond.i.i.i
  %49 = load i8, i8* %result.i.i.i, align 1
  %conv3.i = zext i8 %49 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %50 = load i8, i8* %B.i, align 1
  %conv5.i = zext i8 %50 to i32
  %51 = load i8*, i8** %b.addr.i, align 8
  store i8* %51, i8** %a.addr.i90.i, align 8
  %52 = load i8*, i8** %a.addr.i90.i, align 8
  store i8* %52, i8** %a.addr.i.i86.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i, align 8
  store i32 0, i32* %i.i.i89.i, align 4
  br label %for.cond.i.i92.i

for.cond.i.i92.i:                                 ; preds = %for.body.i.i101.i, %xors.exit.i
  %53 = load i32, i32* %i.i.i89.i, align 4
  %cmp.i.i91.i = icmp sle i32 %53, 0
  br i1 %cmp.i.i91.i, label %for.body.i.i101.i, label %xors.exit102.i

for.body.i.i101.i:                                ; preds = %for.cond.i.i92.i
  %54 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i, align 8
  %55 = load i8*, i8** %a.addr.i.i86.i, align 8
  %56 = load i32, i32* %i.i.i89.i, align 4
  %idxprom.i.i93.i = sext i32 %56 to i64
  %arrayidx.i.i94.i = getelementptr inbounds i8, i8* %55, i64 %idxprom.i.i93.i
  %57 = load i8, i8* %arrayidx.i.i94.i, align 1
  %call.i.i95.i = call zeroext i8 %54(i8 zeroext %57) #3
  %conv.i.i96.i = zext i8 %call.i.i95.i to i32
  %58 = load i8, i8* %result.i.i88.i, align 1
  %conv1.i.i97.i = zext i8 %58 to i32
  %xor.i.i98.i = xor i32 %conv1.i.i97.i, %conv.i.i96.i
  %conv2.i.i99.i = trunc i32 %xor.i.i98.i to i8
  store i8 %conv2.i.i99.i, i8* %result.i.i88.i, align 1
  %59 = load i32, i32* %i.i.i89.i, align 4
  %inc.i.i100.i = add nsw i32 %59, 1
  store i32 %inc.i.i100.i, i32* %i.i.i89.i, align 4
  br label %for.cond.i.i92.i

xors.exit102.i:                                   ; preds = %for.cond.i.i92.i
  %60 = load i8, i8* %result.i.i88.i, align 1
  %conv7.i = zext i8 %60 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  store i32 0, i32* %i.i76, align 4
  br label %for.cond.i79

for.cond.i79:                                     ; preds = %for.end.i, %xors.exit102.i
  %61 = load i32, i32* %i.i76, align 4
  %cmp10.i = icmp sle i32 %61, 0
  br i1 %cmp10.i, label %for.body.i80, label %for.end44.i

for.body.i80:                                     ; preds = %for.cond.i79
  %62 = load i32, i32* %i.i76, align 4
  %add.i = add nsw i32 %62, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i80
  %63 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %63, 0
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %64 = load i32, i32* %i.i76, align 4
  %idxprom.i81 = sext i32 %64 to i64
  %arrayidx.i82 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i81
  %65 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %65 to i64
  %arrayidx18.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i82, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %66 = load i32, i32* %i.i76, align 4
  %idxprom19.i = sext i32 %66 to i64
  %arrayidx20.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %67 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %67 to i64
  %arrayidx22.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %68 = load i8, i8* %arrayidx22.i, align 1
  %conv23.i = zext i8 %68 to i32
  %69 = load i8*, i8** %a.addr.i75, align 8
  %70 = load i32, i32* %i.i76, align 4
  %idxprom24.i = sext i32 %70 to i64
  %arrayidx25.i = getelementptr inbounds i8, i8* %69, i64 %idxprom24.i
  %71 = load i8, i8* %arrayidx25.i, align 1
  %72 = load i8*, i8** %b.addr.i, align 8
  %73 = load i32, i32* %j.i, align 4
  %idxprom26.i = sext i32 %73 to i64
  %arrayidx27.i = getelementptr inbounds i8, i8* %72, i64 %idxprom26.i
  %74 = load i8, i8* %arrayidx27.i, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %74) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %75 = load i8*, i8** %a.addr.i75, align 8
  %76 = load i32, i32* %j.i, align 4
  %idxprom30.i = sext i32 %76 to i64
  %arrayidx31.i = getelementptr inbounds i8, i8* %75, i64 %idxprom30.i
  %77 = load i8, i8* %arrayidx31.i, align 1
  %78 = load i8*, i8** %b.addr.i, align 8
  %79 = load i32, i32* %i.i76, align 4
  %idxprom32.i = sext i32 %79 to i64
  %arrayidx33.i = getelementptr inbounds i8, i8* %78, i64 %idxprom32.i
  %80 = load i8, i8* %arrayidx33.i, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %80) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %81 = load i32, i32* %j.i, align 4
  %idxprom38.i = sext i32 %81 to i64
  %arrayidx39.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom38.i
  %82 = load i32, i32* %i.i76, align 4
  %idxprom40.i = sext i32 %82 to i64
  %arrayidx41.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx39.i, i64 0, i64 %idxprom40.i
  store i8 %conv37.i, i8* %arrayidx41.i, align 1
  %83 = load i32, i32* %j.i, align 4
  %inc.i83 = add nsw i32 %83, 1
  store i32 %inc.i83, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i:                                        ; preds = %for.cond12.i
  %84 = load i32, i32* %i.i76, align 4
  %inc43.i = add nsw i32 %84, 1
  store i32 %inc43.i, i32* %i.i76, align 4
  br label %for.cond.i79

for.end44.i:                                      ; preds = %for.cond.i79
  store i32 0, i32* %i45.i, align 4
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.end76.i, %for.end44.i
  %85 = load i32, i32* %i45.i, align 4
  %cmp47.i = icmp sle i32 %85, 0
  br i1 %cmp47.i, label %for.body49.i, label %for.end79.i

for.body49.i:                                     ; preds = %for.cond46.i
  %86 = load i8*, i8** %a.addr.i75, align 8
  %87 = load i32, i32* %i45.i, align 4
  %idxprom50.i = sext i32 %87 to i64
  %arrayidx51.i = getelementptr inbounds i8, i8* %86, i64 %idxprom50.i
  %88 = load i8, i8* %arrayidx51.i, align 1
  %89 = load i8*, i8** %b.addr.i, align 8
  %90 = load i32, i32* %i45.i, align 4
  %idxprom52.i = sext i32 %90 to i64
  %arrayidx53.i = getelementptr inbounds i8, i8* %89, i64 %idxprom52.i
  %91 = load i8, i8* %arrayidx53.i, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %91) #3
  %92 = load i8*, i8** %c.addr.i, align 8
  %93 = load i32, i32* %i45.i, align 4
  %idxprom55.i = sext i32 %93 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %92, i64 %idxprom55.i
  store i8 %call54.i, i8* %arrayidx56.i, align 1
  store i32 0, i32* %j57.i, align 4
  br label %for.cond58.i

for.cond58.i:                                     ; preds = %if.end.i, %for.body49.i
  %94 = load i32, i32* %j57.i, align 4
  %cmp59.i = icmp sle i32 %94, 0
  br i1 %cmp59.i, label %for.body61.i, label %for.end76.i

for.body61.i:                                     ; preds = %for.cond58.i
  %95 = load i32, i32* %j57.i, align 4
  %96 = load i32, i32* %i45.i, align 4
  %cmp62.i = icmp ne i32 %95, %96
  br i1 %cmp62.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body61.i
  %97 = load i32, i32* %i45.i, align 4
  %idxprom64.i = sext i32 %97 to i64
  %arrayidx65.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom64.i
  %98 = load i32, i32* %j57.i, align 4
  %idxprom66.i = sext i32 %98 to i64
  %arrayidx67.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx65.i, i64 0, i64 %idxprom66.i
  %99 = load i8, i8* %arrayidx67.i, align 1
  %conv68.i = zext i8 %99 to i32
  %100 = load i8*, i8** %c.addr.i, align 8
  %101 = load i32, i32* %i45.i, align 4
  %idxprom69.i = sext i32 %101 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %100, i64 %idxprom69.i
  %102 = load i8, i8* %arrayidx70.i, align 1
  %conv71.i = zext i8 %102 to i32
  %xor72.i = xor i32 %conv71.i, %conv68.i
  %conv73.i = trunc i32 %xor72.i to i8
  store i8 %conv73.i, i8* %arrayidx70.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body61.i
  %103 = load i32, i32* %j57.i, align 4
  %inc75.i = add nsw i32 %103, 1
  store i32 %inc75.i, i32* %j57.i, align 4
  br label %for.cond58.i

for.end76.i:                                      ; preds = %for.cond58.i
  %104 = load i32, i32* %i45.i, align 4
  %inc78.i = add nsw i32 %104, 1
  store i32 %inc78.i, i32* %i45.i, align 4
  br label %for.cond46.i

for.end79.i:                                      ; preds = %for.cond46.i
  %105 = load i8, i8* %A.i, align 1
  %106 = load i8, i8* %B.i, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106) #3
  %conv81.i = zext i8 %call80.i to i32
  %107 = load i8*, i8** %c.addr.i, align 8
  store i8* %107, i8** %a.addr.i107.i, align 8
  %108 = load i8*, i8** %a.addr.i107.i, align 8
  store i8* %108, i8** %a.addr.i.i103.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i, align 8
  store i32 0, i32* %i.i.i106.i, align 4
  br label %for.cond.i.i109.i

for.cond.i.i109.i:                                ; preds = %for.body.i.i118.i, %for.end79.i
  %109 = load i32, i32* %i.i.i106.i, align 4
  %cmp.i.i108.i = icmp sle i32 %109, 0
  br i1 %cmp.i.i108.i, label %for.body.i.i118.i, label %sec_mult.exit

for.body.i.i118.i:                                ; preds = %for.cond.i.i109.i
  %110 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i, align 8
  %111 = load i8*, i8** %a.addr.i.i103.i, align 8
  %112 = load i32, i32* %i.i.i106.i, align 4
  %idxprom.i.i110.i = sext i32 %112 to i64
  %arrayidx.i.i111.i = getelementptr inbounds i8, i8* %111, i64 %idxprom.i.i110.i
  %113 = load i8, i8* %arrayidx.i.i111.i, align 1
  %call.i.i112.i = call zeroext i8 %110(i8 zeroext %113) #3
  %conv.i.i113.i = zext i8 %call.i.i112.i to i32
  %114 = load i8, i8* %result.i.i105.i, align 1
  %conv1.i.i114.i = zext i8 %114 to i32
  %xor.i.i115.i = xor i32 %conv1.i.i114.i, %conv.i.i113.i
  %conv2.i.i116.i = trunc i32 %xor.i.i115.i to i8
  store i8 %conv2.i.i116.i, i8* %result.i.i105.i, align 1
  %115 = load i32, i32* %i.i.i106.i, align 4
  %inc.i.i117.i = add nsw i32 %115, 1
  store i32 %inc.i.i117.i, i32* %i.i.i106.i, align 4
  br label %for.cond.i.i109.i

sec_mult.exit:                                    ; preds = %for.cond.i.i109.i
  %116 = load i8, i8* %result.i.i105.i, align 1
  %conv83.i = zext i8 %116 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %117 = load i8*, i8** %x.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  store i8* %117, i8** %a.addr.i99, align 8
  store i8* %arraydecay8, i8** %b.addr.i100, align 8
  store i8* %arraydecay9, i8** %c.addr.i101, align 8
  %call.i109 = call zeroext i8 (...) @rand() #3
  store i8 %call.i109, i8* %A.i102, align 1
  %call1.i110 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i110, i8* %B.i103, align 1
  %118 = load i8, i8* %A.i102, align 1
  %conv.i111 = zext i8 %118 to i32
  %119 = load i8*, i8** %a.addr.i99, align 8
  store i8* %119, i8** %a.addr.i.i98, align 8
  %120 = load i8*, i8** %a.addr.i.i98, align 8
  store i8* %120, i8** %a.addr.i.i.i94, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i95, align 8
  store i32 0, i32* %i.i.i.i97, align 4
  br label %for.cond.i.i.i113

for.cond.i.i.i113:                                ; preds = %for.body.i.i.i122, %sec_mult.exit
  %121 = load i32, i32* %i.i.i.i97, align 4
  %cmp.i.i.i112 = icmp sle i32 %121, 0
  br i1 %cmp.i.i.i112, label %for.body.i.i.i122, label %xors.exit.i126

for.body.i.i.i122:                                ; preds = %for.cond.i.i.i113
  %122 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i95, align 8
  %123 = load i8*, i8** %a.addr.i.i.i94, align 8
  %124 = load i32, i32* %i.i.i.i97, align 4
  %idxprom.i.i.i114 = sext i32 %124 to i64
  %arrayidx.i.i.i115 = getelementptr inbounds i8, i8* %123, i64 %idxprom.i.i.i114
  %125 = load i8, i8* %arrayidx.i.i.i115, align 1
  %call.i.i.i116 = call zeroext i8 %122(i8 zeroext %125) #3
  %conv.i.i.i117 = zext i8 %call.i.i.i116 to i32
  %126 = load i8, i8* %result.i.i.i96, align 1
  %conv1.i.i.i118 = zext i8 %126 to i32
  %xor.i.i.i119 = xor i32 %conv1.i.i.i118, %conv.i.i.i117
  %conv2.i.i.i120 = trunc i32 %xor.i.i.i119 to i8
  store i8 %conv2.i.i.i120, i8* %result.i.i.i96, align 1
  %127 = load i32, i32* %i.i.i.i97, align 4
  %inc.i.i.i121 = add nsw i32 %127, 1
  store i32 %inc.i.i.i121, i32* %i.i.i.i97, align 4
  br label %for.cond.i.i.i113

xors.exit.i126:                                   ; preds = %for.cond.i.i.i113
  %128 = load i8, i8* %result.i.i.i96, align 1
  %conv3.i123 = zext i8 %128 to i32
  %cmp.i124 = icmp eq i32 %conv.i111, %conv3.i123
  call void @assume(i1 zeroext %cmp.i124) #3
  %129 = load i8, i8* %B.i103, align 1
  %conv5.i125 = zext i8 %129 to i32
  %130 = load i8*, i8** %b.addr.i100, align 8
  store i8* %130, i8** %a.addr.i90.i93, align 8
  %131 = load i8*, i8** %a.addr.i90.i93, align 8
  store i8* %131, i8** %a.addr.i.i86.i89, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i90, align 8
  store i32 0, i32* %i.i.i89.i92, align 4
  br label %for.cond.i.i92.i128

for.cond.i.i92.i128:                              ; preds = %for.body.i.i101.i137, %xors.exit.i126
  %132 = load i32, i32* %i.i.i89.i92, align 4
  %cmp.i.i91.i127 = icmp sle i32 %132, 0
  br i1 %cmp.i.i91.i127, label %for.body.i.i101.i137, label %xors.exit102.i140

for.body.i.i101.i137:                             ; preds = %for.cond.i.i92.i128
  %133 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i90, align 8
  %134 = load i8*, i8** %a.addr.i.i86.i89, align 8
  %135 = load i32, i32* %i.i.i89.i92, align 4
  %idxprom.i.i93.i129 = sext i32 %135 to i64
  %arrayidx.i.i94.i130 = getelementptr inbounds i8, i8* %134, i64 %idxprom.i.i93.i129
  %136 = load i8, i8* %arrayidx.i.i94.i130, align 1
  %call.i.i95.i131 = call zeroext i8 %133(i8 zeroext %136) #3
  %conv.i.i96.i132 = zext i8 %call.i.i95.i131 to i32
  %137 = load i8, i8* %result.i.i88.i91, align 1
  %conv1.i.i97.i133 = zext i8 %137 to i32
  %xor.i.i98.i134 = xor i32 %conv1.i.i97.i133, %conv.i.i96.i132
  %conv2.i.i99.i135 = trunc i32 %xor.i.i98.i134 to i8
  store i8 %conv2.i.i99.i135, i8* %result.i.i88.i91, align 1
  %138 = load i32, i32* %i.i.i89.i92, align 4
  %inc.i.i100.i136 = add nsw i32 %138, 1
  store i32 %inc.i.i100.i136, i32* %i.i.i89.i92, align 4
  br label %for.cond.i.i92.i128

xors.exit102.i140:                                ; preds = %for.cond.i.i92.i128
  %139 = load i8, i8* %result.i.i88.i91, align 1
  %conv7.i138 = zext i8 %139 to i32
  %cmp8.i139 = icmp eq i32 %conv5.i125, %conv7.i138
  call void @assume(i1 zeroext %cmp8.i139) #3
  store i32 0, i32* %i.i105, align 4
  br label %for.cond.i142

for.cond.i142:                                    ; preds = %for.end.i178, %xors.exit102.i140
  %140 = load i32, i32* %i.i105, align 4
  %cmp10.i141 = icmp sle i32 %140, 0
  br i1 %cmp10.i141, label %for.body.i144, label %for.end44.i180

for.body.i144:                                    ; preds = %for.cond.i142
  %141 = load i32, i32* %i.i105, align 4
  %add.i143 = add nsw i32 %141, 1
  store i32 %add.i143, i32* %j.i106, align 4
  br label %for.cond12.i146

for.cond12.i146:                                  ; preds = %for.body15.i176, %for.body.i144
  %142 = load i32, i32* %j.i106, align 4
  %cmp13.i145 = icmp sle i32 %142, 0
  br i1 %cmp13.i145, label %for.body15.i176, label %for.end.i178

for.body15.i176:                                  ; preds = %for.cond12.i146
  %call16.i147 = call zeroext i8 (...) @rand() #3
  %143 = load i32, i32* %i.i105, align 4
  %idxprom.i148 = sext i32 %143 to i64
  %arrayidx.i149 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i148
  %144 = load i32, i32* %j.i106, align 4
  %idxprom17.i150 = sext i32 %144 to i64
  %arrayidx18.i151 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i149, i64 0, i64 %idxprom17.i150
  store i8 %call16.i147, i8* %arrayidx18.i151, align 1
  %145 = load i32, i32* %i.i105, align 4
  %idxprom19.i152 = sext i32 %145 to i64
  %arrayidx20.i153 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i152
  %146 = load i32, i32* %j.i106, align 4
  %idxprom21.i154 = sext i32 %146 to i64
  %arrayidx22.i155 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i153, i64 0, i64 %idxprom21.i154
  %147 = load i8, i8* %arrayidx22.i155, align 1
  %conv23.i156 = zext i8 %147 to i32
  %148 = load i8*, i8** %a.addr.i99, align 8
  %149 = load i32, i32* %i.i105, align 4
  %idxprom24.i157 = sext i32 %149 to i64
  %arrayidx25.i158 = getelementptr inbounds i8, i8* %148, i64 %idxprom24.i157
  %150 = load i8, i8* %arrayidx25.i158, align 1
  %151 = load i8*, i8** %b.addr.i100, align 8
  %152 = load i32, i32* %j.i106, align 4
  %idxprom26.i159 = sext i32 %152 to i64
  %arrayidx27.i160 = getelementptr inbounds i8, i8* %151, i64 %idxprom26.i159
  %153 = load i8, i8* %arrayidx27.i160, align 1
  %call28.i161 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %153) #3
  %conv29.i162 = zext i8 %call28.i161 to i32
  %xor.i163 = xor i32 %conv23.i156, %conv29.i162
  %154 = load i8*, i8** %a.addr.i99, align 8
  %155 = load i32, i32* %j.i106, align 4
  %idxprom30.i164 = sext i32 %155 to i64
  %arrayidx31.i165 = getelementptr inbounds i8, i8* %154, i64 %idxprom30.i164
  %156 = load i8, i8* %arrayidx31.i165, align 1
  %157 = load i8*, i8** %b.addr.i100, align 8
  %158 = load i32, i32* %i.i105, align 4
  %idxprom32.i166 = sext i32 %158 to i64
  %arrayidx33.i167 = getelementptr inbounds i8, i8* %157, i64 %idxprom32.i166
  %159 = load i8, i8* %arrayidx33.i167, align 1
  %call34.i168 = call zeroext i8 @mult(i8 zeroext %156, i8 zeroext %159) #3
  %conv35.i169 = zext i8 %call34.i168 to i32
  %xor36.i170 = xor i32 %xor.i163, %conv35.i169
  %conv37.i171 = trunc i32 %xor36.i170 to i8
  %160 = load i32, i32* %j.i106, align 4
  %idxprom38.i172 = sext i32 %160 to i64
  %arrayidx39.i173 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom38.i172
  %161 = load i32, i32* %i.i105, align 4
  %idxprom40.i174 = sext i32 %161 to i64
  %arrayidx41.i175 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx39.i173, i64 0, i64 %idxprom40.i174
  store i8 %conv37.i171, i8* %arrayidx41.i175, align 1
  %162 = load i32, i32* %j.i106, align 4
  %inc.i177 = add nsw i32 %162, 1
  store i32 %inc.i177, i32* %j.i106, align 4
  br label %for.cond12.i146

for.end.i178:                                     ; preds = %for.cond12.i146
  %163 = load i32, i32* %i.i105, align 4
  %inc43.i179 = add nsw i32 %163, 1
  store i32 %inc43.i179, i32* %i.i105, align 4
  br label %for.cond.i142

for.end44.i180:                                   ; preds = %for.cond.i142
  store i32 0, i32* %i45.i107, align 4
  br label %for.cond46.i182

for.cond46.i182:                                  ; preds = %for.end76.i208, %for.end44.i180
  %164 = load i32, i32* %i45.i107, align 4
  %cmp47.i181 = icmp sle i32 %164, 0
  br i1 %cmp47.i181, label %for.body49.i190, label %for.end79.i212

for.body49.i190:                                  ; preds = %for.cond46.i182
  %165 = load i8*, i8** %a.addr.i99, align 8
  %166 = load i32, i32* %i45.i107, align 4
  %idxprom50.i183 = sext i32 %166 to i64
  %arrayidx51.i184 = getelementptr inbounds i8, i8* %165, i64 %idxprom50.i183
  %167 = load i8, i8* %arrayidx51.i184, align 1
  %168 = load i8*, i8** %b.addr.i100, align 8
  %169 = load i32, i32* %i45.i107, align 4
  %idxprom52.i185 = sext i32 %169 to i64
  %arrayidx53.i186 = getelementptr inbounds i8, i8* %168, i64 %idxprom52.i185
  %170 = load i8, i8* %arrayidx53.i186, align 1
  %call54.i187 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %170) #3
  %171 = load i8*, i8** %c.addr.i101, align 8
  %172 = load i32, i32* %i45.i107, align 4
  %idxprom55.i188 = sext i32 %172 to i64
  %arrayidx56.i189 = getelementptr inbounds i8, i8* %171, i64 %idxprom55.i188
  store i8 %call54.i187, i8* %arrayidx56.i189, align 1
  store i32 0, i32* %j57.i108, align 4
  br label %for.cond58.i192

for.cond58.i192:                                  ; preds = %if.end.i206, %for.body49.i190
  %173 = load i32, i32* %j57.i108, align 4
  %cmp59.i191 = icmp sle i32 %173, 0
  br i1 %cmp59.i191, label %for.body61.i194, label %for.end76.i208

for.body61.i194:                                  ; preds = %for.cond58.i192
  %174 = load i32, i32* %j57.i108, align 4
  %175 = load i32, i32* %i45.i107, align 4
  %cmp62.i193 = icmp ne i32 %174, %175
  br i1 %cmp62.i193, label %if.then.i205, label %if.end.i206

if.then.i205:                                     ; preds = %for.body61.i194
  %176 = load i32, i32* %i45.i107, align 4
  %idxprom64.i195 = sext i32 %176 to i64
  %arrayidx65.i196 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom64.i195
  %177 = load i32, i32* %j57.i108, align 4
  %idxprom66.i197 = sext i32 %177 to i64
  %arrayidx67.i198 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx65.i196, i64 0, i64 %idxprom66.i197
  %178 = load i8, i8* %arrayidx67.i198, align 1
  %conv68.i199 = zext i8 %178 to i32
  %179 = load i8*, i8** %c.addr.i101, align 8
  %180 = load i32, i32* %i45.i107, align 4
  %idxprom69.i200 = sext i32 %180 to i64
  %arrayidx70.i201 = getelementptr inbounds i8, i8* %179, i64 %idxprom69.i200
  %181 = load i8, i8* %arrayidx70.i201, align 1
  %conv71.i202 = zext i8 %181 to i32
  %xor72.i203 = xor i32 %conv71.i202, %conv68.i199
  %conv73.i204 = trunc i32 %xor72.i203 to i8
  store i8 %conv73.i204, i8* %arrayidx70.i201, align 1
  br label %if.end.i206

if.end.i206:                                      ; preds = %if.then.i205, %for.body61.i194
  %182 = load i32, i32* %j57.i108, align 4
  %inc75.i207 = add nsw i32 %182, 1
  store i32 %inc75.i207, i32* %j57.i108, align 4
  br label %for.cond58.i192

for.end76.i208:                                   ; preds = %for.cond58.i192
  %183 = load i32, i32* %i45.i107, align 4
  %inc78.i209 = add nsw i32 %183, 1
  store i32 %inc78.i209, i32* %i45.i107, align 4
  br label %for.cond46.i182

for.end79.i212:                                   ; preds = %for.cond46.i182
  %184 = load i8, i8* %A.i102, align 1
  %185 = load i8, i8* %B.i103, align 1
  %call80.i210 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185) #3
  %conv81.i211 = zext i8 %call80.i210 to i32
  %186 = load i8*, i8** %c.addr.i101, align 8
  store i8* %186, i8** %a.addr.i107.i88, align 8
  %187 = load i8*, i8** %a.addr.i107.i88, align 8
  store i8* %187, i8** %a.addr.i.i103.i84, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i85, align 8
  store i32 0, i32* %i.i.i106.i87, align 4
  br label %for.cond.i.i109.i214

for.cond.i.i109.i214:                             ; preds = %for.body.i.i118.i223, %for.end79.i212
  %188 = load i32, i32* %i.i.i106.i87, align 4
  %cmp.i.i108.i213 = icmp sle i32 %188, 0
  br i1 %cmp.i.i108.i213, label %for.body.i.i118.i223, label %sec_mult.exit226

for.body.i.i118.i223:                             ; preds = %for.cond.i.i109.i214
  %189 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i85, align 8
  %190 = load i8*, i8** %a.addr.i.i103.i84, align 8
  %191 = load i32, i32* %i.i.i106.i87, align 4
  %idxprom.i.i110.i215 = sext i32 %191 to i64
  %arrayidx.i.i111.i216 = getelementptr inbounds i8, i8* %190, i64 %idxprom.i.i110.i215
  %192 = load i8, i8* %arrayidx.i.i111.i216, align 1
  %call.i.i112.i217 = call zeroext i8 %189(i8 zeroext %192) #3
  %conv.i.i113.i218 = zext i8 %call.i.i112.i217 to i32
  %193 = load i8, i8* %result.i.i105.i86, align 1
  %conv1.i.i114.i219 = zext i8 %193 to i32
  %xor.i.i115.i220 = xor i32 %conv1.i.i114.i219, %conv.i.i113.i218
  %conv2.i.i116.i221 = trunc i32 %xor.i.i115.i220 to i8
  store i8 %conv2.i.i116.i221, i8* %result.i.i105.i86, align 1
  %194 = load i32, i32* %i.i.i106.i87, align 4
  %inc.i.i117.i222 = add nsw i32 %194, 1
  store i32 %inc.i.i117.i222, i32* %i.i.i106.i87, align 4
  br label %for.cond.i.i109.i214

sec_mult.exit226:                                 ; preds = %for.cond.i.i109.i214
  %195 = load i8, i8* %result.i.i105.i86, align 1
  %conv83.i224 = zext i8 %195 to i32
  %cmp84.i225 = icmp eq i32 %conv81.i211, %conv83.i224
  call void @assert(i1 zeroext %cmp84.i225) #3
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  store i8* %arraydecay10, i8** %a.addr.i242, align 8
  store i8* %arraydecay11, i8** %b.addr.i243, align 8
  store i8* %arraydecay12, i8** %c.addr.i244, align 8
  %call.i252 = call zeroext i8 (...) @rand() #3
  store i8 %call.i252, i8* %A.i245, align 1
  %call1.i253 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i253, i8* %B.i246, align 1
  %196 = load i8, i8* %A.i245, align 1
  %conv.i254 = zext i8 %196 to i32
  %197 = load i8*, i8** %a.addr.i242, align 8
  store i8* %197, i8** %a.addr.i.i241, align 8
  %198 = load i8*, i8** %a.addr.i.i241, align 8
  store i8* %198, i8** %a.addr.i.i.i237, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i238, align 8
  store i32 0, i32* %i.i.i.i240, align 4
  br label %for.cond.i.i.i256

for.cond.i.i.i256:                                ; preds = %for.body.i.i.i265, %sec_mult.exit226
  %199 = load i32, i32* %i.i.i.i240, align 4
  %cmp.i.i.i255 = icmp sle i32 %199, 0
  br i1 %cmp.i.i.i255, label %for.body.i.i.i265, label %xors.exit.i269

for.body.i.i.i265:                                ; preds = %for.cond.i.i.i256
  %200 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i238, align 8
  %201 = load i8*, i8** %a.addr.i.i.i237, align 8
  %202 = load i32, i32* %i.i.i.i240, align 4
  %idxprom.i.i.i257 = sext i32 %202 to i64
  %arrayidx.i.i.i258 = getelementptr inbounds i8, i8* %201, i64 %idxprom.i.i.i257
  %203 = load i8, i8* %arrayidx.i.i.i258, align 1
  %call.i.i.i259 = call zeroext i8 %200(i8 zeroext %203) #3
  %conv.i.i.i260 = zext i8 %call.i.i.i259 to i32
  %204 = load i8, i8* %result.i.i.i239, align 1
  %conv1.i.i.i261 = zext i8 %204 to i32
  %xor.i.i.i262 = xor i32 %conv1.i.i.i261, %conv.i.i.i260
  %conv2.i.i.i263 = trunc i32 %xor.i.i.i262 to i8
  store i8 %conv2.i.i.i263, i8* %result.i.i.i239, align 1
  %205 = load i32, i32* %i.i.i.i240, align 4
  %inc.i.i.i264 = add nsw i32 %205, 1
  store i32 %inc.i.i.i264, i32* %i.i.i.i240, align 4
  br label %for.cond.i.i.i256

xors.exit.i269:                                   ; preds = %for.cond.i.i.i256
  %206 = load i8, i8* %result.i.i.i239, align 1
  %conv3.i266 = zext i8 %206 to i32
  %cmp.i267 = icmp eq i32 %conv.i254, %conv3.i266
  call void @assume(i1 zeroext %cmp.i267) #3
  %207 = load i8, i8* %B.i246, align 1
  %conv5.i268 = zext i8 %207 to i32
  %208 = load i8*, i8** %b.addr.i243, align 8
  store i8* %208, i8** %a.addr.i90.i236, align 8
  %209 = load i8*, i8** %a.addr.i90.i236, align 8
  store i8* %209, i8** %a.addr.i.i86.i232, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i233, align 8
  store i32 0, i32* %i.i.i89.i235, align 4
  br label %for.cond.i.i92.i271

for.cond.i.i92.i271:                              ; preds = %for.body.i.i101.i280, %xors.exit.i269
  %210 = load i32, i32* %i.i.i89.i235, align 4
  %cmp.i.i91.i270 = icmp sle i32 %210, 0
  br i1 %cmp.i.i91.i270, label %for.body.i.i101.i280, label %xors.exit102.i283

for.body.i.i101.i280:                             ; preds = %for.cond.i.i92.i271
  %211 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i233, align 8
  %212 = load i8*, i8** %a.addr.i.i86.i232, align 8
  %213 = load i32, i32* %i.i.i89.i235, align 4
  %idxprom.i.i93.i272 = sext i32 %213 to i64
  %arrayidx.i.i94.i273 = getelementptr inbounds i8, i8* %212, i64 %idxprom.i.i93.i272
  %214 = load i8, i8* %arrayidx.i.i94.i273, align 1
  %call.i.i95.i274 = call zeroext i8 %211(i8 zeroext %214) #3
  %conv.i.i96.i275 = zext i8 %call.i.i95.i274 to i32
  %215 = load i8, i8* %result.i.i88.i234, align 1
  %conv1.i.i97.i276 = zext i8 %215 to i32
  %xor.i.i98.i277 = xor i32 %conv1.i.i97.i276, %conv.i.i96.i275
  %conv2.i.i99.i278 = trunc i32 %xor.i.i98.i277 to i8
  store i8 %conv2.i.i99.i278, i8* %result.i.i88.i234, align 1
  %216 = load i32, i32* %i.i.i89.i235, align 4
  %inc.i.i100.i279 = add nsw i32 %216, 1
  store i32 %inc.i.i100.i279, i32* %i.i.i89.i235, align 4
  br label %for.cond.i.i92.i271

xors.exit102.i283:                                ; preds = %for.cond.i.i92.i271
  %217 = load i8, i8* %result.i.i88.i234, align 1
  %conv7.i281 = zext i8 %217 to i32
  %cmp8.i282 = icmp eq i32 %conv5.i268, %conv7.i281
  call void @assume(i1 zeroext %cmp8.i282) #3
  store i32 0, i32* %i.i248, align 4
  br label %for.cond.i285

for.cond.i285:                                    ; preds = %for.end.i321, %xors.exit102.i283
  %218 = load i32, i32* %i.i248, align 4
  %cmp10.i284 = icmp sle i32 %218, 0
  br i1 %cmp10.i284, label %for.body.i287, label %for.end44.i323

for.body.i287:                                    ; preds = %for.cond.i285
  %219 = load i32, i32* %i.i248, align 4
  %add.i286 = add nsw i32 %219, 1
  store i32 %add.i286, i32* %j.i249, align 4
  br label %for.cond12.i289

for.cond12.i289:                                  ; preds = %for.body15.i319, %for.body.i287
  %220 = load i32, i32* %j.i249, align 4
  %cmp13.i288 = icmp sle i32 %220, 0
  br i1 %cmp13.i288, label %for.body15.i319, label %for.end.i321

for.body15.i319:                                  ; preds = %for.cond12.i289
  %call16.i290 = call zeroext i8 (...) @rand() #3
  %221 = load i32, i32* %i.i248, align 4
  %idxprom.i291 = sext i32 %221 to i64
  %arrayidx.i292 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i291
  %222 = load i32, i32* %j.i249, align 4
  %idxprom17.i293 = sext i32 %222 to i64
  %arrayidx18.i294 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i292, i64 0, i64 %idxprom17.i293
  store i8 %call16.i290, i8* %arrayidx18.i294, align 1
  %223 = load i32, i32* %i.i248, align 4
  %idxprom19.i295 = sext i32 %223 to i64
  %arrayidx20.i296 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i295
  %224 = load i32, i32* %j.i249, align 4
  %idxprom21.i297 = sext i32 %224 to i64
  %arrayidx22.i298 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i296, i64 0, i64 %idxprom21.i297
  %225 = load i8, i8* %arrayidx22.i298, align 1
  %conv23.i299 = zext i8 %225 to i32
  %226 = load i8*, i8** %a.addr.i242, align 8
  %227 = load i32, i32* %i.i248, align 4
  %idxprom24.i300 = sext i32 %227 to i64
  %arrayidx25.i301 = getelementptr inbounds i8, i8* %226, i64 %idxprom24.i300
  %228 = load i8, i8* %arrayidx25.i301, align 1
  %229 = load i8*, i8** %b.addr.i243, align 8
  %230 = load i32, i32* %j.i249, align 4
  %idxprom26.i302 = sext i32 %230 to i64
  %arrayidx27.i303 = getelementptr inbounds i8, i8* %229, i64 %idxprom26.i302
  %231 = load i8, i8* %arrayidx27.i303, align 1
  %call28.i304 = call zeroext i8 @mult(i8 zeroext %228, i8 zeroext %231) #3
  %conv29.i305 = zext i8 %call28.i304 to i32
  %xor.i306 = xor i32 %conv23.i299, %conv29.i305
  %232 = load i8*, i8** %a.addr.i242, align 8
  %233 = load i32, i32* %j.i249, align 4
  %idxprom30.i307 = sext i32 %233 to i64
  %arrayidx31.i308 = getelementptr inbounds i8, i8* %232, i64 %idxprom30.i307
  %234 = load i8, i8* %arrayidx31.i308, align 1
  %235 = load i8*, i8** %b.addr.i243, align 8
  %236 = load i32, i32* %i.i248, align 4
  %idxprom32.i309 = sext i32 %236 to i64
  %arrayidx33.i310 = getelementptr inbounds i8, i8* %235, i64 %idxprom32.i309
  %237 = load i8, i8* %arrayidx33.i310, align 1
  %call34.i311 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %237) #3
  %conv35.i312 = zext i8 %call34.i311 to i32
  %xor36.i313 = xor i32 %xor.i306, %conv35.i312
  %conv37.i314 = trunc i32 %xor36.i313 to i8
  %238 = load i32, i32* %j.i249, align 4
  %idxprom38.i315 = sext i32 %238 to i64
  %arrayidx39.i316 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom38.i315
  %239 = load i32, i32* %i.i248, align 4
  %idxprom40.i317 = sext i32 %239 to i64
  %arrayidx41.i318 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx39.i316, i64 0, i64 %idxprom40.i317
  store i8 %conv37.i314, i8* %arrayidx41.i318, align 1
  %240 = load i32, i32* %j.i249, align 4
  %inc.i320 = add nsw i32 %240, 1
  store i32 %inc.i320, i32* %j.i249, align 4
  br label %for.cond12.i289

for.end.i321:                                     ; preds = %for.cond12.i289
  %241 = load i32, i32* %i.i248, align 4
  %inc43.i322 = add nsw i32 %241, 1
  store i32 %inc43.i322, i32* %i.i248, align 4
  br label %for.cond.i285

for.end44.i323:                                   ; preds = %for.cond.i285
  store i32 0, i32* %i45.i250, align 4
  br label %for.cond46.i325

for.cond46.i325:                                  ; preds = %for.end76.i351, %for.end44.i323
  %242 = load i32, i32* %i45.i250, align 4
  %cmp47.i324 = icmp sle i32 %242, 0
  br i1 %cmp47.i324, label %for.body49.i333, label %for.end79.i355

for.body49.i333:                                  ; preds = %for.cond46.i325
  %243 = load i8*, i8** %a.addr.i242, align 8
  %244 = load i32, i32* %i45.i250, align 4
  %idxprom50.i326 = sext i32 %244 to i64
  %arrayidx51.i327 = getelementptr inbounds i8, i8* %243, i64 %idxprom50.i326
  %245 = load i8, i8* %arrayidx51.i327, align 1
  %246 = load i8*, i8** %b.addr.i243, align 8
  %247 = load i32, i32* %i45.i250, align 4
  %idxprom52.i328 = sext i32 %247 to i64
  %arrayidx53.i329 = getelementptr inbounds i8, i8* %246, i64 %idxprom52.i328
  %248 = load i8, i8* %arrayidx53.i329, align 1
  %call54.i330 = call zeroext i8 @mult(i8 zeroext %245, i8 zeroext %248) #3
  %249 = load i8*, i8** %c.addr.i244, align 8
  %250 = load i32, i32* %i45.i250, align 4
  %idxprom55.i331 = sext i32 %250 to i64
  %arrayidx56.i332 = getelementptr inbounds i8, i8* %249, i64 %idxprom55.i331
  store i8 %call54.i330, i8* %arrayidx56.i332, align 1
  store i32 0, i32* %j57.i251, align 4
  br label %for.cond58.i335

for.cond58.i335:                                  ; preds = %if.end.i349, %for.body49.i333
  %251 = load i32, i32* %j57.i251, align 4
  %cmp59.i334 = icmp sle i32 %251, 0
  br i1 %cmp59.i334, label %for.body61.i337, label %for.end76.i351

for.body61.i337:                                  ; preds = %for.cond58.i335
  %252 = load i32, i32* %j57.i251, align 4
  %253 = load i32, i32* %i45.i250, align 4
  %cmp62.i336 = icmp ne i32 %252, %253
  br i1 %cmp62.i336, label %if.then.i348, label %if.end.i349

if.then.i348:                                     ; preds = %for.body61.i337
  %254 = load i32, i32* %i45.i250, align 4
  %idxprom64.i338 = sext i32 %254 to i64
  %arrayidx65.i339 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom64.i338
  %255 = load i32, i32* %j57.i251, align 4
  %idxprom66.i340 = sext i32 %255 to i64
  %arrayidx67.i341 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx65.i339, i64 0, i64 %idxprom66.i340
  %256 = load i8, i8* %arrayidx67.i341, align 1
  %conv68.i342 = zext i8 %256 to i32
  %257 = load i8*, i8** %c.addr.i244, align 8
  %258 = load i32, i32* %i45.i250, align 4
  %idxprom69.i343 = sext i32 %258 to i64
  %arrayidx70.i344 = getelementptr inbounds i8, i8* %257, i64 %idxprom69.i343
  %259 = load i8, i8* %arrayidx70.i344, align 1
  %conv71.i345 = zext i8 %259 to i32
  %xor72.i346 = xor i32 %conv71.i345, %conv68.i342
  %conv73.i347 = trunc i32 %xor72.i346 to i8
  store i8 %conv73.i347, i8* %arrayidx70.i344, align 1
  br label %if.end.i349

if.end.i349:                                      ; preds = %if.then.i348, %for.body61.i337
  %260 = load i32, i32* %j57.i251, align 4
  %inc75.i350 = add nsw i32 %260, 1
  store i32 %inc75.i350, i32* %j57.i251, align 4
  br label %for.cond58.i335

for.end76.i351:                                   ; preds = %for.cond58.i335
  %261 = load i32, i32* %i45.i250, align 4
  %inc78.i352 = add nsw i32 %261, 1
  store i32 %inc78.i352, i32* %i45.i250, align 4
  br label %for.cond46.i325

for.end79.i355:                                   ; preds = %for.cond46.i325
  %262 = load i8, i8* %A.i245, align 1
  %263 = load i8, i8* %B.i246, align 1
  %call80.i353 = call zeroext i8 @mult(i8 zeroext %262, i8 zeroext %263) #3
  %conv81.i354 = zext i8 %call80.i353 to i32
  %264 = load i8*, i8** %c.addr.i244, align 8
  store i8* %264, i8** %a.addr.i107.i231, align 8
  %265 = load i8*, i8** %a.addr.i107.i231, align 8
  store i8* %265, i8** %a.addr.i.i103.i227, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i228, align 8
  store i32 0, i32* %i.i.i106.i230, align 4
  br label %for.cond.i.i109.i357

for.cond.i.i109.i357:                             ; preds = %for.body.i.i118.i366, %for.end79.i355
  %266 = load i32, i32* %i.i.i106.i230, align 4
  %cmp.i.i108.i356 = icmp sle i32 %266, 0
  br i1 %cmp.i.i108.i356, label %for.body.i.i118.i366, label %sec_mult.exit369

for.body.i.i118.i366:                             ; preds = %for.cond.i.i109.i357
  %267 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i228, align 8
  %268 = load i8*, i8** %a.addr.i.i103.i227, align 8
  %269 = load i32, i32* %i.i.i106.i230, align 4
  %idxprom.i.i110.i358 = sext i32 %269 to i64
  %arrayidx.i.i111.i359 = getelementptr inbounds i8, i8* %268, i64 %idxprom.i.i110.i358
  %270 = load i8, i8* %arrayidx.i.i111.i359, align 1
  %call.i.i112.i360 = call zeroext i8 %267(i8 zeroext %270) #3
  %conv.i.i113.i361 = zext i8 %call.i.i112.i360 to i32
  %271 = load i8, i8* %result.i.i105.i229, align 1
  %conv1.i.i114.i362 = zext i8 %271 to i32
  %xor.i.i115.i363 = xor i32 %conv1.i.i114.i362, %conv.i.i113.i361
  %conv2.i.i116.i364 = trunc i32 %xor.i.i115.i363 to i8
  store i8 %conv2.i.i116.i364, i8* %result.i.i105.i229, align 1
  %272 = load i32, i32* %i.i.i106.i230, align 4
  %inc.i.i117.i365 = add nsw i32 %272, 1
  store i32 %inc.i.i117.i365, i32* %i.i.i106.i230, align 4
  br label %for.cond.i.i109.i357

sec_mult.exit369:                                 ; preds = %for.cond.i.i109.i357
  %273 = load i8, i8* %result.i.i105.i229, align 1
  %conv83.i367 = zext i8 %273 to i32
  %cmp84.i368 = icmp eq i32 %conv81.i354, %conv83.i367
  call void @assert(i1 zeroext %cmp84.i368) #3
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %l3, i64 0, i64 0
  store i8* %arraydecay13, i8** %from.addr.i370, align 8
  store i8* %arraydecay14, i8** %to.addr.i371, align 8
  store i8 (i8)* @L3, i8 (i8)** %f.addr.i372, align 8
  store i32 0, i32* %i.i373, align 4
  br label %for.cond.i375

for.cond.i375:                                    ; preds = %for.body.i381, %sec_mult.exit369
  %274 = load i32, i32* %i.i373, align 4
  %cmp.i374 = icmp sle i32 %274, 0
  br i1 %cmp.i374, label %for.body.i381, label %transform.exit384

for.body.i381:                                    ; preds = %for.cond.i375
  %275 = load i8 (i8)*, i8 (i8)** %f.addr.i372, align 8
  %276 = load i8*, i8** %from.addr.i370, align 8
  %277 = load i32, i32* %i.i373, align 4
  %idxprom.i376 = sext i32 %277 to i64
  %arrayidx.i377 = getelementptr inbounds i8, i8* %276, i64 %idxprom.i376
  %278 = load i8, i8* %arrayidx.i377, align 1
  %call.i378 = call zeroext i8 %275(i8 zeroext %278) #3
  %279 = load i8*, i8** %to.addr.i371, align 8
  %280 = load i32, i32* %i.i373, align 4
  %idxprom1.i379 = sext i32 %280 to i64
  %arrayidx2.i380 = getelementptr inbounds i8, i8* %279, i64 %idxprom1.i379
  store i8 %call.i378, i8* %arrayidx2.i380, align 1
  %281 = load i32, i32* %i.i373, align 4
  %inc.i382 = add nsw i32 %281, 1
  store i32 %inc.i382, i32* %i.i373, align 4
  br label %for.cond.i375

transform.exit384:                                ; preds = %for.cond.i375
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [1 x i8], [1 x i8]* %l5, i64 0, i64 0
  store i8* %arraydecay15, i8** %from.addr.i385, align 8
  store i8* %arraydecay16, i8** %to.addr.i386, align 8
  store i8 (i8)* @L5, i8 (i8)** %f.addr.i387, align 8
  store i32 0, i32* %i.i388, align 4
  br label %for.cond.i390

for.cond.i390:                                    ; preds = %for.body.i396, %transform.exit384
  %282 = load i32, i32* %i.i388, align 4
  %cmp.i389 = icmp sle i32 %282, 0
  br i1 %cmp.i389, label %for.body.i396, label %transform.exit399

for.body.i396:                                    ; preds = %for.cond.i390
  %283 = load i8 (i8)*, i8 (i8)** %f.addr.i387, align 8
  %284 = load i8*, i8** %from.addr.i385, align 8
  %285 = load i32, i32* %i.i388, align 4
  %idxprom.i391 = sext i32 %285 to i64
  %arrayidx.i392 = getelementptr inbounds i8, i8* %284, i64 %idxprom.i391
  %286 = load i8, i8* %arrayidx.i392, align 1
  %call.i393 = call zeroext i8 %283(i8 zeroext %286) #3
  %287 = load i8*, i8** %to.addr.i386, align 8
  %288 = load i32, i32* %i.i388, align 4
  %idxprom1.i394 = sext i32 %288 to i64
  %arrayidx2.i395 = getelementptr inbounds i8, i8* %287, i64 %idxprom1.i394
  store i8 %call.i393, i8* %arrayidx2.i395, align 1
  %289 = load i32, i32* %i.i388, align 4
  %inc.i397 = add nsw i32 %289, 1
  store i32 %inc.i397, i32* %i.i388, align 4
  br label %for.cond.i390

transform.exit399:                                ; preds = %for.cond.i390
  %arraydecay17 = getelementptr inbounds [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %l7, i64 0, i64 0
  store i8* %arraydecay17, i8** %from.addr.i400, align 8
  store i8* %arraydecay18, i8** %to.addr.i401, align 8
  store i8 (i8)* @L7, i8 (i8)** %f.addr.i402, align 8
  store i32 0, i32* %i.i403, align 4
  br label %for.cond.i405

for.cond.i405:                                    ; preds = %for.body.i411, %transform.exit399
  %290 = load i32, i32* %i.i403, align 4
  %cmp.i404 = icmp sle i32 %290, 0
  br i1 %cmp.i404, label %for.body.i411, label %transform.exit414

for.body.i411:                                    ; preds = %for.cond.i405
  %291 = load i8 (i8)*, i8 (i8)** %f.addr.i402, align 8
  %292 = load i8*, i8** %from.addr.i400, align 8
  %293 = load i32, i32* %i.i403, align 4
  %idxprom.i406 = sext i32 %293 to i64
  %arrayidx.i407 = getelementptr inbounds i8, i8* %292, i64 %idxprom.i406
  %294 = load i8, i8* %arrayidx.i407, align 1
  %call.i408 = call zeroext i8 %291(i8 zeroext %294) #3
  %295 = load i8*, i8** %to.addr.i401, align 8
  %296 = load i32, i32* %i.i403, align 4
  %idxprom1.i409 = sext i32 %296 to i64
  %arrayidx2.i410 = getelementptr inbounds i8, i8* %295, i64 %idxprom1.i409
  store i8 %call.i408, i8* %arrayidx2.i410, align 1
  %297 = load i32, i32* %i.i403, align 4
  %inc.i412 = add nsw i32 %297, 1
  store i32 %inc.i412, i32* %i.i403, align 4
  br label %for.cond.i405

transform.exit414:                                ; preds = %for.cond.i405
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %transform.exit414
  %298 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %298, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %299 = load i32, i32* %i, align 4
  %idxprom = sext i32 %299 to i64
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %l1, i64 0, i64 %idxprom
  %300 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %300 to i32
  %301 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %301 to i64
  %arrayidx23 = getelementptr inbounds [1 x i8], [1 x i8]* %l3, i64 0, i64 %idxprom22
  %302 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %302 to i32
  %xor = xor i32 %conv21, %conv24
  %303 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %303 to i64
  %arrayidx26 = getelementptr inbounds [1 x i8], [1 x i8]* %l5, i64 0, i64 %idxprom25
  %304 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %304 to i32
  %xor28 = xor i32 %xor, %conv27
  %305 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %305 to i64
  %arrayidx30 = getelementptr inbounds [1 x i8], [1 x i8]* %l7, i64 0, i64 %idxprom29
  %306 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %306 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %307 = load i8*, i8** %y.addr, align 8
  %308 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %308 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %307, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %309 = load i32, i32* %i, align 4
  %inc = add nsw i32 %309, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %310 = load i8*, i8** %y.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %310, i64 0
  %311 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %311 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %arrayidx36, align 1
  %312 = load i8, i8* %X, align 1
  store i8 %312, i8* %x.addr.i, align 1
  %313 = load i8, i8* %x.addr.i, align 1
  %call.i415 = call zeroext i8 @L1(i8 zeroext %313) #3
  %conv.i416 = zext i8 %call.i415 to i32
  %xor.i417 = xor i32 1, %conv.i416
  %314 = load i8, i8* %x.addr.i, align 1
  store i8 %314, i8* %x.addr.i.i, align 1
  %315 = load i8, i8* %x.addr.i.i, align 1
  %316 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i418 = call zeroext i8 @square(i8 zeroext %316) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %315, i8 zeroext %call.i.i418) #3
  %call2.i = call zeroext i8 @L3(i8 zeroext %call1.i.i) #3
  %conv3.i419 = zext i8 %call2.i to i32
  %xor4.i = xor i32 %xor.i417, %conv3.i419
  %317 = load i8, i8* %x.addr.i, align 1
  store i8 %317, i8* %x.addr.i14.i, align 1
  %318 = load i8, i8* %x.addr.i14.i, align 1
  %319 = load i8, i8* %x.addr.i14.i, align 1
  %call.i15.i = call zeroext i8 @exp4(i8 zeroext %319) #3
  %call1.i16.i = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %call.i15.i) #3
  %call6.i = call zeroext i8 @L5(i8 zeroext %call1.i16.i) #3
  %conv7.i420 = zext i8 %call6.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i420
  %320 = load i8, i8* %x.addr.i, align 1
  store i8 %320, i8* %x.addr.i17.i, align 1
  %321 = load i8, i8* %x.addr.i17.i, align 1
  store i8 %321, i8* %x.addr.i.i.i, align 1
  %322 = load i8, i8* %x.addr.i.i.i, align 1
  %323 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i421 = call zeroext i8 @square(i8 zeroext %323) #3
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %322, i8 zeroext %call.i.i.i421) #3
  %324 = load i8, i8* %x.addr.i17.i, align 1
  %call1.i18.i = call zeroext i8 @exp4(i8 zeroext %324) #3
  %call2.i.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call1.i18.i) #3
  %call10.i = call zeroext i8 @L7(i8 zeroext %call2.i.i) #3
  %conv11.i = zext i8 %call10.i to i32
  %xor12.i = xor i32 %xor8.i, %conv11.i
  %conv13.i = trunc i32 %xor12.i to i8
  %conv41 = zext i8 %conv13.i to i32
  %325 = load i8*, i8** %y.addr, align 8
  store i8* %325, i8** %a.addr.i426, align 8
  %326 = load i8*, i8** %a.addr.i426, align 8
  store i8* %326, i8** %a.addr.i.i422, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i423, align 8
  store i32 0, i32* %i.i.i425, align 4
  br label %for.cond.i.i428

for.cond.i.i428:                                  ; preds = %for.body.i.i437, %for.end
  %327 = load i32, i32* %i.i.i425, align 4
  %cmp.i.i427 = icmp sle i32 %327, 0
  br i1 %cmp.i.i427, label %for.body.i.i437, label %xors.exit438

for.body.i.i437:                                  ; preds = %for.cond.i.i428
  %328 = load i8 (i8)*, i8 (i8)** %f.addr.i.i423, align 8
  %329 = load i8*, i8** %a.addr.i.i422, align 8
  %330 = load i32, i32* %i.i.i425, align 4
  %idxprom.i.i429 = sext i32 %330 to i64
  %arrayidx.i.i430 = getelementptr inbounds i8, i8* %329, i64 %idxprom.i.i429
  %331 = load i8, i8* %arrayidx.i.i430, align 1
  %call.i.i431 = call zeroext i8 %328(i8 zeroext %331) #3
  %conv.i.i432 = zext i8 %call.i.i431 to i32
  %332 = load i8, i8* %result.i.i424, align 1
  %conv1.i.i433 = zext i8 %332 to i32
  %xor.i.i434 = xor i32 %conv1.i.i433, %conv.i.i432
  %conv2.i.i435 = trunc i32 %xor.i.i434 to i8
  store i8 %conv2.i.i435, i8* %result.i.i424, align 1
  %333 = load i32, i32* %i.i.i425, align 4
  %inc.i.i436 = add nsw i32 %333, 1
  store i32 %inc.i.i436, i32* %i.i.i425, align 4
  br label %for.cond.i.i428

xors.exit438:                                     ; preds = %for.cond.i.i428
  %334 = load i8, i8* %result.i.i424, align 1
  %conv43 = zext i8 %334 to i32
  %cmp44 = icmp eq i32 %conv41, %conv43
  call void @assert(i1 zeroext %cmp44)
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
