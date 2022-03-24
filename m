Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B044E6583
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 15:42:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC21E38439B
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 10:42:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648132921; bh=AeFka61Q4iHGwFSA+M6oHZWdENujMhDrMxMjBC+Wx+c=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PRXBkuyyVaRfQdgWp3VqWnX5rPwOlcUD5rCT8hMfW2CoKm7INY++/MOsANiVDJInS
	 5hSp5XEt9EXp6f1OEBYpoI4gQnP3dPM9IDbIlfB9p70OQwtFk/AsfMEa6zEhjw9bv7
	 tL6/ULcVG1w1N6qlOXVfbWEvw8DWMyzVWZzzxMa+saumKzeOp+YK9PepdLL3HuTTeq
	 VSjtyOnbidEhqcTiHuLIav1HS+fYkzVu9SRBlh89z9AFxqo6UfLW2W9+G2pd99cSsb
	 c2/LbyyfuqUWxf6xEXxuuEY3mHT7gdofGSmU/H8rwf8B7LFfAeKDauiBdAql449+yt
	 bt0KD2a/WB2nA==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A7B08384A00
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 10:40:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="Gx8fLvbt";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.132])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id AAE214009A
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 14:40:34 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 841635000A0
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 14:40:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jqWM3U6tz0NkSMEtM5yIAnungrB6IjAWgbe2vv4S2ux15HXYHk/TrPgZCwFA80XeP4qMy2PxInQT52QcFp0tUWTiGKPh1h6hluiQNp6EX+gHjSFzvT7rWt5M0MXww6ounivHOnyH3scBAEVv912M8XgCKa7sXDWeZlZhDki5zYm1IVeYdvCMzPL7RMkL16GdLOdaumh5iZOxnXMdSa+NbgBfRTKjrQgTZmN7YhD7CjrWHmQVm1xHmE2rtD7nJYfcFXjMZ9hwwl2OiFuMOWDGmg6BexH8XAIBRi60hUyE8zDCWV4oCsPL/6ZHBMhFmqRGTVpwlxat8YBxes/it5IpYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EhvGTLP+DZ4Ns1yf8W1Xh1DDOqucNZBvQKcqRzoqh/w=;
 b=EURdU4N0zlY/zIkyZvlgnuKlSJ/4LSFomp/TNPGayAHy1C+0Fh1JThSQxQbEwbCXPOfk5gD45UW0fIbvZHvGSDlOzonqDuLvBo8b+vkurgcsD31EdtG0ROrTOeD/g3VkXE34Xe8OxK9xHjgmbb2qfK3tRRCH2GPVvc+NE1sLnjSvTV+uKcKCd6otrKZ4tFchvAjwZ8Lsdnw4PMC+CXFAUOa6oYCGu95Wr/kRFY0ythf9W1JFUEVmv1cd0vvauEzeKLUkRmxUvY6gd2TKYwtQS8VHwza3vNOaPe9rFCodwuzRuorEdNfWvDu71O41+lzmM5PCldt6A7JuesuNO/i7fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EhvGTLP+DZ4Ns1yf8W1Xh1DDOqucNZBvQKcqRzoqh/w=;
 b=Gx8fLvbtPI8TlJpJJErEm9ODlQhklWwSJ3vYUQiWTOMCNWz11wnd8mH7dcT7iQzY7Z4tYI2gDA3DpVn7HAd4+OcqHQt52LlUu3POPR8LR506AzAjDX3dYxa0XhNNXU5FVmZrBW1SM22qps+H/IwzCE9mzjxrJqTLrCtUo4tntkQ=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN0PR12MB5907.namprd12.prod.outlook.com (2603:10b6:208:37b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Thu, 24 Mar
 2022 14:40:31 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::98c0:773c:d193:9504]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::98c0:773c:d193:9504%7]) with mapi id 15.20.5102.019; Thu, 24 Mar 2022
 14:40:30 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc vs mult_usrp API question(s)
Thread-Index: AQHYP4kyn43/yD/+p0+aicBl5i1xrA==
Date: Thu, 24 Mar 2022 14:40:30 +0000
Message-ID: 
 <MN2PR12MB3312BC29A0F365E1378DD71FB8199@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38470fb7-c84c-4b98-543b-08da0da43f07
x-ms-traffictypediagnostic: MN0PR12MB5907:EE_
x-microsoft-antispam-prvs: 
 <MN0PR12MB590738E2DFF65AA824EAE843B8199@MN0PR12MB5907.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KTiKVwda/xsZGRwgkWt6CWAqLyudmlQNGtI9xW5jPVqdkVRXz7NedD9IJa1mlx6oirmJ78sDf060w3DfreZOJahcbc7hU+v9dMgKVlrMlBrX25Y+QOowfdmgdi21THOnsxuO7fEC/HndRjwKiw925LTYmrDgXDPB/o7uGRvlbti6Oo80YYgT61if+rQYxltEEoBNEMVEOueEQIGkiCsVZfYN9IAN2cYtIxkCXyAimCitO62ZgPiNfnBDr+osyW0+FPfUC10QkUkAsLHxQ3zE1v4QsOHzL1ZjFaqzhSiq034RqqcxipOPAu+kXED5ZrWwqNQZTy/8l60ow2YPQE12IWeutk5R7kEM5h5D+b2tvhuBpcDKUua29idGumMYPqswl/G0zZWXRLgCMQhfWWMRlz4THxg6i412mpY4Gfdkql8WTZ3ZYQfsSFJR/PzcaBLk3GjnO7hK6BiwWFJ2j6ijNULRrVyrkJiieC9QAAId5dTHlXON8hu0cZ60KV8UBRCXhQwPaKgpHbK4D3MGk2iYPbcMeBXfEqi4RpHFsK/EHN3mrILN6NXvWF79GvtEVXXZXA+PRskIfjkAU4RPalBlzWizuOqgIU3IaFsM0XR4RiL6a8cEBJeG/sUrlHAx8d1CRzxGNqcOZI/3S6SVyJlh+jpVIV5sYdsrYUv6wucMonJ6lXNxf6zKEAkRvWgTmvFEY8/E8EtyNIb//B1CqBUvfA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(346002)(376002)(39830400003)(396003)(366004)(38070700005)(66556008)(38100700002)(122000001)(2906002)(9686003)(33656002)(7696005)(6506007)(55016003)(66946007)(186003)(52536014)(83380400001)(71200400001)(26005)(6916009)(8676002)(86362001)(316002)(19627405001)(5660300002)(8936002)(508600001)(66446008)(76116006)(66476007)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?3IZvFhgE1Co3hCnm2W5OHtu4SJkxIA1YLqmh8jUIvAWRjoNo8sQ9P4hCkW?=
 =?iso-8859-1?Q?QW8I8YfHsp11gB2gBXEOUv8o1DvEEghdOq0jsWPZegnR2IPOMvBC3N/Nyi?=
 =?iso-8859-1?Q?hI4Guuc8HthXs9iyrt1FCGUQnzPyNRZyccF5X52SpbfT+C14Shry22LAn9?=
 =?iso-8859-1?Q?as5VH1vcOQHtiJLJvEK8TKk8R7vK4QPUG95/GgcfTACC4EkSC2qVY7uDiQ?=
 =?iso-8859-1?Q?CzbnjVt7l91NaB4TbAx9jBqZaKnqQIcKAcApQbL/fbfPTaTqb3hbNx4uGi?=
 =?iso-8859-1?Q?byvCPbO92aa6m+IXj8DGVloPZRq2bg/AfDhVILWxLkv6XeSGQ4CRITKIuh?=
 =?iso-8859-1?Q?AuyTfR9/HG+Mu1gq9bK7l5Ml5lmIsppc+I9hCOTDyPdQbY1VK4Ox984aR2?=
 =?iso-8859-1?Q?KpC/jBoS0qpGg5NfPwd8eI0vgRRQxawZspODu4jFKDBkwnHGGbGMM9Qfft?=
 =?iso-8859-1?Q?ENetIV//GX7bPs4mFl1t8+WLYDCpg24mXxt6skbByu/T9HXTgwtL/hsGUj?=
 =?iso-8859-1?Q?GIcne9pesIVz4OE3L4wb7/OnAP6UF+BM3NNHANYNtg71oDUncbMrPzdqMC?=
 =?iso-8859-1?Q?oszUTR61TX3GuF9JPU1j5Mm6aPg2Pki8U9xQ8qViHRMiA/CcpY3F3IQNcZ?=
 =?iso-8859-1?Q?0Jxr6P4t0CbEKG2ENftF3F9c4sKDt7cDLf3y1Cykyu2ya1LI8DVpJna86w?=
 =?iso-8859-1?Q?6xLZ+Htedj6CSx17Rwtg5kCzWmpLUlw0JMkmpyY0k84ZTgxNnCAg5Cxiub?=
 =?iso-8859-1?Q?OjA2h17E5bCo/NT2SHVh3b4kYeLR8Wd4ed2Ehgkv4rXMknIZnIwCX0jh1B?=
 =?iso-8859-1?Q?5qHCnHTqpPbgW5fcP9bmqsaySnbwHt7f+6vLImvS3T/jPzJR169vdIS+Hw?=
 =?iso-8859-1?Q?UWCH/1LOvJw3oYjd3C2BPxadHX1+WtWIq6GSxm/XJuupBZg015TsqsAj+C?=
 =?iso-8859-1?Q?wOwZxMNcD34i3j7eW9U5gNDqo8VsGNqN8Mw5m2brFS1vviD3Ec+VFQwjCd?=
 =?iso-8859-1?Q?SNWmtYPGUfFt7NY0SIV5WGcOxQ1MNwsijGBvbTlemv2Bmg5eFnv6Pj02UD?=
 =?iso-8859-1?Q?Qa9Wr0m7qbfgq/VRvUWQj4idG1VpgeCcW6G6K3/Eu61m1PGXrqwJ6CvAWC?=
 =?iso-8859-1?Q?UXC7Ecc8rkg8rVmkNKKEfoiqx61+zXSAjlIphcujxbwb8wd4uiOKEdl4Dn?=
 =?iso-8859-1?Q?NbEF5ChxjUixTSRIlBJM54xRualJ2TEtJr4ys7rpXde1+LpFCLtgTyxS77?=
 =?iso-8859-1?Q?9HrxKyC517h6fonwH5oSDDf79lugYWxtryTN4Vjb/MfZ1JyZONuMHkhNj1?=
 =?iso-8859-1?Q?WBJxABiYtsXmV5KUfl7xvZCIc43MxHj/Vz6et9vg4W67slVxcAV7fMH9Kt?=
 =?iso-8859-1?Q?w4K7jkLV+WOyd4A8RbYdX3WyYGke54TBkNIKEgarKiV+rYhNsZKoWAAi78?=
 =?iso-8859-1?Q?4c+lksXfZUvC0f3rCLNlcOIPeA6XC7AD76SRGjY4TVrfRjEC1VkoCofLP1?=
 =?iso-8859-1?Q?srQ77vLoV2OKAaeD833F4RMLypEplktilpmuMpuBsVKQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38470fb7-c84c-4b98-543b-08da0da43f07
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 14:40:30.7870
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0TvS1hX2lGf5c+Ujr3NX4n1EVWE3dHNulYBD2+PMH6QPd01b6M49evrnw4iafduxCcEgUQlaYtmRdAzZ3GBfsuy289q36C7GsqR4wXTZ6X4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5907
X-MDID: 1648132835-B3rsw19W3Qs4
Message-ID-Hash: AMT53FDVSEH25JE77T5H2OLJBBXDP4PD
X-Message-ID-Hash: AMT53FDVSEH25JE77T5H2OLJBBXDP4PD
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc vs mult_usrp API question(s)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6PMZSNY5FGJAKLBIVKZ2FOXC4S2VHLU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4973314548162866681=="

--===============4973314548162866681==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312BC29A0F365E1378DD71FB8199MN2PR12MB3312namp_"

--_000_MN2PR12MB3312BC29A0F365E1378DD71FB8199MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I just want to make sure I understand the different API's and when to use t=
hem. I've been using the multi_usrp API for most development using the stan=
dard FPGA load on an N320.

I recently added in an FFT RFNoC block into the FPGA load, and will soon ad=
d 1 or more custom RFNoC blocks. I switched to the RFNoC API for my applica=
tion code so that I can create my graph and directly interface with the blo=
cks. I believe I "needed" to do this, correct? Meaning if I wanted to creat=
e a graph with anything other than the default statically connected radio->=
ddc (for RX path) and if I want to interface with those blocks, then I need=
 to use the RFNoC API. Please let me know if I'm understanding this right. =
I've already done this, and things are working -- but I want to make sure I=
 couldn't have done this with the multi_usrp API. We have a lot of pre-exis=
ting code using the multi_usrp API. If I add and start using different RFNo=
C blocks, I want to be sure that I need to switch over to the RFNoC API bef=
ore modifying all that code.

One thing that confuses me a bit is that I just found the multi_usrp_rfnoc.=
cpp file, which contains the code for the multi_usrp_rfnoc class. I'm not c=
lear if or how this class is used. I see that it is a subclass of multi_usr=
p, but if I "grep" UHD source for "multi_usrp_rfnoc", I cannot see where an=
 instance of multi_usrp_rfnoc is created anywhere. I do see that multi_usrp=
_rfnoc.cpp is included under the LIBUHD_APPEND_SOURCES in "/lib/usrp/CMakeL=
ists.txt". I'm wondering if I could/should be creating a multi_usrp_rfnoc c=
lass, or if this somehow happens behind the scenes when using the multi_usr=
p API with an RFNoC-based radio. Again, I don't see where it's being used a=
t all, but I am far, far, far from a C++ expert and am likely not understan=
ding something.

Thanks for any help,
Jim


--_000_MN2PR12MB3312BC29A0F365E1378DD71FB8199MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I just want to make sure I understand the different API's and when to use t=
hem. I've been using the multi_usrp API for most development using the stan=
dard FPGA load on an N320.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I recently added in an FFT RFNoC block into the FPGA load, and will soon ad=
d 1 or more custom RFNoC blocks. I switched to the RFNoC API for my applica=
tion code so that I can create my graph and directly interface with the blo=
cks. I believe I &quot;needed&quot; to do
 this, correct? Meaning if I wanted to create a graph with anything other t=
han the default statically connected radio-&gt;ddc (for RX path) and if I w=
ant to interface with those blocks, then I need to use the RFNoC API. Pleas=
e let me know if I'm understanding
 this right. I've already done this, and things are working -- but I want t=
o make sure I couldn't have done this with the multi_usrp API. We have a lo=
t of pre-existing code using the multi_usrp API. If I add and start using d=
ifferent RFNoC blocks, I want to
 be sure that I need to switch over to the RFNoC API before modifying all t=
hat code.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
One thing that confuses me a bit is that I just found the multi_usrp_rfnoc.=
cpp file, which contains the code for the multi_usrp_rfnoc class. I'm not c=
lear if or how this class is used. I see that it is a subclass of multi_usr=
p, but if I &quot;grep&quot; UHD source for
 &quot;multi_usrp_rfnoc&quot;, I cannot see where an instance of multi_usrp=
_rfnoc is created anywhere. I do see that multi_usrp_rfnoc.cpp is included =
under the&nbsp;LIBUHD_APPEND_SOURCES in &quot;/lib/usrp/CMakeLists.txt&quot=
;. I'm wondering if I could/should be creating a multi_usrp_rfnoc
 class, or if this somehow happens behind the scenes when using the multi_u=
srp API with an RFNoC-based radio. Again, I don't see where it's being used=
 at all, but I am far, far, far from a C++ expert and am likely not underst=
anding something.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for any help,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR12MB3312BC29A0F365E1378DD71FB8199MN2PR12MB3312namp_--

--===============4973314548162866681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4973314548162866681==--
