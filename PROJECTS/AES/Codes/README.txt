readme

####Key Expansion####

Routine used to generate a series of Round Keys from the Cipher Key.

The AES algorithm takes the Cipher Key, K, and performs a Key Expansion routine to generate a
key schedule. The Key Expansion generates a total of Nb (Nr + 1) words: the algorithm requires
an initial set of Nb words, and each of the Nr rounds requires Nb words of key data. The
resulting key schedule consists of a linear array of 4-byte words, denoted w[i], with i in the range
0 < i < Nb(Nr + 1).

@@@@SubWord() @@@@
A function that takes a four-byte input word and applies the S-box to each of the four bytes to produce an output word.

@@@@RotWord()@@@@
The function takes word [a0,a1,a2,a3] as input, performs a cyclic permutation, and returns the word [a1,a2,a3,a0].

@@@@Rcon@@@@
The round constant word array, Rcon[i], contains the values given by [xi-1,{00},{00},{00}], with
x^i-1 being powers of x (x is denoted as {02}) in the field GF(2^8).



####Encryption####

@@@@subbytes@@@@
The SubBytes() transformation is a non-linear byte substitution that operates independently
on each byte of the State using a substitution table (S-box).

@@@@Shiftrows@@@@
In the ShiftRows() transformation, the bytes in the last three rows of the State are cyclically
shifted over different numbers of bytes (offsets).

@@@@Mixcoloumns@@@@
Performs a matrix multiplication on the state.

@@@@Addroundkey@@@@
In the AddRoundKey() transformation, a Round Key is added to the State by a simple bitwise
XOR operation.

####Decryption#####
The Cipher transformations in can be inverted and then implemented in reverse order to
produce a straightforward Inverse Cipher for the AES algorithm.The individual transformations
used in the Inverse Cipher - InvShiftRows(), InvSubBytes(),InvMixColumns(),
and AddRoundKey().
