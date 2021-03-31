Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EC135038A
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 17:35:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0930C383907
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 11:35:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d9B6b9dc";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 66ACD3819D1
	for <USRP-users@lists.ettus.com>; Wed, 31 Mar 2021 11:34:54 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id x11so1485960qkp.11
        for <USRP-users@lists.ettus.com>; Wed, 31 Mar 2021 08:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=L0CgsH/4qpGt4HQ9g/CxABPqW7De2sqPCl0BdkK9+xM=;
        b=d9B6b9dcD31iyJEdQJPqOORKSYevYJLMdxs5M6BLzWIXY+b69jJN6ylf4eC0NAwe2b
         bL77zctnZRO3YmVU2TBj6OfYpUYq3ZEiVSf2q43kJSWokwScO12O3vaNMXmtVpQjONbR
         RzkpIBnk/27DLbPgQq349GHE3mUdh9l6PdOC1NTtaEQ8wu48sAb+BYKsz+DbsAG9Yl+e
         TO+PoXyi7+IaYLh04qJpb/Zr+d59V4J+e13vIwkvW94CNUhDhfxfe+aU8Tkyt/jf4Xfa
         3NHZoKFEEuk8Rs5BAJ6/FTGz2U+A5emjXekhxRkuG0Yzmi5tChc2hOEx5BP2YnwiYa8f
         HJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=L0CgsH/4qpGt4HQ9g/CxABPqW7De2sqPCl0BdkK9+xM=;
        b=lDd/B9rc0Yo0ucWr6F2bixBwb+suQm0IrNjXmvLIHP2Nu04SeoLgcdB5oJJglm47tN
         CDL2Usm+XcB7beYOVOveOaODdHdLAT4A2KPYMzh1/inWQAB2u7yNTNkM0sUzf8M44yS4
         uXEtHI8l97sj/rqQKDirAviKmBCjR3IkltefMrcn4EJvaoa+5j8ux1WteWIZ+XA2iorF
         HUNZTlxzqr+Q0DIal50z53Jv6PzLOnKELImz1JH4e7yNoss0c7k1xzQOYsAYwBpiyqP3
         EeVeOzH5dfn7Y2WhMxLQYJLQl5VpsWUVzimdUSiyT3l/Fu5LasMWlHuU7Wl437tGe8SB
         sSLw==
X-Gm-Message-State: AOAM5317FhLvw53ronJL7N7/aJcWw0aahFAYzkj/5yafRYXNElv+qLPs
	p3w/qyPTfM/mayi78+ugJQCgutKR3uw=
X-Google-Smtp-Source: ABdhPJzIFEp2Z6oYrLa6iwUrwSR8EehvgLZFMIV42/aq1oGig0sg9OYc8RksKZfk/zSJcWtdrCeYlw==
X-Received: by 2002:a37:a183:: with SMTP id k125mr3719350qke.332.1617204893488;
        Wed, 31 Mar 2021 08:34:53 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l129sm1676147qkd.76.2021.03.31.08.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 08:34:53 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 31 Mar 2021 11:34:52 -0400
Message-Id: <B48F29C2-378E-4FA4-AFAA-690AC95D60DB@gmail.com>
References: <BN6PR06MB3394209BDEC0BECABBC1DBA9F37C9@BN6PR06MB3394.namprd06.prod.outlook.com>
In-Reply-To: <BN6PR06MB3394209BDEC0BECABBC1DBA9F37C9@BN6PR06MB3394.namprd06.prod.outlook.com>
To: Lorenzo Bertizzolo <bertizzolo.l@northeastern.edu>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: NUIDVGGHU35V7UN5L46RLMB7YWB5KWFO
X-Message-ID-Hash: NUIDVGGHU35V7UN5L46RLMB7YWB5KWFO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10us delay between the two X310 daughterboards in TX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NUIDVGGHU35V7UN5L46RLMB7YWB5KWFO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3476397516146331130=="


--===============3476397516146331130==
Content-Type: multipart/alternative; boundary=Apple-Mail-CED61B7C-24D2-4B59-92F9-CA2DFFC45131
Content-Transfer-Encoding: 7bit


--Apple-Mail-CED61B7C-24D2-4B59-92F9-CA2DFFC45131
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s like the semantics of =E2=80=9CpC clock=E2=80=9D synch causing t=
his. Try changing to =E2=80=9Cunknown PPS=E2=80=9D

Sent from my iPhone

> On Mar 31, 2021, at 10:43 AM, Lorenzo Bertizzolo <bertizzolo.l@northeaster=
n.edu> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> I am experiencing a time synchronization issue internal to the USRP X310.=20=

> With the help of an oscilloscope, I measured an (apparently) constant dela=
y between the two X310 output TX ports of approximately 10~14 =C2=B5s (pictu=
re attached).=20
> =20
> I tried different bandwidths, both UHD 4 (UHD 4.0.0.0-25-g1a34ba8a) and UH=
D 3.15 (UHD 3.15.0.0-62-g7a3f1516), and different X310 hardware, always expe=
riencing the same time delay.
>=20
> To track down this issue I simplified my flowgraph. It now feeds data to t=
he two UHD USRP sink channels from file, using `packet_len=E2=80=99 tags acc=
ordingly (picture attached).=20
> I verified thanks to the QT scope that the two streams enter the USRP Sink=
 with the two tags at the same time.=20
>=20
> Setup:USRP X310 / UBX daughterboards / Gnuradio 3.8 with UHD 4, Gnuradio 3=
.7 with UHD 15
>=20
>=20
> It seems that either the USRP sink block or UHD are not sending out the sa=
mples at the same time from the two X310 TX daughterboards.=20
> Is there any misconfiguration in my setting that could be the root cause o=
f this issue?
>=20
> Thanks,
> Lorenzo
> <image001.png>
> <image002.png>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CED61B7C-24D2-4B59-92F9-CA2DFFC45131
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It=E2=80=99s like the semantics of =E2=80=9C=
pC clock=E2=80=9D synch causing this. Try changing to =E2=80=9Cunknown PPS=E2=
=80=9D<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br=
><blockquote type=3D"cite">On Mar 31, 2021, at 10:43 AM, Lorenzo Bertizzolo &=
lt;bertizzolo.l@northeastern.edu&gt; wrote:<br><br></blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-12=
52">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:black">Hi all,<br>
<br>
I am experiencing a time synchronization issue internal to the USRP X310.&nb=
sp;<br>
With the help of an oscilloscope, I measured an (apparently) constant delay b=
etween the two X310 output TX ports of approximately 10~14 =C2=B5s (picture a=
ttached).&nbsp;<br>
&nbsp;<br>
I tried different bandwidths, both UHD 4 (UHD 4.0.0.0-25-g1a34ba8a) and UHD 3=
.15 (UHD 3.15.0.0-62-g7a3f1516), and different X310 hardware, always experie=
ncing the same time delay.<br>
<br>
To track down this issue I simplified my flowgraph. It now feeds data to the=
 two UHD USRP sink channels from file, using `packet_len=E2=80=99 tags accor=
dingly (picture attached).&nbsp;<br>
I verified thanks to the QT scope that the two streams enter the USRP Sink w=
ith the two tags at the same time.&nbsp;<br>
<br>
<b>Setup</b>:USRP X310 / UBX daughterboards / Gnuradio 3.8 with UHD 4, Gnura=
dio 3.7 with UHD 15<br>
<br>
<br>
It seems that either the USRP sink block or UHD are not sending out the samp=
les at the same time from the two X310 TX daughterboards.&nbsp;<br>
Is there any misconfiguration in my setting that could be the root cause of t=
his issue?<br>
<br>
Thanks,<br>
Lorenzo</span><o:p></o:p></p>
<p class=3D"MsoNormal"><div>&lt;image001.png&gt;</div><div>&lt;image002.png&=
gt;</div></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-CED61B7C-24D2-4B59-92F9-CA2DFFC45131--

--===============3476397516146331130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3476397516146331130==--
