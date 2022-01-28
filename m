Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F734A03F8
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 23:55:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3EF9385120
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 17:55:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="aMDdwfUV";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 727F33847A1
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 17:54:55 -0500 (EST)
Received: by mail-yb1-f170.google.com with SMTP id m6so22800994ybc.9
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 14:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pJPHcfwU6dBTJxYoW6fqkbL9z5ZguuAWoDHDCJ5y/fo=;
        b=aMDdwfUV5OwoDRXBpCGvANYgrrWL9CuL58qFucoUfmRvBkRZ2ckhmKgw+0iNJAF/j8
         uRtxTyR2vW4gu5mlC9LZIfioNu9srixIzUGw5GT85ZsewNFTZfFigAB/IIF+cFL1NNYt
         Vi68hp/9MFgJvBwvnM3tdI9yDrSNdWztKd7+lBapJjL/DBjub07eC762jsdW5YjgK3Sd
         DdufZhDWU7bAyE62AszCerUNOSlmQtdJBAj07pnalqlSgQaypuWx2LZFTqhetdovl0K2
         e/aIGmJH6W0+jRBUTbJTpDabszCZ5riuTGqNCl9Mk+xxRhfTNw1rnWi03LkphWrBVkvP
         fgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pJPHcfwU6dBTJxYoW6fqkbL9z5ZguuAWoDHDCJ5y/fo=;
        b=KC0UxNQ5OkwliVpz3bf6ChqX49PoFdgUljecP0lUBSZLc2m/jqFQO8azrAzxouGDwT
         2vyPi13xPmDQozsCDIJWreIyPjdQywAhL30Dy9T2rxPBYPCBDfjlSz6II6B2uBBlfdBJ
         LvZkY/nBADmldjfsANaHXzHCzfxD5MuTnSuWUVql4tYUYK2p400QdcJ0M5d7/Ii+HDYH
         feiCPzryZ5Li3rxCUbIostfkuxaodz8Yga323rVKbPaLfvgWQthpqBaTL+3RNKVB2IW8
         TXLpKpaPOdgX9V7hpydw+dCVXqEAIqSr/yBabshWX88DtSh/dH6KKnW8zv3GA+vZ9O2x
         VbLg==
X-Gm-Message-State: AOAM5316XyZLT0agkp/AnGE0ZagMFw+m7Ar0hiUDcwDsdRKxREVaOCCj
	cOAKvQzhovZF7QpoiKcXMwCmQ8x3Ev7CREmz0/MjgaFrGFA=
X-Google-Smtp-Source: ABdhPJzwtmn53Vlt70317pFESAm87SWWLaT9cYI6ujB27u6xhuE1bR5V+yt5M6rt9VaO1FHcf2IjWJYvA26ATxfUc7U=
X-Received: by 2002:a25:25c4:: with SMTP id l187mr16295267ybl.13.1643410494618;
 Fri, 28 Jan 2022 14:54:54 -0800 (PST)
MIME-Version: 1.0
References: <TKlq4ITgD9PeON3bRdFsb1qdZ7t3RqXK2rHoVD5Sds@lists.ettus.com> <ddfb1310-2581-9d6d-2a71-289c9e0c7d56@gmail.com>
In-Reply-To: <ddfb1310-2581-9d6d-2a71-289c9e0c7d56@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 28 Jan 2022 17:54:43 -0500
Message-ID: <CAB__hTQBkG7pJo+kHbsZ+jD=tARyzpt8coJN0rN6qe+c=U3XZw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BMQSC4UWRCUR6KXFZK3QZ4W4U65CBOMQ
X-Message-ID-Hash: BMQSC4UWRCUR6KXFZK3QZ4W4U65CBOMQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BMQSC4UWRCUR6KXFZK3QZ4W4U65CBOMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8016624636539451222=="

--===============8016624636539451222==
Content-Type: multipart/alternative; boundary="000000000000c0bd8305d6ac52f2"

--000000000000c0bd8305d6ac52f2
Content-Type: text/plain; charset="UTF-8"

I just noticed that you are using "second_addr". My suggestion is to avoid
this unless you need it.  A single 10Gbe can handle up to about 250 MS/s
aggregate. So, in your case, one 10Gbe link is sufficient.
Rob

On Fri, Jan 28, 2022 at 10:05 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-28 05:53, seckinoncu8070@gmail.com wrote:
>
> Hi Marcus,
>
>    -
>
>    I connected two null sources and it gave me the same error after 50
>    seconds at 20 Msps sample rate. This problem occurs in two channels only.
>    After a while it stops transmitting when sample rate >= 20 Msps .
>
>
>    -
>
>    When I connected one file or null source, I can use 100 Msps without
>    any error.
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> what version of UHD are you using?
>
> What MTU are you using on your 10GiG network link?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c0bd8305d6ac52f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I just noticed that you are using &quot;second_addr&quot;.=
 My suggestion is to avoid this unless you need it.=C2=A0 A single 10Gbe ca=
n handle up to about 250 MS/s aggregate. So, in your case, one 10Gbe link i=
s sufficient.=C2=A0<div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2022 at 10:05 AM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-28 05:53,
      <a href=3D"mailto:seckinoncu8070@gmail.com" target=3D"_blank">seckino=
ncu8070@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi Marcus,</p>
      <ul>
        <li>
          <p>I connected two null sources and it gave me the same error
            after 50 seconds at 20 Msps sample rate. This problem occurs
            in two channels only. After a while it stops transmitting
            when sample rate &gt;=3D 20 Msps .</p>
        </li>
      </ul>
      <ul>
        <li>
          <p>When I connected one file or null source, I can use 100
            Msps without any error.</p>
          <p><br>
          </p>
        </li>
      </ul>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    what version of UHD are you using?<br>
    <br>
    What MTU are you using on your 10GiG network link?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c0bd8305d6ac52f2--

--===============8016624636539451222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8016624636539451222==--
