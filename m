Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C425B4AC3D2
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 16:39:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F177385124
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 10:39:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="orWLz8x4";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B0B5385170
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 10:38:09 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.133])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 3F07E2600A4;
	Mon,  7 Feb 2022 15:37:23 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2176.outbound.protection.outlook.com [104.47.56.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 71E36B001DA;
	Mon,  7 Feb 2022 15:37:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J8ALk+2EzaAzeMAKs96Kpnb5w4R/bYGGY5pL/+B4NccPI8Yudc7A7QZO5E5s6mGwnEDYre7aVsEWwj/yjdweZkqzgqJkFbsZ1NXNOHQu6epo2vxJtWcZcqNyPsSmCVc29b2Kz//VRo8P4ffOldMB1JQWhAeSNdXUPXMhl/KOGV0XjT2S4KHlMahvEJ2uHcG7Vcu/8NNEo9ioy5BSRZswyoCxEGjs8UnYkSSiVotTlJf+eMdVo2Zh75fnnEP/v0Rp4k2ClAemAs62BTmXGDxmXRKg6L5bMAWCsVJIP5EaYFBgn7O6HkuGvr7lrCD4bDhELejaF22GtXjxYPvLH+ip6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlam70jyTSeCCyCLqZBKWMD0LCc0ck8IYL5pEaIceBM=;
 b=d2GEGufPUREZNqWl0/1UUElk3sWJns7OZcNc8rzaU9zin3l7JAHzWf2KLfy7xm5j1xGzFvcu315LjcAusOn9+mKOSNdHSXhXzYu0c57foLDZ0nrp+VD+w+I5wxKAQH/lqa+F/idfklnQjw0aCSmcflWTIJGGUJhUe+hJM1RVf+nNdAMh578Ysn6N6cqfIYCef1Mop01GolAVIXVOn0tax7bNg2/ewI7IHKIymXpt38+Po4f/VRhpRHflmtMIQqdOFVQ2+Rx65LhJX+3Ps802+xp+5+0dVEge5QIssRXqX7zuyMUKuIpKtfiAVeZvGGGymO6xlTjsA8uAOQuwO4PiFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlam70jyTSeCCyCLqZBKWMD0LCc0ck8IYL5pEaIceBM=;
 b=orWLz8x4J3oa+RU9s+c2K1894bKzyf88sMjlq+ueVwZISEWCTSYJVJ0vH74zdTRq3Oos4LsuzO2hceGKaXSXWcvkscH1dUqmAg/vQ2zgpY9W3fEmtHaTYU+vRwtebYxwCURcjmQLmNYLlIXyj/xbu25dXYWwiE2WqJPHlON46+A=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by CY4PR12MB1622.namprd12.prod.outlook.com (2603:10b6:910:f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Mon, 7 Feb
 2022 15:37:06 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 15:37:06 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: Dustin Widmann <dw2zq@virginia.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: AQHYHDfLsfSpNdA08kKOirsB5QNsAw==
Date: Mon, 7 Feb 2022 15:37:06 +0000
Message-ID: 
 <MN2PR12MB33128DBAE432D3F74D996B4DB82C9@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ee9aced-cbe4-4ad5-e16e-08d9ea4fb258
x-ms-traffictypediagnostic: CY4PR12MB1622:EE_
x-microsoft-antispam-prvs: 
 <CY4PR12MB1622EDF9AF5B7484B0AD78EBB82C9@CY4PR12MB1622.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pWi+phsowkv5Igt9LCBovbWRYowXdy+6iUxDFVU64XWnVu/DyE6cWE9Uqnp4fo5YUhLdDY/kgYQI6FgAN3BqGv2EAIUWYOT5W50iMUPqnfaIP0HUzmY1b8+2wzKcD8VWBNOXMmNacYH2w80zzjy3fsAmFO/Bz6mw2NF5asv57yCi+d0GJr6VNdL6pArabENVr8dxxz0sAYCkmtNIhNbueUrlekwXsJhf2/1OsIA0IKms1e8wo6KftbyyFXk9rgtF/NLO+yrcPwmrq3I7RcBmlgmHbln32H6LnUN+826I5nCttbjA5hiT9CZQBdPh1PXSpzXiOdqTBIa58xnYLWnob07JAzWwwV31JlBoDCulU4H1mUVav7M8l6D1uOss19Ls3Hs5fDWEzpeligf9m37+Vx6VrePIKH6TItfR0sQw3ZFUiwC+XZmSvSivkv+lfoYsogSIIKjXLXMb8ZX2ZlbDjZF79wfe+tb9VuJcEPfCKidV/6No/5uZvgOfyvpmIrGdrLOvrWvN1zEgCNj7FVcOL0K0A+8QggoXozAgZIx8hHi8IQB8GxsUhjTl2cN/3++ajjVN8wDWqgIsB/DoYOpoc7k4Hp4Qc+vmLSv6u9mhiOB8kioN7xHVXuzQ1wvQuCzCXylL6/Sbn9b+dmNINsHLJ+nHCFJ10GLwTX0leOFmQ22Rukg2VCCnjIEEIJzHVAwb+8ebTuC36mS3nhRVLyXH+Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(39830400003)(346002)(366004)(396003)(136003)(66476007)(8676002)(186003)(26005)(66446008)(83380400001)(5660300002)(86362001)(64756008)(52536014)(76116006)(66946007)(19627405001)(8936002)(316002)(110136005)(66556008)(55016003)(7696005)(6506007)(38070700005)(122000001)(2906002)(9686003)(71200400001)(508600001)(38100700002)(33656002)(53546011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?SvQ3Ng9WnSQEEVfB3DU2+xaob8GCynN8IMWLs8YzzUzF+FjIhWgLWp4L0U?=
 =?iso-8859-1?Q?IuNFi27sKV0zSMDm13nXXrJrpuqJimARZ1tQAXlsUTNORp4aY/AQrMLXv3?=
 =?iso-8859-1?Q?Y3CGYhi2txEgeUEb/TKJQ6LzWkQ4QqEMXTeooUd3Ch6FTVLhriESVJIA9x?=
 =?iso-8859-1?Q?iXTSGM5VgCdWHeKK5Pua1MF/Ebxc2HeoryaRTuinQ0XzC8mqXfhYEMMPkE?=
 =?iso-8859-1?Q?7c7wSvHb1N8SosxXEisnXN4z7sdozTD/2vedZESJrFDOm1ooSpVTi3p2KB?=
 =?iso-8859-1?Q?unUKBhl2n3Zq4MTnUfzzuFrCcJEf9yjf5EjJtZZpRU4URuZkz/vlbwy9r+?=
 =?iso-8859-1?Q?F7i68lkUxfRnag7rmOloY+/uPkbJUDDQjQTffZHaHNU9CcJ3rN9h6lWdAB?=
 =?iso-8859-1?Q?c0z1NLdGE0CrEGeSakgzbBiXeuKLUJlvlZipMlSv8c6LnHIErXIrsPemrL?=
 =?iso-8859-1?Q?zmZNiCLJX0LUcDef9aBh38xLM+fktwfDOK8RnF3497ZeKm+xMs8zPN+yUN?=
 =?iso-8859-1?Q?iY0pEhypXv2hOEKzpK5MyzmuVR5TdJip9L2oXNiPAtgAdn/xXPWUztFXQL?=
 =?iso-8859-1?Q?3b1QPmTyQ8gjrdrfaZCo7bWsCT74ZkIjRZCBKeSOQ2pCAT1s1DylIKiJxq?=
 =?iso-8859-1?Q?7DWcaOazqkW2JTmIDT+KnDfemS7vh9z8/30Z/3oJ9VUrSS+xMvmWsgXkcZ?=
 =?iso-8859-1?Q?2MVbQL/1C/cWvW0HvO7maZCdJNXvGxBC7pPHHzbw7jUVivds1VOHUDCwPY?=
 =?iso-8859-1?Q?AuoUna9eao+sqV/CPnKmvQb7oSS3a6yS08Xe1uSxbyF3g/HoJON2szysZC?=
 =?iso-8859-1?Q?+iW2tEQeTI/8zaF/2rMdZhe77ocB84VObAllVDeIFKy6qDM1evLvmsWAof?=
 =?iso-8859-1?Q?iRAiFVSq8038+Lz/MAhvClwVUjaYKM4sLZyQmPAIZ4DEJaO3VdW/3C2KXI?=
 =?iso-8859-1?Q?D1/eCUMxe30TnjYw0S6YmVMBXVqq07jsEiYf0jHiGre2ZsTexcp6bCaO7K?=
 =?iso-8859-1?Q?WN5BP86SEutwEmbUKcoshmcBz6ajGAPCUavCeRb+X0IDpPZLH+nHehQgJn?=
 =?iso-8859-1?Q?YFJL0Tzx/7uu55w4OetIwJbgDEu+ZFW0xyBUEigEj+b/gsW0wNNXXr2M9+?=
 =?iso-8859-1?Q?T15qnZSiMdC9ER/81cQ6f7IyRAjfYtL48ZtjxH/XpfCoriq0SXEmnqGtLI?=
 =?iso-8859-1?Q?tHsxzFx5UO1RX+jndEXF/jXeSZzzW/BPbBUMcOds3yhg7S4YCQm2S8dBUh?=
 =?iso-8859-1?Q?oCDHNLoWjUcCXriZOx0VP2Tu2sMYffubwF2NuuEHE/dwj1PisbZvPxXE7l?=
 =?iso-8859-1?Q?ljPS+xmg8a+aRiCYVpr9Y9+ll2ryfBtB5M5SCmrrh0cnS4ALENjBmkfbWn?=
 =?iso-8859-1?Q?i8Zof+Xn1yCnSoGc/dMm1RjeRpm1qrUu+zzCvKV7FMqhvRlRc53+MJQ3aO?=
 =?iso-8859-1?Q?+0X8LWNbGx6WzbPSUPrDyou0dkObuaFa/d/iECL8OTDgb1rHdDr8Q+UOSg?=
 =?iso-8859-1?Q?zBzrU8/MwnnUNOdDdfOHayzrnjY1fq9Zdp3TyVKiZDgk6yA5Uhdeyofv67?=
 =?iso-8859-1?Q?f6KEJ3XuQvuRQMW+PEXZPtpLPhhzeooyCwkvLiCo8wYBG3vTprT8zpPH4z?=
 =?iso-8859-1?Q?59tgxRtxm3nyLNTKb2DqAJ32X9mEaGDosrDxVV3Wum7e0he70k3RjPGVzj?=
 =?iso-8859-1?Q?U5hP5Grwu+SQ9lDXFjvKuw+5Pj1jH0r2VH+NWjQ4k7Y5TpaB31NQ7DxO2Z?=
 =?iso-8859-1?Q?UjxA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee9aced-cbe4-4ad5-e16e-08d9ea4fb258
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 15:37:06.3090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPsnPbGaKBmbVcJyjkHHdNujFssh5ANHERK4IrFCg3g3sxW9CqtX/tqZ/Gz255M0fjxbQWw/Huzx1N3U+P2AUN0neq5PErXZCdau6EBwg0A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1622
X-MDID: 1644248254-WY9pJkFK-LP2
Message-ID-Hash: P5T5Q4QTJRET4V3HFTZJLDGGQXY3UAAC
X-Message-ID-Hash: P5T5Q4QTJRET4V3HFTZJLDGGQXY3UAAC
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZABCTSOTV3P2HC3XFTMF5PWFQJYBXH3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1355099222921327184=="

--===============1355099222921327184==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33128DBAE432D3F74D996B4DB82C9MN2PR12MB3312namp_"

--_000_MN2PR12MB33128DBAE432D3F74D996B4DB82C9MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Dustin and David -- that is good info regarding UHD versions that wo=
rked or didn't work with the test_timed_commands example application.

David, I'm not sure of the answer to your question regarding get_time_now()=
 and blocking . . . now that you got me thinking about it, I'm a little con=
fused by that, too. But I'm confident that the set_rx_freq() commands are n=
ot working in my own test code either. In that case, the response isn't an =
issue -- I can see that the LO gets tuned immediately when I call set_rx_fr=
eq() -- not at the time I specify with set_time_command().

Thanks,
Jim



________________________________
From: Dustin Widmann
Sent: Friday, February 4, 2022 1:23 PM
To: Jim Palladino; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: Timed Commands Not Working


For reference, I've done it over again with the latest commits from the UHD=
-4.0  and UHD-3.15.LTS branches.


Creating the usrp device with: ...
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_4.0.0.0-240-gb=
38c9d83
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 1060.659100 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 249431.750000 us
 Response 1: 250515.950000 us
 Response 2: 251521.850000 us
 Difference of response time 1: -98915.800000 us
 Difference of response time 2: -197909.900000 us
 Difference between actual and expected time delta: -98994.100000 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.359452 frac secs
 Stream time was: 0 full secs, 0.359452 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!


Creating the usrp device with: ...
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_3.15.0.0-74-ge=
35f66e8
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 0
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 0
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 60.434350 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 1848964.600000 us
 Response 1: 1948964.655000 us
 Response 2: 2048964.655000 us
 Difference of response time 1: 0.055000 us
 Difference of response time 2: 0.055000 us
 Difference between actual and expected time delta: 0.000000 us

About to start streaming using timed command:
 Received packet: 100 samples, 2 full secs, 0.155770 frac secs
 Stream time was: 2 full secs, 0.155770 frac secs
 Difference between stream time and first packet: 0.005000 us

Done!



--


This is pretty concerning, looks like the latest commit of the UHD-4.0 bran=
ch has this broken as well? Timed commands at least used to work in UHD 4.0=
, but I hadn't tried in a while, and never with this nifty test program. I'=
m going to have to see if I can find where the breakage occurred, so I can =
roll back for the time being.


-Dustin


On 2/4/22 11:23, Jim Palladino wrote:
Dustin,

Thank you for running that. So apparently, it isn't just an issue on my end=
.

Thanks,
Jim

________________________________
From: Dustin Widmann <dw2zq@virginia.edu><mailto:dw2zq@virginia.edu>
Sent: Friday, February 4, 2022 11:16 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timed Commands Not Working


"Hopefully, someone can try the uhd "test_timed_commands" example in 4.1 to=
..."


Figure I ought to be about as good as the next somebody.

test_timed_commands output with UHD 4.1.0 and an X310

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800; UHD_4.1.0.HEAD-0-=
g6bd0be9c
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 1079.015300 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 253256.340000 us
 Response 1: 254437.230000 us
 Response 2: 255676.840000 us
 Difference of response time 1: -98819.110000 us
 Difference of response time 2: -197579.500000 us
 Difference between actual and expected time delta: -98760.390000 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.365935 frac secs
 Stream time was: 0 full secs, 0.365935 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!

-Dustin


On 2/3/22 08:02, Jim Palladino wrote:
Thanks, Rob. I always appreciate when you "chime in". Hopefully, someone ca=
n try the uhd "test_timed_commands" example in 4.1 to help confirm whether =
or not it's a problem with something on my end or with UHD. Marcus already =
confirmed its working for him with an N310 and UHD 3.15.

Thanks,
Jim

________________________________
From: Rob Kossler <rkossler@nd.edu><mailto:rkossler@nd.edu>
Sent: Wednesday, February 2, 2022 3:26 PM
To: Jim Palladino <jim@gardettoengineering.com><mailto:jim@gardettoengineer=
ing.com>
Cc: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.co=
m>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Hi Jim,
This sounds like a pretty big issue. I haven't chimed in because I couldn't=
 say for sure if timed commands were working for me or not in UHD 4.1. I am=
 using N321s with shared LO, so the normal commands I use for setting frequ=
ency aren't critical (from a timed command perspective) except for how the =
DDC/DUC might be handling them. In any case, once you find out the issue, c=
ould you please share the solution here. If I get a chance, I will try this=
 on some of my devices.
Rob

On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino <jim@gardettoengineering.com<=
mailto:jim@gardettoengineering.com>> wrote:
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, February 2, 2022 10:44 AM
To: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com=
>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Correct -- I am using the stock FPGA image for the E320 and the N320.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, February 2, 2022 10:39 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <us=
rp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 10:21, Jim Palladino wrote:
Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________

Just to clarify--this is with the stock FPGA image, correct?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_MN2PR12MB33128DBAE432D3F74D996B4DB82C9MN2PR12MB3312namp_
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
Thanks Dustin and David -- that is good info regarding UHD versions that wo=
rked or didn't work with the test_timed_commands example application.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
David, I'm not sure of the answer to your question regarding get_time_now()=
 and blocking . . . now that you got me thinking about it, I'm a little con=
fused by that, too. But I'm confident that the set_rx_freq() commands are n=
ot working in my own test code either.
 In that case, the response isn't an issue -- I can see that the LO gets tu=
ned immediately when I call set_rx_freq() -- not at the time I specify with=
 set_time_command().</div>
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
<div>
<div><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0);">
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%;">
<b>From:</b> Dustin Widmann<br>
<b>Sent:</b> Friday, February 4, 2022 1:23 PM<br>
<b>To:</b> Jim Palladino; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working
<div><br>
</div>
</div>
<div class=3D"rps_fb58">
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
For reference, I've done it over again with the latest commits from the UHD=
-4.0&nbsp; and UHD-3.15.LTS branches.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_4.0.0.0-240-gb=
38c9d83<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 1<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 1<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 1060.659100 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 249431.750000 us<br>
&nbsp;Response 1: 250515.950000 us<br>
&nbsp;Response 2: 251521.850000 us<br>
&nbsp;Difference of response time 1: -98915.800000 us<br>
&nbsp;Difference of response time 2: -197909.900000 us<br>
&nbsp;Difference between actual and expected time delta: -98994.100000 us<b=
r>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 0 full secs, 0.359452 frac secs<br>
&nbsp;Stream time was: 0 full secs, 0.359452 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.000000 us<br>
<br>
Done!<br>
<br>
<br>
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_3.15.0.0-74-ge=
35f66e8<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [GPS] No GPSDO found<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 60.434350 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 1848964.600000 us<br>
&nbsp;Response 1: 1948964.655000 us<br>
&nbsp;Response 2: 2048964.655000 us<br>
&nbsp;Difference of response time 1: 0.055000 us<br>
&nbsp;Difference of response time 2: 0.055000 us<br>
&nbsp;Difference between actual and expected time delta: 0.000000 us<br>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 2 full secs, 0.155770 frac secs<br>
&nbsp;Stream time was: 2 full secs, 0.155770 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.005000 us<br>
<br>
Done!<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
-- <br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
This is pretty concerning, looks like the latest commit of the UHD-4.0 bran=
ch has this broken as well? Timed commands at least used to work in UHD 4.0=
, but I hadn't tried in a while, and never with this nifty test program. I'=
m going to have to see if I can
 find where the breakage occurred, so I can roll back for the time being. <=
br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
-Dustin<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<div class=3D"x_moz-cite-prefix">On 2/4/22 11:23, Jim Palladino wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Dustin,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you for running that. So apparently, it isn't just an issue on my end=
.</div>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Dustin Widmann
<a href=3D"mailto:dw2zq@virginia.edu" target=3D"_blank" rel=3D"noopener nor=
eferrer" data-auth=3D"NotApplicable" class=3D"x_moz-txt-link-rfc2396E">
&lt;dw2zq@virginia.edu&gt;</a><br>
<b>Sent:</b> Friday, February 4, 2022 11:16 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" class=3D"x_moz-txt-=
link-abbreviated">
usrp-users@lists.ettus.com</a> <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable"=
 class=3D"x_moz-txt-link-rfc2396E">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
&quot;Hopefully, someone can try the uhd &quot;test_timed_commands&quot; ex=
ample in 4.1 to...&quot;</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
Figure I ought to be about as good as the next somebody. <br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
test_timed_commands output with UHD 4.1.0 and an X310</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800; UHD_4.1.0.HEAD-0-=
g6bd0be9c<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 1<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 1<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 1079.015300 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 253256.340000 us<br>
&nbsp;Response 1: 254437.230000 us<br>
&nbsp;Response 2: 255676.840000 us<br>
&nbsp;Difference of response time 1: -98819.110000 us<br>
&nbsp;Difference of response time 2: -197579.500000 us<br>
&nbsp;Difference between actual and expected time delta: -98760.390000 us<b=
r>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 0 full secs, 0.365935 frac secs<br>
&nbsp;Stream time was: 0 full secs, 0.365935 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.000000 us<br>
<br>
Done!<br>
<br>
-Dustin<br>
<br>
</p>
<div class=3D"x_x_moz-cite-prefix">On 2/3/22 08:02, Jim Palladino wrote:<br=
>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks, Rob. I always appreciate when you &quot;chime in&quot;. Hopefully, =
someone can try the uhd &quot;test_timed_commands&quot; example in 4.1 to h=
elp confirm whether or not it's a problem with something on my end or with =
UHD. Marcus already confirmed its working for him with
 an N310 and UHD 3.15.</div>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rob Kossler
<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank" rel=3D"noopener norefe=
rrer" data-auth=3D"NotApplicable" class=3D"x_x_moz-txt-link-rfc2396E">
&lt;rkossler@nd.edu&gt;</a><br>
<b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
<b>To:</b> Jim Palladino <a href=3D"mailto:jim@gardettoengineering.com" tar=
get=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" clas=
s=3D"x_x_moz-txt-link-rfc2396E">
&lt;jim@gardettoengineering.com&gt;</a><br>
<b>Cc:</b> Marcus D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" class=
=3D"x_x_moz-txt-link-rfc2396E">
&lt;patchvonbraun@gmail.com&gt;</a>; <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotAppli=
cable" class=3D"x_x_moz-txt-link-abbreviated x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a> <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable"=
 class=3D"x_x_moz-txt-link-rfc2396E">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim,
<div>This sounds like a pretty big issue. I haven't chimed in because I cou=
ldn't say for sure if timed commands were working for me or not in UHD 4.1.=
 I am using N321s with shared LO, so the normal commands I use for setting =
frequency aren't critical (from
 a timed command perspective) except for how the DDC/DUC might be handling =
them. In any case, once you find out the issue, could you please share the =
solution here. If I get a chance, I will try this on some of my devices.</d=
iv>
<div>Rob</div>
</div>
<br>
<div class=3D"x_x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_x_gmail_attr">On Wed, Feb 2, 2022 at 12:22 PM=
 Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com" target=3D=
"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" class=3D"x=
_x_moz-txt-link-freetext x_moz-txt-link-freetext">jim@gardettoengineering.c=
om</a>&gt;
 wrote:<br>
</div>
<blockquote class=3D"x_x_x_gmail_quote" style=3D"margin:0px 0px=0A=
                0px 0.8ex; border-left:1px solid rgb(204,204,204); padding-=
left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.=
</div>
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
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_gmail-m_7375824889804353296divRplyFwdMsg" dir=3D"ltr"><fon=
t face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><=
b>From:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com=
" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable"=
 class=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">jim@gardettoen=
gineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" cl=
ass=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">patchvonbraun@gma=
il.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noop=
ener noreferrer" data-auth=3D"NotApplicable" class=3D"x_x_moz-txt-link-free=
text x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplica=
ble" class=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">usrp-users=
@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Correct -- I am using the stock FPGA image for the E320 and the N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jim</div>
<div><br>
</div>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_gmail-m_7375824889804353296x_divRplyFwdMsg" dir=3D"ltr"><f=
ont face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"=
><b>From:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com=
" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable"=
 class=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">patchvonbraun@=
gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" =
class=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">jim@gardettoeng=
ineering.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noop=
ener noreferrer" data-auth=3D"NotApplicable" class=3D"x_x_moz-txt-link-free=
text x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplica=
ble" class=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">usrp-users=
@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I'm =
at a bit of a loss . . .&nbsp;</div>
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
<hr style=3D"display:inline-block; width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" cla=
ss=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotAppl=
icable" class=3D"x_x_moz-txt-link-freetext x_moz-txt-link-freetext">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
<br>
<fieldset class=3D"x_x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_x_moz-quote-pre">__________________________________________=
_____=0A=
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" cla=
ss=3D"x_x_moz-txt-link-abbreviated x_moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a>=0A=
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotAppl=
icable" class=3D"x_x_moz-txt-link-abbreviated x_moz-txt-link-freetext">usrp=
-users-leave@lists.ettus.com</a>=0A=
</pre>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33128DBAE432D3F74D996B4DB82C9MN2PR12MB3312namp_--

--===============1355099222921327184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1355099222921327184==--
