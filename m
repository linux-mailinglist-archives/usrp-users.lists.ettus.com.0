Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B3697CEC3
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 23:29:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7013385828
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 17:29:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726781394; bh=/83ObqBW7b3zS+O7py1Wj6ItbBkSxh0K62xRK2aqVi4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=McU1oOMUihMAVsByEfp/4FUi1AtKmTNB9xxUii83ouudtGWo7uImLRaORMfsH10WH
	 HaLzn9+Xm++t55hyNceUQx8ArRqg6q/zuKwoCetDCGHXIzovBt32dX0xitkr7OH/qr
	 B12y039UM2JKi+rYo6WJLfzFak0LMUXpIz6JznRmfqCaeMaFhyiHcEf7qo3xqLLKNR
	 Dg2XDjDsIMX5KhfHzAjb1YD8EcoTqIC2lX4AWEw2VXMpMT4/jXcfDf7WbrZIZANyXf
	 g/7HhbYpardrrHU3uc51j5oFIBYD62qtEh7ajRs5q316N55CSQXo1AfPvO1dq1dkJT
	 5acSkLrBo2snw==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id CCF1338584E
	for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 17:28:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="tiwD8INl";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="mD1SvdI3";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1726781330; x=1758317330;
  h=from:to:subject:date:message-id:mime-version;
  bh=SY9vUhsohVZqrq37UfL2qS7f9iTAXrwzWxr70SWshrw=;
  b=tiwD8INlLjYipncXsgRE9psY9ZLbg/DCVZLFbgooD23GtbAvayWoAelP
   SPQtBrydsHmfPowl73R4uOOy/juz1FFac7p9KsqEPe9rK6y2UdWChyaFm
   pJPdNPfW3aDIY2fdcPgpgXlE3g+o5vSbjc2eZ2S5+daprhMfiswGrWzON
   A=;
X-CSE-ConnectionGUID: spZ2gmN9SV2tRBXk++XcCQ==
X-CSE-MsgGUID: v0cU8ZGbS+agdkeLcRrm+A==
x-SBRS: 5.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="5797585"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600";
   d="scan'208,217";a="5797585"
X-IPAS-Result: =?us-ascii?q?A2HxAAAvluxmmAwBXShagQmBT4FBgQN7gWauBoZWgSUDV?=
 =?us-ascii?q?g8BAQEBAQEBAQEHAkQEAQEDBIUAAooEJzYHDgECBAEBAQEDAgMBAQEBAQEBA?=
 =?us-ascii?q?QYBAQEFAQEBAQEHBAECAhABAQEBAQEBATcFDjuFdQ2ECIEmAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBHQI1gRwBATgRAQwBcicEG4J5gh0NBwMxsVSBNIEBggwBAQYEBNsdGGGBY?=
 =?us-ascii?q?wmBSIN7hFABKoEyiTeBVUSBV0eBcAEBF4R7IIQTgi+SDYdkhApyhxSBdpB+g?=
 =?us-ascii?q?UciAyYzIRMBVRMXCwkFZIhUgyaCFIQWhSWBZwlhiVaBPoFZgzlKhVKBBoJRa?=
 =?us-ascii?q?048Ag0CN4IqgRGCWoUqHUADC209NRQbBQSBNQWqNwQLA4JMghCCRaQpgXuMW?=
 =?us-ascii?q?ZRaNAeEGoFdBgygAheqRZh1oyqFSQIEAgQFAg8IgW4JWIEuMxowgypSGQ+OO?=
 =?us-ascii?q?oNhxnF4OwIHCwEBAwmNMgEB?=
IronPort-PHdr: A9a23:CNgEBhcHMwjMST+SYqmRZTn+lGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:bn8K0Kg1q8QqIlssto2+Ax5TX161mhAKZh0ujC45NGQN5FlHY01je
 htvXzyDbqyJZjehLdklOtuwpk1QuZPXnN9lTVZtrCg1EnwW8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScjjfngqp3UUbeeYngZqTdMEXpn0VQ63bZi2uaEuPDhayuVo
 9T+vsbDD1Gs3j9wIwo85rmKwP9VlKyaVAgw4BpnPZingHeEzyNJVMNGdPnqR5fFatA88tCSF
 r6rII6RozuxEycFUruNjrv9e0sWdb/eVSDmZq1+BsBOKjAbzsAD+v5T2Mg0MC+7uB3Q9zxF8
 +ihgLTrIesfFvCVwrxFC3G0JAklVUFO0OevzXFSKqV/xWWeG5fn660G4E3boeT0Uwu4aI1D3
 aVwFdwDUvyMr/mu8ui0T889vfp5MPPBDIBc+UFr5giMWJ7KQbibK0nLzfVpgQ8K3pFlIK6GP
 owedCZlawnGb1tXIFALBZkineCuwH7ibzlfr1HTrq0yi4TR5FAplum2doOTI4biqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXlqa813Q3OroAVIANOXmbrk9azsQ23VN5cJ
 mgfwDAr7oFnoSRHSfGmBEfk/xZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesGjF0rKCOQGCZ7u7L9WrrYXFPa2gfeSUDUA0JpcH5p50+hQ7OSdAlF7OpitryGnf7x
 DXiQDUCa6s7ltY5jaq+2wH8vWiwnLL5TU121g78Zzfwhu9mX7KNa4ut4FndyP9PKoeFU1WM1
 ETofeDOvYji6rndxESwrPUxIV2/2xqS3NThbbNHGpAg83Gy9mW/YJtZ8jVmfRgxa59cIGWvZ
 1LPswRM4pMVJGGtcaJ8f4O2DYIt0LTkEtPmEPvTa7Kig6SdlifZpkmChmbJhQgBdXTAd4ljZ
 P93lu7wUR4n5VxPlmbeegvk+eZDKtoC7W3SX4vn6B+szKCTYnWYIZ9cbwHQMLBltvza/V6Jm
 zq6Cyds40QHOAEZSnmGmbP/0XhUfCBgbXwLg5AJKbLYclI2cI3fI6aLmeh4JtwNc1tpehfgp
 SrnBhAwJKvXgHzMMwKRbX5/ILjoR44XkJ7IFX1EALpc4FB6OdzHxP5GL/MfJOB7nMQ9l6IcZ
 6deIa2oXK8QIgkrDhxAN/ERWqQ4KkTy7e9PVgL4CAUCk2lIHFWXq4K6JVq1r0HjzEOf7KMDn
 lFp7SuDKbJreuioJJ++hC6Hp79pgUUgpQ==
IronPort-HdrOrdr: A9a23:BdiTqagfAJL68YTl4jSMq9H0i3BQXzh13DAbv31ZSRFFG/FwyP
 rCoB1L73XJYWgqM03IwerwXpVoMkmsjKKdgLNhS4tKOTOLhILGFvAH0WKP+Vzd8k7Fh6dgPM
 VbAs9D4bTLZDAU4/oSizPIcOrIteP3lZxA8t2urUuFIzsLV4hQqyNCTiqLGEx/QwdLQbAjEo
 CH28ZBrz28PVwKc8WSHBA+LqP+juyOsKijTQ8NBhYh5gXLpyiv8qTGHx+R2Qpbey9TwI0l7X
 POn2XCl++eWrCAu1LhPl3onttrcejau5V+7fm3+4Qow3vX+0eVjc9aKsW/VXgO0ZqSARAR4Z
 HxSl4bTrlOA3+9RBDOnTL9nwbnyzog8Hnk1BuRhmbiu9XwQHYgB9NGnp8xSGqt16MMhqAO7E
 tw5RPqi7NHSRfb2Cjt7dnBUB9n0kKyvHo5iOYWy3hSS5EXZrNdpZEWuBo9KuZ2IAvqrIQ8VO
 V+BsDV4/hbNVuccnDCp2FqhNihRG46EBuKSlUL/saVzz9VlnZkyFZw/r1qol4QsJYmD5VU7e
 XNNapl0LlIU88NdKp4QPwMRMOmY1a9MS4k8FjiUGgPOJt3RU4l8aSHnIndzNvaB6A18A==
X-Talos-CUID: 9a23:ZNHY528pnZMshp/K4haVv1UMKJoqd1uM90mKP3WSOWUqC42eYmbFrQ==
X-Talos-MUID: =?us-ascii?q?9a23=3A1J8tXAwxjqkvQ5+ojzEDz/njAY6aqLr2A31do7o?=
 =?us-ascii?q?MgIqNOiBzNhOWti6yAaZyfw=3D=3D?=
Received: from mail-westusazlp17011012.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.12])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2024 14:28:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CjnC8M8RwuOjJHgGSWOGYzgc92U7+mVqiyOdvXOKIUo7WFzP74oWgUmmitt/f7NjZ35qfMbHBVrRG9DuZyj01tctf3sfD7c+bpGttfzELrKmehB594ym20i9ExjEwvV+1OT+kKbskrZzZrWZEoRdHx2j6lYpEU2p1xAthVVL5fRSNa93C78SEtDXcZdkixImsD41W4tjO40tBrnj2sBnQWE/0D4YeuGDM13jX752tpyRgoDIEpvIMjpDbD+URV6+ORIefqM/MD0gExEAlWgN8SYxgfS6RhBxK7zrCTXTwhQoQoq6xGE/dI4zk3tekhKngkWlr9QeoPphP3cnRpOuXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KKk4N3nw9ad1wk4l2VyofPbsGHUrxwbDEhjUGUzKMBU=;
 b=g6G551r+0VN3b1c5KoRG9X3Xlsvh83U6bgpFSZH86DH5NTbhMo69Z/EvVxfYQS5zu70fRlgq+7zStUimDo98X3u97F9KL2qWJoWH6mkRlOYEZc2EEy4Gf/q13u/KsIIwzjQPRbUp0hL11Dx9pwVDal2CB3ehOk6b+TyTqeDACnmSXFF4kuxQ+xyX6ukQ/yGsVaOFIJtLddrWrNLoaIujx4Fe67UcfNq7LTy39i2aGn+vcvhJfMIcoEIl2jsbiEd3ilOpGGlibn/cCKgkB23Aj06RodNlTkYxlnnAEi1XSb46TL086quZvnNKwYBNlnQs0skyztq/T/EljmLtstEGmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKk4N3nw9ad1wk4l2VyofPbsGHUrxwbDEhjUGUzKMBU=;
 b=mD1SvdI3l0hVdhSYAM+fO/1VMDnPFYw5f5r/sf7ehlStQVzIr8SG2Zb8UlI/5Hyki735fzlb5C9sqPIRy+2bRurvHKNOmexyS5rf/jLcmxEPxrBikiPrf1qOzOnTQ/ZZm+8U1v3k0S+44sLnZU+5XHTQYTPEUxjRt+gJTu1706U=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by BLAPR09MB6353.namprd09.prod.outlook.com (2603:10b6:208:2a1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.22; Thu, 19 Sep
 2024 21:28:47 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.7982.018; Thu, 19 Sep 2024
 21:28:46 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Automatically power on after power loss
Thread-Index: AQHbCtqt48t7DHY6C0mTcuO59+HzAA==
Date: Thu, 19 Sep 2024 21:28:46 +0000
Message-ID: 
 <SJ0PR09MB91263DCEEB7645BDCC4BE371EC632@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|BLAPR09MB6353:EE_
x-ms-office365-filtering-correlation-id: 59feb8fa-6525-4788-aff0-08dcd8f20b6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?w99Kryrwmn0otFBTuareWL/dlIPN1NBTmxmIXG1CkMqPuASI+cMxJFrNGf?=
 =?iso-8859-1?Q?kwNsuoU6vesKsPplDrV5Rgi5hfSkAc3UKhZNiLIvNuwDZPYsJIMH+xjWgG?=
 =?iso-8859-1?Q?TiWnkJ+PWq+fdwXn4zTixKsiD2vvMYCdSoNC82uqZLsiiTicrEJR27uoC3?=
 =?iso-8859-1?Q?qw/XlwlmIVb4TOOxtG776iKm5vbUbewgByoGwgM/k1zB8nH1c/WH//ow7U?=
 =?iso-8859-1?Q?oihOzTsAzwDx84NLQwmKspaDyjLT8jfOiZ76w6SBTUg7yygUsiH28ww1/G?=
 =?iso-8859-1?Q?Ma9Tbiqr2nCsq2I8MRCiVR6ad0oCctG16mSiR+HUhckdvPDcg3iVdRUaIR?=
 =?iso-8859-1?Q?k1VxTNpLW2vEgtS/KHyH1szluk4kiqe2eQ6m8fjDN5z6HJlopaKP2q+EcU?=
 =?iso-8859-1?Q?zOuuUqEPMTKO0DzCTPY1VBT7GDhBOUkCyIzZU0j3sURol8+ks0SduT8QIz?=
 =?iso-8859-1?Q?+7UX02bMKAKFmd9QHday/wBZlNTgRcYawNT/qclDUdz81Wpxq2UN8s391d?=
 =?iso-8859-1?Q?Dat8F61M1K6xHuYDXOGAg9Bx/sONIGevlmYGLEwxEZo9qrWzgyVPOvQlDc?=
 =?iso-8859-1?Q?2De46EP4ZS/SkyMDFvUs11esZn2lYQ8o78WpIadZKpKrp8rQMZjIYKRTyH?=
 =?iso-8859-1?Q?wVZ7bRbTP/ilp2p9HuDtCL/c/KXdfyYgq5BafkuTnuNMxxCkgpkUgZ05In?=
 =?iso-8859-1?Q?Ir2mr7tFhxrraHF4hp6XpfOZE0vmMCtiDMsXhx7XGtjbwWVczX6+sBRc1y?=
 =?iso-8859-1?Q?CPk3bEIwrCGq/myMPjdT1PT7RWnFwjpqegP7xhmZwSOUznhh3+SYk6g200?=
 =?iso-8859-1?Q?PvH+7YQ2phKTkXDVEsNhkywvfmbQXmBDb1Xb6ow7BVFGrqiqc7m5feQh16?=
 =?iso-8859-1?Q?Ti/RII3pYYV/xpMSiVufvLLUOY2qal84s2ItK91GevQh4ArkP5u6VNaLlS?=
 =?iso-8859-1?Q?soEcfxkWLR9RszJs61YYhmGwX44Y3kkl95XnhcX0bueblaaAZZMwmTsu1y?=
 =?iso-8859-1?Q?mUAHC6+/OUig1u6kYd8Uqxy1auDHb8fYUDRgA34Ks6KwH0CtgPFbmYNL8d?=
 =?iso-8859-1?Q?k6zS59sRs0XMdEQXd33IJMpS8tMBcNcXTDE/0UtfZvFlRG99VLd9M+LJYc?=
 =?iso-8859-1?Q?wDWvC/6vb6cnbJFEdua18ZylrjizPdIm0ZdDkOgjhxjW8D2HMRFisr+r/1?=
 =?iso-8859-1?Q?TKuH3+dUHVBOD9v1Cq1+vRyFcV2tQ/Ib1vLVvFlRtG5YCVuzeHohASiWwq?=
 =?iso-8859-1?Q?9NIwkpXHRE07n0aUKESL1m+UAIKedkvNP6QA/ukoWRfHN8BgP7M4GXAS4X?=
 =?iso-8859-1?Q?mYjhERDRjZGIrcTI+deOPg43u+EUBx7AwK+1cJ98+fSEoWnoHYEJf5zNZ7?=
 =?iso-8859-1?Q?L3+0Ovv4KuV60I4V8j1SKdurDT+aNAa6xdVCbQBRmeVo2rUC7zmAVO1jUP?=
 =?iso-8859-1?Q?RQEdgBWc9HMqGJ15oWIVR7sJ28qu7e36plSNWw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?BV9YotW2saRbLAghbNXDz567NYylTdDx+8HKm5R9C6CCQa4hzQCV27fr43?=
 =?iso-8859-1?Q?FVYGw304bsVc+S/c3ohzcp69fH0fBC3Pp4CddmZ2VP6X5uVOvUMf1wPrzg?=
 =?iso-8859-1?Q?/F3L+Lpq33jJe96ahqZdWLhLd+sFXVLBmP6s57nsRzwWEWDp17P3aRO3nB?=
 =?iso-8859-1?Q?sFxKYyP0tgBc5ISdbysfxDzd+C11XOhd8Bsx4Q+eh679GQqTLIOzak59rf?=
 =?iso-8859-1?Q?6oakUXqEWIKu1VykGIQznfAi8TcG4V/cOyA/eN0Sz9WyiyITZroK+CXSGe?=
 =?iso-8859-1?Q?FoT5b+WOaASsuRPdyRV2ZJ7v1ogiec7KSuycx92m2bWhbzWQy2K906Et76?=
 =?iso-8859-1?Q?O2dBRKvszsKpdrcvosQF2ph9K7MHigSwAfZK6GaoWIxzosRN5HKJujv5Yb?=
 =?iso-8859-1?Q?qZRHQxkkXPXgikPUYMTygE1PCJ2TCXAqC54I5YgOCF8OplDuDMZsBSfPed?=
 =?iso-8859-1?Q?LP/Oi6Kijp87qyrG6dFyj4dClO4IxVIe+2AHKmLeUoTPJxaF3GIoGGXPS/?=
 =?iso-8859-1?Q?JwQjpLhFDtlDHVAeYWslvbSabhtrdRy8bQRyi/1dpEECjXMWeG+Q+nUXm2?=
 =?iso-8859-1?Q?pzJVuhPIV6L4zbGhBIusmASDq1i9WMCfIl6O/lZBELdOd2scFrhu9oTjVo?=
 =?iso-8859-1?Q?xW5Pja40c/R7Id8pXZoaU8KO5fwVb1hN0hC0P7pVqV9+86Sctt9F64IY5h?=
 =?iso-8859-1?Q?ztvtOo1t93nWYbvSZxILn0Ezbcf828N9er0VW2wVWhJ4gcWf+ASNHhmnKr?=
 =?iso-8859-1?Q?uhjDL/4hwBqL3fupWJqDqy+PX6Or3b8ybIAnzrlKJKmd0GYDzk7/KMhFEG?=
 =?iso-8859-1?Q?l1bNMRDNE24xx6XL7Eggoa/lYxmbiW0lMMBchvGiwl3Z7LTn0opIKq4rMC?=
 =?iso-8859-1?Q?F3bUOrJMk/Qu3mukMon7A3UGI0IWjjKZ3Th0RABlqEYsVv9Zrg0WluqYXq?=
 =?iso-8859-1?Q?mnwirlDkzqM3uY3DMOGIyi9fh1T5o90+IxY8TEkTq3e9FW7E3x1l7OcHkv?=
 =?iso-8859-1?Q?qdDonSANS/ZLk9ByL28pmZ61NbxG12jipzN7EmpThx4rzg7mAPsnPWY9Q1?=
 =?iso-8859-1?Q?tsRZs/j1wkAidjxSA+QMNqq9clsAhg6PpE6h2ysDOWGPGgc9rDrYv7OmV9?=
 =?iso-8859-1?Q?4UJqedGg1ARFfvugIFAWiaG6V5NKqemekgwrXukDex+iZAEyVYfdFUIBla?=
 =?iso-8859-1?Q?1ZjgLK6KqmAPhb351syOC5vm0cTPYckC55MHQUmATDe5QycAXQ5LRKeScx?=
 =?iso-8859-1?Q?63RKwXT+E22eNmyoy3f0wDWH6P9EBLVQNrVd/myti1h0d1o0BvUq5LpF6J?=
 =?iso-8859-1?Q?KNZinU1zG9C2HY2c3hVLIffHja1E/78mWpIvqeClb182cXHo3izywdnLmd?=
 =?iso-8859-1?Q?Am/lD1nsKRB7wqxsa1Df/sb6eP0IDCbtUMkiOPK7RjB4+SsKJ9f+R9U1H2?=
 =?iso-8859-1?Q?3mViib8mJU8aiUxWv1AhBb873upsObH5KATraYO9cd85F6vuq2ygX9hjyC?=
 =?iso-8859-1?Q?HCU8kC0JzU1RgT8RKYFHEgtRPhvAOm9kEwvICx4cr6mh3GPYIJzPLYd0Yu?=
 =?iso-8859-1?Q?cSt4yNYSZ7qQzTNhaNDK2OepDgaxXCNdOvWzKrdQXmLZ0iEnMtVR4mbeRs?=
 =?iso-8859-1?Q?KVaZ6pDM/StSs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59feb8fa-6525-4788-aff0-08dcd8f20b6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 21:28:46.4772
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR09MB6353
Message-ID-Hash: 755K5LQUWAJ3GGFPW6XMX2FMBCHOUYGH
X-Message-ID-Hash: 755K5LQUWAJ3GGFPW6XMX2FMBCHOUYGH
X-MailFrom: prvs=985616ff6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Automatically power on after power loss
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XCNEKGGYCOHQVFBO3V7TTVUH6WL6AVCD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0027713508376325093=="

--===============0027713508376325093==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91263DCEEB7645BDCC4BE371EC632SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91263DCEEB7645BDCC4BE371EC632SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

The 'soft' button on the N32x does not have an 'on' state.  The X310 has a =
real button that can be pushed in.  I have remote N32x devices that are not=
 (easily) accessible.  How can I make sure they power up after a power outa=
ge?

Thanks.

--_000_SJ0PR09MB91263DCEEB7645BDCC4BE371EC632SJ0PR09MB9126namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
The 'soft' button on the N32x does not have an 'on' state.&nbsp; The X310 h=
as a real button that can be pushed in.&nbsp; I have remote N32x devices th=
at are not (easily) accessible.&nbsp; How can I make sure they power up aft=
er a power outage?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks.</div>
</body>
</html>

--_000_SJ0PR09MB91263DCEEB7645BDCC4BE371EC632SJ0PR09MB9126namp_--

--===============0027713508376325093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0027713508376325093==--
