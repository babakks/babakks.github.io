---
layout: post
title: "Living in the Shell; curl (Part 2) [LS#17]"
date: 2021-12-16 20:00:00 +0330
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

## Add a custom header to request `-H`

```sh
curl https://postman-echo.com/get -H 'user-agent: curl'
```

> ℹ️ You can set any number of headers by repeating `-H` options.

## Make a `POST` request with JSON body `-d` & `-X`

```sh
curl https://postman-echo.com/post \
    -X POST \
    -H 'content-type: application/json' \
    -d '{"key":"value"}'
```

> ```json
> {
>   "args": {},
>   "data": {
>     "key": "value"
>   },
>   "files": {},
>   "form": {},
>   "headers": {
>     "x-forwarded-proto": "https",
>     "x-forwarded-port": "443",
>     "host": "postman-echo.com",
>     "x-amzn-trace-id": "Root=1-61ba2f8f-304430e917ea20e7024a87c3",
>     "content-length": "15",
>     "user-agent": "curl/7.74.0",
>     "accept": "*/*",
>     "content-type": "application/json"
>   },
>   "json": {
>     "key": "value"
>   },
>   "url": "https://postman-echo.com/post"
> }
> ```

## Read request body from file `-d@`

```sh
curl https://postman-echo.com/post \
    -X POST \
    -H 'content-type: application/json' \
    -d @data-file.json
```

## Read request headers from file `-H@`

```sh
curl https://postman-echo.com/post \
    -X POST \
    -H @headers-file.txt \
    -d @data-file.json
```

> ⚠️ The headers file should be formatted as "key: value" per line.

## Make a `HEAD` request `-I`

```sh
curl -I https://postman-echo.com/get
```

> ℹ️ Alternatively, you can use `-X HEAD` instead of `-I`.

## See more detailed process logs `-v`

```sh
curl -v https://postman-echo.com/get
```

> This will print more low-level details, including protocol handshakes and negotiations.

{% include_relative living-in-the-shell-footer.markdown %}
