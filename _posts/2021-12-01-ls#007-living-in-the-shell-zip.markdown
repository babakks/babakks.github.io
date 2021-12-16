---
layout: post
title: "Living in the Shell #7; zip"
date: 2021-12-01 22:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `zip` 🗜️

Creates ZIP archives.

## Test archive integrity `-T`

```sh
zip -T x.zip
```

## Create/update zip archive (add/update file)

```sh
zip x.zip ~/.bashrc ~/.profile
```

> Creates `x.zip` archive file (if not exist) and adds `.bashrc` and `.profile` to it.

## Add directory and its content `-r`

```sh
zip -r x.zip ~/Documents
```

> Without `-r` nothing is added.

## Add all names except directories `-D`

```sh
zip -D x.zip ~/*
```

## Set password while add/update files `-P`

```sh
zip -P my-password x.zip file-to-add-or-update.txt
```

## Store-only mode (fast, without compression) `-0`

```sh
zip -0 x.zip ~/Pictures
```

## Fast compression mode (fast, low compression) `-1`

```sh
zip -1 x.zip ~/Pictures
```

## Ultimate compression mode (slow, maximum compression) `-9`

```sh
zip -9 x.zip ~/Pictures
```

## Delete file from archive `-d`

```sh
zip -d x.zip .bashrc
```

{% include_relative living-in-the-shell-footer.markdown %}
