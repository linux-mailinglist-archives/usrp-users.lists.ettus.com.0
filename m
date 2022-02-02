Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7344A7482
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 16:22:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AD8338546C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 10:22:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="Ppg7Qk5u";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 4BDEB384FEC
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 10:21:33 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.122])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A4DEB22008C;
	Wed,  2 Feb 2022 15:21:30 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 706F24008E;
	Wed,  2 Feb 2022 15:21:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TY6tzaF+LrEuBHFIuD8yxsqPVaikRKiinkK3AuuuXPMhBzO1Gx3VJMrTb7gdvVwC50QnJGdUO3IkumLvbagHejrP7V5GgEn7Np3H6nfO0k15NmhwsUTKYKkAlxnMAeuwSCXveZ8xF/YiOkv46/ziLS6dcZdk3Ie7dMEwPGP5VHkLw/XBIT/1F8zpGXq44Yf9uHFeBAn+90XddO+uXq5ErwpSbQIpZaOrSOY8Ej9RWRD0s0OYofApoYvl5nOpfX1XJ2XR03m30h/LDlgvXSNNEhJZ03IN0jWykHrbXoJhKPV/IxigpSyXF1CtlkKDBYSsuJd5bcEajUOCC3lYdpEJ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N36W5q/t8XDX2V9TpiZsyIY97CtpKcFc0wRrcnn1OOA=;
 b=WfUtJpzD19OsBsR7zh/u5oD0e5Q8ucEVEof6ebCmvav1cyZOiOz2dz1G1i0L1gWQspsikl2Ew4vOp9eJUjKuv5EF8ftl/vOf5L0x33B8S578BWtu6ukSLbe1OtFKOjYIv3tp7eCGPX0RKaQD3pQCNNLbC716WuT+t4bwr4cUBrReGQCie7TO8GlHiH9xqMsEoP2MYd3vwgE01VCt5VnEmcJOQjMpkmgzaDfZLoMg0jbC8tvj48p7ih80Ev46Awgmja5Knb4mhMSIm0NYu9XBsk91S2umUh/tEzinzSY6V2Ee7mF1pM49vO62jL8fBGUQPlyHet0M2iBT6i7/YVTuZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N36W5q/t8XDX2V9TpiZsyIY97CtpKcFc0wRrcnn1OOA=;
 b=Ppg7Qk5u60boGc4T6hMpvqMUB2DrwwUFzDSpIR+wYWFsqRiX2FeHMHwdEBGh9hDSxhWhdMAyTOXvTIOKd70w0j91wwGriWhx1NBEfgTPE/UMuq1ry7zEkMVj4P+G2gM8pj9o8tt1BpIL9PKsWWaqw26odYdrOukxpdmj8QL8Uko=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BN6PR12MB1476.namprd12.prod.outlook.com (2603:10b6:405:11::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.19; Wed, 2 Feb
 2022 15:21:29 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 15:21:29 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: 
 AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTguAAAKNgIABHYZZgAAs3ACAAAaQGA==
Date: Wed, 2 Feb 2022 15:21:29 +0000
Message-ID: 
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
In-Reply-To: <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2835411c-e579-46f8-df90-08d9e65fafa6
x-ms-traffictypediagnostic: BN6PR12MB1476:EE_
x-microsoft-antispam-prvs: 
 <BN6PR12MB14768177471AB2CE39FC09D2B8279@BN6PR12MB1476.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 c9zyaGGHU+yx/CkPODYG7veisn8eeY9BBPMpT2YnjCiYduPwn7GOZqlZtuaflkTWTDrIvU/fzxd4IlgfU5CyUxIURxMfsWVCQw4Xf8xHvtFV5QG8YxSE4XSVIvNbA1FXEy/f1SFhMyJdWakqW21RiTPyZX2u/oZYetwAPW39XceMe9sMFel86dtCM+FxR00j1ZnftYpC4eeDmMuMjgBKHgQsEbKDzVGtfwDSxko2FbGdTKG2YKdgeS2GJns5e26TmJxjfZlC02xrMyKETYGILcTdE4/7t3X4TtfjVYF1y9ozo5EdMvomW1WRoUVTEddr1BsbuZqsmCHAtWPFqS18MsZK+DNzMPQ+rs4EI072CTp+OpukUCidIHoUITvUA6RtEnT5zindf+9/D6S8Pv7jPJO/vhgu7cCLlyKQjnkw1KMy4WmlZhMgwnGkadJmegW7Y4cgopjegjHw2gRjglbVsrmFDCfutt9GL2vJI/8lyrrwUCz659WczhaDtxP7lxc8z0nOePnIs0FBXRqWzdz0StK/5eGzBAYCz4jbmMLTRN38Lt9oi9/sjPCcuxjehjDbonUZTTUVl9ofyj+h69gDyNFUhbi4Y1Mg1gXwazFb1inoY2+pXcWmrq5d/lMMgBK0adsNaNzizud0jsR0pZfqmHjNbFgtansp2ug4Fscfyw6dI14/oMvxu6lix3kbXvBc+tYRcXfBqnuJMJ4OQMV1aw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(346002)(376002)(39830400003)(136003)(366004)(508600001)(2906002)(55016003)(71200400001)(186003)(19627405001)(316002)(38100700002)(83380400001)(26005)(4744005)(5660300002)(122000001)(66476007)(33656002)(52536014)(110136005)(66446008)(64756008)(66946007)(76116006)(8936002)(8676002)(7696005)(66556008)(6506007)(53546011)(38070700005)(86362001)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?xDwEymxWamHx8vDWtrmIrTXSXJbZJNCQaECEGf/sdM5GnGrP8JIGdKqcjlzT?=
 =?us-ascii?Q?S8hqHebJWLB0Ck3cvZ9BKA0L/wSNYi4kCRtdXcpTPYvq84zOdeEe7ZgfRdro?=
 =?us-ascii?Q?vdSLRmLYtPYLF3dAFMcEDLVw6EbabaYyJ7sQ6ZnbTJmF8RON2SPgZJILJrqI?=
 =?us-ascii?Q?Eui5/JT5UFePdja9suIW8pg74t5KzXBqLj8YXPWvV+gWcCWDsf7K0BJyEz79?=
 =?us-ascii?Q?rvdNnAyeSEIitUU13VGXvQdV/RDKif69YjIdNMYUm6grlQmIPutTDvB3q8Ex?=
 =?us-ascii?Q?5VHRK85lbqhOPU3kzc6VAcV/MqeGXHQqkXqu5RgY6hu9+/QTeWuqOvmy8Jjs?=
 =?us-ascii?Q?sPdkc+EJMNDmCsLiHq7at35USRueWL0+wPNtHp7aLWCaJV5yKADZwpKr0zVi?=
 =?us-ascii?Q?DSEEq7go/mFGr3fdYfLnOHyDRlIr19m3+HdyzUurCGE9TwStBbOW/qw1YfA8?=
 =?us-ascii?Q?XEhwUahieT4B4jx3K6gjLtin0RzvoE+NJa0LaDeG2tgmrteHq6lWR/DdYKnB?=
 =?us-ascii?Q?4HnCBtAv6Pt/H7BJGmaSq5CQU+oAdYiMjHJKrLThkiUdFndmvzhj/38t3Gm+?=
 =?us-ascii?Q?PYhOdbPdSBbywumHfYe/8AF3t3J+wXvZJ3Z1xOENtO6K3r848VhJxO0Erh5k?=
 =?us-ascii?Q?LQVGm3XqY24vyGmQ+0o5Iy060G74gJ97+XFG/7sd4kQdKnkvf9rFgowvuuMm?=
 =?us-ascii?Q?DdXgqJSKs1kTycA8CAbWFPHWrKdZKTdzNwVGS0rxNn+mMWeGmZoUMAYTmJ4S?=
 =?us-ascii?Q?jnlWmNnGUWPLLSpgFFrcjgyF+j6TqEnvyQxxnfUPtF8YXQIhBa6mVAhEpIjZ?=
 =?us-ascii?Q?M5ebEW0xBLmyBHU3Rw8SR20Go2t+Iz5vN5CiqJrAAkE8C2S1NZi34cXr3X3Q?=
 =?us-ascii?Q?ilMiwEhq9qO3+YKAlFJ2z/Zp6D6vFL13F0mjK8j7Fic72m6JbzkBL9IbAWkx?=
 =?us-ascii?Q?LyOV3IuPd2hISwice8ON+O/ByDB77nL8CqtfZgu4MiUFlWbIBbaSWzBYPCP2?=
 =?us-ascii?Q?l+0rR4ovmjKWh6g4bIoGlussQV6OiUJHY+NdXIqkFdBsaSE4KVYMXUuhMkgk?=
 =?us-ascii?Q?jcyZuq9t5P5wY/NjsfCUpe4q2TEPGBnn48Jn46cVDkHiarkruDnXYdnmmWMh?=
 =?us-ascii?Q?ibH5ObHAt5hFi0oZ8uk+jwyFPE5MTh+/Av5WHuJjOaGeynBFjI3MuNg9x3j5?=
 =?us-ascii?Q?7lliO86hmtkGJRSoSMDTwYVQnxmB1gHWvB0NwB99JK4M03acs62NEfNUrx69?=
 =?us-ascii?Q?WhRxc6tKDIqSJBI9xlsE25qh5JEiVxxGETcmWEXb2Dbi5ajJPBMIgfRSDq4y?=
 =?us-ascii?Q?jgykLaTorf/FXnrd0ok/Bz5Lxe2d+081pEUo57f9wvwRWGDBbuoKWfa04KuB?=
 =?us-ascii?Q?R2zyZrUAz1RiPPPRc/+nSs6IVHkkhJ2RHE1YSkD/dH1tyzaaENSMEMokLxsA?=
 =?us-ascii?Q?XTLjudVZAmAq31Reaea4SnSedb1W/+kieuGvMaU3wLarFtjtrL0XGKBLC4CI?=
 =?us-ascii?Q?We2Hqnz7EEMXMQWQ9UAX6pcZeggvL1pRZrPJlCzWWUAixVijp+iSDYePF+X2?=
 =?us-ascii?Q?9QvRSWZf1/1LUwaE83i8HGaIypjaPO4p2+GWwPkUC7dfVJBEfWNQ+DUu6say?=
 =?us-ascii?Q?KFZ1adprjWBsJWkg/0v/4/ljRfK5jv5P7SuX3yhP5p3S1otujFysZUvB7vcj?=
 =?us-ascii?Q?VsrXdA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2835411c-e579-46f8-df90-08d9e65fafa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 15:21:29.1929
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NfyEoKwS3TiZxR0vK670517P47EvI8Pltd7xuga88qRIi+w8eOUXPsUnzwP5vpzrylr6sCqKf0kmh3aqI0Pl0msE16TqhIPt0TzjBEKSBXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1476
X-MDID: 1643815291-84alP6LP9LTa
Message-ID-Hash: JSSQ5MJRBWKGS35JTQ2CBOF6Z6HBFZHK
X-Message-ID-Hash: JSSQ5MJRBWKGS35JTQ2CBOF6Z6HBFZHK
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/354PKDKQSFTXG5QWYFG6BZ3XWLQJ7DCY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4596352230010114396=="

--===============4596352230010114396==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33129135EE23091DC520E48EB8279MN2PR12MB3312namp_"

--_000_MN2PR12MB33129135EE23091DC520E48EB8279MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, February 2, 2022 9:56 AM
To: Jim Palladino <jim@gardettoengineering.com>; USRP-users@lists.ettus.com=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 07:30, Jim Palladino wrote:
Marcus, thanks for the suggestions. I made sure to set the master clock rat=
e on both the E320 and N320. In the app I'm developing, I also tried set_ti=
me_unknown_pps() instead of set_time_now() as you suggested. Unfortunately,=
 neither one of those made a difference.


I ran test_timed_commands on N310, using UHD 3.15.0.0 (on Ubuntu 21.10).  I=
t worked as expected.



--_000_MN2PR12MB33129135EE23091DC520E48EB8279MN2PR12MB3312namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I'm =
at a bit of a loss . . .&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 9:56 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;; USRP-users@li=
sts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-02-02 07:30, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Marcus, thanks for the suggestions. I made sure to set the master clock rat=
e on both the E320 and N320. In the app I'm developing, I also tried set_ti=
me_unknown_pps() instead of set_time_now() as you suggested. Unfortunately,=
 neither one of those made a difference.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<br>
</blockquote>
I ran test_timed_commands on N310, using UHD 3.15.0.0 (on Ubuntu 21.10).&nb=
sp; It worked as expected.<br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB33129135EE23091DC520E48EB8279MN2PR12MB3312namp_--

--===============4596352230010114396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4596352230010114396==--
