---
layout: post
title: "Living in the Shell #8; unzip"
date: 2021-12-03 21:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `unzip` 🎉

Extracts ZIP archive contents.

## Test archive integrity `-t`

```sh
unzip -t x.zip
```

## List archive content (short format) `-l`

```sh
unzip -l x.zip
```

## Display exhaustive archive information/content `-Zzl`

```sh
unzip -Zzl x.zip
```

## Extract all files into given path `-d`

```sh
unzip x.zip -d output-dir
```

> Extracts all files into `output-dir` directory.

## Extract specific files

```sh
unzip x.zip a.txt b.txt
```

## Extract all, but exclude some files `-x`

```sh
unzip x.zip -x a.txt b.txt
```

> Extracts all but excludes `a.txt` and `b.txt`.

## Extract with overwrite `-o`

```sh
unzip -o x.zip -d output-dir
```

## Extract without overwrite `-n`

```sh
unzip -n x.zip -d output-dir
```

{% include_relative living-in-the-shell-footer.markdown %}
