---
layout: post
title: "Basic Vim Shortcuts in VS Code"
date: 2020-03-04 13:00:00 +0330
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

Vim is great. Once you've mastered its brilliant way of cursor navigation and get used to some basic keyboard shortcuts, you'll uncover a significant improvement in your coding time productivity. Maybe that's a bit exaggerated, but still the effort surely pays off.

However, I use VS Code in my daily work and am too satisfied with it. To name a few, simplicity, great performance, rich set of commands, diverse extensions and support for various languages are among the top revered characteristics of VS Code.

## Vim in VS Code

Some time ago, I wondered if I can mix the merits of Vim into VS Code, so spent my time on test driving several extensions. The result was not promising. Actually, for me, the most wanted feature of Vim was its cursor navigation method but the extensions provided many more Vim-like features which necessitated more complicated user interaction. Disappointed of extensions, I set out to define my own customized keyboard shortcuts to make things work as expected. Surprisingly it worked well and got improved over time which is why I've gradually got addicted to it.

In this post I'm listing my configured keyboard shortcuts, hoping you'll find them beneficial to your productivity. I'll be glad to hear your suggestions. 💚

## Shortcuts ⌨️

The table below shows various navigations and their corresponding keyboard shortcut. I've listed the content to be appended to your `keyboard.json` file at the end of the post.

|Action|Shortcut|New shortcut|
|-|-|-|
|Cursor/item left|<kbd>:arrow_left:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>h</kbd>|
|Cursor/item down|<kbd>:arrow_down:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>j</kbd>|
|Cursor/item up|<kbd>:arrow_up:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>k</kbd>|
|Cursor/item right|<kbd>:arrow_right:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>l</kbd>|
|Word left|<kbd>ctrl</kbd> <kbd>:arrow_left:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>alt</kbd> <kbd>h</kbd>|
|Word down|<kbd>ctrl</kbd> <kbd>:arrow_down:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>alt</kbd> <kbd>j</kbd>|
|Word up|<kbd>ctrl</kbd> <kbd>:arrow_up:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>alt</kbd> <kbd>k</kbd>|
|Word right|<kbd>ctrl</kbd> <kbd>:arrow_right:</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>alt</kbd> <kbd>l</kbd>|
|Move to line beginning|<kbd>home</kbd>|<kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>0</kbd>|
|Move to line end|<kbd>end</kbd>|<kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>4</kbd>|
|Delete previous|<kbd>backspace</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>space</kbd>|
|Delete next|<kbd>del</kbd>|<kbd>ctrl</kbd> <kbd>cmd</kbd> <kbd>shift</kbd> <kbd>space</kbd>|

👍 You can also use these shortcuts on file explorer, sidebar lists/trees (e.g., find in files or source control,) auto-completion lists and breadcrumbs.

👍 Hold <kbd>shift</kbd> and/or <kbd>alt</kbd> keys with these shortcuts to select text or move by word.

👍 Hold <kbd>alt</kbd> keys with delete next/previous shortcuts to delete by word.

👍 To use shortcuts on the command palette lists, you need to first press <kbd>tab</kbd> key.

## Get the shortcuts 

Type and run `Preferences: Show Keyboard Shortcuts (JSON)` in the command palette which opens A JSON file named `keybindings.json`. prepend the content of [this][gist] Github Gist to it, save, and you're done; this way currently defined shortcuts won't affect.

[gist]: https://gist.github.com/babakks/cc30aeee2e2342ea22cd6b76f76f65b6