Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CDB1250A9
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 19:29:29 +0100 (CET)
Received: from [::1] (port=43044 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihe4d-0004jF-Ij; Wed, 18 Dec 2019 13:29:27 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:36451)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <gena.kazachek@gmail.com>)
 id 1ihe4a-0004cr-2g
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 13:29:24 -0500
Received: by mail-ot1-f50.google.com with SMTP id w1so3606158otg.3
 for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2019 10:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=n4rk56KIXTzq8XGTMMNfAPtxlEq95V/RNwcFkuaF/mU=;
 b=X0z6LutkctWOQJ+ho9lsgjEocQrXkw1cwlb3eP/iuPIUnf+BrRKuF7UwrYHXHk6BW3
 10fJzKZpB4PI1+wZKGbLzwLMaNZm7F2pnUZKKcZ1vTyWFuuEIKx/ln7HscgSMn0eoVLv
 Qnfa3hTpuMScr0vrQnaQZOADAWvWB8ctMyBO4xf1xWBJ94uSA4sD6j6lIkE4TyA5uvYW
 +tw79zOiHdep5QmQOEkF3snMM078qyXtefIwaY96SodwC1vm8js71XeeNds1MspIN73L
 X7UQJeNZPburbH/fuqu3N5d85yjMuPRjr1UXLYPH+9levbWQ81QGRP47RNNJa136f4s2
 eCYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=n4rk56KIXTzq8XGTMMNfAPtxlEq95V/RNwcFkuaF/mU=;
 b=paQ3YhPNhpIjj0CeB76Wkfw8l82GVi2QaL/EwrcaIMdMmziq0zDdF+yQmMHlQ4Lpm0
 9jR2vjh5WZyneC3hM52rN+G6+K8ZUQiMfPECfOPE//A+BpmUKWyJyn75CAnhLWoDx5cq
 rcPjvifusTarzAKof8s53Pj1PvX2HzkxLxOGlYQUN4FRThsh4wQXIjVESL1YuOjWSCq3
 2oXAYRgI2iu2uLOf6mJvR91fuknkyttOsV+KLQzCve8IEEVnEW1x+KFNt94Xb45mZwfM
 VYAQau3QMBI+z+86ZPkcIBmlShOZ2FfPgTsYDhh9GS4QbpNK0QKU3FQk1ocO00vq+SBZ
 h2EQ==
X-Gm-Message-State: APjAAAXtU9JSbrioJL2yEMF2OB99jgfTk510VzVDNOc3oou+0u5upQ3d
 PQlruMMiMunWIonSyUf6vLqu2uQ34tcpyy+HKXE=
X-Google-Smtp-Source: APXvYqzQLLiCQZ2Hv6m4HIjr8lruOJ228IWZwrpCS645LYCh193Yp01ULspyAEzqM5OmS+EVXEN7TgFSAAgTbhhk8ak=
X-Received: by 2002:a9d:133:: with SMTP id 48mr3928329otu.15.1576693723353;
 Wed, 18 Dec 2019 10:28:43 -0800 (PST)
MIME-Version: 1.0
References: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
 <CANf970YugamZVx6BW=XD_es4VSnHkLPudPcLCdA864MsEMk8Ew@mail.gmail.com>
 <CADfCwn2mNfRYh0HpOr-cYPGw99oZW2D08Y2fab=10Tvg3SE9dw@mail.gmail.com>
 <CADfCwn09ypZGMRPAvGoGi6nMcM2ZMXeOn44g9CHas78Wdi04gQ@mail.gmail.com>
In-Reply-To: <CADfCwn09ypZGMRPAvGoGi6nMcM2ZMXeOn44g9CHas78Wdi04gQ@mail.gmail.com>
Date: Wed, 18 Dec 2019 21:28:03 +0300
Message-ID: <CADfCwn04HwSBiaCef8f4QK_YOhoNGQe+9TFs5cqFLo4D2VPpTA@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>, usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Pulsations on a QPSK transmission
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQuiB2aWEgVVNSUC11c2Vy?=
 =?utf-8?q?s?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQug==?=
 <gena.kazachek@gmail.com>
Content-Type: multipart/mixed; boundary="===============5834592031251806509=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5834592031251806509==
Content-Type: multipart/alternative; boundary="0000000000004cd76c0599fe9dd1"

--0000000000004cd76c0599fe9dd1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, Sam!
No, I use two devices as transmitter and receiver and third board I use
just to observe sonogram.
Pulsations exist on both b205 and b210 devices if I use them as a
transmitter and not exist if I use as transmitter another vendor's device -
LimeSDR.

All 3 USRP devices are industrial with metal case, and LimeSDR is not.

On Wed, 18 Dec 2019 at 21:26, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=
=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA <gena.kazachek@gmail.com>
wrote:

> All 3 USRP devices are industrial with metal case, and LimeSDR is not.
>
> On Wed, 18 Dec 2019 at 21:25, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=
=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA <gena.kazachek@gmail.com>
> wrote:
>
>> Hello, Sam!
>> No, I use two devices as transmitter and receiver and third board I use
>> just to observe sonogram.
>> Pulsations exist on both b205 and b210 devices if I use them as a
>> transmitter and not exist if I use as transmitter another vendor's devic=
e -
>> LimeSDR.
>>
>> On Wed, 18 Dec 2019 at 18:49, Sam Reiter <sam.reiter@ettus.com> wrote:
>>
>>> Just to be clear, you see these pulsations when transmitting with a
>>> b205mini, but *not* with the b210?
>>>
>>> Is the b205mini a bare board or an industrial model with a case and
>>> aluminum heat sync?
>>>
>>> Sam Reiter
>>> Ettus Research
>>>
>>>
>>> On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello!
>>>> I'm trying to build QPSK based system on GNURadio.
>>>> I'm using two USRP B205-mini boards as transmitter and receiver, also =
I
>>>> got B210 board that I run gqrx on to watch what is really going on.
>>>> I noticed a strange behaviour on my tests, so I began to investigate i=
t
>>>> and ended to a very simple graph, that is in attachment. On a frequenc=
ies
>>>> that are multiple of 10Mhz, like 1020Mhz all works like expected and
>>>> sonogram looks good. If I tune to any other frequency, even 1Hz more o=
r
>>>> less, the sonogram is full of pulsations and frequency of that pulsati=
on is
>>>> depends of exact tune frequency. I attached some screenshots of that
>>>> pulsations.
>>>> On receiving part that pulsations cause many errors while decoding.
>>>> I got another board, LimeSDR-Mini, and no such behaviour observed whil=
e
>>>> running graph on it.
>>>> I wonder what is going on, and how can I fix this problem.
>>>> Thank you.
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>
>> --
>> =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=
=B0=D1=87=D1=91=D0=BA
>>
>
>
> --
> =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=
=D1=87=D1=91=D0=BA
>


--=20
=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=
=D1=87=D1=91=D0=BA

--0000000000004cd76c0599fe9dd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, Sam!</div><div>No, I use two devices as transm=
itter and receiver and third board I use just to observe sonogram.</div><di=
v>Pulsations
 exist on both b205 and b210 devices if I use them as a transmitter and=20
not exist if I use as transmitter another vendor&#39;s device - LimeSDR.</d=
iv><div><br></div><div>All 3 USRP devices are industrial with metal case, a=
nd LimeSDR is not.</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, 18 Dec 2019 at 21:26, =D0=93=D0=B5=D0=BD=D0=
=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA &lt;=
<a href=3D"mailto:gena.kazachek@gmail.com">gena.kazachek@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">All 3 USRP devices are industrial with metal case, and LimeSDR is =
not.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, 18 Dec 2019 at 21:25, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA &lt;<a href=3D"mail=
to:gena.kazachek@gmail.com" target=3D"_blank">gena.kazachek@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Hello, Sam!</div><div>No, I use two devices as transmitter =
and receiver and third board I use just to observe sonogram.</div><div>Puls=
ations exist on both b205 and b210 devices if I use them as a transmitter a=
nd not exist if I use as transmitter another vendor&#39;s device - LimeSDR.=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, 18 Dec 2019 at 18:49, Sam Reiter &lt;<a href=3D"mailto:sa=
m.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Just to be clear, you see these pulsations when transmitting with a b205min=
i, but <i>not</i>=C2=A0with the b210?<div><br></div><div>Is the b205mini a =
bare board or an industrial model with a case and aluminum heat sync?</div>=
<div><br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=
=3D"ltr">Sam Reiter=C2=A0</div><div dir=3D"ltr">Ettus Research</div></div><=
/div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=D0=
=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=
=BA via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello!</div><di=
v>I&#39;m trying to build QPSK based system on GNURadio.<br></div><div>I&#3=
9;m
 using two USRP B205-mini boards as transmitter and receiver, also I got
 B210 board that I run gqrx on to watch what is really going on. <br></div>=
<div>I
 noticed a strange behaviour on my tests, so I began to investigate it=20
and ended to a very simple graph, that is in attachment. On a=20
frequencies that are multiple of 10Mhz, like 1020Mhz all works like=20
expected and sonogram looks good. If I tune to any other frequency, even
 1Hz more or less, the sonogram is full of pulsations and frequency of=20
that pulsation is depends of exact tune frequency. I attached some=20
screenshots of that pulsations.</div><div>On receiving part that pulsations=
 cause many errors while decoding.</div><div>I got another board, LimeSDR-M=
ini, and no such behaviour observed while running graph on it.</div><div>I =
wonder what is going on, and how can I fix this problem.</div><div>Thank yo=
u.</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr">=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=
=B7=D0=B0=D1=87=D1=91=D0=BA<br></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr">=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=
=B7=D0=B0=D1=87=D1=91=D0=BA<br></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=
=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA<br></div></div>

--0000000000004cd76c0599fe9dd1--


--===============5834592031251806509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5834592031251806509==--

