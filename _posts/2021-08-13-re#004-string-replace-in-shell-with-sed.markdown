---
layout: post
title: "String Replace in Shell with sed [RE#4]"
date: 2021-08-13 12:30:00 +0330
excerpt: |
    There are times when you just need to perform string manipulation (e.g., string replace) via the shell, and it's not that uncommon, if you think that way.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

Though 99% of the time we use a text editor like `vim` or `nano`, still knowing how to do simple string manipulations via shell commands is more than necessary. The simplest use case emerges in CI/CD pipeline where you may need to replace some placeholder with a specific text (e.g., a dynamic docker image tag). 🤖

One simple tool for this purpose is `sed`. For example, to replace "[tag]" with "abcdef" execute:

```sh
echo "docker push -t app:[tag]" | sed -e 's/[tag]/abcdef/g'
```

You can also use `sed` just like `grep` and pass a file to be used as the input stream:

```sh
sed -e 's/[tag]/abcdef/g' input-file.txt
```

You may add more expressions by adding any number of `-e expression` arguments:

```sh
sed -e 's/[tag]/abcdef/g' -e 's/[image]/app/g' input-file.txt
```

ℹ️ To learn more useful applications of `sed` have a look at [this][more] article.

[more]: https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/amp/

{% include_relative regular-encounters-footer.markdown %}
