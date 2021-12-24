---
layout: post
title: "Living in the Shell #23; cut (Cut Text/Fields from Text Stream)"
date: 2021-12-24 22:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `cut` ✂️

Cuts/extracts text/fields out of text streams.

⚠️ Index values are one-based.

## Cut characters on a range `-c`

```sh
echo "Hello World\!\nGoodbye\!" | cut -c2-5
```

> Takes characters at indices 2 through 5.
>
> ```text
> ello
> oodb
> ```

## Cut characters on a half-limited range `-c`

```sh
echo "Hello World\!\nGoodbye\!" | cut -c3-
```

> Takes characters from indices 3 and afterwards.
>
> ```text
> llo World!
> odbye!
> ```

## Cut fields split by any delimiter `-f` & `-d`

```sh
echo "1,20,300\n40,500,6000\n700,8000,90000" | cut -f2,3 -d','
```

> ```text
> 20,300
> 500,6000
> 8000,90000
> ```

## Change fields delimiter `--output-delimiter`

```sh
echo "1,20,300\n40,500,6000\n700,8000,90000" | cut -f1- -d',' --output-delimiter '/'
```

> ```text
> 1/20/300
> 40/500/6000
> 700/8000/90000
> ```

## Invert selection `--complement`

```sh
echo "1,20,300\n40,500,6000\n700,8000,90000" | cut -f2,3 -d',' --complement
```

> ```text
> 1
> 40
> 700
> ```

{% include_relative living-in-the-shell-footer.markdown %}
