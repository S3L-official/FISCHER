; ModuleID = '../examples/cassiers-tifs2020-sbox.c'
source_filename = "../examples/cassiers-tifs2020-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [37 x i8] c"../examples/cassiers-tifs2020-sbox.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 54 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 72 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 102 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 125 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 131 }], section "llvm.metadata"

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
  %r = alloca [1 x [1 x i8]], align 1
  %s = alloca [1 x [1 x i8]], align 1
  %p0 = alloca [1 x [1 x i8]], align 1
  %p1 = alloca [1 x [1 x i8]], align 1
  %z = alloca [1 x [1 x i8]], align 1
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
  store i8* %12, i8** %a.addr.i149, align 8
  %13 = load i8*, i8** %a.addr.i149, align 8
  store i8* %13, i8** %a.addr.i.i145, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146, align 8
  store i32 0, i32* %i.i.i148, align 4
  br label %for.cond.i.i151

for.cond.i.i151:                                  ; preds = %for.body.i.i160, %xors.exit
  %14 = load i32, i32* %i.i.i148, align 4
  %cmp.i.i150 = icmp sle i32 %14, 0
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
  %cmp10 = icmp sle i32 %22, 0
  br i1 %cmp10, label %for.body, label %for.end29

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
  %30 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom23
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24, i64 0, i64 %idxprom25
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
  %cmp32 = icmp sle i32 %34, 0
  br i1 %cmp32, label %for.body34, label %for.end101

for.body34:                                       ; preds = %for.cond31
  store i32 0, i32* %j35, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc96, %for.body34
  %35 = load i32, i32* %j35, align 4
  %cmp37 = icmp sle i32 %35, 0
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
  %arrayidx46 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom45
  %42 = load i32, i32* %j35, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46, i64 0, i64 %idxprom47
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %xor = xor i32 %conv44, %conv49
  %conv50 = trunc i32 %xor to i8
  %44 = load i32, i32* %i30, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s, i64 0, i64 %idxprom51
  %45 = load i32, i32* %j35, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52, i64 0, i64 %idxprom53
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
  %arrayidx61 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom60
  %50 = load i32, i32* %j35, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61, i64 0, i64 %idxprom62
  %51 = load i8, i8* %arrayidx63, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %conv59, i8 zeroext %51)
  %52 = load i32, i32* %i30, align 4
  %idxprom65 = sext i32 %52 to i64
  %arrayidx66 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0, i64 0, i64 %idxprom65
  %53 = load i32, i32* %j35, align 4
  %idxprom67 = sext i32 %53 to i64
  %arrayidx68 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66, i64 0, i64 %idxprom67
  store i8 %call64, i8* %arrayidx68, align 1
  %54 = load i8*, i8** %a.addr, align 8
  %55 = load i32, i32* %i30, align 4
  %idxprom69 = sext i32 %55 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %54, i64 %idxprom69
  %56 = load i8, i8* %arrayidx70, align 1
  %57 = load i32, i32* %i30, align 4
  %idxprom71 = sext i32 %57 to i64
  %arrayidx72 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s, i64 0, i64 %idxprom71
  %58 = load i32, i32* %j35, align 4
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72, i64 0, i64 %idxprom73
  %59 = load i8, i8* %arrayidx74, align 1
  %call75 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %59)
  %60 = load i32, i32* %i30, align 4
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1, i64 0, i64 %idxprom76
  %61 = load i32, i32* %j35, align 4
  %idxprom78 = sext i32 %61 to i64
  %arrayidx79 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77, i64 0, i64 %idxprom78
  store i8 %call75, i8* %arrayidx79, align 1
  %62 = load i32, i32* %i30, align 4
  %idxprom80 = sext i32 %62 to i64
  %arrayidx81 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0, i64 0, i64 %idxprom80
  %63 = load i32, i32* %j35, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81, i64 0, i64 %idxprom82
  %64 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %65 = load i32, i32* %i30, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1, i64 0, i64 %idxprom85
  %66 = load i32, i32* %j35, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86, i64 0, i64 %idxprom87
  %67 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %67 to i32
  %xor90 = xor i32 %conv84, %conv89
  %conv91 = trunc i32 %xor90 to i8
  %68 = load i32, i32* %i30, align 4
  %idxprom92 = sext i32 %68 to i64
  %arrayidx93 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 %idxprom92
  %69 = load i32, i32* %j35, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93, i64 0, i64 %idxprom94
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
  %cmp104 = icmp sle i32 %72, 0
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
  %cmp116 = icmp sle i32 %81, 0
  br i1 %cmp116, label %for.body118, label %for.end135

for.body118:                                      ; preds = %for.cond115
  %82 = load i32, i32* %j114, align 4
  %83 = load i32, i32* %i102, align 4
  %cmp119 = icmp ne i32 %82, %83
  br i1 %cmp119, label %if.then121, label %if.end132

if.then121:                                       ; preds = %for.body118
  %84 = load i32, i32* %i102, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 %idxprom122
  %85 = load i32, i32* %j114, align 4
  %idxprom124 = sext i32 %85 to i64
  %arrayidx125 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123, i64 0, i64 %idxprom124
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
  store i32 0, i32* %i.i.i165, align 4
  br label %for.cond.i.i168

for.cond.i.i168:                                  ; preds = %for.body.i.i177, %for.end138
  %96 = load i32, i32* %i.i.i165, align 4
  %cmp.i.i167 = icmp sle i32 %96, 0
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
  %a.addr.i.i762 = alloca i8*, align 8
  %f.addr.i.i763 = alloca i8 (i8)*, align 8
  %result.i.i764 = alloca i8, align 1
  %i.i.i765 = alloca i32, align 4
  %a.addr.i766 = alloca i8*, align 8
  %x.addr.i758 = alloca i8, align 1
  %z.i759 = alloca i8, align 1
  %y.i = alloca i8, align 1
  %w.i = alloca i8, align 1
  %a.addr.i.i162.i557 = alloca i8*, align 8
  %f.addr.i.i163.i558 = alloca i8 (i8)*, align 8
  %result.i.i164.i559 = alloca i8, align 1
  %i.i.i165.i560 = alloca i32, align 4
  %a.addr.i166.i561 = alloca i8*, align 8
  %a.addr.i.i145.i562 = alloca i8*, align 8
  %f.addr.i.i146.i563 = alloca i8 (i8)*, align 8
  %result.i.i147.i564 = alloca i8, align 1
  %i.i.i148.i565 = alloca i32, align 4
  %a.addr.i149.i566 = alloca i8*, align 8
  %a.addr.i.i.i567 = alloca i8*, align 8
  %f.addr.i.i.i568 = alloca i8 (i8)*, align 8
  %result.i.i.i569 = alloca i8, align 1
  %i.i.i.i570 = alloca i32, align 4
  %a.addr.i.i571 = alloca i8*, align 8
  %a.addr.i572 = alloca i8*, align 8
  %b.addr.i573 = alloca i8*, align 8
  %c.addr.i574 = alloca i8*, align 8
  %A.i575 = alloca i8, align 1
  %B.i576 = alloca i8, align 1
  %i.i582 = alloca i32, align 4
  %j.i583 = alloca i32, align 4
  %i30.i584 = alloca i32, align 4
  %j35.i585 = alloca i32, align 4
  %i102.i586 = alloca i32, align 4
  %j114.i587 = alloca i32, align 4
  %a.addr.i.i162.i356 = alloca i8*, align 8
  %f.addr.i.i163.i357 = alloca i8 (i8)*, align 8
  %result.i.i164.i358 = alloca i8, align 1
  %i.i.i165.i359 = alloca i32, align 4
  %a.addr.i166.i360 = alloca i8*, align 8
  %a.addr.i.i145.i361 = alloca i8*, align 8
  %f.addr.i.i146.i362 = alloca i8 (i8)*, align 8
  %result.i.i147.i363 = alloca i8, align 1
  %i.i.i148.i364 = alloca i32, align 4
  %a.addr.i149.i365 = alloca i8*, align 8
  %a.addr.i.i.i366 = alloca i8*, align 8
  %f.addr.i.i.i367 = alloca i8 (i8)*, align 8
  %result.i.i.i368 = alloca i8, align 1
  %i.i.i.i369 = alloca i32, align 4
  %a.addr.i.i370 = alloca i8*, align 8
  %a.addr.i371 = alloca i8*, align 8
  %b.addr.i372 = alloca i8*, align 8
  %c.addr.i373 = alloca i8*, align 8
  %A.i374 = alloca i8, align 1
  %B.i375 = alloca i8, align 1
  %i.i381 = alloca i32, align 4
  %j.i382 = alloca i32, align 4
  %i30.i383 = alloca i32, align 4
  %j35.i384 = alloca i32, align 4
  %i102.i385 = alloca i32, align 4
  %j114.i386 = alloca i32, align 4
  %from.addr.i341 = alloca i8*, align 8
  %to.addr.i342 = alloca i8*, align 8
  %f.addr.i343 = alloca i8 (i8)*, align 8
  %i.i344 = alloca i32, align 4
  %a.addr.i.i162.i140 = alloca i8*, align 8
  %f.addr.i.i163.i141 = alloca i8 (i8)*, align 8
  %result.i.i164.i142 = alloca i8, align 1
  %i.i.i165.i143 = alloca i32, align 4
  %a.addr.i166.i144 = alloca i8*, align 8
  %a.addr.i.i145.i145 = alloca i8*, align 8
  %f.addr.i.i146.i146 = alloca i8 (i8)*, align 8
  %result.i.i147.i147 = alloca i8, align 1
  %i.i.i148.i148 = alloca i32, align 4
  %a.addr.i149.i149 = alloca i8*, align 8
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
  %i.i165 = alloca i32, align 4
  %j.i166 = alloca i32, align 4
  %i30.i167 = alloca i32, align 4
  %j35.i168 = alloca i32, align 4
  %i102.i169 = alloca i32, align 4
  %j114.i170 = alloca i32, align 4
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
  %r.i = alloca [1 x [1 x i8]], align 1
  %s.i = alloca [1 x [1 x i8]], align 1
  %p0.i = alloca [1 x [1 x i8]], align 1
  %p1.i = alloca [1 x [1 x i8]], align 1
  %z.i = alloca [1 x [1 x i8]], align 1
  %i.i40 = alloca i32, align 4
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
  %z = alloca [1 x i8], align 1
  %w = alloca [1 x i8], align 1
  %u = alloca [1 x i8], align 1
  %v = alloca [1 x i8], align 1
  %m = alloca [1 x i8], align 1
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
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i, align 8
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
  %arraydecay4 = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
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
  %cmp.i.i.i = icmp sle i32 %23, 0
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
  %cmp5.i = icmp sle i32 %conv4.i, 0
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
  %cmp.i.i26.i = icmp sle i32 %43, 0
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
  %arraydecay5 = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %51 = load i8*, i8** %x.addr, align 8
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
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
  %cmp.i.i.i43 = icmp sle i32 %55, 0
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
  store i8* %64, i8** %a.addr.i149.i, align 8
  %65 = load i8*, i8** %a.addr.i149.i, align 8
  store i8* %65, i8** %a.addr.i.i145.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i, align 8
  store i32 0, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

for.cond.i.i151.i:                                ; preds = %for.body.i.i160.i, %xors.exit.i55
  %66 = load i32, i32* %i.i.i148.i, align 4
  %cmp.i.i150.i = icmp sle i32 %66, 0
  br i1 %cmp.i.i150.i, label %for.body.i.i160.i, label %xors.exit161.i

for.body.i.i160.i:                                ; preds = %for.cond.i.i151.i
  %67 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i, align 8
  %68 = load i8*, i8** %a.addr.i.i145.i, align 8
  %69 = load i32, i32* %i.i.i148.i, align 4
  %idxprom.i.i152.i = sext i32 %69 to i64
  %arrayidx.i.i153.i = getelementptr inbounds i8, i8* %68, i64 %idxprom.i.i152.i
  %70 = load i8, i8* %arrayidx.i.i153.i, align 1
  %call.i.i154.i = call zeroext i8 %67(i8 zeroext %70) #3
  %conv.i.i155.i = zext i8 %call.i.i154.i to i32
  %71 = load i8, i8* %result.i.i147.i, align 1
  %conv1.i.i156.i = zext i8 %71 to i32
  %xor.i.i157.i = xor i32 %conv1.i.i156.i, %conv.i.i155.i
  %conv2.i.i158.i = trunc i32 %xor.i.i157.i to i8
  store i8 %conv2.i.i158.i, i8* %result.i.i147.i, align 1
  %72 = load i32, i32* %i.i.i148.i, align 4
  %inc.i.i159.i = add nsw i32 %72, 1
  store i32 %inc.i.i159.i, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

xors.exit161.i:                                   ; preds = %for.cond.i.i151.i
  %73 = load i8, i8* %result.i.i147.i, align 1
  %conv7.i = zext i8 %73 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  store i32 0, i32* %i.i40, align 4
  br label %for.cond.i56

for.cond.i56:                                     ; preds = %for.end.i61, %xors.exit161.i
  %74 = load i32, i32* %i.i40, align 4
  %cmp10.i = icmp sle i32 %74, 0
  br i1 %cmp10.i, label %for.body.i57, label %for.end29.i

for.body.i57:                                     ; preds = %for.cond.i56
  %75 = load i32, i32* %i.i40, align 4
  %add.i = add nsw i32 %75, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i57
  %76 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %76, 0
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i61

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %77 = load i32, i32* %i.i40, align 4
  %idxprom.i58 = sext i32 %77 to i64
  %arrayidx.i59 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i58
  %78 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %78 to i64
  %arrayidx18.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i59, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %79 = load i32, i32* %i.i40, align 4
  %idxprom19.i = sext i32 %79 to i64
  %arrayidx20.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %80 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %80 to i64
  %arrayidx22.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %81 = load i8, i8* %arrayidx22.i, align 1
  %82 = load i32, i32* %j.i, align 4
  %idxprom23.i = sext i32 %82 to i64
  %arrayidx24.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i
  %83 = load i32, i32* %i.i40, align 4
  %idxprom25.i = sext i32 %83 to i64
  %arrayidx26.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i, i64 0, i64 %idxprom25.i
  store i8 %81, i8* %arrayidx26.i, align 1
  %84 = load i32, i32* %j.i, align 4
  %inc.i60 = add nsw i32 %84, 1
  store i32 %inc.i60, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i61:                                      ; preds = %for.cond12.i
  %85 = load i32, i32* %i.i40, align 4
  %inc28.i = add nsw i32 %85, 1
  store i32 %inc28.i, i32* %i.i40, align 4
  br label %for.cond.i56

for.end29.i:                                      ; preds = %for.cond.i56
  store i32 0, i32* %i30.i, align 4
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.end98.i, %for.end29.i
  %86 = load i32, i32* %i30.i, align 4
  %cmp32.i = icmp sle i32 %86, 0
  br i1 %cmp32.i, label %for.body34.i, label %for.end101.i

for.body34.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %j35.i, align 4
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %if.end.i, %for.body34.i
  %87 = load i32, i32* %j35.i, align 4
  %cmp37.i = icmp sle i32 %87, 0
  br i1 %cmp37.i, label %for.body39.i, label %for.end98.i

for.body39.i:                                     ; preds = %for.cond36.i
  %88 = load i32, i32* %j35.i, align 4
  %89 = load i32, i32* %i30.i, align 4
  %cmp40.i = icmp ne i32 %88, %89
  br i1 %cmp40.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body39.i
  %90 = load i8*, i8** %b.addr.i, align 8
  %91 = load i32, i32* %j35.i, align 4
  %idxprom42.i = sext i32 %91 to i64
  %arrayidx43.i = getelementptr inbounds i8, i8* %90, i64 %idxprom42.i
  %92 = load i8, i8* %arrayidx43.i, align 1
  %conv44.i = zext i8 %92 to i32
  %93 = load i32, i32* %i30.i, align 4
  %idxprom45.i = sext i32 %93 to i64
  %arrayidx46.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i
  %94 = load i32, i32* %j35.i, align 4
  %idxprom47.i = sext i32 %94 to i64
  %arrayidx48.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i, i64 0, i64 %idxprom47.i
  %95 = load i8, i8* %arrayidx48.i, align 1
  %conv49.i = zext i8 %95 to i32
  %xor.i62 = xor i32 %conv44.i, %conv49.i
  %conv50.i = trunc i32 %xor.i62 to i8
  %96 = load i32, i32* %i30.i, align 4
  %idxprom51.i = sext i32 %96 to i64
  %arrayidx52.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i
  %97 = load i32, i32* %j35.i, align 4
  %idxprom53.i = sext i32 %97 to i64
  %arrayidx54.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i, i64 0, i64 %idxprom53.i
  store i8 %conv50.i, i8* %arrayidx54.i, align 1
  %98 = load i8*, i8** %a.addr.i39, align 8
  %99 = load i32, i32* %i30.i, align 4
  %idxprom55.i = sext i32 %99 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %98, i64 %idxprom55.i
  %100 = load i8, i8* %arrayidx56.i, align 1
  %conv57.i = zext i8 %100 to i32
  %xor58.i = xor i32 %conv57.i, 1
  %conv59.i = trunc i32 %xor58.i to i8
  %101 = load i32, i32* %i30.i, align 4
  %idxprom60.i = sext i32 %101 to i64
  %arrayidx61.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i
  %102 = load i32, i32* %j35.i, align 4
  %idxprom62.i = sext i32 %102 to i64
  %arrayidx63.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i, i64 0, i64 %idxprom62.i
  %103 = load i8, i8* %arrayidx63.i, align 1
  %call64.i = call zeroext i8 @mult(i8 zeroext %conv59.i, i8 zeroext %103) #3
  %104 = load i32, i32* %i30.i, align 4
  %idxprom65.i = sext i32 %104 to i64
  %arrayidx66.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i
  %105 = load i32, i32* %j35.i, align 4
  %idxprom67.i = sext i32 %105 to i64
  %arrayidx68.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i, i64 0, i64 %idxprom67.i
  store i8 %call64.i, i8* %arrayidx68.i, align 1
  %106 = load i8*, i8** %a.addr.i39, align 8
  %107 = load i32, i32* %i30.i, align 4
  %idxprom69.i = sext i32 %107 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %106, i64 %idxprom69.i
  %108 = load i8, i8* %arrayidx70.i, align 1
  %109 = load i32, i32* %i30.i, align 4
  %idxprom71.i = sext i32 %109 to i64
  %arrayidx72.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i
  %110 = load i32, i32* %j35.i, align 4
  %idxprom73.i = sext i32 %110 to i64
  %arrayidx74.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i, i64 0, i64 %idxprom73.i
  %111 = load i8, i8* %arrayidx74.i, align 1
  %call75.i = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %111) #3
  %112 = load i32, i32* %i30.i, align 4
  %idxprom76.i = sext i32 %112 to i64
  %arrayidx77.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i
  %113 = load i32, i32* %j35.i, align 4
  %idxprom78.i = sext i32 %113 to i64
  %arrayidx79.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i, i64 0, i64 %idxprom78.i
  store i8 %call75.i, i8* %arrayidx79.i, align 1
  %114 = load i32, i32* %i30.i, align 4
  %idxprom80.i = sext i32 %114 to i64
  %arrayidx81.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i
  %115 = load i32, i32* %j35.i, align 4
  %idxprom82.i = sext i32 %115 to i64
  %arrayidx83.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i, i64 0, i64 %idxprom82.i
  %116 = load i8, i8* %arrayidx83.i, align 1
  %conv84.i = zext i8 %116 to i32
  %117 = load i32, i32* %i30.i, align 4
  %idxprom85.i = sext i32 %117 to i64
  %arrayidx86.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i
  %118 = load i32, i32* %j35.i, align 4
  %idxprom87.i = sext i32 %118 to i64
  %arrayidx88.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i, i64 0, i64 %idxprom87.i
  %119 = load i8, i8* %arrayidx88.i, align 1
  %conv89.i = zext i8 %119 to i32
  %xor90.i = xor i32 %conv84.i, %conv89.i
  %conv91.i = trunc i32 %xor90.i to i8
  %120 = load i32, i32* %i30.i, align 4
  %idxprom92.i = sext i32 %120 to i64
  %arrayidx93.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i
  %121 = load i32, i32* %j35.i, align 4
  %idxprom94.i = sext i32 %121 to i64
  %arrayidx95.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i, i64 0, i64 %idxprom94.i
  store i8 %conv91.i, i8* %arrayidx95.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body39.i
  %122 = load i32, i32* %j35.i, align 4
  %inc97.i = add nsw i32 %122, 1
  store i32 %inc97.i, i32* %j35.i, align 4
  br label %for.cond36.i

for.end98.i:                                      ; preds = %for.cond36.i
  %123 = load i32, i32* %i30.i, align 4
  %inc100.i = add nsw i32 %123, 1
  store i32 %inc100.i, i32* %i30.i, align 4
  br label %for.cond31.i

for.end101.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %i102.i, align 4
  br label %for.cond103.i

for.cond103.i:                                    ; preds = %for.end135.i, %for.end101.i
  %124 = load i32, i32* %i102.i, align 4
  %cmp104.i = icmp sle i32 %124, 0
  br i1 %cmp104.i, label %for.body106.i, label %for.end138.i

for.body106.i:                                    ; preds = %for.cond103.i
  %125 = load i8*, i8** %a.addr.i39, align 8
  %126 = load i32, i32* %i102.i, align 4
  %idxprom107.i = sext i32 %126 to i64
  %arrayidx108.i = getelementptr inbounds i8, i8* %125, i64 %idxprom107.i
  %127 = load i8, i8* %arrayidx108.i, align 1
  %128 = load i8*, i8** %b.addr.i, align 8
  %129 = load i32, i32* %i102.i, align 4
  %idxprom109.i = sext i32 %129 to i64
  %arrayidx110.i = getelementptr inbounds i8, i8* %128, i64 %idxprom109.i
  %130 = load i8, i8* %arrayidx110.i, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %127, i8 zeroext %130) #3
  %131 = load i8*, i8** %c.addr.i, align 8
  %132 = load i32, i32* %i102.i, align 4
  %idxprom112.i = sext i32 %132 to i64
  %arrayidx113.i = getelementptr inbounds i8, i8* %131, i64 %idxprom112.i
  store i8 %call111.i, i8* %arrayidx113.i, align 1
  store i32 0, i32* %j114.i, align 4
  br label %for.cond115.i

for.cond115.i:                                    ; preds = %if.end132.i, %for.body106.i
  %133 = load i32, i32* %j114.i, align 4
  %cmp116.i = icmp sle i32 %133, 0
  br i1 %cmp116.i, label %for.body118.i, label %for.end135.i

for.body118.i:                                    ; preds = %for.cond115.i
  %134 = load i32, i32* %j114.i, align 4
  %135 = load i32, i32* %i102.i, align 4
  %cmp119.i = icmp ne i32 %134, %135
  br i1 %cmp119.i, label %if.then121.i, label %if.end132.i

if.then121.i:                                     ; preds = %for.body118.i
  %136 = load i32, i32* %i102.i, align 4
  %idxprom122.i = sext i32 %136 to i64
  %arrayidx123.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i
  %137 = load i32, i32* %j114.i, align 4
  %idxprom124.i = sext i32 %137 to i64
  %arrayidx125.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i, i64 0, i64 %idxprom124.i
  %138 = load i8, i8* %arrayidx125.i, align 1
  %conv126.i = zext i8 %138 to i32
  %139 = load i8*, i8** %c.addr.i, align 8
  %140 = load i32, i32* %i102.i, align 4
  %idxprom127.i = sext i32 %140 to i64
  %arrayidx128.i = getelementptr inbounds i8, i8* %139, i64 %idxprom127.i
  %141 = load i8, i8* %arrayidx128.i, align 1
  %conv129.i = zext i8 %141 to i32
  %xor130.i = xor i32 %conv129.i, %conv126.i
  %conv131.i = trunc i32 %xor130.i to i8
  store i8 %conv131.i, i8* %arrayidx128.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then121.i, %for.body118.i
  %142 = load i32, i32* %j114.i, align 4
  %inc134.i = add nsw i32 %142, 1
  store i32 %inc134.i, i32* %j114.i, align 4
  br label %for.cond115.i

for.end135.i:                                     ; preds = %for.cond115.i
  %143 = load i32, i32* %i102.i, align 4
  %inc137.i = add nsw i32 %143, 1
  store i32 %inc137.i, i32* %i102.i, align 4
  br label %for.cond103.i

for.end138.i:                                     ; preds = %for.cond103.i
  %144 = load i8, i8* %A.i, align 1
  %145 = load i8, i8* %B.i, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #3
  %conv140.i = zext i8 %call139.i to i32
  %146 = load i8*, i8** %c.addr.i, align 8
  store i8* %146, i8** %a.addr.i166.i, align 8
  %147 = load i8*, i8** %a.addr.i166.i, align 8
  store i8* %147, i8** %a.addr.i.i162.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i, align 8
  store i32 0, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

for.cond.i.i168.i:                                ; preds = %for.body.i.i177.i, %for.end138.i
  %148 = load i32, i32* %i.i.i165.i, align 4
  %cmp.i.i167.i = icmp sle i32 %148, 0
  br i1 %cmp.i.i167.i, label %for.body.i.i177.i, label %sec_mult.exit

for.body.i.i177.i:                                ; preds = %for.cond.i.i168.i
  %149 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i, align 8
  %150 = load i8*, i8** %a.addr.i.i162.i, align 8
  %151 = load i32, i32* %i.i.i165.i, align 4
  %idxprom.i.i169.i = sext i32 %151 to i64
  %arrayidx.i.i170.i = getelementptr inbounds i8, i8* %150, i64 %idxprom.i.i169.i
  %152 = load i8, i8* %arrayidx.i.i170.i, align 1
  %call.i.i171.i = call zeroext i8 %149(i8 zeroext %152) #3
  %conv.i.i172.i = zext i8 %call.i.i171.i to i32
  %153 = load i8, i8* %result.i.i164.i, align 1
  %conv1.i.i173.i = zext i8 %153 to i32
  %xor.i.i174.i = xor i32 %conv1.i.i173.i, %conv.i.i172.i
  %conv2.i.i175.i = trunc i32 %xor.i.i174.i to i8
  store i8 %conv2.i.i175.i, i8* %result.i.i164.i, align 1
  %154 = load i32, i32* %i.i.i165.i, align 4
  %inc.i.i176.i = add nsw i32 %154, 1
  store i32 %inc.i.i176.i, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

sec_mult.exit:                                    ; preds = %for.cond.i.i168.i
  %155 = load i8, i8* %result.i.i164.i, align 1
  %conv142.i = zext i8 %155 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %w, i64 0, i64 0
  store i8* %arraydecay7, i8** %from.addr.i63, align 8
  store i8* %arraydecay8, i8** %to.addr.i64, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i65, align 8
  store i32 0, i32* %i.i66, align 4
  br label %for.cond.i68

for.cond.i68:                                     ; preds = %for.body.i74, %sec_mult.exit
  %156 = load i32, i32* %i.i66, align 4
  %cmp.i67 = icmp sle i32 %156, 0
  br i1 %cmp.i67, label %for.body.i74, label %transform.exit77

for.body.i74:                                     ; preds = %for.cond.i68
  %157 = load i8 (i8)*, i8 (i8)** %f.addr.i65, align 8
  %158 = load i8*, i8** %from.addr.i63, align 8
  %159 = load i32, i32* %i.i66, align 4
  %idxprom.i69 = sext i32 %159 to i64
  %arrayidx.i70 = getelementptr inbounds i8, i8* %158, i64 %idxprom.i69
  %160 = load i8, i8* %arrayidx.i70, align 1
  %call.i71 = call zeroext i8 %157(i8 zeroext %160) #3
  %161 = load i8*, i8** %to.addr.i64, align 8
  %162 = load i32, i32* %i.i66, align 4
  %idxprom1.i72 = sext i32 %162 to i64
  %arrayidx2.i73 = getelementptr inbounds i8, i8* %161, i64 %idxprom1.i72
  store i8 %call.i71, i8* %arrayidx2.i73, align 1
  %163 = load i32, i32* %i.i66, align 4
  %inc.i75 = add nsw i32 %163, 1
  store i32 %inc.i75, i32* %i.i66, align 4
  br label %for.cond.i68

transform.exit77:                                 ; preds = %for.cond.i68
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %w, i64 0, i64 0
  store i8* %arraydecay9, i8** %x.addr.i88, align 8
  %call.i92 = call zeroext i8 (...) @rand() #3
  store i8 %call.i92, i8* %X.i89, align 1
  %164 = load i8, i8* %X.i89, align 1
  %conv.i93 = zext i8 %164 to i32
  %165 = load i8*, i8** %x.addr.i88, align 8
  store i8* %165, i8** %a.addr.i.i87, align 8
  %166 = load i8*, i8** %a.addr.i.i87, align 8
  store i8* %166, i8** %a.addr.i.i.i83, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i84, align 8
  store i32 0, i32* %i.i.i.i86, align 4
  br label %for.cond.i.i.i95

for.cond.i.i.i95:                                 ; preds = %for.body.i.i.i104, %transform.exit77
  %167 = load i32, i32* %i.i.i.i86, align 4
  %cmp.i.i.i94 = icmp sle i32 %167, 0
  br i1 %cmp.i.i.i94, label %for.body.i.i.i104, label %xors.exit.i107

for.body.i.i.i104:                                ; preds = %for.cond.i.i.i95
  %168 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i84, align 8
  %169 = load i8*, i8** %a.addr.i.i.i83, align 8
  %170 = load i32, i32* %i.i.i.i86, align 4
  %idxprom.i.i.i96 = sext i32 %170 to i64
  %arrayidx.i.i.i97 = getelementptr inbounds i8, i8* %169, i64 %idxprom.i.i.i96
  %171 = load i8, i8* %arrayidx.i.i.i97, align 1
  %call.i.i.i98 = call zeroext i8 %168(i8 zeroext %171) #3
  %conv.i.i.i99 = zext i8 %call.i.i.i98 to i32
  %172 = load i8, i8* %result.i.i.i85, align 1
  %conv1.i.i.i100 = zext i8 %172 to i32
  %xor.i.i.i101 = xor i32 %conv1.i.i.i100, %conv.i.i.i99
  %conv2.i.i.i102 = trunc i32 %xor.i.i.i101 to i8
  store i8 %conv2.i.i.i102, i8* %result.i.i.i85, align 1
  %173 = load i32, i32* %i.i.i.i86, align 4
  %inc.i.i.i103 = add nsw i32 %173, 1
  store i32 %inc.i.i.i103, i32* %i.i.i.i86, align 4
  br label %for.cond.i.i.i95

xors.exit.i107:                                   ; preds = %for.cond.i.i.i95
  %174 = load i8, i8* %result.i.i.i85, align 1
  %conv2.i105 = zext i8 %174 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  store i8 1, i8* %i.i90, align 1
  br label %for.cond.i110

for.cond.i110:                                    ; preds = %for.body.i122, %xors.exit.i107
  %175 = load i8, i8* %i.i90, align 1
  %conv4.i108 = zext i8 %175 to i32
  %cmp5.i109 = icmp sle i32 %conv4.i108, 0
  br i1 %cmp5.i109, label %for.body.i122, label %for.end.i125

for.body.i122:                                    ; preds = %for.cond.i110
  %call7.i111 = call zeroext i8 (...) @rand() #3
  store i8 %call7.i111, i8* %tmp.i91, align 1
  %176 = load i8, i8* %tmp.i91, align 1
  %conv8.i112 = zext i8 %176 to i32
  %177 = load i8*, i8** %x.addr.i88, align 8
  %178 = load i8, i8* %177, align 1
  %conv9.i113 = zext i8 %178 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %177, align 1
  %179 = load i8, i8* %tmp.i91, align 1
  %conv11.i116 = zext i8 %179 to i32
  %180 = load i8*, i8** %x.addr.i88, align 8
  %181 = load i8, i8* %i.i90, align 1
  %idxprom.i117 = zext i8 %181 to i64
  %arrayidx12.i118 = getelementptr inbounds i8, i8* %180, i64 %idxprom.i117
  %182 = load i8, i8* %arrayidx12.i118, align 1
  %conv13.i119 = zext i8 %182 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %arrayidx12.i118, align 1
  %183 = load i8, i8* %i.i90, align 1
  %inc.i123 = add i8 %183, 1
  store i8 %inc.i123, i8* %i.i90, align 1
  br label %for.cond.i110

for.end.i125:                                     ; preds = %for.cond.i110
  %184 = load i8, i8* %X.i89, align 1
  %conv16.i124 = zext i8 %184 to i32
  %185 = load i8*, i8** %x.addr.i88, align 8
  store i8* %185, i8** %a.addr.i25.i82, align 8
  %186 = load i8*, i8** %a.addr.i25.i82, align 8
  store i8* %186, i8** %a.addr.i.i21.i78, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i79, align 8
  store i32 0, i32* %i.i.i24.i81, align 4
  br label %for.cond.i.i27.i127

for.cond.i.i27.i127:                              ; preds = %for.body.i.i36.i136, %for.end.i125
  %187 = load i32, i32* %i.i.i24.i81, align 4
  %cmp.i.i26.i126 = icmp sle i32 %187, 0
  br i1 %cmp.i.i26.i126, label %for.body.i.i36.i136, label %refresh_masks.exit139

for.body.i.i36.i136:                              ; preds = %for.cond.i.i27.i127
  %188 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i79, align 8
  %189 = load i8*, i8** %a.addr.i.i21.i78, align 8
  %190 = load i32, i32* %i.i.i24.i81, align 4
  %idxprom.i.i28.i128 = sext i32 %190 to i64
  %arrayidx.i.i29.i129 = getelementptr inbounds i8, i8* %189, i64 %idxprom.i.i28.i128
  %191 = load i8, i8* %arrayidx.i.i29.i129, align 1
  %call.i.i30.i130 = call zeroext i8 %188(i8 zeroext %191) #3
  %conv.i.i31.i131 = zext i8 %call.i.i30.i130 to i32
  %192 = load i8, i8* %result.i.i23.i80, align 1
  %conv1.i.i32.i132 = zext i8 %192 to i32
  %xor.i.i33.i133 = xor i32 %conv1.i.i32.i132, %conv.i.i31.i131
  %conv2.i.i34.i134 = trunc i32 %xor.i.i33.i133 to i8
  store i8 %conv2.i.i34.i134, i8* %result.i.i23.i80, align 1
  %193 = load i32, i32* %i.i.i24.i81, align 4
  %inc.i.i35.i135 = add nsw i32 %193, 1
  store i32 %inc.i.i35.i135, i32* %i.i.i24.i81, align 4
  br label %for.cond.i.i27.i127

refresh_masks.exit139:                            ; preds = %for.cond.i.i27.i127
  %194 = load i8, i8* %result.i.i23.i80, align 1
  %conv18.i137 = zext i8 %194 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  store i8* %arraydecay10, i8** %a.addr.i155, align 8
  store i8* %arraydecay11, i8** %b.addr.i156, align 8
  store i8* %arraydecay12, i8** %c.addr.i157, align 8
  %call.i171 = call zeroext i8 (...) @rand() #3
  store i8 %call.i171, i8* %A.i158, align 1
  %call1.i172 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i172, i8* %B.i159, align 1
  %195 = load i8, i8* %A.i158, align 1
  %conv.i173 = zext i8 %195 to i32
  %196 = load i8*, i8** %a.addr.i155, align 8
  store i8* %196, i8** %a.addr.i.i154, align 8
  %197 = load i8*, i8** %a.addr.i.i154, align 8
  store i8* %197, i8** %a.addr.i.i.i150, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i151, align 8
  store i32 0, i32* %i.i.i.i153, align 4
  br label %for.cond.i.i.i175

for.cond.i.i.i175:                                ; preds = %for.body.i.i.i184, %refresh_masks.exit139
  %198 = load i32, i32* %i.i.i.i153, align 4
  %cmp.i.i.i174 = icmp sle i32 %198, 0
  br i1 %cmp.i.i.i174, label %for.body.i.i.i184, label %xors.exit.i188

for.body.i.i.i184:                                ; preds = %for.cond.i.i.i175
  %199 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i151, align 8
  %200 = load i8*, i8** %a.addr.i.i.i150, align 8
  %201 = load i32, i32* %i.i.i.i153, align 4
  %idxprom.i.i.i176 = sext i32 %201 to i64
  %arrayidx.i.i.i177 = getelementptr inbounds i8, i8* %200, i64 %idxprom.i.i.i176
  %202 = load i8, i8* %arrayidx.i.i.i177, align 1
  %call.i.i.i178 = call zeroext i8 %199(i8 zeroext %202) #3
  %conv.i.i.i179 = zext i8 %call.i.i.i178 to i32
  %203 = load i8, i8* %result.i.i.i152, align 1
  %conv1.i.i.i180 = zext i8 %203 to i32
  %xor.i.i.i181 = xor i32 %conv1.i.i.i180, %conv.i.i.i179
  %conv2.i.i.i182 = trunc i32 %xor.i.i.i181 to i8
  store i8 %conv2.i.i.i182, i8* %result.i.i.i152, align 1
  %204 = load i32, i32* %i.i.i.i153, align 4
  %inc.i.i.i183 = add nsw i32 %204, 1
  store i32 %inc.i.i.i183, i32* %i.i.i.i153, align 4
  br label %for.cond.i.i.i175

xors.exit.i188:                                   ; preds = %for.cond.i.i.i175
  %205 = load i8, i8* %result.i.i.i152, align 1
  %conv3.i185 = zext i8 %205 to i32
  %cmp.i186 = icmp eq i32 %conv.i173, %conv3.i185
  call void @assume(i1 zeroext %cmp.i186) #3
  %206 = load i8, i8* %B.i159, align 1
  %conv5.i187 = zext i8 %206 to i32
  %207 = load i8*, i8** %b.addr.i156, align 8
  store i8* %207, i8** %a.addr.i149.i149, align 8
  %208 = load i8*, i8** %a.addr.i149.i149, align 8
  store i8* %208, i8** %a.addr.i.i145.i145, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i146, align 8
  store i32 0, i32* %i.i.i148.i148, align 4
  br label %for.cond.i.i151.i190

for.cond.i.i151.i190:                             ; preds = %for.body.i.i160.i199, %xors.exit.i188
  %209 = load i32, i32* %i.i.i148.i148, align 4
  %cmp.i.i150.i189 = icmp sle i32 %209, 0
  br i1 %cmp.i.i150.i189, label %for.body.i.i160.i199, label %xors.exit161.i202

for.body.i.i160.i199:                             ; preds = %for.cond.i.i151.i190
  %210 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i146, align 8
  %211 = load i8*, i8** %a.addr.i.i145.i145, align 8
  %212 = load i32, i32* %i.i.i148.i148, align 4
  %idxprom.i.i152.i191 = sext i32 %212 to i64
  %arrayidx.i.i153.i192 = getelementptr inbounds i8, i8* %211, i64 %idxprom.i.i152.i191
  %213 = load i8, i8* %arrayidx.i.i153.i192, align 1
  %call.i.i154.i193 = call zeroext i8 %210(i8 zeroext %213) #3
  %conv.i.i155.i194 = zext i8 %call.i.i154.i193 to i32
  %214 = load i8, i8* %result.i.i147.i147, align 1
  %conv1.i.i156.i195 = zext i8 %214 to i32
  %xor.i.i157.i196 = xor i32 %conv1.i.i156.i195, %conv.i.i155.i194
  %conv2.i.i158.i197 = trunc i32 %xor.i.i157.i196 to i8
  store i8 %conv2.i.i158.i197, i8* %result.i.i147.i147, align 1
  %215 = load i32, i32* %i.i.i148.i148, align 4
  %inc.i.i159.i198 = add nsw i32 %215, 1
  store i32 %inc.i.i159.i198, i32* %i.i.i148.i148, align 4
  br label %for.cond.i.i151.i190

xors.exit161.i202:                                ; preds = %for.cond.i.i151.i190
  %216 = load i8, i8* %result.i.i147.i147, align 1
  %conv7.i200 = zext i8 %216 to i32
  %cmp8.i201 = icmp eq i32 %conv5.i187, %conv7.i200
  call void @assume(i1 zeroext %cmp8.i201) #3
  store i32 0, i32* %i.i165, align 4
  br label %for.cond.i204

for.cond.i204:                                    ; preds = %for.end.i224, %xors.exit161.i202
  %217 = load i32, i32* %i.i165, align 4
  %cmp10.i203 = icmp sle i32 %217, 0
  br i1 %cmp10.i203, label %for.body.i206, label %for.end29.i226

for.body.i206:                                    ; preds = %for.cond.i204
  %218 = load i32, i32* %i.i165, align 4
  %add.i205 = add nsw i32 %218, 1
  store i32 %add.i205, i32* %j.i166, align 4
  br label %for.cond12.i208

for.cond12.i208:                                  ; preds = %for.body15.i222, %for.body.i206
  %219 = load i32, i32* %j.i166, align 4
  %cmp13.i207 = icmp sle i32 %219, 0
  br i1 %cmp13.i207, label %for.body15.i222, label %for.end.i224

for.body15.i222:                                  ; preds = %for.cond12.i208
  %call16.i209 = call zeroext i8 (...) @rand() #3
  %220 = load i32, i32* %i.i165, align 4
  %idxprom.i210 = sext i32 %220 to i64
  %arrayidx.i211 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i210
  %221 = load i32, i32* %j.i166, align 4
  %idxprom17.i212 = sext i32 %221 to i64
  %arrayidx18.i213 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i211, i64 0, i64 %idxprom17.i212
  store i8 %call16.i209, i8* %arrayidx18.i213, align 1
  %222 = load i32, i32* %i.i165, align 4
  %idxprom19.i214 = sext i32 %222 to i64
  %arrayidx20.i215 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i214
  %223 = load i32, i32* %j.i166, align 4
  %idxprom21.i216 = sext i32 %223 to i64
  %arrayidx22.i217 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i215, i64 0, i64 %idxprom21.i216
  %224 = load i8, i8* %arrayidx22.i217, align 1
  %225 = load i32, i32* %j.i166, align 4
  %idxprom23.i218 = sext i32 %225 to i64
  %arrayidx24.i219 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i218
  %226 = load i32, i32* %i.i165, align 4
  %idxprom25.i220 = sext i32 %226 to i64
  %arrayidx26.i221 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i219, i64 0, i64 %idxprom25.i220
  store i8 %224, i8* %arrayidx26.i221, align 1
  %227 = load i32, i32* %j.i166, align 4
  %inc.i223 = add nsw i32 %227, 1
  store i32 %inc.i223, i32* %j.i166, align 4
  br label %for.cond12.i208

for.end.i224:                                     ; preds = %for.cond12.i208
  %228 = load i32, i32* %i.i165, align 4
  %inc28.i225 = add nsw i32 %228, 1
  store i32 %inc28.i225, i32* %i.i165, align 4
  br label %for.cond.i204

for.end29.i226:                                   ; preds = %for.cond.i204
  store i32 0, i32* %i30.i167, align 4
  br label %for.cond31.i228

for.cond31.i228:                                  ; preds = %for.end98.i292, %for.end29.i226
  %229 = load i32, i32* %i30.i167, align 4
  %cmp32.i227 = icmp sle i32 %229, 0
  br i1 %cmp32.i227, label %for.body34.i229, label %for.end101.i294

for.body34.i229:                                  ; preds = %for.cond31.i228
  store i32 0, i32* %j35.i168, align 4
  br label %for.cond36.i231

for.cond36.i231:                                  ; preds = %if.end.i290, %for.body34.i229
  %230 = load i32, i32* %j35.i168, align 4
  %cmp37.i230 = icmp sle i32 %230, 0
  br i1 %cmp37.i230, label %for.body39.i233, label %for.end98.i292

for.body39.i233:                                  ; preds = %for.cond36.i231
  %231 = load i32, i32* %j35.i168, align 4
  %232 = load i32, i32* %i30.i167, align 4
  %cmp40.i232 = icmp ne i32 %231, %232
  br i1 %cmp40.i232, label %if.then.i289, label %if.end.i290

if.then.i289:                                     ; preds = %for.body39.i233
  %233 = load i8*, i8** %b.addr.i156, align 8
  %234 = load i32, i32* %j35.i168, align 4
  %idxprom42.i234 = sext i32 %234 to i64
  %arrayidx43.i235 = getelementptr inbounds i8, i8* %233, i64 %idxprom42.i234
  %235 = load i8, i8* %arrayidx43.i235, align 1
  %conv44.i236 = zext i8 %235 to i32
  %236 = load i32, i32* %i30.i167, align 4
  %idxprom45.i237 = sext i32 %236 to i64
  %arrayidx46.i238 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i237
  %237 = load i32, i32* %j35.i168, align 4
  %idxprom47.i239 = sext i32 %237 to i64
  %arrayidx48.i240 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i238, i64 0, i64 %idxprom47.i239
  %238 = load i8, i8* %arrayidx48.i240, align 1
  %conv49.i241 = zext i8 %238 to i32
  %xor.i242 = xor i32 %conv44.i236, %conv49.i241
  %conv50.i243 = trunc i32 %xor.i242 to i8
  %239 = load i32, i32* %i30.i167, align 4
  %idxprom51.i244 = sext i32 %239 to i64
  %arrayidx52.i245 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i244
  %240 = load i32, i32* %j35.i168, align 4
  %idxprom53.i246 = sext i32 %240 to i64
  %arrayidx54.i247 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i245, i64 0, i64 %idxprom53.i246
  store i8 %conv50.i243, i8* %arrayidx54.i247, align 1
  %241 = load i8*, i8** %a.addr.i155, align 8
  %242 = load i32, i32* %i30.i167, align 4
  %idxprom55.i248 = sext i32 %242 to i64
  %arrayidx56.i249 = getelementptr inbounds i8, i8* %241, i64 %idxprom55.i248
  %243 = load i8, i8* %arrayidx56.i249, align 1
  %conv57.i250 = zext i8 %243 to i32
  %xor58.i251 = xor i32 %conv57.i250, 1
  %conv59.i252 = trunc i32 %xor58.i251 to i8
  %244 = load i32, i32* %i30.i167, align 4
  %idxprom60.i253 = sext i32 %244 to i64
  %arrayidx61.i254 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i253
  %245 = load i32, i32* %j35.i168, align 4
  %idxprom62.i255 = sext i32 %245 to i64
  %arrayidx63.i256 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i254, i64 0, i64 %idxprom62.i255
  %246 = load i8, i8* %arrayidx63.i256, align 1
  %call64.i257 = call zeroext i8 @mult(i8 zeroext %conv59.i252, i8 zeroext %246) #3
  %247 = load i32, i32* %i30.i167, align 4
  %idxprom65.i258 = sext i32 %247 to i64
  %arrayidx66.i259 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i258
  %248 = load i32, i32* %j35.i168, align 4
  %idxprom67.i260 = sext i32 %248 to i64
  %arrayidx68.i261 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i259, i64 0, i64 %idxprom67.i260
  store i8 %call64.i257, i8* %arrayidx68.i261, align 1
  %249 = load i8*, i8** %a.addr.i155, align 8
  %250 = load i32, i32* %i30.i167, align 4
  %idxprom69.i262 = sext i32 %250 to i64
  %arrayidx70.i263 = getelementptr inbounds i8, i8* %249, i64 %idxprom69.i262
  %251 = load i8, i8* %arrayidx70.i263, align 1
  %252 = load i32, i32* %i30.i167, align 4
  %idxprom71.i264 = sext i32 %252 to i64
  %arrayidx72.i265 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i264
  %253 = load i32, i32* %j35.i168, align 4
  %idxprom73.i266 = sext i32 %253 to i64
  %arrayidx74.i267 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i265, i64 0, i64 %idxprom73.i266
  %254 = load i8, i8* %arrayidx74.i267, align 1
  %call75.i268 = call zeroext i8 @mult(i8 zeroext %251, i8 zeroext %254) #3
  %255 = load i32, i32* %i30.i167, align 4
  %idxprom76.i269 = sext i32 %255 to i64
  %arrayidx77.i270 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i269
  %256 = load i32, i32* %j35.i168, align 4
  %idxprom78.i271 = sext i32 %256 to i64
  %arrayidx79.i272 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i270, i64 0, i64 %idxprom78.i271
  store i8 %call75.i268, i8* %arrayidx79.i272, align 1
  %257 = load i32, i32* %i30.i167, align 4
  %idxprom80.i273 = sext i32 %257 to i64
  %arrayidx81.i274 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i273
  %258 = load i32, i32* %j35.i168, align 4
  %idxprom82.i275 = sext i32 %258 to i64
  %arrayidx83.i276 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i274, i64 0, i64 %idxprom82.i275
  %259 = load i8, i8* %arrayidx83.i276, align 1
  %conv84.i277 = zext i8 %259 to i32
  %260 = load i32, i32* %i30.i167, align 4
  %idxprom85.i278 = sext i32 %260 to i64
  %arrayidx86.i279 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i278
  %261 = load i32, i32* %j35.i168, align 4
  %idxprom87.i280 = sext i32 %261 to i64
  %arrayidx88.i281 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i279, i64 0, i64 %idxprom87.i280
  %262 = load i8, i8* %arrayidx88.i281, align 1
  %conv89.i282 = zext i8 %262 to i32
  %xor90.i283 = xor i32 %conv84.i277, %conv89.i282
  %conv91.i284 = trunc i32 %xor90.i283 to i8
  %263 = load i32, i32* %i30.i167, align 4
  %idxprom92.i285 = sext i32 %263 to i64
  %arrayidx93.i286 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i285
  %264 = load i32, i32* %j35.i168, align 4
  %idxprom94.i287 = sext i32 %264 to i64
  %arrayidx95.i288 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i286, i64 0, i64 %idxprom94.i287
  store i8 %conv91.i284, i8* %arrayidx95.i288, align 1
  br label %if.end.i290

if.end.i290:                                      ; preds = %if.then.i289, %for.body39.i233
  %265 = load i32, i32* %j35.i168, align 4
  %inc97.i291 = add nsw i32 %265, 1
  store i32 %inc97.i291, i32* %j35.i168, align 4
  br label %for.cond36.i231

for.end98.i292:                                   ; preds = %for.cond36.i231
  %266 = load i32, i32* %i30.i167, align 4
  %inc100.i293 = add nsw i32 %266, 1
  store i32 %inc100.i293, i32* %i30.i167, align 4
  br label %for.cond31.i228

for.end101.i294:                                  ; preds = %for.cond31.i228
  store i32 0, i32* %i102.i169, align 4
  br label %for.cond103.i296

for.cond103.i296:                                 ; preds = %for.end135.i322, %for.end101.i294
  %267 = load i32, i32* %i102.i169, align 4
  %cmp104.i295 = icmp sle i32 %267, 0
  br i1 %cmp104.i295, label %for.body106.i304, label %for.end138.i326

for.body106.i304:                                 ; preds = %for.cond103.i296
  %268 = load i8*, i8** %a.addr.i155, align 8
  %269 = load i32, i32* %i102.i169, align 4
  %idxprom107.i297 = sext i32 %269 to i64
  %arrayidx108.i298 = getelementptr inbounds i8, i8* %268, i64 %idxprom107.i297
  %270 = load i8, i8* %arrayidx108.i298, align 1
  %271 = load i8*, i8** %b.addr.i156, align 8
  %272 = load i32, i32* %i102.i169, align 4
  %idxprom109.i299 = sext i32 %272 to i64
  %arrayidx110.i300 = getelementptr inbounds i8, i8* %271, i64 %idxprom109.i299
  %273 = load i8, i8* %arrayidx110.i300, align 1
  %call111.i301 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %273) #3
  %274 = load i8*, i8** %c.addr.i157, align 8
  %275 = load i32, i32* %i102.i169, align 4
  %idxprom112.i302 = sext i32 %275 to i64
  %arrayidx113.i303 = getelementptr inbounds i8, i8* %274, i64 %idxprom112.i302
  store i8 %call111.i301, i8* %arrayidx113.i303, align 1
  store i32 0, i32* %j114.i170, align 4
  br label %for.cond115.i306

for.cond115.i306:                                 ; preds = %if.end132.i320, %for.body106.i304
  %276 = load i32, i32* %j114.i170, align 4
  %cmp116.i305 = icmp sle i32 %276, 0
  br i1 %cmp116.i305, label %for.body118.i308, label %for.end135.i322

for.body118.i308:                                 ; preds = %for.cond115.i306
  %277 = load i32, i32* %j114.i170, align 4
  %278 = load i32, i32* %i102.i169, align 4
  %cmp119.i307 = icmp ne i32 %277, %278
  br i1 %cmp119.i307, label %if.then121.i319, label %if.end132.i320

if.then121.i319:                                  ; preds = %for.body118.i308
  %279 = load i32, i32* %i102.i169, align 4
  %idxprom122.i309 = sext i32 %279 to i64
  %arrayidx123.i310 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i309
  %280 = load i32, i32* %j114.i170, align 4
  %idxprom124.i311 = sext i32 %280 to i64
  %arrayidx125.i312 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i310, i64 0, i64 %idxprom124.i311
  %281 = load i8, i8* %arrayidx125.i312, align 1
  %conv126.i313 = zext i8 %281 to i32
  %282 = load i8*, i8** %c.addr.i157, align 8
  %283 = load i32, i32* %i102.i169, align 4
  %idxprom127.i314 = sext i32 %283 to i64
  %arrayidx128.i315 = getelementptr inbounds i8, i8* %282, i64 %idxprom127.i314
  %284 = load i8, i8* %arrayidx128.i315, align 1
  %conv129.i316 = zext i8 %284 to i32
  %xor130.i317 = xor i32 %conv129.i316, %conv126.i313
  %conv131.i318 = trunc i32 %xor130.i317 to i8
  store i8 %conv131.i318, i8* %arrayidx128.i315, align 1
  br label %if.end132.i320

if.end132.i320:                                   ; preds = %if.then121.i319, %for.body118.i308
  %285 = load i32, i32* %j114.i170, align 4
  %inc134.i321 = add nsw i32 %285, 1
  store i32 %inc134.i321, i32* %j114.i170, align 4
  br label %for.cond115.i306

for.end135.i322:                                  ; preds = %for.cond115.i306
  %286 = load i32, i32* %i102.i169, align 4
  %inc137.i323 = add nsw i32 %286, 1
  store i32 %inc137.i323, i32* %i102.i169, align 4
  br label %for.cond103.i296

for.end138.i326:                                  ; preds = %for.cond103.i296
  %287 = load i8, i8* %A.i158, align 1
  %288 = load i8, i8* %B.i159, align 1
  %call139.i324 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %288) #3
  %conv140.i325 = zext i8 %call139.i324 to i32
  %289 = load i8*, i8** %c.addr.i157, align 8
  store i8* %289, i8** %a.addr.i166.i144, align 8
  %290 = load i8*, i8** %a.addr.i166.i144, align 8
  store i8* %290, i8** %a.addr.i.i162.i140, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i141, align 8
  store i32 0, i32* %i.i.i165.i143, align 4
  br label %for.cond.i.i168.i328

for.cond.i.i168.i328:                             ; preds = %for.body.i.i177.i337, %for.end138.i326
  %291 = load i32, i32* %i.i.i165.i143, align 4
  %cmp.i.i167.i327 = icmp sle i32 %291, 0
  br i1 %cmp.i.i167.i327, label %for.body.i.i177.i337, label %sec_mult.exit340

for.body.i.i177.i337:                             ; preds = %for.cond.i.i168.i328
  %292 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i141, align 8
  %293 = load i8*, i8** %a.addr.i.i162.i140, align 8
  %294 = load i32, i32* %i.i.i165.i143, align 4
  %idxprom.i.i169.i329 = sext i32 %294 to i64
  %arrayidx.i.i170.i330 = getelementptr inbounds i8, i8* %293, i64 %idxprom.i.i169.i329
  %295 = load i8, i8* %arrayidx.i.i170.i330, align 1
  %call.i.i171.i331 = call zeroext i8 %292(i8 zeroext %295) #3
  %conv.i.i172.i332 = zext i8 %call.i.i171.i331 to i32
  %296 = load i8, i8* %result.i.i164.i142, align 1
  %conv1.i.i173.i333 = zext i8 %296 to i32
  %xor.i.i174.i334 = xor i32 %conv1.i.i173.i333, %conv.i.i172.i332
  %conv2.i.i175.i335 = trunc i32 %xor.i.i174.i334 to i8
  store i8 %conv2.i.i175.i335, i8* %result.i.i164.i142, align 1
  %297 = load i32, i32* %i.i.i165.i143, align 4
  %inc.i.i176.i336 = add nsw i32 %297, 1
  store i32 %inc.i.i176.i336, i32* %i.i.i165.i143, align 4
  br label %for.cond.i.i168.i328

sec_mult.exit340:                                 ; preds = %for.cond.i.i168.i328
  %298 = load i8, i8* %result.i.i164.i142, align 1
  %conv142.i338 = zext i8 %298 to i32
  %cmp143.i339 = icmp eq i32 %conv140.i325, %conv142.i338
  call void @assert(i1 zeroext %cmp143.i339) #3
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  store i8* %arraydecay13, i8** %from.addr.i341, align 8
  store i8* %arraydecay14, i8** %to.addr.i342, align 8
  store i8 (i8)* @exp16, i8 (i8)** %f.addr.i343, align 8
  store i32 0, i32* %i.i344, align 4
  br label %for.cond.i346

for.cond.i346:                                    ; preds = %for.body.i352, %sec_mult.exit340
  %299 = load i32, i32* %i.i344, align 4
  %cmp.i345 = icmp sle i32 %299, 0
  br i1 %cmp.i345, label %for.body.i352, label %transform.exit355

for.body.i352:                                    ; preds = %for.cond.i346
  %300 = load i8 (i8)*, i8 (i8)** %f.addr.i343, align 8
  %301 = load i8*, i8** %from.addr.i341, align 8
  %302 = load i32, i32* %i.i344, align 4
  %idxprom.i347 = sext i32 %302 to i64
  %arrayidx.i348 = getelementptr inbounds i8, i8* %301, i64 %idxprom.i347
  %303 = load i8, i8* %arrayidx.i348, align 1
  %call.i349 = call zeroext i8 %300(i8 zeroext %303) #3
  %304 = load i8*, i8** %to.addr.i342, align 8
  %305 = load i32, i32* %i.i344, align 4
  %idxprom1.i350 = sext i32 %305 to i64
  %arrayidx2.i351 = getelementptr inbounds i8, i8* %304, i64 %idxprom1.i350
  store i8 %call.i349, i8* %arrayidx2.i351, align 1
  %306 = load i32, i32* %i.i344, align 4
  %inc.i353 = add nsw i32 %306, 1
  store i32 %inc.i353, i32* %i.i344, align 4
  br label %for.cond.i346

transform.exit355:                                ; preds = %for.cond.i346
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [1 x i8], [1 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [1 x i8], [1 x i8]* %m, i64 0, i64 0
  store i8* %arraydecay15, i8** %a.addr.i371, align 8
  store i8* %arraydecay16, i8** %b.addr.i372, align 8
  store i8* %arraydecay17, i8** %c.addr.i373, align 8
  %call.i387 = call zeroext i8 (...) @rand() #3
  store i8 %call.i387, i8* %A.i374, align 1
  %call1.i388 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i388, i8* %B.i375, align 1
  %307 = load i8, i8* %A.i374, align 1
  %conv.i389 = zext i8 %307 to i32
  %308 = load i8*, i8** %a.addr.i371, align 8
  store i8* %308, i8** %a.addr.i.i370, align 8
  %309 = load i8*, i8** %a.addr.i.i370, align 8
  store i8* %309, i8** %a.addr.i.i.i366, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i367, align 8
  store i32 0, i32* %i.i.i.i369, align 4
  br label %for.cond.i.i.i391

for.cond.i.i.i391:                                ; preds = %for.body.i.i.i400, %transform.exit355
  %310 = load i32, i32* %i.i.i.i369, align 4
  %cmp.i.i.i390 = icmp sle i32 %310, 0
  br i1 %cmp.i.i.i390, label %for.body.i.i.i400, label %xors.exit.i404

for.body.i.i.i400:                                ; preds = %for.cond.i.i.i391
  %311 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i367, align 8
  %312 = load i8*, i8** %a.addr.i.i.i366, align 8
  %313 = load i32, i32* %i.i.i.i369, align 4
  %idxprom.i.i.i392 = sext i32 %313 to i64
  %arrayidx.i.i.i393 = getelementptr inbounds i8, i8* %312, i64 %idxprom.i.i.i392
  %314 = load i8, i8* %arrayidx.i.i.i393, align 1
  %call.i.i.i394 = call zeroext i8 %311(i8 zeroext %314) #3
  %conv.i.i.i395 = zext i8 %call.i.i.i394 to i32
  %315 = load i8, i8* %result.i.i.i368, align 1
  %conv1.i.i.i396 = zext i8 %315 to i32
  %xor.i.i.i397 = xor i32 %conv1.i.i.i396, %conv.i.i.i395
  %conv2.i.i.i398 = trunc i32 %xor.i.i.i397 to i8
  store i8 %conv2.i.i.i398, i8* %result.i.i.i368, align 1
  %316 = load i32, i32* %i.i.i.i369, align 4
  %inc.i.i.i399 = add nsw i32 %316, 1
  store i32 %inc.i.i.i399, i32* %i.i.i.i369, align 4
  br label %for.cond.i.i.i391

xors.exit.i404:                                   ; preds = %for.cond.i.i.i391
  %317 = load i8, i8* %result.i.i.i368, align 1
  %conv3.i401 = zext i8 %317 to i32
  %cmp.i402 = icmp eq i32 %conv.i389, %conv3.i401
  call void @assume(i1 zeroext %cmp.i402) #3
  %318 = load i8, i8* %B.i375, align 1
  %conv5.i403 = zext i8 %318 to i32
  %319 = load i8*, i8** %b.addr.i372, align 8
  store i8* %319, i8** %a.addr.i149.i365, align 8
  %320 = load i8*, i8** %a.addr.i149.i365, align 8
  store i8* %320, i8** %a.addr.i.i145.i361, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i362, align 8
  store i32 0, i32* %i.i.i148.i364, align 4
  br label %for.cond.i.i151.i406

for.cond.i.i151.i406:                             ; preds = %for.body.i.i160.i415, %xors.exit.i404
  %321 = load i32, i32* %i.i.i148.i364, align 4
  %cmp.i.i150.i405 = icmp sle i32 %321, 0
  br i1 %cmp.i.i150.i405, label %for.body.i.i160.i415, label %xors.exit161.i418

for.body.i.i160.i415:                             ; preds = %for.cond.i.i151.i406
  %322 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i362, align 8
  %323 = load i8*, i8** %a.addr.i.i145.i361, align 8
  %324 = load i32, i32* %i.i.i148.i364, align 4
  %idxprom.i.i152.i407 = sext i32 %324 to i64
  %arrayidx.i.i153.i408 = getelementptr inbounds i8, i8* %323, i64 %idxprom.i.i152.i407
  %325 = load i8, i8* %arrayidx.i.i153.i408, align 1
  %call.i.i154.i409 = call zeroext i8 %322(i8 zeroext %325) #3
  %conv.i.i155.i410 = zext i8 %call.i.i154.i409 to i32
  %326 = load i8, i8* %result.i.i147.i363, align 1
  %conv1.i.i156.i411 = zext i8 %326 to i32
  %xor.i.i157.i412 = xor i32 %conv1.i.i156.i411, %conv.i.i155.i410
  %conv2.i.i158.i413 = trunc i32 %xor.i.i157.i412 to i8
  store i8 %conv2.i.i158.i413, i8* %result.i.i147.i363, align 1
  %327 = load i32, i32* %i.i.i148.i364, align 4
  %inc.i.i159.i414 = add nsw i32 %327, 1
  store i32 %inc.i.i159.i414, i32* %i.i.i148.i364, align 4
  br label %for.cond.i.i151.i406

xors.exit161.i418:                                ; preds = %for.cond.i.i151.i406
  %328 = load i8, i8* %result.i.i147.i363, align 1
  %conv7.i416 = zext i8 %328 to i32
  %cmp8.i417 = icmp eq i32 %conv5.i403, %conv7.i416
  call void @assume(i1 zeroext %cmp8.i417) #3
  store i32 0, i32* %i.i381, align 4
  br label %for.cond.i420

for.cond.i420:                                    ; preds = %for.end.i440, %xors.exit161.i418
  %329 = load i32, i32* %i.i381, align 4
  %cmp10.i419 = icmp sle i32 %329, 0
  br i1 %cmp10.i419, label %for.body.i422, label %for.end29.i442

for.body.i422:                                    ; preds = %for.cond.i420
  %330 = load i32, i32* %i.i381, align 4
  %add.i421 = add nsw i32 %330, 1
  store i32 %add.i421, i32* %j.i382, align 4
  br label %for.cond12.i424

for.cond12.i424:                                  ; preds = %for.body15.i438, %for.body.i422
  %331 = load i32, i32* %j.i382, align 4
  %cmp13.i423 = icmp sle i32 %331, 0
  br i1 %cmp13.i423, label %for.body15.i438, label %for.end.i440

for.body15.i438:                                  ; preds = %for.cond12.i424
  %call16.i425 = call zeroext i8 (...) @rand() #3
  %332 = load i32, i32* %i.i381, align 4
  %idxprom.i426 = sext i32 %332 to i64
  %arrayidx.i427 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i426
  %333 = load i32, i32* %j.i382, align 4
  %idxprom17.i428 = sext i32 %333 to i64
  %arrayidx18.i429 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i427, i64 0, i64 %idxprom17.i428
  store i8 %call16.i425, i8* %arrayidx18.i429, align 1
  %334 = load i32, i32* %i.i381, align 4
  %idxprom19.i430 = sext i32 %334 to i64
  %arrayidx20.i431 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i430
  %335 = load i32, i32* %j.i382, align 4
  %idxprom21.i432 = sext i32 %335 to i64
  %arrayidx22.i433 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i431, i64 0, i64 %idxprom21.i432
  %336 = load i8, i8* %arrayidx22.i433, align 1
  %337 = load i32, i32* %j.i382, align 4
  %idxprom23.i434 = sext i32 %337 to i64
  %arrayidx24.i435 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i434
  %338 = load i32, i32* %i.i381, align 4
  %idxprom25.i436 = sext i32 %338 to i64
  %arrayidx26.i437 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i435, i64 0, i64 %idxprom25.i436
  store i8 %336, i8* %arrayidx26.i437, align 1
  %339 = load i32, i32* %j.i382, align 4
  %inc.i439 = add nsw i32 %339, 1
  store i32 %inc.i439, i32* %j.i382, align 4
  br label %for.cond12.i424

for.end.i440:                                     ; preds = %for.cond12.i424
  %340 = load i32, i32* %i.i381, align 4
  %inc28.i441 = add nsw i32 %340, 1
  store i32 %inc28.i441, i32* %i.i381, align 4
  br label %for.cond.i420

for.end29.i442:                                   ; preds = %for.cond.i420
  store i32 0, i32* %i30.i383, align 4
  br label %for.cond31.i444

for.cond31.i444:                                  ; preds = %for.end98.i508, %for.end29.i442
  %341 = load i32, i32* %i30.i383, align 4
  %cmp32.i443 = icmp sle i32 %341, 0
  br i1 %cmp32.i443, label %for.body34.i445, label %for.end101.i510

for.body34.i445:                                  ; preds = %for.cond31.i444
  store i32 0, i32* %j35.i384, align 4
  br label %for.cond36.i447

for.cond36.i447:                                  ; preds = %if.end.i506, %for.body34.i445
  %342 = load i32, i32* %j35.i384, align 4
  %cmp37.i446 = icmp sle i32 %342, 0
  br i1 %cmp37.i446, label %for.body39.i449, label %for.end98.i508

for.body39.i449:                                  ; preds = %for.cond36.i447
  %343 = load i32, i32* %j35.i384, align 4
  %344 = load i32, i32* %i30.i383, align 4
  %cmp40.i448 = icmp ne i32 %343, %344
  br i1 %cmp40.i448, label %if.then.i505, label %if.end.i506

if.then.i505:                                     ; preds = %for.body39.i449
  %345 = load i8*, i8** %b.addr.i372, align 8
  %346 = load i32, i32* %j35.i384, align 4
  %idxprom42.i450 = sext i32 %346 to i64
  %arrayidx43.i451 = getelementptr inbounds i8, i8* %345, i64 %idxprom42.i450
  %347 = load i8, i8* %arrayidx43.i451, align 1
  %conv44.i452 = zext i8 %347 to i32
  %348 = load i32, i32* %i30.i383, align 4
  %idxprom45.i453 = sext i32 %348 to i64
  %arrayidx46.i454 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i453
  %349 = load i32, i32* %j35.i384, align 4
  %idxprom47.i455 = sext i32 %349 to i64
  %arrayidx48.i456 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i454, i64 0, i64 %idxprom47.i455
  %350 = load i8, i8* %arrayidx48.i456, align 1
  %conv49.i457 = zext i8 %350 to i32
  %xor.i458 = xor i32 %conv44.i452, %conv49.i457
  %conv50.i459 = trunc i32 %xor.i458 to i8
  %351 = load i32, i32* %i30.i383, align 4
  %idxprom51.i460 = sext i32 %351 to i64
  %arrayidx52.i461 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i460
  %352 = load i32, i32* %j35.i384, align 4
  %idxprom53.i462 = sext i32 %352 to i64
  %arrayidx54.i463 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i461, i64 0, i64 %idxprom53.i462
  store i8 %conv50.i459, i8* %arrayidx54.i463, align 1
  %353 = load i8*, i8** %a.addr.i371, align 8
  %354 = load i32, i32* %i30.i383, align 4
  %idxprom55.i464 = sext i32 %354 to i64
  %arrayidx56.i465 = getelementptr inbounds i8, i8* %353, i64 %idxprom55.i464
  %355 = load i8, i8* %arrayidx56.i465, align 1
  %conv57.i466 = zext i8 %355 to i32
  %xor58.i467 = xor i32 %conv57.i466, 1
  %conv59.i468 = trunc i32 %xor58.i467 to i8
  %356 = load i32, i32* %i30.i383, align 4
  %idxprom60.i469 = sext i32 %356 to i64
  %arrayidx61.i470 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i469
  %357 = load i32, i32* %j35.i384, align 4
  %idxprom62.i471 = sext i32 %357 to i64
  %arrayidx63.i472 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i470, i64 0, i64 %idxprom62.i471
  %358 = load i8, i8* %arrayidx63.i472, align 1
  %call64.i473 = call zeroext i8 @mult(i8 zeroext %conv59.i468, i8 zeroext %358) #3
  %359 = load i32, i32* %i30.i383, align 4
  %idxprom65.i474 = sext i32 %359 to i64
  %arrayidx66.i475 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i474
  %360 = load i32, i32* %j35.i384, align 4
  %idxprom67.i476 = sext i32 %360 to i64
  %arrayidx68.i477 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i475, i64 0, i64 %idxprom67.i476
  store i8 %call64.i473, i8* %arrayidx68.i477, align 1
  %361 = load i8*, i8** %a.addr.i371, align 8
  %362 = load i32, i32* %i30.i383, align 4
  %idxprom69.i478 = sext i32 %362 to i64
  %arrayidx70.i479 = getelementptr inbounds i8, i8* %361, i64 %idxprom69.i478
  %363 = load i8, i8* %arrayidx70.i479, align 1
  %364 = load i32, i32* %i30.i383, align 4
  %idxprom71.i480 = sext i32 %364 to i64
  %arrayidx72.i481 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i480
  %365 = load i32, i32* %j35.i384, align 4
  %idxprom73.i482 = sext i32 %365 to i64
  %arrayidx74.i483 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i481, i64 0, i64 %idxprom73.i482
  %366 = load i8, i8* %arrayidx74.i483, align 1
  %call75.i484 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %366) #3
  %367 = load i32, i32* %i30.i383, align 4
  %idxprom76.i485 = sext i32 %367 to i64
  %arrayidx77.i486 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i485
  %368 = load i32, i32* %j35.i384, align 4
  %idxprom78.i487 = sext i32 %368 to i64
  %arrayidx79.i488 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i486, i64 0, i64 %idxprom78.i487
  store i8 %call75.i484, i8* %arrayidx79.i488, align 1
  %369 = load i32, i32* %i30.i383, align 4
  %idxprom80.i489 = sext i32 %369 to i64
  %arrayidx81.i490 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i489
  %370 = load i32, i32* %j35.i384, align 4
  %idxprom82.i491 = sext i32 %370 to i64
  %arrayidx83.i492 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i490, i64 0, i64 %idxprom82.i491
  %371 = load i8, i8* %arrayidx83.i492, align 1
  %conv84.i493 = zext i8 %371 to i32
  %372 = load i32, i32* %i30.i383, align 4
  %idxprom85.i494 = sext i32 %372 to i64
  %arrayidx86.i495 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i494
  %373 = load i32, i32* %j35.i384, align 4
  %idxprom87.i496 = sext i32 %373 to i64
  %arrayidx88.i497 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i495, i64 0, i64 %idxprom87.i496
  %374 = load i8, i8* %arrayidx88.i497, align 1
  %conv89.i498 = zext i8 %374 to i32
  %xor90.i499 = xor i32 %conv84.i493, %conv89.i498
  %conv91.i500 = trunc i32 %xor90.i499 to i8
  %375 = load i32, i32* %i30.i383, align 4
  %idxprom92.i501 = sext i32 %375 to i64
  %arrayidx93.i502 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i501
  %376 = load i32, i32* %j35.i384, align 4
  %idxprom94.i503 = sext i32 %376 to i64
  %arrayidx95.i504 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i502, i64 0, i64 %idxprom94.i503
  store i8 %conv91.i500, i8* %arrayidx95.i504, align 1
  br label %if.end.i506

if.end.i506:                                      ; preds = %if.then.i505, %for.body39.i449
  %377 = load i32, i32* %j35.i384, align 4
  %inc97.i507 = add nsw i32 %377, 1
  store i32 %inc97.i507, i32* %j35.i384, align 4
  br label %for.cond36.i447

for.end98.i508:                                   ; preds = %for.cond36.i447
  %378 = load i32, i32* %i30.i383, align 4
  %inc100.i509 = add nsw i32 %378, 1
  store i32 %inc100.i509, i32* %i30.i383, align 4
  br label %for.cond31.i444

for.end101.i510:                                  ; preds = %for.cond31.i444
  store i32 0, i32* %i102.i385, align 4
  br label %for.cond103.i512

for.cond103.i512:                                 ; preds = %for.end135.i538, %for.end101.i510
  %379 = load i32, i32* %i102.i385, align 4
  %cmp104.i511 = icmp sle i32 %379, 0
  br i1 %cmp104.i511, label %for.body106.i520, label %for.end138.i542

for.body106.i520:                                 ; preds = %for.cond103.i512
  %380 = load i8*, i8** %a.addr.i371, align 8
  %381 = load i32, i32* %i102.i385, align 4
  %idxprom107.i513 = sext i32 %381 to i64
  %arrayidx108.i514 = getelementptr inbounds i8, i8* %380, i64 %idxprom107.i513
  %382 = load i8, i8* %arrayidx108.i514, align 1
  %383 = load i8*, i8** %b.addr.i372, align 8
  %384 = load i32, i32* %i102.i385, align 4
  %idxprom109.i515 = sext i32 %384 to i64
  %arrayidx110.i516 = getelementptr inbounds i8, i8* %383, i64 %idxprom109.i515
  %385 = load i8, i8* %arrayidx110.i516, align 1
  %call111.i517 = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %385) #3
  %386 = load i8*, i8** %c.addr.i373, align 8
  %387 = load i32, i32* %i102.i385, align 4
  %idxprom112.i518 = sext i32 %387 to i64
  %arrayidx113.i519 = getelementptr inbounds i8, i8* %386, i64 %idxprom112.i518
  store i8 %call111.i517, i8* %arrayidx113.i519, align 1
  store i32 0, i32* %j114.i386, align 4
  br label %for.cond115.i522

for.cond115.i522:                                 ; preds = %if.end132.i536, %for.body106.i520
  %388 = load i32, i32* %j114.i386, align 4
  %cmp116.i521 = icmp sle i32 %388, 0
  br i1 %cmp116.i521, label %for.body118.i524, label %for.end135.i538

for.body118.i524:                                 ; preds = %for.cond115.i522
  %389 = load i32, i32* %j114.i386, align 4
  %390 = load i32, i32* %i102.i385, align 4
  %cmp119.i523 = icmp ne i32 %389, %390
  br i1 %cmp119.i523, label %if.then121.i535, label %if.end132.i536

if.then121.i535:                                  ; preds = %for.body118.i524
  %391 = load i32, i32* %i102.i385, align 4
  %idxprom122.i525 = sext i32 %391 to i64
  %arrayidx123.i526 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i525
  %392 = load i32, i32* %j114.i386, align 4
  %idxprom124.i527 = sext i32 %392 to i64
  %arrayidx125.i528 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i526, i64 0, i64 %idxprom124.i527
  %393 = load i8, i8* %arrayidx125.i528, align 1
  %conv126.i529 = zext i8 %393 to i32
  %394 = load i8*, i8** %c.addr.i373, align 8
  %395 = load i32, i32* %i102.i385, align 4
  %idxprom127.i530 = sext i32 %395 to i64
  %arrayidx128.i531 = getelementptr inbounds i8, i8* %394, i64 %idxprom127.i530
  %396 = load i8, i8* %arrayidx128.i531, align 1
  %conv129.i532 = zext i8 %396 to i32
  %xor130.i533 = xor i32 %conv129.i532, %conv126.i529
  %conv131.i534 = trunc i32 %xor130.i533 to i8
  store i8 %conv131.i534, i8* %arrayidx128.i531, align 1
  br label %if.end132.i536

if.end132.i536:                                   ; preds = %if.then121.i535, %for.body118.i524
  %397 = load i32, i32* %j114.i386, align 4
  %inc134.i537 = add nsw i32 %397, 1
  store i32 %inc134.i537, i32* %j114.i386, align 4
  br label %for.cond115.i522

for.end135.i538:                                  ; preds = %for.cond115.i522
  %398 = load i32, i32* %i102.i385, align 4
  %inc137.i539 = add nsw i32 %398, 1
  store i32 %inc137.i539, i32* %i102.i385, align 4
  br label %for.cond103.i512

for.end138.i542:                                  ; preds = %for.cond103.i512
  %399 = load i8, i8* %A.i374, align 1
  %400 = load i8, i8* %B.i375, align 1
  %call139.i540 = call zeroext i8 @mult(i8 zeroext %399, i8 zeroext %400) #3
  %conv140.i541 = zext i8 %call139.i540 to i32
  %401 = load i8*, i8** %c.addr.i373, align 8
  store i8* %401, i8** %a.addr.i166.i360, align 8
  %402 = load i8*, i8** %a.addr.i166.i360, align 8
  store i8* %402, i8** %a.addr.i.i162.i356, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i357, align 8
  store i32 0, i32* %i.i.i165.i359, align 4
  br label %for.cond.i.i168.i544

for.cond.i.i168.i544:                             ; preds = %for.body.i.i177.i553, %for.end138.i542
  %403 = load i32, i32* %i.i.i165.i359, align 4
  %cmp.i.i167.i543 = icmp sle i32 %403, 0
  br i1 %cmp.i.i167.i543, label %for.body.i.i177.i553, label %sec_mult.exit556

for.body.i.i177.i553:                             ; preds = %for.cond.i.i168.i544
  %404 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i357, align 8
  %405 = load i8*, i8** %a.addr.i.i162.i356, align 8
  %406 = load i32, i32* %i.i.i165.i359, align 4
  %idxprom.i.i169.i545 = sext i32 %406 to i64
  %arrayidx.i.i170.i546 = getelementptr inbounds i8, i8* %405, i64 %idxprom.i.i169.i545
  %407 = load i8, i8* %arrayidx.i.i170.i546, align 1
  %call.i.i171.i547 = call zeroext i8 %404(i8 zeroext %407) #3
  %conv.i.i172.i548 = zext i8 %call.i.i171.i547 to i32
  %408 = load i8, i8* %result.i.i164.i358, align 1
  %conv1.i.i173.i549 = zext i8 %408 to i32
  %xor.i.i174.i550 = xor i32 %conv1.i.i173.i549, %conv.i.i172.i548
  %conv2.i.i175.i551 = trunc i32 %xor.i.i174.i550 to i8
  store i8 %conv2.i.i175.i551, i8* %result.i.i164.i358, align 1
  %409 = load i32, i32* %i.i.i165.i359, align 4
  %inc.i.i176.i552 = add nsw i32 %409, 1
  store i32 %inc.i.i176.i552, i32* %i.i.i165.i359, align 4
  br label %for.cond.i.i168.i544

sec_mult.exit556:                                 ; preds = %for.cond.i.i168.i544
  %410 = load i8, i8* %result.i.i164.i358, align 1
  %conv142.i554 = zext i8 %410 to i32
  %cmp143.i555 = icmp eq i32 %conv140.i541, %conv142.i554
  call void @assert(i1 zeroext %cmp143.i555) #3
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [1 x i8], [1 x i8]* %z, i64 0, i64 0
  %411 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay18, i8** %a.addr.i572, align 8
  store i8* %arraydecay19, i8** %b.addr.i573, align 8
  store i8* %411, i8** %c.addr.i574, align 8
  %call.i588 = call zeroext i8 (...) @rand() #3
  store i8 %call.i588, i8* %A.i575, align 1
  %call1.i589 = call zeroext i8 (...) @rand() #3
  store i8 %call1.i589, i8* %B.i576, align 1
  %412 = load i8, i8* %A.i575, align 1
  %conv.i590 = zext i8 %412 to i32
  %413 = load i8*, i8** %a.addr.i572, align 8
  store i8* %413, i8** %a.addr.i.i571, align 8
  %414 = load i8*, i8** %a.addr.i.i571, align 8
  store i8* %414, i8** %a.addr.i.i.i567, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i568, align 8
  store i32 0, i32* %i.i.i.i570, align 4
  br label %for.cond.i.i.i592

for.cond.i.i.i592:                                ; preds = %for.body.i.i.i601, %sec_mult.exit556
  %415 = load i32, i32* %i.i.i.i570, align 4
  %cmp.i.i.i591 = icmp sle i32 %415, 0
  br i1 %cmp.i.i.i591, label %for.body.i.i.i601, label %xors.exit.i605

for.body.i.i.i601:                                ; preds = %for.cond.i.i.i592
  %416 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i568, align 8
  %417 = load i8*, i8** %a.addr.i.i.i567, align 8
  %418 = load i32, i32* %i.i.i.i570, align 4
  %idxprom.i.i.i593 = sext i32 %418 to i64
  %arrayidx.i.i.i594 = getelementptr inbounds i8, i8* %417, i64 %idxprom.i.i.i593
  %419 = load i8, i8* %arrayidx.i.i.i594, align 1
  %call.i.i.i595 = call zeroext i8 %416(i8 zeroext %419) #3
  %conv.i.i.i596 = zext i8 %call.i.i.i595 to i32
  %420 = load i8, i8* %result.i.i.i569, align 1
  %conv1.i.i.i597 = zext i8 %420 to i32
  %xor.i.i.i598 = xor i32 %conv1.i.i.i597, %conv.i.i.i596
  %conv2.i.i.i599 = trunc i32 %xor.i.i.i598 to i8
  store i8 %conv2.i.i.i599, i8* %result.i.i.i569, align 1
  %421 = load i32, i32* %i.i.i.i570, align 4
  %inc.i.i.i600 = add nsw i32 %421, 1
  store i32 %inc.i.i.i600, i32* %i.i.i.i570, align 4
  br label %for.cond.i.i.i592

xors.exit.i605:                                   ; preds = %for.cond.i.i.i592
  %422 = load i8, i8* %result.i.i.i569, align 1
  %conv3.i602 = zext i8 %422 to i32
  %cmp.i603 = icmp eq i32 %conv.i590, %conv3.i602
  call void @assume(i1 zeroext %cmp.i603) #3
  %423 = load i8, i8* %B.i576, align 1
  %conv5.i604 = zext i8 %423 to i32
  %424 = load i8*, i8** %b.addr.i573, align 8
  store i8* %424, i8** %a.addr.i149.i566, align 8
  %425 = load i8*, i8** %a.addr.i149.i566, align 8
  store i8* %425, i8** %a.addr.i.i145.i562, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i563, align 8
  store i32 0, i32* %i.i.i148.i565, align 4
  br label %for.cond.i.i151.i607

for.cond.i.i151.i607:                             ; preds = %for.body.i.i160.i616, %xors.exit.i605
  %426 = load i32, i32* %i.i.i148.i565, align 4
  %cmp.i.i150.i606 = icmp sle i32 %426, 0
  br i1 %cmp.i.i150.i606, label %for.body.i.i160.i616, label %xors.exit161.i619

for.body.i.i160.i616:                             ; preds = %for.cond.i.i151.i607
  %427 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i563, align 8
  %428 = load i8*, i8** %a.addr.i.i145.i562, align 8
  %429 = load i32, i32* %i.i.i148.i565, align 4
  %idxprom.i.i152.i608 = sext i32 %429 to i64
  %arrayidx.i.i153.i609 = getelementptr inbounds i8, i8* %428, i64 %idxprom.i.i152.i608
  %430 = load i8, i8* %arrayidx.i.i153.i609, align 1
  %call.i.i154.i610 = call zeroext i8 %427(i8 zeroext %430) #3
  %conv.i.i155.i611 = zext i8 %call.i.i154.i610 to i32
  %431 = load i8, i8* %result.i.i147.i564, align 1
  %conv1.i.i156.i612 = zext i8 %431 to i32
  %xor.i.i157.i613 = xor i32 %conv1.i.i156.i612, %conv.i.i155.i611
  %conv2.i.i158.i614 = trunc i32 %xor.i.i157.i613 to i8
  store i8 %conv2.i.i158.i614, i8* %result.i.i147.i564, align 1
  %432 = load i32, i32* %i.i.i148.i565, align 4
  %inc.i.i159.i615 = add nsw i32 %432, 1
  store i32 %inc.i.i159.i615, i32* %i.i.i148.i565, align 4
  br label %for.cond.i.i151.i607

xors.exit161.i619:                                ; preds = %for.cond.i.i151.i607
  %433 = load i8, i8* %result.i.i147.i564, align 1
  %conv7.i617 = zext i8 %433 to i32
  %cmp8.i618 = icmp eq i32 %conv5.i604, %conv7.i617
  call void @assume(i1 zeroext %cmp8.i618) #3
  store i32 0, i32* %i.i582, align 4
  br label %for.cond.i621

for.cond.i621:                                    ; preds = %for.end.i641, %xors.exit161.i619
  %434 = load i32, i32* %i.i582, align 4
  %cmp10.i620 = icmp sle i32 %434, 0
  br i1 %cmp10.i620, label %for.body.i623, label %for.end29.i643

for.body.i623:                                    ; preds = %for.cond.i621
  %435 = load i32, i32* %i.i582, align 4
  %add.i622 = add nsw i32 %435, 1
  store i32 %add.i622, i32* %j.i583, align 4
  br label %for.cond12.i625

for.cond12.i625:                                  ; preds = %for.body15.i639, %for.body.i623
  %436 = load i32, i32* %j.i583, align 4
  %cmp13.i624 = icmp sle i32 %436, 0
  br i1 %cmp13.i624, label %for.body15.i639, label %for.end.i641

for.body15.i639:                                  ; preds = %for.cond12.i625
  %call16.i626 = call zeroext i8 (...) @rand() #3
  %437 = load i32, i32* %i.i582, align 4
  %idxprom.i627 = sext i32 %437 to i64
  %arrayidx.i628 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i627
  %438 = load i32, i32* %j.i583, align 4
  %idxprom17.i629 = sext i32 %438 to i64
  %arrayidx18.i630 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i628, i64 0, i64 %idxprom17.i629
  store i8 %call16.i626, i8* %arrayidx18.i630, align 1
  %439 = load i32, i32* %i.i582, align 4
  %idxprom19.i631 = sext i32 %439 to i64
  %arrayidx20.i632 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i631
  %440 = load i32, i32* %j.i583, align 4
  %idxprom21.i633 = sext i32 %440 to i64
  %arrayidx22.i634 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i632, i64 0, i64 %idxprom21.i633
  %441 = load i8, i8* %arrayidx22.i634, align 1
  %442 = load i32, i32* %j.i583, align 4
  %idxprom23.i635 = sext i32 %442 to i64
  %arrayidx24.i636 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i635
  %443 = load i32, i32* %i.i582, align 4
  %idxprom25.i637 = sext i32 %443 to i64
  %arrayidx26.i638 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i636, i64 0, i64 %idxprom25.i637
  store i8 %441, i8* %arrayidx26.i638, align 1
  %444 = load i32, i32* %j.i583, align 4
  %inc.i640 = add nsw i32 %444, 1
  store i32 %inc.i640, i32* %j.i583, align 4
  br label %for.cond12.i625

for.end.i641:                                     ; preds = %for.cond12.i625
  %445 = load i32, i32* %i.i582, align 4
  %inc28.i642 = add nsw i32 %445, 1
  store i32 %inc28.i642, i32* %i.i582, align 4
  br label %for.cond.i621

for.end29.i643:                                   ; preds = %for.cond.i621
  store i32 0, i32* %i30.i584, align 4
  br label %for.cond31.i645

for.cond31.i645:                                  ; preds = %for.end98.i709, %for.end29.i643
  %446 = load i32, i32* %i30.i584, align 4
  %cmp32.i644 = icmp sle i32 %446, 0
  br i1 %cmp32.i644, label %for.body34.i646, label %for.end101.i711

for.body34.i646:                                  ; preds = %for.cond31.i645
  store i32 0, i32* %j35.i585, align 4
  br label %for.cond36.i648

for.cond36.i648:                                  ; preds = %if.end.i707, %for.body34.i646
  %447 = load i32, i32* %j35.i585, align 4
  %cmp37.i647 = icmp sle i32 %447, 0
  br i1 %cmp37.i647, label %for.body39.i650, label %for.end98.i709

for.body39.i650:                                  ; preds = %for.cond36.i648
  %448 = load i32, i32* %j35.i585, align 4
  %449 = load i32, i32* %i30.i584, align 4
  %cmp40.i649 = icmp ne i32 %448, %449
  br i1 %cmp40.i649, label %if.then.i706, label %if.end.i707

if.then.i706:                                     ; preds = %for.body39.i650
  %450 = load i8*, i8** %b.addr.i573, align 8
  %451 = load i32, i32* %j35.i585, align 4
  %idxprom42.i651 = sext i32 %451 to i64
  %arrayidx43.i652 = getelementptr inbounds i8, i8* %450, i64 %idxprom42.i651
  %452 = load i8, i8* %arrayidx43.i652, align 1
  %conv44.i653 = zext i8 %452 to i32
  %453 = load i32, i32* %i30.i584, align 4
  %idxprom45.i654 = sext i32 %453 to i64
  %arrayidx46.i655 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i654
  %454 = load i32, i32* %j35.i585, align 4
  %idxprom47.i656 = sext i32 %454 to i64
  %arrayidx48.i657 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i655, i64 0, i64 %idxprom47.i656
  %455 = load i8, i8* %arrayidx48.i657, align 1
  %conv49.i658 = zext i8 %455 to i32
  %xor.i659 = xor i32 %conv44.i653, %conv49.i658
  %conv50.i660 = trunc i32 %xor.i659 to i8
  %456 = load i32, i32* %i30.i584, align 4
  %idxprom51.i661 = sext i32 %456 to i64
  %arrayidx52.i662 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i661
  %457 = load i32, i32* %j35.i585, align 4
  %idxprom53.i663 = sext i32 %457 to i64
  %arrayidx54.i664 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i662, i64 0, i64 %idxprom53.i663
  store i8 %conv50.i660, i8* %arrayidx54.i664, align 1
  %458 = load i8*, i8** %a.addr.i572, align 8
  %459 = load i32, i32* %i30.i584, align 4
  %idxprom55.i665 = sext i32 %459 to i64
  %arrayidx56.i666 = getelementptr inbounds i8, i8* %458, i64 %idxprom55.i665
  %460 = load i8, i8* %arrayidx56.i666, align 1
  %conv57.i667 = zext i8 %460 to i32
  %xor58.i668 = xor i32 %conv57.i667, 1
  %conv59.i669 = trunc i32 %xor58.i668 to i8
  %461 = load i32, i32* %i30.i584, align 4
  %idxprom60.i670 = sext i32 %461 to i64
  %arrayidx61.i671 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i670
  %462 = load i32, i32* %j35.i585, align 4
  %idxprom62.i672 = sext i32 %462 to i64
  %arrayidx63.i673 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i671, i64 0, i64 %idxprom62.i672
  %463 = load i8, i8* %arrayidx63.i673, align 1
  %call64.i674 = call zeroext i8 @mult(i8 zeroext %conv59.i669, i8 zeroext %463) #3
  %464 = load i32, i32* %i30.i584, align 4
  %idxprom65.i675 = sext i32 %464 to i64
  %arrayidx66.i676 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i675
  %465 = load i32, i32* %j35.i585, align 4
  %idxprom67.i677 = sext i32 %465 to i64
  %arrayidx68.i678 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i676, i64 0, i64 %idxprom67.i677
  store i8 %call64.i674, i8* %arrayidx68.i678, align 1
  %466 = load i8*, i8** %a.addr.i572, align 8
  %467 = load i32, i32* %i30.i584, align 4
  %idxprom69.i679 = sext i32 %467 to i64
  %arrayidx70.i680 = getelementptr inbounds i8, i8* %466, i64 %idxprom69.i679
  %468 = load i8, i8* %arrayidx70.i680, align 1
  %469 = load i32, i32* %i30.i584, align 4
  %idxprom71.i681 = sext i32 %469 to i64
  %arrayidx72.i682 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i681
  %470 = load i32, i32* %j35.i585, align 4
  %idxprom73.i683 = sext i32 %470 to i64
  %arrayidx74.i684 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i682, i64 0, i64 %idxprom73.i683
  %471 = load i8, i8* %arrayidx74.i684, align 1
  %call75.i685 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %471) #3
  %472 = load i32, i32* %i30.i584, align 4
  %idxprom76.i686 = sext i32 %472 to i64
  %arrayidx77.i687 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i686
  %473 = load i32, i32* %j35.i585, align 4
  %idxprom78.i688 = sext i32 %473 to i64
  %arrayidx79.i689 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i687, i64 0, i64 %idxprom78.i688
  store i8 %call75.i685, i8* %arrayidx79.i689, align 1
  %474 = load i32, i32* %i30.i584, align 4
  %idxprom80.i690 = sext i32 %474 to i64
  %arrayidx81.i691 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i690
  %475 = load i32, i32* %j35.i585, align 4
  %idxprom82.i692 = sext i32 %475 to i64
  %arrayidx83.i693 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i691, i64 0, i64 %idxprom82.i692
  %476 = load i8, i8* %arrayidx83.i693, align 1
  %conv84.i694 = zext i8 %476 to i32
  %477 = load i32, i32* %i30.i584, align 4
  %idxprom85.i695 = sext i32 %477 to i64
  %arrayidx86.i696 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i695
  %478 = load i32, i32* %j35.i585, align 4
  %idxprom87.i697 = sext i32 %478 to i64
  %arrayidx88.i698 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i696, i64 0, i64 %idxprom87.i697
  %479 = load i8, i8* %arrayidx88.i698, align 1
  %conv89.i699 = zext i8 %479 to i32
  %xor90.i700 = xor i32 %conv84.i694, %conv89.i699
  %conv91.i701 = trunc i32 %xor90.i700 to i8
  %480 = load i32, i32* %i30.i584, align 4
  %idxprom92.i702 = sext i32 %480 to i64
  %arrayidx93.i703 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i702
  %481 = load i32, i32* %j35.i585, align 4
  %idxprom94.i704 = sext i32 %481 to i64
  %arrayidx95.i705 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i703, i64 0, i64 %idxprom94.i704
  store i8 %conv91.i701, i8* %arrayidx95.i705, align 1
  br label %if.end.i707

if.end.i707:                                      ; preds = %if.then.i706, %for.body39.i650
  %482 = load i32, i32* %j35.i585, align 4
  %inc97.i708 = add nsw i32 %482, 1
  store i32 %inc97.i708, i32* %j35.i585, align 4
  br label %for.cond36.i648

for.end98.i709:                                   ; preds = %for.cond36.i648
  %483 = load i32, i32* %i30.i584, align 4
  %inc100.i710 = add nsw i32 %483, 1
  store i32 %inc100.i710, i32* %i30.i584, align 4
  br label %for.cond31.i645

for.end101.i711:                                  ; preds = %for.cond31.i645
  store i32 0, i32* %i102.i586, align 4
  br label %for.cond103.i713

for.cond103.i713:                                 ; preds = %for.end135.i739, %for.end101.i711
  %484 = load i32, i32* %i102.i586, align 4
  %cmp104.i712 = icmp sle i32 %484, 0
  br i1 %cmp104.i712, label %for.body106.i721, label %for.end138.i743

for.body106.i721:                                 ; preds = %for.cond103.i713
  %485 = load i8*, i8** %a.addr.i572, align 8
  %486 = load i32, i32* %i102.i586, align 4
  %idxprom107.i714 = sext i32 %486 to i64
  %arrayidx108.i715 = getelementptr inbounds i8, i8* %485, i64 %idxprom107.i714
  %487 = load i8, i8* %arrayidx108.i715, align 1
  %488 = load i8*, i8** %b.addr.i573, align 8
  %489 = load i32, i32* %i102.i586, align 4
  %idxprom109.i716 = sext i32 %489 to i64
  %arrayidx110.i717 = getelementptr inbounds i8, i8* %488, i64 %idxprom109.i716
  %490 = load i8, i8* %arrayidx110.i717, align 1
  %call111.i718 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %490) #3
  %491 = load i8*, i8** %c.addr.i574, align 8
  %492 = load i32, i32* %i102.i586, align 4
  %idxprom112.i719 = sext i32 %492 to i64
  %arrayidx113.i720 = getelementptr inbounds i8, i8* %491, i64 %idxprom112.i719
  store i8 %call111.i718, i8* %arrayidx113.i720, align 1
  store i32 0, i32* %j114.i587, align 4
  br label %for.cond115.i723

for.cond115.i723:                                 ; preds = %if.end132.i737, %for.body106.i721
  %493 = load i32, i32* %j114.i587, align 4
  %cmp116.i722 = icmp sle i32 %493, 0
  br i1 %cmp116.i722, label %for.body118.i725, label %for.end135.i739

for.body118.i725:                                 ; preds = %for.cond115.i723
  %494 = load i32, i32* %j114.i587, align 4
  %495 = load i32, i32* %i102.i586, align 4
  %cmp119.i724 = icmp ne i32 %494, %495
  br i1 %cmp119.i724, label %if.then121.i736, label %if.end132.i737

if.then121.i736:                                  ; preds = %for.body118.i725
  %496 = load i32, i32* %i102.i586, align 4
  %idxprom122.i726 = sext i32 %496 to i64
  %arrayidx123.i727 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i726
  %497 = load i32, i32* %j114.i587, align 4
  %idxprom124.i728 = sext i32 %497 to i64
  %arrayidx125.i729 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i727, i64 0, i64 %idxprom124.i728
  %498 = load i8, i8* %arrayidx125.i729, align 1
  %conv126.i730 = zext i8 %498 to i32
  %499 = load i8*, i8** %c.addr.i574, align 8
  %500 = load i32, i32* %i102.i586, align 4
  %idxprom127.i731 = sext i32 %500 to i64
  %arrayidx128.i732 = getelementptr inbounds i8, i8* %499, i64 %idxprom127.i731
  %501 = load i8, i8* %arrayidx128.i732, align 1
  %conv129.i733 = zext i8 %501 to i32
  %xor130.i734 = xor i32 %conv129.i733, %conv126.i730
  %conv131.i735 = trunc i32 %xor130.i734 to i8
  store i8 %conv131.i735, i8* %arrayidx128.i732, align 1
  br label %if.end132.i737

if.end132.i737:                                   ; preds = %if.then121.i736, %for.body118.i725
  %502 = load i32, i32* %j114.i587, align 4
  %inc134.i738 = add nsw i32 %502, 1
  store i32 %inc134.i738, i32* %j114.i587, align 4
  br label %for.cond115.i723

for.end135.i739:                                  ; preds = %for.cond115.i723
  %503 = load i32, i32* %i102.i586, align 4
  %inc137.i740 = add nsw i32 %503, 1
  store i32 %inc137.i740, i32* %i102.i586, align 4
  br label %for.cond103.i713

for.end138.i743:                                  ; preds = %for.cond103.i713
  %504 = load i8, i8* %A.i575, align 1
  %505 = load i8, i8* %B.i576, align 1
  %call139.i741 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505) #3
  %conv140.i742 = zext i8 %call139.i741 to i32
  %506 = load i8*, i8** %c.addr.i574, align 8
  store i8* %506, i8** %a.addr.i166.i561, align 8
  %507 = load i8*, i8** %a.addr.i166.i561, align 8
  store i8* %507, i8** %a.addr.i.i162.i557, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i558, align 8
  store i32 0, i32* %i.i.i165.i560, align 4
  br label %for.cond.i.i168.i745

for.cond.i.i168.i745:                             ; preds = %for.body.i.i177.i754, %for.end138.i743
  %508 = load i32, i32* %i.i.i165.i560, align 4
  %cmp.i.i167.i744 = icmp sle i32 %508, 0
  br i1 %cmp.i.i167.i744, label %for.body.i.i177.i754, label %sec_mult.exit757

for.body.i.i177.i754:                             ; preds = %for.cond.i.i168.i745
  %509 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i558, align 8
  %510 = load i8*, i8** %a.addr.i.i162.i557, align 8
  %511 = load i32, i32* %i.i.i165.i560, align 4
  %idxprom.i.i169.i746 = sext i32 %511 to i64
  %arrayidx.i.i170.i747 = getelementptr inbounds i8, i8* %510, i64 %idxprom.i.i169.i746
  %512 = load i8, i8* %arrayidx.i.i170.i747, align 1
  %call.i.i171.i748 = call zeroext i8 %509(i8 zeroext %512) #3
  %conv.i.i172.i749 = zext i8 %call.i.i171.i748 to i32
  %513 = load i8, i8* %result.i.i164.i559, align 1
  %conv1.i.i173.i750 = zext i8 %513 to i32
  %xor.i.i174.i751 = xor i32 %conv1.i.i173.i750, %conv.i.i172.i749
  %conv2.i.i175.i752 = trunc i32 %xor.i.i174.i751 to i8
  store i8 %conv2.i.i175.i752, i8* %result.i.i164.i559, align 1
  %514 = load i32, i32* %i.i.i165.i560, align 4
  %inc.i.i176.i753 = add nsw i32 %514, 1
  store i32 %inc.i.i176.i753, i32* %i.i.i165.i560, align 4
  br label %for.cond.i.i168.i745

sec_mult.exit757:                                 ; preds = %for.cond.i.i168.i745
  %515 = load i8, i8* %result.i.i164.i559, align 1
  %conv142.i755 = zext i8 %515 to i32
  %cmp143.i756 = icmp eq i32 %conv140.i742, %conv142.i755
  call void @assert(i1 zeroext %cmp143.i756) #3
  %516 = load i8, i8* %X, align 1
  store i8 %516, i8* %x.addr.i758, align 1
  %517 = load i8, i8* %x.addr.i758, align 1
  %call.i760 = call zeroext i8 @square(i8 zeroext %517) #3
  store i8 %call.i760, i8* %z.i759, align 1
  %518 = load i8, i8* %z.i759, align 1
  %519 = load i8, i8* %x.addr.i758, align 1
  %call1.i761 = call zeroext i8 @mult(i8 zeroext %518, i8 zeroext %519) #3
  store i8 %call1.i761, i8* %y.i, align 1
  %520 = load i8, i8* %y.i, align 1
  %call2.i = call zeroext i8 @exp4(i8 zeroext %520) #3
  store i8 %call2.i, i8* %w.i, align 1
  %521 = load i8, i8* %y.i, align 1
  %522 = load i8, i8* %w.i, align 1
  %call3.i = call zeroext i8 @mult(i8 zeroext %521, i8 zeroext %522) #3
  store i8 %call3.i, i8* %y.i, align 1
  %523 = load i8, i8* %y.i, align 1
  %call4.i = call zeroext i8 @exp16(i8 zeroext %523) #3
  store i8 %call4.i, i8* %y.i, align 1
  %524 = load i8, i8* %y.i, align 1
  %525 = load i8, i8* %w.i, align 1
  %call5.i = call zeroext i8 @mult(i8 zeroext %524, i8 zeroext %525) #3
  store i8 %call5.i, i8* %y.i, align 1
  %526 = load i8, i8* %y.i, align 1
  %527 = load i8, i8* %z.i759, align 1
  %call6.i = call zeroext i8 @mult(i8 zeroext %526, i8 zeroext %527) #3
  store i8 %call6.i, i8* %y.i, align 1
  %528 = load i8, i8* %y.i, align 1
  %conv21 = zext i8 %528 to i32
  %529 = load i8*, i8** %y.addr, align 8
  store i8* %529, i8** %a.addr.i766, align 8
  %530 = load i8*, i8** %a.addr.i766, align 8
  store i8* %530, i8** %a.addr.i.i762, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i763, align 8
  store i32 0, i32* %i.i.i765, align 4
  br label %for.cond.i.i768

for.cond.i.i768:                                  ; preds = %for.body.i.i777, %sec_mult.exit757
  %531 = load i32, i32* %i.i.i765, align 4
  %cmp.i.i767 = icmp sle i32 %531, 0
  br i1 %cmp.i.i767, label %for.body.i.i777, label %xors.exit778

for.body.i.i777:                                  ; preds = %for.cond.i.i768
  %532 = load i8 (i8)*, i8 (i8)** %f.addr.i.i763, align 8
  %533 = load i8*, i8** %a.addr.i.i762, align 8
  %534 = load i32, i32* %i.i.i765, align 4
  %idxprom.i.i769 = sext i32 %534 to i64
  %arrayidx.i.i770 = getelementptr inbounds i8, i8* %533, i64 %idxprom.i.i769
  %535 = load i8, i8* %arrayidx.i.i770, align 1
  %call.i.i771 = call zeroext i8 %532(i8 zeroext %535) #3
  %conv.i.i772 = zext i8 %call.i.i771 to i32
  %536 = load i8, i8* %result.i.i764, align 1
  %conv1.i.i773 = zext i8 %536 to i32
  %xor.i.i774 = xor i32 %conv1.i.i773, %conv.i.i772
  %conv2.i.i775 = trunc i32 %xor.i.i774 to i8
  store i8 %conv2.i.i775, i8* %result.i.i764, align 1
  %537 = load i32, i32* %i.i.i765, align 4
  %inc.i.i776 = add nsw i32 %537, 1
  store i32 %inc.i.i776, i32* %i.i.i765, align 4
  br label %for.cond.i.i768

xors.exit778:                                     ; preds = %for.cond.i.i768
  %538 = load i8, i8* %result.i.i764, align 1
  %conv23 = zext i8 %538 to i32
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
  %cmp = icmp slt i32 %1, 0
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
  %r.i = alloca [1 x [1 x i8]], align 1
  %s.i = alloca [1 x [1 x i8]], align 1
  %p0.i = alloca [1 x [1 x i8]], align 1
  %p1.i = alloca [1 x [1 x i8]], align 1
  %z.i = alloca [1 x [1 x i8]], align 1
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
  %z = alloca [1 x [1 x i8]], align 1
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
  %arrayidx = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 0
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx, i64 0, i64 0
  store i8* %11, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %transform.exit
  %20 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %20, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %x.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 %idxprom
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx6, i64 0, i64 0
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx9, i64 0, i64 0
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
  %cmp.i.i.i = icmp sle i32 %27, 0
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
  store i32 0, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

for.cond.i.i151.i:                                ; preds = %for.body.i.i160.i, %xors.exit.i
  %38 = load i32, i32* %i.i.i148.i, align 4
  %cmp.i.i150.i = icmp sle i32 %38, 0
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
  %cmp10.i = icmp sle i32 %46, 0
  br i1 %cmp10.i, label %for.body.i25, label %for.end29.i

for.body.i25:                                     ; preds = %for.cond.i24
  %47 = load i32, i32* %i.i21, align 4
  %add.i = add nsw i32 %47, 1
  store i32 %add.i, i32* %j.i, align 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body.i25
  %48 = load i32, i32* %j.i, align 4
  %cmp13.i = icmp sle i32 %48, 0
  br i1 %cmp13.i, label %for.body15.i, label %for.end.i

for.body15.i:                                     ; preds = %for.cond12.i
  %call16.i = call zeroext i8 (...) @rand() #3
  %49 = load i32, i32* %i.i21, align 4
  %idxprom.i26 = sext i32 %49 to i64
  %arrayidx.i27 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i26
  %50 = load i32, i32* %j.i, align 4
  %idxprom17.i = sext i32 %50 to i64
  %arrayidx18.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i27, i64 0, i64 %idxprom17.i
  store i8 %call16.i, i8* %arrayidx18.i, align 1
  %51 = load i32, i32* %i.i21, align 4
  %idxprom19.i = sext i32 %51 to i64
  %arrayidx20.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i
  %52 = load i32, i32* %j.i, align 4
  %idxprom21.i = sext i32 %52 to i64
  %arrayidx22.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i, i64 0, i64 %idxprom21.i
  %53 = load i8, i8* %arrayidx22.i, align 1
  %54 = load i32, i32* %j.i, align 4
  %idxprom23.i = sext i32 %54 to i64
  %arrayidx24.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i
  %55 = load i32, i32* %i.i21, align 4
  %idxprom25.i = sext i32 %55 to i64
  %arrayidx26.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i, i64 0, i64 %idxprom25.i
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
  %cmp32.i = icmp sle i32 %58, 0
  br i1 %cmp32.i, label %for.body34.i, label %for.end101.i

for.body34.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %j35.i, align 4
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %if.end.i, %for.body34.i
  %59 = load i32, i32* %j35.i, align 4
  %cmp37.i = icmp sle i32 %59, 0
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
  %arrayidx46.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i
  %66 = load i32, i32* %j35.i, align 4
  %idxprom47.i = sext i32 %66 to i64
  %arrayidx48.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i, i64 0, i64 %idxprom47.i
  %67 = load i8, i8* %arrayidx48.i, align 1
  %conv49.i = zext i8 %67 to i32
  %xor.i = xor i32 %conv44.i, %conv49.i
  %conv50.i = trunc i32 %xor.i to i8
  %68 = load i32, i32* %i30.i, align 4
  %idxprom51.i = sext i32 %68 to i64
  %arrayidx52.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i
  %69 = load i32, i32* %j35.i, align 4
  %idxprom53.i = sext i32 %69 to i64
  %arrayidx54.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i, i64 0, i64 %idxprom53.i
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
  %arrayidx61.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i
  %74 = load i32, i32* %j35.i, align 4
  %idxprom62.i = sext i32 %74 to i64
  %arrayidx63.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i, i64 0, i64 %idxprom62.i
  %75 = load i8, i8* %arrayidx63.i, align 1
  %call64.i = call zeroext i8 @mult(i8 zeroext %conv59.i, i8 zeroext %75) #3
  %76 = load i32, i32* %i30.i, align 4
  %idxprom65.i = sext i32 %76 to i64
  %arrayidx66.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i
  %77 = load i32, i32* %j35.i, align 4
  %idxprom67.i = sext i32 %77 to i64
  %arrayidx68.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i, i64 0, i64 %idxprom67.i
  store i8 %call64.i, i8* %arrayidx68.i, align 1
  %78 = load i8*, i8** %a.addr.i20, align 8
  %79 = load i32, i32* %i30.i, align 4
  %idxprom69.i = sext i32 %79 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %78, i64 %idxprom69.i
  %80 = load i8, i8* %arrayidx70.i, align 1
  %81 = load i32, i32* %i30.i, align 4
  %idxprom71.i = sext i32 %81 to i64
  %arrayidx72.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i
  %82 = load i32, i32* %j35.i, align 4
  %idxprom73.i = sext i32 %82 to i64
  %arrayidx74.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i, i64 0, i64 %idxprom73.i
  %83 = load i8, i8* %arrayidx74.i, align 1
  %call75.i = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %83) #3
  %84 = load i32, i32* %i30.i, align 4
  %idxprom76.i = sext i32 %84 to i64
  %arrayidx77.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i
  %85 = load i32, i32* %j35.i, align 4
  %idxprom78.i = sext i32 %85 to i64
  %arrayidx79.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i, i64 0, i64 %idxprom78.i
  store i8 %call75.i, i8* %arrayidx79.i, align 1
  %86 = load i32, i32* %i30.i, align 4
  %idxprom80.i = sext i32 %86 to i64
  %arrayidx81.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i
  %87 = load i32, i32* %j35.i, align 4
  %idxprom82.i = sext i32 %87 to i64
  %arrayidx83.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i, i64 0, i64 %idxprom82.i
  %88 = load i8, i8* %arrayidx83.i, align 1
  %conv84.i = zext i8 %88 to i32
  %89 = load i32, i32* %i30.i, align 4
  %idxprom85.i = sext i32 %89 to i64
  %arrayidx86.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i
  %90 = load i32, i32* %j35.i, align 4
  %idxprom87.i = sext i32 %90 to i64
  %arrayidx88.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i, i64 0, i64 %idxprom87.i
  %91 = load i8, i8* %arrayidx88.i, align 1
  %conv89.i = zext i8 %91 to i32
  %xor90.i = xor i32 %conv84.i, %conv89.i
  %conv91.i = trunc i32 %xor90.i to i8
  %92 = load i32, i32* %i30.i, align 4
  %idxprom92.i = sext i32 %92 to i64
  %arrayidx93.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i
  %93 = load i32, i32* %j35.i, align 4
  %idxprom94.i = sext i32 %93 to i64
  %arrayidx95.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i, i64 0, i64 %idxprom94.i
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
  %cmp104.i = icmp sle i32 %96, 0
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
  %cmp116.i = icmp sle i32 %105, 0
  br i1 %cmp116.i, label %for.body118.i, label %for.end135.i

for.body118.i:                                    ; preds = %for.cond115.i
  %106 = load i32, i32* %j114.i, align 4
  %107 = load i32, i32* %i102.i, align 4
  %cmp119.i = icmp ne i32 %106, %107
  br i1 %cmp119.i, label %if.then121.i, label %if.end132.i

if.then121.i:                                     ; preds = %for.body118.i
  %108 = load i32, i32* %i102.i, align 4
  %idxprom122.i = sext i32 %108 to i64
  %arrayidx123.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i
  %109 = load i32, i32* %j114.i, align 4
  %idxprom124.i = sext i32 %109 to i64
  %arrayidx125.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i, i64 0, i64 %idxprom124.i
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
  store i32 0, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

for.cond.i.i168.i:                                ; preds = %for.body.i.i177.i, %for.end138.i
  %120 = load i32, i32* %i.i.i165.i, align 4
  %cmp.i.i167.i = icmp sle i32 %120, 0
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
  %arrayidx11 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx11, i64 0, i64 0
  %129 = load i8*, i8** %y.addr, align 8
  store i8* %arraydecay12, i8** %from.addr.i29, align 8
  store i8* %129, i8** %to.addr.i30, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i31, align 8
  store i32 0, i32* %i.i32, align 4
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %for.body.i40, %for.end
  %130 = load i32, i32* %i.i32, align 4
  %cmp.i33 = icmp sle i32 %130, 0
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
  %cmp.i46 = icmp slt i32 %140, 0
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
  store i32 0, i32* %i.i.i55, align 4
  br label %for.cond.i.i58

for.cond.i.i58:                                   ; preds = %for.body.i.i67, %expd.exit
  %147 = load i32, i32* %i.i.i55, align 4
  %cmp.i.i57 = icmp sle i32 %147, 0
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
  %a.addr.i.i37 = alloca i8*, align 8
  %f.addr.i.i38 = alloca i8 (i8)*, align 8
  %result.i.i39 = alloca i8, align 1
  %i.i.i40 = alloca i32, align 4
  %a.addr.i41 = alloca i8*, align 8
  %x.addr.i.i25 = alloca i8, align 1
  %z.i.i26 = alloca i8, align 1
  %y.i.i27 = alloca i8, align 1
  %w.i.i28 = alloca i8, align 1
  %x.addr.i29 = alloca i8, align 1
  %from.addr.i = alloca i8*, align 8
  %to.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i762.i = alloca i8*, align 8
  %f.addr.i.i763.i = alloca i8 (i8)*, align 8
  %result.i.i764.i = alloca i8, align 1
  %i.i.i765.i = alloca i32, align 4
  %a.addr.i766.i = alloca i8*, align 8
  %x.addr.i758.i = alloca i8, align 1
  %z.i759.i = alloca i8, align 1
  %y.i.i = alloca i8, align 1
  %w.i.i = alloca i8, align 1
  %a.addr.i.i162.i557.i = alloca i8*, align 8
  %f.addr.i.i163.i558.i = alloca i8 (i8)*, align 8
  %result.i.i164.i559.i = alloca i8, align 1
  %i.i.i165.i560.i = alloca i32, align 4
  %a.addr.i166.i561.i = alloca i8*, align 8
  %a.addr.i.i145.i562.i = alloca i8*, align 8
  %f.addr.i.i146.i563.i = alloca i8 (i8)*, align 8
  %result.i.i147.i564.i = alloca i8, align 1
  %i.i.i148.i565.i = alloca i32, align 4
  %a.addr.i149.i566.i = alloca i8*, align 8
  %a.addr.i.i.i567.i = alloca i8*, align 8
  %f.addr.i.i.i568.i = alloca i8 (i8)*, align 8
  %result.i.i.i569.i = alloca i8, align 1
  %i.i.i.i570.i = alloca i32, align 4
  %a.addr.i.i571.i = alloca i8*, align 8
  %a.addr.i572.i = alloca i8*, align 8
  %b.addr.i573.i = alloca i8*, align 8
  %c.addr.i574.i = alloca i8*, align 8
  %A.i575.i = alloca i8, align 1
  %B.i576.i = alloca i8, align 1
  %i.i582.i = alloca i32, align 4
  %j.i583.i = alloca i32, align 4
  %i30.i584.i = alloca i32, align 4
  %j35.i585.i = alloca i32, align 4
  %i102.i586.i = alloca i32, align 4
  %j114.i587.i = alloca i32, align 4
  %a.addr.i.i162.i356.i = alloca i8*, align 8
  %f.addr.i.i163.i357.i = alloca i8 (i8)*, align 8
  %result.i.i164.i358.i = alloca i8, align 1
  %i.i.i165.i359.i = alloca i32, align 4
  %a.addr.i166.i360.i = alloca i8*, align 8
  %a.addr.i.i145.i361.i = alloca i8*, align 8
  %f.addr.i.i146.i362.i = alloca i8 (i8)*, align 8
  %result.i.i147.i363.i = alloca i8, align 1
  %i.i.i148.i364.i = alloca i32, align 4
  %a.addr.i149.i365.i = alloca i8*, align 8
  %a.addr.i.i.i366.i = alloca i8*, align 8
  %f.addr.i.i.i367.i = alloca i8 (i8)*, align 8
  %result.i.i.i368.i = alloca i8, align 1
  %i.i.i.i369.i = alloca i32, align 4
  %a.addr.i.i370.i = alloca i8*, align 8
  %a.addr.i371.i = alloca i8*, align 8
  %b.addr.i372.i = alloca i8*, align 8
  %c.addr.i373.i = alloca i8*, align 8
  %A.i374.i = alloca i8, align 1
  %B.i375.i = alloca i8, align 1
  %i.i381.i = alloca i32, align 4
  %j.i382.i = alloca i32, align 4
  %i30.i383.i = alloca i32, align 4
  %j35.i384.i = alloca i32, align 4
  %i102.i385.i = alloca i32, align 4
  %j114.i386.i = alloca i32, align 4
  %from.addr.i341.i = alloca i8*, align 8
  %to.addr.i342.i = alloca i8*, align 8
  %f.addr.i343.i = alloca i8 (i8)*, align 8
  %i.i344.i = alloca i32, align 4
  %a.addr.i.i162.i140.i = alloca i8*, align 8
  %f.addr.i.i163.i141.i = alloca i8 (i8)*, align 8
  %result.i.i164.i142.i = alloca i8, align 1
  %i.i.i165.i143.i = alloca i32, align 4
  %a.addr.i166.i144.i = alloca i8*, align 8
  %a.addr.i.i145.i145.i = alloca i8*, align 8
  %f.addr.i.i146.i146.i = alloca i8 (i8)*, align 8
  %result.i.i147.i147.i = alloca i8, align 1
  %i.i.i148.i148.i = alloca i32, align 4
  %a.addr.i149.i149.i = alloca i8*, align 8
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
  %i.i165.i = alloca i32, align 4
  %j.i166.i = alloca i32, align 4
  %i30.i167.i = alloca i32, align 4
  %j35.i168.i = alloca i32, align 4
  %i102.i169.i = alloca i32, align 4
  %j114.i170.i = alloca i32, align 4
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
  %r.i.i = alloca [1 x [1 x i8]], align 1
  %s.i.i = alloca [1 x [1 x i8]], align 1
  %p0.i.i = alloca [1 x [1 x i8]], align 1
  %p1.i.i = alloca [1 x [1 x i8]], align 1
  %z.i.i = alloca [1 x [1 x i8]], align 1
  %i.i40.i = alloca i32, align 4
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
  %f.addr.i.i10 = alloca i8 (i8)*, align 8
  %i.i.i11 = alloca i32, align 4
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i12 = alloca i8*, align 8
  %x.addr.i = alloca i8*, align 8
  %y.addr.i = alloca i8*, align 8
  %X.i = alloca i8, align 1
  %z.i = alloca [1 x i8], align 1
  %w.i = alloca [1 x i8], align 1
  %u.i = alloca [1 x i8], align 1
  %v.i = alloca [1 x i8], align 1
  %m.i = alloca [1 x i8], align 1
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
  %12 = load i8*, i8** %y.addr, align 8
  store i8* %11, i8** %x.addr.i, align 8
  store i8* %12, i8** %y.addr.i, align 8
  %call.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i, i8* %X.i, align 1
  %13 = load i8, i8* %X.i, align 1
  %conv.i = zext i8 %13 to i32
  %14 = load i8*, i8** %x.addr.i, align 8
  store i8* %14, i8** %a.addr.i.i12, align 8
  %15 = load i8*, i8** %a.addr.i.i12, align 8
  store i8* %15, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %xors.exit
  %16 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %16, 0
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
  %arraydecay.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  store i8* %24, i8** %from.addr.i.i, align 8
  store i8* %arraydecay.i, i8** %to.addr.i.i, align 8
  store i8 (i8)* @square, i8 (i8)** %f.addr.i.i10, align 8
  store i32 0, i32* %i.i.i11, align 4
  br label %for.cond.i.i14

for.cond.i.i14:                                   ; preds = %for.body.i.i19, %xors.exit.i
  %25 = load i32, i32* %i.i.i11, align 4
  %cmp.i.i13 = icmp sle i32 %25, 0
  br i1 %cmp.i.i13, label %for.body.i.i19, label %transform.exit.i

for.body.i.i19:                                   ; preds = %for.cond.i.i14
  %26 = load i8 (i8)*, i8 (i8)** %f.addr.i.i10, align 8
  %27 = load i8*, i8** %from.addr.i.i, align 8
  %28 = load i32, i32* %i.i.i11, align 4
  %idxprom.i.i15 = sext i32 %28 to i64
  %arrayidx.i.i16 = getelementptr inbounds i8, i8* %27, i64 %idxprom.i.i15
  %29 = load i8, i8* %arrayidx.i.i16, align 1
  %call.i.i17 = call zeroext i8 %26(i8 zeroext %29) #3
  %30 = load i8*, i8** %to.addr.i.i, align 8
  %31 = load i32, i32* %i.i.i11, align 4
  %idxprom1.i.i = sext i32 %31 to i64
  %arrayidx2.i.i = getelementptr inbounds i8, i8* %30, i64 %idxprom1.i.i
  store i8 %call.i.i17, i8* %arrayidx2.i.i, align 1
  %32 = load i32, i32* %i.i.i11, align 4
  %inc.i.i18 = add nsw i32 %32, 1
  store i32 %inc.i.i18, i32* %i.i.i11, align 4
  br label %for.cond.i.i14

transform.exit.i:                                 ; preds = %for.cond.i.i14
  %arraydecay4.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  store i8* %arraydecay4.i, i8** %x.addr.i.i, align 8
  %call.i28.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i28.i, i8* %X.i.i, align 1
  %33 = load i8, i8* %X.i.i, align 1
  %conv.i.i20 = zext i8 %33 to i32
  %34 = load i8*, i8** %x.addr.i.i, align 8
  store i8* %34, i8** %a.addr.i.i26.i, align 8
  %35 = load i8*, i8** %a.addr.i.i26.i, align 8
  store i8* %35, i8** %a.addr.i.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i.i, align 8
  store i32 0, i32* %i.i.i.i.i, align 4
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %transform.exit.i
  %36 = load i32, i32* %i.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp sle i32 %36, 0
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
  %conv2.i.i21 = zext i8 %43 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i20, %conv2.i.i21
  call void @assume(i1 zeroext %cmp.i29.i) #3
  store i8 1, i8* %i.i27.i, align 1
  br label %for.cond.i30.i

for.cond.i30.i:                                   ; preds = %for.body.i32.i, %xors.exit.i.i
  %44 = load i8, i8* %i.i27.i, align 1
  %conv4.i.i = zext i8 %44 to i32
  %cmp5.i.i = icmp sle i32 %conv4.i.i, 0
  br i1 %cmp5.i.i, label %for.body.i32.i, label %for.end.i.i

for.body.i32.i:                                   ; preds = %for.cond.i30.i
  %call7.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i.i, i8* %tmp.i.i, align 1
  %45 = load i8, i8* %tmp.i.i, align 1
  %conv8.i.i = zext i8 %45 to i32
  %46 = load i8*, i8** %x.addr.i.i, align 8
  %47 = load i8, i8* %46, align 1
  %conv9.i.i = zext i8 %47 to i32
  %xor.i.i22 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i22 to i8
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
  %cmp.i.i26.i.i = icmp sle i32 %56, 0
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
  %arraydecay5.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %64 = load i8*, i8** %x.addr.i, align 8
  %arraydecay6.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
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
  %cmp.i.i.i43.i = icmp sle i32 %68, 0
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
  store i8* %77, i8** %a.addr.i149.i.i, align 8
  %78 = load i8*, i8** %a.addr.i149.i.i, align 8
  store i8* %78, i8** %a.addr.i.i145.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i.i, align 8
  store i32 0, i32* %i.i.i148.i.i, align 4
  br label %for.cond.i.i151.i.i

for.cond.i.i151.i.i:                              ; preds = %for.body.i.i160.i.i, %xors.exit.i55.i
  %79 = load i32, i32* %i.i.i148.i.i, align 4
  %cmp.i.i150.i.i = icmp sle i32 %79, 0
  br i1 %cmp.i.i150.i.i, label %for.body.i.i160.i.i, label %xors.exit161.i.i

for.body.i.i160.i.i:                              ; preds = %for.cond.i.i151.i.i
  %80 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i.i, align 8
  %81 = load i8*, i8** %a.addr.i.i145.i.i, align 8
  %82 = load i32, i32* %i.i.i148.i.i, align 4
  %idxprom.i.i152.i.i = sext i32 %82 to i64
  %arrayidx.i.i153.i.i = getelementptr inbounds i8, i8* %81, i64 %idxprom.i.i152.i.i
  %83 = load i8, i8* %arrayidx.i.i153.i.i, align 1
  %call.i.i154.i.i = call zeroext i8 %80(i8 zeroext %83) #3
  %conv.i.i155.i.i = zext i8 %call.i.i154.i.i to i32
  %84 = load i8, i8* %result.i.i147.i.i, align 1
  %conv1.i.i156.i.i = zext i8 %84 to i32
  %xor.i.i157.i.i = xor i32 %conv1.i.i156.i.i, %conv.i.i155.i.i
  %conv2.i.i158.i.i = trunc i32 %xor.i.i157.i.i to i8
  store i8 %conv2.i.i158.i.i, i8* %result.i.i147.i.i, align 1
  %85 = load i32, i32* %i.i.i148.i.i, align 4
  %inc.i.i159.i.i = add nsw i32 %85, 1
  store i32 %inc.i.i159.i.i, i32* %i.i.i148.i.i, align 4
  br label %for.cond.i.i151.i.i

xors.exit161.i.i:                                 ; preds = %for.cond.i.i151.i.i
  %86 = load i8, i8* %result.i.i147.i.i, align 1
  %conv7.i.i = zext i8 %86 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  store i32 0, i32* %i.i40.i, align 4
  br label %for.cond.i56.i

for.cond.i56.i:                                   ; preds = %for.end.i61.i, %xors.exit161.i.i
  %87 = load i32, i32* %i.i40.i, align 4
  %cmp10.i.i = icmp sle i32 %87, 0
  br i1 %cmp10.i.i, label %for.body.i57.i, label %for.end29.i.i

for.body.i57.i:                                   ; preds = %for.cond.i56.i
  %88 = load i32, i32* %i.i40.i, align 4
  %add.i.i = add nsw i32 %88, 1
  store i32 %add.i.i, i32* %j.i.i, align 4
  br label %for.cond12.i.i

for.cond12.i.i:                                   ; preds = %for.body15.i.i, %for.body.i57.i
  %89 = load i32, i32* %j.i.i, align 4
  %cmp13.i.i = icmp sle i32 %89, 0
  br i1 %cmp13.i.i, label %for.body15.i.i, label %for.end.i61.i

for.body15.i.i:                                   ; preds = %for.cond12.i.i
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %90 = load i32, i32* %i.i40.i, align 4
  %idxprom.i58.i = sext i32 %90 to i64
  %arrayidx.i59.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom.i58.i
  %91 = load i32, i32* %j.i.i, align 4
  %idxprom17.i.i = sext i32 %91 to i64
  %arrayidx18.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i59.i, i64 0, i64 %idxprom17.i.i
  store i8 %call16.i.i, i8* %arrayidx18.i.i, align 1
  %92 = load i32, i32* %i.i40.i, align 4
  %idxprom19.i.i = sext i32 %92 to i64
  %arrayidx20.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i.i
  %93 = load i32, i32* %j.i.i, align 4
  %idxprom21.i.i = sext i32 %93 to i64
  %arrayidx22.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i.i, i64 0, i64 %idxprom21.i.i
  %94 = load i8, i8* %arrayidx22.i.i, align 1
  %95 = load i32, i32* %j.i.i, align 4
  %idxprom23.i.i = sext i32 %95 to i64
  %arrayidx24.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i.i
  %96 = load i32, i32* %i.i40.i, align 4
  %idxprom25.i.i = sext i32 %96 to i64
  %arrayidx26.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i.i, i64 0, i64 %idxprom25.i.i
  store i8 %94, i8* %arrayidx26.i.i, align 1
  %97 = load i32, i32* %j.i.i, align 4
  %inc.i60.i = add nsw i32 %97, 1
  store i32 %inc.i60.i, i32* %j.i.i, align 4
  br label %for.cond12.i.i

for.end.i61.i:                                    ; preds = %for.cond12.i.i
  %98 = load i32, i32* %i.i40.i, align 4
  %inc28.i.i = add nsw i32 %98, 1
  store i32 %inc28.i.i, i32* %i.i40.i, align 4
  br label %for.cond.i56.i

for.end29.i.i:                                    ; preds = %for.cond.i56.i
  store i32 0, i32* %i30.i.i, align 4
  br label %for.cond31.i.i

for.cond31.i.i:                                   ; preds = %for.end98.i.i, %for.end29.i.i
  %99 = load i32, i32* %i30.i.i, align 4
  %cmp32.i.i = icmp sle i32 %99, 0
  br i1 %cmp32.i.i, label %for.body34.i.i, label %for.end101.i.i

for.body34.i.i:                                   ; preds = %for.cond31.i.i
  store i32 0, i32* %j35.i.i, align 4
  br label %for.cond36.i.i

for.cond36.i.i:                                   ; preds = %if.end.i.i, %for.body34.i.i
  %100 = load i32, i32* %j35.i.i, align 4
  %cmp37.i.i = icmp sle i32 %100, 0
  br i1 %cmp37.i.i, label %for.body39.i.i, label %for.end98.i.i

for.body39.i.i:                                   ; preds = %for.cond36.i.i
  %101 = load i32, i32* %j35.i.i, align 4
  %102 = load i32, i32* %i30.i.i, align 4
  %cmp40.i.i = icmp ne i32 %101, %102
  br i1 %cmp40.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body39.i.i
  %103 = load i8*, i8** %b.addr.i.i, align 8
  %104 = load i32, i32* %j35.i.i, align 4
  %idxprom42.i.i = sext i32 %104 to i64
  %arrayidx43.i.i = getelementptr inbounds i8, i8* %103, i64 %idxprom42.i.i
  %105 = load i8, i8* %arrayidx43.i.i, align 1
  %conv44.i.i = zext i8 %105 to i32
  %106 = load i32, i32* %i30.i.i, align 4
  %idxprom45.i.i = sext i32 %106 to i64
  %arrayidx46.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i.i
  %107 = load i32, i32* %j35.i.i, align 4
  %idxprom47.i.i = sext i32 %107 to i64
  %arrayidx48.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i.i, i64 0, i64 %idxprom47.i.i
  %108 = load i8, i8* %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %108 to i32
  %xor.i62.i = xor i32 %conv44.i.i, %conv49.i.i
  %conv50.i.i = trunc i32 %xor.i62.i to i8
  %109 = load i32, i32* %i30.i.i, align 4
  %idxprom51.i.i = sext i32 %109 to i64
  %arrayidx52.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i.i
  %110 = load i32, i32* %j35.i.i, align 4
  %idxprom53.i.i = sext i32 %110 to i64
  %arrayidx54.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i.i, i64 0, i64 %idxprom53.i.i
  store i8 %conv50.i.i, i8* %arrayidx54.i.i, align 1
  %111 = load i8*, i8** %a.addr.i39.i, align 8
  %112 = load i32, i32* %i30.i.i, align 4
  %idxprom55.i.i = sext i32 %112 to i64
  %arrayidx56.i.i = getelementptr inbounds i8, i8* %111, i64 %idxprom55.i.i
  %113 = load i8, i8* %arrayidx56.i.i, align 1
  %conv57.i.i = zext i8 %113 to i32
  %xor58.i.i = xor i32 %conv57.i.i, 1
  %conv59.i.i = trunc i32 %xor58.i.i to i8
  %114 = load i32, i32* %i30.i.i, align 4
  %idxprom60.i.i = sext i32 %114 to i64
  %arrayidx61.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i.i
  %115 = load i32, i32* %j35.i.i, align 4
  %idxprom62.i.i = sext i32 %115 to i64
  %arrayidx63.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i.i, i64 0, i64 %idxprom62.i.i
  %116 = load i8, i8* %arrayidx63.i.i, align 1
  %call64.i.i = call zeroext i8 @mult(i8 zeroext %conv59.i.i, i8 zeroext %116) #3
  %117 = load i32, i32* %i30.i.i, align 4
  %idxprom65.i.i = sext i32 %117 to i64
  %arrayidx66.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i.i
  %118 = load i32, i32* %j35.i.i, align 4
  %idxprom67.i.i = sext i32 %118 to i64
  %arrayidx68.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i.i, i64 0, i64 %idxprom67.i.i
  store i8 %call64.i.i, i8* %arrayidx68.i.i, align 1
  %119 = load i8*, i8** %a.addr.i39.i, align 8
  %120 = load i32, i32* %i30.i.i, align 4
  %idxprom69.i.i = sext i32 %120 to i64
  %arrayidx70.i.i = getelementptr inbounds i8, i8* %119, i64 %idxprom69.i.i
  %121 = load i8, i8* %arrayidx70.i.i, align 1
  %122 = load i32, i32* %i30.i.i, align 4
  %idxprom71.i.i = sext i32 %122 to i64
  %arrayidx72.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i.i
  %123 = load i32, i32* %j35.i.i, align 4
  %idxprom73.i.i = sext i32 %123 to i64
  %arrayidx74.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i.i, i64 0, i64 %idxprom73.i.i
  %124 = load i8, i8* %arrayidx74.i.i, align 1
  %call75.i.i = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %124) #3
  %125 = load i32, i32* %i30.i.i, align 4
  %idxprom76.i.i = sext i32 %125 to i64
  %arrayidx77.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i.i
  %126 = load i32, i32* %j35.i.i, align 4
  %idxprom78.i.i = sext i32 %126 to i64
  %arrayidx79.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i.i, i64 0, i64 %idxprom78.i.i
  store i8 %call75.i.i, i8* %arrayidx79.i.i, align 1
  %127 = load i32, i32* %i30.i.i, align 4
  %idxprom80.i.i = sext i32 %127 to i64
  %arrayidx81.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i.i
  %128 = load i32, i32* %j35.i.i, align 4
  %idxprom82.i.i = sext i32 %128 to i64
  %arrayidx83.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i.i, i64 0, i64 %idxprom82.i.i
  %129 = load i8, i8* %arrayidx83.i.i, align 1
  %conv84.i.i = zext i8 %129 to i32
  %130 = load i32, i32* %i30.i.i, align 4
  %idxprom85.i.i = sext i32 %130 to i64
  %arrayidx86.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i.i
  %131 = load i32, i32* %j35.i.i, align 4
  %idxprom87.i.i = sext i32 %131 to i64
  %arrayidx88.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i.i, i64 0, i64 %idxprom87.i.i
  %132 = load i8, i8* %arrayidx88.i.i, align 1
  %conv89.i.i = zext i8 %132 to i32
  %xor90.i.i = xor i32 %conv84.i.i, %conv89.i.i
  %conv91.i.i = trunc i32 %xor90.i.i to i8
  %133 = load i32, i32* %i30.i.i, align 4
  %idxprom92.i.i = sext i32 %133 to i64
  %arrayidx93.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i.i
  %134 = load i32, i32* %j35.i.i, align 4
  %idxprom94.i.i = sext i32 %134 to i64
  %arrayidx95.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i.i, i64 0, i64 %idxprom94.i.i
  store i8 %conv91.i.i, i8* %arrayidx95.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body39.i.i
  %135 = load i32, i32* %j35.i.i, align 4
  %inc97.i.i = add nsw i32 %135, 1
  store i32 %inc97.i.i, i32* %j35.i.i, align 4
  br label %for.cond36.i.i

for.end98.i.i:                                    ; preds = %for.cond36.i.i
  %136 = load i32, i32* %i30.i.i, align 4
  %inc100.i.i = add nsw i32 %136, 1
  store i32 %inc100.i.i, i32* %i30.i.i, align 4
  br label %for.cond31.i.i

for.end101.i.i:                                   ; preds = %for.cond31.i.i
  store i32 0, i32* %i102.i.i, align 4
  br label %for.cond103.i.i

for.cond103.i.i:                                  ; preds = %for.end135.i.i, %for.end101.i.i
  %137 = load i32, i32* %i102.i.i, align 4
  %cmp104.i.i = icmp sle i32 %137, 0
  br i1 %cmp104.i.i, label %for.body106.i.i, label %for.end138.i.i

for.body106.i.i:                                  ; preds = %for.cond103.i.i
  %138 = load i8*, i8** %a.addr.i39.i, align 8
  %139 = load i32, i32* %i102.i.i, align 4
  %idxprom107.i.i = sext i32 %139 to i64
  %arrayidx108.i.i = getelementptr inbounds i8, i8* %138, i64 %idxprom107.i.i
  %140 = load i8, i8* %arrayidx108.i.i, align 1
  %141 = load i8*, i8** %b.addr.i.i, align 8
  %142 = load i32, i32* %i102.i.i, align 4
  %idxprom109.i.i = sext i32 %142 to i64
  %arrayidx110.i.i = getelementptr inbounds i8, i8* %141, i64 %idxprom109.i.i
  %143 = load i8, i8* %arrayidx110.i.i, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %143) #3
  %144 = load i8*, i8** %c.addr.i.i, align 8
  %145 = load i32, i32* %i102.i.i, align 4
  %idxprom112.i.i = sext i32 %145 to i64
  %arrayidx113.i.i = getelementptr inbounds i8, i8* %144, i64 %idxprom112.i.i
  store i8 %call111.i.i, i8* %arrayidx113.i.i, align 1
  store i32 0, i32* %j114.i.i, align 4
  br label %for.cond115.i.i

for.cond115.i.i:                                  ; preds = %if.end132.i.i, %for.body106.i.i
  %146 = load i32, i32* %j114.i.i, align 4
  %cmp116.i.i = icmp sle i32 %146, 0
  br i1 %cmp116.i.i, label %for.body118.i.i, label %for.end135.i.i

for.body118.i.i:                                  ; preds = %for.cond115.i.i
  %147 = load i32, i32* %j114.i.i, align 4
  %148 = load i32, i32* %i102.i.i, align 4
  %cmp119.i.i = icmp ne i32 %147, %148
  br i1 %cmp119.i.i, label %if.then121.i.i, label %if.end132.i.i

if.then121.i.i:                                   ; preds = %for.body118.i.i
  %149 = load i32, i32* %i102.i.i, align 4
  %idxprom122.i.i = sext i32 %149 to i64
  %arrayidx123.i.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i.i
  %150 = load i32, i32* %j114.i.i, align 4
  %idxprom124.i.i = sext i32 %150 to i64
  %arrayidx125.i.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i.i, i64 0, i64 %idxprom124.i.i
  %151 = load i8, i8* %arrayidx125.i.i, align 1
  %conv126.i.i = zext i8 %151 to i32
  %152 = load i8*, i8** %c.addr.i.i, align 8
  %153 = load i32, i32* %i102.i.i, align 4
  %idxprom127.i.i = sext i32 %153 to i64
  %arrayidx128.i.i = getelementptr inbounds i8, i8* %152, i64 %idxprom127.i.i
  %154 = load i8, i8* %arrayidx128.i.i, align 1
  %conv129.i.i = zext i8 %154 to i32
  %xor130.i.i = xor i32 %conv129.i.i, %conv126.i.i
  %conv131.i.i = trunc i32 %xor130.i.i to i8
  store i8 %conv131.i.i, i8* %arrayidx128.i.i, align 1
  br label %if.end132.i.i

if.end132.i.i:                                    ; preds = %if.then121.i.i, %for.body118.i.i
  %155 = load i32, i32* %j114.i.i, align 4
  %inc134.i.i = add nsw i32 %155, 1
  store i32 %inc134.i.i, i32* %j114.i.i, align 4
  br label %for.cond115.i.i

for.end135.i.i:                                   ; preds = %for.cond115.i.i
  %156 = load i32, i32* %i102.i.i, align 4
  %inc137.i.i = add nsw i32 %156, 1
  store i32 %inc137.i.i, i32* %i102.i.i, align 4
  br label %for.cond103.i.i

for.end138.i.i:                                   ; preds = %for.cond103.i.i
  %157 = load i8, i8* %A.i.i, align 1
  %158 = load i8, i8* %B.i.i, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %159 = load i8*, i8** %c.addr.i.i, align 8
  store i8* %159, i8** %a.addr.i166.i.i, align 8
  %160 = load i8*, i8** %a.addr.i166.i.i, align 8
  store i8* %160, i8** %a.addr.i.i162.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i.i, align 8
  store i32 0, i32* %i.i.i165.i.i, align 4
  br label %for.cond.i.i168.i.i

for.cond.i.i168.i.i:                              ; preds = %for.body.i.i177.i.i, %for.end138.i.i
  %161 = load i32, i32* %i.i.i165.i.i, align 4
  %cmp.i.i167.i.i = icmp sle i32 %161, 0
  br i1 %cmp.i.i167.i.i, label %for.body.i.i177.i.i, label %sec_mult.exit.i

for.body.i.i177.i.i:                              ; preds = %for.cond.i.i168.i.i
  %162 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i.i, align 8
  %163 = load i8*, i8** %a.addr.i.i162.i.i, align 8
  %164 = load i32, i32* %i.i.i165.i.i, align 4
  %idxprom.i.i169.i.i = sext i32 %164 to i64
  %arrayidx.i.i170.i.i = getelementptr inbounds i8, i8* %163, i64 %idxprom.i.i169.i.i
  %165 = load i8, i8* %arrayidx.i.i170.i.i, align 1
  %call.i.i171.i.i = call zeroext i8 %162(i8 zeroext %165) #3
  %conv.i.i172.i.i = zext i8 %call.i.i171.i.i to i32
  %166 = load i8, i8* %result.i.i164.i.i, align 1
  %conv1.i.i173.i.i = zext i8 %166 to i32
  %xor.i.i174.i.i = xor i32 %conv1.i.i173.i.i, %conv.i.i172.i.i
  %conv2.i.i175.i.i = trunc i32 %xor.i.i174.i.i to i8
  store i8 %conv2.i.i175.i.i, i8* %result.i.i164.i.i, align 1
  %167 = load i32, i32* %i.i.i165.i.i, align 4
  %inc.i.i176.i.i = add nsw i32 %167, 1
  store i32 %inc.i.i176.i.i, i32* %i.i.i165.i.i, align 4
  br label %for.cond.i.i168.i.i

sec_mult.exit.i:                                  ; preds = %for.cond.i.i168.i.i
  %168 = load i8, i8* %result.i.i164.i.i, align 1
  %conv142.i.i = zext i8 %168 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %arraydecay7.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %arraydecay8.i = getelementptr inbounds [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  store i8* %arraydecay7.i, i8** %from.addr.i63.i, align 8
  store i8* %arraydecay8.i, i8** %to.addr.i64.i, align 8
  store i8 (i8)* @exp4, i8 (i8)** %f.addr.i65.i, align 8
  store i32 0, i32* %i.i66.i, align 4
  br label %for.cond.i68.i

for.cond.i68.i:                                   ; preds = %for.body.i74.i, %sec_mult.exit.i
  %169 = load i32, i32* %i.i66.i, align 4
  %cmp.i67.i = icmp sle i32 %169, 0
  br i1 %cmp.i67.i, label %for.body.i74.i, label %transform.exit77.i

for.body.i74.i:                                   ; preds = %for.cond.i68.i
  %170 = load i8 (i8)*, i8 (i8)** %f.addr.i65.i, align 8
  %171 = load i8*, i8** %from.addr.i63.i, align 8
  %172 = load i32, i32* %i.i66.i, align 4
  %idxprom.i69.i = sext i32 %172 to i64
  %arrayidx.i70.i = getelementptr inbounds i8, i8* %171, i64 %idxprom.i69.i
  %173 = load i8, i8* %arrayidx.i70.i, align 1
  %call.i71.i = call zeroext i8 %170(i8 zeroext %173) #3
  %174 = load i8*, i8** %to.addr.i64.i, align 8
  %175 = load i32, i32* %i.i66.i, align 4
  %idxprom1.i72.i = sext i32 %175 to i64
  %arrayidx2.i73.i = getelementptr inbounds i8, i8* %174, i64 %idxprom1.i72.i
  store i8 %call.i71.i, i8* %arrayidx2.i73.i, align 1
  %176 = load i32, i32* %i.i66.i, align 4
  %inc.i75.i = add nsw i32 %176, 1
  store i32 %inc.i75.i, i32* %i.i66.i, align 4
  br label %for.cond.i68.i

transform.exit77.i:                               ; preds = %for.cond.i68.i
  %arraydecay9.i = getelementptr inbounds [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  store i8* %arraydecay9.i, i8** %x.addr.i88.i, align 8
  %call.i92.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i92.i, i8* %X.i89.i, align 1
  %177 = load i8, i8* %X.i89.i, align 1
  %conv.i93.i = zext i8 %177 to i32
  %178 = load i8*, i8** %x.addr.i88.i, align 8
  store i8* %178, i8** %a.addr.i.i87.i, align 8
  %179 = load i8*, i8** %a.addr.i.i87.i, align 8
  store i8* %179, i8** %a.addr.i.i.i83.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i84.i, align 8
  store i32 0, i32* %i.i.i.i86.i, align 4
  br label %for.cond.i.i.i95.i

for.cond.i.i.i95.i:                               ; preds = %for.body.i.i.i104.i, %transform.exit77.i
  %180 = load i32, i32* %i.i.i.i86.i, align 4
  %cmp.i.i.i94.i = icmp sle i32 %180, 0
  br i1 %cmp.i.i.i94.i, label %for.body.i.i.i104.i, label %xors.exit.i107.i

for.body.i.i.i104.i:                              ; preds = %for.cond.i.i.i95.i
  %181 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i84.i, align 8
  %182 = load i8*, i8** %a.addr.i.i.i83.i, align 8
  %183 = load i32, i32* %i.i.i.i86.i, align 4
  %idxprom.i.i.i96.i = sext i32 %183 to i64
  %arrayidx.i.i.i97.i = getelementptr inbounds i8, i8* %182, i64 %idxprom.i.i.i96.i
  %184 = load i8, i8* %arrayidx.i.i.i97.i, align 1
  %call.i.i.i98.i = call zeroext i8 %181(i8 zeroext %184) #3
  %conv.i.i.i99.i = zext i8 %call.i.i.i98.i to i32
  %185 = load i8, i8* %result.i.i.i85.i, align 1
  %conv1.i.i.i100.i = zext i8 %185 to i32
  %xor.i.i.i101.i = xor i32 %conv1.i.i.i100.i, %conv.i.i.i99.i
  %conv2.i.i.i102.i = trunc i32 %xor.i.i.i101.i to i8
  store i8 %conv2.i.i.i102.i, i8* %result.i.i.i85.i, align 1
  %186 = load i32, i32* %i.i.i.i86.i, align 4
  %inc.i.i.i103.i = add nsw i32 %186, 1
  store i32 %inc.i.i.i103.i, i32* %i.i.i.i86.i, align 4
  br label %for.cond.i.i.i95.i

xors.exit.i107.i:                                 ; preds = %for.cond.i.i.i95.i
  %187 = load i8, i8* %result.i.i.i85.i, align 1
  %conv2.i105.i = zext i8 %187 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  store i8 1, i8* %i.i90.i, align 1
  br label %for.cond.i110.i

for.cond.i110.i:                                  ; preds = %for.body.i122.i, %xors.exit.i107.i
  %188 = load i8, i8* %i.i90.i, align 1
  %conv4.i108.i = zext i8 %188 to i32
  %cmp5.i109.i = icmp sle i32 %conv4.i108.i, 0
  br i1 %cmp5.i109.i, label %for.body.i122.i, label %for.end.i125.i

for.body.i122.i:                                  ; preds = %for.cond.i110.i
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  store i8 %call7.i111.i, i8* %tmp.i91.i, align 1
  %189 = load i8, i8* %tmp.i91.i, align 1
  %conv8.i112.i = zext i8 %189 to i32
  %190 = load i8*, i8** %x.addr.i88.i, align 8
  %191 = load i8, i8* %190, align 1
  %conv9.i113.i = zext i8 %191 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %190, align 1
  %192 = load i8, i8* %tmp.i91.i, align 1
  %conv11.i116.i = zext i8 %192 to i32
  %193 = load i8*, i8** %x.addr.i88.i, align 8
  %194 = load i8, i8* %i.i90.i, align 1
  %idxprom.i117.i = zext i8 %194 to i64
  %arrayidx12.i118.i = getelementptr inbounds i8, i8* %193, i64 %idxprom.i117.i
  %195 = load i8, i8* %arrayidx12.i118.i, align 1
  %conv13.i119.i = zext i8 %195 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %arrayidx12.i118.i, align 1
  %196 = load i8, i8* %i.i90.i, align 1
  %inc.i123.i = add i8 %196, 1
  store i8 %inc.i123.i, i8* %i.i90.i, align 1
  br label %for.cond.i110.i

for.end.i125.i:                                   ; preds = %for.cond.i110.i
  %197 = load i8, i8* %X.i89.i, align 1
  %conv16.i124.i = zext i8 %197 to i32
  %198 = load i8*, i8** %x.addr.i88.i, align 8
  store i8* %198, i8** %a.addr.i25.i82.i, align 8
  %199 = load i8*, i8** %a.addr.i25.i82.i, align 8
  store i8* %199, i8** %a.addr.i.i21.i78.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i22.i79.i, align 8
  store i32 0, i32* %i.i.i24.i81.i, align 4
  br label %for.cond.i.i27.i127.i

for.cond.i.i27.i127.i:                            ; preds = %for.body.i.i36.i136.i, %for.end.i125.i
  %200 = load i32, i32* %i.i.i24.i81.i, align 4
  %cmp.i.i26.i126.i = icmp sle i32 %200, 0
  br i1 %cmp.i.i26.i126.i, label %for.body.i.i36.i136.i, label %refresh_masks.exit139.i

for.body.i.i36.i136.i:                            ; preds = %for.cond.i.i27.i127.i
  %201 = load i8 (i8)*, i8 (i8)** %f.addr.i.i22.i79.i, align 8
  %202 = load i8*, i8** %a.addr.i.i21.i78.i, align 8
  %203 = load i32, i32* %i.i.i24.i81.i, align 4
  %idxprom.i.i28.i128.i = sext i32 %203 to i64
  %arrayidx.i.i29.i129.i = getelementptr inbounds i8, i8* %202, i64 %idxprom.i.i28.i128.i
  %204 = load i8, i8* %arrayidx.i.i29.i129.i, align 1
  %call.i.i30.i130.i = call zeroext i8 %201(i8 zeroext %204) #3
  %conv.i.i31.i131.i = zext i8 %call.i.i30.i130.i to i32
  %205 = load i8, i8* %result.i.i23.i80.i, align 1
  %conv1.i.i32.i132.i = zext i8 %205 to i32
  %xor.i.i33.i133.i = xor i32 %conv1.i.i32.i132.i, %conv.i.i31.i131.i
  %conv2.i.i34.i134.i = trunc i32 %xor.i.i33.i133.i to i8
  store i8 %conv2.i.i34.i134.i, i8* %result.i.i23.i80.i, align 1
  %206 = load i32, i32* %i.i.i24.i81.i, align 4
  %inc.i.i35.i135.i = add nsw i32 %206, 1
  store i32 %inc.i.i35.i135.i, i32* %i.i.i24.i81.i, align 4
  br label %for.cond.i.i27.i127.i

refresh_masks.exit139.i:                          ; preds = %for.cond.i.i27.i127.i
  %207 = load i8, i8* %result.i.i23.i80.i, align 1
  %conv18.i137.i = zext i8 %207 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [1 x i8], [1 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  store i8* %arraydecay10.i, i8** %a.addr.i155.i, align 8
  store i8* %arraydecay11.i, i8** %b.addr.i156.i, align 8
  store i8* %arraydecay12.i, i8** %c.addr.i157.i, align 8
  %call.i171.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i171.i, i8* %A.i158.i, align 1
  %call1.i172.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i172.i, i8* %B.i159.i, align 1
  %208 = load i8, i8* %A.i158.i, align 1
  %conv.i173.i = zext i8 %208 to i32
  %209 = load i8*, i8** %a.addr.i155.i, align 8
  store i8* %209, i8** %a.addr.i.i154.i, align 8
  %210 = load i8*, i8** %a.addr.i.i154.i, align 8
  store i8* %210, i8** %a.addr.i.i.i150.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i151.i, align 8
  store i32 0, i32* %i.i.i.i153.i, align 4
  br label %for.cond.i.i.i175.i

for.cond.i.i.i175.i:                              ; preds = %for.body.i.i.i184.i, %refresh_masks.exit139.i
  %211 = load i32, i32* %i.i.i.i153.i, align 4
  %cmp.i.i.i174.i = icmp sle i32 %211, 0
  br i1 %cmp.i.i.i174.i, label %for.body.i.i.i184.i, label %xors.exit.i188.i

for.body.i.i.i184.i:                              ; preds = %for.cond.i.i.i175.i
  %212 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i151.i, align 8
  %213 = load i8*, i8** %a.addr.i.i.i150.i, align 8
  %214 = load i32, i32* %i.i.i.i153.i, align 4
  %idxprom.i.i.i176.i = sext i32 %214 to i64
  %arrayidx.i.i.i177.i = getelementptr inbounds i8, i8* %213, i64 %idxprom.i.i.i176.i
  %215 = load i8, i8* %arrayidx.i.i.i177.i, align 1
  %call.i.i.i178.i = call zeroext i8 %212(i8 zeroext %215) #3
  %conv.i.i.i179.i = zext i8 %call.i.i.i178.i to i32
  %216 = load i8, i8* %result.i.i.i152.i, align 1
  %conv1.i.i.i180.i = zext i8 %216 to i32
  %xor.i.i.i181.i = xor i32 %conv1.i.i.i180.i, %conv.i.i.i179.i
  %conv2.i.i.i182.i = trunc i32 %xor.i.i.i181.i to i8
  store i8 %conv2.i.i.i182.i, i8* %result.i.i.i152.i, align 1
  %217 = load i32, i32* %i.i.i.i153.i, align 4
  %inc.i.i.i183.i = add nsw i32 %217, 1
  store i32 %inc.i.i.i183.i, i32* %i.i.i.i153.i, align 4
  br label %for.cond.i.i.i175.i

xors.exit.i188.i:                                 ; preds = %for.cond.i.i.i175.i
  %218 = load i8, i8* %result.i.i.i152.i, align 1
  %conv3.i185.i = zext i8 %218 to i32
  %cmp.i186.i = icmp eq i32 %conv.i173.i, %conv3.i185.i
  call void @assume(i1 zeroext %cmp.i186.i) #3
  %219 = load i8, i8* %B.i159.i, align 1
  %conv5.i187.i = zext i8 %219 to i32
  %220 = load i8*, i8** %b.addr.i156.i, align 8
  store i8* %220, i8** %a.addr.i149.i149.i, align 8
  %221 = load i8*, i8** %a.addr.i149.i149.i, align 8
  store i8* %221, i8** %a.addr.i.i145.i145.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i146.i, align 8
  store i32 0, i32* %i.i.i148.i148.i, align 4
  br label %for.cond.i.i151.i190.i

for.cond.i.i151.i190.i:                           ; preds = %for.body.i.i160.i199.i, %xors.exit.i188.i
  %222 = load i32, i32* %i.i.i148.i148.i, align 4
  %cmp.i.i150.i189.i = icmp sle i32 %222, 0
  br i1 %cmp.i.i150.i189.i, label %for.body.i.i160.i199.i, label %xors.exit161.i202.i

for.body.i.i160.i199.i:                           ; preds = %for.cond.i.i151.i190.i
  %223 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i146.i, align 8
  %224 = load i8*, i8** %a.addr.i.i145.i145.i, align 8
  %225 = load i32, i32* %i.i.i148.i148.i, align 4
  %idxprom.i.i152.i191.i = sext i32 %225 to i64
  %arrayidx.i.i153.i192.i = getelementptr inbounds i8, i8* %224, i64 %idxprom.i.i152.i191.i
  %226 = load i8, i8* %arrayidx.i.i153.i192.i, align 1
  %call.i.i154.i193.i = call zeroext i8 %223(i8 zeroext %226) #3
  %conv.i.i155.i194.i = zext i8 %call.i.i154.i193.i to i32
  %227 = load i8, i8* %result.i.i147.i147.i, align 1
  %conv1.i.i156.i195.i = zext i8 %227 to i32
  %xor.i.i157.i196.i = xor i32 %conv1.i.i156.i195.i, %conv.i.i155.i194.i
  %conv2.i.i158.i197.i = trunc i32 %xor.i.i157.i196.i to i8
  store i8 %conv2.i.i158.i197.i, i8* %result.i.i147.i147.i, align 1
  %228 = load i32, i32* %i.i.i148.i148.i, align 4
  %inc.i.i159.i198.i = add nsw i32 %228, 1
  store i32 %inc.i.i159.i198.i, i32* %i.i.i148.i148.i, align 4
  br label %for.cond.i.i151.i190.i

xors.exit161.i202.i:                              ; preds = %for.cond.i.i151.i190.i
  %229 = load i8, i8* %result.i.i147.i147.i, align 1
  %conv7.i200.i = zext i8 %229 to i32
  %cmp8.i201.i = icmp eq i32 %conv5.i187.i, %conv7.i200.i
  call void @assume(i1 zeroext %cmp8.i201.i) #3
  store i32 0, i32* %i.i165.i, align 4
  br label %for.cond.i204.i

for.cond.i204.i:                                  ; preds = %for.end.i224.i, %xors.exit161.i202.i
  %230 = load i32, i32* %i.i165.i, align 4
  %cmp10.i203.i = icmp sle i32 %230, 0
  br i1 %cmp10.i203.i, label %for.body.i206.i, label %for.end29.i226.i

for.body.i206.i:                                  ; preds = %for.cond.i204.i
  %231 = load i32, i32* %i.i165.i, align 4
  %add.i205.i = add nsw i32 %231, 1
  store i32 %add.i205.i, i32* %j.i166.i, align 4
  br label %for.cond12.i208.i

for.cond12.i208.i:                                ; preds = %for.body15.i222.i, %for.body.i206.i
  %232 = load i32, i32* %j.i166.i, align 4
  %cmp13.i207.i = icmp sle i32 %232, 0
  br i1 %cmp13.i207.i, label %for.body15.i222.i, label %for.end.i224.i

for.body15.i222.i:                                ; preds = %for.cond12.i208.i
  %call16.i209.i = call zeroext i8 (...) @rand() #3
  %233 = load i32, i32* %i.i165.i, align 4
  %idxprom.i210.i = sext i32 %233 to i64
  %arrayidx.i211.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom.i210.i
  %234 = load i32, i32* %j.i166.i, align 4
  %idxprom17.i212.i = sext i32 %234 to i64
  %arrayidx18.i213.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i211.i, i64 0, i64 %idxprom17.i212.i
  store i8 %call16.i209.i, i8* %arrayidx18.i213.i, align 1
  %235 = load i32, i32* %i.i165.i, align 4
  %idxprom19.i214.i = sext i32 %235 to i64
  %arrayidx20.i215.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i214.i
  %236 = load i32, i32* %j.i166.i, align 4
  %idxprom21.i216.i = sext i32 %236 to i64
  %arrayidx22.i217.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i215.i, i64 0, i64 %idxprom21.i216.i
  %237 = load i8, i8* %arrayidx22.i217.i, align 1
  %238 = load i32, i32* %j.i166.i, align 4
  %idxprom23.i218.i = sext i32 %238 to i64
  %arrayidx24.i219.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i218.i
  %239 = load i32, i32* %i.i165.i, align 4
  %idxprom25.i220.i = sext i32 %239 to i64
  %arrayidx26.i221.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i219.i, i64 0, i64 %idxprom25.i220.i
  store i8 %237, i8* %arrayidx26.i221.i, align 1
  %240 = load i32, i32* %j.i166.i, align 4
  %inc.i223.i = add nsw i32 %240, 1
  store i32 %inc.i223.i, i32* %j.i166.i, align 4
  br label %for.cond12.i208.i

for.end.i224.i:                                   ; preds = %for.cond12.i208.i
  %241 = load i32, i32* %i.i165.i, align 4
  %inc28.i225.i = add nsw i32 %241, 1
  store i32 %inc28.i225.i, i32* %i.i165.i, align 4
  br label %for.cond.i204.i

for.end29.i226.i:                                 ; preds = %for.cond.i204.i
  store i32 0, i32* %i30.i167.i, align 4
  br label %for.cond31.i228.i

for.cond31.i228.i:                                ; preds = %for.end98.i292.i, %for.end29.i226.i
  %242 = load i32, i32* %i30.i167.i, align 4
  %cmp32.i227.i = icmp sle i32 %242, 0
  br i1 %cmp32.i227.i, label %for.body34.i229.i, label %for.end101.i294.i

for.body34.i229.i:                                ; preds = %for.cond31.i228.i
  store i32 0, i32* %j35.i168.i, align 4
  br label %for.cond36.i231.i

for.cond36.i231.i:                                ; preds = %if.end.i290.i, %for.body34.i229.i
  %243 = load i32, i32* %j35.i168.i, align 4
  %cmp37.i230.i = icmp sle i32 %243, 0
  br i1 %cmp37.i230.i, label %for.body39.i233.i, label %for.end98.i292.i

for.body39.i233.i:                                ; preds = %for.cond36.i231.i
  %244 = load i32, i32* %j35.i168.i, align 4
  %245 = load i32, i32* %i30.i167.i, align 4
  %cmp40.i232.i = icmp ne i32 %244, %245
  br i1 %cmp40.i232.i, label %if.then.i289.i, label %if.end.i290.i

if.then.i289.i:                                   ; preds = %for.body39.i233.i
  %246 = load i8*, i8** %b.addr.i156.i, align 8
  %247 = load i32, i32* %j35.i168.i, align 4
  %idxprom42.i234.i = sext i32 %247 to i64
  %arrayidx43.i235.i = getelementptr inbounds i8, i8* %246, i64 %idxprom42.i234.i
  %248 = load i8, i8* %arrayidx43.i235.i, align 1
  %conv44.i236.i = zext i8 %248 to i32
  %249 = load i32, i32* %i30.i167.i, align 4
  %idxprom45.i237.i = sext i32 %249 to i64
  %arrayidx46.i238.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i237.i
  %250 = load i32, i32* %j35.i168.i, align 4
  %idxprom47.i239.i = sext i32 %250 to i64
  %arrayidx48.i240.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i238.i, i64 0, i64 %idxprom47.i239.i
  %251 = load i8, i8* %arrayidx48.i240.i, align 1
  %conv49.i241.i = zext i8 %251 to i32
  %xor.i242.i = xor i32 %conv44.i236.i, %conv49.i241.i
  %conv50.i243.i = trunc i32 %xor.i242.i to i8
  %252 = load i32, i32* %i30.i167.i, align 4
  %idxprom51.i244.i = sext i32 %252 to i64
  %arrayidx52.i245.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i244.i
  %253 = load i32, i32* %j35.i168.i, align 4
  %idxprom53.i246.i = sext i32 %253 to i64
  %arrayidx54.i247.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i245.i, i64 0, i64 %idxprom53.i246.i
  store i8 %conv50.i243.i, i8* %arrayidx54.i247.i, align 1
  %254 = load i8*, i8** %a.addr.i155.i, align 8
  %255 = load i32, i32* %i30.i167.i, align 4
  %idxprom55.i248.i = sext i32 %255 to i64
  %arrayidx56.i249.i = getelementptr inbounds i8, i8* %254, i64 %idxprom55.i248.i
  %256 = load i8, i8* %arrayidx56.i249.i, align 1
  %conv57.i250.i = zext i8 %256 to i32
  %xor58.i251.i = xor i32 %conv57.i250.i, 1
  %conv59.i252.i = trunc i32 %xor58.i251.i to i8
  %257 = load i32, i32* %i30.i167.i, align 4
  %idxprom60.i253.i = sext i32 %257 to i64
  %arrayidx61.i254.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i253.i
  %258 = load i32, i32* %j35.i168.i, align 4
  %idxprom62.i255.i = sext i32 %258 to i64
  %arrayidx63.i256.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i254.i, i64 0, i64 %idxprom62.i255.i
  %259 = load i8, i8* %arrayidx63.i256.i, align 1
  %call64.i257.i = call zeroext i8 @mult(i8 zeroext %conv59.i252.i, i8 zeroext %259) #3
  %260 = load i32, i32* %i30.i167.i, align 4
  %idxprom65.i258.i = sext i32 %260 to i64
  %arrayidx66.i259.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i258.i
  %261 = load i32, i32* %j35.i168.i, align 4
  %idxprom67.i260.i = sext i32 %261 to i64
  %arrayidx68.i261.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i259.i, i64 0, i64 %idxprom67.i260.i
  store i8 %call64.i257.i, i8* %arrayidx68.i261.i, align 1
  %262 = load i8*, i8** %a.addr.i155.i, align 8
  %263 = load i32, i32* %i30.i167.i, align 4
  %idxprom69.i262.i = sext i32 %263 to i64
  %arrayidx70.i263.i = getelementptr inbounds i8, i8* %262, i64 %idxprom69.i262.i
  %264 = load i8, i8* %arrayidx70.i263.i, align 1
  %265 = load i32, i32* %i30.i167.i, align 4
  %idxprom71.i264.i = sext i32 %265 to i64
  %arrayidx72.i265.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i264.i
  %266 = load i32, i32* %j35.i168.i, align 4
  %idxprom73.i266.i = sext i32 %266 to i64
  %arrayidx74.i267.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i265.i, i64 0, i64 %idxprom73.i266.i
  %267 = load i8, i8* %arrayidx74.i267.i, align 1
  %call75.i268.i = call zeroext i8 @mult(i8 zeroext %264, i8 zeroext %267) #3
  %268 = load i32, i32* %i30.i167.i, align 4
  %idxprom76.i269.i = sext i32 %268 to i64
  %arrayidx77.i270.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i269.i
  %269 = load i32, i32* %j35.i168.i, align 4
  %idxprom78.i271.i = sext i32 %269 to i64
  %arrayidx79.i272.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i270.i, i64 0, i64 %idxprom78.i271.i
  store i8 %call75.i268.i, i8* %arrayidx79.i272.i, align 1
  %270 = load i32, i32* %i30.i167.i, align 4
  %idxprom80.i273.i = sext i32 %270 to i64
  %arrayidx81.i274.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i273.i
  %271 = load i32, i32* %j35.i168.i, align 4
  %idxprom82.i275.i = sext i32 %271 to i64
  %arrayidx83.i276.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i274.i, i64 0, i64 %idxprom82.i275.i
  %272 = load i8, i8* %arrayidx83.i276.i, align 1
  %conv84.i277.i = zext i8 %272 to i32
  %273 = load i32, i32* %i30.i167.i, align 4
  %idxprom85.i278.i = sext i32 %273 to i64
  %arrayidx86.i279.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i278.i
  %274 = load i32, i32* %j35.i168.i, align 4
  %idxprom87.i280.i = sext i32 %274 to i64
  %arrayidx88.i281.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i279.i, i64 0, i64 %idxprom87.i280.i
  %275 = load i8, i8* %arrayidx88.i281.i, align 1
  %conv89.i282.i = zext i8 %275 to i32
  %xor90.i283.i = xor i32 %conv84.i277.i, %conv89.i282.i
  %conv91.i284.i = trunc i32 %xor90.i283.i to i8
  %276 = load i32, i32* %i30.i167.i, align 4
  %idxprom92.i285.i = sext i32 %276 to i64
  %arrayidx93.i286.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i285.i
  %277 = load i32, i32* %j35.i168.i, align 4
  %idxprom94.i287.i = sext i32 %277 to i64
  %arrayidx95.i288.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i286.i, i64 0, i64 %idxprom94.i287.i
  store i8 %conv91.i284.i, i8* %arrayidx95.i288.i, align 1
  br label %if.end.i290.i

if.end.i290.i:                                    ; preds = %if.then.i289.i, %for.body39.i233.i
  %278 = load i32, i32* %j35.i168.i, align 4
  %inc97.i291.i = add nsw i32 %278, 1
  store i32 %inc97.i291.i, i32* %j35.i168.i, align 4
  br label %for.cond36.i231.i

for.end98.i292.i:                                 ; preds = %for.cond36.i231.i
  %279 = load i32, i32* %i30.i167.i, align 4
  %inc100.i293.i = add nsw i32 %279, 1
  store i32 %inc100.i293.i, i32* %i30.i167.i, align 4
  br label %for.cond31.i228.i

for.end101.i294.i:                                ; preds = %for.cond31.i228.i
  store i32 0, i32* %i102.i169.i, align 4
  br label %for.cond103.i296.i

for.cond103.i296.i:                               ; preds = %for.end135.i322.i, %for.end101.i294.i
  %280 = load i32, i32* %i102.i169.i, align 4
  %cmp104.i295.i = icmp sle i32 %280, 0
  br i1 %cmp104.i295.i, label %for.body106.i304.i, label %for.end138.i326.i

for.body106.i304.i:                               ; preds = %for.cond103.i296.i
  %281 = load i8*, i8** %a.addr.i155.i, align 8
  %282 = load i32, i32* %i102.i169.i, align 4
  %idxprom107.i297.i = sext i32 %282 to i64
  %arrayidx108.i298.i = getelementptr inbounds i8, i8* %281, i64 %idxprom107.i297.i
  %283 = load i8, i8* %arrayidx108.i298.i, align 1
  %284 = load i8*, i8** %b.addr.i156.i, align 8
  %285 = load i32, i32* %i102.i169.i, align 4
  %idxprom109.i299.i = sext i32 %285 to i64
  %arrayidx110.i300.i = getelementptr inbounds i8, i8* %284, i64 %idxprom109.i299.i
  %286 = load i8, i8* %arrayidx110.i300.i, align 1
  %call111.i301.i = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %286) #3
  %287 = load i8*, i8** %c.addr.i157.i, align 8
  %288 = load i32, i32* %i102.i169.i, align 4
  %idxprom112.i302.i = sext i32 %288 to i64
  %arrayidx113.i303.i = getelementptr inbounds i8, i8* %287, i64 %idxprom112.i302.i
  store i8 %call111.i301.i, i8* %arrayidx113.i303.i, align 1
  store i32 0, i32* %j114.i170.i, align 4
  br label %for.cond115.i306.i

for.cond115.i306.i:                               ; preds = %if.end132.i320.i, %for.body106.i304.i
  %289 = load i32, i32* %j114.i170.i, align 4
  %cmp116.i305.i = icmp sle i32 %289, 0
  br i1 %cmp116.i305.i, label %for.body118.i308.i, label %for.end135.i322.i

for.body118.i308.i:                               ; preds = %for.cond115.i306.i
  %290 = load i32, i32* %j114.i170.i, align 4
  %291 = load i32, i32* %i102.i169.i, align 4
  %cmp119.i307.i = icmp ne i32 %290, %291
  br i1 %cmp119.i307.i, label %if.then121.i319.i, label %if.end132.i320.i

if.then121.i319.i:                                ; preds = %for.body118.i308.i
  %292 = load i32, i32* %i102.i169.i, align 4
  %idxprom122.i309.i = sext i32 %292 to i64
  %arrayidx123.i310.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i309.i
  %293 = load i32, i32* %j114.i170.i, align 4
  %idxprom124.i311.i = sext i32 %293 to i64
  %arrayidx125.i312.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i310.i, i64 0, i64 %idxprom124.i311.i
  %294 = load i8, i8* %arrayidx125.i312.i, align 1
  %conv126.i313.i = zext i8 %294 to i32
  %295 = load i8*, i8** %c.addr.i157.i, align 8
  %296 = load i32, i32* %i102.i169.i, align 4
  %idxprom127.i314.i = sext i32 %296 to i64
  %arrayidx128.i315.i = getelementptr inbounds i8, i8* %295, i64 %idxprom127.i314.i
  %297 = load i8, i8* %arrayidx128.i315.i, align 1
  %conv129.i316.i = zext i8 %297 to i32
  %xor130.i317.i = xor i32 %conv129.i316.i, %conv126.i313.i
  %conv131.i318.i = trunc i32 %xor130.i317.i to i8
  store i8 %conv131.i318.i, i8* %arrayidx128.i315.i, align 1
  br label %if.end132.i320.i

if.end132.i320.i:                                 ; preds = %if.then121.i319.i, %for.body118.i308.i
  %298 = load i32, i32* %j114.i170.i, align 4
  %inc134.i321.i = add nsw i32 %298, 1
  store i32 %inc134.i321.i, i32* %j114.i170.i, align 4
  br label %for.cond115.i306.i

for.end135.i322.i:                                ; preds = %for.cond115.i306.i
  %299 = load i32, i32* %i102.i169.i, align 4
  %inc137.i323.i = add nsw i32 %299, 1
  store i32 %inc137.i323.i, i32* %i102.i169.i, align 4
  br label %for.cond103.i296.i

for.end138.i326.i:                                ; preds = %for.cond103.i296.i
  %300 = load i8, i8* %A.i158.i, align 1
  %301 = load i8, i8* %B.i159.i, align 1
  %call139.i324.i = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301) #3
  %conv140.i325.i = zext i8 %call139.i324.i to i32
  %302 = load i8*, i8** %c.addr.i157.i, align 8
  store i8* %302, i8** %a.addr.i166.i144.i, align 8
  %303 = load i8*, i8** %a.addr.i166.i144.i, align 8
  store i8* %303, i8** %a.addr.i.i162.i140.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i141.i, align 8
  store i32 0, i32* %i.i.i165.i143.i, align 4
  br label %for.cond.i.i168.i328.i

for.cond.i.i168.i328.i:                           ; preds = %for.body.i.i177.i337.i, %for.end138.i326.i
  %304 = load i32, i32* %i.i.i165.i143.i, align 4
  %cmp.i.i167.i327.i = icmp sle i32 %304, 0
  br i1 %cmp.i.i167.i327.i, label %for.body.i.i177.i337.i, label %sec_mult.exit340.i

for.body.i.i177.i337.i:                           ; preds = %for.cond.i.i168.i328.i
  %305 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i141.i, align 8
  %306 = load i8*, i8** %a.addr.i.i162.i140.i, align 8
  %307 = load i32, i32* %i.i.i165.i143.i, align 4
  %idxprom.i.i169.i329.i = sext i32 %307 to i64
  %arrayidx.i.i170.i330.i = getelementptr inbounds i8, i8* %306, i64 %idxprom.i.i169.i329.i
  %308 = load i8, i8* %arrayidx.i.i170.i330.i, align 1
  %call.i.i171.i331.i = call zeroext i8 %305(i8 zeroext %308) #3
  %conv.i.i172.i332.i = zext i8 %call.i.i171.i331.i to i32
  %309 = load i8, i8* %result.i.i164.i142.i, align 1
  %conv1.i.i173.i333.i = zext i8 %309 to i32
  %xor.i.i174.i334.i = xor i32 %conv1.i.i173.i333.i, %conv.i.i172.i332.i
  %conv2.i.i175.i335.i = trunc i32 %xor.i.i174.i334.i to i8
  store i8 %conv2.i.i175.i335.i, i8* %result.i.i164.i142.i, align 1
  %310 = load i32, i32* %i.i.i165.i143.i, align 4
  %inc.i.i176.i336.i = add nsw i32 %310, 1
  store i32 %inc.i.i176.i336.i, i32* %i.i.i165.i143.i, align 4
  br label %for.cond.i.i168.i328.i

sec_mult.exit340.i:                               ; preds = %for.cond.i.i168.i328.i
  %311 = load i8, i8* %result.i.i164.i142.i, align 1
  %conv142.i338.i = zext i8 %311 to i32
  %cmp143.i339.i = icmp eq i32 %conv140.i325.i, %conv142.i338.i
  call void @assert(i1 zeroext %cmp143.i339.i) #3
  %arraydecay13.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  store i8* %arraydecay13.i, i8** %from.addr.i341.i, align 8
  store i8* %arraydecay14.i, i8** %to.addr.i342.i, align 8
  store i8 (i8)* @exp16, i8 (i8)** %f.addr.i343.i, align 8
  store i32 0, i32* %i.i344.i, align 4
  br label %for.cond.i346.i

for.cond.i346.i:                                  ; preds = %for.body.i352.i, %sec_mult.exit340.i
  %312 = load i32, i32* %i.i344.i, align 4
  %cmp.i345.i = icmp sle i32 %312, 0
  br i1 %cmp.i345.i, label %for.body.i352.i, label %transform.exit355.i

for.body.i352.i:                                  ; preds = %for.cond.i346.i
  %313 = load i8 (i8)*, i8 (i8)** %f.addr.i343.i, align 8
  %314 = load i8*, i8** %from.addr.i341.i, align 8
  %315 = load i32, i32* %i.i344.i, align 4
  %idxprom.i347.i = sext i32 %315 to i64
  %arrayidx.i348.i = getelementptr inbounds i8, i8* %314, i64 %idxprom.i347.i
  %316 = load i8, i8* %arrayidx.i348.i, align 1
  %call.i349.i = call zeroext i8 %313(i8 zeroext %316) #3
  %317 = load i8*, i8** %to.addr.i342.i, align 8
  %318 = load i32, i32* %i.i344.i, align 4
  %idxprom1.i350.i = sext i32 %318 to i64
  %arrayidx2.i351.i = getelementptr inbounds i8, i8* %317, i64 %idxprom1.i350.i
  store i8 %call.i349.i, i8* %arrayidx2.i351.i, align 1
  %319 = load i32, i32* %i.i344.i, align 4
  %inc.i353.i = add nsw i32 %319, 1
  store i32 %inc.i353.i, i32* %i.i344.i, align 4
  br label %for.cond.i346.i

transform.exit355.i:                              ; preds = %for.cond.i346.i
  %arraydecay15.i = getelementptr inbounds [1 x i8], [1 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [1 x i8], [1 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  store i8* %arraydecay15.i, i8** %a.addr.i371.i, align 8
  store i8* %arraydecay16.i, i8** %b.addr.i372.i, align 8
  store i8* %arraydecay17.i, i8** %c.addr.i373.i, align 8
  %call.i387.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i387.i, i8* %A.i374.i, align 1
  %call1.i388.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i388.i, i8* %B.i375.i, align 1
  %320 = load i8, i8* %A.i374.i, align 1
  %conv.i389.i = zext i8 %320 to i32
  %321 = load i8*, i8** %a.addr.i371.i, align 8
  store i8* %321, i8** %a.addr.i.i370.i, align 8
  %322 = load i8*, i8** %a.addr.i.i370.i, align 8
  store i8* %322, i8** %a.addr.i.i.i366.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i367.i, align 8
  store i32 0, i32* %i.i.i.i369.i, align 4
  br label %for.cond.i.i.i391.i

for.cond.i.i.i391.i:                              ; preds = %for.body.i.i.i400.i, %transform.exit355.i
  %323 = load i32, i32* %i.i.i.i369.i, align 4
  %cmp.i.i.i390.i = icmp sle i32 %323, 0
  br i1 %cmp.i.i.i390.i, label %for.body.i.i.i400.i, label %xors.exit.i404.i

for.body.i.i.i400.i:                              ; preds = %for.cond.i.i.i391.i
  %324 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i367.i, align 8
  %325 = load i8*, i8** %a.addr.i.i.i366.i, align 8
  %326 = load i32, i32* %i.i.i.i369.i, align 4
  %idxprom.i.i.i392.i = sext i32 %326 to i64
  %arrayidx.i.i.i393.i = getelementptr inbounds i8, i8* %325, i64 %idxprom.i.i.i392.i
  %327 = load i8, i8* %arrayidx.i.i.i393.i, align 1
  %call.i.i.i394.i = call zeroext i8 %324(i8 zeroext %327) #3
  %conv.i.i.i395.i = zext i8 %call.i.i.i394.i to i32
  %328 = load i8, i8* %result.i.i.i368.i, align 1
  %conv1.i.i.i396.i = zext i8 %328 to i32
  %xor.i.i.i397.i = xor i32 %conv1.i.i.i396.i, %conv.i.i.i395.i
  %conv2.i.i.i398.i = trunc i32 %xor.i.i.i397.i to i8
  store i8 %conv2.i.i.i398.i, i8* %result.i.i.i368.i, align 1
  %329 = load i32, i32* %i.i.i.i369.i, align 4
  %inc.i.i.i399.i = add nsw i32 %329, 1
  store i32 %inc.i.i.i399.i, i32* %i.i.i.i369.i, align 4
  br label %for.cond.i.i.i391.i

xors.exit.i404.i:                                 ; preds = %for.cond.i.i.i391.i
  %330 = load i8, i8* %result.i.i.i368.i, align 1
  %conv3.i401.i = zext i8 %330 to i32
  %cmp.i402.i = icmp eq i32 %conv.i389.i, %conv3.i401.i
  call void @assume(i1 zeroext %cmp.i402.i) #3
  %331 = load i8, i8* %B.i375.i, align 1
  %conv5.i403.i = zext i8 %331 to i32
  %332 = load i8*, i8** %b.addr.i372.i, align 8
  store i8* %332, i8** %a.addr.i149.i365.i, align 8
  %333 = load i8*, i8** %a.addr.i149.i365.i, align 8
  store i8* %333, i8** %a.addr.i.i145.i361.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i362.i, align 8
  store i32 0, i32* %i.i.i148.i364.i, align 4
  br label %for.cond.i.i151.i406.i

for.cond.i.i151.i406.i:                           ; preds = %for.body.i.i160.i415.i, %xors.exit.i404.i
  %334 = load i32, i32* %i.i.i148.i364.i, align 4
  %cmp.i.i150.i405.i = icmp sle i32 %334, 0
  br i1 %cmp.i.i150.i405.i, label %for.body.i.i160.i415.i, label %xors.exit161.i418.i

for.body.i.i160.i415.i:                           ; preds = %for.cond.i.i151.i406.i
  %335 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i362.i, align 8
  %336 = load i8*, i8** %a.addr.i.i145.i361.i, align 8
  %337 = load i32, i32* %i.i.i148.i364.i, align 4
  %idxprom.i.i152.i407.i = sext i32 %337 to i64
  %arrayidx.i.i153.i408.i = getelementptr inbounds i8, i8* %336, i64 %idxprom.i.i152.i407.i
  %338 = load i8, i8* %arrayidx.i.i153.i408.i, align 1
  %call.i.i154.i409.i = call zeroext i8 %335(i8 zeroext %338) #3
  %conv.i.i155.i410.i = zext i8 %call.i.i154.i409.i to i32
  %339 = load i8, i8* %result.i.i147.i363.i, align 1
  %conv1.i.i156.i411.i = zext i8 %339 to i32
  %xor.i.i157.i412.i = xor i32 %conv1.i.i156.i411.i, %conv.i.i155.i410.i
  %conv2.i.i158.i413.i = trunc i32 %xor.i.i157.i412.i to i8
  store i8 %conv2.i.i158.i413.i, i8* %result.i.i147.i363.i, align 1
  %340 = load i32, i32* %i.i.i148.i364.i, align 4
  %inc.i.i159.i414.i = add nsw i32 %340, 1
  store i32 %inc.i.i159.i414.i, i32* %i.i.i148.i364.i, align 4
  br label %for.cond.i.i151.i406.i

xors.exit161.i418.i:                              ; preds = %for.cond.i.i151.i406.i
  %341 = load i8, i8* %result.i.i147.i363.i, align 1
  %conv7.i416.i = zext i8 %341 to i32
  %cmp8.i417.i = icmp eq i32 %conv5.i403.i, %conv7.i416.i
  call void @assume(i1 zeroext %cmp8.i417.i) #3
  store i32 0, i32* %i.i381.i, align 4
  br label %for.cond.i420.i

for.cond.i420.i:                                  ; preds = %for.end.i440.i, %xors.exit161.i418.i
  %342 = load i32, i32* %i.i381.i, align 4
  %cmp10.i419.i = icmp sle i32 %342, 0
  br i1 %cmp10.i419.i, label %for.body.i422.i, label %for.end29.i442.i

for.body.i422.i:                                  ; preds = %for.cond.i420.i
  %343 = load i32, i32* %i.i381.i, align 4
  %add.i421.i = add nsw i32 %343, 1
  store i32 %add.i421.i, i32* %j.i382.i, align 4
  br label %for.cond12.i424.i

for.cond12.i424.i:                                ; preds = %for.body15.i438.i, %for.body.i422.i
  %344 = load i32, i32* %j.i382.i, align 4
  %cmp13.i423.i = icmp sle i32 %344, 0
  br i1 %cmp13.i423.i, label %for.body15.i438.i, label %for.end.i440.i

for.body15.i438.i:                                ; preds = %for.cond12.i424.i
  %call16.i425.i = call zeroext i8 (...) @rand() #3
  %345 = load i32, i32* %i.i381.i, align 4
  %idxprom.i426.i = sext i32 %345 to i64
  %arrayidx.i427.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom.i426.i
  %346 = load i32, i32* %j.i382.i, align 4
  %idxprom17.i428.i = sext i32 %346 to i64
  %arrayidx18.i429.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i427.i, i64 0, i64 %idxprom17.i428.i
  store i8 %call16.i425.i, i8* %arrayidx18.i429.i, align 1
  %347 = load i32, i32* %i.i381.i, align 4
  %idxprom19.i430.i = sext i32 %347 to i64
  %arrayidx20.i431.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i430.i
  %348 = load i32, i32* %j.i382.i, align 4
  %idxprom21.i432.i = sext i32 %348 to i64
  %arrayidx22.i433.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i431.i, i64 0, i64 %idxprom21.i432.i
  %349 = load i8, i8* %arrayidx22.i433.i, align 1
  %350 = load i32, i32* %j.i382.i, align 4
  %idxprom23.i434.i = sext i32 %350 to i64
  %arrayidx24.i435.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i434.i
  %351 = load i32, i32* %i.i381.i, align 4
  %idxprom25.i436.i = sext i32 %351 to i64
  %arrayidx26.i437.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i435.i, i64 0, i64 %idxprom25.i436.i
  store i8 %349, i8* %arrayidx26.i437.i, align 1
  %352 = load i32, i32* %j.i382.i, align 4
  %inc.i439.i = add nsw i32 %352, 1
  store i32 %inc.i439.i, i32* %j.i382.i, align 4
  br label %for.cond12.i424.i

for.end.i440.i:                                   ; preds = %for.cond12.i424.i
  %353 = load i32, i32* %i.i381.i, align 4
  %inc28.i441.i = add nsw i32 %353, 1
  store i32 %inc28.i441.i, i32* %i.i381.i, align 4
  br label %for.cond.i420.i

for.end29.i442.i:                                 ; preds = %for.cond.i420.i
  store i32 0, i32* %i30.i383.i, align 4
  br label %for.cond31.i444.i

for.cond31.i444.i:                                ; preds = %for.end98.i508.i, %for.end29.i442.i
  %354 = load i32, i32* %i30.i383.i, align 4
  %cmp32.i443.i = icmp sle i32 %354, 0
  br i1 %cmp32.i443.i, label %for.body34.i445.i, label %for.end101.i510.i

for.body34.i445.i:                                ; preds = %for.cond31.i444.i
  store i32 0, i32* %j35.i384.i, align 4
  br label %for.cond36.i447.i

for.cond36.i447.i:                                ; preds = %if.end.i506.i, %for.body34.i445.i
  %355 = load i32, i32* %j35.i384.i, align 4
  %cmp37.i446.i = icmp sle i32 %355, 0
  br i1 %cmp37.i446.i, label %for.body39.i449.i, label %for.end98.i508.i

for.body39.i449.i:                                ; preds = %for.cond36.i447.i
  %356 = load i32, i32* %j35.i384.i, align 4
  %357 = load i32, i32* %i30.i383.i, align 4
  %cmp40.i448.i = icmp ne i32 %356, %357
  br i1 %cmp40.i448.i, label %if.then.i505.i, label %if.end.i506.i

if.then.i505.i:                                   ; preds = %for.body39.i449.i
  %358 = load i8*, i8** %b.addr.i372.i, align 8
  %359 = load i32, i32* %j35.i384.i, align 4
  %idxprom42.i450.i = sext i32 %359 to i64
  %arrayidx43.i451.i = getelementptr inbounds i8, i8* %358, i64 %idxprom42.i450.i
  %360 = load i8, i8* %arrayidx43.i451.i, align 1
  %conv44.i452.i = zext i8 %360 to i32
  %361 = load i32, i32* %i30.i383.i, align 4
  %idxprom45.i453.i = sext i32 %361 to i64
  %arrayidx46.i454.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i453.i
  %362 = load i32, i32* %j35.i384.i, align 4
  %idxprom47.i455.i = sext i32 %362 to i64
  %arrayidx48.i456.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i454.i, i64 0, i64 %idxprom47.i455.i
  %363 = load i8, i8* %arrayidx48.i456.i, align 1
  %conv49.i457.i = zext i8 %363 to i32
  %xor.i458.i = xor i32 %conv44.i452.i, %conv49.i457.i
  %conv50.i459.i = trunc i32 %xor.i458.i to i8
  %364 = load i32, i32* %i30.i383.i, align 4
  %idxprom51.i460.i = sext i32 %364 to i64
  %arrayidx52.i461.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i460.i
  %365 = load i32, i32* %j35.i384.i, align 4
  %idxprom53.i462.i = sext i32 %365 to i64
  %arrayidx54.i463.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i461.i, i64 0, i64 %idxprom53.i462.i
  store i8 %conv50.i459.i, i8* %arrayidx54.i463.i, align 1
  %366 = load i8*, i8** %a.addr.i371.i, align 8
  %367 = load i32, i32* %i30.i383.i, align 4
  %idxprom55.i464.i = sext i32 %367 to i64
  %arrayidx56.i465.i = getelementptr inbounds i8, i8* %366, i64 %idxprom55.i464.i
  %368 = load i8, i8* %arrayidx56.i465.i, align 1
  %conv57.i466.i = zext i8 %368 to i32
  %xor58.i467.i = xor i32 %conv57.i466.i, 1
  %conv59.i468.i = trunc i32 %xor58.i467.i to i8
  %369 = load i32, i32* %i30.i383.i, align 4
  %idxprom60.i469.i = sext i32 %369 to i64
  %arrayidx61.i470.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i469.i
  %370 = load i32, i32* %j35.i384.i, align 4
  %idxprom62.i471.i = sext i32 %370 to i64
  %arrayidx63.i472.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i470.i, i64 0, i64 %idxprom62.i471.i
  %371 = load i8, i8* %arrayidx63.i472.i, align 1
  %call64.i473.i = call zeroext i8 @mult(i8 zeroext %conv59.i468.i, i8 zeroext %371) #3
  %372 = load i32, i32* %i30.i383.i, align 4
  %idxprom65.i474.i = sext i32 %372 to i64
  %arrayidx66.i475.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i474.i
  %373 = load i32, i32* %j35.i384.i, align 4
  %idxprom67.i476.i = sext i32 %373 to i64
  %arrayidx68.i477.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i475.i, i64 0, i64 %idxprom67.i476.i
  store i8 %call64.i473.i, i8* %arrayidx68.i477.i, align 1
  %374 = load i8*, i8** %a.addr.i371.i, align 8
  %375 = load i32, i32* %i30.i383.i, align 4
  %idxprom69.i478.i = sext i32 %375 to i64
  %arrayidx70.i479.i = getelementptr inbounds i8, i8* %374, i64 %idxprom69.i478.i
  %376 = load i8, i8* %arrayidx70.i479.i, align 1
  %377 = load i32, i32* %i30.i383.i, align 4
  %idxprom71.i480.i = sext i32 %377 to i64
  %arrayidx72.i481.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i480.i
  %378 = load i32, i32* %j35.i384.i, align 4
  %idxprom73.i482.i = sext i32 %378 to i64
  %arrayidx74.i483.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i481.i, i64 0, i64 %idxprom73.i482.i
  %379 = load i8, i8* %arrayidx74.i483.i, align 1
  %call75.i484.i = call zeroext i8 @mult(i8 zeroext %376, i8 zeroext %379) #3
  %380 = load i32, i32* %i30.i383.i, align 4
  %idxprom76.i485.i = sext i32 %380 to i64
  %arrayidx77.i486.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i485.i
  %381 = load i32, i32* %j35.i384.i, align 4
  %idxprom78.i487.i = sext i32 %381 to i64
  %arrayidx79.i488.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i486.i, i64 0, i64 %idxprom78.i487.i
  store i8 %call75.i484.i, i8* %arrayidx79.i488.i, align 1
  %382 = load i32, i32* %i30.i383.i, align 4
  %idxprom80.i489.i = sext i32 %382 to i64
  %arrayidx81.i490.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i489.i
  %383 = load i32, i32* %j35.i384.i, align 4
  %idxprom82.i491.i = sext i32 %383 to i64
  %arrayidx83.i492.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i490.i, i64 0, i64 %idxprom82.i491.i
  %384 = load i8, i8* %arrayidx83.i492.i, align 1
  %conv84.i493.i = zext i8 %384 to i32
  %385 = load i32, i32* %i30.i383.i, align 4
  %idxprom85.i494.i = sext i32 %385 to i64
  %arrayidx86.i495.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i494.i
  %386 = load i32, i32* %j35.i384.i, align 4
  %idxprom87.i496.i = sext i32 %386 to i64
  %arrayidx88.i497.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i495.i, i64 0, i64 %idxprom87.i496.i
  %387 = load i8, i8* %arrayidx88.i497.i, align 1
  %conv89.i498.i = zext i8 %387 to i32
  %xor90.i499.i = xor i32 %conv84.i493.i, %conv89.i498.i
  %conv91.i500.i = trunc i32 %xor90.i499.i to i8
  %388 = load i32, i32* %i30.i383.i, align 4
  %idxprom92.i501.i = sext i32 %388 to i64
  %arrayidx93.i502.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i501.i
  %389 = load i32, i32* %j35.i384.i, align 4
  %idxprom94.i503.i = sext i32 %389 to i64
  %arrayidx95.i504.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i502.i, i64 0, i64 %idxprom94.i503.i
  store i8 %conv91.i500.i, i8* %arrayidx95.i504.i, align 1
  br label %if.end.i506.i

if.end.i506.i:                                    ; preds = %if.then.i505.i, %for.body39.i449.i
  %390 = load i32, i32* %j35.i384.i, align 4
  %inc97.i507.i = add nsw i32 %390, 1
  store i32 %inc97.i507.i, i32* %j35.i384.i, align 4
  br label %for.cond36.i447.i

for.end98.i508.i:                                 ; preds = %for.cond36.i447.i
  %391 = load i32, i32* %i30.i383.i, align 4
  %inc100.i509.i = add nsw i32 %391, 1
  store i32 %inc100.i509.i, i32* %i30.i383.i, align 4
  br label %for.cond31.i444.i

for.end101.i510.i:                                ; preds = %for.cond31.i444.i
  store i32 0, i32* %i102.i385.i, align 4
  br label %for.cond103.i512.i

for.cond103.i512.i:                               ; preds = %for.end135.i538.i, %for.end101.i510.i
  %392 = load i32, i32* %i102.i385.i, align 4
  %cmp104.i511.i = icmp sle i32 %392, 0
  br i1 %cmp104.i511.i, label %for.body106.i520.i, label %for.end138.i542.i

for.body106.i520.i:                               ; preds = %for.cond103.i512.i
  %393 = load i8*, i8** %a.addr.i371.i, align 8
  %394 = load i32, i32* %i102.i385.i, align 4
  %idxprom107.i513.i = sext i32 %394 to i64
  %arrayidx108.i514.i = getelementptr inbounds i8, i8* %393, i64 %idxprom107.i513.i
  %395 = load i8, i8* %arrayidx108.i514.i, align 1
  %396 = load i8*, i8** %b.addr.i372.i, align 8
  %397 = load i32, i32* %i102.i385.i, align 4
  %idxprom109.i515.i = sext i32 %397 to i64
  %arrayidx110.i516.i = getelementptr inbounds i8, i8* %396, i64 %idxprom109.i515.i
  %398 = load i8, i8* %arrayidx110.i516.i, align 1
  %call111.i517.i = call zeroext i8 @mult(i8 zeroext %395, i8 zeroext %398) #3
  %399 = load i8*, i8** %c.addr.i373.i, align 8
  %400 = load i32, i32* %i102.i385.i, align 4
  %idxprom112.i518.i = sext i32 %400 to i64
  %arrayidx113.i519.i = getelementptr inbounds i8, i8* %399, i64 %idxprom112.i518.i
  store i8 %call111.i517.i, i8* %arrayidx113.i519.i, align 1
  store i32 0, i32* %j114.i386.i, align 4
  br label %for.cond115.i522.i

for.cond115.i522.i:                               ; preds = %if.end132.i536.i, %for.body106.i520.i
  %401 = load i32, i32* %j114.i386.i, align 4
  %cmp116.i521.i = icmp sle i32 %401, 0
  br i1 %cmp116.i521.i, label %for.body118.i524.i, label %for.end135.i538.i

for.body118.i524.i:                               ; preds = %for.cond115.i522.i
  %402 = load i32, i32* %j114.i386.i, align 4
  %403 = load i32, i32* %i102.i385.i, align 4
  %cmp119.i523.i = icmp ne i32 %402, %403
  br i1 %cmp119.i523.i, label %if.then121.i535.i, label %if.end132.i536.i

if.then121.i535.i:                                ; preds = %for.body118.i524.i
  %404 = load i32, i32* %i102.i385.i, align 4
  %idxprom122.i525.i = sext i32 %404 to i64
  %arrayidx123.i526.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i525.i
  %405 = load i32, i32* %j114.i386.i, align 4
  %idxprom124.i527.i = sext i32 %405 to i64
  %arrayidx125.i528.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i526.i, i64 0, i64 %idxprom124.i527.i
  %406 = load i8, i8* %arrayidx125.i528.i, align 1
  %conv126.i529.i = zext i8 %406 to i32
  %407 = load i8*, i8** %c.addr.i373.i, align 8
  %408 = load i32, i32* %i102.i385.i, align 4
  %idxprom127.i530.i = sext i32 %408 to i64
  %arrayidx128.i531.i = getelementptr inbounds i8, i8* %407, i64 %idxprom127.i530.i
  %409 = load i8, i8* %arrayidx128.i531.i, align 1
  %conv129.i532.i = zext i8 %409 to i32
  %xor130.i533.i = xor i32 %conv129.i532.i, %conv126.i529.i
  %conv131.i534.i = trunc i32 %xor130.i533.i to i8
  store i8 %conv131.i534.i, i8* %arrayidx128.i531.i, align 1
  br label %if.end132.i536.i

if.end132.i536.i:                                 ; preds = %if.then121.i535.i, %for.body118.i524.i
  %410 = load i32, i32* %j114.i386.i, align 4
  %inc134.i537.i = add nsw i32 %410, 1
  store i32 %inc134.i537.i, i32* %j114.i386.i, align 4
  br label %for.cond115.i522.i

for.end135.i538.i:                                ; preds = %for.cond115.i522.i
  %411 = load i32, i32* %i102.i385.i, align 4
  %inc137.i539.i = add nsw i32 %411, 1
  store i32 %inc137.i539.i, i32* %i102.i385.i, align 4
  br label %for.cond103.i512.i

for.end138.i542.i:                                ; preds = %for.cond103.i512.i
  %412 = load i8, i8* %A.i374.i, align 1
  %413 = load i8, i8* %B.i375.i, align 1
  %call139.i540.i = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413) #3
  %conv140.i541.i = zext i8 %call139.i540.i to i32
  %414 = load i8*, i8** %c.addr.i373.i, align 8
  store i8* %414, i8** %a.addr.i166.i360.i, align 8
  %415 = load i8*, i8** %a.addr.i166.i360.i, align 8
  store i8* %415, i8** %a.addr.i.i162.i356.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i357.i, align 8
  store i32 0, i32* %i.i.i165.i359.i, align 4
  br label %for.cond.i.i168.i544.i

for.cond.i.i168.i544.i:                           ; preds = %for.body.i.i177.i553.i, %for.end138.i542.i
  %416 = load i32, i32* %i.i.i165.i359.i, align 4
  %cmp.i.i167.i543.i = icmp sle i32 %416, 0
  br i1 %cmp.i.i167.i543.i, label %for.body.i.i177.i553.i, label %sec_mult.exit556.i

for.body.i.i177.i553.i:                           ; preds = %for.cond.i.i168.i544.i
  %417 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i357.i, align 8
  %418 = load i8*, i8** %a.addr.i.i162.i356.i, align 8
  %419 = load i32, i32* %i.i.i165.i359.i, align 4
  %idxprom.i.i169.i545.i = sext i32 %419 to i64
  %arrayidx.i.i170.i546.i = getelementptr inbounds i8, i8* %418, i64 %idxprom.i.i169.i545.i
  %420 = load i8, i8* %arrayidx.i.i170.i546.i, align 1
  %call.i.i171.i547.i = call zeroext i8 %417(i8 zeroext %420) #3
  %conv.i.i172.i548.i = zext i8 %call.i.i171.i547.i to i32
  %421 = load i8, i8* %result.i.i164.i358.i, align 1
  %conv1.i.i173.i549.i = zext i8 %421 to i32
  %xor.i.i174.i550.i = xor i32 %conv1.i.i173.i549.i, %conv.i.i172.i548.i
  %conv2.i.i175.i551.i = trunc i32 %xor.i.i174.i550.i to i8
  store i8 %conv2.i.i175.i551.i, i8* %result.i.i164.i358.i, align 1
  %422 = load i32, i32* %i.i.i165.i359.i, align 4
  %inc.i.i176.i552.i = add nsw i32 %422, 1
  store i32 %inc.i.i176.i552.i, i32* %i.i.i165.i359.i, align 4
  br label %for.cond.i.i168.i544.i

sec_mult.exit556.i:                               ; preds = %for.cond.i.i168.i544.i
  %423 = load i8, i8* %result.i.i164.i358.i, align 1
  %conv142.i554.i = zext i8 %423 to i32
  %cmp143.i555.i = icmp eq i32 %conv140.i541.i, %conv142.i554.i
  call void @assert(i1 zeroext %cmp143.i555.i) #3
  %arraydecay18.i = getelementptr inbounds [1 x i8], [1 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [1 x i8], [1 x i8]* %z.i, i64 0, i64 0
  %424 = load i8*, i8** %y.addr.i, align 8
  store i8* %arraydecay18.i, i8** %a.addr.i572.i, align 8
  store i8* %arraydecay19.i, i8** %b.addr.i573.i, align 8
  store i8* %424, i8** %c.addr.i574.i, align 8
  %call.i588.i = call zeroext i8 (...) @rand() #3
  store i8 %call.i588.i, i8* %A.i575.i, align 1
  %call1.i589.i = call zeroext i8 (...) @rand() #3
  store i8 %call1.i589.i, i8* %B.i576.i, align 1
  %425 = load i8, i8* %A.i575.i, align 1
  %conv.i590.i = zext i8 %425 to i32
  %426 = load i8*, i8** %a.addr.i572.i, align 8
  store i8* %426, i8** %a.addr.i.i571.i, align 8
  %427 = load i8*, i8** %a.addr.i.i571.i, align 8
  store i8* %427, i8** %a.addr.i.i.i567.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i568.i, align 8
  store i32 0, i32* %i.i.i.i570.i, align 4
  br label %for.cond.i.i.i592.i

for.cond.i.i.i592.i:                              ; preds = %for.body.i.i.i601.i, %sec_mult.exit556.i
  %428 = load i32, i32* %i.i.i.i570.i, align 4
  %cmp.i.i.i591.i = icmp sle i32 %428, 0
  br i1 %cmp.i.i.i591.i, label %for.body.i.i.i601.i, label %xors.exit.i605.i

for.body.i.i.i601.i:                              ; preds = %for.cond.i.i.i592.i
  %429 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i568.i, align 8
  %430 = load i8*, i8** %a.addr.i.i.i567.i, align 8
  %431 = load i32, i32* %i.i.i.i570.i, align 4
  %idxprom.i.i.i593.i = sext i32 %431 to i64
  %arrayidx.i.i.i594.i = getelementptr inbounds i8, i8* %430, i64 %idxprom.i.i.i593.i
  %432 = load i8, i8* %arrayidx.i.i.i594.i, align 1
  %call.i.i.i595.i = call zeroext i8 %429(i8 zeroext %432) #3
  %conv.i.i.i596.i = zext i8 %call.i.i.i595.i to i32
  %433 = load i8, i8* %result.i.i.i569.i, align 1
  %conv1.i.i.i597.i = zext i8 %433 to i32
  %xor.i.i.i598.i = xor i32 %conv1.i.i.i597.i, %conv.i.i.i596.i
  %conv2.i.i.i599.i = trunc i32 %xor.i.i.i598.i to i8
  store i8 %conv2.i.i.i599.i, i8* %result.i.i.i569.i, align 1
  %434 = load i32, i32* %i.i.i.i570.i, align 4
  %inc.i.i.i600.i = add nsw i32 %434, 1
  store i32 %inc.i.i.i600.i, i32* %i.i.i.i570.i, align 4
  br label %for.cond.i.i.i592.i

xors.exit.i605.i:                                 ; preds = %for.cond.i.i.i592.i
  %435 = load i8, i8* %result.i.i.i569.i, align 1
  %conv3.i602.i = zext i8 %435 to i32
  %cmp.i603.i = icmp eq i32 %conv.i590.i, %conv3.i602.i
  call void @assume(i1 zeroext %cmp.i603.i) #3
  %436 = load i8, i8* %B.i576.i, align 1
  %conv5.i604.i = zext i8 %436 to i32
  %437 = load i8*, i8** %b.addr.i573.i, align 8
  store i8* %437, i8** %a.addr.i149.i566.i, align 8
  %438 = load i8*, i8** %a.addr.i149.i566.i, align 8
  store i8* %438, i8** %a.addr.i.i145.i562.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i563.i, align 8
  store i32 0, i32* %i.i.i148.i565.i, align 4
  br label %for.cond.i.i151.i607.i

for.cond.i.i151.i607.i:                           ; preds = %for.body.i.i160.i616.i, %xors.exit.i605.i
  %439 = load i32, i32* %i.i.i148.i565.i, align 4
  %cmp.i.i150.i606.i = icmp sle i32 %439, 0
  br i1 %cmp.i.i150.i606.i, label %for.body.i.i160.i616.i, label %xors.exit161.i619.i

for.body.i.i160.i616.i:                           ; preds = %for.cond.i.i151.i607.i
  %440 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i563.i, align 8
  %441 = load i8*, i8** %a.addr.i.i145.i562.i, align 8
  %442 = load i32, i32* %i.i.i148.i565.i, align 4
  %idxprom.i.i152.i608.i = sext i32 %442 to i64
  %arrayidx.i.i153.i609.i = getelementptr inbounds i8, i8* %441, i64 %idxprom.i.i152.i608.i
  %443 = load i8, i8* %arrayidx.i.i153.i609.i, align 1
  %call.i.i154.i610.i = call zeroext i8 %440(i8 zeroext %443) #3
  %conv.i.i155.i611.i = zext i8 %call.i.i154.i610.i to i32
  %444 = load i8, i8* %result.i.i147.i564.i, align 1
  %conv1.i.i156.i612.i = zext i8 %444 to i32
  %xor.i.i157.i613.i = xor i32 %conv1.i.i156.i612.i, %conv.i.i155.i611.i
  %conv2.i.i158.i614.i = trunc i32 %xor.i.i157.i613.i to i8
  store i8 %conv2.i.i158.i614.i, i8* %result.i.i147.i564.i, align 1
  %445 = load i32, i32* %i.i.i148.i565.i, align 4
  %inc.i.i159.i615.i = add nsw i32 %445, 1
  store i32 %inc.i.i159.i615.i, i32* %i.i.i148.i565.i, align 4
  br label %for.cond.i.i151.i607.i

xors.exit161.i619.i:                              ; preds = %for.cond.i.i151.i607.i
  %446 = load i8, i8* %result.i.i147.i564.i, align 1
  %conv7.i617.i = zext i8 %446 to i32
  %cmp8.i618.i = icmp eq i32 %conv5.i604.i, %conv7.i617.i
  call void @assume(i1 zeroext %cmp8.i618.i) #3
  store i32 0, i32* %i.i582.i, align 4
  br label %for.cond.i621.i

for.cond.i621.i:                                  ; preds = %for.end.i641.i, %xors.exit161.i619.i
  %447 = load i32, i32* %i.i582.i, align 4
  %cmp10.i620.i = icmp sle i32 %447, 0
  br i1 %cmp10.i620.i, label %for.body.i623.i, label %for.end29.i643.i

for.body.i623.i:                                  ; preds = %for.cond.i621.i
  %448 = load i32, i32* %i.i582.i, align 4
  %add.i622.i = add nsw i32 %448, 1
  store i32 %add.i622.i, i32* %j.i583.i, align 4
  br label %for.cond12.i625.i

for.cond12.i625.i:                                ; preds = %for.body15.i639.i, %for.body.i623.i
  %449 = load i32, i32* %j.i583.i, align 4
  %cmp13.i624.i = icmp sle i32 %449, 0
  br i1 %cmp13.i624.i, label %for.body15.i639.i, label %for.end.i641.i

for.body15.i639.i:                                ; preds = %for.cond12.i625.i
  %call16.i626.i = call zeroext i8 (...) @rand() #3
  %450 = load i32, i32* %i.i582.i, align 4
  %idxprom.i627.i = sext i32 %450 to i64
  %arrayidx.i628.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom.i627.i
  %451 = load i32, i32* %j.i583.i, align 4
  %idxprom17.i629.i = sext i32 %451 to i64
  %arrayidx18.i630.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i628.i, i64 0, i64 %idxprom17.i629.i
  store i8 %call16.i626.i, i8* %arrayidx18.i630.i, align 1
  %452 = load i32, i32* %i.i582.i, align 4
  %idxprom19.i631.i = sext i32 %452 to i64
  %arrayidx20.i632.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom19.i631.i
  %453 = load i32, i32* %j.i583.i, align 4
  %idxprom21.i633.i = sext i32 %453 to i64
  %arrayidx22.i634.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i632.i, i64 0, i64 %idxprom21.i633.i
  %454 = load i8, i8* %arrayidx22.i634.i, align 1
  %455 = load i32, i32* %j.i583.i, align 4
  %idxprom23.i635.i = sext i32 %455 to i64
  %arrayidx24.i636.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom23.i635.i
  %456 = load i32, i32* %i.i582.i, align 4
  %idxprom25.i637.i = sext i32 %456 to i64
  %arrayidx26.i638.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i636.i, i64 0, i64 %idxprom25.i637.i
  store i8 %454, i8* %arrayidx26.i638.i, align 1
  %457 = load i32, i32* %j.i583.i, align 4
  %inc.i640.i = add nsw i32 %457, 1
  store i32 %inc.i640.i, i32* %j.i583.i, align 4
  br label %for.cond12.i625.i

for.end.i641.i:                                   ; preds = %for.cond12.i625.i
  %458 = load i32, i32* %i.i582.i, align 4
  %inc28.i642.i = add nsw i32 %458, 1
  store i32 %inc28.i642.i, i32* %i.i582.i, align 4
  br label %for.cond.i621.i

for.end29.i643.i:                                 ; preds = %for.cond.i621.i
  store i32 0, i32* %i30.i584.i, align 4
  br label %for.cond31.i645.i

for.cond31.i645.i:                                ; preds = %for.end98.i709.i, %for.end29.i643.i
  %459 = load i32, i32* %i30.i584.i, align 4
  %cmp32.i644.i = icmp sle i32 %459, 0
  br i1 %cmp32.i644.i, label %for.body34.i646.i, label %for.end101.i711.i

for.body34.i646.i:                                ; preds = %for.cond31.i645.i
  store i32 0, i32* %j35.i585.i, align 4
  br label %for.cond36.i648.i

for.cond36.i648.i:                                ; preds = %if.end.i707.i, %for.body34.i646.i
  %460 = load i32, i32* %j35.i585.i, align 4
  %cmp37.i647.i = icmp sle i32 %460, 0
  br i1 %cmp37.i647.i, label %for.body39.i650.i, label %for.end98.i709.i

for.body39.i650.i:                                ; preds = %for.cond36.i648.i
  %461 = load i32, i32* %j35.i585.i, align 4
  %462 = load i32, i32* %i30.i584.i, align 4
  %cmp40.i649.i = icmp ne i32 %461, %462
  br i1 %cmp40.i649.i, label %if.then.i706.i, label %if.end.i707.i

if.then.i706.i:                                   ; preds = %for.body39.i650.i
  %463 = load i8*, i8** %b.addr.i573.i, align 8
  %464 = load i32, i32* %j35.i585.i, align 4
  %idxprom42.i651.i = sext i32 %464 to i64
  %arrayidx43.i652.i = getelementptr inbounds i8, i8* %463, i64 %idxprom42.i651.i
  %465 = load i8, i8* %arrayidx43.i652.i, align 1
  %conv44.i653.i = zext i8 %465 to i32
  %466 = load i32, i32* %i30.i584.i, align 4
  %idxprom45.i654.i = sext i32 %466 to i64
  %arrayidx46.i655.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom45.i654.i
  %467 = load i32, i32* %j35.i585.i, align 4
  %idxprom47.i656.i = sext i32 %467 to i64
  %arrayidx48.i657.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i655.i, i64 0, i64 %idxprom47.i656.i
  %468 = load i8, i8* %arrayidx48.i657.i, align 1
  %conv49.i658.i = zext i8 %468 to i32
  %xor.i659.i = xor i32 %conv44.i653.i, %conv49.i658.i
  %conv50.i660.i = trunc i32 %xor.i659.i to i8
  %469 = load i32, i32* %i30.i584.i, align 4
  %idxprom51.i661.i = sext i32 %469 to i64
  %arrayidx52.i662.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom51.i661.i
  %470 = load i32, i32* %j35.i585.i, align 4
  %idxprom53.i663.i = sext i32 %470 to i64
  %arrayidx54.i664.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i662.i, i64 0, i64 %idxprom53.i663.i
  store i8 %conv50.i660.i, i8* %arrayidx54.i664.i, align 1
  %471 = load i8*, i8** %a.addr.i572.i, align 8
  %472 = load i32, i32* %i30.i584.i, align 4
  %idxprom55.i665.i = sext i32 %472 to i64
  %arrayidx56.i666.i = getelementptr inbounds i8, i8* %471, i64 %idxprom55.i665.i
  %473 = load i8, i8* %arrayidx56.i666.i, align 1
  %conv57.i667.i = zext i8 %473 to i32
  %xor58.i668.i = xor i32 %conv57.i667.i, 1
  %conv59.i669.i = trunc i32 %xor58.i668.i to i8
  %474 = load i32, i32* %i30.i584.i, align 4
  %idxprom60.i670.i = sext i32 %474 to i64
  %arrayidx61.i671.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i.i, i64 0, i64 %idxprom60.i670.i
  %475 = load i32, i32* %j35.i585.i, align 4
  %idxprom62.i672.i = sext i32 %475 to i64
  %arrayidx63.i673.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i671.i, i64 0, i64 %idxprom62.i672.i
  %476 = load i8, i8* %arrayidx63.i673.i, align 1
  %call64.i674.i = call zeroext i8 @mult(i8 zeroext %conv59.i669.i, i8 zeroext %476) #3
  %477 = load i32, i32* %i30.i584.i, align 4
  %idxprom65.i675.i = sext i32 %477 to i64
  %arrayidx66.i676.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom65.i675.i
  %478 = load i32, i32* %j35.i585.i, align 4
  %idxprom67.i677.i = sext i32 %478 to i64
  %arrayidx68.i678.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i676.i, i64 0, i64 %idxprom67.i677.i
  store i8 %call64.i674.i, i8* %arrayidx68.i678.i, align 1
  %479 = load i8*, i8** %a.addr.i572.i, align 8
  %480 = load i32, i32* %i30.i584.i, align 4
  %idxprom69.i679.i = sext i32 %480 to i64
  %arrayidx70.i680.i = getelementptr inbounds i8, i8* %479, i64 %idxprom69.i679.i
  %481 = load i8, i8* %arrayidx70.i680.i, align 1
  %482 = load i32, i32* %i30.i584.i, align 4
  %idxprom71.i681.i = sext i32 %482 to i64
  %arrayidx72.i682.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i.i, i64 0, i64 %idxprom71.i681.i
  %483 = load i32, i32* %j35.i585.i, align 4
  %idxprom73.i683.i = sext i32 %483 to i64
  %arrayidx74.i684.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i682.i, i64 0, i64 %idxprom73.i683.i
  %484 = load i8, i8* %arrayidx74.i684.i, align 1
  %call75.i685.i = call zeroext i8 @mult(i8 zeroext %481, i8 zeroext %484) #3
  %485 = load i32, i32* %i30.i584.i, align 4
  %idxprom76.i686.i = sext i32 %485 to i64
  %arrayidx77.i687.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom76.i686.i
  %486 = load i32, i32* %j35.i585.i, align 4
  %idxprom78.i688.i = sext i32 %486 to i64
  %arrayidx79.i689.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i687.i, i64 0, i64 %idxprom78.i688.i
  store i8 %call75.i685.i, i8* %arrayidx79.i689.i, align 1
  %487 = load i32, i32* %i30.i584.i, align 4
  %idxprom80.i690.i = sext i32 %487 to i64
  %arrayidx81.i691.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i.i, i64 0, i64 %idxprom80.i690.i
  %488 = load i32, i32* %j35.i585.i, align 4
  %idxprom82.i692.i = sext i32 %488 to i64
  %arrayidx83.i693.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i691.i, i64 0, i64 %idxprom82.i692.i
  %489 = load i8, i8* %arrayidx83.i693.i, align 1
  %conv84.i694.i = zext i8 %489 to i32
  %490 = load i32, i32* %i30.i584.i, align 4
  %idxprom85.i695.i = sext i32 %490 to i64
  %arrayidx86.i696.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i.i, i64 0, i64 %idxprom85.i695.i
  %491 = load i32, i32* %j35.i585.i, align 4
  %idxprom87.i697.i = sext i32 %491 to i64
  %arrayidx88.i698.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i696.i, i64 0, i64 %idxprom87.i697.i
  %492 = load i8, i8* %arrayidx88.i698.i, align 1
  %conv89.i699.i = zext i8 %492 to i32
  %xor90.i700.i = xor i32 %conv84.i694.i, %conv89.i699.i
  %conv91.i701.i = trunc i32 %xor90.i700.i to i8
  %493 = load i32, i32* %i30.i584.i, align 4
  %idxprom92.i702.i = sext i32 %493 to i64
  %arrayidx93.i703.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom92.i702.i
  %494 = load i32, i32* %j35.i585.i, align 4
  %idxprom94.i704.i = sext i32 %494 to i64
  %arrayidx95.i705.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i703.i, i64 0, i64 %idxprom94.i704.i
  store i8 %conv91.i701.i, i8* %arrayidx95.i705.i, align 1
  br label %if.end.i707.i

if.end.i707.i:                                    ; preds = %if.then.i706.i, %for.body39.i650.i
  %495 = load i32, i32* %j35.i585.i, align 4
  %inc97.i708.i = add nsw i32 %495, 1
  store i32 %inc97.i708.i, i32* %j35.i585.i, align 4
  br label %for.cond36.i648.i

for.end98.i709.i:                                 ; preds = %for.cond36.i648.i
  %496 = load i32, i32* %i30.i584.i, align 4
  %inc100.i710.i = add nsw i32 %496, 1
  store i32 %inc100.i710.i, i32* %i30.i584.i, align 4
  br label %for.cond31.i645.i

for.end101.i711.i:                                ; preds = %for.cond31.i645.i
  store i32 0, i32* %i102.i586.i, align 4
  br label %for.cond103.i713.i

for.cond103.i713.i:                               ; preds = %for.end135.i739.i, %for.end101.i711.i
  %497 = load i32, i32* %i102.i586.i, align 4
  %cmp104.i712.i = icmp sle i32 %497, 0
  br i1 %cmp104.i712.i, label %for.body106.i721.i, label %for.end138.i743.i

for.body106.i721.i:                               ; preds = %for.cond103.i713.i
  %498 = load i8*, i8** %a.addr.i572.i, align 8
  %499 = load i32, i32* %i102.i586.i, align 4
  %idxprom107.i714.i = sext i32 %499 to i64
  %arrayidx108.i715.i = getelementptr inbounds i8, i8* %498, i64 %idxprom107.i714.i
  %500 = load i8, i8* %arrayidx108.i715.i, align 1
  %501 = load i8*, i8** %b.addr.i573.i, align 8
  %502 = load i32, i32* %i102.i586.i, align 4
  %idxprom109.i716.i = sext i32 %502 to i64
  %arrayidx110.i717.i = getelementptr inbounds i8, i8* %501, i64 %idxprom109.i716.i
  %503 = load i8, i8* %arrayidx110.i717.i, align 1
  %call111.i718.i = call zeroext i8 @mult(i8 zeroext %500, i8 zeroext %503) #3
  %504 = load i8*, i8** %c.addr.i574.i, align 8
  %505 = load i32, i32* %i102.i586.i, align 4
  %idxprom112.i719.i = sext i32 %505 to i64
  %arrayidx113.i720.i = getelementptr inbounds i8, i8* %504, i64 %idxprom112.i719.i
  store i8 %call111.i718.i, i8* %arrayidx113.i720.i, align 1
  store i32 0, i32* %j114.i587.i, align 4
  br label %for.cond115.i723.i

for.cond115.i723.i:                               ; preds = %if.end132.i737.i, %for.body106.i721.i
  %506 = load i32, i32* %j114.i587.i, align 4
  %cmp116.i722.i = icmp sle i32 %506, 0
  br i1 %cmp116.i722.i, label %for.body118.i725.i, label %for.end135.i739.i

for.body118.i725.i:                               ; preds = %for.cond115.i723.i
  %507 = load i32, i32* %j114.i587.i, align 4
  %508 = load i32, i32* %i102.i586.i, align 4
  %cmp119.i724.i = icmp ne i32 %507, %508
  br i1 %cmp119.i724.i, label %if.then121.i736.i, label %if.end132.i737.i

if.then121.i736.i:                                ; preds = %for.body118.i725.i
  %509 = load i32, i32* %i102.i586.i, align 4
  %idxprom122.i726.i = sext i32 %509 to i64
  %arrayidx123.i727.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i.i, i64 0, i64 %idxprom122.i726.i
  %510 = load i32, i32* %j114.i587.i, align 4
  %idxprom124.i728.i = sext i32 %510 to i64
  %arrayidx125.i729.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i727.i, i64 0, i64 %idxprom124.i728.i
  %511 = load i8, i8* %arrayidx125.i729.i, align 1
  %conv126.i730.i = zext i8 %511 to i32
  %512 = load i8*, i8** %c.addr.i574.i, align 8
  %513 = load i32, i32* %i102.i586.i, align 4
  %idxprom127.i731.i = sext i32 %513 to i64
  %arrayidx128.i732.i = getelementptr inbounds i8, i8* %512, i64 %idxprom127.i731.i
  %514 = load i8, i8* %arrayidx128.i732.i, align 1
  %conv129.i733.i = zext i8 %514 to i32
  %xor130.i734.i = xor i32 %conv129.i733.i, %conv126.i730.i
  %conv131.i735.i = trunc i32 %xor130.i734.i to i8
  store i8 %conv131.i735.i, i8* %arrayidx128.i732.i, align 1
  br label %if.end132.i737.i

if.end132.i737.i:                                 ; preds = %if.then121.i736.i, %for.body118.i725.i
  %515 = load i32, i32* %j114.i587.i, align 4
  %inc134.i738.i = add nsw i32 %515, 1
  store i32 %inc134.i738.i, i32* %j114.i587.i, align 4
  br label %for.cond115.i723.i

for.end135.i739.i:                                ; preds = %for.cond115.i723.i
  %516 = load i32, i32* %i102.i586.i, align 4
  %inc137.i740.i = add nsw i32 %516, 1
  store i32 %inc137.i740.i, i32* %i102.i586.i, align 4
  br label %for.cond103.i713.i

for.end138.i743.i:                                ; preds = %for.cond103.i713.i
  %517 = load i8, i8* %A.i575.i, align 1
  %518 = load i8, i8* %B.i576.i, align 1
  %call139.i741.i = call zeroext i8 @mult(i8 zeroext %517, i8 zeroext %518) #3
  %conv140.i742.i = zext i8 %call139.i741.i to i32
  %519 = load i8*, i8** %c.addr.i574.i, align 8
  store i8* %519, i8** %a.addr.i166.i561.i, align 8
  %520 = load i8*, i8** %a.addr.i166.i561.i, align 8
  store i8* %520, i8** %a.addr.i.i162.i557.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i558.i, align 8
  store i32 0, i32* %i.i.i165.i560.i, align 4
  br label %for.cond.i.i168.i745.i

for.cond.i.i168.i745.i:                           ; preds = %for.body.i.i177.i754.i, %for.end138.i743.i
  %521 = load i32, i32* %i.i.i165.i560.i, align 4
  %cmp.i.i167.i744.i = icmp sle i32 %521, 0
  br i1 %cmp.i.i167.i744.i, label %for.body.i.i177.i754.i, label %sec_mult.exit757.i

for.body.i.i177.i754.i:                           ; preds = %for.cond.i.i168.i745.i
  %522 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i558.i, align 8
  %523 = load i8*, i8** %a.addr.i.i162.i557.i, align 8
  %524 = load i32, i32* %i.i.i165.i560.i, align 4
  %idxprom.i.i169.i746.i = sext i32 %524 to i64
  %arrayidx.i.i170.i747.i = getelementptr inbounds i8, i8* %523, i64 %idxprom.i.i169.i746.i
  %525 = load i8, i8* %arrayidx.i.i170.i747.i, align 1
  %call.i.i171.i748.i = call zeroext i8 %522(i8 zeroext %525) #3
  %conv.i.i172.i749.i = zext i8 %call.i.i171.i748.i to i32
  %526 = load i8, i8* %result.i.i164.i559.i, align 1
  %conv1.i.i173.i750.i = zext i8 %526 to i32
  %xor.i.i174.i751.i = xor i32 %conv1.i.i173.i750.i, %conv.i.i172.i749.i
  %conv2.i.i175.i752.i = trunc i32 %xor.i.i174.i751.i to i8
  store i8 %conv2.i.i175.i752.i, i8* %result.i.i164.i559.i, align 1
  %527 = load i32, i32* %i.i.i165.i560.i, align 4
  %inc.i.i176.i753.i = add nsw i32 %527, 1
  store i32 %inc.i.i176.i753.i, i32* %i.i.i165.i560.i, align 4
  br label %for.cond.i.i168.i745.i

sec_mult.exit757.i:                               ; preds = %for.cond.i.i168.i745.i
  %528 = load i8, i8* %result.i.i164.i559.i, align 1
  %conv142.i755.i = zext i8 %528 to i32
  %cmp143.i756.i = icmp eq i32 %conv140.i742.i, %conv142.i755.i
  call void @assert(i1 zeroext %cmp143.i756.i) #3
  %529 = load i8, i8* %X.i, align 1
  store i8 %529, i8* %x.addr.i758.i, align 1
  %530 = load i8, i8* %x.addr.i758.i, align 1
  %call.i760.i = call zeroext i8 @square(i8 zeroext %530) #3
  store i8 %call.i760.i, i8* %z.i759.i, align 1
  %531 = load i8, i8* %z.i759.i, align 1
  %532 = load i8, i8* %x.addr.i758.i, align 1
  %call1.i761.i = call zeroext i8 @mult(i8 zeroext %531, i8 zeroext %532) #3
  store i8 %call1.i761.i, i8* %y.i.i, align 1
  %533 = load i8, i8* %y.i.i, align 1
  %call2.i.i = call zeroext i8 @exp4(i8 zeroext %533) #3
  store i8 %call2.i.i, i8* %w.i.i, align 1
  %534 = load i8, i8* %y.i.i, align 1
  %535 = load i8, i8* %w.i.i, align 1
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %534, i8 zeroext %535) #3
  store i8 %call3.i.i, i8* %y.i.i, align 1
  %536 = load i8, i8* %y.i.i, align 1
  %call4.i.i = call zeroext i8 @exp16(i8 zeroext %536) #3
  store i8 %call4.i.i, i8* %y.i.i, align 1
  %537 = load i8, i8* %y.i.i, align 1
  %538 = load i8, i8* %w.i.i, align 1
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %537, i8 zeroext %538) #3
  store i8 %call5.i.i, i8* %y.i.i, align 1
  %539 = load i8, i8* %y.i.i, align 1
  %540 = load i8, i8* %z.i759.i, align 1
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %539, i8 zeroext %540) #3
  store i8 %call6.i.i, i8* %y.i.i, align 1
  %541 = load i8, i8* %y.i.i, align 1
  %conv21.i = zext i8 %541 to i32
  %542 = load i8*, i8** %y.addr.i, align 8
  store i8* %542, i8** %a.addr.i766.i, align 8
  %543 = load i8*, i8** %a.addr.i766.i, align 8
  store i8* %543, i8** %a.addr.i.i762.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i763.i, align 8
  store i32 0, i32* %i.i.i765.i, align 4
  br label %for.cond.i.i768.i

for.cond.i.i768.i:                                ; preds = %for.body.i.i777.i, %sec_mult.exit757.i
  %544 = load i32, i32* %i.i.i765.i, align 4
  %cmp.i.i767.i = icmp sle i32 %544, 0
  br i1 %cmp.i.i767.i, label %for.body.i.i777.i, label %sec_exp254.exit

for.body.i.i777.i:                                ; preds = %for.cond.i.i768.i
  %545 = load i8 (i8)*, i8 (i8)** %f.addr.i.i763.i, align 8
  %546 = load i8*, i8** %a.addr.i.i762.i, align 8
  %547 = load i32, i32* %i.i.i765.i, align 4
  %idxprom.i.i769.i = sext i32 %547 to i64
  %arrayidx.i.i770.i = getelementptr inbounds i8, i8* %546, i64 %idxprom.i.i769.i
  %548 = load i8, i8* %arrayidx.i.i770.i, align 1
  %call.i.i771.i = call zeroext i8 %545(i8 zeroext %548) #3
  %conv.i.i772.i = zext i8 %call.i.i771.i to i32
  %549 = load i8, i8* %result.i.i764.i, align 1
  %conv1.i.i773.i = zext i8 %549 to i32
  %xor.i.i774.i = xor i32 %conv1.i.i773.i, %conv.i.i772.i
  %conv2.i.i775.i = trunc i32 %xor.i.i774.i to i8
  store i8 %conv2.i.i775.i, i8* %result.i.i764.i, align 1
  %550 = load i32, i32* %i.i.i765.i, align 4
  %inc.i.i776.i = add nsw i32 %550, 1
  store i32 %inc.i.i776.i, i32* %i.i.i765.i, align 4
  br label %for.cond.i.i768.i

sec_exp254.exit:                                  ; preds = %for.cond.i.i768.i
  %551 = load i8, i8* %result.i.i764.i, align 1
  %conv23.i = zext i8 %551 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %552 = load i8*, i8** %y.addr, align 8
  %553 = load i8*, i8** %y.addr, align 8
  store i8* %552, i8** %from.addr.i, align 8
  store i8* %553, i8** %to.addr.i, align 8
  store i8 (i8)* @af, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %sec_exp254.exit
  %554 = load i32, i32* %i.i, align 4
  %cmp.i23 = icmp sle i32 %554, 0
  br i1 %cmp.i23, label %for.body.i, label %transform.exit

for.body.i:                                       ; preds = %for.cond.i
  %555 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %556 = load i8*, i8** %from.addr.i, align 8
  %557 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %557 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %556, i64 %idxprom.i
  %558 = load i8, i8* %arrayidx.i, align 1
  %call.i24 = call zeroext i8 %555(i8 zeroext %558) #3
  %559 = load i8*, i8** %to.addr.i, align 8
  %560 = load i32, i32* %i.i, align 4
  %idxprom1.i = sext i32 %560 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %559, i64 %idxprom1.i
  store i8 %call.i24, i8* %arrayidx2.i, align 1
  %561 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %561, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

transform.exit:                                   ; preds = %for.cond.i
  %562 = load i8, i8* %X, align 1
  store i8 %562, i8* %x.addr.i29, align 1
  %563 = load i8, i8* %x.addr.i29, align 1
  store i8 %563, i8* %x.addr.i.i25, align 1
  %564 = load i8, i8* %x.addr.i.i25, align 1
  %call.i.i30 = call zeroext i8 @square(i8 zeroext %564) #3
  store i8 %call.i.i30, i8* %z.i.i26, align 1
  %565 = load i8, i8* %z.i.i26, align 1
  %566 = load i8, i8* %x.addr.i.i25, align 1
  %call1.i.i31 = call zeroext i8 @mult(i8 zeroext %565, i8 zeroext %566) #3
  store i8 %call1.i.i31, i8* %y.i.i27, align 1
  %567 = load i8, i8* %y.i.i27, align 1
  %call2.i.i32 = call zeroext i8 @exp4(i8 zeroext %567) #3
  store i8 %call2.i.i32, i8* %w.i.i28, align 1
  %568 = load i8, i8* %y.i.i27, align 1
  %569 = load i8, i8* %w.i.i28, align 1
  %call3.i.i33 = call zeroext i8 @mult(i8 zeroext %568, i8 zeroext %569) #3
  store i8 %call3.i.i33, i8* %y.i.i27, align 1
  %570 = load i8, i8* %y.i.i27, align 1
  %call4.i.i34 = call zeroext i8 @exp16(i8 zeroext %570) #3
  store i8 %call4.i.i34, i8* %y.i.i27, align 1
  %571 = load i8, i8* %y.i.i27, align 1
  %572 = load i8, i8* %w.i.i28, align 1
  %call5.i.i35 = call zeroext i8 @mult(i8 zeroext %571, i8 zeroext %572) #3
  store i8 %call5.i.i35, i8* %y.i.i27, align 1
  %573 = load i8, i8* %y.i.i27, align 1
  %574 = load i8, i8* %z.i.i26, align 1
  %call6.i.i36 = call zeroext i8 @mult(i8 zeroext %573, i8 zeroext %574) #3
  store i8 %call6.i.i36, i8* %y.i.i27, align 1
  %575 = load i8, i8* %y.i.i27, align 1
  %call1.i = call zeroext i8 @af(i8 zeroext %575) #3
  %conv5 = zext i8 %call1.i to i32
  %576 = load i8*, i8** %y.addr, align 8
  store i8* %576, i8** %a.addr.i41, align 8
  %577 = load i8*, i8** %a.addr.i41, align 8
  store i8* %577, i8** %a.addr.i.i37, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i38, align 8
  store i32 0, i32* %i.i.i40, align 4
  br label %for.cond.i.i43

for.cond.i.i43:                                   ; preds = %for.body.i.i52, %transform.exit
  %578 = load i32, i32* %i.i.i40, align 4
  %cmp.i.i42 = icmp sle i32 %578, 0
  br i1 %cmp.i.i42, label %for.body.i.i52, label %xors.exit53

for.body.i.i52:                                   ; preds = %for.cond.i.i43
  %579 = load i8 (i8)*, i8 (i8)** %f.addr.i.i38, align 8
  %580 = load i8*, i8** %a.addr.i.i37, align 8
  %581 = load i32, i32* %i.i.i40, align 4
  %idxprom.i.i44 = sext i32 %581 to i64
  %arrayidx.i.i45 = getelementptr inbounds i8, i8* %580, i64 %idxprom.i.i44
  %582 = load i8, i8* %arrayidx.i.i45, align 1
  %call.i.i46 = call zeroext i8 %579(i8 zeroext %582) #3
  %conv.i.i47 = zext i8 %call.i.i46 to i32
  %583 = load i8, i8* %result.i.i39, align 1
  %conv1.i.i48 = zext i8 %583 to i32
  %xor.i.i49 = xor i32 %conv1.i.i48, %conv.i.i47
  %conv2.i.i50 = trunc i32 %xor.i.i49 to i8
  store i8 %conv2.i.i50, i8* %result.i.i39, align 1
  %584 = load i32, i32* %i.i.i40, align 4
  %inc.i.i51 = add nsw i32 %584, 1
  store i32 %inc.i.i51, i32* %i.i.i40, align 4
  br label %for.cond.i.i43

xors.exit53:                                      ; preds = %for.cond.i.i43
  %585 = load i8, i8* %result.i.i39, align 1
  %conv7 = zext i8 %585 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assert(i1 zeroext %cmp8)
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
