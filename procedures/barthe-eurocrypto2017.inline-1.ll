; ModuleID = '../examples/barthe-eurocrypto2017.c'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [36 x i8] c"../examples/barthe-eurocrypto2017.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 23 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 80 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 2
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 2
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
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 2
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 2
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
  %a.addr.i444 = alloca i8*, align 8
  %ra.addr.i445 = alloca i32, align 4
  %b.addr.i446 = alloca i8*, align 8
  %rb.addr.i447 = alloca i32, align 4
  %c.addr.i448 = alloca i8*, align 8
  %i.i449 = alloca i32, align 4
  %retval.i434 = alloca i32, align 4
  %x.addr.i435 = alloca double, align 8
  %y.i436 = alloca i32, align 4
  %a.addr.i409 = alloca i8*, align 8
  %ra.addr.i410 = alloca i32, align 4
  %b.addr.i411 = alloca i8*, align 8
  %rb.addr.i412 = alloca i32, align 4
  %c.addr.i413 = alloca i8*, align 8
  %i.i414 = alloca i32, align 4
  %a.addr.i384 = alloca i8*, align 8
  %ra.addr.i385 = alloca i32, align 4
  %b.addr.i386 = alloca i8*, align 8
  %rb.addr.i387 = alloca i32, align 4
  %c.addr.i388 = alloca i8*, align 8
  %i.i389 = alloca i32, align 4
  %a.addr.i359 = alloca i8*, align 8
  %ra.addr.i360 = alloca i32, align 4
  %b.addr.i361 = alloca i8*, align 8
  %rb.addr.i362 = alloca i32, align 4
  %c.addr.i363 = alloca i8*, align 8
  %i.i364 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca double, align 8
  %y.i = alloca i32, align 4
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
  %a.addr.i.i264 = alloca i8*, align 8
  %f.addr.i.i265 = alloca i8 (i8)*, align 8
  %result.i.i266 = alloca i8, align 1
  %i.i.i267 = alloca i32, align 4
  %a.addr.i268 = alloca i8*, align 8
  %a.addr.i246 = alloca i8*, align 8
  %ra.addr.i247 = alloca i32, align 4
  %b.addr.i248 = alloca i8*, align 8
  %rb.addr.i249 = alloca i32, align 4
  %c.addr.i250 = alloca i8*, align 8
  %i.i251 = alloca i32, align 4
  %a.addr.i224 = alloca i8*, align 8
  %ra.addr.i225 = alloca i32, align 4
  %b.addr.i226 = alloca i8*, align 8
  %rb.addr.i227 = alloca i32, align 4
  %c.addr.i228 = alloca i8*, align 8
  %i.i229 = alloca i32, align 4
  %a.addr.i202 = alloca i8*, align 8
  %ra.addr.i203 = alloca i32, align 4
  %b.addr.i204 = alloca i8*, align 8
  %rb.addr.i205 = alloca i32, align 4
  %c.addr.i206 = alloca i8*, align 8
  %i.i207 = alloca i32, align 4
  %a.addr.i180 = alloca i8*, align 8
  %ra.addr.i181 = alloca i32, align 4
  %b.addr.i182 = alloca i8*, align 8
  %rb.addr.i183 = alloca i32, align 4
  %c.addr.i184 = alloca i8*, align 8
  %i.i185 = alloca i32, align 4
  %a.addr.i158 = alloca i8*, align 8
  %ra.addr.i159 = alloca i32, align 4
  %b.addr.i160 = alloca i8*, align 8
  %rb.addr.i161 = alloca i32, align 4
  %c.addr.i162 = alloca i8*, align 8
  %i.i163 = alloca i32, align 4
  %a.addr.i136 = alloca i8*, align 8
  %ra.addr.i137 = alloca i32, align 4
  %b.addr.i138 = alloca i8*, align 8
  %rb.addr.i139 = alloca i32, align 4
  %c.addr.i140 = alloca i8*, align 8
  %i.i141 = alloca i32, align 4
  %a.addr.i135 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i118 = alloca i8*, align 8
  %f.addr.i.i119 = alloca i8 (i8)*, align 8
  %result.i.i120 = alloca i8, align 1
  %i.i.i121 = alloca i32, align 4
  %a.addr.i122 = alloca i8*, align 8
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
  %r = alloca [2 x [2 x i8]], align 1
  %cc = alloca [4 x [2 x i8]], align 1
  %dd = alloca [4 x [2 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i23 = alloca i32, align 4
  %i50 = alloca i32, align 4
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
  store i8* %12, i8** %a.addr.i122, align 8
  %13 = load i8*, i8** %a.addr.i122, align 8
  store i8* %13, i8** %a.addr.i.i118, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i119, align 8
  store i32 0, i32* %i.i.i121, align 4
  br label %for.cond.i.i124

for.cond.i.i124:                                  ; preds = %for.body.i.i133, %xors.exit
  %14 = load i32, i32* %i.i.i121, align 4
  %cmp.i.i123 = icmp sle i32 %14, 1
  br i1 %cmp.i.i123, label %for.body.i.i133, label %xors.exit134

for.body.i.i133:                                  ; preds = %for.cond.i.i124
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i119, align 8
  %16 = load i8*, i8** %a.addr.i.i118, align 8
  %17 = load i32, i32* %i.i.i121, align 4
  %idxprom.i.i125 = sext i32 %17 to i64
  %arrayidx.i.i126 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i125
  %18 = load i8, i8* %arrayidx.i.i126, align 1
  %call.i.i127 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i128 = zext i8 %call.i.i127 to i32
  %19 = load i8, i8* %result.i.i120, align 1
  %conv1.i.i129 = zext i8 %19 to i32
  %xor.i.i130 = xor i32 %conv1.i.i129, %conv.i.i128
  %conv2.i.i131 = trunc i32 %xor.i.i130 to i8
  store i8 %conv2.i.i131, i8* %result.i.i120, align 1
  %20 = load i32, i32* %i.i.i121, align 4
  %inc.i.i132 = add nsw i32 %20, 1
  store i32 %inc.i.i132, i32* %i.i.i121, align 4
  br label %for.cond.i.i124

xors.exit134:                                     ; preds = %for.cond.i.i124
  %21 = load i8, i8* %result.i.i120, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 2, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit134
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 1
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 1
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx, i64 0, i64 %idxprom17
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
  %arrayidx22 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx22, i64 0, i64 0
  store i8* %28, i8** %a.addr.i135, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %arraydecay, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %30 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %30, 1
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %31 = load i8*, i8** %a.addr.i135, align 8
  %32 = load i32, i32* %i.i, align 4
  %33 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %32, %33
  %rem.i = srem i32 %add.i, 2
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %31, i64 %idxprom.i
  %34 = load i8, i8* %arrayidx.i, align 1
  %35 = load i8*, i8** %b.addr.i, align 8
  %36 = load i32, i32* %i.i, align 4
  %37 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %36, %37
  %rem2.i = srem i32 %add1.i, 2
  %idxprom3.i = sext i32 %rem2.i to i64
  %arrayidx4.i = getelementptr inbounds i8, i8* %35, i64 %idxprom3.i
  %38 = load i8, i8* %arrayidx4.i, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %38) #2
  %39 = load i8*, i8** %c.addr.i, align 8
  %40 = load i32, i32* %i.i, align 4
  %idxprom5.i = sext i32 %40 to i64
  %arrayidx6.i = getelementptr inbounds i8, i8* %39, i64 %idxprom5.i
  store i8 %call.i, i8* %arrayidx6.i, align 1
  %41 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %41, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

vmult.exit:                                       ; preds = %for.cond.i
  store i32 1, i32* %i23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc35, %vmult.exit
  %42 = load i32, i32* %i23, align 4
  %cmp25 = icmp sle i32 %42, 1
  br i1 %cmp25, label %for.body27, label %for.end37

for.body27:                                       ; preds = %for.cond24
  %43 = load i8*, i8** %a.addr, align 8
  %44 = load i8*, i8** %b.addr, align 8
  %45 = load i32, i32* %i23, align 4
  %46 = load i32, i32* %i23, align 4
  %mul = mul nsw i32 2, %46
  %idxprom28 = sext i32 %mul to i64
  %arrayidx29 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx29, i64 0, i64 0
  store i8* %43, i8** %a.addr.i136, align 8
  store i32 0, i32* %ra.addr.i137, align 4
  store i8* %44, i8** %b.addr.i138, align 8
  store i32 %45, i32* %rb.addr.i139, align 4
  store i8* %arraydecay30, i8** %c.addr.i140, align 8
  store i32 0, i32* %i.i141, align 4
  br label %for.cond.i143

for.cond.i143:                                    ; preds = %for.body.i155, %for.body27
  %47 = load i32, i32* %i.i141, align 4
  %cmp.i142 = icmp sle i32 %47, 1
  br i1 %cmp.i142, label %for.body.i155, label %vmult.exit157

for.body.i155:                                    ; preds = %for.cond.i143
  %48 = load i8*, i8** %a.addr.i136, align 8
  %49 = load i32, i32* %i.i141, align 4
  %50 = load i32, i32* %ra.addr.i137, align 4
  %add.i144 = add nsw i32 %49, %50
  %rem.i145 = srem i32 %add.i144, 2
  %idxprom.i146 = sext i32 %rem.i145 to i64
  %arrayidx.i147 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i146
  %51 = load i8, i8* %arrayidx.i147, align 1
  %52 = load i8*, i8** %b.addr.i138, align 8
  %53 = load i32, i32* %i.i141, align 4
  %54 = load i32, i32* %rb.addr.i139, align 4
  %add1.i148 = add nsw i32 %53, %54
  %rem2.i149 = srem i32 %add1.i148, 2
  %idxprom3.i150 = sext i32 %rem2.i149 to i64
  %arrayidx4.i151 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i150
  %55 = load i8, i8* %arrayidx4.i151, align 1
  %call.i152 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i140, align 8
  %57 = load i32, i32* %i.i141, align 4
  %idxprom5.i153 = sext i32 %57 to i64
  %arrayidx6.i154 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i153
  store i8 %call.i152, i8* %arrayidx6.i154, align 1
  %58 = load i32, i32* %i.i141, align 4
  %inc.i156 = add nsw i32 %58, 1
  store i32 %inc.i156, i32* %i.i141, align 4
  br label %for.cond.i143

vmult.exit157:                                    ; preds = %for.cond.i143
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i23, align 4
  %61 = load i8*, i8** %b.addr, align 8
  %62 = load i32, i32* %i23, align 4
  %mul31 = mul nsw i32 2, %62
  %add = add nsw i32 %mul31, 1
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx33, i64 0, i64 0
  store i8* %59, i8** %a.addr.i158, align 8
  store i32 %60, i32* %ra.addr.i159, align 4
  store i8* %61, i8** %b.addr.i160, align 8
  store i32 0, i32* %rb.addr.i161, align 4
  store i8* %arraydecay34, i8** %c.addr.i162, align 8
  store i32 0, i32* %i.i163, align 4
  br label %for.cond.i165

for.cond.i165:                                    ; preds = %for.body.i177, %vmult.exit157
  %63 = load i32, i32* %i.i163, align 4
  %cmp.i164 = icmp sle i32 %63, 1
  br i1 %cmp.i164, label %for.body.i177, label %vmult.exit179

for.body.i177:                                    ; preds = %for.cond.i165
  %64 = load i8*, i8** %a.addr.i158, align 8
  %65 = load i32, i32* %i.i163, align 4
  %66 = load i32, i32* %ra.addr.i159, align 4
  %add.i166 = add nsw i32 %65, %66
  %rem.i167 = srem i32 %add.i166, 2
  %idxprom.i168 = sext i32 %rem.i167 to i64
  %arrayidx.i169 = getelementptr inbounds i8, i8* %64, i64 %idxprom.i168
  %67 = load i8, i8* %arrayidx.i169, align 1
  %68 = load i8*, i8** %b.addr.i160, align 8
  %69 = load i32, i32* %i.i163, align 4
  %70 = load i32, i32* %rb.addr.i161, align 4
  %add1.i170 = add nsw i32 %69, %70
  %rem2.i171 = srem i32 %add1.i170, 2
  %idxprom3.i172 = sext i32 %rem2.i171 to i64
  %arrayidx4.i173 = getelementptr inbounds i8, i8* %68, i64 %idxprom3.i172
  %71 = load i8, i8* %arrayidx4.i173, align 1
  %call.i174 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %71) #2
  %72 = load i8*, i8** %c.addr.i162, align 8
  %73 = load i32, i32* %i.i163, align 4
  %idxprom5.i175 = sext i32 %73 to i64
  %arrayidx6.i176 = getelementptr inbounds i8, i8* %72, i64 %idxprom5.i175
  store i8 %call.i174, i8* %arrayidx6.i176, align 1
  %74 = load i32, i32* %i.i163, align 4
  %inc.i178 = add nsw i32 %74, 1
  store i32 %inc.i178, i32* %i.i163, align 4
  br label %for.cond.i165

vmult.exit179:                                    ; preds = %for.cond.i165
  br label %for.inc35

for.inc35:                                        ; preds = %vmult.exit179
  %75 = load i32, i32* %i23, align 4
  %inc36 = add nsw i32 %75, 1
  store i32 %inc36, i32* %i23, align 4
  br label %for.cond24

for.end37:                                        ; preds = %for.cond24
  %76 = load i8*, i8** %a.addr, align 8
  %77 = load i8*, i8** %b.addr, align 8
  %arrayidx38 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 0
  %arraydecay39 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx38, i64 0, i64 0
  store i8* %76, i8** %a.addr.i180, align 8
  store i32 0, i32* %ra.addr.i181, align 4
  store i8* %77, i8** %b.addr.i182, align 8
  store i32 1, i32* %rb.addr.i183, align 4
  store i8* %arraydecay39, i8** %c.addr.i184, align 8
  store i32 0, i32* %i.i185, align 4
  br label %for.cond.i187

for.cond.i187:                                    ; preds = %for.body.i199, %for.end37
  %78 = load i32, i32* %i.i185, align 4
  %cmp.i186 = icmp sle i32 %78, 1
  br i1 %cmp.i186, label %for.body.i199, label %vmult.exit201

for.body.i199:                                    ; preds = %for.cond.i187
  %79 = load i8*, i8** %a.addr.i180, align 8
  %80 = load i32, i32* %i.i185, align 4
  %81 = load i32, i32* %ra.addr.i181, align 4
  %add.i188 = add nsw i32 %80, %81
  %rem.i189 = srem i32 %add.i188, 2
  %idxprom.i190 = sext i32 %rem.i189 to i64
  %arrayidx.i191 = getelementptr inbounds i8, i8* %79, i64 %idxprom.i190
  %82 = load i8, i8* %arrayidx.i191, align 1
  %83 = load i8*, i8** %b.addr.i182, align 8
  %84 = load i32, i32* %i.i185, align 4
  %85 = load i32, i32* %rb.addr.i183, align 4
  %add1.i192 = add nsw i32 %84, %85
  %rem2.i193 = srem i32 %add1.i192, 2
  %idxprom3.i194 = sext i32 %rem2.i193 to i64
  %arrayidx4.i195 = getelementptr inbounds i8, i8* %83, i64 %idxprom3.i194
  %86 = load i8, i8* %arrayidx4.i195, align 1
  %call.i196 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %86) #2
  %87 = load i8*, i8** %c.addr.i184, align 8
  %88 = load i32, i32* %i.i185, align 4
  %idxprom5.i197 = sext i32 %88 to i64
  %arrayidx6.i198 = getelementptr inbounds i8, i8* %87, i64 %idxprom5.i197
  store i8 %call.i196, i8* %arrayidx6.i198, align 1
  %89 = load i32, i32* %i.i185, align 4
  %inc.i200 = add nsw i32 %89, 1
  store i32 %inc.i200, i32* %i.i185, align 4
  br label %for.cond.i187

vmult.exit201:                                    ; preds = %for.cond.i187
  %90 = load i8*, i8** %a.addr, align 8
  %91 = load i8*, i8** %b.addr, align 8
  %arrayidx40 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1
  %arraydecay41 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx40, i64 0, i64 0
  store i8* %90, i8** %a.addr.i202, align 8
  store i32 1, i32* %ra.addr.i203, align 4
  store i8* %91, i8** %b.addr.i204, align 8
  store i32 0, i32* %rb.addr.i205, align 4
  store i8* %arraydecay41, i8** %c.addr.i206, align 8
  store i32 0, i32* %i.i207, align 4
  br label %for.cond.i209

for.cond.i209:                                    ; preds = %for.body.i221, %vmult.exit201
  %92 = load i32, i32* %i.i207, align 4
  %cmp.i208 = icmp sle i32 %92, 1
  br i1 %cmp.i208, label %for.body.i221, label %vmult.exit223

for.body.i221:                                    ; preds = %for.cond.i209
  %93 = load i8*, i8** %a.addr.i202, align 8
  %94 = load i32, i32* %i.i207, align 4
  %95 = load i32, i32* %ra.addr.i203, align 4
  %add.i210 = add nsw i32 %94, %95
  %rem.i211 = srem i32 %add.i210, 2
  %idxprom.i212 = sext i32 %rem.i211 to i64
  %arrayidx.i213 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i212
  %96 = load i8, i8* %arrayidx.i213, align 1
  %97 = load i8*, i8** %b.addr.i204, align 8
  %98 = load i32, i32* %i.i207, align 4
  %99 = load i32, i32* %rb.addr.i205, align 4
  %add1.i214 = add nsw i32 %98, %99
  %rem2.i215 = srem i32 %add1.i214, 2
  %idxprom3.i216 = sext i32 %rem2.i215 to i64
  %arrayidx4.i217 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i216
  %100 = load i8, i8* %arrayidx4.i217, align 1
  %call.i218 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i206, align 8
  %102 = load i32, i32* %i.i207, align 4
  %idxprom5.i219 = sext i32 %102 to i64
  %arrayidx6.i220 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i219
  store i8 %call.i218, i8* %arrayidx6.i220, align 1
  %103 = load i32, i32* %i.i207, align 4
  %inc.i222 = add nsw i32 %103, 1
  store i32 %inc.i222, i32* %i.i207, align 4
  br label %for.cond.i209

vmult.exit223:                                    ; preds = %for.cond.i209
  %104 = load i8*, i8** %a.addr, align 8
  %105 = load i8*, i8** %b.addr, align 8
  %arrayidx42 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 2
  %arraydecay43 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx42, i64 0, i64 0
  store i8* %104, i8** %a.addr.i224, align 8
  store i32 0, i32* %ra.addr.i225, align 4
  store i8* %105, i8** %b.addr.i226, align 8
  store i32 2, i32* %rb.addr.i227, align 4
  store i8* %arraydecay43, i8** %c.addr.i228, align 8
  store i32 0, i32* %i.i229, align 4
  br label %for.cond.i231

for.cond.i231:                                    ; preds = %for.body.i243, %vmult.exit223
  %106 = load i32, i32* %i.i229, align 4
  %cmp.i230 = icmp sle i32 %106, 1
  br i1 %cmp.i230, label %for.body.i243, label %vmult.exit245

for.body.i243:                                    ; preds = %for.cond.i231
  %107 = load i8*, i8** %a.addr.i224, align 8
  %108 = load i32, i32* %i.i229, align 4
  %109 = load i32, i32* %ra.addr.i225, align 4
  %add.i232 = add nsw i32 %108, %109
  %rem.i233 = srem i32 %add.i232, 2
  %idxprom.i234 = sext i32 %rem.i233 to i64
  %arrayidx.i235 = getelementptr inbounds i8, i8* %107, i64 %idxprom.i234
  %110 = load i8, i8* %arrayidx.i235, align 1
  %111 = load i8*, i8** %b.addr.i226, align 8
  %112 = load i32, i32* %i.i229, align 4
  %113 = load i32, i32* %rb.addr.i227, align 4
  %add1.i236 = add nsw i32 %112, %113
  %rem2.i237 = srem i32 %add1.i236, 2
  %idxprom3.i238 = sext i32 %rem2.i237 to i64
  %arrayidx4.i239 = getelementptr inbounds i8, i8* %111, i64 %idxprom3.i238
  %114 = load i8, i8* %arrayidx4.i239, align 1
  %call.i240 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %114) #2
  %115 = load i8*, i8** %c.addr.i228, align 8
  %116 = load i32, i32* %i.i229, align 4
  %idxprom5.i241 = sext i32 %116 to i64
  %arrayidx6.i242 = getelementptr inbounds i8, i8* %115, i64 %idxprom5.i241
  store i8 %call.i240, i8* %arrayidx6.i242, align 1
  %117 = load i32, i32* %i.i229, align 4
  %inc.i244 = add nsw i32 %117, 1
  store i32 %inc.i244, i32* %i.i229, align 4
  br label %for.cond.i231

vmult.exit245:                                    ; preds = %for.cond.i231
  %arrayidx44 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1
  %arraydecay45 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx44, i64 0, i64 0
  %arrayidx46 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1
  %arraydecay47 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx46, i64 0, i64 0
  %arrayidx48 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 1
  %arraydecay49 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx48, i64 0, i64 0
  store i8* %arraydecay45, i8** %a.addr.i246, align 8
  store i32 0, i32* %ra.addr.i247, align 4
  store i8* %arraydecay47, i8** %b.addr.i248, align 8
  store i32 0, i32* %rb.addr.i249, align 4
  store i8* %arraydecay49, i8** %c.addr.i250, align 8
  store i32 0, i32* %i.i251, align 4
  br label %for.cond.i253

for.cond.i253:                                    ; preds = %for.body.i262, %vmult.exit245
  %118 = load i32, i32* %i.i251, align 4
  %cmp.i252 = icmp sle i32 %118, 1
  br i1 %cmp.i252, label %for.body.i262, label %vadd.exit

for.body.i262:                                    ; preds = %for.cond.i253
  %119 = load i8*, i8** %a.addr.i246, align 8
  %120 = load i32, i32* %i.i251, align 4
  %121 = load i32, i32* %ra.addr.i247, align 4
  %add.i254 = add nsw i32 %120, %121
  %rem.i255 = srem i32 %add.i254, 2
  %idxprom.i256 = sext i32 %rem.i255 to i64
  %arrayidx.i257 = getelementptr inbounds i8, i8* %119, i64 %idxprom.i256
  %122 = load i8, i8* %arrayidx.i257, align 1
  %conv.i = zext i8 %122 to i32
  %123 = load i8*, i8** %b.addr.i248, align 8
  %124 = load i32, i32* %i.i251, align 4
  %125 = load i32, i32* %rb.addr.i249, align 4
  %add1.i258 = add nsw i32 %124, %125
  %rem2.i259 = srem i32 %add1.i258, 2
  %idxprom3.i260 = sext i32 %rem2.i259 to i64
  %arrayidx4.i261 = getelementptr inbounds i8, i8* %123, i64 %idxprom3.i260
  %126 = load i8, i8* %arrayidx4.i261, align 1
  %conv5.i = zext i8 %126 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %127 = load i8*, i8** %c.addr.i250, align 8
  %128 = load i32, i32* %i.i251, align 4
  %idxprom7.i = sext i32 %128 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %127, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %129 = load i32, i32* %i.i251, align 4
  %inc.i263 = add nsw i32 %129, 1
  store i32 %inc.i263, i32* %i.i251, align 4
  br label %for.cond.i253

vadd.exit:                                        ; preds = %for.cond.i253
  store i32 1, i32* %i50, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc97, %vadd.exit
  %130 = load i32, i32* %i50, align 4
  %cmp52 = icmp sle i32 %130, 1
  br i1 %cmp52, label %for.body54, label %for.end99

for.body54:                                       ; preds = %for.cond51
  %131 = load i32, i32* %i50, align 4
  %mul55 = mul nsw i32 3, %131
  %sub = sub nsw i32 %mul55, 2
  %idxprom56 = sext i32 %sub to i64
  %arrayidx57 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx57, i64 0, i64 0
  %132 = load i32, i32* %i50, align 4
  %mul59 = mul nsw i32 2, %132
  %idxprom60 = sext i32 %mul59 to i64
  %arrayidx61 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 %idxprom60
  %arraydecay62 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx61, i64 0, i64 0
  %133 = load i32, i32* %i50, align 4
  %mul63 = mul nsw i32 3, %133
  %sub64 = sub nsw i32 %mul63, 1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 %idxprom65
  %arraydecay67 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx66, i64 0, i64 0
  store i8* %arraydecay58, i8** %a.addr.i281, align 8
  store i32 0, i32* %ra.addr.i282, align 4
  store i8* %arraydecay62, i8** %b.addr.i283, align 8
  store i32 0, i32* %rb.addr.i284, align 4
  store i8* %arraydecay67, i8** %c.addr.i285, align 8
  store i32 0, i32* %i.i286, align 4
  br label %for.cond.i288

for.cond.i288:                                    ; preds = %for.body.i303, %for.body54
  %134 = load i32, i32* %i.i286, align 4
  %cmp.i287 = icmp sle i32 %134, 1
  br i1 %cmp.i287, label %for.body.i303, label %vadd.exit305

for.body.i303:                                    ; preds = %for.cond.i288
  %135 = load i8*, i8** %a.addr.i281, align 8
  %136 = load i32, i32* %i.i286, align 4
  %137 = load i32, i32* %ra.addr.i282, align 4
  %add.i289 = add nsw i32 %136, %137
  %rem.i290 = srem i32 %add.i289, 2
  %idxprom.i291 = sext i32 %rem.i290 to i64
  %arrayidx.i292 = getelementptr inbounds i8, i8* %135, i64 %idxprom.i291
  %138 = load i8, i8* %arrayidx.i292, align 1
  %conv.i293 = zext i8 %138 to i32
  %139 = load i8*, i8** %b.addr.i283, align 8
  %140 = load i32, i32* %i.i286, align 4
  %141 = load i32, i32* %rb.addr.i284, align 4
  %add1.i294 = add nsw i32 %140, %141
  %rem2.i295 = srem i32 %add1.i294, 2
  %idxprom3.i296 = sext i32 %rem2.i295 to i64
  %arrayidx4.i297 = getelementptr inbounds i8, i8* %139, i64 %idxprom3.i296
  %142 = load i8, i8* %arrayidx4.i297, align 1
  %conv5.i298 = zext i8 %142 to i32
  %xor.i299 = xor i32 %conv.i293, %conv5.i298
  %conv6.i300 = trunc i32 %xor.i299 to i8
  %143 = load i8*, i8** %c.addr.i285, align 8
  %144 = load i32, i32* %i.i286, align 4
  %idxprom7.i301 = sext i32 %144 to i64
  %arrayidx8.i302 = getelementptr inbounds i8, i8* %143, i64 %idxprom7.i301
  store i8 %conv6.i300, i8* %arrayidx8.i302, align 1
  %145 = load i32, i32* %i.i286, align 4
  %inc.i304 = add nsw i32 %145, 1
  store i32 %inc.i304, i32* %i.i286, align 4
  br label %for.cond.i288

vadd.exit305:                                     ; preds = %for.cond.i288
  %146 = load i32, i32* %i50, align 4
  %mul68 = mul nsw i32 3, %146
  %sub69 = sub nsw i32 %mul68, 1
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 %idxprom70
  %arraydecay72 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx71, i64 0, i64 0
  %147 = load i32, i32* %i50, align 4
  %mul73 = mul nsw i32 2, %147
  %add74 = add nsw i32 %mul73, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 %idxprom75
  %arraydecay77 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx76, i64 0, i64 0
  %148 = load i32, i32* %i50, align 4
  %mul78 = mul nsw i32 3, %148
  %idxprom79 = sext i32 %mul78 to i64
  %arrayidx80 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx80, i64 0, i64 0
  store i8* %arraydecay72, i8** %a.addr.i444, align 8
  store i32 0, i32* %ra.addr.i445, align 4
  store i8* %arraydecay77, i8** %b.addr.i446, align 8
  store i32 0, i32* %rb.addr.i447, align 4
  store i8* %arraydecay81, i8** %c.addr.i448, align 8
  store i32 0, i32* %i.i449, align 4
  br label %for.cond.i451

for.cond.i451:                                    ; preds = %for.body.i466, %vadd.exit305
  %149 = load i32, i32* %i.i449, align 4
  %cmp.i450 = icmp sle i32 %149, 1
  br i1 %cmp.i450, label %for.body.i466, label %vadd.exit468

for.body.i466:                                    ; preds = %for.cond.i451
  %150 = load i8*, i8** %a.addr.i444, align 8
  %151 = load i32, i32* %i.i449, align 4
  %152 = load i32, i32* %ra.addr.i445, align 4
  %add.i452 = add nsw i32 %151, %152
  %rem.i453 = srem i32 %add.i452, 2
  %idxprom.i454 = sext i32 %rem.i453 to i64
  %arrayidx.i455 = getelementptr inbounds i8, i8* %150, i64 %idxprom.i454
  %153 = load i8, i8* %arrayidx.i455, align 1
  %conv.i456 = zext i8 %153 to i32
  %154 = load i8*, i8** %b.addr.i446, align 8
  %155 = load i32, i32* %i.i449, align 4
  %156 = load i32, i32* %rb.addr.i447, align 4
  %add1.i457 = add nsw i32 %155, %156
  %rem2.i458 = srem i32 %add1.i457, 2
  %idxprom3.i459 = sext i32 %rem2.i458 to i64
  %arrayidx4.i460 = getelementptr inbounds i8, i8* %154, i64 %idxprom3.i459
  %157 = load i8, i8* %arrayidx4.i460, align 1
  %conv5.i461 = zext i8 %157 to i32
  %xor.i462 = xor i32 %conv.i456, %conv5.i461
  %conv6.i463 = trunc i32 %xor.i462 to i8
  %158 = load i8*, i8** %c.addr.i448, align 8
  %159 = load i32, i32* %i.i449, align 4
  %idxprom7.i464 = sext i32 %159 to i64
  %arrayidx8.i465 = getelementptr inbounds i8, i8* %158, i64 %idxprom7.i464
  store i8 %conv6.i463, i8* %arrayidx8.i465, align 1
  %160 = load i32, i32* %i.i449, align 4
  %inc.i467 = add nsw i32 %160, 1
  store i32 %inc.i467, i32* %i.i449, align 4
  br label %for.cond.i451

vadd.exit468:                                     ; preds = %for.cond.i451
  %161 = load i32, i32* %i50, align 4
  %mul82 = mul nsw i32 3, %161
  %idxprom83 = sext i32 %mul82 to i64
  %arrayidx84 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 %idxprom83
  %arraydecay85 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx84, i64 0, i64 0
  %162 = load i32, i32* %i50, align 4
  %add86 = add nsw i32 %162, 1
  %conv87 = sitofp i32 %add86 to double
  %div = fdiv double %conv87, 2.000000e+00
  store double %div, double* %x.addr.i435, align 8
  %163 = load double, double* %x.addr.i435, align 8
  %conv.i437 = fptosi double %163 to i32
  store i32 %conv.i437, i32* %y.i436, align 4
  %164 = load double, double* %x.addr.i435, align 8
  %165 = load i32, i32* %y.i436, align 4
  %conv1.i438 = sitofp i32 %165 to double
  %cmp.i439 = fcmp oeq double %164, %conv1.i438
  br i1 %cmp.i439, label %if.then.i440, label %if.end.i442

if.then.i440:                                     ; preds = %vadd.exit468
  %166 = load i32, i32* %y.i436, align 4
  store i32 %166, i32* %retval.i434, align 4
  br label %ceil_.exit443

if.end.i442:                                      ; preds = %vadd.exit468
  %167 = load i32, i32* %y.i436, align 4
  %add.i441 = add nsw i32 %167, 1
  store i32 %add.i441, i32* %retval.i434, align 4
  br label %ceil_.exit443

ceil_.exit443:                                    ; preds = %if.then.i440, %if.end.i442
  %168 = load i32, i32* %retval.i434, align 4
  %idxprom89 = sext i32 %168 to i64
  %arrayidx90 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom89
  %arraydecay91 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx90, i64 0, i64 0
  %169 = load i32, i32* %i50, align 4
  %rem = srem i32 %169, 2
  %170 = load i32, i32* %i50, align 4
  %mul92 = mul nsw i32 3, %170
  %add93 = add nsw i32 %mul92, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 %idxprom94
  %arraydecay96 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx95, i64 0, i64 0
  store i8* %arraydecay85, i8** %a.addr.i409, align 8
  store i32 0, i32* %ra.addr.i410, align 4
  store i8* %arraydecay91, i8** %b.addr.i411, align 8
  store i32 %rem, i32* %rb.addr.i412, align 4
  store i8* %arraydecay96, i8** %c.addr.i413, align 8
  store i32 0, i32* %i.i414, align 4
  br label %for.cond.i416

for.cond.i416:                                    ; preds = %for.body.i431, %ceil_.exit443
  %171 = load i32, i32* %i.i414, align 4
  %cmp.i415 = icmp sle i32 %171, 1
  br i1 %cmp.i415, label %for.body.i431, label %vadd.exit433

for.body.i431:                                    ; preds = %for.cond.i416
  %172 = load i8*, i8** %a.addr.i409, align 8
  %173 = load i32, i32* %i.i414, align 4
  %174 = load i32, i32* %ra.addr.i410, align 4
  %add.i417 = add nsw i32 %173, %174
  %rem.i418 = srem i32 %add.i417, 2
  %idxprom.i419 = sext i32 %rem.i418 to i64
  %arrayidx.i420 = getelementptr inbounds i8, i8* %172, i64 %idxprom.i419
  %175 = load i8, i8* %arrayidx.i420, align 1
  %conv.i421 = zext i8 %175 to i32
  %176 = load i8*, i8** %b.addr.i411, align 8
  %177 = load i32, i32* %i.i414, align 4
  %178 = load i32, i32* %rb.addr.i412, align 4
  %add1.i422 = add nsw i32 %177, %178
  %rem2.i423 = srem i32 %add1.i422, 2
  %idxprom3.i424 = sext i32 %rem2.i423 to i64
  %arrayidx4.i425 = getelementptr inbounds i8, i8* %176, i64 %idxprom3.i424
  %179 = load i8, i8* %arrayidx4.i425, align 1
  %conv5.i426 = zext i8 %179 to i32
  %xor.i427 = xor i32 %conv.i421, %conv5.i426
  %conv6.i428 = trunc i32 %xor.i427 to i8
  %180 = load i8*, i8** %c.addr.i413, align 8
  %181 = load i32, i32* %i.i414, align 4
  %idxprom7.i429 = sext i32 %181 to i64
  %arrayidx8.i430 = getelementptr inbounds i8, i8* %180, i64 %idxprom7.i429
  store i8 %conv6.i428, i8* %arrayidx8.i430, align 1
  %182 = load i32, i32* %i.i414, align 4
  %inc.i432 = add nsw i32 %182, 1
  store i32 %inc.i432, i32* %i.i414, align 4
  br label %for.cond.i416

vadd.exit433:                                     ; preds = %for.cond.i416
  br label %for.inc97

for.inc97:                                        ; preds = %vadd.exit433
  %183 = load i32, i32* %i50, align 4
  %inc98 = add nsw i32 %183, 1
  store i32 %inc98, i32* %i50, align 4
  br label %for.cond51

for.end99:                                        ; preds = %for.cond51
  %arrayidx100 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %dd, i64 0, i64 1
  %arraydecay101 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx100, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 0
  %arraydecay103 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx102, i64 0, i64 0
  %184 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay101, i8** %a.addr.i384, align 8
  store i32 0, i32* %ra.addr.i385, align 4
  store i8* %arraydecay103, i8** %b.addr.i386, align 8
  store i32 0, i32* %rb.addr.i387, align 4
  store i8* %184, i8** %c.addr.i388, align 8
  store i32 0, i32* %i.i389, align 4
  br label %for.cond.i391

for.cond.i391:                                    ; preds = %for.body.i406, %for.end99
  %185 = load i32, i32* %i.i389, align 4
  %cmp.i390 = icmp sle i32 %185, 1
  br i1 %cmp.i390, label %for.body.i406, label %vadd.exit408

for.body.i406:                                    ; preds = %for.cond.i391
  %186 = load i8*, i8** %a.addr.i384, align 8
  %187 = load i32, i32* %i.i389, align 4
  %188 = load i32, i32* %ra.addr.i385, align 4
  %add.i392 = add nsw i32 %187, %188
  %rem.i393 = srem i32 %add.i392, 2
  %idxprom.i394 = sext i32 %rem.i393 to i64
  %arrayidx.i395 = getelementptr inbounds i8, i8* %186, i64 %idxprom.i394
  %189 = load i8, i8* %arrayidx.i395, align 1
  %conv.i396 = zext i8 %189 to i32
  %190 = load i8*, i8** %b.addr.i386, align 8
  %191 = load i32, i32* %i.i389, align 4
  %192 = load i32, i32* %rb.addr.i387, align 4
  %add1.i397 = add nsw i32 %191, %192
  %rem2.i398 = srem i32 %add1.i397, 2
  %idxprom3.i399 = sext i32 %rem2.i398 to i64
  %arrayidx4.i400 = getelementptr inbounds i8, i8* %190, i64 %idxprom3.i399
  %193 = load i8, i8* %arrayidx4.i400, align 1
  %conv5.i401 = zext i8 %193 to i32
  %xor.i402 = xor i32 %conv.i396, %conv5.i401
  %conv6.i403 = trunc i32 %xor.i402 to i8
  %194 = load i8*, i8** %c.addr.i388, align 8
  %195 = load i32, i32* %i.i389, align 4
  %idxprom7.i404 = sext i32 %195 to i64
  %arrayidx8.i405 = getelementptr inbounds i8, i8* %194, i64 %idxprom7.i404
  store i8 %conv6.i403, i8* %arrayidx8.i405, align 1
  %196 = load i32, i32* %i.i389, align 4
  %inc.i407 = add nsw i32 %196, 1
  store i32 %inc.i407, i32* %i.i389, align 4
  br label %for.cond.i391

vadd.exit408:                                     ; preds = %for.cond.i391
  %arrayidx104 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 1
  %arraydecay105 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx104, i64 0, i64 0
  %197 = load i8*, i8** %c.addr, align 8
  %198 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay105, i8** %a.addr.i359, align 8
  store i32 0, i32* %ra.addr.i360, align 4
  store i8* %197, i8** %b.addr.i361, align 8
  store i32 0, i32* %rb.addr.i362, align 4
  store i8* %198, i8** %c.addr.i363, align 8
  store i32 0, i32* %i.i364, align 4
  br label %for.cond.i366

for.cond.i366:                                    ; preds = %for.body.i381, %vadd.exit408
  %199 = load i32, i32* %i.i364, align 4
  %cmp.i365 = icmp sle i32 %199, 1
  br i1 %cmp.i365, label %for.body.i381, label %vadd.exit383

for.body.i381:                                    ; preds = %for.cond.i366
  %200 = load i8*, i8** %a.addr.i359, align 8
  %201 = load i32, i32* %i.i364, align 4
  %202 = load i32, i32* %ra.addr.i360, align 4
  %add.i367 = add nsw i32 %201, %202
  %rem.i368 = srem i32 %add.i367, 2
  %idxprom.i369 = sext i32 %rem.i368 to i64
  %arrayidx.i370 = getelementptr inbounds i8, i8* %200, i64 %idxprom.i369
  %203 = load i8, i8* %arrayidx.i370, align 1
  %conv.i371 = zext i8 %203 to i32
  %204 = load i8*, i8** %b.addr.i361, align 8
  %205 = load i32, i32* %i.i364, align 4
  %206 = load i32, i32* %rb.addr.i362, align 4
  %add1.i372 = add nsw i32 %205, %206
  %rem2.i373 = srem i32 %add1.i372, 2
  %idxprom3.i374 = sext i32 %rem2.i373 to i64
  %arrayidx4.i375 = getelementptr inbounds i8, i8* %204, i64 %idxprom3.i374
  %207 = load i8, i8* %arrayidx4.i375, align 1
  %conv5.i376 = zext i8 %207 to i32
  %xor.i377 = xor i32 %conv.i371, %conv5.i376
  %conv6.i378 = trunc i32 %xor.i377 to i8
  %208 = load i8*, i8** %c.addr.i363, align 8
  %209 = load i32, i32* %i.i364, align 4
  %idxprom7.i379 = sext i32 %209 to i64
  %arrayidx8.i380 = getelementptr inbounds i8, i8* %208, i64 %idxprom7.i379
  store i8 %conv6.i378, i8* %arrayidx8.i380, align 1
  %210 = load i32, i32* %i.i364, align 4
  %inc.i382 = add nsw i32 %210, 1
  store i32 %inc.i382, i32* %i.i364, align 4
  br label %for.cond.i366

vadd.exit383:                                     ; preds = %for.cond.i366
  store double 2.500000e-01, double* %x.addr.i, align 8
  %211 = load double, double* %x.addr.i, align 8
  %conv.i356 = fptosi double %211 to i32
  store i32 %conv.i356, i32* %y.i, align 4
  %212 = load double, double* %x.addr.i, align 8
  %213 = load i32, i32* %y.i, align 4
  %conv1.i = sitofp i32 %213 to double
  %cmp.i357 = fcmp oeq double %212, %conv1.i
  br i1 %cmp.i357, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %vadd.exit383
  %214 = load i32, i32* %y.i, align 4
  store i32 %214, i32* %retval.i, align 4
  br label %ceil_.exit

if.end.i:                                         ; preds = %vadd.exit383
  %215 = load i32, i32* %y.i, align 4
  %add.i358 = add nsw i32 %215, 1
  store i32 %add.i358, i32* %retval.i, align 4
  br label %ceil_.exit

ceil_.exit:                                       ; preds = %if.then.i, %if.end.i
  %216 = load i32, i32* %retval.i, align 4
  %idxprom107 = sext i32 %216 to i64
  %arrayidx108 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom107
  %arraydecay109 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx108, i64 0, i64 0
  %217 = load i8*, i8** %c.addr, align 8
  %218 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay109, i8** %a.addr.i331, align 8
  store i32 1, i32* %ra.addr.i332, align 4
  store i8* %217, i8** %b.addr.i333, align 8
  store i32 0, i32* %rb.addr.i334, align 4
  store i8* %218, i8** %c.addr.i335, align 8
  store i32 0, i32* %i.i336, align 4
  br label %for.cond.i338

for.cond.i338:                                    ; preds = %for.body.i353, %ceil_.exit
  %219 = load i32, i32* %i.i336, align 4
  %cmp.i337 = icmp sle i32 %219, 1
  br i1 %cmp.i337, label %for.body.i353, label %vadd.exit355

for.body.i353:                                    ; preds = %for.cond.i338
  %220 = load i8*, i8** %a.addr.i331, align 8
  %221 = load i32, i32* %i.i336, align 4
  %222 = load i32, i32* %ra.addr.i332, align 4
  %add.i339 = add nsw i32 %221, %222
  %rem.i340 = srem i32 %add.i339, 2
  %idxprom.i341 = sext i32 %rem.i340 to i64
  %arrayidx.i342 = getelementptr inbounds i8, i8* %220, i64 %idxprom.i341
  %223 = load i8, i8* %arrayidx.i342, align 1
  %conv.i343 = zext i8 %223 to i32
  %224 = load i8*, i8** %b.addr.i333, align 8
  %225 = load i32, i32* %i.i336, align 4
  %226 = load i32, i32* %rb.addr.i334, align 4
  %add1.i344 = add nsw i32 %225, %226
  %rem2.i345 = srem i32 %add1.i344, 2
  %idxprom3.i346 = sext i32 %rem2.i345 to i64
  %arrayidx4.i347 = getelementptr inbounds i8, i8* %224, i64 %idxprom3.i346
  %227 = load i8, i8* %arrayidx4.i347, align 1
  %conv5.i348 = zext i8 %227 to i32
  %xor.i349 = xor i32 %conv.i343, %conv5.i348
  %conv6.i350 = trunc i32 %xor.i349 to i8
  %228 = load i8*, i8** %c.addr.i335, align 8
  %229 = load i32, i32* %i.i336, align 4
  %idxprom7.i351 = sext i32 %229 to i64
  %arrayidx8.i352 = getelementptr inbounds i8, i8* %228, i64 %idxprom7.i351
  store i8 %conv6.i350, i8* %arrayidx8.i352, align 1
  %230 = load i32, i32* %i.i336, align 4
  %inc.i354 = add nsw i32 %230, 1
  store i32 %inc.i354, i32* %i.i336, align 4
  br label %for.cond.i338

vadd.exit355:                                     ; preds = %for.cond.i338
  %arrayidx110 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %cc, i64 0, i64 2
  %arraydecay111 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx110, i64 0, i64 0
  %231 = load i8*, i8** %c.addr, align 8
  %232 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay111, i8** %a.addr.i306, align 8
  store i32 0, i32* %ra.addr.i307, align 4
  store i8* %231, i8** %b.addr.i308, align 8
  store i32 0, i32* %rb.addr.i309, align 4
  store i8* %232, i8** %c.addr.i310, align 8
  store i32 0, i32* %i.i311, align 4
  br label %for.cond.i313

for.cond.i313:                                    ; preds = %for.body.i328, %vadd.exit355
  %233 = load i32, i32* %i.i311, align 4
  %cmp.i312 = icmp sle i32 %233, 1
  br i1 %cmp.i312, label %for.body.i328, label %vadd.exit330

for.body.i328:                                    ; preds = %for.cond.i313
  %234 = load i8*, i8** %a.addr.i306, align 8
  %235 = load i32, i32* %i.i311, align 4
  %236 = load i32, i32* %ra.addr.i307, align 4
  %add.i314 = add nsw i32 %235, %236
  %rem.i315 = srem i32 %add.i314, 2
  %idxprom.i316 = sext i32 %rem.i315 to i64
  %arrayidx.i317 = getelementptr inbounds i8, i8* %234, i64 %idxprom.i316
  %237 = load i8, i8* %arrayidx.i317, align 1
  %conv.i318 = zext i8 %237 to i32
  %238 = load i8*, i8** %b.addr.i308, align 8
  %239 = load i32, i32* %i.i311, align 4
  %240 = load i32, i32* %rb.addr.i309, align 4
  %add1.i319 = add nsw i32 %239, %240
  %rem2.i320 = srem i32 %add1.i319, 2
  %idxprom3.i321 = sext i32 %rem2.i320 to i64
  %arrayidx4.i322 = getelementptr inbounds i8, i8* %238, i64 %idxprom3.i321
  %241 = load i8, i8* %arrayidx4.i322, align 1
  %conv5.i323 = zext i8 %241 to i32
  %xor.i324 = xor i32 %conv.i318, %conv5.i323
  %conv6.i325 = trunc i32 %xor.i324 to i8
  %242 = load i8*, i8** %c.addr.i310, align 8
  %243 = load i32, i32* %i.i311, align 4
  %idxprom7.i326 = sext i32 %243 to i64
  %arrayidx8.i327 = getelementptr inbounds i8, i8* %242, i64 %idxprom7.i326
  store i8 %conv6.i325, i8* %arrayidx8.i327, align 1
  %244 = load i32, i32* %i.i311, align 4
  %inc.i329 = add nsw i32 %244, 1
  store i32 %inc.i329, i32* %i.i311, align 4
  br label %for.cond.i313

vadd.exit330:                                     ; preds = %for.cond.i313
  %245 = load i8, i8* %A, align 1
  %246 = load i8, i8* %B, align 1
  %call112 = call zeroext i8 @mult(i8 zeroext %245, i8 zeroext %246)
  %conv113 = zext i8 %call112 to i32
  %247 = load i8*, i8** %c.addr, align 8
  store i8* %247, i8** %a.addr.i268, align 8
  %248 = load i8*, i8** %a.addr.i268, align 8
  store i8* %248, i8** %a.addr.i.i264, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i265, align 8
  store i32 0, i32* %i.i.i267, align 4
  br label %for.cond.i.i270

for.cond.i.i270:                                  ; preds = %for.body.i.i279, %vadd.exit330
  %249 = load i32, i32* %i.i.i267, align 4
  %cmp.i.i269 = icmp sle i32 %249, 1
  br i1 %cmp.i.i269, label %for.body.i.i279, label %xors.exit280

for.body.i.i279:                                  ; preds = %for.cond.i.i270
  %250 = load i8 (i8)*, i8 (i8)** %f.addr.i.i265, align 8
  %251 = load i8*, i8** %a.addr.i.i264, align 8
  %252 = load i32, i32* %i.i.i267, align 4
  %idxprom.i.i271 = sext i32 %252 to i64
  %arrayidx.i.i272 = getelementptr inbounds i8, i8* %251, i64 %idxprom.i.i271
  %253 = load i8, i8* %arrayidx.i.i272, align 1
  %call.i.i273 = call zeroext i8 %250(i8 zeroext %253) #2
  %conv.i.i274 = zext i8 %call.i.i273 to i32
  %254 = load i8, i8* %result.i.i266, align 1
  %conv1.i.i275 = zext i8 %254 to i32
  %xor.i.i276 = xor i32 %conv1.i.i275, %conv.i.i274
  %conv2.i.i277 = trunc i32 %xor.i.i276 to i8
  store i8 %conv2.i.i277, i8* %result.i.i266, align 1
  %255 = load i32, i32* %i.i.i267, align 4
  %inc.i.i278 = add nsw i32 %255, 1
  store i32 %inc.i.i278, i32* %i.i.i267, align 4
  br label %for.cond.i.i270

xors.exit280:                                     ; preds = %for.cond.i.i270
  %256 = load i8, i8* %result.i.i266, align 1
  %conv115 = zext i8 %256 to i32
  %cmp116 = icmp eq i32 %conv113, %conv115
  call void @assert(i1 zeroext %cmp116)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %a.addr.i31 = alloca i8*, align 8
  %ra.addr.i32 = alloca i32, align 4
  %b.addr.i33 = alloca i8*, align 8
  %rb.addr.i34 = alloca i32, align 4
  %c.addr.i35 = alloca i8*, align 8
  %i.i36 = alloca i32, align 4
  %a.addr.i.i14 = alloca i8*, align 8
  %f.addr.i.i15 = alloca i8 (i8)*, align 8
  %result.i.i16 = alloca i8, align 1
  %i.i.i17 = alloca i32, align 4
  %a.addr.i18 = alloca i8*, align 8
  %a.addr.i13 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i = alloca i8*, align 8
  %f.addr.i.i = alloca i8 (i8)*, align 8
  %result.i.i = alloca i8, align 1
  %i.i.i = alloca i32, align 4
  %a.addr.i = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %X = alloca i8, align 1
  %r = alloca [2 x i8], align 1
  %i = alloca i32, align 4
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %xors.exit
  %11 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %11, 1
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call zeroext i8 (...) @rand()
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %r, i64 0, i64 %idxprom
  store i8 %call6, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %r, i64 0, i64 0
  %14 = load i8*, i8** %x.addr, align 8
  %15 = load i8*, i8** %x.addr, align 8
  store i8* %arraydecay, i8** %a.addr.i13, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %14, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %15, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end
  %16 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %16, 1
  br i1 %cmp.i, label %for.body.i, label %vadd.exit

for.body.i:                                       ; preds = %for.cond.i
  %17 = load i8*, i8** %a.addr.i13, align 8
  %18 = load i32, i32* %i.i, align 4
  %19 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %18, %19
  %rem.i = srem i32 %add.i, 2
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %17, i64 %idxprom.i
  %20 = load i8, i8* %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = load i8*, i8** %b.addr.i, align 8
  %22 = load i32, i32* %i.i, align 4
  %23 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %22, %23
  %rem2.i = srem i32 %add1.i, 2
  %idxprom3.i = sext i32 %rem2.i to i64
  %arrayidx4.i = getelementptr inbounds i8, i8* %21, i64 %idxprom3.i
  %24 = load i8, i8* %arrayidx4.i, align 1
  %conv5.i = zext i8 %24 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %25 = load i8*, i8** %c.addr.i, align 8
  %26 = load i32, i32* %i.i, align 4
  %idxprom7.i = sext i32 %26 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %25, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %27 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %27, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

vadd.exit:                                        ; preds = %for.cond.i
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %r, i64 0, i64 0
  %28 = load i8*, i8** %x.addr, align 8
  %29 = load i8*, i8** %x.addr, align 8
  store i8* %arraydecay7, i8** %a.addr.i31, align 8
  store i32 1, i32* %ra.addr.i32, align 4
  store i8* %28, i8** %b.addr.i33, align 8
  store i32 0, i32* %rb.addr.i34, align 4
  store i8* %29, i8** %c.addr.i35, align 8
  store i32 0, i32* %i.i36, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %for.body.i53, %vadd.exit
  %30 = load i32, i32* %i.i36, align 4
  %cmp.i37 = icmp sle i32 %30, 1
  br i1 %cmp.i37, label %for.body.i53, label %vadd.exit55

for.body.i53:                                     ; preds = %for.cond.i38
  %31 = load i8*, i8** %a.addr.i31, align 8
  %32 = load i32, i32* %i.i36, align 4
  %33 = load i32, i32* %ra.addr.i32, align 4
  %add.i39 = add nsw i32 %32, %33
  %rem.i40 = srem i32 %add.i39, 2
  %idxprom.i41 = sext i32 %rem.i40 to i64
  %arrayidx.i42 = getelementptr inbounds i8, i8* %31, i64 %idxprom.i41
  %34 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %34 to i32
  %35 = load i8*, i8** %b.addr.i33, align 8
  %36 = load i32, i32* %i.i36, align 4
  %37 = load i32, i32* %rb.addr.i34, align 4
  %add1.i44 = add nsw i32 %36, %37
  %rem2.i45 = srem i32 %add1.i44, 2
  %idxprom3.i46 = sext i32 %rem2.i45 to i64
  %arrayidx4.i47 = getelementptr inbounds i8, i8* %35, i64 %idxprom3.i46
  %38 = load i8, i8* %arrayidx4.i47, align 1
  %conv5.i48 = zext i8 %38 to i32
  %xor.i49 = xor i32 %conv.i43, %conv5.i48
  %conv6.i50 = trunc i32 %xor.i49 to i8
  %39 = load i8*, i8** %c.addr.i35, align 8
  %40 = load i32, i32* %i.i36, align 4
  %idxprom7.i51 = sext i32 %40 to i64
  %arrayidx8.i52 = getelementptr inbounds i8, i8* %39, i64 %idxprom7.i51
  store i8 %conv6.i50, i8* %arrayidx8.i52, align 1
  %41 = load i32, i32* %i.i36, align 4
  %inc.i54 = add nsw i32 %41, 1
  store i32 %inc.i54, i32* %i.i36, align 4
  br label %for.cond.i38

vadd.exit55:                                      ; preds = %for.cond.i38
  %42 = load i8, i8* %X, align 1
  %conv8 = zext i8 %42 to i32
  %43 = load i8*, i8** %x.addr, align 8
  store i8* %43, i8** %a.addr.i18, align 8
  %44 = load i8*, i8** %a.addr.i18, align 8
  store i8* %44, i8** %a.addr.i.i14, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i15, align 8
  store i32 0, i32* %i.i.i17, align 4
  br label %for.cond.i.i20

for.cond.i.i20:                                   ; preds = %for.body.i.i29, %vadd.exit55
  %45 = load i32, i32* %i.i.i17, align 4
  %cmp.i.i19 = icmp sle i32 %45, 1
  br i1 %cmp.i.i19, label %for.body.i.i29, label %xors.exit30

for.body.i.i29:                                   ; preds = %for.cond.i.i20
  %46 = load i8 (i8)*, i8 (i8)** %f.addr.i.i15, align 8
  %47 = load i8*, i8** %a.addr.i.i14, align 8
  %48 = load i32, i32* %i.i.i17, align 4
  %idxprom.i.i21 = sext i32 %48 to i64
  %arrayidx.i.i22 = getelementptr inbounds i8, i8* %47, i64 %idxprom.i.i21
  %49 = load i8, i8* %arrayidx.i.i22, align 1
  %call.i.i23 = call zeroext i8 %46(i8 zeroext %49) #2
  %conv.i.i24 = zext i8 %call.i.i23 to i32
  %50 = load i8, i8* %result.i.i16, align 1
  %conv1.i.i25 = zext i8 %50 to i32
  %xor.i.i26 = xor i32 %conv1.i.i25, %conv.i.i24
  %conv2.i.i27 = trunc i32 %xor.i.i26 to i8
  store i8 %conv2.i.i27, i8* %result.i.i16, align 1
  %51 = load i32, i32* %i.i.i17, align 4
  %inc.i.i28 = add nsw i32 %51, 1
  store i32 %inc.i.i28, i32* %i.i.i17, align 4
  br label %for.cond.i.i20

xors.exit30:                                      ; preds = %for.cond.i.i20
  %52 = load i8, i8* %result.i.i16, align 1
  %conv10 = zext i8 %52 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  call void @assert(i1 zeroext %cmp11)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
