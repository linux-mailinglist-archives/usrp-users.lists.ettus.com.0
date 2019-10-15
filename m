Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 625EED7FBD
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 21:18:42 +0200 (CEST)
Received: from [::1] (port=52630 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKSL7-0003kF-GK; Tue, 15 Oct 2019 15:18:37 -0400
Received: from mail-oln040092008064.outbound.protection.outlook.com
 ([40.92.8.64]:33473 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <CarlMacGentey@msn.com>)
 id 1iKSL3-0003cd-6P
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 15:18:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avDfQC5TSp+y4r6D9fFPDD33Rxw74O0QbnmVSLD3o0l3OW4dT8p307QyKKXpymMfcS8uZCSTtz+M+bq/aBtvfVN4nX8xiHhjvaaGntb9XK+EspFfnF56eQpqANtK0RwH/j17PSzp6kzbYHC2yJsIYBFXnTAS9wcNdZMJiEhAEHxoMF3ULop4Iwv2q8bkSWGaynMO69OOSCH/pBwPQSm3jUmUnzJrLh03nSaU8y4iTziw2BBy19/qWvtHesv8KE/ad1C3YezGX8/cdnwwU0dEgiAqlHVqVuSL+Sb7mP7NadR4vWLlXzMuHwEoubXGXuidKHcVLWiJswsarOfT2r9VLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xIXZ13XL2UJGBMagAHp2gn+FSzHorW9FDhtxf2WQOMs=;
 b=YYHsg4bIyM1kNYGT26GAY1M5DEgEc+DSkeauLQikz+/5eVjwMxiEbRTKu09v+Bk7kz461tt0HmMIK7GCrTx+eqDV+vz6xHCai8cPF/ELdDOVP77G6VVZqL18X0iMPxzKNY+9vFWVRWe4DtCdzDENcgXgKX3jwjcWe7yz+4Jns1VAq5QVDObcMJLQ8kwnBHY0vRzvLm+WI/tmMmRlRWSsFRt9D9KH9gFE3S1NSZ+x4PerT4RFeyCJZ9iOjkoh9wUAaG+KQA92YEkXhIt8cSZJ0tQyflOHUMBSqvweMwkAw7N9in7GUKqom1VjQsyrXisCCMosBZz+eJfWkSDpRTzDPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xIXZ13XL2UJGBMagAHp2gn+FSzHorW9FDhtxf2WQOMs=;
 b=P1I9r0Us6tT96ye7sM9MW3yj1EdsPPsywbBF1uDnXMA2ZNkE/jdXBl+HFRw1NTYdK4T8XvsVuNftFsurXpumHPTCWsCTmiFH72AH2F3+SKqRg/X1hH+RhXYLj6/oVmqP4GUan6I1PESTa9ysAEj9HlZKrPT10OzEGIRMUD0zRs0dK77N71xgkqVZaEEY1US1RGTvz2/BA9p9FFf/5TmCQrerNT4+8D8MFSDPwUF9M73402HZWHO1mRuCJ5ocRSD3ghkzpcuMIew5atYNs6UBD3pp/jXhf6tH/7ylskTXAKQ4/PStqFEe8ErRb6tFDJHU5Ux1GXfhAC4wuSu4z5hkHg==
Received: from CO1NAM03FT023.eop-NAM03.prod.protection.outlook.com
 (10.152.80.60) by CO1NAM03HT156.eop-NAM03.prod.protection.outlook.com
 (10.152.81.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.21; Tue, 15 Oct
 2019 19:17:51 +0000
Received: from DM6PR17MB2794.namprd17.prod.outlook.com (10.152.80.59) by
 CO1NAM03FT023.mail.protection.outlook.com (10.152.80.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21 via Frontend Transport; Tue, 15 Oct 2019 19:17:51 +0000
Received: from DM6PR17MB2794.namprd17.prod.outlook.com
 ([fe80::b50c:acd2:f5c6:435]) by DM6PR17MB2794.namprd17.prod.outlook.com
 ([fe80::b50c:acd2:f5c6:435%3]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 19:17:51 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP + SDR#
Thread-Index: AQHVg4yU6522pzZNQkKlP8Sh+obMsg==
Date: Tue, 15 Oct 2019 19:17:51 +0000
Message-ID: <DM6PR17MB2794E450BF99E1C31CAB3255B2930@DM6PR17MB2794.namprd17.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C63AB83B6C5A622C6BC0BF2B575E13254350E7DADB4928A56D6A744CA4B02961;
 UpperCasedChecksum:1C120648D32189DCCE1EBE7C5E081382C4941EADE46240507615E107F3C1705D;
 SizeAsReceived:6695; Count:41
x-tmn: [mVdtZuuMRokmc+CtmSE/o9MrPTlZnyVomCzl9q0NLHn9eVyuiEscegjbp4t3fbuo]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: CO1NAM03HT156:
x-ms-exchange-purlcount: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DdmsURCpGUZ6z2YeLLUoHk5pC/VyJCCdXla4OApWIPlv/qL5UXpyBQ4VqhwIL+Gh7EmaXH6HHTalECcGdUzJN/Jkf//6Bw83aHVYuBxWoZWsXxaFsPs50DrRwgOUtVlTBWStsNZAcNoycVWVCjxM5l2KRCCCVMFUfqwV1r1l735bIkGewXYcdylktAevDDhZ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 45848a20-f1c9-4e74-1660-08d751a45fb9
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 19:17:51.7437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM03HT156
Subject: [USRP-users] USRP + SDR#
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Carl MacGentey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carl MacGentey <CarlMacGentey@msn.com>
Content-Type: multipart/mixed; boundary="===============1658061081541913921=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1658061081541913921==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR17MB2794E450BF99E1C31CAB3255B2930DM6PR17MB2794namp_"

--_000_DM6PR17MB2794E450BF99E1C31CAB3255B2930DM6PR17MB2794namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Might I run an Ettus USRP on a Windows 10 Pro lap top with the software pac=
kage SDR#? Simpleton that I am I would imagine all that=92s needed is some =
kind of a dynamic link program like =92Zadig=92. Am I right or wrong?  Supp=
ose a connection might be accomplished. Would I need two USRP=92s to decode=
 public safety digital or could I get away with one USRP?

Thanks for listening-

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10


--_000_DM6PR17MB2794E450BF99E1C31CAB3255B2930DM6PR17MB2794namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">Might I run an Ettu=
s USRP on a Windows 10 Pro lap top with the software package SDR#? Simpleto=
n that I am I would imagine all that=92s needed is some kind of a dynamic l=
ink program like =92Zadig=92. Am I right or
 wrong? &nbsp;Suppose a connection might be accomplished. Would I need two =
USRP=92s to decode public safety digital or could I get away with one USRP?=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">Thanks for listenin=
g-<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM6PR17MB2794E450BF99E1C31CAB3255B2930DM6PR17MB2794namp_--


--===============1658061081541913921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1658061081541913921==--

