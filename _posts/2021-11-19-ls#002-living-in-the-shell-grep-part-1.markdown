---
layout: post
title: "Living in the Shell; grep (Part 1) [LS#2]"
date: 2021-11-25 14:00:00 +0330
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

## Filter constant

```sh
echo -n 'Hello World!\nI''m Going!\nGoodbye!' | grep "Good"
```

> ```text
  Goodbye!
  ```

## Filter file content

```sh
cat ~/.bashrc | grep "alias"
```

```sh
grep "alias" ~/.bashrc
```

## Filter pattern, with PERL flavour `-P`

```sh
cat ~/.bashrc | grep -P "^#"
```

> Prints lines beginning with `#`.

## Filter case-insensitive `-i`

```sh
echo -n 'Hello World!\nI''m Going!\nGoodbye!' | grep -i "go"
```

> ```text
  I'm Going!
  Goodbye!
  ```

## Exclude `-v`

```sh
echo -n 'Hello World!\nI''m Going!\nGoodbye!' | grep -i -v "go"
```

> ```text
  Hello World!
  ```

{% include_relative living-in-the-shell-footer.markdown %}
