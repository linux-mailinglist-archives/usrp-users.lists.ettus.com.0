Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78382C6C6
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jan 2024 22:38:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B947838596B
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jan 2024 16:38:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705095520; bh=pO44LR+qvJmiYiOvJheLbYl8Ar1F/El26vRFx0DWoKg=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WN7GEywcB1Kg9eezwdAkhEF0CtMK7qTM3UYjVgh0EZpS5Tfwn+nK81M6/cpZ8KMPP
	 w9KJ+4FFUvmALpXJufpz63Vbbi1O5U2gCcwHM31WbFIB7mHtYgmNWXdBckKJ8TISDl
	 oEL9Mx4h2tMPmu/nHToLbnnqvZG9ZrtIfPrwdxcPTUVEDTW4o2r282+feBWoNHbJrV
	 e2Ug97R+nmedYv2qT4/0L1FprgXscOIHR0Qp7iUwXoNNxfcHGBskxHx9pVr9rFyBuy
	 gkNAiivJvbnn+/81/CITWxqp3rqImrzje/XlDCCBUI6perkON1WXChA06eiaK+dP3L
	 UUNypX7XHnNTA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id DC299385580
	for <usrp-users@lists.ettus.com>; Fri, 12 Jan 2024 16:37:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="k1fvE7S0";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="GhyH9I7i";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1705095477; x=1736631477;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=8iUEY8nfuhfX2bVzlcE4zh8gL1kXj7UZkNysMJlMHNw=;
  b=k1fvE7S0e7v8CkH0Cql+qzBQBfMfji7BTSHqb2SZqPBua0et6QQ9Wtm5
   ed7w69CaXrHm5+3YXSGlLBr/CjFF53R4VRpBLrCt4Mu161bY5RaRsebhw
   1mQcY8vTpl3/K3hS/aCfP0mZ5bPKYOhaso5VDncv+1BucGxHe6mrOFLcL
   Q=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="3908780"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600";
   d="scan'208,217";a="3908780"
X-IPAS-Result: =?us-ascii?q?A2FYAwDrr6Flh2VBL2hXA4EJgU+BNoEDeoFhsmWCewNWD?=
 =?us-ascii?q?wEBAQEBAQEBAQcCRAQBAQMEhH8Ch0YnNwYOAQIEAQEBAQMCAwEBAQEBAQgBA?=
 =?us-ascii?q?QEFAQEBAQEHBAECAhABAQEBIhcHDhAnhWwNg3mBHgEBAQEBAQEBAQEBAR0CN?=
 =?us-ascii?q?VZEAQE3AREBQD8nBA4NgniCGA0HAzG2UYE0gQGCCgEBBgQEsBwYYIFgCYFIg?=
 =?us-ascii?q?2eEGhoBBWNmg3mFEYFVRIEVQoFJhiIfJoNNgi+FXIEoiExNhgyBTSMDfQhvG?=
 =?us-ascii?q?w8eNxEQEw0DCG4dAjE8AwUDBDIKHAshBVUDQwZJCwMCGgUDAwSBMAUNGgIQL?=
 =?us-ascii?q?CYDAxJJAhAUAzsDAwYDCjEDMFVCDFADZR8WHAk8DwwaAhseDScjAixCAxEFE?=
 =?us-ascii?q?AIWAyQWBDYRCQsmAyoGNwISDAYGCV0mFgkEJQMIBANUAyN0EQMECgMUBwsHe?=
 =?us-ascii?q?YFYA0QdQAMLbT01FBsFBIE2BZNPhENMgSUoC2aSbw4ljkeOSJRGNAeEFIFbB?=
 =?us-ascii?q?gyIdZZqF6oSmFKjIoUfAgQCBAUCDgiBeYIAMxowgypSGQ9WjVYNCYNWj3l2O?=
 =?us-ascii?q?wIHCwEBAwmKaAEB?=
IronPort-PHdr: A9a23:pTBiYhCBA83p+hYv55ogUyQVaxdPi9zP1kY95pkmjudIdaKut9TnM
 VfE7PpgxFnOQc3A6v1ChuaX1sKoWWEJ7Zub9nxXdptKWkwJjMwMlFkmB8iIQUTwMP/taXk8G
 8JPHF9o9n22Kw5bAsH7MlTfuHr06iQdSX3C
IronPort-Data: A9a23:IhfdtKkV9co6cthIN2Zm7/7o5gxyJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIXCj3VPf+NZDf9L951OYi//EhUsZLUxtFiTQBtrCxnEC4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8yckjclkYZKlUL+ZY0idfSc9FGF7z0sLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKq04G9wUmAWP6gR4AeHziNNV/rzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0Jxgqdi/aicOb3omXU9d3oZV9Pc6oB6gA7yQIITHxVZ7KQLjsaI6Sv5p0+Wx1gcpDW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfujCPilAuluawdoONI7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPObprq410AX7Kmo7NB0ESVqyuMmAqWmVePZkE
 HEq0HMxlP1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5blAGdgu7bNE3aFrO7M9HW1JDQfKnIEaWkcVwwZ7tL/oYY1yBXSUtJkF63zhdrwcd3t/
 9yUhA8muOwdrOMV7Imiw0vg0my9odvyZRFgs207QVmZxg9+YYekYamh5l7a8etMIe6lor+p7
 SBsdy+2vbhmMH2dqBFhVtnhC11A2hpoGDjVgFoqE5x6+D+moySnZdoJuGg4I1p1OMEZfzOve
 FXUpQ5a+J5UOj2tcLNzZIWyTc8tyMAM9OgJtNiLMLKigbAoL2drGR2Cg2bNgwgBd2BxzckC1
 W+zK5rEMJrjIf0PIMCKb+kcy6Q34Ss12HneQ5v2pzz+juLDPCDLEO9YagTUBgzc0E9iiFSMm
 zq4H5rToyizrMWiO3eJmWLuBQxUciRgVcimwyCpXrTfeVE7RgnN9MM9MZt6INY5wMy5Z8/N/
 3qnXVRfxka3jnrdMW23hoNLOdvSsWJEhStjZ0QEZA72s1B6ONrHxPlFK/MfI+J9nMQ9lqEcc
 hXwU57dahi5Ym+boGt1gFiUhNAKSSlHcirXY3b1P2lkI8c+L+ELk/e9FjbSGOA1JnLfnaMDT
 3eIj2s3nbJrq9xeMfvr
IronPort-HdrOrdr: A9a23:PK9UmaubYnfFE9bfeyWp4rFZ7skC74Mji2hC6mlwRA09TyXGra
 2TdaUgvyMc1gx7ZJh5o6H4BEGBKUmslqKdkrNhRYtKPTOW8VdASbsP0WKM+UyGJ8STzI9gPM
 RbAuBD4b/LfD5HZK/BiWHWferIq+P3kpxA8N2uq0uFOjsaDp2IgT0YNi+rVmlNACVWD5swE5
 SRouBdoSC7RHgRZsOnQlEYQunqvbTw5djbSC9DIyRixBiFjDuu5rK/OQOfxA0iXzRGxqpn2X
 TZkjb++r6ov5iAu1LhPi7onthrcenau5V+7f+3+4kowwDX+0mVjcpaKv2/VXsO0ZqSAR4R4a
 PxSlEbTo9OAjrqDx2ISReB4Xic7B8+r3Dl0lOWmn3lvIjwQy87EdNIgcZDfgLe8FdIhqAJ7E
 tn5RPqi3NsN2K0oA3to9zTEx16nEu9pnQv1eYVknxESIMbLLtct5YW8k9ZGIoJWHuS0vFQLM
 B+SMXHoPpGe1KTaH7U+mFp3dy3R3w2WhOLWFILtMCZ2yVf2Hp500wbzsoCmWpozuNLd7BUo+
 Dfdqh4nrBHScEbKap7GecaWMOyTnfARBrdWVjiUmgP1Jt3S04lh6SHkYndvtvaB6Dg5KFC5q
 j8bA==
X-Talos-CUID: 9a23:zY/yJWMaPVUpqu5DfzFYrUA1N94eXmTj11CBfV6/Sl1CV+jA
X-Talos-MUID: 9a23:82cx+wT6BYE2P+L1RXTQhCN+Nc5x052NL2suta49hveubDNJbmI=
Received: from mail-dm3gcc02lp2101.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.101])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2024 13:37:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EkeHMBrpO94s+mAIshumEEBiCp+1IW70Qjbgu6En1aQxORCsxdKTYl2I93XpyVRWDsqKL74tBc7pTgZMXUHSgTnaRu3VS674+J2s6n/FW9GcnzkHzxA5e3rlxHbEE1RipBFmJP0BHCRHDIjV+vjy9gg+N/QGNiHc0eodXxBw9E9DGG4LN74PbexttBiXN32zw+I870TC+z2x3+zJCQ4ZX4b01vzF4UPqNOXAiR0E9b943fRQWJo/hFVt7a1ymSagT6fGygapIoaqYMAjrwwesJUv/GJ5017EaKhpFduUjETzhmOF3OIi3dx5zWimoH46VHcpuqtpg97xmDJNQAVknA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LQkiTCBL6Gj9I2JXhQaktYuoi5WKYTsMSo8TXVkZNCo=;
 b=TChMckUnqKbakqX5jEebTEzJdP2qsI8s8WoI+37aCF9hKza7peyxaINz8igi5+eJ4Xrr/Wfd4nsh90czcuqdX2loubUO95P++fwCUJ2PQuxR90t1HT+SMeY5st16PMK/VYoHruzwDEip1xurd/b/ntvPHlAPKStzzZIQe7XKnNe69FvhEB9ZgR7CL6KBfopfqVkdIE6BOnyYpvqRG769xJ5Kh+dGePyfYxNk4gk1lWxDwYqR9JVppJR8euilg5xd65Cweus84Kfo/SqeyZ1pGyMX03ZKY58KWBRMcuAqWxLIFWIIemkuRoyLjtBPgza24LQKyoAWItzR4fDcMfjWjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQkiTCBL6Gj9I2JXhQaktYuoi5WKYTsMSo8TXVkZNCo=;
 b=GhyH9I7iGKmS6ZS3rU2rfRI6J+Cy8kLU3pgUroHheCDsEaPce33oDoVGdpfGoiPTFt+hSvrQhPPeiig5K6Rvy2vrzNk4dDi8IEfqaz3wTmQMNJltni0cr/CSvL3eZLNNBE9kJtZVq40sjPOSjnr0NLiAhayjzSHtD1cTwLV/COM=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH0PR09MB10912.namprd09.prod.outlook.com (2603:10b6:510:2cb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.21; Fri, 12 Jan
 2024 21:37:50 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::978f:8b23:1f3:6301]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::978f:8b23:1f3:6301%6]) with mapi id 15.20.7181.020; Fri, 12 Jan 2024
 21:37:50 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Bug/problem aligning PPS to samples
Thread-Index: AQHaRZ1ms6Jxb+MNakOUR00bkntjLw==
Date: Fri, 12 Jan 2024 21:37:49 +0000
Message-ID: 
 <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH0PR09MB10912:EE_
x-ms-office365-filtering-correlation-id: 346ec0bb-02f6-4e0b-ee55-08dc13b6b9b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Fu4bQ/TOrzconCmp/+aRruBgLGCMSbHk8DWB6+yS2+T544L6a4lhGMrOAqjiuwBktPTJBzfjKOED63DRXCBA415QGB4BSpb3Md9igDOewsJs5duVrMUmfpsuqdXNZlRXvHP3JKXwg8KSJ2A5w9/eEw+sNg6Wmn/lxiVpzXnYQQPjYvDkLZfI03vNkp4ypw21zGBnlrND/PGfxLLOqcULVoqdoWTsWk/foKzz+BkoA1/SFqfdhJ3i9Lo3mqVxGMj/nfprFHuIHRApEwTS0itAAKbR41KQimRbadH2jaUXarCzZGkvZDqtg5LyjDbHhm2hup1g20IWcezRs11r6c7f0RcAw82iEppxqjG0tTQqMTrjNXDeXKC6WNHS0WzfzK8e7xcp6ZWNVheOsSKGsa1o9/+emlmVr9ERJpLyXNJGPVfwGiem+O/kKd9OdQNng73qPv2SmntG6BD31zSeCAgwuD5C2K/3dE08hzMg+YXknlIcTQ2DXFcPgQ6Py+rxqS6kLONIazuWLUYXCzVfV5P3qTdC4XfjLJ/bssMq2A3Gutyz/iOjbVB+69Ka9edAhmBJB3/v/hwldNoj8bbP41AsMkgf4++GUOozvy23BNMaT2ktqAmSJvidKoBwpEgyMlo2R3emRAQjKUp2H6kbAgJf+aP8ufISnGwToJLQjb9VA50=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(230273577357003)(230173577357003)(230922051799003)(1800799012)(186009)(451199024)(5660300002)(508600001)(71200400001)(7696005)(9686003)(6506007)(54906003)(8676002)(8936002)(52536014)(66446008)(64756008)(40140700001)(6916009)(107886003)(66556008)(33656002)(83380400001)(66946007)(86362001)(76116006)(66476007)(26005)(122000001)(38100700002)(4326008)(38070700009)(44832011)(55016003)(19627405001)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?YitIk+j609j6jUDr/QOlaGtpuo1PvQspZjRTdrJejHJE85MYnfzD+bwQ?=
 =?Windows-1252?Q?uxiClBx4KXXT17UGjpKIshZEoPKJUKt0hfddU0O8NGFb1/T2mK7e1DdL?=
 =?Windows-1252?Q?QIQ8274aDQ9FQZyu7x/kWD48FHkSNI2sFjipsdGDSTFY2Nkuho642Oqt?=
 =?Windows-1252?Q?jdf1CDg8uoItYeHztJMwJFIqgKICKz/OxBjR6lnNLwXicFkf3FyI3bOY?=
 =?Windows-1252?Q?/cnnVbBTZTQy6cidc0i43zgMh2WKqeMRMJDaAEK8S5UkdIt63P7I21gS?=
 =?Windows-1252?Q?OhMUBIfUzjQ9602G2NigI4PD2tvu/iqBclBpABLisMQwegEdXJjw6IsQ?=
 =?Windows-1252?Q?cq1UNfntfaFAVmRMR5ZbwSdTzNIHWioQto3qvS1gPoUsyAndLhL3GLDb?=
 =?Windows-1252?Q?TlX6dNuaWYvRh/Zg5IXNnAF30EUDrA/95p2dEuSIgmPzllzuxXreXKg0?=
 =?Windows-1252?Q?4GHyhPtE3vYgtE8XJS0gHOCprIYy1U/4MHUpdJ8/278pngZYQio9DLox?=
 =?Windows-1252?Q?jFGREo6MERSI0GK2L1t/7300o72Dyzt/iECHjEMeunTzcngfpIUkjmLb?=
 =?Windows-1252?Q?mOyQM50DU2yvAnVDVcaVoVmQtxtCA0jezaWvh0WFM95N4v7J3PpIxYAp?=
 =?Windows-1252?Q?47PYRdSnzUFpFjjkckO79rDtiE5LaEXUTMOMKSzi6MPdu+p85auFcqaH?=
 =?Windows-1252?Q?vHzMwioNKkkO8hI3YMGrFhT71a3MbSG8rzEPDLvywVea7Td8nR+u0du7?=
 =?Windows-1252?Q?osccPJbaM/CCH45eMstWqQV+a7aTE+2Zhm/Unu5Us6VQBtV7ylGi09Jl?=
 =?Windows-1252?Q?1M9efWhUI+POl403FjBIZc92EgQTD7WIH+HAz4ybW5ZsUMfmIFp/YdM9?=
 =?Windows-1252?Q?bgPHMfKtB9eM5N0E4/QQpCPBzUUCOAS7rA/WcTCG+DRVOgyVW0A4h+Zs?=
 =?Windows-1252?Q?IQdRQFVFKp/cDtu4x4Mgbp3bQum731RJBhnBoA8FuAmySCzCvsJU8us+?=
 =?Windows-1252?Q?v2TNkNvDAdObNG9uytr2Bs05yj18QFFTCAVHQ7bs3j2cVYDPSbJhSaMc?=
 =?Windows-1252?Q?TT89KDu2VcFzaVgJNyTXBgk2sPFv+AZFWHXDwJ1rR6WjafIwC4ocz8bO?=
 =?Windows-1252?Q?MCyhBCLGceAXv0QpKXWjjF+JiJFC1vujo7n/BLJ88pEzqsRaZyDwZio3?=
 =?Windows-1252?Q?EubeSvBXaIvCvKRz1a3MSj7Fgt2ZYMueE17w9DM53R9daKTcY8M2Mr+9?=
 =?Windows-1252?Q?SnjcskuPOAxT8ysCHk3AwiRznMyOwfo4GDHmXFmsM5FDD0zOsHIpTl/V?=
 =?Windows-1252?Q?UR+ZBVCBPV80TMER6RAJ9Wo4Tm8SKnMZB5taBkXndGRUZe9ZJZE8oxet?=
 =?Windows-1252?Q?Knmk7cWfZFrNw127byPcwKviDivpDv7/zJkCz2z/0wa2SE3PdUJD5PkN?=
 =?Windows-1252?Q?MpBiWTNeJ3IGUQniosNZdP0dMI/9aKLfQ37r6x+FC7kCIDg+r/UO+8Dc?=
 =?Windows-1252?Q?I4dqD0TnMHqOSk/OcHRllVta2MsJhI3bNq0wx05NpXFkjL12AXvSNqld?=
 =?Windows-1252?Q?Z/Y9YMYBraBRxbyONW9W9fima21CjU9huUFyP4snYkWchgPK5PzEJyqH?=
 =?Windows-1252?Q?3yUVfmZ5L9HTqW24Ez/YTOhDlI4MnlHKAeOUvgSlIddqV0tEkm3+a9AU?=
 =?Windows-1252?Q?NFpR9iVFAXc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 346ec0bb-02f6-4e0b-ee55-08dc13b6b9b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 21:37:49.9645
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR09MB10912
Message-ID-Hash: Q66QJQ4DDA4EHW56QO3ZVAGGIGB4HNZ7
X-Message-ID-Hash: Q66QJQ4DDA4EHW56QO3ZVAGGIGB4HNZ7
X-MailFrom: prvs=7347ea215=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mark Kubiak <mark.kubiak@aero.org>, Jason W Zheng <jason.w.zheng@aero.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bug/problem aligning PPS to samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OMTFRX5SDX6WNZQCUCSWVA34OYBQKCV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6517712018785170351=="

--===============6517712018785170351==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126D8AC39D16B934989FD27EC6F2SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126D8AC39D16B934989FD27EC6F2SJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

There appears to be a bug related to alignment of the PPS to samples.  The =
issue applies to both TX and RX and was replicated on N321 and X310 using U=
DH 3.15 and 4.6.  It therefore appears to be an FPGA issue.

TX experiment
----------------------------

  *   USRP is provided with external PPS and 10 MHz
  *   The PPS input is split and goes to the USRP and a scope
  *   The USRP output goes to a scope
  *   USRP outputs a file
     *
First 1000 samples are 1, remaining are zero
     *   File size =3D sample rate (i.e. repeats every second)
  *   Setup the experiment using both:
     *   GR file_source + usrp_sink
        *   Sync to unknown PPS
        *   usrp.set_start_time(5)
     *   Standalone C++ application (based on tx_samples_from_file)
        *   Added code to set_time_unknown_pps(0), then set start time usin=
g metadata to 5

Results:

  *   The USRP output is delayed relative to the PPS as observed on the sco=
pe
  *   The delay is ~1.2 us for X310 and ~100us for N321
  *   The delay changes slightly (<1us) depending on the sample rate (e.g. =
10 Msps vs 20 Msps)

RX experiment
----------------------------

  *   USRP is provided with external PPS and 10 MHz
  *
USRP input is a pulse (generated using technique above) that repeats every =
second
     *
Pulse is aligned to PPS, verified using a scope
  *
USRP records samples starting on a second boundary (time_t(5))
     *
GR usrp_source + file_sink
     *
standalone C++ application (based on rx_samples_to_file)
        *   Added code to set_time_unknown_pps(0), then set start time usin=
g metadata to 5
  *
Recorded samples are analyzed to find the first 'large' value

Results

  *   Recording appears to start late relative to PPS (only verified on N32=
1, delay is ~100 us, same as for the TX delay)

Thoughts

  *   I recall (years ago) there was a fix to a similar problem.  The FPGA =
was modified to trigger ADC/DAC samples after the DDC rather than before.  =
Did it regress at some point?

  *   The delays are very consistent, indicating that the PPS is in fact be=
ing used (i.e. it is not random).

  *   We ran some experiments to analyze the stability and accuracy of rela=
tive timing between RX and TX (i.e. turn-around) when the start time for TX=
 and RX are specified.  The results are excellent =96 delay is stable and a=
ccurate to < 100 ps.

This seems like a simple thing to fix in the FPGA =96 there is no reason fo=
r the delay to be > 1 sample clock.

Eugene.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB9126D8AC39D16B934989FD27EC6F2SJ0PR09MB9126namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
There appears to be a bug related to alignment of the PPS to samples.&nbsp;=
 The issue applies to both TX and RX and was replicated on N321 and X310 us=
ing UDH 3.15 and 4.6.&nbsp; It therefore appears to be an FPGA issue.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<b>TX experiment</b></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
----------------------------</div>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"margin-block: 0px; list-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">USR=
P is provided with external PPS and 10 MHz<br>
</span></li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFo=
ntService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0=
, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">The=
 PPS input is split and goes to the USRP and a scope</span></li><li style=
=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">The=
 USRP output goes to a scope</span></li><li style=3D"font-family: Aptos, Ap=
tos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font=
-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">USR=
P outputs a file</span></li><ul style=3D"margin-block: 0px; list-style-type=
: circle;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">First 1000 samples are 1, remaining are zero</span></div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Fil=
e size =3D sample rate (i.e. repeats every second)</span></li></ul>
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Set=
up the experiment using both:</span></li><ul style=3D"margin-block: 0px; li=
st-style-type: circle;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">GR =
file_source + usrp_sink</span></li><ul style=3D"margin-block: 0px; list-sty=
le-type: square;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Syn=
c to unknown PPS</span></li><li style=3D"font-family: Aptos, Aptos_Embedded=
Font, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">usr=
p.set_start_time(5)</span></li></ul>
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Sta=
ndalone C++ application (based on tx_samples_from_file)</span></li><ul styl=
e=3D"margin-block: 0px; list-style-type: square;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Add=
ed code to set_time_unknown_pps(0), then set start time using metadata to 5=
</span></li></ul>
</ul>
</ul>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">Results:</span></div>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"margin-block: 0px; list-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">The=
 USRP output is delayed relative to the PPS as observed on the scope</span>=
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">The=
 delay is ~1.2 us for X310 and ~100us for N321</span></li><li style=3D"font=
-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica=
, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">The=
 delay changes slightly (&lt;1us) depending on the sample rate (e.g. 10 Msp=
s vs 20 Msps)</span></li></ul>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><b>RX experiment</b></span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">----------------------------</span></div>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"text-align: left; margin-block: 0px; list-style-t=
ype: disc;">
<li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; fon=
t-weight: 400; color: rgb(0, 0, 0);">
<span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); font-weight: 400;">USRP is provided with external PPS a=
nd 10 MHz</span></li><li style=3D"letter-spacing: normal; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; font-weight: 400; color: rgb(0, 0, 0);">
<div><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12=
pt; color: rgb(0, 0, 0); font-weight: 400;">USRP input is a pulse (generate=
d using technique above) that repeats
 every second</span></div>
</li><ul style=3D"margin-block: 0px; list-style-type: circle;">
<li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; fon=
t-weight: 400; color: rgb(0, 0, 0);">
<div><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12=
pt; color: rgb(0, 0, 0); font-weight: 400;">Pulse is aligned to PPS, verifi=
ed using a scope</span></div>
</li></ul>
<li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; fon=
t-weight: 400; color: rgb(0, 0, 0);">
<div><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12=
pt; color: rgb(0, 0, 0); font-weight: 400;">USRP records samples starting o=
n a second boundary (time_t(5))</span></div>
</li><ul style=3D"margin-block: 0px; list-style-type: circle;">
<li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; fon=
t-weight: 400; color: rgb(0, 0, 0);">
<div><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12=
pt; color: rgb(0, 0, 0); font-weight: 400;">GR usrp_source + file_sink</spa=
n></div>
</li><li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embedde=
dFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt=
; font-weight: 400; color: rgb(0, 0, 0);">
<div><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12=
pt; color: rgb(0, 0, 0); font-weight: 400;">standalone C++ application (bas=
ed on rx_samples_to_file)</span></div>
</li><ul style=3D"margin-block: 0px; list-style-type: square;">
<li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; fon=
t-weight: 400; color: rgb(0, 0, 0);">
<span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); font-weight: 400;">Added code to set_time_unknown_pps(0=
), then set start time using metadata
 to 5</span></li></ul>
</ul>
<li style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; fon=
t-weight: 400; color: rgb(0, 0, 0);">
<div><span style=3D"letter-spacing: normal; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12=
pt; color: rgb(0, 0, 0); font-weight: 400;">Recorded samples are analyzed t=
o find the first 'large' value</span></div>
</li></ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"letter-spacing: normal; font-weight: 400;">Results</span></d=
iv>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"margin-block: 0px; list-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Rec=
ording appears to start late relative to PPS (only verified on N321, delay =
is ~100 us, same as for the TX delay)</span></li></ul>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><b>Thoughts</b></span></div>
<div>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"margin-block: 0px;">
<li style=3D"font-size: 12pt; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; color: rgb(0, 0, 0); list-s=
tyle-type: disc;">
<span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSe=
rvice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0)=
;">I recall (years ago) there was a fix to a similar problem.&nbsp; The FPG=
A was modified to trigger ADC/DAC samples
 after the DDC rather than before.&nbsp; Did it regress at some point?</spa=
n><br>
</span></li></ul>
</div>
<div>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"margin-block: 0px;">
<li style=3D"font-size: 12pt; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; color: rgb(0, 0, 0); list-s=
tyle-type: disc;">
<span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSe=
rvice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0)=
;">The delays are very consistent, indicating that the PPS is in fact being=
 used (i.e. it is not random).</span><br>
</span></li></ul>
</div>
<div>
<ul data-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedSty=
leType&quot;:1}" style=3D"margin-block: 0px;">
<li style=3D"list-style-type: disc;"><span><span style=3D"font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">We ran some experiments to analyze =
the stability and accuracy of
<b>relative</b>&nbsp;timing between RX and TX (i.e. turn-around) when the s=
tart time for TX and RX are specified.&nbsp; The results are excellent =96 =
delay is stable and accurate to &lt; 100 ps.</span><br>
</span></li></ul>
<div><span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);"><br>
</span></span></div>
</div>
<div><span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);">This seems like a simple thing to fix in the FPGA =96 there is no r=
eason for the delay to be &gt; 1 sample
 clock.</span></span></div>
<div><span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);"><br>
</span></span></div>
<div><span><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);">Eugene.</span></span></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0); fon=
t-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; background-col=
or:rgb(255,255,255)">
<p><span style=3D"font-family: Arial, sans-serif; font-size: 13.33px; color=
: rgb(0, 0, 0);">________________________</span><span style=3D"font-family:=
 Arial, sans-serif; font-size: 10pt; color: black;"><br>
</span></p>
<p><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: b=
lack;">Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126D8AC39D16B934989FD27EC6F2SJ0PR09MB9126namp_--

--===============6517712018785170351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6517712018785170351==--
