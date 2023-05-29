; ModuleID = '../examples/gross-ches2017.c'
source_filename = "../examples/gross-ches2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 0, align 4
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
  %a.addr.i242 = alloca i8*, align 8
  %ra.addr.i243 = alloca i32, align 4
  %b.addr.i244 = alloca i8*, align 8
  %rb.addr.i245 = alloca i32, align 4
  %c.addr.i246 = alloca i8*, align 8
  %i.i247 = alloca i32, align 4
  %a.addr.i223 = alloca i8*, align 8
  %ra.addr.i224 = alloca i32, align 4
  %b.addr.i225 = alloca i8*, align 8
  %rb.addr.i226 = alloca i32, align 4
  %c.addr.i227 = alloca i8*, align 8
  %i.i228 = alloca i32, align 4
  %a.addr.i204 = alloca i8*, align 8
  %ra.addr.i205 = alloca i32, align 4
  %b.addr.i206 = alloca i8*, align 8
  %rb.addr.i207 = alloca i32, align 4
  %c.addr.i208 = alloca i8*, align 8
  %i.i209 = alloca i32, align 4
  %a.addr.i185 = alloca i8*, align 8
  %ra.addr.i186 = alloca i32, align 4
  %b.addr.i187 = alloca i8*, align 8
  %rb.addr.i188 = alloca i32, align 4
  %c.addr.i189 = alloca i8*, align 8
  %i.i190 = alloca i32, align 4
  %a.addr.i166 = alloca i8*, align 8
  %ra.addr.i167 = alloca i32, align 4
  %b.addr.i168 = alloca i8*, align 8
  %rb.addr.i169 = alloca i32, align 4
  %c.addr.i170 = alloca i8*, align 8
  %i.i171 = alloca i32, align 4
  %a.addr.i.i149 = alloca i8*, align 8
  %f.addr.i.i150 = alloca i8 (i8)*, align 8
  %result.i.i151 = alloca i8, align 1
  %i.i.i152 = alloca i32, align 4
  %a.addr.i153 = alloca i8*, align 8
  %a.addr.i137 = alloca i8*, align 8
  %ra.addr.i138 = alloca i32, align 4
  %b.addr.i139 = alloca i8*, align 8
  %rb.addr.i140 = alloca i32, align 4
  %c.addr.i141 = alloca i8*, align 8
  %i.i142 = alloca i32, align 4
  %a.addr.i121 = alloca i8*, align 8
  %ra.addr.i122 = alloca i32, align 4
  %b.addr.i123 = alloca i8*, align 8
  %rb.addr.i124 = alloca i32, align 4
  %c.addr.i125 = alloca i8*, align 8
  %i.i126 = alloca i32, align 4
  %a.addr.i105 = alloca i8*, align 8
  %ra.addr.i106 = alloca i32, align 4
  %b.addr.i107 = alloca i8*, align 8
  %rb.addr.i108 = alloca i32, align 4
  %c.addr.i109 = alloca i8*, align 8
  %i.i110 = alloca i32, align 4
  %a.addr.i89 = alloca i8*, align 8
  %ra.addr.i90 = alloca i32, align 4
  %b.addr.i91 = alloca i8*, align 8
  %rb.addr.i92 = alloca i32, align 4
  %c.addr.i93 = alloca i8*, align 8
  %i.i94 = alloca i32, align 4
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
  %r = alloca [1 x [1 x i8]], align 1
  %a1b = alloca [1 x i8], align 1
  %ab1 = alloca [1 x i8], align 1
  %a2b = alloca [1 x i8], align 1
  %ab2 = alloca [1 x i8], align 1
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
  store i8* %12, i8** %a.addr.i59, align 8
  %13 = load i8*, i8** %a.addr.i59, align 8
  store i8* %13, i8** %a.addr.i.i55, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i56, align 8
  store i32 0, i32* %i.i.i58, align 4
  br label %for.cond.i.i61

for.cond.i.i61:                                   ; preds = %for.body.i.i70, %xors.exit
  %14 = load i32, i32* %i.i.i58, align 4
  %cmp.i.i60 = icmp sle i32 %14, 0
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
  store i32 1, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit71
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
  %cmp.i = icmp sle i32 %31, 0
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %32 = load i8*, i8** %a.addr.i72, align 8
  %33 = load i32, i32* %i.i, align 4
  %34 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %33, %34
  %35 = load i8, i8* %32, align 1
  %36 = load i8*, i8** %b.addr.i, align 8
  %37 = load i32, i32* %i.i, align 4
  %38 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %37, %38
  %39 = load i8, i8* %36, align 1
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
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ab1, i64 0, i64 0
  store i8* %44, i8** %a.addr.i73, align 8
  store i32 0, i32* %ra.addr.i74, align 4
  store i8* %45, i8** %b.addr.i75, align 8
  store i32 %add, i32* %rb.addr.i76, align 4
  store i8* %arraydecay, i8** %c.addr.i77, align 8
  store i32 0, i32* %i.i78, align 4
  br label %for.cond.i80

for.cond.i80:                                     ; preds = %for.body.i86, %for.body26
  %47 = load i32, i32* %i.i78, align 4
  %cmp.i79 = icmp sle i32 %47, 0
  br i1 %cmp.i79, label %for.body.i86, label %vmult.exit88

for.body.i86:                                     ; preds = %for.cond.i80
  %48 = load i8*, i8** %a.addr.i73, align 8
  %49 = load i32, i32* %i.i78, align 4
  %50 = load i32, i32* %ra.addr.i74, align 4
  %add.i81 = add nsw i32 %49, %50
  %51 = load i8, i8* %48, align 1
  %52 = load i8*, i8** %b.addr.i75, align 8
  %53 = load i32, i32* %i.i78, align 4
  %54 = load i32, i32* %rb.addr.i76, align 4
  %add1.i82 = add nsw i32 %53, %54
  %55 = load i8, i8* %52, align 1
  %call.i83 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i77, align 8
  %57 = load i32, i32* %i.i78, align 4
  %idxprom5.i84 = sext i32 %57 to i64
  %arrayidx6.i85 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i84
  store i8 %call.i83, i8* %arrayidx6.i85, align 1
  %58 = load i32, i32* %i.i78, align 4
  %inc.i87 = add nsw i32 %58, 1
  store i32 %inc.i87, i32* %i.i78, align 4
  br label %for.cond.i80

vmult.exit88:                                     ; preds = %for.cond.i80
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i22, align 4
  %mul27 = mul nsw i32 2, %60
  %add28 = add nsw i32 %mul27, 1
  %61 = load i8*, i8** %b.addr, align 8
  %arraydecay29 = getelementptr inbounds [1 x i8], [1 x i8]* %a1b, i64 0, i64 0
  store i8* %59, i8** %a.addr.i89, align 8
  store i32 %add28, i32* %ra.addr.i90, align 4
  store i8* %61, i8** %b.addr.i91, align 8
  store i32 0, i32* %rb.addr.i92, align 4
  store i8* %arraydecay29, i8** %c.addr.i93, align 8
  store i32 0, i32* %i.i94, align 4
  br label %for.cond.i96

for.cond.i96:                                     ; preds = %for.body.i102, %vmult.exit88
  %62 = load i32, i32* %i.i94, align 4
  %cmp.i95 = icmp sle i32 %62, 0
  br i1 %cmp.i95, label %for.body.i102, label %vmult.exit104

for.body.i102:                                    ; preds = %for.cond.i96
  %63 = load i8*, i8** %a.addr.i89, align 8
  %64 = load i32, i32* %i.i94, align 4
  %65 = load i32, i32* %ra.addr.i90, align 4
  %add.i97 = add nsw i32 %64, %65
  %66 = load i8, i8* %63, align 1
  %67 = load i8*, i8** %b.addr.i91, align 8
  %68 = load i32, i32* %i.i94, align 4
  %69 = load i32, i32* %rb.addr.i92, align 4
  %add1.i98 = add nsw i32 %68, %69
  %70 = load i8, i8* %67, align 1
  %call.i99 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %70) #2
  %71 = load i8*, i8** %c.addr.i93, align 8
  %72 = load i32, i32* %i.i94, align 4
  %idxprom5.i100 = sext i32 %72 to i64
  %arrayidx6.i101 = getelementptr inbounds i8, i8* %71, i64 %idxprom5.i100
  store i8 %call.i99, i8* %arrayidx6.i101, align 1
  %73 = load i32, i32* %i.i94, align 4
  %inc.i103 = add nsw i32 %73, 1
  store i32 %inc.i103, i32* %i.i94, align 4
  br label %for.cond.i96

vmult.exit104:                                    ; preds = %for.cond.i96
  %74 = load i8*, i8** %a.addr, align 8
  %75 = load i8*, i8** %b.addr, align 8
  %76 = load i32, i32* %i22, align 4
  %mul30 = mul nsw i32 2, %76
  %add31 = add nsw i32 %mul30, 2
  %arraydecay32 = getelementptr inbounds [1 x i8], [1 x i8]* %ab2, i64 0, i64 0
  store i8* %74, i8** %a.addr.i105, align 8
  store i32 0, i32* %ra.addr.i106, align 4
  store i8* %75, i8** %b.addr.i107, align 8
  store i32 %add31, i32* %rb.addr.i108, align 4
  store i8* %arraydecay32, i8** %c.addr.i109, align 8
  store i32 0, i32* %i.i110, align 4
  br label %for.cond.i112

for.cond.i112:                                    ; preds = %for.body.i118, %vmult.exit104
  %77 = load i32, i32* %i.i110, align 4
  %cmp.i111 = icmp sle i32 %77, 0
  br i1 %cmp.i111, label %for.body.i118, label %vmult.exit120

for.body.i118:                                    ; preds = %for.cond.i112
  %78 = load i8*, i8** %a.addr.i105, align 8
  %79 = load i32, i32* %i.i110, align 4
  %80 = load i32, i32* %ra.addr.i106, align 4
  %add.i113 = add nsw i32 %79, %80
  %81 = load i8, i8* %78, align 1
  %82 = load i8*, i8** %b.addr.i107, align 8
  %83 = load i32, i32* %i.i110, align 4
  %84 = load i32, i32* %rb.addr.i108, align 4
  %add1.i114 = add nsw i32 %83, %84
  %85 = load i8, i8* %82, align 1
  %call.i115 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %85) #2
  %86 = load i8*, i8** %c.addr.i109, align 8
  %87 = load i32, i32* %i.i110, align 4
  %idxprom5.i116 = sext i32 %87 to i64
  %arrayidx6.i117 = getelementptr inbounds i8, i8* %86, i64 %idxprom5.i116
  store i8 %call.i115, i8* %arrayidx6.i117, align 1
  %88 = load i32, i32* %i.i110, align 4
  %inc.i119 = add nsw i32 %88, 1
  store i32 %inc.i119, i32* %i.i110, align 4
  br label %for.cond.i112

vmult.exit120:                                    ; preds = %for.cond.i112
  %89 = load i8*, i8** %a.addr, align 8
  %90 = load i32, i32* %i22, align 4
  %mul33 = mul nsw i32 2, %90
  %add34 = add nsw i32 %mul33, 2
  %91 = load i8*, i8** %b.addr, align 8
  %arraydecay35 = getelementptr inbounds [1 x i8], [1 x i8]* %a2b, i64 0, i64 0
  store i8* %89, i8** %a.addr.i121, align 8
  store i32 %add34, i32* %ra.addr.i122, align 4
  store i8* %91, i8** %b.addr.i123, align 8
  store i32 0, i32* %rb.addr.i124, align 4
  store i8* %arraydecay35, i8** %c.addr.i125, align 8
  store i32 0, i32* %i.i126, align 4
  br label %for.cond.i128

for.cond.i128:                                    ; preds = %for.body.i134, %vmult.exit120
  %92 = load i32, i32* %i.i126, align 4
  %cmp.i127 = icmp sle i32 %92, 0
  br i1 %cmp.i127, label %for.body.i134, label %vmult.exit136

for.body.i134:                                    ; preds = %for.cond.i128
  %93 = load i8*, i8** %a.addr.i121, align 8
  %94 = load i32, i32* %i.i126, align 4
  %95 = load i32, i32* %ra.addr.i122, align 4
  %add.i129 = add nsw i32 %94, %95
  %96 = load i8, i8* %93, align 1
  %97 = load i8*, i8** %b.addr.i123, align 8
  %98 = load i32, i32* %i.i126, align 4
  %99 = load i32, i32* %rb.addr.i124, align 4
  %add1.i130 = add nsw i32 %98, %99
  %100 = load i8, i8* %97, align 1
  %call.i131 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %100) #2
  %101 = load i8*, i8** %c.addr.i125, align 8
  %102 = load i32, i32* %i.i126, align 4
  %idxprom5.i132 = sext i32 %102 to i64
  %arrayidx6.i133 = getelementptr inbounds i8, i8* %101, i64 %idxprom5.i132
  store i8 %call.i131, i8* %arrayidx6.i133, align 1
  %103 = load i32, i32* %i.i126, align 4
  %inc.i135 = add nsw i32 %103, 1
  store i32 %inc.i135, i32* %i.i126, align 4
  br label %for.cond.i128

vmult.exit136:                                    ; preds = %for.cond.i128
  %104 = load i8*, i8** %c.addr, align 8
  %105 = load i32, i32* %i22, align 4
  %idxprom36 = sext i32 %105 to i64
  %arrayidx37 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx37, i64 0, i64 0
  %106 = load i8*, i8** %c.addr, align 8
  store i8* %104, i8** %a.addr.i137, align 8
  store i32 0, i32* %ra.addr.i138, align 4
  store i8* %arraydecay38, i8** %b.addr.i139, align 8
  store i32 0, i32* %rb.addr.i140, align 4
  store i8* %106, i8** %c.addr.i141, align 8
  store i32 0, i32* %i.i142, align 4
  br label %for.cond.i144

for.cond.i144:                                    ; preds = %for.body.i147, %vmult.exit136
  %107 = load i32, i32* %i.i142, align 4
  %cmp.i143 = icmp sle i32 %107, 0
  br i1 %cmp.i143, label %for.body.i147, label %vadd.exit

for.body.i147:                                    ; preds = %for.cond.i144
  %108 = load i8*, i8** %a.addr.i137, align 8
  %109 = load i32, i32* %i.i142, align 4
  %110 = load i32, i32* %ra.addr.i138, align 4
  %add.i145 = add nsw i32 %109, %110
  %111 = load i8, i8* %108, align 1
  %conv.i = zext i8 %111 to i32
  %112 = load i8*, i8** %b.addr.i139, align 8
  %113 = load i32, i32* %i.i142, align 4
  %114 = load i32, i32* %rb.addr.i140, align 4
  %add1.i146 = add nsw i32 %113, %114
  %115 = load i8, i8* %112, align 1
  %conv5.i = zext i8 %115 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %116 = load i8*, i8** %c.addr.i141, align 8
  %117 = load i32, i32* %i.i142, align 4
  %idxprom7.i = sext i32 %117 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %116, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %118 = load i32, i32* %i.i142, align 4
  %inc.i148 = add nsw i32 %118, 1
  store i32 %inc.i148, i32* %i.i142, align 4
  br label %for.cond.i144

vadd.exit:                                        ; preds = %for.cond.i144
  %119 = load i8*, i8** %c.addr, align 8
  %arraydecay39 = getelementptr inbounds [1 x i8], [1 x i8]* %ab1, i64 0, i64 0
  %120 = load i8*, i8** %c.addr, align 8
  store i8* %119, i8** %a.addr.i166, align 8
  store i32 0, i32* %ra.addr.i167, align 4
  store i8* %arraydecay39, i8** %b.addr.i168, align 8
  store i32 0, i32* %rb.addr.i169, align 4
  store i8* %120, i8** %c.addr.i170, align 8
  store i32 0, i32* %i.i171, align 4
  br label %for.cond.i173

for.cond.i173:                                    ; preds = %for.body.i182, %vadd.exit
  %121 = load i32, i32* %i.i171, align 4
  %cmp.i172 = icmp sle i32 %121, 0
  br i1 %cmp.i172, label %for.body.i182, label %vadd.exit184

for.body.i182:                                    ; preds = %for.cond.i173
  %122 = load i8*, i8** %a.addr.i166, align 8
  %123 = load i32, i32* %i.i171, align 4
  %124 = load i32, i32* %ra.addr.i167, align 4
  %add.i174 = add nsw i32 %123, %124
  %125 = load i8, i8* %122, align 1
  %conv.i175 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i168, align 8
  %127 = load i32, i32* %i.i171, align 4
  %128 = load i32, i32* %rb.addr.i169, align 4
  %add1.i176 = add nsw i32 %127, %128
  %129 = load i8, i8* %126, align 1
  %conv5.i177 = zext i8 %129 to i32
  %xor.i178 = xor i32 %conv.i175, %conv5.i177
  %conv6.i179 = trunc i32 %xor.i178 to i8
  %130 = load i8*, i8** %c.addr.i170, align 8
  %131 = load i32, i32* %i.i171, align 4
  %idxprom7.i180 = sext i32 %131 to i64
  %arrayidx8.i181 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i180
  store i8 %conv6.i179, i8* %arrayidx8.i181, align 1
  %132 = load i32, i32* %i.i171, align 4
  %inc.i183 = add nsw i32 %132, 1
  store i32 %inc.i183, i32* %i.i171, align 4
  br label %for.cond.i173

vadd.exit184:                                     ; preds = %for.cond.i173
  %133 = load i8*, i8** %c.addr, align 8
  %arraydecay40 = getelementptr inbounds [1 x i8], [1 x i8]* %a1b, i64 0, i64 0
  %134 = load i8*, i8** %c.addr, align 8
  store i8* %133, i8** %a.addr.i242, align 8
  store i32 0, i32* %ra.addr.i243, align 4
  store i8* %arraydecay40, i8** %b.addr.i244, align 8
  store i32 0, i32* %rb.addr.i245, align 4
  store i8* %134, i8** %c.addr.i246, align 8
  store i32 0, i32* %i.i247, align 4
  br label %for.cond.i249

for.cond.i249:                                    ; preds = %for.body.i258, %vadd.exit184
  %135 = load i32, i32* %i.i247, align 4
  %cmp.i248 = icmp sle i32 %135, 0
  br i1 %cmp.i248, label %for.body.i258, label %vadd.exit260

for.body.i258:                                    ; preds = %for.cond.i249
  %136 = load i8*, i8** %a.addr.i242, align 8
  %137 = load i32, i32* %i.i247, align 4
  %138 = load i32, i32* %ra.addr.i243, align 4
  %add.i250 = add nsw i32 %137, %138
  %139 = load i8, i8* %136, align 1
  %conv.i251 = zext i8 %139 to i32
  %140 = load i8*, i8** %b.addr.i244, align 8
  %141 = load i32, i32* %i.i247, align 4
  %142 = load i32, i32* %rb.addr.i245, align 4
  %add1.i252 = add nsw i32 %141, %142
  %143 = load i8, i8* %140, align 1
  %conv5.i253 = zext i8 %143 to i32
  %xor.i254 = xor i32 %conv.i251, %conv5.i253
  %conv6.i255 = trunc i32 %xor.i254 to i8
  %144 = load i8*, i8** %c.addr.i246, align 8
  %145 = load i32, i32* %i.i247, align 4
  %idxprom7.i256 = sext i32 %145 to i64
  %arrayidx8.i257 = getelementptr inbounds i8, i8* %144, i64 %idxprom7.i256
  store i8 %conv6.i255, i8* %arrayidx8.i257, align 1
  %146 = load i32, i32* %i.i247, align 4
  %inc.i259 = add nsw i32 %146, 1
  store i32 %inc.i259, i32* %i.i247, align 4
  br label %for.cond.i249

vadd.exit260:                                     ; preds = %for.cond.i249
  %147 = load i8*, i8** %c.addr, align 8
  %148 = load i32, i32* %i22, align 4
  %idxprom41 = sext i32 %148 to i64
  %arrayidx42 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* %r, i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [1 x i8], [1 x i8]* %arrayidx42, i64 0, i64 0
  %149 = load i8*, i8** %c.addr, align 8
  store i8* %147, i8** %a.addr.i223, align 8
  store i32 0, i32* %ra.addr.i224, align 4
  store i8* %arraydecay43, i8** %b.addr.i225, align 8
  store i32 1, i32* %rb.addr.i226, align 4
  store i8* %149, i8** %c.addr.i227, align 8
  store i32 0, i32* %i.i228, align 4
  br label %for.cond.i230

for.cond.i230:                                    ; preds = %for.body.i239, %vadd.exit260
  %150 = load i32, i32* %i.i228, align 4
  %cmp.i229 = icmp sle i32 %150, 0
  br i1 %cmp.i229, label %for.body.i239, label %vadd.exit241

for.body.i239:                                    ; preds = %for.cond.i230
  %151 = load i8*, i8** %a.addr.i223, align 8
  %152 = load i32, i32* %i.i228, align 4
  %153 = load i32, i32* %ra.addr.i224, align 4
  %add.i231 = add nsw i32 %152, %153
  %154 = load i8, i8* %151, align 1
  %conv.i232 = zext i8 %154 to i32
  %155 = load i8*, i8** %b.addr.i225, align 8
  %156 = load i32, i32* %i.i228, align 4
  %157 = load i32, i32* %rb.addr.i226, align 4
  %add1.i233 = add nsw i32 %156, %157
  %158 = load i8, i8* %155, align 1
  %conv5.i234 = zext i8 %158 to i32
  %xor.i235 = xor i32 %conv.i232, %conv5.i234
  %conv6.i236 = trunc i32 %xor.i235 to i8
  %159 = load i8*, i8** %c.addr.i227, align 8
  %160 = load i32, i32* %i.i228, align 4
  %idxprom7.i237 = sext i32 %160 to i64
  %arrayidx8.i238 = getelementptr inbounds i8, i8* %159, i64 %idxprom7.i237
  store i8 %conv6.i236, i8* %arrayidx8.i238, align 1
  %161 = load i32, i32* %i.i228, align 4
  %inc.i240 = add nsw i32 %161, 1
  store i32 %inc.i240, i32* %i.i228, align 4
  br label %for.cond.i230

vadd.exit241:                                     ; preds = %for.cond.i230
  %162 = load i8*, i8** %c.addr, align 8
  %arraydecay44 = getelementptr inbounds [1 x i8], [1 x i8]* %ab2, i64 0, i64 0
  %163 = load i8*, i8** %c.addr, align 8
  store i8* %162, i8** %a.addr.i204, align 8
  store i32 0, i32* %ra.addr.i205, align 4
  store i8* %arraydecay44, i8** %b.addr.i206, align 8
  store i32 0, i32* %rb.addr.i207, align 4
  store i8* %163, i8** %c.addr.i208, align 8
  store i32 0, i32* %i.i209, align 4
  br label %for.cond.i211

for.cond.i211:                                    ; preds = %for.body.i220, %vadd.exit241
  %164 = load i32, i32* %i.i209, align 4
  %cmp.i210 = icmp sle i32 %164, 0
  br i1 %cmp.i210, label %for.body.i220, label %vadd.exit222

for.body.i220:                                    ; preds = %for.cond.i211
  %165 = load i8*, i8** %a.addr.i204, align 8
  %166 = load i32, i32* %i.i209, align 4
  %167 = load i32, i32* %ra.addr.i205, align 4
  %add.i212 = add nsw i32 %166, %167
  %168 = load i8, i8* %165, align 1
  %conv.i213 = zext i8 %168 to i32
  %169 = load i8*, i8** %b.addr.i206, align 8
  %170 = load i32, i32* %i.i209, align 4
  %171 = load i32, i32* %rb.addr.i207, align 4
  %add1.i214 = add nsw i32 %170, %171
  %172 = load i8, i8* %169, align 1
  %conv5.i215 = zext i8 %172 to i32
  %xor.i216 = xor i32 %conv.i213, %conv5.i215
  %conv6.i217 = trunc i32 %xor.i216 to i8
  %173 = load i8*, i8** %c.addr.i208, align 8
  %174 = load i32, i32* %i.i209, align 4
  %idxprom7.i218 = sext i32 %174 to i64
  %arrayidx8.i219 = getelementptr inbounds i8, i8* %173, i64 %idxprom7.i218
  store i8 %conv6.i217, i8* %arrayidx8.i219, align 1
  %175 = load i32, i32* %i.i209, align 4
  %inc.i221 = add nsw i32 %175, 1
  store i32 %inc.i221, i32* %i.i209, align 4
  br label %for.cond.i211

vadd.exit222:                                     ; preds = %for.cond.i211
  %176 = load i8*, i8** %c.addr, align 8
  %arraydecay45 = getelementptr inbounds [1 x i8], [1 x i8]* %a2b, i64 0, i64 0
  %177 = load i8*, i8** %c.addr, align 8
  store i8* %176, i8** %a.addr.i185, align 8
  store i32 0, i32* %ra.addr.i186, align 4
  store i8* %arraydecay45, i8** %b.addr.i187, align 8
  store i32 0, i32* %rb.addr.i188, align 4
  store i8* %177, i8** %c.addr.i189, align 8
  store i32 0, i32* %i.i190, align 4
  br label %for.cond.i192

for.cond.i192:                                    ; preds = %for.body.i201, %vadd.exit222
  %178 = load i32, i32* %i.i190, align 4
  %cmp.i191 = icmp sle i32 %178, 0
  br i1 %cmp.i191, label %for.body.i201, label %vadd.exit203

for.body.i201:                                    ; preds = %for.cond.i192
  %179 = load i8*, i8** %a.addr.i185, align 8
  %180 = load i32, i32* %i.i190, align 4
  %181 = load i32, i32* %ra.addr.i186, align 4
  %add.i193 = add nsw i32 %180, %181
  %182 = load i8, i8* %179, align 1
  %conv.i194 = zext i8 %182 to i32
  %183 = load i8*, i8** %b.addr.i187, align 8
  %184 = load i32, i32* %i.i190, align 4
  %185 = load i32, i32* %rb.addr.i188, align 4
  %add1.i195 = add nsw i32 %184, %185
  %186 = load i8, i8* %183, align 1
  %conv5.i196 = zext i8 %186 to i32
  %xor.i197 = xor i32 %conv.i194, %conv5.i196
  %conv6.i198 = trunc i32 %xor.i197 to i8
  %187 = load i8*, i8** %c.addr.i189, align 8
  %188 = load i32, i32* %i.i190, align 4
  %idxprom7.i199 = sext i32 %188 to i64
  %arrayidx8.i200 = getelementptr inbounds i8, i8* %187, i64 %idxprom7.i199
  store i8 %conv6.i198, i8* %arrayidx8.i200, align 1
  %189 = load i32, i32* %i.i190, align 4
  %inc.i202 = add nsw i32 %189, 1
  store i32 %inc.i202, i32* %i.i190, align 4
  br label %for.cond.i192

vadd.exit203:                                     ; preds = %for.cond.i192
  br label %for.inc46

for.inc46:                                        ; preds = %vadd.exit203
  %190 = load i32, i32* %i22, align 4
  %inc47 = add nsw i32 %190, 1
  store i32 %inc47, i32* %i22, align 4
  br label %for.cond23

for.end48:                                        ; preds = %for.cond23
  store i32 0, i32* %l, align 4
  %191 = load i8, i8* %A, align 1
  %192 = load i8, i8* %B, align 1
  %call49 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192)
  %conv50 = zext i8 %call49 to i32
  %193 = load i8*, i8** %c.addr, align 8
  store i8* %193, i8** %a.addr.i153, align 8
  %194 = load i8*, i8** %a.addr.i153, align 8
  store i8* %194, i8** %a.addr.i.i149, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i150, align 8
  store i32 0, i32* %i.i.i152, align 4
  br label %for.cond.i.i155

for.cond.i.i155:                                  ; preds = %for.body.i.i164, %for.end48
  %195 = load i32, i32* %i.i.i152, align 4
  %cmp.i.i154 = icmp sle i32 %195, 0
  br i1 %cmp.i.i154, label %for.body.i.i164, label %xors.exit165

for.body.i.i164:                                  ; preds = %for.cond.i.i155
  %196 = load i8 (i8)*, i8 (i8)** %f.addr.i.i150, align 8
  %197 = load i8*, i8** %a.addr.i.i149, align 8
  %198 = load i32, i32* %i.i.i152, align 4
  %idxprom.i.i156 = sext i32 %198 to i64
  %arrayidx.i.i157 = getelementptr inbounds i8, i8* %197, i64 %idxprom.i.i156
  %199 = load i8, i8* %arrayidx.i.i157, align 1
  %call.i.i158 = call zeroext i8 %196(i8 zeroext %199) #2
  %conv.i.i159 = zext i8 %call.i.i158 to i32
  %200 = load i8, i8* %result.i.i151, align 1
  %conv1.i.i160 = zext i8 %200 to i32
  %xor.i.i161 = xor i32 %conv1.i.i160, %conv.i.i159
  %conv2.i.i162 = trunc i32 %xor.i.i161 to i8
  store i8 %conv2.i.i162, i8* %result.i.i151, align 1
  %201 = load i32, i32* %i.i.i152, align 4
  %inc.i.i163 = add nsw i32 %201, 1
  store i32 %inc.i.i163, i32* %i.i.i152, align 4
  br label %for.cond.i.i155

xors.exit165:                                     ; preds = %for.cond.i.i155
  %202 = load i8, i8* %result.i.i151, align 1
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
