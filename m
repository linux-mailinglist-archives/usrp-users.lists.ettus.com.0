Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C3D3A153E
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 15:14:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B28B7383F8E
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 09:14:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="tGUH8AKD";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A4E52383EB0
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 09:13:33 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.133])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 8F48440068;
	Wed,  9 Jun 2021 13:13:31 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2EB7584007F;
	Wed,  9 Jun 2021 13:13:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bI5SXO2SOwQl0VGnx8f58hTPbFQvZRUKdJZLFpKzso6JstMFlkRYAttl0iyHNKFhliBRbMDx0vAewzJre25YGvo8+xCoa5obVDe5LSk01ftzbpnECdF+XO5DXO8bnoxZMAo0KMHQypTMSayEu5O5e0O8OaZ/5rAHiG6kkiyZcyeCb45sKpPWjNf1ujWdIS42QuBwUSzxMTCeSyohypPikeBeq6P47dnqSh/xWUTMveCHzEonb+l+9uTYbcf365+KEfJZsaD3JIqk+t+vRfQUdYevKAx3nm+3DQ2SxiChY9zJCiPQcqORdk1vqglmZO8zHqzhijNQB+3Lc5YNmQ7CQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+BO0RVGyQwGiRJezr7gGqRb/BwMG4mnhTwApJzDJC4=;
 b=Ueac7T5GNe78zUdkW7Cgsjz+VDsSLZn9SYltccUP8ZwqbY7iJI+mZfxyhH1v3GwVvm+eBGEXiUL6YVa1ldQLe3o5a3Gz0NQyV2sCgU0tt1juI6PIjohu84COTWMbdlbAEZSKQ7eN6NNZBn0JQJ7+2Rjp+UXCVmPe+z3e0TKI0Xv94jh7Hklo7/lX5QJJT6/SLpDUH+k1Jcfe/FHGXgKtloe443SCvfKzemCOk/1CZqmZLD/2ds5tu8CRx9rF89K1LrOtD9mutNC9pPgyvuw+8KqAMewUn0EvxH9iaxILYCei8taM/RQs+g8U6dcqzQxtB1dTfEr/ldQpS85HT/uOww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+BO0RVGyQwGiRJezr7gGqRb/BwMG4mnhTwApJzDJC4=;
 b=tGUH8AKD6q+655cSr7SKWXztmubFbS/c5Mw8+3TiypLFiuGLNLBQQdjk7PA1TMH36E2/DbMJaZh3PGREhG2quN2pvmmkTiVhy9L3vvwzP1Zwev4ZwZuRIkWhigFBgix75DCM0lAv0Emapk/BRqF8w7ZVY+cmeYbgTApaYnaszKQ=
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by MN2PR12MB4160.namprd12.prod.outlook.com (2603:10b6:208:19a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Wed, 9 Jun
 2021 13:13:28 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::3d98:b4f9:79e4:bcf4]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::3d98:b4f9:79e4:bcf4%5]) with mapi id 15.20.4219.021; Wed, 9 Jun 2021
 13:13:28 +0000
From: Jason Matusiak <jason@gardettoengineering.com>
To: Michael Dickens <michael.dickens@ettus.com>
Thread-Topic: [USRP-users] Troubles with the QSFP+ on the N3x0 series
Thread-Index: AQHXWYSje9jrmu7Y3U+p0ScdN9p8E6sLrsqP
Date: Wed, 9 Jun 2021 13:13:28 +0000
Message-ID: 
 <MN2PR12MB3871FEF4DC52B838B49655BCAF369@MN2PR12MB3871.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB38719D13ABC60C01624DC1BCAF3B9@MN2PR12MB3871.namprd12.prod.outlook.com>
 <CAGNhwTM8J-x4L7eRvarjb2qzNc2=CfrEae2X7-YZ4ywfCWdYxA@mail.gmail.com>
 <d76c077c-d91b-49cf-8111-8ebb65cfb180@gardettoengineering.com>,<CAGNhwTMPUCSezdYLyc6CMFV=3pzH+becMakSCjy19_rK9Nd+Kg@mail.gmail.com>
In-Reply-To: 
 <CAGNhwTMPUCSezdYLyc6CMFV=3pzH+becMakSCjy19_rK9Nd+Kg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [2600:1003:b125:c7ac:3104:b7c3:367e:6e9b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 069ad246-116d-48f6-77c1-08d92b485f60
x-ms-traffictypediagnostic: MN2PR12MB4160:
x-microsoft-antispam-prvs: 
 <MN2PR12MB4160D95325873E725A9B5DD1AF369@MN2PR12MB4160.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 T4DnRYQcHg6Tnj9uPyn2UCbLqLXz2jA0OE5vlIFUc9MoEElbtr7N17VnAxomHgY/stwgvDElFLJd6etI0yjVQmL/zcThRELivOXXeH0S3TenV2SPMHb6cGMznDBrrjn32P704GblVMnuKFFF/6GZaq0axndJuquDvahzgUswGBXy09Zy8v72vwxQTO57ijmnbhFbSaz+TiJ9AM0OmqNM/ubHmcRKZyHEZ3Usb+HZSDwll4h3ZR5qW5R3O7xM4D9He27NwmUO1mKbm9mSvlOtid/FkT7/laq7IoLF8AyeZGZZthBvz3b5VLB3kbjT4pnu8Gm75U+aK57Ueq3IoPxTc1tM6o0yIjBkowvqNOflorjq1qiI5eu0ym+oaOIlMs/EWFxWCdD1j4+C5b7u/3OTGbsPvpl0brvf2CRHVhB2JqYO051dS+tO1C6YsvI8JtFp32a5PahU9nyvKkAv5odjYyMil2SWF21bGJhx1RAE5MpSizyBGX8CzwhT00HIF1y6CmPL1sgVGIyYjXx26sDw/Q0MslNuYA0QLnYf13Fv55uOP3+hR/r9+OUJKgPPMyKGpuR7BHLafdQEP/D26aEcGN1mxLz24LpzwtYwg+1hrgMENgqiSvGs0srOqeuBl73uyNKQG+PEpTy7CHA4MH51vj8e4fjTsA4jU4zDW3jv58/eafcvmG1p3A3ley4DDBfPYY2DaXkQte/zByMWZ96CeA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39830400003)(376002)(366004)(136003)(346002)(9686003)(2906002)(38100700002)(19627405001)(316002)(5660300002)(53546011)(86362001)(4326008)(52536014)(8936002)(66556008)(66446008)(166002)(55016002)(7696005)(966005)(66946007)(478600001)(83380400001)(33656002)(76116006)(66476007)(71200400001)(8676002)(122000001)(186003)(6916009)(6506007)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?y/Ro6LDcfLhEXF3VwK25SiMwy1s4RYFcX0ObYn4IfsP+Xw/3cIOgTREX3e?=
 =?iso-8859-1?Q?xJ2R3w7Fhq4ILwYqs/MgDwxzbCg8ixNTynMX4UGyM3Z/n3F0tTadfSZNM/?=
 =?iso-8859-1?Q?w5+C9VC861XxsmQls/710LdGsUijpJfgB1sYFA8v8J5y3Tx/3IMawazMRi?=
 =?iso-8859-1?Q?rMXJ9pkccyYlTbH/5T6W3+32Du6fEYnFKU/8e+VIxuu1ChZedSB3C3L26b?=
 =?iso-8859-1?Q?/2roFhfOZVPYO6taqy2j89StvtU3gmIjd3JMPihP4Nifw/5hfC8FRFPrrp?=
 =?iso-8859-1?Q?+BZ2Udg7zN6i9ezq/ytUQbygpALQ1aGsnPxOmG1lNOJp5x8080TrkNUW7G?=
 =?iso-8859-1?Q?c87Xyaqb6sIdwZilYB7ffUH3clAGFn4K2yZl9x1IOonpv8CWGC7g8Ni9ak?=
 =?iso-8859-1?Q?TULhQYZUfD305vZ2Mbi94DdHJMKTjWdPoSoUGd6HSGSkh1lQd2GNnAzs/m?=
 =?iso-8859-1?Q?QQHAmR5eBIZoNvH0HhzxneTnBHbjIgJYa9GSV23Wefy+fLKvnYL692hWtM?=
 =?iso-8859-1?Q?UiOh3UqrkiyHYSbxDOoeZqosOWmRfQxvMCMjjRlQFdbMufEyB6NJ5oxGzQ?=
 =?iso-8859-1?Q?lao8NLg30NmZRtfyUjglCbWKjz3Gq0WRKy1nn7o1r5JxOcdPu399LyiqwN?=
 =?iso-8859-1?Q?2wbaR4lHgzGhNF3VN/joOenx80w4jKvc75UlCVp9hoXarth8mvTCOnHuca?=
 =?iso-8859-1?Q?L2vVhxKeh0jMbokKRYckBVbcY8Uw7nqUqA0oY+IttqvVmIjaay4RrznycB?=
 =?iso-8859-1?Q?vYFiLByuMFBoWPEZ2UaHN8Im5gnjIqdEkVODIc7xdcnxtCxecb5F5OMxbI?=
 =?iso-8859-1?Q?51gkxFwJSDmrMqReV+HKe34GfQ/infEcay2Ij0U+nyIzltGznTdRg2+vB7?=
 =?iso-8859-1?Q?aOjHbIFUCeLFXuIUIUqvfwCHspv23V5BOKqg8FztBO7a79+S6aKgv9sO0r?=
 =?iso-8859-1?Q?nPuLgylZG4YHxKqg+x/3lUIFKjN/1LXkPVrjHJ5GQQK5j16H/Zc9DebQu6?=
 =?iso-8859-1?Q?r4kvrFa5XznjGcWYbc2pwjjzqfYT7w269eiVHfjKM3Q4yP9zunChdV4f1m?=
 =?iso-8859-1?Q?X9p5LibCG+qOig1aRfbz4mKE8NPkWyXfUKpu68PkIgGHE3FJvH8yuAZHtB?=
 =?iso-8859-1?Q?hUCGR+QKWv88MVV0vaGz2nPSJJ7Y5mjTsnXno6HZVGktT4P5Hb0iUORBl3?=
 =?iso-8859-1?Q?TBFIiPF5UtHMv6ENqVY9jejBeAFBxc7OtMXB6zRVYL1v2ACBCptUagnqEu?=
 =?iso-8859-1?Q?eDufc3/7gJicff2ruFNhvwE11aWg6fr2asoZdEuboJpqU6RYoKz6hzSzRq?=
 =?iso-8859-1?Q?W7FHB6lnTSi3gj6igGfxrB5tofyywHZ80B1nkTdNDaYPRcwCiA0XbkB/E1?=
 =?iso-8859-1?Q?K9qeUKEanZFtwdFFdZqnrVTWud+4q6/qLuD357YXhq+6w7VlNDZns=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 069ad246-116d-48f6-77c1-08d92b485f60
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2021 13:13:28.6213
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kDZ+M4dljNCNPeYBvURo9NKYQZo5SWKJABysGcOovNjXNVWnZ3EAA3rxao4XIeOg7Jn3OxeXNHNjgwlcwQpSAGLUJh1eOzBgBvHBHsIWAIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4160
X-MDID: 1623244412-zizW4LiF04k6
Message-ID-Hash: POYISVVZIG7VZUADAGKDIRFNTSNLK3EW
X-Message-ID-Hash: POYISVVZIG7VZUADAGKDIRFNTSNLK3EW
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVKYBJLVVGQ7X4UNG4SBUGXSQGFTENGD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7270432886399191557=="

--===============7270432886399191557==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3871FEF4DC52B838B49655BCAF369MN2PR12MB3871namp_"

--_000_MN2PR12MB3871FEF4DC52B838B49655BCAF369MN2PR12MB3871namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you for all the info Michael.

Are you aware of any examples/writeups/tutorials of USRPs and Aurora in act=
ion?  I am trying to wrap my head around how it is intended to be used.  It=
 seems like it can only really be used in an FPGA-to-FPGA environment, but =
almost everything I find in Ettus documentation is just that certain device=
s are Aurora capable, and not much else to go on. TIA.

________________________________
From: Michael Dickens <michael.dickens@ettus.com>
Sent: Friday, June 4, 2021 5:00 PM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series

When using White Rabbit, the WR link does not appear to the OS; WR signal p=
rocessing is handled directly in the FPGA, and made available to the OS / U=
HD via special commands. Or, that's what's supposed to happen. As of UHD 3.=
14.0.0rc1 WR does not work; we just recently found out this fact, and we ar=
e working hard to get the issue(s) resolved.

I've never used the Aurora FPGA image .. AA or AQ. From < https://files.ett=
us.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols<https://urldefense.=
proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_manual_page-5Fusrp-5Fn3=
xx.html-23n3xx-5Frh-5Fsfp-5Fprotocols&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jX=
rwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DE=
NRZJm0dongj94OSx26akoZ47ZDgZyJD7Vw1ImyuPXk&s=3DZl6FEDU7AJWOGXHESoUNB4E4yyfY=
iMqxrShWRYTVIq8&e=3D> > it looks like AQ uses all 4 QSFP+ lanes, which betw=
een the actual Aurora protocol and using all 4 10 Gb lanes one should be ab=
le to get 40 Gb aggregate data ... literally bits in, bits out ... no ENET =
overhead!


On Fri, Jun 4, 2021 at 4:43 PM Jason Matusiak <jason@gardettoengineering.co=
m<mailto:jason@gardettoengineering.com>> wrote:
Afternoon Michael! This is exactly the info I needed. I misspoke when I sai=
d WX, I meant XQ.

After putting the new image on, we knew the /data/ directory still had the =
two sfp network setups, but we were expecting something in addition for the=
 qsfp. It makes sense that it doesn't //need// to change since we are only =
using 2 lanes of one, or 2 lanes of the other. BUT, what I couldn't be 100%=
 sure of is since white rabbit needs Ethernet as well, why wouldn't THAT be=
 the sfp0 configuration, make sense? I'm not working the white rabbit side,=
 but I understand it to be ip based.

Lastly. If we go the pure Aurora route, I know that we lose white rabbit, b=
ut we gain a full 40Gbps, right?

Thanks again.
On Jun 4, 2021, at 4:18 PM, Michael Dickens <michael.dickens@ettus.com<mail=
to:michael.dickens@ettus.com>> wrote:
Hi Jason - Answers, and more. I hope this is useful and helps clarify the o=
ptions. - MLD

1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the XQ =
FPGA image. I haven't tried that in a while, but it did work for me once up=
on a time.

2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for d=
ata, which is just a single 10 Gb link -- not the QSFP+ port (which is on t=
he N32x only, by the way). If you use the XQ FPGA image with the N32x then =
you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and 2 =
if you count lanes as 1's-based). In theory you could use 2x SFP+ 10 Gb lin=
ks on a host NIC and aggregate them via fiber into a QSFP+ adapter attached=
 to the USRP; I've never tried this directly, but I can say that taking QSF=
P+ off a host NIC and switching lanes works fine using the appropriate adap=
ters and fiber cables and connectors. Just make sure that lanes 0 &/or 1 on=
 the USRP side match up correctly with the other side coming in (whatever l=
ane[s] you choose to use, so long as it/they are valid on the NIC).

3) When using the WX FPGA image with an N3xy, "ifconfig" will report back j=
ust "sfp1" as the 10 Gb data link that is connected to SFP+ port 1 on the U=
SRP; not the QSFP+ port (which is, again, on just the N32x); this single li=
nk is set that up as you would any data link on a USRP and host. If you use=
 the XQ FPGA image with an N32x, "ifconfig" will report back "sfp0" and "sf=
p1" as the 2 10 Gb data links, and you set those up just as you would if yo=
u were using the XG FPGA image. The FPGA maps between the data link (SFP+ o=
r QSFP+) and the OS, so that the OS "sees" 1 or 2 10 Gb links; or that's ho=
w I understand this to work ... the end result is the same regardless of wh=
ere the mapping happens :)


On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak < jason@gardettoengineering.c=
om<mailto:jason@gardettoengineering.com>> wrote:
I have been away from USRPs for a while but am back to using some N3x0 unit=
s and am having some issues.

1 - Does QSFP work with UHD 3.15?  We'd prefer not to go up to v4 yet due t=
o some issues we've seen in testing it, but I am not sure how well supporte=
d QSFP is on 3.15.

2 - When using the QSFP with White Rabbit (WX image), is it correct to say =
that the QSFP link is really x2 10Gb links, not a single 20Gb?  Meaning tha=
t we would need a 40Gb QSFP that can handle 4 10G outputs, correct?

3 - Lastly, I cannot find any documentation on setting up the QSFP.  I've d=
ownloaded a new WX image over Mender, but I don't see where/how to configur=
e the QSFP.  Is there an article or writeup anywhere that walks through the=
 steps?

Thank you
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MN2PR12MB3871FEF4DC52B838B49655BCAF369MN2PR12MB3871namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thank you for all the info Michael.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Are you aware of any examples/writeups/tutorials of USRPs and Aurora in act=
ion?&nbsp; I am trying to wrap my head around how it is intended to be used=
.&nbsp; It seems like it can only really be used in an FPGA-to-FPGA environ=
ment, but almost everything I find in Ettus
 documentation is just that certain devices are Aurora capable, and not muc=
h else to go on. TIA.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size: 11pt;"><b>From:</b> Michael Dickens &lt=
;michael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Friday, June 4, 2021 5:00 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series=
</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">When using White Rabbit, the WR link does not appear to th=
e OS; WR signal processing is handled directly in the FPGA, and made availa=
ble&nbsp;to the OS / UHD via special commands. Or, that's what's supposed t=
o happen. As of UHD 3.14.0.0rc1 WR does
 not work; we just recently found out this fact, and we are working hard to=
 get the issue(s) resolved.
<div><br>
</div>
<div>I've never used the Aurora FPGA image .. AA or AQ. From &lt;&nbsp;<a h=
ref=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.c=
om_manual_page-5Fusrp-5Fn3xx.html-23n3xx-5Frh-5Fsfp-5Fprotocols&amp;d=3DDwM=
FaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXW=
HfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DENRZJm0dongj94OSx26akoZ47ZDgZyJD7V=
w1ImyuPXk&amp;s=3DZl6FEDU7AJWOGXHESoUNB4E4yyfYiMqxrShWRYTVIq8&amp;e=3D">htt=
ps://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols</a>
 &gt; it looks like AQ uses all 4 QSFP+ lanes, which between the actual Aur=
ora protocol and using all 4 10 Gb lanes one should be able to get 40 Gb ag=
gregate data ... literally bits in, bits out ... no ENET overhead!</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 4, 2021 at 4:43 PM Jaso=
n Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@garde=
ttoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div style=3D"zoom:0%">
<div dir=3D"auto">Afternoon Michael! This is exactly the info I needed. I m=
isspoke when I said WX, I meant XQ.<br>
<br>
</div>
<div dir=3D"auto">After putting the new image on, we knew the /data/ direct=
ory still had the two sfp network setups, but we were expecting something i=
n addition for the qsfp. It makes sense that it doesn't //need// to change =
since we are only using 2 lanes of
 one, or 2 lanes of the other. BUT, what I couldn't be 100% sure of is sinc=
e white rabbit needs Ethernet as well, why wouldn't THAT be the sfp0 config=
uration, make sense? I'm not working the white rabbit side, but I understan=
d it to be ip based.<br>
<br>
</div>
<div dir=3D"auto">Lastly. If we go the pure Aurora route, I know that we lo=
se white rabbit, but we gain a full 40Gbps, right?<br>
<br>
</div>
<div dir=3D"auto">Thanks again.</div>
<div class=3D"x_gmail_quote">On Jun 4, 2021, at 4:18 PM, Michael Dickens &l=
t;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.di=
ckens@ettus.com</a>&gt; wrote:
<blockquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">Hi Jason - Answers, and more. I hope this is useful and he=
lps clarify the options. - MLD
<div><br>
</div>
<div>1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via th=
e XQ FPGA image. I haven't tried that in a while, but it did work for me on=
ce upon a time.
</div>
<div><br>
</div>
<div>2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 =
for data, which is just a single 10 Gb link -- not the QSFP+ port (which is=
 on the N32x only, by the way). If you use the XQ FPGA image with the N32x =
then you get 1x or 2x 10 Gb links
 via the QSFP+ port: lanes 0 and 1 (or 1 and 2 if you count lanes as 1's-ba=
sed). In theory you could use 2x SFP+ 10 Gb links on a host NIC and aggrega=
te them via fiber into a QSFP+ adapter attached to the USRP; I've never tri=
ed this directly, but I can say
 that taking QSFP+ off a host NIC and switching lanes works fine using the =
appropriate adapters and fiber cables and connectors. Just make sure that l=
anes 0 &amp;/or 1 on the USRP side match up correctly with the other side c=
oming in (whatever lane[s] you choose
 to use, so long as it/they are valid on the NIC). </div>
<div><br>
</div>
<div>3) When using the WX FPGA image with an N3xy, &quot;ifconfig&quot; wil=
l report back just &quot;sfp1&quot; as the 10 Gb data link that is connecte=
d to SFP+ port 1 on the USRP; not the QSFP+ port (which is, again, on just =
the N32x); this single link is set that up as you would
 any data link on a USRP and host. If you use the XQ FPGA image with an N32=
x, &quot;ifconfig&quot; will report back &quot;sfp0&quot; and &quot;sfp1&qu=
ot; as the 2 10 Gb data links, and you set those up just as you would if yo=
u were using the XG FPGA image. The FPGA maps between the data
 link (SFP+ or QSFP+) and the OS, so that the OS &quot;sees&quot; 1 or 2 10=
 Gb links; or that's how I understand this to work ... the end result is th=
e same regardless of where the mapping happens :)
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 4, 2021 at 2:26 PM Jaso=
n Matusiak &lt;
<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@ga=
rdettoengineering.com</a>&gt; wrote:
<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I have been away from USRPs for a while but am back to using some N3x0 unit=
s and am having some issues.
<br>
<br>
1 - Does QSFP work with UHD 3.15?&nbsp; We'd prefer not to go up to v4 yet =
due to some issues we've seen in testing it, but I am not sure how well sup=
ported QSFP is on 3.15.
<br>
<br>
2 - When using the QSFP with White Rabbit (WX image), is it correct to say =
that the QSFP link is really x2 10Gb links, not a single 20Gb?&nbsp; Meanin=
g that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?
<br>
<br>
3 - Lastly, I cannot find any documentation on setting up the QSFP.&nbsp; I=
've downloaded a new WX image over Mender, but I don't see where/how to con=
figure the QSFP.&nbsp; Is there an article or writeup anywhere that walks t=
hrough the steps?
<br>
<br>
Thank you </div>
</div>
_______________________________________________ <br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a> <br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a> <br>
</blockquote>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3871FEF4DC52B838B49655BCAF369MN2PR12MB3871namp_--

--===============7270432886399191557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7270432886399191557==--
