; ModuleID = 'reduction.cu'
source_filename = "reduction.cu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.CUstream_st = type opaque

$_ZN4dim3C2Ejjj = comdat any

@.str = private unnamed_addr constant [27 x i8] c"COMPLETED SUCCESSFULLY %d\0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z12sumReductionPiS_(i32* %v, i32* %v_r) #0 !dbg !692 {
entry:
  %v.addr = alloca i32*, align 8
  %v_r.addr = alloca i32*, align 8
  store i32* %v, i32** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %v.addr, metadata !696, metadata !DIExpression()), !dbg !697
  store i32* %v_r, i32** %v_r.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %v_r.addr, metadata !698, metadata !DIExpression()), !dbg !699
  %0 = bitcast i32** %v.addr to i8*, !dbg !700
  %1 = call i32 @cudaSetupArgument(i8* %0, i64 8, i64 0), !dbg !700
  %2 = icmp eq i32 %1, 0, !dbg !700
  br i1 %2, label %setup.next, label %setup.end, !dbg !700

setup.next:                                       ; preds = %entry
  %3 = bitcast i32** %v_r.addr to i8*, !dbg !700
  %4 = call i32 @cudaSetupArgument(i8* %3, i64 8, i64 8), !dbg !700
  %5 = icmp eq i32 %4, 0, !dbg !700
  br i1 %5, label %setup.next1, label %setup.end, !dbg !700

setup.next1:                                      ; preds = %setup.next
  %6 = call i32 @cudaLaunch(i8* bitcast (void (i32*, i32*)* @_Z12sumReductionPiS_ to i8*)), !dbg !700
  br label %setup.end, !dbg !700

setup.end:                                        ; preds = %setup.next1, %setup.next, %entry
  ret void, !dbg !701
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @cudaSetupArgument(i8*, i64, i64)

declare dso_local i32 @cudaLaunch(i8*)

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z17initialize_vectorPii(i32* %v, i32 %n) #2 !dbg !702 {
entry:
  %v.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %v, i32** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %v.addr, metadata !705, metadata !DIExpression()), !dbg !706
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !707, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.declare(metadata i32* %i, metadata !709, metadata !DIExpression()), !dbg !711
  store i32 0, i32* %i, align 4, !dbg !711
  br label %for.cond, !dbg !712

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !713
  %1 = load i32, i32* %n.addr, align 4, !dbg !715
  %cmp = icmp slt i32 %0, %1, !dbg !716
  br i1 %cmp, label %for.body, label %for.end, !dbg !717

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %v.addr, align 8, !dbg !718
  %3 = load i32, i32* %i, align 4, !dbg !720
  %idxprom = sext i32 %3 to i64, !dbg !718
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !718
  store i32 1, i32* %arrayidx, align 4, !dbg !721
  br label %for.inc, !dbg !722

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !723
  %inc = add nsw i32 %4, 1, !dbg !723
  store i32 %inc, i32* %i, align 4, !dbg !723
  br label %for.cond, !dbg !724, !llvm.loop !725

for.end:                                          ; preds = %for.cond
  ret void, !dbg !727
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 !dbg !728 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %bytes = alloca i32, align 4
  %h_v = alloca i32*, align 8
  %h_v_r = alloca i32*, align 8
  %d_v = alloca i32*, align 8
  %d_v_r = alloca i32*, align 8
  %TB_SIZE = alloca i32, align 4
  %GRID_SIZE = alloca i32, align 4
  %agg.tmp = alloca %struct.dim3, align 4
  %agg.tmp7 = alloca %struct.dim3, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp7.coerce = alloca { i64, i32 }, align 4
  %agg.tmp9 = alloca %struct.dim3, align 4
  %agg.tmp10 = alloca %struct.dim3, align 4
  %agg.tmp9.coerce = alloca { i64, i32 }, align 4
  %agg.tmp10.coerce = alloca { i64, i32 }, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %N, metadata !729, metadata !DIExpression()), !dbg !730
  store i32 65536, i32* %N, align 4, !dbg !730
  call void @llvm.dbg.declare(metadata i32* %bytes, metadata !731, metadata !DIExpression()), !dbg !732
  %0 = load i32, i32* %N, align 4, !dbg !733
  %conv = sext i32 %0 to i64, !dbg !733
  %mul = mul i64 %conv, 4, !dbg !734
  %conv1 = trunc i64 %mul to i32, !dbg !733
  store i32 %conv1, i32* %bytes, align 4, !dbg !732
  call void @llvm.dbg.declare(metadata i32** %h_v, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.declare(metadata i32** %h_v_r, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.declare(metadata i32** %d_v, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata i32** %d_v_r, metadata !741, metadata !DIExpression()), !dbg !742
  %1 = load i32*, i32** %h_v, align 8, !dbg !743
  %2 = load i32, i32* %N, align 4, !dbg !744
  call void @_Z17initialize_vectorPii(i32* %1, i32 %2), !dbg !745
  %3 = load i32, i32* %bytes, align 4, !dbg !746
  %conv2 = sext i32 %3 to i64, !dbg !746
  %call = call i32 @_ZL10cudaMallocIiE9cudaErrorPPT_m(i32** %d_v, i64 %conv2), !dbg !747
  %4 = load i32, i32* %bytes, align 4, !dbg !748
  %conv3 = sext i32 %4 to i64, !dbg !748
  %call4 = call i32 @_ZL10cudaMallocIiE9cudaErrorPPT_m(i32** %d_v_r, i64 %conv3), !dbg !749
  %5 = load i32*, i32** %d_v, align 8, !dbg !750
  %6 = bitcast i32* %5 to i8*, !dbg !750
  %7 = load i32*, i32** %h_v, align 8, !dbg !751
  %8 = bitcast i32* %7 to i8*, !dbg !751
  %9 = load i32, i32* %bytes, align 4, !dbg !752
  %conv5 = sext i32 %9 to i64, !dbg !752
  %call6 = call i32 @cudaMemcpy(i8* %6, i8* %8, i64 %conv5, i32 1), !dbg !753
  call void @llvm.dbg.declare(metadata i32* %TB_SIZE, metadata !754, metadata !DIExpression()), !dbg !756
  store i32 256, i32* %TB_SIZE, align 4, !dbg !756
  call void @llvm.dbg.declare(metadata i32* %GRID_SIZE, metadata !757, metadata !DIExpression()), !dbg !758
  %10 = load i32, i32* %N, align 4, !dbg !759
  %div = sdiv i32 %10, 256, !dbg !760
  store i32 %div, i32* %GRID_SIZE, align 4, !dbg !758
  %11 = load i32, i32* %GRID_SIZE, align 4, !dbg !761
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %agg.tmp, i32 %11, i32 1, i32 1), !dbg !761
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %agg.tmp7, i32 256, i32 1, i32 1), !dbg !762
  %12 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*, !dbg !763
  %13 = bitcast %struct.dim3* %agg.tmp to i8*, !dbg !763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false), !dbg !763
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0, !dbg !763
  %15 = load i64, i64* %14, align 4, !dbg !763
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1, !dbg !763
  %17 = load i32, i32* %16, align 4, !dbg !763
  %18 = bitcast { i64, i32 }* %agg.tmp7.coerce to i8*, !dbg !763
  %19 = bitcast %struct.dim3* %agg.tmp7 to i8*, !dbg !763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false), !dbg !763
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp7.coerce, i32 0, i32 0, !dbg !763
  %21 = load i64, i64* %20, align 4, !dbg !763
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp7.coerce, i32 0, i32 1, !dbg !763
  %23 = load i32, i32* %22, align 4, !dbg !763
  %call8 = call i32 @cudaConfigureCall(i64 %15, i32 %17, i64 %21, i32 %23, i64 0, %struct.CUstream_st* null), !dbg !763
  %tobool = icmp ne i32 %call8, 0, !dbg !763
  br i1 %tobool, label %kcall.end, label %kcall.configok, !dbg !764

kcall.configok:                                   ; preds = %entry
  %24 = load i32*, i32** %d_v, align 8, !dbg !765
  %25 = load i32*, i32** %d_v_r, align 8, !dbg !766
  call void @_Z12sumReductionPiS_(i32* %24, i32* %25), !dbg !764
  br label %kcall.end, !dbg !764

kcall.end:                                        ; preds = %kcall.configok, %entry
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %agg.tmp9, i32 1, i32 1, i32 1), !dbg !767
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %agg.tmp10, i32 256, i32 1, i32 1), !dbg !768
  %26 = bitcast { i64, i32 }* %agg.tmp9.coerce to i8*, !dbg !769
  %27 = bitcast %struct.dim3* %agg.tmp9 to i8*, !dbg !769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false), !dbg !769
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp9.coerce, i32 0, i32 0, !dbg !769
  %29 = load i64, i64* %28, align 4, !dbg !769
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp9.coerce, i32 0, i32 1, !dbg !769
  %31 = load i32, i32* %30, align 4, !dbg !769
  %32 = bitcast { i64, i32 }* %agg.tmp10.coerce to i8*, !dbg !769
  %33 = bitcast %struct.dim3* %agg.tmp10 to i8*, !dbg !769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false), !dbg !769
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp10.coerce, i32 0, i32 0, !dbg !769
  %35 = load i64, i64* %34, align 4, !dbg !769
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp10.coerce, i32 0, i32 1, !dbg !769
  %37 = load i32, i32* %36, align 4, !dbg !769
  %call11 = call i32 @cudaConfigureCall(i64 %29, i32 %31, i64 %35, i32 %37, i64 0, %struct.CUstream_st* null), !dbg !769
  %tobool12 = icmp ne i32 %call11, 0, !dbg !769
  br i1 %tobool12, label %kcall.end14, label %kcall.configok13, !dbg !770

kcall.configok13:                                 ; preds = %kcall.end
  %38 = load i32*, i32** %d_v_r, align 8, !dbg !771
  %39 = load i32*, i32** %d_v_r, align 8, !dbg !772
  call void @_Z12sumReductionPiS_(i32* %38, i32* %39), !dbg !770
  br label %kcall.end14, !dbg !770

kcall.end14:                                      ; preds = %kcall.configok13, %kcall.end
  %40 = load i32*, i32** %h_v_r, align 8, !dbg !773
  %41 = bitcast i32* %40 to i8*, !dbg !773
  %42 = load i32*, i32** %d_v_r, align 8, !dbg !774
  %43 = bitcast i32* %42 to i8*, !dbg !774
  %44 = load i32, i32* %bytes, align 4, !dbg !775
  %conv15 = sext i32 %44 to i64, !dbg !775
  %call16 = call i32 @cudaMemcpy(i8* %41, i8* %43, i64 %conv15, i32 2), !dbg !776
  %45 = load i32*, i32** %h_v_r, align 8, !dbg !777
  %arrayidx = getelementptr inbounds i32, i32* %45, i64 0, !dbg !777
  %46 = load i32, i32* %arrayidx, align 4, !dbg !777
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46), !dbg !778
  ret i32 0, !dbg !779
}

; Function Attrs: noinline uwtable
define internal i32 @_ZL10cudaMallocIiE9cudaErrorPPT_m(i32** %devPtr, i64 %size) #0 !dbg !780 {
entry:
  %devPtr.addr = alloca i32**, align 8
  %size.addr = alloca i64, align 8
  store i32** %devPtr, i32*** %devPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %devPtr.addr, metadata !788, metadata !DIExpression()), !dbg !789
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load i32**, i32*** %devPtr.addr, align 8, !dbg !792
  %1 = bitcast i32** %0 to i8*, !dbg !792
  %2 = bitcast i8* %1 to i8**, !dbg !793
  %3 = load i64, i64* %size.addr, align 8, !dbg !794
  %call = call i32 @cudaMalloc(i8** %2, i64 %3), !dbg !795
  ret i32 %call, !dbg !796
}

declare dso_local i32 @cudaMemcpy(i8*, i8*, i64, i32) #4

declare dso_local i32 @cudaConfigureCall(i64, i32, i64, i32, i64, %struct.CUstream_st*) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* %this, i32 %vx, i32 %vy, i32 %vz) unnamed_addr #2 comdat align 2 !dbg !797 {
entry:
  %this.addr = alloca %struct.dim3*, align 8
  %vx.addr = alloca i32, align 4
  %vy.addr = alloca i32, align 4
  %vz.addr = alloca i32, align 4
  store %struct.dim3* %this, %struct.dim3** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dim3** %this.addr, metadata !820, metadata !DIExpression()), !dbg !822
  store i32 %vx, i32* %vx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vx.addr, metadata !823, metadata !DIExpression()), !dbg !824
  store i32 %vy, i32* %vy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vy.addr, metadata !825, metadata !DIExpression()), !dbg !826
  store i32 %vz, i32* %vz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vz.addr, metadata !827, metadata !DIExpression()), !dbg !828
  %this1 = load %struct.dim3*, %struct.dim3** %this.addr, align 8
  %x = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 0, !dbg !829
  %0 = load i32, i32* %vx.addr, align 4, !dbg !830
  store i32 %0, i32* %x, align 4, !dbg !829
  %y = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 1, !dbg !831
  %1 = load i32, i32* %vy.addr, align 4, !dbg !832
  store i32 %1, i32* %y, align 4, !dbg !831
  %z = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 2, !dbg !833
  %2 = load i32, i32* %vz.addr, align 4, !dbg !834
  store i32 %2, i32* %z, align 4, !dbg !833
  ret void, !dbg !835
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @cudaMalloc(i8**, i64) #4

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}
!llvm.ident = !{!691}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 7, i32 0]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !5, producer: "clang version 9.0.0 (git@github.com:SusanTan/llvm-project.git a1efa594106d738d0b74c9e4e2b9b779eb8b7d25)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, retainedTypes: !98, imports: !101, nameTableKind: None)
!5 = !DIFile(filename: "reduction.cu", directory: "/scratch/xcellent/shudson/xstack-benchmark/polybench-cuda/reduction")
!6 = !{!7, !16}
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cudaMemcpyKind", file: !8, line: 796, baseType: !9, size: 32, elements: !10, identifier: "_ZTS14cudaMemcpyKind")
!8 = !DIFile(filename: "/usr/local/cuda-7.0/include/driver_types.h", directory: "")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12, !13, !14, !15}
!11 = !DIEnumerator(name: "cudaMemcpyHostToHost", value: 0, isUnsigned: true)
!12 = !DIEnumerator(name: "cudaMemcpyHostToDevice", value: 1, isUnsigned: true)
!13 = !DIEnumerator(name: "cudaMemcpyDeviceToHost", value: 2, isUnsigned: true)
!14 = !DIEnumerator(name: "cudaMemcpyDeviceToDevice", value: 3, isUnsigned: true)
!15 = !DIEnumerator(name: "cudaMemcpyDefault", value: 4, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cudaError", file: !8, line: 150, baseType: !9, size: 32, elements: !17, identifier: "_ZTS9cudaError")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!18 = !DIEnumerator(name: "cudaSuccess", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "cudaErrorMissingConfiguration", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "cudaErrorMemoryAllocation", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "cudaErrorInitializationError", value: 3, isUnsigned: true)
!22 = !DIEnumerator(name: "cudaErrorLaunchFailure", value: 4, isUnsigned: true)
!23 = !DIEnumerator(name: "cudaErrorPriorLaunchFailure", value: 5, isUnsigned: true)
!24 = !DIEnumerator(name: "cudaErrorLaunchTimeout", value: 6, isUnsigned: true)
!25 = !DIEnumerator(name: "cudaErrorLaunchOutOfResources", value: 7, isUnsigned: true)
!26 = !DIEnumerator(name: "cudaErrorInvalidDeviceFunction", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "cudaErrorInvalidConfiguration", value: 9, isUnsigned: true)
!28 = !DIEnumerator(name: "cudaErrorInvalidDevice", value: 10, isUnsigned: true)
!29 = !DIEnumerator(name: "cudaErrorInvalidValue", value: 11, isUnsigned: true)
!30 = !DIEnumerator(name: "cudaErrorInvalidPitchValue", value: 12, isUnsigned: true)
!31 = !DIEnumerator(name: "cudaErrorInvalidSymbol", value: 13, isUnsigned: true)
!32 = !DIEnumerator(name: "cudaErrorMapBufferObjectFailed", value: 14, isUnsigned: true)
!33 = !DIEnumerator(name: "cudaErrorUnmapBufferObjectFailed", value: 15, isUnsigned: true)
!34 = !DIEnumerator(name: "cudaErrorInvalidHostPointer", value: 16, isUnsigned: true)
!35 = !DIEnumerator(name: "cudaErrorInvalidDevicePointer", value: 17, isUnsigned: true)
!36 = !DIEnumerator(name: "cudaErrorInvalidTexture", value: 18, isUnsigned: true)
!37 = !DIEnumerator(name: "cudaErrorInvalidTextureBinding", value: 19, isUnsigned: true)
!38 = !DIEnumerator(name: "cudaErrorInvalidChannelDescriptor", value: 20, isUnsigned: true)
!39 = !DIEnumerator(name: "cudaErrorInvalidMemcpyDirection", value: 21, isUnsigned: true)
!40 = !DIEnumerator(name: "cudaErrorAddressOfConstant", value: 22, isUnsigned: true)
!41 = !DIEnumerator(name: "cudaErrorTextureFetchFailed", value: 23, isUnsigned: true)
!42 = !DIEnumerator(name: "cudaErrorTextureNotBound", value: 24, isUnsigned: true)
!43 = !DIEnumerator(name: "cudaErrorSynchronizationError", value: 25, isUnsigned: true)
!44 = !DIEnumerator(name: "cudaErrorInvalidFilterSetting", value: 26, isUnsigned: true)
!45 = !DIEnumerator(name: "cudaErrorInvalidNormSetting", value: 27, isUnsigned: true)
!46 = !DIEnumerator(name: "cudaErrorMixedDeviceExecution", value: 28, isUnsigned: true)
!47 = !DIEnumerator(name: "cudaErrorCudartUnloading", value: 29, isUnsigned: true)
!48 = !DIEnumerator(name: "cudaErrorUnknown", value: 30, isUnsigned: true)
!49 = !DIEnumerator(name: "cudaErrorNotYetImplemented", value: 31, isUnsigned: true)
!50 = !DIEnumerator(name: "cudaErrorMemoryValueTooLarge", value: 32, isUnsigned: true)
!51 = !DIEnumerator(name: "cudaErrorInvalidResourceHandle", value: 33, isUnsigned: true)
!52 = !DIEnumerator(name: "cudaErrorNotReady", value: 34, isUnsigned: true)
!53 = !DIEnumerator(name: "cudaErrorInsufficientDriver", value: 35, isUnsigned: true)
!54 = !DIEnumerator(name: "cudaErrorSetOnActiveProcess", value: 36, isUnsigned: true)
!55 = !DIEnumerator(name: "cudaErrorInvalidSurface", value: 37, isUnsigned: true)
!56 = !DIEnumerator(name: "cudaErrorNoDevice", value: 38, isUnsigned: true)
!57 = !DIEnumerator(name: "cudaErrorECCUncorrectable", value: 39, isUnsigned: true)
!58 = !DIEnumerator(name: "cudaErrorSharedObjectSymbolNotFound", value: 40, isUnsigned: true)
!59 = !DIEnumerator(name: "cudaErrorSharedObjectInitFailed", value: 41, isUnsigned: true)
!60 = !DIEnumerator(name: "cudaErrorUnsupportedLimit", value: 42, isUnsigned: true)
!61 = !DIEnumerator(name: "cudaErrorDuplicateVariableName", value: 43, isUnsigned: true)
!62 = !DIEnumerator(name: "cudaErrorDuplicateTextureName", value: 44, isUnsigned: true)
!63 = !DIEnumerator(name: "cudaErrorDuplicateSurfaceName", value: 45, isUnsigned: true)
!64 = !DIEnumerator(name: "cudaErrorDevicesUnavailable", value: 46, isUnsigned: true)
!65 = !DIEnumerator(name: "cudaErrorInvalidKernelImage", value: 47, isUnsigned: true)
!66 = !DIEnumerator(name: "cudaErrorNoKernelImageForDevice", value: 48, isUnsigned: true)
!67 = !DIEnumerator(name: "cudaErrorIncompatibleDriverContext", value: 49, isUnsigned: true)
!68 = !DIEnumerator(name: "cudaErrorPeerAccessAlreadyEnabled", value: 50, isUnsigned: true)
!69 = !DIEnumerator(name: "cudaErrorPeerAccessNotEnabled", value: 51, isUnsigned: true)
!70 = !DIEnumerator(name: "cudaErrorDeviceAlreadyInUse", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "cudaErrorProfilerDisabled", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "cudaErrorProfilerNotInitialized", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "cudaErrorProfilerAlreadyStarted", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "cudaErrorProfilerAlreadyStopped", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "cudaErrorAssert", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "cudaErrorTooManyPeers", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "cudaErrorHostMemoryAlreadyRegistered", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "cudaErrorHostMemoryNotRegistered", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "cudaErrorOperatingSystem", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "cudaErrorPeerAccessUnsupported", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "cudaErrorLaunchMaxDepthExceeded", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "cudaErrorLaunchFileScopedTex", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "cudaErrorLaunchFileScopedSurf", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "cudaErrorSyncDepthExceeded", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "cudaErrorLaunchPendingCountExceeded", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "cudaErrorNotPermitted", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "cudaErrorNotSupported", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "cudaErrorHardwareStackError", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "cudaErrorIllegalInstruction", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "cudaErrorMisalignedAddress", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "cudaErrorInvalidAddressSpace", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "cudaErrorInvalidPc", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "cudaErrorIllegalAddress", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "cudaErrorInvalidPtx", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "cudaErrorInvalidGraphicsContext", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "cudaErrorStartupFailure", value: 127, isUnsigned: true)
!97 = !DIEnumerator(name: "cudaErrorApiFailureBase", value: 10000, isUnsigned: true)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !{!102, !109, !114, !116, !118, !120, !122, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !158, !160, !162, !164, !168, !173, !175, !177, !182, !186, !188, !190, !192, !194, !196, !198, !200, !202, !207, !211, !213, !218, !222, !224, !226, !228, !230, !232, !236, !238, !240, !245, !253, !257, !259, !261, !263, !265, !269, !271, !273, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !299, !305, !307, !309, !313, !315, !317, !319, !321, !323, !325, !327, !331, !335, !337, !339, !344, !346, !348, !350, !352, !354, !356, !360, !366, !370, !375, !377, !381, !385, !398, !402, !406, !410, !414, !419, !421, !425, !429, !433, !441, !445, !449, !453, !457, !461, !467, !471, !475, !477, !485, !489, !496, !498, !500, !504, !508, !512, !517, !521, !526, !527, !528, !529, !531, !532, !533, !534, !535, !536, !537, !539, !540, !541, !542, !543, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !575, !577, !579, !581, !583, !585, !587, !589, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686}
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !104, file: !105, line: 223)
!103 = !DINamespace(name: "std", scope: null)
!104 = !DISubprogram(name: "abs", linkageName: "_ZL3absi", scope: !105, file: !105, line: 53, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!105 = !DIFile(filename: "/home/shudson/xcellent/llvm-install-debug/lib/clang/9.0.0/include/__clang_cuda_math_forward_declares.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !108}
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !110, file: !105, line: 224)
!110 = !DISubprogram(name: "acos", linkageName: "_ZL4acosf", scope: !105, file: !105, line: 55, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !113}
!113 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !115, file: !105, line: 225)
!115 = !DISubprogram(name: "acosh", linkageName: "_ZL5acoshf", scope: !105, file: !105, line: 57, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !117, file: !105, line: 226)
!117 = !DISubprogram(name: "asin", linkageName: "_ZL4asinf", scope: !105, file: !105, line: 59, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !119, file: !105, line: 227)
!119 = !DISubprogram(name: "asinh", linkageName: "_ZL5asinhf", scope: !105, file: !105, line: 61, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !121, file: !105, line: 228)
!121 = !DISubprogram(name: "atan", linkageName: "_ZL4atanf", scope: !105, file: !105, line: 65, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !123, file: !105, line: 229)
!123 = !DISubprogram(name: "atan2", linkageName: "_ZL5atan2ff", scope: !105, file: !105, line: 63, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!124 = !DISubroutineType(types: !125)
!125 = !{!113, !113, !113}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !127, file: !105, line: 230)
!127 = !DISubprogram(name: "atanh", linkageName: "_ZL5atanhf", scope: !105, file: !105, line: 67, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !129, file: !105, line: 231)
!129 = !DISubprogram(name: "cbrt", linkageName: "_ZL4cbrtf", scope: !105, file: !105, line: 69, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !131, file: !105, line: 232)
!131 = !DISubprogram(name: "ceil", linkageName: "_ZL4ceilf", scope: !105, file: !105, line: 71, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !133, file: !105, line: 233)
!133 = !DISubprogram(name: "copysign", linkageName: "_ZL8copysignff", scope: !105, file: !105, line: 73, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !135, file: !105, line: 234)
!135 = !DISubprogram(name: "cos", linkageName: "_ZL3cosf", scope: !105, file: !105, line: 75, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !137, file: !105, line: 235)
!137 = !DISubprogram(name: "cosh", linkageName: "_ZL4coshf", scope: !105, file: !105, line: 77, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !139, file: !105, line: 236)
!139 = !DISubprogram(name: "erf", linkageName: "_ZL3erff", scope: !105, file: !105, line: 81, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !141, file: !105, line: 237)
!141 = !DISubprogram(name: "erfc", linkageName: "_ZL4erfcf", scope: !105, file: !105, line: 79, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !143, file: !105, line: 238)
!143 = !DISubprogram(name: "exp", linkageName: "_ZL3expf", scope: !105, file: !105, line: 85, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !145, file: !105, line: 239)
!145 = !DISubprogram(name: "exp2", linkageName: "_ZL4exp2f", scope: !105, file: !105, line: 83, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !147, file: !105, line: 240)
!147 = !DISubprogram(name: "expm1", linkageName: "_ZL5expm1f", scope: !105, file: !105, line: 87, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !149, file: !105, line: 241)
!149 = !DISubprogram(name: "fabs", linkageName: "_ZL4fabsf", scope: !105, file: !105, line: 89, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !151, file: !105, line: 242)
!151 = !DISubprogram(name: "fdim", linkageName: "_ZL4fdimff", scope: !105, file: !105, line: 91, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !153, file: !105, line: 243)
!153 = !DISubprogram(name: "floor", linkageName: "_ZL5floorf", scope: !105, file: !105, line: 93, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !155, file: !105, line: 244)
!155 = !DISubprogram(name: "fma", linkageName: "_ZL3fmafff", scope: !105, file: !105, line: 95, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!156 = !DISubroutineType(types: !157)
!157 = !{!113, !113, !113, !113}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !159, file: !105, line: 245)
!159 = !DISubprogram(name: "fmax", linkageName: "_ZL4fmaxff", scope: !105, file: !105, line: 97, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !161, file: !105, line: 246)
!161 = !DISubprogram(name: "fmin", linkageName: "_ZL4fminff", scope: !105, file: !105, line: 99, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !163, file: !105, line: 247)
!163 = !DISubprogram(name: "fmod", linkageName: "_ZL4fmodff", scope: !105, file: !105, line: 101, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !165, file: !105, line: 248)
!165 = !DISubprogram(name: "fpclassify", linkageName: "_ZL10fpclassifyf", scope: !105, file: !105, line: 103, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!166 = !DISubroutineType(types: !167)
!167 = !{!108, !113}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !169, file: !105, line: 249)
!169 = !DISubprogram(name: "frexp", linkageName: "_ZL5frexpfPi", scope: !105, file: !105, line: 105, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!170 = !DISubroutineType(types: !171)
!171 = !{!113, !113, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !174, file: !105, line: 250)
!174 = !DISubprogram(name: "hypot", linkageName: "_ZL5hypotff", scope: !105, file: !105, line: 107, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !176, file: !105, line: 251)
!176 = !DISubprogram(name: "ilogb", linkageName: "_ZL5ilogbf", scope: !105, file: !105, line: 109, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !178, file: !105, line: 252)
!178 = !DISubprogram(name: "isfinite", linkageName: "_ZL8isfinitef", scope: !105, file: !105, line: 114, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !113}
!181 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !183, file: !105, line: 253)
!183 = !DISubprogram(name: "isgreater", linkageName: "_ZL9isgreaterff", scope: !105, file: !105, line: 118, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!184 = !DISubroutineType(types: !185)
!185 = !{!181, !113, !113}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !187, file: !105, line: 254)
!187 = !DISubprogram(name: "isgreaterequal", linkageName: "_ZL14isgreaterequalff", scope: !105, file: !105, line: 117, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !189, file: !105, line: 255)
!189 = !DISubprogram(name: "isinf", linkageName: "_ZL5isinff", scope: !105, file: !105, line: 123, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !191, file: !105, line: 256)
!191 = !DISubprogram(name: "isless", linkageName: "_ZL6islessff", scope: !105, file: !105, line: 127, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !193, file: !105, line: 257)
!193 = !DISubprogram(name: "islessequal", linkageName: "_ZL11islessequalff", scope: !105, file: !105, line: 126, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !195, file: !105, line: 258)
!195 = !DISubprogram(name: "islessgreater", linkageName: "_ZL13islessgreaterff", scope: !105, file: !105, line: 129, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !197, file: !105, line: 259)
!197 = !DISubprogram(name: "isnan", linkageName: "_ZL5isnanf", scope: !105, file: !105, line: 134, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !199, file: !105, line: 260)
!199 = !DISubprogram(name: "isnormal", linkageName: "_ZL8isnormalf", scope: !105, file: !105, line: 136, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !201, file: !105, line: 261)
!201 = !DISubprogram(name: "isunordered", linkageName: "_ZL11isunorderedff", scope: !105, file: !105, line: 138, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !203, file: !105, line: 262)
!203 = !DISubprogram(name: "labs", linkageName: "_ZL4labsl", scope: !105, file: !105, line: 139, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !206}
!206 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !208, file: !105, line: 263)
!208 = !DISubprogram(name: "ldexp", linkageName: "_ZL5ldexpfi", scope: !105, file: !105, line: 141, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!209 = !DISubroutineType(types: !210)
!210 = !{!113, !113, !108}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !212, file: !105, line: 264)
!212 = !DISubprogram(name: "lgamma", linkageName: "_ZL6lgammaf", scope: !105, file: !105, line: 143, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !214, file: !105, line: 265)
!214 = !DISubprogram(name: "llabs", linkageName: "_ZL5llabsx", scope: !105, file: !105, line: 144, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !217}
!217 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !219, file: !105, line: 266)
!219 = !DISubprogram(name: "llrint", linkageName: "_ZL6llrintf", scope: !105, file: !105, line: 146, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!220 = !DISubroutineType(types: !221)
!221 = !{!217, !113}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !223, file: !105, line: 267)
!223 = !DISubprogram(name: "log", linkageName: "_ZL3logf", scope: !105, file: !105, line: 159, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !225, file: !105, line: 268)
!225 = !DISubprogram(name: "log10", linkageName: "_ZL5log10f", scope: !105, file: !105, line: 148, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !227, file: !105, line: 269)
!227 = !DISubprogram(name: "log1p", linkageName: "_ZL5log1pf", scope: !105, file: !105, line: 150, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !229, file: !105, line: 270)
!229 = !DISubprogram(name: "log2", linkageName: "_ZL4log2f", scope: !105, file: !105, line: 152, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !231, file: !105, line: 271)
!231 = !DISubprogram(name: "logb", linkageName: "_ZL4logbf", scope: !105, file: !105, line: 154, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !233, file: !105, line: 272)
!233 = !DISubprogram(name: "lrint", linkageName: "_ZL5lrintf", scope: !105, file: !105, line: 161, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!234 = !DISubroutineType(types: !235)
!235 = !{!206, !113}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !237, file: !105, line: 273)
!237 = !DISubprogram(name: "lround", linkageName: "_ZL6lroundf", scope: !105, file: !105, line: 163, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !239, file: !105, line: 274)
!239 = !DISubprogram(name: "llround", linkageName: "_ZL7llroundf", scope: !105, file: !105, line: 164, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !241, file: !105, line: 275)
!241 = !DISubprogram(name: "modf", linkageName: "_ZL4modffPf", scope: !105, file: !105, line: 166, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!242 = !DISubroutineType(types: !243)
!243 = !{!113, !113, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !246, file: !105, line: 276)
!246 = !DISubprogram(name: "nan", linkageName: "_ZL3nanPKc", scope: !105, file: !105, line: 167, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !250}
!249 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !254, file: !105, line: 277)
!254 = !DISubprogram(name: "nanf", linkageName: "_ZL4nanfPKc", scope: !105, file: !105, line: 168, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!255 = !DISubroutineType(types: !256)
!256 = !{!113, !250}
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !258, file: !105, line: 278)
!258 = !DISubprogram(name: "nearbyint", linkageName: "_ZL9nearbyintf", scope: !105, file: !105, line: 170, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !260, file: !105, line: 279)
!260 = !DISubprogram(name: "nextafter", linkageName: "_ZL9nextafterff", scope: !105, file: !105, line: 172, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !262, file: !105, line: 280)
!262 = !DISubprogram(name: "pow", linkageName: "_ZL3powfi", scope: !105, file: !105, line: 176, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !264, file: !105, line: 281)
!264 = !DISubprogram(name: "remainder", linkageName: "_ZL9remainderff", scope: !105, file: !105, line: 178, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !266, file: !105, line: 282)
!266 = !DISubprogram(name: "remquo", linkageName: "_ZL6remquoffPi", scope: !105, file: !105, line: 180, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!267 = !DISubroutineType(types: !268)
!268 = !{!113, !113, !113, !172}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !270, file: !105, line: 283)
!270 = !DISubprogram(name: "rint", linkageName: "_ZL4rintf", scope: !105, file: !105, line: 182, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !272, file: !105, line: 284)
!272 = !DISubprogram(name: "round", linkageName: "_ZL5roundf", scope: !105, file: !105, line: 184, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !274, file: !105, line: 285)
!274 = !DISubprogram(name: "scalbln", linkageName: "_ZL7scalblnfl", scope: !105, file: !105, line: 186, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!275 = !DISubroutineType(types: !276)
!276 = !{!113, !113, !206}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !278, file: !105, line: 286)
!278 = !DISubprogram(name: "scalbn", linkageName: "_ZL6scalbnfi", scope: !105, file: !105, line: 188, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !280, file: !105, line: 287)
!280 = !DISubprogram(name: "signbit", linkageName: "_ZL7signbitf", scope: !105, file: !105, line: 190, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !282, file: !105, line: 288)
!282 = !DISubprogram(name: "sin", linkageName: "_ZL3sinf", scope: !105, file: !105, line: 192, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !284, file: !105, line: 289)
!284 = !DISubprogram(name: "sinh", linkageName: "_ZL4sinhf", scope: !105, file: !105, line: 194, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !286, file: !105, line: 290)
!286 = !DISubprogram(name: "sqrt", linkageName: "_ZL4sqrtf", scope: !105, file: !105, line: 196, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !288, file: !105, line: 291)
!288 = !DISubprogram(name: "tan", linkageName: "_ZL3tanf", scope: !105, file: !105, line: 198, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !290, file: !105, line: 292)
!290 = !DISubprogram(name: "tanh", linkageName: "_ZL4tanhf", scope: !105, file: !105, line: 200, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !292, file: !105, line: 293)
!292 = !DISubprogram(name: "tgamma", linkageName: "_ZL6tgammaf", scope: !105, file: !105, line: 202, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !294, file: !105, line: 294)
!294 = !DISubprogram(name: "trunc", linkageName: "_ZL5truncf", scope: !105, file: !105, line: 204, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !296, file: !298, line: 52)
!296 = !DISubprogram(name: "abs", scope: !297, file: !297, line: 848, type: !106, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!298 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/std_abs.h", directory: "")
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !300, file: !304, line: 83)
!300 = !DISubprogram(name: "acos", scope: !301, file: !301, line: 53, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!302 = !DISubroutineType(types: !303)
!303 = !{!249, !249}
!304 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cmath", directory: "")
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !306, file: !304, line: 102)
!306 = !DISubprogram(name: "asin", scope: !301, file: !301, line: 55, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !308, file: !304, line: 121)
!308 = !DISubprogram(name: "atan", scope: !301, file: !301, line: 57, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !310, file: !304, line: 140)
!310 = !DISubprogram(name: "atan2", scope: !301, file: !301, line: 59, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!249, !249, !249}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !314, file: !304, line: 161)
!314 = !DISubprogram(name: "ceil", scope: !301, file: !301, line: 159, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !316, file: !304, line: 180)
!316 = !DISubprogram(name: "cos", scope: !301, file: !301, line: 62, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !318, file: !304, line: 199)
!318 = !DISubprogram(name: "cosh", scope: !301, file: !301, line: 71, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !320, file: !304, line: 218)
!320 = !DISubprogram(name: "exp", scope: !301, file: !301, line: 95, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !322, file: !304, line: 237)
!322 = !DISubprogram(name: "fabs", scope: !301, file: !301, line: 162, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !324, file: !304, line: 256)
!324 = !DISubprogram(name: "floor", scope: !301, file: !301, line: 165, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !326, file: !304, line: 275)
!326 = !DISubprogram(name: "fmod", scope: !301, file: !301, line: 168, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !328, file: !304, line: 296)
!328 = !DISubprogram(name: "frexp", scope: !301, file: !301, line: 98, type: !329, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{!249, !249, !172}
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !332, file: !304, line: 315)
!332 = !DISubprogram(name: "ldexp", scope: !301, file: !301, line: 101, type: !333, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{!249, !249, !108}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !336, file: !304, line: 334)
!336 = !DISubprogram(name: "log", scope: !301, file: !301, line: 104, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !338, file: !304, line: 353)
!338 = !DISubprogram(name: "log10", scope: !301, file: !301, line: 107, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !340, file: !304, line: 372)
!340 = !DISubprogram(name: "modf", scope: !301, file: !301, line: 110, type: !341, flags: DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!249, !249, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !345, file: !304, line: 384)
!345 = !DISubprogram(name: "pow", scope: !301, file: !301, line: 140, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !347, file: !304, line: 421)
!347 = !DISubprogram(name: "sin", scope: !301, file: !301, line: 64, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !349, file: !304, line: 440)
!349 = !DISubprogram(name: "sinh", scope: !301, file: !301, line: 73, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !351, file: !304, line: 459)
!351 = !DISubprogram(name: "sqrt", scope: !301, file: !301, line: 143, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !353, file: !304, line: 478)
!353 = !DISubprogram(name: "tan", scope: !301, file: !301, line: 66, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !355, file: !304, line: 497)
!355 = !DISubprogram(name: "tanh", scope: !301, file: !301, line: 75, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !357, file: !359, line: 127)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !297, line: 63, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 59, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!359 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstdlib", directory: "")
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !361, file: !359, line: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !297, line: 71, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !363, identifier: "_ZTS6ldiv_t")
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !362, file: !297, line: 69, baseType: !206, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !362, file: !297, line: 70, baseType: !206, size: 64, offset: 64)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !367, file: !359, line: 130)
!367 = !DISubprogram(name: "abort", scope: !297, file: !297, line: 598, type: !368, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{null}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !371, file: !359, line: 134)
!371 = !DISubprogram(name: "atexit", scope: !297, file: !297, line: 602, type: !372, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!108, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !376, file: !359, line: 140)
!376 = !DISubprogram(name: "atof", scope: !297, file: !297, line: 102, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !378, file: !359, line: 141)
!378 = !DISubprogram(name: "atoi", scope: !297, file: !297, line: 105, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!108, !250}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !382, file: !359, line: 142)
!382 = !DISubprogram(name: "atol", scope: !297, file: !297, line: 108, type: !383, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{!206, !250}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !386, file: !359, line: 143)
!386 = !DISubprogram(name: "bsearch", scope: !297, file: !297, line: 828, type: !387, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{!100, !389, !389, !391, !391, !394}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !392, line: 46, baseType: !393)
!392 = !DIFile(filename: "/home/shudson/xcellent/llvm-install-debug/lib/clang/9.0.0/include/stddef.h", directory: "")
!393 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !297, line: 816, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!108, !389, !389}
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !399, file: !359, line: 144)
!399 = !DISubprogram(name: "calloc", scope: !297, file: !297, line: 543, type: !400, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DISubroutineType(types: !401)
!401 = !{!100, !391, !391}
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !403, file: !359, line: 145)
!403 = !DISubprogram(name: "div", scope: !297, file: !297, line: 860, type: !404, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{!357, !108, !108}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !407, file: !359, line: 146)
!407 = !DISubprogram(name: "exit", scope: !297, file: !297, line: 624, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !108}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !411, file: !359, line: 147)
!411 = !DISubprogram(name: "free", scope: !297, file: !297, line: 555, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !100}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !415, file: !359, line: 148)
!415 = !DISubprogram(name: "getenv", scope: !297, file: !297, line: 641, type: !416, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !250}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !420, file: !359, line: 149)
!420 = !DISubprogram(name: "labs", scope: !297, file: !297, line: 849, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !422, file: !359, line: 150)
!422 = !DISubprogram(name: "ldiv", scope: !297, file: !297, line: 862, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!361, !206, !206}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !426, file: !359, line: 151)
!426 = !DISubprogram(name: "malloc", scope: !297, file: !297, line: 540, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!100, !391}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !430, file: !359, line: 153)
!430 = !DISubprogram(name: "mblen", scope: !297, file: !297, line: 930, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!108, !250, !391}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !434, file: !359, line: 154)
!434 = !DISubprogram(name: "mbstowcs", scope: !297, file: !297, line: 941, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!391, !437, !440, !391}
!437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !442, file: !359, line: 155)
!442 = !DISubprogram(name: "mbtowc", scope: !297, file: !297, line: 933, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!108, !437, !440, !391}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !446, file: !359, line: 157)
!446 = !DISubprogram(name: "qsort", scope: !297, file: !297, line: 838, type: !447, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !100, !391, !391, !394}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !450, file: !359, line: 163)
!450 = !DISubprogram(name: "rand", scope: !297, file: !297, line: 454, type: !451, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{!108}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !454, file: !359, line: 164)
!454 = !DISubprogram(name: "realloc", scope: !297, file: !297, line: 551, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!100, !100, !391}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !458, file: !359, line: 165)
!458 = !DISubprogram(name: "srand", scope: !297, file: !297, line: 456, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !9}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !462, file: !359, line: 166)
!462 = !DISubprogram(name: "strtod", scope: !297, file: !297, line: 118, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!249, !440, !465}
!465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !468, file: !359, line: 167)
!468 = !DISubprogram(name: "strtol", scope: !297, file: !297, line: 177, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!206, !440, !465, !108}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !472, file: !359, line: 168)
!472 = !DISubprogram(name: "strtoul", scope: !297, file: !297, line: 181, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!393, !440, !465, !108}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !476, file: !359, line: 169)
!476 = !DISubprogram(name: "system", scope: !297, file: !297, line: 791, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !478, file: !359, line: 171)
!478 = !DISubprogram(name: "wcstombs", scope: !297, file: !297, line: 945, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!391, !481, !482, !391}
!481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !486, file: !359, line: 172)
!486 = !DISubprogram(name: "wctomb", scope: !297, file: !297, line: 937, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!108, !418, !439}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !491, file: !359, line: 200)
!490 = !DINamespace(name: "__gnu_cxx", scope: null)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !297, line: 81, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !493, identifier: "_ZTS7lldiv_t")
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !492, file: !297, line: 79, baseType: !217, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !492, file: !297, line: 80, baseType: !217, size: 64, offset: 64)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !497, file: !359, line: 206)
!497 = !DISubprogram(name: "_Exit", scope: !297, file: !297, line: 636, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !499, file: !359, line: 210)
!499 = !DISubprogram(name: "llabs", scope: !297, file: !297, line: 852, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !501, file: !359, line: 216)
!501 = !DISubprogram(name: "lldiv", scope: !297, file: !297, line: 866, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!491, !217, !217}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !505, file: !359, line: 227)
!505 = !DISubprogram(name: "atoll", scope: !297, file: !297, line: 113, type: !506, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!217, !250}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !509, file: !359, line: 228)
!509 = !DISubprogram(name: "strtoll", scope: !297, file: !297, line: 201, type: !510, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!217, !440, !465, !108}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !513, file: !359, line: 229)
!513 = !DISubprogram(name: "strtoull", scope: !297, file: !297, line: 206, type: !514, flags: DIFlagPrototyped, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !440, !465, !108}
!516 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !518, file: !359, line: 231)
!518 = !DISubprogram(name: "strtof", scope: !297, file: !297, line: 124, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!113, !440, !465}
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !522, file: !359, line: 232)
!522 = !DISubprogram(name: "strtold", scope: !297, file: !297, line: 127, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !440, !465}
!525 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !491, file: !359, line: 240)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !497, file: !359, line: 242)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !499, file: !359, line: 244)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !530, file: !359, line: 245)
!530 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !490, file: !359, line: 213, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !501, file: !359, line: 246)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !505, file: !359, line: 248)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !518, file: !359, line: 249)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !509, file: !359, line: 250)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !513, file: !359, line: 251)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !522, file: !359, line: 252)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !367, file: !538, line: 38)
!538 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/stdlib.h", directory: "")
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !371, file: !538, line: 39)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !407, file: !538, line: 40)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !357, file: !538, line: 51)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !361, file: !538, line: 52)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !544, file: !538, line: 54)
!544 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !103, file: !298, line: 79, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!525, !525}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !376, file: !538, line: 55)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !378, file: !538, line: 56)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !382, file: !538, line: 57)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !386, file: !538, line: 58)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !399, file: !538, line: 59)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !530, file: !538, line: 60)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !411, file: !538, line: 61)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !415, file: !538, line: 62)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !420, file: !538, line: 63)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !422, file: !538, line: 64)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !426, file: !538, line: 65)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !430, file: !538, line: 67)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !434, file: !538, line: 68)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !442, file: !538, line: 69)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !446, file: !538, line: 71)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !450, file: !538, line: 72)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !454, file: !538, line: 73)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !458, file: !538, line: 74)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !462, file: !538, line: 75)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !468, file: !538, line: 76)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !472, file: !538, line: 77)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !476, file: !538, line: 78)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !478, file: !538, line: 80)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !486, file: !538, line: 81)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !572, file: !574, line: 414)
!572 = !DISubprogram(name: "acosf", linkageName: "_ZL5acosff", scope: !573, file: !573, line: 1126, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!573 = !DIFile(filename: "/usr/local/cuda-7.0/include/math_functions.hpp", directory: "")
!574 = !DIFile(filename: "/home/shudson/xcellent/llvm-install-debug/lib/clang/9.0.0/include/__clang_cuda_cmath.h", directory: "")
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !576, file: !574, line: 415)
!576 = !DISubprogram(name: "acoshf", linkageName: "_ZL6acoshff", scope: !573, file: !573, line: 1154, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !578, file: !574, line: 416)
!578 = !DISubprogram(name: "asinf", linkageName: "_ZL5asinff", scope: !573, file: !573, line: 1121, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !580, file: !574, line: 417)
!580 = !DISubprogram(name: "asinhf", linkageName: "_ZL6asinhff", scope: !573, file: !573, line: 1159, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !582, file: !574, line: 418)
!582 = !DISubprogram(name: "atan2f", linkageName: "_ZL6atan2fff", scope: !573, file: !573, line: 1111, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !584, file: !574, line: 419)
!584 = !DISubprogram(name: "atanf", linkageName: "_ZL5atanff", scope: !573, file: !573, line: 1116, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !586, file: !574, line: 420)
!586 = !DISubprogram(name: "atanhf", linkageName: "_ZL6atanhff", scope: !573, file: !573, line: 1164, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !588, file: !574, line: 421)
!588 = !DISubprogram(name: "cbrtf", linkageName: "_ZL5cbrtff", scope: !573, file: !573, line: 1199, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !590, file: !574, line: 422)
!590 = !DISubprogram(name: "ceilf", linkageName: "_ZL5ceilff", scope: !591, file: !591, line: 647, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!591 = !DIFile(filename: "/usr/local/cuda-7.0/include/device_functions.hpp", directory: "")
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !593, file: !574, line: 423)
!593 = !DISubprogram(name: "copysignf", linkageName: "_ZL9copysignfff", scope: !573, file: !573, line: 973, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !595, file: !574, line: 424)
!595 = !DISubprogram(name: "cosf", linkageName: "_ZL4cosff", scope: !573, file: !573, line: 1027, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !597, file: !574, line: 425)
!597 = !DISubprogram(name: "coshf", linkageName: "_ZL5coshff", scope: !573, file: !573, line: 1096, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !599, file: !574, line: 426)
!599 = !DISubprogram(name: "erfcf", linkageName: "_ZL5erfcff", scope: !573, file: !573, line: 1259, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !601, file: !574, line: 427)
!601 = !DISubprogram(name: "erff", linkageName: "_ZL4erfff", scope: !573, file: !573, line: 1249, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !603, file: !574, line: 428)
!603 = !DISubprogram(name: "exp2f", linkageName: "_ZL5exp2ff", scope: !591, file: !591, line: 637, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !605, file: !574, line: 429)
!605 = !DISubprogram(name: "expf", linkageName: "_ZL4expff", scope: !573, file: !573, line: 1078, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !607, file: !574, line: 430)
!607 = !DISubprogram(name: "expm1f", linkageName: "_ZL6expm1ff", scope: !573, file: !573, line: 1169, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !609, file: !574, line: 431)
!609 = !DISubprogram(name: "fabsf", linkageName: "_ZL5fabsff", scope: !591, file: !591, line: 582, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !611, file: !574, line: 432)
!611 = !DISubprogram(name: "fdimf", linkageName: "_ZL5fdimfff", scope: !573, file: !573, line: 1385, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !613, file: !574, line: 433)
!613 = !DISubprogram(name: "floorf", linkageName: "_ZL6floorff", scope: !591, file: !591, line: 572, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !615, file: !574, line: 434)
!615 = !DISubprogram(name: "fmaf", linkageName: "_ZL4fmaffff", scope: !573, file: !573, line: 1337, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !617, file: !574, line: 435)
!617 = !DISubprogram(name: "fmaxf", linkageName: "_ZL5fmaxfff", scope: !591, file: !591, line: 602, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !619, file: !574, line: 436)
!619 = !DISubprogram(name: "fminf", linkageName: "_ZL5fminfff", scope: !591, file: !591, line: 597, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !621, file: !574, line: 437)
!621 = !DISubprogram(name: "fmodf", linkageName: "_ZL5fmodfff", scope: !573, file: !573, line: 1322, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !623, file: !574, line: 438)
!623 = !DISubprogram(name: "frexpf", linkageName: "_ZL6frexpffPi", scope: !573, file: !573, line: 1312, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !625, file: !574, line: 439)
!625 = !DISubprogram(name: "hypotf", linkageName: "_ZL6hypotfff", scope: !573, file: !573, line: 1174, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !627, file: !574, line: 440)
!627 = !DISubprogram(name: "ilogbf", linkageName: "_ZL6ilogbff", scope: !573, file: !573, line: 1390, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !629, file: !574, line: 441)
!629 = !DISubprogram(name: "ldexpf", linkageName: "_ZL6ldexpffi", scope: !573, file: !573, line: 1289, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !631, file: !574, line: 442)
!631 = !DISubprogram(name: "lgammaf", linkageName: "_ZL7lgammaff", scope: !573, file: !573, line: 1284, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !633, file: !574, line: 443)
!633 = !DISubprogram(name: "llrintf", linkageName: "_ZL7llrintff", scope: !573, file: !573, line: 933, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !635, file: !574, line: 444)
!635 = !DISubprogram(name: "llroundf", linkageName: "_ZL8llroundff", scope: !573, file: !573, line: 1371, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !637, file: !574, line: 445)
!637 = !DISubprogram(name: "log10f", linkageName: "_ZL6log10ff", scope: !573, file: !573, line: 1140, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !639, file: !574, line: 446)
!639 = !DISubprogram(name: "log1pf", linkageName: "_ZL6log1pff", scope: !573, file: !573, line: 1149, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !641, file: !574, line: 447)
!641 = !DISubprogram(name: "log2f", linkageName: "_ZL5log2ff", scope: !573, file: !573, line: 1069, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !643, file: !574, line: 448)
!643 = !DISubprogram(name: "logbf", linkageName: "_ZL5logbff", scope: !573, file: !573, line: 1395, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !645, file: !574, line: 449)
!645 = !DISubprogram(name: "logf", linkageName: "_ZL4logff", scope: !573, file: !573, line: 1131, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !647, file: !574, line: 450)
!647 = !DISubprogram(name: "lrintf", linkageName: "_ZL6lrintff", scope: !573, file: !573, line: 924, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !649, file: !574, line: 451)
!649 = !DISubprogram(name: "lroundf", linkageName: "_ZL7lroundff", scope: !573, file: !573, line: 1376, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !651, file: !574, line: 452)
!651 = !DISubprogram(name: "modff", linkageName: "_ZL5modfffPf", scope: !573, file: !573, line: 1317, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !653, file: !574, line: 453)
!653 = !DISubprogram(name: "nearbyintf", linkageName: "_ZL10nearbyintff", scope: !573, file: !573, line: 938, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !655, file: !574, line: 454)
!655 = !DISubprogram(name: "nextafterf", linkageName: "_ZL10nextafterfff", scope: !573, file: !573, line: 1002, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !657, file: !574, line: 455)
!657 = !DISubprogram(name: "powf", linkageName: "_ZL4powfff", scope: !573, file: !573, line: 1352, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !659, file: !574, line: 456)
!659 = !DISubprogram(name: "remainderf", linkageName: "_ZL10remainderfff", scope: !573, file: !573, line: 1327, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !661, file: !574, line: 457)
!661 = !DISubprogram(name: "remquof", linkageName: "_ZL7remquofffPi", scope: !573, file: !573, line: 1332, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !663, file: !574, line: 458)
!663 = !DISubprogram(name: "rintf", linkageName: "_ZL5rintff", scope: !573, file: !573, line: 919, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !665, file: !574, line: 459)
!665 = !DISubprogram(name: "roundf", linkageName: "_ZL6roundff", scope: !573, file: !573, line: 1366, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !667, file: !574, line: 462)
!667 = !DISubprogram(name: "scalblnf", linkageName: "_ZL8scalblnffl", scope: !573, file: !573, line: 1299, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !669, file: !574, line: 464)
!669 = !DISubprogram(name: "scalbnf", linkageName: "_ZL7scalbnffi", scope: !573, file: !573, line: 1294, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !671, file: !574, line: 465)
!671 = !DISubprogram(name: "sinf", linkageName: "_ZL4sinff", scope: !573, file: !573, line: 1018, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !673, file: !574, line: 466)
!673 = !DISubprogram(name: "sinhf", linkageName: "_ZL5sinhff", scope: !573, file: !573, line: 1101, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !675, file: !574, line: 467)
!675 = !DISubprogram(name: "sqrtf", linkageName: "_ZL5sqrtff", scope: !591, file: !591, line: 887, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !677, file: !574, line: 468)
!677 = !DISubprogram(name: "tanf", linkageName: "_ZL4tanff", scope: !573, file: !573, line: 1060, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !679, file: !574, line: 469)
!679 = !DISubprogram(name: "tanhf", linkageName: "_ZL5tanhff", scope: !573, file: !573, line: 1106, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !681, file: !574, line: 470)
!681 = !DISubprogram(name: "tgammaf", linkageName: "_ZL7tgammaff", scope: !573, file: !573, line: 1361, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !103, entity: !683, file: !574, line: 471)
!683 = !DISubprogram(name: "truncf", linkageName: "_ZL6truncff", scope: !591, file: !591, line: 642, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !544, file: !685, line: 38)
!685 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/math.h", directory: "")
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !687, file: !685, line: 54)
!687 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !103, file: !304, line: 380, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!525, !525, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!691 = !{!"clang version 9.0.0 (git@github.com:SusanTan/llvm-project.git a1efa594106d738d0b74c9e4e2b9b779eb8b7d25)"}
!692 = distinct !DISubprogram(name: "sumReduction", linkageName: "_Z12sumReductionPiS_", scope: !5, file: !5, line: 15, type: !693, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !172, !172}
!695 = !{}
!696 = !DILocalVariable(name: "v", arg: 1, scope: !692, file: !5, line: 15, type: !172)
!697 = !DILocation(line: 15, column: 35, scope: !692)
!698 = !DILocalVariable(name: "v_r", arg: 2, scope: !692, file: !5, line: 15, type: !172)
!699 = !DILocation(line: 15, column: 43, scope: !692)
!700 = !DILocation(line: 15, column: 48, scope: !692)
!701 = !DILocation(line: 43, column: 1, scope: !692)
!702 = distinct !DISubprogram(name: "initialize_vector", linkageName: "_Z17initialize_vectorPii", scope: !5, file: !5, line: 45, type: !703, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !172, !108}
!705 = !DILocalVariable(name: "v", arg: 1, scope: !702, file: !5, line: 45, type: !172)
!706 = !DILocation(line: 45, column: 29, scope: !702)
!707 = !DILocalVariable(name: "n", arg: 2, scope: !702, file: !5, line: 45, type: !108)
!708 = !DILocation(line: 45, column: 36, scope: !702)
!709 = !DILocalVariable(name: "i", scope: !710, file: !5, line: 46, type: !108)
!710 = distinct !DILexicalBlock(scope: !702, file: !5, line: 46, column: 2)
!711 = !DILocation(line: 46, column: 11, scope: !710)
!712 = !DILocation(line: 46, column: 7, scope: !710)
!713 = !DILocation(line: 46, column: 18, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !5, line: 46, column: 2)
!715 = !DILocation(line: 46, column: 22, scope: !714)
!716 = !DILocation(line: 46, column: 20, scope: !714)
!717 = !DILocation(line: 46, column: 2, scope: !710)
!718 = !DILocation(line: 47, column: 3, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !5, line: 46, column: 30)
!720 = !DILocation(line: 47, column: 5, scope: !719)
!721 = !DILocation(line: 47, column: 8, scope: !719)
!722 = !DILocation(line: 48, column: 2, scope: !719)
!723 = !DILocation(line: 46, column: 26, scope: !714)
!724 = !DILocation(line: 46, column: 2, scope: !714)
!725 = distinct !{!725, !717, !726}
!726 = !DILocation(line: 48, column: 2, scope: !710)
!727 = !DILocation(line: 49, column: 1, scope: !702)
!728 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 51, type: !451, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!729 = !DILocalVariable(name: "N", scope: !728, file: !5, line: 53, type: !108)
!730 = !DILocation(line: 53, column: 7, scope: !728)
!731 = !DILocalVariable(name: "bytes", scope: !728, file: !5, line: 54, type: !108)
!732 = !DILocation(line: 54, column: 7, scope: !728)
!733 = !DILocation(line: 54, column: 15, scope: !728)
!734 = !DILocation(line: 54, column: 17, scope: !728)
!735 = !DILocalVariable(name: "h_v", scope: !728, file: !5, line: 58, type: !172)
!736 = !DILocation(line: 58, column: 7, scope: !728)
!737 = !DILocalVariable(name: "h_v_r", scope: !728, file: !5, line: 58, type: !172)
!738 = !DILocation(line: 58, column: 13, scope: !728)
!739 = !DILocalVariable(name: "d_v", scope: !728, file: !5, line: 59, type: !172)
!740 = !DILocation(line: 59, column: 7, scope: !728)
!741 = !DILocalVariable(name: "d_v_r", scope: !728, file: !5, line: 59, type: !172)
!742 = !DILocation(line: 59, column: 13, scope: !728)
!743 = !DILocation(line: 62, column: 20, scope: !728)
!744 = !DILocation(line: 62, column: 25, scope: !728)
!745 = !DILocation(line: 62, column: 2, scope: !728)
!746 = !DILocation(line: 65, column: 20, scope: !728)
!747 = !DILocation(line: 65, column: 3, scope: !728)
!748 = !DILocation(line: 66, column: 22, scope: !728)
!749 = !DILocation(line: 66, column: 3, scope: !728)
!750 = !DILocation(line: 69, column: 14, scope: !728)
!751 = !DILocation(line: 69, column: 19, scope: !728)
!752 = !DILocation(line: 69, column: 24, scope: !728)
!753 = !DILocation(line: 69, column: 3, scope: !728)
!754 = !DILocalVariable(name: "TB_SIZE", scope: !728, file: !5, line: 72, type: !755)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!756 = !DILocation(line: 72, column: 13, scope: !728)
!757 = !DILocalVariable(name: "GRID_SIZE", scope: !728, file: !5, line: 75, type: !108)
!758 = !DILocation(line: 75, column: 7, scope: !728)
!759 = !DILocation(line: 75, column: 19, scope: !728)
!760 = !DILocation(line: 75, column: 21, scope: !728)
!761 = !DILocation(line: 78, column: 18, scope: !728)
!762 = !DILocation(line: 78, column: 29, scope: !728)
!763 = !DILocation(line: 78, column: 15, scope: !728)
!764 = !DILocation(line: 78, column: 3, scope: !728)
!765 = !DILocation(line: 78, column: 40, scope: !728)
!766 = !DILocation(line: 78, column: 45, scope: !728)
!767 = !DILocation(line: 80, column: 18, scope: !728)
!768 = !DILocation(line: 80, column: 21, scope: !728)
!769 = !DILocation(line: 80, column: 15, scope: !728)
!770 = !DILocation(line: 80, column: 3, scope: !728)
!771 = !DILocation(line: 80, column: 32, scope: !728)
!772 = !DILocation(line: 80, column: 39, scope: !728)
!773 = !DILocation(line: 83, column: 14, scope: !728)
!774 = !DILocation(line: 83, column: 21, scope: !728)
!775 = !DILocation(line: 83, column: 28, scope: !728)
!776 = !DILocation(line: 83, column: 3, scope: !728)
!777 = !DILocation(line: 87, column: 41, scope: !728)
!778 = !DILocation(line: 87, column: 3, scope: !728)
!779 = !DILocation(line: 89, column: 3, scope: !728)
!780 = distinct !DISubprogram(name: "cudaMalloc<int>", linkageName: "_ZL10cudaMallocIiE9cudaErrorPPT_m", scope: !781, file: !781, line: 490, type: !782, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !786, retainedNodes: !695)
!781 = !DIFile(filename: "/usr/local/cuda-7.0/include/cuda_runtime.h", directory: "")
!782 = !DISubroutineType(types: !783)
!783 = !{!784, !785, !391}
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "cudaError_t", file: !8, line: 1419, baseType: !16)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!786 = !{!787}
!787 = !DITemplateTypeParameter(name: "T", type: !108)
!788 = !DILocalVariable(name: "devPtr", arg: 1, scope: !780, file: !781, line: 491, type: !785)
!789 = !DILocation(line: 491, column: 12, scope: !780)
!790 = !DILocalVariable(name: "size", arg: 2, scope: !780, file: !781, line: 492, type: !391)
!791 = !DILocation(line: 492, column: 12, scope: !780)
!792 = !DILocation(line: 495, column: 38, scope: !780)
!793 = !DILocation(line: 495, column: 23, scope: !780)
!794 = !DILocation(line: 495, column: 46, scope: !780)
!795 = !DILocation(line: 495, column: 10, scope: !780)
!796 = !DILocation(line: 495, column: 3, scope: !780)
!797 = distinct !DISubprogram(name: "dim3", linkageName: "_ZN4dim3C2Ejjj", scope: !799, file: !798, line: 421, type: !805, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, declaration: !804, retainedNodes: !695)
!798 = !DIFile(filename: "/usr/local/cuda-7.0/include/vector_types.h", directory: "")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dim3", file: !798, line: 417, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !800, identifier: "_ZTS4dim3")
!800 = !{!801, !802, !803, !804, !808, !817}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !799, file: !798, line: 419, baseType: !9, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !799, file: !798, line: 419, baseType: !9, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !799, file: !798, line: 419, baseType: !9, size: 32, offset: 64)
!804 = !DISubprogram(name: "dim3", scope: !799, file: !798, line: 421, type: !805, scopeLine: 421, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !807, !9, !9, !9}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!808 = !DISubprogram(name: "dim3", scope: !799, file: !798, line: 422, type: !809, scopeLine: 422, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !807, !811}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint3", file: !798, line: 383, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint3", file: !798, line: 190, size: 96, flags: DIFlagTypePassByValue, elements: !813, identifier: "_ZTS5uint3")
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !812, file: !798, line: 192, baseType: !9, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !812, file: !798, line: 192, baseType: !9, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !812, file: !798, line: 192, baseType: !9, size: 32, offset: 64)
!817 = !DISubprogram(name: "operator uint3", linkageName: "_ZN4dim3cv5uint3Ev", scope: !799, file: !798, line: 423, type: !818, scopeLine: 423, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{!811, !807}
!820 = !DILocalVariable(name: "this", arg: 1, scope: !797, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!822 = !DILocation(line: 0, scope: !797)
!823 = !DILocalVariable(name: "vx", arg: 2, scope: !797, file: !798, line: 421, type: !9)
!824 = !DILocation(line: 421, column: 43, scope: !797)
!825 = !DILocalVariable(name: "vy", arg: 3, scope: !797, file: !798, line: 421, type: !9)
!826 = !DILocation(line: 421, column: 64, scope: !797)
!827 = !DILocalVariable(name: "vz", arg: 4, scope: !797, file: !798, line: 421, type: !9)
!828 = !DILocation(line: 421, column: 85, scope: !797)
!829 = !DILocation(line: 421, column: 95, scope: !797)
!830 = !DILocation(line: 421, column: 97, scope: !797)
!831 = !DILocation(line: 421, column: 102, scope: !797)
!832 = !DILocation(line: 421, column: 104, scope: !797)
!833 = !DILocation(line: 421, column: 109, scope: !797)
!834 = !DILocation(line: 421, column: 111, scope: !797)
!835 = !DILocation(line: 421, column: 116, scope: !797)
