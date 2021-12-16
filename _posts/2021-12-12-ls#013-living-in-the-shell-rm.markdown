---
layout: post
title: "Living in the Shell #13; rm (Delete Files/Directories)"
date: 2021-12-12 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `rm` 💣

Removes files or directories.

💀 Removal is irreversible.

## Remove a single file

```sh
rm some-file
```

## Remove multiple files

```sh
rm first-file second-file third-file
```

## Remove a directory `-r`

```sh
rm -r my-dir
```

## Set to prompt before every removal `-i`

```sh
rm -ri my-dir
```

## Set to suppress any interaction/error `-f`

```sh
rm -rf my-dir my-non-existing-dir
```

{% include_relative living-in-the-shell-footer.markdown %}
