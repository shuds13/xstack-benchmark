; ModuleID = 'determine-if-a-string-is-numeric.ll'
source_filename = "determine-if-a-string-is-numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"01983498\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isNumeric(i8* %s) #0 !dbg !27 {
entry:
  %p = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %s, metadata !34, metadata !DIExpression()), !dbg !35
  %cmp = icmp eq i8* %s, null, !dbg !36
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !38

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %s, align 1, !dbg !39
  %conv = sext i8 %0 to i32, !dbg !39
  %cmp1 = icmp eq i32 %conv, 0, !dbg !40
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !41

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call = call i16** @__ctype_b_loc() #4, !dbg !42
  %1 = load i16*, i16** %call, align 8, !dbg !42
  %2 = load i8, i8* %s, align 1, !dbg !42
  %conv4 = sext i8 %2 to i32, !dbg !42
  %idxprom = sext i32 %conv4 to i64, !dbg !42
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom, !dbg !42
  %3 = load i16, i16* %arrayidx, align 2, !dbg !42
  %conv5 = zext i16 %3 to i32, !dbg !42
  %and = and i32 %conv5, 8192, !dbg !42
  %tobool = icmp ne i32 %and, 0, !dbg !42
  br i1 %tobool, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %return, !dbg !44

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.dbg.declare(metadata i8** %p, metadata !45, metadata !DIExpression()), !dbg !47
  %call6 = call double @strtod(i8* %s, i8** %p) #5, !dbg !48
  %4 = load i8*, i8** %p, align 8, !dbg !49
  %5 = load i8, i8* %4, align 1, !dbg !50
  %conv7 = sext i8 %5 to i32, !dbg !50
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !51
  %conv9 = zext i1 %cmp8 to i32, !dbg !51
  br label %return, !dbg !52

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv9, %if.end ], !dbg !35
  ret i32 %retval.0, !dbg !53
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !54 {
entry:
  %call = call i32 @isNumeric(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !57
  ret i32 0, !dbg !58
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "determine-if-a-string-is-numeric.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Determine-if-a-string-is-numeric")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!8 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!9 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!18 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!19 = !{!20, !21, !22}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!27 = distinct !DISubprogram(name: "isNumeric", scope: !1, file: !1, line: 3, type: !28, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!21, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "s", arg: 1, scope: !27, file: !1, line: 3, type: !30)
!35 = !DILocation(line: 0, scope: !27)
!36 = !DILocation(line: 5, column: 11, scope: !37)
!37 = distinct !DILexicalBlock(scope: !27, file: !1, line: 5, column: 9)
!38 = !DILocation(line: 5, column: 19, scope: !37)
!39 = !DILocation(line: 5, column: 22, scope: !37)
!40 = !DILocation(line: 5, column: 25, scope: !37)
!41 = !DILocation(line: 5, column: 33, scope: !37)
!42 = !DILocation(line: 5, column: 36, scope: !37)
!43 = !DILocation(line: 5, column: 9, scope: !27)
!44 = !DILocation(line: 6, column: 7, scope: !37)
!45 = !DILocalVariable(name: "p", scope: !27, file: !1, line: 7, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!47 = !DILocation(line: 7, column: 12, scope: !27)
!48 = !DILocation(line: 8, column: 5, scope: !27)
!49 = !DILocation(line: 9, column: 13, scope: !27)
!50 = !DILocation(line: 9, column: 12, scope: !27)
!51 = !DILocation(line: 9, column: 15, scope: !27)
!52 = !DILocation(line: 9, column: 5, scope: !27)
!53 = !DILocation(line: 10, column: 1, scope: !27)
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !55, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!55 = !DISubroutineType(types: !56)
!56 = !{!21}
!57 = !DILocation(line: 14, column: 3, scope: !54)
!58 = !DILocation(line: 15, column: 3, scope: !54)
