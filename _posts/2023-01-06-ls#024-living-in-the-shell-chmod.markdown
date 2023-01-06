---
layout: post
title: "Living in the Shell #24; chmod (Modify file/directory permissions)"
date: 2023-01-06 14:00:00 +0330
excerpt: "See how to easily modify file/directory access permissions within your shell environment."
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `chmod` 🔐

Modifies file/directory permissions (See [here][ref1] or [here][ref2] for more details).

[ref1]: https://linuxcommand.org/lc3_man_pages/chmod1.html
[ref2]: https://en.wikipedia.org/wiki/Chmod

Permission expressions are mostly formatted as `[ugoa][+-=][rwx]`:

| Symbol | Meaning |
| ------ | ------- |
| `r`    | Read    |
| `w`    | Write   |
| `x`    | Execute |

| Symbol | Meaning                                |
| ------ | -------------------------------------- |
| `u`    | **User** (owner of the file/directory) |
| `g`    | **Group** (of the file/directory)      |
| `o`    | **Other** users/groups                 |
| `a`    | **All** users/groups                   |

## Grant all permissions to everyone; `a+rwx` or `777`

```sh
chmod a+rwx some-file
# or
chmod 777 some-file
```

## Make a file executable for everyone `+x`

```sh
chmod +x some-file
# or
chmod a+x some-file
```

## Make a file executable only for the *User* (owner) `u+x`

```sh
chmod u+x some-file
```

## Disallow *Group* and *Others* to read/write/execute `go-rwx`

```sh
chmod go-rwx some-file
```

## Apply the same *User* (owner) permissions to the *Group* `=u`

```sh
chmod g=u some-file
```

## Rewrite permissions for the *Group* and *Others* `=`

```sh
chmod go=rw some-file
```

## Clear permissions for the *Group* and *Others* `=`

```sh
chmod go= some-file
```

## Clear all permissions `=`

```sh
chmod a= some-file
```

{% include_relative living-in-the-shell-footer.markdown %}
