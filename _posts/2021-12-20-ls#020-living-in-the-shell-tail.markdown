---
layout: post
title: "Living in the Shell #20; tail (Display/Follow File Content)"
date: 2021-12-20 23:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `tail` ⛵

Display or follow file content.

ℹ️ Here, *following* means streaming a file while it's being updated (appended).

ℹ️ You can use `-c` in place of `-n` in the following examples, to switch to binary offset selection.

## Print bottom N lines of a file `-n`

```sh
tail -n 5 ~/.bashrc
```

> Prints last 5 lines of `~/.bashrc`

## Print from N-th line afterwards `-n +N`

```sh
tail -n +3 ~/.bashrc
```

> Prints `~/.bashrc` from the 3rd line until the end.

## Following `syslog` events `-f`

```sh
tail -f /var/log/syslog
```

> Follows system logs (on Debian/Ubuntu).

{% include_relative living-in-the-shell-footer.markdown %}
