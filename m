Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B196628C397
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 22:59:52 +0200 (CEST)
Received: from [::1] (port=38302 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kS4v5-0007Jd-5L; Mon, 12 Oct 2020 16:59:47 -0400
Received: from mx0a-002cfd01.pphosted.com ([148.163.151.149]:4744)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kS4v0-00076d-Qy
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 16:59:43 -0400
Received: from pps.filterd (m0130872.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09CKrhL1008414; Mon, 12 Oct 2020 16:59:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps1; bh=AB1BJ6Z8u8sfUxzSUxAWimguZ8HjbQGjExPfKs7qbrY=;
 b=N593YLJcEavBDPJVVsqgnrie43GXo9g55qId/GsApEczKX+3/fUzKBBt5Y6IrgJMCOi5
 rKpFT3TEvekmEPZgH1qWcap4EFK3Jzc9gORPAjS3pVJAdzqsh6JJ9KNv00lmhif9e9nM
 yqEmrS9rm/KxlPzeJiSVvwAKSJWNfVsEx/hFWUIXgTH4pAryRg6MLVutDMXAnAALZG5i
 Q92k9YgMNMjFnizGD3zDLf2/TrgjGM9QGyj5B2evid7baXpovN+ANQ6czwMiPsGEqYcE
 6pdnUX754NvipBuz5JKJ6FOX+DCYkCFFmBI3mSrYWhyb4PCtQ07nryjwAtM7bV++ku66 ow== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
 by mx0a-002cfd01.pphosted.com with ESMTP id 34371a32b3-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Oct 2020 16:59:00 -0400
Received: from DM3PR12CA0077.namprd12.prod.outlook.com (2603:10b6:0:57::21) by
 MWHPR01MB2623.prod.exchangelabs.com (2603:10b6:300:fc::9) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21; Mon, 12 Oct 2020 20:58:59 +0000
Received: from DM3NAM05FT027.eop-nam05.prod.protection.outlook.com
 (2603:10b6:0:57:cafe::e4) by DM3PR12CA0077.outlook.office365.com
 (2603:10b6:0:57::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23 via Frontend
 Transport; Mon, 12 Oct 2020 20:58:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.138.10)
 smtp.mailfrom=osu.edu; ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu;ettus.com; dmarc=pass action=none header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.138.10 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.138.10; helo=cio-socc-esr05.osuad.osu.edu;
Received: from cio-socc-esr05.osuad.osu.edu (128.146.138.10) by
 DM3NAM05FT027.mail.protection.outlook.com (10.152.98.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.11 via Frontend Transport; Mon, 12 Oct 2020 20:58:58 +0000
Received: from CIO-SOCC-EX07.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-socc-esr05.osuad.osu.edu (Postfix) with ESMTPS id 51F0A91;
 Mon, 12 Oct 2020 16:58:58 -0400 (EDT)
Received: from CIO-SOCC-EX01.osuad.osu.edu (128.146.86.130) by
 CIO-SOCC-EX07.osuad.osu.edu (128.146.86.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Mon, 12 Oct 2020 16:58:58 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by smtp.service.osu.edu (128.146.86.130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Mon, 12 Oct 2020 16:58:57 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EYYuZ9yFenKiEDLP3WviWCpoiDVY8CA9M+ughSAvcw8WGP4RDSiR1CtVr95k/83UsTmw6j9WHWSMiRfhnYbOwbjQETBqTOwK+lnmx42zJAXW29yc+h2xoG+u6g0K7cGNFUqwQvBz2Olky3dsF+dApCV22TyFAGJ5z8fjeCrrwTcOuUQxdTqTK+BTCh8N3V2cvJ7p+8j8UDnd1GY6uPWxs7HCbB30oBaoRJDWZD6TdrD6a3lsZ0tYx0/A84oS/CGWh/RSJxRbiHABSu4ED5wLXZ7bn7J5roP3GpMkahlmeXWRj/MSPOoZQFeyZGB46N2VVM7tEqme3npSSs8KcArk5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AB1BJ6Z8u8sfUxzSUxAWimguZ8HjbQGjExPfKs7qbrY=;
 b=dk6aC7FLefo3kcgGb2UitCJ9aXevV9urLQ3m4tlLIBwtmzJfIR4tGxUX+Z5bHpyp2TLYCuZDecPNVC1WL73fLn4El2d86FT3tiYoIhN8HQeRfUNiwT9FgW+JbaDcVcBJMmR/MiNNl9famAAGKe+eitu4jsA3G6elTrVW1mhOiy2lHRlXUbtY1JbJhMDiB4yyyKNmorhK1AjrgCxyVmwcFHaksgreelbsci+Ft1W8UYddKweEXw5+Nold4wUngIyCdDTIQPvogqmcl1UkdukB4leJC3nN4QhhK/5xTkeC+zY/65c0FNiue7MEMYPGBNi3DSGu9eqOSaqYaYRvkM3WUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from SN2PR01MB1968.prod.exchangelabs.com (2603:10b6:804:9::9) by
 SN6PR01MB3888.prod.exchangelabs.com (2603:10b6:805:28::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21; Mon, 12 Oct 2020 20:58:56 +0000
Received: from SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::80c1:530a:478d:e4c0]) by SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::80c1:530a:478d:e4c0%10]) with mapi id 15.20.3455.030; Mon, 12 Oct
 2020 20:58:55 +0000
To: Michael Dickens <michael.dickens@ettus.com>
Thread-Topic: [USRP-users] Cross-Compile Issues with E320
Thread-Index: AQHWoJ6e86WyH803d0+X5F+L3Yt9hKmUHKIAgABWWT0=
Date: Mon, 12 Oct 2020 20:58:55 +0000
Message-ID: <SN2PR01MB1968EEE8928B8C51D0E7E86EA8070@SN2PR01MB1968.prod.exchangelabs.com>
References: <SN2PR01MB1968CB85A0B328D1E069A0EDA8070@SN2PR01MB1968.prod.exchangelabs.com>,
 <CAGNhwTOCLRdzV7pn0yv0+vOOE5ozHqg684YRgwC3=-T_f72AtQ@mail.gmail.com>
In-Reply-To: <CAGNhwTOCLRdzV7pn0yv0+vOOE5ozHqg684YRgwC3=-T_f72AtQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 27a88b5e-a67b-4a3d-f9c6-08d86ef1a3de
x-ms-traffictypediagnostic: SN6PR01MB3888:|MWHPR01MB2623:
X-Microsoft-Antispam-PRVS: <MWHPR01MB2623AB0D9235EF6A7A49DB25A8070@MWHPR01MB2623.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: oQ7WPgRLK4ww8PSE05H63Uai/qpMpMqLRNxk3uV+3lZc1Coq9SBy+guJtKVVOfeuDcAdPnUDKhBbFP/809TeiiDcUf8aZioVFKKXHmAPSrz1JIOi+0Qjh2EEbEGEe/nfpcnmgDuZlH18AG47PwjE6QrveW2zyrUPe7fmNL/nct7Vimsy/Ql7lK8UbuF2MnSYNpoKStbY3POv7WPP8M/au0Qr14ru/vB5HnTROYDxMwlrKQ6AdzRnL0fijOsuzrDcwtkfXsfQ4GiQvFEDAzM69dWusSsy+0K1BGH8kJrs7S81/0Iln11t7r01y8wzJwOc0QduYrnRQzeTj9rtgqNGVnnkBWLEATmQZNz0B05BP8fG16XW8q8tkUyQrfpDEAvBgv5vDbGpn5WKVf84GWSC2Q==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:SN2PR01MB1968.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(66556008)(316002)(91956017)(54906003)(83080400001)(55016002)(19627405001)(64756008)(76116006)(66476007)(786003)(75432002)(478600001)(66946007)(52536014)(2906002)(66446008)(166002)(7696005)(6506007)(26005)(6916009)(53546011)(186003)(71200400001)(33656002)(83380400001)(8676002)(966005)(5660300002)(86362001)(9686003)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: i59KCHRHKQ5NLbeMZFvA7fRZ5Q7IUBFzcMNpUL/ZlsuSF+qV/srFxnosPK9s/AbTVRzGscREG8YtWBrcNfjbasnyUgwCB9wNlCtcSOwySY//NGm2Rl1hxYZdeq/IBk5NQ+d/prMO7335D27dR3zW0tkO5utTQ5Y4MuACoF0zgnMsRU0LIuNONYjhy/0/vlaYBGPRNgd+FQEvRJQDu0fr3CTh9RygzK2a4Bu3S4cZ4jxRvV7A25wYfxUPvNBMDuBA5qaxl2Zk8AZO+wkEihIWrSxC1j2sbDYN3WTYHZA2M+6lpsoPjD0yTIAe9gKC5lPiE1ajzApw2tBDw2eeo3Sx1aKH/4k6QNIQt02Y1m/C6EkKtthrxaDx0ymuMkaeUXTcmCG8piu2+6dJ8DyJf6SeG6XREgRT2firWdQiAeQch2fqIh+vRUw4ThpHl7cd1iHU4zOfs+VePKkSZS3xy+zI6QqGHYdHA2isgseJw+MxhwlVRMiPp/33vaPn5Lb8nsfZsGPX82GrpGfwXU86lUnZbhc+iqaCw0D7kM5+uQ5ANc4LKc8T3ZWLTkn07JPrC8QjvhsVHli5dVSCC+AHuTDkf9iD7khGYRAiRRlY7ZV2nLM8p9/AfCtZqdoVKNmySN07bQzUExhL8t7MnqxPGa5HaQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB3888
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DM3NAM05FT027.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: ffdecebe-e4d8-4a7f-5ea8-08d86ef1a22a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AmJVIAYw1X7KjtyFulr0nhJt6eVULN4egHt4LEP5SDrk0/kOtVFkK82fKq4vRplitwzOQMUAW3wnwvkVK/gZJvBmxqO8zcYEguB7/Ga3Mi0ViyujkLfahlhbnq2ORZBA45rjMsfR365Bzx3gkJFXzLqoZcl7b3kDco6TlQ+uKoidM+kmK7bH3KJYS5UN9zSNKtquc5E7YYAKisSy0eekCMRx7mwS9jT7xHyYsLHrpzmg2uxqefdTogvMmbufm9fN6YoRojYBZ8LTTgKyWMUbig4GNiIyFdI3akatv4opN9cJIXbTl8xGLPY3+cNzPbJEE+NQV3TXpf54pGZv6vYXtkyqQnERqIdHPzZ2c+K3P4nGDXOyVHA8agrDBv45aV57/M++MY6jXwcqalLbHXA+A3fImuNte4TCk9RazyZ9dzKgNwR/9+rIWGKZVQbvf9zP6qSmvYPP7gFYiHkvMR61FMCREh1UjFkZgBHaimExsCQYsB0G7JZmHGuIA4sCY1/q
X-Forefront-Antispam-Report: CIP:128.146.138.10; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-socc-esr05.osuad.osu.edu;
 PTR:cio-socc-esr05.osuad.osu.edu; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(46966005)(316002)(54906003)(55016002)(19627405001)(786003)(83080400001)(75432002)(478600001)(52536014)(70206006)(70586007)(2906002)(7596003)(166002)(7696005)(6506007)(26005)(53546011)(186003)(6916009)(33310700002)(33656002)(83380400001)(356005)(30864003)(8676002)(966005)(336012)(5660300002)(82740400003)(86362001)(47076004)(9686003)(82310400003)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 20:58:58.7478 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 27a88b5e-a67b-4a3d-f9c6-08d86ef1a3de
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.138.10];
 Helo=[cio-socc-esr05.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM05FT027.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2623
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-12_17:2020-10-12,
 2020-10-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 mlxscore=0
 suspectscore=0 bulkscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010120157
Subject: Re: [USRP-users] Cross-Compile Issues with E320
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5247875260387381160=="
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

--===============5247875260387381160==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN2PR01MB1968EEE8928B8C51D0E7E86EA8070SN2PR01MB1968prod_"

--_000_SN2PR01MB1968EEE8928B8C51D0E7E86EA8070SN2PR01MB1968prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

THANK YOU!  I thought that it seemed like the SDK had to be wrong, but neve=
r saw links to the newer versions in all my searching.  Using the newer SDK=
 solved the issues and I can finally run my own programs on the E320.  Than=
k you again for all the help!
________________________________
From: Michael Dickens <michael.dickens@ettus.com>
Sent: Monday, October 12, 2020 11:47 AM
To: Andrews, Mark J. <andrews.250@osu.edu>
Cc: Ettus Research Technical Support <support@ettus.com>; Ettus Mail List <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Cross-Compile Issues with E320

Hi Mark - You need to use a more recent SDK for the cross-build. Here are t=
he SDKs for the 2 most recent UHD releases. I hope this helps! - MLD

< https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e32=
0_sdk_default-v3.15.0.0.zip<https://urldefense.com/v3/__https://files.ettus=
.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e320_sdk_default-v3.15.0=
.0.zip__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbTN1WbH=
Op5FfyZ7qkU$> >
< https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320=
_sdk_default-v4.0.0.0.zip<https://urldefense.com/v3/__https://files.ettus.c=
om/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320_sdk_default-v4.0.0.0.z=
ip__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbTN1WbHOp5F=
267rXXk$> >


On Mon, Oct 12, 2020 at 10:47 AM Andrews, Mark J. via USRP-users <usrp-user=
s@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello,

I am trying to cross-compile UHD on an E320 with the OE SDK, but I cannot g=
et past the cmake step due to multiple errors.  On the host PC, I am able t=
o install the SDK and source the environment variable without issues.  When=
 I go to build UHD, the first error is that the CMakeLists.txt file for UHD=
 3.15 has a minimum CMake version of 3.5.1, but the OE SDK cmake is version=
 2.8.12.2 (my host PC is version 3.18.4).  I manually edited the CMakeLists=
.txt to accept the older version of CMake, but then it has a boost version =
error and cannot find several python packages (platform, mako, requests, nu=
mpy).  I again edited it for the Boost version, but it still can't find the=
 python packages.  Do I need to somehow install all the UHD dependencies in=
 the OE SDK paths after installing it?  Or am I doing something else wrong?

I also tried running "import sys" to see the Python path configuration and =
the "program name", "sys._base_executable", and "sys.executable" are all po=
inting to "/usr/bin/python3" instead of the "/home/~/oe/sysroots/x86_64-oes=
dk-linux" path.  Not sure if that's part of the problem or not, but it seem=
ed suspicious.  The cmake and import sys outputs are copied below.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmake =
-DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..

-- Configuring the Python interpreter...
-- Manually determining build Python version...
ImportError: No module named site
-- Python interpreter: /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/pytho=
n Version:
-- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
-- Manually determining runtime Python version...
ImportError: No module named site
-- Python runtime interpreter: /home/~/oe/sysroots/x86_64-oesdk-linux/usr/b=
in/python Version:
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
-- Finding Python Libraries...
CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168 (find_package):
  Ignoring EXACT since no version is requested.
Call Stack (most recent call first):
  cmake/Modules/UHDVersion.cmake:9 (include)
  cmake/Modules/UHDPackage.cmake:9 (include)
  CMakeLists.txt:103 (include)
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Python Libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi=
/usr/lib/libpython2.7.so<https://urldefense.com/v3/__http://libpython2.7.so=
__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbTN1WbHOp5Fnw=
t1ywM$>
-- Python include directories: /home/`/oe/sysroots/armv7ahf-vfp-neon-oe-lin=
ux-gnueabi/usr/include/python2.7
-- Working off of feature or development branch. Updating version number.
ImportError: No module named site
ImportError: No module named site
ImportError: No module named site
-- Using UHD Images Directory: /usr/share/uhd/images
-- Build type not specified: defaulting to release.
--
-- Configuring Boost C++ Libraries...
--
-- Checking for Boost version 1.57 or greater
--   Looking for required Boost components...
--     Disabling boost::asio use of std::string_view
--   Boost version: 1.57.0
--   Boost include directories: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-li=
nux-gnueabi/usr/include
--   Boost library directories: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-li=
nux-gnueabi/usr/lib
--   Boost libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueab=
i/usr/lib/libboost_chrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-li=
nux-gnueabi/usr/lib/libboost_date_time-mt.so;/home/!/oe/sysroots/armv7ahf-v=
fp-neon-oe-linux-gnueabi/usr/lib/libboost_filesystem-mt.so;/home/~/oe/sysro=
ots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_program_options-mt.=
so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_=
regex-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/=
libboost_unit_test_framework.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-li=
nux-gnueabi/usr/lib/libboost_serialization-mt.so;/home/~/oe/sysroots/armv7a=
hf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_thread-mt.so;/home/~/oe/sysro=
ots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_system-mt.so
-- Looking for Boost version 1.57 or greater - found
--
-- Python checking for Python version 2.7 or greater
ImportError: No module named site
-- Python checking for Python version 2.7 or greater - "import platform" fa=
iled
--
-- Python checking for Mako templates 0.4.2 or greater
ImportError: No module named site
-- Python checking for Mako templates 0.4.2 or greater - "import mako" fail=
ed
--
-- Python checking for requests 2.0 or greater
ImportError: No module named site
-- Python checking for requests 2.0 or greater - "import requests" failed
--
-- Python checking for numpy 1.7 or greater
ImportError: No module named site
-- Python checking for numpy 1.7 or greater - "import numpy" failed
--
-- Configuring LibUHD support...
--   Dependency Boost_FOUND =3D 1
--   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE
--   Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE
CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
  Dependencies for required component LibUHD not met.
Call Stack (most recent call first):
  CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
import sys

Python path configuration:
  PYTHONHOME =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
  PYTHONPATH =3D (not set)
  program name =3D '/usr/bin/python3'
  isolated =3D 0
  environment =3D 1
  user site =3D 1
  import site =3D 1
  sys._base_executable =3D '/usr/bin/python3'
  sys.base_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
  sys.base_exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
  sys.executable =3D '/usr/bin/python3'
  sys.prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
  sys.exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
  sys.path =3D [
    '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python38.zip',
    '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8',
    '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8/lib-dynload',
  ]
Fatal Python error: init_fs_encoding: failed to get the Python codec of the=
 filesystem encoding
Python runtime state: core initialized
ModuleNotFoundError: No module named 'encodings'





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.com/v3/__http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbT=
N1WbHOp5Frw0HsTo$>

--_000_SN2PR01MB1968EEE8928B8C51D0E7E86EA8070SN2PR01MB1968prod_
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
THANK YOU!&nbsp; I thought that it seemed like the SDK had to be wrong, but=
 never saw links to the newer versions in all my searching.&nbsp; Using the=
 newer SDK solved the issues and I can finally run my own programs on the E=
320.&nbsp; Thank you again for all the help!</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Michael Dickens &lt;m=
ichael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Monday, October 12, 2020 11:47 AM<br>
<b>To:</b> Andrews, Mark J. &lt;andrews.250@osu.edu&gt;<br>
<b>Cc:</b> Ettus Research Technical Support &lt;support@ettus.com&gt;; Ettu=
s Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Cross-Compile Issues with E320</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Mark - You need to use a more recent SDK for the cross-=
build. Here are the SDKs for the 2 most recent UHD releases. I hope this he=
lps! - MLD<br>
<div><br>
</div>
<div>&lt;&nbsp;<a href=3D"https://urldefense.com/v3/__https://files.ettus.c=
om/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e320_sdk_default-v3.15.0.0=
.zip__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbTN1WbHOp=
5FfyZ7qkU$">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.=
0/e3xx_e320_sdk_default-v3.15.0.0.zip</a>
 &gt;</div>
<div>&lt;&nbsp;<a href=3D"https://urldefense.com/v3/__https://files.ettus.c=
om/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320_sdk_default-v4.0.0.0.z=
ip__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbTN1WbHOp5F=
267rXXk$">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e=
3xx_e320_sdk_default-v4.0.0.0.zip</a>
 &gt;</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Oct 12, 2020 at 10:47 AM An=
drews, Mark J. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am trying to cross-compile UHD on an E320 with the OE SDK, but I cannot g=
et past the cmake step due to multiple errors.&nbsp; On the host PC, I am a=
ble to install the SDK and source the environment variable without issues.&=
nbsp; When I go to build UHD, the first error
 is that the CMakeLists.txt file for UHD 3.15 has a minimum CMake version o=
f 3.5.1, but the OE SDK cmake is version 2.8.12.2 (my host PC is version 3.=
18.4).&nbsp; I manually edited the CMakeLists.txt to accept the older versi=
on of CMake, but then it has a boost
 version error and cannot find several python packages (platform, mako, req=
uests, numpy).&nbsp; I again edited it for the Boost version, but it still =
can't find the python packages.&nbsp; Do I need to somehow install all the =
UHD dependencies in the OE SDK paths after
 installing it?&nbsp; Or am I doing something else wrong?&nbsp; <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I also tried running &quot;import sys&quot; to see the Python path configur=
ation and the &quot;program name&quot;, &quot;sys._base_executable&quot;, a=
nd &quot;sys.executable&quot; are all pointing to &quot;/usr/bin/python3&qu=
ot; instead of the &quot;/home/~/oe/sysroots/x86_64-oesdk-linux&quot; path.=
&nbsp; Not sure if that's
 part of the problem or not, but it seemed suspicious.&nbsp; The cmake and =
import sys outputs are copied below.<br>
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
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmake =
-DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..
<div><br>
</div>
-- Configuring the Python interpreter... </div>
<div>-- Manually determining build Python version...</div>
<div>ImportError: No module named site</div>
<div>-- Python interpreter: /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/=
python Version:
</div>
<div>-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</div>
<div>-- Manually determining runtime Python version...</div>
<div>ImportError: No module named site</div>
<div>-- Python runtime interpreter: /home/~/oe/sysroots/x86_64-oesdk-linux/=
usr/bin/python Version:
</div>
<div>-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;=
</div>
<div>-- Finding Python Libraries...</div>
<div>CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168 (find_package=
):</div>
<div>&nbsp; Ignoring EXACT since no version is requested.</div>
<div>Call Stack (most recent call first):</div>
<div>&nbsp; cmake/Modules/UHDVersion.cmake:9 (include)</div>
<div>&nbsp; cmake/Modules/UHDPackage.cmake:9 (include)</div>
<div>&nbsp; CMakeLists.txt:103 (include)</div>
<div>This warning is for project developers.&nbsp; Use -Wno-dev to suppress=
 it.</div>
<div><br>
</div>
<div>-- Python Libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gn=
ueabi/usr/lib/<a href=3D"https://urldefense.com/v3/__http://libpython2.7.so=
__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA3KRvnWgUs4geu-DHFbTN1WbHOp5Fnw=
t1ywM$" target=3D"_blank">libpython2.7.so</a></div>
<div>-- Python include directories: /home/`/oe/sysroots/armv7ahf-vfp-neon-o=
e-linux-gnueabi/usr/include/python2.7</div>
<div>-- Working off of feature or development branch. Updating version numb=
er.</div>
<div>ImportError: No module named site</div>
<div>ImportError: No module named site</div>
<div>ImportError: No module named site</div>
<div>-- Using UHD Images Directory: /usr/share/uhd/images</div>
<div>-- Build type not specified: defaulting to release.</div>
<div>-- </div>
<div>-- Configuring Boost C++ Libraries...</div>
<div>-- </div>
<div>-- Checking for Boost version 1.57 or greater</div>
<div>-- &nbsp; Looking for required Boost components...</div>
<div>-- &nbsp; &nbsp; Disabling boost::asio use of std::string_view</div>
<div>-- &nbsp; Boost version: 1.57.0</div>
<div>-- &nbsp; Boost include directories: /home/~/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/include</div>
<div>-- &nbsp; Boost library directories: /home/~/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/lib</div>
<div>-- &nbsp; Boost libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-li=
nux-gnueabi/usr/lib/libboost_chrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/lib/libboost_date_time-mt.so;/home/!/oe/sysroots/=
armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_filesystem-mt.so;/home/=
~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_program_o=
ptions-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
/libboost_regex-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueab=
i/usr/lib/libboost_unit_test_framework.so;/home/~/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/lib/libboost_serialization-mt.so;/home/~/oe/sysro=
ots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_thread-mt.so;/home/=
~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_system-mt=
.so</div>
<div>-- Looking for Boost version 1.57 or greater - found</div>
<div>-- </div>
<div>-- Python checking for Python version 2.7 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for Python version 2.7 or greater - &quot;import pl=
atform&quot; failed</div>
<div>-- </div>
<div>-- Python checking for Mako templates 0.4.2 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for Mako templates 0.4.2 or greater - &quot;import =
mako&quot; failed</div>
<div>-- </div>
<div>-- Python checking for requests 2.0 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for requests 2.0 or greater - &quot;import requests=
&quot; failed</div>
<div>-- </div>
<div>-- Python checking for numpy 1.7 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for numpy 1.7 or greater - &quot;import numpy&quot;=
 failed</div>
<div>-- </div>
<div>-- Configuring LibUHD support...</div>
<div>-- &nbsp; Dependency Boost_FOUND =3D 1</div>
<div>-- &nbsp; Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE</div>
<div>-- &nbsp; Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE</div>
<div>CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):</div>
<div>&nbsp; Dependencies for required component LibUHD not met.</div>
<div>Call Stack (most recent call first):</div>
<div>&nbsp; CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)</div>
<div><br>
</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div>
<div>import sys</div>
<div><br>
</div>
<div>Python path configuration:
<div>&nbsp; PYTHONHOME =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'</div>
<div>&nbsp; PYTHONPATH =3D (not set)</div>
<div>&nbsp; program name =3D '/usr/bin/python3'</div>
<div>&nbsp; isolated =3D 0</div>
<div>&nbsp; environment =3D 1</div>
<div>&nbsp; user site =3D 1</div>
<div>&nbsp; import site =3D 1</div>
<div>&nbsp; sys._base_executable =3D '/usr/bin/python3'</div>
<div>&nbsp; sys.base_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'</d=
iv>
<div>&nbsp; sys.base_exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linu=
x'</div>
<div>&nbsp; sys.executable =3D '/usr/bin/python3'</div>
<div>&nbsp; sys.prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'</div>
<div>&nbsp; sys.exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'</d=
iv>
<div>&nbsp; sys.path =3D [</div>
<div>&nbsp; &nbsp; '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python38.zip=
',</div>
<div>&nbsp; &nbsp; '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8',<=
/div>
<div>&nbsp; &nbsp; '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8/li=
b-dynload',</div>
<div>&nbsp; ]</div>
<div>Fatal Python error: init_fs_encoding: failed to get the Python codec o=
f the filesystem encoding</div>
<div>Python runtime state: core initialized</div>
<div>ModuleNotFoundError: No module named 'encodings'</div>
<br>
<br>
</div>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com__;!!KGKeukY!jZp9T_4Da88QXMCtooiMMf3xpwiMYKOA=
3KRvnWgUs4geu-DHFbTN1WbHOp5Frw0HsTo$" rel=3D"noreferrer" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SN2PR01MB1968EEE8928B8C51D0E7E86EA8070SN2PR01MB1968prod_--


--===============5247875260387381160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5247875260387381160==--

