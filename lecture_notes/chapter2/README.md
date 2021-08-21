# Chapter 2: Number Representation

## Lecture 2: Numbers
Why use binary not decimal? 
- digital vs analogue value
- eletronics 0 and 1 state and noise 
- store in bits more efficient
```
0x10 -> 16
0x1A -> 26
0x20 -> 32
0x30 -> 48
0x40 -> 64
0x50 -> 80

0x90 -> 144
0xD0 -> 208
0x100 -> 256
```
</br>
What are bit-wise operators?
- 16bits word, then 32, then 64
- what is x86-64
- diff, long, long double, and pointer 
- address is 8 bits
- bits operations
```
XOR (symmetic different): 1^1 = 0, 0^0 = 0
Complement (flip): ~
Union: |
Intersection: &

Right Shift has two flavors: 
Arth. fills with most significant: 10100 >> 2 = 11 101
Log. normal: 10100 >> 2 = 00 101

Left Shit same, but caveat: 
x << 8, some machine yield modulus of 8, some bunch of zeros
8 digits shift 8 position, why get mod 8? 
```

</br>
Integers 



