; ModuleID = 'seq-csr/seq-csr.c'
source_filename = "seq-csr/seq-csr.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

%struct.packed_edge = type { i64, i64 }

@xoff = internal unnamed_addr global i64* null, align 8
@maxvtx = internal unnamed_addr global i64 0, align 8
@nv = internal unnamed_addr global i64 0, align 8
@xadj = internal unnamed_addr global i64* null, align 8
@xadjstore = internal unnamed_addr global i64* null, align 8

; Function Attrs: nounwind
define i32 @create_graph_from_edgelist(%struct.packed_edge* nocapture readonly, i64) local_unnamed_addr #0 {
  store i64 -1, i64* @maxvtx, align 8, !tbaa !1, !noalias !5
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %23

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %18
  %6 = phi i64 [ %19, %18 ], [ -1, %4 ]
  %7 = phi i64 [ %20, %18 ], [ 0, %4 ]
  %8 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %7, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !8, !alias.scope !5
  %10 = icmp sgt i64 %9, %6
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %5
  store i64 %9, i64* @maxvtx, align 8, !tbaa !1, !noalias !5
  br label %12

; <label>:12:                                     ; preds = %11, %5
  %13 = phi i64 [ %9, %11 ], [ %6, %5 ]
  %14 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %7, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !10, !alias.scope !5
  %16 = icmp sgt i64 %15, %13
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %12
  store i64 %15, i64* @maxvtx, align 8, !tbaa !1, !noalias !5
  br label %18

; <label>:18:                                     ; preds = %17, %12
  %19 = phi i64 [ %13, %12 ], [ %15, %17 ]
  %20 = add nuw nsw i64 %7, 1
  %21 = icmp eq i64 %20, %1
  br i1 %21, label %22, label %5

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22, %2
  %24 = phi i64 [ -1, %2 ], [ %19, %22 ]
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @nv, align 8, !tbaa !1, !noalias !5
  %26 = shl i64 %25, 4
  %27 = add i64 %26, 16
  %28 = tail call i8* @xmalloc_large_ext(i64 %27) #4
  store i8* %28, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !11
  %29 = icmp eq i8* %28, null
  %30 = bitcast i8* %28 to i64*
  br i1 %29, label %234, label %31

; <label>:31:                                     ; preds = %23
  %32 = load i64, i64* @nv, align 8, !tbaa !1, !noalias !13
  %33 = trunc i64 %32 to i63
  %34 = icmp sgt i63 %33, -1
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %31
  %36 = shl i64 %32, 1
  %37 = or i64 %36, 1
  %38 = icmp sgt i64 %37, 0
  %39 = select i1 %38, i64 %37, i64 0
  %40 = shl i64 %39, 3
  %41 = add i64 %40, 8
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %28, i8 0, i64 %41, i32 8, i1 false) #4, !noalias !13
  br label %42

; <label>:42:                                     ; preds = %35, %31
  br i1 %3, label %43, label %46

; <label>:43:                                     ; preds = %42
  br label %53

; <label>:44:                                     ; preds = %74
  %45 = load i64*, i64** @xoff, align 8, !tbaa !11, !noalias !13
  br label %46

; <label>:46:                                     ; preds = %44, %42
  %47 = phi i64* [ %45, %44 ], [ %30, %42 ]
  %48 = icmp sgt i64 %32, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  br label %77

; <label>:50:                                     ; preds = %46
  %51 = shl nsw i64 %32, 1
  %52 = getelementptr inbounds i64, i64* %47, i64 %51
  store i64 0, i64* %52, align 8, !tbaa !1, !noalias !13
  br label %125

; <label>:53:                                     ; preds = %43, %74
  %54 = phi i64 [ %75, %74 ], [ 0, %43 ]
  %55 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %54, i32 0
  %56 = load i64, i64* %55, align 8, !tbaa !8, !alias.scope !13
  %57 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %54, i32 1
  %58 = load i64, i64* %57, align 8, !tbaa !10, !alias.scope !13
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %74, label %60

; <label>:60:                                     ; preds = %53
  %61 = icmp sgt i64 %56, -1
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %60
  %63 = shl nsw i64 %56, 1
  %64 = getelementptr inbounds i64, i64* %30, i64 %63
  %65 = load i64, i64* %64, align 8, !tbaa !1, !noalias !13
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8, !tbaa !1, !noalias !13
  br label %67

; <label>:67:                                     ; preds = %62, %60
  %68 = icmp sgt i64 %58, -1
  br i1 %68, label %69, label %74

; <label>:69:                                     ; preds = %67
  %70 = shl nsw i64 %58, 1
  %71 = getelementptr inbounds i64, i64* %30, i64 %70
  %72 = load i64, i64* %71, align 8, !tbaa !1, !noalias !13
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8, !tbaa !1, !noalias !13
  br label %74

; <label>:74:                                     ; preds = %69, %67, %53
  %75 = add nuw nsw i64 %54, 1
  %76 = icmp eq i64 %75, %1
  br i1 %76, label %44, label %53

; <label>:77:                                     ; preds = %49, %77
  %78 = phi i64 [ %86, %77 ], [ 0, %49 ]
  %79 = phi i64 [ %85, %77 ], [ 0, %49 ]
  %80 = shl nsw i64 %78, 1
  %81 = getelementptr inbounds i64, i64* %47, i64 %80
  %82 = load i64, i64* %81, align 8, !tbaa !1, !noalias !13
  %83 = icmp slt i64 %82, 2
  %84 = select i1 %83, i64 2, i64 %82
  store i64 %79, i64* %81, align 8, !tbaa !1, !noalias !13
  %85 = add nsw i64 %84, %79
  %86 = add nuw nsw i64 %78, 1
  %87 = icmp eq i64 %86, %32
  br i1 %87, label %88, label %77

; <label>:88:                                     ; preds = %77
  %89 = shl nsw i64 %32, 1
  %90 = getelementptr inbounds i64, i64* %47, i64 %89
  store i64 %85, i64* %90, align 8, !tbaa !1, !noalias !13
  %91 = icmp ult i64 %32, 2
  br i1 %91, label %113, label %92

; <label>:92:                                     ; preds = %88
  %93 = and i64 %32, -2
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %113, label %95

; <label>:95:                                     ; preds = %92
  br label %96

; <label>:96:                                     ; preds = %95, %96
  %97 = phi i64 [ %109, %96 ], [ 0, %95 ]
  %98 = shl nsw i64 %97, 1
  %99 = shl i64 %97, 1
  %100 = or i64 %99, 2
  %101 = getelementptr inbounds i64, i64* %47, i64 %98
  %102 = getelementptr inbounds i64, i64* %47, i64 %100
  %103 = load i64, i64* %101, align 8, !tbaa !1, !noalias !13
  %104 = load i64, i64* %102, align 8, !tbaa !1, !noalias !13
  %105 = or i64 %98, 1
  %106 = or i64 %99, 3
  %107 = getelementptr inbounds i64, i64* %47, i64 %105
  %108 = getelementptr inbounds i64, i64* %47, i64 %106
  store i64 %103, i64* %107, align 8, !tbaa !1, !noalias !13
  store i64 %104, i64* %108, align 8, !tbaa !1, !noalias !13
  %109 = add i64 %97, 2
  %110 = icmp eq i64 %109, %93
  br i1 %110, label %111, label %96, !llvm.loop !16

; <label>:111:                                    ; preds = %96
  %112 = icmp eq i64 %32, %93
  br i1 %112, label %125, label %113

; <label>:113:                                    ; preds = %111, %92, %88
  %114 = phi i64 [ 0, %92 ], [ 0, %88 ], [ %93, %111 ]
  br label %115

; <label>:115:                                    ; preds = %113, %115
  %116 = phi i64 [ %122, %115 ], [ %114, %113 ]
  %117 = shl nsw i64 %116, 1
  %118 = getelementptr inbounds i64, i64* %47, i64 %117
  %119 = load i64, i64* %118, align 8, !tbaa !1, !noalias !13
  %120 = or i64 %117, 1
  %121 = getelementptr inbounds i64, i64* %47, i64 %120
  store i64 %119, i64* %121, align 8, !tbaa !1, !noalias !13
  %122 = add nuw nsw i64 %116, 1
  %123 = icmp eq i64 %122, %32
  br i1 %123, label %124, label %115, !llvm.loop !19

; <label>:124:                                    ; preds = %115
  br label %125

; <label>:125:                                    ; preds = %124, %111, %50
  %126 = phi i64 [ 0, %50 ], [ %85, %111 ], [ %85, %124 ]
  %127 = add nsw i64 %126, 2
  %128 = shl i64 %127, 3
  %129 = tail call i8* @xmalloc_large_ext(i64 %128) #4, !noalias !13
  store i8* %129, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !11, !noalias !13
  %130 = icmp eq i8* %129, null
  br i1 %130, label %139, label %131

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds i8, i8* %129, i64 16
  store i8* %132, i8** bitcast (i64** @xadj to i8**), align 8, !tbaa !11, !noalias !13
  %133 = icmp sgt i64 %126, -2
  %134 = bitcast i8* %132 to i64*
  br i1 %133, label %135, label %141

; <label>:135:                                    ; preds = %131
  %136 = icmp sgt i64 %127, 1
  %137 = select i1 %136, i64 %127, i64 1
  %138 = shl i64 %137, 3
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %129, i8 -1, i64 %138, i32 8, i1 false) #4, !noalias !13
  br label %141

; <label>:139:                                    ; preds = %125
  %140 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !11
  tail call void @xfree_large(i8* %140) #4
  br label %234

; <label>:141:                                    ; preds = %131, %135
  br i1 %3, label %142, label %171

; <label>:142:                                    ; preds = %141
  %143 = load i64*, i64** @xoff, align 8, !noalias !20
  br label %144

; <label>:144:                                    ; preds = %167, %142
  %145 = phi i64 [ 0, %142 ], [ %168, %167 ]
  %146 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %145, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !8, !alias.scope !20
  %148 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %145, i32 1
  %149 = load i64, i64* %148, align 8, !tbaa !10, !alias.scope !20
  %150 = or i64 %149, %147
  %151 = icmp slt i64 %150, 0
  %152 = icmp eq i64 %147, %149
  %153 = or i1 %152, %151
  br i1 %153, label %167, label %154

; <label>:154:                                    ; preds = %144
  %155 = shl nsw i64 %147, 1
  %156 = or i64 %155, 1
  %157 = getelementptr inbounds i64, i64* %143, i64 %156
  %158 = load i64, i64* %157, align 8, !tbaa !1, !noalias !20
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8, !tbaa !1, !noalias !20
  %160 = getelementptr inbounds i64, i64* %134, i64 %158
  store i64 %149, i64* %160, align 8, !tbaa !1, !noalias !20
  %161 = shl nsw i64 %149, 1
  %162 = or i64 %161, 1
  %163 = getelementptr inbounds i64, i64* %143, i64 %162
  %164 = load i64, i64* %163, align 8, !tbaa !1, !noalias !20
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8, !tbaa !1, !noalias !20
  %166 = getelementptr inbounds i64, i64* %134, i64 %164
  store i64 %147, i64* %166, align 8, !tbaa !1, !noalias !20
  br label %167

; <label>:167:                                    ; preds = %154, %144
  %168 = add nuw nsw i64 %145, 1
  %169 = icmp eq i64 %168, %1
  br i1 %169, label %170, label %144

; <label>:170:                                    ; preds = %167
  br label %171

; <label>:171:                                    ; preds = %170, %141
  %172 = load i64, i64* @nv, align 8, !tbaa !1, !noalias !20
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %234

; <label>:174:                                    ; preds = %171
  %175 = load i64*, i64** @xoff, align 8, !tbaa !11, !noalias !20
  br label %176

; <label>:176:                                    ; preds = %228, %174
  %177 = phi i64 [ %229, %228 ], [ %172, %174 ]
  %178 = phi i64* [ %230, %228 ], [ %175, %174 ]
  %179 = phi i64 [ %231, %228 ], [ 0, %174 ]
  %180 = shl nsw i64 %179, 1
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8, !tbaa !1, !noalias !20
  %183 = add nsw i64 %182, 1
  %184 = or i64 %180, 1
  %185 = getelementptr inbounds i64, i64* %178, i64 %184
  %186 = load i64, i64* %185, align 8, !tbaa !1, !noalias !20
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %188, label %228

; <label>:188:                                    ; preds = %176
  %189 = load i64*, i64** @xadj, align 8, !tbaa !11, !noalias !20
  %190 = getelementptr inbounds i64, i64* %189, i64 %182
  %191 = bitcast i64* %190 to i8*
  %192 = sub nsw i64 %186, %182
  tail call void @qsort(i8* %191, i64 %192, i64 8, i32 (i8*, i8*)* nonnull @i64cmp) #4, !noalias !20
  %193 = load i64*, i64** @xoff, align 8, !tbaa !11, !noalias !20
  %194 = getelementptr inbounds i64, i64* %193, i64 %180
  %195 = load i64, i64* %194, align 8, !tbaa !1, !noalias !20
  %196 = getelementptr inbounds i64, i64* %193, i64 %184
  %197 = load i64*, i64** @xadj, align 8, !noalias !20
  br label %198

; <label>:198:                                    ; preds = %212, %188
  %199 = phi i64 [ %213, %212 ], [ %195, %188 ]
  %200 = phi i64 [ %205, %212 ], [ %195, %188 ]
  %201 = load i64, i64* %196, align 8, !tbaa !1, !noalias !20
  %202 = getelementptr inbounds i64, i64* %197, i64 %199
  br label %203

; <label>:203:                                    ; preds = %207, %198
  %204 = phi i64 [ %205, %207 ], [ %200, %198 ]
  %205 = add nsw i64 %204, 1
  %206 = icmp slt i64 %205, %201
  br i1 %206, label %207, label %215

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i64, i64* %197, i64 %205
  %209 = load i64, i64* %208, align 8, !tbaa !1, !noalias !20
  %210 = load i64, i64* %202, align 8, !tbaa !1, !noalias !20
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %203, label %212

; <label>:212:                                    ; preds = %207
  %213 = add nsw i64 %199, 1
  %214 = getelementptr inbounds i64, i64* %197, i64 %213
  store i64 %209, i64* %214, align 8, !tbaa !1, !noalias !20
  br label %198

; <label>:215:                                    ; preds = %203
  %216 = add nsw i64 %199, 1
  %217 = icmp slt i64 %216, %201
  br i1 %217, label %218, label %226

; <label>:218:                                    ; preds = %215
  br label %219

; <label>:219:                                    ; preds = %218, %219
  %220 = phi i64 [ %222, %219 ], [ %216, %218 ]
  %221 = getelementptr inbounds i64, i64* %197, i64 %220
  store i64 -1, i64* %221, align 8, !tbaa !1, !noalias !20
  %222 = add nsw i64 %220, 1
  %223 = load i64, i64* %196, align 8, !tbaa !1, !noalias !20
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %219, label %225

; <label>:225:                                    ; preds = %219
  br label %226

; <label>:226:                                    ; preds = %225, %215
  store i64 %216, i64* %196, align 8, !tbaa !1, !noalias !20
  %227 = load i64, i64* @nv, align 8, !tbaa !1, !noalias !20
  br label %228

; <label>:228:                                    ; preds = %226, %176
  %229 = phi i64 [ %177, %176 ], [ %227, %226 ]
  %230 = phi i64* [ %178, %176 ], [ %193, %226 ]
  %231 = add nuw nsw i64 %179, 1
  %232 = icmp slt i64 %231, %229
  br i1 %232, label %176, label %233

; <label>:233:                                    ; preds = %228
  br label %234

; <label>:234:                                    ; preds = %233, %23, %171, %139
  %235 = phi i32 [ -1, %139 ], [ -1, %23 ], [ 0, %171 ], [ 0, %233 ]
  ret i32 %235
}

declare void @xfree_large(i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define i32 @make_bfs_tree(i64* nocapture, i64* nocapture, i64) local_unnamed_addr #0 {
  %4 = bitcast i64* %0 to i8*
  %5 = load i64, i64* @maxvtx, align 8, !tbaa !1
  store i64 %5, i64* %1, align 8, !tbaa !1
  %6 = load i64, i64* @nv, align 8, !tbaa !1
  %7 = shl i64 %6, 3
  %8 = tail call i8* @xmalloc_large(i64 %7) #4
  %9 = bitcast i8* %8 to i64*
  %10 = icmp eq i8* %8, null
  br i1 %10, label %63, label %11

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* @nv, align 8, !tbaa !1
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %11
  %15 = shl i64 %12, 3
  call void @llvm.memset.p0i8.i64(i8* %4, i8 -1, i64 %15, i32 8, i1 false)
  br label %16

; <label>:16:                                     ; preds = %14, %11
  store i64 %2, i64* %9, align 8, !tbaa !1
  %17 = getelementptr inbounds i64, i64* %0, i64 %2
  store i64 %2, i64* %17, align 8, !tbaa !1
  %18 = load i64*, i64** @xoff, align 8
  %19 = load i64*, i64** @xadj, align 8
  br label %24

; <label>:20:                                     ; preds = %58
  br label %21

; <label>:21:                                     ; preds = %20, %24
  %22 = phi i64 [ %26, %24 ], [ %59, %20 ]
  %23 = icmp eq i64 %26, %22
  br i1 %23, label %62, label %24

; <label>:24:                                     ; preds = %16, %21
  %25 = phi i64 [ 0, %16 ], [ %26, %21 ]
  %26 = phi i64 [ 1, %16 ], [ %22, %21 ]
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %21

; <label>:28:                                     ; preds = %24
  br label %29

; <label>:29:                                     ; preds = %28, %58
  %30 = phi i64 [ %60, %58 ], [ %25, %28 ]
  %31 = phi i64 [ %59, %58 ], [ %26, %28 ]
  %32 = getelementptr inbounds i64, i64* %9, i64 %30
  %33 = load i64, i64* %32, align 8, !tbaa !1
  %34 = shl nsw i64 %33, 1
  %35 = or i64 %34, 1
  %36 = getelementptr inbounds i64, i64* %18, i64 %35
  %37 = load i64, i64* %36, align 8, !tbaa !1
  %38 = getelementptr inbounds i64, i64* %18, i64 %34
  %39 = load i64, i64* %38, align 8, !tbaa !1
  %40 = icmp slt i64 %39, %37
  br i1 %40, label %41, label %58

; <label>:41:                                     ; preds = %29
  br label %42

; <label>:42:                                     ; preds = %41, %53
  %43 = phi i64 [ %55, %53 ], [ %39, %41 ]
  %44 = phi i64 [ %54, %53 ], [ %31, %41 ]
  %45 = getelementptr inbounds i64, i64* %19, i64 %43
  %46 = load i64, i64* %45, align 8, !tbaa !1
  %47 = getelementptr inbounds i64, i64* %0, i64 %46
  %48 = load i64, i64* %47, align 8, !tbaa !1
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %42
  store i64 %33, i64* %47, align 8, !tbaa !1
  %51 = add nsw i64 %44, 1
  %52 = getelementptr inbounds i64, i64* %9, i64 %44
  store i64 %46, i64* %52, align 8, !tbaa !1
  br label %53

; <label>:53:                                     ; preds = %50, %42
  %54 = phi i64 [ %51, %50 ], [ %44, %42 ]
  %55 = add nsw i64 %43, 1
  %56 = icmp eq i64 %55, %37
  br i1 %56, label %57, label %42

; <label>:57:                                     ; preds = %53
  br label %58

; <label>:58:                                     ; preds = %57, %29
  %59 = phi i64 [ %31, %29 ], [ %54, %57 ]
  %60 = add nsw i64 %30, 1
  %61 = icmp eq i64 %60, %26
  br i1 %61, label %20, label %29

; <label>:62:                                     ; preds = %21
  tail call void @xfree_large(i8* nonnull %8) #4
  br label %63

; <label>:63:                                     ; preds = %3, %62
  %64 = phi i32 [ 0, %62 ], [ -1, %3 ]
  ret i32 %64
}

declare i8* @xmalloc_large(i64) local_unnamed_addr #1

; Function Attrs: nounwind
define void @destroy_graph() local_unnamed_addr #0 {
  %1 = load i8*, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !11
  tail call void @xfree_large(i8* %1) #4
  %2 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !11
  tail call void @xfree_large(i8* %2) #4
  ret void
}

declare i8* @xmalloc_large_ext(i64) local_unnamed_addr #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly
define internal i32 @i64cmp(i8* nocapture readonly, i8* nocapture readonly) #2 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !1
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !1
  %7 = icmp slt i64 %4, %6
  %8 = icmp sgt i64 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"find_nv: argument 0"}
!7 = distinct !{!7, !"find_nv"}
!8 = !{!9, !2, i64 0}
!9 = !{!"packed_edge", !2, i64 0, !2, i64 8}
!10 = !{!9, !2, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !3, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"setup_deg_off: argument 0"}
!15 = distinct !{!15, !"setup_deg_off"}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.vectorize.width", i32 1}
!18 = !{!"llvm.loop.interleave.count", i32 1}
!19 = distinct !{!19, !17, !18}
!20 = !{!21}
!21 = distinct !{!21, !22, !"gather_edges: argument 0"}
!22 = distinct !{!22, !"gather_edges"}
