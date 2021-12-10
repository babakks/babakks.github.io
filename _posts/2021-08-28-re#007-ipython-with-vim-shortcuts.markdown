---
layout: post
title: "IPython with Vim shortcuts [RE#7]"
date: 2021-08-28 00:00:00 +0330
excerpt: |
    Enable Vim shortcuts for IPython and take the most out of your Python REPL.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

If you're a Vim fan like me, probably you've already set your shell editor mode on `vi` by appending this line to `~/.bashrc` (or for ZSH users, like me, `~/.zshrc`):

```sh
set -o vi
```

But not all editors take this setup into account. One of the most revered REPL environments for Python people is *IPython*. The good news is IPython lets you opt to `vi` shortcuts by just running it like this:

```sh
ipython --TerminalInteractiveShell.editing_mode=vi
```

(Thanks to **imiric** for [this][stack] great answer.)

If you're using IPython as Django shell or you just want to make the setup above as a persistent default, open `~/.ipython/profile_default/ipython_config.py` (if it was already there, otherwise read on), look for `c.TerminalInteractiveShell.editing_mode` parameter and set it like this:

```py
c.TerminalInteractiveShell.editing_mode = 'vi'
```

If you couldn't find the file don't attempt to create it by yourself. Just create it with this shell command:

```sh
ipython profile create
```

[stack]: https://stackoverflow.com/a/38329940/7089799

{% include_relative regular-encounters-footer.markdown %}
