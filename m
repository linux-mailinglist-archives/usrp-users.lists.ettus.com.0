Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FF41ED855
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jun 2020 00:04:11 +0200 (CEST)
Received: from [::1] (port=41740 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgbUV-0004kZ-Kz; Wed, 03 Jun 2020 18:04:07 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:37633)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jgbUS-0004gY-7a
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 18:04:04 -0400
Received: by mail-oi1-f176.google.com with SMTP id m67so3261899oif.4
 for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2020 15:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HqUxhxkjXi9+AgHNQChvpdC4ega6riAI7RCXfYMBU5k=;
 b=CXNzKHHlphv6KWDhGvWBkXp2tGU01RoFaspIz5Z8MvHHEZoiaFCBBBb08Pap6TQ6fM
 v3pw6/Ly1M2mmKaJmVgP8VLmawRRXXgxNhmVoU5wbDYqyfQGtsv2A1ZfnoINi4vUJIMG
 avo4EQZ0wy1965TUi6qxWTRROvqolysGYclZyoOrnVCaEYAilp8rEWUeBjr5kWrCOAc0
 SAkzOb6H+PVvBVZbeBnkZWvY73Ww2dIt1vBUlvm7ZjtCBJT3CRPCfkFcSmaxNf2mPPMA
 HhKmFIEfzCGDhpaAQvJLuxR68OBRnWOsC2ZBmoOI4nzhdwC5GDtzH4nwzzDyTp3NKc9X
 r79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HqUxhxkjXi9+AgHNQChvpdC4ega6riAI7RCXfYMBU5k=;
 b=CN3bvB2rS5dgMpHNZu+gQaItHbt0PGH+iMPw2Z1VWu0Q0HtaAdR8NYA13sXIhnOzsC
 1UT29bIEmYP+EkOh1Ya2Kp1tW790va7RkAe3/+0Ls/41EOT4VxX9uzD8alv1bgzUJY7T
 81mtPb8lPiO748DE12PUk5z1jstfTFy9Kg4gofQ4cBu7eoqqF7VRozLVJGO8dVPamrRZ
 0H2psKBBCFuLAhibdyAg33V4fywvdvNvJbXhcL7i5FRRgeakDVGeXT3GqPN6DulAgdxO
 wMAfnyiCnDhDQZ5HsfwFnzk7FDtf279KdG3PVcxmbIQgNH15V/MjaQ+W0EqJxKNYjqqw
 Afrw==
X-Gm-Message-State: AOAM531eKhOVlQKIRl3wLRVzHiEL9FueS7OOPUYk7JOrIUGwoWzEldfC
 usvRdoSX7/TlcFQYklyMwgH2YIEz45ixXzc9/I+MGQ==
X-Google-Smtp-Source: ABdhPJwZlZDeHl7oF9OPqNxy8e0MPshwZqz1H0OTYh6EphGbEbB3T8zKsCaKcvaWlqx6H98SO98I8mMkZkYIVSJDsZY=
X-Received: by 2002:aca:6144:: with SMTP id v65mr1206794oib.33.1591221803298; 
 Wed, 03 Jun 2020 15:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <dd15877785cc4cf6a2ef7d63106e7584@oc11expo22.exchange.mit.edu>
In-Reply-To: <dd15877785cc4cf6a2ef7d63106e7584@oc11expo22.exchange.mit.edu>
Date: Wed, 3 Jun 2020 18:03:12 -0400
Message-ID: <CAB__hTSD1+s2J7Onv5PeEfH9ue7c2DyjAjGwaacJ2T-nZipH+w@mail.gmail.com>
To: Richard Joseph Muri <ri28856@mit.edu>
Subject: Re: [USRP-users] Sending multiple contiguous transmit requests
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5348323539408445980=="
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

--===============5348323539408445980==
Content-Type: multipart/alternative; boundary="000000000000587b9305a7353210"

--000000000000587b9305a7353210
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Richard,
Is your first packet marked end-of-burst?  Also, how about if your 2nd
packet does not include a time stamp at all?

Rob

Rob

On Tue, Jun 2, 2020 at 1:59 PM Richard Joseph Muri via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I=E2=80=99ve been having an issue with the USRP where I=E2=80=99ve found =
if I have a
> continuous waveform segmented over multiple packets, it is difficult to
> transmit it on the USRP. The scenario is as follows:
>
>
>
> I am using a USRP x310 with UHD version:
>
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
> Boost_105800; UHD_3.13.0.3-24-g00019176
>
>
>
> Packet 1 has 100 samples. I do a send starting at time 0 with 100 samples=
.
> Packet 2 has 50 samples. I do a send starting at time 100 with 50 samples=
.
> Packet 2 is marked late and doesn=E2=80=99t send properly.
>
>
>
> Packet 1 has 100 samples. I do a send starting at time 0 with 100 samples=
.
> Packet 2 has 50 samples. I do a send starting at time 101 with 50 samples=
.
> Packet 2 sends properly, but now I have a sample delay inserted into the
> middle of my waveform.
>
>
>
> Packet 1 has 100 samples. I do a send starting at time 0 with 99 samples.
> Packet 2 has 50 samples. I do a send starting at time 101 with 50 samples=
.
> Packet 2 sends properly, but now I have a blank sample inserted into the
> middle of my waveform.
>
>
>
> The obvious solution is to reassemble my fragmented packets before making
> a tx_streamer->send() call. I=E2=80=99m wondering if there is a way to re=
plicate
> the behavior of a single large transmit request using multiple smaller
> transmit requests?
>
>
>
> Thank you,
>
> Richard
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000587b9305a7353210
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Richard,<div>Is your first packet marked end-of-burst?=C2=
=A0 Also, how about if your 2nd packet does not include a time stamp at all=
?</div><div><br></div><div>Rob</div><div><br></div><div>Rob</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ju=
n 2, 2020 at 1:59 PM Richard Joseph Muri via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6258549427260122989WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve been having an issue with the USRP wher=
e I=E2=80=99ve found if I have a continuous waveform segmented over multipl=
e packets, it is difficult to transmit it on the USRP. The scenario is as f=
ollows:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am using a USRP x310 with UHD version:<u></u><u></=
u></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (=
Red Hat 4.8.5-36); Boost_105800; UHD_3.13.0.3-24-g00019176<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Packet 1 has 100 samples. I do a send starting at ti=
me 0 with 100 samples. Packet 2 has 50 samples. I do a send starting at tim=
e 100 with 50 samples. Packet 2 is marked late and doesn=E2=80=99t send pro=
perly.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Packet 1 has 100 samples. I do a send starting at ti=
me 0 with 100 samples. Packet 2 has 50 samples. I do a send starting at tim=
e 101 with 50 samples. Packet 2 sends properly, but now I have a sample del=
ay inserted into the middle of my
 waveform.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Packet 1 has 100 samples. I do a send starting at ti=
me 0 with 99 samples. Packet 2 has 50 samples. I do a send starting at time=
 101 with 50 samples. Packet 2 sends properly, but now I have a blank sampl=
e inserted into the middle of my waveform.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The obvious solution is to reassemble my fragmented =
packets before making a tx_streamer-&gt;send() call. I=E2=80=99m wondering =
if there is a way to replicate the behavior of a single large transmit requ=
est using multiple smaller transmit requests?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
<p class=3D"MsoNormal">Richard<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000587b9305a7353210--


--===============5348323539408445980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5348323539408445980==--

