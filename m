Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC306F08F4
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:01:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F32F384256
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:01:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682611282; bh=ta2VCBl9K0XcRDiI4ALMyjzRI/7Th2MXuHwVzz3n+J0=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gFCxv/MTrln0xCEnDTTrbViCs8wQNZBctiRN5Mix2ZFS/rRC4bmnS7Asat6l4PcZD
	 tlG8YvbYLJFBYuCzMu4wEIvKrggqvoRVEC0hbpYlsQQFGfuRABciUnAv7+fO+JK3xA
	 C3Ua4//LPMj4ELxS3tuNd+JH/2FLTNcWh8bDUxIe5Sw74AL4up5+Idw6g9TWPKQQXQ
	 XVWbgLhxDOGwXfq3isDnsnBHM/3oW+MuRUSDOnp6EC7PioSKZW9IUkpaQKENZzNgj5
	 eUag03uGjLhOIzmVGYaekw1Sq1byOJ2mujNzw9XOZveCsp4oeo6kGS7Ad7hwM2Uqc3
	 NBsty7YT14C9Q==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id E3444380953
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:00:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="X4S4C8ec";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="goyz3GGS";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1682611260; x=1714147260;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=5oudtw2ElXTzg3RkThJD7DrSOZBpd0PsuDsFbiWYO/o=;
  b=X4S4C8ecq6G/utiUriDP7UpGbmhPF/aA68/3sxKt8OleqxaYskM+K9Tz
   5U90016BxfA6XNYGmbbDij8P40YCiKxV57vZQnD2lWlA3mLA1Qz3w4M+8
   xovD0zfXRhDoxPYLidPyZxiRrdq/yadM03crpHo2YjxN5RJ0VlNE7Xij6
   A=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="393644"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200";
   d="scan'208,217";a="393644"
X-IPAS-Result: =?us-ascii?q?A2G/BAA5m0pkh21AL2hXAx4BAQsSDIIEC4ErAYECc4Fch?=
 =?us-ascii?q?FORNAOLS4tDhk4UgREDGDUJDwEBAQEBAQEBAQcCLgEVBAEBAwSCC4J0AhaFK?=
 =?us-ascii?q?SY1CA4BAgQBAQEBAwIDAQEBAQEBAwEBAQUBAQEBAQcDAQICEAEBAQEZCRcHD?=
 =?us-ascii?q?hAFIoVoDYNWTTsBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEFAjVPAQEBAQMBIh0BATcBDwIBCA4DBAEBDhoDAgICHwcKFAkIAgQOBQiCd?=
 =?us-ascii?q?oIWDQYDMbEDeoEygQGCCAEBBgQEnFANC16BXgmBQYNSg32BYAEBiCA2gVVEg?=
 =?us-ascii?q?RVDgmg+giCBZkAGDwoVEYMUOYIulxKBM3KBJ4ExgQQCCQIRa4EQCGWBdEACD?=
 =?us-ascii?q?WQLDm6BRYMXBAIUNA4MF14EgRAGCAcHNgNEHUADCzs6PTUUHwUEcYFZBC9Ag?=
 =?us-ascii?q?RMCBAElJJh5BoFbW4EJOQ0tkjKDZIpLoXk7NQeEAYFTBgyXI4F4hiMXqUOXe?=
 =?us-ascii?q?pFCljYCBAIEBQIOCIFlAXmBGjMaMIJEZlIZD44gGYNZj3l1PQIHAQoBAQMJi?=
 =?us-ascii?q?0UBAQ?=
IronPort-PHdr: A9a23:xjNFZhydAl0ewAvXCzPangc9DxPP8534PQ8Qv5wgjb8GMqGu5I/rM
 0GX4/JxxETIUoPW57Mh6aLWvqnsVHZG7cOHt3YPI5BJXgUO3MMRmQFoCcWZCEr9efjtaSFyH
 MlLWFJ/uX+hNk0AEcvkYBvVuHLhhQM=
IronPort-Data: A9a23:QsCtiaNkvkC/ff3vrR3wkMFynXyQoLVcMsEvi/4bfWQNrUoihTUFz
 DdNCjvUOfncNmX1eYsiPI6wpEtXuZbWxtQ2GwZtpSBmQlt08seUXt7xwmUcns+xwmwvaGo9s
 q3yv/GZdJhcoln0+En1atANilEljf/ZHdIQMMadZmYrA1YMpB4J0XpLg/Q+jpNjne+3CgaMv
 cKai8DEMTdJ4RYsWo4vw//F+UIHUMja4mtC5QRiP68T5jcyqlFMZH4hDfDpR5fHatQMdgKKb
 76r5K20+Grf4yAsBruN+losWhBirhb6ZGBiu1IOM0SQqkEqSh8ai87XAMEhhXJ/0F1lqfgsk
 Y8V7cTYpTABZcUgkMxFO/VR/roX0aduoNcrKlDn2SCfItGvn9IBDJyCAWlvVbD09NqbDklM0
 fMEITAILSq/rL3o8JedUM1ph/saeZyD0IM34hmMzBn2Jt1+G9XpZ/2P4tVVmjAtmspJAPDSI
 dIDbiZiZwjBZBsJPUoLDJU5n6GjgXyXnz9w8QrJ4/ZopTaPilUpgdABM/KMEjCObchIkUueq
 yTJ5W3oHBwAHNWS0z3D9Wij7gPKtXiqA9xOSNVU8NZj2w2qzWI3GiQHWGS9h9iz02mfWvlAf
 hl8Fi0G9vFprxTyFLERRSaQvWWeplsBQNdKCMU+6RqR0ezZ/xqEHS4PSTspQNY+vcM/QT0s0
 XeGmtroAXpkt7j9dJ6G3rKdrDf3MyxPImQJPXUAVVFcu4ilp5wvhBXSSNolCLSyktD+BTD3x
 XaNsTQ6gLIQy8UM0s1X4GwrnRqugpfVRw4wpT/rdT373iZffqqgZrORvA2zAel7EK6VSVyIv
 X4hkseY7fwTAZzlqMBraLVcdF1Oz6bVWAAwkWKDDLF6qGX3pCTLkZR4pW4gdBo1bq7obBezO
 CfuVRVtCIi/1ZdARZN+e5q4C80sy6/rFrwJvdiONIcQOvCdmOJ4lRyCiGaV1mHp1UIoy640M
 s/Bdd72VC5LT6N60DCxWuERl6cxwTwzzn/SQpa9yAm71b2ZZzieTrJt3LqyggIRs//sTOb9q
 ok32y62J/N3DLKWjs7/rd57ELzyBSJnba0aUuQOHgJ5HiJoGXs6F9jayq47dopuksx9z7mYp
 CzmAR8ClgOj1BUrzDlmjFgzOdsDur4v/BoG0dAEZwrAN4ULPdn3tfxHJ8RfkUcPrbI+l6EvJ
 xX6RylwKq8WEW+fom51gWjVqY1pbhOwggySdyO3fSIyF6OMtCSYkuIIijDHrXFUZgLu7ZVWi
 +T5imvzHMRfLyw/Upe+QKz1kzuZ4yNH8MosBBSgHzWmUB6xmGScA3et1aBfzgBlAUmr+wZ2I
 C7PWk5A+biQ/d5kmDQL7Ijdx7qU/yJFNhIyNwHmAXyebEE2IkLLLVd8bdu1
IronPort-HdrOrdr: A9a23:f8ppfKj/D0WBinYux+7kuhQ+oHBQX0913DAbv31ZSRFFG/FwyP
 rCoB1L73XJYWgqM03IwerwQ5VpQRvnhP1ICPoqTM2ftWjdySCVxeRZgbcKrAeQfBEWmtQ96U
 4kSdkHNDSSNykxsS+Z2njfLz9I+rDun86VbKXlvg5QpGpRGsNdBnJCe2Km+zpNNWx77PQCdK
 a0145inX6NaH4XZsO0Cj0uRO7YveDGk5rgfFovGwMnwBPmt0Ll1JfKVzyjmjsOWTJGxrkvtU
 LflRbi26mlu/anjjfBym7o6YhMkteJ8KoNOCXMsLlaFtzfsHfpWG1TYczAgNkBmpDv1L9lqq
 iPn/5qBbUP15qYRBDInfKq4Xis7N9m0Q6d9beV7EGT3vDRVXY0DdFMipledQac4008vMtk2K
 YOxG6BsYFLZCmw6hgVyuK4Iy2CrHDE1kYKgKoWlThSQIEeYLheocgW+15UCo4JGGb/5Jo8GO
 djAcnA7LIOGGnqJ0zxry1q2pihT34zFhCJTgwLvdGUySFfmDR8w1EDzMISk38c/NY2SoVC5e
 7DLqN0/Ys+B/M+fOZ4HqMMUMG3AmvCTVbFN3+TO03uEOUdN3fEu/fMkcAIDSGRCe41JbcJ6e
 f8uQljxB8PkmrVeL2z4KE=
X-Talos-CUID: 9a23:tGCmNW4arQtto7XC/dss9mobBskldz7n8FyPfX+dL3xNTbyqcArF
X-Talos-MUID: =?us-ascii?q?9a23=3A9ix7aQ9JcbieGKw0Gz9mGc6Qf84zs52lBmQfqIQ?=
 =?us-ascii?q?LhM+iFCYpHBacpyviFw=3D=3D?=
Received: from mail-bl2gcc02lp2109.outbound.protection.outlook.com (HELO GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.109])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2023 09:00:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FO6Ur3+Yb49oI1Il1y/IU2v0+3cHAEbyPPZtNluauJ2OXWRWpOBZSu4yr5l4lG54+axFqpvhhQxKrOM8BUoA6RaXV6lIBg4Actm6wuvIuIcENEc0OSk4Q+tPCnpbhYH/v7yxTYhuNW2pZyR3sZirr7aMZniMIFDiII48C56qaeYV7AVzx/8n2ExwZsnnvDXT9SG4bmwuYfa+W8dEN/2l2BCCuFXdx6l5bwU6SKbCns+Jd7JDouxxcumGqBRVhVG2WVgy+AQZ3chM6K6KMfocdKt/Fprk/BSmvqwIENugMpJDUax1NinvGtcmX60NXIUgz7XTddhLW6TOuQh3lWgBww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5oudtw2ElXTzg3RkThJD7DrSOZBpd0PsuDsFbiWYO/o=;
 b=mTeG3YjHxRdstKY3IQHVZzOY11f6kvMX8/FXlB2sH2JwZdYZNlPTjwfBh8MD/OF9sfshkcL3benFB1CmoyXuuffY4YYyew+TUt79mRgPHY1lYfmGwwY11pb+xy4uCGcoWL+VGgQHohKIL6qe8z2mV826rVX6Sudl3yc/VppuC5a8MIDyXp6q53vf4MMYtDokt9Po3E+ZtEhbWij6b/3RimvSeO2ypN71+9/eQuyUBI0OVfCE0eJl7TLKA7bSZRcAkzA7GH3fiNVxwhJDT8QAWbkucYYCjOzp5X29/NtU/R8zKzK42+t41XKGvvv+K0XbJ85ygFAZvLET+aU/V7Qn+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5oudtw2ElXTzg3RkThJD7DrSOZBpd0PsuDsFbiWYO/o=;
 b=goyz3GGSTQUMPV3r76N83v+WTVo/4YP4+aWO2L0DoJesCIfOGM+6bu6qiC5Y0QQ0brczFhNjZQT20qXrAP+D4A8QibtEJ7BOVGpWsxzKEZF1F19KzJ8SNTu7rFuWL8LGCp6bxR+gjUttFicchk1MYDrPQ4x75Tf6wRE6gruuqY4=
Received: from SA1PR09MB9130.namprd09.prod.outlook.com (2603:10b6:806:28c::16)
 by MW4PR09MB9739.namprd09.prod.outlook.com (2603:10b6:303:1e7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 16:00:39 +0000
Received: from SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::f98c:8685:762c:c640]) by SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::f98c:8685:762c:c640%7]) with mapi id 15.20.6340.022; Thu, 27 Apr 2023
 16:00:38 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Split USRP (X310, N231) between two PCs
Thread-Index: AQHZeI5ayvs3NzdvqE6kZjQ3y3vtRq8+MmQAgAEfFx0=
Date: Thu, 27 Apr 2023 16:00:38 +0000
Message-ID: 
 <SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9130:EE_|MW4PR09MB9739:EE_
x-ms-office365-filtering-correlation-id: 484ec0fd-9f40-4116-ed67-08db47388b94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +S0qrsGCAgqCzwLVzMacIn8SzfBjNKNOnfdUhcibSw22RM5ZI5YJsrUDCtzsI4zjPytJJKZJMMwWv7WpHzIly1PunhkVZbkRks9R7E3WgbtYAsBTyYxI/rysJz50xLuN0Dodu2m/5Ww7cadIOWz7uiRDpBTFSyVwbaQy4QgOLlU8nXOGnbGKFpp+iEDKuLkqYYdOhtZzMnbe7WfGwJGtr6qdGOhOWMg3H40LB+7kgwHeNS2J37od0n4rCKZtrmp0zCM2SVKKSgixpkascstiBymBxUUV7xxVjasVL0VW6Jhz7zAG5LwYE/MsQjDAkKDX5GfnOmMfcw1NTHdbLHMr2SO+uHOOgwO7AuQiudBNTSJv7FuABPvDnP3tDfw2eHnnVFT46BQdG6ZC6qgaUQTsgeVE7ls1/JCPH8ameDHFNYaLb6d58xsBG94lN8yhguEJi/F0keVJT4enjYLA1NJw1TRPFwlfhkoI+IFXccSRqRCl3e3M9hbMYZ8g3g5Y3omPH5ZxnKkvizp8kKJkWCrCJJpl97ATdr+o5AEIugUgLbLVUtJPgiz0os6EW0eBSmmodZgRjrUJI1B+EPML5+zzLnoSJu7fJN2QatH3AgR5l3qtx62Wf5+GKVS1hm2NSFQ/
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9130.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(33656002)(40140700001)(53546011)(26005)(6506007)(9686003)(186003)(55016003)(498600001)(44832011)(83380400001)(2906002)(5660300002)(7696005)(71200400001)(52536014)(38070700005)(6916009)(66946007)(66556008)(66476007)(66446008)(64756008)(4326008)(91956017)(76116006)(19627405001)(8676002)(8936002)(38100700002)(122000001)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?c09vcDl5cVN1bVVsL1premNuT2htVFlaMUhaUU9LTEdxUjRJVEtQNjlQNk1M?=
 =?utf-8?B?b01pYXNqRUtYc1FJckJWMUNSWEJuZGZqN09COENYQnk3djVUSEI0VitnREZW?=
 =?utf-8?B?cFF3eXhoN2pTYnlnWHU4SkZKMDB5WkliV01zL1N0WGVtRnRSeFBkYmhBN0dK?=
 =?utf-8?B?cUNOc256ZjN2ZXRWbk5qUmMreW1SMm94TWpocElvZ1c0L05pSlgvWHdhR0Uw?=
 =?utf-8?B?bTBjZlo2bTZ2TjBQQktNeUdJZ0ZuWlV4Y012Zy9yK0VkaWdBc3I4ZnBaMDI0?=
 =?utf-8?B?Tkp3QThWRVBMNDdha1c0VUFUVlNPWGxtdHhQazB1REwwSkU0WmxPN0J6Znlr?=
 =?utf-8?B?Zkd4SC91TmdyOWlGL2dzeG5KeVBya1g4L0NsL2phc0J5K2p5R014TW11TXVD?=
 =?utf-8?B?NUVwQTNDRndnWDI0NEgwUGxpaTdFVlJ5M0hmWEFzVFBKOHBDWkk0TVJPZVFW?=
 =?utf-8?B?RnA4VlNWRkNZblZsd2x1Rk1VY010eG04SE9uYW92UUxLZkdvWGx1R1FreFVH?=
 =?utf-8?B?eDdZMmptR0RaaXVJdTk1aGFvQzZxWVJMcHQ1dTNuSW9QRm4vMU1ocFhqV0ZW?=
 =?utf-8?B?QXJUY3R5VkloU0FURGZpV1FhYzQwNkZlcWZWVjVhcnBORDYxTU5KT254WjFU?=
 =?utf-8?B?L3BFMlpuVTd6dm1OckorNGhhL0JzZlF0eEUzSmtOM1F0SlJMSEo5dEtwVGhj?=
 =?utf-8?B?cFBzOEsrTDE0MU5sK3lieHAyTVNoYnBPS2hhNWttVWNkcG1YQmFEaktmcVpx?=
 =?utf-8?B?eksrbTRReDZVbFBmVzd2VzFkcUdVQnh1dllyalV0Yk5YajdyWFlPT3RrdStD?=
 =?utf-8?B?V3FQeTJOQ1grUnJkakhiOUN0cW9zYUFLK3VHTS9yQlppSy9RRnpxK2RoTzNJ?=
 =?utf-8?B?Nk9hbVUzL3RqSU5lVU0rQy9GWjlaMk5EVnJRU3NZdkt6MUhXbnVSWTRjaUVY?=
 =?utf-8?B?amNpK0ZoeGhtaWFJTEhveis1MUgvSXNBZ1lVTHFpMnJzNTZsYSsrbFp4dFg4?=
 =?utf-8?B?dGJrUTFENU9tZW5wWUFHemN0RURTeHZXS2xybjhPV1dXWXczVlpnUkNwb3do?=
 =?utf-8?B?Rys3QmNIZ1A1ZXozSVB1K3R0dzFJUnh2QWh1dkU3c3VLbXRMVS9FNzhYczc2?=
 =?utf-8?B?YnJESGJtRHBqSkY0T0t5STU1bHY0N0oyVHpYVkYwZkFzNGJIRzgzb2dCZ292?=
 =?utf-8?B?WU93NkJnRWMwWGF5bFFscG4yMHNWQnNaQjViRVgwT2lLUk00eUphUHlNN21a?=
 =?utf-8?B?QmhSYzM3eXJyYS9ybEFMV2ppYktsNnQ0NHNpMDB0cDBTSFI3aGNtbi9tRmJ0?=
 =?utf-8?B?d1NiNHR4cklIYXM0ZCswczVRTkR0NmxGT01HbnNwbmN3QkFoZGl3aVJXU2VR?=
 =?utf-8?B?MVQwd0FpaC9oSG9LMDlyRFhvWTNGSFR6WmtXenlxT1g4bkhuemhkVjlkTE1M?=
 =?utf-8?B?WFAyZGxWUzZ5dkxXOFptTDZ0NFphS0dnMk5rYXlzajA0bFhPVExWWGcva1Vi?=
 =?utf-8?B?UlhnSWdDNHJRMS9PYzZwWmx2QXo5N3FJNVptM2VMU3Y1MmtYOU5uZ2MrSkRv?=
 =?utf-8?B?ZmlOeGN1aDB3NHRJNHhSNE1OT3VnUmhrakRxYlA2QmRRUnMvc09BaHppS3Zp?=
 =?utf-8?B?TzM1THZMQnY0ZDBRdHkxc3VRT1d6cUtRaUcxdFd1YnAyVndkaXIzZGFiS0Jz?=
 =?utf-8?B?OGFmYmtzZUdtM0JjckU4TjMvbFVOOEphWSt1UEJ1N1NYbzE3YlZ4ZG1BUWg4?=
 =?utf-8?B?cDhidis4K1NCcmo5SEdiTFAvSVlSNmdJTVNXcE9sVHIveEFXVjV1ZXh5bFlE?=
 =?utf-8?B?NkQzSm5zc01lanBmWE0vMkV5dnBDRWxrczRUVnBKTVhhRzZXNlNuekIrWldj?=
 =?utf-8?B?MU5XN1hiNXhIWWdDOEhhU0FMaE5LZmp0OVNqVno2a0F3KzVYWDVlM2Z1bkNY?=
 =?utf-8?B?MWR2SlM3Ry9MZTBqczVjREdDTHNNQWtabEs2TFNLWWNRNmkwZy9GdTkvaU96?=
 =?utf-8?B?Zm8xcHZ4YnFrbGdacGVFK01MUExhanQwUGRWRDRYaVYyN2lMd2wxRnJQSkc1?=
 =?utf-8?B?QWVXYW9IN2NzU2NRRUZnWG9rcDNpQmdPQTNQaFJRbXJSTE9QTDM5YWVoNUx5?=
 =?utf-8?Q?UNHw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9130.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 484ec0fd-9f40-4116-ed67-08db47388b94
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 16:00:38.8538
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB9739
Message-ID-Hash: FKJDPLCNFOLRVRVTDI6GPJ6R5KKY5OPC
X-Message-ID-Hash: FKJDPLCNFOLRVRVTDI6GPJ6R5KKY5OPC
X-MailFrom: prvs=47404cae7=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WOBCKMOXBEGY6BLHD2B2L4PDWQZ7BHMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1742646387564296258=="

--===============1742646387564296258==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9SA1PR09MB9130namp_"

--_000_SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9SA1PR09MB9130namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyB0aGUgZmFsbGJhY2sgb3B0aW9uLiAgQXQgMjAwIE1zcHMgWk1RIHdpbGwgcHJvYmFi
bHkgbm90IHdvcmsgKGhhdmUgbm90IHRyaWVkIGl0IHlldCkuDQoNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fDQoNCkV1Z2VuZSBHcmF5dmVyLCBQaC5ELg0KQWVyb3NwYWNlIENvcnAuLCBQcmlu
Y2lwYWwgRW5naW5lZXINClRlbDogMzEwLjMzNi4xMjc0DQpfX19fX19fX19fX19fX19fX19fX19f
X18NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IEJyaWFuIFBhZGFs
aW5vIDxicGFkYWxpbm9AZ21haWwuY29tPg0KU2VudDogV2VkbmVzZGF5LCBBcHJpbCAyNiwgMjAy
MyAzOjUyIFBNDQpUbzogRXVnZW5lIEdyYXl2ZXIgPGV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPg0K
Q2M6IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogUmU6
IFtVU1JQLXVzZXJzXSBTcGxpdCBVU1JQIChYMzEwLCBOMjMxKSBiZXR3ZWVuIHR3byBQQ3MNCg0K
T24gV2VkLCBBcHIgMjYsIDIwMjMgYXQgNjozM+KAr1BNIEV1Z2VuZSBHcmF5dmVyIDxldWdlbmUu
Z3JheXZlckBhZXJvLm9yZzxtYWlsdG86ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc+PiB3cm90ZToN
CkhvdyBtdWNoIHdvdWxkIHdvcmsgd291bGQgaXQgdGFrZSB0byBhbGxvdyB0d28gZGlmZmVyZW50
IFBDcyB0byBlYWNoIGNvbnRyb2wgb25lIG9mIHRoZSBjaGFubmVscyBvbiB0aGUgWDMxMD8gIFdv
dWxkIHRoZSB3b3JrIGJlIG1vc3RseSBvbiB0aGUgaG9zdCAoc29mdHdhcmUpIHNpZGUsIG9yIHdp
bGwgc29tZSBGUEdBIHdvcmsgYmUgcmVxdWlyZWQ/ICAgVGhlcmUgaXMgbm8gaXNzdWUgb24gdGhl
IFJYIHNpZGUgKHdpdGggdGhlIHJlY2VudCBVSEQgdXBkYXRlcyB0byBzdXBwb3J0IHN0cmVhbWlu
ZyB0byBhcmJpdHJhcnkgSVApLiAgVGhlIGlzc3VlIGlzIHdpdGggY29udHJvbCAoZS5nLiBzZXQg
c2FtcGxlIHJhdGUpIGFuZCB3aXRoIFRYIGZsb3cgY29udHJvbC4gIE9uZSB1c2UgY2FzZSB3b3Vs
ZCBiZSB0d28gaW5kZXBlbmRlbnQgbW9kZW1zIGVhY2ggcHJvY2Vzc2luZyB0aGUgZnVsbCAyMDAg
TXNwcyBmcm9tIHRoZSBzZXBhcmF0ZSAxMCBHYkUgcG9ydHMuICBJIGd1ZXNzIG9uZSBjb3VsZCBh
bHdheXMganVzdCBidXkgYW5vdGhlciBVU1JQIGJ1dCBpdCBzZWVtcyB3YXN0ZWZ1bC9pbmVsZWdh
bnQuDQoNCldoYXQgaWYgeW91IHNwbGl0IHlvdXIgYXBwbGljYXRpb24gdXAgaW50byBlc3NlbnRp
YWxseSBhIGRhZW1vbiB0aGF0IGNvbnRyb2xzIHRoZSByYWRpbyBhbmQgaGFuZGxlcyB0aGUgc3Vi
c2NyaXB0aW9uIHRvIHRoZSBzYW1wbGUgc3RyZWFtLg0KDQpZb3VyIGFwcGxpY2F0aW9ucyB0aGVu
IGNvbW11bmljYXRlIHdpdGggdGhhdCBkYWVtb24gLSBtYXliZSB2aWEgWk1RIG1lc3NhZ2VzIC0g
d2hpY2ggaGFuZGxlIHRoZSBmb3J3YXJkaW5nIG9mIHRoZSBzYW1wbGUgc3RyZWFtKHMpIGFuZCBj
b21tYW5kL2NvbnRyb2wgb2YgdGhlIHJhZGlvLiAgSXQncyBhbGwgc29mdHdhcmUgYW5kIHRoZXJl
IGlzIHN0aWxsIHJlYWxseSBqdXN0IG9uZSBtYWNoaW5lIGhhbmRsaW5nIGFsbCB0aGUgY29tbXVu
aWNhdGlvbiB3aXRoIHRoZSByYWRpbyBkZXZpY2UuICBObyBjaGFuZ2UgaW4gcGFyYWRpZ20gZm9y
IFVIRC4NCg0KVGhlIGRvd25zaWRlIGlzIHRoYXQgeW91IGdlbmVyYXRlIGEgbG90IG1vcmUgbmV0
d29yayB0cmFmZmljIGJlY2F1c2UgeW91IHdhbnQgdG8gc3BsaXQgdGhlIHdvcmtsb2FkIG92ZXIg
bXVsdGlwbGUgY29tcHV0ZXJzLg0KDQpEbyB5b3UgdGhpbmsgdGhpcyBtaWdodCB3b3JrIGZvciB5
b3U/DQoNCkJyaWFuDQo=

--_000_SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9SA1PR09MB9130namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsi
IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpUaGlzIGlzIHRoZSBmYWxsYmFjayBvcHRpb24uJm5i
c3A7IEF0IDIwMCBNc3BzIFpNUSB3aWxsIHByb2JhYmx5IG5vdCB3b3JrIChoYXZlIG5vdCB0cmll
ZCBpdCB5ZXQpLjwvZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiPg0KPGRpdiBzdHls
ZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2
IGlkPSJTaWduYXR1cmUiPg0KPGRpdj4NCjxkaXYgaWQ9ImRpdnRhZ2RlZmF1bHR3cmFwcGVyIiBk
aXI9Imx0ciIgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBz
YW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91
bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMHB0OyBjb2xvcjogYmxhY2s7Ij48
c3BhbiBpZD0ibXMtcnRlcmFuZ2VwYXN0ZS1zdGFydCI+PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250
LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTMuMzNweDsgY29sb3I6IHJn
YigwLCAwLCAwKTsiPl9fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48c3BhbiBpZD0ibXMt
cnRlcmFuZ2VwYXN0ZS1lbmQiPjwvc3Bhbj48YnI+DQo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5
bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMHB0OyBjb2xv
cjogYmxhY2s7Ij5FdWdlbmUgR3JheXZlciwgUGguRC48YnI+DQpBZXJvc3BhY2UgQ29ycC4sIFBy
aW5jaXBhbCBFbmdpbmVlcjxicj4NClRlbDogMzEwLjMzNi4xMjc0PGJyPg0KX19fX19fX19fX19f
X19fX19fX19fX19fPC9zcGFuPjxicj4NCjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPGRpdiBpZD0iYXBwZW5kb25zZW5kIj48L2Rpdj4NCjxociBzdHlsZT0iZGlzcGxheTpp
bmxpbmUtYmxvY2s7d2lkdGg6OTglIiB0YWJpbmRleD0iLTEiPg0KPGRpdiBpZD0iZGl2UnBseUZ3
ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGlicmksIHNhbnMtc2VyaWYiIHN0eWxlPSJm
b250LXNpemU6MTFwdCIgY29sb3I9IiMwMDAwMDAiPjxiPkZyb206PC9iPiBCcmlhbiBQYWRhbGlu
byAmbHQ7YnBhZGFsaW5vQGdtYWlsLmNvbSZndDs8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5
LCBBcHJpbCAyNiwgMjAyMyAzOjUyIFBNPGJyPg0KPGI+VG86PC9iPiBFdWdlbmUgR3JheXZlciAm
bHQ7ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmcmZ3Q7PGJyPg0KPGI+Q2M6PC9iPiB1c3JwLXVzZXJz
ICZsdDt1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSZndDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4g
UmU6IFtVU1JQLXVzZXJzXSBTcGxpdCBVU1JQIChYMzEwLCBOMjMxKSBiZXR3ZWVuIHR3byBQQ3M8
L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pg0KPGRpdiBkaXI9Imx0ciI+
DQo8ZGl2IGRpcj0ibHRyIj5PbiBXZWQsIEFwciAyNiwgMjAyMyBhdCA2OjMz4oCvUE0gRXVnZW5l
IEdyYXl2ZXIgJmx0OzxhIGhyZWY9Im1haWx0bzpldWdlbmUuZ3JheXZlckBhZXJvLm9yZyI+ZXVn
ZW5lLmdyYXl2ZXJAYWVyby5vcmc8L2E+Jmd0OyB3cm90ZTo8YnI+DQo8L2Rpdj4NCjxkaXYgY2xh
c3M9InhfZ21haWxfcXVvdGUiPg0KPGJsb2NrcXVvdGUgY2xhc3M9InhfZ21haWxfcXVvdGUiIHN0
eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7IGJvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2Io
MjA0LDIwNCwyMDQpOyBwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxkaXYgY2xhc3M9InhfbXNnLTEwNDYz
MTI4NTIyNDI2NDE1MTYiPg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWls
eTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29s
b3I6cmdiKDAsMCwwKTsgYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjU1LDI1NSwyNTUpIj4NCkhvdyBt
dWNoIHdvdWxkIHdvcmsgd291bGQgaXQgdGFrZSB0byBhbGxvdyB0d28gZGlmZmVyZW50IFBDcyB0
byBlYWNoIGNvbnRyb2wgb25lIG9mIHRoZSBjaGFubmVscyBvbiB0aGUgWDMxMD8mbmJzcDsgV291
bGQgdGhlIHdvcmsgYmUgbW9zdGx5IG9uIHRoZSBob3N0IChzb2Z0d2FyZSkgc2lkZSwgb3Igd2ls
bCBzb21lIEZQR0Egd29yayBiZSByZXF1aXJlZD8mbmJzcDsgJm5ic3A7VGhlcmUgaXMgbm8gaXNz
dWUgb24gdGhlIFJYIHNpZGUgKHdpdGggdGhlIHJlY2VudCBVSEQNCiB1cGRhdGVzIHRvIHN1cHBv
cnQgc3RyZWFtaW5nIHRvIGFyYml0cmFyeSBJUCkuJm5ic3A7IFRoZSBpc3N1ZSBpcyB3aXRoIGNv
bnRyb2wgKGUuZy4gc2V0IHNhbXBsZSByYXRlKSBhbmQgd2l0aCBUWCBmbG93IGNvbnRyb2wuJm5i
c3A7IE9uZSB1c2UgY2FzZSB3b3VsZCBiZSB0d28gaW5kZXBlbmRlbnQgbW9kZW1zIGVhY2ggcHJv
Y2Vzc2luZyB0aGUgZnVsbCAyMDAgTXNwcyBmcm9tIHRoZSBzZXBhcmF0ZSAxMCBHYkUgcG9ydHMu
Jm5ic3A7IEkgZ3Vlc3Mgb25lIGNvdWxkIGFsd2F5cw0KIGp1c3QgYnV5IGFub3RoZXIgVVNSUCBi
dXQgaXQgc2VlbXMgd2FzdGVmdWwvaW5lbGVnYW50LjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwv
YmxvY2txdW90ZT4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PldoYXQgaWYgeW91IHNwbGl0IHlv
dXIgYXBwbGljYXRpb24gdXAgaW50byBlc3NlbnRpYWxseSZuYnNwO2EgZGFlbW9uIHRoYXQgY29u
dHJvbHMgdGhlIHJhZGlvIGFuZCBoYW5kbGVzIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIHNhbXBs
ZSBzdHJlYW0uDQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5Zb3VyIGFwcGxpY2F0aW9ucyB0aGVu
IGNvbW11bmljYXRlIHdpdGggdGhhdCBkYWVtb24gLSBtYXliZSB2aWEgWk1RIG1lc3NhZ2VzIC0g
d2hpY2ggaGFuZGxlIHRoZSBmb3J3YXJkaW5nIG9mIHRoZSBzYW1wbGUgc3RyZWFtKHMpIGFuZCBj
b21tYW5kL2NvbnRyb2wgb2YgdGhlIHJhZGlvLiZuYnNwOyBJdCdzIGFsbCBzb2Z0d2FyZSBhbmQg
dGhlcmUgaXMgc3RpbGwgcmVhbGx5IGp1c3Qgb25lIG1hY2hpbmUgaGFuZGxpbmcgYWxsIHRoZSBj
b21tdW5pY2F0aW9uDQogd2l0aCB0aGUgcmFkaW8gZGV2aWNlLiZuYnNwOyBObyBjaGFuZ2UgaW4g
cGFyYWRpZ20gZm9yIFVIRC48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlRoZSBkb3du
c2lkZSBpcyB0aGF0IHlvdSBnZW5lcmF0ZSBhIGxvdCBtb3JlIG5ldHdvcmsgdHJhZmZpYyBiZWNh
dXNlIHlvdSB3YW50IHRvIHNwbGl0Jm5ic3A7dGhlIHdvcmtsb2FkIG92ZXIgbXVsdGlwbGUgY29t
cHV0ZXJzLjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+RG8geW91IHRoaW5rIHRoaXMg
bWlnaHQgd29yayBmb3IgeW91PzwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+QnJpYW48
L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9SA1PR09MB9130namp_--

--===============1742646387564296258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1742646387564296258==--
