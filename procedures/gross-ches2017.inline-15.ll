; ModuleID = '../examples/gross-ches2017.c'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 15, align 4
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
  %cmp = icmp sle i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 16
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 16
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
  %cmp = icmp sle i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 16
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 16
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
  %a.addr.i497 = alloca i8*, align 8
  %ra.addr.i498 = alloca i32, align 4
  %b.addr.i499 = alloca i8*, align 8
  %rb.addr.i500 = alloca i32, align 4
  %c.addr.i501 = alloca i8*, align 8
  %i.i502 = alloca i32, align 4
  %a.addr.i472 = alloca i8*, align 8
  %ra.addr.i473 = alloca i32, align 4
  %b.addr.i474 = alloca i8*, align 8
  %rb.addr.i475 = alloca i32, align 4
  %c.addr.i476 = alloca i8*, align 8
  %i.i477 = alloca i32, align 4
  %a.addr.i450 = alloca i8*, align 8
  %ra.addr.i451 = alloca i32, align 4
  %b.addr.i452 = alloca i8*, align 8
  %rb.addr.i453 = alloca i32, align 4
  %c.addr.i454 = alloca i8*, align 8
  %i.i455 = alloca i32, align 4
  %a.addr.i425 = alloca i8*, align 8
  %ra.addr.i426 = alloca i32, align 4
  %b.addr.i427 = alloca i8*, align 8
  %rb.addr.i428 = alloca i32, align 4
  %c.addr.i429 = alloca i8*, align 8
  %i.i430 = alloca i32, align 4
  %a.addr.i403 = alloca i8*, align 8
  %ra.addr.i404 = alloca i32, align 4
  %b.addr.i405 = alloca i8*, align 8
  %rb.addr.i406 = alloca i32, align 4
  %c.addr.i407 = alloca i8*, align 8
  %i.i408 = alloca i32, align 4
  %a.addr.i378 = alloca i8*, align 8
  %ra.addr.i379 = alloca i32, align 4
  %b.addr.i380 = alloca i8*, align 8
  %rb.addr.i381 = alloca i32, align 4
  %c.addr.i382 = alloca i8*, align 8
  %i.i383 = alloca i32, align 4
  %a.addr.i356 = alloca i8*, align 8
  %ra.addr.i357 = alloca i32, align 4
  %b.addr.i358 = alloca i8*, align 8
  %rb.addr.i359 = alloca i32, align 4
  %c.addr.i360 = alloca i8*, align 8
  %i.i361 = alloca i32, align 4
  %a.addr.i331 = alloca i8*, align 8
  %ra.addr.i332 = alloca i32, align 4
  %b.addr.i333 = alloca i8*, align 8
  %rb.addr.i334 = alloca i32, align 4
  %c.addr.i335 = alloca i8*, align 8
  %i.i336 = alloca i32, align 4
  %a.addr.i306 = alloca i8*, align 8
  %ra.addr.i307 = alloca i32, align 4
  %b.addr.i308 = alloca i8*, align 8
  %rb.addr.i309 = alloca i32, align 4
  %c.addr.i310 = alloca i8*, align 8
  %i.i311 = alloca i32, align 4
  %a.addr.i281 = alloca i8*, align 8
  %ra.addr.i282 = alloca i32, align 4
  %b.addr.i283 = alloca i8*, align 8
  %rb.addr.i284 = alloca i32, align 4
  %c.addr.i285 = alloca i8*, align 8
  %i.i286 = alloca i32, align 4
  %a.addr.i256 = alloca i8*, align 8
  %ra.addr.i257 = alloca i32, align 4
  %b.addr.i258 = alloca i8*, align 8
  %rb.addr.i259 = alloca i32, align 4
  %c.addr.i260 = alloca i8*, align 8
  %i.i261 = alloca i32, align 4
  %a.addr.i231 = alloca i8*, align 8
  %ra.addr.i232 = alloca i32, align 4
  %b.addr.i233 = alloca i8*, align 8
  %rb.addr.i234 = alloca i32, align 4
  %c.addr.i235 = alloca i8*, align 8
  %i.i236 = alloca i32, align 4
  %a.addr.i206 = alloca i8*, align 8
  %ra.addr.i207 = alloca i32, align 4
  %b.addr.i208 = alloca i8*, align 8
  %rb.addr.i209 = alloca i32, align 4
  %c.addr.i210 = alloca i8*, align 8
  %i.i211 = alloca i32, align 4
  %a.addr.i.i189 = alloca i8*, align 8
  %f.addr.i.i190 = alloca i8 (i8)*, align 8
  %result.i.i191 = alloca i8, align 1
  %i.i.i192 = alloca i32, align 4
  %a.addr.i193 = alloca i8*, align 8
  %a.addr.i171 = alloca i8*, align 8
  %ra.addr.i172 = alloca i32, align 4
  %b.addr.i173 = alloca i8*, align 8
  %rb.addr.i174 = alloca i32, align 4
  %c.addr.i175 = alloca i8*, align 8
  %i.i176 = alloca i32, align 4
  %a.addr.i149 = alloca i8*, align 8
  %ra.addr.i150 = alloca i32, align 4
  %b.addr.i151 = alloca i8*, align 8
  %rb.addr.i152 = alloca i32, align 4
  %c.addr.i153 = alloca i8*, align 8
  %i.i154 = alloca i32, align 4
  %a.addr.i127 = alloca i8*, align 8
  %ra.addr.i128 = alloca i32, align 4
  %b.addr.i129 = alloca i8*, align 8
  %rb.addr.i130 = alloca i32, align 4
  %c.addr.i131 = alloca i8*, align 8
  %i.i132 = alloca i32, align 4
  %a.addr.i105 = alloca i8*, align 8
  %ra.addr.i106 = alloca i32, align 4
  %b.addr.i107 = alloca i8*, align 8
  %rb.addr.i108 = alloca i32, align 4
  %c.addr.i109 = alloca i8*, align 8
  %i.i110 = alloca i32, align 4
  %a.addr.i83 = alloca i8*, align 8
  %ra.addr.i84 = alloca i32, align 4
  %b.addr.i85 = alloca i8*, align 8
  %rb.addr.i86 = alloca i32, align 4
  %c.addr.i87 = alloca i8*, align 8
  %i.i88 = alloca i32, align 4
  %a.addr.i82 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i65 = alloca i8*, align 8
  %f.addr.i.i66 = alloca i8 (i8)*, align 8
  %result.i.i67 = alloca i8, align 1
  %i.i.i68 = alloca i32, align 4
  %a.addr.i69 = alloca i8*, align 8
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
  %r = alloca [16 x [16 x i8]], align 16
  %a1b = alloca [16 x i8], align 16
  %ab1 = alloca [16 x i8], align 16
  %a2b = alloca [16 x i8], align 16
  %ab2 = alloca [16 x i8], align 16
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
  store i8* %12, i8** %a.addr.i69, align 8
  %13 = load i8*, i8** %a.addr.i69, align 8
  store i8* %13, i8** %a.addr.i.i65, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i66, align 8
  store i32 0, i32* %i.i.i68, align 4
  br label %for.cond.i.i71

for.cond.i.i71:                                   ; preds = %for.body.i.i80, %xors.exit
  %14 = load i32, i32* %i.i.i68, align 4
  %cmp.i.i70 = icmp sle i32 %14, 15
  br i1 %cmp.i.i70, label %for.body.i.i80, label %xors.exit81

for.body.i.i80:                                   ; preds = %for.cond.i.i71
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i66, align 8
  %16 = load i8*, i8** %a.addr.i.i65, align 8
  %17 = load i32, i32* %i.i.i68, align 4
  %idxprom.i.i72 = sext i32 %17 to i64
  %arrayidx.i.i73 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i72
  %18 = load i8, i8* %arrayidx.i.i73, align 1
  %call.i.i74 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i75 = zext i8 %call.i.i74 to i32
  %19 = load i8, i8* %result.i.i67, align 1
  %conv1.i.i76 = zext i8 %19 to i32
  %xor.i.i77 = xor i32 %conv1.i.i76, %conv.i.i75
  %conv2.i.i78 = trunc i32 %xor.i.i77 to i8
  store i8 %conv2.i.i78, i8* %result.i.i67, align 1
  %20 = load i32, i32* %i.i.i68, align 4
  %inc.i.i79 = add nsw i32 %20, 1
  store i32 %inc.i.i79, i32* %i.i.i68, align 4
  br label %for.cond.i.i71

xors.exit81:                                      ; preds = %for.cond.i.i71
  %21 = load i8, i8* %result.i.i67, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 16, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit81
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 15
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 15
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i64 0, i64 %idxprom17
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
  store i8* %28, i8** %a.addr.i82, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %30, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %31 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %31, 15
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %32 = load i8*, i8** %a.addr.i82, align 8
  %33 = load i32, i32* %i.i, align 4
  %34 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %33, %34
  %rem.i = srem i32 %add.i, 16
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %32, i64 %idxprom.i
  %35 = load i8, i8* %arrayidx.i, align 1
  %36 = load i8*, i8** %b.addr.i, align 8
  %37 = load i32, i32* %i.i, align 4
  %38 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %37, %38
  %rem2.i = srem i32 %add1.i, 16
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
  %cmp24 = icmp slt i32 %43, 3
  br i1 %cmp24, label %for.body26, label %for.end48

for.body26:                                       ; preds = %for.cond23
  %44 = load i8*, i8** %a.addr, align 8
  %45 = load i8*, i8** %b.addr, align 8
  %46 = load i32, i32* %i22, align 4
  %mul = mul nsw i32 2, %46
  %add = add nsw i32 %mul, 1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  store i8* %44, i8** %a.addr.i83, align 8
  store i32 0, i32* %ra.addr.i84, align 4
  store i8* %45, i8** %b.addr.i85, align 8
  store i32 %add, i32* %rb.addr.i86, align 4
  store i8* %arraydecay, i8** %c.addr.i87, align 8
  store i32 0, i32* %i.i88, align 4
  br label %for.cond.i90

for.cond.i90:                                     ; preds = %for.body.i102, %for.body26
  %47 = load i32, i32* %i.i88, align 4
  %cmp.i89 = icmp sle i32 %47, 15
  br i1 %cmp.i89, label %for.body.i102, label %vmult.exit104

for.body.i102:                                    ; preds = %for.cond.i90
  %48 = load i8*, i8** %a.addr.i83, align 8
  %49 = load i32, i32* %i.i88, align 4
  %50 = load i32, i32* %ra.addr.i84, align 4
  %add.i91 = add nsw i32 %49, %50
  %rem.i92 = srem i32 %add.i91, 16
  %idxprom.i93 = sext i32 %rem.i92 to i64
  %arrayidx.i94 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i93
  %51 = load i8, i8* %arrayidx.i94, align 1
  %52 = load i8*, i8** %b.addr.i85, align 8
  %53 = load i32, i32* %i.i88, align 4
  %54 = load i32, i32* %rb.addr.i86, align 4
  %add1.i95 = add nsw i32 %53, %54
  %rem2.i96 = srem i32 %add1.i95, 16
  %idxprom3.i97 = sext i32 %rem2.i96 to i64
  %arrayidx4.i98 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i97
  %55 = load i8, i8* %arrayidx4.i98, align 1
  %call.i99 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i87, align 8
  %57 = load i32, i32* %i.i88, align 4
  %idxprom5.i100 = sext i32 %57 to i64
  %arrayidx6.i101 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i100
  store i8 %call.i99, i8* %arrayidx6.i101, align 1
  %58 = load i32, i32* %i.i88, align 4
  %inc.i103 = add nsw i32 %58, 1
  store i32 %inc.i103, i32* %i.i88, align 4
  br label %for.cond.i90

vmult.exit104:                                    ; preds = %for.cond.i90
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i22, align 4
  %mul27 = mul nsw i32 2, %60
  %add28 = add nsw i32 %mul27, 1
  %61 = load i8*, i8** %b.addr, align 8
  %arraydecay29 = getelementptr inbounds [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  store i8* %59, i8** %a.addr.i105, align 8
  store i32 %add28, i32* %ra.addr.i106, align 4
  store i8* %61, i8** %b.addr.i107, align 8
  store i32 0, i32* %rb.addr.i108, align 4
  store i8* %arraydecay29, i8** %c.addr.i109, align 8
  store i32 0, i32* %i.i110, align 4
  br label %for.cond.i112

for.cond.i112:                                    ; preds = %for.body.i124, %vmult.exit104
  %62 = load i32, i32* %i.i110, align 4
  %cmp.i111 = icmp sle i32 %62, 15
  br i1 %cmp.i111, label %for.body.i124, label %vmult.exit126

for.body.i124:                                    ; preds = %for.cond.i112
  %63 = load i8*, i8** %a.addr.i105, align 8
  %64 = load i32, i32* %i.i110, align 4
  %65 = load i32, i32* %ra.addr.i106, align 4
  %add.i113 = add nsw i32 %64, %65
  %rem.i114 = srem i32 %add.i113, 16
  %idxprom.i115 = sext i32 %rem.i114 to i64
  %arrayidx.i116 = getelementptr inbounds i8, i8* %63, i64 %idxprom.i115
  %66 = load i8, i8* %arrayidx.i116, align 1
  %67 = load i8*, i8** %b.addr.i107, align 8
  %68 = load i32, i32* %i.i110, align 4
  %69 = load i32, i32* %rb.addr.i108, align 4
  %add1.i117 = add nsw i32 %68, %69
  %rem2.i118 = srem i32 %add1.i117, 16
  %idxprom3.i119 = sext i32 %rem2.i118 to i64
  %arrayidx4.i120 = getelementptr inbounds i8, i8* %67, i64 %idxprom3.i119
  %70 = load i8, i8* %arrayidx4.i120, align 1
  %call.i121 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %70) #2
  %71 = load i8*, i8** %c.addr.i109, align 8
  %72 = load i32, i32* %i.i110, align 4
  %idxprom5.i122 = sext i32 %72 to i64
  %arrayidx6.i123 = getelementptr inbounds i8, i8* %71, i64 %idxprom5.i122
  store i8 %call.i121, i8* %arrayidx6.i123, align 1
  %73 = load i32, i32* %i.i110, align 4
  %inc.i125 = add nsw i32 %73, 1
  store i32 %inc.i125, i32* %i.i110, align 4
  br label %for.cond.i112

vmult.exit126:                                    ; preds = %for.cond.i112
  %74 = load i8*, i8** %a.addr, align 8
  %75 = load i8*, i8** %b.addr, align 8
  %76 = load i32, i32* %i22, align 4
  %mul30 = mul nsw i32 2, %76
  %add31 = add nsw i32 %mul30, 2
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  store i8* %74, i8** %a.addr.i127, align 8
  store i32 0, i32* %ra.addr.i128, align 4
  store i8* %75, i8** %b.addr.i129, align 8
  store i32 %add31, i32* %rb.addr.i130, align 4
  store i8* %arraydecay32, i8** %c.addr.i131, align 8
  store i32 0, i32* %i.i132, align 4
  br label %for.cond.i134

for.cond.i134:                                    ; preds = %for.body.i146, %vmult.exit126
  %77 = load i32, i32* %i.i132, align 4
  %cmp.i133 = icmp sle i32 %77, 15
  br i1 %cmp.i133, label %for.body.i146, label %vmult.exit148

for.body.i146:                                    ; preds = %for.cond.i134
  %78 = load i8*, i8** %a.addr.i127, align 8
  %79 = load i32, i32* %i.i132, align 4
  %80 = load i32, i32* %ra.addr.i128, align 4
  %add.i135 = add nsw i32 %79, %80
  %rem.i136 = srem i32 %add.i135, 16
  %idxprom.i137 = sext i32 %rem.i136 to i64
  %arrayidx.i138 = getelementptr inbounds i8, i8* %78, i64 %idxprom.i137
  %81 = load i8, i8* %arrayidx.i138, align 1
  %82 = load i8*, i8** %b.addr.i129, align 8
  %83 = load i32, i32* %i.i132, align 4
  %84 = load i32, i32* %rb.addr.i130, align 4
  %add1.i139 = add nsw i32 %83, %84
  %rem2.i140 = srem i32 %add1.i139, 16
  %idxprom3.i141 = sext i32 %rem2.i140 to i64
  %arrayidx4.i142 = getelementptr inbounds i8, i8* %82, i64 %idxprom3.i141
  %85 = load i8, i8* %arrayidx4.i142, align 1
  %call.i143 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %85) #2
  %86 = load i8*, i8** %c.addr.i131, align 8
  %87 = load i32, i32* %i.i132, align 4
  %idxprom5.i144 = sext i32 %87 to i64
  %arrayidx6.i145 = getelementptr inbounds i8, i8* %86, i64 %idxprom5.i144
  store i8 %call.i143, i8* %arrayidx6.i145, align 1
  %88 = load i32, i32* %i.i132, align 4
  %inc.i147 = add nsw i32 %88, 1
  store i32 %inc.i147, i32* %i.i132, align 4
  br label %for.cond.i134

vmult.exit148:                                    ; preds = %for.cond.i134
  %89 = load i8*, i8** %a.addr, align 8
  %90 = load i32, i32* %i22, align 4
  %mul33 = mul nsw i32 2, %90
  %add34 = add nsw i32 %mul33, 2
  %91 = load i8*, i8** %b.addr, align 8
  %arraydecay35 = getelementptr inbounds [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  store i8* %89, i8** %a.addr.i149, align 8
  store i32 %add34, i32* %ra.addr.i150, align 4
  store i8* %91, i8** %b.addr.i151, align 8
  store i32 0, i32* %rb.addr.i152, align 4
  store i8* %arraydecay35, i8** %c.addr.i153, align 8
  store i32 0, i32* %i.i154, align 4
  br label %for.cond.i156

for.cond.i156:                                    ; preds = %for.body.i168, %vmult.exit148
  %92 = load i32, i32* %i.i154, align 4
  %cmp.i155 = icmp sle i32 %92, 15
  br i1 %cmp.i155, label %for.body.i168, label %vmult.exit170

for.body.i168:                                    ; preds = %for.cond.i156
  %93 = load i8*, i8** %a.addr.i149, align 8
  %94 = load i32, i32* %i.i154, align 4
  %95 = load i32, i32* %ra.addr.i150, align 4
  %add.i157 = add nsw i32 %94, %95
  %rem.i158 = srem i32 %add.i157, 16
  %idxprom.i159 = sext i32 %rem.i158 to i64
  %arrayidx.i160 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i159
  %96 = load i8, i8* %arrayidx.i160, align 1
  %97 = load i8*, i8** %b.addr.i151, align 8
  %98 = load i32, i32* %i.i154, align 4
  %99 = load i32, i32* %rb.addr.i152, align 4
  %add1.i161 = add nsw i32 %98, %99
  %rem2.i162 = srem i32 %add1.i161, 16
  %idxprom3.i163 = sext i32 %rem2.i162 to i64
  %arrayidx4.i164 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i163
  %100 = load i8, i8* %arrayidx4.i164, align 1
  %call.i165 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i153, align 8
  %102 = load i32, i32* %i.i154, align 4
  %idxprom5.i166 = sext i32 %102 to i64
  %arrayidx6.i167 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i166
  store i8 %call.i165, i8* %arrayidx6.i167, align 1
  %103 = load i32, i32* %i.i154, align 4
  %inc.i169 = add nsw i32 %103, 1
  store i32 %inc.i169, i32* %i.i154, align 4
  br label %for.cond.i156

vmult.exit170:                                    ; preds = %for.cond.i156
  %104 = load i8*, i8** %c.addr, align 8
  %105 = load i32, i32* %i22, align 4
  %idxprom36 = sext i32 %105 to i64
  %arrayidx37 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx37, i64 0, i64 0
  %106 = load i8*, i8** %c.addr, align 8
  store i8* %104, i8** %a.addr.i171, align 8
  store i32 0, i32* %ra.addr.i172, align 4
  store i8* %arraydecay38, i8** %b.addr.i173, align 8
  store i32 0, i32* %rb.addr.i174, align 4
  store i8* %106, i8** %c.addr.i175, align 8
  store i32 0, i32* %i.i176, align 4
  br label %for.cond.i178

for.cond.i178:                                    ; preds = %for.body.i187, %vmult.exit170
  %107 = load i32, i32* %i.i176, align 4
  %cmp.i177 = icmp sle i32 %107, 15
  br i1 %cmp.i177, label %for.body.i187, label %vadd.exit

for.body.i187:                                    ; preds = %for.cond.i178
  %108 = load i8*, i8** %a.addr.i171, align 8
  %109 = load i32, i32* %i.i176, align 4
  %110 = load i32, i32* %ra.addr.i172, align 4
  %add.i179 = add nsw i32 %109, %110
  %rem.i180 = srem i32 %add.i179, 16
  %idxprom.i181 = sext i32 %rem.i180 to i64
  %arrayidx.i182 = getelementptr inbounds i8, i8* %108, i64 %idxprom.i181
  %111 = load i8, i8* %arrayidx.i182, align 1
  %conv.i = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i173, align 8
  %113 = load i32, i32* %i.i176, align 4
  %114 = load i32, i32* %rb.addr.i174, align 4
  %add1.i183 = add nsw i32 %113, %114
  %rem2.i184 = srem i32 %add1.i183, 16
  %idxprom3.i185 = sext i32 %rem2.i184 to i64
  %arrayidx4.i186 = getelementptr inbounds i8, i8* %112, i64 %idxprom3.i185
  %115 = load i8, i8* %arrayidx4.i186, align 1
  %conv5.i = zext i8 %115 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %116 = load i8*, i8** %c.addr.i175, align 8
  %117 = load i32, i32* %i.i176, align 4
  %idxprom7.i = sext i32 %117 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %118 = load i32, i32* %i.i176, align 4
  %inc.i188 = add nsw i32 %118, 1
  store i32 %inc.i188, i32* %i.i176, align 4
  br label %for.cond.i178

vadd.exit:                                        ; preds = %for.cond.i178
  %119 = load i8*, i8** %c.addr, align 8
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %119, i8** %a.addr.i206, align 8
  store i32 0, i32* %ra.addr.i207, align 4
  store i8* %arraydecay39, i8** %b.addr.i208, align 8
  store i32 0, i32* %rb.addr.i209, align 4
  store i8* %120, i8** %c.addr.i210, align 8
  store i32 0, i32* %i.i211, align 4
  br label %for.cond.i213

for.cond.i213:                                    ; preds = %for.body.i228, %vadd.exit
  %121 = load i32, i32* %i.i211, align 4
  %cmp.i212 = icmp sle i32 %121, 15
  br i1 %cmp.i212, label %for.body.i228, label %vadd.exit230

for.body.i228:                                    ; preds = %for.cond.i213
  %122 = load i8*, i8** %a.addr.i206, align 8
  %123 = load i32, i32* %i.i211, align 4
  %124 = load i32, i32* %ra.addr.i207, align 4
  %add.i214 = add nsw i32 %123, %124
  %rem.i215 = srem i32 %add.i214, 16
  %idxprom.i216 = sext i32 %rem.i215 to i64
  %arrayidx.i217 = getelementptr inbounds i8, i8* %122, i64 %idxprom.i216
  %125 = load i8, i8* %arrayidx.i217, align 1
  %conv.i218 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i208, align 8
  %127 = load i32, i32* %i.i211, align 4
  %128 = load i32, i32* %rb.addr.i209, align 4
  %add1.i219 = add nsw i32 %127, %128
  %rem2.i220 = srem i32 %add1.i219, 16
  %idxprom3.i221 = sext i32 %rem2.i220 to i64
  %arrayidx4.i222 = getelementptr inbounds i8, i8* %126, i64 %idxprom3.i221
  %129 = load i8, i8* %arrayidx4.i222, align 1
  %conv5.i223 = zext i8 %129 to i32
  %xor.i224 = xor i32 %conv.i218, %conv5.i223
  %conv6.i225 = trunc i32 %xor.i224 to i8
  %130 = load i8*, i8** %c.addr.i210, align 8
  %131 = load i32, i32* %i.i211, align 4
  %idxprom7.i226 = sext i32 %131 to i64
  %arrayidx8.i227 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i226
  store i8 %conv6.i225, i8* %arrayidx8.i227, align 1
  %132 = load i32, i32* %i.i211, align 4
  %inc.i229 = add nsw i32 %132, 1
  store i32 %inc.i229, i32* %i.i211, align 4
  br label %for.cond.i213

vadd.exit230:                                     ; preds = %for.cond.i213
  %133 = load i8*, i8** %c.addr, align 8
  %arraydecay40 = getelementptr inbounds [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  %134 = load i8*, i8** %c.addr, align 8
  store i8* %133, i8** %a.addr.i378, align 8
  store i32 0, i32* %ra.addr.i379, align 4
  store i8* %arraydecay40, i8** %b.addr.i380, align 8
  store i32 0, i32* %rb.addr.i381, align 4
  store i8* %134, i8** %c.addr.i382, align 8
  store i32 0, i32* %i.i383, align 4
  br label %for.cond.i385

for.cond.i385:                                    ; preds = %for.body.i400, %vadd.exit230
  %135 = load i32, i32* %i.i383, align 4
  %cmp.i384 = icmp sle i32 %135, 15
  br i1 %cmp.i384, label %for.body.i400, label %vadd.exit402

for.body.i400:                                    ; preds = %for.cond.i385
  %136 = load i8*, i8** %a.addr.i378, align 8
  %137 = load i32, i32* %i.i383, align 4
  %138 = load i32, i32* %ra.addr.i379, align 4
  %add.i386 = add nsw i32 %137, %138
  %rem.i387 = srem i32 %add.i386, 16
  %idxprom.i388 = sext i32 %rem.i387 to i64
  %arrayidx.i389 = getelementptr inbounds i8, i8* %136, i64 %idxprom.i388
  %139 = load i8, i8* %arrayidx.i389, align 1
  %conv.i390 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i380, align 8
  %141 = load i32, i32* %i.i383, align 4
  %142 = load i32, i32* %rb.addr.i381, align 4
  %add1.i391 = add nsw i32 %141, %142
  %rem2.i392 = srem i32 %add1.i391, 16
  %idxprom3.i393 = sext i32 %rem2.i392 to i64
  %arrayidx4.i394 = getelementptr inbounds i8, i8* %140, i64 %idxprom3.i393
  %143 = load i8, i8* %arrayidx4.i394, align 1
  %conv5.i395 = zext i8 %143 to i32
  %xor.i396 = xor i32 %conv.i390, %conv5.i395
  %conv6.i397 = trunc i32 %xor.i396 to i8
  %144 = load i8*, i8** %c.addr.i382, align 8
  %145 = load i32, i32* %i.i383, align 4
  %idxprom7.i398 = sext i32 %145 to i64
  %arrayidx8.i399 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i398
  store i8 %conv6.i397, i8* %arrayidx8.i399, align 1
  %146 = load i32, i32* %i.i383, align 4
  %inc.i401 = add nsw i32 %146, 1
  store i32 %inc.i401, i32* %i.i383, align 4
  br label %for.cond.i385

vadd.exit402:                                     ; preds = %for.cond.i385
  %147 = load i8*, i8** %c.addr, align 8
  %148 = load i32, i32* %i22, align 4
  %idxprom41 = sext i32 %148 to i64
  %arrayidx42 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx42, i64 0, i64 0
  %149 = load i8*, i8** %c.addr, align 8
  store i8* %147, i8** %a.addr.i425, align 8
  store i32 0, i32* %ra.addr.i426, align 4
  store i8* %arraydecay43, i8** %b.addr.i427, align 8
  store i32 1, i32* %rb.addr.i428, align 4
  store i8* %149, i8** %c.addr.i429, align 8
  store i32 0, i32* %i.i430, align 4
  br label %for.cond.i432

for.cond.i432:                                    ; preds = %for.body.i447, %vadd.exit402
  %150 = load i32, i32* %i.i430, align 4
  %cmp.i431 = icmp sle i32 %150, 15
  br i1 %cmp.i431, label %for.body.i447, label %vadd.exit449

for.body.i447:                                    ; preds = %for.cond.i432
  %151 = load i8*, i8** %a.addr.i425, align 8
  %152 = load i32, i32* %i.i430, align 4
  %153 = load i32, i32* %ra.addr.i426, align 4
  %add.i433 = add nsw i32 %152, %153
  %rem.i434 = srem i32 %add.i433, 16
  %idxprom.i435 = sext i32 %rem.i434 to i64
  %arrayidx.i436 = getelementptr inbounds i8, i8* %151, i64 %idxprom.i435
  %154 = load i8, i8* %arrayidx.i436, align 1
  %conv.i437 = zext i8 %154 to i32
  %155 = load i8*, i8** %b.addr.i427, align 8
  %156 = load i32, i32* %i.i430, align 4
  %157 = load i32, i32* %rb.addr.i428, align 4
  %add1.i438 = add nsw i32 %156, %157
  %rem2.i439 = srem i32 %add1.i438, 16
  %idxprom3.i440 = sext i32 %rem2.i439 to i64
  %arrayidx4.i441 = getelementptr inbounds i8, i8* %155, i64 %idxprom3.i440
  %158 = load i8, i8* %arrayidx4.i441, align 1
  %conv5.i442 = zext i8 %158 to i32
  %xor.i443 = xor i32 %conv.i437, %conv5.i442
  %conv6.i444 = trunc i32 %xor.i443 to i8
  %159 = load i8*, i8** %c.addr.i429, align 8
  %160 = load i32, i32* %i.i430, align 4
  %idxprom7.i445 = sext i32 %160 to i64
  %arrayidx8.i446 = getelementptr inbounds i8, i8* %159, i64 %idxprom7.i445
  store i8 %conv6.i444, i8* %arrayidx8.i446, align 1
  %161 = load i32, i32* %i.i430, align 4
  %inc.i448 = add nsw i32 %161, 1
  store i32 %inc.i448, i32* %i.i430, align 4
  br label %for.cond.i432

vadd.exit449:                                     ; preds = %for.cond.i432
  %162 = load i8*, i8** %c.addr, align 8
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  %163 = load i8*, i8** %c.addr, align 8
  store i8* %162, i8** %a.addr.i472, align 8
  store i32 0, i32* %ra.addr.i473, align 4
  store i8* %arraydecay44, i8** %b.addr.i474, align 8
  store i32 0, i32* %rb.addr.i475, align 4
  store i8* %163, i8** %c.addr.i476, align 8
  store i32 0, i32* %i.i477, align 4
  br label %for.cond.i479

for.cond.i479:                                    ; preds = %for.body.i494, %vadd.exit449
  %164 = load i32, i32* %i.i477, align 4
  %cmp.i478 = icmp sle i32 %164, 15
  br i1 %cmp.i478, label %for.body.i494, label %vadd.exit496

for.body.i494:                                    ; preds = %for.cond.i479
  %165 = load i8*, i8** %a.addr.i472, align 8
  %166 = load i32, i32* %i.i477, align 4
  %167 = load i32, i32* %ra.addr.i473, align 4
  %add.i480 = add nsw i32 %166, %167
  %rem.i481 = srem i32 %add.i480, 16
  %idxprom.i482 = sext i32 %rem.i481 to i64
  %arrayidx.i483 = getelementptr inbounds i8, i8* %165, i64 %idxprom.i482
  %168 = load i8, i8* %arrayidx.i483, align 1
  %conv.i484 = zext i8 %168 to i32
  %169 = load i8*, i8** %b.addr.i474, align 8
  %170 = load i32, i32* %i.i477, align 4
  %171 = load i32, i32* %rb.addr.i475, align 4
  %add1.i485 = add nsw i32 %170, %171
  %rem2.i486 = srem i32 %add1.i485, 16
  %idxprom3.i487 = sext i32 %rem2.i486 to i64
  %arrayidx4.i488 = getelementptr inbounds i8, i8* %169, i64 %idxprom3.i487
  %172 = load i8, i8* %arrayidx4.i488, align 1
  %conv5.i489 = zext i8 %172 to i32
  %xor.i490 = xor i32 %conv.i484, %conv5.i489
  %conv6.i491 = trunc i32 %xor.i490 to i8
  %173 = load i8*, i8** %c.addr.i476, align 8
  %174 = load i32, i32* %i.i477, align 4
  %idxprom7.i492 = sext i32 %174 to i64
  %arrayidx8.i493 = getelementptr inbounds i8, i8* %173, i64 %idxprom7.i492
  store i8 %conv6.i491, i8* %arrayidx8.i493, align 1
  %175 = load i32, i32* %i.i477, align 4
  %inc.i495 = add nsw i32 %175, 1
  store i32 %inc.i495, i32* %i.i477, align 4
  br label %for.cond.i479

vadd.exit496:                                     ; preds = %for.cond.i479
  %176 = load i8*, i8** %c.addr, align 8
  %arraydecay45 = getelementptr inbounds [16 x i8], [16 x i8]* %a2b, i64 0, i64 0
  %177 = load i8*, i8** %c.addr, align 8
  store i8* %176, i8** %a.addr.i497, align 8
  store i32 0, i32* %ra.addr.i498, align 4
  store i8* %arraydecay45, i8** %b.addr.i499, align 8
  store i32 0, i32* %rb.addr.i500, align 4
  store i8* %177, i8** %c.addr.i501, align 8
  store i32 0, i32* %i.i502, align 4
  br label %for.cond.i504

for.cond.i504:                                    ; preds = %for.body.i519, %vadd.exit496
  %178 = load i32, i32* %i.i502, align 4
  %cmp.i503 = icmp sle i32 %178, 15
  br i1 %cmp.i503, label %for.body.i519, label %vadd.exit521

for.body.i519:                                    ; preds = %for.cond.i504
  %179 = load i8*, i8** %a.addr.i497, align 8
  %180 = load i32, i32* %i.i502, align 4
  %181 = load i32, i32* %ra.addr.i498, align 4
  %add.i505 = add nsw i32 %180, %181
  %rem.i506 = srem i32 %add.i505, 16
  %idxprom.i507 = sext i32 %rem.i506 to i64
  %arrayidx.i508 = getelementptr inbounds i8, i8* %179, i64 %idxprom.i507
  %182 = load i8, i8* %arrayidx.i508, align 1
  %conv.i509 = zext i8 %182 to i32
  %183 = load i8*, i8** %b.addr.i499, align 8
  %184 = load i32, i32* %i.i502, align 4
  %185 = load i32, i32* %rb.addr.i500, align 4
  %add1.i510 = add nsw i32 %184, %185
  %rem2.i511 = srem i32 %add1.i510, 16
  %idxprom3.i512 = sext i32 %rem2.i511 to i64
  %arrayidx4.i513 = getelementptr inbounds i8, i8* %183, i64 %idxprom3.i512
  %186 = load i8, i8* %arrayidx4.i513, align 1
  %conv5.i514 = zext i8 %186 to i32
  %xor.i515 = xor i32 %conv.i509, %conv5.i514
  %conv6.i516 = trunc i32 %xor.i515 to i8
  %187 = load i8*, i8** %c.addr.i501, align 8
  %188 = load i32, i32* %i.i502, align 4
  %idxprom7.i517 = sext i32 %188 to i64
  %arrayidx8.i518 = getelementptr inbounds i8, i8* %187, i64 %idxprom7.i517
  store i8 %conv6.i516, i8* %arrayidx8.i518, align 1
  %189 = load i32, i32* %i.i502, align 4
  %inc.i520 = add nsw i32 %189, 1
  store i32 %inc.i520, i32* %i.i502, align 4
  br label %for.cond.i504

vadd.exit521:                                     ; preds = %for.cond.i504
  br label %for.inc46

for.inc46:                                        ; preds = %vadd.exit521
  %190 = load i32, i32* %i22, align 4
  %inc47 = add nsw i32 %190, 1
  store i32 %inc47, i32* %i22, align 4
  br label %for.cond23

for.end48:                                        ; preds = %for.cond23
  store i32 3, i32* %l, align 4
  %191 = load i8*, i8** %a.addr, align 8
  %192 = load i8*, i8** %b.addr, align 8
  %arraydecay49 = getelementptr inbounds [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  store i8* %191, i8** %a.addr.i450, align 8
  store i32 0, i32* %ra.addr.i451, align 4
  store i8* %192, i8** %b.addr.i452, align 8
  store i32 7, i32* %rb.addr.i453, align 4
  store i8* %arraydecay49, i8** %c.addr.i454, align 8
  store i32 0, i32* %i.i455, align 4
  br label %for.cond.i457

for.cond.i457:                                    ; preds = %for.body.i469, %for.end48
  %193 = load i32, i32* %i.i455, align 4
  %cmp.i456 = icmp sle i32 %193, 15
  br i1 %cmp.i456, label %for.body.i469, label %vmult.exit471

for.body.i469:                                    ; preds = %for.cond.i457
  %194 = load i8*, i8** %a.addr.i450, align 8
  %195 = load i32, i32* %i.i455, align 4
  %196 = load i32, i32* %ra.addr.i451, align 4
  %add.i458 = add nsw i32 %195, %196
  %rem.i459 = srem i32 %add.i458, 16
  %idxprom.i460 = sext i32 %rem.i459 to i64
  %arrayidx.i461 = getelementptr inbounds i8, i8* %194, i64 %idxprom.i460
  %197 = load i8, i8* %arrayidx.i461, align 1
  %198 = load i8*, i8** %b.addr.i452, align 8
  %199 = load i32, i32* %i.i455, align 4
  %200 = load i32, i32* %rb.addr.i453, align 4
  %add1.i462 = add nsw i32 %199, %200
  %rem2.i463 = srem i32 %add1.i462, 16
  %idxprom3.i464 = sext i32 %rem2.i463 to i64
  %arrayidx4.i465 = getelementptr inbounds i8, i8* %198, i64 %idxprom3.i464
  %201 = load i8, i8* %arrayidx4.i465, align 1
  %call.i466 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %201) #2
  %202 = load i8*, i8** %c.addr.i454, align 8
  %203 = load i32, i32* %i.i455, align 4
  %idxprom5.i467 = sext i32 %203 to i64
  %arrayidx6.i468 = getelementptr inbounds i8, i8* %202, i64 %idxprom5.i467
  store i8 %call.i466, i8* %arrayidx6.i468, align 1
  %204 = load i32, i32* %i.i455, align 4
  %inc.i470 = add nsw i32 %204, 1
  store i32 %inc.i470, i32* %i.i455, align 4
  br label %for.cond.i457

vmult.exit471:                                    ; preds = %for.cond.i457
  %205 = load i8*, i8** %a.addr, align 8
  %206 = load i8*, i8** %b.addr, align 8
  %arraydecay50 = getelementptr inbounds [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  store i8* %205, i8** %a.addr.i403, align 8
  store i32 7, i32* %ra.addr.i404, align 4
  store i8* %206, i8** %b.addr.i405, align 8
  store i32 0, i32* %rb.addr.i406, align 4
  store i8* %arraydecay50, i8** %c.addr.i407, align 8
  store i32 0, i32* %i.i408, align 4
  br label %for.cond.i410

for.cond.i410:                                    ; preds = %for.body.i422, %vmult.exit471
  %207 = load i32, i32* %i.i408, align 4
  %cmp.i409 = icmp sle i32 %207, 15
  br i1 %cmp.i409, label %for.body.i422, label %vmult.exit424

for.body.i422:                                    ; preds = %for.cond.i410
  %208 = load i8*, i8** %a.addr.i403, align 8
  %209 = load i32, i32* %i.i408, align 4
  %210 = load i32, i32* %ra.addr.i404, align 4
  %add.i411 = add nsw i32 %209, %210
  %rem.i412 = srem i32 %add.i411, 16
  %idxprom.i413 = sext i32 %rem.i412 to i64
  %arrayidx.i414 = getelementptr inbounds i8, i8* %208, i64 %idxprom.i413
  %211 = load i8, i8* %arrayidx.i414, align 1
  %212 = load i8*, i8** %b.addr.i405, align 8
  %213 = load i32, i32* %i.i408, align 4
  %214 = load i32, i32* %rb.addr.i406, align 4
  %add1.i415 = add nsw i32 %213, %214
  %rem2.i416 = srem i32 %add1.i415, 16
  %idxprom3.i417 = sext i32 %rem2.i416 to i64
  %arrayidx4.i418 = getelementptr inbounds i8, i8* %212, i64 %idxprom3.i417
  %215 = load i8, i8* %arrayidx4.i418, align 1
  %call.i419 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %215) #2
  %216 = load i8*, i8** %c.addr.i407, align 8
  %217 = load i32, i32* %i.i408, align 4
  %idxprom5.i420 = sext i32 %217 to i64
  %arrayidx6.i421 = getelementptr inbounds i8, i8* %216, i64 %idxprom5.i420
  store i8 %call.i419, i8* %arrayidx6.i421, align 1
  %218 = load i32, i32* %i.i408, align 4
  %inc.i423 = add nsw i32 %218, 1
  store i32 %inc.i423, i32* %i.i408, align 4
  br label %for.cond.i410

vmult.exit424:                                    ; preds = %for.cond.i410
  %219 = load i8*, i8** %a.addr, align 8
  %220 = load i8*, i8** %b.addr, align 8
  %arraydecay51 = getelementptr inbounds [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  store i8* %219, i8** %a.addr.i356, align 8
  store i32 0, i32* %ra.addr.i357, align 4
  store i8* %220, i8** %b.addr.i358, align 8
  store i32 8, i32* %rb.addr.i359, align 4
  store i8* %arraydecay51, i8** %c.addr.i360, align 8
  store i32 0, i32* %i.i361, align 4
  br label %for.cond.i363

for.cond.i363:                                    ; preds = %for.body.i375, %vmult.exit424
  %221 = load i32, i32* %i.i361, align 4
  %cmp.i362 = icmp sle i32 %221, 15
  br i1 %cmp.i362, label %for.body.i375, label %vmult.exit377

for.body.i375:                                    ; preds = %for.cond.i363
  %222 = load i8*, i8** %a.addr.i356, align 8
  %223 = load i32, i32* %i.i361, align 4
  %224 = load i32, i32* %ra.addr.i357, align 4
  %add.i364 = add nsw i32 %223, %224
  %rem.i365 = srem i32 %add.i364, 16
  %idxprom.i366 = sext i32 %rem.i365 to i64
  %arrayidx.i367 = getelementptr inbounds i8, i8* %222, i64 %idxprom.i366
  %225 = load i8, i8* %arrayidx.i367, align 1
  %226 = load i8*, i8** %b.addr.i358, align 8
  %227 = load i32, i32* %i.i361, align 4
  %228 = load i32, i32* %rb.addr.i359, align 4
  %add1.i368 = add nsw i32 %227, %228
  %rem2.i369 = srem i32 %add1.i368, 16
  %idxprom3.i370 = sext i32 %rem2.i369 to i64
  %arrayidx4.i371 = getelementptr inbounds i8, i8* %226, i64 %idxprom3.i370
  %229 = load i8, i8* %arrayidx4.i371, align 1
  %call.i372 = call zeroext i8 @mult(i8 zeroext %225, i8 zeroext %229) #2
  %230 = load i8*, i8** %c.addr.i360, align 8
  %231 = load i32, i32* %i.i361, align 4
  %idxprom5.i373 = sext i32 %231 to i64
  %arrayidx6.i374 = getelementptr inbounds i8, i8* %230, i64 %idxprom5.i373
  store i8 %call.i372, i8* %arrayidx6.i374, align 1
  %232 = load i32, i32* %i.i361, align 4
  %inc.i376 = add nsw i32 %232, 1
  store i32 %inc.i376, i32* %i.i361, align 4
  br label %for.cond.i363

vmult.exit377:                                    ; preds = %for.cond.i363
  %233 = load i8*, i8** %c.addr, align 8
  %arrayidx52 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 3
  %arraydecay53 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx52, i64 0, i64 0
  %234 = load i8*, i8** %c.addr, align 8
  store i8* %233, i8** %a.addr.i331, align 8
  store i32 0, i32* %ra.addr.i332, align 4
  store i8* %arraydecay53, i8** %b.addr.i333, align 8
  store i32 0, i32* %rb.addr.i334, align 4
  store i8* %234, i8** %c.addr.i335, align 8
  store i32 0, i32* %i.i336, align 4
  br label %for.cond.i338

for.cond.i338:                                    ; preds = %for.body.i353, %vmult.exit377
  %235 = load i32, i32* %i.i336, align 4
  %cmp.i337 = icmp sle i32 %235, 15
  br i1 %cmp.i337, label %for.body.i353, label %vadd.exit355

for.body.i353:                                    ; preds = %for.cond.i338
  %236 = load i8*, i8** %a.addr.i331, align 8
  %237 = load i32, i32* %i.i336, align 4
  %238 = load i32, i32* %ra.addr.i332, align 4
  %add.i339 = add nsw i32 %237, %238
  %rem.i340 = srem i32 %add.i339, 16
  %idxprom.i341 = sext i32 %rem.i340 to i64
  %arrayidx.i342 = getelementptr inbounds i8, i8* %236, i64 %idxprom.i341
  %239 = load i8, i8* %arrayidx.i342, align 1
  %conv.i343 = zext i8 %239 to i32
  %240 = load i8*, i8** %b.addr.i333, align 8
  %241 = load i32, i32* %i.i336, align 4
  %242 = load i32, i32* %rb.addr.i334, align 4
  %add1.i344 = add nsw i32 %241, %242
  %rem2.i345 = srem i32 %add1.i344, 16
  %idxprom3.i346 = sext i32 %rem2.i345 to i64
  %arrayidx4.i347 = getelementptr inbounds i8, i8* %240, i64 %idxprom3.i346
  %243 = load i8, i8* %arrayidx4.i347, align 1
  %conv5.i348 = zext i8 %243 to i32
  %xor.i349 = xor i32 %conv.i343, %conv5.i348
  %conv6.i350 = trunc i32 %xor.i349 to i8
  %244 = load i8*, i8** %c.addr.i335, align 8
  %245 = load i32, i32* %i.i336, align 4
  %idxprom7.i351 = sext i32 %245 to i64
  %arrayidx8.i352 = getelementptr inbounds i8, i8* %244, i64 %idxprom7.i351
  store i8 %conv6.i350, i8* %arrayidx8.i352, align 1
  %246 = load i32, i32* %i.i336, align 4
  %inc.i354 = add nsw i32 %246, 1
  store i32 %inc.i354, i32* %i.i336, align 4
  br label %for.cond.i338

vadd.exit355:                                     ; preds = %for.cond.i338
  %247 = load i8*, i8** %c.addr, align 8
  %arraydecay54 = getelementptr inbounds [16 x i8], [16 x i8]* %ab1, i64 0, i64 0
  %248 = load i8*, i8** %c.addr, align 8
  store i8* %247, i8** %a.addr.i306, align 8
  store i32 0, i32* %ra.addr.i307, align 4
  store i8* %arraydecay54, i8** %b.addr.i308, align 8
  store i32 0, i32* %rb.addr.i309, align 4
  store i8* %248, i8** %c.addr.i310, align 8
  store i32 0, i32* %i.i311, align 4
  br label %for.cond.i313

for.cond.i313:                                    ; preds = %for.body.i328, %vadd.exit355
  %249 = load i32, i32* %i.i311, align 4
  %cmp.i312 = icmp sle i32 %249, 15
  br i1 %cmp.i312, label %for.body.i328, label %vadd.exit330

for.body.i328:                                    ; preds = %for.cond.i313
  %250 = load i8*, i8** %a.addr.i306, align 8
  %251 = load i32, i32* %i.i311, align 4
  %252 = load i32, i32* %ra.addr.i307, align 4
  %add.i314 = add nsw i32 %251, %252
  %rem.i315 = srem i32 %add.i314, 16
  %idxprom.i316 = sext i32 %rem.i315 to i64
  %arrayidx.i317 = getelementptr inbounds i8, i8* %250, i64 %idxprom.i316
  %253 = load i8, i8* %arrayidx.i317, align 1
  %conv.i318 = zext i8 %253 to i32
  %254 = load i8*, i8** %b.addr.i308, align 8
  %255 = load i32, i32* %i.i311, align 4
  %256 = load i32, i32* %rb.addr.i309, align 4
  %add1.i319 = add nsw i32 %255, %256
  %rem2.i320 = srem i32 %add1.i319, 16
  %idxprom3.i321 = sext i32 %rem2.i320 to i64
  %arrayidx4.i322 = getelementptr inbounds i8, i8* %254, i64 %idxprom3.i321
  %257 = load i8, i8* %arrayidx4.i322, align 1
  %conv5.i323 = zext i8 %257 to i32
  %xor.i324 = xor i32 %conv.i318, %conv5.i323
  %conv6.i325 = trunc i32 %xor.i324 to i8
  %258 = load i8*, i8** %c.addr.i310, align 8
  %259 = load i32, i32* %i.i311, align 4
  %idxprom7.i326 = sext i32 %259 to i64
  %arrayidx8.i327 = getelementptr inbounds i8, i8* %258, i64 %idxprom7.i326
  store i8 %conv6.i325, i8* %arrayidx8.i327, align 1
  %260 = load i32, i32* %i.i311, align 4
  %inc.i329 = add nsw i32 %260, 1
  store i32 %inc.i329, i32* %i.i311, align 4
  br label %for.cond.i313

vadd.exit330:                                     ; preds = %for.cond.i313
  %261 = load i8*, i8** %c.addr, align 8
  %arraydecay55 = getelementptr inbounds [16 x i8], [16 x i8]* %a1b, i64 0, i64 0
  %262 = load i8*, i8** %c.addr, align 8
  store i8* %261, i8** %a.addr.i281, align 8
  store i32 0, i32* %ra.addr.i282, align 4
  store i8* %arraydecay55, i8** %b.addr.i283, align 8
  store i32 0, i32* %rb.addr.i284, align 4
  store i8* %262, i8** %c.addr.i285, align 8
  store i32 0, i32* %i.i286, align 4
  br label %for.cond.i288

for.cond.i288:                                    ; preds = %for.body.i303, %vadd.exit330
  %263 = load i32, i32* %i.i286, align 4
  %cmp.i287 = icmp sle i32 %263, 15
  br i1 %cmp.i287, label %for.body.i303, label %vadd.exit305

for.body.i303:                                    ; preds = %for.cond.i288
  %264 = load i8*, i8** %a.addr.i281, align 8
  %265 = load i32, i32* %i.i286, align 4
  %266 = load i32, i32* %ra.addr.i282, align 4
  %add.i289 = add nsw i32 %265, %266
  %rem.i290 = srem i32 %add.i289, 16
  %idxprom.i291 = sext i32 %rem.i290 to i64
  %arrayidx.i292 = getelementptr inbounds i8, i8* %264, i64 %idxprom.i291
  %267 = load i8, i8* %arrayidx.i292, align 1
  %conv.i293 = zext i8 %267 to i32
  %268 = load i8*, i8** %b.addr.i283, align 8
  %269 = load i32, i32* %i.i286, align 4
  %270 = load i32, i32* %rb.addr.i284, align 4
  %add1.i294 = add nsw i32 %269, %270
  %rem2.i295 = srem i32 %add1.i294, 16
  %idxprom3.i296 = sext i32 %rem2.i295 to i64
  %arrayidx4.i297 = getelementptr inbounds i8, i8* %268, i64 %idxprom3.i296
  %271 = load i8, i8* %arrayidx4.i297, align 1
  %conv5.i298 = zext i8 %271 to i32
  %xor.i299 = xor i32 %conv.i293, %conv5.i298
  %conv6.i300 = trunc i32 %xor.i299 to i8
  %272 = load i8*, i8** %c.addr.i285, align 8
  %273 = load i32, i32* %i.i286, align 4
  %idxprom7.i301 = sext i32 %273 to i64
  %arrayidx8.i302 = getelementptr inbounds i8, i8* %272, i64 %idxprom7.i301
  store i8 %conv6.i300, i8* %arrayidx8.i302, align 1
  %274 = load i32, i32* %i.i286, align 4
  %inc.i304 = add nsw i32 %274, 1
  store i32 %inc.i304, i32* %i.i286, align 4
  br label %for.cond.i288

vadd.exit305:                                     ; preds = %for.cond.i288
  %275 = load i8*, i8** %c.addr, align 8
  %arrayidx56 = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* %r, i64 0, i64 3
  %arraydecay57 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx56, i64 0, i64 0
  %276 = load i8*, i8** %c.addr, align 8
  store i8* %275, i8** %a.addr.i256, align 8
  store i32 0, i32* %ra.addr.i257, align 4
  store i8* %arraydecay57, i8** %b.addr.i258, align 8
  store i32 1, i32* %rb.addr.i259, align 4
  store i8* %276, i8** %c.addr.i260, align 8
  store i32 0, i32* %i.i261, align 4
  br label %for.cond.i263

for.cond.i263:                                    ; preds = %for.body.i278, %vadd.exit305
  %277 = load i32, i32* %i.i261, align 4
  %cmp.i262 = icmp sle i32 %277, 15
  br i1 %cmp.i262, label %for.body.i278, label %vadd.exit280

for.body.i278:                                    ; preds = %for.cond.i263
  %278 = load i8*, i8** %a.addr.i256, align 8
  %279 = load i32, i32* %i.i261, align 4
  %280 = load i32, i32* %ra.addr.i257, align 4
  %add.i264 = add nsw i32 %279, %280
  %rem.i265 = srem i32 %add.i264, 16
  %idxprom.i266 = sext i32 %rem.i265 to i64
  %arrayidx.i267 = getelementptr inbounds i8, i8* %278, i64 %idxprom.i266
  %281 = load i8, i8* %arrayidx.i267, align 1
  %conv.i268 = zext i8 %281 to i32
  %282 = load i8*, i8** %b.addr.i258, align 8
  %283 = load i32, i32* %i.i261, align 4
  %284 = load i32, i32* %rb.addr.i259, align 4
  %add1.i269 = add nsw i32 %283, %284
  %rem2.i270 = srem i32 %add1.i269, 16
  %idxprom3.i271 = sext i32 %rem2.i270 to i64
  %arrayidx4.i272 = getelementptr inbounds i8, i8* %282, i64 %idxprom3.i271
  %285 = load i8, i8* %arrayidx4.i272, align 1
  %conv5.i273 = zext i8 %285 to i32
  %xor.i274 = xor i32 %conv.i268, %conv5.i273
  %conv6.i275 = trunc i32 %xor.i274 to i8
  %286 = load i8*, i8** %c.addr.i260, align 8
  %287 = load i32, i32* %i.i261, align 4
  %idxprom7.i276 = sext i32 %287 to i64
  %arrayidx8.i277 = getelementptr inbounds i8, i8* %286, i64 %idxprom7.i276
  store i8 %conv6.i275, i8* %arrayidx8.i277, align 1
  %288 = load i32, i32* %i.i261, align 4
  %inc.i279 = add nsw i32 %288, 1
  store i32 %inc.i279, i32* %i.i261, align 4
  br label %for.cond.i263

vadd.exit280:                                     ; preds = %for.cond.i263
  %289 = load i8*, i8** %c.addr, align 8
  %arraydecay58 = getelementptr inbounds [16 x i8], [16 x i8]* %ab2, i64 0, i64 0
  %290 = load i8*, i8** %c.addr, align 8
  store i8* %289, i8** %a.addr.i231, align 8
  store i32 0, i32* %ra.addr.i232, align 4
  store i8* %arraydecay58, i8** %b.addr.i233, align 8
  store i32 0, i32* %rb.addr.i234, align 4
  store i8* %290, i8** %c.addr.i235, align 8
  store i32 0, i32* %i.i236, align 4
  br label %for.cond.i238

for.cond.i238:                                    ; preds = %for.body.i253, %vadd.exit280
  %291 = load i32, i32* %i.i236, align 4
  %cmp.i237 = icmp sle i32 %291, 15
  br i1 %cmp.i237, label %for.body.i253, label %vadd.exit255

for.body.i253:                                    ; preds = %for.cond.i238
  %292 = load i8*, i8** %a.addr.i231, align 8
  %293 = load i32, i32* %i.i236, align 4
  %294 = load i32, i32* %ra.addr.i232, align 4
  %add.i239 = add nsw i32 %293, %294
  %rem.i240 = srem i32 %add.i239, 16
  %idxprom.i241 = sext i32 %rem.i240 to i64
  %arrayidx.i242 = getelementptr inbounds i8, i8* %292, i64 %idxprom.i241
  %295 = load i8, i8* %arrayidx.i242, align 1
  %conv.i243 = zext i8 %295 to i32
  %296 = load i8*, i8** %b.addr.i233, align 8
  %297 = load i32, i32* %i.i236, align 4
  %298 = load i32, i32* %rb.addr.i234, align 4
  %add1.i244 = add nsw i32 %297, %298
  %rem2.i245 = srem i32 %add1.i244, 16
  %idxprom3.i246 = sext i32 %rem2.i245 to i64
  %arrayidx4.i247 = getelementptr inbounds i8, i8* %296, i64 %idxprom3.i246
  %299 = load i8, i8* %arrayidx4.i247, align 1
  %conv5.i248 = zext i8 %299 to i32
  %xor.i249 = xor i32 %conv.i243, %conv5.i248
  %conv6.i250 = trunc i32 %xor.i249 to i8
  %300 = load i8*, i8** %c.addr.i235, align 8
  %301 = load i32, i32* %i.i236, align 4
  %idxprom7.i251 = sext i32 %301 to i64
  %arrayidx8.i252 = getelementptr inbounds i8, i8* %300, i64 %idxprom7.i251
  store i8 %conv6.i250, i8* %arrayidx8.i252, align 1
  %302 = load i32, i32* %i.i236, align 4
  %inc.i254 = add nsw i32 %302, 1
  store i32 %inc.i254, i32* %i.i236, align 4
  br label %for.cond.i238

vadd.exit255:                                     ; preds = %for.cond.i238
  %303 = load i8, i8* %A, align 1
  %304 = load i8, i8* %B, align 1
  %call59 = call zeroext i8 @mult(i8 zeroext %303, i8 zeroext %304)
  %conv60 = zext i8 %call59 to i32
  %305 = load i8*, i8** %c.addr, align 8
  store i8* %305, i8** %a.addr.i193, align 8
  %306 = load i8*, i8** %a.addr.i193, align 8
  store i8* %306, i8** %a.addr.i.i189, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i190, align 8
  store i32 0, i32* %i.i.i192, align 4
  br label %for.cond.i.i195

for.cond.i.i195:                                  ; preds = %for.body.i.i204, %vadd.exit255
  %307 = load i32, i32* %i.i.i192, align 4
  %cmp.i.i194 = icmp sle i32 %307, 15
  br i1 %cmp.i.i194, label %for.body.i.i204, label %xors.exit205

for.body.i.i204:                                  ; preds = %for.cond.i.i195
  %308 = load i8 (i8)*, i8 (i8)** %f.addr.i.i190, align 8
  %309 = load i8*, i8** %a.addr.i.i189, align 8
  %310 = load i32, i32* %i.i.i192, align 4
  %idxprom.i.i196 = sext i32 %310 to i64
  %arrayidx.i.i197 = getelementptr inbounds i8, i8* %309, i64 %idxprom.i.i196
  %311 = load i8, i8* %arrayidx.i.i197, align 1
  %call.i.i198 = call zeroext i8 %308(i8 zeroext %311) #2
  %conv.i.i199 = zext i8 %call.i.i198 to i32
  %312 = load i8, i8* %result.i.i191, align 1
  %conv1.i.i200 = zext i8 %312 to i32
  %xor.i.i201 = xor i32 %conv1.i.i200, %conv.i.i199
  %conv2.i.i202 = trunc i32 %xor.i.i201 to i8
  store i8 %conv2.i.i202, i8* %result.i.i191, align 1
  %313 = load i32, i32* %i.i.i192, align 4
  %inc.i.i203 = add nsw i32 %313, 1
  store i32 %inc.i.i203, i32* %i.i.i192, align 4
  br label %for.cond.i.i195

xors.exit205:                                     ; preds = %for.cond.i.i195
  %314 = load i8, i8* %result.i.i191, align 1
  %conv62 = zext i8 %314 to i32
  %cmp63 = icmp eq i32 %conv60, %conv62
  call void @assert(i1 zeroext %cmp63)
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
