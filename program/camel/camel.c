
#include<stdio.h>
#include <time.h>

#define MAX_KEY 33554432


#ifndef PREFETCH
#define PREFETCH 1
#endif

#ifndef NUMHASH
#define NUMHASH 10
#endif

/* Code from http://stackoverflow.com/questions/664014/what-integer-hash-function-are-good-that-accepts-an-integer-hash-key#12996028 */
unsigned int
hash(unsigned int x) {
  x = ((x >> 16) ^ x) * 0x45d9f3b;
  x = ((x >> 16) ^ x) * 0x45d9f3b;
  x = (x >> 16) ^ x;
  /* Yes, it's going to mess up the distribution by taking an & */
  return x & (MAX_KEY - 1);
}

    int array1 [MAX_KEY];
    int* array2 [MAX_KEY];

int main()
{

    
    for(int x=0; x<MAX_KEY; x++) {
    	array1[x] = x;
    	array2[x] = &(array1[hash(x)]);
    }
    
    long int sum = 0;
    
    clock_t start = clock(), diff;
    
    for(int x=0; x<MAX_KEY; x++) {
#if PREFETCH
    	if(x<(MAX_KEY-64)){
#if STRIDE
    		__builtin_prefetch(&array2[x+64]);
#endif
    		__builtin_prefetch(array2[x+32]);
    	}
#endif
    	sum += 	
#if NUMHASH>30   	    										
hash( 
#endif
#if NUMHASH>29   	    										
hash( 
#endif
#if NUMHASH>28   	    										
hash( 
#endif
#if NUMHASH>27   	    										
hash( 
#endif
#if NUMHASH>26   	    										
hash( 
#endif
#if NUMHASH>25   	    										
hash( 
#endif
#if NUMHASH>24   	    										
hash( 
#endif
#if NUMHASH>23   	    										
hash( 
#endif
#if NUMHASH>22   	    										
hash( 
#endif
#if NUMHASH>21   	    										
hash( 
#endif
#if NUMHASH>20   	    										
hash( 
#endif
#if NUMHASH>19    	    										
hash( 		
#endif
#if NUMHASH>18    	    										
hash( 
#endif
#if NUMHASH>17    	    										
hash( 
#endif
#if NUMHASH>16    	    										
hash( 
#endif
#if NUMHASH>15    	    										
hash( 
#endif
#if NUMHASH>14    	    										
hash( 
#endif
#if NUMHASH>13    	    										
hash( 
#endif
#if NUMHASH>12    	    										
hash( 
#endif
#if NUMHASH>11    	    										
hash( 
#endif
#if NUMHASH>10    	    										
hash(     		
#endif
#if NUMHASH>9    	    										
hash( 
#endif
#if NUMHASH>8    	    										
hash( 
#endif
#if NUMHASH>7    	    										
hash( 
#endif
#if NUMHASH>6   	    										
hash( 
#endif
#if NUMHASH>5    	    										
hash( 
#endif
#if NUMHASH>4    	    										
hash( 
#endif
#if NUMHASH>3    	    										
hash( 
#endif
#if NUMHASH>2    	    										
hash( 
#endif
#if NUMHASH>1    	    										
hash( 
#endif
#if NUMHASH>0   	    										
hash( 
#endif
    	*array2[x]
#if NUMHASH>0   	    										
) 
#endif
#if NUMHASH>1   	    										
) 
#endif
#if NUMHASH>2   	    										
) 
#endif
#if NUMHASH>3   	    										
) 
#endif
#if NUMHASH>4  	    											
) 
#endif
#if NUMHASH>5	 	    										
) 
#endif
#if NUMHASH>6	  	    										
) 
#endif
#if NUMHASH>7	 	    										
) 
#endif
#if NUMHASH>8  	    										
) 
#endif
#if NUMHASH>9   	    										
) 
#endif
#if NUMHASH>10   	    										
) 
#endif
#if NUMHASH>11   	    										
) 
#endif
#if NUMHASH>12   	    										
) 
#endif
#if NUMHASH>13  	    										
) 
#endif
#if NUMHASH>14  	    										
) 
#endif
#if NUMHASH>15   	    										
) 
#endif
#if NUMHASH>16   	    										
) 
#endif
#if NUMHASH>17   	    										
) 
#endif
#if NUMHASH>18   	    										
) 
#endif
#if NUMHASH>19   	    										
) 
#endif
#if NUMHASH>20   	    										
) 
#endif
#if NUMHASH>21  	    										
) 
#endif
#if NUMHASH>22   	    										
) 
#endif
#if NUMHASH>23   	    										
) 
#endif
#if NUMHASH>24   	    										
) 
#endif
#if NUMHASH>25   	    										
) 
#endif
#if NUMHASH>26 	    										
) 
#endif
#if NUMHASH>27  	    										
) 
#endif
#if NUMHASH>28   	    										
) 
#endif
#if NUMHASH>29   	    										
) 
#endif
#if NUMHASH>30   	    										
) 
#endif
;
    }
    
    diff = clock() - start;

int msec = diff * 1000 / CLOCKS_PER_SEC;
printf("Result %ld\nTime taken (ms) :%d\n", sum, msec);
    

    return 0;
}
