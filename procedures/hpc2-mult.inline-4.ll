; ModuleID = '../examples/hpc2-mult.c'
source_filename = "../examples/hpc2-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"../examples/hpc2-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 4
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
  %cmp = icmp sle i32 %0, 4
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
  %cmp.i = icmp sle i32 %1, 4
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
  %a.addr.i.i144 = alloca i8*, align 8
  %f.addr.i.i145 = alloca i8 (i8)*, align 8
  %result.i.i146 = alloca i8, align 1
  %i.i.i147 = alloca i32, align 4
  %a.addr.i148 = alloca i8*, align 8
  %a.addr.i.i127 = alloca i8*, align 8
  %f.addr.i.i128 = alloca i8 (i8)*, align 8
  %result.i.i129 = alloca i8, align 1
  %i.i.i130 = alloca i32, align 4
  %a.addr.i131 = alloca i8*, align 8
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
  %r = alloca [5 x [5 x i8]], align 16
  %u = alloca [5 x [5 x i8]], align 16
  %v = alloca [5 x [5 x i8]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j35 = alloca i32, align 4
  %i75 = alloca i32, align 4
  %j87 = alloca i32, align 4
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
  %cmp.i.i = icmp sle i32 %3, 4
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
  store i8* %12, i8** %a.addr.i131, align 8
  %13 = load i8*, i8** %a.addr.i131, align 8
  store i8* %13, i8** %a.addr.i.i127, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i128, align 8
  store i8 0, i8* %result.i.i129, align 1
  store i32 0, i32* %i.i.i130, align 4
  br label %for.cond.i.i133

for.cond.i.i133:                                  ; preds = %for.body.i.i142, %xors.exit
  %14 = load i32, i32* %i.i.i130, align 4
  %cmp.i.i132 = icmp sle i32 %14, 4
  br i1 %cmp.i.i132, label %for.body.i.i142, label %xors.exit143

for.body.i.i142:                                  ; preds = %for.cond.i.i133
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i128, align 8
  %16 = load i8*, i8** %a.addr.i.i127, align 8
  %17 = load i32, i32* %i.i.i130, align 4
  %idxprom.i.i134 = sext i32 %17 to i64
  %arrayidx.i.i135 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i134
  %18 = load i8, i8* %arrayidx.i.i135, align 1
  %call.i.i136 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i137 = zext i8 %call.i.i136 to i32
  %19 = load i8, i8* %result.i.i129, align 1
  %conv1.i.i138 = zext i8 %19 to i32
  %xor.i.i139 = xor i32 %conv1.i.i138, %conv.i.i137
  %conv2.i.i140 = trunc i32 %xor.i.i139 to i8
  store i8 %conv2.i.i140, i8* %result.i.i129, align 1
  %20 = load i32, i32* %i.i.i130, align 4
  %inc.i.i141 = add nsw i32 %20, 1
  store i32 %inc.i.i141, i32* %i.i.i130, align 4
  br label %for.cond.i.i133

xors.exit143:                                     ; preds = %for.cond.i.i133
  %21 = load i8, i8* %result.i.i129, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %xors.exit143
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 4
  br i1 %cmp10, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %24, 4
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 %idxprom
  %26 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx, i64 0, i64 %idxprom17
  store i8 %call16, i8* %arrayidx18, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 %idxprom19
  %28 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx20, i64 0, i64 %idxprom21
  %29 = load i8, i8* %arrayidx22, align 1
  %30 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 %idxprom23
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx24, i64 0, i64 %idxprom25
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

for.cond31:                                       ; preds = %for.inc72, %for.end29
  %34 = load i32, i32* %i30, align 4
  %cmp32 = icmp sle i32 %34, 4
  br i1 %cmp32, label %for.body34, label %for.end74

for.body34:                                       ; preds = %for.cond31
  store i32 0, i32* %j35, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc69, %for.body34
  %35 = load i32, i32* %j35, align 4
  %cmp37 = icmp sle i32 %35, 4
  br i1 %cmp37, label %for.body39, label %for.end71

for.body39:                                       ; preds = %for.cond36
  %36 = load i32, i32* %j35, align 4
  %37 = load i32, i32* %i30, align 4
  %cmp40 = icmp ne i32 %36, %37
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.body39
  %38 = load i8*, i8** %a.addr, align 8
  %39 = load i32, i32* %i30, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %38, i64 %idxprom42
  %40 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %40 to i32
  %xor = xor i32 %conv44, 1
  %conv45 = trunc i32 %xor to i8
  %41 = load i32, i32* %i30, align 4
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 %idxprom46
  %42 = load i32, i32* %j35, align 4
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx47, i64 0, i64 %idxprom48
  %43 = load i8, i8* %arrayidx49, align 1
  %call50 = call zeroext i8 @mult(i8 zeroext %conv45, i8 zeroext %43)
  %44 = load i32, i32* %i30, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 %idxprom51
  %45 = load i32, i32* %j35, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx52, i64 0, i64 %idxprom53
  store i8 %call50, i8* %arrayidx54, align 1
  %46 = load i8*, i8** %b.addr, align 8
  %47 = load i32, i32* %j35, align 4
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %46, i64 %idxprom55
  %48 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %48 to i32
  %49 = load i32, i32* %i30, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 %idxprom58
  %50 = load i32, i32* %j35, align 4
  %idxprom60 = sext i32 %50 to i64
  %arrayidx61 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx59, i64 0, i64 %idxprom60
  %51 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %51 to i32
  %xor63 = xor i32 %conv57, %conv62
  %conv64 = trunc i32 %xor63 to i8
  %52 = load i32, i32* %i30, align 4
  %idxprom65 = sext i32 %52 to i64
  %arrayidx66 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 %idxprom65
  %53 = load i32, i32* %j35, align 4
  %idxprom67 = sext i32 %53 to i64
  %arrayidx68 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx66, i64 0, i64 %idxprom67
  store i8 %conv64, i8* %arrayidx68, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body39
  br label %for.inc69

for.inc69:                                        ; preds = %if.end
  %54 = load i32, i32* %j35, align 4
  %inc70 = add nsw i32 %54, 1
  store i32 %inc70, i32* %j35, align 4
  br label %for.cond36

for.end71:                                        ; preds = %for.cond36
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %55 = load i32, i32* %i30, align 4
  %inc73 = add nsw i32 %55, 1
  store i32 %inc73, i32* %i30, align 4
  br label %for.cond31

for.end74:                                        ; preds = %for.cond31
  store i32 0, i32* %i75, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc118, %for.end74
  %56 = load i32, i32* %i75, align 4
  %cmp77 = icmp sle i32 %56, 4
  br i1 %cmp77, label %for.body79, label %for.end120

for.body79:                                       ; preds = %for.cond76
  %57 = load i8*, i8** %a.addr, align 8
  %58 = load i32, i32* %i75, align 4
  %idxprom80 = sext i32 %58 to i64
  %arrayidx81 = getelementptr inbounds i8, i8* %57, i64 %idxprom80
  %59 = load i8, i8* %arrayidx81, align 1
  %60 = load i8*, i8** %b.addr, align 8
  %61 = load i32, i32* %i75, align 4
  %idxprom82 = sext i32 %61 to i64
  %arrayidx83 = getelementptr inbounds i8, i8* %60, i64 %idxprom82
  %62 = load i8, i8* %arrayidx83, align 1
  %call84 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %62)
  %63 = load i8*, i8** %c.addr, align 8
  %64 = load i32, i32* %i75, align 4
  %idxprom85 = sext i32 %64 to i64
  %arrayidx86 = getelementptr inbounds i8, i8* %63, i64 %idxprom85
  store i8 %call84, i8* %arrayidx86, align 1
  store i32 0, i32* %j87, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc115, %for.body79
  %65 = load i32, i32* %j87, align 4
  %cmp89 = icmp sle i32 %65, 4
  br i1 %cmp89, label %for.body91, label %for.end117

for.body91:                                       ; preds = %for.cond88
  %66 = load i32, i32* %i75, align 4
  %67 = load i32, i32* %j87, align 4
  %cmp92 = icmp ne i32 %66, %67
  br i1 %cmp92, label %if.then94, label %if.end114

if.then94:                                        ; preds = %for.body91
  %68 = load i32, i32* %i75, align 4
  %idxprom95 = sext i32 %68 to i64
  %arrayidx96 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %u, i64 0, i64 %idxprom95
  %69 = load i32, i32* %j87, align 4
  %idxprom97 = sext i32 %69 to i64
  %arrayidx98 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx96, i64 0, i64 %idxprom97
  %70 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %70 to i32
  %71 = load i8*, i8** %a.addr, align 8
  %72 = load i32, i32* %i75, align 4
  %idxprom100 = sext i32 %72 to i64
  %arrayidx101 = getelementptr inbounds i8, i8* %71, i64 %idxprom100
  %73 = load i8, i8* %arrayidx101, align 1
  %74 = load i32, i32* %i75, align 4
  %idxprom102 = sext i32 %74 to i64
  %arrayidx103 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %v, i64 0, i64 %idxprom102
  %75 = load i32, i32* %j87, align 4
  %idxprom104 = sext i32 %75 to i64
  %arrayidx105 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx103, i64 0, i64 %idxprom104
  %76 = load i8, i8* %arrayidx105, align 1
  %call106 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %76)
  %conv107 = zext i8 %call106 to i32
  %xor108 = xor i32 %conv99, %conv107
  %77 = load i8*, i8** %c.addr, align 8
  %78 = load i32, i32* %i75, align 4
  %idxprom109 = sext i32 %78 to i64
  %arrayidx110 = getelementptr inbounds i8, i8* %77, i64 %idxprom109
  %79 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %79 to i32
  %xor112 = xor i32 %conv111, %xor108
  %conv113 = trunc i32 %xor112 to i8
  store i8 %conv113, i8* %arrayidx110, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then94, %for.body91
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %80 = load i32, i32* %j87, align 4
  %inc116 = add nsw i32 %80, 1
  store i32 %inc116, i32* %j87, align 4
  br label %for.cond88

for.end117:                                       ; preds = %for.cond88
  br label %for.inc118

for.inc118:                                       ; preds = %for.end117
  %81 = load i32, i32* %i75, align 4
  %inc119 = add nsw i32 %81, 1
  store i32 %inc119, i32* %i75, align 4
  br label %for.cond76

for.end120:                                       ; preds = %for.cond76
  %82 = load i8, i8* %A, align 1
  %83 = load i8, i8* %B, align 1
  %call121 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83)
  %conv122 = zext i8 %call121 to i32
  %84 = load i8*, i8** %c.addr, align 8
  store i8* %84, i8** %a.addr.i148, align 8
  %85 = load i8*, i8** %a.addr.i148, align 8
  store i8* %85, i8** %a.addr.i.i144, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i145, align 8
  store i8 0, i8* %result.i.i146, align 1
  store i32 0, i32* %i.i.i147, align 4
  br label %for.cond.i.i150

for.cond.i.i150:                                  ; preds = %for.body.i.i159, %for.end120
  %86 = load i32, i32* %i.i.i147, align 4
  %cmp.i.i149 = icmp sle i32 %86, 4
  br i1 %cmp.i.i149, label %for.body.i.i159, label %xors.exit160

for.body.i.i159:                                  ; preds = %for.cond.i.i150
  %87 = load i8 (i8)*, i8 (i8)** %f.addr.i.i145, align 8
  %88 = load i8*, i8** %a.addr.i.i144, align 8
  %89 = load i32, i32* %i.i.i147, align 4
  %idxprom.i.i151 = sext i32 %89 to i64
  %arrayidx.i.i152 = getelementptr inbounds i8, i8* %88, i64 %idxprom.i.i151
  %90 = load i8, i8* %arrayidx.i.i152, align 1
  %call.i.i153 = call zeroext i8 %87(i8 zeroext %90) #2
  %conv.i.i154 = zext i8 %call.i.i153 to i32
  %91 = load i8, i8* %result.i.i146, align 1
  %conv1.i.i155 = zext i8 %91 to i32
  %xor.i.i156 = xor i32 %conv1.i.i155, %conv.i.i154
  %conv2.i.i157 = trunc i32 %xor.i.i156 to i8
  store i8 %conv2.i.i157, i8* %result.i.i146, align 1
  %92 = load i32, i32* %i.i.i147, align 4
  %inc.i.i158 = add nsw i32 %92, 1
  store i32 %inc.i.i158, i32* %i.i.i147, align 4
  br label %for.cond.i.i150

xors.exit160:                                     ; preds = %for.cond.i.i150
  %93 = load i8, i8* %result.i.i146, align 1
  %conv124 = zext i8 %93 to i32
  %cmp125 = icmp eq i32 %conv122, %conv124
  call void @assert(i1 zeroext %cmp125)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
