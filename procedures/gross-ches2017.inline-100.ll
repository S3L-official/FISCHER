; ModuleID = '../examples/gross-ches2017.c'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 100, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [29 x i8] c"../examples/gross-ches2017.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 23 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 100
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
  %cmp = icmp sle i32 %0, 100
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
  %cmp.i = icmp sle i32 %1, 100
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
define dso_local void @vmult(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %ra.addr = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %rb.addr = alloca i32, align 4
  %c.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i32 %ra, i32* %ra.addr, align 4
  store i8* %b, i8** %b.addr, align 8
  store i32 %rb, i32* %rb.addr, align 4
  store i8* %c, i8** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 101
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 101
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %call = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %8)
  %9 = load i8*, i8** %c.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  store i8 %call, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @vadd(i8* %a, i32 %ra, i8* %b, i32 %rb, i8* %c) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %ra.addr = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %rb.addr = alloca i32, align 4
  %c.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i32 %ra, i32* %ra.addr, align 4
  store i8* %b, i8** %b.addr, align 8
  store i32 %rb, i32* %rb.addr, align 4
  store i8* %c, i8** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 101
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 101
  %idxprom3 = sext i32 %rem2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  %9 = load i8*, i8** %c.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @ceil_(double %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %y, align 4
  %1 = load double, double* %x.addr, align 8
  %2 = load i32, i32* %y, align 4
  %conv1 = sitofp i32 %2 to double
  %cmp = fcmp oeq double %1, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %y, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %y, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %a.addr.i296 = alloca i8*, align 8
  %ra.addr.i297 = alloca i32, align 4
  %b.addr.i298 = alloca i8*, align 8
  %rb.addr.i299 = alloca i32, align 4
  %c.addr.i300 = alloca i8*, align 8
  %i.i301 = alloca i32, align 4
  %a.addr.i271 = alloca i8*, align 8
  %ra.addr.i272 = alloca i32, align 4
  %b.addr.i273 = alloca i8*, align 8
  %rb.addr.i274 = alloca i32, align 4
  %c.addr.i275 = alloca i8*, align 8
  %i.i276 = alloca i32, align 4
  %a.addr.i246 = alloca i8*, align 8
  %ra.addr.i247 = alloca i32, align 4
  %b.addr.i248 = alloca i8*, align 8
  %rb.addr.i249 = alloca i32, align 4
  %c.addr.i250 = alloca i8*, align 8
  %i.i251 = alloca i32, align 4
  %a.addr.i221 = alloca i8*, align 8
  %ra.addr.i222 = alloca i32, align 4
  %b.addr.i223 = alloca i8*, align 8
  %rb.addr.i224 = alloca i32, align 4
  %c.addr.i225 = alloca i8*, align 8
  %i.i226 = alloca i32, align 4
  %a.addr.i196 = alloca i8*, align 8
  %ra.addr.i197 = alloca i32, align 4
  %b.addr.i198 = alloca i8*, align 8
  %rb.addr.i199 = alloca i32, align 4
  %c.addr.i200 = alloca i8*, align 8
  %i.i201 = alloca i32, align 4
  %a.addr.i.i179 = alloca i8*, align 8
  %f.addr.i.i180 = alloca i8 (i8)*, align 8
  %result.i.i181 = alloca i8, align 1
  %i.i.i182 = alloca i32, align 4
  %a.addr.i183 = alloca i8*, align 8
  %a.addr.i161 = alloca i8*, align 8
  %ra.addr.i162 = alloca i32, align 4
  %b.addr.i163 = alloca i8*, align 8
  %rb.addr.i164 = alloca i32, align 4
  %c.addr.i165 = alloca i8*, align 8
  %i.i166 = alloca i32, align 4
  %a.addr.i139 = alloca i8*, align 8
  %ra.addr.i140 = alloca i32, align 4
  %b.addr.i141 = alloca i8*, align 8
  %rb.addr.i142 = alloca i32, align 4
  %c.addr.i143 = alloca i8*, align 8
  %i.i144 = alloca i32, align 4
  %a.addr.i117 = alloca i8*, align 8
  %ra.addr.i118 = alloca i32, align 4
  %b.addr.i119 = alloca i8*, align 8
  %rb.addr.i120 = alloca i32, align 4
  %c.addr.i121 = alloca i8*, align 8
  %i.i122 = alloca i32, align 4
  %a.addr.i95 = alloca i8*, align 8
  %ra.addr.i96 = alloca i32, align 4
  %b.addr.i97 = alloca i8*, align 8
  %rb.addr.i98 = alloca i32, align 4
  %c.addr.i99 = alloca i8*, align 8
  %i.i100 = alloca i32, align 4
  %a.addr.i73 = alloca i8*, align 8
  %ra.addr.i74 = alloca i32, align 4
  %b.addr.i75 = alloca i8*, align 8
  %rb.addr.i76 = alloca i32, align 4
  %c.addr.i77 = alloca i8*, align 8
  %i.i78 = alloca i32, align 4
  %a.addr.i72 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i55 = alloca i8*, align 8
  %f.addr.i.i56 = alloca i8 (i8)*, align 8
  %result.i.i57 = alloca i8, align 1
  %i.i.i58 = alloca i32, align 4
  %a.addr.i59 = alloca i8*, align 8
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
  %k = alloca i32, align 4
  %r = alloca [101 x [101 x i8]], align 16
  %a1b = alloca [101 x i8], align 16
  %ab1 = alloca [101 x i8], align 16
  %a2b = alloca [101 x i8], align 16
  %ab2 = alloca [101 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i22 = alloca i32, align 4
  %l = alloca i32, align 4
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
  %cmp.i.i = icmp sle i32 %3, 100
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
  store i8* %12, i8** %a.addr.i59, align 8
  %13 = load i8*, i8** %a.addr.i59, align 8
  store i8* %13, i8** %a.addr.i.i55, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i56, align 8
  store i32 0, i32* %i.i.i58, align 4
  br label %for.cond.i.i61

for.cond.i.i61:                                   ; preds = %for.body.i.i70, %xors.exit
  %14 = load i32, i32* %i.i.i58, align 4
  %cmp.i.i60 = icmp sle i32 %14, 100
  br i1 %cmp.i.i60, label %for.body.i.i70, label %xors.exit71

for.body.i.i70:                                   ; preds = %for.cond.i.i61
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i56, align 8
  %16 = load i8*, i8** %a.addr.i.i55, align 8
  %17 = load i32, i32* %i.i.i58, align 4
  %idxprom.i.i62 = sext i32 %17 to i64
  %arrayidx.i.i63 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i62
  %18 = load i8, i8* %arrayidx.i.i63, align 1
  %call.i.i64 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i65 = zext i8 %call.i.i64 to i32
  %19 = load i8, i8* %result.i.i57, align 1
  %conv1.i.i66 = zext i8 %19 to i32
  %xor.i.i67 = xor i32 %conv1.i.i66, %conv.i.i65
  %conv2.i.i68 = trunc i32 %xor.i.i67 to i8
  store i8 %conv2.i.i68, i8* %result.i.i57, align 1
  %20 = load i32, i32* %i.i.i58, align 4
  %inc.i.i69 = add nsw i32 %20, 1
  store i32 %inc.i.i69, i32* %i.i.i58, align 4
  br label %for.cond.i.i61

xors.exit71:                                      ; preds = %for.cond.i.i61
  %21 = load i8, i8* %result.i.i57, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 101, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit71
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 100
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 100
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i8]], [101 x [101 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [101 x i8], [101 x i8]* %arrayidx, i64 0, i64 %idxprom17
  store i8 %call16, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond12

for.end:                                          ; preds = %for.cond12
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  %28 = load i8*, i8** %a.addr, align 8
  %29 = load i8*, i8** %b.addr, align 8
  %30 = load i8*, i8** %c.addr, align 8
  store i8* %28, i8** %a.addr.i72, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %30, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %31 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %31, 100
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %32 = load i8*, i8** %a.addr.i72, align 8
  %33 = load i32, i32* %i.i, align 4
  %34 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %33, %34
  %rem.i = srem i32 %add.i, 101
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %32, i64 %idxprom.i
  %35 = load i8, i8* %arrayidx.i, align 1
  %36 = load i8*, i8** %b.addr.i, align 8
  %37 = load i32, i32* %i.i, align 4
  %38 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %37, %38
  %rem2.i = srem i32 %add1.i, 101
  %idxprom3.i = sext i32 %rem2.i to i64
  %arrayidx4.i = getelementptr inbounds i8, i8* %36, i64 %idxprom3.i
  %39 = load i8, i8* %arrayidx4.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %39) #2
  %40 = load i8*, i8** %c.addr.i, align 8
  %41 = load i32, i32* %i.i, align 4
  %idxprom5.i = sext i32 %41 to i64
  %arrayidx6.i = getelementptr inbounds i8, i8* %40, i64 %idxprom5.i
  store i8 %call.i, i8* %arrayidx6.i, align 1
  %42 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %42, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

vmult.exit:                                       ; preds = %for.cond.i
  store i32 0, i32* %i22, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc46, %vmult.exit
  %43 = load i32, i32* %i22, align 4
  %cmp24 = icmp slt i32 %43, 25
  br i1 %cmp24, label %for.body26, label %for.end48

for.body26:                                       ; preds = %for.cond23
  %44 = load i8*, i8** %a.addr, align 8
  %45 = load i8*, i8** %b.addr, align 8
  %46 = load i32, i32* %i22, align 4
  %mul = mul nsw i32 2, %46
  %add = add nsw i32 %mul, 1
  %arraydecay = getelementptr inbounds [101 x i8], [101 x i8]* %ab1, i64 0, i64 0
  store i8* %44, i8** %a.addr.i73, align 8
  store i32 0, i32* %ra.addr.i74, align 4
  store i8* %45, i8** %b.addr.i75, align 8
  store i32 %add, i32* %rb.addr.i76, align 4
  store i8* %arraydecay, i8** %c.addr.i77, align 8
  store i32 0, i32* %i.i78, align 4
  br label %for.cond.i80

for.cond.i80:                                     ; preds = %for.body.i92, %for.body26
  %47 = load i32, i32* %i.i78, align 4
  %cmp.i79 = icmp sle i32 %47, 100
  br i1 %cmp.i79, label %for.body.i92, label %vmult.exit94

for.body.i92:                                     ; preds = %for.cond.i80
  %48 = load i8*, i8** %a.addr.i73, align 8
  %49 = load i32, i32* %i.i78, align 4
  %50 = load i32, i32* %ra.addr.i74, align 4
  %add.i81 = add nsw i32 %49, %50
  %rem.i82 = srem i32 %add.i81, 101
  %idxprom.i83 = sext i32 %rem.i82 to i64
  %arrayidx.i84 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i83
  %51 = load i8, i8* %arrayidx.i84, align 1
  %52 = load i8*, i8** %b.addr.i75, align 8
  %53 = load i32, i32* %i.i78, align 4
  %54 = load i32, i32* %rb.addr.i76, align 4
  %add1.i85 = add nsw i32 %53, %54
  %rem2.i86 = srem i32 %add1.i85, 101
  %idxprom3.i87 = sext i32 %rem2.i86 to i64
  %arrayidx4.i88 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i87
  %55 = load i8, i8* %arrayidx4.i88, align 1
  %call.i89 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i77, align 8
  %57 = load i32, i32* %i.i78, align 4
  %idxprom5.i90 = sext i32 %57 to i64
  %arrayidx6.i91 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i90
  store i8 %call.i89, i8* %arrayidx6.i91, align 1
  %58 = load i32, i32* %i.i78, align 4
  %inc.i93 = add nsw i32 %58, 1
  store i32 %inc.i93, i32* %i.i78, align 4
  br label %for.cond.i80

vmult.exit94:                                     ; preds = %for.cond.i80
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i22, align 4
  %mul27 = mul nsw i32 2, %60
  %add28 = add nsw i32 %mul27, 1
  %61 = load i8*, i8** %b.addr, align 8
  %arraydecay29 = getelementptr inbounds [101 x i8], [101 x i8]* %a1b, i64 0, i64 0
  store i8* %59, i8** %a.addr.i95, align 8
  store i32 %add28, i32* %ra.addr.i96, align 4
  store i8* %61, i8** %b.addr.i97, align 8
  store i32 0, i32* %rb.addr.i98, align 4
  store i8* %arraydecay29, i8** %c.addr.i99, align 8
  store i32 0, i32* %i.i100, align 4
  br label %for.cond.i102

for.cond.i102:                                    ; preds = %for.body.i114, %vmult.exit94
  %62 = load i32, i32* %i.i100, align 4
  %cmp.i101 = icmp sle i32 %62, 100
  br i1 %cmp.i101, label %for.body.i114, label %vmult.exit116

for.body.i114:                                    ; preds = %for.cond.i102
  %63 = load i8*, i8** %a.addr.i95, align 8
  %64 = load i32, i32* %i.i100, align 4
  %65 = load i32, i32* %ra.addr.i96, align 4
  %add.i103 = add nsw i32 %64, %65
  %rem.i104 = srem i32 %add.i103, 101
  %idxprom.i105 = sext i32 %rem.i104 to i64
  %arrayidx.i106 = getelementptr inbounds i8, i8* %63, i64 %idxprom.i105
  %66 = load i8, i8* %arrayidx.i106, align 1
  %67 = load i8*, i8** %b.addr.i97, align 8
  %68 = load i32, i32* %i.i100, align 4
  %69 = load i32, i32* %rb.addr.i98, align 4
  %add1.i107 = add nsw i32 %68, %69
  %rem2.i108 = srem i32 %add1.i107, 101
  %idxprom3.i109 = sext i32 %rem2.i108 to i64
  %arrayidx4.i110 = getelementptr inbounds i8, i8* %67, i64 %idxprom3.i109
  %70 = load i8, i8* %arrayidx4.i110, align 1
  %call.i111 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %70) #2
  %71 = load i8*, i8** %c.addr.i99, align 8
  %72 = load i32, i32* %i.i100, align 4
  %idxprom5.i112 = sext i32 %72 to i64
  %arrayidx6.i113 = getelementptr inbounds i8, i8* %71, i64 %idxprom5.i112
  store i8 %call.i111, i8* %arrayidx6.i113, align 1
  %73 = load i32, i32* %i.i100, align 4
  %inc.i115 = add nsw i32 %73, 1
  store i32 %inc.i115, i32* %i.i100, align 4
  br label %for.cond.i102

vmult.exit116:                                    ; preds = %for.cond.i102
  %74 = load i8*, i8** %a.addr, align 8
  %75 = load i8*, i8** %b.addr, align 8
  %76 = load i32, i32* %i22, align 4
  %mul30 = mul nsw i32 2, %76
  %add31 = add nsw i32 %mul30, 2
  %arraydecay32 = getelementptr inbounds [101 x i8], [101 x i8]* %ab2, i64 0, i64 0
  store i8* %74, i8** %a.addr.i117, align 8
  store i32 0, i32* %ra.addr.i118, align 4
  store i8* %75, i8** %b.addr.i119, align 8
  store i32 %add31, i32* %rb.addr.i120, align 4
  store i8* %arraydecay32, i8** %c.addr.i121, align 8
  store i32 0, i32* %i.i122, align 4
  br label %for.cond.i124

for.cond.i124:                                    ; preds = %for.body.i136, %vmult.exit116
  %77 = load i32, i32* %i.i122, align 4
  %cmp.i123 = icmp sle i32 %77, 100
  br i1 %cmp.i123, label %for.body.i136, label %vmult.exit138

for.body.i136:                                    ; preds = %for.cond.i124
  %78 = load i8*, i8** %a.addr.i117, align 8
  %79 = load i32, i32* %i.i122, align 4
  %80 = load i32, i32* %ra.addr.i118, align 4
  %add.i125 = add nsw i32 %79, %80
  %rem.i126 = srem i32 %add.i125, 101
  %idxprom.i127 = sext i32 %rem.i126 to i64
  %arrayidx.i128 = getelementptr inbounds i8, i8* %78, i64 %idxprom.i127
  %81 = load i8, i8* %arrayidx.i128, align 1
  %82 = load i8*, i8** %b.addr.i119, align 8
  %83 = load i32, i32* %i.i122, align 4
  %84 = load i32, i32* %rb.addr.i120, align 4
  %add1.i129 = add nsw i32 %83, %84
  %rem2.i130 = srem i32 %add1.i129, 101
  %idxprom3.i131 = sext i32 %rem2.i130 to i64
  %arrayidx4.i132 = getelementptr inbounds i8, i8* %82, i64 %idxprom3.i131
  %85 = load i8, i8* %arrayidx4.i132, align 1
  %call.i133 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %85) #2
  %86 = load i8*, i8** %c.addr.i121, align 8
  %87 = load i32, i32* %i.i122, align 4
  %idxprom5.i134 = sext i32 %87 to i64
  %arrayidx6.i135 = getelementptr inbounds i8, i8* %86, i64 %idxprom5.i134
  store i8 %call.i133, i8* %arrayidx6.i135, align 1
  %88 = load i32, i32* %i.i122, align 4
  %inc.i137 = add nsw i32 %88, 1
  store i32 %inc.i137, i32* %i.i122, align 4
  br label %for.cond.i124

vmult.exit138:                                    ; preds = %for.cond.i124
  %89 = load i8*, i8** %a.addr, align 8
  %90 = load i32, i32* %i22, align 4
  %mul33 = mul nsw i32 2, %90
  %add34 = add nsw i32 %mul33, 2
  %91 = load i8*, i8** %b.addr, align 8
  %arraydecay35 = getelementptr inbounds [101 x i8], [101 x i8]* %a2b, i64 0, i64 0
  store i8* %89, i8** %a.addr.i139, align 8
  store i32 %add34, i32* %ra.addr.i140, align 4
  store i8* %91, i8** %b.addr.i141, align 8
  store i32 0, i32* %rb.addr.i142, align 4
  store i8* %arraydecay35, i8** %c.addr.i143, align 8
  store i32 0, i32* %i.i144, align 4
  br label %for.cond.i146

for.cond.i146:                                    ; preds = %for.body.i158, %vmult.exit138
  %92 = load i32, i32* %i.i144, align 4
  %cmp.i145 = icmp sle i32 %92, 100
  br i1 %cmp.i145, label %for.body.i158, label %vmult.exit160

for.body.i158:                                    ; preds = %for.cond.i146
  %93 = load i8*, i8** %a.addr.i139, align 8
  %94 = load i32, i32* %i.i144, align 4
  %95 = load i32, i32* %ra.addr.i140, align 4
  %add.i147 = add nsw i32 %94, %95
  %rem.i148 = srem i32 %add.i147, 101
  %idxprom.i149 = sext i32 %rem.i148 to i64
  %arrayidx.i150 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i149
  %96 = load i8, i8* %arrayidx.i150, align 1
  %97 = load i8*, i8** %b.addr.i141, align 8
  %98 = load i32, i32* %i.i144, align 4
  %99 = load i32, i32* %rb.addr.i142, align 4
  %add1.i151 = add nsw i32 %98, %99
  %rem2.i152 = srem i32 %add1.i151, 101
  %idxprom3.i153 = sext i32 %rem2.i152 to i64
  %arrayidx4.i154 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i153
  %100 = load i8, i8* %arrayidx4.i154, align 1
  %call.i155 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i143, align 8
  %102 = load i32, i32* %i.i144, align 4
  %idxprom5.i156 = sext i32 %102 to i64
  %arrayidx6.i157 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i156
  store i8 %call.i155, i8* %arrayidx6.i157, align 1
  %103 = load i32, i32* %i.i144, align 4
  %inc.i159 = add nsw i32 %103, 1
  store i32 %inc.i159, i32* %i.i144, align 4
  br label %for.cond.i146

vmult.exit160:                                    ; preds = %for.cond.i146
  %104 = load i8*, i8** %c.addr, align 8
  %105 = load i32, i32* %i22, align 4
  %idxprom36 = sext i32 %105 to i64
  %arrayidx37 = getelementptr inbounds [101 x [101 x i8]], [101 x [101 x i8]]* %r, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [101 x i8], [101 x i8]* %arrayidx37, i64 0, i64 0
  %106 = load i8*, i8** %c.addr, align 8
  store i8* %104, i8** %a.addr.i161, align 8
  store i32 0, i32* %ra.addr.i162, align 4
  store i8* %arraydecay38, i8** %b.addr.i163, align 8
  store i32 0, i32* %rb.addr.i164, align 4
  store i8* %106, i8** %c.addr.i165, align 8
  store i32 0, i32* %i.i166, align 4
  br label %for.cond.i168

for.cond.i168:                                    ; preds = %for.body.i177, %vmult.exit160
  %107 = load i32, i32* %i.i166, align 4
  %cmp.i167 = icmp sle i32 %107, 100
  br i1 %cmp.i167, label %for.body.i177, label %vadd.exit

for.body.i177:                                    ; preds = %for.cond.i168
  %108 = load i8*, i8** %a.addr.i161, align 8
  %109 = load i32, i32* %i.i166, align 4
  %110 = load i32, i32* %ra.addr.i162, align 4
  %add.i169 = add nsw i32 %109, %110
  %rem.i170 = srem i32 %add.i169, 101
  %idxprom.i171 = sext i32 %rem.i170 to i64
  %arrayidx.i172 = getelementptr inbounds i8, i8* %108, i64 %idxprom.i171
  %111 = load i8, i8* %arrayidx.i172, align 1
  %conv.i = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i163, align 8
  %113 = load i32, i32* %i.i166, align 4
  %114 = load i32, i32* %rb.addr.i164, align 4
  %add1.i173 = add nsw i32 %113, %114
  %rem2.i174 = srem i32 %add1.i173, 101
  %idxprom3.i175 = sext i32 %rem2.i174 to i64
  %arrayidx4.i176 = getelementptr inbounds i8, i8* %112, i64 %idxprom3.i175
  %115 = load i8, i8* %arrayidx4.i176, align 1
  %conv5.i = zext i8 %115 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %116 = load i8*, i8** %c.addr.i165, align 8
  %117 = load i32, i32* %i.i166, align 4
  %idxprom7.i = sext i32 %117 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %118 = load i32, i32* %i.i166, align 4
  %inc.i178 = add nsw i32 %118, 1
  store i32 %inc.i178, i32* %i.i166, align 4
  br label %for.cond.i168

vadd.exit:                                        ; preds = %for.cond.i168
  %119 = load i8*, i8** %c.addr, align 8
  %arraydecay39 = getelementptr inbounds [101 x i8], [101 x i8]* %ab1, i64 0, i64 0
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %119, i8** %a.addr.i196, align 8
  store i32 0, i32* %ra.addr.i197, align 4
  store i8* %arraydecay39, i8** %b.addr.i198, align 8
  store i32 0, i32* %rb.addr.i199, align 4
  store i8* %120, i8** %c.addr.i200, align 8
  store i32 0, i32* %i.i201, align 4
  br label %for.cond.i203

for.cond.i203:                                    ; preds = %for.body.i218, %vadd.exit
  %121 = load i32, i32* %i.i201, align 4
  %cmp.i202 = icmp sle i32 %121, 100
  br i1 %cmp.i202, label %for.body.i218, label %vadd.exit220

for.body.i218:                                    ; preds = %for.cond.i203
  %122 = load i8*, i8** %a.addr.i196, align 8
  %123 = load i32, i32* %i.i201, align 4
  %124 = load i32, i32* %ra.addr.i197, align 4
  %add.i204 = add nsw i32 %123, %124
  %rem.i205 = srem i32 %add.i204, 101
  %idxprom.i206 = sext i32 %rem.i205 to i64
  %arrayidx.i207 = getelementptr inbounds i8, i8* %122, i64 %idxprom.i206
  %125 = load i8, i8* %arrayidx.i207, align 1
  %conv.i208 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i198, align 8
  %127 = load i32, i32* %i.i201, align 4
  %128 = load i32, i32* %rb.addr.i199, align 4
  %add1.i209 = add nsw i32 %127, %128
  %rem2.i210 = srem i32 %add1.i209, 101
  %idxprom3.i211 = sext i32 %rem2.i210 to i64
  %arrayidx4.i212 = getelementptr inbounds i8, i8* %126, i64 %idxprom3.i211
  %129 = load i8, i8* %arrayidx4.i212, align 1
  %conv5.i213 = zext i8 %129 to i32
  %xor.i214 = xor i32 %conv.i208, %conv5.i213
  %conv6.i215 = trunc i32 %xor.i214 to i8
  %130 = load i8*, i8** %c.addr.i200, align 8
  %131 = load i32, i32* %i.i201, align 4
  %idxprom7.i216 = sext i32 %131 to i64
  %arrayidx8.i217 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i216
  store i8 %conv6.i215, i8* %arrayidx8.i217, align 1
  %132 = load i32, i32* %i.i201, align 4
  %inc.i219 = add nsw i32 %132, 1
  store i32 %inc.i219, i32* %i.i201, align 4
  br label %for.cond.i203

vadd.exit220:                                     ; preds = %for.cond.i203
  %133 = load i8*, i8** %c.addr, align 8
  %arraydecay40 = getelementptr inbounds [101 x i8], [101 x i8]* %a1b, i64 0, i64 0
  %134 = load i8*, i8** %c.addr, align 8
  store i8* %133, i8** %a.addr.i296, align 8
  store i32 0, i32* %ra.addr.i297, align 4
  store i8* %arraydecay40, i8** %b.addr.i298, align 8
  store i32 0, i32* %rb.addr.i299, align 4
  store i8* %134, i8** %c.addr.i300, align 8
  store i32 0, i32* %i.i301, align 4
  br label %for.cond.i303

for.cond.i303:                                    ; preds = %for.body.i318, %vadd.exit220
  %135 = load i32, i32* %i.i301, align 4
  %cmp.i302 = icmp sle i32 %135, 100
  br i1 %cmp.i302, label %for.body.i318, label %vadd.exit320

for.body.i318:                                    ; preds = %for.cond.i303
  %136 = load i8*, i8** %a.addr.i296, align 8
  %137 = load i32, i32* %i.i301, align 4
  %138 = load i32, i32* %ra.addr.i297, align 4
  %add.i304 = add nsw i32 %137, %138
  %rem.i305 = srem i32 %add.i304, 101
  %idxprom.i306 = sext i32 %rem.i305 to i64
  %arrayidx.i307 = getelementptr inbounds i8, i8* %136, i64 %idxprom.i306
  %139 = load i8, i8* %arrayidx.i307, align 1
  %conv.i308 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i298, align 8
  %141 = load i32, i32* %i.i301, align 4
  %142 = load i32, i32* %rb.addr.i299, align 4
  %add1.i309 = add nsw i32 %141, %142
  %rem2.i310 = srem i32 %add1.i309, 101
  %idxprom3.i311 = sext i32 %rem2.i310 to i64
  %arrayidx4.i312 = getelementptr inbounds i8, i8* %140, i64 %idxprom3.i311
  %143 = load i8, i8* %arrayidx4.i312, align 1
  %conv5.i313 = zext i8 %143 to i32
  %xor.i314 = xor i32 %conv.i308, %conv5.i313
  %conv6.i315 = trunc i32 %xor.i314 to i8
  %144 = load i8*, i8** %c.addr.i300, align 8
  %145 = load i32, i32* %i.i301, align 4
  %idxprom7.i316 = sext i32 %145 to i64
  %arrayidx8.i317 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i316
  store i8 %conv6.i315, i8* %arrayidx8.i317, align 1
  %146 = load i32, i32* %i.i301, align 4
  %inc.i319 = add nsw i32 %146, 1
  store i32 %inc.i319, i32* %i.i301, align 4
  br label %for.cond.i303

vadd.exit320:                                     ; preds = %for.cond.i303
  %147 = load i8*, i8** %c.addr, align 8
  %148 = load i32, i32* %i22, align 4
  %idxprom41 = sext i32 %148 to i64
  %arrayidx42 = getelementptr inbounds [101 x [101 x i8]], [101 x [101 x i8]]* %r, i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [101 x i8], [101 x i8]* %arrayidx42, i64 0, i64 0
  %149 = load i8*, i8** %c.addr, align 8
  store i8* %147, i8** %a.addr.i271, align 8
  store i32 0, i32* %ra.addr.i272, align 4
  store i8* %arraydecay43, i8** %b.addr.i273, align 8
  store i32 1, i32* %rb.addr.i274, align 4
  store i8* %149, i8** %c.addr.i275, align 8
  store i32 0, i32* %i.i276, align 4
  br label %for.cond.i278

for.cond.i278:                                    ; preds = %for.body.i293, %vadd.exit320
  %150 = load i32, i32* %i.i276, align 4
  %cmp.i277 = icmp sle i32 %150, 100
  br i1 %cmp.i277, label %for.body.i293, label %vadd.exit295

for.body.i293:                                    ; preds = %for.cond.i278
  %151 = load i8*, i8** %a.addr.i271, align 8
  %152 = load i32, i32* %i.i276, align 4
  %153 = load i32, i32* %ra.addr.i272, align 4
  %add.i279 = add nsw i32 %152, %153
  %rem.i280 = srem i32 %add.i279, 101
  %idxprom.i281 = sext i32 %rem.i280 to i64
  %arrayidx.i282 = getelementptr inbounds i8, i8* %151, i64 %idxprom.i281
  %154 = load i8, i8* %arrayidx.i282, align 1
  %conv.i283 = zext i8 %154 to i32
  %155 = load i8*, i8** %b.addr.i273, align 8
  %156 = load i32, i32* %i.i276, align 4
  %157 = load i32, i32* %rb.addr.i274, align 4
  %add1.i284 = add nsw i32 %156, %157
  %rem2.i285 = srem i32 %add1.i284, 101
  %idxprom3.i286 = sext i32 %rem2.i285 to i64
  %arrayidx4.i287 = getelementptr inbounds i8, i8* %155, i64 %idxprom3.i286
  %158 = load i8, i8* %arrayidx4.i287, align 1
  %conv5.i288 = zext i8 %158 to i32
  %xor.i289 = xor i32 %conv.i283, %conv5.i288
  %conv6.i290 = trunc i32 %xor.i289 to i8
  %159 = load i8*, i8** %c.addr.i275, align 8
  %160 = load i32, i32* %i.i276, align 4
  %idxprom7.i291 = sext i32 %160 to i64
  %arrayidx8.i292 = getelementptr inbounds i8, i8* %159, i64 %idxprom7.i291
  store i8 %conv6.i290, i8* %arrayidx8.i292, align 1
  %161 = load i32, i32* %i.i276, align 4
  %inc.i294 = add nsw i32 %161, 1
  store i32 %inc.i294, i32* %i.i276, align 4
  br label %for.cond.i278

vadd.exit295:                                     ; preds = %for.cond.i278
  %162 = load i8*, i8** %c.addr, align 8
  %arraydecay44 = getelementptr inbounds [101 x i8], [101 x i8]* %ab2, i64 0, i64 0
  %163 = load i8*, i8** %c.addr, align 8
  store i8* %162, i8** %a.addr.i246, align 8
  store i32 0, i32* %ra.addr.i247, align 4
  store i8* %arraydecay44, i8** %b.addr.i248, align 8
  store i32 0, i32* %rb.addr.i249, align 4
  store i8* %163, i8** %c.addr.i250, align 8
  store i32 0, i32* %i.i251, align 4
  br label %for.cond.i253

for.cond.i253:                                    ; preds = %for.body.i268, %vadd.exit295
  %164 = load i32, i32* %i.i251, align 4
  %cmp.i252 = icmp sle i32 %164, 100
  br i1 %cmp.i252, label %for.body.i268, label %vadd.exit270

for.body.i268:                                    ; preds = %for.cond.i253
  %165 = load i8*, i8** %a.addr.i246, align 8
  %166 = load i32, i32* %i.i251, align 4
  %167 = load i32, i32* %ra.addr.i247, align 4
  %add.i254 = add nsw i32 %166, %167
  %rem.i255 = srem i32 %add.i254, 101
  %idxprom.i256 = sext i32 %rem.i255 to i64
  %arrayidx.i257 = getelementptr inbounds i8, i8* %165, i64 %idxprom.i256
  %168 = load i8, i8* %arrayidx.i257, align 1
  %conv.i258 = zext i8 %168 to i32
  %169 = load i8*, i8** %b.addr.i248, align 8
  %170 = load i32, i32* %i.i251, align 4
  %171 = load i32, i32* %rb.addr.i249, align 4
  %add1.i259 = add nsw i32 %170, %171
  %rem2.i260 = srem i32 %add1.i259, 101
  %idxprom3.i261 = sext i32 %rem2.i260 to i64
  %arrayidx4.i262 = getelementptr inbounds i8, i8* %169, i64 %idxprom3.i261
  %172 = load i8, i8* %arrayidx4.i262, align 1
  %conv5.i263 = zext i8 %172 to i32
  %xor.i264 = xor i32 %conv.i258, %conv5.i263
  %conv6.i265 = trunc i32 %xor.i264 to i8
  %173 = load i8*, i8** %c.addr.i250, align 8
  %174 = load i32, i32* %i.i251, align 4
  %idxprom7.i266 = sext i32 %174 to i64
  %arrayidx8.i267 = getelementptr inbounds i8, i8* %173, i64 %idxprom7.i266
  store i8 %conv6.i265, i8* %arrayidx8.i267, align 1
  %175 = load i32, i32* %i.i251, align 4
  %inc.i269 = add nsw i32 %175, 1
  store i32 %inc.i269, i32* %i.i251, align 4
  br label %for.cond.i253

vadd.exit270:                                     ; preds = %for.cond.i253
  %176 = load i8*, i8** %c.addr, align 8
  %arraydecay45 = getelementptr inbounds [101 x i8], [101 x i8]* %a2b, i64 0, i64 0
  %177 = load i8*, i8** %c.addr, align 8
  store i8* %176, i8** %a.addr.i221, align 8
  store i32 0, i32* %ra.addr.i222, align 4
  store i8* %arraydecay45, i8** %b.addr.i223, align 8
  store i32 0, i32* %rb.addr.i224, align 4
  store i8* %177, i8** %c.addr.i225, align 8
  store i32 0, i32* %i.i226, align 4
  br label %for.cond.i228

for.cond.i228:                                    ; preds = %for.body.i243, %vadd.exit270
  %178 = load i32, i32* %i.i226, align 4
  %cmp.i227 = icmp sle i32 %178, 100
  br i1 %cmp.i227, label %for.body.i243, label %vadd.exit245

for.body.i243:                                    ; preds = %for.cond.i228
  %179 = load i8*, i8** %a.addr.i221, align 8
  %180 = load i32, i32* %i.i226, align 4
  %181 = load i32, i32* %ra.addr.i222, align 4
  %add.i229 = add nsw i32 %180, %181
  %rem.i230 = srem i32 %add.i229, 101
  %idxprom.i231 = sext i32 %rem.i230 to i64
  %arrayidx.i232 = getelementptr inbounds i8, i8* %179, i64 %idxprom.i231
  %182 = load i8, i8* %arrayidx.i232, align 1
  %conv.i233 = zext i8 %182 to i32
  %183 = load i8*, i8** %b.addr.i223, align 8
  %184 = load i32, i32* %i.i226, align 4
  %185 = load i32, i32* %rb.addr.i224, align 4
  %add1.i234 = add nsw i32 %184, %185
  %rem2.i235 = srem i32 %add1.i234, 101
  %idxprom3.i236 = sext i32 %rem2.i235 to i64
  %arrayidx4.i237 = getelementptr inbounds i8, i8* %183, i64 %idxprom3.i236
  %186 = load i8, i8* %arrayidx4.i237, align 1
  %conv5.i238 = zext i8 %186 to i32
  %xor.i239 = xor i32 %conv.i233, %conv5.i238
  %conv6.i240 = trunc i32 %xor.i239 to i8
  %187 = load i8*, i8** %c.addr.i225, align 8
  %188 = load i32, i32* %i.i226, align 4
  %idxprom7.i241 = sext i32 %188 to i64
  %arrayidx8.i242 = getelementptr inbounds i8, i8* %187, i64 %idxprom7.i241
  store i8 %conv6.i240, i8* %arrayidx8.i242, align 1
  %189 = load i32, i32* %i.i226, align 4
  %inc.i244 = add nsw i32 %189, 1
  store i32 %inc.i244, i32* %i.i226, align 4
  br label %for.cond.i228

vadd.exit245:                                     ; preds = %for.cond.i228
  br label %for.inc46

for.inc46:                                        ; preds = %vadd.exit245
  %190 = load i32, i32* %i22, align 4
  %inc47 = add nsw i32 %190, 1
  store i32 %inc47, i32* %i22, align 4
  br label %for.cond23

for.end48:                                        ; preds = %for.cond23
  store i32 25, i32* %l, align 4
  %191 = load i8, i8* %A, align 1
  %192 = load i8, i8* %B, align 1
  %call49 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192)
  %conv50 = zext i8 %call49 to i32
  %193 = load i8*, i8** %c.addr, align 8
  store i8* %193, i8** %a.addr.i183, align 8
  %194 = load i8*, i8** %a.addr.i183, align 8
  store i8* %194, i8** %a.addr.i.i179, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i180, align 8
  store i32 0, i32* %i.i.i182, align 4
  br label %for.cond.i.i185

for.cond.i.i185:                                  ; preds = %for.body.i.i194, %for.end48
  %195 = load i32, i32* %i.i.i182, align 4
  %cmp.i.i184 = icmp sle i32 %195, 100
  br i1 %cmp.i.i184, label %for.body.i.i194, label %xors.exit195

for.body.i.i194:                                  ; preds = %for.cond.i.i185
  %196 = load i8 (i8)*, i8 (i8)** %f.addr.i.i180, align 8
  %197 = load i8*, i8** %a.addr.i.i179, align 8
  %198 = load i32, i32* %i.i.i182, align 4
  %idxprom.i.i186 = sext i32 %198 to i64
  %arrayidx.i.i187 = getelementptr inbounds i8, i8* %197, i64 %idxprom.i.i186
  %199 = load i8, i8* %arrayidx.i.i187, align 1
  %call.i.i188 = call zeroext i8 %196(i8 zeroext %199) #2
  %conv.i.i189 = zext i8 %call.i.i188 to i32
  %200 = load i8, i8* %result.i.i181, align 1
  %conv1.i.i190 = zext i8 %200 to i32
  %xor.i.i191 = xor i32 %conv1.i.i190, %conv.i.i189
  %conv2.i.i192 = trunc i32 %xor.i.i191 to i8
  store i8 %conv2.i.i192, i8* %result.i.i181, align 1
  %201 = load i32, i32* %i.i.i182, align 4
  %inc.i.i193 = add nsw i32 %201, 1
  store i32 %inc.i.i193, i32* %i.i.i182, align 4
  br label %for.cond.i.i185

xors.exit195:                                     ; preds = %for.cond.i.i185
  %202 = load i8, i8* %result.i.i181, align 1
  %conv52 = zext i8 %202 to i32
  %cmp53 = icmp eq i32 %conv50, %conv52
  call void @assert(i1 zeroext %cmp53)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
