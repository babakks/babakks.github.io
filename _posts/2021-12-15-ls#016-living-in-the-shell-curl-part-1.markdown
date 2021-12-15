---
layout: post
title: "Living in the Shell; curl (Part 1) [LS#16]"
date: 2021-12-15 21:15:00 +0330
excerpt: ""
categories: article
author: babakks
comments: true
published: true
image: "/img/living-in-the-shell.png"
series: "Living in the Shell"
---

## `curl` 🌐

Makes requests in various protocols, including (but not limited to) HTTP/HTTPS/FTP/FTPS.

## Make a simple `GET` request

```sh
curl https://google.com
```

## Simple `GET` request with following redirects `-L`

```sh
curl -L https://google.com
```

## Write response to a file `-o`

```sh
curl -L https://google.com -o content.html
```

## Include response headers `-i`

```sh
curl -i -L https://google.com
```

## Request via a HTTP proxy server `-x`

```sh
curl -L https://google.com -x proxy-server:port
```

## Request via a SOCKS proxy server `--socks`

```sh
curl -L https://google.com --socks proxy-server:port
```

{% include_relative living-in-the-shell-footer.markdown %}
