Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9412FD4B2
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jan 2021 17:00:05 +0100 (CET)
Received: from [::1] (port=38698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2Fto-0002dC-G5; Wed, 20 Jan 2021 11:00:00 -0500
Received: from mail-eopbgr100137.outbound.protection.outlook.com
 ([40.107.10.137]:54592 helo=GBR01-LO2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l2Ftj-0002Xt-Vc
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 10:59:56 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzOHKu6XezVR06MKIwBJSsexh/giqcaMXeXkoc7JEqT7RXmKUVDNY2yXbMYGCs2cOnUKParoJ+VwkIhSvBjbVu3bZWOK0GbdTQJM0iUPKx81x9zIZyVzq5uYVcUEkEM5Fmtjwl5xfbk/3PsG+9XfUzjv2OleaFy1rq+AAw+w2004IhYfXFuhFMtJcCtYAQoSs4+d9XtN6NMjCFv6+iAxYFMVifv8TJ9iAaoB+RdgtfLeGv0yGjJ+Wrlr5KdCmH6xBHts7N/31yTIfmejKSMPTJCf2y4BmOJhSpKKpe+rMYJWgsQ64Lbvu5v1pVji3aXV+cyUXn6BNGGKVg6KdIw1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KW5ITZ9XL+EJziiuKYUhhG+06VCEWrhMu+525yMI0o=;
 b=H+VFkCKrkaxn1Z5g1rjKjTAmjbxvaaH/Wmqmj5AFxsY30QwObVaC7evMdbNkzhpAHjK2XOJ0bBu/A7dE8wneXZV/Wi3PNerZTlwekg0EGI5skRc484Ofl8hhsi/I/ltcBTtrbUiayHk8j67s/9ktWmO26NeSQXZ+9mCefDlj323BKOT/UeqmlmX5x3QahTKt6phsLl8FfWxUgmseRo7xp1FLs6FEn010UAKB1nhnoU1VWUoQa2vbaZTUbQQ3fRob6FoxO89JTz5HhAdczf6ziKLDv3uu6N44KlDhy2gU9WqJScDocvK/sX9pQWS1zzfJB075uCt9g92Ddl/kPMe0TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KW5ITZ9XL+EJziiuKYUhhG+06VCEWrhMu+525yMI0o=;
 b=fnQ/W2ZyDr66+uTu5I5fMxdNPuDFS8BSzRodrQSUjXgkTk43hyC/WAE+M1LkU8Z1LFdCrdmwGIzriScsNpT+ECUXi6BAAbbND6iqAQpgzCQh2mUerFFFyhyf7pI8HB6Ae/gFZ70e/5aZnFYk4edO9eZ/+DcfNwGCtdIWpCNoZvg=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO2P123MB3999.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:179::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 20 Jan
 2021 15:59:13 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f%6]) with mapi id 15.20.3763.014; Wed, 20 Jan 2021
 15:59:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building FPGA for E320.
Thread-Index: AdbvQWR96dQsbFvLQvKRJIg83tSR/A==
Date: Wed, 20 Jan 2021 15:59:13 +0000
Message-ID: <LNXP123MB3724A05F94CE7BAABF0F49A5CAA20@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d5e54da-fa2e-481e-445f-08d8bd5c552e
x-ms-traffictypediagnostic: LO2P123MB3999:
x-microsoft-antispam-prvs: <LO2P123MB399949C047450C48116E1368CAA20@LO2P123MB3999.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O4uYuMvzVmOLpm2AaJb5Oj7QOoW76qhtN+oUzdjk6m1dSWJE1wCi1eMoV4pc52rafDIsScu2hvYGnUp/QGy/CyYp3LftXPN8TxYLHkMLAKlPEuIWXR2ArVsTHSil5vFwGoTKkgporeYXG6C0PcZe98rb++NnmRys/+eIBuDNR/e/W35zOrs5KVCXfvSDTC4AYC6RnlXdCOMynoxRAkiNUVdaYSmsUEFkyS7VXInUtatqpEfI46CEIB14fPFTJkEpTyeH5scgN4fqfiQ2JTMqw4AdXEi7tW9TzWObHzNomKD3MijF8gzq/LSAvTnmgkK1YrC1I94OiEGRaa+zhrow6kjl8WXTfM90emfy3nemBV/PCQ2ildjKvlclq21i0m46Q4g0CScnjkOGl1BRmH3h+nXTMxBv3XUUqJNAL6Xow0bxap0iTOlBJonJiN6XYh/G2QokJlgEjO+jg7WqvugxYRfi3ccwIAnFM3ZPI/KABDYWAk4aKlyh+WiB/iToxPgiQ0zz1oONqLbKE4B2eZfZhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(396003)(366004)(346002)(376002)(136003)(76116006)(64756008)(86362001)(71200400001)(478600001)(9686003)(52536014)(316002)(55016002)(83380400001)(33656002)(5660300002)(66946007)(66556008)(8676002)(66476007)(66446008)(2906002)(186003)(6506007)(6916009)(8936002)(26005)(7696005)(9326002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YS4I2CKGxcd7YKQbhrPVPS28e+yXpBkOmb1XZqU1n3d13kLR9Sc3ItDgRDHi?=
 =?us-ascii?Q?qlIEsrCyGe9VMpaqs9p9nbtKZXzELitGAXUyehTd5jUtUCgfG6EszD2NCvc3?=
 =?us-ascii?Q?QAzIVtFsedX+EfZkW1EN0fkNpmvp12+JaonElD+AZTz1Uh/ZKWtcWaJGlQoT?=
 =?us-ascii?Q?2TfIC+Gb/gzjf5H5/iH06PxP+HarS4pbKlWgXIDEWD9ltvKGSseDsCUKk2rW?=
 =?us-ascii?Q?xRnTxAf57fbdcS+y2xk9/Q0e69fddVGfW0XPDzn4S0vXV+1/gQW4Val3QDn/?=
 =?us-ascii?Q?xr65ktScK+abrIWbdBQzJany0hYzsCMlmo1EQ70PM+FC3PJtXt4CmozrXyuj?=
 =?us-ascii?Q?pfeEYiTYYBDD8/IDW9Y4FB6a5NiIlblfd0omT1jKC/UYX5o+rlERlQ9Dd6Gw?=
 =?us-ascii?Q?zlc+TZ2YbFXXr+JoaODX1WbOKVa5ctHpDTRf8FQpOB9z13mxpTF39cCCD5Yt?=
 =?us-ascii?Q?HnynCVwjWaRCS7KtNXTejCvsRYUxNWiBRgnuuAkrjbVvBgNgFJcX5yYZDZcw?=
 =?us-ascii?Q?Cm1WVPp8UcwQyTYX2wiJ6ubjT3Vey9kGKqDfvua2jnSo/1zhE5SPX8ZHEKX4?=
 =?us-ascii?Q?bGNf5HewIwa7Fs6UbDagthlavNehRVf/AX0ACE8jDPyUiECbBTfflQU36nAG?=
 =?us-ascii?Q?Y64BKaGc1caTJMs7/gNdwp1kdskZ7tvlmejgTb14FjjquHKyqedHs6t8XG6Q?=
 =?us-ascii?Q?TXnnXWVs1Tuza0mdHuT8G2/L7p/qCMqOGt+31V7tCK77XT5geJnv+7rrtIiz?=
 =?us-ascii?Q?mvrj5B2zKe8S1Qx3ZIMYYoagqc1mwah/aAW8RDpRH4lQ+X2MmqRY3YHwXvFa?=
 =?us-ascii?Q?0OTWUz1hh6p6t69QLalKA//ndq0zLaAvVqdsA65NlO0GGMAYpSFbR0Hs4FN9?=
 =?us-ascii?Q?RWa2MKxfjnlofhLXXN8JfofoILZzMSuPetL/DbV9bjxMx3g3lVL+5y2HHc/k?=
 =?us-ascii?Q?aMKuismr7D70ciSz7TMD2redCi3BRyeRDgZKv0/uf1Q=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5e54da-fa2e-481e-445f-08d8bd5c552e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 15:59:13.6104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: swvCl8LnqpHQ8SyX0W0QttHOsQK0vxDjTgwnn2Z3e2EdwA0MUoSZN1jmo91PqlcbBn0ke78c4QNzzmBS4NxcxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P123MB3999
Subject: [USRP-users] Building FPGA for E320.
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============8896391151068883971=="
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

--===============8896391151068883971==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB3724A05F94CE7BAABF0F49A5CAA20LNXP123MB3724GBRP_"

--_000_LNXP123MB3724A05F94CE7BAABF0F49A5CAA20LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to build an FPGA for the E320. I'm new to Ettus products and RFN=
oC so this is my attempt.

I'm working with UHD 4.0.0.0 and have been following the tutorial from the =
2020 GNU radio conference, RFNoC 4 Workshop.

I've used rfmodtool to create a new OOT folder structure. I've then used "r=
fmodtool add" to add my own IP block. This creates a default .yml file for =
the for the X210 in the icores folder.

Next I've copied the file e320_rfnoc_image_core.yml from the uhd source dir=
ectory into the icores of folder of my OOT structure, and renamed "demod_e3=
20_rfnoc_image_core.yml" to match the name of new block. I just wanted at t=
his stage to see if I could build the default image, so I haven't changed a=
nything in this .yml file. It seems that I needed to add the IP core to the=
 OTT to get cmake to pick up any build targets. At this stage I just wanted=
 to check that I'd got everything correctly installed and setup on my machi=
ne to build the E320 FPGA.

I've then created a build folder and ran cmake, sudo make install and then =
make demod_e320_rfnoc_image_core to build the bitstream. This ran for some =
time and looked promising. However it eventually failed with the fatal erro=
r:
"Fatal Python Error : could not acquire lock for <_io.BufferedWriter name =
=3D'<stdout>'> at interpreter shutdown, possibly due to daemon threads
Python runtime state: finalizing (tstate=3D0x270bed0)"

I did notice scrolling back through the terminal log a number of critical w=
arnings connected with the SPI. "SPI frequency 166.666672 (MHz) should be g=
reater than CPU_1x frequency 166.666672 (MHz)". I don't expect that this is=
 connected with the issue I've seen, and may well be normal.

Any help on getting an E320 build going would be greatly appreciated,

Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB3724A05F94CE7BAABF0F49A5CAA20LNXP123MB3724GBRP_
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to build an FPGA for the E320. I&#8=
217;m new to Ettus products and RFNoC so this is my attempt.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m working with UHD 4.0.0.0 and have been fol=
lowing the tutorial from the 2020 GNU radio conference, RFNoC 4 Workshop.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve used rfmodtool to create a new OOT folder=
 structure. I&#8217;ve then used &#8220;rfmodtool add&#8221; to add my own =
IP block. This creates a default .yml file for the for the X210 in the icor=
es folder.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Next I&#8217;ve copied the file e320_rfnoc_image_cor=
e.yml from the uhd source directory into the icores of folder of my OOT str=
ucture, and renamed &#8220;demod_e320_rfnoc_image_core.yml&#8221; to match =
the name of new block. I just wanted at this stage to
 see if I could build the default image, so I haven&#8217;t changed anythin=
g in this .yml file. It seems that I needed to add the IP core to the OTT t=
o get cmake to pick up any build targets. At this stage I just wanted to ch=
eck that I&#8217;d got everything correctly
 installed and setup on my machine to build the E320 FPGA.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve then created a build folder and ran cmake=
, sudo make install and then make demod_e320_rfnoc_image_core to build the =
bitstream. This ran for some time and looked promising. However it eventual=
ly failed with the fatal error:<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;Fatal Python Error : could not acquire lock f=
or &lt;_io.BufferedWriter name =3D&#8217;&lt;stdout&gt;&#8217;&gt; at inter=
preter shutdown, possibly due to daemon threads<o:p></o:p></p>
<p class=3D"MsoNormal">Python runtime state: finalizing (tstate=3D0x270bed0=
)&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did notice scrolling back through the terminal log=
 a number of critical warnings connected with the SPI. &#8220;SPI frequency=
 166.666672 (MHz) should be greater than CPU_1x frequency 166.666672 (MHz)&=
#8221;. I don&#8217;t expect that this is connected
 with the issue I&#8217;ve seen, and may well be normal.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help on getting an E320 build going would be gre=
atly appreciated,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB3724A05F94CE7BAABF0F49A5CAA20LNXP123MB3724GBRP_--


--===============8896391151068883971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8896391151068883971==--

