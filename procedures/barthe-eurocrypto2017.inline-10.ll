; ModuleID = '../examples/barthe-eurocrypto2017.c'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
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
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca double, align 8
  %y.i = alloca i32, align 4
  %a.addr.i257 = alloca i8*, align 8
  %ra.addr.i258 = alloca i32, align 4
  %b.addr.i259 = alloca i8*, align 8
  %rb.addr.i260 = alloca i32, align 4
  %c.addr.i261 = alloca i8*, align 8
  %i.i262 = alloca i32, align 4
  %a.addr.i232 = alloca i8*, align 8
  %ra.addr.i233 = alloca i32, align 4
  %b.addr.i234 = alloca i8*, align 8
  %rb.addr.i235 = alloca i32, align 4
  %c.addr.i236 = alloca i8*, align 8
  %i.i237 = alloca i32, align 4
  %from.addr.i = alloca i8*, align 8
  %to.addr.i = alloca i8*, align 8
  %f.addr.i = alloca i8 (i8)*, align 8
  %i.i224 = alloca i32, align 4
  %a.addr.i199 = alloca i8*, align 8
  %ra.addr.i200 = alloca i32, align 4
  %b.addr.i201 = alloca i8*, align 8
  %rb.addr.i202 = alloca i32, align 4
  %c.addr.i203 = alloca i8*, align 8
  %i.i204 = alloca i32, align 4
  %a.addr.i.i182 = alloca i8*, align 8
  %f.addr.i.i183 = alloca i8 (i8)*, align 8
  %result.i.i184 = alloca i8, align 1
  %i.i.i185 = alloca i32, align 4
  %a.addr.i186 = alloca i8*, align 8
  %a.addr.i164 = alloca i8*, align 8
  %ra.addr.i165 = alloca i32, align 4
  %b.addr.i166 = alloca i8*, align 8
  %rb.addr.i167 = alloca i32, align 4
  %c.addr.i168 = alloca i8*, align 8
  %i.i169 = alloca i32, align 4
  %a.addr.i142 = alloca i8*, align 8
  %ra.addr.i143 = alloca i32, align 4
  %b.addr.i144 = alloca i8*, align 8
  %rb.addr.i145 = alloca i32, align 4
  %c.addr.i146 = alloca i8*, align 8
  %i.i147 = alloca i32, align 4
  %a.addr.i120 = alloca i8*, align 8
  %ra.addr.i121 = alloca i32, align 4
  %b.addr.i122 = alloca i8*, align 8
  %rb.addr.i123 = alloca i32, align 4
  %c.addr.i124 = alloca i8*, align 8
  %i.i125 = alloca i32, align 4
  %a.addr.i119 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i102 = alloca i8*, align 8
  %f.addr.i.i103 = alloca i8 (i8)*, align 8
  %result.i.i104 = alloca i8, align 1
  %i.i.i105 = alloca i32, align 4
  %a.addr.i106 = alloca i8*, align 8
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
  %cc = alloca [22 x [11 x i8]], align 16
  %dd = alloca [22 x [11 x i8]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i23 = alloca i32, align 4
  %i44 = alloca i32, align 4
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
  store i8* %12, i8** %a.addr.i106, align 8
  %13 = load i8*, i8** %a.addr.i106, align 8
  store i8* %13, i8** %a.addr.i.i102, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i103, align 8
  store i32 0, i32* %i.i.i105, align 4
  br label %for.cond.i.i108

for.cond.i.i108:                                  ; preds = %for.body.i.i117, %xors.exit
  %14 = load i32, i32* %i.i.i105, align 4
  %cmp.i.i107 = icmp sle i32 %14, 10
  br i1 %cmp.i.i107, label %for.body.i.i117, label %xors.exit118

for.body.i.i117:                                  ; preds = %for.cond.i.i108
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i103, align 8
  %16 = load i8*, i8** %a.addr.i.i102, align 8
  %17 = load i32, i32* %i.i.i105, align 4
  %idxprom.i.i109 = sext i32 %17 to i64
  %arrayidx.i.i110 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i109
  %18 = load i8, i8* %arrayidx.i.i110, align 1
  %call.i.i111 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i112 = zext i8 %call.i.i111 to i32
  %19 = load i8, i8* %result.i.i104, align 1
  %conv1.i.i113 = zext i8 %19 to i32
  %xor.i.i114 = xor i32 %conv1.i.i113, %conv.i.i112
  %conv2.i.i115 = trunc i32 %xor.i.i114 to i8
  store i8 %conv2.i.i115, i8* %result.i.i104, align 1
  %20 = load i32, i32* %i.i.i105, align 4
  %inc.i.i116 = add nsw i32 %20, 1
  store i32 %inc.i.i116, i32* %i.i.i105, align 4
  br label %for.cond.i.i108

xors.exit118:                                     ; preds = %for.cond.i.i108
  %21 = load i8, i8* %result.i.i104, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 11, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit118
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
  %arrayidx22 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 1
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx22, i64 0, i64 0
  store i8* %28, i8** %a.addr.i119, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %arraydecay, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %30 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %30, 10
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %31 = load i8*, i8** %a.addr.i119, align 8
  %32 = load i32, i32* %i.i, align 4
  %33 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %32, %33
  %rem.i = srem i32 %add.i, 11
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %31, i64 %idxprom.i
  %34 = load i8, i8* %arrayidx.i, align 1
  %35 = load i8*, i8** %b.addr.i, align 8
  %36 = load i32, i32* %i.i, align 4
  %37 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %36, %37
  %rem2.i = srem i32 %add1.i, 11
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
  %cmp25 = icmp sle i32 %42, 5
  br i1 %cmp25, label %for.body27, label %for.end37

for.body27:                                       ; preds = %for.cond24
  %43 = load i8*, i8** %a.addr, align 8
  %44 = load i8*, i8** %b.addr, align 8
  %45 = load i32, i32* %i23, align 4
  %46 = load i32, i32* %i23, align 4
  %mul = mul nsw i32 2, %46
  %idxprom28 = sext i32 %mul to i64
  %arrayidx29 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx29, i64 0, i64 0
  store i8* %43, i8** %a.addr.i120, align 8
  store i32 0, i32* %ra.addr.i121, align 4
  store i8* %44, i8** %b.addr.i122, align 8
  store i32 %45, i32* %rb.addr.i123, align 4
  store i8* %arraydecay30, i8** %c.addr.i124, align 8
  store i32 0, i32* %i.i125, align 4
  br label %for.cond.i127

for.cond.i127:                                    ; preds = %for.body.i139, %for.body27
  %47 = load i32, i32* %i.i125, align 4
  %cmp.i126 = icmp sle i32 %47, 10
  br i1 %cmp.i126, label %for.body.i139, label %vmult.exit141

for.body.i139:                                    ; preds = %for.cond.i127
  %48 = load i8*, i8** %a.addr.i120, align 8
  %49 = load i32, i32* %i.i125, align 4
  %50 = load i32, i32* %ra.addr.i121, align 4
  %add.i128 = add nsw i32 %49, %50
  %rem.i129 = srem i32 %add.i128, 11
  %idxprom.i130 = sext i32 %rem.i129 to i64
  %arrayidx.i131 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i130
  %51 = load i8, i8* %arrayidx.i131, align 1
  %52 = load i8*, i8** %b.addr.i122, align 8
  %53 = load i32, i32* %i.i125, align 4
  %54 = load i32, i32* %rb.addr.i123, align 4
  %add1.i132 = add nsw i32 %53, %54
  %rem2.i133 = srem i32 %add1.i132, 11
  %idxprom3.i134 = sext i32 %rem2.i133 to i64
  %arrayidx4.i135 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i134
  %55 = load i8, i8* %arrayidx4.i135, align 1
  %call.i136 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i124, align 8
  %57 = load i32, i32* %i.i125, align 4
  %idxprom5.i137 = sext i32 %57 to i64
  %arrayidx6.i138 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i137
  store i8 %call.i136, i8* %arrayidx6.i138, align 1
  %58 = load i32, i32* %i.i125, align 4
  %inc.i140 = add nsw i32 %58, 1
  store i32 %inc.i140, i32* %i.i125, align 4
  br label %for.cond.i127

vmult.exit141:                                    ; preds = %for.cond.i127
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i23, align 4
  %61 = load i8*, i8** %b.addr, align 8
  %62 = load i32, i32* %i23, align 4
  %mul31 = mul nsw i32 2, %62
  %add = add nsw i32 %mul31, 1
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx33, i64 0, i64 0
  store i8* %59, i8** %a.addr.i142, align 8
  store i32 %60, i32* %ra.addr.i143, align 4
  store i8* %61, i8** %b.addr.i144, align 8
  store i32 0, i32* %rb.addr.i145, align 4
  store i8* %arraydecay34, i8** %c.addr.i146, align 8
  store i32 0, i32* %i.i147, align 4
  br label %for.cond.i149

for.cond.i149:                                    ; preds = %for.body.i161, %vmult.exit141
  %63 = load i32, i32* %i.i147, align 4
  %cmp.i148 = icmp sle i32 %63, 10
  br i1 %cmp.i148, label %for.body.i161, label %vmult.exit163

for.body.i161:                                    ; preds = %for.cond.i149
  %64 = load i8*, i8** %a.addr.i142, align 8
  %65 = load i32, i32* %i.i147, align 4
  %66 = load i32, i32* %ra.addr.i143, align 4
  %add.i150 = add nsw i32 %65, %66
  %rem.i151 = srem i32 %add.i150, 11
  %idxprom.i152 = sext i32 %rem.i151 to i64
  %arrayidx.i153 = getelementptr inbounds i8, i8* %64, i64 %idxprom.i152
  %67 = load i8, i8* %arrayidx.i153, align 1
  %68 = load i8*, i8** %b.addr.i144, align 8
  %69 = load i32, i32* %i.i147, align 4
  %70 = load i32, i32* %rb.addr.i145, align 4
  %add1.i154 = add nsw i32 %69, %70
  %rem2.i155 = srem i32 %add1.i154, 11
  %idxprom3.i156 = sext i32 %rem2.i155 to i64
  %arrayidx4.i157 = getelementptr inbounds i8, i8* %68, i64 %idxprom3.i156
  %71 = load i8, i8* %arrayidx4.i157, align 1
  %call.i158 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %71) #2
  %72 = load i8*, i8** %c.addr.i146, align 8
  %73 = load i32, i32* %i.i147, align 4
  %idxprom5.i159 = sext i32 %73 to i64
  %arrayidx6.i160 = getelementptr inbounds i8, i8* %72, i64 %idxprom5.i159
  store i8 %call.i158, i8* %arrayidx6.i160, align 1
  %74 = load i32, i32* %i.i147, align 4
  %inc.i162 = add nsw i32 %74, 1
  store i32 %inc.i162, i32* %i.i147, align 4
  br label %for.cond.i149

vmult.exit163:                                    ; preds = %for.cond.i149
  br label %for.inc35

for.inc35:                                        ; preds = %vmult.exit163
  %75 = load i32, i32* %i23, align 4
  %inc36 = add nsw i32 %75, 1
  store i32 %inc36, i32* %i23, align 4
  br label %for.cond24

for.end37:                                        ; preds = %for.cond24
  %arrayidx38 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 1
  %arraydecay39 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx38, i64 0, i64 0
  %arrayidx40 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1
  %arraydecay41 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx40, i64 0, i64 0
  %arrayidx42 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 1
  %arraydecay43 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx42, i64 0, i64 0
  store i8* %arraydecay39, i8** %a.addr.i164, align 8
  store i32 0, i32* %ra.addr.i165, align 4
  store i8* %arraydecay41, i8** %b.addr.i166, align 8
  store i32 0, i32* %rb.addr.i167, align 4
  store i8* %arraydecay43, i8** %c.addr.i168, align 8
  store i32 0, i32* %i.i169, align 4
  br label %for.cond.i171

for.cond.i171:                                    ; preds = %for.body.i180, %for.end37
  %76 = load i32, i32* %i.i169, align 4
  %cmp.i170 = icmp sle i32 %76, 10
  br i1 %cmp.i170, label %for.body.i180, label %vadd.exit

for.body.i180:                                    ; preds = %for.cond.i171
  %77 = load i8*, i8** %a.addr.i164, align 8
  %78 = load i32, i32* %i.i169, align 4
  %79 = load i32, i32* %ra.addr.i165, align 4
  %add.i172 = add nsw i32 %78, %79
  %rem.i173 = srem i32 %add.i172, 11
  %idxprom.i174 = sext i32 %rem.i173 to i64
  %arrayidx.i175 = getelementptr inbounds i8, i8* %77, i64 %idxprom.i174
  %80 = load i8, i8* %arrayidx.i175, align 1
  %conv.i = zext i8 %80 to i32
  %81 = load i8*, i8** %b.addr.i166, align 8
  %82 = load i32, i32* %i.i169, align 4
  %83 = load i32, i32* %rb.addr.i167, align 4
  %add1.i176 = add nsw i32 %82, %83
  %rem2.i177 = srem i32 %add1.i176, 11
  %idxprom3.i178 = sext i32 %rem2.i177 to i64
  %arrayidx4.i179 = getelementptr inbounds i8, i8* %81, i64 %idxprom3.i178
  %84 = load i8, i8* %arrayidx4.i179, align 1
  %conv5.i = zext i8 %84 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %85 = load i8*, i8** %c.addr.i168, align 8
  %86 = load i32, i32* %i.i169, align 4
  %idxprom7.i = sext i32 %86 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %85, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %87 = load i32, i32* %i.i169, align 4
  %inc.i181 = add nsw i32 %87, 1
  store i32 %inc.i181, i32* %i.i169, align 4
  br label %for.cond.i171

vadd.exit:                                        ; preds = %for.cond.i171
  store i32 1, i32* %i44, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc91, %vadd.exit
  %88 = load i32, i32* %i44, align 4
  %cmp46 = icmp sle i32 %88, 5
  br i1 %cmp46, label %for.body48, label %for.end93

for.body48:                                       ; preds = %for.cond45
  %89 = load i32, i32* %i44, align 4
  %mul49 = mul nsw i32 3, %89
  %sub = sub nsw i32 %mul49, 2
  %idxprom50 = sext i32 %sub to i64
  %arrayidx51 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx51, i64 0, i64 0
  %90 = load i32, i32* %i44, align 4
  %mul53 = mul nsw i32 2, %90
  %idxprom54 = sext i32 %mul53 to i64
  %arrayidx55 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 %idxprom54
  %arraydecay56 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx55, i64 0, i64 0
  %91 = load i32, i32* %i44, align 4
  %mul57 = mul nsw i32 3, %91
  %sub58 = sub nsw i32 %mul57, 1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 %idxprom59
  %arraydecay61 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx60, i64 0, i64 0
  store i8* %arraydecay52, i8** %a.addr.i199, align 8
  store i32 0, i32* %ra.addr.i200, align 4
  store i8* %arraydecay56, i8** %b.addr.i201, align 8
  store i32 0, i32* %rb.addr.i202, align 4
  store i8* %arraydecay61, i8** %c.addr.i203, align 8
  store i32 0, i32* %i.i204, align 4
  br label %for.cond.i206

for.cond.i206:                                    ; preds = %for.body.i221, %for.body48
  %92 = load i32, i32* %i.i204, align 4
  %cmp.i205 = icmp sle i32 %92, 10
  br i1 %cmp.i205, label %for.body.i221, label %vadd.exit223

for.body.i221:                                    ; preds = %for.cond.i206
  %93 = load i8*, i8** %a.addr.i199, align 8
  %94 = load i32, i32* %i.i204, align 4
  %95 = load i32, i32* %ra.addr.i200, align 4
  %add.i207 = add nsw i32 %94, %95
  %rem.i208 = srem i32 %add.i207, 11
  %idxprom.i209 = sext i32 %rem.i208 to i64
  %arrayidx.i210 = getelementptr inbounds i8, i8* %93, i64 %idxprom.i209
  %96 = load i8, i8* %arrayidx.i210, align 1
  %conv.i211 = zext i8 %96 to i32
  %97 = load i8*, i8** %b.addr.i201, align 8
  %98 = load i32, i32* %i.i204, align 4
  %99 = load i32, i32* %rb.addr.i202, align 4
  %add1.i212 = add nsw i32 %98, %99
  %rem2.i213 = srem i32 %add1.i212, 11
  %idxprom3.i214 = sext i32 %rem2.i213 to i64
  %arrayidx4.i215 = getelementptr inbounds i8, i8* %97, i64 %idxprom3.i214
  %100 = load i8, i8* %arrayidx4.i215, align 1
  %conv5.i216 = zext i8 %100 to i32
  %xor.i217 = xor i32 %conv.i211, %conv5.i216
  %conv6.i218 = trunc i32 %xor.i217 to i8
  %101 = load i8*, i8** %c.addr.i203, align 8
  %102 = load i32, i32* %i.i204, align 4
  %idxprom7.i219 = sext i32 %102 to i64
  %arrayidx8.i220 = getelementptr inbounds i8, i8* %101, i64 %idxprom7.i219
  store i8 %conv6.i218, i8* %arrayidx8.i220, align 1
  %103 = load i32, i32* %i.i204, align 4
  %inc.i222 = add nsw i32 %103, 1
  store i32 %inc.i222, i32* %i.i204, align 4
  br label %for.cond.i206

vadd.exit223:                                     ; preds = %for.cond.i206
  %104 = load i32, i32* %i44, align 4
  %mul62 = mul nsw i32 3, %104
  %sub63 = sub nsw i32 %mul62, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 %idxprom64
  %arraydecay66 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx65, i64 0, i64 0
  %105 = load i32, i32* %i44, align 4
  %mul67 = mul nsw i32 2, %105
  %add68 = add nsw i32 %mul67, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %cc, i64 0, i64 %idxprom69
  %arraydecay71 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx70, i64 0, i64 0
  %106 = load i32, i32* %i44, align 4
  %mul72 = mul nsw i32 3, %106
  %idxprom73 = sext i32 %mul72 to i64
  %arrayidx74 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 %idxprom73
  %arraydecay75 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx74, i64 0, i64 0
  store i8* %arraydecay66, i8** %a.addr.i232, align 8
  store i32 0, i32* %ra.addr.i233, align 4
  store i8* %arraydecay71, i8** %b.addr.i234, align 8
  store i32 0, i32* %rb.addr.i235, align 4
  store i8* %arraydecay75, i8** %c.addr.i236, align 8
  store i32 0, i32* %i.i237, align 4
  br label %for.cond.i239

for.cond.i239:                                    ; preds = %for.body.i254, %vadd.exit223
  %107 = load i32, i32* %i.i237, align 4
  %cmp.i238 = icmp sle i32 %107, 10
  br i1 %cmp.i238, label %for.body.i254, label %vadd.exit256

for.body.i254:                                    ; preds = %for.cond.i239
  %108 = load i8*, i8** %a.addr.i232, align 8
  %109 = load i32, i32* %i.i237, align 4
  %110 = load i32, i32* %ra.addr.i233, align 4
  %add.i240 = add nsw i32 %109, %110
  %rem.i241 = srem i32 %add.i240, 11
  %idxprom.i242 = sext i32 %rem.i241 to i64
  %arrayidx.i243 = getelementptr inbounds i8, i8* %108, i64 %idxprom.i242
  %111 = load i8, i8* %arrayidx.i243, align 1
  %conv.i244 = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i234, align 8
  %113 = load i32, i32* %i.i237, align 4
  %114 = load i32, i32* %rb.addr.i235, align 4
  %add1.i245 = add nsw i32 %113, %114
  %rem2.i246 = srem i32 %add1.i245, 11
  %idxprom3.i247 = sext i32 %rem2.i246 to i64
  %arrayidx4.i248 = getelementptr inbounds i8, i8* %112, i64 %idxprom3.i247
  %115 = load i8, i8* %arrayidx4.i248, align 1
  %conv5.i249 = zext i8 %115 to i32
  %xor.i250 = xor i32 %conv.i244, %conv5.i249
  %conv6.i251 = trunc i32 %xor.i250 to i8
  %116 = load i8*, i8** %c.addr.i236, align 8
  %117 = load i32, i32* %i.i237, align 4
  %idxprom7.i252 = sext i32 %117 to i64
  %arrayidx8.i253 = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i252
  store i8 %conv6.i251, i8* %arrayidx8.i253, align 1
  %118 = load i32, i32* %i.i237, align 4
  %inc.i255 = add nsw i32 %118, 1
  store i32 %inc.i255, i32* %i.i237, align 4
  br label %for.cond.i239

vadd.exit256:                                     ; preds = %for.cond.i239
  %119 = load i32, i32* %i44, align 4
  %mul76 = mul nsw i32 3, %119
  %idxprom77 = sext i32 %mul76 to i64
  %arrayidx78 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 %idxprom77
  %arraydecay79 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx78, i64 0, i64 0
  %120 = load i32, i32* %i44, align 4
  %add80 = add nsw i32 %120, 1
  %conv81 = sitofp i32 %add80 to double
  %div = fdiv double %conv81, 2.000000e+00
  store double %div, double* %x.addr.i, align 8
  %121 = load double, double* %x.addr.i, align 8
  %conv.i282 = fptosi double %121 to i32
  store i32 %conv.i282, i32* %y.i, align 4
  %122 = load double, double* %x.addr.i, align 8
  %123 = load i32, i32* %y.i, align 4
  %conv1.i = sitofp i32 %123 to double
  %cmp.i283 = fcmp oeq double %122, %conv1.i
  br i1 %cmp.i283, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %vadd.exit256
  %124 = load i32, i32* %y.i, align 4
  store i32 %124, i32* %retval.i, align 4
  br label %ceil_.exit

if.end.i:                                         ; preds = %vadd.exit256
  %125 = load i32, i32* %y.i, align 4
  %add.i284 = add nsw i32 %125, 1
  store i32 %add.i284, i32* %retval.i, align 4
  br label %ceil_.exit

ceil_.exit:                                       ; preds = %if.then.i, %if.end.i
  %126 = load i32, i32* %retval.i, align 4
  %idxprom83 = sext i32 %126 to i64
  %arrayidx84 = getelementptr inbounds [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 %idxprom83
  %arraydecay85 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx84, i64 0, i64 0
  %127 = load i32, i32* %i44, align 4
  %rem = srem i32 %127, 2
  %128 = load i32, i32* %i44, align 4
  %mul86 = mul nsw i32 3, %128
  %add87 = add nsw i32 %mul86, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 %idxprom88
  %arraydecay90 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx89, i64 0, i64 0
  store i8* %arraydecay79, i8** %a.addr.i257, align 8
  store i32 0, i32* %ra.addr.i258, align 4
  store i8* %arraydecay85, i8** %b.addr.i259, align 8
  store i32 %rem, i32* %rb.addr.i260, align 4
  store i8* %arraydecay90, i8** %c.addr.i261, align 8
  store i32 0, i32* %i.i262, align 4
  br label %for.cond.i264

for.cond.i264:                                    ; preds = %for.body.i279, %ceil_.exit
  %129 = load i32, i32* %i.i262, align 4
  %cmp.i263 = icmp sle i32 %129, 10
  br i1 %cmp.i263, label %for.body.i279, label %vadd.exit281

for.body.i279:                                    ; preds = %for.cond.i264
  %130 = load i8*, i8** %a.addr.i257, align 8
  %131 = load i32, i32* %i.i262, align 4
  %132 = load i32, i32* %ra.addr.i258, align 4
  %add.i265 = add nsw i32 %131, %132
  %rem.i266 = srem i32 %add.i265, 11
  %idxprom.i267 = sext i32 %rem.i266 to i64
  %arrayidx.i268 = getelementptr inbounds i8, i8* %130, i64 %idxprom.i267
  %133 = load i8, i8* %arrayidx.i268, align 1
  %conv.i269 = zext i8 %133 to i32
  %134 = load i8*, i8** %b.addr.i259, align 8
  %135 = load i32, i32* %i.i262, align 4
  %136 = load i32, i32* %rb.addr.i260, align 4
  %add1.i270 = add nsw i32 %135, %136
  %rem2.i271 = srem i32 %add1.i270, 11
  %idxprom3.i272 = sext i32 %rem2.i271 to i64
  %arrayidx4.i273 = getelementptr inbounds i8, i8* %134, i64 %idxprom3.i272
  %137 = load i8, i8* %arrayidx4.i273, align 1
  %conv5.i274 = zext i8 %137 to i32
  %xor.i275 = xor i32 %conv.i269, %conv5.i274
  %conv6.i276 = trunc i32 %xor.i275 to i8
  %138 = load i8*, i8** %c.addr.i261, align 8
  %139 = load i32, i32* %i.i262, align 4
  %idxprom7.i277 = sext i32 %139 to i64
  %arrayidx8.i278 = getelementptr inbounds i8, i8* %138, i64 %idxprom7.i277
  store i8 %conv6.i276, i8* %arrayidx8.i278, align 1
  %140 = load i32, i32* %i.i262, align 4
  %inc.i280 = add nsw i32 %140, 1
  store i32 %inc.i280, i32* %i.i262, align 4
  br label %for.cond.i264

vadd.exit281:                                     ; preds = %for.cond.i264
  br label %for.inc91

for.inc91:                                        ; preds = %vadd.exit281
  %141 = load i32, i32* %i44, align 4
  %inc92 = add nsw i32 %141, 1
  store i32 %inc92, i32* %i44, align 4
  br label %for.cond45

for.end93:                                        ; preds = %for.cond45
  %arrayidx94 = getelementptr inbounds [22 x [11 x i8]], [22 x [11 x i8]]* %dd, i64 0, i64 16
  %arraydecay95 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx94, i64 0, i64 0
  %142 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay95, i8** %from.addr.i, align 8
  store i8* %142, i8** %to.addr.i, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i, align 8
  store i32 0, i32* %i.i224, align 4
  br label %for.cond.i226

for.cond.i226:                                    ; preds = %for.body.i230, %for.end93
  %143 = load i32, i32* %i.i224, align 4
  %cmp.i225 = icmp sle i32 %143, 10
  br i1 %cmp.i225, label %for.body.i230, label %transform.exit

for.body.i230:                                    ; preds = %for.cond.i226
  %144 = load i8 (i8)*, i8 (i8)** %f.addr.i, align 8
  %145 = load i8*, i8** %from.addr.i, align 8
  %146 = load i32, i32* %i.i224, align 4
  %idxprom.i227 = sext i32 %146 to i64
  %arrayidx.i228 = getelementptr inbounds i8, i8* %145, i64 %idxprom.i227
  %147 = load i8, i8* %arrayidx.i228, align 1
  %call.i229 = call zeroext i8 %144(i8 zeroext %147) #2
  %148 = load i8*, i8** %to.addr.i, align 8
  %149 = load i32, i32* %i.i224, align 4
  %idxprom1.i = sext i32 %149 to i64
  %arrayidx2.i = getelementptr inbounds i8, i8* %148, i64 %idxprom1.i
  store i8 %call.i229, i8* %arrayidx2.i, align 1
  %150 = load i32, i32* %i.i224, align 4
  %inc.i231 = add nsw i32 %150, 1
  store i32 %inc.i231, i32* %i.i224, align 4
  br label %for.cond.i226

transform.exit:                                   ; preds = %for.cond.i226
  %151 = load i8, i8* %A, align 1
  %152 = load i8, i8* %B, align 1
  %call96 = call zeroext i8 @mult(i8 zeroext %151, i8 zeroext %152)
  %conv97 = zext i8 %call96 to i32
  %153 = load i8*, i8** %c.addr, align 8
  store i8* %153, i8** %a.addr.i186, align 8
  %154 = load i8*, i8** %a.addr.i186, align 8
  store i8* %154, i8** %a.addr.i.i182, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i183, align 8
  store i32 0, i32* %i.i.i185, align 4
  br label %for.cond.i.i188

for.cond.i.i188:                                  ; preds = %for.body.i.i197, %transform.exit
  %155 = load i32, i32* %i.i.i185, align 4
  %cmp.i.i187 = icmp sle i32 %155, 10
  br i1 %cmp.i.i187, label %for.body.i.i197, label %xors.exit198

for.body.i.i197:                                  ; preds = %for.cond.i.i188
  %156 = load i8 (i8)*, i8 (i8)** %f.addr.i.i183, align 8
  %157 = load i8*, i8** %a.addr.i.i182, align 8
  %158 = load i32, i32* %i.i.i185, align 4
  %idxprom.i.i189 = sext i32 %158 to i64
  %arrayidx.i.i190 = getelementptr inbounds i8, i8* %157, i64 %idxprom.i.i189
  %159 = load i8, i8* %arrayidx.i.i190, align 1
  %call.i.i191 = call zeroext i8 %156(i8 zeroext %159) #2
  %conv.i.i192 = zext i8 %call.i.i191 to i32
  %160 = load i8, i8* %result.i.i184, align 1
  %conv1.i.i193 = zext i8 %160 to i32
  %xor.i.i194 = xor i32 %conv1.i.i193, %conv.i.i192
  %conv2.i.i195 = trunc i32 %xor.i.i194 to i8
  store i8 %conv2.i.i195, i8* %result.i.i184, align 1
  %161 = load i32, i32* %i.i.i185, align 4
  %inc.i.i196 = add nsw i32 %161, 1
  store i32 %inc.i.i196, i32* %i.i.i185, align 4
  br label %for.cond.i.i188

xors.exit198:                                     ; preds = %for.cond.i.i188
  %162 = load i8, i8* %result.i.i184, align 1
  %conv99 = zext i8 %162 to i32
  %cmp100 = icmp eq i32 %conv97, %conv99
  call void @assert(i1 zeroext %cmp100)
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
  %r = alloca [11 x i8], align 1
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
  %conv2 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %xors.exit
  %11 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %11, 10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call zeroext i8 (...) @rand()
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [11 x i8], [11 x i8]* %r, i64 0, i64 %idxprom
  store i8 %call6, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %r, i64 0, i64 0
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
  %cmp.i = icmp sle i32 %16, 10
  br i1 %cmp.i, label %for.body.i, label %vadd.exit

for.body.i:                                       ; preds = %for.cond.i
  %17 = load i8*, i8** %a.addr.i13, align 8
  %18 = load i32, i32* %i.i, align 4
  %19 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %18, %19
  %rem.i = srem i32 %add.i, 11
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %17, i64 %idxprom.i
  %20 = load i8, i8* %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = load i8*, i8** %b.addr.i, align 8
  %22 = load i32, i32* %i.i, align 4
  %23 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %22, %23
  %rem2.i = srem i32 %add1.i, 11
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
  %arraydecay7 = getelementptr inbounds [11 x i8], [11 x i8]* %r, i64 0, i64 0
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
  %cmp.i37 = icmp sle i32 %30, 10
  br i1 %cmp.i37, label %for.body.i53, label %vadd.exit55

for.body.i53:                                     ; preds = %for.cond.i38
  %31 = load i8*, i8** %a.addr.i31, align 8
  %32 = load i32, i32* %i.i36, align 4
  %33 = load i32, i32* %ra.addr.i32, align 4
  %add.i39 = add nsw i32 %32, %33
  %rem.i40 = srem i32 %add.i39, 11
  %idxprom.i41 = sext i32 %rem.i40 to i64
  %arrayidx.i42 = getelementptr inbounds i8, i8* %31, i64 %idxprom.i41
  %34 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %34 to i32
  %35 = load i8*, i8** %b.addr.i33, align 8
  %36 = load i32, i32* %i.i36, align 4
  %37 = load i32, i32* %rb.addr.i34, align 4
  %add1.i44 = add nsw i32 %36, %37
  %rem2.i45 = srem i32 %add1.i44, 11
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
  %cmp.i.i19 = icmp sle i32 %45, 10
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
