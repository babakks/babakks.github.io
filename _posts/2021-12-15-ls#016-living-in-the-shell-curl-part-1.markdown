---
layout: post
title: "Living in the Shell #16; curl (HTTP/S Client) (Part 1)"
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

> ```text
> <HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
> <TITLE>301 Moved</TITLE></HEAD><BODY>
> <H1>301 Moved</H1>
> The document has moved
> <A HREF="https://www.google.com/">here</A>.
> </BODY></HTML>
> ```

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

> ```text
> HTTP/2 301 
> location: https://www.google.com/
> content-type: text/html; charset=UTF-8
> date: Wed, 15 Dec 2021 17:45:16 GMT
> expires: Fri, 14 Jan 2022 17:45:16 GMT
> cache-control: public, max-age=2592000
> server: gws
> content-length: 220
> x-xss-protection: 0
> x-frame-options: SAMEORIGIN
> ...
> ```

## Request via a HTTP proxy server `-x`

```sh
curl -L https://google.com -x proxy-server:port
```

## Request via a SOCKS proxy server `--socks`

```sh
curl -L https://google.com --socks proxy-server:port
```

{% include_relative living-in-the-shell-footer.markdown %}
