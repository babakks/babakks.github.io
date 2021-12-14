---
layout: post
title: "Living in the Shell; sed (Part 2) [LS#15]"
date: 2021-12-14 22:20:00 +0330
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

## Replace substring `s`

```sh
cat some-file.txt | sed 's/me/you/g'
```

> Replaces all occurrences of "me" with "you".

## Replace pattern `s`

```sh
echo "about\nabuse\namount" | sed 's/a\(\w*\?\)\w/\1/g'
```

> ```text
> bou
> bus
> moun
> ```
>
> `\1` refers to the first captured group.

## Transform to lowercase `\L`

```sh
echo "HELLO THERE\nHI THERE\nGOODBYE" | sed 's/H\w*/\L&/g'
```

> ```text
> hello There
> hi There
> GOODBYE
> ```
>
> - Transforms words beginning with "H" to lowercase.
> - `&` is the place holder for "entire match".

## Transform to uppercase `\U`

```sh
cat some-file.txt | sed 's/.*/\U&/g'
```

> Transforms all letters into uppercase.

{% include_relative living-in-the-shell-footer.markdown %}
