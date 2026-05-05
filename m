Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gI4zGGBt+mm2OwMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 00:21:20 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A844D4441
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 00:21:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0452438AF43
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2026 17:43:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778017419; bh=MM0qF1NsQTFMm3SfFAiWaRfxnNhBWAaFWXtxrdJ5wIo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vbvzz/GDz8cvBpS6nmdcAWdjr003Q0LCOYpYGlmkgWc4rLpQR4BJ2+C1YmnWD/Lcn
	 iS8XOMDB/hp/bR/pQ/fIZYcpVJnstFX58SNwAJezZWz6RlR0vKtiWL9mmkXQ3rBdfj
	 l0OAG6UtrG1VZsjZeUU95Vhnkm7pTO8qVus1EdPpHFNsrvhK061m+jTwy1tUr+MyXq
	 rjy6cyG7m+aqya1qG9TZjIwB3Gtt/J7HFT/DsbFQpzzTPixlDmsw1+0iDL+7IBl9El
	 shv6rEfkkxHQXBl+KJnPIaHv87Ol8eFEFlO35AEa7iOY3fwYAKLSrKG/Xc+muCmWGs
	 4EtO7HkirudXw==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id C3BF138A321
	for <usrp-users@lists.ettus.com>; Tue,  5 May 2026 17:42:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="KVQSzX79";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="EosiaBxW";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1778017344; x=1809553344;
  h=from:to:subject:date:message-id:mime-version;
  bh=xpncerxCGKJ/daYonsiGKtTTmn/FxKBCgcpQcVBf5wg=;
  b=KVQSzX79UZ8FfHXtTro/IqC0asgdEQHHi5OAgT7xO7NiBrJ1tDIFBTPy
   dphUSuNm9lbK7PxEFbJ7WDobtaFuhJcCcEjhTfR/U3Wx3authEqsD+x4h
   pH2atv0JNG7VeZZBi6Uoyv5E8rh5H2YdkFxdG6yMOq1XpsB4VKMmz+XGs
   M=;
X-CSE-ConnectionGUID: qxaeoO1eSqe4Ts3Oil9gfw==
X-CSE-MsgGUID: Zxtn2nz4Tp+JhVIsuGbHqg==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="9134958"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000";
   d="scan'208,217";a="9134958"
X-IPAS-Result: =?us-ascii?q?A2GDAQAYY/ppjgwBXShXA4JZgT2BBEIBQ4FsrhKHfANXD?=
 =?us-ascii?q?wEBAQEBAQEBAQcCUQQBAQMEhH8CjTMnNwYOAQIEAwIDAQEBAQEBAQEOAQEBB?=
 =?us-ascii?q?QEBAQEBBwQBAgIQAQEBAQEBOQVJhk8NhAeBJgEBAQEBAQEBAQEBAR0CNYEcA?=
 =?us-ascii?q?QE4EQEMcycEG4J6gh4HBAsHAza2dIE0gQGCDAEBBgQE2ykYZIFnCYFNg36Bd?=
 =?us-ascii?q?IJnASqBNQGEFoUwgVVEgVeHa0WDToIvgiZ6FB2BJYQciTqBRCIDJjMsAVUTF?=
 =?us-ascii?q?wsHBV6BCAOBBm4yHYEjPhc0WBsHBYFLhECBA4RgeCMvA052AwttPTcUGwMEg?=
 =?us-ascii?q?TUFiXUHVh0Pgi+BIx1hpFKBfKFGNAeEH4FeBgygHheqa4ZAkkakIoR0AgQCB?=
 =?us-ascii?q?AUCEAiBflKBLjMaMIMqUxkPjjqDacg5eT8HAgcOApNyAQE?=
IronPort-PHdr: A9a23:9Jlj7BPYl++dgCAhwuQl6ncAWUAX0o4cdiYZ6Zsi3rRJdKnrv5HvJ
 1fW6vgliljVFZ7a5PRJh6uz0ejgVGUM7IzHvCUEd5pBBBMAgN8dygonBsPNAEbnLfnsOio9G
 skKVFJs83yhd0ZPH8OrblDIpTu19zFBcig=
IronPort-Data: A9a23:QVJ08aKxv8F7jiIMFE+R3pUlxSXFcZb7ZxGr2PjKsXjdYENS0TADy
 WofCzqAbquPYmWhe492atm28E0F6pbRn4M3TVNorCE8RH9jl5HIVI+TRqvS04J+DSFioGZPt
 Zh2hgzodZhsJpP6jkn9auCJQV5UjPjXGeWU5NbsY303HUk9Dn960XqPosZh6qZwm9+1HgiRj
 t37pszbKTeN1iV9Wo4uw/rrRChH4rKo41v0gnRkPaoV5AKGyiFPZH4iDfjZw0XQE9E88tGSG
 r6rIIGRpgvx4xorA9W5pbf3GmVirmn6YGBiIlIPM0STqkAqSh4ai87XB9JFAatjsAhlqvgqo
 Dl7ncHpE19xZsUgr8xGO/VQO3kW0aSrY9YrK1Dn2SCY5xWun3cBX5yCpaz5VGEV0r8fPI1Ay
 RAXACkdZx2EoLu7+6u2FtV33eMiKJjkMpxK7xmMzRmBZRonabryHp3wvY5z4W9o34ZJAOrUY
 NcfZXx3dhPcbhZTO1ARTpUjgOOvgXq5eDpdwL6XjfZvpTmIilU3ieKF3Nn9I7RmQe1Yg0mVo
 G+A8H7wEw8XLvSWxCCCtHW2iYcjmAuqAdlOReDonhJsqG+D2mpJDg9KaUP4g/mHq1WjdNh/M
 kNBr0LCqoBprxb3EbERRSaQvWWeplsBQNdKCMU+6RqR0ezZ/xqEHS4PSTspVTA9nMo/RDhvy
 VKSg87yDC5rqOTKESvEru7O6zSvJSISMGkOIzceShcI6MXip4d1iQ/TStFkE+i+idid9SzML
 y6itTg3irI01MMwzqjnwUucpDOo95fHUVtgjunIZV5J+D+Vc2JMWmBFwV3S7PIFM4uCUkSat
 WoAg5HBtLlXVcjX0iuQXO8KAbeloe6fNyHRikJuGJ9n8Cmx/3mkfsZb5zQWyKZV3iQsJmWBj
 Kz74Fk5CHpv0J2CMfYfj2WZUJVC8EQYPY65Ps04l/IXCnSLSON4wM2eTRXLhTyy+KTduaQ+M
 o2casGiET4RDr5/pAeLqxMm+eZznEgWnDqLLbiilkTP+eTEOBa9F+xfWHPQNb9R0U9xiFmPm
 zqpH5fQk00HOAA/CwGLmbMuwacidyFkVcyv8ZMPLYZu4GNOQQkcNhMY+pt5E6QNokifvr6gE
 q2VMqOA9GfCuA==
IronPort-HdrOrdr: A9a23:MJP1JKP4j6XJa8BcT0b155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE7gr5K0tQ4OxoWZPwN080kKQY3WB/B8bHYOCLggqVxeJZnMLfKl/bakrDH4dmvM
 8OHZSWY+eAbmSS+PyKhTVQZOxQouVvnprJuc7ui1t9RwBjbK9tqzx+FhuaFUNOQgxHD4oSFZ
 aX5MZLzgDQMUg/X4CePD0oTuLDr9rEmNbNehgdHSMq7wGIkHeB9KP6OwLw5GZVbxp/hZMZtU
 TVmQ3w4auu99uhzAXH6mPV55NK3PP819p4AtCWgMR9EESgtu/oXvUsZ1SxhkF6nAid0idqrD
 D4mWZuAy080QKQQoj/m2qU5+Cp6kdU15al8y7SvZKrm72FeNo3ZvAx/75xY1/X7VEts8p717
 8O12WFt4BPBReFhyjl4cPUPisa43ZcjEBS4tL7tUYvI7c2eftUt8gS7UlVGJAPEGbz750mCv
 BnCIXZ6OxNeV2XYnjFti03qebcKUgbD1ODWAwPq8aV2z9ZkDRwyFYZ3tUWmjMF+IgmQ5dJ6u
 zYOuBjla1ITMURcaVhbd1xNfefGyjIW1bBIWiSKVPoGOUOPG/MsYf+5PEv6OSjaPUzvesPcV
 T6ISJlXEIJCjzT4Je1reF2Gzj2MRqAYQg=
X-Talos-CUID: 9a23:YNuDlGGfgM7rFYjhqmJ+5EcZHed8f0bEwSvsOBSfCGI4R7OKHAo=
X-Talos-MUID: 9a23:7CZWFgYEuAGhDeBThS/wgmtkJptU++eMCH4siogpsemdOnkl
Received: from mail-westusazlp17011012.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.12])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 14:42:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=faZDazqE6h9gq6h5dUjjqT2TdGERx9E0bSt6ooic17OUVRzBHdmW/fl/4DCJWEw76ZI43MDlz3imOXgKE/HOcBYO0ZCybcTZ8atE4V5aSZlxe+foGmiOGw1fauNggluMhWD9AQkJyyRcNmEh/fumDcbzsCjxEK1t8KbK4Nfy5Veo1zx1mb2mCzV11MImfqcLLzM131YCOE2sttng1liShe/Xm/l3eziCy8cAa5avdi2HNKr+2ZQHNY/EtI682MHz0zT0JDx2LPU4mTTPd9gf8oRMp0CU6d5WadPmDHZOL5mBqvKqpPahgk/a9TZVJfpdXRpI6s+vwYXgIlWtk8eU9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGVDsL818/DhuLPcbZLu9I9vyAlXk2PdNrxTYNBC9KM=;
 b=F8un3wEvf5YusyjkZmqwjA1MZ6G/WYtPcv4TqZMMC5pMqbV4KFVgwkflDgkN61bZiHLQqlwfoWDbHaMhrny8jEArdF7QosV0IVA9hdpM5d+SCDTvJ4Qbyh7zv25VRh8R1EJvwgfjkbpiLNAOqbn1U8PBYU0eLCqZ7DHRTYomntaOwa4EBee3Q66yMEHYptms6Jj+amkCGj+JYjnZ3pi11GA+o1+Yxyy8jEYqDkkit1/2u/kq8/Kx7RwFWhN6pmS6G5OPmUfrP30WXplo3WJJqh28Pb94WR8A6J+oPLKGa72ItH4kPJRqma0rfNKKTiqfAtsVQ4PJkKH7ZY6m9UkL3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hGVDsL818/DhuLPcbZLu9I9vyAlXk2PdNrxTYNBC9KM=;
 b=EosiaBxWpWPvf9s57IKC4QwlJlU7YrSa2uRT8sBDh0qy75wU+aykBkWDpimjtbUCJPA5oIlI2zcsBoFXuMqnvNBPZOspfDFRSiLmeI6rEjqj+7IlGbhGCMdZ5+DGfgoEOBzGGhWDcwkMrWyZkk9xafVoUKo96hbch1fdyLzjXSA=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DS0PR09MB10903.namprd09.prod.outlook.com (2603:10b6:8:16f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Tue, 5 May
 2026 21:42:21 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%3]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 21:42:21 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Extend X440 to 2 GHz
Thread-Index: AQHc3NY0YG1xgWWdy0KgVmLNcXufHQ==
Date: Tue, 5 May 2026 21:42:20 +0000
Message-ID: 
 <SJ0PR09MB912642069B69C9DBF1E66B70EC3E2@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DS0PR09MB10903:EE_
x-ms-office365-filtering-correlation-id: c2e7a755-8f55-44bd-3e84-08deaaef2fde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|41320700013|1800799024|38070700021|56012099003|8096899003|18002099003;
x-microsoft-antispam-message-info: 
 8b+rLlJbnhCNg4VNT/75+s8SP0YvDDsUWFpq68KaZZvlNcgoQFKDLsPQIv0YUcmqhb/bxp6yG/Np1YSTwGb8JOlH0M1lotO0RiuJUim/TxC1zY75qkCFpXN3QdCGlXBZXhbI2psOmh6R6VU0S6zg9UPTJRhJ8mbrrqJLh/zaFsMTS+6LbQH3JAynSJ+Ps27jpI2AYDCq51hDU4e5ZyhQg6OfJLKhfS9DiO1DH7Id20G5CoqupTxH5cRqtcLz4g5Z/5hGyWCBcBHcUteWn37aLheN2Az1VxOQ785YCTf3Atr+MAaCV5bbV/qrL5a5EYdSQQjbxFsMTOYPWb9hTGQy7VQ9baQozYZRL37AwmnGBVSs7ea/YUeQcNUtvTrjMCmiaHFNypK2ac3bUABnTuQigUb3wJScw5ZzOcu2hf7KWbw/P5ZP299RJcWy2TkpcI2jraJvm9fmbCIyjgK/p+E/jnoDlePY4xGysM5EZUi1OpRw76BMbzGscaF8AQUuh8Fmnv+HYlAZqK0DYweQJqIW/o9omtCTM84itNWHIu4JWUSDaIRj23FpSXZ58G+UwUWCxwizOrdkkc2Bg9W3WpE06iBOeDHa8iCU0m8XpYkRHSLxFM7XIZc+Og5q8N/i+8Ze4ZbUrszMM7mqf5/oC/IqsjmHMu7QNcc3udO9fsk5X/owStzk19RcnczdZQTmWC19h1nQ5CZ/pHLL+83ZNernnLFZXszKMzkQusjV9BbMWpRdkQOdgb2kkcNT3tZBMBmC
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(38070700021)(56012099003)(8096899003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Klr9XK0/Jq3ohtt5aKJQNoZX4HzVpRupSVKrX52jG9uHH6e/Ro23hfoxNT?=
 =?iso-8859-1?Q?Do8b2NlOh9P0/3gXMnfPEmlyY3KuHRcMvyTd7ObfRNiMcRD+HYkA1nRvZC?=
 =?iso-8859-1?Q?nebZER65l5Nb43GYGxd0GJunk05nyHCdNbxLNUkhWksqVcYy/wHrqMI3Qk?=
 =?iso-8859-1?Q?MlMCd857WB4dUAXqTKNs1iyXTd4SvGdgWFXjwf9v0b041y57ZyAgGhg3+Q?=
 =?iso-8859-1?Q?0aPbdWqTXIvqhshYp6Em6YYc6hcxPKdTaF8kAzC+HwLdFihD/l86VgmdEV?=
 =?iso-8859-1?Q?Sg0U6cY1OFcYlV1sij3+nuwGMqrh5cPMGItXxP4YnZWJdMiwS0kgyheQWm?=
 =?iso-8859-1?Q?XwKphLn/4Ng93ACsf60OssPah00nMNHH0n9ZRc3k71USurvWFiqq1eo995?=
 =?iso-8859-1?Q?lfuZT/xwVJxyNP9XW8gcpaDvEfKN4wrUZPWfNy3WwVvxJMX0/uyPIpLTVD?=
 =?iso-8859-1?Q?74LdzB6VgzF2fOQI+UOWNCqcB17dV6QZf9Qeq+OorTsCoc+aHhKwob1FEb?=
 =?iso-8859-1?Q?pbtsi7A+OE4KltLSFVyibxhmaUB4hXG0pEGpWCT77Z7WKJwkxpdn6OXNHM?=
 =?iso-8859-1?Q?U4AeQ9+gOzVagThbnoOqBYKjmgIu3z8R8qCG9H/LjSooAw/3hD7X8kFJvP?=
 =?iso-8859-1?Q?0o9ptD4tBN5C9ESgM8JkWG24hyIqSwscjeF+m0+1bSnTHhaxeP9EQ5vQ6v?=
 =?iso-8859-1?Q?YvLQ4FNalEm9GAorWU3tcWSOHGqipphwp5WEAD8trRGUNF/oDte8Dh+mgE?=
 =?iso-8859-1?Q?44g7Y1U44iU41sdSMyjV+6AbhS1t6GIViL1QI3ocXyUJ5zHYyYaY26i51O?=
 =?iso-8859-1?Q?6jeb/cPf2pYFi0XN+EN/6MJD4jQkRq7JkLtKkno3WtiCE08gtBLfvl0Cew?=
 =?iso-8859-1?Q?nSvq5eH0JfPj7FZkw0N9Fuk8eH7FwaUXxS5NdTH2ZVMjVPZCEqd8pna0vk?=
 =?iso-8859-1?Q?7FxDDsXgsoyMjBBYwSRl8A/n5KOEPQTrZcz1vHNwae8UetH3BvOPXg4ndh?=
 =?iso-8859-1?Q?Tvbm/As7eqqVpVTfbc1nFfYU5BvCeFtVIdE9BNmd+KSF9zf2piR2/13VRe?=
 =?iso-8859-1?Q?1DHnbIQ9j+Ex4GMNJNgWvfyGlcC53vcPSZAtz4kYdJ7YM9ctxc4CToojk+?=
 =?iso-8859-1?Q?4ssK7ykZP2iwjBF5xngYH7H1lglciBOfja2Q0BiutKwbEqE/hyy5ReAQs+?=
 =?iso-8859-1?Q?oqwyUdPyUwvKvzmq1IGBS2I3uX2c2K/8DHDI4QiOBEql2MY44T61As/0dk?=
 =?iso-8859-1?Q?HzrlR86WEb/VcW1EvNMJPdeaIS26aqTPeTuHTvrUvmrXIHxOxYnzAyJrzP?=
 =?iso-8859-1?Q?yPjyk2ifKN3G63Jlk0xgwFP3zA3/WqVbZVbBo6c7W2wSCKka1TP6PV5pYM?=
 =?iso-8859-1?Q?U784JSL13ly5Vpk/g233+1pN4YPOsiG00f3EHy7cbOqLa/ScCS4FafTSnr?=
 =?iso-8859-1?Q?sxVEYkjs1QJDfDKcXxX49SE6xCfMt+WJus8xRH04WuAJPju/RBZz0GTDiq?=
 =?iso-8859-1?Q?dgIX+/X/MhHoiKo8UEuJONYKfyt/msehe9BksKyXxXbPO/urK+qYPxJyTS?=
 =?iso-8859-1?Q?uc5xoB7CJ3FIZlCn2QLp4mporMncyuhpnpcllQydFqsOBox8cIf3bncmEj?=
 =?iso-8859-1?Q?k7gXZZ0sVzC0LTW55dDCWJa13ooGecqHWqyrWINyKAEnhFqde/uF7MhS/e?=
 =?iso-8859-1?Q?1+/sxnZ7LERMsuRhSwYaqNn8jJHrINokPCUSC2Y7xrEFv6UU/MJzgMAHHR?=
 =?iso-8859-1?Q?MpbqVePK6n9vhIbhlqpKXm4mbawEPHTyUQoTENHC3HBAyC?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	lYPANZac5SDu8000QWtQLpapEt/HfbUj+LLeS8N6tBZrF7p92fglZadxG+3YN9O7Vw8FMkDx2jHDb2Mxh98HR5g2L967uuEy0SeFMclt9ph6XN3JXynEMf4d0pTsFeKZm8N01TMgRKUoHeoRNqwdl9cJbOJm3fHULkQ0wG2wiHTvXFUsZ0KuDJSLe+3NXeG5hjU8kjXZV1eBp7I+jI2kc5zP7qstaez2rWTePUVBM+EaRiCzWMlZyIHOHpEKi4vKUj87a8d1co6+uUUz84L996EaDEVKbAx5B31UBmLhOJOOm2zIE3y+Bvj8be/nEJQl/EVnnhLa9P09lPks+4uFmg==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2e7a755-8f55-44bd-3e84-08deaaef2fde
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 21:42:20.9973
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR09MB10903
Message-ID-Hash: 5UQJAUFTZEXVFZVCOQN6GUJTHGV2KSL2
X-Message-ID-Hash: 5UQJAUFTZEXVFZVCOQN6GUJTHGV2KSL2
X-MailFrom: prvs=578f0e5bc=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Extend X440 to 2 GHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q2K35A6EDIVJAORIA45Z275KBIGSE7T3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8118454882524064970=="
X-Rspamd-Queue-Id: 66A844D4441
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns]

--===============8118454882524064970==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912642069B69C9DBF1E66B70EC3E2SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912642069B69C9DBF1E66B70EC3E2SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I have an application that needs 2 GHz of bandwidth.  I only need one chann=
el.  How hard would it be to change the max sample rate?  Is the FPGA barel=
y meeting timing?

Also, do we need a license for the 100 GbE MAC core?  I saw a warning to th=
at effect when building a custom image but as far as I know the 100 GbE MAC=
 is free.


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912642069B69C9DBF1E66B70EC3E2SJ0PR09MB9126namp_
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
I have an application that needs 2 GHz of bandwidth.&nbsp; I only need one =
channel.&nbsp; How hard would it be to change the max sample rate?&nbsp; Is=
 the FPGA barely meeting timing?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Also, do we need a license for the 100 GbE MAC core?&nbsp; I saw a warning =
to that effect when building a custom image but as far as I know the 100 Gb=
E MAC is free.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Principal Engineer</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912642069B69C9DBF1E66B70EC3E2SJ0PR09MB9126namp_--

--===============8118454882524064970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8118454882524064970==--
