Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8515D563503
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 16:22:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70C5F38467B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 10:22:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656685377; bh=wpRtlNJI6X3dt+y38STRfqwhY64xdf66e7fp1Vf7Ry4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M5boWpziHyTl01TxlXrNEFsl0QYb3mV3UlR2mxKkqx53HJpoGWKZLjTgFl80NQ3VD
	 7254NO3e219JfqUcp8DZVUlxvdK/eSz46JfzQGarMWkD6jnFw+fnMhpodjAV/JWxZB
	 am7zQAoeKxPe99lPxMwg3krd+zvpjQXfUiD2JnLazfhBzWwQcJ8AcbnIZqsCAXUK1J
	 boxOURq1h4KcrZA62HJ8u5b67IjH2cgYzATeLaliLWCHZ4SDKJjWTwmXV5yDUcnwfl
	 rJtllAaskbR+KnQdZK55bPo7MuJrylhq2HqAm6UpbKCe2xk/Y10Fx7Hh6Wc/AVpjpR
	 ETOt39GF8lTwQ==
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 9FCB73842FA
	for <usrp-users@lists.ettus.com>; Fri,  1 Jul 2022 10:19:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="yqHCffDs";
	dkim-atps=neutral
Received: by mail-pg1-f177.google.com with SMTP id v126so2510241pgv.11
        for <usrp-users@lists.ettus.com>; Fri, 01 Jul 2022 07:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wKRtYJrv/Buz0rPurE1i0eg3qSdDWI+MyC5q2DFvtOk=;
        b=yqHCffDsjaMhjx2ogwtbnwzbiwEUi2/w5HgiAowaunxoAcggEehAi7U09JQQatIR7z
         oJncbmrBEV0KjFANrBDWBOf0nHM0Vox2/gslFqgn3S3cWwHspA+qOAZoyhcaczY6dpsg
         E9FNqf0/v8Wu2NmDydjNS+V22Ycl3K7EGjHySTslZ71NPW/v23eXoKaqdRbF77+Oz2Cl
         mrwvmlAfgvaFUrb1HRUJWWCtNTwXtFfb4vy24kUQDr/PlVDJO1tWhEGWrb7FPKThYzno
         C1mgYUuh8bTIZvuXi59UP5QcnpvJH1EIMH+7iEtIIPN4n/tdKl58n8K6zwrFx5SwRzYZ
         FiPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wKRtYJrv/Buz0rPurE1i0eg3qSdDWI+MyC5q2DFvtOk=;
        b=IRN8c0UZOCp/N+N9v4MaGLIlobkzFbKDzm46O4OGLgy5gJ3K5T8WCQNHQAzBbdiiT9
         iHYxoazUdgurEG9e0c9DmKUNg0bm1jDal32/6npDPEdGue/SrQP5QcmXwozMC/tH+Mzu
         mVZFdMLzx6VtcTjG+aO1rJVwPTcrKSB3IQ5bQmuxPGIf3qogNd9nV0K/pl7a9WfENOaT
         ZnOS9Rgv7h+M1eGyyHGD3t7f1C6bLYxfZsqRpXm8rn8SU74xj5Ep+00rn7ldDR0Bt20q
         K2qYJlSbh5dc8xndhMlqMj9cfgs8gySFFVejmIXo+sPA6WQ/W2AI1lWFrpue+Ct4DeFY
         QCEQ==
X-Gm-Message-State: AJIora9KoYCyiI/RIVcWhZjK9jO62HYeHG9DA7kAWbxnV83sZyaT+Zg2
	C2a8SQ2E7TNButhK7Ul70CFjLpk4jOdqmS7ZH1n0aVjO
X-Google-Smtp-Source: AGRyM1thgnPSPHxr3GRv7ptQVYIVIh5GlRwnfOSJuseZoJkpaFp5EdDW4KDIsHsxmPo0mqrMkGy6j5wZj7x2Ysjh6tc=
X-Received: by 2002:aa7:861a:0:b0:528:3f68:553 with SMTP id
 p26-20020aa7861a000000b005283f680553mr787835pfn.9.1656685193468; Fri, 01 Jul
 2022 07:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR03MB67952B33C9B89FB9014E9348B1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
In-Reply-To: <SJ0PR03MB67952B33C9B89FB9014E9348B1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 1 Jul 2022 09:19:37 -0500
Message-ID: <CAFche=ig=a8wNr2Mptnszf3OPkgbzWwEV4Sxa0yzjJNjo59Uqg@mail.gmail.com>
To: "Mattingly, Rylee" <rmattingly@ou.edu>
Message-ID-Hash: CY3SR3WWKGB7LFFLVUR24RC472VTSJLW
X-Message-ID-Hash: CY3SR3WWKGB7LFFLVUR24RC472VTSJLW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_chdr Clock on X3xx Radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CY3SR3WWKGB7LFFLVUR24RC472VTSJLW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6245588056953999446=="

--===============6245588056953999446==
Content-Type: multipart/alternative; boundary="00000000000076330b05e2bf1472"

--00000000000076330b05e2bf1472
Content-Type: text/plain; charset="UTF-8"

Hi Rylee,

Some blocks do use NIPC = 1, but those blocks need to use a faster clock
for the internal processing. For example, on X310, the DDC and DUC use a
separate CE clock that is connected to 214.286 MHz. The radio block uses
radio_clk for this purpose. For the parts of the logic that use the 187.5
MHz clock, we use a 64-bit bus that holds 2 samples per cycle (NIPC = 2).
The numbers vary somewhat between products and blocks, but that's the
general idea.

Wade

On Fri, Jul 1, 2022 at 8:55 AM Mattingly, Rylee <rmattingly@ou.edu> wrote:

> Hello all,
>
>
>
> I am looking at the RFNoC FAQ page
> <https://kb.ettus.com/RFNoC_Frequently_Asked_Questions> and it lists the
> rfnoc_chdr clock as 187.5 MHz. Now this is plenty fast to pipe around
> packets and sequential headers for the 184.32 MS/s sample rate but how does
> this support the 200 MHz master clock/200MS/s sample rate?
>
>
>
> This seems like a NIPC > 1 would be needed, but my understanding is that
> all blocks use NIPC = 1 by default.
>
>
>
> Thank you,
>
>
>
> Rylee Mattingly
>
> The University of Oklahoma
>
> Graduate Research Assistant
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000076330b05e2bf1472
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rylee,</div><div><br></div><div>Some blocks do use=
 NIPC =3D 1, but those blocks need to use a faster clock for the internal p=
rocessing. For example, on X310, the DDC and DUC use a separate CE clock th=
at is connected to=20
214.286 MHz. The radio block uses radio_clk for this purpose. For the parts=
 of the logic that use the 187.5 MHz clock, we use a 64-bit bus that holds =
2 samples per cycle (NIPC =3D 2). The numbers vary somewhat between product=
s and blocks, but that&#39;s the general idea.<br></div><div><br></div><div=
>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jul 1, 2022 at 8:55 AM Mattingly, Rylee &lt;<a href=
=3D"mailto:rmattingly@ou.edu">rmattingly@ou.edu</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_-2288582016895997489WordSection1">
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">Hello all,<u></u><u></u></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">I am looking at the
<a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions" title=3D"=
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions" target=3D"_blank">
RFNoC FAQ page</a> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this=
 is plenty fast to pipe around packets and sequential headers for the 184.3=
2 MS/s sample rate but how does this support the 200 MHz master clock/200MS=
/s sample rate?=C2=A0
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">This seems like a NIPC &gt; 1 wo=
uld be needed, but my understanding is that all blocks use NIPC =3D 1 by de=
fault.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">Thank you,<u></u><u></u></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">Rylee Mattingly<u></u><u></u></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">The University of Oklahoma<u></u=
><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black">Graduate Research Assistant<u></=
u><u></u></span></p>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000076330b05e2bf1472--

--===============6245588056953999446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6245588056953999446==--
