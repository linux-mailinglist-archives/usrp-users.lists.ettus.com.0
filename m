Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2655D4C1309
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 13:43:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFD63384B95
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 07:43:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eyqF6eDM";
	dkim-atps=neutral
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C3C53384252
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 07:43:04 -0500 (EST)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-2d07ae0b1c4so208984277b3.11
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 04:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0rDWjp/iLzFPUl9vVYWVm/hjwr61TK1jG1Degq4pUPs=;
        b=eyqF6eDM/X9pMKFhhmf0K7UX6XO6WsH2qJhiQ3T1iHazBXiBAdaZB/ou6xvNPaopz6
         uDHWMzU2l4ID7GtmqpD2GsObtOjdo5zMoj7jbjtw9WTLU8ZjAy+aUZnUqdFuBBuIISMP
         9p4PG0mLUsxTXpp4MwzmJUy4XSxeo9onJr4g8wtIR9lbnAgFzDHNdAE1ee09ykFzsIa6
         gMmyFru33r8iL4Xe0LFQVhsDSNqWd9Rh97YaFFZZ4EETLKKy4lnw0bfkIzQL5qavISHj
         YZMTZcnUX+cLd2EdAJ6JsyyrplOjvDcc5bFCg6/UPAF9blJGsXU1Etgyhqlev8oLyxoy
         4GPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0rDWjp/iLzFPUl9vVYWVm/hjwr61TK1jG1Degq4pUPs=;
        b=sGOVCogBajSCYhzVaFTb3vX7HcMQenp/RASw4jAQrFH4GOzOSZWvyez1GuVaTW7cVv
         7kCtaF9obss+tA6mIglYi/1VXDSJ7jnLnvmofWBaDkABDd3llfuPwcjPVp4PV6a0Ix07
         aofI8UK4wnYph1MSHndsP6lyv7M+QU651nuUZxNIYXPuoPYj10DTU2rATHalAqj2OzMq
         96llMm/IPqIXg0kuvd10F8Eq2d8JFEZgfKnotm6bqWNSWH2XsP2cPBwhgvnQj2h5SwUC
         m+xlcpRF4CGEfpvOyXd1g7Uaf2ArZI4J3jVC57jc1iGbwg8+pRejTrNLVrqL7Wn0lF2R
         L+GA==
X-Gm-Message-State: AOAM532vEHiu2PqOegV02EvU9OnD/rOjrVDEU+1k2C2kspvh4fMpntkc
	E2+YJzhDHwc10DPsQsUO6yHnOohIG/zik06eI04=
X-Google-Smtp-Source: ABdhPJw4FP/Pfi8dBrHC1xsZvuAE/5ET/S0ZPoQ01PhxZ5ENlpRSq4PY+LakqPIGBlzcmQyvbPQ+5u+yLzxMsvF8hoE=
X-Received: by 2002:a81:980c:0:b0:2d1:e9f:69e4 with SMTP id
 p12-20020a81980c000000b002d10e9f69e4mr28553071ywg.363.1645620184100; Wed, 23
 Feb 2022 04:43:04 -0800 (PST)
MIME-Version: 1.0
References: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
 <4876156c-b6b9-9fb7-7e9f-d0c56961d4f0@gmail.com> <CAAC=UJOtVbZ+L_LmRQRtxs1oUWWHODoosoHpx_6s=F-bqmOo1Q@mail.gmail.com>
 <69d0baa5-45f7-44ff-88e3-d0c0a46d381c@gmail.com> <CAAC=UJOKOnQ0W2i9FWoDGcgN8otCV4-43BD7tjtvUoo0AKNtFg@mail.gmail.com>
 <9be7a93d-c746-dcc5-51ec-aa75519b1c24@gmail.com>
In-Reply-To: <9be7a93d-c746-dcc5-51ec-aa75519b1c24@gmail.com>
From: Alvaro Pendas Recondo <apruhd@gmail.com>
Date: Wed, 23 Feb 2022 13:42:56 +0100
Message-ID: <CAAC=UJNuTseRhHFRtLZEMb+nk4DKCBQkfUD7z91SohT8AqqFOw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: E6QETBGES6ZSPA6JBNUY3KQZYAYUG4NE
X-Message-ID-Hash: E6QETBGES6ZSPA6JBNUY3KQZYAYUG4NE
X-MailFrom: apruhd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E6QETBGES6ZSPA6JBNUY3KQZYAYUG4NE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0117318715737835082=="

--===============0117318715737835082==
Content-Type: multipart/alternative; boundary="00000000000082335905d8aeceb6"

--00000000000082335905d8aeceb6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I finally managed to make it work by setting both blocks with "No sync" (in
my first scheme one of them was configured with "Unknown PPS" by accident).
There is still the problem with the decrease of the maximum sampling rate
when doing MIMO with B210. Anyway, in this case I was just doing a simple
characterization of the devices, so I will keep in mind that some problems
may appear when synchronizing multiple B2xx externally. I am also aware
that N210 is the model recommended for that.

Thank you very much for your help.

El mar, 22 feb 2022 a las 20:10, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 2022-02-22 12:05, Alvaro Pendas Recondo wrote:
> > Yes, I am aware of the 4-channel, but I just forget about it when
> > doing comparison. The explanation behind is that I only have 3
> > antennas right now, so I am actually working with 3 Rx.
> > About setting Sync to "Unknown PPS", I had tried before, with no
> > result, but I have setted again. However, I have never tried to modify
> > the "start time", which in GNU Radio is -1.0 by default. The
> > interesting thing is that if I try to set a positive value I get the
> error
> > gr::log :WARN: usrp_source1 - USRP Source Block caught rx error:
> > ERROR_CODE_LATE_COMMAND
> >
> Yeah, this is going to require a bit of custom coding on your part to
> make sure that both B210 agree on what time it is when the PPS arrives.
> I think that having
>    *both* of them set to "Unknown PPS" won't work very well, because the
> first one will *wait* before the code even gets to the second one, so
> they'll be in disagreement
>    about timing.
>
> You'll likely have to do the PPS synchronization "dance" yourself.
>
>
>

--00000000000082335905d8aeceb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I finally managed to make it work by setting both blocks w=
ith &quot;No sync&quot; (in my first scheme one of them was configured with=
 &quot;Unknown=C2=A0PPS&quot; by accident). There is still the problem with=
 the decrease of the maximum sampling rate when doing MIMO with B210. Anywa=
y, in this case I was just doing a simple characterization of the devices, =
so I will keep in mind that some problems may appear when synchronizing mul=
tiple B2xx=C2=A0externally. I am also aware that N210 is the model recommen=
ded=C2=A0for that.<div><br></div><div>Thank you very much for your help.</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">El mar, 22 feb 2022 a las 20:10, Marcus D. Leech (&lt;<a href=3D"mailto:=
patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-02-22 12:0=
5, Alvaro Pendas Recondo wrote:<br>
&gt; Yes, I am aware of the 4-channel, but I just forget about it when <br>
&gt; doing comparison. The explanation behind is that I only have 3 <br>
&gt; antennas right now, so I am actually working with 3 Rx.<br>
&gt; About setting Sync to &quot;Unknown PPS&quot;, I had tried before, wit=
h no <br>
&gt; result, but I have setted=C2=A0again. However, I have never tried to m=
odify <br>
&gt; the &quot;start time&quot;, which in GNU Radio is -1.0 by default. The=
 <br>
&gt; interesting thing is that if I try to set a positive value I get the e=
rror<br>
&gt; gr::log :WARN: usrp_source1 - USRP Source Block caught rx error: <br>
&gt; ERROR_CODE_LATE_COMMAND<br>
&gt;<br>
Yeah, this is going to require a bit of custom coding on your part to <br>
make sure that both B210 agree on what time it is when the PPS arrives.=C2=
=A0 <br>
I think that having<br>
=C2=A0=C2=A0 *both* of them set to &quot;Unknown PPS&quot; won&#39;t work v=
ery well, because the <br>
first one will *wait* before the code even gets to the second one, so <br>
they&#39;ll be in disagreement<br>
=C2=A0=C2=A0 about timing.<br>
<br>
You&#39;ll likely have to do the PPS synchronization &quot;dance&quot; your=
self.<br>
<br>
<br>
</blockquote></div>

--00000000000082335905d8aeceb6--

--===============0117318715737835082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0117318715737835082==--
