; ModuleID = '../examples/rivain-ches2010-mult.c'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [35 x i8] c"../examples/rivain-ches2010-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 29 }], section "llvm.metadata"

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
  %call.i.i95 = call zeroext i8 %15(i8 zeroext %18) #2
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
  %call.i.i112 = call zeroext i8 %71(i8 zeroext %74) #2
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
  %call.i.i30 = call zeroext i8 %24(i8 zeroext %27) #2
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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
