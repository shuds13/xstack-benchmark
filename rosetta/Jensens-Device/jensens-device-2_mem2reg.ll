; ModuleID = 'jensens-device-2.ll'
source_filename = "jensens-device-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@i = common dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 100, metadata !17, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !18, metadata !DIExpression()), !dbg !16
  store i32 1, i32* @i, align 4, !dbg !20
  br label %for.cond, !dbg !20

for.cond:                                         ; preds = %for.inc, %entry
  %temp.0 = phi double [ 0.000000e+00, %entry ], [ %add, %for.inc ], !dbg !16
  call void @llvm.dbg.value(metadata double %temp.0, metadata !18, metadata !DIExpression()), !dbg !16
  %0 = load i32, i32* @i, align 4, !dbg !22
  %cmp = icmp sle i32 %0, 100, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @i, align 4, !dbg !22
  %conv = sitofp i32 %1 to double, !dbg !22
  %div = fdiv double 1.000000e+00, %conv, !dbg !22
  %add = fadd double %temp.0, %div, !dbg !22
  call void @llvm.dbg.value(metadata double %add, metadata !18, metadata !DIExpression()), !dbg !16
  br label %for.inc, !dbg !22

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* @i, align 4, !dbg !22
  %inc = add nsw i32 %2, 1, !dbg !22
  store i32 %inc, i32* @i, align 4, !dbg !22
  br label %for.cond, !dbg !22, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %temp.0), !dbg !25
  ret i32 0, !dbg !26
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i", scope: !2, file: !3, line: 3, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "jensens-device-2.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Jensens-Device")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)"}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 16, type: !12, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocalVariable(name: "lo", scope: !15, file: !3, line: 17, type: !6)
!15 = distinct !DILexicalBlock(scope: !11, file: !3, line: 17, column: 20)
!16 = !DILocation(line: 0, scope: !15)
!17 = !DILocalVariable(name: "hi", scope: !15, file: !3, line: 17, type: !6)
!18 = !DILocalVariable(name: "temp", scope: !15, file: !3, line: 17, type: !19)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DILocation(line: 17, column: 20, scope: !21)
!21 = distinct !DILexicalBlock(scope: !15, file: !3, line: 17, column: 20)
!22 = !DILocation(line: 17, column: 20, scope: !23)
!23 = distinct !DILexicalBlock(scope: !21, file: !3, line: 17, column: 20)
!24 = distinct !{!24, !20, !20}
!25 = !DILocation(line: 17, column: 5, scope: !11)
!26 = !DILocation(line: 18, column: 5, scope: !11)
