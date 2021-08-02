Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAE63DE341
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 01:51:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F561384215
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 19:51:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ez8bGT7V";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B50A8383F1E
	for <USRP-users@lists.ettus.com>; Mon,  2 Aug 2021 19:50:36 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id z24so18348588qkz.7
        for <USRP-users@lists.ettus.com>; Mon, 02 Aug 2021 16:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=2cgsIAiNHVFM7gdcbxuLD0AMI6eYAF+UaR+Hszv8IOA=;
        b=ez8bGT7VIHU7MRsZl6GDTQDMI1CYdEmkdNcc9cRFWhPAm4YGd1CFAxNkNnYaQJNo+U
         tQrNS2h3Q9OTPXB6Sr9HBhVahoWuERHOOZZufgnL3ctqss3qnIoh6rjN7EkyxGpK7X9Z
         iPDLfvQmNEmnYu9JFKsSyxfdNuor0YUkAlUQ3JgTiv7wfvAu6thG+JskiB8E/0yE/dbp
         W162wGQ2MwboTBZrwM+bhsez2Pgj0lNnTuv4mwibqhfCbM+5mhp4KXshbeaMhE6nTVY0
         Wa1AiA/fdfMg2K8IUzyur0ViaOuZq0uCXwVN/cH34QJCvx6kqGFysVLBFExVF0Tnkrbf
         X8cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=2cgsIAiNHVFM7gdcbxuLD0AMI6eYAF+UaR+Hszv8IOA=;
        b=LWh9Wb2+XXWkCFHXuef5GVT1RwmnzT5KKOt8f7/ZG+p5Re9PHKB0jNO+GMq4sNz1qp
         N0mmkZSheyx0t64tJ8TBQPCws1288aY5GPisQfO4EapVbCfdCaz6Uspax9MRxvI9CetM
         El2kiBtvZM1FU/8j/479f+VDLkS1N4KGIMV+suNTLpS6cfVbF6uDEWIOHXtc9YFaE7ID
         ew2p+8QE60J0n8cT3/WNL8fvynA2e+qDBzNatyVoU2a24DZ3BseCyj1B/TEnxUvsloLJ
         7r/IWFSNqZd5aWA7yOlZbGJFfjMpIN4ukv0J5WQ8vdSdeGREtQhz7I53Uwb6tUN4c0Ze
         t/qw==
X-Gm-Message-State: AOAM532hjmBR5SYxnbGzUB5HvT8nH1DTy4KiwTeLLdi2AR9h8GyBiRCN
	YIxJGXuSAhPLlDb0wMk3qCskzZt5kr0=
X-Google-Smtp-Source: ABdhPJy0lchKuWurjnK+JPBBhcOBNMrb80XLGC22QzMGeDBy1yON6lPl5p1aBm7dLaHGUPn5BPO+cA==
X-Received: by 2002:a37:4042:: with SMTP id n63mr17707622qka.425.1627948235974;
        Mon, 02 Aug 2021 16:50:35 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id p22sm5259864qtq.64.2021.08.02.16.50.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 16:50:35 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 2 Aug 2021 19:50:34 -0400
Message-Id: <592283D1-F988-4D4C-B068-1F6DADE9A2B5@gmail.com>
References: <CO6PR19MB48015606D1B15436822D285FC6EF9@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB48015606D1B15436822D285FC6EF9@CO6PR19MB4801.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: G6NOULJC3TXKFSV3UBITFJY5LP3ZSDZQ
X-Message-ID-Hash: G6NOULJC3TXKFSV3UBITFJY5LP3ZSDZQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting the TX SPP to reduce underruns
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G6NOULJC3TXKFSV3UBITFJY5LP3ZSDZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6830242118348837158=="


--===============6830242118348837158==
Content-Type: multipart/alternative; boundary=Apple-Mail-8D8844A8-233C-4184-BB84-F20B171CC3E1
Content-Transfer-Encoding: 7bit


--Apple-Mail-8D8844A8-233C-4184-BB84-F20B171CC3E1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

SPP is just about how samples are packed on the wire and have very little to=
 do with the buffering dynamics within Gnu Radio. They=E2=80=99re entirely a=
 UHD driver concept as far as I know.=20

Sent from my iPhone

> On Aug 2, 2021, at 7:41 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com> w=
rote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> I am reaching out on this subject again as I had some interesting results t=
oday from some tests I ran. First, I want to make sure I understand this cor=
rectly, the SPP argument is going to set the size of each packet sent receiv=
ed and sent by the UHD source and sink blocks. This could be checked then by=
 looking at the length of the in_sig in a python block correct?
> =20
> I ask because today I ran a test and was able to see the length of each in=
_sig packet was the same value as the SPP I set in the UDH source and sink b=
locks, however when I ran the same test, and subsequent tests today, the fir=
st packet length would be the same as the SPP, but then the rest would be at=
 4096 or so. I have been running tests today using different min and mac out=
put buffer values trying to eliminate the occasional underruns that happen w=
hen my flowgraph running. With that said, does anyone know how changing the m=
in and max output buffers may be Having an affect on the SPP getting set? Do=
es anyone know why the SPP seems to be setting the first packet correctly, b=
e the remaining packets do not match the SPP in length?
> =20
> Any help with these problems will be greatly appreciated!
> =20
> Best Regards,
> Jerrid
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-8D8844A8-233C-4184-BB84-F20B171CC3E1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">SPP is just about how samples are packed on=
 the wire and have very little to do with the buffering dynamics within Gnu R=
adio. They=E2=80=99re entirely a UHD driver concept as far as I know.&nbsp;<=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Aug 2, 2021, at 7:41 PM, Jerrid Plymale &lt;jerrid.pl=
ymale@canyon-us.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am reaching out on this subject again as I had some=
 interesting results today from some tests I ran. First, I want to make sure=
 I understand this correctly, the SPP argument is going to set the size of e=
ach packet sent received and sent
 by the UHD source and sink blocks. This could be checked then by looking at=
 the length of the in_sig in a python block correct?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I ask because today I ran a test and was able to see t=
he length of each in_sig packet was the same value as the SPP I set in the U=
DH source and sink blocks, however when I ran the same test, and subsequent t=
ests today, the first packet
 length would be the same as the SPP, but then the rest would be at 4096 or s=
o. I have been running tests today using different min and mac output buffer=
 values trying to eliminate the occasional underruns that happen when my flo=
wgraph running. With that said,
 does anyone know how changing the min and max output buffers may be Having a=
n affect on the SPP getting set? Does anyone know why the SPP seems to be se=
tting the first packet correctly, be the remaining packets do not match the S=
PP in length?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help with these problems will be greatly apprecia=
ted! <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid <o:p></o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-8D8844A8-233C-4184-BB84-F20B171CC3E1--

--===============6830242118348837158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6830242118348837158==--
