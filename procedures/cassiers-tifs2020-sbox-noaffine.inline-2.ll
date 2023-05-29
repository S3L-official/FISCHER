; ModuleID = '../examples/cassiers-tifs2020-sbox-noaffine.c'
source_filename = "../examples/cassiers-tifs2020-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [46 x i8] c"../examples/cassiers-tifs2020-sbox-noaffine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 60 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 74 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 104 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 127 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 133 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 2
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
  store i8 0, i8* %result, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 2
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
  store i8 0, i8* %result.i, align 1
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %1 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %1, 2
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
  %a.addr.i.i162 = alloca i8*, align 8
  %f.addr.i.i163 = alloca i8 (i8)*, align 8
  %result.i.i164 = alloca i8, align 1
  %i.i.i165 = alloca i32, align 4
  %a.addr.i166 = alloca i8*, align 8
  %a.addr.i.i145 = alloca i8*, align 8
  %f.addr.i.i146 = alloca i8 (i8)*, align 8
  %result.i.i147 = alloca i8, align 1
  %i.i.i148 = alloca i32, align 4
  %a.addr.i149 = alloca i8*, align 8
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
  %r = alloca [3 x [3 x i8]], align 1
  %s = alloca [3 x [3 x i8]], align 1
  %p0 = alloca [3 x [3 x i8]], align 1
  %p1 = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x [3 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j35 = alloca i32, align 4
  %i102 = alloca i32, align 4
  %j114 = alloca i32, align 4
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
  store i8 0, i8* %result.i.i, align 1
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 2
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
  store i8* %12, i8** %a.addr.i149, align 8
  %13 = load i8*, i8** %a.addr.i149, align 8
  store i8* %13, i8** %a.addr.i.i145, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146, align 8
  store i8 0, i8* %result.i.i147, align 1
  store i32 0, i32* %i.i.i148, align 4
  br label %for.cond.i.i151

for.cond.i.i151:                                  ; preds = %for.body.i.i160, %xors.exit
  %14 = load i32, i32* %i.i.i148, align 4
  %cmp.i.i150 = icmp sle i32 %14, 2
  br i1 %cmp.i.i150, label %for.body.i.i160, label %xors.exit161

for.body.i.i160:                                  ; preds = %for.cond.i.i151
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146, align 8
  %16 = load i8*, i8** %a.addr.i.i145, align 8
  %17 = load i32, i32* %i.i.i148, align 4
  %idxprom.i.i152 = sext i32 %17 to i64
  %arrayidx.i.i153 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i152
  %18 = load i8, i8* %arrayidx.i.i153, align 1
  %call.i.i154 = call zeroext i8 %15(i8 zeroext %18) #3
  %conv.i.i155 = zext i8 %call.i.i154 to i32
  %19 = load i8, i8* %result.i.i147, align 1
  %conv1.i.i156 = zext i8 %19 to i32
  %xor.i.i157 = xor i32 %conv1.i.i156, %conv.i.i155
  %conv2.i.i158 = trunc i32 %xor.i.i157 to i8
  store i8 %conv2.i.i158, i8* %result.i.i147, align 1
  %20 = load i32, i32* %i.i.i148, align 4
  %inc.i.i159 = add nsw i32 %20, 1
  store i32 %inc.i.i159, i32* %i.i.i148, align 4
  br label %for.cond.i.i151

xors.exit161:                                     ; preds = %for.cond.i.i151
  %21 = load i8, i8* %result.i.i147, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %xors.exit161
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 2
  br i1 %cmp10, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %24, 2
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom
  %26 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i64 0, i64 %idxprom17
  store i8 %call16, i8* %arrayidx18, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom19
  %28 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20, i64 0, i64 %idxprom21
  %29 = load i8, i8* %arrayidx22, align 1
  %30 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom23
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24, i64 0, i64 %idxprom25
  store i8 %29, i8* %arrayidx26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond12

for.end:                                          ; preds = %for.cond12
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end29:                                        ; preds = %for.cond
  store i32 0, i32* %i30, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc99, %for.end29
  %34 = load i32, i32* %i30, align 4
  %cmp32 = icmp sle i32 %34, 2
  br i1 %cmp32, label %for.body34, label %for.end101

for.body34:                                       ; preds = %for.cond31
  store i32 0, i32* %j35, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc96, %for.body34
  %35 = load i32, i32* %j35, align 4
  %cmp37 = icmp sle i32 %35, 2
  br i1 %cmp37, label %for.body39, label %for.end98

for.body39:                                       ; preds = %for.cond36
  %36 = load i32, i32* %j35, align 4
  %37 = load i32, i32* %i30, align 4
  %cmp40 = icmp ne i32 %36, %37
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.body39
  %38 = load i8*, i8** %b.addr, align 8
  %39 = load i32, i32* %j35, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %38, i64 %idxprom42
  %40 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %40 to i32
  %41 = load i32, i32* %i30, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom45
  %42 = load i32, i32* %j35, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46, i64 0, i64 %idxprom47
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %xor = xor i32 %conv44, %conv49
  %conv50 = trunc i32 %xor to i8
  %44 = load i32, i32* %i30, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 %idxprom51
  %45 = load i32, i32* %j35, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52, i64 0, i64 %idxprom53
  store i8 %conv50, i8* %arrayidx54, align 1
  %46 = load i8*, i8** %a.addr, align 8
  %47 = load i32, i32* %i30, align 4
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %46, i64 %idxprom55
  %48 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %48 to i32
  %xor58 = xor i32 %conv57, 1
  %conv59 = trunc i32 %xor58 to i8
  %49 = load i32, i32* %i30, align 4
  %idxprom60 = sext i32 %49 to i64
  %arrayidx61 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom60
  %50 = load i32, i32* %j35, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61, i64 0, i64 %idxprom62
  %51 = load i8, i8* %arrayidx63, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %conv59, i8 zeroext %51)
  %52 = load i32, i32* %i30, align 4
  %idxprom65 = sext i32 %52 to i64
  %arrayidx66 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 %idxprom65
  %53 = load i32, i32* %j35, align 4
  %idxprom67 = sext i32 %53 to i64
  %arrayidx68 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66, i64 0, i64 %idxprom67
  store i8 %call64, i8* %arrayidx68, align 1
  %54 = load i8*, i8** %a.addr, align 8
  %55 = load i32, i32* %i30, align 4
  %idxprom69 = sext i32 %55 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %54, i64 %idxprom69
  %56 = load i8, i8* %arrayidx70, align 1
  %57 = load i32, i32* %i30, align 4
  %idxprom71 = sext i32 %57 to i64
  %arrayidx72 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 %idxprom71
  %58 = load i32, i32* %j35, align 4
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72, i64 0, i64 %idxprom73
  %59 = load i8, i8* %arrayidx74, align 1
  %call75 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %59)
  %60 = load i32, i32* %i30, align 4
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 %idxprom76
  %61 = load i32, i32* %j35, align 4
  %idxprom78 = sext i32 %61 to i64
  %arrayidx79 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77, i64 0, i64 %idxprom78
  store i8 %call75, i8* %arrayidx79, align 1
  %62 = load i32, i32* %i30, align 4
  %idxprom80 = sext i32 %62 to i64
  %arrayidx81 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 %idxprom80
  %63 = load i32, i32* %j35, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81, i64 0, i64 %idxprom82
  %64 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %65 = load i32, i32* %i30, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 %idxprom85
  %66 = load i32, i32* %j35, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86, i64 0, i64 %idxprom87
  %67 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %67 to i32
  %xor90 = xor i32 %conv84, %conv89
  %conv91 = trunc i32 %xor90 to i8
  %68 = load i32, i32* %i30, align 4
  %idxprom92 = sext i32 %68 to i64
  %arrayidx93 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 %idxprom92
  %69 = load i32, i32* %j35, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93, i64 0, i64 %idxprom94
  store i8 %conv91, i8* %arrayidx95, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body39
  br label %for.inc96

for.inc96:                                        ; preds = %if.end
  %70 = load i32, i32* %j35, align 4
  %inc97 = add nsw i32 %70, 1
  store i32 %inc97, i32* %j35, align 4
  br label %for.cond36

for.end98:                                        ; preds = %for.cond36
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %71 = load i32, i32* %i30, align 4
  %inc100 = add nsw i32 %71, 1
  store i32 %inc100, i32* %i30, align 4
  br label %for.cond31

for.end101:                                       ; preds = %for.cond31
  store i32 0, i32* %i102, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc136, %for.end101
  %72 = load i32, i32* %i102, align 4
  %cmp104 = icmp sle i32 %72, 2
  br i1 %cmp104, label %for.body106, label %for.end138

for.body106:                                      ; preds = %for.cond103
  %73 = load i8*, i8** %a.addr, align 8
  %74 = load i32, i32* %i102, align 4
  %idxprom107 = sext i32 %74 to i64
  %arrayidx108 = getelementptr inbounds i8, i8* %73, i64 %idxprom107
  %75 = load i8, i8* %arrayidx108, align 1
  %76 = load i8*, i8** %b.addr, align 8
  %77 = load i32, i32* %i102, align 4
  %idxprom109 = sext i32 %77 to i64
  %arrayidx110 = getelementptr inbounds i8, i8* %76, i64 %idxprom109
  %78 = load i8, i8* %arrayidx110, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %78)
  %79 = load i8*, i8** %c.addr, align 8
  %80 = load i32, i32* %i102, align 4
  %idxprom112 = sext i32 %80 to i64
  %arrayidx113 = getelementptr inbounds i8, i8* %79, i64 %idxprom112
  store i8 %call111, i8* %arrayidx113, align 1
  store i32 0, i32* %j114, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc133, %for.body106
  %81 = load i32, i32* %j114, align 4
  %cmp116 = icmp sle i32 %81, 2
  br i1 %cmp116, label %for.body118, label %for.end135

for.body118:                                      ; preds = %for.cond115
  %82 = load i32, i32* %j114, align 4
  %83 = load i32, i32* %i102, align 4
  %cmp119 = icmp ne i32 %82, %83
  br i1 %cmp119, label %if.then121, label %if.end132

if.then121:                                       ; preds = %for.body118
  %84 = load i32, i32* %i102, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 %idxprom122
  %85 = load i32, i32* %j114, align 4
  %idxprom124 = sext i32 %85 to i64
  %arrayidx125 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123, i64 0, i64 %idxprom124
  %86 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %86 to i32
  %87 = load i8*, i8** %c.addr, align 8
  %88 = load i32, i32* %i102, align 4
  %idxprom127 = sext i32 %88 to i64
  %arrayidx128 = getelementptr inbounds i8, i8* %87, i64 %idxprom127
  %89 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %89 to i32
  %xor130 = xor i32 %conv129, %conv126
  %conv131 = trunc i32 %xor130 to i8
  store i8 %conv131, i8* %arrayidx128, align 1
  br label %if.end132

if.end132:                                        ; preds = %if.then121, %for.body118
  br label %for.inc133

for.inc133:                                       ; preds = %if.end132
  %90 = load i32, i32* %j114, align 4
  %inc134 = add nsw i32 %90, 1
  store i32 %inc134, i32* %j114, align 4
  br label %for.cond115

for.end135:                                       ; preds = %for.cond115
  br label %for.inc136

for.inc136:                                       ; preds = %for.end135
  %91 = load i32, i32* %i102, align 4
  %inc137 = add nsw i32 %91, 1
  store i32 %inc137, i32* %i102, align 4
  br label %for.cond103

for.end138:                                       ; preds = %for.cond103
  %92 = load i8, i8* %A, align 1
  %93 = load i8, i8* %B, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93)
  %conv140 = zext i8 %call139 to i32
  %94 = load i8*, i8** %c.addr, align 8
  store i8* %94, i8** %a.addr.i166, align 8
  %95 = load i8*, i8** %a.addr.i166, align 8
  store i8* %95, i8** %a.addr.i.i162, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163, align 8
  store i8 0, i8* %result.i.i164, align 1
  store i32 0, i32* %i.i.i165, align 4
  br label %for.cond.i.i168

for.cond.i.i168:                                  ; preds = %for.body.i.i177, %for.end138
  %96 = load i32, i32* %i.i.i165, align 4
  %cmp.i.i167 = icmp sle i32 %96, 2
  br i1 %cmp.i.i167, label %for.body.i.i177, label %xors.exit178

for.body.i.i177:                                  ; preds = %for.cond.i.i168
  %97 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163, align 8
  %98 = load i8*, i8** %a.addr.i.i162, align 8
  %99 = load i32, i32* %i.i.i165, align 4
  %idxprom.i.i169 = sext i32 %99 to i64
  %arrayidx.i.i170 = getelementptr inbounds i8, i8* %98, i64 %idxprom.i.i169
  %100 = load i8, i8* %arrayidx.i.i170, align 1
  %call.i.i171 = call zeroext i8 %97(i8 zeroext %100) #3
  %conv.i.i172 = zext i8 %call.i.i171 to i32
  %101 = load i8, i8* %result.i.i164, align 1
  %conv1.i.i173 = zext i8 %101 to i32
  %xor.i.i174 = xor i32 %conv1.i.i173, %conv.i.i172
  %conv2.i.i175 = trunc i32 %xor.i.i174 to i8
  store i8 %conv2.i.i175, i8* %result.i.i164, align 1
  %102 = load i32, i32* %i.i.i165, align 4
  %inc.i.i176 = add nsw i32 %102, 1
  store i32 %inc.i.i176, i32* %i.i.i165, align 4
  br label %for.cond.i.i168

xors.exit178:                                     ; preds = %for.cond.i.i168
  %103 = load i8, i8* %result.i.i164, align 1
  %conv142 = zext i8 %103 to i32
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
  %a.addr.i.i21 = alloca i8*, align 8
  %f.addr.i.i22 = alloca i8 (i8)*, align 8
  %result.i.i23 = alloca i8, align 1
  %i.i.i24 = alloca i32, align 4
  %a.addr.i25 = alloca i8*, align 8
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
  %i = alloca i8, align 1
  %tmp = alloca i8, align 1
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
  store i8 0, i8* %result.i.i, align 1
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 2
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
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %12, i8** %to.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit
  %13 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %13, 2
  br i1 %cmp.i, label %for.body.i, label %transform.exit

for.body.i:                                       ; preds = %for.cond.i
  %14 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %15 = load i8*, i8** %from.addr.i, align 8
  %16 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %16 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %15, i64 %idxprom.i
  %17 = load i8, i8* %arrayidx.i, align 1
  %call.i = call zeroext i8 %14(i8 zeroext %17) #3
  %18 = load i8*, i8** %to.addr.i, align 8
  %19 = load i32, i32* %i.i, align 4
  %idxprom1.i = sext i32 %19 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %18, i64 %idxprom1.i
  store i8 %call.i, i8* %arrayidx2.i, align 1
  %20 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %20, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

transform.exit:                                   ; preds = %for.cond.i
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %transform.exit
  %21 = load i8, i8* %i, align 1
  %conv4 = zext i8 %21 to i32
  %cmp5 = icmp sle i32 %conv4, 2
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call zeroext i8 (...) @rand()
  store i8 %call7, i8* %tmp, align 1
  %22 = load i8, i8* %tmp, align 1
  %conv8 = zext i8 %22 to i32
  %23 = load i8*, i8** %y.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %24 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %arrayidx, align 1
  %25 = load i8, i8* %tmp, align 1
  %conv11 = zext i8 %25 to i32
  %26 = load i8*, i8** %y.addr, align 8
  %27 = load i8, i8* %i, align 1
  %idxprom = zext i8 %27 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %28 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %28 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i8, i8* %i, align 1
  %inc = add i8 %29, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i8, i8* %X, align 1
  %conv16 = zext i8 %30 to i32
  %31 = load i8*, i8** %y.addr, align 8
  store i8* %31, i8** %a.addr.i25, align 8
  %32 = load i8*, i8** %a.addr.i25, align 8
  store i8* %32, i8** %a.addr.i.i21, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22, align 8
  store i8 0, i8* %result.i.i23, align 1
  store i32 0, i32* %i.i.i24, align 4
  br label %for.cond.i.i27

for.cond.i.i27:                                   ; preds = %for.body.i.i36, %for.end
  %33 = load i32, i32* %i.i.i24, align 4
  %cmp.i.i26 = icmp sle i32 %33, 2
  br i1 %cmp.i.i26, label %for.body.i.i36, label %xors.exit37

for.body.i.i36:                                   ; preds = %for.cond.i.i27
  %34 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22, align 8
  %35 = load i8*, i8** %a.addr.i.i21, align 8
  %36 = load i32, i32* %i.i.i24, align 4
  %idxprom.i.i28 = sext i32 %36 to i64
  %arrayidx.i.i29 = getelementptr inbounds i8, i8* %35, i64 %idxprom.i.i28
  %37 = load i8, i8* %arrayidx.i.i29, align 1
  %call.i.i30 = call zeroext i8 %34(i8 zeroext %37) #3
  %conv.i.i31 = zext i8 %call.i.i30 to i32
  %38 = load i8, i8* %result.i.i23, align 1
  %conv1.i.i32 = zext i8 %38 to i32
  %xor.i.i33 = xor i32 %conv1.i.i32, %conv.i.i31
  %conv2.i.i34 = trunc i32 %xor.i.i33 to i8
  store i8 %conv2.i.i34, i8* %result.i.i23, align 1
  %39 = load i32, i32* %i.i.i24, align 4
  %inc.i.i35 = add nsw i32 %39, 1
  store i32 %inc.i.i35, i32* %i.i.i24, align 4
  br label %for.cond.i.i27

xors.exit37:                                      ; preds = %for.cond.i.i27
  %40 = load i8, i8* %result.i.i23, align 1
  %conv18 = zext i8 %40 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %1 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %1)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #0 {
entry:
  %x.addr.i2 = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %2) #3
  store i8 %call.i, i8* %x.addr.i2, align 1
  %3 = load i8, i8* %x.addr.i2, align 1
  %4 = load i8, i8* %x.addr.i2, align 1
  %call.i3 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4) #3
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i2 = alloca i8, align 1
  %x.addr.i.i3 = alloca i8, align 1
  %x.addr.i4 = alloca i8, align 1
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  store i8 %1, i8* %x.addr.i.i, align 1
  %2 = load i8, i8* %x.addr.i.i, align 1
  %3 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #3
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %4 = load i8, i8* %x.addr.i2.i, align 1
  %5 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5) #3
  store i8 %call.i3.i, i8* %x.addr.i4, align 1
  %6 = load i8, i8* %x.addr.i4, align 1
  store i8 %6, i8* %x.addr.i.i3, align 1
  %7 = load i8, i8* %x.addr.i.i3, align 1
  %8 = load i8, i8* %x.addr.i.i3, align 1
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #3
  store i8 %call.i.i5, i8* %x.addr.i2.i2, align 1
  %9 = load i8, i8* %x.addr.i2.i2, align 1
  %10 = load i8, i8* %x.addr.i2.i2, align 1
  %call.i3.i6 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10) #3
  ret i8 %call.i3.i6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i2.i = alloca i8, align 1
  %x.addr.i.i3.i = alloca i8, align 1
  %x.addr.i4.i = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i.i8 = alloca i8, align 1
  %x.addr.i9 = alloca i8, align 1
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i7 = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  %z = alloca i8, align 1
  %y = alloca i8, align 1
  %w = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %2) #3
  store i8 %call.i, i8* %z, align 1
  %3 = load i8, i8* %z, align 1
  %4 = load i8, i8* %x.addr, align 1
  %call1 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4)
  store i8 %call1, i8* %y, align 1
  %5 = load i8, i8* %y, align 1
  store i8 %5, i8* %x.addr.i7, align 1
  %6 = load i8, i8* %x.addr.i7, align 1
  store i8 %6, i8* %x.addr.i.i, align 1
  %7 = load i8, i8* %x.addr.i.i, align 1
  %8 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #3
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %9 = load i8, i8* %x.addr.i2.i, align 1
  %10 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10) #3
  store i8 %call.i3.i, i8* %w, align 1
  %11 = load i8, i8* %y, align 1
  %12 = load i8, i8* %w, align 1
  %call3 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12)
  store i8 %call3, i8* %y, align 1
  %13 = load i8, i8* %y, align 1
  store i8 %13, i8* %x.addr.i9, align 1
  %14 = load i8, i8* %x.addr.i9, align 1
  store i8 %14, i8* %x.addr.i.i8, align 1
  %15 = load i8, i8* %x.addr.i.i8, align 1
  store i8 %15, i8* %x.addr.i.i.i, align 1
  %16 = load i8, i8* %x.addr.i.i.i, align 1
  %17 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #3
  store i8 %call.i.i.i, i8* %x.addr.i2.i.i, align 1
  %18 = load i8, i8* %x.addr.i2.i.i, align 1
  %19 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #3
  store i8 %call.i3.i.i, i8* %x.addr.i4.i, align 1
  %20 = load i8, i8* %x.addr.i4.i, align 1
  store i8 %20, i8* %x.addr.i.i3.i, align 1
  %21 = load i8, i8* %x.addr.i.i3.i, align 1
  %22 = load i8, i8* %x.addr.i.i3.i, align 1
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  store i8 %call.i.i5.i, i8* %x.addr.i2.i2.i, align 1
  %23 = load i8, i8* %x.addr.i2.i2.i, align 1
  %24 = load i8, i8* %x.addr.i2.i2.i, align 1
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #3
  store i8 %call.i3.i6.i, i8* %y, align 1
  %25 = load i8, i8* %y, align 1
  %26 = load i8, i8* %w, align 1
  %call5 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  store i8 %call5, i8* %y, align 1
  %27 = load i8, i8* %y, align 1
  %28 = load i8, i8* %z, align 1
  %call6 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  store i8 %call6, i8* %y, align 1
  %29 = load i8, i8* %y, align 1
  ret i8 %29
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i789 = alloca i8*, align 8
  %f.addr.i.i790 = alloca i8 (i8)*, align 8
  %result.i.i791 = alloca i8, align 1
  %i.i.i792 = alloca i32, align 4
  %a.addr.i793 = alloca i8*, align 8
  %x.addr.i2.i2.i.i = alloca i8, align 1
  %x.addr.i.i3.i.i = alloca i8, align 1
  %x.addr.i4.i.i = alloca i8, align 1
  %x.addr.i2.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i = alloca i8, align 1
  %x.addr.i.i8.i = alloca i8, align 1
  %x.addr.i9.i = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i7.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i784 = alloca i8, align 1
  %z.i785 = alloca i8, align 1
  %y.i = alloca i8, align 1
  %w.i = alloca i8, align 1
  %a.addr.i.i162.i583 = alloca i8*, align 8
  %f.addr.i.i163.i584 = alloca i8 (i8)*, align 8
  %result.i.i164.i585 = alloca i8, align 1
  %i.i.i165.i586 = alloca i32, align 4
  %a.addr.i166.i587 = alloca i8*, align 8
  %a.addr.i.i145.i588 = alloca i8*, align 8
  %f.addr.i.i146.i589 = alloca i8 (i8)*, align 8
  %result.i.i147.i590 = alloca i8, align 1
  %i.i.i148.i591 = alloca i32, align 4
  %a.addr.i149.i592 = alloca i8*, align 8
  %a.addr.i.i.i593 = alloca i8*, align 8
  %f.addr.i.i.i594 = alloca i8 (i8)*, align 8
  %result.i.i.i595 = alloca i8, align 1
  %i.i.i.i596 = alloca i32, align 4
  %a.addr.i.i597 = alloca i8*, align 8
  %a.addr.i598 = alloca i8*, align 8
  %b.addr.i599 = alloca i8*, align 8
  %c.addr.i600 = alloca i8*, align 8
  %A.i601 = alloca i8, align 1
  %B.i602 = alloca i8, align 1
  %i.i608 = alloca i32, align 4
  %j.i609 = alloca i32, align 4
  %i30.i610 = alloca i32, align 4
  %j35.i611 = alloca i32, align 4
  %i102.i612 = alloca i32, align 4
  %j114.i613 = alloca i32, align 4
  %a.addr.i.i162.i382 = alloca i8*, align 8
  %f.addr.i.i163.i383 = alloca i8 (i8)*, align 8
  %result.i.i164.i384 = alloca i8, align 1
  %i.i.i165.i385 = alloca i32, align 4
  %a.addr.i166.i386 = alloca i8*, align 8
  %a.addr.i.i145.i387 = alloca i8*, align 8
  %f.addr.i.i146.i388 = alloca i8 (i8)*, align 8
  %result.i.i147.i389 = alloca i8, align 1
  %i.i.i148.i390 = alloca i32, align 4
  %a.addr.i149.i391 = alloca i8*, align 8
  %a.addr.i.i.i392 = alloca i8*, align 8
  %f.addr.i.i.i393 = alloca i8 (i8)*, align 8
  %result.i.i.i394 = alloca i8, align 1
  %i.i.i.i395 = alloca i32, align 4
  %a.addr.i.i396 = alloca i8*, align 8
  %a.addr.i397 = alloca i8*, align 8
  %b.addr.i398 = alloca i8*, align 8
  %c.addr.i399 = alloca i8*, align 8
  %A.i400 = alloca i8, align 1
  %B.i401 = alloca i8, align 1
  %i.i407 = alloca i32, align 4
  %j.i408 = alloca i32, align 4
  %i30.i409 = alloca i32, align 4
  %j35.i410 = alloca i32, align 4
  %i102.i411 = alloca i32, align 4
  %j114.i412 = alloca i32, align 4
  %from.addr.i367 = alloca i8*, align 8
  %to.addr.i368 = alloca i8*, align 8
  %f.addr.i369 = alloca i8 (i8)*, align 8
  %i.i370 = alloca i32, align 4
  %a.addr.i.i162.i166 = alloca i8*, align 8
  %f.addr.i.i163.i167 = alloca i8 (i8)*, align 8
  %result.i.i164.i168 = alloca i8, align 1
  %i.i.i165.i169 = alloca i32, align 4
  %a.addr.i166.i170 = alloca i8*, align 8
  %a.addr.i.i145.i171 = alloca i8*, align 8
  %f.addr.i.i146.i172 = alloca i8 (i8)*, align 8
  %result.i.i147.i173 = alloca i8, align 1
  %i.i.i148.i174 = alloca i32, align 4
  %a.addr.i149.i175 = alloca i8*, align 8
  %a.addr.i.i.i176 = alloca i8*, align 8
  %f.addr.i.i.i177 = alloca i8 (i8)*, align 8
  %result.i.i.i178 = alloca i8, align 1
  %i.i.i.i179 = alloca i32, align 4
  %a.addr.i.i180 = alloca i8*, align 8
  %a.addr.i181 = alloca i8*, align 8
  %b.addr.i182 = alloca i8*, align 8
  %c.addr.i183 = alloca i8*, align 8
  %A.i184 = alloca i8, align 1
  %B.i185 = alloca i8, align 1
  %i.i191 = alloca i32, align 4
  %j.i192 = alloca i32, align 4
  %i30.i193 = alloca i32, align 4
  %j35.i194 = alloca i32, align 4
  %i102.i195 = alloca i32, align 4
  %j114.i196 = alloca i32, align 4
  %a.addr.i.i21.i89 = alloca i8*, align 8
  %f.addr.i.i22.i90 = alloca i8 (i8)*, align 8
  %result.i.i23.i91 = alloca i8, align 1
  %i.i.i24.i92 = alloca i32, align 4
  %a.addr.i25.i93 = alloca i8*, align 8
  %from.addr.i.i94 = alloca i8*, align 8
  %to.addr.i.i95 = alloca i8*, align 8
  %f.addr.i.i96 = alloca i8 (i8)*, align 8
  %i.i.i97 = alloca i32, align 4
  %a.addr.i.i.i98 = alloca i8*, align 8
  %f.addr.i.i.i99 = alloca i8 (i8)*, align 8
  %result.i.i.i100 = alloca i8, align 1
  %i.i.i.i101 = alloca i32, align 4
  %a.addr.i.i102 = alloca i8*, align 8
  %x.addr.i103 = alloca i8*, align 8
  %y.addr.i104 = alloca i8*, align 8
  %X.i105 = alloca i8, align 1
  %i.i106 = alloca i8, align 1
  %tmp.i107 = alloca i8, align 1
  %from.addr.i74 = alloca i8*, align 8
  %to.addr.i75 = alloca i8*, align 8
  %f.addr.i76 = alloca i8 (i8)*, align 8
  %i.i77 = alloca i32, align 4
  %a.addr.i.i162.i = alloca i8*, align 8
  %f.addr.i.i163.i = alloca i8 (i8)*, align 8
  %result.i.i164.i = alloca i8, align 1
  %i.i.i165.i = alloca i32, align 4
  %a.addr.i166.i = alloca i8*, align 8
  %a.addr.i.i145.i = alloca i8*, align 8
  %f.addr.i.i146.i = alloca i8 (i8)*, align 8
  %result.i.i147.i = alloca i8, align 1
  %i.i.i148.i = alloca i32, align 4
  %a.addr.i149.i = alloca i8*, align 8
  %a.addr.i.i.i45 = alloca i8*, align 8
  %f.addr.i.i.i46 = alloca i8 (i8)*, align 8
  %result.i.i.i47 = alloca i8, align 1
  %i.i.i.i48 = alloca i32, align 4
  %a.addr.i.i49 = alloca i8*, align 8
  %a.addr.i50 = alloca i8*, align 8
  %b.addr.i = alloca i8*, align 8
  %c.addr.i = alloca i8*, align 8
  %A.i = alloca i8, align 1
  %B.i = alloca i8, align 1
  %r.i = alloca [3 x [3 x i8]], align 1
  %s.i = alloca [3 x [3 x i8]], align 1
  %p0.i = alloca [3 x [3 x i8]], align 1
  %p1.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x [3 x i8]], align 1
  %i.i51 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %i30.i = alloca i32, align 4
  %j35.i = alloca i32, align 4
  %i102.i = alloca i32, align 4
  %j114.i = alloca i32, align 4
  %a.addr.i.i21.i = alloca i8*, align 8
  %f.addr.i.i22.i = alloca i8 (i8)*, align 8
  %result.i.i23.i = alloca i8, align 1
  %i.i.i24.i = alloca i32, align 4
  %a.addr.i25.i = alloca i8*, align 8
  %from.addr.i.i = alloca i8*, align 8
  %to.addr.i.i = alloca i8*, align 8
  %f.addr.i.i28 = alloca i8 (i8)*, align 8
  %i.i.i29 = alloca i32, align 4
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i30 = alloca i8*, align 8
  %x.addr.i = alloca i8*, align 8
  %y.addr.i = alloca i8*, align 8
  %X.i = alloca i8, align 1
  %i.i31 = alloca i8, align 1
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
  %z = alloca [3 x i8], align 1
  %zr = alloca [3 x i8], align 1
  %w = alloca [3 x i8], align 1
  %wr = alloca [3 x i8], align 1
  %u = alloca [3 x i8], align 1
  %v = alloca [3 x i8], align 1
  %v16 = alloca [3 x i8], align 1
  %m = alloca [3 x i8], align 1
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
  store i8 0, i8* %result.i.i, align 1
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 2
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
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit
  %12 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %12, 2
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
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  store i8* %arraydecay4, i8** %x.addr.i, align 8
  store i8* %arraydecay5, i8** %y.addr.i, align 8
  %call.i32 = call zeroext i8 (...) @rand() #3
  store i8 %call.i32, i8* %X.i, align 1
  %20 = load i8, i8* %X.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = load i8*, i8** %x.addr.i, align 8
  store i8* %21, i8** %a.addr.i.i30, align 8
  %22 = load i8*, i8** %a.addr.i.i30, align 8
  store i8* %22, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i8 0, i8* %result.i.i.i, align 1
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %transform.exit
  %23 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %23, 2
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
  %cmp.i33 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i33) #3
  %31 = load i8*, i8** %x.addr.i, align 8
  %32 = load i8*, i8** %y.addr.i, align 8
  store i8* %31, i8** %from.addr.i.i, align 8
  store i8* %32, i8** %to.addr.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i28, align 8
  store i32 0, i32* %i.i.i29, align 4
  br label %for.cond.i.i35

for.cond.i.i35:                                   ; preds = %for.body.i.i40, %xors.exit.i
  %33 = load i32, i32* %i.i.i29, align 4
  %cmp.i.i34 = icmp sle i32 %33, 2
  br i1 %cmp.i.i34, label %for.body.i.i40, label %transform.exit.i

for.body.i.i40:                                   ; preds = %for.cond.i.i35
  %34 = load i8 (i8)*, i8 (i8)** %f.addr.i.i28, align 8
  %35 = load i8*, i8** %from.addr.i.i, align 8
  %36 = load i32, i32* %i.i.i29, align 4
  %idxprom.i.i36 = sext i32 %36 to i64
  %arrayidx.i.i37 = getelementptr inbounds i8, i8* %35, i64 %idxprom.i.i36
  %37 = load i8, i8* %arrayidx.i.i37, align 1
  %call.i.i38 = call zeroext i8 %34(i8 zeroext %37) #3
  %38 = load i8*, i8** %to.addr.i.i, align 8
  %39 = load i32, i32* %i.i.i29, align 4
  %idxprom1.i.i = sext i32 %39 to i64
  %arrayidx2.i.i = getelementptr inbounds i8, i8* %38, i64 %idxprom1.i.i
  store i8 %call.i.i38, i8* %arrayidx2.i.i, align 1
  %40 = load i32, i32* %i.i.i29, align 4
  %inc.i.i39 = add nsw i32 %40, 1
  store i32 %inc.i.i39, i32* %i.i.i29, align 4
  br label %for.cond.i.i35

transform.exit.i:                                 ; preds = %for.cond.i.i35
  store i8 1, i8* %i.i31, align 1
  br label %for.cond.i41

for.cond.i41:                                     ; preds = %for.body.i43, %transform.exit.i
  %41 = load i8, i8* %i.i31, align 1
  %conv4.i = zext i8 %41 to i32
  %cmp5.i = icmp sle i32 %conv4.i, 2
  br i1 %cmp5.i, label %for.body.i43, label %for.end.i

for.body.i43:                                     ; preds = %for.cond.i41
  %call7.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i, i8* %tmp.i, align 1
  %42 = load i8, i8* %tmp.i, align 1
  %conv8.i = zext i8 %42 to i32
  %43 = load i8*, i8** %y.addr.i, align 8
  %44 = load i8, i8* %43, align 1
  %conv9.i = zext i8 %44 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %43, align 1
  %45 = load i8, i8* %tmp.i, align 1
  %conv11.i = zext i8 %45 to i32
  %46 = load i8*, i8** %y.addr.i, align 8
  %47 = load i8, i8* %i.i31, align 1
  %idxprom.i42 = zext i8 %47 to i64
  %arrayidx12.i = getelementptr inbounds i8, i8* %46, i64 %idxprom.i42
  %48 = load i8, i8* %arrayidx12.i, align 1
  %conv13.i = zext i8 %48 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %arrayidx12.i, align 1
  %49 = load i8, i8* %i.i31, align 1
  %inc.i44 = add i8 %49, 1
  store i8 %inc.i44, i8* %i.i31, align 1
  br label %for.cond.i41

for.end.i:                                        ; preds = %for.cond.i41
  %50 = load i8, i8* %X.i, align 1
  %conv16.i = zext i8 %50 to i32
  %51 = load i8*, i8** %y.addr.i, align 8
  store i8* %51, i8** %a.addr.i25.i, align 8
  %52 = load i8*, i8** %a.addr.i25.i, align 8
  store i8* %52, i8** %a.addr.i.i21.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i, align 8
  store i8 0, i8* %result.i.i23.i, align 1
  store i32 0, i32* %i.i.i24.i, align 4
  br label %for.cond.i.i27.i

for.cond.i.i27.i:                                 ; preds = %for.body.i.i36.i, %for.end.i
  %53 = load i32, i32* %i.i.i24.i, align 4
  %cmp.i.i26.i = icmp sle i32 %53, 2
  br i1 %cmp.i.i26.i, label %for.body.i.i36.i, label %refresh_masks.exit

for.body.i.i36.i:                                 ; preds = %for.cond.i.i27.i
  %54 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i, align 8
  %55 = load i8*, i8** %a.addr.i.i21.i, align 8
  %56 = load i32, i32* %i.i.i24.i, align 4
  %idxprom.i.i28.i = sext i32 %56 to i64
  %arrayidx.i.i29.i = getelementptr inbounds i8, i8* %55, i64 %idxprom.i.i28.i
  %57 = load i8, i8* %arrayidx.i.i29.i, align 1
  %call.i.i30.i = call zeroext i8 %54(i8 zeroext %57) #3
  %conv.i.i31.i = zext i8 %call.i.i30.i to i32
  %58 = load i8, i8* %result.i.i23.i, align 1
  %conv1.i.i32.i = zext i8 %58 to i32
  %xor.i.i33.i = xor i32 %conv1.i.i32.i, %conv.i.i31.i
  %conv2.i.i34.i = trunc i32 %xor.i.i33.i to i8
  store i8 %conv2.i.i34.i, i8* %result.i.i23.i, align 1
  %59 = load i32, i32* %i.i.i24.i, align 4
  %inc.i.i35.i = add nsw i32 %59, 1
  store i32 %inc.i.i35.i, i32* %i.i.i24.i, align 4
  br label %for.cond.i.i27.i

refresh_masks.exit:                               ; preds = %for.cond.i.i27.i
  %60 = load i8, i8* %result.i.i23.i, align 1
  %conv18.i = zext i8 %60 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %zr, i64 0, i64 0
  %61 = load i8*, i8** %x.addr, align 8
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  store i8* %arraydecay6, i8** %a.addr.i50, align 8
  store i8* %61, i8** %b.addr.i, align 8
  store i8* %arraydecay7, i8** %c.addr.i, align 8
  %call.i52 = call zeroext i8 (...) @rand() #3
  store i8 %call.i52, i8* %A.i, align 1
  %call1.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i, i8* %B.i, align 1
  %62 = load i8, i8* %A.i, align 1
  %conv.i53 = zext i8 %62 to i32
  %63 = load i8*, i8** %a.addr.i50, align 8
  store i8* %63, i8** %a.addr.i.i49, align 8
  %64 = load i8*, i8** %a.addr.i.i49, align 8
  store i8* %64, i8** %a.addr.i.i.i45, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i46, align 8
  store i8 0, i8* %result.i.i.i47, align 1
  store i32 0, i32* %i.i.i.i48, align 4
  br label %for.cond.i.i.i55

for.cond.i.i.i55:                                 ; preds = %for.body.i.i.i64, %refresh_masks.exit
  %65 = load i32, i32* %i.i.i.i48, align 4
  %cmp.i.i.i54 = icmp sle i32 %65, 2
  br i1 %cmp.i.i.i54, label %for.body.i.i.i64, label %xors.exit.i66

for.body.i.i.i64:                                 ; preds = %for.cond.i.i.i55
  %66 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i46, align 8
  %67 = load i8*, i8** %a.addr.i.i.i45, align 8
  %68 = load i32, i32* %i.i.i.i48, align 4
  %idxprom.i.i.i56 = sext i32 %68 to i64
  %arrayidx.i.i.i57 = getelementptr inbounds i8, i8* %67, i64 %idxprom.i.i.i56
  %69 = load i8, i8* %arrayidx.i.i.i57, align 1
  %call.i.i.i58 = call zeroext i8 %66(i8 zeroext %69) #3
  %conv.i.i.i59 = zext i8 %call.i.i.i58 to i32
  %70 = load i8, i8* %result.i.i.i47, align 1
  %conv1.i.i.i60 = zext i8 %70 to i32
  %xor.i.i.i61 = xor i32 %conv1.i.i.i60, %conv.i.i.i59
  %conv2.i.i.i62 = trunc i32 %xor.i.i.i61 to i8
  store i8 %conv2.i.i.i62, i8* %result.i.i.i47, align 1
  %71 = load i32, i32* %i.i.i.i48, align 4
  %inc.i.i.i63 = add nsw i32 %71, 1
  store i32 %inc.i.i.i63, i32* %i.i.i.i48, align 4
  br label %for.cond.i.i.i55

xors.exit.i66:                                    ; preds = %for.cond.i.i.i55
  %72 = load i8, i8* %result.i.i.i47, align 1
  %conv3.i = zext i8 %72 to i32
  %cmp.i65 = icmp eq i32 %conv.i53, %conv3.i
  call void @assume(i1 zeroext %cmp.i65) #3
  %73 = load i8, i8* %B.i, align 1
  %conv5.i = zext i8 %73 to i32
  %74 = load i8*, i8** %b.addr.i, align 8
  store i8* %74, i8** %a.addr.i149.i, align 8
  %75 = load i8*, i8** %a.addr.i149.i, align 8
  store i8* %75, i8** %a.addr.i.i145.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i, align 8
  store i8 0, i8* %result.i.i147.i, align 1
  store i32 0, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

for.cond.i.i151.i:                                ; preds = %for.body.i.i160.i, %xors.exit.i66
  %76 = load i32, i32* %i.i.i148.i, align 4
  %cmp.i.i150.i = icmp sle i32 %76, 2
  br i1 %cmp.i.i150.i, label %for.body.i.i160.i, label %xors.exit161.i

for.body.i.i160.i:                                ; preds = %for.cond.i.i151.i
  %77 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i, align 8
  %78 = load i8*, i8** %a.addr.i.i145.i, align 8
  %79 = load i32, i32* %i.i.i148.i, align 4
  %idxprom.i.i152.i = sext i32 %79 to i64
  %arrayidx.i.i153.i = getelementptr inbounds i8, i8* %78, i64 %idxprom.i.i152.i
  %80 = load i8, i8* %arrayidx.i.i153.i, align 1
  %call.i.i154.i = call zeroext i8 %77(i8 zeroext %80) #3
  %conv.i.i155.i = zext i8 %call.i.i154.i to i32
  %81 = load i8, i8* %result.i.i147.i, align 1
  %conv1.i.i156.i = zext i8 %81 to i32
  %xor.i.i157.i = xor i32 %conv1.i.i156.i, %conv.i.i155.i
  %conv2.i.i158.i = trunc i32 %xor.i.i157.i to i8
  store i8 %conv2.i.i158.i, i8* %result.i.i147.i, align 1
  %82 = load i32, i32* %i.i.i148.i, align 4
  %inc.i.i159.i = add nsw i32 %82, 1
  store i32 %inc.i.i159.i, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

xors.exit161.i:                                   ; preds = %for.cond.i.i151.i
  %83 = load i8, i8* %result.i.i147.i, align 1
  %conv7.i = zext i8 %83 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  store i32 0, i32* %i.i51, align 4
  br label %for.cond.i67

for.cond.i67:                                     ; preds = %for.end.i72, %xors.exit161.i
  %84 = load i32, i32* %i.i51, align 4
  %cmp10.i = icmp sle i32 %84, 2
  br i1 %cmp10.i, label %for.body.i68, label %for.end29.i

for.body.i68:                                     ; preds = %for.cond.i67
  %85 = load i32, i32* %i.i51, align 4
  %add.i = add nsw i32 %85, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i68
  %86 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %86, 2
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i72

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %87 = load i32, i32* %i.i51, align 4
  %idxprom.i69 = sext i32 %87 to i64
  %arrayidx.i70 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom.i69
  %88 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %88 to i64
  %arrayidx18.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i70, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %89 = load i32, i32* %i.i51, align 4
  %idxprom19.i = sext i32 %89 to i64
  %arrayidx20.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %90 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %90 to i64
  %arrayidx22.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %91 = load i8, i8* %arrayidx22.i, align 1
  %92 = load i32, i32* %j.i, align 4
  %idxprom23.i = sext i32 %92 to i64
  %arrayidx24.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom23.i
  %93 = load i32, i32* %i.i51, align 4
  %idxprom25.i = sext i32 %93 to i64
  %arrayidx26.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i, i64 0, i64 %idxprom25.i
  store i8 %91, i8* %arrayidx26.i, align 1
  %94 = load i32, i32* %j.i, align 4
  %inc.i71 = add nsw i32 %94, 1
  store i32 %inc.i71, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i72:                                      ; preds = %for.cond12.i
  %95 = load i32, i32* %i.i51, align 4
  %inc28.i = add nsw i32 %95, 1
  store i32 %inc28.i, i32* %i.i51, align 4
  br label %for.cond.i67

for.end29.i:                                      ; preds = %for.cond.i67
  store i32 0, i32* %i30.i, align 4
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.end98.i, %for.end29.i
  %96 = load i32, i32* %i30.i, align 4
  %cmp32.i = icmp sle i32 %96, 2
  br i1 %cmp32.i, label %for.body34.i, label %for.end101.i

for.body34.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %j35.i, align 4
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %if.end.i, %for.body34.i
  %97 = load i32, i32* %j35.i, align 4
  %cmp37.i = icmp sle i32 %97, 2
  br i1 %cmp37.i, label %for.body39.i, label %for.end98.i

for.body39.i:                                     ; preds = %for.cond36.i
  %98 = load i32, i32* %j35.i, align 4
  %99 = load i32, i32* %i30.i, align 4
  %cmp40.i = icmp ne i32 %98, %99
  br i1 %cmp40.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body39.i
  %100 = load i8*, i8** %b.addr.i, align 8
  %101 = load i32, i32* %j35.i, align 4
  %idxprom42.i = sext i32 %101 to i64
  %arrayidx43.i = getelementptr inbounds i8, i8* %100, i64 %idxprom42.i
  %102 = load i8, i8* %arrayidx43.i, align 1
  %conv44.i = zext i8 %102 to i32
  %103 = load i32, i32* %i30.i, align 4
  %idxprom45.i = sext i32 %103 to i64
  %arrayidx46.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom45.i
  %104 = load i32, i32* %j35.i, align 4
  %idxprom47.i = sext i32 %104 to i64
  %arrayidx48.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i, i64 0, i64 %idxprom47.i
  %105 = load i8, i8* %arrayidx48.i, align 1
  %conv49.i = zext i8 %105 to i32
  %xor.i73 = xor i32 %conv44.i, %conv49.i
  %conv50.i = trunc i32 %xor.i73 to i8
  %106 = load i32, i32* %i30.i, align 4
  %idxprom51.i = sext i32 %106 to i64
  %arrayidx52.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom51.i
  %107 = load i32, i32* %j35.i, align 4
  %idxprom53.i = sext i32 %107 to i64
  %arrayidx54.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i, i64 0, i64 %idxprom53.i
  store i8 %conv50.i, i8* %arrayidx54.i, align 1
  %108 = load i8*, i8** %a.addr.i50, align 8
  %109 = load i32, i32* %i30.i, align 4
  %idxprom55.i = sext i32 %109 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %108, i64 %idxprom55.i
  %110 = load i8, i8* %arrayidx56.i, align 1
  %conv57.i = zext i8 %110 to i32
  %xor58.i = xor i32 %conv57.i, 1
  %conv59.i = trunc i32 %xor58.i to i8
  %111 = load i32, i32* %i30.i, align 4
  %idxprom60.i = sext i32 %111 to i64
  %arrayidx61.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom60.i
  %112 = load i32, i32* %j35.i, align 4
  %idxprom62.i = sext i32 %112 to i64
  %arrayidx63.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i, i64 0, i64 %idxprom62.i
  %113 = load i8, i8* %arrayidx63.i, align 1
  %call64.i = call zeroext i8 @mult(i8 zeroext %conv59.i, i8 zeroext %113) #3
  %114 = load i32, i32* %i30.i, align 4
  %idxprom65.i = sext i32 %114 to i64
  %arrayidx66.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom65.i
  %115 = load i32, i32* %j35.i, align 4
  %idxprom67.i = sext i32 %115 to i64
  %arrayidx68.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i, i64 0, i64 %idxprom67.i
  store i8 %call64.i, i8* %arrayidx68.i, align 1
  %116 = load i8*, i8** %a.addr.i50, align 8
  %117 = load i32, i32* %i30.i, align 4
  %idxprom69.i = sext i32 %117 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %116, i64 %idxprom69.i
  %118 = load i8, i8* %arrayidx70.i, align 1
  %119 = load i32, i32* %i30.i, align 4
  %idxprom71.i = sext i32 %119 to i64
  %arrayidx72.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom71.i
  %120 = load i32, i32* %j35.i, align 4
  %idxprom73.i = sext i32 %120 to i64
  %arrayidx74.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i, i64 0, i64 %idxprom73.i
  %121 = load i8, i8* %arrayidx74.i, align 1
  %call75.i = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %121) #3
  %122 = load i32, i32* %i30.i, align 4
  %idxprom76.i = sext i32 %122 to i64
  %arrayidx77.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom76.i
  %123 = load i32, i32* %j35.i, align 4
  %idxprom78.i = sext i32 %123 to i64
  %arrayidx79.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i, i64 0, i64 %idxprom78.i
  store i8 %call75.i, i8* %arrayidx79.i, align 1
  %124 = load i32, i32* %i30.i, align 4
  %idxprom80.i = sext i32 %124 to i64
  %arrayidx81.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom80.i
  %125 = load i32, i32* %j35.i, align 4
  %idxprom82.i = sext i32 %125 to i64
  %arrayidx83.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i, i64 0, i64 %idxprom82.i
  %126 = load i8, i8* %arrayidx83.i, align 1
  %conv84.i = zext i8 %126 to i32
  %127 = load i32, i32* %i30.i, align 4
  %idxprom85.i = sext i32 %127 to i64
  %arrayidx86.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom85.i
  %128 = load i32, i32* %j35.i, align 4
  %idxprom87.i = sext i32 %128 to i64
  %arrayidx88.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i, i64 0, i64 %idxprom87.i
  %129 = load i8, i8* %arrayidx88.i, align 1
  %conv89.i = zext i8 %129 to i32
  %xor90.i = xor i32 %conv84.i, %conv89.i
  %conv91.i = trunc i32 %xor90.i to i8
  %130 = load i32, i32* %i30.i, align 4
  %idxprom92.i = sext i32 %130 to i64
  %arrayidx93.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom92.i
  %131 = load i32, i32* %j35.i, align 4
  %idxprom94.i = sext i32 %131 to i64
  %arrayidx95.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i, i64 0, i64 %idxprom94.i
  store i8 %conv91.i, i8* %arrayidx95.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body39.i
  %132 = load i32, i32* %j35.i, align 4
  %inc97.i = add nsw i32 %132, 1
  store i32 %inc97.i, i32* %j35.i, align 4
  br label %for.cond36.i

for.end98.i:                                      ; preds = %for.cond36.i
  %133 = load i32, i32* %i30.i, align 4
  %inc100.i = add nsw i32 %133, 1
  store i32 %inc100.i, i32* %i30.i, align 4
  br label %for.cond31.i

for.end101.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %i102.i, align 4
  br label %for.cond103.i

for.cond103.i:                                    ; preds = %for.end135.i, %for.end101.i
  %134 = load i32, i32* %i102.i, align 4
  %cmp104.i = icmp sle i32 %134, 2
  br i1 %cmp104.i, label %for.body106.i, label %for.end138.i

for.body106.i:                                    ; preds = %for.cond103.i
  %135 = load i8*, i8** %a.addr.i50, align 8
  %136 = load i32, i32* %i102.i, align 4
  %idxprom107.i = sext i32 %136 to i64
  %arrayidx108.i = getelementptr inbounds i8, i8* %135, i64 %idxprom107.i
  %137 = load i8, i8* %arrayidx108.i, align 1
  %138 = load i8*, i8** %b.addr.i, align 8
  %139 = load i32, i32* %i102.i, align 4
  %idxprom109.i = sext i32 %139 to i64
  %arrayidx110.i = getelementptr inbounds i8, i8* %138, i64 %idxprom109.i
  %140 = load i8, i8* %arrayidx110.i, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %140) #3
  %141 = load i8*, i8** %c.addr.i, align 8
  %142 = load i32, i32* %i102.i, align 4
  %idxprom112.i = sext i32 %142 to i64
  %arrayidx113.i = getelementptr inbounds i8, i8* %141, i64 %idxprom112.i
  store i8 %call111.i, i8* %arrayidx113.i, align 1
  store i32 0, i32* %j114.i, align 4
  br label %for.cond115.i

for.cond115.i:                                    ; preds = %if.end132.i, %for.body106.i
  %143 = load i32, i32* %j114.i, align 4
  %cmp116.i = icmp sle i32 %143, 2
  br i1 %cmp116.i, label %for.body118.i, label %for.end135.i

for.body118.i:                                    ; preds = %for.cond115.i
  %144 = load i32, i32* %j114.i, align 4
  %145 = load i32, i32* %i102.i, align 4
  %cmp119.i = icmp ne i32 %144, %145
  br i1 %cmp119.i, label %if.then121.i, label %if.end132.i

if.then121.i:                                     ; preds = %for.body118.i
  %146 = load i32, i32* %i102.i, align 4
  %idxprom122.i = sext i32 %146 to i64
  %arrayidx123.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom122.i
  %147 = load i32, i32* %j114.i, align 4
  %idxprom124.i = sext i32 %147 to i64
  %arrayidx125.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i, i64 0, i64 %idxprom124.i
  %148 = load i8, i8* %arrayidx125.i, align 1
  %conv126.i = zext i8 %148 to i32
  %149 = load i8*, i8** %c.addr.i, align 8
  %150 = load i32, i32* %i102.i, align 4
  %idxprom127.i = sext i32 %150 to i64
  %arrayidx128.i = getelementptr inbounds i8, i8* %149, i64 %idxprom127.i
  %151 = load i8, i8* %arrayidx128.i, align 1
  %conv129.i = zext i8 %151 to i32
  %xor130.i = xor i32 %conv129.i, %conv126.i
  %conv131.i = trunc i32 %xor130.i to i8
  store i8 %conv131.i, i8* %arrayidx128.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then121.i, %for.body118.i
  %152 = load i32, i32* %j114.i, align 4
  %inc134.i = add nsw i32 %152, 1
  store i32 %inc134.i, i32* %j114.i, align 4
  br label %for.cond115.i

for.end135.i:                                     ; preds = %for.cond115.i
  %153 = load i32, i32* %i102.i, align 4
  %inc137.i = add nsw i32 %153, 1
  store i32 %inc137.i, i32* %i102.i, align 4
  br label %for.cond103.i

for.end138.i:                                     ; preds = %for.cond103.i
  %154 = load i8, i8* %A.i, align 1
  %155 = load i8, i8* %B.i, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155) #3
  %conv140.i = zext i8 %call139.i to i32
  %156 = load i8*, i8** %c.addr.i, align 8
  store i8* %156, i8** %a.addr.i166.i, align 8
  %157 = load i8*, i8** %a.addr.i166.i, align 8
  store i8* %157, i8** %a.addr.i.i162.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i, align 8
  store i8 0, i8* %result.i.i164.i, align 1
  store i32 0, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

for.cond.i.i168.i:                                ; preds = %for.body.i.i177.i, %for.end138.i
  %158 = load i32, i32* %i.i.i165.i, align 4
  %cmp.i.i167.i = icmp sle i32 %158, 2
  br i1 %cmp.i.i167.i, label %for.body.i.i177.i, label %sec_mult.exit

for.body.i.i177.i:                                ; preds = %for.cond.i.i168.i
  %159 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i, align 8
  %160 = load i8*, i8** %a.addr.i.i162.i, align 8
  %161 = load i32, i32* %i.i.i165.i, align 4
  %idxprom.i.i169.i = sext i32 %161 to i64
  %arrayidx.i.i170.i = getelementptr inbounds i8, i8* %160, i64 %idxprom.i.i169.i
  %162 = load i8, i8* %arrayidx.i.i170.i, align 1
  %call.i.i171.i = call zeroext i8 %159(i8 zeroext %162) #3
  %conv.i.i172.i = zext i8 %call.i.i171.i to i32
  %163 = load i8, i8* %result.i.i164.i, align 1
  %conv1.i.i173.i = zext i8 %163 to i32
  %xor.i.i174.i = xor i32 %conv1.i.i173.i, %conv.i.i172.i
  %conv2.i.i175.i = trunc i32 %xor.i.i174.i to i8
  store i8 %conv2.i.i175.i, i8* %result.i.i164.i, align 1
  %164 = load i32, i32* %i.i.i165.i, align 4
  %inc.i.i176.i = add nsw i32 %164, 1
  store i32 %inc.i.i176.i, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

sec_mult.exit:                                    ; preds = %for.cond.i.i168.i
  %165 = load i8, i8* %result.i.i164.i, align 1
  %conv142.i = zext i8 %165 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %arraydecay8 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  store i8* %arraydecay8, i8** %from.addr.i74, align 8
  store i8* %arraydecay9, i8** %to.addr.i75, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i76, align 8
  store i32 0, i32* %i.i77, align 4
  br label %for.cond.i79

for.cond.i79:                                     ; preds = %for.body.i85, %sec_mult.exit
  %166 = load i32, i32* %i.i77, align 4
  %cmp.i78 = icmp sle i32 %166, 2
  br i1 %cmp.i78, label %for.body.i85, label %transform.exit88

for.body.i85:                                     ; preds = %for.cond.i79
  %167 = load i8 (i8)*, i8 (i8)** %f.addr.i76, align 8
  %168 = load i8*, i8** %from.addr.i74, align 8
  %169 = load i32, i32* %i.i77, align 4
  %idxprom.i80 = sext i32 %169 to i64
  %arrayidx.i81 = getelementptr inbounds i8, i8* %168, i64 %idxprom.i80
  %170 = load i8, i8* %arrayidx.i81, align 1
  %call.i82 = call zeroext i8 %167(i8 zeroext %170) #3
  %171 = load i8*, i8** %to.addr.i75, align 8
  %172 = load i32, i32* %i.i77, align 4
  %idxprom1.i83 = sext i32 %172 to i64
  %arrayidx2.i84 = getelementptr inbounds i8, i8* %171, i64 %idxprom1.i83
  store i8 %call.i82, i8* %arrayidx2.i84, align 1
  %173 = load i32, i32* %i.i77, align 4
  %inc.i86 = add nsw i32 %173, 1
  store i32 %inc.i86, i32* %i.i77, align 4
  br label %for.cond.i79

transform.exit88:                                 ; preds = %for.cond.i79
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  store i8* %arraydecay10, i8** %x.addr.i103, align 8
  store i8* %arraydecay11, i8** %y.addr.i104, align 8
  %call.i108 = call zeroext i8 (...) @rand() #3
  store i8 %call.i108, i8* %X.i105, align 1
  %174 = load i8, i8* %X.i105, align 1
  %conv.i109 = zext i8 %174 to i32
  %175 = load i8*, i8** %x.addr.i103, align 8
  store i8* %175, i8** %a.addr.i.i102, align 8
  %176 = load i8*, i8** %a.addr.i.i102, align 8
  store i8* %176, i8** %a.addr.i.i.i98, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i99, align 8
  store i8 0, i8* %result.i.i.i100, align 1
  store i32 0, i32* %i.i.i.i101, align 4
  br label %for.cond.i.i.i111

for.cond.i.i.i111:                                ; preds = %for.body.i.i.i120, %transform.exit88
  %177 = load i32, i32* %i.i.i.i101, align 4
  %cmp.i.i.i110 = icmp sle i32 %177, 2
  br i1 %cmp.i.i.i110, label %for.body.i.i.i120, label %xors.exit.i123

for.body.i.i.i120:                                ; preds = %for.cond.i.i.i111
  %178 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i99, align 8
  %179 = load i8*, i8** %a.addr.i.i.i98, align 8
  %180 = load i32, i32* %i.i.i.i101, align 4
  %idxprom.i.i.i112 = sext i32 %180 to i64
  %arrayidx.i.i.i113 = getelementptr inbounds i8, i8* %179, i64 %idxprom.i.i.i112
  %181 = load i8, i8* %arrayidx.i.i.i113, align 1
  %call.i.i.i114 = call zeroext i8 %178(i8 zeroext %181) #3
  %conv.i.i.i115 = zext i8 %call.i.i.i114 to i32
  %182 = load i8, i8* %result.i.i.i100, align 1
  %conv1.i.i.i116 = zext i8 %182 to i32
  %xor.i.i.i117 = xor i32 %conv1.i.i.i116, %conv.i.i.i115
  %conv2.i.i.i118 = trunc i32 %xor.i.i.i117 to i8
  store i8 %conv2.i.i.i118, i8* %result.i.i.i100, align 1
  %183 = load i32, i32* %i.i.i.i101, align 4
  %inc.i.i.i119 = add nsw i32 %183, 1
  store i32 %inc.i.i.i119, i32* %i.i.i.i101, align 4
  br label %for.cond.i.i.i111

xors.exit.i123:                                   ; preds = %for.cond.i.i.i111
  %184 = load i8, i8* %result.i.i.i100, align 1
  %conv2.i121 = zext i8 %184 to i32
  %cmp.i122 = icmp eq i32 %conv.i109, %conv2.i121
  call void @assume(i1 zeroext %cmp.i122) #3
  %185 = load i8*, i8** %x.addr.i103, align 8
  %186 = load i8*, i8** %y.addr.i104, align 8
  store i8* %185, i8** %from.addr.i.i94, align 8
  store i8* %186, i8** %to.addr.i.i95, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i96, align 8
  store i32 0, i32* %i.i.i97, align 4
  br label %for.cond.i.i125

for.cond.i.i125:                                  ; preds = %for.body.i.i132, %xors.exit.i123
  %187 = load i32, i32* %i.i.i97, align 4
  %cmp.i.i124 = icmp sle i32 %187, 2
  br i1 %cmp.i.i124, label %for.body.i.i132, label %transform.exit.i133

for.body.i.i132:                                  ; preds = %for.cond.i.i125
  %188 = load i8 (i8)*, i8 (i8)** %f.addr.i.i96, align 8
  %189 = load i8*, i8** %from.addr.i.i94, align 8
  %190 = load i32, i32* %i.i.i97, align 4
  %idxprom.i.i126 = sext i32 %190 to i64
  %arrayidx.i.i127 = getelementptr inbounds i8, i8* %189, i64 %idxprom.i.i126
  %191 = load i8, i8* %arrayidx.i.i127, align 1
  %call.i.i128 = call zeroext i8 %188(i8 zeroext %191) #3
  %192 = load i8*, i8** %to.addr.i.i95, align 8
  %193 = load i32, i32* %i.i.i97, align 4
  %idxprom1.i.i129 = sext i32 %193 to i64
  %arrayidx2.i.i130 = getelementptr inbounds i8, i8* %192, i64 %idxprom1.i.i129
  store i8 %call.i.i128, i8* %arrayidx2.i.i130, align 1
  %194 = load i32, i32* %i.i.i97, align 4
  %inc.i.i131 = add nsw i32 %194, 1
  store i32 %inc.i.i131, i32* %i.i.i97, align 4
  br label %for.cond.i.i125

transform.exit.i133:                              ; preds = %for.cond.i.i125
  store i8 1, i8* %i.i106, align 1
  br label %for.cond.i136

for.cond.i136:                                    ; preds = %for.body.i148, %transform.exit.i133
  %195 = load i8, i8* %i.i106, align 1
  %conv4.i134 = zext i8 %195 to i32
  %cmp5.i135 = icmp sle i32 %conv4.i134, 2
  br i1 %cmp5.i135, label %for.body.i148, label %for.end.i151

for.body.i148:                                    ; preds = %for.cond.i136
  %call7.i137 = call zeroext i8 (...) @rand() #3
  store i8 %call7.i137, i8* %tmp.i107, align 1
  %196 = load i8, i8* %tmp.i107, align 1
  %conv8.i138 = zext i8 %196 to i32
  %197 = load i8*, i8** %y.addr.i104, align 8
  %198 = load i8, i8* %197, align 1
  %conv9.i139 = zext i8 %198 to i32
  %xor.i140 = xor i32 %conv9.i139, %conv8.i138
  %conv10.i141 = trunc i32 %xor.i140 to i8
  store i8 %conv10.i141, i8* %197, align 1
  %199 = load i8, i8* %tmp.i107, align 1
  %conv11.i142 = zext i8 %199 to i32
  %200 = load i8*, i8** %y.addr.i104, align 8
  %201 = load i8, i8* %i.i106, align 1
  %idxprom.i143 = zext i8 %201 to i64
  %arrayidx12.i144 = getelementptr inbounds i8, i8* %200, i64 %idxprom.i143
  %202 = load i8, i8* %arrayidx12.i144, align 1
  %conv13.i145 = zext i8 %202 to i32
  %xor14.i146 = xor i32 %conv13.i145, %conv11.i142
  %conv15.i147 = trunc i32 %xor14.i146 to i8
  store i8 %conv15.i147, i8* %arrayidx12.i144, align 1
  %203 = load i8, i8* %i.i106, align 1
  %inc.i149 = add i8 %203, 1
  store i8 %inc.i149, i8* %i.i106, align 1
  br label %for.cond.i136

for.end.i151:                                     ; preds = %for.cond.i136
  %204 = load i8, i8* %X.i105, align 1
  %conv16.i150 = zext i8 %204 to i32
  %205 = load i8*, i8** %y.addr.i104, align 8
  store i8* %205, i8** %a.addr.i25.i93, align 8
  %206 = load i8*, i8** %a.addr.i25.i93, align 8
  store i8* %206, i8** %a.addr.i.i21.i89, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i90, align 8
  store i8 0, i8* %result.i.i23.i91, align 1
  store i32 0, i32* %i.i.i24.i92, align 4
  br label %for.cond.i.i27.i153

for.cond.i.i27.i153:                              ; preds = %for.body.i.i36.i162, %for.end.i151
  %207 = load i32, i32* %i.i.i24.i92, align 4
  %cmp.i.i26.i152 = icmp sle i32 %207, 2
  br i1 %cmp.i.i26.i152, label %for.body.i.i36.i162, label %refresh_masks.exit165

for.body.i.i36.i162:                              ; preds = %for.cond.i.i27.i153
  %208 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i90, align 8
  %209 = load i8*, i8** %a.addr.i.i21.i89, align 8
  %210 = load i32, i32* %i.i.i24.i92, align 4
  %idxprom.i.i28.i154 = sext i32 %210 to i64
  %arrayidx.i.i29.i155 = getelementptr inbounds i8, i8* %209, i64 %idxprom.i.i28.i154
  %211 = load i8, i8* %arrayidx.i.i29.i155, align 1
  %call.i.i30.i156 = call zeroext i8 %208(i8 zeroext %211) #3
  %conv.i.i31.i157 = zext i8 %call.i.i30.i156 to i32
  %212 = load i8, i8* %result.i.i23.i91, align 1
  %conv1.i.i32.i158 = zext i8 %212 to i32
  %xor.i.i33.i159 = xor i32 %conv1.i.i32.i158, %conv.i.i31.i157
  %conv2.i.i34.i160 = trunc i32 %xor.i.i33.i159 to i8
  store i8 %conv2.i.i34.i160, i8* %result.i.i23.i91, align 1
  %213 = load i32, i32* %i.i.i24.i92, align 4
  %inc.i.i35.i161 = add nsw i32 %213, 1
  store i32 %inc.i.i35.i161, i32* %i.i.i24.i92, align 4
  br label %for.cond.i.i27.i153

refresh_masks.exit165:                            ; preds = %for.cond.i.i27.i153
  %214 = load i8, i8* %result.i.i23.i91, align 1
  %conv18.i163 = zext i8 %214 to i32
  %cmp19.i164 = icmp eq i32 %conv16.i150, %conv18.i163
  call void @assert(i1 zeroext %cmp19.i164) #3
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  store i8* %arraydecay12, i8** %a.addr.i181, align 8
  store i8* %arraydecay13, i8** %b.addr.i182, align 8
  store i8* %arraydecay14, i8** %c.addr.i183, align 8
  %call.i197 = call zeroext i8 (...) @rand() #3
  store i8 %call.i197, i8* %A.i184, align 1
  %call1.i198 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i198, i8* %B.i185, align 1
  %215 = load i8, i8* %A.i184, align 1
  %conv.i199 = zext i8 %215 to i32
  %216 = load i8*, i8** %a.addr.i181, align 8
  store i8* %216, i8** %a.addr.i.i180, align 8
  %217 = load i8*, i8** %a.addr.i.i180, align 8
  store i8* %217, i8** %a.addr.i.i.i176, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i177, align 8
  store i8 0, i8* %result.i.i.i178, align 1
  store i32 0, i32* %i.i.i.i179, align 4
  br label %for.cond.i.i.i201

for.cond.i.i.i201:                                ; preds = %for.body.i.i.i210, %refresh_masks.exit165
  %218 = load i32, i32* %i.i.i.i179, align 4
  %cmp.i.i.i200 = icmp sle i32 %218, 2
  br i1 %cmp.i.i.i200, label %for.body.i.i.i210, label %xors.exit.i214

for.body.i.i.i210:                                ; preds = %for.cond.i.i.i201
  %219 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i177, align 8
  %220 = load i8*, i8** %a.addr.i.i.i176, align 8
  %221 = load i32, i32* %i.i.i.i179, align 4
  %idxprom.i.i.i202 = sext i32 %221 to i64
  %arrayidx.i.i.i203 = getelementptr inbounds i8, i8* %220, i64 %idxprom.i.i.i202
  %222 = load i8, i8* %arrayidx.i.i.i203, align 1
  %call.i.i.i204 = call zeroext i8 %219(i8 zeroext %222) #3
  %conv.i.i.i205 = zext i8 %call.i.i.i204 to i32
  %223 = load i8, i8* %result.i.i.i178, align 1
  %conv1.i.i.i206 = zext i8 %223 to i32
  %xor.i.i.i207 = xor i32 %conv1.i.i.i206, %conv.i.i.i205
  %conv2.i.i.i208 = trunc i32 %xor.i.i.i207 to i8
  store i8 %conv2.i.i.i208, i8* %result.i.i.i178, align 1
  %224 = load i32, i32* %i.i.i.i179, align 4
  %inc.i.i.i209 = add nsw i32 %224, 1
  store i32 %inc.i.i.i209, i32* %i.i.i.i179, align 4
  br label %for.cond.i.i.i201

xors.exit.i214:                                   ; preds = %for.cond.i.i.i201
  %225 = load i8, i8* %result.i.i.i178, align 1
  %conv3.i211 = zext i8 %225 to i32
  %cmp.i212 = icmp eq i32 %conv.i199, %conv3.i211
  call void @assume(i1 zeroext %cmp.i212) #3
  %226 = load i8, i8* %B.i185, align 1
  %conv5.i213 = zext i8 %226 to i32
  %227 = load i8*, i8** %b.addr.i182, align 8
  store i8* %227, i8** %a.addr.i149.i175, align 8
  %228 = load i8*, i8** %a.addr.i149.i175, align 8
  store i8* %228, i8** %a.addr.i.i145.i171, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i172, align 8
  store i8 0, i8* %result.i.i147.i173, align 1
  store i32 0, i32* %i.i.i148.i174, align 4
  br label %for.cond.i.i151.i216

for.cond.i.i151.i216:                             ; preds = %for.body.i.i160.i225, %xors.exit.i214
  %229 = load i32, i32* %i.i.i148.i174, align 4
  %cmp.i.i150.i215 = icmp sle i32 %229, 2
  br i1 %cmp.i.i150.i215, label %for.body.i.i160.i225, label %xors.exit161.i228

for.body.i.i160.i225:                             ; preds = %for.cond.i.i151.i216
  %230 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i172, align 8
  %231 = load i8*, i8** %a.addr.i.i145.i171, align 8
  %232 = load i32, i32* %i.i.i148.i174, align 4
  %idxprom.i.i152.i217 = sext i32 %232 to i64
  %arrayidx.i.i153.i218 = getelementptr inbounds i8, i8* %231, i64 %idxprom.i.i152.i217
  %233 = load i8, i8* %arrayidx.i.i153.i218, align 1
  %call.i.i154.i219 = call zeroext i8 %230(i8 zeroext %233) #3
  %conv.i.i155.i220 = zext i8 %call.i.i154.i219 to i32
  %234 = load i8, i8* %result.i.i147.i173, align 1
  %conv1.i.i156.i221 = zext i8 %234 to i32
  %xor.i.i157.i222 = xor i32 %conv1.i.i156.i221, %conv.i.i155.i220
  %conv2.i.i158.i223 = trunc i32 %xor.i.i157.i222 to i8
  store i8 %conv2.i.i158.i223, i8* %result.i.i147.i173, align 1
  %235 = load i32, i32* %i.i.i148.i174, align 4
  %inc.i.i159.i224 = add nsw i32 %235, 1
  store i32 %inc.i.i159.i224, i32* %i.i.i148.i174, align 4
  br label %for.cond.i.i151.i216

xors.exit161.i228:                                ; preds = %for.cond.i.i151.i216
  %236 = load i8, i8* %result.i.i147.i173, align 1
  %conv7.i226 = zext i8 %236 to i32
  %cmp8.i227 = icmp eq i32 %conv5.i213, %conv7.i226
  call void @assume(i1 zeroext %cmp8.i227) #3
  store i32 0, i32* %i.i191, align 4
  br label %for.cond.i230

for.cond.i230:                                    ; preds = %for.end.i250, %xors.exit161.i228
  %237 = load i32, i32* %i.i191, align 4
  %cmp10.i229 = icmp sle i32 %237, 2
  br i1 %cmp10.i229, label %for.body.i232, label %for.end29.i252

for.body.i232:                                    ; preds = %for.cond.i230
  %238 = load i32, i32* %i.i191, align 4
  %add.i231 = add nsw i32 %238, 1
  store i32 %add.i231, i32* %j.i192, align 4
  br label %for.cond12.i234

for.cond12.i234:                                  ; preds = %for.body15.i248, %for.body.i232
  %239 = load i32, i32* %j.i192, align 4
  %cmp13.i233 = icmp sle i32 %239, 2
  br i1 %cmp13.i233, label %for.body15.i248, label %for.end.i250

for.body15.i248:                                  ; preds = %for.cond12.i234
  %call16.i235 = call zeroext i8 (...) @rand() #3
  %240 = load i32, i32* %i.i191, align 4
  %idxprom.i236 = sext i32 %240 to i64
  %arrayidx.i237 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom.i236
  %241 = load i32, i32* %j.i192, align 4
  %idxprom17.i238 = sext i32 %241 to i64
  %arrayidx18.i239 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i237, i64 0, i64 %idxprom17.i238
  store i8 %call16.i235, i8* %arrayidx18.i239, align 1
  %242 = load i32, i32* %i.i191, align 4
  %idxprom19.i240 = sext i32 %242 to i64
  %arrayidx20.i241 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom19.i240
  %243 = load i32, i32* %j.i192, align 4
  %idxprom21.i242 = sext i32 %243 to i64
  %arrayidx22.i243 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i241, i64 0, i64 %idxprom21.i242
  %244 = load i8, i8* %arrayidx22.i243, align 1
  %245 = load i32, i32* %j.i192, align 4
  %idxprom23.i244 = sext i32 %245 to i64
  %arrayidx24.i245 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom23.i244
  %246 = load i32, i32* %i.i191, align 4
  %idxprom25.i246 = sext i32 %246 to i64
  %arrayidx26.i247 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i245, i64 0, i64 %idxprom25.i246
  store i8 %244, i8* %arrayidx26.i247, align 1
  %247 = load i32, i32* %j.i192, align 4
  %inc.i249 = add nsw i32 %247, 1
  store i32 %inc.i249, i32* %j.i192, align 4
  br label %for.cond12.i234

for.end.i250:                                     ; preds = %for.cond12.i234
  %248 = load i32, i32* %i.i191, align 4
  %inc28.i251 = add nsw i32 %248, 1
  store i32 %inc28.i251, i32* %i.i191, align 4
  br label %for.cond.i230

for.end29.i252:                                   ; preds = %for.cond.i230
  store i32 0, i32* %i30.i193, align 4
  br label %for.cond31.i254

for.cond31.i254:                                  ; preds = %for.end98.i318, %for.end29.i252
  %249 = load i32, i32* %i30.i193, align 4
  %cmp32.i253 = icmp sle i32 %249, 2
  br i1 %cmp32.i253, label %for.body34.i255, label %for.end101.i320

for.body34.i255:                                  ; preds = %for.cond31.i254
  store i32 0, i32* %j35.i194, align 4
  br label %for.cond36.i257

for.cond36.i257:                                  ; preds = %if.end.i316, %for.body34.i255
  %250 = load i32, i32* %j35.i194, align 4
  %cmp37.i256 = icmp sle i32 %250, 2
  br i1 %cmp37.i256, label %for.body39.i259, label %for.end98.i318

for.body39.i259:                                  ; preds = %for.cond36.i257
  %251 = load i32, i32* %j35.i194, align 4
  %252 = load i32, i32* %i30.i193, align 4
  %cmp40.i258 = icmp ne i32 %251, %252
  br i1 %cmp40.i258, label %if.then.i315, label %if.end.i316

if.then.i315:                                     ; preds = %for.body39.i259
  %253 = load i8*, i8** %b.addr.i182, align 8
  %254 = load i32, i32* %j35.i194, align 4
  %idxprom42.i260 = sext i32 %254 to i64
  %arrayidx43.i261 = getelementptr inbounds i8, i8* %253, i64 %idxprom42.i260
  %255 = load i8, i8* %arrayidx43.i261, align 1
  %conv44.i262 = zext i8 %255 to i32
  %256 = load i32, i32* %i30.i193, align 4
  %idxprom45.i263 = sext i32 %256 to i64
  %arrayidx46.i264 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom45.i263
  %257 = load i32, i32* %j35.i194, align 4
  %idxprom47.i265 = sext i32 %257 to i64
  %arrayidx48.i266 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i264, i64 0, i64 %idxprom47.i265
  %258 = load i8, i8* %arrayidx48.i266, align 1
  %conv49.i267 = zext i8 %258 to i32
  %xor.i268 = xor i32 %conv44.i262, %conv49.i267
  %conv50.i269 = trunc i32 %xor.i268 to i8
  %259 = load i32, i32* %i30.i193, align 4
  %idxprom51.i270 = sext i32 %259 to i64
  %arrayidx52.i271 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom51.i270
  %260 = load i32, i32* %j35.i194, align 4
  %idxprom53.i272 = sext i32 %260 to i64
  %arrayidx54.i273 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i271, i64 0, i64 %idxprom53.i272
  store i8 %conv50.i269, i8* %arrayidx54.i273, align 1
  %261 = load i8*, i8** %a.addr.i181, align 8
  %262 = load i32, i32* %i30.i193, align 4
  %idxprom55.i274 = sext i32 %262 to i64
  %arrayidx56.i275 = getelementptr inbounds i8, i8* %261, i64 %idxprom55.i274
  %263 = load i8, i8* %arrayidx56.i275, align 1
  %conv57.i276 = zext i8 %263 to i32
  %xor58.i277 = xor i32 %conv57.i276, 1
  %conv59.i278 = trunc i32 %xor58.i277 to i8
  %264 = load i32, i32* %i30.i193, align 4
  %idxprom60.i279 = sext i32 %264 to i64
  %arrayidx61.i280 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom60.i279
  %265 = load i32, i32* %j35.i194, align 4
  %idxprom62.i281 = sext i32 %265 to i64
  %arrayidx63.i282 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i280, i64 0, i64 %idxprom62.i281
  %266 = load i8, i8* %arrayidx63.i282, align 1
  %call64.i283 = call zeroext i8 @mult(i8 zeroext %conv59.i278, i8 zeroext %266) #3
  %267 = load i32, i32* %i30.i193, align 4
  %idxprom65.i284 = sext i32 %267 to i64
  %arrayidx66.i285 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom65.i284
  %268 = load i32, i32* %j35.i194, align 4
  %idxprom67.i286 = sext i32 %268 to i64
  %arrayidx68.i287 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i285, i64 0, i64 %idxprom67.i286
  store i8 %call64.i283, i8* %arrayidx68.i287, align 1
  %269 = load i8*, i8** %a.addr.i181, align 8
  %270 = load i32, i32* %i30.i193, align 4
  %idxprom69.i288 = sext i32 %270 to i64
  %arrayidx70.i289 = getelementptr inbounds i8, i8* %269, i64 %idxprom69.i288
  %271 = load i8, i8* %arrayidx70.i289, align 1
  %272 = load i32, i32* %i30.i193, align 4
  %idxprom71.i290 = sext i32 %272 to i64
  %arrayidx72.i291 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom71.i290
  %273 = load i32, i32* %j35.i194, align 4
  %idxprom73.i292 = sext i32 %273 to i64
  %arrayidx74.i293 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i291, i64 0, i64 %idxprom73.i292
  %274 = load i8, i8* %arrayidx74.i293, align 1
  %call75.i294 = call zeroext i8 @mult(i8 zeroext %271, i8 zeroext %274) #3
  %275 = load i32, i32* %i30.i193, align 4
  %idxprom76.i295 = sext i32 %275 to i64
  %arrayidx77.i296 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom76.i295
  %276 = load i32, i32* %j35.i194, align 4
  %idxprom78.i297 = sext i32 %276 to i64
  %arrayidx79.i298 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i296, i64 0, i64 %idxprom78.i297
  store i8 %call75.i294, i8* %arrayidx79.i298, align 1
  %277 = load i32, i32* %i30.i193, align 4
  %idxprom80.i299 = sext i32 %277 to i64
  %arrayidx81.i300 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom80.i299
  %278 = load i32, i32* %j35.i194, align 4
  %idxprom82.i301 = sext i32 %278 to i64
  %arrayidx83.i302 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i300, i64 0, i64 %idxprom82.i301
  %279 = load i8, i8* %arrayidx83.i302, align 1
  %conv84.i303 = zext i8 %279 to i32
  %280 = load i32, i32* %i30.i193, align 4
  %idxprom85.i304 = sext i32 %280 to i64
  %arrayidx86.i305 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom85.i304
  %281 = load i32, i32* %j35.i194, align 4
  %idxprom87.i306 = sext i32 %281 to i64
  %arrayidx88.i307 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i305, i64 0, i64 %idxprom87.i306
  %282 = load i8, i8* %arrayidx88.i307, align 1
  %conv89.i308 = zext i8 %282 to i32
  %xor90.i309 = xor i32 %conv84.i303, %conv89.i308
  %conv91.i310 = trunc i32 %xor90.i309 to i8
  %283 = load i32, i32* %i30.i193, align 4
  %idxprom92.i311 = sext i32 %283 to i64
  %arrayidx93.i312 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom92.i311
  %284 = load i32, i32* %j35.i194, align 4
  %idxprom94.i313 = sext i32 %284 to i64
  %arrayidx95.i314 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i312, i64 0, i64 %idxprom94.i313
  store i8 %conv91.i310, i8* %arrayidx95.i314, align 1
  br label %if.end.i316

if.end.i316:                                      ; preds = %if.then.i315, %for.body39.i259
  %285 = load i32, i32* %j35.i194, align 4
  %inc97.i317 = add nsw i32 %285, 1
  store i32 %inc97.i317, i32* %j35.i194, align 4
  br label %for.cond36.i257

for.end98.i318:                                   ; preds = %for.cond36.i257
  %286 = load i32, i32* %i30.i193, align 4
  %inc100.i319 = add nsw i32 %286, 1
  store i32 %inc100.i319, i32* %i30.i193, align 4
  br label %for.cond31.i254

for.end101.i320:                                  ; preds = %for.cond31.i254
  store i32 0, i32* %i102.i195, align 4
  br label %for.cond103.i322

for.cond103.i322:                                 ; preds = %for.end135.i348, %for.end101.i320
  %287 = load i32, i32* %i102.i195, align 4
  %cmp104.i321 = icmp sle i32 %287, 2
  br i1 %cmp104.i321, label %for.body106.i330, label %for.end138.i352

for.body106.i330:                                 ; preds = %for.cond103.i322
  %288 = load i8*, i8** %a.addr.i181, align 8
  %289 = load i32, i32* %i102.i195, align 4
  %idxprom107.i323 = sext i32 %289 to i64
  %arrayidx108.i324 = getelementptr inbounds i8, i8* %288, i64 %idxprom107.i323
  %290 = load i8, i8* %arrayidx108.i324, align 1
  %291 = load i8*, i8** %b.addr.i182, align 8
  %292 = load i32, i32* %i102.i195, align 4
  %idxprom109.i325 = sext i32 %292 to i64
  %arrayidx110.i326 = getelementptr inbounds i8, i8* %291, i64 %idxprom109.i325
  %293 = load i8, i8* %arrayidx110.i326, align 1
  %call111.i327 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %293) #3
  %294 = load i8*, i8** %c.addr.i183, align 8
  %295 = load i32, i32* %i102.i195, align 4
  %idxprom112.i328 = sext i32 %295 to i64
  %arrayidx113.i329 = getelementptr inbounds i8, i8* %294, i64 %idxprom112.i328
  store i8 %call111.i327, i8* %arrayidx113.i329, align 1
  store i32 0, i32* %j114.i196, align 4
  br label %for.cond115.i332

for.cond115.i332:                                 ; preds = %if.end132.i346, %for.body106.i330
  %296 = load i32, i32* %j114.i196, align 4
  %cmp116.i331 = icmp sle i32 %296, 2
  br i1 %cmp116.i331, label %for.body118.i334, label %for.end135.i348

for.body118.i334:                                 ; preds = %for.cond115.i332
  %297 = load i32, i32* %j114.i196, align 4
  %298 = load i32, i32* %i102.i195, align 4
  %cmp119.i333 = icmp ne i32 %297, %298
  br i1 %cmp119.i333, label %if.then121.i345, label %if.end132.i346

if.then121.i345:                                  ; preds = %for.body118.i334
  %299 = load i32, i32* %i102.i195, align 4
  %idxprom122.i335 = sext i32 %299 to i64
  %arrayidx123.i336 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom122.i335
  %300 = load i32, i32* %j114.i196, align 4
  %idxprom124.i337 = sext i32 %300 to i64
  %arrayidx125.i338 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i336, i64 0, i64 %idxprom124.i337
  %301 = load i8, i8* %arrayidx125.i338, align 1
  %conv126.i339 = zext i8 %301 to i32
  %302 = load i8*, i8** %c.addr.i183, align 8
  %303 = load i32, i32* %i102.i195, align 4
  %idxprom127.i340 = sext i32 %303 to i64
  %arrayidx128.i341 = getelementptr inbounds i8, i8* %302, i64 %idxprom127.i340
  %304 = load i8, i8* %arrayidx128.i341, align 1
  %conv129.i342 = zext i8 %304 to i32
  %xor130.i343 = xor i32 %conv129.i342, %conv126.i339
  %conv131.i344 = trunc i32 %xor130.i343 to i8
  store i8 %conv131.i344, i8* %arrayidx128.i341, align 1
  br label %if.end132.i346

if.end132.i346:                                   ; preds = %if.then121.i345, %for.body118.i334
  %305 = load i32, i32* %j114.i196, align 4
  %inc134.i347 = add nsw i32 %305, 1
  store i32 %inc134.i347, i32* %j114.i196, align 4
  br label %for.cond115.i332

for.end135.i348:                                  ; preds = %for.cond115.i332
  %306 = load i32, i32* %i102.i195, align 4
  %inc137.i349 = add nsw i32 %306, 1
  store i32 %inc137.i349, i32* %i102.i195, align 4
  br label %for.cond103.i322

for.end138.i352:                                  ; preds = %for.cond103.i322
  %307 = load i8, i8* %A.i184, align 1
  %308 = load i8, i8* %B.i185, align 1
  %call139.i350 = call zeroext i8 @mult(i8 zeroext %307, i8 zeroext %308) #3
  %conv140.i351 = zext i8 %call139.i350 to i32
  %309 = load i8*, i8** %c.addr.i183, align 8
  store i8* %309, i8** %a.addr.i166.i170, align 8
  %310 = load i8*, i8** %a.addr.i166.i170, align 8
  store i8* %310, i8** %a.addr.i.i162.i166, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i167, align 8
  store i8 0, i8* %result.i.i164.i168, align 1
  store i32 0, i32* %i.i.i165.i169, align 4
  br label %for.cond.i.i168.i354

for.cond.i.i168.i354:                             ; preds = %for.body.i.i177.i363, %for.end138.i352
  %311 = load i32, i32* %i.i.i165.i169, align 4
  %cmp.i.i167.i353 = icmp sle i32 %311, 2
  br i1 %cmp.i.i167.i353, label %for.body.i.i177.i363, label %sec_mult.exit366

for.body.i.i177.i363:                             ; preds = %for.cond.i.i168.i354
  %312 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i167, align 8
  %313 = load i8*, i8** %a.addr.i.i162.i166, align 8
  %314 = load i32, i32* %i.i.i165.i169, align 4
  %idxprom.i.i169.i355 = sext i32 %314 to i64
  %arrayidx.i.i170.i356 = getelementptr inbounds i8, i8* %313, i64 %idxprom.i.i169.i355
  %315 = load i8, i8* %arrayidx.i.i170.i356, align 1
  %call.i.i171.i357 = call zeroext i8 %312(i8 zeroext %315) #3
  %conv.i.i172.i358 = zext i8 %call.i.i171.i357 to i32
  %316 = load i8, i8* %result.i.i164.i168, align 1
  %conv1.i.i173.i359 = zext i8 %316 to i32
  %xor.i.i174.i360 = xor i32 %conv1.i.i173.i359, %conv.i.i172.i358
  %conv2.i.i175.i361 = trunc i32 %xor.i.i174.i360 to i8
  store i8 %conv2.i.i175.i361, i8* %result.i.i164.i168, align 1
  %317 = load i32, i32* %i.i.i165.i169, align 4
  %inc.i.i176.i362 = add nsw i32 %317, 1
  store i32 %inc.i.i176.i362, i32* %i.i.i165.i169, align 4
  br label %for.cond.i.i168.i354

sec_mult.exit366:                                 ; preds = %for.cond.i.i168.i354
  %318 = load i8, i8* %result.i.i164.i168, align 1
  %conv142.i364 = zext i8 %318 to i32
  %cmp143.i365 = icmp eq i32 %conv140.i351, %conv142.i364
  call void @assert(i1 zeroext %cmp143.i365) #3
  %arraydecay15 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [3 x i8], [3 x i8]* %v16, i64 0, i64 0
  store i8* %arraydecay15, i8** %from.addr.i367, align 8
  store i8* %arraydecay16, i8** %to.addr.i368, align 8
  store i8 (i8)* @exp16, i8 (i8)** %f.addr.i369, align 8
  store i32 0, i32* %i.i370, align 4
  br label %for.cond.i372

for.cond.i372:                                    ; preds = %for.body.i378, %sec_mult.exit366
  %319 = load i32, i32* %i.i370, align 4
  %cmp.i371 = icmp sle i32 %319, 2
  br i1 %cmp.i371, label %for.body.i378, label %transform.exit381

for.body.i378:                                    ; preds = %for.cond.i372
  %320 = load i8 (i8)*, i8 (i8)** %f.addr.i369, align 8
  %321 = load i8*, i8** %from.addr.i367, align 8
  %322 = load i32, i32* %i.i370, align 4
  %idxprom.i373 = sext i32 %322 to i64
  %arrayidx.i374 = getelementptr inbounds i8, i8* %321, i64 %idxprom.i373
  %323 = load i8, i8* %arrayidx.i374, align 1
  %call.i375 = call zeroext i8 %320(i8 zeroext %323) #3
  %324 = load i8*, i8** %to.addr.i368, align 8
  %325 = load i32, i32* %i.i370, align 4
  %idxprom1.i376 = sext i32 %325 to i64
  %arrayidx2.i377 = getelementptr inbounds i8, i8* %324, i64 %idxprom1.i376
  store i8 %call.i375, i8* %arrayidx2.i377, align 1
  %326 = load i32, i32* %i.i370, align 4
  %inc.i379 = add nsw i32 %326, 1
  store i32 %inc.i379, i32* %i.i370, align 4
  br label %for.cond.i372

transform.exit381:                                ; preds = %for.cond.i372
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %v16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [3 x i8], [3 x i8]* %wr, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  store i8* %arraydecay17, i8** %a.addr.i397, align 8
  store i8* %arraydecay18, i8** %b.addr.i398, align 8
  store i8* %arraydecay19, i8** %c.addr.i399, align 8
  %call.i413 = call zeroext i8 (...) @rand() #3
  store i8 %call.i413, i8* %A.i400, align 1
  %call1.i414 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i414, i8* %B.i401, align 1
  %327 = load i8, i8* %A.i400, align 1
  %conv.i415 = zext i8 %327 to i32
  %328 = load i8*, i8** %a.addr.i397, align 8
  store i8* %328, i8** %a.addr.i.i396, align 8
  %329 = load i8*, i8** %a.addr.i.i396, align 8
  store i8* %329, i8** %a.addr.i.i.i392, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i393, align 8
  store i8 0, i8* %result.i.i.i394, align 1
  store i32 0, i32* %i.i.i.i395, align 4
  br label %for.cond.i.i.i417

for.cond.i.i.i417:                                ; preds = %for.body.i.i.i426, %transform.exit381
  %330 = load i32, i32* %i.i.i.i395, align 4
  %cmp.i.i.i416 = icmp sle i32 %330, 2
  br i1 %cmp.i.i.i416, label %for.body.i.i.i426, label %xors.exit.i430

for.body.i.i.i426:                                ; preds = %for.cond.i.i.i417
  %331 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i393, align 8
  %332 = load i8*, i8** %a.addr.i.i.i392, align 8
  %333 = load i32, i32* %i.i.i.i395, align 4
  %idxprom.i.i.i418 = sext i32 %333 to i64
  %arrayidx.i.i.i419 = getelementptr inbounds i8, i8* %332, i64 %idxprom.i.i.i418
  %334 = load i8, i8* %arrayidx.i.i.i419, align 1
  %call.i.i.i420 = call zeroext i8 %331(i8 zeroext %334) #3
  %conv.i.i.i421 = zext i8 %call.i.i.i420 to i32
  %335 = load i8, i8* %result.i.i.i394, align 1
  %conv1.i.i.i422 = zext i8 %335 to i32
  %xor.i.i.i423 = xor i32 %conv1.i.i.i422, %conv.i.i.i421
  %conv2.i.i.i424 = trunc i32 %xor.i.i.i423 to i8
  store i8 %conv2.i.i.i424, i8* %result.i.i.i394, align 1
  %336 = load i32, i32* %i.i.i.i395, align 4
  %inc.i.i.i425 = add nsw i32 %336, 1
  store i32 %inc.i.i.i425, i32* %i.i.i.i395, align 4
  br label %for.cond.i.i.i417

xors.exit.i430:                                   ; preds = %for.cond.i.i.i417
  %337 = load i8, i8* %result.i.i.i394, align 1
  %conv3.i427 = zext i8 %337 to i32
  %cmp.i428 = icmp eq i32 %conv.i415, %conv3.i427
  call void @assume(i1 zeroext %cmp.i428) #3
  %338 = load i8, i8* %B.i401, align 1
  %conv5.i429 = zext i8 %338 to i32
  %339 = load i8*, i8** %b.addr.i398, align 8
  store i8* %339, i8** %a.addr.i149.i391, align 8
  %340 = load i8*, i8** %a.addr.i149.i391, align 8
  store i8* %340, i8** %a.addr.i.i145.i387, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i388, align 8
  store i8 0, i8* %result.i.i147.i389, align 1
  store i32 0, i32* %i.i.i148.i390, align 4
  br label %for.cond.i.i151.i432

for.cond.i.i151.i432:                             ; preds = %for.body.i.i160.i441, %xors.exit.i430
  %341 = load i32, i32* %i.i.i148.i390, align 4
  %cmp.i.i150.i431 = icmp sle i32 %341, 2
  br i1 %cmp.i.i150.i431, label %for.body.i.i160.i441, label %xors.exit161.i444

for.body.i.i160.i441:                             ; preds = %for.cond.i.i151.i432
  %342 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i388, align 8
  %343 = load i8*, i8** %a.addr.i.i145.i387, align 8
  %344 = load i32, i32* %i.i.i148.i390, align 4
  %idxprom.i.i152.i433 = sext i32 %344 to i64
  %arrayidx.i.i153.i434 = getelementptr inbounds i8, i8* %343, i64 %idxprom.i.i152.i433
  %345 = load i8, i8* %arrayidx.i.i153.i434, align 1
  %call.i.i154.i435 = call zeroext i8 %342(i8 zeroext %345) #3
  %conv.i.i155.i436 = zext i8 %call.i.i154.i435 to i32
  %346 = load i8, i8* %result.i.i147.i389, align 1
  %conv1.i.i156.i437 = zext i8 %346 to i32
  %xor.i.i157.i438 = xor i32 %conv1.i.i156.i437, %conv.i.i155.i436
  %conv2.i.i158.i439 = trunc i32 %xor.i.i157.i438 to i8
  store i8 %conv2.i.i158.i439, i8* %result.i.i147.i389, align 1
  %347 = load i32, i32* %i.i.i148.i390, align 4
  %inc.i.i159.i440 = add nsw i32 %347, 1
  store i32 %inc.i.i159.i440, i32* %i.i.i148.i390, align 4
  br label %for.cond.i.i151.i432

xors.exit161.i444:                                ; preds = %for.cond.i.i151.i432
  %348 = load i8, i8* %result.i.i147.i389, align 1
  %conv7.i442 = zext i8 %348 to i32
  %cmp8.i443 = icmp eq i32 %conv5.i429, %conv7.i442
  call void @assume(i1 zeroext %cmp8.i443) #3
  store i32 0, i32* %i.i407, align 4
  br label %for.cond.i446

for.cond.i446:                                    ; preds = %for.end.i466, %xors.exit161.i444
  %349 = load i32, i32* %i.i407, align 4
  %cmp10.i445 = icmp sle i32 %349, 2
  br i1 %cmp10.i445, label %for.body.i448, label %for.end29.i468

for.body.i448:                                    ; preds = %for.cond.i446
  %350 = load i32, i32* %i.i407, align 4
  %add.i447 = add nsw i32 %350, 1
  store i32 %add.i447, i32* %j.i408, align 4
  br label %for.cond12.i450

for.cond12.i450:                                  ; preds = %for.body15.i464, %for.body.i448
  %351 = load i32, i32* %j.i408, align 4
  %cmp13.i449 = icmp sle i32 %351, 2
  br i1 %cmp13.i449, label %for.body15.i464, label %for.end.i466

for.body15.i464:                                  ; preds = %for.cond12.i450
  %call16.i451 = call zeroext i8 (...) @rand() #3
  %352 = load i32, i32* %i.i407, align 4
  %idxprom.i452 = sext i32 %352 to i64
  %arrayidx.i453 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom.i452
  %353 = load i32, i32* %j.i408, align 4
  %idxprom17.i454 = sext i32 %353 to i64
  %arrayidx18.i455 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i453, i64 0, i64 %idxprom17.i454
  store i8 %call16.i451, i8* %arrayidx18.i455, align 1
  %354 = load i32, i32* %i.i407, align 4
  %idxprom19.i456 = sext i32 %354 to i64
  %arrayidx20.i457 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom19.i456
  %355 = load i32, i32* %j.i408, align 4
  %idxprom21.i458 = sext i32 %355 to i64
  %arrayidx22.i459 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i457, i64 0, i64 %idxprom21.i458
  %356 = load i8, i8* %arrayidx22.i459, align 1
  %357 = load i32, i32* %j.i408, align 4
  %idxprom23.i460 = sext i32 %357 to i64
  %arrayidx24.i461 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom23.i460
  %358 = load i32, i32* %i.i407, align 4
  %idxprom25.i462 = sext i32 %358 to i64
  %arrayidx26.i463 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i461, i64 0, i64 %idxprom25.i462
  store i8 %356, i8* %arrayidx26.i463, align 1
  %359 = load i32, i32* %j.i408, align 4
  %inc.i465 = add nsw i32 %359, 1
  store i32 %inc.i465, i32* %j.i408, align 4
  br label %for.cond12.i450

for.end.i466:                                     ; preds = %for.cond12.i450
  %360 = load i32, i32* %i.i407, align 4
  %inc28.i467 = add nsw i32 %360, 1
  store i32 %inc28.i467, i32* %i.i407, align 4
  br label %for.cond.i446

for.end29.i468:                                   ; preds = %for.cond.i446
  store i32 0, i32* %i30.i409, align 4
  br label %for.cond31.i470

for.cond31.i470:                                  ; preds = %for.end98.i534, %for.end29.i468
  %361 = load i32, i32* %i30.i409, align 4
  %cmp32.i469 = icmp sle i32 %361, 2
  br i1 %cmp32.i469, label %for.body34.i471, label %for.end101.i536

for.body34.i471:                                  ; preds = %for.cond31.i470
  store i32 0, i32* %j35.i410, align 4
  br label %for.cond36.i473

for.cond36.i473:                                  ; preds = %if.end.i532, %for.body34.i471
  %362 = load i32, i32* %j35.i410, align 4
  %cmp37.i472 = icmp sle i32 %362, 2
  br i1 %cmp37.i472, label %for.body39.i475, label %for.end98.i534

for.body39.i475:                                  ; preds = %for.cond36.i473
  %363 = load i32, i32* %j35.i410, align 4
  %364 = load i32, i32* %i30.i409, align 4
  %cmp40.i474 = icmp ne i32 %363, %364
  br i1 %cmp40.i474, label %if.then.i531, label %if.end.i532

if.then.i531:                                     ; preds = %for.body39.i475
  %365 = load i8*, i8** %b.addr.i398, align 8
  %366 = load i32, i32* %j35.i410, align 4
  %idxprom42.i476 = sext i32 %366 to i64
  %arrayidx43.i477 = getelementptr inbounds i8, i8* %365, i64 %idxprom42.i476
  %367 = load i8, i8* %arrayidx43.i477, align 1
  %conv44.i478 = zext i8 %367 to i32
  %368 = load i32, i32* %i30.i409, align 4
  %idxprom45.i479 = sext i32 %368 to i64
  %arrayidx46.i480 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom45.i479
  %369 = load i32, i32* %j35.i410, align 4
  %idxprom47.i481 = sext i32 %369 to i64
  %arrayidx48.i482 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i480, i64 0, i64 %idxprom47.i481
  %370 = load i8, i8* %arrayidx48.i482, align 1
  %conv49.i483 = zext i8 %370 to i32
  %xor.i484 = xor i32 %conv44.i478, %conv49.i483
  %conv50.i485 = trunc i32 %xor.i484 to i8
  %371 = load i32, i32* %i30.i409, align 4
  %idxprom51.i486 = sext i32 %371 to i64
  %arrayidx52.i487 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom51.i486
  %372 = load i32, i32* %j35.i410, align 4
  %idxprom53.i488 = sext i32 %372 to i64
  %arrayidx54.i489 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i487, i64 0, i64 %idxprom53.i488
  store i8 %conv50.i485, i8* %arrayidx54.i489, align 1
  %373 = load i8*, i8** %a.addr.i397, align 8
  %374 = load i32, i32* %i30.i409, align 4
  %idxprom55.i490 = sext i32 %374 to i64
  %arrayidx56.i491 = getelementptr inbounds i8, i8* %373, i64 %idxprom55.i490
  %375 = load i8, i8* %arrayidx56.i491, align 1
  %conv57.i492 = zext i8 %375 to i32
  %xor58.i493 = xor i32 %conv57.i492, 1
  %conv59.i494 = trunc i32 %xor58.i493 to i8
  %376 = load i32, i32* %i30.i409, align 4
  %idxprom60.i495 = sext i32 %376 to i64
  %arrayidx61.i496 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom60.i495
  %377 = load i32, i32* %j35.i410, align 4
  %idxprom62.i497 = sext i32 %377 to i64
  %arrayidx63.i498 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i496, i64 0, i64 %idxprom62.i497
  %378 = load i8, i8* %arrayidx63.i498, align 1
  %call64.i499 = call zeroext i8 @mult(i8 zeroext %conv59.i494, i8 zeroext %378) #3
  %379 = load i32, i32* %i30.i409, align 4
  %idxprom65.i500 = sext i32 %379 to i64
  %arrayidx66.i501 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom65.i500
  %380 = load i32, i32* %j35.i410, align 4
  %idxprom67.i502 = sext i32 %380 to i64
  %arrayidx68.i503 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i501, i64 0, i64 %idxprom67.i502
  store i8 %call64.i499, i8* %arrayidx68.i503, align 1
  %381 = load i8*, i8** %a.addr.i397, align 8
  %382 = load i32, i32* %i30.i409, align 4
  %idxprom69.i504 = sext i32 %382 to i64
  %arrayidx70.i505 = getelementptr inbounds i8, i8* %381, i64 %idxprom69.i504
  %383 = load i8, i8* %arrayidx70.i505, align 1
  %384 = load i32, i32* %i30.i409, align 4
  %idxprom71.i506 = sext i32 %384 to i64
  %arrayidx72.i507 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom71.i506
  %385 = load i32, i32* %j35.i410, align 4
  %idxprom73.i508 = sext i32 %385 to i64
  %arrayidx74.i509 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i507, i64 0, i64 %idxprom73.i508
  %386 = load i8, i8* %arrayidx74.i509, align 1
  %call75.i510 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %386) #3
  %387 = load i32, i32* %i30.i409, align 4
  %idxprom76.i511 = sext i32 %387 to i64
  %arrayidx77.i512 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom76.i511
  %388 = load i32, i32* %j35.i410, align 4
  %idxprom78.i513 = sext i32 %388 to i64
  %arrayidx79.i514 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i512, i64 0, i64 %idxprom78.i513
  store i8 %call75.i510, i8* %arrayidx79.i514, align 1
  %389 = load i32, i32* %i30.i409, align 4
  %idxprom80.i515 = sext i32 %389 to i64
  %arrayidx81.i516 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom80.i515
  %390 = load i32, i32* %j35.i410, align 4
  %idxprom82.i517 = sext i32 %390 to i64
  %arrayidx83.i518 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i516, i64 0, i64 %idxprom82.i517
  %391 = load i8, i8* %arrayidx83.i518, align 1
  %conv84.i519 = zext i8 %391 to i32
  %392 = load i32, i32* %i30.i409, align 4
  %idxprom85.i520 = sext i32 %392 to i64
  %arrayidx86.i521 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom85.i520
  %393 = load i32, i32* %j35.i410, align 4
  %idxprom87.i522 = sext i32 %393 to i64
  %arrayidx88.i523 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i521, i64 0, i64 %idxprom87.i522
  %394 = load i8, i8* %arrayidx88.i523, align 1
  %conv89.i524 = zext i8 %394 to i32
  %xor90.i525 = xor i32 %conv84.i519, %conv89.i524
  %conv91.i526 = trunc i32 %xor90.i525 to i8
  %395 = load i32, i32* %i30.i409, align 4
  %idxprom92.i527 = sext i32 %395 to i64
  %arrayidx93.i528 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom92.i527
  %396 = load i32, i32* %j35.i410, align 4
  %idxprom94.i529 = sext i32 %396 to i64
  %arrayidx95.i530 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i528, i64 0, i64 %idxprom94.i529
  store i8 %conv91.i526, i8* %arrayidx95.i530, align 1
  br label %if.end.i532

if.end.i532:                                      ; preds = %if.then.i531, %for.body39.i475
  %397 = load i32, i32* %j35.i410, align 4
  %inc97.i533 = add nsw i32 %397, 1
  store i32 %inc97.i533, i32* %j35.i410, align 4
  br label %for.cond36.i473

for.end98.i534:                                   ; preds = %for.cond36.i473
  %398 = load i32, i32* %i30.i409, align 4
  %inc100.i535 = add nsw i32 %398, 1
  store i32 %inc100.i535, i32* %i30.i409, align 4
  br label %for.cond31.i470

for.end101.i536:                                  ; preds = %for.cond31.i470
  store i32 0, i32* %i102.i411, align 4
  br label %for.cond103.i538

for.cond103.i538:                                 ; preds = %for.end135.i564, %for.end101.i536
  %399 = load i32, i32* %i102.i411, align 4
  %cmp104.i537 = icmp sle i32 %399, 2
  br i1 %cmp104.i537, label %for.body106.i546, label %for.end138.i568

for.body106.i546:                                 ; preds = %for.cond103.i538
  %400 = load i8*, i8** %a.addr.i397, align 8
  %401 = load i32, i32* %i102.i411, align 4
  %idxprom107.i539 = sext i32 %401 to i64
  %arrayidx108.i540 = getelementptr inbounds i8, i8* %400, i64 %idxprom107.i539
  %402 = load i8, i8* %arrayidx108.i540, align 1
  %403 = load i8*, i8** %b.addr.i398, align 8
  %404 = load i32, i32* %i102.i411, align 4
  %idxprom109.i541 = sext i32 %404 to i64
  %arrayidx110.i542 = getelementptr inbounds i8, i8* %403, i64 %idxprom109.i541
  %405 = load i8, i8* %arrayidx110.i542, align 1
  %call111.i543 = call zeroext i8 @mult(i8 zeroext %402, i8 zeroext %405) #3
  %406 = load i8*, i8** %c.addr.i399, align 8
  %407 = load i32, i32* %i102.i411, align 4
  %idxprom112.i544 = sext i32 %407 to i64
  %arrayidx113.i545 = getelementptr inbounds i8, i8* %406, i64 %idxprom112.i544
  store i8 %call111.i543, i8* %arrayidx113.i545, align 1
  store i32 0, i32* %j114.i412, align 4
  br label %for.cond115.i548

for.cond115.i548:                                 ; preds = %if.end132.i562, %for.body106.i546
  %408 = load i32, i32* %j114.i412, align 4
  %cmp116.i547 = icmp sle i32 %408, 2
  br i1 %cmp116.i547, label %for.body118.i550, label %for.end135.i564

for.body118.i550:                                 ; preds = %for.cond115.i548
  %409 = load i32, i32* %j114.i412, align 4
  %410 = load i32, i32* %i102.i411, align 4
  %cmp119.i549 = icmp ne i32 %409, %410
  br i1 %cmp119.i549, label %if.then121.i561, label %if.end132.i562

if.then121.i561:                                  ; preds = %for.body118.i550
  %411 = load i32, i32* %i102.i411, align 4
  %idxprom122.i551 = sext i32 %411 to i64
  %arrayidx123.i552 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom122.i551
  %412 = load i32, i32* %j114.i412, align 4
  %idxprom124.i553 = sext i32 %412 to i64
  %arrayidx125.i554 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i552, i64 0, i64 %idxprom124.i553
  %413 = load i8, i8* %arrayidx125.i554, align 1
  %conv126.i555 = zext i8 %413 to i32
  %414 = load i8*, i8** %c.addr.i399, align 8
  %415 = load i32, i32* %i102.i411, align 4
  %idxprom127.i556 = sext i32 %415 to i64
  %arrayidx128.i557 = getelementptr inbounds i8, i8* %414, i64 %idxprom127.i556
  %416 = load i8, i8* %arrayidx128.i557, align 1
  %conv129.i558 = zext i8 %416 to i32
  %xor130.i559 = xor i32 %conv129.i558, %conv126.i555
  %conv131.i560 = trunc i32 %xor130.i559 to i8
  store i8 %conv131.i560, i8* %arrayidx128.i557, align 1
  br label %if.end132.i562

if.end132.i562:                                   ; preds = %if.then121.i561, %for.body118.i550
  %417 = load i32, i32* %j114.i412, align 4
  %inc134.i563 = add nsw i32 %417, 1
  store i32 %inc134.i563, i32* %j114.i412, align 4
  br label %for.cond115.i548

for.end135.i564:                                  ; preds = %for.cond115.i548
  %418 = load i32, i32* %i102.i411, align 4
  %inc137.i565 = add nsw i32 %418, 1
  store i32 %inc137.i565, i32* %i102.i411, align 4
  br label %for.cond103.i538

for.end138.i568:                                  ; preds = %for.cond103.i538
  %419 = load i8, i8* %A.i400, align 1
  %420 = load i8, i8* %B.i401, align 1
  %call139.i566 = call zeroext i8 @mult(i8 zeroext %419, i8 zeroext %420) #3
  %conv140.i567 = zext i8 %call139.i566 to i32
  %421 = load i8*, i8** %c.addr.i399, align 8
  store i8* %421, i8** %a.addr.i166.i386, align 8
  %422 = load i8*, i8** %a.addr.i166.i386, align 8
  store i8* %422, i8** %a.addr.i.i162.i382, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i383, align 8
  store i8 0, i8* %result.i.i164.i384, align 1
  store i32 0, i32* %i.i.i165.i385, align 4
  br label %for.cond.i.i168.i570

for.cond.i.i168.i570:                             ; preds = %for.body.i.i177.i579, %for.end138.i568
  %423 = load i32, i32* %i.i.i165.i385, align 4
  %cmp.i.i167.i569 = icmp sle i32 %423, 2
  br i1 %cmp.i.i167.i569, label %for.body.i.i177.i579, label %sec_mult.exit582

for.body.i.i177.i579:                             ; preds = %for.cond.i.i168.i570
  %424 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i383, align 8
  %425 = load i8*, i8** %a.addr.i.i162.i382, align 8
  %426 = load i32, i32* %i.i.i165.i385, align 4
  %idxprom.i.i169.i571 = sext i32 %426 to i64
  %arrayidx.i.i170.i572 = getelementptr inbounds i8, i8* %425, i64 %idxprom.i.i169.i571
  %427 = load i8, i8* %arrayidx.i.i170.i572, align 1
  %call.i.i171.i573 = call zeroext i8 %424(i8 zeroext %427) #3
  %conv.i.i172.i574 = zext i8 %call.i.i171.i573 to i32
  %428 = load i8, i8* %result.i.i164.i384, align 1
  %conv1.i.i173.i575 = zext i8 %428 to i32
  %xor.i.i174.i576 = xor i32 %conv1.i.i173.i575, %conv.i.i172.i574
  %conv2.i.i175.i577 = trunc i32 %xor.i.i174.i576 to i8
  store i8 %conv2.i.i175.i577, i8* %result.i.i164.i384, align 1
  %429 = load i32, i32* %i.i.i165.i385, align 4
  %inc.i.i176.i578 = add nsw i32 %429, 1
  store i32 %inc.i.i176.i578, i32* %i.i.i165.i385, align 4
  br label %for.cond.i.i168.i570

sec_mult.exit582:                                 ; preds = %for.cond.i.i168.i570
  %430 = load i8, i8* %result.i.i164.i384, align 1
  %conv142.i580 = zext i8 %430 to i32
  %cmp143.i581 = icmp eq i32 %conv140.i567, %conv142.i580
  call void @assert(i1 zeroext %cmp143.i581) #3
  %arraydecay20 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %431 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay20, i8** %a.addr.i598, align 8
  store i8* %arraydecay21, i8** %b.addr.i599, align 8
  store i8* %431, i8** %c.addr.i600, align 8
  %call.i614 = call zeroext i8 (...) @rand() #3
  store i8 %call.i614, i8* %A.i601, align 1
  %call1.i615 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i615, i8* %B.i602, align 1
  %432 = load i8, i8* %A.i601, align 1
  %conv.i616 = zext i8 %432 to i32
  %433 = load i8*, i8** %a.addr.i598, align 8
  store i8* %433, i8** %a.addr.i.i597, align 8
  %434 = load i8*, i8** %a.addr.i.i597, align 8
  store i8* %434, i8** %a.addr.i.i.i593, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i594, align 8
  store i8 0, i8* %result.i.i.i595, align 1
  store i32 0, i32* %i.i.i.i596, align 4
  br label %for.cond.i.i.i618

for.cond.i.i.i618:                                ; preds = %for.body.i.i.i627, %sec_mult.exit582
  %435 = load i32, i32* %i.i.i.i596, align 4
  %cmp.i.i.i617 = icmp sle i32 %435, 2
  br i1 %cmp.i.i.i617, label %for.body.i.i.i627, label %xors.exit.i631

for.body.i.i.i627:                                ; preds = %for.cond.i.i.i618
  %436 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i594, align 8
  %437 = load i8*, i8** %a.addr.i.i.i593, align 8
  %438 = load i32, i32* %i.i.i.i596, align 4
  %idxprom.i.i.i619 = sext i32 %438 to i64
  %arrayidx.i.i.i620 = getelementptr inbounds i8, i8* %437, i64 %idxprom.i.i.i619
  %439 = load i8, i8* %arrayidx.i.i.i620, align 1
  %call.i.i.i621 = call zeroext i8 %436(i8 zeroext %439) #3
  %conv.i.i.i622 = zext i8 %call.i.i.i621 to i32
  %440 = load i8, i8* %result.i.i.i595, align 1
  %conv1.i.i.i623 = zext i8 %440 to i32
  %xor.i.i.i624 = xor i32 %conv1.i.i.i623, %conv.i.i.i622
  %conv2.i.i.i625 = trunc i32 %xor.i.i.i624 to i8
  store i8 %conv2.i.i.i625, i8* %result.i.i.i595, align 1
  %441 = load i32, i32* %i.i.i.i596, align 4
  %inc.i.i.i626 = add nsw i32 %441, 1
  store i32 %inc.i.i.i626, i32* %i.i.i.i596, align 4
  br label %for.cond.i.i.i618

xors.exit.i631:                                   ; preds = %for.cond.i.i.i618
  %442 = load i8, i8* %result.i.i.i595, align 1
  %conv3.i628 = zext i8 %442 to i32
  %cmp.i629 = icmp eq i32 %conv.i616, %conv3.i628
  call void @assume(i1 zeroext %cmp.i629) #3
  %443 = load i8, i8* %B.i602, align 1
  %conv5.i630 = zext i8 %443 to i32
  %444 = load i8*, i8** %b.addr.i599, align 8
  store i8* %444, i8** %a.addr.i149.i592, align 8
  %445 = load i8*, i8** %a.addr.i149.i592, align 8
  store i8* %445, i8** %a.addr.i.i145.i588, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i589, align 8
  store i8 0, i8* %result.i.i147.i590, align 1
  store i32 0, i32* %i.i.i148.i591, align 4
  br label %for.cond.i.i151.i633

for.cond.i.i151.i633:                             ; preds = %for.body.i.i160.i642, %xors.exit.i631
  %446 = load i32, i32* %i.i.i148.i591, align 4
  %cmp.i.i150.i632 = icmp sle i32 %446, 2
  br i1 %cmp.i.i150.i632, label %for.body.i.i160.i642, label %xors.exit161.i645

for.body.i.i160.i642:                             ; preds = %for.cond.i.i151.i633
  %447 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i589, align 8
  %448 = load i8*, i8** %a.addr.i.i145.i588, align 8
  %449 = load i32, i32* %i.i.i148.i591, align 4
  %idxprom.i.i152.i634 = sext i32 %449 to i64
  %arrayidx.i.i153.i635 = getelementptr inbounds i8, i8* %448, i64 %idxprom.i.i152.i634
  %450 = load i8, i8* %arrayidx.i.i153.i635, align 1
  %call.i.i154.i636 = call zeroext i8 %447(i8 zeroext %450) #3
  %conv.i.i155.i637 = zext i8 %call.i.i154.i636 to i32
  %451 = load i8, i8* %result.i.i147.i590, align 1
  %conv1.i.i156.i638 = zext i8 %451 to i32
  %xor.i.i157.i639 = xor i32 %conv1.i.i156.i638, %conv.i.i155.i637
  %conv2.i.i158.i640 = trunc i32 %xor.i.i157.i639 to i8
  store i8 %conv2.i.i158.i640, i8* %result.i.i147.i590, align 1
  %452 = load i32, i32* %i.i.i148.i591, align 4
  %inc.i.i159.i641 = add nsw i32 %452, 1
  store i32 %inc.i.i159.i641, i32* %i.i.i148.i591, align 4
  br label %for.cond.i.i151.i633

xors.exit161.i645:                                ; preds = %for.cond.i.i151.i633
  %453 = load i8, i8* %result.i.i147.i590, align 1
  %conv7.i643 = zext i8 %453 to i32
  %cmp8.i644 = icmp eq i32 %conv5.i630, %conv7.i643
  call void @assume(i1 zeroext %cmp8.i644) #3
  store i32 0, i32* %i.i608, align 4
  br label %for.cond.i647

for.cond.i647:                                    ; preds = %for.end.i667, %xors.exit161.i645
  %454 = load i32, i32* %i.i608, align 4
  %cmp10.i646 = icmp sle i32 %454, 2
  br i1 %cmp10.i646, label %for.body.i649, label %for.end29.i669

for.body.i649:                                    ; preds = %for.cond.i647
  %455 = load i32, i32* %i.i608, align 4
  %add.i648 = add nsw i32 %455, 1
  store i32 %add.i648, i32* %j.i609, align 4
  br label %for.cond12.i651

for.cond12.i651:                                  ; preds = %for.body15.i665, %for.body.i649
  %456 = load i32, i32* %j.i609, align 4
  %cmp13.i650 = icmp sle i32 %456, 2
  br i1 %cmp13.i650, label %for.body15.i665, label %for.end.i667

for.body15.i665:                                  ; preds = %for.cond12.i651
  %call16.i652 = call zeroext i8 (...) @rand() #3
  %457 = load i32, i32* %i.i608, align 4
  %idxprom.i653 = sext i32 %457 to i64
  %arrayidx.i654 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom.i653
  %458 = load i32, i32* %j.i609, align 4
  %idxprom17.i655 = sext i32 %458 to i64
  %arrayidx18.i656 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i654, i64 0, i64 %idxprom17.i655
  store i8 %call16.i652, i8* %arrayidx18.i656, align 1
  %459 = load i32, i32* %i.i608, align 4
  %idxprom19.i657 = sext i32 %459 to i64
  %arrayidx20.i658 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom19.i657
  %460 = load i32, i32* %j.i609, align 4
  %idxprom21.i659 = sext i32 %460 to i64
  %arrayidx22.i660 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i658, i64 0, i64 %idxprom21.i659
  %461 = load i8, i8* %arrayidx22.i660, align 1
  %462 = load i32, i32* %j.i609, align 4
  %idxprom23.i661 = sext i32 %462 to i64
  %arrayidx24.i662 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom23.i661
  %463 = load i32, i32* %i.i608, align 4
  %idxprom25.i663 = sext i32 %463 to i64
  %arrayidx26.i664 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i662, i64 0, i64 %idxprom25.i663
  store i8 %461, i8* %arrayidx26.i664, align 1
  %464 = load i32, i32* %j.i609, align 4
  %inc.i666 = add nsw i32 %464, 1
  store i32 %inc.i666, i32* %j.i609, align 4
  br label %for.cond12.i651

for.end.i667:                                     ; preds = %for.cond12.i651
  %465 = load i32, i32* %i.i608, align 4
  %inc28.i668 = add nsw i32 %465, 1
  store i32 %inc28.i668, i32* %i.i608, align 4
  br label %for.cond.i647

for.end29.i669:                                   ; preds = %for.cond.i647
  store i32 0, i32* %i30.i610, align 4
  br label %for.cond31.i671

for.cond31.i671:                                  ; preds = %for.end98.i735, %for.end29.i669
  %466 = load i32, i32* %i30.i610, align 4
  %cmp32.i670 = icmp sle i32 %466, 2
  br i1 %cmp32.i670, label %for.body34.i672, label %for.end101.i737

for.body34.i672:                                  ; preds = %for.cond31.i671
  store i32 0, i32* %j35.i611, align 4
  br label %for.cond36.i674

for.cond36.i674:                                  ; preds = %if.end.i733, %for.body34.i672
  %467 = load i32, i32* %j35.i611, align 4
  %cmp37.i673 = icmp sle i32 %467, 2
  br i1 %cmp37.i673, label %for.body39.i676, label %for.end98.i735

for.body39.i676:                                  ; preds = %for.cond36.i674
  %468 = load i32, i32* %j35.i611, align 4
  %469 = load i32, i32* %i30.i610, align 4
  %cmp40.i675 = icmp ne i32 %468, %469
  br i1 %cmp40.i675, label %if.then.i732, label %if.end.i733

if.then.i732:                                     ; preds = %for.body39.i676
  %470 = load i8*, i8** %b.addr.i599, align 8
  %471 = load i32, i32* %j35.i611, align 4
  %idxprom42.i677 = sext i32 %471 to i64
  %arrayidx43.i678 = getelementptr inbounds i8, i8* %470, i64 %idxprom42.i677
  %472 = load i8, i8* %arrayidx43.i678, align 1
  %conv44.i679 = zext i8 %472 to i32
  %473 = load i32, i32* %i30.i610, align 4
  %idxprom45.i680 = sext i32 %473 to i64
  %arrayidx46.i681 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom45.i680
  %474 = load i32, i32* %j35.i611, align 4
  %idxprom47.i682 = sext i32 %474 to i64
  %arrayidx48.i683 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i681, i64 0, i64 %idxprom47.i682
  %475 = load i8, i8* %arrayidx48.i683, align 1
  %conv49.i684 = zext i8 %475 to i32
  %xor.i685 = xor i32 %conv44.i679, %conv49.i684
  %conv50.i686 = trunc i32 %xor.i685 to i8
  %476 = load i32, i32* %i30.i610, align 4
  %idxprom51.i687 = sext i32 %476 to i64
  %arrayidx52.i688 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom51.i687
  %477 = load i32, i32* %j35.i611, align 4
  %idxprom53.i689 = sext i32 %477 to i64
  %arrayidx54.i690 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i688, i64 0, i64 %idxprom53.i689
  store i8 %conv50.i686, i8* %arrayidx54.i690, align 1
  %478 = load i8*, i8** %a.addr.i598, align 8
  %479 = load i32, i32* %i30.i610, align 4
  %idxprom55.i691 = sext i32 %479 to i64
  %arrayidx56.i692 = getelementptr inbounds i8, i8* %478, i64 %idxprom55.i691
  %480 = load i8, i8* %arrayidx56.i692, align 1
  %conv57.i693 = zext i8 %480 to i32
  %xor58.i694 = xor i32 %conv57.i693, 1
  %conv59.i695 = trunc i32 %xor58.i694 to i8
  %481 = load i32, i32* %i30.i610, align 4
  %idxprom60.i696 = sext i32 %481 to i64
  %arrayidx61.i697 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom60.i696
  %482 = load i32, i32* %j35.i611, align 4
  %idxprom62.i698 = sext i32 %482 to i64
  %arrayidx63.i699 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i697, i64 0, i64 %idxprom62.i698
  %483 = load i8, i8* %arrayidx63.i699, align 1
  %call64.i700 = call zeroext i8 @mult(i8 zeroext %conv59.i695, i8 zeroext %483) #3
  %484 = load i32, i32* %i30.i610, align 4
  %idxprom65.i701 = sext i32 %484 to i64
  %arrayidx66.i702 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom65.i701
  %485 = load i32, i32* %j35.i611, align 4
  %idxprom67.i703 = sext i32 %485 to i64
  %arrayidx68.i704 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i702, i64 0, i64 %idxprom67.i703
  store i8 %call64.i700, i8* %arrayidx68.i704, align 1
  %486 = load i8*, i8** %a.addr.i598, align 8
  %487 = load i32, i32* %i30.i610, align 4
  %idxprom69.i705 = sext i32 %487 to i64
  %arrayidx70.i706 = getelementptr inbounds i8, i8* %486, i64 %idxprom69.i705
  %488 = load i8, i8* %arrayidx70.i706, align 1
  %489 = load i32, i32* %i30.i610, align 4
  %idxprom71.i707 = sext i32 %489 to i64
  %arrayidx72.i708 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom71.i707
  %490 = load i32, i32* %j35.i611, align 4
  %idxprom73.i709 = sext i32 %490 to i64
  %arrayidx74.i710 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i708, i64 0, i64 %idxprom73.i709
  %491 = load i8, i8* %arrayidx74.i710, align 1
  %call75.i711 = call zeroext i8 @mult(i8 zeroext %488, i8 zeroext %491) #3
  %492 = load i32, i32* %i30.i610, align 4
  %idxprom76.i712 = sext i32 %492 to i64
  %arrayidx77.i713 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom76.i712
  %493 = load i32, i32* %j35.i611, align 4
  %idxprom78.i714 = sext i32 %493 to i64
  %arrayidx79.i715 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i713, i64 0, i64 %idxprom78.i714
  store i8 %call75.i711, i8* %arrayidx79.i715, align 1
  %494 = load i32, i32* %i30.i610, align 4
  %idxprom80.i716 = sext i32 %494 to i64
  %arrayidx81.i717 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom80.i716
  %495 = load i32, i32* %j35.i611, align 4
  %idxprom82.i718 = sext i32 %495 to i64
  %arrayidx83.i719 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i717, i64 0, i64 %idxprom82.i718
  %496 = load i8, i8* %arrayidx83.i719, align 1
  %conv84.i720 = zext i8 %496 to i32
  %497 = load i32, i32* %i30.i610, align 4
  %idxprom85.i721 = sext i32 %497 to i64
  %arrayidx86.i722 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom85.i721
  %498 = load i32, i32* %j35.i611, align 4
  %idxprom87.i723 = sext i32 %498 to i64
  %arrayidx88.i724 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i722, i64 0, i64 %idxprom87.i723
  %499 = load i8, i8* %arrayidx88.i724, align 1
  %conv89.i725 = zext i8 %499 to i32
  %xor90.i726 = xor i32 %conv84.i720, %conv89.i725
  %conv91.i727 = trunc i32 %xor90.i726 to i8
  %500 = load i32, i32* %i30.i610, align 4
  %idxprom92.i728 = sext i32 %500 to i64
  %arrayidx93.i729 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom92.i728
  %501 = load i32, i32* %j35.i611, align 4
  %idxprom94.i730 = sext i32 %501 to i64
  %arrayidx95.i731 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i729, i64 0, i64 %idxprom94.i730
  store i8 %conv91.i727, i8* %arrayidx95.i731, align 1
  br label %if.end.i733

if.end.i733:                                      ; preds = %if.then.i732, %for.body39.i676
  %502 = load i32, i32* %j35.i611, align 4
  %inc97.i734 = add nsw i32 %502, 1
  store i32 %inc97.i734, i32* %j35.i611, align 4
  br label %for.cond36.i674

for.end98.i735:                                   ; preds = %for.cond36.i674
  %503 = load i32, i32* %i30.i610, align 4
  %inc100.i736 = add nsw i32 %503, 1
  store i32 %inc100.i736, i32* %i30.i610, align 4
  br label %for.cond31.i671

for.end101.i737:                                  ; preds = %for.cond31.i671
  store i32 0, i32* %i102.i612, align 4
  br label %for.cond103.i739

for.cond103.i739:                                 ; preds = %for.end135.i765, %for.end101.i737
  %504 = load i32, i32* %i102.i612, align 4
  %cmp104.i738 = icmp sle i32 %504, 2
  br i1 %cmp104.i738, label %for.body106.i747, label %for.end138.i769

for.body106.i747:                                 ; preds = %for.cond103.i739
  %505 = load i8*, i8** %a.addr.i598, align 8
  %506 = load i32, i32* %i102.i612, align 4
  %idxprom107.i740 = sext i32 %506 to i64
  %arrayidx108.i741 = getelementptr inbounds i8, i8* %505, i64 %idxprom107.i740
  %507 = load i8, i8* %arrayidx108.i741, align 1
  %508 = load i8*, i8** %b.addr.i599, align 8
  %509 = load i32, i32* %i102.i612, align 4
  %idxprom109.i742 = sext i32 %509 to i64
  %arrayidx110.i743 = getelementptr inbounds i8, i8* %508, i64 %idxprom109.i742
  %510 = load i8, i8* %arrayidx110.i743, align 1
  %call111.i744 = call zeroext i8 @mult(i8 zeroext %507, i8 zeroext %510) #3
  %511 = load i8*, i8** %c.addr.i600, align 8
  %512 = load i32, i32* %i102.i612, align 4
  %idxprom112.i745 = sext i32 %512 to i64
  %arrayidx113.i746 = getelementptr inbounds i8, i8* %511, i64 %idxprom112.i745
  store i8 %call111.i744, i8* %arrayidx113.i746, align 1
  store i32 0, i32* %j114.i613, align 4
  br label %for.cond115.i749

for.cond115.i749:                                 ; preds = %if.end132.i763, %for.body106.i747
  %513 = load i32, i32* %j114.i613, align 4
  %cmp116.i748 = icmp sle i32 %513, 2
  br i1 %cmp116.i748, label %for.body118.i751, label %for.end135.i765

for.body118.i751:                                 ; preds = %for.cond115.i749
  %514 = load i32, i32* %j114.i613, align 4
  %515 = load i32, i32* %i102.i612, align 4
  %cmp119.i750 = icmp ne i32 %514, %515
  br i1 %cmp119.i750, label %if.then121.i762, label %if.end132.i763

if.then121.i762:                                  ; preds = %for.body118.i751
  %516 = load i32, i32* %i102.i612, align 4
  %idxprom122.i752 = sext i32 %516 to i64
  %arrayidx123.i753 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom122.i752
  %517 = load i32, i32* %j114.i613, align 4
  %idxprom124.i754 = sext i32 %517 to i64
  %arrayidx125.i755 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i753, i64 0, i64 %idxprom124.i754
  %518 = load i8, i8* %arrayidx125.i755, align 1
  %conv126.i756 = zext i8 %518 to i32
  %519 = load i8*, i8** %c.addr.i600, align 8
  %520 = load i32, i32* %i102.i612, align 4
  %idxprom127.i757 = sext i32 %520 to i64
  %arrayidx128.i758 = getelementptr inbounds i8, i8* %519, i64 %idxprom127.i757
  %521 = load i8, i8* %arrayidx128.i758, align 1
  %conv129.i759 = zext i8 %521 to i32
  %xor130.i760 = xor i32 %conv129.i759, %conv126.i756
  %conv131.i761 = trunc i32 %xor130.i760 to i8
  store i8 %conv131.i761, i8* %arrayidx128.i758, align 1
  br label %if.end132.i763

if.end132.i763:                                   ; preds = %if.then121.i762, %for.body118.i751
  %522 = load i32, i32* %j114.i613, align 4
  %inc134.i764 = add nsw i32 %522, 1
  store i32 %inc134.i764, i32* %j114.i613, align 4
  br label %for.cond115.i749

for.end135.i765:                                  ; preds = %for.cond115.i749
  %523 = load i32, i32* %i102.i612, align 4
  %inc137.i766 = add nsw i32 %523, 1
  store i32 %inc137.i766, i32* %i102.i612, align 4
  br label %for.cond103.i739

for.end138.i769:                                  ; preds = %for.cond103.i739
  %524 = load i8, i8* %A.i601, align 1
  %525 = load i8, i8* %B.i602, align 1
  %call139.i767 = call zeroext i8 @mult(i8 zeroext %524, i8 zeroext %525) #3
  %conv140.i768 = zext i8 %call139.i767 to i32
  %526 = load i8*, i8** %c.addr.i600, align 8
  store i8* %526, i8** %a.addr.i166.i587, align 8
  %527 = load i8*, i8** %a.addr.i166.i587, align 8
  store i8* %527, i8** %a.addr.i.i162.i583, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i584, align 8
  store i8 0, i8* %result.i.i164.i585, align 1
  store i32 0, i32* %i.i.i165.i586, align 4
  br label %for.cond.i.i168.i771

for.cond.i.i168.i771:                             ; preds = %for.body.i.i177.i780, %for.end138.i769
  %528 = load i32, i32* %i.i.i165.i586, align 4
  %cmp.i.i167.i770 = icmp sle i32 %528, 2
  br i1 %cmp.i.i167.i770, label %for.body.i.i177.i780, label %sec_mult.exit783

for.body.i.i177.i780:                             ; preds = %for.cond.i.i168.i771
  %529 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i584, align 8
  %530 = load i8*, i8** %a.addr.i.i162.i583, align 8
  %531 = load i32, i32* %i.i.i165.i586, align 4
  %idxprom.i.i169.i772 = sext i32 %531 to i64
  %arrayidx.i.i170.i773 = getelementptr inbounds i8, i8* %530, i64 %idxprom.i.i169.i772
  %532 = load i8, i8* %arrayidx.i.i170.i773, align 1
  %call.i.i171.i774 = call zeroext i8 %529(i8 zeroext %532) #3
  %conv.i.i172.i775 = zext i8 %call.i.i171.i774 to i32
  %533 = load i8, i8* %result.i.i164.i585, align 1
  %conv1.i.i173.i776 = zext i8 %533 to i32
  %xor.i.i174.i777 = xor i32 %conv1.i.i173.i776, %conv.i.i172.i775
  %conv2.i.i175.i778 = trunc i32 %xor.i.i174.i777 to i8
  store i8 %conv2.i.i175.i778, i8* %result.i.i164.i585, align 1
  %534 = load i32, i32* %i.i.i165.i586, align 4
  %inc.i.i176.i779 = add nsw i32 %534, 1
  store i32 %inc.i.i176.i779, i32* %i.i.i165.i586, align 4
  br label %for.cond.i.i168.i771

sec_mult.exit783:                                 ; preds = %for.cond.i.i168.i771
  %535 = load i8, i8* %result.i.i164.i585, align 1
  %conv142.i781 = zext i8 %535 to i32
  %cmp143.i782 = icmp eq i32 %conv140.i768, %conv142.i781
  call void @assert(i1 zeroext %cmp143.i782) #3
  %536 = load i8, i8* %X, align 1
  store i8 %536, i8* %x.addr.i784, align 1
  %537 = load i8, i8* %x.addr.i784, align 1
  store i8 %537, i8* %x.addr.i.i, align 1
  %538 = load i8, i8* %x.addr.i.i, align 1
  %539 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i786 = call zeroext i8 @mult(i8 zeroext %538, i8 zeroext %539) #3
  store i8 %call.i.i786, i8* %z.i785, align 1
  %540 = load i8, i8* %z.i785, align 1
  %541 = load i8, i8* %x.addr.i784, align 1
  %call1.i787 = call zeroext i8 @mult(i8 zeroext %540, i8 zeroext %541) #3
  store i8 %call1.i787, i8* %y.i, align 1
  %542 = load i8, i8* %y.i, align 1
  store i8 %542, i8* %x.addr.i7.i, align 1
  %543 = load i8, i8* %x.addr.i7.i, align 1
  store i8 %543, i8* %x.addr.i.i.i, align 1
  %544 = load i8, i8* %x.addr.i.i.i, align 1
  %545 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i788 = call zeroext i8 @mult(i8 zeroext %544, i8 zeroext %545) #3
  store i8 %call.i.i.i788, i8* %x.addr.i2.i.i, align 1
  %546 = load i8, i8* %x.addr.i2.i.i, align 1
  %547 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %546, i8 zeroext %547) #3
  store i8 %call.i3.i.i, i8* %w.i, align 1
  %548 = load i8, i8* %y.i, align 1
  %549 = load i8, i8* %w.i, align 1
  %call3.i = call zeroext i8 @mult(i8 zeroext %548, i8 zeroext %549) #3
  store i8 %call3.i, i8* %y.i, align 1
  %550 = load i8, i8* %y.i, align 1
  store i8 %550, i8* %x.addr.i9.i, align 1
  %551 = load i8, i8* %x.addr.i9.i, align 1
  store i8 %551, i8* %x.addr.i.i8.i, align 1
  %552 = load i8, i8* %x.addr.i.i8.i, align 1
  store i8 %552, i8* %x.addr.i.i.i.i, align 1
  %553 = load i8, i8* %x.addr.i.i.i.i, align 1
  %554 = load i8, i8* %x.addr.i.i.i.i, align 1
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %553, i8 zeroext %554) #3
  store i8 %call.i.i.i.i, i8* %x.addr.i2.i.i.i, align 1
  %555 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %556 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %555, i8 zeroext %556) #3
  store i8 %call.i3.i.i.i, i8* %x.addr.i4.i.i, align 1
  %557 = load i8, i8* %x.addr.i4.i.i, align 1
  store i8 %557, i8* %x.addr.i.i3.i.i, align 1
  %558 = load i8, i8* %x.addr.i.i3.i.i, align 1
  %559 = load i8, i8* %x.addr.i.i3.i.i, align 1
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %558, i8 zeroext %559) #3
  store i8 %call.i.i5.i.i, i8* %x.addr.i2.i2.i.i, align 1
  %560 = load i8, i8* %x.addr.i2.i2.i.i, align 1
  %561 = load i8, i8* %x.addr.i2.i2.i.i, align 1
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %560, i8 zeroext %561) #3
  store i8 %call.i3.i6.i.i, i8* %y.i, align 1
  %562 = load i8, i8* %y.i, align 1
  %563 = load i8, i8* %w.i, align 1
  %call5.i = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563) #3
  store i8 %call5.i, i8* %y.i, align 1
  %564 = load i8, i8* %y.i, align 1
  %565 = load i8, i8* %z.i785, align 1
  %call6.i = call zeroext i8 @mult(i8 zeroext %564, i8 zeroext %565) #3
  store i8 %call6.i, i8* %y.i, align 1
  %566 = load i8, i8* %y.i, align 1
  %conv23 = zext i8 %566 to i32
  %567 = load i8*, i8** %y.addr, align 8
  store i8* %567, i8** %a.addr.i793, align 8
  %568 = load i8*, i8** %a.addr.i793, align 8
  store i8* %568, i8** %a.addr.i.i789, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i790, align 8
  store i8 0, i8* %result.i.i791, align 1
  store i32 0, i32* %i.i.i792, align 4
  br label %for.cond.i.i795

for.cond.i.i795:                                  ; preds = %for.body.i.i804, %sec_mult.exit783
  %569 = load i32, i32* %i.i.i792, align 4
  %cmp.i.i794 = icmp sle i32 %569, 2
  br i1 %cmp.i.i794, label %for.body.i.i804, label %xors.exit805

for.body.i.i804:                                  ; preds = %for.cond.i.i795
  %570 = load i8 (i8)*, i8 (i8)** %f.addr.i.i790, align 8
  %571 = load i8*, i8** %a.addr.i.i789, align 8
  %572 = load i32, i32* %i.i.i792, align 4
  %idxprom.i.i796 = sext i32 %572 to i64
  %arrayidx.i.i797 = getelementptr inbounds i8, i8* %571, i64 %idxprom.i.i796
  %573 = load i8, i8* %arrayidx.i.i797, align 1
  %call.i.i798 = call zeroext i8 %570(i8 zeroext %573) #3
  %conv.i.i799 = zext i8 %call.i.i798 to i32
  %574 = load i8, i8* %result.i.i791, align 1
  %conv1.i.i800 = zext i8 %574 to i32
  %xor.i.i801 = xor i32 %conv1.i.i800, %conv.i.i799
  %conv2.i.i802 = trunc i32 %xor.i.i801 to i8
  store i8 %conv2.i.i802, i8* %result.i.i791, align 1
  %575 = load i32, i32* %i.i.i792, align 4
  %inc.i.i803 = add nsw i32 %575, 1
  store i32 %inc.i.i803, i32* %i.i.i792, align 4
  br label %for.cond.i.i795

xors.exit805:                                     ; preds = %for.cond.i.i795
  %576 = load i8, i8* %result.i.i791, align 1
  %conv25 = zext i8 %576 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  call void @assert(i1 zeroext %cmp26)
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
  %cmp = icmp slt i32 %1, 2
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
  %a.addr.i.i162.i = alloca i8*, align 8
  %f.addr.i.i163.i = alloca i8 (i8)*, align 8
  %result.i.i164.i = alloca i8, align 1
  %i.i.i165.i = alloca i32, align 4
  %a.addr.i166.i = alloca i8*, align 8
  %a.addr.i.i145.i = alloca i8*, align 8
  %f.addr.i.i146.i = alloca i8 (i8)*, align 8
  %result.i.i147.i = alloca i8, align 1
  %i.i.i148.i = alloca i32, align 4
  %a.addr.i149.i = alloca i8*, align 8
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
  %r.i = alloca [3 x [3 x i8]], align 1
  %s.i = alloca [3 x [3 x i8]], align 1
  %p0.i = alloca [3 x [3 x i8]], align 1
  %p1.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x [3 x i8]], align 1
  %i.i21 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %i30.i = alloca i32, align 4
  %j35.i = alloca i32, align 4
  %i102.i = alloca i32, align 4
  %j114.i = alloca i32, align 4
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
  %z = alloca [3 x [3 x i8]], align 1
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
  store i8 0, i8* %result.i.i, align 1
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 2
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
  %arrayidx = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit
  %12 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %12, 2
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
  %cmp4 = icmp slt i32 %20, 2
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %x.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 %idxprom
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6, i64 0, i64 0
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9, i64 0, i64 0
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
  store i8 0, i8* %result.i.i.i, align 1
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body
  %27 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %27, 2
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
  store i8* %36, i8** %a.addr.i149.i, align 8
  %37 = load i8*, i8** %a.addr.i149.i, align 8
  store i8* %37, i8** %a.addr.i.i145.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i, align 8
  store i8 0, i8* %result.i.i147.i, align 1
  store i32 0, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

for.cond.i.i151.i:                                ; preds = %for.body.i.i160.i, %xors.exit.i
  %38 = load i32, i32* %i.i.i148.i, align 4
  %cmp.i.i150.i = icmp sle i32 %38, 2
  br i1 %cmp.i.i150.i, label %for.body.i.i160.i, label %xors.exit161.i

for.body.i.i160.i:                                ; preds = %for.cond.i.i151.i
  %39 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i, align 8
  %40 = load i8*, i8** %a.addr.i.i145.i, align 8
  %41 = load i32, i32* %i.i.i148.i, align 4
  %idxprom.i.i152.i = sext i32 %41 to i64
  %arrayidx.i.i153.i = getelementptr inbounds i8, i8* %40, i64 %idxprom.i.i152.i
  %42 = load i8, i8* %arrayidx.i.i153.i, align 1
  %call.i.i154.i = call zeroext i8 %39(i8 zeroext %42) #3
  %conv.i.i155.i = zext i8 %call.i.i154.i to i32
  %43 = load i8, i8* %result.i.i147.i, align 1
  %conv1.i.i156.i = zext i8 %43 to i32
  %xor.i.i157.i = xor i32 %conv1.i.i156.i, %conv.i.i155.i
  %conv2.i.i158.i = trunc i32 %xor.i.i157.i to i8
  store i8 %conv2.i.i158.i, i8* %result.i.i147.i, align 1
  %44 = load i32, i32* %i.i.i148.i, align 4
  %inc.i.i159.i = add nsw i32 %44, 1
  store i32 %inc.i.i159.i, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

xors.exit161.i:                                   ; preds = %for.cond.i.i151.i
  %45 = load i8, i8* %result.i.i147.i, align 1
  %conv7.i = zext i8 %45 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  store i32 0, i32* %i.i21, align 4
  br label %for.cond.i24

for.cond.i24:                                     ; preds = %for.end.i, %xors.exit161.i
  %46 = load i32, i32* %i.i21, align 4
  %cmp10.i = icmp sle i32 %46, 2
  br i1 %cmp10.i, label %for.body.i25, label %for.end29.i

for.body.i25:                                     ; preds = %for.cond.i24
  %47 = load i32, i32* %i.i21, align 4
  %add.i = add nsw i32 %47, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i25
  %48 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %48, 2
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %49 = load i32, i32* %i.i21, align 4
  %idxprom.i26 = sext i32 %49 to i64
  %arrayidx.i27 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom.i26
  %50 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %50 to i64
  %arrayidx18.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i27, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %51 = load i32, i32* %i.i21, align 4
  %idxprom19.i = sext i32 %51 to i64
  %arrayidx20.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %52 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %52 to i64
  %arrayidx22.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %53 = load i8, i8* %arrayidx22.i, align 1
  %54 = load i32, i32* %j.i, align 4
  %idxprom23.i = sext i32 %54 to i64
  %arrayidx24.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom23.i
  %55 = load i32, i32* %i.i21, align 4
  %idxprom25.i = sext i32 %55 to i64
  %arrayidx26.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i, i64 0, i64 %idxprom25.i
  store i8 %53, i8* %arrayidx26.i, align 1
  %56 = load i32, i32* %j.i, align 4
  %inc.i28 = add nsw i32 %56, 1
  store i32 %inc.i28, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i:                                        ; preds = %for.cond12.i
  %57 = load i32, i32* %i.i21, align 4
  %inc28.i = add nsw i32 %57, 1
  store i32 %inc28.i, i32* %i.i21, align 4
  br label %for.cond.i24

for.end29.i:                                      ; preds = %for.cond.i24
  store i32 0, i32* %i30.i, align 4
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.end98.i, %for.end29.i
  %58 = load i32, i32* %i30.i, align 4
  %cmp32.i = icmp sle i32 %58, 2
  br i1 %cmp32.i, label %for.body34.i, label %for.end101.i

for.body34.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %j35.i, align 4
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %if.end.i, %for.body34.i
  %59 = load i32, i32* %j35.i, align 4
  %cmp37.i = icmp sle i32 %59, 2
  br i1 %cmp37.i, label %for.body39.i, label %for.end98.i

for.body39.i:                                     ; preds = %for.cond36.i
  %60 = load i32, i32* %j35.i, align 4
  %61 = load i32, i32* %i30.i, align 4
  %cmp40.i = icmp ne i32 %60, %61
  br i1 %cmp40.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body39.i
  %62 = load i8*, i8** %b.addr.i, align 8
  %63 = load i32, i32* %j35.i, align 4
  %idxprom42.i = sext i32 %63 to i64
  %arrayidx43.i = getelementptr inbounds i8, i8* %62, i64 %idxprom42.i
  %64 = load i8, i8* %arrayidx43.i, align 1
  %conv44.i = zext i8 %64 to i32
  %65 = load i32, i32* %i30.i, align 4
  %idxprom45.i = sext i32 %65 to i64
  %arrayidx46.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom45.i
  %66 = load i32, i32* %j35.i, align 4
  %idxprom47.i = sext i32 %66 to i64
  %arrayidx48.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i, i64 0, i64 %idxprom47.i
  %67 = load i8, i8* %arrayidx48.i, align 1
  %conv49.i = zext i8 %67 to i32
  %xor.i = xor i32 %conv44.i, %conv49.i
  %conv50.i = trunc i32 %xor.i to i8
  %68 = load i32, i32* %i30.i, align 4
  %idxprom51.i = sext i32 %68 to i64
  %arrayidx52.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom51.i
  %69 = load i32, i32* %j35.i, align 4
  %idxprom53.i = sext i32 %69 to i64
  %arrayidx54.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i, i64 0, i64 %idxprom53.i
  store i8 %conv50.i, i8* %arrayidx54.i, align 1
  %70 = load i8*, i8** %a.addr.i20, align 8
  %71 = load i32, i32* %i30.i, align 4
  %idxprom55.i = sext i32 %71 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %70, i64 %idxprom55.i
  %72 = load i8, i8* %arrayidx56.i, align 1
  %conv57.i = zext i8 %72 to i32
  %xor58.i = xor i32 %conv57.i, 1
  %conv59.i = trunc i32 %xor58.i to i8
  %73 = load i32, i32* %i30.i, align 4
  %idxprom60.i = sext i32 %73 to i64
  %arrayidx61.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 %idxprom60.i
  %74 = load i32, i32* %j35.i, align 4
  %idxprom62.i = sext i32 %74 to i64
  %arrayidx63.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i, i64 0, i64 %idxprom62.i
  %75 = load i8, i8* %arrayidx63.i, align 1
  %call64.i = call zeroext i8 @mult(i8 zeroext %conv59.i, i8 zeroext %75) #3
  %76 = load i32, i32* %i30.i, align 4
  %idxprom65.i = sext i32 %76 to i64
  %arrayidx66.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom65.i
  %77 = load i32, i32* %j35.i, align 4
  %idxprom67.i = sext i32 %77 to i64
  %arrayidx68.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i, i64 0, i64 %idxprom67.i
  store i8 %call64.i, i8* %arrayidx68.i, align 1
  %78 = load i8*, i8** %a.addr.i20, align 8
  %79 = load i32, i32* %i30.i, align 4
  %idxprom69.i = sext i32 %79 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %78, i64 %idxprom69.i
  %80 = load i8, i8* %arrayidx70.i, align 1
  %81 = load i32, i32* %i30.i, align 4
  %idxprom71.i = sext i32 %81 to i64
  %arrayidx72.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 %idxprom71.i
  %82 = load i32, i32* %j35.i, align 4
  %idxprom73.i = sext i32 %82 to i64
  %arrayidx74.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i, i64 0, i64 %idxprom73.i
  %83 = load i8, i8* %arrayidx74.i, align 1
  %call75.i = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %83) #3
  %84 = load i32, i32* %i30.i, align 4
  %idxprom76.i = sext i32 %84 to i64
  %arrayidx77.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom76.i
  %85 = load i32, i32* %j35.i, align 4
  %idxprom78.i = sext i32 %85 to i64
  %arrayidx79.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i, i64 0, i64 %idxprom78.i
  store i8 %call75.i, i8* %arrayidx79.i, align 1
  %86 = load i32, i32* %i30.i, align 4
  %idxprom80.i = sext i32 %86 to i64
  %arrayidx81.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 %idxprom80.i
  %87 = load i32, i32* %j35.i, align 4
  %idxprom82.i = sext i32 %87 to i64
  %arrayidx83.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i, i64 0, i64 %idxprom82.i
  %88 = load i8, i8* %arrayidx83.i, align 1
  %conv84.i = zext i8 %88 to i32
  %89 = load i32, i32* %i30.i, align 4
  %idxprom85.i = sext i32 %89 to i64
  %arrayidx86.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 %idxprom85.i
  %90 = load i32, i32* %j35.i, align 4
  %idxprom87.i = sext i32 %90 to i64
  %arrayidx88.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i, i64 0, i64 %idxprom87.i
  %91 = load i8, i8* %arrayidx88.i, align 1
  %conv89.i = zext i8 %91 to i32
  %xor90.i = xor i32 %conv84.i, %conv89.i
  %conv91.i = trunc i32 %xor90.i to i8
  %92 = load i32, i32* %i30.i, align 4
  %idxprom92.i = sext i32 %92 to i64
  %arrayidx93.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom92.i
  %93 = load i32, i32* %j35.i, align 4
  %idxprom94.i = sext i32 %93 to i64
  %arrayidx95.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i, i64 0, i64 %idxprom94.i
  store i8 %conv91.i, i8* %arrayidx95.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body39.i
  %94 = load i32, i32* %j35.i, align 4
  %inc97.i = add nsw i32 %94, 1
  store i32 %inc97.i, i32* %j35.i, align 4
  br label %for.cond36.i

for.end98.i:                                      ; preds = %for.cond36.i
  %95 = load i32, i32* %i30.i, align 4
  %inc100.i = add nsw i32 %95, 1
  store i32 %inc100.i, i32* %i30.i, align 4
  br label %for.cond31.i

for.end101.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %i102.i, align 4
  br label %for.cond103.i

for.cond103.i:                                    ; preds = %for.end135.i, %for.end101.i
  %96 = load i32, i32* %i102.i, align 4
  %cmp104.i = icmp sle i32 %96, 2
  br i1 %cmp104.i, label %for.body106.i, label %for.end138.i

for.body106.i:                                    ; preds = %for.cond103.i
  %97 = load i8*, i8** %a.addr.i20, align 8
  %98 = load i32, i32* %i102.i, align 4
  %idxprom107.i = sext i32 %98 to i64
  %arrayidx108.i = getelementptr inbounds i8, i8* %97, i64 %idxprom107.i
  %99 = load i8, i8* %arrayidx108.i, align 1
  %100 = load i8*, i8** %b.addr.i, align 8
  %101 = load i32, i32* %i102.i, align 4
  %idxprom109.i = sext i32 %101 to i64
  %arrayidx110.i = getelementptr inbounds i8, i8* %100, i64 %idxprom109.i
  %102 = load i8, i8* %arrayidx110.i, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %102) #3
  %103 = load i8*, i8** %c.addr.i, align 8
  %104 = load i32, i32* %i102.i, align 4
  %idxprom112.i = sext i32 %104 to i64
  %arrayidx113.i = getelementptr inbounds i8, i8* %103, i64 %idxprom112.i
  store i8 %call111.i, i8* %arrayidx113.i, align 1
  store i32 0, i32* %j114.i, align 4
  br label %for.cond115.i

for.cond115.i:                                    ; preds = %if.end132.i, %for.body106.i
  %105 = load i32, i32* %j114.i, align 4
  %cmp116.i = icmp sle i32 %105, 2
  br i1 %cmp116.i, label %for.body118.i, label %for.end135.i

for.body118.i:                                    ; preds = %for.cond115.i
  %106 = load i32, i32* %j114.i, align 4
  %107 = load i32, i32* %i102.i, align 4
  %cmp119.i = icmp ne i32 %106, %107
  br i1 %cmp119.i, label %if.then121.i, label %if.end132.i

if.then121.i:                                     ; preds = %for.body118.i
  %108 = load i32, i32* %i102.i, align 4
  %idxprom122.i = sext i32 %108 to i64
  %arrayidx123.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 %idxprom122.i
  %109 = load i32, i32* %j114.i, align 4
  %idxprom124.i = sext i32 %109 to i64
  %arrayidx125.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i, i64 0, i64 %idxprom124.i
  %110 = load i8, i8* %arrayidx125.i, align 1
  %conv126.i = zext i8 %110 to i32
  %111 = load i8*, i8** %c.addr.i, align 8
  %112 = load i32, i32* %i102.i, align 4
  %idxprom127.i = sext i32 %112 to i64
  %arrayidx128.i = getelementptr inbounds i8, i8* %111, i64 %idxprom127.i
  %113 = load i8, i8* %arrayidx128.i, align 1
  %conv129.i = zext i8 %113 to i32
  %xor130.i = xor i32 %conv129.i, %conv126.i
  %conv131.i = trunc i32 %xor130.i to i8
  store i8 %conv131.i, i8* %arrayidx128.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then121.i, %for.body118.i
  %114 = load i32, i32* %j114.i, align 4
  %inc134.i = add nsw i32 %114, 1
  store i32 %inc134.i, i32* %j114.i, align 4
  br label %for.cond115.i

for.end135.i:                                     ; preds = %for.cond115.i
  %115 = load i32, i32* %i102.i, align 4
  %inc137.i = add nsw i32 %115, 1
  store i32 %inc137.i, i32* %i102.i, align 4
  br label %for.cond103.i

for.end138.i:                                     ; preds = %for.cond103.i
  %116 = load i8, i8* %A.i, align 1
  %117 = load i8, i8* %B.i, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #3
  %conv140.i = zext i8 %call139.i to i32
  %118 = load i8*, i8** %c.addr.i, align 8
  store i8* %118, i8** %a.addr.i166.i, align 8
  %119 = load i8*, i8** %a.addr.i166.i, align 8
  store i8* %119, i8** %a.addr.i.i162.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i, align 8
  store i8 0, i8* %result.i.i164.i, align 1
  store i32 0, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

for.cond.i.i168.i:                                ; preds = %for.body.i.i177.i, %for.end138.i
  %120 = load i32, i32* %i.i.i165.i, align 4
  %cmp.i.i167.i = icmp sle i32 %120, 2
  br i1 %cmp.i.i167.i, label %for.body.i.i177.i, label %sec_mult.exit

for.body.i.i177.i:                                ; preds = %for.cond.i.i168.i
  %121 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i, align 8
  %122 = load i8*, i8** %a.addr.i.i162.i, align 8
  %123 = load i32, i32* %i.i.i165.i, align 4
  %idxprom.i.i169.i = sext i32 %123 to i64
  %arrayidx.i.i170.i = getelementptr inbounds i8, i8* %122, i64 %idxprom.i.i169.i
  %124 = load i8, i8* %arrayidx.i.i170.i, align 1
  %call.i.i171.i = call zeroext i8 %121(i8 zeroext %124) #3
  %conv.i.i172.i = zext i8 %call.i.i171.i to i32
  %125 = load i8, i8* %result.i.i164.i, align 1
  %conv1.i.i173.i = zext i8 %125 to i32
  %xor.i.i174.i = xor i32 %conv1.i.i173.i, %conv.i.i172.i
  %conv2.i.i175.i = trunc i32 %xor.i.i174.i to i8
  store i8 %conv2.i.i175.i, i8* %result.i.i164.i, align 1
  %126 = load i32, i32* %i.i.i165.i, align 4
  %inc.i.i176.i = add nsw i32 %126, 1
  store i32 %inc.i.i176.i, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

sec_mult.exit:                                    ; preds = %for.cond.i.i168.i
  %127 = load i8, i8* %result.i.i164.i, align 1
  %conv142.i = zext i8 %127 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  br label %for.inc

for.inc:                                          ; preds = %sec_mult.exit
  %128 = load i32, i32* %i, align 4
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx11, i64 0, i64 0
  %129 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay12, i8** %from.addr.i29, align 8
  store i8* %129, i8** %to.addr.i30, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i31, align 8
  store i32 0, i32* %i.i32, align 4
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %for.body.i40, %for.end
  %130 = load i32, i32* %i.i32, align 4
  %cmp.i33 = icmp sle i32 %130, 2
  br i1 %cmp.i33, label %for.body.i40, label %transform.exit43

for.body.i40:                                     ; preds = %for.cond.i34
  %131 = load i8 (i8)*, i8 (i8)** %f.addr.i31, align 8
  %132 = load i8*, i8** %from.addr.i29, align 8
  %133 = load i32, i32* %i.i32, align 4
  %idxprom.i35 = sext i32 %133 to i64
  %arrayidx.i36 = getelementptr inbounds i8, i8* %132, i64 %idxprom.i35
  %134 = load i8, i8* %arrayidx.i36, align 1
  %call.i37 = call zeroext i8 %131(i8 zeroext %134) #3
  %135 = load i8*, i8** %to.addr.i30, align 8
  %136 = load i32, i32* %i.i32, align 4
  %idxprom1.i38 = sext i32 %136 to i64
  %arrayidx2.i39 = getelementptr inbounds i8, i8* %135, i64 %idxprom1.i38
  store i8 %call.i37, i8* %arrayidx2.i39, align 1
  %137 = load i32, i32* %i.i32, align 4
  %inc.i41 = add nsw i32 %137, 1
  store i32 %inc.i41, i32* %i.i32, align 4
  br label %for.cond.i34

transform.exit43:                                 ; preds = %for.cond.i34
  %138 = load i8, i8* %X, align 1
  store i8 %138, i8* %x.addr.i, align 1
  %139 = load i8, i8* %x.addr.i, align 1
  store i8 %139, i8* %r.i44, align 1
  store i32 0, i32* %i.i45, align 4
  br label %for.cond.i47

for.cond.i47:                                     ; preds = %for.body.i49, %transform.exit43
  %140 = load i32, i32* %i.i45, align 4
  %cmp.i46 = icmp slt i32 %140, 2
  br i1 %cmp.i46, label %for.body.i49, label %expd.exit

for.body.i49:                                     ; preds = %for.cond.i47
  %141 = load i8, i8* %r.i44, align 1
  %142 = load i8, i8* %x.addr.i, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  store i8 %call.i48, i8* %r.i44, align 1
  %143 = load i32, i32* %i.i45, align 4
  %inc.i50 = add nsw i32 %143, 1
  store i32 %inc.i50, i32* %i.i45, align 4
  br label %for.cond.i47

expd.exit:                                        ; preds = %for.cond.i47
  %144 = load i8, i8* %r.i44, align 1
  %conv14 = zext i8 %144 to i32
  %145 = load i8*, i8** %y.addr, align 8
  store i8* %145, i8** %a.addr.i56, align 8
  %146 = load i8*, i8** %a.addr.i56, align 8
  store i8* %146, i8** %a.addr.i.i52, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i53, align 8
  store i8 0, i8* %result.i.i54, align 1
  store i32 0, i32* %i.i.i55, align 4
  br label %for.cond.i.i58

for.cond.i.i58:                                   ; preds = %for.body.i.i67, %expd.exit
  %147 = load i32, i32* %i.i.i55, align 4
  %cmp.i.i57 = icmp sle i32 %147, 2
  br i1 %cmp.i.i57, label %for.body.i.i67, label %xors.exit68

for.body.i.i67:                                   ; preds = %for.cond.i.i58
  %148 = load i8 (i8)*, i8 (i8)** %f.addr.i.i53, align 8
  %149 = load i8*, i8** %a.addr.i.i52, align 8
  %150 = load i32, i32* %i.i.i55, align 4
  %idxprom.i.i59 = sext i32 %150 to i64
  %arrayidx.i.i60 = getelementptr inbounds i8, i8* %149, i64 %idxprom.i.i59
  %151 = load i8, i8* %arrayidx.i.i60, align 1
  %call.i.i61 = call zeroext i8 %148(i8 zeroext %151) #3
  %conv.i.i62 = zext i8 %call.i.i61 to i32
  %152 = load i8, i8* %result.i.i54, align 1
  %conv1.i.i63 = zext i8 %152 to i32
  %xor.i.i64 = xor i32 %conv1.i.i63, %conv.i.i62
  %conv2.i.i65 = trunc i32 %xor.i.i64 to i8
  store i8 %conv2.i.i65, i8* %result.i.i54, align 1
  %153 = load i32, i32* %i.i.i55, align 4
  %inc.i.i66 = add nsw i32 %153, 1
  store i32 %inc.i.i66, i32* %i.i.i55, align 4
  br label %for.cond.i.i58

xors.exit68:                                      ; preds = %for.cond.i.i58
  %154 = load i8, i8* %result.i.i54, align 1
  %conv16 = zext i8 %154 to i32
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
  %x.addr.i2.i2.i.i = alloca i8, align 1
  %x.addr.i.i3.i.i = alloca i8, align 1
  %x.addr.i4.i.i = alloca i8, align 1
  %x.addr.i2.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i = alloca i8, align 1
  %x.addr.i.i8.i = alloca i8, align 1
  %x.addr.i9.i = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i7.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %z.i = alloca i8, align 1
  %y.i = alloca i8, align 1
  %w.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  store i8 %1, i8* %x.addr.i.i, align 1
  %2 = load i8, i8* %x.addr.i.i, align 1
  %3 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #3
  store i8 %call.i.i, i8* %z.i, align 1
  %4 = load i8, i8* %z.i, align 1
  %5 = load i8, i8* %x.addr.i, align 1
  %call1.i = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5) #3
  store i8 %call1.i, i8* %y.i, align 1
  %6 = load i8, i8* %y.i, align 1
  store i8 %6, i8* %x.addr.i7.i, align 1
  %7 = load i8, i8* %x.addr.i7.i, align 1
  store i8 %7, i8* %x.addr.i.i.i, align 1
  %8 = load i8, i8* %x.addr.i.i.i, align 1
  %9 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #3
  store i8 %call.i.i.i, i8* %x.addr.i2.i.i, align 1
  %10 = load i8, i8* %x.addr.i2.i.i, align 1
  %11 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %11) #3
  store i8 %call.i3.i.i, i8* %w.i, align 1
  %12 = load i8, i8* %y.i, align 1
  %13 = load i8, i8* %w.i, align 1
  %call3.i = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13) #3
  store i8 %call3.i, i8* %y.i, align 1
  %14 = load i8, i8* %y.i, align 1
  store i8 %14, i8* %x.addr.i9.i, align 1
  %15 = load i8, i8* %x.addr.i9.i, align 1
  store i8 %15, i8* %x.addr.i.i8.i, align 1
  %16 = load i8, i8* %x.addr.i.i8.i, align 1
  store i8 %16, i8* %x.addr.i.i.i.i, align 1
  %17 = load i8, i8* %x.addr.i.i.i.i, align 1
  %18 = load i8, i8* %x.addr.i.i.i.i, align 1
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  store i8 %call.i.i.i.i, i8* %x.addr.i2.i.i.i, align 1
  %19 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %20 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  store i8 %call.i3.i.i.i, i8* %x.addr.i4.i.i, align 1
  %21 = load i8, i8* %x.addr.i4.i.i, align 1
  store i8 %21, i8* %x.addr.i.i3.i.i, align 1
  %22 = load i8, i8* %x.addr.i.i3.i.i, align 1
  %23 = load i8, i8* %x.addr.i.i3.i.i, align 1
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #3
  store i8 %call.i.i5.i.i, i8* %x.addr.i2.i2.i.i, align 1
  %24 = load i8, i8* %x.addr.i2.i2.i.i, align 1
  %25 = load i8, i8* %x.addr.i2.i2.i.i, align 1
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #3
  store i8 %call.i3.i6.i.i, i8* %y.i, align 1
  %26 = load i8, i8* %y.i, align 1
  %27 = load i8, i8* %w.i, align 1
  %call5.i = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  store i8 %call5.i, i8* %y.i, align 1
  %28 = load i8, i8* %y.i, align 1
  %29 = load i8, i8* %z.i, align 1
  %call6.i = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #3
  store i8 %call6.i, i8* %y.i, align 1
  %30 = load i8, i8* %y.i, align 1
  %call1 = call zeroext i8 @af(i8 zeroext %30)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i53 = alloca i8*, align 8
  %f.addr.i.i54 = alloca i8 (i8)*, align 8
  %result.i.i55 = alloca i8, align 1
  %i.i.i56 = alloca i32, align 4
  %a.addr.i57 = alloca i8*, align 8
  %x.addr.i2.i2.i.i.i26 = alloca i8, align 1
  %x.addr.i.i3.i.i.i27 = alloca i8, align 1
  %x.addr.i4.i.i.i28 = alloca i8, align 1
  %x.addr.i2.i.i.i.i29 = alloca i8, align 1
  %x.addr.i.i.i.i.i30 = alloca i8, align 1
  %x.addr.i.i8.i.i31 = alloca i8, align 1
  %x.addr.i9.i.i32 = alloca i8, align 1
  %x.addr.i2.i.i.i33 = alloca i8, align 1
  %x.addr.i.i.i.i34 = alloca i8, align 1
  %x.addr.i7.i.i35 = alloca i8, align 1
  %x.addr.i.i.i36 = alloca i8, align 1
  %x.addr.i.i37 = alloca i8, align 1
  %z.i.i38 = alloca i8, align 1
  %y.i.i39 = alloca i8, align 1
  %w.i.i40 = alloca i8, align 1
  %x.addr.i41 = alloca i8, align 1
  %from.addr.i = alloca i8*, align 8
  %to.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i789.i = alloca i8*, align 8
  %f.addr.i.i790.i = alloca i8 (i8)*, align 8
  %result.i.i791.i = alloca i8, align 1
  %i.i.i792.i = alloca i32, align 4
  %a.addr.i793.i = alloca i8*, align 8
  %x.addr.i2.i2.i.i.i = alloca i8, align 1
  %x.addr.i.i3.i.i.i = alloca i8, align 1
  %x.addr.i4.i.i.i = alloca i8, align 1
  %x.addr.i2.i.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i.i = alloca i8, align 1
  %x.addr.i.i8.i.i = alloca i8, align 1
  %x.addr.i9.i.i = alloca i8, align 1
  %x.addr.i2.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i = alloca i8, align 1
  %x.addr.i7.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i784.i = alloca i8, align 1
  %z.i785.i = alloca i8, align 1
  %y.i.i = alloca i8, align 1
  %w.i.i = alloca i8, align 1
  %a.addr.i.i162.i583.i = alloca i8*, align 8
  %f.addr.i.i163.i584.i = alloca i8 (i8)*, align 8
  %result.i.i164.i585.i = alloca i8, align 1
  %i.i.i165.i586.i = alloca i32, align 4
  %a.addr.i166.i587.i = alloca i8*, align 8
  %a.addr.i.i145.i588.i = alloca i8*, align 8
  %f.addr.i.i146.i589.i = alloca i8 (i8)*, align 8
  %result.i.i147.i590.i = alloca i8, align 1
  %i.i.i148.i591.i = alloca i32, align 4
  %a.addr.i149.i592.i = alloca i8*, align 8
  %a.addr.i.i.i593.i = alloca i8*, align 8
  %f.addr.i.i.i594.i = alloca i8 (i8)*, align 8
  %result.i.i.i595.i = alloca i8, align 1
  %i.i.i.i596.i = alloca i32, align 4
  %a.addr.i.i597.i = alloca i8*, align 8
  %a.addr.i598.i = alloca i8*, align 8
  %b.addr.i599.i = alloca i8*, align 8
  %c.addr.i600.i = alloca i8*, align 8
  %A.i601.i = alloca i8, align 1
  %B.i602.i = alloca i8, align 1
  %i.i608.i = alloca i32, align 4
  %j.i609.i = alloca i32, align 4
  %i30.i610.i = alloca i32, align 4
  %j35.i611.i = alloca i32, align 4
  %i102.i612.i = alloca i32, align 4
  %j114.i613.i = alloca i32, align 4
  %a.addr.i.i162.i382.i = alloca i8*, align 8
  %f.addr.i.i163.i383.i = alloca i8 (i8)*, align 8
  %result.i.i164.i384.i = alloca i8, align 1
  %i.i.i165.i385.i = alloca i32, align 4
  %a.addr.i166.i386.i = alloca i8*, align 8
  %a.addr.i.i145.i387.i = alloca i8*, align 8
  %f.addr.i.i146.i388.i = alloca i8 (i8)*, align 8
  %result.i.i147.i389.i = alloca i8, align 1
  %i.i.i148.i390.i = alloca i32, align 4
  %a.addr.i149.i391.i = alloca i8*, align 8
  %a.addr.i.i.i392.i = alloca i8*, align 8
  %f.addr.i.i.i393.i = alloca i8 (i8)*, align 8
  %result.i.i.i394.i = alloca i8, align 1
  %i.i.i.i395.i = alloca i32, align 4
  %a.addr.i.i396.i = alloca i8*, align 8
  %a.addr.i397.i = alloca i8*, align 8
  %b.addr.i398.i = alloca i8*, align 8
  %c.addr.i399.i = alloca i8*, align 8
  %A.i400.i = alloca i8, align 1
  %B.i401.i = alloca i8, align 1
  %i.i407.i = alloca i32, align 4
  %j.i408.i = alloca i32, align 4
  %i30.i409.i = alloca i32, align 4
  %j35.i410.i = alloca i32, align 4
  %i102.i411.i = alloca i32, align 4
  %j114.i412.i = alloca i32, align 4
  %from.addr.i367.i = alloca i8*, align 8
  %to.addr.i368.i = alloca i8*, align 8
  %f.addr.i369.i = alloca i8 (i8)*, align 8
  %i.i370.i = alloca i32, align 4
  %a.addr.i.i162.i166.i = alloca i8*, align 8
  %f.addr.i.i163.i167.i = alloca i8 (i8)*, align 8
  %result.i.i164.i168.i = alloca i8, align 1
  %i.i.i165.i169.i = alloca i32, align 4
  %a.addr.i166.i170.i = alloca i8*, align 8
  %a.addr.i.i145.i171.i = alloca i8*, align 8
  %f.addr.i.i146.i172.i = alloca i8 (i8)*, align 8
  %result.i.i147.i173.i = alloca i8, align 1
  %i.i.i148.i174.i = alloca i32, align 4
  %a.addr.i149.i175.i = alloca i8*, align 8
  %a.addr.i.i.i176.i = alloca i8*, align 8
  %f.addr.i.i.i177.i = alloca i8 (i8)*, align 8
  %result.i.i.i178.i = alloca i8, align 1
  %i.i.i.i179.i = alloca i32, align 4
  %a.addr.i.i180.i = alloca i8*, align 8
  %a.addr.i181.i = alloca i8*, align 8
  %b.addr.i182.i = alloca i8*, align 8
  %c.addr.i183.i = alloca i8*, align 8
  %A.i184.i = alloca i8, align 1
  %B.i185.i = alloca i8, align 1
  %i.i191.i = alloca i32, align 4
  %j.i192.i = alloca i32, align 4
  %i30.i193.i = alloca i32, align 4
  %j35.i194.i = alloca i32, align 4
  %i102.i195.i = alloca i32, align 4
  %j114.i196.i = alloca i32, align 4
  %a.addr.i.i21.i89.i = alloca i8*, align 8
  %f.addr.i.i22.i90.i = alloca i8 (i8)*, align 8
  %result.i.i23.i91.i = alloca i8, align 1
  %i.i.i24.i92.i = alloca i32, align 4
  %a.addr.i25.i93.i = alloca i8*, align 8
  %from.addr.i.i94.i = alloca i8*, align 8
  %to.addr.i.i95.i = alloca i8*, align 8
  %f.addr.i.i96.i = alloca i8 (i8)*, align 8
  %i.i.i97.i = alloca i32, align 4
  %a.addr.i.i.i98.i = alloca i8*, align 8
  %f.addr.i.i.i99.i = alloca i8 (i8)*, align 8
  %result.i.i.i100.i = alloca i8, align 1
  %i.i.i.i101.i = alloca i32, align 4
  %a.addr.i.i102.i = alloca i8*, align 8
  %x.addr.i103.i = alloca i8*, align 8
  %y.addr.i104.i = alloca i8*, align 8
  %X.i105.i = alloca i8, align 1
  %i.i106.i = alloca i8, align 1
  %tmp.i107.i = alloca i8, align 1
  %from.addr.i74.i = alloca i8*, align 8
  %to.addr.i75.i = alloca i8*, align 8
  %f.addr.i76.i = alloca i8 (i8)*, align 8
  %i.i77.i = alloca i32, align 4
  %a.addr.i.i162.i.i = alloca i8*, align 8
  %f.addr.i.i163.i.i = alloca i8 (i8)*, align 8
  %result.i.i164.i.i = alloca i8, align 1
  %i.i.i165.i.i = alloca i32, align 4
  %a.addr.i166.i.i = alloca i8*, align 8
  %a.addr.i.i145.i.i = alloca i8*, align 8
  %f.addr.i.i146.i.i = alloca i8 (i8)*, align 8
  %result.i.i147.i.i = alloca i8, align 1
  %i.i.i148.i.i = alloca i32, align 4
  %a.addr.i149.i.i = alloca i8*, align 8
  %a.addr.i.i.i45.i = alloca i8*, align 8
  %f.addr.i.i.i46.i = alloca i8 (i8)*, align 8
  %result.i.i.i47.i = alloca i8, align 1
  %i.i.i.i48.i = alloca i32, align 4
  %a.addr.i.i49.i = alloca i8*, align 8
  %a.addr.i50.i = alloca i8*, align 8
  %b.addr.i.i = alloca i8*, align 8
  %c.addr.i.i = alloca i8*, align 8
  %A.i.i = alloca i8, align 1
  %B.i.i = alloca i8, align 1
  %r.i.i = alloca [3 x [3 x i8]], align 1
  %s.i.i = alloca [3 x [3 x i8]], align 1
  %p0.i.i = alloca [3 x [3 x i8]], align 1
  %p1.i.i = alloca [3 x [3 x i8]], align 1
  %z.i.i = alloca [3 x [3 x i8]], align 1
  %i.i51.i = alloca i32, align 4
  %j.i.i = alloca i32, align 4
  %i30.i.i = alloca i32, align 4
  %j35.i.i = alloca i32, align 4
  %i102.i.i = alloca i32, align 4
  %j114.i.i = alloca i32, align 4
  %a.addr.i.i21.i.i = alloca i8*, align 8
  %f.addr.i.i22.i.i = alloca i8 (i8)*, align 8
  %result.i.i23.i.i = alloca i8, align 1
  %i.i.i24.i.i = alloca i32, align 4
  %a.addr.i25.i.i = alloca i8*, align 8
  %from.addr.i.i.i = alloca i8*, align 8
  %to.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i28.i = alloca i8 (i8)*, align 8
  %i.i.i29.i = alloca i32, align 4
  %a.addr.i.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i.i = alloca i8, align 1
  %i.i.i.i.i = alloca i32, align 4
  %a.addr.i.i30.i = alloca i8*, align 8
  %x.addr.i.i = alloca i8*, align 8
  %y.addr.i.i = alloca i8*, align 8
  %X.i.i = alloca i8, align 1
  %i.i31.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %from.addr.i.i = alloca i8*, align 8
  %to.addr.i.i = alloca i8*, align 8
  %f.addr.i.i11 = alloca i8 (i8)*, align 8
  %i.i.i12 = alloca i32, align 4
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i13 = alloca i8*, align 8
  %x.addr.i = alloca i8*, align 8
  %y.addr.i = alloca i8*, align 8
  %X.i = alloca i8, align 1
  %z.i = alloca [3 x i8], align 1
  %zr.i = alloca [3 x i8], align 1
  %w.i = alloca [3 x i8], align 1
  %wr.i = alloca [3 x i8], align 1
  %u.i = alloca [3 x i8], align 1
  %v.i = alloca [3 x i8], align 1
  %v16.i = alloca [3 x i8], align 1
  %m.i = alloca [3 x i8], align 1
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %X = alloca i8, align 1
  %x254 = alloca [3 x i8], align 1
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
  store i8 0, i8* %result.i.i, align 1
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = load i32, i32* %i.i.i, align 4
  %cmp.i.i = icmp sle i32 %3, 2
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
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %x254, i64 0, i64 0
  store i8* %11, i8** %x.addr.i, align 8
  store i8* %arraydecay, i8** %y.addr.i, align 8
  %call.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i, i8* %X.i, align 1
  %12 = load i8, i8* %X.i, align 1
  %conv.i = zext i8 %12 to i32
  %13 = load i8*, i8** %x.addr.i, align 8
  store i8* %13, i8** %a.addr.i.i13, align 8
  %14 = load i8*, i8** %a.addr.i.i13, align 8
  store i8* %14, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i8 0, i8* %result.i.i.i, align 1
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %xors.exit
  %15 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %15, 2
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %xors.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %16 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i, align 8
  %17 = load i8*, i8** %a.addr.i.i.i, align 8
  %18 = load i32, i32* %i.i.i.i, align 4
  %idxprom.i.i.i = sext i32 %18 to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %17, i64 %idxprom.i.i.i
  %19 = load i8, i8* %arrayidx.i.i.i, align 1
  %call.i.i.i = call zeroext i8 %16(i8 zeroext %19) #3
  %conv.i.i.i = zext i8 %call.i.i.i to i32
  %20 = load i8, i8* %result.i.i.i, align 1
  %conv1.i.i.i = zext i8 %20 to i32
  %xor.i.i.i = xor i32 %conv1.i.i.i, %conv.i.i.i
  %conv2.i.i.i = trunc i32 %xor.i.i.i to i8
  store i8 %conv2.i.i.i, i8* %result.i.i.i, align 1
  %21 = load i32, i32* %i.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %21, 1
  store i32 %inc.i.i.i, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

xors.exit.i:                                      ; preds = %for.cond.i.i.i
  %22 = load i8, i8* %result.i.i.i, align 1
  %conv2.i = zext i8 %22 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %23 = load i8*, i8** %x.addr.i, align 8
  %arraydecay.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  store i8* %23, i8** %from.addr.i.i, align 8
  store i8* %arraydecay.i, i8** %to.addr.i.i, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i.i11, align 8
  store i32 0, i32* %i.i.i12, align 4
  br label %for.cond.i.i15

for.cond.i.i15:                                   ; preds = %for.body.i.i20, %xors.exit.i
  %24 = load i32, i32* %i.i.i12, align 4
  %cmp.i.i14 = icmp sle i32 %24, 2
  br i1 %cmp.i.i14, label %for.body.i.i20, label %transform.exit.i

for.body.i.i20:                                   ; preds = %for.cond.i.i15
  %25 = load i8 (i8)*, i8 (i8)** %f.addr.i.i11, align 8
  %26 = load i8*, i8** %from.addr.i.i, align 8
  %27 = load i32, i32* %i.i.i12, align 4
  %idxprom.i.i16 = sext i32 %27 to i64
  %arrayidx.i.i17 = getelementptr inbounds i8, i8* %26, i64 %idxprom.i.i16
  %28 = load i8, i8* %arrayidx.i.i17, align 1
  %call.i.i18 = call zeroext i8 %25(i8 zeroext %28) #3
  %29 = load i8*, i8** %to.addr.i.i, align 8
  %30 = load i32, i32* %i.i.i12, align 4
  %idxprom1.i.i = sext i32 %30 to i64
  %arrayidx2.i.i = getelementptr inbounds i8, i8* %29, i64 %idxprom1.i.i
  store i8 %call.i.i18, i8* %arrayidx2.i.i, align 1
  %31 = load i32, i32* %i.i.i12, align 4
  %inc.i.i19 = add nsw i32 %31, 1
  store i32 %inc.i.i19, i32* %i.i.i12, align 4
  br label %for.cond.i.i15

transform.exit.i:                                 ; preds = %for.cond.i.i15
  %arraydecay4.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %arraydecay5.i = getelementptr inbounds [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  store i8* %arraydecay4.i, i8** %x.addr.i.i, align 8
  store i8* %arraydecay5.i, i8** %y.addr.i.i, align 8
  %call.i32.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i32.i, i8* %X.i.i, align 1
  %32 = load i8, i8* %X.i.i, align 1
  %conv.i.i21 = zext i8 %32 to i32
  %33 = load i8*, i8** %x.addr.i.i, align 8
  store i8* %33, i8** %a.addr.i.i30.i, align 8
  %34 = load i8*, i8** %a.addr.i.i30.i, align 8
  store i8* %34, i8** %a.addr.i.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i.i, align 8
  store i8 0, i8* %result.i.i.i.i, align 1
  store i32 0, i32* %i.i.i.i.i, align 4
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %transform.exit.i
  %35 = load i32, i32* %i.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp sle i32 %35, 2
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i, label %xors.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %36 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i.i, align 8
  %37 = load i8*, i8** %a.addr.i.i.i.i, align 8
  %38 = load i32, i32* %i.i.i.i.i, align 4
  %idxprom.i.i.i.i = sext i32 %38 to i64
  %arrayidx.i.i.i.i = getelementptr inbounds i8, i8* %37, i64 %idxprom.i.i.i.i
  %39 = load i8, i8* %arrayidx.i.i.i.i, align 1
  %call.i.i.i.i = call zeroext i8 %36(i8 zeroext %39) #3
  %conv.i.i.i.i = zext i8 %call.i.i.i.i to i32
  %40 = load i8, i8* %result.i.i.i.i, align 1
  %conv1.i.i.i.i = zext i8 %40 to i32
  %xor.i.i.i.i = xor i32 %conv1.i.i.i.i, %conv.i.i.i.i
  %conv2.i.i.i.i = trunc i32 %xor.i.i.i.i to i8
  store i8 %conv2.i.i.i.i, i8* %result.i.i.i.i, align 1
  %41 = load i32, i32* %i.i.i.i.i, align 4
  %inc.i.i.i.i = add nsw i32 %41, 1
  store i32 %inc.i.i.i.i, i32* %i.i.i.i.i, align 4
  br label %for.cond.i.i.i.i

xors.exit.i.i:                                    ; preds = %for.cond.i.i.i.i
  %42 = load i8, i8* %result.i.i.i.i, align 1
  %conv2.i.i22 = zext i8 %42 to i32
  %cmp.i33.i = icmp eq i32 %conv.i.i21, %conv2.i.i22
  call void @assume(i1 zeroext %cmp.i33.i) #3
  %43 = load i8*, i8** %x.addr.i.i, align 8
  %44 = load i8*, i8** %y.addr.i.i, align 8
  store i8* %43, i8** %from.addr.i.i.i, align 8
  store i8* %44, i8** %to.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i28.i, align 8
  store i32 0, i32* %i.i.i29.i, align 4
  br label %for.cond.i.i35.i

for.cond.i.i35.i:                                 ; preds = %for.body.i.i40.i, %xors.exit.i.i
  %45 = load i32, i32* %i.i.i29.i, align 4
  %cmp.i.i34.i = icmp sle i32 %45, 2
  br i1 %cmp.i.i34.i, label %for.body.i.i40.i, label %transform.exit.i.i

for.body.i.i40.i:                                 ; preds = %for.cond.i.i35.i
  %46 = load i8 (i8)*, i8 (i8)** %f.addr.i.i28.i, align 8
  %47 = load i8*, i8** %from.addr.i.i.i, align 8
  %48 = load i32, i32* %i.i.i29.i, align 4
  %idxprom.i.i36.i = sext i32 %48 to i64
  %arrayidx.i.i37.i = getelementptr inbounds i8, i8* %47, i64 %idxprom.i.i36.i
  %49 = load i8, i8* %arrayidx.i.i37.i, align 1
  %call.i.i38.i = call zeroext i8 %46(i8 zeroext %49) #3
  %50 = load i8*, i8** %to.addr.i.i.i, align 8
  %51 = load i32, i32* %i.i.i29.i, align 4
  %idxprom1.i.i.i = sext i32 %51 to i64
  %arrayidx2.i.i.i = getelementptr inbounds i8, i8* %50, i64 %idxprom1.i.i.i
  store i8 %call.i.i38.i, i8* %arrayidx2.i.i.i, align 1
  %52 = load i32, i32* %i.i.i29.i, align 4
  %inc.i.i39.i = add nsw i32 %52, 1
  store i32 %inc.i.i39.i, i32* %i.i.i29.i, align 4
  br label %for.cond.i.i35.i

transform.exit.i.i:                               ; preds = %for.cond.i.i35.i
  store i8 1, i8* %i.i31.i, align 1
  br label %for.cond.i41.i

for.cond.i41.i:                                   ; preds = %for.body.i43.i, %transform.exit.i.i
  %53 = load i8, i8* %i.i31.i, align 1
  %conv4.i.i = zext i8 %53 to i32
  %cmp5.i.i = icmp sle i32 %conv4.i.i, 2
  br i1 %cmp5.i.i, label %for.body.i43.i, label %for.end.i.i

for.body.i43.i:                                   ; preds = %for.cond.i41.i
  %call7.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i.i, i8* %tmp.i.i, align 1
  %54 = load i8, i8* %tmp.i.i, align 1
  %conv8.i.i = zext i8 %54 to i32
  %55 = load i8*, i8** %y.addr.i.i, align 8
  %56 = load i8, i8* %55, align 1
  %conv9.i.i = zext i8 %56 to i32
  %xor.i.i23 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i23 to i8
  store i8 %conv10.i.i, i8* %55, align 1
  %57 = load i8, i8* %tmp.i.i, align 1
  %conv11.i.i = zext i8 %57 to i32
  %58 = load i8*, i8** %y.addr.i.i, align 8
  %59 = load i8, i8* %i.i31.i, align 1
  %idxprom.i42.i = zext i8 %59 to i64
  %arrayidx12.i.i = getelementptr inbounds i8, i8* %58, i64 %idxprom.i42.i
  %60 = load i8, i8* %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %60 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %arrayidx12.i.i, align 1
  %61 = load i8, i8* %i.i31.i, align 1
  %inc.i44.i = add i8 %61, 1
  store i8 %inc.i44.i, i8* %i.i31.i, align 1
  br label %for.cond.i41.i

for.end.i.i:                                      ; preds = %for.cond.i41.i
  %62 = load i8, i8* %X.i.i, align 1
  %conv16.i.i = zext i8 %62 to i32
  %63 = load i8*, i8** %y.addr.i.i, align 8
  store i8* %63, i8** %a.addr.i25.i.i, align 8
  %64 = load i8*, i8** %a.addr.i25.i.i, align 8
  store i8* %64, i8** %a.addr.i.i21.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i.i, align 8
  store i8 0, i8* %result.i.i23.i.i, align 1
  store i32 0, i32* %i.i.i24.i.i, align 4
  br label %for.cond.i.i27.i.i

for.cond.i.i27.i.i:                               ; preds = %for.body.i.i36.i.i, %for.end.i.i
  %65 = load i32, i32* %i.i.i24.i.i, align 4
  %cmp.i.i26.i.i = icmp sle i32 %65, 2
  br i1 %cmp.i.i26.i.i, label %for.body.i.i36.i.i, label %refresh_masks.exit.i

for.body.i.i36.i.i:                               ; preds = %for.cond.i.i27.i.i
  %66 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i.i, align 8
  %67 = load i8*, i8** %a.addr.i.i21.i.i, align 8
  %68 = load i32, i32* %i.i.i24.i.i, align 4
  %idxprom.i.i28.i.i = sext i32 %68 to i64
  %arrayidx.i.i29.i.i = getelementptr inbounds i8, i8* %67, i64 %idxprom.i.i28.i.i
  %69 = load i8, i8* %arrayidx.i.i29.i.i, align 1
  %call.i.i30.i.i = call zeroext i8 %66(i8 zeroext %69) #3
  %conv.i.i31.i.i = zext i8 %call.i.i30.i.i to i32
  %70 = load i8, i8* %result.i.i23.i.i, align 1
  %conv1.i.i32.i.i = zext i8 %70 to i32
  %xor.i.i33.i.i = xor i32 %conv1.i.i32.i.i, %conv.i.i31.i.i
  %conv2.i.i34.i.i = trunc i32 %xor.i.i33.i.i to i8
  store i8 %conv2.i.i34.i.i, i8* %result.i.i23.i.i, align 1
  %71 = load i32, i32* %i.i.i24.i.i, align 4
  %inc.i.i35.i.i = add nsw i32 %71, 1
  store i32 %inc.i.i35.i.i, i32* %i.i.i24.i.i, align 4
  br label %for.cond.i.i27.i.i

refresh_masks.exit.i:                             ; preds = %for.cond.i.i27.i.i
  %72 = load i8, i8* %result.i.i23.i.i, align 1
  %conv18.i.i = zext i8 %72 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay6.i = getelementptr inbounds [3 x i8], [3 x i8]* %zr.i, i64 0, i64 0
  %73 = load i8*, i8** %x.addr.i, align 8
  %arraydecay7.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  store i8* %arraydecay6.i, i8** %a.addr.i50.i, align 8
  store i8* %73, i8** %b.addr.i.i, align 8
  store i8* %arraydecay7.i, i8** %c.addr.i.i, align 8
  %call.i52.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i52.i, i8* %A.i.i, align 1
  %call1.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i.i, i8* %B.i.i, align 1
  %74 = load i8, i8* %A.i.i, align 1
  %conv.i53.i = zext i8 %74 to i32
  %75 = load i8*, i8** %a.addr.i50.i, align 8
  store i8* %75, i8** %a.addr.i.i49.i, align 8
  %76 = load i8*, i8** %a.addr.i.i49.i, align 8
  store i8* %76, i8** %a.addr.i.i.i45.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i46.i, align 8
  store i8 0, i8* %result.i.i.i47.i, align 1
  store i32 0, i32* %i.i.i.i48.i, align 4
  br label %for.cond.i.i.i55.i

for.cond.i.i.i55.i:                               ; preds = %for.body.i.i.i64.i, %refresh_masks.exit.i
  %77 = load i32, i32* %i.i.i.i48.i, align 4
  %cmp.i.i.i54.i = icmp sle i32 %77, 2
  br i1 %cmp.i.i.i54.i, label %for.body.i.i.i64.i, label %xors.exit.i66.i

for.body.i.i.i64.i:                               ; preds = %for.cond.i.i.i55.i
  %78 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i46.i, align 8
  %79 = load i8*, i8** %a.addr.i.i.i45.i, align 8
  %80 = load i32, i32* %i.i.i.i48.i, align 4
  %idxprom.i.i.i56.i = sext i32 %80 to i64
  %arrayidx.i.i.i57.i = getelementptr inbounds i8, i8* %79, i64 %idxprom.i.i.i56.i
  %81 = load i8, i8* %arrayidx.i.i.i57.i, align 1
  %call.i.i.i58.i = call zeroext i8 %78(i8 zeroext %81) #3
  %conv.i.i.i59.i = zext i8 %call.i.i.i58.i to i32
  %82 = load i8, i8* %result.i.i.i47.i, align 1
  %conv1.i.i.i60.i = zext i8 %82 to i32
  %xor.i.i.i61.i = xor i32 %conv1.i.i.i60.i, %conv.i.i.i59.i
  %conv2.i.i.i62.i = trunc i32 %xor.i.i.i61.i to i8
  store i8 %conv2.i.i.i62.i, i8* %result.i.i.i47.i, align 1
  %83 = load i32, i32* %i.i.i.i48.i, align 4
  %inc.i.i.i63.i = add nsw i32 %83, 1
  store i32 %inc.i.i.i63.i, i32* %i.i.i.i48.i, align 4
  br label %for.cond.i.i.i55.i

xors.exit.i66.i:                                  ; preds = %for.cond.i.i.i55.i
  %84 = load i8, i8* %result.i.i.i47.i, align 1
  %conv3.i.i = zext i8 %84 to i32
  %cmp.i65.i = icmp eq i32 %conv.i53.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i65.i) #3
  %85 = load i8, i8* %B.i.i, align 1
  %conv5.i.i = zext i8 %85 to i32
  %86 = load i8*, i8** %b.addr.i.i, align 8
  store i8* %86, i8** %a.addr.i149.i.i, align 8
  %87 = load i8*, i8** %a.addr.i149.i.i, align 8
  store i8* %87, i8** %a.addr.i.i145.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i.i, align 8
  store i8 0, i8* %result.i.i147.i.i, align 1
  store i32 0, i32* %i.i.i148.i.i, align 4
  br label %for.cond.i.i151.i.i

for.cond.i.i151.i.i:                              ; preds = %for.body.i.i160.i.i, %xors.exit.i66.i
  %88 = load i32, i32* %i.i.i148.i.i, align 4
  %cmp.i.i150.i.i = icmp sle i32 %88, 2
  br i1 %cmp.i.i150.i.i, label %for.body.i.i160.i.i, label %xors.exit161.i.i

for.body.i.i160.i.i:                              ; preds = %for.cond.i.i151.i.i
  %89 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i.i, align 8
  %90 = load i8*, i8** %a.addr.i.i145.i.i, align 8
  %91 = load i32, i32* %i.i.i148.i.i, align 4
  %idxprom.i.i152.i.i = sext i32 %91 to i64
  %arrayidx.i.i153.i.i = getelementptr inbounds i8, i8* %90, i64 %idxprom.i.i152.i.i
  %92 = load i8, i8* %arrayidx.i.i153.i.i, align 1
  %call.i.i154.i.i = call zeroext i8 %89(i8 zeroext %92) #3
  %conv.i.i155.i.i = zext i8 %call.i.i154.i.i to i32
  %93 = load i8, i8* %result.i.i147.i.i, align 1
  %conv1.i.i156.i.i = zext i8 %93 to i32
  %xor.i.i157.i.i = xor i32 %conv1.i.i156.i.i, %conv.i.i155.i.i
  %conv2.i.i158.i.i = trunc i32 %xor.i.i157.i.i to i8
  store i8 %conv2.i.i158.i.i, i8* %result.i.i147.i.i, align 1
  %94 = load i32, i32* %i.i.i148.i.i, align 4
  %inc.i.i159.i.i = add nsw i32 %94, 1
  store i32 %inc.i.i159.i.i, i32* %i.i.i148.i.i, align 4
  br label %for.cond.i.i151.i.i

xors.exit161.i.i:                                 ; preds = %for.cond.i.i151.i.i
  %95 = load i8, i8* %result.i.i147.i.i, align 1
  %conv7.i.i = zext i8 %95 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  store i32 0, i32* %i.i51.i, align 4
  br label %for.cond.i67.i

for.cond.i67.i:                                   ; preds = %for.end.i72.i, %xors.exit161.i.i
  %96 = load i32, i32* %i.i51.i, align 4
  %cmp10.i.i = icmp sle i32 %96, 2
  br i1 %cmp10.i.i, label %for.body.i68.i, label %for.end29.i.i

for.body.i68.i:                                   ; preds = %for.cond.i67.i
  %97 = load i32, i32* %i.i51.i, align 4
  %add.i.i = add nsw i32 %97, 1
  store i32 %add.i.i, i32* %j.i.i, align 4
  br label %for.cond12.i.i

for.cond12.i.i:                                   ; preds = %for.body15.i.i, %for.body.i68.i
  %98 = load i32, i32* %j.i.i, align 4
  %cmp13.i.i = icmp sle i32 %98, 2
  br i1 %cmp13.i.i, label %for.body15.i.i, label %for.end.i72.i

for.body15.i.i:                                   ; preds = %for.cond12.i.i
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %99 = load i32, i32* %i.i51.i, align 4
  %idxprom.i69.i = sext i32 %99 to i64
  %arrayidx.i70.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom.i69.i
  %100 = load i32, i32* %j.i.i, align 4
  %idxprom17.i.i = sext i32 %100 to i64
  %arrayidx18.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i70.i, i64 0, i64 %idxprom17.i.i
  store i8 %call16.i.i, i8* %arrayidx18.i.i, align 1
  %101 = load i32, i32* %i.i51.i, align 4
  %idxprom19.i.i = sext i32 %101 to i64
  %arrayidx20.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i.i
  %102 = load i32, i32* %j.i.i, align 4
  %idxprom21.i.i = sext i32 %102 to i64
  %arrayidx22.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i.i, i64 0, i64 %idxprom21.i.i
  %103 = load i8, i8* %arrayidx22.i.i, align 1
  %104 = load i32, i32* %j.i.i, align 4
  %idxprom23.i.i = sext i32 %104 to i64
  %arrayidx24.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i.i
  %105 = load i32, i32* %i.i51.i, align 4
  %idxprom25.i.i = sext i32 %105 to i64
  %arrayidx26.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i.i, i64 0, i64 %idxprom25.i.i
  store i8 %103, i8* %arrayidx26.i.i, align 1
  %106 = load i32, i32* %j.i.i, align 4
  %inc.i71.i = add nsw i32 %106, 1
  store i32 %inc.i71.i, i32* %j.i.i, align 4
  br label %for.cond12.i.i

for.end.i72.i:                                    ; preds = %for.cond12.i.i
  %107 = load i32, i32* %i.i51.i, align 4
  %inc28.i.i = add nsw i32 %107, 1
  store i32 %inc28.i.i, i32* %i.i51.i, align 4
  br label %for.cond.i67.i

for.end29.i.i:                                    ; preds = %for.cond.i67.i
  store i32 0, i32* %i30.i.i, align 4
  br label %for.cond31.i.i

for.cond31.i.i:                                   ; preds = %for.end98.i.i, %for.end29.i.i
  %108 = load i32, i32* %i30.i.i, align 4
  %cmp32.i.i = icmp sle i32 %108, 2
  br i1 %cmp32.i.i, label %for.body34.i.i, label %for.end101.i.i

for.body34.i.i:                                   ; preds = %for.cond31.i.i
  store i32 0, i32* %j35.i.i, align 4
  br label %for.cond36.i.i

for.cond36.i.i:                                   ; preds = %if.end.i.i, %for.body34.i.i
  %109 = load i32, i32* %j35.i.i, align 4
  %cmp37.i.i = icmp sle i32 %109, 2
  br i1 %cmp37.i.i, label %for.body39.i.i, label %for.end98.i.i

for.body39.i.i:                                   ; preds = %for.cond36.i.i
  %110 = load i32, i32* %j35.i.i, align 4
  %111 = load i32, i32* %i30.i.i, align 4
  %cmp40.i.i = icmp ne i32 %110, %111
  br i1 %cmp40.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body39.i.i
  %112 = load i8*, i8** %b.addr.i.i, align 8
  %113 = load i32, i32* %j35.i.i, align 4
  %idxprom42.i.i = sext i32 %113 to i64
  %arrayidx43.i.i = getelementptr inbounds i8, i8* %112, i64 %idxprom42.i.i
  %114 = load i8, i8* %arrayidx43.i.i, align 1
  %conv44.i.i = zext i8 %114 to i32
  %115 = load i32, i32* %i30.i.i, align 4
  %idxprom45.i.i = sext i32 %115 to i64
  %arrayidx46.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i.i
  %116 = load i32, i32* %j35.i.i, align 4
  %idxprom47.i.i = sext i32 %116 to i64
  %arrayidx48.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i.i, i64 0, i64 %idxprom47.i.i
  %117 = load i8, i8* %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %117 to i32
  %xor.i73.i = xor i32 %conv44.i.i, %conv49.i.i
  %conv50.i.i = trunc i32 %xor.i73.i to i8
  %118 = load i32, i32* %i30.i.i, align 4
  %idxprom51.i.i = sext i32 %118 to i64
  %arrayidx52.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i.i
  %119 = load i32, i32* %j35.i.i, align 4
  %idxprom53.i.i = sext i32 %119 to i64
  %arrayidx54.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i.i, i64 0, i64 %idxprom53.i.i
  store i8 %conv50.i.i, i8* %arrayidx54.i.i, align 1
  %120 = load i8*, i8** %a.addr.i50.i, align 8
  %121 = load i32, i32* %i30.i.i, align 4
  %idxprom55.i.i = sext i32 %121 to i64
  %arrayidx56.i.i = getelementptr inbounds i8, i8* %120, i64 %idxprom55.i.i
  %122 = load i8, i8* %arrayidx56.i.i, align 1
  %conv57.i.i = zext i8 %122 to i32
  %xor58.i.i = xor i32 %conv57.i.i, 1
  %conv59.i.i = trunc i32 %xor58.i.i to i8
  %123 = load i32, i32* %i30.i.i, align 4
  %idxprom60.i.i = sext i32 %123 to i64
  %arrayidx61.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i.i
  %124 = load i32, i32* %j35.i.i, align 4
  %idxprom62.i.i = sext i32 %124 to i64
  %arrayidx63.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i.i, i64 0, i64 %idxprom62.i.i
  %125 = load i8, i8* %arrayidx63.i.i, align 1
  %call64.i.i = call zeroext i8 @mult(i8 zeroext %conv59.i.i, i8 zeroext %125) #3
  %126 = load i32, i32* %i30.i.i, align 4
  %idxprom65.i.i = sext i32 %126 to i64
  %arrayidx66.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i.i
  %127 = load i32, i32* %j35.i.i, align 4
  %idxprom67.i.i = sext i32 %127 to i64
  %arrayidx68.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i.i, i64 0, i64 %idxprom67.i.i
  store i8 %call64.i.i, i8* %arrayidx68.i.i, align 1
  %128 = load i8*, i8** %a.addr.i50.i, align 8
  %129 = load i32, i32* %i30.i.i, align 4
  %idxprom69.i.i = sext i32 %129 to i64
  %arrayidx70.i.i = getelementptr inbounds i8, i8* %128, i64 %idxprom69.i.i
  %130 = load i8, i8* %arrayidx70.i.i, align 1
  %131 = load i32, i32* %i30.i.i, align 4
  %idxprom71.i.i = sext i32 %131 to i64
  %arrayidx72.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i.i
  %132 = load i32, i32* %j35.i.i, align 4
  %idxprom73.i.i = sext i32 %132 to i64
  %arrayidx74.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i.i, i64 0, i64 %idxprom73.i.i
  %133 = load i8, i8* %arrayidx74.i.i, align 1
  %call75.i.i = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %133) #3
  %134 = load i32, i32* %i30.i.i, align 4
  %idxprom76.i.i = sext i32 %134 to i64
  %arrayidx77.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i.i
  %135 = load i32, i32* %j35.i.i, align 4
  %idxprom78.i.i = sext i32 %135 to i64
  %arrayidx79.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i.i, i64 0, i64 %idxprom78.i.i
  store i8 %call75.i.i, i8* %arrayidx79.i.i, align 1
  %136 = load i32, i32* %i30.i.i, align 4
  %idxprom80.i.i = sext i32 %136 to i64
  %arrayidx81.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i.i
  %137 = load i32, i32* %j35.i.i, align 4
  %idxprom82.i.i = sext i32 %137 to i64
  %arrayidx83.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i.i, i64 0, i64 %idxprom82.i.i
  %138 = load i8, i8* %arrayidx83.i.i, align 1
  %conv84.i.i = zext i8 %138 to i32
  %139 = load i32, i32* %i30.i.i, align 4
  %idxprom85.i.i = sext i32 %139 to i64
  %arrayidx86.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i.i
  %140 = load i32, i32* %j35.i.i, align 4
  %idxprom87.i.i = sext i32 %140 to i64
  %arrayidx88.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i.i, i64 0, i64 %idxprom87.i.i
  %141 = load i8, i8* %arrayidx88.i.i, align 1
  %conv89.i.i = zext i8 %141 to i32
  %xor90.i.i = xor i32 %conv84.i.i, %conv89.i.i
  %conv91.i.i = trunc i32 %xor90.i.i to i8
  %142 = load i32, i32* %i30.i.i, align 4
  %idxprom92.i.i = sext i32 %142 to i64
  %arrayidx93.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i.i
  %143 = load i32, i32* %j35.i.i, align 4
  %idxprom94.i.i = sext i32 %143 to i64
  %arrayidx95.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i.i, i64 0, i64 %idxprom94.i.i
  store i8 %conv91.i.i, i8* %arrayidx95.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body39.i.i
  %144 = load i32, i32* %j35.i.i, align 4
  %inc97.i.i = add nsw i32 %144, 1
  store i32 %inc97.i.i, i32* %j35.i.i, align 4
  br label %for.cond36.i.i

for.end98.i.i:                                    ; preds = %for.cond36.i.i
  %145 = load i32, i32* %i30.i.i, align 4
  %inc100.i.i = add nsw i32 %145, 1
  store i32 %inc100.i.i, i32* %i30.i.i, align 4
  br label %for.cond31.i.i

for.end101.i.i:                                   ; preds = %for.cond31.i.i
  store i32 0, i32* %i102.i.i, align 4
  br label %for.cond103.i.i

for.cond103.i.i:                                  ; preds = %for.end135.i.i, %for.end101.i.i
  %146 = load i32, i32* %i102.i.i, align 4
  %cmp104.i.i = icmp sle i32 %146, 2
  br i1 %cmp104.i.i, label %for.body106.i.i, label %for.end138.i.i

for.body106.i.i:                                  ; preds = %for.cond103.i.i
  %147 = load i8*, i8** %a.addr.i50.i, align 8
  %148 = load i32, i32* %i102.i.i, align 4
  %idxprom107.i.i = sext i32 %148 to i64
  %arrayidx108.i.i = getelementptr inbounds i8, i8* %147, i64 %idxprom107.i.i
  %149 = load i8, i8* %arrayidx108.i.i, align 1
  %150 = load i8*, i8** %b.addr.i.i, align 8
  %151 = load i32, i32* %i102.i.i, align 4
  %idxprom109.i.i = sext i32 %151 to i64
  %arrayidx110.i.i = getelementptr inbounds i8, i8* %150, i64 %idxprom109.i.i
  %152 = load i8, i8* %arrayidx110.i.i, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %152) #3
  %153 = load i8*, i8** %c.addr.i.i, align 8
  %154 = load i32, i32* %i102.i.i, align 4
  %idxprom112.i.i = sext i32 %154 to i64
  %arrayidx113.i.i = getelementptr inbounds i8, i8* %153, i64 %idxprom112.i.i
  store i8 %call111.i.i, i8* %arrayidx113.i.i, align 1
  store i32 0, i32* %j114.i.i, align 4
  br label %for.cond115.i.i

for.cond115.i.i:                                  ; preds = %if.end132.i.i, %for.body106.i.i
  %155 = load i32, i32* %j114.i.i, align 4
  %cmp116.i.i = icmp sle i32 %155, 2
  br i1 %cmp116.i.i, label %for.body118.i.i, label %for.end135.i.i

for.body118.i.i:                                  ; preds = %for.cond115.i.i
  %156 = load i32, i32* %j114.i.i, align 4
  %157 = load i32, i32* %i102.i.i, align 4
  %cmp119.i.i = icmp ne i32 %156, %157
  br i1 %cmp119.i.i, label %if.then121.i.i, label %if.end132.i.i

if.then121.i.i:                                   ; preds = %for.body118.i.i
  %158 = load i32, i32* %i102.i.i, align 4
  %idxprom122.i.i = sext i32 %158 to i64
  %arrayidx123.i.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i.i
  %159 = load i32, i32* %j114.i.i, align 4
  %idxprom124.i.i = sext i32 %159 to i64
  %arrayidx125.i.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i.i, i64 0, i64 %idxprom124.i.i
  %160 = load i8, i8* %arrayidx125.i.i, align 1
  %conv126.i.i = zext i8 %160 to i32
  %161 = load i8*, i8** %c.addr.i.i, align 8
  %162 = load i32, i32* %i102.i.i, align 4
  %idxprom127.i.i = sext i32 %162 to i64
  %arrayidx128.i.i = getelementptr inbounds i8, i8* %161, i64 %idxprom127.i.i
  %163 = load i8, i8* %arrayidx128.i.i, align 1
  %conv129.i.i = zext i8 %163 to i32
  %xor130.i.i = xor i32 %conv129.i.i, %conv126.i.i
  %conv131.i.i = trunc i32 %xor130.i.i to i8
  store i8 %conv131.i.i, i8* %arrayidx128.i.i, align 1
  br label %if.end132.i.i

if.end132.i.i:                                    ; preds = %if.then121.i.i, %for.body118.i.i
  %164 = load i32, i32* %j114.i.i, align 4
  %inc134.i.i = add nsw i32 %164, 1
  store i32 %inc134.i.i, i32* %j114.i.i, align 4
  br label %for.cond115.i.i

for.end135.i.i:                                   ; preds = %for.cond115.i.i
  %165 = load i32, i32* %i102.i.i, align 4
  %inc137.i.i = add nsw i32 %165, 1
  store i32 %inc137.i.i, i32* %i102.i.i, align 4
  br label %for.cond103.i.i

for.end138.i.i:                                   ; preds = %for.cond103.i.i
  %166 = load i8, i8* %A.i.i, align 1
  %167 = load i8, i8* %B.i.i, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %168 = load i8*, i8** %c.addr.i.i, align 8
  store i8* %168, i8** %a.addr.i166.i.i, align 8
  %169 = load i8*, i8** %a.addr.i166.i.i, align 8
  store i8* %169, i8** %a.addr.i.i162.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i.i, align 8
  store i8 0, i8* %result.i.i164.i.i, align 1
  store i32 0, i32* %i.i.i165.i.i, align 4
  br label %for.cond.i.i168.i.i

for.cond.i.i168.i.i:                              ; preds = %for.body.i.i177.i.i, %for.end138.i.i
  %170 = load i32, i32* %i.i.i165.i.i, align 4
  %cmp.i.i167.i.i = icmp sle i32 %170, 2
  br i1 %cmp.i.i167.i.i, label %for.body.i.i177.i.i, label %sec_mult.exit.i

for.body.i.i177.i.i:                              ; preds = %for.cond.i.i168.i.i
  %171 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i.i, align 8
  %172 = load i8*, i8** %a.addr.i.i162.i.i, align 8
  %173 = load i32, i32* %i.i.i165.i.i, align 4
  %idxprom.i.i169.i.i = sext i32 %173 to i64
  %arrayidx.i.i170.i.i = getelementptr inbounds i8, i8* %172, i64 %idxprom.i.i169.i.i
  %174 = load i8, i8* %arrayidx.i.i170.i.i, align 1
  %call.i.i171.i.i = call zeroext i8 %171(i8 zeroext %174) #3
  %conv.i.i172.i.i = zext i8 %call.i.i171.i.i to i32
  %175 = load i8, i8* %result.i.i164.i.i, align 1
  %conv1.i.i173.i.i = zext i8 %175 to i32
  %xor.i.i174.i.i = xor i32 %conv1.i.i173.i.i, %conv.i.i172.i.i
  %conv2.i.i175.i.i = trunc i32 %xor.i.i174.i.i to i8
  store i8 %conv2.i.i175.i.i, i8* %result.i.i164.i.i, align 1
  %176 = load i32, i32* %i.i.i165.i.i, align 4
  %inc.i.i176.i.i = add nsw i32 %176, 1
  store i32 %inc.i.i176.i.i, i32* %i.i.i165.i.i, align 4
  br label %for.cond.i.i168.i.i

sec_mult.exit.i:                                  ; preds = %for.cond.i.i168.i.i
  %177 = load i8, i8* %result.i.i164.i.i, align 1
  %conv142.i.i = zext i8 %177 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %arraydecay8.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %arraydecay9.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  store i8* %arraydecay8.i, i8** %from.addr.i74.i, align 8
  store i8* %arraydecay9.i, i8** %to.addr.i75.i, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i76.i, align 8
  store i32 0, i32* %i.i77.i, align 4
  br label %for.cond.i79.i

for.cond.i79.i:                                   ; preds = %for.body.i85.i, %sec_mult.exit.i
  %178 = load i32, i32* %i.i77.i, align 4
  %cmp.i78.i = icmp sle i32 %178, 2
  br i1 %cmp.i78.i, label %for.body.i85.i, label %transform.exit88.i

for.body.i85.i:                                   ; preds = %for.cond.i79.i
  %179 = load i8 (i8)*, i8 (i8)** %f.addr.i76.i, align 8
  %180 = load i8*, i8** %from.addr.i74.i, align 8
  %181 = load i32, i32* %i.i77.i, align 4
  %idxprom.i80.i = sext i32 %181 to i64
  %arrayidx.i81.i = getelementptr inbounds i8, i8* %180, i64 %idxprom.i80.i
  %182 = load i8, i8* %arrayidx.i81.i, align 1
  %call.i82.i = call zeroext i8 %179(i8 zeroext %182) #3
  %183 = load i8*, i8** %to.addr.i75.i, align 8
  %184 = load i32, i32* %i.i77.i, align 4
  %idxprom1.i83.i = sext i32 %184 to i64
  %arrayidx2.i84.i = getelementptr inbounds i8, i8* %183, i64 %idxprom1.i83.i
  store i8 %call.i82.i, i8* %arrayidx2.i84.i, align 1
  %185 = load i32, i32* %i.i77.i, align 4
  %inc.i86.i = add nsw i32 %185, 1
  store i32 %inc.i86.i, i32* %i.i77.i, align 4
  br label %for.cond.i79.i

transform.exit88.i:                               ; preds = %for.cond.i79.i
  %arraydecay10.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  store i8* %arraydecay10.i, i8** %x.addr.i103.i, align 8
  store i8* %arraydecay11.i, i8** %y.addr.i104.i, align 8
  %call.i108.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i108.i, i8* %X.i105.i, align 1
  %186 = load i8, i8* %X.i105.i, align 1
  %conv.i109.i = zext i8 %186 to i32
  %187 = load i8*, i8** %x.addr.i103.i, align 8
  store i8* %187, i8** %a.addr.i.i102.i, align 8
  %188 = load i8*, i8** %a.addr.i.i102.i, align 8
  store i8* %188, i8** %a.addr.i.i.i98.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i99.i, align 8
  store i8 0, i8* %result.i.i.i100.i, align 1
  store i32 0, i32* %i.i.i.i101.i, align 4
  br label %for.cond.i.i.i111.i

for.cond.i.i.i111.i:                              ; preds = %for.body.i.i.i120.i, %transform.exit88.i
  %189 = load i32, i32* %i.i.i.i101.i, align 4
  %cmp.i.i.i110.i = icmp sle i32 %189, 2
  br i1 %cmp.i.i.i110.i, label %for.body.i.i.i120.i, label %xors.exit.i123.i

for.body.i.i.i120.i:                              ; preds = %for.cond.i.i.i111.i
  %190 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i99.i, align 8
  %191 = load i8*, i8** %a.addr.i.i.i98.i, align 8
  %192 = load i32, i32* %i.i.i.i101.i, align 4
  %idxprom.i.i.i112.i = sext i32 %192 to i64
  %arrayidx.i.i.i113.i = getelementptr inbounds i8, i8* %191, i64 %idxprom.i.i.i112.i
  %193 = load i8, i8* %arrayidx.i.i.i113.i, align 1
  %call.i.i.i114.i = call zeroext i8 %190(i8 zeroext %193) #3
  %conv.i.i.i115.i = zext i8 %call.i.i.i114.i to i32
  %194 = load i8, i8* %result.i.i.i100.i, align 1
  %conv1.i.i.i116.i = zext i8 %194 to i32
  %xor.i.i.i117.i = xor i32 %conv1.i.i.i116.i, %conv.i.i.i115.i
  %conv2.i.i.i118.i = trunc i32 %xor.i.i.i117.i to i8
  store i8 %conv2.i.i.i118.i, i8* %result.i.i.i100.i, align 1
  %195 = load i32, i32* %i.i.i.i101.i, align 4
  %inc.i.i.i119.i = add nsw i32 %195, 1
  store i32 %inc.i.i.i119.i, i32* %i.i.i.i101.i, align 4
  br label %for.cond.i.i.i111.i

xors.exit.i123.i:                                 ; preds = %for.cond.i.i.i111.i
  %196 = load i8, i8* %result.i.i.i100.i, align 1
  %conv2.i121.i = zext i8 %196 to i32
  %cmp.i122.i = icmp eq i32 %conv.i109.i, %conv2.i121.i
  call void @assume(i1 zeroext %cmp.i122.i) #3
  %197 = load i8*, i8** %x.addr.i103.i, align 8
  %198 = load i8*, i8** %y.addr.i104.i, align 8
  store i8* %197, i8** %from.addr.i.i94.i, align 8
  store i8* %198, i8** %to.addr.i.i95.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i96.i, align 8
  store i32 0, i32* %i.i.i97.i, align 4
  br label %for.cond.i.i125.i

for.cond.i.i125.i:                                ; preds = %for.body.i.i132.i, %xors.exit.i123.i
  %199 = load i32, i32* %i.i.i97.i, align 4
  %cmp.i.i124.i = icmp sle i32 %199, 2
  br i1 %cmp.i.i124.i, label %for.body.i.i132.i, label %transform.exit.i133.i

for.body.i.i132.i:                                ; preds = %for.cond.i.i125.i
  %200 = load i8 (i8)*, i8 (i8)** %f.addr.i.i96.i, align 8
  %201 = load i8*, i8** %from.addr.i.i94.i, align 8
  %202 = load i32, i32* %i.i.i97.i, align 4
  %idxprom.i.i126.i = sext i32 %202 to i64
  %arrayidx.i.i127.i = getelementptr inbounds i8, i8* %201, i64 %idxprom.i.i126.i
  %203 = load i8, i8* %arrayidx.i.i127.i, align 1
  %call.i.i128.i = call zeroext i8 %200(i8 zeroext %203) #3
  %204 = load i8*, i8** %to.addr.i.i95.i, align 8
  %205 = load i32, i32* %i.i.i97.i, align 4
  %idxprom1.i.i129.i = sext i32 %205 to i64
  %arrayidx2.i.i130.i = getelementptr inbounds i8, i8* %204, i64 %idxprom1.i.i129.i
  store i8 %call.i.i128.i, i8* %arrayidx2.i.i130.i, align 1
  %206 = load i32, i32* %i.i.i97.i, align 4
  %inc.i.i131.i = add nsw i32 %206, 1
  store i32 %inc.i.i131.i, i32* %i.i.i97.i, align 4
  br label %for.cond.i.i125.i

transform.exit.i133.i:                            ; preds = %for.cond.i.i125.i
  store i8 1, i8* %i.i106.i, align 1
  br label %for.cond.i136.i

for.cond.i136.i:                                  ; preds = %for.body.i148.i, %transform.exit.i133.i
  %207 = load i8, i8* %i.i106.i, align 1
  %conv4.i134.i = zext i8 %207 to i32
  %cmp5.i135.i = icmp sle i32 %conv4.i134.i, 2
  br i1 %cmp5.i135.i, label %for.body.i148.i, label %for.end.i151.i

for.body.i148.i:                                  ; preds = %for.cond.i136.i
  %call7.i137.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i137.i, i8* %tmp.i107.i, align 1
  %208 = load i8, i8* %tmp.i107.i, align 1
  %conv8.i138.i = zext i8 %208 to i32
  %209 = load i8*, i8** %y.addr.i104.i, align 8
  %210 = load i8, i8* %209, align 1
  %conv9.i139.i = zext i8 %210 to i32
  %xor.i140.i = xor i32 %conv9.i139.i, %conv8.i138.i
  %conv10.i141.i = trunc i32 %xor.i140.i to i8
  store i8 %conv10.i141.i, i8* %209, align 1
  %211 = load i8, i8* %tmp.i107.i, align 1
  %conv11.i142.i = zext i8 %211 to i32
  %212 = load i8*, i8** %y.addr.i104.i, align 8
  %213 = load i8, i8* %i.i106.i, align 1
  %idxprom.i143.i = zext i8 %213 to i64
  %arrayidx12.i144.i = getelementptr inbounds i8, i8* %212, i64 %idxprom.i143.i
  %214 = load i8, i8* %arrayidx12.i144.i, align 1
  %conv13.i145.i = zext i8 %214 to i32
  %xor14.i146.i = xor i32 %conv13.i145.i, %conv11.i142.i
  %conv15.i147.i = trunc i32 %xor14.i146.i to i8
  store i8 %conv15.i147.i, i8* %arrayidx12.i144.i, align 1
  %215 = load i8, i8* %i.i106.i, align 1
  %inc.i149.i = add i8 %215, 1
  store i8 %inc.i149.i, i8* %i.i106.i, align 1
  br label %for.cond.i136.i

for.end.i151.i:                                   ; preds = %for.cond.i136.i
  %216 = load i8, i8* %X.i105.i, align 1
  %conv16.i150.i = zext i8 %216 to i32
  %217 = load i8*, i8** %y.addr.i104.i, align 8
  store i8* %217, i8** %a.addr.i25.i93.i, align 8
  %218 = load i8*, i8** %a.addr.i25.i93.i, align 8
  store i8* %218, i8** %a.addr.i.i21.i89.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i90.i, align 8
  store i8 0, i8* %result.i.i23.i91.i, align 1
  store i32 0, i32* %i.i.i24.i92.i, align 4
  br label %for.cond.i.i27.i153.i

for.cond.i.i27.i153.i:                            ; preds = %for.body.i.i36.i162.i, %for.end.i151.i
  %219 = load i32, i32* %i.i.i24.i92.i, align 4
  %cmp.i.i26.i152.i = icmp sle i32 %219, 2
  br i1 %cmp.i.i26.i152.i, label %for.body.i.i36.i162.i, label %refresh_masks.exit165.i

for.body.i.i36.i162.i:                            ; preds = %for.cond.i.i27.i153.i
  %220 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i90.i, align 8
  %221 = load i8*, i8** %a.addr.i.i21.i89.i, align 8
  %222 = load i32, i32* %i.i.i24.i92.i, align 4
  %idxprom.i.i28.i154.i = sext i32 %222 to i64
  %arrayidx.i.i29.i155.i = getelementptr inbounds i8, i8* %221, i64 %idxprom.i.i28.i154.i
  %223 = load i8, i8* %arrayidx.i.i29.i155.i, align 1
  %call.i.i30.i156.i = call zeroext i8 %220(i8 zeroext %223) #3
  %conv.i.i31.i157.i = zext i8 %call.i.i30.i156.i to i32
  %224 = load i8, i8* %result.i.i23.i91.i, align 1
  %conv1.i.i32.i158.i = zext i8 %224 to i32
  %xor.i.i33.i159.i = xor i32 %conv1.i.i32.i158.i, %conv.i.i31.i157.i
  %conv2.i.i34.i160.i = trunc i32 %xor.i.i33.i159.i to i8
  store i8 %conv2.i.i34.i160.i, i8* %result.i.i23.i91.i, align 1
  %225 = load i32, i32* %i.i.i24.i92.i, align 4
  %inc.i.i35.i161.i = add nsw i32 %225, 1
  store i32 %inc.i.i35.i161.i, i32* %i.i.i24.i92.i, align 4
  br label %for.cond.i.i27.i153.i

refresh_masks.exit165.i:                          ; preds = %for.cond.i.i27.i153.i
  %226 = load i8, i8* %result.i.i23.i91.i, align 1
  %conv18.i163.i = zext i8 %226 to i32
  %cmp19.i164.i = icmp eq i32 %conv16.i150.i, %conv18.i163.i
  call void @assert(i1 zeroext %cmp19.i164.i) #3
  %arraydecay12.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  store i8* %arraydecay12.i, i8** %a.addr.i181.i, align 8
  store i8* %arraydecay13.i, i8** %b.addr.i182.i, align 8
  store i8* %arraydecay14.i, i8** %c.addr.i183.i, align 8
  %call.i197.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i197.i, i8* %A.i184.i, align 1
  %call1.i198.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i198.i, i8* %B.i185.i, align 1
  %227 = load i8, i8* %A.i184.i, align 1
  %conv.i199.i = zext i8 %227 to i32
  %228 = load i8*, i8** %a.addr.i181.i, align 8
  store i8* %228, i8** %a.addr.i.i180.i, align 8
  %229 = load i8*, i8** %a.addr.i.i180.i, align 8
  store i8* %229, i8** %a.addr.i.i.i176.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i177.i, align 8
  store i8 0, i8* %result.i.i.i178.i, align 1
  store i32 0, i32* %i.i.i.i179.i, align 4
  br label %for.cond.i.i.i201.i

for.cond.i.i.i201.i:                              ; preds = %for.body.i.i.i210.i, %refresh_masks.exit165.i
  %230 = load i32, i32* %i.i.i.i179.i, align 4
  %cmp.i.i.i200.i = icmp sle i32 %230, 2
  br i1 %cmp.i.i.i200.i, label %for.body.i.i.i210.i, label %xors.exit.i214.i

for.body.i.i.i210.i:                              ; preds = %for.cond.i.i.i201.i
  %231 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i177.i, align 8
  %232 = load i8*, i8** %a.addr.i.i.i176.i, align 8
  %233 = load i32, i32* %i.i.i.i179.i, align 4
  %idxprom.i.i.i202.i = sext i32 %233 to i64
  %arrayidx.i.i.i203.i = getelementptr inbounds i8, i8* %232, i64 %idxprom.i.i.i202.i
  %234 = load i8, i8* %arrayidx.i.i.i203.i, align 1
  %call.i.i.i204.i = call zeroext i8 %231(i8 zeroext %234) #3
  %conv.i.i.i205.i = zext i8 %call.i.i.i204.i to i32
  %235 = load i8, i8* %result.i.i.i178.i, align 1
  %conv1.i.i.i206.i = zext i8 %235 to i32
  %xor.i.i.i207.i = xor i32 %conv1.i.i.i206.i, %conv.i.i.i205.i
  %conv2.i.i.i208.i = trunc i32 %xor.i.i.i207.i to i8
  store i8 %conv2.i.i.i208.i, i8* %result.i.i.i178.i, align 1
  %236 = load i32, i32* %i.i.i.i179.i, align 4
  %inc.i.i.i209.i = add nsw i32 %236, 1
  store i32 %inc.i.i.i209.i, i32* %i.i.i.i179.i, align 4
  br label %for.cond.i.i.i201.i

xors.exit.i214.i:                                 ; preds = %for.cond.i.i.i201.i
  %237 = load i8, i8* %result.i.i.i178.i, align 1
  %conv3.i211.i = zext i8 %237 to i32
  %cmp.i212.i = icmp eq i32 %conv.i199.i, %conv3.i211.i
  call void @assume(i1 zeroext %cmp.i212.i) #3
  %238 = load i8, i8* %B.i185.i, align 1
  %conv5.i213.i = zext i8 %238 to i32
  %239 = load i8*, i8** %b.addr.i182.i, align 8
  store i8* %239, i8** %a.addr.i149.i175.i, align 8
  %240 = load i8*, i8** %a.addr.i149.i175.i, align 8
  store i8* %240, i8** %a.addr.i.i145.i171.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i172.i, align 8
  store i8 0, i8* %result.i.i147.i173.i, align 1
  store i32 0, i32* %i.i.i148.i174.i, align 4
  br label %for.cond.i.i151.i216.i

for.cond.i.i151.i216.i:                           ; preds = %for.body.i.i160.i225.i, %xors.exit.i214.i
  %241 = load i32, i32* %i.i.i148.i174.i, align 4
  %cmp.i.i150.i215.i = icmp sle i32 %241, 2
  br i1 %cmp.i.i150.i215.i, label %for.body.i.i160.i225.i, label %xors.exit161.i228.i

for.body.i.i160.i225.i:                           ; preds = %for.cond.i.i151.i216.i
  %242 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i172.i, align 8
  %243 = load i8*, i8** %a.addr.i.i145.i171.i, align 8
  %244 = load i32, i32* %i.i.i148.i174.i, align 4
  %idxprom.i.i152.i217.i = sext i32 %244 to i64
  %arrayidx.i.i153.i218.i = getelementptr inbounds i8, i8* %243, i64 %idxprom.i.i152.i217.i
  %245 = load i8, i8* %arrayidx.i.i153.i218.i, align 1
  %call.i.i154.i219.i = call zeroext i8 %242(i8 zeroext %245) #3
  %conv.i.i155.i220.i = zext i8 %call.i.i154.i219.i to i32
  %246 = load i8, i8* %result.i.i147.i173.i, align 1
  %conv1.i.i156.i221.i = zext i8 %246 to i32
  %xor.i.i157.i222.i = xor i32 %conv1.i.i156.i221.i, %conv.i.i155.i220.i
  %conv2.i.i158.i223.i = trunc i32 %xor.i.i157.i222.i to i8
  store i8 %conv2.i.i158.i223.i, i8* %result.i.i147.i173.i, align 1
  %247 = load i32, i32* %i.i.i148.i174.i, align 4
  %inc.i.i159.i224.i = add nsw i32 %247, 1
  store i32 %inc.i.i159.i224.i, i32* %i.i.i148.i174.i, align 4
  br label %for.cond.i.i151.i216.i

xors.exit161.i228.i:                              ; preds = %for.cond.i.i151.i216.i
  %248 = load i8, i8* %result.i.i147.i173.i, align 1
  %conv7.i226.i = zext i8 %248 to i32
  %cmp8.i227.i = icmp eq i32 %conv5.i213.i, %conv7.i226.i
  call void @assume(i1 zeroext %cmp8.i227.i) #3
  store i32 0, i32* %i.i191.i, align 4
  br label %for.cond.i230.i

for.cond.i230.i:                                  ; preds = %for.end.i250.i, %xors.exit161.i228.i
  %249 = load i32, i32* %i.i191.i, align 4
  %cmp10.i229.i = icmp sle i32 %249, 2
  br i1 %cmp10.i229.i, label %for.body.i232.i, label %for.end29.i252.i

for.body.i232.i:                                  ; preds = %for.cond.i230.i
  %250 = load i32, i32* %i.i191.i, align 4
  %add.i231.i = add nsw i32 %250, 1
  store i32 %add.i231.i, i32* %j.i192.i, align 4
  br label %for.cond12.i234.i

for.cond12.i234.i:                                ; preds = %for.body15.i248.i, %for.body.i232.i
  %251 = load i32, i32* %j.i192.i, align 4
  %cmp13.i233.i = icmp sle i32 %251, 2
  br i1 %cmp13.i233.i, label %for.body15.i248.i, label %for.end.i250.i

for.body15.i248.i:                                ; preds = %for.cond12.i234.i
  %call16.i235.i = call zeroext i8 (...) @rand() #3
  %252 = load i32, i32* %i.i191.i, align 4
  %idxprom.i236.i = sext i32 %252 to i64
  %arrayidx.i237.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom.i236.i
  %253 = load i32, i32* %j.i192.i, align 4
  %idxprom17.i238.i = sext i32 %253 to i64
  %arrayidx18.i239.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i237.i, i64 0, i64 %idxprom17.i238.i
  store i8 %call16.i235.i, i8* %arrayidx18.i239.i, align 1
  %254 = load i32, i32* %i.i191.i, align 4
  %idxprom19.i240.i = sext i32 %254 to i64
  %arrayidx20.i241.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i240.i
  %255 = load i32, i32* %j.i192.i, align 4
  %idxprom21.i242.i = sext i32 %255 to i64
  %arrayidx22.i243.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i241.i, i64 0, i64 %idxprom21.i242.i
  %256 = load i8, i8* %arrayidx22.i243.i, align 1
  %257 = load i32, i32* %j.i192.i, align 4
  %idxprom23.i244.i = sext i32 %257 to i64
  %arrayidx24.i245.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i244.i
  %258 = load i32, i32* %i.i191.i, align 4
  %idxprom25.i246.i = sext i32 %258 to i64
  %arrayidx26.i247.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i245.i, i64 0, i64 %idxprom25.i246.i
  store i8 %256, i8* %arrayidx26.i247.i, align 1
  %259 = load i32, i32* %j.i192.i, align 4
  %inc.i249.i = add nsw i32 %259, 1
  store i32 %inc.i249.i, i32* %j.i192.i, align 4
  br label %for.cond12.i234.i

for.end.i250.i:                                   ; preds = %for.cond12.i234.i
  %260 = load i32, i32* %i.i191.i, align 4
  %inc28.i251.i = add nsw i32 %260, 1
  store i32 %inc28.i251.i, i32* %i.i191.i, align 4
  br label %for.cond.i230.i

for.end29.i252.i:                                 ; preds = %for.cond.i230.i
  store i32 0, i32* %i30.i193.i, align 4
  br label %for.cond31.i254.i

for.cond31.i254.i:                                ; preds = %for.end98.i318.i, %for.end29.i252.i
  %261 = load i32, i32* %i30.i193.i, align 4
  %cmp32.i253.i = icmp sle i32 %261, 2
  br i1 %cmp32.i253.i, label %for.body34.i255.i, label %for.end101.i320.i

for.body34.i255.i:                                ; preds = %for.cond31.i254.i
  store i32 0, i32* %j35.i194.i, align 4
  br label %for.cond36.i257.i

for.cond36.i257.i:                                ; preds = %if.end.i316.i, %for.body34.i255.i
  %262 = load i32, i32* %j35.i194.i, align 4
  %cmp37.i256.i = icmp sle i32 %262, 2
  br i1 %cmp37.i256.i, label %for.body39.i259.i, label %for.end98.i318.i

for.body39.i259.i:                                ; preds = %for.cond36.i257.i
  %263 = load i32, i32* %j35.i194.i, align 4
  %264 = load i32, i32* %i30.i193.i, align 4
  %cmp40.i258.i = icmp ne i32 %263, %264
  br i1 %cmp40.i258.i, label %if.then.i315.i, label %if.end.i316.i

if.then.i315.i:                                   ; preds = %for.body39.i259.i
  %265 = load i8*, i8** %b.addr.i182.i, align 8
  %266 = load i32, i32* %j35.i194.i, align 4
  %idxprom42.i260.i = sext i32 %266 to i64
  %arrayidx43.i261.i = getelementptr inbounds i8, i8* %265, i64 %idxprom42.i260.i
  %267 = load i8, i8* %arrayidx43.i261.i, align 1
  %conv44.i262.i = zext i8 %267 to i32
  %268 = load i32, i32* %i30.i193.i, align 4
  %idxprom45.i263.i = sext i32 %268 to i64
  %arrayidx46.i264.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i263.i
  %269 = load i32, i32* %j35.i194.i, align 4
  %idxprom47.i265.i = sext i32 %269 to i64
  %arrayidx48.i266.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i264.i, i64 0, i64 %idxprom47.i265.i
  %270 = load i8, i8* %arrayidx48.i266.i, align 1
  %conv49.i267.i = zext i8 %270 to i32
  %xor.i268.i = xor i32 %conv44.i262.i, %conv49.i267.i
  %conv50.i269.i = trunc i32 %xor.i268.i to i8
  %271 = load i32, i32* %i30.i193.i, align 4
  %idxprom51.i270.i = sext i32 %271 to i64
  %arrayidx52.i271.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i270.i
  %272 = load i32, i32* %j35.i194.i, align 4
  %idxprom53.i272.i = sext i32 %272 to i64
  %arrayidx54.i273.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i271.i, i64 0, i64 %idxprom53.i272.i
  store i8 %conv50.i269.i, i8* %arrayidx54.i273.i, align 1
  %273 = load i8*, i8** %a.addr.i181.i, align 8
  %274 = load i32, i32* %i30.i193.i, align 4
  %idxprom55.i274.i = sext i32 %274 to i64
  %arrayidx56.i275.i = getelementptr inbounds i8, i8* %273, i64 %idxprom55.i274.i
  %275 = load i8, i8* %arrayidx56.i275.i, align 1
  %conv57.i276.i = zext i8 %275 to i32
  %xor58.i277.i = xor i32 %conv57.i276.i, 1
  %conv59.i278.i = trunc i32 %xor58.i277.i to i8
  %276 = load i32, i32* %i30.i193.i, align 4
  %idxprom60.i279.i = sext i32 %276 to i64
  %arrayidx61.i280.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i279.i
  %277 = load i32, i32* %j35.i194.i, align 4
  %idxprom62.i281.i = sext i32 %277 to i64
  %arrayidx63.i282.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i280.i, i64 0, i64 %idxprom62.i281.i
  %278 = load i8, i8* %arrayidx63.i282.i, align 1
  %call64.i283.i = call zeroext i8 @mult(i8 zeroext %conv59.i278.i, i8 zeroext %278) #3
  %279 = load i32, i32* %i30.i193.i, align 4
  %idxprom65.i284.i = sext i32 %279 to i64
  %arrayidx66.i285.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i284.i
  %280 = load i32, i32* %j35.i194.i, align 4
  %idxprom67.i286.i = sext i32 %280 to i64
  %arrayidx68.i287.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i285.i, i64 0, i64 %idxprom67.i286.i
  store i8 %call64.i283.i, i8* %arrayidx68.i287.i, align 1
  %281 = load i8*, i8** %a.addr.i181.i, align 8
  %282 = load i32, i32* %i30.i193.i, align 4
  %idxprom69.i288.i = sext i32 %282 to i64
  %arrayidx70.i289.i = getelementptr inbounds i8, i8* %281, i64 %idxprom69.i288.i
  %283 = load i8, i8* %arrayidx70.i289.i, align 1
  %284 = load i32, i32* %i30.i193.i, align 4
  %idxprom71.i290.i = sext i32 %284 to i64
  %arrayidx72.i291.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i290.i
  %285 = load i32, i32* %j35.i194.i, align 4
  %idxprom73.i292.i = sext i32 %285 to i64
  %arrayidx74.i293.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i291.i, i64 0, i64 %idxprom73.i292.i
  %286 = load i8, i8* %arrayidx74.i293.i, align 1
  %call75.i294.i = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %286) #3
  %287 = load i32, i32* %i30.i193.i, align 4
  %idxprom76.i295.i = sext i32 %287 to i64
  %arrayidx77.i296.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i295.i
  %288 = load i32, i32* %j35.i194.i, align 4
  %idxprom78.i297.i = sext i32 %288 to i64
  %arrayidx79.i298.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i296.i, i64 0, i64 %idxprom78.i297.i
  store i8 %call75.i294.i, i8* %arrayidx79.i298.i, align 1
  %289 = load i32, i32* %i30.i193.i, align 4
  %idxprom80.i299.i = sext i32 %289 to i64
  %arrayidx81.i300.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i299.i
  %290 = load i32, i32* %j35.i194.i, align 4
  %idxprom82.i301.i = sext i32 %290 to i64
  %arrayidx83.i302.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i300.i, i64 0, i64 %idxprom82.i301.i
  %291 = load i8, i8* %arrayidx83.i302.i, align 1
  %conv84.i303.i = zext i8 %291 to i32
  %292 = load i32, i32* %i30.i193.i, align 4
  %idxprom85.i304.i = sext i32 %292 to i64
  %arrayidx86.i305.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i304.i
  %293 = load i32, i32* %j35.i194.i, align 4
  %idxprom87.i306.i = sext i32 %293 to i64
  %arrayidx88.i307.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i305.i, i64 0, i64 %idxprom87.i306.i
  %294 = load i8, i8* %arrayidx88.i307.i, align 1
  %conv89.i308.i = zext i8 %294 to i32
  %xor90.i309.i = xor i32 %conv84.i303.i, %conv89.i308.i
  %conv91.i310.i = trunc i32 %xor90.i309.i to i8
  %295 = load i32, i32* %i30.i193.i, align 4
  %idxprom92.i311.i = sext i32 %295 to i64
  %arrayidx93.i312.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i311.i
  %296 = load i32, i32* %j35.i194.i, align 4
  %idxprom94.i313.i = sext i32 %296 to i64
  %arrayidx95.i314.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i312.i, i64 0, i64 %idxprom94.i313.i
  store i8 %conv91.i310.i, i8* %arrayidx95.i314.i, align 1
  br label %if.end.i316.i

if.end.i316.i:                                    ; preds = %if.then.i315.i, %for.body39.i259.i
  %297 = load i32, i32* %j35.i194.i, align 4
  %inc97.i317.i = add nsw i32 %297, 1
  store i32 %inc97.i317.i, i32* %j35.i194.i, align 4
  br label %for.cond36.i257.i

for.end98.i318.i:                                 ; preds = %for.cond36.i257.i
  %298 = load i32, i32* %i30.i193.i, align 4
  %inc100.i319.i = add nsw i32 %298, 1
  store i32 %inc100.i319.i, i32* %i30.i193.i, align 4
  br label %for.cond31.i254.i

for.end101.i320.i:                                ; preds = %for.cond31.i254.i
  store i32 0, i32* %i102.i195.i, align 4
  br label %for.cond103.i322.i

for.cond103.i322.i:                               ; preds = %for.end135.i348.i, %for.end101.i320.i
  %299 = load i32, i32* %i102.i195.i, align 4
  %cmp104.i321.i = icmp sle i32 %299, 2
  br i1 %cmp104.i321.i, label %for.body106.i330.i, label %for.end138.i352.i

for.body106.i330.i:                               ; preds = %for.cond103.i322.i
  %300 = load i8*, i8** %a.addr.i181.i, align 8
  %301 = load i32, i32* %i102.i195.i, align 4
  %idxprom107.i323.i = sext i32 %301 to i64
  %arrayidx108.i324.i = getelementptr inbounds i8, i8* %300, i64 %idxprom107.i323.i
  %302 = load i8, i8* %arrayidx108.i324.i, align 1
  %303 = load i8*, i8** %b.addr.i182.i, align 8
  %304 = load i32, i32* %i102.i195.i, align 4
  %idxprom109.i325.i = sext i32 %304 to i64
  %arrayidx110.i326.i = getelementptr inbounds i8, i8* %303, i64 %idxprom109.i325.i
  %305 = load i8, i8* %arrayidx110.i326.i, align 1
  %call111.i327.i = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %305) #3
  %306 = load i8*, i8** %c.addr.i183.i, align 8
  %307 = load i32, i32* %i102.i195.i, align 4
  %idxprom112.i328.i = sext i32 %307 to i64
  %arrayidx113.i329.i = getelementptr inbounds i8, i8* %306, i64 %idxprom112.i328.i
  store i8 %call111.i327.i, i8* %arrayidx113.i329.i, align 1
  store i32 0, i32* %j114.i196.i, align 4
  br label %for.cond115.i332.i

for.cond115.i332.i:                               ; preds = %if.end132.i346.i, %for.body106.i330.i
  %308 = load i32, i32* %j114.i196.i, align 4
  %cmp116.i331.i = icmp sle i32 %308, 2
  br i1 %cmp116.i331.i, label %for.body118.i334.i, label %for.end135.i348.i

for.body118.i334.i:                               ; preds = %for.cond115.i332.i
  %309 = load i32, i32* %j114.i196.i, align 4
  %310 = load i32, i32* %i102.i195.i, align 4
  %cmp119.i333.i = icmp ne i32 %309, %310
  br i1 %cmp119.i333.i, label %if.then121.i345.i, label %if.end132.i346.i

if.then121.i345.i:                                ; preds = %for.body118.i334.i
  %311 = load i32, i32* %i102.i195.i, align 4
  %idxprom122.i335.i = sext i32 %311 to i64
  %arrayidx123.i336.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i335.i
  %312 = load i32, i32* %j114.i196.i, align 4
  %idxprom124.i337.i = sext i32 %312 to i64
  %arrayidx125.i338.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i336.i, i64 0, i64 %idxprom124.i337.i
  %313 = load i8, i8* %arrayidx125.i338.i, align 1
  %conv126.i339.i = zext i8 %313 to i32
  %314 = load i8*, i8** %c.addr.i183.i, align 8
  %315 = load i32, i32* %i102.i195.i, align 4
  %idxprom127.i340.i = sext i32 %315 to i64
  %arrayidx128.i341.i = getelementptr inbounds i8, i8* %314, i64 %idxprom127.i340.i
  %316 = load i8, i8* %arrayidx128.i341.i, align 1
  %conv129.i342.i = zext i8 %316 to i32
  %xor130.i343.i = xor i32 %conv129.i342.i, %conv126.i339.i
  %conv131.i344.i = trunc i32 %xor130.i343.i to i8
  store i8 %conv131.i344.i, i8* %arrayidx128.i341.i, align 1
  br label %if.end132.i346.i

if.end132.i346.i:                                 ; preds = %if.then121.i345.i, %for.body118.i334.i
  %317 = load i32, i32* %j114.i196.i, align 4
  %inc134.i347.i = add nsw i32 %317, 1
  store i32 %inc134.i347.i, i32* %j114.i196.i, align 4
  br label %for.cond115.i332.i

for.end135.i348.i:                                ; preds = %for.cond115.i332.i
  %318 = load i32, i32* %i102.i195.i, align 4
  %inc137.i349.i = add nsw i32 %318, 1
  store i32 %inc137.i349.i, i32* %i102.i195.i, align 4
  br label %for.cond103.i322.i

for.end138.i352.i:                                ; preds = %for.cond103.i322.i
  %319 = load i8, i8* %A.i184.i, align 1
  %320 = load i8, i8* %B.i185.i, align 1
  %call139.i350.i = call zeroext i8 @mult(i8 zeroext %319, i8 zeroext %320) #3
  %conv140.i351.i = zext i8 %call139.i350.i to i32
  %321 = load i8*, i8** %c.addr.i183.i, align 8
  store i8* %321, i8** %a.addr.i166.i170.i, align 8
  %322 = load i8*, i8** %a.addr.i166.i170.i, align 8
  store i8* %322, i8** %a.addr.i.i162.i166.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i167.i, align 8
  store i8 0, i8* %result.i.i164.i168.i, align 1
  store i32 0, i32* %i.i.i165.i169.i, align 4
  br label %for.cond.i.i168.i354.i

for.cond.i.i168.i354.i:                           ; preds = %for.body.i.i177.i363.i, %for.end138.i352.i
  %323 = load i32, i32* %i.i.i165.i169.i, align 4
  %cmp.i.i167.i353.i = icmp sle i32 %323, 2
  br i1 %cmp.i.i167.i353.i, label %for.body.i.i177.i363.i, label %sec_mult.exit366.i

for.body.i.i177.i363.i:                           ; preds = %for.cond.i.i168.i354.i
  %324 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i167.i, align 8
  %325 = load i8*, i8** %a.addr.i.i162.i166.i, align 8
  %326 = load i32, i32* %i.i.i165.i169.i, align 4
  %idxprom.i.i169.i355.i = sext i32 %326 to i64
  %arrayidx.i.i170.i356.i = getelementptr inbounds i8, i8* %325, i64 %idxprom.i.i169.i355.i
  %327 = load i8, i8* %arrayidx.i.i170.i356.i, align 1
  %call.i.i171.i357.i = call zeroext i8 %324(i8 zeroext %327) #3
  %conv.i.i172.i358.i = zext i8 %call.i.i171.i357.i to i32
  %328 = load i8, i8* %result.i.i164.i168.i, align 1
  %conv1.i.i173.i359.i = zext i8 %328 to i32
  %xor.i.i174.i360.i = xor i32 %conv1.i.i173.i359.i, %conv.i.i172.i358.i
  %conv2.i.i175.i361.i = trunc i32 %xor.i.i174.i360.i to i8
  store i8 %conv2.i.i175.i361.i, i8* %result.i.i164.i168.i, align 1
  %329 = load i32, i32* %i.i.i165.i169.i, align 4
  %inc.i.i176.i362.i = add nsw i32 %329, 1
  store i32 %inc.i.i176.i362.i, i32* %i.i.i165.i169.i, align 4
  br label %for.cond.i.i168.i354.i

sec_mult.exit366.i:                               ; preds = %for.cond.i.i168.i354.i
  %330 = load i8, i8* %result.i.i164.i168.i, align 1
  %conv142.i364.i = zext i8 %330 to i32
  %cmp143.i365.i = icmp eq i32 %conv140.i351.i, %conv142.i364.i
  call void @assert(i1 zeroext %cmp143.i365.i) #3
  %arraydecay15.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [3 x i8], [3 x i8]* %v16.i, i64 0, i64 0
  store i8* %arraydecay15.i, i8** %from.addr.i367.i, align 8
  store i8* %arraydecay16.i, i8** %to.addr.i368.i, align 8
  store i8 (i8)* @exp16, i8 (i8)** %f.addr.i369.i, align 8
  store i32 0, i32* %i.i370.i, align 4
  br label %for.cond.i372.i

for.cond.i372.i:                                  ; preds = %for.body.i378.i, %sec_mult.exit366.i
  %331 = load i32, i32* %i.i370.i, align 4
  %cmp.i371.i = icmp sle i32 %331, 2
  br i1 %cmp.i371.i, label %for.body.i378.i, label %transform.exit381.i

for.body.i378.i:                                  ; preds = %for.cond.i372.i
  %332 = load i8 (i8)*, i8 (i8)** %f.addr.i369.i, align 8
  %333 = load i8*, i8** %from.addr.i367.i, align 8
  %334 = load i32, i32* %i.i370.i, align 4
  %idxprom.i373.i = sext i32 %334 to i64
  %arrayidx.i374.i = getelementptr inbounds i8, i8* %333, i64 %idxprom.i373.i
  %335 = load i8, i8* %arrayidx.i374.i, align 1
  %call.i375.i = call zeroext i8 %332(i8 zeroext %335) #3
  %336 = load i8*, i8** %to.addr.i368.i, align 8
  %337 = load i32, i32* %i.i370.i, align 4
  %idxprom1.i376.i = sext i32 %337 to i64
  %arrayidx2.i377.i = getelementptr inbounds i8, i8* %336, i64 %idxprom1.i376.i
  store i8 %call.i375.i, i8* %arrayidx2.i377.i, align 1
  %338 = load i32, i32* %i.i370.i, align 4
  %inc.i379.i = add nsw i32 %338, 1
  store i32 %inc.i379.i, i32* %i.i370.i, align 4
  br label %for.cond.i372.i

transform.exit381.i:                              ; preds = %for.cond.i372.i
  %arraydecay17.i = getelementptr inbounds [3 x i8], [3 x i8]* %v16.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [3 x i8], [3 x i8]* %wr.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  store i8* %arraydecay17.i, i8** %a.addr.i397.i, align 8
  store i8* %arraydecay18.i, i8** %b.addr.i398.i, align 8
  store i8* %arraydecay19.i, i8** %c.addr.i399.i, align 8
  %call.i413.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i413.i, i8* %A.i400.i, align 1
  %call1.i414.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i414.i, i8* %B.i401.i, align 1
  %339 = load i8, i8* %A.i400.i, align 1
  %conv.i415.i = zext i8 %339 to i32
  %340 = load i8*, i8** %a.addr.i397.i, align 8
  store i8* %340, i8** %a.addr.i.i396.i, align 8
  %341 = load i8*, i8** %a.addr.i.i396.i, align 8
  store i8* %341, i8** %a.addr.i.i.i392.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i393.i, align 8
  store i8 0, i8* %result.i.i.i394.i, align 1
  store i32 0, i32* %i.i.i.i395.i, align 4
  br label %for.cond.i.i.i417.i

for.cond.i.i.i417.i:                              ; preds = %for.body.i.i.i426.i, %transform.exit381.i
  %342 = load i32, i32* %i.i.i.i395.i, align 4
  %cmp.i.i.i416.i = icmp sle i32 %342, 2
  br i1 %cmp.i.i.i416.i, label %for.body.i.i.i426.i, label %xors.exit.i430.i

for.body.i.i.i426.i:                              ; preds = %for.cond.i.i.i417.i
  %343 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i393.i, align 8
  %344 = load i8*, i8** %a.addr.i.i.i392.i, align 8
  %345 = load i32, i32* %i.i.i.i395.i, align 4
  %idxprom.i.i.i418.i = sext i32 %345 to i64
  %arrayidx.i.i.i419.i = getelementptr inbounds i8, i8* %344, i64 %idxprom.i.i.i418.i
  %346 = load i8, i8* %arrayidx.i.i.i419.i, align 1
  %call.i.i.i420.i = call zeroext i8 %343(i8 zeroext %346) #3
  %conv.i.i.i421.i = zext i8 %call.i.i.i420.i to i32
  %347 = load i8, i8* %result.i.i.i394.i, align 1
  %conv1.i.i.i422.i = zext i8 %347 to i32
  %xor.i.i.i423.i = xor i32 %conv1.i.i.i422.i, %conv.i.i.i421.i
  %conv2.i.i.i424.i = trunc i32 %xor.i.i.i423.i to i8
  store i8 %conv2.i.i.i424.i, i8* %result.i.i.i394.i, align 1
  %348 = load i32, i32* %i.i.i.i395.i, align 4
  %inc.i.i.i425.i = add nsw i32 %348, 1
  store i32 %inc.i.i.i425.i, i32* %i.i.i.i395.i, align 4
  br label %for.cond.i.i.i417.i

xors.exit.i430.i:                                 ; preds = %for.cond.i.i.i417.i
  %349 = load i8, i8* %result.i.i.i394.i, align 1
  %conv3.i427.i = zext i8 %349 to i32
  %cmp.i428.i = icmp eq i32 %conv.i415.i, %conv3.i427.i
  call void @assume(i1 zeroext %cmp.i428.i) #3
  %350 = load i8, i8* %B.i401.i, align 1
  %conv5.i429.i = zext i8 %350 to i32
  %351 = load i8*, i8** %b.addr.i398.i, align 8
  store i8* %351, i8** %a.addr.i149.i391.i, align 8
  %352 = load i8*, i8** %a.addr.i149.i391.i, align 8
  store i8* %352, i8** %a.addr.i.i145.i387.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i388.i, align 8
  store i8 0, i8* %result.i.i147.i389.i, align 1
  store i32 0, i32* %i.i.i148.i390.i, align 4
  br label %for.cond.i.i151.i432.i

for.cond.i.i151.i432.i:                           ; preds = %for.body.i.i160.i441.i, %xors.exit.i430.i
  %353 = load i32, i32* %i.i.i148.i390.i, align 4
  %cmp.i.i150.i431.i = icmp sle i32 %353, 2
  br i1 %cmp.i.i150.i431.i, label %for.body.i.i160.i441.i, label %xors.exit161.i444.i

for.body.i.i160.i441.i:                           ; preds = %for.cond.i.i151.i432.i
  %354 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i388.i, align 8
  %355 = load i8*, i8** %a.addr.i.i145.i387.i, align 8
  %356 = load i32, i32* %i.i.i148.i390.i, align 4
  %idxprom.i.i152.i433.i = sext i32 %356 to i64
  %arrayidx.i.i153.i434.i = getelementptr inbounds i8, i8* %355, i64 %idxprom.i.i152.i433.i
  %357 = load i8, i8* %arrayidx.i.i153.i434.i, align 1
  %call.i.i154.i435.i = call zeroext i8 %354(i8 zeroext %357) #3
  %conv.i.i155.i436.i = zext i8 %call.i.i154.i435.i to i32
  %358 = load i8, i8* %result.i.i147.i389.i, align 1
  %conv1.i.i156.i437.i = zext i8 %358 to i32
  %xor.i.i157.i438.i = xor i32 %conv1.i.i156.i437.i, %conv.i.i155.i436.i
  %conv2.i.i158.i439.i = trunc i32 %xor.i.i157.i438.i to i8
  store i8 %conv2.i.i158.i439.i, i8* %result.i.i147.i389.i, align 1
  %359 = load i32, i32* %i.i.i148.i390.i, align 4
  %inc.i.i159.i440.i = add nsw i32 %359, 1
  store i32 %inc.i.i159.i440.i, i32* %i.i.i148.i390.i, align 4
  br label %for.cond.i.i151.i432.i

xors.exit161.i444.i:                              ; preds = %for.cond.i.i151.i432.i
  %360 = load i8, i8* %result.i.i147.i389.i, align 1
  %conv7.i442.i = zext i8 %360 to i32
  %cmp8.i443.i = icmp eq i32 %conv5.i429.i, %conv7.i442.i
  call void @assume(i1 zeroext %cmp8.i443.i) #3
  store i32 0, i32* %i.i407.i, align 4
  br label %for.cond.i446.i

for.cond.i446.i:                                  ; preds = %for.end.i466.i, %xors.exit161.i444.i
  %361 = load i32, i32* %i.i407.i, align 4
  %cmp10.i445.i = icmp sle i32 %361, 2
  br i1 %cmp10.i445.i, label %for.body.i448.i, label %for.end29.i468.i

for.body.i448.i:                                  ; preds = %for.cond.i446.i
  %362 = load i32, i32* %i.i407.i, align 4
  %add.i447.i = add nsw i32 %362, 1
  store i32 %add.i447.i, i32* %j.i408.i, align 4
  br label %for.cond12.i450.i

for.cond12.i450.i:                                ; preds = %for.body15.i464.i, %for.body.i448.i
  %363 = load i32, i32* %j.i408.i, align 4
  %cmp13.i449.i = icmp sle i32 %363, 2
  br i1 %cmp13.i449.i, label %for.body15.i464.i, label %for.end.i466.i

for.body15.i464.i:                                ; preds = %for.cond12.i450.i
  %call16.i451.i = call zeroext i8 (...) @rand() #3
  %364 = load i32, i32* %i.i407.i, align 4
  %idxprom.i452.i = sext i32 %364 to i64
  %arrayidx.i453.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom.i452.i
  %365 = load i32, i32* %j.i408.i, align 4
  %idxprom17.i454.i = sext i32 %365 to i64
  %arrayidx18.i455.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i453.i, i64 0, i64 %idxprom17.i454.i
  store i8 %call16.i451.i, i8* %arrayidx18.i455.i, align 1
  %366 = load i32, i32* %i.i407.i, align 4
  %idxprom19.i456.i = sext i32 %366 to i64
  %arrayidx20.i457.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i456.i
  %367 = load i32, i32* %j.i408.i, align 4
  %idxprom21.i458.i = sext i32 %367 to i64
  %arrayidx22.i459.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i457.i, i64 0, i64 %idxprom21.i458.i
  %368 = load i8, i8* %arrayidx22.i459.i, align 1
  %369 = load i32, i32* %j.i408.i, align 4
  %idxprom23.i460.i = sext i32 %369 to i64
  %arrayidx24.i461.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i460.i
  %370 = load i32, i32* %i.i407.i, align 4
  %idxprom25.i462.i = sext i32 %370 to i64
  %arrayidx26.i463.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i461.i, i64 0, i64 %idxprom25.i462.i
  store i8 %368, i8* %arrayidx26.i463.i, align 1
  %371 = load i32, i32* %j.i408.i, align 4
  %inc.i465.i = add nsw i32 %371, 1
  store i32 %inc.i465.i, i32* %j.i408.i, align 4
  br label %for.cond12.i450.i

for.end.i466.i:                                   ; preds = %for.cond12.i450.i
  %372 = load i32, i32* %i.i407.i, align 4
  %inc28.i467.i = add nsw i32 %372, 1
  store i32 %inc28.i467.i, i32* %i.i407.i, align 4
  br label %for.cond.i446.i

for.end29.i468.i:                                 ; preds = %for.cond.i446.i
  store i32 0, i32* %i30.i409.i, align 4
  br label %for.cond31.i470.i

for.cond31.i470.i:                                ; preds = %for.end98.i534.i, %for.end29.i468.i
  %373 = load i32, i32* %i30.i409.i, align 4
  %cmp32.i469.i = icmp sle i32 %373, 2
  br i1 %cmp32.i469.i, label %for.body34.i471.i, label %for.end101.i536.i

for.body34.i471.i:                                ; preds = %for.cond31.i470.i
  store i32 0, i32* %j35.i410.i, align 4
  br label %for.cond36.i473.i

for.cond36.i473.i:                                ; preds = %if.end.i532.i, %for.body34.i471.i
  %374 = load i32, i32* %j35.i410.i, align 4
  %cmp37.i472.i = icmp sle i32 %374, 2
  br i1 %cmp37.i472.i, label %for.body39.i475.i, label %for.end98.i534.i

for.body39.i475.i:                                ; preds = %for.cond36.i473.i
  %375 = load i32, i32* %j35.i410.i, align 4
  %376 = load i32, i32* %i30.i409.i, align 4
  %cmp40.i474.i = icmp ne i32 %375, %376
  br i1 %cmp40.i474.i, label %if.then.i531.i, label %if.end.i532.i

if.then.i531.i:                                   ; preds = %for.body39.i475.i
  %377 = load i8*, i8** %b.addr.i398.i, align 8
  %378 = load i32, i32* %j35.i410.i, align 4
  %idxprom42.i476.i = sext i32 %378 to i64
  %arrayidx43.i477.i = getelementptr inbounds i8, i8* %377, i64 %idxprom42.i476.i
  %379 = load i8, i8* %arrayidx43.i477.i, align 1
  %conv44.i478.i = zext i8 %379 to i32
  %380 = load i32, i32* %i30.i409.i, align 4
  %idxprom45.i479.i = sext i32 %380 to i64
  %arrayidx46.i480.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i479.i
  %381 = load i32, i32* %j35.i410.i, align 4
  %idxprom47.i481.i = sext i32 %381 to i64
  %arrayidx48.i482.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i480.i, i64 0, i64 %idxprom47.i481.i
  %382 = load i8, i8* %arrayidx48.i482.i, align 1
  %conv49.i483.i = zext i8 %382 to i32
  %xor.i484.i = xor i32 %conv44.i478.i, %conv49.i483.i
  %conv50.i485.i = trunc i32 %xor.i484.i to i8
  %383 = load i32, i32* %i30.i409.i, align 4
  %idxprom51.i486.i = sext i32 %383 to i64
  %arrayidx52.i487.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i486.i
  %384 = load i32, i32* %j35.i410.i, align 4
  %idxprom53.i488.i = sext i32 %384 to i64
  %arrayidx54.i489.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i487.i, i64 0, i64 %idxprom53.i488.i
  store i8 %conv50.i485.i, i8* %arrayidx54.i489.i, align 1
  %385 = load i8*, i8** %a.addr.i397.i, align 8
  %386 = load i32, i32* %i30.i409.i, align 4
  %idxprom55.i490.i = sext i32 %386 to i64
  %arrayidx56.i491.i = getelementptr inbounds i8, i8* %385, i64 %idxprom55.i490.i
  %387 = load i8, i8* %arrayidx56.i491.i, align 1
  %conv57.i492.i = zext i8 %387 to i32
  %xor58.i493.i = xor i32 %conv57.i492.i, 1
  %conv59.i494.i = trunc i32 %xor58.i493.i to i8
  %388 = load i32, i32* %i30.i409.i, align 4
  %idxprom60.i495.i = sext i32 %388 to i64
  %arrayidx61.i496.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i495.i
  %389 = load i32, i32* %j35.i410.i, align 4
  %idxprom62.i497.i = sext i32 %389 to i64
  %arrayidx63.i498.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i496.i, i64 0, i64 %idxprom62.i497.i
  %390 = load i8, i8* %arrayidx63.i498.i, align 1
  %call64.i499.i = call zeroext i8 @mult(i8 zeroext %conv59.i494.i, i8 zeroext %390) #3
  %391 = load i32, i32* %i30.i409.i, align 4
  %idxprom65.i500.i = sext i32 %391 to i64
  %arrayidx66.i501.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i500.i
  %392 = load i32, i32* %j35.i410.i, align 4
  %idxprom67.i502.i = sext i32 %392 to i64
  %arrayidx68.i503.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i501.i, i64 0, i64 %idxprom67.i502.i
  store i8 %call64.i499.i, i8* %arrayidx68.i503.i, align 1
  %393 = load i8*, i8** %a.addr.i397.i, align 8
  %394 = load i32, i32* %i30.i409.i, align 4
  %idxprom69.i504.i = sext i32 %394 to i64
  %arrayidx70.i505.i = getelementptr inbounds i8, i8* %393, i64 %idxprom69.i504.i
  %395 = load i8, i8* %arrayidx70.i505.i, align 1
  %396 = load i32, i32* %i30.i409.i, align 4
  %idxprom71.i506.i = sext i32 %396 to i64
  %arrayidx72.i507.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i506.i
  %397 = load i32, i32* %j35.i410.i, align 4
  %idxprom73.i508.i = sext i32 %397 to i64
  %arrayidx74.i509.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i507.i, i64 0, i64 %idxprom73.i508.i
  %398 = load i8, i8* %arrayidx74.i509.i, align 1
  %call75.i510.i = call zeroext i8 @mult(i8 zeroext %395, i8 zeroext %398) #3
  %399 = load i32, i32* %i30.i409.i, align 4
  %idxprom76.i511.i = sext i32 %399 to i64
  %arrayidx77.i512.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i511.i
  %400 = load i32, i32* %j35.i410.i, align 4
  %idxprom78.i513.i = sext i32 %400 to i64
  %arrayidx79.i514.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i512.i, i64 0, i64 %idxprom78.i513.i
  store i8 %call75.i510.i, i8* %arrayidx79.i514.i, align 1
  %401 = load i32, i32* %i30.i409.i, align 4
  %idxprom80.i515.i = sext i32 %401 to i64
  %arrayidx81.i516.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i515.i
  %402 = load i32, i32* %j35.i410.i, align 4
  %idxprom82.i517.i = sext i32 %402 to i64
  %arrayidx83.i518.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i516.i, i64 0, i64 %idxprom82.i517.i
  %403 = load i8, i8* %arrayidx83.i518.i, align 1
  %conv84.i519.i = zext i8 %403 to i32
  %404 = load i32, i32* %i30.i409.i, align 4
  %idxprom85.i520.i = sext i32 %404 to i64
  %arrayidx86.i521.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i520.i
  %405 = load i32, i32* %j35.i410.i, align 4
  %idxprom87.i522.i = sext i32 %405 to i64
  %arrayidx88.i523.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i521.i, i64 0, i64 %idxprom87.i522.i
  %406 = load i8, i8* %arrayidx88.i523.i, align 1
  %conv89.i524.i = zext i8 %406 to i32
  %xor90.i525.i = xor i32 %conv84.i519.i, %conv89.i524.i
  %conv91.i526.i = trunc i32 %xor90.i525.i to i8
  %407 = load i32, i32* %i30.i409.i, align 4
  %idxprom92.i527.i = sext i32 %407 to i64
  %arrayidx93.i528.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i527.i
  %408 = load i32, i32* %j35.i410.i, align 4
  %idxprom94.i529.i = sext i32 %408 to i64
  %arrayidx95.i530.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i528.i, i64 0, i64 %idxprom94.i529.i
  store i8 %conv91.i526.i, i8* %arrayidx95.i530.i, align 1
  br label %if.end.i532.i

if.end.i532.i:                                    ; preds = %if.then.i531.i, %for.body39.i475.i
  %409 = load i32, i32* %j35.i410.i, align 4
  %inc97.i533.i = add nsw i32 %409, 1
  store i32 %inc97.i533.i, i32* %j35.i410.i, align 4
  br label %for.cond36.i473.i

for.end98.i534.i:                                 ; preds = %for.cond36.i473.i
  %410 = load i32, i32* %i30.i409.i, align 4
  %inc100.i535.i = add nsw i32 %410, 1
  store i32 %inc100.i535.i, i32* %i30.i409.i, align 4
  br label %for.cond31.i470.i

for.end101.i536.i:                                ; preds = %for.cond31.i470.i
  store i32 0, i32* %i102.i411.i, align 4
  br label %for.cond103.i538.i

for.cond103.i538.i:                               ; preds = %for.end135.i564.i, %for.end101.i536.i
  %411 = load i32, i32* %i102.i411.i, align 4
  %cmp104.i537.i = icmp sle i32 %411, 2
  br i1 %cmp104.i537.i, label %for.body106.i546.i, label %for.end138.i568.i

for.body106.i546.i:                               ; preds = %for.cond103.i538.i
  %412 = load i8*, i8** %a.addr.i397.i, align 8
  %413 = load i32, i32* %i102.i411.i, align 4
  %idxprom107.i539.i = sext i32 %413 to i64
  %arrayidx108.i540.i = getelementptr inbounds i8, i8* %412, i64 %idxprom107.i539.i
  %414 = load i8, i8* %arrayidx108.i540.i, align 1
  %415 = load i8*, i8** %b.addr.i398.i, align 8
  %416 = load i32, i32* %i102.i411.i, align 4
  %idxprom109.i541.i = sext i32 %416 to i64
  %arrayidx110.i542.i = getelementptr inbounds i8, i8* %415, i64 %idxprom109.i541.i
  %417 = load i8, i8* %arrayidx110.i542.i, align 1
  %call111.i543.i = call zeroext i8 @mult(i8 zeroext %414, i8 zeroext %417) #3
  %418 = load i8*, i8** %c.addr.i399.i, align 8
  %419 = load i32, i32* %i102.i411.i, align 4
  %idxprom112.i544.i = sext i32 %419 to i64
  %arrayidx113.i545.i = getelementptr inbounds i8, i8* %418, i64 %idxprom112.i544.i
  store i8 %call111.i543.i, i8* %arrayidx113.i545.i, align 1
  store i32 0, i32* %j114.i412.i, align 4
  br label %for.cond115.i548.i

for.cond115.i548.i:                               ; preds = %if.end132.i562.i, %for.body106.i546.i
  %420 = load i32, i32* %j114.i412.i, align 4
  %cmp116.i547.i = icmp sle i32 %420, 2
  br i1 %cmp116.i547.i, label %for.body118.i550.i, label %for.end135.i564.i

for.body118.i550.i:                               ; preds = %for.cond115.i548.i
  %421 = load i32, i32* %j114.i412.i, align 4
  %422 = load i32, i32* %i102.i411.i, align 4
  %cmp119.i549.i = icmp ne i32 %421, %422
  br i1 %cmp119.i549.i, label %if.then121.i561.i, label %if.end132.i562.i

if.then121.i561.i:                                ; preds = %for.body118.i550.i
  %423 = load i32, i32* %i102.i411.i, align 4
  %idxprom122.i551.i = sext i32 %423 to i64
  %arrayidx123.i552.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i551.i
  %424 = load i32, i32* %j114.i412.i, align 4
  %idxprom124.i553.i = sext i32 %424 to i64
  %arrayidx125.i554.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i552.i, i64 0, i64 %idxprom124.i553.i
  %425 = load i8, i8* %arrayidx125.i554.i, align 1
  %conv126.i555.i = zext i8 %425 to i32
  %426 = load i8*, i8** %c.addr.i399.i, align 8
  %427 = load i32, i32* %i102.i411.i, align 4
  %idxprom127.i556.i = sext i32 %427 to i64
  %arrayidx128.i557.i = getelementptr inbounds i8, i8* %426, i64 %idxprom127.i556.i
  %428 = load i8, i8* %arrayidx128.i557.i, align 1
  %conv129.i558.i = zext i8 %428 to i32
  %xor130.i559.i = xor i32 %conv129.i558.i, %conv126.i555.i
  %conv131.i560.i = trunc i32 %xor130.i559.i to i8
  store i8 %conv131.i560.i, i8* %arrayidx128.i557.i, align 1
  br label %if.end132.i562.i

if.end132.i562.i:                                 ; preds = %if.then121.i561.i, %for.body118.i550.i
  %429 = load i32, i32* %j114.i412.i, align 4
  %inc134.i563.i = add nsw i32 %429, 1
  store i32 %inc134.i563.i, i32* %j114.i412.i, align 4
  br label %for.cond115.i548.i

for.end135.i564.i:                                ; preds = %for.cond115.i548.i
  %430 = load i32, i32* %i102.i411.i, align 4
  %inc137.i565.i = add nsw i32 %430, 1
  store i32 %inc137.i565.i, i32* %i102.i411.i, align 4
  br label %for.cond103.i538.i

for.end138.i568.i:                                ; preds = %for.cond103.i538.i
  %431 = load i8, i8* %A.i400.i, align 1
  %432 = load i8, i8* %B.i401.i, align 1
  %call139.i566.i = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432) #3
  %conv140.i567.i = zext i8 %call139.i566.i to i32
  %433 = load i8*, i8** %c.addr.i399.i, align 8
  store i8* %433, i8** %a.addr.i166.i386.i, align 8
  %434 = load i8*, i8** %a.addr.i166.i386.i, align 8
  store i8* %434, i8** %a.addr.i.i162.i382.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i383.i, align 8
  store i8 0, i8* %result.i.i164.i384.i, align 1
  store i32 0, i32* %i.i.i165.i385.i, align 4
  br label %for.cond.i.i168.i570.i

for.cond.i.i168.i570.i:                           ; preds = %for.body.i.i177.i579.i, %for.end138.i568.i
  %435 = load i32, i32* %i.i.i165.i385.i, align 4
  %cmp.i.i167.i569.i = icmp sle i32 %435, 2
  br i1 %cmp.i.i167.i569.i, label %for.body.i.i177.i579.i, label %sec_mult.exit582.i

for.body.i.i177.i579.i:                           ; preds = %for.cond.i.i168.i570.i
  %436 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i383.i, align 8
  %437 = load i8*, i8** %a.addr.i.i162.i382.i, align 8
  %438 = load i32, i32* %i.i.i165.i385.i, align 4
  %idxprom.i.i169.i571.i = sext i32 %438 to i64
  %arrayidx.i.i170.i572.i = getelementptr inbounds i8, i8* %437, i64 %idxprom.i.i169.i571.i
  %439 = load i8, i8* %arrayidx.i.i170.i572.i, align 1
  %call.i.i171.i573.i = call zeroext i8 %436(i8 zeroext %439) #3
  %conv.i.i172.i574.i = zext i8 %call.i.i171.i573.i to i32
  %440 = load i8, i8* %result.i.i164.i384.i, align 1
  %conv1.i.i173.i575.i = zext i8 %440 to i32
  %xor.i.i174.i576.i = xor i32 %conv1.i.i173.i575.i, %conv.i.i172.i574.i
  %conv2.i.i175.i577.i = trunc i32 %xor.i.i174.i576.i to i8
  store i8 %conv2.i.i175.i577.i, i8* %result.i.i164.i384.i, align 1
  %441 = load i32, i32* %i.i.i165.i385.i, align 4
  %inc.i.i176.i578.i = add nsw i32 %441, 1
  store i32 %inc.i.i176.i578.i, i32* %i.i.i165.i385.i, align 4
  br label %for.cond.i.i168.i570.i

sec_mult.exit582.i:                               ; preds = %for.cond.i.i168.i570.i
  %442 = load i8, i8* %result.i.i164.i384.i, align 1
  %conv142.i580.i = zext i8 %442 to i32
  %cmp143.i581.i = icmp eq i32 %conv140.i567.i, %conv142.i580.i
  call void @assert(i1 zeroext %cmp143.i581.i) #3
  %arraydecay20.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %arraydecay21.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %443 = load i8*, i8** %y.addr.i, align 8
  store i8* %arraydecay20.i, i8** %a.addr.i598.i, align 8
  store i8* %arraydecay21.i, i8** %b.addr.i599.i, align 8
  store i8* %443, i8** %c.addr.i600.i, align 8
  %call.i614.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i614.i, i8* %A.i601.i, align 1
  %call1.i615.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i615.i, i8* %B.i602.i, align 1
  %444 = load i8, i8* %A.i601.i, align 1
  %conv.i616.i = zext i8 %444 to i32
  %445 = load i8*, i8** %a.addr.i598.i, align 8
  store i8* %445, i8** %a.addr.i.i597.i, align 8
  %446 = load i8*, i8** %a.addr.i.i597.i, align 8
  store i8* %446, i8** %a.addr.i.i.i593.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i594.i, align 8
  store i8 0, i8* %result.i.i.i595.i, align 1
  store i32 0, i32* %i.i.i.i596.i, align 4
  br label %for.cond.i.i.i618.i

for.cond.i.i.i618.i:                              ; preds = %for.body.i.i.i627.i, %sec_mult.exit582.i
  %447 = load i32, i32* %i.i.i.i596.i, align 4
  %cmp.i.i.i617.i = icmp sle i32 %447, 2
  br i1 %cmp.i.i.i617.i, label %for.body.i.i.i627.i, label %xors.exit.i631.i

for.body.i.i.i627.i:                              ; preds = %for.cond.i.i.i618.i
  %448 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i594.i, align 8
  %449 = load i8*, i8** %a.addr.i.i.i593.i, align 8
  %450 = load i32, i32* %i.i.i.i596.i, align 4
  %idxprom.i.i.i619.i = sext i32 %450 to i64
  %arrayidx.i.i.i620.i = getelementptr inbounds i8, i8* %449, i64 %idxprom.i.i.i619.i
  %451 = load i8, i8* %arrayidx.i.i.i620.i, align 1
  %call.i.i.i621.i = call zeroext i8 %448(i8 zeroext %451) #3
  %conv.i.i.i622.i = zext i8 %call.i.i.i621.i to i32
  %452 = load i8, i8* %result.i.i.i595.i, align 1
  %conv1.i.i.i623.i = zext i8 %452 to i32
  %xor.i.i.i624.i = xor i32 %conv1.i.i.i623.i, %conv.i.i.i622.i
  %conv2.i.i.i625.i = trunc i32 %xor.i.i.i624.i to i8
  store i8 %conv2.i.i.i625.i, i8* %result.i.i.i595.i, align 1
  %453 = load i32, i32* %i.i.i.i596.i, align 4
  %inc.i.i.i626.i = add nsw i32 %453, 1
  store i32 %inc.i.i.i626.i, i32* %i.i.i.i596.i, align 4
  br label %for.cond.i.i.i618.i

xors.exit.i631.i:                                 ; preds = %for.cond.i.i.i618.i
  %454 = load i8, i8* %result.i.i.i595.i, align 1
  %conv3.i628.i = zext i8 %454 to i32
  %cmp.i629.i = icmp eq i32 %conv.i616.i, %conv3.i628.i
  call void @assume(i1 zeroext %cmp.i629.i) #3
  %455 = load i8, i8* %B.i602.i, align 1
  %conv5.i630.i = zext i8 %455 to i32
  %456 = load i8*, i8** %b.addr.i599.i, align 8
  store i8* %456, i8** %a.addr.i149.i592.i, align 8
  %457 = load i8*, i8** %a.addr.i149.i592.i, align 8
  store i8* %457, i8** %a.addr.i.i145.i588.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i589.i, align 8
  store i8 0, i8* %result.i.i147.i590.i, align 1
  store i32 0, i32* %i.i.i148.i591.i, align 4
  br label %for.cond.i.i151.i633.i

for.cond.i.i151.i633.i:                           ; preds = %for.body.i.i160.i642.i, %xors.exit.i631.i
  %458 = load i32, i32* %i.i.i148.i591.i, align 4
  %cmp.i.i150.i632.i = icmp sle i32 %458, 2
  br i1 %cmp.i.i150.i632.i, label %for.body.i.i160.i642.i, label %xors.exit161.i645.i

for.body.i.i160.i642.i:                           ; preds = %for.cond.i.i151.i633.i
  %459 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i589.i, align 8
  %460 = load i8*, i8** %a.addr.i.i145.i588.i, align 8
  %461 = load i32, i32* %i.i.i148.i591.i, align 4
  %idxprom.i.i152.i634.i = sext i32 %461 to i64
  %arrayidx.i.i153.i635.i = getelementptr inbounds i8, i8* %460, i64 %idxprom.i.i152.i634.i
  %462 = load i8, i8* %arrayidx.i.i153.i635.i, align 1
  %call.i.i154.i636.i = call zeroext i8 %459(i8 zeroext %462) #3
  %conv.i.i155.i637.i = zext i8 %call.i.i154.i636.i to i32
  %463 = load i8, i8* %result.i.i147.i590.i, align 1
  %conv1.i.i156.i638.i = zext i8 %463 to i32
  %xor.i.i157.i639.i = xor i32 %conv1.i.i156.i638.i, %conv.i.i155.i637.i
  %conv2.i.i158.i640.i = trunc i32 %xor.i.i157.i639.i to i8
  store i8 %conv2.i.i158.i640.i, i8* %result.i.i147.i590.i, align 1
  %464 = load i32, i32* %i.i.i148.i591.i, align 4
  %inc.i.i159.i641.i = add nsw i32 %464, 1
  store i32 %inc.i.i159.i641.i, i32* %i.i.i148.i591.i, align 4
  br label %for.cond.i.i151.i633.i

xors.exit161.i645.i:                              ; preds = %for.cond.i.i151.i633.i
  %465 = load i8, i8* %result.i.i147.i590.i, align 1
  %conv7.i643.i = zext i8 %465 to i32
  %cmp8.i644.i = icmp eq i32 %conv5.i630.i, %conv7.i643.i
  call void @assume(i1 zeroext %cmp8.i644.i) #3
  store i32 0, i32* %i.i608.i, align 4
  br label %for.cond.i647.i

for.cond.i647.i:                                  ; preds = %for.end.i667.i, %xors.exit161.i645.i
  %466 = load i32, i32* %i.i608.i, align 4
  %cmp10.i646.i = icmp sle i32 %466, 2
  br i1 %cmp10.i646.i, label %for.body.i649.i, label %for.end29.i669.i

for.body.i649.i:                                  ; preds = %for.cond.i647.i
  %467 = load i32, i32* %i.i608.i, align 4
  %add.i648.i = add nsw i32 %467, 1
  store i32 %add.i648.i, i32* %j.i609.i, align 4
  br label %for.cond12.i651.i

for.cond12.i651.i:                                ; preds = %for.body15.i665.i, %for.body.i649.i
  %468 = load i32, i32* %j.i609.i, align 4
  %cmp13.i650.i = icmp sle i32 %468, 2
  br i1 %cmp13.i650.i, label %for.body15.i665.i, label %for.end.i667.i

for.body15.i665.i:                                ; preds = %for.cond12.i651.i
  %call16.i652.i = call zeroext i8 (...) @rand() #3
  %469 = load i32, i32* %i.i608.i, align 4
  %idxprom.i653.i = sext i32 %469 to i64
  %arrayidx.i654.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom.i653.i
  %470 = load i32, i32* %j.i609.i, align 4
  %idxprom17.i655.i = sext i32 %470 to i64
  %arrayidx18.i656.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx.i654.i, i64 0, i64 %idxprom17.i655.i
  store i8 %call16.i652.i, i8* %arrayidx18.i656.i, align 1
  %471 = load i32, i32* %i.i608.i, align 4
  %idxprom19.i657.i = sext i32 %471 to i64
  %arrayidx20.i658.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i657.i
  %472 = load i32, i32* %j.i609.i, align 4
  %idxprom21.i659.i = sext i32 %472 to i64
  %arrayidx22.i660.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20.i658.i, i64 0, i64 %idxprom21.i659.i
  %473 = load i8, i8* %arrayidx22.i660.i, align 1
  %474 = load i32, i32* %j.i609.i, align 4
  %idxprom23.i661.i = sext i32 %474 to i64
  %arrayidx24.i662.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i661.i
  %475 = load i32, i32* %i.i608.i, align 4
  %idxprom25.i663.i = sext i32 %475 to i64
  %arrayidx26.i664.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx24.i662.i, i64 0, i64 %idxprom25.i663.i
  store i8 %473, i8* %arrayidx26.i664.i, align 1
  %476 = load i32, i32* %j.i609.i, align 4
  %inc.i666.i = add nsw i32 %476, 1
  store i32 %inc.i666.i, i32* %j.i609.i, align 4
  br label %for.cond12.i651.i

for.end.i667.i:                                   ; preds = %for.cond12.i651.i
  %477 = load i32, i32* %i.i608.i, align 4
  %inc28.i668.i = add nsw i32 %477, 1
  store i32 %inc28.i668.i, i32* %i.i608.i, align 4
  br label %for.cond.i647.i

for.end29.i669.i:                                 ; preds = %for.cond.i647.i
  store i32 0, i32* %i30.i610.i, align 4
  br label %for.cond31.i671.i

for.cond31.i671.i:                                ; preds = %for.end98.i735.i, %for.end29.i669.i
  %478 = load i32, i32* %i30.i610.i, align 4
  %cmp32.i670.i = icmp sle i32 %478, 2
  br i1 %cmp32.i670.i, label %for.body34.i672.i, label %for.end101.i737.i

for.body34.i672.i:                                ; preds = %for.cond31.i671.i
  store i32 0, i32* %j35.i611.i, align 4
  br label %for.cond36.i674.i

for.cond36.i674.i:                                ; preds = %if.end.i733.i, %for.body34.i672.i
  %479 = load i32, i32* %j35.i611.i, align 4
  %cmp37.i673.i = icmp sle i32 %479, 2
  br i1 %cmp37.i673.i, label %for.body39.i676.i, label %for.end98.i735.i

for.body39.i676.i:                                ; preds = %for.cond36.i674.i
  %480 = load i32, i32* %j35.i611.i, align 4
  %481 = load i32, i32* %i30.i610.i, align 4
  %cmp40.i675.i = icmp ne i32 %480, %481
  br i1 %cmp40.i675.i, label %if.then.i732.i, label %if.end.i733.i

if.then.i732.i:                                   ; preds = %for.body39.i676.i
  %482 = load i8*, i8** %b.addr.i599.i, align 8
  %483 = load i32, i32* %j35.i611.i, align 4
  %idxprom42.i677.i = sext i32 %483 to i64
  %arrayidx43.i678.i = getelementptr inbounds i8, i8* %482, i64 %idxprom42.i677.i
  %484 = load i8, i8* %arrayidx43.i678.i, align 1
  %conv44.i679.i = zext i8 %484 to i32
  %485 = load i32, i32* %i30.i610.i, align 4
  %idxprom45.i680.i = sext i32 %485 to i64
  %arrayidx46.i681.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i680.i
  %486 = load i32, i32* %j35.i611.i, align 4
  %idxprom47.i682.i = sext i32 %486 to i64
  %arrayidx48.i683.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx46.i681.i, i64 0, i64 %idxprom47.i682.i
  %487 = load i8, i8* %arrayidx48.i683.i, align 1
  %conv49.i684.i = zext i8 %487 to i32
  %xor.i685.i = xor i32 %conv44.i679.i, %conv49.i684.i
  %conv50.i686.i = trunc i32 %xor.i685.i to i8
  %488 = load i32, i32* %i30.i610.i, align 4
  %idxprom51.i687.i = sext i32 %488 to i64
  %arrayidx52.i688.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i687.i
  %489 = load i32, i32* %j35.i611.i, align 4
  %idxprom53.i689.i = sext i32 %489 to i64
  %arrayidx54.i690.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52.i688.i, i64 0, i64 %idxprom53.i689.i
  store i8 %conv50.i686.i, i8* %arrayidx54.i690.i, align 1
  %490 = load i8*, i8** %a.addr.i598.i, align 8
  %491 = load i32, i32* %i30.i610.i, align 4
  %idxprom55.i691.i = sext i32 %491 to i64
  %arrayidx56.i692.i = getelementptr inbounds i8, i8* %490, i64 %idxprom55.i691.i
  %492 = load i8, i8* %arrayidx56.i692.i, align 1
  %conv57.i693.i = zext i8 %492 to i32
  %xor58.i694.i = xor i32 %conv57.i693.i, 1
  %conv59.i695.i = trunc i32 %xor58.i694.i to i8
  %493 = load i32, i32* %i30.i610.i, align 4
  %idxprom60.i696.i = sext i32 %493 to i64
  %arrayidx61.i697.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i696.i
  %494 = load i32, i32* %j35.i611.i, align 4
  %idxprom62.i698.i = sext i32 %494 to i64
  %arrayidx63.i699.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx61.i697.i, i64 0, i64 %idxprom62.i698.i
  %495 = load i8, i8* %arrayidx63.i699.i, align 1
  %call64.i700.i = call zeroext i8 @mult(i8 zeroext %conv59.i695.i, i8 zeroext %495) #3
  %496 = load i32, i32* %i30.i610.i, align 4
  %idxprom65.i701.i = sext i32 %496 to i64
  %arrayidx66.i702.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i701.i
  %497 = load i32, i32* %j35.i611.i, align 4
  %idxprom67.i703.i = sext i32 %497 to i64
  %arrayidx68.i704.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx66.i702.i, i64 0, i64 %idxprom67.i703.i
  store i8 %call64.i700.i, i8* %arrayidx68.i704.i, align 1
  %498 = load i8*, i8** %a.addr.i598.i, align 8
  %499 = load i32, i32* %i30.i610.i, align 4
  %idxprom69.i705.i = sext i32 %499 to i64
  %arrayidx70.i706.i = getelementptr inbounds i8, i8* %498, i64 %idxprom69.i705.i
  %500 = load i8, i8* %arrayidx70.i706.i, align 1
  %501 = load i32, i32* %i30.i610.i, align 4
  %idxprom71.i707.i = sext i32 %501 to i64
  %arrayidx72.i708.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i707.i
  %502 = load i32, i32* %j35.i611.i, align 4
  %idxprom73.i709.i = sext i32 %502 to i64
  %arrayidx74.i710.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72.i708.i, i64 0, i64 %idxprom73.i709.i
  %503 = load i8, i8* %arrayidx74.i710.i, align 1
  %call75.i711.i = call zeroext i8 @mult(i8 zeroext %500, i8 zeroext %503) #3
  %504 = load i32, i32* %i30.i610.i, align 4
  %idxprom76.i712.i = sext i32 %504 to i64
  %arrayidx77.i713.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i712.i
  %505 = load i32, i32* %j35.i611.i, align 4
  %idxprom78.i714.i = sext i32 %505 to i64
  %arrayidx79.i715.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx77.i713.i, i64 0, i64 %idxprom78.i714.i
  store i8 %call75.i711.i, i8* %arrayidx79.i715.i, align 1
  %506 = load i32, i32* %i30.i610.i, align 4
  %idxprom80.i716.i = sext i32 %506 to i64
  %arrayidx81.i717.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i716.i
  %507 = load i32, i32* %j35.i611.i, align 4
  %idxprom82.i718.i = sext i32 %507 to i64
  %arrayidx83.i719.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx81.i717.i, i64 0, i64 %idxprom82.i718.i
  %508 = load i8, i8* %arrayidx83.i719.i, align 1
  %conv84.i720.i = zext i8 %508 to i32
  %509 = load i32, i32* %i30.i610.i, align 4
  %idxprom85.i721.i = sext i32 %509 to i64
  %arrayidx86.i722.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i721.i
  %510 = load i32, i32* %j35.i611.i, align 4
  %idxprom87.i723.i = sext i32 %510 to i64
  %arrayidx88.i724.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx86.i722.i, i64 0, i64 %idxprom87.i723.i
  %511 = load i8, i8* %arrayidx88.i724.i, align 1
  %conv89.i725.i = zext i8 %511 to i32
  %xor90.i726.i = xor i32 %conv84.i720.i, %conv89.i725.i
  %conv91.i727.i = trunc i32 %xor90.i726.i to i8
  %512 = load i32, i32* %i30.i610.i, align 4
  %idxprom92.i728.i = sext i32 %512 to i64
  %arrayidx93.i729.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i728.i
  %513 = load i32, i32* %j35.i611.i, align 4
  %idxprom94.i730.i = sext i32 %513 to i64
  %arrayidx95.i731.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx93.i729.i, i64 0, i64 %idxprom94.i730.i
  store i8 %conv91.i727.i, i8* %arrayidx95.i731.i, align 1
  br label %if.end.i733.i

if.end.i733.i:                                    ; preds = %if.then.i732.i, %for.body39.i676.i
  %514 = load i32, i32* %j35.i611.i, align 4
  %inc97.i734.i = add nsw i32 %514, 1
  store i32 %inc97.i734.i, i32* %j35.i611.i, align 4
  br label %for.cond36.i674.i

for.end98.i735.i:                                 ; preds = %for.cond36.i674.i
  %515 = load i32, i32* %i30.i610.i, align 4
  %inc100.i736.i = add nsw i32 %515, 1
  store i32 %inc100.i736.i, i32* %i30.i610.i, align 4
  br label %for.cond31.i671.i

for.end101.i737.i:                                ; preds = %for.cond31.i671.i
  store i32 0, i32* %i102.i612.i, align 4
  br label %for.cond103.i739.i

for.cond103.i739.i:                               ; preds = %for.end135.i765.i, %for.end101.i737.i
  %516 = load i32, i32* %i102.i612.i, align 4
  %cmp104.i738.i = icmp sle i32 %516, 2
  br i1 %cmp104.i738.i, label %for.body106.i747.i, label %for.end138.i769.i

for.body106.i747.i:                               ; preds = %for.cond103.i739.i
  %517 = load i8*, i8** %a.addr.i598.i, align 8
  %518 = load i32, i32* %i102.i612.i, align 4
  %idxprom107.i740.i = sext i32 %518 to i64
  %arrayidx108.i741.i = getelementptr inbounds i8, i8* %517, i64 %idxprom107.i740.i
  %519 = load i8, i8* %arrayidx108.i741.i, align 1
  %520 = load i8*, i8** %b.addr.i599.i, align 8
  %521 = load i32, i32* %i102.i612.i, align 4
  %idxprom109.i742.i = sext i32 %521 to i64
  %arrayidx110.i743.i = getelementptr inbounds i8, i8* %520, i64 %idxprom109.i742.i
  %522 = load i8, i8* %arrayidx110.i743.i, align 1
  %call111.i744.i = call zeroext i8 @mult(i8 zeroext %519, i8 zeroext %522) #3
  %523 = load i8*, i8** %c.addr.i600.i, align 8
  %524 = load i32, i32* %i102.i612.i, align 4
  %idxprom112.i745.i = sext i32 %524 to i64
  %arrayidx113.i746.i = getelementptr inbounds i8, i8* %523, i64 %idxprom112.i745.i
  store i8 %call111.i744.i, i8* %arrayidx113.i746.i, align 1
  store i32 0, i32* %j114.i613.i, align 4
  br label %for.cond115.i749.i

for.cond115.i749.i:                               ; preds = %if.end132.i763.i, %for.body106.i747.i
  %525 = load i32, i32* %j114.i613.i, align 4
  %cmp116.i748.i = icmp sle i32 %525, 2
  br i1 %cmp116.i748.i, label %for.body118.i751.i, label %for.end135.i765.i

for.body118.i751.i:                               ; preds = %for.cond115.i749.i
  %526 = load i32, i32* %j114.i613.i, align 4
  %527 = load i32, i32* %i102.i612.i, align 4
  %cmp119.i750.i = icmp ne i32 %526, %527
  br i1 %cmp119.i750.i, label %if.then121.i762.i, label %if.end132.i763.i

if.then121.i762.i:                                ; preds = %for.body118.i751.i
  %528 = load i32, i32* %i102.i612.i, align 4
  %idxprom122.i752.i = sext i32 %528 to i64
  %arrayidx123.i753.i = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i752.i
  %529 = load i32, i32* %j114.i613.i, align 4
  %idxprom124.i754.i = sext i32 %529 to i64
  %arrayidx125.i755.i = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx123.i753.i, i64 0, i64 %idxprom124.i754.i
  %530 = load i8, i8* %arrayidx125.i755.i, align 1
  %conv126.i756.i = zext i8 %530 to i32
  %531 = load i8*, i8** %c.addr.i600.i, align 8
  %532 = load i32, i32* %i102.i612.i, align 4
  %idxprom127.i757.i = sext i32 %532 to i64
  %arrayidx128.i758.i = getelementptr inbounds i8, i8* %531, i64 %idxprom127.i757.i
  %533 = load i8, i8* %arrayidx128.i758.i, align 1
  %conv129.i759.i = zext i8 %533 to i32
  %xor130.i760.i = xor i32 %conv129.i759.i, %conv126.i756.i
  %conv131.i761.i = trunc i32 %xor130.i760.i to i8
  store i8 %conv131.i761.i, i8* %arrayidx128.i758.i, align 1
  br label %if.end132.i763.i

if.end132.i763.i:                                 ; preds = %if.then121.i762.i, %for.body118.i751.i
  %534 = load i32, i32* %j114.i613.i, align 4
  %inc134.i764.i = add nsw i32 %534, 1
  store i32 %inc134.i764.i, i32* %j114.i613.i, align 4
  br label %for.cond115.i749.i

for.end135.i765.i:                                ; preds = %for.cond115.i749.i
  %535 = load i32, i32* %i102.i612.i, align 4
  %inc137.i766.i = add nsw i32 %535, 1
  store i32 %inc137.i766.i, i32* %i102.i612.i, align 4
  br label %for.cond103.i739.i

for.end138.i769.i:                                ; preds = %for.cond103.i739.i
  %536 = load i8, i8* %A.i601.i, align 1
  %537 = load i8, i8* %B.i602.i, align 1
  %call139.i767.i = call zeroext i8 @mult(i8 zeroext %536, i8 zeroext %537) #3
  %conv140.i768.i = zext i8 %call139.i767.i to i32
  %538 = load i8*, i8** %c.addr.i600.i, align 8
  store i8* %538, i8** %a.addr.i166.i587.i, align 8
  %539 = load i8*, i8** %a.addr.i166.i587.i, align 8
  store i8* %539, i8** %a.addr.i.i162.i583.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i584.i, align 8
  store i8 0, i8* %result.i.i164.i585.i, align 1
  store i32 0, i32* %i.i.i165.i586.i, align 4
  br label %for.cond.i.i168.i771.i

for.cond.i.i168.i771.i:                           ; preds = %for.body.i.i177.i780.i, %for.end138.i769.i
  %540 = load i32, i32* %i.i.i165.i586.i, align 4
  %cmp.i.i167.i770.i = icmp sle i32 %540, 2
  br i1 %cmp.i.i167.i770.i, label %for.body.i.i177.i780.i, label %sec_mult.exit783.i

for.body.i.i177.i780.i:                           ; preds = %for.cond.i.i168.i771.i
  %541 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i584.i, align 8
  %542 = load i8*, i8** %a.addr.i.i162.i583.i, align 8
  %543 = load i32, i32* %i.i.i165.i586.i, align 4
  %idxprom.i.i169.i772.i = sext i32 %543 to i64
  %arrayidx.i.i170.i773.i = getelementptr inbounds i8, i8* %542, i64 %idxprom.i.i169.i772.i
  %544 = load i8, i8* %arrayidx.i.i170.i773.i, align 1
  %call.i.i171.i774.i = call zeroext i8 %541(i8 zeroext %544) #3
  %conv.i.i172.i775.i = zext i8 %call.i.i171.i774.i to i32
  %545 = load i8, i8* %result.i.i164.i585.i, align 1
  %conv1.i.i173.i776.i = zext i8 %545 to i32
  %xor.i.i174.i777.i = xor i32 %conv1.i.i173.i776.i, %conv.i.i172.i775.i
  %conv2.i.i175.i778.i = trunc i32 %xor.i.i174.i777.i to i8
  store i8 %conv2.i.i175.i778.i, i8* %result.i.i164.i585.i, align 1
  %546 = load i32, i32* %i.i.i165.i586.i, align 4
  %inc.i.i176.i779.i = add nsw i32 %546, 1
  store i32 %inc.i.i176.i779.i, i32* %i.i.i165.i586.i, align 4
  br label %for.cond.i.i168.i771.i

sec_mult.exit783.i:                               ; preds = %for.cond.i.i168.i771.i
  %547 = load i8, i8* %result.i.i164.i585.i, align 1
  %conv142.i781.i = zext i8 %547 to i32
  %cmp143.i782.i = icmp eq i32 %conv140.i768.i, %conv142.i781.i
  call void @assert(i1 zeroext %cmp143.i782.i) #3
  %548 = load i8, i8* %X.i, align 1
  store i8 %548, i8* %x.addr.i784.i, align 1
  %549 = load i8, i8* %x.addr.i784.i, align 1
  store i8 %549, i8* %x.addr.i.i.i, align 1
  %550 = load i8, i8* %x.addr.i.i.i, align 1
  %551 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i786.i = call zeroext i8 @mult(i8 zeroext %550, i8 zeroext %551) #3
  store i8 %call.i.i786.i, i8* %z.i785.i, align 1
  %552 = load i8, i8* %z.i785.i, align 1
  %553 = load i8, i8* %x.addr.i784.i, align 1
  %call1.i787.i = call zeroext i8 @mult(i8 zeroext %552, i8 zeroext %553) #3
  store i8 %call1.i787.i, i8* %y.i.i, align 1
  %554 = load i8, i8* %y.i.i, align 1
  store i8 %554, i8* %x.addr.i7.i.i, align 1
  %555 = load i8, i8* %x.addr.i7.i.i, align 1
  store i8 %555, i8* %x.addr.i.i.i.i, align 1
  %556 = load i8, i8* %x.addr.i.i.i.i, align 1
  %557 = load i8, i8* %x.addr.i.i.i.i, align 1
  %call.i.i.i788.i = call zeroext i8 @mult(i8 zeroext %556, i8 zeroext %557) #3
  store i8 %call.i.i.i788.i, i8* %x.addr.i2.i.i.i, align 1
  %558 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %559 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %558, i8 zeroext %559) #3
  store i8 %call.i3.i.i.i, i8* %w.i.i, align 1
  %560 = load i8, i8* %y.i.i, align 1
  %561 = load i8, i8* %w.i.i, align 1
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %560, i8 zeroext %561) #3
  store i8 %call3.i.i, i8* %y.i.i, align 1
  %562 = load i8, i8* %y.i.i, align 1
  store i8 %562, i8* %x.addr.i9.i.i, align 1
  %563 = load i8, i8* %x.addr.i9.i.i, align 1
  store i8 %563, i8* %x.addr.i.i8.i.i, align 1
  %564 = load i8, i8* %x.addr.i.i8.i.i, align 1
  store i8 %564, i8* %x.addr.i.i.i.i.i, align 1
  %565 = load i8, i8* %x.addr.i.i.i.i.i, align 1
  %566 = load i8, i8* %x.addr.i.i.i.i.i, align 1
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %565, i8 zeroext %566) #3
  store i8 %call.i.i.i.i.i, i8* %x.addr.i2.i.i.i.i, align 1
  %567 = load i8, i8* %x.addr.i2.i.i.i.i, align 1
  %568 = load i8, i8* %x.addr.i2.i.i.i.i, align 1
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %567, i8 zeroext %568) #3
  store i8 %call.i3.i.i.i.i, i8* %x.addr.i4.i.i.i, align 1
  %569 = load i8, i8* %x.addr.i4.i.i.i, align 1
  store i8 %569, i8* %x.addr.i.i3.i.i.i, align 1
  %570 = load i8, i8* %x.addr.i.i3.i.i.i, align 1
  %571 = load i8, i8* %x.addr.i.i3.i.i.i, align 1
  %call.i.i5.i.i.i = call zeroext i8 @mult(i8 zeroext %570, i8 zeroext %571) #3
  store i8 %call.i.i5.i.i.i, i8* %x.addr.i2.i2.i.i.i, align 1
  %572 = load i8, i8* %x.addr.i2.i2.i.i.i, align 1
  %573 = load i8, i8* %x.addr.i2.i2.i.i.i, align 1
  %call.i3.i6.i.i.i = call zeroext i8 @mult(i8 zeroext %572, i8 zeroext %573) #3
  store i8 %call.i3.i6.i.i.i, i8* %y.i.i, align 1
  %574 = load i8, i8* %y.i.i, align 1
  %575 = load i8, i8* %w.i.i, align 1
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %574, i8 zeroext %575) #3
  store i8 %call5.i.i, i8* %y.i.i, align 1
  %576 = load i8, i8* %y.i.i, align 1
  %577 = load i8, i8* %z.i785.i, align 1
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %576, i8 zeroext %577) #3
  store i8 %call6.i.i, i8* %y.i.i, align 1
  %578 = load i8, i8* %y.i.i, align 1
  %conv23.i = zext i8 %578 to i32
  %579 = load i8*, i8** %y.addr.i, align 8
  store i8* %579, i8** %a.addr.i793.i, align 8
  %580 = load i8*, i8** %a.addr.i793.i, align 8
  store i8* %580, i8** %a.addr.i.i789.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i790.i, align 8
  store i8 0, i8* %result.i.i791.i, align 1
  store i32 0, i32* %i.i.i792.i, align 4
  br label %for.cond.i.i795.i

for.cond.i.i795.i:                                ; preds = %for.body.i.i804.i, %sec_mult.exit783.i
  %581 = load i32, i32* %i.i.i792.i, align 4
  %cmp.i.i794.i = icmp sle i32 %581, 2
  br i1 %cmp.i.i794.i, label %for.body.i.i804.i, label %sec_exp254.exit

for.body.i.i804.i:                                ; preds = %for.cond.i.i795.i
  %582 = load i8 (i8)*, i8 (i8)** %f.addr.i.i790.i, align 8
  %583 = load i8*, i8** %a.addr.i.i789.i, align 8
  %584 = load i32, i32* %i.i.i792.i, align 4
  %idxprom.i.i796.i = sext i32 %584 to i64
  %arrayidx.i.i797.i = getelementptr inbounds i8, i8* %583, i64 %idxprom.i.i796.i
  %585 = load i8, i8* %arrayidx.i.i797.i, align 1
  %call.i.i798.i = call zeroext i8 %582(i8 zeroext %585) #3
  %conv.i.i799.i = zext i8 %call.i.i798.i to i32
  %586 = load i8, i8* %result.i.i791.i, align 1
  %conv1.i.i800.i = zext i8 %586 to i32
  %xor.i.i801.i = xor i32 %conv1.i.i800.i, %conv.i.i799.i
  %conv2.i.i802.i = trunc i32 %xor.i.i801.i to i8
  store i8 %conv2.i.i802.i, i8* %result.i.i791.i, align 1
  %587 = load i32, i32* %i.i.i792.i, align 4
  %inc.i.i803.i = add nsw i32 %587, 1
  store i32 %inc.i.i803.i, i32* %i.i.i792.i, align 4
  br label %for.cond.i.i795.i

sec_exp254.exit:                                  ; preds = %for.cond.i.i795.i
  %588 = load i8, i8* %result.i.i791.i, align 1
  %conv25.i = zext i8 %588 to i32
  %cmp26.i = icmp eq i32 %conv23.i, %conv25.i
  call void @assert(i1 zeroext %cmp26.i) #3
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %x254, i64 0, i64 0
  %589 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay4, i8** %from.addr.i, align 8
  store i8* %589, i8** %to.addr.i, align 8
  store i8 (i8)* @af, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %sec_exp254.exit
  %590 = load i32, i32* %i.i, align 4
  %cmp.i24 = icmp sle i32 %590, 2
  br i1 %cmp.i24, label %for.body.i, label %transform.exit

for.body.i:                                       ; preds = %for.cond.i
  %591 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %592 = load i8*, i8** %from.addr.i, align 8
  %593 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %593 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %592, i64 %idxprom.i
  %594 = load i8, i8* %arrayidx.i, align 1
  %call.i25 = call zeroext i8 %591(i8 zeroext %594) #3
  %595 = load i8*, i8** %to.addr.i, align 8
  %596 = load i32, i32* %i.i, align 4
  %idxprom1.i = sext i32 %596 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %595, i64 %idxprom1.i
  store i8 %call.i25, i8* %arrayidx2.i, align 1
  %597 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %597, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

transform.exit:                                   ; preds = %for.cond.i
  %598 = load i8, i8* %X, align 1
  store i8 %598, i8* %x.addr.i41, align 1
  %599 = load i8, i8* %x.addr.i41, align 1
  store i8 %599, i8* %x.addr.i.i37, align 1
  %600 = load i8, i8* %x.addr.i.i37, align 1
  store i8 %600, i8* %x.addr.i.i.i36, align 1
  %601 = load i8, i8* %x.addr.i.i.i36, align 1
  %602 = load i8, i8* %x.addr.i.i.i36, align 1
  %call.i.i.i42 = call zeroext i8 @mult(i8 zeroext %601, i8 zeroext %602) #3
  store i8 %call.i.i.i42, i8* %z.i.i38, align 1
  %603 = load i8, i8* %z.i.i38, align 1
  %604 = load i8, i8* %x.addr.i.i37, align 1
  %call1.i.i43 = call zeroext i8 @mult(i8 zeroext %603, i8 zeroext %604) #3
  store i8 %call1.i.i43, i8* %y.i.i39, align 1
  %605 = load i8, i8* %y.i.i39, align 1
  store i8 %605, i8* %x.addr.i7.i.i35, align 1
  %606 = load i8, i8* %x.addr.i7.i.i35, align 1
  store i8 %606, i8* %x.addr.i.i.i.i34, align 1
  %607 = load i8, i8* %x.addr.i.i.i.i34, align 1
  %608 = load i8, i8* %x.addr.i.i.i.i34, align 1
  %call.i.i.i.i44 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %608) #3
  store i8 %call.i.i.i.i44, i8* %x.addr.i2.i.i.i33, align 1
  %609 = load i8, i8* %x.addr.i2.i.i.i33, align 1
  %610 = load i8, i8* %x.addr.i2.i.i.i33, align 1
  %call.i3.i.i.i45 = call zeroext i8 @mult(i8 zeroext %609, i8 zeroext %610) #3
  store i8 %call.i3.i.i.i45, i8* %w.i.i40, align 1
  %611 = load i8, i8* %y.i.i39, align 1
  %612 = load i8, i8* %w.i.i40, align 1
  %call3.i.i46 = call zeroext i8 @mult(i8 zeroext %611, i8 zeroext %612) #3
  store i8 %call3.i.i46, i8* %y.i.i39, align 1
  %613 = load i8, i8* %y.i.i39, align 1
  store i8 %613, i8* %x.addr.i9.i.i32, align 1
  %614 = load i8, i8* %x.addr.i9.i.i32, align 1
  store i8 %614, i8* %x.addr.i.i8.i.i31, align 1
  %615 = load i8, i8* %x.addr.i.i8.i.i31, align 1
  store i8 %615, i8* %x.addr.i.i.i.i.i30, align 1
  %616 = load i8, i8* %x.addr.i.i.i.i.i30, align 1
  %617 = load i8, i8* %x.addr.i.i.i.i.i30, align 1
  %call.i.i.i.i.i47 = call zeroext i8 @mult(i8 zeroext %616, i8 zeroext %617) #3
  store i8 %call.i.i.i.i.i47, i8* %x.addr.i2.i.i.i.i29, align 1
  %618 = load i8, i8* %x.addr.i2.i.i.i.i29, align 1
  %619 = load i8, i8* %x.addr.i2.i.i.i.i29, align 1
  %call.i3.i.i.i.i48 = call zeroext i8 @mult(i8 zeroext %618, i8 zeroext %619) #3
  store i8 %call.i3.i.i.i.i48, i8* %x.addr.i4.i.i.i28, align 1
  %620 = load i8, i8* %x.addr.i4.i.i.i28, align 1
  store i8 %620, i8* %x.addr.i.i3.i.i.i27, align 1
  %621 = load i8, i8* %x.addr.i.i3.i.i.i27, align 1
  %622 = load i8, i8* %x.addr.i.i3.i.i.i27, align 1
  %call.i.i5.i.i.i49 = call zeroext i8 @mult(i8 zeroext %621, i8 zeroext %622) #3
  store i8 %call.i.i5.i.i.i49, i8* %x.addr.i2.i2.i.i.i26, align 1
  %623 = load i8, i8* %x.addr.i2.i2.i.i.i26, align 1
  %624 = load i8, i8* %x.addr.i2.i2.i.i.i26, align 1
  %call.i3.i6.i.i.i50 = call zeroext i8 @mult(i8 zeroext %623, i8 zeroext %624) #3
  store i8 %call.i3.i6.i.i.i50, i8* %y.i.i39, align 1
  %625 = load i8, i8* %y.i.i39, align 1
  %626 = load i8, i8* %w.i.i40, align 1
  %call5.i.i51 = call zeroext i8 @mult(i8 zeroext %625, i8 zeroext %626) #3
  store i8 %call5.i.i51, i8* %y.i.i39, align 1
  %627 = load i8, i8* %y.i.i39, align 1
  %628 = load i8, i8* %z.i.i38, align 1
  %call6.i.i52 = call zeroext i8 @mult(i8 zeroext %627, i8 zeroext %628) #3
  store i8 %call6.i.i52, i8* %y.i.i39, align 1
  %629 = load i8, i8* %y.i.i39, align 1
  %call1.i = call zeroext i8 @af(i8 zeroext %629) #3
  %conv6 = zext i8 %call1.i to i32
  %630 = load i8*, i8** %y.addr, align 8
  store i8* %630, i8** %a.addr.i57, align 8
  %631 = load i8*, i8** %a.addr.i57, align 8
  store i8* %631, i8** %a.addr.i.i53, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i54, align 8
  store i8 0, i8* %result.i.i55, align 1
  store i32 0, i32* %i.i.i56, align 4
  br label %for.cond.i.i59

for.cond.i.i59:                                   ; preds = %for.body.i.i68, %transform.exit
  %632 = load i32, i32* %i.i.i56, align 4
  %cmp.i.i58 = icmp sle i32 %632, 2
  br i1 %cmp.i.i58, label %for.body.i.i68, label %xors.exit69

for.body.i.i68:                                   ; preds = %for.cond.i.i59
  %633 = load i8 (i8)*, i8 (i8)** %f.addr.i.i54, align 8
  %634 = load i8*, i8** %a.addr.i.i53, align 8
  %635 = load i32, i32* %i.i.i56, align 4
  %idxprom.i.i60 = sext i32 %635 to i64
  %arrayidx.i.i61 = getelementptr inbounds i8, i8* %634, i64 %idxprom.i.i60
  %636 = load i8, i8* %arrayidx.i.i61, align 1
  %call.i.i62 = call zeroext i8 %633(i8 zeroext %636) #3
  %conv.i.i63 = zext i8 %call.i.i62 to i32
  %637 = load i8, i8* %result.i.i55, align 1
  %conv1.i.i64 = zext i8 %637 to i32
  %xor.i.i65 = xor i32 %conv1.i.i64, %conv.i.i63
  %conv2.i.i66 = trunc i32 %xor.i.i65 to i8
  store i8 %conv2.i.i66, i8* %result.i.i55, align 1
  %638 = load i32, i32* %i.i.i56, align 4
  %inc.i.i67 = add nsw i32 %638, 1
  store i32 %inc.i.i67, i32* %i.i.i56, align 4
  br label %for.cond.i.i59

xors.exit69:                                      ; preds = %for.cond.i.i59
  %639 = load i8, i8* %result.i.i55, align 1
  %conv8 = zext i8 %639 to i32
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
