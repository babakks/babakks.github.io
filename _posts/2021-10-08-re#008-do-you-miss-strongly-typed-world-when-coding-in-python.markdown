---
layout: post
title: "Do You Miss Strongly-Typed World When Coding in Python? [RE#8]"
date: 2021-10-08 23:00:00 +0330
excerpt: |
    Developing large projects on weakly-type languages like Python can lead to type incompatibility disaster, unless you go for a solution.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

When it comes to static type checking, those who code in strongly-typed languages are likely to take the favors of the compiler for granted. They just presume it's kind of a well-respected right for them to feel safe regarding type compatibility. But in the realm of weakly-typed languages, which are exceedingly on demand these days, things are different.

Recent years I've been working for companies who had picked JavaScript and Python as their language of development. As you may have guessed, facing type mismatch exceptions at **"runtime"** soon made me mad enough to begin looking for a solution. Only people who've experienced this, can feel that pain.

JavaScript people are lucky to have the well-known TypeScript at hand. For Python developers a good solution is `mypy` which is maintained by the official Python community: [`python/mypy`][mypy]. You can simply install it via:

```sh
pip install mypy
```

Just run it in your Python project's root directory to see the devils under the ground:

```sh
mypy .
```

Of course, to make the most out of it, you have to embellish your code with type annotations as exhaustively as possible. Type annotations (and the `typing` library) in Python were introduced in version 3.5. With `mypy`, configuration is a no brainer. Just look at this example (file `.mypy.ini` at root):

```ini
[mypy]
exclude = venv|env|.git|__pycache__|a.*?regex.*?pattern

[mypy-setuptools.*]
ignore_missing_imports = True

[mypy-dateutil.*]
ignore_missing_imports = True
```

Beware of that many libraries are still not utilizing type annotations. That may cause `mypy` to raise errors or warnings. As you can see in the example configuration above, you can just disable type checking for them.

[mypy]: https://github.com/python/mypy

{% include_relative regular-encounters-footer.markdown %}
