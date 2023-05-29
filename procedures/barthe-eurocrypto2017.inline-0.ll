; ModuleID = '../examples/barthe-eurocrypto2017.c'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
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
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 1
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 1
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
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 1
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 1
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
  %a.addr.i300 = alloca i8*, align 8
  %ra.addr.i301 = alloca i32, align 4
  %b.addr.i302 = alloca i8*, align 8
  %rb.addr.i303 = alloca i32, align 4
  %c.addr.i304 = alloca i8*, align 8
  %i.i305 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca double, align 8
  %y.i = alloca i32, align 4
  %a.addr.i278 = alloca i8*, align 8
  %ra.addr.i279 = alloca i32, align 4
  %b.addr.i280 = alloca i8*, align 8
  %rb.addr.i281 = alloca i32, align 4
  %c.addr.i282 = alloca i8*, align 8
  %i.i283 = alloca i32, align 4
  %a.addr.i259 = alloca i8*, align 8
  %ra.addr.i260 = alloca i32, align 4
  %b.addr.i261 = alloca i8*, align 8
  %rb.addr.i262 = alloca i32, align 4
  %c.addr.i263 = alloca i8*, align 8
  %i.i264 = alloca i32, align 4
  %a.addr.i240 = alloca i8*, align 8
  %ra.addr.i241 = alloca i32, align 4
  %b.addr.i242 = alloca i8*, align 8
  %rb.addr.i243 = alloca i32, align 4
  %c.addr.i244 = alloca i8*, align 8
  %i.i245 = alloca i32, align 4
  %a.addr.i221 = alloca i8*, align 8
  %ra.addr.i222 = alloca i32, align 4
  %b.addr.i223 = alloca i8*, align 8
  %rb.addr.i224 = alloca i32, align 4
  %c.addr.i225 = alloca i8*, align 8
  %i.i226 = alloca i32, align 4
  %a.addr.i.i204 = alloca i8*, align 8
  %f.addr.i.i205 = alloca i8 (i8)*, align 8
  %result.i.i206 = alloca i8, align 1
  %i.i.i207 = alloca i32, align 4
  %a.addr.i208 = alloca i8*, align 8
  %a.addr.i192 = alloca i8*, align 8
  %ra.addr.i193 = alloca i32, align 4
  %b.addr.i194 = alloca i8*, align 8
  %rb.addr.i195 = alloca i32, align 4
  %c.addr.i196 = alloca i8*, align 8
  %i.i197 = alloca i32, align 4
  %a.addr.i176 = alloca i8*, align 8
  %ra.addr.i177 = alloca i32, align 4
  %b.addr.i178 = alloca i8*, align 8
  %rb.addr.i179 = alloca i32, align 4
  %c.addr.i180 = alloca i8*, align 8
  %i.i181 = alloca i32, align 4
  %a.addr.i160 = alloca i8*, align 8
  %ra.addr.i161 = alloca i32, align 4
  %b.addr.i162 = alloca i8*, align 8
  %rb.addr.i163 = alloca i32, align 4
  %c.addr.i164 = alloca i8*, align 8
  %i.i165 = alloca i32, align 4
  %a.addr.i144 = alloca i8*, align 8
  %ra.addr.i145 = alloca i32, align 4
  %b.addr.i146 = alloca i8*, align 8
  %rb.addr.i147 = alloca i32, align 4
  %c.addr.i148 = alloca i8*, align 8
  %i.i149 = alloca i32, align 4
  %a.addr.i128 = alloca i8*, align 8
  %ra.addr.i129 = alloca i32, align 4
  %b.addr.i130 = alloca i8*, align 8
  %rb.addr.i131 = alloca i32, align 4
  %c.addr.i132 = alloca i8*, align 8
  %i.i133 = alloca i32, align 4
  %a.addr.i127 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i110 = alloca i8*, align 8
  %f.addr.i.i111 = alloca i8 (i8)*, align 8
  %result.i.i112 = alloca i8, align 1
  %i.i.i113 = alloca i32, align 4
  %a.addr.i114 = alloca i8*, align 8
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
  %r = alloca [1 x [1 x i8]], align 1
  %cc = alloca [2 x [1 x i8]], align 1
  %dd = alloca [2 x [1 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i23 = alloca i32, align 4
  %i48 = alloca i32, align 4
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
  store i8* %12, i8** %a.addr.i114, align 8
  %13 = load i8*, i8** %a.addr.i114, align 8
  store i8* %13, i8** %a.addr.i.i110, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i111, align 8
  store i32 0, i32* %i.i.i113, align 4
  br label %for.cond.i.i116

for.cond.i.i116:                                  ; preds = %for.body.i.i125, %xors.exit
  %14 = load i32, i32* %i.i.i113, align 4
  %cmp.i.i115 = icmp sle i32 %14, 0
  br i1 %cmp.i.i115, label %for.body.i.i125, label %xors.exit126

for.body.i.i125:                                  ; preds = %for.cond.i.i116
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i111, align 8
  %16 = load i8*, i8** %a.addr.i.i110, align 8
  %17 = load i32, i32* %i.i.i113, align 4
  %idxprom.i.i117 = sext i32 %17 to i64
  %arrayidx.i.i118 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i117
  %18 = load i8, i8* %arrayidx.i.i118, align 1
  %call.i.i119 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i120 = zext i8 %call.i.i119 to i32
  %19 = load i8, i8* %result.i.i112, align 1
  %conv1.i.i121 = zext i8 %19 to i32
  %xor.i.i122 = xor i32 %conv1.i.i121, %conv.i.i120
  %conv2.i.i123 = trunc i32 %xor.i.i122 to i8
  store i8 %conv2.i.i123, i8* %result.i.i112, align 1
  %20 = load i32, i32* %i.i.i113, align 4
  %inc.i.i124 = add nsw i32 %20, 1
  store i32 %inc.i.i124, i32* %i.i.i113, align 4
  br label %for.cond.i.i116

xors.exit126:                                     ; preds = %for.cond.i.i116
  %21 = load i8, i8* %result.i.i112, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 1, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit126
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 0
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 0
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx, i64 0, i64 %idxprom17
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
  %arrayidx22 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx22, i64 0, i64 0
  store i8* %28, i8** %a.addr.i127, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %arraydecay, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %30 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %30, 0
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %31 = load i8*, i8** %a.addr.i127, align 8
  %32 = load i32, i32* %i.i, align 4
  %33 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %32, %33
  %34 = load i8, i8* %31, align 1
  %35 = load i8*, i8** %b.addr.i, align 8
  %36 = load i32, i32* %i.i, align 4
  %37 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %36, %37
  %38 = load i8, i8* %35, align 1
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
  %arrayidx29 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx29, i64 0, i64 0
  store i8* %43, i8** %a.addr.i128, align 8
  store i32 0, i32* %ra.addr.i129, align 4
  store i8* %44, i8** %b.addr.i130, align 8
  store i32 %45, i32* %rb.addr.i131, align 4
  store i8* %arraydecay30, i8** %c.addr.i132, align 8
  store i32 0, i32* %i.i133, align 4
  br label %for.cond.i135

for.cond.i135:                                    ; preds = %for.body.i141, %for.body27
  %47 = load i32, i32* %i.i133, align 4
  %cmp.i134 = icmp sle i32 %47, 0
  br i1 %cmp.i134, label %for.body.i141, label %vmult.exit143

for.body.i141:                                    ; preds = %for.cond.i135
  %48 = load i8*, i8** %a.addr.i128, align 8
  %49 = load i32, i32* %i.i133, align 4
  %50 = load i32, i32* %ra.addr.i129, align 4
  %add.i136 = add nsw i32 %49, %50
  %51 = load i8, i8* %48, align 1
  %52 = load i8*, i8** %b.addr.i130, align 8
  %53 = load i32, i32* %i.i133, align 4
  %54 = load i32, i32* %rb.addr.i131, align 4
  %add1.i137 = add nsw i32 %53, %54
  %55 = load i8, i8* %52, align 1
  %call.i138 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i132, align 8
  %57 = load i32, i32* %i.i133, align 4
  %idxprom5.i139 = sext i32 %57 to i64
  %arrayidx6.i140 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i139
  store i8 %call.i138, i8* %arrayidx6.i140, align 1
  %58 = load i32, i32* %i.i133, align 4
  %inc.i142 = add nsw i32 %58, 1
  store i32 %inc.i142, i32* %i.i133, align 4
  br label %for.cond.i135

vmult.exit143:                                    ; preds = %for.cond.i135
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i23, align 4
  %61 = load i8*, i8** %b.addr, align 8
  %62 = load i32, i32* %i23, align 4
  %mul31 = mul nsw i32 2, %62
  %add = add nsw i32 %mul31, 1
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx33, i64 0, i64 0
  store i8* %59, i8** %a.addr.i144, align 8
  store i32 %60, i32* %ra.addr.i145, align 4
  store i8* %61, i8** %b.addr.i146, align 8
  store i32 0, i32* %rb.addr.i147, align 4
  store i8* %arraydecay34, i8** %c.addr.i148, align 8
  store i32 0, i32* %i.i149, align 4
  br label %for.cond.i151

for.cond.i151:                                    ; preds = %for.body.i157, %vmult.exit143
  %63 = load i32, i32* %i.i149, align 4
  %cmp.i150 = icmp sle i32 %63, 0
  br i1 %cmp.i150, label %for.body.i157, label %vmult.exit159

for.body.i157:                                    ; preds = %for.cond.i151
  %64 = load i8*, i8** %a.addr.i144, align 8
  %65 = load i32, i32* %i.i149, align 4
  %66 = load i32, i32* %ra.addr.i145, align 4
  %add.i152 = add nsw i32 %65, %66
  %67 = load i8, i8* %64, align 1
  %68 = load i8*, i8** %b.addr.i146, align 8
  %69 = load i32, i32* %i.i149, align 4
  %70 = load i32, i32* %rb.addr.i147, align 4
  %add1.i153 = add nsw i32 %69, %70
  %71 = load i8, i8* %68, align 1
  %call.i154 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %71) #2
  %72 = load i8*, i8** %c.addr.i148, align 8
  %73 = load i32, i32* %i.i149, align 4
  %idxprom5.i155 = sext i32 %73 to i64
  %arrayidx6.i156 = getelementptr inbounds i8, i8* %72, i64 %idxprom5.i155
  store i8 %call.i154, i8* %arrayidx6.i156, align 1
  %74 = load i32, i32* %i.i149, align 4
  %inc.i158 = add nsw i32 %74, 1
  store i32 %inc.i158, i32* %i.i149, align 4
  br label %for.cond.i151

vmult.exit159:                                    ; preds = %for.cond.i151
  br label %for.inc35

for.inc35:                                        ; preds = %vmult.exit159
  %75 = load i32, i32* %i23, align 4
  %inc36 = add nsw i32 %75, 1
  store i32 %inc36, i32* %i23, align 4
  br label %for.cond24

for.end37:                                        ; preds = %for.cond24
  %76 = load i8*, i8** %a.addr, align 8
  %77 = load i8*, i8** %b.addr, align 8
  %arrayidx38 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 0
  %arraydecay39 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx38, i64 0, i64 0
  store i8* %76, i8** %a.addr.i160, align 8
  store i32 0, i32* %ra.addr.i161, align 4
  store i8* %77, i8** %b.addr.i162, align 8
  store i32 0, i32* %rb.addr.i163, align 4
  store i8* %arraydecay39, i8** %c.addr.i164, align 8
  store i32 0, i32* %i.i165, align 4
  br label %for.cond.i167

for.cond.i167:                                    ; preds = %for.body.i173, %for.end37
  %78 = load i32, i32* %i.i165, align 4
  %cmp.i166 = icmp sle i32 %78, 0
  br i1 %cmp.i166, label %for.body.i173, label %vmult.exit175

for.body.i173:                                    ; preds = %for.cond.i167
  %79 = load i8*, i8** %a.addr.i160, align 8
  %80 = load i32, i32* %i.i165, align 4
  %81 = load i32, i32* %ra.addr.i161, align 4
  %add.i168 = add nsw i32 %80, %81
  %82 = load i8, i8* %79, align 1
  %83 = load i8*, i8** %b.addr.i162, align 8
  %84 = load i32, i32* %i.i165, align 4
  %85 = load i32, i32* %rb.addr.i163, align 4
  %add1.i169 = add nsw i32 %84, %85
  %86 = load i8, i8* %83, align 1
  %call.i170 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %86) #2
  %87 = load i8*, i8** %c.addr.i164, align 8
  %88 = load i32, i32* %i.i165, align 4
  %idxprom5.i171 = sext i32 %88 to i64
  %arrayidx6.i172 = getelementptr inbounds i8, i8* %87, i64 %idxprom5.i171
  store i8 %call.i170, i8* %arrayidx6.i172, align 1
  %89 = load i32, i32* %i.i165, align 4
  %inc.i174 = add nsw i32 %89, 1
  store i32 %inc.i174, i32* %i.i165, align 4
  br label %for.cond.i167

vmult.exit175:                                    ; preds = %for.cond.i167
  %90 = load i8*, i8** %a.addr, align 8
  %91 = load i8*, i8** %b.addr, align 8
  %arrayidx40 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1
  %arraydecay41 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx40, i64 0, i64 0
  store i8* %90, i8** %a.addr.i176, align 8
  store i32 0, i32* %ra.addr.i177, align 4
  store i8* %91, i8** %b.addr.i178, align 8
  store i32 0, i32* %rb.addr.i179, align 4
  store i8* %arraydecay41, i8** %c.addr.i180, align 8
  store i32 0, i32* %i.i181, align 4
  br label %for.cond.i183

for.cond.i183:                                    ; preds = %for.body.i189, %vmult.exit175
  %92 = load i32, i32* %i.i181, align 4
  %cmp.i182 = icmp sle i32 %92, 0
  br i1 %cmp.i182, label %for.body.i189, label %vmult.exit191

for.body.i189:                                    ; preds = %for.cond.i183
  %93 = load i8*, i8** %a.addr.i176, align 8
  %94 = load i32, i32* %i.i181, align 4
  %95 = load i32, i32* %ra.addr.i177, align 4
  %add.i184 = add nsw i32 %94, %95
  %96 = load i8, i8* %93, align 1
  %97 = load i8*, i8** %b.addr.i178, align 8
  %98 = load i32, i32* %i.i181, align 4
  %99 = load i32, i32* %rb.addr.i179, align 4
  %add1.i185 = add nsw i32 %98, %99
  %100 = load i8, i8* %97, align 1
  %call.i186 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i180, align 8
  %102 = load i32, i32* %i.i181, align 4
  %idxprom5.i187 = sext i32 %102 to i64
  %arrayidx6.i188 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i187
  store i8 %call.i186, i8* %arrayidx6.i188, align 1
  %103 = load i32, i32* %i.i181, align 4
  %inc.i190 = add nsw i32 %103, 1
  store i32 %inc.i190, i32* %i.i181, align 4
  br label %for.cond.i183

vmult.exit191:                                    ; preds = %for.cond.i183
  %arrayidx42 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1
  %arraydecay43 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx42, i64 0, i64 0
  %arrayidx44 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 1
  %arraydecay45 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx44, i64 0, i64 0
  %arrayidx46 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 1
  %arraydecay47 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx46, i64 0, i64 0
  store i8* %arraydecay43, i8** %a.addr.i192, align 8
  store i32 0, i32* %ra.addr.i193, align 4
  store i8* %arraydecay45, i8** %b.addr.i194, align 8
  store i32 0, i32* %rb.addr.i195, align 4
  store i8* %arraydecay47, i8** %c.addr.i196, align 8
  store i32 0, i32* %i.i197, align 4
  br label %for.cond.i199

for.cond.i199:                                    ; preds = %for.body.i202, %vmult.exit191
  %104 = load i32, i32* %i.i197, align 4
  %cmp.i198 = icmp sle i32 %104, 0
  br i1 %cmp.i198, label %for.body.i202, label %vadd.exit

for.body.i202:                                    ; preds = %for.cond.i199
  %105 = load i8*, i8** %a.addr.i192, align 8
  %106 = load i32, i32* %i.i197, align 4
  %107 = load i32, i32* %ra.addr.i193, align 4
  %add.i200 = add nsw i32 %106, %107
  %108 = load i8, i8* %105, align 1
  %conv.i = zext i8 %108 to i32
  %109 = load i8*, i8** %b.addr.i194, align 8
  %110 = load i32, i32* %i.i197, align 4
  %111 = load i32, i32* %rb.addr.i195, align 4
  %add1.i201 = add nsw i32 %110, %111
  %112 = load i8, i8* %109, align 1
  %conv5.i = zext i8 %112 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %113 = load i8*, i8** %c.addr.i196, align 8
  %114 = load i32, i32* %i.i197, align 4
  %idxprom7.i = sext i32 %114 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %113, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %115 = load i32, i32* %i.i197, align 4
  %inc.i203 = add nsw i32 %115, 1
  store i32 %inc.i203, i32* %i.i197, align 4
  br label %for.cond.i199

vadd.exit:                                        ; preds = %for.cond.i199
  store i32 1, i32* %i48, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc95, %vadd.exit
  %116 = load i32, i32* %i48, align 4
  %cmp50 = icmp sle i32 %116, 1
  br i1 %cmp50, label %for.body52, label %for.end97

for.body52:                                       ; preds = %for.cond49
  %117 = load i32, i32* %i48, align 4
  %mul53 = mul nsw i32 3, %117
  %sub = sub nsw i32 %mul53, 2
  %idxprom54 = sext i32 %sub to i64
  %arrayidx55 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 %idxprom54
  %arraydecay56 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx55, i64 0, i64 0
  %118 = load i32, i32* %i48, align 4
  %mul57 = mul nsw i32 2, %118
  %idxprom58 = sext i32 %mul57 to i64
  %arrayidx59 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 %idxprom58
  %arraydecay60 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx59, i64 0, i64 0
  %119 = load i32, i32* %i48, align 4
  %mul61 = mul nsw i32 3, %119
  %sub62 = sub nsw i32 %mul61, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 %idxprom63
  %arraydecay65 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx64, i64 0, i64 0
  store i8* %arraydecay56, i8** %a.addr.i221, align 8
  store i32 0, i32* %ra.addr.i222, align 4
  store i8* %arraydecay60, i8** %b.addr.i223, align 8
  store i32 0, i32* %rb.addr.i224, align 4
  store i8* %arraydecay65, i8** %c.addr.i225, align 8
  store i32 0, i32* %i.i226, align 4
  br label %for.cond.i228

for.cond.i228:                                    ; preds = %for.body.i237, %for.body52
  %120 = load i32, i32* %i.i226, align 4
  %cmp.i227 = icmp sle i32 %120, 0
  br i1 %cmp.i227, label %for.body.i237, label %vadd.exit239

for.body.i237:                                    ; preds = %for.cond.i228
  %121 = load i8*, i8** %a.addr.i221, align 8
  %122 = load i32, i32* %i.i226, align 4
  %123 = load i32, i32* %ra.addr.i222, align 4
  %add.i229 = add nsw i32 %122, %123
  %124 = load i8, i8* %121, align 1
  %conv.i230 = zext i8 %124 to i32
  %125 = load i8*, i8** %b.addr.i223, align 8
  %126 = load i32, i32* %i.i226, align 4
  %127 = load i32, i32* %rb.addr.i224, align 4
  %add1.i231 = add nsw i32 %126, %127
  %128 = load i8, i8* %125, align 1
  %conv5.i232 = zext i8 %128 to i32
  %xor.i233 = xor i32 %conv.i230, %conv5.i232
  %conv6.i234 = trunc i32 %xor.i233 to i8
  %129 = load i8*, i8** %c.addr.i225, align 8
  %130 = load i32, i32* %i.i226, align 4
  %idxprom7.i235 = sext i32 %130 to i64
  %arrayidx8.i236 = getelementptr inbounds i8, i8* %129, i64 %idxprom7.i235
  store i8 %conv6.i234, i8* %arrayidx8.i236, align 1
  %131 = load i32, i32* %i.i226, align 4
  %inc.i238 = add nsw i32 %131, 1
  store i32 %inc.i238, i32* %i.i226, align 4
  br label %for.cond.i228

vadd.exit239:                                     ; preds = %for.cond.i228
  %132 = load i32, i32* %i48, align 4
  %mul66 = mul nsw i32 3, %132
  %sub67 = sub nsw i32 %mul66, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 %idxprom68
  %arraydecay70 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx69, i64 0, i64 0
  %133 = load i32, i32* %i48, align 4
  %mul71 = mul nsw i32 2, %133
  %add72 = add nsw i32 %mul71, 1
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 %idxprom73
  %arraydecay75 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx74, i64 0, i64 0
  %134 = load i32, i32* %i48, align 4
  %mul76 = mul nsw i32 3, %134
  %idxprom77 = sext i32 %mul76 to i64
  %arrayidx78 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 %idxprom77
  %arraydecay79 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx78, i64 0, i64 0
  store i8* %arraydecay70, i8** %a.addr.i300, align 8
  store i32 0, i32* %ra.addr.i301, align 4
  store i8* %arraydecay75, i8** %b.addr.i302, align 8
  store i32 0, i32* %rb.addr.i303, align 4
  store i8* %arraydecay79, i8** %c.addr.i304, align 8
  store i32 0, i32* %i.i305, align 4
  br label %for.cond.i307

for.cond.i307:                                    ; preds = %for.body.i316, %vadd.exit239
  %135 = load i32, i32* %i.i305, align 4
  %cmp.i306 = icmp sle i32 %135, 0
  br i1 %cmp.i306, label %for.body.i316, label %vadd.exit318

for.body.i316:                                    ; preds = %for.cond.i307
  %136 = load i8*, i8** %a.addr.i300, align 8
  %137 = load i32, i32* %i.i305, align 4
  %138 = load i32, i32* %ra.addr.i301, align 4
  %add.i308 = add nsw i32 %137, %138
  %139 = load i8, i8* %136, align 1
  %conv.i309 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i302, align 8
  %141 = load i32, i32* %i.i305, align 4
  %142 = load i32, i32* %rb.addr.i303, align 4
  %add1.i310 = add nsw i32 %141, %142
  %143 = load i8, i8* %140, align 1
  %conv5.i311 = zext i8 %143 to i32
  %xor.i312 = xor i32 %conv.i309, %conv5.i311
  %conv6.i313 = trunc i32 %xor.i312 to i8
  %144 = load i8*, i8** %c.addr.i304, align 8
  %145 = load i32, i32* %i.i305, align 4
  %idxprom7.i314 = sext i32 %145 to i64
  %arrayidx8.i315 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i314
  store i8 %conv6.i313, i8* %arrayidx8.i315, align 1
  %146 = load i32, i32* %i.i305, align 4
  %inc.i317 = add nsw i32 %146, 1
  store i32 %inc.i317, i32* %i.i305, align 4
  br label %for.cond.i307

vadd.exit318:                                     ; preds = %for.cond.i307
  %147 = load i32, i32* %i48, align 4
  %mul80 = mul nsw i32 3, %147
  %idxprom81 = sext i32 %mul80 to i64
  %arrayidx82 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 %idxprom81
  %arraydecay83 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx82, i64 0, i64 0
  %148 = load i32, i32* %i48, align 4
  %add84 = add nsw i32 %148, 1
  %conv85 = sitofp i32 %add84 to double
  %div = fdiv double %conv85, 2.000000e+00
  store double %div, double* %x.addr.i, align 8
  %149 = load double, double* %x.addr.i, align 8
  %conv.i297 = fptosi double %149 to i32
  store i32 %conv.i297, i32* %y.i, align 4
  %150 = load double, double* %x.addr.i, align 8
  %151 = load i32, i32* %y.i, align 4
  %conv1.i = sitofp i32 %151 to double
  %cmp.i298 = fcmp oeq double %150, %conv1.i
  br i1 %cmp.i298, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %vadd.exit318
  %152 = load i32, i32* %y.i, align 4
  store i32 %152, i32* %retval.i, align 4
  br label %ceil_.exit

if.end.i:                                         ; preds = %vadd.exit318
  %153 = load i32, i32* %y.i, align 4
  %add.i299 = add nsw i32 %153, 1
  store i32 %add.i299, i32* %retval.i, align 4
  br label %ceil_.exit

ceil_.exit:                                       ; preds = %if.then.i, %if.end.i
  %154 = load i32, i32* %retval.i, align 4
  %idxprom87 = sext i32 %154 to i64
  %arrayidx88 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom87
  %arraydecay89 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx88, i64 0, i64 0
  %155 = load i32, i32* %i48, align 4
  %rem = srem i32 %155, 2
  %156 = load i32, i32* %i48, align 4
  %mul90 = mul nsw i32 3, %156
  %add91 = add nsw i32 %mul90, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 %idxprom92
  %arraydecay94 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx93, i64 0, i64 0
  store i8* %arraydecay83, i8** %a.addr.i278, align 8
  store i32 0, i32* %ra.addr.i279, align 4
  store i8* %arraydecay89, i8** %b.addr.i280, align 8
  store i32 %rem, i32* %rb.addr.i281, align 4
  store i8* %arraydecay94, i8** %c.addr.i282, align 8
  store i32 0, i32* %i.i283, align 4
  br label %for.cond.i285

for.cond.i285:                                    ; preds = %for.body.i294, %ceil_.exit
  %157 = load i32, i32* %i.i283, align 4
  %cmp.i284 = icmp sle i32 %157, 0
  br i1 %cmp.i284, label %for.body.i294, label %vadd.exit296

for.body.i294:                                    ; preds = %for.cond.i285
  %158 = load i8*, i8** %a.addr.i278, align 8
  %159 = load i32, i32* %i.i283, align 4
  %160 = load i32, i32* %ra.addr.i279, align 4
  %add.i286 = add nsw i32 %159, %160
  %161 = load i8, i8* %158, align 1
  %conv.i287 = zext i8 %161 to i32
  %162 = load i8*, i8** %b.addr.i280, align 8
  %163 = load i32, i32* %i.i283, align 4
  %164 = load i32, i32* %rb.addr.i281, align 4
  %add1.i288 = add nsw i32 %163, %164
  %165 = load i8, i8* %162, align 1
  %conv5.i289 = zext i8 %165 to i32
  %xor.i290 = xor i32 %conv.i287, %conv5.i289
  %conv6.i291 = trunc i32 %xor.i290 to i8
  %166 = load i8*, i8** %c.addr.i282, align 8
  %167 = load i32, i32* %i.i283, align 4
  %idxprom7.i292 = sext i32 %167 to i64
  %arrayidx8.i293 = getelementptr inbounds i8, i8* %166, i64 %idxprom7.i292
  store i8 %conv6.i291, i8* %arrayidx8.i293, align 1
  %168 = load i32, i32* %i.i283, align 4
  %inc.i295 = add nsw i32 %168, 1
  store i32 %inc.i295, i32* %i.i283, align 4
  br label %for.cond.i285

vadd.exit296:                                     ; preds = %for.cond.i285
  br label %for.inc95

for.inc95:                                        ; preds = %vadd.exit296
  %169 = load i32, i32* %i48, align 4
  %inc96 = add nsw i32 %169, 1
  store i32 %inc96, i32* %i48, align 4
  br label %for.cond49

for.end97:                                        ; preds = %for.cond49
  %arrayidx98 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %dd, i64 0, i64 1
  %arraydecay99 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx98, i64 0, i64 0
  %arrayidx100 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 0
  %arraydecay101 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx100, i64 0, i64 0
  %170 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay99, i8** %a.addr.i259, align 8
  store i32 0, i32* %ra.addr.i260, align 4
  store i8* %arraydecay101, i8** %b.addr.i261, align 8
  store i32 0, i32* %rb.addr.i262, align 4
  store i8* %170, i8** %c.addr.i263, align 8
  store i32 0, i32* %i.i264, align 4
  br label %for.cond.i266

for.cond.i266:                                    ; preds = %for.body.i275, %for.end97
  %171 = load i32, i32* %i.i264, align 4
  %cmp.i265 = icmp sle i32 %171, 0
  br i1 %cmp.i265, label %for.body.i275, label %vadd.exit277

for.body.i275:                                    ; preds = %for.cond.i266
  %172 = load i8*, i8** %a.addr.i259, align 8
  %173 = load i32, i32* %i.i264, align 4
  %174 = load i32, i32* %ra.addr.i260, align 4
  %add.i267 = add nsw i32 %173, %174
  %175 = load i8, i8* %172, align 1
  %conv.i268 = zext i8 %175 to i32
  %176 = load i8*, i8** %b.addr.i261, align 8
  %177 = load i32, i32* %i.i264, align 4
  %178 = load i32, i32* %rb.addr.i262, align 4
  %add1.i269 = add nsw i32 %177, %178
  %179 = load i8, i8* %176, align 1
  %conv5.i270 = zext i8 %179 to i32
  %xor.i271 = xor i32 %conv.i268, %conv5.i270
  %conv6.i272 = trunc i32 %xor.i271 to i8
  %180 = load i8*, i8** %c.addr.i263, align 8
  %181 = load i32, i32* %i.i264, align 4
  %idxprom7.i273 = sext i32 %181 to i64
  %arrayidx8.i274 = getelementptr inbounds i8, i8* %180, i64 %idxprom7.i273
  store i8 %conv6.i272, i8* %arrayidx8.i274, align 1
  %182 = load i32, i32* %i.i264, align 4
  %inc.i276 = add nsw i32 %182, 1
  store i32 %inc.i276, i32* %i.i264, align 4
  br label %for.cond.i266

vadd.exit277:                                     ; preds = %for.cond.i266
  %arrayidx102 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %cc, i64 0, i64 1
  %arraydecay103 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx102, i64 0, i64 0
  %183 = load i8*, i8** %c.addr, align 8
  %184 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay103, i8** %a.addr.i240, align 8
  store i32 0, i32* %ra.addr.i241, align 4
  store i8* %183, i8** %b.addr.i242, align 8
  store i32 0, i32* %rb.addr.i243, align 4
  store i8* %184, i8** %c.addr.i244, align 8
  store i32 0, i32* %i.i245, align 4
  br label %for.cond.i247

for.cond.i247:                                    ; preds = %for.body.i256, %vadd.exit277
  %185 = load i32, i32* %i.i245, align 4
  %cmp.i246 = icmp sle i32 %185, 0
  br i1 %cmp.i246, label %for.body.i256, label %vadd.exit258

for.body.i256:                                    ; preds = %for.cond.i247
  %186 = load i8*, i8** %a.addr.i240, align 8
  %187 = load i32, i32* %i.i245, align 4
  %188 = load i32, i32* %ra.addr.i241, align 4
  %add.i248 = add nsw i32 %187, %188
  %189 = load i8, i8* %186, align 1
  %conv.i249 = zext i8 %189 to i32
  %190 = load i8*, i8** %b.addr.i242, align 8
  %191 = load i32, i32* %i.i245, align 4
  %192 = load i32, i32* %rb.addr.i243, align 4
  %add1.i250 = add nsw i32 %191, %192
  %193 = load i8, i8* %190, align 1
  %conv5.i251 = zext i8 %193 to i32
  %xor.i252 = xor i32 %conv.i249, %conv5.i251
  %conv6.i253 = trunc i32 %xor.i252 to i8
  %194 = load i8*, i8** %c.addr.i244, align 8
  %195 = load i32, i32* %i.i245, align 4
  %idxprom7.i254 = sext i32 %195 to i64
  %arrayidx8.i255 = getelementptr inbounds i8, i8* %194, i64 %idxprom7.i254
  store i8 %conv6.i253, i8* %arrayidx8.i255, align 1
  %196 = load i32, i32* %i.i245, align 4
  %inc.i257 = add nsw i32 %196, 1
  store i32 %inc.i257, i32* %i.i245, align 4
  br label %for.cond.i247

vadd.exit258:                                     ; preds = %for.cond.i247
  %197 = load i8, i8* %A, align 1
  %198 = load i8, i8* %B, align 1
  %call104 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198)
  %conv105 = zext i8 %call104 to i32
  %199 = load i8*, i8** %c.addr, align 8
  store i8* %199, i8** %a.addr.i208, align 8
  %200 = load i8*, i8** %a.addr.i208, align 8
  store i8* %200, i8** %a.addr.i.i204, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i205, align 8
  store i32 0, i32* %i.i.i207, align 4
  br label %for.cond.i.i210

for.cond.i.i210:                                  ; preds = %for.body.i.i219, %vadd.exit258
  %201 = load i32, i32* %i.i.i207, align 4
  %cmp.i.i209 = icmp sle i32 %201, 0
  br i1 %cmp.i.i209, label %for.body.i.i219, label %xors.exit220

for.body.i.i219:                                  ; preds = %for.cond.i.i210
  %202 = load i8 (i8)*, i8 (i8)** %f.addr.i.i205, align 8
  %203 = load i8*, i8** %a.addr.i.i204, align 8
  %204 = load i32, i32* %i.i.i207, align 4
  %idxprom.i.i211 = sext i32 %204 to i64
  %arrayidx.i.i212 = getelementptr inbounds i8, i8* %203, i64 %idxprom.i.i211
  %205 = load i8, i8* %arrayidx.i.i212, align 1
  %call.i.i213 = call zeroext i8 %202(i8 zeroext %205) #2
  %conv.i.i214 = zext i8 %call.i.i213 to i32
  %206 = load i8, i8* %result.i.i206, align 1
  %conv1.i.i215 = zext i8 %206 to i32
  %xor.i.i216 = xor i32 %conv1.i.i215, %conv.i.i214
  %conv2.i.i217 = trunc i32 %xor.i.i216 to i8
  store i8 %conv2.i.i217, i8* %result.i.i206, align 1
  %207 = load i32, i32* %i.i.i207, align 4
  %inc.i.i218 = add nsw i32 %207, 1
  store i32 %inc.i.i218, i32* %i.i.i207, align 4
  br label %for.cond.i.i210

xors.exit220:                                     ; preds = %for.cond.i.i210
  %208 = load i8, i8* %result.i.i206, align 1
  %conv107 = zext i8 %208 to i32
  %cmp108 = icmp eq i32 %conv105, %conv107
  call void @assert(i1 zeroext %cmp108)
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
  %r = alloca [1 x i8], align 1
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %xors.exit
  %11 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %11, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call zeroext i8 (...) @rand()
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %r, i64 0, i64 %idxprom
  store i8 %call6, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %r, i64 0, i64 0
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
  %cmp.i = icmp sle i32 %16, 0
  br i1 %cmp.i, label %for.body.i, label %vadd.exit

for.body.i:                                       ; preds = %for.cond.i
  %17 = load i8*, i8** %a.addr.i13, align 8
  %18 = load i32, i32* %i.i, align 4
  %19 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %18, %19
  %20 = load i8, i8* %17, align 1
  %conv.i = zext i8 %20 to i32
  %21 = load i8*, i8** %b.addr.i, align 8
  %22 = load i32, i32* %i.i, align 4
  %23 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %22, %23
  %24 = load i8, i8* %21, align 1
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
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %r, i64 0, i64 0
  %28 = load i8*, i8** %x.addr, align 8
  %29 = load i8*, i8** %x.addr, align 8
  store i8* %arraydecay7, i8** %a.addr.i31, align 8
  store i32 1, i32* %ra.addr.i32, align 4
  store i8* %28, i8** %b.addr.i33, align 8
  store i32 0, i32* %rb.addr.i34, align 4
  store i8* %29, i8** %c.addr.i35, align 8
  store i32 0, i32* %i.i36, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %for.body.i47, %vadd.exit
  %30 = load i32, i32* %i.i36, align 4
  %cmp.i37 = icmp sle i32 %30, 0
  br i1 %cmp.i37, label %for.body.i47, label %vadd.exit49

for.body.i47:                                     ; preds = %for.cond.i38
  %31 = load i8*, i8** %a.addr.i31, align 8
  %32 = load i32, i32* %i.i36, align 4
  %33 = load i32, i32* %ra.addr.i32, align 4
  %add.i39 = add nsw i32 %32, %33
  %34 = load i8, i8* %31, align 1
  %conv.i40 = zext i8 %34 to i32
  %35 = load i8*, i8** %b.addr.i33, align 8
  %36 = load i32, i32* %i.i36, align 4
  %37 = load i32, i32* %rb.addr.i34, align 4
  %add1.i41 = add nsw i32 %36, %37
  %38 = load i8, i8* %35, align 1
  %conv5.i42 = zext i8 %38 to i32
  %xor.i43 = xor i32 %conv.i40, %conv5.i42
  %conv6.i44 = trunc i32 %xor.i43 to i8
  %39 = load i8*, i8** %c.addr.i35, align 8
  %40 = load i32, i32* %i.i36, align 4
  %idxprom7.i45 = sext i32 %40 to i64
  %arrayidx8.i46 = getelementptr inbounds i8, i8* %39, i64 %idxprom7.i45
  store i8 %conv6.i44, i8* %arrayidx8.i46, align 1
  %41 = load i32, i32* %i.i36, align 4
  %inc.i48 = add nsw i32 %41, 1
  store i32 %inc.i48, i32* %i.i36, align 4
  br label %for.cond.i38

vadd.exit49:                                      ; preds = %for.cond.i38
  %42 = load i8, i8* %X, align 1
  %conv8 = zext i8 %42 to i32
  %43 = load i8*, i8** %x.addr, align 8
  store i8* %43, i8** %a.addr.i18, align 8
  %44 = load i8*, i8** %a.addr.i18, align 8
  store i8* %44, i8** %a.addr.i.i14, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i15, align 8
  store i32 0, i32* %i.i.i17, align 4
  br label %for.cond.i.i20

for.cond.i.i20:                                   ; preds = %for.body.i.i29, %vadd.exit49
  %45 = load i32, i32* %i.i.i17, align 4
  %cmp.i.i19 = icmp sle i32 %45, 0
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
