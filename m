Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA5D90C0E4
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 03:04:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A99338550B
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 21:04:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718672644; bh=6rWpens4FhtXeUX5t7P+Ll95hDFb0A2u4be8BM4Q2I8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LJi9uVyAw6x8r0pZJoIqCqCTKhkQB7TFMJ956B3PkdtCGaUp6Or3TlfYPWbxQ14WR
	 zNVUd3NItqiOFBSlqdAuGlvl4P5Jn7HHFETJQpYGgOInluYcqDlxnzPtCGrbDn3EIg
	 TTmmZ+arU2pkiiMSxNJbpDoUyspbAR79bx6sTiXGu3jIDzQOeVLdNJjxRkEEKlBjrg
	 wuC1p2Z039+dyh3yH8kx58POHgrpMNDkWznZxAE1LTiRrnF2unSS+7Phu0Y5Q/EW7f
	 fYikdeA4MZY7+cdZp/Jbskb2lSy713Ttr43KBZScTptQdbH9Zw4yh6W+kZeuTKyf35
	 VcpZ8DD878ZCA==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id BA49A384AF7
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 21:02:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="O+q/82J4";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52bc121fb1eso5789702e87.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 18:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1718672572; x=1719277372; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RNJpWi2NnTUFlKCapzYUWVmZRXdJVpp1W7Dthhac+nw=;
        b=O+q/82J45BCF3DmCCJ32Zeec3ISttKVrjkSVNd+haWgGB30lIb8lYnim9k8N0d2asc
         c0I6KidjwbvpO7c5MnI4jW2wijn1QbN2K2di3acW6rdxyaoyNiX5H/ktLU7XsoHu/Hv5
         qydwFGlqAVr5TPqP3UIQWCgkcI+xFYk0QBp1Rp9fwUZorMsFTVny8JLNgr0EOxuLI+wO
         rg+yaTiJFvq4bdiT8gfJAQH/+snfbHg/UkY1/EMvMcc5ozh9YNUAGidqWDSB35r39FgX
         XX+pvXDCiDv0/O5ZKsXl8ZRcUq174nXWIh26VVU4K4duf4DGx9uMpnx838v/SS9UTx6T
         c40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718672572; x=1719277372;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RNJpWi2NnTUFlKCapzYUWVmZRXdJVpp1W7Dthhac+nw=;
        b=Pw9Kc0rPtcB5mdLKDx/e/Gfq9JnOGPY0oLOtG0tpGOoyfD+5TBS9fprsOW/+BLdnWg
         CK+hJc3I9Eh/TgEsNCbHv44jwxNZMK0v8YSSixrwh8OW33B8x5eudBmct2ynE0E1f20h
         obYRzyHLSeY7N46FZiLIjGjiRfmMcaYQ4kEPppgUO8Y35TSz6D+pNJbdqaTlIm18OOLY
         KncOrP50kMZO2cWClpS+31x0UrMPb2gQeJu1osn2t+V7mLNBfBfu8jBA0YPeeAZqsHNl
         nIuLSY3Xo9cKHzec8g6GAmIZnDW7k5qzsH7IY+hkJlJMw063+yRr26T78emSsVRiURTs
         QDIw==
X-Gm-Message-State: AOJu0YyYKCePNyP8su6no+5mKM/8SfvT9dbY71iGBKrocXjc9Ck07vD4
	m2aUuPSVWfkVY3Mqd8PU+l5Zuurhsl0KCh2fDRMI9MoaiFdPEbyl1LqAGYBkehPr4vMnCvGxxM6
	WmuBB22bjkt6DCYPjPj9AIVUKj9dxghmDMaySaFLZQVhD41K7KYo=
X-Google-Smtp-Source: AGHT+IGqZCev2MG5Q8JkEla6XnkHB9BCdIIcT2CuNCHH1mZTpJph09EL56NkT31kg6/1Cs2ZaNVZPxsUZA2FTqtK6qw=
X-Received: by 2002:ac2:4342:0:b0:52c:989a:a786 with SMTP id
 2adb3069b0e04-52ca6e9a776mr5897426e87.69.1718672572360; Mon, 17 Jun 2024
 18:02:52 -0700 (PDT)
MIME-Version: 1.0
References: <DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0@lists.ettus.com> <4e9892d2-863e-4464-87ab-36d23df2dc19@gmail.com>
In-Reply-To: <4e9892d2-863e-4464-87ab-36d23df2dc19@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 17 Jun 2024 20:02:41 -0500
Message-ID: <CAFche=jVO9XT1Ab7++sFYkFoVDQo0mmrt1ZMOAVw9zm4-owzgA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BKU3YQFXPYDA2NVYIRVDCJRNSCSZYNPU
X-Message-ID-Hash: BKU3YQFXPYDA2NVYIRVDCJRNSCSZYNPU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKU3YQFXPYDA2NVYIRVDCJRNSCSZYNPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0647028290617426016=="

--===============0647028290617426016==
Content-Type: multipart/alternative; boundary="0000000000002945d5061b1fa435"

--0000000000002945d5061b1fa435
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

8192 bytes is the maximum frame size supported by the FPGA, but that's
including all headers. So the actual RF data payload that you can send is
less than this, typically closer to 8000 bytes. I often set my SPP to 1996
out of habit since this is usually a pretty safe number with jumbo frames.
The driver attempts to determine the biggest MTU supported automatically.

Thanks,

Wade




On Mon, Jun 17, 2024, 7:47=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail.=
com>
wrote:

> On 17/06/2024 20:29, cjohnson@serranosystems.com wrote:
> >
> > It is the switch that is internal to you hardware on USRP-2974.
> >
> > You can see the switch below (from your documentation). I=E2=80=99m sen=
ding
> > from the SBC (Single board computer) shown in the diagram.
> >
> >
> > https://kb.ettus.com/File:2974_blk_dia_hiLevel_v01.png
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> Interestingly enough, I just tried a ping -s 8100 on my X310, and then a
> ping -s 8105, and the 8105 failed.  Looking at
>    previous log messages for my application it also claims 8000 byte
> maximum frame size, so this may be a limitation
>    in the PHY/MAC implementation in the X310 FPGA.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002945d5061b1fa435
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi all,<div dir=3D"auto"><br><div dir=3D"auto">8192 bytes=
 is the maximum frame size supported by the FPGA, but that&#39;s including =
all headers. So the actual RF data payload that you can send is less than t=
his, typically closer to 8000 bytes. I often set my SPP to 1996 out of habi=
t since this is usually a pretty safe number with jumbo frames. The driver =
attempts to determine the biggest MTU supported automatically.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Wade<br><div dir=3D"auto"><div dir=3D"auto"><div dir=
=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D=
"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"au=
to"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"=
><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><d=
iv dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><br><=
div dir=3D"auto"><br><div dir=3D"auto"><div dir=3D"auto"><br></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Jun 17, 2024, 7:47=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">patchvon=
braun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 1=
7/06/2024 20:29, <a href=3D"mailto:cjohnson@serranosystems.com" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">cjohnson@serranosystems.com</a> wrote:=
<br>
&gt;<br>
&gt; It is the switch that is internal to you hardware on USRP-2974.<br>
&gt;<br>
&gt; You can see the switch below (from your documentation). I=E2=80=99m se=
nding <br>
&gt; from the SBC (Single board computer) shown in the diagram.<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"https://kb.ettus.com/File:2974_blk_dia_hiLevel_v01.png" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://kb.ettus.co=
m/File:2974_blk_dia_hiLevel_v01.png</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.c=
om</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-le=
ave@lists.ettus.com</a><br>
Interestingly enough, I just tried a ping -s 8100 on my X310, and then a <b=
r>
ping -s 8105, and the 8105 failed.=C2=A0 Looking at<br>
=C2=A0=C2=A0 previous log messages for my application it also claims 8000 b=
yte <br>
maximum frame size, so this may be a limitation<br>
=C2=A0=C2=A0 in the PHY/MAC implementation in the X310 FPGA.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div>

--0000000000002945d5061b1fa435--

--===============0647028290617426016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0647028290617426016==--
