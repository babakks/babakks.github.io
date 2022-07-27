---
layout: post
title: "Basic Vim Shortcuts in VS Code"
date: 2021-03-04 13:00:00 +0330
excerpt: |
    Vim and VS Code are both great super text editors with their unique
    features. Although the superb keyboard shortcuts of Vim are missing in VS
    Code, but it's still possible to have basic of them working there. I'll tell
    you how to do that in this blog post.
categories: article
author: babakks
comments: true
published: true
---

## TL;DR

🎉 You can simply have a number of useful Vim-like navigation shortcuts, by installing the [*VS Code Semi-Vim Shortcuts*][extension] extension on VS Code. See the screen capture below to get a feeling of what to expect:

![Basic navigations with VS Code Semi-Vim Shortcuts extension](../img/2021-03-04-basic-vim-shortcuts-in-vs-code-navigation.gif)

[extension]: https://marketplace.visualstudio.com/items?itemName=babakks.vscode-vim-shortcuts

## Vim

Vim is great. Once you've mastered its brilliant way of cursor navigation and get used to some basic keyboard shortcuts, you'll uncover a significant improvement in your coding time productivity. Maybe that's a bit exaggerated, but still the effort surely pays off.

However, I use VS Code in my daily work and am too satisfied with it. To name a few, simplicity, great performance, rich set of commands, diverse extensions and support for various languages are among the top revered characteristics of VS Code.

## Vim in VS Code

Some time ago, I wondered if I can mix the merits of Vim into VS Code, so spent my time on test driving several extensions. The result was not promising. Actually, for me, the most wanted feature of Vim was its cursor navigation method but the extensions provided many more Vim-like features which necessitated more complicated user interaction. Disappointed of extensions, I set out to define my own customized keyboard shortcuts to make things work as expected. Surprisingly it worked well and got improved over time which is why I've gradually got addicted to it.

In this post I'm listing my configured keyboard shortcuts, hoping you'll find them beneficial to your productivity. I'll be glad to hear your suggestions. 💚

## Shortcuts ⌨️

The table below shows various navigations and their corresponding keyboard shortcut. I've listed the content to be appended to your `keyboard.json` file at the end of the post.

| Action                          | Shortcut          | New alternative shortcut          |
| ------------------------------- | ----------------- | --------------------------------- |
| Cursor/item left                | `Left`            | `Ctrl`+`Cmd`+`H`                  |
| Cursor/item down                | `Down`            | `Ctrl`+`Cmd`+`J`                  |
| Cursor/item up                  | `Up`              | `Ctrl`+`Cmd`+`K`                  |
| Cursor/item right               | `Right`           | `Ctrl`+`Cmd`+`L`                  |
| Word left                       | `Ctrl`+`Left`     | `Ctrl`+`Cmd`+`Alt`+`H`            |
| Word down                       | `Ctrl`+`Down`     | `Ctrl`+`Cmd`+`Alt`+`J`            |
| Word up                         | `Ctrl`+`Up`       | `Ctrl`+`Cmd`+`Alt`+`K`            |
| Word right                      | `Ctrl`+`Right`    | `Ctrl`+`Cmd`+`Alt`+`L`            |
| Move to line beginning          | `Home`            | `Ctrl`+`Alt`+`0`                  |
| Move to line end                | `End`             | `Ctrl`+`Alt`+`4`                  |
| Delete previous                 | `Backspace`       | `Ctrl`+`Cmd`+`Space`              |
| Delete next                     | `Del`             | `Ctrl`+`Cmd`+`Shift`+`Space`      |
| Page down                       | `PageDown`        | `Ctrl`+`Cmd`+`F`                  |
| Page down                       | `PageDown`        | `Ctrl`+`Cmd`+`D`                  |
| Page up                         | `PageUp`          | `Ctrl`+`Cmd`+`B`                  |
| Page up                         | `PageUp`          | `Ctrl`+`Cmd`+`U`                  |
| Top                             | `Ctrl`+`Home`     | `Ctrl`+`Cmd`+`G` `Ctrl`+`Cmd`+`G` |
| Bottom                          | `Ctrl`+`End`      | `Ctrl`+`Shift`+`Cmd`+`G`          |
| Next editor                     | `Ctrl`+`PageDown` | `Ctrl`+`Cmd`+`W` `L`              |
| Previous editor                 | `Ctrl`+`PageUp`   | `Ctrl`+`Cmd`+`W` `H`              |
| Focus bottom group              | -                 | `Ctrl`+`Cmd`+`W` `J`              |
| Previous editor                 | -                 | `Ctrl`+`Cmd`+`W` `K`              |
| Next terminal                   | `Ctrl`+`PageDown` | `Ctrl`+`Cmd`+`W` `L`              |
| Previous terminal               | `Ctrl`+`PageUp`   | `Ctrl`+`Cmd`+`W` `H`              |
| Debug console history: Previous | `Up`              | `Ctrl`+`Cmd`+`K`                  |
| Debug console history: Next     | `Down`            | `Ctrl`+`Cmd`+`J`                  |

👍 You can also use these shortcuts on file explorer, sidebar lists/trees (e.g., find in files or source control,) auto-completion lists and breadcrumbs.

👍 Hold `Shift` and/or `Alt` keys with these shortcuts to select text or move by word.

👍 Hold `Alt` keys with delete next/previous shortcuts to delete by word.

👍 To use shortcuts on the command palette lists, you need to first press `Tab` key to focus on the list.

## Manual configuration

Want to manually set the shortcuts? Just open [this][gist] Gist and follow the instructions at the top of the file.

[gist]: https://gist.github.com/babakks/cc30aeee2e2342ea22cd6b76f76f65b6