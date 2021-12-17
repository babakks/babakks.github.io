---
layout: post
title: "Living in the Shell #19; df (Report Disk Free Space)"
date: 2021-12-18 22:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `df` 💾

Reports disk free space.

## See disk free space

```sh
df
```

> ```text
> Filesystem     1K-blocks      Used Available Use% Mounted on
> tmpfs            1603540      2068   1601472   1% /run
> /dev/nvme0n1p3 471738592 268747932 178957944  61% /
> tmpfs            8017688    327492   7690196   5% /dev/shm
> tmpfs               5120         4      5116   1% /run/lock
> tmpfs               4096         0      4096   0% /sys/fs/cgroup
> /dev/nvme0n1p1    244988      5304    239684   3% /boot/efi
> tmpfs            1603536       120   1603416   1% /run/user/1000
> ```
>
> Note that the values are in kilobytes.

## Human-readable size values `-h`

```sh
df -h
```

> ```text
> Filesystem      Size  Used Avail Use% Mounted on
> tmpfs           1.6G  2.1M  1.6G   1% /run
> /dev/nvme0n1p3  450G  257G  171G  61% /
> tmpfs           7.7G  313M  7.4G   4% /dev/shm
> tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> tmpfs           4.0M     0  4.0M   0% /sys/fs/cgroup
> /dev/nvme0n1p1  240M  5.2M  235M   3% /boot/efi
> tmpfs           1.6G  120K  1.6G   1% /run/user/1000
> ```

## Include file-system type `-T`

```sh
df -hT
```

> ```text
> Filesystem     Type   Size  Used Avail Use% Mounted on
> tmpfs          tmpfs  1.6G  2.1M  1.6G   1% /run
> /dev/nvme0n1p3 ext4   450G  257G  171G  61% /
> tmpfs          tmpfs  7.7G  296M  7.4G   4% /dev/shm
> tmpfs          tmpfs  5.0M  4.0K  5.0M   1% /run/lock
> tmpfs          tmpfs  4.0M     0  4.0M   0% /sys/fs/cgroup
> /dev/nvme0n1p1 vfat   240M  5.2M  235M   3% /boot/efi
> tmpfs          tmpfs  1.6G  120K  1.6G   1% /run/user/1000
> ```

## Produce a grand total `--total`

```sh
df -h --total
```

> ```text
> Filesystem      Size  Used Avail Use% Mounted on
> ...
> total           461G  257G  182G  59% -
> ```

{% include_relative living-in-the-shell-footer.markdown %}
