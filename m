Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF49A4B6FFC
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 16:56:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6E29385925
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 10:56:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ChXttRXG";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 23DB6384B42
	for <USRP-users@lists.ettus.com>; Tue, 15 Feb 2022 10:55:03 -0500 (EST)
Received: by mail-qt1-f172.google.com with SMTP id e16so18986238qtq.6
        for <USRP-users@lists.ettus.com>; Tue, 15 Feb 2022 07:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=QC5o0X4Sty4k0xwuHhue8sCKQfDb+Cw+iO/Ib2vdl/0=;
        b=ChXttRXG1opIuXLfSA2gwCsJ8D5yzMG0EdkROa/Gq/dMssKn5i9bzIPY411K8KtXIh
         7/ZwdL30ACegs4FNFWfx3s66crUKWEIQFXtllovIn62PG9en5kGKTy5M0K4W9xDyiMVL
         37XLq78FFWZDeJYS5vS4bNHbAYCmIG+U+BRiYw0vgPSu/qK89aO6GV1DtuQqxxkazSRG
         hkbCsybLx7ZdK9xz3tlQJB9cCKpEM+NGUCgCkHM2NsjAraYEtZA0D9B/D14+W1NsWtjS
         eRp+sMnxO5n1xG1VPF30jwuDAfcehYCbHBNrD+YJQFfmISXfJZ+HtXBg1zgRFXf54Gtd
         BgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=QC5o0X4Sty4k0xwuHhue8sCKQfDb+Cw+iO/Ib2vdl/0=;
        b=JIiz13dUfl6NbxY0LEYlA8WclDD6pNY+upjEkDJPufm53gTzvi286HmozWvYF8YvvD
         XOXBcGF3p94LXbuj3q5ryBmyLSEyP/s5Ee7QsAOWpWhqHSqBnUGywJ6lgkeraktXMhmg
         nJyI8Ul/8MI4Wlkc2SNm5u60Uo3stzjMsWeM1cIbF5yWlQw5PkCra7yNZYvIH45piKaW
         SwDVPMYCKJHh3j7pIrYP28QnFfs1/1G9m10lj8bC/L7woW6UquKZd7y30M80ldExgTPf
         79tDMcPsTllGR5CAvG7d3nFrPncQ9L4P3KN6lkMVzp6wRold4Gb60XImK4RTBrgevvWa
         Xx8A==
X-Gm-Message-State: AOAM530ub/zArpIzMpIK3UxG5fumlKohO6qyQU4XM9A3CFxcUBlkHvZ4
	Don7NvbVx0VL5DftyRxZxSc=
X-Google-Smtp-Source: ABdhPJxncs+KFqx4MnBJBbiPGe+vxoUJ6sV4Ydr75+EeKa5E3vUIcMij/5olqQbSkdzdwInZT7nTXQ==
X-Received: by 2002:ac8:5a08:: with SMTP id n8mr3147550qta.332.1644940503499;
        Tue, 15 Feb 2022 07:55:03 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id b14sm3521232qkp.23.2022.02.15.07.55.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 07:55:03 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 15 Feb 2022 10:55:01 -0500
Message-Id: <C7DAE152-5DB4-47EA-AC1D-A061453AE5B6@gmail.com>
References: <PH1P110MB1665E5C50ECCF356F8212B5DB7349@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB1665E5C50ECCF356F8212B5DB7349@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
To: David Raeman <david@synopticengineering.com>
X-Mailer: iPhone Mail (19C63)
Message-ID-Hash: LH3ZCZQ2EZHPFGKLEUQ77XTZGNZEHQE4
X-Message-ID-Hash: LH3ZCZQ2EZHPFGKLEUQ77XTZGNZEHQE4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>, zeyuan.li@zengyi-tech.com, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OAI with USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LH3ZCZQ2EZHPFGKLEUQ77XTZGNZEHQE4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5115756030282257462=="


--===============5115756030282257462==
Content-Type: multipart/alternative; boundary=Apple-Mail-583CF5E4-BBD4-46B2-90E9-4022618BA187
Content-Transfer-Encoding: 7bit


--Apple-Mail-583CF5E4-BBD4-46B2-90E9-4022618BA187
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t think that N310 supports 8 bit samples. If you want higher r=
ates you must use a 10Gbe interface.=20



Sent from my iPhone

> On Feb 15, 2022, at 10:30 AM, David Raeman <david@synopticengineering.com>=
 wrote:
>=20
> =EF=BB=BF
> Generally speaking you cannot do better than about 25 Msps over a 1GbE lin=
k. By default the samples are signed 16-bit I/Q pairs, which means 32 bits p=
er sample. At 25 Msps, that means the total data throughput is 800 Mbps =E2=80=
=93 which is starting to approach the bandwidth over the 1 Gbps link.
> =20
> If you have 60 Msps sampling rate, that is 1920 Mbps throughput, which is m=
ore than a 1 Gbps link.  If you can tolerate the bad quantization it=E2=80=99=
s possible you could get closer to that rate by using signed 8-bit I/Q value=
s, but I=E2=80=99ve not tried it.  I think you would specify this as =E2=80=9C=
--rx_otw sc8=E2=80=9D
> =20
> Best,
> David
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-583CF5E4-BBD4-46B2-90E9-4022618BA187
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I don=E2=80=99t think that N310 supports 8 b=
it samples. If you want higher rates you must use a 10Gbe interface.&nbsp;<d=
iv><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Feb 15, 2022, at 10:30 AM, David R=
aeman &lt;david@synopticengineering.com&gt; wrote:<br><br></blockquote></div=
><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:SimSun;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Generally speaking you cannot do better than about 25=
 Msps over a 1GbE link. By default the samples are signed 16-bit I/Q pairs, w=
hich means 32 bits per sample. At 25 Msps,
 that means the total data throughput is 800 Mbps =E2=80=93 which is startin=
g to approach the bandwidth over the 1 Gbps link.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">If you have 60 Msps sampling rate, that is 1920 Mbps t=
hroughput, which is more than a 1 Gbps link.&nbsp; If you can tolerate the b=
ad quantization it=E2=80=99s possible you could get closer
 to that rate by using signed 8-bit I/Q values, but I=E2=80=99ve not tried i=
t.&nbsp; I think you would specify this as =E2=80=9C--rx_otw sc8=E2=80=9D<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">Best,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif">David<o:p></o:p></span></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-583CF5E4-BBD4-46B2-90E9-4022618BA187--

--===============5115756030282257462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5115756030282257462==--
