# CSAPP 计算机原理的五个Lab

## 简介
创立于 2021-06-22暑假，跟随B站CMU完课，初试五个lab；
完成于 2021-11-26 秋季学期，computer system 课程；
最费脑的是 lab1: bit operation，用位运算完成 加减乘除, if else, 甚至二分搜索树；
解谜题一样的是 lab2: bomb，通过反汇编找到代码中藏的答案，（掌握反汇编后 就可以破解Word软件了 lol）；
同样反汇编 但容易一些的是 lab3: attack，运用地址溢出进行 buffer overflow attack，（黑入室友电脑不再是问题？）；
最容易的是 lab4: cache lab，模拟一个电脑缓存系统，可能第二部分会难一点；
最耗费时间 lab5: shell，如同手写一个 bash zsh，处理输入是最难的：四处乱飞的空格 不标准的格式，需要 strtok 解决；
传说最难的是 lab6: malloc，似乎要用到“垃圾回收”，学会了就能写一个 Java Virtual Machine了？


## 一些位运算的技巧
减法 x-y
```c
x + ~y + 1
```
比较
```c
!(x ^ y) // x == y
(x - y) >> 31 // x < y

```

远南岛，
祝度过愉快的一天！
