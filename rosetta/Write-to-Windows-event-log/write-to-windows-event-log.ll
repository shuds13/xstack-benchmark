; ModuleID = 'write-to-windows-event-log.c'
source_filename = "write-to-windows-event-log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"Usage : %s < Followed by level, id, source string and description>\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"EventCreate /t %s /id %s /l APPLICATION /so %s /d \22%s\22\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argC, i8** %argV) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argC.addr = alloca i32, align 4
  %argV.addr = alloca i8**, align 8
  %str = alloca [1000 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argC, i32* %argC.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argC.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argV, i8*** %argV.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argV.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata [1000 x i8]* %str, metadata !18, metadata !DIExpression()), !dbg !22
  %0 = load i32, i32* %argC.addr, align 4, !dbg !23
  %cmp = icmp ne i32 %0, 5, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !26, !cf.info !27

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argV.addr, align 8, !dbg !28
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0, !dbg !28
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !28
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %2), !dbg !29
  br label %if.end, !dbg !29

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %str, i64 0, i64 0, !dbg !30
  %3 = load i8**, i8*** %argV.addr, align 8, !dbg !32
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !32
  %4 = load i8*, i8** %arrayidx1, align 8, !dbg !32
  %5 = load i8**, i8*** %argV.addr, align 8, !dbg !33
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2, !dbg !33
  %6 = load i8*, i8** %arrayidx2, align 8, !dbg !33
  %7 = load i8**, i8*** %argV.addr, align 8, !dbg !34
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 3, !dbg !34
  %8 = load i8*, i8** %arrayidx3, align 8, !dbg !34
  %9 = load i8**, i8*** %argV.addr, align 8, !dbg !35
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 4, !dbg !35
  %10 = load i8*, i8** %arrayidx4, align 8, !dbg !35
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %4, i8* %6, i8* %8, i8* %10) #4, !dbg !36
  %arraydecay6 = getelementptr inbounds [1000 x i8], [1000 x i8]* %str, i64 0, i64 0, !dbg !37
  %call7 = call i32 @system(i8* %arraydecay6), !dbg !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

declare dso_local i32 @system(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "write-to-windows-event-log.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Write-to-Windows-event-log")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argC", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!15 = !DILocation(line: 4, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argV", arg: 2, scope: !7, file: !1, line: 4, type: !11)
!17 = !DILocation(line: 4, column: 25, scope: !7)
!18 = !DILocalVariable(name: "str", scope: !7, file: !1, line: 6, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 1000)
!22 = !DILocation(line: 6, column: 7, scope: !7)
!23 = !DILocation(line: 8, column: 5, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!25 = !DILocation(line: 8, column: 9, scope: !24)
!26 = !DILocation(line: 8, column: 5, scope: !7)
!27 = !{!"if"}
!28 = !DILocation(line: 9, column: 79, scope: !24)
!29 = !DILocation(line: 9, column: 3, scope: !24)
!30 = !DILocation(line: 11, column: 11, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 6)
!32 = !DILocation(line: 11, column: 74, scope: !31)
!33 = !DILocation(line: 11, column: 82, scope: !31)
!34 = !DILocation(line: 11, column: 90, scope: !31)
!35 = !DILocation(line: 11, column: 98, scope: !31)
!36 = !DILocation(line: 11, column: 3, scope: !31)
!37 = !DILocation(line: 12, column: 10, scope: !31)
!38 = !DILocation(line: 12, column: 3, scope: !31)
!39 = !DILocation(line: 15, column: 2, scope: !7)
