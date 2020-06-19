Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC70201DB5
	for <lists+usrp-users@lfdr.de>; Sat, 20 Jun 2020 00:02:52 +0200 (CEST)
Received: from [::1] (port=55040 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jmP60-00033q-Li; Fri, 19 Jun 2020 18:02:48 -0400
Received: from email3-east.aero.org ([130.221.184.167]:27217)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=432bb4ea2=eugene.grayver@aero.org>)
 id 1jmP5v-0002xM-Od
 for usrp-users@lists.ettus.com; Fri, 19 Jun 2020 18:02:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1592604163; x=1624140163;
 h=from:to:subject:date:message-id:mime-version;
 bh=MqWexrPJilmrMczKTmQWibRN2gZJk63P/MdnZSLTkV8=;
 b=ZjBrISeqcRpqRwMxTTtj2jVfYfHju1L5y+kcIvNFcLYZFIQPgTyOvLQw
 uI/G1+gwyY0LbPHcEoXQtqw0lprA+aWTrYWOsNO9iUCOl5Ksui9CPUZ/N
 4r1ll3Ht2VCazQPhiqVbk8Ipb21/ZdNn2sSUrg4oiKSmlPUxwROOzbV97 g=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9657"; a="3063836"
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; d="scan'208,217";a="3063836"
IronPort-PHdr: =?us-ascii?q?9a23=3A7HuJXRz5Ct8kv6nXCy+N+z0EezQntrPoPwUc9p?=
 =?us-ascii?q?sgjfdUf7+++4j5ZRSOt/prkRnOR4qIo/5Hiu+DtafmVCRA5Juaq3kNfdRKUA?=
 =?us-ascii?q?NNksQZmQEsQavnQU32JfLndWo2ScJFUlI28Hemd09PF5W2a1jbuHbn6zkUF1?=
 =?us-ascii?q?32PhZ0IeKgHInUgoy32um+9oeVbR9PgW+0bKl1ahKsolbc?=
X-IPAS-Result: =?us-ascii?q?A2E5AgCPNe1eh2lAL2hmgQmCbS9RdoEzCodgA4U4i0eQL?=
 =?us-ascii?q?Yc6A1ULAQEBAQEBAQEBBgIfDgIEAQECgVGCdAKCKiU4EwIDDQEBAQUBAQEBA?=
 =?us-ascii?q?QYDAQICEAEBAQgNCQgphWIMg1V+AQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBBQJDSQxKGxMBASYFDREBgQAmAQQBGgEZgwQBgX5NAy4Br?=
 =?us-ascii?q?H4CgTmIYAEBc4E0gwEBAQWFQRhXgTcJgTiCZ4JMDzaGeYFMP4FUh0qDRYItj?=
 =?us-ascii?q?yOJQIspkCMoB4JdgQYEC4YzkgGCcYkkkmaRK5oshBwCBAIEBQIOAQEFgWqBe?=
 =?us-ascii?q?TMaMIMsCUcXAg2OOINXhRSFQkMxNwIGCAEBAwl8jm8BgRABAQ?=
Received: from mail-bl2gcc02lp2105.outbound.protection.outlook.com (HELO
 GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.105])
 by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 15:01:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltcnYU+UE1eOwFO1j0MeLhf+SBWkTm6L0a6EfcCYQIaUh1Tp5n3UY+8iQc4QzAJkGM/04PTfhzS4PcLswo1jPam3265/ikBX+rAngeoqX1HGHsEyKVPJeW/PBtGIIE7QzPG/waXXEbTp25BwIEw0KO39KCDL4crc74JYPjiEFs+clO1Y8wIaBXE6TIwP2LdDRpw1Y7wdWMalwCt/z/t/j03chfGEfnczq2QqU9fkIb9fU7BbARTyECryoxUPa0wDv1PPXI6uXSLiKk9awFqkEOSjQC+2qigLNcD95EYXL3tzE33irOsgHPbkmsf+KBYU0BQTyQojHC/Rk4CWjqR3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Flt8DKQcjp7VyxTBAO8ppUfo49uHWOlv5y8JjBl9+LE=;
 b=gnV6oSt0BpiogHVuZ9tC+5qcumGTRX60IPLbz563u4BUJvzBdL4k0QfdT/pG/RUCDnH/EmG22nr32ZxXpFix2+I6Deqm27IwL4c0tkzSW8t2riF1TnOjWm9gLL3nEkMJ6D1Bvlcjp99nZdEZm6kNfYJla6etqIHaz0wbMLVix5guP/qb0edoVOiaO7n37P6HTFPSgu1KjdJiJnvIJj2gaT5yutzX0rh34qTDIAYYKgrD6jLoId7gBNpskaJuq8puH8j3Q0W+vgnzzWT9xcI5Ei1aGSYYD9SG6r0a0RZYF+m2ZRhohSXEaNxuLGwyiyGRyRokAlwR2y6z+4ka0JKPFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Flt8DKQcjp7VyxTBAO8ppUfo49uHWOlv5y8JjBl9+LE=;
 b=La5snP/cW0CCkAAXfEXsjH5IdGFWYfEu/ZW1F3ExuNdJScQ7VygjrWeMv/3gWpZPYxpEwgLHN5olh8cfRo73jqT2zw7rFF083386B9Dty5C0VcE+P4b2RCteccTOapmmNFmoHm+aY3YCXJIa4uV7tnZXJc0bTNd1c2TUdvosjB8=
Received: from SN6PR09MB3726.namprd09.prod.outlook.com (2603:10b6:805:a::17)
 by SA9PR09MB5327.namprd09.prod.outlook.com (2603:10b6:806:1d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 22:01:38 +0000
Received: from SN6PR09MB3726.namprd09.prod.outlook.com
 ([fe80::91d0:b829:c67c:4578]) by SN6PR09MB3726.namprd09.prod.outlook.com
 ([fe80::91d0:b829:c67c:4578%6]) with mapi id 15.20.3109.021; Fri, 19 Jun 2020
 22:01:38 +0000
To: "'discuss-gnuradio@gnu.org'" <discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: 2021 IEEE Aerospace Conference
Thread-Index: AdZGhIkiTDADhLUcQ7e5XlkgY2za2g==
Date: Fri, 19 Jun 2020 22:01:38 +0000
Message-ID: <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL1RoZUFlcm9zcGFjZUNvcnAiLCJpZCI6IjUyYTE4ZWIxLTNjZTMtNGNiYS04Mzc4LWU1YmFiMzM4ZWIxNSIsInByb3BzIjpbeyJuIjoiU2Vuc2l0aXZpdHkiLCJ2YWxzIjpbeyJ2YWx1ZSI6Ik5vbmUifV19LHsibiI6IlJlbGVhc2UiLCJ2YWxzIjpbXX0seyJuIjoiT3B0aW9uYWwiLCJ2YWxzIjpbXX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNy41LjEyLjEzIiwiVHJ1c3RlZExhYmVsSGFzaCI6InVvNklwdThaNHdSN1IySkJoajJUYVBySzhEY3pqSkJHeEdGQ1V0Q3RYZXNtbUxPV2RoYkt5TEFLdEpDQnNXdXAifQ==
authentication-results: gnu.org; dkim=none (message not signed)
 header.d=none;gnu.org; dmarc=none action=none header.from=aero.org;
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 20ca504b-432f-4d9c-e5c6-08d8149c5778
x-ms-traffictypediagnostic: SA9PR09MB5327:
x-microsoft-antispam-prvs: <SA9PR09MB5327F7EF99D19DDBD1B50EEEEC980@SA9PR09MB5327.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j++x2Zmr6TsiRhVK68IHAt46311B1wZZJESeWV66ifqFrqvvqfqyGjHgKQzWQ6lHF0nNxOj5x0V9w/SUqxNMtUWzs8yHt8A5YOAhhZegBMcghN7BgrsucYowGQ55yz5cACkeQ3jZJvU5e54vxiEN+hTXtBdj5I+OEkZj7Mua6XcFpayLnbXcdnl6k8HobwPx62RnZBmLXKH/ZdE7iffQlzUP7KhVY8UITjztHQ/XlMmZcofcXcs7e3R5aMlDPkCoGZddI3hAjFKkYhxj10e55yfwMw5wNtNJyYQU9s0cpAUDw1WKR1FDw8sfG39lNjEuWMnKls5jEdS9Tqxu4yeHHTwCfmSg2iu2HOIqPstQtYWoHTXPoQyd1ZsME+rfbXNViY2i4fp3LDDdEVql3CH0qoZZQ8mLjQF1LOavBos0zMmiOPOlS61ZTYOoTWt+PLP5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR09MB3726.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(7696005)(9326002)(166002)(186003)(66446008)(8676002)(66946007)(55016002)(9686003)(110136005)(71200400001)(66476007)(64756008)(66556008)(76116006)(26005)(6506007)(52536014)(5660300002)(7116003)(44832011)(33656002)(8936002)(316002)(478600001)(86362001)(2906002)(491001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: QWBwb7doSmwk2osMM3vLQO6WRdW9R7MKwlneqW92SjqC9vwyqzKDxKirzL3sctZgXLfWpj/D/qiG+CZabvZcNNSl9tqz+GxmDqHBx7nO/y4nf9H4k3ZZpqqpD3GQRKLkHmSgEQeseo8peqIdBZo2Sp9wLOu4dp3LPw/sKd8qIxggdh84DE4kiGmtGc1SvD2aLyNPv3AOVszVcDqKrTWwnl+FJXwOSeKFNCMwdmjGfMXkE+7QwzEJV96x32FEWM7Daz8f5bS8oyBEalEHJOzkdwSWcf1Df+2I+ihNnLZ5iz6PFVJH6pHWE7AOMjUIpt89ABiLQmhNirpn6AbqgP8ECRkllND4KX5fWQjjWME5zJRlVMnQv2cACCr1RAfNUrIr5/qyggtFbhrSkvCfh6BEabqJFEcZ7zweigsFwVl9Cz63t6eXGzoVqr1nQ2wVICNr9d3lAqLssOXYtbwYYi83kfMWxYG+cLQhLHpz/hHIiW8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ca504b-432f-4d9c-e5c6-08d8149c5778
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 22:01:38.6940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q6wPkE7uHC/qDW1znl+AUMQjV0EhiWzCnPg/iqGdNFUeRaLCoJFAvlrkHDavLok3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA9PR09MB5327
Subject: [USRP-users] 2021 IEEE Aerospace Conference
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Eugene Grayver via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Eugene Grayver <eugene.grayver@aero.org>
Content-Type: multipart/mixed; boundary="===============4923405311268178522=="
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

--===============4923405311268178522==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR09MB3726D7D87F81583127681C3FEC980SN6PR09MB3726namp_"

--_000_SN6PR09MB3726D7D87F81583127681C3FEC980SN6PR09MB3726namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am chairing the Software Defined and Cognitive Radio session at the upcom=
ing IEEE Aerospace Conference (http://www.aeroconf.org<http://www.aeroconf.=
org/>).  This large conference will take place March 6-13, 2021 in Big Sky,=
 Montana.  The conference provides a world-class technical program and prov=
ides excellent opportunities for both networking and recreation. This is on=
e of the few conferences where SDR can be put in the context of a complete =
system and can be applied to new missions and concepts of operations.

Last year there were a few papers dealing with application of machine/deep =
learning to radio design.  I hope to see even more next year!

Abstracts are due soon, but I can take them a bit later as well, while the =
full paper is due end of October.  This session will focus on flexible radi=
o architectures, including the use of GPPs, GPUs,  and FPGAs.  Reports of e=
xisting systems and testbeds are of significant interest.  This year I'd li=
ke to introduce work related to machine learning as applied to wireless com=
munications.

Please forward this to your colleagues working in the areas of SDR and cogn=
itive radio.

Regards,

Eugene.


--_000_SN6PR09MB3726D7D87F81583127681C3FEC980SN6PR09MB3726namp_
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,sans-serif">Hello,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">I am chairing =
the Software Defined and Cognitive Radio session at the upcoming IEEE Aeros=
pace Conference (<a href=3D"http://www.aeroconf.org/">http://www.aeroconf.o=
rg</a>).
 &nbsp;This large conference will take place March </span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">6<span style=3D"co=
lor:black">-</span>13<span style=3D"color:black">, 20</span>21<span style=
=3D"color:black"> in Big Sky, Montana.&nbsp; The conference
</span>provides <span style=3D"color:black">a world-class technical program=
 and provides excellent opportunities for both networking and recreation</s=
pan>.
<span style=3D"color:black">This is one of the few conferences where SDR ca=
n be put in the context of a complete system and can be applied to new miss=
ions and concepts of operations.</span></span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">Last year there were a fe=
w papers dealing with application of machine/deep learning to radio design.=
&nbsp; I hope to see even more next year!<span style=3D"color:black"><br>
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black">Abstracts are
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">due soon<span style=3D"color:black">,&nbsp;but I can&nbsp;take them a=
 bit later as well, while the full paper is due end of October. &nbsp;This =
session will focus on flexible radio architectures, including
 the use of </span>GPPs, GPUs, <span style=3D"color:black">&nbsp;and FPGAs.=
 &nbsp;Reports of existing systems and testbeds are of significant interest=
</span>.&nbsp; This year I&#8217;d like to introduce work related to machin=
e learning as applied to wireless communications.<span style=3D"color:black=
"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Please forw=
ard this to your colleagues working in the areas of SDR and cognitive radio=
.</span></b><span style=3D"color:black">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">Regards<span style=3D"color:black">,</span></span><span style=3D"colo=
r:black">
<br>
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black">Eugene.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN6PR09MB3726D7D87F81583127681C3FEC980SN6PR09MB3726namp_--


--===============4923405311268178522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4923405311268178522==--

