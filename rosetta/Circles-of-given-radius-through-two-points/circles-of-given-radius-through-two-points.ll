; ModuleID = 'circles-of-given-radius-through-two-points.c'
source_filename = "circles-of-given-radius-through-two-points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { double, double }

@.str = private unnamed_addr constant [45 x i8] c"\0ANo circles can be drawn through (%.4f,%.4f)\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\0AInfinitely many circles can be drawn through (%.4f,%.4f)\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"\0AGiven points are opposite ends of a diameter of the circle with center (%.4f,%.4f) and radius %.4f\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"\0AGiven points are farther away from each other than a diameter of a circle with radius %.4f\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\0ATwo circles are possible.\00", align 1
@.str.5 = private unnamed_addr constant [99 x i8] c"\0ACircle C1 with center (%.4f,%.4f), radius %.4f and Circle C2 with center (%.4f,%.4f), radius %.4f\00", align 1
@__const.main.cases = private unnamed_addr constant [10 x %struct.point] [%struct.point { double 1.234000e-01, double 9.876000e-01 }, %struct.point { double 8.765000e-01, double 2.345000e-01 }, %struct.point { double 0.000000e+00, double 2.000000e+00 }, %struct.point zeroinitializer, %struct.point { double 1.234000e-01, double 9.876000e-01 }, %struct.point { double 1.234000e-01, double 9.876000e-01 }, %struct.point { double 1.234000e-01, double 9.876000e-01 }, %struct.point { double 8.765000e-01, double 2.345000e-01 }, %struct.point { double 1.234000e-01, double 9.876000e-01 }, %struct.point { double 1.234000e-01, double 9.876000e-01 }], align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"\0ACase %d)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @distance(double %p1.coerce0, double %p1.coerce1, double %p2.coerce0, double %p2.coerce1) #0 !dbg !7 {
entry:
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %0 = bitcast %struct.point* %p1 to { double, double }*
  %1 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 0
  store double %p1.coerce0, double* %1, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 1
  store double %p1.coerce1, double* %2, align 8
  %3 = bitcast %struct.point* %p2 to { double, double }*
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %p2.coerce0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %p2.coerce1, double* %5, align 8
  call void @llvm.dbg.declare(metadata %struct.point* %p1, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata %struct.point* %p2, metadata !18, metadata !DIExpression()), !dbg !19
  %x = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !20
  %6 = load double, double* %x, align 8, !dbg !20
  %x1 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !21
  %7 = load double, double* %x1, align 8, !dbg !21
  %sub = fsub double %6, %7, !dbg !22
  %x2 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !23
  %8 = load double, double* %x2, align 8, !dbg !23
  %x3 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !24
  %9 = load double, double* %x3, align 8, !dbg !24
  %sub4 = fsub double %8, %9, !dbg !25
  %mul = fmul double %sub, %sub4, !dbg !26
  %y = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !27
  %10 = load double, double* %y, align 8, !dbg !27
  %y5 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !28
  %11 = load double, double* %y5, align 8, !dbg !28
  %sub6 = fsub double %10, %11, !dbg !29
  %y7 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !30
  %12 = load double, double* %y7, align 8, !dbg !30
  %y8 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !31
  %13 = load double, double* %y8, align 8, !dbg !31
  %sub9 = fsub double %12, %13, !dbg !32
  %mul10 = fmul double %sub6, %sub9, !dbg !33
  %add = fadd double %mul, %mul10, !dbg !34
  %call = call double @sqrt(double %add) #5, !dbg !35
  ret double %call, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @findCircles(double %p1.coerce0, double %p1.coerce1, double %p2.coerce0, double %p2.coerce1, double %radius) #0 !dbg !37 {
entry:
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %radius.addr = alloca double, align 8
  %separation = alloca double, align 8
  %mirrorDistance = alloca double, align 8
  %0 = bitcast %struct.point* %p1 to { double, double }*
  %1 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 0
  store double %p1.coerce0, double* %1, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 1
  store double %p1.coerce1, double* %2, align 8
  %3 = bitcast %struct.point* %p2 to { double, double }*
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %p2.coerce0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %p2.coerce1, double* %5, align 8
  call void @llvm.dbg.declare(metadata %struct.point* %p1, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata %struct.point* %p2, metadata !42, metadata !DIExpression()), !dbg !43
  store double %radius, double* %radius.addr, align 8
  call void @llvm.dbg.declare(metadata double* %radius.addr, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata double* %separation, metadata !46, metadata !DIExpression()), !dbg !47
  %6 = bitcast %struct.point* %p1 to { double, double }*, !dbg !48
  %7 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0, !dbg !48
  %8 = load double, double* %7, align 8, !dbg !48
  %9 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1, !dbg !48
  %10 = load double, double* %9, align 8, !dbg !48
  %11 = bitcast %struct.point* %p2 to { double, double }*, !dbg !48
  %12 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0, !dbg !48
  %13 = load double, double* %12, align 8, !dbg !48
  %14 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1, !dbg !48
  %15 = load double, double* %14, align 8, !dbg !48
  %call = call double @distance(double %8, double %10, double %13, double %15), !dbg !48
  store double %call, double* %separation, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata double* %mirrorDistance, metadata !49, metadata !DIExpression()), !dbg !50
  %16 = load double, double* %separation, align 8, !dbg !51
  %cmp = fcmp oeq double %16, 0.000000e+00, !dbg !53
  br i1 %cmp, label %if.then, label %if.else, !dbg !54, !cf.info !55

if.then:                                          ; preds = %entry
  %17 = load double, double* %radius.addr, align 8, !dbg !56
  %cmp1 = fcmp oeq double %17, 0.000000e+00, !dbg !58
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %if.then
  %x = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !59
  %18 = load double, double* %x, align 8, !dbg !59
  %y = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !60
  %19 = load double, double* %y, align 8, !dbg !60
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), double %18, double %19), !dbg !61
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %if.then
  %x3 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !62
  %20 = load double, double* %x3, align 8, !dbg !62
  %y4 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !63
  %21 = load double, double* %y4, align 8, !dbg !63
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), double %20, double %21), !dbg !64
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ %call5, %cond.false ], !dbg !56
  br label %if.end68, !dbg !65

if.else:                                          ; preds = %entry
  %22 = load double, double* %separation, align 8, !dbg !66
  %23 = load double, double* %radius.addr, align 8, !dbg !68
  %mul = fmul double 2.000000e+00, %23, !dbg !69
  %cmp6 = fcmp oeq double %22, %mul, !dbg !70
  br i1 %cmp6, label %if.then7, label %if.else15, !dbg !71, !cf.info !55

if.then7:                                         ; preds = %if.else
  %x8 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !72
  %24 = load double, double* %x8, align 8, !dbg !72
  %x9 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !74
  %25 = load double, double* %x9, align 8, !dbg !74
  %add = fadd double %24, %25, !dbg !75
  %div = fdiv double %add, 2.000000e+00, !dbg !76
  %y10 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !77
  %26 = load double, double* %y10, align 8, !dbg !77
  %y11 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !78
  %27 = load double, double* %y11, align 8, !dbg !78
  %add12 = fadd double %26, %27, !dbg !79
  %div13 = fdiv double %add12, 2.000000e+00, !dbg !80
  %28 = load double, double* %radius.addr, align 8, !dbg !81
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), double %div, double %div13, double %28), !dbg !82
  br label %if.end67, !dbg !83

if.else15:                                        ; preds = %if.else
  %29 = load double, double* %separation, align 8, !dbg !84
  %30 = load double, double* %radius.addr, align 8, !dbg !86
  %mul16 = fmul double 2.000000e+00, %30, !dbg !87
  %cmp17 = fcmp ogt double %29, %mul16, !dbg !88
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !89, !cf.info !55

if.then18:                                        ; preds = %if.else15
  %31 = load double, double* %radius.addr, align 8, !dbg !90
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), double %31), !dbg !92
  br label %if.end, !dbg !93

if.else20:                                        ; preds = %if.else15
  %32 = load double, double* %radius.addr, align 8, !dbg !94
  %call21 = call double @pow(double %32, double 2.000000e+00) #5, !dbg !96
  %33 = load double, double* %separation, align 8, !dbg !97
  %div22 = fdiv double %33, 2.000000e+00, !dbg !98
  %call23 = call double @pow(double %div22, double 2.000000e+00) #5, !dbg !99
  %sub = fsub double %call21, %call23, !dbg !100
  %call24 = call double @sqrt(double %sub) #5, !dbg !101
  store double %call24, double* %mirrorDistance, align 8, !dbg !102
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)), !dbg !103
  %x26 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !104
  %34 = load double, double* %x26, align 8, !dbg !104
  %x27 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !105
  %35 = load double, double* %x27, align 8, !dbg !105
  %add28 = fadd double %34, %35, !dbg !106
  %div29 = fdiv double %add28, 2.000000e+00, !dbg !107
  %36 = load double, double* %mirrorDistance, align 8, !dbg !108
  %y30 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !109
  %37 = load double, double* %y30, align 8, !dbg !109
  %y31 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !110
  %38 = load double, double* %y31, align 8, !dbg !110
  %sub32 = fsub double %37, %38, !dbg !111
  %mul33 = fmul double %36, %sub32, !dbg !112
  %39 = load double, double* %separation, align 8, !dbg !113
  %div34 = fdiv double %mul33, %39, !dbg !114
  %add35 = fadd double %div29, %div34, !dbg !115
  %y36 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !116
  %40 = load double, double* %y36, align 8, !dbg !116
  %y37 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !117
  %41 = load double, double* %y37, align 8, !dbg !117
  %add38 = fadd double %40, %41, !dbg !118
  %div39 = fdiv double %add38, 2.000000e+00, !dbg !119
  %42 = load double, double* %mirrorDistance, align 8, !dbg !120
  %x40 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !121
  %43 = load double, double* %x40, align 8, !dbg !121
  %x41 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !122
  %44 = load double, double* %x41, align 8, !dbg !122
  %sub42 = fsub double %43, %44, !dbg !123
  %mul43 = fmul double %42, %sub42, !dbg !124
  %45 = load double, double* %separation, align 8, !dbg !125
  %div44 = fdiv double %mul43, %45, !dbg !126
  %add45 = fadd double %div39, %div44, !dbg !127
  %46 = load double, double* %radius.addr, align 8, !dbg !128
  %x46 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !129
  %47 = load double, double* %x46, align 8, !dbg !129
  %x47 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !130
  %48 = load double, double* %x47, align 8, !dbg !130
  %add48 = fadd double %47, %48, !dbg !131
  %div49 = fdiv double %add48, 2.000000e+00, !dbg !132
  %49 = load double, double* %mirrorDistance, align 8, !dbg !133
  %y50 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !134
  %50 = load double, double* %y50, align 8, !dbg !134
  %y51 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !135
  %51 = load double, double* %y51, align 8, !dbg !135
  %sub52 = fsub double %50, %51, !dbg !136
  %mul53 = fmul double %49, %sub52, !dbg !137
  %52 = load double, double* %separation, align 8, !dbg !138
  %div54 = fdiv double %mul53, %52, !dbg !139
  %sub55 = fsub double %div49, %div54, !dbg !140
  %y56 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1, !dbg !141
  %53 = load double, double* %y56, align 8, !dbg !141
  %y57 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1, !dbg !142
  %54 = load double, double* %y57, align 8, !dbg !142
  %add58 = fadd double %53, %54, !dbg !143
  %div59 = fdiv double %add58, 2.000000e+00, !dbg !144
  %55 = load double, double* %mirrorDistance, align 8, !dbg !145
  %x60 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0, !dbg !146
  %56 = load double, double* %x60, align 8, !dbg !146
  %x61 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0, !dbg !147
  %57 = load double, double* %x61, align 8, !dbg !147
  %sub62 = fsub double %56, %57, !dbg !148
  %mul63 = fmul double %55, %sub62, !dbg !149
  %58 = load double, double* %separation, align 8, !dbg !150
  %div64 = fdiv double %mul63, %58, !dbg !151
  %sub65 = fsub double %div59, %div64, !dbg !152
  %59 = load double, double* %radius.addr, align 8, !dbg !153
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.5, i64 0, i64 0), double %add35, double %add45, double %46, double %sub55, double %sub65, double %59), !dbg !154
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then18
  br label %if.end67

if.end67:                                         ; preds = %if.end, %if.then7
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %cond.end
  ret void, !dbg !155
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !156 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cases = alloca [10 x %struct.point], align 16
  %radii = alloca [5 x double], align 16
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata [10 x %struct.point]* %cases, metadata !162, metadata !DIExpression()), !dbg !166
  %0 = bitcast [10 x %struct.point]* %cases to i8*, !dbg !166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x %struct.point]* @__const.main.cases to i8*), i64 160, i1 false), !dbg !166
  call void @llvm.dbg.declare(metadata [5 x double]* %radii, metadata !167, metadata !DIExpression()), !dbg !171
  %1 = bitcast [5 x double]* %radii to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !171
  %2 = bitcast i8* %1 to [5 x double]*, !dbg !171
  %3 = getelementptr inbounds [5 x double], [5 x double]* %2, i32 0, i32 0, !dbg !171
  store double 2.000000e+00, double* %3, align 16, !dbg !171
  %4 = getelementptr inbounds [5 x double], [5 x double]* %2, i32 0, i32 1, !dbg !171
  store double 1.000000e+00, double* %4, align 8, !dbg !171
  %5 = getelementptr inbounds [5 x double], [5 x double]* %2, i32 0, i32 2, !dbg !171
  store double 2.000000e+00, double* %5, align 16, !dbg !171
  %6 = getelementptr inbounds [5 x double], [5 x double]* %2, i32 0, i32 3, !dbg !171
  store double 5.000000e-01, double* %6, align 8, !dbg !171
  store i32 0, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !174

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !175
  %cmp = icmp slt i32 %7, 5, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !179
  %add = add nsw i32 %8, 1, !dbg !181
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %add), !dbg !182
  %9 = load i32, i32* %i, align 4, !dbg !183
  %mul = mul nsw i32 2, %9, !dbg !184
  %idxprom = sext i32 %mul to i64, !dbg !185
  %arrayidx = getelementptr inbounds [10 x %struct.point], [10 x %struct.point]* %cases, i64 0, i64 %idxprom, !dbg !185
  %10 = load i32, i32* %i, align 4, !dbg !186
  %mul1 = mul nsw i32 2, %10, !dbg !187
  %add2 = add nsw i32 %mul1, 1, !dbg !188
  %idxprom3 = sext i32 %add2 to i64, !dbg !189
  %arrayidx4 = getelementptr inbounds [10 x %struct.point], [10 x %struct.point]* %cases, i64 0, i64 %idxprom3, !dbg !189
  %11 = load i32, i32* %i, align 4, !dbg !190
  %idxprom5 = sext i32 %11 to i64, !dbg !191
  %arrayidx6 = getelementptr inbounds [5 x double], [5 x double]* %radii, i64 0, i64 %idxprom5, !dbg !191
  %12 = load double, double* %arrayidx6, align 8, !dbg !191
  %13 = bitcast %struct.point* %arrayidx to { double, double }*, !dbg !192
  %14 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0, !dbg !192
  %15 = load double, double* %14, align 16, !dbg !192
  %16 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1, !dbg !192
  %17 = load double, double* %16, align 8, !dbg !192
  %18 = bitcast %struct.point* %arrayidx4 to { double, double }*, !dbg !192
  %19 = getelementptr inbounds { double, double }, { double, double }* %18, i32 0, i32 0, !dbg !192
  %20 = load double, double* %19, align 16, !dbg !192
  %21 = getelementptr inbounds { double, double }, { double, double }* %18, i32 0, i32 1, !dbg !192
  %22 = load double, double* %21, align 8, !dbg !192
  call void @findCircles(double %15, double %17, double %20, double %22, double %12), !dbg !192
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !194
  %inc = add nsw i32 %23, 1, !dbg !194
  store i32 %inc, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !195, !llvm.loop !196

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "circles-of-given-radius-through-two-points.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Circles-of-given-radius-through-two-points")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)"}
!7 = distinct !DISubprogram(name: "distance", scope: !1, file: !1, line: 8, type: !8, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "point", file: !1, line: 6, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 4, size: 128, elements: !13)
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !12, file: !1, line: 5, baseType: !10, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !12, file: !1, line: 5, baseType: !10, size: 64, offset: 64)
!16 = !DILocalVariable(name: "p1", arg: 1, scope: !7, file: !1, line: 8, type: !11)
!17 = !DILocation(line: 8, column: 23, scope: !7)
!18 = !DILocalVariable(name: "p2", arg: 2, scope: !7, file: !1, line: 8, type: !11)
!19 = !DILocation(line: 8, column: 32, scope: !7)
!20 = !DILocation(line: 10, column: 18, scope: !7)
!21 = !DILocation(line: 10, column: 23, scope: !7)
!22 = !DILocation(line: 10, column: 19, scope: !7)
!23 = !DILocation(line: 10, column: 30, scope: !7)
!24 = !DILocation(line: 10, column: 35, scope: !7)
!25 = !DILocation(line: 10, column: 31, scope: !7)
!26 = !DILocation(line: 10, column: 25, scope: !7)
!27 = !DILocation(line: 10, column: 42, scope: !7)
!28 = !DILocation(line: 10, column: 47, scope: !7)
!29 = !DILocation(line: 10, column: 43, scope: !7)
!30 = !DILocation(line: 10, column: 54, scope: !7)
!31 = !DILocation(line: 10, column: 59, scope: !7)
!32 = !DILocation(line: 10, column: 55, scope: !7)
!33 = !DILocation(line: 10, column: 49, scope: !7)
!34 = !DILocation(line: 10, column: 37, scope: !7)
!35 = !DILocation(line: 10, column: 9, scope: !7)
!36 = !DILocation(line: 10, column: 2, scope: !7)
!37 = distinct !DISubprogram(name: "findCircles", scope: !1, file: !1, line: 13, type: !38, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !11, !11, !10}
!40 = !DILocalVariable(name: "p1", arg: 1, scope: !37, file: !1, line: 13, type: !11)
!41 = !DILocation(line: 13, column: 24, scope: !37)
!42 = !DILocalVariable(name: "p2", arg: 2, scope: !37, file: !1, line: 13, type: !11)
!43 = !DILocation(line: 13, column: 33, scope: !37)
!44 = !DILocalVariable(name: "radius", arg: 3, scope: !37, file: !1, line: 13, type: !10)
!45 = !DILocation(line: 13, column: 43, scope: !37)
!46 = !DILocalVariable(name: "separation", scope: !37, file: !1, line: 15, type: !10)
!47 = !DILocation(line: 15, column: 9, scope: !37)
!48 = !DILocation(line: 15, column: 22, scope: !37)
!49 = !DILocalVariable(name: "mirrorDistance", scope: !37, file: !1, line: 15, type: !10)
!50 = !DILocation(line: 15, column: 38, scope: !37)
!51 = !DILocation(line: 17, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !37, file: !1, line: 17, column: 5)
!53 = !DILocation(line: 17, column: 16, scope: !52)
!54 = !DILocation(line: 17, column: 5, scope: !37)
!55 = !{!"if"}
!56 = !DILocation(line: 19, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 18, column: 2)
!58 = !DILocation(line: 19, column: 10, scope: !57)
!59 = !DILocation(line: 19, column: 77, scope: !57)
!60 = !DILocation(line: 19, column: 82, scope: !57)
!61 = !DILocation(line: 19, column: 19, scope: !57)
!62 = !DILocation(line: 20, column: 80, scope: !57)
!63 = !DILocation(line: 20, column: 85, scope: !57)
!64 = !DILocation(line: 20, column: 9, scope: !57)
!65 = !DILocation(line: 21, column: 2, scope: !57)
!66 = !DILocation(line: 23, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !52, file: !1, line: 23, column: 10)
!68 = !DILocation(line: 23, column: 26, scope: !67)
!69 = !DILocation(line: 23, column: 25, scope: !67)
!70 = !DILocation(line: 23, column: 21, scope: !67)
!71 = !DILocation(line: 23, column: 10, scope: !52)
!72 = !DILocation(line: 25, column: 117, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 24, column: 2)
!74 = !DILocation(line: 25, column: 122, scope: !73)
!75 = !DILocation(line: 25, column: 118, scope: !73)
!76 = !DILocation(line: 25, column: 124, scope: !73)
!77 = !DILocation(line: 25, column: 131, scope: !73)
!78 = !DILocation(line: 25, column: 136, scope: !73)
!79 = !DILocation(line: 25, column: 132, scope: !73)
!80 = !DILocation(line: 25, column: 138, scope: !73)
!81 = !DILocation(line: 25, column: 141, scope: !73)
!82 = !DILocation(line: 25, column: 3, scope: !73)
!83 = !DILocation(line: 26, column: 2, scope: !73)
!84 = !DILocation(line: 28, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !67, file: !1, line: 28, column: 10)
!86 = !DILocation(line: 28, column: 25, scope: !85)
!87 = !DILocation(line: 28, column: 24, scope: !85)
!88 = !DILocation(line: 28, column: 21, scope: !85)
!89 = !DILocation(line: 28, column: 10, scope: !67)
!90 = !DILocation(line: 30, column: 105, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 29, column: 2)
!92 = !DILocation(line: 30, column: 3, scope: !91)
!93 = !DILocation(line: 31, column: 2, scope: !91)
!94 = !DILocation(line: 35, column: 28, scope: !95)
!95 = distinct !DILexicalBlock(scope: !85, file: !1, line: 34, column: 2)
!96 = !DILocation(line: 35, column: 24, scope: !95)
!97 = !DILocation(line: 35, column: 44, scope: !95)
!98 = !DILocation(line: 35, column: 54, scope: !95)
!99 = !DILocation(line: 35, column: 40, scope: !95)
!100 = !DILocation(line: 35, column: 38, scope: !95)
!101 = !DILocation(line: 35, column: 19, scope: !95)
!102 = !DILocation(line: 35, column: 18, scope: !95)
!103 = !DILocation(line: 37, column: 3, scope: !95)
!104 = !DILocation(line: 38, column: 116, scope: !95)
!105 = !DILocation(line: 38, column: 121, scope: !95)
!106 = !DILocation(line: 38, column: 117, scope: !95)
!107 = !DILocation(line: 38, column: 123, scope: !95)
!108 = !DILocation(line: 38, column: 128, scope: !95)
!109 = !DILocation(line: 38, column: 147, scope: !95)
!110 = !DILocation(line: 38, column: 152, scope: !95)
!111 = !DILocation(line: 38, column: 148, scope: !95)
!112 = !DILocation(line: 38, column: 142, scope: !95)
!113 = !DILocation(line: 38, column: 155, scope: !95)
!114 = !DILocation(line: 38, column: 154, scope: !95)
!115 = !DILocation(line: 38, column: 126, scope: !95)
!116 = !DILocation(line: 38, column: 170, scope: !95)
!117 = !DILocation(line: 38, column: 175, scope: !95)
!118 = !DILocation(line: 38, column: 171, scope: !95)
!119 = !DILocation(line: 38, column: 177, scope: !95)
!120 = !DILocation(line: 38, column: 182, scope: !95)
!121 = !DILocation(line: 38, column: 201, scope: !95)
!122 = !DILocation(line: 38, column: 206, scope: !95)
!123 = !DILocation(line: 38, column: 202, scope: !95)
!124 = !DILocation(line: 38, column: 196, scope: !95)
!125 = !DILocation(line: 38, column: 209, scope: !95)
!126 = !DILocation(line: 38, column: 208, scope: !95)
!127 = !DILocation(line: 38, column: 180, scope: !95)
!128 = !DILocation(line: 38, column: 220, scope: !95)
!129 = !DILocation(line: 38, column: 231, scope: !95)
!130 = !DILocation(line: 38, column: 236, scope: !95)
!131 = !DILocation(line: 38, column: 232, scope: !95)
!132 = !DILocation(line: 38, column: 238, scope: !95)
!133 = !DILocation(line: 38, column: 243, scope: !95)
!134 = !DILocation(line: 38, column: 262, scope: !95)
!135 = !DILocation(line: 38, column: 267, scope: !95)
!136 = !DILocation(line: 38, column: 263, scope: !95)
!137 = !DILocation(line: 38, column: 257, scope: !95)
!138 = !DILocation(line: 38, column: 270, scope: !95)
!139 = !DILocation(line: 38, column: 269, scope: !95)
!140 = !DILocation(line: 38, column: 241, scope: !95)
!141 = !DILocation(line: 38, column: 285, scope: !95)
!142 = !DILocation(line: 38, column: 290, scope: !95)
!143 = !DILocation(line: 38, column: 286, scope: !95)
!144 = !DILocation(line: 38, column: 292, scope: !95)
!145 = !DILocation(line: 38, column: 297, scope: !95)
!146 = !DILocation(line: 38, column: 316, scope: !95)
!147 = !DILocation(line: 38, column: 321, scope: !95)
!148 = !DILocation(line: 38, column: 317, scope: !95)
!149 = !DILocation(line: 38, column: 311, scope: !95)
!150 = !DILocation(line: 38, column: 324, scope: !95)
!151 = !DILocation(line: 38, column: 323, scope: !95)
!152 = !DILocation(line: 38, column: 295, scope: !95)
!153 = !DILocation(line: 38, column: 335, scope: !95)
!154 = !DILocation(line: 38, column: 3, scope: !95)
!155 = !DILocation(line: 40, column: 1, scope: !37)
!156 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 42, type: !157, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{!159}
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DILocalVariable(name: "i", scope: !156, file: !1, line: 44, type: !159)
!161 = !DILocation(line: 44, column: 9, scope: !156)
!162 = !DILocalVariable(name: "cases", scope: !156, file: !1, line: 46, type: !163)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 10)
!166 = !DILocation(line: 46, column: 11, scope: !156)
!167 = !DILocalVariable(name: "radii", scope: !156, file: !1, line: 54, type: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 5)
!171 = !DILocation(line: 54, column: 12, scope: !156)
!172 = !DILocation(line: 56, column: 10, scope: !173)
!173 = distinct !DILexicalBlock(scope: !156, file: !1, line: 56, column: 5)
!174 = !DILocation(line: 56, column: 9, scope: !173)
!175 = !DILocation(line: 56, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !1, line: 56, column: 5)
!177 = !DILocation(line: 56, column: 14, scope: !176)
!178 = !DILocation(line: 56, column: 5, scope: !173)
!179 = !DILocation(line: 58, column: 22, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 57, column: 5)
!181 = !DILocation(line: 58, column: 23, scope: !180)
!182 = !DILocation(line: 58, column: 2, scope: !180)
!183 = !DILocation(line: 59, column: 22, scope: !180)
!184 = !DILocation(line: 59, column: 21, scope: !180)
!185 = !DILocation(line: 59, column: 14, scope: !180)
!186 = !DILocation(line: 59, column: 33, scope: !180)
!187 = !DILocation(line: 59, column: 32, scope: !180)
!188 = !DILocation(line: 59, column: 34, scope: !180)
!189 = !DILocation(line: 59, column: 25, scope: !180)
!190 = !DILocation(line: 59, column: 44, scope: !180)
!191 = !DILocation(line: 59, column: 38, scope: !180)
!192 = !DILocation(line: 59, column: 2, scope: !180)
!193 = !DILocation(line: 60, column: 5, scope: !180)
!194 = !DILocation(line: 56, column: 18, scope: !176)
!195 = !DILocation(line: 56, column: 5, scope: !176)
!196 = distinct !{!196, !178, !197}
!197 = !DILocation(line: 60, column: 5, scope: !173)
!198 = !DILocation(line: 62, column: 5, scope: !156)
