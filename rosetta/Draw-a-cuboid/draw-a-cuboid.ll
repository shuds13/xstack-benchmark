; ModuleID = 'draw-a-cuboid.bc'
source_filename = "draw-a-cuboid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.face_t = type { [4 x double*], [3 x double] }

@.str = private unnamed_addr constant [11 x i8] c".:!*oe&#%@\00", align 1
@shades = dso_local global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@v000 = dso_local global [3 x double] [double -4.000000e+00, double -3.000000e+00, double -2.000000e+00], align 16, !dbg !8
@v100 = dso_local global [3 x double] [double 4.000000e+00, double -3.000000e+00, double -2.000000e+00], align 16, !dbg !14
@v010 = dso_local global [3 x double] [double -4.000000e+00, double 3.000000e+00, double -2.000000e+00], align 16, !dbg !16
@v110 = dso_local global [3 x double] [double 4.000000e+00, double 3.000000e+00, double -2.000000e+00], align 16, !dbg !18
@v001 = dso_local global [3 x double] [double -4.000000e+00, double -3.000000e+00, double 2.000000e+00], align 16, !dbg !20
@v101 = dso_local global [3 x double] [double 4.000000e+00, double -3.000000e+00, double 2.000000e+00], align 16, !dbg !22
@v011 = dso_local global [3 x double] [double -4.000000e+00, double 3.000000e+00, double 2.000000e+00], align 16, !dbg !24
@v111 = dso_local global [3 x double] [double 4.000000e+00, double 3.000000e+00, double 2.000000e+00], align 16, !dbg !26
@f = dso_local global [6 x %struct.face_t] [%struct.face_t { [4 x double*] [double* getelementptr inbounds ([3 x double], [3 x double]* @v000, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v010, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v110, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v100, i32 0, i32 0)], [3 x double] [double 0.000000e+00, double 0.000000e+00, double -1.000000e+00] }, %struct.face_t { [4 x double*] [double* getelementptr inbounds ([3 x double], [3 x double]* @v001, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v011, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v111, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v101, i32 0, i32 0)], [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00] }, %struct.face_t { [4 x double*] [double* getelementptr inbounds ([3 x double], [3 x double]* @v000, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v010, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v011, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v001, i32 0, i32 0)], [3 x double] [double -1.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.face_t { [4 x double*] [double* getelementptr inbounds ([3 x double], [3 x double]* @v100, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v110, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v111, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v101, i32 0, i32 0)], [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.face_t { [4 x double*] [double* getelementptr inbounds ([3 x double], [3 x double]* @v000, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v100, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v101, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v001, i32 0, i32 0)], [3 x double] [double 0.000000e+00, double -1.000000e+00, double 0.000000e+00] }, %struct.face_t { [4 x double*] [double* getelementptr inbounds ([3 x double], [3 x double]* @v010, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v110, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v111, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @v011, i32 0, i32 0)], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00] }], align 16, !dbg !28
@__const.main.eye = private unnamed_addr constant [3 x double] [double 7.000000e+00, double 7.000000e+00, double 6.000000e+00], align 16
@__const.main.dir = private unnamed_addr constant [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@__const.main.dy = private unnamed_addr constant [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], align 16
@__const.main.light = private unnamed_addr constant [3 x double] [double 6.000000e+00, double 8.000000e+00, double 6.000000e+00], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @vsub(double* %v1, double* %v2, double* %s) #0 !dbg !49 {
entry:
  %v1.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %s.addr = alloca double*, align 8
  store double* %v1, double** %v1.addr, align 8
  call void @llvm.dbg.declare(metadata double** %v1.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store double* %v2, double** %v2.addr, align 8
  call void @llvm.dbg.declare(metadata double** %v2.addr, metadata !54, metadata !DIExpression()), !dbg !55
  store double* %s, double** %s.addr, align 8
  call void @llvm.dbg.declare(metadata double** %s.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load double*, double** %v1.addr, align 8, !dbg !58
  %arrayidx = getelementptr inbounds double, double* %0, i64 0, !dbg !58
  %1 = load double, double* %arrayidx, align 8, !dbg !58
  %2 = load double*, double** %v2.addr, align 8, !dbg !59
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 0, !dbg !59
  %3 = load double, double* %arrayidx1, align 8, !dbg !59
  %sub = fsub double %1, %3, !dbg !60
  %4 = load double*, double** %s.addr, align 8, !dbg !61
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 0, !dbg !61
  store double %sub, double* %arrayidx2, align 8, !dbg !62
  %5 = load double*, double** %v1.addr, align 8, !dbg !63
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 1, !dbg !63
  %6 = load double, double* %arrayidx3, align 8, !dbg !63
  %7 = load double*, double** %v2.addr, align 8, !dbg !64
  %arrayidx4 = getelementptr inbounds double, double* %7, i64 1, !dbg !64
  %8 = load double, double* %arrayidx4, align 8, !dbg !64
  %sub5 = fsub double %6, %8, !dbg !65
  %9 = load double*, double** %s.addr, align 8, !dbg !66
  %arrayidx6 = getelementptr inbounds double, double* %9, i64 1, !dbg !66
  store double %sub5, double* %arrayidx6, align 8, !dbg !67
  %10 = load double*, double** %v1.addr, align 8, !dbg !68
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 2, !dbg !68
  %11 = load double, double* %arrayidx7, align 8, !dbg !68
  %12 = load double*, double** %v2.addr, align 8, !dbg !69
  %arrayidx8 = getelementptr inbounds double, double* %12, i64 2, !dbg !69
  %13 = load double, double* %arrayidx8, align 8, !dbg !69
  %sub9 = fsub double %11, %13, !dbg !70
  %14 = load double*, double** %s.addr, align 8, !dbg !71
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 2, !dbg !71
  store double %sub9, double* %arrayidx10, align 8, !dbg !72
  ret void, !dbg !73
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalize(double* %v) #0 !dbg !74 {
entry:
  %v.addr = alloca double*, align 8
  %len = alloca double, align 8
  store double* %v, double** %v.addr, align 8
  call void @llvm.dbg.declare(metadata double** %v.addr, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata double* %len, metadata !79, metadata !DIExpression()), !dbg !80
  %0 = load double*, double** %v.addr, align 8, !dbg !81
  %arrayidx = getelementptr inbounds double, double* %0, i64 0, !dbg !81
  %1 = load double, double* %arrayidx, align 8, !dbg !81
  %2 = load double*, double** %v.addr, align 8, !dbg !82
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 0, !dbg !82
  %3 = load double, double* %arrayidx1, align 8, !dbg !82
  %mul = fmul double %1, %3, !dbg !83
  %4 = load double*, double** %v.addr, align 8, !dbg !84
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1, !dbg !84
  %5 = load double, double* %arrayidx2, align 8, !dbg !84
  %6 = load double*, double** %v.addr, align 8, !dbg !85
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1, !dbg !85
  %7 = load double, double* %arrayidx3, align 8, !dbg !85
  %mul4 = fmul double %5, %7, !dbg !86
  %add = fadd double %mul, %mul4, !dbg !87
  %8 = load double*, double** %v.addr, align 8, !dbg !88
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 2, !dbg !88
  %9 = load double, double* %arrayidx5, align 8, !dbg !88
  %10 = load double*, double** %v.addr, align 8, !dbg !89
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 2, !dbg !89
  %11 = load double, double* %arrayidx6, align 8, !dbg !89
  %mul7 = fmul double %9, %11, !dbg !90
  %add8 = fadd double %add, %mul7, !dbg !91
  %call = call double @sqrt(double %add8) #5, !dbg !92
  store double %call, double* %len, align 8, !dbg !80
  %12 = load double, double* %len, align 8, !dbg !93
  %13 = load double*, double** %v.addr, align 8, !dbg !94
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 0, !dbg !94
  %14 = load double, double* %arrayidx9, align 8, !dbg !95
  %div = fdiv double %14, %12, !dbg !95
  store double %div, double* %arrayidx9, align 8, !dbg !95
  %15 = load double, double* %len, align 8, !dbg !96
  %16 = load double*, double** %v.addr, align 8, !dbg !97
  %arrayidx10 = getelementptr inbounds double, double* %16, i64 1, !dbg !97
  %17 = load double, double* %arrayidx10, align 8, !dbg !98
  %div11 = fdiv double %17, %15, !dbg !98
  store double %div11, double* %arrayidx10, align 8, !dbg !98
  %18 = load double, double* %len, align 8, !dbg !99
  %19 = load double*, double** %v.addr, align 8, !dbg !100
  %arrayidx12 = getelementptr inbounds double, double* %19, i64 2, !dbg !100
  %20 = load double, double* %arrayidx12, align 8, !dbg !101
  %div13 = fdiv double %20, %18, !dbg !101
  store double %div13, double* %arrayidx12, align 8, !dbg !101
  %21 = load double, double* %len, align 8, !dbg !102
  ret double %21, !dbg !103
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @dot(double* %x, double* %y) #0 !dbg !104 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  store double* %x, double** %x.addr, align 8
  call void @llvm.dbg.declare(metadata double** %x.addr, metadata !107, metadata !DIExpression()), !dbg !108
  store double* %y, double** %y.addr, align 8
  call void @llvm.dbg.declare(metadata double** %y.addr, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load double*, double** %x.addr, align 8, !dbg !111
  %arrayidx = getelementptr inbounds double, double* %0, i64 0, !dbg !111
  %1 = load double, double* %arrayidx, align 8, !dbg !111
  %2 = load double*, double** %y.addr, align 8, !dbg !112
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 0, !dbg !112
  %3 = load double, double* %arrayidx1, align 8, !dbg !112
  %mul = fmul double %1, %3, !dbg !113
  %4 = load double*, double** %x.addr, align 8, !dbg !114
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1, !dbg !114
  %5 = load double, double* %arrayidx2, align 8, !dbg !114
  %6 = load double*, double** %y.addr, align 8, !dbg !115
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1, !dbg !115
  %7 = load double, double* %arrayidx3, align 8, !dbg !115
  %mul4 = fmul double %5, %7, !dbg !116
  %add = fadd double %mul, %mul4, !dbg !117
  %8 = load double*, double** %x.addr, align 8, !dbg !118
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 2, !dbg !118
  %9 = load double, double* %arrayidx5, align 8, !dbg !118
  %10 = load double*, double** %y.addr, align 8, !dbg !119
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 2, !dbg !119
  %11 = load double, double* %arrayidx6, align 8, !dbg !119
  %mul7 = fmul double %9, %11, !dbg !120
  %add8 = fadd double %add, %mul7, !dbg !121
  ret double %add8, !dbg !122
}

; Function Attrs: noinline nounwind uwtable
define dso_local double* @cross(double* %x, double* %y, double* %s) #0 !dbg !123 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %s.addr = alloca double*, align 8
  store double* %x, double** %x.addr, align 8
  call void @llvm.dbg.declare(metadata double** %x.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store double* %y, double** %y.addr, align 8
  call void @llvm.dbg.declare(metadata double** %y.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store double* %s, double** %s.addr, align 8
  call void @llvm.dbg.declare(metadata double** %s.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load double*, double** %x.addr, align 8, !dbg !132
  %arrayidx = getelementptr inbounds double, double* %0, i64 1, !dbg !132
  %1 = load double, double* %arrayidx, align 8, !dbg !132
  %2 = load double*, double** %y.addr, align 8, !dbg !133
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 2, !dbg !133
  %3 = load double, double* %arrayidx1, align 8, !dbg !133
  %mul = fmul double %1, %3, !dbg !134
  %4 = load double*, double** %x.addr, align 8, !dbg !135
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 2, !dbg !135
  %5 = load double, double* %arrayidx2, align 8, !dbg !135
  %6 = load double*, double** %y.addr, align 8, !dbg !136
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1, !dbg !136
  %7 = load double, double* %arrayidx3, align 8, !dbg !136
  %mul4 = fmul double %5, %7, !dbg !137
  %sub = fsub double %mul, %mul4, !dbg !138
  %8 = load double*, double** %s.addr, align 8, !dbg !139
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 0, !dbg !139
  store double %sub, double* %arrayidx5, align 8, !dbg !140
  %9 = load double*, double** %x.addr, align 8, !dbg !141
  %arrayidx6 = getelementptr inbounds double, double* %9, i64 2, !dbg !141
  %10 = load double, double* %arrayidx6, align 8, !dbg !141
  %11 = load double*, double** %y.addr, align 8, !dbg !142
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 0, !dbg !142
  %12 = load double, double* %arrayidx7, align 8, !dbg !142
  %mul8 = fmul double %10, %12, !dbg !143
  %13 = load double*, double** %x.addr, align 8, !dbg !144
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 0, !dbg !144
  %14 = load double, double* %arrayidx9, align 8, !dbg !144
  %15 = load double*, double** %y.addr, align 8, !dbg !145
  %arrayidx10 = getelementptr inbounds double, double* %15, i64 2, !dbg !145
  %16 = load double, double* %arrayidx10, align 8, !dbg !145
  %mul11 = fmul double %14, %16, !dbg !146
  %sub12 = fsub double %mul8, %mul11, !dbg !147
  %17 = load double*, double** %s.addr, align 8, !dbg !148
  %arrayidx13 = getelementptr inbounds double, double* %17, i64 1, !dbg !148
  store double %sub12, double* %arrayidx13, align 8, !dbg !149
  %18 = load double*, double** %x.addr, align 8, !dbg !150
  %arrayidx14 = getelementptr inbounds double, double* %18, i64 0, !dbg !150
  %19 = load double, double* %arrayidx14, align 8, !dbg !150
  %20 = load double*, double** %y.addr, align 8, !dbg !151
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 1, !dbg !151
  %21 = load double, double* %arrayidx15, align 8, !dbg !151
  %mul16 = fmul double %19, %21, !dbg !152
  %22 = load double*, double** %x.addr, align 8, !dbg !153
  %arrayidx17 = getelementptr inbounds double, double* %22, i64 1, !dbg !153
  %23 = load double, double* %arrayidx17, align 8, !dbg !153
  %24 = load double*, double** %y.addr, align 8, !dbg !154
  %arrayidx18 = getelementptr inbounds double, double* %24, i64 0, !dbg !154
  %25 = load double, double* %arrayidx18, align 8, !dbg !154
  %mul19 = fmul double %23, %25, !dbg !155
  %sub20 = fsub double %mul16, %mul19, !dbg !156
  %26 = load double*, double** %s.addr, align 8, !dbg !157
  %arrayidx21 = getelementptr inbounds double, double* %26, i64 2, !dbg !157
  store double %sub20, double* %arrayidx21, align 8, !dbg !158
  %27 = load double*, double** %s.addr, align 8, !dbg !159
  ret double* %27, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local double* @madd(double* %x, double* %y, double %d, double* %r) #0 !dbg !161 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %d.addr = alloca double, align 8
  %r.addr = alloca double*, align 8
  store double* %x, double** %x.addr, align 8
  call void @llvm.dbg.declare(metadata double** %x.addr, metadata !164, metadata !DIExpression()), !dbg !165
  store double* %y, double** %y.addr, align 8
  call void @llvm.dbg.declare(metadata double** %y.addr, metadata !166, metadata !DIExpression()), !dbg !167
  store double %d, double* %d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !168, metadata !DIExpression()), !dbg !169
  store double* %r, double** %r.addr, align 8
  call void @llvm.dbg.declare(metadata double** %r.addr, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = load double*, double** %x.addr, align 8, !dbg !172
  %arrayidx = getelementptr inbounds double, double* %0, i64 0, !dbg !172
  %1 = load double, double* %arrayidx, align 8, !dbg !172
  %2 = load double*, double** %y.addr, align 8, !dbg !173
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 0, !dbg !173
  %3 = load double, double* %arrayidx1, align 8, !dbg !173
  %4 = load double, double* %d.addr, align 8, !dbg !174
  %mul = fmul double %3, %4, !dbg !175
  %add = fadd double %1, %mul, !dbg !176
  %5 = load double*, double** %r.addr, align 8, !dbg !177
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 0, !dbg !177
  store double %add, double* %arrayidx2, align 8, !dbg !178
  %6 = load double*, double** %x.addr, align 8, !dbg !179
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1, !dbg !179
  %7 = load double, double* %arrayidx3, align 8, !dbg !179
  %8 = load double*, double** %y.addr, align 8, !dbg !180
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 1, !dbg !180
  %9 = load double, double* %arrayidx4, align 8, !dbg !180
  %10 = load double, double* %d.addr, align 8, !dbg !181
  %mul5 = fmul double %9, %10, !dbg !182
  %add6 = fadd double %7, %mul5, !dbg !183
  %11 = load double*, double** %r.addr, align 8, !dbg !184
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 1, !dbg !184
  store double %add6, double* %arrayidx7, align 8, !dbg !185
  %12 = load double*, double** %x.addr, align 8, !dbg !186
  %arrayidx8 = getelementptr inbounds double, double* %12, i64 2, !dbg !186
  %13 = load double, double* %arrayidx8, align 8, !dbg !186
  %14 = load double*, double** %y.addr, align 8, !dbg !187
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 2, !dbg !187
  %15 = load double, double* %arrayidx9, align 8, !dbg !187
  %16 = load double, double* %d.addr, align 8, !dbg !188
  %mul10 = fmul double %15, %16, !dbg !189
  %add11 = fadd double %13, %mul10, !dbg !190
  %17 = load double*, double** %r.addr, align 8, !dbg !191
  %arrayidx12 = getelementptr inbounds double, double* %17, i64 2, !dbg !191
  store double %add11, double* %arrayidx12, align 8, !dbg !192
  %18 = load double*, double** %r.addr, align 8, !dbg !193
  ret double* %18, !dbg !194
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_range(double %x, double %x0, double %x1) #0 !dbg !195 {
entry:
  %x.addr = alloca double, align 8
  %x0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !198, metadata !DIExpression()), !dbg !199
  store double %x0, double* %x0.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x0.addr, metadata !200, metadata !DIExpression()), !dbg !201
  store double %x1, double* %x1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x1.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load double, double* %x.addr, align 8, !dbg !204
  %1 = load double, double* %x0.addr, align 8, !dbg !205
  %sub = fsub double %0, %1, !dbg !206
  %2 = load double, double* %x.addr, align 8, !dbg !207
  %3 = load double, double* %x1.addr, align 8, !dbg !208
  %sub1 = fsub double %2, %3, !dbg !209
  %mul = fmul double %sub, %sub1, !dbg !210
  %cmp = fcmp ole double %mul, 0.000000e+00, !dbg !211
  %conv = zext i1 %cmp to i32, !dbg !211
  ret i32 %conv, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @face_hit(%struct.face_t* %face, double* %src, double* %dir, double* %hit, double* %d) #0 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %face.addr = alloca %struct.face_t*, align 8
  %src.addr = alloca double*, align 8
  %dir.addr = alloca double*, align 8
  %hit.addr = alloca double*, align 8
  %d.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %dist = alloca double, align 8
  store %struct.face_t* %face, %struct.face_t** %face.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.face_t** %face.addr, metadata !217, metadata !DIExpression()), !dbg !218
  store double* %src, double** %src.addr, align 8
  call void @llvm.dbg.declare(metadata double** %src.addr, metadata !219, metadata !DIExpression()), !dbg !220
  store double* %dir, double** %dir.addr, align 8
  call void @llvm.dbg.declare(metadata double** %dir.addr, metadata !221, metadata !DIExpression()), !dbg !222
  store double* %hit, double** %hit.addr, align 8
  call void @llvm.dbg.declare(metadata double** %hit.addr, metadata !223, metadata !DIExpression()), !dbg !224
  store double* %d, double** %d.addr, align 8
  call void @llvm.dbg.declare(metadata double** %d.addr, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %i, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata double* %dist, metadata !229, metadata !DIExpression()), !dbg !230
  store i32 0, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !233

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !234
  %cmp = icmp slt i32 %0, 3, !dbg !236
  br i1 %cmp, label %for.body, label %for.end, !dbg !237

for.body:                                         ; preds = %for.cond
  %1 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !238
  %norm = getelementptr inbounds %struct.face_t, %struct.face_t* %1, i32 0, i32 1, !dbg !240
  %2 = load i32, i32* %i, align 4, !dbg !241
  %idxprom = sext i32 %2 to i64, !dbg !238
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %norm, i64 0, i64 %idxprom, !dbg !238
  %3 = load double, double* %arrayidx, align 8, !dbg !238
  %tobool = fcmp une double %3, 0.000000e+00, !dbg !238
  br i1 %tobool, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %for.body
  %4 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !243
  %v = getelementptr inbounds %struct.face_t, %struct.face_t* %4, i32 0, i32 0, !dbg !244
  %arrayidx1 = getelementptr inbounds [4 x double*], [4 x double*]* %v, i64 0, i64 0, !dbg !243
  %5 = load double*, double** %arrayidx1, align 8, !dbg !243
  %6 = load i32, i32* %i, align 4, !dbg !245
  %idxprom2 = sext i32 %6 to i64, !dbg !243
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 %idxprom2, !dbg !243
  %7 = load double, double* %arrayidx3, align 8, !dbg !243
  %8 = load double*, double** %src.addr, align 8, !dbg !246
  %9 = load i32, i32* %i, align 4, !dbg !247
  %idxprom4 = sext i32 %9 to i64, !dbg !246
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom4, !dbg !246
  %10 = load double, double* %arrayidx5, align 8, !dbg !246
  %sub = fsub double %7, %10, !dbg !248
  %11 = load double*, double** %dir.addr, align 8, !dbg !249
  %12 = load i32, i32* %i, align 4, !dbg !250
  %idxprom6 = sext i32 %12 to i64, !dbg !249
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom6, !dbg !249
  %13 = load double, double* %arrayidx7, align 8, !dbg !249
  %div = fdiv double %sub, %13, !dbg !251
  store double %div, double* %dist, align 8, !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !dbg !255
  %inc = add nsw i32 %14, 1, !dbg !255
  store i32 %inc, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !256, !llvm.loop !257

for.end:                                          ; preds = %for.cond
  %15 = load double*, double** %src.addr, align 8, !dbg !259
  %16 = load double*, double** %dir.addr, align 8, !dbg !260
  %17 = load double, double* %dist, align 8, !dbg !261
  %18 = load double*, double** %hit.addr, align 8, !dbg !262
  %call = call double* @madd(double* %15, double* %16, double %17, double* %18), !dbg !263
  %19 = load double*, double** %dir.addr, align 8, !dbg !264
  %20 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !265
  %norm8 = getelementptr inbounds %struct.face_t, %struct.face_t* %20, i32 0, i32 1, !dbg !266
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %norm8, i64 0, i64 0, !dbg !265
  %call9 = call double @dot(double* %19, double* %arraydecay), !dbg !267
  %21 = load double, double* %dist, align 8, !dbg !268
  %mul = fmul double %call9, %21, !dbg !269
  %22 = call double @llvm.fabs.f64(double %mul), !dbg !270
  %23 = load double*, double** %d.addr, align 8, !dbg !271
  store double %22, double* %23, align 8, !dbg !272
  %24 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !273
  %norm10 = getelementptr inbounds %struct.face_t, %struct.face_t* %24, i32 0, i32 1, !dbg !275
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %norm10, i64 0, i64 0, !dbg !273
  %25 = load double, double* %arrayidx11, align 8, !dbg !273
  %tobool12 = fcmp une double %25, 0.000000e+00, !dbg !273
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !276

if.then13:                                        ; preds = %for.end
  %26 = load double*, double** %hit.addr, align 8, !dbg !277
  %arrayidx14 = getelementptr inbounds double, double* %26, i64 1, !dbg !277
  %27 = load double, double* %arrayidx14, align 8, !dbg !277
  %28 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !279
  %v15 = getelementptr inbounds %struct.face_t, %struct.face_t* %28, i32 0, i32 0, !dbg !280
  %arrayidx16 = getelementptr inbounds [4 x double*], [4 x double*]* %v15, i64 0, i64 0, !dbg !279
  %29 = load double*, double** %arrayidx16, align 8, !dbg !279
  %arrayidx17 = getelementptr inbounds double, double* %29, i64 1, !dbg !279
  %30 = load double, double* %arrayidx17, align 8, !dbg !279
  %31 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !281
  %v18 = getelementptr inbounds %struct.face_t, %struct.face_t* %31, i32 0, i32 0, !dbg !282
  %arrayidx19 = getelementptr inbounds [4 x double*], [4 x double*]* %v18, i64 0, i64 2, !dbg !281
  %32 = load double*, double** %arrayidx19, align 8, !dbg !281
  %arrayidx20 = getelementptr inbounds double, double* %32, i64 1, !dbg !281
  %33 = load double, double* %arrayidx20, align 8, !dbg !281
  %call21 = call i32 @in_range(double %27, double %30, double %33), !dbg !283
  %tobool22 = icmp ne i32 %call21, 0, !dbg !283
  br i1 %tobool22, label %land.rhs, label %land.end, !dbg !284

land.rhs:                                         ; preds = %if.then13
  %34 = load double*, double** %hit.addr, align 8, !dbg !285
  %arrayidx23 = getelementptr inbounds double, double* %34, i64 2, !dbg !285
  %35 = load double, double* %arrayidx23, align 8, !dbg !285
  %36 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !286
  %v24 = getelementptr inbounds %struct.face_t, %struct.face_t* %36, i32 0, i32 0, !dbg !287
  %arrayidx25 = getelementptr inbounds [4 x double*], [4 x double*]* %v24, i64 0, i64 0, !dbg !286
  %37 = load double*, double** %arrayidx25, align 8, !dbg !286
  %arrayidx26 = getelementptr inbounds double, double* %37, i64 2, !dbg !286
  %38 = load double, double* %arrayidx26, align 8, !dbg !286
  %39 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !288
  %v27 = getelementptr inbounds %struct.face_t, %struct.face_t* %39, i32 0, i32 0, !dbg !289
  %arrayidx28 = getelementptr inbounds [4 x double*], [4 x double*]* %v27, i64 0, i64 2, !dbg !288
  %40 = load double*, double** %arrayidx28, align 8, !dbg !288
  %arrayidx29 = getelementptr inbounds double, double* %40, i64 2, !dbg !288
  %41 = load double, double* %arrayidx29, align 8, !dbg !288
  %call30 = call i32 @in_range(double %35, double %38, double %41), !dbg !290
  %tobool31 = icmp ne i32 %call30, 0, !dbg !284
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then13
  %42 = phi i1 [ false, %if.then13 ], [ %tobool31, %land.rhs ], !dbg !291
  %land.ext = zext i1 %42 to i32, !dbg !284
  store i32 %land.ext, i32* %retval, align 4, !dbg !292
  br label %return, !dbg !292

if.else:                                          ; preds = %for.end
  %43 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !293
  %norm32 = getelementptr inbounds %struct.face_t, %struct.face_t* %43, i32 0, i32 1, !dbg !295
  %arrayidx33 = getelementptr inbounds [3 x double], [3 x double]* %norm32, i64 0, i64 1, !dbg !293
  %44 = load double, double* %arrayidx33, align 8, !dbg !293
  %tobool34 = fcmp une double %44, 0.000000e+00, !dbg !293
  br i1 %tobool34, label %if.then35, label %if.else57, !dbg !296

if.then35:                                        ; preds = %if.else
  %45 = load double*, double** %hit.addr, align 8, !dbg !297
  %arrayidx36 = getelementptr inbounds double, double* %45, i64 0, !dbg !297
  %46 = load double, double* %arrayidx36, align 8, !dbg !297
  %47 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !299
  %v37 = getelementptr inbounds %struct.face_t, %struct.face_t* %47, i32 0, i32 0, !dbg !300
  %arrayidx38 = getelementptr inbounds [4 x double*], [4 x double*]* %v37, i64 0, i64 0, !dbg !299
  %48 = load double*, double** %arrayidx38, align 8, !dbg !299
  %arrayidx39 = getelementptr inbounds double, double* %48, i64 0, !dbg !299
  %49 = load double, double* %arrayidx39, align 8, !dbg !299
  %50 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !301
  %v40 = getelementptr inbounds %struct.face_t, %struct.face_t* %50, i32 0, i32 0, !dbg !302
  %arrayidx41 = getelementptr inbounds [4 x double*], [4 x double*]* %v40, i64 0, i64 2, !dbg !301
  %51 = load double*, double** %arrayidx41, align 8, !dbg !301
  %arrayidx42 = getelementptr inbounds double, double* %51, i64 0, !dbg !301
  %52 = load double, double* %arrayidx42, align 8, !dbg !301
  %call43 = call i32 @in_range(double %46, double %49, double %52), !dbg !303
  %tobool44 = icmp ne i32 %call43, 0, !dbg !303
  br i1 %tobool44, label %land.rhs45, label %land.end55, !dbg !304

land.rhs45:                                       ; preds = %if.then35
  %53 = load double*, double** %hit.addr, align 8, !dbg !305
  %arrayidx46 = getelementptr inbounds double, double* %53, i64 2, !dbg !305
  %54 = load double, double* %arrayidx46, align 8, !dbg !305
  %55 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !306
  %v47 = getelementptr inbounds %struct.face_t, %struct.face_t* %55, i32 0, i32 0, !dbg !307
  %arrayidx48 = getelementptr inbounds [4 x double*], [4 x double*]* %v47, i64 0, i64 0, !dbg !306
  %56 = load double*, double** %arrayidx48, align 8, !dbg !306
  %arrayidx49 = getelementptr inbounds double, double* %56, i64 2, !dbg !306
  %57 = load double, double* %arrayidx49, align 8, !dbg !306
  %58 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !308
  %v50 = getelementptr inbounds %struct.face_t, %struct.face_t* %58, i32 0, i32 0, !dbg !309
  %arrayidx51 = getelementptr inbounds [4 x double*], [4 x double*]* %v50, i64 0, i64 2, !dbg !308
  %59 = load double*, double** %arrayidx51, align 8, !dbg !308
  %arrayidx52 = getelementptr inbounds double, double* %59, i64 2, !dbg !308
  %60 = load double, double* %arrayidx52, align 8, !dbg !308
  %call53 = call i32 @in_range(double %54, double %57, double %60), !dbg !310
  %tobool54 = icmp ne i32 %call53, 0, !dbg !304
  br label %land.end55

land.end55:                                       ; preds = %land.rhs45, %if.then35
  %61 = phi i1 [ false, %if.then35 ], [ %tobool54, %land.rhs45 ], !dbg !311
  %land.ext56 = zext i1 %61 to i32, !dbg !304
  store i32 %land.ext56, i32* %retval, align 4, !dbg !312
  br label %return, !dbg !312

if.else57:                                        ; preds = %if.else
  %62 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !313
  %norm58 = getelementptr inbounds %struct.face_t, %struct.face_t* %62, i32 0, i32 1, !dbg !315
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %norm58, i64 0, i64 2, !dbg !313
  %63 = load double, double* %arrayidx59, align 8, !dbg !313
  %tobool60 = fcmp une double %63, 0.000000e+00, !dbg !313
  br i1 %tobool60, label %if.then61, label %if.end83, !dbg !316

if.then61:                                        ; preds = %if.else57
  %64 = load double*, double** %hit.addr, align 8, !dbg !317
  %arrayidx62 = getelementptr inbounds double, double* %64, i64 0, !dbg !317
  %65 = load double, double* %arrayidx62, align 8, !dbg !317
  %66 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !319
  %v63 = getelementptr inbounds %struct.face_t, %struct.face_t* %66, i32 0, i32 0, !dbg !320
  %arrayidx64 = getelementptr inbounds [4 x double*], [4 x double*]* %v63, i64 0, i64 0, !dbg !319
  %67 = load double*, double** %arrayidx64, align 8, !dbg !319
  %arrayidx65 = getelementptr inbounds double, double* %67, i64 0, !dbg !319
  %68 = load double, double* %arrayidx65, align 8, !dbg !319
  %69 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !321
  %v66 = getelementptr inbounds %struct.face_t, %struct.face_t* %69, i32 0, i32 0, !dbg !322
  %arrayidx67 = getelementptr inbounds [4 x double*], [4 x double*]* %v66, i64 0, i64 2, !dbg !321
  %70 = load double*, double** %arrayidx67, align 8, !dbg !321
  %arrayidx68 = getelementptr inbounds double, double* %70, i64 0, !dbg !321
  %71 = load double, double* %arrayidx68, align 8, !dbg !321
  %call69 = call i32 @in_range(double %65, double %68, double %71), !dbg !323
  %tobool70 = icmp ne i32 %call69, 0, !dbg !323
  br i1 %tobool70, label %land.rhs71, label %land.end81, !dbg !324

land.rhs71:                                       ; preds = %if.then61
  %72 = load double*, double** %hit.addr, align 8, !dbg !325
  %arrayidx72 = getelementptr inbounds double, double* %72, i64 1, !dbg !325
  %73 = load double, double* %arrayidx72, align 8, !dbg !325
  %74 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !326
  %v73 = getelementptr inbounds %struct.face_t, %struct.face_t* %74, i32 0, i32 0, !dbg !327
  %arrayidx74 = getelementptr inbounds [4 x double*], [4 x double*]* %v73, i64 0, i64 0, !dbg !326
  %75 = load double*, double** %arrayidx74, align 8, !dbg !326
  %arrayidx75 = getelementptr inbounds double, double* %75, i64 1, !dbg !326
  %76 = load double, double* %arrayidx75, align 8, !dbg !326
  %77 = load %struct.face_t*, %struct.face_t** %face.addr, align 8, !dbg !328
  %v76 = getelementptr inbounds %struct.face_t, %struct.face_t* %77, i32 0, i32 0, !dbg !329
  %arrayidx77 = getelementptr inbounds [4 x double*], [4 x double*]* %v76, i64 0, i64 2, !dbg !328
  %78 = load double*, double** %arrayidx77, align 8, !dbg !328
  %arrayidx78 = getelementptr inbounds double, double* %78, i64 1, !dbg !328
  %79 = load double, double* %arrayidx78, align 8, !dbg !328
  %call79 = call i32 @in_range(double %73, double %76, double %79), !dbg !330
  %tobool80 = icmp ne i32 %call79, 0, !dbg !324
  br label %land.end81

land.end81:                                       ; preds = %land.rhs71, %if.then61
  %80 = phi i1 [ false, %if.then61 ], [ %tobool80, %land.rhs71 ], !dbg !331
  %land.ext82 = zext i1 %80 to i32, !dbg !324
  store i32 %land.ext82, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.end83:                                         ; preds = %if.else57
  br label %if.end84

if.end84:                                         ; preds = %if.end83
  br label %if.end85

if.end85:                                         ; preds = %if.end84
  store i32 0, i32* %retval, align 4, !dbg !333
  br label %return, !dbg !333

return:                                           ; preds = %if.end85, %land.end81, %land.end55, %land.end
  %81 = load i32, i32* %retval, align 4, !dbg !334
  ret i32 %81, !dbg !334
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !335 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %eye = alloca [3 x double], align 16
  %dir = alloca [3 x double], align 16
  %orig = alloca [3 x double], align 16
  %hit = alloca [3 x double], align 16
  %dx = alloca [3 x double], align 16
  %dy = alloca [3 x double], align 16
  %proj = alloca [3 x double], align 16
  %d = alloca double, align 8
  %norm = alloca double*, align 8
  %dbest = alloca double, align 8
  %b = alloca double, align 8
  %light = alloca [3 x double], align 16
  %ldist = alloca [3 x double], align 16
  %decay = alloca double, align 8
  %strength = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %j, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %k, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [3 x double]* %eye, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = bitcast [3 x double]* %eye to i8*, !dbg !344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x double]* @__const.main.eye to i8*), i64 24, i1 false), !dbg !344
  call void @llvm.dbg.declare(metadata [3 x double]* %dir, metadata !345, metadata !DIExpression()), !dbg !346
  %1 = bitcast [3 x double]* %dir to i8*, !dbg !346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([3 x double]* @__const.main.dir to i8*), i64 24, i1 false), !dbg !346
  call void @llvm.dbg.declare(metadata [3 x double]* %orig, metadata !347, metadata !DIExpression()), !dbg !348
  %2 = bitcast [3 x double]* %orig to i8*, !dbg !348
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 24, i1 false), !dbg !348
  call void @llvm.dbg.declare(metadata [3 x double]* %hit, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata [3 x double]* %dx, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata [3 x double]* %dy, metadata !353, metadata !DIExpression()), !dbg !354
  %3 = bitcast [3 x double]* %dy to i8*, !dbg !354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([3 x double]* @__const.main.dy to i8*), i64 24, i1 false), !dbg !354
  call void @llvm.dbg.declare(metadata [3 x double]* %proj, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata double* %d, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata double** %norm, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata double* %dbest, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata double* %b, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata [3 x double]* %light, metadata !365, metadata !DIExpression()), !dbg !366
  %4 = bitcast [3 x double]* %light to i8*, !dbg !366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x double]* @__const.main.light to i8*), i64 24, i1 false), !dbg !366
  call void @llvm.dbg.declare(metadata [3 x double]* %ldist, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata double* %decay, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata double* %strength, metadata !371, metadata !DIExpression()), !dbg !372
  store double 1.000000e+01, double* %strength, align 8, !dbg !372
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %eye, i64 0, i64 0, !dbg !373
  %arraydecay1 = getelementptr inbounds [3 x double], [3 x double]* %dy, i64 0, i64 0, !dbg !374
  %arraydecay2 = getelementptr inbounds [3 x double], [3 x double]* %dx, i64 0, i64 0, !dbg !375
  %call = call double* @cross(double* %arraydecay, double* %arraydecay1, double* %arraydecay2), !dbg !376
  %call3 = call double @normalize(double* %call), !dbg !377
  %arraydecay4 = getelementptr inbounds [3 x double], [3 x double]* %eye, i64 0, i64 0, !dbg !378
  %arraydecay5 = getelementptr inbounds [3 x double], [3 x double]* %dx, i64 0, i64 0, !dbg !379
  %arraydecay6 = getelementptr inbounds [3 x double], [3 x double]* %dy, i64 0, i64 0, !dbg !380
  %call7 = call double* @cross(double* %arraydecay4, double* %arraydecay5, double* %arraydecay6), !dbg !381
  %call8 = call double @normalize(double* %call7), !dbg !382
  store i32 -10, i32* %i, align 4, !dbg !383
  br label %for.cond, !dbg !385

for.cond:                                         ; preds = %for.inc76, %entry
  %5 = load i32, i32* %i, align 4, !dbg !386
  %cmp = icmp sle i32 %5, 17, !dbg !388
  br i1 %cmp, label %for.body, label %for.end78, !dbg !389

for.body:                                         ; preds = %for.cond
  store i32 -35, i32* %j, align 4, !dbg !390
  br label %for.cond9, !dbg !393

for.cond9:                                        ; preds = %for.inc72, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !394
  %cmp10 = icmp slt i32 %6, 35, !dbg !396
  br i1 %cmp10, label %for.body11, label %for.end74, !dbg !397

for.body11:                                       ; preds = %for.cond9
  %arraydecay12 = getelementptr inbounds [3 x double], [3 x double]* %orig, i64 0, i64 0, !dbg !398
  %arraydecay13 = getelementptr inbounds [3 x double], [3 x double]* %orig, i64 0, i64 0, !dbg !400
  %arraydecay14 = getelementptr inbounds [3 x double], [3 x double]* %proj, i64 0, i64 0, !dbg !401
  call void @vsub(double* %arraydecay12, double* %arraydecay13, double* %arraydecay14), !dbg !402
  %arraydecay15 = getelementptr inbounds [3 x double], [3 x double]* %proj, i64 0, i64 0, !dbg !403
  %arraydecay16 = getelementptr inbounds [3 x double], [3 x double]* %dx, i64 0, i64 0, !dbg !404
  %7 = load i32, i32* %j, align 4, !dbg !405
  %conv = sitofp i32 %7 to double, !dbg !405
  %div = fdiv double %conv, 6.000000e+00, !dbg !406
  %arraydecay17 = getelementptr inbounds [3 x double], [3 x double]* %proj, i64 0, i64 0, !dbg !407
  %call18 = call double* @madd(double* %arraydecay15, double* %arraydecay16, double %div, double* %arraydecay17), !dbg !408
  %arraydecay19 = getelementptr inbounds [3 x double], [3 x double]* %dy, i64 0, i64 0, !dbg !409
  %8 = load i32, i32* %i, align 4, !dbg !410
  %conv20 = sitofp i32 %8 to double, !dbg !410
  %div21 = fdiv double %conv20, 3.000000e+00, !dbg !411
  %arraydecay22 = getelementptr inbounds [3 x double], [3 x double]* %proj, i64 0, i64 0, !dbg !412
  %call23 = call double* @madd(double* %call18, double* %arraydecay19, double %div21, double* %arraydecay22), !dbg !413
  %arraydecay24 = getelementptr inbounds [3 x double], [3 x double]* %proj, i64 0, i64 0, !dbg !414
  %arraydecay25 = getelementptr inbounds [3 x double], [3 x double]* %eye, i64 0, i64 0, !dbg !415
  %arraydecay26 = getelementptr inbounds [3 x double], [3 x double]* %dir, i64 0, i64 0, !dbg !416
  call void @vsub(double* %arraydecay24, double* %arraydecay25, double* %arraydecay26), !dbg !417
  store double 1.000000e+100, double* %dbest, align 8, !dbg !418
  store double* null, double** %norm, align 8, !dbg !419
  store i32 0, i32* %k, align 4, !dbg !420
  br label %for.cond27, !dbg !422

for.cond27:                                       ; preds = %for.inc, %for.body11
  %9 = load i32, i32* %k, align 4, !dbg !423
  %cmp28 = icmp slt i32 %9, 6, !dbg !425
  br i1 %cmp28, label %for.body30, label %for.end, !dbg !426

for.body30:                                       ; preds = %for.cond27
  %10 = load i32, i32* %k, align 4, !dbg !427
  %idx.ext = sext i32 %10 to i64, !dbg !430
  %add.ptr = getelementptr inbounds %struct.face_t, %struct.face_t* getelementptr inbounds ([6 x %struct.face_t], [6 x %struct.face_t]* @f, i64 0, i64 0), i64 %idx.ext, !dbg !430
  %arraydecay31 = getelementptr inbounds [3 x double], [3 x double]* %eye, i64 0, i64 0, !dbg !431
  %arraydecay32 = getelementptr inbounds [3 x double], [3 x double]* %dir, i64 0, i64 0, !dbg !432
  %arraydecay33 = getelementptr inbounds [3 x double], [3 x double]* %hit, i64 0, i64 0, !dbg !433
  %call34 = call i32 @face_hit(%struct.face_t* %add.ptr, double* %arraydecay31, double* %arraydecay32, double* %arraydecay33, double* %d), !dbg !434
  %tobool = icmp ne i32 %call34, 0, !dbg !434
  br i1 %tobool, label %if.end, label %if.then, !dbg !435

if.then:                                          ; preds = %for.body30
  br label %for.inc, !dbg !436

if.end:                                           ; preds = %for.body30
  %11 = load double, double* %dbest, align 8, !dbg !437
  %12 = load double, double* %d, align 8, !dbg !439
  %cmp35 = fcmp ogt double %11, %12, !dbg !440
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !441

if.then37:                                        ; preds = %if.end
  %13 = load double, double* %d, align 8, !dbg !442
  store double %13, double* %dbest, align 8, !dbg !444
  %14 = load i32, i32* %k, align 4, !dbg !445
  %idxprom = sext i32 %14 to i64, !dbg !446
  %arrayidx = getelementptr inbounds [6 x %struct.face_t], [6 x %struct.face_t]* @f, i64 0, i64 %idxprom, !dbg !446
  %norm38 = getelementptr inbounds %struct.face_t, %struct.face_t* %arrayidx, i32 0, i32 1, !dbg !447
  %arraydecay39 = getelementptr inbounds [3 x double], [3 x double]* %norm38, i64 0, i64 0, !dbg !446
  store double* %arraydecay39, double** %norm, align 8, !dbg !448
  br label %if.end40, !dbg !449

if.end40:                                         ; preds = %if.then37, %if.end
  br label %for.inc, !dbg !450

for.inc:                                          ; preds = %if.end40, %if.then
  %15 = load i32, i32* %k, align 4, !dbg !451
  %inc = add nsw i32 %15, 1, !dbg !451
  store i32 %inc, i32* %k, align 4, !dbg !451
  br label %for.cond27, !dbg !452, !llvm.loop !453

for.end:                                          ; preds = %for.cond27
  %16 = load double*, double** %norm, align 8, !dbg !455
  %tobool41 = icmp ne double* %16, null, !dbg !455
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !457

if.then42:                                        ; preds = %for.end
  %call43 = call i32 @putchar(i32 32), !dbg !458
  br label %for.inc72, !dbg !460

if.end44:                                         ; preds = %for.end
  %arraydecay45 = getelementptr inbounds [3 x double], [3 x double]* %light, i64 0, i64 0, !dbg !461
  %arraydecay46 = getelementptr inbounds [3 x double], [3 x double]* %hit, i64 0, i64 0, !dbg !462
  %arraydecay47 = getelementptr inbounds [3 x double], [3 x double]* %ldist, i64 0, i64 0, !dbg !463
  call void @vsub(double* %arraydecay45, double* %arraydecay46, double* %arraydecay47), !dbg !464
  %arraydecay48 = getelementptr inbounds [3 x double], [3 x double]* %ldist, i64 0, i64 0, !dbg !465
  %call49 = call double @normalize(double* %arraydecay48), !dbg !466
  store double %call49, double* %decay, align 8, !dbg !467
  %17 = load double*, double** %norm, align 8, !dbg !468
  %arraydecay50 = getelementptr inbounds [3 x double], [3 x double]* %ldist, i64 0, i64 0, !dbg !469
  %call51 = call double @dot(double* %17, double* %arraydecay50), !dbg !470
  %18 = load double, double* %decay, align 8, !dbg !471
  %div52 = fdiv double %call51, %18, !dbg !472
  %19 = load double, double* %strength, align 8, !dbg !473
  %mul = fmul double %div52, %19, !dbg !474
  store double %mul, double* %b, align 8, !dbg !475
  %20 = load double, double* %b, align 8, !dbg !476
  %cmp53 = fcmp olt double %20, 0.000000e+00, !dbg !478
  br i1 %cmp53, label %if.then55, label %if.else, !dbg !479

if.then55:                                        ; preds = %if.end44
  store double 0.000000e+00, double* %b, align 8, !dbg !480
  br label %if.end60, !dbg !481

if.else:                                          ; preds = %if.end44
  %21 = load double, double* %b, align 8, !dbg !482
  %cmp56 = fcmp ogt double %21, 1.000000e+00, !dbg !484
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !485

if.then58:                                        ; preds = %if.else
  store double 1.000000e+00, double* %b, align 8, !dbg !486
  br label %if.end59, !dbg !487

if.end59:                                         ; preds = %if.then58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then55
  %22 = load double, double* %b, align 8, !dbg !488
  %add = fadd double %22, 2.000000e-01, !dbg !488
  store double %add, double* %b, align 8, !dbg !488
  %23 = load double, double* %b, align 8, !dbg !489
  %cmp61 = fcmp ogt double %23, 1.000000e+00, !dbg !491
  br i1 %cmp61, label %if.then63, label %if.else64, !dbg !492

if.then63:                                        ; preds = %if.end60
  store double 0.000000e+00, double* %b, align 8, !dbg !493
  br label %if.end65, !dbg !494

if.else64:                                        ; preds = %if.end60
  %24 = load double, double* %b, align 8, !dbg !495
  %sub = fsub double 1.000000e+00, %24, !dbg !496
  store double %sub, double* %b, align 8, !dbg !497
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then63
  %25 = load i8*, i8** @shades, align 8, !dbg !498
  %26 = load double, double* %b, align 8, !dbg !499
  %mul66 = fmul double %26, 6.000000e+00, !dbg !500
  %conv67 = fptosi double %mul66 to i32, !dbg !501
  %idxprom68 = sext i32 %conv67 to i64, !dbg !498
  %arrayidx69 = getelementptr inbounds i8, i8* %25, i64 %idxprom68, !dbg !498
  %27 = load i8, i8* %arrayidx69, align 1, !dbg !498
  %conv70 = sext i8 %27 to i32, !dbg !498
  %call71 = call i32 @putchar(i32 %conv70), !dbg !502
  br label %for.inc72, !dbg !503

for.inc72:                                        ; preds = %if.end65, %if.then42
  %28 = load i32, i32* %j, align 4, !dbg !504
  %inc73 = add nsw i32 %28, 1, !dbg !504
  store i32 %inc73, i32* %j, align 4, !dbg !504
  br label %for.cond9, !dbg !505, !llvm.loop !506

for.end74:                                        ; preds = %for.cond9
  %call75 = call i32 @putchar(i32 10), !dbg !508
  br label %for.inc76, !dbg !509

for.inc76:                                        ; preds = %for.end74
  %29 = load i32, i32* %i, align 4, !dbg !510
  %inc77 = add nsw i32 %29, 1, !dbg !510
  store i32 %inc77, i32* %i, align 4, !dbg !510
  br label %for.cond, !dbg !511, !llvm.loop !512

for.end78:                                        ; preds = %for.cond
  ret i32 0, !dbg !514
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @putchar(i32) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shades", scope: !2, file: !3, line: 5, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "draw-a-cuboid.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Draw-a-cuboid")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !14, !16, !18, !20, !22, !24, !26, !28}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "v000", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !12)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13}
!13 = !DISubrange(count: 3)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "v100", scope: !2, file: !3, line: 38, type: !10, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "v010", scope: !2, file: !3, line: 39, type: !10, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "v110", scope: !2, file: !3, line: 40, type: !10, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "v001", scope: !2, file: !3, line: 41, type: !10, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "v101", scope: !2, file: !3, line: 42, type: !10, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "v011", scope: !2, file: !3, line: 43, type: !10, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "v111", scope: !2, file: !3, line: 44, type: !10, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !3, line: 51, type: !30, isLocal: false, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2688, elements: !40)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "face_t", file: !3, line: 49, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 46, size: 448, elements: !33)
!33 = !{!34, !39}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !32, file: !3, line: 47, baseType: !35, size: 256)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !37)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!37 = !{!38}
!38 = !DISubrange(count: 4)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "norm", scope: !32, file: !3, line: 48, baseType: !10, size: 192, offset: 256)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !{i32 7, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!49 = distinct !DISubprogram(name: "vsub", scope: !3, file: !3, line: 7, type: !50, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !36, !36, !36}
!52 = !DILocalVariable(name: "v1", arg: 1, scope: !49, file: !3, line: 7, type: !36)
!53 = !DILocation(line: 7, column: 19, scope: !49)
!54 = !DILocalVariable(name: "v2", arg: 2, scope: !49, file: !3, line: 7, type: !36)
!55 = !DILocation(line: 7, column: 31, scope: !49)
!56 = !DILocalVariable(name: "s", arg: 3, scope: !49, file: !3, line: 7, type: !36)
!57 = !DILocation(line: 7, column: 43, scope: !49)
!58 = !DILocation(line: 8, column: 9, scope: !49)
!59 = !DILocation(line: 8, column: 17, scope: !49)
!60 = !DILocation(line: 8, column: 15, scope: !49)
!61 = !DILocation(line: 8, column: 2, scope: !49)
!62 = !DILocation(line: 8, column: 7, scope: !49)
!63 = !DILocation(line: 9, column: 9, scope: !49)
!64 = !DILocation(line: 9, column: 17, scope: !49)
!65 = !DILocation(line: 9, column: 15, scope: !49)
!66 = !DILocation(line: 9, column: 2, scope: !49)
!67 = !DILocation(line: 9, column: 7, scope: !49)
!68 = !DILocation(line: 10, column: 9, scope: !49)
!69 = !DILocation(line: 10, column: 17, scope: !49)
!70 = !DILocation(line: 10, column: 15, scope: !49)
!71 = !DILocation(line: 10, column: 2, scope: !49)
!72 = !DILocation(line: 10, column: 7, scope: !49)
!73 = !DILocation(line: 11, column: 1, scope: !49)
!74 = distinct !DISubprogram(name: "normalize", scope: !3, file: !3, line: 13, type: !75, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{!11, !36}
!77 = !DILocalVariable(name: "v", arg: 1, scope: !74, file: !3, line: 13, type: !36)
!78 = !DILocation(line: 13, column: 27, scope: !74)
!79 = !DILocalVariable(name: "len", scope: !74, file: !3, line: 14, type: !11)
!80 = !DILocation(line: 14, column: 16, scope: !74)
!81 = !DILocation(line: 14, column: 27, scope: !74)
!82 = !DILocation(line: 14, column: 32, scope: !74)
!83 = !DILocation(line: 14, column: 31, scope: !74)
!84 = !DILocation(line: 14, column: 39, scope: !74)
!85 = !DILocation(line: 14, column: 44, scope: !74)
!86 = !DILocation(line: 14, column: 43, scope: !74)
!87 = !DILocation(line: 14, column: 37, scope: !74)
!88 = !DILocation(line: 14, column: 51, scope: !74)
!89 = !DILocation(line: 14, column: 56, scope: !74)
!90 = !DILocation(line: 14, column: 55, scope: !74)
!91 = !DILocation(line: 14, column: 49, scope: !74)
!92 = !DILocation(line: 14, column: 22, scope: !74)
!93 = !DILocation(line: 15, column: 17, scope: !74)
!94 = !DILocation(line: 15, column: 9, scope: !74)
!95 = !DILocation(line: 15, column: 14, scope: !74)
!96 = !DILocation(line: 15, column: 30, scope: !74)
!97 = !DILocation(line: 15, column: 22, scope: !74)
!98 = !DILocation(line: 15, column: 27, scope: !74)
!99 = !DILocation(line: 15, column: 43, scope: !74)
!100 = !DILocation(line: 15, column: 35, scope: !74)
!101 = !DILocation(line: 15, column: 40, scope: !74)
!102 = !DILocation(line: 16, column: 9, scope: !74)
!103 = !DILocation(line: 16, column: 2, scope: !74)
!104 = distinct !DISubprogram(name: "dot", scope: !3, file: !3, line: 19, type: !105, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DISubroutineType(types: !106)
!106 = !{!11, !36, !36}
!107 = !DILocalVariable(name: "x", arg: 1, scope: !104, file: !3, line: 19, type: !36)
!108 = !DILocation(line: 19, column: 20, scope: !104)
!109 = !DILocalVariable(name: "y", arg: 2, scope: !104, file: !3, line: 19, type: !36)
!110 = !DILocation(line: 19, column: 31, scope: !104)
!111 = !DILocation(line: 20, column: 16, scope: !104)
!112 = !DILocation(line: 20, column: 21, scope: !104)
!113 = !DILocation(line: 20, column: 20, scope: !104)
!114 = !DILocation(line: 20, column: 28, scope: !104)
!115 = !DILocation(line: 20, column: 33, scope: !104)
!116 = !DILocation(line: 20, column: 32, scope: !104)
!117 = !DILocation(line: 20, column: 26, scope: !104)
!118 = !DILocation(line: 20, column: 40, scope: !104)
!119 = !DILocation(line: 20, column: 45, scope: !104)
!120 = !DILocation(line: 20, column: 44, scope: !104)
!121 = !DILocation(line: 20, column: 38, scope: !104)
!122 = !DILocation(line: 20, column: 9, scope: !104)
!123 = distinct !DISubprogram(name: "cross", scope: !3, file: !3, line: 23, type: !124, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!124 = !DISubroutineType(types: !125)
!125 = !{!36, !36, !36, !36}
!126 = !DILocalVariable(name: "x", arg: 1, scope: !123, file: !3, line: 23, type: !36)
!127 = !DILocation(line: 23, column: 23, scope: !123)
!128 = !DILocalVariable(name: "y", arg: 2, scope: !123, file: !3, line: 23, type: !36)
!129 = !DILocation(line: 23, column: 36, scope: !123)
!130 = !DILocalVariable(name: "s", arg: 3, scope: !123, file: !3, line: 23, type: !36)
!131 = !DILocation(line: 23, column: 49, scope: !123)
!132 = !DILocation(line: 24, column: 9, scope: !123)
!133 = !DILocation(line: 24, column: 16, scope: !123)
!134 = !DILocation(line: 24, column: 14, scope: !123)
!135 = !DILocation(line: 24, column: 23, scope: !123)
!136 = !DILocation(line: 24, column: 30, scope: !123)
!137 = !DILocation(line: 24, column: 28, scope: !123)
!138 = !DILocation(line: 24, column: 21, scope: !123)
!139 = !DILocation(line: 24, column: 2, scope: !123)
!140 = !DILocation(line: 24, column: 7, scope: !123)
!141 = !DILocation(line: 25, column: 9, scope: !123)
!142 = !DILocation(line: 25, column: 16, scope: !123)
!143 = !DILocation(line: 25, column: 14, scope: !123)
!144 = !DILocation(line: 25, column: 23, scope: !123)
!145 = !DILocation(line: 25, column: 30, scope: !123)
!146 = !DILocation(line: 25, column: 28, scope: !123)
!147 = !DILocation(line: 25, column: 21, scope: !123)
!148 = !DILocation(line: 25, column: 2, scope: !123)
!149 = !DILocation(line: 25, column: 7, scope: !123)
!150 = !DILocation(line: 26, column: 9, scope: !123)
!151 = !DILocation(line: 26, column: 16, scope: !123)
!152 = !DILocation(line: 26, column: 14, scope: !123)
!153 = !DILocation(line: 26, column: 23, scope: !123)
!154 = !DILocation(line: 26, column: 30, scope: !123)
!155 = !DILocation(line: 26, column: 28, scope: !123)
!156 = !DILocation(line: 26, column: 21, scope: !123)
!157 = !DILocation(line: 26, column: 2, scope: !123)
!158 = !DILocation(line: 26, column: 7, scope: !123)
!159 = !DILocation(line: 27, column: 9, scope: !123)
!160 = !DILocation(line: 27, column: 2, scope: !123)
!161 = distinct !DISubprogram(name: "madd", scope: !3, file: !3, line: 30, type: !162, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!162 = !DISubroutineType(types: !163)
!163 = !{!36, !36, !36, !11, !36}
!164 = !DILocalVariable(name: "x", arg: 1, scope: !161, file: !3, line: 30, type: !36)
!165 = !DILocation(line: 30, column: 22, scope: !161)
!166 = !DILocalVariable(name: "y", arg: 2, scope: !161, file: !3, line: 30, type: !36)
!167 = !DILocation(line: 30, column: 33, scope: !161)
!168 = !DILocalVariable(name: "d", arg: 3, scope: !161, file: !3, line: 30, type: !11)
!169 = !DILocation(line: 30, column: 43, scope: !161)
!170 = !DILocalVariable(name: "r", arg: 4, scope: !161, file: !3, line: 30, type: !36)
!171 = !DILocation(line: 30, column: 54, scope: !161)
!172 = !DILocation(line: 31, column: 9, scope: !161)
!173 = !DILocation(line: 31, column: 16, scope: !161)
!174 = !DILocation(line: 31, column: 23, scope: !161)
!175 = !DILocation(line: 31, column: 21, scope: !161)
!176 = !DILocation(line: 31, column: 14, scope: !161)
!177 = !DILocation(line: 31, column: 2, scope: !161)
!178 = !DILocation(line: 31, column: 7, scope: !161)
!179 = !DILocation(line: 32, column: 9, scope: !161)
!180 = !DILocation(line: 32, column: 16, scope: !161)
!181 = !DILocation(line: 32, column: 23, scope: !161)
!182 = !DILocation(line: 32, column: 21, scope: !161)
!183 = !DILocation(line: 32, column: 14, scope: !161)
!184 = !DILocation(line: 32, column: 2, scope: !161)
!185 = !DILocation(line: 32, column: 7, scope: !161)
!186 = !DILocation(line: 33, column: 9, scope: !161)
!187 = !DILocation(line: 33, column: 16, scope: !161)
!188 = !DILocation(line: 33, column: 23, scope: !161)
!189 = !DILocation(line: 33, column: 21, scope: !161)
!190 = !DILocation(line: 33, column: 14, scope: !161)
!191 = !DILocation(line: 33, column: 2, scope: !161)
!192 = !DILocation(line: 33, column: 7, scope: !161)
!193 = !DILocation(line: 34, column: 9, scope: !161)
!194 = !DILocation(line: 34, column: 2, scope: !161)
!195 = distinct !DISubprogram(name: "in_range", scope: !3, file: !3, line: 60, type: !196, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!196 = !DISubroutineType(types: !197)
!197 = !{!6, !11, !11, !11}
!198 = !DILocalVariable(name: "x", arg: 1, scope: !195, file: !3, line: 60, type: !11)
!199 = !DILocation(line: 60, column: 21, scope: !195)
!200 = !DILocalVariable(name: "x0", arg: 2, scope: !195, file: !3, line: 60, type: !11)
!201 = !DILocation(line: 60, column: 31, scope: !195)
!202 = !DILocalVariable(name: "x1", arg: 3, scope: !195, file: !3, line: 60, type: !11)
!203 = !DILocation(line: 60, column: 42, scope: !195)
!204 = !DILocation(line: 61, column: 10, scope: !195)
!205 = !DILocation(line: 61, column: 14, scope: !195)
!206 = !DILocation(line: 61, column: 12, scope: !195)
!207 = !DILocation(line: 61, column: 21, scope: !195)
!208 = !DILocation(line: 61, column: 25, scope: !195)
!209 = !DILocation(line: 61, column: 23, scope: !195)
!210 = !DILocation(line: 61, column: 18, scope: !195)
!211 = !DILocation(line: 61, column: 29, scope: !195)
!212 = !DILocation(line: 61, column: 2, scope: !195)
!213 = distinct !DISubprogram(name: "face_hit", scope: !3, file: !3, line: 64, type: !214, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!214 = !DISubroutineType(types: !215)
!215 = !{!6, !216, !36, !36, !36, !36}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!217 = !DILocalVariable(name: "face", arg: 1, scope: !213, file: !3, line: 64, type: !216)
!218 = !DILocation(line: 64, column: 22, scope: !213)
!219 = !DILocalVariable(name: "src", arg: 2, scope: !213, file: !3, line: 64, type: !36)
!220 = !DILocation(line: 64, column: 35, scope: !213)
!221 = !DILocalVariable(name: "dir", arg: 3, scope: !213, file: !3, line: 64, type: !36)
!222 = !DILocation(line: 64, column: 50, scope: !213)
!223 = !DILocalVariable(name: "hit", arg: 4, scope: !213, file: !3, line: 64, type: !36)
!224 = !DILocation(line: 64, column: 65, scope: !213)
!225 = !DILocalVariable(name: "d", arg: 5, scope: !213, file: !3, line: 64, type: !36)
!226 = !DILocation(line: 64, column: 81, scope: !213)
!227 = !DILocalVariable(name: "i", scope: !213, file: !3, line: 66, type: !6)
!228 = !DILocation(line: 66, column: 6, scope: !213)
!229 = !DILocalVariable(name: "dist", scope: !213, file: !3, line: 67, type: !11)
!230 = !DILocation(line: 67, column: 9, scope: !213)
!231 = !DILocation(line: 68, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !213, file: !3, line: 68, column: 2)
!233 = !DILocation(line: 68, column: 7, scope: !232)
!234 = !DILocation(line: 68, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 68, column: 2)
!236 = !DILocation(line: 68, column: 16, scope: !235)
!237 = !DILocation(line: 68, column: 2, scope: !232)
!238 = !DILocation(line: 69, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 69, column: 7)
!240 = !DILocation(line: 69, column: 13, scope: !239)
!241 = !DILocation(line: 69, column: 18, scope: !239)
!242 = !DILocation(line: 69, column: 7, scope: !235)
!243 = !DILocation(line: 70, column: 12, scope: !239)
!244 = !DILocation(line: 70, column: 18, scope: !239)
!245 = !DILocation(line: 70, column: 23, scope: !239)
!246 = !DILocation(line: 70, column: 28, scope: !239)
!247 = !DILocation(line: 70, column: 32, scope: !239)
!248 = !DILocation(line: 70, column: 26, scope: !239)
!249 = !DILocation(line: 70, column: 38, scope: !239)
!250 = !DILocation(line: 70, column: 42, scope: !239)
!251 = !DILocation(line: 70, column: 36, scope: !239)
!252 = !DILocation(line: 70, column: 9, scope: !239)
!253 = !DILocation(line: 70, column: 4, scope: !239)
!254 = !DILocation(line: 69, column: 19, scope: !239)
!255 = !DILocation(line: 68, column: 22, scope: !235)
!256 = !DILocation(line: 68, column: 2, scope: !235)
!257 = distinct !{!257, !237, !258}
!258 = !DILocation(line: 70, column: 43, scope: !232)
!259 = !DILocation(line: 72, column: 7, scope: !213)
!260 = !DILocation(line: 72, column: 12, scope: !213)
!261 = !DILocation(line: 72, column: 17, scope: !213)
!262 = !DILocation(line: 72, column: 23, scope: !213)
!263 = !DILocation(line: 72, column: 2, scope: !213)
!264 = !DILocation(line: 73, column: 16, scope: !213)
!265 = !DILocation(line: 73, column: 21, scope: !213)
!266 = !DILocation(line: 73, column: 27, scope: !213)
!267 = !DILocation(line: 73, column: 12, scope: !213)
!268 = !DILocation(line: 73, column: 35, scope: !213)
!269 = !DILocation(line: 73, column: 33, scope: !213)
!270 = !DILocation(line: 73, column: 7, scope: !213)
!271 = !DILocation(line: 73, column: 3, scope: !213)
!272 = !DILocation(line: 73, column: 5, scope: !213)
!273 = !DILocation(line: 75, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !213, file: !3, line: 75, column: 6)
!275 = !DILocation(line: 75, column: 12, scope: !274)
!276 = !DILocation(line: 75, column: 6, scope: !213)
!277 = !DILocation(line: 76, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 75, column: 21)
!279 = !DILocation(line: 76, column: 28, scope: !278)
!280 = !DILocation(line: 76, column: 34, scope: !278)
!281 = !DILocation(line: 76, column: 43, scope: !278)
!282 = !DILocation(line: 76, column: 49, scope: !278)
!283 = !DILocation(line: 76, column: 11, scope: !278)
!284 = !DILocation(line: 76, column: 58, scope: !278)
!285 = !DILocation(line: 77, column: 13, scope: !278)
!286 = !DILocation(line: 77, column: 21, scope: !278)
!287 = !DILocation(line: 77, column: 27, scope: !278)
!288 = !DILocation(line: 77, column: 36, scope: !278)
!289 = !DILocation(line: 77, column: 42, scope: !278)
!290 = !DILocation(line: 77, column: 4, scope: !278)
!291 = !DILocation(line: 0, scope: !278)
!292 = !DILocation(line: 76, column: 3, scope: !278)
!293 = !DILocation(line: 79, column: 11, scope: !294)
!294 = distinct !DILexicalBlock(scope: !274, file: !3, line: 79, column: 11)
!295 = !DILocation(line: 79, column: 17, scope: !294)
!296 = !DILocation(line: 79, column: 11, scope: !274)
!297 = !DILocation(line: 80, column: 20, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 79, column: 26)
!299 = !DILocation(line: 80, column: 28, scope: !298)
!300 = !DILocation(line: 80, column: 34, scope: !298)
!301 = !DILocation(line: 80, column: 43, scope: !298)
!302 = !DILocation(line: 80, column: 49, scope: !298)
!303 = !DILocation(line: 80, column: 11, scope: !298)
!304 = !DILocation(line: 80, column: 58, scope: !298)
!305 = !DILocation(line: 81, column: 13, scope: !298)
!306 = !DILocation(line: 81, column: 21, scope: !298)
!307 = !DILocation(line: 81, column: 27, scope: !298)
!308 = !DILocation(line: 81, column: 36, scope: !298)
!309 = !DILocation(line: 81, column: 42, scope: !298)
!310 = !DILocation(line: 81, column: 4, scope: !298)
!311 = !DILocation(line: 0, scope: !298)
!312 = !DILocation(line: 80, column: 3, scope: !298)
!313 = !DILocation(line: 83, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !294, file: !3, line: 83, column: 11)
!315 = !DILocation(line: 83, column: 17, scope: !314)
!316 = !DILocation(line: 83, column: 11, scope: !294)
!317 = !DILocation(line: 84, column: 20, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 83, column: 26)
!319 = !DILocation(line: 84, column: 28, scope: !318)
!320 = !DILocation(line: 84, column: 34, scope: !318)
!321 = !DILocation(line: 84, column: 43, scope: !318)
!322 = !DILocation(line: 84, column: 49, scope: !318)
!323 = !DILocation(line: 84, column: 11, scope: !318)
!324 = !DILocation(line: 84, column: 58, scope: !318)
!325 = !DILocation(line: 85, column: 13, scope: !318)
!326 = !DILocation(line: 85, column: 21, scope: !318)
!327 = !DILocation(line: 85, column: 27, scope: !318)
!328 = !DILocation(line: 85, column: 36, scope: !318)
!329 = !DILocation(line: 85, column: 42, scope: !318)
!330 = !DILocation(line: 85, column: 4, scope: !318)
!331 = !DILocation(line: 0, scope: !318)
!332 = !DILocation(line: 84, column: 3, scope: !318)
!333 = !DILocation(line: 87, column: 2, scope: !213)
!334 = !DILocation(line: 88, column: 1, scope: !213)
!335 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 90, type: !336, scopeLine: 91, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!336 = !DISubroutineType(types: !5)
!337 = !DILocalVariable(name: "i", scope: !335, file: !3, line: 92, type: !6)
!338 = !DILocation(line: 92, column: 6, scope: !335)
!339 = !DILocalVariable(name: "j", scope: !335, file: !3, line: 92, type: !6)
!340 = !DILocation(line: 92, column: 9, scope: !335)
!341 = !DILocalVariable(name: "k", scope: !335, file: !3, line: 92, type: !6)
!342 = !DILocation(line: 92, column: 12, scope: !335)
!343 = !DILocalVariable(name: "eye", scope: !335, file: !3, line: 93, type: !10)
!344 = !DILocation(line: 93, column: 9, scope: !335)
!345 = !DILocalVariable(name: "dir", scope: !335, file: !3, line: 94, type: !10)
!346 = !DILocation(line: 94, column: 9, scope: !335)
!347 = !DILocalVariable(name: "orig", scope: !335, file: !3, line: 94, type: !10)
!348 = !DILocation(line: 94, column: 34, scope: !335)
!349 = !DILocalVariable(name: "hit", scope: !335, file: !3, line: 95, type: !10)
!350 = !DILocation(line: 95, column: 9, scope: !335)
!351 = !DILocalVariable(name: "dx", scope: !335, file: !3, line: 95, type: !10)
!352 = !DILocation(line: 95, column: 17, scope: !335)
!353 = !DILocalVariable(name: "dy", scope: !335, file: !3, line: 95, type: !10)
!354 = !DILocation(line: 95, column: 24, scope: !335)
!355 = !DILocalVariable(name: "proj", scope: !335, file: !3, line: 95, type: !10)
!356 = !DILocation(line: 95, column: 43, scope: !335)
!357 = !DILocalVariable(name: "d", scope: !335, file: !3, line: 96, type: !11)
!358 = !DILocation(line: 96, column: 9, scope: !335)
!359 = !DILocalVariable(name: "norm", scope: !335, file: !3, line: 96, type: !36)
!360 = !DILocation(line: 96, column: 13, scope: !335)
!361 = !DILocalVariable(name: "dbest", scope: !335, file: !3, line: 96, type: !11)
!362 = !DILocation(line: 96, column: 19, scope: !335)
!363 = !DILocalVariable(name: "b", scope: !335, file: !3, line: 96, type: !11)
!364 = !DILocation(line: 96, column: 26, scope: !335)
!365 = !DILocalVariable(name: "light", scope: !335, file: !3, line: 97, type: !10)
!366 = !DILocation(line: 97, column: 9, scope: !335)
!367 = !DILocalVariable(name: "ldist", scope: !335, file: !3, line: 97, type: !10)
!368 = !DILocation(line: 97, column: 33, scope: !335)
!369 = !DILocalVariable(name: "decay", scope: !335, file: !3, line: 97, type: !11)
!370 = !DILocation(line: 97, column: 43, scope: !335)
!371 = !DILocalVariable(name: "strength", scope: !335, file: !3, line: 97, type: !11)
!372 = !DILocation(line: 97, column: 50, scope: !335)
!373 = !DILocation(line: 99, column: 19, scope: !335)
!374 = !DILocation(line: 99, column: 24, scope: !335)
!375 = !DILocation(line: 99, column: 28, scope: !335)
!376 = !DILocation(line: 99, column: 13, scope: !335)
!377 = !DILocation(line: 99, column: 3, scope: !335)
!378 = !DILocation(line: 100, column: 18, scope: !335)
!379 = !DILocation(line: 100, column: 23, scope: !335)
!380 = !DILocation(line: 100, column: 27, scope: !335)
!381 = !DILocation(line: 100, column: 12, scope: !335)
!382 = !DILocation(line: 100, column: 2, scope: !335)
!383 = !DILocation(line: 102, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !335, file: !3, line: 102, column: 2)
!385 = !DILocation(line: 102, column: 7, scope: !384)
!386 = !DILocation(line: 102, column: 16, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !3, line: 102, column: 2)
!388 = !DILocation(line: 102, column: 18, scope: !387)
!389 = !DILocation(line: 102, column: 2, scope: !384)
!390 = !DILocation(line: 103, column: 10, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 103, column: 3)
!392 = distinct !DILexicalBlock(scope: !387, file: !3, line: 102, column: 30)
!393 = !DILocation(line: 103, column: 8, scope: !391)
!394 = !DILocation(line: 103, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 103, column: 3)
!396 = !DILocation(line: 103, column: 19, scope: !395)
!397 = !DILocation(line: 103, column: 3, scope: !391)
!398 = !DILocation(line: 104, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 103, column: 30)
!400 = !DILocation(line: 104, column: 15, scope: !399)
!401 = !DILocation(line: 104, column: 21, scope: !399)
!402 = !DILocation(line: 104, column: 4, scope: !399)
!403 = !DILocation(line: 105, column: 14, scope: !399)
!404 = !DILocation(line: 105, column: 20, scope: !399)
!405 = !DILocation(line: 105, column: 24, scope: !399)
!406 = !DILocation(line: 105, column: 26, scope: !399)
!407 = !DILocation(line: 105, column: 32, scope: !399)
!408 = !DILocation(line: 105, column: 9, scope: !399)
!409 = !DILocation(line: 105, column: 39, scope: !399)
!410 = !DILocation(line: 105, column: 43, scope: !399)
!411 = !DILocation(line: 105, column: 44, scope: !399)
!412 = !DILocation(line: 105, column: 49, scope: !399)
!413 = !DILocation(line: 105, column: 4, scope: !399)
!414 = !DILocation(line: 106, column: 9, scope: !399)
!415 = !DILocation(line: 106, column: 15, scope: !399)
!416 = !DILocation(line: 106, column: 20, scope: !399)
!417 = !DILocation(line: 106, column: 4, scope: !399)
!418 = !DILocation(line: 107, column: 10, scope: !399)
!419 = !DILocation(line: 108, column: 9, scope: !399)
!420 = !DILocation(line: 109, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !399, file: !3, line: 109, column: 5)
!422 = !DILocation(line: 109, column: 10, scope: !421)
!423 = !DILocation(line: 109, column: 17, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 109, column: 5)
!425 = !DILocation(line: 109, column: 19, scope: !424)
!426 = !DILocation(line: 109, column: 5, scope: !421)
!427 = !DILocation(line: 110, column: 23, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 110, column: 9)
!429 = distinct !DILexicalBlock(scope: !424, file: !3, line: 109, column: 29)
!430 = !DILocation(line: 110, column: 21, scope: !428)
!431 = !DILocation(line: 110, column: 26, scope: !428)
!432 = !DILocation(line: 110, column: 31, scope: !428)
!433 = !DILocation(line: 110, column: 36, scope: !428)
!434 = !DILocation(line: 110, column: 10, scope: !428)
!435 = !DILocation(line: 110, column: 9, scope: !429)
!436 = !DILocation(line: 110, column: 46, scope: !428)
!437 = !DILocation(line: 111, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !3, line: 111, column: 9)
!439 = !DILocation(line: 111, column: 17, scope: !438)
!440 = !DILocation(line: 111, column: 15, scope: !438)
!441 = !DILocation(line: 111, column: 9, scope: !429)
!442 = !DILocation(line: 112, column: 14, scope: !443)
!443 = distinct !DILexicalBlock(scope: !438, file: !3, line: 111, column: 20)
!444 = !DILocation(line: 112, column: 12, scope: !443)
!445 = !DILocation(line: 113, column: 15, scope: !443)
!446 = !DILocation(line: 113, column: 13, scope: !443)
!447 = !DILocation(line: 113, column: 18, scope: !443)
!448 = !DILocation(line: 113, column: 11, scope: !443)
!449 = !DILocation(line: 114, column: 5, scope: !443)
!450 = !DILocation(line: 115, column: 4, scope: !429)
!451 = !DILocation(line: 109, column: 25, scope: !424)
!452 = !DILocation(line: 109, column: 5, scope: !424)
!453 = distinct !{!453, !426, !454}
!454 = !DILocation(line: 115, column: 4, scope: !421)
!455 = !DILocation(line: 117, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !399, file: !3, line: 117, column: 8)
!457 = !DILocation(line: 117, column: 8, scope: !399)
!458 = !DILocation(line: 118, column: 5, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 117, column: 15)
!460 = !DILocation(line: 119, column: 5, scope: !459)
!461 = !DILocation(line: 122, column: 9, scope: !399)
!462 = !DILocation(line: 122, column: 16, scope: !399)
!463 = !DILocation(line: 122, column: 21, scope: !399)
!464 = !DILocation(line: 122, column: 4, scope: !399)
!465 = !DILocation(line: 123, column: 22, scope: !399)
!466 = !DILocation(line: 123, column: 12, scope: !399)
!467 = !DILocation(line: 123, column: 10, scope: !399)
!468 = !DILocation(line: 124, column: 12, scope: !399)
!469 = !DILocation(line: 124, column: 18, scope: !399)
!470 = !DILocation(line: 124, column: 8, scope: !399)
!471 = !DILocation(line: 124, column: 27, scope: !399)
!472 = !DILocation(line: 124, column: 25, scope: !399)
!473 = !DILocation(line: 124, column: 35, scope: !399)
!474 = !DILocation(line: 124, column: 33, scope: !399)
!475 = !DILocation(line: 124, column: 6, scope: !399)
!476 = !DILocation(line: 125, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !399, file: !3, line: 125, column: 8)
!478 = !DILocation(line: 125, column: 10, scope: !477)
!479 = !DILocation(line: 125, column: 8, scope: !399)
!480 = !DILocation(line: 125, column: 17, scope: !477)
!481 = !DILocation(line: 125, column: 15, scope: !477)
!482 = !DILocation(line: 126, column: 13, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !3, line: 126, column: 13)
!484 = !DILocation(line: 126, column: 15, scope: !483)
!485 = !DILocation(line: 126, column: 13, scope: !477)
!486 = !DILocation(line: 126, column: 22, scope: !483)
!487 = !DILocation(line: 126, column: 20, scope: !483)
!488 = !DILocation(line: 127, column: 6, scope: !399)
!489 = !DILocation(line: 128, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !399, file: !3, line: 128, column: 8)
!491 = !DILocation(line: 128, column: 10, scope: !490)
!492 = !DILocation(line: 128, column: 8, scope: !399)
!493 = !DILocation(line: 128, column: 17, scope: !490)
!494 = !DILocation(line: 128, column: 15, scope: !490)
!495 = !DILocation(line: 129, column: 17, scope: !490)
!496 = !DILocation(line: 129, column: 15, scope: !490)
!497 = !DILocation(line: 129, column: 11, scope: !490)
!498 = !DILocation(line: 130, column: 12, scope: !399)
!499 = !DILocation(line: 130, column: 25, scope: !399)
!500 = !DILocation(line: 130, column: 27, scope: !399)
!501 = !DILocation(line: 130, column: 19, scope: !399)
!502 = !DILocation(line: 130, column: 4, scope: !399)
!503 = !DILocation(line: 131, column: 3, scope: !399)
!504 = !DILocation(line: 103, column: 26, scope: !395)
!505 = !DILocation(line: 103, column: 3, scope: !395)
!506 = distinct !{!506, !397, !507}
!507 = !DILocation(line: 131, column: 3, scope: !391)
!508 = !DILocation(line: 132, column: 3, scope: !392)
!509 = !DILocation(line: 133, column: 2, scope: !392)
!510 = !DILocation(line: 102, column: 26, scope: !387)
!511 = !DILocation(line: 102, column: 2, scope: !387)
!512 = distinct !{!512, !389, !513}
!513 = !DILocation(line: 133, column: 2, scope: !384)
!514 = !DILocation(line: 135, column: 9, scope: !335)
