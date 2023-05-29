; ModuleID = '../examples/gross-ches2017.c'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
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
  %a.addr.i334 = alloca i8*, align 8
  %ra.addr.i335 = alloca i32, align 4
  %b.addr.i336 = alloca i8*, align 8
  %rb.addr.i337 = alloca i32, align 4
  %c.addr.i338 = alloca i8*, align 8
  %i.i339 = alloca i32, align 4
  %a.addr.i309 = alloca i8*, align 8
  %ra.addr.i310 = alloca i32, align 4
  %b.addr.i311 = alloca i8*, align 8
  %rb.addr.i312 = alloca i32, align 4
  %c.addr.i313 = alloca i8*, align 8
  %i.i314 = alloca i32, align 4
  %a.addr.i287 = alloca i8*, align 8
  %ra.addr.i288 = alloca i32, align 4
  %b.addr.i289 = alloca i8*, align 8
  %rb.addr.i290 = alloca i32, align 4
  %c.addr.i291 = alloca i8*, align 8
  %i.i292 = alloca i32, align 4
  %a.addr.i262 = alloca i8*, align 8
  %ra.addr.i263 = alloca i32, align 4
  %b.addr.i264 = alloca i8*, align 8
  %rb.addr.i265 = alloca i32, align 4
  %c.addr.i266 = alloca i8*, align 8
  %i.i267 = alloca i32, align 4
  %a.addr.i237 = alloca i8*, align 8
  %ra.addr.i238 = alloca i32, align 4
  %b.addr.i239 = alloca i8*, align 8
  %rb.addr.i240 = alloca i32, align 4
  %c.addr.i241 = alloca i8*, align 8
  %i.i242 = alloca i32, align 4
  %a.addr.i212 = alloca i8*, align 8
  %ra.addr.i213 = alloca i32, align 4
  %b.addr.i214 = alloca i8*, align 8
  %rb.addr.i215 = alloca i32, align 4
  %c.addr.i216 = alloca i8*, align 8
  %i.i217 = alloca i32, align 4
  %a.addr.i.i195 = alloca i8*, align 8
  %f.addr.i.i196 = alloca i8 (i8)*, align 8
  %result.i.i197 = alloca i8, align 1
  %i.i.i198 = alloca i32, align 4
  %a.addr.i199 = alloca i8*, align 8
  %a.addr.i177 = alloca i8*, align 8
  %ra.addr.i178 = alloca i32, align 4
  %b.addr.i179 = alloca i8*, align 8
  %rb.addr.i180 = alloca i32, align 4
  %c.addr.i181 = alloca i8*, align 8
  %i.i182 = alloca i32, align 4
  %a.addr.i155 = alloca i8*, align 8
  %ra.addr.i156 = alloca i32, align 4
  %b.addr.i157 = alloca i8*, align 8
  %rb.addr.i158 = alloca i32, align 4
  %c.addr.i159 = alloca i8*, align 8
  %i.i160 = alloca i32, align 4
  %a.addr.i133 = alloca i8*, align 8
  %ra.addr.i134 = alloca i32, align 4
  %b.addr.i135 = alloca i8*, align 8
  %rb.addr.i136 = alloca i32, align 4
  %c.addr.i137 = alloca i8*, align 8
  %i.i138 = alloca i32, align 4
  %a.addr.i111 = alloca i8*, align 8
  %ra.addr.i112 = alloca i32, align 4
  %b.addr.i113 = alloca i8*, align 8
  %rb.addr.i114 = alloca i32, align 4
  %c.addr.i115 = alloca i8*, align 8
  %i.i116 = alloca i32, align 4
  %a.addr.i89 = alloca i8*, align 8
  %ra.addr.i90 = alloca i32, align 4
  %b.addr.i91 = alloca i8*, align 8
  %rb.addr.i92 = alloca i32, align 4
  %c.addr.i93 = alloca i8*, align 8
  %i.i94 = alloca i32, align 4
  %a.addr.i88 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i71 = alloca i8*, align 8
  %f.addr.i.i72 = alloca i8 (i8)*, align 8
  %result.i.i73 = alloca i8, align 1
  %i.i.i74 = alloca i32, align 4
  %a.addr.i75 = alloca i8*, align 8
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
  %a1b = alloca [2 x i8], align 1
  %ab1 = alloca [2 x i8], align 1
  %a2b = alloca [2 x i8], align 1
  %ab2 = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i22 = alloca i32, align 4
  %l = alloca i32, align 4
  %z = alloca [2 x i8], align 1
  %i49 = alloca i32, align 4
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
  store i8* %12, i8** %a.addr.i75, align 8
  %13 = load i8*, i8** %a.addr.i75, align 8
  store i8* %13, i8** %a.addr.i.i71, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i72, align 8
  store i32 0, i32* %i.i.i74, align 4
  br label %for.cond.i.i77

for.cond.i.i77:                                   ; preds = %for.body.i.i86, %xors.exit
  %14 = load i32, i32* %i.i.i74, align 4
  %cmp.i.i76 = icmp sle i32 %14, 1
  br i1 %cmp.i.i76, label %for.body.i.i86, label %xors.exit87

for.body.i.i86:                                   ; preds = %for.cond.i.i77
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i72, align 8
  %16 = load i8*, i8** %a.addr.i.i71, align 8
  %17 = load i32, i32* %i.i.i74, align 4
  %idxprom.i.i78 = sext i32 %17 to i64
  %arrayidx.i.i79 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i78
  %18 = load i8, i8* %arrayidx.i.i79, align 1
  %call.i.i80 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i81 = zext i8 %call.i.i80 to i32
  %19 = load i8, i8* %result.i.i73, align 1
  %conv1.i.i82 = zext i8 %19 to i32
  %xor.i.i83 = xor i32 %conv1.i.i82, %conv.i.i81
  %conv2.i.i84 = trunc i32 %xor.i.i83 to i8
  store i8 %conv2.i.i84, i8* %result.i.i73, align 1
  %20 = load i32, i32* %i.i.i74, align 4
  %inc.i.i85 = add nsw i32 %20, 1
  store i32 %inc.i.i85, i32* %i.i.i74, align 4
  br label %for.cond.i.i77

xors.exit87:                                      ; preds = %for.cond.i.i77
  %21 = load i8, i8* %result.i.i73, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 2, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit87
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
  %30 = load i8*, i8** %c.addr, align 8
  store i8* %28, i8** %a.addr.i88, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %30, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %31 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %31, 1
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %32 = load i8*, i8** %a.addr.i88, align 8
  %33 = load i32, i32* %i.i, align 4
  %34 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %33, %34
  %rem.i = srem i32 %add.i, 2
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %32, i64 %idxprom.i
  %35 = load i8, i8* %arrayidx.i, align 1
  %36 = load i8*, i8** %b.addr.i, align 8
  %37 = load i32, i32* %i.i, align 4
  %38 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %37, %38
  %rem2.i = srem i32 %add1.i, 2
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
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %ab1, i64 0, i64 0
  store i8* %44, i8** %a.addr.i89, align 8
  store i32 0, i32* %ra.addr.i90, align 4
  store i8* %45, i8** %b.addr.i91, align 8
  store i32 %add, i32* %rb.addr.i92, align 4
  store i8* %arraydecay, i8** %c.addr.i93, align 8
  store i32 0, i32* %i.i94, align 4
  br label %for.cond.i96

for.cond.i96:                                     ; preds = %for.body.i108, %for.body26
  %47 = load i32, i32* %i.i94, align 4
  %cmp.i95 = icmp sle i32 %47, 1
  br i1 %cmp.i95, label %for.body.i108, label %vmult.exit110

for.body.i108:                                    ; preds = %for.cond.i96
  %48 = load i8*, i8** %a.addr.i89, align 8
  %49 = load i32, i32* %i.i94, align 4
  %50 = load i32, i32* %ra.addr.i90, align 4
  %add.i97 = add nsw i32 %49, %50
  %rem.i98 = srem i32 %add.i97, 2
  %idxprom.i99 = sext i32 %rem.i98 to i64
  %arrayidx.i100 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i99
  %51 = load i8, i8* %arrayidx.i100, align 1
  %52 = load i8*, i8** %b.addr.i91, align 8
  %53 = load i32, i32* %i.i94, align 4
  %54 = load i32, i32* %rb.addr.i92, align 4
  %add1.i101 = add nsw i32 %53, %54
  %rem2.i102 = srem i32 %add1.i101, 2
  %idxprom3.i103 = sext i32 %rem2.i102 to i64
  %arrayidx4.i104 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i103
  %55 = load i8, i8* %arrayidx4.i104, align 1
  %call.i105 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i93, align 8
  %57 = load i32, i32* %i.i94, align 4
  %idxprom5.i106 = sext i32 %57 to i64
  %arrayidx6.i107 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i106
  store i8 %call.i105, i8* %arrayidx6.i107, align 1
  %58 = load i32, i32* %i.i94, align 4
  %inc.i109 = add nsw i32 %58, 1
  store i32 %inc.i109, i32* %i.i94, align 4
  br label %for.cond.i96

vmult.exit110:                                    ; preds = %for.cond.i96
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i22, align 4
  %mul27 = mul nsw i32 2, %60
  %add28 = add nsw i32 %mul27, 1
  %61 = load i8*, i8** %b.addr, align 8
  %arraydecay29 = getelementptr inbounds [2 x i8], [2 x i8]* %a1b, i64 0, i64 0
  store i8* %59, i8** %a.addr.i111, align 8
  store i32 %add28, i32* %ra.addr.i112, align 4
  store i8* %61, i8** %b.addr.i113, align 8
  store i32 0, i32* %rb.addr.i114, align 4
  store i8* %arraydecay29, i8** %c.addr.i115, align 8
  store i32 0, i32* %i.i116, align 4
  br label %for.cond.i118

for.cond.i118:                                    ; preds = %for.body.i130, %vmult.exit110
  %62 = load i32, i32* %i.i116, align 4
  %cmp.i117 = icmp sle i32 %62, 1
  br i1 %cmp.i117, label %for.body.i130, label %vmult.exit132

for.body.i130:                                    ; preds = %for.cond.i118
  %63 = load i8*, i8** %a.addr.i111, align 8
  %64 = load i32, i32* %i.i116, align 4
  %65 = load i32, i32* %ra.addr.i112, align 4
  %add.i119 = add nsw i32 %64, %65
  %rem.i120 = srem i32 %add.i119, 2
  %idxprom.i121 = sext i32 %rem.i120 to i64
  %arrayidx.i122 = getelementptr inbounds i8, i8* %63, i64 %idxprom.i121
  %66 = load i8, i8* %arrayidx.i122, align 1
  %67 = load i8*, i8** %b.addr.i113, align 8
  %68 = load i32, i32* %i.i116, align 4
  %69 = load i32, i32* %rb.addr.i114, align 4
  %add1.i123 = add nsw i32 %68, %69
  %rem2.i124 = srem i32 %add1.i123, 2
  %idxprom3.i125 = sext i32 %rem2.i124 to i64
  %arrayidx4.i126 = getelementptr inbounds i8, i8* %67, i64 %idxprom3.i125
  %70 = load i8, i8* %arrayidx4.i126, align 1
  %call.i127 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %70) #2
  %71 = load i8*, i8** %c.addr.i115, align 8
  %72 = load i32, i32* %i.i116, align 4
  %idxprom5.i128 = sext i32 %72 to i64
  %arrayidx6.i129 = getelementptr inbounds i8, i8* %71, i64 %idxprom5.i128
  store i8 %call.i127, i8* %arrayidx6.i129, align 1
  %73 = load i32, i32* %i.i116, align 4
  %inc.i131 = add nsw i32 %73, 1
  store i32 %inc.i131, i32* %i.i116, align 4
  br label %for.cond.i118

vmult.exit132:                                    ; preds = %for.cond.i118
  %74 = load i8*, i8** %a.addr, align 8
  %75 = load i8*, i8** %b.addr, align 8
  %76 = load i32, i32* %i22, align 4
  %mul30 = mul nsw i32 2, %76
  %add31 = add nsw i32 %mul30, 2
  %arraydecay32 = getelementptr inbounds [2 x i8], [2 x i8]* %ab2, i64 0, i64 0
  store i8* %74, i8** %a.addr.i133, align 8
  store i32 0, i32* %ra.addr.i134, align 4
  store i8* %75, i8** %b.addr.i135, align 8
  store i32 %add31, i32* %rb.addr.i136, align 4
  store i8* %arraydecay32, i8** %c.addr.i137, align 8
  store i32 0, i32* %i.i138, align 4
  br label %for.cond.i140

for.cond.i140:                                    ; preds = %for.body.i152, %vmult.exit132
  %77 = load i32, i32* %i.i138, align 4
  %cmp.i139 = icmp sle i32 %77, 1
  br i1 %cmp.i139, label %for.body.i152, label %vmult.exit154

for.body.i152:                                    ; preds = %for.cond.i140
  %78 = load i8*, i8** %a.addr.i133, align 8
  %79 = load i32, i32* %i.i138, align 4
  %80 = load i32, i32* %ra.addr.i134, align 4
  %add.i141 = add nsw i32 %79, %80
  %rem.i142 = srem i32 %add.i141, 2
  %idxprom.i143 = sext i32 %rem.i142 to i64
  %arrayidx.i144 = getelementptr inbounds i8, i8* %78, i64 %idxprom.i143
  %81 = load i8, i8* %arrayidx.i144, align 1
  %82 = load i8*, i8** %b.addr.i135, align 8
  %83 = load i32, i32* %i.i138, align 4
  %84 = load i32, i32* %rb.addr.i136, align 4
  %add1.i145 = add nsw i32 %83, %84
  %rem2.i146 = srem i32 %add1.i145, 2
  %idxprom3.i147 = sext i32 %rem2.i146 to i64
  %arrayidx4.i148 = getelementptr inbounds i8, i8* %82, i64 %idxprom3.i147
  %85 = load i8, i8* %arrayidx4.i148, align 1
  %call.i149 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %85) #2
  %86 = load i8*, i8** %c.addr.i137, align 8
  %87 = load i32, i32* %i.i138, align 4
  %idxprom5.i150 = sext i32 %87 to i64
  %arrayidx6.i151 = getelementptr inbounds i8, i8* %86, i64 %idxprom5.i150
  store i8 %call.i149, i8* %arrayidx6.i151, align 1
  %88 = load i32, i32* %i.i138, align 4
  %inc.i153 = add nsw i32 %88, 1
  store i32 %inc.i153, i32* %i.i138, align 4
  br label %for.cond.i140

vmult.exit154:                                    ; preds = %for.cond.i140
  %89 = load i8*, i8** %a.addr, align 8
  %90 = load i32, i32* %i22, align 4
  %mul33 = mul nsw i32 2, %90
  %add34 = add nsw i32 %mul33, 2
  %91 = load i8*, i8** %b.addr, align 8
  %arraydecay35 = getelementptr inbounds [2 x i8], [2 x i8]* %a2b, i64 0, i64 0
  store i8* %89, i8** %a.addr.i155, align 8
  store i32 %add34, i32* %ra.addr.i156, align 4
  store i8* %91, i8** %b.addr.i157, align 8
  store i32 0, i32* %rb.addr.i158, align 4
  store i8* %arraydecay35, i8** %c.addr.i159, align 8
  store i32 0, i32* %i.i160, align 4
  br label %for.cond.i162

for.cond.i162:                                    ; preds = %for.body.i174, %vmult.exit154
  %92 = load i32, i32* %i.i160, align 4
  %cmp.i161 = icmp sle i32 %92, 1
  br i1 %cmp.i161, label %for.body.i174, label %vmult.exit176

for.body.i174:                                    ; preds = %for.cond.i162
  %93 = load i8*, i8** %a.addr.i155, align 8
  %94 = load i32, i32* %i.i160, align 4
  %95 = load i32, i32* %ra.addr.i156, align 4
  %add.i163 = add nsw i32 %94, %95
  %rem.i164 = srem i32 %add.i163, 2
  %idxprom.i165 = sext i32 %rem.i164 to i64
  %arrayidx.i166 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i165
  %96 = load i8, i8* %arrayidx.i166, align 1
  %97 = load i8*, i8** %b.addr.i157, align 8
  %98 = load i32, i32* %i.i160, align 4
  %99 = load i32, i32* %rb.addr.i158, align 4
  %add1.i167 = add nsw i32 %98, %99
  %rem2.i168 = srem i32 %add1.i167, 2
  %idxprom3.i169 = sext i32 %rem2.i168 to i64
  %arrayidx4.i170 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i169
  %100 = load i8, i8* %arrayidx4.i170, align 1
  %call.i171 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i159, align 8
  %102 = load i32, i32* %i.i160, align 4
  %idxprom5.i172 = sext i32 %102 to i64
  %arrayidx6.i173 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i172
  store i8 %call.i171, i8* %arrayidx6.i173, align 1
  %103 = load i32, i32* %i.i160, align 4
  %inc.i175 = add nsw i32 %103, 1
  store i32 %inc.i175, i32* %i.i160, align 4
  br label %for.cond.i162

vmult.exit176:                                    ; preds = %for.cond.i162
  %104 = load i8*, i8** %c.addr, align 8
  %105 = load i32, i32* %i22, align 4
  %idxprom36 = sext i32 %105 to i64
  %arrayidx37 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx37, i64 0, i64 0
  %106 = load i8*, i8** %c.addr, align 8
  store i8* %104, i8** %a.addr.i177, align 8
  store i32 0, i32* %ra.addr.i178, align 4
  store i8* %arraydecay38, i8** %b.addr.i179, align 8
  store i32 0, i32* %rb.addr.i180, align 4
  store i8* %106, i8** %c.addr.i181, align 8
  store i32 0, i32* %i.i182, align 4
  br label %for.cond.i184

for.cond.i184:                                    ; preds = %for.body.i193, %vmult.exit176
  %107 = load i32, i32* %i.i182, align 4
  %cmp.i183 = icmp sle i32 %107, 1
  br i1 %cmp.i183, label %for.body.i193, label %vadd.exit

for.body.i193:                                    ; preds = %for.cond.i184
  %108 = load i8*, i8** %a.addr.i177, align 8
  %109 = load i32, i32* %i.i182, align 4
  %110 = load i32, i32* %ra.addr.i178, align 4
  %add.i185 = add nsw i32 %109, %110
  %rem.i186 = srem i32 %add.i185, 2
  %idxprom.i187 = sext i32 %rem.i186 to i64
  %arrayidx.i188 = getelementptr inbounds i8, i8* %108, i64 %idxprom.i187
  %111 = load i8, i8* %arrayidx.i188, align 1
  %conv.i = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i179, align 8
  %113 = load i32, i32* %i.i182, align 4
  %114 = load i32, i32* %rb.addr.i180, align 4
  %add1.i189 = add nsw i32 %113, %114
  %rem2.i190 = srem i32 %add1.i189, 2
  %idxprom3.i191 = sext i32 %rem2.i190 to i64
  %arrayidx4.i192 = getelementptr inbounds i8, i8* %112, i64 %idxprom3.i191
  %115 = load i8, i8* %arrayidx4.i192, align 1
  %conv5.i = zext i8 %115 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %116 = load i8*, i8** %c.addr.i181, align 8
  %117 = load i32, i32* %i.i182, align 4
  %idxprom7.i = sext i32 %117 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %118 = load i32, i32* %i.i182, align 4
  %inc.i194 = add nsw i32 %118, 1
  store i32 %inc.i194, i32* %i.i182, align 4
  br label %for.cond.i184

vadd.exit:                                        ; preds = %for.cond.i184
  %119 = load i8*, i8** %c.addr, align 8
  %arraydecay39 = getelementptr inbounds [2 x i8], [2 x i8]* %ab1, i64 0, i64 0
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %119, i8** %a.addr.i212, align 8
  store i32 0, i32* %ra.addr.i213, align 4
  store i8* %arraydecay39, i8** %b.addr.i214, align 8
  store i32 0, i32* %rb.addr.i215, align 4
  store i8* %120, i8** %c.addr.i216, align 8
  store i32 0, i32* %i.i217, align 4
  br label %for.cond.i219

for.cond.i219:                                    ; preds = %for.body.i234, %vadd.exit
  %121 = load i32, i32* %i.i217, align 4
  %cmp.i218 = icmp sle i32 %121, 1
  br i1 %cmp.i218, label %for.body.i234, label %vadd.exit236

for.body.i234:                                    ; preds = %for.cond.i219
  %122 = load i8*, i8** %a.addr.i212, align 8
  %123 = load i32, i32* %i.i217, align 4
  %124 = load i32, i32* %ra.addr.i213, align 4
  %add.i220 = add nsw i32 %123, %124
  %rem.i221 = srem i32 %add.i220, 2
  %idxprom.i222 = sext i32 %rem.i221 to i64
  %arrayidx.i223 = getelementptr inbounds i8, i8* %122, i64 %idxprom.i222
  %125 = load i8, i8* %arrayidx.i223, align 1
  %conv.i224 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i214, align 8
  %127 = load i32, i32* %i.i217, align 4
  %128 = load i32, i32* %rb.addr.i215, align 4
  %add1.i225 = add nsw i32 %127, %128
  %rem2.i226 = srem i32 %add1.i225, 2
  %idxprom3.i227 = sext i32 %rem2.i226 to i64
  %arrayidx4.i228 = getelementptr inbounds i8, i8* %126, i64 %idxprom3.i227
  %129 = load i8, i8* %arrayidx4.i228, align 1
  %conv5.i229 = zext i8 %129 to i32
  %xor.i230 = xor i32 %conv.i224, %conv5.i229
  %conv6.i231 = trunc i32 %xor.i230 to i8
  %130 = load i8*, i8** %c.addr.i216, align 8
  %131 = load i32, i32* %i.i217, align 4
  %idxprom7.i232 = sext i32 %131 to i64
  %arrayidx8.i233 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i232
  store i8 %conv6.i231, i8* %arrayidx8.i233, align 1
  %132 = load i32, i32* %i.i217, align 4
  %inc.i235 = add nsw i32 %132, 1
  store i32 %inc.i235, i32* %i.i217, align 4
  br label %for.cond.i219

vadd.exit236:                                     ; preds = %for.cond.i219
  %133 = load i8*, i8** %c.addr, align 8
  %arraydecay40 = getelementptr inbounds [2 x i8], [2 x i8]* %a1b, i64 0, i64 0
  %134 = load i8*, i8** %c.addr, align 8
  store i8* %133, i8** %a.addr.i309, align 8
  store i32 0, i32* %ra.addr.i310, align 4
  store i8* %arraydecay40, i8** %b.addr.i311, align 8
  store i32 0, i32* %rb.addr.i312, align 4
  store i8* %134, i8** %c.addr.i313, align 8
  store i32 0, i32* %i.i314, align 4
  br label %for.cond.i316

for.cond.i316:                                    ; preds = %for.body.i331, %vadd.exit236
  %135 = load i32, i32* %i.i314, align 4
  %cmp.i315 = icmp sle i32 %135, 1
  br i1 %cmp.i315, label %for.body.i331, label %vadd.exit333

for.body.i331:                                    ; preds = %for.cond.i316
  %136 = load i8*, i8** %a.addr.i309, align 8
  %137 = load i32, i32* %i.i314, align 4
  %138 = load i32, i32* %ra.addr.i310, align 4
  %add.i317 = add nsw i32 %137, %138
  %rem.i318 = srem i32 %add.i317, 2
  %idxprom.i319 = sext i32 %rem.i318 to i64
  %arrayidx.i320 = getelementptr inbounds i8, i8* %136, i64 %idxprom.i319
  %139 = load i8, i8* %arrayidx.i320, align 1
  %conv.i321 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i311, align 8
  %141 = load i32, i32* %i.i314, align 4
  %142 = load i32, i32* %rb.addr.i312, align 4
  %add1.i322 = add nsw i32 %141, %142
  %rem2.i323 = srem i32 %add1.i322, 2
  %idxprom3.i324 = sext i32 %rem2.i323 to i64
  %arrayidx4.i325 = getelementptr inbounds i8, i8* %140, i64 %idxprom3.i324
  %143 = load i8, i8* %arrayidx4.i325, align 1
  %conv5.i326 = zext i8 %143 to i32
  %xor.i327 = xor i32 %conv.i321, %conv5.i326
  %conv6.i328 = trunc i32 %xor.i327 to i8
  %144 = load i8*, i8** %c.addr.i313, align 8
  %145 = load i32, i32* %i.i314, align 4
  %idxprom7.i329 = sext i32 %145 to i64
  %arrayidx8.i330 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i329
  store i8 %conv6.i328, i8* %arrayidx8.i330, align 1
  %146 = load i32, i32* %i.i314, align 4
  %inc.i332 = add nsw i32 %146, 1
  store i32 %inc.i332, i32* %i.i314, align 4
  br label %for.cond.i316

vadd.exit333:                                     ; preds = %for.cond.i316
  %147 = load i8*, i8** %c.addr, align 8
  %148 = load i32, i32* %i22, align 4
  %idxprom41 = sext i32 %148 to i64
  %arrayidx42 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx42, i64 0, i64 0
  %149 = load i8*, i8** %c.addr, align 8
  store i8* %147, i8** %a.addr.i384, align 8
  store i32 0, i32* %ra.addr.i385, align 4
  store i8* %arraydecay43, i8** %b.addr.i386, align 8
  store i32 1, i32* %rb.addr.i387, align 4
  store i8* %149, i8** %c.addr.i388, align 8
  store i32 0, i32* %i.i389, align 4
  br label %for.cond.i391

for.cond.i391:                                    ; preds = %for.body.i406, %vadd.exit333
  %150 = load i32, i32* %i.i389, align 4
  %cmp.i390 = icmp sle i32 %150, 1
  br i1 %cmp.i390, label %for.body.i406, label %vadd.exit408

for.body.i406:                                    ; preds = %for.cond.i391
  %151 = load i8*, i8** %a.addr.i384, align 8
  %152 = load i32, i32* %i.i389, align 4
  %153 = load i32, i32* %ra.addr.i385, align 4
  %add.i392 = add nsw i32 %152, %153
  %rem.i393 = srem i32 %add.i392, 2
  %idxprom.i394 = sext i32 %rem.i393 to i64
  %arrayidx.i395 = getelementptr inbounds i8, i8* %151, i64 %idxprom.i394
  %154 = load i8, i8* %arrayidx.i395, align 1
  %conv.i396 = zext i8 %154 to i32
  %155 = load i8*, i8** %b.addr.i386, align 8
  %156 = load i32, i32* %i.i389, align 4
  %157 = load i32, i32* %rb.addr.i387, align 4
  %add1.i397 = add nsw i32 %156, %157
  %rem2.i398 = srem i32 %add1.i397, 2
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
  %arraydecay44 = getelementptr inbounds [2 x i8], [2 x i8]* %ab2, i64 0, i64 0
  %163 = load i8*, i8** %c.addr, align 8
  store i8* %162, i8** %a.addr.i359, align 8
  store i32 0, i32* %ra.addr.i360, align 4
  store i8* %arraydecay44, i8** %b.addr.i361, align 8
  store i32 0, i32* %rb.addr.i362, align 4
  store i8* %163, i8** %c.addr.i363, align 8
  store i32 0, i32* %i.i364, align 4
  br label %for.cond.i366

for.cond.i366:                                    ; preds = %for.body.i381, %vadd.exit408
  %164 = load i32, i32* %i.i364, align 4
  %cmp.i365 = icmp sle i32 %164, 1
  br i1 %cmp.i365, label %for.body.i381, label %vadd.exit383

for.body.i381:                                    ; preds = %for.cond.i366
  %165 = load i8*, i8** %a.addr.i359, align 8
  %166 = load i32, i32* %i.i364, align 4
  %167 = load i32, i32* %ra.addr.i360, align 4
  %add.i367 = add nsw i32 %166, %167
  %rem.i368 = srem i32 %add.i367, 2
  %idxprom.i369 = sext i32 %rem.i368 to i64
  %arrayidx.i370 = getelementptr inbounds i8, i8* %165, i64 %idxprom.i369
  %168 = load i8, i8* %arrayidx.i370, align 1
  %conv.i371 = zext i8 %168 to i32
  %169 = load i8*, i8** %b.addr.i361, align 8
  %170 = load i32, i32* %i.i364, align 4
  %171 = load i32, i32* %rb.addr.i362, align 4
  %add1.i372 = add nsw i32 %170, %171
  %rem2.i373 = srem i32 %add1.i372, 2
  %idxprom3.i374 = sext i32 %rem2.i373 to i64
  %arrayidx4.i375 = getelementptr inbounds i8, i8* %169, i64 %idxprom3.i374
  %172 = load i8, i8* %arrayidx4.i375, align 1
  %conv5.i376 = zext i8 %172 to i32
  %xor.i377 = xor i32 %conv.i371, %conv5.i376
  %conv6.i378 = trunc i32 %xor.i377 to i8
  %173 = load i8*, i8** %c.addr.i363, align 8
  %174 = load i32, i32* %i.i364, align 4
  %idxprom7.i379 = sext i32 %174 to i64
  %arrayidx8.i380 = getelementptr inbounds i8, i8* %173, i64 %idxprom7.i379
  store i8 %conv6.i378, i8* %arrayidx8.i380, align 1
  %175 = load i32, i32* %i.i364, align 4
  %inc.i382 = add nsw i32 %175, 1
  store i32 %inc.i382, i32* %i.i364, align 4
  br label %for.cond.i366

vadd.exit383:                                     ; preds = %for.cond.i366
  %176 = load i8*, i8** %c.addr, align 8
  %arraydecay45 = getelementptr inbounds [2 x i8], [2 x i8]* %a2b, i64 0, i64 0
  %177 = load i8*, i8** %c.addr, align 8
  store i8* %176, i8** %a.addr.i334, align 8
  store i32 0, i32* %ra.addr.i335, align 4
  store i8* %arraydecay45, i8** %b.addr.i336, align 8
  store i32 0, i32* %rb.addr.i337, align 4
  store i8* %177, i8** %c.addr.i338, align 8
  store i32 0, i32* %i.i339, align 4
  br label %for.cond.i341

for.cond.i341:                                    ; preds = %for.body.i356, %vadd.exit383
  %178 = load i32, i32* %i.i339, align 4
  %cmp.i340 = icmp sle i32 %178, 1
  br i1 %cmp.i340, label %for.body.i356, label %vadd.exit358

for.body.i356:                                    ; preds = %for.cond.i341
  %179 = load i8*, i8** %a.addr.i334, align 8
  %180 = load i32, i32* %i.i339, align 4
  %181 = load i32, i32* %ra.addr.i335, align 4
  %add.i342 = add nsw i32 %180, %181
  %rem.i343 = srem i32 %add.i342, 2
  %idxprom.i344 = sext i32 %rem.i343 to i64
  %arrayidx.i345 = getelementptr inbounds i8, i8* %179, i64 %idxprom.i344
  %182 = load i8, i8* %arrayidx.i345, align 1
  %conv.i346 = zext i8 %182 to i32
  %183 = load i8*, i8** %b.addr.i336, align 8
  %184 = load i32, i32* %i.i339, align 4
  %185 = load i32, i32* %rb.addr.i337, align 4
  %add1.i347 = add nsw i32 %184, %185
  %rem2.i348 = srem i32 %add1.i347, 2
  %idxprom3.i349 = sext i32 %rem2.i348 to i64
  %arrayidx4.i350 = getelementptr inbounds i8, i8* %183, i64 %idxprom3.i349
  %186 = load i8, i8* %arrayidx4.i350, align 1
  %conv5.i351 = zext i8 %186 to i32
  %xor.i352 = xor i32 %conv.i346, %conv5.i351
  %conv6.i353 = trunc i32 %xor.i352 to i8
  %187 = load i8*, i8** %c.addr.i338, align 8
  %188 = load i32, i32* %i.i339, align 4
  %idxprom7.i354 = sext i32 %188 to i64
  %arrayidx8.i355 = getelementptr inbounds i8, i8* %187, i64 %idxprom7.i354
  store i8 %conv6.i353, i8* %arrayidx8.i355, align 1
  %189 = load i32, i32* %i.i339, align 4
  %inc.i357 = add nsw i32 %189, 1
  store i32 %inc.i357, i32* %i.i339, align 4
  br label %for.cond.i341

vadd.exit358:                                     ; preds = %for.cond.i341
  br label %for.inc46

for.inc46:                                        ; preds = %vadd.exit358
  %190 = load i32, i32* %i22, align 4
  %inc47 = add nsw i32 %190, 1
  store i32 %inc47, i32* %i22, align 4
  br label %for.cond23

for.end48:                                        ; preds = %for.cond23
  store i32 0, i32* %l, align 4
  store i32 0, i32* %i49, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc59, %for.end48
  %191 = load i32, i32* %i49, align 4
  %cmp51 = icmp sle i32 %191, 1
  br i1 %cmp51, label %for.body53, label %for.end61

for.body53:                                       ; preds = %for.cond50
  %arrayidx54 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0
  %192 = load i32, i32* %i49, align 4
  %rem = srem i32 %192, 1
  %idxprom55 = sext i32 %rem to i64
  %arrayidx56 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx54, i64 0, i64 %idxprom55
  %193 = load i8, i8* %arrayidx56, align 1
  %194 = load i32, i32* %i49, align 4
  %idxprom57 = sext i32 %194 to i64
  %arrayidx58 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 %idxprom57
  store i8 %193, i8* %arrayidx58, align 1
  br label %for.inc59

for.inc59:                                        ; preds = %for.body53
  %195 = load i32, i32* %i49, align 4
  %inc60 = add nsw i32 %195, 1
  store i32 %inc60, i32* %i49, align 4
  br label %for.cond50

for.end61:                                        ; preds = %for.cond50
  %196 = load i8*, i8** %a.addr, align 8
  %197 = load i8*, i8** %b.addr, align 8
  %arraydecay62 = getelementptr inbounds [2 x i8], [2 x i8]* %ab1, i64 0, i64 0
  store i8* %196, i8** %a.addr.i287, align 8
  store i32 0, i32* %ra.addr.i288, align 4
  store i8* %197, i8** %b.addr.i289, align 8
  store i32 1, i32* %rb.addr.i290, align 4
  store i8* %arraydecay62, i8** %c.addr.i291, align 8
  store i32 0, i32* %i.i292, align 4
  br label %for.cond.i294

for.cond.i294:                                    ; preds = %for.body.i306, %for.end61
  %198 = load i32, i32* %i.i292, align 4
  %cmp.i293 = icmp sle i32 %198, 1
  br i1 %cmp.i293, label %for.body.i306, label %vmult.exit308

for.body.i306:                                    ; preds = %for.cond.i294
  %199 = load i8*, i8** %a.addr.i287, align 8
  %200 = load i32, i32* %i.i292, align 4
  %201 = load i32, i32* %ra.addr.i288, align 4
  %add.i295 = add nsw i32 %200, %201
  %rem.i296 = srem i32 %add.i295, 2
  %idxprom.i297 = sext i32 %rem.i296 to i64
  %arrayidx.i298 = getelementptr inbounds i8, i8* %199, i64 %idxprom.i297
  %202 = load i8, i8* %arrayidx.i298, align 1
  %203 = load i8*, i8** %b.addr.i289, align 8
  %204 = load i32, i32* %i.i292, align 4
  %205 = load i32, i32* %rb.addr.i290, align 4
  %add1.i299 = add nsw i32 %204, %205
  %rem2.i300 = srem i32 %add1.i299, 2
  %idxprom3.i301 = sext i32 %rem2.i300 to i64
  %arrayidx4.i302 = getelementptr inbounds i8, i8* %203, i64 %idxprom3.i301
  %206 = load i8, i8* %arrayidx4.i302, align 1
  %call.i303 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %206) #2
  %207 = load i8*, i8** %c.addr.i291, align 8
  %208 = load i32, i32* %i.i292, align 4
  %idxprom5.i304 = sext i32 %208 to i64
  %arrayidx6.i305 = getelementptr inbounds i8, i8* %207, i64 %idxprom5.i304
  store i8 %call.i303, i8* %arrayidx6.i305, align 1
  %209 = load i32, i32* %i.i292, align 4
  %inc.i307 = add nsw i32 %209, 1
  store i32 %inc.i307, i32* %i.i292, align 4
  br label %for.cond.i294

vmult.exit308:                                    ; preds = %for.cond.i294
  %210 = load i8*, i8** %c.addr, align 8
  %arraydecay63 = getelementptr inbounds [2 x i8], [2 x i8]* %z, i64 0, i64 0
  %211 = load i8*, i8** %c.addr, align 8
  store i8* %210, i8** %a.addr.i262, align 8
  store i32 0, i32* %ra.addr.i263, align 4
  store i8* %arraydecay63, i8** %b.addr.i264, align 8
  store i32 0, i32* %rb.addr.i265, align 4
  store i8* %211, i8** %c.addr.i266, align 8
  store i32 0, i32* %i.i267, align 4
  br label %for.cond.i269

for.cond.i269:                                    ; preds = %for.body.i284, %vmult.exit308
  %212 = load i32, i32* %i.i267, align 4
  %cmp.i268 = icmp sle i32 %212, 1
  br i1 %cmp.i268, label %for.body.i284, label %vadd.exit286

for.body.i284:                                    ; preds = %for.cond.i269
  %213 = load i8*, i8** %a.addr.i262, align 8
  %214 = load i32, i32* %i.i267, align 4
  %215 = load i32, i32* %ra.addr.i263, align 4
  %add.i270 = add nsw i32 %214, %215
  %rem.i271 = srem i32 %add.i270, 2
  %idxprom.i272 = sext i32 %rem.i271 to i64
  %arrayidx.i273 = getelementptr inbounds i8, i8* %213, i64 %idxprom.i272
  %216 = load i8, i8* %arrayidx.i273, align 1
  %conv.i274 = zext i8 %216 to i32
  %217 = load i8*, i8** %b.addr.i264, align 8
  %218 = load i32, i32* %i.i267, align 4
  %219 = load i32, i32* %rb.addr.i265, align 4
  %add1.i275 = add nsw i32 %218, %219
  %rem2.i276 = srem i32 %add1.i275, 2
  %idxprom3.i277 = sext i32 %rem2.i276 to i64
  %arrayidx4.i278 = getelementptr inbounds i8, i8* %217, i64 %idxprom3.i277
  %220 = load i8, i8* %arrayidx4.i278, align 1
  %conv5.i279 = zext i8 %220 to i32
  %xor.i280 = xor i32 %conv.i274, %conv5.i279
  %conv6.i281 = trunc i32 %xor.i280 to i8
  %221 = load i8*, i8** %c.addr.i266, align 8
  %222 = load i32, i32* %i.i267, align 4
  %idxprom7.i282 = sext i32 %222 to i64
  %arrayidx8.i283 = getelementptr inbounds i8, i8* %221, i64 %idxprom7.i282
  store i8 %conv6.i281, i8* %arrayidx8.i283, align 1
  %223 = load i32, i32* %i.i267, align 4
  %inc.i285 = add nsw i32 %223, 1
  store i32 %inc.i285, i32* %i.i267, align 4
  br label %for.cond.i269

vadd.exit286:                                     ; preds = %for.cond.i269
  %224 = load i8*, i8** %c.addr, align 8
  %arraydecay64 = getelementptr inbounds [2 x i8], [2 x i8]* %ab1, i64 0, i64 0
  %225 = load i8*, i8** %c.addr, align 8
  store i8* %224, i8** %a.addr.i237, align 8
  store i32 0, i32* %ra.addr.i238, align 4
  store i8* %arraydecay64, i8** %b.addr.i239, align 8
  store i32 0, i32* %rb.addr.i240, align 4
  store i8* %225, i8** %c.addr.i241, align 8
  store i32 0, i32* %i.i242, align 4
  br label %for.cond.i244

for.cond.i244:                                    ; preds = %for.body.i259, %vadd.exit286
  %226 = load i32, i32* %i.i242, align 4
  %cmp.i243 = icmp sle i32 %226, 1
  br i1 %cmp.i243, label %for.body.i259, label %vadd.exit261

for.body.i259:                                    ; preds = %for.cond.i244
  %227 = load i8*, i8** %a.addr.i237, align 8
  %228 = load i32, i32* %i.i242, align 4
  %229 = load i32, i32* %ra.addr.i238, align 4
  %add.i245 = add nsw i32 %228, %229
  %rem.i246 = srem i32 %add.i245, 2
  %idxprom.i247 = sext i32 %rem.i246 to i64
  %arrayidx.i248 = getelementptr inbounds i8, i8* %227, i64 %idxprom.i247
  %230 = load i8, i8* %arrayidx.i248, align 1
  %conv.i249 = zext i8 %230 to i32
  %231 = load i8*, i8** %b.addr.i239, align 8
  %232 = load i32, i32* %i.i242, align 4
  %233 = load i32, i32* %rb.addr.i240, align 4
  %add1.i250 = add nsw i32 %232, %233
  %rem2.i251 = srem i32 %add1.i250, 2
  %idxprom3.i252 = sext i32 %rem2.i251 to i64
  %arrayidx4.i253 = getelementptr inbounds i8, i8* %231, i64 %idxprom3.i252
  %234 = load i8, i8* %arrayidx4.i253, align 1
  %conv5.i254 = zext i8 %234 to i32
  %xor.i255 = xor i32 %conv.i249, %conv5.i254
  %conv6.i256 = trunc i32 %xor.i255 to i8
  %235 = load i8*, i8** %c.addr.i241, align 8
  %236 = load i32, i32* %i.i242, align 4
  %idxprom7.i257 = sext i32 %236 to i64
  %arrayidx8.i258 = getelementptr inbounds i8, i8* %235, i64 %idxprom7.i257
  store i8 %conv6.i256, i8* %arrayidx8.i258, align 1
  %237 = load i32, i32* %i.i242, align 4
  %inc.i260 = add nsw i32 %237, 1
  store i32 %inc.i260, i32* %i.i242, align 4
  br label %for.cond.i244

vadd.exit261:                                     ; preds = %for.cond.i244
  %238 = load i8, i8* %A, align 1
  %239 = load i8, i8* %B, align 1
  %call65 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239)
  %conv66 = zext i8 %call65 to i32
  %240 = load i8*, i8** %c.addr, align 8
  store i8* %240, i8** %a.addr.i199, align 8
  %241 = load i8*, i8** %a.addr.i199, align 8
  store i8* %241, i8** %a.addr.i.i195, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i196, align 8
  store i32 0, i32* %i.i.i198, align 4
  br label %for.cond.i.i201

for.cond.i.i201:                                  ; preds = %for.body.i.i210, %vadd.exit261
  %242 = load i32, i32* %i.i.i198, align 4
  %cmp.i.i200 = icmp sle i32 %242, 1
  br i1 %cmp.i.i200, label %for.body.i.i210, label %xors.exit211

for.body.i.i210:                                  ; preds = %for.cond.i.i201
  %243 = load i8 (i8)*, i8 (i8)** %f.addr.i.i196, align 8
  %244 = load i8*, i8** %a.addr.i.i195, align 8
  %245 = load i32, i32* %i.i.i198, align 4
  %idxprom.i.i202 = sext i32 %245 to i64
  %arrayidx.i.i203 = getelementptr inbounds i8, i8* %244, i64 %idxprom.i.i202
  %246 = load i8, i8* %arrayidx.i.i203, align 1
  %call.i.i204 = call zeroext i8 %243(i8 zeroext %246) #2
  %conv.i.i205 = zext i8 %call.i.i204 to i32
  %247 = load i8, i8* %result.i.i197, align 1
  %conv1.i.i206 = zext i8 %247 to i32
  %xor.i.i207 = xor i32 %conv1.i.i206, %conv.i.i205
  %conv2.i.i208 = trunc i32 %xor.i.i207 to i8
  store i8 %conv2.i.i208, i8* %result.i.i197, align 1
  %248 = load i32, i32* %i.i.i198, align 4
  %inc.i.i209 = add nsw i32 %248, 1
  store i32 %inc.i.i209, i32* %i.i.i198, align 4
  br label %for.cond.i.i201

xors.exit211:                                     ; preds = %for.cond.i.i201
  %249 = load i8, i8* %result.i.i197, align 1
  %conv68 = zext i8 %249 to i32
  %cmp69 = icmp eq i32 %conv66, %conv68
  call void @assert(i1 zeroext %cmp69)
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
