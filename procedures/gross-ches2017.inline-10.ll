; ModuleID = '../examples/gross-ches2017.c'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
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
  %cmp = icmp sle i32 %0, 10
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
  %cmp = icmp sle i32 %0, 10
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
  %cmp.i = icmp sle i32 %1, 10
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
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 11
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 11
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
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 11
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 11
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
  %a.addr.i448 = alloca i8*, align 8
  %ra.addr.i449 = alloca i32, align 4
  %b.addr.i450 = alloca i8*, align 8
  %rb.addr.i451 = alloca i32, align 4
  %c.addr.i452 = alloca i8*, align 8
  %i.i453 = alloca i32, align 4
  %a.addr.i423 = alloca i8*, align 8
  %ra.addr.i424 = alloca i32, align 4
  %b.addr.i425 = alloca i8*, align 8
  %rb.addr.i426 = alloca i32, align 4
  %c.addr.i427 = alloca i8*, align 8
  %i.i428 = alloca i32, align 4
  %a.addr.i398 = alloca i8*, align 8
  %ra.addr.i399 = alloca i32, align 4
  %b.addr.i400 = alloca i8*, align 8
  %rb.addr.i401 = alloca i32, align 4
  %c.addr.i402 = alloca i8*, align 8
  %i.i403 = alloca i32, align 4
  %a.addr.i376 = alloca i8*, align 8
  %ra.addr.i377 = alloca i32, align 4
  %b.addr.i378 = alloca i8*, align 8
  %rb.addr.i379 = alloca i32, align 4
  %c.addr.i380 = alloca i8*, align 8
  %i.i381 = alloca i32, align 4
  %a.addr.i351 = alloca i8*, align 8
  %ra.addr.i352 = alloca i32, align 4
  %b.addr.i353 = alloca i8*, align 8
  %rb.addr.i354 = alloca i32, align 4
  %c.addr.i355 = alloca i8*, align 8
  %i.i356 = alloca i32, align 4
  %a.addr.i329 = alloca i8*, align 8
  %ra.addr.i330 = alloca i32, align 4
  %b.addr.i331 = alloca i8*, align 8
  %rb.addr.i332 = alloca i32, align 4
  %c.addr.i333 = alloca i8*, align 8
  %i.i334 = alloca i32, align 4
  %a.addr.i304 = alloca i8*, align 8
  %ra.addr.i305 = alloca i32, align 4
  %b.addr.i306 = alloca i8*, align 8
  %rb.addr.i307 = alloca i32, align 4
  %c.addr.i308 = alloca i8*, align 8
  %i.i309 = alloca i32, align 4
  %a.addr.i279 = alloca i8*, align 8
  %ra.addr.i280 = alloca i32, align 4
  %b.addr.i281 = alloca i8*, align 8
  %rb.addr.i282 = alloca i32, align 4
  %c.addr.i283 = alloca i8*, align 8
  %i.i284 = alloca i32, align 4
  %a.addr.i254 = alloca i8*, align 8
  %ra.addr.i255 = alloca i32, align 4
  %b.addr.i256 = alloca i8*, align 8
  %rb.addr.i257 = alloca i32, align 4
  %c.addr.i258 = alloca i8*, align 8
  %i.i259 = alloca i32, align 4
  %a.addr.i229 = alloca i8*, align 8
  %ra.addr.i230 = alloca i32, align 4
  %b.addr.i231 = alloca i8*, align 8
  %rb.addr.i232 = alloca i32, align 4
  %c.addr.i233 = alloca i8*, align 8
  %i.i234 = alloca i32, align 4
  %a.addr.i204 = alloca i8*, align 8
  %ra.addr.i205 = alloca i32, align 4
  %b.addr.i206 = alloca i8*, align 8
  %rb.addr.i207 = alloca i32, align 4
  %c.addr.i208 = alloca i8*, align 8
  %i.i209 = alloca i32, align 4
  %a.addr.i.i187 = alloca i8*, align 8
  %f.addr.i.i188 = alloca i8 (i8)*, align 8
  %result.i.i189 = alloca i8, align 1
  %i.i.i190 = alloca i32, align 4
  %a.addr.i191 = alloca i8*, align 8
  %a.addr.i169 = alloca i8*, align 8
  %ra.addr.i170 = alloca i32, align 4
  %b.addr.i171 = alloca i8*, align 8
  %rb.addr.i172 = alloca i32, align 4
  %c.addr.i173 = alloca i8*, align 8
  %i.i174 = alloca i32, align 4
  %a.addr.i147 = alloca i8*, align 8
  %ra.addr.i148 = alloca i32, align 4
  %b.addr.i149 = alloca i8*, align 8
  %rb.addr.i150 = alloca i32, align 4
  %c.addr.i151 = alloca i8*, align 8
  %i.i152 = alloca i32, align 4
  %a.addr.i125 = alloca i8*, align 8
  %ra.addr.i126 = alloca i32, align 4
  %b.addr.i127 = alloca i8*, align 8
  %rb.addr.i128 = alloca i32, align 4
  %c.addr.i129 = alloca i8*, align 8
  %i.i130 = alloca i32, align 4
  %a.addr.i103 = alloca i8*, align 8
  %ra.addr.i104 = alloca i32, align 4
  %b.addr.i105 = alloca i8*, align 8
  %rb.addr.i106 = alloca i32, align 4
  %c.addr.i107 = alloca i8*, align 8
  %i.i108 = alloca i32, align 4
  %a.addr.i81 = alloca i8*, align 8
  %ra.addr.i82 = alloca i32, align 4
  %b.addr.i83 = alloca i8*, align 8
  %rb.addr.i84 = alloca i32, align 4
  %c.addr.i85 = alloca i8*, align 8
  %i.i86 = alloca i32, align 4
  %a.addr.i80 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i63 = alloca i8*, align 8
  %f.addr.i.i64 = alloca i8 (i8)*, align 8
  %result.i.i65 = alloca i8, align 1
  %i.i.i66 = alloca i32, align 4
  %a.addr.i67 = alloca i8*, align 8
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
  %r = alloca [11 x [11 x i8]], align 16
  %a1b = alloca [11 x i8], align 1
  %ab1 = alloca [11 x i8], align 1
  %a2b = alloca [11 x i8], align 1
  %ab2 = alloca [11 x i8], align 1
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
  %cmp.i.i = icmp sle i32 %3, 10
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
  store i8* %12, i8** %a.addr.i67, align 8
  %13 = load i8*, i8** %a.addr.i67, align 8
  store i8* %13, i8** %a.addr.i.i63, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i64, align 8
  store i32 0, i32* %i.i.i66, align 4
  br label %for.cond.i.i69

for.cond.i.i69:                                   ; preds = %for.body.i.i78, %xors.exit
  %14 = load i32, i32* %i.i.i66, align 4
  %cmp.i.i68 = icmp sle i32 %14, 10
  br i1 %cmp.i.i68, label %for.body.i.i78, label %xors.exit79

for.body.i.i78:                                   ; preds = %for.cond.i.i69
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i64, align 8
  %16 = load i8*, i8** %a.addr.i.i63, align 8
  %17 = load i32, i32* %i.i.i66, align 4
  %idxprom.i.i70 = sext i32 %17 to i64
  %arrayidx.i.i71 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i70
  %18 = load i8, i8* %arrayidx.i.i71, align 1
  %call.i.i72 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i73 = zext i8 %call.i.i72 to i32
  %19 = load i8, i8* %result.i.i65, align 1
  %conv1.i.i74 = zext i8 %19 to i32
  %xor.i.i75 = xor i32 %conv1.i.i74, %conv.i.i73
  %conv2.i.i76 = trunc i32 %xor.i.i75 to i8
  store i8 %conv2.i.i76, i8* %result.i.i65, align 1
  %20 = load i32, i32* %i.i.i66, align 4
  %inc.i.i77 = add nsw i32 %20, 1
  store i32 %inc.i.i77, i32* %i.i.i66, align 4
  br label %for.cond.i.i69

xors.exit79:                                      ; preds = %for.cond.i.i69
  %21 = load i8, i8* %result.i.i65, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 11, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit79
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 10
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 10
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx, i64 0, i64 %idxprom17
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
  store i8* %28, i8** %a.addr.i80, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %30, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %31 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %31, 10
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %32 = load i8*, i8** %a.addr.i80, align 8
  %33 = load i32, i32* %i.i, align 4
  %34 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %33, %34
  %rem.i = srem i32 %add.i, 11
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %32, i64 %idxprom.i
  %35 = load i8, i8* %arrayidx.i, align 1
  %36 = load i8*, i8** %b.addr.i, align 8
  %37 = load i32, i32* %i.i, align 4
  %38 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %37, %38
  %rem2.i = srem i32 %add1.i, 11
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
  %cmp24 = icmp slt i32 %43, 2
  br i1 %cmp24, label %for.body26, label %for.end48

for.body26:                                       ; preds = %for.cond23
  %44 = load i8*, i8** %a.addr, align 8
  %45 = load i8*, i8** %b.addr, align 8
  %46 = load i32, i32* %i22, align 4
  %mul = mul nsw i32 2, %46
  %add = add nsw i32 %mul, 1
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  store i8* %44, i8** %a.addr.i81, align 8
  store i32 0, i32* %ra.addr.i82, align 4
  store i8* %45, i8** %b.addr.i83, align 8
  store i32 %add, i32* %rb.addr.i84, align 4
  store i8* %arraydecay, i8** %c.addr.i85, align 8
  store i32 0, i32* %i.i86, align 4
  br label %for.cond.i88

for.cond.i88:                                     ; preds = %for.body.i100, %for.body26
  %47 = load i32, i32* %i.i86, align 4
  %cmp.i87 = icmp sle i32 %47, 10
  br i1 %cmp.i87, label %for.body.i100, label %vmult.exit102

for.body.i100:                                    ; preds = %for.cond.i88
  %48 = load i8*, i8** %a.addr.i81, align 8
  %49 = load i32, i32* %i.i86, align 4
  %50 = load i32, i32* %ra.addr.i82, align 4
  %add.i89 = add nsw i32 %49, %50
  %rem.i90 = srem i32 %add.i89, 11
  %idxprom.i91 = sext i32 %rem.i90 to i64
  %arrayidx.i92 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i91
  %51 = load i8, i8* %arrayidx.i92, align 1
  %52 = load i8*, i8** %b.addr.i83, align 8
  %53 = load i32, i32* %i.i86, align 4
  %54 = load i32, i32* %rb.addr.i84, align 4
  %add1.i93 = add nsw i32 %53, %54
  %rem2.i94 = srem i32 %add1.i93, 11
  %idxprom3.i95 = sext i32 %rem2.i94 to i64
  %arrayidx4.i96 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i95
  %55 = load i8, i8* %arrayidx4.i96, align 1
  %call.i97 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i85, align 8
  %57 = load i32, i32* %i.i86, align 4
  %idxprom5.i98 = sext i32 %57 to i64
  %arrayidx6.i99 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i98
  store i8 %call.i97, i8* %arrayidx6.i99, align 1
  %58 = load i32, i32* %i.i86, align 4
  %inc.i101 = add nsw i32 %58, 1
  store i32 %inc.i101, i32* %i.i86, align 4
  br label %for.cond.i88

vmult.exit102:                                    ; preds = %for.cond.i88
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i22, align 4
  %mul27 = mul nsw i32 2, %60
  %add28 = add nsw i32 %mul27, 1
  %61 = load i8*, i8** %b.addr, align 8
  %arraydecay29 = getelementptr inbounds [11 x i8], [11 x i8]* %a1b, i64 0, i64 0
  store i8* %59, i8** %a.addr.i103, align 8
  store i32 %add28, i32* %ra.addr.i104, align 4
  store i8* %61, i8** %b.addr.i105, align 8
  store i32 0, i32* %rb.addr.i106, align 4
  store i8* %arraydecay29, i8** %c.addr.i107, align 8
  store i32 0, i32* %i.i108, align 4
  br label %for.cond.i110

for.cond.i110:                                    ; preds = %for.body.i122, %vmult.exit102
  %62 = load i32, i32* %i.i108, align 4
  %cmp.i109 = icmp sle i32 %62, 10
  br i1 %cmp.i109, label %for.body.i122, label %vmult.exit124

for.body.i122:                                    ; preds = %for.cond.i110
  %63 = load i8*, i8** %a.addr.i103, align 8
  %64 = load i32, i32* %i.i108, align 4
  %65 = load i32, i32* %ra.addr.i104, align 4
  %add.i111 = add nsw i32 %64, %65
  %rem.i112 = srem i32 %add.i111, 11
  %idxprom.i113 = sext i32 %rem.i112 to i64
  %arrayidx.i114 = getelementptr inbounds i8, i8* %63, i64 %idxprom.i113
  %66 = load i8, i8* %arrayidx.i114, align 1
  %67 = load i8*, i8** %b.addr.i105, align 8
  %68 = load i32, i32* %i.i108, align 4
  %69 = load i32, i32* %rb.addr.i106, align 4
  %add1.i115 = add nsw i32 %68, %69
  %rem2.i116 = srem i32 %add1.i115, 11
  %idxprom3.i117 = sext i32 %rem2.i116 to i64
  %arrayidx4.i118 = getelementptr inbounds i8, i8* %67, i64 %idxprom3.i117
  %70 = load i8, i8* %arrayidx4.i118, align 1
  %call.i119 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %70) #2
  %71 = load i8*, i8** %c.addr.i107, align 8
  %72 = load i32, i32* %i.i108, align 4
  %idxprom5.i120 = sext i32 %72 to i64
  %arrayidx6.i121 = getelementptr inbounds i8, i8* %71, i64 %idxprom5.i120
  store i8 %call.i119, i8* %arrayidx6.i121, align 1
  %73 = load i32, i32* %i.i108, align 4
  %inc.i123 = add nsw i32 %73, 1
  store i32 %inc.i123, i32* %i.i108, align 4
  br label %for.cond.i110

vmult.exit124:                                    ; preds = %for.cond.i110
  %74 = load i8*, i8** %a.addr, align 8
  %75 = load i8*, i8** %b.addr, align 8
  %76 = load i32, i32* %i22, align 4
  %mul30 = mul nsw i32 2, %76
  %add31 = add nsw i32 %mul30, 2
  %arraydecay32 = getelementptr inbounds [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  store i8* %74, i8** %a.addr.i125, align 8
  store i32 0, i32* %ra.addr.i126, align 4
  store i8* %75, i8** %b.addr.i127, align 8
  store i32 %add31, i32* %rb.addr.i128, align 4
  store i8* %arraydecay32, i8** %c.addr.i129, align 8
  store i32 0, i32* %i.i130, align 4
  br label %for.cond.i132

for.cond.i132:                                    ; preds = %for.body.i144, %vmult.exit124
  %77 = load i32, i32* %i.i130, align 4
  %cmp.i131 = icmp sle i32 %77, 10
  br i1 %cmp.i131, label %for.body.i144, label %vmult.exit146

for.body.i144:                                    ; preds = %for.cond.i132
  %78 = load i8*, i8** %a.addr.i125, align 8
  %79 = load i32, i32* %i.i130, align 4
  %80 = load i32, i32* %ra.addr.i126, align 4
  %add.i133 = add nsw i32 %79, %80
  %rem.i134 = srem i32 %add.i133, 11
  %idxprom.i135 = sext i32 %rem.i134 to i64
  %arrayidx.i136 = getelementptr inbounds i8, i8* %78, i64 %idxprom.i135
  %81 = load i8, i8* %arrayidx.i136, align 1
  %82 = load i8*, i8** %b.addr.i127, align 8
  %83 = load i32, i32* %i.i130, align 4
  %84 = load i32, i32* %rb.addr.i128, align 4
  %add1.i137 = add nsw i32 %83, %84
  %rem2.i138 = srem i32 %add1.i137, 11
  %idxprom3.i139 = sext i32 %rem2.i138 to i64
  %arrayidx4.i140 = getelementptr inbounds i8, i8* %82, i64 %idxprom3.i139
  %85 = load i8, i8* %arrayidx4.i140, align 1
  %call.i141 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %85) #2
  %86 = load i8*, i8** %c.addr.i129, align 8
  %87 = load i32, i32* %i.i130, align 4
  %idxprom5.i142 = sext i32 %87 to i64
  %arrayidx6.i143 = getelementptr inbounds i8, i8* %86, i64 %idxprom5.i142
  store i8 %call.i141, i8* %arrayidx6.i143, align 1
  %88 = load i32, i32* %i.i130, align 4
  %inc.i145 = add nsw i32 %88, 1
  store i32 %inc.i145, i32* %i.i130, align 4
  br label %for.cond.i132

vmult.exit146:                                    ; preds = %for.cond.i132
  %89 = load i8*, i8** %a.addr, align 8
  %90 = load i32, i32* %i22, align 4
  %mul33 = mul nsw i32 2, %90
  %add34 = add nsw i32 %mul33, 2
  %91 = load i8*, i8** %b.addr, align 8
  %arraydecay35 = getelementptr inbounds [11 x i8], [11 x i8]* %a2b, i64 0, i64 0
  store i8* %89, i8** %a.addr.i147, align 8
  store i32 %add34, i32* %ra.addr.i148, align 4
  store i8* %91, i8** %b.addr.i149, align 8
  store i32 0, i32* %rb.addr.i150, align 4
  store i8* %arraydecay35, i8** %c.addr.i151, align 8
  store i32 0, i32* %i.i152, align 4
  br label %for.cond.i154

for.cond.i154:                                    ; preds = %for.body.i166, %vmult.exit146
  %92 = load i32, i32* %i.i152, align 4
  %cmp.i153 = icmp sle i32 %92, 10
  br i1 %cmp.i153, label %for.body.i166, label %vmult.exit168

for.body.i166:                                    ; preds = %for.cond.i154
  %93 = load i8*, i8** %a.addr.i147, align 8
  %94 = load i32, i32* %i.i152, align 4
  %95 = load i32, i32* %ra.addr.i148, align 4
  %add.i155 = add nsw i32 %94, %95
  %rem.i156 = srem i32 %add.i155, 11
  %idxprom.i157 = sext i32 %rem.i156 to i64
  %arrayidx.i158 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i157
  %96 = load i8, i8* %arrayidx.i158, align 1
  %97 = load i8*, i8** %b.addr.i149, align 8
  %98 = load i32, i32* %i.i152, align 4
  %99 = load i32, i32* %rb.addr.i150, align 4
  %add1.i159 = add nsw i32 %98, %99
  %rem2.i160 = srem i32 %add1.i159, 11
  %idxprom3.i161 = sext i32 %rem2.i160 to i64
  %arrayidx4.i162 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i161
  %100 = load i8, i8* %arrayidx4.i162, align 1
  %call.i163 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i151, align 8
  %102 = load i32, i32* %i.i152, align 4
  %idxprom5.i164 = sext i32 %102 to i64
  %arrayidx6.i165 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i164
  store i8 %call.i163, i8* %arrayidx6.i165, align 1
  %103 = load i32, i32* %i.i152, align 4
  %inc.i167 = add nsw i32 %103, 1
  store i32 %inc.i167, i32* %i.i152, align 4
  br label %for.cond.i154

vmult.exit168:                                    ; preds = %for.cond.i154
  %104 = load i8*, i8** %c.addr, align 8
  %105 = load i32, i32* %i22, align 4
  %idxprom36 = sext i32 %105 to i64
  %arrayidx37 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx37, i64 0, i64 0
  %106 = load i8*, i8** %c.addr, align 8
  store i8* %104, i8** %a.addr.i169, align 8
  store i32 0, i32* %ra.addr.i170, align 4
  store i8* %arraydecay38, i8** %b.addr.i171, align 8
  store i32 0, i32* %rb.addr.i172, align 4
  store i8* %106, i8** %c.addr.i173, align 8
  store i32 0, i32* %i.i174, align 4
  br label %for.cond.i176

for.cond.i176:                                    ; preds = %for.body.i185, %vmult.exit168
  %107 = load i32, i32* %i.i174, align 4
  %cmp.i175 = icmp sle i32 %107, 10
  br i1 %cmp.i175, label %for.body.i185, label %vadd.exit

for.body.i185:                                    ; preds = %for.cond.i176
  %108 = load i8*, i8** %a.addr.i169, align 8
  %109 = load i32, i32* %i.i174, align 4
  %110 = load i32, i32* %ra.addr.i170, align 4
  %add.i177 = add nsw i32 %109, %110
  %rem.i178 = srem i32 %add.i177, 11
  %idxprom.i179 = sext i32 %rem.i178 to i64
  %arrayidx.i180 = getelementptr inbounds i8, i8* %108, i64 %idxprom.i179
  %111 = load i8, i8* %arrayidx.i180, align 1
  %conv.i = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i171, align 8
  %113 = load i32, i32* %i.i174, align 4
  %114 = load i32, i32* %rb.addr.i172, align 4
  %add1.i181 = add nsw i32 %113, %114
  %rem2.i182 = srem i32 %add1.i181, 11
  %idxprom3.i183 = sext i32 %rem2.i182 to i64
  %arrayidx4.i184 = getelementptr inbounds i8, i8* %112, i64 %idxprom3.i183
  %115 = load i8, i8* %arrayidx4.i184, align 1
  %conv5.i = zext i8 %115 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %116 = load i8*, i8** %c.addr.i173, align 8
  %117 = load i32, i32* %i.i174, align 4
  %idxprom7.i = sext i32 %117 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %118 = load i32, i32* %i.i174, align 4
  %inc.i186 = add nsw i32 %118, 1
  store i32 %inc.i186, i32* %i.i174, align 4
  br label %for.cond.i176

vadd.exit:                                        ; preds = %for.cond.i176
  %119 = load i8*, i8** %c.addr, align 8
  %arraydecay39 = getelementptr inbounds [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %119, i8** %a.addr.i204, align 8
  store i32 0, i32* %ra.addr.i205, align 4
  store i8* %arraydecay39, i8** %b.addr.i206, align 8
  store i32 0, i32* %rb.addr.i207, align 4
  store i8* %120, i8** %c.addr.i208, align 8
  store i32 0, i32* %i.i209, align 4
  br label %for.cond.i211

for.cond.i211:                                    ; preds = %for.body.i226, %vadd.exit
  %121 = load i32, i32* %i.i209, align 4
  %cmp.i210 = icmp sle i32 %121, 10
  br i1 %cmp.i210, label %for.body.i226, label %vadd.exit228

for.body.i226:                                    ; preds = %for.cond.i211
  %122 = load i8*, i8** %a.addr.i204, align 8
  %123 = load i32, i32* %i.i209, align 4
  %124 = load i32, i32* %ra.addr.i205, align 4
  %add.i212 = add nsw i32 %123, %124
  %rem.i213 = srem i32 %add.i212, 11
  %idxprom.i214 = sext i32 %rem.i213 to i64
  %arrayidx.i215 = getelementptr inbounds i8, i8* %122, i64 %idxprom.i214
  %125 = load i8, i8* %arrayidx.i215, align 1
  %conv.i216 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i206, align 8
  %127 = load i32, i32* %i.i209, align 4
  %128 = load i32, i32* %rb.addr.i207, align 4
  %add1.i217 = add nsw i32 %127, %128
  %rem2.i218 = srem i32 %add1.i217, 11
  %idxprom3.i219 = sext i32 %rem2.i218 to i64
  %arrayidx4.i220 = getelementptr inbounds i8, i8* %126, i64 %idxprom3.i219
  %129 = load i8, i8* %arrayidx4.i220, align 1
  %conv5.i221 = zext i8 %129 to i32
  %xor.i222 = xor i32 %conv.i216, %conv5.i221
  %conv6.i223 = trunc i32 %xor.i222 to i8
  %130 = load i8*, i8** %c.addr.i208, align 8
  %131 = load i32, i32* %i.i209, align 4
  %idxprom7.i224 = sext i32 %131 to i64
  %arrayidx8.i225 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i224
  store i8 %conv6.i223, i8* %arrayidx8.i225, align 1
  %132 = load i32, i32* %i.i209, align 4
  %inc.i227 = add nsw i32 %132, 1
  store i32 %inc.i227, i32* %i.i209, align 4
  br label %for.cond.i211

vadd.exit228:                                     ; preds = %for.cond.i211
  %133 = load i8*, i8** %c.addr, align 8
  %arraydecay40 = getelementptr inbounds [11 x i8], [11 x i8]* %a1b, i64 0, i64 0
  %134 = load i8*, i8** %c.addr, align 8
  store i8* %133, i8** %a.addr.i351, align 8
  store i32 0, i32* %ra.addr.i352, align 4
  store i8* %arraydecay40, i8** %b.addr.i353, align 8
  store i32 0, i32* %rb.addr.i354, align 4
  store i8* %134, i8** %c.addr.i355, align 8
  store i32 0, i32* %i.i356, align 4
  br label %for.cond.i358

for.cond.i358:                                    ; preds = %for.body.i373, %vadd.exit228
  %135 = load i32, i32* %i.i356, align 4
  %cmp.i357 = icmp sle i32 %135, 10
  br i1 %cmp.i357, label %for.body.i373, label %vadd.exit375

for.body.i373:                                    ; preds = %for.cond.i358
  %136 = load i8*, i8** %a.addr.i351, align 8
  %137 = load i32, i32* %i.i356, align 4
  %138 = load i32, i32* %ra.addr.i352, align 4
  %add.i359 = add nsw i32 %137, %138
  %rem.i360 = srem i32 %add.i359, 11
  %idxprom.i361 = sext i32 %rem.i360 to i64
  %arrayidx.i362 = getelementptr inbounds i8, i8* %136, i64 %idxprom.i361
  %139 = load i8, i8* %arrayidx.i362, align 1
  %conv.i363 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i353, align 8
  %141 = load i32, i32* %i.i356, align 4
  %142 = load i32, i32* %rb.addr.i354, align 4
  %add1.i364 = add nsw i32 %141, %142
  %rem2.i365 = srem i32 %add1.i364, 11
  %idxprom3.i366 = sext i32 %rem2.i365 to i64
  %arrayidx4.i367 = getelementptr inbounds i8, i8* %140, i64 %idxprom3.i366
  %143 = load i8, i8* %arrayidx4.i367, align 1
  %conv5.i368 = zext i8 %143 to i32
  %xor.i369 = xor i32 %conv.i363, %conv5.i368
  %conv6.i370 = trunc i32 %xor.i369 to i8
  %144 = load i8*, i8** %c.addr.i355, align 8
  %145 = load i32, i32* %i.i356, align 4
  %idxprom7.i371 = sext i32 %145 to i64
  %arrayidx8.i372 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i371
  store i8 %conv6.i370, i8* %arrayidx8.i372, align 1
  %146 = load i32, i32* %i.i356, align 4
  %inc.i374 = add nsw i32 %146, 1
  store i32 %inc.i374, i32* %i.i356, align 4
  br label %for.cond.i358

vadd.exit375:                                     ; preds = %for.cond.i358
  %147 = load i8*, i8** %c.addr, align 8
  %148 = load i32, i32* %i22, align 4
  %idxprom41 = sext i32 %148 to i64
  %arrayidx42 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx42, i64 0, i64 0
  %149 = load i8*, i8** %c.addr, align 8
  store i8* %147, i8** %a.addr.i398, align 8
  store i32 0, i32* %ra.addr.i399, align 4
  store i8* %arraydecay43, i8** %b.addr.i400, align 8
  store i32 1, i32* %rb.addr.i401, align 4
  store i8* %149, i8** %c.addr.i402, align 8
  store i32 0, i32* %i.i403, align 4
  br label %for.cond.i405

for.cond.i405:                                    ; preds = %for.body.i420, %vadd.exit375
  %150 = load i32, i32* %i.i403, align 4
  %cmp.i404 = icmp sle i32 %150, 10
  br i1 %cmp.i404, label %for.body.i420, label %vadd.exit422

for.body.i420:                                    ; preds = %for.cond.i405
  %151 = load i8*, i8** %a.addr.i398, align 8
  %152 = load i32, i32* %i.i403, align 4
  %153 = load i32, i32* %ra.addr.i399, align 4
  %add.i406 = add nsw i32 %152, %153
  %rem.i407 = srem i32 %add.i406, 11
  %idxprom.i408 = sext i32 %rem.i407 to i64
  %arrayidx.i409 = getelementptr inbounds i8, i8* %151, i64 %idxprom.i408
  %154 = load i8, i8* %arrayidx.i409, align 1
  %conv.i410 = zext i8 %154 to i32
  %155 = load i8*, i8** %b.addr.i400, align 8
  %156 = load i32, i32* %i.i403, align 4
  %157 = load i32, i32* %rb.addr.i401, align 4
  %add1.i411 = add nsw i32 %156, %157
  %rem2.i412 = srem i32 %add1.i411, 11
  %idxprom3.i413 = sext i32 %rem2.i412 to i64
  %arrayidx4.i414 = getelementptr inbounds i8, i8* %155, i64 %idxprom3.i413
  %158 = load i8, i8* %arrayidx4.i414, align 1
  %conv5.i415 = zext i8 %158 to i32
  %xor.i416 = xor i32 %conv.i410, %conv5.i415
  %conv6.i417 = trunc i32 %xor.i416 to i8
  %159 = load i8*, i8** %c.addr.i402, align 8
  %160 = load i32, i32* %i.i403, align 4
  %idxprom7.i418 = sext i32 %160 to i64
  %arrayidx8.i419 = getelementptr inbounds i8, i8* %159, i64 %idxprom7.i418
  store i8 %conv6.i417, i8* %arrayidx8.i419, align 1
  %161 = load i32, i32* %i.i403, align 4
  %inc.i421 = add nsw i32 %161, 1
  store i32 %inc.i421, i32* %i.i403, align 4
  br label %for.cond.i405

vadd.exit422:                                     ; preds = %for.cond.i405
  %162 = load i8*, i8** %c.addr, align 8
  %arraydecay44 = getelementptr inbounds [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  %163 = load i8*, i8** %c.addr, align 8
  store i8* %162, i8** %a.addr.i448, align 8
  store i32 0, i32* %ra.addr.i449, align 4
  store i8* %arraydecay44, i8** %b.addr.i450, align 8
  store i32 0, i32* %rb.addr.i451, align 4
  store i8* %163, i8** %c.addr.i452, align 8
  store i32 0, i32* %i.i453, align 4
  br label %for.cond.i455

for.cond.i455:                                    ; preds = %for.body.i470, %vadd.exit422
  %164 = load i32, i32* %i.i453, align 4
  %cmp.i454 = icmp sle i32 %164, 10
  br i1 %cmp.i454, label %for.body.i470, label %vadd.exit472

for.body.i470:                                    ; preds = %for.cond.i455
  %165 = load i8*, i8** %a.addr.i448, align 8
  %166 = load i32, i32* %i.i453, align 4
  %167 = load i32, i32* %ra.addr.i449, align 4
  %add.i456 = add nsw i32 %166, %167
  %rem.i457 = srem i32 %add.i456, 11
  %idxprom.i458 = sext i32 %rem.i457 to i64
  %arrayidx.i459 = getelementptr inbounds i8, i8* %165, i64 %idxprom.i458
  %168 = load i8, i8* %arrayidx.i459, align 1
  %conv.i460 = zext i8 %168 to i32
  %169 = load i8*, i8** %b.addr.i450, align 8
  %170 = load i32, i32* %i.i453, align 4
  %171 = load i32, i32* %rb.addr.i451, align 4
  %add1.i461 = add nsw i32 %170, %171
  %rem2.i462 = srem i32 %add1.i461, 11
  %idxprom3.i463 = sext i32 %rem2.i462 to i64
  %arrayidx4.i464 = getelementptr inbounds i8, i8* %169, i64 %idxprom3.i463
  %172 = load i8, i8* %arrayidx4.i464, align 1
  %conv5.i465 = zext i8 %172 to i32
  %xor.i466 = xor i32 %conv.i460, %conv5.i465
  %conv6.i467 = trunc i32 %xor.i466 to i8
  %173 = load i8*, i8** %c.addr.i452, align 8
  %174 = load i32, i32* %i.i453, align 4
  %idxprom7.i468 = sext i32 %174 to i64
  %arrayidx8.i469 = getelementptr inbounds i8, i8* %173, i64 %idxprom7.i468
  store i8 %conv6.i467, i8* %arrayidx8.i469, align 1
  %175 = load i32, i32* %i.i453, align 4
  %inc.i471 = add nsw i32 %175, 1
  store i32 %inc.i471, i32* %i.i453, align 4
  br label %for.cond.i455

vadd.exit472:                                     ; preds = %for.cond.i455
  %176 = load i8*, i8** %c.addr, align 8
  %arraydecay45 = getelementptr inbounds [11 x i8], [11 x i8]* %a2b, i64 0, i64 0
  %177 = load i8*, i8** %c.addr, align 8
  store i8* %176, i8** %a.addr.i423, align 8
  store i32 0, i32* %ra.addr.i424, align 4
  store i8* %arraydecay45, i8** %b.addr.i425, align 8
  store i32 0, i32* %rb.addr.i426, align 4
  store i8* %177, i8** %c.addr.i427, align 8
  store i32 0, i32* %i.i428, align 4
  br label %for.cond.i430

for.cond.i430:                                    ; preds = %for.body.i445, %vadd.exit472
  %178 = load i32, i32* %i.i428, align 4
  %cmp.i429 = icmp sle i32 %178, 10
  br i1 %cmp.i429, label %for.body.i445, label %vadd.exit447

for.body.i445:                                    ; preds = %for.cond.i430
  %179 = load i8*, i8** %a.addr.i423, align 8
  %180 = load i32, i32* %i.i428, align 4
  %181 = load i32, i32* %ra.addr.i424, align 4
  %add.i431 = add nsw i32 %180, %181
  %rem.i432 = srem i32 %add.i431, 11
  %idxprom.i433 = sext i32 %rem.i432 to i64
  %arrayidx.i434 = getelementptr inbounds i8, i8* %179, i64 %idxprom.i433
  %182 = load i8, i8* %arrayidx.i434, align 1
  %conv.i435 = zext i8 %182 to i32
  %183 = load i8*, i8** %b.addr.i425, align 8
  %184 = load i32, i32* %i.i428, align 4
  %185 = load i32, i32* %rb.addr.i426, align 4
  %add1.i436 = add nsw i32 %184, %185
  %rem2.i437 = srem i32 %add1.i436, 11
  %idxprom3.i438 = sext i32 %rem2.i437 to i64
  %arrayidx4.i439 = getelementptr inbounds i8, i8* %183, i64 %idxprom3.i438
  %186 = load i8, i8* %arrayidx4.i439, align 1
  %conv5.i440 = zext i8 %186 to i32
  %xor.i441 = xor i32 %conv.i435, %conv5.i440
  %conv6.i442 = trunc i32 %xor.i441 to i8
  %187 = load i8*, i8** %c.addr.i427, align 8
  %188 = load i32, i32* %i.i428, align 4
  %idxprom7.i443 = sext i32 %188 to i64
  %arrayidx8.i444 = getelementptr inbounds i8, i8* %187, i64 %idxprom7.i443
  store i8 %conv6.i442, i8* %arrayidx8.i444, align 1
  %189 = load i32, i32* %i.i428, align 4
  %inc.i446 = add nsw i32 %189, 1
  store i32 %inc.i446, i32* %i.i428, align 4
  br label %for.cond.i430

vadd.exit447:                                     ; preds = %for.cond.i430
  br label %for.inc46

for.inc46:                                        ; preds = %vadd.exit447
  %190 = load i32, i32* %i22, align 4
  %inc47 = add nsw i32 %190, 1
  store i32 %inc47, i32* %i22, align 4
  br label %for.cond23

for.end48:                                        ; preds = %for.cond23
  store i32 2, i32* %l, align 4
  %191 = load i8*, i8** %a.addr, align 8
  %192 = load i8*, i8** %b.addr, align 8
  %arraydecay49 = getelementptr inbounds [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  store i8* %191, i8** %a.addr.i376, align 8
  store i32 0, i32* %ra.addr.i377, align 4
  store i8* %192, i8** %b.addr.i378, align 8
  store i32 5, i32* %rb.addr.i379, align 4
  store i8* %arraydecay49, i8** %c.addr.i380, align 8
  store i32 0, i32* %i.i381, align 4
  br label %for.cond.i383

for.cond.i383:                                    ; preds = %for.body.i395, %for.end48
  %193 = load i32, i32* %i.i381, align 4
  %cmp.i382 = icmp sle i32 %193, 10
  br i1 %cmp.i382, label %for.body.i395, label %vmult.exit397

for.body.i395:                                    ; preds = %for.cond.i383
  %194 = load i8*, i8** %a.addr.i376, align 8
  %195 = load i32, i32* %i.i381, align 4
  %196 = load i32, i32* %ra.addr.i377, align 4
  %add.i384 = add nsw i32 %195, %196
  %rem.i385 = srem i32 %add.i384, 11
  %idxprom.i386 = sext i32 %rem.i385 to i64
  %arrayidx.i387 = getelementptr inbounds i8, i8* %194, i64 %idxprom.i386
  %197 = load i8, i8* %arrayidx.i387, align 1
  %198 = load i8*, i8** %b.addr.i378, align 8
  %199 = load i32, i32* %i.i381, align 4
  %200 = load i32, i32* %rb.addr.i379, align 4
  %add1.i388 = add nsw i32 %199, %200
  %rem2.i389 = srem i32 %add1.i388, 11
  %idxprom3.i390 = sext i32 %rem2.i389 to i64
  %arrayidx4.i391 = getelementptr inbounds i8, i8* %198, i64 %idxprom3.i390
  %201 = load i8, i8* %arrayidx4.i391, align 1
  %call.i392 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %201) #2
  %202 = load i8*, i8** %c.addr.i380, align 8
  %203 = load i32, i32* %i.i381, align 4
  %idxprom5.i393 = sext i32 %203 to i64
  %arrayidx6.i394 = getelementptr inbounds i8, i8* %202, i64 %idxprom5.i393
  store i8 %call.i392, i8* %arrayidx6.i394, align 1
  %204 = load i32, i32* %i.i381, align 4
  %inc.i396 = add nsw i32 %204, 1
  store i32 %inc.i396, i32* %i.i381, align 4
  br label %for.cond.i383

vmult.exit397:                                    ; preds = %for.cond.i383
  %205 = load i8*, i8** %a.addr, align 8
  %206 = load i8*, i8** %b.addr, align 8
  %arraydecay50 = getelementptr inbounds [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  store i8* %205, i8** %a.addr.i329, align 8
  store i32 0, i32* %ra.addr.i330, align 4
  store i8* %206, i8** %b.addr.i331, align 8
  store i32 6, i32* %rb.addr.i332, align 4
  store i8* %arraydecay50, i8** %c.addr.i333, align 8
  store i32 0, i32* %i.i334, align 4
  br label %for.cond.i336

for.cond.i336:                                    ; preds = %for.body.i348, %vmult.exit397
  %207 = load i32, i32* %i.i334, align 4
  %cmp.i335 = icmp sle i32 %207, 10
  br i1 %cmp.i335, label %for.body.i348, label %vmult.exit350

for.body.i348:                                    ; preds = %for.cond.i336
  %208 = load i8*, i8** %a.addr.i329, align 8
  %209 = load i32, i32* %i.i334, align 4
  %210 = load i32, i32* %ra.addr.i330, align 4
  %add.i337 = add nsw i32 %209, %210
  %rem.i338 = srem i32 %add.i337, 11
  %idxprom.i339 = sext i32 %rem.i338 to i64
  %arrayidx.i340 = getelementptr inbounds i8, i8* %208, i64 %idxprom.i339
  %211 = load i8, i8* %arrayidx.i340, align 1
  %212 = load i8*, i8** %b.addr.i331, align 8
  %213 = load i32, i32* %i.i334, align 4
  %214 = load i32, i32* %rb.addr.i332, align 4
  %add1.i341 = add nsw i32 %213, %214
  %rem2.i342 = srem i32 %add1.i341, 11
  %idxprom3.i343 = sext i32 %rem2.i342 to i64
  %arrayidx4.i344 = getelementptr inbounds i8, i8* %212, i64 %idxprom3.i343
  %215 = load i8, i8* %arrayidx4.i344, align 1
  %call.i345 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %215) #2
  %216 = load i8*, i8** %c.addr.i333, align 8
  %217 = load i32, i32* %i.i334, align 4
  %idxprom5.i346 = sext i32 %217 to i64
  %arrayidx6.i347 = getelementptr inbounds i8, i8* %216, i64 %idxprom5.i346
  store i8 %call.i345, i8* %arrayidx6.i347, align 1
  %218 = load i32, i32* %i.i334, align 4
  %inc.i349 = add nsw i32 %218, 1
  store i32 %inc.i349, i32* %i.i334, align 4
  br label %for.cond.i336

vmult.exit350:                                    ; preds = %for.cond.i336
  %219 = load i8*, i8** %c.addr, align 8
  %arrayidx51 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2
  %arraydecay52 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx51, i64 0, i64 0
  %220 = load i8*, i8** %c.addr, align 8
  store i8* %219, i8** %a.addr.i304, align 8
  store i32 0, i32* %ra.addr.i305, align 4
  store i8* %arraydecay52, i8** %b.addr.i306, align 8
  store i32 0, i32* %rb.addr.i307, align 4
  store i8* %220, i8** %c.addr.i308, align 8
  store i32 0, i32* %i.i309, align 4
  br label %for.cond.i311

for.cond.i311:                                    ; preds = %for.body.i326, %vmult.exit350
  %221 = load i32, i32* %i.i309, align 4
  %cmp.i310 = icmp sle i32 %221, 10
  br i1 %cmp.i310, label %for.body.i326, label %vadd.exit328

for.body.i326:                                    ; preds = %for.cond.i311
  %222 = load i8*, i8** %a.addr.i304, align 8
  %223 = load i32, i32* %i.i309, align 4
  %224 = load i32, i32* %ra.addr.i305, align 4
  %add.i312 = add nsw i32 %223, %224
  %rem.i313 = srem i32 %add.i312, 11
  %idxprom.i314 = sext i32 %rem.i313 to i64
  %arrayidx.i315 = getelementptr inbounds i8, i8* %222, i64 %idxprom.i314
  %225 = load i8, i8* %arrayidx.i315, align 1
  %conv.i316 = zext i8 %225 to i32
  %226 = load i8*, i8** %b.addr.i306, align 8
  %227 = load i32, i32* %i.i309, align 4
  %228 = load i32, i32* %rb.addr.i307, align 4
  %add1.i317 = add nsw i32 %227, %228
  %rem2.i318 = srem i32 %add1.i317, 11
  %idxprom3.i319 = sext i32 %rem2.i318 to i64
  %arrayidx4.i320 = getelementptr inbounds i8, i8* %226, i64 %idxprom3.i319
  %229 = load i8, i8* %arrayidx4.i320, align 1
  %conv5.i321 = zext i8 %229 to i32
  %xor.i322 = xor i32 %conv.i316, %conv5.i321
  %conv6.i323 = trunc i32 %xor.i322 to i8
  %230 = load i8*, i8** %c.addr.i308, align 8
  %231 = load i32, i32* %i.i309, align 4
  %idxprom7.i324 = sext i32 %231 to i64
  %arrayidx8.i325 = getelementptr inbounds i8, i8* %230, i64 %idxprom7.i324
  store i8 %conv6.i323, i8* %arrayidx8.i325, align 1
  %232 = load i32, i32* %i.i309, align 4
  %inc.i327 = add nsw i32 %232, 1
  store i32 %inc.i327, i32* %i.i309, align 4
  br label %for.cond.i311

vadd.exit328:                                     ; preds = %for.cond.i311
  %233 = load i8*, i8** %c.addr, align 8
  %arraydecay53 = getelementptr inbounds [11 x i8], [11 x i8]* %ab1, i64 0, i64 0
  %234 = load i8*, i8** %c.addr, align 8
  store i8* %233, i8** %a.addr.i279, align 8
  store i32 0, i32* %ra.addr.i280, align 4
  store i8* %arraydecay53, i8** %b.addr.i281, align 8
  store i32 0, i32* %rb.addr.i282, align 4
  store i8* %234, i8** %c.addr.i283, align 8
  store i32 0, i32* %i.i284, align 4
  br label %for.cond.i286

for.cond.i286:                                    ; preds = %for.body.i301, %vadd.exit328
  %235 = load i32, i32* %i.i284, align 4
  %cmp.i285 = icmp sle i32 %235, 10
  br i1 %cmp.i285, label %for.body.i301, label %vadd.exit303

for.body.i301:                                    ; preds = %for.cond.i286
  %236 = load i8*, i8** %a.addr.i279, align 8
  %237 = load i32, i32* %i.i284, align 4
  %238 = load i32, i32* %ra.addr.i280, align 4
  %add.i287 = add nsw i32 %237, %238
  %rem.i288 = srem i32 %add.i287, 11
  %idxprom.i289 = sext i32 %rem.i288 to i64
  %arrayidx.i290 = getelementptr inbounds i8, i8* %236, i64 %idxprom.i289
  %239 = load i8, i8* %arrayidx.i290, align 1
  %conv.i291 = zext i8 %239 to i32
  %240 = load i8*, i8** %b.addr.i281, align 8
  %241 = load i32, i32* %i.i284, align 4
  %242 = load i32, i32* %rb.addr.i282, align 4
  %add1.i292 = add nsw i32 %241, %242
  %rem2.i293 = srem i32 %add1.i292, 11
  %idxprom3.i294 = sext i32 %rem2.i293 to i64
  %arrayidx4.i295 = getelementptr inbounds i8, i8* %240, i64 %idxprom3.i294
  %243 = load i8, i8* %arrayidx4.i295, align 1
  %conv5.i296 = zext i8 %243 to i32
  %xor.i297 = xor i32 %conv.i291, %conv5.i296
  %conv6.i298 = trunc i32 %xor.i297 to i8
  %244 = load i8*, i8** %c.addr.i283, align 8
  %245 = load i32, i32* %i.i284, align 4
  %idxprom7.i299 = sext i32 %245 to i64
  %arrayidx8.i300 = getelementptr inbounds i8, i8* %244, i64 %idxprom7.i299
  store i8 %conv6.i298, i8* %arrayidx8.i300, align 1
  %246 = load i32, i32* %i.i284, align 4
  %inc.i302 = add nsw i32 %246, 1
  store i32 %inc.i302, i32* %i.i284, align 4
  br label %for.cond.i286

vadd.exit303:                                     ; preds = %for.cond.i286
  %247 = load i8*, i8** %c.addr, align 8
  %arrayidx54 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 2
  %arraydecay55 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx54, i64 0, i64 0
  %248 = load i8*, i8** %c.addr, align 8
  store i8* %247, i8** %a.addr.i254, align 8
  store i32 0, i32* %ra.addr.i255, align 4
  store i8* %arraydecay55, i8** %b.addr.i256, align 8
  store i32 6, i32* %rb.addr.i257, align 4
  store i8* %248, i8** %c.addr.i258, align 8
  store i32 0, i32* %i.i259, align 4
  br label %for.cond.i261

for.cond.i261:                                    ; preds = %for.body.i276, %vadd.exit303
  %249 = load i32, i32* %i.i259, align 4
  %cmp.i260 = icmp sle i32 %249, 10
  br i1 %cmp.i260, label %for.body.i276, label %vadd.exit278

for.body.i276:                                    ; preds = %for.cond.i261
  %250 = load i8*, i8** %a.addr.i254, align 8
  %251 = load i32, i32* %i.i259, align 4
  %252 = load i32, i32* %ra.addr.i255, align 4
  %add.i262 = add nsw i32 %251, %252
  %rem.i263 = srem i32 %add.i262, 11
  %idxprom.i264 = sext i32 %rem.i263 to i64
  %arrayidx.i265 = getelementptr inbounds i8, i8* %250, i64 %idxprom.i264
  %253 = load i8, i8* %arrayidx.i265, align 1
  %conv.i266 = zext i8 %253 to i32
  %254 = load i8*, i8** %b.addr.i256, align 8
  %255 = load i32, i32* %i.i259, align 4
  %256 = load i32, i32* %rb.addr.i257, align 4
  %add1.i267 = add nsw i32 %255, %256
  %rem2.i268 = srem i32 %add1.i267, 11
  %idxprom3.i269 = sext i32 %rem2.i268 to i64
  %arrayidx4.i270 = getelementptr inbounds i8, i8* %254, i64 %idxprom3.i269
  %257 = load i8, i8* %arrayidx4.i270, align 1
  %conv5.i271 = zext i8 %257 to i32
  %xor.i272 = xor i32 %conv.i266, %conv5.i271
  %conv6.i273 = trunc i32 %xor.i272 to i8
  %258 = load i8*, i8** %c.addr.i258, align 8
  %259 = load i32, i32* %i.i259, align 4
  %idxprom7.i274 = sext i32 %259 to i64
  %arrayidx8.i275 = getelementptr inbounds i8, i8* %258, i64 %idxprom7.i274
  store i8 %conv6.i273, i8* %arrayidx8.i275, align 1
  %260 = load i32, i32* %i.i259, align 4
  %inc.i277 = add nsw i32 %260, 1
  store i32 %inc.i277, i32* %i.i259, align 4
  br label %for.cond.i261

vadd.exit278:                                     ; preds = %for.cond.i261
  %261 = load i8*, i8** %c.addr, align 8
  %arraydecay56 = getelementptr inbounds [11 x i8], [11 x i8]* %ab2, i64 0, i64 0
  %262 = load i8*, i8** %c.addr, align 8
  store i8* %261, i8** %a.addr.i229, align 8
  store i32 0, i32* %ra.addr.i230, align 4
  store i8* %arraydecay56, i8** %b.addr.i231, align 8
  store i32 0, i32* %rb.addr.i232, align 4
  store i8* %262, i8** %c.addr.i233, align 8
  store i32 0, i32* %i.i234, align 4
  br label %for.cond.i236

for.cond.i236:                                    ; preds = %for.body.i251, %vadd.exit278
  %263 = load i32, i32* %i.i234, align 4
  %cmp.i235 = icmp sle i32 %263, 10
  br i1 %cmp.i235, label %for.body.i251, label %vadd.exit253

for.body.i251:                                    ; preds = %for.cond.i236
  %264 = load i8*, i8** %a.addr.i229, align 8
  %265 = load i32, i32* %i.i234, align 4
  %266 = load i32, i32* %ra.addr.i230, align 4
  %add.i237 = add nsw i32 %265, %266
  %rem.i238 = srem i32 %add.i237, 11
  %idxprom.i239 = sext i32 %rem.i238 to i64
  %arrayidx.i240 = getelementptr inbounds i8, i8* %264, i64 %idxprom.i239
  %267 = load i8, i8* %arrayidx.i240, align 1
  %conv.i241 = zext i8 %267 to i32
  %268 = load i8*, i8** %b.addr.i231, align 8
  %269 = load i32, i32* %i.i234, align 4
  %270 = load i32, i32* %rb.addr.i232, align 4
  %add1.i242 = add nsw i32 %269, %270
  %rem2.i243 = srem i32 %add1.i242, 11
  %idxprom3.i244 = sext i32 %rem2.i243 to i64
  %arrayidx4.i245 = getelementptr inbounds i8, i8* %268, i64 %idxprom3.i244
  %271 = load i8, i8* %arrayidx4.i245, align 1
  %conv5.i246 = zext i8 %271 to i32
  %xor.i247 = xor i32 %conv.i241, %conv5.i246
  %conv6.i248 = trunc i32 %xor.i247 to i8
  %272 = load i8*, i8** %c.addr.i233, align 8
  %273 = load i32, i32* %i.i234, align 4
  %idxprom7.i249 = sext i32 %273 to i64
  %arrayidx8.i250 = getelementptr inbounds i8, i8* %272, i64 %idxprom7.i249
  store i8 %conv6.i248, i8* %arrayidx8.i250, align 1
  %274 = load i32, i32* %i.i234, align 4
  %inc.i252 = add nsw i32 %274, 1
  store i32 %inc.i252, i32* %i.i234, align 4
  br label %for.cond.i236

vadd.exit253:                                     ; preds = %for.cond.i236
  %275 = load i8, i8* %A, align 1
  %276 = load i8, i8* %B, align 1
  %call57 = call zeroext i8 @mult(i8 zeroext %275, i8 zeroext %276)
  %conv58 = zext i8 %call57 to i32
  %277 = load i8*, i8** %c.addr, align 8
  store i8* %277, i8** %a.addr.i191, align 8
  %278 = load i8*, i8** %a.addr.i191, align 8
  store i8* %278, i8** %a.addr.i.i187, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i188, align 8
  store i32 0, i32* %i.i.i190, align 4
  br label %for.cond.i.i193

for.cond.i.i193:                                  ; preds = %for.body.i.i202, %vadd.exit253
  %279 = load i32, i32* %i.i.i190, align 4
  %cmp.i.i192 = icmp sle i32 %279, 10
  br i1 %cmp.i.i192, label %for.body.i.i202, label %xors.exit203

for.body.i.i202:                                  ; preds = %for.cond.i.i193
  %280 = load i8 (i8)*, i8 (i8)** %f.addr.i.i188, align 8
  %281 = load i8*, i8** %a.addr.i.i187, align 8
  %282 = load i32, i32* %i.i.i190, align 4
  %idxprom.i.i194 = sext i32 %282 to i64
  %arrayidx.i.i195 = getelementptr inbounds i8, i8* %281, i64 %idxprom.i.i194
  %283 = load i8, i8* %arrayidx.i.i195, align 1
  %call.i.i196 = call zeroext i8 %280(i8 zeroext %283) #2
  %conv.i.i197 = zext i8 %call.i.i196 to i32
  %284 = load i8, i8* %result.i.i189, align 1
  %conv1.i.i198 = zext i8 %284 to i32
  %xor.i.i199 = xor i32 %conv1.i.i198, %conv.i.i197
  %conv2.i.i200 = trunc i32 %xor.i.i199 to i8
  store i8 %conv2.i.i200, i8* %result.i.i189, align 1
  %285 = load i32, i32* %i.i.i190, align 4
  %inc.i.i201 = add nsw i32 %285, 1
  store i32 %inc.i.i201, i32* %i.i.i190, align 4
  br label %for.cond.i.i193

xors.exit203:                                     ; preds = %for.cond.i.i193
  %286 = load i8, i8* %result.i.i189, align 1
  %conv60 = zext i8 %286 to i32
  %cmp61 = icmp eq i32 %conv58, %conv60
  call void @assert(i1 zeroext %cmp61)
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
