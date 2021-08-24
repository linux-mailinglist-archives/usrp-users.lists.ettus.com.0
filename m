Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F963F6C08
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 01:03:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7CF3384F01
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 19:03:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="xuNFWAyt";
	dkim-atps=neutral
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A3383814DF
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 19:02:33 -0400 (EDT)
Received: by mail-il1-f181.google.com with SMTP id x5so22156293ill.3
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 16:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nJ/wPhzyhbXGFxSZbq+6KnEPy0F3kgn3l2Uesyh0rQo=;
        b=xuNFWAytpioKN3isIiyEP/G2r0B6MXGXFVPf1+zdKxS/cmFNFp05Y0FVeUZTZeTnVb
         ckFFOIXFB8s2PW81kwhObLxX7RI2E6mTnH1K7HH9LrHQyRIIRH4l5oywG3+QDHcFKaW3
         DV8PIbGwOnhp++WZDqJTq1ZycBzjx2VbgAy/Fcua03G4rPs48Z4Sxbc7qoiVbOyhsdNh
         4/WbpjFJ0u2Jr5MQJAvNlpbcukEvoZQkZCVFfna/jG7MT8a/AZHluESkNCqC2SdGta98
         FzmSmxJonYVbROK47gN6wTsG3KYjO371MJuoBSkJnUaQ051XLZlhaThsthNVZ+FFeebc
         3Cxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nJ/wPhzyhbXGFxSZbq+6KnEPy0F3kgn3l2Uesyh0rQo=;
        b=dwRIzeAQh9QMoBkFySOLb/mDum/tqWWr7PW/I4maR+KCrEpoo/4kUwKaF8JwZSqULa
         Dw2hLpYTUqwnF311W8iPIdfnbfh6uiHpM+mOIo2o3fL6kOLKaDxxvTq7KPVow1J/L14D
         JDYcG6tZRbAkCems4OpKGPKh3YJEf+hYPAjGHaG0gq7xbWM092lDBWf8plmuRd0BpT3G
         likxNUIZvgutDnVsQCNWaACY41hwYTORt+xVYUlZOdwTfVsk5dB4YOsbr52qL0Z7oiSe
         M+BhoPq6xD2GxI7uQ/TLjNFRQGsdX8GFEKgRVhRMHJsgQBNJ6b/respXCg5+8vOwnmVh
         6N/g==
X-Gm-Message-State: AOAM5303Xiv5P8OxmukpBO9wqxzw9rhjKy1NYz4U2tRpty3VS3yVppsB
	GnZ24aKFz2NVWBL1fvGWU6krLcB6/APj1Pxsv/bNH59u+P+0pA==
X-Google-Smtp-Source: ABdhPJzBmbIT61ZuBEi0Pa1duQOSN6HyGtMY6wffVCTceQiXjSwdA+ywiKr4cj8aeIFQmyh7CFI3hHbZhOXf9HO2BG4=
X-Received: by 2002:a92:a801:: with SMTP id o1mr28524403ilh.128.1629846152628;
 Tue, 24 Aug 2021 16:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNeao6k=2hTMc7orLE2L=dXKuoM243zTJ3VDWtUnDYU_YvZQ@mail.gmail.com>
 <19B59BC4-DD76-4F88-9465-085241A4398F@gmail.com> <572877336.1228759.1629843589505@mail.yahoo.com>
 <1126607151.1233468.1629843927338@mail.yahoo.com>
In-Reply-To: <1126607151.1233468.1629843927338@mail.yahoo.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Tue, 24 Aug 2021 19:02:21 -0400
Message-ID: <CANsNeaqzeT0ANus-UYwJhwTis5FYBX0qqLnag=1gbYO0iNxB2A@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: QCJONUUEE3NUNKAUQYUPH2Q7533PH4Y5
X-Message-ID-Hash: QCJONUUEE3NUNKAUQYUPH2Q7533PH4Y5
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QCJONUUEE3NUNKAUQYUPH2Q7533PH4Y5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1290075395453597960=="

--===============1290075395453597960==
Content-Type: multipart/alternative; boundary="000000000000f7607b05ca56203f"

--000000000000f7607b05ca56203f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for both suggestions.  I installed lm_sensors, and it seems to find
two of the temp sensors.  Not sure which two, though:

# sensors
e31x_battery-virtual-0
Adapter: Virtual device
temp1:       -273.0=C2=B0C

e000b000ethernetffffffff00-mdio-0
Adapter: MDIO adapter
temp1:        +28.0=C2=B0C  (crit =3D +100.0=C2=B0C)

jc-42.4-temp-i2c-0-19
Adapter: Cadence I2C at e0004000
temp1:        +33.2=C2=B0C  (low  =3D  +0.0=C2=B0C)                  ALARM =
(HIGH, CRIT)
                       (high =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
                       (crit =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)


On Tue, Aug 24, 2021 at 6:25 PM aneesh patel <ampselectronics@yahoo.com>
wrote:

> Correction-- missed you said "outside of gnuradio." Basically everything
> below minus gnuradio. if the sensors_lm package is available (as marcus
> stated), parse that output or just manually parse the /sys or /proc (forg=
ot
> which one) file descriptor for the sensor when you find it.
>
> Best of luck!
>
> Aneesh
>
> On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh patel <
> ampselectronics@yahoo.com> wrote:
>
>
> Concur on verifying-- that being said I know at least one of them
> (possibly CPU) was available on the SG3 image a while back (I'm sure
> nothing much has changed there but its been a while).
>
> Then is would be very simple to write a simple custom GNURadio block (lik=
e
> basically a command line script to cat the sensor file descriptor [just
> google that as I can't recall if its in /sys or /proc]) to pull that data
> from the OS to pass temp messages and ingest them into your message passi=
ng
> or logging system. On the tougher end, depending on dev cycles, one can
> cross-compile or pull code from lm-sensors and then turn that into a
> GNURadio block (and maybe even being able to add the other sensors when
> reading into the ettus kernel mod code/schematics if possible). Some
> options exist.
>
> Going all from memory here but that should be >94.27% correct. :)
>
> Best of luck!
>
> Aneesh
>
> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> My approach would be to see if any of those sensors are understood by the
> kernel lm_sensors subsystem.
>
> Sent from my iPhone
>
> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
> wrote:
> >
> > =EF=BB=BF
> > I'm helping out on a project that's using an E310.  Someone else is
> doing the GNURadio code, but I need to read the temperature values
> periodically (once every few seconds).  My code will not be running in
> GNURadio.
> >
> > It looks like there are three temp sensors (Zynq, ADT7408, and the
> AD9361).
> >
> > What are my options for reading the temp values outside of GNURadio?  I=
f
> it matters, the E310 is running UHD_3.15
> > My code will be running on the E310 directly.
> >
> >
> > Thanks.
> >
> > Rich
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f7607b05ca56203f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for both suggestions.=C2=A0 I installed lm_sensors,=
 and it seems to find two of the temp sensors.=C2=A0 Not sure which two, th=
ough:<div><br></div><div><font face=3D"monospace"># sensors<br>e31x_battery=
-virtual-0<br>Adapter: Virtual device<br>temp1: =C2=A0 =C2=A0 =C2=A0 -273.0=
=C2=B0C<br><br>e000b000ethernetffffffff00-mdio-0<br>Adapter: MDIO adapter<b=
r>temp1: =C2=A0 =C2=A0 =C2=A0 =C2=A0+28.0=C2=B0C =C2=A0(crit =3D +100.0=C2=
=B0C)<br><br>jc-42.4-temp-i2c-0-19<br>Adapter: Cadence I2C at e0004000<br>t=
emp1: =C2=A0 =C2=A0 =C2=A0 =C2=A0+33.2=C2=B0C =C2=A0(low =C2=A0=3D =C2=A0+0=
.0=C2=B0C) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AL=
ARM (HIGH, CRIT)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0(high =3D =C2=A0+0.0=C2=B0C, hyst =3D =C2=A0+0.=
0=C2=B0C)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0(crit =3D =C2=A0+0.0=C2=B0C, hyst =3D =C2=A0+0.0=C2=B0=
C)</font><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 24, 2021 at 6:25 PM aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com">ampselectronics@yahoo.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Correction-- missed you said &quot;outside of gnur=
adio.&quot; Basically everything below minus gnuradio. if the sensors_lm pa=
ckage is available (as marcus stated), parse that output or just manually p=
arse the /sys or /proc (forgot which one) file descriptor for the sensor wh=
en you find it.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best=
 of luck!</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Aneesh</div><div=
><br></div>
       =20
        </div><div id=3D"gmail-m_13919340374060557ydpb3eb0d01yahoo_quoted_0=
229013022">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" target=3D"_blank">amps=
electronics@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_13919340374060557ydpb3eb0d01yiv6860=
814934"><div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica=
,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Concur on verifying-- that being said I know at le=
ast one of them (possibly CPU) was available on the SG3 image a while back =
(I&#39;m sure nothing much has changed there but its been a while).</div><d=
iv dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Then is would be v=
ery simple to write a simple custom GNURadio block (like basically a comman=
d line script to cat the sensor file descriptor [just google that as I can&=
#39;t recall if its in /sys or /proc]) to pull that data from the OS to pas=
s temp messages and ingest them into your message passing or logging system=
. On the tougher end, depending on dev cycles, one can cross-compile or pul=
l code from lm-sensors and then turn that into a GNURadio block (and maybe =
even being able to add the other sensors when reading into the ettus kernel=
 mod code/schematics if possible). Some options exist.</div><div dir=3D"ltr=
"><br clear=3D"none"></div><div dir=3D"ltr">Going all from memory here but =
that should be &gt;94.27% correct. :)</div><div dir=3D"ltr"><br clear=3D"no=
ne"></div><div dir=3D"ltr">Best of luck!</div><div dir=3D"ltr"><br clear=3D=
"none"></div><div dir=3D"ltr">Aneesh=C2=A0</div><div><br clear=3D"none"></d=
iv>
       =20
        </div><div id=3D"gmail-m_13919340374060557ydpb3eb0d01yiv6860814934y=
qt80428"><div id=3D"gmail-m_13919340374060557ydpb3eb0d01yiv6860814934ydpca3=
3aaa6yahoo_quoted_0518387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div dir=3D"ltr">My approach would be to see if any of=
 those sensors are understood by the kernel lm_sensors subsystem. <br clear=
=3D"none"><br clear=3D"none">Sent from my iPhone<br clear=3D"none"><br clea=
r=3D"none">&gt; On Aug 24, 2021, at 5:12 PM, Rich Gopstein &lt;<a shape=3D"=
rect" href=3D"mailto:rich@ourowndomain.com" rel=3D"nofollow" target=3D"_bla=
nk">rich@ourowndomain.com</a>&gt; wrote:<br clear=3D"none">&gt; <br clear=
=3D"none">&gt; =EF=BB=BF<br clear=3D"none">&gt; I&#39;m helping out on a pr=
oject that&#39;s using an E310.=C2=A0 Someone else is doing the GNURadio co=
de, but I need to read the temperature values periodically (once every few =
seconds).=C2=A0 My code will not be running in GNURadio.<br clear=3D"none">=
&gt; <br clear=3D"none">&gt; It looks like there are three temp sensors (Zy=
nq, ADT7408, and the AD9361).=C2=A0 <br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; What are my options for reading the temp values outside of GNURadi=
o?=C2=A0 If it matters, the E310 is running UHD_3.15<br clear=3D"none">&gt;=
 My code will be running on the E310 directly.<br clear=3D"none">&gt; <br c=
lear=3D"none">&gt; <br clear=3D"none">&gt; Thanks.<br clear=3D"none">&gt; <=
br clear=3D"none">&gt; Rich<br clear=3D"none">&gt; <br clear=3D"none">&gt; =
_______________________________________________<br clear=3D"none">&gt; USRP=
-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.et=
tus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><=
br clear=3D"none">&gt; To unsubscribe send an email to <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_1391934037406=
0557ydpb3eb0d01yiv6860814934ydpca33aaa6yqtfd42373"><br clear=3D"none">_____=
__________________________________________<br clear=3D"none">USRP-users mai=
ling list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" r=
el=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=
=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:=
usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-u=
sers-leave@lists.ettus.com</a><br clear=3D"none"></div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></div></blockquote></div>

--000000000000f7607b05ca56203f--

--===============1290075395453597960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1290075395453597960==--
