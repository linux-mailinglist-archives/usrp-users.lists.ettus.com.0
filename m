Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BEB134C14
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 20:50:20 +0100 (CET)
Received: from [::1] (port=53536 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipHLO-0008AN-Em; Wed, 08 Jan 2020 14:50:18 -0500
Received: from mail-eopbgr700050.outbound.protection.outlook.com
 ([40.107.70.50]:29025 helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1ipHLK-0007dm-Pl
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 14:50:14 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqN2QVMqs2ljo2OdCkfqTnV8rLMT6QSl24uyNML9wymUjfIPefsq72L+5gypBVG1UjKV8t14qwXljzWNAu5iQAxcVTdUdDxWeG2BCFsHxyvq/jrBYo8dX1aaP4xKfF+eCKFsGC7DPUmHpvDSk9M3vPx37ScwjR5qzbD6DsKvcyza1guL9c0wfw7M90RAycDvk2ZflgywZJrNrMRW6AHBd9/uAcHMm6oHEh/16BUsD+Xu9vNYdECNJjNJ2ObYL62fB0lrjHt28A4TOBVA01ftl3QpJw6zVmoXSwCfia+7oMGZd87JxnqKM9IbukdFqXE8RNo1s+oo0zaZqnqnxYMZyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJmlakuhH82FSta7NaiNSITUPNZu8fjak/ErZ8IaWlU=;
 b=lUWybFDoNDBKF7OH6+fOJKie9kUY4JvpeigbeVKH9ItEOXKdbw0EcPHoyOJvQ61PFBD+VkvI39baYWvoIfIepsUlgDc8ZKtbjtSd6dMp79NmXGoNyjxp0tPquA0MqNDnh3W5aqXPewfGjLD7HWlZ4kE7MJHlML5nH1KcW2FxvSjwEGf10PL5cDyClj4Vgn8oQIeG4MxUVp2q5POm32DW5l0YCu8vcJNd+fDv6H5/kzPRUercRhgLEy0h6icMlh7jaWTtYSGY97npmMhVxvxEORdBNxr4o36KfhJ0yw/7gm/JMiMnBVf3uXsE0NtTJ/yM69Anon1DtMXo6LM9dyAA7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJmlakuhH82FSta7NaiNSITUPNZu8fjak/ErZ8IaWlU=;
 b=APCKYGux5x9tw3YUYUvoGIMrUs80BitCHOD3+T2+ms9FFoxOTVn2gqW6UTpGiGa7krT1iWSvpm9c5GK7D/7f0AT68tkUM/byG/TmbKlSmM600lPxxKj5Sp1iTuUdQpUH3G4AZoZX4AVTXFjSeR4evTK1TGDLGbGod35imHNL3cY=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2122.namprd19.prod.outlook.com (52.132.147.161) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 19:49:33 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::4c9c:7120:d637:71c5]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::4c9c:7120:d637:71c5%6]) with mapi id 15.20.2602.017; Wed, 8 Jan 2020
 19:49:33 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Daughterboard configuration options
Thread-Index: AdXGWHw8s4ej/MmyRDeTfn/cjcRkTg==
Date: Wed, 8 Jan 2020 19:49:33 +0000
Message-ID: <MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 333df378-4811-479f-0925-08d79473e214
x-ms-traffictypediagnostic: MW2PR1901MB2122:
x-microsoft-antispam-prvs: <MW2PR1901MB212203692E44EDE2F0E66C28C63E0@MW2PR1901MB2122.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(39830400003)(396003)(199004)(53754006)(189003)(165144002)(33656002)(5660300002)(6916009)(81166006)(81156014)(8936002)(9686003)(55016002)(316002)(8676002)(52536014)(3480700007)(2906002)(508600001)(66946007)(76116006)(4744005)(66446008)(64756008)(71200400001)(26005)(7116003)(66476007)(66556008)(6506007)(7696005)(86362001)(44832011)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2122;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aZHkA4K3N0PH4FzQEEdnAwOipIvb4rLugdw5Neh4TnggnsO3ToHSlxgA6wYeqeKRNm56gV74KgB+tfn/o16xGlxgm1v6SR9ehhuoLHKFX5qJ8hc4FP3MwlgyqpUnmNN7x9Evn69Kea0A3fcVgqTfrc4uwcFtWtONKOBC/drUlU2tsXkka7oHctP9+twzGNmx7Q9pYSWmC8xBoWOlQi2JukpdspANXZNIR25tlvcXH201zWxp8RwxPn1c8ZO74AL2zDGFuHZ9usvQQCUqxk+AvYmEZIIRCRpP8oZw28D8tk2eBmmtjcTdRlUAQxAbubEPfsoPIhEdTuhms+UxHnOdN900LiM263UYfLudlh1qdjkmZdfKbKyxqHzhH5WfLGOXlwHj7bQ5KMG8LCQJhNHt4HzWeKOhfRU/UnQ/XtjuQs7JrOcGUbE7mDLniwEYyFxZP/nqZJ5e/bD+MpKKwyDBUYBIuyw3aSLKhOF6Ve/klpHh/B/cH7FP0FEfN1j2fL5KrRkhsX98qFmnuq1Q3E8CDw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 333df378-4811-479f-0925-08d79473e214
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 19:49:33.0458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9g+bfZJroMbn1t0lrvJxMALYmZ9fYhjGWy+y9nwVF14dn3Wec2DIZXjhrlqnjMiFH+mFEHIgsoaHZz+/LNI9ILK8LLfgm+W/xdC7cO1jmAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2122
Subject: [USRP-users] Daughterboard configuration options
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============3578080812642017612=="
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

--===============3578080812642017612==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0MW2PR1901MB2137_"

--_000_MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0MW2PR1901MB2137_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey All,

So I was wondering if anyone could tell me if the UBX Daughterboards are co=
nfigurable at all, and if so how? For example, looking at the block diagram=
 for the UBX 40 Daughterboard, it seems like some of the clock parameters a=
nd filter parameters are that should be controllable but I have not found a=
ny documentation on this. If someone can point me in the right direction fo=
r this information it would be greatly appreciated.

Best Regards,

Jerrid

--_000_MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0MW2PR1901MB2137_
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
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hey All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I was wondering if anyone could tell me if the UB=
X Daughterboards are configurable at all, and if so how? For example, looki=
ng at the block diagram for the UBX 40 Daughterboard, it seems like some of=
 the clock parameters and filter parameters
 are that should be controllable but I have not found any documentation on =
this. If someone can point me in the right direction for this information i=
t would be greatly appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0MW2PR1901MB2137_--


--===============3578080812642017612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3578080812642017612==--

