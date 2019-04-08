#! /bin/bash

HASHTYPE=0
MAXHASH=10

CK_NAS_COMMON=`ck find program:42f28f884842c988`

CK_COMPILER="$CK_CC $CK_COMPILER_FLAGS_OBLIGATORY $CK_PROG_COMPILER_FLAGS"


echo ""

# Check compilation type
if [ "${CK_COMPILE_TYPE}" == "auto" ] ; then
  echo "*** auto ***"
  EXECUTE1="$CK_COMPILER ../kangaroo.c -DNARRAYS=${CK_KANGAROO_ARRAYS} -DNHASH=${CK_KANGAROO_HASHES} -DNSWPF=0 -Xclang -load -Xclang ${CK_ENV_PLUGIN_LLVM_SW_PREFETCH_PASS_FILE} -c -S -emit-llvm"
  EXECUTE2="$CK_COMPILER kangaroo.ll -c"
  EXECUTE3="$CK_COMPILER kangaroo.o ${CK_NAS_COMMON}/c_print_results.c ${CK_NAS_COMMON}/c_timers.c ${CK_NAS_COMMON}/wtime.c -lm"

elif [ "${CK_COMPILE_TYPE}" == "auto-nostride" ] ; then
  echo "*** auto-nostride ***"
  EXECUTE1="$CK_COMPILER ../kangaroo.c -DNARRAYS=${CK_KANGAROO_ARRAYS} -DNHASH=${CK_KANGAROO_HASHES} -DNSWPF=0 -Xclang -load -Xclang ${CK_ENV_PLUGIN_LLVM_SW_PREFETCH_NO_STRIDES_PASS_FILE} -c -S -emit-llvm"
  EXECUTE2="$CK_COMPILER kangaroo.ll -c"
  EXECUTE3="$CK_COMPILER kangaroo.o ${CK_NAS_COMMON}/c_print_results.c ${CK_NAS_COMMON}/c_timers.c ${CK_NAS_COMMON}/wtime.c -lm"

elif [ "${CK_COMPILE_TYPE}" == "man" ] ; then
  echo "*** man (64) ***"
  EXECUTE1="$CK_COMPILER ../kangaroo.c -DNARRAYS=${CK_KANGAROO_ARRAYS} -DNHASH=${CK_KANGAROO_HASHES} -DNSWPF=${CK_KANGAROO_NUMPFS} -DFETCHDIST=64 -DSTRIDE -c"
  EXECUTE2=""
  EXECUTE3="$CK_COMPILER kangarooswpf.o ${CK_NAS_COMMON}/c_print_results.c ${CK_NAS_COMMON}/c_timers.c ${CK_NAS_COMMON}/wtime.c -lm"

elif [ "${CK_COMPILE_TYPE}" == "offset" ] ; then
  echo "*** offset (${CK_FETCHDIST}) ***"
  EXECUTE1="$CK_COMPILER ../kangaroo.c -DNARRAYS=${CK_KANGAROO_ARRAYS} -DNHASH=${CK_KANGAROO_HASHES} -DNSWPF=${CK_KANGAROO_NUMPFS} -DFETCHDIST=${CK_FETCHDIST} -DSTRIDE -c"
  EXECUTE2=""
  EXECUTE3="$CK_COMPILER kangaroo.o ${CK_NAS_COMMON}/c_print_results.c ${CK_NAS_COMMON}/c_timers.c ${CK_NAS_COMMON}/wtime.c -lm"

elif [ "${CK_COMPILE_TYPE}" == "offset-64-nostride" ] ; then
  echo "*** offset-64-nostride ***"
  EXECUTE1="$CK_COMPILER ../kangaroo.c -DNARRAYS=${CK_KANGAROO_ARRAYS} -DNHASH=${CK_KANGAROO_HASHES} -DNSWPF=${CK_KANGAROO_NUMPFS} -DFETCHDIST=64 -c"
  EXECUTE2=""
  EXECUTE3="$CK_COMPILER kangaroo.o ${CK_NAS_COMMON}/c_print_results.c ${CK_NAS_COMMON}/c_timers.c ${CK_NAS_COMMON}/wtime.c -lm"

else
  echo "*** no ***"
  EXECUTE1="$CK_COMPILER ../kangaroo.c -DNARRAYS=${CK_KANGAROO_ARRAYS} -DNHASH=${CK_KANGAROO_HASHES} -DNSWPF=0 -c"
  EXECUTE2=""
  EXECUTE3="$CK_COMPILER kangaroo.o ${CK_NAS_COMMON}/c_print_results.c ${CK_NAS_COMMON}/c_timers.c ${CK_NAS_COMMON}/wtime.c -lm"
fi

echo "$EXECUTE1"
$EXECUTE1
if [ "${?}" != "0" ] ; then
 exit ${?}
fi

echo "$EXECUTE2"
$EXECUTE2
if [ "${?}" != "0" ] ; then
 exit ${?}
fi

echo "$EXECUTE3"
$EXECUTE3
if [ "${?}" != "0" ] ; then
 exit ${?}
fi

