Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0879853FFD4
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 15:17:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20749383AD0
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 09:17:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654607851; bh=lGZwn1MgToW/7LXAEj9FlhDUtYneAszdcp3pdsZ4kws=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=RfWZbnTY8nf0smxnHWRjPvLylZw22nhkqA25QVol1I6oJGJbDVZL1jcGC47J4+hv9
	 xCgbemTd3YL0vHK8PgAGtkRYrV8RMXe+vzoAQ2TnLJvylDwu91nuBd5zaiAUTCzqxK
	 6UVTdsvazq+ki4aqOa6o4NxFxjIHAwau/XT3h0uwdVpOqqYrI5I0AppWjqEB/txo/7
	 kAqZcE0/JyS/PDLWXzAgvUNnsrEKTHJusZd/6JIiQTyvQKSMj+5DtNWbORVncpcJ2Y
	 WWromU7z37AYJmri4KUlhPWv5XOpfbYGYkqdMpfy8wYu08PjiuBkfpAqwejl4RPKi4
	 9JT1U4Jj/YnfA==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B4BA383E66
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 09:14:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="gNE1B9cP";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1654607680; x=1812287680;
  h=from:to:subject:date:mime-version;
  bh=F8mgNnJu4nX53hRKsnVqbii1cUAzy617wz/Ttj2sko0=;
  b=gNE1B9cPBszH3XsmTHDvSci3fLmuA2C5F7iv3nkafII9dhGsnXUjB04s
   x73ZD8nZDzwav729ByePzSVWN6zXw606uJS5t/ctTSwLkZJu+LmW7XY2A
   UlbgZartCx8evdGOiiyzICKdERvFydWfNEDsCHQ4a20FXALcuJrsC/A2p
   s=;
IronPort-SDR: N4mZRjYoHVfwiy8kM0+KMQZmtPgOtfAcZaEWpqNfT0OJ9wcVU2MnGEOlTmIEG9zfTkO82B1iTV
 nIUJFDxGcSVA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AUsz2oxYDScbZVQqZdY0YIM//LTGp0IqcDmcuA?=
 =?us-ascii?q?noPtbtCf+yZ8oj4OwSHvLMx1gSPANiQu64MotGVmpioYXYH75eFvSJKW713f?=
 =?us-ascii?q?DhBt/8rmRc9CtWOE0zxIa2iRSU7GMNfSA0tpCnjYgBaF8nkelLdvGC54yIMF?=
 =?us-ascii?q?RXjLwp1Ifn+FpLPg8it2O2+5ZPebx9IiTe9br9/Lxq7phjNu8cLhodvNrw/w?=
 =?us-ascii?q?QbTrHtSfORWy2JoJVaNkBv5+8y94p1t/TlOtvw478JPXrn0cKo+TbxDETQpK?=
 =?us-ascii?q?Hs169HxtRnCVgSA+H0RWXgLnxVSAgjF6Bb6Xortsib/q+Fw1jWWMdHwQLspX?=
 =?us-ascii?q?zmp8qVlRwLyiCofNzA37nzZitB+gqxYoRKuuxNwzpXOb42JNvpzZL/Rcc8ES?=
 =?us-ascii?q?WdHQ81fVzZBAoS5b4YXAeYPI+dYr435p1sVqhu+AxGgD/7yxz9PnXD9wKk23?=
 =?us-ascii?q?Oo8Hw3D0gArAtUDsG7TrNruKqgSS/y1wLPUzTXCa/NW3Sz96I/Och06uv6DR?=
 =?us-ascii?q?6x/cdHRyEk0CwPKkFCQqZf/MzyJ0eQNtnGW4ux9Xu2gl2ApsRt+oiSzxsgyk?=
 =?us-ascii?q?InJgJoYxF7Y+Chkw4s5O9m1Rk57bNO4H5ZdqzyWOo9rTs4tQGxluSY3xL0bt?=
 =?us-ascii?q?ZOncyYHyZsqyRDBZvKJcYWF/wzuWuaNLDp+mXlre6q/ig6v/US80OHxWMu53?=
 =?us-ascii?q?ExXoidBnNTArHEA2h3L5sSaVvdx5Eis1SiV2wzN9O1JIFo4mbfFJ5MvxLM7i?=
 =?us-ascii?q?4Advl7ZHiDsnUX7lKqWdkI59ee28+nnebDmpoOEN49zlwH+LrwimsyhDuQ8N?=
 =?us-ascii?q?QgDR26b+eS61LL5+E35W7ZHg/0qnqXFrZzWP8IbqbSjDwBOyIks9Q2/Dje90?=
 =?us-ascii?q?NQEg3YHKUlFdAibgIjuPlHCOPH4DfGhjFSwiDpn2uzKMqfvD5jPNHTPjbPsc?=
 =?us-ascii?q?Lhn50NdyQc/1dVf6IhVCrEFLvLzQEjxtNnAAx8jNAy72PjoCM9h1o8ERWKPA?=
 =?us-ascii?q?6uZMKfJsV+P4OIiOPKDa5ULtzbmK/kl/OLugmE8mV8GZ6WmwZwXaHWgEvRgO?=
 =?us-ascii?q?EqWeWDsjcsZEWcWogo+S/TnhECaXT5Je3myR7485i08CI++EIfDXZqtgKSY0?=
 =?us-ascii?q?CemBZ1ZeHpGCkuXHHfsdoWEQOsMaDmILsB/jjwESaWhS5Q72R6ysw/6zukvE?=
 =?us-ascii?q?u2BsDADr4qmycN4/fb7kRAp6ScyAtiBznrLRGZx1CtcWiQsxOViukFn0X+H0?=
 =?us-ascii?q?LNkmLpVCcBO/LVCVQJsZrDGyOkvQezzXgbaedHNAHyhSJ3mPApwBJpl2dgEb?=
 =?us-ascii?q?lxhXcmjihTY2CyCCbYYjK2QGJEx6eTX2H2ndJU18GrPyKR01wpuecBIL2Dz3?=
 =?us-ascii?q?sZC?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AiCQB2bIJi/0LBJQpagQkJgUaBIYF?=
 =?us-ascii?q?/AoFrmgOCYJVGgXwLAQEBAQEBAQEBCAFCBAEBikMmNgcOAQIEAQEBEgEBBgE?=
 =?us-ascii?q?BAQEBBwQBgRuFaQyCNSKEH14BDAlrJgEEG4J2ggytWYEzGgJlhG2FEYE8gWa?=
 =?us-ascii?q?FVYMIhm2ECIt0BJVdBzoDVIEFEoEhcQEIBgYHCgUyBgIMGBQEAgMQElMeAhM?=
 =?us-ascii?q?MChwOVBkMDwMSAxEBBwILEggVLAgDAgMIAwIDLgIDGAkHCgMdCAocEhAUAgQ?=
 =?us-ascii?q?THwsIAxofLQkCBA4DQwgLCgMRBAMTGAsWCBAEBgMJLw0oCwMFDw8BBgMGAgU?=
 =?us-ascii?q?FAQMgAxQDBScHAyEHCyYNDQQjHQMDBSYDAgIbBwICAwIGFwYCAnEKKA0IBAg?=
 =?us-ascii?q?EHB4lEwUCBzEFBC8CHgQFBhEJAhYCBgQFAgQEFgICEggCCCcbBxY2GQEFXQY?=
 =?us-ascii?q?LCSMcHBARBQYWAyZSBgIBH5ptGaENoQMHA4NMn3guFZZ3A5FdlmYgpl4CBAI?=
 =?us-ascii?q?EBQIWgWgEggpwgzlQFwKcf4EwAgYLAQEDCZAIgRIBAQ?=
X-IPAS-Result: =?us-ascii?q?A2AiCQB2bIJi/0LBJQpagQkJgUaBIYF/AoFrmgOCYJVGg?=
 =?us-ascii?q?XwLAQEBAQEBAQEBCAFCBAEBikMmNgcOAQIEAQEBEgEBBgEBAQEBBwQBgRuFa?=
 =?us-ascii?q?QyCNSKEH14BDAlrJgEEG4J2ggytWYEzGgJlhG2FEYE8gWaFVYMIhm2ECIt0B?=
 =?us-ascii?q?JVdBzoDVIEFEoEhcQEIBgYHCgUyBgIMGBQEAgMQElMeAhMMChwOVBkMDwMSA?=
 =?us-ascii?q?xEBBwILEggVLAgDAgMIAwIDLgIDGAkHCgMdCAocEhAUAgQTHwsIAxofLQkCB?=
 =?us-ascii?q?A4DQwgLCgMRBAMTGAsWCBAEBgMJLw0oCwMFDw8BBgMGAgUFAQMgAxQDBScHA?=
 =?us-ascii?q?yEHCyYNDQQjHQMDBSYDAgIbBwICAwIGFwYCAnEKKA0IBAgEHB4lEwUCBzEFB?=
 =?us-ascii?q?C8CHgQFBhEJAhYCBgQFAgQEFgICEggCCCcbBxY2GQEFXQYLCSMcHBARBQYWA?=
 =?us-ascii?q?yZSBgIBH5ptGaENoQMHA4NMn3guFZZ3A5FdlmYgpl4CBAIEBQIWgWgEggpwg?=
 =?us-ascii?q?zlQFwKcf4EwAgYLAQEDCZAIgRIBAQ?=
X-IronPort-AV: E=Sophos;i="5.91,230,1647302400";
   d="scan'208,217";a="479114414"
IronPort-SDR: sFkJWzh9KM9mocw6yQY60kcNEiMnTGWf/DZ2ZCJ8w8T/mjwwNVkynZR+cwtXDIz70/OMsz+ezp
 FzMCfv2x9pzgnO2zf4d7hn7+MOm+NhLbUTvnaxAsTmgK27pOT5bzsaa0MNyvu4rIrimE2IRFez
 67X6oOPsuXVzGvTMEfJQLE+8XVYdqFeJ5VHSmExiZhVl6SzhFLDuRAxrLJ+0D9Lw5TrHzLOP3b
 +Tgg+Ys9Zc3lJF2g0v0U1TcL2WJknnGuGYAoPItYboEp4AYOoPHwjF0H2UsOz22nwbwWudLe5Q
 NJ4=
IronPort-Data: =?us-ascii?q?A9a23=3AtEIbc6M/lQuZ2J3vrR1vlcFynXyQoLVcMsEvi?=
 =?us-ascii?q?/4bfWQNrUol0zcEyWJNDT/QbKqKYTOjeYpxPY6w9UhQuMDdyIBhGVdlrnsFo?=
 =?us-ascii?q?1Bi8JGcXYvDRqvT04J+FiBIJa5ex512huLocYZlFxcwmj/3auK79SckivnRL?=
 =?us-ascii?q?lbBILWs1h5ZFFYMpBgJ2UoLd94R2uaEsPDha++/kYqaT/73ZDdJ7wVJ3lc8s?=
 =?us-ascii?q?Mpvnv/OUMPa41v0tnRmDRxCUcS3e3M9VPrzLonpR5f0rxU98kdXmo/+IL+FE?=
 =?us-ascii?q?mPxp3/BC/uKtpreSR1XGuOCeweJjnZSXavkmB9Fuig00a99MvcAAatVo2zR2?=
 =?us-ascii?q?YsujowT7NrpFV9B0q7kwYzxVzFCFCtzJ7EA5L7DJWO4t+SZxkDdYmDwzvB1S?=
 =?us-ascii?q?koxOOX0/84sWz4SpaFHcGtlgherwrjeLKiAYvR3nNxmMdLmJpg3vnB70SqfA?=
 =?us-ascii?q?Oo6XIuFSKLPjeK0dh9YattmEvLSYtFJNGIyPFLPZBlDPlEUTog5m/usgHr2N?=
 =?us-ascii?q?TtVtDqoSWMMyzC75GRMPHLFbYCJEjBSefhoow=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AA7xiBqjYdTDuWi2QfMrp1C6Q0HBQXtUji2?=
 =?us-ascii?q?hC6mlwRA09TyX+rbHNoB17726WtN9/YhAdcLy7V5VoYEmwyXcX2+Us1NWZLW?=
 =?us-ascii?q?3bUQKTRekI0WKL+UyEJ8U6ndQ26U4KSchD4bPLY2STxq7BkW6FL+o=3D?=
X-IronPort-AV: E=Sophos;i="5.91,283,1647302400";
   d="scan'208,217";a="327485703"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: building a deb on Ubuntu
Thread-Index: Adh6cBoDG72ss2/TSE6/yadhHr/q0w==
Date: Tue, 7 Jun 2022 13:12:11 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.226.123]
MIME-Version: 1.0
Message-ID: <165460768054.11266.13063127682490100883@mm2.emwd.com>
Message-ID-Hash: VLAUW4BICAS4SBKIY3AWNLSKJ2LDZIYI
X-Message-ID-Hash: VLAUW4BICAS4SBKIY3AWNLSKJ2LDZIYI
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] building a deb on Ubuntu
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VLAUW4BICAS4SBKIY3AWNLSKJ2LDZIYI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============2867635817869242071=="

--===============2867635817869242071==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_31a7818d0b6443c68d6a0987fdf4537abaesystemscom_"

--_000_31a7818d0b6443c68d6a0987fdf4537abaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is there a cmake target to build a deb on Ubuntu or is the packaging into a=
 deb a post process after cmake?

Thanks,

--_000_31a7818d0b6443c68d6a0987fdf4537abaesystemscom_
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
<p class=3D"MsoNormal">Is there a cmake target to build a deb on Ubuntu or =
is the packaging into a deb a post process after cmake?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
</body>
</html>

--_000_31a7818d0b6443c68d6a0987fdf4537abaesystemscom_--

--===============2867635817869242071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2867635817869242071==--
