Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45771124C2C
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 16:50:44 +0100 (CET)
Received: from [::1] (port=42166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihbay-0005GF-Sg; Wed, 18 Dec 2019 10:50:40 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:34722)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ihbau-000573-LU
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 10:50:36 -0500
Received: by mail-lj1-f177.google.com with SMTP id k1so2033744ljg.1
 for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2019 07:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IhZsJUHY9uVWx8/3OHbRB30RRoZlBmxB+u5Mj+jgXIM=;
 b=dPbUOL8Ul7BGvno5yFqsNsO6F19y44Xgsouo39JFzYXDguiqlz3nhIo9gLWVmMwxPA
 8eGBrXAx9QnKRMCcxfu/XLiQNMBl32pkKe999D7UiXOEBJKNVlcvjT5Gk38UsptnL9gn
 aSuIb4tPBd7I9b6Hran0VtBzUcmHGGhUrTUnoTlFeeaTkXGY1m7Q7m3Cw/8ry0d9xLh6
 IFerh+NJedlePU14qsM9sUl3xAQXjHWcdMpUI2VgaMFtCnMknxfdvJ9O9bYlhV2A3wL+
 u7DeAZUhhUHhaCmFXliGRLdanxmdFTvWsdPY4/95sPimg89B9urKbNAbHgD3/i0Ewrpn
 sGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IhZsJUHY9uVWx8/3OHbRB30RRoZlBmxB+u5Mj+jgXIM=;
 b=lAi44FyB+K3j+1GjqQo0iFwf0tMJ4g6Qv1t5feLjlFIWi89U36pMcmp7dEOq7+dvpY
 BIlsaTIUDDx0I/KUqtZilnNylqj4TFULlTlqIL88x6hg51fSUzOz4bT64Uci68cc0jhH
 eS08XR5+AdyGQL9YPCD+fOAQOg49C6M4nWVUHybO9NTuHjheK7kOozeaa+KtdVvB9BtG
 7DGvNKWywPCV0TKKbjy/3mntIt3RaUq5VhXo4PbSp5OB4ZnfA+ZpFGvMvWL5dOJfmxn9
 InMcBfydT0B+xJSlXXVpRrRH9VwWXCQlAZSuNfuxdk0oXbw92dJ+VArKMy0Ew4k0NN9B
 awGQ==
X-Gm-Message-State: APjAAAVtRrRT3DYUu3l9WiEhFhZFu21T6QE9e9EHezfe2l1vDvIavH3c
 anl7HO49tHdGD1AXwKMEv9T7WNNgcyHBeHhHr4QNTtPP
X-Google-Smtp-Source: APXvYqwug8kaOtbgpQkmicSThbNicpFT5jXRSmGvIRAXQEY700P7uALoAuM/q7L1p2/rMWdA3Q7aey+Vl2u7Hv4pjfc=
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr2245779ljj.97.1576684195401;
 Wed, 18 Dec 2019 07:49:55 -0800 (PST)
MIME-Version: 1.0
References: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
In-Reply-To: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
Date: Wed, 18 Dec 2019 09:49:43 -0600
Message-ID: <CANf970YugamZVx6BW=XD_es4VSnHkLPudPcLCdA864MsEMk8Ew@mail.gmail.com>
To: =?UTF-8?B?0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQug==?=
 <gena.kazachek@gmail.com>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7806569313445745463=="
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

--===============7806569313445745463==
Content-Type: multipart/alternative; boundary="00000000000063e1a70599fc6508"

--00000000000063e1a70599fc6508
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to be clear, you see these pulsations when transmitting with a
b205mini, but *not* with the b210?

Is the b205mini a bare board or an industrial model with a case and
aluminum heat sync?

Sam Reiter
Ettus Research


On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=
=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello!
> I'm trying to build QPSK based system on GNURadio.
> I'm using two USRP B205-mini boards as transmitter and receiver, also I
> got B210 board that I run gqrx on to watch what is really going on.
> I noticed a strange behaviour on my tests, so I began to investigate it
> and ended to a very simple graph, that is in attachment. On a frequencies
> that are multiple of 10Mhz, like 1020Mhz all works like expected and
> sonogram looks good. If I tune to any other frequency, even 1Hz more or
> less, the sonogram is full of pulsations and frequency of that pulsation =
is
> depends of exact tune frequency. I attached some screenshots of that
> pulsations.
> On receiving part that pulsations cause many errors while decoding.
> I got another board, LimeSDR-Mini, and no such behaviour observed while
> running graph on it.
> I wonder what is going on, and how can I fix this problem.
> Thank you.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000063e1a70599fc6508
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just to be clear, you see these pulsations when transmitti=
ng with a b205mini, but <i>not</i>=C2=A0with the b210?<div><br></div><div>I=
s the b205mini a bare board or an industrial model with a case and aluminum=
 heat sync?</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div =
dir=3D"ltr">Sam Reiter=C2=A0</div><div dir=3D"ltr">Ettus Research</div></di=
v></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=
=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=
=D0=BA via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hello!</div><div>I&#39;m tryin=
g to build QPSK based system on GNURadio.<br></div><div>I&#39;m
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

--00000000000063e1a70599fc6508--


--===============7806569313445745463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7806569313445745463==--

