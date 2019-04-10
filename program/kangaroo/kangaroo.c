/**
 * Code based on IS from NAS.
 */

#include <stdlib.h>
#include <stdio.h>

/*************/
/*  CLASS B  */
/*************/

#ifndef KANG_SIZE
#define KANG_SIZE 2
#endif

#if KANG_SIZE==0
#define SIZE 17
#elif  KANG_SIZE==1
#define SIZE 22
#elif  KANG_SIZE==3
#define SIZE 28
#else
#define SIZE 25
#endif
//25 is default = 128MB. 17 = 512kB. 22 = 16MB.


#define  TOTAL_KEYS_LOG_2    SIZE
#define  MAX_KEY_LOG_2       (TOTAL_KEYS_LOG_2-4)
#define  NUM_BUCKETS_LOG_2   10



#define  TOTAL_KEYS          (1 << TOTAL_KEYS_LOG_2)
#define  MAX_KEY             (1 << MAX_KEY_LOG_2)
#define  NUM_BUCKETS         (1 << NUM_BUCKETS_LOG_2)
#define  NUM_KEYS            TOTAL_KEYS
#define  SIZE_OF_BUFFERS     NUM_KEYS  
#define  TEST_ARRAY_SIZE     5
                                           

#define  MAX_ITERATIONS      32


#ifndef NARRAYS
#define NARRAYS 8
#endif

#ifndef NHASH
#define NHASH (NARRAYS-1)
#endif

#ifndef HASHTYPE
#define HASHTYPE 0
#endif

#ifndef NSWPF
#define NSWPF 0
#endif

#if NHASH > (NARRAYS-1)
#error "Too many hash functions for the number of arrays"
#endif

#if NSWPF > NARRAYS
#error "Prefetching more arrays than exist"
#endif

#define PFDIST(arr) ((64/NSWPF)*(NSWPF+1-arr))


int array1[SIZE_OF_BUFFERS];
int array2[SIZE_OF_BUFFERS];
#if NARRAYS > 2
int array3[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 3
int array4[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 4
int array5[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 5
int array6[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 6
int array7[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 7
int array8[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 8
int array9[SIZE_OF_BUFFERS];
#endif
#if NARRAYS > 9
int array10[SIZE_OF_BUFFERS];
#endif

int key_array[SIZE_OF_BUFFERS];



/********************/
/* Some global info */
/********************/
int *key_buff_ptr_global;         /* used by full_verify to get */
                                       /* copies of rank info        */

int      passed_verification;

int test_index_array[TEST_ARRAY_SIZE],
         test_rank_array[TEST_ARRAY_SIZE],

         S_test_index_array[TEST_ARRAY_SIZE] = 
                             {48427,17148,23627,62548,4431},
         S_test_rank_array[TEST_ARRAY_SIZE] = 
                             {0,18,346,64917,65463},

         W_test_index_array[TEST_ARRAY_SIZE] = 
                             {357773,934767,875723,898999,404505},
         W_test_rank_array[TEST_ARRAY_SIZE] = 
                             {1249,11698,1039987,1043896,1048018},

         A_test_index_array[TEST_ARRAY_SIZE] = 
                             {2112377,662041,5336171,3642833,4250760},
         A_test_rank_array[TEST_ARRAY_SIZE] = 
                             {104,17523,123928,8288932,8388264},

         B_test_index_array[TEST_ARRAY_SIZE] = 
                             {41869,812306,5102857,18232239,26860214},
         B_test_rank_array[TEST_ARRAY_SIZE] = 
                             {33422937,10244,59149,33135281,99};
                                 


void full_verify( void );

/*****************************************************************/
/*************           R  A  N  D  L  C             ************/
/*************                                        ************/
/*************    portable random number generator    ************/
/*****************************************************************/

double	randlc( double *X, double *A )
{
      static int        KS=0;
      static double	R23, R46, T23, T46;
      double		T1, T2, T3, T4;
      double		A1;
      double		A2;
      double		X1;
      double		X2;
      double		Z;
      int     		i, j;

      if (KS == 0) 
      {
        R23 = 1.0;
        R46 = 1.0;
        T23 = 1.0;
        T46 = 1.0;
    
        for (i=1; i<=23; i++)
        {
          R23 = 0.50 * R23;
          T23 = 2.0 * T23;
        }
        for (i=1; i<=46; i++)
        {
          R46 = 0.50 * R46;
          T46 = 2.0 * T46;
        }
        KS = 1;
      }

/*  Break A into two parts such that A = 2^23 * A1 + A2 and set X = N.  */

      T1 = R23 * *A;
      j  = T1;
      A1 = j;
      A2 = *A - T23 * A1;

/*  Break X into two parts such that X = 2^23 * X1 + X2, compute
    Z = A1 * X2 + A2 * X1  (mod 2^23), and then
    X = 2^23 * Z + A2 * X2  (mod 2^46).                            */

      T1 = R23 * *X;
      j  = T1;
      X1 = j;
      X2 = *X - T23 * X1;
      T1 = A1 * X2 + A2 * X1;
      
      j  = R23 * T1;
      T2 = j;
      Z = T1 - T23 * T2;
      T3 = T23 * Z + A2 * X2;
      j  = R46 * T3;
      T4 = j;
      *X = T3 - T46 * T4;
      return(R46 * *X);
} 




/*****************************************************************/
/*************      C  R  E  A  T  E  _  S  E  Q      ************/
/*****************************************************************/

void	create_seq( double seed, double a, int *key_array )
{
	double x;
	int    i, k;

        k = MAX_KEY/4;

	for (i=0; i<NUM_KEYS; i++)
	{
	    x = randlc(&seed, &a);
	    x += randlc(&seed, &a);
    	    x += randlc(&seed, &a);
	    x += randlc(&seed, &a);  

            key_array[i] = k*x;
	}
}


/*****************************************************************/
/*************    F  U  L  L  _  V  E  R  I  F  Y     ************/
/*****************************************************************/


void full_verify()
{
    int    i, j;
    int    k;
    int    m, unique_keys;


    
/*  Now, finally, sort the keys:  */
    for( i=0; i<NUM_KEYS; i++ )
        key_array[--key_buff_ptr_global[
#if NARRAYS == 2
    array2
#elif NARRAYS == 3
    array3
#elif NARRAYS == 4
    array4
#elif NARRAYS == 5
    array5
#elif NARRAYS == 6
    array6
#elif NARRAYS == 7
    array7
#elif NARRAYS == 8
    array8
#elif NARRAYS == 9
    array9
#elif NARRAYS == 10
    array10
#endif
[i]]] = 
#if NARRAYS == 2
    array2
#elif NARRAYS == 3
    array3
#elif NARRAYS == 4
    array4
#elif NARRAYS == 5
    array5
#elif NARRAYS == 6
    array6
#elif NARRAYS == 7
    array7
#elif NARRAYS == 8
    array8
#elif NARRAYS == 9
    array9
#elif NARRAYS == 10
    array10
#endif
[i];


/*  Confirm keys correctly sorted: count incorrectly sorted keys, if any */

    j = 0;
    for( i=1; i<NUM_KEYS; i++ )
        if( key_array[i-1] > key_array[i] )
            j++;


    if( j != 0 )
    {
        printf( "Full_verify: number of keys out of sort: %d\n",
                j );
    }
    else
        passed_verification++;
           

}



/*****************************************************************/
/*************             H  A  S  H             ****************/
/*****************************************************************/

#if HASHTYPE == 0

/* Code from http://stackoverflow.com/questions/664014/what-integer-hash-function-are-good-that-accepts-an-integer-hash-key#12996028 */
unsigned int
hash(unsigned int x) {
  x = ((x >> 16) ^ x) * 0x45d9f3b;
  x = ((x >> 16) ^ x) * 0x45d9f3b;
  x = (x >> 16) ^ x;
  /* Yes, it's going to mess up the distribution by taking an & */
  return x & (MAX_KEY - 1);
}

#else

/*
-------------------------------------------------------------------------------
lookup3.c, by Bob Jenkins, May 2006, Public Domain.

These are functions for producing 32-bit hashes for hash table lookup.
hashword(), hashlittle(), hashlittle2(), hashbig(), mix(), and final() 
are externally useful functions.  Routines to test the hash are included 
if SELF_TEST is defined.  You can use this free for any purpose.  It's in
the public domain.  It has no warranty.

You probably want to use hashlittle().  hashlittle() and hashbig()
hash byte arrays.  hashlittle() is is faster than hashbig() on
little-endian machines.  Intel and AMD are little-endian machines.
On second thought, you probably want hashlittle2(), which is identical to
hashlittle() except it returns two 32-bit hashes for the price of one.  
You could implement hashbig2() if you wanted but I haven't bothered here.

If you want to find a hash of, say, exactly 7 integers, do
  a = i1;  b = i2;  c = i3;
  mix(a,b,c);
  a += i4; b += i5; c += i6;
  mix(a,b,c);
  a += i7;
  final(a,b,c);
then use c as the hash value.  If you have a variable length array of
4-byte integers to hash, use hashword().  If you have a byte array (like
a character string), use hashlittle().  If you have several byte arrays, or
a mix of things, see the comments above hashlittle().  

Why is this so big?  I read 12 bytes at a time into 3 4-byte integers, 
then mix those integers.  This is fast (you can do a lot more thorough
mixing with 12*3 instructions on 3 integers than you can with 3 instructions
on 1 byte), but shoehorning those bytes into integers efficiently is messy.
-------------------------------------------------------------------------------
*/
#include <stdint.h>

#define hashsize(n) ((uint32_t)1<<(n))
#define hashmask(n) (hashsize(n)-1)
#define rot(x,k) (((x)<<(k)) | ((x)>>(32-(k))))

/*
-------------------------------------------------------------------------------
mix -- mix 3 32-bit values reversibly.

This is reversible, so any information in (a,b,c) before mix() is
still in (a,b,c) after mix().

If four pairs of (a,b,c) inputs are run through mix(), or through
mix() in reverse, there are at least 32 bits of the output that
are sometimes the same for one pair and different for another pair.
This was tested for:
* pairs that differed by one bit, by two bits, in any combination
  of top bits of (a,b,c), or in any combination of bottom bits of
  (a,b,c).
  * "differ" is defined as +, -, ^, or ~^.  For + and -, I transformed
  the output delta to a Gray code (a^(a>>1)) so a string of 1's (as
  is commonly produced by subtraction) look like a single 1-bit
  difference.
  * the base values were pseudorandom, all zero but one bit set, or 
  all zero plus a counter that starts at zero.

Some k values for my "a-=c; a^=rot(c,k); c+=b;" arrangement that
satisfy this are
    4  6  8 16 19  4
    9 15  3 18 27 15
   14  9  3  7 17  3
Well, "9 15 3 18 27 15" didn't quite get 32 bits diffing
for "differ" defined as + with a one-bit base and a two-bit delta.  I
used http://burtleburtle.net/bob/hash/avalanche.html to choose 
the operations, constants, and arrangements of the variables.

This does not achieve avalanche.  There are input bits of (a,b,c)
that fail to affect some output bits of (a,b,c), especially of a.  The
most thoroughly mixed value is c, but it doesn't really even achieve
avalanche in c.

This allows some parallelism.  Read-after-writes are good at doubling
the number of bits affected, so the goal of mixing pulls in the opposite
direction as the goal of parallelism.  I did what I could.  Rotates
seem to cost as much as shifts on every machine I could lay my hands
on, and rotates are much kinder to the top and bottom bits, so I used
rotates.
-------------------------------------------------------------------------------
*/
#define mix(a,b,c) \
  { \
    a -= c;  a ^= rot(c, 4);  c += b; \
    b -= a;  b ^= rot(a, 6);  a += c; \
    c -= b;  c ^= rot(b, 8);  b += a; \
    a -= c;  a ^= rot(c,16);  c += b; \
    b -= a;  b ^= rot(a,19);  a += c; \
    c -= b;  c ^= rot(b, 4);  b += a; \
  }

/*
-------------------------------------------------------------------------------
final -- final mixing of 3 32-bit values (a,b,c) into c

Pairs of (a,b,c) values differing in only a few bits will usually
produce values of c that look totally different.  This was tested for
* pairs that differed by one bit, by two bits, in any combination
  of top bits of (a,b,c), or in any combination of bottom bits of
  (a,b,c).
  * "differ" is defined as +, -, ^, or ~^.  For + and -, I transformed
  the output delta to a Gray code (a^(a>>1)) so a string of 1's (as
  is commonly produced by subtraction) look like a single 1-bit
  difference.
  * the base values were pseudorandom, all zero but one bit set, or 
  all zero plus a counter that starts at zero.

These constants passed:
 14 11 25 16 4 14 24
 12 14 25 16 4 14 24
and these came close:
  4  8 15 26 3 22 24
 10  8 15 26 3 22 24
 11  8 15 26 3 22 24
-------------------------------------------------------------------------------
*/
#define final(a,b,c) \
  { \
    c ^= b; c -= rot(b,14); \
    a ^= c; a -= rot(c,11); \
    b ^= a; b -= rot(a,25); \
    c ^= b; c -= rot(b,16); \
    a ^= c; a -= rot(c,4);  \
    b ^= a; b -= rot(a,14); \
    c ^= b; c -= rot(b,24); \
  }

/*
--------------------------------------------------------------------
 This works on all machines.  To be useful, it requires
 -- that the key be an array of uint32_t's, and
 -- that the length be the number of uint32_t's in the key

 The function hashword() is identical to hashlittle() on little-endian
 machines, and identical to hashbig() on big-endian machines,
 except that the length has to be measured in uint32_ts rather than in
 bytes.  hashlittle() is more complicated than hashword() only because
 hashlittle() has to dance around fitting the key bytes into registers.
--------------------------------------------------------------------
*/
inline
uint32_t hashword(
                  const uint32_t *k,                   /* the key, an array of uint32_t values */
                  size_t          length,               /* the length of the key, in uint32_ts */
                  uint32_t        initval)         /* the previous hash, or an arbitrary value */
{
  uint32_t a,b,c;

  /* Set up the internal state */
  a = b = c = 0xdeadbeef + (((uint32_t)length)<<2) + initval;

  /*------------------------------------------------- handle most of the key */
  while (length > 3)
    {
      a += k[0];
      b += k[1];
      c += k[2];
      mix(a,b,c);
      length -= 3;
      k += 3;
    }

  /*------------------------------------------- handle the last 3 uint32_t's */
  switch(length)                     /* all the case statements fall through */
    { 
    case 3 : c+=k[2];
    case 2 : b+=k[1];
    case 1 : a+=k[0];
      final(a,b,c);
    case 0:     /* case 0: nothing left to add */
      break;
    }
  /*------------------------------------------------------ report the result */
  return c;
}

#define hash(x) hashword(&x, 1, 0)


#endif


/*****************************************************************/
/*************             R  A  N  K             ****************/
/*****************************************************************/

void rank( int iteration )
{
    int i;

    array1[iteration] = iteration;
    array1[iteration+MAX_ITERATIONS] = MAX_KEY - iteration;

/*  Clear the work array */
    for( i=0; i<MAX_KEY; i++ )
#if NARRAYS == 2
    array2
#elif NARRAYS == 3
    array3
#elif NARRAYS == 4
    array4
#elif NARRAYS == 5
    array5
#elif NARRAYS == 6
    array6
#elif NARRAYS == 7
    array7
#elif NARRAYS == 8
    array8
#elif NARRAYS == 9
    array9
#elif NARRAYS == 10
    array10
#endif
        [i] = 0;

/*  Ranking of all keys occurs in this section:                 */
    for( i=0; i<NUM_KEYS; i++ ) {

        /* Prefetches - array1 */
#if NSWPF > 0
        __builtin_prefetch(&array1[i+PFDIST(1)]);
#endif

        /* Prefetches - array2 */
#if NSWPF > 1
        if (i+PFDIST(2) < NUM_KEYS) {
            __builtin_prefetch(&array2[
#if NHASH > 0
                                   hash(
#endif
                                       array1[i+PFDIST(2)]
#if NHASH > 0
                                       )
#endif
                                   ]);


        /* Prefetches - array3 */
#if NSWPF > 2
            __builtin_prefetch(&array3[
#if NHASH > 1
                                   hash(
#endif
                                       array2[
#if NHASH > 0
                                           hash(
#endif
                                               array1[i+PFDIST(3)]
#if NHASH > 0
                                               )
#endif
                                           ]
#if NHASH > 1
                                       )
#endif
                                   ]);
#endif

        /* Prefetches - array4 */
#if NSWPF > 3
            __builtin_prefetch(&array4[
#if NHASH > 2
                                   hash(
#endif
                                       array3[
#if NHASH > 1
                                           hash(
#endif
                                               array2[
#if NHASH > 0
                                                   hash(
#endif
                                                       array1[i+PFDIST(4)]
#if NHASH > 0
                                                       )
#endif
                                                   ]
#if NHASH > 1
                                               )
#endif
                                           ]
#if NHASH > 2
                                       )
#endif
                                   ]);
#endif

        /* Prefetches - array5 */
#if NSWPF > 4
            __builtin_prefetch(&array5[
#if NHASH > 3
                                   hash(
#endif
                                       array4[
#if NHASH > 2
                                           hash(
#endif
                                               array3[
#if NHASH > 1
                                                   hash(
#endif
                                                       array2[
#if NHASH > 0
                                                           hash(
#endif
                                                               array1[i+PFDIST(5)]
#if NHASH > 0
                                                               )
#endif
                                                           ]
#if NHASH > 1
                                                       )
#endif
                                                   ]
#if NHASH > 2
                                               )
#endif
                                           ]
#if NHASH > 3
                                       )
#endif
                                   ]);
#endif

        /* Prefetches - array6 */
#if NSWPF > 5
            __builtin_prefetch(&array6[
#if NHASH > 4
                                   hash(
#endif
                                       array5[
#if NHASH > 3
                                           hash(
#endif
                                               array4[
#if NHASH > 2
                                                   hash(
#endif
                                                       array3[
#if NHASH > 1
                                                           hash(
#endif
                                                               array2[
#if NHASH > 0
                                                                   hash(
#endif
                                                                       array1[i+PFDIST(6)]
#if NHASH > 0
                                                                       )
#endif
                                                                   ]
#if NHASH > 1
                                                               )
#endif
                                                           ]
#if NHASH > 2
                                                       )
#endif
                                                   ]
#if NHASH > 3
                                               )
#endif
                                           ]
#if NHASH > 4
                                       )
#endif
                                   ]);
#endif

        /* Prefetches - array7 */
#if NSWPF > 6
            __builtin_prefetch(&array7[
#if NHASH > 5
                                   hash(
#endif
                                       array6[
#if NHASH > 4
                                           hash(
#endif
                                               array5[
#if NHASH > 3
                                                   hash(
#endif
                                                       array4[
#if NHASH > 2
                                                           hash(
#endif
                                                               array3[
#if NHASH > 1
                                                                   hash(
#endif
                                                                       array2[
#if NHASH > 0
                                                                           hash(
#endif
                                                                               array1[i+PFDIST(7)]
#if NHASH > 0
                                                                               )
#endif
                                                                           ]
#if NHASH > 1
                                                                       )
#endif
                                                                   ]
#if NHASH > 2
                                                               )
#endif
                                                           ]
#if NHASH > 3
                                                       )
#endif
                                                   ]
#if NHASH > 4
                                               )
#endif
                                           ]
#if NHASH > 5
                                       )
#endif
                                   ]);
#endif

        /* Prefetches - array8 */
#if NSWPF > 7
            __builtin_prefetch(&array8[
#if NHASH > 6
                                   hash(
#endif
                                       array7[
#if NHASH > 5
                                           hash(
#endif
                                               array6[
#if NHASH > 4
                                                   hash(
#endif
                                                       array5[
#if NHASH > 3
                                                           hash(
#endif
                                                               array4[
#if NHASH > 2
                                                                   hash(
#endif
                                                                       array3[
#if NHASH > 1
                                                                           hash(
#endif
                                                                               array2[
#if NHASH > 0
                                                                                   hash(
#endif
                                                                                       array1[i+PFDIST(8)]
#if NHASH > 0
                                                                                       )
#endif
                                                                                   ]
#if NHASH > 1
                                                                               )
#endif
                                                                           ]
#if NHASH > 2
                                                                       )
#endif
                                                                   ]
#if NHASH > 3
                                                               )
#endif
                                                           ]
#if NHASH > 4
                                                       )
#endif
                                                   ]
#if NHASH > 5
                                               )
#endif
                                           ]
#if NHASH > 6
                                       )
#endif
                                   ]);
#endif

        /* Prefetches - array9 */
#if NSWPF > 8
            __builtin_prefetch(&array9[
#if NHASH > 7
                                   hash(
#endif
				array8[
#if NHASH > 6
                                   hash(
#endif
                                       array7[
#if NHASH > 5
                                           hash(
#endif
                                               array6[
#if NHASH > 4
                                                   hash(
#endif
                                                       array5[
#if NHASH > 3
                                                           hash(
#endif
                                                               array4[
#if NHASH > 2
                                                                   hash(
#endif
                                                                       array3[
#if NHASH > 1
                                                                           hash(
#endif
                                                                               array2[
#if NHASH > 0
                                                                                   hash(
#endif
                                                                                       array1[i+PFDIST(9)]
#if NHASH > 0
                                                                                       )
#endif
                                                                                   ]
#if NHASH > 1
                                                                               )
#endif
                                                                           ]
#if NHASH > 2
                                                                       )
#endif
                                                                   ]
#if NHASH > 3
                                                               )
#endif
                                                           ]
#if NHASH > 4
                                                       )
#endif
                                                   ]
#if NHASH > 5
                                               )
#endif
                                           ]
#if NHASH > 6
                                       )
#endif
     				]
#if NHASH > 7
                                       )
#endif
                                   ]);
#endif



  /* Prefetches - array10 */
#if NSWPF > 9
            __builtin_prefetch(&array10[
#if NHASH > 8
                                   hash(
#endif
				array9[
#if NHASH > 7
                                   hash(
#endif
				array8[
#if NHASH > 6
                                   hash(
#endif
                                       array7[
#if NHASH > 5
                                           hash(
#endif
                                               array6[
#if NHASH > 4
                                                   hash(
#endif
                                                       array5[
#if NHASH > 3
                                                           hash(
#endif
                                                               array4[
#if NHASH > 2
                                                                   hash(
#endif
                                                                       array3[
#if NHASH > 1
                                                                           hash(
#endif
                                                                               array2[
#if NHASH > 0
                                                                                   hash(
#endif
                                                                                       array1[i+PFDIST(10)]
#if NHASH > 0
                                                                                       )
#endif
                                                                                   ]
#if NHASH > 1
                                                                               )
#endif
                                                                           ]
#if NHASH > 2
                                                                       )
#endif
                                                                   ]
#if NHASH > 3
                                                               )
#endif
                                                           ]
#if NHASH > 4
                                                       )
#endif
                                                   ]
#if NHASH > 5
                                               )
#endif
                                           ]
#if NHASH > 6
                                       )
#endif
     				]
#if NHASH > 7
                                       )
#endif
			]
#if NHASH > 8
                                       )
#endif
                                   ]);
#endif

}
#endif
        /* The real work */

#if NARRAYS > 9
        array10[
#endif
#if NHASH > 8
            hash(
#endif            
#if NARRAYS > 8
        array9[
#endif
#if NHASH > 7
            hash(
#endif        
#if NARRAYS > 7
        array8[
#endif
#if NHASH > 6
            hash(
#endif
#if NARRAYS > 6
                array7[
#endif
#if NHASH > 5
                    hash(
#endif
#if NARRAYS > 5
                        array6[
#endif
#if NHASH > 4
                            hash(
#endif
#if NARRAYS > 4
                                array5[
#endif
#if NHASH > 3
                                    hash(
#endif
#if NARRAYS > 3
                                        array4[
#endif
#if NHASH > 2
                                            hash(
#endif
#if NARRAYS > 2
                                                array3[
#endif
#if NHASH > 1
                                                    hash(
#endif
                                                        array2[
#if NHASH > 0
                                                            hash(
#endif
                                                                array1[i]
#if NHASH > 0
                                                                )
#endif
                                                            ]
#if NHASH > 1
                                                        )
#endif
#if NARRAYS > 2
                                                    ]
#endif
#if NHASH > 2
                                                )
#endif
#if NARRAYS > 3
                                            ]
#endif
#if NHASH > 3
                                        )
#endif
#if NARRAYS > 4
                                    ]
#endif
#if NHASH > 4
                                )
#endif
#if NARRAYS > 5
                            ]
#endif
#if NHASH > 5
                        )
#endif
#if NARRAYS > 6
                    ]
#endif
#if NHASH > 6
                )
#endif
#if NARRAYS > 7
            ]
#endif
#if NHASH > 7
                )
#endif
#if NARRAYS > 8
            ]
#endif
#if NHASH > 8
                )
#endif
#if NARRAYS > 9
            ]
#endif
            ++;
    }
}


#include <time.h>
     
     clock_t start, end;
     double cpu_time_used;


/*****************************************************************/
/*************             M  A  I  N             ****************/
/*****************************************************************/

int main( int argc, char **argv )
{
    int             i, iteration, itemp, maxiterations;
    double          timecounter, maxtime;

    maxiterations = MAX_ITERATIONS;
    for (i = 2; i < NARRAYS; ++i) {
      maxiterations >>= 1;
    }
    maxiterations = maxiterations > 2 ? maxiterations : 2;

    printf("\n\n Breakeven Test\n\n");
    printf(" Size: %d\n", TOTAL_KEYS);
    printf(" Arrays: %d\n", NARRAYS);
    printf(" Iterations: %d\n", maxiterations);

/*  Initialize timer  */             
    timer_clear( 1 );
    
        long secs=0,msecs=0;

/*  Generate random number sequence and subsequent keys on all procs */
    create_seq( 314159265.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array1);
#if NARRAYS > 2
    create_seq( 314159267.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array2);
#endif
#if NARRAYS > 3
    create_seq( 314159269.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array3);
#endif
#if NARRAYS > 4
    create_seq( 314159271.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array4);
#endif
#if NARRAYS > 5
    create_seq( 314159273.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array5);
#endif
#if NARRAYS > 6
    create_seq( 314159275.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array6);
#endif
#if NARRAYS > 7
    create_seq( 314159279.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array7);
#endif

#if NARRAYS > 8
    create_seq( 314159279.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array7);
#endif

#if NARRAYS > 9
    create_seq( 314159279.00,                    /* Random number gen seed */
                1220703125.00,                   /* Random number gen mult */
                array7);
#endif

/*  Do one interation for free (i.e., untimed) to guarantee initialization of
    all data and code pages and respective tables */
    rank( 1 );

    printf( "\n   iteration\n" );

/*  Start timer  */             

        start = clock();


/*  This is the main iteration */    
    for( iteration=1; iteration<=maxiterations; iteration++ )
    {
        printf( "        %d\n", iteration );
	
        rank( iteration );
    }

/*  End of timing, obtain maximum time of all processors */
    timer_stop( 1 );
    timecounter = timer_read( 1 );
    
       end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
    
    printf("time : %f\n",cpu_time_used );
}
