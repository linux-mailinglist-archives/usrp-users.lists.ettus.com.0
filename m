Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 179FB47A82F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 12:05:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26F29384B0F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 06:05:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="Cwlt44ND";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id A298D384794
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 06:04:08 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.25])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 1486D2C006E;
	Mon, 20 Dec 2021 11:04:07 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CAFBCB00061;
	Mon, 20 Dec 2021 11:04:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dzdg73dt5XVIBwD43Dm75GbLuEMr87X7zu3TkjjIzmoyyLOgsf0epi6k3H3cxIUZx50m+DRQ7eaYRCcbtvAGaCpTnq+hM93mKfirg7YRP3H6383o5PuTRalaFg6W0i0CFS6ZftP6V6A0pzP8HOzIq5eXl74VoK9C8NdilM+mcGhAINOwPrlokwUZb6plbdv48/UdjCnApWIOOBsC/DtC/RuUT8U9ibQww6bbDOVYS/mj4AhdTpB9/mAriLf0XbTE9YEzl93OSFNuFY8a4aItfsrTW1CFBozhbS2E+aa0+FSAzkQIt+6oLVg3Dil05zvvC2nJJp7aAyghT0HZwiVyxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXNITlhnrb1L9WxsLMaT2IzNmpF5nhLRdlg8REWQEKs=;
 b=LIyFZ9t0LdwMOAbycuwEiTb3//aLNGxtuYbYGoZ+o74VCY/vpz9CEZxQ+Lmay0M1d3f32NWOuoGu4XZNUnQ2d5l6MXregNjN5IS2uy/87jfe4E8papPrT+rb6FNCQGWX9OZJUjBXrNb8hk/BD3ACUK7vD6ksDopA5Uf9J6GYW+w/02Td8bgoqJx36I/p2bzZv4SPh300oUWaPtXKMJJvnVpa0rTcNvg4Di9lQXwfiR7KSG2jJFQHSNDio3xIpbN6cPREZBhqk68VY2+1kMX8+NBtNCxMBbZaKu0r+efXlXjoVg3vg0v81QR7TkrQKmQNu6EB3JY4dQzYtbyqPtIWnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TXNITlhnrb1L9WxsLMaT2IzNmpF5nhLRdlg8REWQEKs=;
 b=Cwlt44NDTdieHSe1z1X0LMuuKGU5OisdBE8irObbuR7BYGg1bA2HW6WtxbEnD+AmGzZpWXGcv2hmwHQEAE1J/X6aAzOOYIyENaDzP2bl191gFX2xMhHk8UEYF7jSJXRbyByPgjZPqIyvu/b27DwUD0GPqg2V4qeY6gvWDQDthSg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3391.namprd12.prod.outlook.com (2603:10b6:208:c3::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.18; Mon, 20 Dec
 2021 11:04:04 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7169:fc2b:3322:2bed]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7169:fc2b:3322:2bed%5]) with mapi id 15.20.4801.020; Mon, 20 Dec 2021
 11:04:04 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>, zhou
	<hwzhou@yahoo.com>
Thread-Topic: [USRP-users] Time different between X310 and N310 USRPs using
 UHD4.1.0
Thread-Index: AQHX9YzPa6i6vZS9WEiy8ytwtayz2Kw7NKe6
Date: Mon, 20 Dec 2021 11:04:04 +0000
Message-ID: 
 <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
 <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
 <39042870.1585115.1639996294719@mail.yahoo.com>
In-Reply-To: <39042870.1585115.1639996294719@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: d7cab705-3f3e-7930-5978-f7c54e2c7111
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 106ff0fb-b06e-41fc-75ca-08d9c3a86fcb
x-ms-traffictypediagnostic: MN2PR12MB3391:EE_
x-microsoft-antispam-prvs: 
 <MN2PR12MB33916960B4CDC7075279362EB87B9@MN2PR12MB3391.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GdSgfgp/8qMObUJKxHKTMB4NGPO5sVCx3VP6aq8jogUfVhbxyaGxJg1YERH+Y3wHKwOi5+r+MA/kqzHrOYnD/VPYbSIGDG+zTB0gkfH3/iAvNdmub1xasYi8dV2ZRrT5WrONW1Y7T12PqHZ4t0mLtRP2aETl0yXV05oWbtjL6Zci9Ysz8/eUui80AkQCUPNYZ1iflkIpKQ8rhqubN+YYJUzVe5LMqfd8b6k9j9HURj9taT70snWB5phRgAxRAz55g4P1RHsaO+B6+9+yXYhs5m8ne/vXd1OiNjgNJtkgv6KBaB3g3ixuGWjEvi/ozMMr5iHEfY/8vbt86oq+nnpiYc115tBVfiobNCoOJ5wc0rsWiWrStonvNK33pMLTQ2PBbDrdnLGlOtE77NqdgIEzSe5TZZeOlaw8xaAKArl0vOWsPxn5ADaemPUWhu+pOVpSPtiUM+C6/ki1zqpRj9OIZzarN06lezbeoEMOtgPTeLlJuWvsOflDM5pOgOiqi8ZyjgmmYknNX3VJcpuOUKRdDywNB/BWM6USmZFbFZ9yefjC7CWMe7CX9u6+PAdXIddEjRXEuplH5h28u41Sl9pzwngcRejmZLTe8dVlizdOP6daAIB11c8AvukDi15psD13WKsw6tMmC/OvkJKUaQJ7d0DRJzR9txEfdmFP6Shay1ahE9XLYgQ9FBYGtOsJ+33G0LEUce489zTaLP/7lMkRsQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(366004)(39830400003)(376002)(136003)(396003)(53546011)(38070700005)(26005)(6506007)(508600001)(33656002)(110136005)(8676002)(316002)(186003)(2906002)(9686003)(71200400001)(55016003)(122000001)(38100700002)(83380400001)(86362001)(64756008)(66556008)(66946007)(76116006)(66574015)(66446008)(66476007)(5660300002)(8936002)(52536014)(7696005)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?AJmqaxcBuk5sWZaH42MtuhSB7kTxKbYeEyDVtJ7/XTSFhx4pUlr0JKdIjG?=
 =?iso-8859-1?Q?doir3I0qRy0oVfOROBf0YtgJN8dJJG1hkmMCQKf0BItYgI0WF4nKSTdbQK?=
 =?iso-8859-1?Q?MZvU851nsEgvT0pTJYTthMYqdPgeOdoiWE3jmEIiGfuWL/hryc/KoKqJoK?=
 =?iso-8859-1?Q?TLsvSfMIwkdWqjTbZGQBYlHza4mpF8niNWHidrgv/ifBRD4hjmMhc8s0A2?=
 =?iso-8859-1?Q?kLkSHYAZv07Y6Dxu+1UyTZErtcnFBLMPWLe+z75d61AAHYIeIXpaekv0ON?=
 =?iso-8859-1?Q?tHkhBA1T3Fz/VdrxN1vqe0zjpVMTNsQh2wCzAC7vryFS8ihfSbsWXg+PNh?=
 =?iso-8859-1?Q?zV+4zDQYLkOlg90hBYv2EIgZWEySqG35eUoYBvXqSWDPhMou5dHP/JHLmh?=
 =?iso-8859-1?Q?iJBF31zJvjHmTP6EsKzxGt5QEhIRQD3rYxszFm04k0laxgJGwf8kyDZs60?=
 =?iso-8859-1?Q?z++mCfi0GfO2Naz2gWi6r4L4QjWLcdcCZV1ejcUAIjnmC+JCkJ3HCBzxG9?=
 =?iso-8859-1?Q?J9Im0Qgp9jT6kM8KEW0Do2QTAvrwZvc22nl7MKDFBmI2hT9ivg9XW8Cvu/?=
 =?iso-8859-1?Q?E0fpBStzLGiCYQEJBCf/FaJV3JtIXs/zVz1V9OZIaxHgtBbXzZQ1hYShKQ?=
 =?iso-8859-1?Q?auKLe+tWJbc82beSx5O3PkCgUV3WltHIRk6ewIGbPLrNDBYx+6PD+rEvMP?=
 =?iso-8859-1?Q?78QJfH4/aZ+BVou2nL8weG472j0uaadiMQEhxmlHYhmoRLb4on7vd2wZLh?=
 =?iso-8859-1?Q?rKgat7hL5M1TTfzecCwcLP8UwWpbmeMqnh277U34FGjB0/35IrVAevkESB?=
 =?iso-8859-1?Q?4XD3rRjai8H/aT/+9VO0EJeMXp8FR3hjczTi0JGnLILAbfdtXbHdsLFEH4?=
 =?iso-8859-1?Q?1CwzaXRhQbtmN6QhFqvRgEf4C7Y7iREI6jsCZI50QBKrOH7Cn85i5uG+zK?=
 =?iso-8859-1?Q?Q7rw5nqSGJtFWFumBkZ+LIFkwGD7K9MBdmT3IY3nUC7HKTugxE6aZmtSq/?=
 =?iso-8859-1?Q?EE7BaAUKH+n6VWuOPf3cntXBd/xWWnN7yctNM8pKu/Cw7cIULD782kd+fW?=
 =?iso-8859-1?Q?mmJAuhX+PWy2hEhR3EzZFgK4SrkhsYYExYHnQdMyo1bA9kebdZzRtw5jEb?=
 =?iso-8859-1?Q?ept2Cl6udPRLF66ZizPEIzilLXBn6ZOGTBCf4hRbEuZQZv6QRmHZXc+gPL?=
 =?iso-8859-1?Q?Ah6uS7viyaz6i0sbIwe0fX1uGXepWPkvpJCoiU7YnVM1ya/zPIEJJzxJET?=
 =?iso-8859-1?Q?XqZw4b8+ovgZVO3ZRg9K4LDSGA2ypfkNiYN6GKMlAG2lCuF6yM3cr47weE?=
 =?iso-8859-1?Q?rTVAYANdJEGe6+QOeoN/UFGNWOBeW5Ji1+p2b5K/v7ZjT2VK089vDATuzj?=
 =?iso-8859-1?Q?eNw1T4xFOrJFoZrcrhkd6CUY7s0Nz7vTMZDK8cCcKhizRBT0tlTuXTWWep?=
 =?iso-8859-1?Q?QRCihxt4ZOrqV485JCbaA/9+mAV0/aiPya9Bmkf1EhKPKbir+ux73nJRqS?=
 =?iso-8859-1?Q?iKPbBWQZzncoN3IbhCSbThPWFKEQbF8/wrwM1WKzTeWIpXgUiyh4aCJpKA?=
 =?iso-8859-1?Q?kAn5oWOi1z6U2dLS//K3sAspEIdw8nlx7/tgIwz68dIVsyQWD6UBLZysXK?=
 =?iso-8859-1?Q?IWhd7VNtjNuUrNnN6VwMftRjzGRt82q4fdwo92n9y9r6zhZd6VYY6qeQqM?=
 =?iso-8859-1?Q?zdnCZdj7MgfD1x5qEX3oLDmchCO6Hwm/FpL9URr5FcYIcJNgJF7l3dXbC8?=
 =?iso-8859-1?Q?/Yqw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 106ff0fb-b06e-41fc-75ca-08d9c3a86fcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2021 11:04:04.4744
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lNqFIzQyISC0VU8BqUduTnS4G++DgzBQXOByavyBXBisujryBB8sOrACXt0+jDy6WyLbW1JGZ++ifoDK2PSmC+urjKLBH4U1R9AmQFWpocg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3391
X-MDID: 1639998247-7BqTLGeRmd2T
Message-ID-Hash: 2RZ7CNTBR4S3PB6KQQDPTARKC7UJXGNT
X-Message-ID-Hash: 2RZ7CNTBR4S3PB6KQQDPTARKC7UJXGNT
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3852565905063039383=="

--===============3852565905063039383==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9MN2PR12MB3312namp_"

--_000_MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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




--_000_MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9MN2PR12MB3312namp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS
 pulse from the Octoclock stays high for about 200ms, so I'm guessing this =
is the issue you are seeing.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-size: 12pt; font-family: Calibri, Helvetica, sans-serif=
;">We ended up making our own custom FPGA build for the X310. We modified t=
he file:</span><br>
<span style=3D"color: rgb(61, 60, 64); font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; text-align: left; background-color: rgb(255, 255,=
 255); display: inline !important;">&quot;uhd/fpga/usrp3/lib/rfnoc/utils/ti=
mekeeper.v&quot;.</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-size: 12pt; font-family: Calibri, Helvetica, sans-serif=
;">Originally, the PPS edge detection looked like:</span><br>
<span style=3D"color: rgb(36, 41, 46); font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt;">pps_edge&lt;=3D pps_del &amp; ~pps;</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt;">We changed it to:</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);">pps_edge&lt;=3D
 ~pps_del &amp; pps;</span></span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);">It
 would be good if this could get &quot;fixed&quot; in UHD, as it would be n=
ice to not have to maintain a custom FPGA build. I'm not sure what effect t=
his change will have on other USRP FPGA builds that use the same timekeeper=
.v file.</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);">In
 any case, I'm guessing this is your problem.</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);">Jim</span></span><=
/span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;"><span style=3D"marg=
in:0px;font-size:12pt;font-family:Calibri, Arial, Helvetica, sans-serif;col=
or:rgb(0, 0, 0)"><span style=3D"margin: 0px; font-size: 12pt; font-family: =
Calibri, Helvetica, sans-serif; color: rgb(36, 41, 46);"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(36, 41, 46); font-family: Menlo, Monaco, Consolas=
, &quot;Courier New&quot;, monospace; font-size: 13px;">
<div style=3D"box-sizing:border-box;color:rgb(61, 60, 64);font-family:&quot=
;Open Sans&quot;, sans-serif;font-size:14px;background-color:rgb(255, 255, =
255)">
<div style=3D"box-sizing:border-box">
<div data-testid=3D"postView" class=3D"a11y__section post  other--root" tab=
index=3D"0" style=3D"box-sizing:border-box;max-width:100%;padding:8px 0.5em=
 0px 1.5em;overflow-wrap:break-word;background-color:rgba(var(--center-chan=
nel-color-rgb), 0.04)">
<br>
</div>
</div>
<div style=3D"box-sizing:border-box;display:inline;height:0px;z-index:-1;ov=
erflow:hidden;margin:0px">
<div dir=3D"ltr" style=3D"box-sizing:border-box;flex:0 0 auto;overflow:hidd=
en;visibility:hidden;z-index:-1;height:160.652px;left:0px;top:0px">
<div style=3D"box-sizing:border-box;flex:0 0 auto;overflow:hidden;z-index:-=
1;inset:-9px -8px -8px -9px">
<div style=3D"box-sizing:border-box;flex:0 0 auto;overflow:scroll;z-index:-=
1;height:160.652px">
<div style=3D"box-sizing:border-box;left:0px;top:0px;height:187px"></div>
</div>
<div style=3D"box-sizing:border-box;flex:0 0 auto;overflow:scroll;z-index:-=
1;height:160.652px">
<div style=3D"box-sizing:border-box;height:306.133px"></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"box-sizing:border-box;color:rgb(61, 60, 64);font-family:&quot=
;Open Sans&quot;, sans-serif;font-size:14px;background-color:rgb(255, 255, =
255)">
<div style=3D"box-sizing:border-box">
<div data-testid=3D"postView" class=3D"a11y__section post same--user same--=
root " tabindex=3D"0" style=3D"box-sizing:border-box;overflow:hidden;max-wi=
dth:100%;padding:0px 0.5em 0px 1.5em;overflow-wrap:break-word">
<span data-testid=3D"postContent" class=3D"post__content " style=3D"box-siz=
ing:border-box;display:table;width:760.415px;padding:0px 8px 0px 5px;margin=
:0px auto;table-layout:fixed"></span></div>
</div>
</div>
<br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color:rgb(61, 60, 64);font-family:&quot;Open Sans&quot;, san=
s-serif;font-size:13.5px;text-align:left;background-color:rgba(61, 60, 64, =
0.04);display:inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color:rgb(61, 60, 64);font-family:&quot;Open Sans&quot;, san=
s-serif;font-size:13.5px;text-align:left;background-color:rgba(61, 60, 64, =
0.04);display:inline !important"><br>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> zhou via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, December 20, 2021 5:31 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Time different between X310 and N310 USRPs usi=
ng UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_ydpf2317585yahoo-style-wrap" style=3D"font-family:Helvetica=
 Neue,Helvetica,Arial,sans-serif; font-size:13px">
<div></div>
<div dir=3D"ltr">Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am using mixed types of USRPs in my applications, namely=
, X310 and N310. The signals are timed. I find 0.2-second time difference b=
etween these two USRPs.</div>
<div dir=3D"ltr">Details:</div>
<div dir=3D"ltr">Each USRP is controlled by a Linux server;<br>
</div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0); font-family:Helvetica Neue,Helv=
etica,Arial,sans-serif">
The same Linux version in all PCs;</div>
<div dir=3D"ltr">All USRPs are connected to the same Octoclock;<br>
</div>
</div>
</div>
<div dir=3D"ltr">UHD version is 4.1.0 in Linux servers;</div>
<div dir=3D"ltr">All Linux servers are connected to a control PC which is t=
he client;</div>
<div dir=3D"ltr">The sampling rates are different: 184.32MHz in X310 USRP a=
nd 245.76MHz in N310 USRP</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Control PC sends command to set time 0 after PPS in all US=
RPs, then query the time in each of them.</div>
<div dir=3D"ltr">The time difference between USRPs of the same type is smal=
l, ~2ms, but the time difference between different types of USRP is much bi=
gger, ~0.2s.</div>
<div dir=3D"ltr">Times should be impacted by sampling rate; when setting ti=
mers, no signal is transmitted.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">2ms time difference between USRPs could be due to network =
delay; 200ms can't be because of network. It seems to be due to HW in USRPs=
. Does this mean that X310 and N310 are not synchronized?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for any comment,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9MN2PR12MB3312namp_--

--===============3852565905063039383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3852565905063039383==--
