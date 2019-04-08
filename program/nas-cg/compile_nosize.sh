/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.c -c
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86/cg-no
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.c -S -emit-llvm  -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/lib/SwPrefetchPass.so
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.ll -c
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86/cg-auto
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.c -S -emit-llvm  -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass_nosize.so
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.ll -c
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86/cg-nosize
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.c -S -emit-llvm  -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-no-strides-pass/lib/SwPrefetchPass_noStrides.so
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.ll -c
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cg.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86/cg-auto-nostride
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cgswpf.c -c -DFETCHDIST=64 -DSTRIDE
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cgswpf.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86/cg-man
for i in 2 4 8 16 32 64 128 256 2048
do
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cgswpf.c -c -DFETCHDIST=$i -DSTRIDE
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cgswpf.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86-offsets/cg-offset-$i
done
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cgswpf.c  -c -DFETCHDIST=64
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 cgswpf.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -lm ../nas-common/c_randdp.c -o bin/x86-offsets/cg-offset-64-nostride

