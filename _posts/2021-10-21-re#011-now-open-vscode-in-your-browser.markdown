---
layout: post
title: "Now 0pen VS Code in Your Browser [RE#11]"
date: 2021-10-21 23:45:00 +0330
excerpt: |
    Having VS Code in browser is a priceless feature for those who miss it while working with their mobile phones or tablets. Although there are viable third-party services, but now the official version goes public.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

I've always dreamed of opening VS Code in my browser. That would really help me,since, out of my workplace, I'm usually using my tablet or mobile phone and so having a hard time reviewing/writing code just because I'm not sitting behind my laptop.

If contributed on the project, or tried to build and run it from the source code, you've probably seen VS Code's intrinsic capability to run in a browser. Other than that, people would basically expect Electron based applications, like VS Code, natively run in a Chromium/Chrome instance. Some third-party services, like [StackBlitz][stackblitz] or [Gitpod][gitpod] are providing this feature for free. There are open source repositories as well; among them [`cdr/code-server`][code-server] and [`gitpod-io/open vscode-server`][gitpod-github]. But an official host was still missing, especially because of unavailability of VS Code's rich extension marketplace for non-Microsoft builds, like these third-party altrnatives.

[stackblitz]: https://stackblitz.com
[gitpod]: https://gitpod.io
[code-server]: https://github.com/cdr/code-server
[gitpod-github]: https://github.com/gitpod-io/openvscode-server

Now, things have changed. Just open [vscode.dev][vscode-dev] to see the **officially** hosted version of VS Code; lightweight but quite promising, functional and consistent with the desktop version.

Also, make sure to check the [blog post][blog] to get familiar with the new cool shortcuts that accelerate your development in the new environment.

[vscode-dev]: https://vscode.dev
[blog]: https://code.visualstudio.com/blogs/2021/10/20/vscode-dev

{% include_relative regular-encounters-footer.markdown %}

