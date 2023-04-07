Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C3F6DACA4
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 14:27:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 905C9384B6B
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 08:27:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680870426; bh=kGjjDwxEGlXrXW+DjjcSymdnVLw8WxQJHZJnw4SHYiA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dIp94fjAIT7Udx9gLPW0FZyE5AfFqrmdJvAegoBhZFod6iLfmRZIK9XoKyqzFC/Ul
	 +k0xzQTDU7emtFizhF34sYANDKafyay/M9/pyJKCEhB+thdj/drhJtLEJ7DZIslvvv
	 FYttWqyoF+Fja1bgzzE0JbixjwrS+FWyHsYZiJBmNb6HAxZabzbv88bRvZqLu0th1Z
	 FnECaiI43+dFruucLs9WnxCj9BYDthWdfxD2DR+tJCGAzyUILijpNVr90l9I63a1dc
	 7By34PaZ6j4xV88vf/tcno5aQXsLkns9vaW5ujSs8qFJNITE+tcLlxXtMgNfPqvuxs
	 53vpDc+aDFGKg==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.48])
	by mm2.emwd.com (Postfix) with ESMTPS id B09E8384826
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 08:26:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="AbaKDnoB";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6738C24007C
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 12:26:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlmBJ+qQZBc5x8nQ+HZ+i5eqq2wMHbQqwpYhMaDt8r+fftik+4NoNV+4PvWgdbymNalEYiM0jlFN/k7lRaYOU34aOp2F8LM+WWWwLotbmiY8kZJ3qYU6akbPupck6z0H8pogdpYtDAo0ltA9BX47sq7CDBX2YSXP1w916C/3DxOEQeMufa3XK2FcF0Z1CJ3usdg16A7ThZ0xcQ/l+0CToysG5zfptvpkhXEn28Wwd26RsQrX2rn8AmtaNvGc5iq0iO+Rq/fkgILw2vH8juFnYWfpjCnNGo615TwS/xR/XHrHMnrECuuOID+PhFNfrOWDK8zEjA3BCjZFmtnGfgKcQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPwOlkZlTQSmaWhv1kQ/lmmEYcboXAFRRuatpz58ykI=;
 b=fZ6w1yke5F2qfzi2T3Ih+3Nat7TK4CExRJhod//n1VIYQcgbrKFgHfq/HIWzdGjfu1CLNfKyO17eiuAUrH3kNdcmY7KT5SR2RhXI+x7R4MOE4F73O2NUHBWGQB7MgsZ/zrQe0ooGjXrYTTj3eQdu1fUqn2SDY3vOwoOiEgShqZW3f9fC8Rib+rxgXAtNHkbawAOw5DYh8AJ2322obOt3IUJBWFsHkfEkgWhO8pcX+x5I7a2HmitWaAj3z1Rz5nI+K9Zu3zUOajnjcduTpLMrmah02Ahux6+wLiDCHqStpJiiuXAWGFE0OIGKIkrVJ4EaAn7CKPuiQBK80fRBCXG3EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TPwOlkZlTQSmaWhv1kQ/lmmEYcboXAFRRuatpz58ykI=;
 b=AbaKDnoBycoNbqECxMMTv+AJ8GS57Yc7WpVpbYkyzBlQ6reel0T6Efc5G7H5BinM4zkuq//nx/zuqD51jX+To2+SUdnscd/GPxTan8FN00IsLbDZheORaJbnXi0wLyPgt/aeO5X6YlhQv7wiTmv3+I7FywzJoKC116hI1ARXS0U=
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by MN2PR12MB4125.namprd12.prod.outlook.com (2603:10b6:208:1d9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Fri, 7 Apr
 2023 12:26:15 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::211a:5e3f:9dfc:8cc8]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::211a:5e3f:9dfc:8cc8%4]) with mapi id 15.20.6277.035; Fri, 7 Apr 2023
 12:26:15 +0000
From: Jason Matusiak <jason@gardettoengineering.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: time tags seem don't seem to match sample count
Thread-Index: AQHZaUoK1gwSNYIShECC4AG6Fo7R8A==
Date: Fri, 7 Apr 2023 12:26:15 +0000
Message-ID: 
 <MN2PR12MB38713F1EFAF747DDFF801068AF969@MN2PR12MB3871.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3871:EE_|MN2PR12MB4125:EE_
x-ms-office365-filtering-correlation-id: b9e51797-308f-455f-6b06-08db376347eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cnnNfOfTYJnmDcxsApMUPrUz9MJGdHrn8yvhXpHAhtLX584iXrdQS752t0fOoBfMlyK9kvw79XkIkwC7IUT7yowdYqb8UbLAEFyOJiqUE944lOaxcHfc65Qe69XO3+oZdPwZIH4ZvVq2N34P7upCCW2nJ7KaLu0Tqfui1sAktyCJeh/Yu/4OI5ypHM47pUtq/1gPlTPkYiHriKESveIPFzwLlNvSvZ9JviPbNHmt4qSFvrZnYao/E34JNk1CRNtT+2xq5FF5GuhH50WglcUER36lnMuupBnkk3mqq3fokTGJiGdKmMmZOzhkeV1jd3ggsY7G2P/TR+C9u/FUFEvN8aEZ3PAWnNA8tBD3qCxJoDRbysurxBkbf/vUqS6Gvh+htVe0W3LMO5DuYHzy1ZR4e7wJuyjFSyMTKO7GthmFNUq+y4Hw6DJ7+9Fjh12CrsJY0FJXk3MtA13BqsB/kLu5i9MmPlavUTA1ahhZ+RKbmj7hNz6mdah9aYaV7kwNs9SD1wKEB/+OPyLQZAz0Io8JyZrotcEL72sWszz1ibQ8kZ9e8nTN/ssDoun5gTei7sdfvV4dPiSZTAKI8B4UkqMiqNB6OjxA8qfaM+0BxDjtCg9YV+PKstxqfeDvCVUVk/jF
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(376002)(39830400003)(136003)(346002)(396003)(451199021)(76116006)(66946007)(66556008)(66446008)(64756008)(8676002)(66476007)(6916009)(316002)(71200400001)(41300700001)(19627405001)(8936002)(52536014)(5660300002)(7696005)(2906002)(83380400001)(9686003)(6506007)(186003)(26005)(478600001)(122000001)(38100700002)(38070700005)(33656002)(86362001)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?aVOOsbJh48lCFZ0CfXUPzfxo+EO0re5MLtjyFMbFZV0fE+csZN3etnPvgU?=
 =?iso-8859-1?Q?5Rpkr7s+9KNtGN2LwnTt0xQn54vbgdkDGK863W52tB1wW4I51CkEaZOQ96?=
 =?iso-8859-1?Q?Euk0Bu5HYwBrjoWMfbFhYPB9Nsy4kjp+8i7fEwwlNQlmFZEmu2rJcrOhNf?=
 =?iso-8859-1?Q?5TGyWlscwUXjwDFS5o/QSkh5O1eKbmj88gntRVro5ULbAaJP2KYg0yG0RM?=
 =?iso-8859-1?Q?1ZyrnFy7Z0WDu0RFriy3ZszuRA2x4hsLk69M9ITrZKLIhJm8eMN9l+8cvn?=
 =?iso-8859-1?Q?UZKvQsFaxEWvpLFFJdUjakS7w9sgFzyyv07JMc+AILD6emD72NhoV1QrSC?=
 =?iso-8859-1?Q?sMmcinLFGkiy1zA3hAXN3RVg73VyGKisbuquZ5TDiwhBzTsqBnerFd+O0y?=
 =?iso-8859-1?Q?i7Z1PV6ew3PUaXnNEwx8+yLdwOjHjE7W8GuZ8QLX2FXZzr2zKWof6Jb6Zk?=
 =?iso-8859-1?Q?2aMkwym1TQSnKY1LLSm35RzQ4fC+0rTFysHc/BsismL+8XsVtg9tl6FJPJ?=
 =?iso-8859-1?Q?F9R8m04j+CZNVr+vUp+QnFgnkK49B7IUCBT/ruKjs7+8Z3SO6cUH4GUrBw?=
 =?iso-8859-1?Q?qK7ymuOsK1fyDMa/YLxzQRFPN5B+Svhnl9SDmp5hd22BKG7brFLhAZwknB?=
 =?iso-8859-1?Q?GlFvijvxs2+pIKSfceSxIdmp5TMFpx63Ei8+7CFAguvqfHd2Ft5IAbwhsq?=
 =?iso-8859-1?Q?B1RIoIoMTkROHWJS1n5q3DTKyEiysoTgLmmye+tc8RU2MVVdzQyz1FsWm3?=
 =?iso-8859-1?Q?X8HJBqNoxnKgPuzI+QXF+wNPAr8BPs+AJsRmtrSY31Ad6qKeddeW4C2Na1?=
 =?iso-8859-1?Q?hLcu+43MvQqy1sM4vBZFSYqKbMLVTi4xppNpdJziEVt8rfvJqBZJTh4GAQ?=
 =?iso-8859-1?Q?361ujtPI2nrW7PZAaUtJY+rhD5PT6kaJxShXBwlmPEs3ZoCpLsW6ROWUKo?=
 =?iso-8859-1?Q?yav1WCcmi6RrVmUvztucouXTe0maUzvVtNQICTX+7TSe0tHKsITGuIyFVH?=
 =?iso-8859-1?Q?IbvA1iU5L+BXsuGooRGkHfDfBHwn6/vdj1upSkKal/cK0QXAi1sPrhaDO/?=
 =?iso-8859-1?Q?CEEVZ2i2IKYRKUoVbUJdWOQShZMKDeo6Ntnm3bMJQcALa+4XAtLQYPh+2b?=
 =?iso-8859-1?Q?Sha5HWJrpUaTMIIY/k/DgEo1grxTg3+yMIcYTOrryU/FrUguzyNKZpULt7?=
 =?iso-8859-1?Q?7Jy8YrU9A+wdSjYCMMPRF3F4WpK3L4C3x/A6RqB3a7Tssgr2KE3uJHtK4/?=
 =?iso-8859-1?Q?/cuJmdEkJTc8x4tXuxOc8wcp8zlo2hXXxpA6Wr7CJrZ75cY9QZxb7nuU0w?=
 =?iso-8859-1?Q?YXVxYO+rYMdkeQwpYzT6esDtqZNSIG5x1y3vhX+CvCZkWs33JmjXqbi4Vh?=
 =?iso-8859-1?Q?fiK0RicTkohsirpBOgzDrsk3VdkzcFPIRb+2OJnxcSpEYNt0g2R+UA9VI+?=
 =?iso-8859-1?Q?GlGyZcgFvQFcHlQeE14FCQXMVx6T1rt9tuX9chPO1oBKLl5ioNAcnjv8g9?=
 =?iso-8859-1?Q?0Yt2RZeu0+oCWlu5YF+vvK7p78YO6vZzLTz/quY3TohQ/8IFJmaBGf/igj?=
 =?iso-8859-1?Q?zHSgu/v4VnAxZnnVh3xLwIKaq6OPUF9O/lmIwHNIcEPlKJQVXhB8wfS3/A?=
 =?iso-8859-1?Q?I6Zn26aHhuabp5Qc2dvmCgEWNSvgt0mkE0F903FQFBGoMgst838H+ARQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9e51797-308f-455f-6b06-08db376347eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2023 12:26:15.0747
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +jS5LHPn7qd6O401ZmVWu9Tmfsn+MfySUeO2tw5E8ULeSYPLUPIva9QqccMQ7j5x0h1voHEK/H2hSqde7E4kXDe4RQP/byCtl9U5vdTjTpU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4125
X-MDID: 1680870378-ywurE9jfH6lj
X-MDID-O: 
 us1;ut7;1680870378;ywurE9jfH6lj;<jason@gardettoengineering.com>;e704d01f87cea27037df32747797d545
Message-ID-Hash: QUTRVS6CRDYHKYUNKZMZOKXWVT6TXDWF
X-Message-ID-Hash: QUTRVS6CRDYHKYUNKZMZOKXWVT6TXDWF
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] time tags seem don't seem to match sample count
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XAHURMOGGY7FNX5NIYH6G356O2P23XXB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2885726332961875248=="

--===============2885726332961875248==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB38713F1EFAF747DDFF801068AF969MN2PR12MB3871namp_"

--_000_MN2PR12MB38713F1EFAF747DDFF801068AF969MN2PR12MB3871namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have been trying to work on a gnuradio block to fill in the dropped sampl=
es in a USRP stream.  While testing things out, I came across something odd=
.  I am using an X310 as my test device and am changing the sample rate.  I=
 was at 100Msps, let it run for some time, and then changed it to 10Msps; s=
ometimes this works, sometimes I need to change a few times to get dropped =
samples.  Sometimes, if I look, the time between the last tag and the tag w=
hen I changed the sample rate was 37.4225 seconds (for example).  If I coun=
t the number of samples between those two tags, I get 374232036 samples.  T=
hat is more samples than should have happened in that time at 100Msps.

I am guessing that tweaking sample rates does something weird to the sample=
 buffers and probably means that my sample packing approach will only work =
with lost samples caused by freq changes or other driver slowdowns.

Does anyone have any insight to what might be going on here?  I know that i=
t is wasted cycles for most people, but it would be nice if the USRP/UHD wo=
uld report the number of lost samples when it retags at the beginning of go=
od samples.

--_000_MN2PR12MB38713F1EFAF747DDFF801068AF969MN2PR12MB3871namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
I have been trying to work on a gnuradio block to fill in the dropped sampl=
es in a USRP stream.&nbsp; While testing things out, I came across somethin=
g odd.&nbsp; I am using an X310 as my test device and am changing the sampl=
e rate.&nbsp; I was at 100Msps, let it run for
 some time, and then changed it to 10Msps; sometimes this works, sometimes =
I need to change a few times to get dropped samples.&nbsp; Sometimes, if I =
look, the time between the last tag and the tag when I changed the sample r=
ate was 37.4225 seconds (for example).&nbsp;
 If I count the number of samples between those two tags, I get&nbsp;374232=
036 samples.&nbsp; That is more samples than should have happened in that t=
ime at 100Msps.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
I am guessing that tweaking sample rates does something weird to the sample=
 buffers and probably means that my sample packing approach will only work =
with lost samples caused by freq changes or other driver slowdowns.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Does anyone have any insight to what might be going on here?&nbsp; I know t=
hat it is wasted cycles for most people, but it would be nice if the USRP/U=
HD would report the number of lost samples when it retags at the beginning =
of good samples.</div>
</body>
</html>

--_000_MN2PR12MB38713F1EFAF747DDFF801068AF969MN2PR12MB3871namp_--

--===============2885726332961875248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2885726332961875248==--
