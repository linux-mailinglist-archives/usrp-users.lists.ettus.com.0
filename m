Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 8122F338FA9
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:19:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3202E383D24
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 09:19:15 -0500 (EST)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id EBC67383B00
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 09:18:10 -0500 (EST)
Received: by mail-oi1-f181.google.com with SMTP id q130so8025246oif.13
        for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 06:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yl6nDdnShoa/xLSdyXtj4Wq4DTNY6JSU+TjTxu4XSQk=;
        b=GMuQjdToK02t1qO0hc616BHwZLufP6LFSA7x9+kagRYLNuwG1BkuH8aFG2P+Yr7v6u
         mLMR81bkoCHWM3/egfT8pJysRXXDbLxk0oG9MhURDf7uFOnctGmLSONe4lGva3DmHXoZ
         TwxhIb2jhJJdXKEjfihqMZ/6NWvdSkbLzdn7zr2iMySWK/DOma4994sj0AACOVqW/tGY
         tInb1Tl6WWNrP41DUuWrVxt5JHsl7VSvh9jgbJjgVXzyh7WyUfCFt3AnGvrTG6xBVgTq
         WZqpZ9+Cqb4PcCt4yhkjW5qiW/ZTH/rgptlDBVh1jew5FoVRVfBoAdJk5l8ymVdabQCS
         SD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yl6nDdnShoa/xLSdyXtj4Wq4DTNY6JSU+TjTxu4XSQk=;
        b=SZH0gNR1HrEOAp2Ge/kpIT3Di5GALGocEzwioiUssrOZSF2+dDmsDpPJvFc6JMhCgc
         zBGisDCh9IMJ8lujQpuNUp+oyI21QNRN5pK2TMbbORMKkKaPGTo0mEwgL6U2SQTFNsAM
         nYWK/urUZhxOlIlRiPE0Ppj253v5w2cGAKsL1fJDMJlywl/J452RZcD1wgc+Bgkfke4f
         179K9zCTKk4weEnQJc8eqgI1dMsGkjFs2iM5rXkz0spEDwvkux3ES3pwiMfXiASOyapl
         rcttnOjGVbbS/iEViET3eRFJ4ddGn8Yl/z8ahpaUtEJud8dge5h0lEGZK6U5PjwwPGfA
         Mfyg==
X-Gm-Message-State: AOAM533/fS7WT4XlKrUgFyQZ0w98S/BFx4FtoQ970jrHAbMXah6b0qeO
	TwZ2t4AGH3DyvT/uLJ/oYfyK4jInaL09sUqt2zxu9ntzWKQ=
X-Google-Smtp-Source: ABdhPJzSfh+o2SFNoegeDX4ZhfgHUTKsJ+CChWLEB67ezwrnhxoZ1R2PgD53hflacNEzpV0OP0ORerW03aW2lhnOsvE=
X-Received: by 2002:aca:2104:: with SMTP id 4mr10213369oiz.124.1615558690207;
 Fri, 12 Mar 2021 06:18:10 -0800 (PST)
MIME-Version: 1.0
References: <6ef5d9a0ee0c47018174fec87644c38b@gmvnsl.com>
In-Reply-To: <6ef5d9a0ee0c47018174fec87644c38b@gmvnsl.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Mar 2021 09:17:59 -0500
Message-ID: <CAB__hTTE0CpXfpKMYgoScWTfZUvgFPHZriEU1FzirHMeYGQ6fQ@mail.gmail.com>
To: Oliver Towlson <oliver.towlson@gmvnsl.com>
Message-ID-Hash: AJQJ4ZMHUIUN3ZXJBV4VMLMDHJ45PTN4
X-Message-ID-Hash: AJQJ4ZMHUIUN3ZXJBV4VMLMDHJ45PTN4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with dual TwinRX set up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJQJ4ZMHUIUN3ZXJBV4VMLMDHJ45PTN4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6347989961240595479=="

--===============6347989961240595479==
Content-Type: multipart/alternative; boundary="000000000000d84f6e05bd579135"

--000000000000d84f6e05bd579135
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is there any chance that your code is attempting to set the master clock
rate?  If so, perhaps see what happens if you don't set it in order to let
it be set automatically.

On Fri, Mar 12, 2021 at 8:55 AM Oliver Towlson <oliver.towlson@gmvnsl.com>
wrote:

> Hi everyone
>
>
>
> Thanks so much for your quick responses. Seems like the thing we were
> missing was that subdev spec =E2=80=93 once that was set it was straightf=
orward to
> generate the code.
>
>
>
> We tried running it and got the following:
>
>
>
> *[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100;
> UHD_3.15.0.0-2build5*
>
> *[INFO] [X300] X300 initialization sequence...*
>
> *[INFO] [X300] Maximum frame size: 8000 bytes.*
>
> *[INFO] [X300] Maximum frame size: 8000 bytes.*
>
> *[INFO] [X300] Radio 1x clock: 200 MHz*
>
> *[INFO] [X300] Radio 1x clock: 200 MHz*
>
> *[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)*
>
> *[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)*
>
> *[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)*
>
> *[INFO] [1/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000000001)*
>
> *[INFO] [1/Radio_1] Initializing block control (NOC ID:
> 0x12AD100000000001)*
>
> *[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)=
*
>
> *[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)=
*
>
> *[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)=
*
>
> *[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)=
*
>
> *[WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.*
>
> *terminate called after throwing an instance of 'uhd::io_error'*
>
> *  what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
> response packet - AssertionError: bool(buff)*
>
> *  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D=
 long
> unsigned int]*
>
> *  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:151*
>
>
>
> *Aborted (core dumped)*
>
>
>
> Googling didn=E2=80=99t result in any answers beyond resetting the whole =
device.
> But it does seem like a common error. As you say, the 4xRF_in set-up is
> fairly standard so I=E2=80=99m not sure what is causing the issue. The ex=
ample
> rx_samples_to_file script runs fine (although it doesn=E2=80=99t seem to =
write
> anything, but it does seems to stream data fine)
>
>
>
> Let me know if you need any more information.
>
>
>
> Thanks very much
>
>
>
> Oliver
>
> P Please consider the environment before printing this e-mail.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d84f6e05bd579135
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there any chance that your code is attempting to set th=
e master clock rate?=C2=A0 If so, perhaps see what happens if you don&#39;t=
 set it in order to let it be set automatically.</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 12, 2021 at 8:5=
5 AM Oliver Towlson &lt;<a href=3D"mailto:oliver.towlson@gmvnsl.com">oliver=
.towlson@gmvnsl.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_2344106125915786502WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Hi everyone
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Thanks so much for your quick responses. Seems like the thing we =
were missing was that subdev spec =E2=80=93 once that was set it was straig=
htforward to generate the code.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">We tried running it and got the following:<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_1071=
00; UHD_3.15.0.0-2build5<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [X300] X300 initialization sequence...<u></u><u></u></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [X300] Maximum frame size: 8000 bytes.<u></u><u></u></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [X300] Maximum frame size: 8000 bytes.<u></u><u></u></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [X300] Radio 1x clock: 200 MHz<u></u><u></u></span></i>=
</p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [X300] Radio 1x clock: 200 MHz<u></u><u></u></span></i>=
</p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F=
0D00000000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<u></u=
><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)<u></u=
><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD1=
00000000001)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD1=
00000000001)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000=
000000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000=
000000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000=
000000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000=
000000000)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">[WARNING] [X300] Cannot update master clock rate! X300 Series =
does not allow changing the clock rate during runtime.<u></u><u></u></span>=
</i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">terminate called after throwing an instance of &#39;uhd::io_er=
ror&#39;<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">=C2=A0 what():=C2=A0 EnvironmentError: IOError: Block ctrl (CE=
_00_Port_30) no response packet - AssertionError: bool(buff)<u></u><u></u><=
/span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_fo=
r_ack(bool, double) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS=
_BIG; uint64_t =3D long unsigned int]<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">=C2=A0 at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_i=
face.cpp:151<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif"><u></u>=C2=A0<u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif">Aborted (core dumped)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Googling didn=E2=80=99t result in any answers beyond resetting th=
e whole device. But it does seem like a common error. As you say, the 4xRF_=
in set-up is fairly standard so I=E2=80=99m not
 sure what is causing the issue. The example rx_samples_to_file script runs=
 fine (although it doesn=E2=80=99t seem to write anything, but it does seem=
s to stream data fine)</span><span style=3D"font-size:10pt;font-family:Verd=
ana,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Let me know if you need any more information.<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Thanks very much<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Oliver</span><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u><u></u></span></p>
</div>
<span><br>
</span><span style=3D"font-size:18pt;line-height:125%;font-family:Webdings;=
color:green">P<span></span>
<span style=3D"font-size:7pt;line-height:125%;font-family:Arial,sans-serif;=
color:green">
Please consider the environment before printing this e-mail.</span></span><=
span></span>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d84f6e05bd579135--

--===============6347989961240595479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6347989961240595479==--
