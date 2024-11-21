Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B43C9D4E51
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 15:10:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99D80385EB8
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 09:10:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732198223; bh=ca1wa+2fQCXLz8cV4D00ugcuVjSjwo3Y+AjilkeV5v4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oIRHosV/EDOCrB2ZYKjbLRAxKh6TgOfLt4fiUd+9UJoqYhmKjXgbafk8m/K+3DykG
	 I9wAZ3Smu1jcOFYLJmI8OnFUm4wqQ55B+Wm5pSZWrdz4IXviqGQcbYw1uzDa2kkV1K
	 l6CYFpJLj4cu876eDBkH1/Acp0D3CLyNsSz9myfWL+JWssSE6JDeOO58RMO+fis78n
	 lbARgxTqGwCBuQsjqjXwtN3wRyf/Mj8DLumouOJgbz7x8IWTDtLf5iirAuWFeGXLny
	 dZeCWPzTgWaeBtrNItJ3kiIleC6FvbYraxMZRT9COoKc75FuD/L01bYb2C3vr0JfP5
	 myF+upwOwznMQ==
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id B57963859AB
	for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 09:09:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="0FGWHfXj";
	dkim-atps=neutral
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso17112341fa.2
        for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 06:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1732198190; x=1732802990; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n7OXYe2Fx0qKEwB1E/CiG3hYv+GMKagJ1Eo7lfU2q6g=;
        b=0FGWHfXj+E6cPEtTCHB3m1f/da8IJubQjXYpuHuxFjB8RlDg2DAGyGkRJ0VhcJEAwZ
         1u9Fm6xtU3P7tHBCt7E41thNTBUDwWouT8BABZ5qUVxHNRdBOuijUrbrrvFQ6lh7g1Cu
         N8/ky/iFOvIOTdinC1lz6FAsaZ9COGmQ/wHiJP+mMunWQuGak3+WV94B87dTPuaiXmGw
         2YlENCo00ZAAsQ/+Zv86Ji0XBAIWSeIsJjCBQ4XRep2efl13/0KtAAxUIacVeZwRlk/Q
         LvpBpEFEP3fM/z1PsowU2G9Xmxcjv25BLAguY61GdCvfThVJ9+9KPtn3MJ+vEoSi3l7d
         6LNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732198190; x=1732802990;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n7OXYe2Fx0qKEwB1E/CiG3hYv+GMKagJ1Eo7lfU2q6g=;
        b=SCJ72pU85GAa36fTpRgrdW+PgcqvWosK7E+FmJJ+X5g53bdxGHEgwBnPw+VUyb0CY5
         eUUAce8UH2Qzl/13SZjBwFvllYDOhIiV/Hoax4TKLK6LCk0kcm8UKNGIxWDqbnODElU/
         /OmlPU1O4XdFngfl1rhZlyDntdanhNDHGaDpgrvlyLiE4vW84Xp3TvIDLaIN2TeUEZz4
         bMx1qv1KU3ergQ3xE5Pfr2SFyjhxps7gox2rvsOyADMEp18FeygBtSfWtTJy/LKZGB4a
         TZ5VhqJXc/WqHVOxwdkvrIH1x7dQ9mySYubr3jI2mPjQqNKL3QTdDTAkownBWQpqiTtV
         enJA==
X-Gm-Message-State: AOJu0YyWdBMT+pJwKyZA47qRPeRwm/LvwTFAaUmXX4/8ytXXcbkpDVWW
	A5NvRu9RVRI/Wl2ah0qGZPJmqwc05BfNvSWuqD7aJJ8vyU97qlRqtm67mdwePyCAiv6/wlVx7To
	ZTCXPAuOTQVMMsfoOuuGajxtM+WVgLnW9aMWVZptf
X-Gm-Gg: ASbGncsCusYwxClt5vgTeOhNnczTG9w8cVUX9LGqa8eS63Ey4XbZE7YmXCOWQKmKdJF
	FnWQP3AbBBXv3kZuAn5iUsVJdtfzXU5q3A+WqvXOsbWbHd7syo+aM1+PPgphbO3E=
X-Google-Smtp-Source: AGHT+IHWoJfk6HoIqwUKbXcG0hDMGTKSFGlvkomaLwF2efR2JqKnq07LITByv63pp/S+fiiM8HtWeF7WIrFkCqe95OE=
X-Received: by 2002:a2e:bc03:0:b0:2fa:c0c2:d311 with SMTP id
 38308e7fff4ca-2ff8db1659bmr53804151fa.5.1732198190093; Thu, 21 Nov 2024
 06:09:50 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 21 Nov 2024 15:09:38 +0100
Message-ID: <CAFOi1A5zU8en4bGeDSeJ_iNWhHLdLF=EoDoX7LfRw6+9HR8Fww@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: ACZ6ROTOMANWBEQEWV5VALK5WEPRRXKC
X-Message-ID-Hash: ACZ6ROTOMANWBEQEWV5VALK5WEPRRXKC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Real-world experience with X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ACZ6ROTOMANWBEQEWV5VALK5WEPRRXKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5002517187722631635=="

--===============5002517187722631635==
Content-Type: multipart/alternative; boundary="000000000000cd37e306276cd102"

--000000000000cd37e306276cd102
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,

check out our knowledge base: https://kb.ettus.com/X440#100_Gigabit_Etherne=
t

We validated streaming at full rate (this means both 8x500 Msps and 2x2000
Msps) with the system above. It's still tough: You need DPDK, and grease
every bolt in the system. Much more than capture/replay isn't an option.

For RX, you can use the raw UDP feature to stream the output of every
channel to a different computer on the network; that can help with
capturing.

--M

On Fri, Nov 15, 2024 at 10:54=E2=80=AFPM Eugene Grayver <eugene.grayver@aer=
o.org>
wrote:

> Hi,
>
> I am considering the X440 for a wideband record/playback system.  What
> benchmarks has Ettus done?
>
> Is there any hardware out there that can continuously stream (one way, TX
> or RX) the full 8 Gsps (i.e. 2x 4 Gsps) for the combined bandwidth of 2x
> 1.6 GHz?  Assuming DPDK is used, there is still an issue with getting
> packets to/from different cores/threads.  Are the packet streams
> configurable to allow hardware-level queues that map to different
> IRQs/cores?  How does the TX side work (that's usually a lot harder to
> maintain than RX)?
>
> Thanks.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cd37e306276cd102
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi Eugene,</div><div>=
<br></div><div>check out our knowledge base: <a href=3D"https://kb.ettus.co=
m/X440#100_Gigabit_Ethernet">https://kb.ettus.com/X440#100_Gigabit_Ethernet=
</a></div><div><br></div><div>We validated streaming at full rate (this mea=
ns both 8x500 Msps and 2x2000 Msps) with the system above. It&#39;s still t=
ough: You need DPDK, and grease every bolt in the system. Much more than ca=
pture/replay isn&#39;t an option.</div><div><br></div><div>For RX, you can =
use the raw UDP feature to stream the output of every channel to a differen=
t computer on the network; that can help with capturing.</div><div><br></di=
v><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Nov 15, 2024 at 10:54=E2=80=AFPM Eugene Grayver=
 &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 class=3D"msg4356713438104602963">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am considering the X440 for a wideband record/playback system.=C2=A0 What=
 benchmarks has Ettus done?=C2=A0=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there any hardware out there that can continuously stream (one way, TX o=
r RX) the full 8 Gsps (i.e. 2x 4 Gsps) for the combined bandwidth of 2x 1.6=
 GHz?=C2=A0 Assuming DPDK is used, there is still an issue with getting pac=
kets to/from different cores/threads.=C2=A0
 Are the packet streams configurable to allow hardware-level queues that ma=
p to different IRQs/cores?=C2=A0 How does the TX side work (that&#39;s usua=
lly a lot harder to maintain than RX)?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--000000000000cd37e306276cd102--

--===============5002517187722631635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5002517187722631635==--
