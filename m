Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E8948DB3A
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 17:05:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDDC5384B22
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 11:05:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="0ZUPSnBG";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 448143847EA
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 11:04:44 -0500 (EST)
Received: by mail-yb1-f173.google.com with SMTP id v186so16403460ybg.1
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 08:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4HJGyHgX07//ZsSATTjUfgq3Z2CPufxN5j4ZT3fxOF8=;
        b=0ZUPSnBGZ4HOGAb3kmW8gvzKxb42thbbmuSylso0vxJT1zzfxhKjjuHJTZirnj3MTZ
         +8UmZrcwJvhWf6iOOZFNiO0TEcwff6OjAU4qgJdVP7pPEgsFmxTHUPQDNujElTepDEE1
         iETr237RmwJg2+aedK7ZwFO9TFF5u/ycg/c5b4fRnaZroPdAcacD2R2W/GA445yzKt3C
         fOvl1t4QfjHbwa0IRu3KmPwMjJUSKG9csMp0rEOCwq7wuWJbJhB9r+/qW4PWmHui1fn2
         K/LyK+G25gvgWBs+zJENXLL2IrBRBDUqI1C9qeECdiWY8Ua9vqjW0j5rBTggdXvyht2i
         dNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4HJGyHgX07//ZsSATTjUfgq3Z2CPufxN5j4ZT3fxOF8=;
        b=LRCueqOgdXTg9rre/yoaGjskeW4b+T0BKXF0BfMZrCwyHQmrZ8HZKdhiHxANT8p12V
         zuXDz7pVJbGgpt8nPY9MmKpWUuL5E62vOfuGXYrCj7UWzNFsAb2ZdvF6YmxtTWS7doaE
         GNIZxSNOohlTyYX8r5O4SD9BSS0g5GBI4XhHVuJkBo74At3smxSGObvFM5DKLhUNDoUd
         YAYs0+en3LWsuzIgLEwyA6vTIA7+Lt/Qo4mTgU9J4wWCqByjDRhsLxCT/odie6vjuzNr
         6uUtR8sLpr+lez8WQZVjdz2nvKTG9usjvwJisOu+AsZwlK+EHI5iC9vGe16gsXizXp8p
         Wyvw==
X-Gm-Message-State: AOAM532KE82N6ylsA4c/bTok4e4FxJ/0hfi7zCSPcy+F/onMxhOVhaFK
	kJd2oXfpQ4PDhmeJUQlk3kYjGu3i1Z1d7HuUWqoBJKwBrsFHKg==
X-Google-Smtp-Source: ABdhPJwu9ovjTHG2fAu6uMG9QS5kpC+mWgl7qoy4AK1dgy7cLe+Ilu6NIoDF+nYX1HRTIixs268lVY3S2MiI/7OdrEI=
X-Received: by 2002:a25:55c4:: with SMTP id j187mr6291777ybb.653.1642089883623;
 Thu, 13 Jan 2022 08:04:43 -0800 (PST)
MIME-Version: 1.0
References: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr>
In-Reply-To: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Jan 2022 10:04:28 -0600
Message-ID: <CAFche=gD4oH_m1FXzHPc8E5sgQNOZC_MGV4PoJvi+rX1Sf9wHQ@mail.gmail.com>
To: Camille Moniere <camille.moniere@univ-ubs.fr>
Message-ID-Hash: KU3ES5Q46DHQ3UMBRBJIVO5BU3APSCY5
X-Message-ID-Hash: KU3ES5Q46DHQ3UMBRBJIVO5BU3APSCY5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fir Filter RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KU3ES5Q46DHQ3UMBRBJIVO5BU3APSCY5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5988581128162452395=="

--===============5988581128162452395==
Content-Type: multipart/alternative; boundary="00000000000033f76405d578d890"

--00000000000033f76405d578d890
Content-Type: text/plain; charset="UTF-8"

Hi Camille,

Maybe you could share your RFNoC YML file and someone could take a look?
There might be something wrong there.

Wade

On Thu, Jan 13, 2022 at 8:32 AM Camille Moniere <camille.moniere@univ-ubs.fr>
wrote:

> Hello everyone,
>
> I unsuccessfully try to use the FIR Filter RFNoC block in reception, in
> an USRP X310 with a UBX-160 daughterboard on-board.
> I have tested several topology for the custom image (radio0 - > ddc0 ->
> fir0 -> ep0 || radio0 -> ddc0 -> ep0 + ep1 -> fir0 + fir0 -> ep1, for
> example),
> with several parameter for the filter (With or without re-loadable
> coefficients, with or without embedded DSP registers, 21 coef' instead
> of 41 ...) but it ultimately
> always fails the same way.
> When the FIR is used, I can't retrieve any data. I got an Overflow
> error, without receiving any samples. Sometimes, I even got a "Late
> Command" error, even when using  RFNoC in C++
> (graph committed immediately before the stream now stream_cmd).
>
> For the record, the center frequency is 433 MHz for a sampling rate of 1
> Msps.
>
> I assumed the filter output one complex sample (sc16) for each new input
> (sc16 too). Am I wrong? Or is there specific setup I have forgotten?
> Has someone successfully used this block, and can provide an example or
> tutorial?
>
> Regards,
>
> Camille
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000033f76405d578d890
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Camille,</div><div><br></div><div>Maybe you could =
share your RFNoC YML file and someone could take a look? There might be som=
ething wrong there.</div><div><br></div><div>Wade<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 13, =
2022 at 8:32 AM Camille Moniere &lt;<a href=3D"mailto:camille.moniere@univ-=
ubs.fr">camille.moniere@univ-ubs.fr</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hello everyone,<br>
<br>
I unsuccessfully try to use the FIR Filter RFNoC block in reception, in=C2=
=A0 <br>
an USRP X310 with a UBX-160 daughterboard on-board.<br>
I have tested several topology for the custom image (radio0 - &gt; ddc0 -&g=
t;=C2=A0 <br>
fir0 -&gt; ep0 || radio0 -&gt; ddc0 -&gt; ep0 + ep1 -&gt; fir0 + fir0 -&gt;=
 ep1, for=C2=A0 <br>
example),<br>
with several parameter for the filter (With or without re-loadable=C2=A0 <b=
r>
coefficients, with or without embedded DSP registers, 21 coef&#39; instead=
=C2=A0 <br>
of 41 ...) but it ultimately<br>
always fails the same way.<br>
When the FIR is used, I can&#39;t retrieve any data. I got an Overflow=C2=
=A0 <br>
error, without receiving any samples. Sometimes, I even got a &quot;Late=C2=
=A0 <br>
Command&quot; error, even when using=C2=A0 RFNoC in C++<br>
(graph committed immediately before the stream now stream_cmd).<br>
<br>
For the record, the center frequency is 433 MHz for a sampling rate of 1=C2=
=A0 <br>
Msps.<br>
<br>
I assumed the filter output one complex sample (sc16) for each new input=C2=
=A0 <br>
(sc16 too). Am I wrong? Or is there specific setup I have forgotten?<br>
Has someone successfully used this block, and can provide an example or=C2=
=A0 <br>
tutorial?<br>
<br>
Regards,<br>
<br>
Camille<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000033f76405d578d890--

--===============5988581128162452395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5988581128162452395==--
