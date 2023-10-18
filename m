Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E4D7CEC3B
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 01:46:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 350143878D1
	for <lists+usrp-users@lfdr.de>; Wed, 18 Oct 2023 19:46:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697672786; bh=KQ1SfY6ePzVfrL69R5uXJFK5FFF5G826XSrpjTkLizc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=chchKxV+XXZ2OsnS7ZK8DM00vRHNAmMGSjzR3bGiGg83Ex3Rp3L0xqtrdQWSNevNF
	 jpbE2jX3Wl9ueNF0yoFnxVXDha1SZHlic6asHS/yqUT3+CXyiwXrpyeFo/LM+yVo/h
	 riGgkiJB8IXYaM8mi3ZoDGRnwEtKl2V8ttEM33gnflEYlW+UR6PmQLP2dpj6sI025s
	 8xMzuuYXT5ubjMWu3IGcHnHh8U9SrM29TsF+OLEFiMsC6SWugol9i1Jlqm5eg5LJdo
	 wuji9coWFwpBLI7rkVH2jZV2QpAHJmex8d33JZ0kGhtzACmyzEyFBAs5PcvJxybZef
	 /hV5c+3N89tHA==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id 12D34387443
	for <usrp-users@lists.ettus.com>; Wed, 18 Oct 2023 19:45:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="lospz801";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="NqKEDsyj";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1697672740; x=1729208740;
  h=from:to:subject:date:message-id:mime-version;
  bh=We0P+4V+1HuxO/Vrm7TC2E5SS6VraU55Q8oIsQTODR8=;
  b=lospz801TREldfh4XgUz8WPjJTlUGjHkp9iG9DBFb3K2BlI3OpGjj5jj
   Z+G9S53f3KdsTkRSa+uEc552KuTYFm2je6yMJGWhRzBXcAtj2xG2hsC1f
   Lh/g1nliTOmUXvvGRAxlbD4z9sm+HGnyZVQEK6s3FKljMswpiF1P1WYoa
   U=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="1235694"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200";
   d="scan'208,217";a="1235694"
X-IPAS-Result: =?us-ascii?q?A2FcAgDKbDBlh2VBL2hXA4EJgU+BNoEDeIFfrWGGT4ElA?=
 =?us-ascii?q?1YPAQEBAQEBAQEBBwJEBAEBAwSEfwKHFyc0CQ4BAgQBAQEBAwIDAQEBAQEBA?=
 =?us-ascii?q?wEBAQUBAQEBAQcDAQICEAEBAQEiFwcOECeFaA2EAIEeAQEBAQEBAQEBAQEBH?=
 =?us-ascii?q?QI1gRoBATgRAQx0JwQbgnaCFw0HAzG1AIE0gQGCCQEBBgQEsBcYX4FfCYFIg?=
 =?us-ascii?q?1yELgGBToNnhQeBVUSBWII3hRQgHyaDTYIvg3aFOweGLYsUgQBHcBsDBwOBA?=
 =?us-ascii?q?xArBwQvIgYJFi0lBlEELSQJExI+BIM4CoEGPw8OEYJDIgI9NhlLglsJFQY6T?=
 =?us-ascii?q?XYQKgQUF4EKCG4fFR43ERIFEg0DCHYdAhEjPAMFAwQ0ChUNCyEFVwNHBkoLA?=
 =?us-ascii?q?wIcBQMDBIE2BQ0eAhAuJwMDGU0CEBQDOwMDBgMLMQMwV0cMWQNsHxYgCTwaA?=
 =?us-ascii?q?0QdQAMLbT01FBsFBIE9BZtnCnyoSYF7jEWUNTQHhA8FgVQGDJ9TF6lqmDyoJ?=
 =?us-ascii?q?gIEAgQFAg4IgWNogS4zGjCDKlIZD445g1+PeXY7AgcLAQEDCYtLAQE?=
IronPort-PHdr: A9a23:qNrvyhFtNdtki7gH51QahJ1GfiUY04WdBeZdwpYkircbdKOl8tyiO
 UHE/vxigRfPWpmT8PNLjefa8sWCEWwN6JqMqjYOJZpLURJWhcAfhQd1BsmDBAXyJ+LraCpvG
 sNEWRdl8ni3PFITFtz5Ygjbr2e1qzkIFUaXCA==
IronPort-Data: A9a23:zhrQWKl3GI8CGBfuG7o0jc7o5gwrJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIZC2mHbqnea2v2f9AnOdzgoBhX6MOAnNQ2HAQ4pStkEi4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8yckjclkYZKlUL6aZUidfSc9FGF7z0sLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKq04GhwUmAWP6gR5waGzilNV/rzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0JxgUfFOj3+KxyoihELNg15kCA9f3bawQ7yQIITHxVZ7KQLjsaI6Sv5p0+Wx1gcpDW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfujCPilAuluawdoONI7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOTiraM00QH7Kmo7A0Q9fmKBsaeDqVeHBdRkG
 xYU+HUDov1nnKCsZoKkBEbg+STsUgQnc8dLCfV/9RqA0LH85weCGnNCQyJddcdgv8gzLQHGz
 XeMltLtQDBq67KeQirH8q/O9Gvrfy8IMWUFeCkICxMf5MXuq50yiRSJSct/FKmyjZv+HjSYL
 y22QDYWnqdQrZYL0K+B5wqdj2Pxh7fXUl8a6VCCNo661T9RaImgbo2uzFHU6/dcMYqUJmVtW
 lBVw6ByC8hfVfmweDyxrPYlQOj3v6zcWNHIqRs+RMd4rW/FF2uLJ9g43d1oGKt+3i/okxfFb
 VSbnARQ4pJIVJdBRfIvONruYyjGILiJKDgIfvXdb94Lbp0qewSMpHtqfRTJhzmrl1Uwm6YiP
 5vdadyrEXsRFaVgynyxWvsZ1rgogCs5wAs/pKwXLTz4jNJyh1bMFt/p1WdiiMhlvctoRy2Jo
 75i2zOikUk3bQEHSnC/HXQvBV4LN2MnIpv9ttZacOWOSiI/RjB+VaKKkeh/JNE590iwqgsu1
 iDkMqO/4Aun7UAr1S3QNhiPlZuzDcgm/ClqZETAw37yiyN8P9rHAFgjm2sfJuB8r7Q6l5aYv
 tEAes6aBe9IRCiP8iYAd5SVkWCRXEXDuO56BAL8OGJXV8c4GWTho4a4FiOxrnVmJnTs76MW/
 eb/vj43tLJYGmyO+u6NNKnwp75w1FBB8N9Ps7zgfIMLIhi0qtYzQ8Ez59duS/wxxdz47mPy/
 26r7d0w/4Ehf6ddHAH1uJ25
IronPort-HdrOrdr: A9a23:6bTFAqMmTmLTpcBcTyP155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE7gr5K0tQ4OxoWZPwN080kKQY3WB/B8bHYOCLggqVxeJZnMLfKl/bakrDH4dmvM
 8OHZSWY+eAbmSS+PyKhTVQZOxQouVvnprJuc7ui1NWCS16YaBp6Al0TiyBFFdteQVADZ0lUL
 KB+8tuvVObCD8qR/X+IkNAc/nIptXNmp6jSwUBHQQb5A6Hii7twKLmEiKfwgwVX1p0sP0fGC
 n+4kHED5eYwr6GIyznpiHuBqFt6ZfcI5V4dY2xY4MuW03RY06TFf9csvu5zXgISaiUmSsXeN
 WgmWZbA+1jr3zWZW27uh3rxk3p1ysv8WbrzRuCjWLkutGRfkNONyNtv/MrTvLi0TtTgPhslK
 ZQm26JvZteCh3N2Cz7+tjTThlv0k65u2Arn+Ifh2FWFdJ2Us4nkaUPuEdOVJsQFiPz744qVO
 FoEcHH/f5TNVeXdWrQsGVjyMGlGn4zAhCFSE4fvdH96UkjoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0KpDS8cHBJgNdNvpgfHHe1AlbSi8Tl56e26XaJ3vE0i91KLK3A==
X-Talos-CUID: 9a23:ys90r2zNFZwURNswJ16vBgUNCIMFKn3axk3KeRW0WDtIZ6OJGHCfrfY=
X-Talos-MUID: 9a23:5SE2EAg1JVLqiTn/E/qyJMMpP55DyJ2UGB43sow/5c+/BXZwOWiwg2Hi
Received: from mail-dm3gcc02lp2101.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.101])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2023 16:45:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dm2PNixomMpUEl9XgWxaX++R/WC55PGWR1k40cWqYtw32TMudPFnaJTiIxLcJsS/w5Nusiepl50+lVf40PATo9QF9+mflYRu5BHwOOXDMvNwS9woZIVfblKEkYFcZBxJ5whz+A8F6x6eh4m0XY+NNVGhM+SYcwOz2gginOiYm1tMImuOEdfbDzzWimKVz6yV600KsO9oKn6jrs31cHHSZN9iUYESJh/F90JF9Rd3YyB4wk5XoRfKUcZ5EitlHKEFGN55B2V2dKWJNq/5ZUrW6X0UrhNvnKliqxR/omyQjWmQo4diKt1+kGtQVQITRBs8qCNpg3SCcwqcv72ULQNsdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQUzOB3tzS/oShFtb4gmuUO/YApZD49MpforJI7btp4=;
 b=CSyTqXEQBmOsEcw+xUzwn8ESTNOL7oHdNC+bz97FTT1GilaaSBp638jM/HvkBOZ7MVGKFda7UrjUkABkJwXw01uGGcQapKF7dKpdZZsgZDmoaQtXldUToYC45UFQYm4gxYxryAahaX6L9DLFaFf4z9fcDW+U4jLcaRObPTi53ypViVkjVYJkTbmu3X0fAR5FqSgRXmUJ/MgbQhdWxfqhYUOlVHK3HqZnN10mRNnioY+iS3aMjOd9lwAbLcrsrephnc+5b5ZXy23DjuKYKh8js+W98c3it+DofJ8Lddixsytm0U/U4WqfqSextW91yK+VyKpWumJyduLk1cbTx112QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQUzOB3tzS/oShFtb4gmuUO/YApZD49MpforJI7btp4=;
 b=NqKEDsyjHgZmme5twrH1VSywAW7Ot9c3SzM/7MhyxIDqCPSyzRHNxW6S1QtDWOUSWakWZZGQrErIoXVRUvinzXeh6s8nPy8p63OwT1nlqA32P4d4umUfRPmDvl/10QUsc0qjcS9x2+uoWh+oFRqxW8F34paow8uBIhZYTHNZI/o=
Received: from SA1PR09MB9130.namprd09.prod.outlook.com (2603:10b6:806:28c::16)
 by MW4PR09MB8868.namprd09.prod.outlook.com (2603:10b6:303:1f8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Wed, 18 Oct
 2023 23:45:34 +0000
Received: from SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::1793:871c:3838:51de]) by SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::1793:871c:3838:51de%3]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 23:45:34 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Full scale power for an BasicRX on X310?
Thread-Index: AQHaAh0fZB3Jj0C0vUixfWoTc0pKZQ==
Date: Wed, 18 Oct 2023 23:45:34 +0000
Message-ID: 
 <SA1PR09MB913066B57749C64C57C389D0ECD5A@SA1PR09MB9130.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9130:EE_|MW4PR09MB8868:EE_
x-ms-office365-filtering-correlation-id: c4d413a9-aec7-4ba3-ac55-08dbd034525b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NIJLL95dW9keTZDtP2NrYAjnKS0uUJwniMs202PxhQxKYql61GBxNhuWHvcro8wtdfNXiNWDEpql5G24FG+pGEURMCfSRKow4JXVV7aQdm+WaHSVSOo4sGru0oeXzTOaGnyiBDJrAMa2LnbRXj2LSjwXkDDMIsaxieECrHU22iXd0HSEGUGcbz3SEIjZS4rHUQ40XyqLXNDUi+GbY6p/sRJhLpTI1R2SS4RP87DETXq690VaLe5BxUXXZ+YjCEkzrT25I1a3xdRcnEJ8+ehOWOYVVbysRkWuWjcrlZi2BiR82hn9MEbn3ds370kddOEoR7T82+qUK0cCTvOupZbDjs63F+eJHefWApvKAx/4Y1Ua77tYQxsxb3CJehF7yNEy47NG1LJynot5VQFab5hZqTGyYf3mr4Ml2lu4Udl9Zx5wvNBetqj/+gINGoUOsoulNANy3cxt9wRkbJ8ycnPjl6Pcxs9Bgmn0Wn2xb/qOCUBlwgVnUMKVtYO2QoFMAzPBVlRTIH7lgRqxcPgRQ4Z1xixAeIZGJuJNSx2Hfiala6PtjYCqdu/XWeWLs810E5bTOGGFlnbxPg8+VnDBjOpHfwqjjrZu3zsARNvZAhHR/DHi6uTb3DWAi1OMdzGwNvKI
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9130.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(186009)(1800799009)(451199024)(91956017)(6916009)(64756008)(66476007)(66946007)(66556008)(76116006)(38100700002)(71200400001)(122000001)(33656002)(86362001)(38070700005)(40140700001)(558084003)(498600001)(55016003)(9686003)(26005)(6506007)(2906002)(19627405001)(66446008)(7696005)(5660300002)(52536014)(44832011)(8936002)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?EsqU7XU6edJWLVSYmvwA7ngvyS5C92OPUWm4s3BwZEZ+5kre5JMaX7omQi?=
 =?iso-8859-1?Q?Ag2fu2u5NHWyvv/ClY3Exb3H6olnJjbCleiIrVTzp8TiSPt6ktb05jEjCk?=
 =?iso-8859-1?Q?3Aw1+6dUjtGFkNpg3/cXVuCa8iN3UjOMIofHK7bQ3dXIMoymE/GAv1hHT4?=
 =?iso-8859-1?Q?NJTdoJaK1AVzC7oRAunTav4z8vZDReX2RxCnxNTQgc0tn7+C+GuDINBfAt?=
 =?iso-8859-1?Q?Sk3mIeeacdr125JEfTO1B1OiDohEaKHdAjFtTq5CiykYszwsUwtKLpM9zh?=
 =?iso-8859-1?Q?z3TQ3Xg/kjTxghlG03bKMokhYX0OSuKaU8kAgZdBXBnGqAQVAvBAblsj5r?=
 =?iso-8859-1?Q?fmjWOy9YobGXl2GvyU8V/ay/GBby0TjlaAnD6K+m2V0rIHL0vDQwxf5v08?=
 =?iso-8859-1?Q?gXYN0/OxkBnfWWk9yyjxDdhSVOhhDvR7RttipssWZk7PnZXD1QyVVDL6WR?=
 =?iso-8859-1?Q?Aw4ZxSijklBmTue86id29pGPjfUzDcBhgA5ABOSstZPPeNrzLvkT7twA1g?=
 =?iso-8859-1?Q?CGisVfrSHGe4AVPtSwySatzdxuX1BnzsBN1RJTmIrAtp8qtinPi2cv6eXg?=
 =?iso-8859-1?Q?losn4exfXVB5Lj4VK8q9eOPhJ5msLLTHjivonMQYduXKs4pG+88fijr1Pk?=
 =?iso-8859-1?Q?Cz23uy1SSxrw3ndvhfJcVW+bXQc7Tbt0EIPvuN6ZxVDV0SNXN/tuu76Zml?=
 =?iso-8859-1?Q?NwjtQCl3Hp41dHpZWg3Zz+trJDqUVnfyW61rW/VXF3kIbkoJ7sCPQM1DO6?=
 =?iso-8859-1?Q?AdjZ/gDj/U7VIis6yurcvA6zpZH5Zsrj9/gKQLIFKUh8DWyFKL7WaC8fNe?=
 =?iso-8859-1?Q?oop6VHUzCKnTD9XUHGqUrobkrJFEA4CiuLEw3j6Cm5cLwZys6L08z276hV?=
 =?iso-8859-1?Q?EEOROEQM6O02StS/PzAQOaUe99bwJVC9EqJpXW7/hMmbDc+9m+agpB/mLd?=
 =?iso-8859-1?Q?KMrmheqOW16FfMfI3VJFB29zZ15foKPUJOg8z84b4hr9COvIaEsOMDk8O0?=
 =?iso-8859-1?Q?KmJXjZtv0Z7s42nVmYlY9HziSRNyAqa1xVPgR45UMSH3/VxFRMz6eNs4en?=
 =?iso-8859-1?Q?oAyMRlXEP1ZYln0r2HLJMkPw50mch1vIbQAY6KJj7KMDXjaFnhQJ4gMfTv?=
 =?iso-8859-1?Q?J7aP2OkIXftvpH1SbzSOge66HDs6t/w0NCnbI4KomXZW7UGEteBFQ56Xg0?=
 =?iso-8859-1?Q?ujg5VnXvInPn3i9rEFOaWyyD5sZ6xH2TO1ZogiwOt0c5KVLxple1jh6rVD?=
 =?iso-8859-1?Q?Q6UCWMkllGMG6HrhxDPdCKdWH3HjXw1irfEnl+wW2XCPbFW+Z25EY+e45A?=
 =?iso-8859-1?Q?4ZacflHDyxlOw50q0/rILNEx1q5OTqAOdo6vkHbGSIJ9m3yzqcxZUytCTr?=
 =?iso-8859-1?Q?c1MsoSn/l6zL8CePPFZCUkNE0mB3nNNIKahreRuCyaDGCBSI3BlCjNYGVA?=
 =?iso-8859-1?Q?Swrhp3WL0V0UL11n7yGxnW7ZQ9itON9zzdSO93ZYEg3sJJo0aG4Hv4vuJx?=
 =?iso-8859-1?Q?7vPzg/g73xJQZsajR68ojhzqxqjYWAlRX0/UjKNcaW7D8dAsYDcAgS7MkN?=
 =?iso-8859-1?Q?Qo0iro3x23fLCQFoTOIEy9DzFnUkEw536Gp78Xgt8yVdhbSw2MOGOO9zZY?=
 =?iso-8859-1?Q?SH81Y0twq8XwE=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9130.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4d413a9-aec7-4ba3-ac55-08dbd034525b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 23:45:34.1362
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB8868
Message-ID-Hash: EUTHY6Z77HOBXIXVOI42OGTRRHZBQI3I
X-Message-ID-Hash: EUTHY6Z77HOBXIXVOI42OGTRRHZBQI3I
X-MailFrom: prvs=64846d70d=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Full scale power for an BasicRX on X310?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZLQOHSEYDGWAJYEZKCLMZUHETOEQTF2M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4992156221699002315=="

--===============4992156221699002315==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB913066B57749C64C57C389D0ECD5ASA1PR09MB9130namp_"

--_000_SA1PR09MB913066B57749C64C57C389D0ECD5ASA1PR09MB9130namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Does anyone know what the full-scale power into a BasicRX on an X310 is?  I=
 have one in the lab but am too lazy to go measure it.

Thanks.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SA1PR09MB913066B57749C64C57C389D0ECD5ASA1PR09MB9130namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Does anyone know what the full-scale power into a BasicRX on an X310 is?&nb=
sp; I have one in the lab but am too lazy to go measure it.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks.</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); backgr=
ound-color: rgb(255, 255, 255);">
<p><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: b=
lack;"><span id=3D"ms-rterangepaste-start"></span><span style=3D"font-famil=
y: Arial, sans-serif; font-size: 13.33px; color: rgb(0, 0, 0);">___________=
_____________</span><span id=3D"ms-rterangepaste-end"></span><br>
</span></p>
<p><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: b=
lack;">Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SA1PR09MB913066B57749C64C57C389D0ECD5ASA1PR09MB9130namp_--

--===============4992156221699002315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4992156221699002315==--
