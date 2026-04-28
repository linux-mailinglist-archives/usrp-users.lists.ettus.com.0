Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMAMHTiU8GnnVAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2026 13:04:24 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC81F483443
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2026 13:04:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62F5538A5BF
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2026 07:04:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777374262; bh=lXUjy86RVZ6w8d/hdcxWPkgx3wHWYQiK8QKfsfukG0M=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SiDeX0bu8b1Qy35d81LPWy+384oW69S2JfXZoadOdjnRs33mhzVaexf4m34HHf81y
	 SyR3scG08bCyxxJ5ox/HbY6h6et90CNEcvZ+nG7SS8Pxm3XYTNaYH/fmf8rv8JOfre
	 fuFiO6IhlbN8MDfJ859RexN6uws3H5jzRm1uBCIaQzVTO3iyvP9ChlgWueUQEaPtJc
	 2vuOqsPKGZVneoTXN+XnwmwyHtLBpAuz5BDSzUxBnn0I6102w5Xi707tDT8BwevWom
	 t8j6lqsfNCieRpH+VN+hCuqALZpLpV48LUmADWZ2Aq/af+sHwi5Sk9TflZW11zvfG2
	 IvV4VZEd8TofA==
Received: from mx02.hhi.fraunhofer.de (mx02.HHI.FRAUNHOFER.DE [193.174.67.55])
	by mm2.emwd.com (Postfix) with ESMTPS id 08F1E38996A
	for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2026 07:03:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="EBZV1JYh";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=hhi.fraunhofer.de; i=@hhi.fraunhofer.de; q=dns/txt;
  s=s1; t=1777374185; x=1808910185;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=3jFaJK1s9sGQmCJHZgNbOe4A60EB2ohrbdnZsR7r7vo=;
  b=EBZV1JYhtSKp6TAtPYG/T+ShY6S+m4vIY7jUEBep1eFaOjMiWyInEVig
   UyB+EeU1GJFIpq0wN6xMxv1ZchIgfOnbm/Kja8NKd1HZl97rqRiJIjnfU
   pRcVlHrOMmZM0cqY9QdatiYntvsft2g0iI00rukZAdvpy5lCUKtR8sc4y
   x5YouoPhez5kD/GAFgh1MFUSFi218RgcZjejGXSV1bbvVawe6ACWYw8T5
   Ad3r8MH2aX+/wj9ktU7Mvtp7k1BLLNgdAODyY4vcj8J+dR5ztAZlmbuia
   8uEDxrN1/ueAC5PT/kgZNpGjbmoBu4n7Y8FM8awnY477XJi+bgtU9VpM9
   w==;
X-CSE-ConnectionGUID: zdy8tM1DRvCPHgnbwqMs+Q==
X-CSE-MsgGUID: sR/VdOi/QEeqeVKAaXq6mw==
X-IronPort-AV: E=Sophos;i="6.23,204,1770591600";
   d="scan'208,217";a="938062"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO mx.fe.hhi.de) ([172.16.0.105])
  by mx02.hhi.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2026 13:03:03 +0200
Received: from mxsrv1.fe.hhi.de (fdea:e0ae:2f75:0:41fd:7c9d:a728:4e1c) by
 mxsrv2.fe.hhi.de (fdea:e0ae:2f75:0:bfb1:9396:884b:a6ab) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.37; Tue, 28 Apr 2026 13:03:04 +0200
Received: from mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc]) by
 mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc%2]) with mapi id 15.02.2562.037;
 Tue, 28 Apr 2026 13:03:03 +0200
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 TRIG LabView
Thread-Index: AdzW/f4a1EFUReaRTu6WTbdrpuQTgw==
Date: Tue, 28 Apr 2026 11:03:03 +0000
Message-ID: <4587825cf4664e89b95d5116a2d390f5@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: 2B6OTQLUIS4BTM3V6STKDPUVLPGPM3LO
X-Message-ID-Hash: 2B6OTQLUIS4BTM3V6STKDPUVLPGPM3LO
X-MailFrom: prvs=57107974d=altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 TRIG LabView
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2B6OTQLUIS4BTM3V6STKDPUVLPGPM3LO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0741490125233342993=="
X-Rspamd-Queue-Id: EC81F483443
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[hhi.fraunhofer.de : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[hhi.fraunhofer.de:s=s1];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,hhi.fraunhofer.de:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[altug.kaya@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fraunhofer.de:url,fraunhofer.de:email,hhi.fraunhofer.de:mid,ettus.com:email]

--===============0741490125233342993==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4587825cf4664e89b95d5116a2d390f5hhifraunhoferde_"

--_000_4587825cf4664e89b95d5116a2d390f5hhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear USRP Mailing List Members,

We would like to use the TRIG IN functionality of the X410 to start the rec=
eiving of data on a trigger.

How should we modify the Reference FPGA image to achieve this? We would lik=
e to get some guidance regarding this issue.

Thank you in advance and please reply all while answering the question so t=
hat my colleague can also have the answer.

Best regards,
Altug Kaya
Research Associate

Wireless Communications and Networks
altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunhofer.de>
Tel +49 30 31002-680

Fraunhofer Institute for Telecommunications
Heinrich Hertz Institute, HHI
Einsteinufer 37, 10587 Berlin, Germany
www.hhi.fraunhofer.de<http://www.hhi.fraunhofer.de>


--_000_4587825cf4664e89b95d5116a2d390f5hhifraunhoferde_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
We would like to use the TRIG IN functionality of the X410 to start the rec=
eiving of data on a trigger.<br>
<br>
How should we modify the Reference FPGA image to achieve this? We would lik=
e to get some guidance regarding this issue.<br>
<br>
Thank you in advance and please reply all while answering the question so t=
hat my colleague can also have the answer.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug Kaya<o:p></o:p></p>
<p class=3D"MsoNormal">Research Associate<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Wireless Communications and Networks<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"mailto:altug.kaya@hhi.fraunhofer.de"><spa=
n style=3D"color:#0563C1">altug.kaya@hhi.fraunhofer.de</span></a><o:p></o:p=
></p>
<p class=3D"MsoNormal">Tel &#43;49 30 31002-680<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Seg=
oe UI&quot;,sans-serif;color:black"><br>
</span><span lang=3D"DE">Fraunhofer Institute for Telecommunications<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Heinrich Hertz Institute, HHI<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Einsteinufer 37, 10587 Berlin, Ger=
many<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.hhi.fraunhofer.de"><span style=
=3D"color:#0563C1">www.hhi.fraunhofer.de</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_4587825cf4664e89b95d5116a2d390f5hhifraunhoferde_--

--===============0741490125233342993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0741490125233342993==--
