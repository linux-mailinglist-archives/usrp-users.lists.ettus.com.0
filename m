Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F4F31DDF8
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 18:13:12 +0100 (CET)
Received: from [::1] (port=35392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCQNz-0008Da-LJ; Wed, 17 Feb 2021 12:13:11 -0500
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.184]:51400)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1lCQNv-00086F-1w
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 12:13:07 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 95909AAEA5
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 17:12:26 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.20])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 88D1460110; Wed, 17 Feb 2021 17:12:16 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.104])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id C3C912A0074;
 Wed, 17 Feb 2021 17:12:15 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2109.outbound.protection.outlook.com [104.47.58.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 8449DB80091;
 Wed, 17 Feb 2021 17:12:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFALk+0bt0VZWeUbhuocToYa7yzGAxYEBQBSYeFhBV4frAT3TfZHRqbSFAg9w7KB0TQVUx6dw/o3BHjlBd84LO80plfD0I+hTzNzxG5AbF32xs/B0rzYnWpqOS8NL+b09J59VpgOauLnfgBncpzrAp2aUIRu4aMtPugOq92FTcFdaw3mpZcUJRTqzX5oXxBhcrDSXdEZLjfbUCMFS5g8Dzra17f+Lrct1af+3Gac2+TKwBGJviq+NUlQQixK87Zuxa/yOdn/tRdVPieftLHeVjn+sxgbKcBhZn7DD+ktgR7zlrlVFSQs0F6BRDpUWoc91P8bibcYtVnJpC9qZfPgmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oyqZ5D2+YrrkPwJMH+iSQ37AP2pdzuv06kw0NO+bw1w=;
 b=YDLe4AItVVLLrYTwlCC0QTChp5DIRAx6IH4ncwCcLYe26jrpAuCzCwHFltjt45No2b219Y7THM2HDldOI3rr1MO605oIB6VLru/LP2iubgMORTXCsOaRpqfKTMXY3cKKqwgFXvnwyOUYHBMEKvJjn3iIg0/G3LS0f4svgkGpPr1CT6fq09Wzp+CMuq7a8/LDP5gtGJISz1MWGGTvmoza2hLR26IzvlYBPWFkaYuEiV/As4YfBJXLxz5DXs5ey9Hn2g2vAJMsAbQ/JOhYwyQrRrbX37dijxtKp3RrZIbuNOVe3VpHzxhoIjI/q3akB/0ar0bq2SCIE1E0EvzUBIRlTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oyqZ5D2+YrrkPwJMH+iSQ37AP2pdzuv06kw0NO+bw1w=;
 b=APW0K+viE9ZLSbTgYmpsvX2MfEZRZSH90EbKDy1rIQ2EB2vSeJXsw7UVfGPYj2Dr34+8AUMA9+1cLvvUBSIRD9LIzP9MPrCu8NTpD5TXGJUZIQODXy5IIDXo71mDdnBy6jdQ6cFCwSuHudaxSwpvzKNSRTwjryuSZK8MrS03jRw=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BL0PR12MB4883.namprd12.prod.outlook.com (2603:10b6:208:1c6::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Wed, 17 Feb
 2021 17:12:12 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::4df9:1a8c:aa50:d57f]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::4df9:1a8c:aa50:d57f%5]) with mapi id 15.20.3846.027; Wed, 17 Feb 2021
 17:12:12 +0000
To: Mark D <md964@hmgcc.gov.uk>
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: OTT Gain Block stopping samples flowing from RFNoC Digital Down
 Converter
Thread-Index: AdcFQlWECmXf12heRQuWe0v7YuOKiwAASohLAAFYZmAAAYDUOw==
Date: Wed, 17 Feb 2021 17:12:11 +0000
Message-ID: <MN2PR12MB3312A0DE5787E8731D0585E0B8869@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <MN2PR12MB33129C28A79231554AC0FD21B8869@MN2PR12MB3312.namprd12.prod.outlook.com>,
 <LNXP123MB3724A8B3199C2169A41BA6E0CA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB3724A8B3199C2169A41BA6E0CA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: hmgcc.gov.uk; dkim=none (message not signed)
 header.d=none;hmgcc.gov.uk; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d03fb07f-87e3-42e3-4870-08d8d3672a71
x-ms-traffictypediagnostic: BL0PR12MB4883:
x-microsoft-antispam-prvs: <BL0PR12MB4883C5675682439662914FBAB8869@BL0PR12MB4883.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RHhLMW37QNhingbCSHPlcdtNIGqbl0rDsMmqvr+7HIlD8pvypp/K7aOtist8BTdPBzdWNgbNkOJpWaW1rNcyOmj+N530YeyKuTj3Tt+A8u0YIiJM04JjzcTay7AW1YuJj2Q/o3VYQfFApROeZaXxp1bgJNjI4X5TeuSGlqGUPgJlrnTDX+dsJ2qM0/1D2TkWKV5ud026gZwvmVZxJ3kvytrybyAq9aCt7awLTFFMTsyogesTEBXlpdMdw0PzlnE9aMHfextUG4ApNfeV4Kr3xmJJjehonPaJcNP/nTksWgQ7xMma8zwBsF9rKmxMV+Vbi3nY9HH8ZShXaBzU2X4j77FikjJo5UfeIrTdjGISRyAA+taXs9jtZ7gzppaiVxO/N79bLqfl91e/t+IQaCvK8SXAie/6Yz0AWdsGSdKgSp01jGbDxxO3LBY1b5JYv6HuAtEi1jnSDr67/lBSPRLjPyzqw2EdKejXvkuIZAnYwZstB9RzDA8cRS7KF57PIpKVGImcxrRMUYKGP/knK8ueaA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39830400003)(396003)(376002)(346002)(366004)(136003)(55016002)(4326008)(478600001)(9686003)(53546011)(26005)(8676002)(76116006)(316002)(86362001)(33656002)(6506007)(19627235002)(66446008)(5660300002)(52536014)(83380400001)(66556008)(186003)(6916009)(64756008)(66476007)(71200400001)(8936002)(19627405001)(7696005)(66946007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?PUaAzxejgpGUQV2iASWCa1F5DcZ+q8LnfiT3C1bGxdbhfotlDHCydrlb?=
 =?Windows-1252?Q?OKbalUAnZx3Auvn9fvXepsYykzk6JGHxxxzcRZko0paRHHtSEu+KuI7/?=
 =?Windows-1252?Q?vBMLfxCK0LJWhU1gHEoRP5Jjmfg+7n5cga9jGx3av+GQ/1QqSq1ua19A?=
 =?Windows-1252?Q?iltPAsteKseZydrp+X//qXJ7jS1XXFqEfG2UH9GMVRQaZO5VzlQFGHwT?=
 =?Windows-1252?Q?kWQye/ICA6udeF0Lljhp7lV1/cZLVmbGC7E12bD39PLCWCS1Rc7asNlp?=
 =?Windows-1252?Q?WlTRlbJULpCqvyYeSyZPOCZvkYUrzdf0dXqys8KhUuSBdX5U2YG1M9Vy?=
 =?Windows-1252?Q?MQ8Go00MXc0tHzuQ6Vl6wtaJxTW1+sCicmC+pK4DugdpAoM50K90d5Yd?=
 =?Windows-1252?Q?wL5F4Asjt1tTI9HuMHcQLG3cxBzqRm1H/cH8xoj+uVK1CILivmISCRMq?=
 =?Windows-1252?Q?W1vRrn9yOGJR7Z5Xk2aqHK4AKJICUQ43bfDC2/+CcZaNjBeov0cO3v9a?=
 =?Windows-1252?Q?lwrKRWntuw94zeRquxzdyOj5nodBRMpVCL4o5NdLHdY72YLi/NQ6EkH0?=
 =?Windows-1252?Q?HIegtIoMbJJPgn1z/hIc5hOkiYbXUJ67uKIpuyzr9i90Ewz6apeq6LnM?=
 =?Windows-1252?Q?n1FlPxc0pN1b17m7f+h/EvoQ7T1nIeHNDbz5d1ddJwrK9S11cpA+ri23?=
 =?Windows-1252?Q?6LiC31Z40+PKonicQk8MizA3cYNgEwVik3Ri4RWk3wre/iklT2hBDkoq?=
 =?Windows-1252?Q?0MDIaNaSrgAnd+MmBzMhPPp/PCM+l5htBotCXVjNJ/krfSaJiX5KFvS+?=
 =?Windows-1252?Q?2LXovP3jnKH1SJVVpUHCE+2c83rXdGwr/ILuZYHDnjL25gyCzzmP6jNq?=
 =?Windows-1252?Q?9Dxm9AwAYqkVK3ccV2t9/mmg3bq6Jp4LVQknlP7DAdpFuJzl6LUKwIsv?=
 =?Windows-1252?Q?T6ZlveKtqUlY0c7cfxNfkUF6GzKr7i7UujFDBWsdoyeY3Bf9brvxz0QZ?=
 =?Windows-1252?Q?b8FUkb8k7akENAmRVnjFyZgwZRzPKStGyXqmGpsLLYwnwNuYvFqvbln8?=
 =?Windows-1252?Q?jpq5n46t2RybRoKc2bv0TJKtXJvYIR6Aw+HLT5MoHEv/xeAVvCkbPjjx?=
 =?Windows-1252?Q?G9HtQRTmRtfd2WWgb415OxV8ykHu5wxlcBoTqx8pYg1gDzYbXcO+n9uW?=
 =?Windows-1252?Q?eY8WyRFWGUGKuF7HZTN3Kcv6Q6r5DIYNo6OZu2l7cdW1v8qkZn4tM3VY?=
 =?Windows-1252?Q?OMqznYy8uHmZhv0iNueKvO8xqQT8lBgE1kDZCRX9Jlcj1Tg0PQEeR3+g?=
 =?Windows-1252?Q?L3t8nigH9pk3b3IcU0QrtV5v+svpbKJwLs9ZxpiX0WKHytKcHD16OMae?=
 =?Windows-1252?Q?8BvMjHNu650v+qXhTyivkrpGu8jXVtb2D2v7DdSTygzPfYBv2XOMwKrI?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d03fb07f-87e3-42e3-4870-08d8d3672a71
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 17:12:11.9584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WNz8b//YXQ/3d/+SWqzoeeM/6T3hmVS+FuGkzPa0O+3u+p9k4ycqJYPhopyI/+C4US+jVdsVYbnxhY5V6Bf9LU1O084GduYOtymr2ohVlSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4883
X-MDID: 1613581936-SzZWmtBZlcut
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: Jim Palladino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Palladino <jim@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============4800183175647981719=="
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

--===============4800183175647981719==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312A0DE5787E8731D0585E0B8869MN2PR12MB3312namp_"

--_000_MN2PR12MB3312A0DE5787E8731D0585E0B8869MN2PR12MB3312namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

Yes, that is how I set spp in my flowgraph. I don't think this is the issue=
, but The E320 Getting Started Guide says:

  *   Streaming via SFP0 at 1 Gb rates requires a MTU of 1500
  *   Streaming via SFP0 at 10 Gb rates requires a MTU of 8000

That is why I was using an MTU of 8000. Maybe you are having a different is=
sue than I had. I just remember using ILAs to probe all sorts of things in =
the FPGA and remember finding that the CHDR packet would take up the entire=
 8000 MTU size only if my block was inserted. Again, the Ethernet header th=
at gets prepended would then push it over the MTU limit. Setting spp lower =
worked for me to get past the streamer errors. You could try setting spp to=
 something a lot smaller (like 200) just to see if it helps. Otherwise, I'm=
 not sure what the issue is.

Jim

________________________________
From: Mark D <md964@hmgcc.gov.uk>
Sent: Wednesday, February 17, 2021 11:43 AM
To: Jim Palladino <jim@gardettoengineering.com>
Cc: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: RE: OTT Gain Block stopping samples flowing from RFNoC Digital Dow=
n Converter


Thanks Jim,



I=92m using eth0 on the E320 which is set with an MTU of 1500 and this seem=
s to be the maximum. If I try to set it to 1501 it says that=92s greater th=
an the maximum allowed.



I=92ve now switched to using the SFP+ port rather than eth0 which has an MT=
U of 9000, but this hasn=92t had any effect.



I tried setting spp by adding spp=3D1987 to the Block Args field in GNU Rad=
io, but still no luck. Is this the correct way to set the spp argument?



Mark



From: Jim Palladino <jim@gardettoengineering.com>
Sent: 17 February 2021 15:52
To: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>; Mark D <md96=
4@hmgcc.gov.uk>
Subject: Re: OTT Gain Block stopping samples flowing from RFNoC Digital Dow=
n Converter



Hi Mark,



I'm not sure if this is your problem, but I had a similar issue. After some=
 debugging, I found that for some reason, with the OOT RFNoC Block inserted=
, the total size of the CHDR packet plus the Ethernet header that gets adde=
d on in the FPGA would slightly exceed the MTU size (mine was set to mtu=3D=
8000 for the E320). I never figured out why this happens, since this isn't =
the case if the OOT block is not inserted (just like the flowgraph you desc=
ribed). Maybe just increasing the MTU size would help?



Anyhow, my solution was just to set the "spp" argument in the RFNoC_RX_Radi=
o. I found that setting spp to a maximum of 1987 keeps the total packet siz=
e (after the Ethernet header is appended) to be less than the MTU of 8000. =
FYI, for spp means 1987 samples per packet. So, for 32-bit samples, 1987*4=
=3D7948. This leaves enough room for the Ethernet header.



It seems like there should be a better "fix", but you can try setting spp m=
anually to see if that helps.



Jim



________________________________

From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Mark D via USRP-users <usrp-users@lists.=
ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, February 17, 2021 10:35 AM
To: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com<mailto:usrp-us=
ers@lists.ettus.com>>
Subject: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC Di=
gital Down Converter



I=92m working with an E320 using UHD 4.0.



I=92ve been working through the video =94RFNoC 4 Workshop - GRCon 2020=94 t=
o install my own custom signal processing block into the RFNoC on the FPGA.



I=92ve also been following the guide AN-121 =93Debugging FPGA images=94 and=
 have added Chip Scope probes to the payload and context stream signals.



I have got to the point where I have the block instantiated in the FPGA. Ru=
nning the example GNU radio code that streams samples from the host compute=
r through the gain block and pack to the PC works as expected. I am also ab=
le to capture the payload and context stream signals in Chip Scope.



However if I reconfigure the GNU radio to =93RFNoC RX Radio=94->=94RFNoC Di=
gital Down Converter=94->=94RFNoC Gain=94->=94RFNoC Rx Streamer=94->=94QT G=
UI Time Sink=94 the system no longer works.



The Time Sink appears but the GNU Radio console is saying rfnoc_rx_streamer=
0 =96 UHD.recv() call timed out. Removing the gain block from the GNU radio=
 design restores operation, so it appears that the gain block is in some wa=
y blocking the streaming data.



I=92ve also rebuilt the FPGA with the gain block connected between the DDC =
and Stream Endpoint but the results are the same. I=92ve tried reverting th=
e gain block code back to that generated rfnocmodtool, which just loops the=
 context and payload data straight through.



Does anybody have any idea why this block would be stopping data internally=
 generated within the USRP from streaming out, whereas it works Ok when dat=
a is flowing from and back to the host?



Any help would be greatly appreciated,



Mark

________________________________

This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_MN2PR12MB3312A0DE5787E8731D0585E0B8869MN2PR12MB3312namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Mark,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Yes, that is how I set spp in my flowgraph. I don't think this is the issue=
, but The E320 Getting Started Guide says:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<ul style=3D"margin:0.3em 0px 0px 1.6em;font-family:&quot;Lucida Sans Unico=
de&quot;, &quot;Lucida Grande&quot;, sans-serif;font-size:14px;background-c=
olor:rgb(255, 255, 255)">
<li style=3D"margin-bottom:0.1em">Streaming via SFP0 at 1 Gb rates requires=
 a MTU of<span>&nbsp;</span><code style=3D"font-family:monospace, Courier;c=
olor:black;background-color:rgb(249, 249, 249);border:1px solid rgb(221, 22=
1, 221);border-radius:2px;padding:1px 4px">1500</code></li><li style=3D"mar=
gin-bottom:0.1em">Streaming via SFP0 at 10 Gb rates requires a MTU of<span>=
&nbsp;</span><code style=3D"font-family:monospace, Courier;color:black;back=
ground-color:rgb(249, 249, 249);border:1px solid rgb(221, 221, 221);border-=
radius:2px;padding:1px 4px">8000</code></li></ul>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
That is why I was using an MTU of 8000. Maybe you are having a different is=
sue than I had. I just remember using ILAs to probe all sorts of things in =
the FPGA and remember finding that the CHDR packet would take up the entire=
 8000 MTU size only if my block
 was inserted. Again, the Ethernet header that gets prepended would then pu=
sh it over the MTU limit. Setting spp lower worked for me to get past the s=
treamer errors. You could try setting spp to something a lot smaller (like =
200) just to see if it helps. Otherwise,
 I'm not sure what the issue is.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mark D &lt;md964@hmgc=
c.gov.uk&gt;<br>
<b>Sent:</b> Wednesday, February 17, 2021 11:43 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;<br>
<b>Cc:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Subject:</b> RE: OTT Gain Block stopping samples flowing from RFNoC Digi=
tal Down Converter</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}
p.x_xmsonormal, li.x_xmsonormal, div.x_xmsonormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_EmailStyle23
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:b=
reak-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"">Thanks Jim,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">I=92m using eth0 on the E320 whic=
h is set with an MTU of 1500 and this seems to be the maximum. If I try to =
set it to 1501 it says that=92s greater than the maximum allowed.</span></p=
>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">I=92ve now switched to using the =
SFP+ port rather than eth0 which has an MTU of 9000, but this hasn=92t had =
any effect.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">I tried setting spp by adding spp=
=3D1987 to the Block Args field in GNU Radio, but still no luck. Is this th=
e correct way to set the spp argument?</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Mark</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Jim Palladino &lt;jim@gardettoengineering.com&gt;
<br>
<b>Sent:</b> 17 February 2021 15:52<br>
<b>To:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;;=
 Mark D &lt;md964@hmgcc.gov.uk&gt;<br>
<b>Subject:</b> Re: OTT Gain Block stopping samples flowing from RFNoC Digi=
tal Down Converter</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Hi M=
ark,</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">I'm =
not sure if this is your problem, but I had a similar issue. After some deb=
ugging, I found that for some reason, with the OOT RFNoC Block inserted, th=
e total size of the CHDR packet plus
 the Ethernet header that gets added on in the FPGA would slightly exceed t=
he MTU size (mine was set to mtu=3D8000 for the E320). I never figured out =
why this happens, since this isn't the case if the OOT block is not inserte=
d (just like the flowgraph you described).
 Maybe just increasing the MTU size would help?</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Anyh=
ow, my solution was just to set the &quot;spp&quot; argument in the RFNoC_R=
X_Radio. I found that setting spp to a maximum of 1987 keeps the total pack=
et size (after the Ethernet header is appended)
 to be less than the MTU of 8000. FYI, for spp means 1987 samples per packe=
t. So, for 32-bit samples, 1987*4=3D7948. This leaves enough room for the E=
thernet header.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">It s=
eems like there should be a better &quot;fix&quot;, but you can try setting=
 spp manually to see if that helps.&nbsp;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Jim<=
/span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"x_MsoNormal"><b><span style=3D"color:black">From:</span></b><sp=
an style=3D"color:black"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounc=
es@lists.ettus.com">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of=
 Mark D via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 17, 2021 10:35 AM<br>
<b>To:</b> 'usrp-users@lists.ettus.com' &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] OTT Gain Block stopping samples flowing from R=
FNoC Digital Down Converter</span>
</p>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
</div>
<div>
<div>
<p class=3D"x_xmsonormal">I=92m working with an E320 using UHD 4.0.</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">I=92ve been working through the video =94RFNoC 4 =
Workshop - GRCon 2020=94 to install my own custom signal processing block i=
nto the RFNoC on the FPGA.</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">I=92ve also been following the guide AN-121 =93De=
bugging FPGA images=94 and have added Chip Scope probes to the payload and =
context stream signals.</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">I have got to the point where I have the block in=
stantiated in the FPGA. Running the example GNU radio code that streams sam=
ples from the host computer through the gain block and pack to the PC works=
 as expected. I am also able to capture
 the payload and context stream signals in Chip Scope.</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">However if I reconfigure the GNU radio to =93RFNo=
C RX Radio=94-&gt;=94RFNoC Digital Down Converter=94-&gt;=94RFNoC Gain=94-&=
gt;=94RFNoC Rx Streamer=94-&gt;=94QT GUI Time Sink=94 the system no longer =
works.
</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">The Time Sink appears but the GNU Radio console i=
s saying rfnoc_rx_streamer0 =96 UHD.recv() call timed out. Removing the gai=
n block from the GNU radio design restores operation, so it appears that th=
e gain block is in some way blocking
 the streaming data.</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">I=92ve also rebuilt the FPGA with the gain block =
connected between the DDC and Stream Endpoint but the results are the same.=
 I=92ve tried reverting the gain block code back to that generated rfnocmod=
tool, which just loops the context and
 payload data straight through. </p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">Does anybody have any idea why this block would b=
e stopping data internally generated within the USRP from streaming out, wh=
ereas it works Ok when data is flowing from and back to the host?</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">Any help would be greatly appreciated,</p>
<p class=3D"x_xmsonormal">&nbsp;</p>
<p class=3D"x_xmsonormal">Mark</p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
<p class=3D"x_MsoNormal">This email and any files transmitted with it are c=
onfidential and intended solely for the use of the individual or entity to =
whom they are addressed. If you have received this email in error please no=
tify the system manager.
</p>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312A0DE5787E8731D0585E0B8869MN2PR12MB3312namp_--


--===============4800183175647981719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4800183175647981719==--

