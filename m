Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1222D4497
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 15:44:22 +0100 (CET)
Received: from [::1] (port=59612 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn0hZ-0007OE-Vg; Wed, 09 Dec 2020 09:44:21 -0500
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.183]:38952)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kn0hV-0007IO-BD
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 09:44:17 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 93624A711D
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 14:43:34 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.19])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 8688B60097
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 14:43:24 +0000 (UTC)
Received: from us1-mdac16-34.at1.mdlocal (unknown [10.110.51.92])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 855628009B
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 14:43:24 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.48.53])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CB0522C005C
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 14:43:23 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2105.outbound.protection.outlook.com [104.47.55.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 79FD2A0006F
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 14:43:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6TMF3xAHl8FgjDbTMTNZw5qv1laoDtnU86pmVePTwLpsZeImKC+EINj/rmIN0e0JOYcPNnqU6rCzUSZohtOmuy8y5HqHf5fuwZ46XagKnUGFLuR23g9uqBgZv0WVSdVY4J4OBZJNQgVPuwfnCaSU2rdS/UaLKcgjBUEEwbUPfu9mvKaVbuextm/4f/qaueD6jrCyVlKXAiIPuaetlgUxVX4ARSNEAHWBE05tjAsDXD42HeyU1EIURSFhJ05xGGP2lBW4J+rbIQLw9ecoL1uIpGVwDtGeD5a6HMwtPGpadDUlfMMLXCZevD2pMgu4za8cxWKA11cEHAVtgeOx2HZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhZDSdxphYvY9VWrZXhuIma590t3afGvJ5TbH5lSeX4=;
 b=YUN5sU6zeo1FGYOWK68IYNorBEsZnewMzhF4+FC+hi9ct3EQczXynOw+ObdPKDsxQ/EIXtvOf2Kk2BBDqyen58B1qZPTixv0VXUKX1QL3I9C0ha+MXj8JK1nOReVN1DpHIv5FyoXUmpWOxq8A21feJ4vdQcpbuh9IiW+2guQj7kdeFY2ybDuigImEhhHC3KNx1UEoNjzJnTsPsqSqeyRIunZEb53MSs0WK1M/Zb4Br5sqQO5qu+n2Fr9O0NPZ58XPrHbvb4DtOtyF+t8TlGTjCK4oWU47Dfp4cm9JBK7GSeOqngkjifAYQFIpRhV3RnAVJuSbRBFJey3gA6f4kQjOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhZDSdxphYvY9VWrZXhuIma590t3afGvJ5TbH5lSeX4=;
 b=iix9NENOHZ9MYnDRrT4OwucOTrV9xAucSqhMHSO5U7zBnDVkTOCD4RwNrVx/jwaXURoPcQY0uikhIjNQF3xu3ayZ1ZaWnf2oBoo1aJ89HtgEMy4FRKIUPWCVNWMmWlo65UVkj2kH8YSnQ+evyNJQS6qlecYzQXuCmPX2P2i/qyQ=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3216.namprd12.prod.outlook.com (2603:10b6:208:102::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 9 Dec
 2020 14:43:20 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75%3]) with mapi id 15.20.3632.021; Wed, 9 Dec 2020
 14:43:20 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 SFP speed/duplex question
Thread-Index: AQHWzjdYkQbImk7s40O1bTxyTcfDqQ==
Date: Wed, 9 Dec 2020 14:43:20 +0000
Message-ID: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee7f4e7d-66ee-4e9b-d054-08d89c50c5d9
x-ms-traffictypediagnostic: MN2PR12MB3216:
x-microsoft-antispam-prvs: <MN2PR12MB3216912980C91AD0A829724AB8CC0@MN2PR12MB3216.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X4tfnBHPkJPW4X2GYMuiPb7TnAu4Pqpncx51fdx3SC2ylEfQzMvcS66BUCETawgCYmw2D4mG1YMhDxiiSkPTNzkeFwwyWZZDKnxewL7VpfZHusx8uaKypgys1+L7ri2pMYNcAc88V8dUlIGLcktVkNjIktxdFa+yp1K+X26G51RYW9kqprBoLmlojIkx5jd7qaVOq3m4ozDcAvLPhlocjciH29Zvf/ykg1qkPdQnUqGTfvostPtVuDMqHPRnZZd4mdVTsSD350sC8uflhFeaUUfJpulTezRVvRUiqPSIUja7+8Ir3bUazuuzKgDSA/cbGvWmmuGNSlGAWNxHWCryfQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(136003)(366004)(52536014)(71200400001)(6506007)(186003)(8676002)(64756008)(66446008)(26005)(66946007)(19627405001)(2906002)(86362001)(66476007)(8936002)(5660300002)(33656002)(66556008)(6916009)(508600001)(7696005)(76116006)(55016002)(83380400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?rCtMMY+LF67+QEqs9BOZyqUVoNt17BhQ0kcYHXpzHZ9HZddLkE1vgbpOgo?=
 =?iso-8859-1?Q?6pUfiYRQtrC/CNR8FilLtJsvVR6tX+5rOU0WI8X1A0Hg3pLzs56TKlb9KX?=
 =?iso-8859-1?Q?TFjPP04MRh/xdmtHdpC0VfoPYGeoQmCZSAbY/L4znTY5HPs+KM2ZaZL2dr?=
 =?iso-8859-1?Q?r5e8ojVBCaZzFC7AYcZ/0m5EF7t49VIYOgj356qdTX2XUNsJInb61pyPTd?=
 =?iso-8859-1?Q?8pPDP8tC/59lW92o83nSCnWpb+gdH8Ki2Hxdp+kxcP/N/pw4lKauct8wVv?=
 =?iso-8859-1?Q?lZTTFxPF9p0MHUx1YhGPFoo0Cid4nErBx/SGxWa/s9QcUUbM6XvjLV8id+?=
 =?iso-8859-1?Q?O+XKujKViIOnW6ClG5dZVgQo6RRYBeMLFCIzMTtZlIl30bDpabpuFUuqcw?=
 =?iso-8859-1?Q?eSThYJb2pZWHxJLzqE0r3wQJueGaWyLchge6yImp2eVYjwtqVxt7+OdzT3?=
 =?iso-8859-1?Q?/DDujaR+RParR9So0jltfbckOIYQd+KRHI/yAM0IKTK1swU3GPtuRjPDz9?=
 =?iso-8859-1?Q?O2GD03px3fdWQNRDpFfTtvmC4FypNtt/ntQ/yOC0KJn+OfPf/nIrBAlcfy?=
 =?iso-8859-1?Q?LTSzSYoFV7pZKAzvkZcPG6rBE9YZcVhKmb64PoNoj2HL/Ej4O/wZ1zUAu9?=
 =?iso-8859-1?Q?EJMOopX9woqEASFDvi8QLA/togNj2nzUdc6Qpec1/aMPUlmZjVF0oSlKV7?=
 =?iso-8859-1?Q?zwPkw0VO7LoTt7e9bc3OxuWsLyZuxffUmNEvUnzjcqyX8CDaNyK3sVktks?=
 =?iso-8859-1?Q?cSTCt5/bqHB2yNGyfGfwPlGqog5ECo94yIkJ3+IDUFMJkq8amF/TvWvlf/?=
 =?iso-8859-1?Q?I4GFVlrXxYNdx236P8n1iTI0TS3dcfYr+WeU0G0mGOU7K+Bixajt1Pms3U?=
 =?iso-8859-1?Q?NHtgA0AzilTM7fT4I4FKRjrcj7uuH4xJXv5NpITh7rDiDAh7OwjkZQatwd?=
 =?iso-8859-1?Q?WIAfvpxzqlykYjh3JyZoSm2JARC+SWjtTEtKiEJ2NX4wK/dxr4eO9HLSJw?=
 =?iso-8859-1?Q?e92ZgrKynXF7BEtG0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee7f4e7d-66ee-4e9b-d054-08d89c50c5d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 14:43:20.2808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OpcY59Zl2YZNHhBSNcrjX1LNw7hrGOIT5LzokeMyg/rdp+QTOPWcEviEwdOo1LMeUDSzlTRVugwJC59v96aWrGMX1Fc4d7NiGF88UI87e6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3216
X-MDID: 1607525004-djwTAyrrumSm
Subject: [USRP-users] E320 SFP speed/duplex question
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
Content-Type: multipart/mixed; boundary="===============3437566353142144213=="
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

--===============3437566353142144213==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33122B3455C6BB95A43D6C29B8CC0MN2PR12MB3312namp_"

--_000_MN2PR12MB33122B3455C6BB95A43D6C29B8CC0MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,
I just setup an E320 with a 1Gbps SFP. I've updated the filesystem, FPGA lo=
ad (with the "1G" build"), etc and am using UHD 4.0. uhd_usrp_probe seems h=
appy, and I created a gnuradio flowgraph and streamed samples ok. I did not=
 test throughput, though.

What concerns me is that when I connect to the E320 via serial console and =
boot, I see this:
[   23.592701] nixge 40000000.ethernet sfp0: Link is Up - 10Mbps/Half - flo=
w control off
[   23.733169] nixge 40020000.ethernet int0: Link is Up - 10Mbps/Half - flo=
w control off

If I check with ethtool on the E320, I see:
----------------------------
Settings for sfp0:
Supported ports: [ TP MII ]
Supported link modes:   1000baseT/Half 1000baseT/Full
Supported pause frame use: Symmetric Receive-only
Supports auto-negotiation: No
Supported FEC modes: Not reported
Advertised link modes:  1000baseT/Half 1000baseT/Full
Advertised pause frame use: Symmetric Receive-only
Advertised auto-negotiation: No
Advertised FEC modes: Not reported
Speed: 10Mb/s
Duplex: Half
Port: MII
PHYAD: 0
Transceiver: internal
Auto-negotiation: off
Link detected: yes
------------------------------------

I know that the SFP is directly connected to the FPGA, and the load I put o=
n the FPGA is for 1gbps. Is the ethtool reported speed of 10Mbps and duplex=
=3Dhalf even meaningful?

By the way, our network switch that the sfp is ultimately connected to show=
s a 1gbps/full duplex connection on that port.

I'm just a little confused with what is happening between linux/ethtool/ARM=
 vs the FPGA SFP connection and whether or not I actually have a speed/dupl=
ex problem.

Thanks,
Jim


--_000_MN2PR12MB33122B3455C6BB95A43D6C29B8CC0MN2PR12MB3312namp_
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
I just setup an E320 with a 1Gbps SFP. I've updated the filesystem, FPGA lo=
ad (with the &quot;1G&quot; build&quot;), etc and am using UHD 4.0. uhd_usr=
p_probe seems happy, and I created a gnuradio flowgraph and streamed sample=
s ok. I did not test throughput, though.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
What concerns me is that when I connect to the E320 via serial console and =
boot, I see this:<br>
[ &nbsp; 23.592701] nixge 40000000.ethernet sfp0: Link is Up - 10Mbps/Half =
- flow control off</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
[ &nbsp; 23.733169] nixge 40020000.ethernet int0: Link is Up - 10Mbps/Half =
- flow control off &nbsp; &nbsp;
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If I check with ethtool on the E320, I see:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
----------------------------<br>
Settings for sfp0:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Supported ports: [ TP MII ]</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Supported link modes: &nbsp; 1000baseT/Half 1000baseT/Full</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Supported pause frame use: Symmetric Receive-only</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Supports auto-negotiation: No</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Supported FEC modes: Not reported</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Advertised link modes: &nbsp;1000baseT/Half 1000baseT/Full</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Advertised pause frame use: Symmetric Receive-only</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Advertised auto-negotiation: No</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Advertised FEC modes: Not reported</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Speed: 10Mb/s</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Duplex: Half</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Port: MII</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
PHYAD: 0</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Transceiver: internal</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Auto-negotiation: off</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Link detected: yes &nbsp; &nbsp; <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
------------------------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I know that the SFP is directly connected to the FPGA, and the load I put o=
n the FPGA is for 1gbps. Is the ethtool reported speed of 10Mbps and duplex=
=3Dhalf even meaningful?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
By the way, our network switch that the sfp is ultimately connected to show=
s a 1gbps/full duplex connection on that port.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm just a little confused with what is happening between linux/ethtool/ARM=
 vs the FPGA SFP connection and whether or not I actually have a speed/dupl=
ex problem.</div>
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
</body>
</html>

--_000_MN2PR12MB33122B3455C6BB95A43D6C29B8CC0MN2PR12MB3312namp_--


--===============3437566353142144213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3437566353142144213==--

