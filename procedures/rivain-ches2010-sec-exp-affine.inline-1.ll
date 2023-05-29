; ModuleID = '../examples/rivain-ches2010-sec-exp-affine.c'
source_filename = "../examples/rivain-ches2010-sec-exp-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [45 x i8] c"../examples/rivain-ches2010-sec-exp-affine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 29 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 43 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 45 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 47 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 91 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 114 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 120 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 1
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
  %cmp = icmp sle i32 %0, 1
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
  %cmp.i = icmp sle i32 %1, 1
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
  %r = alloca [2 x [2 x i8]], align 1
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
  %cmp.i.i = icmp sle i32 %3, 1
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
  %cmp.i.i91 = icmp sle i32 %14, 1
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
  %cmp10 = icmp sle i32 %22, 1
  br i1 %cmp10, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %24, 1
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom
  %26 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx, i64 0, i64 %idxprom17
  store i8 %call16, i8* %arrayidx18, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom19
  %28 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20, i64 0, i64 %idxprom21
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
  %arrayidx39 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom38
  %43 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39, i64 0, i64 %idxprom40
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
  %cmp47 = icmp sle i32 %46, 1
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
  %cmp59 = icmp sle i32 %55, 1
  br i1 %cmp59, label %for.body61, label %for.end76

for.body61:                                       ; preds = %for.cond58
  %56 = load i32, i32* %j57, align 4
  %57 = load i32, i32* %i45, align 4
  %cmp62 = icmp ne i32 %56, %57
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body61
  %58 = load i32, i32* %i45, align 4
  %idxprom64 = sext i32 %58 to i64
  %arrayidx65 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom64
  %59 = load i32, i32* %j57, align 4
  %idxprom66 = sext i32 %59 to i64
  %arrayidx67 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65, i64 0, i64 %idxprom66
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
  %cmp.i.i108 = icmp sle i32 %70, 1
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
  %cmp.i.i = icmp sle i32 %3, 1
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
  %cmp5 = icmp sle i32 %conv4, 1
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
  %cmp.i.i26 = icmp sle i32 %23, 1
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
define dso_local zeroext i8 @exp16(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @exp4(i8 zeroext %0)
  %call1 = call zeroext i8 @exp4(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  %z = alloca i8, align 1
  %y = alloca i8, align 1
  %w = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @square(i8 zeroext %0)
  store i8 %call, i8* %z, align 1
  %1 = load i8, i8* %z, align 1
  %2 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %2)
  store i8 %call1, i8* %y, align 1
  %3 = load i8, i8* %y, align 1
  %call2 = call zeroext i8 @exp4(i8 zeroext %3)
  store i8 %call2, i8* %w, align 1
  %4 = load i8, i8* %y, align 1
  %5 = load i8, i8* %w, align 1
  %call3 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5)
  store i8 %call3, i8* %y, align 1
  %6 = load i8, i8* %y, align 1
  %call4 = call zeroext i8 @exp16(i8 zeroext %6)
  store i8 %call4, i8* %y, align 1
  %7 = load i8, i8* %y, align 1
  %8 = load i8, i8* %w, align 1
  %call5 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8)
  store i8 %call5, i8* %y, align 1
  %9 = load i8, i8* %y, align 1
  %10 = load i8, i8* %z, align 1
  %call6 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  store i8 %call6, i8* %y, align 1
  %11 = load i8, i8* %y, align 1
  ret i8 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i587 = alloca i8*, align 8
  %f.addr.i.i588 = alloca i8 (i8)*, align 8
  %result.i.i589 = alloca i8, align 1
  %i.i.i590 = alloca i32, align 4
  %a.addr.i591 = alloca i8*, align 8
  %x.addr.i584 = alloca i8, align 1
  %z.i = alloca i8, align 1
  %y.i = alloca i8, align 1
  %w.i = alloca i8, align 1
  %a.addr.i.i103.i441 = alloca i8*, align 8
  %f.addr.i.i104.i442 = alloca i8 (i8)*, align 8
  %result.i.i105.i443 = alloca i8, align 1
  %i.i.i106.i444 = alloca i32, align 4
  %a.addr.i107.i445 = alloca i8*, align 8
  %a.addr.i.i86.i446 = alloca i8*, align 8
  %f.addr.i.i87.i447 = alloca i8 (i8)*, align 8
  %result.i.i88.i448 = alloca i8, align 1
  %i.i.i89.i449 = alloca i32, align 4
  %a.addr.i90.i450 = alloca i8*, align 8
  %a.addr.i.i.i451 = alloca i8*, align 8
  %f.addr.i.i.i452 = alloca i8 (i8)*, align 8
  %result.i.i.i453 = alloca i8, align 1
  %i.i.i.i454 = alloca i32, align 4
  %a.addr.i.i455 = alloca i8*, align 8
  %a.addr.i456 = alloca i8*, align 8
  %b.addr.i457 = alloca i8*, align 8
  %c.addr.i458 = alloca i8*, align 8
  %A.i459 = alloca i8, align 1
  %B.i460 = alloca i8, align 1
  %i.i462 = alloca i32, align 4
  %j.i463 = alloca i32, align 4
  %i45.i464 = alloca i32, align 4
  %j57.i465 = alloca i32, align 4
  %a.addr.i.i103.i298 = alloca i8*, align 8
  %f.addr.i.i104.i299 = alloca i8 (i8)*, align 8
  %result.i.i105.i300 = alloca i8, align 1
  %i.i.i106.i301 = alloca i32, align 4
  %a.addr.i107.i302 = alloca i8*, align 8
  %a.addr.i.i86.i303 = alloca i8*, align 8
  %f.addr.i.i87.i304 = alloca i8 (i8)*, align 8
  %result.i.i88.i305 = alloca i8, align 1
  %i.i.i89.i306 = alloca i32, align 4
  %a.addr.i90.i307 = alloca i8*, align 8
  %a.addr.i.i.i308 = alloca i8*, align 8
  %f.addr.i.i.i309 = alloca i8 (i8)*, align 8
  %result.i.i.i310 = alloca i8, align 1
  %i.i.i.i311 = alloca i32, align 4
  %a.addr.i.i312 = alloca i8*, align 8
  %a.addr.i313 = alloca i8*, align 8
  %b.addr.i314 = alloca i8*, align 8
  %c.addr.i315 = alloca i8*, align 8
  %A.i316 = alloca i8, align 1
  %B.i317 = alloca i8, align 1
  %i.i319 = alloca i32, align 4
  %j.i320 = alloca i32, align 4
  %i45.i321 = alloca i32, align 4
  %j57.i322 = alloca i32, align 4
  %from.addr.i283 = alloca i8*, align 8
  %to.addr.i284 = alloca i8*, align 8
  %f.addr.i285 = alloca i8 (i8)*, align 8
  %i.i286 = alloca i32, align 4
  %a.addr.i.i103.i140 = alloca i8*, align 8
  %f.addr.i.i104.i141 = alloca i8 (i8)*, align 8
  %result.i.i105.i142 = alloca i8, align 1
  %i.i.i106.i143 = alloca i32, align 4
  %a.addr.i107.i144 = alloca i8*, align 8
  %a.addr.i.i86.i145 = alloca i8*, align 8
  %f.addr.i.i87.i146 = alloca i8 (i8)*, align 8
  %result.i.i88.i147 = alloca i8, align 1
  %i.i.i89.i148 = alloca i32, align 4
  %a.addr.i90.i149 = alloca i8*, align 8
  %a.addr.i.i.i150 = alloca i8*, align 8
  %f.addr.i.i.i151 = alloca i8 (i8)*, align 8
  %result.i.i.i152 = alloca i8, align 1
  %i.i.i.i153 = alloca i32, align 4
  %a.addr.i.i154 = alloca i8*, align 8
  %a.addr.i155 = alloca i8*, align 8
  %b.addr.i156 = alloca i8*, align 8
  %c.addr.i157 = alloca i8*, align 8
  %A.i158 = alloca i8, align 1
  %B.i159 = alloca i8, align 1
  %i.i161 = alloca i32, align 4
  %j.i162 = alloca i32, align 4
  %i45.i163 = alloca i32, align 4
  %j57.i164 = alloca i32, align 4
  %a.addr.i.i21.i78 = alloca i8*, align 8
  %f.addr.i.i22.i79 = alloca i8 (i8)*, align 8
  %result.i.i23.i80 = alloca i8, align 1
  %i.i.i24.i81 = alloca i32, align 4
  %a.addr.i25.i82 = alloca i8*, align 8
  %a.addr.i.i.i83 = alloca i8*, align 8
  %f.addr.i.i.i84 = alloca i8 (i8)*, align 8
  %result.i.i.i85 = alloca i8, align 1
  %i.i.i.i86 = alloca i32, align 4
  %a.addr.i.i87 = alloca i8*, align 8
  %x.addr.i88 = alloca i8*, align 8
  %X.i89 = alloca i8, align 1
  %i.i90 = alloca i8, align 1
  %tmp.i91 = alloca i8, align 1
  %from.addr.i63 = alloca i8*, align 8
  %to.addr.i64 = alloca i8*, align 8
  %f.addr.i65 = alloca i8 (i8)*, align 8
  %i.i66 = alloca i32, align 4
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
  %a.addr.i.i.i34 = alloca i8*, align 8
  %f.addr.i.i.i35 = alloca i8 (i8)*, align 8
  %result.i.i.i36 = alloca i8, align 1
  %i.i.i.i37 = alloca i32, align 4
  %a.addr.i.i38 = alloca i8*, align 8
  %a.addr.i39 = alloca i8*, align 8
  %b.addr.i = alloca i8*, align 8
  %c.addr.i = alloca i8*, align 8
  %A.i = alloca i8, align 1
  %B.i = alloca i8, align 1
  %r.i = alloca [2 x [2 x i8]], align 1
  %i.i40 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %i45.i = alloca i32, align 4
  %j57.i = alloca i32, align 4
  %a.addr.i.i21.i = alloca i8*, align 8
  %f.addr.i.i22.i = alloca i8 (i8)*, align 8
  %result.i.i23.i = alloca i8, align 1
  %i.i.i24.i = alloca i32, align 4
  %a.addr.i25.i = alloca i8*, align 8
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i26 = alloca i8*, align 8
  %x.addr.i = alloca i8*, align 8
  %X.i = alloca i8, align 1
  %i.i27 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
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
  %z = alloca [2 x i8], align 1
  %w = alloca [2 x i8], align 1
  %u = alloca [2 x i8], align 1
  %v = alloca [2 x i8], align 1
  %m = alloca [2 x i8], align 1
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
  %cmp.i.i = icmp sle i32 %3, 1
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
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit
  %12 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %12, 1
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
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  store i8* %arraydecay4, i8** %x.addr.i, align 8
  %call.i28 = call zeroext i8 (...) @rand() #3
  store i8 %call.i28, i8* %X.i, align 1
  %20 = load i8, i8* %X.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = load i8*, i8** %x.addr.i, align 8
  store i8* %21, i8** %a.addr.i.i26, align 8
  %22 = load i8*, i8** %a.addr.i.i26, align 8
  store i8* %22, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %transform.exit
  %23 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %23, 1
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %xors.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %24 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i, align 8
  %25 = load i8*, i8** %a.addr.i.i.i, align 8
  %26 = load i32, i32* %i.i.i.i, align 4
  %idxprom.i.i.i = sext i32 %26 to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %25, i64 %idxprom.i.i.i
  %27 = load i8, i8* %arrayidx.i.i.i, align 1
  %call.i.i.i = call zeroext i8 %24(i8 zeroext %27) #3
  %conv.i.i.i = zext i8 %call.i.i.i to i32
  %28 = load i8, i8* %result.i.i.i, align 1
  %conv1.i.i.i = zext i8 %28 to i32
  %xor.i.i.i = xor i32 %conv1.i.i.i, %conv.i.i.i
  %conv2.i.i.i = trunc i32 %xor.i.i.i to i8
  store i8 %conv2.i.i.i, i8* %result.i.i.i, align 1
  %29 = load i32, i32* %i.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %29, 1
  store i32 %inc.i.i.i, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

xors.exit.i:                                      ; preds = %for.cond.i.i.i
  %30 = load i8, i8* %result.i.i.i, align 1
  %conv2.i = zext i8 %30 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  store i8 1, i8* %i.i27, align 1
  br label %for.cond.i30

for.cond.i30:                                     ; preds = %for.body.i32, %xors.exit.i
  %31 = load i8, i8* %i.i27, align 1
  %conv4.i = zext i8 %31 to i32
  %cmp5.i = icmp sle i32 %conv4.i, 1
  br i1 %cmp5.i, label %for.body.i32, label %for.end.i

for.body.i32:                                     ; preds = %for.cond.i30
  %call7.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i, i8* %tmp.i, align 1
  %32 = load i8, i8* %tmp.i, align 1
  %conv8.i = zext i8 %32 to i32
  %33 = load i8*, i8** %x.addr.i, align 8
  %34 = load i8, i8* %33, align 1
  %conv9.i = zext i8 %34 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %33, align 1
  %35 = load i8, i8* %tmp.i, align 1
  %conv11.i = zext i8 %35 to i32
  %36 = load i8*, i8** %x.addr.i, align 8
  %37 = load i8, i8* %i.i27, align 1
  %idxprom.i31 = zext i8 %37 to i64
  %arrayidx12.i = getelementptr inbounds i8, i8* %36, i64 %idxprom.i31
  %38 = load i8, i8* %arrayidx12.i, align 1
  %conv13.i = zext i8 %38 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %arrayidx12.i, align 1
  %39 = load i8, i8* %i.i27, align 1
  %inc.i33 = add i8 %39, 1
  store i8 %inc.i33, i8* %i.i27, align 1
  br label %for.cond.i30

for.end.i:                                        ; preds = %for.cond.i30
  %40 = load i8, i8* %X.i, align 1
  %conv16.i = zext i8 %40 to i32
  %41 = load i8*, i8** %x.addr.i, align 8
  store i8* %41, i8** %a.addr.i25.i, align 8
  %42 = load i8*, i8** %a.addr.i25.i, align 8
  store i8* %42, i8** %a.addr.i.i21.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i, align 8
  store i32 0, i32* %i.i.i24.i, align 4
  br label %for.cond.i.i27.i

for.cond.i.i27.i:                                 ; preds = %for.body.i.i36.i, %for.end.i
  %43 = load i32, i32* %i.i.i24.i, align 4
  %cmp.i.i26.i = icmp sle i32 %43, 1
  br i1 %cmp.i.i26.i, label %for.body.i.i36.i, label %refresh_masks.exit

for.body.i.i36.i:                                 ; preds = %for.cond.i.i27.i
  %44 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i, align 8
  %45 = load i8*, i8** %a.addr.i.i21.i, align 8
  %46 = load i32, i32* %i.i.i24.i, align 4
  %idxprom.i.i28.i = sext i32 %46 to i64
  %arrayidx.i.i29.i = getelementptr inbounds i8, i8* %45, i64 %idxprom.i.i28.i
  %47 = load i8, i8* %arrayidx.i.i29.i, align 1
  %call.i.i30.i = call zeroext i8 %44(i8 zeroext %47) #3
  %conv.i.i31.i = zext i8 %call.i.i30.i to i32
  %48 = load i8, i8* %result.i.i23.i, align 1
  %conv1.i.i32.i = zext i8 %48 to i32
  %xor.i.i33.i = xor i32 %conv1.i.i32.i, %conv.i.i31.i
  %conv2.i.i34.i = trunc i32 %xor.i.i33.i to i8
  store i8 %conv2.i.i34.i, i8* %result.i.i23.i, align 1
  %49 = load i32, i32* %i.i.i24.i, align 4
  %inc.i.i35.i = add nsw i32 %49, 1
  store i32 %inc.i.i35.i, i32* %i.i.i24.i, align 4
  br label %for.cond.i.i27.i

refresh_masks.exit:                               ; preds = %for.cond.i.i27.i
  %50 = load i8, i8* %result.i.i23.i, align 1
  %conv18.i = zext i8 %50 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %51 = load i8*, i8** %x.addr, align 8
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  store i8* %arraydecay5, i8** %a.addr.i39, align 8
  store i8* %51, i8** %b.addr.i, align 8
  store i8* %arraydecay6, i8** %c.addr.i, align 8
  %call.i41 = call zeroext i8 (...) @rand() #3
  store i8 %call.i41, i8* %A.i, align 1
  %call1.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i, i8* %B.i, align 1
  %52 = load i8, i8* %A.i, align 1
  %conv.i42 = zext i8 %52 to i32
  %53 = load i8*, i8** %a.addr.i39, align 8
  store i8* %53, i8** %a.addr.i.i38, align 8
  %54 = load i8*, i8** %a.addr.i.i38, align 8
  store i8* %54, i8** %a.addr.i.i.i34, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i35, align 8
  store i32 0, i32* %i.i.i.i37, align 4
  br label %for.cond.i.i.i44

for.cond.i.i.i44:                                 ; preds = %for.body.i.i.i53, %refresh_masks.exit
  %55 = load i32, i32* %i.i.i.i37, align 4
  %cmp.i.i.i43 = icmp sle i32 %55, 1
  br i1 %cmp.i.i.i43, label %for.body.i.i.i53, label %xors.exit.i55

for.body.i.i.i53:                                 ; preds = %for.cond.i.i.i44
  %56 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i35, align 8
  %57 = load i8*, i8** %a.addr.i.i.i34, align 8
  %58 = load i32, i32* %i.i.i.i37, align 4
  %idxprom.i.i.i45 = sext i32 %58 to i64
  %arrayidx.i.i.i46 = getelementptr inbounds i8, i8* %57, i64 %idxprom.i.i.i45
  %59 = load i8, i8* %arrayidx.i.i.i46, align 1
  %call.i.i.i47 = call zeroext i8 %56(i8 zeroext %59) #3
  %conv.i.i.i48 = zext i8 %call.i.i.i47 to i32
  %60 = load i8, i8* %result.i.i.i36, align 1
  %conv1.i.i.i49 = zext i8 %60 to i32
  %xor.i.i.i50 = xor i32 %conv1.i.i.i49, %conv.i.i.i48
  %conv2.i.i.i51 = trunc i32 %xor.i.i.i50 to i8
  store i8 %conv2.i.i.i51, i8* %result.i.i.i36, align 1
  %61 = load i32, i32* %i.i.i.i37, align 4
  %inc.i.i.i52 = add nsw i32 %61, 1
  store i32 %inc.i.i.i52, i32* %i.i.i.i37, align 4
  br label %for.cond.i.i.i44

xors.exit.i55:                                    ; preds = %for.cond.i.i.i44
  %62 = load i8, i8* %result.i.i.i36, align 1
  %conv3.i = zext i8 %62 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %63 = load i8, i8* %B.i, align 1
  %conv5.i = zext i8 %63 to i32
  %64 = load i8*, i8** %b.addr.i, align 8
  store i8* %64, i8** %a.addr.i90.i, align 8
  %65 = load i8*, i8** %a.addr.i90.i, align 8
  store i8* %65, i8** %a.addr.i.i86.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i, align 8
  store i32 0, i32* %i.i.i89.i, align 4
  br label %for.cond.i.i92.i

for.cond.i.i92.i:                                 ; preds = %for.body.i.i101.i, %xors.exit.i55
  %66 = load i32, i32* %i.i.i89.i, align 4
  %cmp.i.i91.i = icmp sle i32 %66, 1
  br i1 %cmp.i.i91.i, label %for.body.i.i101.i, label %xors.exit102.i

for.body.i.i101.i:                                ; preds = %for.cond.i.i92.i
  %67 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i, align 8
  %68 = load i8*, i8** %a.addr.i.i86.i, align 8
  %69 = load i32, i32* %i.i.i89.i, align 4
  %idxprom.i.i93.i = sext i32 %69 to i64
  %arrayidx.i.i94.i = getelementptr inbounds i8, i8* %68, i64 %idxprom.i.i93.i
  %70 = load i8, i8* %arrayidx.i.i94.i, align 1
  %call.i.i95.i = call zeroext i8 %67(i8 zeroext %70) #3
  %conv.i.i96.i = zext i8 %call.i.i95.i to i32
  %71 = load i8, i8* %result.i.i88.i, align 1
  %conv1.i.i97.i = zext i8 %71 to i32
  %xor.i.i98.i = xor i32 %conv1.i.i97.i, %conv.i.i96.i
  %conv2.i.i99.i = trunc i32 %xor.i.i98.i to i8
  store i8 %conv2.i.i99.i, i8* %result.i.i88.i, align 1
  %72 = load i32, i32* %i.i.i89.i, align 4
  %inc.i.i100.i = add nsw i32 %72, 1
  store i32 %inc.i.i100.i, i32* %i.i.i89.i, align 4
  br label %for.cond.i.i92.i

xors.exit102.i:                                   ; preds = %for.cond.i.i92.i
  %73 = load i8, i8* %result.i.i88.i, align 1
  %conv7.i = zext i8 %73 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  store i32 0, i32* %i.i40, align 4
  br label %for.cond.i56

for.cond.i56:                                     ; preds = %for.end.i62, %xors.exit102.i
  %74 = load i32, i32* %i.i40, align 4
  %cmp10.i = icmp sle i32 %74, 1
  br i1 %cmp10.i, label %for.body.i57, label %for.end44.i

for.body.i57:                                     ; preds = %for.cond.i56
  %75 = load i32, i32* %i.i40, align 4
  %add.i = add nsw i32 %75, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i57
  %76 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %76, 1
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i62

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %77 = load i32, i32* %i.i40, align 4
  %idxprom.i58 = sext i32 %77 to i64
  %arrayidx.i59 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom.i58
  %78 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %78 to i64
  %arrayidx18.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i59, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %79 = load i32, i32* %i.i40, align 4
  %idxprom19.i = sext i32 %79 to i64
  %arrayidx20.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %80 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %80 to i64
  %arrayidx22.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %81 = load i8, i8* %arrayidx22.i, align 1
  %conv23.i = zext i8 %81 to i32
  %82 = load i8*, i8** %a.addr.i39, align 8
  %83 = load i32, i32* %i.i40, align 4
  %idxprom24.i = sext i32 %83 to i64
  %arrayidx25.i = getelementptr inbounds i8, i8* %82, i64 %idxprom24.i
  %84 = load i8, i8* %arrayidx25.i, align 1
  %85 = load i8*, i8** %b.addr.i, align 8
  %86 = load i32, i32* %j.i, align 4
  %idxprom26.i = sext i32 %86 to i64
  %arrayidx27.i = getelementptr inbounds i8, i8* %85, i64 %idxprom26.i
  %87 = load i8, i8* %arrayidx27.i, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %87) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i60 = xor i32 %conv23.i, %conv29.i
  %88 = load i8*, i8** %a.addr.i39, align 8
  %89 = load i32, i32* %j.i, align 4
  %idxprom30.i = sext i32 %89 to i64
  %arrayidx31.i = getelementptr inbounds i8, i8* %88, i64 %idxprom30.i
  %90 = load i8, i8* %arrayidx31.i, align 1
  %91 = load i8*, i8** %b.addr.i, align 8
  %92 = load i32, i32* %i.i40, align 4
  %idxprom32.i = sext i32 %92 to i64
  %arrayidx33.i = getelementptr inbounds i8, i8* %91, i64 %idxprom32.i
  %93 = load i8, i8* %arrayidx33.i, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %93) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i60, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %94 = load i32, i32* %j.i, align 4
  %idxprom38.i = sext i32 %94 to i64
  %arrayidx39.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom38.i
  %95 = load i32, i32* %i.i40, align 4
  %idxprom40.i = sext i32 %95 to i64
  %arrayidx41.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i, i64 0, i64 %idxprom40.i
  store i8 %conv37.i, i8* %arrayidx41.i, align 1
  %96 = load i32, i32* %j.i, align 4
  %inc.i61 = add nsw i32 %96, 1
  store i32 %inc.i61, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i62:                                      ; preds = %for.cond12.i
  %97 = load i32, i32* %i.i40, align 4
  %inc43.i = add nsw i32 %97, 1
  store i32 %inc43.i, i32* %i.i40, align 4
  br label %for.cond.i56

for.end44.i:                                      ; preds = %for.cond.i56
  store i32 0, i32* %i45.i, align 4
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.end76.i, %for.end44.i
  %98 = load i32, i32* %i45.i, align 4
  %cmp47.i = icmp sle i32 %98, 1
  br i1 %cmp47.i, label %for.body49.i, label %for.end79.i

for.body49.i:                                     ; preds = %for.cond46.i
  %99 = load i8*, i8** %a.addr.i39, align 8
  %100 = load i32, i32* %i45.i, align 4
  %idxprom50.i = sext i32 %100 to i64
  %arrayidx51.i = getelementptr inbounds i8, i8* %99, i64 %idxprom50.i
  %101 = load i8, i8* %arrayidx51.i, align 1
  %102 = load i8*, i8** %b.addr.i, align 8
  %103 = load i32, i32* %i45.i, align 4
  %idxprom52.i = sext i32 %103 to i64
  %arrayidx53.i = getelementptr inbounds i8, i8* %102, i64 %idxprom52.i
  %104 = load i8, i8* %arrayidx53.i, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %104) #3
  %105 = load i8*, i8** %c.addr.i, align 8
  %106 = load i32, i32* %i45.i, align 4
  %idxprom55.i = sext i32 %106 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %105, i64 %idxprom55.i
  store i8 %call54.i, i8* %arrayidx56.i, align 1
  store i32 0, i32* %j57.i, align 4
  br label %for.cond58.i

for.cond58.i:                                     ; preds = %if.end.i, %for.body49.i
  %107 = load i32, i32* %j57.i, align 4
  %cmp59.i = icmp sle i32 %107, 1
  br i1 %cmp59.i, label %for.body61.i, label %for.end76.i

for.body61.i:                                     ; preds = %for.cond58.i
  %108 = load i32, i32* %j57.i, align 4
  %109 = load i32, i32* %i45.i, align 4
  %cmp62.i = icmp ne i32 %108, %109
  br i1 %cmp62.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body61.i
  %110 = load i32, i32* %i45.i, align 4
  %idxprom64.i = sext i32 %110 to i64
  %arrayidx65.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom64.i
  %111 = load i32, i32* %j57.i, align 4
  %idxprom66.i = sext i32 %111 to i64
  %arrayidx67.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i, i64 0, i64 %idxprom66.i
  %112 = load i8, i8* %arrayidx67.i, align 1
  %conv68.i = zext i8 %112 to i32
  %113 = load i8*, i8** %c.addr.i, align 8
  %114 = load i32, i32* %i45.i, align 4
  %idxprom69.i = sext i32 %114 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %113, i64 %idxprom69.i
  %115 = load i8, i8* %arrayidx70.i, align 1
  %conv71.i = zext i8 %115 to i32
  %xor72.i = xor i32 %conv71.i, %conv68.i
  %conv73.i = trunc i32 %xor72.i to i8
  store i8 %conv73.i, i8* %arrayidx70.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body61.i
  %116 = load i32, i32* %j57.i, align 4
  %inc75.i = add nsw i32 %116, 1
  store i32 %inc75.i, i32* %j57.i, align 4
  br label %for.cond58.i

for.end76.i:                                      ; preds = %for.cond58.i
  %117 = load i32, i32* %i45.i, align 4
  %inc78.i = add nsw i32 %117, 1
  store i32 %inc78.i, i32* %i45.i, align 4
  br label %for.cond46.i

for.end79.i:                                      ; preds = %for.cond46.i
  %118 = load i8, i8* %A.i, align 1
  %119 = load i8, i8* %B.i, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %conv81.i = zext i8 %call80.i to i32
  %120 = load i8*, i8** %c.addr.i, align 8
  store i8* %120, i8** %a.addr.i107.i, align 8
  %121 = load i8*, i8** %a.addr.i107.i, align 8
  store i8* %121, i8** %a.addr.i.i103.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i, align 8
  store i32 0, i32* %i.i.i106.i, align 4
  br label %for.cond.i.i109.i

for.cond.i.i109.i:                                ; preds = %for.body.i.i118.i, %for.end79.i
  %122 = load i32, i32* %i.i.i106.i, align 4
  %cmp.i.i108.i = icmp sle i32 %122, 1
  br i1 %cmp.i.i108.i, label %for.body.i.i118.i, label %sec_mult.exit

for.body.i.i118.i:                                ; preds = %for.cond.i.i109.i
  %123 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i, align 8
  %124 = load i8*, i8** %a.addr.i.i103.i, align 8
  %125 = load i32, i32* %i.i.i106.i, align 4
  %idxprom.i.i110.i = sext i32 %125 to i64
  %arrayidx.i.i111.i = getelementptr inbounds i8, i8* %124, i64 %idxprom.i.i110.i
  %126 = load i8, i8* %arrayidx.i.i111.i, align 1
  %call.i.i112.i = call zeroext i8 %123(i8 zeroext %126) #3
  %conv.i.i113.i = zext i8 %call.i.i112.i to i32
  %127 = load i8, i8* %result.i.i105.i, align 1
  %conv1.i.i114.i = zext i8 %127 to i32
  %xor.i.i115.i = xor i32 %conv1.i.i114.i, %conv.i.i113.i
  %conv2.i.i116.i = trunc i32 %xor.i.i115.i to i8
  store i8 %conv2.i.i116.i, i8* %result.i.i105.i, align 1
  %128 = load i32, i32* %i.i.i106.i, align 4
  %inc.i.i117.i = add nsw i32 %128, 1
  store i32 %inc.i.i117.i, i32* %i.i.i106.i, align 4
  br label %for.cond.i.i109.i

sec_mult.exit:                                    ; preds = %for.cond.i.i109.i
  %129 = load i8, i8* %result.i.i105.i, align 1
  %conv83.i = zext i8 %129 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  store i8* %arraydecay7, i8** %from.addr.i63, align 8
  store i8* %arraydecay8, i8** %to.addr.i64, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i65, align 8
  store i32 0, i32* %i.i66, align 4
  br label %for.cond.i68

for.cond.i68:                                     ; preds = %for.body.i74, %sec_mult.exit
  %130 = load i32, i32* %i.i66, align 4
  %cmp.i67 = icmp sle i32 %130, 1
  br i1 %cmp.i67, label %for.body.i74, label %transform.exit77

for.body.i74:                                     ; preds = %for.cond.i68
  %131 = load i8 (i8)*, i8 (i8)** %f.addr.i65, align 8
  %132 = load i8*, i8** %from.addr.i63, align 8
  %133 = load i32, i32* %i.i66, align 4
  %idxprom.i69 = sext i32 %133 to i64
  %arrayidx.i70 = getelementptr inbounds i8, i8* %132, i64 %idxprom.i69
  %134 = load i8, i8* %arrayidx.i70, align 1
  %call.i71 = call zeroext i8 %131(i8 zeroext %134) #3
  %135 = load i8*, i8** %to.addr.i64, align 8
  %136 = load i32, i32* %i.i66, align 4
  %idxprom1.i72 = sext i32 %136 to i64
  %arrayidx2.i73 = getelementptr inbounds i8, i8* %135, i64 %idxprom1.i72
  store i8 %call.i71, i8* %arrayidx2.i73, align 1
  %137 = load i32, i32* %i.i66, align 4
  %inc.i75 = add nsw i32 %137, 1
  store i32 %inc.i75, i32* %i.i66, align 4
  br label %for.cond.i68

transform.exit77:                                 ; preds = %for.cond.i68
  %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  store i8* %arraydecay9, i8** %x.addr.i88, align 8
  %call.i92 = call zeroext i8 (...) @rand() #3
  store i8 %call.i92, i8* %X.i89, align 1
  %138 = load i8, i8* %X.i89, align 1
  %conv.i93 = zext i8 %138 to i32
  %139 = load i8*, i8** %x.addr.i88, align 8
  store i8* %139, i8** %a.addr.i.i87, align 8
  %140 = load i8*, i8** %a.addr.i.i87, align 8
  store i8* %140, i8** %a.addr.i.i.i83, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i84, align 8
  store i32 0, i32* %i.i.i.i86, align 4
  br label %for.cond.i.i.i95

for.cond.i.i.i95:                                 ; preds = %for.body.i.i.i104, %transform.exit77
  %141 = load i32, i32* %i.i.i.i86, align 4
  %cmp.i.i.i94 = icmp sle i32 %141, 1
  br i1 %cmp.i.i.i94, label %for.body.i.i.i104, label %xors.exit.i107

for.body.i.i.i104:                                ; preds = %for.cond.i.i.i95
  %142 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i84, align 8
  %143 = load i8*, i8** %a.addr.i.i.i83, align 8
  %144 = load i32, i32* %i.i.i.i86, align 4
  %idxprom.i.i.i96 = sext i32 %144 to i64
  %arrayidx.i.i.i97 = getelementptr inbounds i8, i8* %143, i64 %idxprom.i.i.i96
  %145 = load i8, i8* %arrayidx.i.i.i97, align 1
  %call.i.i.i98 = call zeroext i8 %142(i8 zeroext %145) #3
  %conv.i.i.i99 = zext i8 %call.i.i.i98 to i32
  %146 = load i8, i8* %result.i.i.i85, align 1
  %conv1.i.i.i100 = zext i8 %146 to i32
  %xor.i.i.i101 = xor i32 %conv1.i.i.i100, %conv.i.i.i99
  %conv2.i.i.i102 = trunc i32 %xor.i.i.i101 to i8
  store i8 %conv2.i.i.i102, i8* %result.i.i.i85, align 1
  %147 = load i32, i32* %i.i.i.i86, align 4
  %inc.i.i.i103 = add nsw i32 %147, 1
  store i32 %inc.i.i.i103, i32* %i.i.i.i86, align 4
  br label %for.cond.i.i.i95

xors.exit.i107:                                   ; preds = %for.cond.i.i.i95
  %148 = load i8, i8* %result.i.i.i85, align 1
  %conv2.i105 = zext i8 %148 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  store i8 1, i8* %i.i90, align 1
  br label %for.cond.i110

for.cond.i110:                                    ; preds = %for.body.i122, %xors.exit.i107
  %149 = load i8, i8* %i.i90, align 1
  %conv4.i108 = zext i8 %149 to i32
  %cmp5.i109 = icmp sle i32 %conv4.i108, 1
  br i1 %cmp5.i109, label %for.body.i122, label %for.end.i125

for.body.i122:                                    ; preds = %for.cond.i110
  %call7.i111 = call zeroext i8 (...) @rand() #3
  store i8 %call7.i111, i8* %tmp.i91, align 1
  %150 = load i8, i8* %tmp.i91, align 1
  %conv8.i112 = zext i8 %150 to i32
  %151 = load i8*, i8** %x.addr.i88, align 8
  %152 = load i8, i8* %151, align 1
  %conv9.i113 = zext i8 %152 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %151, align 1
  %153 = load i8, i8* %tmp.i91, align 1
  %conv11.i116 = zext i8 %153 to i32
  %154 = load i8*, i8** %x.addr.i88, align 8
  %155 = load i8, i8* %i.i90, align 1
  %idxprom.i117 = zext i8 %155 to i64
  %arrayidx12.i118 = getelementptr inbounds i8, i8* %154, i64 %idxprom.i117
  %156 = load i8, i8* %arrayidx12.i118, align 1
  %conv13.i119 = zext i8 %156 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %arrayidx12.i118, align 1
  %157 = load i8, i8* %i.i90, align 1
  %inc.i123 = add i8 %157, 1
  store i8 %inc.i123, i8* %i.i90, align 1
  br label %for.cond.i110

for.end.i125:                                     ; preds = %for.cond.i110
  %158 = load i8, i8* %X.i89, align 1
  %conv16.i124 = zext i8 %158 to i32
  %159 = load i8*, i8** %x.addr.i88, align 8
  store i8* %159, i8** %a.addr.i25.i82, align 8
  %160 = load i8*, i8** %a.addr.i25.i82, align 8
  store i8* %160, i8** %a.addr.i.i21.i78, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i79, align 8
  store i32 0, i32* %i.i.i24.i81, align 4
  br label %for.cond.i.i27.i127

for.cond.i.i27.i127:                              ; preds = %for.body.i.i36.i136, %for.end.i125
  %161 = load i32, i32* %i.i.i24.i81, align 4
  %cmp.i.i26.i126 = icmp sle i32 %161, 1
  br i1 %cmp.i.i26.i126, label %for.body.i.i36.i136, label %refresh_masks.exit139

for.body.i.i36.i136:                              ; preds = %for.cond.i.i27.i127
  %162 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i79, align 8
  %163 = load i8*, i8** %a.addr.i.i21.i78, align 8
  %164 = load i32, i32* %i.i.i24.i81, align 4
  %idxprom.i.i28.i128 = sext i32 %164 to i64
  %arrayidx.i.i29.i129 = getelementptr inbounds i8, i8* %163, i64 %idxprom.i.i28.i128
  %165 = load i8, i8* %arrayidx.i.i29.i129, align 1
  %call.i.i30.i130 = call zeroext i8 %162(i8 zeroext %165) #3
  %conv.i.i31.i131 = zext i8 %call.i.i30.i130 to i32
  %166 = load i8, i8* %result.i.i23.i80, align 1
  %conv1.i.i32.i132 = zext i8 %166 to i32
  %xor.i.i33.i133 = xor i32 %conv1.i.i32.i132, %conv.i.i31.i131
  %conv2.i.i34.i134 = trunc i32 %xor.i.i33.i133 to i8
  store i8 %conv2.i.i34.i134, i8* %result.i.i23.i80, align 1
  %167 = load i32, i32* %i.i.i24.i81, align 4
  %inc.i.i35.i135 = add nsw i32 %167, 1
  store i32 %inc.i.i35.i135, i32* %i.i.i24.i81, align 4
  br label %for.cond.i.i27.i127

refresh_masks.exit139:                            ; preds = %for.cond.i.i27.i127
  %168 = load i8, i8* %result.i.i23.i80, align 1
  %conv18.i137 = zext i8 %168 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  store i8* %arraydecay10, i8** %a.addr.i155, align 8
  store i8* %arraydecay11, i8** %b.addr.i156, align 8
  store i8* %arraydecay12, i8** %c.addr.i157, align 8
  %call.i165 = call zeroext i8 (...) @rand() #3
  store i8 %call.i165, i8* %A.i158, align 1
  %call1.i166 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i166, i8* %B.i159, align 1
  %169 = load i8, i8* %A.i158, align 1
  %conv.i167 = zext i8 %169 to i32
  %170 = load i8*, i8** %a.addr.i155, align 8
  store i8* %170, i8** %a.addr.i.i154, align 8
  %171 = load i8*, i8** %a.addr.i.i154, align 8
  store i8* %171, i8** %a.addr.i.i.i150, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i151, align 8
  store i32 0, i32* %i.i.i.i153, align 4
  br label %for.cond.i.i.i169

for.cond.i.i.i169:                                ; preds = %for.body.i.i.i178, %refresh_masks.exit139
  %172 = load i32, i32* %i.i.i.i153, align 4
  %cmp.i.i.i168 = icmp sle i32 %172, 1
  br i1 %cmp.i.i.i168, label %for.body.i.i.i178, label %xors.exit.i182

for.body.i.i.i178:                                ; preds = %for.cond.i.i.i169
  %173 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i151, align 8
  %174 = load i8*, i8** %a.addr.i.i.i150, align 8
  %175 = load i32, i32* %i.i.i.i153, align 4
  %idxprom.i.i.i170 = sext i32 %175 to i64
  %arrayidx.i.i.i171 = getelementptr inbounds i8, i8* %174, i64 %idxprom.i.i.i170
  %176 = load i8, i8* %arrayidx.i.i.i171, align 1
  %call.i.i.i172 = call zeroext i8 %173(i8 zeroext %176) #3
  %conv.i.i.i173 = zext i8 %call.i.i.i172 to i32
  %177 = load i8, i8* %result.i.i.i152, align 1
  %conv1.i.i.i174 = zext i8 %177 to i32
  %xor.i.i.i175 = xor i32 %conv1.i.i.i174, %conv.i.i.i173
  %conv2.i.i.i176 = trunc i32 %xor.i.i.i175 to i8
  store i8 %conv2.i.i.i176, i8* %result.i.i.i152, align 1
  %178 = load i32, i32* %i.i.i.i153, align 4
  %inc.i.i.i177 = add nsw i32 %178, 1
  store i32 %inc.i.i.i177, i32* %i.i.i.i153, align 4
  br label %for.cond.i.i.i169

xors.exit.i182:                                   ; preds = %for.cond.i.i.i169
  %179 = load i8, i8* %result.i.i.i152, align 1
  %conv3.i179 = zext i8 %179 to i32
  %cmp.i180 = icmp eq i32 %conv.i167, %conv3.i179
  call void @assume(i1 zeroext %cmp.i180) #3
  %180 = load i8, i8* %B.i159, align 1
  %conv5.i181 = zext i8 %180 to i32
  %181 = load i8*, i8** %b.addr.i156, align 8
  store i8* %181, i8** %a.addr.i90.i149, align 8
  %182 = load i8*, i8** %a.addr.i90.i149, align 8
  store i8* %182, i8** %a.addr.i.i86.i145, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i146, align 8
  store i32 0, i32* %i.i.i89.i148, align 4
  br label %for.cond.i.i92.i184

for.cond.i.i92.i184:                              ; preds = %for.body.i.i101.i193, %xors.exit.i182
  %183 = load i32, i32* %i.i.i89.i148, align 4
  %cmp.i.i91.i183 = icmp sle i32 %183, 1
  br i1 %cmp.i.i91.i183, label %for.body.i.i101.i193, label %xors.exit102.i196

for.body.i.i101.i193:                             ; preds = %for.cond.i.i92.i184
  %184 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i146, align 8
  %185 = load i8*, i8** %a.addr.i.i86.i145, align 8
  %186 = load i32, i32* %i.i.i89.i148, align 4
  %idxprom.i.i93.i185 = sext i32 %186 to i64
  %arrayidx.i.i94.i186 = getelementptr inbounds i8, i8* %185, i64 %idxprom.i.i93.i185
  %187 = load i8, i8* %arrayidx.i.i94.i186, align 1
  %call.i.i95.i187 = call zeroext i8 %184(i8 zeroext %187) #3
  %conv.i.i96.i188 = zext i8 %call.i.i95.i187 to i32
  %188 = load i8, i8* %result.i.i88.i147, align 1
  %conv1.i.i97.i189 = zext i8 %188 to i32
  %xor.i.i98.i190 = xor i32 %conv1.i.i97.i189, %conv.i.i96.i188
  %conv2.i.i99.i191 = trunc i32 %xor.i.i98.i190 to i8
  store i8 %conv2.i.i99.i191, i8* %result.i.i88.i147, align 1
  %189 = load i32, i32* %i.i.i89.i148, align 4
  %inc.i.i100.i192 = add nsw i32 %189, 1
  store i32 %inc.i.i100.i192, i32* %i.i.i89.i148, align 4
  br label %for.cond.i.i92.i184

xors.exit102.i196:                                ; preds = %for.cond.i.i92.i184
  %190 = load i8, i8* %result.i.i88.i147, align 1
  %conv7.i194 = zext i8 %190 to i32
  %cmp8.i195 = icmp eq i32 %conv5.i181, %conv7.i194
  call void @assume(i1 zeroext %cmp8.i195) #3
  store i32 0, i32* %i.i161, align 4
  br label %for.cond.i198

for.cond.i198:                                    ; preds = %for.end.i234, %xors.exit102.i196
  %191 = load i32, i32* %i.i161, align 4
  %cmp10.i197 = icmp sle i32 %191, 1
  br i1 %cmp10.i197, label %for.body.i200, label %for.end44.i236

for.body.i200:                                    ; preds = %for.cond.i198
  %192 = load i32, i32* %i.i161, align 4
  %add.i199 = add nsw i32 %192, 1
  store i32 %add.i199, i32* %j.i162, align 4
  br label %for.cond12.i202

for.cond12.i202:                                  ; preds = %for.body15.i232, %for.body.i200
  %193 = load i32, i32* %j.i162, align 4
  %cmp13.i201 = icmp sle i32 %193, 1
  br i1 %cmp13.i201, label %for.body15.i232, label %for.end.i234

for.body15.i232:                                  ; preds = %for.cond12.i202
  %call16.i203 = call zeroext i8 (...) @rand() #3
  %194 = load i32, i32* %i.i161, align 4
  %idxprom.i204 = sext i32 %194 to i64
  %arrayidx.i205 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom.i204
  %195 = load i32, i32* %j.i162, align 4
  %idxprom17.i206 = sext i32 %195 to i64
  %arrayidx18.i207 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i205, i64 0, i64 %idxprom17.i206
  store i8 %call16.i203, i8* %arrayidx18.i207, align 1
  %196 = load i32, i32* %i.i161, align 4
  %idxprom19.i208 = sext i32 %196 to i64
  %arrayidx20.i209 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom19.i208
  %197 = load i32, i32* %j.i162, align 4
  %idxprom21.i210 = sext i32 %197 to i64
  %arrayidx22.i211 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i209, i64 0, i64 %idxprom21.i210
  %198 = load i8, i8* %arrayidx22.i211, align 1
  %conv23.i212 = zext i8 %198 to i32
  %199 = load i8*, i8** %a.addr.i155, align 8
  %200 = load i32, i32* %i.i161, align 4
  %idxprom24.i213 = sext i32 %200 to i64
  %arrayidx25.i214 = getelementptr inbounds i8, i8* %199, i64 %idxprom24.i213
  %201 = load i8, i8* %arrayidx25.i214, align 1
  %202 = load i8*, i8** %b.addr.i156, align 8
  %203 = load i32, i32* %j.i162, align 4
  %idxprom26.i215 = sext i32 %203 to i64
  %arrayidx27.i216 = getelementptr inbounds i8, i8* %202, i64 %idxprom26.i215
  %204 = load i8, i8* %arrayidx27.i216, align 1
  %call28.i217 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %204) #3
  %conv29.i218 = zext i8 %call28.i217 to i32
  %xor.i219 = xor i32 %conv23.i212, %conv29.i218
  %205 = load i8*, i8** %a.addr.i155, align 8
  %206 = load i32, i32* %j.i162, align 4
  %idxprom30.i220 = sext i32 %206 to i64
  %arrayidx31.i221 = getelementptr inbounds i8, i8* %205, i64 %idxprom30.i220
  %207 = load i8, i8* %arrayidx31.i221, align 1
  %208 = load i8*, i8** %b.addr.i156, align 8
  %209 = load i32, i32* %i.i161, align 4
  %idxprom32.i222 = sext i32 %209 to i64
  %arrayidx33.i223 = getelementptr inbounds i8, i8* %208, i64 %idxprom32.i222
  %210 = load i8, i8* %arrayidx33.i223, align 1
  %call34.i224 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %210) #3
  %conv35.i225 = zext i8 %call34.i224 to i32
  %xor36.i226 = xor i32 %xor.i219, %conv35.i225
  %conv37.i227 = trunc i32 %xor36.i226 to i8
  %211 = load i32, i32* %j.i162, align 4
  %idxprom38.i228 = sext i32 %211 to i64
  %arrayidx39.i229 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom38.i228
  %212 = load i32, i32* %i.i161, align 4
  %idxprom40.i230 = sext i32 %212 to i64
  %arrayidx41.i231 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i229, i64 0, i64 %idxprom40.i230
  store i8 %conv37.i227, i8* %arrayidx41.i231, align 1
  %213 = load i32, i32* %j.i162, align 4
  %inc.i233 = add nsw i32 %213, 1
  store i32 %inc.i233, i32* %j.i162, align 4
  br label %for.cond12.i202

for.end.i234:                                     ; preds = %for.cond12.i202
  %214 = load i32, i32* %i.i161, align 4
  %inc43.i235 = add nsw i32 %214, 1
  store i32 %inc43.i235, i32* %i.i161, align 4
  br label %for.cond.i198

for.end44.i236:                                   ; preds = %for.cond.i198
  store i32 0, i32* %i45.i163, align 4
  br label %for.cond46.i238

for.cond46.i238:                                  ; preds = %for.end76.i264, %for.end44.i236
  %215 = load i32, i32* %i45.i163, align 4
  %cmp47.i237 = icmp sle i32 %215, 1
  br i1 %cmp47.i237, label %for.body49.i246, label %for.end79.i268

for.body49.i246:                                  ; preds = %for.cond46.i238
  %216 = load i8*, i8** %a.addr.i155, align 8
  %217 = load i32, i32* %i45.i163, align 4
  %idxprom50.i239 = sext i32 %217 to i64
  %arrayidx51.i240 = getelementptr inbounds i8, i8* %216, i64 %idxprom50.i239
  %218 = load i8, i8* %arrayidx51.i240, align 1
  %219 = load i8*, i8** %b.addr.i156, align 8
  %220 = load i32, i32* %i45.i163, align 4
  %idxprom52.i241 = sext i32 %220 to i64
  %arrayidx53.i242 = getelementptr inbounds i8, i8* %219, i64 %idxprom52.i241
  %221 = load i8, i8* %arrayidx53.i242, align 1
  %call54.i243 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %221) #3
  %222 = load i8*, i8** %c.addr.i157, align 8
  %223 = load i32, i32* %i45.i163, align 4
  %idxprom55.i244 = sext i32 %223 to i64
  %arrayidx56.i245 = getelementptr inbounds i8, i8* %222, i64 %idxprom55.i244
  store i8 %call54.i243, i8* %arrayidx56.i245, align 1
  store i32 0, i32* %j57.i164, align 4
  br label %for.cond58.i248

for.cond58.i248:                                  ; preds = %if.end.i262, %for.body49.i246
  %224 = load i32, i32* %j57.i164, align 4
  %cmp59.i247 = icmp sle i32 %224, 1
  br i1 %cmp59.i247, label %for.body61.i250, label %for.end76.i264

for.body61.i250:                                  ; preds = %for.cond58.i248
  %225 = load i32, i32* %j57.i164, align 4
  %226 = load i32, i32* %i45.i163, align 4
  %cmp62.i249 = icmp ne i32 %225, %226
  br i1 %cmp62.i249, label %if.then.i261, label %if.end.i262

if.then.i261:                                     ; preds = %for.body61.i250
  %227 = load i32, i32* %i45.i163, align 4
  %idxprom64.i251 = sext i32 %227 to i64
  %arrayidx65.i252 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom64.i251
  %228 = load i32, i32* %j57.i164, align 4
  %idxprom66.i253 = sext i32 %228 to i64
  %arrayidx67.i254 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i252, i64 0, i64 %idxprom66.i253
  %229 = load i8, i8* %arrayidx67.i254, align 1
  %conv68.i255 = zext i8 %229 to i32
  %230 = load i8*, i8** %c.addr.i157, align 8
  %231 = load i32, i32* %i45.i163, align 4
  %idxprom69.i256 = sext i32 %231 to i64
  %arrayidx70.i257 = getelementptr inbounds i8, i8* %230, i64 %idxprom69.i256
  %232 = load i8, i8* %arrayidx70.i257, align 1
  %conv71.i258 = zext i8 %232 to i32
  %xor72.i259 = xor i32 %conv71.i258, %conv68.i255
  %conv73.i260 = trunc i32 %xor72.i259 to i8
  store i8 %conv73.i260, i8* %arrayidx70.i257, align 1
  br label %if.end.i262

if.end.i262:                                      ; preds = %if.then.i261, %for.body61.i250
  %233 = load i32, i32* %j57.i164, align 4
  %inc75.i263 = add nsw i32 %233, 1
  store i32 %inc75.i263, i32* %j57.i164, align 4
  br label %for.cond58.i248

for.end76.i264:                                   ; preds = %for.cond58.i248
  %234 = load i32, i32* %i45.i163, align 4
  %inc78.i265 = add nsw i32 %234, 1
  store i32 %inc78.i265, i32* %i45.i163, align 4
  br label %for.cond46.i238

for.end79.i268:                                   ; preds = %for.cond46.i238
  %235 = load i8, i8* %A.i158, align 1
  %236 = load i8, i8* %B.i159, align 1
  %call80.i266 = call zeroext i8 @mult(i8 zeroext %235, i8 zeroext %236) #3
  %conv81.i267 = zext i8 %call80.i266 to i32
  %237 = load i8*, i8** %c.addr.i157, align 8
  store i8* %237, i8** %a.addr.i107.i144, align 8
  %238 = load i8*, i8** %a.addr.i107.i144, align 8
  store i8* %238, i8** %a.addr.i.i103.i140, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i141, align 8
  store i32 0, i32* %i.i.i106.i143, align 4
  br label %for.cond.i.i109.i270

for.cond.i.i109.i270:                             ; preds = %for.body.i.i118.i279, %for.end79.i268
  %239 = load i32, i32* %i.i.i106.i143, align 4
  %cmp.i.i108.i269 = icmp sle i32 %239, 1
  br i1 %cmp.i.i108.i269, label %for.body.i.i118.i279, label %sec_mult.exit282

for.body.i.i118.i279:                             ; preds = %for.cond.i.i109.i270
  %240 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i141, align 8
  %241 = load i8*, i8** %a.addr.i.i103.i140, align 8
  %242 = load i32, i32* %i.i.i106.i143, align 4
  %idxprom.i.i110.i271 = sext i32 %242 to i64
  %arrayidx.i.i111.i272 = getelementptr inbounds i8, i8* %241, i64 %idxprom.i.i110.i271
  %243 = load i8, i8* %arrayidx.i.i111.i272, align 1
  %call.i.i112.i273 = call zeroext i8 %240(i8 zeroext %243) #3
  %conv.i.i113.i274 = zext i8 %call.i.i112.i273 to i32
  %244 = load i8, i8* %result.i.i105.i142, align 1
  %conv1.i.i114.i275 = zext i8 %244 to i32
  %xor.i.i115.i276 = xor i32 %conv1.i.i114.i275, %conv.i.i113.i274
  %conv2.i.i116.i277 = trunc i32 %xor.i.i115.i276 to i8
  store i8 %conv2.i.i116.i277, i8* %result.i.i105.i142, align 1
  %245 = load i32, i32* %i.i.i106.i143, align 4
  %inc.i.i117.i278 = add nsw i32 %245, 1
  store i32 %inc.i.i117.i278, i32* %i.i.i106.i143, align 4
  br label %for.cond.i.i109.i270

sec_mult.exit282:                                 ; preds = %for.cond.i.i109.i270
  %246 = load i8, i8* %result.i.i105.i142, align 1
  %conv83.i280 = zext i8 %246 to i32
  %cmp84.i281 = icmp eq i32 %conv81.i267, %conv83.i280
  call void @assert(i1 zeroext %cmp84.i281) #3
  %arraydecay13 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  store i8* %arraydecay13, i8** %from.addr.i283, align 8
  store i8* %arraydecay14, i8** %to.addr.i284, align 8
  store i8 (i8)* @exp16, i8 (i8)** %f.addr.i285, align 8
  store i32 0, i32* %i.i286, align 4
  br label %for.cond.i288

for.cond.i288:                                    ; preds = %for.body.i294, %sec_mult.exit282
  %247 = load i32, i32* %i.i286, align 4
  %cmp.i287 = icmp sle i32 %247, 1
  br i1 %cmp.i287, label %for.body.i294, label %transform.exit297

for.body.i294:                                    ; preds = %for.cond.i288
  %248 = load i8 (i8)*, i8 (i8)** %f.addr.i285, align 8
  %249 = load i8*, i8** %from.addr.i283, align 8
  %250 = load i32, i32* %i.i286, align 4
  %idxprom.i289 = sext i32 %250 to i64
  %arrayidx.i290 = getelementptr inbounds i8, i8* %249, i64 %idxprom.i289
  %251 = load i8, i8* %arrayidx.i290, align 1
  %call.i291 = call zeroext i8 %248(i8 zeroext %251) #3
  %252 = load i8*, i8** %to.addr.i284, align 8
  %253 = load i32, i32* %i.i286, align 4
  %idxprom1.i292 = sext i32 %253 to i64
  %arrayidx2.i293 = getelementptr inbounds i8, i8* %252, i64 %idxprom1.i292
  store i8 %call.i291, i8* %arrayidx2.i293, align 1
  %254 = load i32, i32* %i.i286, align 4
  %inc.i295 = add nsw i32 %254, 1
  store i32 %inc.i295, i32* %i.i286, align 4
  br label %for.cond.i288

transform.exit297:                                ; preds = %for.cond.i288
  %arraydecay15 = getelementptr inbounds [2 x i8], [2 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [2 x i8], [2 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  store i8* %arraydecay15, i8** %a.addr.i313, align 8
  store i8* %arraydecay16, i8** %b.addr.i314, align 8
  store i8* %arraydecay17, i8** %c.addr.i315, align 8
  %call.i323 = call zeroext i8 (...) @rand() #3
  store i8 %call.i323, i8* %A.i316, align 1
  %call1.i324 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i324, i8* %B.i317, align 1
  %255 = load i8, i8* %A.i316, align 1
  %conv.i325 = zext i8 %255 to i32
  %256 = load i8*, i8** %a.addr.i313, align 8
  store i8* %256, i8** %a.addr.i.i312, align 8
  %257 = load i8*, i8** %a.addr.i.i312, align 8
  store i8* %257, i8** %a.addr.i.i.i308, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i309, align 8
  store i32 0, i32* %i.i.i.i311, align 4
  br label %for.cond.i.i.i327

for.cond.i.i.i327:                                ; preds = %for.body.i.i.i336, %transform.exit297
  %258 = load i32, i32* %i.i.i.i311, align 4
  %cmp.i.i.i326 = icmp sle i32 %258, 1
  br i1 %cmp.i.i.i326, label %for.body.i.i.i336, label %xors.exit.i340

for.body.i.i.i336:                                ; preds = %for.cond.i.i.i327
  %259 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i309, align 8
  %260 = load i8*, i8** %a.addr.i.i.i308, align 8
  %261 = load i32, i32* %i.i.i.i311, align 4
  %idxprom.i.i.i328 = sext i32 %261 to i64
  %arrayidx.i.i.i329 = getelementptr inbounds i8, i8* %260, i64 %idxprom.i.i.i328
  %262 = load i8, i8* %arrayidx.i.i.i329, align 1
  %call.i.i.i330 = call zeroext i8 %259(i8 zeroext %262) #3
  %conv.i.i.i331 = zext i8 %call.i.i.i330 to i32
  %263 = load i8, i8* %result.i.i.i310, align 1
  %conv1.i.i.i332 = zext i8 %263 to i32
  %xor.i.i.i333 = xor i32 %conv1.i.i.i332, %conv.i.i.i331
  %conv2.i.i.i334 = trunc i32 %xor.i.i.i333 to i8
  store i8 %conv2.i.i.i334, i8* %result.i.i.i310, align 1
  %264 = load i32, i32* %i.i.i.i311, align 4
  %inc.i.i.i335 = add nsw i32 %264, 1
  store i32 %inc.i.i.i335, i32* %i.i.i.i311, align 4
  br label %for.cond.i.i.i327

xors.exit.i340:                                   ; preds = %for.cond.i.i.i327
  %265 = load i8, i8* %result.i.i.i310, align 1
  %conv3.i337 = zext i8 %265 to i32
  %cmp.i338 = icmp eq i32 %conv.i325, %conv3.i337
  call void @assume(i1 zeroext %cmp.i338) #3
  %266 = load i8, i8* %B.i317, align 1
  %conv5.i339 = zext i8 %266 to i32
  %267 = load i8*, i8** %b.addr.i314, align 8
  store i8* %267, i8** %a.addr.i90.i307, align 8
  %268 = load i8*, i8** %a.addr.i90.i307, align 8
  store i8* %268, i8** %a.addr.i.i86.i303, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i304, align 8
  store i32 0, i32* %i.i.i89.i306, align 4
  br label %for.cond.i.i92.i342

for.cond.i.i92.i342:                              ; preds = %for.body.i.i101.i351, %xors.exit.i340
  %269 = load i32, i32* %i.i.i89.i306, align 4
  %cmp.i.i91.i341 = icmp sle i32 %269, 1
  br i1 %cmp.i.i91.i341, label %for.body.i.i101.i351, label %xors.exit102.i354

for.body.i.i101.i351:                             ; preds = %for.cond.i.i92.i342
  %270 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i304, align 8
  %271 = load i8*, i8** %a.addr.i.i86.i303, align 8
  %272 = load i32, i32* %i.i.i89.i306, align 4
  %idxprom.i.i93.i343 = sext i32 %272 to i64
  %arrayidx.i.i94.i344 = getelementptr inbounds i8, i8* %271, i64 %idxprom.i.i93.i343
  %273 = load i8, i8* %arrayidx.i.i94.i344, align 1
  %call.i.i95.i345 = call zeroext i8 %270(i8 zeroext %273) #3
  %conv.i.i96.i346 = zext i8 %call.i.i95.i345 to i32
  %274 = load i8, i8* %result.i.i88.i305, align 1
  %conv1.i.i97.i347 = zext i8 %274 to i32
  %xor.i.i98.i348 = xor i32 %conv1.i.i97.i347, %conv.i.i96.i346
  %conv2.i.i99.i349 = trunc i32 %xor.i.i98.i348 to i8
  store i8 %conv2.i.i99.i349, i8* %result.i.i88.i305, align 1
  %275 = load i32, i32* %i.i.i89.i306, align 4
  %inc.i.i100.i350 = add nsw i32 %275, 1
  store i32 %inc.i.i100.i350, i32* %i.i.i89.i306, align 4
  br label %for.cond.i.i92.i342

xors.exit102.i354:                                ; preds = %for.cond.i.i92.i342
  %276 = load i8, i8* %result.i.i88.i305, align 1
  %conv7.i352 = zext i8 %276 to i32
  %cmp8.i353 = icmp eq i32 %conv5.i339, %conv7.i352
  call void @assume(i1 zeroext %cmp8.i353) #3
  store i32 0, i32* %i.i319, align 4
  br label %for.cond.i356

for.cond.i356:                                    ; preds = %for.end.i392, %xors.exit102.i354
  %277 = load i32, i32* %i.i319, align 4
  %cmp10.i355 = icmp sle i32 %277, 1
  br i1 %cmp10.i355, label %for.body.i358, label %for.end44.i394

for.body.i358:                                    ; preds = %for.cond.i356
  %278 = load i32, i32* %i.i319, align 4
  %add.i357 = add nsw i32 %278, 1
  store i32 %add.i357, i32* %j.i320, align 4
  br label %for.cond12.i360

for.cond12.i360:                                  ; preds = %for.body15.i390, %for.body.i358
  %279 = load i32, i32* %j.i320, align 4
  %cmp13.i359 = icmp sle i32 %279, 1
  br i1 %cmp13.i359, label %for.body15.i390, label %for.end.i392

for.body15.i390:                                  ; preds = %for.cond12.i360
  %call16.i361 = call zeroext i8 (...) @rand() #3
  %280 = load i32, i32* %i.i319, align 4
  %idxprom.i362 = sext i32 %280 to i64
  %arrayidx.i363 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom.i362
  %281 = load i32, i32* %j.i320, align 4
  %idxprom17.i364 = sext i32 %281 to i64
  %arrayidx18.i365 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i363, i64 0, i64 %idxprom17.i364
  store i8 %call16.i361, i8* %arrayidx18.i365, align 1
  %282 = load i32, i32* %i.i319, align 4
  %idxprom19.i366 = sext i32 %282 to i64
  %arrayidx20.i367 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom19.i366
  %283 = load i32, i32* %j.i320, align 4
  %idxprom21.i368 = sext i32 %283 to i64
  %arrayidx22.i369 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i367, i64 0, i64 %idxprom21.i368
  %284 = load i8, i8* %arrayidx22.i369, align 1
  %conv23.i370 = zext i8 %284 to i32
  %285 = load i8*, i8** %a.addr.i313, align 8
  %286 = load i32, i32* %i.i319, align 4
  %idxprom24.i371 = sext i32 %286 to i64
  %arrayidx25.i372 = getelementptr inbounds i8, i8* %285, i64 %idxprom24.i371
  %287 = load i8, i8* %arrayidx25.i372, align 1
  %288 = load i8*, i8** %b.addr.i314, align 8
  %289 = load i32, i32* %j.i320, align 4
  %idxprom26.i373 = sext i32 %289 to i64
  %arrayidx27.i374 = getelementptr inbounds i8, i8* %288, i64 %idxprom26.i373
  %290 = load i8, i8* %arrayidx27.i374, align 1
  %call28.i375 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %290) #3
  %conv29.i376 = zext i8 %call28.i375 to i32
  %xor.i377 = xor i32 %conv23.i370, %conv29.i376
  %291 = load i8*, i8** %a.addr.i313, align 8
  %292 = load i32, i32* %j.i320, align 4
  %idxprom30.i378 = sext i32 %292 to i64
  %arrayidx31.i379 = getelementptr inbounds i8, i8* %291, i64 %idxprom30.i378
  %293 = load i8, i8* %arrayidx31.i379, align 1
  %294 = load i8*, i8** %b.addr.i314, align 8
  %295 = load i32, i32* %i.i319, align 4
  %idxprom32.i380 = sext i32 %295 to i64
  %arrayidx33.i381 = getelementptr inbounds i8, i8* %294, i64 %idxprom32.i380
  %296 = load i8, i8* %arrayidx33.i381, align 1
  %call34.i382 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %296) #3
  %conv35.i383 = zext i8 %call34.i382 to i32
  %xor36.i384 = xor i32 %xor.i377, %conv35.i383
  %conv37.i385 = trunc i32 %xor36.i384 to i8
  %297 = load i32, i32* %j.i320, align 4
  %idxprom38.i386 = sext i32 %297 to i64
  %arrayidx39.i387 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom38.i386
  %298 = load i32, i32* %i.i319, align 4
  %idxprom40.i388 = sext i32 %298 to i64
  %arrayidx41.i389 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i387, i64 0, i64 %idxprom40.i388
  store i8 %conv37.i385, i8* %arrayidx41.i389, align 1
  %299 = load i32, i32* %j.i320, align 4
  %inc.i391 = add nsw i32 %299, 1
  store i32 %inc.i391, i32* %j.i320, align 4
  br label %for.cond12.i360

for.end.i392:                                     ; preds = %for.cond12.i360
  %300 = load i32, i32* %i.i319, align 4
  %inc43.i393 = add nsw i32 %300, 1
  store i32 %inc43.i393, i32* %i.i319, align 4
  br label %for.cond.i356

for.end44.i394:                                   ; preds = %for.cond.i356
  store i32 0, i32* %i45.i321, align 4
  br label %for.cond46.i396

for.cond46.i396:                                  ; preds = %for.end76.i422, %for.end44.i394
  %301 = load i32, i32* %i45.i321, align 4
  %cmp47.i395 = icmp sle i32 %301, 1
  br i1 %cmp47.i395, label %for.body49.i404, label %for.end79.i426

for.body49.i404:                                  ; preds = %for.cond46.i396
  %302 = load i8*, i8** %a.addr.i313, align 8
  %303 = load i32, i32* %i45.i321, align 4
  %idxprom50.i397 = sext i32 %303 to i64
  %arrayidx51.i398 = getelementptr inbounds i8, i8* %302, i64 %idxprom50.i397
  %304 = load i8, i8* %arrayidx51.i398, align 1
  %305 = load i8*, i8** %b.addr.i314, align 8
  %306 = load i32, i32* %i45.i321, align 4
  %idxprom52.i399 = sext i32 %306 to i64
  %arrayidx53.i400 = getelementptr inbounds i8, i8* %305, i64 %idxprom52.i399
  %307 = load i8, i8* %arrayidx53.i400, align 1
  %call54.i401 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %307) #3
  %308 = load i8*, i8** %c.addr.i315, align 8
  %309 = load i32, i32* %i45.i321, align 4
  %idxprom55.i402 = sext i32 %309 to i64
  %arrayidx56.i403 = getelementptr inbounds i8, i8* %308, i64 %idxprom55.i402
  store i8 %call54.i401, i8* %arrayidx56.i403, align 1
  store i32 0, i32* %j57.i322, align 4
  br label %for.cond58.i406

for.cond58.i406:                                  ; preds = %if.end.i420, %for.body49.i404
  %310 = load i32, i32* %j57.i322, align 4
  %cmp59.i405 = icmp sle i32 %310, 1
  br i1 %cmp59.i405, label %for.body61.i408, label %for.end76.i422

for.body61.i408:                                  ; preds = %for.cond58.i406
  %311 = load i32, i32* %j57.i322, align 4
  %312 = load i32, i32* %i45.i321, align 4
  %cmp62.i407 = icmp ne i32 %311, %312
  br i1 %cmp62.i407, label %if.then.i419, label %if.end.i420

if.then.i419:                                     ; preds = %for.body61.i408
  %313 = load i32, i32* %i45.i321, align 4
  %idxprom64.i409 = sext i32 %313 to i64
  %arrayidx65.i410 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom64.i409
  %314 = load i32, i32* %j57.i322, align 4
  %idxprom66.i411 = sext i32 %314 to i64
  %arrayidx67.i412 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i410, i64 0, i64 %idxprom66.i411
  %315 = load i8, i8* %arrayidx67.i412, align 1
  %conv68.i413 = zext i8 %315 to i32
  %316 = load i8*, i8** %c.addr.i315, align 8
  %317 = load i32, i32* %i45.i321, align 4
  %idxprom69.i414 = sext i32 %317 to i64
  %arrayidx70.i415 = getelementptr inbounds i8, i8* %316, i64 %idxprom69.i414
  %318 = load i8, i8* %arrayidx70.i415, align 1
  %conv71.i416 = zext i8 %318 to i32
  %xor72.i417 = xor i32 %conv71.i416, %conv68.i413
  %conv73.i418 = trunc i32 %xor72.i417 to i8
  store i8 %conv73.i418, i8* %arrayidx70.i415, align 1
  br label %if.end.i420

if.end.i420:                                      ; preds = %if.then.i419, %for.body61.i408
  %319 = load i32, i32* %j57.i322, align 4
  %inc75.i421 = add nsw i32 %319, 1
  store i32 %inc75.i421, i32* %j57.i322, align 4
  br label %for.cond58.i406

for.end76.i422:                                   ; preds = %for.cond58.i406
  %320 = load i32, i32* %i45.i321, align 4
  %inc78.i423 = add nsw i32 %320, 1
  store i32 %inc78.i423, i32* %i45.i321, align 4
  br label %for.cond46.i396

for.end79.i426:                                   ; preds = %for.cond46.i396
  %321 = load i8, i8* %A.i316, align 1
  %322 = load i8, i8* %B.i317, align 1
  %call80.i424 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322) #3
  %conv81.i425 = zext i8 %call80.i424 to i32
  %323 = load i8*, i8** %c.addr.i315, align 8
  store i8* %323, i8** %a.addr.i107.i302, align 8
  %324 = load i8*, i8** %a.addr.i107.i302, align 8
  store i8* %324, i8** %a.addr.i.i103.i298, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i299, align 8
  store i32 0, i32* %i.i.i106.i301, align 4
  br label %for.cond.i.i109.i428

for.cond.i.i109.i428:                             ; preds = %for.body.i.i118.i437, %for.end79.i426
  %325 = load i32, i32* %i.i.i106.i301, align 4
  %cmp.i.i108.i427 = icmp sle i32 %325, 1
  br i1 %cmp.i.i108.i427, label %for.body.i.i118.i437, label %sec_mult.exit440

for.body.i.i118.i437:                             ; preds = %for.cond.i.i109.i428
  %326 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i299, align 8
  %327 = load i8*, i8** %a.addr.i.i103.i298, align 8
  %328 = load i32, i32* %i.i.i106.i301, align 4
  %idxprom.i.i110.i429 = sext i32 %328 to i64
  %arrayidx.i.i111.i430 = getelementptr inbounds i8, i8* %327, i64 %idxprom.i.i110.i429
  %329 = load i8, i8* %arrayidx.i.i111.i430, align 1
  %call.i.i112.i431 = call zeroext i8 %326(i8 zeroext %329) #3
  %conv.i.i113.i432 = zext i8 %call.i.i112.i431 to i32
  %330 = load i8, i8* %result.i.i105.i300, align 1
  %conv1.i.i114.i433 = zext i8 %330 to i32
  %xor.i.i115.i434 = xor i32 %conv1.i.i114.i433, %conv.i.i113.i432
  %conv2.i.i116.i435 = trunc i32 %xor.i.i115.i434 to i8
  store i8 %conv2.i.i116.i435, i8* %result.i.i105.i300, align 1
  %331 = load i32, i32* %i.i.i106.i301, align 4
  %inc.i.i117.i436 = add nsw i32 %331, 1
  store i32 %inc.i.i117.i436, i32* %i.i.i106.i301, align 4
  br label %for.cond.i.i109.i428

sec_mult.exit440:                                 ; preds = %for.cond.i.i109.i428
  %332 = load i8, i8* %result.i.i105.i300, align 1
  %conv83.i438 = zext i8 %332 to i32
  %cmp84.i439 = icmp eq i32 %conv81.i425, %conv83.i438
  call void @assert(i1 zeroext %cmp84.i439) #3
  %arraydecay18 = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %333 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay18, i8** %a.addr.i456, align 8
  store i8* %arraydecay19, i8** %b.addr.i457, align 8
  store i8* %333, i8** %c.addr.i458, align 8
  %call.i466 = call zeroext i8 (...) @rand() #3
  store i8 %call.i466, i8* %A.i459, align 1
  %call1.i467 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i467, i8* %B.i460, align 1
  %334 = load i8, i8* %A.i459, align 1
  %conv.i468 = zext i8 %334 to i32
  %335 = load i8*, i8** %a.addr.i456, align 8
  store i8* %335, i8** %a.addr.i.i455, align 8
  %336 = load i8*, i8** %a.addr.i.i455, align 8
  store i8* %336, i8** %a.addr.i.i.i451, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i452, align 8
  store i32 0, i32* %i.i.i.i454, align 4
  br label %for.cond.i.i.i470

for.cond.i.i.i470:                                ; preds = %for.body.i.i.i479, %sec_mult.exit440
  %337 = load i32, i32* %i.i.i.i454, align 4
  %cmp.i.i.i469 = icmp sle i32 %337, 1
  br i1 %cmp.i.i.i469, label %for.body.i.i.i479, label %xors.exit.i483

for.body.i.i.i479:                                ; preds = %for.cond.i.i.i470
  %338 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i452, align 8
  %339 = load i8*, i8** %a.addr.i.i.i451, align 8
  %340 = load i32, i32* %i.i.i.i454, align 4
  %idxprom.i.i.i471 = sext i32 %340 to i64
  %arrayidx.i.i.i472 = getelementptr inbounds i8, i8* %339, i64 %idxprom.i.i.i471
  %341 = load i8, i8* %arrayidx.i.i.i472, align 1
  %call.i.i.i473 = call zeroext i8 %338(i8 zeroext %341) #3
  %conv.i.i.i474 = zext i8 %call.i.i.i473 to i32
  %342 = load i8, i8* %result.i.i.i453, align 1
  %conv1.i.i.i475 = zext i8 %342 to i32
  %xor.i.i.i476 = xor i32 %conv1.i.i.i475, %conv.i.i.i474
  %conv2.i.i.i477 = trunc i32 %xor.i.i.i476 to i8
  store i8 %conv2.i.i.i477, i8* %result.i.i.i453, align 1
  %343 = load i32, i32* %i.i.i.i454, align 4
  %inc.i.i.i478 = add nsw i32 %343, 1
  store i32 %inc.i.i.i478, i32* %i.i.i.i454, align 4
  br label %for.cond.i.i.i470

xors.exit.i483:                                   ; preds = %for.cond.i.i.i470
  %344 = load i8, i8* %result.i.i.i453, align 1
  %conv3.i480 = zext i8 %344 to i32
  %cmp.i481 = icmp eq i32 %conv.i468, %conv3.i480
  call void @assume(i1 zeroext %cmp.i481) #3
  %345 = load i8, i8* %B.i460, align 1
  %conv5.i482 = zext i8 %345 to i32
  %346 = load i8*, i8** %b.addr.i457, align 8
  store i8* %346, i8** %a.addr.i90.i450, align 8
  %347 = load i8*, i8** %a.addr.i90.i450, align 8
  store i8* %347, i8** %a.addr.i.i86.i446, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i447, align 8
  store i32 0, i32* %i.i.i89.i449, align 4
  br label %for.cond.i.i92.i485

for.cond.i.i92.i485:                              ; preds = %for.body.i.i101.i494, %xors.exit.i483
  %348 = load i32, i32* %i.i.i89.i449, align 4
  %cmp.i.i91.i484 = icmp sle i32 %348, 1
  br i1 %cmp.i.i91.i484, label %for.body.i.i101.i494, label %xors.exit102.i497

for.body.i.i101.i494:                             ; preds = %for.cond.i.i92.i485
  %349 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i447, align 8
  %350 = load i8*, i8** %a.addr.i.i86.i446, align 8
  %351 = load i32, i32* %i.i.i89.i449, align 4
  %idxprom.i.i93.i486 = sext i32 %351 to i64
  %arrayidx.i.i94.i487 = getelementptr inbounds i8, i8* %350, i64 %idxprom.i.i93.i486
  %352 = load i8, i8* %arrayidx.i.i94.i487, align 1
  %call.i.i95.i488 = call zeroext i8 %349(i8 zeroext %352) #3
  %conv.i.i96.i489 = zext i8 %call.i.i95.i488 to i32
  %353 = load i8, i8* %result.i.i88.i448, align 1
  %conv1.i.i97.i490 = zext i8 %353 to i32
  %xor.i.i98.i491 = xor i32 %conv1.i.i97.i490, %conv.i.i96.i489
  %conv2.i.i99.i492 = trunc i32 %xor.i.i98.i491 to i8
  store i8 %conv2.i.i99.i492, i8* %result.i.i88.i448, align 1
  %354 = load i32, i32* %i.i.i89.i449, align 4
  %inc.i.i100.i493 = add nsw i32 %354, 1
  store i32 %inc.i.i100.i493, i32* %i.i.i89.i449, align 4
  br label %for.cond.i.i92.i485

xors.exit102.i497:                                ; preds = %for.cond.i.i92.i485
  %355 = load i8, i8* %result.i.i88.i448, align 1
  %conv7.i495 = zext i8 %355 to i32
  %cmp8.i496 = icmp eq i32 %conv5.i482, %conv7.i495
  call void @assume(i1 zeroext %cmp8.i496) #3
  store i32 0, i32* %i.i462, align 4
  br label %for.cond.i499

for.cond.i499:                                    ; preds = %for.end.i535, %xors.exit102.i497
  %356 = load i32, i32* %i.i462, align 4
  %cmp10.i498 = icmp sle i32 %356, 1
  br i1 %cmp10.i498, label %for.body.i501, label %for.end44.i537

for.body.i501:                                    ; preds = %for.cond.i499
  %357 = load i32, i32* %i.i462, align 4
  %add.i500 = add nsw i32 %357, 1
  store i32 %add.i500, i32* %j.i463, align 4
  br label %for.cond12.i503

for.cond12.i503:                                  ; preds = %for.body15.i533, %for.body.i501
  %358 = load i32, i32* %j.i463, align 4
  %cmp13.i502 = icmp sle i32 %358, 1
  br i1 %cmp13.i502, label %for.body15.i533, label %for.end.i535

for.body15.i533:                                  ; preds = %for.cond12.i503
  %call16.i504 = call zeroext i8 (...) @rand() #3
  %359 = load i32, i32* %i.i462, align 4
  %idxprom.i505 = sext i32 %359 to i64
  %arrayidx.i506 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom.i505
  %360 = load i32, i32* %j.i463, align 4
  %idxprom17.i507 = sext i32 %360 to i64
  %arrayidx18.i508 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i506, i64 0, i64 %idxprom17.i507
  store i8 %call16.i504, i8* %arrayidx18.i508, align 1
  %361 = load i32, i32* %i.i462, align 4
  %idxprom19.i509 = sext i32 %361 to i64
  %arrayidx20.i510 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom19.i509
  %362 = load i32, i32* %j.i463, align 4
  %idxprom21.i511 = sext i32 %362 to i64
  %arrayidx22.i512 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i510, i64 0, i64 %idxprom21.i511
  %363 = load i8, i8* %arrayidx22.i512, align 1
  %conv23.i513 = zext i8 %363 to i32
  %364 = load i8*, i8** %a.addr.i456, align 8
  %365 = load i32, i32* %i.i462, align 4
  %idxprom24.i514 = sext i32 %365 to i64
  %arrayidx25.i515 = getelementptr inbounds i8, i8* %364, i64 %idxprom24.i514
  %366 = load i8, i8* %arrayidx25.i515, align 1
  %367 = load i8*, i8** %b.addr.i457, align 8
  %368 = load i32, i32* %j.i463, align 4
  %idxprom26.i516 = sext i32 %368 to i64
  %arrayidx27.i517 = getelementptr inbounds i8, i8* %367, i64 %idxprom26.i516
  %369 = load i8, i8* %arrayidx27.i517, align 1
  %call28.i518 = call zeroext i8 @mult(i8 zeroext %366, i8 zeroext %369) #3
  %conv29.i519 = zext i8 %call28.i518 to i32
  %xor.i520 = xor i32 %conv23.i513, %conv29.i519
  %370 = load i8*, i8** %a.addr.i456, align 8
  %371 = load i32, i32* %j.i463, align 4
  %idxprom30.i521 = sext i32 %371 to i64
  %arrayidx31.i522 = getelementptr inbounds i8, i8* %370, i64 %idxprom30.i521
  %372 = load i8, i8* %arrayidx31.i522, align 1
  %373 = load i8*, i8** %b.addr.i457, align 8
  %374 = load i32, i32* %i.i462, align 4
  %idxprom32.i523 = sext i32 %374 to i64
  %arrayidx33.i524 = getelementptr inbounds i8, i8* %373, i64 %idxprom32.i523
  %375 = load i8, i8* %arrayidx33.i524, align 1
  %call34.i525 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %375) #3
  %conv35.i526 = zext i8 %call34.i525 to i32
  %xor36.i527 = xor i32 %xor.i520, %conv35.i526
  %conv37.i528 = trunc i32 %xor36.i527 to i8
  %376 = load i32, i32* %j.i463, align 4
  %idxprom38.i529 = sext i32 %376 to i64
  %arrayidx39.i530 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom38.i529
  %377 = load i32, i32* %i.i462, align 4
  %idxprom40.i531 = sext i32 %377 to i64
  %arrayidx41.i532 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i530, i64 0, i64 %idxprom40.i531
  store i8 %conv37.i528, i8* %arrayidx41.i532, align 1
  %378 = load i32, i32* %j.i463, align 4
  %inc.i534 = add nsw i32 %378, 1
  store i32 %inc.i534, i32* %j.i463, align 4
  br label %for.cond12.i503

for.end.i535:                                     ; preds = %for.cond12.i503
  %379 = load i32, i32* %i.i462, align 4
  %inc43.i536 = add nsw i32 %379, 1
  store i32 %inc43.i536, i32* %i.i462, align 4
  br label %for.cond.i499

for.end44.i537:                                   ; preds = %for.cond.i499
  store i32 0, i32* %i45.i464, align 4
  br label %for.cond46.i539

for.cond46.i539:                                  ; preds = %for.end76.i565, %for.end44.i537
  %380 = load i32, i32* %i45.i464, align 4
  %cmp47.i538 = icmp sle i32 %380, 1
  br i1 %cmp47.i538, label %for.body49.i547, label %for.end79.i569

for.body49.i547:                                  ; preds = %for.cond46.i539
  %381 = load i8*, i8** %a.addr.i456, align 8
  %382 = load i32, i32* %i45.i464, align 4
  %idxprom50.i540 = sext i32 %382 to i64
  %arrayidx51.i541 = getelementptr inbounds i8, i8* %381, i64 %idxprom50.i540
  %383 = load i8, i8* %arrayidx51.i541, align 1
  %384 = load i8*, i8** %b.addr.i457, align 8
  %385 = load i32, i32* %i45.i464, align 4
  %idxprom52.i542 = sext i32 %385 to i64
  %arrayidx53.i543 = getelementptr inbounds i8, i8* %384, i64 %idxprom52.i542
  %386 = load i8, i8* %arrayidx53.i543, align 1
  %call54.i544 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %386) #3
  %387 = load i8*, i8** %c.addr.i458, align 8
  %388 = load i32, i32* %i45.i464, align 4
  %idxprom55.i545 = sext i32 %388 to i64
  %arrayidx56.i546 = getelementptr inbounds i8, i8* %387, i64 %idxprom55.i545
  store i8 %call54.i544, i8* %arrayidx56.i546, align 1
  store i32 0, i32* %j57.i465, align 4
  br label %for.cond58.i549

for.cond58.i549:                                  ; preds = %if.end.i563, %for.body49.i547
  %389 = load i32, i32* %j57.i465, align 4
  %cmp59.i548 = icmp sle i32 %389, 1
  br i1 %cmp59.i548, label %for.body61.i551, label %for.end76.i565

for.body61.i551:                                  ; preds = %for.cond58.i549
  %390 = load i32, i32* %j57.i465, align 4
  %391 = load i32, i32* %i45.i464, align 4
  %cmp62.i550 = icmp ne i32 %390, %391
  br i1 %cmp62.i550, label %if.then.i562, label %if.end.i563

if.then.i562:                                     ; preds = %for.body61.i551
  %392 = load i32, i32* %i45.i464, align 4
  %idxprom64.i552 = sext i32 %392 to i64
  %arrayidx65.i553 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom64.i552
  %393 = load i32, i32* %j57.i465, align 4
  %idxprom66.i554 = sext i32 %393 to i64
  %arrayidx67.i555 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i553, i64 0, i64 %idxprom66.i554
  %394 = load i8, i8* %arrayidx67.i555, align 1
  %conv68.i556 = zext i8 %394 to i32
  %395 = load i8*, i8** %c.addr.i458, align 8
  %396 = load i32, i32* %i45.i464, align 4
  %idxprom69.i557 = sext i32 %396 to i64
  %arrayidx70.i558 = getelementptr inbounds i8, i8* %395, i64 %idxprom69.i557
  %397 = load i8, i8* %arrayidx70.i558, align 1
  %conv71.i559 = zext i8 %397 to i32
  %xor72.i560 = xor i32 %conv71.i559, %conv68.i556
  %conv73.i561 = trunc i32 %xor72.i560 to i8
  store i8 %conv73.i561, i8* %arrayidx70.i558, align 1
  br label %if.end.i563

if.end.i563:                                      ; preds = %if.then.i562, %for.body61.i551
  %398 = load i32, i32* %j57.i465, align 4
  %inc75.i564 = add nsw i32 %398, 1
  store i32 %inc75.i564, i32* %j57.i465, align 4
  br label %for.cond58.i549

for.end76.i565:                                   ; preds = %for.cond58.i549
  %399 = load i32, i32* %i45.i464, align 4
  %inc78.i566 = add nsw i32 %399, 1
  store i32 %inc78.i566, i32* %i45.i464, align 4
  br label %for.cond46.i539

for.end79.i569:                                   ; preds = %for.cond46.i539
  %400 = load i8, i8* %A.i459, align 1
  %401 = load i8, i8* %B.i460, align 1
  %call80.i567 = call zeroext i8 @mult(i8 zeroext %400, i8 zeroext %401) #3
  %conv81.i568 = zext i8 %call80.i567 to i32
  %402 = load i8*, i8** %c.addr.i458, align 8
  store i8* %402, i8** %a.addr.i107.i445, align 8
  %403 = load i8*, i8** %a.addr.i107.i445, align 8
  store i8* %403, i8** %a.addr.i.i103.i441, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i442, align 8
  store i32 0, i32* %i.i.i106.i444, align 4
  br label %for.cond.i.i109.i571

for.cond.i.i109.i571:                             ; preds = %for.body.i.i118.i580, %for.end79.i569
  %404 = load i32, i32* %i.i.i106.i444, align 4
  %cmp.i.i108.i570 = icmp sle i32 %404, 1
  br i1 %cmp.i.i108.i570, label %for.body.i.i118.i580, label %sec_mult.exit583

for.body.i.i118.i580:                             ; preds = %for.cond.i.i109.i571
  %405 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i442, align 8
  %406 = load i8*, i8** %a.addr.i.i103.i441, align 8
  %407 = load i32, i32* %i.i.i106.i444, align 4
  %idxprom.i.i110.i572 = sext i32 %407 to i64
  %arrayidx.i.i111.i573 = getelementptr inbounds i8, i8* %406, i64 %idxprom.i.i110.i572
  %408 = load i8, i8* %arrayidx.i.i111.i573, align 1
  %call.i.i112.i574 = call zeroext i8 %405(i8 zeroext %408) #3
  %conv.i.i113.i575 = zext i8 %call.i.i112.i574 to i32
  %409 = load i8, i8* %result.i.i105.i443, align 1
  %conv1.i.i114.i576 = zext i8 %409 to i32
  %xor.i.i115.i577 = xor i32 %conv1.i.i114.i576, %conv.i.i113.i575
  %conv2.i.i116.i578 = trunc i32 %xor.i.i115.i577 to i8
  store i8 %conv2.i.i116.i578, i8* %result.i.i105.i443, align 1
  %410 = load i32, i32* %i.i.i106.i444, align 4
  %inc.i.i117.i579 = add nsw i32 %410, 1
  store i32 %inc.i.i117.i579, i32* %i.i.i106.i444, align 4
  br label %for.cond.i.i109.i571

sec_mult.exit583:                                 ; preds = %for.cond.i.i109.i571
  %411 = load i8, i8* %result.i.i105.i443, align 1
  %conv83.i581 = zext i8 %411 to i32
  %cmp84.i582 = icmp eq i32 %conv81.i568, %conv83.i581
  call void @assert(i1 zeroext %cmp84.i582) #3
  %412 = load i8, i8* %X, align 1
  store i8 %412, i8* %x.addr.i584, align 1
  %413 = load i8, i8* %x.addr.i584, align 1
  %call.i585 = call zeroext i8 @square(i8 zeroext %413) #3
  store i8 %call.i585, i8* %z.i, align 1
  %414 = load i8, i8* %z.i, align 1
  %415 = load i8, i8* %x.addr.i584, align 1
  %call1.i586 = call zeroext i8 @mult(i8 zeroext %414, i8 zeroext %415) #3
  store i8 %call1.i586, i8* %y.i, align 1
  %416 = load i8, i8* %y.i, align 1
  %call2.i = call zeroext i8 @exp4(i8 zeroext %416) #3
  store i8 %call2.i, i8* %w.i, align 1
  %417 = load i8, i8* %y.i, align 1
  %418 = load i8, i8* %w.i, align 1
  %call3.i = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418) #3
  store i8 %call3.i, i8* %y.i, align 1
  %419 = load i8, i8* %y.i, align 1
  %call4.i = call zeroext i8 @exp16(i8 zeroext %419) #3
  store i8 %call4.i, i8* %y.i, align 1
  %420 = load i8, i8* %y.i, align 1
  %421 = load i8, i8* %w.i, align 1
  %call5.i = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421) #3
  store i8 %call5.i, i8* %y.i, align 1
  %422 = load i8, i8* %y.i, align 1
  %423 = load i8, i8* %z.i, align 1
  %call6.i = call zeroext i8 @mult(i8 zeroext %422, i8 zeroext %423) #3
  store i8 %call6.i, i8* %y.i, align 1
  %424 = load i8, i8* %y.i, align 1
  %conv21 = zext i8 %424 to i32
  %425 = load i8*, i8** %y.addr, align 8
  store i8* %425, i8** %a.addr.i591, align 8
  %426 = load i8*, i8** %a.addr.i591, align 8
  store i8* %426, i8** %a.addr.i.i587, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i588, align 8
  store i32 0, i32* %i.i.i590, align 4
  br label %for.cond.i.i593

for.cond.i.i593:                                  ; preds = %for.body.i.i602, %sec_mult.exit583
  %427 = load i32, i32* %i.i.i590, align 4
  %cmp.i.i592 = icmp sle i32 %427, 1
  br i1 %cmp.i.i592, label %for.body.i.i602, label %xors.exit603

for.body.i.i602:                                  ; preds = %for.cond.i.i593
  %428 = load i8 (i8)*, i8 (i8)** %f.addr.i.i588, align 8
  %429 = load i8*, i8** %a.addr.i.i587, align 8
  %430 = load i32, i32* %i.i.i590, align 4
  %idxprom.i.i594 = sext i32 %430 to i64
  %arrayidx.i.i595 = getelementptr inbounds i8, i8* %429, i64 %idxprom.i.i594
  %431 = load i8, i8* %arrayidx.i.i595, align 1
  %call.i.i596 = call zeroext i8 %428(i8 zeroext %431) #3
  %conv.i.i597 = zext i8 %call.i.i596 to i32
  %432 = load i8, i8* %result.i.i589, align 1
  %conv1.i.i598 = zext i8 %432 to i32
  %xor.i.i599 = xor i32 %conv1.i.i598, %conv.i.i597
  %conv2.i.i600 = trunc i32 %xor.i.i599 to i8
  store i8 %conv2.i.i600, i8* %result.i.i589, align 1
  %433 = load i32, i32* %i.i.i590, align 4
  %inc.i.i601 = add nsw i32 %433, 1
  store i32 %inc.i.i601, i32* %i.i.i590, align 4
  br label %for.cond.i.i593

xors.exit603:                                     ; preds = %for.cond.i.i593
  %434 = load i8, i8* %result.i.i589, align 1
  %conv23 = zext i8 %434 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  %r = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %r, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %r, align 1
  %3 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3)
  store i8 %call, i8* %r, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i8, i8* %r, align 1
  ret i8 %5
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i52 = alloca i8*, align 8
  %f.addr.i.i53 = alloca i8 (i8)*, align 8
  %result.i.i54 = alloca i8, align 1
  %i.i.i55 = alloca i32, align 4
  %a.addr.i56 = alloca i8*, align 8
  %x.addr.i = alloca i8, align 1
  %r.i44 = alloca i8, align 1
  %i.i45 = alloca i32, align 4
  %from.addr.i29 = alloca i8*, align 8
  %to.addr.i30 = alloca i8*, align 8
  %f.addr.i31 = alloca i8 (i8)*, align 8
  %i.i32 = alloca i32, align 4
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
  %a.addr.i.i19 = alloca i8*, align 8
  %a.addr.i20 = alloca i8*, align 8
  %b.addr.i = alloca i8*, align 8
  %c.addr.i = alloca i8*, align 8
  %A.i = alloca i8, align 1
  %B.i = alloca i8, align 1
  %r.i = alloca [2 x [2 x i8]], align 1
  %i.i21 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %i45.i = alloca i32, align 4
  %j57.i = alloca i32, align 4
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
  %z = alloca [2 x [2 x i8]], align 1
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
  %cmp.i.i = icmp sle i32 %3, 1
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
  %arrayidx = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit
  %12 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %12, 1
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %transform.exit
  %20 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %20, 1
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %x.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 %idxprom
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx6, i64 0, i64 0
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx9, i64 0, i64 0
  store i8* %21, i8** %a.addr.i20, align 8
  store i8* %arraydecay7, i8** %b.addr.i, align 8
  store i8* %arraydecay10, i8** %c.addr.i, align 8
  %call.i22 = call zeroext i8 (...) @rand() #3
  store i8 %call.i22, i8* %A.i, align 1
  %call1.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i, i8* %B.i, align 1
  %24 = load i8, i8* %A.i, align 1
  %conv.i = zext i8 %24 to i32
  %25 = load i8*, i8** %a.addr.i20, align 8
  store i8* %25, i8** %a.addr.i.i19, align 8
  %26 = load i8*, i8** %a.addr.i.i19, align 8
  store i8* %26, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body
  %27 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %27, 1
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %xors.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %28 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i, align 8
  %29 = load i8*, i8** %a.addr.i.i.i, align 8
  %30 = load i32, i32* %i.i.i.i, align 4
  %idxprom.i.i.i = sext i32 %30 to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %29, i64 %idxprom.i.i.i
  %31 = load i8, i8* %arrayidx.i.i.i, align 1
  %call.i.i.i = call zeroext i8 %28(i8 zeroext %31) #3
  %conv.i.i.i = zext i8 %call.i.i.i to i32
  %32 = load i8, i8* %result.i.i.i, align 1
  %conv1.i.i.i = zext i8 %32 to i32
  %xor.i.i.i = xor i32 %conv1.i.i.i, %conv.i.i.i
  %conv2.i.i.i = trunc i32 %xor.i.i.i to i8
  store i8 %conv2.i.i.i, i8* %result.i.i.i, align 1
  %33 = load i32, i32* %i.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %33, 1
  store i32 %inc.i.i.i, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

xors.exit.i:                                      ; preds = %for.cond.i.i.i
  %34 = load i8, i8* %result.i.i.i, align 1
  %conv3.i = zext i8 %34 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %35 = load i8, i8* %B.i, align 1
  %conv5.i = zext i8 %35 to i32
  %36 = load i8*, i8** %b.addr.i, align 8
  store i8* %36, i8** %a.addr.i90.i, align 8
  %37 = load i8*, i8** %a.addr.i90.i, align 8
  store i8* %37, i8** %a.addr.i.i86.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i, align 8
  store i32 0, i32* %i.i.i89.i, align 4
  br label %for.cond.i.i92.i

for.cond.i.i92.i:                                 ; preds = %for.body.i.i101.i, %xors.exit.i
  %38 = load i32, i32* %i.i.i89.i, align 4
  %cmp.i.i91.i = icmp sle i32 %38, 1
  br i1 %cmp.i.i91.i, label %for.body.i.i101.i, label %xors.exit102.i

for.body.i.i101.i:                                ; preds = %for.cond.i.i92.i
  %39 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i, align 8
  %40 = load i8*, i8** %a.addr.i.i86.i, align 8
  %41 = load i32, i32* %i.i.i89.i, align 4
  %idxprom.i.i93.i = sext i32 %41 to i64
  %arrayidx.i.i94.i = getelementptr inbounds i8, i8* %40, i64 %idxprom.i.i93.i
  %42 = load i8, i8* %arrayidx.i.i94.i, align 1
  %call.i.i95.i = call zeroext i8 %39(i8 zeroext %42) #3
  %conv.i.i96.i = zext i8 %call.i.i95.i to i32
  %43 = load i8, i8* %result.i.i88.i, align 1
  %conv1.i.i97.i = zext i8 %43 to i32
  %xor.i.i98.i = xor i32 %conv1.i.i97.i, %conv.i.i96.i
  %conv2.i.i99.i = trunc i32 %xor.i.i98.i to i8
  store i8 %conv2.i.i99.i, i8* %result.i.i88.i, align 1
  %44 = load i32, i32* %i.i.i89.i, align 4
  %inc.i.i100.i = add nsw i32 %44, 1
  store i32 %inc.i.i100.i, i32* %i.i.i89.i, align 4
  br label %for.cond.i.i92.i

xors.exit102.i:                                   ; preds = %for.cond.i.i92.i
  %45 = load i8, i8* %result.i.i88.i, align 1
  %conv7.i = zext i8 %45 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  store i32 0, i32* %i.i21, align 4
  br label %for.cond.i24

for.cond.i24:                                     ; preds = %for.end.i, %xors.exit102.i
  %46 = load i32, i32* %i.i21, align 4
  %cmp10.i = icmp sle i32 %46, 1
  br i1 %cmp10.i, label %for.body.i25, label %for.end44.i

for.body.i25:                                     ; preds = %for.cond.i24
  %47 = load i32, i32* %i.i21, align 4
  %add.i = add nsw i32 %47, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i25
  %48 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %48, 1
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %49 = load i32, i32* %i.i21, align 4
  %idxprom.i26 = sext i32 %49 to i64
  %arrayidx.i27 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom.i26
  %50 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %50 to i64
  %arrayidx18.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i27, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %51 = load i32, i32* %i.i21, align 4
  %idxprom19.i = sext i32 %51 to i64
  %arrayidx20.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %52 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %52 to i64
  %arrayidx22.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %53 = load i8, i8* %arrayidx22.i, align 1
  %conv23.i = zext i8 %53 to i32
  %54 = load i8*, i8** %a.addr.i20, align 8
  %55 = load i32, i32* %i.i21, align 4
  %idxprom24.i = sext i32 %55 to i64
  %arrayidx25.i = getelementptr inbounds i8, i8* %54, i64 %idxprom24.i
  %56 = load i8, i8* %arrayidx25.i, align 1
  %57 = load i8*, i8** %b.addr.i, align 8
  %58 = load i32, i32* %j.i, align 4
  %idxprom26.i = sext i32 %58 to i64
  %arrayidx27.i = getelementptr inbounds i8, i8* %57, i64 %idxprom26.i
  %59 = load i8, i8* %arrayidx27.i, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %59) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %60 = load i8*, i8** %a.addr.i20, align 8
  %61 = load i32, i32* %j.i, align 4
  %idxprom30.i = sext i32 %61 to i64
  %arrayidx31.i = getelementptr inbounds i8, i8* %60, i64 %idxprom30.i
  %62 = load i8, i8* %arrayidx31.i, align 1
  %63 = load i8*, i8** %b.addr.i, align 8
  %64 = load i32, i32* %i.i21, align 4
  %idxprom32.i = sext i32 %64 to i64
  %arrayidx33.i = getelementptr inbounds i8, i8* %63, i64 %idxprom32.i
  %65 = load i8, i8* %arrayidx33.i, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %65) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %66 = load i32, i32* %j.i, align 4
  %idxprom38.i = sext i32 %66 to i64
  %arrayidx39.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom38.i
  %67 = load i32, i32* %i.i21, align 4
  %idxprom40.i = sext i32 %67 to i64
  %arrayidx41.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i, i64 0, i64 %idxprom40.i
  store i8 %conv37.i, i8* %arrayidx41.i, align 1
  %68 = load i32, i32* %j.i, align 4
  %inc.i28 = add nsw i32 %68, 1
  store i32 %inc.i28, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i:                                        ; preds = %for.cond12.i
  %69 = load i32, i32* %i.i21, align 4
  %inc43.i = add nsw i32 %69, 1
  store i32 %inc43.i, i32* %i.i21, align 4
  br label %for.cond.i24

for.end44.i:                                      ; preds = %for.cond.i24
  store i32 0, i32* %i45.i, align 4
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.end76.i, %for.end44.i
  %70 = load i32, i32* %i45.i, align 4
  %cmp47.i = icmp sle i32 %70, 1
  br i1 %cmp47.i, label %for.body49.i, label %for.end79.i

for.body49.i:                                     ; preds = %for.cond46.i
  %71 = load i8*, i8** %a.addr.i20, align 8
  %72 = load i32, i32* %i45.i, align 4
  %idxprom50.i = sext i32 %72 to i64
  %arrayidx51.i = getelementptr inbounds i8, i8* %71, i64 %idxprom50.i
  %73 = load i8, i8* %arrayidx51.i, align 1
  %74 = load i8*, i8** %b.addr.i, align 8
  %75 = load i32, i32* %i45.i, align 4
  %idxprom52.i = sext i32 %75 to i64
  %arrayidx53.i = getelementptr inbounds i8, i8* %74, i64 %idxprom52.i
  %76 = load i8, i8* %arrayidx53.i, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %76) #3
  %77 = load i8*, i8** %c.addr.i, align 8
  %78 = load i32, i32* %i45.i, align 4
  %idxprom55.i = sext i32 %78 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %77, i64 %idxprom55.i
  store i8 %call54.i, i8* %arrayidx56.i, align 1
  store i32 0, i32* %j57.i, align 4
  br label %for.cond58.i

for.cond58.i:                                     ; preds = %if.end.i, %for.body49.i
  %79 = load i32, i32* %j57.i, align 4
  %cmp59.i = icmp sle i32 %79, 1
  br i1 %cmp59.i, label %for.body61.i, label %for.end76.i

for.body61.i:                                     ; preds = %for.cond58.i
  %80 = load i32, i32* %j57.i, align 4
  %81 = load i32, i32* %i45.i, align 4
  %cmp62.i = icmp ne i32 %80, %81
  br i1 %cmp62.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body61.i
  %82 = load i32, i32* %i45.i, align 4
  %idxprom64.i = sext i32 %82 to i64
  %arrayidx65.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 %idxprom64.i
  %83 = load i32, i32* %j57.i, align 4
  %idxprom66.i = sext i32 %83 to i64
  %arrayidx67.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i, i64 0, i64 %idxprom66.i
  %84 = load i8, i8* %arrayidx67.i, align 1
  %conv68.i = zext i8 %84 to i32
  %85 = load i8*, i8** %c.addr.i, align 8
  %86 = load i32, i32* %i45.i, align 4
  %idxprom69.i = sext i32 %86 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %85, i64 %idxprom69.i
  %87 = load i8, i8* %arrayidx70.i, align 1
  %conv71.i = zext i8 %87 to i32
  %xor72.i = xor i32 %conv71.i, %conv68.i
  %conv73.i = trunc i32 %xor72.i to i8
  store i8 %conv73.i, i8* %arrayidx70.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body61.i
  %88 = load i32, i32* %j57.i, align 4
  %inc75.i = add nsw i32 %88, 1
  store i32 %inc75.i, i32* %j57.i, align 4
  br label %for.cond58.i

for.end76.i:                                      ; preds = %for.cond58.i
  %89 = load i32, i32* %i45.i, align 4
  %inc78.i = add nsw i32 %89, 1
  store i32 %inc78.i, i32* %i45.i, align 4
  br label %for.cond46.i

for.end79.i:                                      ; preds = %for.cond46.i
  %90 = load i8, i8* %A.i, align 1
  %91 = load i8, i8* %B.i, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #3
  %conv81.i = zext i8 %call80.i to i32
  %92 = load i8*, i8** %c.addr.i, align 8
  store i8* %92, i8** %a.addr.i107.i, align 8
  %93 = load i8*, i8** %a.addr.i107.i, align 8
  store i8* %93, i8** %a.addr.i.i103.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i, align 8
  store i32 0, i32* %i.i.i106.i, align 4
  br label %for.cond.i.i109.i

for.cond.i.i109.i:                                ; preds = %for.body.i.i118.i, %for.end79.i
  %94 = load i32, i32* %i.i.i106.i, align 4
  %cmp.i.i108.i = icmp sle i32 %94, 1
  br i1 %cmp.i.i108.i, label %for.body.i.i118.i, label %sec_mult.exit

for.body.i.i118.i:                                ; preds = %for.cond.i.i109.i
  %95 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i, align 8
  %96 = load i8*, i8** %a.addr.i.i103.i, align 8
  %97 = load i32, i32* %i.i.i106.i, align 4
  %idxprom.i.i110.i = sext i32 %97 to i64
  %arrayidx.i.i111.i = getelementptr inbounds i8, i8* %96, i64 %idxprom.i.i110.i
  %98 = load i8, i8* %arrayidx.i.i111.i, align 1
  %call.i.i112.i = call zeroext i8 %95(i8 zeroext %98) #3
  %conv.i.i113.i = zext i8 %call.i.i112.i to i32
  %99 = load i8, i8* %result.i.i105.i, align 1
  %conv1.i.i114.i = zext i8 %99 to i32
  %xor.i.i115.i = xor i32 %conv1.i.i114.i, %conv.i.i113.i
  %conv2.i.i116.i = trunc i32 %xor.i.i115.i to i8
  store i8 %conv2.i.i116.i, i8* %result.i.i105.i, align 1
  %100 = load i32, i32* %i.i.i106.i, align 4
  %inc.i.i117.i = add nsw i32 %100, 1
  store i32 %inc.i.i117.i, i32* %i.i.i106.i, align 4
  br label %for.cond.i.i109.i

sec_mult.exit:                                    ; preds = %for.cond.i.i109.i
  %101 = load i8, i8* %result.i.i105.i, align 1
  %conv83.i = zext i8 %101 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  br label %for.inc

for.inc:                                          ; preds = %sec_mult.exit
  %102 = load i32, i32* %i, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx11, i64 0, i64 0
  %103 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay12, i8** %from.addr.i29, align 8
  store i8* %103, i8** %to.addr.i30, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i31, align 8
  store i32 0, i32* %i.i32, align 4
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %for.body.i40, %for.end
  %104 = load i32, i32* %i.i32, align 4
  %cmp.i33 = icmp sle i32 %104, 1
  br i1 %cmp.i33, label %for.body.i40, label %transform.exit43

for.body.i40:                                     ; preds = %for.cond.i34
  %105 = load i8 (i8)*, i8 (i8)** %f.addr.i31, align 8
  %106 = load i8*, i8** %from.addr.i29, align 8
  %107 = load i32, i32* %i.i32, align 4
  %idxprom.i35 = sext i32 %107 to i64
  %arrayidx.i36 = getelementptr inbounds i8, i8* %106, i64 %idxprom.i35
  %108 = load i8, i8* %arrayidx.i36, align 1
  %call.i37 = call zeroext i8 %105(i8 zeroext %108) #3
  %109 = load i8*, i8** %to.addr.i30, align 8
  %110 = load i32, i32* %i.i32, align 4
  %idxprom1.i38 = sext i32 %110 to i64
  %arrayidx2.i39 = getelementptr inbounds i8, i8* %109, i64 %idxprom1.i38
  store i8 %call.i37, i8* %arrayidx2.i39, align 1
  %111 = load i32, i32* %i.i32, align 4
  %inc.i41 = add nsw i32 %111, 1
  store i32 %inc.i41, i32* %i.i32, align 4
  br label %for.cond.i34

transform.exit43:                                 ; preds = %for.cond.i34
  %112 = load i8, i8* %X, align 1
  store i8 %112, i8* %x.addr.i, align 1
  %113 = load i8, i8* %x.addr.i, align 1
  store i8 %113, i8* %r.i44, align 1
  store i32 0, i32* %i.i45, align 4
  br label %for.cond.i47

for.cond.i47:                                     ; preds = %for.body.i49, %transform.exit43
  %114 = load i32, i32* %i.i45, align 4
  %cmp.i46 = icmp slt i32 %114, 1
  br i1 %cmp.i46, label %for.body.i49, label %expd.exit

for.body.i49:                                     ; preds = %for.cond.i47
  %115 = load i8, i8* %r.i44, align 1
  %116 = load i8, i8* %x.addr.i, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116) #3
  store i8 %call.i48, i8* %r.i44, align 1
  %117 = load i32, i32* %i.i45, align 4
  %inc.i50 = add nsw i32 %117, 1
  store i32 %inc.i50, i32* %i.i45, align 4
  br label %for.cond.i47

expd.exit:                                        ; preds = %for.cond.i47
  %118 = load i8, i8* %r.i44, align 1
  %conv14 = zext i8 %118 to i32
  %119 = load i8*, i8** %y.addr, align 8
  store i8* %119, i8** %a.addr.i56, align 8
  %120 = load i8*, i8** %a.addr.i56, align 8
  store i8* %120, i8** %a.addr.i.i52, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i53, align 8
  store i32 0, i32* %i.i.i55, align 4
  br label %for.cond.i.i58

for.cond.i.i58:                                   ; preds = %for.body.i.i67, %expd.exit
  %121 = load i32, i32* %i.i.i55, align 4
  %cmp.i.i57 = icmp sle i32 %121, 1
  br i1 %cmp.i.i57, label %for.body.i.i67, label %xors.exit68

for.body.i.i67:                                   ; preds = %for.cond.i.i58
  %122 = load i8 (i8)*, i8 (i8)** %f.addr.i.i53, align 8
  %123 = load i8*, i8** %a.addr.i.i52, align 8
  %124 = load i32, i32* %i.i.i55, align 4
  %idxprom.i.i59 = sext i32 %124 to i64
  %arrayidx.i.i60 = getelementptr inbounds i8, i8* %123, i64 %idxprom.i.i59
  %125 = load i8, i8* %arrayidx.i.i60, align 1
  %call.i.i61 = call zeroext i8 %122(i8 zeroext %125) #3
  %conv.i.i62 = zext i8 %call.i.i61 to i32
  %126 = load i8, i8* %result.i.i54, align 1
  %conv1.i.i63 = zext i8 %126 to i32
  %xor.i.i64 = xor i32 %conv1.i.i63, %conv.i.i62
  %conv2.i.i65 = trunc i32 %xor.i.i64 to i8
  store i8 %conv2.i.i65, i8* %result.i.i54, align 1
  %127 = load i32, i32* %i.i.i55, align 4
  %inc.i.i66 = add nsw i32 %127, 1
  store i32 %inc.i.i66, i32* %i.i.i55, align 4
  br label %for.cond.i.i58

xors.exit68:                                      ; preds = %for.cond.i.i58
  %128 = load i8, i8* %result.i.i54, align 1
  %conv16 = zext i8 %128 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  call void @assert(i1 zeroext %cmp17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @af(i8 zeroext %x) #2 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @rotl1(i8 zeroext %1)
  %conv1 = zext i8 %call to i32
  %xor = xor i32 %conv, %conv1
  %2 = load i8, i8* %x.addr, align 1
  %call2 = call zeroext i8 @rotl2(i8 zeroext %2)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %3 = load i8, i8* %x.addr, align 1
  %call5 = call zeroext i8 @rotl3(i8 zeroext %3)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor4, %conv6
  %4 = load i8, i8* %x.addr, align 1
  %call8 = call zeroext i8 @rotl4(i8 zeroext %4)
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
  %x.addr.i = alloca i8, align 1
  %z.i = alloca i8, align 1
  %y.i = alloca i8, align 1
  %w.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %1) #3
  store i8 %call.i, i8* %z.i, align 1
  %2 = load i8, i8* %z.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call1.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #3
  store i8 %call1.i, i8* %y.i, align 1
  %4 = load i8, i8* %y.i, align 1
  %call2.i = call zeroext i8 @exp4(i8 zeroext %4) #3
  store i8 %call2.i, i8* %w.i, align 1
  %5 = load i8, i8* %y.i, align 1
  %6 = load i8, i8* %w.i, align 1
  %call3.i = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %6) #3
  store i8 %call3.i, i8* %y.i, align 1
  %7 = load i8, i8* %y.i, align 1
  %call4.i = call zeroext i8 @exp16(i8 zeroext %7) #3
  store i8 %call4.i, i8* %y.i, align 1
  %8 = load i8, i8* %y.i, align 1
  %9 = load i8, i8* %w.i, align 1
  %call5.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #3
  store i8 %call5.i, i8* %y.i, align 1
  %10 = load i8, i8* %y.i, align 1
  %11 = load i8, i8* %z.i, align 1
  %call6.i = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11) #3
  store i8 %call6.i, i8* %y.i, align 1
  %12 = load i8, i8* %y.i, align 1
  %call1 = call zeroext i8 @af(i8 zeroext %12)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i39 = alloca i8*, align 8
  %f.addr.i.i40 = alloca i8 (i8)*, align 8
  %result.i.i41 = alloca i8, align 1
  %i.i.i42 = alloca i32, align 4
  %a.addr.i43 = alloca i8*, align 8
  %x.addr.i.i27 = alloca i8, align 1
  %z.i.i28 = alloca i8, align 1
  %y.i.i29 = alloca i8, align 1
  %w.i.i30 = alloca i8, align 1
  %x.addr.i31 = alloca i8, align 1
  %from.addr.i = alloca i8*, align 8
  %to.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i587.i = alloca i8*, align 8
  %f.addr.i.i588.i = alloca i8 (i8)*, align 8
  %result.i.i589.i = alloca i8, align 1
  %i.i.i590.i = alloca i32, align 4
  %a.addr.i591.i = alloca i8*, align 8
  %x.addr.i584.i = alloca i8, align 1
  %z.i.i = alloca i8, align 1
  %y.i.i = alloca i8, align 1
  %w.i.i = alloca i8, align 1
  %a.addr.i.i103.i441.i = alloca i8*, align 8
  %f.addr.i.i104.i442.i = alloca i8 (i8)*, align 8
  %result.i.i105.i443.i = alloca i8, align 1
  %i.i.i106.i444.i = alloca i32, align 4
  %a.addr.i107.i445.i = alloca i8*, align 8
  %a.addr.i.i86.i446.i = alloca i8*, align 8
  %f.addr.i.i87.i447.i = alloca i8 (i8)*, align 8
  %result.i.i88.i448.i = alloca i8, align 1
  %i.i.i89.i449.i = alloca i32, align 4
  %a.addr.i90.i450.i = alloca i8*, align 8
  %a.addr.i.i.i451.i = alloca i8*, align 8
  %f.addr.i.i.i452.i = alloca i8 (i8)*, align 8
  %result.i.i.i453.i = alloca i8, align 1
  %i.i.i.i454.i = alloca i32, align 4
  %a.addr.i.i455.i = alloca i8*, align 8
  %a.addr.i456.i = alloca i8*, align 8
  %b.addr.i457.i = alloca i8*, align 8
  %c.addr.i458.i = alloca i8*, align 8
  %A.i459.i = alloca i8, align 1
  %B.i460.i = alloca i8, align 1
  %i.i462.i = alloca i32, align 4
  %j.i463.i = alloca i32, align 4
  %i45.i464.i = alloca i32, align 4
  %j57.i465.i = alloca i32, align 4
  %a.addr.i.i103.i298.i = alloca i8*, align 8
  %f.addr.i.i104.i299.i = alloca i8 (i8)*, align 8
  %result.i.i105.i300.i = alloca i8, align 1
  %i.i.i106.i301.i = alloca i32, align 4
  %a.addr.i107.i302.i = alloca i8*, align 8
  %a.addr.i.i86.i303.i = alloca i8*, align 8
  %f.addr.i.i87.i304.i = alloca i8 (i8)*, align 8
  %result.i.i88.i305.i = alloca i8, align 1
  %i.i.i89.i306.i = alloca i32, align 4
  %a.addr.i90.i307.i = alloca i8*, align 8
  %a.addr.i.i.i308.i = alloca i8*, align 8
  %f.addr.i.i.i309.i = alloca i8 (i8)*, align 8
  %result.i.i.i310.i = alloca i8, align 1
  %i.i.i.i311.i = alloca i32, align 4
  %a.addr.i.i312.i = alloca i8*, align 8
  %a.addr.i313.i = alloca i8*, align 8
  %b.addr.i314.i = alloca i8*, align 8
  %c.addr.i315.i = alloca i8*, align 8
  %A.i316.i = alloca i8, align 1
  %B.i317.i = alloca i8, align 1
  %i.i319.i = alloca i32, align 4
  %j.i320.i = alloca i32, align 4
  %i45.i321.i = alloca i32, align 4
  %j57.i322.i = alloca i32, align 4
  %from.addr.i283.i = alloca i8*, align 8
  %to.addr.i284.i = alloca i8*, align 8
  %f.addr.i285.i = alloca i8 (i8)*, align 8
  %i.i286.i = alloca i32, align 4
  %a.addr.i.i103.i140.i = alloca i8*, align 8
  %f.addr.i.i104.i141.i = alloca i8 (i8)*, align 8
  %result.i.i105.i142.i = alloca i8, align 1
  %i.i.i106.i143.i = alloca i32, align 4
  %a.addr.i107.i144.i = alloca i8*, align 8
  %a.addr.i.i86.i145.i = alloca i8*, align 8
  %f.addr.i.i87.i146.i = alloca i8 (i8)*, align 8
  %result.i.i88.i147.i = alloca i8, align 1
  %i.i.i89.i148.i = alloca i32, align 4
  %a.addr.i90.i149.i = alloca i8*, align 8
  %a.addr.i.i.i150.i = alloca i8*, align 8
  %f.addr.i.i.i151.i = alloca i8 (i8)*, align 8
  %result.i.i.i152.i = alloca i8, align 1
  %i.i.i.i153.i = alloca i32, align 4
  %a.addr.i.i154.i = alloca i8*, align 8
  %a.addr.i155.i = alloca i8*, align 8
  %b.addr.i156.i = alloca i8*, align 8
  %c.addr.i157.i = alloca i8*, align 8
  %A.i158.i = alloca i8, align 1
  %B.i159.i = alloca i8, align 1
  %i.i161.i = alloca i32, align 4
  %j.i162.i = alloca i32, align 4
  %i45.i163.i = alloca i32, align 4
  %j57.i164.i = alloca i32, align 4
  %a.addr.i.i21.i78.i = alloca i8*, align 8
  %f.addr.i.i22.i79.i = alloca i8 (i8)*, align 8
  %result.i.i23.i80.i = alloca i8, align 1
  %i.i.i24.i81.i = alloca i32, align 4
  %a.addr.i25.i82.i = alloca i8*, align 8
  %a.addr.i.i.i83.i = alloca i8*, align 8
  %f.addr.i.i.i84.i = alloca i8 (i8)*, align 8
  %result.i.i.i85.i = alloca i8, align 1
  %i.i.i.i86.i = alloca i32, align 4
  %a.addr.i.i87.i = alloca i8*, align 8
  %x.addr.i88.i = alloca i8*, align 8
  %X.i89.i = alloca i8, align 1
  %i.i90.i = alloca i8, align 1
  %tmp.i91.i = alloca i8, align 1
  %from.addr.i63.i = alloca i8*, align 8
  %to.addr.i64.i = alloca i8*, align 8
  %f.addr.i65.i = alloca i8 (i8)*, align 8
  %i.i66.i = alloca i32, align 4
  %a.addr.i.i103.i.i = alloca i8*, align 8
  %f.addr.i.i104.i.i = alloca i8 (i8)*, align 8
  %result.i.i105.i.i = alloca i8, align 1
  %i.i.i106.i.i = alloca i32, align 4
  %a.addr.i107.i.i = alloca i8*, align 8
  %a.addr.i.i86.i.i = alloca i8*, align 8
  %f.addr.i.i87.i.i = alloca i8 (i8)*, align 8
  %result.i.i88.i.i = alloca i8, align 1
  %i.i.i89.i.i = alloca i32, align 4
  %a.addr.i90.i.i = alloca i8*, align 8
  %a.addr.i.i.i34.i = alloca i8*, align 8
  %f.addr.i.i.i35.i = alloca i8 (i8)*, align 8
  %result.i.i.i36.i = alloca i8, align 1
  %i.i.i.i37.i = alloca i32, align 4
  %a.addr.i.i38.i = alloca i8*, align 8
  %a.addr.i39.i = alloca i8*, align 8
  %b.addr.i.i = alloca i8*, align 8
  %c.addr.i.i = alloca i8*, align 8
  %A.i.i = alloca i8, align 1
  %B.i.i = alloca i8, align 1
  %r.i.i = alloca [2 x [2 x i8]], align 1
  %i.i40.i = alloca i32, align 4
  %j.i.i = alloca i32, align 4
  %i45.i.i = alloca i32, align 4
  %j57.i.i = alloca i32, align 4
  %a.addr.i.i21.i.i = alloca i8*, align 8
  %f.addr.i.i22.i.i = alloca i8 (i8)*, align 8
  %result.i.i23.i.i = alloca i8, align 1
  %i.i.i24.i.i = alloca i32, align 4
  %a.addr.i25.i.i = alloca i8*, align 8
  %a.addr.i.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i.i = alloca i8, align 1
  %i.i.i.i.i = alloca i32, align 4
  %a.addr.i.i26.i = alloca i8*, align 8
  %x.addr.i.i = alloca i8*, align 8
  %X.i.i = alloca i8, align 1
  %i.i27.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %from.addr.i.i = alloca i8*, align 8
  %to.addr.i.i = alloca i8*, align 8
  %f.addr.i.i12 = alloca i8 (i8)*, align 8
  %i.i.i13 = alloca i32, align 4
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i14 = alloca i8*, align 8
  %x.addr.i = alloca i8*, align 8
  %y.addr.i = alloca i8*, align 8
  %X.i = alloca i8, align 1
  %z.i = alloca [2 x i8], align 1
  %w.i = alloca [2 x i8], align 1
  %u.i = alloca [2 x i8], align 1
  %v.i = alloca [2 x i8], align 1
  %m.i = alloca [2 x i8], align 1
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %X = alloca i8, align 1
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
  %cmp.i.i = icmp sle i32 %3, 1
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
  %12 = load i8*, i8** %y.addr, align 8
  store i8* %11, i8** %x.addr.i, align 8
  store i8* %12, i8** %y.addr.i, align 8
  %call.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i, i8* %X.i, align 1
  %13 = load i8, i8* %X.i, align 1
  %conv.i = zext i8 %13 to i32
  %14 = load i8*, i8** %x.addr.i, align 8
  store i8* %14, i8** %a.addr.i.i14, align 8
  %15 = load i8*, i8** %a.addr.i.i14, align 8
  store i8* %15, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %xors.exit
  %16 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %16, 1
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %xors.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %17 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i, align 8
  %18 = load i8*, i8** %a.addr.i.i.i, align 8
  %19 = load i32, i32* %i.i.i.i, align 4
  %idxprom.i.i.i = sext i32 %19 to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %18, i64 %idxprom.i.i.i
  %20 = load i8, i8* %arrayidx.i.i.i, align 1
  %call.i.i.i = call zeroext i8 %17(i8 zeroext %20) #3
  %conv.i.i.i = zext i8 %call.i.i.i to i32
  %21 = load i8, i8* %result.i.i.i, align 1
  %conv1.i.i.i = zext i8 %21 to i32
  %xor.i.i.i = xor i32 %conv1.i.i.i, %conv.i.i.i
  %conv2.i.i.i = trunc i32 %xor.i.i.i to i8
  store i8 %conv2.i.i.i, i8* %result.i.i.i, align 1
  %22 = load i32, i32* %i.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %22, 1
  store i32 %inc.i.i.i, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

xors.exit.i:                                      ; preds = %for.cond.i.i.i
  %23 = load i8, i8* %result.i.i.i, align 1
  %conv2.i = zext i8 %23 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %24 = load i8*, i8** %x.addr.i, align 8
  %arraydecay.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  store i8* %24, i8** %from.addr.i.i, align 8
  store i8* %arraydecay.i, i8** %to.addr.i.i, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i.i12, align 8
  store i32 0, i32* %i.i.i13, align 4
  br label %for.cond.i.i16

for.cond.i.i16:                                   ; preds = %for.body.i.i21, %xors.exit.i
  %25 = load i32, i32* %i.i.i13, align 4
  %cmp.i.i15 = icmp sle i32 %25, 1
  br i1 %cmp.i.i15, label %for.body.i.i21, label %transform.exit.i

for.body.i.i21:                                   ; preds = %for.cond.i.i16
  %26 = load i8 (i8)*, i8 (i8)** %f.addr.i.i12, align 8
  %27 = load i8*, i8** %from.addr.i.i, align 8
  %28 = load i32, i32* %i.i.i13, align 4
  %idxprom.i.i17 = sext i32 %28 to i64
  %arrayidx.i.i18 = getelementptr inbounds i8, i8* %27, i64 %idxprom.i.i17
  %29 = load i8, i8* %arrayidx.i.i18, align 1
  %call.i.i19 = call zeroext i8 %26(i8 zeroext %29) #3
  %30 = load i8*, i8** %to.addr.i.i, align 8
  %31 = load i32, i32* %i.i.i13, align 4
  %idxprom1.i.i = sext i32 %31 to i64
  %arrayidx2.i.i = getelementptr inbounds i8, i8* %30, i64 %idxprom1.i.i
  store i8 %call.i.i19, i8* %arrayidx2.i.i, align 1
  %32 = load i32, i32* %i.i.i13, align 4
  %inc.i.i20 = add nsw i32 %32, 1
  store i32 %inc.i.i20, i32* %i.i.i13, align 4
  br label %for.cond.i.i16

transform.exit.i:                                 ; preds = %for.cond.i.i16
  %arraydecay4.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  store i8* %arraydecay4.i, i8** %x.addr.i.i, align 8
  %call.i28.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i28.i, i8* %X.i.i, align 1
  %33 = load i8, i8* %X.i.i, align 1
  %conv.i.i22 = zext i8 %33 to i32
  %34 = load i8*, i8** %x.addr.i.i, align 8
  store i8* %34, i8** %a.addr.i.i26.i, align 8
  %35 = load i8*, i8** %a.addr.i.i26.i, align 8
  store i8* %35, i8** %a.addr.i.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i.i, align 8
  store i32 0, i32* %i.i.i.i.i, align 4
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %transform.exit.i
  %36 = load i32, i32* %i.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp sle i32 %36, 1
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i, label %xors.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %37 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i.i, align 8
  %38 = load i8*, i8** %a.addr.i.i.i.i, align 8
  %39 = load i32, i32* %i.i.i.i.i, align 4
  %idxprom.i.i.i.i = sext i32 %39 to i64
  %arrayidx.i.i.i.i = getelementptr inbounds i8, i8* %38, i64 %idxprom.i.i.i.i
  %40 = load i8, i8* %arrayidx.i.i.i.i, align 1
  %call.i.i.i.i = call zeroext i8 %37(i8 zeroext %40) #3
  %conv.i.i.i.i = zext i8 %call.i.i.i.i to i32
  %41 = load i8, i8* %result.i.i.i.i, align 1
  %conv1.i.i.i.i = zext i8 %41 to i32
  %xor.i.i.i.i = xor i32 %conv1.i.i.i.i, %conv.i.i.i.i
  %conv2.i.i.i.i = trunc i32 %xor.i.i.i.i to i8
  store i8 %conv2.i.i.i.i, i8* %result.i.i.i.i, align 1
  %42 = load i32, i32* %i.i.i.i.i, align 4
  %inc.i.i.i.i = add nsw i32 %42, 1
  store i32 %inc.i.i.i.i, i32* %i.i.i.i.i, align 4
  br label %for.cond.i.i.i.i

xors.exit.i.i:                                    ; preds = %for.cond.i.i.i.i
  %43 = load i8, i8* %result.i.i.i.i, align 1
  %conv2.i.i23 = zext i8 %43 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i22, %conv2.i.i23
  call void @assume(i1 zeroext %cmp.i29.i) #3
  store i8 1, i8* %i.i27.i, align 1
  br label %for.cond.i30.i

for.cond.i30.i:                                   ; preds = %for.body.i32.i, %xors.exit.i.i
  %44 = load i8, i8* %i.i27.i, align 1
  %conv4.i.i = zext i8 %44 to i32
  %cmp5.i.i = icmp sle i32 %conv4.i.i, 1
  br i1 %cmp5.i.i, label %for.body.i32.i, label %for.end.i.i

for.body.i32.i:                                   ; preds = %for.cond.i30.i
  %call7.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i.i, i8* %tmp.i.i, align 1
  %45 = load i8, i8* %tmp.i.i, align 1
  %conv8.i.i = zext i8 %45 to i32
  %46 = load i8*, i8** %x.addr.i.i, align 8
  %47 = load i8, i8* %46, align 1
  %conv9.i.i = zext i8 %47 to i32
  %xor.i.i24 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i24 to i8
  store i8 %conv10.i.i, i8* %46, align 1
  %48 = load i8, i8* %tmp.i.i, align 1
  %conv11.i.i = zext i8 %48 to i32
  %49 = load i8*, i8** %x.addr.i.i, align 8
  %50 = load i8, i8* %i.i27.i, align 1
  %idxprom.i31.i = zext i8 %50 to i64
  %arrayidx12.i.i = getelementptr inbounds i8, i8* %49, i64 %idxprom.i31.i
  %51 = load i8, i8* %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %51 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %arrayidx12.i.i, align 1
  %52 = load i8, i8* %i.i27.i, align 1
  %inc.i33.i = add i8 %52, 1
  store i8 %inc.i33.i, i8* %i.i27.i, align 1
  br label %for.cond.i30.i

for.end.i.i:                                      ; preds = %for.cond.i30.i
  %53 = load i8, i8* %X.i.i, align 1
  %conv16.i.i = zext i8 %53 to i32
  %54 = load i8*, i8** %x.addr.i.i, align 8
  store i8* %54, i8** %a.addr.i25.i.i, align 8
  %55 = load i8*, i8** %a.addr.i25.i.i, align 8
  store i8* %55, i8** %a.addr.i.i21.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i.i, align 8
  store i32 0, i32* %i.i.i24.i.i, align 4
  br label %for.cond.i.i27.i.i

for.cond.i.i27.i.i:                               ; preds = %for.body.i.i36.i.i, %for.end.i.i
  %56 = load i32, i32* %i.i.i24.i.i, align 4
  %cmp.i.i26.i.i = icmp sle i32 %56, 1
  br i1 %cmp.i.i26.i.i, label %for.body.i.i36.i.i, label %refresh_masks.exit.i

for.body.i.i36.i.i:                               ; preds = %for.cond.i.i27.i.i
  %57 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i.i, align 8
  %58 = load i8*, i8** %a.addr.i.i21.i.i, align 8
  %59 = load i32, i32* %i.i.i24.i.i, align 4
  %idxprom.i.i28.i.i = sext i32 %59 to i64
  %arrayidx.i.i29.i.i = getelementptr inbounds i8, i8* %58, i64 %idxprom.i.i28.i.i
  %60 = load i8, i8* %arrayidx.i.i29.i.i, align 1
  %call.i.i30.i.i = call zeroext i8 %57(i8 zeroext %60) #3
  %conv.i.i31.i.i = zext i8 %call.i.i30.i.i to i32
  %61 = load i8, i8* %result.i.i23.i.i, align 1
  %conv1.i.i32.i.i = zext i8 %61 to i32
  %xor.i.i33.i.i = xor i32 %conv1.i.i32.i.i, %conv.i.i31.i.i
  %conv2.i.i34.i.i = trunc i32 %xor.i.i33.i.i to i8
  store i8 %conv2.i.i34.i.i, i8* %result.i.i23.i.i, align 1
  %62 = load i32, i32* %i.i.i24.i.i, align 4
  %inc.i.i35.i.i = add nsw i32 %62, 1
  store i32 %inc.i.i35.i.i, i32* %i.i.i24.i.i, align 4
  br label %for.cond.i.i27.i.i

refresh_masks.exit.i:                             ; preds = %for.cond.i.i27.i.i
  %63 = load i8, i8* %result.i.i23.i.i, align 1
  %conv18.i.i = zext i8 %63 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %64 = load i8*, i8** %x.addr.i, align 8
  %arraydecay6.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  store i8* %arraydecay5.i, i8** %a.addr.i39.i, align 8
  store i8* %64, i8** %b.addr.i.i, align 8
  store i8* %arraydecay6.i, i8** %c.addr.i.i, align 8
  %call.i41.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i41.i, i8* %A.i.i, align 1
  %call1.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i.i, i8* %B.i.i, align 1
  %65 = load i8, i8* %A.i.i, align 1
  %conv.i42.i = zext i8 %65 to i32
  %66 = load i8*, i8** %a.addr.i39.i, align 8
  store i8* %66, i8** %a.addr.i.i38.i, align 8
  %67 = load i8*, i8** %a.addr.i.i38.i, align 8
  store i8* %67, i8** %a.addr.i.i.i34.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i35.i, align 8
  store i32 0, i32* %i.i.i.i37.i, align 4
  br label %for.cond.i.i.i44.i

for.cond.i.i.i44.i:                               ; preds = %for.body.i.i.i53.i, %refresh_masks.exit.i
  %68 = load i32, i32* %i.i.i.i37.i, align 4
  %cmp.i.i.i43.i = icmp sle i32 %68, 1
  br i1 %cmp.i.i.i43.i, label %for.body.i.i.i53.i, label %xors.exit.i55.i

for.body.i.i.i53.i:                               ; preds = %for.cond.i.i.i44.i
  %69 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i35.i, align 8
  %70 = load i8*, i8** %a.addr.i.i.i34.i, align 8
  %71 = load i32, i32* %i.i.i.i37.i, align 4
  %idxprom.i.i.i45.i = sext i32 %71 to i64
  %arrayidx.i.i.i46.i = getelementptr inbounds i8, i8* %70, i64 %idxprom.i.i.i45.i
  %72 = load i8, i8* %arrayidx.i.i.i46.i, align 1
  %call.i.i.i47.i = call zeroext i8 %69(i8 zeroext %72) #3
  %conv.i.i.i48.i = zext i8 %call.i.i.i47.i to i32
  %73 = load i8, i8* %result.i.i.i36.i, align 1
  %conv1.i.i.i49.i = zext i8 %73 to i32
  %xor.i.i.i50.i = xor i32 %conv1.i.i.i49.i, %conv.i.i.i48.i
  %conv2.i.i.i51.i = trunc i32 %xor.i.i.i50.i to i8
  store i8 %conv2.i.i.i51.i, i8* %result.i.i.i36.i, align 1
  %74 = load i32, i32* %i.i.i.i37.i, align 4
  %inc.i.i.i52.i = add nsw i32 %74, 1
  store i32 %inc.i.i.i52.i, i32* %i.i.i.i37.i, align 4
  br label %for.cond.i.i.i44.i

xors.exit.i55.i:                                  ; preds = %for.cond.i.i.i44.i
  %75 = load i8, i8* %result.i.i.i36.i, align 1
  %conv3.i.i = zext i8 %75 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %76 = load i8, i8* %B.i.i, align 1
  %conv5.i.i = zext i8 %76 to i32
  %77 = load i8*, i8** %b.addr.i.i, align 8
  store i8* %77, i8** %a.addr.i90.i.i, align 8
  %78 = load i8*, i8** %a.addr.i90.i.i, align 8
  store i8* %78, i8** %a.addr.i.i86.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i.i, align 8
  store i32 0, i32* %i.i.i89.i.i, align 4
  br label %for.cond.i.i92.i.i

for.cond.i.i92.i.i:                               ; preds = %for.body.i.i101.i.i, %xors.exit.i55.i
  %79 = load i32, i32* %i.i.i89.i.i, align 4
  %cmp.i.i91.i.i = icmp sle i32 %79, 1
  br i1 %cmp.i.i91.i.i, label %for.body.i.i101.i.i, label %xors.exit102.i.i

for.body.i.i101.i.i:                              ; preds = %for.cond.i.i92.i.i
  %80 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i.i, align 8
  %81 = load i8*, i8** %a.addr.i.i86.i.i, align 8
  %82 = load i32, i32* %i.i.i89.i.i, align 4
  %idxprom.i.i93.i.i = sext i32 %82 to i64
  %arrayidx.i.i94.i.i = getelementptr inbounds i8, i8* %81, i64 %idxprom.i.i93.i.i
  %83 = load i8, i8* %arrayidx.i.i94.i.i, align 1
  %call.i.i95.i.i = call zeroext i8 %80(i8 zeroext %83) #3
  %conv.i.i96.i.i = zext i8 %call.i.i95.i.i to i32
  %84 = load i8, i8* %result.i.i88.i.i, align 1
  %conv1.i.i97.i.i = zext i8 %84 to i32
  %xor.i.i98.i.i = xor i32 %conv1.i.i97.i.i, %conv.i.i96.i.i
  %conv2.i.i99.i.i = trunc i32 %xor.i.i98.i.i to i8
  store i8 %conv2.i.i99.i.i, i8* %result.i.i88.i.i, align 1
  %85 = load i32, i32* %i.i.i89.i.i, align 4
  %inc.i.i100.i.i = add nsw i32 %85, 1
  store i32 %inc.i.i100.i.i, i32* %i.i.i89.i.i, align 4
  br label %for.cond.i.i92.i.i

xors.exit102.i.i:                                 ; preds = %for.cond.i.i92.i.i
  %86 = load i8, i8* %result.i.i88.i.i, align 1
  %conv7.i.i = zext i8 %86 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  store i32 0, i32* %i.i40.i, align 4
  br label %for.cond.i56.i

for.cond.i56.i:                                   ; preds = %for.end.i62.i, %xors.exit102.i.i
  %87 = load i32, i32* %i.i40.i, align 4
  %cmp10.i.i = icmp sle i32 %87, 1
  br i1 %cmp10.i.i, label %for.body.i57.i, label %for.end44.i.i

for.body.i57.i:                                   ; preds = %for.cond.i56.i
  %88 = load i32, i32* %i.i40.i, align 4
  %add.i.i = add nsw i32 %88, 1
  store i32 %add.i.i, i32* %j.i.i, align 4
  br label %for.cond12.i.i

for.cond12.i.i:                                   ; preds = %for.body15.i.i, %for.body.i57.i
  %89 = load i32, i32* %j.i.i, align 4
  %cmp13.i.i = icmp sle i32 %89, 1
  br i1 %cmp13.i.i, label %for.body15.i.i, label %for.end.i62.i

for.body15.i.i:                                   ; preds = %for.cond12.i.i
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %90 = load i32, i32* %i.i40.i, align 4
  %idxprom.i58.i = sext i32 %90 to i64
  %arrayidx.i59.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom.i58.i
  %91 = load i32, i32* %j.i.i, align 4
  %idxprom17.i.i = sext i32 %91 to i64
  %arrayidx18.i.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i59.i, i64 0, i64 %idxprom17.i.i
  store i8 %call16.i.i, i8* %arrayidx18.i.i, align 1
  %92 = load i32, i32* %i.i40.i, align 4
  %idxprom19.i.i = sext i32 %92 to i64
  %arrayidx20.i.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i.i
  %93 = load i32, i32* %j.i.i, align 4
  %idxprom21.i.i = sext i32 %93 to i64
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i.i, i64 0, i64 %idxprom21.i.i
  %94 = load i8, i8* %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %94 to i32
  %95 = load i8*, i8** %a.addr.i39.i, align 8
  %96 = load i32, i32* %i.i40.i, align 4
  %idxprom24.i.i = sext i32 %96 to i64
  %arrayidx25.i.i = getelementptr inbounds i8, i8* %95, i64 %idxprom24.i.i
  %97 = load i8, i8* %arrayidx25.i.i, align 1
  %98 = load i8*, i8** %b.addr.i.i, align 8
  %99 = load i32, i32* %j.i.i, align 4
  %idxprom26.i.i = sext i32 %99 to i64
  %arrayidx27.i.i = getelementptr inbounds i8, i8* %98, i64 %idxprom26.i.i
  %100 = load i8, i8* %arrayidx27.i.i, align 1
  %call28.i.i = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %100) #3
  %conv29.i.i = zext i8 %call28.i.i to i32
  %xor.i60.i = xor i32 %conv23.i.i, %conv29.i.i
  %101 = load i8*, i8** %a.addr.i39.i, align 8
  %102 = load i32, i32* %j.i.i, align 4
  %idxprom30.i.i = sext i32 %102 to i64
  %arrayidx31.i.i = getelementptr inbounds i8, i8* %101, i64 %idxprom30.i.i
  %103 = load i8, i8* %arrayidx31.i.i, align 1
  %104 = load i8*, i8** %b.addr.i.i, align 8
  %105 = load i32, i32* %i.i40.i, align 4
  %idxprom32.i.i = sext i32 %105 to i64
  %arrayidx33.i.i = getelementptr inbounds i8, i8* %104, i64 %idxprom32.i.i
  %106 = load i8, i8* %arrayidx33.i.i, align 1
  %call34.i.i = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %106) #3
  %conv35.i.i = zext i8 %call34.i.i to i32
  %xor36.i.i = xor i32 %xor.i60.i, %conv35.i.i
  %conv37.i.i = trunc i32 %xor36.i.i to i8
  %107 = load i32, i32* %j.i.i, align 4
  %idxprom38.i.i = sext i32 %107 to i64
  %arrayidx39.i.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom38.i.i
  %108 = load i32, i32* %i.i40.i, align 4
  %idxprom40.i.i = sext i32 %108 to i64
  %arrayidx41.i.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i.i, i64 0, i64 %idxprom40.i.i
  store i8 %conv37.i.i, i8* %arrayidx41.i.i, align 1
  %109 = load i32, i32* %j.i.i, align 4
  %inc.i61.i = add nsw i32 %109, 1
  store i32 %inc.i61.i, i32* %j.i.i, align 4
  br label %for.cond12.i.i

for.end.i62.i:                                    ; preds = %for.cond12.i.i
  %110 = load i32, i32* %i.i40.i, align 4
  %inc43.i.i = add nsw i32 %110, 1
  store i32 %inc43.i.i, i32* %i.i40.i, align 4
  br label %for.cond.i56.i

for.end44.i.i:                                    ; preds = %for.cond.i56.i
  store i32 0, i32* %i45.i.i, align 4
  br label %for.cond46.i.i

for.cond46.i.i:                                   ; preds = %for.end76.i.i, %for.end44.i.i
  %111 = load i32, i32* %i45.i.i, align 4
  %cmp47.i.i = icmp sle i32 %111, 1
  br i1 %cmp47.i.i, label %for.body49.i.i, label %for.end79.i.i

for.body49.i.i:                                   ; preds = %for.cond46.i.i
  %112 = load i8*, i8** %a.addr.i39.i, align 8
  %113 = load i32, i32* %i45.i.i, align 4
  %idxprom50.i.i = sext i32 %113 to i64
  %arrayidx51.i.i = getelementptr inbounds i8, i8* %112, i64 %idxprom50.i.i
  %114 = load i8, i8* %arrayidx51.i.i, align 1
  %115 = load i8*, i8** %b.addr.i.i, align 8
  %116 = load i32, i32* %i45.i.i, align 4
  %idxprom52.i.i = sext i32 %116 to i64
  %arrayidx53.i.i = getelementptr inbounds i8, i8* %115, i64 %idxprom52.i.i
  %117 = load i8, i8* %arrayidx53.i.i, align 1
  %call54.i.i = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %117) #3
  %118 = load i8*, i8** %c.addr.i.i, align 8
  %119 = load i32, i32* %i45.i.i, align 4
  %idxprom55.i.i = sext i32 %119 to i64
  %arrayidx56.i.i = getelementptr inbounds i8, i8* %118, i64 %idxprom55.i.i
  store i8 %call54.i.i, i8* %arrayidx56.i.i, align 1
  store i32 0, i32* %j57.i.i, align 4
  br label %for.cond58.i.i

for.cond58.i.i:                                   ; preds = %if.end.i.i, %for.body49.i.i
  %120 = load i32, i32* %j57.i.i, align 4
  %cmp59.i.i = icmp sle i32 %120, 1
  br i1 %cmp59.i.i, label %for.body61.i.i, label %for.end76.i.i

for.body61.i.i:                                   ; preds = %for.cond58.i.i
  %121 = load i32, i32* %j57.i.i, align 4
  %122 = load i32, i32* %i45.i.i, align 4
  %cmp62.i.i = icmp ne i32 %121, %122
  br i1 %cmp62.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body61.i.i
  %123 = load i32, i32* %i45.i.i, align 4
  %idxprom64.i.i = sext i32 %123 to i64
  %arrayidx65.i.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom64.i.i
  %124 = load i32, i32* %j57.i.i, align 4
  %idxprom66.i.i = sext i32 %124 to i64
  %arrayidx67.i.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i.i, i64 0, i64 %idxprom66.i.i
  %125 = load i8, i8* %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %125 to i32
  %126 = load i8*, i8** %c.addr.i.i, align 8
  %127 = load i32, i32* %i45.i.i, align 4
  %idxprom69.i.i = sext i32 %127 to i64
  %arrayidx70.i.i = getelementptr inbounds i8, i8* %126, i64 %idxprom69.i.i
  %128 = load i8, i8* %arrayidx70.i.i, align 1
  %conv71.i.i = zext i8 %128 to i32
  %xor72.i.i = xor i32 %conv71.i.i, %conv68.i.i
  %conv73.i.i = trunc i32 %xor72.i.i to i8
  store i8 %conv73.i.i, i8* %arrayidx70.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body61.i.i
  %129 = load i32, i32* %j57.i.i, align 4
  %inc75.i.i = add nsw i32 %129, 1
  store i32 %inc75.i.i, i32* %j57.i.i, align 4
  br label %for.cond58.i.i

for.end76.i.i:                                    ; preds = %for.cond58.i.i
  %130 = load i32, i32* %i45.i.i, align 4
  %inc78.i.i = add nsw i32 %130, 1
  store i32 %inc78.i.i, i32* %i45.i.i, align 4
  br label %for.cond46.i.i

for.end79.i.i:                                    ; preds = %for.cond46.i.i
  %131 = load i8, i8* %A.i.i, align 1
  %132 = load i8, i8* %B.i.i, align 1
  %call80.i.i = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %conv81.i.i = zext i8 %call80.i.i to i32
  %133 = load i8*, i8** %c.addr.i.i, align 8
  store i8* %133, i8** %a.addr.i107.i.i, align 8
  %134 = load i8*, i8** %a.addr.i107.i.i, align 8
  store i8* %134, i8** %a.addr.i.i103.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i.i, align 8
  store i32 0, i32* %i.i.i106.i.i, align 4
  br label %for.cond.i.i109.i.i

for.cond.i.i109.i.i:                              ; preds = %for.body.i.i118.i.i, %for.end79.i.i
  %135 = load i32, i32* %i.i.i106.i.i, align 4
  %cmp.i.i108.i.i = icmp sle i32 %135, 1
  br i1 %cmp.i.i108.i.i, label %for.body.i.i118.i.i, label %sec_mult.exit.i

for.body.i.i118.i.i:                              ; preds = %for.cond.i.i109.i.i
  %136 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i.i, align 8
  %137 = load i8*, i8** %a.addr.i.i103.i.i, align 8
  %138 = load i32, i32* %i.i.i106.i.i, align 4
  %idxprom.i.i110.i.i = sext i32 %138 to i64
  %arrayidx.i.i111.i.i = getelementptr inbounds i8, i8* %137, i64 %idxprom.i.i110.i.i
  %139 = load i8, i8* %arrayidx.i.i111.i.i, align 1
  %call.i.i112.i.i = call zeroext i8 %136(i8 zeroext %139) #3
  %conv.i.i113.i.i = zext i8 %call.i.i112.i.i to i32
  %140 = load i8, i8* %result.i.i105.i.i, align 1
  %conv1.i.i114.i.i = zext i8 %140 to i32
  %xor.i.i115.i.i = xor i32 %conv1.i.i114.i.i, %conv.i.i113.i.i
  %conv2.i.i116.i.i = trunc i32 %xor.i.i115.i.i to i8
  store i8 %conv2.i.i116.i.i, i8* %result.i.i105.i.i, align 1
  %141 = load i32, i32* %i.i.i106.i.i, align 4
  %inc.i.i117.i.i = add nsw i32 %141, 1
  store i32 %inc.i.i117.i.i, i32* %i.i.i106.i.i, align 4
  br label %for.cond.i.i109.i.i

sec_mult.exit.i:                                  ; preds = %for.cond.i.i109.i.i
  %142 = load i8, i8* %result.i.i105.i.i, align 1
  %conv83.i.i = zext i8 %142 to i32
  %cmp84.i.i = icmp eq i32 %conv81.i.i, %conv83.i.i
  call void @assert(i1 zeroext %cmp84.i.i) #3
  %arraydecay7.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %arraydecay8.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  store i8* %arraydecay7.i, i8** %from.addr.i63.i, align 8
  store i8* %arraydecay8.i, i8** %to.addr.i64.i, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i65.i, align 8
  store i32 0, i32* %i.i66.i, align 4
  br label %for.cond.i68.i

for.cond.i68.i:                                   ; preds = %for.body.i74.i, %sec_mult.exit.i
  %143 = load i32, i32* %i.i66.i, align 4
  %cmp.i67.i = icmp sle i32 %143, 1
  br i1 %cmp.i67.i, label %for.body.i74.i, label %transform.exit77.i

for.body.i74.i:                                   ; preds = %for.cond.i68.i
  %144 = load i8 (i8)*, i8 (i8)** %f.addr.i65.i, align 8
  %145 = load i8*, i8** %from.addr.i63.i, align 8
  %146 = load i32, i32* %i.i66.i, align 4
  %idxprom.i69.i = sext i32 %146 to i64
  %arrayidx.i70.i = getelementptr inbounds i8, i8* %145, i64 %idxprom.i69.i
  %147 = load i8, i8* %arrayidx.i70.i, align 1
  %call.i71.i = call zeroext i8 %144(i8 zeroext %147) #3
  %148 = load i8*, i8** %to.addr.i64.i, align 8
  %149 = load i32, i32* %i.i66.i, align 4
  %idxprom1.i72.i = sext i32 %149 to i64
  %arrayidx2.i73.i = getelementptr inbounds i8, i8* %148, i64 %idxprom1.i72.i
  store i8 %call.i71.i, i8* %arrayidx2.i73.i, align 1
  %150 = load i32, i32* %i.i66.i, align 4
  %inc.i75.i = add nsw i32 %150, 1
  store i32 %inc.i75.i, i32* %i.i66.i, align 4
  br label %for.cond.i68.i

transform.exit77.i:                               ; preds = %for.cond.i68.i
  %arraydecay9.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  store i8* %arraydecay9.i, i8** %x.addr.i88.i, align 8
  %call.i92.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i92.i, i8* %X.i89.i, align 1
  %151 = load i8, i8* %X.i89.i, align 1
  %conv.i93.i = zext i8 %151 to i32
  %152 = load i8*, i8** %x.addr.i88.i, align 8
  store i8* %152, i8** %a.addr.i.i87.i, align 8
  %153 = load i8*, i8** %a.addr.i.i87.i, align 8
  store i8* %153, i8** %a.addr.i.i.i83.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i84.i, align 8
  store i32 0, i32* %i.i.i.i86.i, align 4
  br label %for.cond.i.i.i95.i

for.cond.i.i.i95.i:                               ; preds = %for.body.i.i.i104.i, %transform.exit77.i
  %154 = load i32, i32* %i.i.i.i86.i, align 4
  %cmp.i.i.i94.i = icmp sle i32 %154, 1
  br i1 %cmp.i.i.i94.i, label %for.body.i.i.i104.i, label %xors.exit.i107.i

for.body.i.i.i104.i:                              ; preds = %for.cond.i.i.i95.i
  %155 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i84.i, align 8
  %156 = load i8*, i8** %a.addr.i.i.i83.i, align 8
  %157 = load i32, i32* %i.i.i.i86.i, align 4
  %idxprom.i.i.i96.i = sext i32 %157 to i64
  %arrayidx.i.i.i97.i = getelementptr inbounds i8, i8* %156, i64 %idxprom.i.i.i96.i
  %158 = load i8, i8* %arrayidx.i.i.i97.i, align 1
  %call.i.i.i98.i = call zeroext i8 %155(i8 zeroext %158) #3
  %conv.i.i.i99.i = zext i8 %call.i.i.i98.i to i32
  %159 = load i8, i8* %result.i.i.i85.i, align 1
  %conv1.i.i.i100.i = zext i8 %159 to i32
  %xor.i.i.i101.i = xor i32 %conv1.i.i.i100.i, %conv.i.i.i99.i
  %conv2.i.i.i102.i = trunc i32 %xor.i.i.i101.i to i8
  store i8 %conv2.i.i.i102.i, i8* %result.i.i.i85.i, align 1
  %160 = load i32, i32* %i.i.i.i86.i, align 4
  %inc.i.i.i103.i = add nsw i32 %160, 1
  store i32 %inc.i.i.i103.i, i32* %i.i.i.i86.i, align 4
  br label %for.cond.i.i.i95.i

xors.exit.i107.i:                                 ; preds = %for.cond.i.i.i95.i
  %161 = load i8, i8* %result.i.i.i85.i, align 1
  %conv2.i105.i = zext i8 %161 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  store i8 1, i8* %i.i90.i, align 1
  br label %for.cond.i110.i

for.cond.i110.i:                                  ; preds = %for.body.i122.i, %xors.exit.i107.i
  %162 = load i8, i8* %i.i90.i, align 1
  %conv4.i108.i = zext i8 %162 to i32
  %cmp5.i109.i = icmp sle i32 %conv4.i108.i, 1
  br i1 %cmp5.i109.i, label %for.body.i122.i, label %for.end.i125.i

for.body.i122.i:                                  ; preds = %for.cond.i110.i
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i111.i, i8* %tmp.i91.i, align 1
  %163 = load i8, i8* %tmp.i91.i, align 1
  %conv8.i112.i = zext i8 %163 to i32
  %164 = load i8*, i8** %x.addr.i88.i, align 8
  %165 = load i8, i8* %164, align 1
  %conv9.i113.i = zext i8 %165 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %164, align 1
  %166 = load i8, i8* %tmp.i91.i, align 1
  %conv11.i116.i = zext i8 %166 to i32
  %167 = load i8*, i8** %x.addr.i88.i, align 8
  %168 = load i8, i8* %i.i90.i, align 1
  %idxprom.i117.i = zext i8 %168 to i64
  %arrayidx12.i118.i = getelementptr inbounds i8, i8* %167, i64 %idxprom.i117.i
  %169 = load i8, i8* %arrayidx12.i118.i, align 1
  %conv13.i119.i = zext i8 %169 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %arrayidx12.i118.i, align 1
  %170 = load i8, i8* %i.i90.i, align 1
  %inc.i123.i = add i8 %170, 1
  store i8 %inc.i123.i, i8* %i.i90.i, align 1
  br label %for.cond.i110.i

for.end.i125.i:                                   ; preds = %for.cond.i110.i
  %171 = load i8, i8* %X.i89.i, align 1
  %conv16.i124.i = zext i8 %171 to i32
  %172 = load i8*, i8** %x.addr.i88.i, align 8
  store i8* %172, i8** %a.addr.i25.i82.i, align 8
  %173 = load i8*, i8** %a.addr.i25.i82.i, align 8
  store i8* %173, i8** %a.addr.i.i21.i78.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i79.i, align 8
  store i32 0, i32* %i.i.i24.i81.i, align 4
  br label %for.cond.i.i27.i127.i

for.cond.i.i27.i127.i:                            ; preds = %for.body.i.i36.i136.i, %for.end.i125.i
  %174 = load i32, i32* %i.i.i24.i81.i, align 4
  %cmp.i.i26.i126.i = icmp sle i32 %174, 1
  br i1 %cmp.i.i26.i126.i, label %for.body.i.i36.i136.i, label %refresh_masks.exit139.i

for.body.i.i36.i136.i:                            ; preds = %for.cond.i.i27.i127.i
  %175 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i79.i, align 8
  %176 = load i8*, i8** %a.addr.i.i21.i78.i, align 8
  %177 = load i32, i32* %i.i.i24.i81.i, align 4
  %idxprom.i.i28.i128.i = sext i32 %177 to i64
  %arrayidx.i.i29.i129.i = getelementptr inbounds i8, i8* %176, i64 %idxprom.i.i28.i128.i
  %178 = load i8, i8* %arrayidx.i.i29.i129.i, align 1
  %call.i.i30.i130.i = call zeroext i8 %175(i8 zeroext %178) #3
  %conv.i.i31.i131.i = zext i8 %call.i.i30.i130.i to i32
  %179 = load i8, i8* %result.i.i23.i80.i, align 1
  %conv1.i.i32.i132.i = zext i8 %179 to i32
  %xor.i.i33.i133.i = xor i32 %conv1.i.i32.i132.i, %conv.i.i31.i131.i
  %conv2.i.i34.i134.i = trunc i32 %xor.i.i33.i133.i to i8
  store i8 %conv2.i.i34.i134.i, i8* %result.i.i23.i80.i, align 1
  %180 = load i32, i32* %i.i.i24.i81.i, align 4
  %inc.i.i35.i135.i = add nsw i32 %180, 1
  store i32 %inc.i.i35.i135.i, i32* %i.i.i24.i81.i, align 4
  br label %for.cond.i.i27.i127.i

refresh_masks.exit139.i:                          ; preds = %for.cond.i.i27.i127.i
  %181 = load i8, i8* %result.i.i23.i80.i, align 1
  %conv18.i137.i = zext i8 %181 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [2 x i8], [2 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  store i8* %arraydecay10.i, i8** %a.addr.i155.i, align 8
  store i8* %arraydecay11.i, i8** %b.addr.i156.i, align 8
  store i8* %arraydecay12.i, i8** %c.addr.i157.i, align 8
  %call.i165.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i165.i, i8* %A.i158.i, align 1
  %call1.i166.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i166.i, i8* %B.i159.i, align 1
  %182 = load i8, i8* %A.i158.i, align 1
  %conv.i167.i = zext i8 %182 to i32
  %183 = load i8*, i8** %a.addr.i155.i, align 8
  store i8* %183, i8** %a.addr.i.i154.i, align 8
  %184 = load i8*, i8** %a.addr.i.i154.i, align 8
  store i8* %184, i8** %a.addr.i.i.i150.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i151.i, align 8
  store i32 0, i32* %i.i.i.i153.i, align 4
  br label %for.cond.i.i.i169.i

for.cond.i.i.i169.i:                              ; preds = %for.body.i.i.i178.i, %refresh_masks.exit139.i
  %185 = load i32, i32* %i.i.i.i153.i, align 4
  %cmp.i.i.i168.i = icmp sle i32 %185, 1
  br i1 %cmp.i.i.i168.i, label %for.body.i.i.i178.i, label %xors.exit.i182.i

for.body.i.i.i178.i:                              ; preds = %for.cond.i.i.i169.i
  %186 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i151.i, align 8
  %187 = load i8*, i8** %a.addr.i.i.i150.i, align 8
  %188 = load i32, i32* %i.i.i.i153.i, align 4
  %idxprom.i.i.i170.i = sext i32 %188 to i64
  %arrayidx.i.i.i171.i = getelementptr inbounds i8, i8* %187, i64 %idxprom.i.i.i170.i
  %189 = load i8, i8* %arrayidx.i.i.i171.i, align 1
  %call.i.i.i172.i = call zeroext i8 %186(i8 zeroext %189) #3
  %conv.i.i.i173.i = zext i8 %call.i.i.i172.i to i32
  %190 = load i8, i8* %result.i.i.i152.i, align 1
  %conv1.i.i.i174.i = zext i8 %190 to i32
  %xor.i.i.i175.i = xor i32 %conv1.i.i.i174.i, %conv.i.i.i173.i
  %conv2.i.i.i176.i = trunc i32 %xor.i.i.i175.i to i8
  store i8 %conv2.i.i.i176.i, i8* %result.i.i.i152.i, align 1
  %191 = load i32, i32* %i.i.i.i153.i, align 4
  %inc.i.i.i177.i = add nsw i32 %191, 1
  store i32 %inc.i.i.i177.i, i32* %i.i.i.i153.i, align 4
  br label %for.cond.i.i.i169.i

xors.exit.i182.i:                                 ; preds = %for.cond.i.i.i169.i
  %192 = load i8, i8* %result.i.i.i152.i, align 1
  %conv3.i179.i = zext i8 %192 to i32
  %cmp.i180.i = icmp eq i32 %conv.i167.i, %conv3.i179.i
  call void @assume(i1 zeroext %cmp.i180.i) #3
  %193 = load i8, i8* %B.i159.i, align 1
  %conv5.i181.i = zext i8 %193 to i32
  %194 = load i8*, i8** %b.addr.i156.i, align 8
  store i8* %194, i8** %a.addr.i90.i149.i, align 8
  %195 = load i8*, i8** %a.addr.i90.i149.i, align 8
  store i8* %195, i8** %a.addr.i.i86.i145.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i146.i, align 8
  store i32 0, i32* %i.i.i89.i148.i, align 4
  br label %for.cond.i.i92.i184.i

for.cond.i.i92.i184.i:                            ; preds = %for.body.i.i101.i193.i, %xors.exit.i182.i
  %196 = load i32, i32* %i.i.i89.i148.i, align 4
  %cmp.i.i91.i183.i = icmp sle i32 %196, 1
  br i1 %cmp.i.i91.i183.i, label %for.body.i.i101.i193.i, label %xors.exit102.i196.i

for.body.i.i101.i193.i:                           ; preds = %for.cond.i.i92.i184.i
  %197 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i146.i, align 8
  %198 = load i8*, i8** %a.addr.i.i86.i145.i, align 8
  %199 = load i32, i32* %i.i.i89.i148.i, align 4
  %idxprom.i.i93.i185.i = sext i32 %199 to i64
  %arrayidx.i.i94.i186.i = getelementptr inbounds i8, i8* %198, i64 %idxprom.i.i93.i185.i
  %200 = load i8, i8* %arrayidx.i.i94.i186.i, align 1
  %call.i.i95.i187.i = call zeroext i8 %197(i8 zeroext %200) #3
  %conv.i.i96.i188.i = zext i8 %call.i.i95.i187.i to i32
  %201 = load i8, i8* %result.i.i88.i147.i, align 1
  %conv1.i.i97.i189.i = zext i8 %201 to i32
  %xor.i.i98.i190.i = xor i32 %conv1.i.i97.i189.i, %conv.i.i96.i188.i
  %conv2.i.i99.i191.i = trunc i32 %xor.i.i98.i190.i to i8
  store i8 %conv2.i.i99.i191.i, i8* %result.i.i88.i147.i, align 1
  %202 = load i32, i32* %i.i.i89.i148.i, align 4
  %inc.i.i100.i192.i = add nsw i32 %202, 1
  store i32 %inc.i.i100.i192.i, i32* %i.i.i89.i148.i, align 4
  br label %for.cond.i.i92.i184.i

xors.exit102.i196.i:                              ; preds = %for.cond.i.i92.i184.i
  %203 = load i8, i8* %result.i.i88.i147.i, align 1
  %conv7.i194.i = zext i8 %203 to i32
  %cmp8.i195.i = icmp eq i32 %conv5.i181.i, %conv7.i194.i
  call void @assume(i1 zeroext %cmp8.i195.i) #3
  store i32 0, i32* %i.i161.i, align 4
  br label %for.cond.i198.i

for.cond.i198.i:                                  ; preds = %for.end.i234.i, %xors.exit102.i196.i
  %204 = load i32, i32* %i.i161.i, align 4
  %cmp10.i197.i = icmp sle i32 %204, 1
  br i1 %cmp10.i197.i, label %for.body.i200.i, label %for.end44.i236.i

for.body.i200.i:                                  ; preds = %for.cond.i198.i
  %205 = load i32, i32* %i.i161.i, align 4
  %add.i199.i = add nsw i32 %205, 1
  store i32 %add.i199.i, i32* %j.i162.i, align 4
  br label %for.cond12.i202.i

for.cond12.i202.i:                                ; preds = %for.body15.i232.i, %for.body.i200.i
  %206 = load i32, i32* %j.i162.i, align 4
  %cmp13.i201.i = icmp sle i32 %206, 1
  br i1 %cmp13.i201.i, label %for.body15.i232.i, label %for.end.i234.i

for.body15.i232.i:                                ; preds = %for.cond12.i202.i
  %call16.i203.i = call zeroext i8 (...) @rand() #3
  %207 = load i32, i32* %i.i161.i, align 4
  %idxprom.i204.i = sext i32 %207 to i64
  %arrayidx.i205.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom.i204.i
  %208 = load i32, i32* %j.i162.i, align 4
  %idxprom17.i206.i = sext i32 %208 to i64
  %arrayidx18.i207.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i205.i, i64 0, i64 %idxprom17.i206.i
  store i8 %call16.i203.i, i8* %arrayidx18.i207.i, align 1
  %209 = load i32, i32* %i.i161.i, align 4
  %idxprom19.i208.i = sext i32 %209 to i64
  %arrayidx20.i209.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i208.i
  %210 = load i32, i32* %j.i162.i, align 4
  %idxprom21.i210.i = sext i32 %210 to i64
  %arrayidx22.i211.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i209.i, i64 0, i64 %idxprom21.i210.i
  %211 = load i8, i8* %arrayidx22.i211.i, align 1
  %conv23.i212.i = zext i8 %211 to i32
  %212 = load i8*, i8** %a.addr.i155.i, align 8
  %213 = load i32, i32* %i.i161.i, align 4
  %idxprom24.i213.i = sext i32 %213 to i64
  %arrayidx25.i214.i = getelementptr inbounds i8, i8* %212, i64 %idxprom24.i213.i
  %214 = load i8, i8* %arrayidx25.i214.i, align 1
  %215 = load i8*, i8** %b.addr.i156.i, align 8
  %216 = load i32, i32* %j.i162.i, align 4
  %idxprom26.i215.i = sext i32 %216 to i64
  %arrayidx27.i216.i = getelementptr inbounds i8, i8* %215, i64 %idxprom26.i215.i
  %217 = load i8, i8* %arrayidx27.i216.i, align 1
  %call28.i217.i = call zeroext i8 @mult(i8 zeroext %214, i8 zeroext %217) #3
  %conv29.i218.i = zext i8 %call28.i217.i to i32
  %xor.i219.i = xor i32 %conv23.i212.i, %conv29.i218.i
  %218 = load i8*, i8** %a.addr.i155.i, align 8
  %219 = load i32, i32* %j.i162.i, align 4
  %idxprom30.i220.i = sext i32 %219 to i64
  %arrayidx31.i221.i = getelementptr inbounds i8, i8* %218, i64 %idxprom30.i220.i
  %220 = load i8, i8* %arrayidx31.i221.i, align 1
  %221 = load i8*, i8** %b.addr.i156.i, align 8
  %222 = load i32, i32* %i.i161.i, align 4
  %idxprom32.i222.i = sext i32 %222 to i64
  %arrayidx33.i223.i = getelementptr inbounds i8, i8* %221, i64 %idxprom32.i222.i
  %223 = load i8, i8* %arrayidx33.i223.i, align 1
  %call34.i224.i = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %223) #3
  %conv35.i225.i = zext i8 %call34.i224.i to i32
  %xor36.i226.i = xor i32 %xor.i219.i, %conv35.i225.i
  %conv37.i227.i = trunc i32 %xor36.i226.i to i8
  %224 = load i32, i32* %j.i162.i, align 4
  %idxprom38.i228.i = sext i32 %224 to i64
  %arrayidx39.i229.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom38.i228.i
  %225 = load i32, i32* %i.i161.i, align 4
  %idxprom40.i230.i = sext i32 %225 to i64
  %arrayidx41.i231.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i229.i, i64 0, i64 %idxprom40.i230.i
  store i8 %conv37.i227.i, i8* %arrayidx41.i231.i, align 1
  %226 = load i32, i32* %j.i162.i, align 4
  %inc.i233.i = add nsw i32 %226, 1
  store i32 %inc.i233.i, i32* %j.i162.i, align 4
  br label %for.cond12.i202.i

for.end.i234.i:                                   ; preds = %for.cond12.i202.i
  %227 = load i32, i32* %i.i161.i, align 4
  %inc43.i235.i = add nsw i32 %227, 1
  store i32 %inc43.i235.i, i32* %i.i161.i, align 4
  br label %for.cond.i198.i

for.end44.i236.i:                                 ; preds = %for.cond.i198.i
  store i32 0, i32* %i45.i163.i, align 4
  br label %for.cond46.i238.i

for.cond46.i238.i:                                ; preds = %for.end76.i264.i, %for.end44.i236.i
  %228 = load i32, i32* %i45.i163.i, align 4
  %cmp47.i237.i = icmp sle i32 %228, 1
  br i1 %cmp47.i237.i, label %for.body49.i246.i, label %for.end79.i268.i

for.body49.i246.i:                                ; preds = %for.cond46.i238.i
  %229 = load i8*, i8** %a.addr.i155.i, align 8
  %230 = load i32, i32* %i45.i163.i, align 4
  %idxprom50.i239.i = sext i32 %230 to i64
  %arrayidx51.i240.i = getelementptr inbounds i8, i8* %229, i64 %idxprom50.i239.i
  %231 = load i8, i8* %arrayidx51.i240.i, align 1
  %232 = load i8*, i8** %b.addr.i156.i, align 8
  %233 = load i32, i32* %i45.i163.i, align 4
  %idxprom52.i241.i = sext i32 %233 to i64
  %arrayidx53.i242.i = getelementptr inbounds i8, i8* %232, i64 %idxprom52.i241.i
  %234 = load i8, i8* %arrayidx53.i242.i, align 1
  %call54.i243.i = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %234) #3
  %235 = load i8*, i8** %c.addr.i157.i, align 8
  %236 = load i32, i32* %i45.i163.i, align 4
  %idxprom55.i244.i = sext i32 %236 to i64
  %arrayidx56.i245.i = getelementptr inbounds i8, i8* %235, i64 %idxprom55.i244.i
  store i8 %call54.i243.i, i8* %arrayidx56.i245.i, align 1
  store i32 0, i32* %j57.i164.i, align 4
  br label %for.cond58.i248.i

for.cond58.i248.i:                                ; preds = %if.end.i262.i, %for.body49.i246.i
  %237 = load i32, i32* %j57.i164.i, align 4
  %cmp59.i247.i = icmp sle i32 %237, 1
  br i1 %cmp59.i247.i, label %for.body61.i250.i, label %for.end76.i264.i

for.body61.i250.i:                                ; preds = %for.cond58.i248.i
  %238 = load i32, i32* %j57.i164.i, align 4
  %239 = load i32, i32* %i45.i163.i, align 4
  %cmp62.i249.i = icmp ne i32 %238, %239
  br i1 %cmp62.i249.i, label %if.then.i261.i, label %if.end.i262.i

if.then.i261.i:                                   ; preds = %for.body61.i250.i
  %240 = load i32, i32* %i45.i163.i, align 4
  %idxprom64.i251.i = sext i32 %240 to i64
  %arrayidx65.i252.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom64.i251.i
  %241 = load i32, i32* %j57.i164.i, align 4
  %idxprom66.i253.i = sext i32 %241 to i64
  %arrayidx67.i254.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i252.i, i64 0, i64 %idxprom66.i253.i
  %242 = load i8, i8* %arrayidx67.i254.i, align 1
  %conv68.i255.i = zext i8 %242 to i32
  %243 = load i8*, i8** %c.addr.i157.i, align 8
  %244 = load i32, i32* %i45.i163.i, align 4
  %idxprom69.i256.i = sext i32 %244 to i64
  %arrayidx70.i257.i = getelementptr inbounds i8, i8* %243, i64 %idxprom69.i256.i
  %245 = load i8, i8* %arrayidx70.i257.i, align 1
  %conv71.i258.i = zext i8 %245 to i32
  %xor72.i259.i = xor i32 %conv71.i258.i, %conv68.i255.i
  %conv73.i260.i = trunc i32 %xor72.i259.i to i8
  store i8 %conv73.i260.i, i8* %arrayidx70.i257.i, align 1
  br label %if.end.i262.i

if.end.i262.i:                                    ; preds = %if.then.i261.i, %for.body61.i250.i
  %246 = load i32, i32* %j57.i164.i, align 4
  %inc75.i263.i = add nsw i32 %246, 1
  store i32 %inc75.i263.i, i32* %j57.i164.i, align 4
  br label %for.cond58.i248.i

for.end76.i264.i:                                 ; preds = %for.cond58.i248.i
  %247 = load i32, i32* %i45.i163.i, align 4
  %inc78.i265.i = add nsw i32 %247, 1
  store i32 %inc78.i265.i, i32* %i45.i163.i, align 4
  br label %for.cond46.i238.i

for.end79.i268.i:                                 ; preds = %for.cond46.i238.i
  %248 = load i8, i8* %A.i158.i, align 1
  %249 = load i8, i8* %B.i159.i, align 1
  %call80.i266.i = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249) #3
  %conv81.i267.i = zext i8 %call80.i266.i to i32
  %250 = load i8*, i8** %c.addr.i157.i, align 8
  store i8* %250, i8** %a.addr.i107.i144.i, align 8
  %251 = load i8*, i8** %a.addr.i107.i144.i, align 8
  store i8* %251, i8** %a.addr.i.i103.i140.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i141.i, align 8
  store i32 0, i32* %i.i.i106.i143.i, align 4
  br label %for.cond.i.i109.i270.i

for.cond.i.i109.i270.i:                           ; preds = %for.body.i.i118.i279.i, %for.end79.i268.i
  %252 = load i32, i32* %i.i.i106.i143.i, align 4
  %cmp.i.i108.i269.i = icmp sle i32 %252, 1
  br i1 %cmp.i.i108.i269.i, label %for.body.i.i118.i279.i, label %sec_mult.exit282.i

for.body.i.i118.i279.i:                           ; preds = %for.cond.i.i109.i270.i
  %253 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i141.i, align 8
  %254 = load i8*, i8** %a.addr.i.i103.i140.i, align 8
  %255 = load i32, i32* %i.i.i106.i143.i, align 4
  %idxprom.i.i110.i271.i = sext i32 %255 to i64
  %arrayidx.i.i111.i272.i = getelementptr inbounds i8, i8* %254, i64 %idxprom.i.i110.i271.i
  %256 = load i8, i8* %arrayidx.i.i111.i272.i, align 1
  %call.i.i112.i273.i = call zeroext i8 %253(i8 zeroext %256) #3
  %conv.i.i113.i274.i = zext i8 %call.i.i112.i273.i to i32
  %257 = load i8, i8* %result.i.i105.i142.i, align 1
  %conv1.i.i114.i275.i = zext i8 %257 to i32
  %xor.i.i115.i276.i = xor i32 %conv1.i.i114.i275.i, %conv.i.i113.i274.i
  %conv2.i.i116.i277.i = trunc i32 %xor.i.i115.i276.i to i8
  store i8 %conv2.i.i116.i277.i, i8* %result.i.i105.i142.i, align 1
  %258 = load i32, i32* %i.i.i106.i143.i, align 4
  %inc.i.i117.i278.i = add nsw i32 %258, 1
  store i32 %inc.i.i117.i278.i, i32* %i.i.i106.i143.i, align 4
  br label %for.cond.i.i109.i270.i

sec_mult.exit282.i:                               ; preds = %for.cond.i.i109.i270.i
  %259 = load i8, i8* %result.i.i105.i142.i, align 1
  %conv83.i280.i = zext i8 %259 to i32
  %cmp84.i281.i = icmp eq i32 %conv81.i267.i, %conv83.i280.i
  call void @assert(i1 zeroext %cmp84.i281.i) #3
  %arraydecay13.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  store i8* %arraydecay13.i, i8** %from.addr.i283.i, align 8
  store i8* %arraydecay14.i, i8** %to.addr.i284.i, align 8
  store i8 (i8)* @exp16, i8 (i8)** %f.addr.i285.i, align 8
  store i32 0, i32* %i.i286.i, align 4
  br label %for.cond.i288.i

for.cond.i288.i:                                  ; preds = %for.body.i294.i, %sec_mult.exit282.i
  %260 = load i32, i32* %i.i286.i, align 4
  %cmp.i287.i = icmp sle i32 %260, 1
  br i1 %cmp.i287.i, label %for.body.i294.i, label %transform.exit297.i

for.body.i294.i:                                  ; preds = %for.cond.i288.i
  %261 = load i8 (i8)*, i8 (i8)** %f.addr.i285.i, align 8
  %262 = load i8*, i8** %from.addr.i283.i, align 8
  %263 = load i32, i32* %i.i286.i, align 4
  %idxprom.i289.i = sext i32 %263 to i64
  %arrayidx.i290.i = getelementptr inbounds i8, i8* %262, i64 %idxprom.i289.i
  %264 = load i8, i8* %arrayidx.i290.i, align 1
  %call.i291.i = call zeroext i8 %261(i8 zeroext %264) #3
  %265 = load i8*, i8** %to.addr.i284.i, align 8
  %266 = load i32, i32* %i.i286.i, align 4
  %idxprom1.i292.i = sext i32 %266 to i64
  %arrayidx2.i293.i = getelementptr inbounds i8, i8* %265, i64 %idxprom1.i292.i
  store i8 %call.i291.i, i8* %arrayidx2.i293.i, align 1
  %267 = load i32, i32* %i.i286.i, align 4
  %inc.i295.i = add nsw i32 %267, 1
  store i32 %inc.i295.i, i32* %i.i286.i, align 4
  br label %for.cond.i288.i

transform.exit297.i:                              ; preds = %for.cond.i288.i
  %arraydecay15.i = getelementptr inbounds [2 x i8], [2 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [2 x i8], [2 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  store i8* %arraydecay15.i, i8** %a.addr.i313.i, align 8
  store i8* %arraydecay16.i, i8** %b.addr.i314.i, align 8
  store i8* %arraydecay17.i, i8** %c.addr.i315.i, align 8
  %call.i323.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i323.i, i8* %A.i316.i, align 1
  %call1.i324.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i324.i, i8* %B.i317.i, align 1
  %268 = load i8, i8* %A.i316.i, align 1
  %conv.i325.i = zext i8 %268 to i32
  %269 = load i8*, i8** %a.addr.i313.i, align 8
  store i8* %269, i8** %a.addr.i.i312.i, align 8
  %270 = load i8*, i8** %a.addr.i.i312.i, align 8
  store i8* %270, i8** %a.addr.i.i.i308.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i309.i, align 8
  store i32 0, i32* %i.i.i.i311.i, align 4
  br label %for.cond.i.i.i327.i

for.cond.i.i.i327.i:                              ; preds = %for.body.i.i.i336.i, %transform.exit297.i
  %271 = load i32, i32* %i.i.i.i311.i, align 4
  %cmp.i.i.i326.i = icmp sle i32 %271, 1
  br i1 %cmp.i.i.i326.i, label %for.body.i.i.i336.i, label %xors.exit.i340.i

for.body.i.i.i336.i:                              ; preds = %for.cond.i.i.i327.i
  %272 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i309.i, align 8
  %273 = load i8*, i8** %a.addr.i.i.i308.i, align 8
  %274 = load i32, i32* %i.i.i.i311.i, align 4
  %idxprom.i.i.i328.i = sext i32 %274 to i64
  %arrayidx.i.i.i329.i = getelementptr inbounds i8, i8* %273, i64 %idxprom.i.i.i328.i
  %275 = load i8, i8* %arrayidx.i.i.i329.i, align 1
  %call.i.i.i330.i = call zeroext i8 %272(i8 zeroext %275) #3
  %conv.i.i.i331.i = zext i8 %call.i.i.i330.i to i32
  %276 = load i8, i8* %result.i.i.i310.i, align 1
  %conv1.i.i.i332.i = zext i8 %276 to i32
  %xor.i.i.i333.i = xor i32 %conv1.i.i.i332.i, %conv.i.i.i331.i
  %conv2.i.i.i334.i = trunc i32 %xor.i.i.i333.i to i8
  store i8 %conv2.i.i.i334.i, i8* %result.i.i.i310.i, align 1
  %277 = load i32, i32* %i.i.i.i311.i, align 4
  %inc.i.i.i335.i = add nsw i32 %277, 1
  store i32 %inc.i.i.i335.i, i32* %i.i.i.i311.i, align 4
  br label %for.cond.i.i.i327.i

xors.exit.i340.i:                                 ; preds = %for.cond.i.i.i327.i
  %278 = load i8, i8* %result.i.i.i310.i, align 1
  %conv3.i337.i = zext i8 %278 to i32
  %cmp.i338.i = icmp eq i32 %conv.i325.i, %conv3.i337.i
  call void @assume(i1 zeroext %cmp.i338.i) #3
  %279 = load i8, i8* %B.i317.i, align 1
  %conv5.i339.i = zext i8 %279 to i32
  %280 = load i8*, i8** %b.addr.i314.i, align 8
  store i8* %280, i8** %a.addr.i90.i307.i, align 8
  %281 = load i8*, i8** %a.addr.i90.i307.i, align 8
  store i8* %281, i8** %a.addr.i.i86.i303.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i304.i, align 8
  store i32 0, i32* %i.i.i89.i306.i, align 4
  br label %for.cond.i.i92.i342.i

for.cond.i.i92.i342.i:                            ; preds = %for.body.i.i101.i351.i, %xors.exit.i340.i
  %282 = load i32, i32* %i.i.i89.i306.i, align 4
  %cmp.i.i91.i341.i = icmp sle i32 %282, 1
  br i1 %cmp.i.i91.i341.i, label %for.body.i.i101.i351.i, label %xors.exit102.i354.i

for.body.i.i101.i351.i:                           ; preds = %for.cond.i.i92.i342.i
  %283 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i304.i, align 8
  %284 = load i8*, i8** %a.addr.i.i86.i303.i, align 8
  %285 = load i32, i32* %i.i.i89.i306.i, align 4
  %idxprom.i.i93.i343.i = sext i32 %285 to i64
  %arrayidx.i.i94.i344.i = getelementptr inbounds i8, i8* %284, i64 %idxprom.i.i93.i343.i
  %286 = load i8, i8* %arrayidx.i.i94.i344.i, align 1
  %call.i.i95.i345.i = call zeroext i8 %283(i8 zeroext %286) #3
  %conv.i.i96.i346.i = zext i8 %call.i.i95.i345.i to i32
  %287 = load i8, i8* %result.i.i88.i305.i, align 1
  %conv1.i.i97.i347.i = zext i8 %287 to i32
  %xor.i.i98.i348.i = xor i32 %conv1.i.i97.i347.i, %conv.i.i96.i346.i
  %conv2.i.i99.i349.i = trunc i32 %xor.i.i98.i348.i to i8
  store i8 %conv2.i.i99.i349.i, i8* %result.i.i88.i305.i, align 1
  %288 = load i32, i32* %i.i.i89.i306.i, align 4
  %inc.i.i100.i350.i = add nsw i32 %288, 1
  store i32 %inc.i.i100.i350.i, i32* %i.i.i89.i306.i, align 4
  br label %for.cond.i.i92.i342.i

xors.exit102.i354.i:                              ; preds = %for.cond.i.i92.i342.i
  %289 = load i8, i8* %result.i.i88.i305.i, align 1
  %conv7.i352.i = zext i8 %289 to i32
  %cmp8.i353.i = icmp eq i32 %conv5.i339.i, %conv7.i352.i
  call void @assume(i1 zeroext %cmp8.i353.i) #3
  store i32 0, i32* %i.i319.i, align 4
  br label %for.cond.i356.i

for.cond.i356.i:                                  ; preds = %for.end.i392.i, %xors.exit102.i354.i
  %290 = load i32, i32* %i.i319.i, align 4
  %cmp10.i355.i = icmp sle i32 %290, 1
  br i1 %cmp10.i355.i, label %for.body.i358.i, label %for.end44.i394.i

for.body.i358.i:                                  ; preds = %for.cond.i356.i
  %291 = load i32, i32* %i.i319.i, align 4
  %add.i357.i = add nsw i32 %291, 1
  store i32 %add.i357.i, i32* %j.i320.i, align 4
  br label %for.cond12.i360.i

for.cond12.i360.i:                                ; preds = %for.body15.i390.i, %for.body.i358.i
  %292 = load i32, i32* %j.i320.i, align 4
  %cmp13.i359.i = icmp sle i32 %292, 1
  br i1 %cmp13.i359.i, label %for.body15.i390.i, label %for.end.i392.i

for.body15.i390.i:                                ; preds = %for.cond12.i360.i
  %call16.i361.i = call zeroext i8 (...) @rand() #3
  %293 = load i32, i32* %i.i319.i, align 4
  %idxprom.i362.i = sext i32 %293 to i64
  %arrayidx.i363.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom.i362.i
  %294 = load i32, i32* %j.i320.i, align 4
  %idxprom17.i364.i = sext i32 %294 to i64
  %arrayidx18.i365.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i363.i, i64 0, i64 %idxprom17.i364.i
  store i8 %call16.i361.i, i8* %arrayidx18.i365.i, align 1
  %295 = load i32, i32* %i.i319.i, align 4
  %idxprom19.i366.i = sext i32 %295 to i64
  %arrayidx20.i367.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i366.i
  %296 = load i32, i32* %j.i320.i, align 4
  %idxprom21.i368.i = sext i32 %296 to i64
  %arrayidx22.i369.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i367.i, i64 0, i64 %idxprom21.i368.i
  %297 = load i8, i8* %arrayidx22.i369.i, align 1
  %conv23.i370.i = zext i8 %297 to i32
  %298 = load i8*, i8** %a.addr.i313.i, align 8
  %299 = load i32, i32* %i.i319.i, align 4
  %idxprom24.i371.i = sext i32 %299 to i64
  %arrayidx25.i372.i = getelementptr inbounds i8, i8* %298, i64 %idxprom24.i371.i
  %300 = load i8, i8* %arrayidx25.i372.i, align 1
  %301 = load i8*, i8** %b.addr.i314.i, align 8
  %302 = load i32, i32* %j.i320.i, align 4
  %idxprom26.i373.i = sext i32 %302 to i64
  %arrayidx27.i374.i = getelementptr inbounds i8, i8* %301, i64 %idxprom26.i373.i
  %303 = load i8, i8* %arrayidx27.i374.i, align 1
  %call28.i375.i = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %303) #3
  %conv29.i376.i = zext i8 %call28.i375.i to i32
  %xor.i377.i = xor i32 %conv23.i370.i, %conv29.i376.i
  %304 = load i8*, i8** %a.addr.i313.i, align 8
  %305 = load i32, i32* %j.i320.i, align 4
  %idxprom30.i378.i = sext i32 %305 to i64
  %arrayidx31.i379.i = getelementptr inbounds i8, i8* %304, i64 %idxprom30.i378.i
  %306 = load i8, i8* %arrayidx31.i379.i, align 1
  %307 = load i8*, i8** %b.addr.i314.i, align 8
  %308 = load i32, i32* %i.i319.i, align 4
  %idxprom32.i380.i = sext i32 %308 to i64
  %arrayidx33.i381.i = getelementptr inbounds i8, i8* %307, i64 %idxprom32.i380.i
  %309 = load i8, i8* %arrayidx33.i381.i, align 1
  %call34.i382.i = call zeroext i8 @mult(i8 zeroext %306, i8 zeroext %309) #3
  %conv35.i383.i = zext i8 %call34.i382.i to i32
  %xor36.i384.i = xor i32 %xor.i377.i, %conv35.i383.i
  %conv37.i385.i = trunc i32 %xor36.i384.i to i8
  %310 = load i32, i32* %j.i320.i, align 4
  %idxprom38.i386.i = sext i32 %310 to i64
  %arrayidx39.i387.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom38.i386.i
  %311 = load i32, i32* %i.i319.i, align 4
  %idxprom40.i388.i = sext i32 %311 to i64
  %arrayidx41.i389.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i387.i, i64 0, i64 %idxprom40.i388.i
  store i8 %conv37.i385.i, i8* %arrayidx41.i389.i, align 1
  %312 = load i32, i32* %j.i320.i, align 4
  %inc.i391.i = add nsw i32 %312, 1
  store i32 %inc.i391.i, i32* %j.i320.i, align 4
  br label %for.cond12.i360.i

for.end.i392.i:                                   ; preds = %for.cond12.i360.i
  %313 = load i32, i32* %i.i319.i, align 4
  %inc43.i393.i = add nsw i32 %313, 1
  store i32 %inc43.i393.i, i32* %i.i319.i, align 4
  br label %for.cond.i356.i

for.end44.i394.i:                                 ; preds = %for.cond.i356.i
  store i32 0, i32* %i45.i321.i, align 4
  br label %for.cond46.i396.i

for.cond46.i396.i:                                ; preds = %for.end76.i422.i, %for.end44.i394.i
  %314 = load i32, i32* %i45.i321.i, align 4
  %cmp47.i395.i = icmp sle i32 %314, 1
  br i1 %cmp47.i395.i, label %for.body49.i404.i, label %for.end79.i426.i

for.body49.i404.i:                                ; preds = %for.cond46.i396.i
  %315 = load i8*, i8** %a.addr.i313.i, align 8
  %316 = load i32, i32* %i45.i321.i, align 4
  %idxprom50.i397.i = sext i32 %316 to i64
  %arrayidx51.i398.i = getelementptr inbounds i8, i8* %315, i64 %idxprom50.i397.i
  %317 = load i8, i8* %arrayidx51.i398.i, align 1
  %318 = load i8*, i8** %b.addr.i314.i, align 8
  %319 = load i32, i32* %i45.i321.i, align 4
  %idxprom52.i399.i = sext i32 %319 to i64
  %arrayidx53.i400.i = getelementptr inbounds i8, i8* %318, i64 %idxprom52.i399.i
  %320 = load i8, i8* %arrayidx53.i400.i, align 1
  %call54.i401.i = call zeroext i8 @mult(i8 zeroext %317, i8 zeroext %320) #3
  %321 = load i8*, i8** %c.addr.i315.i, align 8
  %322 = load i32, i32* %i45.i321.i, align 4
  %idxprom55.i402.i = sext i32 %322 to i64
  %arrayidx56.i403.i = getelementptr inbounds i8, i8* %321, i64 %idxprom55.i402.i
  store i8 %call54.i401.i, i8* %arrayidx56.i403.i, align 1
  store i32 0, i32* %j57.i322.i, align 4
  br label %for.cond58.i406.i

for.cond58.i406.i:                                ; preds = %if.end.i420.i, %for.body49.i404.i
  %323 = load i32, i32* %j57.i322.i, align 4
  %cmp59.i405.i = icmp sle i32 %323, 1
  br i1 %cmp59.i405.i, label %for.body61.i408.i, label %for.end76.i422.i

for.body61.i408.i:                                ; preds = %for.cond58.i406.i
  %324 = load i32, i32* %j57.i322.i, align 4
  %325 = load i32, i32* %i45.i321.i, align 4
  %cmp62.i407.i = icmp ne i32 %324, %325
  br i1 %cmp62.i407.i, label %if.then.i419.i, label %if.end.i420.i

if.then.i419.i:                                   ; preds = %for.body61.i408.i
  %326 = load i32, i32* %i45.i321.i, align 4
  %idxprom64.i409.i = sext i32 %326 to i64
  %arrayidx65.i410.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom64.i409.i
  %327 = load i32, i32* %j57.i322.i, align 4
  %idxprom66.i411.i = sext i32 %327 to i64
  %arrayidx67.i412.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i410.i, i64 0, i64 %idxprom66.i411.i
  %328 = load i8, i8* %arrayidx67.i412.i, align 1
  %conv68.i413.i = zext i8 %328 to i32
  %329 = load i8*, i8** %c.addr.i315.i, align 8
  %330 = load i32, i32* %i45.i321.i, align 4
  %idxprom69.i414.i = sext i32 %330 to i64
  %arrayidx70.i415.i = getelementptr inbounds i8, i8* %329, i64 %idxprom69.i414.i
  %331 = load i8, i8* %arrayidx70.i415.i, align 1
  %conv71.i416.i = zext i8 %331 to i32
  %xor72.i417.i = xor i32 %conv71.i416.i, %conv68.i413.i
  %conv73.i418.i = trunc i32 %xor72.i417.i to i8
  store i8 %conv73.i418.i, i8* %arrayidx70.i415.i, align 1
  br label %if.end.i420.i

if.end.i420.i:                                    ; preds = %if.then.i419.i, %for.body61.i408.i
  %332 = load i32, i32* %j57.i322.i, align 4
  %inc75.i421.i = add nsw i32 %332, 1
  store i32 %inc75.i421.i, i32* %j57.i322.i, align 4
  br label %for.cond58.i406.i

for.end76.i422.i:                                 ; preds = %for.cond58.i406.i
  %333 = load i32, i32* %i45.i321.i, align 4
  %inc78.i423.i = add nsw i32 %333, 1
  store i32 %inc78.i423.i, i32* %i45.i321.i, align 4
  br label %for.cond46.i396.i

for.end79.i426.i:                                 ; preds = %for.cond46.i396.i
  %334 = load i8, i8* %A.i316.i, align 1
  %335 = load i8, i8* %B.i317.i, align 1
  %call80.i424.i = call zeroext i8 @mult(i8 zeroext %334, i8 zeroext %335) #3
  %conv81.i425.i = zext i8 %call80.i424.i to i32
  %336 = load i8*, i8** %c.addr.i315.i, align 8
  store i8* %336, i8** %a.addr.i107.i302.i, align 8
  %337 = load i8*, i8** %a.addr.i107.i302.i, align 8
  store i8* %337, i8** %a.addr.i.i103.i298.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i299.i, align 8
  store i32 0, i32* %i.i.i106.i301.i, align 4
  br label %for.cond.i.i109.i428.i

for.cond.i.i109.i428.i:                           ; preds = %for.body.i.i118.i437.i, %for.end79.i426.i
  %338 = load i32, i32* %i.i.i106.i301.i, align 4
  %cmp.i.i108.i427.i = icmp sle i32 %338, 1
  br i1 %cmp.i.i108.i427.i, label %for.body.i.i118.i437.i, label %sec_mult.exit440.i

for.body.i.i118.i437.i:                           ; preds = %for.cond.i.i109.i428.i
  %339 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i299.i, align 8
  %340 = load i8*, i8** %a.addr.i.i103.i298.i, align 8
  %341 = load i32, i32* %i.i.i106.i301.i, align 4
  %idxprom.i.i110.i429.i = sext i32 %341 to i64
  %arrayidx.i.i111.i430.i = getelementptr inbounds i8, i8* %340, i64 %idxprom.i.i110.i429.i
  %342 = load i8, i8* %arrayidx.i.i111.i430.i, align 1
  %call.i.i112.i431.i = call zeroext i8 %339(i8 zeroext %342) #3
  %conv.i.i113.i432.i = zext i8 %call.i.i112.i431.i to i32
  %343 = load i8, i8* %result.i.i105.i300.i, align 1
  %conv1.i.i114.i433.i = zext i8 %343 to i32
  %xor.i.i115.i434.i = xor i32 %conv1.i.i114.i433.i, %conv.i.i113.i432.i
  %conv2.i.i116.i435.i = trunc i32 %xor.i.i115.i434.i to i8
  store i8 %conv2.i.i116.i435.i, i8* %result.i.i105.i300.i, align 1
  %344 = load i32, i32* %i.i.i106.i301.i, align 4
  %inc.i.i117.i436.i = add nsw i32 %344, 1
  store i32 %inc.i.i117.i436.i, i32* %i.i.i106.i301.i, align 4
  br label %for.cond.i.i109.i428.i

sec_mult.exit440.i:                               ; preds = %for.cond.i.i109.i428.i
  %345 = load i8, i8* %result.i.i105.i300.i, align 1
  %conv83.i438.i = zext i8 %345 to i32
  %cmp84.i439.i = icmp eq i32 %conv81.i425.i, %conv83.i438.i
  call void @assert(i1 zeroext %cmp84.i439.i) #3
  %arraydecay18.i = getelementptr inbounds [2 x i8], [2 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [2 x i8], [2 x i8]* %z.i, i64 0, i64 0
  %346 = load i8*, i8** %y.addr.i, align 8
  store i8* %arraydecay18.i, i8** %a.addr.i456.i, align 8
  store i8* %arraydecay19.i, i8** %b.addr.i457.i, align 8
  store i8* %346, i8** %c.addr.i458.i, align 8
  %call.i466.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i466.i, i8* %A.i459.i, align 1
  %call1.i467.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i467.i, i8* %B.i460.i, align 1
  %347 = load i8, i8* %A.i459.i, align 1
  %conv.i468.i = zext i8 %347 to i32
  %348 = load i8*, i8** %a.addr.i456.i, align 8
  store i8* %348, i8** %a.addr.i.i455.i, align 8
  %349 = load i8*, i8** %a.addr.i.i455.i, align 8
  store i8* %349, i8** %a.addr.i.i.i451.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i452.i, align 8
  store i32 0, i32* %i.i.i.i454.i, align 4
  br label %for.cond.i.i.i470.i

for.cond.i.i.i470.i:                              ; preds = %for.body.i.i.i479.i, %sec_mult.exit440.i
  %350 = load i32, i32* %i.i.i.i454.i, align 4
  %cmp.i.i.i469.i = icmp sle i32 %350, 1
  br i1 %cmp.i.i.i469.i, label %for.body.i.i.i479.i, label %xors.exit.i483.i

for.body.i.i.i479.i:                              ; preds = %for.cond.i.i.i470.i
  %351 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i452.i, align 8
  %352 = load i8*, i8** %a.addr.i.i.i451.i, align 8
  %353 = load i32, i32* %i.i.i.i454.i, align 4
  %idxprom.i.i.i471.i = sext i32 %353 to i64
  %arrayidx.i.i.i472.i = getelementptr inbounds i8, i8* %352, i64 %idxprom.i.i.i471.i
  %354 = load i8, i8* %arrayidx.i.i.i472.i, align 1
  %call.i.i.i473.i = call zeroext i8 %351(i8 zeroext %354) #3
  %conv.i.i.i474.i = zext i8 %call.i.i.i473.i to i32
  %355 = load i8, i8* %result.i.i.i453.i, align 1
  %conv1.i.i.i475.i = zext i8 %355 to i32
  %xor.i.i.i476.i = xor i32 %conv1.i.i.i475.i, %conv.i.i.i474.i
  %conv2.i.i.i477.i = trunc i32 %xor.i.i.i476.i to i8
  store i8 %conv2.i.i.i477.i, i8* %result.i.i.i453.i, align 1
  %356 = load i32, i32* %i.i.i.i454.i, align 4
  %inc.i.i.i478.i = add nsw i32 %356, 1
  store i32 %inc.i.i.i478.i, i32* %i.i.i.i454.i, align 4
  br label %for.cond.i.i.i470.i

xors.exit.i483.i:                                 ; preds = %for.cond.i.i.i470.i
  %357 = load i8, i8* %result.i.i.i453.i, align 1
  %conv3.i480.i = zext i8 %357 to i32
  %cmp.i481.i = icmp eq i32 %conv.i468.i, %conv3.i480.i
  call void @assume(i1 zeroext %cmp.i481.i) #3
  %358 = load i8, i8* %B.i460.i, align 1
  %conv5.i482.i = zext i8 %358 to i32
  %359 = load i8*, i8** %b.addr.i457.i, align 8
  store i8* %359, i8** %a.addr.i90.i450.i, align 8
  %360 = load i8*, i8** %a.addr.i90.i450.i, align 8
  store i8* %360, i8** %a.addr.i.i86.i446.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i87.i447.i, align 8
  store i32 0, i32* %i.i.i89.i449.i, align 4
  br label %for.cond.i.i92.i485.i

for.cond.i.i92.i485.i:                            ; preds = %for.body.i.i101.i494.i, %xors.exit.i483.i
  %361 = load i32, i32* %i.i.i89.i449.i, align 4
  %cmp.i.i91.i484.i = icmp sle i32 %361, 1
  br i1 %cmp.i.i91.i484.i, label %for.body.i.i101.i494.i, label %xors.exit102.i497.i

for.body.i.i101.i494.i:                           ; preds = %for.cond.i.i92.i485.i
  %362 = load i8 (i8)*, i8 (i8)** %f.addr.i.i87.i447.i, align 8
  %363 = load i8*, i8** %a.addr.i.i86.i446.i, align 8
  %364 = load i32, i32* %i.i.i89.i449.i, align 4
  %idxprom.i.i93.i486.i = sext i32 %364 to i64
  %arrayidx.i.i94.i487.i = getelementptr inbounds i8, i8* %363, i64 %idxprom.i.i93.i486.i
  %365 = load i8, i8* %arrayidx.i.i94.i487.i, align 1
  %call.i.i95.i488.i = call zeroext i8 %362(i8 zeroext %365) #3
  %conv.i.i96.i489.i = zext i8 %call.i.i95.i488.i to i32
  %366 = load i8, i8* %result.i.i88.i448.i, align 1
  %conv1.i.i97.i490.i = zext i8 %366 to i32
  %xor.i.i98.i491.i = xor i32 %conv1.i.i97.i490.i, %conv.i.i96.i489.i
  %conv2.i.i99.i492.i = trunc i32 %xor.i.i98.i491.i to i8
  store i8 %conv2.i.i99.i492.i, i8* %result.i.i88.i448.i, align 1
  %367 = load i32, i32* %i.i.i89.i449.i, align 4
  %inc.i.i100.i493.i = add nsw i32 %367, 1
  store i32 %inc.i.i100.i493.i, i32* %i.i.i89.i449.i, align 4
  br label %for.cond.i.i92.i485.i

xors.exit102.i497.i:                              ; preds = %for.cond.i.i92.i485.i
  %368 = load i8, i8* %result.i.i88.i448.i, align 1
  %conv7.i495.i = zext i8 %368 to i32
  %cmp8.i496.i = icmp eq i32 %conv5.i482.i, %conv7.i495.i
  call void @assume(i1 zeroext %cmp8.i496.i) #3
  store i32 0, i32* %i.i462.i, align 4
  br label %for.cond.i499.i

for.cond.i499.i:                                  ; preds = %for.end.i535.i, %xors.exit102.i497.i
  %369 = load i32, i32* %i.i462.i, align 4
  %cmp10.i498.i = icmp sle i32 %369, 1
  br i1 %cmp10.i498.i, label %for.body.i501.i, label %for.end44.i537.i

for.body.i501.i:                                  ; preds = %for.cond.i499.i
  %370 = load i32, i32* %i.i462.i, align 4
  %add.i500.i = add nsw i32 %370, 1
  store i32 %add.i500.i, i32* %j.i463.i, align 4
  br label %for.cond12.i503.i

for.cond12.i503.i:                                ; preds = %for.body15.i533.i, %for.body.i501.i
  %371 = load i32, i32* %j.i463.i, align 4
  %cmp13.i502.i = icmp sle i32 %371, 1
  br i1 %cmp13.i502.i, label %for.body15.i533.i, label %for.end.i535.i

for.body15.i533.i:                                ; preds = %for.cond12.i503.i
  %call16.i504.i = call zeroext i8 (...) @rand() #3
  %372 = load i32, i32* %i.i462.i, align 4
  %idxprom.i505.i = sext i32 %372 to i64
  %arrayidx.i506.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom.i505.i
  %373 = load i32, i32* %j.i463.i, align 4
  %idxprom17.i507.i = sext i32 %373 to i64
  %arrayidx18.i508.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx.i506.i, i64 0, i64 %idxprom17.i507.i
  store i8 %call16.i504.i, i8* %arrayidx18.i508.i, align 1
  %374 = load i32, i32* %i.i462.i, align 4
  %idxprom19.i509.i = sext i32 %374 to i64
  %arrayidx20.i510.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i509.i
  %375 = load i32, i32* %j.i463.i, align 4
  %idxprom21.i511.i = sext i32 %375 to i64
  %arrayidx22.i512.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx20.i510.i, i64 0, i64 %idxprom21.i511.i
  %376 = load i8, i8* %arrayidx22.i512.i, align 1
  %conv23.i513.i = zext i8 %376 to i32
  %377 = load i8*, i8** %a.addr.i456.i, align 8
  %378 = load i32, i32* %i.i462.i, align 4
  %idxprom24.i514.i = sext i32 %378 to i64
  %arrayidx25.i515.i = getelementptr inbounds i8, i8* %377, i64 %idxprom24.i514.i
  %379 = load i8, i8* %arrayidx25.i515.i, align 1
  %380 = load i8*, i8** %b.addr.i457.i, align 8
  %381 = load i32, i32* %j.i463.i, align 4
  %idxprom26.i516.i = sext i32 %381 to i64
  %arrayidx27.i517.i = getelementptr inbounds i8, i8* %380, i64 %idxprom26.i516.i
  %382 = load i8, i8* %arrayidx27.i517.i, align 1
  %call28.i518.i = call zeroext i8 @mult(i8 zeroext %379, i8 zeroext %382) #3
  %conv29.i519.i = zext i8 %call28.i518.i to i32
  %xor.i520.i = xor i32 %conv23.i513.i, %conv29.i519.i
  %383 = load i8*, i8** %a.addr.i456.i, align 8
  %384 = load i32, i32* %j.i463.i, align 4
  %idxprom30.i521.i = sext i32 %384 to i64
  %arrayidx31.i522.i = getelementptr inbounds i8, i8* %383, i64 %idxprom30.i521.i
  %385 = load i8, i8* %arrayidx31.i522.i, align 1
  %386 = load i8*, i8** %b.addr.i457.i, align 8
  %387 = load i32, i32* %i.i462.i, align 4
  %idxprom32.i523.i = sext i32 %387 to i64
  %arrayidx33.i524.i = getelementptr inbounds i8, i8* %386, i64 %idxprom32.i523.i
  %388 = load i8, i8* %arrayidx33.i524.i, align 1
  %call34.i525.i = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %388) #3
  %conv35.i526.i = zext i8 %call34.i525.i to i32
  %xor36.i527.i = xor i32 %xor.i520.i, %conv35.i526.i
  %conv37.i528.i = trunc i32 %xor36.i527.i to i8
  %389 = load i32, i32* %j.i463.i, align 4
  %idxprom38.i529.i = sext i32 %389 to i64
  %arrayidx39.i530.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom38.i529.i
  %390 = load i32, i32* %i.i462.i, align 4
  %idxprom40.i531.i = sext i32 %390 to i64
  %arrayidx41.i532.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx39.i530.i, i64 0, i64 %idxprom40.i531.i
  store i8 %conv37.i528.i, i8* %arrayidx41.i532.i, align 1
  %391 = load i32, i32* %j.i463.i, align 4
  %inc.i534.i = add nsw i32 %391, 1
  store i32 %inc.i534.i, i32* %j.i463.i, align 4
  br label %for.cond12.i503.i

for.end.i535.i:                                   ; preds = %for.cond12.i503.i
  %392 = load i32, i32* %i.i462.i, align 4
  %inc43.i536.i = add nsw i32 %392, 1
  store i32 %inc43.i536.i, i32* %i.i462.i, align 4
  br label %for.cond.i499.i

for.end44.i537.i:                                 ; preds = %for.cond.i499.i
  store i32 0, i32* %i45.i464.i, align 4
  br label %for.cond46.i539.i

for.cond46.i539.i:                                ; preds = %for.end76.i565.i, %for.end44.i537.i
  %393 = load i32, i32* %i45.i464.i, align 4
  %cmp47.i538.i = icmp sle i32 %393, 1
  br i1 %cmp47.i538.i, label %for.body49.i547.i, label %for.end79.i569.i

for.body49.i547.i:                                ; preds = %for.cond46.i539.i
  %394 = load i8*, i8** %a.addr.i456.i, align 8
  %395 = load i32, i32* %i45.i464.i, align 4
  %idxprom50.i540.i = sext i32 %395 to i64
  %arrayidx51.i541.i = getelementptr inbounds i8, i8* %394, i64 %idxprom50.i540.i
  %396 = load i8, i8* %arrayidx51.i541.i, align 1
  %397 = load i8*, i8** %b.addr.i457.i, align 8
  %398 = load i32, i32* %i45.i464.i, align 4
  %idxprom52.i542.i = sext i32 %398 to i64
  %arrayidx53.i543.i = getelementptr inbounds i8, i8* %397, i64 %idxprom52.i542.i
  %399 = load i8, i8* %arrayidx53.i543.i, align 1
  %call54.i544.i = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %399) #3
  %400 = load i8*, i8** %c.addr.i458.i, align 8
  %401 = load i32, i32* %i45.i464.i, align 4
  %idxprom55.i545.i = sext i32 %401 to i64
  %arrayidx56.i546.i = getelementptr inbounds i8, i8* %400, i64 %idxprom55.i545.i
  store i8 %call54.i544.i, i8* %arrayidx56.i546.i, align 1
  store i32 0, i32* %j57.i465.i, align 4
  br label %for.cond58.i549.i

for.cond58.i549.i:                                ; preds = %if.end.i563.i, %for.body49.i547.i
  %402 = load i32, i32* %j57.i465.i, align 4
  %cmp59.i548.i = icmp sle i32 %402, 1
  br i1 %cmp59.i548.i, label %for.body61.i551.i, label %for.end76.i565.i

for.body61.i551.i:                                ; preds = %for.cond58.i549.i
  %403 = load i32, i32* %j57.i465.i, align 4
  %404 = load i32, i32* %i45.i464.i, align 4
  %cmp62.i550.i = icmp ne i32 %403, %404
  br i1 %cmp62.i550.i, label %if.then.i562.i, label %if.end.i563.i

if.then.i562.i:                                   ; preds = %for.body61.i551.i
  %405 = load i32, i32* %i45.i464.i, align 4
  %idxprom64.i552.i = sext i32 %405 to i64
  %arrayidx65.i553.i = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r.i.i, i64 0, i64 %idxprom64.i552.i
  %406 = load i32, i32* %j57.i465.i, align 4
  %idxprom66.i554.i = sext i32 %406 to i64
  %arrayidx67.i555.i = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx65.i553.i, i64 0, i64 %idxprom66.i554.i
  %407 = load i8, i8* %arrayidx67.i555.i, align 1
  %conv68.i556.i = zext i8 %407 to i32
  %408 = load i8*, i8** %c.addr.i458.i, align 8
  %409 = load i32, i32* %i45.i464.i, align 4
  %idxprom69.i557.i = sext i32 %409 to i64
  %arrayidx70.i558.i = getelementptr inbounds i8, i8* %408, i64 %idxprom69.i557.i
  %410 = load i8, i8* %arrayidx70.i558.i, align 1
  %conv71.i559.i = zext i8 %410 to i32
  %xor72.i560.i = xor i32 %conv71.i559.i, %conv68.i556.i
  %conv73.i561.i = trunc i32 %xor72.i560.i to i8
  store i8 %conv73.i561.i, i8* %arrayidx70.i558.i, align 1
  br label %if.end.i563.i

if.end.i563.i:                                    ; preds = %if.then.i562.i, %for.body61.i551.i
  %411 = load i32, i32* %j57.i465.i, align 4
  %inc75.i564.i = add nsw i32 %411, 1
  store i32 %inc75.i564.i, i32* %j57.i465.i, align 4
  br label %for.cond58.i549.i

for.end76.i565.i:                                 ; preds = %for.cond58.i549.i
  %412 = load i32, i32* %i45.i464.i, align 4
  %inc78.i566.i = add nsw i32 %412, 1
  store i32 %inc78.i566.i, i32* %i45.i464.i, align 4
  br label %for.cond46.i539.i

for.end79.i569.i:                                 ; preds = %for.cond46.i539.i
  %413 = load i8, i8* %A.i459.i, align 1
  %414 = load i8, i8* %B.i460.i, align 1
  %call80.i567.i = call zeroext i8 @mult(i8 zeroext %413, i8 zeroext %414) #3
  %conv81.i568.i = zext i8 %call80.i567.i to i32
  %415 = load i8*, i8** %c.addr.i458.i, align 8
  store i8* %415, i8** %a.addr.i107.i445.i, align 8
  %416 = load i8*, i8** %a.addr.i107.i445.i, align 8
  store i8* %416, i8** %a.addr.i.i103.i441.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i104.i442.i, align 8
  store i32 0, i32* %i.i.i106.i444.i, align 4
  br label %for.cond.i.i109.i571.i

for.cond.i.i109.i571.i:                           ; preds = %for.body.i.i118.i580.i, %for.end79.i569.i
  %417 = load i32, i32* %i.i.i106.i444.i, align 4
  %cmp.i.i108.i570.i = icmp sle i32 %417, 1
  br i1 %cmp.i.i108.i570.i, label %for.body.i.i118.i580.i, label %sec_mult.exit583.i

for.body.i.i118.i580.i:                           ; preds = %for.cond.i.i109.i571.i
  %418 = load i8 (i8)*, i8 (i8)** %f.addr.i.i104.i442.i, align 8
  %419 = load i8*, i8** %a.addr.i.i103.i441.i, align 8
  %420 = load i32, i32* %i.i.i106.i444.i, align 4
  %idxprom.i.i110.i572.i = sext i32 %420 to i64
  %arrayidx.i.i111.i573.i = getelementptr inbounds i8, i8* %419, i64 %idxprom.i.i110.i572.i
  %421 = load i8, i8* %arrayidx.i.i111.i573.i, align 1
  %call.i.i112.i574.i = call zeroext i8 %418(i8 zeroext %421) #3
  %conv.i.i113.i575.i = zext i8 %call.i.i112.i574.i to i32
  %422 = load i8, i8* %result.i.i105.i443.i, align 1
  %conv1.i.i114.i576.i = zext i8 %422 to i32
  %xor.i.i115.i577.i = xor i32 %conv1.i.i114.i576.i, %conv.i.i113.i575.i
  %conv2.i.i116.i578.i = trunc i32 %xor.i.i115.i577.i to i8
  store i8 %conv2.i.i116.i578.i, i8* %result.i.i105.i443.i, align 1
  %423 = load i32, i32* %i.i.i106.i444.i, align 4
  %inc.i.i117.i579.i = add nsw i32 %423, 1
  store i32 %inc.i.i117.i579.i, i32* %i.i.i106.i444.i, align 4
  br label %for.cond.i.i109.i571.i

sec_mult.exit583.i:                               ; preds = %for.cond.i.i109.i571.i
  %424 = load i8, i8* %result.i.i105.i443.i, align 1
  %conv83.i581.i = zext i8 %424 to i32
  %cmp84.i582.i = icmp eq i32 %conv81.i568.i, %conv83.i581.i
  call void @assert(i1 zeroext %cmp84.i582.i) #3
  %425 = load i8, i8* %X.i, align 1
  store i8 %425, i8* %x.addr.i584.i, align 1
  %426 = load i8, i8* %x.addr.i584.i, align 1
  %call.i585.i = call zeroext i8 @square(i8 zeroext %426) #3
  store i8 %call.i585.i, i8* %z.i.i, align 1
  %427 = load i8, i8* %z.i.i, align 1
  %428 = load i8, i8* %x.addr.i584.i, align 1
  %call1.i586.i = call zeroext i8 @mult(i8 zeroext %427, i8 zeroext %428) #3
  store i8 %call1.i586.i, i8* %y.i.i, align 1
  %429 = load i8, i8* %y.i.i, align 1
  %call2.i.i = call zeroext i8 @exp4(i8 zeroext %429) #3
  store i8 %call2.i.i, i8* %w.i.i, align 1
  %430 = load i8, i8* %y.i.i, align 1
  %431 = load i8, i8* %w.i.i, align 1
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %430, i8 zeroext %431) #3
  store i8 %call3.i.i, i8* %y.i.i, align 1
  %432 = load i8, i8* %y.i.i, align 1
  %call4.i.i = call zeroext i8 @exp16(i8 zeroext %432) #3
  store i8 %call4.i.i, i8* %y.i.i, align 1
  %433 = load i8, i8* %y.i.i, align 1
  %434 = load i8, i8* %w.i.i, align 1
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434) #3
  store i8 %call5.i.i, i8* %y.i.i, align 1
  %435 = load i8, i8* %y.i.i, align 1
  %436 = load i8, i8* %z.i.i, align 1
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %435, i8 zeroext %436) #3
  store i8 %call6.i.i, i8* %y.i.i, align 1
  %437 = load i8, i8* %y.i.i, align 1
  %conv21.i = zext i8 %437 to i32
  %438 = load i8*, i8** %y.addr.i, align 8
  store i8* %438, i8** %a.addr.i591.i, align 8
  %439 = load i8*, i8** %a.addr.i591.i, align 8
  store i8* %439, i8** %a.addr.i.i587.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i588.i, align 8
  store i32 0, i32* %i.i.i590.i, align 4
  br label %for.cond.i.i593.i

for.cond.i.i593.i:                                ; preds = %for.body.i.i602.i, %sec_mult.exit583.i
  %440 = load i32, i32* %i.i.i590.i, align 4
  %cmp.i.i592.i = icmp sle i32 %440, 1
  br i1 %cmp.i.i592.i, label %for.body.i.i602.i, label %sec_exp254.exit

for.body.i.i602.i:                                ; preds = %for.cond.i.i593.i
  %441 = load i8 (i8)*, i8 (i8)** %f.addr.i.i588.i, align 8
  %442 = load i8*, i8** %a.addr.i.i587.i, align 8
  %443 = load i32, i32* %i.i.i590.i, align 4
  %idxprom.i.i594.i = sext i32 %443 to i64
  %arrayidx.i.i595.i = getelementptr inbounds i8, i8* %442, i64 %idxprom.i.i594.i
  %444 = load i8, i8* %arrayidx.i.i595.i, align 1
  %call.i.i596.i = call zeroext i8 %441(i8 zeroext %444) #3
  %conv.i.i597.i = zext i8 %call.i.i596.i to i32
  %445 = load i8, i8* %result.i.i589.i, align 1
  %conv1.i.i598.i = zext i8 %445 to i32
  %xor.i.i599.i = xor i32 %conv1.i.i598.i, %conv.i.i597.i
  %conv2.i.i600.i = trunc i32 %xor.i.i599.i to i8
  store i8 %conv2.i.i600.i, i8* %result.i.i589.i, align 1
  %446 = load i32, i32* %i.i.i590.i, align 4
  %inc.i.i601.i = add nsw i32 %446, 1
  store i32 %inc.i.i601.i, i32* %i.i.i590.i, align 4
  br label %for.cond.i.i593.i

sec_exp254.exit:                                  ; preds = %for.cond.i.i593.i
  %447 = load i8, i8* %result.i.i589.i, align 1
  %conv23.i = zext i8 %447 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %448 = load i8*, i8** %y.addr, align 8
  %449 = load i8*, i8** %y.addr, align 8
  store i8* %448, i8** %from.addr.i, align 8
  store i8* %449, i8** %to.addr.i, align 8
  store i8 (i8)* @af, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %sec_exp254.exit
  %450 = load i32, i32* %i.i, align 4
  %cmp.i25 = icmp sle i32 %450, 1
  br i1 %cmp.i25, label %for.body.i, label %transform.exit

for.body.i:                                       ; preds = %for.cond.i
  %451 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %452 = load i8*, i8** %from.addr.i, align 8
  %453 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %453 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %452, i64 %idxprom.i
  %454 = load i8, i8* %arrayidx.i, align 1
  %call.i26 = call zeroext i8 %451(i8 zeroext %454) #3
  %455 = load i8*, i8** %to.addr.i, align 8
  %456 = load i32, i32* %i.i, align 4
  %idxprom1.i = sext i32 %456 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %455, i64 %idxprom1.i
  store i8 %call.i26, i8* %arrayidx2.i, align 1
  %457 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %457, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

transform.exit:                                   ; preds = %for.cond.i
  %458 = load i8*, i8** %y.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %458, i64 0
  %459 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %459 to i32
  %xor = xor i32 %conv4, 99
  %conv5 = trunc i32 %xor to i8
  store i8 %conv5, i8* %arrayidx, align 1
  %460 = load i8, i8* %X, align 1
  store i8 %460, i8* %x.addr.i31, align 1
  %461 = load i8, i8* %x.addr.i31, align 1
  store i8 %461, i8* %x.addr.i.i27, align 1
  %462 = load i8, i8* %x.addr.i.i27, align 1
  %call.i.i32 = call zeroext i8 @square(i8 zeroext %462) #3
  store i8 %call.i.i32, i8* %z.i.i28, align 1
  %463 = load i8, i8* %z.i.i28, align 1
  %464 = load i8, i8* %x.addr.i.i27, align 1
  %call1.i.i33 = call zeroext i8 @mult(i8 zeroext %463, i8 zeroext %464) #3
  store i8 %call1.i.i33, i8* %y.i.i29, align 1
  %465 = load i8, i8* %y.i.i29, align 1
  %call2.i.i34 = call zeroext i8 @exp4(i8 zeroext %465) #3
  store i8 %call2.i.i34, i8* %w.i.i30, align 1
  %466 = load i8, i8* %y.i.i29, align 1
  %467 = load i8, i8* %w.i.i30, align 1
  %call3.i.i35 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467) #3
  store i8 %call3.i.i35, i8* %y.i.i29, align 1
  %468 = load i8, i8* %y.i.i29, align 1
  %call4.i.i36 = call zeroext i8 @exp16(i8 zeroext %468) #3
  store i8 %call4.i.i36, i8* %y.i.i29, align 1
  %469 = load i8, i8* %y.i.i29, align 1
  %470 = load i8, i8* %w.i.i30, align 1
  %call5.i.i37 = call zeroext i8 @mult(i8 zeroext %469, i8 zeroext %470) #3
  store i8 %call5.i.i37, i8* %y.i.i29, align 1
  %471 = load i8, i8* %y.i.i29, align 1
  %472 = load i8, i8* %z.i.i28, align 1
  %call6.i.i38 = call zeroext i8 @mult(i8 zeroext %471, i8 zeroext %472) #3
  store i8 %call6.i.i38, i8* %y.i.i29, align 1
  %473 = load i8, i8* %y.i.i29, align 1
  %call1.i = call zeroext i8 @af(i8 zeroext %473) #3
  %conv7 = zext i8 %call1.i to i32
  %474 = load i8*, i8** %y.addr, align 8
  store i8* %474, i8** %a.addr.i43, align 8
  %475 = load i8*, i8** %a.addr.i43, align 8
  store i8* %475, i8** %a.addr.i.i39, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i40, align 8
  store i32 0, i32* %i.i.i42, align 4
  br label %for.cond.i.i45

for.cond.i.i45:                                   ; preds = %for.body.i.i54, %transform.exit
  %476 = load i32, i32* %i.i.i42, align 4
  %cmp.i.i44 = icmp sle i32 %476, 1
  br i1 %cmp.i.i44, label %for.body.i.i54, label %xors.exit55

for.body.i.i54:                                   ; preds = %for.cond.i.i45
  %477 = load i8 (i8)*, i8 (i8)** %f.addr.i.i40, align 8
  %478 = load i8*, i8** %a.addr.i.i39, align 8
  %479 = load i32, i32* %i.i.i42, align 4
  %idxprom.i.i46 = sext i32 %479 to i64
  %arrayidx.i.i47 = getelementptr inbounds i8, i8* %478, i64 %idxprom.i.i46
  %480 = load i8, i8* %arrayidx.i.i47, align 1
  %call.i.i48 = call zeroext i8 %477(i8 zeroext %480) #3
  %conv.i.i49 = zext i8 %call.i.i48 to i32
  %481 = load i8, i8* %result.i.i41, align 1
  %conv1.i.i50 = zext i8 %481 to i32
  %xor.i.i51 = xor i32 %conv1.i.i50, %conv.i.i49
  %conv2.i.i52 = trunc i32 %xor.i.i51 to i8
  store i8 %conv2.i.i52, i8* %result.i.i41, align 1
  %482 = load i32, i32* %i.i.i42, align 4
  %inc.i.i53 = add nsw i32 %482, 1
  store i32 %inc.i.i53, i32* %i.i.i42, align 4
  br label %for.cond.i.i45

xors.exit55:                                      ; preds = %for.cond.i.i45
  %483 = load i8, i8* %result.i.i41, align 1
  %conv9 = zext i8 %483 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  call void @assert(i1 zeroext %cmp10)
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
