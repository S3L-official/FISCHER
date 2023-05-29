; ModuleID = '../examples/barthe-eurocrypto2017.c'
source_filename = "../examples/barthe-eurocrypto2017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %cmp = icmp sle i32 %0, 3
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
  %cmp = icmp sle i32 %0, 3
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
  %cmp.i = icmp sle i32 %1, 3
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
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 4
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
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ra.addr, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rb.addr, align 4
  %add1 = add nsw i32 %6, %7
  %rem2 = srem i32 %add1, 4
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
  %a.addr.i303 = alloca i8*, align 8
  %ra.addr.i304 = alloca i32, align 4
  %b.addr.i305 = alloca i8*, align 8
  %rb.addr.i306 = alloca i32, align 4
  %c.addr.i307 = alloca i8*, align 8
  %i.i308 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca double, align 8
  %y.i = alloca i32, align 4
  %a.addr.i275 = alloca i8*, align 8
  %ra.addr.i276 = alloca i32, align 4
  %b.addr.i277 = alloca i8*, align 8
  %rb.addr.i278 = alloca i32, align 4
  %c.addr.i279 = alloca i8*, align 8
  %i.i280 = alloca i32, align 4
  %a.addr.i250 = alloca i8*, align 8
  %ra.addr.i251 = alloca i32, align 4
  %b.addr.i252 = alloca i8*, align 8
  %rb.addr.i253 = alloca i32, align 4
  %c.addr.i254 = alloca i8*, align 8
  %i.i255 = alloca i32, align 4
  %a.addr.i225 = alloca i8*, align 8
  %ra.addr.i226 = alloca i32, align 4
  %b.addr.i227 = alloca i8*, align 8
  %rb.addr.i228 = alloca i32, align 4
  %c.addr.i229 = alloca i8*, align 8
  %i.i230 = alloca i32, align 4
  %a.addr.i.i208 = alloca i8*, align 8
  %f.addr.i.i209 = alloca i8 (i8)*, align 8
  %result.i.i210 = alloca i8, align 1
  %i.i.i211 = alloca i32, align 4
  %a.addr.i212 = alloca i8*, align 8
  %a.addr.i190 = alloca i8*, align 8
  %ra.addr.i191 = alloca i32, align 4
  %b.addr.i192 = alloca i8*, align 8
  %rb.addr.i193 = alloca i32, align 4
  %c.addr.i194 = alloca i8*, align 8
  %i.i195 = alloca i32, align 4
  %a.addr.i168 = alloca i8*, align 8
  %ra.addr.i169 = alloca i32, align 4
  %b.addr.i170 = alloca i8*, align 8
  %rb.addr.i171 = alloca i32, align 4
  %c.addr.i172 = alloca i8*, align 8
  %i.i173 = alloca i32, align 4
  %a.addr.i146 = alloca i8*, align 8
  %ra.addr.i147 = alloca i32, align 4
  %b.addr.i148 = alloca i8*, align 8
  %rb.addr.i149 = alloca i32, align 4
  %c.addr.i150 = alloca i8*, align 8
  %i.i151 = alloca i32, align 4
  %a.addr.i124 = alloca i8*, align 8
  %ra.addr.i125 = alloca i32, align 4
  %b.addr.i126 = alloca i8*, align 8
  %rb.addr.i127 = alloca i32, align 4
  %c.addr.i128 = alloca i8*, align 8
  %i.i129 = alloca i32, align 4
  %a.addr.i123 = alloca i8*, align 8
  %ra.addr.i = alloca i32, align 4
  %b.addr.i = alloca i8*, align 8
  %rb.addr.i = alloca i32, align 4
  %c.addr.i = alloca i8*, align 8
  %i.i = alloca i32, align 4
  %a.addr.i.i106 = alloca i8*, align 8
  %f.addr.i.i107 = alloca i8 (i8)*, align 8
  %result.i.i108 = alloca i8, align 1
  %i.i.i109 = alloca i32, align 4
  %a.addr.i110 = alloca i8*, align 8
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
  %r = alloca [4 x [4 x i8]], align 16
  %cc = alloca [8 x [4 x i8]], align 16
  %dd = alloca [8 x [4 x i8]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i23 = alloca i32, align 4
  %i46 = alloca i32, align 4
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
  %cmp.i.i = icmp sle i32 %3, 3
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
  store i8* %12, i8** %a.addr.i110, align 8
  %13 = load i8*, i8** %a.addr.i110, align 8
  store i8* %13, i8** %a.addr.i.i106, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i107, align 8
  store i32 0, i32* %i.i.i109, align 4
  br label %for.cond.i.i112

for.cond.i.i112:                                  ; preds = %for.body.i.i121, %xors.exit
  %14 = load i32, i32* %i.i.i109, align 4
  %cmp.i.i111 = icmp sle i32 %14, 3
  br i1 %cmp.i.i111, label %for.body.i.i121, label %xors.exit122

for.body.i.i121:                                  ; preds = %for.cond.i.i112
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i107, align 8
  %16 = load i8*, i8** %a.addr.i.i106, align 8
  %17 = load i32, i32* %i.i.i109, align 4
  %idxprom.i.i113 = sext i32 %17 to i64
  %arrayidx.i.i114 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i113
  %18 = load i8, i8* %arrayidx.i.i114, align 1
  %call.i.i115 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i116 = zext i8 %call.i.i115 to i32
  %19 = load i8, i8* %result.i.i108, align 1
  %conv1.i.i117 = zext i8 %19 to i32
  %xor.i.i118 = xor i32 %conv1.i.i117, %conv.i.i116
  %conv2.i.i119 = trunc i32 %xor.i.i118 to i8
  store i8 %conv2.i.i119, i8* %result.i.i108, align 1
  %20 = load i32, i32* %i.i.i109, align 4
  %inc.i.i120 = add nsw i32 %20, 1
  store i32 %inc.i.i120, i32* %i.i.i109, align 4
  br label %for.cond.i.i112

xors.exit122:                                     ; preds = %for.cond.i.i112
  %21 = load i8, i8* %result.i.i108, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 4, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %xors.exit122
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 3
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 3
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %call16 = call zeroext i8 (...) @rand()
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i64 0, i64 %idxprom17
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
  %arrayidx22 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx22, i64 0, i64 0
  store i8* %28, i8** %a.addr.i123, align 8
  store i32 0, i32* %ra.addr.i, align 4
  store i8* %29, i8** %b.addr.i, align 8
  store i32 0, i32* %rb.addr.i, align 4
  store i8* %arraydecay, i8** %c.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end21
  %30 = load i32, i32* %i.i, align 4
  %cmp.i = icmp sle i32 %30, 3
  br i1 %cmp.i, label %for.body.i, label %vmult.exit

for.body.i:                                       ; preds = %for.cond.i
  %31 = load i8*, i8** %a.addr.i123, align 8
  %32 = load i32, i32* %i.i, align 4
  %33 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %32, %33
  %rem.i = srem i32 %add.i, 4
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %31, i64 %idxprom.i
  %34 = load i8, i8* %arrayidx.i, align 1
  %35 = load i8*, i8** %b.addr.i, align 8
  %36 = load i32, i32* %i.i, align 4
  %37 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %36, %37
  %rem2.i = srem i32 %add1.i, 4
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
  %arrayidx29 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx29, i64 0, i64 0
  store i8* %43, i8** %a.addr.i124, align 8
  store i32 0, i32* %ra.addr.i125, align 4
  store i8* %44, i8** %b.addr.i126, align 8
  store i32 %45, i32* %rb.addr.i127, align 4
  store i8* %arraydecay30, i8** %c.addr.i128, align 8
  store i32 0, i32* %i.i129, align 4
  br label %for.cond.i131

for.cond.i131:                                    ; preds = %for.body.i143, %for.body27
  %47 = load i32, i32* %i.i129, align 4
  %cmp.i130 = icmp sle i32 %47, 3
  br i1 %cmp.i130, label %for.body.i143, label %vmult.exit145

for.body.i143:                                    ; preds = %for.cond.i131
  %48 = load i8*, i8** %a.addr.i124, align 8
  %49 = load i32, i32* %i.i129, align 4
  %50 = load i32, i32* %ra.addr.i125, align 4
  %add.i132 = add nsw i32 %49, %50
  %rem.i133 = srem i32 %add.i132, 4
  %idxprom.i134 = sext i32 %rem.i133 to i64
  %arrayidx.i135 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i134
  %51 = load i8, i8* %arrayidx.i135, align 1
  %52 = load i8*, i8** %b.addr.i126, align 8
  %53 = load i32, i32* %i.i129, align 4
  %54 = load i32, i32* %rb.addr.i127, align 4
  %add1.i136 = add nsw i32 %53, %54
  %rem2.i137 = srem i32 %add1.i136, 4
  %idxprom3.i138 = sext i32 %rem2.i137 to i64
  %arrayidx4.i139 = getelementptr inbounds i8, i8* %52, i64 %idxprom3.i138
  %55 = load i8, i8* %arrayidx4.i139, align 1
  %call.i140 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %55) #2
  %56 = load i8*, i8** %c.addr.i128, align 8
  %57 = load i32, i32* %i.i129, align 4
  %idxprom5.i141 = sext i32 %57 to i64
  %arrayidx6.i142 = getelementptr inbounds i8, i8* %56, i64 %idxprom5.i141
  store i8 %call.i140, i8* %arrayidx6.i142, align 1
  %58 = load i32, i32* %i.i129, align 4
  %inc.i144 = add nsw i32 %58, 1
  store i32 %inc.i144, i32* %i.i129, align 4
  br label %for.cond.i131

vmult.exit145:                                    ; preds = %for.cond.i131
  %59 = load i8*, i8** %a.addr, align 8
  %60 = load i32, i32* %i23, align 4
  %61 = load i8*, i8** %b.addr, align 8
  %62 = load i32, i32* %i23, align 4
  %mul31 = mul nsw i32 2, %62
  %add = add nsw i32 %mul31, 1
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx33, i64 0, i64 0
  store i8* %59, i8** %a.addr.i146, align 8
  store i32 %60, i32* %ra.addr.i147, align 4
  store i8* %61, i8** %b.addr.i148, align 8
  store i32 0, i32* %rb.addr.i149, align 4
  store i8* %arraydecay34, i8** %c.addr.i150, align 8
  store i32 0, i32* %i.i151, align 4
  br label %for.cond.i153

for.cond.i153:                                    ; preds = %for.body.i165, %vmult.exit145
  %63 = load i32, i32* %i.i151, align 4
  %cmp.i152 = icmp sle i32 %63, 3
  br i1 %cmp.i152, label %for.body.i165, label %vmult.exit167

for.body.i165:                                    ; preds = %for.cond.i153
  %64 = load i8*, i8** %a.addr.i146, align 8
  %65 = load i32, i32* %i.i151, align 4
  %66 = load i32, i32* %ra.addr.i147, align 4
  %add.i154 = add nsw i32 %65, %66
  %rem.i155 = srem i32 %add.i154, 4
  %idxprom.i156 = sext i32 %rem.i155 to i64
  %arrayidx.i157 = getelementptr inbounds i8, i8* %64, i64 %idxprom.i156
  %67 = load i8, i8* %arrayidx.i157, align 1
  %68 = load i8*, i8** %b.addr.i148, align 8
  %69 = load i32, i32* %i.i151, align 4
  %70 = load i32, i32* %rb.addr.i149, align 4
  %add1.i158 = add nsw i32 %69, %70
  %rem2.i159 = srem i32 %add1.i158, 4
  %idxprom3.i160 = sext i32 %rem2.i159 to i64
  %arrayidx4.i161 = getelementptr inbounds i8, i8* %68, i64 %idxprom3.i160
  %71 = load i8, i8* %arrayidx4.i161, align 1
  %call.i162 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %71) #2
  %72 = load i8*, i8** %c.addr.i150, align 8
  %73 = load i32, i32* %i.i151, align 4
  %idxprom5.i163 = sext i32 %73 to i64
  %arrayidx6.i164 = getelementptr inbounds i8, i8* %72, i64 %idxprom5.i163
  store i8 %call.i162, i8* %arrayidx6.i164, align 1
  %74 = load i32, i32* %i.i151, align 4
  %inc.i166 = add nsw i32 %74, 1
  store i32 %inc.i166, i32* %i.i151, align 4
  br label %for.cond.i153

vmult.exit167:                                    ; preds = %for.cond.i153
  br label %for.inc35

for.inc35:                                        ; preds = %vmult.exit167
  %75 = load i32, i32* %i23, align 4
  %inc36 = add nsw i32 %75, 1
  store i32 %inc36, i32* %i23, align 4
  br label %for.cond24

for.end37:                                        ; preds = %for.cond24
  %76 = load i8*, i8** %a.addr, align 8
  %77 = load i8*, i8** %b.addr, align 8
  %arrayidx38 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 4
  %arraydecay39 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx38, i64 0, i64 0
  store i8* %76, i8** %a.addr.i168, align 8
  store i32 0, i32* %ra.addr.i169, align 4
  store i8* %77, i8** %b.addr.i170, align 8
  store i32 2, i32* %rb.addr.i171, align 4
  store i8* %arraydecay39, i8** %c.addr.i172, align 8
  store i32 0, i32* %i.i173, align 4
  br label %for.cond.i175

for.cond.i175:                                    ; preds = %for.body.i187, %for.end37
  %78 = load i32, i32* %i.i173, align 4
  %cmp.i174 = icmp sle i32 %78, 3
  br i1 %cmp.i174, label %for.body.i187, label %vmult.exit189

for.body.i187:                                    ; preds = %for.cond.i175
  %79 = load i8*, i8** %a.addr.i168, align 8
  %80 = load i32, i32* %i.i173, align 4
  %81 = load i32, i32* %ra.addr.i169, align 4
  %add.i176 = add nsw i32 %80, %81
  %rem.i177 = srem i32 %add.i176, 4
  %idxprom.i178 = sext i32 %rem.i177 to i64
  %arrayidx.i179 = getelementptr inbounds i8, i8* %79, i64 %idxprom.i178
  %82 = load i8, i8* %arrayidx.i179, align 1
  %83 = load i8*, i8** %b.addr.i170, align 8
  %84 = load i32, i32* %i.i173, align 4
  %85 = load i32, i32* %rb.addr.i171, align 4
  %add1.i180 = add nsw i32 %84, %85
  %rem2.i181 = srem i32 %add1.i180, 4
  %idxprom3.i182 = sext i32 %rem2.i181 to i64
  %arrayidx4.i183 = getelementptr inbounds i8, i8* %83, i64 %idxprom3.i182
  %86 = load i8, i8* %arrayidx4.i183, align 1
  %call.i184 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %86) #2
  %87 = load i8*, i8** %c.addr.i172, align 8
  %88 = load i32, i32* %i.i173, align 4
  %idxprom5.i185 = sext i32 %88 to i64
  %arrayidx6.i186 = getelementptr inbounds i8, i8* %87, i64 %idxprom5.i185
  store i8 %call.i184, i8* %arrayidx6.i186, align 1
  %89 = load i32, i32* %i.i173, align 4
  %inc.i188 = add nsw i32 %89, 1
  store i32 %inc.i188, i32* %i.i173, align 4
  br label %for.cond.i175

vmult.exit189:                                    ; preds = %for.cond.i175
  %arrayidx40 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 1
  %arraydecay41 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx40, i64 0, i64 0
  %arrayidx42 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1
  %arraydecay43 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx42, i64 0, i64 0
  %arrayidx44 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 1
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx44, i64 0, i64 0
  store i8* %arraydecay41, i8** %a.addr.i190, align 8
  store i32 0, i32* %ra.addr.i191, align 4
  store i8* %arraydecay43, i8** %b.addr.i192, align 8
  store i32 0, i32* %rb.addr.i193, align 4
  store i8* %arraydecay45, i8** %c.addr.i194, align 8
  store i32 0, i32* %i.i195, align 4
  br label %for.cond.i197

for.cond.i197:                                    ; preds = %for.body.i206, %vmult.exit189
  %90 = load i32, i32* %i.i195, align 4
  %cmp.i196 = icmp sle i32 %90, 3
  br i1 %cmp.i196, label %for.body.i206, label %vadd.exit

for.body.i206:                                    ; preds = %for.cond.i197
  %91 = load i8*, i8** %a.addr.i190, align 8
  %92 = load i32, i32* %i.i195, align 4
  %93 = load i32, i32* %ra.addr.i191, align 4
  %add.i198 = add nsw i32 %92, %93
  %rem.i199 = srem i32 %add.i198, 4
  %idxprom.i200 = sext i32 %rem.i199 to i64
  %arrayidx.i201 = getelementptr inbounds i8, i8* %91, i64 %idxprom.i200
  %94 = load i8, i8* %arrayidx.i201, align 1
  %conv.i = zext i8 %94 to i32
  %95 = load i8*, i8** %b.addr.i192, align 8
  %96 = load i32, i32* %i.i195, align 4
  %97 = load i32, i32* %rb.addr.i193, align 4
  %add1.i202 = add nsw i32 %96, %97
  %rem2.i203 = srem i32 %add1.i202, 4
  %idxprom3.i204 = sext i32 %rem2.i203 to i64
  %arrayidx4.i205 = getelementptr inbounds i8, i8* %95, i64 %idxprom3.i204
  %98 = load i8, i8* %arrayidx4.i205, align 1
  %conv5.i = zext i8 %98 to i32
  %xor.i = xor i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %xor.i to i8
  %99 = load i8*, i8** %c.addr.i194, align 8
  %100 = load i32, i32* %i.i195, align 4
  %idxprom7.i = sext i32 %100 to i64
  %arrayidx8.i = getelementptr inbounds i8, i8* %99, i64 %idxprom7.i
  store i8 %conv6.i, i8* %arrayidx8.i, align 1
  %101 = load i32, i32* %i.i195, align 4
  %inc.i207 = add nsw i32 %101, 1
  store i32 %inc.i207, i32* %i.i195, align 4
  br label %for.cond.i197

vadd.exit:                                        ; preds = %for.cond.i197
  store i32 1, i32* %i46, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc93, %vadd.exit
  %102 = load i32, i32* %i46, align 4
  %cmp48 = icmp sle i32 %102, 1
  br i1 %cmp48, label %for.body50, label %for.end95

for.body50:                                       ; preds = %for.cond47
  %103 = load i32, i32* %i46, align 4
  %mul51 = mul nsw i32 3, %103
  %sub = sub nsw i32 %mul51, 2
  %idxprom52 = sext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 %idxprom52
  %arraydecay54 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx53, i64 0, i64 0
  %104 = load i32, i32* %i46, align 4
  %mul55 = mul nsw i32 2, %104
  %idxprom56 = sext i32 %mul55 to i64
  %arrayidx57 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx57, i64 0, i64 0
  %105 = load i32, i32* %i46, align 4
  %mul59 = mul nsw i32 3, %105
  %sub60 = sub nsw i32 %mul59, 1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 %idxprom61
  %arraydecay63 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx62, i64 0, i64 0
  store i8* %arraydecay54, i8** %a.addr.i225, align 8
  store i32 0, i32* %ra.addr.i226, align 4
  store i8* %arraydecay58, i8** %b.addr.i227, align 8
  store i32 0, i32* %rb.addr.i228, align 4
  store i8* %arraydecay63, i8** %c.addr.i229, align 8
  store i32 0, i32* %i.i230, align 4
  br label %for.cond.i232

for.cond.i232:                                    ; preds = %for.body.i247, %for.body50
  %106 = load i32, i32* %i.i230, align 4
  %cmp.i231 = icmp sle i32 %106, 3
  br i1 %cmp.i231, label %for.body.i247, label %vadd.exit249

for.body.i247:                                    ; preds = %for.cond.i232
  %107 = load i8*, i8** %a.addr.i225, align 8
  %108 = load i32, i32* %i.i230, align 4
  %109 = load i32, i32* %ra.addr.i226, align 4
  %add.i233 = add nsw i32 %108, %109
  %rem.i234 = srem i32 %add.i233, 4
  %idxprom.i235 = sext i32 %rem.i234 to i64
  %arrayidx.i236 = getelementptr inbounds i8, i8* %107, i64 %idxprom.i235
  %110 = load i8, i8* %arrayidx.i236, align 1
  %conv.i237 = zext i8 %110 to i32
  %111 = load i8*, i8** %b.addr.i227, align 8
  %112 = load i32, i32* %i.i230, align 4
  %113 = load i32, i32* %rb.addr.i228, align 4
  %add1.i238 = add nsw i32 %112, %113
  %rem2.i239 = srem i32 %add1.i238, 4
  %idxprom3.i240 = sext i32 %rem2.i239 to i64
  %arrayidx4.i241 = getelementptr inbounds i8, i8* %111, i64 %idxprom3.i240
  %114 = load i8, i8* %arrayidx4.i241, align 1
  %conv5.i242 = zext i8 %114 to i32
  %xor.i243 = xor i32 %conv.i237, %conv5.i242
  %conv6.i244 = trunc i32 %xor.i243 to i8
  %115 = load i8*, i8** %c.addr.i229, align 8
  %116 = load i32, i32* %i.i230, align 4
  %idxprom7.i245 = sext i32 %116 to i64
  %arrayidx8.i246 = getelementptr inbounds i8, i8* %115, i64 %idxprom7.i245
  store i8 %conv6.i244, i8* %arrayidx8.i246, align 1
  %117 = load i32, i32* %i.i230, align 4
  %inc.i248 = add nsw i32 %117, 1
  store i32 %inc.i248, i32* %i.i230, align 4
  br label %for.cond.i232

vadd.exit249:                                     ; preds = %for.cond.i232
  %118 = load i32, i32* %i46, align 4
  %mul64 = mul nsw i32 3, %118
  %sub65 = sub nsw i32 %mul64, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 %idxprom66
  %arraydecay68 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx67, i64 0, i64 0
  %119 = load i32, i32* %i46, align 4
  %mul69 = mul nsw i32 2, %119
  %add70 = add nsw i32 %mul69, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 %idxprom71
  %arraydecay73 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx72, i64 0, i64 0
  %120 = load i32, i32* %i46, align 4
  %mul74 = mul nsw i32 3, %120
  %idxprom75 = sext i32 %mul74 to i64
  %arrayidx76 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 %idxprom75
  %arraydecay77 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx76, i64 0, i64 0
  store i8* %arraydecay68, i8** %a.addr.i303, align 8
  store i32 0, i32* %ra.addr.i304, align 4
  store i8* %arraydecay73, i8** %b.addr.i305, align 8
  store i32 0, i32* %rb.addr.i306, align 4
  store i8* %arraydecay77, i8** %c.addr.i307, align 8
  store i32 0, i32* %i.i308, align 4
  br label %for.cond.i310

for.cond.i310:                                    ; preds = %for.body.i325, %vadd.exit249
  %121 = load i32, i32* %i.i308, align 4
  %cmp.i309 = icmp sle i32 %121, 3
  br i1 %cmp.i309, label %for.body.i325, label %vadd.exit327

for.body.i325:                                    ; preds = %for.cond.i310
  %122 = load i8*, i8** %a.addr.i303, align 8
  %123 = load i32, i32* %i.i308, align 4
  %124 = load i32, i32* %ra.addr.i304, align 4
  %add.i311 = add nsw i32 %123, %124
  %rem.i312 = srem i32 %add.i311, 4
  %idxprom.i313 = sext i32 %rem.i312 to i64
  %arrayidx.i314 = getelementptr inbounds i8, i8* %122, i64 %idxprom.i313
  %125 = load i8, i8* %arrayidx.i314, align 1
  %conv.i315 = zext i8 %125 to i32
  %126 = load i8*, i8** %b.addr.i305, align 8
  %127 = load i32, i32* %i.i308, align 4
  %128 = load i32, i32* %rb.addr.i306, align 4
  %add1.i316 = add nsw i32 %127, %128
  %rem2.i317 = srem i32 %add1.i316, 4
  %idxprom3.i318 = sext i32 %rem2.i317 to i64
  %arrayidx4.i319 = getelementptr inbounds i8, i8* %126, i64 %idxprom3.i318
  %129 = load i8, i8* %arrayidx4.i319, align 1
  %conv5.i320 = zext i8 %129 to i32
  %xor.i321 = xor i32 %conv.i315, %conv5.i320
  %conv6.i322 = trunc i32 %xor.i321 to i8
  %130 = load i8*, i8** %c.addr.i307, align 8
  %131 = load i32, i32* %i.i308, align 4
  %idxprom7.i323 = sext i32 %131 to i64
  %arrayidx8.i324 = getelementptr inbounds i8, i8* %130, i64 %idxprom7.i323
  store i8 %conv6.i322, i8* %arrayidx8.i324, align 1
  %132 = load i32, i32* %i.i308, align 4
  %inc.i326 = add nsw i32 %132, 1
  store i32 %inc.i326, i32* %i.i308, align 4
  br label %for.cond.i310

vadd.exit327:                                     ; preds = %for.cond.i310
  %133 = load i32, i32* %i46, align 4
  %mul78 = mul nsw i32 3, %133
  %idxprom79 = sext i32 %mul78 to i64
  %arrayidx80 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx80, i64 0, i64 0
  %134 = load i32, i32* %i46, align 4
  %add82 = add nsw i32 %134, 1
  %conv83 = sitofp i32 %add82 to double
  %div = fdiv double %conv83, 2.000000e+00
  store double %div, double* %x.addr.i, align 8
  %135 = load double, double* %x.addr.i, align 8
  %conv.i300 = fptosi double %135 to i32
  store i32 %conv.i300, i32* %y.i, align 4
  %136 = load double, double* %x.addr.i, align 8
  %137 = load i32, i32* %y.i, align 4
  %conv1.i = sitofp i32 %137 to double
  %cmp.i301 = fcmp oeq double %136, %conv1.i
  br i1 %cmp.i301, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %vadd.exit327
  %138 = load i32, i32* %y.i, align 4
  store i32 %138, i32* %retval.i, align 4
  br label %ceil_.exit

if.end.i:                                         ; preds = %vadd.exit327
  %139 = load i32, i32* %y.i, align 4
  %add.i302 = add nsw i32 %139, 1
  store i32 %add.i302, i32* %retval.i, align 4
  br label %ceil_.exit

ceil_.exit:                                       ; preds = %if.then.i, %if.end.i
  %140 = load i32, i32* %retval.i, align 4
  %idxprom85 = sext i32 %140 to i64
  %arrayidx86 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 %idxprom85
  %arraydecay87 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx86, i64 0, i64 0
  %141 = load i32, i32* %i46, align 4
  %rem = srem i32 %141, 2
  %142 = load i32, i32* %i46, align 4
  %mul88 = mul nsw i32 3, %142
  %add89 = add nsw i32 %mul88, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 %idxprom90
  %arraydecay92 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx91, i64 0, i64 0
  store i8* %arraydecay81, i8** %a.addr.i275, align 8
  store i32 0, i32* %ra.addr.i276, align 4
  store i8* %arraydecay87, i8** %b.addr.i277, align 8
  store i32 %rem, i32* %rb.addr.i278, align 4
  store i8* %arraydecay92, i8** %c.addr.i279, align 8
  store i32 0, i32* %i.i280, align 4
  br label %for.cond.i282

for.cond.i282:                                    ; preds = %for.body.i297, %ceil_.exit
  %143 = load i32, i32* %i.i280, align 4
  %cmp.i281 = icmp sle i32 %143, 3
  br i1 %cmp.i281, label %for.body.i297, label %vadd.exit299

for.body.i297:                                    ; preds = %for.cond.i282
  %144 = load i8*, i8** %a.addr.i275, align 8
  %145 = load i32, i32* %i.i280, align 4
  %146 = load i32, i32* %ra.addr.i276, align 4
  %add.i283 = add nsw i32 %145, %146
  %rem.i284 = srem i32 %add.i283, 4
  %idxprom.i285 = sext i32 %rem.i284 to i64
  %arrayidx.i286 = getelementptr inbounds i8, i8* %144, i64 %idxprom.i285
  %147 = load i8, i8* %arrayidx.i286, align 1
  %conv.i287 = zext i8 %147 to i32
  %148 = load i8*, i8** %b.addr.i277, align 8
  %149 = load i32, i32* %i.i280, align 4
  %150 = load i32, i32* %rb.addr.i278, align 4
  %add1.i288 = add nsw i32 %149, %150
  %rem2.i289 = srem i32 %add1.i288, 4
  %idxprom3.i290 = sext i32 %rem2.i289 to i64
  %arrayidx4.i291 = getelementptr inbounds i8, i8* %148, i64 %idxprom3.i290
  %151 = load i8, i8* %arrayidx4.i291, align 1
  %conv5.i292 = zext i8 %151 to i32
  %xor.i293 = xor i32 %conv.i287, %conv5.i292
  %conv6.i294 = trunc i32 %xor.i293 to i8
  %152 = load i8*, i8** %c.addr.i279, align 8
  %153 = load i32, i32* %i.i280, align 4
  %idxprom7.i295 = sext i32 %153 to i64
  %arrayidx8.i296 = getelementptr inbounds i8, i8* %152, i64 %idxprom7.i295
  store i8 %conv6.i294, i8* %arrayidx8.i296, align 1
  %154 = load i32, i32* %i.i280, align 4
  %inc.i298 = add nsw i32 %154, 1
  store i32 %inc.i298, i32* %i.i280, align 4
  br label %for.cond.i282

vadd.exit299:                                     ; preds = %for.cond.i282
  br label %for.inc93

for.inc93:                                        ; preds = %vadd.exit299
  %155 = load i32, i32* %i46, align 4
  %inc94 = add nsw i32 %155, 1
  store i32 %inc94, i32* %i46, align 4
  br label %for.cond47

for.end95:                                        ; preds = %for.cond47
  %arrayidx96 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %dd, i64 0, i64 4
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx96, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %cc, i64 0, i64 4
  %arraydecay99 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx98, i64 0, i64 0
  %156 = load i8*, i8** %c.addr, align 8
  store i8* %arraydecay97, i8** %a.addr.i250, align 8
  store i32 0, i32* %ra.addr.i251, align 4
  store i8* %arraydecay99, i8** %b.addr.i252, align 8
  store i32 0, i32* %rb.addr.i253, align 4
  store i8* %156, i8** %c.addr.i254, align 8
  store i32 0, i32* %i.i255, align 4
  br label %for.cond.i257

for.cond.i257:                                    ; preds = %for.body.i272, %for.end95
  %157 = load i32, i32* %i.i255, align 4
  %cmp.i256 = icmp sle i32 %157, 3
  br i1 %cmp.i256, label %for.body.i272, label %vadd.exit274

for.body.i272:                                    ; preds = %for.cond.i257
  %158 = load i8*, i8** %a.addr.i250, align 8
  %159 = load i32, i32* %i.i255, align 4
  %160 = load i32, i32* %ra.addr.i251, align 4
  %add.i258 = add nsw i32 %159, %160
  %rem.i259 = srem i32 %add.i258, 4
  %idxprom.i260 = sext i32 %rem.i259 to i64
  %arrayidx.i261 = getelementptr inbounds i8, i8* %158, i64 %idxprom.i260
  %161 = load i8, i8* %arrayidx.i261, align 1
  %conv.i262 = zext i8 %161 to i32
  %162 = load i8*, i8** %b.addr.i252, align 8
  %163 = load i32, i32* %i.i255, align 4
  %164 = load i32, i32* %rb.addr.i253, align 4
  %add1.i263 = add nsw i32 %163, %164
  %rem2.i264 = srem i32 %add1.i263, 4
  %idxprom3.i265 = sext i32 %rem2.i264 to i64
  %arrayidx4.i266 = getelementptr inbounds i8, i8* %162, i64 %idxprom3.i265
  %165 = load i8, i8* %arrayidx4.i266, align 1
  %conv5.i267 = zext i8 %165 to i32
  %xor.i268 = xor i32 %conv.i262, %conv5.i267
  %conv6.i269 = trunc i32 %xor.i268 to i8
  %166 = load i8*, i8** %c.addr.i254, align 8
  %167 = load i32, i32* %i.i255, align 4
  %idxprom7.i270 = sext i32 %167 to i64
  %arrayidx8.i271 = getelementptr inbounds i8, i8* %166, i64 %idxprom7.i270
  store i8 %conv6.i269, i8* %arrayidx8.i271, align 1
  %168 = load i32, i32* %i.i255, align 4
  %inc.i273 = add nsw i32 %168, 1
  store i32 %inc.i273, i32* %i.i255, align 4
  br label %for.cond.i257

vadd.exit274:                                     ; preds = %for.cond.i257
  %169 = load i8, i8* %A, align 1
  %170 = load i8, i8* %B, align 1
  %call100 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170)
  %conv101 = zext i8 %call100 to i32
  %171 = load i8*, i8** %c.addr, align 8
  store i8* %171, i8** %a.addr.i212, align 8
  %172 = load i8*, i8** %a.addr.i212, align 8
  store i8* %172, i8** %a.addr.i.i208, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i209, align 8
  store i32 0, i32* %i.i.i211, align 4
  br label %for.cond.i.i214

for.cond.i.i214:                                  ; preds = %for.body.i.i223, %vadd.exit274
  %173 = load i32, i32* %i.i.i211, align 4
  %cmp.i.i213 = icmp sle i32 %173, 3
  br i1 %cmp.i.i213, label %for.body.i.i223, label %xors.exit224

for.body.i.i223:                                  ; preds = %for.cond.i.i214
  %174 = load i8 (i8)*, i8 (i8)** %f.addr.i.i209, align 8
  %175 = load i8*, i8** %a.addr.i.i208, align 8
  %176 = load i32, i32* %i.i.i211, align 4
  %idxprom.i.i215 = sext i32 %176 to i64
  %arrayidx.i.i216 = getelementptr inbounds i8, i8* %175, i64 %idxprom.i.i215
  %177 = load i8, i8* %arrayidx.i.i216, align 1
  %call.i.i217 = call zeroext i8 %174(i8 zeroext %177) #2
  %conv.i.i218 = zext i8 %call.i.i217 to i32
  %178 = load i8, i8* %result.i.i210, align 1
  %conv1.i.i219 = zext i8 %178 to i32
  %xor.i.i220 = xor i32 %conv1.i.i219, %conv.i.i218
  %conv2.i.i221 = trunc i32 %xor.i.i220 to i8
  store i8 %conv2.i.i221, i8* %result.i.i210, align 1
  %179 = load i32, i32* %i.i.i211, align 4
  %inc.i.i222 = add nsw i32 %179, 1
  store i32 %inc.i.i222, i32* %i.i.i211, align 4
  br label %for.cond.i.i214

xors.exit224:                                     ; preds = %for.cond.i.i214
  %180 = load i8, i8* %result.i.i210, align 1
  %conv103 = zext i8 %180 to i32
  %cmp104 = icmp eq i32 %conv101, %conv103
  call void @assert(i1 zeroext %cmp104)
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
  %r = alloca [4 x i8], align 1
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
  %cmp.i.i = icmp sle i32 %3, 3
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
  %cmp4 = icmp sle i32 %11, 3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call zeroext i8 (...) @rand()
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %r, i64 0, i64 %idxprom
  store i8 %call6, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %r, i64 0, i64 0
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
  %cmp.i = icmp sle i32 %16, 3
  br i1 %cmp.i, label %for.body.i, label %vadd.exit

for.body.i:                                       ; preds = %for.cond.i
  %17 = load i8*, i8** %a.addr.i13, align 8
  %18 = load i32, i32* %i.i, align 4
  %19 = load i32, i32* %ra.addr.i, align 4
  %add.i = add nsw i32 %18, %19
  %rem.i = srem i32 %add.i, 4
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %17, i64 %idxprom.i
  %20 = load i8, i8* %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = load i8*, i8** %b.addr.i, align 8
  %22 = load i32, i32* %i.i, align 4
  %23 = load i32, i32* %rb.addr.i, align 4
  %add1.i = add nsw i32 %22, %23
  %rem2.i = srem i32 %add1.i, 4
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
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %r, i64 0, i64 0
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
  %cmp.i37 = icmp sle i32 %30, 3
  br i1 %cmp.i37, label %for.body.i53, label %vadd.exit55

for.body.i53:                                     ; preds = %for.cond.i38
  %31 = load i8*, i8** %a.addr.i31, align 8
  %32 = load i32, i32* %i.i36, align 4
  %33 = load i32, i32* %ra.addr.i32, align 4
  %add.i39 = add nsw i32 %32, %33
  %rem.i40 = srem i32 %add.i39, 4
  %idxprom.i41 = sext i32 %rem.i40 to i64
  %arrayidx.i42 = getelementptr inbounds i8, i8* %31, i64 %idxprom.i41
  %34 = load i8, i8* %arrayidx.i42, align 1
  %conv.i43 = zext i8 %34 to i32
  %35 = load i8*, i8** %b.addr.i33, align 8
  %36 = load i32, i32* %i.i36, align 4
  %37 = load i32, i32* %rb.addr.i34, align 4
  %add1.i44 = add nsw i32 %36, %37
  %rem2.i45 = srem i32 %add1.i44, 4
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
  %cmp.i.i19 = icmp sle i32 %45, 3
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
