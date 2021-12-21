---
layout: post
title: "Living in the Shell #21; head (Display File Content From Beginning)"
date: 2021-12-21 23:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `head` 📜

Displays file content from beginning.

## Print first N lines of a file `-n`

```sh
head -n 5 ~/.bashrc
```

## Print all but N last lines `-n -N`

```sh
tail -n -3 ~/.bashrc
```

## Print first N bytes of a file `-c`

```sh
head -c 1k ~/.bashrc
```

> Prints first 1k of file binary content.

## Print all but N last bytes `-c -N`

```sh
tail -c -1k ~/.bashrc

{% include_relative living-in-the-shell-footer.markdown %}
