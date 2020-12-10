Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C2E2D5A07
	for <lists+usrp-users@lfdr.de>; Thu, 10 Dec 2020 13:09:49 +0100 (CET)
Received: from [::1] (port=40708 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knKlV-00006D-EH; Thu, 10 Dec 2020 07:09:45 -0500
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:35430)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1knKlR-0008St-NC
 for usrp-users@lists.ettus.com; Thu, 10 Dec 2020 07:09:41 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 0E00CCE45F
 for <usrp-users@lists.ettus.com>; Thu, 10 Dec 2020 12:09:01 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.120])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 EDB8780069; Thu, 10 Dec 2020 12:08:50 +0000 (UTC)
Received: from us1-mdac16-4.ut7.mdlocal (unknown [10.7.66.211])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id EC14A800A3; 
 Thu, 10 Dec 2020 12:08:50 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.92])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 275261A004F;
 Thu, 10 Dec 2020 12:08:50 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2170.outbound.protection.outlook.com [104.47.59.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 70425800066;
 Thu, 10 Dec 2020 12:08:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OkEzjFnUNbkXbqcyYjC5MdU39J4a3CakCMOoRtaVeO+9CA0SFQSdvm28O8VIcWhqFyfZmtp4+HM5lsNVpqL9MTyxbLqPardgtlUvH6SwdebWTBRZzJ0wkCl0wYnWW5x1IcBS5N6iFsxFlI+rY0YdKpozE69YaymU2iZBlyqxlNGwlAOgp+XkblExyD7D8VEnQuZvdjT1vNgAHvMFAERFYHfxDVcis7+jH1SBv0pqkFrDkmSVswPvItbLYfe47IiCXByPtO8eK/xLG8DrSAZLk4jrAd0SCzwcWC4GlBzWgJ7R+jYReKGBzXByeevlG9SM1267gqOTLgkI4LhT8AO5zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bcsnYqYvSR9cjYHq9HBr+uOwiDu3SDVG0suNarRJ358=;
 b=A5ntqx9RdsRpscEHBf3w2qyflQxgrG8iTJWcVEhqVbi+Tif9mRSptNPumHLSk3aYV1s8yYpBN0p7U9fOWW4uy0+DpcbvuGsIWMXBMkx3AjNkwlP2SbCbJX/hnCnNU0n+r1HVmwUPoQm2f9Dc8z3KDEPkH91v3kO+i4rwRRN/2vf1xhYY3c56Xo22+TJBPuKi2ikbI1mgVrrELX+UYINdb1pMjaESV8V/NIlaDv4dFMSIoY27Fn49XcCms/M9y9yq1seGlDwt9FN3pkI0j2oHUd+42gfLGXkV9BGkED3vlEE3QoFWSlIwfBgadzQxnpdAKOqutNYYr63O98FY8aHJJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bcsnYqYvSR9cjYHq9HBr+uOwiDu3SDVG0suNarRJ358=;
 b=G6429ukh7Bzphw7xijMVrEOnFgzwsfItR2GjMIKaeZkw4MN0c+ntLtb7FSjeOKkVE9s+Eu2h4ixb8x0BGjhng2AmU4NwOuWAMArb99nJvC3Ku1lcXJ8N6WZzR/UyldXWR5+Aspz6bOAzPDKndrbnbhkxBY5xrZCf0Rffqr8ffsg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB2863.namprd12.prod.outlook.com (2603:10b6:208:103::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Thu, 10 Dec
 2020 12:08:45 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75%3]) with mapi id 15.20.3632.021; Thu, 10 Dec 2020
 12:08:45 +0000
To: Michael Dickens <michael.dickens@ettus.com>, Jim Palladino
 <jim@gardettoengineering.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 SFP speed/duplex question
Thread-Index: AQHWzjdYkQbImk7s40O1bTxyTcfDqanu7n0AgAADoKWAAB/6AIAADU02gAEbTvg=
Date: Thu, 10 Dec 2020 12:08:45 +0000
Message-ID: <MN2PR12MB3312C09B3527B6399272229DB8CB0@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
 <MN2PR12MB33127F18BD732EBE83E306A2B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>,
 <CAGNhwTN9TB7-1Qrh6YWiA1K+V6sGt44SCfdEZE_K2Efr76HC+Q@mail.gmail.com>,
 <MN2PR12MB33129BC6FB4562E21995BBAFB8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33129BC6FB4562E21995BBAFB8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f83e90a-b137-4ee9-1355-08d89d045823
x-ms-traffictypediagnostic: MN2PR12MB2863:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB2863ECD1769DB7D17C89C437B8CB0@MN2PR12MB2863.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RvOhjjbZxSnsupb7kq4cAE3mETWrst9U44dK478cSynhUqPLuhqunWSLJRzeHYmlDi7XrVZc39GzAWw0dOW48hR10wTVkVVhOG6Ps5bbqigzJBLfT5QGwG9ePDSHozJB3Y9c53PsR0sUQD7QPlyivEO1onoQh2Q1JH+VE0iOK9pNREAezErRHfISD3dPdQS0e6J7079r7EtxgjlQb3i1NXrN9VirorTmHc0kWqv90/EJz60pQoHvHZur3WHLzOBDAygxtr0MFSxpstWrlsFkEjBe+MMistFQisVJbM+HH2JjwYmmhsQt1bEWYHOX13wvpW5/BjsjcO5k1Ixng47bVF4wrDsfKvZN751wCEBBWR0Db4C3b03anWvJND+Xh86Mriq/9NZzt5HukJY9pOOdjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39830400003)(366004)(376002)(396003)(136003)(346002)(66556008)(26005)(186003)(5660300002)(166002)(7696005)(33656002)(52536014)(83380400001)(66574015)(9686003)(86362001)(76116006)(6506007)(19627405001)(4326008)(110136005)(66476007)(2906002)(55016002)(316002)(8936002)(66946007)(53546011)(71200400001)(8676002)(478600001)(64756008)(66446008)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?1MaXNdZbGLT/jc/tTZq3nhSFgQUS4djYNhQTaWIruiV4tj/oLK5Cmudza/wM?=
 =?us-ascii?Q?6V8ArFmNPO/4WjazELxsS5JnZ0GyR9xOsG1Lt4uAHFSEmvNKeV9VHVozkRtn?=
 =?us-ascii?Q?dU1fWtET286iDXA4GicthD4Xp33/lqzGIVwWu2YKQLCI65+Qs+A7I3ChqPnI?=
 =?us-ascii?Q?u0i1RkeVbC4xX+057FPUj4vhAUmUOHK2zlgvDupEICemixzK0QsHaVbnJSFf?=
 =?us-ascii?Q?fcdV5vVgWzVnYTou34jLe7WuxmuQHrF7N6iBkAVGcC/7ZLeHVNClO95VNUEj?=
 =?us-ascii?Q?4b9JuKRv2i/s1bvzlFgpJpBsxZz4tQhj+bQISZr3nitgt1NqH7k4NGfJpHKM?=
 =?us-ascii?Q?6w2DDd9khXfhgVmnP0+coant4PB0y6VFH/HOGIDlRcQZl5xBJayiIMOlg40Z?=
 =?us-ascii?Q?gO+SoLwe5rQsTyOAaMOB9DeQFRjYBHTpvU3qXcFr0fr/48Y04Cz4FuplvcLB?=
 =?us-ascii?Q?wlBvu81ltjpPIybFwmC2PonHv/e2M5PG6s6kAFbzrOcaR8F1Zj57TAwOipkf?=
 =?us-ascii?Q?g4ICQ+Jv4r+v7EH3YuPBaIGsQ8HcPA7RiIrUNV2zNmBEiFX/w/ujbykmgAcq?=
 =?us-ascii?Q?keLWCvyldJDzeWwX63jdRgt/5A9/Vct2KQ1A6VrWQAbNZumu9Me5TauPq1zG?=
 =?us-ascii?Q?Yrpls8ZN6yTogiyifqICR/mX7UzbF8s5SjxELJvyfqrQMeRJWeKZhrvG1gjY?=
 =?us-ascii?Q?i036kyTqqS2LVKfDijRAzJeT9kX8N2/bVwgS45zek9reKD6oBpfbKPO+kyWH?=
 =?us-ascii?Q?7/xLyF0JIaz46QWnFlUGHgpjbyHPBPiaTlRtDRdoOtQ6+78vthmaaPVTyM7n?=
 =?us-ascii?Q?OaeqpbVlhoZ/B1VbC39ytJCtA+ByBI822ueOwuKW3akO1lyFv9W6U1x1hdFd?=
 =?us-ascii?Q?YdYLLCitE9uECK7+TV1uvBri5QzCgFYBm0Wu5umw/H7rXSIFkh6ZeyVgLthf?=
 =?us-ascii?Q?VqZ/AuU3QplsS2p1gdrPYzlZflOdRPtumSG97MRmXaw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f83e90a-b137-4ee9-1355-08d89d045823
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2020 12:08:45.6069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H3qun+C2W6xmRE4hDknVgJ8MDXgkiX5ZE1xjHDfsIkjZ/+miuVAAdxJKItzwC/lCTLQV9BZS+WFc3eqPLFEoxO+Z241p59CW2B7SqGmnNEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2863
X-MDID: 1607602130-6FSmuxX4eEGq
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
Content-Type: multipart/mixed; boundary="===============2177321550676434109=="
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

--===============2177321550676434109==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312C09B3527B6399272229DB8CB0MN2PR12MB3312namp_"

--_000_MN2PR12MB3312C09B3527B6399272229DB8CB0MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I just wanted to follow up that I changed the configuration of the 1gbps ne=
twork interface on my development computer (this is the interface directly =
connected to the SFP on the E320). I believe I may have had an IP conflict =
yesterday. After making this change and restarting everything, I am able to=
 sustain rates around 28Msps without overflows now -- or at least they are =
very rare. This is much better than the 4Msps I was seeing yesterday. I thi=
nk everything is working as it should be.

Michael Dickens -- thanks for your help and your quick response yesterday.

Jim

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jim Pall=
adino via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, December 9, 2020 2:03 PM
To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 SFP speed/duplex question

Thanks again for the response and information. I'm seeing pretty much what =
you are. If I make a gnuradio flowgraph with a UHD:Usrp_Source connected to=
 a Null_Sink, I can set the sample rate to 4MHz without overflows. With a s=
ample rate of 5MHz, I see "OOOOO" repeating in the console. So the maximum =
throughput I am seeing is about 32*4MHz =3D 128Mbps. As you said, it is def=
initely higher than the 10Mbps reported by ethtool, but not as high as I ne=
ed. Unfortunately, I don't have a 10Gbit interface available.

I started out with the SFP connected to a switch, through our company's net=
work, and to my development machine. I thought maybe the extra infrastructu=
re was the issue, even though an iperf throughput test (from the management=
 port to my computer) showed about 480Mbps. I assumed the SFP port to my co=
mputer would allow for a similar throughput through the network. Anyhow, I =
ended up hooking the SFP directly to a 1gbps Ethernet port on my computer (=
taking the switch and network out of the loop). This made no difference in =
the throughput I can achieve. It's still a little over 100Mbps.

If you have any ideas what the throughput issue could be, I would greatly a=
ppreciate it. We really need to run at higher sample rates than I'm current=
ly able to do.

Thanks,
Jim

________________________________
From: Michael Dickens <michael.dickens@ettus.com>
Sent: Wednesday, December 9, 2020 1:15 PM
To: Jim Palladino <jim@gardettoengineering.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 SFP speed/duplex question

Hi Jim - Yes you are correct in the E320 FPGA image options: 1G, XG, and AA=
. I booted up my E320 to verify; forgot that there is just a single SFP+ po=
rt on the E320 ... I've been working with X310's and N310's for a while now=
, both of which have 2 SFP+ ports!

Since I'm on my E320, I tried out the XG and 1G FPGA images. Using "ethtool=
" as you noted, the XG image shows "Speed" of 10000Mb/s, while the 1G image=
 shows 10Mb/s ... even though as you note the link modes are just "1000base=
T/Half 1000baseT/Full". Strange!

Using the "1G" FPGA image, I can sustain 2x2 MIMO at 1.45 M-Samples/second =
(but no 2 MS/s), with the wire format being SC16 (4 bytes per sample) ... t=
hat's 92.8 Mb/s bidirectional .. so, clearly more than the 10 Mb/s noted by=
 "ethtool" ... much closer to 100 Mb/s link speed expect throughput (about =
90% of theoretical) but nowhere near 1 Gb/s! Admittedly I had to move to a =
1Gb link via a possibly-ill-configured-switch to get this to work at all, s=
ince my internal USRP testing network is a mix of SFP+ 10 Gb and QSFP+ 40 G=
b links.

Using the "XG" FPGA image, I can sustain 2x2 MIMO at 60+ MS/s, which is goo=
d.

I'm not sure what's going on with the 1G FPGA image, but if the link works =
well enough for your needs then that's the bottom line here!

I believe the following is correct ... and I'm sure if I'm off a bit then s=
omeone will chime in to correct me :)

The Aurora FPGA image is built with the free Xilinx Aurora FPGA-IP, allowin=
g for FPGA to FPGA high speed serial link. Think of it as a link-layer tran=
sport protocol, where one needs to create the higher-layer protocols to do =
actual data transport. Aurora was used in the DARPA SC2 Colosseum for high-=
speed transfer between USRPs and other FPGA processing devices. Aurora remo=
ves the internet protocol layers, providing direct access to the physical n=
etworking interface: bits in, bits out ... No ethernet, IP, UDP handling!

We provide a little information on the UHD manual for the E320 about Aurora=
:

* < https://files.ettus.com/manual/page_usrp_e3xx.html#e320_fpga_flavours<h=
ttps://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_manua=
l_page-5Fusrp-5Fe3xx.html-23e320-5Ffpga-5Fflavours&d=3DDwMFaQ&c=3DeuGZstcaT=
DllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfw=
DnwpYx0&m=3D7N8gAH6vgMzO-NwRZFhDG4KfKuV1TD3bECwVc0phexQ&s=3DXOLlOog92yheS2a=
pHdPQC58eepUR3d9r8QEXmeUcCO0&e=3D> >

{{{
The Aurora image can be used to run BISTs on the SFP.
}}}

* < https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_troubleshooting=
_bist<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.co=
m_manual_page-5Fusrp-5Fe3xx.html-23e3xx-5Ftroubleshooting-5Fbist&d=3DDwMFaQ=
&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqH=
auOvsPdD2NZkfwDnwpYx0&m=3D7N8gAH6vgMzO-NwRZFhDG4KfKuV1TD3bECwVc0phexQ&s=3DV=
3o5ZjN6FSwDrC7ogJcxLGvTkw-vhNq3-xMYd3Eh1yk&e=3D> >

{{{
E320 Built-in Self-Test (BiST)
The E320 series devices have a built-in self-test that can be used to verif=
y the hardware. It is not automatically run, but it can be invoked anytime =
by running the e320_bist executable. Calling

e320_bist -h
will list the available options. Tests can be run by specifying their name,=
 e.g.

e320_bist gpsdo
will test the functionality of the GPSDO. Calling e320_bist standard will r=
un a standard set of tests, verifying some base peripherals such as the RTC=
, the fan and temperature sensors, etc.

Some tests require special hardware connected. For example, for the sfp_loo=
pback tests, a loopback module must be plugged into the SFP+.

Tests may also load different FPGA images, if required. The aforementioned =
SFP tests will load the Aurora FPGA image and use Aurora to run the BER tes=
ts on the SFP port. This is particularly relevant if either a custom image =
was loaded, or if there is an active SSH or other connection coming in via =
the SFP+ ports.
}}}

I hope this is useful! - MLD


On Wed, Dec 9, 2020 at 11:25 AM Jim Palladino <jim@gardettoengineering.com<=
mailto:jim@gardettoengineering.com>> wrote:
Hi Michael,

Thanks for the response. I did load the FPGA image again using "1G". My opt=
ions are "1G", "XG", "AA". I still have the issue where linux/ethtool is st=
ill reporting a 10Mbps / half-duplex link on sfp0. Again, I'm able to strea=
m data, so maybe things are working fine.

Thanks,
Jim

________________________________
From: Michael Dickens <michael.dickens@ettus.com<mailto:michael.dickens@ett=
us.com>>
Sent: Wednesday, December 9, 2020 11:07 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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

--_000_MN2PR12MB3312C09B3527B6399272229DB8CB0MN2PR12MB3312namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I just wanted to follow up that I changed the configuration of the 1gbps ne=
twork interface on my development computer (this is the interface directly =
connected to the SFP on the E320). I believe I may have had an IP conflict =
yesterday. After making this change
 and restarting everything, I am able to sustain rates around 28Msps withou=
t overflows now -- or at least they are very rare. This is much better than=
 the 4Msps I was seeing yesterday. I think everything is working as it shou=
ld be.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Michael Dickens -- thanks for your help and your quick response yesterday.<=
/div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Jim Palladino via USRP-users =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 2:03 PM<br>
<b>To:</b> Michael Dickens &lt;michael.dickens@ettus.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] E320 SFP speed/duplex question</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks again for the response and information. I'm seeing pretty much what =
you are. If I make a gnuradio flowgraph with a UHD:Usrp_Source connected to=
 a Null_Sink, I can set the sample rate to 4MHz without overflows. With a s=
ample rate of 5MHz, I see &quot;OOOOO&quot;
 repeating in the console. So the maximum throughput I am seeing is about 3=
2*4MHz =3D 128Mbps. As you said, it is definitely higher than the 10Mbps re=
ported by ethtool, but not as high as I need. Unfortunately, I don't have a=
 10Gbit interface available.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I started out with the SFP connected to a switch, through our company's net=
work, and to my development machine. I thought maybe the extra infrastructu=
re was the issue, even though an iperf throughput test (from the management=
 port to my computer) showed about
 480Mbps. I assumed the SFP port to my computer would allow for a similar t=
hroughput through the network. Anyhow, I ended up hooking the SFP directly =
to a 1gbps Ethernet port on my computer (taking the switch and network out =
of the loop). This made no difference
 in the throughput I can achieve. It's still a little over 100Mbps.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If you have any ideas what the throughput issue could be, I would greatly a=
ppreciate it. We really need to run at higher sample rates than I'm current=
ly able to do.</div>
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
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Michael Dickens &lt=
;michael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 1:15 PM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] E320 SFP speed/duplex question</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim - Yes you are correct in the E320 FPGA image option=
s: 1G, XG, and AA. I booted up my E320 to verify; forgot that there is just=
 a single SFP+ port on the E320 ... I've been working with X310's and N310'=
s for a while now, both of which have
 2 SFP+ ports!
<div><br>
</div>
<div>Since I'm on my E320, I tried out the XG and 1G FPGA images. Using &qu=
ot;ethtool&quot; as you noted, the XG image shows &quot;Speed&quot; of 1000=
0Mb/s, while the 1G image shows 10Mb/s ... even though as you note the link=
 modes are just &quot;1000baseT/Half 1000baseT/Full&quot;. Strange!</div>
<div><br>
</div>
<div>Using the &quot;1G&quot; FPGA image, I can sustain 2x2 MIMO at 1.45 M-=
Samples/second (but no 2 MS/s), with the wire format being SC16 (4 bytes pe=
r sample) ... that's&nbsp;92.8 Mb/s bidirectional .. so, clearly more than =
the 10 Mb/s noted by &quot;ethtool&quot; ... much closer
 to 100 Mb/s link speed expect throughput (about 90% of theoretical) but no=
where near 1 Gb/s! Admittedly I had to move to a 1Gb link via a possibly-il=
l-configured-switch to get this to work at all, since my internal USRP test=
ing network is a mix of SFP+ 10
 Gb and QSFP+ 40 Gb&nbsp;links.</div>
<div><br>
</div>
<div>Using the &quot;XG&quot; FPGA image, I can sustain 2x2 MIMO at 60+ MS/=
s, which is good.</div>
<div><br>
</div>
<div>I'm not sure what's going on with the 1G FPGA image, but if the link w=
orks well enough for your needs then that's the bottom line here!<br>
<div><br>
</div>
<div>I believe the following is correct ... and I'm sure if I'm off a bit t=
hen someone will chime in to correct me :)</div>
<div><br>
</div>
<div>The&nbsp;Aurora FPGA image is built with the free Xilinx Aurora FPGA-I=
P, allowing for FPGA to FPGA high speed serial link. Think of it as a link-=
layer transport protocol, where one needs to create the higher-layer protoc=
ols to do actual data transport. Aurora
 was used in the DARPA SC2&nbsp;Colosseum for high-speed transfer between U=
SRPs and other FPGA processing devices. Aurora removes the internet protoco=
l layers, providing direct access to the physical networking interface: bit=
s in, bits out ...&nbsp;No ethernet, IP, UDP
 handling!</div>
<div><br>
</div>
<div>We provide a little information on the UHD manual for the E320 about A=
urora:</div>
<div><br>
</div>
<div>* &lt;&nbsp;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__files.ettus.com_manual_page-5Fusrp-5Fe3xx.html-23e320-5Ffpga-5Fflav=
ours&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp=
;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D7N8gAH6vgMzO-NwRZF=
hDG4KfKuV1TD3bECwVc0phexQ&amp;s=3DXOLlOog92yheS2apHdPQC58eepUR3d9r8QEXmeUcC=
O0&amp;e=3D">https://files.ettus.com/manual/page_usrp_e3xx.html#e320_fpga_f=
lavours</a>
 &gt;</div>
<div><br>
</div>
<div>{{{</div>
<div>The Aurora image can be used to run BISTs on the SFP.</div>
<div>}}}</div>
<div><br>
</div>
<div>* &lt;&nbsp;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__files.ettus.com_manual_page-5Fusrp-5Fe3xx.html-23e3xx-5Ftroubleshoo=
ting-5Fbist&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D7N8gAH6vgMz=
O-NwRZFhDG4KfKuV1TD3bECwVc0phexQ&amp;s=3DV3o5ZjN6FSwDrC7ogJcxLGvTkw-vhNq3-x=
MYd3Eh1yk&amp;e=3D">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx=
_troubleshooting_bist</a>
 &gt;</div>
<div><br>
</div>
<div>{{{</div>
<div>E320 Built-in Self-Test (BiST)<br>
The E320 series devices have a built-in self-test that can be used to verif=
y the hardware. It is not automatically run, but it can be invoked anytime =
by running the e320_bist executable. Calling<br>
<br>
e320_bist -h<br>
will list the available options. Tests can be run by specifying their name,=
 e.g.<br>
<br>
e320_bist gpsdo<br>
will test the functionality of the GPSDO. Calling e320_bist standard will r=
un a standard set of tests, verifying some base peripherals such as the RTC=
, the fan and temperature sensors, etc.<br>
<br>
Some tests require special hardware connected. For example, for the sfp_loo=
pback tests, a loopback module must be plugged into the SFP+.<br>
<br>
Tests may also load different FPGA images, if required. The aforementioned =
SFP tests will load the Aurora FPGA image and use Aurora to run the BER tes=
ts on the SFP port. This is particularly relevant if either a custom image =
was loaded, or if there is an active
 SSH or other connection coming in via the SFP+ ports.<br>
</div>
<div>}}}</div>
<div><br>
</div>
<div>I hope this is useful! - MLD<br>
<br>
</div>
</div>
</div>
<br>
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Wed, Dec 9, 2020 at 11:25 AM J=
im Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@gardett=
oengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bo=
rder-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Michael,&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks for the response. I did load the FPGA image again using &quot;1G&quo=
t;. My options are &quot;1G&quot;, &quot;XG&quot;, &quot;AA&quot;. I still =
have the issue where linux/ethtool is still reporting a 10Mbps / half-duple=
x link on sfp0. Again, I'm able to stream data, so maybe things are working
 fine.</div>
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
<div id=3D"x_x_gmail-m_-703746577162683608appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_gmail-m_-703746577162683608divRplyFwdMsg" dir=3D"ltr"><font =
face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>=
From:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" =
target=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 11:07 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
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
<div>
<div dir=3D"ltr">On Wed, Dec 9, 2020 at 9:44 AM Jim Palladino via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
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
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312C09B3527B6399272229DB8CB0MN2PR12MB3312namp_--


--===============2177321550676434109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2177321550676434109==--

