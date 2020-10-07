Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8810F286AB7
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 00:09:24 +0200 (CEST)
Received: from [::1] (port=42308 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQHce-0004Si-Te; Wed, 07 Oct 2020 18:09:20 -0400
Received: from mx0b-002cfd01.pphosted.com ([148.163.155.97]:7160)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kQHca-0004Nd-TS
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 18:09:16 -0400
Received: from pps.filterd (m0130876.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 097LpAFL001555; Wed, 7 Oct 2020 18:08:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps1; bh=FzqyqZMIqm/iLqtgad3WaPRKNV/uSTFop5tSDNApdho=;
 b=l0lhWyS92tJ4v4Fi8awMYOPjxX4Md9Dl5Mu/fTKhz0wRstYoWBGUj3rd/G1F/INpLMYL
 eAIIwDEcUWUhrePt/+IvYLMTngjAJ8dve3VNfXSRoRDzouz84SzTCYlko5VdXfUP5CDs
 y8FfFvnxxm6Pqe1xXqp/Qa4ZXF+K6Suqs6XMSQ7uNdXbaN5EcXwx4BTtWAZ304a9KqP8
 C5Abos5iPGhRDPTNCTP5vUKu4qwUPLLqtswIU4k7cgxb0FHjD5VOZkDAEeVkwEeJDhJr
 LvwtQCfmM3uxF3LXGj2cqHTISh1AoJQ4LsyIxAZO+8QaEK6oZo1VAPZHjaqg+1kW3vwu 1Q== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2176.outbound.protection.outlook.com [104.47.57.176])
 by mx0a-002cfd01.pphosted.com with ESMTP id 341gx7ug1b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Oct 2020 18:08:35 -0400
Received: from MWHPR08CA0057.namprd08.prod.outlook.com (2603:10b6:300:c0::31)
 by DM5PR01MB2778.prod.exchangelabs.com (2603:10b6:3:fe::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.39; Wed, 7 Oct 2020 22:08:32 +0000
Received: from CO1NAM05FT035.eop-nam05.prod.protection.outlook.com
 (2603:10b6:300:c0:cafe::ca) by MWHPR08CA0057.outlook.office365.com
 (2603:10b6:300:c0::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14 via Frontend
 Transport; Wed, 7 Oct 2020 22:08:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.163.15)
 smtp.mailfrom=osu.edu; ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu;ettus.com; dmarc=pass action=none header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.163.15 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.163.15; helo=cio-tnc-esr02.osuad.osu.edu;
Received: from cio-tnc-esr02.osuad.osu.edu (128.146.163.15) by
 CO1NAM05FT035.mail.protection.outlook.com (10.152.96.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.13 via Frontend Transport; Wed, 7 Oct 2020 22:08:32 +0000
Received: from CIO-SOCC-EX07.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-tnc-esr02.osuad.osu.edu (Postfix) with ESMTPS id 3912595;
 Wed,  7 Oct 2020 18:08:31 -0400 (EDT)
Received: from CIO-TNC-EX02.osuad.osu.edu (128.146.193.2) by
 CIO-SOCC-EX07.osuad.osu.edu (128.146.86.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 7 Oct 2020 18:08:30 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by smtp.service.osu.edu (128.146.193.2) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Wed, 7 Oct 2020 18:08:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oUkIXfgsOjM5AzliSpFFsdK/suWmAIDu5zQraXHq0L2C8kA9GBzWumCR9ftCBT7tmnveDJV5/GaSBZGbUDi+OkEhqMdOqIWuQBWOTGOjqf5Lslsud6M2398uhBnXtAcrRxCOF091csA8hShsbepUQJbZhY5LLj4i6sspYD9zd7/Op8V8O69Rt7J8PIA4xIaJfpkeEaqtch14QxTmmVcWuo6gvF5tz5uF5mvgAj1Q1cX24tO8qafg2fIa0KHYlE8c5p/txwyFLKHbUVOLJxym/QCAR6We46ZkNP08RNbN17TKO77BtwcIznFR5dnQULDDmXildNg13f/tR5WZHdGLtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FzqyqZMIqm/iLqtgad3WaPRKNV/uSTFop5tSDNApdho=;
 b=hFXHmPEi1JnPqPSkCPZysAew1g6Y4IHK6Om/RANzdPRMfGUQnhDbQMbFksIptN6itH797jqng12LK+n57KCC7UvVmBHm4noifh8V6Lw7AalG65bETjsKbRg381FK6riotn0YmuQaQwBZ1JyHOcui+xVTnEZOXE/FzCp/pfQJ0DFDenXqe3vFAyhHfKxgZt++tg/KaeCFJfA5uN9v8OazHTjdcjUg4mFcjU15Gbt8bsZPwSsoYq6KbMVqVf7lEiVydo+60ghPv0weheUYMyEj1FeMib4C4da6LZH4vKWOKKfAqVl/qu1OaxE8Cjk9MZHaX5/tu2wf8kCDzUA/BLrR9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from SN2PR01MB1968.prod.exchangelabs.com (2603:10b6:804:9::9) by
 SA0PR01MB6171.prod.exchangelabs.com (2603:10b6:806:e5::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.23; Wed, 7 Oct 2020 22:08:29 +0000
Received: from SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::80c1:530a:478d:e4c0]) by SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::80c1:530a:478d:e4c0%10]) with mapi id 15.20.3455.022; Wed, 7 Oct 2020
 22:08:29 +0000
To: Michael Dickens <michael.dickens@ettus.com>
CC: USRP Users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Compiling custom C++ code on E320
Thread-Index: AQHWmx+0qCVoBUv4vEu3D+IGELU4C6mJFrGAgAOa+zU=
Date: Wed, 7 Oct 2020 22:08:29 +0000
Message-ID: <SN2PR01MB1968DF8B71F5CF538EFF1ACFA80A0@SN2PR01MB1968.prod.exchangelabs.com>
References: <SN2PR01MB19689D6667D356E34D42ADE7A80C0@SN2PR01MB1968.prod.exchangelabs.com>,
 <CAGNhwTNtsmSECESTmvPOrivHJzQdNs1xf9C6ntvurGFvTWaJEg@mail.gmail.com>
In-Reply-To: <CAGNhwTNtsmSECESTmvPOrivHJzQdNs1xf9C6ntvurGFvTWaJEg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 936a199e-728e-4646-f2d1-08d86b0d8760
x-ms-traffictypediagnostic: SA0PR01MB6171:|DM5PR01MB2778:
X-Microsoft-Antispam-PRVS: <DM5PR01MB2778D261AF6D5A86AA82D622A80A0@DM5PR01MB2778.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: YL37WxgjDel2lC3gdG6u1XvM8nsdVSDj63pgnB19S9G8TK9JdpD9uo5H6baybkWEqkTRn4Wbymmbq46BxxiZB0cn5e+rCaxw9OsksRJFQqcwETBDj0vDACQVTW8D3IsYTlTp2TYvPrnm7fyfW0U3jkoJ2CkBq6aeiGCi1G5KMQ2PKVpEgi6ueKhZE3E1vzT0SUDpAX9U9B8G1eFgQq06YAcB7BUAOaORxijMkG1VkcyRKwqjtujNXkYSb05YqfrcdktGjtzqOLa4MMsoJkCFgEEZ5z4O3kRhg/KmkIo3xhvH7lLmh7BCFF8cJ00w++dY/1GYj3TtrGOy/iG3Z0MXvrfDPNwjQbdbIIqgEm6U6S46PwfFGn2PiskVKxGf4DDZ9osSAc8PL3tIzlRajywPBA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:SN2PR01MB1968.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(396003)(136003)(5660300002)(186003)(966005)(9686003)(52536014)(75432002)(71200400001)(6916009)(26005)(86362001)(6506007)(53546011)(66574015)(478600001)(55016002)(166002)(83080400001)(8936002)(8676002)(2906002)(83380400001)(76116006)(7696005)(4326008)(66946007)(66556008)(316002)(66476007)(33656002)(91956017)(786003)(66446008)(64756008)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: FNx8rRee+5iZ+JtoSjzCOD7P7ye9D4beHlpZ41hcRXRa6871PvhBZ0EpyBfUEEHoE2+LF738VNHCVM9+zvQ9a+DPyX8spp0zvDQM0gyqmARU8bRKU5+Z4mj5O8X2JioSJ/5ncNo44AIj7zuf3nmKD1iSAExkzFYK//Qz6nQr5TpjwgzaBvAYlkX5NiNLOM07JMCmq37/LN+T12go45ZF3BmCknt8W3cJ4QSKCX2sn4U6OebyTTaCLQbJmzMVT0YA81RrVZqIMD4D+fhDR3XA8bcEFR5qDJNuNkbk1h5nHHfHmwHrlgvVSkmghcFGhab2LEjZpDGqCQfcuALjFS9AUmqqK4X+edQ/sJwoknOh2Ct1zcU+DSrdHkSfzptsbqqH0lWaLG2WVqpOhzJ1wpcuh7R1SPd2fNt2jjSlxgdHE3UmgV4DVZwSDkCL5Ax0HKtK/4ynyWyezuzA1OUXpqXQt3iw5gGxtskmOD6/gvRQRqIsLAXgBdC6wKGQ0yLINBjMupyzEdo3DjoKVF4G8AGWMUvhJQenawYScc8IYk2LwAXLWH5HrVjxXLQO+lCaEXxp94FyC2EU4eEcmPpA8T59YucA68OMOkRG6iST/Lja5n7PBhiu25SMWOP4buAYIQDQCcFDb/SoI/QiqRW41rOKeg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR01MB6171
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: CO1NAM05FT035.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0469e1f9-8e9c-4736-7178-08d86b0d85f6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hBDV8seuZV61FtlrdmzYx3gMwzOSuQcGXkwkZhfaAekbqTIqDJj+RDcHpNjLiTX7KqvnU4WRc6JAEyFwlyEcyBd6vvH9SC0Ud8QOx8Row4BUV4Gm1JR39ligBpiKhHqglc0W24o6kbAG/E7mJu/L8/jdMRw0pOK9CpMmARzCTv1FaKHe7HakOkvH9flijK3f8RaadZE4CaotHmRiXK3N4t9uJ2nqzFNcOVj9Rc6XNhEnNse1HcTmt14bAqwkuWilMNfRweAg8DuDPqYLqpvipiIYcPgnDgIu8EBkYc+9cfY9A1blkZJNsMRaOO1P/mxNvXHX+7wb6Lj1dcyla4juzJF9iHiQ7RTCsG4zqiQDHYudsetTlRbWhsQcqGxBHxVofuI9e6gBt3G/vSt6+hp5pXxCPic3+rDXMjUAr/Ujxc+Gnq7TjGJELsPwbTZ5U80OvxcKI517t0gCR99u10km5sxgZIB5A/+bTKITHGk7Gq5jiggk7BB+zOzB32KjY03X
X-Forefront-Antispam-Report: CIP:128.146.163.15; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-tnc-esr02.osuad.osu.edu;
 PTR:cio-tnc-esr02.osuad.osu.edu; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(396003)(136003)(376002)(46966005)(82740400003)(5660300002)(966005)(2906002)(86362001)(70586007)(33656002)(8936002)(30864003)(75432002)(26005)(47076004)(478600001)(70206006)(6916009)(316002)(9686003)(166002)(33310700002)(66574015)(83380400001)(52536014)(7696005)(53546011)(6506007)(83080400001)(8676002)(7596003)(786003)(82310400003)(336012)(186003)(19627405001)(4326008)(356005)(55016002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2020 22:08:32.1440 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 936a199e-728e-4646-f2d1-08d86b0d8760
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.163.15];
 Helo=[cio-tnc-esr02.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM05FT035.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR01MB2778
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-07_10:2020-10-07,
 2020-10-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0 impostorscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010070139
Subject: Re: [USRP-users] Compiling custom C++ code on E320
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
Content-Type: multipart/mixed; boundary="===============4568768251131608633=="
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

--===============4568768251131608633==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN2PR01MB1968DF8B71F5CF538EFF1ACFA80A0SN2PR01MB1968prod_"

--_000_SN2PR01MB1968DF8B71F5CF538EFF1ACFA80A0SN2PR01MB1968prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

Thanks for confirming that I was on the right track.  I tried following the=
 example laid out in:
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source

I was able to set up the OE SDK without any issues.  When I go to cross-com=
pile, I get a CMake version error.  Here are the outputs:

cmake --version
cmake version 3.18.4
desktop:~$ cd ~/oe
desktop:~/oe$ source environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi
desktop:~/oe$ cmake --version
cmake version 2.8.12.2
desktop:~/oe$ cd ~/uhd/host/build-arm
desktop:~/uhd/host/build-arm$ cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/=
Toolchains/oe-sdk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=
=3DON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ..
CMake Error at CMakeLists.txt:13 (cmake_minimum_required):
  CMake 3.5.1 or higher is required.  You are running version 2.8.12.2

So it appears that the cross-compiler is using an older version of cmake th=
at UHD takes issue with?  I tried messing around with a symbolic link to my=
 version of CMake, then it had an error for python, so I did it again, and =
then something else needed it and it seemed like I was just going down a lo=
ng rabbit hole that wasn't going to work in the end anyway.  Anyone know ho=
w to address this issue?

I also tried bypassing the issue by mounting my UHD folder on the E320 and =
compiling natively on there, but it can't find Mako or numpy.  I tried runn=
ing apt-get on the E320 but it didn't recognize it.  Any advice on which ro=
ute to go (cross-compile vs native copile) and how to fix the problems I'm =
encountering?  I think I'm close to getting things operaitonal, any advice =
would be greatly appreciated!
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
root@ni-e320-31BEE1C:~/uhd# cd host/build-local
root@ni-e320-31BEE1C:~/uhd/host/build-local# cmake ../
--
-- Configuring the Python interpreter...
-- Manually determining build Python version...
-- Python interpreter: /usr/bin/python3.5 Version: 3.5.6
-- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
-- Manually determining runtime Python version...
-- Python runtime interpreter: /usr/bin/python3.5 Version: 3.5.6
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
-- Finding Python Libraries...
-- Python Libraries: /usr/lib/libpython3.5m.so
-- Python include directories: /usr/include/python3.5m
-- Working off of feature or development branch. Updating version number.
-- Using UHD Images Directory: /usr/local/share/uhd/images
-- Build type not specified: defaulting to release.
--
-- Configuring Boost C++ Libraries...
--
-- Checking for Boost version 1.58 or greater
--   Looking for required Boost components...
--   Enabling Boost Error Code Header Only
--     Disabling boost::asio use of std::string_view
--   Boost version: 1.68.0
--   Boost include directories: /usr/include
--   Boost library directories: /usr/lib
--   Boost libraries: /usr/lib/libboost_chrono-mt.so;/usr/lib/libboost_date=
_time-mt.so;/usr/lib/libboost_filesystem-mt.so;/usr/lib/libboost_program_op=
tions-mt.so;/usr/lib/libboost_regex-mt.so;/usr/lib/libboost_unit_test_frame=
work.so;/usr/lib/libboost_serialization-mt.so;/usr/lib/libboost_thread-mt.s=
o;/usr/lib/libboost_system-mt.so;/usr/lib/libboost_atomic-mt.so
-- Looking for Boost version 1.58 or greater - found
--
-- Python checking for Python version 2.7 or greater
-- Python checking for Python version 2.7 or greater - found
--
-- Python checking for Mako templates 0.4.2 or greater
-- Python checking for Mako templates 0.4.2 or greater - "import mako" fail=
ed
--
-- Python checking for requests 2.0 or greater
-- Python checking for requests 2.0 or greater - found
--
-- Python checking for numpy 1.7 or greater
-- Python checking for numpy 1.7 or greater - "import numpy" failed
--
-- Configuring LibUHD support...
--   Dependency Boost_FOUND =3D 1
--   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
--   Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE
CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
  Dependencies for required component LibUHD not met.
Call Stack (most recent call first):
  CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)


-- Configuring incomplete, errors occurred!
See also "/home/root/uhd/host/build-local/CMakeFiles/CMakeOutput.log".
root@ni-e320-31BEE1C:~/uhd/host/build-local#


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





________________________________
From: Michael Dickens <michael.dickens@ettus.com>
Sent: Monday, October 5, 2020 10:47 AM
To: Andrews, Mark J. <andrews.250@osu.edu>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Compiling custom C++ code on E320

Hi Mark - Yeah you can't compile your UHD application for your host compute=
r (not cross-compiled using the USRP's SDK) and expect it to run on the USR=
P. The USRP comes with a full UHD and development install, so you should be=
 able to compile your UHD application directly on the USRP. It might not be=
 fast, but it should work -- and, be compatible for execution on the USRP t=
o boot! You can alternatively obtain the USRP's SDK and cross-compile the U=
HD application on your host computer with the USRP as the target processor;=
 then, move the resulting executable to the USRP and it should work nativel=
y there. The E320 also works in "network mode", meaning that you can use yo=
ur host computer to run the UHD application and transport data samples from=
 the USRP to the host computer. This option is useful and attractive for so=
me users, and the USRP's embedded processor has significant limitations for=
 processing capabilities. I hope this helps! - MLD

On Mon, Oct 5, 2020 at 10:17 AM Andrews, Mark J. via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello,

I'm pretty new to SDR and am trying to run a custom C++ program on an E320.=
  I modified the "rx_ascii_art_dft.cpp" file on my host computer so that it=
 saves the DFTs to files instead of displaying them on the screen (with a 1=
 second delay between DFTs to prevent a million files being created).  I re=
compiled UHD and tested the new rx_ascii_art_dft executable and it seems to=
 be doing what I want.  I was hoping (though not really expecting) that I c=
ould just copy the executable to the E320 and run it on there, but that doe=
s not work ("cannot execute binary file: Exec format error").  I've tried l=
ooking at the manual and searching the internet for how this is supposed to=
 work, but it's not clear to me.  Am I supposed to:

1) Rerun the mender filesystem update?  Will this include the newly compile=
d files or will it simply reinstall the original files?
https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_file_system_wi=
th_Mender<https://urldefense.com/v3/__https://kb.ettus.com/E320_Getting_Sta=
rted_Guide*Updating_the_file_system_with_Mender__;Iw!!KGKeukY!n76mOFRZgL2R-=
vv-BUw7mjYN06Myjvx6t9qwGG9mPpRUJNSjZYcxifXqXshMGK30fDU$>

2) Compile directly on the E320?
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_mpm_na=
tive<https://urldefense.com/v3/__https://files.ettus.com/manual/page_usrp_e=
3xx.html*e3xx_software_dev_mpm_native__;Iw!!KGKeukY!n76mOFRZgL2R-vv-BUw7mjY=
N06Myjvx6t9qwGG9mPpRUJNSjZYcxifXqXshMKzqDBo4$>

3) Obtain an SDK and cross-compile?
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_sdk<ht=
tps://urldefense.com/v3/__https://files.ettus.com/manual/page_usrp_e3xx.htm=
l*e3xx_software_dev_sdk__;Iw!!KGKeukY!n76mOFRZgL2R-vv-BUw7mjYN06Myjvx6t9qwG=
G9mPpRUJNSjZYcxifXqXshMtP5xwOs$>

4) Something else?

If anyone can point me in the right direction or include a link to a good "=
hello world" example/tutorial on creating custom programs that run on the E=
320, it would be greatly appreciated.

Thank you,
Mark


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.com/v3/__http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com__;!!KGKeukY!n76mOFRZgL2R-vv-BUw7mjYN06Myjvx6t9qwGG9mPpRUJNSjZYc=
xifXqXshMuYYn85Y$>

--_000_SN2PR01MB1968DF8B71F5CF538EFF1ACFA80A0SN2PR01MB1968prod_
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
Hi Michael,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for confirming that I was on the right track.&nbsp; I tried followin=
g the example laid out in:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" id=3D"LPlnk">https://kb=
.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU=
_Radio_/_gr-ettus_from_Source</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I was able to set up the OE SDK without any issues.&nbsp; When I go to cros=
s-compile, I get a CMake version error.&nbsp; Here are the outputs:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div>cmake --version
<div>cmake version 3.18.4</div>
<div>desktop:~$ cd ~/oe</div>
<div>desktop:~/oe$ source environment-setup-armv7ahf-vfp-neon-oe-linux-gnue=
abi</div>
<div>desktop:~/oe$ cmake --version</div>
<div>cmake version 2.8.12.2</div>
desktop:~/oe$ cd ~/uhd/host/build-arm</div>
<div>desktop:~/uhd/host/build-arm$ cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/c=
make/Toolchains/oe-sdk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E=
300=3DON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ..</div>
<div>CMake Error at CMakeLists.txt:13 (cmake_minimum_required):</div>
<div>&nbsp; CMake 3.5.1 or higher is required. &nbsp;You are running versio=
n 2.8.12.2</div>
<div><br>
</div>
<div>So it appears that the cross-compiler is using an older version of cma=
ke that UHD takes issue with?&nbsp; I tried messing around with a symbolic =
link to my version of CMake, then it had an error for python, so I did it a=
gain, and then something else needed
 it and it seemed like I was just going down a long rabbit hole that wasn't=
 going to work in the end anyway.&nbsp; Anyone know how to address this iss=
ue?&nbsp;
<br>
</div>
<div><br>
</div>
<div>I also tried bypassing the issue by mounting my UHD folder on the E320=
 and compiling natively on there, but it can't find Mako or numpy.&nbsp; I =
tried running apt-get on the E320 but it didn't recognize it.&nbsp; Any adv=
ice on which route to go (cross-compile vs
 native copile) and how to fix the problems I'm encountering?&nbsp; I think=
 I'm close to getting things operaitonal, any advice would be greatly appre=
ciated!<br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>
<div>root@ni-e320-31BEE1C:~/uhd# cd host/build-local</div>
<div>root@ni-e320-31BEE1C:~/uhd/host/build-local# cmake ../</div>
<div>-- </div>
<div>-- Configuring the Python interpreter...</div>
<div>-- Manually determining build Python version...</div>
<div>-- Python interpreter: /usr/bin/python3.5 Version: 3.5.6</div>
<div>-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</div>
<div>-- Manually determining runtime Python version...</div>
<div>-- Python runtime interpreter: /usr/bin/python3.5 Version: 3.5.6</div>
<div>-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;=
</div>
<div>-- Finding Python Libraries...</div>
<div>-- Python Libraries: /usr/lib/libpython3.5m.so</div>
<div>-- Python include directories: /usr/include/python3.5m</div>
<div>-- Working off of feature or development branch. Updating version numb=
er.</div>
<div>-- Using UHD Images Directory: /usr/local/share/uhd/images</div>
<div>-- Build type not specified: defaulting to release.</div>
<div>-- </div>
<div>-- Configuring Boost C++ Libraries...</div>
<div>-- </div>
<div>-- Checking for Boost version 1.58 or greater</div>
<div>-- &nbsp; Looking for required Boost components...</div>
<div>-- &nbsp; Enabling Boost Error Code Header Only</div>
<div>-- &nbsp; &nbsp; Disabling boost::asio use of std::string_view</div>
<div>-- &nbsp; Boost version: 1.68.0</div>
<div>-- &nbsp; Boost include directories: /usr/include</div>
<div>-- &nbsp; Boost library directories: /usr/lib</div>
<div>-- &nbsp; Boost libraries: /usr/lib/libboost_chrono-mt.so;/usr/lib/lib=
boost_date_time-mt.so;/usr/lib/libboost_filesystem-mt.so;/usr/lib/libboost_=
program_options-mt.so;/usr/lib/libboost_regex-mt.so;/usr/lib/libboost_unit_=
test_framework.so;/usr/lib/libboost_serialization-mt.so;/usr/lib/libboost_t=
hread-mt.so;/usr/lib/libboost_system-mt.so;/usr/lib/libboost_atomic-mt.so</=
div>
<div>-- Looking for Boost version 1.58 or greater - found</div>
<div>-- </div>
<div>-- Python checking for Python version 2.7 or greater</div>
<div>-- Python checking for Python version 2.7 or greater - found</div>
<div>-- </div>
<div>-- Python checking for Mako templates 0.4.2 or greater</div>
<div>-- Python checking for Mako templates 0.4.2 or greater - &quot;import =
mako&quot; failed</div>
<div>-- </div>
<div>-- Python checking for requests 2.0 or greater</div>
<div>-- Python checking for requests 2.0 or greater - found</div>
<div>-- </div>
<div>-- Python checking for numpy 1.7 or greater</div>
<div>-- Python checking for numpy 1.7 or greater - &quot;import numpy&quot;=
 failed</div>
<div>-- </div>
<div>-- Configuring LibUHD support...</div>
<div>-- &nbsp; Dependency Boost_FOUND =3D 1</div>
<div>-- &nbsp; Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE</div>
<div>-- &nbsp; Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE</div>
<div>CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):</div>
<div>&nbsp; Dependencies for required component LibUHD not met.</div>
<div>Call Stack (most recent call first):</div>
<div>&nbsp; CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)</div>
<div><br>
</div>
<div><br>
</div>
<div>-- Configuring incomplete, errors occurred!</div>
<div>See also &quot;/home/root/uhd/host/build-local/CMakeFiles/CMakeOutput.=
log&quot;.</div>
<div>root@ni-e320-31BEE1C:~/uhd/host/build-local# <br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<br>
</div>
<br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Michael Dickens &lt;m=
ichael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Monday, October 5, 2020 10:47 AM<br>
<b>To:</b> Andrews, Mark J. &lt;andrews.250@osu.edu&gt;<br>
<b>Cc:</b> USRP Users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Compiling custom C++ code on E320</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Mark - Yeah you can't compile your UHD application&nbsp=
;for your host computer (not cross-compiled using the USRP's&nbsp;SDK) and =
expect it to run on the USRP. The USRP comes with a full UHD and developmen=
t&nbsp;install, so you should be able to compile
 your UHD application directly on the USRP. It might not be fast, but it sh=
ould work -- and, be compatible&nbsp;for execution&nbsp;on the USRP to boot=
! You can alternatively obtain the USRP's SDK and cross-compile the UHD app=
lication on your host computer with the USRP
 as the target processor; then, move the resulting executable to the USRP a=
nd it should work natively there. The E320 also works in &quot;network mode=
&quot;, meaning that you can use your host computer to run the UHD applicat=
ion and transport data samples from the USRP
 to the host computer. This option is useful and attractive for some users,=
 and the USRP's&nbsp;embedded processor has significant limitations for pro=
cessing capabilities. I hope this&nbsp;helps! - MLD<br>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Oct 5, 2020 at 10:17 AM And=
rews, Mark J. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
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
I'm pretty new to SDR and am trying to run a custom C++ program on an E320.=
&nbsp; I modified the &quot;rx_ascii_art_dft.cpp&quot; file on my host comp=
uter so that it saves the DFTs to files instead of displaying them on the s=
creen (with a 1 second delay between DFTs to prevent
 a million files being created).&nbsp; I recompiled UHD and tested the new =
rx_ascii_art_dft executable and it seems to be doing what I want.&nbsp; I w=
as hoping (though not really expecting) that I could just copy the executab=
le to the E320 and run it on there, but that
 does not work (&quot;cannot execute binary file: Exec format error&quot;).=
&nbsp; I've tried looking at the manual and searching the internet for how =
this is supposed to work, but it's not clear to me.&nbsp; Am I supposed to:
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
1) Rerun the mender filesystem update?&nbsp; Will this include the newly co=
mpiled files or will it simply reinstall the original files?<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<a href=3D"https://urldefense.com/v3/__https://kb.ettus.com/E320_Getting_St=
arted_Guide*Updating_the_file_system_with_Mender__;Iw!!KGKeukY!n76mOFRZgL2R=
-vv-BUw7mjYN06Myjvx6t9qwGG9mPpRUJNSjZYcxifXqXshMGK30fDU$" id=3D"x_gmail-m_-=
5734274394925140215LPlnk480677" target=3D"_blank">https://kb.ettus.com/E320=
_Getting_Started_Guide#Updating_the_file_system_with_Mender</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
2) Compile directly on the E320?&nbsp; <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<a href=3D"https://urldefense.com/v3/__https://files.ettus.com/manual/page_=
usrp_e3xx.html*e3xx_software_dev_mpm_native__;Iw!!KGKeukY!n76mOFRZgL2R-vv-B=
Uw7mjYN06Myjvx6t9qwGG9mPpRUJNSjZYcxifXqXshMKzqDBo4$" id=3D"x_gmail-m_-57342=
74394925140215LPlnk625665" target=3D"_blank">https://files.ettus.com/manual=
/page_usrp_e3xx.html#e3xx_software_dev_mpm_native</a></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
3) Obtain an SDK and cross-compile?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<a href=3D"https://urldefense.com/v3/__https://files.ettus.com/manual/page_=
usrp_e3xx.html*e3xx_software_dev_sdk__;Iw!!KGKeukY!n76mOFRZgL2R-vv-BUw7mjYN=
06Myjvx6t9qwGG9mPpRUJNSjZYcxifXqXshMtP5xwOs$" id=3D"x_gmail-m_-573427439492=
5140215LPlnk502855" target=3D"_blank">https://files.ettus.com/manual/page_u=
srp_e3xx.html#e3xx_software_dev_sdk</a></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
4) Something else?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If anyone can point me in the right direction or include a link to a good &=
quot;hello world&quot; example/tutorial on creating custom programs that ru=
n on the E320, it would be greatly appreciated.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Mark<br>
</div>
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
nfo/usrp-users_lists.ettus.com__;!!KGKeukY!n76mOFRZgL2R-vv-BUw7mjYN06Myjvx6=
t9qwGG9mPpRUJNSjZYcxifXqXshMuYYn85Y$" rel=3D"noreferrer" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SN2PR01MB1968DF8B71F5CF538EFF1ACFA80A0SN2PR01MB1968prod_--


--===============4568768251131608633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4568768251131608633==--

