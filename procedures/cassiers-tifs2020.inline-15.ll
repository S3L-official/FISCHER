; ModuleID = '../examples/cassiers-tifs2020.c'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 15, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [32 x i8] c"../examples/cassiers-tifs2020.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 15
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
  %cmp = icmp sle i32 %0, 15
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
  %cmp.i = icmp sle i32 %1, 15
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
  %r = alloca [16 x [16 x i8]], align 16
  %s = alloca [16 x [16 x i8]], align 16
  %p0 = alloca [16 x [16 x i8]], align 16
  %p1 = alloca [16 x [16 x i8]], align 16
  %z = alloca [16 x [16 x i8]], align 16
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
  %cmp.i.i = icmp sle i32 %3, 15
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
  store i32 0, i32* %i.i.i148, align 4
  br label %for.cond.i.i151

for.cond.i.i151:                                  ; preds = %for.body.i.i160, %xors.exit
  %14 = load i32, i32* %i.i.i148, align 4
  %cmp.i.i150 = icmp sle i32 %14, 15
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
  %cmp10 = icmp sle i32 %22, 15
  br i1 %cmp10, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %24, 15
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom
  %26 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i64 0, i64 %idxprom17
  store i8 %call16, i8* %arrayidx18, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom19
  %28 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx20, i64 0, i64 %idxprom21
  %29 = load i8, i8* %arrayidx22, align 1
  %30 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom23
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx24, i64 0, i64 %idxprom25
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
  %cmp32 = icmp sle i32 %34, 15
  br i1 %cmp32, label %for.body34, label %for.end101

for.body34:                                       ; preds = %for.cond31
  store i32 0, i32* %j35, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc96, %for.body34
  %35 = load i32, i32* %j35, align 4
  %cmp37 = icmp sle i32 %35, 15
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
  %arrayidx46 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom45
  %42 = load i32, i32* %j35, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx46, i64 0, i64 %idxprom47
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %xor = xor i32 %conv44, %conv49
  %conv50 = trunc i32 %xor to i8
  %44 = load i32, i32* %i30, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 %idxprom51
  %45 = load i32, i32* %j35, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx52, i64 0, i64 %idxprom53
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
  %arrayidx61 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom60
  %50 = load i32, i32* %j35, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx61, i64 0, i64 %idxprom62
  %51 = load i8, i8* %arrayidx63, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %conv59, i8 zeroext %51)
  %52 = load i32, i32* %i30, align 4
  %idxprom65 = sext i32 %52 to i64
  %arrayidx66 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 %idxprom65
  %53 = load i32, i32* %j35, align 4
  %idxprom67 = sext i32 %53 to i64
  %arrayidx68 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx66, i64 0, i64 %idxprom67
  store i8 %call64, i8* %arrayidx68, align 1
  %54 = load i8*, i8** %a.addr, align 8
  %55 = load i32, i32* %i30, align 4
  %idxprom69 = sext i32 %55 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %54, i64 %idxprom69
  %56 = load i8, i8* %arrayidx70, align 1
  %57 = load i32, i32* %i30, align 4
  %idxprom71 = sext i32 %57 to i64
  %arrayidx72 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %s, i64 0, i64 %idxprom71
  %58 = load i32, i32* %j35, align 4
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx72, i64 0, i64 %idxprom73
  %59 = load i8, i8* %arrayidx74, align 1
  %call75 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %59)
  %60 = load i32, i32* %i30, align 4
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 %idxprom76
  %61 = load i32, i32* %j35, align 4
  %idxprom78 = sext i32 %61 to i64
  %arrayidx79 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx77, i64 0, i64 %idxprom78
  store i8 %call75, i8* %arrayidx79, align 1
  %62 = load i32, i32* %i30, align 4
  %idxprom80 = sext i32 %62 to i64
  %arrayidx81 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %p0, i64 0, i64 %idxprom80
  %63 = load i32, i32* %j35, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx81, i64 0, i64 %idxprom82
  %64 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %65 = load i32, i32* %i30, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %p1, i64 0, i64 %idxprom85
  %66 = load i32, i32* %j35, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx86, i64 0, i64 %idxprom87
  %67 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %67 to i32
  %xor90 = xor i32 %conv84, %conv89
  %conv91 = trunc i32 %xor90 to i8
  %68 = load i32, i32* %i30, align 4
  %idxprom92 = sext i32 %68 to i64
  %arrayidx93 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 %idxprom92
  %69 = load i32, i32* %j35, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx93, i64 0, i64 %idxprom94
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
  %cmp104 = icmp sle i32 %72, 15
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
  %cmp116 = icmp sle i32 %81, 15
  br i1 %cmp116, label %for.body118, label %for.end135

for.body118:                                      ; preds = %for.cond115
  %82 = load i32, i32* %j114, align 4
  %83 = load i32, i32* %i102, align 4
  %cmp119 = icmp ne i32 %82, %83
  br i1 %cmp119, label %if.then121, label %if.end132

if.then121:                                       ; preds = %for.body118
  %84 = load i32, i32* %i102, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %z, i64 0, i64 %idxprom122
  %85 = load i32, i32* %j114, align 4
  %idxprom124 = sext i32 %85 to i64
  %arrayidx125 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx123, i64 0, i64 %idxprom124
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
  %cmp.i.i167 = icmp sle i32 %96, 15
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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
