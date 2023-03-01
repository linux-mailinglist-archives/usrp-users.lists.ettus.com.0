Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB556A6A63
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 11:04:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98615383D7B
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 05:04:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677665059; bh=3CyLuwa7yrHC6gIELK4GRGyT6QRUm2r78nBJVp2hzyM=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=xtAJF+Zrc7k/4sweyrVOfjQpvm3RYdbkDF0uJiWGMo4WIYMk0DHfoaGM2OgkKQ0EG
	 3gE8LhTyEhSonPnOnhGlOidICVk+xuvtZmDLwfLNDSwQOS4oQ59rQMBhUWranu6bxB
	 F0HA2E0iUhjCk0OWKF7XOXDYUk2XaPNebHlZ0N1jqB7uTjhyYagnr5tW6NbqrTP5EZ
	 Gbm3TXAjQRlgUvumHuMACkuzJKgsNAY1lxAE8KkQ2daK/5kO3nm1kz44m7mrFX9CUx
	 16Xhr9RLxRE30qU7Dg6yJu7G0HTfru5eVocMnsPpMHBiRmROnjwyXMl1PjUpj09p54
	 dh4HpzgcpaC3Q==
Received: from mx0a-00164e01.pphosted.com (mx0a-00164e01.pphosted.com [67.231.148.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DD91383D7B
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 05:04:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=molex.com header.i=@molex.com header.b="TUpPA0CZ";
	dkim-atps=neutral
Received: from pps.filterd (m0048128.ppops.net [127.0.0.1])
	by mx0a-00164e01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3212M5Y9021140
	for <usrp-users@lists.ettus.com>; Wed, 1 Mar 2023 04:04:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=molex.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=00164e01;
 bh=W9Drn/f8m73Pn8NB9n0ELEMXXMJHe1/OTybV+oAx+o4=;
 b=TUpPA0CZ8NbQt8y5o/qdnkj3+Vqy+/SMugXsPsprgRqWKQZynprd59fZa5GmOm/SfybZ
 tjbpOMdeU62eEaOd2T53AqzurlY6vcLySr86vPUKoZb/kVGGC6eOX/Q6RAlKPtNeS05k
 Td1Lhy0oBfnXmD84CUxJ2G840zoAmYbl8kIJFrzRQpre3i1/AR10SBojlfPQLt7uqHXZ
 7Vm0nIupb63SUHD/3l7kUFGlHIHCUv1xDj4eDe6RV4KWJ9AAg0kAC4aVH2epzm5EUGwq
 5N2Cr9bNrag60a0DhaSSY89JzRMuh6kmufsEdTEVDcBEKVJ9cqW5EWo3E3YMGzUDZuLA FQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
	by mx0a-00164e01.pphosted.com (PPS) with ESMTPS id 3p1s1pb0ax-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 01 Mar 2023 04:04:10 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WIBL28ZEgdJzcR/EcSzZDVs2LCPqld+rHDLsKdyz7PfetIpWyMldiHNwWUXczRlyvZY0MC+B+9JcwWV7RRW99xMrabXItXmQGezz8Jh0qm2Hy2xzR5Kf3MFp1M0LIBm+boAyGArkriFH9fK0jUlePsTRy5rCfBFwPa6sx/UN7Q2exM5e9CMZACHQyC88/o6BbkhxVLquO0qUti6vs8Vz+OfWqKAmDGlYDVhbQUWIDV8M88j6C3CiNJxXikYAI2DHqz72F9hLPqJjVWw5cOM/UHmwbWutmYu50uJVdTd3rfILdQ2386UHW5uJcDH5BRdazqLAtmcs8zT++V3djvuGzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9Drn/f8m73Pn8NB9n0ELEMXXMJHe1/OTybV+oAx+o4=;
 b=ZutWL0IsfS0BYsF2A4nsTxYqA4We/wfZ7Xzuoy7CMPMLz/V3IzLwPq24TVMq8tfE4/5m95OCpco7cI98pqQyBK1KG6z/VAPmhAdZM+EIIeDfksffj3cKg/3KWFmkRo9EpdmObOG5PHgvsY0riG/1C33wqVzT9pKMuKgsKvooBl/v2YvXHjPjZXRq8NfvGjruCgyHMHt5oWJ39J6c6pHmARx4ylg5XErQJviup9kNQ9Lmkp/nXg7hTJn8bhp/y3rvjXlsfwetSDPBU2kSst6cBsRLaJjVzF9Id3G3t+bzMHTXnjv/xkeLnf5om/ElZbhWBq8gpEMPsyyWf3OQmHbR5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=molex.com; dmarc=pass action=none header.from=molex.com;
 dkim=pass header.d=molex.com; arc=none
Received: from PH0PR15MB4704.namprd15.prod.outlook.com (2603:10b6:510:9a::7)
 by MW4PR15MB4730.namprd15.prod.outlook.com (2603:10b6:303:10b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Wed, 1 Mar
 2023 10:04:08 +0000
Received: from PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d]) by PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d%7]) with mapi id 15.20.6134.030; Wed, 1 Mar 2023
 10:04:08 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: What do I need to do to make uhd_usrp_probe see my custom RFNOC
 module?
Thread-Index: AQHZTCBYMK/vG6/85UG66FXxbOMJlA==
Date: Wed, 1 Mar 2023 10:04:08 +0000
Message-ID: 
 <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR15MB4704:EE_|MW4PR15MB4730:EE_
x-ms-office365-filtering-correlation-id: d5199283-5c73-46a2-ef36-08db1a3c4c26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 YF+LnZdMFUb3Iuf8D8Nab2xVUnxwQ8GashlOmEyThlfxfgB59gFYfWP+ZlmalX5rf1Nf9A4WsX3l3sjVVwZtOTPaZIPKgBFilXQIxdSct/Rqu57BIGxgfx4HuQEbV3mWpmlg6Z3u6Cn4G2IPpllglqcyciiX/WxkEbp6FQbg4GO/YZSKo5idfXZfJ4RH7aM5W1Hknxyzth4Jhz2qsFxnsq5DRViD8jrsPH1GxNliB11gRlY2yjK36xr5ZJiPRAM9lM5GdQAF6pUGk/SHoUj1kf4xabC5boXCkRd+Bd69M7nzCsfAolipwRsIzA5cM8OkHkKJ+BM3PupDacHbSiwRzUPy7GlUzRX8NsWkiIlk8klS1J9NjpZ/t5yI/7S/BCgoXK6qyrc9FTXHG5poRqGHsucVOrDMMCWObIMPFwgntVAmbVHINAHeJDm5NFOnZFSKciP7bdikk/QQF24t8EWxw8HfB4uApW7YKLdQT9mGg/oSCXd0mCJKR9faSorVPPgGEnE05sGD54w/cm6ei9eyzMkkZIqEQl6T1tTxh7wTmhRn+18JcThOo0v4tXqdCH9Z4ThP3A0MrBy+RfjdWhuI7V1llZ0AtRO/rTZP/Y53A28C+GRIAsSjdBe7oR7fEog9LcgLASuGoD+xbyUiLq9S4d60ZC8ECkgy6uc52G4yXEJi+1u48xqnB3nYhrqhPXRUsqI5Tup/r/mqQRd56P3l2A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB4704.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(451199018)(33656002)(15974865002)(316002)(478600001)(83380400001)(71200400001)(7696005)(91956017)(6506007)(9686003)(186003)(8936002)(52536014)(38070700005)(86362001)(2906002)(41300700001)(5660300002)(66946007)(66556008)(55016003)(8676002)(66446008)(64756008)(38100700002)(76116006)(6916009)(122000001)(82960400001)(66476007)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?x88KlIAhmvqr3sm4kmKoIqapy5sohNYJhW+PgvjfQ+yktJeQG7uGIbq1uJ?=
 =?iso-8859-1?Q?M3yU38ijGFcYyuaxOCqd0a18V6o2gv52hENf6vttzdfAWcb1H6EEfYykXY?=
 =?iso-8859-1?Q?8vCoM/eZw7p5DA8mckixUK6aA64YkxFtmsrdB7oIDR/Tq/a2Ufk89rrLjf?=
 =?iso-8859-1?Q?S8VA89TDPiZt2b6i4yTV1ZG9uDLJnhFkZKS+/N2azFiTvy9Il55vonShqv?=
 =?iso-8859-1?Q?Yo3ezc5XVs8UxgdsXML+xLU5sy103aZXMXiJXeLeHNhHIG9VPUjW76YAUI?=
 =?iso-8859-1?Q?V8Fp8h+gx5QPONEF1nM7BFpcN/vt99rrnXIBzeNbHR9zT7quzNJpoxJ8hO?=
 =?iso-8859-1?Q?GrcG8QtXVuM7lLs/eIH+EmrtywEIHq2za0yqogOXroRb90w6TZByW3k32s?=
 =?iso-8859-1?Q?Q+0nyVBQXbXZMCgQSbNT49XxDm5HBWOJbJVN7aK2WBj7NOenGD5TElbqn4?=
 =?iso-8859-1?Q?4NaG/ii8hlvcYyYIX5KM2xxua5wQ54bmmKaqXTUFKYM/wm6MARQGMD+ph/?=
 =?iso-8859-1?Q?/tGRdow+fID6Zt9bdYn/BS6qzNyi1t/EREZmbfsgVJeXdEmwrg/u7vgvrn?=
 =?iso-8859-1?Q?Joq2Cz7e7ZHd2iIfjyXbrjctivuEzN04Vy92H7nDJvhByoUdJKIhDepNc+?=
 =?iso-8859-1?Q?U3BfHtGWUUV+JNJKgnu7HOlmYIpwitlKX1KMFxlJnYL7h32QcTacFlg2el?=
 =?iso-8859-1?Q?0kiFna3zErQ0ojcsv+jOXAzgjjFRzJoaKISNoJ73IH9N79Xb73SnWLP/eW?=
 =?iso-8859-1?Q?pyTKlEWnIpr8DTjhy/SPnIygNF16FMEc4UalYz+xC14AKfpP3uGsJcXJl/?=
 =?iso-8859-1?Q?YS9TEjShYGT9Xl7kFvT1/qs8fWlYD4YGyuwiXzm+IRL8luG5+fkdl8gnGb?=
 =?iso-8859-1?Q?k3RI7S/Ize1daaCMXZtOLZ8f9EBCOKg9KZSnuE/oowBq60UE3N3wXdo1zU?=
 =?iso-8859-1?Q?rxB34wVG3amYNeQFlP8EI/3xh4Mol/dUX+zU73aOWn70fVZtevKRhgRafX?=
 =?iso-8859-1?Q?cuD01evGvHXODNT5NDYZhgKCsWirsXkGmU+7FV69vJh37SShnwoDfAtGYH?=
 =?iso-8859-1?Q?U+wGJRhxDUKKo3lXF+AeWrLL+sXKNQdQFoZnLtIOFc8zfSnq9nOSxPNsLP?=
 =?iso-8859-1?Q?zXlo8QTHSr0nMr/rs6v7F01eETSoO+9qBvSOc3PambRHlvjkOkznhokOCN?=
 =?iso-8859-1?Q?yAlibUVn058/lDDD4Ay2gxpWYBYkKHPJEE/wvlEBCM8AqeGB0Zow2eX6PL?=
 =?iso-8859-1?Q?0AWQZw908b+34KauQJ166rO8HSmr7vs8BM3PNVaGS2vOVN0Sh1HUobX8NA?=
 =?iso-8859-1?Q?QQFP3rPFOiXimk4YDfGWYhZdzUi2TcoqOKvASpHWyfzuTxf2cQko7pIQS2?=
 =?iso-8859-1?Q?FOrmMWnIPKF96Cs+xaMCpeAMAasj5WfzpadYcrVwf0enMTjIwuzR4f8tbS?=
 =?iso-8859-1?Q?w164Q9pTm02DZT/4/gKDRo8eMIeVPR1AoJP4eOBeA7hufHxSONRtvKSTTD?=
 =?iso-8859-1?Q?mJYbIzEtfgEi8OOs36Wmh1oynrwclUvXCMXhiIAxObzOId2g8ELu9c1FH7?=
 =?iso-8859-1?Q?+aRBfDL90NCZM2/UzfN3PHAftWgEi8eryMkt9MdG844c5r4hE1eypeZKHD?=
 =?iso-8859-1?Q?WmCMTLT8FC8Qe1gMeWx5xxBNPvw4koUtOZwcB+IMpMJA8aScb1ruwjdQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: molex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5199283-5c73-46a2-ef36-08db1a3c4c26
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 10:04:08.0724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 101ce67d-13f2-447a-bb65-0989b89dfdb4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +59cf5F7gEEc+PqbQk94bRuh5GII+lZh4U9M67qqsM8GUpGSH/Mr+7SpPAdDHcNIkpVwrTq5lzZMxkkSDFVJYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR15MB4730
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 2a10:3781:1f::465
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-disclaimer-hash: 0c6d048b2a9fb806923cec0a756adc963e7cd1169c28b6f2f2da544dd13766d1
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: MW4PR15MB4730.namprd15.prod.outlook.com
X-Proofpoint-ORIG-GUID: 0YHCgzeo265Mlf5B-E0eWOQXvvub8mr6
X-Proofpoint-GUID: 0YHCgzeo265Mlf5B-E0eWOQXvvub8mr6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_04,2023-03-01_01,2023-02-09_01
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: TBUR7JTWVJ4BLVYRW32H6TULTKY2JYHQ
X-Message-ID-Hash: TBUR7JTWVJ4BLVYRW32H6TULTKY2JYHQ
X-MailFrom: prvs=842405d7a4=bas.vermeulen@molex.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZSBP5YRZ5EBWSVHCNHML7FP2WQXLJFBI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Vermeulen, Bas (Consultant) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Content-Type: multipart/mixed; boundary="===============3062844380289489460=="

--===============3062844380289489460==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9PH0PR15MB4704namp_"

--_000_PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9PH0PR15MB4704namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I've created a custom RFNOC module with two blocks, and have it installed.
The module.yml files are in /usr/share/uhd/rfnoc/blocks, I have a library f=
or it installed in /usr/lib (and VHDL files as well somewhere).

When I run uhd_usrp_probe I see the following:

[INFO] [UHD] linux; GNU C++ version 10.2.1 20210110; Boost_107400; DPDK_20.=
11; UHD_4.3.0.0-2molex1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xdeadbee=
f, 0xffff
[INFO] [0/Block#0] Setting default MTU forward policy.
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xdeadaff=
e, 0xffff
[INFO] [0/Block#1] Setting default MTU forward policy.
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X300
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30817
|   |   mac-addr0: 00:80:2f:34:fa:ba
|   |   mac-addr1: 00:80:2f:34:fa:bb
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.50.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3252D36
|   |   FW Version: 6.0
|   |   FPGA Version: 39.0
|   |   FPGA git hash: 1e718d9-dirty
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/Block#0
|   |   * 0/Block#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/Block#0:0
|   |   * 0/Block#0:0=3D=3D>0/SEP#0:0
|   |   * 0/SEP#1:0=3D=3D>0/Block#1:0
|   |   * 0/Block#1:0=3D=3D>0/SEP#1:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 324BFA8
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 324BFA8
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 324BFA6
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 324BFA6
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

How can I make libuhd correctly identify my custom RFNOC modules?

Regards,

Bas Vermeulen



________________________________



CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the sender, is prohibited.

This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly prohibited.

English | Chinese | Japanese
www.molex.com/confidentiality.html

--_000_PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9PH0PR15MB4704namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
I've created a custom RFNOC module with two blocks, and have it installed. =
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
The module.yml files are in /usr/share/uhd/rfnoc/blocks, I have a library f=
or it installed in /usr/lib (and VHDL files as well somewhere).<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
When I run uhd_usrp_probe I see the following:<br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace;">[INFO] [UH=
D] linux; GNU C++ version 10.2.1 20210110; Boost_107400; DPDK_20.11; UHD_4.=
3.0.0-2molex1</span>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[INFO] [X300] X300 initialization sequence...</span></d=
iv>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[INFO] [X300] Maximum frame size: 8000 bytes.</span></d=
iv>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[INFO] [X300] Radio 1x clock: 200 MHz</span></div>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block w=
ith Noc-ID 0xdeadbeef, 0xffff</span></div>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[INFO] [0/Block#0] Setting default MTU forward policy.<=
/span></div>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block w=
ith Noc-ID 0xdeadaffe, 0xffff</span></div>
<div class=3D"ContentPasted1"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">[INFO] [0/Block#1] Setting default MTU forward policy.<=
/span></div>
<div class=3D"ContentPasted1 ContentPasted2"><span style=3D"font-family: &q=
uot;Courier New&quot;, monospace;">&nbsp; _________________________________=
____________________</span>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">&nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; &nbsp; Device: X-Series Device</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; Mboard: X300</span></di=
v>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; revision: 11</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; revision_compat: 7</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; product: 30817</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; mac-addr0: 00:80:2f:34:fa:ba</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; mac-addr1: 00:80:2f:34:fa:bb</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; gateway: 192.168.10.1</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ip-addr0: 192.168.10.2</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; subnet0: 255.255.255.0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ip-addr1: 192.168.20.2</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; subnet1: 255.255.255.0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ip-addr2: 192.168.30.2</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; subnet2: 255.255.255.0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ip-addr3: 192.168.50.2</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; subnet3: 255.255.255.0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; serial: 3252D36</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; FW Version: 6.0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; FPGA Version: 39.0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; FPGA git hash: 1e718d9-dirty</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; RFNoC capable: Yes</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp;
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Time sources: &nbsp;internal, externa=
l, gpsdo</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Clock sources: internal, external, gp=
sdo</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Sensors: ref_locked</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this de=
vice:</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp;
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Block#0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Block#1</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Radio#0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Radio#1</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Replay#0</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; Static connections on t=
his device:</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp;
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/Block#0:0</spa=
n></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Block#0:0=3D=3D&gt;0/SEP#0:0</spa=
n></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/SEP#1:0=3D=3D&gt;0/Block#1:0</spa=
n></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; * 0/Block#1:0=3D=3D&gt;0/SEP#1:0</spa=
n></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: 0/Radio#0</s=
pan></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007d)</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Serial: 324BFA8</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; ______________________________=
_______________________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0=
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Name: UBX TX</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, CAL</span><=
/div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.0=
00 MHz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5=
 step 0.5 dB</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0=
 to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Connection Type: QI</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#0</s=
pan></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007e)</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Serial: 324BFA8</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; ______________________________=
_______________________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0=
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Name: UBX RX</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL</s=
pan></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.0=
00 MHz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5=
 step 0.5 dB</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0=
 to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: 0/Radio#1</s=
pan></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007d)</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Serial: 324BFA6</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; ______________________________=
_______________________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0=
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Name: UBX TX</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, CAL</span><=
/div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.0=
00 MHz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5=
 step 0.5 dB</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0=
 to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Connection Type: QI</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp; _______________________________________=
______________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#1</s=
pan></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007e)</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Serial: 324BFA6</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp; ______________________________=
_______________________</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0=
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Name: UBX RX</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL</s=
pan></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.0=
00 MHz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5=
 step 0.5 dB</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0=
 to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</span></=
div>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></d=
iv>
<div class=3D"ContentPasted2"><span style=3D"font-family: &quot;Courier New=
&quot;, monospace;"><br>
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif;">How can I make libuhd correctly identify my custom RFNOC mo=
dules?</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif;"><br>
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif;">Regards,</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif;"><br>
</span></div>
<div class=3D"ContentPasted2"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif;">Bas Vermeulen<br>
</span></div>
<br>
</div>
<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
www.molex.com/confidentiality.html<br>
</font>
</body>
</html>

--_000_PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9PH0PR15MB4704namp_--

--===============3062844380289489460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3062844380289489460==--
