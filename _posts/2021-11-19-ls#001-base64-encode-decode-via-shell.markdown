---
layout: post
title: "Base64 Encode/Decode via Shell [LS#1]"
date: 2021-11-19 22:00:00 +0330
excerpt: |
    How to encode to or decode from Base64 representation?
categories: article
author: babakks
comments: true
published: true
series: "Living in the Shell"
---

## Encode inline

```sh
echo -n 'Hello World!' | base64
```

## Encode file (into file)

```sh
base64 ~/.bashrc > encoded-file.txt
```

```sh
cat ~/.bashrc | base64 > encoded-file.txt
```

## Decode inline

```sh
echo -n "SGVsbG8gV29ybGQh" | base64 -d
```

## Decode file (into file)

```sh
base64 -d encoded-file.txt > decoded-file.txt
```

```sh
cat encoded-file.txt | base64 -d > decoded-file.txt
```

{% include_relative living-in-the-shell-footer.markdown %}
