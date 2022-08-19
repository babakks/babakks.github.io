---
layout: post
title: "VS Code Extension to Pick Relevant Emojis for Git Commit Messages"
date: 2022-08-19 14:00:00 +0330
excerpt: Use this VS Code extension, called "Git-Emoji", to easily pick relevant emojis for your git commit messages.
categories: article
author: babakks
comments: true
published: true
---

## Emoji in git commit message

If you're VS Code user and also a fan of emojis, this new VS Code extension might appeal to you, especially if you've read and liked [*Emojis for Better Git Commit Messages*][emojis-post] for its exhaustive table of contextual emoji data which were gathered over years. This new extension is called **Git-Emoji**. What it does is to provide you with relevant emoji suggestions to add to your git commit messages. This short screen capture would show you how this extension works:

[emojis-post]: {% post_url 2020-07-03-emojis-in-git-commit-messages %}
![How to get relevant emojis for git commit message](/img/2022-08-19-capture.gif)

To install it, search for "Git-Emoji" in the extension sidebar and click on the *Install* button. Alternatively, you can also install it as follows:

1. Press <kbd>Ctrl</kbd>+<kbd>P</kbd>
1. Type in `ext install git-emoji.vscode-git-emoji` and press Enter/Return

## Dataset

If you're interested in the emoji/contextual data behind this extension, you can access the underlying dataset via [git-emoji/dataset-js][dataset-repo] repository on GitHub. It's also available as a NPM package; [`@git-emoji/dataset-js`][dataset-npm].

[dataset-repo]: https://github.com/git-emoji/dataset-js
[dataset-npm]: https://www.npmjs.com/package/@git-emoji/dataset-js

Hope you like this extension. 🍏
