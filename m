Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 451232D46B0
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 17:26:21 +0100 (CET)
Received: from [::1] (port=60462 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn2IF-0007O6-Ll; Wed, 09 Dec 2020 11:26:19 -0500
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:33878)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kn2IB-0007Fv-EJ
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 11:26:15 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 216331092F6
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 16:25:34 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.20])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 11729800CB; Wed,  9 Dec 2020 16:25:24 +0000 (UTC)
Received: from us1-mdac16-30.at1.mdlocal (unknown [10.110.51.89])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 0F0EF80098; 
 Wed,  9 Dec 2020 16:25:24 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.74])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 57D302A007B;
 Wed,  9 Dec 2020 16:25:23 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2059.outbound.protection.outlook.com [104.47.46.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 32D798006C; 
 Wed,  9 Dec 2020 16:25:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TsE95fgYSPIQ9OFK2wLqjbypORO2LHflNRcp2Ftdr7na6AxcjS2Ca+YTUwAuLXC4FFujSn0VXgG9dd/mQYv58rYdwJEaAlKjD84Omv7SEaOqBTwyi+/C5iHU5i5vIsMFxU/4P9Rv72v2P5lhgbaZV/LsW6Lh5Fob0Fvb/+iV1ikaW+7V6L9m1ww2x07AM+kxMnNGuqpqjc5RWY0j3DNfKsD1aSfUV4FjIwQS+5st4JEWU4jUjiTt0mz82MrGjQ6qtPyduwwG0xnwV+DHTEUpyE6hDbIRejnzQQZ7Xl3104NY8K9DXd83mkv5xI78vXCj6I+yby5692bIvBJyyXwX+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIUWaQ2MFpB2t+xI7OacDAeK7lsAlE1rdtBCCRjv9DM=;
 b=Xm1YX/SEgnGQAyBfhyMF36tBaRQAGnoD+MdzjCQkqy+RLK3d8lbTHSQ2mU9uBngkbe/5flv60bYORKPQouBLS3nrfR7RiXdGfxakKDCG2XbV/YqIFMRLtFuTFDUrgrH3dcbtqFUNaZppEg5URiRv1UQBulLVBwAUBets/4p2yXlOPJetjEDVavgwB7Pmeqtc3FNLjhlnZN3Sv4gWr2yn424zV2oyaN9L8l71AOFknwE/oRTweeO20hD/nPNIB67pmyGMXOu+TZ+9A/OR0TB5NMPSjQboCZFZa+aeqSRAYpSL3tFr4qqWdeV4avN3IMYYKPAkd7zud0h/GuyPY/uI0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIUWaQ2MFpB2t+xI7OacDAeK7lsAlE1rdtBCCRjv9DM=;
 b=qKOrcV9qBKDkwkcoVof5M1fLkF4t5BbpWrHbR4BK+7z9LRXtgd7937EukhQKWhNQ8k4VYbb97f5RXjNSTCbFg8yEc42IyoDQijoWffwADLyitWkNs9S/tNBgbCv+spoaRIDDlj8a8UmuGvFE8829FfPf1nbs9QexEMreTu8Uqfk=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3549.namprd12.prod.outlook.com (2603:10b6:208:107::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Wed, 9 Dec
 2020 16:25:19 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75%3]) with mapi id 15.20.3632.021; Wed, 9 Dec 2020
 16:25:19 +0000
To: Michael Dickens <michael.dickens@ettus.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 SFP speed/duplex question
Thread-Index: AQHWzjdYkQbImk7s40O1bTxyTcfDqanu7n0AgAADoKU=
Date: Wed, 9 Dec 2020 16:25:19 +0000
Message-ID: <MN2PR12MB33127F18BD732EBE83E306A2B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>,
 <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
In-Reply-To: <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ab3cc7e-a1f6-4414-50a8-08d89c5f052d
x-ms-traffictypediagnostic: MN2PR12MB3549:
x-microsoft-antispam-prvs: <MN2PR12MB3549CB00162D7563387AD3AEB8CC0@MN2PR12MB3549.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f3GPiS1coZ7wkksNohrBM8MTBId90sOKtBiYtQoflSVT0JqV12R8tp886eLfxYZQu4IeMKyruV+b7EKlbIzzCOuvbY2GanEdY1EM3D8Hy2AAvL1sdOr9xJ2y+wHFwZyPxpItyCbX6RgTekGLY7fc0uu/peljinNc4/nI/S4djN9d//5B3/sAmdptDKw7QLMvR+XOjli7DeG5thM3Y5naFda/1ZndlfYyWzz0hJ+iaDYKGzkqfWbhDLc8kvlhk8BEoW05Udp79YSgUBLqGiXt8I/Evk5YDaTiUuPMxtoVuWn1vJkYjmhafVxlkWkwDuBj3Ja3lAEmuAj+t0b34E7kg/6e+8p+H4V8Rb+9Po26UlVZ6iyA6/CokBM5Uu6+VuOBS1v2d7NG0C6OVnrQyJFvNA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(346002)(66476007)(71200400001)(5660300002)(55016002)(66946007)(19627405001)(66446008)(7696005)(4326008)(83380400001)(76116006)(6916009)(6506007)(86362001)(966005)(166002)(33656002)(8936002)(186003)(26005)(2906002)(9686003)(8676002)(64756008)(53546011)(52536014)(508600001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?tdrWHa6oArdnTx57Axzb6i1zvqF7qqa97Kid/7SuA5R8cSQ2xYN2N0Ljbq4l?=
 =?us-ascii?Q?z+4OiCrgBBRNlL849JFKRbgO3kXzi54zM+h2TubPt1d0+VNJ5IcvUL6WWThk?=
 =?us-ascii?Q?GNgF9K/sqL61WzwfWcXPv19qkhnSSF6SZOUiQkDong90o3BaUG8qohTshrWP?=
 =?us-ascii?Q?fExKqu6O/zKpqhpAm/Ft1aR82u5nKrq0HIC1U4lvXf24XTlbutt+g5YzoqrN?=
 =?us-ascii?Q?wIp4Uq361aj9Yq8dRlkckcRMVJn8Ss12k0hW/f6Ez1Py29+xG0yjUf87BCnJ?=
 =?us-ascii?Q?/wnwR6MGtJvReW5Zycl1eCtEymQFUk54suLikz1+fDGYAaNWT/tL744Sa/3h?=
 =?us-ascii?Q?Wp/B8MPPtldMGg6yuRAwU0t9nHdnYIWwvnj1hFsI5reT8CCF3p45FJrlQID+?=
 =?us-ascii?Q?RROCNxavD9xNGbfhZeLvxXDBhCMWPQwkZ5dep6oSF2sW+UMuAIaU/JIFva2L?=
 =?us-ascii?Q?bPEfM42cRc1aaxItfVFlf5Plp3U5sPFa6O0jC7cArNXY8sZy/352SsifNvwe?=
 =?us-ascii?Q?LnOdQTTbIow6n5IJuUTWfvax2cfW9602jQBWw4MtG5xrhoa6AxwES66cuJtK?=
 =?us-ascii?Q?pD3KF7kPK0VfojoRCXC1ZA1xXkZ0PkXX19sbOt0zYTQpRk0NHJiRkp6/hJrk?=
 =?us-ascii?Q?+Xnu0dmrat+cZVtJclVa7ax7k40EQd06ZVqREzERHnuQjPXb8qCU58NAlwBN?=
 =?us-ascii?Q?ghqkMSdCDxTTxjqPHn9wadHIUBBDlTuGekYK9jK9Srxeu79rdXJkBI8x5h29?=
 =?us-ascii?Q?44OWclctE2SqGyzo5G/fxmIY5JoS9Sjxkojduul7Bv1fH0P2pnSsiR/5C2+A?=
 =?us-ascii?Q?TdGnlU71jjJV9v4XcW8SLz/liXDlPxdzyalStzkq7lUZoJVrEGgBVNLxPipT?=
 =?us-ascii?Q?I9ndTo1GlI0jQgAypijLLjOqL+5CLODUpYJBtUpRog5R59TPsbvjgHOydtUk?=
 =?us-ascii?Q?n7mSBJ0UbJfBIz4pn4stAQGs+coLS62Y4KPoJRiMsQ4=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab3cc7e-a1f6-4414-50a8-08d89c5f052d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 16:25:19.4277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hzmi1OGR8k744zz+7V48D8mw56GVmV8CFn+zhl87J6JlnpzE6CVAOJrOnK3qj41xfcuGV9rKjgOapdcRhjJSQ5CVBoHncni4H7xkCJS+VMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3549
X-MDID: 1607531123-r9qW8FP47Rv3
Subject: Re: [USRP-users] E320 SFP speed/duplex question
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
Content-Type: multipart/mixed; boundary="===============3089172766532827695=="
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

--===============3089172766532827695==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33127F18BD732EBE83E306A2B8CC0MN2PR12MB3312namp_"

--_000_MN2PR12MB33127F18BD732EBE83E306A2B8CC0MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

Thanks for the response. I did load the FPGA image again using "1G". My opt=
ions are "1G", "XG", "AA". I still have the issue where linux/ethtool is st=
ill reporting a 10Mbps / half-duplex link on sfp0. Again, I'm able to strea=
m data, so maybe things are working fine.

Thanks,
Jim

________________________________
From: Michael Dickens <michael.dickens@ettus.com>
Sent: Wednesday, December 9, 2020 11:07 AM
To: Jim Palladino <jim@gardettoengineering.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 SFP speed/duplex question

Hi Jim - Just for completion: Try loading the "HG" image -- again if necess=
ary: 1 Gb on SFP+ port 0 and 10 Gb on SFP+ port 1. Regardless of whatever L=
inux / ifconfig / ethtool shows, the SFP+-based networking will not work if=
 the link speeds are not met on both ends. All USRPs will set the correct s=
peed via the FPGA: 1 Gb or 10 Gb, depending on the FPGA image used. The onl=
y way to get different link speeds is a different FPGA image. Once configur=
ed on both ends, if data transport is working then, if Linux / ifconfig / e=
thtool still shows 10 Gb link speed then, yes, something is off with those =
tools -- but, clearly the USRP is working as desired & that's the bottom li=
ne here hopefully! - MLD


On Wed, Dec 9, 2020 at 9:44 AM Jim Palladino via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3Dh6gf=
Ud4_-1RcS5UAfGAHCk5wNYVY066vaNcSpuMyVKs&s=3Dv42cqkoKiKIWGSBTjv2y2lowcm0jBCL=
sg4iGVWB31w8&e=3D>

--_000_MN2PR12MB33127F18BD732EBE83E306A2B8CC0MN2PR12MB3312namp_
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
Hi Michael,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for the response. I did load the FPGA image again using &quot;1G&quo=
t;. My options are &quot;1G&quot;, &quot;XG&quot;, &quot;AA&quot;. I still =
have the issue where linux/ethtool is still reporting a 10Mbps / half-duple=
x link on sfp0. Again, I'm able to stream data, so maybe things are working
 fine.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Michael Dickens &lt;m=
ichael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 11:07 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] E320 SFP speed/duplex question</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim - Just for completion: Try loading the &quot;HG&quo=
t; image -- again if necessary: 1 Gb on SFP+ port 0 and 10 Gb on SFP+ port =
1. Regardless&nbsp;of whatever Linux / ifconfig / ethtool shows, the SFP+-b=
ased networking will not work if the link speeds
 are not met on both ends. All USRPs will set the correct speed via the FPG=
A: 1 Gb or 10 Gb,&nbsp;depending on the FPGA image used. The only way to ge=
t different link speeds is a different FPGA image. Once configured on both =
ends, if data transport is working then,
 if Linux / ifconfig / ethtool still shows 10 Gb link speed then, yes, some=
thing is off with those tools -- but, clearly the USRP is working as desire=
d &amp; that's the bottom line here hopefully! - MLD<br>
<br>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Dec 9, 2020 at 9:44 AM Jim =
Palladino via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I just setup an E320 with a 1Gbps SFP. I've updated the filesystem, FPGA lo=
ad (with the &quot;1G&quot; build&quot;), etc and am using UHD 4.0. uhd_usr=
p_probe seems happy, and I created a gnuradio flowgraph and streamed sample=
s ok. I did not test throughput, though.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
What concerns me is that when I connect to the E320 via serial console and =
boot, I see this:<br>
[ &nbsp; 23.592701] nixge 40000000.ethernet sfp0: Link is Up - 10Mbps/Half =
- flow control off</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[ &nbsp; 23.733169] nixge 40020000.ethernet int0: Link is Up - 10Mbps/Half =
- flow control off &nbsp; &nbsp;
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I check with ethtool on the E320, I see:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
----------------------------<br>
Settings for sfp0:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Supported ports: [ TP MII ]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Supported link modes: &nbsp; 1000baseT/Half 1000baseT/Full</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Supported pause frame use: Symmetric Receive-only</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Supports auto-negotiation: No</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Supported FEC modes: Not reported</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Advertised link modes: &nbsp;1000baseT/Half 1000baseT/Full</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Advertised pause frame use: Symmetric Receive-only</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Advertised auto-negotiation: No</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Advertised FEC modes: Not reported</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Speed: 10Mb/s</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Duplex: Half</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Port: MII</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
PHYAD: 0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Transceiver: internal</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Auto-negotiation: off</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Link detected: yes &nbsp; &nbsp; <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
------------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I know that the SFP is directly connected to the FPGA, and the load I put o=
n the FPGA is for 1gbps. Is the ethtool reported speed of 10Mbps and duplex=
=3Dhalf even meaningful?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
By the way, our network switch that the sfp is ultimately connected to show=
s a 1gbps/full duplex connection on that port.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm just a little confused with what is happening between linux/ethtool/ARM=
 vs the FPGA SFP connection and whether or not I actually have a speed/dupl=
ex problem.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGu=
qHauOvsPdD2NZkfwDnwpYx0&amp;m=3Dh6gfUd4_-1RcS5UAfGAHCk5wNYVY066vaNcSpuMyVKs=
&amp;s=3Dv42cqkoKiKIWGSBTjv2y2lowcm0jBCLsg4iGVWB31w8&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33127F18BD732EBE83E306A2B8CC0MN2PR12MB3312namp_--


--===============3089172766532827695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3089172766532827695==--

