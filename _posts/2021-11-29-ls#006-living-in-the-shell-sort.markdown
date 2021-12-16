---
layout: post
title: "Living in the Shell #6; sort"
date: 2021-11-29 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `sort` 🆎

Sorts/randomizes input lines.

## Sort lexically

```sh
echo -n 'Zack\nAdam\nCharles' | sort
```

> ```text
> Adam
> Charles
> Zack
> ```

## Sort descending `-r`

```sh
echo -n 'Zack\nAdam\nCharles' | sort -r
```

## Sort numerically `-n`

```sh
echo -n '10 Zack\n5 Adam\n1 Charles' | sort -n
```

> ```text
> 1 Charles
> 5 Adam
> 10 Zack
> ```

## Sort human-readable size numerics `-h`

```sh
echo -n '1G\n1K\n23MB' | sort -h
```

> ```text
> 1K
> 23MB
> 1G
> ```

## Check sorted state `-c`

```sh
echo -n 'Zack\nAdam\nCharles' | sort -c
```

> ```text
> sort: -:2: disorder: Adam
> ```
>
> (Exits with a nonzero exit code that indicates unsorted input.)

## Shuffle/randomize `-R`

```sh
echo -n 'Zack\nAdam\nCharles' | sort -R
```

{% include_relative living-in-the-shell-footer.markdown %}
