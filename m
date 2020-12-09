Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 897272D49B7
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 20:04:06 +0100 (CET)
Received: from [::1] (port=33766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn4kq-0004FM-6V; Wed, 09 Dec 2020 14:04:00 -0500
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:45514)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kn4kl-000498-Su
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 14:03:55 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 7E992108A19
 for <usrp-users@lists.ettus.com>; Wed,  9 Dec 2020 19:03:14 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.21])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 674B4800C4; Wed,  9 Dec 2020 19:03:04 +0000 (UTC)
Received: from us1-mdac16-19.at1.mdlocal (unknown [10.110.51.78])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 6507C200A2; 
 Wed,  9 Dec 2020 19:03:04 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.105])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 538402E0064;
 Wed,  9 Dec 2020 19:03:03 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2058.outbound.protection.outlook.com [104.47.46.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2FE0B9C0090;
 Wed,  9 Dec 2020 19:03:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZI2cbMNt5hUZS/MekYFsJpw/nuaqIU1p8RpQuRLpU1Vz7w7xxW5pBSqexE1NiKvaFln2e9wLkBPwlTy453UM5Aaqny+z9yRNd+o+SQFOoCJiqllbEaDiBWm0V31RPMqMJJROGBLAGNRBlrMKEDrdVk7WvOqAA1SZ9fbEFEhrY14oSz+8AC3fhKa/sbiPWnt7kODEEgs83WmHLwUaNx8CyqvXz1ZDXORvtRBoi7ysXreQoYmXwLBadBXVWHa2SDHSEELncrW3WK9F66BEE3C/MpBSl+6xy1li/6YcTZW0c5EklfkaIDF5dO6K9lqtOLgf6S2l9zzfL2mwyC5NsvKkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ijYmtY1j4SLGwuQk6Eq8P9EIiJKCWvIc+xskvD+fG4=;
 b=joewcbEkfHkkTK/rmiuvPx6/OJ1AigzG9tsUsdyGa6Akkebsrk8x+KOOHAsQ3wbmusCBnier011weGRQ3B6/SQM438PBizZ0zhdZ8C64SrLF5e/YoyJRwgcgOYrd0GDqZoePSuWMkNcaWyJ1kPaxA4LtYMIMFy89j4LWJkEQULe1Fu8gXZegBvqG2sB76cCzZeqAXcFhb+/CnwpZnEiXRdxkXhBcOt6J5tv6d+xsBlCQpQKSwD0Gjefne5n+keanN9uIbyJ6JKcw0GmoojTMcHhgp4FKshNkwAzd58qgRUOjsmcZG0KNVRs4bkSrvQpBBZT2jYIIEcYOhkMMrQ7G5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ijYmtY1j4SLGwuQk6Eq8P9EIiJKCWvIc+xskvD+fG4=;
 b=oxFMdhMTUWvLAaLjtgwofejWxV7yXOReJoTdoQVg2CCdkjVU8bf3hj8gDg+B7Gkh4/DQIrKTNGUb+g8pfsZWQkpMgv1cib00DTYOPt074vCdcmNreoCYYf7c5c9ctwq7Kk0BBymOipUf9mjkW6lcg9wJh8t4ORodMHurN2jlp/Y=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3549.namprd12.prod.outlook.com (2603:10b6:208:107::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Wed, 9 Dec
 2020 19:03:00 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8113:aeeb:5692:be75%3]) with mapi id 15.20.3632.021; Wed, 9 Dec 2020
 19:03:00 +0000
To: Michael Dickens <michael.dickens@ettus.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 SFP speed/duplex question
Thread-Index: AQHWzjdYkQbImk7s40O1bTxyTcfDqanu7n0AgAADoKWAAB/6AIAADU02
Date: Wed, 9 Dec 2020 19:03:00 +0000
Message-ID: <MN2PR12MB33129BC6FB4562E21995BBAFB8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
 <MN2PR12MB33127F18BD732EBE83E306A2B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>,
 <CAGNhwTN9TB7-1Qrh6YWiA1K+V6sGt44SCfdEZE_K2Efr76HC+Q@mail.gmail.com>
In-Reply-To: <CAGNhwTN9TB7-1Qrh6YWiA1K+V6sGt44SCfdEZE_K2Efr76HC+Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69f57e85-0435-46a6-f311-08d89c750c6d
x-ms-traffictypediagnostic: MN2PR12MB3549:
x-microsoft-antispam-prvs: <MN2PR12MB354919CAFCFB09D37CE682B4B8CC0@MN2PR12MB3549.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GoHkzygwm9TlkCU63DclTkiwc09V/j+Ca7PGrdVlK17gzoThBtjG4Om8kyjrytkeEFCDQlqcM7OzcBN9aS0DF/3vsg6JgY8pEwt44ICxSCAnqgvFH78vaTepfWwMQTxMZz6SWKCyuoaWq3DvAW8IY7l6hkPghwb2AraY7Cwd06aqknrtMXzXnKxHienOq+CnoKhFEZwn7D43Pw/Z3FAej66sNmkT5ScoAyIoZkEqUv3eX3j+5tC741SpRfACzSf0kLOaH1+C4l0Tk/Jp/2O3Cg8syBkw1/DgL/WWMptSQB1EeKhU7NHRTPuGnksCfUn5CDA/0lYkTWA2bElgKW8l5yswH3cDiicuz44yigj0M9lHFM31+C54sF57ok6StzuR5SynsPJxtegJLgj9AsSa9A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(366004)(136003)(71200400001)(66476007)(55016002)(66946007)(5660300002)(4326008)(7696005)(19627405001)(83380400001)(66446008)(76116006)(186003)(6916009)(6506007)(966005)(66574015)(86362001)(166002)(8936002)(26005)(33656002)(8676002)(2906002)(9686003)(64756008)(53546011)(52536014)(508600001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?8yZDhda/NnNrMGG2iAZK2rjwWDXD7pGqQPTV2OY5QqSa5Ci0wpyjraSN9w?=
 =?iso-8859-1?Q?3945i437r/w6rm/MheXVOUrCJmS2BjC6b6aKFrxFYhOLv4/ZL5BMOHAgd5?=
 =?iso-8859-1?Q?Te/MhV0+fNzYgmmjV23Chu750kHzq9KH4rOrekl5JiXsFbi+0uoYz0HkH1?=
 =?iso-8859-1?Q?MObRjYQv0YoBRH+y8quG+DNqqBfTJlLytUhNJa1UJQlfBRjAYzT3MMeYH/?=
 =?iso-8859-1?Q?fzcGf7pnMNhY9WOsFO8/Q8rc8/duRKIB37Nj1t+2D3Ol5Ly4WtmcZQhP55?=
 =?iso-8859-1?Q?z0I/KX+6RcnKU9WwIj6as8xnh+pSjWEAaHM1epVLrPS8PCoaMBvrCDqybz?=
 =?iso-8859-1?Q?lJ++8dlDMC05SiBP+H2sn7uwwfgCk2dXfT/8T8+ZhuXdwkj19MfqvuAv5a?=
 =?iso-8859-1?Q?CHByySXDzcD3CZWNIwSXADZyA0zJ6tGVufIV2Sf2l5Yyq8DNVbdEBuX2iz?=
 =?iso-8859-1?Q?FQubKbtDYWyjmF+OpsDZr+jchI/fpfsubtQA5Eqt8C8tF6oT8+Olpc9/z2?=
 =?iso-8859-1?Q?atm6b4JlurJpElsI3aQ5nQWThDdB7ocCH7q2dsb2+/V58jovSJDQLfRShX?=
 =?iso-8859-1?Q?qR2DuPxZZToJN/47GGDODyxlFuBz37Exr5HGng8dbfI6XC7mzdZeGvedD6?=
 =?iso-8859-1?Q?SXVgH2N1Hm/pnISAaH9M8ZMjsrWPUHnVVJWNS05LXeHXOAsvE0SzNIkatV?=
 =?iso-8859-1?Q?Ovz+bZFVCMpcaxv6bfEMR1qdxUa3XJqwhtCC65xR+mobkIxZfAIJMDK2S9?=
 =?iso-8859-1?Q?j8TVRmRRCMUUXwdqOAz3QIx8MENOQ2yDumDHYjyitMxnVdwF/JXp3mQn1w?=
 =?iso-8859-1?Q?sPAOr2w/cb50y/KQmVq/R9ctldwVe/O1sz0TMteoZTK3h10tUWgZnd0+kO?=
 =?iso-8859-1?Q?+shXzkk1/uPlcvFkxIGhekU0wbmA72mXwwR98rPJy4gsbSFs2z73u6/KXU?=
 =?iso-8859-1?Q?7C5Z9CXUk0eu2PpeycTjrm7qNXNFHZAX8W/0/N/EK/cHL2ojJZF6MzDaOr?=
 =?iso-8859-1?Q?n1F8z0jhWuAbvS2ZQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69f57e85-0435-46a6-f311-08d89c750c6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 19:03:00.6274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2GSbs823rRRk8lDr5o5EFq4Nty0Oi6thfR0gYMv46EaR/Oafm7G6joe9bBVtkn/03/5NOZ5z7Zi45TaJhYvLZfmdL+hfrlHsGqS3oa4DbjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3549
X-MDID: 1607540583-SsJ7tqPSLqmL
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
Content-Type: multipart/mixed; boundary="===============2972889960818372812=="
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

--===============2972889960818372812==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33129BC6FB4562E21995BBAFB8CC0MN2PR12MB3312namp_"

--_000_MN2PR12MB33129BC6FB4562E21995BBAFB8CC0MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_MN2PR12MB33129BC6FB4562E21995BBAFB8CC0MN2PR12MB3312namp_
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
Thanks again for the response and information. I'm seeing pretty much what =
you are. If I make a gnuradio flowgraph with a UHD:Usrp_Source connected to=
 a Null_Sink, I can set the sample rate to 4MHz without overflows. With a s=
ample rate of 5MHz, I see &quot;OOOOO&quot;
 repeating in the console. So the maximum throughput I am seeing is about 3=
2*4MHz =3D 128Mbps. As you said, it is definitely higher than the 10Mbps re=
ported by ethtool, but not as high as I need. Unfortunately, I don't have a=
 10Gbit interface available.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I started out with the SFP connected to a switch, through our company's net=
work, and to my development machine. I thought maybe the extra infrastructu=
re was the issue, even though an iperf throughput test (from the management=
 port to my computer) showed about
 480Mbps. I assumed the SFP port to my computer would allow for a similar t=
hroughput through the network. Anyhow, I ended up hooking the SFP directly =
to a 1gbps Ethernet port on my computer (taking the switch and network out =
of the loop). This made no difference
 in the throughput I can achieve. It's still a little over 100Mbps.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If you have any ideas what the throughput issue could be, I would greatly a=
ppreciate it. We really need to run at higher sample rates than I'm current=
ly able to do.</div>
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
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Dec 9, 2020 at 11:25 AM Jim=
 Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@gardettoe=
ngineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
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
<div id=3D"x_gmail-m_-703746577162683608appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-703746577162683608divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" ta=
rget=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
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
</body>
</html>

--_000_MN2PR12MB33129BC6FB4562E21995BBAFB8CC0MN2PR12MB3312namp_--


--===============2972889960818372812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2972889960818372812==--

