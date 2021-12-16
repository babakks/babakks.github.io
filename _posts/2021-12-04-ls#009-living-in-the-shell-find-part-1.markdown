---
layout: post
title: "Living in the Shell #9; find (File/Directory Search) (Part 1)"
date: 2021-12-04 22:30:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `find` 🔍

Finds files matching given criteria.

## Find by name `-name`/`-iname`

```sh
find /home/babak -name "*bash*"
```

> - Finds all files/directories matching \*bash\* descended from `/home/babak`.
> - Use `-iname` for **case-insensitive** search.

## Find by matching on path `-path`/`-ipath`

```sh
find ~ -path "*/config/*"
```

> - Finds all files/directories that their path string include "/config/".
> - Use `-ipath` for **case-insensitive** search.

## Find by RE pattern `-regex`/`-iregex`

```sh
find ~ -regextype egrep -regex '.*/(conf|config)$'
```

> - Finds all files/directories that their path end with "config" or "conf".
> - Use `-iregex` for **case-insensitive** search.
> - Use `-regextype egrep` if you prefer **`grep` extended RE** format.

## Find files (exclude directories) `-type f`

```sh
find ~ -type f -name "*bash*"
```

## Find directories `-type d`

```sh
find ~ -type d -name "Do*"
```

## Limit recursion depth `-maxdepth`/`-mindepth`

```sh
find ~ -maxdepth 2 -type f -name "*.txt"
```

{% include_relative living-in-the-shell-footer.markdown %}
