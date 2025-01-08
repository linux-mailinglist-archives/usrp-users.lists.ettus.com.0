Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9662BA05EC5
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 15:33:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 743F9385E86
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 09:33:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736346833; bh=Xdh8TDMGW2OzKaCWSYl8atSwGVQPx+8z5Ow0AFARJ5k=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zP/N9P+qRNk+WFmcKAg8sTG5CuM5WR5g7g0GrZx/N+9qz9kdUIdooJkL8twYTA0zS
	 2Tx4F0lnnB1+DYK1TtUPl8KrtZq4uYhLSGkpCVZLJ3AKJrkhAd2rrMDazo/BID03PI
	 Fo/z/QLYKPHEiwey1Vzh7mcrfjm3Y59RvcvMTDWX8OVzO3e4QGetjCQDNceBDKBUVF
	 7UZyjORVMazOUzr8Gb+RpDI1aGex2xKgJTqrvNBHsHbI4KWtKbQLUhx6RxieqmBkol
	 ZndtucboN14Dibgi1I9Jios1KCg+6JCsfhitkEktV5XfuVhAQs/TSXWhJyKu40Jld/
	 Jh8ICDhoQ2hnQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id CB740385E13
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 09:33:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="RLeWsj5o";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so1843180966b.3
        for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2025 06:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1736346787; x=1736951587; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zlei0lo2wSo2m8ksLGXoiH2JwUNOh2vbHtMhB5S92HQ=;
        b=RLeWsj5oLuzaEogmxBiCe8NG2tzlCWeuOZ05xQt2vlV704K1fmw3GQStRI+3eyOyIA
         0ZM3hL11PJF/fvNvBLeNaJnYsb5s/HoD8W/EqpJu7jjlHRegtcn1yioqF+P0Nw94DYvJ
         y+uh+cyIIzaXG71jeQMDkM52Nt3tisEhKhsyXQ+IQcyNqeKCCLAvZpxpxwA5x8toGUuB
         4aG501fAf636bbeE5N+fBh2EP6OqN2JfvZybTonxMlJc+daIy+Vh6TLTjFtf/jtRCOIl
         zc+lmMJYmVG4LNzh7UG77kynyHMVlS2rv+GXhGvhEuUwDAW44VH1Hoo4AoQEqChQSFJ1
         ekMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736346787; x=1736951587;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zlei0lo2wSo2m8ksLGXoiH2JwUNOh2vbHtMhB5S92HQ=;
        b=Jd7Hq9ma1WaoPRhyP77JhCtLJ7bHOrp+0aQHjEwyFkHCT9kKvnCwaiK/RaXfoR9cID
         Uya0aRrxowP6k8bf4Jek7fFqdCda9RoaL9+Xf7Wjuz4PVv16f2sftf2rJDAW7r2Z9e5D
         DevyoF4hFSHZZj6vnked3pJfuyJBMqwXKG/u47R7x3ouS9CDZ1+CoWuKL1h21GxhwXcN
         SRta0KzMB7DONltUHXCST40HbMRfMzG6dUXeX2aIek5xgfWrTR1uWjitS38P2PtgV5zq
         iP1w3JU+oN046zM+zli66g36iG6BBu/vcFzkbrBeC0QfAtv1mA3wJE4vGTGBZKvOubSO
         oL0A==
X-Gm-Message-State: AOJu0Ywoa7HvLHShehifWYBL49ixsmFtOrFwA5Wp0fCkXYqU9QWEnTXb
	cQCGVZp/fJriHPhn4Bdfq3LL7p9aJ+JdyNlKJEJB0MBIkgPmpHh9UTcmWXs2YBS56xr5WMwlnFV
	/fRSJcm6ZAQnw/cPT6K8WO+e29JtiZr9lr/FuLP0FSd7iwwlWT0bKww==
X-Gm-Gg: ASbGncsxocXm8FaOOhHHwk+rBb81MUdkUR3JIfYVXK/WqDfRWxJ6ilg4Dj+Hx/6jFyB
	xxwTEfG1IKh1y9r62cqGElySTpQ5v+fgIenhOW5PhvfaIHCqWZcyes9Zf+0aJm7NJc1ffeg==
X-Google-Smtp-Source: AGHT+IHmZiBPJGzDgwgDMjtUbKRoto/5oaPfprOIq/SCYghLo7ePqhpixJyL7kMEFMp1ZjxOyIUdZhNKqayrMyPOei8=
X-Received: by 2002:a17:907:da5:b0:aac:431:4ee7 with SMTP id
 a640c23a62f3a-ab2ab6a8e99mr224259566b.5.1736346787379; Wed, 08 Jan 2025
 06:33:07 -0800 (PST)
MIME-Version: 1.0
References: <uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI@mm2.emwd.com>
In-Reply-To: <uxtaNudbPyFG25odjZ6QsCBW5FQhqq8ZlHXc7A1RSI@mm2.emwd.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Jan 2025 15:32:56 +0100
X-Gm-Features: AbW1kvZplKldbxZhVlIZjZvQZRqW11tanLahSXX8xCXOIYijmhzxg714TQ7OX7s
Message-ID: <CAFOi1A7uqkZJ+4ayUrVC8CEhDJaBnny+11ptNJBJrd_9CYGnyg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: MKSQWBFZ4UMPJVMCJFG6PCAM73CAINKW
X-Message-ID-Hash: MKSQWBFZ4UMPJVMCJFG6PCAM73CAINKW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Needed: Issues Implementing RFNoC Example with UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MKSQWBFZ4UMPJVMCJFG6PCAM73CAINKW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1358011808906894835=="

--===============1358011808906894835==
Content-Type: multipart/alternative; boundary="000000000000781e19062b32bde0"

--000000000000781e19062b32bde0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 1:19=E2=80=AFPM <elkana443@gmail.com> wrote:

> Hi, I successfully managed to implement the example block.
> Now, I would like to create my own example block. I'm working on the
> master version, as per your recommendation.
> Is there any documentation available for this process?
>

Hi,

on master branch, you use `rfnoc_modtool` to get started:

    rfnoc_modtool create mymodule
    cd rfnoc-mymodule
     # Now create rfnoc/blocks/myblock.yml
    rfnoc_modtool add myblock

--M

--000000000000781e19062b32bde0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Dec 24, 2024 at 1:19=E2=80=AFPM &lt;<=
a href=3D"mailto:elkana443@gmail.com">elkana443@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi, I successfu=
lly managed to implement the example block.<br>Now, I would like to create =
my own example block. I&#39;m working on the master version, as per your re=
commendation.<br>Is there any documentation available for this process?</p>=
</blockquote><div><br></div>
<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>on master branch, you us=
e `rfnoc_modtool` to get started:</div><div><br></div><div>=C2=A0=C2=A0=C2=
=A0 rfnoc_modtool create mymodule</div><div>=C2=A0=C2=A0=C2=A0 cd rfnoc-mym=
odule</div><div>=C2=A0=C2=A0=C2=A0=C2=A0 # Now create rfnoc/blocks/myblock.=
yml<br></div><div>=C2=A0=C2=A0=C2=A0 rfnoc_modtool add myblock</div><div><b=
r></div><div>--M<br></div></div>

</div><div class=3D"gmail_quote gmail_quote_container"><br></div><div class=
=3D"gmail_quote gmail_quote_container"><br></div></div>

--000000000000781e19062b32bde0--

--===============1358011808906894835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1358011808906894835==--
