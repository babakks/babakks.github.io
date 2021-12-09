---
layout: post
title: "Living in the Shell; mv [LS#12]"
date: 2021-12-11 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `mv` 🧳

Moves/renames files or directories.

⚠️ Default behavior is to **overwrite** destination files.

## Rename a single file

```sh
cd ~ && mv .bashrc .bashrc-renamed
```

## Move a single file into a directory

```sh
cd ~ && mv .bashrc Documents
```

> Note that the `Documents` directory should exist.

## Move a single file onto a specific new path (filename)

```sh
cd ~ && mv .bashrc Documents/.bashrc-moved
```

## Move a whole directory

```sh
mv my-src-dir ~/Documents/my-dest-dir
```

> ⚠️ Note that if `my-dest-dir` already exists, `my-new-src` will be moved under it; i.e., you would have your files under `Documents/my-dest-dir/my-src-dir`

## Create backup for existing destination files `-b`

```sh
cd ~ && mv -b .bashrc Documents/.bashrc-moved
```

## Move by wildcard selection `-t`

```sh
cd ~ && mv -t target-dir *.zip *.txt
```

> Moves all `.zip` and `.txt` files to `target-dir` directory.

## Set to ask for overwriting `-i`

```sh
cd ~ && mv -i .bashrc Documents
```

## Set to keep existing files (no overwrite) `-n`

```sh
cd ~ && mv -n .bashrc Documents
```

{% include_relative living-in-the-shell-footer.markdown %}
