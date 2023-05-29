; ModuleID = '../examples/dom-mult.c'
source_filename = "../examples/dom-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"../examples/dom-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %a.addr.i.i113 = alloca i8*, align 8
  %f.addr.i.i114 = alloca i8 (i8)*, align 8
  %result.i.i115 = alloca i8, align 1
  %i.i.i116 = alloca i32, align 4
  %a.addr.i117 = alloca i8*, align 8
  %a.addr.i.i96 = alloca i8*, align 8
  %f.addr.i.i97 = alloca i8 (i8)*, align 8
  %result.i.i98 = alloca i8, align 1
  %i.i.i99 = alloca i32, align 4
  %a.addr.i100 = alloca i8*, align 8
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
  %u = alloca [1 x [1 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i55 = alloca i32, align 4
  %j67 = alloca i32, align 4
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
  store i8* %12, i8** %a.addr.i100, align 8
  %13 = load i8*, i8** %a.addr.i100, align 8
  store i8* %13, i8** %a.addr.i.i96, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i97, align 8
  store i8 0, i8* %result.i.i98, align 1
  store i32 0, i32* %i.i.i99, align 4
  br label %for.cond.i.i102

for.cond.i.i102:                                  ; preds = %for.body.i.i111, %xors.exit
  %14 = load i32, i32* %i.i.i99, align 4
  %cmp.i.i101 = icmp sle i32 %14, 0
  br i1 %cmp.i.i101, label %for.body.i.i111, label %xors.exit112

for.body.i.i111:                                  ; preds = %for.cond.i.i102
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i97, align 8
  %16 = load i8*, i8** %a.addr.i.i96, align 8
  %17 = load i32, i32* %i.i.i99, align 4
  %idxprom.i.i103 = sext i32 %17 to i64
  %arrayidx.i.i104 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i103
  %18 = load i8, i8* %arrayidx.i.i104, align 1
  %call.i.i105 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i106 = zext i8 %call.i.i105 to i32
  %19 = load i8, i8* %result.i.i98, align 1
  %conv1.i.i107 = zext i8 %19 to i32
  %xor.i.i108 = xor i32 %conv1.i.i107, %conv.i.i106
  %conv2.i.i109 = trunc i32 %xor.i.i108 to i8
  store i8 %conv2.i.i109, i8* %result.i.i98, align 1
  %20 = load i32, i32* %i.i.i99, align 4
  %inc.i.i110 = add nsw i32 %20, 1
  store i32 %inc.i.i110, i32* %i.i.i99, align 4
  br label %for.cond.i.i102

xors.exit112:                                     ; preds = %for.cond.i.i102
  %21 = load i8, i8* %result.i.i98, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %xors.exit112
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 0
  br i1 %cmp10, label %for.body, label %for.end54

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
  %27 = load i8*, i8** %a.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %27, i64 %idxprom19
  %29 = load i8, i8* %arrayidx20, align 1
  %30 = load i8*, i8** %b.addr, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 %idxprom21
  %32 = load i8, i8* %arrayidx22, align 1
  %call23 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %32)
  %conv24 = zext i8 %call23 to i32
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom25
  %34 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx26, i64 0, i64 %idxprom27
  %35 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %35 to i32
  %xor = xor i32 %conv24, %conv29
  %conv30 = trunc i32 %xor to i8
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u, i64 0, i64 %idxprom31
  %37 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx32, i64 0, i64 %idxprom33
  store i8 %conv30, i8* %arrayidx34, align 1
  %38 = load i8*, i8** %a.addr, align 8
  %39 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %38, i64 %idxprom35
  %40 = load i8, i8* %arrayidx36, align 1
  %41 = load i8*, i8** %b.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %41, i64 %idxprom37
  %43 = load i8, i8* %arrayidx38, align 1
  %call39 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %43)
  %conv40 = zext i8 %call39 to i32
  %44 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom41
  %45 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx42, i64 0, i64 %idxprom43
  %46 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %46 to i32
  %xor46 = xor i32 %conv40, %conv45
  %conv47 = trunc i32 %xor46 to i8
  %47 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %47 to i64
  %arrayidx49 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u, i64 0, i64 %idxprom48
  %48 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx49, i64 0, i64 %idxprom50
  store i8 %conv47, i8* %arrayidx51, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond12

for.end:                                          ; preds = %for.cond12
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %50, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond

for.end54:                                        ; preds = %for.cond
  store i32 0, i32* %i55, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc87, %for.end54
  %51 = load i32, i32* %i55, align 4
  %cmp57 = icmp sle i32 %51, 0
  br i1 %cmp57, label %for.body59, label %for.end89

for.body59:                                       ; preds = %for.cond56
  %52 = load i8*, i8** %a.addr, align 8
  %53 = load i32, i32* %i55, align 4
  %idxprom60 = sext i32 %53 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %52, i64 %idxprom60
  %54 = load i8, i8* %arrayidx61, align 1
  %55 = load i8*, i8** %b.addr, align 8
  %56 = load i32, i32* %i55, align 4
  %idxprom62 = sext i32 %56 to i64
  %arrayidx63 = getelementptr inbounds i8, i8* %55, i64 %idxprom62
  %57 = load i8, i8* %arrayidx63, align 1
  %call64 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %57)
  %58 = load i8*, i8** %c.addr, align 8
  %59 = load i32, i32* %i55, align 4
  %idxprom65 = sext i32 %59 to i64
  %arrayidx66 = getelementptr inbounds i8, i8* %58, i64 %idxprom65
  store i8 %call64, i8* %arrayidx66, align 1
  store i32 0, i32* %j67, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc84, %for.body59
  %60 = load i32, i32* %j67, align 4
  %cmp69 = icmp sle i32 %60, 0
  br i1 %cmp69, label %for.body71, label %for.end86

for.body71:                                       ; preds = %for.cond68
  %61 = load i32, i32* %j67, align 4
  %62 = load i32, i32* %i55, align 4
  %cmp72 = icmp ne i32 %61, %62
  br i1 %cmp72, label %if.then, label %if.end

if.then:                                          ; preds = %for.body71
  %63 = load i32, i32* %i55, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u, i64 0, i64 %idxprom74
  %64 = load i32, i32* %j67, align 4
  %idxprom76 = sext i32 %64 to i64
  %arrayidx77 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx75, i64 0, i64 %idxprom76
  %65 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %65 to i32
  %66 = load i8*, i8** %c.addr, align 8
  %67 = load i32, i32* %i55, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds i8, i8* %66, i64 %idxprom79
  %68 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %68 to i32
  %xor82 = xor i32 %conv81, %conv78
  %conv83 = trunc i32 %xor82 to i8
  store i8 %conv83, i8* %arrayidx80, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body71
  br label %for.inc84

for.inc84:                                        ; preds = %if.end
  %69 = load i32, i32* %j67, align 4
  %inc85 = add nsw i32 %69, 1
  store i32 %inc85, i32* %j67, align 4
  br label %for.cond68

for.end86:                                        ; preds = %for.cond68
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %70 = load i32, i32* %i55, align 4
  %inc88 = add nsw i32 %70, 1
  store i32 %inc88, i32* %i55, align 4
  br label %for.cond56

for.end89:                                        ; preds = %for.cond56
  %71 = load i8, i8* %A, align 1
  %72 = load i8, i8* %B, align 1
  %call90 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72)
  %conv91 = zext i8 %call90 to i32
  %73 = load i8*, i8** %c.addr, align 8
  store i8* %73, i8** %a.addr.i117, align 8
  %74 = load i8*, i8** %a.addr.i117, align 8
  store i8* %74, i8** %a.addr.i.i113, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i114, align 8
  store i8 0, i8* %result.i.i115, align 1
  store i32 0, i32* %i.i.i116, align 4
  br label %for.cond.i.i119

for.cond.i.i119:                                  ; preds = %for.body.i.i128, %for.end89
  %75 = load i32, i32* %i.i.i116, align 4
  %cmp.i.i118 = icmp sle i32 %75, 0
  br i1 %cmp.i.i118, label %for.body.i.i128, label %xors.exit129

for.body.i.i128:                                  ; preds = %for.cond.i.i119
  %76 = load i8 (i8)*, i8 (i8)** %f.addr.i.i114, align 8
  %77 = load i8*, i8** %a.addr.i.i113, align 8
  %78 = load i32, i32* %i.i.i116, align 4
  %idxprom.i.i120 = sext i32 %78 to i64
  %arrayidx.i.i121 = getelementptr inbounds i8, i8* %77, i64 %idxprom.i.i120
  %79 = load i8, i8* %arrayidx.i.i121, align 1
  %call.i.i122 = call zeroext i8 %76(i8 zeroext %79) #2
  %conv.i.i123 = zext i8 %call.i.i122 to i32
  %80 = load i8, i8* %result.i.i115, align 1
  %conv1.i.i124 = zext i8 %80 to i32
  %xor.i.i125 = xor i32 %conv1.i.i124, %conv.i.i123
  %conv2.i.i126 = trunc i32 %xor.i.i125 to i8
  store i8 %conv2.i.i126, i8* %result.i.i115, align 1
  %81 = load i32, i32* %i.i.i116, align 4
  %inc.i.i127 = add nsw i32 %81, 1
  store i32 %inc.i.i127, i32* %i.i.i116, align 4
  br label %for.cond.i.i119

xors.exit129:                                     ; preds = %for.cond.i.i119
  %82 = load i8, i8* %result.i.i115, align 1
  %conv93 = zext i8 %82 to i32
  %cmp94 = icmp eq i32 %conv91, %conv93
  call void @assert(i1 zeroext %cmp94)
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
