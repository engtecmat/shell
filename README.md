# Shell

当一个文件中开头的两个字符是`#!`时，内核会扫描该行其余部分，看是否存在可用来执行程序的解释器（中间如果出现任何空白符号都会被略过），`/bin/sh`是其中一种解释器。


```shell
who # 查看现在有谁登录系统
who | wc -l # |（管道）符号可以在两个程序之间建立管道（pipeline）:who 的输出，成了 wc 的输入。wc（字数计算）程序，可以计算行数（line），字数（word）与字符数（character）
cat > filename # 创建文cat
who; pwd # 分号（;）可用来分隔同一行里的多条命令。Shell会依次执行这些命令。
```


