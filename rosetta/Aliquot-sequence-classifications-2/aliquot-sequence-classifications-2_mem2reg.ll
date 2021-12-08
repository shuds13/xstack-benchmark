; ModuleID = 'aliquot-sequence-classifications-2.ll'
source_filename = "aliquot-sequence-classifications-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [38 x i8] c"\0AInteger : %llu, Type : %s, Series : \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%llu, \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Terminating\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Perfect\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Amicable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Aspiring\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Sociable\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Cyclic\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Non-Terminating\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Usage : %s <positive integer>\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @raiseTo(i64 %base, i64 %power) #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i64 %base, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i64 %power, metadata !18, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i64 1, metadata !19, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i64 0, metadata !20, metadata !DIExpression()), !dbg !17
  br label %for.cond, !dbg !21

for.cond:                                         ; preds = %for.inc, %entry
  %result.0 = phi i64 [ 1, %entry ], [ %mul, %for.inc ], !dbg !17
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !23
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !20, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i64 %result.0, metadata !19, metadata !DIExpression()), !dbg !17
  %cmp = icmp ult i64 %i.0, %power, !dbg !24
  br i1 %cmp, label %for.body, label %for.end, !dbg !26

for.body:                                         ; preds = %for.cond
  %mul = mul i64 %result.0, %base, !dbg !27
  call void @llvm.dbg.value(metadata i64 %mul, metadata !19, metadata !DIExpression()), !dbg !17
  br label %for.inc, !dbg !29

for.inc:                                          ; preds = %for.body
  %inc = add i64 %i.0, 1, !dbg !30
  call void @llvm.dbg.value(metadata i64 %inc, metadata !20, metadata !DIExpression()), !dbg !17
  br label %for.cond, !dbg !31, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  ret i64 %result.0, !dbg !34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @properDivisorSum(i64 %n) #0 !dbg !35 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 1, metadata !40, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 %n, metadata !41, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 0, metadata !42, metadata !DIExpression()), !dbg !39
  br label %while.cond, !dbg !43

while.cond:                                       ; preds = %while.body, %entry
  %count.0 = phi i64 [ 0, %entry ], [ %inc, %while.body ], !dbg !39
  %n.addr.0 = phi i64 [ %n, %entry ], [ %div, %while.body ]
  call void @llvm.dbg.value(metadata i64 %n.addr.0, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !42, metadata !DIExpression()), !dbg !39
  %rem = urem i64 %n.addr.0, 2, !dbg !44
  %cmp = icmp eq i64 %rem, 0, !dbg !45
  br i1 %cmp, label %while.body, label %while.end, !dbg !43

while.body:                                       ; preds = %while.cond
  %inc = add i64 %count.0, 1, !dbg !46
  call void @llvm.dbg.value(metadata i64 %inc, metadata !42, metadata !DIExpression()), !dbg !39
  %div = udiv i64 %n.addr.0, 2, !dbg !48
  call void @llvm.dbg.value(metadata i64 %div, metadata !38, metadata !DIExpression()), !dbg !39
  br label %while.cond, !dbg !43, !llvm.loop !49

while.end:                                        ; preds = %while.cond
  %cmp1 = icmp ne i64 %count.0, 0, !dbg !51
  br i1 %cmp1, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %while.end
  %add = add i64 %count.0, 1, !dbg !54
  %call = call i64 @raiseTo(i64 2, i64 %add), !dbg !55
  %sub = sub i64 %call, 1, !dbg !56
  %mul = mul i64 1, %sub, !dbg !57
  call void @llvm.dbg.value(metadata i64 %mul, metadata !40, metadata !DIExpression()), !dbg !39
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then, %while.end
  %prod.0 = phi i64 [ %mul, %if.then ], [ 1, %while.end ], !dbg !39
  call void @llvm.dbg.value(metadata i64 %prod.0, metadata !40, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 3, metadata !59, metadata !DIExpression()), !dbg !39
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i64 [ 3, %if.end ], [ %add25, %for.inc ], !dbg !62
  %prod.1 = phi i64 [ %prod.0, %if.end ], [ %prod.3, %for.inc ], !dbg !39
  %n.addr.1 = phi i64 [ %n.addr.0, %if.end ], [ %n.addr.2, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %n.addr.1, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 %prod.1, metadata !40, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !59, metadata !DIExpression()), !dbg !39
  %mul2 = mul i64 %i.0, %i.0, !dbg !63
  %cmp3 = icmp ule i64 %mul2, %n.addr.1, !dbg !65
  br i1 %cmp3, label %for.body, label %for.end, !dbg !66

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 0, metadata !42, metadata !DIExpression()), !dbg !39
  br label %while.cond4, !dbg !67

while.cond4:                                      ; preds = %while.body7, %for.body
  %count.1 = phi i64 [ 0, %for.body ], [ %inc8, %while.body7 ], !dbg !69
  %n.addr.2 = phi i64 [ %n.addr.1, %for.body ], [ %div9, %while.body7 ]
  call void @llvm.dbg.value(metadata i64 %n.addr.2, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !42, metadata !DIExpression()), !dbg !39
  %rem5 = urem i64 %n.addr.2, %i.0, !dbg !70
  %cmp6 = icmp eq i64 %rem5, 0, !dbg !71
  br i1 %cmp6, label %while.body7, label %while.end10, !dbg !67

while.body7:                                      ; preds = %while.cond4
  %inc8 = add i64 %count.1, 1, !dbg !72
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !42, metadata !DIExpression()), !dbg !39
  %div9 = udiv i64 %n.addr.2, %i.0, !dbg !74
  call void @llvm.dbg.value(metadata i64 %div9, metadata !38, metadata !DIExpression()), !dbg !39
  br label %while.cond4, !dbg !67, !llvm.loop !75

while.end10:                                      ; preds = %while.cond4
  %cmp11 = icmp eq i64 %count.1, 1, !dbg !77
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !79

if.then12:                                        ; preds = %while.end10
  %add13 = add i64 %i.0, 1, !dbg !80
  %mul14 = mul i64 %prod.1, %add13, !dbg !81
  call void @llvm.dbg.value(metadata i64 %mul14, metadata !40, metadata !DIExpression()), !dbg !39
  br label %if.end24, !dbg !82

if.else:                                          ; preds = %while.end10
  %cmp15 = icmp ugt i64 %count.1, 1, !dbg !83
  br i1 %cmp15, label %if.then16, label %if.end23, !dbg !85

if.then16:                                        ; preds = %if.else
  %add17 = add i64 %count.1, 1, !dbg !86
  %call18 = call i64 @raiseTo(i64 %i.0, i64 %add17), !dbg !87
  %sub19 = sub i64 %call18, 1, !dbg !88
  %sub20 = sub i64 %i.0, 1, !dbg !89
  %div21 = udiv i64 %sub19, %sub20, !dbg !90
  %mul22 = mul i64 %prod.1, %div21, !dbg !91
  call void @llvm.dbg.value(metadata i64 %mul22, metadata !40, metadata !DIExpression()), !dbg !39
  br label %if.end23, !dbg !92

if.end23:                                         ; preds = %if.then16, %if.else
  %prod.2 = phi i64 [ %mul22, %if.then16 ], [ %prod.1, %if.else ], !dbg !39
  call void @llvm.dbg.value(metadata i64 %prod.2, metadata !40, metadata !DIExpression()), !dbg !39
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  %prod.3 = phi i64 [ %mul14, %if.then12 ], [ %prod.2, %if.end23 ], !dbg !93
  call void @llvm.dbg.value(metadata i64 %prod.3, metadata !40, metadata !DIExpression()), !dbg !39
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %if.end24
  %add25 = add i64 %i.0, 2, !dbg !95
  call void @llvm.dbg.value(metadata i64 %add25, metadata !59, metadata !DIExpression()), !dbg !39
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  %cmp26 = icmp ugt i64 %n.addr.1, 2, !dbg !99
  br i1 %cmp26, label %if.then27, label %if.end30, !dbg !101

if.then27:                                        ; preds = %for.end
  %add28 = add i64 %n.addr.1, 1, !dbg !102
  %mul29 = mul i64 %prod.1, %add28, !dbg !103
  call void @llvm.dbg.value(metadata i64 %mul29, metadata !40, metadata !DIExpression()), !dbg !39
  br label %if.end30, !dbg !104

if.end30:                                         ; preds = %if.then27, %for.end
  %prod.4 = phi i64 [ %mul29, %if.then27 ], [ %prod.1, %for.end ], !dbg !39
  call void @llvm.dbg.value(metadata i64 %prod.4, metadata !40, metadata !DIExpression()), !dbg !39
  %sub31 = sub i64 %prod.4, %n, !dbg !105
  ret i64 %sub31, !dbg !106
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSeries(i64* %arr, i32 %size, i8* %type) #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i64* %arr, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %size, metadata !114, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %type, metadata !115, metadata !DIExpression()), !dbg !113
  %arrayidx = getelementptr inbounds i64, i64* %arr, i64 0, !dbg !116
  %0 = load i64, i64* %arrayidx, align 8, !dbg !116
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %0, i8* %type), !dbg !117
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !113
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !121
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !118, metadata !DIExpression()), !dbg !113
  %sub = sub nsw i32 %size, 1, !dbg !122
  %cmp = icmp slt i32 %i.0, %sub, !dbg !124
  br i1 %cmp, label %for.body, label %for.end, !dbg !125

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !126
  %arrayidx1 = getelementptr inbounds i64, i64* %arr, i64 %idxprom, !dbg !126
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !126
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %1), !dbg !127
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !128
  call void @llvm.dbg.value(metadata i32 %inc, metadata !118, metadata !DIExpression()), !dbg !113
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  %idxprom3 = sext i32 %i.0 to i64, !dbg !132
  %arrayidx4 = getelementptr inbounds i64, i64* %arr, i64 %idxprom3, !dbg !132
  %2 = load i64, i64* %arrayidx4, align 8, !dbg !132
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %2), !dbg !133
  ret void, !dbg !134
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @aliquotClassifier(i64 %n) #0 !dbg !135 {
entry:
  %arr = alloca [16 x i64], align 16
  call void @llvm.dbg.value(metadata i64 %n, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [16 x i64]* %arr, metadata !140, metadata !DIExpression()), !dbg !144
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 0, !dbg !145
  store i64 %n, i64* %arrayidx, align 16, !dbg !146
  call void @llvm.dbg.value(metadata i32 1, metadata !147, metadata !DIExpression()), !dbg !139
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc63, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc64, %for.inc63 ], !dbg !150
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !147, metadata !DIExpression()), !dbg !139
  %cmp = icmp slt i32 %i.0, 16, !dbg !151
  br i1 %cmp, label %for.body, label %for.end65, !dbg !153

for.body:                                         ; preds = %for.cond
  %sub = sub nsw i32 %i.0, 1, !dbg !154
  %idxprom = sext i32 %sub to i64, !dbg !156
  %arrayidx1 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom, !dbg !156
  %0 = load i64, i64* %arrayidx1, align 8, !dbg !156
  %call = call i64 @properDivisorSum(i64 %0), !dbg !157
  %idxprom2 = sext i32 %i.0 to i64, !dbg !158
  %arrayidx3 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom2, !dbg !158
  store i64 %call, i64* %arrayidx3, align 8, !dbg !159
  %idxprom4 = sext i32 %i.0 to i64, !dbg !160
  %arrayidx5 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom4, !dbg !160
  %1 = load i64, i64* %arrayidx5, align 8, !dbg !160
  %cmp6 = icmp eq i64 %1, 0, !dbg !162
  br i1 %cmp6, label %if.then, label %lor.lhs.false, !dbg !163

lor.lhs.false:                                    ; preds = %for.body
  %idxprom7 = sext i32 %i.0 to i64, !dbg !164
  %arrayidx8 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom7, !dbg !164
  %2 = load i64, i64* %arrayidx8, align 8, !dbg !164
  %cmp9 = icmp eq i64 %2, %n, !dbg !165
  br i1 %cmp9, label %if.then, label %lor.lhs.false10, !dbg !166

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %idxprom11 = sext i32 %i.0 to i64, !dbg !167
  %arrayidx12 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom11, !dbg !167
  %3 = load i64, i64* %arrayidx12, align 8, !dbg !167
  %sub13 = sub nsw i32 %i.0, 1, !dbg !168
  %idxprom14 = sext i32 %sub13 to i64, !dbg !169
  %arrayidx15 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom14, !dbg !169
  %4 = load i64, i64* %arrayidx15, align 8, !dbg !169
  %cmp16 = icmp eq i64 %3, %4, !dbg !170
  br i1 %cmp16, label %land.lhs.true, label %if.end, !dbg !171

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %idxprom17 = sext i32 %i.0 to i64, !dbg !172
  %arrayidx18 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom17, !dbg !172
  %5 = load i64, i64* %arrayidx18, align 8, !dbg !172
  %cmp19 = icmp ne i64 %5, %n, !dbg !173
  br i1 %cmp19, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %for.body
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 0, !dbg !175
  %add = add nsw i32 %i.0, 1, !dbg !177
  %idxprom20 = sext i32 %i.0 to i64, !dbg !178
  %arrayidx21 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom20, !dbg !178
  %6 = load i64, i64* %arrayidx21, align 8, !dbg !178
  %cmp22 = icmp eq i64 %6, 0, !dbg !179
  br i1 %cmp22, label %cond.true, label %cond.false, !dbg !180

cond.true:                                        ; preds = %if.then
  br label %cond.end49, !dbg !180

cond.false:                                       ; preds = %if.then
  %idxprom23 = sext i32 %i.0 to i64, !dbg !181
  %arrayidx24 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom23, !dbg !181
  %7 = load i64, i64* %arrayidx24, align 8, !dbg !181
  %cmp25 = icmp eq i64 %7, %n, !dbg !182
  br i1 %cmp25, label %land.lhs.true26, label %cond.false29, !dbg !183

land.lhs.true26:                                  ; preds = %cond.false
  %cmp27 = icmp eq i32 %i.0, 1, !dbg !184
  br i1 %cmp27, label %cond.true28, label %cond.false29, !dbg !185

cond.true28:                                      ; preds = %land.lhs.true26
  br label %cond.end47, !dbg !185

cond.false29:                                     ; preds = %land.lhs.true26, %cond.false
  %idxprom30 = sext i32 %i.0 to i64, !dbg !186
  %arrayidx31 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom30, !dbg !186
  %8 = load i64, i64* %arrayidx31, align 8, !dbg !186
  %cmp32 = icmp eq i64 %8, %n, !dbg !187
  br i1 %cmp32, label %land.lhs.true33, label %cond.false36, !dbg !188

land.lhs.true33:                                  ; preds = %cond.false29
  %cmp34 = icmp eq i32 %i.0, 2, !dbg !189
  br i1 %cmp34, label %cond.true35, label %cond.false36, !dbg !190

cond.true35:                                      ; preds = %land.lhs.true33
  br label %cond.end, !dbg !190

cond.false36:                                     ; preds = %land.lhs.true33, %cond.false29
  %idxprom37 = sext i32 %i.0 to i64, !dbg !191
  %arrayidx38 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom37, !dbg !191
  %9 = load i64, i64* %arrayidx38, align 8, !dbg !191
  %sub39 = sub nsw i32 %i.0, 1, !dbg !192
  %idxprom40 = sext i32 %sub39 to i64, !dbg !193
  %arrayidx41 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom40, !dbg !193
  %10 = load i64, i64* %arrayidx41, align 8, !dbg !193
  %cmp42 = icmp eq i64 %9, %10, !dbg !194
  br i1 %cmp42, label %land.rhs, label %land.end, !dbg !195

land.rhs:                                         ; preds = %cond.false36
  %idxprom43 = sext i32 %i.0 to i64, !dbg !196
  %arrayidx44 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom43, !dbg !196
  %11 = load i64, i64* %arrayidx44, align 8, !dbg !196
  %cmp45 = icmp ne i64 %11, %n, !dbg !197
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false36
  %12 = phi i1 [ false, %cond.false36 ], [ %cmp45, %land.rhs ], !dbg !198
  %13 = zext i1 %12 to i64, !dbg !199
  %cond = select i1 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !199
  br label %cond.end, !dbg !190

cond.end:                                         ; preds = %land.end, %cond.true35
  %cond46 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %cond.true35 ], [ %cond, %land.end ], !dbg !190
  br label %cond.end47, !dbg !185

cond.end47:                                       ; preds = %cond.end, %cond.true28
  %cond48 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %cond.true28 ], [ %cond46, %cond.end ], !dbg !185
  br label %cond.end49, !dbg !180

cond.end49:                                       ; preds = %cond.end47, %cond.true
  %cond50 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %cond.true ], [ %cond48, %cond.end47 ], !dbg !180
  call void @printSeries(i64* %arraydecay, i32 %add, i8* %cond50), !dbg !200
  br label %return, !dbg !201

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false10
  call void @llvm.dbg.value(metadata i32 1, metadata !202, metadata !DIExpression()), !dbg !139
  br label %for.cond51, !dbg !203

for.cond51:                                       ; preds = %for.inc, %if.end
  %j.0 = phi i32 [ 1, %if.end ], [ %inc, %for.inc ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !202, metadata !DIExpression()), !dbg !139
  %cmp52 = icmp slt i32 %j.0, %i.0, !dbg !206
  br i1 %cmp52, label %for.body53, label %for.end, !dbg !208

for.body53:                                       ; preds = %for.cond51
  %idxprom54 = sext i32 %j.0 to i64, !dbg !209
  %arrayidx55 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom54, !dbg !209
  %14 = load i64, i64* %arrayidx55, align 8, !dbg !209
  %idxprom56 = sext i32 %i.0 to i64, !dbg !212
  %arrayidx57 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 %idxprom56, !dbg !212
  %15 = load i64, i64* %arrayidx57, align 8, !dbg !212
  %cmp58 = icmp eq i64 %14, %15, !dbg !213
  br i1 %cmp58, label %if.then59, label %if.end62, !dbg !214

if.then59:                                        ; preds = %for.body53
  %arraydecay60 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 0, !dbg !215
  %add61 = add nsw i32 %i.0, 1, !dbg !217
  call void @printSeries(i64* %arraydecay60, i32 %add61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !218
  br label %return, !dbg !219

if.end62:                                         ; preds = %for.body53
  br label %for.inc, !dbg !220

for.inc:                                          ; preds = %if.end62
  %inc = add nsw i32 %j.0, 1, !dbg !221
  call void @llvm.dbg.value(metadata i32 %inc, metadata !202, metadata !DIExpression()), !dbg !139
  br label %for.cond51, !dbg !222, !llvm.loop !223

for.end:                                          ; preds = %for.cond51
  br label %for.inc63, !dbg !225

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %i.0, 1, !dbg !226
  call void @llvm.dbg.value(metadata i32 %inc64, metadata !147, metadata !DIExpression()), !dbg !139
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end65:                                        ; preds = %for.cond
  %arraydecay66 = getelementptr inbounds [16 x i64], [16 x i64]* %arr, i64 0, i64 0, !dbg !230
  %add67 = add nsw i32 %i.0, 1, !dbg !231
  call void @printSeries(i64* %arraydecay66, i32 %add67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)), !dbg !232
  br label %return, !dbg !233

return:                                           ; preds = %for.end65, %if.then59, %cond.end49
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @processFile(i8* %fileName) #0 !dbg !234 {
entry:
  %str = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %fileName, metadata !237, metadata !DIExpression()), !dbg !238
  %call = call %struct._IO_FILE* @fopen(i8* %fileName, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)), !dbg !239
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !240, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata [21 x i8]* %str, metadata !300, metadata !DIExpression()), !dbg !304
  br label %while.cond, !dbg !305

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %str, i64 0, i64 0, !dbg !306
  %call1 = call i8* @fgets(i8* %arraydecay, i32 21, %struct._IO_FILE* %call), !dbg !307
  %cmp = icmp ne i8* %call1, null, !dbg !308
  br i1 %cmp, label %while.body, label %while.end, !dbg !305

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [21 x i8], [21 x i8]* %str, i64 0, i64 0, !dbg !309
  %call3 = call i64 @strtoull(i8* %arraydecay2, i8** null, i32 10) #5, !dbg !310
  call void @aliquotClassifier(i64 %call3), !dbg !311
  br label %while.cond, !dbg !305, !llvm.loop !312

while.end:                                        ; preds = %while.cond
  %call4 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !314
  ret void, !dbg !315
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i64 @strtoull(i8*, i8**, i32) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argC, i8** %argV) #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata i32 %argC, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i8** %argV, metadata !321, metadata !DIExpression()), !dbg !320
  %cmp = icmp ne i32 %argC, 2, !dbg !322
  br i1 %cmp, label %if.then, label %if.else, !dbg !324

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argV, i64 0, !dbg !325
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %0), !dbg !326
  br label %if.end9, !dbg !326

if.else:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argV, i64 1, !dbg !327
  %1 = load i8*, i8** %arrayidx1, align 8, !dbg !327
  %call2 = call i8* @strchr(i8* %1, i32 46) #6, !dbg !330
  %cmp3 = icmp ne i8* %call2, null, !dbg !331
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !332

if.then4:                                         ; preds = %if.else
  %arrayidx5 = getelementptr inbounds i8*, i8** %argV, i64 1, !dbg !333
  %2 = load i8*, i8** %arrayidx5, align 8, !dbg !333
  call void @processFile(i8* %2), !dbg !334
  br label %if.end, !dbg !334

if.else6:                                         ; preds = %if.else
  %arrayidx7 = getelementptr inbounds i8*, i8** %argV, i64 1, !dbg !335
  %3 = load i8*, i8** %arrayidx7, align 8, !dbg !335
  %call8 = call i64 @strtoull(i8* %3, i8** null, i32 10) #5, !dbg !336
  call void @aliquotClassifier(i64 %call8), !dbg !337
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  ret i32 0, !dbg !338
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "aliquot-sequence-classifications-2.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Aliquot-sequence-classifications-2")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!12 = distinct !DISubprogram(name: "raiseTo", scope: !1, file: !1, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !15}
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DILocalVariable(name: "base", arg: 1, scope: !12, file: !1, line: 5, type: !15)
!17 = !DILocation(line: 0, scope: !12)
!18 = !DILocalVariable(name: "power", arg: 2, scope: !12, file: !1, line: 5, type: !15)
!19 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 6, type: !15)
!20 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 6, type: !15)
!21 = !DILocation(line: 7, column: 10, scope: !22)
!22 = distinct !DILexicalBlock(scope: !12, file: !1, line: 7, column: 5)
!23 = !DILocation(line: 0, scope: !22)
!24 = !DILocation(line: 7, column: 16, scope: !25)
!25 = distinct !DILexicalBlock(scope: !22, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 7, column: 5, scope: !22)
!27 = !DILocation(line: 8, column: 15, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 7, column: 28)
!29 = !DILocation(line: 9, column: 5, scope: !28)
!30 = !DILocation(line: 7, column: 24, scope: !25)
!31 = !DILocation(line: 7, column: 5, scope: !25)
!32 = distinct !{!32, !26, !33}
!33 = !DILocation(line: 9, column: 5, scope: !22)
!34 = !DILocation(line: 10, column: 5, scope: !12)
!35 = distinct !DISubprogram(name: "properDivisorSum", scope: !1, file: !1, line: 13, type: !36, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!15, !15}
!38 = !DILocalVariable(name: "n", arg: 1, scope: !35, file: !1, line: 13, type: !15)
!39 = !DILocation(line: 0, scope: !35)
!40 = !DILocalVariable(name: "prod", scope: !35, file: !1, line: 14, type: !15)
!41 = !DILocalVariable(name: "temp", scope: !35, file: !1, line: 15, type: !15)
!42 = !DILocalVariable(name: "count", scope: !35, file: !1, line: 15, type: !15)
!43 = !DILocation(line: 17, column: 2, scope: !35)
!44 = !DILocation(line: 17, column: 9, scope: !35)
!45 = !DILocation(line: 17, column: 12, scope: !35)
!46 = !DILocation(line: 18, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !35, file: !1, line: 17, column: 17)
!48 = !DILocation(line: 19, column: 5, scope: !47)
!49 = distinct !{!49, !43, !50}
!50 = !DILocation(line: 20, column: 2, scope: !35)
!51 = !DILocation(line: 22, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !35, file: !1, line: 22, column: 5)
!53 = !DILocation(line: 22, column: 5, scope: !35)
!54 = !DILocation(line: 23, column: 28, scope: !52)
!55 = !DILocation(line: 23, column: 12, scope: !52)
!56 = !DILocation(line: 23, column: 33, scope: !52)
!57 = !DILocation(line: 23, column: 8, scope: !52)
!58 = !DILocation(line: 23, column: 3, scope: !52)
!59 = !DILocalVariable(name: "i", scope: !35, file: !1, line: 15, type: !15)
!60 = !DILocation(line: 25, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !35, file: !1, line: 25, column: 2)
!62 = !DILocation(line: 0, scope: !61)
!63 = !DILocation(line: 25, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 25, column: 2)
!65 = !DILocation(line: 25, column: 13, scope: !64)
!66 = !DILocation(line: 25, column: 2, scope: !61)
!67 = !DILocation(line: 28, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 25, column: 22)
!69 = !DILocation(line: 0, scope: !68)
!70 = !DILocation(line: 28, column: 10, scope: !68)
!71 = !DILocation(line: 28, column: 13, scope: !68)
!72 = !DILocation(line: 29, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 28, column: 18)
!74 = !DILocation(line: 30, column: 6, scope: !73)
!75 = distinct !{!75, !67, !76}
!76 = !DILocation(line: 31, column: 3, scope: !68)
!77 = !DILocation(line: 33, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !68, file: !1, line: 33, column: 6)
!79 = !DILocation(line: 33, column: 6, scope: !68)
!80 = !DILocation(line: 34, column: 14, scope: !78)
!81 = !DILocation(line: 34, column: 9, scope: !78)
!82 = !DILocation(line: 34, column: 4, scope: !78)
!83 = !DILocation(line: 35, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 35, column: 11)
!85 = !DILocation(line: 35, column: 11, scope: !78)
!86 = !DILocation(line: 36, column: 30, scope: !84)
!87 = !DILocation(line: 36, column: 14, scope: !84)
!88 = !DILocation(line: 36, column: 35, scope: !84)
!89 = !DILocation(line: 36, column: 42, scope: !84)
!90 = !DILocation(line: 36, column: 39, scope: !84)
!91 = !DILocation(line: 36, column: 9, scope: !84)
!92 = !DILocation(line: 36, column: 4, scope: !84)
!93 = !DILocation(line: 0, scope: !78)
!94 = !DILocation(line: 37, column: 2, scope: !68)
!95 = !DILocation(line: 25, column: 18, scope: !64)
!96 = !DILocation(line: 25, column: 2, scope: !64)
!97 = distinct !{!97, !66, !98}
!98 = !DILocation(line: 37, column: 2, scope: !61)
!99 = !DILocation(line: 39, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !35, file: !1, line: 39, column: 5)
!101 = !DILocation(line: 39, column: 5, scope: !35)
!102 = !DILocation(line: 40, column: 13, scope: !100)
!103 = !DILocation(line: 40, column: 8, scope: !100)
!104 = !DILocation(line: 40, column: 3, scope: !100)
!105 = !DILocation(line: 42, column: 14, scope: !35)
!106 = !DILocation(line: 42, column: 2, scope: !35)
!107 = distinct !DISubprogram(name: "printSeries", scope: !1, file: !1, line: 45, type: !108, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, !111, !6}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !DILocalVariable(name: "arr", arg: 1, scope: !107, file: !1, line: 45, type: !110)
!113 = !DILocation(line: 0, scope: !107)
!114 = !DILocalVariable(name: "size", arg: 2, scope: !107, file: !1, line: 45, type: !111)
!115 = !DILocalVariable(name: "type", arg: 3, scope: !107, file: !1, line: 45, type: !6)
!116 = !DILocation(line: 48, column: 50, scope: !107)
!117 = !DILocation(line: 48, column: 2, scope: !107)
!118 = !DILocalVariable(name: "i", scope: !107, file: !1, line: 46, type: !111)
!119 = !DILocation(line: 50, column: 6, scope: !120)
!120 = distinct !DILexicalBlock(scope: !107, file: !1, line: 50, column: 2)
!121 = !DILocation(line: 0, scope: !120)
!122 = !DILocation(line: 50, column: 16, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 50, column: 2)
!124 = !DILocation(line: 50, column: 11, scope: !123)
!125 = !DILocation(line: 50, column: 2, scope: !120)
!126 = !DILocation(line: 51, column: 19, scope: !123)
!127 = !DILocation(line: 51, column: 3, scope: !123)
!128 = !DILocation(line: 50, column: 20, scope: !123)
!129 = !DILocation(line: 50, column: 2, scope: !123)
!130 = distinct !{!130, !125, !131}
!131 = !DILocation(line: 51, column: 25, scope: !120)
!132 = !DILocation(line: 52, column: 16, scope: !107)
!133 = !DILocation(line: 52, column: 2, scope: !107)
!134 = !DILocation(line: 53, column: 1, scope: !107)
!135 = distinct !DISubprogram(name: "aliquotClassifier", scope: !1, file: !1, line: 55, type: !136, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !15}
!138 = !DILocalVariable(name: "n", arg: 1, scope: !135, file: !1, line: 55, type: !15)
!139 = !DILocation(line: 0, scope: !135)
!140 = !DILocalVariable(name: "arr", scope: !135, file: !1, line: 56, type: !141)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 16)
!144 = !DILocation(line: 56, column: 21, scope: !135)
!145 = !DILocation(line: 59, column: 2, scope: !135)
!146 = !DILocation(line: 59, column: 9, scope: !135)
!147 = !DILocalVariable(name: "i", scope: !135, file: !1, line: 57, type: !111)
!148 = !DILocation(line: 61, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !135, file: !1, line: 61, column: 2)
!150 = !DILocation(line: 0, scope: !149)
!151 = !DILocation(line: 61, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 61, column: 2)
!153 = !DILocation(line: 61, column: 2, scope: !149)
!154 = !DILocation(line: 62, column: 34, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 61, column: 19)
!156 = !DILocation(line: 62, column: 29, scope: !155)
!157 = !DILocation(line: 62, column: 12, scope: !155)
!158 = !DILocation(line: 62, column: 3, scope: !155)
!159 = !DILocation(line: 62, column: 10, scope: !155)
!160 = !DILocation(line: 64, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 64, column: 6)
!162 = !DILocation(line: 64, column: 12, scope: !161)
!163 = !DILocation(line: 64, column: 15, scope: !161)
!164 = !DILocation(line: 64, column: 17, scope: !161)
!165 = !DILocation(line: 64, column: 23, scope: !161)
!166 = !DILocation(line: 64, column: 26, scope: !161)
!167 = !DILocation(line: 64, column: 29, scope: !161)
!168 = !DILocation(line: 64, column: 42, scope: !161)
!169 = !DILocation(line: 64, column: 37, scope: !161)
!170 = !DILocation(line: 64, column: 35, scope: !161)
!171 = !DILocation(line: 64, column: 46, scope: !161)
!172 = !DILocation(line: 64, column: 49, scope: !161)
!173 = !DILocation(line: 64, column: 55, scope: !161)
!174 = !DILocation(line: 64, column: 6, scope: !155)
!175 = !DILocation(line: 65, column: 16, scope: !176)
!176 = distinct !DILexicalBlock(scope: !161, file: !1, line: 64, column: 60)
!177 = !DILocation(line: 65, column: 21, scope: !176)
!178 = !DILocation(line: 65, column: 25, scope: !176)
!179 = !DILocation(line: 65, column: 31, scope: !176)
!180 = !DILocation(line: 65, column: 24, scope: !176)
!181 = !DILocation(line: 65, column: 51, scope: !176)
!182 = !DILocation(line: 65, column: 57, scope: !176)
!183 = !DILocation(line: 65, column: 61, scope: !176)
!184 = !DILocation(line: 65, column: 65, scope: !176)
!185 = !DILocation(line: 65, column: 50, scope: !176)
!186 = !DILocation(line: 65, column: 81, scope: !176)
!187 = !DILocation(line: 65, column: 87, scope: !176)
!188 = !DILocation(line: 65, column: 91, scope: !176)
!189 = !DILocation(line: 65, column: 95, scope: !176)
!190 = !DILocation(line: 65, column: 80, scope: !176)
!191 = !DILocation(line: 65, column: 112, scope: !176)
!192 = !DILocation(line: 65, column: 125, scope: !176)
!193 = !DILocation(line: 65, column: 120, scope: !176)
!194 = !DILocation(line: 65, column: 118, scope: !176)
!195 = !DILocation(line: 65, column: 129, scope: !176)
!196 = !DILocation(line: 65, column: 132, scope: !176)
!197 = !DILocation(line: 65, column: 138, scope: !176)
!198 = !DILocation(line: 0, scope: !176)
!199 = !DILocation(line: 65, column: 111, scope: !176)
!200 = !DILocation(line: 65, column: 4, scope: !176)
!201 = !DILocation(line: 66, column: 4, scope: !176)
!202 = !DILocalVariable(name: "j", scope: !135, file: !1, line: 57, type: !111)
!203 = !DILocation(line: 69, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !155, file: !1, line: 69, column: 3)
!205 = !DILocation(line: 0, scope: !204)
!206 = !DILocation(line: 69, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 69, column: 3)
!208 = !DILocation(line: 69, column: 3, scope: !204)
!209 = !DILocation(line: 70, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 70, column: 7)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 69, column: 19)
!212 = !DILocation(line: 70, column: 15, scope: !210)
!213 = !DILocation(line: 70, column: 13, scope: !210)
!214 = !DILocation(line: 70, column: 7, scope: !211)
!215 = !DILocation(line: 71, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !1, line: 70, column: 22)
!217 = !DILocation(line: 71, column: 22, scope: !216)
!218 = !DILocation(line: 71, column: 5, scope: !216)
!219 = !DILocation(line: 72, column: 5, scope: !216)
!220 = !DILocation(line: 74, column: 3, scope: !211)
!221 = !DILocation(line: 69, column: 16, scope: !207)
!222 = !DILocation(line: 69, column: 3, scope: !207)
!223 = distinct !{!223, !208, !224}
!224 = !DILocation(line: 74, column: 3, scope: !204)
!225 = !DILocation(line: 75, column: 2, scope: !155)
!226 = !DILocation(line: 61, column: 16, scope: !152)
!227 = !DILocation(line: 61, column: 2, scope: !152)
!228 = distinct !{!228, !153, !229}
!229 = !DILocation(line: 75, column: 2, scope: !149)
!230 = !DILocation(line: 77, column: 14, scope: !135)
!231 = !DILocation(line: 77, column: 19, scope: !135)
!232 = !DILocation(line: 77, column: 2, scope: !135)
!233 = !DILocation(line: 78, column: 1, scope: !135)
!234 = distinct !DISubprogram(name: "processFile", scope: !1, file: !1, line: 80, type: !235, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !6}
!237 = !DILocalVariable(name: "fileName", arg: 1, scope: !234, file: !1, line: 80, type: !6)
!238 = !DILocation(line: 0, scope: !234)
!239 = !DILocation(line: 81, column: 13, scope: !234)
!240 = !DILocalVariable(name: "fp", scope: !234, file: !1, line: 81, type: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !243, line: 7, baseType: !244)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !245, line: 49, size: 1728, elements: !246)
!245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !262, !264, !265, !266, !270, !272, !274, !278, !281, !283, !286, !289, !290, !291, !295, !296}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !244, file: !245, line: 51, baseType: !111, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !244, file: !245, line: 54, baseType: !6, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !244, file: !245, line: 55, baseType: !6, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !244, file: !245, line: 56, baseType: !6, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !244, file: !245, line: 57, baseType: !6, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !244, file: !245, line: 58, baseType: !6, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !244, file: !245, line: 59, baseType: !6, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !244, file: !245, line: 60, baseType: !6, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !244, file: !245, line: 61, baseType: !6, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !244, file: !245, line: 64, baseType: !6, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !244, file: !245, line: 65, baseType: !6, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !244, file: !245, line: 66, baseType: !6, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !244, file: !245, line: 68, baseType: !260, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !245, line: 36, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !244, file: !245, line: 70, baseType: !263, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !244, file: !245, line: 72, baseType: !111, size: 32, offset: 896)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !244, file: !245, line: 73, baseType: !111, size: 32, offset: 928)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !244, file: !245, line: 74, baseType: !267, size: 64, offset: 960)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !268, line: 152, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!269 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !244, file: !245, line: 77, baseType: !271, size: 16, offset: 1024)
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !244, file: !245, line: 78, baseType: !273, size: 8, offset: 1040)
!273 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !244, file: !245, line: 79, baseType: !275, size: 8, offset: 1048)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 1)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !244, file: !245, line: 81, baseType: !279, size: 64, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !245, line: 43, baseType: null)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !244, file: !245, line: 89, baseType: !282, size: 64, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !268, line: 153, baseType: !269)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !244, file: !245, line: 91, baseType: !284, size: 64, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !245, line: 37, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !244, file: !245, line: 92, baseType: !287, size: 64, offset: 1280)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !245, line: 38, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !244, file: !245, line: 93, baseType: !263, size: 64, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !244, file: !245, line: 94, baseType: !4, size: 64, offset: 1408)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !244, file: !245, line: 95, baseType: !292, size: 64, offset: 1472)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !293, line: 46, baseType: !294)
!293 = !DIFile(filename: "/u/NAS_SCRATCH/yc0769/xstack/xstack-installs/llvm-install-debug/lib/clang/10.0.1/include/stddef.h", directory: "")
!294 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !244, file: !245, line: 96, baseType: !111, size: 32, offset: 1536)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !244, file: !245, line: 98, baseType: !297, size: 160, offset: 1568)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 20)
!300 = !DILocalVariable(name: "str", scope: !234, file: !1, line: 82, type: !301)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 21)
!304 = !DILocation(line: 82, column: 7, scope: !234)
!305 = !DILocation(line: 84, column: 2, scope: !234)
!306 = !DILocation(line: 84, column: 14, scope: !234)
!307 = !DILocation(line: 84, column: 8, scope: !234)
!308 = !DILocation(line: 84, column: 24, scope: !234)
!309 = !DILocation(line: 85, column: 30, scope: !234)
!310 = !DILocation(line: 85, column: 21, scope: !234)
!311 = !DILocation(line: 85, column: 3, scope: !234)
!312 = distinct !{!312, !305, !313}
!313 = !DILocation(line: 85, column: 50, scope: !234)
!314 = !DILocation(line: 87, column: 2, scope: !234)
!315 = !DILocation(line: 88, column: 1, scope: !234)
!316 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 90, type: !317, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!317 = !DISubroutineType(types: !318)
!318 = !{!111, !111, !5}
!319 = !DILocalVariable(name: "argC", arg: 1, scope: !316, file: !1, line: 90, type: !111)
!320 = !DILocation(line: 0, scope: !316)
!321 = !DILocalVariable(name: "argV", arg: 2, scope: !316, file: !1, line: 90, type: !5)
!322 = !DILocation(line: 92, column: 12, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !1, line: 92, column: 8)
!324 = !DILocation(line: 92, column: 8, scope: !316)
!325 = !DILocation(line: 93, column: 42, scope: !323)
!326 = !DILocation(line: 93, column: 3, scope: !323)
!327 = !DILocation(line: 95, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 95, column: 6)
!329 = distinct !DILexicalBlock(scope: !323, file: !1, line: 94, column: 6)
!330 = !DILocation(line: 95, column: 6, scope: !328)
!331 = !DILocation(line: 95, column: 25, scope: !328)
!332 = !DILocation(line: 95, column: 6, scope: !329)
!333 = !DILocation(line: 96, column: 16, scope: !328)
!334 = !DILocation(line: 96, column: 4, scope: !328)
!335 = !DILocation(line: 98, column: 31, scope: !328)
!336 = !DILocation(line: 98, column: 22, scope: !328)
!337 = !DILocation(line: 98, column: 4, scope: !328)
!338 = !DILocation(line: 100, column: 2, scope: !316)
