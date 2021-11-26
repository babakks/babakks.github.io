---
layout: post
title: "Living in the Shell; grep (Part 2) [LS#3]"
date: 2021-11-26 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `grep`🎖️

Prints/filters lines that match a [Regular Expression (RE)][re] pattern.

[re]: https://en.wikipedia.org/wiki/Regular_expression

## Print line numbers `-n`

```sh
echo -n 'Hello World!\nI''m Going!\nGoodbye!' | grep -n "G."
```

> ```text
> 2:Im Going!
> 3:Goodbye!
> ```

## Print lines around (after/before) every match `-A` `-B`

```sh
cat ~/.bashrc | grep "if" -A 5 -B 1
```

> Prints next 5 lines and previous 1 line when caught any "if".

## Only check silently (no output) `-q`

```sh
cat ~/.bashrc | grep -q "alias"
```

> Returns with `0` exit code on any match, otherwise `1`.

## Count matching lines `-c`

```sh
cat ~/.bashrc | grep -c "alias"
```

## Print only matching substring `-o`

```sh
echo -n 'Hello World!\nI''m Going!\nGoodbye!' | grep -o "G..d"
```

> ```text
> Good
> ```

{% include_relative living-in-the-shell-footer.markdown %}
