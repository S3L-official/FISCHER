; ModuleID = '../examples/cms-mult.c'
source_filename = "../examples/cms-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"../examples/cms-mult.c\00", section "llvm.metadata"
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
  %a.addr.i.i191 = alloca i8*, align 8
  %f.addr.i.i192 = alloca i8 (i8)*, align 8
  %result.i.i193 = alloca i8, align 1
  %i.i.i194 = alloca i32, align 4
  %a.addr.i195 = alloca i8*, align 8
  %a.addr.i.i174 = alloca i8*, align 8
  %f.addr.i.i175 = alloca i8 (i8)*, align 8
  %result.i.i176 = alloca i8, align 1
  %i.i.i177 = alloca i32, align 4
  %a.addr.i178 = alloca i8*, align 8
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
  %r = alloca [9 x i8], align 1
  %x = alloca [3 x [3 x i8]], align 1
  %i = alloca i32, align 4
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
  store i8* %12, i8** %a.addr.i178, align 8
  %13 = load i8*, i8** %a.addr.i178, align 8
  store i8* %13, i8** %a.addr.i.i174, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i175, align 8
  store i8 0, i8* %result.i.i176, align 1
  store i32 0, i32* %i.i.i177, align 4
  br label %for.cond.i.i180

for.cond.i.i180:                                  ; preds = %for.body.i.i189, %xors.exit
  %14 = load i32, i32* %i.i.i177, align 4
  %cmp.i.i179 = icmp sle i32 %14, 2
  br i1 %cmp.i.i179, label %for.body.i.i189, label %xors.exit190

for.body.i.i189:                                  ; preds = %for.cond.i.i180
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i175, align 8
  %16 = load i8*, i8** %a.addr.i.i174, align 8
  %17 = load i32, i32* %i.i.i177, align 4
  %idxprom.i.i181 = sext i32 %17 to i64
  %arrayidx.i.i182 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i181
  %18 = load i8, i8* %arrayidx.i.i182, align 1
  %call.i.i183 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i184 = zext i8 %call.i.i183 to i32
  %19 = load i8, i8* %result.i.i176, align 1
  %conv1.i.i185 = zext i8 %19 to i32
  %xor.i.i186 = xor i32 %conv1.i.i185, %conv.i.i184
  %conv2.i.i187 = trunc i32 %xor.i.i186 to i8
  store i8 %conv2.i.i187, i8* %result.i.i176, align 1
  %20 = load i32, i32* %i.i.i177, align 4
  %inc.i.i188 = add nsw i32 %20, 1
  store i32 %inc.i.i188, i32* %i.i.i177, align 4
  br label %for.cond.i.i180

xors.exit190:                                     ; preds = %for.cond.i.i180
  %21 = load i8, i8* %result.i.i176, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %xors.exit190
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %22, 9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call12 = call zeroext i8 (...) @rand()
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 %idxprom
  store i8 %call12, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx13, align 1
  %27 = load i8*, i8** %b.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx14, align 1
  %call15 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %28)
  %conv16 = zext i8 %call15 to i32
  %arrayidx17 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 0
  %29 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %29 to i32
  %xor = xor i32 %conv16, %conv18
  %arrayidx19 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 1
  %30 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %30 to i32
  %xor21 = xor i32 %xor, %conv20
  %conv22 = trunc i32 %xor21 to i8
  %arrayidx23 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx24 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx23, i64 0, i64 0
  store i8 %conv22, i8* %arrayidx24, align 1
  %31 = load i8*, i8** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx25, align 1
  %33 = load i8*, i8** %b.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx26, align 1
  %call27 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %34)
  %conv28 = zext i8 %call27 to i32
  %arrayidx29 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 1
  %35 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %35 to i32
  %xor31 = xor i32 %conv28, %conv30
  %arrayidx32 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 2
  %36 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %36 to i32
  %xor34 = xor i32 %xor31, %conv33
  %conv35 = trunc i32 %xor34 to i8
  %arrayidx36 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx37 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx36, i64 0, i64 1
  store i8 %conv35, i8* %arrayidx37, align 1
  %37 = load i8*, i8** %a.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx38, align 1
  %39 = load i8*, i8** %b.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx39, align 1
  %call40 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %40)
  %conv41 = zext i8 %call40 to i32
  %arrayidx42 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 2
  %41 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %41 to i32
  %xor44 = xor i32 %conv41, %conv43
  %arrayidx45 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 3
  %42 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %42 to i32
  %xor47 = xor i32 %xor44, %conv46
  %conv48 = trunc i32 %xor47 to i8
  %arrayidx49 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx50 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx49, i64 0, i64 2
  store i8 %conv48, i8* %arrayidx50, align 1
  %43 = load i8*, i8** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx51, align 1
  %45 = load i8*, i8** %b.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx52, align 1
  %call53 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %46)
  %conv54 = zext i8 %call53 to i32
  %arrayidx55 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 3
  %47 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %47 to i32
  %xor57 = xor i32 %conv54, %conv56
  %arrayidx58 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 4
  %48 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %48 to i32
  %xor60 = xor i32 %xor57, %conv59
  %conv61 = trunc i32 %xor60 to i8
  %arrayidx62 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx62, i64 0, i64 0
  store i8 %conv61, i8* %arrayidx63, align 1
  %49 = load i8*, i8** %a.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx64, align 1
  %51 = load i8*, i8** %b.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx65, align 1
  %call66 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %52)
  %conv67 = zext i8 %call66 to i32
  %arrayidx68 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 4
  %53 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %53 to i32
  %xor70 = xor i32 %conv67, %conv69
  %arrayidx71 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 5
  %54 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %54 to i32
  %xor73 = xor i32 %xor70, %conv72
  %conv74 = trunc i32 %xor73 to i8
  %arrayidx75 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx76 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx75, i64 0, i64 1
  store i8 %conv74, i8* %arrayidx76, align 1
  %55 = load i8*, i8** %a.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx77, align 1
  %57 = load i8*, i8** %b.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx78, align 1
  %call79 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %58)
  %conv80 = zext i8 %call79 to i32
  %arrayidx81 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 5
  %59 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %59 to i32
  %xor83 = xor i32 %conv80, %conv82
  %arrayidx84 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 6
  %60 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %60 to i32
  %xor86 = xor i32 %xor83, %conv85
  %conv87 = trunc i32 %xor86 to i8
  %arrayidx88 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx89 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx88, i64 0, i64 2
  store i8 %conv87, i8* %arrayidx89, align 1
  %61 = load i8*, i8** %a.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %arrayidx90, align 1
  %63 = load i8*, i8** %b.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx91, align 1
  %call92 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %64)
  %conv93 = zext i8 %call92 to i32
  %arrayidx94 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 6
  %65 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %65 to i32
  %xor96 = xor i32 %conv93, %conv95
  %arrayidx97 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 7
  %66 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %66 to i32
  %xor99 = xor i32 %xor96, %conv98
  %conv100 = trunc i32 %xor99 to i8
  %arrayidx101 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx102 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx101, i64 0, i64 0
  store i8 %conv100, i8* %arrayidx102, align 1
  %67 = load i8*, i8** %a.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %67, i64 2
  %68 = load i8, i8* %arrayidx103, align 1
  %69 = load i8*, i8** %b.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx104, align 1
  %call105 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %70)
  %conv106 = zext i8 %call105 to i32
  %arrayidx107 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 7
  %71 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %71 to i32
  %xor109 = xor i32 %conv106, %conv108
  %arrayidx110 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 8
  %72 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %72 to i32
  %xor112 = xor i32 %xor109, %conv111
  %conv113 = trunc i32 %xor112 to i8
  %arrayidx114 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx115 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx114, i64 0, i64 1
  store i8 %conv113, i8* %arrayidx115, align 1
  %73 = load i8*, i8** %a.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %73, i64 2
  %74 = load i8, i8* %arrayidx116, align 1
  %75 = load i8*, i8** %b.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx117, align 1
  %call118 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %76)
  %conv119 = zext i8 %call118 to i32
  %arrayidx120 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 8
  %77 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %77 to i32
  %xor122 = xor i32 %conv119, %conv121
  %arrayidx123 = getelementptr inbounds [9 x i8], [9 x i8]* %r, i64 0, i64 0
  %78 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %78 to i32
  %xor125 = xor i32 %xor122, %conv124
  %conv126 = trunc i32 %xor125 to i8
  %arrayidx127 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx128 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx127, i64 0, i64 2
  store i8 %conv126, i8* %arrayidx128, align 1
  %arrayidx129 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx130 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx129, i64 0, i64 0
  %79 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %79 to i32
  %arrayidx132 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx133 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx132, i64 0, i64 1
  %80 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %80 to i32
  %xor135 = xor i32 %conv131, %conv134
  %arrayidx136 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 0
  %arrayidx137 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx136, i64 0, i64 2
  %81 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %81 to i32
  %xor139 = xor i32 %xor135, %conv138
  %conv140 = trunc i32 %xor139 to i8
  %82 = load i8*, i8** %c.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %conv140, i8* %arrayidx141, align 1
  %arrayidx142 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx143 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx142, i64 0, i64 0
  %83 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %83 to i32
  %arrayidx145 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx146 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx145, i64 0, i64 1
  %84 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %84 to i32
  %xor148 = xor i32 %conv144, %conv147
  %arrayidx149 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 1
  %arrayidx150 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx149, i64 0, i64 2
  %85 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %85 to i32
  %xor152 = xor i32 %xor148, %conv151
  %conv153 = trunc i32 %xor152 to i8
  %86 = load i8*, i8** %c.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %conv153, i8* %arrayidx154, align 1
  %arrayidx155 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx156 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx155, i64 0, i64 0
  %87 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %87 to i32
  %arrayidx158 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx159 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx158, i64 0, i64 1
  %88 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %88 to i32
  %xor161 = xor i32 %conv157, %conv160
  %arrayidx162 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %x, i64 0, i64 2
  %arrayidx163 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx162, i64 0, i64 2
  %89 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %89 to i32
  %xor165 = xor i32 %xor161, %conv164
  %conv166 = trunc i32 %xor165 to i8
  %90 = load i8*, i8** %c.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %conv166, i8* %arrayidx167, align 1
  %91 = load i8, i8* %A, align 1
  %92 = load i8, i8* %B, align 1
  %call168 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92)
  %conv169 = zext i8 %call168 to i32
  %93 = load i8*, i8** %c.addr, align 8
  store i8* %93, i8** %a.addr.i195, align 8
  %94 = load i8*, i8** %a.addr.i195, align 8
  store i8* %94, i8** %a.addr.i.i191, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i192, align 8
  store i8 0, i8* %result.i.i193, align 1
  store i32 0, i32* %i.i.i194, align 4
  br label %for.cond.i.i197

for.cond.i.i197:                                  ; preds = %for.body.i.i206, %for.end
  %95 = load i32, i32* %i.i.i194, align 4
  %cmp.i.i196 = icmp sle i32 %95, 2
  br i1 %cmp.i.i196, label %for.body.i.i206, label %xors.exit207

for.body.i.i206:                                  ; preds = %for.cond.i.i197
  %96 = load i8 (i8)*, i8 (i8)** %f.addr.i.i192, align 8
  %97 = load i8*, i8** %a.addr.i.i191, align 8
  %98 = load i32, i32* %i.i.i194, align 4
  %idxprom.i.i198 = sext i32 %98 to i64
  %arrayidx.i.i199 = getelementptr inbounds i8, i8* %97, i64 %idxprom.i.i198
  %99 = load i8, i8* %arrayidx.i.i199, align 1
  %call.i.i200 = call zeroext i8 %96(i8 zeroext %99) #2
  %conv.i.i201 = zext i8 %call.i.i200 to i32
  %100 = load i8, i8* %result.i.i193, align 1
  %conv1.i.i202 = zext i8 %100 to i32
  %xor.i.i203 = xor i32 %conv1.i.i202, %conv.i.i201
  %conv2.i.i204 = trunc i32 %xor.i.i203 to i8
  store i8 %conv2.i.i204, i8* %result.i.i193, align 1
  %101 = load i32, i32* %i.i.i194, align 4
  %inc.i.i205 = add nsw i32 %101, 1
  store i32 %inc.i.i205, i32* %i.i.i194, align 4
  br label %for.cond.i.i197

xors.exit207:                                     ; preds = %for.cond.i.i197
  %102 = load i8, i8* %result.i.i193, align 1
  %conv171 = zext i8 %102 to i32
  %cmp172 = icmp eq i32 %conv169, %conv171
  call void @assert(i1 zeroext %cmp172)
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
