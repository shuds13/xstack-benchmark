; ModuleID = 'inverted-syntax-1.ll'
source_filename = "inverted-syntax-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 !dbg !7 {
entry:
  ret i32 1, !dbg !11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !14
  br label %do.body, !dbg !15

do.body:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 2, metadata !16, metadata !DIExpression()), !dbg !18
  br label %do.body1, !dbg !19

do.body1:                                         ; preds = %do.cond, %do.body
  %_o.0 = phi i32 [ 2, %do.body ], [ %lnot.ext, %do.cond ], !dbg !18
  call void @llvm.dbg.value(metadata i32 %_o.0, metadata !16, metadata !DIExpression()), !dbg !18
  switch i32 %_o.0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !20

sw.bb:                                            ; preds = %do.body1
  call void @llvm.dbg.value(metadata i32 4, metadata !13, metadata !DIExpression()), !dbg !14
  br label %sw.bb2, !dbg !22

sw.bb2:                                           ; preds = %sw.bb, %do.body1
  %a.0 = phi i32 [ 0, %do.body1 ], [ 4, %sw.bb ], !dbg !14
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !13, metadata !DIExpression()), !dbg !14
  br label %sw.epilog, !dbg !24

sw.bb3:                                           ; preds = %do.body1
  %call = call i32 @foo(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  %lnot = xor i1 %tobool, true, !dbg !24
  %lnot4 = xor i1 %lnot, true, !dbg !24
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !24
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !16, metadata !DIExpression()), !dbg !18
  br label %do.cond, !dbg !24

sw.epilog:                                        ; preds = %sw.bb2, %do.body1
  %a.1 = phi i32 [ 0, %do.body1 ], [ %a.0, %sw.bb2 ], !dbg !25
  call void @llvm.dbg.value(metadata i32 %a.1, metadata !13, metadata !DIExpression()), !dbg !14
  br label %do.end, !dbg !26

do.cond:                                          ; preds = %sw.bb3
  br i1 true, label %do.body1, label %do.end, !dbg !26, !llvm.loop !27

do.end:                                           ; preds = %do.cond, %sw.epilog
  %a.2 = phi i32 [ %a.1, %sw.epilog ], [ 0, %do.cond ], !dbg !25
  call void @llvm.dbg.value(metadata i32 %a.2, metadata !13, metadata !DIExpression()), !dbg !14
  br label %do.end6, !dbg !28

do.end6:                                          ; preds = %do.end
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %a.2), !dbg !29
  call void @exit(i32 0) #4, !dbg !30
  unreachable, !dbg !30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "inverted-syntax-1.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Inverted-syntax")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)"}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 7, type: !8, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocation(line: 7, column: 13, scope: !7)
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !8, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DILocalVariable(name: "a", scope: !12, file: !1, line: 11, type: !10)
!14 = !DILocation(line: 0, scope: !12)
!15 = !DILocation(line: 13, column: 9, scope: !12)
!16 = !DILocalVariable(name: "_o", scope: !17, file: !1, line: 13, type: !10)
!17 = distinct !DILexicalBlock(scope: !12, file: !1, line: 13, column: 9)
!18 = !DILocation(line: 0, scope: !17)
!19 = !DILocation(line: 13, column: 9, scope: !17)
!20 = !DILocation(line: 13, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 13, column: 9)
!22 = !DILocation(line: 13, column: 20, scope: !23)
!23 = distinct !DILexicalBlock(scope: !21, file: !1, line: 13, column: 9)
!24 = !DILocation(line: 13, column: 26, scope: !23)
!25 = !DILocation(line: 11, column: 13, scope: !12)
!26 = !DILocation(line: 13, column: 26, scope: !21)
!27 = distinct !{!27, !19, !28}
!28 = !DILocation(line: 13, column: 26, scope: !17)
!29 = !DILocation(line: 14, column: 9, scope: !12)
!30 = !DILocation(line: 15, column: 9, scope: !12)
