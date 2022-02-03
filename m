Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCBE4A90B9
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 23:36:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95772385AD5
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 17:36:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="gj/ALChF";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 15AB83856B3
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 17:35:59 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id m6so13374183ybc.9
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 14:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8dU3UMQLtXUNgbGojsgp2y8lcng1ayqzu1KteMA39Ak=;
        b=gj/ALChFm5Gdei3RQ/SBwz3QTra4XAGR36MP10wmofsqmSQyYcgUCO+yAQJlEBi0H6
         ypsI2VvQxrzUtJQURy8bqs6OnRJQpcrPVhRAtOTrWLxLBmzPl9cDmk2tY5u0u4nMEc9G
         B+a7eTQ6Tv4h02V2cxdlsCUYpJpOs8wOMCMbnNnxOgMGnBnN7Ap7C9Vzh8l3KdOy2iQb
         eFy0v5TkAz6FTgDGECyr0K4cUsJ0OdCNIT8ON8PLbjuDjlkE3+Qdh9aPJn3F4cpHj1yG
         qR5AoSi1pJunrEQXyyHrIiFDBZgzjZlAkKjEJMdazPeqPcVQ1X1mcDaOHZkGyspOOpxq
         4AsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8dU3UMQLtXUNgbGojsgp2y8lcng1ayqzu1KteMA39Ak=;
        b=hfqjHmWngKwhV7GOVR8mNvBznlw0UO+ZtCNvBye5Ehke8kWmh/DjiOK7/V5ydiUQId
         jmOVDyGMY2CZ5QC76IEWyI91B1wPOhpa3WmU6/EHrUgr6QfffanpHlX7MwwzfPTPkhdY
         4E+GeajJdwltFyiLWgL4C4hgZqWgDaBGrFAnFMe1H+5FauBfS8z/1TdE+Cl6h4NuTTD0
         rkaWTdSZROK+ff4O2YANlAMqJH8OglrY7H66gBi4Y2lKvxn5Hf2Zevj79x2u690sSgIz
         mKRXDO1/Zcdx4NbSn/EvEQpgH8zL3tmZCNh7joHCpiLK1V3e509/Vk6lzHEZc8wHJuiN
         z7/Q==
X-Gm-Message-State: AOAM533kaSW1L4cGsY/LG8XJ8yLmWz7rFIkQFpfFIwpdHpfw+Jp9A6EH
	nSVx2CD/hjoVlWnR5mgHW2V5Ysg1Qh1bVSZWPXUz/Mhoak/OoQ==
X-Google-Smtp-Source: ABdhPJx981wvHu6imuFZMYoWK8lQn+3rr3IPAh2kQ+O5odl4i9Ha1X0A+iKUM/YF9JSY8CLM9KL2piXpFc7rThOcqy8=
X-Received: by 2002:a81:a4d:: with SMTP id 74mr261563ywk.210.1643927759004;
 Thu, 03 Feb 2022 14:35:59 -0800 (PST)
MIME-Version: 1.0
References: <BN0P110MB167582CB71227F7F71D2E4B7B7289@BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB167582CB71227F7F71D2E4B7B7289@BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 3 Feb 2022 17:35:48 -0500
Message-ID: <CAB__hTQLcFH0WSouSzW6Q5b+2uN=cLR4R7njUVPv7FB8Kz4dCg@mail.gmail.com>
To: David Raeman <david@synopticengineering.com>
Message-ID-Hash: PYVHHQFIH36MYHTKA2J6FMDRMVOQC4AQ
X-Message-ID-Hash: PYVHHQFIH36MYHTKA2J6FMDRMVOQC4AQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320: external ref clock with internal gpsdo timing source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYVHHQFIH36MYHTKA2J6FMDRMVOQC4AQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8381735876791013344=="

--===============8381735876791013344==
Content-Type: multipart/alternative; boundary="0000000000001ceb7405d724c24e"

--0000000000001ceb7405d724c24e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 3, 2022 at 5:02 PM David Raeman <david@synopticengineering.com>
wrote:

>
> I=E2=80=99m working with an N320 and UHD 4.1, and I plan to use an extern=
al
> reference clock (a 10MHz OCXO for reasons of RF phase stability) and the
> radio=E2=80=99s internal GPSDO for timing (to synchronize capture start t=
imes
> across radios). I found that =E2=80=9Cclock_source=3Dexternal,time_source=
=3Dgpsdo=E2=80=9D is
> not a supported sync_source combination. Taking a quick glance at the N32=
0
> schematics, I=E2=80=99m speculating that GPS-synced timing is also depend=
ent on
> FPGA-REFCLK being slaved to the GPSDO, and not just the PPS, is that righ=
t?
> Is there any viable way to accomplish the setup I described?
>
>
>
> It=E2=80=99s also not ideal how the set_clock_source/set_time_source API =
calls
> behave in the case. I had originally been calling
> set_clock_source(=E2=80=9Cexternal=E2=80=9D) followed by set_time_source(=
=E2=80=9Cgpsdo=E2=80=9D), which
> both succeed. It took a lot of digging to figure out that the second call
> is silently coercing the ref clock to be gpsdo, without any indication ev=
en
> a debug print statement (in the MPM periph_manager code).
>
>
>
If you could start out with both 10MHz and PPS using GPS signal, set all
clocks to the same time (e.g., zero) at the common PPS, and then switch to
using external ref, it might be possible.  My understanding is that the
only thing the PPS is needed for is setting the common time. In other
words, it's basically a trigger.
Rob

>
>

--0000000000001ceb7405d724c24e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 at 5:02 PM David =
Raeman &lt;<a href=3D"mailto:david@synopticengineering.com">david@synoptice=
ngineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-723938367230733492WordSection1">
<p class=3D"MsoNormal"><br></p>
<p class=3D"MsoNormal">I=E2=80=99m working with an N320 and UHD 4.1, and I =
plan to use an external reference clock (a 10MHz OCXO for reasons of RF pha=
se stability) and the radio=E2=80=99s internal GPSDO for timing (to synchro=
nize capture start times across radios). I found that
 =E2=80=9Cclock_source=3Dexternal,time_source=3Dgpsdo=E2=80=9D is not a sup=
ported sync_source combination. Taking a quick glance at the N320 schematic=
s, I=E2=80=99m speculating that GPS-synced timing is also dependent on FPGA=
-REFCLK being slaved to the GPSDO, and not just the PPS, is
 that right? Is there any viable way to accomplish the setup I described?<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">It=E2=80=99s also not ideal how the set_clock_source=
/set_time_source API calls behave in the case. I had originally been callin=
g set_clock_source(=E2=80=9Cexternal=E2=80=9D) followed by set_time_source(=
=E2=80=9Cgpsdo=E2=80=9D), which both succeed. It took a lot of digging to
 figure out that the second call is silently coercing the ref clock to be g=
psdo, without any indication even a debug print statement (in the MPM perip=
h_manager code).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0</p></div></div></blockquote><div>If yo=
u could start out with both 10MHz and PPS using GPS signal, set all clocks =
to the same time (e.g., zero) at the common PPS, and then switch to using e=
xternal ref, it might be possible.=C2=A0 My understanding is that the only =
thing the PPS is needed for is setting the common time. In other words, it&=
#39;s basically a trigger.=C2=A0</div><div>Rob</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><br>
</blockquote></div></div>

--0000000000001ceb7405d724c24e--

--===============8381735876791013344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8381735876791013344==--
