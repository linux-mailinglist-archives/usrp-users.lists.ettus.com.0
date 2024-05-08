Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 997988C04DA
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2024 21:22:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44F4538547C
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2024 15:22:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715196141; bh=j995Z5r3R+uzqgUN+Mewz7YbuXIh+6sfnQeMGHeh9iQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XDoQ3/xHWaP57bncaUHR9M8oGeSIxgo6YfkdDMgSXpoYV6Mfb1kl1KGNGTrTOyV5z
	 6X9pGL1/zA7ZE3aIF2iQ0WapAVagcYl4hEmPt4mLGWN0WyPuact5qZvYKiDESDyHlt
	 SJjO/e2Kc6u6lhouAnEN62ith/KRDngHZG7gcW+I5MyFk+Nk/nFliYFuGqHX/zDub5
	 JVmRwQLmGxk+18AaaPHubaOTSaRgm4/qFlSWHvKbqBOueNuIMX5g4xVxdPMXqbDBij
	 RRLD7rg1qD2T/LbGYs97PIAZFb9jmev+TtIbeIDs54cr62JYbcOSOXp9QOWDlgCKmC
	 7ACcXAKxNrMWA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id E66C1385239
	for <usrp-users@lists.ettus.com>; Wed,  8 May 2024 15:21:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="jGZE+IXg";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="d9jwPpiF";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1715196109; x=1746732109;
  h=from:to:subject:date:message-id:mime-version;
  bh=m7zA1TBUhwc6yCY4mC9/pwdw1u44IcQzj4q/MjNRJyI=;
  b=jGZE+IXgJSlnDlGM4KfNCtZ/n5fC73EYLtKidnWpgcKDxVLFA4McRIRP
   WAd1maBdGlWLAVKaiOlUqnXSx+XZGaGFmCsgrl7m0IAXATJ3nXQoXEzqK
   7lpIACZz6CMGknU4zhqCVhYr7xArDltpPmlXpmClzJcW1wcLI80NNgjCG
   o=;
X-CSE-ConnectionGUID: K107dL30TyGd6f4pHH3Xfg==
X-CSE-MsgGUID: 0upNMl+7QRKUjL0UUDqw6A==
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="4638906"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000";
   d="scan'208,217";a="4638906"
X-IPAS-Result: =?us-ascii?q?A2FYAwAl0Dtmh2RAL2hagQmBT4FBgQN6gWOteod3A1YPA?=
 =?us-ascii?q?QEBAQEBAQEBBwJEBAEBAwSEfwKIOCc3Bg4BAgQBAQEBAwIDAQEBAQEBAQEGA?=
 =?us-ascii?q?QEBBQEBAQEBBwQBAgIQAQEBASIXBw4QJ4V0DYQGgSYBAQEBAQEBAQEBAQEdA?=
 =?us-ascii?q?jWBGgEBOBEBCwECcScEG4J4gh0NBwMxshaBNIEBggwBAQYEBNscGGGBYgmBS?=
 =?us-ascii?q?INuhEABJIExiR2BVUSBV4I3hRQghBOCL6lOgUsiAyYzMgFVExcLPgkWAhYDG?=
 =?us-ascii?q?xQEMA8JCyYDKgY2AhIMBgYGWSAWCQQjAwgEA0QDIHERAwQaBAsHdYFEgW0EE?=
 =?us-ascii?q?0QDgTiJeoM9gh6EH0uEdYF4DmKJEh1AAwttPTUUGwUEH4EZBaERBKoTgXqhI?=
 =?us-ascii?q?TQHhBYFgVYGDJ91F6o0mGKoXQIEAgQFAg8IgXuCADMaMIMqUhkPjjqDYb1xe?=
 =?us-ascii?q?DsCBwsBAQMJimoBAQ?=
IronPort-PHdr: A9a23:8qtcfxPHwqtW+8pNcQkl6ncAWUAX0o4cdiYZ6Zsi3rRJdKnrv5HvJ
 1fW6vgliljVFZ7a5PRJh6uz0ejgVGUM7IzHvCUEd5pBBBMAgN8dygonBsPNAEbnLfnsOio9G
 skKVFJs83yhd0ZPH8OrblDIpTu19zFBcig=
IronPort-Data: A9a23:4EY3I6hUujL3dACigZLLKkxLX161nxAKZh0ujC45NGQN5FlHY01je
 htvCGnUPPeDY2vzedt0YYzj90IDusPQyIRnHlY6/ipmRCkW8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScijfngqp3UUbecZH8ZqTdMEXpn0VQ63bZi2uaEuPDhayuVo
 9T+vsbDD1Gs3j9wIwo85rmKwP9VlKyaVAgw4BpmNZingHeEzyNJVM9HdfnvR5fFatA88tCSF
 r6rII6RozuxEycFUruNjrv9e0sWdb/eVSDmZq1+BsBOKjAbzsAD+v5T2Mg0MC+7uB3Q9zxF8
 +ihgLTrIesfFvCVwrxFC3G0JAklVUFO0OevzXFSKqV/xWWeG5fn660G4E3boeT0Uwu4aI1D3
 aVwFdwDUvyMr8HvmO23brI0utUMIJflYJs/mipQwz6MWJ7KQbibK0nLzfBz929qw+pqRbPZb
 cdfbidzZhPdZREJIk0QFJ81gOavgD/4biFcr1WW46Ew5gA/ziQoiOSrbIWTJIDMHJ0N9qqbj
 juuE2DRDwwVOdqSjzWf+2Oyi/XnlC7hX8QVDrLQGvtC3APIlj1LVnX6U3PjvOGfr0r9BOtlC
 HEW3nITkIQr6xKCG4yVsxqQ+yXe4kF0t8BrO/Ah8hnI17HZ+R2xAmkfUiUHZcA6qdRwTjsvv
 mJlhPvsDD1r9beRE32W/e/OqSvoYHBNa2gfeSUDUA0JpcH5p50+hQ7OSdAlF7OpitryGnf7x
 DXiQDUCa6s7rpdTiKmfpgj7kh2g+JaVVi4VvTXZUTfwhu9mX7KNa4ut4FndyP9PKoeFU1WM1
 ETofeDPtIji6rndxUSwrPUxIV2/2xqS3NThbbNHGpAg83Gn/ySsdosIujVmfh4xaoADZCPjZ
 1LVtUVJ/phPMXC2bKhxJYWsF8AtyqumHtPgPhw1UjasSschHONk1Hg1DaJ144wLuBVw+U3YE
 crHGftA9V5AVcxaIMOeHo/xK4MDyCEk3n/0Tpvm1Rmh2rf2TCfKEOpcaAXRP75mvP3sTODpH
 zB3ZpPiJ/J3AbWWX8Ur2dJJfQ9iwYUTWc6p95cHLr7rzvROQTh/Vq+JqV/eR2CVt/8OzLuXl
 p1MckpZw0D4nnrJNU2BbWp7AI4Drr4uxU/XyRcEZA7ys1B6OdjHxP5GK/MfI+N7nMQ9lqQcZ
 6deJK297gFnEWmvF8I1NsWm8+SPtX2D2WqzAsZSSGJkIcU8G1CQpYKMk8mG3HBmMxdbfPAW+
 9WIvj43i7JaL+i+JK46sM6S8m4=
IronPort-HdrOrdr: A9a23:xDzn76N0/v63UsBcTyP155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE7gr5K0tQ4OxoWZPwN080kKQY3WB/B8bHYOCLggqVxeJZnMLfKl/bakrDH4dmvM
 8OHZSWY+eAbmSS+PyKhTVQZOxQouVvnprJuc7ui1NWCS16YaBp6Al0TiyBFFdteQVADZ0lUL
 KB+8tuvVObCD8qR/X+IkNAc/nIptXNmp6jSwUBHQQb5A6Hii7twKLmEiKfwgwVX1p0sP0fGC
 n+4kHED5eYwr6GIyznpiHuBqFt6ZfcI5V4dY2xY4MuW03RY06TFf9csvu5zXgISaiUmSsXeN
 WgmWZbA+1jr3zWZW27uh3rxk3p1ysv8WbrzRuCjWLkutGRfkNONyNtv/MrTvLi0TtTgPhslK
 ZQm26JvZteCh3N2Cz7+tjTThlv0k65u2Arn+Ifh2FWFdJ2Us4nkaUPuEdOVJsQFiPz744qVO
 FoEcHH/f5TNVeXdWrQsGVjyMGlGn4zAhCFSE4fvdH96UkjoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0KpDS8cHBJgNdNvpgfHHe1AlbSi8Tl56e26XaJ3vE0i91KLK3A==
X-Talos-CUID: 9a23:FGfo2W8pG8j32QL9WoSVv21NQp8pViaF8Gb/LxG2VX5JaOalR1DFrQ==
X-Talos-MUID: 9a23:EVFQtgiybzwC+ztN7y3MqMMpbNpwxYGqSx80q7Y7ue3cCBFcIijDpWHi
Received: from mail-bl2gcc02lp2100.outbound.protection.outlook.com (HELO GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.100])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2024 12:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTRfYUNsUW/jAQsapPQhyN627/8CnnCTxOd0VSZvmNES9A4agtnxS56e6uNFG68hMX1FC9f9SJQrz5+86snH89x7GI7qgCFJ+eVUJwIsgxpr93nWNGCOvCQXMjA85hR8l43aihQcBB1xlvLRmomaeyoRwhrP5YhUncmtua/S0I6Ga7rxFbvCf+JvB625XoHnMju38auv3YlzHG4KyAbMBnrsFvym2U2DC1CS0/DuDwxSJrlqSLay2rtKDLM8wpMJt93bN+HWDBNx4nB2Q7FSXE5+B17B0vH79jWvWf576RrLKKEDO4mv9tJO4ZWO/XksMJkxP5YkF5OXIbVlLokVMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7f+ZQvRH7b6K5/2x0m8K4XUJdbTN4uwBSpnIFmsBI+Y=;
 b=KFPwRs4CXHJUJ5Fc5JV/TjVqiQqkQgLTxmmTGAJBP4FdEn+TN0pBQ3BmveIH7nb0jSDUELbH8N9dx/bZKSC8cJ1kdLwgwQa0NjHUuKPI3CNL3BUdBASLTnHeywQYk2IG4jdeZeksk5S/DmMsACwFfwqJBMKQ5IFeg8ph5N8Mv5qtOd1/gnG3ao2l9VRXSAm9U4nqnSTvQ8Js5jh/J3aFHOlzO1ZiG92jx1C/v97kESV3bGgrRBKyYuX7yQDtUpUHBjINyDkKu2niFpTPZr/mqOyzleI02Hc/1Hf6MWhWzufwd+ZzehZ3gGprlZhXdbw1i260c9fWGY1ugYWbTVoHxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7f+ZQvRH7b6K5/2x0m8K4XUJdbTN4uwBSpnIFmsBI+Y=;
 b=d9jwPpiFOpQJvoAi+lwHOFq6ayA3CUuDYJx298VT32XMD2JxkEYkbVUIFUgpoQRG3iR4GgFVGkZv2B5Y9AVnfIS8uF2sw39z7OBVXAEuDoGLlmuIdBu7Y4P3QA0hGWvnoycgZSvE/TFQkkTiNVMFmn/KrBMmCgd1OqXO1JCigQA=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB9873.namprd09.prod.outlook.com (2603:10b6:a03:46a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 19:21:41 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%7]) with mapi id 15.20.7544.045; Wed, 8 May 2024
 19:21:40 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Power output on the N321 LO OUT
Thread-Index: AQHaoXzs4DCL+a7zuUeNQUfYeZpdAQ==
Date: Wed, 8 May 2024 19:21:40 +0000
Message-ID: 
 <SJ0PR09MB91266A91F40313213FF95E77ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB9873:EE_
x-ms-office365-filtering-correlation-id: bc861d08-b7ae-47b7-780b-08dc6f94165a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?25rw6Bc+dcoSKmERYRz9PJAm2CFOFyW19BiSNKOUa7vBacBiO+juGW7m09?=
 =?iso-8859-1?Q?DmEd0DRKunw9z4B4TkoSFofg+e7aZE2Z3ONKWjikrXvKluT9BgU7S4QH1k?=
 =?iso-8859-1?Q?RiQx0q+dvmkSCC0ft1hJjqUA3RmjyzUVBLsrCn8oTVarXEOqoOZbyqYSYp?=
 =?iso-8859-1?Q?Bv/tE1/hQO3byvQ008VaDBMawqBM500mSJRlJy6pi24En5NZR/kf5gmGik?=
 =?iso-8859-1?Q?2Gcci1ZOnLqoaQJ5JY/IcpqSpdjuWbvJE3DUscbIrkmfKOmyGCuVM8evqw?=
 =?iso-8859-1?Q?41nGyefE2aB9YhKSwSUyolnRvjAaan4Kxsl8WKJe/8R0cTeY+mkSwshbjW?=
 =?iso-8859-1?Q?C94/AEHmWnRbZfQusU8h1uEtG5pwaVXrXjjqRF/zuECyuFnYsnd57r1uY5?=
 =?iso-8859-1?Q?arjqtghS0c5rmlaEXUsP/mkf4Xmx7y50Cafsaekv2PiADlmvN6kzDjd+AH?=
 =?iso-8859-1?Q?VCUHXe3r/E1nUM7tLFKNvI+AjsTD9yxVX80XyqoxiKUIYz+/Nge41XmpQd?=
 =?iso-8859-1?Q?x8Pe+m4+xwQY/OyfAdFFOrTnNtbkXj8ERj6WyWUobnW5QJn8w49ubcXDcZ?=
 =?iso-8859-1?Q?mcNM5voLlqTpPjlJSLyNjKzqyERe/209AbIGdbhUOycgfgaZPSEuW5lSBB?=
 =?iso-8859-1?Q?KztiTAhtdTbLgFWWHFcNUNxkULaO2AI2X2V5lfkz/yjOkIfqGuuGM3ZjSj?=
 =?iso-8859-1?Q?TDKJIjnkKNi1KNbNrho6etqkwf6NCOeLTer5EWr77FC8vfsVYzAPHsxYue?=
 =?iso-8859-1?Q?h4LM9FG+ju/Nb9Zip/bhkE4xtr2UJZ+qJTWoUf2m9XQdAvnm1CJ6Xm5lVQ?=
 =?iso-8859-1?Q?xeiL6TiPnjz4iEEskHmevW9hodhg0BxrgBiGicvfH3ax6yJ2FItAtXylRM?=
 =?iso-8859-1?Q?9gm7JIXfP/QbHboeqsbLoam0TvFy68c1oCDkWUJKjk2Vm6FwgqpDLPOWnP?=
 =?iso-8859-1?Q?viR8dlbM42X0pHNdrZTK8/iiW46kaoLilG9sZRopEhnenKc5KNgXSVkmZf?=
 =?iso-8859-1?Q?uMs5NRf5wr2lSq22EyJv6+aNYlK1aDbafuAmPHpAYxZf5PSTYZjLiZCWr0?=
 =?iso-8859-1?Q?IZ5YIvVnqb4zmLGeOooIQk7WKWeTTVh5/oYX5g1Z+kN7RUqPqrTVYxq1TW?=
 =?iso-8859-1?Q?79fLLBZ6qPdeSeAglsMF47bW4jCB0P3hlku2Cq1VqwRZLZ3p0aI6D1lRSN?=
 =?iso-8859-1?Q?J8Nf4028yRXmJLNQ0ZG8GKej5mj+SHqbTJMd5hwhgJ1Mvmp5PEeXlMM/QT?=
 =?iso-8859-1?Q?r8khkmE/gqzwydrNhEzXUUftkPVz9moMzhWEAtbYK6eNQpw5B0gBPBctPh?=
 =?iso-8859-1?Q?uPP/fDmJGtpk0+mKXov/rSbzUHskUf9oTPbyDgkilRuJCVAWXH6dsOFDDT?=
 =?iso-8859-1?Q?/k12rQmC3zD+Nd0F2Qte1FZyZ5Zn35cw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?AoM/dHl0fBTKq7o5AuaPc2qrdilCEyLwq/hRtyBVmFgi6lkc841ZbG8yKl?=
 =?iso-8859-1?Q?/rBnbfMHeLHeaeEAhz+KqedkRf269XC3tBJ/z2/gj3ihN+uzr+TV9fo7wY?=
 =?iso-8859-1?Q?p4hs3uAdvHm5xHUSTPKCOm7h5da6B6lDIBoQ4t+V1Bio9m0QJGNuoqte9q?=
 =?iso-8859-1?Q?NR5KbJkTzXlzOxYzLI6vJ9lMCznZGSVCITx9cMnL5AVonIl4t2G95D+dnA?=
 =?iso-8859-1?Q?+SyXmqiwld756WThejL6i53DKf5s/DkW0VqaJvR5yedOPUjwgjqbd8H/eF?=
 =?iso-8859-1?Q?Jl5r9yKitFhTAGZAZpRR4nGWbfG94OyaySvUzBSNsHzyGeEECk+y/DcN7N?=
 =?iso-8859-1?Q?9Rd/u/jnsjH6665eBhQl96biW6tm/Dakscsln8F1K/mJZzib4wdkyhciLD?=
 =?iso-8859-1?Q?QNukWIY9nAPS2jqSikKbmGSnbVrlv7/HTvoDVElyedVwh3PKjvb8KfJbCE?=
 =?iso-8859-1?Q?5zKK9uK7TVN8i7upcPd1OIQwU9O6FqQIY+CXGJzdrmPIsMqZVNukt2gWeP?=
 =?iso-8859-1?Q?kZYNGsUOU7PS+OtRPXN1rcP0Pm8R7Y+l/7X6Xma23DJMbzyGq/8fJrx9Zq?=
 =?iso-8859-1?Q?R22VsBxGA1Y+hKaLVdQEvzjUiwFpKG2lCSqv1G0jGqF0iniuq/nwL20M99?=
 =?iso-8859-1?Q?fc51rtBNRVrV/4oMkeNiLzLlecgXuTSzNNWnrVGD21LOoix9yjVw7yWYxJ?=
 =?iso-8859-1?Q?M0zr/eK2ZIuTI8eGCyJEzYkkpzD+owzgOcgjbj5kbnM0WzypFQ7OYD5gMP?=
 =?iso-8859-1?Q?Eel29tTCy7YSMdVlkkFl0w8+BXsiqjL6M9xOloVZd+752MN1ATcEVxsXHj?=
 =?iso-8859-1?Q?gUIA1aaYwzzb4qsA3J1x1EA92vqWIyW0u3fPoBIgcHkIl8DOsR+uGNMBeO?=
 =?iso-8859-1?Q?Q/vCdrSjnQ7KryrIFWNeiEM5rRpkp8OC37l84vtLq3+uLIt23RYr8rUPsv?=
 =?iso-8859-1?Q?Xp949uMtgBp3E42TGALEBFplTG01o/FoKyiynpPuIgbWfLTvWGKDH8064B?=
 =?iso-8859-1?Q?6oe4VpcNS0x05/yAEwfid0Aq438wj5hQxf42HjJdV/6MOu0XTxAYnWdRw9?=
 =?iso-8859-1?Q?AkqjTkUY4dF16HpQm1E/xQVztUflAm/nGwHryeuc5BboZN2TDucCg1oGjx?=
 =?iso-8859-1?Q?NO0pndBZPzUeG9CUZATHpH9h7WPhSH31o8h7jV5yzB5D1kJdb+5UNJHY7O?=
 =?iso-8859-1?Q?HV9OTqV0J1WEZUqwBw6UXTrju5lZKs+4rOsNHl5T7fyJEP3dvlwSEKGkyc?=
 =?iso-8859-1?Q?61YRUFi4c+wRDBPUk1iDwA0G85QfsFtze20jAnbuaR4mW1WyyACGLdknHW?=
 =?iso-8859-1?Q?yBNgbYjpbk/safdwvcsNN8gMIjFwdyGPiJ7pTZL96gApW7PexaQmZH/x9d?=
 =?iso-8859-1?Q?MouzLOArQ+hdv+b2zft1DUSURKpOFH16sVBOIOoItQ+Xac1acxsng5k1bq?=
 =?iso-8859-1?Q?2TAlQ5v3yC8Z8KuLy/K4GfchO1s3t/HOzhy0WJpJyBR0lrvFPVEfEGYOWt?=
 =?iso-8859-1?Q?Kkt7HxqI1L4+mVuLGX+Fvnpo/aUD23HdRuJwJho2jWNQxMeRtzGL+dewug?=
 =?iso-8859-1?Q?mnYYtoalhxsOY01hCxOYfbXkr1f1MimfdjlQm7jlySxdUBsObRLjrJqp/d?=
 =?iso-8859-1?Q?VAv8pS30zDdWQ=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc861d08-b7ae-47b7-780b-08dc6f94165a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 19:21:40.0592
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB9873
Message-ID-Hash: H4T4N6OBDH2ZYFFK225XF73R5XLUANOQ
X-Message-ID-Hash: H4T4N6OBDH2ZYFFK225XF73R5XLUANOQ
X-MailFrom: prvs=851510aa1=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Power output on the N321 LO OUT
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F4VEVZO7LR6TE2CA5MOBGOJ6RGD5AOOT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6495856928873426266=="

--===============6495856928873426266==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91266A91F40313213FF95E77ECE52SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91266A91F40313213FF95E77ECE52SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

What power level can I expect on the N321 LO output at 2 GHz?  Thanks.

--_000_SJ0PR09MB91266A91F40313213FF95E77ECE52SJ0PR09MB9126namp_
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
What power level can I expect on the N321 LO output at 2 GHz?&nbsp; Thanks.=
</div>
</body>
</html>

--_000_SJ0PR09MB91266A91F40313213FF95E77ECE52SJ0PR09MB9126namp_--

--===============6495856928873426266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6495856928873426266==--
