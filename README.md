# Shell

当一个文件中开头的两个字符是`#!`时，内核会扫描该行其余部分，看是否存在可用来执行程序的解释器（中间如果出现任何空白符号都会被略过），`/bin/sh`是其中一种解释器。

- `<`：改变标准输入。
- `>`：改变标准输出。
- `>>`：附件到文件。
- `|`：建立管道。

**特殊文件**

- `/dev/null`，位桶（bit bucket），传送到此文件的数据都会被系统丢掉。
- `/dev/tty`，当程序打开此文件时，UNIX 会自动将它重定向到一个终端再与程序结合。

```shell
who # 查看现在有谁登录系统。
who | wc -l # |（管道）符号可以在两个程序之间建立管道（pipeline）：who 的输出，成了 wc 的输入。wc（字数计算）程序，可以计算行数（line），字数（word）与字符数（character）。
cat > filename # 创建文件。
who; pwd # 分号（;）可用来分隔同一行里的多条命令。Shell 会依次执行这些命令。
tr -d '\r' < doc.txt | sort > new-doc.txt # 先删除文件内的回车字符，在完成数据的排序之后，将结果输出到目的文件。
xargs # 命令是给其他命令传递参数的一个过滤器
```


