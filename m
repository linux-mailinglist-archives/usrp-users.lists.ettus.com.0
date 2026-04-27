Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIzXLd5k72kIBAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 15:30:06 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D72174736C1
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 15:30:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57DB438A338
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 09:30:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777296604; bh=M26VDF6gH6mayatXHMZCk78cUCIQ8R0lEzo4R+KM6II=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=u0htdr2l8tLDGvyDMBp3tevhqQmbQNC5EOXuczUHFwbb673uIlkfrgCrx5w8ZoiO0
	 kk/IXTSeNFftZWatlymrC2HdVYUOy47eFiQt3usHRjEzBJRBUbB/8zaqRmF81WWKkr
	 MiLRJYeobW3SDfeS36Bka3//JrTpGTIWMkBR+G6E0tCNatTSoEB5+XXAxy/+SYEADF
	 hxddUujs2PaavFPAptecGBhBMyFpEgAXu6pEZoaVYljgSzQ4bGMFT04CuaQoxEqwkh
	 xr1CVX657ywXM4XdEw8WZ7h1dwwT/tbWjvgbkoSE4ZXbDnFJu25MeRMqx3HigwdueF
	 np3deaRaDtyHQ==
Received: from mx01.hhi.fraunhofer.de (mx01.HHI.FRAUNHOFER.DE [193.174.67.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 72ADE38A258
	for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2026 09:27:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="SdMuayFL";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=hhi.fraunhofer.de; i=@hhi.fraunhofer.de; q=dns/txt;
  s=s1; t=1777296458; x=1808832458;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=w3EmI5/f4TOAVkxogjUq+x3ukCd0+JWODx0UC+fXCvE=;
  b=SdMuayFLfe7q9pTiFqrc/ECCU9qKS8PiEH/Igl4jvMhkCWTzCoRnyaRK
   E/DScDrsJ1JjoT44RiFX6122JPenG1tXMCCEY4I7rcEGkz8ZneRs05YJJ
   ZMBil3kiTPPv2uZD3pP/jFzBS+ycS+sssjiFqk2wC5antRG0SdVPQutmk
   Jdt2YhwELZ9WQ6WFDtg4szBLu+WQPS23To9dub7UCuytu1pLvfvak2yny
   phcFuv9AXbckrt2h4mrgHkXYGApT1TIf7vq30TnFBo1TNZRYOdNdHVGWm
   fO40DdIblzOoOc4bFt7KytJvHWV+wUiYKZdyqoIikolkL/Rf5WPhdnS9u
   g==;
X-CSE-ConnectionGUID: 1OJQ0pQdT8i5+T04cy9ooQ==
X-CSE-MsgGUID: 3epzz1SmRnavT7dTbuVq1g==
X-IronPort-AV: E=Sophos;i="6.23,202,1770591600";
   d="scan'208,217";a="1119174"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO mx.fe.hhi.de) ([172.16.0.106])
  by mx01.hhi.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 15:27:36 +0200
Received: from mxsrv3.fe.hhi.de (fdea:e0ae:2f75:0:859b:1ee2:31f7:cd7b) by
 mxsrv3.fe.hhi.de (fdea:e0ae:2f75:0:859b:1ee2:31f7:cd7b) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.37; Mon, 27 Apr 2026 15:27:36 +0200
Received: from mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9]) by
 mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9%5]) with mapi id 15.02.2562.037;
 Mon, 27 Apr 2026 15:27:36 +0200
From: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 Triggering
Thread-Index: AdzWSNCvFmndUuavQU+G629iL5lKFw==
Date: Mon, 27 Apr 2026 13:27:36 +0000
Message-ID: <a17be7f0c99d446b838808fb0ab2104a@hhi.fraunhofer.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: GQD2TXDTCSH5DFQ4AJLUGRFGWYIX4GYO
X-Message-ID-Hash: GQD2TXDTCSH5DFQ4AJLUGRFGWYIX4GYO
X-MailFrom: prvs=570078262=dennis.jurk@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>, "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 Triggering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQD2TXDTCSH5DFQ4AJLUGRFGWYIX4GYO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5831813414293567103=="
X-Rspamd-Queue-Id: D72174736C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[hhi.fraunhofer.de : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[hhi.fraunhofer.de:s=s1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,hhi.fraunhofer.de:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis.jurk@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]

--===============5831813414293567103==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_a17be7f0c99d446b838808fb0ab2104ahhifraunhoferde_"

--_000_a17be7f0c99d446b838808fb0ab2104ahhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on trigger.

How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.

Thank you in advance!

Best regards
Dennis Jurk

--_000_a17be7f0c99d446b838808fb0ab2104ahhifraunhoferde_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
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
<body lang=3D"DE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone,<br>
<br>
I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on trigger.<br>
<br>
How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.<br>
<br>
Thank you in advance!<br>
<br>
Best regards<br>
Dennis Jurk<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_a17be7f0c99d446b838808fb0ab2104ahhifraunhoferde_--

--===============5831813414293567103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5831813414293567103==--
