; ModuleID = '99-bottles-of-beer-1.ll'
source_filename = "99-bottles-of-beer-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [120 x i8] c"%d bottles of beer on the wall, %d bottles of beer.\0ATake one down and pass it around, %d bottles of beer on the wall.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [365 x i8] c"2 bottles of beer on the wall, 2 bottles of beer.\0ATake one down and pass it around, 1 bottle of beer on the wall.\0A\0A1 bottle of beer on the wall, 1 bottle of beer.\0ATake one down and pass it around, no more bottles of beer on the wall.\0A\0ANo more bottles of beer on the wall, no more bottles of beer.\0AGo to the store and buy some more, 99 bottles of beer on the wall.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 99, metadata !11, metadata !DIExpression()), !dbg !12
  br label %for.cond, !dbg !13

for.cond:                                         ; preds = %for.inc, %entry
  %n.0 = phi i32 [ 99, %entry ], [ %dec, %for.inc ], !dbg !15
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !11, metadata !DIExpression()), !dbg !12
  %cmp = icmp sgt i32 %n.0, 2, !dbg !16
  br i1 %cmp, label %for.body, label %for.end, !dbg !18

for.body:                                         ; preds = %for.cond
  %sub = sub nsw i32 %n.0, 1, !dbg !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %n.0, i32 %n.0, i32 %sub), !dbg !20
  br label %for.inc, !dbg !20

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %n.0, -1, !dbg !21
  call void @llvm.dbg.value(metadata i32 %dec, metadata !11, metadata !DIExpression()), !dbg !12
  br label %for.cond, !dbg !22, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.1, i64 0, i64 0)), !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "99-bottles-of-beer-1.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/99-Bottles-of-Beer-1")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !8, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 9, type: !10)
!12 = !DILocation(line: 0, scope: !7)
!13 = !DILocation(line: 11, column: 8, scope: !14)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 11, column: 18, scope: !17)
!17 = distinct !DILexicalBlock(scope: !14, file: !1, line: 11, column: 3)
!18 = !DILocation(line: 11, column: 3, scope: !14)
!19 = !DILocation(line: 15, column: 16, scope: !17)
!20 = !DILocation(line: 12, column: 5, scope: !17)
!21 = !DILocation(line: 11, column: 24, scope: !17)
!22 = !DILocation(line: 11, column: 3, scope: !17)
!23 = distinct !{!23, !18, !24}
!24 = !DILocation(line: 15, column: 19, scope: !14)
!25 = !DILocation(line: 17, column: 3, scope: !7)
!26 = !DILocation(line: 27, column: 7, scope: !7)
