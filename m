Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA8F47AA3D
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 14:19:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF38D38414E
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 08:19:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="jPcd7inh";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 311B738483F
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 08:18:08 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.128])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 1E450300085;
	Mon, 20 Dec 2021 13:18:06 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D292E78007D;
	Mon, 20 Dec 2021 13:18:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmR1SekC0ZE79IL6xsizY+r2QaUASs6VqhKtiUjkh5DUwmaaZm6nutpNygdZBYg2VmGvaghgUrQTTYr2J+4dHObBk6tfJ+XalW33VknSoQ260/B7Chi30epTSBAgBgU2eF8J08nqNrdB+DJ029FGkcnOewKroi3qjzaQtEp48kLO2eJc041qUYMEPFN4AYGrqPGDyRGcwLZh+F+n2ZAChc9LgSvP5Vyq8nKEsJqIrONEnVEGWL7oI3z1OpcSBWv0fTtxvnGhKNE95M3mrnEWY/4g+zo0DSDCU3Dk0sRDetjFlKslccjEMtquzkLRM0ZCcT48+k8qcO4u21Mu3XDxww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kDOBeY1GwC4gTsoVp5OWsDVG4zh4quSGCOpi4BCwABA=;
 b=c5saqpMva0Uvk/tbWI4rao/U6ROI9W6UwOlyCnFwc7zSr6Jm/V5QAiiqZ9+0plEPmntYgwIpkZ/FHyLc9SJpvY+Pxg8hc38j2QnyY4sSTFKt4I7/kSSUenOYvfvPWhBk+VEkxaq2AP1a9TLns+TDIdJdTNENiZLxRZpP5AYIh4FJwP6AMd3lY2lChvSyjnvCwynUMEmGI5onR2bcICh7PcJ8gYluZMGmFhKTKMoNQe9HMbeBmXpHe2ezW2RnWgjmPq9cZMPBsBfHbx9Pb6ncnIUxKG86gaMHArrxbrh6nQq9a/nrQsyWpY/mp1k9l7hmZfZtvh1bPhH0eWmk0EntTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDOBeY1GwC4gTsoVp5OWsDVG4zh4quSGCOpi4BCwABA=;
 b=jPcd7inh/YN5JnpQLrIZtuicc1+XqVkEO69yVADEMBuH684olgQB8l3w1MhcyixkkpHJ/KiW+jRAdwCCIcQ2tLVgc6/0elxeiImgzb03lcM4c4kR2sbNHSHb2ai8px+KSGFaNvQTNGgFn7t0KR6NULCF45oh/Huvx+hQ/ukphFE=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3358.namprd12.prod.outlook.com (2603:10b6:208:d2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.19; Mon, 20 Dec
 2021 13:18:04 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7169:fc2b:3322:2bed]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7169:fc2b:3322:2bed%5]) with mapi id 15.20.4801.020; Mon, 20 Dec 2021
 13:18:04 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: zhou <hwzhou@yahoo.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>, =?iso-8859-1?Q?Marcus_M=FCller?=
	<marcus.mueller@ettus.com>
Thread-Topic: [USRP-users] Time different between X310 and N310 USRPs using
 UHD4.1.0
Thread-Index: AQHX9YzPa6i6vZS9WEiy8ytwtayz2Kw7NKe6gAAgnQCAAAJn0Q==
Date: Mon, 20 Dec 2021 13:18:03 +0000
Message-ID: 
 <MN2PR12MB3312017026FEDC5C5E5D5F46B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
 <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
 <39042870.1585115.1639996294719@mail.yahoo.com>
 <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <24577536.1842643.1640004636102@mail.yahoo.com>
In-Reply-To: <24577536.1842643.1640004636102@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: ef57612f-7a6c-a27b-fa2f-96ec5f1a248d
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2dbc6fb-6e6e-4b35-b26b-08d9c3bb2796
x-ms-traffictypediagnostic: MN2PR12MB3358:EE_
x-microsoft-antispam-prvs: 
 <MN2PR12MB3358AF417F2D66148FD2F7F2B87B9@MN2PR12MB3358.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xdgYhYD4p+5n5mrcGOHZziP3Pyypbk8appc86FJW9NIO1TBgYB8000fJ6GOpxPCEoqMODGA9yYaBI4BWoTqnSyp4n6ghoXIlJI685tQasasTDi67CU1GlIXTObAgbzsJ9wS2FqLgNfSk/4wx9fFK9HIUR6+tQgrlmSl7emUcaVE//SXXy4NKnN6e1g/lpvFitP4qs6rsRC4vXQO3v/fFQgO5ZFdp16x4Ay9uc1xhRO6e8ObiOrVJShWnHyx1V6UzY3o74uMvODijGrDPMVg7T16oKbDwZ2nEO0zT2R4VgKNNMU2WHMQWM/tUj3bOOpZpaR1d6ZLrqO16ZqVJ0o0sT7sPirGLqkb7nIzdqLa5cRfAN1eCbl0pCXOOgaznncVIWDjECpv53dnilm12HDknkvd93svESmTmyRZ94XkSv9bgIgeLs3QZ21O+rftFVw4LshxHePdzlgOqHv0J6WxcBjV2IzsgLzYd2dtOQLLPs580LMPYp+hHOsdHbXsQTw6whXrBzBnMeyqcB2sv4H90SXLzV81Wl+BkIGpAR/TAxbS4KqDoJkWBBy3IxnXT8JU1cYCh6WdJkVl86g7U8yDwDT6at8+sJyOQB8rxNuZrHpOcTGvl4vO5GlnxWDZ560FJHfQquFbb7eJYzozvtv7It1gMIcFEtbXwEnKnNVrCN4qqJs9ZA9JEG4clMnK0Iljm2+UoDvL/CQTLKiLBS041fw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(346002)(376002)(39830400003)(366004)(83380400001)(66574015)(33656002)(19627405001)(110136005)(26005)(55016003)(316002)(122000001)(66556008)(66946007)(64756008)(66476007)(38070700005)(2906002)(508600001)(6506007)(53546011)(66446008)(9686003)(86362001)(52536014)(8936002)(71200400001)(38100700002)(7696005)(76116006)(186003)(5660300002)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?zRkVPYA+KmQweVCGbzzrGJrZwtu8xK0IkL2CAfEzyVbL86xOWRfAZ2NTQG?=
 =?iso-8859-1?Q?BWsp4nOePI4pu713+RrtR/eZ2r6q3cGrCqVSCSYoEfw/k3V5hD5/jyk7/B?=
 =?iso-8859-1?Q?ROb0vFEgFGbE9wb4oWDTLgKOdfvNBsWdau8xi0W0+8amMydTIdgOAGgqUs?=
 =?iso-8859-1?Q?PUBawga0h6eoPzATUw8xXGyV/PZbhmlsIUaE5mvSDIwbC8MSPuG9y3Cq2n?=
 =?iso-8859-1?Q?DfMOpqj8ghlqzRW4z2ANeSKy0he7S3EmE/zartRy70sqMUweXtNOG1wyqR?=
 =?iso-8859-1?Q?Bji5hR2O/tE+AoPU28LvwF7tsYcfYhJQxHHmWAyAv2P37Bo4AXEr3AZdGb?=
 =?iso-8859-1?Q?MO+3SO1up2KrctX9tZVrbcS7dhPu+rHeyNcdFT0o3DLrjA3jiq78QQGF3X?=
 =?iso-8859-1?Q?QY0hSFVughZ+zag74Hh9qr5/jZvVsZbqqLS0h8XkuEOTHS0rsOLAhzOCbE?=
 =?iso-8859-1?Q?ogdu6zFWqP6tIlXANhYdwSFUnOHHqfpCUHt9WrQWKW8GsxrM0wmFK+Zh7P?=
 =?iso-8859-1?Q?EVGJRyrrctmB7MpyuFXLlK3YJVbSWIGNX345sMj/vEqiaje9LsFr/dvT1c?=
 =?iso-8859-1?Q?AtjcAJhppUGiBCUZqz+TsEiCCAzbpQMmNsxYvdzRh9LqDgzgs8GxmrVNt2?=
 =?iso-8859-1?Q?80lDTzqIrAItRpXPko5GDELaAUOUGMt0jX4amZ8tpjHn6hKeCKr7z6KwZI?=
 =?iso-8859-1?Q?32jRbAG2nVWNQvUgnOoVeYsqu0O9+5jvA9wD0t/F61bPKI8+QuAgkgrn/E?=
 =?iso-8859-1?Q?5i92iik07POmCeWpv6I4F3FDCA0QugH1xccxMyCKFiMwunB95Ul0qKfBcO?=
 =?iso-8859-1?Q?xRvXbuWnoouUQecgNecSmPL52HhfqHVjwEgrkexgq9tnHqLAzRPXEtwa83?=
 =?iso-8859-1?Q?xyoJgk37mJIMD/NCoVqzcb8xmuwj4+5FQkbinLh8PfkLPJs2OELKKX5uCN?=
 =?iso-8859-1?Q?Kq8ZF0F5j/21ZN2hOWwYOkYLbkHjyN0VXsF89uuwooII8YTs6dgYjTEJDs?=
 =?iso-8859-1?Q?jd2yJpMo8LQxUcRBnZtDlvt/MviWshxmYGWVWX0xbLYri/0w3BrkWLkpoj?=
 =?iso-8859-1?Q?TL8QtXvMQTnuDy8XMpXIR2QUenCHS46BvQ0VaqyBL+45XsARimOkI+Or7t?=
 =?iso-8859-1?Q?DWzPvXz1CNsxBQP1v7MkEvdVJxlqVULmaIrFXeVXW13NUUjkUNjhdf1hKV?=
 =?iso-8859-1?Q?g8fT2YBKCQ3He8DQsWXFV67Gj8RO2rtGXgGXa40oeD4Rlj4Sxfhdt69H79?=
 =?iso-8859-1?Q?tCZMxsFne3fWYQETL5EltCh0nz1EMmUTpzm1VezP96GlNCMkDC+Mc7/U81?=
 =?iso-8859-1?Q?2WruuC9u2LppaHIjEGo2XS8TZU0/eZuIRXyBrEHNx7Yhkb0lvXMTAK/F/H?=
 =?iso-8859-1?Q?OGdZfGuK09Izk+aYtisfFlChdZnlP/qs4OZQ2jdOLvtNdk5elwENYOypH0?=
 =?iso-8859-1?Q?wvEoc8pDXt1UPMxnmVOxvPQxcGxcPIP5bgzg20rwpbLrpiNPyDJAqypxgp?=
 =?iso-8859-1?Q?7vR8B/SB+JNmu00rMtKXsQ33oPQSJFFxdCeWcPW5u0Ji6HC/yPIYBsfGlw?=
 =?iso-8859-1?Q?coa1NA6QEjNa3zzPgZJezmqW3kOs9QXBSOIikOzbvJKVr98L7vnHiHeIMz?=
 =?iso-8859-1?Q?T4YSgKv4CZ1IU/gDh/pqDonOFoKskL5l1mS3qhCJaKPIGC1WPMKfo7jXJc?=
 =?iso-8859-1?Q?EHkHtfzv+uC06G0GXrlfwM5hNvBvdxGOGH/kwKRezg6ixQlCbYQmXDHujm?=
 =?iso-8859-1?Q?e2AQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2dbc6fb-6e6e-4b35-b26b-08d9c3bb2796
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2021 13:18:03.8035
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YatgHYCorYnOI1Sp+HdUF2xbvnSZnZ89HDZPB3jcLwn/+ibqKk9KlnJCrru99M0gLuDMEa/da2u8AUgf/am78cyqZ1S7qmfIQyAp6mlXRxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3358
X-MDID: 1640006286-LmOkY18exfVm
Message-ID-Hash: OK37UU5W4T42XDL3EIQSDBKANYBKIQTM
X-Message-ID-Hash: OK37UU5W4T42XDL3EIQSDBKANYBKIQTM
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/52RN3XMCLOBCUH7FYZIOVHCWYRVQVHUQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7995531604722697953=="

--===============7995531604722697953==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312017026FEDC5C5E5D5F46B87B9MN2PR12MB3312namp_"

--_000_MN2PR12MB3312017026FEDC5C5E5D5F46B87B9MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hongwei,

If this is your problem, then "get_time_last_pps()" should report the same =
time between the X310 and N320, unless you happen to ask it (or if you set =
it) during that 200ms window between the 1pps rising and falling edges.

However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the "get_time_now()" command at the same time to both devices, th=
e X310 will be 200ms behind the N320.

To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used a function generator instead of the Octoclo=
ck to generate the 1pps to both devices. Then, we varied the duty cycle of =
the 1pps pulse and saw that the time difference between the two devices tra=
cked the duty cycle (the time that the 1pps pulse is high per second).

Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would set the N320 to the time we specified =
1 second later (when the next rising edge occurs). However, the X310 would =
see the falling edge occur 200ms after issuing this command. So, it would s=
et it's time then. So, the way we were doing it, the X310 was actually gett=
ing set 800ms earlier than the N320.

Hope this helps.
Jim

________________________________
From: zhou <hwzhou@yahoo.com>
Sent: Monday, December 20, 2021 7:50 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=FClle=
r <marcus.mueller@ettus.com>; Jim Palladino <jim@gardettoengineering.com>
Subject: Re: [USRP-users] Time different between X310 and N310 USRPs using =
UHD4.1.0

Hi Jim,

Thank you so much for your quick reply. Your finding is very interesting an=
d I believe it is very related to my problem.
After some thinking, I am still having some confusion:
Because N320 and X310 USRPs are using different pulse edges, their time 0s =
are actually different by 200ms in universal time, but their internal timer=
s should be similar. When querying their time respectively, we should get s=
imilar time - the responses are their internal times. But I am seeing 200ms=
 difference.

Could you please give some comments on this?

Thanks a lot,
Hongwei


On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino <jim@gardettoengin=
eering.com> wrote:


Hi,

We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS pulse from the Octoclock stays high for a=
bout 200ms, so I'm guessing this is the issue you are seeing.

We ended up making our own custom FPGA build for the X310. We modified the =
file:
"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".

Originally, the PPS edge detection looked like:
pps_edge<=3D pps_del & ~pps;

We changed it to:
pps_edge<=3D ~pps_del & pps;

It would be good if this could get "fixed" in UHD, as it would be nice to n=
ot have to maintain a custom FPGA build. I'm not sure what effect this chan=
ge will have on other USRP FPGA builds that use the same timekeeper.v file.

In any case, I'm guessing this is your problem.

Jim





________________________________
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, December 20, 2021 5:31 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=FClle=
r <marcus.mueller@ettus.com>
Subject: [USRP-users] Time different between X310 and N310 USRPs using UHD4=
.1.0

Hi,

I am using mixed types of USRPs in my applications, namely, X310 and N310. =
The signals are timed. I find 0.2-second time difference between these two =
USRPs.
Details:
Each USRP is controlled by a Linux server;
The same Linux version in all PCs;
All USRPs are connected to the same Octoclock;
UHD version is 4.1.0 in Linux servers;
All Linux servers are connected to a control PC which is the client;
The sampling rates are different: 184.32MHz in X310 USRP and 245.76MHz in N=
310 USRP

Control PC sends command to set time 0 after PPS in all USRPs, then query t=
he time in each of them.
The time difference between USRPs of the same type is small, ~2ms, but the =
time difference between different types of USRP is much bigger, ~0.2s.
Times should be impacted by sampling rate; when setting timers, no signal i=
s transmitted.

2ms time difference between USRPs could be due to network delay; 200ms can'=
t be because of network. It seems to be due to HW in USRPs. Does this mean =
that X310 and N310 are not synchronized?

Thanks for any comment,

Hongwei




--_000_MN2PR12MB3312017026FEDC5C5E5D5F46B87B9MN2PR12MB3312namp_
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
Hongwei,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If this is your problem, then &quot;get_time_last_pps()&quot; should report=
 the same time between the X310 and N320, unless you happen to ask it (or i=
f you set it) during that 200ms window between the 1pps rising and falling =
edges.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the &quot;get_time_now()&quot; command
 at the same time to both devices, the X310 will be 200ms behind the N320.<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used
 a function generator instead of the Octoclock to generate the 1pps to both=
 devices. Then, we varied the duty cycle of the 1pps pulse and saw that the=
 time difference between the two devices tracked the duty cycle (the time t=
hat the 1pps pulse is high per second).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would
 set the N320 to the time we specified 1 second later (when the next rising=
 edge occurs). However, the X310 would see the falling edge occur 200ms aft=
er issuing this command. So, it would set it's time then. So, the way we we=
re doing it, the X310 was actually
 getting set 800ms earlier than the N320.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hope this helps.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> zhou &lt;hwzhou@yahoo=
.com&gt;<br>
<b>Sent:</b> Monday, December 20, 2021 7:50 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=FCller &lt;marcus.mueller@ettus.com&gt;; Jim Palladino &lt;jim@gard=
ettoengineering.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Time different between X310 and N310 USRPs=
 using UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_ydpbf121617yahoo-style-wrap" style=3D"font-family:Helvetica=
 Neue,Helvetica,Arial,sans-serif; font-size:13px">
<div></div>
<div dir=3D"ltr">Hi Jim,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thank you so much for your quick reply. Your finding is ve=
ry interesting and I believe it is very related to my problem.</div>
<div dir=3D"ltr">After some thinking, I am still having some confusion:</di=
v>
<div dir=3D"ltr">Because N320 and X310 USRPs are using different pulse edge=
s, their time 0s are actually different by 200ms in universal time, but the=
ir internal timers should be similar. When querying their time respectively=
, we should get similar time - the
 responses are their internal times. But I am seeing 200ms difference.</div=
>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Could you please give some comments on this?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks a lot,<br>
</div>
<div dir=3D"ltr">Hongwei<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div><br>
</div>
</div>
<div id=3D"x_ydp2f3ddc08yahoo_quoted_0577239239" class=3D"x_ydp2f3ddc08yaho=
o_quoted">
<div style=3D"font-family:'Helvetica Neue',Helvetica,Arial,sans-serif; font=
-size:13px; color:#26282a">
<div>On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino &lt;jim@garde=
ttoengineering.com&gt; wrote:
</div>
<div><br>
</div>
<div><br>
</div>
<div>
<div id=3D"x_ydp2f3ddc08yiv3164486821">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS
 pulse from the Octoclock stays high for about 200ms, so I'm guessing this =
is the issue you are seeing.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">We=
 ended up making our own custom FPGA build for the X310. We modified the fi=
le:</span><br clear=3D"none">
<span style=3D"color:rgb(61,60,64); font-family:Calibri,Helvetica,sans-seri=
f; font-size:12pt; text-align:left; background-color:rgb(255,255,255); disp=
lay:inline!important">&quot;uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v&quo=
t;.</span><br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">Or=
iginally, the PPS edge detection looked like:</span><br clear=3D"none">
<span style=3D"color:rgb(36,41,46); font-family:Calibri,Helvetica,sans-seri=
f; font-size:12pt">pps_edge&lt;=3D pps_del &amp; ~pps;</span><br clear=3D"n=
one">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Calibri,Helvetica,sans-seri=
f; font-size:12pt">We changed it to:</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">pps_edge&lt;=3D
 ~pps_del &amp; pps;</span></span><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">It
 would be good if this could get &quot;fixed&quot; in UHD, as it would be n=
ice to not have to maintain a custom FPGA build. I'm not sure what effect t=
his change will have on other USRP FPGA builds that use the same timekeeper=
.v file.</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">In
 any case, I'm guessing this is your problem.</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">Jim</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"></span>
<div style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:14px; =
background-color:rgb(255,255,255)">
<div>
<div class=3D"x_ydp2f3ddc08yiv3164486821a11y__section x_ydp2f3ddc08yiv31644=
86821post x_ydp2f3ddc08yiv3164486821other--root" style=3D"max-width:100%; p=
adding:8px 0.5em 0px 1.5em">
<br clear=3D"none">
</div>
</div>
<div style=3D"display:inline; min-height:0px; z-index:-1; margin:0px">
<div dir=3D"ltr" style=3D"visibility:hidden; z-index:-1; min-height:160.652=
px">
<div style=3D"z-index:-1">
<div style=3D"z-index:-1; min-height:160.652px">
<div style=3D"min-height:187px"></div>
</div>
<div style=3D"z-index:-1; min-height:160.652px">
<div style=3D"min-height:306.133px"></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:14px; =
background-color:rgb(255,255,255)">
<div>
<div class=3D"x_ydp2f3ddc08yiv3164486821a11y__section x_ydp2f3ddc08yiv31644=
86821post x_ydp2f3ddc08yiv3164486821same--user x_ydp2f3ddc08yiv3164486821sa=
me--root" style=3D"max-width:100%; padding:0px 0.5em 0px 1.5em">
<span class=3D"x_ydp2f3ddc08yiv3164486821post__content" style=3D"display:ta=
ble; width:760.415px; padding:0px 8px 0px 5px; margin:0px auto; table-layou=
t:fixed"></span></div>
</div>
</div>
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:13.5p=
x; text-align:left; display:inline!important"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:13.5p=
x; text-align:left; display:inline!important"><br clear=3D"none">
</span></div>
<div id=3D"x_ydp2f3ddc08yiv3164486821appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_ydp2f3ddc08yiv3164486821yqt49578" class=3D"x_ydp2f3ddc08yiv316=
4486821yqt1332618028">
<div dir=3D"ltr" id=3D"x_ydp2f3ddc08yiv3164486821divRplyFwdMsg"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> zhou via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br clear=3D"no=
ne">
<b>Sent:</b> Monday, December 20, 2021 5:31 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br clear=3D"none">
<b>Subject:</b> [USRP-users] Time different between X310 and N310 USRPs usi=
ng UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_ydp2f3ddc08yiv3164486821x_ydpf2317585yahoo-style-wrap" styl=
e=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif; font-size:13px"=
>
<div></div>
<div dir=3D"ltr">Hi,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">I am using mixed types of USRPs in my applications, namely=
, X310 and N310. The signals are timed. I find 0.2-second time difference b=
etween these two USRPs.</div>
<div dir=3D"ltr">Details:</div>
<div dir=3D"ltr">Each USRP is controlled by a Linux server;<br clear=3D"non=
e">
</div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0); font-family:Helvetica Neue,Helv=
etica,Arial,sans-serif">
The same Linux version in all PCs;</div>
<div dir=3D"ltr">All USRPs are connected to the same Octoclock;<br clear=3D=
"none">
</div>
</div>
</div>
<div dir=3D"ltr">UHD version is 4.1.0 in Linux servers;</div>
<div dir=3D"ltr">All Linux servers are connected to a control PC which is t=
he client;</div>
<div dir=3D"ltr">The sampling rates are different: 184.32MHz in X310 USRP a=
nd 245.76MHz in N310 USRP</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Control PC sends command to set time 0 after PPS in all US=
RPs, then query the time in each of them.</div>
<div dir=3D"ltr">The time difference between USRPs of the same type is smal=
l, ~2ms, but the time difference between different types of USRP is much bi=
gger, ~0.2s.</div>
<div dir=3D"ltr">Times should be impacted by sampling rate; when setting ti=
mers, no signal is transmitted.</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">2ms time difference between USRPs could be due to network =
delay; 200ms can't be because of network. It seems to be due to HW in USRPs=
. Does this mean that X310 and N310 are not synchronized?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks for any comment,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312017026FEDC5C5E5D5F46B87B9MN2PR12MB3312namp_--

--===============7995531604722697953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7995531604722697953==--
