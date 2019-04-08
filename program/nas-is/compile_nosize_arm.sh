/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.c -c
aarch64-linux-gnu-gcc -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86/is-no
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.c -S -emit-llvm  -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/lib/SwPrefetchPass.so
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.ll -c
aarch64-linux-gnu-gcc -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86/is-auto
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.c -S -emit-llvm  -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass_nosize.so
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.ll -c
aarch64-linux-gnu-gcc -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86/is-nosize
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.c -S -emit-llvm  -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-no-strides-pass/lib/SwPrefetchPass_noStrides.so
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.ll -c
aarch64-linux-gnu-gcc -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu is.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86/is-auto-nostride
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu isswpf.c -c -DFETCHDIST=64 -DSTRIDE
aarch64-linux-gnu-gcc -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu isswpf.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86/is-man

for i in 2 4 8 16 32 64 128 256 2048
do
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu isswpf.c -c -DFETCHDIST=$i -DSTRIDE
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu isswpf.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86-offsets/is-offset-$i
done
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu isswpf.c   -c -DFETCHDIST=64
  aarch64-linux-gnu-gcc -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu isswpf.o ../nas-common/c_print_results.c ../nas-common/c_timers.c ../nas-common/wtime.c -o bin/x86-offsets/is-offset-64-nostride

