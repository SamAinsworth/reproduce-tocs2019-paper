; ModuleID = 'cg.c'
source_filename = "cg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@firstrow = internal unnamed_addr global i1 false, align 4
@lastrow = internal unnamed_addr global i1 false, align 4
@firstcol = internal unnamed_addr global i1 false, align 4
@lastcol = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" Size: %10d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Iterations: %5d\0A\00", align 1
@naa = internal unnamed_addr global i1 false, align 4
@nzz = internal unnamed_addr global i1 false, align 4
@tran = internal global double 0.000000e+00, align 8
@amult = internal unnamed_addr global double 0.000000e+00, align 8
@a = internal global [15825001 x double] zeroinitializer, align 16
@colidx = internal global [15825001 x i32] zeroinitializer, align 16
@rowstr = internal global [75002 x i32] zeroinitializer, align 16
@arow = internal global [15825001 x i32] zeroinitializer, align 16
@acol = internal global [15825001 x i32] zeroinitializer, align 16
@aelt = internal global [15825001 x double] zeroinitializer, align 16
@v = internal global [75002 x double] zeroinitializer, align 16
@iv = internal global [150002 x i32] zeroinitializer, align 16
@x = internal global [75003 x double] zeroinitializer, align 16
@z = internal global [75003 x double] zeroinitializer, align 16
@p = internal global [75003 x double] zeroinitializer, align 16
@q = internal global [75003 x double] zeroinitializer, align 16
@r = internal global [75003 x double] zeroinitializer, align 16
@w = internal global [75003 x double] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [30 x i8] c"    %5d       %20.14e%20.13e\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" Zeta is    %20.12e\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" Error is   %20.12e\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"16 Aug 2016\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"gcc\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"-O3  -static -g -std=c99 #-mmic\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"-static -openmp #-mmic \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@conj_grad.d = internal unnamed_addr global double 0.000000e+00, align 8
@conj_grad.sum = internal unnamed_addr global double 0.000000e+00, align 8
@conj_grad.rho = internal unnamed_addr global double 0.000000e+00, align 8
@conj_grad.rho0 = internal unnamed_addr global double 0.000000e+00, align 8
@conj_grad.alpha = internal unnamed_addr global double 0.000000e+00, align 8
@conj_grad.beta = internal unnamed_addr global double 0.000000e+00, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"nnza, nzmax = %d, %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"iouter = %d\0A\00", align 1
@str = private unnamed_addr constant [64 x i8] c"\0A\0A NAS Parallel Benchmarks 2.3 OpenACC C version - CG Benchmark\00"
@str.24 = private unnamed_addr constant [21 x i8] c" Benchmark completed\00"
@str.25 = private unnamed_addr constant [25 x i8] c" VERIFICATION SUCCESSFUL\00"
@str.26 = private unnamed_addr constant [50 x i8] c"   iteration           ||r||                 zeta\00"
@str.28 = private unnamed_addr constant [44 x i8] c"Space for matrix elements exceeded in makea\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  store i1 true, i1* @firstrow, align 4
  store i1 true, i1* @lastrow, align 4
  store i1 true, i1* @firstcol, align 4
  store i1 true, i1* @lastcol, align 4
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @str, i64 0, i64 0))
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 75000)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 75)
  store i1 true, i1* @naa, align 4
  store i1 true, i1* @nzz, align 4
  store double 0x41B2B9B0A1000000, double* @tran, align 8, !tbaa !1
  store double 0x41D2309CE5400000, double* @amult, align 8, !tbaa !1
  %8 = tail call double @randlc(double* nonnull @tran, double 0x41D2309CE5400000) #6
  %9 = load i1, i1* @naa, align 4
  %10 = select i1 %9, i32 75000, i32 0
  %11 = load i1, i1* @nzz, align 4
  %12 = select i1 %11, i32 15825000, i32 0
  %13 = load i1, i1* @firstrow, align 4
  %14 = zext i1 %13 to i32
  %15 = load i1, i1* @lastrow, align 4
  %16 = select i1 %15, i32 75000, i32 0
  %17 = load i1, i1* @firstcol, align 4
  %18 = zext i1 %17 to i32
  %19 = load i1, i1* @lastcol, align 4
  %20 = select i1 %19, i32 75000, i32 0
  %21 = sitofp i32 %10 to double
  %22 = fdiv double 1.000000e+00, %21
  %23 = tail call double @pow(double 1.000000e-01, double %22) #6
  br i1 %9, label %24, label %35

; <label>:24:                                     ; preds = %2
  %25 = zext i32 %10 to i64
  %26 = or i64 %25, 1
  %27 = getelementptr [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %26
  %28 = bitcast i32* %27 to i8*
  %29 = add nsw i32 %10, -1
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = add nuw nsw i64 %31, 4
  tail call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %32, i32 4, i1 false) #6
  %33 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %25
  br label %39

; <label>:34:                                     ; preds = %171
  br label %35

; <label>:35:                                     ; preds = %34, %2
  %36 = phi i32 [ 0, %2 ], [ %165, %34 ]
  %37 = icmp ult i32 %16, %14
  br i1 %37, label %199, label %38

; <label>:38:                                     ; preds = %35
  br label %175

; <label>:39:                                     ; preds = %171, %24
  %40 = phi i32 [ 0, %24 ], [ %165, %171 ]
  %41 = phi i32 [ 1, %24 ], [ %173, %171 ]
  %42 = phi double [ 1.000000e+00, %24 ], [ %172, %171 ]
  br label %43

; <label>:43:                                     ; preds = %43, %39
  %44 = phi i32 [ 1, %39 ], [ %45, %43 ]
  %45 = shl nsw i32 %44, 1
  %46 = icmp slt i32 %45, %10
  br i1 %46, label %43, label %47

; <label>:47:                                     ; preds = %43
  %48 = sitofp i32 %45 to double
  br label %49

; <label>:49:                                     ; preds = %66, %47
  %50 = phi i64 [ 0, %47 ], [ %67, %66 ]
  br label %51

; <label>:51:                                     ; preds = %60, %49
  %52 = load double, double* @amult, align 8, !tbaa !1
  %53 = tail call double @randlc(double* nonnull @tran, double %52) #6
  %54 = load double, double* @amult, align 8, !tbaa !1
  %55 = tail call double @randlc(double* nonnull @tran, double %54) #6
  %56 = fmul double %48, %55
  %57 = fptosi double %56 to i32
  %58 = add nsw i32 %57, 1
  %59 = icmp slt i32 %57, %10
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %51, %61
  br label %51

; <label>:61:                                     ; preds = %51
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds i32, i32* %33, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %60

; <label>:66:                                     ; preds = %61
  store i32 1, i32* %63, align 4, !tbaa !5
  %67 = add nuw nsw i64 %50, 1
  %68 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %67
  store i32 %58, i32* %68, align 4, !tbaa !5
  %69 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %67
  store double %53, double* %69, align 8, !tbaa !1
  %70 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %67
  store i32 %58, i32* %70, align 4, !tbaa !5
  %71 = icmp eq i64 %67, 13
  br i1 %71, label %72, label %49

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 1), align 4, !tbaa !5
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %33, i64 %74
  store i32 0, i32* %75, align 4, !tbaa !5
  %76 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 2), align 8, !tbaa !5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %33, i64 %77
  store i32 0, i32* %78, align 4, !tbaa !5
  %79 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 3), align 4, !tbaa !5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %33, i64 %80
  store i32 0, i32* %81, align 4, !tbaa !5
  %82 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 4), align 16, !tbaa !5
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %33, i64 %83
  store i32 0, i32* %84, align 4, !tbaa !5
  %85 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 5), align 4, !tbaa !5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %33, i64 %86
  store i32 0, i32* %87, align 4, !tbaa !5
  %88 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 6), align 8, !tbaa !5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %33, i64 %89
  store i32 0, i32* %90, align 4, !tbaa !5
  %91 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 7), align 4, !tbaa !5
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %33, i64 %92
  store i32 0, i32* %93, align 4, !tbaa !5
  %94 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 8), align 16, !tbaa !5
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %33, i64 %95
  store i32 0, i32* %96, align 4, !tbaa !5
  %97 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 9), align 4, !tbaa !5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %33, i64 %98
  store i32 0, i32* %99, align 4, !tbaa !5
  %100 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 10), align 8, !tbaa !5
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %33, i64 %101
  store i32 0, i32* %102, align 4, !tbaa !5
  %103 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 11), align 4, !tbaa !5
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %33, i64 %104
  store i32 0, i32* %105, align 4, !tbaa !5
  %106 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 12), align 16, !tbaa !5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %33, i64 %107
  store i32 0, i32* %108, align 4, !tbaa !5
  %109 = load i32, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 13), align 4, !tbaa !5
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %33, i64 %110
  store i32 0, i32* %111, align 4, !tbaa !5
  %112 = load i32, i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 1), align 4, !tbaa !5
  %113 = icmp eq i32 %112, %41
  br i1 %113, label %114, label %115

; <label>:114:                                    ; preds = %72
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 1), align 8, !tbaa !1
  br label %115

; <label>:115:                                    ; preds = %114, %72
  %116 = phi i32 [ 1, %114 ], [ 0, %72 ]
  %117 = load i64, i64* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 2) to i64*), align 8
  %118 = trunc i64 %117 to i32
  %119 = icmp eq i32 %118, %41
  %120 = lshr i64 %117, 32
  %121 = trunc i64 %120 to i32
  br i1 %119, label %523, label %524

; <label>:122:                                    ; preds = %588
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 14), align 16, !tbaa !1
  store i32 %41, i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 14), align 8, !tbaa !5
  br label %123

; <label>:123:                                    ; preds = %588, %587, %122
  %124 = phi i64 [ 14, %122 ], [ 13, %588 ], [ 13, %587 ]
  br label %125

; <label>:125:                                    ; preds = %168, %123
  %126 = phi i32 [ %170, %168 ], [ %112, %123 ]
  %127 = phi i64 [ %166, %168 ], [ 1, %123 ]
  %128 = phi i32 [ %165, %168 ], [ %40, %123 ]
  %129 = icmp slt i32 %126, %18
  %130 = icmp sgt i32 %126, %20
  %131 = or i1 %129, %130
  br i1 %131, label %164, label %132

; <label>:132:                                    ; preds = %125
  %133 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %127
  %134 = load double, double* %133, align 8, !tbaa !1
  %135 = fmul double %42, %134
  br label %136

; <label>:136:                                    ; preds = %159, %132
  %137 = phi i64 [ %161, %159 ], [ 1, %132 ]
  %138 = phi i32 [ %160, %159 ], [ %128, %132 ]
  %139 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %137
  %140 = load i32, i32* %139, align 4, !tbaa !5
  %141 = icmp slt i32 %140, %14
  %142 = icmp sgt i32 %140, %16
  %143 = or i1 %141, %142
  br i1 %143, label %159, label %144

; <label>:144:                                    ; preds = %136
  %145 = add nsw i32 %138, 1
  %146 = icmp slt i32 %138, %12
  br i1 %146, label %151, label %147

; <label>:147:                                    ; preds = %144
  %148 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.28, i64 0, i64 0)) #6
  %149 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %145, i32 %12) #6
  %150 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %41) #6
  tail call void @exit(i32 1) #7
  unreachable

; <label>:151:                                    ; preds = %144
  %152 = sext i32 %145 to i64
  %153 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @acol, i64 0, i64 %152
  store i32 %126, i32* %153, align 4, !tbaa !5
  %154 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %152
  store i32 %140, i32* %154, align 4, !tbaa !5
  %155 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %137
  %156 = load double, double* %155, align 8, !tbaa !1
  %157 = fmul double %135, %156
  %158 = getelementptr inbounds [15825001 x double], [15825001 x double]* @aelt, i64 0, i64 %152
  store double %157, double* %158, align 8, !tbaa !1
  br label %159

; <label>:159:                                    ; preds = %151, %136
  %160 = phi i32 [ %145, %151 ], [ %138, %136 ]
  %161 = add nuw nsw i64 %137, 1
  %162 = icmp slt i64 %137, %124
  br i1 %162, label %136, label %163

; <label>:163:                                    ; preds = %159
  br label %164

; <label>:164:                                    ; preds = %163, %125
  %165 = phi i32 [ %128, %125 ], [ %160, %163 ]
  %166 = add nuw nsw i64 %127, 1
  %167 = icmp slt i64 %127, %124
  br i1 %167, label %168, label %171

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %166
  %170 = load i32, i32* %169, align 4, !tbaa !5
  br label %125

; <label>:171:                                    ; preds = %164
  %172 = fmul double %23, %42
  %173 = add nuw nsw i32 %41, 1
  %174 = icmp slt i32 %41, %10
  br i1 %174, label %39, label %34

; <label>:175:                                    ; preds = %38, %194
  %176 = phi i32 [ %196, %194 ], [ %14, %38 ]
  %177 = phi i32 [ %195, %194 ], [ %36, %38 ]
  %178 = icmp slt i32 %176, %18
  %179 = icmp sgt i32 %176, %20
  %180 = or i1 %178, %179
  br i1 %180, label %194, label %181

; <label>:181:                                    ; preds = %175
  %182 = add nsw i32 %177, 1
  %183 = icmp slt i32 %177, %12
  br i1 %183, label %189, label %184

; <label>:184:                                    ; preds = %181
  %185 = add nsw i32 %176, %10
  %186 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.28, i64 0, i64 0)) #6
  %187 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %182, i32 %12) #6
  %188 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %185) #6
  tail call void @exit(i32 1) #7
  unreachable

; <label>:189:                                    ; preds = %181
  %190 = sext i32 %182 to i64
  %191 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @acol, i64 0, i64 %190
  store i32 %176, i32* %191, align 4, !tbaa !5
  %192 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %190
  store i32 %176, i32* %192, align 4, !tbaa !5
  %193 = getelementptr inbounds [15825001 x double], [15825001 x double]* @aelt, i64 0, i64 %190
  store double -5.990000e+01, double* %193, align 8, !tbaa !1
  br label %194

; <label>:194:                                    ; preds = %189, %175
  %195 = phi i32 [ %182, %189 ], [ %177, %175 ]
  %196 = add nuw nsw i32 %176, 1
  %197 = icmp slt i32 %176, %16
  br i1 %197, label %175, label %198

; <label>:198:                                    ; preds = %194
  br label %199

; <label>:199:                                    ; preds = %198, %35
  %200 = phi i32 [ %36, %35 ], [ %195, %198 ]
  %201 = zext i32 %10 to i64
  %202 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %201
  %203 = sub nsw i32 %16, %14
  %204 = add nsw i32 %203, 1
  br i1 %9, label %205, label %210

; <label>:205:                                    ; preds = %199
  %206 = add nsw i32 %10, -1
  %207 = zext i32 %206 to i64
  %208 = shl nuw nsw i64 %207, 2
  %209 = add nuw nsw i64 %208, 4
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 1) to i8*), i8 0, i64 %209, i32 4, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %209, i32 4, i1 false) #6
  br label %210

; <label>:210:                                    ; preds = %199, %205
  %211 = or i32 %10, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %212
  store i32 0, i32* %213, align 4, !tbaa !5
  %214 = icmp slt i32 %200, 1
  br i1 %214, label %258, label %215

; <label>:215:                                    ; preds = %210
  %216 = sext i1 %13 to i32
  %217 = add nsw i32 %216, 2
  %218 = and i32 %200, 1
  %219 = icmp eq i32 %200, 1
  br i1 %219, label %244, label %220

; <label>:220:                                    ; preds = %215
  %221 = sub i32 %200, %218
  br label %222

; <label>:222:                                    ; preds = %222, %220
  %223 = phi i64 [ 1, %220 ], [ %240, %222 ]
  %224 = phi i32 [ %221, %220 ], [ %241, %222 ]
  %225 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %223
  %226 = load i32, i32* %225, align 4, !tbaa !5
  %227 = add i32 %217, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4, !tbaa !5
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4, !tbaa !5
  %232 = add nuw nsw i64 %223, 1
  %233 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4, !tbaa !5
  %235 = add i32 %217, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4, !tbaa !5
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4, !tbaa !5
  %240 = add nsw i64 %223, 2
  %241 = add i32 %224, -2
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %222

; <label>:243:                                    ; preds = %222
  br label %244

; <label>:244:                                    ; preds = %243, %215
  %245 = phi i64 [ 1, %215 ], [ %240, %243 ]
  %246 = icmp eq i32 %218, 0
  br i1 %246, label %257, label %247

; <label>:247:                                    ; preds = %244
  br label %248

; <label>:248:                                    ; preds = %247
  %249 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %245
  %250 = load i32, i32* %249, align 4, !tbaa !5
  %251 = add i32 %217, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4, !tbaa !5
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4, !tbaa !5
  br label %256

; <label>:256:                                    ; preds = %248
  br label %257

; <label>:257:                                    ; preds = %244, %256
  br label %258

; <label>:258:                                    ; preds = %257, %210
  store i32 1, i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %259 = icmp slt i32 %203, 0
  br i1 %259, label %264, label %260

; <label>:260:                                    ; preds = %258
  %261 = add nsw i32 %203, 2
  %262 = sext i32 %261 to i64
  br label %271

; <label>:263:                                    ; preds = %271
  br label %264

; <label>:264:                                    ; preds = %263, %258
  br i1 %214, label %303, label %265

; <label>:265:                                    ; preds = %264
  %266 = xor i32 %14, 1
  %267 = and i32 %200, 1
  %268 = icmp eq i32 %200, 1
  br i1 %268, label %280, label %269

; <label>:269:                                    ; preds = %265
  %270 = sub i32 %200, %267
  br label %307

; <label>:271:                                    ; preds = %271, %260
  %272 = phi i32 [ 1, %260 ], [ %276, %271 ]
  %273 = phi i64 [ 2, %260 ], [ %277, %271 ]
  %274 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4, !tbaa !5
  %276 = add nsw i32 %275, %272
  store i32 %276, i32* %274, align 4, !tbaa !5
  %277 = add nuw nsw i64 %273, 1
  %278 = icmp slt i64 %273, %262
  br i1 %278, label %271, label %263

; <label>:279:                                    ; preds = %307
  br label %280

; <label>:280:                                    ; preds = %279, %265
  %281 = phi i64 [ 1, %265 ], [ %343, %279 ]
  %282 = icmp eq i32 %267, 0
  br i1 %282, label %302, label %283

; <label>:283:                                    ; preds = %280
  br label %284

; <label>:284:                                    ; preds = %283
  %285 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %281
  %286 = load i32, i32* %285, align 4, !tbaa !5
  %287 = add i32 %286, %266
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4, !tbaa !5
  %291 = getelementptr inbounds [15825001 x double], [15825001 x double]* @aelt, i64 0, i64 %281
  %292 = bitcast double* %291 to i64*
  %293 = load i64, i64* %292, align 8, !tbaa !1
  %294 = sext i32 %290 to i64
  %295 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %294
  %296 = bitcast double* %295 to i64*
  store i64 %293, i64* %296, align 8, !tbaa !1
  %297 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @acol, i64 0, i64 %281
  %298 = load i32, i32* %297, align 4, !tbaa !5
  %299 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %294
  store i32 %298, i32* %299, align 4, !tbaa !5
  %300 = add nsw i32 %290, 1
  store i32 %300, i32* %289, align 4, !tbaa !5
  br label %301

; <label>:301:                                    ; preds = %284
  br label %302

; <label>:302:                                    ; preds = %280, %301
  br label %303

; <label>:303:                                    ; preds = %302, %264
  %304 = icmp sgt i32 %203, -1
  br i1 %304, label %305, label %358

; <label>:305:                                    ; preds = %303
  %306 = sext i32 %204 to i64
  br label %346

; <label>:307:                                    ; preds = %307, %269
  %308 = phi i64 [ 1, %269 ], [ %343, %307 ]
  %309 = phi i32 [ %270, %269 ], [ %344, %307 ]
  %310 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %308
  %311 = load i32, i32* %310, align 4, !tbaa !5
  %312 = add i32 %311, %266
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4, !tbaa !5
  %316 = getelementptr inbounds [15825001 x double], [15825001 x double]* @aelt, i64 0, i64 %308
  %317 = bitcast double* %316 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !1
  %319 = sext i32 %315 to i64
  %320 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %319
  %321 = bitcast double* %320 to i64*
  store i64 %318, i64* %321, align 8, !tbaa !1
  %322 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @acol, i64 0, i64 %308
  %323 = load i32, i32* %322, align 4, !tbaa !5
  %324 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %319
  store i32 %323, i32* %324, align 4, !tbaa !5
  %325 = add nsw i32 %315, 1
  store i32 %325, i32* %314, align 4, !tbaa !5
  %326 = add nuw nsw i64 %308, 1
  %327 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4, !tbaa !5
  %329 = add i32 %328, %266
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4, !tbaa !5
  %333 = getelementptr inbounds [15825001 x double], [15825001 x double]* @aelt, i64 0, i64 %326
  %334 = bitcast double* %333 to i64*
  %335 = load i64, i64* %334, align 8, !tbaa !1
  %336 = sext i32 %332 to i64
  %337 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %336
  %338 = bitcast double* %337 to i64*
  store i64 %335, i64* %338, align 8, !tbaa !1
  %339 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @acol, i64 0, i64 %326
  %340 = load i32, i32* %339, align 4, !tbaa !5
  %341 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %336
  store i32 %340, i32* %341, align 4, !tbaa !5
  %342 = add nsw i32 %332, 1
  store i32 %342, i32* %331, align 4, !tbaa !5
  %343 = add nsw i64 %308, 2
  %344 = add i32 %309, -2
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %279, label %307

; <label>:346:                                    ; preds = %346, %305
  %347 = phi i64 [ %354, %346 ], [ %306, %305 ]
  %348 = phi i32 [ %355, %346 ], [ %204, %305 ]
  %349 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %347
  %350 = load i32, i32* %349, align 4, !tbaa !5
  %351 = add nsw i32 %348, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %352
  store i32 %350, i32* %353, align 4, !tbaa !5
  %354 = add nsw i64 %347, -1
  %355 = add nsw i32 %348, -1
  %356 = icmp sgt i64 %347, 1
  br i1 %356, label %346, label %357

; <label>:357:                                    ; preds = %346
  br label %358

; <label>:358:                                    ; preds = %357, %303
  store i32 1, i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  br i1 %9, label %359, label %366

; <label>:359:                                    ; preds = %358
  %360 = add nsw i32 %10, -1
  %361 = zext i32 %360 to i64
  %362 = shl nuw nsw i64 %361, 3
  %363 = add nuw nsw i64 %362, 8
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 1) to i8*), i8 0, i64 %363, i32 8, i1 false) #6
  %364 = shl nuw nsw i64 %361, 2
  %365 = add nuw nsw i64 %364, 4
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %365, i32 4, i1 false) #6
  br label %366

; <label>:366:                                    ; preds = %358, %359
  br i1 %259, label %469, label %367

; <label>:367:                                    ; preds = %366
  %368 = sub nsw i32 2, %14
  %369 = or i32 %368, %16
  br label %370

; <label>:370:                                    ; preds = %463, %367
  %371 = phi i64 [ 1, %367 ], [ %374, %463 ]
  %372 = phi i32 [ 0, %367 ], [ %464, %463 ]
  %373 = phi i32 [ 1, %367 ], [ %376, %463 ]
  %374 = add nuw nsw i64 %371, 1
  %375 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4, !tbaa !5
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %463

; <label>:378:                                    ; preds = %370
  %379 = sext i32 %373 to i64
  %380 = sext i32 %376 to i64
  br label %388

; <label>:381:                                    ; preds = %408
  %382 = icmp slt i32 %409, 1
  br i1 %382, label %463, label %383

; <label>:383:                                    ; preds = %381
  %384 = and i32 %409, 1
  %385 = icmp eq i32 %409, 1
  br i1 %385, label %439, label %386

; <label>:386:                                    ; preds = %383
  %387 = sub i32 %409, %384
  br label %412

; <label>:388:                                    ; preds = %408, %378
  %389 = phi i64 [ %379, %378 ], [ %410, %408 ]
  %390 = phi i32 [ 0, %378 ], [ %409, %408 ]
  %391 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %389
  %392 = load i32, i32* %391, align 4, !tbaa !5
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %393
  %395 = load double, double* %394, align 8, !tbaa !1
  %396 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %389
  %397 = load double, double* %396, align 8, !tbaa !1
  %398 = fadd double %395, %397
  store double %398, double* %394, align 8, !tbaa !1
  %399 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %393
  %400 = load i32, i32* %399, align 4, !tbaa !5
  %401 = icmp eq i32 %400, 0
  %402 = fcmp une double %398, 0.000000e+00
  %403 = and i1 %402, %401
  br i1 %403, label %404, label %408

; <label>:404:                                    ; preds = %388
  store i32 1, i32* %399, align 4, !tbaa !5
  %405 = add nsw i32 %390, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %202, i64 %406
  store i32 %392, i32* %407, align 4, !tbaa !5
  br label %408

; <label>:408:                                    ; preds = %404, %388
  %409 = phi i32 [ %405, %404 ], [ %390, %388 ]
  %410 = add nsw i64 %389, 1
  %411 = icmp eq i64 %410, %380
  br i1 %411, label %381, label %388

; <label>:412:                                    ; preds = %1064, %386
  %413 = phi i64 [ 1, %386 ], [ %1066, %1064 ]
  %414 = phi i32 [ %372, %386 ], [ %1065, %1064 ]
  %415 = phi i32 [ %387, %386 ], [ %1067, %1064 ]
  %416 = getelementptr inbounds i32, i32* %202, i64 %413
  %417 = load i32, i32* %416, align 4, !tbaa !5
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %418
  store i32 0, i32* %419, align 4, !tbaa !5
  %420 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %418
  %421 = load double, double* %420, align 8, !tbaa !1
  store double 0.000000e+00, double* %420, align 8, !tbaa !1
  %422 = fcmp une double %421, 0.000000e+00
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %412
  %424 = add nsw i32 %414, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %425
  store double %421, double* %426, align 8, !tbaa !1
  %427 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %425
  store i32 %417, i32* %427, align 4, !tbaa !5
  br label %428

; <label>:428:                                    ; preds = %423, %412
  %429 = phi i32 [ %424, %423 ], [ %414, %412 ]
  %430 = add nuw nsw i64 %413, 1
  %431 = getelementptr inbounds i32, i32* %202, i64 %430
  %432 = load i32, i32* %431, align 4, !tbaa !5
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %433
  store i32 0, i32* %434, align 4, !tbaa !5
  %435 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %433
  %436 = load double, double* %435, align 8, !tbaa !1
  store double 0.000000e+00, double* %435, align 8, !tbaa !1
  %437 = fcmp une double %436, 0.000000e+00
  br i1 %437, label %1059, label %1064

; <label>:438:                                    ; preds = %1064
  br label %439

; <label>:439:                                    ; preds = %438, %383
  %440 = phi i32 [ undef, %383 ], [ %1065, %438 ]
  %441 = phi i64 [ 1, %383 ], [ %1066, %438 ]
  %442 = phi i32 [ %372, %383 ], [ %1065, %438 ]
  %443 = icmp eq i32 %384, 0
  br i1 %443, label %461, label %444

; <label>:444:                                    ; preds = %439
  br label %445

; <label>:445:                                    ; preds = %444
  %446 = getelementptr inbounds i32, i32* %202, i64 %441
  %447 = load i32, i32* %446, align 4, !tbaa !5
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [150002 x i32], [150002 x i32]* @iv, i64 0, i64 %448
  store i32 0, i32* %449, align 4, !tbaa !5
  %450 = getelementptr inbounds [75002 x double], [75002 x double]* @v, i64 0, i64 %448
  %451 = load double, double* %450, align 8, !tbaa !1
  store double 0.000000e+00, double* %450, align 8, !tbaa !1
  %452 = fcmp une double %451, 0.000000e+00
  br i1 %452, label %453, label %458

; <label>:453:                                    ; preds = %445
  %454 = add nsw i32 %442, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %455
  store double %451, double* %456, align 8, !tbaa !1
  %457 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %455
  store i32 %447, i32* %457, align 4, !tbaa !5
  br label %458

; <label>:458:                                    ; preds = %453, %445
  %459 = phi i32 [ %454, %453 ], [ %442, %445 ]
  br label %460

; <label>:460:                                    ; preds = %458
  br label %461

; <label>:461:                                    ; preds = %439, %460
  %462 = phi i32 [ %440, %439 ], [ %459, %460 ]
  br label %463

; <label>:463:                                    ; preds = %461, %381, %370
  %464 = phi i32 [ %372, %381 ], [ %372, %370 ], [ %462, %461 ]
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %375, align 4, !tbaa !5
  %466 = trunc i64 %374 to i32
  %467 = icmp eq i32 %466, %369
  br i1 %467, label %468, label %370

; <label>:468:                                    ; preds = %463
  br label %469

; <label>:469:                                    ; preds = %468, %366
  %470 = load i1, i1* @lastrow, align 4
  %471 = load i1, i1* @firstrow, align 4
  %472 = sext i1 %471 to i32
  %473 = select i1 %470, i32 75001, i32 1
  %474 = add nsw i32 %473, %472
  %475 = icmp slt i32 %474, 1
  br i1 %475, label %477, label %517

; <label>:476:                                    ; preds = %591
  br label %477

; <label>:477:                                    ; preds = %476, %469
  br label %478

; <label>:478:                                    ; preds = %478, %477
  %479 = phi i64 [ 0, %477 ], [ %514, %478 ]
  %480 = or i64 %479, 1
  %481 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %480
  %482 = bitcast double* %481 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %482, align 8, !tbaa !1
  %483 = getelementptr double, double* %481, i64 2
  %484 = bitcast double* %483 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %484, align 8, !tbaa !1
  %485 = or i64 %479, 5
  %486 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %485
  %487 = bitcast double* %486 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %487, align 8, !tbaa !1
  %488 = getelementptr double, double* %486, i64 2
  %489 = bitcast double* %488 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %489, align 8, !tbaa !1
  %490 = add nsw i64 %479, 8
  %491 = or i64 %490, 1
  %492 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %491
  %493 = bitcast double* %492 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %493, align 8, !tbaa !1
  %494 = getelementptr double, double* %492, i64 2
  %495 = bitcast double* %494 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %495, align 8, !tbaa !1
  %496 = add nsw i64 %479, 12
  %497 = or i64 %496, 1
  %498 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %497
  %499 = bitcast double* %498 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %499, align 8, !tbaa !1
  %500 = getelementptr double, double* %498, i64 2
  %501 = bitcast double* %500 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %501, align 8, !tbaa !1
  %502 = add nsw i64 %479, 16
  %503 = or i64 %502, 1
  %504 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %503
  %505 = bitcast double* %504 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %505, align 8, !tbaa !1
  %506 = getelementptr double, double* %504, i64 2
  %507 = bitcast double* %506 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %507, align 8, !tbaa !1
  %508 = add nsw i64 %479, 20
  %509 = or i64 %508, 1
  %510 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %509
  %511 = bitcast double* %510 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %511, align 8, !tbaa !1
  %512 = getelementptr double, double* %510, i64 2
  %513 = bitcast double* %512 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %513, align 8, !tbaa !1
  %514 = add nsw i64 %479, 24
  %515 = icmp eq i64 %514, 75000
  br i1 %515, label %516, label %478, !llvm.loop !7

; <label>:516:                                    ; preds = %478
  br label %686

; <label>:517:                                    ; preds = %469
  %518 = load i1, i1* @firstcol, align 4
  %519 = sext i1 %518 to i32
  %520 = sext i32 %474 to i64
  %521 = insertelement <4 x i32> undef, i32 %519, i32 0
  %522 = shufflevector <4 x i32> %521, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %593

; <label>:523:                                    ; preds = %115
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 2), align 16, !tbaa !1
  br label %524

; <label>:524:                                    ; preds = %523, %115
  %525 = phi i32 [ 1, %523 ], [ %116, %115 ]
  %526 = icmp eq i32 %121, %41
  br i1 %526, label %527, label %528

; <label>:527:                                    ; preds = %524
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 3), align 8, !tbaa !1
  br label %528

; <label>:528:                                    ; preds = %527, %524
  %529 = phi i32 [ 1, %527 ], [ %525, %524 ]
  %530 = load i64, i64* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 4) to i64*), align 16
  %531 = trunc i64 %530 to i32
  %532 = icmp eq i32 %531, %41
  %533 = lshr i64 %530, 32
  %534 = trunc i64 %533 to i32
  br i1 %532, label %535, label %536

; <label>:535:                                    ; preds = %528
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 4), align 16, !tbaa !1
  br label %536

; <label>:536:                                    ; preds = %535, %528
  %537 = phi i32 [ 1, %535 ], [ %529, %528 ]
  %538 = icmp eq i32 %534, %41
  br i1 %538, label %539, label %540

; <label>:539:                                    ; preds = %536
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 5), align 8, !tbaa !1
  br label %540

; <label>:540:                                    ; preds = %539, %536
  %541 = phi i32 [ 1, %539 ], [ %537, %536 ]
  %542 = load i64, i64* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 6) to i64*), align 8
  %543 = trunc i64 %542 to i32
  %544 = icmp eq i32 %543, %41
  %545 = lshr i64 %542, 32
  %546 = trunc i64 %545 to i32
  br i1 %544, label %547, label %548

; <label>:547:                                    ; preds = %540
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 6), align 16, !tbaa !1
  br label %548

; <label>:548:                                    ; preds = %547, %540
  %549 = phi i32 [ 1, %547 ], [ %541, %540 ]
  %550 = icmp eq i32 %546, %41
  br i1 %550, label %551, label %552

; <label>:551:                                    ; preds = %548
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 7), align 8, !tbaa !1
  br label %552

; <label>:552:                                    ; preds = %551, %548
  %553 = phi i32 [ 1, %551 ], [ %549, %548 ]
  %554 = load i64, i64* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 8) to i64*), align 16
  %555 = trunc i64 %554 to i32
  %556 = icmp eq i32 %555, %41
  %557 = lshr i64 %554, 32
  %558 = trunc i64 %557 to i32
  br i1 %556, label %559, label %560

; <label>:559:                                    ; preds = %552
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 8), align 16, !tbaa !1
  br label %560

; <label>:560:                                    ; preds = %559, %552
  %561 = phi i32 [ 1, %559 ], [ %553, %552 ]
  %562 = icmp eq i32 %558, %41
  br i1 %562, label %563, label %564

; <label>:563:                                    ; preds = %560
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 9), align 8, !tbaa !1
  br label %564

; <label>:564:                                    ; preds = %563, %560
  %565 = phi i32 [ 1, %563 ], [ %561, %560 ]
  %566 = load i64, i64* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 10) to i64*), align 8
  %567 = trunc i64 %566 to i32
  %568 = icmp eq i32 %567, %41
  %569 = lshr i64 %566, 32
  %570 = trunc i64 %569 to i32
  br i1 %568, label %571, label %572

; <label>:571:                                    ; preds = %564
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 10), align 16, !tbaa !1
  br label %572

; <label>:572:                                    ; preds = %571, %564
  %573 = phi i32 [ 1, %571 ], [ %565, %564 ]
  %574 = icmp eq i32 %570, %41
  br i1 %574, label %575, label %576

; <label>:575:                                    ; preds = %572
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 11), align 8, !tbaa !1
  br label %576

; <label>:576:                                    ; preds = %575, %572
  %577 = phi i32 [ 1, %575 ], [ %573, %572 ]
  %578 = load i64, i64* bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 12) to i64*), align 16
  %579 = trunc i64 %578 to i32
  %580 = icmp eq i32 %579, %41
  %581 = lshr i64 %578, 32
  %582 = trunc i64 %581 to i32
  br i1 %580, label %583, label %584

; <label>:583:                                    ; preds = %576
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 12), align 16, !tbaa !1
  br label %584

; <label>:584:                                    ; preds = %583, %576
  %585 = phi i32 [ 1, %583 ], [ %577, %576 ]
  %586 = icmp eq i32 %582, %41
  br i1 %586, label %587, label %588

; <label>:587:                                    ; preds = %584
  store double 5.000000e-01, double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 13), align 8, !tbaa !1
  br label %123

; <label>:588:                                    ; preds = %584
  %589 = icmp eq i32 %585, 0
  br i1 %589, label %122, label %123

; <label>:590:                                    ; preds = %678
  br label %591

; <label>:591:                                    ; preds = %590, %674, %593
  %592 = icmp slt i64 %595, %520
  br i1 %592, label %593, label %476

; <label>:593:                                    ; preds = %591, %517
  %594 = phi i32 [ %598, %591 ], [ 1, %517 ]
  %595 = phi i64 [ %596, %591 ], [ 1, %517 ]
  %596 = add nuw nsw i64 %595, 1
  %597 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %596
  %598 = load i32, i32* %597, align 4, !tbaa !5
  %599 = icmp slt i32 %594, %598
  br i1 %599, label %600, label %591

; <label>:600:                                    ; preds = %593
  %601 = sext i32 %594 to i64
  %602 = sext i32 %598 to i64
  %603 = sext i32 %598 to i64
  %604 = sub nsw i64 %603, %601
  %605 = icmp ult i64 %604, 8
  br i1 %605, label %676, label %606

; <label>:606:                                    ; preds = %600
  %607 = and i64 %604, -8
  %608 = icmp eq i64 %607, 0
  %609 = add nsw i64 %601, %607
  br i1 %608, label %676, label %610

; <label>:610:                                    ; preds = %606
  %611 = sext i32 %598 to i64
  %612 = sext i32 %594 to i64
  %613 = sub nsw i64 %611, %612
  %614 = add nsw i64 %613, -8
  %615 = lshr i64 %614, 3
  %616 = add nuw nsw i64 %615, 1
  %617 = and i64 %616, 1
  %618 = icmp eq i64 %615, 0
  br i1 %618, label %655, label %619

; <label>:619:                                    ; preds = %610
  %620 = sub nsw i64 %616, %617
  br label %621

; <label>:621:                                    ; preds = %621, %619
  %622 = phi i64 [ 0, %619 ], [ %651, %621 ]
  %623 = phi i64 [ %620, %619 ], [ %652, %621 ]
  %624 = add i64 %601, %622
  %625 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %624
  %626 = bitcast i32* %625 to <4 x i32>*
  %627 = load <4 x i32>, <4 x i32>* %626, align 4, !tbaa !5
  %628 = getelementptr i32, i32* %625, i64 4
  %629 = bitcast i32* %628 to <4 x i32>*
  %630 = load <4 x i32>, <4 x i32>* %629, align 4, !tbaa !5
  %631 = add <4 x i32> %627, <i32 1, i32 1, i32 1, i32 1>
  %632 = add <4 x i32> %630, <i32 1, i32 1, i32 1, i32 1>
  %633 = add <4 x i32> %631, %522
  %634 = add <4 x i32> %632, %522
  %635 = bitcast i32* %625 to <4 x i32>*
  store <4 x i32> %633, <4 x i32>* %635, align 4, !tbaa !5
  %636 = bitcast i32* %628 to <4 x i32>*
  store <4 x i32> %634, <4 x i32>* %636, align 4, !tbaa !5
  %637 = or i64 %622, 8
  %638 = add i64 %601, %637
  %639 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %638
  %640 = bitcast i32* %639 to <4 x i32>*
  %641 = load <4 x i32>, <4 x i32>* %640, align 4, !tbaa !5
  %642 = getelementptr i32, i32* %639, i64 4
  %643 = bitcast i32* %642 to <4 x i32>*
  %644 = load <4 x i32>, <4 x i32>* %643, align 4, !tbaa !5
  %645 = add <4 x i32> %641, <i32 1, i32 1, i32 1, i32 1>
  %646 = add <4 x i32> %644, <i32 1, i32 1, i32 1, i32 1>
  %647 = add <4 x i32> %645, %522
  %648 = add <4 x i32> %646, %522
  %649 = bitcast i32* %639 to <4 x i32>*
  store <4 x i32> %647, <4 x i32>* %649, align 4, !tbaa !5
  %650 = bitcast i32* %642 to <4 x i32>*
  store <4 x i32> %648, <4 x i32>* %650, align 4, !tbaa !5
  %651 = add i64 %622, 16
  %652 = add i64 %623, -2
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %621, !llvm.loop !10

; <label>:654:                                    ; preds = %621
  br label %655

; <label>:655:                                    ; preds = %654, %610
  %656 = phi i64 [ 0, %610 ], [ %651, %654 ]
  %657 = icmp eq i64 %617, 0
  br i1 %657, label %674, label %658

; <label>:658:                                    ; preds = %655
  br label %659

; <label>:659:                                    ; preds = %658
  %660 = add i64 %601, %656
  %661 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %660
  %662 = bitcast i32* %661 to <4 x i32>*
  %663 = load <4 x i32>, <4 x i32>* %662, align 4, !tbaa !5
  %664 = getelementptr i32, i32* %661, i64 4
  %665 = bitcast i32* %664 to <4 x i32>*
  %666 = load <4 x i32>, <4 x i32>* %665, align 4, !tbaa !5
  %667 = add <4 x i32> %663, <i32 1, i32 1, i32 1, i32 1>
  %668 = add <4 x i32> %666, <i32 1, i32 1, i32 1, i32 1>
  %669 = add <4 x i32> %667, %522
  %670 = add <4 x i32> %668, %522
  %671 = bitcast i32* %661 to <4 x i32>*
  store <4 x i32> %669, <4 x i32>* %671, align 4, !tbaa !5
  %672 = bitcast i32* %664 to <4 x i32>*
  store <4 x i32> %670, <4 x i32>* %672, align 4, !tbaa !5
  br label %673

; <label>:673:                                    ; preds = %659
  br label %674

; <label>:674:                                    ; preds = %655, %673
  %675 = icmp eq i64 %604, %607
  br i1 %675, label %591, label %676

; <label>:676:                                    ; preds = %674, %606, %600
  %677 = phi i64 [ %601, %606 ], [ %601, %600 ], [ %609, %674 ]
  br label %678

; <label>:678:                                    ; preds = %676, %678
  %679 = phi i64 [ %684, %678 ], [ %677, %676 ]
  %680 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4, !tbaa !5
  %682 = add i32 %681, 1
  %683 = add i32 %682, %519
  store i32 %683, i32* %680, align 4, !tbaa !5
  %684 = add nsw i64 %679, 1
  %685 = icmp slt i64 %684, %602
  br i1 %685, label %678, label %590, !llvm.loop !11

; <label>:686:                                    ; preds = %516
  store double 1.000000e+00, double* getelementptr inbounds ([75003 x double], [75003 x double]* @x, i64 0, i64 75001), align 8, !tbaa !1
  call fastcc void @conj_grad(double* nonnull %3)
  %687 = load i1, i1* @lastcol, align 4
  %688 = load i1, i1* @firstcol, align 4
  %689 = sext i1 %688 to i32
  %690 = select i1 %687, i32 75001, i32 1
  %691 = add nsw i32 %690, %689
  %692 = icmp slt i32 %691, 1
  br i1 %692, label %747, label %693

; <label>:693:                                    ; preds = %686
  %694 = sext i32 %691 to i64
  %695 = add nsw i64 %694, -1
  %696 = and i64 %694, 3
  %697 = icmp ult i64 %695, 3
  br i1 %697, label %727, label %698

; <label>:698:                                    ; preds = %693
  %699 = sub nsw i64 %694, %696
  br label %700

; <label>:700:                                    ; preds = %700, %698
  %701 = phi i64 [ 1, %698 ], [ %723, %700 ]
  %702 = phi double [ 0.000000e+00, %698 ], [ %722, %700 ]
  %703 = phi i64 [ %699, %698 ], [ %724, %700 ]
  %704 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %701
  %705 = load double, double* %704, align 8, !tbaa !1
  %706 = fmul double %705, %705
  %707 = fadd double %702, %706
  %708 = add nuw nsw i64 %701, 1
  %709 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %708
  %710 = load double, double* %709, align 8, !tbaa !1
  %711 = fmul double %710, %710
  %712 = fadd double %707, %711
  %713 = add nsw i64 %701, 2
  %714 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %713
  %715 = load double, double* %714, align 8, !tbaa !1
  %716 = fmul double %715, %715
  %717 = fadd double %712, %716
  %718 = add nsw i64 %701, 3
  %719 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %718
  %720 = load double, double* %719, align 8, !tbaa !1
  %721 = fmul double %720, %720
  %722 = fadd double %717, %721
  %723 = add nsw i64 %701, 4
  %724 = add i64 %703, -4
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %726, label %700

; <label>:726:                                    ; preds = %700
  br label %727

; <label>:727:                                    ; preds = %726, %693
  %728 = phi double [ undef, %693 ], [ %722, %726 ]
  %729 = phi i64 [ 1, %693 ], [ %723, %726 ]
  %730 = phi double [ 0.000000e+00, %693 ], [ %722, %726 ]
  %731 = icmp eq i64 %696, 0
  br i1 %731, label %745, label %732

; <label>:732:                                    ; preds = %727
  br label %733

; <label>:733:                                    ; preds = %733, %732
  %734 = phi i64 [ %741, %733 ], [ %729, %732 ]
  %735 = phi double [ %740, %733 ], [ %730, %732 ]
  %736 = phi i64 [ %742, %733 ], [ %696, %732 ]
  %737 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %734
  %738 = load double, double* %737, align 8, !tbaa !1
  %739 = fmul double %738, %738
  %740 = fadd double %735, %739
  %741 = add nuw nsw i64 %734, 1
  %742 = add i64 %736, -1
  %743 = icmp eq i64 %742, 0
  br i1 %743, label %744, label %733, !llvm.loop !13

; <label>:744:                                    ; preds = %733
  br label %745

; <label>:745:                                    ; preds = %727, %744
  %746 = phi double [ %728, %727 ], [ %740, %744 ]
  br label %747

; <label>:747:                                    ; preds = %745, %686
  %748 = phi double [ 0.000000e+00, %686 ], [ %746, %745 ]
  %749 = tail call double @sqrt(double %748) #6
  %750 = fdiv double 1.000000e+00, %749
  %751 = load i1, i1* @lastcol, align 4
  %752 = load i1, i1* @firstcol, align 4
  %753 = sext i1 %752 to i32
  %754 = select i1 %751, i32 75001, i32 1
  %755 = add nsw i32 %754, %753
  %756 = icmp slt i32 %755, 1
  br i1 %756, label %837, label %757

; <label>:757:                                    ; preds = %747
  %758 = sext i32 %755 to i64
  %759 = icmp ult i32 %755, 4
  br i1 %759, label %826, label %760

; <label>:760:                                    ; preds = %757
  %761 = and i64 %758, -4
  %762 = icmp eq i64 %761, 0
  %763 = or i64 %761, 1
  br i1 %762, label %826, label %764

; <label>:764:                                    ; preds = %760
  %765 = insertelement <2 x double> undef, double %750, i32 0
  %766 = shufflevector <2 x double> %765, <2 x double> undef, <2 x i32> zeroinitializer
  %767 = add nsw i64 %761, -4
  %768 = lshr exact i64 %767, 2
  %769 = add nuw nsw i64 %768, 1
  %770 = and i64 %769, 1
  %771 = icmp eq i64 %768, 0
  br i1 %771, label %806, label %772

; <label>:772:                                    ; preds = %764
  %773 = sub nsw i64 %769, %770
  br label %774

; <label>:774:                                    ; preds = %774, %772
  %775 = phi i64 [ 1, %772 ], [ %790, %774 ]
  %776 = phi i64 [ %773, %772 ], [ %803, %774 ]
  %777 = add nsw i64 %775, 4
  %778 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %775
  %779 = bitcast double* %778 to <2 x double>*
  %780 = load <2 x double>, <2 x double>* %779, align 8, !tbaa !1
  %781 = getelementptr double, double* %778, i64 2
  %782 = bitcast double* %781 to <2 x double>*
  %783 = load <2 x double>, <2 x double>* %782, align 8, !tbaa !1
  %784 = fmul <2 x double> %766, %780
  %785 = fmul <2 x double> %766, %783
  %786 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %775
  %787 = bitcast double* %786 to <2 x double>*
  store <2 x double> %784, <2 x double>* %787, align 8, !tbaa !1
  %788 = getelementptr double, double* %786, i64 2
  %789 = bitcast double* %788 to <2 x double>*
  store <2 x double> %785, <2 x double>* %789, align 8, !tbaa !1
  %790 = add i64 %775, 8
  %791 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %777
  %792 = bitcast double* %791 to <2 x double>*
  %793 = load <2 x double>, <2 x double>* %792, align 8, !tbaa !1
  %794 = getelementptr double, double* %791, i64 2
  %795 = bitcast double* %794 to <2 x double>*
  %796 = load <2 x double>, <2 x double>* %795, align 8, !tbaa !1
  %797 = fmul <2 x double> %766, %793
  %798 = fmul <2 x double> %766, %796
  %799 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %777
  %800 = bitcast double* %799 to <2 x double>*
  store <2 x double> %797, <2 x double>* %800, align 8, !tbaa !1
  %801 = getelementptr double, double* %799, i64 2
  %802 = bitcast double* %801 to <2 x double>*
  store <2 x double> %798, <2 x double>* %802, align 8, !tbaa !1
  %803 = add i64 %776, -2
  %804 = icmp eq i64 %803, 0
  br i1 %804, label %805, label %774, !llvm.loop !15

; <label>:805:                                    ; preds = %774
  br label %806

; <label>:806:                                    ; preds = %805, %764
  %807 = phi i64 [ 1, %764 ], [ %790, %805 ]
  %808 = icmp eq i64 %770, 0
  br i1 %808, label %824, label %809

; <label>:809:                                    ; preds = %806
  br label %810

; <label>:810:                                    ; preds = %809
  %811 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %807
  %812 = bitcast double* %811 to <2 x double>*
  %813 = load <2 x double>, <2 x double>* %812, align 8, !tbaa !1
  %814 = getelementptr double, double* %811, i64 2
  %815 = bitcast double* %814 to <2 x double>*
  %816 = load <2 x double>, <2 x double>* %815, align 8, !tbaa !1
  %817 = fmul <2 x double> %766, %813
  %818 = fmul <2 x double> %766, %816
  %819 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %807
  %820 = bitcast double* %819 to <2 x double>*
  store <2 x double> %817, <2 x double>* %820, align 8, !tbaa !1
  %821 = getelementptr double, double* %819, i64 2
  %822 = bitcast double* %821 to <2 x double>*
  store <2 x double> %818, <2 x double>* %822, align 8, !tbaa !1
  br label %823

; <label>:823:                                    ; preds = %810
  br label %824

; <label>:824:                                    ; preds = %806, %823
  %825 = icmp eq i64 %758, %761
  br i1 %825, label %837, label %826

; <label>:826:                                    ; preds = %824, %760, %757
  %827 = phi i64 [ 1, %760 ], [ 1, %757 ], [ %763, %824 ]
  br label %828

; <label>:828:                                    ; preds = %826, %828
  %829 = phi i64 [ %834, %828 ], [ %827, %826 ]
  %830 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %829
  %831 = load double, double* %830, align 8, !tbaa !1
  %832 = fmul double %750, %831
  %833 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %829
  store double %832, double* %833, align 8, !tbaa !1
  %834 = add nuw nsw i64 %829, 1
  %835 = icmp slt i64 %829, %758
  br i1 %835, label %828, label %836, !llvm.loop !16

; <label>:836:                                    ; preds = %828
  br label %837

; <label>:837:                                    ; preds = %836, %824, %747
  br label %838

; <label>:838:                                    ; preds = %838, %837
  %839 = phi i64 [ 0, %837 ], [ %874, %838 ]
  %840 = or i64 %839, 1
  %841 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %840
  %842 = bitcast double* %841 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %842, align 8, !tbaa !1
  %843 = getelementptr double, double* %841, i64 2
  %844 = bitcast double* %843 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %844, align 8, !tbaa !1
  %845 = or i64 %839, 5
  %846 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %845
  %847 = bitcast double* %846 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %847, align 8, !tbaa !1
  %848 = getelementptr double, double* %846, i64 2
  %849 = bitcast double* %848 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %849, align 8, !tbaa !1
  %850 = add nsw i64 %839, 8
  %851 = or i64 %850, 1
  %852 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %851
  %853 = bitcast double* %852 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %853, align 8, !tbaa !1
  %854 = getelementptr double, double* %852, i64 2
  %855 = bitcast double* %854 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %855, align 8, !tbaa !1
  %856 = add nsw i64 %839, 12
  %857 = or i64 %856, 1
  %858 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %857
  %859 = bitcast double* %858 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %859, align 8, !tbaa !1
  %860 = getelementptr double, double* %858, i64 2
  %861 = bitcast double* %860 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %861, align 8, !tbaa !1
  %862 = add nsw i64 %839, 16
  %863 = or i64 %862, 1
  %864 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %863
  %865 = bitcast double* %864 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %865, align 8, !tbaa !1
  %866 = getelementptr double, double* %864, i64 2
  %867 = bitcast double* %866 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %867, align 8, !tbaa !1
  %868 = add nsw i64 %839, 20
  %869 = or i64 %868, 1
  %870 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %869
  %871 = bitcast double* %870 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %871, align 8, !tbaa !1
  %872 = getelementptr double, double* %870, i64 2
  %873 = bitcast double* %872 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %873, align 8, !tbaa !1
  %874 = add nsw i64 %839, 24
  %875 = icmp eq i64 %874, 75000
  br i1 %875, label %876, label %838, !llvm.loop !17

; <label>:876:                                    ; preds = %838
  br label %877

; <label>:877:                                    ; preds = %876
  store double 1.000000e+00, double* getelementptr inbounds ([75003 x double], [75003 x double]* @x, i64 0, i64 75001), align 8, !tbaa !1
  tail call void @timer_clear(i32 1) #6
  tail call void @timer_start(i32 1) #6
  br label %878

; <label>:878:                                    ; preds = %1038, %877
  %879 = phi i32 [ 1, %877 ], [ %1039, %1038 ]
  call fastcc void @conj_grad(double* nonnull %3)
  %880 = load i1, i1* @lastcol, align 4
  %881 = load i1, i1* @firstcol, align 4
  %882 = sext i1 %881 to i32
  %883 = select i1 %880, i32 75001, i32 1
  %884 = add nsw i32 %883, %882
  %885 = icmp slt i32 %884, 1
  br i1 %885, label %938, label %886

; <label>:886:                                    ; preds = %878
  %887 = sext i32 %884 to i64
  %888 = and i64 %887, 1
  %889 = icmp eq i32 %884, 1
  br i1 %889, label %919, label %890

; <label>:890:                                    ; preds = %886
  %891 = sub nsw i64 %887, %888
  br label %892

; <label>:892:                                    ; preds = %892, %890
  %893 = phi i64 [ 1, %890 ], [ %915, %892 ]
  %894 = phi <2 x double> [ zeroinitializer, %890 ], [ %914, %892 ]
  %895 = phi i64 [ %891, %890 ], [ %916, %892 ]
  %896 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %893
  %897 = load double, double* %896, align 8, !tbaa !1
  %898 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %893
  %899 = load double, double* %898, align 8, !tbaa !1
  %900 = insertelement <2 x double> undef, double %897, i32 0
  %901 = insertelement <2 x double> %900, double %897, i32 1
  %902 = insertelement <2 x double> %900, double %899, i32 1
  %903 = fmul <2 x double> %901, %902
  %904 = fadd <2 x double> %894, %903
  %905 = add nuw nsw i64 %893, 1
  %906 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %905
  %907 = load double, double* %906, align 8, !tbaa !1
  %908 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %905
  %909 = load double, double* %908, align 8, !tbaa !1
  %910 = insertelement <2 x double> undef, double %907, i32 0
  %911 = insertelement <2 x double> %910, double %907, i32 1
  %912 = insertelement <2 x double> %910, double %909, i32 1
  %913 = fmul <2 x double> %911, %912
  %914 = fadd <2 x double> %904, %913
  %915 = add nsw i64 %893, 2
  %916 = add i64 %895, -2
  %917 = icmp eq i64 %916, 0
  br i1 %917, label %918, label %892

; <label>:918:                                    ; preds = %892
  br label %919

; <label>:919:                                    ; preds = %918, %886
  %920 = phi <2 x double> [ undef, %886 ], [ %914, %918 ]
  %921 = phi i64 [ 1, %886 ], [ %915, %918 ]
  %922 = phi <2 x double> [ zeroinitializer, %886 ], [ %914, %918 ]
  %923 = icmp eq i64 %888, 0
  br i1 %923, label %936, label %924

; <label>:924:                                    ; preds = %919
  br label %925

; <label>:925:                                    ; preds = %924
  %926 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %921
  %927 = load double, double* %926, align 8, !tbaa !1
  %928 = insertelement <2 x double> undef, double %927, i32 0
  br label %929

; <label>:929:                                    ; preds = %925
  %930 = insertelement <2 x double> %928, double %927, i32 1
  %931 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %921
  %932 = load double, double* %931, align 8, !tbaa !1
  %933 = insertelement <2 x double> %928, double %932, i32 1
  %934 = fmul <2 x double> %930, %933
  %935 = fadd <2 x double> %922, %934
  br label %936

; <label>:936:                                    ; preds = %919, %929
  %937 = phi <2 x double> [ %920, %919 ], [ %935, %929 ]
  br label %938

; <label>:938:                                    ; preds = %936, %878
  %939 = phi <2 x double> [ zeroinitializer, %878 ], [ %937, %936 ]
  %940 = extractelement <2 x double> %939, i32 0
  %941 = tail call double @sqrt(double %940) #6
  %942 = fdiv double 1.000000e+00, %941
  %943 = extractelement <2 x double> %939, i32 1
  %944 = fdiv double 1.000000e+00, %943
  %945 = fadd double %944, 6.000000e+01
  %946 = icmp eq i32 %879, 1
  br i1 %946, label %947, label %949

; <label>:947:                                    ; preds = %938
  %948 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @str.26, i64 0, i64 0))
  br label %949

; <label>:949:                                    ; preds = %947, %938
  %950 = load double, double* %3, align 8, !tbaa !1
  %951 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %879, double %950, double %945)
  %952 = load i1, i1* @lastcol, align 4
  %953 = load i1, i1* @firstcol, align 4
  %954 = sext i1 %953 to i32
  %955 = select i1 %952, i32 75001, i32 1
  %956 = add nsw i32 %955, %954
  %957 = icmp slt i32 %956, 1
  br i1 %957, label %1038, label %958

; <label>:958:                                    ; preds = %949
  %959 = sext i32 %956 to i64
  %960 = icmp ult i32 %956, 4
  br i1 %960, label %1027, label %961

; <label>:961:                                    ; preds = %958
  %962 = and i64 %959, -4
  %963 = icmp eq i64 %962, 0
  %964 = or i64 %962, 1
  br i1 %963, label %1027, label %965

; <label>:965:                                    ; preds = %961
  %966 = insertelement <2 x double> undef, double %942, i32 0
  %967 = shufflevector <2 x double> %966, <2 x double> undef, <2 x i32> zeroinitializer
  %968 = add nsw i64 %962, -4
  %969 = lshr exact i64 %968, 2
  %970 = add nuw nsw i64 %969, 1
  %971 = and i64 %970, 1
  %972 = icmp eq i64 %969, 0
  br i1 %972, label %1007, label %973

; <label>:973:                                    ; preds = %965
  %974 = sub nsw i64 %970, %971
  br label %975

; <label>:975:                                    ; preds = %975, %973
  %976 = phi i64 [ 1, %973 ], [ %991, %975 ]
  %977 = phi i64 [ %974, %973 ], [ %1004, %975 ]
  %978 = add nsw i64 %976, 4
  %979 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %976
  %980 = bitcast double* %979 to <2 x double>*
  %981 = load <2 x double>, <2 x double>* %980, align 8, !tbaa !1
  %982 = getelementptr double, double* %979, i64 2
  %983 = bitcast double* %982 to <2 x double>*
  %984 = load <2 x double>, <2 x double>* %983, align 8, !tbaa !1
  %985 = fmul <2 x double> %967, %981
  %986 = fmul <2 x double> %967, %984
  %987 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %976
  %988 = bitcast double* %987 to <2 x double>*
  store <2 x double> %985, <2 x double>* %988, align 8, !tbaa !1
  %989 = getelementptr double, double* %987, i64 2
  %990 = bitcast double* %989 to <2 x double>*
  store <2 x double> %986, <2 x double>* %990, align 8, !tbaa !1
  %991 = add i64 %976, 8
  %992 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %978
  %993 = bitcast double* %992 to <2 x double>*
  %994 = load <2 x double>, <2 x double>* %993, align 8, !tbaa !1
  %995 = getelementptr double, double* %992, i64 2
  %996 = bitcast double* %995 to <2 x double>*
  %997 = load <2 x double>, <2 x double>* %996, align 8, !tbaa !1
  %998 = fmul <2 x double> %967, %994
  %999 = fmul <2 x double> %967, %997
  %1000 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %978
  %1001 = bitcast double* %1000 to <2 x double>*
  store <2 x double> %998, <2 x double>* %1001, align 8, !tbaa !1
  %1002 = getelementptr double, double* %1000, i64 2
  %1003 = bitcast double* %1002 to <2 x double>*
  store <2 x double> %999, <2 x double>* %1003, align 8, !tbaa !1
  %1004 = add i64 %977, -2
  %1005 = icmp eq i64 %1004, 0
  br i1 %1005, label %1006, label %975, !llvm.loop !18

; <label>:1006:                                   ; preds = %975
  br label %1007

; <label>:1007:                                   ; preds = %1006, %965
  %1008 = phi i64 [ 1, %965 ], [ %991, %1006 ]
  %1009 = icmp eq i64 %971, 0
  br i1 %1009, label %1025, label %1010

; <label>:1010:                                   ; preds = %1007
  br label %1011

; <label>:1011:                                   ; preds = %1010
  %1012 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %1008
  %1013 = bitcast double* %1012 to <2 x double>*
  %1014 = load <2 x double>, <2 x double>* %1013, align 8, !tbaa !1
  %1015 = getelementptr double, double* %1012, i64 2
  %1016 = bitcast double* %1015 to <2 x double>*
  %1017 = load <2 x double>, <2 x double>* %1016, align 8, !tbaa !1
  %1018 = fmul <2 x double> %967, %1014
  %1019 = fmul <2 x double> %967, %1017
  %1020 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %1008
  %1021 = bitcast double* %1020 to <2 x double>*
  store <2 x double> %1018, <2 x double>* %1021, align 8, !tbaa !1
  %1022 = getelementptr double, double* %1020, i64 2
  %1023 = bitcast double* %1022 to <2 x double>*
  store <2 x double> %1019, <2 x double>* %1023, align 8, !tbaa !1
  br label %1024

; <label>:1024:                                   ; preds = %1011
  br label %1025

; <label>:1025:                                   ; preds = %1007, %1024
  %1026 = icmp eq i64 %959, %962
  br i1 %1026, label %1038, label %1027

; <label>:1027:                                   ; preds = %1025, %961, %958
  %1028 = phi i64 [ 1, %961 ], [ 1, %958 ], [ %964, %1025 ]
  br label %1029

; <label>:1029:                                   ; preds = %1027, %1029
  %1030 = phi i64 [ %1035, %1029 ], [ %1028, %1027 ]
  %1031 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %1030
  %1032 = load double, double* %1031, align 8, !tbaa !1
  %1033 = fmul double %942, %1032
  %1034 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %1030
  store double %1033, double* %1034, align 8, !tbaa !1
  %1035 = add nuw nsw i64 %1030, 1
  %1036 = icmp slt i64 %1030, %959
  br i1 %1036, label %1029, label %1037, !llvm.loop !19

; <label>:1037:                                   ; preds = %1029
  br label %1038

; <label>:1038:                                   ; preds = %1037, %1025, %949
  %1039 = add nuw nsw i32 %879, 1
  %1040 = icmp eq i32 %1039, 11
  br i1 %1040, label %1041, label %878

; <label>:1041:                                   ; preds = %1038
  tail call void @timer_stop(i32 1) #6
  %1042 = tail call double @timer_read(i32 1) #6
  %1043 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.24, i64 0, i64 0))
  %1044 = fadd double %945, 0xC036B6767CEA459A
  %1045 = tail call double @fabs(double %1044) #8
  %1046 = fcmp ugt double %1045, 1.000000e-10
  br i1 %1046, label %1051, label %1047

; <label>:1047:                                   ; preds = %1041
  %1048 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.25, i64 0, i64 0))
  %1049 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %945)
  %1050 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), double %1044)
  br label %1051

; <label>:1051:                                   ; preds = %1041, %1047
  %1052 = phi i32 [ 1, %1047 ], [ 0, %1041 ]
  %1053 = fcmp une double %1042, 0.000000e+00
  br i1 %1053, label %1054, label %1057

; <label>:1054:                                   ; preds = %1051
  %1055 = fdiv double 5.470875e+10, %1042
  %1056 = fdiv double %1055, 1.000000e+06
  br label %1057

; <label>:1057:                                   ; preds = %1051, %1054
  %1058 = phi double [ %1056, %1054 ], [ 0.000000e+00, %1051 ]
  tail call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8 signext 66, i32 75000, i32 0, i32 0, i32 75, double %1042, double %1058, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1052, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #6
  call void @llvm.lifetime.end(i64 8, i8* %4) #6
  ret i32 0

; <label>:1059:                                   ; preds = %428
  %1060 = add nsw i32 %429, 1
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %1061
  store double %436, double* %1062, align 8, !tbaa !1
  %1063 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %1061
  store i32 %432, i32* %1063, align 4, !tbaa !5
  br label %1064

; <label>:1064:                                   ; preds = %1059, %428
  %1065 = phi i32 [ %1060, %1059 ], [ %429, %428 ]
  %1066 = add nsw i64 %413, 2
  %1067 = add i32 %415, -2
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %438, label %412
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

declare double @randlc(double*, double) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @conj_grad(double* nocapture) unnamed_addr #0 {
  store double 0.000000e+00, double* @conj_grad.rho, align 8, !tbaa !1
  %2 = load i1, i1* @naa, align 4
  %3 = select i1 %2, i64 600008, i64 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %3, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %3, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @w, i64 0, i64 1) to i8*), i8 0, i64 %3, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @r, i64 0, i64 1) to i8*), i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @x, i64 0, i64 1) to i8*), i64 %3, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @p, i64 0, i64 1) to i8*), i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @x, i64 0, i64 1) to i8*), i64 %3, i32 8, i1 false)
  %4 = load i1, i1* @lastcol, align 4
  %5 = load i1, i1* @firstcol, align 4
  %6 = sext i1 %5 to i32
  %7 = select i1 %4, i32 75001, i32 1
  %8 = add nsw i32 %7, %6
  %9 = icmp slt i32 %8, 1
  %10 = sext i32 %8 to i64
  br i1 %9, label %39, label %11

; <label>:11:                                     ; preds = %1
  %12 = add nsw i64 %10, -1
  %13 = and i64 %10, 3
  %14 = icmp ult i64 %12, 3
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %11
  %16 = sub nsw i64 %10, %13
  br label %75

; <label>:17:                                     ; preds = %75
  br label %18

; <label>:18:                                     ; preds = %17, %11
  %19 = phi double [ undef, %11 ], [ %97, %17 ]
  %20 = phi i64 [ 1, %11 ], [ %98, %17 ]
  %21 = phi double [ 0.000000e+00, %11 ], [ %97, %17 ]
  %22 = icmp eq i64 %13, 0
  br i1 %22, label %36, label %23

; <label>:23:                                     ; preds = %18
  br label %24

; <label>:24:                                     ; preds = %24, %23
  %25 = phi i64 [ %32, %24 ], [ %20, %23 ]
  %26 = phi double [ %31, %24 ], [ %21, %23 ]
  %27 = phi i64 [ %33, %24 ], [ %13, %23 ]
  %28 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %25
  %29 = load double, double* %28, align 8, !tbaa !1
  %30 = fmul double %29, %29
  %31 = fadd double %26, %30
  %32 = add nuw nsw i64 %25, 1
  %33 = add i64 %27, -1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %24, !llvm.loop !20

; <label>:35:                                     ; preds = %24
  br label %36

; <label>:36:                                     ; preds = %18, %35
  %37 = phi double [ %19, %18 ], [ %31, %35 ]
  store double %37, double* @conj_grad.rho, align 8, !tbaa !1
  %38 = bitcast double %37 to i64
  br label %39

; <label>:39:                                     ; preds = %1, %36
  %40 = phi i64 [ %38, %36 ], [ 0, %1 ]
  %41 = load i1, i1* @lastrow, align 4
  %42 = load i1, i1* @firstrow, align 4
  %43 = sext i1 %42 to i32
  %44 = select i1 %41, i32 75001, i32 1
  %45 = add nsw i32 %44, %43
  %46 = icmp slt i32 %45, 1
  %47 = sext i32 %45 to i64
  %48 = icmp sgt i32 %8, 1
  %49 = select i1 %48, i32 %8, i32 1
  %50 = add nsw i32 %49, -1
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 3
  %53 = add nuw nsw i64 %52, 8
  %54 = add nsw i64 %10, -1
  %55 = add nsw i64 %10, -4
  %56 = lshr i64 %55, 2
  %57 = add nuw nsw i64 %56, 1
  %58 = and i64 %10, 3
  %59 = icmp ult i64 %54, 3
  %60 = icmp eq i64 %58, 0
  %61 = and i64 %10, 1
  %62 = icmp eq i64 %54, 0
  %63 = icmp eq i64 %61, 0
  %64 = icmp ult i32 %8, 4
  %65 = and i64 %10, -4
  %66 = icmp eq i64 %65, 0
  %67 = or i64 %65, 1
  %68 = and i64 %57, 1
  %69 = icmp eq i64 %56, 0
  %70 = icmp eq i64 %68, 0
  %71 = icmp eq i64 %10, %65
  %72 = sub nsw i64 %57, %68
  %73 = sub nsw i64 %10, %61
  %74 = sub nsw i64 %10, %58
  br label %101

; <label>:75:                                     ; preds = %75, %15
  %76 = phi i64 [ 1, %15 ], [ %98, %75 ]
  %77 = phi double [ 0.000000e+00, %15 ], [ %97, %75 ]
  %78 = phi i64 [ %16, %15 ], [ %99, %75 ]
  %79 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %76
  %80 = load double, double* %79, align 8, !tbaa !1
  %81 = fmul double %80, %80
  %82 = fadd double %77, %81
  %83 = add nuw nsw i64 %76, 1
  %84 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %83
  %85 = load double, double* %84, align 8, !tbaa !1
  %86 = fmul double %85, %85
  %87 = fadd double %82, %86
  %88 = add nsw i64 %76, 2
  %89 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %88
  %90 = load double, double* %89, align 8, !tbaa !1
  %91 = fmul double %90, %90
  %92 = fadd double %87, %91
  %93 = add nsw i64 %76, 3
  %94 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !1
  %96 = fmul double %95, %95
  %97 = fadd double %92, %96
  %98 = add nsw i64 %76, 4
  %99 = add i64 %78, -4
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %17, label %75

; <label>:101:                                    ; preds = %397, %39
  %102 = phi i64 [ %40, %39 ], [ %399, %397 ]
  %103 = phi i32 [ 1, %39 ], [ %403, %397 ]
  %104 = bitcast i64 %102 to double
  br i1 %46, label %107, label %105

; <label>:105:                                    ; preds = %101
  br label %111

; <label>:106:                                    ; preds = %176
  br label %107

; <label>:107:                                    ; preds = %106, %101
  %108 = phi double [ 0.000000e+00, %101 ], [ %178, %106 ]
  br i1 %9, label %109, label %183

; <label>:109:                                    ; preds = %107
  %110 = fdiv double %104, 0.000000e+00
  br label %280

; <label>:111:                                    ; preds = %105, %176
  %112 = phi i64 [ %115, %176 ], [ 1, %105 ]
  %113 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = add nuw nsw i64 %112, 1
  %116 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4, !tbaa !5
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %176

; <label>:119:                                    ; preds = %111
  %120 = sext i32 %114 to i64
  %121 = sext i32 %117 to i64
  %122 = sext i32 %114 to i64
  %123 = sub nsw i64 %121, %122
  %124 = add nsw i64 %121, -1
  %125 = and i64 %123, 1
  %126 = icmp eq i64 %124, %122
  br i1 %126, label %156, label %127

; <label>:127:                                    ; preds = %119
  %128 = sub nsw i64 %123, %125
  br label %129

; <label>:129:                                    ; preds = %129, %127
  %130 = phi i64 [ %120, %127 ], [ %152, %129 ]
  %131 = phi double [ 0.000000e+00, %127 ], [ %151, %129 ]
  %132 = phi i64 [ %128, %127 ], [ %153, %129 ]
  %133 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %130
  %134 = load double, double* %133, align 8, !tbaa !1
  %135 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %130
  %136 = load i32, i32* %135, align 4, !tbaa !5
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %137
  %139 = load double, double* %138, align 8, !tbaa !1
  %140 = fmul double %134, %139
  %141 = fadd double %131, %140
  %142 = add nsw i64 %130, 1
  %143 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %142
  %144 = load double, double* %143, align 8, !tbaa !1
  %145 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %142
  %146 = load i32, i32* %145, align 4, !tbaa !5
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %147
  %149 = load double, double* %148, align 8, !tbaa !1
  %150 = fmul double %144, %149
  %151 = fadd double %141, %150
  %152 = add nsw i64 %130, 2
  %153 = add i64 %132, -2
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %129

; <label>:155:                                    ; preds = %129
  br label %156

; <label>:156:                                    ; preds = %155, %119
  %157 = phi double [ undef, %119 ], [ %151, %155 ]
  %158 = phi i64 [ %120, %119 ], [ %152, %155 ]
  %159 = phi double [ 0.000000e+00, %119 ], [ %151, %155 ]
  %160 = icmp eq i64 %125, 0
  br i1 %160, label %173, label %161

; <label>:161:                                    ; preds = %156
  br label %162

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %162
  %164 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %158
  %165 = load double, double* %164, align 8, !tbaa !1
  %166 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %158
  %167 = load i32, i32* %166, align 4, !tbaa !5
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %168
  %170 = load double, double* %169, align 8, !tbaa !1
  %171 = fmul double %165, %170
  %172 = fadd double %159, %171
  br label %173

; <label>:173:                                    ; preds = %156, %163
  %174 = phi double [ %157, %156 ], [ %172, %163 ]
  %175 = bitcast double %174 to i64
  br label %176

; <label>:176:                                    ; preds = %173, %111
  %177 = phi i64 [ %175, %173 ], [ 0, %111 ]
  %178 = phi double [ %174, %173 ], [ 0.000000e+00, %111 ]
  %179 = getelementptr inbounds [75003 x double], [75003 x double]* @w, i64 0, i64 %112
  store double %178, double* %179, align 8, !tbaa !1
  %180 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %112
  %181 = bitcast double* %180 to i64*
  store i64 %177, i64* %181, align 8, !tbaa !1
  %182 = icmp slt i64 %112, %47
  br i1 %182, label %111, label %106

; <label>:183:                                    ; preds = %107
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([75003 x double], [75003 x double]* @w, i64 0, i64 1) to i8*), i8 0, i64 %53, i32 8, i1 false)
  br i1 %59, label %220, label %184

; <label>:184:                                    ; preds = %183
  br label %185

; <label>:185:                                    ; preds = %185, %184
  %186 = phi i64 [ 1, %184 ], [ %216, %185 ]
  %187 = phi double [ 0.000000e+00, %184 ], [ %215, %185 ]
  %188 = phi i64 [ %74, %184 ], [ %217, %185 ]
  %189 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %186
  %190 = load double, double* %189, align 8, !tbaa !1
  %191 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %186
  %192 = load double, double* %191, align 8, !tbaa !1
  %193 = fmul double %190, %192
  %194 = fadd double %187, %193
  %195 = add nuw nsw i64 %186, 1
  %196 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %195
  %197 = load double, double* %196, align 8, !tbaa !1
  %198 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %195
  %199 = load double, double* %198, align 8, !tbaa !1
  %200 = fmul double %197, %199
  %201 = fadd double %194, %200
  %202 = add nsw i64 %186, 2
  %203 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %202
  %204 = load double, double* %203, align 8, !tbaa !1
  %205 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %202
  %206 = load double, double* %205, align 8, !tbaa !1
  %207 = fmul double %204, %206
  %208 = fadd double %201, %207
  %209 = add nsw i64 %186, 3
  %210 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %209
  %211 = load double, double* %210, align 8, !tbaa !1
  %212 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %209
  %213 = load double, double* %212, align 8, !tbaa !1
  %214 = fmul double %211, %213
  %215 = fadd double %208, %214
  %216 = add nsw i64 %186, 4
  %217 = add i64 %188, -4
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %185

; <label>:219:                                    ; preds = %185
  br label %220

; <label>:220:                                    ; preds = %219, %183
  %221 = phi double [ undef, %183 ], [ %215, %219 ]
  %222 = phi i64 [ 1, %183 ], [ %216, %219 ]
  %223 = phi double [ 0.000000e+00, %183 ], [ %215, %219 ]
  br i1 %60, label %239, label %224

; <label>:224:                                    ; preds = %220
  br label %225

; <label>:225:                                    ; preds = %225, %224
  %226 = phi i64 [ %222, %224 ], [ %235, %225 ]
  %227 = phi double [ %223, %224 ], [ %234, %225 ]
  %228 = phi i64 [ %58, %224 ], [ %236, %225 ]
  %229 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %226
  %230 = load double, double* %229, align 8, !tbaa !1
  %231 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %226
  %232 = load double, double* %231, align 8, !tbaa !1
  %233 = fmul double %230, %232
  %234 = fadd double %227, %233
  %235 = add nuw nsw i64 %226, 1
  %236 = add i64 %228, -1
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %225, !llvm.loop !21

; <label>:238:                                    ; preds = %225
  br label %239

; <label>:239:                                    ; preds = %220, %238
  %240 = phi double [ %221, %220 ], [ %234, %238 ]
  %241 = fdiv double %104, %240
  br i1 %9, label %280, label %242

; <label>:242:                                    ; preds = %239
  br i1 %62, label %285, label %243

; <label>:243:                                    ; preds = %242
  br label %244

; <label>:244:                                    ; preds = %244, %243
  %245 = phi i64 [ 1, %243 ], [ %277, %244 ]
  %246 = phi double [ 0.000000e+00, %243 ], [ %276, %244 ]
  %247 = phi i64 [ %73, %243 ], [ %278, %244 ]
  %248 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %245
  %249 = load double, double* %248, align 8, !tbaa !1
  %250 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %245
  %251 = load double, double* %250, align 8, !tbaa !1
  %252 = fmul double %241, %251
  %253 = fsub double %249, %252
  %254 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %245
  %255 = load double, double* %254, align 8, !tbaa !1
  %256 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %245
  %257 = load double, double* %256, align 8, !tbaa !1
  %258 = fmul double %241, %257
  %259 = fadd double %255, %258
  store double %259, double* %254, align 8, !tbaa !1
  store double %253, double* %248, align 8, !tbaa !1
  %260 = fmul double %253, %253
  %261 = fadd double %260, %246
  %262 = add nuw nsw i64 %245, 1
  %263 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %262
  %264 = load double, double* %263, align 8, !tbaa !1
  %265 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %262
  %266 = load double, double* %265, align 8, !tbaa !1
  %267 = fmul double %241, %266
  %268 = fsub double %264, %267
  %269 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %262
  %270 = load double, double* %269, align 8, !tbaa !1
  %271 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %262
  %272 = load double, double* %271, align 8, !tbaa !1
  %273 = fmul double %241, %272
  %274 = fadd double %270, %273
  store double %274, double* %269, align 8, !tbaa !1
  store double %268, double* %263, align 8, !tbaa !1
  %275 = fmul double %268, %268
  %276 = fadd double %275, %261
  %277 = add nsw i64 %245, 2
  %278 = add i64 %247, -2
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %284, label %244

; <label>:280:                                    ; preds = %109, %239
  %281 = phi double [ %110, %109 ], [ %241, %239 ]
  %282 = phi double [ 0.000000e+00, %109 ], [ %240, %239 ]
  %283 = fdiv double 0.000000e+00, %104
  br label %397

; <label>:284:                                    ; preds = %244
  br label %285

; <label>:285:                                    ; preds = %284, %242
  %286 = phi double [ undef, %242 ], [ %276, %284 ]
  %287 = phi i64 [ 1, %242 ], [ %277, %284 ]
  %288 = phi double [ 0.000000e+00, %242 ], [ %276, %284 ]
  br i1 %63, label %306, label %289

; <label>:289:                                    ; preds = %285
  br label %290

; <label>:290:                                    ; preds = %289
  %291 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %287
  %292 = load double, double* %291, align 8, !tbaa !1
  %293 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %287
  %294 = load double, double* %293, align 8, !tbaa !1
  %295 = fmul double %241, %294
  %296 = fsub double %292, %295
  %297 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %287
  %298 = load double, double* %297, align 8, !tbaa !1
  %299 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %287
  %300 = load double, double* %299, align 8, !tbaa !1
  %301 = fmul double %241, %300
  %302 = fadd double %298, %301
  store double %302, double* %297, align 8, !tbaa !1
  store double %296, double* %291, align 8, !tbaa !1
  br label %303

; <label>:303:                                    ; preds = %290
  %304 = fmul double %296, %296
  %305 = fadd double %304, %288
  br label %306

; <label>:306:                                    ; preds = %285, %303
  %307 = phi double [ %286, %285 ], [ %305, %303 ]
  %308 = fdiv double %307, %104
  %309 = bitcast double %307 to i64
  br i1 %9, label %397, label %310

; <label>:310:                                    ; preds = %306
  br i1 %64, label %384, label %311

; <label>:311:                                    ; preds = %310
  br i1 %66, label %384, label %312

; <label>:312:                                    ; preds = %311
  %313 = insertelement <2 x double> undef, double %308, i32 0
  %314 = shufflevector <2 x double> %313, <2 x double> undef, <2 x i32> zeroinitializer
  br i1 %69, label %360, label %315

; <label>:315:                                    ; preds = %312
  br label %316

; <label>:316:                                    ; preds = %316, %315
  %317 = phi i64 [ 1, %315 ], [ %338, %316 ]
  %318 = phi i64 [ %72, %315 ], [ %357, %316 ]
  %319 = add nsw i64 %317, 4
  %320 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %317
  %321 = bitcast double* %320 to <2 x double>*
  %322 = load <2 x double>, <2 x double>* %321, align 8, !tbaa !1
  %323 = getelementptr double, double* %320, i64 2
  %324 = bitcast double* %323 to <2 x double>*
  %325 = load <2 x double>, <2 x double>* %324, align 8, !tbaa !1
  %326 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %317
  %327 = bitcast double* %326 to <2 x double>*
  %328 = load <2 x double>, <2 x double>* %327, align 8, !tbaa !1
  %329 = getelementptr double, double* %326, i64 2
  %330 = bitcast double* %329 to <2 x double>*
  %331 = load <2 x double>, <2 x double>* %330, align 8, !tbaa !1
  %332 = fmul <2 x double> %314, %328
  %333 = fmul <2 x double> %314, %331
  %334 = fadd <2 x double> %322, %332
  %335 = fadd <2 x double> %325, %333
  %336 = bitcast double* %326 to <2 x double>*
  store <2 x double> %334, <2 x double>* %336, align 8, !tbaa !1
  %337 = bitcast double* %329 to <2 x double>*
  store <2 x double> %335, <2 x double>* %337, align 8, !tbaa !1
  %338 = add i64 %317, 8
  %339 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %319
  %340 = bitcast double* %339 to <2 x double>*
  %341 = load <2 x double>, <2 x double>* %340, align 8, !tbaa !1
  %342 = getelementptr double, double* %339, i64 2
  %343 = bitcast double* %342 to <2 x double>*
  %344 = load <2 x double>, <2 x double>* %343, align 8, !tbaa !1
  %345 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %319
  %346 = bitcast double* %345 to <2 x double>*
  %347 = load <2 x double>, <2 x double>* %346, align 8, !tbaa !1
  %348 = getelementptr double, double* %345, i64 2
  %349 = bitcast double* %348 to <2 x double>*
  %350 = load <2 x double>, <2 x double>* %349, align 8, !tbaa !1
  %351 = fmul <2 x double> %314, %347
  %352 = fmul <2 x double> %314, %350
  %353 = fadd <2 x double> %341, %351
  %354 = fadd <2 x double> %344, %352
  %355 = bitcast double* %345 to <2 x double>*
  store <2 x double> %353, <2 x double>* %355, align 8, !tbaa !1
  %356 = bitcast double* %348 to <2 x double>*
  store <2 x double> %354, <2 x double>* %356, align 8, !tbaa !1
  %357 = add i64 %318, -2
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %316, !llvm.loop !22

; <label>:359:                                    ; preds = %316
  br label %360

; <label>:360:                                    ; preds = %359, %312
  %361 = phi i64 [ 1, %312 ], [ %338, %359 ]
  br i1 %70, label %383, label %362

; <label>:362:                                    ; preds = %360
  br label %363

; <label>:363:                                    ; preds = %362
  %364 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %361
  %365 = bitcast double* %364 to <2 x double>*
  %366 = load <2 x double>, <2 x double>* %365, align 8, !tbaa !1
  %367 = getelementptr double, double* %364, i64 2
  %368 = bitcast double* %367 to <2 x double>*
  %369 = load <2 x double>, <2 x double>* %368, align 8, !tbaa !1
  %370 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %361
  %371 = bitcast double* %370 to <2 x double>*
  %372 = load <2 x double>, <2 x double>* %371, align 8, !tbaa !1
  %373 = getelementptr double, double* %370, i64 2
  %374 = bitcast double* %373 to <2 x double>*
  %375 = load <2 x double>, <2 x double>* %374, align 8, !tbaa !1
  %376 = fmul <2 x double> %314, %372
  %377 = fmul <2 x double> %314, %375
  %378 = fadd <2 x double> %366, %376
  %379 = fadd <2 x double> %369, %377
  %380 = bitcast double* %370 to <2 x double>*
  store <2 x double> %378, <2 x double>* %380, align 8, !tbaa !1
  %381 = bitcast double* %373 to <2 x double>*
  store <2 x double> %379, <2 x double>* %381, align 8, !tbaa !1
  br label %382

; <label>:382:                                    ; preds = %363
  br label %383

; <label>:383:                                    ; preds = %360, %382
  br i1 %71, label %397, label %384

; <label>:384:                                    ; preds = %383, %311, %310
  %385 = phi i64 [ 1, %311 ], [ 1, %310 ], [ %67, %383 ]
  br label %386

; <label>:386:                                    ; preds = %384, %386
  %387 = phi i64 [ %394, %386 ], [ %385, %384 ]
  %388 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %387
  %389 = load double, double* %388, align 8, !tbaa !1
  %390 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %387
  %391 = load double, double* %390, align 8, !tbaa !1
  %392 = fmul double %308, %391
  %393 = fadd double %389, %392
  store double %393, double* %390, align 8, !tbaa !1
  %394 = add nuw nsw i64 %387, 1
  %395 = icmp slt i64 %387, %10
  br i1 %395, label %386, label %396, !llvm.loop !23

; <label>:396:                                    ; preds = %386
  br label %397

; <label>:397:                                    ; preds = %396, %383, %280, %306
  %398 = phi double [ 0.000000e+00, %280 ], [ %307, %306 ], [ %307, %383 ], [ %307, %396 ]
  %399 = phi i64 [ 0, %280 ], [ %309, %306 ], [ %309, %383 ], [ %309, %396 ]
  %400 = phi double [ %283, %280 ], [ %308, %306 ], [ %308, %383 ], [ %308, %396 ]
  %401 = phi double [ %282, %280 ], [ %240, %306 ], [ %240, %383 ], [ %240, %396 ]
  %402 = phi double [ %281, %280 ], [ %241, %306 ], [ %241, %383 ], [ %241, %396 ]
  %403 = add nuw nsw i32 %103, 1
  %404 = icmp eq i32 %403, 26
  br i1 %404, label %405, label %101

; <label>:405:                                    ; preds = %397
  store double %108, double* @conj_grad.sum, align 8, !tbaa !1
  store i64 %102, i64* bitcast (double* @conj_grad.rho0 to i64*), align 8, !tbaa !1
  store double %398, double* @conj_grad.rho, align 8, !tbaa !1
  store double %401, double* @conj_grad.d, align 8, !tbaa !1
  store double %402, double* @conj_grad.alpha, align 8, !tbaa !1
  store double %400, double* @conj_grad.beta, align 8, !tbaa !1
  store double 0.000000e+00, double* @conj_grad.sum, align 8, !tbaa !1
  br i1 %46, label %409, label %406

; <label>:406:                                    ; preds = %405
  %407 = load i32, i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  br label %416

; <label>:408:                                    ; preds = %480
  store double %482, double* @conj_grad.d, align 8, !tbaa !1
  br label %409

; <label>:409:                                    ; preds = %408, %405
  br i1 %9, label %551, label %410

; <label>:410:                                    ; preds = %409
  %411 = add nsw i64 %10, -1
  %412 = and i64 %10, 3
  %413 = icmp ult i64 %411, 3
  br i1 %413, label %526, label %414

; <label>:414:                                    ; preds = %410
  %415 = sub nsw i64 %10, %412
  br label %487

; <label>:416:                                    ; preds = %480, %406
  %417 = phi i32 [ %421, %480 ], [ %407, %406 ]
  %418 = phi i64 [ %419, %480 ], [ 1, %406 ]
  %419 = add nuw nsw i64 %418, 1
  %420 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4, !tbaa !5
  %422 = icmp slt i32 %417, %421
  br i1 %422, label %423, label %480

; <label>:423:                                    ; preds = %416
  %424 = sext i32 %417 to i64
  %425 = sext i32 %421 to i64
  %426 = sext i32 %417 to i64
  %427 = sub nsw i64 %425, %426
  %428 = add nsw i64 %425, -1
  %429 = and i64 %427, 1
  %430 = icmp eq i64 %428, %426
  br i1 %430, label %460, label %431

; <label>:431:                                    ; preds = %423
  %432 = sub nsw i64 %427, %429
  br label %433

; <label>:433:                                    ; preds = %433, %431
  %434 = phi i64 [ %424, %431 ], [ %456, %433 ]
  %435 = phi double [ 0.000000e+00, %431 ], [ %455, %433 ]
  %436 = phi i64 [ %432, %431 ], [ %457, %433 ]
  %437 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %434
  %438 = load double, double* %437, align 8, !tbaa !1
  %439 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %434
  %440 = load i32, i32* %439, align 4, !tbaa !5
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %441
  %443 = load double, double* %442, align 8, !tbaa !1
  %444 = fmul double %438, %443
  %445 = fadd double %435, %444
  %446 = add nsw i64 %434, 1
  %447 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %446
  %448 = load double, double* %447, align 8, !tbaa !1
  %449 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %446
  %450 = load i32, i32* %449, align 4, !tbaa !5
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %451
  %453 = load double, double* %452, align 8, !tbaa !1
  %454 = fmul double %448, %453
  %455 = fadd double %445, %454
  %456 = add nsw i64 %434, 2
  %457 = add i64 %436, -2
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %459, label %433

; <label>:459:                                    ; preds = %433
  br label %460

; <label>:460:                                    ; preds = %459, %423
  %461 = phi double [ undef, %423 ], [ %455, %459 ]
  %462 = phi i64 [ %424, %423 ], [ %456, %459 ]
  %463 = phi double [ 0.000000e+00, %423 ], [ %455, %459 ]
  %464 = icmp eq i64 %429, 0
  br i1 %464, label %477, label %465

; <label>:465:                                    ; preds = %460
  br label %466

; <label>:466:                                    ; preds = %465
  br label %467

; <label>:467:                                    ; preds = %466
  %468 = getelementptr inbounds [15825001 x double], [15825001 x double]* @a, i64 0, i64 %462
  %469 = load double, double* %468, align 8, !tbaa !1
  %470 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %462
  %471 = load i32, i32* %470, align 4, !tbaa !5
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %472
  %474 = load double, double* %473, align 8, !tbaa !1
  %475 = fmul double %469, %474
  %476 = fadd double %463, %475
  br label %477

; <label>:477:                                    ; preds = %460, %467
  %478 = phi double [ %461, %460 ], [ %476, %467 ]
  %479 = bitcast double %478 to i64
  br label %480

; <label>:480:                                    ; preds = %477, %416
  %481 = phi i64 [ %479, %477 ], [ 0, %416 ]
  %482 = phi double [ %478, %477 ], [ 0.000000e+00, %416 ]
  %483 = getelementptr inbounds [75003 x double], [75003 x double]* @w, i64 0, i64 %418
  store double %482, double* %483, align 8, !tbaa !1
  %484 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %418
  %485 = bitcast double* %484 to i64*
  store i64 %481, i64* %485, align 8, !tbaa !1
  %486 = icmp slt i64 %418, %47
  br i1 %486, label %416, label %408

; <label>:487:                                    ; preds = %487, %414
  %488 = phi i64 [ 1, %414 ], [ %522, %487 ]
  %489 = phi double [ 0.000000e+00, %414 ], [ %521, %487 ]
  %490 = phi i64 [ %415, %414 ], [ %523, %487 ]
  %491 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %488
  %492 = load double, double* %491, align 8, !tbaa !1
  %493 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %488
  %494 = load double, double* %493, align 8, !tbaa !1
  %495 = fsub double %492, %494
  %496 = fmul double %495, %495
  %497 = fadd double %489, %496
  %498 = add nuw nsw i64 %488, 1
  %499 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %498
  %500 = load double, double* %499, align 8, !tbaa !1
  %501 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %498
  %502 = load double, double* %501, align 8, !tbaa !1
  %503 = fsub double %500, %502
  %504 = fmul double %503, %503
  %505 = fadd double %497, %504
  %506 = add nsw i64 %488, 2
  %507 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %506
  %508 = load double, double* %507, align 8, !tbaa !1
  %509 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %506
  %510 = load double, double* %509, align 8, !tbaa !1
  %511 = fsub double %508, %510
  %512 = fmul double %511, %511
  %513 = fadd double %505, %512
  %514 = add nsw i64 %488, 3
  %515 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %514
  %516 = load double, double* %515, align 8, !tbaa !1
  %517 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %514
  %518 = load double, double* %517, align 8, !tbaa !1
  %519 = fsub double %516, %518
  %520 = fmul double %519, %519
  %521 = fadd double %513, %520
  %522 = add nsw i64 %488, 4
  %523 = add i64 %490, -4
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %487

; <label>:525:                                    ; preds = %487
  br label %526

; <label>:526:                                    ; preds = %525, %410
  %527 = phi double [ undef, %410 ], [ %519, %525 ]
  %528 = phi double [ undef, %410 ], [ %521, %525 ]
  %529 = phi i64 [ 1, %410 ], [ %522, %525 ]
  %530 = phi double [ 0.000000e+00, %410 ], [ %521, %525 ]
  %531 = icmp eq i64 %412, 0
  br i1 %531, label %548, label %532

; <label>:532:                                    ; preds = %526
  br label %533

; <label>:533:                                    ; preds = %533, %532
  %534 = phi i64 [ %544, %533 ], [ %529, %532 ]
  %535 = phi double [ %543, %533 ], [ %530, %532 ]
  %536 = phi i64 [ %545, %533 ], [ %412, %532 ]
  %537 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %534
  %538 = load double, double* %537, align 8, !tbaa !1
  %539 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %534
  %540 = load double, double* %539, align 8, !tbaa !1
  %541 = fsub double %538, %540
  %542 = fmul double %541, %541
  %543 = fadd double %535, %542
  %544 = add nuw nsw i64 %534, 1
  %545 = add i64 %536, -1
  %546 = icmp eq i64 %545, 0
  br i1 %546, label %547, label %533, !llvm.loop !24

; <label>:547:                                    ; preds = %533
  br label %548

; <label>:548:                                    ; preds = %526, %547
  %549 = phi double [ %527, %526 ], [ %541, %547 ]
  %550 = phi double [ %528, %526 ], [ %543, %547 ]
  store double %549, double* @conj_grad.d, align 8, !tbaa !1
  store double %550, double* @conj_grad.sum, align 8, !tbaa !1
  br label %551

; <label>:551:                                    ; preds = %548, %409
  %552 = phi double [ %550, %548 ], [ 0.000000e+00, %409 ]
  %553 = tail call double @sqrt(double %552) #6
  store double %553, double* %0, align 8, !tbaa !1
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #2

declare void @timer_clear(i32) local_unnamed_addr #3

declare void @timer_start(i32) local_unnamed_addr #3

declare void @timer_stop(i32) local_unnamed_addr #3

declare double @timer_read(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare double @fabs(double) local_unnamed_addr #4

declare void @c_print_results(i8*, i8 signext, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @pow(double, double) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 1}
!9 = !{!"llvm.loop.interleave.count", i32 1}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !12, !8, !9}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !12, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !12, !8, !9}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !12, !8, !9}
!24 = distinct !{!24, !14}
