Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE038D791
	for <lists+usrp-users@lfdr.de>; Sat, 22 May 2021 23:47:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C81CF3851E0
	for <lists+usrp-users@lfdr.de>; Sat, 22 May 2021 17:47:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="Eo+LVT61";
	dkim-atps=neutral
Received: from smtpvbsrv1.mitre.org (smtpvbsrv1.mitre.org [198.49.146.234])
	by mm2.emwd.com (Postfix) with ESMTPS id B811F3839D4
	for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 17:46:08 -0400 (EDT)
Received: from smtpvbsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id 5DF3042E009
	for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 17:46:08 -0400 (EDT)
Received: from smtprhbv1.mitre.org (unknown [10.20.0.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpvbsrv1.mitre.org (Postfix) with ESMTPS id 3057842E007
	for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 17:46:08 -0400 (EDT)
Received: from mbfesmtp-mgt.mitre.org (unknown [198.49.146.235])
	by smtprhbv1.mitre.org (Postfix) with ESMTP id 2095E80AF20
	for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 17:46:08 -0400 (EDT)
Received: by mbfesmtp-mgt.mitre.org (Postfix, from userid 600)
	id 4FncVS0r9Cz3D49Q; Sat, 22 May 2021 21:37:00 +0000 (UTC)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2105.outbound.protection.outlook.com [104.47.65.105])
	by mbfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 4FncHr5GYfz3D47S
	for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 21:36:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=URTdLx9z2qpstcR7/1RICQznnZj22U0OgN8TSLnRoUhgpT5liysg3f3a7z78p+WZBV4JEffSDKSIRgIGG0w8w1Hp2El02lNcbdn8l5g5Xps1C88qeVxXE2oHfxAWELdFbi9liMogkGBtPrQ1b8gSXGlxkrxNHnC6nG+X0p6CRNzODGCyQ1WIbE3VIBVTP2QLNFAdnjlNnCUKPP0IBdbwY+2nvbdXW4C/mqf3qgbP7SDfyfCDkqdU+gEQOfbBlfPzI+miVtn8SsOBNbH64EWpxKjA3nOMOK6z9PO2uaeR1AyxFrVCct6P5Gxcc7S+FYBvlZxSIzzb4uO4J0zoNLxdWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OHr2vZU5uFJd46uClQ+WobOPhZj99bNIhYUxgB/UXt8=;
 b=ISiykXB34Ge8nOQ3zQDy3Jeo9DPLInNfnVN49nvbvI8mGQFI+Y9pjSmn1/cfKosVFnHtJcj1m+JJwDUdHNCJpVo8s2UQocmFDihLnumsVzrpjTITg/XswkI0wmyD92eyQncvULwU1AiwLu7Vfx+VldaYfxfEzgSLFTemPbx7k2pZZbhKEZ0kVpMwWTNAVNgWqw/cOmLnfmdvwaHNA3GmMzTIMCamKRXFBI46/KBjVahWQcvOiTe5OMLeV8H6iSk7JNXKIIyvKa2CyTLfOT9BbIupF4n1bRv+ZlCrkUkTNom2AV62FqRdwKTjmN4izBJzD5mv4MoDUQ5lY94qiDIlxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BLAPR09MB6612.namprd09.prod.outlook.com (2603:10b6:208:2ae::11)
 by MN2PR09MB4857.namprd09.prod.outlook.com (2603:10b6:208:21d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Sat, 22 May
 2021 21:36:53 +0000
Received: from BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::74aa:989a:11f3:84e]) by BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::74aa:989a:11f3:84e%3]) with mapi id 15.20.4150.026; Sat, 22 May 2021
 21:36:53 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Time base error
Thread-Index: AQHXT1KUzD7NXmqWw0qznFNuZxdGBA==
Date: Sat, 22 May 2021 21:36:53 +0000
Message-ID: 
 <BLAPR09MB661241232D0B9E777670F977D9289@BLAPR09MB6612.namprd09.prod.outlook.com>
References: 
 <21645_1621719161_60A97879_21645_2022_1_CAK6apsPDs_9FnES40RDw8qin4wDu_OHZYQebu=o0oKK2k_k8qg@mail.gmail.com>
In-Reply-To: 
 <21645_1621719161_60A97879_21645_2022_1_CAK6apsPDs_9FnES40RDw8qin4wDu_OHZYQebu=o0oKK2k_k8qg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=mitre.org;
x-originating-ip: [173.76.111.112]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbc72f01-1dcc-4c54-8a2d-08d91d69b73d
x-ms-traffictypediagnostic: MN2PR09MB4857:
x-microsoft-antispam-prvs: 
 <MN2PR09MB4857F95C9B70A6F6EC2D5C91D9289@MN2PR09MB4857.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hC7ovxT4kuF4Msgs7CiCkDVSUh1QdmbyoFyrulo8dUnu0pzGF1UKsZelb0nytxU4waoW5i5OfysSY+HKrqeFtnsrmKrAHinbNBTz4GsH4BwYevB6kD0doWlEt8Hs5by4zR/u94XvTrn5G5bZhojRZurHbc6FSSb+fQ2+jeBsKVEtfq/mJM5iOHAQegRaI2BSfn0hrpODWYUfjwK3p6Ji2q87uUdR5yL6qa7J0Y8VU0o9StuXNS47NHU91bUuKz/FKLGJn5M/XKe8FbxyG6UwgNB98kG0R/hWKqWE92oZrc7RhTZZv4PyM4uGLkR9B2nO+Pp8tWpCLJda1DQoefqFukVc4Vi5F1ThcDp2KEIGaH7Emu8f9zBUBgeYdVfa7SHlvgeui0vB1g9TE0+eV42KiQ5VX98FGfZEekfVMKU8dJDWDFaOJRWylNt8JsuYJIKMp56PtdEju7CH/KXuqHYfs4j9uKuVhsG7OF6YssK/8nIO5qY/I1dFfKoSodnXYPCqxJOBuL7pXIgFRlvMC/tQa6bcfjoWnkNO/ucaYHwE5zfVvbPBNS4NhM29t5CMD/oFVv33HjEttI+werae6LmjUVRO0XJM0kkUJ0gk0zJF5sfYazULnjz5nvXxzPrWUf1ofnWV8YqwskhyBZW+GT+3IU9Bz7j+B5jqlN0MrvcKhMGPhHXY1sAp0dRDZ8Bo+qYD5slWzBWXDLessfpDGfJjZO5A9USO8CBwWhXUq+UGCtM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR09MB6612.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(376002)(136003)(39850400004)(346002)(366004)(66476007)(52536014)(66556008)(66946007)(122000001)(38100700002)(9686003)(86362001)(6506007)(5660300002)(26005)(55016002)(186003)(76116006)(166002)(2906002)(8936002)(3480700007)(7116003)(66446008)(478600001)(6916009)(64756008)(33656002)(71200400001)(7696005)(8676002)(83380400001)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?kC//yIkJwBBQ41xpHGOyFJ2F+y2sfjRJOBq4m/AgxHyzQcEEbkotMGNKoe0j?=
 =?us-ascii?Q?BWNA0yW0LADNhQGquDmM4v3a5m1q3uagUY4S/aQqzSUzmDewdbRYCBtwKFZK?=
 =?us-ascii?Q?xj6ORsJhBA3nI4qDi+zxxVxUDzUmNWFqOuRl9/DuzBxlkX9NY+ECz+BGEscs?=
 =?us-ascii?Q?cjovvK+ydpvEsAtqQgoCAu2UWy6VkYLfmXP2o/EQ52zEuVm7TkLMzykQ7lEs?=
 =?us-ascii?Q?QNpH5UH5YOcLG98k3I3dFYi8hEdtwPnVCVDuz7w4mcPOaAcZ8zNGoCkGr7x1?=
 =?us-ascii?Q?KtAC2Ow8bOE8JJ5nXyv0Me4OBgE6IhDJ7TlSS/+UUEY8gzpy+YfUOTeBN0ns?=
 =?us-ascii?Q?yshoxbY53gv7vbZkFlXxCfouuLGaKtECYAAu/GiHXHlNC7wkMqpymPW4oh0/?=
 =?us-ascii?Q?VE087ARMT4L/oYEG0iBW+hfQLnH8kGUcrifHBQYdhAqWGcIS8eqgmTaMXxNf?=
 =?us-ascii?Q?hKjgQtPRRZM6E7Jnuw2DhsVSAPRtXSbB3/4UwrWPi36op5+QcIQCC+aL4Hk/?=
 =?us-ascii?Q?oJpg4E2hxCWF4y856MrbPtIrSALGnE301frARTo9YMFqvUF+RV5d9lxKUKgM?=
 =?us-ascii?Q?4TD0EM4j2FpWYhsk0xbuhHMc3GpV6R3Xks6YoWqlqWRrVURJMB722oXBwmZX?=
 =?us-ascii?Q?U5XAURSSXTIS/RjejnpsCFEAGZOL/hi/8jG04MSf+PxvZBd+D0jro7EM/NEX?=
 =?us-ascii?Q?Ce8iE6XABpDXQ4Pu1529z5puCXXb3PhwtaPIqy3kLtqV3zxgQnJ0NHMjafQt?=
 =?us-ascii?Q?1KobPdnwqrv3ggMd7BjOt5j75+LYhT6Q/MJAU2asF69v9MljIT77tzc32rNo?=
 =?us-ascii?Q?tPXtaxyvm62vgdanD0WKdcJODvp7085Z8UOMhNbicojvdQbQaEUD10gwCG5C?=
 =?us-ascii?Q?klV1MxFsr0GFT08UmTRb30QdDmfqJvTLUunIF+k7MxfFPL5Sh98Fgrc7HszD?=
 =?us-ascii?Q?AI1ygElx4epcsaoN1O4KEszNlxWym0YTxdSqXBhDfKCyZAVPpjTH4w5zYnmc?=
 =?us-ascii?Q?3Dcl8soAJQrBbnq9VRWhq6ich7LeZ3/6J3svcYlwlv08YGtGnd2v4y8diLWR?=
 =?us-ascii?Q?n/VeRdxy/jGAaZxTvP4iU4XB1bn7azWIxKlSS5OW8YE5/St5ALIL6wFnrmQK?=
 =?us-ascii?Q?x38/IKNqLDaRz0yxfJvhm3nGbzauOW8sKhpqcNUwBan8QW9/H/StLTEgkMP3?=
 =?us-ascii?Q?5uLmNxvrvZyjIy9+LveW3NGU4GW8u9agOk9ZZA94Qz1W/VaQxdin+aq7AtC2?=
 =?us-ascii?Q?dpkd0OFpfWNOm5j47c2VMl7/0hnu0lxSicF0lbOKSCA3bdDKOdVnR7hlpdYT?=
 =?us-ascii?Q?sIJJsig0SNCWOk6sC5Xy4gEHGqNoNWIPaxcNd6W0b/LAqQ=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR09MB6612.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbc72f01-1dcc-4c54-8a2d-08d91d69b73d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2021 21:36:53.0948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4857
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=BTxNELhf; bh=OHr2vZU5uFJd46uClQ+WobOPhZj99bNIhYUxgB/UXt8=; b=Eo+LVT617R/Q0HUh5xCBwcM7pmzJ4aAMw3KtH2YUhWRYLMEMxevfb2EfVDhRYOcdgDyqxzstwgWvi9etQIRX1F7XyfJZHsCdcurlsmhTPD2pys2w5/uAWCo5Fkjmt6XuRa7trbqYn8kVQAUvxQiYZI8UAKITXl/X9e5fRzcNmhQ=
Message-ID-Hash: HPGHHLHK3U2GSKV5MDVUPD46BVIECZB6
X-Message-ID-Hash: HPGHHLHK3U2GSKV5MDVUPD46BVIECZB6
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Time base error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFJHX5E4DRLXSCJV7SA2M33RWJVOC655/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7867452186839686047=="

--===============7867452186839686047==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLAPR09MB661241232D0B9E777670F977D9289BLAPR09MB6612namp_"

--_000_BLAPR09MB661241232D0B9E777670F977D9289BLAPR09MB6612namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am getting some weird error about a invalid time base clock name after st=
arting to create my own block. I did not see this just doing the simple pas=
s thru RFnoc example. What would this mean?

Thanks
Jeff

<https://aka.ms/o0ukef>


jplong@mm241897-pc:~/proj/ettus_e320/rfnoc-example/build/apps$ ./txcore_blo=
ck
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xb16, 0xffff
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xde30, 0xffff

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-122-g7=
5f2ba94
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.30.5,type=3De3xx,product=3De320,serial=3D31DCD15,claimed=3DFalse,add=
r=3D192.168.10.5
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.30.5,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[ERROR] [MPMD::MB_IFACE] Invalid timebase clock name:
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: LookupErr=
or: KeyError: [MPMD_MB::IFACE] Invalid timebase clock name:
Error: RuntimeError: Failure to create rfnoc_graph.

--_000_BLAPR09MB661241232D0B9E777670F977D9289BLAPR09MB6612namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>I am getting some weird error about a invalid time base clock name aft=
er starting to create my own block. I did not see this just doing the simpl=
e pass thru RFnoc example. What would this mean?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks</div>
<div dir=3D"ltr">Jeff</div>
<div><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr"><a href=3D"https://aka.=
ms/o0ukef"></a></div>
</div>
<div id=3D"id-531e83e2-f623-4c10-a416-a48fca500fd1" class=3D"ms-outlook-mob=
ile-reference-message">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
r>
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3Dutf-8">
<div dir=3D"ltr">jplong@mm241897-pc:~/proj/ettus_e320/rfnoc-example/build/a=
pps$ ./txcore_block
<br>
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xb16, 0xffff<br>
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xde30, 0xffff<br>
<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-122-g7=
5f2ba94<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.30.5,type=3De3xx,product=3De320,serial=3D31DCD15,claimed=3DFalse,add=
r=3D192.168.10.5<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.30.5,product=3De320'.<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[ERROR] [MPMD::MB_IFACE] Invalid timebase clock name: <br>
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: LookupErr=
or: KeyError: [MPMD_MB::IFACE] Invalid timebase clock name:
<br>
Error: RuntimeError: Failure to create rfnoc_graph.<br>
</div>
</div>
</div>
</body>
</html>

--_000_BLAPR09MB661241232D0B9E777670F977D9289BLAPR09MB6612namp_--

--===============7867452186839686047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7867452186839686047==--
