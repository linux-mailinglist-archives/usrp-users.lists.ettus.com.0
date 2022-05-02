Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B3517541
	for <lists+usrp-users@lfdr.de>; Mon,  2 May 2022 19:01:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32DFD3850B6
	for <lists+usrp-users@lfdr.de>; Mon,  2 May 2022 13:01:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651510863; bh=dO4BkTWY9VtvSg91Ok4JH5ByMGGr7kfvZQwEMRak6CI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=st2c+OJlrPgqPYFrgpODLkcouBHbBhAeg8nsdtjpBomSGGoX7jP3R645nontSdfTG
	 chWyE6/K/XOq9U0rgL5Ruj140XHQ3XY7MMk4EM4B4pIXRNzwsdEQageEje1dLRpjoQ
	 RD4S7oLTeORVtCWI6ZdVCA4qqdtqQHEaBHJVwq1laWSVdHrG89uN05WGZSHQU79Jzx
	 bwTXnIs+y/gNIQMiYE5ZBkIDLl272VcGxroxZyHeCqK50dZMa5uZvUaFYvrubK0p5u
	 Jf6OdvU+adzrNrrDwTuO7gxdzWDeGTcTEtD9Up2VxyrTb9fuz2RoQtRt5VVYJlaLud
	 0A2bQWYrtDhqw==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.48])
	by mm2.emwd.com (Postfix) with ESMTPS id BD409384A3B
	for <usrp-users@lists.ettus.com>; Mon,  2 May 2022 12:59:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="K3B9ropM";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.137])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7EBB7300088
	for <usrp-users@lists.ettus.com>; Mon,  2 May 2022 16:59:42 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2174.outbound.protection.outlook.com [104.47.59.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 579E2140083
	for <usrp-users@lists.ettus.com>; Mon,  2 May 2022 16:59:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QWMKtju6FU8t5CHgiNuWMHwXFABMjVlLOugiaE03pR6BSnnA7hJiCNfCVe3S0teMQlJD/BjUZ1BkLVzM0stZNZLV6Ict+4+CKlTibUwBP+2xqF03ujgdGknzSqxYs2uwTOAdwgpqxrKrCg/oFBrPSdz0+Q3Dv+Fg0OEgrFy3wLdle3BSuR2dpVldCc+u9QY+XOnxEnpJ0Oj2bD9JL6ce8GUwHmutUz1RROXeaf8dAbo/18P5iOiZ9ft51kCJGzG8aCN1CZPsaKC832IKdT8xu+yLsvw5urNqzmCE/QmZXU/vbEMCSh1rA0n5N9iF5mGmKmGbMZyHD8beF/nLb+6dgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QiWxd5dVqJ3fptONa9KomCSzaQ8nNzteQVR5ZNqfZk4=;
 b=aulyCO8hE0hOPBlnBds/AxG9FXazYLS3JsLzkDnEZFFr0k0FC0rdPH+Vw6rgZOnfAFERbz3CsFqvpKxtZ/lNuKfiWZkWBW+kiy8vIz6pcy7hPEpYjxvYn5LqlS1XRNJ9H9BA3pvi+TbhfMfeoH/NVnsuYhdj43XilTyrPZnKXuTV7ykMaZ54MzA4zQwHeJdEWAC3NhYqliwoygK4YZKjyYbekzdZZCo3oB4u1ioxl6mxxrU/PmE4FNmdf7mh02jQOzHBsnG6wWlCRUfrg+IQPYUdKpg+GzvqnzeCZisuzaO7jn2kNp+FWd/owCEOjFQKv6ZXcF2URRZ6+RmafifqCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QiWxd5dVqJ3fptONa9KomCSzaQ8nNzteQVR5ZNqfZk4=;
 b=K3B9ropMUgO9oWvBbf4JWnHTnCRG+pZT4c0DXrmcNLvSs1pxU7+IfmQIFpIO4bjqcw/Bq5u8+8Hsd12ay3lt+0XANd7ZigEZYkSx0nhh4Z54faWZhaA4rcCwkuvLxPKmAXbtuTyhoVcLtGbLHqlM+g3GkepGGzV1aBe/Ur+l+r8=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by PH0PR12MB5402.namprd12.prod.outlook.com (2603:10b6:510:ef::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Mon, 2 May
 2022 16:59:39 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6%7]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 16:59:39 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320 TDC measurement errors
Thread-Index: AQHYXkP+Y4fg2AyFmESoC+vAlJapHw==
Date: Mon, 2 May 2022 16:59:39 +0000
Message-ID: 
 <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1937c41-b6b9-4685-f626-08da2c5d252e
x-ms-traffictypediagnostic: PH0PR12MB5402:EE_
x-microsoft-antispam-prvs: 
 <PH0PR12MB54023048D05661D7E4544899B8C19@PH0PR12MB5402.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sMsUIUmZeelzPbKaQhfOkpYciiABQ9zb6A6t5k/ZoB/WjE1fXZQtm9axXGenhhTKiyBvdaeleiHYEBr2WYMPH3B22Kv6lFRAVpwUhlHgndzKZ4x84jN8qLkGQ3/AkGsj6Wn+C5WMIAL4x4vBLatOzKDKBnsETYF2JU1FMHcRbhZX3l6SFJ0+mmNCVadYqiAV5yj0pLFRhEhH0EXVoLkh7Ql5SxXkEqNbfTyMozgfRhP1+xpaIAxvwO3O3FyLxqyP/EyTSN5oyvo1BQpE7YbnSs2T7yHLRlNoeKb0n0GT7x6Q5PPDZDRlVevZRtXubsBPgu9c92eluIilrkhbzFUobCOcLykviLbZwuVUd7gSV4cz5wKXgRso7jRIz4rI8Qc4zCZk0siGfltGgrRyj2OxQgStUj0AMpDE9o5apIvTYRJKNt0lPuf410V97P6gac+0GBeAPfe9bE5QWQAFrzBapxNI8oyl2EZtXwvTdCnyK3dOWuv4EMWB9wbL64HRplZPTBjTlqD6Gu468aPDz/m3MXZ8+/tLK83ozTLstOA9V3fovdZJ1Dam6DSgCxt/H8QaH1vo+ZBg0UL/IerL1NLdzuOLg/Kwnzf0m2Ekm97e1aq/BkL5l4xNuDvvYs7RDfg/2yxF8k/zsh5WfdHVi7mH0I1ZnlKphPH3hFmpGaV7uPO7LLSTLP1RwH0uaJHBllcgn34lrRHvRVPTmubrQ+CuOg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(136003)(366004)(376002)(39830400003)(346002)(83380400001)(76116006)(8676002)(64756008)(66946007)(66556008)(66476007)(66446008)(33656002)(6916009)(186003)(19627405001)(316002)(2906002)(55016003)(86362001)(26005)(9686003)(6506007)(71200400001)(7696005)(5660300002)(38100700002)(508600001)(52536014)(8936002)(122000001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Ay1dvkLZW/UI30XEzL+qEGB06rCQPBCKh1Rys9ny0dKHmy0n0Id1coDVrU?=
 =?iso-8859-1?Q?a5BURDQqVFfyzV1PNPCpxTT/afn4I2VZJgGckMG3kRWQkK9gP56UErMzRL?=
 =?iso-8859-1?Q?OZeFoy5oyt9ofMLO8gZYcg/alyemqS/+Nk+jqLukr/RbKZ6UVNRVI2Kct1?=
 =?iso-8859-1?Q?1T2dus6PUwnYQc19yzBDMV64DSlgJXzEcaeVC9bSFuIlT8FA70BBiRGn3h?=
 =?iso-8859-1?Q?Th0eyy4LMt6qNrFxHOUBFdz9Mv1MABGoKsScfpPyZQQ5UBqllNVxshzqmo?=
 =?iso-8859-1?Q?dULG49DEZfPKYkg9jHuBdccy28hXa7B7Fw+QuQuqfIVFpBxixSiq1hsxxA?=
 =?iso-8859-1?Q?5ahScYB2QrJH+Qdp4NkLEG1YWrwzCDSgDsRPHmKU1vOaKjhsUXyYeJn4Mw?=
 =?iso-8859-1?Q?NeN/FQOPE4bZ3KrgXGA04j/AcCcgE2djg6RqYfYOqFuSChvT0JHLy1tXi4?=
 =?iso-8859-1?Q?EGwx6U7I5N+6Yinwaw+iQxDq30hTAKDAIHk1CP9f6n/8J6Z5haS/yFzMpR?=
 =?iso-8859-1?Q?eClTE1/mmOjZQFzvr2bu+8HWzD3TYFQgR1YhsNVRUFEMHkclnUptov5TA7?=
 =?iso-8859-1?Q?ITnilwTtQ+NZjmxBj5KF7mQY7yMx0koAj1p7qQHvmKUBZsbZXTcKPNUsrN?=
 =?iso-8859-1?Q?h/uJlUfHBoXWQj3HU1GZeDH7AR0c1jyXr+40VK3zMHrZSSGJjzLpYBdjWj?=
 =?iso-8859-1?Q?h0QSJ7divdPn+Q8kdVWoK8UYxwojUFbQdLVw8vJ/AJTnh5I6/OsiOHBLBG?=
 =?iso-8859-1?Q?b72UfJr24JcDSXZOWFeFkN0o8zH/s/xwusVAfyJVAn+L2Fo5n5JyffMO1Q?=
 =?iso-8859-1?Q?C1t4z+5QtATFwYlHZlec5e56h11ElA5hH4X5YerhXvQHv5AAu64+XLxeIR?=
 =?iso-8859-1?Q?nzcdae3lqCgaxsSfsyGjrWc28ZaWeuUdMrACe3WgoRKA2grWDcJ43438v2?=
 =?iso-8859-1?Q?7NOUlWAd4AoqEWu5sZFVwrWsUEZnB6R5yeulsyIzq7bMOq+fQjFh++DNZY?=
 =?iso-8859-1?Q?cby1z9rQWJ3Hq+CZM5pRt2hiWOe2GYIViF52bIDH2ITwJUf+wu3HTHgCUO?=
 =?iso-8859-1?Q?gnG9Os9d/DwLH+Sbzsn5X3JUrEb4MVigOjpCTInztUsKK1QtMSUH9vexvz?=
 =?iso-8859-1?Q?qm1DJNckj6VrPxx8OXTlMrN5tdun6BBzYH55NFxmAIp7UjLcIXUXHQAEXE?=
 =?iso-8859-1?Q?5YhlBJ4RFT2sTEzCXM6iO1wK3wjMEU6X3opFjdu/Q9VETXMuOY2fSX4dDW?=
 =?iso-8859-1?Q?FANN8I4pE9w8wnNqkBZzcEh95X4/ZOaXNXjIZiV/gnzZCBykoJc5Dx9qdc?=
 =?iso-8859-1?Q?iCpTsVMtPv8iY13h/WkAo5MiEr5g0aZOGOnT1+dmCVwTC485XpjJHVXgaj?=
 =?iso-8859-1?Q?xTn0ege5O2KqpbpsT6rM/LeQtrKuD4iBGiqYCIgg5ke393UN7rpMFdU51f?=
 =?iso-8859-1?Q?bp7W+3FJ9LHVtYH0s7bZD27Na2iv0qcpk5s6kBzd1vkZMLktWkkgRGqA3o?=
 =?iso-8859-1?Q?GNy9n7NA7tX+Ww99/pRhr8iqe1/x28bQNoL3eZJrS2zcaO+FVwfWyi0r2Q?=
 =?iso-8859-1?Q?xI5LDmV1YGZAcHNerGEHK3UVrK9rzZFpicB3i2uyPbbqfHLzgqrJbCuK+q?=
 =?iso-8859-1?Q?ASmsvHJSiv/OYmkAN8GWeRn34DJil/FMA/TkoSWdAgwpNourga67GEGZCT?=
 =?iso-8859-1?Q?i9Wh2msvnOTa2CL110vaKvm7i/+zXeRO9u6ID31anYCqMcyadfM7HyZVNP?=
 =?iso-8859-1?Q?ZySwLLutWnO9hz+EOMbTOmuklybv88r4JE4P450fixadsf0F5E80wAhXjl?=
 =?iso-8859-1?Q?lPF9HoW05Y4G+dWHL7wpgChR2eVNLwc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1937c41-b6b9-4685-f626-08da2c5d252e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 16:59:39.3605
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Id0J0iCaSV/XNWCxasCmZ1Ch0o5RWudpkqj7uwJyjt4n8bONfYzUuvSHaKGvvXA7SXzB4VbHD2fwwSTixIzS2tzSwLcj06132qMwzta9AbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5402
X-MDID: 1651510783-Hq2zc4qbli7g
Message-ID-Hash: 3CKUXONCUYDPP4ZSR5AQZ7DMKKDF6XL5
X-Message-ID-Hash: 3CKUXONCUYDPP4ZSR5AQZ7DMKKDF6XL5
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JD3PUT7HOT2ZXQ63ZWNW7VHZN6HEI5JJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6246003070856488133=="

--===============6246003070856488133==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33120210FE804565B1B42888B8C19MN2PR12MB3312namp_"

--_000_MN2PR12MB33120210FE804565B1B42888B8C19MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different radios maybe once a day or so. I've se=
en it when using either external time and clock sources or internal (doesn'=
t seem to matter which).

Here is an example of the output of a uhd_usrp_probe when this occurs.
----------------------
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[DEBUG] [MPMD] Claiming mboard 0
[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=
=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'. RP=
C address: 192.168.40.2
[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3DTrue,=
connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboard_1_p=
id=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,eeprom_=
version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.clean,=
fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_version=
=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D16962,p=
roduct=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40.2,s=
erial=3D31EDED4,type=3Dn3xx
[DEBUG] [MPMD] Found 8 motherboard sensors.
[DEBUG] [MPMD] Initializing mboard 0
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Check yo=
ur clock rates for incompatibilities.
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[ERROR] [RPC] TDC measurement out of expected range!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out of ex=
pected range!
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC me=
asurement out of expected range!
----------------------

If I run uhd_usrp_probe again immediately, it always seems to work fine. I =
don't think this is specific to any of the 3 valid master clock rates, but =
I've seen this happen after a fresh reboot of an N320 with a uhd_usrp_probe=
 -- so it should have been set to default parameters. I also feel like it h=
appens after a radio hasn't been in use for a while, but I'm not sure if th=
at is always the case.

Does anyone have any idea what might cause this?

Thanks,
Jim


--_000_MN2PR12MB33120210FE804565B1B42888B8C19MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different
 radios maybe once a day or so. I've seen it when using either external tim=
e and clock sources or internal (doesn't seem to matter which).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Here is an example of the output of a uhd_usrp_probe when this occurs.</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
----------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[DEBUG] [MPMD] Claiming mboard 0</div>
<div>[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,prod=
uct=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'.=
 RPC address: 192.168.40.2</div>
<div>[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3D=
True,connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboar=
d_1_pid=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,ee=
prom_version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.c=
lean,fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_ver=
sion=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D169=
62,product=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40=
.2,serial=3D31EDED4,type=3Dn3xx</div>
<div>[DEBUG] [MPMD] Found 8 motherboard sensors.</div>
<div>[DEBUG] [MPMD] Initializing mboard 0</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Che=
ck your clock rates for incompatibilities.</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [RPC] TDC measurement out of expected range!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out =
of expected range!</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span>Error: RuntimeError: Error during RPC call to `init'. Error message: =
TDC measurement out of expected range!</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant">----------------------</span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant"><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant">If I run uhd_usrp_probe again immediately, it always seems to work=
 fine. I don't think this is specific to any of the 3 valid master clock ra=
tes, but I've seen this happen after
 a fresh reboot of an N320 with a uhd_usrp_probe -- so it should have been =
set to default parameters. I also feel like it happens after a radio hasn't=
 been in use for a while, but I'm not sure if that is always the case.&nbsp=
;</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant"><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant"><span style=3D"background-color:rgb(255, 255, 255);display:inline =
!important">Does anyone have any idea what might cause this?</span><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant"><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant">Thanks,</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant">Jim</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span><span style=3D"background-color:rgb(255, 255, 255);display:inline !im=
portant"><br>
</span></span></div>
</body>
</html>

--_000_MN2PR12MB33120210FE804565B1B42888B8C19MN2PR12MB3312namp_--

--===============6246003070856488133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6246003070856488133==--
