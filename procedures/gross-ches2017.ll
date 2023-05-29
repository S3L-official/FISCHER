; ModuleID = '../examples/gross-ches2017.c'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 3
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 3
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
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 3
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 3
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
  %a.addr.i434 = alloca i8*, align 8
  %ra.addr.i435 = alloca i32, align 4
  %b.addr.i436 = alloca i8*, align 8
  %rb.addr.i437 = alloca i32, align 4
  %c.addr.i438 = alloca i8*, align 8
  %i.i439 = alloca i32, align 4
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
  %a.addr.i362 = alloca i8*, align 8
  %ra.addr.i363 = alloca i32, align 4
  %b.addr.i364 = alloca i8*, align 8
  %rb.addr.i365 = alloca i32, align 4
  %c.addr.i366 = alloca i8*, align 8
  %i.i367 = alloca i32, align 4
  %a.addr.i337 = alloca i8*, align 8
  %ra.addr.i338 = alloca i32, align 4
  %b.addr.i339 = alloca i8*, align 8
  %rb.addr.i340 = alloca i32, align 4
  %c.addr.i341 = alloca i8*, align 8
  %i.i342 = alloca i32, align 4
  %a.addr.i315 = alloca i8*, align 8
  %ra.addr.i316 = alloca i32, align 4
  %b.addr.i317 = alloca i8*, align 8
  %rb.addr.i318 = alloca i32, align 4
  %c.addr.i319 = alloca i8*, align 8
  %i.i320 = alloca i32, align 4
  %a.addr.i290 = alloca i8*, align 8
  %ra.addr.i291 = alloca i32, align 4
  %b.addr.i292 = alloca i8*, align 8
  %rb.addr.i293 = alloca i32, align 4
  %c.addr.i294 = alloca i8*, align 8
  %i.i295 = alloca i32, align 4
  %a.addr.i265 = alloca i8*, align 8
  %ra.addr.i266 = alloca i32, align 4
  %b.addr.i267 = alloca i8*, align 8
  %rb.addr.i268 = alloca i32, align 4
  %c.addr.i269 = alloca i8*, align 8
  %i.i270 = alloca i32, align 4
  %a.addr.i240 = alloca i8*, align 8
  %ra.addr.i241 = alloca i32, align 4
  %b.addr.i242 = alloca i8*, align 8
  %rb.addr.i243 = alloca i32, align 4
  %c.addr.i244 = alloca i8*, align 8
  %i.i245 = alloca i32, align 4
  %a.addr.i215 = alloca i8*, align 8
  %ra.addr.i216 = alloca i32, align 4
  %b.addr.i217 = alloca i8*, align 8
  %rb.addr.i218 = alloca i32, align 4
  %c.addr.i219 = alloca i8*, align 8
  %i.i220 = alloca i32, align 4
  %a.addr.i.i198 = alloca i8*, align 8
  %f.addr.i.i199 = alloca i8 (i8)*, align 8
  %result.i.i200 = alloca i8, align 1
  %i.i.i201 = alloca i32, align 4
  %a.addr.i202 = alloca i8*, align 8
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
  %a.addr.i114 = alloca i8*, align 8
  %ra.addr.i115 = alloca i32, align 4
  %b.addr.i116 = alloca i8*, align 8
  %rb.addr.i117 = alloca i32, align 4
  %c.addr.i118 = alloca i8*, align 8
  %i.i119 = alloca i32, align 4
  %a.addr.i92 = alloca i8*, align 8
  %ra.addr.i93 = alloca i32, align 4
  %b.addr.i94 = alloca i8*, align 8
  %rb.addr.i95 = alloca i32, align 4
  %c.addr.i96 = alloca i8*, align 8
  %i.i97 = alloca i32, align 4
  %a.addr.i91 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i74 = alloca i8*, align 8
  %f.addr.i.i75 = alloca i8 (i8)*, align 8
  %result.i.i76 = alloca i8, align 1
  %i.i.i77 = alloca i32, align 4
  %a.addr.i78 = alloca i8*, align 8
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
  %r = alloca [3 x [3 x i8]], align 1
  %a1b = alloca [3 x i8], align 1
  %ab1 = alloca [3 x i8], align 1
  %a2b = alloca [3 x i8], align 1
  %ab2 = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i22 = alloca i32, align 4
  %l = alloca i32, align 4
  %z = alloca [3 x i8], align 1
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
  store i8* %12, i8** %a.addr.i78, align 8
  %13 = load i8*, i8** %a.addr.i78, align 8
  store i8* %13, i8** %a.addr.i.i74, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i75, align 8
  store i32 0, i32* %i.i.i77, align 4
  br label %for.cond.i.i80

for.cond.i.i80:                                   ; preds = %for.body.i.i89, %xors.exit
  %14 = load i32, i32* %i.i.i77, align 4
  %cmp.i.i79 = icmp sle i32 %14, 2
  br i1 %cmp.i.i79, label %for.body.i.i89, label %xors.exit90

for.body.i.i89:                                   ; preds = %for.cond.i.i80
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i75, align 8
  %16 = load i8*, i8** %a.addr.i.i74, align 8
  %17 = load i32, i32* %i.i.i77, align 4
  %idxprom.i.i81 = sext i32 %17 to i64
  %arrayidx.i.i82 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i81
  %18 = load i8, i8* %arrayidx.i.i82, align 1
  %call.i.i83 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i84 = zext i8 %call.i.i83 to i32
  %19 = load i8, i8* %result.i.i76, align 1
  %conv1.i.i85 = zext i8 %19 to i32
  %xor.i.i86 = xor i32 %conv1.i.i85, %conv.i.i84
  %conv2.i.i87 = trunc i32 %xor.i.i86 to i8
  store i8 %conv2.i.i87, i8* %result.i.i76, align 1
  %20 = load i32, i32* %i.i.i77, align 4
  %inc.i.i88 = add nsw i32 %20, 1
  store i32 %inc.i.i88, i32* %i.i.i77, align 4
  br label %for.cond.i.i80

xors.exit90:                                      ; preds = %for.cond.i.i80
  %21 = load i8, i8* %result.i.i76, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 3, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit90
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 2
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 2
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i64 0, i64 %idxprom17
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
  store i8* %28, i8** %a.addr.i91, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %30, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %31 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %31, 2
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %32 = load i8*, i8** %a.addr.i91, align 8
  %33 = load i32, i32* %i.i, align 4
  %34 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %33, %34
  %rem.i = srem i32 %add.i, 3
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %32, i64 %idxprom.i
  %35 = load i8, i8* %arrayidx.i, align 1
  %36 = load i8*, i8** %b.addr.i, align 8
  %37 = load i32, i32* %i.i, align 4
  %38 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %37, %38
  %rem2.i = srem i32 %add1.i, 3
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
  %cmp24 = icmp slt i32 %43, 0
  br i1 %cmp24, label %for.body26, label %for.end48

for.body26:                                       ; preds = %for.cond23
  %44 = load i8*, i8** %a.addr, align 8
  %45 = load i8*, i8** %b.addr, align 8
  %46 = load i32, i32* %i22, align 4
  %mul = mul nsw i32 2, %46
  %add = add nsw i32 %mul, 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %ab1, i64 0, i64 0
  store i8* %44, i8** %a.addr.i92, align 8
  store i32 0, i32* %ra.addr.i93, align 4
  store i8* %45, i8** %b.addr.i94, align 8
  store i32 %add, i32* %rb.addr.i95, align 4
  store i8* %arraydecay, i8** %c.addr.i96, align 8
  store i32 0, i32* %i.i97, align 4
  br label %for.cond.i99

for.cond.i99:                                     ; preds = %for.body.i111, %for.body26
  %47 = load i32, i32* %i.i97, align 4
  %cmp.i98 = icmp sle i32 %47, 2
  br i1 %cmp.i98, label %for.body.i111, label %vmult.exit113

for.body.i111:                                    ; preds = %for.cond.i99
  %48 = load i8*, i8** %a.addr.i92, align 8
  %49 = load i32, i32* %i.i97, align 4
  %50 = load i32, i32* %ra.addr.i93, align 4
  %add.i100 = add nsw i32 %49, %50
  %rem.i101 = srem i32 %add.i100, 3
  %idxprom.i102 = sext i32 %rem.i101 to i64
  %arrayidx.i103 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i102
  %51 = load i8, i8* %arrayidx.i103, align 1
  %52 = load i8*, i8** %b.addr.i94, align 8
  %53 = load i32, i32* %i.i97, align 4
  %54 = load i32, i32* %rb.addr.i95, align 4
  %add1.i104 = add nsw i32 %53, %54
  %rem2.i105 = srem i32 %add1.i104, 3
  %idxprom3.i106 = sext i32 %rem2.i105 to i64
  %arrayidx4.i107 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i106
  %55 = load i8, i8* %arrayidx4.i107, align 1
  %call.i108 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i96, align 8
  %57 = load i32, i32* %i.i97, align 4
  %idxprom5.i109 = sext i32 %57 to i64
  %arrayidx6.i110 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i109
  store i8 %call.i108, i8* %arrayidx6.i110, align 1
  %58 = load i32, i32* %i.i97, align 4
  %inc.i112 = add nsw i32 %58, 1
  store i32 %inc.i112, i32* %i.i97, align 4
  br label %for.cond.i99

vmult.exit113:                                    ; preds = %for.cond.i99
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i22, align 4
  %mul27 = mul nsw i32 2, %60
  %add28 = add nsw i32 %mul27, 1
  %61 = load i8*, i8** %b.addr, align 8
  %arraydecay29 = getelementptr inbounds [3 x i8], [3 x i8]* %a1b, i64 0, i64 0
  store i8* %59, i8** %a.addr.i114, align 8
  store i32 %add28, i32* %ra.addr.i115, align 4
  store i8* %61, i8** %b.addr.i116, align 8
  store i32 0, i32* %rb.addr.i117, align 4
  store i8* %arraydecay29, i8** %c.addr.i118, align 8
  store i32 0, i32* %i.i119, align 4
  br label %for.cond.i121

for.cond.i121:                                    ; preds = %for.body.i133, %vmult.exit113
  %62 = load i32, i32* %i.i119, align 4
  %cmp.i120 = icmp sle i32 %62, 2
  br i1 %cmp.i120, label %for.body.i133, label %vmult.exit135

for.body.i133:                                    ; preds = %for.cond.i121
  %63 = load i8*, i8** %a.addr.i114, align 8
  %64 = load i32, i32* %i.i119, align 4
  %65 = load i32, i32* %ra.addr.i115, align 4
  %add.i122 = add nsw i32 %64, %65
  %rem.i123 = srem i32 %add.i122, 3
  %idxprom.i124 = sext i32 %rem.i123 to i64
  %arrayidx.i125 = getelementptr inbounds i8, i8* %63, i64 %idxprom.i124
  %66 = load i8, i8* %arrayidx.i125, align 1
  %67 = load i8*, i8** %b.addr.i116, align 8
  %68 = load i32, i32* %i.i119, align 4
  %69 = load i32, i32* %rb.addr.i117, align 4
  %add1.i126 = add nsw i32 %68, %69
  %rem2.i127 = srem i32 %add1.i126, 3
  %idxprom3.i128 = sext i32 %rem2.i127 to i64
  %arrayidx4.i129 = getelementptr inbounds i8, i8* %67, i64 %idxprom3.i128
  %70 = load i8, i8* %arrayidx4.i129, align 1
  %call.i130 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %70) #2
  %71 = load i8*, i8** %c.addr.i118, align 8
  %72 = load i32, i32* %i.i119, align 4
  %idxprom5.i131 = sext i32 %72 to i64
  %arrayidx6.i132 = getelementptr inbounds i8, i8* %71, i64 %idxprom5.i131
  store i8 %call.i130, i8* %arrayidx6.i132, align 1
  %73 = load i32, i32* %i.i119, align 4
  %inc.i134 = add nsw i32 %73, 1
  store i32 %inc.i134, i32* %i.i119, align 4
  br label %for.cond.i121

vmult.exit135:                                    ; preds = %for.cond.i121
  %74 = load i8*, i8** %a.addr, align 8
  %75 = load i8*, i8** %b.addr, align 8
  %76 = load i32, i32* %i22, align 4
  %mul30 = mul nsw i32 2, %76
  %add31 = add nsw i32 %mul30, 2
  %arraydecay32 = getelementptr inbounds [3 x i8], [3 x i8]* %ab2, i64 0, i64 0
  store i8* %74, i8** %a.addr.i136, align 8
  store i32 0, i32* %ra.addr.i137, align 4
  store i8* %75, i8** %b.addr.i138, align 8
  store i32 %add31, i32* %rb.addr.i139, align 4
  store i8* %arraydecay32, i8** %c.addr.i140, align 8
  store i32 0, i32* %i.i141, align 4
  br label %for.cond.i143

for.cond.i143:                                    ; preds = %for.body.i155, %vmult.exit135
  %77 = load i32, i32* %i.i141, align 4
  %cmp.i142 = icmp sle i32 %77, 2
  br i1 %cmp.i142, label %for.body.i155, label %vmult.exit157

for.body.i155:                                    ; preds = %for.cond.i143
  %78 = load i8*, i8** %a.addr.i136, align 8
  %79 = load i32, i32* %i.i141, align 4
  %80 = load i32, i32* %ra.addr.i137, align 4
  %add.i144 = add nsw i32 %79, %80
  %rem.i145 = srem i32 %add.i144, 3
  %idxprom.i146 = sext i32 %rem.i145 to i64
  %arrayidx.i147 = getelementptr inbounds i8, i8* %78, i64 %idxprom.i146
  %81 = load i8, i8* %arrayidx.i147, align 1
  %82 = load i8*, i8** %b.addr.i138, align 8
  %83 = load i32, i32* %i.i141, align 4
  %84 = load i32, i32* %rb.addr.i139, align 4
  %add1.i148 = add nsw i32 %83, %84
  %rem2.i149 = srem i32 %add1.i148, 3
  %idxprom3.i150 = sext i32 %rem2.i149 to i64
  %arrayidx4.i151 = getelementptr inbounds i8, i8* %82, i64 %idxprom3.i150
  %85 = load i8, i8* %arrayidx4.i151, align 1
  %call.i152 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %85) #2
  %86 = load i8*, i8** %c.addr.i140, align 8
  %87 = load i32, i32* %i.i141, align 4
  %idxprom5.i153 = sext i32 %87 to i64
  %arrayidx6.i154 = getelementptr inbounds i8, i8* %86, i64 %idxprom5.i153
  store i8 %call.i152, i8* %arrayidx6.i154, align 1
  %88 = load i32, i32* %i.i141, align 4
  %inc.i156 = add nsw i32 %88, 1
  store i32 %inc.i156, i32* %i.i141, align 4
  br label %for.cond.i143

vmult.exit157:                                    ; preds = %for.cond.i143
  %89 = load i8*, i8** %a.addr, align 8
  %90 = load i32, i32* %i22, align 4
  %mul33 = mul nsw i32 2, %90
  %add34 = add nsw i32 %mul33, 2
  %91 = load i8*, i8** %b.addr, align 8
  %arraydecay35 = getelementptr inbounds [3 x i8], [3 x i8]* %a2b, i64 0, i64 0
  store i8* %89, i8** %a.addr.i158, align 8
  store i32 %add34, i32* %ra.addr.i159, align 4
  store i8* %91, i8** %b.addr.i160, align 8
  store i32 0, i32* %rb.addr.i161, align 4
  store i8* %arraydecay35, i8** %c.addr.i162, align 8
  store i32 0, i32* %i.i163, align 4
  br label %for.cond.i165

for.cond.i165:                                    ; preds = %for.body.i177, %vmult.exit157
  %92 = load i32, i32* %i.i163, align 4
  %cmp.i164 = icmp sle i32 %92, 2
  br i1 %cmp.i164, label %for.body.i177, label %vmult.exit179

for.body.i177:                                    ; preds = %for.cond.i165
  %93 = load i8*, i8** %a.addr.i158, align 8
  %94 = load i32, i32* %i.i163, align 4
  %95 = load i32, i32* %ra.addr.i159, align 4
  %add.i166 = add nsw i32 %94, %95
  %rem.i167 = srem i32 %add.i166, 3
  %idxprom.i168 = sext i32 %rem.i167 to i64
  %arrayidx.i169 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i168
  %96 = load i8, i8* %arrayidx.i169, align 1
  %97 = load i8*, i8** %b.addr.i160, align 8
  %98 = load i32, i32* %i.i163, align 4
  %99 = load i32, i32* %rb.addr.i161, align 4
  %add1.i170 = add nsw i32 %98, %99
  %rem2.i171 = srem i32 %add1.i170, 3
  %idxprom3.i172 = sext i32 %rem2.i171 to i64
  %arrayidx4.i173 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i172
  %100 = load i8, i8* %arrayidx4.i173, align 1
  %call.i174 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i162, align 8
  %102 = load i32, i32* %i.i163, align 4
  %idxprom5.i175 = sext i32 %102 to i64
  %arrayidx6.i176 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i175
  store i8 %call.i174, i8* %arrayidx6.i176, align 1
  %103 = load i32, i32* %i.i163, align 4
  %inc.i178 = add nsw i32 %103, 1
  store i32 %inc.i178, i32* %i.i163, align 4
  br label %for.cond.i165

vmult.exit179:                                    ; preds = %for.cond.i165
  %104 = load i8*, i8** %c.addr, align 8
  %105 = load i32, i32* %i22, align 4
  %idxprom36 = sext i32 %105 to i64
  %arrayidx37 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx37, i64 0, i64 0
  %106 = load i8*, i8** %c.addr, align 8
  store i8* %104, i8** %a.addr.i180, align 8
  store i32 0, i32* %ra.addr.i181, align 4
  store i8* %arraydecay38, i8** %b.addr.i182, align 8
  store i32 0, i32* %rb.addr.i183, align 4
  store i8* %106, i8** %c.addr.i184, align 8
  store i32 0, i32* %i.i185, align 4
  br label %for.cond.i187

for.cond.i187:                                    ; preds = %for.body.i196, %vmult.exit179
  %107 = load i32, i32* %i.i185, align 4
  %cmp.i186 = icmp sle i32 %107, 2
  br i1 %cmp.i186, label %for.body.i196, label %vadd.exit

for.body.i196:                                    ; preds = %for.cond.i187
  %108 = load i8*, i8** %a.addr.i180, align 8
  %109 = load i32, i32* %i.i185, align 4
  %110 = load i32, i32* %ra.addr.i181, align 4
  %add.i188 = add nsw i32 %109, %110
  %rem.i189 = srem i32 %add.i188, 3
  %idxprom.i190 = sext i32 %rem.i189 to i64
  %arrayidx.i191 = getelementptr inbounds i8, i8* %108, i64 %idxprom.i190
  %111 = load i8, i8* %arrayidx.i191, align 1
  %conv.i = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i182, align 8
  %113 = load i32, i32* %i.i185, align 4
  %114 = load i32, i32* %rb.addr.i183, align 4
  %add1.i192 = add nsw i32 %113, %114
  %rem2.i193 = srem i32 %add1.i192, 3
  %idxprom3.i194 = sext i32 %rem2.i193 to i64
  %arrayidx4.i195 = getelementptr inbounds i8, i8* %112, i64 %idxprom3.i194
  %115 = load i8, i8* %arrayidx4.i195, align 1
  %conv5.i = zext i8 %115 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %116 = load i8*, i8** %c.addr.i184, align 8
  %117 = load i32, i32* %i.i185, align 4
  %idxprom7.i = sext i32 %117 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %118 = load i32, i32* %i.i185, align 4
  %inc.i197 = add nsw i32 %118, 1
  store i32 %inc.i197, i32* %i.i185, align 4
  br label %for.cond.i187

vadd.exit:                                        ; preds = %for.cond.i187
  %119 = load i8*, i8** %c.addr, align 8
  %arraydecay39 = getelementptr inbounds [3 x i8], [3 x i8]* %ab1, i64 0, i64 0
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %119, i8** %a.addr.i215, align 8
  store i32 0, i32* %ra.addr.i216, align 4
  store i8* %arraydecay39, i8** %b.addr.i217, align 8
  store i32 0, i32* %rb.addr.i218, align 4
  store i8* %120, i8** %c.addr.i219, align 8
  store i32 0, i32* %i.i220, align 4
  br label %for.cond.i222

for.cond.i222:                                    ; preds = %for.body.i237, %vadd.exit
  %121 = load i32, i32* %i.i220, align 4
  %cmp.i221 = icmp sle i32 %121, 2
  br i1 %cmp.i221, label %for.body.i237, label %vadd.exit239

for.body.i237:                                    ; preds = %for.cond.i222
  %122 = load i8*, i8** %a.addr.i215, align 8
  %123 = load i32, i32* %i.i220, align 4
  %124 = load i32, i32* %ra.addr.i216, align 4
  %add.i223 = add nsw i32 %123, %124
  %rem.i224 = srem i32 %add.i223, 3
  %idxprom.i225 = sext i32 %rem.i224 to i64
  %arrayidx.i226 = getelementptr inbounds i8, i8* %122, i64 %idxprom.i225
  %125 = load i8, i8* %arrayidx.i226, align 1
  %conv.i227 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i217, align 8
  %127 = load i32, i32* %i.i220, align 4
  %128 = load i32, i32* %rb.addr.i218, align 4
  %add1.i228 = add nsw i32 %127, %128
  %rem2.i229 = srem i32 %add1.i228, 3
  %idxprom3.i230 = sext i32 %rem2.i229 to i64
  %arrayidx4.i231 = getelementptr inbounds i8, i8* %126, i64 %idxprom3.i230
  %129 = load i8, i8* %arrayidx4.i231, align 1
  %conv5.i232 = zext i8 %129 to i32
  %xor.i233 = xor i32 %conv.i227, %conv5.i232
  %conv6.i234 = trunc i32 %xor.i233 to i8
  %130 = load i8*, i8** %c.addr.i219, align 8
  %131 = load i32, i32* %i.i220, align 4
  %idxprom7.i235 = sext i32 %131 to i64
  %arrayidx8.i236 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i235
  store i8 %conv6.i234, i8* %arrayidx8.i236, align 1
  %132 = load i32, i32* %i.i220, align 4
  %inc.i238 = add nsw i32 %132, 1
  store i32 %inc.i238, i32* %i.i220, align 4
  br label %for.cond.i222

vadd.exit239:                                     ; preds = %for.cond.i222
  %133 = load i8*, i8** %c.addr, align 8
  %arraydecay40 = getelementptr inbounds [3 x i8], [3 x i8]* %a1b, i64 0, i64 0
  %134 = load i8*, i8** %c.addr, align 8
  store i8* %133, i8** %a.addr.i337, align 8
  store i32 0, i32* %ra.addr.i338, align 4
  store i8* %arraydecay40, i8** %b.addr.i339, align 8
  store i32 0, i32* %rb.addr.i340, align 4
  store i8* %134, i8** %c.addr.i341, align 8
  store i32 0, i32* %i.i342, align 4
  br label %for.cond.i344

for.cond.i344:                                    ; preds = %for.body.i359, %vadd.exit239
  %135 = load i32, i32* %i.i342, align 4
  %cmp.i343 = icmp sle i32 %135, 2
  br i1 %cmp.i343, label %for.body.i359, label %vadd.exit361

for.body.i359:                                    ; preds = %for.cond.i344
  %136 = load i8*, i8** %a.addr.i337, align 8
  %137 = load i32, i32* %i.i342, align 4
  %138 = load i32, i32* %ra.addr.i338, align 4
  %add.i345 = add nsw i32 %137, %138
  %rem.i346 = srem i32 %add.i345, 3
  %idxprom.i347 = sext i32 %rem.i346 to i64
  %arrayidx.i348 = getelementptr inbounds i8, i8* %136, i64 %idxprom.i347
  %139 = load i8, i8* %arrayidx.i348, align 1
  %conv.i349 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i339, align 8
  %141 = load i32, i32* %i.i342, align 4
  %142 = load i32, i32* %rb.addr.i340, align 4
  %add1.i350 = add nsw i32 %141, %142
  %rem2.i351 = srem i32 %add1.i350, 3
  %idxprom3.i352 = sext i32 %rem2.i351 to i64
  %arrayidx4.i353 = getelementptr inbounds i8, i8* %140, i64 %idxprom3.i352
  %143 = load i8, i8* %arrayidx4.i353, align 1
  %conv5.i354 = zext i8 %143 to i32
  %xor.i355 = xor i32 %conv.i349, %conv5.i354
  %conv6.i356 = trunc i32 %xor.i355 to i8
  %144 = load i8*, i8** %c.addr.i341, align 8
  %145 = load i32, i32* %i.i342, align 4
  %idxprom7.i357 = sext i32 %145 to i64
  %arrayidx8.i358 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i357
  store i8 %conv6.i356, i8* %arrayidx8.i358, align 1
  %146 = load i32, i32* %i.i342, align 4
  %inc.i360 = add nsw i32 %146, 1
  store i32 %inc.i360, i32* %i.i342, align 4
  br label %for.cond.i344

vadd.exit361:                                     ; preds = %for.cond.i344
  %147 = load i8*, i8** %c.addr, align 8
  %148 = load i32, i32* %i22, align 4
  %idxprom41 = sext i32 %148 to i64
  %arrayidx42 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx42, i64 0, i64 0
  %149 = load i8*, i8** %c.addr, align 8
  store i8* %147, i8** %a.addr.i384, align 8
  store i32 0, i32* %ra.addr.i385, align 4
  store i8* %arraydecay43, i8** %b.addr.i386, align 8
  store i32 1, i32* %rb.addr.i387, align 4
  store i8* %149, i8** %c.addr.i388, align 8
  store i32 0, i32* %i.i389, align 4
  br label %for.cond.i391

for.cond.i391:                                    ; preds = %for.body.i406, %vadd.exit361
  %150 = load i32, i32* %i.i389, align 4
  %cmp.i390 = icmp sle i32 %150, 2
  br i1 %cmp.i390, label %for.body.i406, label %vadd.exit408

for.body.i406:                                    ; preds = %for.cond.i391
  %151 = load i8*, i8** %a.addr.i384, align 8
  %152 = load i32, i32* %i.i389, align 4
  %153 = load i32, i32* %ra.addr.i385, align 4
  %add.i392 = add nsw i32 %152, %153
  %rem.i393 = srem i32 %add.i392, 3
  %idxprom.i394 = sext i32 %rem.i393 to i64
  %arrayidx.i395 = getelementptr inbounds i8, i8* %151, i64 %idxprom.i394
  %154 = load i8, i8* %arrayidx.i395, align 1
  %conv.i396 = zext i8 %154 to i32
  %155 = load i8*, i8** %b.addr.i386, align 8
  %156 = load i32, i32* %i.i389, align 4
  %157 = load i32, i32* %rb.addr.i387, align 4
  %add1.i397 = add nsw i32 %156, %157
  %rem2.i398 = srem i32 %add1.i397, 3
  %idxprom3.i399 = sext i32 %rem2.i398 to i64
  %arrayidx4.i400 = getelementptr inbounds i8, i8* %155, i64 %idxprom3.i399
  %158 = load i8, i8* %arrayidx4.i400, align 1
  %conv5.i401 = zext i8 %158 to i32
  %xor.i402 = xor i32 %conv.i396, %conv5.i401
  %conv6.i403 = trunc i32 %xor.i402 to i8
  %159 = load i8*, i8** %c.addr.i388, align 8
  %160 = load i32, i32* %i.i389, align 4
  %idxprom7.i404 = sext i32 %160 to i64
  %arrayidx8.i405 = getelementptr inbounds i8, i8* %159, i64 %idxprom7.i404
  store i8 %conv6.i403, i8* %arrayidx8.i405, align 1
  %161 = load i32, i32* %i.i389, align 4
  %inc.i407 = add nsw i32 %161, 1
  store i32 %inc.i407, i32* %i.i389, align 4
  br label %for.cond.i391

vadd.exit408:                                     ; preds = %for.cond.i391
  %162 = load i8*, i8** %c.addr, align 8
  %arraydecay44 = getelementptr inbounds [3 x i8], [3 x i8]* %ab2, i64 0, i64 0
  %163 = load i8*, i8** %c.addr, align 8
  store i8* %162, i8** %a.addr.i434, align 8
  store i32 0, i32* %ra.addr.i435, align 4
  store i8* %arraydecay44, i8** %b.addr.i436, align 8
  store i32 0, i32* %rb.addr.i437, align 4
  store i8* %163, i8** %c.addr.i438, align 8
  store i32 0, i32* %i.i439, align 4
  br label %for.cond.i441

for.cond.i441:                                    ; preds = %for.body.i456, %vadd.exit408
  %164 = load i32, i32* %i.i439, align 4
  %cmp.i440 = icmp sle i32 %164, 2
  br i1 %cmp.i440, label %for.body.i456, label %vadd.exit458

for.body.i456:                                    ; preds = %for.cond.i441
  %165 = load i8*, i8** %a.addr.i434, align 8
  %166 = load i32, i32* %i.i439, align 4
  %167 = load i32, i32* %ra.addr.i435, align 4
  %add.i442 = add nsw i32 %166, %167
  %rem.i443 = srem i32 %add.i442, 3
  %idxprom.i444 = sext i32 %rem.i443 to i64
  %arrayidx.i445 = getelementptr inbounds i8, i8* %165, i64 %idxprom.i444
  %168 = load i8, i8* %arrayidx.i445, align 1
  %conv.i446 = zext i8 %168 to i32
  %169 = load i8*, i8** %b.addr.i436, align 8
  %170 = load i32, i32* %i.i439, align 4
  %171 = load i32, i32* %rb.addr.i437, align 4
  %add1.i447 = add nsw i32 %170, %171
  %rem2.i448 = srem i32 %add1.i447, 3
  %idxprom3.i449 = sext i32 %rem2.i448 to i64
  %arrayidx4.i450 = getelementptr inbounds i8, i8* %169, i64 %idxprom3.i449
  %172 = load i8, i8* %arrayidx4.i450, align 1
  %conv5.i451 = zext i8 %172 to i32
  %xor.i452 = xor i32 %conv.i446, %conv5.i451
  %conv6.i453 = trunc i32 %xor.i452 to i8
  %173 = load i8*, i8** %c.addr.i438, align 8
  %174 = load i32, i32* %i.i439, align 4
  %idxprom7.i454 = sext i32 %174 to i64
  %arrayidx8.i455 = getelementptr inbounds i8, i8* %173, i64 %idxprom7.i454
  store i8 %conv6.i453, i8* %arrayidx8.i455, align 1
  %175 = load i32, i32* %i.i439, align 4
  %inc.i457 = add nsw i32 %175, 1
  store i32 %inc.i457, i32* %i.i439, align 4
  br label %for.cond.i441

vadd.exit458:                                     ; preds = %for.cond.i441
  %176 = load i8*, i8** %c.addr, align 8
  %arraydecay45 = getelementptr inbounds [3 x i8], [3 x i8]* %a2b, i64 0, i64 0
  %177 = load i8*, i8** %c.addr, align 8
  store i8* %176, i8** %a.addr.i409, align 8
  store i32 0, i32* %ra.addr.i410, align 4
  store i8* %arraydecay45, i8** %b.addr.i411, align 8
  store i32 0, i32* %rb.addr.i412, align 4
  store i8* %177, i8** %c.addr.i413, align 8
  store i32 0, i32* %i.i414, align 4
  br label %for.cond.i416

for.cond.i416:                                    ; preds = %for.body.i431, %vadd.exit458
  %178 = load i32, i32* %i.i414, align 4
  %cmp.i415 = icmp sle i32 %178, 2
  br i1 %cmp.i415, label %for.body.i431, label %vadd.exit433

for.body.i431:                                    ; preds = %for.cond.i416
  %179 = load i8*, i8** %a.addr.i409, align 8
  %180 = load i32, i32* %i.i414, align 4
  %181 = load i32, i32* %ra.addr.i410, align 4
  %add.i417 = add nsw i32 %180, %181
  %rem.i418 = srem i32 %add.i417, 3
  %idxprom.i419 = sext i32 %rem.i418 to i64
  %arrayidx.i420 = getelementptr inbounds i8, i8* %179, i64 %idxprom.i419
  %182 = load i8, i8* %arrayidx.i420, align 1
  %conv.i421 = zext i8 %182 to i32
  %183 = load i8*, i8** %b.addr.i411, align 8
  %184 = load i32, i32* %i.i414, align 4
  %185 = load i32, i32* %rb.addr.i412, align 4
  %add1.i422 = add nsw i32 %184, %185
  %rem2.i423 = srem i32 %add1.i422, 3
  %idxprom3.i424 = sext i32 %rem2.i423 to i64
  %arrayidx4.i425 = getelementptr inbounds i8, i8* %183, i64 %idxprom3.i424
  %186 = load i8, i8* %arrayidx4.i425, align 1
  %conv5.i426 = zext i8 %186 to i32
  %xor.i427 = xor i32 %conv.i421, %conv5.i426
  %conv6.i428 = trunc i32 %xor.i427 to i8
  %187 = load i8*, i8** %c.addr.i413, align 8
  %188 = load i32, i32* %i.i414, align 4
  %idxprom7.i429 = sext i32 %188 to i64
  %arrayidx8.i430 = getelementptr inbounds i8, i8* %187, i64 %idxprom7.i429
  store i8 %conv6.i428, i8* %arrayidx8.i430, align 1
  %189 = load i32, i32* %i.i414, align 4
  %inc.i432 = add nsw i32 %189, 1
  store i32 %inc.i432, i32* %i.i414, align 4
  br label %for.cond.i416

vadd.exit433:                                     ; preds = %for.cond.i416
  br label %for.inc46

for.inc46:                                        ; preds = %vadd.exit433
  %190 = load i32, i32* %i22, align 4
  %inc47 = add nsw i32 %190, 1
  store i32 %inc47, i32* %i22, align 4
  br label %for.cond23

for.end48:                                        ; preds = %for.cond23
  store i32 0, i32* %l, align 4
  %arrayidx49 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx50 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx49, i64 0, i64 0
  %191 = load i8, i8* %arrayidx50, align 1
  %arrayidx51 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  store i8 %191, i8* %arrayidx51, align 1
  %arrayidx52 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx53 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx52, i64 0, i64 1
  %192 = load i8, i8* %arrayidx53, align 1
  %arrayidx54 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 1
  store i8 %192, i8* %arrayidx54, align 1
  %arrayidx55 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx56 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx55, i64 0, i64 0
  %193 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %193 to i32
  %arrayidx58 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0
  %arrayidx59 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx58, i64 0, i64 1
  %194 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %194 to i32
  %xor = xor i32 %conv57, %conv60
  %conv61 = trunc i32 %xor to i8
  %arrayidx62 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 2
  store i8 %conv61, i8* %arrayidx62, align 1
  %195 = load i8*, i8** %a.addr, align 8
  %196 = load i8*, i8** %b.addr, align 8
  %arraydecay63 = getelementptr inbounds [3 x i8], [3 x i8]* %ab1, i64 0, i64 0
  store i8* %195, i8** %a.addr.i362, align 8
  store i32 0, i32* %ra.addr.i363, align 4
  store i8* %196, i8** %b.addr.i364, align 8
  store i32 1, i32* %rb.addr.i365, align 4
  store i8* %arraydecay63, i8** %c.addr.i366, align 8
  store i32 0, i32* %i.i367, align 4
  br label %for.cond.i369

for.cond.i369:                                    ; preds = %for.body.i381, %for.end48
  %197 = load i32, i32* %i.i367, align 4
  %cmp.i368 = icmp sle i32 %197, 2
  br i1 %cmp.i368, label %for.body.i381, label %vmult.exit383

for.body.i381:                                    ; preds = %for.cond.i369
  %198 = load i8*, i8** %a.addr.i362, align 8
  %199 = load i32, i32* %i.i367, align 4
  %200 = load i32, i32* %ra.addr.i363, align 4
  %add.i370 = add nsw i32 %199, %200
  %rem.i371 = srem i32 %add.i370, 3
  %idxprom.i372 = sext i32 %rem.i371 to i64
  %arrayidx.i373 = getelementptr inbounds i8, i8* %198, i64 %idxprom.i372
  %201 = load i8, i8* %arrayidx.i373, align 1
  %202 = load i8*, i8** %b.addr.i364, align 8
  %203 = load i32, i32* %i.i367, align 4
  %204 = load i32, i32* %rb.addr.i365, align 4
  %add1.i374 = add nsw i32 %203, %204
  %rem2.i375 = srem i32 %add1.i374, 3
  %idxprom3.i376 = sext i32 %rem2.i375 to i64
  %arrayidx4.i377 = getelementptr inbounds i8, i8* %202, i64 %idxprom3.i376
  %205 = load i8, i8* %arrayidx4.i377, align 1
  %call.i378 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %205) #2
  %206 = load i8*, i8** %c.addr.i366, align 8
  %207 = load i32, i32* %i.i367, align 4
  %idxprom5.i379 = sext i32 %207 to i64
  %arrayidx6.i380 = getelementptr inbounds i8, i8* %206, i64 %idxprom5.i379
  store i8 %call.i378, i8* %arrayidx6.i380, align 1
  %208 = load i32, i32* %i.i367, align 4
  %inc.i382 = add nsw i32 %208, 1
  store i32 %inc.i382, i32* %i.i367, align 4
  br label %for.cond.i369

vmult.exit383:                                    ; preds = %for.cond.i369
  %209 = load i8*, i8** %a.addr, align 8
  %210 = load i8*, i8** %b.addr, align 8
  %arraydecay64 = getelementptr inbounds [3 x i8], [3 x i8]* %a1b, i64 0, i64 0
  store i8* %209, i8** %a.addr.i315, align 8
  store i32 1, i32* %ra.addr.i316, align 4
  store i8* %210, i8** %b.addr.i317, align 8
  store i32 0, i32* %rb.addr.i318, align 4
  store i8* %arraydecay64, i8** %c.addr.i319, align 8
  store i32 0, i32* %i.i320, align 4
  br label %for.cond.i322

for.cond.i322:                                    ; preds = %for.body.i334, %vmult.exit383
  %211 = load i32, i32* %i.i320, align 4
  %cmp.i321 = icmp sle i32 %211, 2
  br i1 %cmp.i321, label %for.body.i334, label %vmult.exit336

for.body.i334:                                    ; preds = %for.cond.i322
  %212 = load i8*, i8** %a.addr.i315, align 8
  %213 = load i32, i32* %i.i320, align 4
  %214 = load i32, i32* %ra.addr.i316, align 4
  %add.i323 = add nsw i32 %213, %214
  %rem.i324 = srem i32 %add.i323, 3
  %idxprom.i325 = sext i32 %rem.i324 to i64
  %arrayidx.i326 = getelementptr inbounds i8, i8* %212, i64 %idxprom.i325
  %215 = load i8, i8* %arrayidx.i326, align 1
  %216 = load i8*, i8** %b.addr.i317, align 8
  %217 = load i32, i32* %i.i320, align 4
  %218 = load i32, i32* %rb.addr.i318, align 4
  %add1.i327 = add nsw i32 %217, %218
  %rem2.i328 = srem i32 %add1.i327, 3
  %idxprom3.i329 = sext i32 %rem2.i328 to i64
  %arrayidx4.i330 = getelementptr inbounds i8, i8* %216, i64 %idxprom3.i329
  %219 = load i8, i8* %arrayidx4.i330, align 1
  %call.i331 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %219) #2
  %220 = load i8*, i8** %c.addr.i319, align 8
  %221 = load i32, i32* %i.i320, align 4
  %idxprom5.i332 = sext i32 %221 to i64
  %arrayidx6.i333 = getelementptr inbounds i8, i8* %220, i64 %idxprom5.i332
  store i8 %call.i331, i8* %arrayidx6.i333, align 1
  %222 = load i32, i32* %i.i320, align 4
  %inc.i335 = add nsw i32 %222, 1
  store i32 %inc.i335, i32* %i.i320, align 4
  br label %for.cond.i322

vmult.exit336:                                    ; preds = %for.cond.i322
  %223 = load i8*, i8** %c.addr, align 8
  %arraydecay65 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %224 = load i8*, i8** %c.addr, align 8
  store i8* %223, i8** %a.addr.i290, align 8
  store i32 0, i32* %ra.addr.i291, align 4
  store i8* %arraydecay65, i8** %b.addr.i292, align 8
  store i32 0, i32* %rb.addr.i293, align 4
  store i8* %224, i8** %c.addr.i294, align 8
  store i32 0, i32* %i.i295, align 4
  br label %for.cond.i297

for.cond.i297:                                    ; preds = %for.body.i312, %vmult.exit336
  %225 = load i32, i32* %i.i295, align 4
  %cmp.i296 = icmp sle i32 %225, 2
  br i1 %cmp.i296, label %for.body.i312, label %vadd.exit314

for.body.i312:                                    ; preds = %for.cond.i297
  %226 = load i8*, i8** %a.addr.i290, align 8
  %227 = load i32, i32* %i.i295, align 4
  %228 = load i32, i32* %ra.addr.i291, align 4
  %add.i298 = add nsw i32 %227, %228
  %rem.i299 = srem i32 %add.i298, 3
  %idxprom.i300 = sext i32 %rem.i299 to i64
  %arrayidx.i301 = getelementptr inbounds i8, i8* %226, i64 %idxprom.i300
  %229 = load i8, i8* %arrayidx.i301, align 1
  %conv.i302 = zext i8 %229 to i32
  %230 = load i8*, i8** %b.addr.i292, align 8
  %231 = load i32, i32* %i.i295, align 4
  %232 = load i32, i32* %rb.addr.i293, align 4
  %add1.i303 = add nsw i32 %231, %232
  %rem2.i304 = srem i32 %add1.i303, 3
  %idxprom3.i305 = sext i32 %rem2.i304 to i64
  %arrayidx4.i306 = getelementptr inbounds i8, i8* %230, i64 %idxprom3.i305
  %233 = load i8, i8* %arrayidx4.i306, align 1
  %conv5.i307 = zext i8 %233 to i32
  %xor.i308 = xor i32 %conv.i302, %conv5.i307
  %conv6.i309 = trunc i32 %xor.i308 to i8
  %234 = load i8*, i8** %c.addr.i294, align 8
  %235 = load i32, i32* %i.i295, align 4
  %idxprom7.i310 = sext i32 %235 to i64
  %arrayidx8.i311 = getelementptr inbounds i8, i8* %234, i64 %idxprom7.i310
  store i8 %conv6.i309, i8* %arrayidx8.i311, align 1
  %236 = load i32, i32* %i.i295, align 4
  %inc.i313 = add nsw i32 %236, 1
  store i32 %inc.i313, i32* %i.i295, align 4
  br label %for.cond.i297

vadd.exit314:                                     ; preds = %for.cond.i297
  %237 = load i8*, i8** %c.addr, align 8
  %arraydecay66 = getelementptr inbounds [3 x i8], [3 x i8]* %ab1, i64 0, i64 0
  %238 = load i8*, i8** %c.addr, align 8
  store i8* %237, i8** %a.addr.i265, align 8
  store i32 0, i32* %ra.addr.i266, align 4
  store i8* %arraydecay66, i8** %b.addr.i267, align 8
  store i32 0, i32* %rb.addr.i268, align 4
  store i8* %238, i8** %c.addr.i269, align 8
  store i32 0, i32* %i.i270, align 4
  br label %for.cond.i272

for.cond.i272:                                    ; preds = %for.body.i287, %vadd.exit314
  %239 = load i32, i32* %i.i270, align 4
  %cmp.i271 = icmp sle i32 %239, 2
  br i1 %cmp.i271, label %for.body.i287, label %vadd.exit289

for.body.i287:                                    ; preds = %for.cond.i272
  %240 = load i8*, i8** %a.addr.i265, align 8
  %241 = load i32, i32* %i.i270, align 4
  %242 = load i32, i32* %ra.addr.i266, align 4
  %add.i273 = add nsw i32 %241, %242
  %rem.i274 = srem i32 %add.i273, 3
  %idxprom.i275 = sext i32 %rem.i274 to i64
  %arrayidx.i276 = getelementptr inbounds i8, i8* %240, i64 %idxprom.i275
  %243 = load i8, i8* %arrayidx.i276, align 1
  %conv.i277 = zext i8 %243 to i32
  %244 = load i8*, i8** %b.addr.i267, align 8
  %245 = load i32, i32* %i.i270, align 4
  %246 = load i32, i32* %rb.addr.i268, align 4
  %add1.i278 = add nsw i32 %245, %246
  %rem2.i279 = srem i32 %add1.i278, 3
  %idxprom3.i280 = sext i32 %rem2.i279 to i64
  %arrayidx4.i281 = getelementptr inbounds i8, i8* %244, i64 %idxprom3.i280
  %247 = load i8, i8* %arrayidx4.i281, align 1
  %conv5.i282 = zext i8 %247 to i32
  %xor.i283 = xor i32 %conv.i277, %conv5.i282
  %conv6.i284 = trunc i32 %xor.i283 to i8
  %248 = load i8*, i8** %c.addr.i269, align 8
  %249 = load i32, i32* %i.i270, align 4
  %idxprom7.i285 = sext i32 %249 to i64
  %arrayidx8.i286 = getelementptr inbounds i8, i8* %248, i64 %idxprom7.i285
  store i8 %conv6.i284, i8* %arrayidx8.i286, align 1
  %250 = load i32, i32* %i.i270, align 4
  %inc.i288 = add nsw i32 %250, 1
  store i32 %inc.i288, i32* %i.i270, align 4
  br label %for.cond.i272

vadd.exit289:                                     ; preds = %for.cond.i272
  %251 = load i8*, i8** %c.addr, align 8
  %arraydecay67 = getelementptr inbounds [3 x i8], [3 x i8]* %a1b, i64 0, i64 0
  %252 = load i8*, i8** %c.addr, align 8
  store i8* %251, i8** %a.addr.i240, align 8
  store i32 0, i32* %ra.addr.i241, align 4
  store i8* %arraydecay67, i8** %b.addr.i242, align 8
  store i32 0, i32* %rb.addr.i243, align 4
  store i8* %252, i8** %c.addr.i244, align 8
  store i32 0, i32* %i.i245, align 4
  br label %for.cond.i247

for.cond.i247:                                    ; preds = %for.body.i262, %vadd.exit289
  %253 = load i32, i32* %i.i245, align 4
  %cmp.i246 = icmp sle i32 %253, 2
  br i1 %cmp.i246, label %for.body.i262, label %vadd.exit264

for.body.i262:                                    ; preds = %for.cond.i247
  %254 = load i8*, i8** %a.addr.i240, align 8
  %255 = load i32, i32* %i.i245, align 4
  %256 = load i32, i32* %ra.addr.i241, align 4
  %add.i248 = add nsw i32 %255, %256
  %rem.i249 = srem i32 %add.i248, 3
  %idxprom.i250 = sext i32 %rem.i249 to i64
  %arrayidx.i251 = getelementptr inbounds i8, i8* %254, i64 %idxprom.i250
  %257 = load i8, i8* %arrayidx.i251, align 1
  %conv.i252 = zext i8 %257 to i32
  %258 = load i8*, i8** %b.addr.i242, align 8
  %259 = load i32, i32* %i.i245, align 4
  %260 = load i32, i32* %rb.addr.i243, align 4
  %add1.i253 = add nsw i32 %259, %260
  %rem2.i254 = srem i32 %add1.i253, 3
  %idxprom3.i255 = sext i32 %rem2.i254 to i64
  %arrayidx4.i256 = getelementptr inbounds i8, i8* %258, i64 %idxprom3.i255
  %261 = load i8, i8* %arrayidx4.i256, align 1
  %conv5.i257 = zext i8 %261 to i32
  %xor.i258 = xor i32 %conv.i252, %conv5.i257
  %conv6.i259 = trunc i32 %xor.i258 to i8
  %262 = load i8*, i8** %c.addr.i244, align 8
  %263 = load i32, i32* %i.i245, align 4
  %idxprom7.i260 = sext i32 %263 to i64
  %arrayidx8.i261 = getelementptr inbounds i8, i8* %262, i64 %idxprom7.i260
  store i8 %conv6.i259, i8* %arrayidx8.i261, align 1
  %264 = load i32, i32* %i.i245, align 4
  %inc.i263 = add nsw i32 %264, 1
  store i32 %inc.i263, i32* %i.i245, align 4
  br label %for.cond.i247

vadd.exit264:                                     ; preds = %for.cond.i247
  %265 = load i8, i8* %A, align 1
  %266 = load i8, i8* %B, align 1
  %call68 = call zeroext i8 @mult(i8 zeroext %265, i8 zeroext %266)
  %conv69 = zext i8 %call68 to i32
  %267 = load i8*, i8** %c.addr, align 8
  store i8* %267, i8** %a.addr.i202, align 8
  %268 = load i8*, i8** %a.addr.i202, align 8
  store i8* %268, i8** %a.addr.i.i198, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i199, align 8
  store i32 0, i32* %i.i.i201, align 4
  br label %for.cond.i.i204

for.cond.i.i204:                                  ; preds = %for.body.i.i213, %vadd.exit264
  %269 = load i32, i32* %i.i.i201, align 4
  %cmp.i.i203 = icmp sle i32 %269, 2
  br i1 %cmp.i.i203, label %for.body.i.i213, label %xors.exit214

for.body.i.i213:                                  ; preds = %for.cond.i.i204
  %270 = load i8 (i8)*, i8 (i8)** %f.addr.i.i199, align 8
  %271 = load i8*, i8** %a.addr.i.i198, align 8
  %272 = load i32, i32* %i.i.i201, align 4
  %idxprom.i.i205 = sext i32 %272 to i64
  %arrayidx.i.i206 = getelementptr inbounds i8, i8* %271, i64 %idxprom.i.i205
  %273 = load i8, i8* %arrayidx.i.i206, align 1
  %call.i.i207 = call zeroext i8 %270(i8 zeroext %273) #2
  %conv.i.i208 = zext i8 %call.i.i207 to i32
  %274 = load i8, i8* %result.i.i200, align 1
  %conv1.i.i209 = zext i8 %274 to i32
  %xor.i.i210 = xor i32 %conv1.i.i209, %conv.i.i208
  %conv2.i.i211 = trunc i32 %xor.i.i210 to i8
  store i8 %conv2.i.i211, i8* %result.i.i200, align 1
  %275 = load i32, i32* %i.i.i201, align 4
  %inc.i.i212 = add nsw i32 %275, 1
  store i32 %inc.i.i212, i32* %i.i.i201, align 4
  br label %for.cond.i.i204

xors.exit214:                                     ; preds = %for.cond.i.i204
  %276 = load i8, i8* %result.i.i200, align 1
  %conv71 = zext i8 %276 to i32
  %cmp72 = icmp eq i32 %conv69, %conv71
  call void @assert(i1 zeroext %cmp72)
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
