Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD9F60D883
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 02:37:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DCE4383BA8
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 20:37:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666744650; bh=EbqI55XeQohMs79nwU+a9F5kMfr/AiKUXDGDkN29VU4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NMJL+WldDGh7+B4QdVEwY2qazJJGZuUsAYjfXlbRajNd+L4kfRrLjNv0hFHNBjHiR
	 Ed+McLRNwmd/6uumOJVBwxr6h43zU4BF7X/ia5HYPmuu6yLk0NArfMvROgWzOjA7ni
	 ypN2IKwZn2jcWLbyaxQ33ljjqJMlfsqPGiRWFKIhXBboFMX8MRj9w11AbUGlVNJb1N
	 b3/X5BuXJX/oebuNBogMSwwJYdSWhVG4J1hOYHhV2A6G4tuAig9VUTo8lg9CP8LrU6
	 RIdRmzZjDz3OiAi9bNNq820PapU6Z46Lq23tX+wykUye0TARzjRbEPDEsHDzbD0Qce
	 6pwZNUH9kJvUA==
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id DD221380DE5
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 20:36:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EUxQDsCD";
	dkim-atps=neutral
Received: by mail-oi1-f174.google.com with SMTP id w196so16638041oiw.8
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 17:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JgvAMO+ZHmo+DTx9oh1sQXqfjdaah9Z6JJUC/cSYh0s=;
        b=EUxQDsCDSnpCcbt+Yqigdvde3ArzdqSvCOKMPCOdxQE0VtpX28egcWz+tK0dVSYgpC
         NMa99/D/ftpIMaSkXjvCdYgYhJkfqn8bPN/0N6kjIh9X6q9+qe5NGlfK9ppLs2h+USvO
         CwtIXeGMRh8TIn2Tk8xbdfSNqiZipZX1PkijqPvkwBIJHgCoSFgUrdvJgqhNimfa+SpA
         47j6c0XRDILZqHcWR/503FTSCv5sfPzf3XFCszgt7Kntr8Yc0vFv1kgfVzaCIpzbp1pl
         TlyDif4ZJHGHbVSkaRotshR3Gw6PJf6fAWZqvVB9dVf303jhNaD6WI5eOtFWn3QZLta1
         XeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JgvAMO+ZHmo+DTx9oh1sQXqfjdaah9Z6JJUC/cSYh0s=;
        b=lC+tqQdT8zCmnA9g0P1aCZhjUaidiLeWzsGy/+/oYxNevSzTr7vMreh5u+/MYg/ks/
         enSX45qrC24wDR/W1JblGNzjO7PfW6hk4DQqAcjOID3aD2fuKpUgNDv4+MYbkXOUBOrl
         hPrc71lcH9xEiZbd7EFEir+sGMfXhfVAnu30K0PKqc1zvuIVZ9FZNpnys4JIL2dDxAB4
         zWnk6Hag1YU0mCAcynL0uHs2PsmMu22mXKK/2dpKeqsEJ4lFbsnOdruXkNdpqSaclao1
         FB8Nz0O4hOU6SMZ9E6vvE/nTvikAnL1KCBkqBxwzkEJ+2ucpatC8tnycZJglc1f0tR2y
         D1eg==
X-Gm-Message-State: ACrzQf2Nuoz6vbV/dmmqeuyiwhOHY81dmvy9cfTkIh3TuyTJ2SEWMLgL
	KgMdRiHnWe2z/fkt6NWtc4JD+xdCUfBVlkXUR/g=
X-Google-Smtp-Source: AMsMyM5vvg3cWmRZnExkVG/KkMLzX2yM/p2lbqx9lv1E7EekyGx1I/lTzXOIlrr9a+384nAXx7Y7LaHBnnMq8WOQFEk=
X-Received: by 2002:a05:6808:1486:b0:355:3cb7:b51 with SMTP id
 e6-20020a056808148600b003553cb70b51mr526997oiw.19.1666744582933; Tue, 25 Oct
 2022 17:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
In-Reply-To: <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 25 Oct 2022 20:36:11 -0400
Message-ID: <CAEXYVK4id_J-D+2mGHUhOc1QXkwtZNgxU=5vG3Q9YHmgM0SPeA@mail.gmail.com>
To: Wan Liu <wan.liu@ettus.com>
Message-ID-Hash: QRXMAW2BUOBFPPUN6N7S5235APBBCF72
X-Message-ID-Hash: QRXMAW2BUOBFPPUN6N7S5235APBBCF72
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QRXMAW2BUOBFPPUN6N7S5235APBBCF72/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5165744459847038871=="

--===============5165744459847038871==
Content-Type: multipart/alternative; boundary="000000000000cc123305ebe5361f"

--000000000000cc123305ebe5361f
Content-Type: text/plain; charset="UTF-8"

Hey Wan,

Thanks for the quick response.

On Tue, Oct 25, 2022 at 7:59 PM Wan Liu <wan.liu@ettus.com> wrote:

> Hello Brian,
>
> I'll see if  I can reproduce with my TwinRX. Please provide some more
> information to help me reproduce...
>
> 1. Center Frequency of fixed channel 0
>

I tested at 915 MHz, but also 400 MHz.  It seems to show up wherever I
happen to tune the fixed channel.


> 2. Tuning range on channel 1
>

I have tried with just 2 frequencies (200 MHz, 500 MHz) or the full
frequency range.  Tuning the full frequency range seems to provide more
noise in different areas of the spectrum.


> 3. What tuning rate have you tried and what's the threshold between a
> clean spectrum and a bad one?
>

I always get bad spectrum regardless of my dwell time on any particular
frequency.  The "max hold" will always show approximately the same spectral
image.  The "average" spectrum will obviously be quieter if I dwell for
longer.


> 4. Please share screenshots of what you are seeing
>

This Google Drive folder has a 10 ms capture of what I see often.  It's
only one particular case, but you can see what is going on.  I have
included time vs. freq, amplitude vs. freq, and amplitude vs. time plots.


https://drive.google.com/drive/folders/1lm6WiH39XV-Hwl42Myi3DiSiN170D92i?usp=sharing


> 5. Please share uhd_usrp_probe output so I know your serial, revision, uhd
> version, etc
>

Included in the drive as uhd_probe.txt.


> 6. Can you reproduce this problem when it's two channels on different
> daughterboards? In other words, ch 0 and ch 1 on the same TwinRX, and ch 0
> and ch 1 across each DB slot.
>

I am unsure exactly what you're asking for here.  My current setup has a
UBX in DB0 and a TwinRX in DB1.  If you can be more specific about what you
want me to try, I can give it a shot?

I will note 2 more observations I made:

  - When trying to read the lo_locked sensor continuously, generating SPI
traffic I presume going to the PLLs, I get clean spectrum.  This suggests
to me that digital noise isn't the culprit here.
  - The IQ file I saved and looked at (which generated the attached
figures) shows some analog PLL-style locking for around 10 ms of time, then
goes away.


>
>
> There's several switchable routes before and after each stage LO going
> across channels, so it's possible there are some isolation problems between
> channels. My first thought is also to remove LO sharing cables, but as you
> said, it doesn't improve.
>
> Maybe switching the switches that are not used might help give better
> isolation. From schematic, if channel 1 uses its own LO, then only switch
> 16 is needed, and switch 14 which routes LO 1 to the sister channel 2 isn't
> used. So I'm wondering if the state of switch 14 makes a difference in
> terms of isolation. I'd have to check the software to see if you can
> independently flip these switches, and if it's recommended, to test this
> hypothesis. I will also check internally if similar issue is reported and
> get back to you.
>

Let me know if there's anything else I can provide to try to help out.  I
have a very long IQ capture I took (both inputs terminated, recording fixed
channel while retuning the other channel) but it's obviously too big to
share here.

Thanks,
Brian

--000000000000cc123305ebe5361f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey Wan,<br><br>Thanks for the quick resp=
onse.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Oct 25, 2022 at 7:59 PM Wan Liu &lt;<a href=3D"mailto:wan.=
liu@ettus.com">wan.liu@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Brian,<br><br>=
</div><div>I&#39;ll see if=C2=A0 I can reproduce with my TwinRX. Please pro=
vide some more information to help me reproduce...<br><br></div><div>1. Cen=
ter Frequency of fixed channel 0<br></div></div></blockquote><div><br></div=
><div><div>I tested at 915 MHz, but also 400 MHz.=C2=A0 It seems to show up=
 wherever=C2=A0I happen to tune the fixed channel.</div></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
></div><div>2. Tuning range on channel 1<br></div></div></blockquote><div><=
br></div><div><div>I have tried with just 2 frequencies (200 MHz, 500 MHz) =
or the full frequency range.=C2=A0 Tuning the full frequency=C2=A0range see=
ms to provide more noise in different areas of the spectrum.</div></div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div></div><div>3. What tuning rate have you tried and what&#39;s the=
 threshold between a clean spectrum and a bad one?<br></div></div></blockqu=
ote><div><br></div><div>I always get bad spectrum regardless of my dwell ti=
me on any particular frequency.=C2=A0 The &quot;max hold&quot; will always =
show approximately the same spectral image.=C2=A0 The &quot;average&quot; s=
pectrum will obviously be quieter if I dwell for longer.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div></div><div>4. Please share screenshots of what you are seeing<br></di=
v></div></blockquote><div><br></div><div>This Google Drive folder has a 10 =
ms capture of what I see often.=C2=A0 It&#39;s only one particular case, bu=
t you can see what is going on.=C2=A0 I have included time vs. freq, amplit=
ude vs. freq, and amplitude vs. time plots.<br></div><div><br></div><div>=
=C2=A0=C2=A0<a href=3D"https://drive.google.com/drive/folders/1lm6WiH39XV-H=
wl42Myi3DiSiN170D92i?usp=3Dsharing">https://drive.google.com/drive/folders/=
1lm6WiH39XV-Hwl42Myi3DiSiN170D92i?usp=3Dsharing</a></div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></di=
v><div>5. Please share uhd_usrp_probe output so I know your serial, revisio=
n, uhd version, etc</div></div></blockquote><div><br></div><div>Included in=
 the drive as uhd_probe.txt.</div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>6. Can you reproduce this p=
roblem when it&#39;s two channels on different daughterboards? In other wor=
ds, ch 0 and ch 1 on the same TwinRX, and ch 0 and ch 1 across each DB slot=
.</div></div></blockquote><div><br></div><div>I am unsure exactly what you&=
#39;re asking for here.=C2=A0 My current setup has a UBX in DB0 and a TwinR=
X in DB1.=C2=A0 If you can be more specific about what you want me to try, =
I can give it a shot?</div><div><br></div><div>I will note 2 more observati=
ons I made:</div><div><br></div><div>=C2=A0 - When trying to read the lo_lo=
cked sensor continuously, generating SPI traffic I presume going to the PLL=
s, I get clean spectrum.=C2=A0 This suggests to me that digital noise isn&#=
39;t the culprit here.</div><div>=C2=A0 - The IQ file I saved and looked at=
 (which generated the attached figures) shows some analog PLL-style locking=
 for around 10 ms of time, then goes away.</div><div><span style=3D"color:r=
gb(80,0,80)">=C2=A0</span>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div> <br></div><div><br></div><div>There&#39=
;s several switchable routes before and after each stage LO going across ch=
annels, so it&#39;s possible there are some isolation problems between chan=
nels. My first thought is also to remove LO sharing cables, but as you said=
, it doesn&#39;t improve. <br></div><div><br></div><div>Maybe switching the=
 switches that are not used might help give better isolation. From schemati=
c, if channel 1 uses its own LO, then only switch 16 is needed, and switch =
14 which routes LO 1 to the sister channel 2 isn&#39;t used. So I&#39;m won=
dering if the state of switch 14 makes a difference in terms of isolation. =
I&#39;d have to check the software to see if you can independently flip the=
se switches, and if it&#39;s recommended, to test this hypothesis. I will a=
lso check internally if similar issue is reported and get back to you.</div=
></div></blockquote><div><br></div><div>Let me know if there&#39;s anything=
 else I can provide to try to help out.=C2=A0 I have a very long IQ capture=
 I took (both inputs terminated, recording fixed channel while retuning the=
 other channel) but it&#39;s obviously too big to share here.<br><br>Thanks=
,<br>Brian</div></div></div>

--000000000000cc123305ebe5361f--

--===============5165744459847038871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5165744459847038871==--
