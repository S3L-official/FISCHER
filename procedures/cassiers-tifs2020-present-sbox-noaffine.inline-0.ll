; ModuleID = '../examples/cassiers-tifs2020-present-sbox-noaffine.c'
source_filename = "../examples/cassiers-tifs2020-present-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [54 x i8] c"../examples/cassiers-tifs2020-present-sbox-noaffine.c\00", section "llvm.metadata"
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
@llvm.global.annotations = appending global [13 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 59 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 63 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 65 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 69 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 73 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 77 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 81 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 85 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 89 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 93 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 97 }], section "llvm.metadata"

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
  store i8 0, i8* %result, align 1
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
  store i8 0, i8* %result.i, align 1
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
  %call.i = call zeroext i8 %2(i8 zeroext %5) #2
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
  store i8 0, i8* %result.i.i, align 1
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
  %call.i.i = call zeroext i8 %4(i8 zeroext %7) #2
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
  %cmp.i.i150 = icmp sle i32 %14, 0
  br i1 %cmp.i.i150, label %for.body.i.i160, label %xors.exit161

for.body.i.i160:                                  ; preds = %for.cond.i.i151
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146, align 8
  %16 = load i8*, i8** %a.addr.i.i145, align 8
  %17 = load i32, i32* %i.i.i148, align 4
  %idxprom.i.i152 = sext i32 %17 to i64
  %arrayidx.i.i153 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i152
  %18 = load i8, i8* %arrayidx.i.i153, align 1
  %call.i.i154 = call zeroext i8 %15(i8 zeroext %18) #2
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
  store i8 0, i8* %result.i.i164, align 1
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
  %call.i.i171 = call zeroext i8 %97(i8 zeroext %100) #2
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
  %call.i = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %2) #2
  store i8 %call.i, i8* %x.addr.i2, align 1
  %3 = load i8, i8* %x.addr.i2, align 1
  %4 = load i8, i8* %x.addr.i2, align 1
  %call.i3 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4) #2
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp8(i8 zeroext %x) #0 {
entry:
  %x.addr.i2 = alloca i8, align 1
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
  %call.i.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %4 = load i8, i8* %x.addr.i2.i, align 1
  %5 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %5) #2
  store i8 %call.i3.i, i8* %x.addr.i2, align 1
  %6 = load i8, i8* %x.addr.i2, align 1
  %7 = load i8, i8* %x.addr.i2, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #2
  ret i8 %call.i
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L1(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i14 = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i.i15 = alloca i8, align 1
  %x.addr.i16 = alloca i8, align 1
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i13 = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %4 = load i8, i8* %x.addr, align 1
  store i8 %4, i8* %x.addr.i13, align 1
  %5 = load i8, i8* %x.addr.i13, align 1
  store i8 %5, i8* %x.addr.i.i, align 1
  %6 = load i8, i8* %x.addr.i.i, align 1
  %7 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #2
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %8 = load i8, i8* %x.addr.i2.i, align 1
  %9 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %10 = load i8, i8* %x.addr, align 1
  store i8 %10, i8* %x.addr.i16, align 1
  %11 = load i8, i8* %x.addr.i16, align 1
  store i8 %11, i8* %x.addr.i.i15, align 1
  %12 = load i8, i8* %x.addr.i.i15, align 1
  store i8 %12, i8* %x.addr.i.i.i, align 1
  %13 = load i8, i8* %x.addr.i.i.i, align 1
  %14 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  store i8 %call.i.i.i, i8* %x.addr.i2.i.i, align 1
  %15 = load i8, i8* %x.addr.i2.i.i, align 1
  %16 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  store i8 %call.i3.i.i, i8* %x.addr.i2.i14, align 1
  %17 = load i8, i8* %x.addr.i2.i14, align 1
  %18 = load i8, i8* %x.addr.i2.i14, align 1
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L3(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i14 = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i.i15 = alloca i8, align 1
  %x.addr.i16 = alloca i8, align 1
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i13 = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %4 = load i8, i8* %x.addr, align 1
  store i8 %4, i8* %x.addr.i13, align 1
  %5 = load i8, i8* %x.addr.i13, align 1
  store i8 %5, i8* %x.addr.i.i, align 1
  %6 = load i8, i8* %x.addr.i.i, align 1
  %7 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #2
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %8 = load i8, i8* %x.addr.i2.i, align 1
  %9 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %10 = load i8, i8* %x.addr, align 1
  store i8 %10, i8* %x.addr.i16, align 1
  %11 = load i8, i8* %x.addr.i16, align 1
  store i8 %11, i8* %x.addr.i.i15, align 1
  %12 = load i8, i8* %x.addr.i.i15, align 1
  store i8 %12, i8* %x.addr.i.i.i, align 1
  %13 = load i8, i8* %x.addr.i.i.i, align 1
  %14 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  store i8 %call.i.i.i, i8* %x.addr.i2.i.i, align 1
  %15 = load i8, i8* %x.addr.i2.i.i, align 1
  %16 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  store i8 %call.i3.i.i, i8* %x.addr.i2.i14, align 1
  %17 = load i8, i8* %x.addr.i2.i14, align 1
  %18 = load i8, i8* %x.addr.i2.i14, align 1
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L5(i8 zeroext %x) #0 {
entry:
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %conv4 = trunc i32 %xor to i8
  ret i8 %conv4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L7(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i14 = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i.i15 = alloca i8, align 1
  %x.addr.i16 = alloca i8, align 1
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i13 = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %call = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %0)
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %4 = load i8, i8* %x.addr, align 1
  store i8 %4, i8* %x.addr.i13, align 1
  %5 = load i8, i8* %x.addr.i13, align 1
  store i8 %5, i8* %x.addr.i.i, align 1
  %6 = load i8, i8* %x.addr.i.i, align 1
  %7 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %7) #2
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %8 = load i8, i8* %x.addr.i2.i, align 1
  %9 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %9) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %10 = load i8, i8* %x.addr, align 1
  store i8 %10, i8* %x.addr.i16, align 1
  %11 = load i8, i8* %x.addr.i16, align 1
  store i8 %11, i8* %x.addr.i.i15, align 1
  %12 = load i8, i8* %x.addr.i.i15, align 1
  store i8 %12, i8* %x.addr.i.i.i, align 1
  %13 = load i8, i8* %x.addr.i.i.i, align 1
  %14 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #2
  store i8 %call.i.i.i, i8* %x.addr.i2.i.i, align 1
  %15 = load i8, i8* %x.addr.i2.i.i, align 1
  %16 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #2
  store i8 %call.i3.i.i, i8* %x.addr.i2.i14, align 1
  %17 = load i8, i8* %x.addr.i2.i14, align 1
  %18 = load i8, i8* %x.addr.i2.i14, align 1
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp3(i8 zeroext %x) #0 {
entry:
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  %3 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %2, i8 zeroext %3) #2
  %call1 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %call.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp5(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %1 = load i8, i8* %x.addr, align 1
  store i8 %1, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  store i8 %2, i8* %x.addr.i.i, align 1
  %3 = load i8, i8* %x.addr.i.i, align 1
  %4 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4) #2
  store i8 %call.i.i, i8* %x.addr.i2.i, align 1
  %5 = load i8, i8* %x.addr.i2.i, align 1
  %6 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %6) #2
  %call1 = call zeroext i8 @mult(i8 zeroext %0, i8 zeroext %call.i3.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp7(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i = alloca i8, align 1
  %x.addr.i.i3 = alloca i8, align 1
  %x.addr.i4 = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  %2 = load i8, i8* %x.addr.i, align 1
  store i8 %2, i8* %x.addr.i.i, align 1
  %3 = load i8, i8* %x.addr.i.i, align 1
  %4 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4) #2
  %call1.i = call zeroext i8 @mult(i8 zeroext %1, i8 zeroext %call.i.i) #2
  %5 = load i8, i8* %x.addr, align 1
  store i8 %5, i8* %x.addr.i4, align 1
  %6 = load i8, i8* %x.addr.i4, align 1
  store i8 %6, i8* %x.addr.i.i3, align 1
  %7 = load i8, i8* %x.addr.i.i3, align 1
  %8 = load i8, i8* %x.addr.i.i3, align 1
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #2
  store i8 %call.i.i5, i8* %x.addr.i2.i, align 1
  %9 = load i8, i8* %x.addr.i2.i, align 1
  %10 = load i8, i8* %x.addr.i2.i, align 1
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10) #2
  %call2 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call.i3.i)
  ret i8 %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @S(i8 zeroext %x) #0 {
entry:
  %x.addr.i2.i14.i67 = alloca i8, align 1
  %x.addr.i2.i.i.i68 = alloca i8, align 1
  %x.addr.i.i.i.i69 = alloca i8, align 1
  %x.addr.i.i15.i70 = alloca i8, align 1
  %x.addr.i16.i71 = alloca i8, align 1
  %x.addr.i2.i.i72 = alloca i8, align 1
  %x.addr.i.i.i73 = alloca i8, align 1
  %x.addr.i13.i74 = alloca i8, align 1
  %x.addr.i.i75 = alloca i8, align 1
  %x.addr.i76 = alloca i8, align 1
  %x.addr.i2.i.i60 = alloca i8, align 1
  %x.addr.i.i3.i = alloca i8, align 1
  %x.addr.i4.i = alloca i8, align 1
  %x.addr.i.i.i61 = alloca i8, align 1
  %x.addr.i.i62 = alloca i8, align 1
  %x.addr.i63 = alloca i8, align 1
  %x.addr.i.i52 = alloca i8, align 1
  %x.addr.i53 = alloca i8, align 1
  %x.addr.i2.i.i45 = alloca i8, align 1
  %x.addr.i.i.i46 = alloca i8, align 1
  %x.addr.i.i47 = alloca i8, align 1
  %x.addr.i48 = alloca i8, align 1
  %x.addr.i2.i14.i17 = alloca i8, align 1
  %x.addr.i2.i.i.i18 = alloca i8, align 1
  %x.addr.i.i.i.i19 = alloca i8, align 1
  %x.addr.i.i15.i20 = alloca i8, align 1
  %x.addr.i16.i21 = alloca i8, align 1
  %x.addr.i2.i.i22 = alloca i8, align 1
  %x.addr.i.i.i23 = alloca i8, align 1
  %x.addr.i13.i24 = alloca i8, align 1
  %x.addr.i.i25 = alloca i8, align 1
  %x.addr.i26 = alloca i8, align 1
  %x.addr.i.i14 = alloca i8, align 1
  %x.addr.i15 = alloca i8, align 1
  %x.addr.i2.i14.i = alloca i8, align 1
  %x.addr.i2.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i = alloca i8, align 1
  %x.addr.i.i15.i = alloca i8, align 1
  %x.addr.i16.i = alloca i8, align 1
  %x.addr.i2.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i13.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  store i8 %0, i8* %x.addr.i, align 1
  %1 = load i8, i8* %x.addr.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %1) #2
  %conv.i = zext i8 %call.i to i32
  %2 = load i8, i8* %x.addr.i, align 1
  store i8 %2, i8* %x.addr.i.i, align 1
  %3 = load i8, i8* %x.addr.i.i, align 1
  %4 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %4) #2
  %call2.i = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i) #2
  %conv3.i = zext i8 %call2.i to i32
  %xor.i = xor i32 %conv.i, %conv3.i
  %5 = load i8, i8* %x.addr.i, align 1
  store i8 %5, i8* %x.addr.i13.i, align 1
  %6 = load i8, i8* %x.addr.i13.i, align 1
  store i8 %6, i8* %x.addr.i.i.i, align 1
  %7 = load i8, i8* %x.addr.i.i.i, align 1
  %8 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8) #2
  store i8 %call.i.i.i, i8* %x.addr.i2.i.i, align 1
  %9 = load i8, i8* %x.addr.i2.i.i, align 1
  %10 = load i8, i8* %x.addr.i2.i.i, align 1
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10) #2
  %call5.i = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i) #2
  %conv6.i = zext i8 %call5.i to i32
  %xor7.i = xor i32 %xor.i, %conv6.i
  %11 = load i8, i8* %x.addr.i, align 1
  store i8 %11, i8* %x.addr.i16.i, align 1
  %12 = load i8, i8* %x.addr.i16.i, align 1
  store i8 %12, i8* %x.addr.i.i15.i, align 1
  %13 = load i8, i8* %x.addr.i.i15.i, align 1
  store i8 %13, i8* %x.addr.i.i.i.i, align 1
  %14 = load i8, i8* %x.addr.i.i.i.i, align 1
  %15 = load i8, i8* %x.addr.i.i.i.i, align 1
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15) #2
  store i8 %call.i.i.i.i, i8* %x.addr.i2.i.i.i, align 1
  %16 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %17 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17) #2
  store i8 %call.i3.i.i.i, i8* %x.addr.i2.i14.i, align 1
  %18 = load i8, i8* %x.addr.i2.i14.i, align 1
  %19 = load i8, i8* %x.addr.i2.i14.i, align 1
  %call.i.i17.i = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #2
  %call9.i = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i) #2
  %conv10.i = zext i8 %call9.i to i32
  %xor11.i = xor i32 %xor7.i, %conv10.i
  %conv12.i = trunc i32 %xor11.i to i8
  %conv = zext i8 %conv12.i to i32
  %xor = xor i32 1, %conv
  %20 = load i8, i8* %x.addr, align 1
  store i8 %20, i8* %x.addr.i15, align 1
  %21 = load i8, i8* %x.addr.i15, align 1
  %22 = load i8, i8* %x.addr.i15, align 1
  store i8 %22, i8* %x.addr.i.i14, align 1
  %23 = load i8, i8* %x.addr.i.i14, align 1
  %24 = load i8, i8* %x.addr.i.i14, align 1
  %call.i.i16 = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #2
  %call1.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %call.i.i16) #2
  store i8 %call1.i, i8* %x.addr.i26, align 1
  %25 = load i8, i8* %x.addr.i26, align 1
  %call.i27 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %25) #2
  %conv.i28 = zext i8 %call.i27 to i32
  %26 = load i8, i8* %x.addr.i26, align 1
  store i8 %26, i8* %x.addr.i.i25, align 1
  %27 = load i8, i8* %x.addr.i.i25, align 1
  %28 = load i8, i8* %x.addr.i.i25, align 1
  %call.i.i29 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #2
  %call2.i30 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i29) #2
  %conv3.i31 = zext i8 %call2.i30 to i32
  %xor.i32 = xor i32 %conv.i28, %conv3.i31
  %29 = load i8, i8* %x.addr.i26, align 1
  store i8 %29, i8* %x.addr.i13.i24, align 1
  %30 = load i8, i8* %x.addr.i13.i24, align 1
  store i8 %30, i8* %x.addr.i.i.i23, align 1
  %31 = load i8, i8* %x.addr.i.i.i23, align 1
  %32 = load i8, i8* %x.addr.i.i.i23, align 1
  %call.i.i.i33 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #2
  store i8 %call.i.i.i33, i8* %x.addr.i2.i.i22, align 1
  %33 = load i8, i8* %x.addr.i2.i.i22, align 1
  %34 = load i8, i8* %x.addr.i2.i.i22, align 1
  %call.i3.i.i34 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #2
  %call5.i35 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i34) #2
  %conv6.i36 = zext i8 %call5.i35 to i32
  %xor7.i37 = xor i32 %xor.i32, %conv6.i36
  %35 = load i8, i8* %x.addr.i26, align 1
  store i8 %35, i8* %x.addr.i16.i21, align 1
  %36 = load i8, i8* %x.addr.i16.i21, align 1
  store i8 %36, i8* %x.addr.i.i15.i20, align 1
  %37 = load i8, i8* %x.addr.i.i15.i20, align 1
  store i8 %37, i8* %x.addr.i.i.i.i19, align 1
  %38 = load i8, i8* %x.addr.i.i.i.i19, align 1
  %39 = load i8, i8* %x.addr.i.i.i.i19, align 1
  %call.i.i.i.i38 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #2
  store i8 %call.i.i.i.i38, i8* %x.addr.i2.i.i.i18, align 1
  %40 = load i8, i8* %x.addr.i2.i.i.i18, align 1
  %41 = load i8, i8* %x.addr.i2.i.i.i18, align 1
  %call.i3.i.i.i39 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #2
  store i8 %call.i3.i.i.i39, i8* %x.addr.i2.i14.i17, align 1
  %42 = load i8, i8* %x.addr.i2.i14.i17, align 1
  %43 = load i8, i8* %x.addr.i2.i14.i17, align 1
  %call.i.i17.i40 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #2
  %call9.i41 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i40) #2
  %conv10.i42 = zext i8 %call9.i41 to i32
  %xor11.i43 = xor i32 %xor7.i37, %conv10.i42
  %conv12.i44 = trunc i32 %xor11.i43 to i8
  %conv3 = zext i8 %conv12.i44 to i32
  %xor4 = xor i32 %xor, %conv3
  %44 = load i8, i8* %x.addr, align 1
  store i8 %44, i8* %x.addr.i48, align 1
  %45 = load i8, i8* %x.addr.i48, align 1
  %46 = load i8, i8* %x.addr.i48, align 1
  store i8 %46, i8* %x.addr.i.i47, align 1
  %47 = load i8, i8* %x.addr.i.i47, align 1
  store i8 %47, i8* %x.addr.i.i.i46, align 1
  %48 = load i8, i8* %x.addr.i.i.i46, align 1
  %49 = load i8, i8* %x.addr.i.i.i46, align 1
  %call.i.i.i49 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #2
  store i8 %call.i.i.i49, i8* %x.addr.i2.i.i45, align 1
  %50 = load i8, i8* %x.addr.i2.i.i45, align 1
  %51 = load i8, i8* %x.addr.i2.i.i45, align 1
  %call.i3.i.i50 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #2
  %call1.i51 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %call.i3.i.i50) #2
  store i8 %call1.i51, i8* %x.addr.i53, align 1
  %52 = load i8, i8* %x.addr.i53, align 1
  %call.i54 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %52) #2
  %conv.i55 = zext i8 %call.i54 to i32
  %53 = load i8, i8* %x.addr.i53, align 1
  store i8 %53, i8* %x.addr.i.i52, align 1
  %54 = load i8, i8* %x.addr.i.i52, align 1
  %55 = load i8, i8* %x.addr.i.i52, align 1
  %call.i.i56 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %call2.i57 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i56) #2
  %conv3.i58 = zext i8 %call2.i57 to i32
  %xor.i59 = xor i32 %conv.i55, %conv3.i58
  %conv4.i = trunc i32 %xor.i59 to i8
  %conv7 = zext i8 %conv4.i to i32
  %xor8 = xor i32 %xor4, %conv7
  %56 = load i8, i8* %x.addr, align 1
  store i8 %56, i8* %x.addr.i63, align 1
  %57 = load i8, i8* %x.addr.i63, align 1
  store i8 %57, i8* %x.addr.i.i62, align 1
  %58 = load i8, i8* %x.addr.i.i62, align 1
  %59 = load i8, i8* %x.addr.i.i62, align 1
  store i8 %59, i8* %x.addr.i.i.i61, align 1
  %60 = load i8, i8* %x.addr.i.i.i61, align 1
  %61 = load i8, i8* %x.addr.i.i.i61, align 1
  %call.i.i.i64 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #2
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %call.i.i.i64) #2
  %62 = load i8, i8* %x.addr.i63, align 1
  store i8 %62, i8* %x.addr.i4.i, align 1
  %63 = load i8, i8* %x.addr.i4.i, align 1
  store i8 %63, i8* %x.addr.i.i3.i, align 1
  %64 = load i8, i8* %x.addr.i.i3.i, align 1
  %65 = load i8, i8* %x.addr.i.i3.i, align 1
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #2
  store i8 %call.i.i5.i, i8* %x.addr.i2.i.i60, align 1
  %66 = load i8, i8* %x.addr.i2.i.i60, align 1
  %67 = load i8, i8* %x.addr.i2.i.i60, align 1
  %call.i3.i.i65 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #2
  %call2.i66 = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call.i3.i.i65) #2
  store i8 %call2.i66, i8* %x.addr.i76, align 1
  %68 = load i8, i8* %x.addr.i76, align 1
  %call.i77 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %68) #2
  %conv.i78 = zext i8 %call.i77 to i32
  %69 = load i8, i8* %x.addr.i76, align 1
  store i8 %69, i8* %x.addr.i.i75, align 1
  %70 = load i8, i8* %x.addr.i.i75, align 1
  %71 = load i8, i8* %x.addr.i.i75, align 1
  %call.i.i79 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #2
  %call2.i80 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i79) #2
  %conv3.i81 = zext i8 %call2.i80 to i32
  %xor.i82 = xor i32 %conv.i78, %conv3.i81
  %72 = load i8, i8* %x.addr.i76, align 1
  store i8 %72, i8* %x.addr.i13.i74, align 1
  %73 = load i8, i8* %x.addr.i13.i74, align 1
  store i8 %73, i8* %x.addr.i.i.i73, align 1
  %74 = load i8, i8* %x.addr.i.i.i73, align 1
  %75 = load i8, i8* %x.addr.i.i.i73, align 1
  %call.i.i.i83 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #2
  store i8 %call.i.i.i83, i8* %x.addr.i2.i.i72, align 1
  %76 = load i8, i8* %x.addr.i2.i.i72, align 1
  %77 = load i8, i8* %x.addr.i2.i.i72, align 1
  %call.i3.i.i84 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #2
  %call5.i85 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i84) #2
  %conv6.i86 = zext i8 %call5.i85 to i32
  %xor7.i87 = xor i32 %xor.i82, %conv6.i86
  %78 = load i8, i8* %x.addr.i76, align 1
  store i8 %78, i8* %x.addr.i16.i71, align 1
  %79 = load i8, i8* %x.addr.i16.i71, align 1
  store i8 %79, i8* %x.addr.i.i15.i70, align 1
  %80 = load i8, i8* %x.addr.i.i15.i70, align 1
  store i8 %80, i8* %x.addr.i.i.i.i69, align 1
  %81 = load i8, i8* %x.addr.i.i.i.i69, align 1
  %82 = load i8, i8* %x.addr.i.i.i.i69, align 1
  %call.i.i.i.i88 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #2
  store i8 %call.i.i.i.i88, i8* %x.addr.i2.i.i.i68, align 1
  %83 = load i8, i8* %x.addr.i2.i.i.i68, align 1
  %84 = load i8, i8* %x.addr.i2.i.i.i68, align 1
  %call.i3.i.i.i89 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #2
  store i8 %call.i3.i.i.i89, i8* %x.addr.i2.i14.i67, align 1
  %85 = load i8, i8* %x.addr.i2.i14.i67, align 1
  %86 = load i8, i8* %x.addr.i2.i14.i67, align 1
  %call.i.i17.i90 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #2
  %call9.i91 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i90) #2
  %conv10.i92 = zext i8 %call9.i91 to i32
  %xor11.i93 = xor i32 %xor7.i87, %conv10.i92
  %conv12.i94 = trunc i32 %xor11.i93 to i8
  %conv11 = zext i8 %conv12.i94 to i32
  %xor12 = xor i32 %xor8, %conv11
  %conv13 = trunc i32 %xor12 to i8
  ret i8 %conv13
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_S(i8* %x, i8* %y) #0 {
entry:
  %a.addr.i.i539 = alloca i8*, align 8
  %f.addr.i.i540 = alloca i8 (i8)*, align 8
  %result.i.i541 = alloca i8, align 1
  %i.i.i542 = alloca i32, align 4
  %a.addr.i543 = alloca i8*, align 8
  %x.addr.i2.i14.i67.i = alloca i8, align 1
  %x.addr.i2.i.i.i68.i = alloca i8, align 1
  %x.addr.i.i.i.i69.i = alloca i8, align 1
  %x.addr.i.i15.i70.i = alloca i8, align 1
  %x.addr.i16.i71.i = alloca i8, align 1
  %x.addr.i2.i.i72.i = alloca i8, align 1
  %x.addr.i.i.i73.i = alloca i8, align 1
  %x.addr.i13.i74.i = alloca i8, align 1
  %x.addr.i.i75.i = alloca i8, align 1
  %x.addr.i76.i = alloca i8, align 1
  %x.addr.i2.i.i60.i = alloca i8, align 1
  %x.addr.i.i3.i.i = alloca i8, align 1
  %x.addr.i4.i.i = alloca i8, align 1
  %x.addr.i.i.i61.i = alloca i8, align 1
  %x.addr.i.i62.i = alloca i8, align 1
  %x.addr.i63.i = alloca i8, align 1
  %x.addr.i.i52.i = alloca i8, align 1
  %x.addr.i53.i = alloca i8, align 1
  %x.addr.i2.i.i45.i = alloca i8, align 1
  %x.addr.i.i.i46.i = alloca i8, align 1
  %x.addr.i.i47.i = alloca i8, align 1
  %x.addr.i48.i = alloca i8, align 1
  %x.addr.i2.i14.i17.i = alloca i8, align 1
  %x.addr.i2.i.i.i18.i = alloca i8, align 1
  %x.addr.i.i.i.i19.i = alloca i8, align 1
  %x.addr.i.i15.i20.i = alloca i8, align 1
  %x.addr.i16.i21.i = alloca i8, align 1
  %x.addr.i2.i.i22.i = alloca i8, align 1
  %x.addr.i.i.i23.i = alloca i8, align 1
  %x.addr.i13.i24.i = alloca i8, align 1
  %x.addr.i.i25.i = alloca i8, align 1
  %x.addr.i26.i = alloca i8, align 1
  %x.addr.i.i14.i = alloca i8, align 1
  %x.addr.i15.i = alloca i8, align 1
  %x.addr.i2.i14.i.i = alloca i8, align 1
  %x.addr.i2.i.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i.i = alloca i8, align 1
  %x.addr.i.i15.i.i = alloca i8, align 1
  %x.addr.i16.i.i = alloca i8, align 1
  %x.addr.i2.i.i.i = alloca i8, align 1
  %x.addr.i.i.i.i = alloca i8, align 1
  %x.addr.i13.i.i = alloca i8, align 1
  %x.addr.i.i.i = alloca i8, align 1
  %x.addr.i.i = alloca i8, align 1
  %x.addr.i = alloca i8, align 1
  %from.addr.i516 = alloca i8*, align 8
  %to.addr.i517 = alloca i8*, align 8
  %f.addr.i518 = alloca i8 (i8)*, align 8
  %i.i519 = alloca i32, align 4
  %from.addr.i501 = alloca i8*, align 8
  %to.addr.i502 = alloca i8*, align 8
  %f.addr.i503 = alloca i8 (i8)*, align 8
  %i.i504 = alloca i32, align 4
  %from.addr.i486 = alloca i8*, align 8
  %to.addr.i487 = alloca i8*, align 8
  %f.addr.i488 = alloca i8 (i8)*, align 8
  %i.i489 = alloca i32, align 4
  %a.addr.i.i162.i285 = alloca i8*, align 8
  %f.addr.i.i163.i286 = alloca i8 (i8)*, align 8
  %result.i.i164.i287 = alloca i8, align 1
  %i.i.i165.i288 = alloca i32, align 4
  %a.addr.i166.i289 = alloca i8*, align 8
  %a.addr.i.i145.i290 = alloca i8*, align 8
  %f.addr.i.i146.i291 = alloca i8 (i8)*, align 8
  %result.i.i147.i292 = alloca i8, align 1
  %i.i.i148.i293 = alloca i32, align 4
  %a.addr.i149.i294 = alloca i8*, align 8
  %a.addr.i.i.i295 = alloca i8*, align 8
  %f.addr.i.i.i296 = alloca i8 (i8)*, align 8
  %result.i.i.i297 = alloca i8, align 1
  %i.i.i.i298 = alloca i32, align 4
  %a.addr.i.i299 = alloca i8*, align 8
  %a.addr.i300 = alloca i8*, align 8
  %b.addr.i301 = alloca i8*, align 8
  %c.addr.i302 = alloca i8*, align 8
  %A.i303 = alloca i8, align 1
  %B.i304 = alloca i8, align 1
  %i.i310 = alloca i32, align 4
  %j.i311 = alloca i32, align 4
  %i30.i312 = alloca i32, align 4
  %j35.i313 = alloca i32, align 4
  %i102.i314 = alloca i32, align 4
  %j114.i315 = alloca i32, align 4
  %a.addr.i.i162.i84 = alloca i8*, align 8
  %f.addr.i.i163.i85 = alloca i8 (i8)*, align 8
  %result.i.i164.i86 = alloca i8, align 1
  %i.i.i165.i87 = alloca i32, align 4
  %a.addr.i166.i88 = alloca i8*, align 8
  %a.addr.i.i145.i89 = alloca i8*, align 8
  %f.addr.i.i146.i90 = alloca i8 (i8)*, align 8
  %result.i.i147.i91 = alloca i8, align 1
  %i.i.i148.i92 = alloca i32, align 4
  %a.addr.i149.i93 = alloca i8*, align 8
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
  %i.i109 = alloca i32, align 4
  %j.i110 = alloca i32, align 4
  %i30.i111 = alloca i32, align 4
  %j35.i112 = alloca i32, align 4
  %i102.i113 = alloca i32, align 4
  %j114.i114 = alloca i32, align 4
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
  %a.addr.i.i74 = alloca i8*, align 8
  %a.addr.i75 = alloca i8*, align 8
  %b.addr.i = alloca i8*, align 8
  %c.addr.i = alloca i8*, align 8
  %A.i = alloca i8, align 1
  %B.i = alloca i8, align 1
  %r.i = alloca [1 x [1 x i8]], align 1
  %s.i = alloca [1 x [1 x i8]], align 1
  %p0.i = alloca [1 x [1 x i8]], align 1
  %p1.i = alloca [1 x [1 x i8]], align 1
  %z.i = alloca [1 x [1 x i8]], align 1
  %i.i76 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %i30.i = alloca i32, align 4
  %j35.i = alloca i32, align 4
  %i102.i = alloca i32, align 4
  %j114.i = alloca i32, align 4
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
  store i8 0, i8* %result.i.i, align 1
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
  %call.i.i = call zeroext i8 %4(i8 zeroext %7) #2
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
  %call.i = call zeroext i8 %13(i8 zeroext %16) #2
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
  %call.i54 = call zeroext i8 %22(i8 zeroext %25) #2
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
  %call.i68 = call zeroext i8 %31(i8 zeroext %34) #2
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
  %call.i77 = call zeroext i8 (...) @rand() #2
  store i8 %call.i77, i8* %A.i, align 1
  %call1.i = call zeroext i8 (...) @rand() #2
  store i8 %call1.i, i8* %B.i, align 1
  %39 = load i8, i8* %A.i, align 1
  %conv.i = zext i8 %39 to i32
  %40 = load i8*, i8** %a.addr.i75, align 8
  store i8* %40, i8** %a.addr.i.i74, align 8
  %41 = load i8*, i8** %a.addr.i.i74, align 8
  store i8* %41, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i8 0, i8* %result.i.i.i, align 1
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
  %call.i.i.i = call zeroext i8 %43(i8 zeroext %46) #2
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
  call void @assume(i1 zeroext %cmp.i78) #2
  %50 = load i8, i8* %B.i, align 1
  %conv5.i = zext i8 %50 to i32
  %51 = load i8*, i8** %b.addr.i, align 8
  store i8* %51, i8** %a.addr.i149.i, align 8
  %52 = load i8*, i8** %a.addr.i149.i, align 8
  store i8* %52, i8** %a.addr.i.i145.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i, align 8
  store i8 0, i8* %result.i.i147.i, align 1
  store i32 0, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

for.cond.i.i151.i:                                ; preds = %for.body.i.i160.i, %xors.exit.i
  %53 = load i32, i32* %i.i.i148.i, align 4
  %cmp.i.i150.i = icmp sle i32 %53, 0
  br i1 %cmp.i.i150.i, label %for.body.i.i160.i, label %xors.exit161.i

for.body.i.i160.i:                                ; preds = %for.cond.i.i151.i
  %54 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i, align 8
  %55 = load i8*, i8** %a.addr.i.i145.i, align 8
  %56 = load i32, i32* %i.i.i148.i, align 4
  %idxprom.i.i152.i = sext i32 %56 to i64
  %arrayidx.i.i153.i = getelementptr inbounds i8, i8* %55, i64 %idxprom.i.i152.i
  %57 = load i8, i8* %arrayidx.i.i153.i, align 1
  %call.i.i154.i = call zeroext i8 %54(i8 zeroext %57) #2
  %conv.i.i155.i = zext i8 %call.i.i154.i to i32
  %58 = load i8, i8* %result.i.i147.i, align 1
  %conv1.i.i156.i = zext i8 %58 to i32
  %xor.i.i157.i = xor i32 %conv1.i.i156.i, %conv.i.i155.i
  %conv2.i.i158.i = trunc i32 %xor.i.i157.i to i8
  store i8 %conv2.i.i158.i, i8* %result.i.i147.i, align 1
  %59 = load i32, i32* %i.i.i148.i, align 4
  %inc.i.i159.i = add nsw i32 %59, 1
  store i32 %inc.i.i159.i, i32* %i.i.i148.i, align 4
  br label %for.cond.i.i151.i

xors.exit161.i:                                   ; preds = %for.cond.i.i151.i
  %60 = load i8, i8* %result.i.i147.i, align 1
  %conv7.i = zext i8 %60 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #2
  store i32 0, i32* %i.i76, align 4
  br label %for.cond.i79

for.cond.i79:                                     ; preds = %for.end.i, %xors.exit161.i
  %61 = load i32, i32* %i.i76, align 4
  %cmp10.i = icmp sle i32 %61, 0
  br i1 %cmp10.i, label %for.body.i80, label %for.end29.i

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
  %call16.i = call zeroext i8 (...) @rand() #2
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
  %69 = load i32, i32* %j.i, align 4
  %idxprom23.i = sext i32 %69 to i64
  %arrayidx24.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i
  %70 = load i32, i32* %i.i76, align 4
  %idxprom25.i = sext i32 %70 to i64
  %arrayidx26.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i, i64 0, i64 %idxprom25.i
  store i8 %68, i8* %arrayidx26.i, align 1
  %71 = load i32, i32* %j.i, align 4
  %inc.i83 = add nsw i32 %71, 1
  store i32 %inc.i83, i32* %j.i, align 4
  br label %for.cond12.i

for.end.i:                                        ; preds = %for.cond12.i
  %72 = load i32, i32* %i.i76, align 4
  %inc28.i = add nsw i32 %72, 1
  store i32 %inc28.i, i32* %i.i76, align 4
  br label %for.cond.i79

for.end29.i:                                      ; preds = %for.cond.i79
  store i32 0, i32* %i30.i, align 4
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.end98.i, %for.end29.i
  %73 = load i32, i32* %i30.i, align 4
  %cmp32.i = icmp sle i32 %73, 0
  br i1 %cmp32.i, label %for.body34.i, label %for.end101.i

for.body34.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %j35.i, align 4
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %if.end.i, %for.body34.i
  %74 = load i32, i32* %j35.i, align 4
  %cmp37.i = icmp sle i32 %74, 0
  br i1 %cmp37.i, label %for.body39.i, label %for.end98.i

for.body39.i:                                     ; preds = %for.cond36.i
  %75 = load i32, i32* %j35.i, align 4
  %76 = load i32, i32* %i30.i, align 4
  %cmp40.i = icmp ne i32 %75, %76
  br i1 %cmp40.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body39.i
  %77 = load i8*, i8** %b.addr.i, align 8
  %78 = load i32, i32* %j35.i, align 4
  %idxprom42.i = sext i32 %78 to i64
  %arrayidx43.i = getelementptr inbounds i8, i8* %77, i64 %idxprom42.i
  %79 = load i8, i8* %arrayidx43.i, align 1
  %conv44.i = zext i8 %79 to i32
  %80 = load i32, i32* %i30.i, align 4
  %idxprom45.i = sext i32 %80 to i64
  %arrayidx46.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i
  %81 = load i32, i32* %j35.i, align 4
  %idxprom47.i = sext i32 %81 to i64
  %arrayidx48.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i, i64 0, i64 %idxprom47.i
  %82 = load i8, i8* %arrayidx48.i, align 1
  %conv49.i = zext i8 %82 to i32
  %xor.i = xor i32 %conv44.i, %conv49.i
  %conv50.i = trunc i32 %xor.i to i8
  %83 = load i32, i32* %i30.i, align 4
  %idxprom51.i = sext i32 %83 to i64
  %arrayidx52.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i
  %84 = load i32, i32* %j35.i, align 4
  %idxprom53.i = sext i32 %84 to i64
  %arrayidx54.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i, i64 0, i64 %idxprom53.i
  store i8 %conv50.i, i8* %arrayidx54.i, align 1
  %85 = load i8*, i8** %a.addr.i75, align 8
  %86 = load i32, i32* %i30.i, align 4
  %idxprom55.i = sext i32 %86 to i64
  %arrayidx56.i = getelementptr inbounds i8, i8* %85, i64 %idxprom55.i
  %87 = load i8, i8* %arrayidx56.i, align 1
  %conv57.i = zext i8 %87 to i32
  %xor58.i = xor i32 %conv57.i, 1
  %conv59.i = trunc i32 %xor58.i to i8
  %88 = load i32, i32* %i30.i, align 4
  %idxprom60.i = sext i32 %88 to i64
  %arrayidx61.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i
  %89 = load i32, i32* %j35.i, align 4
  %idxprom62.i = sext i32 %89 to i64
  %arrayidx63.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i, i64 0, i64 %idxprom62.i
  %90 = load i8, i8* %arrayidx63.i, align 1
  %call64.i = call zeroext i8 @mult(i8 zeroext %conv59.i, i8 zeroext %90) #2
  %91 = load i32, i32* %i30.i, align 4
  %idxprom65.i = sext i32 %91 to i64
  %arrayidx66.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i
  %92 = load i32, i32* %j35.i, align 4
  %idxprom67.i = sext i32 %92 to i64
  %arrayidx68.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i, i64 0, i64 %idxprom67.i
  store i8 %call64.i, i8* %arrayidx68.i, align 1
  %93 = load i8*, i8** %a.addr.i75, align 8
  %94 = load i32, i32* %i30.i, align 4
  %idxprom69.i = sext i32 %94 to i64
  %arrayidx70.i = getelementptr inbounds i8, i8* %93, i64 %idxprom69.i
  %95 = load i8, i8* %arrayidx70.i, align 1
  %96 = load i32, i32* %i30.i, align 4
  %idxprom71.i = sext i32 %96 to i64
  %arrayidx72.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i
  %97 = load i32, i32* %j35.i, align 4
  %idxprom73.i = sext i32 %97 to i64
  %arrayidx74.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i, i64 0, i64 %idxprom73.i
  %98 = load i8, i8* %arrayidx74.i, align 1
  %call75.i = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %98) #2
  %99 = load i32, i32* %i30.i, align 4
  %idxprom76.i = sext i32 %99 to i64
  %arrayidx77.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i
  %100 = load i32, i32* %j35.i, align 4
  %idxprom78.i = sext i32 %100 to i64
  %arrayidx79.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i, i64 0, i64 %idxprom78.i
  store i8 %call75.i, i8* %arrayidx79.i, align 1
  %101 = load i32, i32* %i30.i, align 4
  %idxprom80.i = sext i32 %101 to i64
  %arrayidx81.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i
  %102 = load i32, i32* %j35.i, align 4
  %idxprom82.i = sext i32 %102 to i64
  %arrayidx83.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i, i64 0, i64 %idxprom82.i
  %103 = load i8, i8* %arrayidx83.i, align 1
  %conv84.i = zext i8 %103 to i32
  %104 = load i32, i32* %i30.i, align 4
  %idxprom85.i = sext i32 %104 to i64
  %arrayidx86.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i
  %105 = load i32, i32* %j35.i, align 4
  %idxprom87.i = sext i32 %105 to i64
  %arrayidx88.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i, i64 0, i64 %idxprom87.i
  %106 = load i8, i8* %arrayidx88.i, align 1
  %conv89.i = zext i8 %106 to i32
  %xor90.i = xor i32 %conv84.i, %conv89.i
  %conv91.i = trunc i32 %xor90.i to i8
  %107 = load i32, i32* %i30.i, align 4
  %idxprom92.i = sext i32 %107 to i64
  %arrayidx93.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i
  %108 = load i32, i32* %j35.i, align 4
  %idxprom94.i = sext i32 %108 to i64
  %arrayidx95.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i, i64 0, i64 %idxprom94.i
  store i8 %conv91.i, i8* %arrayidx95.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body39.i
  %109 = load i32, i32* %j35.i, align 4
  %inc97.i = add nsw i32 %109, 1
  store i32 %inc97.i, i32* %j35.i, align 4
  br label %for.cond36.i

for.end98.i:                                      ; preds = %for.cond36.i
  %110 = load i32, i32* %i30.i, align 4
  %inc100.i = add nsw i32 %110, 1
  store i32 %inc100.i, i32* %i30.i, align 4
  br label %for.cond31.i

for.end101.i:                                     ; preds = %for.cond31.i
  store i32 0, i32* %i102.i, align 4
  br label %for.cond103.i

for.cond103.i:                                    ; preds = %for.end135.i, %for.end101.i
  %111 = load i32, i32* %i102.i, align 4
  %cmp104.i = icmp sle i32 %111, 0
  br i1 %cmp104.i, label %for.body106.i, label %for.end138.i

for.body106.i:                                    ; preds = %for.cond103.i
  %112 = load i8*, i8** %a.addr.i75, align 8
  %113 = load i32, i32* %i102.i, align 4
  %idxprom107.i = sext i32 %113 to i64
  %arrayidx108.i = getelementptr inbounds i8, i8* %112, i64 %idxprom107.i
  %114 = load i8, i8* %arrayidx108.i, align 1
  %115 = load i8*, i8** %b.addr.i, align 8
  %116 = load i32, i32* %i102.i, align 4
  %idxprom109.i = sext i32 %116 to i64
  %arrayidx110.i = getelementptr inbounds i8, i8* %115, i64 %idxprom109.i
  %117 = load i8, i8* %arrayidx110.i, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %117) #2
  %118 = load i8*, i8** %c.addr.i, align 8
  %119 = load i32, i32* %i102.i, align 4
  %idxprom112.i = sext i32 %119 to i64
  %arrayidx113.i = getelementptr inbounds i8, i8* %118, i64 %idxprom112.i
  store i8 %call111.i, i8* %arrayidx113.i, align 1
  store i32 0, i32* %j114.i, align 4
  br label %for.cond115.i

for.cond115.i:                                    ; preds = %if.end132.i, %for.body106.i
  %120 = load i32, i32* %j114.i, align 4
  %cmp116.i = icmp sle i32 %120, 0
  br i1 %cmp116.i, label %for.body118.i, label %for.end135.i

for.body118.i:                                    ; preds = %for.cond115.i
  %121 = load i32, i32* %j114.i, align 4
  %122 = load i32, i32* %i102.i, align 4
  %cmp119.i = icmp ne i32 %121, %122
  br i1 %cmp119.i, label %if.then121.i, label %if.end132.i

if.then121.i:                                     ; preds = %for.body118.i
  %123 = load i32, i32* %i102.i, align 4
  %idxprom122.i = sext i32 %123 to i64
  %arrayidx123.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i
  %124 = load i32, i32* %j114.i, align 4
  %idxprom124.i = sext i32 %124 to i64
  %arrayidx125.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i, i64 0, i64 %idxprom124.i
  %125 = load i8, i8* %arrayidx125.i, align 1
  %conv126.i = zext i8 %125 to i32
  %126 = load i8*, i8** %c.addr.i, align 8
  %127 = load i32, i32* %i102.i, align 4
  %idxprom127.i = sext i32 %127 to i64
  %arrayidx128.i = getelementptr inbounds i8, i8* %126, i64 %idxprom127.i
  %128 = load i8, i8* %arrayidx128.i, align 1
  %conv129.i = zext i8 %128 to i32
  %xor130.i = xor i32 %conv129.i, %conv126.i
  %conv131.i = trunc i32 %xor130.i to i8
  store i8 %conv131.i, i8* %arrayidx128.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then121.i, %for.body118.i
  %129 = load i32, i32* %j114.i, align 4
  %inc134.i = add nsw i32 %129, 1
  store i32 %inc134.i, i32* %j114.i, align 4
  br label %for.cond115.i

for.end135.i:                                     ; preds = %for.cond115.i
  %130 = load i32, i32* %i102.i, align 4
  %inc137.i = add nsw i32 %130, 1
  store i32 %inc137.i, i32* %i102.i, align 4
  br label %for.cond103.i

for.end138.i:                                     ; preds = %for.cond103.i
  %131 = load i8, i8* %A.i, align 1
  %132 = load i8, i8* %B.i, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #2
  %conv140.i = zext i8 %call139.i to i32
  %133 = load i8*, i8** %c.addr.i, align 8
  store i8* %133, i8** %a.addr.i166.i, align 8
  %134 = load i8*, i8** %a.addr.i166.i, align 8
  store i8* %134, i8** %a.addr.i.i162.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i, align 8
  store i8 0, i8* %result.i.i164.i, align 1
  store i32 0, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

for.cond.i.i168.i:                                ; preds = %for.body.i.i177.i, %for.end138.i
  %135 = load i32, i32* %i.i.i165.i, align 4
  %cmp.i.i167.i = icmp sle i32 %135, 0
  br i1 %cmp.i.i167.i, label %for.body.i.i177.i, label %sec_mult.exit

for.body.i.i177.i:                                ; preds = %for.cond.i.i168.i
  %136 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i, align 8
  %137 = load i8*, i8** %a.addr.i.i162.i, align 8
  %138 = load i32, i32* %i.i.i165.i, align 4
  %idxprom.i.i169.i = sext i32 %138 to i64
  %arrayidx.i.i170.i = getelementptr inbounds i8, i8* %137, i64 %idxprom.i.i169.i
  %139 = load i8, i8* %arrayidx.i.i170.i, align 1
  %call.i.i171.i = call zeroext i8 %136(i8 zeroext %139) #2
  %conv.i.i172.i = zext i8 %call.i.i171.i to i32
  %140 = load i8, i8* %result.i.i164.i, align 1
  %conv1.i.i173.i = zext i8 %140 to i32
  %xor.i.i174.i = xor i32 %conv1.i.i173.i, %conv.i.i172.i
  %conv2.i.i175.i = trunc i32 %xor.i.i174.i to i8
  store i8 %conv2.i.i175.i, i8* %result.i.i164.i, align 1
  %141 = load i32, i32* %i.i.i165.i, align 4
  %inc.i.i176.i = add nsw i32 %141, 1
  store i32 %inc.i.i176.i, i32* %i.i.i165.i, align 4
  br label %for.cond.i.i168.i

sec_mult.exit:                                    ; preds = %for.cond.i.i168.i
  %142 = load i8, i8* %result.i.i164.i, align 1
  %conv142.i = zext i8 %142 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #2
  %143 = load i8*, i8** %x.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  store i8* %143, i8** %a.addr.i99, align 8
  store i8* %arraydecay8, i8** %b.addr.i100, align 8
  store i8* %arraydecay9, i8** %c.addr.i101, align 8
  %call.i115 = call zeroext i8 (...) @rand() #2
  store i8 %call.i115, i8* %A.i102, align 1
  %call1.i116 = call zeroext i8 (...) @rand() #2
  store i8 %call1.i116, i8* %B.i103, align 1
  %144 = load i8, i8* %A.i102, align 1
  %conv.i117 = zext i8 %144 to i32
  %145 = load i8*, i8** %a.addr.i99, align 8
  store i8* %145, i8** %a.addr.i.i98, align 8
  %146 = load i8*, i8** %a.addr.i.i98, align 8
  store i8* %146, i8** %a.addr.i.i.i94, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i95, align 8
  store i8 0, i8* %result.i.i.i96, align 1
  store i32 0, i32* %i.i.i.i97, align 4
  br label %for.cond.i.i.i119

for.cond.i.i.i119:                                ; preds = %for.body.i.i.i128, %sec_mult.exit
  %147 = load i32, i32* %i.i.i.i97, align 4
  %cmp.i.i.i118 = icmp sle i32 %147, 0
  br i1 %cmp.i.i.i118, label %for.body.i.i.i128, label %xors.exit.i132

for.body.i.i.i128:                                ; preds = %for.cond.i.i.i119
  %148 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i95, align 8
  %149 = load i8*, i8** %a.addr.i.i.i94, align 8
  %150 = load i32, i32* %i.i.i.i97, align 4
  %idxprom.i.i.i120 = sext i32 %150 to i64
  %arrayidx.i.i.i121 = getelementptr inbounds i8, i8* %149, i64 %idxprom.i.i.i120
  %151 = load i8, i8* %arrayidx.i.i.i121, align 1
  %call.i.i.i122 = call zeroext i8 %148(i8 zeroext %151) #2
  %conv.i.i.i123 = zext i8 %call.i.i.i122 to i32
  %152 = load i8, i8* %result.i.i.i96, align 1
  %conv1.i.i.i124 = zext i8 %152 to i32
  %xor.i.i.i125 = xor i32 %conv1.i.i.i124, %conv.i.i.i123
  %conv2.i.i.i126 = trunc i32 %xor.i.i.i125 to i8
  store i8 %conv2.i.i.i126, i8* %result.i.i.i96, align 1
  %153 = load i32, i32* %i.i.i.i97, align 4
  %inc.i.i.i127 = add nsw i32 %153, 1
  store i32 %inc.i.i.i127, i32* %i.i.i.i97, align 4
  br label %for.cond.i.i.i119

xors.exit.i132:                                   ; preds = %for.cond.i.i.i119
  %154 = load i8, i8* %result.i.i.i96, align 1
  %conv3.i129 = zext i8 %154 to i32
  %cmp.i130 = icmp eq i32 %conv.i117, %conv3.i129
  call void @assume(i1 zeroext %cmp.i130) #2
  %155 = load i8, i8* %B.i103, align 1
  %conv5.i131 = zext i8 %155 to i32
  %156 = load i8*, i8** %b.addr.i100, align 8
  store i8* %156, i8** %a.addr.i149.i93, align 8
  %157 = load i8*, i8** %a.addr.i149.i93, align 8
  store i8* %157, i8** %a.addr.i.i145.i89, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i90, align 8
  store i8 0, i8* %result.i.i147.i91, align 1
  store i32 0, i32* %i.i.i148.i92, align 4
  br label %for.cond.i.i151.i134

for.cond.i.i151.i134:                             ; preds = %for.body.i.i160.i143, %xors.exit.i132
  %158 = load i32, i32* %i.i.i148.i92, align 4
  %cmp.i.i150.i133 = icmp sle i32 %158, 0
  br i1 %cmp.i.i150.i133, label %for.body.i.i160.i143, label %xors.exit161.i146

for.body.i.i160.i143:                             ; preds = %for.cond.i.i151.i134
  %159 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i90, align 8
  %160 = load i8*, i8** %a.addr.i.i145.i89, align 8
  %161 = load i32, i32* %i.i.i148.i92, align 4
  %idxprom.i.i152.i135 = sext i32 %161 to i64
  %arrayidx.i.i153.i136 = getelementptr inbounds i8, i8* %160, i64 %idxprom.i.i152.i135
  %162 = load i8, i8* %arrayidx.i.i153.i136, align 1
  %call.i.i154.i137 = call zeroext i8 %159(i8 zeroext %162) #2
  %conv.i.i155.i138 = zext i8 %call.i.i154.i137 to i32
  %163 = load i8, i8* %result.i.i147.i91, align 1
  %conv1.i.i156.i139 = zext i8 %163 to i32
  %xor.i.i157.i140 = xor i32 %conv1.i.i156.i139, %conv.i.i155.i138
  %conv2.i.i158.i141 = trunc i32 %xor.i.i157.i140 to i8
  store i8 %conv2.i.i158.i141, i8* %result.i.i147.i91, align 1
  %164 = load i32, i32* %i.i.i148.i92, align 4
  %inc.i.i159.i142 = add nsw i32 %164, 1
  store i32 %inc.i.i159.i142, i32* %i.i.i148.i92, align 4
  br label %for.cond.i.i151.i134

xors.exit161.i146:                                ; preds = %for.cond.i.i151.i134
  %165 = load i8, i8* %result.i.i147.i91, align 1
  %conv7.i144 = zext i8 %165 to i32
  %cmp8.i145 = icmp eq i32 %conv5.i131, %conv7.i144
  call void @assume(i1 zeroext %cmp8.i145) #2
  store i32 0, i32* %i.i109, align 4
  br label %for.cond.i148

for.cond.i148:                                    ; preds = %for.end.i168, %xors.exit161.i146
  %166 = load i32, i32* %i.i109, align 4
  %cmp10.i147 = icmp sle i32 %166, 0
  br i1 %cmp10.i147, label %for.body.i150, label %for.end29.i170

for.body.i150:                                    ; preds = %for.cond.i148
  %167 = load i32, i32* %i.i109, align 4
  %add.i149 = add nsw i32 %167, 1
  store i32 %add.i149, i32* %j.i110, align 4
  br label %for.cond12.i152

for.cond12.i152:                                  ; preds = %for.body15.i166, %for.body.i150
  %168 = load i32, i32* %j.i110, align 4
  %cmp13.i151 = icmp sle i32 %168, 0
  br i1 %cmp13.i151, label %for.body15.i166, label %for.end.i168

for.body15.i166:                                  ; preds = %for.cond12.i152
  %call16.i153 = call zeroext i8 (...) @rand() #2
  %169 = load i32, i32* %i.i109, align 4
  %idxprom.i154 = sext i32 %169 to i64
  %arrayidx.i155 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i154
  %170 = load i32, i32* %j.i110, align 4
  %idxprom17.i156 = sext i32 %170 to i64
  %arrayidx18.i157 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i155, i64 0, i64 %idxprom17.i156
  store i8 %call16.i153, i8* %arrayidx18.i157, align 1
  %171 = load i32, i32* %i.i109, align 4
  %idxprom19.i158 = sext i32 %171 to i64
  %arrayidx20.i159 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i158
  %172 = load i32, i32* %j.i110, align 4
  %idxprom21.i160 = sext i32 %172 to i64
  %arrayidx22.i161 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i159, i64 0, i64 %idxprom21.i160
  %173 = load i8, i8* %arrayidx22.i161, align 1
  %174 = load i32, i32* %j.i110, align 4
  %idxprom23.i162 = sext i32 %174 to i64
  %arrayidx24.i163 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i162
  %175 = load i32, i32* %i.i109, align 4
  %idxprom25.i164 = sext i32 %175 to i64
  %arrayidx26.i165 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i163, i64 0, i64 %idxprom25.i164
  store i8 %173, i8* %arrayidx26.i165, align 1
  %176 = load i32, i32* %j.i110, align 4
  %inc.i167 = add nsw i32 %176, 1
  store i32 %inc.i167, i32* %j.i110, align 4
  br label %for.cond12.i152

for.end.i168:                                     ; preds = %for.cond12.i152
  %177 = load i32, i32* %i.i109, align 4
  %inc28.i169 = add nsw i32 %177, 1
  store i32 %inc28.i169, i32* %i.i109, align 4
  br label %for.cond.i148

for.end29.i170:                                   ; preds = %for.cond.i148
  store i32 0, i32* %i30.i111, align 4
  br label %for.cond31.i172

for.cond31.i172:                                  ; preds = %for.end98.i236, %for.end29.i170
  %178 = load i32, i32* %i30.i111, align 4
  %cmp32.i171 = icmp sle i32 %178, 0
  br i1 %cmp32.i171, label %for.body34.i173, label %for.end101.i238

for.body34.i173:                                  ; preds = %for.cond31.i172
  store i32 0, i32* %j35.i112, align 4
  br label %for.cond36.i175

for.cond36.i175:                                  ; preds = %if.end.i234, %for.body34.i173
  %179 = load i32, i32* %j35.i112, align 4
  %cmp37.i174 = icmp sle i32 %179, 0
  br i1 %cmp37.i174, label %for.body39.i177, label %for.end98.i236

for.body39.i177:                                  ; preds = %for.cond36.i175
  %180 = load i32, i32* %j35.i112, align 4
  %181 = load i32, i32* %i30.i111, align 4
  %cmp40.i176 = icmp ne i32 %180, %181
  br i1 %cmp40.i176, label %if.then.i233, label %if.end.i234

if.then.i233:                                     ; preds = %for.body39.i177
  %182 = load i8*, i8** %b.addr.i100, align 8
  %183 = load i32, i32* %j35.i112, align 4
  %idxprom42.i178 = sext i32 %183 to i64
  %arrayidx43.i179 = getelementptr inbounds i8, i8* %182, i64 %idxprom42.i178
  %184 = load i8, i8* %arrayidx43.i179, align 1
  %conv44.i180 = zext i8 %184 to i32
  %185 = load i32, i32* %i30.i111, align 4
  %idxprom45.i181 = sext i32 %185 to i64
  %arrayidx46.i182 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i181
  %186 = load i32, i32* %j35.i112, align 4
  %idxprom47.i183 = sext i32 %186 to i64
  %arrayidx48.i184 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i182, i64 0, i64 %idxprom47.i183
  %187 = load i8, i8* %arrayidx48.i184, align 1
  %conv49.i185 = zext i8 %187 to i32
  %xor.i186 = xor i32 %conv44.i180, %conv49.i185
  %conv50.i187 = trunc i32 %xor.i186 to i8
  %188 = load i32, i32* %i30.i111, align 4
  %idxprom51.i188 = sext i32 %188 to i64
  %arrayidx52.i189 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i188
  %189 = load i32, i32* %j35.i112, align 4
  %idxprom53.i190 = sext i32 %189 to i64
  %arrayidx54.i191 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i189, i64 0, i64 %idxprom53.i190
  store i8 %conv50.i187, i8* %arrayidx54.i191, align 1
  %190 = load i8*, i8** %a.addr.i99, align 8
  %191 = load i32, i32* %i30.i111, align 4
  %idxprom55.i192 = sext i32 %191 to i64
  %arrayidx56.i193 = getelementptr inbounds i8, i8* %190, i64 %idxprom55.i192
  %192 = load i8, i8* %arrayidx56.i193, align 1
  %conv57.i194 = zext i8 %192 to i32
  %xor58.i195 = xor i32 %conv57.i194, 1
  %conv59.i196 = trunc i32 %xor58.i195 to i8
  %193 = load i32, i32* %i30.i111, align 4
  %idxprom60.i197 = sext i32 %193 to i64
  %arrayidx61.i198 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i197
  %194 = load i32, i32* %j35.i112, align 4
  %idxprom62.i199 = sext i32 %194 to i64
  %arrayidx63.i200 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i198, i64 0, i64 %idxprom62.i199
  %195 = load i8, i8* %arrayidx63.i200, align 1
  %call64.i201 = call zeroext i8 @mult(i8 zeroext %conv59.i196, i8 zeroext %195) #2
  %196 = load i32, i32* %i30.i111, align 4
  %idxprom65.i202 = sext i32 %196 to i64
  %arrayidx66.i203 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i202
  %197 = load i32, i32* %j35.i112, align 4
  %idxprom67.i204 = sext i32 %197 to i64
  %arrayidx68.i205 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i203, i64 0, i64 %idxprom67.i204
  store i8 %call64.i201, i8* %arrayidx68.i205, align 1
  %198 = load i8*, i8** %a.addr.i99, align 8
  %199 = load i32, i32* %i30.i111, align 4
  %idxprom69.i206 = sext i32 %199 to i64
  %arrayidx70.i207 = getelementptr inbounds i8, i8* %198, i64 %idxprom69.i206
  %200 = load i8, i8* %arrayidx70.i207, align 1
  %201 = load i32, i32* %i30.i111, align 4
  %idxprom71.i208 = sext i32 %201 to i64
  %arrayidx72.i209 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i208
  %202 = load i32, i32* %j35.i112, align 4
  %idxprom73.i210 = sext i32 %202 to i64
  %arrayidx74.i211 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i209, i64 0, i64 %idxprom73.i210
  %203 = load i8, i8* %arrayidx74.i211, align 1
  %call75.i212 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %203) #2
  %204 = load i32, i32* %i30.i111, align 4
  %idxprom76.i213 = sext i32 %204 to i64
  %arrayidx77.i214 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i213
  %205 = load i32, i32* %j35.i112, align 4
  %idxprom78.i215 = sext i32 %205 to i64
  %arrayidx79.i216 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i214, i64 0, i64 %idxprom78.i215
  store i8 %call75.i212, i8* %arrayidx79.i216, align 1
  %206 = load i32, i32* %i30.i111, align 4
  %idxprom80.i217 = sext i32 %206 to i64
  %arrayidx81.i218 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i217
  %207 = load i32, i32* %j35.i112, align 4
  %idxprom82.i219 = sext i32 %207 to i64
  %arrayidx83.i220 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i218, i64 0, i64 %idxprom82.i219
  %208 = load i8, i8* %arrayidx83.i220, align 1
  %conv84.i221 = zext i8 %208 to i32
  %209 = load i32, i32* %i30.i111, align 4
  %idxprom85.i222 = sext i32 %209 to i64
  %arrayidx86.i223 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i222
  %210 = load i32, i32* %j35.i112, align 4
  %idxprom87.i224 = sext i32 %210 to i64
  %arrayidx88.i225 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i223, i64 0, i64 %idxprom87.i224
  %211 = load i8, i8* %arrayidx88.i225, align 1
  %conv89.i226 = zext i8 %211 to i32
  %xor90.i227 = xor i32 %conv84.i221, %conv89.i226
  %conv91.i228 = trunc i32 %xor90.i227 to i8
  %212 = load i32, i32* %i30.i111, align 4
  %idxprom92.i229 = sext i32 %212 to i64
  %arrayidx93.i230 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i229
  %213 = load i32, i32* %j35.i112, align 4
  %idxprom94.i231 = sext i32 %213 to i64
  %arrayidx95.i232 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i230, i64 0, i64 %idxprom94.i231
  store i8 %conv91.i228, i8* %arrayidx95.i232, align 1
  br label %if.end.i234

if.end.i234:                                      ; preds = %if.then.i233, %for.body39.i177
  %214 = load i32, i32* %j35.i112, align 4
  %inc97.i235 = add nsw i32 %214, 1
  store i32 %inc97.i235, i32* %j35.i112, align 4
  br label %for.cond36.i175

for.end98.i236:                                   ; preds = %for.cond36.i175
  %215 = load i32, i32* %i30.i111, align 4
  %inc100.i237 = add nsw i32 %215, 1
  store i32 %inc100.i237, i32* %i30.i111, align 4
  br label %for.cond31.i172

for.end101.i238:                                  ; preds = %for.cond31.i172
  store i32 0, i32* %i102.i113, align 4
  br label %for.cond103.i240

for.cond103.i240:                                 ; preds = %for.end135.i266, %for.end101.i238
  %216 = load i32, i32* %i102.i113, align 4
  %cmp104.i239 = icmp sle i32 %216, 0
  br i1 %cmp104.i239, label %for.body106.i248, label %for.end138.i270

for.body106.i248:                                 ; preds = %for.cond103.i240
  %217 = load i8*, i8** %a.addr.i99, align 8
  %218 = load i32, i32* %i102.i113, align 4
  %idxprom107.i241 = sext i32 %218 to i64
  %arrayidx108.i242 = getelementptr inbounds i8, i8* %217, i64 %idxprom107.i241
  %219 = load i8, i8* %arrayidx108.i242, align 1
  %220 = load i8*, i8** %b.addr.i100, align 8
  %221 = load i32, i32* %i102.i113, align 4
  %idxprom109.i243 = sext i32 %221 to i64
  %arrayidx110.i244 = getelementptr inbounds i8, i8* %220, i64 %idxprom109.i243
  %222 = load i8, i8* %arrayidx110.i244, align 1
  %call111.i245 = call zeroext i8 @mult(i8 zeroext %219, i8 zeroext %222) #2
  %223 = load i8*, i8** %c.addr.i101, align 8
  %224 = load i32, i32* %i102.i113, align 4
  %idxprom112.i246 = sext i32 %224 to i64
  %arrayidx113.i247 = getelementptr inbounds i8, i8* %223, i64 %idxprom112.i246
  store i8 %call111.i245, i8* %arrayidx113.i247, align 1
  store i32 0, i32* %j114.i114, align 4
  br label %for.cond115.i250

for.cond115.i250:                                 ; preds = %if.end132.i264, %for.body106.i248
  %225 = load i32, i32* %j114.i114, align 4
  %cmp116.i249 = icmp sle i32 %225, 0
  br i1 %cmp116.i249, label %for.body118.i252, label %for.end135.i266

for.body118.i252:                                 ; preds = %for.cond115.i250
  %226 = load i32, i32* %j114.i114, align 4
  %227 = load i32, i32* %i102.i113, align 4
  %cmp119.i251 = icmp ne i32 %226, %227
  br i1 %cmp119.i251, label %if.then121.i263, label %if.end132.i264

if.then121.i263:                                  ; preds = %for.body118.i252
  %228 = load i32, i32* %i102.i113, align 4
  %idxprom122.i253 = sext i32 %228 to i64
  %arrayidx123.i254 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i253
  %229 = load i32, i32* %j114.i114, align 4
  %idxprom124.i255 = sext i32 %229 to i64
  %arrayidx125.i256 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i254, i64 0, i64 %idxprom124.i255
  %230 = load i8, i8* %arrayidx125.i256, align 1
  %conv126.i257 = zext i8 %230 to i32
  %231 = load i8*, i8** %c.addr.i101, align 8
  %232 = load i32, i32* %i102.i113, align 4
  %idxprom127.i258 = sext i32 %232 to i64
  %arrayidx128.i259 = getelementptr inbounds i8, i8* %231, i64 %idxprom127.i258
  %233 = load i8, i8* %arrayidx128.i259, align 1
  %conv129.i260 = zext i8 %233 to i32
  %xor130.i261 = xor i32 %conv129.i260, %conv126.i257
  %conv131.i262 = trunc i32 %xor130.i261 to i8
  store i8 %conv131.i262, i8* %arrayidx128.i259, align 1
  br label %if.end132.i264

if.end132.i264:                                   ; preds = %if.then121.i263, %for.body118.i252
  %234 = load i32, i32* %j114.i114, align 4
  %inc134.i265 = add nsw i32 %234, 1
  store i32 %inc134.i265, i32* %j114.i114, align 4
  br label %for.cond115.i250

for.end135.i266:                                  ; preds = %for.cond115.i250
  %235 = load i32, i32* %i102.i113, align 4
  %inc137.i267 = add nsw i32 %235, 1
  store i32 %inc137.i267, i32* %i102.i113, align 4
  br label %for.cond103.i240

for.end138.i270:                                  ; preds = %for.cond103.i240
  %236 = load i8, i8* %A.i102, align 1
  %237 = load i8, i8* %B.i103, align 1
  %call139.i268 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237) #2
  %conv140.i269 = zext i8 %call139.i268 to i32
  %238 = load i8*, i8** %c.addr.i101, align 8
  store i8* %238, i8** %a.addr.i166.i88, align 8
  %239 = load i8*, i8** %a.addr.i166.i88, align 8
  store i8* %239, i8** %a.addr.i.i162.i84, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i85, align 8
  store i8 0, i8* %result.i.i164.i86, align 1
  store i32 0, i32* %i.i.i165.i87, align 4
  br label %for.cond.i.i168.i272

for.cond.i.i168.i272:                             ; preds = %for.body.i.i177.i281, %for.end138.i270
  %240 = load i32, i32* %i.i.i165.i87, align 4
  %cmp.i.i167.i271 = icmp sle i32 %240, 0
  br i1 %cmp.i.i167.i271, label %for.body.i.i177.i281, label %sec_mult.exit284

for.body.i.i177.i281:                             ; preds = %for.cond.i.i168.i272
  %241 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i85, align 8
  %242 = load i8*, i8** %a.addr.i.i162.i84, align 8
  %243 = load i32, i32* %i.i.i165.i87, align 4
  %idxprom.i.i169.i273 = sext i32 %243 to i64
  %arrayidx.i.i170.i274 = getelementptr inbounds i8, i8* %242, i64 %idxprom.i.i169.i273
  %244 = load i8, i8* %arrayidx.i.i170.i274, align 1
  %call.i.i171.i275 = call zeroext i8 %241(i8 zeroext %244) #2
  %conv.i.i172.i276 = zext i8 %call.i.i171.i275 to i32
  %245 = load i8, i8* %result.i.i164.i86, align 1
  %conv1.i.i173.i277 = zext i8 %245 to i32
  %xor.i.i174.i278 = xor i32 %conv1.i.i173.i277, %conv.i.i172.i276
  %conv2.i.i175.i279 = trunc i32 %xor.i.i174.i278 to i8
  store i8 %conv2.i.i175.i279, i8* %result.i.i164.i86, align 1
  %246 = load i32, i32* %i.i.i165.i87, align 4
  %inc.i.i176.i280 = add nsw i32 %246, 1
  store i32 %inc.i.i176.i280, i32* %i.i.i165.i87, align 4
  br label %for.cond.i.i168.i272

sec_mult.exit284:                                 ; preds = %for.cond.i.i168.i272
  %247 = load i8, i8* %result.i.i164.i86, align 1
  %conv142.i282 = zext i8 %247 to i32
  %cmp143.i283 = icmp eq i32 %conv140.i269, %conv142.i282
  call void @assert(i1 zeroext %cmp143.i283) #2
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  store i8* %arraydecay10, i8** %a.addr.i300, align 8
  store i8* %arraydecay11, i8** %b.addr.i301, align 8
  store i8* %arraydecay12, i8** %c.addr.i302, align 8
  %call.i316 = call zeroext i8 (...) @rand() #2
  store i8 %call.i316, i8* %A.i303, align 1
  %call1.i317 = call zeroext i8 (...) @rand() #2
  store i8 %call1.i317, i8* %B.i304, align 1
  %248 = load i8, i8* %A.i303, align 1
  %conv.i318 = zext i8 %248 to i32
  %249 = load i8*, i8** %a.addr.i300, align 8
  store i8* %249, i8** %a.addr.i.i299, align 8
  %250 = load i8*, i8** %a.addr.i.i299, align 8
  store i8* %250, i8** %a.addr.i.i.i295, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i296, align 8
  store i8 0, i8* %result.i.i.i297, align 1
  store i32 0, i32* %i.i.i.i298, align 4
  br label %for.cond.i.i.i320

for.cond.i.i.i320:                                ; preds = %for.body.i.i.i329, %sec_mult.exit284
  %251 = load i32, i32* %i.i.i.i298, align 4
  %cmp.i.i.i319 = icmp sle i32 %251, 0
  br i1 %cmp.i.i.i319, label %for.body.i.i.i329, label %xors.exit.i333

for.body.i.i.i329:                                ; preds = %for.cond.i.i.i320
  %252 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i296, align 8
  %253 = load i8*, i8** %a.addr.i.i.i295, align 8
  %254 = load i32, i32* %i.i.i.i298, align 4
  %idxprom.i.i.i321 = sext i32 %254 to i64
  %arrayidx.i.i.i322 = getelementptr inbounds i8, i8* %253, i64 %idxprom.i.i.i321
  %255 = load i8, i8* %arrayidx.i.i.i322, align 1
  %call.i.i.i323 = call zeroext i8 %252(i8 zeroext %255) #2
  %conv.i.i.i324 = zext i8 %call.i.i.i323 to i32
  %256 = load i8, i8* %result.i.i.i297, align 1
  %conv1.i.i.i325 = zext i8 %256 to i32
  %xor.i.i.i326 = xor i32 %conv1.i.i.i325, %conv.i.i.i324
  %conv2.i.i.i327 = trunc i32 %xor.i.i.i326 to i8
  store i8 %conv2.i.i.i327, i8* %result.i.i.i297, align 1
  %257 = load i32, i32* %i.i.i.i298, align 4
  %inc.i.i.i328 = add nsw i32 %257, 1
  store i32 %inc.i.i.i328, i32* %i.i.i.i298, align 4
  br label %for.cond.i.i.i320

xors.exit.i333:                                   ; preds = %for.cond.i.i.i320
  %258 = load i8, i8* %result.i.i.i297, align 1
  %conv3.i330 = zext i8 %258 to i32
  %cmp.i331 = icmp eq i32 %conv.i318, %conv3.i330
  call void @assume(i1 zeroext %cmp.i331) #2
  %259 = load i8, i8* %B.i304, align 1
  %conv5.i332 = zext i8 %259 to i32
  %260 = load i8*, i8** %b.addr.i301, align 8
  store i8* %260, i8** %a.addr.i149.i294, align 8
  %261 = load i8*, i8** %a.addr.i149.i294, align 8
  store i8* %261, i8** %a.addr.i.i145.i290, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i146.i291, align 8
  store i8 0, i8* %result.i.i147.i292, align 1
  store i32 0, i32* %i.i.i148.i293, align 4
  br label %for.cond.i.i151.i335

for.cond.i.i151.i335:                             ; preds = %for.body.i.i160.i344, %xors.exit.i333
  %262 = load i32, i32* %i.i.i148.i293, align 4
  %cmp.i.i150.i334 = icmp sle i32 %262, 0
  br i1 %cmp.i.i150.i334, label %for.body.i.i160.i344, label %xors.exit161.i347

for.body.i.i160.i344:                             ; preds = %for.cond.i.i151.i335
  %263 = load i8 (i8)*, i8 (i8)** %f.addr.i.i146.i291, align 8
  %264 = load i8*, i8** %a.addr.i.i145.i290, align 8
  %265 = load i32, i32* %i.i.i148.i293, align 4
  %idxprom.i.i152.i336 = sext i32 %265 to i64
  %arrayidx.i.i153.i337 = getelementptr inbounds i8, i8* %264, i64 %idxprom.i.i152.i336
  %266 = load i8, i8* %arrayidx.i.i153.i337, align 1
  %call.i.i154.i338 = call zeroext i8 %263(i8 zeroext %266) #2
  %conv.i.i155.i339 = zext i8 %call.i.i154.i338 to i32
  %267 = load i8, i8* %result.i.i147.i292, align 1
  %conv1.i.i156.i340 = zext i8 %267 to i32
  %xor.i.i157.i341 = xor i32 %conv1.i.i156.i340, %conv.i.i155.i339
  %conv2.i.i158.i342 = trunc i32 %xor.i.i157.i341 to i8
  store i8 %conv2.i.i158.i342, i8* %result.i.i147.i292, align 1
  %268 = load i32, i32* %i.i.i148.i293, align 4
  %inc.i.i159.i343 = add nsw i32 %268, 1
  store i32 %inc.i.i159.i343, i32* %i.i.i148.i293, align 4
  br label %for.cond.i.i151.i335

xors.exit161.i347:                                ; preds = %for.cond.i.i151.i335
  %269 = load i8, i8* %result.i.i147.i292, align 1
  %conv7.i345 = zext i8 %269 to i32
  %cmp8.i346 = icmp eq i32 %conv5.i332, %conv7.i345
  call void @assume(i1 zeroext %cmp8.i346) #2
  store i32 0, i32* %i.i310, align 4
  br label %for.cond.i349

for.cond.i349:                                    ; preds = %for.end.i369, %xors.exit161.i347
  %270 = load i32, i32* %i.i310, align 4
  %cmp10.i348 = icmp sle i32 %270, 0
  br i1 %cmp10.i348, label %for.body.i351, label %for.end29.i371

for.body.i351:                                    ; preds = %for.cond.i349
  %271 = load i32, i32* %i.i310, align 4
  %add.i350 = add nsw i32 %271, 1
  store i32 %add.i350, i32* %j.i311, align 4
  br label %for.cond12.i353

for.cond12.i353:                                  ; preds = %for.body15.i367, %for.body.i351
  %272 = load i32, i32* %j.i311, align 4
  %cmp13.i352 = icmp sle i32 %272, 0
  br i1 %cmp13.i352, label %for.body15.i367, label %for.end.i369

for.body15.i367:                                  ; preds = %for.cond12.i353
  %call16.i354 = call zeroext i8 (...) @rand() #2
  %273 = load i32, i32* %i.i310, align 4
  %idxprom.i355 = sext i32 %273 to i64
  %arrayidx.i356 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i355
  %274 = load i32, i32* %j.i311, align 4
  %idxprom17.i357 = sext i32 %274 to i64
  %arrayidx18.i358 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i356, i64 0, i64 %idxprom17.i357
  store i8 %call16.i354, i8* %arrayidx18.i358, align 1
  %275 = load i32, i32* %i.i310, align 4
  %idxprom19.i359 = sext i32 %275 to i64
  %arrayidx20.i360 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom19.i359
  %276 = load i32, i32* %j.i311, align 4
  %idxprom21.i361 = sext i32 %276 to i64
  %arrayidx22.i362 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx20.i360, i64 0, i64 %idxprom21.i361
  %277 = load i8, i8* %arrayidx22.i362, align 1
  %278 = load i32, i32* %j.i311, align 4
  %idxprom23.i363 = sext i32 %278 to i64
  %arrayidx24.i364 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom23.i363
  %279 = load i32, i32* %i.i310, align 4
  %idxprom25.i365 = sext i32 %279 to i64
  %arrayidx26.i366 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx24.i364, i64 0, i64 %idxprom25.i365
  store i8 %277, i8* %arrayidx26.i366, align 1
  %280 = load i32, i32* %j.i311, align 4
  %inc.i368 = add nsw i32 %280, 1
  store i32 %inc.i368, i32* %j.i311, align 4
  br label %for.cond12.i353

for.end.i369:                                     ; preds = %for.cond12.i353
  %281 = load i32, i32* %i.i310, align 4
  %inc28.i370 = add nsw i32 %281, 1
  store i32 %inc28.i370, i32* %i.i310, align 4
  br label %for.cond.i349

for.end29.i371:                                   ; preds = %for.cond.i349
  store i32 0, i32* %i30.i312, align 4
  br label %for.cond31.i373

for.cond31.i373:                                  ; preds = %for.end98.i437, %for.end29.i371
  %282 = load i32, i32* %i30.i312, align 4
  %cmp32.i372 = icmp sle i32 %282, 0
  br i1 %cmp32.i372, label %for.body34.i374, label %for.end101.i439

for.body34.i374:                                  ; preds = %for.cond31.i373
  store i32 0, i32* %j35.i313, align 4
  br label %for.cond36.i376

for.cond36.i376:                                  ; preds = %if.end.i435, %for.body34.i374
  %283 = load i32, i32* %j35.i313, align 4
  %cmp37.i375 = icmp sle i32 %283, 0
  br i1 %cmp37.i375, label %for.body39.i378, label %for.end98.i437

for.body39.i378:                                  ; preds = %for.cond36.i376
  %284 = load i32, i32* %j35.i313, align 4
  %285 = load i32, i32* %i30.i312, align 4
  %cmp40.i377 = icmp ne i32 %284, %285
  br i1 %cmp40.i377, label %if.then.i434, label %if.end.i435

if.then.i434:                                     ; preds = %for.body39.i378
  %286 = load i8*, i8** %b.addr.i301, align 8
  %287 = load i32, i32* %j35.i313, align 4
  %idxprom42.i379 = sext i32 %287 to i64
  %arrayidx43.i380 = getelementptr inbounds i8, i8* %286, i64 %idxprom42.i379
  %288 = load i8, i8* %arrayidx43.i380, align 1
  %conv44.i381 = zext i8 %288 to i32
  %289 = load i32, i32* %i30.i312, align 4
  %idxprom45.i382 = sext i32 %289 to i64
  %arrayidx46.i383 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom45.i382
  %290 = load i32, i32* %j35.i313, align 4
  %idxprom47.i384 = sext i32 %290 to i64
  %arrayidx48.i385 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46.i383, i64 0, i64 %idxprom47.i384
  %291 = load i8, i8* %arrayidx48.i385, align 1
  %conv49.i386 = zext i8 %291 to i32
  %xor.i387 = xor i32 %conv44.i381, %conv49.i386
  %conv50.i388 = trunc i32 %xor.i387 to i8
  %292 = load i32, i32* %i30.i312, align 4
  %idxprom51.i389 = sext i32 %292 to i64
  %arrayidx52.i390 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom51.i389
  %293 = load i32, i32* %j35.i313, align 4
  %idxprom53.i391 = sext i32 %293 to i64
  %arrayidx54.i392 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx52.i390, i64 0, i64 %idxprom53.i391
  store i8 %conv50.i388, i8* %arrayidx54.i392, align 1
  %294 = load i8*, i8** %a.addr.i300, align 8
  %295 = load i32, i32* %i30.i312, align 4
  %idxprom55.i393 = sext i32 %295 to i64
  %arrayidx56.i394 = getelementptr inbounds i8, i8* %294, i64 %idxprom55.i393
  %296 = load i8, i8* %arrayidx56.i394, align 1
  %conv57.i395 = zext i8 %296 to i32
  %xor58.i396 = xor i32 %conv57.i395, 1
  %conv59.i397 = trunc i32 %xor58.i396 to i8
  %297 = load i32, i32* %i30.i312, align 4
  %idxprom60.i398 = sext i32 %297 to i64
  %arrayidx61.i399 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom60.i398
  %298 = load i32, i32* %j35.i313, align 4
  %idxprom62.i400 = sext i32 %298 to i64
  %arrayidx63.i401 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i399, i64 0, i64 %idxprom62.i400
  %299 = load i8, i8* %arrayidx63.i401, align 1
  %call64.i402 = call zeroext i8 @mult(i8 zeroext %conv59.i397, i8 zeroext %299) #2
  %300 = load i32, i32* %i30.i312, align 4
  %idxprom65.i403 = sext i32 %300 to i64
  %arrayidx66.i404 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom65.i403
  %301 = load i32, i32* %j35.i313, align 4
  %idxprom67.i405 = sext i32 %301 to i64
  %arrayidx68.i406 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx66.i404, i64 0, i64 %idxprom67.i405
  store i8 %call64.i402, i8* %arrayidx68.i406, align 1
  %302 = load i8*, i8** %a.addr.i300, align 8
  %303 = load i32, i32* %i30.i312, align 4
  %idxprom69.i407 = sext i32 %303 to i64
  %arrayidx70.i408 = getelementptr inbounds i8, i8* %302, i64 %idxprom69.i407
  %304 = load i8, i8* %arrayidx70.i408, align 1
  %305 = load i32, i32* %i30.i312, align 4
  %idxprom71.i409 = sext i32 %305 to i64
  %arrayidx72.i410 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %s.i, i64 0, i64 %idxprom71.i409
  %306 = load i32, i32* %j35.i313, align 4
  %idxprom73.i411 = sext i32 %306 to i64
  %arrayidx74.i412 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx72.i410, i64 0, i64 %idxprom73.i411
  %307 = load i8, i8* %arrayidx74.i412, align 1
  %call75.i413 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %307) #2
  %308 = load i32, i32* %i30.i312, align 4
  %idxprom76.i414 = sext i32 %308 to i64
  %arrayidx77.i415 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom76.i414
  %309 = load i32, i32* %j35.i313, align 4
  %idxprom78.i416 = sext i32 %309 to i64
  %arrayidx79.i417 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx77.i415, i64 0, i64 %idxprom78.i416
  store i8 %call75.i413, i8* %arrayidx79.i417, align 1
  %310 = load i32, i32* %i30.i312, align 4
  %idxprom80.i418 = sext i32 %310 to i64
  %arrayidx81.i419 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p0.i, i64 0, i64 %idxprom80.i418
  %311 = load i32, i32* %j35.i313, align 4
  %idxprom82.i420 = sext i32 %311 to i64
  %arrayidx83.i421 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx81.i419, i64 0, i64 %idxprom82.i420
  %312 = load i8, i8* %arrayidx83.i421, align 1
  %conv84.i422 = zext i8 %312 to i32
  %313 = load i32, i32* %i30.i312, align 4
  %idxprom85.i423 = sext i32 %313 to i64
  %arrayidx86.i424 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %p1.i, i64 0, i64 %idxprom85.i423
  %314 = load i32, i32* %j35.i313, align 4
  %idxprom87.i425 = sext i32 %314 to i64
  %arrayidx88.i426 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx86.i424, i64 0, i64 %idxprom87.i425
  %315 = load i8, i8* %arrayidx88.i426, align 1
  %conv89.i427 = zext i8 %315 to i32
  %xor90.i428 = xor i32 %conv84.i422, %conv89.i427
  %conv91.i429 = trunc i32 %xor90.i428 to i8
  %316 = load i32, i32* %i30.i312, align 4
  %idxprom92.i430 = sext i32 %316 to i64
  %arrayidx93.i431 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom92.i430
  %317 = load i32, i32* %j35.i313, align 4
  %idxprom94.i432 = sext i32 %317 to i64
  %arrayidx95.i433 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93.i431, i64 0, i64 %idxprom94.i432
  store i8 %conv91.i429, i8* %arrayidx95.i433, align 1
  br label %if.end.i435

if.end.i435:                                      ; preds = %if.then.i434, %for.body39.i378
  %318 = load i32, i32* %j35.i313, align 4
  %inc97.i436 = add nsw i32 %318, 1
  store i32 %inc97.i436, i32* %j35.i313, align 4
  br label %for.cond36.i376

for.end98.i437:                                   ; preds = %for.cond36.i376
  %319 = load i32, i32* %i30.i312, align 4
  %inc100.i438 = add nsw i32 %319, 1
  store i32 %inc100.i438, i32* %i30.i312, align 4
  br label %for.cond31.i373

for.end101.i439:                                  ; preds = %for.cond31.i373
  store i32 0, i32* %i102.i314, align 4
  br label %for.cond103.i441

for.cond103.i441:                                 ; preds = %for.end135.i467, %for.end101.i439
  %320 = load i32, i32* %i102.i314, align 4
  %cmp104.i440 = icmp sle i32 %320, 0
  br i1 %cmp104.i440, label %for.body106.i449, label %for.end138.i471

for.body106.i449:                                 ; preds = %for.cond103.i441
  %321 = load i8*, i8** %a.addr.i300, align 8
  %322 = load i32, i32* %i102.i314, align 4
  %idxprom107.i442 = sext i32 %322 to i64
  %arrayidx108.i443 = getelementptr inbounds i8, i8* %321, i64 %idxprom107.i442
  %323 = load i8, i8* %arrayidx108.i443, align 1
  %324 = load i8*, i8** %b.addr.i301, align 8
  %325 = load i32, i32* %i102.i314, align 4
  %idxprom109.i444 = sext i32 %325 to i64
  %arrayidx110.i445 = getelementptr inbounds i8, i8* %324, i64 %idxprom109.i444
  %326 = load i8, i8* %arrayidx110.i445, align 1
  %call111.i446 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %326) #2
  %327 = load i8*, i8** %c.addr.i302, align 8
  %328 = load i32, i32* %i102.i314, align 4
  %idxprom112.i447 = sext i32 %328 to i64
  %arrayidx113.i448 = getelementptr inbounds i8, i8* %327, i64 %idxprom112.i447
  store i8 %call111.i446, i8* %arrayidx113.i448, align 1
  store i32 0, i32* %j114.i315, align 4
  br label %for.cond115.i451

for.cond115.i451:                                 ; preds = %if.end132.i465, %for.body106.i449
  %329 = load i32, i32* %j114.i315, align 4
  %cmp116.i450 = icmp sle i32 %329, 0
  br i1 %cmp116.i450, label %for.body118.i453, label %for.end135.i467

for.body118.i453:                                 ; preds = %for.cond115.i451
  %330 = load i32, i32* %j114.i315, align 4
  %331 = load i32, i32* %i102.i314, align 4
  %cmp119.i452 = icmp ne i32 %330, %331
  br i1 %cmp119.i452, label %if.then121.i464, label %if.end132.i465

if.then121.i464:                                  ; preds = %for.body118.i453
  %332 = load i32, i32* %i102.i314, align 4
  %idxprom122.i454 = sext i32 %332 to i64
  %arrayidx123.i455 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %z.i, i64 0, i64 %idxprom122.i454
  %333 = load i32, i32* %j114.i315, align 4
  %idxprom124.i456 = sext i32 %333 to i64
  %arrayidx125.i457 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx123.i455, i64 0, i64 %idxprom124.i456
  %334 = load i8, i8* %arrayidx125.i457, align 1
  %conv126.i458 = zext i8 %334 to i32
  %335 = load i8*, i8** %c.addr.i302, align 8
  %336 = load i32, i32* %i102.i314, align 4
  %idxprom127.i459 = sext i32 %336 to i64
  %arrayidx128.i460 = getelementptr inbounds i8, i8* %335, i64 %idxprom127.i459
  %337 = load i8, i8* %arrayidx128.i460, align 1
  %conv129.i461 = zext i8 %337 to i32
  %xor130.i462 = xor i32 %conv129.i461, %conv126.i458
  %conv131.i463 = trunc i32 %xor130.i462 to i8
  store i8 %conv131.i463, i8* %arrayidx128.i460, align 1
  br label %if.end132.i465

if.end132.i465:                                   ; preds = %if.then121.i464, %for.body118.i453
  %338 = load i32, i32* %j114.i315, align 4
  %inc134.i466 = add nsw i32 %338, 1
  store i32 %inc134.i466, i32* %j114.i315, align 4
  br label %for.cond115.i451

for.end135.i467:                                  ; preds = %for.cond115.i451
  %339 = load i32, i32* %i102.i314, align 4
  %inc137.i468 = add nsw i32 %339, 1
  store i32 %inc137.i468, i32* %i102.i314, align 4
  br label %for.cond103.i441

for.end138.i471:                                  ; preds = %for.cond103.i441
  %340 = load i8, i8* %A.i303, align 1
  %341 = load i8, i8* %B.i304, align 1
  %call139.i469 = call zeroext i8 @mult(i8 zeroext %340, i8 zeroext %341) #2
  %conv140.i470 = zext i8 %call139.i469 to i32
  %342 = load i8*, i8** %c.addr.i302, align 8
  store i8* %342, i8** %a.addr.i166.i289, align 8
  %343 = load i8*, i8** %a.addr.i166.i289, align 8
  store i8* %343, i8** %a.addr.i.i162.i285, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i163.i286, align 8
  store i8 0, i8* %result.i.i164.i287, align 1
  store i32 0, i32* %i.i.i165.i288, align 4
  br label %for.cond.i.i168.i473

for.cond.i.i168.i473:                             ; preds = %for.body.i.i177.i482, %for.end138.i471
  %344 = load i32, i32* %i.i.i165.i288, align 4
  %cmp.i.i167.i472 = icmp sle i32 %344, 0
  br i1 %cmp.i.i167.i472, label %for.body.i.i177.i482, label %sec_mult.exit485

for.body.i.i177.i482:                             ; preds = %for.cond.i.i168.i473
  %345 = load i8 (i8)*, i8 (i8)** %f.addr.i.i163.i286, align 8
  %346 = load i8*, i8** %a.addr.i.i162.i285, align 8
  %347 = load i32, i32* %i.i.i165.i288, align 4
  %idxprom.i.i169.i474 = sext i32 %347 to i64
  %arrayidx.i.i170.i475 = getelementptr inbounds i8, i8* %346, i64 %idxprom.i.i169.i474
  %348 = load i8, i8* %arrayidx.i.i170.i475, align 1
  %call.i.i171.i476 = call zeroext i8 %345(i8 zeroext %348) #2
  %conv.i.i172.i477 = zext i8 %call.i.i171.i476 to i32
  %349 = load i8, i8* %result.i.i164.i287, align 1
  %conv1.i.i173.i478 = zext i8 %349 to i32
  %xor.i.i174.i479 = xor i32 %conv1.i.i173.i478, %conv.i.i172.i477
  %conv2.i.i175.i480 = trunc i32 %xor.i.i174.i479 to i8
  store i8 %conv2.i.i175.i480, i8* %result.i.i164.i287, align 1
  %350 = load i32, i32* %i.i.i165.i288, align 4
  %inc.i.i176.i481 = add nsw i32 %350, 1
  store i32 %inc.i.i176.i481, i32* %i.i.i165.i288, align 4
  br label %for.cond.i.i168.i473

sec_mult.exit485:                                 ; preds = %for.cond.i.i168.i473
  %351 = load i8, i8* %result.i.i164.i287, align 1
  %conv142.i483 = zext i8 %351 to i32
  %cmp143.i484 = icmp eq i32 %conv140.i470, %conv142.i483
  call void @assert(i1 zeroext %cmp143.i484) #2
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %e3, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %l3, i64 0, i64 0
  store i8* %arraydecay13, i8** %from.addr.i486, align 8
  store i8* %arraydecay14, i8** %to.addr.i487, align 8
  store i8 (i8)* @L3, i8 (i8)** %f.addr.i488, align 8
  store i32 0, i32* %i.i489, align 4
  br label %for.cond.i491

for.cond.i491:                                    ; preds = %for.body.i497, %sec_mult.exit485
  %352 = load i32, i32* %i.i489, align 4
  %cmp.i490 = icmp sle i32 %352, 0
  br i1 %cmp.i490, label %for.body.i497, label %transform.exit500

for.body.i497:                                    ; preds = %for.cond.i491
  %353 = load i8 (i8)*, i8 (i8)** %f.addr.i488, align 8
  %354 = load i8*, i8** %from.addr.i486, align 8
  %355 = load i32, i32* %i.i489, align 4
  %idxprom.i492 = sext i32 %355 to i64
  %arrayidx.i493 = getelementptr inbounds i8, i8* %354, i64 %idxprom.i492
  %356 = load i8, i8* %arrayidx.i493, align 1
  %call.i494 = call zeroext i8 %353(i8 zeroext %356) #2
  %357 = load i8*, i8** %to.addr.i487, align 8
  %358 = load i32, i32* %i.i489, align 4
  %idxprom1.i495 = sext i32 %358 to i64
  %arrayidx2.i496 = getelementptr inbounds i8, i8* %357, i64 %idxprom1.i495
  store i8 %call.i494, i8* %arrayidx2.i496, align 1
  %359 = load i32, i32* %i.i489, align 4
  %inc.i498 = add nsw i32 %359, 1
  store i32 %inc.i498, i32* %i.i489, align 4
  br label %for.cond.i491

transform.exit500:                                ; preds = %for.cond.i491
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %e5, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [1 x i8], [1 x i8]* %l5, i64 0, i64 0
  store i8* %arraydecay15, i8** %from.addr.i501, align 8
  store i8* %arraydecay16, i8** %to.addr.i502, align 8
  store i8 (i8)* @L5, i8 (i8)** %f.addr.i503, align 8
  store i32 0, i32* %i.i504, align 4
  br label %for.cond.i506

for.cond.i506:                                    ; preds = %for.body.i512, %transform.exit500
  %360 = load i32, i32* %i.i504, align 4
  %cmp.i505 = icmp sle i32 %360, 0
  br i1 %cmp.i505, label %for.body.i512, label %transform.exit515

for.body.i512:                                    ; preds = %for.cond.i506
  %361 = load i8 (i8)*, i8 (i8)** %f.addr.i503, align 8
  %362 = load i8*, i8** %from.addr.i501, align 8
  %363 = load i32, i32* %i.i504, align 4
  %idxprom.i507 = sext i32 %363 to i64
  %arrayidx.i508 = getelementptr inbounds i8, i8* %362, i64 %idxprom.i507
  %364 = load i8, i8* %arrayidx.i508, align 1
  %call.i509 = call zeroext i8 %361(i8 zeroext %364) #2
  %365 = load i8*, i8** %to.addr.i502, align 8
  %366 = load i32, i32* %i.i504, align 4
  %idxprom1.i510 = sext i32 %366 to i64
  %arrayidx2.i511 = getelementptr inbounds i8, i8* %365, i64 %idxprom1.i510
  store i8 %call.i509, i8* %arrayidx2.i511, align 1
  %367 = load i32, i32* %i.i504, align 4
  %inc.i513 = add nsw i32 %367, 1
  store i32 %inc.i513, i32* %i.i504, align 4
  br label %for.cond.i506

transform.exit515:                                ; preds = %for.cond.i506
  %arraydecay17 = getelementptr inbounds [1 x i8], [1 x i8]* %e7, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %l7, i64 0, i64 0
  store i8* %arraydecay17, i8** %from.addr.i516, align 8
  store i8* %arraydecay18, i8** %to.addr.i517, align 8
  store i8 (i8)* @L7, i8 (i8)** %f.addr.i518, align 8
  store i32 0, i32* %i.i519, align 4
  br label %for.cond.i521

for.cond.i521:                                    ; preds = %for.body.i527, %transform.exit515
  %368 = load i32, i32* %i.i519, align 4
  %cmp.i520 = icmp sle i32 %368, 0
  br i1 %cmp.i520, label %for.body.i527, label %transform.exit530

for.body.i527:                                    ; preds = %for.cond.i521
  %369 = load i8 (i8)*, i8 (i8)** %f.addr.i518, align 8
  %370 = load i8*, i8** %from.addr.i516, align 8
  %371 = load i32, i32* %i.i519, align 4
  %idxprom.i522 = sext i32 %371 to i64
  %arrayidx.i523 = getelementptr inbounds i8, i8* %370, i64 %idxprom.i522
  %372 = load i8, i8* %arrayidx.i523, align 1
  %call.i524 = call zeroext i8 %369(i8 zeroext %372) #2
  %373 = load i8*, i8** %to.addr.i517, align 8
  %374 = load i32, i32* %i.i519, align 4
  %idxprom1.i525 = sext i32 %374 to i64
  %arrayidx2.i526 = getelementptr inbounds i8, i8* %373, i64 %idxprom1.i525
  store i8 %call.i524, i8* %arrayidx2.i526, align 1
  %375 = load i32, i32* %i.i519, align 4
  %inc.i528 = add nsw i32 %375, 1
  store i32 %inc.i528, i32* %i.i519, align 4
  br label %for.cond.i521

transform.exit530:                                ; preds = %for.cond.i521
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %transform.exit530
  %376 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %376, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %377 = load i32, i32* %i, align 4
  %idxprom = sext i32 %377 to i64
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %l1, i64 0, i64 %idxprom
  %378 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %378 to i32
  %379 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %379 to i64
  %arrayidx23 = getelementptr inbounds [1 x i8], [1 x i8]* %l3, i64 0, i64 %idxprom22
  %380 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %380 to i32
  %xor = xor i32 %conv21, %conv24
  %381 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %381 to i64
  %arrayidx26 = getelementptr inbounds [1 x i8], [1 x i8]* %l5, i64 0, i64 %idxprom25
  %382 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %382 to i32
  %xor28 = xor i32 %xor, %conv27
  %383 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %383 to i64
  %arrayidx30 = getelementptr inbounds [1 x i8], [1 x i8]* %l7, i64 0, i64 %idxprom29
  %384 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %384 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %385 = load i8*, i8** %y.addr, align 8
  %386 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %386 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %385, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %387 = load i32, i32* %i, align 4
  %inc = add nsw i32 %387, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %388 = load i8*, i8** %y.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %388, i64 0
  %389 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %389 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %arrayidx36, align 1
  %390 = load i8, i8* %X, align 1
  store i8 %390, i8* %x.addr.i, align 1
  %391 = load i8, i8* %x.addr.i, align 1
  store i8 %391, i8* %x.addr.i.i, align 1
  %392 = load i8, i8* %x.addr.i.i, align 1
  %call.i.i531 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %392) #2
  %conv.i.i532 = zext i8 %call.i.i531 to i32
  %393 = load i8, i8* %x.addr.i.i, align 1
  store i8 %393, i8* %x.addr.i.i.i, align 1
  %394 = load i8, i8* %x.addr.i.i.i, align 1
  %395 = load i8, i8* %x.addr.i.i.i, align 1
  %call.i.i.i533 = call zeroext i8 @mult(i8 zeroext %394, i8 zeroext %395) #2
  %call2.i.i = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i.i533) #2
  %conv3.i.i = zext i8 %call2.i.i to i32
  %xor.i.i534 = xor i32 %conv.i.i532, %conv3.i.i
  %396 = load i8, i8* %x.addr.i.i, align 1
  store i8 %396, i8* %x.addr.i13.i.i, align 1
  %397 = load i8, i8* %x.addr.i13.i.i, align 1
  store i8 %397, i8* %x.addr.i.i.i.i, align 1
  %398 = load i8, i8* %x.addr.i.i.i.i, align 1
  %399 = load i8, i8* %x.addr.i.i.i.i, align 1
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %398, i8 zeroext %399) #2
  store i8 %call.i.i.i.i, i8* %x.addr.i2.i.i.i, align 1
  %400 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %401 = load i8, i8* %x.addr.i2.i.i.i, align 1
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %400, i8 zeroext %401) #2
  %call5.i.i = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i.i) #2
  %conv6.i.i = zext i8 %call5.i.i to i32
  %xor7.i.i = xor i32 %xor.i.i534, %conv6.i.i
  %402 = load i8, i8* %x.addr.i.i, align 1
  store i8 %402, i8* %x.addr.i16.i.i, align 1
  %403 = load i8, i8* %x.addr.i16.i.i, align 1
  store i8 %403, i8* %x.addr.i.i15.i.i, align 1
  %404 = load i8, i8* %x.addr.i.i15.i.i, align 1
  store i8 %404, i8* %x.addr.i.i.i.i.i, align 1
  %405 = load i8, i8* %x.addr.i.i.i.i.i, align 1
  %406 = load i8, i8* %x.addr.i.i.i.i.i, align 1
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406) #2
  store i8 %call.i.i.i.i.i, i8* %x.addr.i2.i.i.i.i, align 1
  %407 = load i8, i8* %x.addr.i2.i.i.i.i, align 1
  %408 = load i8, i8* %x.addr.i2.i.i.i.i, align 1
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %407, i8 zeroext %408) #2
  store i8 %call.i3.i.i.i.i, i8* %x.addr.i2.i14.i.i, align 1
  %409 = load i8, i8* %x.addr.i2.i14.i.i, align 1
  %410 = load i8, i8* %x.addr.i2.i14.i.i, align 1
  %call.i.i17.i.i = call zeroext i8 @mult(i8 zeroext %409, i8 zeroext %410) #2
  %call9.i.i = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i.i) #2
  %conv10.i.i = zext i8 %call9.i.i to i32
  %xor11.i.i = xor i32 %xor7.i.i, %conv10.i.i
  %conv12.i.i = trunc i32 %xor11.i.i to i8
  %conv.i535 = zext i8 %conv12.i.i to i32
  %xor.i536 = xor i32 1, %conv.i535
  %411 = load i8, i8* %x.addr.i, align 1
  store i8 %411, i8* %x.addr.i15.i, align 1
  %412 = load i8, i8* %x.addr.i15.i, align 1
  %413 = load i8, i8* %x.addr.i15.i, align 1
  store i8 %413, i8* %x.addr.i.i14.i, align 1
  %414 = load i8, i8* %x.addr.i.i14.i, align 1
  %415 = load i8, i8* %x.addr.i.i14.i, align 1
  %call.i.i16.i = call zeroext i8 @mult(i8 zeroext %414, i8 zeroext %415) #2
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %call.i.i16.i) #2
  store i8 %call1.i.i, i8* %x.addr.i26.i, align 1
  %416 = load i8, i8* %x.addr.i26.i, align 1
  %call.i27.i = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %416) #2
  %conv.i28.i = zext i8 %call.i27.i to i32
  %417 = load i8, i8* %x.addr.i26.i, align 1
  store i8 %417, i8* %x.addr.i.i25.i, align 1
  %418 = load i8, i8* %x.addr.i.i25.i, align 1
  %419 = load i8, i8* %x.addr.i.i25.i, align 1
  %call.i.i29.i = call zeroext i8 @mult(i8 zeroext %418, i8 zeroext %419) #2
  %call2.i30.i = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i29.i) #2
  %conv3.i31.i = zext i8 %call2.i30.i to i32
  %xor.i32.i = xor i32 %conv.i28.i, %conv3.i31.i
  %420 = load i8, i8* %x.addr.i26.i, align 1
  store i8 %420, i8* %x.addr.i13.i24.i, align 1
  %421 = load i8, i8* %x.addr.i13.i24.i, align 1
  store i8 %421, i8* %x.addr.i.i.i23.i, align 1
  %422 = load i8, i8* %x.addr.i.i.i23.i, align 1
  %423 = load i8, i8* %x.addr.i.i.i23.i, align 1
  %call.i.i.i33.i = call zeroext i8 @mult(i8 zeroext %422, i8 zeroext %423) #2
  store i8 %call.i.i.i33.i, i8* %x.addr.i2.i.i22.i, align 1
  %424 = load i8, i8* %x.addr.i2.i.i22.i, align 1
  %425 = load i8, i8* %x.addr.i2.i.i22.i, align 1
  %call.i3.i.i34.i = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425) #2
  %call5.i35.i = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i34.i) #2
  %conv6.i36.i = zext i8 %call5.i35.i to i32
  %xor7.i37.i = xor i32 %xor.i32.i, %conv6.i36.i
  %426 = load i8, i8* %x.addr.i26.i, align 1
  store i8 %426, i8* %x.addr.i16.i21.i, align 1
  %427 = load i8, i8* %x.addr.i16.i21.i, align 1
  store i8 %427, i8* %x.addr.i.i15.i20.i, align 1
  %428 = load i8, i8* %x.addr.i.i15.i20.i, align 1
  store i8 %428, i8* %x.addr.i.i.i.i19.i, align 1
  %429 = load i8, i8* %x.addr.i.i.i.i19.i, align 1
  %430 = load i8, i8* %x.addr.i.i.i.i19.i, align 1
  %call.i.i.i.i38.i = call zeroext i8 @mult(i8 zeroext %429, i8 zeroext %430) #2
  store i8 %call.i.i.i.i38.i, i8* %x.addr.i2.i.i.i18.i, align 1
  %431 = load i8, i8* %x.addr.i2.i.i.i18.i, align 1
  %432 = load i8, i8* %x.addr.i2.i.i.i18.i, align 1
  %call.i3.i.i.i39.i = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432) #2
  store i8 %call.i3.i.i.i39.i, i8* %x.addr.i2.i14.i17.i, align 1
  %433 = load i8, i8* %x.addr.i2.i14.i17.i, align 1
  %434 = load i8, i8* %x.addr.i2.i14.i17.i, align 1
  %call.i.i17.i40.i = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434) #2
  %call9.i41.i = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i40.i) #2
  %conv10.i42.i = zext i8 %call9.i41.i to i32
  %xor11.i43.i = xor i32 %xor7.i37.i, %conv10.i42.i
  %conv12.i44.i = trunc i32 %xor11.i43.i to i8
  %conv3.i537 = zext i8 %conv12.i44.i to i32
  %xor4.i = xor i32 %xor.i536, %conv3.i537
  %435 = load i8, i8* %x.addr.i, align 1
  store i8 %435, i8* %x.addr.i48.i, align 1
  %436 = load i8, i8* %x.addr.i48.i, align 1
  %437 = load i8, i8* %x.addr.i48.i, align 1
  store i8 %437, i8* %x.addr.i.i47.i, align 1
  %438 = load i8, i8* %x.addr.i.i47.i, align 1
  store i8 %438, i8* %x.addr.i.i.i46.i, align 1
  %439 = load i8, i8* %x.addr.i.i.i46.i, align 1
  %440 = load i8, i8* %x.addr.i.i.i46.i, align 1
  %call.i.i.i49.i = call zeroext i8 @mult(i8 zeroext %439, i8 zeroext %440) #2
  store i8 %call.i.i.i49.i, i8* %x.addr.i2.i.i45.i, align 1
  %441 = load i8, i8* %x.addr.i2.i.i45.i, align 1
  %442 = load i8, i8* %x.addr.i2.i.i45.i, align 1
  %call.i3.i.i50.i = call zeroext i8 @mult(i8 zeroext %441, i8 zeroext %442) #2
  %call1.i51.i = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %call.i3.i.i50.i) #2
  store i8 %call1.i51.i, i8* %x.addr.i53.i, align 1
  %443 = load i8, i8* %x.addr.i53.i, align 1
  %call.i54.i = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %443) #2
  %conv.i55.i = zext i8 %call.i54.i to i32
  %444 = load i8, i8* %x.addr.i53.i, align 1
  store i8 %444, i8* %x.addr.i.i52.i, align 1
  %445 = load i8, i8* %x.addr.i.i52.i, align 1
  %446 = load i8, i8* %x.addr.i.i52.i, align 1
  %call.i.i56.i = call zeroext i8 @mult(i8 zeroext %445, i8 zeroext %446) #2
  %call2.i57.i = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i56.i) #2
  %conv3.i58.i = zext i8 %call2.i57.i to i32
  %xor.i59.i = xor i32 %conv.i55.i, %conv3.i58.i
  %conv4.i.i = trunc i32 %xor.i59.i to i8
  %conv7.i538 = zext i8 %conv4.i.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i538
  %447 = load i8, i8* %x.addr.i, align 1
  store i8 %447, i8* %x.addr.i63.i, align 1
  %448 = load i8, i8* %x.addr.i63.i, align 1
  store i8 %448, i8* %x.addr.i.i62.i, align 1
  %449 = load i8, i8* %x.addr.i.i62.i, align 1
  %450 = load i8, i8* %x.addr.i.i62.i, align 1
  store i8 %450, i8* %x.addr.i.i.i61.i, align 1
  %451 = load i8, i8* %x.addr.i.i.i61.i, align 1
  %452 = load i8, i8* %x.addr.i.i.i61.i, align 1
  %call.i.i.i64.i = call zeroext i8 @mult(i8 zeroext %451, i8 zeroext %452) #2
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %449, i8 zeroext %call.i.i.i64.i) #2
  %453 = load i8, i8* %x.addr.i63.i, align 1
  store i8 %453, i8* %x.addr.i4.i.i, align 1
  %454 = load i8, i8* %x.addr.i4.i.i, align 1
  store i8 %454, i8* %x.addr.i.i3.i.i, align 1
  %455 = load i8, i8* %x.addr.i.i3.i.i, align 1
  %456 = load i8, i8* %x.addr.i.i3.i.i, align 1
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %455, i8 zeroext %456) #2
  store i8 %call.i.i5.i.i, i8* %x.addr.i2.i.i60.i, align 1
  %457 = load i8, i8* %x.addr.i2.i.i60.i, align 1
  %458 = load i8, i8* %x.addr.i2.i.i60.i, align 1
  %call.i3.i.i65.i = call zeroext i8 @mult(i8 zeroext %457, i8 zeroext %458) #2
  %call2.i66.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call.i3.i.i65.i) #2
  store i8 %call2.i66.i, i8* %x.addr.i76.i, align 1
  %459 = load i8, i8* %x.addr.i76.i, align 1
  %call.i77.i = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %459) #2
  %conv.i78.i = zext i8 %call.i77.i to i32
  %460 = load i8, i8* %x.addr.i76.i, align 1
  store i8 %460, i8* %x.addr.i.i75.i, align 1
  %461 = load i8, i8* %x.addr.i.i75.i, align 1
  %462 = load i8, i8* %x.addr.i.i75.i, align 1
  %call.i.i79.i = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462) #2
  %call2.i80.i = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i79.i) #2
  %conv3.i81.i = zext i8 %call2.i80.i to i32
  %xor.i82.i = xor i32 %conv.i78.i, %conv3.i81.i
  %463 = load i8, i8* %x.addr.i76.i, align 1
  store i8 %463, i8* %x.addr.i13.i74.i, align 1
  %464 = load i8, i8* %x.addr.i13.i74.i, align 1
  store i8 %464, i8* %x.addr.i.i.i73.i, align 1
  %465 = load i8, i8* %x.addr.i.i.i73.i, align 1
  %466 = load i8, i8* %x.addr.i.i.i73.i, align 1
  %call.i.i.i83.i = call zeroext i8 @mult(i8 zeroext %465, i8 zeroext %466) #2
  store i8 %call.i.i.i83.i, i8* %x.addr.i2.i.i72.i, align 1
  %467 = load i8, i8* %x.addr.i2.i.i72.i, align 1
  %468 = load i8, i8* %x.addr.i2.i.i72.i, align 1
  %call.i3.i.i84.i = call zeroext i8 @mult(i8 zeroext %467, i8 zeroext %468) #2
  %call5.i85.i = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i84.i) #2
  %conv6.i86.i = zext i8 %call5.i85.i to i32
  %xor7.i87.i = xor i32 %xor.i82.i, %conv6.i86.i
  %469 = load i8, i8* %x.addr.i76.i, align 1
  store i8 %469, i8* %x.addr.i16.i71.i, align 1
  %470 = load i8, i8* %x.addr.i16.i71.i, align 1
  store i8 %470, i8* %x.addr.i.i15.i70.i, align 1
  %471 = load i8, i8* %x.addr.i.i15.i70.i, align 1
  store i8 %471, i8* %x.addr.i.i.i.i69.i, align 1
  %472 = load i8, i8* %x.addr.i.i.i.i69.i, align 1
  %473 = load i8, i8* %x.addr.i.i.i.i69.i, align 1
  %call.i.i.i.i88.i = call zeroext i8 @mult(i8 zeroext %472, i8 zeroext %473) #2
  store i8 %call.i.i.i.i88.i, i8* %x.addr.i2.i.i.i68.i, align 1
  %474 = load i8, i8* %x.addr.i2.i.i.i68.i, align 1
  %475 = load i8, i8* %x.addr.i2.i.i.i68.i, align 1
  %call.i3.i.i.i89.i = call zeroext i8 @mult(i8 zeroext %474, i8 zeroext %475) #2
  store i8 %call.i3.i.i.i89.i, i8* %x.addr.i2.i14.i67.i, align 1
  %476 = load i8, i8* %x.addr.i2.i14.i67.i, align 1
  %477 = load i8, i8* %x.addr.i2.i14.i67.i, align 1
  %call.i.i17.i90.i = call zeroext i8 @mult(i8 zeroext %476, i8 zeroext %477) #2
  %call9.i91.i = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i90.i) #2
  %conv10.i92.i = zext i8 %call9.i91.i to i32
  %xor11.i93.i = xor i32 %xor7.i87.i, %conv10.i92.i
  %conv12.i94.i = trunc i32 %xor11.i93.i to i8
  %conv11.i = zext i8 %conv12.i94.i to i32
  %xor12.i = xor i32 %xor8.i, %conv11.i
  %conv13.i = trunc i32 %xor12.i to i8
  %conv41 = zext i8 %conv13.i to i32
  %478 = load i8*, i8** %y.addr, align 8
  store i8* %478, i8** %a.addr.i543, align 8
  %479 = load i8*, i8** %a.addr.i543, align 8
  store i8* %479, i8** %a.addr.i.i539, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i540, align 8
  store i8 0, i8* %result.i.i541, align 1
  store i32 0, i32* %i.i.i542, align 4
  br label %for.cond.i.i545

for.cond.i.i545:                                  ; preds = %for.body.i.i554, %for.end
  %480 = load i32, i32* %i.i.i542, align 4
  %cmp.i.i544 = icmp sle i32 %480, 0
  br i1 %cmp.i.i544, label %for.body.i.i554, label %xors.exit555

for.body.i.i554:                                  ; preds = %for.cond.i.i545
  %481 = load i8 (i8)*, i8 (i8)** %f.addr.i.i540, align 8
  %482 = load i8*, i8** %a.addr.i.i539, align 8
  %483 = load i32, i32* %i.i.i542, align 4
  %idxprom.i.i546 = sext i32 %483 to i64
  %arrayidx.i.i547 = getelementptr inbounds i8, i8* %482, i64 %idxprom.i.i546
  %484 = load i8, i8* %arrayidx.i.i547, align 1
  %call.i.i548 = call zeroext i8 %481(i8 zeroext %484) #2
  %conv.i.i549 = zext i8 %call.i.i548 to i32
  %485 = load i8, i8* %result.i.i541, align 1
  %conv1.i.i550 = zext i8 %485 to i32
  %xor.i.i551 = xor i32 %conv1.i.i550, %conv.i.i549
  %conv2.i.i552 = trunc i32 %xor.i.i551 to i8
  store i8 %conv2.i.i552, i8* %result.i.i541, align 1
  %486 = load i32, i32* %i.i.i542, align 4
  %inc.i.i553 = add nsw i32 %486, 1
  store i32 %inc.i.i553, i32* %i.i.i542, align 4
  br label %for.cond.i.i545

xors.exit555:                                     ; preds = %for.cond.i.i545
  %487 = load i8, i8* %result.i.i541, align 1
  %conv43 = zext i8 %487 to i32
  %cmp44 = icmp eq i32 %conv41, %conv43
  call void @assert(i1 zeroext %cmp44)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
