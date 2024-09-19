; ModuleID = '2mm.cu'
source_filename = "2mm.cu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dim3 = type { i32, i32, i32 }
%struct.CUstream_st = type opaque

$_ZN4dim3C2Ejjj = comdat any

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z14kernel_A_mul_BiiiiddPdS_S_S_S_(i32 %ni, i32 %nj, i32 %nk, i32 %nl, double %alpha, double %beta, double* %tmp, double* %A, double* %B, double* %C, double* %D) #0 !dbg !692 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %tmp.addr = alloca double*, align 8
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %C.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  store i32 %ni, i32* %ni.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ni.addr, metadata !696, metadata !DIExpression()), !dbg !697
  store i32 %nj, i32* %nj.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nj.addr, metadata !698, metadata !DIExpression()), !dbg !699
  store i32 %nk, i32* %nk.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nk.addr, metadata !700, metadata !DIExpression()), !dbg !701
  store i32 %nl, i32* %nl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nl.addr, metadata !702, metadata !DIExpression()), !dbg !703
  store double %alpha, double* %alpha.addr, align 8
  call void @llvm.dbg.declare(metadata double* %alpha.addr, metadata !704, metadata !DIExpression()), !dbg !705
  store double %beta, double* %beta.addr, align 8
  call void @llvm.dbg.declare(metadata double* %beta.addr, metadata !706, metadata !DIExpression()), !dbg !707
  store double* %tmp, double** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata double** %tmp.addr, metadata !708, metadata !DIExpression()), !dbg !709
  store double* %A, double** %A.addr, align 8
  call void @llvm.dbg.declare(metadata double** %A.addr, metadata !710, metadata !DIExpression()), !dbg !711
  store double* %B, double** %B.addr, align 8
  call void @llvm.dbg.declare(metadata double** %B.addr, metadata !712, metadata !DIExpression()), !dbg !713
  store double* %C, double** %C.addr, align 8
  call void @llvm.dbg.declare(metadata double** %C.addr, metadata !714, metadata !DIExpression()), !dbg !715
  store double* %D, double** %D.addr, align 8
  call void @llvm.dbg.declare(metadata double** %D.addr, metadata !716, metadata !DIExpression()), !dbg !717
  %0 = bitcast i32* %ni.addr to i8*, !dbg !718
  %1 = call i32 @cudaSetupArgument(i8* %0, i64 4, i64 0), !dbg !718
  %2 = icmp eq i32 %1, 0, !dbg !718
  br i1 %2, label %setup.next, label %setup.end, !dbg !718

setup.next:                                       ; preds = %entry
  %3 = bitcast i32* %nj.addr to i8*, !dbg !718
  %4 = call i32 @cudaSetupArgument(i8* %3, i64 4, i64 4), !dbg !718
  %5 = icmp eq i32 %4, 0, !dbg !718
  br i1 %5, label %setup.next1, label %setup.end, !dbg !718

setup.next1:                                      ; preds = %setup.next
  %6 = bitcast i32* %nk.addr to i8*, !dbg !718
  %7 = call i32 @cudaSetupArgument(i8* %6, i64 4, i64 8), !dbg !718
  %8 = icmp eq i32 %7, 0, !dbg !718
  br i1 %8, label %setup.next2, label %setup.end, !dbg !718

setup.next2:                                      ; preds = %setup.next1
  %9 = bitcast i32* %nl.addr to i8*, !dbg !718
  %10 = call i32 @cudaSetupArgument(i8* %9, i64 4, i64 12), !dbg !718
  %11 = icmp eq i32 %10, 0, !dbg !718
  br i1 %11, label %setup.next3, label %setup.end, !dbg !718

setup.next3:                                      ; preds = %setup.next2
  %12 = bitcast double* %alpha.addr to i8*, !dbg !718
  %13 = call i32 @cudaSetupArgument(i8* %12, i64 8, i64 16), !dbg !718
  %14 = icmp eq i32 %13, 0, !dbg !718
  br i1 %14, label %setup.next4, label %setup.end, !dbg !718

setup.next4:                                      ; preds = %setup.next3
  %15 = bitcast double* %beta.addr to i8*, !dbg !718
  %16 = call i32 @cudaSetupArgument(i8* %15, i64 8, i64 24), !dbg !718
  %17 = icmp eq i32 %16, 0, !dbg !718
  br i1 %17, label %setup.next5, label %setup.end, !dbg !718

setup.next5:                                      ; preds = %setup.next4
  %18 = bitcast double** %tmp.addr to i8*, !dbg !718
  %19 = call i32 @cudaSetupArgument(i8* %18, i64 8, i64 32), !dbg !718
  %20 = icmp eq i32 %19, 0, !dbg !718
  br i1 %20, label %setup.next6, label %setup.end, !dbg !718

setup.next6:                                      ; preds = %setup.next5
  %21 = bitcast double** %A.addr to i8*, !dbg !718
  %22 = call i32 @cudaSetupArgument(i8* %21, i64 8, i64 40), !dbg !718
  %23 = icmp eq i32 %22, 0, !dbg !718
  br i1 %23, label %setup.next7, label %setup.end, !dbg !718

setup.next7:                                      ; preds = %setup.next6
  %24 = bitcast double** %B.addr to i8*, !dbg !718
  %25 = call i32 @cudaSetupArgument(i8* %24, i64 8, i64 48), !dbg !718
  %26 = icmp eq i32 %25, 0, !dbg !718
  br i1 %26, label %setup.next8, label %setup.end, !dbg !718

setup.next8:                                      ; preds = %setup.next7
  %27 = bitcast double** %C.addr to i8*, !dbg !718
  %28 = call i32 @cudaSetupArgument(i8* %27, i64 8, i64 56), !dbg !718
  %29 = icmp eq i32 %28, 0, !dbg !718
  br i1 %29, label %setup.next9, label %setup.end, !dbg !718

setup.next9:                                      ; preds = %setup.next8
  %30 = bitcast double** %D.addr to i8*, !dbg !718
  %31 = call i32 @cudaSetupArgument(i8* %30, i64 8, i64 64), !dbg !718
  %32 = icmp eq i32 %31, 0, !dbg !718
  br i1 %32, label %setup.next10, label %setup.end, !dbg !718

setup.next10:                                     ; preds = %setup.next9
  %33 = call i32 @cudaLaunch(i8* bitcast (void (i32, i32, i32, i32, double, double, double*, double*, double*, double*, double*)* @_Z14kernel_A_mul_BiiiiddPdS_S_S_S_ to i8*)), !dbg !718
  br label %setup.end, !dbg !718

setup.end:                                        ; preds = %setup.next10, %setup.next9, %setup.next8, %setup.next7, %setup.next6, %setup.next5, %setup.next4, %setup.next3, %setup.next2, %setup.next1, %setup.next, %entry
  ret void, !dbg !719
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @cudaSetupArgument(i8*, i64, i64)

declare dso_local i32 @cudaLaunch(i8*)

; Function Attrs: noinline uwtable
define dso_local void @_Z23kernel_D_plus_tmp_mul_CiiiiddPdS_S_S_S_(i32 %ni, i32 %nj, i32 %nk, i32 %nl, double %alpha, double %beta, double* %tmp, double* %A, double* %B, double* %C, double* %D) #0 !dbg !720 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %tmp.addr = alloca double*, align 8
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %C.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  store i32 %ni, i32* %ni.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ni.addr, metadata !721, metadata !DIExpression()), !dbg !722
  store i32 %nj, i32* %nj.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nj.addr, metadata !723, metadata !DIExpression()), !dbg !724
  store i32 %nk, i32* %nk.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nk.addr, metadata !725, metadata !DIExpression()), !dbg !726
  store i32 %nl, i32* %nl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nl.addr, metadata !727, metadata !DIExpression()), !dbg !728
  store double %alpha, double* %alpha.addr, align 8
  call void @llvm.dbg.declare(metadata double* %alpha.addr, metadata !729, metadata !DIExpression()), !dbg !730
  store double %beta, double* %beta.addr, align 8
  call void @llvm.dbg.declare(metadata double* %beta.addr, metadata !731, metadata !DIExpression()), !dbg !732
  store double* %tmp, double** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata double** %tmp.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store double* %A, double** %A.addr, align 8
  call void @llvm.dbg.declare(metadata double** %A.addr, metadata !735, metadata !DIExpression()), !dbg !736
  store double* %B, double** %B.addr, align 8
  call void @llvm.dbg.declare(metadata double** %B.addr, metadata !737, metadata !DIExpression()), !dbg !738
  store double* %C, double** %C.addr, align 8
  call void @llvm.dbg.declare(metadata double** %C.addr, metadata !739, metadata !DIExpression()), !dbg !740
  store double* %D, double** %D.addr, align 8
  call void @llvm.dbg.declare(metadata double** %D.addr, metadata !741, metadata !DIExpression()), !dbg !742
  %0 = bitcast i32* %ni.addr to i8*, !dbg !743
  %1 = call i32 @cudaSetupArgument(i8* %0, i64 4, i64 0), !dbg !743
  %2 = icmp eq i32 %1, 0, !dbg !743
  br i1 %2, label %setup.next, label %setup.end, !dbg !743

setup.next:                                       ; preds = %entry
  %3 = bitcast i32* %nj.addr to i8*, !dbg !743
  %4 = call i32 @cudaSetupArgument(i8* %3, i64 4, i64 4), !dbg !743
  %5 = icmp eq i32 %4, 0, !dbg !743
  br i1 %5, label %setup.next1, label %setup.end, !dbg !743

setup.next1:                                      ; preds = %setup.next
  %6 = bitcast i32* %nk.addr to i8*, !dbg !743
  %7 = call i32 @cudaSetupArgument(i8* %6, i64 4, i64 8), !dbg !743
  %8 = icmp eq i32 %7, 0, !dbg !743
  br i1 %8, label %setup.next2, label %setup.end, !dbg !743

setup.next2:                                      ; preds = %setup.next1
  %9 = bitcast i32* %nl.addr to i8*, !dbg !743
  %10 = call i32 @cudaSetupArgument(i8* %9, i64 4, i64 12), !dbg !743
  %11 = icmp eq i32 %10, 0, !dbg !743
  br i1 %11, label %setup.next3, label %setup.end, !dbg !743

setup.next3:                                      ; preds = %setup.next2
  %12 = bitcast double* %alpha.addr to i8*, !dbg !743
  %13 = call i32 @cudaSetupArgument(i8* %12, i64 8, i64 16), !dbg !743
  %14 = icmp eq i32 %13, 0, !dbg !743
  br i1 %14, label %setup.next4, label %setup.end, !dbg !743

setup.next4:                                      ; preds = %setup.next3
  %15 = bitcast double* %beta.addr to i8*, !dbg !743
  %16 = call i32 @cudaSetupArgument(i8* %15, i64 8, i64 24), !dbg !743
  %17 = icmp eq i32 %16, 0, !dbg !743
  br i1 %17, label %setup.next5, label %setup.end, !dbg !743

setup.next5:                                      ; preds = %setup.next4
  %18 = bitcast double** %tmp.addr to i8*, !dbg !743
  %19 = call i32 @cudaSetupArgument(i8* %18, i64 8, i64 32), !dbg !743
  %20 = icmp eq i32 %19, 0, !dbg !743
  br i1 %20, label %setup.next6, label %setup.end, !dbg !743

setup.next6:                                      ; preds = %setup.next5
  %21 = bitcast double** %A.addr to i8*, !dbg !743
  %22 = call i32 @cudaSetupArgument(i8* %21, i64 8, i64 40), !dbg !743
  %23 = icmp eq i32 %22, 0, !dbg !743
  br i1 %23, label %setup.next7, label %setup.end, !dbg !743

setup.next7:                                      ; preds = %setup.next6
  %24 = bitcast double** %B.addr to i8*, !dbg !743
  %25 = call i32 @cudaSetupArgument(i8* %24, i64 8, i64 48), !dbg !743
  %26 = icmp eq i32 %25, 0, !dbg !743
  br i1 %26, label %setup.next8, label %setup.end, !dbg !743

setup.next8:                                      ; preds = %setup.next7
  %27 = bitcast double** %C.addr to i8*, !dbg !743
  %28 = call i32 @cudaSetupArgument(i8* %27, i64 8, i64 56), !dbg !743
  %29 = icmp eq i32 %28, 0, !dbg !743
  br i1 %29, label %setup.next9, label %setup.end, !dbg !743

setup.next9:                                      ; preds = %setup.next8
  %30 = bitcast double** %D.addr to i8*, !dbg !743
  %31 = call i32 @cudaSetupArgument(i8* %30, i64 8, i64 64), !dbg !743
  %32 = icmp eq i32 %31, 0, !dbg !743
  br i1 %32, label %setup.next10, label %setup.end, !dbg !743

setup.next10:                                     ; preds = %setup.next9
  %33 = call i32 @cudaLaunch(i8* bitcast (void (i32, i32, i32, i32, double, double, double*, double*, double*, double*, double*)* @_Z23kernel_D_plus_tmp_mul_CiiiiddPdS_S_S_S_ to i8*)), !dbg !743
  br label %setup.end, !dbg !743

setup.end:                                        ; preds = %setup.next10, %setup.next9, %setup.next8, %setup.next7, %setup.next6, %setup.next5, %setup.next4, %setup.next3, %setup.next2, %setup.next1, %setup.next, %entry
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @_Z10num_blocksss(i16 signext %num, i16 signext %factor) #2 !dbg !745 {
entry:
  %num.addr = alloca i16, align 2
  %factor.addr = alloca i16, align 2
  store i16 %num, i16* %num.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %num.addr, metadata !749, metadata !DIExpression()), !dbg !750
  store i16 %factor, i16* %factor.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %factor.addr, metadata !751, metadata !DIExpression()), !dbg !752
  %0 = load i16, i16* %num.addr, align 2, !dbg !753
  %conv = sext i16 %0 to i32, !dbg !753
  %1 = load i16, i16* %factor.addr, align 2, !dbg !754
  %conv1 = sext i16 %1 to i32, !dbg !754
  %add = add nsw i32 %conv, %conv1, !dbg !755
  %sub = sub nsw i32 %add, 1, !dbg !756
  %2 = load i16, i16* %factor.addr, align 2, !dbg !757
  %conv2 = sext i16 %2 to i32, !dbg !757
  %div = sdiv i32 %sub, %conv2, !dbg !758
  %conv3 = trunc i32 %div to i16, !dbg !759
  ret i16 %conv3, !dbg !760
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #3 !dbg !761 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %dump_code = alloca i32, align 4
  %ni = alloca i64, align 8
  %nj = alloca i64, align 8
  %nk = alloca i64, align 8
  %nl = alloca i64, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %A = alloca double*, align 8
  %B = alloca double*, align 8
  %C = alloca double*, align 8
  %D = alloca double*, align 8
  %tmp = alloca double*, align 8
  %dev_A = alloca double*, align 8
  %dev_B = alloca double*, align 8
  %dev_C = alloca double*, align 8
  %dev_D = alloca double*, align 8
  %dev_tmp = alloca double*, align 8
  %dev_alpha = alloca double*, align 8
  %dev_beta = alloca double*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !764, metadata !DIExpression()), !dbg !765
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata i32* %dump_code, metadata !768, metadata !DIExpression()), !dbg !769
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !770
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !770
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !770
  %call = call i32 @atoi(i8* %1) #8, !dbg !771
  store i32 %call, i32* %dump_code, align 4, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %ni, metadata !772, metadata !DIExpression()), !dbg !773
  %2 = load i8**, i8*** %argv.addr, align 8, !dbg !774
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 2, !dbg !774
  %3 = load i8*, i8** %arrayidx1, align 8, !dbg !774
  %call2 = call i32 @atoi(i8* %3) #8, !dbg !775
  %conv = sext i32 %call2 to i64, !dbg !775
  store i64 %conv, i64* %ni, align 8, !dbg !773
  call void @llvm.dbg.declare(metadata i64* %nj, metadata !776, metadata !DIExpression()), !dbg !777
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !778
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !778
  %5 = load i8*, i8** %arrayidx3, align 8, !dbg !778
  %call4 = call i32 @atoi(i8* %5) #8, !dbg !779
  %conv5 = sext i32 %call4 to i64, !dbg !779
  store i64 %conv5, i64* %nj, align 8, !dbg !777
  call void @llvm.dbg.declare(metadata i64* %nk, metadata !780, metadata !DIExpression()), !dbg !781
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !782
  %arrayidx6 = getelementptr inbounds i8*, i8** %6, i64 4, !dbg !782
  %7 = load i8*, i8** %arrayidx6, align 8, !dbg !782
  %call7 = call i32 @atoi(i8* %7) #8, !dbg !783
  %conv8 = sext i32 %call7 to i64, !dbg !783
  store i64 %conv8, i64* %nk, align 8, !dbg !781
  call void @llvm.dbg.declare(metadata i64* %nl, metadata !784, metadata !DIExpression()), !dbg !785
  %8 = load i8**, i8*** %argv.addr, align 8, !dbg !786
  %arrayidx9 = getelementptr inbounds i8*, i8** %8, i64 5, !dbg !786
  %9 = load i8*, i8** %arrayidx9, align 8, !dbg !786
  %call10 = call i32 @atoi(i8* %9) #8, !dbg !787
  %conv11 = sext i32 %call10 to i64, !dbg !787
  store i64 %conv11, i64* %nl, align 8, !dbg !785
  call void @llvm.dbg.declare(metadata double* %alpha, metadata !788, metadata !DIExpression()), !dbg !789
  store double 3.241200e+04, double* %alpha, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata double* %beta, metadata !790, metadata !DIExpression()), !dbg !791
  store double 2.123000e+03, double* %beta, align 8, !dbg !791
  call void @llvm.dbg.declare(metadata double** %A, metadata !792, metadata !DIExpression()), !dbg !793
  %10 = load i64, i64* %ni, align 8, !dbg !794
  %11 = load i64, i64* %nk, align 8, !dbg !795
  %mul = mul nsw i64 %10, %11, !dbg !796
  %mul12 = mul i64 %mul, 8, !dbg !797
  %call13 = call noalias i8* @malloc(i64 %mul12) #9, !dbg !798
  %12 = bitcast i8* %call13 to double*, !dbg !799
  store double* %12, double** %A, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata double** %B, metadata !800, metadata !DIExpression()), !dbg !801
  %13 = load i64, i64* %nk, align 8, !dbg !802
  %14 = load i64, i64* %nj, align 8, !dbg !803
  %mul14 = mul nsw i64 %13, %14, !dbg !804
  %mul15 = mul i64 %mul14, 8, !dbg !805
  %call16 = call noalias i8* @malloc(i64 %mul15) #9, !dbg !806
  %15 = bitcast i8* %call16 to double*, !dbg !807
  store double* %15, double** %B, align 8, !dbg !801
  call void @llvm.dbg.declare(metadata double** %C, metadata !808, metadata !DIExpression()), !dbg !809
  %16 = load i64, i64* %nl, align 8, !dbg !810
  %17 = load i64, i64* %nj, align 8, !dbg !811
  %mul17 = mul nsw i64 %16, %17, !dbg !812
  %mul18 = mul i64 %mul17, 8, !dbg !813
  %call19 = call noalias i8* @malloc(i64 %mul18) #9, !dbg !814
  %18 = bitcast i8* %call19 to double*, !dbg !815
  store double* %18, double** %C, align 8, !dbg !809
  call void @llvm.dbg.declare(metadata double** %D, metadata !816, metadata !DIExpression()), !dbg !817
  %19 = load i64, i64* %ni, align 8, !dbg !818
  %20 = load i64, i64* %nl, align 8, !dbg !819
  %mul20 = mul nsw i64 %19, %20, !dbg !820
  %mul21 = mul i64 %mul20, 8, !dbg !821
  %call22 = call noalias i8* @malloc(i64 %mul21) #9, !dbg !822
  %21 = bitcast i8* %call22 to double*, !dbg !823
  store double* %21, double** %D, align 8, !dbg !817
  call void @llvm.dbg.declare(metadata double** %tmp, metadata !824, metadata !DIExpression()), !dbg !825
  %22 = load i64, i64* %ni, align 8, !dbg !826
  %23 = load i64, i64* %nj, align 8, !dbg !827
  %mul23 = mul nsw i64 %22, %23, !dbg !828
  %mul24 = mul i64 %mul23, 8, !dbg !829
  %call25 = call noalias i8* @malloc(i64 %mul24) #9, !dbg !830
  %24 = bitcast i8* %call25 to double*, !dbg !831
  store double* %24, double** %tmp, align 8, !dbg !825
  %25 = load i64, i64* %ni, align 8, !dbg !832
  %conv26 = trunc i64 %25 to i32, !dbg !832
  %26 = load i64, i64* %nj, align 8, !dbg !833
  %conv27 = trunc i64 %26 to i32, !dbg !833
  %27 = load i64, i64* %nk, align 8, !dbg !834
  %conv28 = trunc i64 %27 to i32, !dbg !834
  %28 = load i64, i64* %nl, align 8, !dbg !835
  %conv29 = trunc i64 %28 to i32, !dbg !835
  %29 = load double*, double** %A, align 8, !dbg !836
  %30 = load double*, double** %B, align 8, !dbg !837
  %31 = load double*, double** %C, align 8, !dbg !838
  %32 = load double*, double** %D, align 8, !dbg !839
  %33 = load double*, double** %tmp, align 8, !dbg !840
  call void @_ZL10init_arrayiiiiPdS_S_S_S_(i32 %conv26, i32 %conv27, i32 %conv28, i32 %conv29, double* %29, double* %30, double* %31, double* %32, double* %33), !dbg !841
  call void @llvm.dbg.declare(metadata double** %dev_A, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata double** %dev_B, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata double** %dev_C, metadata !846, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata double** %dev_D, metadata !848, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.declare(metadata double** %dev_tmp, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata double** %dev_alpha, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata double** %dev_beta, metadata !854, metadata !DIExpression()), !dbg !855
  %34 = load i64, i64* %ni, align 8, !dbg !856
  %35 = load i64, i64* %nk, align 8, !dbg !857
  %mul30 = mul nsw i64 %34, %35, !dbg !858
  %mul31 = mul i64 %mul30, 8, !dbg !859
  %call32 = call i32 @_ZL10cudaMallocIdE9cudaErrorPPT_m(double** %dev_A, i64 %mul31), !dbg !860
  %36 = load i64, i64* %nk, align 8, !dbg !861
  %37 = load i64, i64* %nj, align 8, !dbg !862
  %mul33 = mul nsw i64 %36, %37, !dbg !863
  %mul34 = mul i64 %mul33, 8, !dbg !864
  %call35 = call i32 @_ZL10cudaMallocIdE9cudaErrorPPT_m(double** %dev_B, i64 %mul34), !dbg !865
  %38 = load i64, i64* %nl, align 8, !dbg !866
  %39 = load i64, i64* %nj, align 8, !dbg !867
  %mul36 = mul nsw i64 %38, %39, !dbg !868
  %mul37 = mul i64 %mul36, 8, !dbg !869
  %call38 = call i32 @_ZL10cudaMallocIdE9cudaErrorPPT_m(double** %dev_C, i64 %mul37), !dbg !870
  %40 = load i64, i64* %ni, align 8, !dbg !871
  %41 = load i64, i64* %nl, align 8, !dbg !872
  %mul39 = mul nsw i64 %40, %41, !dbg !873
  %mul40 = mul i64 %mul39, 8, !dbg !874
  %call41 = call i32 @_ZL10cudaMallocIdE9cudaErrorPPT_m(double** %dev_D, i64 %mul40), !dbg !875
  %42 = load i64, i64* %ni, align 8, !dbg !876
  %43 = load i64, i64* %nj, align 8, !dbg !877
  %mul42 = mul nsw i64 %42, %43, !dbg !878
  %mul43 = mul i64 %mul42, 8, !dbg !879
  %call44 = call i32 @_ZL10cudaMallocIdE9cudaErrorPPT_m(double** %dev_tmp, i64 %mul43), !dbg !880
  %44 = load double*, double** %dev_A, align 8, !dbg !881
  %45 = bitcast double* %44 to i8*, !dbg !881
  %46 = load double*, double** %A, align 8, !dbg !882
  %47 = bitcast double* %46 to i8*, !dbg !882
  %48 = load i64, i64* %ni, align 8, !dbg !883
  %49 = load i64, i64* %nk, align 8, !dbg !884
  %mul45 = mul nsw i64 %48, %49, !dbg !885
  %mul46 = mul i64 %mul45, 8, !dbg !886
  %call47 = call i32 @cudaMemcpy(i8* %45, i8* %47, i64 %mul46, i32 1), !dbg !887
  %50 = load double*, double** %dev_B, align 8, !dbg !888
  %51 = bitcast double* %50 to i8*, !dbg !888
  %52 = load double*, double** %B, align 8, !dbg !889
  %53 = bitcast double* %52 to i8*, !dbg !889
  %54 = load i64, i64* %nk, align 8, !dbg !890
  %55 = load i64, i64* %nj, align 8, !dbg !891
  %mul48 = mul nsw i64 %54, %55, !dbg !892
  %mul49 = mul i64 %mul48, 8, !dbg !893
  %call50 = call i32 @cudaMemcpy(i8* %51, i8* %53, i64 %mul49, i32 1), !dbg !894
  %56 = load double*, double** %dev_C, align 8, !dbg !895
  %57 = bitcast double* %56 to i8*, !dbg !895
  %58 = load double*, double** %C, align 8, !dbg !896
  %59 = bitcast double* %58 to i8*, !dbg !896
  %60 = load i64, i64* %nl, align 8, !dbg !897
  %61 = load i64, i64* %nj, align 8, !dbg !898
  %mul51 = mul nsw i64 %60, %61, !dbg !899
  %mul52 = mul i64 %mul51, 8, !dbg !900
  %call53 = call i32 @cudaMemcpy(i8* %57, i8* %59, i64 %mul52, i32 1), !dbg !901
  %62 = load double*, double** %dev_D, align 8, !dbg !902
  %63 = bitcast double* %62 to i8*, !dbg !902
  %64 = load double*, double** %D, align 8, !dbg !903
  %65 = bitcast double* %64 to i8*, !dbg !903
  %66 = load i64, i64* %ni, align 8, !dbg !904
  %67 = load i64, i64* %nl, align 8, !dbg !905
  %mul54 = mul nsw i64 %66, %67, !dbg !906
  %mul55 = mul i64 %mul54, 8, !dbg !907
  %call56 = call i32 @cudaMemcpy(i8* %63, i8* %65, i64 %mul55, i32 1), !dbg !908
  %68 = load double*, double** %dev_tmp, align 8, !dbg !909
  %69 = bitcast double* %68 to i8*, !dbg !909
  %70 = load double*, double** %tmp, align 8, !dbg !910
  %71 = bitcast double* %70 to i8*, !dbg !910
  %72 = load i64, i64* %ni, align 8, !dbg !911
  %73 = load i64, i64* %nj, align 8, !dbg !912
  %mul57 = mul nsw i64 %72, %73, !dbg !913
  %mul58 = mul i64 %mul57, 8, !dbg !914
  %call59 = call i32 @cudaMemcpy(i8* %69, i8* %71, i64 %mul58, i32 1), !dbg !915
  %74 = load i64, i64* %ni, align 8, !dbg !916
  %conv60 = trunc i64 %74 to i32, !dbg !916
  %75 = load i64, i64* %nj, align 8, !dbg !917
  %conv61 = trunc i64 %75 to i32, !dbg !917
  %76 = load i64, i64* %nk, align 8, !dbg !918
  %conv62 = trunc i64 %76 to i32, !dbg !918
  %77 = load i64, i64* %nl, align 8, !dbg !919
  %conv63 = trunc i64 %77 to i32, !dbg !919
  %78 = load double, double* %alpha, align 8, !dbg !920
  %79 = load double, double* %beta, align 8, !dbg !921
  %80 = load double*, double** %dev_tmp, align 8, !dbg !922
  %81 = load double*, double** %dev_A, align 8, !dbg !923
  %82 = load double*, double** %dev_B, align 8, !dbg !924
  %83 = load double*, double** %dev_C, align 8, !dbg !925
  %84 = load double*, double** %dev_D, align 8, !dbg !926
  call void @_ZL6kerneliiiiddPdS_S_S_S_(i32 %conv60, i32 %conv61, i32 %conv62, i32 %conv63, double %78, double %79, double* %80, double* %81, double* %82, double* %83, double* %84), !dbg !927
  %85 = load double*, double** %D, align 8, !dbg !928
  %86 = bitcast double* %85 to i8*, !dbg !928
  %87 = load double*, double** %dev_D, align 8, !dbg !929
  %88 = bitcast double* %87 to i8*, !dbg !929
  %89 = load i64, i64* %ni, align 8, !dbg !930
  %90 = load i64, i64* %nl, align 8, !dbg !931
  %mul64 = mul nsw i64 %89, %90, !dbg !932
  %mul65 = mul i64 %mul64, 8, !dbg !933
  %call66 = call i32 @cudaMemcpy(i8* %86, i8* %88, i64 %mul65, i32 2), !dbg !934
  %91 = load double*, double** %dev_A, align 8, !dbg !935
  %92 = bitcast double* %91 to i8*, !dbg !935
  %call67 = call i32 @cudaFree(i8* %92), !dbg !936
  %93 = load double*, double** %dev_B, align 8, !dbg !937
  %94 = bitcast double* %93 to i8*, !dbg !937
  %call68 = call i32 @cudaFree(i8* %94), !dbg !938
  %95 = load double*, double** %dev_C, align 8, !dbg !939
  %96 = bitcast double* %95 to i8*, !dbg !939
  %call69 = call i32 @cudaFree(i8* %96), !dbg !940
  %97 = load double*, double** %dev_D, align 8, !dbg !941
  %98 = bitcast double* %97 to i8*, !dbg !941
  %call70 = call i32 @cudaFree(i8* %98), !dbg !942
  %99 = load double*, double** %dev_tmp, align 8, !dbg !943
  %100 = bitcast double* %99 to i8*, !dbg !943
  %call71 = call i32 @cudaFree(i8* %100), !dbg !944
  %101 = load double*, double** %dev_alpha, align 8, !dbg !945
  %102 = bitcast double* %101 to i8*, !dbg !945
  %call72 = call i32 @cudaFree(i8* %102), !dbg !946
  %103 = load double*, double** %dev_beta, align 8, !dbg !947
  %104 = bitcast double* %103 to i8*, !dbg !947
  %call73 = call i32 @cudaFree(i8* %104), !dbg !948
  %105 = load i32, i32* %dump_code, align 4, !dbg !949
  %cmp = icmp eq i32 %105, 1, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %entry
  %106 = load i64, i64* %ni, align 8, !dbg !953
  %conv74 = trunc i64 %106 to i32, !dbg !953
  %107 = load i64, i64* %nk, align 8, !dbg !954
  %conv75 = trunc i64 %107 to i32, !dbg !954
  %108 = load double*, double** %D, align 8, !dbg !955
  call void @_ZL11print_arrayiiPd(i32 %conv74, i32 %conv75, double* %108), !dbg !956
  br label %if.end, !dbg !956

if.end:                                           ; preds = %if.then, %entry
  %109 = load double*, double** %tmp, align 8, !dbg !957
  %110 = bitcast double* %109 to i8*, !dbg !957
  call void @free(i8* %110) #9, !dbg !958
  %111 = load double*, double** %A, align 8, !dbg !959
  %112 = bitcast double* %111 to i8*, !dbg !959
  call void @free(i8* %112) #9, !dbg !960
  %113 = load double*, double** %B, align 8, !dbg !961
  %114 = bitcast double* %113 to i8*, !dbg !961
  call void @free(i8* %114) #9, !dbg !962
  %115 = load double*, double** %C, align 8, !dbg !963
  %116 = bitcast double* %115 to i8*, !dbg !963
  call void @free(i8* %116) #9, !dbg !964
  %117 = load double*, double** %D, align 8, !dbg !965
  %118 = bitcast double* %117 to i8*, !dbg !965
  call void @free(i8* %118) #9, !dbg !966
  ret i32 0, !dbg !967
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define internal void @_ZL10init_arrayiiiiPdS_S_S_S_(i32 %ni, i32 %nj, i32 %nk, i32 %nl, double* %A, double* %B, double* %C, double* %D, double* %tmp) #2 !dbg !968 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %C.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  %tmp.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ni.addr, metadata !971, metadata !DIExpression()), !dbg !972
  store i32 %nj, i32* %nj.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nj.addr, metadata !973, metadata !DIExpression()), !dbg !974
  store i32 %nk, i32* %nk.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nk.addr, metadata !975, metadata !DIExpression()), !dbg !976
  store i32 %nl, i32* %nl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nl.addr, metadata !977, metadata !DIExpression()), !dbg !978
  store double* %A, double** %A.addr, align 8
  call void @llvm.dbg.declare(metadata double** %A.addr, metadata !979, metadata !DIExpression()), !dbg !980
  store double* %B, double** %B.addr, align 8
  call void @llvm.dbg.declare(metadata double** %B.addr, metadata !981, metadata !DIExpression()), !dbg !982
  store double* %C, double** %C.addr, align 8
  call void @llvm.dbg.declare(metadata double** %C.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store double* %D, double** %D.addr, align 8
  call void @llvm.dbg.declare(metadata double** %D.addr, metadata !985, metadata !DIExpression()), !dbg !986
  store double* %tmp, double** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata double** %tmp.addr, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.declare(metadata i32* %i, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata i32* %j, metadata !991, metadata !DIExpression()), !dbg !992
  store i32 0, i32* %i, align 4, !dbg !993
  br label %for.cond, !dbg !995

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4, !dbg !996
  %1 = load i32, i32* %ni.addr, align 4, !dbg !998
  %cmp = icmp slt i32 %0, %1, !dbg !999
  br i1 %cmp, label %for.body, label %for.end9, !dbg !1000

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !1001
  br label %for.cond1, !dbg !1003

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !1004
  %3 = load i32, i32* %nk.addr, align 4, !dbg !1006
  %cmp2 = icmp slt i32 %2, %3, !dbg !1007
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1008

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4, !dbg !1009
  %conv = sitofp i32 %4 to double, !dbg !1009
  %5 = load i32, i32* %j, align 4, !dbg !1010
  %conv4 = sitofp i32 %5 to double, !dbg !1010
  %mul = fmul contract double %conv, %conv4, !dbg !1011
  %6 = load i32, i32* %ni.addr, align 4, !dbg !1012
  %conv5 = sitofp i32 %6 to double, !dbg !1012
  %div = fdiv double %mul, %conv5, !dbg !1013
  %7 = load double*, double** %A.addr, align 8, !dbg !1014
  %8 = load i32, i32* %i, align 4, !dbg !1015
  %9 = load i32, i32* %ni.addr, align 4, !dbg !1016
  %mul6 = mul nsw i32 %8, %9, !dbg !1017
  %10 = load i32, i32* %j, align 4, !dbg !1018
  %add = add nsw i32 %mul6, %10, !dbg !1019
  %idxprom = sext i32 %add to i64, !dbg !1014
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom, !dbg !1014
  store double %div, double* %arrayidx, align 8, !dbg !1020
  br label %for.inc, !dbg !1014

for.inc:                                          ; preds = %for.body3
  %11 = load i32, i32* %j, align 4, !dbg !1021
  %inc = add nsw i32 %11, 1, !dbg !1021
  store i32 %inc, i32* %j, align 4, !dbg !1021
  br label %for.cond1, !dbg !1022, !llvm.loop !1023

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !1024

for.inc7:                                         ; preds = %for.end
  %12 = load i32, i32* %i, align 4, !dbg !1025
  %inc8 = add nsw i32 %12, 1, !dbg !1025
  store i32 %inc8, i32* %i, align 4, !dbg !1025
  br label %for.cond, !dbg !1026, !llvm.loop !1027

for.end9:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !1029
  br label %for.cond10, !dbg !1031

for.cond10:                                       ; preds = %for.inc29, %for.end9
  %13 = load i32, i32* %i, align 4, !dbg !1032
  %14 = load i32, i32* %nk.addr, align 4, !dbg !1034
  %cmp11 = icmp slt i32 %13, %14, !dbg !1035
  br i1 %cmp11, label %for.body12, label %for.end31, !dbg !1036

for.body12:                                       ; preds = %for.cond10
  store i32 0, i32* %j, align 4, !dbg !1037
  br label %for.cond13, !dbg !1039

for.cond13:                                       ; preds = %for.inc26, %for.body12
  %15 = load i32, i32* %j, align 4, !dbg !1040
  %16 = load i32, i32* %nj.addr, align 4, !dbg !1042
  %cmp14 = icmp slt i32 %15, %16, !dbg !1043
  br i1 %cmp14, label %for.body15, label %for.end28, !dbg !1044

for.body15:                                       ; preds = %for.cond13
  %17 = load i32, i32* %i, align 4, !dbg !1045
  %conv16 = sitofp i32 %17 to double, !dbg !1045
  %18 = load i32, i32* %j, align 4, !dbg !1046
  %add17 = add nsw i32 %18, 1, !dbg !1047
  %conv18 = sitofp i32 %add17 to double, !dbg !1048
  %mul19 = fmul contract double %conv16, %conv18, !dbg !1049
  %19 = load i32, i32* %nj.addr, align 4, !dbg !1050
  %conv20 = sitofp i32 %19 to double, !dbg !1050
  %div21 = fdiv double %mul19, %conv20, !dbg !1051
  %20 = load double*, double** %B.addr, align 8, !dbg !1052
  %21 = load i32, i32* %i, align 4, !dbg !1053
  %22 = load i32, i32* %nk.addr, align 4, !dbg !1054
  %mul22 = mul nsw i32 %21, %22, !dbg !1055
  %23 = load i32, i32* %j, align 4, !dbg !1056
  %add23 = add nsw i32 %mul22, %23, !dbg !1057
  %idxprom24 = sext i32 %add23 to i64, !dbg !1052
  %arrayidx25 = getelementptr inbounds double, double* %20, i64 %idxprom24, !dbg !1052
  store double %div21, double* %arrayidx25, align 8, !dbg !1058
  br label %for.inc26, !dbg !1052

for.inc26:                                        ; preds = %for.body15
  %24 = load i32, i32* %j, align 4, !dbg !1059
  %inc27 = add nsw i32 %24, 1, !dbg !1059
  store i32 %inc27, i32* %j, align 4, !dbg !1059
  br label %for.cond13, !dbg !1060, !llvm.loop !1061

for.end28:                                        ; preds = %for.cond13
  br label %for.inc29, !dbg !1062

for.inc29:                                        ; preds = %for.end28
  %25 = load i32, i32* %i, align 4, !dbg !1063
  %inc30 = add nsw i32 %25, 1, !dbg !1063
  store i32 %inc30, i32* %i, align 4, !dbg !1063
  br label %for.cond10, !dbg !1064, !llvm.loop !1065

for.end31:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4, !dbg !1067
  br label %for.cond32, !dbg !1069

for.cond32:                                       ; preds = %for.inc51, %for.end31
  %26 = load i32, i32* %i, align 4, !dbg !1070
  %27 = load i32, i32* %nl.addr, align 4, !dbg !1072
  %cmp33 = icmp slt i32 %26, %27, !dbg !1073
  br i1 %cmp33, label %for.body34, label %for.end53, !dbg !1074

for.body34:                                       ; preds = %for.cond32
  store i32 0, i32* %j, align 4, !dbg !1075
  br label %for.cond35, !dbg !1077

for.cond35:                                       ; preds = %for.inc48, %for.body34
  %28 = load i32, i32* %j, align 4, !dbg !1078
  %29 = load i32, i32* %nj.addr, align 4, !dbg !1080
  %cmp36 = icmp slt i32 %28, %29, !dbg !1081
  br i1 %cmp36, label %for.body37, label %for.end50, !dbg !1082

for.body37:                                       ; preds = %for.cond35
  %30 = load i32, i32* %i, align 4, !dbg !1083
  %conv38 = sitofp i32 %30 to double, !dbg !1083
  %31 = load i32, i32* %j, align 4, !dbg !1084
  %add39 = add nsw i32 %31, 3, !dbg !1085
  %conv40 = sitofp i32 %add39 to double, !dbg !1086
  %mul41 = fmul contract double %conv38, %conv40, !dbg !1087
  %32 = load i32, i32* %nl.addr, align 4, !dbg !1088
  %conv42 = sitofp i32 %32 to double, !dbg !1088
  %div43 = fdiv double %mul41, %conv42, !dbg !1089
  %33 = load double*, double** %C.addr, align 8, !dbg !1090
  %34 = load i32, i32* %i, align 4, !dbg !1091
  %35 = load i32, i32* %nl.addr, align 4, !dbg !1092
  %mul44 = mul nsw i32 %34, %35, !dbg !1093
  %36 = load i32, i32* %j, align 4, !dbg !1094
  %add45 = add nsw i32 %mul44, %36, !dbg !1095
  %idxprom46 = sext i32 %add45 to i64, !dbg !1090
  %arrayidx47 = getelementptr inbounds double, double* %33, i64 %idxprom46, !dbg !1090
  store double %div43, double* %arrayidx47, align 8, !dbg !1096
  br label %for.inc48, !dbg !1090

for.inc48:                                        ; preds = %for.body37
  %37 = load i32, i32* %j, align 4, !dbg !1097
  %inc49 = add nsw i32 %37, 1, !dbg !1097
  store i32 %inc49, i32* %j, align 4, !dbg !1097
  br label %for.cond35, !dbg !1098, !llvm.loop !1099

for.end50:                                        ; preds = %for.cond35
  br label %for.inc51, !dbg !1100

for.inc51:                                        ; preds = %for.end50
  %38 = load i32, i32* %i, align 4, !dbg !1101
  %inc52 = add nsw i32 %38, 1, !dbg !1101
  store i32 %inc52, i32* %i, align 4, !dbg !1101
  br label %for.cond32, !dbg !1102, !llvm.loop !1103

for.end53:                                        ; preds = %for.cond32
  store i32 0, i32* %i, align 4, !dbg !1105
  br label %for.cond54, !dbg !1107

for.cond54:                                       ; preds = %for.inc73, %for.end53
  %39 = load i32, i32* %i, align 4, !dbg !1108
  %40 = load i32, i32* %ni.addr, align 4, !dbg !1110
  %cmp55 = icmp slt i32 %39, %40, !dbg !1111
  br i1 %cmp55, label %for.body56, label %for.end75, !dbg !1112

for.body56:                                       ; preds = %for.cond54
  store i32 0, i32* %j, align 4, !dbg !1113
  br label %for.cond57, !dbg !1115

for.cond57:                                       ; preds = %for.inc70, %for.body56
  %41 = load i32, i32* %j, align 4, !dbg !1116
  %42 = load i32, i32* %nl.addr, align 4, !dbg !1118
  %cmp58 = icmp slt i32 %41, %42, !dbg !1119
  br i1 %cmp58, label %for.body59, label %for.end72, !dbg !1120

for.body59:                                       ; preds = %for.cond57
  %43 = load i32, i32* %i, align 4, !dbg !1121
  %conv60 = sitofp i32 %43 to double, !dbg !1121
  %44 = load i32, i32* %j, align 4, !dbg !1122
  %add61 = add nsw i32 %44, 2, !dbg !1123
  %conv62 = sitofp i32 %add61 to double, !dbg !1124
  %mul63 = fmul contract double %conv60, %conv62, !dbg !1125
  %45 = load i32, i32* %nk.addr, align 4, !dbg !1126
  %conv64 = sitofp i32 %45 to double, !dbg !1126
  %div65 = fdiv double %mul63, %conv64, !dbg !1127
  %46 = load double*, double** %D.addr, align 8, !dbg !1128
  %47 = load i32, i32* %i, align 4, !dbg !1129
  %48 = load i32, i32* %ni.addr, align 4, !dbg !1130
  %mul66 = mul nsw i32 %47, %48, !dbg !1131
  %49 = load i32, i32* %j, align 4, !dbg !1132
  %add67 = add nsw i32 %mul66, %49, !dbg !1133
  %idxprom68 = sext i32 %add67 to i64, !dbg !1128
  %arrayidx69 = getelementptr inbounds double, double* %46, i64 %idxprom68, !dbg !1128
  store double %div65, double* %arrayidx69, align 8, !dbg !1134
  br label %for.inc70, !dbg !1128

for.inc70:                                        ; preds = %for.body59
  %50 = load i32, i32* %j, align 4, !dbg !1135
  %inc71 = add nsw i32 %50, 1, !dbg !1135
  store i32 %inc71, i32* %j, align 4, !dbg !1135
  br label %for.cond57, !dbg !1136, !llvm.loop !1137

for.end72:                                        ; preds = %for.cond57
  br label %for.inc73, !dbg !1138

for.inc73:                                        ; preds = %for.end72
  %51 = load i32, i32* %i, align 4, !dbg !1139
  %inc74 = add nsw i32 %51, 1, !dbg !1139
  store i32 %inc74, i32* %i, align 4, !dbg !1139
  br label %for.cond54, !dbg !1140, !llvm.loop !1141

for.end75:                                        ; preds = %for.cond54
  store i32 0, i32* %i, align 4, !dbg !1143
  br label %for.cond76, !dbg !1145

for.cond76:                                       ; preds = %for.inc89, %for.end75
  %52 = load i32, i32* %i, align 4, !dbg !1146
  %53 = load i32, i32* %ni.addr, align 4, !dbg !1148
  %cmp77 = icmp slt i32 %52, %53, !dbg !1149
  br i1 %cmp77, label %for.body78, label %for.end91, !dbg !1150

for.body78:                                       ; preds = %for.cond76
  store i32 0, i32* %j, align 4, !dbg !1151
  br label %for.cond79, !dbg !1153

for.cond79:                                       ; preds = %for.inc86, %for.body78
  %54 = load i32, i32* %j, align 4, !dbg !1154
  %55 = load i32, i32* %nj.addr, align 4, !dbg !1156
  %cmp80 = icmp slt i32 %54, %55, !dbg !1157
  br i1 %cmp80, label %for.body81, label %for.end88, !dbg !1158

for.body81:                                       ; preds = %for.cond79
  %56 = load double*, double** %tmp.addr, align 8, !dbg !1159
  %57 = load i32, i32* %i, align 4, !dbg !1160
  %58 = load i32, i32* %ni.addr, align 4, !dbg !1161
  %mul82 = mul nsw i32 %57, %58, !dbg !1162
  %59 = load i32, i32* %j, align 4, !dbg !1163
  %add83 = add nsw i32 %mul82, %59, !dbg !1164
  %idxprom84 = sext i32 %add83 to i64, !dbg !1159
  %arrayidx85 = getelementptr inbounds double, double* %56, i64 %idxprom84, !dbg !1159
  store double 0.000000e+00, double* %arrayidx85, align 8, !dbg !1165
  br label %for.inc86, !dbg !1159

for.inc86:                                        ; preds = %for.body81
  %60 = load i32, i32* %j, align 4, !dbg !1166
  %inc87 = add nsw i32 %60, 1, !dbg !1166
  store i32 %inc87, i32* %j, align 4, !dbg !1166
  br label %for.cond79, !dbg !1167, !llvm.loop !1168

for.end88:                                        ; preds = %for.cond79
  br label %for.inc89, !dbg !1169

for.inc89:                                        ; preds = %for.end88
  %61 = load i32, i32* %i, align 4, !dbg !1170
  %inc90 = add nsw i32 %61, 1, !dbg !1170
  store i32 %inc90, i32* %i, align 4, !dbg !1170
  br label %for.cond76, !dbg !1171, !llvm.loop !1172

for.end91:                                        ; preds = %for.cond76
  ret void, !dbg !1174
}

; Function Attrs: noinline uwtable
define internal i32 @_ZL10cudaMallocIdE9cudaErrorPPT_m(double** %devPtr, i64 %size) #0 !dbg !1175 {
entry:
  %devPtr.addr = alloca double**, align 8
  %size.addr = alloca i64, align 8
  store double** %devPtr, double*** %devPtr.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %devPtr.addr, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1185, metadata !DIExpression()), !dbg !1186
  %0 = load double**, double*** %devPtr.addr, align 8, !dbg !1187
  %1 = bitcast double** %0 to i8*, !dbg !1187
  %2 = bitcast i8* %1 to i8**, !dbg !1188
  %3 = load i64, i64* %size.addr, align 8, !dbg !1189
  %call = call i32 @cudaMalloc(i8** %2, i64 %3), !dbg !1190
  ret i32 %call, !dbg !1191
}

declare dso_local i32 @cudaMemcpy(i8*, i8*, i64, i32) #6

; Function Attrs: noinline uwtable
define internal void @_ZL6kerneliiiiddPdS_S_S_S_(i32 %ni, i32 %nj, i32 %nk, i32 %nl, double %alpha, double %beta, double* %tmp, double* %A, double* %B, double* %C, double* %D) #0 !dbg !1192 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %tmp.addr = alloca double*, align 8
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %C.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  %threadsPerBlock = alloca i32, align 4
  %block = alloca %struct.dim3, align 4
  %grid = alloca %struct.dim3, align 4
  %agg.tmp = alloca %struct.dim3, align 4
  %agg.tmp7 = alloca %struct.dim3, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp7.coerce = alloca { i64, i32 }, align 4
  %grid9 = alloca %struct.dim3, align 4
  %agg.tmp20 = alloca %struct.dim3, align 4
  %agg.tmp21 = alloca %struct.dim3, align 4
  %agg.tmp20.coerce = alloca { i64, i32 }, align 4
  %agg.tmp21.coerce = alloca { i64, i32 }, align 4
  store i32 %ni, i32* %ni.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ni.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32 %nj, i32* %nj.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nj.addr, metadata !1195, metadata !DIExpression()), !dbg !1196
  store i32 %nk, i32* %nk.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nk.addr, metadata !1197, metadata !DIExpression()), !dbg !1198
  store i32 %nl, i32* %nl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nl.addr, metadata !1199, metadata !DIExpression()), !dbg !1200
  store double %alpha, double* %alpha.addr, align 8
  call void @llvm.dbg.declare(metadata double* %alpha.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  store double %beta, double* %beta.addr, align 8
  call void @llvm.dbg.declare(metadata double* %beta.addr, metadata !1203, metadata !DIExpression()), !dbg !1204
  store double* %tmp, double** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata double** %tmp.addr, metadata !1205, metadata !DIExpression()), !dbg !1206
  store double* %A, double** %A.addr, align 8
  call void @llvm.dbg.declare(metadata double** %A.addr, metadata !1207, metadata !DIExpression()), !dbg !1208
  store double* %B, double** %B.addr, align 8
  call void @llvm.dbg.declare(metadata double** %B.addr, metadata !1209, metadata !DIExpression()), !dbg !1210
  store double* %C, double** %C.addr, align 8
  call void @llvm.dbg.declare(metadata double** %C.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  store double* %D, double** %D.addr, align 8
  call void @llvm.dbg.declare(metadata double** %D.addr, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %threadsPerBlock, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i32 256, i32* %threadsPerBlock, align 4, !dbg !1216
  call void @llvm.dbg.declare(metadata %struct.dim3* %block, metadata !1217, metadata !DIExpression()), !dbg !1241
  %0 = load i32, i32* %threadsPerBlock, align 4, !dbg !1242
  %div = udiv i32 %0, 32, !dbg !1243
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %block, i32 %div, i32 32, i32 1), !dbg !1241
  call void @llvm.dbg.declare(metadata %struct.dim3* %grid, metadata !1244, metadata !DIExpression()), !dbg !1246
  %1 = load i32, i32* %ni.addr, align 4, !dbg !1247
  %conv = trunc i32 %1 to i16, !dbg !1247
  %x = getelementptr inbounds %struct.dim3, %struct.dim3* %block, i32 0, i32 0, !dbg !1248
  %2 = load i32, i32* %x, align 4, !dbg !1248
  %conv1 = trunc i32 %2 to i16, !dbg !1249
  %call = call signext i16 @_Z10num_blocksss(i16 signext %conv, i16 signext %conv1), !dbg !1250
  %conv2 = sext i16 %call to i32, !dbg !1250
  %3 = load i32, i32* %nj.addr, align 4, !dbg !1251
  %conv3 = trunc i32 %3 to i16, !dbg !1251
  %y = getelementptr inbounds %struct.dim3, %struct.dim3* %block, i32 0, i32 1, !dbg !1252
  %4 = load i32, i32* %y, align 4, !dbg !1252
  %conv4 = trunc i32 %4 to i16, !dbg !1253
  %call5 = call signext i16 @_Z10num_blocksss(i16 signext %conv3, i16 signext %conv4), !dbg !1254
  %conv6 = sext i16 %call5 to i32, !dbg !1254
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %grid, i32 %conv2, i32 %conv6, i32 1), !dbg !1246
  %5 = bitcast %struct.dim3* %agg.tmp to i8*, !dbg !1255
  %6 = bitcast %struct.dim3* %grid to i8*, !dbg !1255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false), !dbg !1255
  %7 = bitcast %struct.dim3* %agg.tmp7 to i8*, !dbg !1256
  %8 = bitcast %struct.dim3* %block to i8*, !dbg !1256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false), !dbg !1256
  %9 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*, !dbg !1257
  %10 = bitcast %struct.dim3* %agg.tmp to i8*, !dbg !1257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false), !dbg !1257
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0, !dbg !1257
  %12 = load i64, i64* %11, align 4, !dbg !1257
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1, !dbg !1257
  %14 = load i32, i32* %13, align 4, !dbg !1257
  %15 = bitcast { i64, i32 }* %agg.tmp7.coerce to i8*, !dbg !1257
  %16 = bitcast %struct.dim3* %agg.tmp7 to i8*, !dbg !1257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false), !dbg !1257
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp7.coerce, i32 0, i32 0, !dbg !1257
  %18 = load i64, i64* %17, align 4, !dbg !1257
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp7.coerce, i32 0, i32 1, !dbg !1257
  %20 = load i32, i32* %19, align 4, !dbg !1257
  %call8 = call i32 @cudaConfigureCall(i64 %12, i32 %14, i64 %18, i32 %20, i64 0, %struct.CUstream_st* null), !dbg !1257
  %tobool = icmp ne i32 %call8, 0, !dbg !1257
  br i1 %tobool, label %kcall.end, label %kcall.configok, !dbg !1258

kcall.configok:                                   ; preds = %entry
  %21 = load i32, i32* %ni.addr, align 4, !dbg !1259
  %22 = load i32, i32* %nj.addr, align 4, !dbg !1260
  %23 = load i32, i32* %nk.addr, align 4, !dbg !1261
  %24 = load i32, i32* %nl.addr, align 4, !dbg !1262
  %25 = load double, double* %alpha.addr, align 8, !dbg !1263
  %26 = load double, double* %beta.addr, align 8, !dbg !1264
  %27 = load double*, double** %tmp.addr, align 8, !dbg !1265
  %28 = load double*, double** %A.addr, align 8, !dbg !1266
  %29 = load double*, double** %B.addr, align 8, !dbg !1267
  %30 = load double*, double** %C.addr, align 8, !dbg !1268
  %31 = load double*, double** %D.addr, align 8, !dbg !1269
  call void @_Z14kernel_A_mul_BiiiiddPdS_S_S_S_(i32 %21, i32 %22, i32 %23, i32 %24, double %25, double %26, double* %27, double* %28, double* %29, double* %30, double* %31), !dbg !1258
  br label %kcall.end, !dbg !1258

kcall.end:                                        ; preds = %kcall.configok, %entry
  call void @llvm.dbg.declare(metadata %struct.dim3* %grid9, metadata !1270, metadata !DIExpression()), !dbg !1272
  %32 = load i32, i32* %ni.addr, align 4, !dbg !1273
  %conv10 = trunc i32 %32 to i16, !dbg !1273
  %x11 = getelementptr inbounds %struct.dim3, %struct.dim3* %block, i32 0, i32 0, !dbg !1274
  %33 = load i32, i32* %x11, align 4, !dbg !1274
  %conv12 = trunc i32 %33 to i16, !dbg !1275
  %call13 = call signext i16 @_Z10num_blocksss(i16 signext %conv10, i16 signext %conv12), !dbg !1276
  %conv14 = sext i16 %call13 to i32, !dbg !1276
  %34 = load i32, i32* %nl.addr, align 4, !dbg !1277
  %conv15 = trunc i32 %34 to i16, !dbg !1277
  %y16 = getelementptr inbounds %struct.dim3, %struct.dim3* %block, i32 0, i32 1, !dbg !1278
  %35 = load i32, i32* %y16, align 4, !dbg !1278
  %conv17 = trunc i32 %35 to i16, !dbg !1279
  %call18 = call signext i16 @_Z10num_blocksss(i16 signext %conv15, i16 signext %conv17), !dbg !1280
  %conv19 = sext i16 %call18 to i32, !dbg !1280
  call void @_ZN4dim3C2Ejjj(%struct.dim3* %grid9, i32 %conv14, i32 %conv19, i32 1), !dbg !1272
  %36 = bitcast %struct.dim3* %agg.tmp20 to i8*, !dbg !1281
  %37 = bitcast %struct.dim3* %grid9 to i8*, !dbg !1281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false), !dbg !1281
  %38 = bitcast %struct.dim3* %agg.tmp21 to i8*, !dbg !1282
  %39 = bitcast %struct.dim3* %block to i8*, !dbg !1282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false), !dbg !1282
  %40 = bitcast { i64, i32 }* %agg.tmp20.coerce to i8*, !dbg !1283
  %41 = bitcast %struct.dim3* %agg.tmp20 to i8*, !dbg !1283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false), !dbg !1283
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp20.coerce, i32 0, i32 0, !dbg !1283
  %43 = load i64, i64* %42, align 4, !dbg !1283
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp20.coerce, i32 0, i32 1, !dbg !1283
  %45 = load i32, i32* %44, align 4, !dbg !1283
  %46 = bitcast { i64, i32 }* %agg.tmp21.coerce to i8*, !dbg !1283
  %47 = bitcast %struct.dim3* %agg.tmp21 to i8*, !dbg !1283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 12, i1 false), !dbg !1283
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp21.coerce, i32 0, i32 0, !dbg !1283
  %49 = load i64, i64* %48, align 4, !dbg !1283
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp21.coerce, i32 0, i32 1, !dbg !1283
  %51 = load i32, i32* %50, align 4, !dbg !1283
  %call22 = call i32 @cudaConfigureCall(i64 %43, i32 %45, i64 %49, i32 %51, i64 0, %struct.CUstream_st* null), !dbg !1283
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1283
  br i1 %tobool23, label %kcall.end25, label %kcall.configok24, !dbg !1284

kcall.configok24:                                 ; preds = %kcall.end
  %52 = load i32, i32* %ni.addr, align 4, !dbg !1285
  %53 = load i32, i32* %nj.addr, align 4, !dbg !1286
  %54 = load i32, i32* %nk.addr, align 4, !dbg !1287
  %55 = load i32, i32* %nl.addr, align 4, !dbg !1288
  %56 = load double, double* %alpha.addr, align 8, !dbg !1289
  %57 = load double, double* %beta.addr, align 8, !dbg !1290
  %58 = load double*, double** %tmp.addr, align 8, !dbg !1291
  %59 = load double*, double** %A.addr, align 8, !dbg !1292
  %60 = load double*, double** %B.addr, align 8, !dbg !1293
  %61 = load double*, double** %C.addr, align 8, !dbg !1294
  %62 = load double*, double** %D.addr, align 8, !dbg !1295
  call void @_Z23kernel_D_plus_tmp_mul_CiiiiddPdS_S_S_S_(i32 %52, i32 %53, i32 %54, i32 %55, double %56, double %57, double* %58, double* %59, double* %60, double* %61, double* %62), !dbg !1284
  br label %kcall.end25, !dbg !1284

kcall.end25:                                      ; preds = %kcall.configok24, %kcall.end
  ret void, !dbg !1296
}

declare dso_local i32 @cudaFree(i8*) #6

; Function Attrs: noinline uwtable
define internal void @_ZL11print_arrayiiPd(i32 %ni, i32 %nl, double* %D) #0 !dbg !1297 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %D.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ni.addr, metadata !1300, metadata !DIExpression()), !dbg !1301
  store i32 %nl, i32* %nl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nl.addr, metadata !1302, metadata !DIExpression()), !dbg !1303
  store double* %D, double** %D.addr, align 8
  call void @llvm.dbg.declare(metadata double** %D.addr, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1306, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i32 0, i32* %i, align 4, !dbg !1310
  br label %for.cond, !dbg !1312

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1313
  %1 = load i32, i32* %ni.addr, align 4, !dbg !1315
  %cmp = icmp slt i32 %0, %1, !dbg !1316
  br i1 %cmp, label %for.body, label %for.end10, !dbg !1317

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !1318
  br label %for.cond1, !dbg !1320

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !1321
  %3 = load i32, i32* %nl.addr, align 4, !dbg !1323
  %cmp2 = icmp slt i32 %2, %3, !dbg !1324
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1325

for.body3:                                        ; preds = %for.cond1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1326
  %5 = load double*, double** %D.addr, align 8, !dbg !1328
  %6 = load i32, i32* %i, align 4, !dbg !1329
  %7 = load i32, i32* %ni.addr, align 4, !dbg !1330
  %mul = mul nsw i32 %6, %7, !dbg !1331
  %8 = load i32, i32* %j, align 4, !dbg !1332
  %add = add nsw i32 %mul, %8, !dbg !1333
  %idxprom = sext i32 %add to i64, !dbg !1328
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom, !dbg !1328
  %9 = load double, double* %arrayidx, align 8, !dbg !1328
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %9), !dbg !1334
  %10 = load i32, i32* %i, align 4, !dbg !1335
  %11 = load i32, i32* %ni.addr, align 4, !dbg !1337
  %mul4 = mul nsw i32 %10, %11, !dbg !1338
  %12 = load i32, i32* %j, align 4, !dbg !1339
  %add5 = add nsw i32 %mul4, %12, !dbg !1340
  %rem = srem i32 %add5, 20, !dbg !1341
  %cmp6 = icmp eq i32 %rem, 0, !dbg !1342
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1343

if.then:                                          ; preds = %for.body3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1344
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !1345
  br label %if.end, !dbg !1345

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc, !dbg !1346

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %j, align 4, !dbg !1347
  %inc = add nsw i32 %14, 1, !dbg !1347
  store i32 %inc, i32* %j, align 4, !dbg !1347
  br label %for.cond1, !dbg !1348, !llvm.loop !1349

for.end:                                          ; preds = %for.cond1
  br label %for.inc8, !dbg !1350

for.inc8:                                         ; preds = %for.end
  %15 = load i32, i32* %i, align 4, !dbg !1351
  %inc9 = add nsw i32 %15, 1, !dbg !1351
  store i32 %inc9, i32* %i, align 4, !dbg !1351
  br label %for.cond, !dbg !1352, !llvm.loop !1353

for.end10:                                        ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1355
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !1356
  ret void, !dbg !1357
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* %this, i32 %vx, i32 %vy, i32 %vz) unnamed_addr #2 comdat align 2 !dbg !1358 {
entry:
  %this.addr = alloca %struct.dim3*, align 8
  %vx.addr = alloca i32, align 4
  %vy.addr = alloca i32, align 4
  %vz.addr = alloca i32, align 4
  store %struct.dim3* %this, %struct.dim3** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dim3** %this.addr, metadata !1359, metadata !DIExpression()), !dbg !1361
  store i32 %vx, i32* %vx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vx.addr, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i32 %vy, i32* %vy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vy.addr, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i32 %vz, i32* %vz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vz.addr, metadata !1366, metadata !DIExpression()), !dbg !1367
  %this1 = load %struct.dim3*, %struct.dim3** %this.addr, align 8
  %x = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 0, !dbg !1368
  %0 = load i32, i32* %vx.addr, align 4, !dbg !1369
  store i32 %0, i32* %x, align 4, !dbg !1368
  %y = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 1, !dbg !1370
  %1 = load i32, i32* %vy.addr, align 4, !dbg !1371
  store i32 %1, i32* %y, align 4, !dbg !1370
  %z = getelementptr inbounds %struct.dim3, %struct.dim3* %this1, i32 0, i32 2, !dbg !1372
  %2 = load i32, i32* %vz.addr, align 4, !dbg !1373
  store i32 %2, i32* %z, align 4, !dbg !1372
  ret void, !dbg !1374
}

declare dso_local i32 @cudaConfigureCall(i64, i32, i64, i32, i64, %struct.CUstream_st*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

declare dso_local i32 @cudaMalloc(i8**, i64) #6

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}
!llvm.ident = !{!691}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 7, i32 0]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !5, producer: "clang version 9.0.0 (git@github.com:SusanTan/llvm-project.git a1efa594106d738d0b74c9e4e2b9b779eb8b7d25)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, retainedTypes: !98, imports: !103, nameTableKind: None)
!5 = !DIFile(filename: "2mm.cu", directory: "/scratch/xcellent/shudson/xstack-benchmark/polybench-cuda/2mm")
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
!98 = !{!99, !101, !100, !102}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!103 = !{!104, !111, !116, !118, !120, !122, !124, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !160, !162, !164, !166, !170, !175, !177, !179, !184, !188, !190, !192, !194, !196, !198, !200, !202, !204, !209, !213, !215, !220, !224, !226, !228, !230, !232, !234, !238, !240, !242, !247, !254, !258, !260, !262, !264, !266, !270, !272, !274, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !300, !306, !308, !310, !314, !316, !318, !320, !322, !324, !326, !328, !332, !336, !338, !340, !344, !346, !348, !350, !352, !354, !356, !360, !366, !370, !375, !377, !381, !385, !398, !402, !406, !410, !414, !419, !421, !425, !429, !433, !441, !445, !449, !453, !457, !461, !467, !471, !475, !477, !485, !489, !496, !498, !500, !504, !508, !512, !517, !521, !526, !527, !528, !529, !531, !532, !533, !534, !535, !536, !537, !539, !540, !541, !542, !543, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !575, !577, !579, !581, !583, !585, !587, !589, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686}
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !106, file: !107, line: 223)
!105 = !DINamespace(name: "std", scope: null)
!106 = !DISubprogram(name: "abs", linkageName: "_ZL3absi", scope: !107, file: !107, line: 53, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!107 = !DIFile(filename: "/home/shudson/xcellent/llvm-install-debug/lib/clang/9.0.0/include/__clang_cuda_math_forward_declares.h", directory: "")
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !110}
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !112, file: !107, line: 224)
!112 = !DISubprogram(name: "acos", linkageName: "_ZL4acosf", scope: !107, file: !107, line: 55, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !115}
!115 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !117, file: !107, line: 225)
!117 = !DISubprogram(name: "acosh", linkageName: "_ZL5acoshf", scope: !107, file: !107, line: 57, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !119, file: !107, line: 226)
!119 = !DISubprogram(name: "asin", linkageName: "_ZL4asinf", scope: !107, file: !107, line: 59, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !121, file: !107, line: 227)
!121 = !DISubprogram(name: "asinh", linkageName: "_ZL5asinhf", scope: !107, file: !107, line: 61, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !123, file: !107, line: 228)
!123 = !DISubprogram(name: "atan", linkageName: "_ZL4atanf", scope: !107, file: !107, line: 65, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !125, file: !107, line: 229)
!125 = !DISubprogram(name: "atan2", linkageName: "_ZL5atan2ff", scope: !107, file: !107, line: 63, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!126 = !DISubroutineType(types: !127)
!127 = !{!115, !115, !115}
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !129, file: !107, line: 230)
!129 = !DISubprogram(name: "atanh", linkageName: "_ZL5atanhf", scope: !107, file: !107, line: 67, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !131, file: !107, line: 231)
!131 = !DISubprogram(name: "cbrt", linkageName: "_ZL4cbrtf", scope: !107, file: !107, line: 69, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !133, file: !107, line: 232)
!133 = !DISubprogram(name: "ceil", linkageName: "_ZL4ceilf", scope: !107, file: !107, line: 71, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !135, file: !107, line: 233)
!135 = !DISubprogram(name: "copysign", linkageName: "_ZL8copysignff", scope: !107, file: !107, line: 73, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !137, file: !107, line: 234)
!137 = !DISubprogram(name: "cos", linkageName: "_ZL3cosf", scope: !107, file: !107, line: 75, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !139, file: !107, line: 235)
!139 = !DISubprogram(name: "cosh", linkageName: "_ZL4coshf", scope: !107, file: !107, line: 77, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !141, file: !107, line: 236)
!141 = !DISubprogram(name: "erf", linkageName: "_ZL3erff", scope: !107, file: !107, line: 81, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !143, file: !107, line: 237)
!143 = !DISubprogram(name: "erfc", linkageName: "_ZL4erfcf", scope: !107, file: !107, line: 79, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !145, file: !107, line: 238)
!145 = !DISubprogram(name: "exp", linkageName: "_ZL3expf", scope: !107, file: !107, line: 85, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !147, file: !107, line: 239)
!147 = !DISubprogram(name: "exp2", linkageName: "_ZL4exp2f", scope: !107, file: !107, line: 83, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !149, file: !107, line: 240)
!149 = !DISubprogram(name: "expm1", linkageName: "_ZL5expm1f", scope: !107, file: !107, line: 87, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !151, file: !107, line: 241)
!151 = !DISubprogram(name: "fabs", linkageName: "_ZL4fabsf", scope: !107, file: !107, line: 89, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !153, file: !107, line: 242)
!153 = !DISubprogram(name: "fdim", linkageName: "_ZL4fdimff", scope: !107, file: !107, line: 91, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !155, file: !107, line: 243)
!155 = !DISubprogram(name: "floor", linkageName: "_ZL5floorf", scope: !107, file: !107, line: 93, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !157, file: !107, line: 244)
!157 = !DISubprogram(name: "fma", linkageName: "_ZL3fmafff", scope: !107, file: !107, line: 95, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!158 = !DISubroutineType(types: !159)
!159 = !{!115, !115, !115, !115}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !161, file: !107, line: 245)
!161 = !DISubprogram(name: "fmax", linkageName: "_ZL4fmaxff", scope: !107, file: !107, line: 97, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !163, file: !107, line: 246)
!163 = !DISubprogram(name: "fmin", linkageName: "_ZL4fminff", scope: !107, file: !107, line: 99, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !165, file: !107, line: 247)
!165 = !DISubprogram(name: "fmod", linkageName: "_ZL4fmodff", scope: !107, file: !107, line: 101, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !167, file: !107, line: 248)
!167 = !DISubprogram(name: "fpclassify", linkageName: "_ZL10fpclassifyf", scope: !107, file: !107, line: 103, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!168 = !DISubroutineType(types: !169)
!169 = !{!110, !115}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !171, file: !107, line: 249)
!171 = !DISubprogram(name: "frexp", linkageName: "_ZL5frexpfPi", scope: !107, file: !107, line: 105, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!172 = !DISubroutineType(types: !173)
!173 = !{!115, !115, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !176, file: !107, line: 250)
!176 = !DISubprogram(name: "hypot", linkageName: "_ZL5hypotff", scope: !107, file: !107, line: 107, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !178, file: !107, line: 251)
!178 = !DISubprogram(name: "ilogb", linkageName: "_ZL5ilogbf", scope: !107, file: !107, line: 109, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !180, file: !107, line: 252)
!180 = !DISubprogram(name: "isfinite", linkageName: "_ZL8isfinitef", scope: !107, file: !107, line: 114, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !115}
!183 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !185, file: !107, line: 253)
!185 = !DISubprogram(name: "isgreater", linkageName: "_ZL9isgreaterff", scope: !107, file: !107, line: 118, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!186 = !DISubroutineType(types: !187)
!187 = !{!183, !115, !115}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !189, file: !107, line: 254)
!189 = !DISubprogram(name: "isgreaterequal", linkageName: "_ZL14isgreaterequalff", scope: !107, file: !107, line: 117, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !191, file: !107, line: 255)
!191 = !DISubprogram(name: "isinf", linkageName: "_ZL5isinff", scope: !107, file: !107, line: 123, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !193, file: !107, line: 256)
!193 = !DISubprogram(name: "isless", linkageName: "_ZL6islessff", scope: !107, file: !107, line: 127, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !195, file: !107, line: 257)
!195 = !DISubprogram(name: "islessequal", linkageName: "_ZL11islessequalff", scope: !107, file: !107, line: 126, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !197, file: !107, line: 258)
!197 = !DISubprogram(name: "islessgreater", linkageName: "_ZL13islessgreaterff", scope: !107, file: !107, line: 129, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !199, file: !107, line: 259)
!199 = !DISubprogram(name: "isnan", linkageName: "_ZL5isnanf", scope: !107, file: !107, line: 134, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !201, file: !107, line: 260)
!201 = !DISubprogram(name: "isnormal", linkageName: "_ZL8isnormalf", scope: !107, file: !107, line: 136, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !203, file: !107, line: 261)
!203 = !DISubprogram(name: "isunordered", linkageName: "_ZL11isunorderedff", scope: !107, file: !107, line: 138, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !205, file: !107, line: 262)
!205 = !DISubprogram(name: "labs", linkageName: "_ZL4labsl", scope: !107, file: !107, line: 139, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !208}
!208 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !210, file: !107, line: 263)
!210 = !DISubprogram(name: "ldexp", linkageName: "_ZL5ldexpfi", scope: !107, file: !107, line: 141, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!211 = !DISubroutineType(types: !212)
!212 = !{!115, !115, !110}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !214, file: !107, line: 264)
!214 = !DISubprogram(name: "lgamma", linkageName: "_ZL6lgammaf", scope: !107, file: !107, line: 143, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !216, file: !107, line: 265)
!216 = !DISubprogram(name: "llabs", linkageName: "_ZL5llabsx", scope: !107, file: !107, line: 144, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !219}
!219 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !221, file: !107, line: 266)
!221 = !DISubprogram(name: "llrint", linkageName: "_ZL6llrintf", scope: !107, file: !107, line: 146, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!222 = !DISubroutineType(types: !223)
!223 = !{!219, !115}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !225, file: !107, line: 267)
!225 = !DISubprogram(name: "log", linkageName: "_ZL3logf", scope: !107, file: !107, line: 159, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !227, file: !107, line: 268)
!227 = !DISubprogram(name: "log10", linkageName: "_ZL5log10f", scope: !107, file: !107, line: 148, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !229, file: !107, line: 269)
!229 = !DISubprogram(name: "log1p", linkageName: "_ZL5log1pf", scope: !107, file: !107, line: 150, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !231, file: !107, line: 270)
!231 = !DISubprogram(name: "log2", linkageName: "_ZL4log2f", scope: !107, file: !107, line: 152, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !233, file: !107, line: 271)
!233 = !DISubprogram(name: "logb", linkageName: "_ZL4logbf", scope: !107, file: !107, line: 154, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !235, file: !107, line: 272)
!235 = !DISubprogram(name: "lrint", linkageName: "_ZL5lrintf", scope: !107, file: !107, line: 161, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!236 = !DISubroutineType(types: !237)
!237 = !{!208, !115}
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !239, file: !107, line: 273)
!239 = !DISubprogram(name: "lround", linkageName: "_ZL6lroundf", scope: !107, file: !107, line: 163, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !241, file: !107, line: 274)
!241 = !DISubprogram(name: "llround", linkageName: "_ZL7llroundf", scope: !107, file: !107, line: 164, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !243, file: !107, line: 275)
!243 = !DISubprogram(name: "modf", linkageName: "_ZL4modffPf", scope: !107, file: !107, line: 166, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!244 = !DISubroutineType(types: !245)
!245 = !{!115, !115, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !248, file: !107, line: 276)
!248 = !DISubprogram(name: "nan", linkageName: "_ZL3nanPKc", scope: !107, file: !107, line: 167, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!249 = !DISubroutineType(types: !250)
!250 = !{!100, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !255, file: !107, line: 277)
!255 = !DISubprogram(name: "nanf", linkageName: "_ZL4nanfPKc", scope: !107, file: !107, line: 168, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!256 = !DISubroutineType(types: !257)
!257 = !{!115, !251}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !259, file: !107, line: 278)
!259 = !DISubprogram(name: "nearbyint", linkageName: "_ZL9nearbyintf", scope: !107, file: !107, line: 170, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !261, file: !107, line: 279)
!261 = !DISubprogram(name: "nextafter", linkageName: "_ZL9nextafterff", scope: !107, file: !107, line: 172, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !263, file: !107, line: 280)
!263 = !DISubprogram(name: "pow", linkageName: "_ZL3powfi", scope: !107, file: !107, line: 176, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !265, file: !107, line: 281)
!265 = !DISubprogram(name: "remainder", linkageName: "_ZL9remainderff", scope: !107, file: !107, line: 178, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !267, file: !107, line: 282)
!267 = !DISubprogram(name: "remquo", linkageName: "_ZL6remquoffPi", scope: !107, file: !107, line: 180, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!268 = !DISubroutineType(types: !269)
!269 = !{!115, !115, !115, !174}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !271, file: !107, line: 283)
!271 = !DISubprogram(name: "rint", linkageName: "_ZL4rintf", scope: !107, file: !107, line: 182, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !273, file: !107, line: 284)
!273 = !DISubprogram(name: "round", linkageName: "_ZL5roundf", scope: !107, file: !107, line: 184, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !275, file: !107, line: 285)
!275 = !DISubprogram(name: "scalbln", linkageName: "_ZL7scalblnfl", scope: !107, file: !107, line: 186, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!276 = !DISubroutineType(types: !277)
!277 = !{!115, !115, !208}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !279, file: !107, line: 286)
!279 = !DISubprogram(name: "scalbn", linkageName: "_ZL6scalbnfi", scope: !107, file: !107, line: 188, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !281, file: !107, line: 287)
!281 = !DISubprogram(name: "signbit", linkageName: "_ZL7signbitf", scope: !107, file: !107, line: 190, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !283, file: !107, line: 288)
!283 = !DISubprogram(name: "sin", linkageName: "_ZL3sinf", scope: !107, file: !107, line: 192, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !285, file: !107, line: 289)
!285 = !DISubprogram(name: "sinh", linkageName: "_ZL4sinhf", scope: !107, file: !107, line: 194, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !287, file: !107, line: 290)
!287 = !DISubprogram(name: "sqrt", linkageName: "_ZL4sqrtf", scope: !107, file: !107, line: 196, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !289, file: !107, line: 291)
!289 = !DISubprogram(name: "tan", linkageName: "_ZL3tanf", scope: !107, file: !107, line: 198, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !291, file: !107, line: 292)
!291 = !DISubprogram(name: "tanh", linkageName: "_ZL4tanhf", scope: !107, file: !107, line: 200, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !293, file: !107, line: 293)
!293 = !DISubprogram(name: "tgamma", linkageName: "_ZL6tgammaf", scope: !107, file: !107, line: 202, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !295, file: !107, line: 294)
!295 = !DISubprogram(name: "trunc", linkageName: "_ZL5truncf", scope: !107, file: !107, line: 204, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !297, file: !299, line: 52)
!297 = !DISubprogram(name: "abs", scope: !298, file: !298, line: 848, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!299 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/std_abs.h", directory: "")
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !301, file: !305, line: 83)
!301 = !DISubprogram(name: "acos", scope: !302, file: !302, line: 53, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!303 = !DISubroutineType(types: !304)
!304 = !{!100, !100}
!305 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cmath", directory: "")
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !307, file: !305, line: 102)
!307 = !DISubprogram(name: "asin", scope: !302, file: !302, line: 55, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !309, file: !305, line: 121)
!309 = !DISubprogram(name: "atan", scope: !302, file: !302, line: 57, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !311, file: !305, line: 140)
!311 = !DISubprogram(name: "atan2", scope: !302, file: !302, line: 59, type: !312, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!100, !100, !100}
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !315, file: !305, line: 161)
!315 = !DISubprogram(name: "ceil", scope: !302, file: !302, line: 159, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !317, file: !305, line: 180)
!317 = !DISubprogram(name: "cos", scope: !302, file: !302, line: 62, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !319, file: !305, line: 199)
!319 = !DISubprogram(name: "cosh", scope: !302, file: !302, line: 71, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !321, file: !305, line: 218)
!321 = !DISubprogram(name: "exp", scope: !302, file: !302, line: 95, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !323, file: !305, line: 237)
!323 = !DISubprogram(name: "fabs", scope: !302, file: !302, line: 162, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !325, file: !305, line: 256)
!325 = !DISubprogram(name: "floor", scope: !302, file: !302, line: 165, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !327, file: !305, line: 275)
!327 = !DISubprogram(name: "fmod", scope: !302, file: !302, line: 168, type: !312, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !329, file: !305, line: 296)
!329 = !DISubprogram(name: "frexp", scope: !302, file: !302, line: 98, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!100, !100, !174}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !333, file: !305, line: 315)
!333 = !DISubprogram(name: "ldexp", scope: !302, file: !302, line: 101, type: !334, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!100, !100, !110}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !337, file: !305, line: 334)
!337 = !DISubprogram(name: "log", scope: !302, file: !302, line: 104, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !339, file: !305, line: 353)
!339 = !DISubprogram(name: "log10", scope: !302, file: !302, line: 107, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !341, file: !305, line: 372)
!341 = !DISubprogram(name: "modf", scope: !302, file: !302, line: 110, type: !342, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!100, !100, !99}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !345, file: !305, line: 384)
!345 = !DISubprogram(name: "pow", scope: !302, file: !302, line: 140, type: !312, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !347, file: !305, line: 421)
!347 = !DISubprogram(name: "sin", scope: !302, file: !302, line: 64, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !349, file: !305, line: 440)
!349 = !DISubprogram(name: "sinh", scope: !302, file: !302, line: 73, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !351, file: !305, line: 459)
!351 = !DISubprogram(name: "sqrt", scope: !302, file: !302, line: 143, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !353, file: !305, line: 478)
!353 = !DISubprogram(name: "tan", scope: !302, file: !302, line: 66, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !355, file: !305, line: 497)
!355 = !DISubprogram(name: "tanh", scope: !302, file: !302, line: 75, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !357, file: !359, line: 127)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !298, line: 63, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 59, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!359 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstdlib", directory: "")
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !361, file: !359, line: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !298, line: 71, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !363, identifier: "_ZTS6ldiv_t")
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !362, file: !298, line: 69, baseType: !208, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !362, file: !298, line: 70, baseType: !208, size: 64, offset: 64)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !367, file: !359, line: 130)
!367 = !DISubprogram(name: "abort", scope: !298, file: !298, line: 598, type: !368, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{null}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !371, file: !359, line: 134)
!371 = !DISubprogram(name: "atexit", scope: !298, file: !298, line: 602, type: !372, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!110, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !376, file: !359, line: 140)
!376 = !DISubprogram(name: "atof", scope: !298, file: !298, line: 102, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !378, file: !359, line: 141)
!378 = !DISubprogram(name: "atoi", scope: !298, file: !298, line: 105, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!110, !251}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !382, file: !359, line: 142)
!382 = !DISubprogram(name: "atol", scope: !298, file: !298, line: 108, type: !383, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{!208, !251}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !386, file: !359, line: 143)
!386 = !DISubprogram(name: "bsearch", scope: !298, file: !298, line: 828, type: !387, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{!101, !389, !389, !391, !391, !394}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !392, line: 46, baseType: !393)
!392 = !DIFile(filename: "/home/shudson/xcellent/llvm-install-debug/lib/clang/9.0.0/include/stddef.h", directory: "")
!393 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !298, line: 816, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!110, !389, !389}
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !399, file: !359, line: 144)
!399 = !DISubprogram(name: "calloc", scope: !298, file: !298, line: 543, type: !400, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DISubroutineType(types: !401)
!401 = !{!101, !391, !391}
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !403, file: !359, line: 145)
!403 = !DISubprogram(name: "div", scope: !298, file: !298, line: 860, type: !404, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{!357, !110, !110}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !407, file: !359, line: 146)
!407 = !DISubprogram(name: "exit", scope: !298, file: !298, line: 624, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !110}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !411, file: !359, line: 147)
!411 = !DISubprogram(name: "free", scope: !298, file: !298, line: 555, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !101}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !415, file: !359, line: 148)
!415 = !DISubprogram(name: "getenv", scope: !298, file: !298, line: 641, type: !416, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !251}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !420, file: !359, line: 149)
!420 = !DISubprogram(name: "labs", scope: !298, file: !298, line: 849, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !422, file: !359, line: 150)
!422 = !DISubprogram(name: "ldiv", scope: !298, file: !298, line: 862, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!361, !208, !208}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !426, file: !359, line: 151)
!426 = !DISubprogram(name: "malloc", scope: !298, file: !298, line: 540, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!101, !391}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !430, file: !359, line: 153)
!430 = !DISubprogram(name: "mblen", scope: !298, file: !298, line: 930, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!110, !251, !391}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !434, file: !359, line: 154)
!434 = !DISubprogram(name: "mbstowcs", scope: !298, file: !298, line: 941, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!391, !437, !440, !391}
!437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !442, file: !359, line: 155)
!442 = !DISubprogram(name: "mbtowc", scope: !298, file: !298, line: 933, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!110, !437, !440, !391}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !446, file: !359, line: 157)
!446 = !DISubprogram(name: "qsort", scope: !298, file: !298, line: 838, type: !447, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !101, !391, !391, !394}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !450, file: !359, line: 163)
!450 = !DISubprogram(name: "rand", scope: !298, file: !298, line: 454, type: !451, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{!110}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !454, file: !359, line: 164)
!454 = !DISubprogram(name: "realloc", scope: !298, file: !298, line: 551, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!101, !101, !391}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !458, file: !359, line: 165)
!458 = !DISubprogram(name: "srand", scope: !298, file: !298, line: 456, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !9}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !462, file: !359, line: 166)
!462 = !DISubprogram(name: "strtod", scope: !298, file: !298, line: 118, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!100, !440, !465}
!465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !468, file: !359, line: 167)
!468 = !DISubprogram(name: "strtol", scope: !298, file: !298, line: 177, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!208, !440, !465, !110}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !472, file: !359, line: 168)
!472 = !DISubprogram(name: "strtoul", scope: !298, file: !298, line: 181, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!393, !440, !465, !110}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !476, file: !359, line: 169)
!476 = !DISubprogram(name: "system", scope: !298, file: !298, line: 791, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !478, file: !359, line: 171)
!478 = !DISubprogram(name: "wcstombs", scope: !298, file: !298, line: 945, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!391, !481, !482, !391}
!481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !486, file: !359, line: 172)
!486 = !DISubprogram(name: "wctomb", scope: !298, file: !298, line: 937, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!110, !418, !439}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !491, file: !359, line: 200)
!490 = !DINamespace(name: "__gnu_cxx", scope: null)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !298, line: 81, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !493, identifier: "_ZTS7lldiv_t")
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !492, file: !298, line: 79, baseType: !219, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !492, file: !298, line: 80, baseType: !219, size: 64, offset: 64)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !497, file: !359, line: 206)
!497 = !DISubprogram(name: "_Exit", scope: !298, file: !298, line: 636, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !499, file: !359, line: 210)
!499 = !DISubprogram(name: "llabs", scope: !298, file: !298, line: 852, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !501, file: !359, line: 216)
!501 = !DISubprogram(name: "lldiv", scope: !298, file: !298, line: 866, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!491, !219, !219}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !505, file: !359, line: 227)
!505 = !DISubprogram(name: "atoll", scope: !298, file: !298, line: 113, type: !506, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!219, !251}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !509, file: !359, line: 228)
!509 = !DISubprogram(name: "strtoll", scope: !298, file: !298, line: 201, type: !510, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!219, !440, !465, !110}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !513, file: !359, line: 229)
!513 = !DISubprogram(name: "strtoull", scope: !298, file: !298, line: 206, type: !514, flags: DIFlagPrototyped, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !440, !465, !110}
!516 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !518, file: !359, line: 231)
!518 = !DISubprogram(name: "strtof", scope: !298, file: !298, line: 124, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!115, !440, !465}
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !490, entity: !522, file: !359, line: 232)
!522 = !DISubprogram(name: "strtold", scope: !298, file: !298, line: 127, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !440, !465}
!525 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !491, file: !359, line: 240)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !497, file: !359, line: 242)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !499, file: !359, line: 244)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !530, file: !359, line: 245)
!530 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !490, file: !359, line: 213, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !501, file: !359, line: 246)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !505, file: !359, line: 248)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !518, file: !359, line: 249)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !509, file: !359, line: 250)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !513, file: !359, line: 251)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !522, file: !359, line: 252)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !367, file: !538, line: 38)
!538 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/stdlib.h", directory: "")
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !371, file: !538, line: 39)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !407, file: !538, line: 40)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !357, file: !538, line: 51)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !361, file: !538, line: 52)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !544, file: !538, line: 54)
!544 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !105, file: !299, line: 79, type: !545, flags: DIFlagPrototyped, spFlags: 0)
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
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !572, file: !574, line: 414)
!572 = !DISubprogram(name: "acosf", linkageName: "_ZL5acosff", scope: !573, file: !573, line: 1126, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!573 = !DIFile(filename: "/usr/local/cuda-7.0/include/math_functions.hpp", directory: "")
!574 = !DIFile(filename: "/home/shudson/xcellent/llvm-install-debug/lib/clang/9.0.0/include/__clang_cuda_cmath.h", directory: "")
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !576, file: !574, line: 415)
!576 = !DISubprogram(name: "acoshf", linkageName: "_ZL6acoshff", scope: !573, file: !573, line: 1154, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !578, file: !574, line: 416)
!578 = !DISubprogram(name: "asinf", linkageName: "_ZL5asinff", scope: !573, file: !573, line: 1121, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !580, file: !574, line: 417)
!580 = !DISubprogram(name: "asinhf", linkageName: "_ZL6asinhff", scope: !573, file: !573, line: 1159, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !582, file: !574, line: 418)
!582 = !DISubprogram(name: "atan2f", linkageName: "_ZL6atan2fff", scope: !573, file: !573, line: 1111, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !584, file: !574, line: 419)
!584 = !DISubprogram(name: "atanf", linkageName: "_ZL5atanff", scope: !573, file: !573, line: 1116, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !586, file: !574, line: 420)
!586 = !DISubprogram(name: "atanhf", linkageName: "_ZL6atanhff", scope: !573, file: !573, line: 1164, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !588, file: !574, line: 421)
!588 = !DISubprogram(name: "cbrtf", linkageName: "_ZL5cbrtff", scope: !573, file: !573, line: 1199, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !590, file: !574, line: 422)
!590 = !DISubprogram(name: "ceilf", linkageName: "_ZL5ceilff", scope: !591, file: !591, line: 647, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!591 = !DIFile(filename: "/usr/local/cuda-7.0/include/device_functions.hpp", directory: "")
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !593, file: !574, line: 423)
!593 = !DISubprogram(name: "copysignf", linkageName: "_ZL9copysignfff", scope: !573, file: !573, line: 973, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !595, file: !574, line: 424)
!595 = !DISubprogram(name: "cosf", linkageName: "_ZL4cosff", scope: !573, file: !573, line: 1027, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !597, file: !574, line: 425)
!597 = !DISubprogram(name: "coshf", linkageName: "_ZL5coshff", scope: !573, file: !573, line: 1096, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !599, file: !574, line: 426)
!599 = !DISubprogram(name: "erfcf", linkageName: "_ZL5erfcff", scope: !573, file: !573, line: 1259, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !601, file: !574, line: 427)
!601 = !DISubprogram(name: "erff", linkageName: "_ZL4erfff", scope: !573, file: !573, line: 1249, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !603, file: !574, line: 428)
!603 = !DISubprogram(name: "exp2f", linkageName: "_ZL5exp2ff", scope: !591, file: !591, line: 637, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !605, file: !574, line: 429)
!605 = !DISubprogram(name: "expf", linkageName: "_ZL4expff", scope: !573, file: !573, line: 1078, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !607, file: !574, line: 430)
!607 = !DISubprogram(name: "expm1f", linkageName: "_ZL6expm1ff", scope: !573, file: !573, line: 1169, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !609, file: !574, line: 431)
!609 = !DISubprogram(name: "fabsf", linkageName: "_ZL5fabsff", scope: !591, file: !591, line: 582, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !611, file: !574, line: 432)
!611 = !DISubprogram(name: "fdimf", linkageName: "_ZL5fdimfff", scope: !573, file: !573, line: 1385, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !613, file: !574, line: 433)
!613 = !DISubprogram(name: "floorf", linkageName: "_ZL6floorff", scope: !591, file: !591, line: 572, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !615, file: !574, line: 434)
!615 = !DISubprogram(name: "fmaf", linkageName: "_ZL4fmaffff", scope: !573, file: !573, line: 1337, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !617, file: !574, line: 435)
!617 = !DISubprogram(name: "fmaxf", linkageName: "_ZL5fmaxfff", scope: !591, file: !591, line: 602, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !619, file: !574, line: 436)
!619 = !DISubprogram(name: "fminf", linkageName: "_ZL5fminfff", scope: !591, file: !591, line: 597, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !621, file: !574, line: 437)
!621 = !DISubprogram(name: "fmodf", linkageName: "_ZL5fmodfff", scope: !573, file: !573, line: 1322, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !623, file: !574, line: 438)
!623 = !DISubprogram(name: "frexpf", linkageName: "_ZL6frexpffPi", scope: !573, file: !573, line: 1312, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !625, file: !574, line: 439)
!625 = !DISubprogram(name: "hypotf", linkageName: "_ZL6hypotfff", scope: !573, file: !573, line: 1174, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !627, file: !574, line: 440)
!627 = !DISubprogram(name: "ilogbf", linkageName: "_ZL6ilogbff", scope: !573, file: !573, line: 1390, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !629, file: !574, line: 441)
!629 = !DISubprogram(name: "ldexpf", linkageName: "_ZL6ldexpffi", scope: !573, file: !573, line: 1289, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !631, file: !574, line: 442)
!631 = !DISubprogram(name: "lgammaf", linkageName: "_ZL7lgammaff", scope: !573, file: !573, line: 1284, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !633, file: !574, line: 443)
!633 = !DISubprogram(name: "llrintf", linkageName: "_ZL7llrintff", scope: !573, file: !573, line: 933, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !635, file: !574, line: 444)
!635 = !DISubprogram(name: "llroundf", linkageName: "_ZL8llroundff", scope: !573, file: !573, line: 1371, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !637, file: !574, line: 445)
!637 = !DISubprogram(name: "log10f", linkageName: "_ZL6log10ff", scope: !573, file: !573, line: 1140, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !639, file: !574, line: 446)
!639 = !DISubprogram(name: "log1pf", linkageName: "_ZL6log1pff", scope: !573, file: !573, line: 1149, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !641, file: !574, line: 447)
!641 = !DISubprogram(name: "log2f", linkageName: "_ZL5log2ff", scope: !573, file: !573, line: 1069, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !643, file: !574, line: 448)
!643 = !DISubprogram(name: "logbf", linkageName: "_ZL5logbff", scope: !573, file: !573, line: 1395, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !645, file: !574, line: 449)
!645 = !DISubprogram(name: "logf", linkageName: "_ZL4logff", scope: !573, file: !573, line: 1131, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !647, file: !574, line: 450)
!647 = !DISubprogram(name: "lrintf", linkageName: "_ZL6lrintff", scope: !573, file: !573, line: 924, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !649, file: !574, line: 451)
!649 = !DISubprogram(name: "lroundf", linkageName: "_ZL7lroundff", scope: !573, file: !573, line: 1376, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !651, file: !574, line: 452)
!651 = !DISubprogram(name: "modff", linkageName: "_ZL5modfffPf", scope: !573, file: !573, line: 1317, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !653, file: !574, line: 453)
!653 = !DISubprogram(name: "nearbyintf", linkageName: "_ZL10nearbyintff", scope: !573, file: !573, line: 938, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !655, file: !574, line: 454)
!655 = !DISubprogram(name: "nextafterf", linkageName: "_ZL10nextafterfff", scope: !573, file: !573, line: 1002, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !657, file: !574, line: 455)
!657 = !DISubprogram(name: "powf", linkageName: "_ZL4powfff", scope: !573, file: !573, line: 1352, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !659, file: !574, line: 456)
!659 = !DISubprogram(name: "remainderf", linkageName: "_ZL10remainderfff", scope: !573, file: !573, line: 1327, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !661, file: !574, line: 457)
!661 = !DISubprogram(name: "remquof", linkageName: "_ZL7remquofffPi", scope: !573, file: !573, line: 1332, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !663, file: !574, line: 458)
!663 = !DISubprogram(name: "rintf", linkageName: "_ZL5rintff", scope: !573, file: !573, line: 919, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !665, file: !574, line: 459)
!665 = !DISubprogram(name: "roundf", linkageName: "_ZL6roundff", scope: !573, file: !573, line: 1366, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !667, file: !574, line: 462)
!667 = !DISubprogram(name: "scalblnf", linkageName: "_ZL8scalblnffl", scope: !573, file: !573, line: 1299, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !669, file: !574, line: 464)
!669 = !DISubprogram(name: "scalbnf", linkageName: "_ZL7scalbnffi", scope: !573, file: !573, line: 1294, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !671, file: !574, line: 465)
!671 = !DISubprogram(name: "sinf", linkageName: "_ZL4sinff", scope: !573, file: !573, line: 1018, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !673, file: !574, line: 466)
!673 = !DISubprogram(name: "sinhf", linkageName: "_ZL5sinhff", scope: !573, file: !573, line: 1101, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !675, file: !574, line: 467)
!675 = !DISubprogram(name: "sqrtf", linkageName: "_ZL5sqrtff", scope: !591, file: !591, line: 887, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !677, file: !574, line: 468)
!677 = !DISubprogram(name: "tanf", linkageName: "_ZL4tanff", scope: !573, file: !573, line: 1060, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !679, file: !574, line: 469)
!679 = !DISubprogram(name: "tanhf", linkageName: "_ZL5tanhff", scope: !573, file: !573, line: 1106, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !681, file: !574, line: 470)
!681 = !DISubprogram(name: "tgammaf", linkageName: "_ZL7tgammaff", scope: !573, file: !573, line: 1361, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !105, entity: !683, file: !574, line: 471)
!683 = !DISubprogram(name: "truncf", linkageName: "_ZL6truncff", scope: !591, file: !591, line: 642, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !544, file: !685, line: 38)
!685 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/math.h", directory: "")
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !687, file: !685, line: 54)
!687 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !105, file: !305, line: 380, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!525, !525, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!691 = !{!"clang version 9.0.0 (git@github.com:SusanTan/llvm-project.git a1efa594106d738d0b74c9e4e2b9b779eb8b7d25)"}
!692 = distinct !DISubprogram(name: "kernel_A_mul_B", linkageName: "_Z14kernel_A_mul_BiiiiddPdS_S_S_S_", scope: !5, file: !5, line: 15, type: !693, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !110, !110, !110, !110, !100, !100, !99, !99, !99, !99, !99}
!695 = !{}
!696 = !DILocalVariable(name: "ni", arg: 1, scope: !692, file: !5, line: 15, type: !110)
!697 = !DILocation(line: 15, column: 36, scope: !692)
!698 = !DILocalVariable(name: "nj", arg: 2, scope: !692, file: !5, line: 15, type: !110)
!699 = !DILocation(line: 15, column: 44, scope: !692)
!700 = !DILocalVariable(name: "nk", arg: 3, scope: !692, file: !5, line: 15, type: !110)
!701 = !DILocation(line: 15, column: 52, scope: !692)
!702 = !DILocalVariable(name: "nl", arg: 4, scope: !692, file: !5, line: 15, type: !110)
!703 = !DILocation(line: 15, column: 60, scope: !692)
!704 = !DILocalVariable(name: "alpha", arg: 5, scope: !692, file: !5, line: 16, type: !100)
!705 = !DILocation(line: 16, column: 39, scope: !692)
!706 = !DILocalVariable(name: "beta", arg: 6, scope: !692, file: !5, line: 16, type: !100)
!707 = !DILocation(line: 16, column: 53, scope: !692)
!708 = !DILocalVariable(name: "tmp", arg: 7, scope: !692, file: !5, line: 17, type: !99)
!709 = !DILocation(line: 17, column: 40, scope: !692)
!710 = !DILocalVariable(name: "A", arg: 8, scope: !692, file: !5, line: 18, type: !99)
!711 = !DILocation(line: 18, column: 40, scope: !692)
!712 = !DILocalVariable(name: "B", arg: 9, scope: !692, file: !5, line: 19, type: !99)
!713 = !DILocation(line: 19, column: 40, scope: !692)
!714 = !DILocalVariable(name: "C", arg: 10, scope: !692, file: !5, line: 19, type: !99)
!715 = !DILocation(line: 19, column: 51, scope: !692)
!716 = !DILocalVariable(name: "D", arg: 11, scope: !692, file: !5, line: 19, type: !99)
!717 = !DILocation(line: 19, column: 62, scope: !692)
!718 = !DILocation(line: 19, column: 65, scope: !692)
!719 = !DILocation(line: 31, column: 1, scope: !692)
!720 = distinct !DISubprogram(name: "kernel_D_plus_tmp_mul_C", linkageName: "_Z23kernel_D_plus_tmp_mul_CiiiiddPdS_S_S_S_", scope: !5, file: !5, line: 35, type: !693, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!721 = !DILocalVariable(name: "ni", arg: 1, scope: !720, file: !5, line: 35, type: !110)
!722 = !DILocation(line: 35, column: 45, scope: !720)
!723 = !DILocalVariable(name: "nj", arg: 2, scope: !720, file: !5, line: 35, type: !110)
!724 = !DILocation(line: 35, column: 53, scope: !720)
!725 = !DILocalVariable(name: "nk", arg: 3, scope: !720, file: !5, line: 35, type: !110)
!726 = !DILocation(line: 35, column: 61, scope: !720)
!727 = !DILocalVariable(name: "nl", arg: 4, scope: !720, file: !5, line: 35, type: !110)
!728 = !DILocation(line: 35, column: 69, scope: !720)
!729 = !DILocalVariable(name: "alpha", arg: 5, scope: !720, file: !5, line: 36, type: !100)
!730 = !DILocation(line: 36, column: 48, scope: !720)
!731 = !DILocalVariable(name: "beta", arg: 6, scope: !720, file: !5, line: 36, type: !100)
!732 = !DILocation(line: 36, column: 62, scope: !720)
!733 = !DILocalVariable(name: "tmp", arg: 7, scope: !720, file: !5, line: 37, type: !99)
!734 = !DILocation(line: 37, column: 49, scope: !720)
!735 = !DILocalVariable(name: "A", arg: 8, scope: !720, file: !5, line: 38, type: !99)
!736 = !DILocation(line: 38, column: 49, scope: !720)
!737 = !DILocalVariable(name: "B", arg: 9, scope: !720, file: !5, line: 39, type: !99)
!738 = !DILocation(line: 39, column: 49, scope: !720)
!739 = !DILocalVariable(name: "C", arg: 10, scope: !720, file: !5, line: 39, type: !99)
!740 = !DILocation(line: 39, column: 60, scope: !720)
!741 = !DILocalVariable(name: "D", arg: 11, scope: !720, file: !5, line: 39, type: !99)
!742 = !DILocation(line: 39, column: 71, scope: !720)
!743 = !DILocation(line: 39, column: 74, scope: !720)
!744 = !DILocation(line: 55, column: 1, scope: !720)
!745 = distinct !DISubprogram(name: "num_blocks", linkageName: "_Z10num_blocksss", scope: !5, file: !5, line: 57, type: !746, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!746 = !DISubroutineType(types: !747)
!747 = !{!748, !748, !748}
!748 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!749 = !DILocalVariable(name: "num", arg: 1, scope: !745, file: !5, line: 57, type: !748)
!750 = !DILocation(line: 57, column: 24, scope: !745)
!751 = !DILocalVariable(name: "factor", arg: 2, scope: !745, file: !5, line: 57, type: !748)
!752 = !DILocation(line: 57, column: 35, scope: !745)
!753 = !DILocation(line: 58, column: 11, scope: !745)
!754 = !DILocation(line: 58, column: 17, scope: !745)
!755 = !DILocation(line: 58, column: 15, scope: !745)
!756 = !DILocation(line: 58, column: 24, scope: !745)
!757 = !DILocation(line: 58, column: 31, scope: !745)
!758 = !DILocation(line: 58, column: 29, scope: !745)
!759 = !DILocation(line: 58, column: 10, scope: !745)
!760 = !DILocation(line: 58, column: 3, scope: !745)
!761 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 132, type: !762, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !695)
!762 = !DISubroutineType(types: !763)
!763 = !{!110, !110, !466}
!764 = !DILocalVariable(name: "argc", arg: 1, scope: !761, file: !5, line: 132, type: !110)
!765 = !DILocation(line: 132, column: 14, scope: !761)
!766 = !DILocalVariable(name: "argv", arg: 2, scope: !761, file: !5, line: 132, type: !466)
!767 = !DILocation(line: 132, column: 27, scope: !761)
!768 = !DILocalVariable(name: "dump_code", scope: !761, file: !5, line: 134, type: !110)
!769 = !DILocation(line: 134, column: 7, scope: !761)
!770 = !DILocation(line: 134, column: 24, scope: !761)
!771 = !DILocation(line: 134, column: 19, scope: !761)
!772 = !DILocalVariable(name: "ni", scope: !761, file: !5, line: 135, type: !208)
!773 = !DILocation(line: 135, column: 9, scope: !761)
!774 = !DILocation(line: 135, column: 19, scope: !761)
!775 = !DILocation(line: 135, column: 14, scope: !761)
!776 = !DILocalVariable(name: "nj", scope: !761, file: !5, line: 136, type: !208)
!777 = !DILocation(line: 136, column: 9, scope: !761)
!778 = !DILocation(line: 136, column: 19, scope: !761)
!779 = !DILocation(line: 136, column: 14, scope: !761)
!780 = !DILocalVariable(name: "nk", scope: !761, file: !5, line: 137, type: !208)
!781 = !DILocation(line: 137, column: 9, scope: !761)
!782 = !DILocation(line: 137, column: 19, scope: !761)
!783 = !DILocation(line: 137, column: 14, scope: !761)
!784 = !DILocalVariable(name: "nl", scope: !761, file: !5, line: 138, type: !208)
!785 = !DILocation(line: 138, column: 9, scope: !761)
!786 = !DILocation(line: 138, column: 19, scope: !761)
!787 = !DILocation(line: 138, column: 14, scope: !761)
!788 = !DILocalVariable(name: "alpha", scope: !761, file: !5, line: 141, type: !100)
!789 = !DILocation(line: 141, column: 10, scope: !761)
!790 = !DILocalVariable(name: "beta", scope: !761, file: !5, line: 142, type: !100)
!791 = !DILocation(line: 142, column: 10, scope: !761)
!792 = !DILocalVariable(name: "A", scope: !761, file: !5, line: 143, type: !99)
!793 = !DILocation(line: 143, column: 11, scope: !761)
!794 = !DILocation(line: 143, column: 31, scope: !761)
!795 = !DILocation(line: 143, column: 34, scope: !761)
!796 = !DILocation(line: 143, column: 33, scope: !761)
!797 = !DILocation(line: 143, column: 36, scope: !761)
!798 = !DILocation(line: 143, column: 24, scope: !761)
!799 = !DILocation(line: 143, column: 15, scope: !761)
!800 = !DILocalVariable(name: "B", scope: !761, file: !5, line: 144, type: !99)
!801 = !DILocation(line: 144, column: 11, scope: !761)
!802 = !DILocation(line: 144, column: 31, scope: !761)
!803 = !DILocation(line: 144, column: 34, scope: !761)
!804 = !DILocation(line: 144, column: 33, scope: !761)
!805 = !DILocation(line: 144, column: 36, scope: !761)
!806 = !DILocation(line: 144, column: 24, scope: !761)
!807 = !DILocation(line: 144, column: 15, scope: !761)
!808 = !DILocalVariable(name: "C", scope: !761, file: !5, line: 145, type: !99)
!809 = !DILocation(line: 145, column: 11, scope: !761)
!810 = !DILocation(line: 145, column: 31, scope: !761)
!811 = !DILocation(line: 145, column: 34, scope: !761)
!812 = !DILocation(line: 145, column: 33, scope: !761)
!813 = !DILocation(line: 145, column: 36, scope: !761)
!814 = !DILocation(line: 145, column: 24, scope: !761)
!815 = !DILocation(line: 145, column: 15, scope: !761)
!816 = !DILocalVariable(name: "D", scope: !761, file: !5, line: 146, type: !99)
!817 = !DILocation(line: 146, column: 11, scope: !761)
!818 = !DILocation(line: 146, column: 31, scope: !761)
!819 = !DILocation(line: 146, column: 34, scope: !761)
!820 = !DILocation(line: 146, column: 33, scope: !761)
!821 = !DILocation(line: 146, column: 36, scope: !761)
!822 = !DILocation(line: 146, column: 24, scope: !761)
!823 = !DILocation(line: 146, column: 15, scope: !761)
!824 = !DILocalVariable(name: "tmp", scope: !761, file: !5, line: 147, type: !99)
!825 = !DILocation(line: 147, column: 11, scope: !761)
!826 = !DILocation(line: 147, column: 33, scope: !761)
!827 = !DILocation(line: 147, column: 36, scope: !761)
!828 = !DILocation(line: 147, column: 35, scope: !761)
!829 = !DILocation(line: 147, column: 38, scope: !761)
!830 = !DILocation(line: 147, column: 26, scope: !761)
!831 = !DILocation(line: 147, column: 17, scope: !761)
!832 = !DILocation(line: 152, column: 15, scope: !761)
!833 = !DILocation(line: 152, column: 19, scope: !761)
!834 = !DILocation(line: 152, column: 23, scope: !761)
!835 = !DILocation(line: 152, column: 27, scope: !761)
!836 = !DILocation(line: 153, column: 7, scope: !761)
!837 = !DILocation(line: 154, column: 7, scope: !761)
!838 = !DILocation(line: 155, column: 7, scope: !761)
!839 = !DILocation(line: 156, column: 7, scope: !761)
!840 = !DILocation(line: 157, column: 7, scope: !761)
!841 = !DILocation(line: 152, column: 3, scope: !761)
!842 = !DILocalVariable(name: "dev_A", scope: !761, file: !5, line: 161, type: !99)
!843 = !DILocation(line: 161, column: 11, scope: !761)
!844 = !DILocalVariable(name: "dev_B", scope: !761, file: !5, line: 162, type: !99)
!845 = !DILocation(line: 162, column: 11, scope: !761)
!846 = !DILocalVariable(name: "dev_C", scope: !761, file: !5, line: 163, type: !99)
!847 = !DILocation(line: 163, column: 11, scope: !761)
!848 = !DILocalVariable(name: "dev_D", scope: !761, file: !5, line: 164, type: !99)
!849 = !DILocation(line: 164, column: 11, scope: !761)
!850 = !DILocalVariable(name: "dev_tmp", scope: !761, file: !5, line: 165, type: !99)
!851 = !DILocation(line: 165, column: 11, scope: !761)
!852 = !DILocalVariable(name: "dev_alpha", scope: !761, file: !5, line: 166, type: !99)
!853 = !DILocation(line: 166, column: 11, scope: !761)
!854 = !DILocalVariable(name: "dev_beta", scope: !761, file: !5, line: 167, type: !99)
!855 = !DILocation(line: 167, column: 11, scope: !761)
!856 = !DILocation(line: 168, column: 22, scope: !761)
!857 = !DILocation(line: 168, column: 25, scope: !761)
!858 = !DILocation(line: 168, column: 24, scope: !761)
!859 = !DILocation(line: 168, column: 27, scope: !761)
!860 = !DILocation(line: 168, column: 3, scope: !761)
!861 = !DILocation(line: 169, column: 22, scope: !761)
!862 = !DILocation(line: 169, column: 25, scope: !761)
!863 = !DILocation(line: 169, column: 24, scope: !761)
!864 = !DILocation(line: 169, column: 27, scope: !761)
!865 = !DILocation(line: 169, column: 3, scope: !761)
!866 = !DILocation(line: 170, column: 22, scope: !761)
!867 = !DILocation(line: 170, column: 25, scope: !761)
!868 = !DILocation(line: 170, column: 24, scope: !761)
!869 = !DILocation(line: 170, column: 27, scope: !761)
!870 = !DILocation(line: 170, column: 3, scope: !761)
!871 = !DILocation(line: 171, column: 22, scope: !761)
!872 = !DILocation(line: 171, column: 25, scope: !761)
!873 = !DILocation(line: 171, column: 24, scope: !761)
!874 = !DILocation(line: 171, column: 27, scope: !761)
!875 = !DILocation(line: 171, column: 3, scope: !761)
!876 = !DILocation(line: 172, column: 24, scope: !761)
!877 = !DILocation(line: 172, column: 27, scope: !761)
!878 = !DILocation(line: 172, column: 26, scope: !761)
!879 = !DILocation(line: 172, column: 29, scope: !761)
!880 = !DILocation(line: 172, column: 3, scope: !761)
!881 = !DILocation(line: 173, column: 14, scope: !761)
!882 = !DILocation(line: 173, column: 21, scope: !761)
!883 = !DILocation(line: 173, column: 24, scope: !761)
!884 = !DILocation(line: 173, column: 27, scope: !761)
!885 = !DILocation(line: 173, column: 26, scope: !761)
!886 = !DILocation(line: 173, column: 29, scope: !761)
!887 = !DILocation(line: 173, column: 3, scope: !761)
!888 = !DILocation(line: 174, column: 14, scope: !761)
!889 = !DILocation(line: 174, column: 21, scope: !761)
!890 = !DILocation(line: 174, column: 24, scope: !761)
!891 = !DILocation(line: 174, column: 27, scope: !761)
!892 = !DILocation(line: 174, column: 26, scope: !761)
!893 = !DILocation(line: 174, column: 29, scope: !761)
!894 = !DILocation(line: 174, column: 3, scope: !761)
!895 = !DILocation(line: 175, column: 14, scope: !761)
!896 = !DILocation(line: 175, column: 21, scope: !761)
!897 = !DILocation(line: 175, column: 24, scope: !761)
!898 = !DILocation(line: 175, column: 27, scope: !761)
!899 = !DILocation(line: 175, column: 26, scope: !761)
!900 = !DILocation(line: 175, column: 29, scope: !761)
!901 = !DILocation(line: 175, column: 3, scope: !761)
!902 = !DILocation(line: 176, column: 14, scope: !761)
!903 = !DILocation(line: 176, column: 21, scope: !761)
!904 = !DILocation(line: 176, column: 24, scope: !761)
!905 = !DILocation(line: 176, column: 27, scope: !761)
!906 = !DILocation(line: 176, column: 26, scope: !761)
!907 = !DILocation(line: 176, column: 29, scope: !761)
!908 = !DILocation(line: 176, column: 3, scope: !761)
!909 = !DILocation(line: 177, column: 14, scope: !761)
!910 = !DILocation(line: 177, column: 23, scope: !761)
!911 = !DILocation(line: 177, column: 28, scope: !761)
!912 = !DILocation(line: 177, column: 31, scope: !761)
!913 = !DILocation(line: 177, column: 30, scope: !761)
!914 = !DILocation(line: 177, column: 33, scope: !761)
!915 = !DILocation(line: 177, column: 3, scope: !761)
!916 = !DILocation(line: 183, column: 10, scope: !761)
!917 = !DILocation(line: 183, column: 14, scope: !761)
!918 = !DILocation(line: 183, column: 18, scope: !761)
!919 = !DILocation(line: 183, column: 22, scope: !761)
!920 = !DILocation(line: 183, column: 26, scope: !761)
!921 = !DILocation(line: 183, column: 33, scope: !761)
!922 = !DILocation(line: 183, column: 39, scope: !761)
!923 = !DILocation(line: 183, column: 48, scope: !761)
!924 = !DILocation(line: 183, column: 55, scope: !761)
!925 = !DILocation(line: 183, column: 62, scope: !761)
!926 = !DILocation(line: 183, column: 69, scope: !761)
!927 = !DILocation(line: 183, column: 3, scope: !761)
!928 = !DILocation(line: 186, column: 14, scope: !761)
!929 = !DILocation(line: 186, column: 17, scope: !761)
!930 = !DILocation(line: 186, column: 24, scope: !761)
!931 = !DILocation(line: 186, column: 27, scope: !761)
!932 = !DILocation(line: 186, column: 26, scope: !761)
!933 = !DILocation(line: 186, column: 29, scope: !761)
!934 = !DILocation(line: 186, column: 3, scope: !761)
!935 = !DILocation(line: 187, column: 19, scope: !761)
!936 = !DILocation(line: 187, column: 3, scope: !761)
!937 = !DILocation(line: 188, column: 19, scope: !761)
!938 = !DILocation(line: 188, column: 3, scope: !761)
!939 = !DILocation(line: 189, column: 19, scope: !761)
!940 = !DILocation(line: 189, column: 3, scope: !761)
!941 = !DILocation(line: 190, column: 19, scope: !761)
!942 = !DILocation(line: 190, column: 3, scope: !761)
!943 = !DILocation(line: 191, column: 19, scope: !761)
!944 = !DILocation(line: 191, column: 3, scope: !761)
!945 = !DILocation(line: 192, column: 19, scope: !761)
!946 = !DILocation(line: 192, column: 3, scope: !761)
!947 = !DILocation(line: 193, column: 19, scope: !761)
!948 = !DILocation(line: 193, column: 3, scope: !761)
!949 = !DILocation(line: 196, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !761, file: !5, line: 196, column: 7)
!951 = !DILocation(line: 196, column: 17, scope: !950)
!952 = !DILocation(line: 196, column: 7, scope: !761)
!953 = !DILocation(line: 196, column: 35, scope: !950)
!954 = !DILocation(line: 196, column: 39, scope: !950)
!955 = !DILocation(line: 196, column: 43, scope: !950)
!956 = !DILocation(line: 196, column: 23, scope: !950)
!957 = !DILocation(line: 199, column: 15, scope: !761)
!958 = !DILocation(line: 199, column: 3, scope: !761)
!959 = !DILocation(line: 200, column: 15, scope: !761)
!960 = !DILocation(line: 200, column: 3, scope: !761)
!961 = !DILocation(line: 201, column: 15, scope: !761)
!962 = !DILocation(line: 201, column: 3, scope: !761)
!963 = !DILocation(line: 202, column: 15, scope: !761)
!964 = !DILocation(line: 202, column: 3, scope: !761)
!965 = !DILocation(line: 203, column: 15, scope: !761)
!966 = !DILocation(line: 203, column: 3, scope: !761)
!967 = !DILocation(line: 205, column: 3, scope: !761)
!968 = distinct !DISubprogram(name: "init_array", linkageName: "_ZL10init_arrayiiiiPdS_S_S_S_", scope: !5, file: !5, line: 105, type: !969, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, retainedNodes: !695)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !110, !110, !110, !110, !99, !99, !99, !99, !99}
!971 = !DILocalVariable(name: "ni", arg: 1, scope: !968, file: !5, line: 105, type: !110)
!972 = !DILocation(line: 105, column: 28, scope: !968)
!973 = !DILocalVariable(name: "nj", arg: 2, scope: !968, file: !5, line: 105, type: !110)
!974 = !DILocation(line: 105, column: 36, scope: !968)
!975 = !DILocalVariable(name: "nk", arg: 3, scope: !968, file: !5, line: 105, type: !110)
!976 = !DILocation(line: 105, column: 44, scope: !968)
!977 = !DILocalVariable(name: "nl", arg: 4, scope: !968, file: !5, line: 105, type: !110)
!978 = !DILocation(line: 105, column: 52, scope: !968)
!979 = !DILocalVariable(name: "A", arg: 5, scope: !968, file: !5, line: 106, type: !99)
!980 = !DILocation(line: 106, column: 13, scope: !968)
!981 = !DILocalVariable(name: "B", arg: 6, scope: !968, file: !5, line: 107, type: !99)
!982 = !DILocation(line: 107, column: 13, scope: !968)
!983 = !DILocalVariable(name: "C", arg: 7, scope: !968, file: !5, line: 108, type: !99)
!984 = !DILocation(line: 108, column: 13, scope: !968)
!985 = !DILocalVariable(name: "D", arg: 8, scope: !968, file: !5, line: 109, type: !99)
!986 = !DILocation(line: 109, column: 13, scope: !968)
!987 = !DILocalVariable(name: "tmp", arg: 9, scope: !968, file: !5, line: 110, type: !99)
!988 = !DILocation(line: 110, column: 13, scope: !968)
!989 = !DILocalVariable(name: "i", scope: !968, file: !5, line: 112, type: !110)
!990 = !DILocation(line: 112, column: 7, scope: !968)
!991 = !DILocalVariable(name: "j", scope: !968, file: !5, line: 112, type: !110)
!992 = !DILocation(line: 112, column: 10, scope: !968)
!993 = !DILocation(line: 114, column: 10, scope: !994)
!994 = distinct !DILexicalBlock(scope: !968, file: !5, line: 114, column: 3)
!995 = !DILocation(line: 114, column: 8, scope: !994)
!996 = !DILocation(line: 114, column: 15, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !5, line: 114, column: 3)
!998 = !DILocation(line: 114, column: 19, scope: !997)
!999 = !DILocation(line: 114, column: 17, scope: !997)
!1000 = !DILocation(line: 114, column: 3, scope: !994)
!1001 = !DILocation(line: 115, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !5, line: 115, column: 5)
!1003 = !DILocation(line: 115, column: 10, scope: !1002)
!1004 = !DILocation(line: 115, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !5, line: 115, column: 5)
!1006 = !DILocation(line: 115, column: 21, scope: !1005)
!1007 = !DILocation(line: 115, column: 19, scope: !1005)
!1008 = !DILocation(line: 115, column: 5, scope: !1002)
!1009 = !DILocation(line: 116, column: 29, scope: !1005)
!1010 = !DILocation(line: 116, column: 31, scope: !1005)
!1011 = !DILocation(line: 116, column: 30, scope: !1005)
!1012 = !DILocation(line: 116, column: 36, scope: !1005)
!1013 = !DILocation(line: 116, column: 34, scope: !1005)
!1014 = !DILocation(line: 116, column: 7, scope: !1005)
!1015 = !DILocation(line: 116, column: 9, scope: !1005)
!1016 = !DILocation(line: 116, column: 11, scope: !1005)
!1017 = !DILocation(line: 116, column: 10, scope: !1005)
!1018 = !DILocation(line: 116, column: 14, scope: !1005)
!1019 = !DILocation(line: 116, column: 13, scope: !1005)
!1020 = !DILocation(line: 116, column: 17, scope: !1005)
!1021 = !DILocation(line: 115, column: 26, scope: !1005)
!1022 = !DILocation(line: 115, column: 5, scope: !1005)
!1023 = distinct !{!1023, !1008, !1024}
!1024 = !DILocation(line: 116, column: 36, scope: !1002)
!1025 = !DILocation(line: 114, column: 24, scope: !997)
!1026 = !DILocation(line: 114, column: 3, scope: !997)
!1027 = distinct !{!1027, !1000, !1028}
!1028 = !DILocation(line: 116, column: 36, scope: !994)
!1029 = !DILocation(line: 117, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !968, file: !5, line: 117, column: 3)
!1031 = !DILocation(line: 117, column: 8, scope: !1030)
!1032 = !DILocation(line: 117, column: 15, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !5, line: 117, column: 3)
!1034 = !DILocation(line: 117, column: 19, scope: !1033)
!1035 = !DILocation(line: 117, column: 17, scope: !1033)
!1036 = !DILocation(line: 117, column: 3, scope: !1030)
!1037 = !DILocation(line: 118, column: 12, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !5, line: 118, column: 5)
!1039 = !DILocation(line: 118, column: 10, scope: !1038)
!1040 = !DILocation(line: 118, column: 17, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !5, line: 118, column: 5)
!1042 = !DILocation(line: 118, column: 21, scope: !1041)
!1043 = !DILocation(line: 118, column: 19, scope: !1041)
!1044 = !DILocation(line: 118, column: 5, scope: !1038)
!1045 = !DILocation(line: 119, column: 29, scope: !1041)
!1046 = !DILocation(line: 119, column: 32, scope: !1041)
!1047 = !DILocation(line: 119, column: 33, scope: !1041)
!1048 = !DILocation(line: 119, column: 31, scope: !1041)
!1049 = !DILocation(line: 119, column: 30, scope: !1041)
!1050 = !DILocation(line: 119, column: 40, scope: !1041)
!1051 = !DILocation(line: 119, column: 38, scope: !1041)
!1052 = !DILocation(line: 119, column: 7, scope: !1041)
!1053 = !DILocation(line: 119, column: 9, scope: !1041)
!1054 = !DILocation(line: 119, column: 11, scope: !1041)
!1055 = !DILocation(line: 119, column: 10, scope: !1041)
!1056 = !DILocation(line: 119, column: 14, scope: !1041)
!1057 = !DILocation(line: 119, column: 13, scope: !1041)
!1058 = !DILocation(line: 119, column: 17, scope: !1041)
!1059 = !DILocation(line: 118, column: 26, scope: !1041)
!1060 = !DILocation(line: 118, column: 5, scope: !1041)
!1061 = distinct !{!1061, !1044, !1062}
!1062 = !DILocation(line: 119, column: 40, scope: !1038)
!1063 = !DILocation(line: 117, column: 24, scope: !1033)
!1064 = !DILocation(line: 117, column: 3, scope: !1033)
!1065 = distinct !{!1065, !1036, !1066}
!1066 = !DILocation(line: 119, column: 40, scope: !1030)
!1067 = !DILocation(line: 120, column: 10, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !968, file: !5, line: 120, column: 3)
!1069 = !DILocation(line: 120, column: 8, scope: !1068)
!1070 = !DILocation(line: 120, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !5, line: 120, column: 3)
!1072 = !DILocation(line: 120, column: 19, scope: !1071)
!1073 = !DILocation(line: 120, column: 17, scope: !1071)
!1074 = !DILocation(line: 120, column: 3, scope: !1068)
!1075 = !DILocation(line: 121, column: 12, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !5, line: 121, column: 5)
!1077 = !DILocation(line: 121, column: 10, scope: !1076)
!1078 = !DILocation(line: 121, column: 17, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !5, line: 121, column: 5)
!1080 = !DILocation(line: 121, column: 21, scope: !1079)
!1081 = !DILocation(line: 121, column: 19, scope: !1079)
!1082 = !DILocation(line: 121, column: 5, scope: !1076)
!1083 = !DILocation(line: 122, column: 29, scope: !1079)
!1084 = !DILocation(line: 122, column: 32, scope: !1079)
!1085 = !DILocation(line: 122, column: 33, scope: !1079)
!1086 = !DILocation(line: 122, column: 31, scope: !1079)
!1087 = !DILocation(line: 122, column: 30, scope: !1079)
!1088 = !DILocation(line: 122, column: 40, scope: !1079)
!1089 = !DILocation(line: 122, column: 38, scope: !1079)
!1090 = !DILocation(line: 122, column: 7, scope: !1079)
!1091 = !DILocation(line: 122, column: 9, scope: !1079)
!1092 = !DILocation(line: 122, column: 11, scope: !1079)
!1093 = !DILocation(line: 122, column: 10, scope: !1079)
!1094 = !DILocation(line: 122, column: 14, scope: !1079)
!1095 = !DILocation(line: 122, column: 13, scope: !1079)
!1096 = !DILocation(line: 122, column: 17, scope: !1079)
!1097 = !DILocation(line: 121, column: 26, scope: !1079)
!1098 = !DILocation(line: 121, column: 5, scope: !1079)
!1099 = distinct !{!1099, !1082, !1100}
!1100 = !DILocation(line: 122, column: 40, scope: !1076)
!1101 = !DILocation(line: 120, column: 24, scope: !1071)
!1102 = !DILocation(line: 120, column: 3, scope: !1071)
!1103 = distinct !{!1103, !1074, !1104}
!1104 = !DILocation(line: 122, column: 40, scope: !1068)
!1105 = !DILocation(line: 123, column: 10, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !968, file: !5, line: 123, column: 3)
!1107 = !DILocation(line: 123, column: 8, scope: !1106)
!1108 = !DILocation(line: 123, column: 15, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !5, line: 123, column: 3)
!1110 = !DILocation(line: 123, column: 19, scope: !1109)
!1111 = !DILocation(line: 123, column: 17, scope: !1109)
!1112 = !DILocation(line: 123, column: 3, scope: !1106)
!1113 = !DILocation(line: 124, column: 12, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !5, line: 124, column: 5)
!1115 = !DILocation(line: 124, column: 10, scope: !1114)
!1116 = !DILocation(line: 124, column: 17, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !5, line: 124, column: 5)
!1118 = !DILocation(line: 124, column: 21, scope: !1117)
!1119 = !DILocation(line: 124, column: 19, scope: !1117)
!1120 = !DILocation(line: 124, column: 5, scope: !1114)
!1121 = !DILocation(line: 125, column: 29, scope: !1117)
!1122 = !DILocation(line: 125, column: 32, scope: !1117)
!1123 = !DILocation(line: 125, column: 33, scope: !1117)
!1124 = !DILocation(line: 125, column: 31, scope: !1117)
!1125 = !DILocation(line: 125, column: 30, scope: !1117)
!1126 = !DILocation(line: 125, column: 40, scope: !1117)
!1127 = !DILocation(line: 125, column: 38, scope: !1117)
!1128 = !DILocation(line: 125, column: 7, scope: !1117)
!1129 = !DILocation(line: 125, column: 9, scope: !1117)
!1130 = !DILocation(line: 125, column: 11, scope: !1117)
!1131 = !DILocation(line: 125, column: 10, scope: !1117)
!1132 = !DILocation(line: 125, column: 14, scope: !1117)
!1133 = !DILocation(line: 125, column: 13, scope: !1117)
!1134 = !DILocation(line: 125, column: 17, scope: !1117)
!1135 = !DILocation(line: 124, column: 26, scope: !1117)
!1136 = !DILocation(line: 124, column: 5, scope: !1117)
!1137 = distinct !{!1137, !1120, !1138}
!1138 = !DILocation(line: 125, column: 40, scope: !1114)
!1139 = !DILocation(line: 123, column: 24, scope: !1109)
!1140 = !DILocation(line: 123, column: 3, scope: !1109)
!1141 = distinct !{!1141, !1112, !1142}
!1142 = !DILocation(line: 125, column: 40, scope: !1106)
!1143 = !DILocation(line: 126, column: 10, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !968, file: !5, line: 126, column: 3)
!1145 = !DILocation(line: 126, column: 8, scope: !1144)
!1146 = !DILocation(line: 126, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !5, line: 126, column: 3)
!1148 = !DILocation(line: 126, column: 19, scope: !1147)
!1149 = !DILocation(line: 126, column: 17, scope: !1147)
!1150 = !DILocation(line: 126, column: 3, scope: !1144)
!1151 = !DILocation(line: 127, column: 12, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !5, line: 127, column: 5)
!1153 = !DILocation(line: 127, column: 10, scope: !1152)
!1154 = !DILocation(line: 127, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !5, line: 127, column: 5)
!1156 = !DILocation(line: 127, column: 21, scope: !1155)
!1157 = !DILocation(line: 127, column: 19, scope: !1155)
!1158 = !DILocation(line: 127, column: 5, scope: !1152)
!1159 = !DILocation(line: 128, column: 7, scope: !1155)
!1160 = !DILocation(line: 128, column: 11, scope: !1155)
!1161 = !DILocation(line: 128, column: 13, scope: !1155)
!1162 = !DILocation(line: 128, column: 12, scope: !1155)
!1163 = !DILocation(line: 128, column: 16, scope: !1155)
!1164 = !DILocation(line: 128, column: 15, scope: !1155)
!1165 = !DILocation(line: 128, column: 19, scope: !1155)
!1166 = !DILocation(line: 127, column: 26, scope: !1155)
!1167 = !DILocation(line: 127, column: 5, scope: !1155)
!1168 = distinct !{!1168, !1158, !1169}
!1169 = !DILocation(line: 128, column: 21, scope: !1152)
!1170 = !DILocation(line: 126, column: 24, scope: !1147)
!1171 = !DILocation(line: 126, column: 3, scope: !1147)
!1172 = distinct !{!1172, !1150, !1173}
!1173 = !DILocation(line: 128, column: 21, scope: !1144)
!1174 = !DILocation(line: 129, column: 1, scope: !968)
!1175 = distinct !DISubprogram(name: "cudaMalloc<double>", linkageName: "_ZL10cudaMallocIdE9cudaErrorPPT_m", scope: !1176, file: !1176, line: 490, type: !1177, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !1181, retainedNodes: !695)
!1176 = !DIFile(filename: "/usr/local/cuda-7.0/include/cuda_runtime.h", directory: "")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !1180, !391}
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "cudaError_t", file: !8, line: 1419, baseType: !16)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1181 = !{!1182}
!1182 = !DITemplateTypeParameter(name: "T", type: !100)
!1183 = !DILocalVariable(name: "devPtr", arg: 1, scope: !1175, file: !1176, line: 491, type: !1180)
!1184 = !DILocation(line: 491, column: 12, scope: !1175)
!1185 = !DILocalVariable(name: "size", arg: 2, scope: !1175, file: !1176, line: 492, type: !391)
!1186 = !DILocation(line: 492, column: 12, scope: !1175)
!1187 = !DILocation(line: 495, column: 38, scope: !1175)
!1188 = !DILocation(line: 495, column: 23, scope: !1175)
!1189 = !DILocation(line: 495, column: 46, scope: !1175)
!1190 = !DILocation(line: 495, column: 10, scope: !1175)
!1191 = !DILocation(line: 495, column: 3, scope: !1175)
!1192 = distinct !DISubprogram(name: "kernel", linkageName: "_ZL6kerneliiiiddPdS_S_S_S_", scope: !5, file: !5, line: 62, type: !693, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, retainedNodes: !695)
!1193 = !DILocalVariable(name: "ni", arg: 1, scope: !1192, file: !5, line: 62, type: !110)
!1194 = !DILocation(line: 62, column: 24, scope: !1192)
!1195 = !DILocalVariable(name: "nj", arg: 2, scope: !1192, file: !5, line: 62, type: !110)
!1196 = !DILocation(line: 62, column: 32, scope: !1192)
!1197 = !DILocalVariable(name: "nk", arg: 3, scope: !1192, file: !5, line: 62, type: !110)
!1198 = !DILocation(line: 62, column: 40, scope: !1192)
!1199 = !DILocalVariable(name: "nl", arg: 4, scope: !1192, file: !5, line: 62, type: !110)
!1200 = !DILocation(line: 62, column: 48, scope: !1192)
!1201 = !DILocalVariable(name: "alpha", arg: 5, scope: !1192, file: !5, line: 63, type: !100)
!1202 = !DILocation(line: 63, column: 27, scope: !1192)
!1203 = !DILocalVariable(name: "beta", arg: 6, scope: !1192, file: !5, line: 63, type: !100)
!1204 = !DILocation(line: 63, column: 41, scope: !1192)
!1205 = !DILocalVariable(name: "tmp", arg: 7, scope: !1192, file: !5, line: 64, type: !99)
!1206 = !DILocation(line: 64, column: 28, scope: !1192)
!1207 = !DILocalVariable(name: "A", arg: 8, scope: !1192, file: !5, line: 65, type: !99)
!1208 = !DILocation(line: 65, column: 28, scope: !1192)
!1209 = !DILocalVariable(name: "B", arg: 9, scope: !1192, file: !5, line: 66, type: !99)
!1210 = !DILocation(line: 66, column: 28, scope: !1192)
!1211 = !DILocalVariable(name: "C", arg: 10, scope: !1192, file: !5, line: 66, type: !99)
!1212 = !DILocation(line: 66, column: 39, scope: !1192)
!1213 = !DILocalVariable(name: "D", arg: 11, scope: !1192, file: !5, line: 66, type: !99)
!1214 = !DILocation(line: 66, column: 50, scope: !1192)
!1215 = !DILocalVariable(name: "threadsPerBlock", scope: !1192, file: !5, line: 70, type: !9)
!1216 = !DILocation(line: 70, column: 12, scope: !1192)
!1217 = !DILocalVariable(name: "block", scope: !1192, file: !5, line: 71, type: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "dim3", file: !1219, line: 427, baseType: !1220)
!1219 = !DIFile(filename: "/usr/local/cuda-7.0/include/vector_types.h", directory: "")
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dim3", file: !1219, line: 417, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1221, identifier: "_ZTS4dim3")
!1221 = !{!1222, !1223, !1224, !1225, !1229, !1238}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1220, file: !1219, line: 419, baseType: !9, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1220, file: !1219, line: 419, baseType: !9, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !1220, file: !1219, line: 419, baseType: !9, size: 32, offset: 64)
!1225 = !DISubprogram(name: "dim3", scope: !1220, file: !1219, line: 421, type: !1226, scopeLine: 421, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1228, !9, !9, !9}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1229 = !DISubprogram(name: "dim3", scope: !1220, file: !1219, line: 422, type: !1230, scopeLine: 422, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1228, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint3", file: !1219, line: 383, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint3", file: !1219, line: 190, size: 96, flags: DIFlagTypePassByValue, elements: !1234, identifier: "_ZTS5uint3")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1233, file: !1219, line: 192, baseType: !9, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1233, file: !1219, line: 192, baseType: !9, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !1233, file: !1219, line: 192, baseType: !9, size: 32, offset: 64)
!1238 = !DISubprogram(name: "operator uint3", linkageName: "_ZN4dim3cv5uint3Ev", scope: !1220, file: !1219, line: 423, type: !1239, scopeLine: 423, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1232, !1228}
!1241 = !DILocation(line: 71, column: 8, scope: !1192)
!1242 = !DILocation(line: 71, column: 14, scope: !1192)
!1243 = !DILocation(line: 71, column: 30, scope: !1192)
!1244 = !DILocalVariable(name: "grid", scope: !1245, file: !5, line: 74, type: !1218)
!1245 = distinct !DILexicalBlock(scope: !1192, file: !5, line: 73, column: 3)
!1246 = !DILocation(line: 74, column: 10, scope: !1245)
!1247 = !DILocation(line: 74, column: 26, scope: !1245)
!1248 = !DILocation(line: 74, column: 36, scope: !1245)
!1249 = !DILocation(line: 74, column: 30, scope: !1245)
!1250 = !DILocation(line: 74, column: 15, scope: !1245)
!1251 = !DILocation(line: 74, column: 51, scope: !1245)
!1252 = !DILocation(line: 74, column: 61, scope: !1245)
!1253 = !DILocation(line: 74, column: 55, scope: !1245)
!1254 = !DILocation(line: 74, column: 40, scope: !1245)
!1255 = !DILocation(line: 75, column: 22, scope: !1245)
!1256 = !DILocation(line: 75, column: 28, scope: !1245)
!1257 = !DILocation(line: 75, column: 19, scope: !1245)
!1258 = !DILocation(line: 75, column: 5, scope: !1245)
!1259 = !DILocation(line: 75, column: 37, scope: !1245)
!1260 = !DILocation(line: 75, column: 41, scope: !1245)
!1261 = !DILocation(line: 75, column: 45, scope: !1245)
!1262 = !DILocation(line: 75, column: 49, scope: !1245)
!1263 = !DILocation(line: 75, column: 53, scope: !1245)
!1264 = !DILocation(line: 75, column: 60, scope: !1245)
!1265 = !DILocation(line: 75, column: 66, scope: !1245)
!1266 = !DILocation(line: 75, column: 71, scope: !1245)
!1267 = !DILocation(line: 75, column: 74, scope: !1245)
!1268 = !DILocation(line: 75, column: 77, scope: !1245)
!1269 = !DILocation(line: 75, column: 80, scope: !1245)
!1270 = !DILocalVariable(name: "grid", scope: !1271, file: !5, line: 80, type: !1218)
!1271 = distinct !DILexicalBlock(scope: !1192, file: !5, line: 79, column: 3)
!1272 = !DILocation(line: 80, column: 10, scope: !1271)
!1273 = !DILocation(line: 80, column: 26, scope: !1271)
!1274 = !DILocation(line: 80, column: 36, scope: !1271)
!1275 = !DILocation(line: 80, column: 30, scope: !1271)
!1276 = !DILocation(line: 80, column: 15, scope: !1271)
!1277 = !DILocation(line: 80, column: 51, scope: !1271)
!1278 = !DILocation(line: 80, column: 61, scope: !1271)
!1279 = !DILocation(line: 80, column: 55, scope: !1271)
!1280 = !DILocation(line: 80, column: 40, scope: !1271)
!1281 = !DILocation(line: 81, column: 31, scope: !1271)
!1282 = !DILocation(line: 81, column: 37, scope: !1271)
!1283 = !DILocation(line: 81, column: 28, scope: !1271)
!1284 = !DILocation(line: 81, column: 5, scope: !1271)
!1285 = !DILocation(line: 81, column: 46, scope: !1271)
!1286 = !DILocation(line: 81, column: 50, scope: !1271)
!1287 = !DILocation(line: 81, column: 54, scope: !1271)
!1288 = !DILocation(line: 81, column: 58, scope: !1271)
!1289 = !DILocation(line: 81, column: 62, scope: !1271)
!1290 = !DILocation(line: 81, column: 69, scope: !1271)
!1291 = !DILocation(line: 81, column: 75, scope: !1271)
!1292 = !DILocation(line: 81, column: 80, scope: !1271)
!1293 = !DILocation(line: 81, column: 83, scope: !1271)
!1294 = !DILocation(line: 81, column: 86, scope: !1271)
!1295 = !DILocation(line: 81, column: 89, scope: !1271)
!1296 = !DILocation(line: 87, column: 1, scope: !1192)
!1297 = distinct !DISubprogram(name: "print_array", linkageName: "_ZL11print_arrayiiPd", scope: !5, file: !5, line: 91, type: !1298, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, retainedNodes: !695)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !110, !110, !99}
!1300 = !DILocalVariable(name: "ni", arg: 1, scope: !1297, file: !5, line: 91, type: !110)
!1301 = !DILocation(line: 91, column: 22, scope: !1297)
!1302 = !DILocalVariable(name: "nl", arg: 2, scope: !1297, file: !5, line: 91, type: !110)
!1303 = !DILocation(line: 91, column: 30, scope: !1297)
!1304 = !DILocalVariable(name: "D", arg: 3, scope: !1297, file: !5, line: 92, type: !99)
!1305 = !DILocation(line: 92, column: 13, scope: !1297)
!1306 = !DILocalVariable(name: "i", scope: !1297, file: !5, line: 94, type: !110)
!1307 = !DILocation(line: 94, column: 7, scope: !1297)
!1308 = !DILocalVariable(name: "j", scope: !1297, file: !5, line: 94, type: !110)
!1309 = !DILocation(line: 94, column: 10, scope: !1297)
!1310 = !DILocation(line: 96, column: 10, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1297, file: !5, line: 96, column: 3)
!1312 = !DILocation(line: 96, column: 8, scope: !1311)
!1313 = !DILocation(line: 96, column: 15, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !5, line: 96, column: 3)
!1315 = !DILocation(line: 96, column: 19, scope: !1314)
!1316 = !DILocation(line: 96, column: 17, scope: !1314)
!1317 = !DILocation(line: 96, column: 3, scope: !1311)
!1318 = !DILocation(line: 97, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !5, line: 97, column: 5)
!1320 = !DILocation(line: 97, column: 10, scope: !1319)
!1321 = !DILocation(line: 97, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !5, line: 97, column: 5)
!1323 = !DILocation(line: 97, column: 21, scope: !1322)
!1324 = !DILocation(line: 97, column: 19, scope: !1322)
!1325 = !DILocation(line: 97, column: 5, scope: !1319)
!1326 = !DILocation(line: 98, column: 16, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !5, line: 97, column: 30)
!1328 = !DILocation(line: 98, column: 35, scope: !1327)
!1329 = !DILocation(line: 98, column: 37, scope: !1327)
!1330 = !DILocation(line: 98, column: 39, scope: !1327)
!1331 = !DILocation(line: 98, column: 38, scope: !1327)
!1332 = !DILocation(line: 98, column: 42, scope: !1327)
!1333 = !DILocation(line: 98, column: 41, scope: !1327)
!1334 = !DILocation(line: 98, column: 7, scope: !1327)
!1335 = !DILocation(line: 99, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1327, file: !5, line: 99, column: 11)
!1337 = !DILocation(line: 99, column: 16, scope: !1336)
!1338 = !DILocation(line: 99, column: 14, scope: !1336)
!1339 = !DILocation(line: 99, column: 21, scope: !1336)
!1340 = !DILocation(line: 99, column: 19, scope: !1336)
!1341 = !DILocation(line: 99, column: 24, scope: !1336)
!1342 = !DILocation(line: 99, column: 29, scope: !1336)
!1343 = !DILocation(line: 99, column: 11, scope: !1327)
!1344 = !DILocation(line: 99, column: 44, scope: !1336)
!1345 = !DILocation(line: 99, column: 35, scope: !1336)
!1346 = !DILocation(line: 100, column: 5, scope: !1327)
!1347 = !DILocation(line: 97, column: 26, scope: !1322)
!1348 = !DILocation(line: 97, column: 5, scope: !1322)
!1349 = distinct !{!1349, !1325, !1350}
!1350 = !DILocation(line: 100, column: 5, scope: !1319)
!1351 = !DILocation(line: 96, column: 24, scope: !1314)
!1352 = !DILocation(line: 96, column: 3, scope: !1314)
!1353 = distinct !{!1353, !1317, !1354}
!1354 = !DILocation(line: 100, column: 5, scope: !1311)
!1355 = !DILocation(line: 101, column: 12, scope: !1297)
!1356 = !DILocation(line: 101, column: 3, scope: !1297)
!1357 = !DILocation(line: 102, column: 1, scope: !1297)
!1358 = distinct !DISubprogram(name: "dim3", linkageName: "_ZN4dim3C2Ejjj", scope: !1220, file: !1219, line: 421, type: !1226, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, declaration: !1225, retainedNodes: !695)
!1359 = !DILocalVariable(name: "this", arg: 1, scope: !1358, type: !1360, flags: DIFlagArtificial | DIFlagObjectPointer)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1361 = !DILocation(line: 0, scope: !1358)
!1362 = !DILocalVariable(name: "vx", arg: 2, scope: !1358, file: !1219, line: 421, type: !9)
!1363 = !DILocation(line: 421, column: 43, scope: !1358)
!1364 = !DILocalVariable(name: "vy", arg: 3, scope: !1358, file: !1219, line: 421, type: !9)
!1365 = !DILocation(line: 421, column: 64, scope: !1358)
!1366 = !DILocalVariable(name: "vz", arg: 4, scope: !1358, file: !1219, line: 421, type: !9)
!1367 = !DILocation(line: 421, column: 85, scope: !1358)
!1368 = !DILocation(line: 421, column: 95, scope: !1358)
!1369 = !DILocation(line: 421, column: 97, scope: !1358)
!1370 = !DILocation(line: 421, column: 102, scope: !1358)
!1371 = !DILocation(line: 421, column: 104, scope: !1358)
!1372 = !DILocation(line: 421, column: 109, scope: !1358)
!1373 = !DILocation(line: 421, column: 111, scope: !1358)
!1374 = !DILocation(line: 421, column: 116, scope: !1358)
