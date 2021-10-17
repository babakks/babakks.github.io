---
layout: post
title: "Idea for a VS Code Extension [RE#9]"
date: 2021-10-17 19:00:00 +0330
excerpt: |
    Found a good idea for a VS Code (or any other IDE/editor) extension.
categories: article
author: babakks
comments: true
published: true
series: "Regular Encounters"
---

Recently, I was editing our Gitlab CI pipeline. In our repositories we use Makefiles to define common actions (like building docker image or deploying onto production environment). To be exact, these actions are defined as *phony targets* in Makefile terminology.

While doing my task, I tried, several times, to invoke the auto-format command as I usually would when coding but every time I did it a message popped saying no formatter was installed for Makefiles. I remember searching for some extension, but nothing I found on the subject. That is a real frustration for any **obsessive** developer. 🤦

Since Makefiles are among common tools for project automations, I think it's a good idea to develop a Makefile formatter extension for VS Code or any other popular IDE/Editor.

{% include_relative regular-encounters-footer.markdown %}
