Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD0328BB12
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 16:47:25 +0200 (CEST)
Received: from [::1] (port=35100 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRz6c-0007Bh-8s; Mon, 12 Oct 2020 10:47:18 -0400
Received: from mx0b-002cfd01.pphosted.com ([148.163.155.97]:20364)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kRz6X-00075l-DS
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 10:47:13 -0400
Received: from pps.filterd (m0130877.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09CEf0fs030445; Mon, 12 Oct 2020 10:46:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=pps1;
 bh=DJQIPARNZq7AbkfbsJB8XmSFv5VlzB2WN+J6npm9ghA=;
 b=VJVk3xfbLnQHpMWL9K5Uinyj64tLRkI0nCNIMfh7Uj8IBWJUch25NOsoqkmsRxK0N4pY
 w1F3gCHl8YFQwFdcdpQTWQxmQw6f3Bl+7K1TeIZVJaSadcAt19TUEBLxQBx6zfKnRrrq
 R/bzA2t+AuljlgUcaKDXJyPoBbArm0AL8njWVqDVH8RbnFcZ/StYYk+g/XCQauxqqefh
 nCdIYlLSo3Yhd9d1o/GCheOEmEsEvLpmzKlZYS6ZI39yd7mJAoBZwGDNkWQojJ+usiif
 Gj6/h0mkkZKPjJMfcn3aKLohvuKBjkacm+Jm8LFR13jUjIrCg/e0N57GnKV0zwdbGpm+ RQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
 by mx0a-002cfd01.pphosted.com with ESMTP id 3437h7fmur-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Oct 2020 10:46:31 -0400
Received: from DM6PR14CA0038.namprd14.prod.outlook.com (2603:10b6:5:18f::15)
 by MWHPR0101MB2909.prod.exchangelabs.com (2603:10b6:301:34::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.28; Mon, 12 Oct
 2020 14:46:29 +0000
Received: from DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
 (2603:10b6:5:18f:cafe::d2) by DM6PR14CA0038.outlook.office365.com
 (2603:10b6:5:18f::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21 via Frontend
 Transport; Mon, 12 Oct 2020 14:46:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.138.9)
 smtp.mailfrom=osu.edu; ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu;ettus.com; dmarc=pass action=none header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.138.9 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.138.9; helo=cio-socc-esr03.osuad.osu.edu;
Received: from cio-socc-esr03.osuad.osu.edu (128.146.138.9) by
 DM3NAM05FT036.mail.protection.outlook.com (10.152.98.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.11 via Frontend Transport; Mon, 12 Oct 2020 14:46:29 +0000
Received: from CIO-SOCC-EX03.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-socc-esr03.osuad.osu.edu (Postfix) with ESMTPS id 2DA1C98;
 Mon, 12 Oct 2020 10:46:29 -0400 (EDT)
Received: from CIO-TNC-EX02.osuad.osu.edu (128.146.193.2) by
 CIO-SOCC-EX03.osuad.osu.edu (128.146.86.131) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Mon, 12 Oct 2020 10:46:28 -0400
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by smtp.service.osu.edu (128.146.193.2) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Mon, 12 Oct 2020 10:46:28 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GghSALAG2QCtLlZAin7tNwk2fEU+ogBjp66TON8zKTSPEwaV7BPJ15/+DQddGDgYHG9l4HTKaV/YrMYL/g7AWqgjBWbm/kf6KoCDIODskKcTTY9u8u+n4y1+LBdO1nMjpbuCJjQVEbvJXYqPMi54fHIcHMdcBwl55RelQs+x0JL97jl5i+ayOS4NaDH1rkayPAc8PTVfsxwGpViYAJl+Jnr9mZ4un5sEsPdyOhxSIbtywiizr64J2oe57ScJGWEvKmgPLaPZTWKy1ejTbHKqbjALJsJJBMHFGWRkiiXk6wEjGMh4mmgCzFVgIRiNBjuIRc0C7Hh02pd5AcQnCpNxsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJQIPARNZq7AbkfbsJB8XmSFv5VlzB2WN+J6npm9ghA=;
 b=JJt9vAQGDUS4vQxJDH8TUGt0UyUBLOANselr4Yq4z2uWPyzq+8sm5U6VDpx3Xwj7Lrj1fdJ0ITqFHDUqtq/rDvHa6gvABRr7hJdnYe3L5SPx8simc3TuJB9b2HqdJ8O8Zkus8Youbl2CL+zF7GoGuSfLJBRGIK4JQED+W24MbAsbS0GTPrr1024J01Wd+stWUIgEO2OLXRaZFj/wIlhksLtzv502kz71/jVBvxpMRwoD0WY6sC0cSyKpUDB5tzymCm77/G05dtQldXqh81OT5al1bOTBrg4xBoab830NpVanAR8ce2XrT+ODhYL1zRBv4b6q649JYlp71+l999DW9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from SN2PR01MB1968.prod.exchangelabs.com (2603:10b6:804:9::9) by
 SN6PR01MB5279.prod.exchangelabs.com (2603:10b6:805:cf::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21; Mon, 12 Oct 2020 14:46:27 +0000
Received: from SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::80c1:530a:478d:e4c0]) by SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::80c1:530a:478d:e4c0%10]) with mapi id 15.20.3455.030; Mon, 12 Oct
 2020 14:46:27 +0000
To: Ettus Research Technical Support <support@ettus.com>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: Cross-Compile Issues with E320
Thread-Index: AQHWoJ6e86WyH803d0+X5F+L3Yt9hA==
Date: Mon, 12 Oct 2020 14:46:27 +0000
Message-ID: <SN2PR01MB1968CB85A0B328D1E069A0EDA8070@SN2PR01MB1968.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 374cfa67-9bf0-4a98-f37d-08d86ebd9aaf
x-ms-traffictypediagnostic: SN6PR01MB5279:|MWHPR0101MB2909:
X-Microsoft-Antispam-PRVS: <MWHPR0101MB2909A2DC42AC0E7CEBA57F02A8070@MWHPR0101MB2909.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UZPKZl30dIcPx59Bahc6JcvNZd3eVxxqhNH8oL9Zbon5z8Axt+exgGES9ST9nVpR4MSr4kn6jT7iaB88b4jIAvhNlT5NxHmSUY7CKvD/t/0qAwpfsTmS44cX1a1FN1Byfpz8+SMErEptY/Aes+cKwdIFFRxhrZq4p2VPWwoxmddssjR0nodpyWtrGWAqX1ZhXn0S1F5aLpApZS02UHDX2IIrMhm6onbYYwcgkBw9bye35lyGS3e9ciz8Pxj9otzLXVh0gN6RiuWsquxK4LfDSd1yOU8MRhyWTc4J1bnZAtKvhjE0JY8SyF/yha/vlcdF8EUJau3b1+8AqXwTvMDbeg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:SN2PR01MB1968.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(19627405001)(75432002)(64756008)(786003)(316002)(66556008)(76116006)(55016002)(66476007)(91956017)(26005)(478600001)(6506007)(2906002)(66446008)(7696005)(71200400001)(52536014)(66946007)(186003)(83380400001)(33656002)(110136005)(5660300002)(86362001)(9686003)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: XagfN+bZC4HGRmFkMUgXr9X948spgxEiFGmu73nHB/6Dfd0SQt9ZJqoNtWIyZAJFI7ddfT9lTM9EhxAAIg3LpsAQZDUqOg7zo3bdGwRDFUav4XrXoC+eWyqiA5Ds2NvSsr+cYb1Nla0ufy6VZxMOYFc46/JAeiEme/wsIrp6Usm60FTaXHlnGUuunZc2OmXZdxDI58k1qN0YjOCGb0aMJKdD6zyXT7a4BPrkKc0BRUGrbwvFtg30f4Z71DzF9Q12iFf69WxYps3tYOYMQZtg3VIzQa+T4VSSblfAMNEcG0m3RFHInI8lRPDV6DXEkoXArsxjk+Bor18QydXYnx6Eys/bYTR6Fwm8UhE5paN9oUkGQulnZ9yCq1LjwQB2+x9OfQXuHumRjxwcXY2QARsRcK0wjUytMGsqy7BifJTKf3NVu/k87/3SRjysD/Y859DBhvT+CP8H+QXRweeItleHZNim4SPwtLMIqAO6cbqwirEXPVaxfjrzS5ON25kj5jz0vDZkktKH+qbiWxqCwJMVwHnrpr1S3cTcbAgvguYTFg3izeTVUTVP6h/iKqxrTlYRynMMT1G/A7nv0OtnSfB6JctjANLeJM+7824jP7r1OqUHUOaN95mnNwvtbYLIXAv4yQXbBwl6PRt6+DTbbANQJQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB5279
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 83226488-22fe-4cd1-b31a-08d86ebd9971
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zIvCK4ZpqlEkzWgQUcWU68Uv5/28BkvznXT6yOtYOwaRVgYbQwSQAnkjY5aPq4S33CU+O8cu47BUr/XcSWyMmuJqiCX7Enng0Hpv+NiFzYOpyZ/r86E0pQ2gZZ/haKNAoqD54M0mOVn4jMXLrY0LKH8smZrUtEHzIPpUwkWRl5TkWvbYnFl4grfbT0WRZCGQwup8eDp1HxB5bFm9dwNNw9WuzGFHO+5l6bnpTECr2nZrir3/ahWuh4tOZd4Dt9ftgCZopb1FHfCaSgLErNu7DIqXD+QkCHU1bh2XxkCFn0q56vjCwPsVTRJx2bkKNrwAfq1K13SQdx4+pHu4hFqhDEZW1O2D1qdI+SS9Yc1GT7+OG4mVr3FgsHe7McFv/gMGBoPOJGsBy5mjNUgXSOQavqqXREu+3qcHBkFKH70cS4kVDTZ6Pxt7uOoBnYEtt4Ue
X-Forefront-Antispam-Report: CIP:128.146.138.9; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-socc-esr03.osuad.osu.edu;
 PTR:cio-socc-esr03.osuad.osu.edu; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(396003)(39860400002)(46966005)(52536014)(186003)(33656002)(110136005)(8936002)(336012)(82740400003)(26005)(86362001)(356005)(7596003)(33310700002)(30864003)(2906002)(83380400001)(70206006)(786003)(55016002)(9686003)(478600001)(19627405001)(6506007)(7696005)(82310400003)(8676002)(316002)(70586007)(47076004)(5660300002)(75432002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 14:46:29.5102 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 374cfa67-9bf0-4a98-f37d-08d86ebd9aaf
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.138.9];
 Helo=[cio-socc-esr03.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0101MB2909
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-12_12:2020-10-12,
 2020-10-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 suspectscore=0 mlxlogscore=999 impostorscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 mlxscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010120118
Subject: [USRP-users] Cross-Compile Issues with E320
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
Content-Type: multipart/mixed; boundary="===============5874661162788069695=="
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

--===============5874661162788069695==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN2PR01MB1968CB85A0B328D1E069A0EDA8070SN2PR01MB1968prod_"

--_000_SN2PR01MB1968CB85A0B328D1E069A0EDA8070SN2PR01MB1968prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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
/usr/lib/libpython2.7.so
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






--_000_SN2PR01MB1968CB85A0B328D1E069A0EDA8070SN2PR01MB1968prod_
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
<div>This warning is for project developers. &nbsp;Use -Wno-dev to suppress=
 it.</div>
<div><br>
</div>
<div>-- Python Libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gn=
ueabi/usr/lib/libpython2.7.so</div>
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
</body>
</html>

--_000_SN2PR01MB1968CB85A0B328D1E069A0EDA8070SN2PR01MB1968prod_--


--===============5874661162788069695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5874661162788069695==--

