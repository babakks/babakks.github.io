---
layout: post
title: "Living in the Shell #4; jq (JSON)"
date: 2021-11-27 08:00:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `jq` 🧹

JSON formatter/prettifier.

🏠 [https://stedolan.github.io/jq/](https://stedolan.github.io/jq/)\
📗 [https://github.com/stedolan/jq](https://github.com/stedolan/jq)

## Installation (on Debian)

```sh
sudo apt-get install jq
```

## Format/prettify

```sh
echo -n '{"who":["me","you"],"when":"now"}' | jq
```

> ```text
> {
>   "who": [
>     "me",
>     "you"
>   ],
>   "when": "now"
> }
> ```

## Indentation with tab `--tab`

```sh
echo -n '{"who":["me","you"],"when":"now"}' | jq --tab
```

## Compact `-c`

```sh
cat << EOF | jq -c
{
  "who": [
    "me",
    "you"
  ],
  "when": "now"
}
EOF
```

> ```text
> {"who":["me","you"],"when":"now"}
> ```

## Sort keys `-S`

```sh
echo -n '{"z":"z","a":"a"}' | jq -S
```

> ```text
> {
>   "a": "a",
>   "z": "z"
> }
> ```

## Uncolorize output (monochrome) `-M`

```sh
echo -n '{"who":"me","when":"now"}' | jq -M
```

{% include_relative living-in-the-shell-footer.markdown %}
