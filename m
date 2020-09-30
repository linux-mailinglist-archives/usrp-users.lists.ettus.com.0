Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8405F27F20F
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 21:00:31 +0200 (CEST)
Received: from [::1] (port=37666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNhL1-0001ts-6n; Wed, 30 Sep 2020 15:00:27 -0400
Received: from mx0b-002cfd01.pphosted.com ([148.163.155.97]:20958)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kNhKx-0001jB-FB
 for usrp-users@lists.ettus.com; Wed, 30 Sep 2020 15:00:23 -0400
Received: from pps.filterd (m0130877.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08UItwJh032721
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:59:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps1; bh=L3wtnCgVLXQ0HWj9/LWR9f7W9kqFK6j5xpNBm7z3ZnU=;
 b=KmI/4uOwo9PQyW8Z0nCjCh8YCeg5/DPBJ9lltlBfGDTM8OUK+zqrL2Ubi4vPHEAoEMTD
 ppaArM4D44uqkwaXqW0azkbhNC5dYWKxdA1+bUOFCmwvlLeEKkp1K5/BtF5FZd6hYwNS
 EjUwTU11DIgvKASRSdmDDzi9zkqG5DBZIjmgBUk1iBN3PRvuNcNZxvkv9p3o3YXy2tKk
 o1g10RTPadCD9FjeshwN/Mt3Mr3AwJNhANJci9+6vnBxhDYLvxkDoy+uVePfnHFrVCMx
 7hnEasjIOaZBosoSHarpK1KhZ7XJa85pFY60pQahe0LLygnwRa2U0ptlj7TVI1jWRsIA gA== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
 by mx0a-002cfd01.pphosted.com with ESMTP id 33vm1hp8gc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:59:41 -0400
Received: from CO2PR04CA0141.namprd04.prod.outlook.com (2603:10b6:104::19) by
 BN8PR01MB5379.prod.exchangelabs.com (2603:10b6:408:b1::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.35; Wed, 30 Sep 2020 18:59:36 +0000
Received: from CO1NAM05FT044.eop-nam05.prod.protection.outlook.com
 (2603:10b6:104:0:cafe::e5) by CO2PR04CA0141.outlook.office365.com
 (2603:10b6:104::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20 via Frontend
 Transport; Wed, 30 Sep 2020 18:59:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.138.10)
 smtp.mailfrom=osu.edu; lists.ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu; lists.ettus.com; dmarc=pass action=none header.from=osu.edu; 
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.138.10 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.138.10; helo=cio-socc-esr05.osuad.osu.edu;
Received: from cio-socc-esr05.osuad.osu.edu (128.146.138.10) by
 CO1NAM05FT044.mail.protection.outlook.com (10.152.96.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.14 via Frontend Transport; Wed, 30 Sep 2020 18:59:35 +0000
Received: from CIO-SOCC-EX01.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-socc-esr05.osuad.osu.edu (Postfix) with ESMTPS id E0EF7A1
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:59:34 -0400 (EDT)
Received: from CIO-SOCC-EX01.osuad.osu.edu (128.146.86.130) by
 CIO-SOCC-EX01.osuad.osu.edu (128.146.86.130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 30 Sep 2020 14:59:34 -0400
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by smtp.service.osu.edu (128.146.86.130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Wed, 30 Sep 2020 14:59:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZ1vCrxgurzvwRrLIkj388TA7aJYYTQRoJrAux0Zw0dIzb6lBBSUGox4e2idN7vM4dezu23HlbaLgstb4StYb8c/nd328SD/0KzwquSfgSWT1u5sURkYRF4Z8psqnZ1SPOJMfTx9SfNltJ+oeNT+PUHQ5+ofITFq2PAVDEWEWn95FqQoH9j+oLmftG2/fx2Izy06fcwfDGGTR0/ohdfMsj8ORluoQvpCiUgHGFUcF21Ucsi3c4WBxMhMkOiRA4mUWeDKlnQps30DGWr8Su2gaFzE0WKQSRj27VYCaCgK4jPAWHjz+4ZeZ3jkGuBkD3HYEN9n/kTTyeePOh5Q/ii3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L3wtnCgVLXQ0HWj9/LWR9f7W9kqFK6j5xpNBm7z3ZnU=;
 b=Yi14Bzg15BzjV9eFxWEociaeH9DpLIpkiezr4E/zDbGcVhVSPKQ7Jx9FMYNSM3SrthHiRz7BmFvBo1oYsdWgmolKz9p+Y2RaPzFFIIa60ahHu19k0jNHs/B3XgahCNyWWNjJlAsyFqgc+SMGB8nBfnbMkAuihrTSUirUYNxEMR6qXbeKT4gL4h7CPzbmHG8wG0y5NyjZSenhYRKUc6tWAuQzhi7dIexRoGuFe7cWrEj0kBkxIzbJSwsJx1PDUE9YC9mIJNzrg1/Kcs2BVPhD/25ws7vn3uiGzhXeYerqY418ngo3p2weXARLzL1AW4eJcIYPffjPoHD7hx7EharVVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from SN2PR01MB1968.prod.exchangelabs.com (2603:10b6:804:9::9) by
 SN6PR01MB3936.prod.exchangelabs.com (2603:10b6:805:22::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3412.23; Wed, 30 Sep 2020 18:59:33 +0000
Received: from SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::9898:4e1c:abc:c293]) by SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::9898:4e1c:abc:c293%10]) with mapi id 15.20.3412.029; Wed, 30 Sep 2020
 18:59:33 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 SFP and RJ45 port problems/confusion
Thread-Index: AQHWl1QPy04TwhXIv0y3LxHQ/v7vw6mBiIDk
Date: Wed, 30 Sep 2020 18:59:32 +0000
Message-ID: <SN2PR01MB1968049D5333EFD9A2ADE03CA8330@SN2PR01MB1968.prod.exchangelabs.com>
References: <SN2PR01MB19687AA86F3F0B44B901CB43A8330@SN2PR01MB1968.prod.exchangelabs.com>
In-Reply-To: <SN2PR01MB19687AA86F3F0B44B901CB43A8330@SN2PR01MB1968.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.ettus.com; dkim=none (message not
 signed) header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a18c6afa-ab3c-4372-c3ca-08d86572f985
x-ms-traffictypediagnostic: SN6PR01MB3936:|BN8PR01MB5379:
X-Microsoft-Antispam-PRVS: <BN8PR01MB53797D4A13DA6B8E31AAAC5BA8330@BN8PR01MB5379.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Kmlfkg1EhyrFHrvYvit0lOsVyzLshbqi+/ETvX45Mo5T+AJ9IhgQKIc0H79B1lNbEk76bW0gJ5SheJbhwHTGEWbZ6z8FBkSbG6pSvJcygAR8QyiLsUdBaRfg5cRUQNIuYvN3IIG56P1lHT/Bq3H1572fyMuBY0gjxcglDrIyRAV6DnOrDDVEzzBuUxZPId7p3BHMJrZmdCOmmri1OxkB/m1FT5e0gLg6cMLuQKR3veMWfkwEvtxqvk5Bad77A4FpgsPGLgypvIedV8miKY5Q4aIzHB2gFVZAmOetrHBpS3QfEic56qktexUKm0kw/aB/yy4qCJokfglwfmBkVYNEw12Sih/fIPq5qvVJP6zhSzEzqzLhBtpnLZtucTIEDzjk/KuGbhXqsCoVjHrPuB1aFFRciT3AwsJaGNr8BpKCmKAPZ63O8EvEfQFNTTbgv6cci8Uqz8Zt4HSdAqxsGomJpQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:SN2PR01MB1968.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(6916009)(66946007)(91956017)(7696005)(8676002)(64756008)(66556008)(66476007)(66574015)(66446008)(86362001)(52536014)(83380400001)(478600001)(316002)(33656002)(5660300002)(786003)(186003)(75432002)(8936002)(9686003)(26005)(19627405001)(55016002)(6506007)(2940100002)(71200400001)(2906002)(76116006)(454784003)(47845001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sJqHAsztDFBo3uQSw86vi/UuvBMvMa4QfpIZjRG8fvv74vOpSr0/KSSNNy02aPMQIn7ohHoarWMFPueRlpmvfvK5agEVPuI0MyfYMPybgaiKHocKmDRJQCl4krg+mjOTRMMPFrkEZBQEQpmU/njxbQEeWE1eYph8F9g+OGIv5k+3ZCrYQtPZ6xtUsljF4YqSmvzwRVdBa4MMEm+9bYmsNkf+QmZTfjkAwFFQwIXDlcTIU7uFmybAcuzaOvJWpTLkGIpBqHbOfYNVbEu9obbwmqtQ689Bw2Atj6DHi1F18AoMUukdbpnesBET9VW1Lot4MfD7EvMknGJ4lhn1d317qF3nn5YUTnpfbztMKbHQnMongAZXzSqsgi51+SNS0/pTlb2ReT3VjskXMwooy4VsRSmUDVQMa6Z2lCz17f7y2I+RNadCMeex608/W61/EgDeAszHgAgGe8UDGBipwnn55dYJE+Qan+MJ+OMgDTFZ9wiu5Our3oDT39sCtT00TbjLqve64MYeZZKBFlMeF4pOrmc6RGtSPUCB2IuOiN8KCT+tbhkHYWBZTtqK1Ph1OLFGQVlWjTLzW+Y+WFfMZTaU87IyUtUdcSxBKmXLx/kUwFdXBFDrj4fkU1phUjrHpefXJGMEysEnI4ZxI1ka3J6vfg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB3936
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: CO1NAM05FT044.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: badf0494-f1d2-4a4e-9e75-08d86572f7d0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AwjQ+XrI/lsLuNtJG0wMvs6e+bzsstbm1OwlLT5BumZUG0BaKD7oAlZMbsNN4EjAFUpqBtBK1m+2FxGzbMFVTJDUJs5xjqHfKycE0+wPruaVMEiMLrQJjeAKPjAzbSWArIU+XwyEL5mZkgD0zsN5t7EKvV9gy8DJb4YnobtWrq+ZPsXZlKirbLRIwMxHDc/TCBsvK1DqZTkLfQiXJ+36A/jNo5HPUNYmnpli4PjKrii41r3kIEsNSFN+FdhN+Q54Fl1AnGtS3PxRFm+l3Kzjqczg64DgwODErdPfDuW3AI6Uh+nTGyK+Iyupjt61F7YpqfPkb4PKS2Mh2cBRjjbfeMJln+2syL9UDvivV49TYk4g7k+PnJVyh+bsB4CwZcP9D94z8v3U8lCDMTFywqsW8x+nxtD6+7rl6D6Y4WtNBLpIPbROpR+AfEHsJ7+WKkfHNJaZXUkDcO601L3rlNs9XDiFOXxppyDu1MDShqdvBoA=
X-Forefront-Antispam-Report: CIP:128.146.138.10; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-socc-esr05.osuad.osu.edu;
 PTR:cio-socc-esr05.osuad.osu.edu; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(136003)(346002)(376002)(46966005)(86362001)(6506007)(7596003)(356005)(33310700002)(478600001)(75432002)(83380400001)(186003)(7696005)(2940100002)(19627405001)(26005)(66574015)(5660300002)(9686003)(55016002)(30864003)(82310400003)(82740400003)(70206006)(2906002)(70586007)(52536014)(6916009)(33656002)(786003)(47076004)(316002)(8676002)(8936002)(336012)(454784003)(47845001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2020 18:59:35.8326 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a18c6afa-ab3c-4372-c3ca-08d86572f985
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.138.10];
 Helo=[cio-socc-esr05.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM05FT044.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR01MB5379
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-30_10:2020-09-30,
 2020-09-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999 suspectscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009300152
Subject: [USRP-users] E320 SFP and RJ45 port problems/confusion
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
From: "Andrews, Mark J. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Andrews, Mark J." <andrews.250@osu.edu>
Content-Type: multipart/mixed; boundary="===============1864666196698582357=="
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

--===============1864666196698582357==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN2PR01MB1968049D5333EFD9A2ADE03CA8330SN2PR01MB1968prod_"

--_000_SN2PR01MB1968049D5333EFD9A2ADE03CA8330SN2PR01MB1968prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

 Hello,

I am getting started with an Ettus E320 on Ubuntu and am having some issues=
 communicating over the streaming port that I have been unable to solve.  B=
ased on what I'm seeing, I believe it has something to do with my PCs netwo=
rk settings because I can communicate with one port at a time without any p=
roblems.
My current setup is a PC with one Ethernet connection on the motherboard an=
d a separate WiFi PCIe card.  I connected the E320's RJ45 port to my WiFi r=
outer and the Ethernet connection is connected to the RJ45-to-SFP adapter o=
n the E320's SFP+ port.  I am able to ssh into the E320 and run the example=
 programs on there, but when I try to run uhd_find_devices or uhd_usrp_prob=
e on my PC, there are issues.  I am running UHD 3.15 on both my PC and the =
E320.  I will separate what I think is relevant information with lines of e=
qual signs for readability =3D=3D=3D=3D=3D=3D=3D=3D=3D

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


The ifconfig -a info for my PC:


ifconfig -a
enp30s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.1  netmask 0.0.0.0  broadcast 255.255.255.255
        inet6 fe80::93f1:af0c:251:4642  prefixlen 64  scopeid 0x20<link>
        ether b0:6e:bf:c1:18:57  txqueuelen 1000  (Ethernet)
        RX packets 53  bytes 5865 (5.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 180  bytes 26338 (26.3 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0xf7600000-f761ffff

lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 2019  bytes 203709 (203.7 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2019  bytes 203709 (203.7 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp37s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.20  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::44e4:2e51:6e8f:9d35  prefixlen 64  scopeid 0x20<link>
        ether 60:f6:77:96:f6:8b  txqueuelen 1000  (Ethernet)
        RX packets 111178  bytes 146464516 (146.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 51515  bytes 21064148 (21.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The ifconfig -a on the E320 is:


eth0      Link encap:Ethernet  HWaddr 00:80:2F:28:B9:3E
          inet addr:192.168.1.18  Bcast:192.168.1.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:10667 errors:0 dropped:114 overruns:0 frame:0
          TX packets:3142 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:14041114 (13.3 MiB)  TX bytes:233123 (227.6 KiB)
          Interrupt:27 Base address:0xb000

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:23 errors:0 dropped:0 overruns:0 frame:0
          TX packets:23 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:2337 (2.2 KiB)  TX bytes:2337 (2.2 KiB)

sfp0      Link encap:Ethernet  HWaddr 00:80:2F:28:B9:3F
          inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:38 errors:0 dropped:3 overruns:0 frame:0
          TX packets:51 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:4118 (4.0 KiB)  TX bytes:5475 (5.3 KiB)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If I try to ping the SFP port just using the 'ping' command, it does not wo=
rk

ping -c 4 192.168.10.2
PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.

--- 192.168.10.2 ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3063ms

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

But if I force it to use the hardwaired interface, ping works fine.

ping -I enp30s0 -c 4 192.168.10.2
PING 192.168.10.2 (192.168.10.2) from 192.168.10.1 enp30s0: 56(84) bytes of=
 data.
64 bytes from 192.168.10.2: icmp_seq=3D1 ttl=3D64 time=3D1.43 ms
64 bytes from 192.168.10.2: icmp_seq=3D2 ttl=3D64 time=3D1.44 ms
64 bytes from 192.168.10.2: icmp_seq=3D3 ttl=3D64 time=3D1.42 ms
64 bytes from 192.168.10.2: icmp_seq=3D4 ttl=3D64 time=3D0.961 ms

--- 192.168.10.2 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3005ms
rtt min/avg/max/mdev =3D 0.961/1.312/1.443/0.203 ms

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
If I run uhd_find_devices, my PC can see the E320, but it is listed as "rea=
chable: no".


~$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HEAD-0-=
gaea0e2de

-- UHD Device 0

Device Address:
    serial: 31BEE1C
    claimed: False
    mgmt_addr: 192.168.1.18
    product: e320
    reachable: No
    type: e3xx

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
If I run uhd_usrp_probe with "addr=3D192.168.1.18" it cannot detect a trans=
port option


 uhd_usrp_probe --args "addr=3D192.168.1.18"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HEAD-0-=
gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.1.18,type=3De3xx,product=3De320,serial=3D31BEE1C,claimed=3DFalse,add=
r=3D192.168.1.18
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.1.18,product=3De320'.
[ERROR] [MPMD] Failure during block enumeration: : Could not select a trans=
port option! Either a transport hint was not specified or the specified hin=
t does not support communication with RFNoC blocks.
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If I run uhd_usrp_probe with "addr=3D192.168.10.2" it can't find the device=
:


uhd_usrp_probe --args "addr=3D192.168.10.2"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HEAD-0-=
gaea0e2de
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.10.2

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The uhd_config_info on the  my PC and the E320:

 uhd_config_info --version
UHD 3.15.0.HEAD-0-gaea0e2de

ssh root@192.168.1.18
root@ni-e320-31BEE1C:~# uhd_config_info --version
UHD 3.15.0.0-0-gaea0e2de



--_000_SN2PR01MB1968049D5333EFD9A2ADE03CA8330SN2PR01MB1968prod_
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
<div>
<div id=3D"divRplyFwdMsg" dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp;Hello, <br>
</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am getting started with an Ettus E320 on Ubuntu and am having some issues=
 communicating over the streaming port that I have been unable to solve.&nb=
sp; Based on what I'm seeing, I believe it has something to do with my PCs =
network settings because I can communicate
 with one port at a time without any problems.&nbsp; <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
My current setup is a PC with one Ethernet connection on the motherboard an=
d a separate WiFi PCIe card.&nbsp; I connected the E320's RJ45 port to my W=
iFi router and the Ethernet connection is connected to the RJ45-to-SFP adap=
ter on the E320's SFP+ port. &nbsp;I am able
 to ssh into the E320 and run the example programs on there, but when I try=
 to run uhd_find_devices or uhd_usrp_probe on my PC, there are issues.&nbsp=
; I am running UHD 3.15 on both my PC and the E320.&nbsp; I will separate w=
hat I think is relevant information with lines
 of equal signs for readability =3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The ifconfig -a info for my PC:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
ifconfig -a
<div>enp30s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu =
1500</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.10.1 &nbsp;netmask 0.0.0.0 &n=
bsp;broadcast 255.255.255.255</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::93f1:af0c:251:4642 &nbsp;prefi=
xlen 64 &nbsp;scopeid 0x20&lt;link&gt;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; ether b0:6e:bf:c1:18:57 &nbsp;txqueuelen 1=
000 &nbsp;(Ethernet)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 53 &nbsp;bytes 5865 (5.8 KB)</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns=
 0 &nbsp;frame 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 180 &nbsp;bytes 26338 (26.3 KB)=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 &nb=
sp;carrier 0 &nbsp;collisions 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; device memory 0xf7600000-f761ffff &nbsp;</=
div>
<div><br>
</div>
<div>lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; &nbsp;mtu 65536</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1 &nbsp;netmask 255.0.0.0</di=
v>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 ::1 &nbsp;prefixlen 128 &nbsp;scopei=
d 0x10&lt;host&gt;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; loop &nbsp;txqueuelen 1000 &nbsp;(Local Lo=
opback)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 2019 &nbsp;bytes 203709 (203.7 =
KB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns=
 0 &nbsp;frame 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 2019 &nbsp;bytes 203709 (203.7 =
KB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 &nb=
sp;carrier 0 &nbsp;collisions 0</div>
<div><br>
</div>
<div>wlp37s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu =
1500</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.1.20 &nbsp;netmask 255.255.25=
5.0 &nbsp;broadcast 192.168.1.255</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::44e4:2e51:6e8f:9d35 &nbsp;pref=
ixlen 64 &nbsp;scopeid 0x20&lt;link&gt;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; ether 60:f6:77:96:f6:8b &nbsp;txqueuelen 1=
000 &nbsp;(Ethernet)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 111178 &nbsp;bytes 146464516 (1=
46.4 MB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns=
 0 &nbsp;frame 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 51515 &nbsp;bytes 21064148 (21.=
0 MB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 &nb=
sp;carrier 0 &nbsp;collisions 0</div>
<div><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The ifconfig -a on the E320 is:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
eth0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:80:2F:28:B9:3E=
 &nbsp;
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.1.18 &nbsp;Bcast:=
192.168.1.255 &nbsp;Mask:255.255.255.0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST RUNNING MULTICAST &nbs=
p;MTU:1500 &nbsp;Metric:1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:10667 errors:0 dropped:1=
14 overruns:0 frame:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:3142 errors:0 dropped:0 =
overruns:0 carrier:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:1000 </div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:14041114 (13.3 MiB) &nbsp;=
TX bytes:233123 (227.6 KiB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Interrupt:27 Base address:0xb000 </=
div>
<div><br>
</div>
<div>lo &nbsp; &nbsp; &nbsp; &nbsp;Link encap:Local Loopback &nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:127.0.0.1 &nbsp;Mask:255.=
0.0.0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP LOOPBACK RUNNING &nbsp;MTU:65536=
 &nbsp;Metric:1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:23 errors:0 dropped:0 ov=
erruns:0 frame:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:23 errors:0 dropped:0 ov=
erruns:0 carrier:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:1000 </div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:2337 (2.2 KiB) &nbsp;TX by=
tes:2337 (2.2 KiB)</div>
<div><br>
</div>
<div>sfp0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:80:2F:28:=
B9:3F &nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.10.2 &nbsp;Bcast:=
192.168.10.255 &nbsp;Mask:255.255.255.0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST RUNNING MULTICAST &nbs=
p;MTU:1500 &nbsp;Metric:1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:38 errors:0 dropped:3 ov=
erruns:0 frame:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:51 errors:0 dropped:0 ov=
erruns:0 carrier:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:1000 </div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:4118 (4.0 KiB) &nbsp;TX by=
tes:5475 (5.3 KiB)</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I try to ping the SFP port just using the 'ping' command, it does not wo=
rk</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
ping -c 4 192.168.10.2
<div>PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.</div>
<div><br>
</div>
<div>--- 192.168.10.2 ping statistics ---</div>
<div>4 packets transmitted, 0 received, 100% packet loss, time 3063ms</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
But if I force it to use the hardwaired interface, ping works fine.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
ping -I enp30s0 -c 4 192.168.10.2
<div>PING 192.168.10.2 (192.168.10.2) from 192.168.10.1 enp30s0: 56(84) byt=
es of data.</div>
<div>64 bytes from 192.168.10.2: icmp_seq=3D1 ttl=3D64 time=3D1.43 ms</div>
<div>64 bytes from 192.168.10.2: icmp_seq=3D2 ttl=3D64 time=3D1.44 ms</div>
<div>64 bytes from 192.168.10.2: icmp_seq=3D3 ttl=3D64 time=3D1.42 ms</div>
<div>64 bytes from 192.168.10.2: icmp_seq=3D4 ttl=3D64 time=3D0.961 ms</div=
>
<div><br>
</div>
<div>--- 192.168.10.2 ping statistics ---</div>
<div>4 packets transmitted, 4 received, 0% packet loss, time 3005ms</div>
<div>rtt min/avg/max/mdev =3D 0.961/1.312/1.443/0.203 ms</div>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I run uhd_find_devices, my PC can see the E320, but it is listed as &quo=
t;reachable: no&quot;.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
~$ uhd_find_devices
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
-- UHD Device 0
<div><br>
</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; serial: 31BEE1C</div>
<div>&nbsp; &nbsp; claimed: False</div>
<div>&nbsp; &nbsp; mgmt_addr: 192.168.1.18</div>
<div>&nbsp; &nbsp; product: e320</div>
<div>&nbsp; &nbsp; reachable: No</div>
<div>&nbsp; &nbsp; type: e3xx</div>
<div><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>
If I run uhd_usrp_probe with &quot;addr=3D192.168.1.18&quot; it cannot dete=
ct a transport option<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp;uhd_usrp_probe --args &quot;addr=3D192.168.1.18&quot;
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.18,type=3De3xx,product=3De320,serial=3D31BEE1C,claimed=3DFals=
e,addr=3D192.168.1.18</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.1.18,product=3De320'.</div>
<div>[ERROR] [MPMD] Failure during block enumeration: : Could not select a =
transport option! Either a transport hint was not specified or the specifie=
d hint does not support communication with RFNoC blocks.</div>
<div>Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>
</div>
<div><br>
</div>
<div>If I run uhd_usrp_probe with &quot;addr=3D192.168.10.2&quot; it can't =
find the device:<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>uhd_usrp_probe --args &quot;addr=3D192.168.10.2&quot;
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; addr: 192.168.10.2</div>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>
</div>
<br>
The uhd_config_info on the&nbsp; my PC and the E320:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp;uhd_config_info --version
<div>UHD 3.15.0.HEAD-0-gaea0e2de</div>
<div><br>
</div>
<div>ssh root@192.168.1.18</div>
<div>root@ni-e320-31BEE1C:~# uhd_config_info --version</div>
<div>UHD 3.15.0.0-0-gaea0e2de</div>
<br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_SN2PR01MB1968049D5333EFD9A2ADE03CA8330SN2PR01MB1968prod_--


--===============1864666196698582357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1864666196698582357==--

