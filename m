Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A604A7360
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:40:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A786F3852F4
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:40:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Pzm1vNWq";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id A61FF383B39
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:40:02 -0500 (EST)
Received: by mail-yb1-f172.google.com with SMTP id 23so61584922ybf.7
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8IgL43tsbuK3J38mx29Z/NPeahLwp7wDkFEaeh1dZRA=;
        b=Pzm1vNWqmoDVFtOa1mV/1x+aeLQkU5z+3uDr7Lc2vAj3JwkIR6O+KrFKiuznhcfN8T
         F+u7utw2qkvC1GTQKBi6sL5M2mY8NnCEC1W2cx8WUBw1fkNOEuB/xEijDPmE1NcEaQLA
         ilJST9uSI4Sh76TfKWnnn0FrzVX9fmMa96sbI9gbg2NgfDvNpHQX2F/sB72jANobcZZF
         c3Q0tw4GuKrKDYN+bE/gcHxY2qh844zPka7A6WJEr8s45FdP1SZ/x1mlCI6N0HsjVKPu
         VNlvKb0LF6YH471V6z6mEwCzPIlHFK26kgolo98P4NjHGkA3TJYW4Eqvd70MIT5x9wHR
         yQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8IgL43tsbuK3J38mx29Z/NPeahLwp7wDkFEaeh1dZRA=;
        b=zvb88xYVRvUKXrBIDTzLwD6wi/JVqKr5Ty4wrRi5mwJkq00L9xBI6akHyAOdAsWg6q
         eA3Wn4SNlAqtXuOyTZyJPN5hMvID/S2+G2dAZqsztP4uR8n1hOHxDAz0tmnXFdJ+avR+
         RKLx2QfLJ9Lc3HwfOnhjz/vIvmFkZE2EfXdYuaDqSsJ/5D/9IoKX6Ad4EwpcJ/2L0+T2
         dxeOb82CQfxMG/GUuHPHlkbDnusZG9WXvfRCHwrTf2ivg3IUBgfEgBeKRk7x84T1R6NK
         Br5qngsN+3ZH57Rj5AgEQDf/4kqTBXWoCJTXqq8nN2ICdzCg02tVxa6Mls0T7fHGktC6
         BQXA==
X-Gm-Message-State: AOAM531DqkZV8w7UenYe3otXIAnzkc64nPgoRii+kPppDU3vNvlRtVI6
	+i9FWmA8h02R4P+VU09hOd7oel9zYhoi2kd3HJMXew==
X-Google-Smtp-Source: ABdhPJx//ymAB1zcbJU+Knl3iNAJ/CO5aXZHtgAOu0llDAt4BcDEI8WH+s3ryLoCny2UomgWz2OBLr5g4aWcQocNuQ8=
X-Received: by 2002:a25:25c4:: with SMTP id l187mr43734326ybl.13.1643812801345;
 Wed, 02 Feb 2022 06:40:01 -0800 (PST)
MIME-Version: 1.0
References: <bmRt66VHp2qQcNS8bpEAvK8fofebZiXQ5fHqmnCfBx0@lists.ettus.com>
In-Reply-To: <bmRt66VHp2qQcNS8bpEAvK8fofebZiXQ5fHqmnCfBx0@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 2 Feb 2022 09:39:49 -0500
Message-ID: <CAB__hTRpPmA548JmuK=w1SAU_WPWLHhD_viYv8rJzDwCuNphCQ@mail.gmail.com>
To: seckinoncu8070@gmail.com
Message-ID-Hash: 37TEQZZFEUAIZXY5YKXRU6SGGVH65IVC
X-Message-ID-Hash: 37TEQZZFEUAIZXY5YKXRU6SGGVH65IVC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/37TEQZZFEUAIZXY5YKXRU6SGGVH65IVC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2684599548299275534=="

--===============2684599548299275534==
Content-Type: multipart/alternative; boundary="0000000000001a4e0105d709feae"

--0000000000001a4e0105d709feae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok. If benchmark_rate fails, this means that either your host is not
optimized or else it is underpowered, I think.  Did you try the items at th=
is
<https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_N=
etwork_Buffers>link?
Are you getting any error messages or warnings (other than those shown)
when you run benchmark_rate?  How about rx_streaming - are you able to
consume Rx streaming at high rates without errors?


On Wed, Feb 2, 2022 at 8:25 AM <seckinoncu8070@gmail.com> wrote:

> Hello Rob,
>
> I got same error when operating on =E2=80=9Cbenchmark_rate=E2=80=9D. I at=
tached the
> related pictures.
>
>    -
>
>    At 5 Msps, duration =3D 10 minutes =E2=80=94> No error
>    -
>
>    At 20 Msps, duration =3D 2 minutes =E2=80=94> No error
>    -
>
>    At 25 Msps, duration =3D 2 minutes =E2=80=94> Error detected
>    -
>
>    At 50Msps, duration =3D 2 minutes =E2=80=94> Error detected
>    -
>
>    At 100 Msps, duration =3D 2 minutes =E2=80=94> Error detected
>
> In addition, when I got =E2=80=9CU=E2=80=9D errors while running =E2=80=
=9Cbenchmark_rate=E2=80=9D, it
> continues to transmit.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001a4e0105d709feae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok. If benchmark_rate fails, this means that either your h=
ost is not optimized or else it is underpowered, I think.=C2=A0 Did you try=
 the items at <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_=
Tips_and_Tricks#Adjust_Network_Buffers">this </a>link?=C2=A0 Are you gettin=
g any error messages or warnings (other than those shown) when you run benc=
hmark_rate?=C2=A0 How about rx_streaming - are you able to consume Rx strea=
ming at high rates without errors?</div><br><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 2, 2022 at 8:25 AM &lt;<a=
 href=3D"mailto:seckinoncu8070@gmail.com">seckinoncu8070@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello =
Rob,</p><p>I got same error when operating on =E2=80=9Cbenchmark_rate=E2=80=
=9D. I attached the related pictures. </p><ul><li><p>At 5 Msps, duration =
=3D 10 minutes =E2=80=94&gt; No error</p></li><li><p>At 20 Msps, duration =
=3D 2 minutes =E2=80=94&gt; No error</p></li><li><p>At 25 Msps, duration =
=3D 2 minutes =E2=80=94&gt; Error detected</p></li><li><p>At 50Msps, durati=
on =3D 2 minutes =E2=80=94&gt; Error detected</p></li><li><p>At 100 Msps, d=
uration =3D 2 minutes =E2=80=94&gt; Error detected</p></li></ul><p>In addit=
ion, when I got =E2=80=9CU=E2=80=9D errors while running =E2=80=9Cbenchmark=
_rate=E2=80=9D, it continues to transmit. </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001a4e0105d709feae--

--===============2684599548299275534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2684599548299275534==--
