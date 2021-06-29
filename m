Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3009E3B796B
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 22:34:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDA6F383D55
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 16:34:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SeQqY0+Y";
	dkim-atps=neutral
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 2990F383D2D
	for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 16:33:20 -0400 (EDT)
Received: by mail-pf1-f171.google.com with SMTP id 17so98339pfz.4
        for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 13:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/OGhAHbCaQUrQ1pVhbdsEVfueMkHmOgQnL5O/wmrxQg=;
        b=SeQqY0+Yt6r8KVI8gJaHvptpkS9MFCwvuiUvr/mkO8f98WD+rZLsyuNi9pjDMi43IZ
         o+tsbxQLv9aSJR3vmIRLqSGTSxg2BPoeHVD5DRsaoACCdTQgDPM5y5hKYhMZlcQQNN5q
         fCJ1f7y2RKeIJ8FFMwUD60n38FX0pusKbM8IaL4lEVgIXgyGPN6WIKFTZV9Kr9aqCB+E
         LMaquAvPa0khX4K5Ip0AAJeW3v7UAH4hdoliEgW4WE2sMhnN1htZWxYyF+VeF8DEw8Do
         IKJiBToaXZYE2VHNfDj8F8FKOmWOXNL0UPTyVJpBvTh8VG24/sWFbKRWA3Lt72HFSQSA
         0/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/OGhAHbCaQUrQ1pVhbdsEVfueMkHmOgQnL5O/wmrxQg=;
        b=U4Xf18Zvd100nRCQd/pTMxQFuXqhffE4IL7KwDWhivEJzWpFfJ8jVqyGilOqDxMekI
         El07Ic67+fDIdzr7W/GEWQcB3lI8hj/l1R6W4Ta+uIg59VJctY3N/ZiisnkxmjhxXpWo
         h6h/y38DQlkJ7+QuEj+uOnOi/i1027FoFxbSSblmtIP9lR7LSIs5VqRiSktXtpdoGar6
         +qmWbeB8dvKJJca9uaNjs6E6IRlVS5Mr0hIdUnpZYmxnz/SPN/fUh0q0nyYLSk5gfGXD
         waxnusDczKo6dPvK9hsXtZ31PRImn9kkLjZrYYhvGrXj6pkcAGp5DfhxmJ/YhR5L2Yro
         gSSg==
X-Gm-Message-State: AOAM533bKs7WN4eWsLnv/eJDKVjlC1qPCsslzvKBc3AvJhToFq757CnK
	LjVstdSThhhXZy81hqFFO5YOC1I9MYwPsjGLcXhwG/Myt3Riwg==
X-Google-Smtp-Source: ABdhPJzmGiJbYsdO59BaaaePt/6oVpSqBvUKuXjoQ6eoT9+K6yDRqFVquJ43ZOrsdLFx2fGcq4GpJxJAcr9E0aiwkIU=
X-Received: by 2002:a63:348e:: with SMTP id b136mr30273822pga.382.1624998799428;
 Tue, 29 Jun 2021 13:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <CALEOA2hdgtKUhL5Szt=bSJ8otbcTprT1QwQLUYqFN7wv8CDLLQ@mail.gmail.com>
In-Reply-To: <CALEOA2hdgtKUhL5Szt=bSJ8otbcTprT1QwQLUYqFN7wv8CDLLQ@mail.gmail.com>
From: =?UTF-8?Q?Leandro_Echevarr=C3=ADa?= <leoechevarria@gmail.com>
Date: Tue, 29 Jun 2021 17:33:07 -0300
Message-ID: <CALEOA2gj0V5yw9LxmCj5Anfd+ONq66F4hiYzO7UzHbP153-B8Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: YTFMJPI7XLUZJGCIUC3W4D5ZWEPEEC2L
X-Message-ID-Hash: YTFMJPI7XLUZJGCIUC3W4D5ZWEPEEC2L
X-MailFrom: leoechevarria@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX & RX time synchronization in B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTFMJPI7XLUZJGCIUC3W4D5ZWEPEEC2L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1663070047154757333=="

--===============1663070047154757333==
Content-Type: multipart/alternative; boundary="000000000000334f2605c5ed840f"

--000000000000334f2605c5ed840f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I just found this:

https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#=
Timed_commands_on_AD93xx-based_devices

where it says, among other things:
"Timed commands for TX and RX on AD936x devices are supported, with
caveats:

   - There will be a delay between an absolute time passing and the AD936x
   actually beginning a streaming operation. This delay has been observed t=
o
   be consistent *for streaming*, but other operations like gain setting
   require SPI readback from the RFIC and are non-deterministic.
   - This is to say that a timed streaming command to begin TX and RX at
   the same time, on an AD936x-based device (which is in external loopback)
   should result in a consistent delay between TX and RX down to the sample=
.
   Other RFIC operations like changing gain or tuning LO frequency will not
   have this consistency."

I think this covers my case and answers my question, but please feel free
to add to this.

Regards,

Leo


On Tue, Jun 29, 2021 at 1:28 PM Leandro Echevarr=C3=ADa <leoechevarria@gmai=
l.com>
wrote:

> Hey everybody,
>
> I'm using timed commands to request a waveform to be sent at the same tim=
e
> I'm starting an acquisition, on the same channel, with a loopback connect=
ed
> between TX an RX on a USRP B210 @ 10 MSps. Upon loading the data I acquir=
ed
> and plotting both the sent (reference) and received waveforms together, I
> see the received one appearing about 50 samples later than the reference.=
 I
> see the same offset if I plot the correlation between the two.
>
> If I configure the TX to start around 50 samples earier than the RX, this
> effect is mitigated, but I'd really like to know what's causing this. It
> also seems to be systematic across runs and configurations. Any ideas if
> this is a known hardware or software limitation? Or whether I might be
> missing something when setting the board up?
>
> Thanks and regards,
>
> Leo
>

--000000000000334f2605c5ed840f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I just found this:</div><div><br></div><div><a href=
=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD#Timed_commands_on_AD93xx-based_devices">https://kb.ettus.com/Synchroniz=
ing_USRP_Events_Using_Timed_Commands_in_UHD#Timed_commands_on_AD93xx-based_=
devices</a></div><div><br></div><div>where it says, among other things:</di=
v><div>&quot;Timed commands for TX and RX on AD936x devices are supported, =
with caveats:
<ul><li style=3D"padding-bottom:0.6001em">There will be a delay between an =
absolute time passing and the=20
AD936x actually beginning a streaming operation. This delay has been=20
observed to be consistent <i>for streaming</i>, but other operations like g=
ain setting require SPI readback from the RFIC and are non-deterministic.</=
li><li style=3D"padding-bottom:0.6001em">This is to say that a timed stream=
ing command to begin TX and RX at=20
the same time, on an AD936x-based device (which is in external loopback)
 should result in a consistent delay between TX and RX down to the=20
sample. Other RFIC operations like changing gain or tuning LO frequency=20
will not have this consistency.&quot;</li></ul><div>I think this covers my =
case and answers my question, but please feel free to add to this.</div><di=
v><br></div><div>Regards,</div><div><br></div><div>Leo</div><div><br></div>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Jun 29, 2021 at 1:28 PM Leandro Echevarr=C3=ADa &lt;<a href=
=3D"mailto:leoechevarria@gmail.com">leoechevarria@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Hey everybody,</div><div><br></div><div>I&#39;m using timed commands =
to request a waveform to be sent at the same time I&#39;m starting an acqui=
sition, on the same channel, with a loopback connected between TX an RX on =
a USRP B210 @ 10 MSps. Upon loading the data I acquired and plotting both t=
he sent (reference) and received waveforms together, I see the received one=
 appearing about 50 samples later than the reference. I see the same offset=
 if I plot the correlation between the two.</div><div><br></div><div>If I c=
onfigure the TX to start around 50 samples earier than the RX, this effect =
is mitigated, but I&#39;d really like to know what&#39;s causing this. It a=
lso seems to be systematic across runs and configurations. Any ideas if thi=
s is a known hardware or software limitation? Or whether I might be missing=
 something when setting the board up?<br></div><div><br></div><div>Thanks a=
nd regards,</div><div><br></div><div>Leo</div></div>
</blockquote></div>

--000000000000334f2605c5ed840f--

--===============1663070047154757333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1663070047154757333==--
