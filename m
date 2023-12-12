Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD60780ECC4
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:06:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCF1B385BC8
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 08:06:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702386387; bh=dkIG1RYqr37IT0xjtQKj45FRNEa8h63ERu5ElcpAD84=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=qoRHkIcMEV9wdXD53mpg3IoiSjIZOZ1qljMSzPhvIhqhBuTCpKKjCUB0+x1FX67r9
	 tQ+pA1yRcL/JF81f6N3bUN6mWmaJi8c6qUnYzA0ed/x66yHS8GIDPpNBU0cF0Bepp1
	 jUmqiUGGDiRjUj5QJuMHdjqCy5mEZ6o3A6t8uO5vMy1dyBsyepg0FUJzuIy2OKkG+0
	 0i0UU5CYd+DXeKMy1Lw9YqQV5Tpp3YMeYWVQmUtteK9jGvxxmeKhxnItfkPlDilW+E
	 IzXTSK/rWcpwb+yGZfVviQLO5a01Rhaf87v1fNEJ2HDNo7GOalaWF9YksPjrAT/lWQ
	 +8DZTkfXKQKBw==
Received: from mailservice.tudelft.nl (mailservice.tudelft.nl [130.161.131.5])
	by mm2.emwd.com (Postfix) with ESMTPS id E4726385A11
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 08:05:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tudelft.nl header.i=@tudelft.nl header.b="atHteK6T";
	dkim-atps=neutral
Received: from localhost (localhost [127.0.0.1])
	by amavis (Postfix) with ESMTP id 27BDA640103
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 14:05:32 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 amavis 27BDA640103
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tudelft.nl;
	s=20220510; t=1702386332;
	bh=FeQ3q7zVkLPfepTxWdtFe3JRjwTlNE/YmuzFQ2liUoM=;
	h=From:To:Subject:Date:From;
	b=atHteK6TB1LpvSMYHz/GWALrM1BCBFLzBfgzYK/fnaUW3iFXzqoAeqPpF61pa6EUP
	 19ohwcs02CEl65gnozwXEwRioxSsStYBI1r2EGq/CNUwmlJbmluzJnAJnSEz3bvSAt
	 hQUOWKxP9iohd4wtKejrbbh2GTJr+8C6/6kNZXLzv/5ITgOY3UmA+wWL4fv+i5BGhg
	 oxVKtwAh40NbGatg96pGmNMpHdBqwizbQwGIiy0zD1mRIufrrZpj+94dLOmtqTm2S4
	 4P4OnOzIg0oGOHjpSHOLkZ/YbjzJb9PEMf65Aa5Lkw1tHyT9OZeWQRX0P3DB75gw2D
	 5ZFgIrlz4U2gQ==
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.205
X-Spam-Level: 
X-Spam-Status: No, score=-0.205 tagged_above=-99 required=5
	tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
	RDNS_NONE=0.793, SPF_HELO_NONE=0.001, T_SCC_BODY_TEXT_LINE=-0.01]
	autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.73])
	by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id N2J13YfNiWzz for <usrp-users@lists.ettus.com>;
	Tue, 12 Dec 2023 14:05:31 +0100 (CET)
Received: from SRV219.tudelft.net (srv219.tudelft.net [131.180.6.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx2.tudelft.nl (Postfix) with ESMTPS id 5B4C16400C6
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 14:05:31 +0100 (CET)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV219.tudelft.net
 (131.180.6.19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.35; Tue, 12 Dec
 2023 14:05:31 +0100
Received: from SRV220.tudelft.net ([fe80::7d52:ab61:3b2b:de7a]) by
 SRV220.tudelft.net ([fe80::7d52:ab61:3b2b:de7a%3]) with mapi id
 15.01.2507.035; Tue, 12 Dec 2023 14:05:01 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Surge protection of N210
Thread-Index: Ados+oNk8pUvIowHR0qfQw/BS5o6Kw==
Date: Tue, 12 Dec 2023 13:05:01 +0000
Message-ID: <8826102900094445b99f4d3b48fc0489@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Message-ID-Hash: W7PGDT7WDY4CQYJKLX6YZ7XXH5TXZOPG
X-Message-ID-Hash: W7PGDT7WDY4CQYJKLX6YZ7XXH5TXZOPG
X-MailFrom: M.H.A.Sondergaard@tudelft.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Surge protection of N210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W7PGDT7WDY4CQYJKLX6YZ7XXH5TXZOPG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Martin_S=C3=B8ndergaard_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?iso-8859-1?Q?Martin_S=F8ndergaard?= <M.H.A.Sondergaard@tudelft.nl>
Content-Type: multipart/mixed; boundary="===============6667900828316821871=="

--===============6667900828316821871==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8826102900094445b99f4d3b48fc0489tudelftnl_"

--_000_8826102900094445b99f4d3b48fc0489tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everyone.

We have an N210 which we use in the following setup:

Antenna -> LNA -> Surge protector -> Bias-T -> SDR (N210)

We are using Polyphaser GTH-NFF-AL protectors for the surge protection. Acc=
ording to the documentation these surge protectors have a throughput energy=
 of 2.5 mJ.
Are these surge protectors suitable for protecting the SDR in this setup?

Kind regards,
Martin S=F8ndergaard

--_000_8826102900094445b99f4d3b48fc0489tudelftnl_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi everyone.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have an N210 which we use in the following setup:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Antenna -&gt; LNA -&gt; Surge protector -&gt; Bias-T=
 -&gt; SDR (N210)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are using Polyphaser GTH-NFF-AL protectors for th=
e surge protection. According to the documentation these surge protectors h=
ave a throughput energy of 2.5 mJ.
<o:p></o:p></p>
<p class=3D"MsoNormal">Are these surge protectors suitable for protecting t=
he SDR in this setup?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif;mso-fareast-language:NL">Kind regards,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif;mso-fareast-language:NL">Martin S=F8ndergaard<o:p></o=
:p></span></p>
</div>
</body>
</html>

--_000_8826102900094445b99f4d3b48fc0489tudelftnl_--

--===============6667900828316821871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6667900828316821871==--
