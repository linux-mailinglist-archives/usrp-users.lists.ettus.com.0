Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A29EB985
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 19:43:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73A7A386289
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 13:43:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733856204; bh=8V+49hwwtZgwfbfFOtaHdIOPhDXDRLNk7dVfXIUZ0LM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UmxsLr3q9qgiVJaAmx8b+TPKkUjGirTfxd22FzmXtUgrYs4erFXF+2B8WIz2hLOPj
	 4XKTrs7YqD4ARXPVSFllQGXNG7Egnn4MTeLqYvIPrNjK8uGy+chsgnyqce5at6lQAu
	 ImauC7XJJrCLrQlgVtfK1yognpV8skxHF8u38ZEWTnDRcDHgCc9jouOPAW32nnwuST
	 DwNdWPoyvKt5PaAWsQXW2u4SCnDcC3yTBaLcG00wcZXqtZCbdX0u8Oa3Rqtz9rcEia
	 HPODFwMFMjx5xM3kWE5znriGbK862M5yqnS7VSoGdpQV8LPUPBQieNd3tGLApNof4y
	 zC0K3st29WEVQ==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id F0953386200
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 13:42:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="zGTtLShO";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="TKp8C1Tc";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1733856146; x=1765392146;
  h=from:to:subject:date:message-id:mime-version;
  bh=npTMe/wiUaXl9qMFPVec0vjBPnqz/z5goakdxM+vevo=;
  b=zGTtLShOsLVy2ISo1oOXGs3dR0VrjNXDO2X8/3zuMehWgNckHfIKLr68
   hix/I4YDlDEviGs6xmu+cJFucr3tqRdCcE4Ly49iNNHkXpaNtro6L55AZ
   uHa4fEbCUbBoP5P+9XLxEs6Z9cEfHJRzk6RXy3nZxxSfL7ibdPfsxGinK
   c=;
X-CSE-ConnectionGUID: n0UMbX7WR1ydLkNuIp4EGg==
X-CSE-MsgGUID: Vq0peovrRZqIWXgrCCLaoA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="1971197"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600";
   d="scan'208,217";a="1971197"
X-IPAS-Result: =?us-ascii?q?A2GCAQBJi1hnjg8BXShagQmBU4FBgQN7gWauCYd7A1YPA?=
 =?us-ascii?q?QEBAQEBAQEBBwJEBAEBAwSFAAKKaic3Bg4BAgQBAQEBAwIDAQEBAQEBAQEOA?=
 =?us-ascii?q?QEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4V7DYQHgSYBAQEBAQEBAQEBAQEdA?=
 =?us-ascii?q?jWBHAEBOBEBDAFyJwQbgnmCHQ0HAzGwTIE0gQGCDAEBBgQE2x4YYYFkCYFIg?=
 =?us-ascii?q?3uBcIJjASqBMok8gVVEgVeCN4U0hBOCL4JATIQqgWqcP4FHIgMmMzIBVRMXC?=
 =?us-ascii?q?wcFYYEUA4EWg2CBAzmCEGlHNwINAjaCJHyCTYUXhGmEWYYmghlsHUADC209N?=
 =?us-ascii?q?xQbBQSBNQWZfgEHA4E/hDeBYIF3oiKBe4xdlFw0B4QdBYFYBgygCxeqUZh7q?=
 =?us-ascii?q?QACBAIEBQIPCIF9UoEuMxowgypSGQ+OOoNhvkZ4PAIHCwEBAwmSHgEB?=
IronPort-PHdr: A9a23:jkOlzxA4Z9We0SGIshhvUyQVaxdPi9zP1kY95pkmjudIdaKut9TnM
 VfE7PpgxFnOQc3A6v1ChuaX1sKoWWEJ7Zub9nxXdptKWkwJjMwMlFkmB8iIQUTwMP/taXk8G
 8JPHF9o9n22Kw5bAsH7MlTfuHr06iQdSX3C
IronPort-Data: A9a23:utNp+6PGlG4k3rnvrR1fl8FynXyQoLVcMsEvi/4bfWQNrUp30GcAz
 WtMD22DM/rbNmD8eI1wa46+oEoCsJ6Bn9BmSQZtpSBmQlt08seUXt7xwmUcns+xwmwvaGo9s
 q3yv/GZdJhcoln0+Ej1atANilEljPvYHNIQMMadZ2YpA1YiEHx54f5as7ZRqpZyhtSkCB+6t
 9r3osnOUHeowDcc3lg8s8pvkzsx+q2o0N8klgZmP6wS5gaGzyV94K83fMldEVOpGuG4IcbnH
 44v/JnhlkvF8hEkDM+Sk7qTWiXmlZaPVeQmoiM+t5mK2nCulARrukoIHKN0hXNsttm8t4sZJ
 ONl6MXqEV9xVkH7sL91vxFwS0mSNEDdkVPNCSDXXce7lyUqf5ZwqhnH4Y5f0YAwo45K7W9yG
 fMwLmgwSxqz2N2MmaO3bupKm+U7cOTEM9ZK0p1g5Wmx4fcOa6Gee5+StPRlhG9pwMdTAfzZe
 swVLyJ1awjNaAFOPVFRD48imOCvhT/0dDgwRFC9+fJxsjOVlUoojdABM/KMEjCObchIkUueq
 yTJ5W3oHBwAHNWS0z3D9Wij7gPKtXqqB9tLReLQGvhCvkTL3mEUFgcsZ0Kansm2kGWVf9tYA
 hlBksYphfNprhD0JjXnZDWlu2Sc+wMHVsBLO+k78x2WjKfI/xuCQGMDS1Z8hMcOscY3QXk12
 0SVgsjgFzh36eLNECvFr+rSqi6uMy8IK2NEfTUDUQYO/9jkpsc0kw7LSdFgVqWyi7UZBA0c3
 RiM9BUbjYVMsvRSxqmf/nbaoirwi7fGG1tdChrsYkqp6QZwZYiAboOu6ETG4fsoEGp/ZgnQ1
 JTjs5jOhN3iHa2weDqxrPLh9YxFCt6AOTzYxEFiBIU87D2//2b6ItgJuWkneQFuL9oOfiLvb
 AnLowRN6ZRPPXysK6hqf4a2DMdsxq/lfTgEahw2RoQSCnSSXFbdlM2LWaJ29zy3+KTLuf1lU
 ap3ie72UR4n5V1PlVJavds1374x3TwZzmjOX539xBnP+ePBPyXKF+ZdYQfeN7tRAEa4TOP9o
 4c32yyim0Q3bQECSneGqNJ7wa0icSZkWMiq9ZA/mhCreVE5RTt8YxMu/V/RU9c+xfgK/gs51
 nS8UVVf013xmTXMLh+SAk2Pm5u+NauTWUkTZHR2VX7xgiBLSd/2sM83KcFrFZF5r7YL5aAvE
 JE4lzCoXq4npsLvp25FNcGVQU0LXEjDuD9iyAL/PmdmIs4xGF2UkjImFyO2nBQz4uOMnZNWi
 9WdOsnzGvLvmywK4B7qVc+S
IronPort-HdrOrdr: A9a23:/YFJq6nX2JhYciGoP9lLOCockrPpDfPOimdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcIi7Sc+9qADnhOdICOgqTMGftWzd1FdAQ7sSibcKrweAJ8SczJ8V6U
 4DSdkYNDSYNzET4qjHCWKDYrUdKay8gcWVbJDlvhVQpG9RC51I3kNcMEK2A0d2TA5JCd4SD5
 yH/PdKoDKmZDA+ctm7LmNtZZmJm/T70LbdJTIWDR8u7weDyRmy7qThLhSe1hACFxtS3LYZ93
 TfmQCR3NTojxj78G6Q64bg1eUYpDLT8KoMOCW4sLlYFtyjsHfoWG0rYcz7gNl8mpDV1L9tqq
 iFn/5oBbUP15vcE1vF2yfFyk3u1i0j5GTlzkLdiXz/odbhTDZ/EMZZg5lFGyGpnnbIkesMo5
 6j5VjpxaZ/HFfFhmDw9tLIXxZlmg69pmcji/caizhaXZEFYLFcoIQD9AcNea1wax7S+cQiCq
 1jHcvc7PFZfReTaG3YpHBmxJipUm4oFhmLT0Aesoie0iRQnnp+00wErfZv6kso5dY4Ud1J9u
 7EOqNnmPVHSdIXd7t0AKMbTc6+GgX2MGLx2aKpUCXa/Y08SgzwQsTMkckIDcmRCeM18Kc=
X-Talos-CUID: 9a23:q7ThNGzuvdlRI9r1XVeRBgUSQv0AeE2C802JMkOcCkB0aaXJZHCfrfY=
X-Talos-MUID: 9a23:igxs9ArZpFbIVgZH4aYezw97bN9l5Lq0MnIUsKo2tNOvHgh5PB7I2Q==
Received: from mail-westusazlp17011015.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.15])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2024 10:42:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mk0Nxv9PDamlRMNo31xtSwZYMwYzm7vJZwlcBZUu4O0/mk2WrGRygiMmzBEbuKCDsTWgBOGGh1B8hWu7SCarkywgojFgDiH6poRbLa6BOXHL2SW95luV9e0rZSZDY5f+JLllYivnX8y18/kNCVmZ4dcQshDdY/DvRtySY7TvurfHJKLsk28l3RenAKPlojXCeGrevSUFXemSQKcVY1av6jhiWzixf1oGYA1rgQ4V+PHfyULTjIoaI44TUox+MZAgZyXC1Eje6QEe75BCgMb4Hpgx4CufUPNGsj55aL5qHcGt9lO41ZgMN5acxHS/wVF6+feHqvieSumsNCZ418KjZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEvoepR/C7XOd55ap/F/kOZS4FjwxEnRkynqGpdphq0=;
 b=o9ZctzOXyx09DsQH9KblYq3YsJ/T4Q52KDpFkmupIRfN6/g3IdIH4O+xFGedokuayJWErubLAxmRp/TKpj03D8xJ4VcFOoGjAz52odQlulwE1Yx1UhMq/3xAUxE6g6pvUAANr1WY4A7MxDep7OBMpMgxiI2mutQerbv2u4Sxt4N10hAC1X7C8DVqVtgasQiqRp+AwaVb2RSCceRsKwhmfNVZq2KBOma2IZwQwQabndkOt5CZpm4P9KLL9lXCxd9JP4jiZPGK0bzRLrE8ZtqR+wUZKTENMiteNrv9rsLZBGkmFn4mvs7ZeB4XsLh5Axea5Hp7pTZLUOWQYFMv9BO5zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEvoepR/C7XOd55ap/F/kOZS4FjwxEnRkynqGpdphq0=;
 b=TKp8C1TcIivaq7EUAvTfK1ZBlHqgee2QP21z05R1YazoPO7uK2HjnEqMdy8mykWeEOezMLhfcg87AgHZa0b0APLxGu4YZ1S/eLWZJzWLmUdOtz72XWllLI2vnCvAyjlEfRWFb3f4iLrcSWYTFWL/9uNpGkSdWuudluo5bCt4MYo=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB8749.namprd09.prod.outlook.com (2603:10b6:806:17f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Tue, 10 Dec
 2024 18:42:14 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%5]) with mapi id 15.20.8251.008; Tue, 10 Dec 2024
 18:42:14 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Why is IQ cal disabled when using external LO
Thread-Index: AQHbSzL5bzrTinc6Y0Kgz5AcBKHtSw==
Date: Tue, 10 Dec 2024 18:42:14 +0000
Message-ID: 
 <SJ0PR09MB9126372E2F50840A52FB0898EC3D2@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB8749:EE_
x-ms-office365-filtering-correlation-id: dfee2558-baa7-45b7-7069-08dd194a5da6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?LA/43koaI4EZPfGXLDvKxRYVWAZ1Sg8nGDJ+g+nNEyzPJEvcsrxisvZ71c?=
 =?iso-8859-1?Q?oxGVhfX5avH6FJ8sOtryM/kc9RaIkSNGMh/1Lh5jHmfMVY5sx044uC74ci?=
 =?iso-8859-1?Q?GbJ3i6rRpsY8FEnBDwc6m5zg/t97p61lEkrsuYcRYTlBFRVVlfqvdtYLJO?=
 =?iso-8859-1?Q?FzYWjDnfa6FTqrlaQwQdPeEYcZIz06/x6VzTD9qNwjcKlUjiw2Ic1hPAua?=
 =?iso-8859-1?Q?hEXWJkxaRoLOXv85JsIEsWR4TZNZw2PCMtUD2LIxf/oo5q4mdgUAum6FvC?=
 =?iso-8859-1?Q?boabmkqhcQThZFO9sWqqFer8xqg75vdiYrGoUPRablEw7f3yFfA3ek/+Em?=
 =?iso-8859-1?Q?Kuacdsx2gPt//c9spDt8rbeVCTgmbFm325H1c0vB03Og5zyOYG+kCKgBau?=
 =?iso-8859-1?Q?jP8Y9tHuDLQZBRdf9kQUTUuu1vOrco+KTdXymmRckVGXoaVRahjCxL03lJ?=
 =?iso-8859-1?Q?aiDeuGRaVkLw5h6376w+sPTRXUhbJuk35PbjFgFxNQzFEv4eSbLAKugyV4?=
 =?iso-8859-1?Q?970dXwcqAToWO/KjG/6jeS1BjDM+QAX0gnzP2D23cabJlWc02X4SaJpBKz?=
 =?iso-8859-1?Q?sN2zNZxa509Qgg13nPB2ppmstMUJhBgunH63Jt7IVo/r4edh0QLWKCjC1l?=
 =?iso-8859-1?Q?nQtdWumG5Fpml+aZo+DY+aNI7S8XlBrbHQPLM/qtPGpvpp78iZG95nhHZ8?=
 =?iso-8859-1?Q?Rgbu8rQ8eqLRE6xVlqDMheDAEMNrlEL+LdDCzREqopBaLtOZ6iW3Iog4gN?=
 =?iso-8859-1?Q?QtkB6XWAYLGKp265pCsYuxT+HkHIghAOE2aNgyn5l4iHGeIvYDAJt3A3MO?=
 =?iso-8859-1?Q?a10tYrBDQD/ojfuzeiVcQ1fD0Vxbusu+v+m4QrdOnCMJQoIbbsFKCQc1Mg?=
 =?iso-8859-1?Q?y6H+2gKF9BX8ir/mmonBPX7lXFo6wRCdW8M/YVH/vJK9diO9d6xIxeCA8r?=
 =?iso-8859-1?Q?wfb+pQ4rFYVnApMFAC5IyinJ3oJQYRTOea4kE6idpScmKRY1UfSi9aDrOR?=
 =?iso-8859-1?Q?cgFcGsqQkfBO3Au5IQXbPXS0lMaIswySSPTtOyg5Rhtr19rZFJrdcumB+r?=
 =?iso-8859-1?Q?al7Ni755ifYl+XFbGidCCWxePGhlw63ZOU1UDQJE6ICrhxvp7x+2UYH84w?=
 =?iso-8859-1?Q?yBTOPsZnjVYxLxsUv9RbAmUcMhCgm78yz1HRfatDl0UiQDzgaCaCNswrkw?=
 =?iso-8859-1?Q?ckBMiKVrYcuX7UFAKCHv+OPqYhEYKvjb/ttGk6z7+bHwe3IGrCztLRKdBW?=
 =?iso-8859-1?Q?Lm5Q5ArQoX2mc8qVBxSwqNjDq5i3wI4Kyb+Rs3oT51lY/AyNWCxQYlan3K?=
 =?iso-8859-1?Q?tQ5kg6iZRyUdfVunJpSMdINFwvNbOuZjKib4y9h3FoLMUc1SV0oXnx0opN?=
 =?iso-8859-1?Q?RRg6ly2JZsic6uKCtkhNU7Sci4edeppteO5MRlpqmX+WV8FUgU/Ao+2Lk1?=
 =?iso-8859-1?Q?+Uj2kwQIBfoPmrz6201+SVdcarAz9ULHj5XqEQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hd3BduXX7ike12qX3qcd69UJeJNjQRw0Wdc/gVhb1+qf5huSktMkpVJaXv?=
 =?iso-8859-1?Q?THEmSnzcgs8DK+JwG/A41efkUsyksibRPjsgyZa4LyUfYff0KOaTbKZ+nR?=
 =?iso-8859-1?Q?/Kj4c/DozuYeL7oMfc/HKUihOCEfP6vl7t3fC3YEkaiEg7k/wQpikdsBFd?=
 =?iso-8859-1?Q?WqQv/x3PRehiJYDxEdWGydbecTf9PV/iinRZO/1/bIjgdiz06bffxHpx73?=
 =?iso-8859-1?Q?rQrPXezh3T5lqpMLUNEq5Zu8nvrt2emjufHXAjSfTgydr6Cg+EA9l/p93M?=
 =?iso-8859-1?Q?r8sqS4Viml+O/T/qumvcIZ1NnZ2AjZV+lCoV2oeXS/Mha8ilncDk5H9yiq?=
 =?iso-8859-1?Q?7TqskVHfmP2hys9SRlQmAmGqbZ1HAYCrC1wEYes564ObrOFozWfuaYEWEo?=
 =?iso-8859-1?Q?fXoO+z5ioal+rO8ynjZWyGapTGgjPPCwsH8obMEpEdaK2GyaaaUuJvHPyX?=
 =?iso-8859-1?Q?qvK2OeireK64F3V3TrjsFIahTxbLfgo5VkI0dg77CJhMx5ODqU/7HJFVYR?=
 =?iso-8859-1?Q?eLj4YtKnX7x1v61VfDDKapRWx2d7ni+C/G2hzBFheVzlnbT1CG+qrD5FfA?=
 =?iso-8859-1?Q?ZPAXTG08UymSFkGIB7pcvzoV9+PXfLj6yvACEpI5+QBCZSoSKj/FVFaSod?=
 =?iso-8859-1?Q?a+ujn7bFTTCTj5sonDwkI7or4zVy+IY7w0Fo/k9pRk8RiZV2YKaShMD2Wa?=
 =?iso-8859-1?Q?RnbPCx9mZS7VRUOWavUQNs2MRaEOuhcLHgtetQcQVtPGiRw0Z2APlIHpZU?=
 =?iso-8859-1?Q?m6wIUeskApvmbD+3hu7v17dHYp8s36hJUu8rex7BA99eb/DaaX8HcEfDH9?=
 =?iso-8859-1?Q?lGTN47FDONfo62JnboZlTsgTrBpk5gkkG5nY71YUy53pV/br5aSAvc+yec?=
 =?iso-8859-1?Q?Tb5KnwZoyTxY27/xvQii3l/zbO/i5Ax7CW7wezSXZnXWZfJgUaPa3gd/OE?=
 =?iso-8859-1?Q?n5jPmAbHEqL+ww6v7neajJ2PmERDhvEK0cCQt3qiDoD66hci/XGjdpOVtG?=
 =?iso-8859-1?Q?dajoiG6arFqz1at4J71efGiS32pV8I2PGTADiMaHm/1d15MYwWtyeLjiRE?=
 =?iso-8859-1?Q?iErMPR0FneSL70Hkj8Z3dPuEpeFIF5LVuOIvjAi1iHNqIGyMkWYk1w42ZR?=
 =?iso-8859-1?Q?tkhr1Nr+yuSKYL4yK9RzpfgXwgdAwgOG+9pKgHoEJ+S+o8ScKMMmZun5Uh?=
 =?iso-8859-1?Q?Qvezht1FIVjs2NAjqhpXys5DwJQr/YPV5RdUcAPJAiLaSRQeSl7qvXmzrj?=
 =?iso-8859-1?Q?BVlCfwBVeJi51kzQXlmQNckc2dUYgmdf8dScYMY1rX900mGIuV5IuiFmwC?=
 =?iso-8859-1?Q?ft6sR+cW7CU+i2sBbu9kpOnPYU0mtCpzF2OexopfWMo3iflEnB/Z/XmbYL?=
 =?iso-8859-1?Q?s2b3gEENjkfYRsIhXYfyuee3qIgNa5C8B7+5pUNxgdNR29mhGDUOO4yMgA?=
 =?iso-8859-1?Q?jgTw4gqaOblSy7c4UVIJHzV8ZT2ZgivX52afj45QCmc/Ttw5CKbwlheY7l?=
 =?iso-8859-1?Q?VlYm1pNOoh6oo3ulkfCoR5bDyiHZGBGCRDbkiIXmZLY/iBw3QjSavZ7Y7I?=
 =?iso-8859-1?Q?Y7OsC6q3+4/it0mf0dnA7ORYeTyOxeHRbcVVNTt6bJ5eN1jOiOJUj6fx1s?=
 =?iso-8859-1?Q?ezNiyyN8AlxXs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfee2558-baa7-45b7-7069-08dd194a5da6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2024 18:42:14.5751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB8749
Message-ID-Hash: FEF7NLJAWFOREQESGCMWINCQF7ZLPJPL
X-Message-ID-Hash: FEF7NLJAWFOREQESGCMWINCQF7ZLPJPL
X-MailFrom: prvs=0672ffd30=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why is IQ cal disabled when using external LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZE3XNB554DWP3JJUKYCJWGMWLWAP6B47/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2454142317616260291=="

--===============2454142317616260291==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126372E2F50840A52FB0898EC3D2SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126372E2F50840A52FB0898EC3D2SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I just noticed that the calibration tables are disabled/ignored when extern=
al LO is used.  Why is that?  I understand that the automatic calibration u=
tilities will not work (over frequency).  However, we are generating those =
tables ourselves, and expect UHD to use them.  Now I have to hack my own co=
de to duplicate the calibration functionality and 'manually' call set_dc_..=
., etc functions.

Thanks.

--_000_SJ0PR09MB9126372E2F50840A52FB0898EC3D2SJ0PR09MB9126namp_
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
I just noticed that the calibration tables are disabled/ignored when extern=
al LO is used.&nbsp; Why is that?&nbsp; I understand that the automatic cal=
ibration utilities will not work (over frequency).&nbsp; However, we are ge=
nerating those tables ourselves, and expect UHD
 to use them.&nbsp; Now I have to hack my own code to duplicate the calibra=
tion functionality and 'manually' call set_dc_..., etc functions.</div>
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

--_000_SJ0PR09MB9126372E2F50840A52FB0898EC3D2SJ0PR09MB9126namp_--

--===============2454142317616260291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2454142317616260291==--
