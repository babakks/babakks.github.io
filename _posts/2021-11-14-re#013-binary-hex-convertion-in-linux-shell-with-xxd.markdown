---
layout: post
title: "Binary/Hex Conversion in Linux Shell with xxd [RE#13]"
date: 2021-11-14 22:00:00 +0330
excerpt: |
    The need to go from binary to HEX, or vice versa, occasionally happens. Let's see what's the tool to the rescue when it comes to do things in the shell.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

It's not that unusual to need to see/check/verify the binary output of a shell command in HEX format. Clearly, I mean without picking up a HEX editor or something like that. Last time, it happened to me a few days ago when I was to inspect the content of a base64-encoded string. The tool to the rescue is (of course not limited to) `xxd`. 🏅

Using `xxd`, to get the HEX representation for some binary content you just need to call it with no argument:

```sh
echo -n 'Computer says: "Hello World!"' | xxd
```

Depending on the case it could be more insightful to also have the ASCII values column. That's simply done by calling `xxd` with `-C` option:

```sh
echo -n 'Computer says: "Hello World!"' | xxd -C
```

Which results in such a neat output:

```text
00000000: 436f 6d70 7574 6572 2073 6179 733a 2022  Computer says: "
00000010: 4865 6c6c 6f20 576f 726c 6421 22         Hello World!"
```

Also, `xxd` can do things the other way. For instance, may you need to turn a HEX string into a binary content, just call `xxd` with `-r` option, like this:

```sh
echo -n "0x48656c6c6f20576f726c6421" | xxd -r
```

Which would result in:

```text
Hello World!
```

There are more `xxd` options which you can find by checking:

```sh
xxd --help
```

or

```sh
man xxd
```

{% include_relative regular-encounters-footer.markdown %}
