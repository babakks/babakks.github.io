---
layout: post
title: "Living in the Shell #5; ls (List Files/Directories)"
date: 2021-11-28 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `ls` 🚚

Lists directory content.

## Long list (detailed format) `-l`

```sh
cd ~ && ls -l
```

> ```text
> drwxr-xr-x 5 babak babak       4096 Nov  1 12:49 Desktop
> drwxr-xr-x 9 babak babak       4096 Nov 21 18:49 Documents
> drwxr-xr-x 2 babak babak      20480 Nov 23 17:21 Pictures
> ...
> ```

## Show directories first `--group-directories-first`

```sh
cd ~ && ls --group-directories-first
```


## List directory itself, not its content `-d`

```sh
cd ~ && ls -lhd Documents
```

> ```text
> drwxr-xr-x 9 babak babak 4.0K Nov 21 18:49 Documents
> ```

## List all files (include dot-files) `-a`

```sh
cd ~ && ls -a
```

## Print human-readable sizes `-h`

```sh
cd ~ && ls -lh
```

> ```text
> drwxr-xr-x 5 babak babak 4.0K Nov  1 12:49 Desktop
> drwxr-xr-x 9 babak babak 4.0K Nov 21 18:49 Documents
> drwxr-xr-x 2 babak babak  20K Nov 23 17:21 Pictures
> ...
> ```

## Sort by time `-t`

```sh
cd ~ && ls -lht
```

> ```text
> drwxr-xr-x 2 babak babak  20K Nov 23 17:21 Pictures
> drwxr-xr-x 9 babak babak 4.0K Nov 21 18:49 Documents
> drwxr-xr-x 5 babak babak 4.0K Nov  1 12:49 Desktop
> ```

## Sort by size `-s`

```sh
cd ~ && ls -lhs
```

## Reverse sort order `-r`

```sh
cd ~ && ls -lhsr
```

> ```text
> drwxr-xr-x 2 babak babak  20K Nov 23 17:21 Pictures
> drwxr-xr-x 9 babak babak 4.0K Nov 21 18:49 Documents
> drwxr-xr-x 5 babak babak 4.0K Nov  1 12:49 Desktop
> ```

{% include_relative living-in-the-shell-footer.markdown %}
