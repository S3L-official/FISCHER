; ModuleID = '../examples/hpc1-mult.c'
source_filename = "../examples/hpc1-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"../examples/hpc1-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult_dom to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 23 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 39 }], section "llvm.metadata"

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
define dso_local void @sec_mult_dom(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %c.addr = alloca i8*, align 8
  %r = alloca [1 x [1 x i8]], align 1
  %u = alloca [1 x [1 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i41 = alloca i32, align 4
  %j53 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp sle i32 %2, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call zeroext i8 (...) @rand()
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx, i64 0, i64 %idxprom4
  store i8 %call, i8* %arrayidx5, align 1
  %5 = load i8*, i8** %a.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %8 = load i8*, i8** %b.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %call10 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %10)
  %conv = zext i8 %call10 to i32
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom11
  %12 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx12, i64 0, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u, i64 0, i64 %idxprom17
  %15 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx18, i64 0, i64 %idxprom19
  store i8 %conv16, i8* %arrayidx20, align 1
  %16 = load i8*, i8** %a.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  %18 = load i8, i8* %arrayidx22, align 1
  %19 = load i8*, i8** %b.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 %idxprom23
  %21 = load i8, i8* %arrayidx24, align 1
  %call25 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %21)
  %conv26 = zext i8 %call25 to i32
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom27
  %23 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx28, i64 0, i64 %idxprom29
  %24 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %24 to i32
  %xor32 = xor i32 %conv26, %conv31
  %conv33 = trunc i32 %xor32 to i8
  %25 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u, i64 0, i64 %idxprom34
  %26 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx35, i64 0, i64 %idxprom36
  store i8 %conv33, i8* %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end40:                                        ; preds = %for.cond
  store i32 0, i32* %i41, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc73, %for.end40
  %29 = load i32, i32* %i41, align 4
  %cmp43 = icmp sle i32 %29, 0
  br i1 %cmp43, label %for.body45, label %for.end75

for.body45:                                       ; preds = %for.cond42
  %30 = load i8*, i8** %a.addr, align 8
  %31 = load i32, i32* %i41, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %30, i64 %idxprom46
  %32 = load i8, i8* %arrayidx47, align 1
  %33 = load i8*, i8** %b.addr, align 8
  %34 = load i32, i32* %i41, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %33, i64 %idxprom48
  %35 = load i8, i8* %arrayidx49, align 1
  %call50 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %35)
  %36 = load i8*, i8** %c.addr, align 8
  %37 = load i32, i32* %i41, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds i8, i8* %36, i64 %idxprom51
  store i8 %call50, i8* %arrayidx52, align 1
  store i32 0, i32* %j53, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc70, %for.body45
  %38 = load i32, i32* %j53, align 4
  %cmp55 = icmp sle i32 %38, 0
  br i1 %cmp55, label %for.body57, label %for.end72

for.body57:                                       ; preds = %for.cond54
  %39 = load i32, i32* %j53, align 4
  %40 = load i32, i32* %i41, align 4
  %cmp58 = icmp ne i32 %39, %40
  br i1 %cmp58, label %if.then, label %if.end

if.then:                                          ; preds = %for.body57
  %41 = load i32, i32* %i41, align 4
  %idxprom60 = sext i32 %41 to i64
  %arrayidx61 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u, i64 0, i64 %idxprom60
  %42 = load i32, i32* %j53, align 4
  %idxprom62 = sext i32 %42 to i64
  %arrayidx63 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61, i64 0, i64 %idxprom62
  %43 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %43 to i32
  %44 = load i8*, i8** %c.addr, align 8
  %45 = load i32, i32* %i41, align 4
  %idxprom65 = sext i32 %45 to i64
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %46 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %46 to i32
  %xor68 = xor i32 %conv67, %conv64
  %conv69 = trunc i32 %xor68 to i8
  store i8 %conv69, i8* %arrayidx66, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body57
  br label %for.inc70

for.inc70:                                        ; preds = %if.end
  %47 = load i32, i32* %j53, align 4
  %inc71 = add nsw i32 %47, 1
  store i32 %inc71, i32* %j53, align 4
  br label %for.cond54

for.end72:                                        ; preds = %for.cond54
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %48 = load i32, i32* %i41, align 4
  %inc74 = add nsw i32 %48, 1
  store i32 %inc74, i32* %i41, align 4
  br label %for.cond42

for.end75:                                        ; preds = %for.cond42
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %a.addr.i.i32 = alloca i8*, align 8
  %f.addr.i.i33 = alloca i8 (i8)*, align 8
  %result.i.i34 = alloca i8, align 1
  %i.i.i35 = alloca i32, align 4
  %a.addr.i36 = alloca i8*, align 8
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %X = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
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
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %xors.exit
  %11 = load i8, i8* %i, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp sle i32 %conv4, 0
  br i1 %cmp5, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %12 = load i8, i8* %i, align 1
  %conv7 = zext i8 %12 to i32
  %add = add nsw i32 %conv7, 1
  %conv8 = trunc i32 %add to i8
  store i8 %conv8, i8* %j, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %13 = load i8, i8* %j, align 1
  %conv10 = zext i8 %13 to i32
  %cmp11 = icmp sle i32 %conv10, 0
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %call14 = call zeroext i8 (...) @rand()
  store i8 %call14, i8* %tmp, align 1
  %14 = load i8, i8* %tmp, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i8*, i8** %x.addr, align 8
  %16 = load i8, i8* %i, align 1
  %idxprom = zext i8 %16 to i64
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %17 to i32
  %xor = xor i32 %conv16, %conv15
  %conv17 = trunc i32 %xor to i8
  store i8 %conv17, i8* %arrayidx, align 1
  %18 = load i8, i8* %tmp, align 1
  %conv18 = zext i8 %18 to i32
  %19 = load i8*, i8** %x.addr, align 8
  %20 = load i8, i8* %j, align 1
  %idxprom19 = zext i8 %20 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %idxprom19
  %21 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %xor22 = xor i32 %conv21, %conv18
  %conv23 = trunc i32 %xor22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %22 = load i8, i8* %j, align 1
  %inc = add i8 %22, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %23 = load i8, i8* %i, align 1
  %inc25 = add i8 %23, 1
  store i8 %inc25, i8* %i, align 1
  br label %for.cond

for.end26:                                        ; preds = %for.cond
  %24 = load i8, i8* %X, align 1
  %conv27 = zext i8 %24 to i32
  %25 = load i8*, i8** %x.addr, align 8
  store i8* %25, i8** %a.addr.i36, align 8
  %26 = load i8*, i8** %a.addr.i36, align 8
  store i8* %26, i8** %a.addr.i.i32, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i33, align 8
  store i8 0, i8* %result.i.i34, align 1
  store i32 0, i32* %i.i.i35, align 4
  br label %for.cond.i.i38

for.cond.i.i38:                                   ; preds = %for.body.i.i47, %for.end26
  %27 = load i32, i32* %i.i.i35, align 4
  %cmp.i.i37 = icmp sle i32 %27, 0
  br i1 %cmp.i.i37, label %for.body.i.i47, label %xors.exit48

for.body.i.i47:                                   ; preds = %for.cond.i.i38
  %28 = load i8 (i8)*, i8 (i8)** %f.addr.i.i33, align 8
  %29 = load i8*, i8** %a.addr.i.i32, align 8
  %30 = load i32, i32* %i.i.i35, align 4
  %idxprom.i.i39 = sext i32 %30 to i64
  %arrayidx.i.i40 = getelementptr inbounds i8, i8* %29, i64 %idxprom.i.i39
  %31 = load i8, i8* %arrayidx.i.i40, align 1
  %call.i.i41 = call zeroext i8 %28(i8 zeroext %31) #2
  %conv.i.i42 = zext i8 %call.i.i41 to i32
  %32 = load i8, i8* %result.i.i34, align 1
  %conv1.i.i43 = zext i8 %32 to i32
  %xor.i.i44 = xor i32 %conv1.i.i43, %conv.i.i42
  %conv2.i.i45 = trunc i32 %xor.i.i44 to i8
  store i8 %conv2.i.i45, i8* %result.i.i34, align 1
  %33 = load i32, i32* %i.i.i35, align 4
  %inc.i.i46 = add nsw i32 %33, 1
  store i32 %inc.i.i46, i32* %i.i.i35, align 4
  br label %for.cond.i.i38

xors.exit48:                                      ; preds = %for.cond.i.i38
  %34 = load i8, i8* %result.i.i34, align 1
  %conv29 = zext i8 %34 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  call void @assert(i1 zeroext %cmp30)
  ret void
}

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %a.addr.i.i61 = alloca i8*, align 8
  %f.addr.i.i62 = alloca i8 (i8)*, align 8
  %result.i.i63 = alloca i8, align 1
  %i.i.i64 = alloca i32, align 4
  %a.addr.i65 = alloca i8*, align 8
  %a.addr.i43 = alloca i8*, align 8
  %b.addr.i = alloca i8*, align 8
  %c.addr.i = alloca i8*, align 8
  %r.i = alloca [1 x [1 x i8]], align 1
  %u.i = alloca [1 x [1 x i8]], align 1
  %i.i44 = alloca i32, align 4
  %j.i45 = alloca i32, align 4
  %i41.i = alloca i32, align 4
  %j53.i = alloca i32, align 4
  %a.addr.i.i32.i = alloca i8*, align 8
  %f.addr.i.i33.i = alloca i8 (i8)*, align 8
  %result.i.i34.i = alloca i8, align 1
  %i.i.i35.i = alloca i32, align 4
  %a.addr.i36.i = alloca i8*, align 8
  %a.addr.i.i.i = alloca i8*, align 8
  %f.addr.i.i.i = alloca i8 (i8)*, align 8
  %result.i.i.i = alloca i8, align 1
  %i.i.i.i = alloca i32, align 4
  %a.addr.i.i34 = alloca i8*, align 8
  %x.addr.i = alloca i8*, align 8
  %X.i = alloca i8, align 1
  %i.i35 = alloca i8, align 1
  %j.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %from.addr.i = alloca i8*, align 8
  %to.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i17 = alloca i8*, align 8
  %f.addr.i.i18 = alloca i8 (i8)*, align 8
  %result.i.i19 = alloca i8, align 1
  %i.i.i20 = alloca i32, align 4
  %a.addr.i21 = alloca i8*, align 8
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
  %br = alloca [1 x i8], align 1
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
  store i8* %12, i8** %a.addr.i21, align 8
  %13 = load i8*, i8** %a.addr.i21, align 8
  store i8* %13, i8** %a.addr.i.i17, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i18, align 8
  store i8 0, i8* %result.i.i19, align 1
  store i32 0, i32* %i.i.i20, align 4
  br label %for.cond.i.i23

for.cond.i.i23:                                   ; preds = %for.body.i.i32, %xors.exit
  %14 = load i32, i32* %i.i.i20, align 4
  %cmp.i.i22 = icmp sle i32 %14, 0
  br i1 %cmp.i.i22, label %for.body.i.i32, label %xors.exit33

for.body.i.i32:                                   ; preds = %for.cond.i.i23
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i18, align 8
  %16 = load i8*, i8** %a.addr.i.i17, align 8
  %17 = load i32, i32* %i.i.i20, align 4
  %idxprom.i.i24 = sext i32 %17 to i64
  %arrayidx.i.i25 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i24
  %18 = load i8, i8* %arrayidx.i.i25, align 1
  %call.i.i26 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i27 = zext i8 %call.i.i26 to i32
  %19 = load i8, i8* %result.i.i19, align 1
  %conv1.i.i28 = zext i8 %19 to i32
  %xor.i.i29 = xor i32 %conv1.i.i28, %conv.i.i27
  %conv2.i.i30 = trunc i32 %xor.i.i29 to i8
  store i8 %conv2.i.i30, i8* %result.i.i19, align 1
  %20 = load i32, i32* %i.i.i20, align 4
  %inc.i.i31 = add nsw i32 %20, 1
  store i32 %inc.i.i31, i32* %i.i.i20, align 4
  br label %for.cond.i.i23

xors.exit33:                                      ; preds = %for.cond.i.i23
  %21 = load i8, i8* %result.i.i19, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %22 = load i8*, i8** %b.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %br, i64 0, i64 0
  store i8* %22, i8** %from.addr.i, align 8
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %xors.exit33
  %23 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %23, 0
  br i1 %cmp.i, label %for.body.i, label %transform.exit

for.body.i:                                       ; preds = %for.cond.i
  %24 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %25 = load i8*, i8** %from.addr.i, align 8
  %26 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %26 to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %25, i64 %idxprom.i
  %27 = load i8, i8* %arrayidx.i, align 1
  %call.i = call zeroext i8 %24(i8 zeroext %27) #2
  %28 = load i8*, i8** %to.addr.i, align 8
  %29 = load i32, i32* %i.i, align 4
  %idxprom1.i = sext i32 %29 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %28, i64 %idxprom1.i
  store i8 %call.i, i8* %arrayidx2.i, align 1
  %30 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %30, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

transform.exit:                                   ; preds = %for.cond.i
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %br, i64 0, i64 0
  store i8* %arraydecay10, i8** %x.addr.i, align 8
  %call.i36 = call zeroext i8 (...) @rand() #2
  store i8 %call.i36, i8* %X.i, align 1
  %31 = load i8, i8* %X.i, align 1
  %conv.i = zext i8 %31 to i32
  %32 = load i8*, i8** %x.addr.i, align 8
  store i8* %32, i8** %a.addr.i.i34, align 8
  %33 = load i8*, i8** %a.addr.i.i34, align 8
  store i8* %33, i8** %a.addr.i.i.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i.i, align 8
  store i8 0, i8* %result.i.i.i, align 1
  store i32 0, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %transform.exit
  %34 = load i32, i32* %i.i.i.i, align 4
  %cmp.i.i.i = icmp sle i32 %34, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %xors.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %35 = load i8 (i8)*, i8 (i8)** %f.addr.i.i.i, align 8
  %36 = load i8*, i8** %a.addr.i.i.i, align 8
  %37 = load i32, i32* %i.i.i.i, align 4
  %idxprom.i.i.i = sext i32 %37 to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %36, i64 %idxprom.i.i.i
  %38 = load i8, i8* %arrayidx.i.i.i, align 1
  %call.i.i.i = call zeroext i8 %35(i8 zeroext %38) #2
  %conv.i.i.i = zext i8 %call.i.i.i to i32
  %39 = load i8, i8* %result.i.i.i, align 1
  %conv1.i.i.i = zext i8 %39 to i32
  %xor.i.i.i = xor i32 %conv1.i.i.i, %conv.i.i.i
  %conv2.i.i.i = trunc i32 %xor.i.i.i to i8
  store i8 %conv2.i.i.i, i8* %result.i.i.i, align 1
  %40 = load i32, i32* %i.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %40, 1
  store i32 %inc.i.i.i, i32* %i.i.i.i, align 4
  br label %for.cond.i.i.i

xors.exit.i:                                      ; preds = %for.cond.i.i.i
  %41 = load i8, i8* %result.i.i.i, align 1
  %conv2.i = zext i8 %41 to i32
  %cmp.i37 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i37) #2
  store i8 0, i8* %i.i35, align 1
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %for.end.i, %xors.exit.i
  %42 = load i8, i8* %i.i35, align 1
  %conv4.i = zext i8 %42 to i32
  %cmp5.i = icmp sle i32 %conv4.i, 0
  br i1 %cmp5.i, label %for.body.i39, label %for.end26.i

for.body.i39:                                     ; preds = %for.cond.i38
  %43 = load i8, i8* %i.i35, align 1
  %conv7.i = zext i8 %43 to i32
  %add.i = add nsw i32 %conv7.i, 1
  %conv8.i = trunc i32 %add.i to i8
  store i8 %conv8.i, i8* %j.i, align 1
  br label %for.cond9.i

for.cond9.i:                                      ; preds = %for.body13.i, %for.body.i39
  %44 = load i8, i8* %j.i, align 1
  %conv10.i = zext i8 %44 to i32
  %cmp11.i = icmp sle i32 %conv10.i, 0
  br i1 %cmp11.i, label %for.body13.i, label %for.end.i

for.body13.i:                                     ; preds = %for.cond9.i
  %call14.i = call zeroext i8 (...) @rand() #2
  store i8 %call14.i, i8* %tmp.i, align 1
  %45 = load i8, i8* %tmp.i, align 1
  %conv15.i = zext i8 %45 to i32
  %46 = load i8*, i8** %x.addr.i, align 8
  %47 = load i8, i8* %i.i35, align 1
  %idxprom.i40 = zext i8 %47 to i64
  %arrayidx.i41 = getelementptr inbounds i8, i8* %46, i64 %idxprom.i40
  %48 = load i8, i8* %arrayidx.i41, align 1
  %conv16.i = zext i8 %48 to i32
  %xor.i = xor i32 %conv16.i, %conv15.i
  %conv17.i = trunc i32 %xor.i to i8
  store i8 %conv17.i, i8* %arrayidx.i41, align 1
  %49 = load i8, i8* %tmp.i, align 1
  %conv18.i = zext i8 %49 to i32
  %50 = load i8*, i8** %x.addr.i, align 8
  %51 = load i8, i8* %j.i, align 1
  %idxprom19.i = zext i8 %51 to i64
  %arrayidx20.i = getelementptr inbounds i8, i8* %50, i64 %idxprom19.i
  %52 = load i8, i8* %arrayidx20.i, align 1
  %conv21.i = zext i8 %52 to i32
  %xor22.i = xor i32 %conv21.i, %conv18.i
  %conv23.i = trunc i32 %xor22.i to i8
  store i8 %conv23.i, i8* %arrayidx20.i, align 1
  %53 = load i8, i8* %j.i, align 1
  %inc.i42 = add i8 %53, 1
  store i8 %inc.i42, i8* %j.i, align 1
  br label %for.cond9.i

for.end.i:                                        ; preds = %for.cond9.i
  %54 = load i8, i8* %i.i35, align 1
  %inc25.i = add i8 %54, 1
  store i8 %inc25.i, i8* %i.i35, align 1
  br label %for.cond.i38

for.end26.i:                                      ; preds = %for.cond.i38
  %55 = load i8, i8* %X.i, align 1
  %conv27.i = zext i8 %55 to i32
  %56 = load i8*, i8** %x.addr.i, align 8
  store i8* %56, i8** %a.addr.i36.i, align 8
  %57 = load i8*, i8** %a.addr.i36.i, align 8
  store i8* %57, i8** %a.addr.i.i32.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i33.i, align 8
  store i8 0, i8* %result.i.i34.i, align 1
  store i32 0, i32* %i.i.i35.i, align 4
  br label %for.cond.i.i38.i

for.cond.i.i38.i:                                 ; preds = %for.body.i.i47.i, %for.end26.i
  %58 = load i32, i32* %i.i.i35.i, align 4
  %cmp.i.i37.i = icmp sle i32 %58, 0
  br i1 %cmp.i.i37.i, label %for.body.i.i47.i, label %refresh_masks.exit

for.body.i.i47.i:                                 ; preds = %for.cond.i.i38.i
  %59 = load i8 (i8)*, i8 (i8)** %f.addr.i.i33.i, align 8
  %60 = load i8*, i8** %a.addr.i.i32.i, align 8
  %61 = load i32, i32* %i.i.i35.i, align 4
  %idxprom.i.i39.i = sext i32 %61 to i64
  %arrayidx.i.i40.i = getelementptr inbounds i8, i8* %60, i64 %idxprom.i.i39.i
  %62 = load i8, i8* %arrayidx.i.i40.i, align 1
  %call.i.i41.i = call zeroext i8 %59(i8 zeroext %62) #2
  %conv.i.i42.i = zext i8 %call.i.i41.i to i32
  %63 = load i8, i8* %result.i.i34.i, align 1
  %conv1.i.i43.i = zext i8 %63 to i32
  %xor.i.i44.i = xor i32 %conv1.i.i43.i, %conv.i.i42.i
  %conv2.i.i45.i = trunc i32 %xor.i.i44.i to i8
  store i8 %conv2.i.i45.i, i8* %result.i.i34.i, align 1
  %64 = load i32, i32* %i.i.i35.i, align 4
  %inc.i.i46.i = add nsw i32 %64, 1
  store i32 %inc.i.i46.i, i32* %i.i.i35.i, align 4
  br label %for.cond.i.i38.i

refresh_masks.exit:                               ; preds = %for.cond.i.i38.i
  %65 = load i8, i8* %result.i.i34.i, align 1
  %conv29.i = zext i8 %65 to i32
  %cmp30.i = icmp eq i32 %conv27.i, %conv29.i
  call void @assert(i1 zeroext %cmp30.i) #2
  %66 = load i8*, i8** %a.addr, align 8
  %67 = load i8*, i8** %b.addr, align 8
  %68 = load i8*, i8** %c.addr, align 8
  store i8* %66, i8** %a.addr.i43, align 8
  store i8* %67, i8** %b.addr.i, align 8
  store i8* %68, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i44, align 4
  br label %for.cond.i47

for.cond.i47:                                     ; preds = %for.end.i60, %refresh_masks.exit
  %69 = load i32, i32* %i.i44, align 4
  %cmp.i46 = icmp sle i32 %69, 0
  br i1 %cmp.i46, label %for.body.i49, label %for.end40.i

for.body.i49:                                     ; preds = %for.cond.i47
  %70 = load i32, i32* %i.i44, align 4
  %add.i48 = add nsw i32 %70, 1
  store i32 %add.i48, i32* %j.i45, align 4
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.body.i49
  %71 = load i32, i32* %j.i45, align 4
  %cmp2.i = icmp sle i32 %71, 0
  br i1 %cmp2.i, label %for.body3.i, label %for.end.i60

for.body3.i:                                      ; preds = %for.cond1.i
  %call.i50 = call zeroext i8 (...) @rand() #2
  %72 = load i32, i32* %i.i44, align 4
  %idxprom.i51 = sext i32 %72 to i64
  %arrayidx.i52 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom.i51
  %73 = load i32, i32* %j.i45, align 4
  %idxprom4.i = sext i32 %73 to i64
  %arrayidx5.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx.i52, i64 0, i64 %idxprom4.i
  store i8 %call.i50, i8* %arrayidx5.i, align 1
  %74 = load i8*, i8** %a.addr.i43, align 8
  %75 = load i32, i32* %i.i44, align 4
  %idxprom6.i = sext i32 %75 to i64
  %arrayidx7.i = getelementptr inbounds i8, i8* %74, i64 %idxprom6.i
  %76 = load i8, i8* %arrayidx7.i, align 1
  %77 = load i8*, i8** %b.addr.i, align 8
  %78 = load i32, i32* %j.i45, align 4
  %idxprom8.i = sext i32 %78 to i64
  %arrayidx9.i = getelementptr inbounds i8, i8* %77, i64 %idxprom8.i
  %79 = load i8, i8* %arrayidx9.i, align 1
  %call10.i = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %79) #2
  %conv.i53 = zext i8 %call10.i to i32
  %80 = load i32, i32* %i.i44, align 4
  %idxprom11.i = sext i32 %80 to i64
  %arrayidx12.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom11.i
  %81 = load i32, i32* %j.i45, align 4
  %idxprom13.i = sext i32 %81 to i64
  %arrayidx14.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx12.i, i64 0, i64 %idxprom13.i
  %82 = load i8, i8* %arrayidx14.i, align 1
  %conv15.i54 = zext i8 %82 to i32
  %xor.i55 = xor i32 %conv.i53, %conv15.i54
  %conv16.i56 = trunc i32 %xor.i55 to i8
  %83 = load i32, i32* %i.i44, align 4
  %idxprom17.i = sext i32 %83 to i64
  %arrayidx18.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u.i, i64 0, i64 %idxprom17.i
  %84 = load i32, i32* %j.i45, align 4
  %idxprom19.i57 = sext i32 %84 to i64
  %arrayidx20.i58 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx18.i, i64 0, i64 %idxprom19.i57
  store i8 %conv16.i56, i8* %arrayidx20.i58, align 1
  %85 = load i8*, i8** %a.addr.i43, align 8
  %86 = load i32, i32* %j.i45, align 4
  %idxprom21.i = sext i32 %86 to i64
  %arrayidx22.i = getelementptr inbounds i8, i8* %85, i64 %idxprom21.i
  %87 = load i8, i8* %arrayidx22.i, align 1
  %88 = load i8*, i8** %b.addr.i, align 8
  %89 = load i32, i32* %i.i44, align 4
  %idxprom23.i = sext i32 %89 to i64
  %arrayidx24.i = getelementptr inbounds i8, i8* %88, i64 %idxprom23.i
  %90 = load i8, i8* %arrayidx24.i, align 1
  %call25.i = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %90) #2
  %conv26.i = zext i8 %call25.i to i32
  %91 = load i32, i32* %i.i44, align 4
  %idxprom27.i = sext i32 %91 to i64
  %arrayidx28.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r.i, i64 0, i64 %idxprom27.i
  %92 = load i32, i32* %j.i45, align 4
  %idxprom29.i = sext i32 %92 to i64
  %arrayidx30.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx28.i, i64 0, i64 %idxprom29.i
  %93 = load i8, i8* %arrayidx30.i, align 1
  %conv31.i = zext i8 %93 to i32
  %xor32.i = xor i32 %conv26.i, %conv31.i
  %conv33.i = trunc i32 %xor32.i to i8
  %94 = load i32, i32* %j.i45, align 4
  %idxprom34.i = sext i32 %94 to i64
  %arrayidx35.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u.i, i64 0, i64 %idxprom34.i
  %95 = load i32, i32* %i.i44, align 4
  %idxprom36.i = sext i32 %95 to i64
  %arrayidx37.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx35.i, i64 0, i64 %idxprom36.i
  store i8 %conv33.i, i8* %arrayidx37.i, align 1
  %96 = load i32, i32* %j.i45, align 4
  %inc.i59 = add nsw i32 %96, 1
  store i32 %inc.i59, i32* %j.i45, align 4
  br label %for.cond1.i

for.end.i60:                                      ; preds = %for.cond1.i
  %97 = load i32, i32* %i.i44, align 4
  %inc39.i = add nsw i32 %97, 1
  store i32 %inc39.i, i32* %i.i44, align 4
  br label %for.cond.i47

for.end40.i:                                      ; preds = %for.cond.i47
  store i32 0, i32* %i41.i, align 4
  br label %for.cond42.i

for.cond42.i:                                     ; preds = %for.end72.i, %for.end40.i
  %98 = load i32, i32* %i41.i, align 4
  %cmp43.i = icmp sle i32 %98, 0
  br i1 %cmp43.i, label %for.body45.i, label %sec_mult_dom.exit

for.body45.i:                                     ; preds = %for.cond42.i
  %99 = load i8*, i8** %a.addr.i43, align 8
  %100 = load i32, i32* %i41.i, align 4
  %idxprom46.i = sext i32 %100 to i64
  %arrayidx47.i = getelementptr inbounds i8, i8* %99, i64 %idxprom46.i
  %101 = load i8, i8* %arrayidx47.i, align 1
  %102 = load i8*, i8** %b.addr.i, align 8
  %103 = load i32, i32* %i41.i, align 4
  %idxprom48.i = sext i32 %103 to i64
  %arrayidx49.i = getelementptr inbounds i8, i8* %102, i64 %idxprom48.i
  %104 = load i8, i8* %arrayidx49.i, align 1
  %call50.i = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %104) #2
  %105 = load i8*, i8** %c.addr.i, align 8
  %106 = load i32, i32* %i41.i, align 4
  %idxprom51.i = sext i32 %106 to i64
  %arrayidx52.i = getelementptr inbounds i8, i8* %105, i64 %idxprom51.i
  store i8 %call50.i, i8* %arrayidx52.i, align 1
  store i32 0, i32* %j53.i, align 4
  br label %for.cond54.i

for.cond54.i:                                     ; preds = %if.end.i, %for.body45.i
  %107 = load i32, i32* %j53.i, align 4
  %cmp55.i = icmp sle i32 %107, 0
  br i1 %cmp55.i, label %for.body57.i, label %for.end72.i

for.body57.i:                                     ; preds = %for.cond54.i
  %108 = load i32, i32* %j53.i, align 4
  %109 = load i32, i32* %i41.i, align 4
  %cmp58.i = icmp ne i32 %108, %109
  br i1 %cmp58.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body57.i
  %110 = load i32, i32* %i41.i, align 4
  %idxprom60.i = sext i32 %110 to i64
  %arrayidx61.i = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %u.i, i64 0, i64 %idxprom60.i
  %111 = load i32, i32* %j53.i, align 4
  %idxprom62.i = sext i32 %111 to i64
  %arrayidx63.i = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx61.i, i64 0, i64 %idxprom62.i
  %112 = load i8, i8* %arrayidx63.i, align 1
  %conv64.i = zext i8 %112 to i32
  %113 = load i8*, i8** %c.addr.i, align 8
  %114 = load i32, i32* %i41.i, align 4
  %idxprom65.i = sext i32 %114 to i64
  %arrayidx66.i = getelementptr inbounds i8, i8* %113, i64 %idxprom65.i
  %115 = load i8, i8* %arrayidx66.i, align 1
  %conv67.i = zext i8 %115 to i32
  %xor68.i = xor i32 %conv67.i, %conv64.i
  %conv69.i = trunc i32 %xor68.i to i8
  store i8 %conv69.i, i8* %arrayidx66.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body57.i
  %116 = load i32, i32* %j53.i, align 4
  %inc71.i = add nsw i32 %116, 1
  store i32 %inc71.i, i32* %j53.i, align 4
  br label %for.cond54.i

for.end72.i:                                      ; preds = %for.cond54.i
  %117 = load i32, i32* %i41.i, align 4
  %inc74.i = add nsw i32 %117, 1
  store i32 %inc74.i, i32* %i41.i, align 4
  br label %for.cond42.i

sec_mult_dom.exit:                                ; preds = %for.cond42.i
  %118 = load i8, i8* %A, align 1
  %119 = load i8, i8* %B, align 1
  %call11 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119)
  %conv12 = zext i8 %call11 to i32
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %120, i8** %a.addr.i65, align 8
  %121 = load i8*, i8** %a.addr.i65, align 8
  store i8* %121, i8** %a.addr.i.i61, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i62, align 8
  store i8 0, i8* %result.i.i63, align 1
  store i32 0, i32* %i.i.i64, align 4
  br label %for.cond.i.i67

for.cond.i.i67:                                   ; preds = %for.body.i.i76, %sec_mult_dom.exit
  %122 = load i32, i32* %i.i.i64, align 4
  %cmp.i.i66 = icmp sle i32 %122, 0
  br i1 %cmp.i.i66, label %for.body.i.i76, label %xors.exit77

for.body.i.i76:                                   ; preds = %for.cond.i.i67
  %123 = load i8 (i8)*, i8 (i8)** %f.addr.i.i62, align 8
  %124 = load i8*, i8** %a.addr.i.i61, align 8
  %125 = load i32, i32* %i.i.i64, align 4
  %idxprom.i.i68 = sext i32 %125 to i64
  %arrayidx.i.i69 = getelementptr inbounds i8, i8* %124, i64 %idxprom.i.i68
  %126 = load i8, i8* %arrayidx.i.i69, align 1
  %call.i.i70 = call zeroext i8 %123(i8 zeroext %126) #2
  %conv.i.i71 = zext i8 %call.i.i70 to i32
  %127 = load i8, i8* %result.i.i63, align 1
  %conv1.i.i72 = zext i8 %127 to i32
  %xor.i.i73 = xor i32 %conv1.i.i72, %conv.i.i71
  %conv2.i.i74 = trunc i32 %xor.i.i73 to i8
  store i8 %conv2.i.i74, i8* %result.i.i63, align 1
  %128 = load i32, i32* %i.i.i64, align 4
  %inc.i.i75 = add nsw i32 %128, 1
  store i32 %inc.i.i75, i32* %i.i.i64, align 4
  br label %for.cond.i.i67

xors.exit77:                                      ; preds = %for.cond.i.i67
  %129 = load i8, i8* %result.i.i63, align 1
  %conv14 = zext i8 %129 to i32
  %cmp15 = icmp eq i32 %conv12, %conv14
  call void @assert(i1 zeroext %cmp15)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
