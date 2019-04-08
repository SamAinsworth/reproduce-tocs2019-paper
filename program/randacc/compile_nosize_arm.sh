/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.c -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass.so -c -S -emit-llvm
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.ll -o bin/x86/randacc-auto

/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.c -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass_nosize.so -c -S -emit-llvm
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.ll -o bin/x86/randacc-nosize

/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.c -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-no-strides-pass/lib/SwPrefetchPass_noStrides.so -c -S -emit-llvm
/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.ll -o bin/x86/randacc-auto-nostride

/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randacc.c -o bin/x86/randacc-no




/home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randaccswpf.c -DFETCHDIST=32 -o bin/x86/randacc-man

for i in 2 4 8 16 32 64 128 256
do
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randaccswpf.c -DFETCHDIST=$i -o bin/x86-offsets/randacc-offset-$i
done
  /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64/bin/clang -O3 --target=aarch64-none-linux-gnu --sysroot=/usr/aarch64-linux-gnu randaccswpf.c -DFETCHDIST=32 -DSTRIDE -o bin/x86-offsets/randacc-offset-32-stride
