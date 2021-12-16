---
layout: post
title: "Living in the Shell #14; sed (Text Stream Editor) (Part 1)"
date: 2021-12-13 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `sed` 🖊️

Edits streams by applying commonly used modifications.

## Add a new line `a` & `i`

```sh
cat some-file.txt | sed '3a This is a new line after the 3rd line' 
cat some-file.txt | sed '3i This is a new line before the 3rd line'
```

## Append a new line to the end `$a`

```sh
cat some-file.txt | sed '$a Now, this is the last line'
```

## Prepend a new line to the beginning `1i`

```sh
cat some-file.txt | sed '1i Now, this is the first line'
```

## Replace one or more lines `c`

```sh
cat some-file.txt | sed '1-3c BOOM'
```

> Replaces lines 1 through 3, with 'BOOM'.

## Delete one or more lines `d`

```sh
cat some-file.txt | sed '1-3d'
```

> Deletes lines 1 through 3.

{% include_relative living-in-the-shell-footer.markdown %}
