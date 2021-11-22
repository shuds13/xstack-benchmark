; ModuleID = 'digital-root.c'
source_filename = "digital-root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.x = private unnamed_addr constant [4 x i64] [i64 627615, i64 39390, i64 588225, i64 393900588225], align 16
@.str = private unnamed_addr constant [24 x i8] c"%lld: pers %d, root %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @droot(i64 %x, i32 %base, i32* %pers) #0 !dbg !7 {
entry:
  %x.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %pers.addr = alloca i32*, align 8
  %d = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32* %pers, i32** %pers.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pers.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %d, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %d, align 4, !dbg !20
  %0 = load i32*, i32** %pers.addr, align 8, !dbg !21
  %tobool = icmp ne i32* %0, null, !dbg !21
  br i1 %tobool, label %if.then, label %if.else, !dbg !23, !cf.info !24

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %pers.addr, align 8, !dbg !25
  store i32 0, i32* %1, align 4, !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc9, %if.then
  %2 = load i64, i64* %x.addr, align 8, !dbg !29
  %3 = load i32, i32* %base.addr, align 4, !dbg !31
  %conv = sext i32 %3 to i64, !dbg !31
  %cmp = icmp sge i64 %2, %conv, !dbg !32
  br i1 %cmp, label %for.body, label %for.end11, !dbg !33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %d, align 4, !dbg !34
  br label %for.cond2, !dbg !36

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %x.addr, align 8, !dbg !37
  %tobool3 = icmp ne i64 %4, 0, !dbg !39
  br i1 %tobool3, label %for.body4, label %for.end, !dbg !39

for.body4:                                        ; preds = %for.cond2
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body4
  %5 = load i64, i64* %x.addr, align 8, !dbg !40
  %6 = load i32, i32* %base.addr, align 4, !dbg !41
  %conv5 = sext i32 %6 to i64, !dbg !41
  %rem = srem i64 %5, %conv5, !dbg !42
  %7 = load i32, i32* %d, align 4, !dbg !43
  %conv6 = sext i32 %7 to i64, !dbg !43
  %add = add nsw i64 %conv6, %rem, !dbg !43
  %conv7 = trunc i64 %add to i32, !dbg !43
  store i32 %conv7, i32* %d, align 4, !dbg !43
  %8 = load i32, i32* %base.addr, align 4, !dbg !44
  %conv8 = sext i32 %8 to i64, !dbg !44
  %9 = load i64, i64* %x.addr, align 8, !dbg !45
  %div = sdiv i64 %9, %conv8, !dbg !45
  store i64 %div, i64* %x.addr, align 8, !dbg !45
  br label %for.cond2, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond2
  br label %for.inc9, !dbg !48

for.inc9:                                         ; preds = %for.end
  %10 = load i32, i32* %d, align 4, !dbg !49
  %conv10 = sext i32 %10 to i64, !dbg !49
  store i64 %conv10, i64* %x.addr, align 8, !dbg !50
  %11 = load i32*, i32** %pers.addr, align 8, !dbg !51
  %12 = load i32, i32* %11, align 4, !dbg !52
  %inc = add nsw i32 %12, 1, !dbg !52
  store i32 %inc, i32* %11, align 4, !dbg !52
  br label %for.cond, !dbg !53, !llvm.loop !54

for.end11:                                        ; preds = %for.cond
  br label %if.end19, !dbg !55

if.else:                                          ; preds = %entry
  %13 = load i64, i64* %x.addr, align 8, !dbg !56
  %tobool12 = icmp ne i64 %13, 0, !dbg !56
  br i1 %tobool12, label %land.lhs.true, label %if.end, !dbg !58, !cf.info !24

land.lhs.true:                                    ; preds = %if.else
  %14 = load i64, i64* %x.addr, align 8, !dbg !59
  %15 = load i32, i32* %base.addr, align 4, !dbg !60
  %sub = sub nsw i32 %15, 1, !dbg !61
  %conv13 = sext i32 %sub to i64, !dbg !62
  %rem14 = srem i64 %14, %conv13, !dbg !63
  %conv15 = trunc i64 %rem14 to i32, !dbg !59
  store i32 %conv15, i32* %d, align 4, !dbg !64
  %tobool16 = icmp ne i32 %conv15, 0, !dbg !64
  br i1 %tobool16, label %if.end, label %if.then17, !dbg !65, !cf.info !24

if.then17:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %base.addr, align 4, !dbg !66
  %sub18 = sub nsw i32 %16, 1, !dbg !67
  store i32 %sub18, i32* %d, align 4, !dbg !68
  br label %if.end, !dbg !69

if.end:                                           ; preds = %if.then17, %land.lhs.true, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end, %for.end11
  %17 = load i32, i32* %d, align 4, !dbg !70
  ret i32 %17, !dbg !71
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !72 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %pers = alloca i32, align 4
  %x = alloca [4 x i64], align 16
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %d, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %pers, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [4 x i64]* %x, metadata !81, metadata !DIExpression()), !dbg !85
  %0 = bitcast [4 x i64]* %x to i8*, !dbg !85
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i64]* @__const.main.x to i8*), i64 32, i1 false), !dbg !85
  store i32 0, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !88

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !89
  %cmp = icmp slt i32 %1, 4, !dbg !91
  br i1 %cmp, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !93
  %idxprom = sext i32 %2 to i64, !dbg !95
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %x, i64 0, i64 %idxprom, !dbg !95
  %3 = load i64, i64* %arrayidx, align 8, !dbg !95
  %call = call i32 @droot(i64 %3, i32 10, i32* %pers), !dbg !96
  store i32 %call, i32* %d, align 4, !dbg !97
  %4 = load i32, i32* %i, align 4, !dbg !98
  %idxprom1 = sext i32 %4 to i64, !dbg !99
  %arrayidx2 = getelementptr inbounds [4 x i64], [4 x i64]* %x, i64 0, i64 %idxprom1, !dbg !99
  %5 = load i64, i64* %arrayidx2, align 8, !dbg !99
  %6 = load i32, i32* %pers, align 4, !dbg !100
  %7 = load i32, i32* %d, align 4, !dbg !101
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %5, i32 %6, i32 %7), !dbg !102
  br label %for.inc, !dbg !103

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !104
  %inc = add nsw i32 %8, 1, !dbg !104
  store i32 %inc, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !105, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "digital-root.c", directory: "/scratch/yc0769/xstack_benchmark/rosetta/Digital-root")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git 078de928eea94413164fbdff5fab7bdcf0f60aa7)"}
!7 = distinct !DISubprogram(name: "droot", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !10, !12}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 3, type: !11)
!14 = !DILocation(line: 3, column: 25, scope: !7)
!15 = !DILocalVariable(name: "base", arg: 2, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 32, scope: !7)
!17 = !DILocalVariable(name: "pers", arg: 3, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 43, scope: !7)
!19 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 6, scope: !7)
!21 = !DILocation(line: 6, column: 6, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 6)
!23 = !DILocation(line: 6, column: 6, scope: !7)
!24 = !{!"if"}
!25 = !DILocation(line: 7, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 7, column: 3)
!27 = !DILocation(line: 7, column: 14, scope: !26)
!28 = !DILocation(line: 7, column: 8, scope: !26)
!29 = !DILocation(line: 7, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 3)
!31 = !DILocation(line: 7, column: 24, scope: !30)
!32 = !DILocation(line: 7, column: 21, scope: !30)
!33 = !DILocation(line: 7, column: 3, scope: !26)
!34 = !DILocation(line: 8, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 8, column: 4)
!36 = !DILocation(line: 8, column: 9, scope: !35)
!37 = !DILocation(line: 8, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 4)
!39 = !DILocation(line: 8, column: 4, scope: !35)
!40 = !DILocation(line: 8, column: 24, scope: !38)
!41 = !DILocation(line: 8, column: 28, scope: !38)
!42 = !DILocation(line: 8, column: 26, scope: !38)
!43 = !DILocation(line: 8, column: 21, scope: !38)
!44 = !DILocation(line: 8, column: 39, scope: !38)
!45 = !DILocation(line: 8, column: 36, scope: !38)
!46 = !DILocation(line: 8, column: 4, scope: !38)
!47 = distinct !{!47, !39, !48}
!48 = !DILocation(line: 8, column: 44, scope: !35)
!49 = !DILocation(line: 7, column: 34, scope: !30)
!50 = !DILocation(line: 7, column: 32, scope: !30)
!51 = !DILocation(line: 7, column: 39, scope: !30)
!52 = !DILocation(line: 7, column: 44, scope: !30)
!53 = !DILocation(line: 7, column: 3, scope: !30)
!54 = distinct !{!54, !33, !55}
!55 = !DILocation(line: 8, column: 44, scope: !26)
!56 = !DILocation(line: 9, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 11)
!58 = !DILocation(line: 9, column: 13, scope: !57)
!59 = !DILocation(line: 9, column: 22, scope: !57)
!60 = !DILocation(line: 9, column: 27, scope: !57)
!61 = !DILocation(line: 9, column: 32, scope: !57)
!62 = !DILocation(line: 9, column: 26, scope: !57)
!63 = !DILocation(line: 9, column: 24, scope: !57)
!64 = !DILocation(line: 9, column: 20, scope: !57)
!65 = !DILocation(line: 9, column: 11, scope: !22)
!66 = !DILocation(line: 10, column: 8, scope: !57)
!67 = !DILocation(line: 10, column: 13, scope: !57)
!68 = !DILocation(line: 10, column: 6, scope: !57)
!69 = !DILocation(line: 10, column: 4, scope: !57)
!70 = !DILocation(line: 12, column: 9, scope: !7)
!71 = !DILocation(line: 12, column: 2, scope: !7)
!72 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !73, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{!10}
!75 = !DILocalVariable(name: "i", scope: !72, file: !1, line: 17, type: !10)
!76 = !DILocation(line: 17, column: 6, scope: !72)
!77 = !DILocalVariable(name: "d", scope: !72, file: !1, line: 17, type: !10)
!78 = !DILocation(line: 17, column: 9, scope: !72)
!79 = !DILocalVariable(name: "pers", scope: !72, file: !1, line: 17, type: !10)
!80 = !DILocation(line: 17, column: 12, scope: !72)
!81 = !DILocalVariable(name: "x", scope: !72, file: !1, line: 18, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 4)
!85 = !DILocation(line: 18, column: 12, scope: !72)
!86 = !DILocation(line: 20, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !72, file: !1, line: 20, column: 2)
!88 = !DILocation(line: 20, column: 7, scope: !87)
!89 = !DILocation(line: 20, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 20, column: 2)
!91 = !DILocation(line: 20, column: 16, scope: !90)
!92 = !DILocation(line: 20, column: 2, scope: !87)
!93 = !DILocation(line: 21, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 20, column: 26)
!95 = !DILocation(line: 21, column: 13, scope: !94)
!96 = !DILocation(line: 21, column: 7, scope: !94)
!97 = !DILocation(line: 21, column: 5, scope: !94)
!98 = !DILocation(line: 22, column: 40, scope: !94)
!99 = !DILocation(line: 22, column: 38, scope: !94)
!100 = !DILocation(line: 22, column: 44, scope: !94)
!101 = !DILocation(line: 22, column: 50, scope: !94)
!102 = !DILocation(line: 22, column: 3, scope: !94)
!103 = !DILocation(line: 23, column: 2, scope: !94)
!104 = !DILocation(line: 20, column: 22, scope: !90)
!105 = !DILocation(line: 20, column: 2, scope: !90)
!106 = distinct !{!106, !92, !107}
!107 = !DILocation(line: 23, column: 2, scope: !87)
!108 = !DILocation(line: 25, column: 2, scope: !72)
