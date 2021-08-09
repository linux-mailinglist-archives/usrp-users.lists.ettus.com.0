Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 748B43E4C85
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 20:56:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A08CD3847F4
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 14:56:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZdwKgH5h";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 351CC3847C7
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 14:56:15 -0400 (EDT)
Received: by mail-yb1-f177.google.com with SMTP id p145so31377917ybg.6
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 11:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=c/kSbCI5UWxUfEWennK6i3SaNSS3XZNRaElGVazMA18=;
        b=ZdwKgH5hGsQpUFIL3O7clXHpJkHmnfnCMxzi3HWJ/KvlZ/AXZU0NMFHODrgvYJHq0u
         R55Ms/NYAct287NjZREAUtdC7JPpZaLbE48P+At6r/4Bsvq2bxyymPqa4rUpoR4U7l5r
         b6pYLcCycfcjJHV9XqdxzlH8wQkNsGhAaqFvFfnr5yX/CnMiCDmsPuwQDkPukIS1OQXk
         /p7ywW9lDCaiEV8PGGWSzGRwr/hkwmRIovKb7WuufJ/ZjbF9WeJFo+Vs44lwqIi8k9+o
         M4P6jqLAX6XSAqTY2e/P0QvX2An+zwxx2K/wbiAyyE4kU+1gNihli8Q1MBo+DNeM4WSC
         92zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=c/kSbCI5UWxUfEWennK6i3SaNSS3XZNRaElGVazMA18=;
        b=HWsq8IsT50Igjj7I/LE0DNV//cf9AFlbM0Nvb8tUeedvjyJVQrdNFm1kXyCFCBeFib
         ikWdOn8s+W1IDiBu8g/yu9PFLvPrZ0IAeyI+1QkECqSLHmqTHYAolQFkCR37FLyNG4GU
         twHkad5UXSU5I+Wx5FJ2f3fwX5CMcxRhINDNdaI8rGxJHzn9+riCWnsIo2MbWsPVH7WG
         WEc1fpmLQLJEnmhXZj1vvZfL1YZs+lNp9Vpcy/EiVUmQM3KJxVu7D+4EhkYnRl0GqowF
         l0DgdYTTQ6Txcd2vwQJaSEx8G7Ys3WUmEgZ5SYiDL2Sl1F0kv23DQjhNoM+VDJzRnZ61
         zGMQ==
X-Gm-Message-State: AOAM530Yyai0ZNZcsfLTcmO/Qr0xGKsystgFTLelLUbNBGgRHntMpccJ
	xRn8oyYMJ6jAIK+AU0M5v5w2yZNEnz6YDHyKVryWk90xDfk=
X-Google-Smtp-Source: ABdhPJwxR6CMVWSs2KR5quDa2OelzpHz8Of1VP5xKbAinQmpHNgeHBONwrnmAARq0wsBj3gv40+MxHonu4MdYR7KuiQ=
X-Received: by 2002:a25:d488:: with SMTP id m130mr32896029ybf.116.1628535374626;
 Mon, 09 Aug 2021 11:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <8ef118c6-fddb-377e-6a7b-654bdf2a110e@olifantasia.com>
In-Reply-To: <8ef118c6-fddb-377e-6a7b-654bdf2a110e@olifantasia.com>
From: Michael Wentz <mchlwntz@gmail.com>
Date: Mon, 9 Aug 2021 14:56:03 -0400
Message-ID: <CAFTrPL0qJZbn4Wk8cZuWiRyJaZWdO-Yzm45__6R8WboD2F5n1w@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>, USRP list <usrp-users@lists.ettus.com>
Message-ID-Hash: CPRQL3NXCW2ZTSFLCCNTDX2F6XQUELFC
X-Message-ID-Hash: CPRQL3NXCW2ZTSFLCCNTDX2F6XQUELFC
X-MailFrom: mchlwntz@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD source IO type sc16 is not accepted by any GRC block in gnuradio 3.8 (error source IO type "sc16" does not match sink IO type "short")
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPRQL3NXCW2ZTSFLCCNTDX2F6XQUELFC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2398330520257142364=="

--===============2398330520257142364==
Content-Type: multipart/alternative; boundary="00000000000082431b05c924f071"

--00000000000082431b05c924f071
Content-Type: text/plain; charset="UTF-8"

I also noticed this problem. It appears to be a bug in GNU Radio,
introduced by this commit (or at least reverting it fixes the problem):
https://github.com/gnuradio/gnuradio/commit/d44ee73deeaab86a7cc5820ef62688f291331b88#diff-07eb034ef7119f3142143792b6a91429ea645e3dd21cd48251d5332abf7486a2

-Michael

On Fri, Aug 6, 2021 at 11:37 AM Martin <usrp-users-list@olifantasia.com>
wrote:

> Hi,
> I used to be able to select output IO type "sc16" in a UHD source block.
> And then connect it to anything that expects a vector of two shorts on
> its input.
> For example a head block with type short and vectorsize 2.
> Or a filesink with type short and vectorsize 2.
>
> But with current gnuradio 3.8 I get this error when I connect a UHD
> source with output type sc16 to a block which expects a vector of two
> shorts on its input:
>
> Source IO type "sc16" does not match sink IO type "short"
>
> I could not find any block that accepts IOtype sc16 on its input inside
> grc.
>
> Am I missing something obvious here?
> How can I use complex short samples from a UHD source block?
>
> Thanks and best regards,
>
> Martin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000082431b05c924f071
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I also noticed this problem. It appears to be a bug i=
n GNU Radio, introduced by this commit (or at least reverting it fixes the =
problem): <a href=3D"https://github.com/gnuradio/gnuradio/commit/d44ee73dee=
aab86a7cc5820ef62688f291331b88#diff-07eb034ef7119f3142143792b6a91429ea645e3=
dd21cd48251d5332abf7486a2">https://github.com/gnuradio/gnuradio/commit/d44e=
e73deeaab86a7cc5820ef62688f291331b88#diff-07eb034ef7119f3142143792b6a91429e=
a645e3dd21cd48251d5332abf7486a2</a></div><div><br></div><div>-Michael</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Aug 6, 2021 at 11:37 AM Martin &lt;<a href=3D"mailto:usrp-users-lis=
t@olifantasia.com">usrp-users-list@olifantasia.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
I used to be able to select output IO type &quot;sc16&quot; in a UHD source=
 block.<br>
And then connect it to anything that expects a vector of two shorts on <br>
its input.<br>
For example a head block with type short and vectorsize 2.<br>
Or a filesink with type short and vectorsize 2.<br>
<br>
But with current gnuradio 3.8 I get this error when I connect a UHD <br>
source with output type sc16 to a block which expects a vector of two <br>
shorts on its input:<br>
<br>
Source IO type &quot;sc16&quot; does not match sink IO type &quot;short&quo=
t;<br>
<br>
I could not find any block that accepts IOtype sc16 on its input inside grc=
.<br>
<br>
Am I missing something obvious here?<br>
How can I use complex short samples from a UHD source block?<br>
<br>
Thanks and best regards,<br>
<br>
Martin<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000082431b05c924f071--

--===============2398330520257142364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2398330520257142364==--
