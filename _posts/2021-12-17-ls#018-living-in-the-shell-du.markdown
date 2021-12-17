---
layout: post
title: "Living in the Shell #18; du (Report Directory Size)"
date: 2021-12-17 22:30:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `du` 💽

Reports disk usage.

## See summarized directory size `-s`

```sh
du -s ~/Downloads
```

> ```text
> 11732700        /home/babak/Downloads
> ```
>
> Note that the result is in kilobytes.

## Human-readable size values `-h`

```sh
du -sh ~/Downloads
```

> ```text
> 12G   /home/babak/Downloads
> ```

## Exclude files by pattern `--exclude`

```sh
du -sh --exclude '*.iso' ~/Downloads
```

> ```text
> 7.1G   /home/babak/Downloads
> ```

## See exhaustive sub-directory sizes

```sh
du ~/Documents
```

## Limit recursion depth `-d`

```sh
du -h -d 1 ~/Documents
```

## Include files in exhaustive size report `-a`

```sh
du -h -a ~/Documents
```

{% include_relative living-in-the-shell-footer.markdown %}
