; ModuleID = '../examples/belaid-eurocrypto2016.c'
source_filename = "../examples/belaid-eurocrypto2016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 20, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [36 x i8] c"../examples/belaid-eurocrypto2016.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %cmp = icmp sle i32 %0, 20
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
  %cmp = icmp sle i32 %0, 20
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
  %cmp.i = icmp sle i32 %1, 20
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
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %a.addr.i.i225 = alloca i8*, align 8
  %f.addr.i.i226 = alloca i8 (i8)*, align 8
  %result.i.i227 = alloca i8, align 1
  %i.i.i228 = alloca i32, align 4
  %a.addr.i229 = alloca i8*, align 8
  %a.addr.i.i208 = alloca i8*, align 8
  %f.addr.i.i209 = alloca i8 (i8)*, align 8
  %result.i.i210 = alloca i8, align 1
  %i.i.i211 = alloca i32, align 4
  %a.addr.i212 = alloca i8*, align 8
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
  %alpha = alloca [21 x [21 x i8]], align 16
  %t = alloca [21 x [21 x i8]], align 16
  %r = alloca [21 x [21 x i8]], align 16
  %rr = alloca [21 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i26 = alloca i32, align 4
  %j31 = alloca i32, align 4
  %j48 = alloca i32, align 4
  %i59 = alloca i32, align 4
  %j70 = alloca i32, align 4
  %j180 = alloca i32, align 4
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
  %cmp.i.i = icmp sle i32 %3, 20
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
  store i8* %12, i8** %a.addr.i212, align 8
  %13 = load i8*, i8** %a.addr.i212, align 8
  store i8* %13, i8** %a.addr.i.i208, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i209, align 8
  store i32 0, i32* %i.i.i211, align 4
  br label %for.cond.i.i214

for.cond.i.i214:                                  ; preds = %for.body.i.i223, %xors.exit
  %14 = load i32, i32* %i.i.i211, align 4
  %cmp.i.i213 = icmp sle i32 %14, 20
  br i1 %cmp.i.i213, label %for.body.i.i223, label %xors.exit224

for.body.i.i223:                                  ; preds = %for.cond.i.i214
  %15 = load i8 (i8)*, i8 (i8)** %f.addr.i.i209, align 8
  %16 = load i8*, i8** %a.addr.i.i208, align 8
  %17 = load i32, i32* %i.i.i211, align 4
  %idxprom.i.i215 = sext i32 %17 to i64
  %arrayidx.i.i216 = getelementptr inbounds i8, i8* %16, i64 %idxprom.i.i215
  %18 = load i8, i8* %arrayidx.i.i216, align 1
  %call.i.i217 = call zeroext i8 %15(i8 zeroext %18) #2
  %conv.i.i218 = zext i8 %call.i.i217 to i32
  %19 = load i8, i8* %result.i.i210, align 1
  %conv1.i.i219 = zext i8 %19 to i32
  %xor.i.i220 = xor i32 %conv1.i.i219, %conv.i.i218
  %conv2.i.i221 = trunc i32 %xor.i.i220 to i8
  store i8 %conv2.i.i221, i8* %result.i.i210, align 1
  %20 = load i32, i32* %i.i.i211, align 4
  %inc.i.i222 = add nsw i32 %20, 1
  store i32 %inc.i.i222, i32* %i.i.i211, align 4
  br label %for.cond.i.i214

xors.exit224:                                     ; preds = %for.cond.i.i214
  %21 = load i8, i8* %result.i.i210, align 1
  %conv7 = zext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %xors.exit224
  %22 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %22, 20
  br i1 %cmp10, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp13 = icmp sle i32 %23, 20
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %24 = load i8*, i8** %a.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %27 = load i8*, i8** %b.addr, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %29 = load i8, i8* %arrayidx17, align 1
  %call18 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %29)
  %30 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom19
  %31 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx20, i64 0, i64 %idxprom21
  store i8 %call18, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond12

for.end:                                          ; preds = %for.cond12
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %33, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc45, %for.end25
  %34 = load i32, i32* %i26, align 4
  %cmp28 = icmp sle i32 %34, 20
  br i1 %cmp28, label %for.body30, label %for.end47

for.body30:                                       ; preds = %for.cond27
  store i32 0, i32* %j31, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc43, %for.body30
  %35 = load i32, i32* %j31, align 4
  %36 = load i32, i32* %i26, align 4
  %sub = sub nsw i32 20, %36
  %sub33 = sub nsw i32 %sub, 1
  %cmp34 = icmp sle i32 %35, %sub33
  br i1 %cmp34, label %for.body36, label %for.end44

for.body36:                                       ; preds = %for.cond32
  %call37 = call zeroext i8 (...) @rand()
  %37 = load i32, i32* %i26, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 %idxprom38
  %38 = load i32, i32* %j31, align 4
  %sub40 = sub nsw i32 20, %38
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx39, i64 0, i64 %idxprom41
  store i8 %call37, i8* %arrayidx42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %for.body36
  %39 = load i32, i32* %j31, align 4
  %add = add nsw i32 %39, 2
  store i32 %add, i32* %j31, align 4
  br label %for.cond32

for.end44:                                        ; preds = %for.cond32
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %40 = load i32, i32* %i26, align 4
  %inc46 = add nsw i32 %40, 1
  store i32 %inc46, i32* %i26, align 4
  br label %for.cond27

for.end47:                                        ; preds = %for.cond27
  store i32 19, i32* %j48, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %for.end47
  %41 = load i32, i32* %j48, align 4
  %cmp50 = icmp sge i32 %41, 1
  br i1 %cmp50, label %for.body52, label %for.end58

for.body52:                                       ; preds = %for.cond49
  %call53 = call zeroext i8 (...) @rand()
  %42 = load i32, i32* %j48, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 %idxprom54
  store i8 %call53, i8* %arrayidx55, align 1
  br label %for.inc56

for.inc56:                                        ; preds = %for.body52
  %43 = load i32, i32* %j48, align 4
  %sub57 = sub nsw i32 %43, 2
  store i32 %sub57, i32* %j48, align 4
  br label %for.cond49

for.end58:                                        ; preds = %for.cond49
  store i32 0, i32* %i59, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc199, %for.end58
  %44 = load i32, i32* %i59, align 4
  %cmp61 = icmp sle i32 %44, 20
  br i1 %cmp61, label %for.body63, label %for.end201

for.body63:                                       ; preds = %for.cond60
  %45 = load i32, i32* %i59, align 4
  %idxprom64 = sext i32 %45 to i64
  %arrayidx65 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom64
  %46 = load i32, i32* %i59, align 4
  %idxprom66 = sext i32 %46 to i64
  %arrayidx67 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx65, i64 0, i64 %idxprom66
  %47 = load i8, i8* %arrayidx67, align 1
  %48 = load i8*, i8** %c.addr, align 8
  %49 = load i32, i32* %i59, align 4
  %idxprom68 = sext i32 %49 to i64
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %idxprom68
  store i8 %47, i8* %arrayidx69, align 1
  store i32 20, i32* %j70, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc126, %for.body63
  %50 = load i32, i32* %j70, align 4
  %51 = load i32, i32* %i59, align 4
  %add72 = add nsw i32 %51, 2
  %cmp73 = icmp sge i32 %50, %add72
  br i1 %cmp73, label %for.body75, label %for.end128

for.body75:                                       ; preds = %for.cond71
  %52 = load i32, i32* %i59, align 4
  %idxprom76 = sext i32 %52 to i64
  %arrayidx77 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 %idxprom76
  %53 = load i32, i32* %j70, align 4
  %idxprom78 = sext i32 %53 to i64
  %arrayidx79 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx77, i64 0, i64 %idxprom78
  %54 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %54 to i32
  %55 = load i32, i32* %i59, align 4
  %idxprom81 = sext i32 %55 to i64
  %arrayidx82 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom81
  %56 = load i32, i32* %j70, align 4
  %idxprom83 = sext i32 %56 to i64
  %arrayidx84 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx82, i64 0, i64 %idxprom83
  %57 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %57 to i32
  %xor = xor i32 %conv80, %conv85
  %58 = load i32, i32* %j70, align 4
  %idxprom86 = sext i32 %58 to i64
  %arrayidx87 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom86
  %59 = load i32, i32* %i59, align 4
  %idxprom88 = sext i32 %59 to i64
  %arrayidx89 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx87, i64 0, i64 %idxprom88
  %60 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %60 to i32
  %xor91 = xor i32 %xor, %conv90
  %61 = load i32, i32* %j70, align 4
  %sub92 = sub nsw i32 %61, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 %idxprom93
  %62 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %62 to i32
  %xor96 = xor i32 %xor91, %conv95
  %63 = load i32, i32* %i59, align 4
  %idxprom97 = sext i32 %63 to i64
  %arrayidx98 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom97
  %64 = load i32, i32* %j70, align 4
  %sub99 = sub nsw i32 %64, 1
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx98, i64 0, i64 %idxprom100
  %65 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %65 to i32
  %xor103 = xor i32 %xor96, %conv102
  %66 = load i32, i32* %j70, align 4
  %sub104 = sub nsw i32 %66, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom105
  %67 = load i32, i32* %i59, align 4
  %idxprom107 = sext i32 %67 to i64
  %arrayidx108 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx106, i64 0, i64 %idxprom107
  %68 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %68 to i32
  %xor110 = xor i32 %xor103, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %69 = load i32, i32* %i59, align 4
  %idxprom112 = sext i32 %69 to i64
  %arrayidx113 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 %idxprom112
  %70 = load i32, i32* %j70, align 4
  %idxprom114 = sext i32 %70 to i64
  %arrayidx115 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx113, i64 0, i64 %idxprom114
  store i8 %conv111, i8* %arrayidx115, align 1
  %71 = load i32, i32* %i59, align 4
  %idxprom116 = sext i32 %71 to i64
  %arrayidx117 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 %idxprom116
  %72 = load i32, i32* %j70, align 4
  %idxprom118 = sext i32 %72 to i64
  %arrayidx119 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx117, i64 0, i64 %idxprom118
  %73 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %73 to i32
  %74 = load i8*, i8** %c.addr, align 8
  %75 = load i32, i32* %i59, align 4
  %idxprom121 = sext i32 %75 to i64
  %arrayidx122 = getelementptr inbounds i8, i8* %74, i64 %idxprom121
  %76 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %76 to i32
  %xor124 = xor i32 %conv123, %conv120
  %conv125 = trunc i32 %xor124 to i8
  store i8 %conv125, i8* %arrayidx122, align 1
  br label %for.inc126

for.inc126:                                       ; preds = %for.body75
  %77 = load i32, i32* %j70, align 4
  %sub127 = sub nsw i32 %77, 2
  store i32 %sub127, i32* %j70, align 4
  br label %for.cond71

for.end128:                                       ; preds = %for.cond71
  %78 = load i32, i32* %i59, align 4
  %rem = srem i32 %78, 2
  %cmp129 = icmp ne i32 %rem, 0
  br i1 %cmp129, label %if.then, label %if.else

if.then:                                          ; preds = %for.end128
  %79 = load i32, i32* %i59, align 4
  %idxprom131 = sext i32 %79 to i64
  %arrayidx132 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 %idxprom131
  %80 = load i32, i32* %i59, align 4
  %add133 = add nsw i32 %80, 1
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx132, i64 0, i64 %idxprom134
  %81 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %81 to i32
  %82 = load i32, i32* %i59, align 4
  %idxprom137 = sext i32 %82 to i64
  %arrayidx138 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom137
  %83 = load i32, i32* %i59, align 4
  %add139 = add nsw i32 %83, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx138, i64 0, i64 %idxprom140
  %84 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %84 to i32
  %xor143 = xor i32 %conv136, %conv142
  %85 = load i32, i32* %i59, align 4
  %add144 = add nsw i32 %85, 1
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %alpha, i64 0, i64 %idxprom145
  %86 = load i32, i32* %i59, align 4
  %idxprom147 = sext i32 %86 to i64
  %arrayidx148 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx146, i64 0, i64 %idxprom147
  %87 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %87 to i32
  %xor150 = xor i32 %xor143, %conv149
  %conv151 = trunc i32 %xor150 to i8
  %88 = load i32, i32* %i59, align 4
  %idxprom152 = sext i32 %88 to i64
  %arrayidx153 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 %idxprom152
  %89 = load i32, i32* %i59, align 4
  %add154 = add nsw i32 %89, 1
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx153, i64 0, i64 %idxprom155
  store i8 %conv151, i8* %arrayidx156, align 1
  %90 = load i32, i32* %i59, align 4
  %idxprom157 = sext i32 %90 to i64
  %arrayidx158 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %t, i64 0, i64 %idxprom157
  %91 = load i32, i32* %i59, align 4
  %add159 = add nsw i32 %91, 1
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx158, i64 0, i64 %idxprom160
  %92 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %92 to i32
  %93 = load i8*, i8** %c.addr, align 8
  %94 = load i32, i32* %i59, align 4
  %idxprom163 = sext i32 %94 to i64
  %arrayidx164 = getelementptr inbounds i8, i8* %93, i64 %idxprom163
  %95 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %95 to i32
  %xor166 = xor i32 %conv165, %conv162
  %conv167 = trunc i32 %xor166 to i8
  store i8 %conv167, i8* %arrayidx164, align 1
  %96 = load i32, i32* %i59, align 4
  %rem168 = srem i32 %96, 2
  %cmp169 = icmp eq i32 %rem168, 1
  br i1 %cmp169, label %if.then171, label %if.end

if.then171:                                       ; preds = %if.then
  %97 = load i32, i32* %i59, align 4
  %idxprom172 = sext i32 %97 to i64
  %arrayidx173 = getelementptr inbounds [21 x i8], [21 x i8]* %rr, i64 0, i64 %idxprom172
  %98 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %98 to i32
  %99 = load i8*, i8** %c.addr, align 8
  %100 = load i32, i32* %i59, align 4
  %idxprom175 = sext i32 %100 to i64
  %arrayidx176 = getelementptr inbounds i8, i8* %99, i64 %idxprom175
  %101 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %101 to i32
  %xor178 = xor i32 %conv177, %conv174
  %conv179 = trunc i32 %xor178 to i8
  store i8 %conv179, i8* %arrayidx176, align 1
  br label %if.end

if.end:                                           ; preds = %if.then171, %if.then
  br label %if.end198

if.else:                                          ; preds = %for.end128
  %102 = load i32, i32* %i59, align 4
  %sub181 = sub nsw i32 %102, 1
  store i32 %sub181, i32* %j180, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc196, %if.else
  %103 = load i32, i32* %j180, align 4
  %cmp183 = icmp sge i32 %103, 0
  br i1 %cmp183, label %for.body185, label %for.end197

for.body185:                                      ; preds = %for.cond182
  %104 = load i32, i32* %j180, align 4
  %idxprom186 = sext i32 %104 to i64
  %arrayidx187 = getelementptr inbounds [21 x [21 x i8]], [21 x [21 x i8]]* %r, i64 0, i64 %idxprom186
  %105 = load i32, i32* %i59, align 4
  %idxprom188 = sext i32 %105 to i64
  %arrayidx189 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx187, i64 0, i64 %idxprom188
  %106 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %106 to i32
  %107 = load i8*, i8** %c.addr, align 8
  %108 = load i32, i32* %i59, align 4
  %idxprom191 = sext i32 %108 to i64
  %arrayidx192 = getelementptr inbounds i8, i8* %107, i64 %idxprom191
  %109 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %109 to i32
  %xor194 = xor i32 %conv193, %conv190
  %conv195 = trunc i32 %xor194 to i8
  store i8 %conv195, i8* %arrayidx192, align 1
  br label %for.inc196

for.inc196:                                       ; preds = %for.body185
  %110 = load i32, i32* %j180, align 4
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %j180, align 4
  br label %for.cond182

for.end197:                                       ; preds = %for.cond182
  br label %if.end198

if.end198:                                        ; preds = %for.end197, %if.end
  br label %for.inc199

for.inc199:                                       ; preds = %if.end198
  %111 = load i32, i32* %i59, align 4
  %inc200 = add nsw i32 %111, 1
  store i32 %inc200, i32* %i59, align 4
  br label %for.cond60

for.end201:                                       ; preds = %for.cond60
  %112 = load i8, i8* %A, align 1
  %113 = load i8, i8* %B, align 1
  %call202 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113)
  %conv203 = zext i8 %call202 to i32
  %114 = load i8*, i8** %c.addr, align 8
  store i8* %114, i8** %a.addr.i229, align 8
  %115 = load i8*, i8** %a.addr.i229, align 8
  store i8* %115, i8** %a.addr.i.i225, align 8
  store i8 (i8)* @id, i8 (i8)** %f.addr.i.i226, align 8
  store i32 0, i32* %i.i.i228, align 4
  br label %for.cond.i.i231

for.cond.i.i231:                                  ; preds = %for.body.i.i240, %for.end201
  %116 = load i32, i32* %i.i.i228, align 4
  %cmp.i.i230 = icmp sle i32 %116, 20
  br i1 %cmp.i.i230, label %for.body.i.i240, label %xors.exit241

for.body.i.i240:                                  ; preds = %for.cond.i.i231
  %117 = load i8 (i8)*, i8 (i8)** %f.addr.i.i226, align 8
  %118 = load i8*, i8** %a.addr.i.i225, align 8
  %119 = load i32, i32* %i.i.i228, align 4
  %idxprom.i.i232 = sext i32 %119 to i64
  %arrayidx.i.i233 = getelementptr inbounds i8, i8* %118, i64 %idxprom.i.i232
  %120 = load i8, i8* %arrayidx.i.i233, align 1
  %call.i.i234 = call zeroext i8 %117(i8 zeroext %120) #2
  %conv.i.i235 = zext i8 %call.i.i234 to i32
  %121 = load i8, i8* %result.i.i227, align 1
  %conv1.i.i236 = zext i8 %121 to i32
  %xor.i.i237 = xor i32 %conv1.i.i236, %conv.i.i235
  %conv2.i.i238 = trunc i32 %xor.i.i237 to i8
  store i8 %conv2.i.i238, i8* %result.i.i227, align 1
  %122 = load i32, i32* %i.i.i228, align 4
  %inc.i.i239 = add nsw i32 %122, 1
  store i32 %inc.i.i239, i32* %i.i.i228, align 4
  br label %for.cond.i.i231

xors.exit241:                                     ; preds = %for.cond.i.i231
  %123 = load i8, i8* %result.i.i227, align 1
  %conv205 = zext i8 %123 to i32
  %cmp206 = icmp eq i32 %conv203, %conv205
  call void @assert(i1 zeroext %cmp206)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
