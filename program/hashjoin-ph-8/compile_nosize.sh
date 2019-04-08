cd src
clang -O3 npj2epb.c -Xclang -load -Xclang ../../../package/plugin-llvm-sw-prefetch-pass/lib/SwPrefetchPass.so -c -S -emit-llvm 
clang -O3 npj2epb.ll -c 
clang -O3 npj2epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj2-auto
clang -O3 npj2epb.c -Xclang -load -Xclang ../../../package/plugin-llvm-sw-prefetch-pass/lib/SwPrefetchPass_nosize.so -c -S -emit-llvm 
clang -O3 npj2epb.ll -c 
clang -O3 npj2epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj2-nosize
clang -O3 npj2epb.c -Xclang -load -Xclang ../../../package/plugin-llvm-sw-prefetch-no-strides-pass/lib/SwPrefetchPass_noStrides.so -c -S -emit-llvm 
clang -O3 npj2epb.ll -c 
clang -O3 npj2epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj2-auto-nostride
clang -O3 npj2epb.c -c 
clang -O3 npj2epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj2-no
clang -O3 npj2epbsw.c -DFETCHDIST=64 -DSTRIDE -c 
clang -O3 npj2epbsw.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj2-man
for i in 2 4 8 16 32 64 128 256
do
clang -O3 npj2epbsw.c -DFETCHDIST=$i -DSTRIDE -c 
clang -O3 npj2epbsw.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86-offsets/hj2-offset-$i
done
clang -O3 npj8epb.c -Xclang -load -Xclang ../../../package/plugin-llvm-sw-prefetch-pass/lib/SwPrefetchPass_nosize.so -c -S -emit-llvm 
clang -O3 npj8epb.ll -c 
clang -O3 npj8epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj8-auto
clang -O3 npj8epb.c -Xclang -load -Xclang ../../../package/plugin-llvm-sw-prefetch-pass/lib/SwPrefetchPass.so -c -S -emit-llvm 
clang -O3 npj8epb.ll -c 
clang -O3 npj8epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj8-nosize
clang -O3 npj8epb.c -Xclang -load -Xclang ../../../package/plugin-llvm-sw-prefetch-no-strides-pass/lib/SwPrefetchPass_noStrides.so -c -S -emit-llvm 
clang -O3 npj8epb.ll -c 
clang -O3 npj8epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj8-auto-nostride
clang -O3 npj8epb.c -c 
clang -O3 npj8epb.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj8-no
clang -O3 npj8epbsw.c -DNUMPREFETCHES=3 -DSTRIDE -c 
clang -O3 npj8epbsw.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86/hj8-man
for i in 1 2 3 4
do
clang -O3 npj8epbsw.c -DNUMPREFETCHES=$i -DSTRIDE -c 
clang -O3 npj8epbsw.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86-offsets/hj8-prefetches-$i
done
clang -O3 npj8epbsw.c -DNUMPREFETCHES=3 -c 
clang -O3 npj8epbsw.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86-offsets/hj8-prefetches-3-nostride
clang -O3 npj2epbsw.c -DFETCHDIST=64 -c 
clang -O3 npj2epbsw.o main.c generator.c genzipf.c perf_counters.c cpu_mapping.c parallel_radix_join.c -lpthread -lm -std=c99  -o bin/x86-offsets/hj2-offset-64-nostride
