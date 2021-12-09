---
layout: post
title: "Living in the Shell; find (Part 2) [LS#10]"
date: 2021-12-09 22:45:00 +0330
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

## Detailed result `-ls`

```sh
find /home/babak -name "*bash*" -ls
```

> ```text
> 11053679      4 -rw-r--r--   1 babak    babak        3772 Nov 25 12:45 /home/babak/.bashrc
> 11010465     28 -rw-------   1 babak    babak       24763 Nov 16 12:26 /home/babak/.bash_history
> ```

## Evaluate by executing a command on files `-exec`

### Example 1: looking for a word within files

```sh
find ~ -name '*.txt' -exec grep -q "hello" {} \; -print
```

> - Finds all `.txt` files that contain word "hello" in their content.
> - The `-print` option is necessary to print file names.
> - `{}` is the placeholder for the file path.
> - `\;` indicates the end of the command string.

### Example 2: looking for damages ZIP archives

```sh
find ~ -name '*.zip' -not -exec zip -qT {} \; -print
```

> - `zip -qT` quietly checks ZIP archive integrity.
> - `-not` negates the logical expression.

### Example 3: detect unformatted code files in a Python codebase

```sh
find . -type f -name '*.py' -not -path '*/venv/*' -not -path '*/__pycache__/*' -not -exec sh -c 'python3 -m autopep8 {} >/dev/null' \; -print
```

> - `autopep8` applies Python PEP8 standard formatting.
> - `>/dev/null` avoids cluttered/unnecessary output.
> - `-not -path '*/venv/*'` and `-not -path '*/__pycache__/*'` exclude `venv` and `__pycache__` directories.

### Example 4: detect unformatted code files in a JavaScript codebase

```sh
find . -type f -name '*.js' -not -exec sh -c 'eslint --no-eslintrc {} >/dev/null' \; -print
```

> - `eslint` is the ESLint CLI.
> - `--no-eslintrc` is for safety, to eliminate the need for a `.eslintrc` file.

{% include_relative living-in-the-shell-footer.markdown %}
