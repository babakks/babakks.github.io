---
layout: post
title: "Living in the Shell; cp [LS#11]"
date: 2021-12-10 18:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `cp` 🏭

Creates copies of files and directories.

⚠️ Default behavior is to **overwrite** destination files.

## Copy single file

```sh
cp ~/.bashrc ~/.bashrc-copy
```

## Copy multiple files into a new directory `-t`

```sh
cd ~ && cp .bashrc .zshrc target-dir
cd ~ && cp -t target-dir .bashrc .zshrc
```

> Both create `target-dir` directory and copy `.bashrc` and `.zshrc` into it.

## Copy by wildcard selection `-t`

```sh
cd ~ && cp -t target-dir *.zip *.txt
```

> Copies all `.zip` and `.txt` files to `target-dir` directory.

## Copy a directory `-r`

```sh
cp -r ~/.config ~/.config-copy
```

## Update only newer files `-u`

```sh
cp -ru ~/.config ~/.config-last-backup
```

> This just copies files that modified after the last copy.

## Create backup for existing destination files `-b`

```sh
cp -rb ~/.config ~/.config-last-backup
```

## Set to ask for overwriting `-i`

```sh
cp -ri ~/.config ~/.config-last-backup
```

## Set to keep existing files (no overwrite) `-n`

```sh
cp -rn ~/.config ~/.config-last-backup
```

{% include_relative living-in-the-shell-footer.markdown %}
