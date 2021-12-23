---
layout: post
title: "Living in the Shell #22; md5sum/shasum (Check/Compute MD5/SHA Checksum of Files)"
date: 2021-12-23 15:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `md5sum`/`shasum` #️⃣

Checks/computes MD5/SHA checksum of files.

## Compute MD5 checksum

```sh
md5sum ~/.bashrc ~/.zshrc ~/.profile
```

> ```text
> fc4231f666b25990eefc1c51917d7bb1  /home/babak/.bashrc
> 6688207953bbd9d20d487a9509a6c297  /home/babak/.zshrc
> 43f7dc02e7bfb5d40703b5cb94e274ce  /home/babak/.profile
> ```

## Compute SHA1 checksum

```sh
shasum ~/.bashrc ~/.zshrc ~/.profile
```

> ```text
> 499460ce753fa4b02cbb8c7e0cb61b1a9583bcd9  /home/babak/.bashrc
> 2f195c1d8c86cf34e4bdbd947e76fc9cb0bc900e  /home/babak/.zshrc
> 63d1a74119f9a8a84fd930ed8341395e9ab867f0  /home/babak/.profile
> ```

## Compute other SHA checksums `-a`

```sh
shasum -a 256 ~/.bashrc ~/.zshrc ~/.profile
```

> ```text
> 25d3d9737d0773dd6ece3a3536205784ce099314d68721eb5a865e82af66495c  /home/babak/.bashrc
> 5db662d84b785f026d6613e7e187a4a9c9333c9a38acf49ea7a5e15f4bb203c8  /home/babak/.zshrc
> 4c532d3d8bb0988d61ac334b1ffc6302ba0aac350b0d5c98102c3c4c443602f9  /home/babak/.profile
> ```
>
> ℹ️ Supported SHA types are: 1 (default), 224, 256, 384, 512, 512224, 512256

## Create checksums file for later checks

```sh
shasum ~/.bashrc ~/.zshrc ~/.profile > SHA1SUMS
md5sum ~/.bashrc ~/.zshrc ~/.profile > MD5SUMS
```

## Check checksums `--check`

```sh
shasum --check SHA1SUMS
md5sum --check MD5SUMS
```

> ```text
> /home/babak/.bashrc: OK
> /home/babak/.zshrc: OK
> /home/babak/.profile: OK
> ```

{% include_relative living-in-the-shell-footer.markdown %}
