Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V+CBFsWlRmrQawsAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 02 Jul 2026 19:54:13 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6456FBB37
	for <lists+usrp-users@lfdr.de>; Thu, 02 Jul 2026 19:54:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=G6thZpqt;
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=FgxCR5v+;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=GpXrrAqA;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F28BF386A42
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jul 2026 13:54:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1783014846; bh=kjIXeOyi8NUznqYByt/txI+KO+T7tn52hmlAJcTgP/w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=G6thZpqtZ+zwWNibJlDww8TBkl9e14sI8lbj9LCX35glBaauXOIh8jrU65rwzv8ga
	 IjsFdo/G53o8WckUbSxL2sOHWgSdl7w8ynMw2dDGHEAj7Hiec7HynUFrnMb9aOn1kd
	 G9Gt/7DAg8Fi2LwrP9ODyF04w0cOpNuj9pe9kR7tSD7zbPgxjCaJ/VFyNWkCw2WXF3
	 4ewud2BWjqeGzT8y8Shf5Gde3PqfV4ugyw6TjuY+N8PAf0KEOa+K4ElyusXszyEBzr
	 5EBmwqX+teXVLv8lJhh4EXPA/LQa5iBxe/T41KpddUsdbsIroxZOQu1coYoXrsEiZw
	 fQ3Bvwe8GqjSQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 785AB3869F0
	for <usrp-users@lists.ettus.com>; Thu,  2 Jul 2026 13:53:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1783014830; x=1814550830;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=V4m+8Sn7iP3/2Tl7RTl2RWCcYVMdlipq8ODgQdvJIyU=;
  b=FgxCR5v+a2G1Vcqzomt/yZzxZIq34f2gDGHXjWBLGC6B8h2mCZgbiKX6
   KNdHegxZ85D1DkYzW36v42tE0w0njoPm83abvLalxLLmjZvlzJeFrmyCh
   OSS0pBo4pcR+6PIVnlTrrrN0kRjR6U2KAqflT2eXiZa0MaUhHqhClFhie
   4=;
X-CSE-ConnectionGUID: s/tpk6PZThCX6I+5f9Anqg==
X-CSE-MsgGUID: WSXspj6lSuGGVKXExHQLKA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="9553331"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000";
   d="scan'208,217";a="9553331"
X-IPAS-Result: =?us-ascii?q?A2GNAQCZpEZqjhYOXShXA4JZgT0BWilCAUWBbJZMA4ETn?=
 =?us-ascii?q?RyBEANRBg8BAQEBAQEBAQEHAi4BIgQBAQMEhH8CjU0nNwYOAQIEAwIDAQEBA?=
 =?us-ascii?q?QEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEdAjVVAQEBAQMBJhkBATgPAgEIEQQBASEBDScKHQgCBBMIgnqCHgcEC?=
 =?us-ascii?q?wcDNro6eIEBM4EBggwBAQYEBNsqGGWBaQmBTYN+gUEygmkBASqBNYJdgSEZh?=
 =?us-ascii?q?Hw2gVVEgRQBQoIxBzE+hAYjHB8FAQUbg06CMIImehIbcjGBCoERQI0XUnIiA?=
 =?us-ascii?q?yYzLAFVExcLBwVeRUMDgQYjSwUtHYEjIR0XFh5YGwcFEiAqQUUjAydZQTgLQ?=
 =?us-ascii?q?wWBWQKCCU4jHwM5f4EwdUxrKjWBAwIQHgpsQiSBIgMLbT03FBsDBIE1BYwgB?=
 =?us-ascii?q?1wXD4FLLSVCWRMBMBuCKi2SRi4UjztHjhmUYzQHhCCBYAYMl22IMheqbJkIo?=
 =?us-ascii?q?32FGgIEAgQFAhAIgX5SgS4zGjBDgmdTGQ+OOoEdAQGCSs45eT4BBwIHDwKBc?=
 =?us-ascii?q?5ACLYFQAQE?=
IronPort-PHdr: A9a23:WgF7Ch+QvatuAP9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:cJDWbq+KVdSBAa+HHKa7DrUDn36TJUtcMsCJ2f8bNWPcYEJGY0x3z
 DYbXG7UbPvYZWb1KI1yaI+0/EJU65eBzoBlSwBrqCgxFiIbosfsO4+Ufxz6V8+wwmwvb67GA
 +E2MISowBUcFyeEzvuLGuax9SEUOYagH+OsU7Os1hhZHFIiEGF4z0o4w4bVu6Yw6fChGQSBp
 NjulMPWPV6hylZcP3kdg065gEsHUM/a5nVC4zTSWdgR5AWAzyZNVspFTU2MByKQrrd8T7bSq
 9nrkenRElPxp38FFt6jm7DnRUwGKpa60d+m1xK684D76vRzjnRaPpQTbZLwWm8O49m9pO2d/
 f0W3XCGYVpwZPWUwIzxZDEDe812FfUuFLYquhFTu+TLp6HNWyOEL/mDkCjalGDXkwp6KTgmy
 BAWFNwCRgvEm/q1noqJdulHtpoCb5TlbaoZo341mFk1Dd5+KXzCa57jtOdihGYbu5gWR7DZe
 tYTbidpYFLYeRpTN1wLCZU42uC1mn34dD4eo1WQzUY1yzSLil0qluGxdoCPEjCJbZw9ckKwq
 3/J8mL0RB4APc2BxCCt+3+2ganIhyyTtIc6ReDlraUx2TV/wEQsMy0NTVnlpcKkpWGAeOJyO
 2wt3gkH+P1aGEuDFYKnA0LQTGS/lgMHQcIVDvY38hqlzqvP/x3fC3QYUyUHY9sj3PLaXhQv3
 16N2sjuGCBvu7CTVWiU8qqPpCG2IXFKdTZaPXVeCwwY/9PkvYc/yArVScpuG7K0iduzHizsx
 zeNr241gLB7YdM3O7uT5hfbmzHynqr1TiUFuCSUA2z0xwVga9vwD2C30mQ3+8qsO2pwc7Vsl
 H0Nmszb9+cTEZGGmSqRWuwJAaqg9fKdaWKE2AY3RcNn8Cmx8Xm+e4wW+Ct5OEpiLscDf3nuf
 VPXvgRSopRUORNGjJObgaruU6zGLoC5T7wJs8w4iPIVPfCdkyfcrUlTiba4hTyFraTVufhX1
 W2nnTmQ4YYyUv89kGXeqxY11L4g3Cclwm3PDZv81QzP7IdykEW9EO9fWHPXN7hRxPrd/G39r
 YwDX+PUkE83eLOlPUHqHXs7cQpiwY4TWcqu85Q/my/qClYOJVzN/NeLne5wKtw1xP09eyWh1
 ijVZ3K0AWHX3RXvQThmoFg6AF8zdf6TdU4GABE=
IronPort-HdrOrdr: A9a23:KiSDqqPRrHPkRMBcT3L155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE8Ar5K0tQ4uxoWZPwCU80kKQY3WB/B8bHYOCLggqVxcRZnPLfKl7bambDH4xmpM
 BdmsFFYbWeY2SSz/yKhjVQeOxQo+VvhZrY4Ns2uE0dLz2CBZsB0y5JTiqLGEx/QwdLQaE+CI
 ed4cR/oT+hc2Q8b8iwBHUJNtKz7eHjpdbDW1orFhQn4A6BgXeD87jhCSWV2R8YTndm3aoi2X
 KtqX202oyT99WAjjPM3W7a6Jpb3PH7zMFYOcCKgs8Jbh3xlweTYph7UbHqhkF7nAjv0idlrD
 D/mWZhAy1B0QKTQoiBm2qt5+Cv6kdt15ao8y7jvZKqm72FeNt9MbsNuWsRSGqn16It0esMrJ
 5jziaXsYFaAgjHmzm479/UVwtynk7xunY6l/UP5kYvJrf2RYUh2LD3xnklZKsoDWb/8sQqAe
 NuBMbT6LJfdk6bdWnQui1qzMa3Vno+Ex+aSgxa0/blmgR+jTR81Q8V1cYflnAP+NY0TIRF/f
 3NNuBtmKtVRsEbYKphDKMKQNexCGbKXRXQWVjiV2jPBeUCITbAupT36LI66KWjf4EJ1oI7nN
 DbXFZRpQcJCjDT4A21re52Gzz2MRWAtG7Wu79jDrBCy8zBeIY=
X-Talos-CUID: 9a23:uMZUUWOpLa6Oce5DQ2577E1KIvIZclbtklaTfkHpIGBwR+jA
X-Talos-MUID: 9a23:u7w5PAkITChUulbnJLLidnpdD/dz+6bwDHsQvro4mPmpJQxJHxS02WE=
Received: from mail-southcentralusazlp17010022.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.22])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2026 10:53:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VH7Fqm75EBaReMbA89o+MRTy2eAeUxTVo/kb8nko5FmthYjgesm8Os13gIsPTtO+iCozDARpL8VZNCo4iDJHkAove93Mey/3ZlKBSFbnyTojERLpW4HzZ0DK7JunRmOehnl0JoT+Bfn0m0Y6W2v6WzGsboO39+ALinQeACZ7CRDoKEHmyGjkN97BGkiMaK2+p4kg2FtR7IoRkswggjFt+UZ/Wik1RCgKX/e8eJV8Xf6h4CXQQY3gqq3rvlZqme1FF6ZatJvb/MYZYcwk+J8uY2IABEWRDTAqqvD5S41K2HUNHSdBfCB+CLDr/UYWMvVZcQYFJ5VhvqD1o1OkCltWWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dpwvKK6j1CmLRKPQQwHficf2zUSEdOmjuSyMlGaPM8Y=;
 b=fljndflQ+90vouHlMW34E9u0ll+l1xqIdUSmt61t84p0H5LWn+ZF2whYCrS6ZhjgH4bhgn6BDy3dtRDkNGkTC9XEiP1IKnZzVlazYYnWxSu4rnWZPKra+f/a7wqxINHWlxJR5x1zKl658wU0zsuTIl3A7NTmNPcs+S2gZopIaykDPlRT+/4M1wJGfHhTc0vg3TmA/jGHdIKkZE1A/+eErXSwZo3QlI8Z1yAwA7YEfz7p1I6Z8LPeBlQIrQTh3Kp4XeesqcY1hiCKKggdmUW2sQrXFr9ueN8v+Bv7JMK5h7vQ5qVE/SCjF2OVe65PPMuI5+tNRBOM19L+iGFjpzYSzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dpwvKK6j1CmLRKPQQwHficf2zUSEdOmjuSyMlGaPM8Y=;
 b=GpXrrAqAmJJ+Q6h0DnmNZc8qa7YMz7oLnPVPLI2V1YS4ETwckh6WqovynKSQEpOkgUP4+4m6BQkHR0J1BzG5qVJbAy+DUwXHKWrP0LiYPIsVuZanlYV6loDJ0dAlrvbP0PVmOhfJ5SL9OokEvgWb39zEWJoFZodbNB0F8cnZJoQ=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB10668.namprd09.prod.outlook.com (2603:10b6:806:365::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 2 Jul
 2026 17:53:45 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0181.010; Thu, 2 Jul 2026
 17:53:44 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 RFNoC build with TX FIFO
Thread-Index: AQHdCOeSaclwuRlUrEyueQFJgPeIyrZY9bl2gAGN6ro=
Date: Thu, 2 Jul 2026 17:53:44 +0000
Message-ID: 
 <SJ0PR09MB91266A3647902D5C21B21B24ECF52@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB10668:EE_
x-ms-office365-filtering-correlation-id: dd7ac11c-ee36-4210-75a8-08ded862dc4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|1800799024|366016|23010399003|22082099003|18002099003|3023799007|8096899003|38070700021|6133799003|4143699003|56012099006;
x-microsoft-antispam-message-info: 
 TLo4+vt7bdo/fGTQJ6AHnM2Szw8OZriVu9TUZijF5B7KI9mCxHLDXTOQ655NvSftH0kDiR1ECSw3Z/0cMk0wLyVdO78fpWNXl8hnJ+KLwhw0ub3iCN4dSyk0G/GAT7Or6DDB6AW63AkZriYaQTmhAdfB0NiSJ8Lu3gqWi6N4/alrttvGdHfHCOWBTYqt87cp5Lx8BZxZSV5fsgTN1FavarSYL+HR5MrypvTJZhDEcbEQEbmlnaFzh/dt/+iCnEJERmxxzE3elbi7NtdhcstoPAo/TWVrh84SNJpEwNI3vP0e+3yDx02RiNX1+K3/7cf8x4NRPbzZcSOQM6Shw2jeLLqR+xB5Hp6fjBmmPP0x+B6mZf+H9cGSta0fwLLNOi1RtLdc9gWnTSf7Wsm3viRpGTfWiW5DLnTRekmqic7WLuGM7Kq+j8PNh25jvKnLvMhLEIzlXv/ERHt5SdO90uGxec6fQxtKJ1SRMBvUGh4wA/GoDMTqq3njp7Hr276CsylKrsr53ETWivMz0Z/0YcV7PziKStVq3CFzpzOC3G3NvFhCJpJZX4WBNkL5ywNYx8Uj5wGDczVVqox5GZIpvaywn+D6XsFQgKSjGRPqqsVhTSg1vzSIrDJV46Js3dZF1HltTxJ7/2d0z9ZcqRsYdZetvpaP+4OEl7jOQ9vlfG34GYFNjShcGnVrIhiZpVfM7nxJDAv+iSW/yanftsOK0W5wzWSIvmldzjblh8fICVVO5lM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(1800799024)(366016)(23010399003)(22082099003)(18002099003)(3023799007)(8096899003)(38070700021)(6133799003)(4143699003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?rnIfepxxMirtRt3a1HubyVJzcuDwbeEWFSdkc+5XbXA12gnomDZMGClk+Ohc?=
 =?us-ascii?Q?LvNUwwrTDQ/Fko6iinEgYmVFJr9TbzahvBam2FGIry9NnuHEXv2Gx/XGsTh9?=
 =?us-ascii?Q?aRVp4T3tkWPX7J9aY1J3POYFnZZ6P3aQXUZy3MB7HA197/yiGJ2wMI9+8RXM?=
 =?us-ascii?Q?iaKTnfBsJS3iM8ybWqthczEedwCPgqcGAfOulD0koYFM3GrOGgUk2H8Vf9JL?=
 =?us-ascii?Q?DXskOJgA+i+/PJjJdsaD2ig34JmB8aOTHT1iPrwZvG4hdv2DQwHU4J9EB4Es?=
 =?us-ascii?Q?NJMmRV8psWuuWyBd+SizxJQDponMFkPVTaxTGapFDtVsRuj9ReKBd/Uoa9jw?=
 =?us-ascii?Q?SwJHcHg8T1RGOBZmbnASrMDhpXxK9L89CjSMQmFWhps4rGjBh8sGsw8t5QzF?=
 =?us-ascii?Q?FT6Sa2wkehn5TMp+ERVeHc4yw/eGgHTdcM/SrRbJttL89LQkSYYFPZjt8DQ+?=
 =?us-ascii?Q?kuVb3g/l+PMs++5hlM6VWkikv+5ZfhMIBBGMvdOfqC3yjy/pJTAPVkgAwAIY?=
 =?us-ascii?Q?m/uWvHYZvzZ8B6sFrgOc8AtM8WGI6ulYBTMEI37RDuTvXhE06eoyxuzXVnQ0?=
 =?us-ascii?Q?3GSYJfPpS1uUKx4cGyxF1F0ZICgFplBX3InWjQ3oq4SEIjTGnOqwMCLg9DGq?=
 =?us-ascii?Q?IT6CFlWiRkj/2rQv4tsN3e2aZkUXeVVyzE4rthtHFbTIyAgupuPlKJZZPNyO?=
 =?us-ascii?Q?4jT7qOt8LTyvoTzoWh8gxj/4VAdrWHzpNbmbUykN/h2axgxt6pojSKLT4Nz6?=
 =?us-ascii?Q?weEAoVRMaIQ9FmFGiZI7MoecI8u4LJUTLuWfd/AJiWrO+k4NTV93n/Gxzk0s?=
 =?us-ascii?Q?MQJqOuy2Y5lChBx5ts5M3eAbpuS+cd7BTWAQ4Uyv8TJd7QVPsF0ntMDbceoi?=
 =?us-ascii?Q?spAsrynf2P9JlEB51aaWEKXPvmwoSrWu/y8XCjIqFHIOeqGsLt03VdwhpnjI?=
 =?us-ascii?Q?OZmOMS34iN8sa7/gsFIk9wndHih8gp43UWZCX0LbJb+DuKAAiJBR2+v7prEd?=
 =?us-ascii?Q?Sx+FvCWC6p76YdR0SWFYbmYNKi6bscRgxSe8/X4/nDY5uODYXbuNFBfKaKm6?=
 =?us-ascii?Q?+OpmHH22rbVHml/WqYlo+WWytJ52L88vwvW5QzgTaQySvyQWwOfla6JajJmx?=
 =?us-ascii?Q?36NTgJZeYpvC/LzWKR/IpaxvF5qbou95X9nwIq1cKQzgzS0OZufYpKg0g2eb?=
 =?us-ascii?Q?/Iv8ynhBKg4vZbTVaUBxJYmD14wDifSuQo5hx5sNDwh2UHqxzXcmzigclkX8?=
 =?us-ascii?Q?1l2/sm93lqGf8Wsrw+b49eHb2bcNdBJjKOnQ/XulEcN2zPbKW2CBS3slT8Zr?=
 =?us-ascii?Q?mNgKjYwhPp5y7D5rUsBkwhbzLmck6vx1s19Ry6rY0njPffZFC628GeNcFQpk?=
 =?us-ascii?Q?mpRIRrfU5xAWKtb1rivc0J17skQznpkYHzTTeiBGdVohkPiZ1OD1N3tSmTUp?=
 =?us-ascii?Q?bAA1SweS26yGgZZaQHh/TTGhkpWtGo2tE1SQgeeUaqnI2k18p2RcvAiW6Yyu?=
 =?us-ascii?Q?Wr9ngn26ad9aMpiuVqy3d4RQYxD9o9/044aNfbwS8gVAl0w3eiZsVF68KVbE?=
 =?us-ascii?Q?hWLTICskGprh+3SskjC7QSc39xuYLJfnhRWnkzqccUVmgKLByST0r/rZhmHs?=
 =?us-ascii?Q?3HsVfRroiKGLtZhBid8wN/83Pye+GLkcn8Oeart8XXGJL1RBte2jsBY2NZqx?=
 =?us-ascii?Q?x7zHghXy6Yc3ue7VuEkjq0T+UfCVHxTYBseLgHMX4Jx+Y5CS?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	Dwd3ZWS0HHrRsfuA2vsI2fQrvUKskwjwJCyuk/qrBHRfEHCJJQqN7OPGckkDAShtS8brjdhz8G6xHm5MQiYvhKI9WkSeHWv1FYxNX8hTOR/sZ3pIEjxnA/08zg/DisNGwHUkPR0tJtXVpM98oj2dvlC50XMp1sgYRxEnvLMBrnFjAZp+T+jajpOhKaGcmI238xlrZSwJ9U2GQC1Rdl/LanpTHLKwZAHfI2ddWVIbSDDoBTLzYjNaP0mLixg2O+Awzogsr0QC32lC4N4BToNiiUO7UwvmPIUbPRKz3E0tojTO/FVl1HoV3n6/DhclZg1ZCtVqU3R7yy0xhsK6w/dAsg==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd7ac11c-ee36-4210-75a8-08ded862dc4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 17:53:44.7274
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB10668
Message-ID-Hash: COABU4OOTVBWC25LCDLP4RAC2U3TSCPD
X-Message-ID-Hash: COABU4OOTVBWC25LCDLP4RAC2U3TSCPD
X-MailFrom: prvs=636286108=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC build with TX FIFO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5U7SHNOVJ5CU5QTIQHCKV5KS5E67NZW7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5843501476155524580=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.ettus.com:from_smtp,mm2.emwd.com:rdns,mm2.emwd.com:helo,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B6456FBB37

--===============5843501476155524580==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91266A3647902D5C21B21B24ECF52SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91266A3647902D5C21B21B24ECF52SJ0PR09MB9126namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry for the spam - the issue with rebuild was my mistake - I had a typo i=
n the .yml that was being built (the one attached to previous message was c=
orrect).

I can now rebuild an image w/out RX DDC and w/ RX radio going nowhere.  The=
 fixed connection is EP->DmaFIFO->DUC->Radio.

Usrp_probe gives the expected result as shown below.

Unfortunately running a tx-only benchmark results in an immediate and conti=
nuous stream of 'U'.  What am I missing?  Is this not the expected use patt=
ern for DmaFIFO?

Thanks

----------
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/DmaFIFO#0
|   |   * 0/DmaFIFO#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/DmaFIFO#0:0
|   |   * 0/DmaFIFO#0:0=3D=3D>0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
|   |   * 0/SEP#1:0=3D=3D>0/DmaFIFO#0:1
|   |   * 0/DmaFIFO#0:1=3D=3D>0/DUC#0:1
|   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
|   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:2
|   |   * 0/DmaFIFO#0:2=3D=3D>0/DUC#0:2
|   |   * 0/DUC#0:2=3D=3D>0/Radio#0:2
|   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:3
|   |   * 0/DmaFIFO#0:3=3D=3D>0/DUC#0:3
|   |   * 0/DUC#0:3=3D=3D>0/Radio#0:3
|   |   * 0/SEP#4:0=3D=3D>0/DmaFIFO#1:0
|   |   * 0/DmaFIFO#1:0=3D=3D>0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
|   |   * 0/SEP#5:0=3D=3D>0/DmaFIFO#1:1
|   |   * 0/DmaFIFO#1:1=3D=3D>0/DUC#1:1
|   |   * 0/DUC#1:1=3D=3D>0/Radio#1:1
|   |   * 0/SEP#6:0=3D=3D>0/DmaFIFO#1:2
|   |   * 0/DmaFIFO#1:2=3D=3D>0/DUC#1:2
|   |   * 0/DUC#1:2=3D=3D>0/Radio#1:2
|   |   * 0/SEP#7:0=3D=3D>0/DmaFIFO#1:3
|   |   * 0/DmaFIFO#1:3=3D=3D>0/DUC#1:3
|   |   * 0/DUC#1:3=3D=3D>0/Radio#1:3
------------


________________________________
From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Wednesday, July 1, 2026 11:03 AM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: X440 RFNoC build with TX FIFO

Hi,
Turns out even rebuilding the stock .yml results in the same error.  Is the=
re something wrong with either my build or with the version of FPGA code ch=
ecked in?
Eugene.
________________________________
From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Tuesday, June 30, 2026 4:33 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: X440 RFNoC build with TX FIFO

Hi,

I am trying to work around the underflows on the TX.

I added a AXI DMA FIFO and rebuilt.  As far as I can tell the yaml is OK, b=
ut when I load the new bit file,

uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit

I get an error:

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0

Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).


Here's the .yml file.  Note that I removed the RX DDC to reduce the FPGA co=
ngestion.

-----------------------
# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args          # Identifier for the schema used t=
o validate this file
copyright: >-                            # Copyright information used in fi=
le headers
  Copyright 2023 Ettus Research, a National Instruments Brand
license: >-                              # License information used in file=
 headers
  SPDX-License-Identifier: LGPL-3.0-or-later
version: '1.0'                           # File version
chdr_width: 64                           # Bit width of the CHDR bus for th=
is image
device: 'x440'                           # USRP type
image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the generat=
ed output files
default_target: 'X440'                   # Default make target
inherit:
  - 'yaml_include/x440_radio_base.yml'
  - 'yaml_include/x4xx_x4_base.yml'

parameters:
  RF_BW: 400
  ENABLE_DRAM: True
  NUM_DRAM_BANKS: 2
  NUM_DRAM_CHANS: 8
  DRAM_WIDTH: 128

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                                  # Stream endpoint name
    ctrl: True                          # Endpoint passes control traffic
    data: True                          # Endpoint passes data traffic
    buff_size_bytes: 262144             # Ingress buffer size for data
  ep1:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep2:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep3:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep4:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep5:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep6:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep7:
    ctrl: False
    data: True
    buff_size_bytes: 262144

# A table of which crossbar routes to include
# -------------------------------------------
# Rows correspond to input ports and columns correspond to output ports.
# Entering a 1 includes and a 0 removes that route from the crossbar.
crossbar_routes:
  #  eth0  eth2  dma   ep1   ep3   ep5   ep7
  #     eth1  eth3  ep0   ep2   ep4   ep6
  - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth0 (QSFP Port 0, Lane 0)
  - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth1 (QSFP Port 0, Lane 1)
  - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth2 (QSFP Port 0, Lane 2)
  - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth3 (QSFP Port 0, Lane 3)
  - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1 ] # dma
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep0 (radio0.0)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep1 (radio0.1)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep2 (radio0.2)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep3 (radio0.3)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep4 (radio1.0)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep5 (radio1.1)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep6 (radio1.2)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep7 (radio1.3)

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  radio0:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 4
  radio1:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 4
  duc0:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 4
  duc1:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 4
  fifo0:
    block_desc: 'axi_ram_fifo.yml'
    parameters:
      NUM_PORTS: 4
      MEM_ADDR_W:   32
      MEM_DATA_W:   128
      MEM_CLK_RATE: "300e6"
      # Create 4 non-overlapping 2 MB buffers
      FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000=
000}"
      FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FF=
FFF}"

  fifo1:
    block_desc: 'axi_ram_fifo.yml'
    parameters:
      NUM_PORTS: 4
      MEM_ADDR_W:   32
      MEM_DATA_W:   128
      MEM_CLK_RATE: "300e6"
      # Create 4 non-overlapping 2 MB buffers
      FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000=
000}"
      FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FF=
FFF}"

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#   - srcblk  =3D Source block to connect
#   - srcport =3D Port on the source block to connect
#   - dstblk  =3D Destination block to connect
#   - dstport =3D Port on the destination block to connect
connections:
  # RF A:0 TX
  - { srcblk: ep0,    srcport: out0,  dstblk: fifo0,  dstport: in_0 }
  - { srcblk: fifo0,  srcport: out_0, dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # RF A:1 TX
  - { srcblk: ep1,    srcport: out0,  dstblk: fifo0,  dstport: in_1 }
  - { srcblk: fifo0,  srcport: out_1, dstblk: duc0,   dstport: in_1 }
  - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
  # RF A:2 TX
  - { srcblk: ep2,    srcport: out0,  dstblk: fifo0,  dstport: in_2 }
  - { srcblk: fifo0,  srcport: out_2, dstblk: duc0,   dstport: in_2 }
  - { srcblk: duc0,   srcport: out_2, dstblk: radio0, dstport: in_2 }
  # RF A:3 TX
  - { srcblk: ep3,    srcport: out0,  dstblk: fifo0,  dstport: in_3 }
  - { srcblk: fifo0,  srcport: out_3, dstblk: duc0,   dstport: in_3 }
  - { srcblk: duc0,   srcport: out_3, dstblk: radio0, dstport: in_3 }
  #
  # RF B:0 TX
  - { srcblk: ep4,    srcport: out0,  dstblk: fifo1,  dstport: in_0 }
  - { srcblk: fifo1,  srcport: out_0, dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  # RF B:1 TX
  - { srcblk: ep5,    srcport: out0,  dstblk: fifo1,  dstport: in_1 }
  - { srcblk: fifo1,  srcport: out_1, dstblk: duc1,   dstport: in_1 }
  - { srcblk: duc1,   srcport: out_1, dstblk: radio1, dstport: in_1 }
  # RF B:2 TX
  - { srcblk: ep6,    srcport: out0,  dstblk: fifo1,  dstport: in_2 }
  - { srcblk: fifo1,  srcport: out_2, dstblk: duc1,   dstport: in_2 }
  - { srcblk: duc1,   srcport: out_2, dstblk: radio1, dstport: in_2 }
  # RF B:3 TX
  - { srcblk: ep7,    srcport: out0,  dstblk: fifo1,  dstport: in_3 }
  - { srcblk: fifo1,  srcport: out_3, dstblk: duc1,   dstport: in_3 }
  - { srcblk: duc1,   srcport: out_3, dstblk: radio1, dstport: in_3 }
  #
  # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: gpio0=
 }
  # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: gpio1=
 }
  # BSP connections are inherited from YAML include files
  - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram0 }
  - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram1 }

  - { srcblk: radio0, srcport: out_0, dstblk: ep0,    dstport: in0  }
  - { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }
  - { srcblk: radio0, srcport: out_2, dstblk: ep2,    dstport: in0  }
  - { srcblk: radio0, srcport: out_3, dstblk: ep3,    dstport: in0  }
  - { srcblk: radio1, srcport: out_0, dstblk: ep4,    dstport: in0  }
  - { srcblk: radio1, srcport: out_1, dstblk: ep5,    dstport: in0  }
  - { srcblk: radio1, srcport: out_2, dstblk: ep6,    dstport: in0  }
  - { srcblk: radio1, srcport: out_3, dstblk: ep7,    dstport: in0  }



# A list of all clock domain connections in design
# ------------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#   - srcblk  =3D Source block to connect (Always "_device"_)
#   - srcport =3D Clock domain on the source block to connect
#   - dstblk  =3D Destination block to connect
#   - dstport =3D Clock domain on the destination block to connect
clk_domains:
  - { srcblk: _device_, srcport: ce,         dstblk: duc0,   dstport: ce   =
 }
  - { srcblk: _device_, srcport: ce,         dstblk: duc1,   dstport: ce   =
 }
  # Other clock domains are inherited from YAML include files
  - { srcblk: _device_, srcport: dram,   dstblk: fifo0, dstport: mem   }
  - { srcblk: _device_, srcport: dram,   dstblk: fifo1, dstport: mem   }


--------------------------------


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB91266A3647902D5C21B21B24ECF52SJ0PR09MB9126namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Sorry for the spam &#8212; the issue with rebuild was my mistake &#8212; I =
had a typo in the .yml that was being built (the one attached to previous m=
essage was correct).&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I can now rebuild an image w/out RX DDC and w/ RX radio going nowhere.&nbsp=
; The fixed connection is EP-&gt;DmaFIFO-&gt;DUC-&gt;Radio.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Usrp_probe gives the expected result as shown below.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Unfortunately running a tx-only benchmark results in an immediate and conti=
nuous stream of 'U'.&nbsp; What am I missing?&nbsp; Is this not the expecte=
d use pattern for DmaFIFO?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; &nbsp; _____________________________________________________</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; &nbsp;/</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; |</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/Radio#0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/Radio#1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; &nbsp; _____________________________________________________</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; &nbsp;/</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; &nbsp; &nbsp; Static connections on this device:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; |</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/DmaFIFO#0:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#0:0=3D=3D&gt;0/DUC#0:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#1:0=3D=3D&gt;0/DmaFIFO#0:1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#0:1=3D=3D&gt;0/DUC#0:1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#0:2=3D=3D&gt;0/DUC#0:2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#0:2=3D=3D&gt;0/Radio#0:2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#0:3=3D=3D&gt;0/DUC#0:3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#0:3=3D=3D&gt;0/Radio#0:3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#4:0=3D=3D&gt;0/DmaFIFO#1:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#1:0=3D=3D&gt;0/DUC#1:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#5:0=3D=3D&gt;0/DmaFIFO#1:1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#1:1=3D=3D&gt;0/DUC#1:1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#1:1=3D=3D&gt;0/Radio#1:1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#6:0=3D=3D&gt;0/DmaFIFO#1:2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#1:2=3D=3D&gt;0/DUC#1:2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#1:2=3D=3D&gt;0/Radio#1:2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/SEP#7:0=3D=3D&gt;0/DmaFIFO#1:3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DmaFIFO#1:3=3D=3D&gt;0/DUC#1:3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
| &nbsp; | &nbsp; * 0/DUC#1:3=3D=3D&gt;0/Radio#1:3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver &lt;eu=
gene.grayver@aero.org&gt;<br>
<b>Sent:</b> Wednesday, July 1, 2026 11:03 AM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: X440 RFNoC build with TX FIFO</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Turns out even rebuilding the stock .yml results in the same error.&nbsp; I=
s there something wrong with either my build or with the version of FPGA co=
de checked in?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Eugene.</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Eugene Grayver &lt;=
eugene.grayver@aero.org&gt;<br>
<b>Sent:</b> Tuesday, June 30, 2026 4:33 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> X440 RFNoC build with TX FIFO</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
Hi,</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
I am trying to work around the underflows on the TX.&nbsp;</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
I added a AXI DMA FIFO and rebuilt.&nbsp; As far as I can tell the yaml is =
OK, but when I load the new bit file,</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
I get an error:</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
Here's the .yml file.&nbsp; Note that I removed the RX DDC to reduce the FP=
GA congestion.</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
-----------------------</div>
<div class=3D"x_x_elementToProof">
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# General parameters</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# -----------------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
schema: rfnoc_imagebuilder_args&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Id=
entifier for the schema used to validate this file</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
copyright: &gt;-&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Copyright information used in=
 file headers</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; Copyright 2023 Ettus Research, a National Instruments Brand</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
license: &gt;-&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# License information used=
 in file headers</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; SPDX-License-Identifier: LGPL-3.0-or-later</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
version: '1.0'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # File version</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
chdr_width: 64&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Bit width of the CHDR bus for this im=
age</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
device: 'x440'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # USRP type</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the generat=
ed output files</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
default_target: 'X440'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; # Default make target</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
inherit:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - 'yaml_include/x440_radio_base.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - 'yaml_include/x4xx_x4_base.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; RF_BW: 400</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ENABLE_DRAM: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; NUM_DRAM_BANKS: 2</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; NUM_DRAM_CHANS: 8</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; DRAM_WIDTH: 128</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# A list of all stream endpoints in design</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# ----------------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
stream_endpoints:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep0: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Stream endpoint na=
me</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: True&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes control traf=
fic</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data traffic=
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; # Ingress buffer size for data</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep1:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep2:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep3:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep4:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep5:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep6:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; ep7:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# A table of which crossbar routes to include</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# -------------------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# Rows correspond to input ports and columns correspond to output ports.</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# Entering a 1 includes and a 0 removes that route from the crossbar.</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
crossbar_routes:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # &nbsp;eth0 &nbsp;eth2 &nbsp;dma &nbsp; ep1 &nbsp; ep3 &nbsp; ep5 &=
nbsp; ep7</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # &nbsp; &nbsp; eth1 &nbsp;eth3 &nbsp;ep0 &nbsp; ep2 &nbsp; ep4 &nbs=
p; ep6</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth0 (QSFP Port 0=
, Lane 0)</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth1 (QSFP Port 0=
, Lane 1)</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth2 (QSFP Port 0=
, Lane 2)</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth3 (QSFP Port 0=
, Lane 3)</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # dma</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep0 (radio0.0)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep1 (radio0.1)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep2 (radio0.2)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep3 (radio0.3)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep4 (radio1.0)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep5 (radio1.1)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep6 (radio1.2)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep7 (radio1.3)</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# A list of all NoC blocks in design</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# ----------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
noc_blocks:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; radio0:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'radio.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; radio1:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'radio.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; duc0:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'duc.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; duc1:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'duc.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; fifo0:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'axi_ram_fifo.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 32</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 128</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&quot;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; # Create 4 non-overlapping 2 MB buffers</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{32'h00600000, 32'h00400000, 32'=
h00200000, 32'h00000000}&quot;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{32'h001FFFFF, 32'h001FFFFF, 32'=
h001FFFFF, 32'h001FFFFF}&quot;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; fifo1:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'axi_ram_fifo.yml'</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 32</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 128</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&quot;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; # Create 4 non-overlapping 2 MB buffers</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{32'h00600000, 32'h00400000, 32'=
h00200000, 32'h00000000}&quot;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{32'h001FFFFF, 32'h001FFFFF, 32'=
h001FFFFF, 32'h001FFFFF}&quot;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# A list of all static connections in design</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# ------------------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcblk &nbsp;=3D Source block to connect</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcport =3D Port on the source block to connect</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstblk &nbsp;=3D Destination block to connect</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstport =3D Port on the destination block to connect</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
connections:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:0 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep0, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_0, dstblk: duc0, &nbsp; dstpor=
t: in_0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_0, dstblk: radio0, dstport: in=
_0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:1 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep1, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_1, dstblk: duc0, &nbsp; dstpor=
t: in_1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_1, dstblk: radio0, dstport: in=
_1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:2 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep2, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_2&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_2, dstblk: duc0, &nbsp; dstpor=
t: in_2&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_2, dstblk: radio0, dstport: in=
_2&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:3 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep3, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_3&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_3, dstblk: duc0, &nbsp; dstpor=
t: in_3&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_3, dstblk: radio0, dstport: in=
_3&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; #</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:0 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep4, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_0, dstblk: duc1, &nbsp; dstpor=
t: in_0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_0, dstblk: radio1, dstport: in=
_0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:1 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep5, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_1, dstblk: duc1, &nbsp; dstpor=
t: in_1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_1, dstblk: radio1, dstport: in=
_1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:2 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep6, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_2&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_2, dstblk: duc1, &nbsp; dstpor=
t: in_2&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_2, dstblk: radio1, dstport: in=
_2&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:3 TX</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep7, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_3&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_3, dstblk: duc1, &nbsp; dstpor=
t: in_3&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_3, dstblk: radio1, dstport: in=
_3&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; #</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio0 }</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio1 }</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # BSP connections are inherited from YAML include files</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram=
0&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram=
1&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_0, dstblk: ep0, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_1, dstblk: ep1, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_2, dstblk: ep2, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_3, dstblk: ep3, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_0, dstblk: ep4, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_1, dstblk: ep5, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_2, dstblk: ep6, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_3, dstblk: ep7, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp;</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# A list of all clock domain connections in design</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# ------------------------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcblk &nbsp;=3D Source block to connect (Always &quot;_device&q=
uot;_)</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcport =3D Clock domain on the source block to connect</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstblk &nbsp;=3D Destination block to connect</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstport =3D Clock domain on the destination block to connect</di=
v>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
clk_domains:</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: ce, &nbsp; &nbsp; &nbsp; &nbsp; dstbl=
k: duc0, &nbsp; dstport: ce&nbsp;&nbsp; &nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: ce, &nbsp; &nbsp; &nbsp; &nbsp; dstbl=
k: duc1, &nbsp; dstport: ce&nbsp;&nbsp; &nbsp;}</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; # Other clock domains are inherited from YAML include files</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: dram, &nbsp; dstblk: fifo0, dstport: =
mem&nbsp;&nbsp; }</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: dram, &nbsp; dstblk: fifo1, dstport: =
mem&nbsp;&nbsp; }</div>
<div class=3D"x_x_elementToProof" style=3D"line-height:19px; font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; fo=
nt-size:12pt; color:rgb(0,0,0)">
<br>
</div>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
--------------------------------</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_x_Signature" class=3D"x_x_elementToProof">
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
Principal Engineer</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; colo=
r:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB91266A3647902D5C21B21B24ECF52SJ0PR09MB9126namp_--

--===============5843501476155524580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5843501476155524580==--
